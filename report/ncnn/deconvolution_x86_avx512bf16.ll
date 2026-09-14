Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512bf16?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.aee = mul i64 %i.aed, %i.adz                 ; 7 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aeb, i64 %i.aee
  %i.aeg = getelementptr inbounds [2 x i8], ptr %i.aef, i64 %i.aad
  %i.aeh = load i16, ptr %i.aeg, align 2, !tbaa !28
  %i.aei = zext i16 %i.aeh to i32
  %i.aej = shl nuw i32 %i.aei, 16
  %i.aek = insertelement <8 x i32> poison, i32 %i.aej, i64 0
  %i.ael = bitcast <8 x i32> %i.aek to <8 x float>
  %i.aem = shufflevector <8 x float> %i.ael, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aen = mul i64 %i.adx, %i.ff
  %i.aeo = mul i64 %i.aen, %i.adz
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.aeo
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 %i.aee
  %i.aer = getelementptr inbounds [2 x i8], ptr %i.aeq, i64 %i.aad
  %i.aes = load i16, ptr %i.aer, align 2, !tbaa !28
  %i.aet = zext i16 %i.aes to i32
  %i.aeu = shl nuw i32 %i.aet, 16
  %i.aev = insertelement <8 x i32> poison, i32 %i.aeu, i64 0
  %i.aew = bitcast <8 x i32> %i.aev to <8 x float>
  %i.aex = shufflevector <8 x float> %i.aew, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aey = mul i64 %i.adx, %i.fg
  %i.aez = mul i64 %i.aey, %i.adz
  %i.afa = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 %i.aee
  %i.afc = getelementptr inbounds [2 x i8], ptr %i.afb, i64 %i.aad
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !28
  %i.afe = zext i16 %i.afd to i32
  %i.aff = shl nuw i32 %i.afe, 16
  %i.afg = insertelement <8 x i32> poison, i32 %i.aff, i64 0
  %i.afh = bitcast <8 x i32> %i.afg to <8 x float>
  %i.afi = shufflevector <8 x float> %i.afh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afj = mul i64 %i.adx, %i.fh
  %i.afk = mul i64 %i.afj, %i.adz
  %i.afl = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.afk
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 %i.aee
  %i.afn = getelementptr inbounds [2 x i8], ptr %i.afm, i64 %i.aad
  %i.afo = load i16, ptr %i.afn, align 2, !tbaa !28
  %i.afp = zext i16 %i.afo to i32
  %i.afq = shl nuw i32 %i.afp, 16
  %i.afr = insertelement <8 x i32> poison, i32 %i.afq, i64 0
  %i.afs = bitcast <8 x i32> %i.afr to <8 x float>
  %i.aft = shufflevector <8 x float> %i.afs, <8 x float> poison, <8 x i32> zeroinitializer
  %i.afu = mul i64 %i.adx, %i.fi
  %i.afv = mul i64 %i.afu, %i.adz
  %i.afw = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.afv
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afw, i64 %i.aee
  %i.afy = getelementptr inbounds [2 x i8], ptr %i.afx, i64 %i.aad
  %i.afz = load i16, ptr %i.afy, align 2, !tbaa !28
  %i.aga = zext i16 %i.afz to i32
  %i.agb = shl nuw i32 %i.aga, 16
  %i.agc = insertelement <8 x i32> poison, i32 %i.agb, i64 0
  %i.agd = bitcast <8 x i32> %i.agc to <8 x float>
  %i.age = shufflevector <8 x float> %i.agd, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agf = mul i64 %i.adx, %i.fj
  %i.agg = mul i64 %i.agf, %i.adz
  %i.agh = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.agg
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 %i.aee
  %i.agj = getelementptr inbounds [2 x i8], ptr %i.agi, i64 %i.aad
  %i.agk = load i16, ptr %i.agj, align 2, !tbaa !28
  %i.agl = zext i16 %i.agk to i32
  %i.agm = shl nuw i32 %i.agl, 16
  %i.agn = insertelement <8 x i32> poison, i32 %i.agm, i64 0
  %i.ago = bitcast <8 x i32> %i.agn to <8 x float>
  %i.agp = shufflevector <8 x float> %i.ago, <8 x float> poison, <8 x i32> zeroinitializer
  %i.agq = mul i64 %i.adx, %i.eo
  %i.agr = mul i64 %i.agq, %i.adz
  %i.ags = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.agr
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 %i.aee
  %i.agu = getelementptr inbounds [2 x i8], ptr %i.agt, i64 %i.aad
  %i.agv = load i16, ptr %i.agu, align 2, !tbaa !28
  %i.agw = zext i16 %i.agv to i32
  %i.agx = shl nuw i32 %i.agw, 16
  %i.agy = insertelement <8 x i32> poison, i32 %i.agx, i64 0
  %i.agz = bitcast <8 x i32> %i.agy to <8 x float>
  %i.aha = shufflevector <8 x float> %i.agz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ahb = load <8 x bfloat>, ptr %i.fz, align 16, !tbaa !26
  %i.ahc = fpext fast <8 x bfloat> %i.ahb to <8 x float>
  %i.ahd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aak, <8 x float> nofpclass(nan inf) %i.ahc, <8 x float> nofpclass(nan inf) %.6.us.us.us)
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.ahf = load <8 x bfloat>, ptr %i.ahe, align 16, !tbaa !26
  %i.ahg = fpext fast <8 x bfloat> %i.ahf to <8 x float>
  %i.ahh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aav, <8 x float> nofpclass(nan inf) %i.ahg, <8 x float> nofpclass(nan inf) %.56551.us.us.us)
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.ahj = load <8 x bfloat>, ptr %i.ahi, align 16, !tbaa !26
  %i.ahk = fpext fast <8 x bfloat> %i.ahj to <8 x float>
  %i.ahl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abg, <8 x float> nofpclass(nan inf) %i.ahk, <8 x float> nofpclass(nan inf) %.56574.us.us.us)
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.fz, i64 48
  %i.ahn = load <8 x bfloat>, ptr %i.ahm, align 16, !tbaa !26
  %i.aho = fpext fast <8 x bfloat> %i.ahn to <8 x float>
  %i.ahp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.abr, <8 x float> nofpclass(nan inf) %i.aho, <8 x float> nofpclass(nan inf) %.56592.us.us.us)
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.fz, i64 64
  %i.ahr = load <8 x bfloat>, ptr %i.ahq, align 16, !tbaa !26
  %i.ahs = fpext fast <8 x bfloat> %i.ahr to <8 x float>
  %i.aht = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acc, <8 x float> nofpclass(nan inf) %i.ahs, <8 x float> nofpclass(nan inf) %i.ahd)
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.fz, i64 80
  %i.ahv = load <8 x bfloat>, ptr %i.ahu, align 16, !tbaa !26
  %i.ahw = fpext fast <8 x bfloat> %i.ahv to <8 x float>
  %i.ahx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acn, <8 x float> nofpclass(nan inf) %i.ahw, <8 x float> nofpclass(nan inf) %i.ahh)
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.fz, i64 96
  %i.ahz = load <8 x bfloat>, ptr %i.ahy, align 16, !tbaa !26
  %i.aia = fpext fast <8 x bfloat> %i.ahz to <8 x float>
  %i.aib = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.acy, <8 x float> nofpclass(nan inf) %i.aia, <8 x float> nofpclass(nan inf) %i.ahl)
  %i.aic = getelementptr inbounds nuw i8, ptr %i.fz, i64 112
  %i.aid = load <8 x bfloat>, ptr %i.aic, align 16, !tbaa !26
  %i.aie = fpext fast <8 x bfloat> %i.aid to <8 x float>
  %i.aif = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adj, <8 x float> nofpclass(nan inf) %i.aie, <8 x float> nofpclass(nan inf) %i.ahp)
  %i.aig = getelementptr inbounds nuw i8, ptr %i.fz, i64 128
  %i.aih = load <8 x bfloat>, ptr %i.aig, align 16, !tbaa !26
  %i.aii = fpext fast <8 x bfloat> %i.aih to <8 x float>
  %i.aij = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.adu, <8 x float> nofpclass(nan inf) %i.aii, <8 x float> nofpclass(nan inf) %i.aht)
  %i.aik = getelementptr inbounds nuw i8, ptr %i.fz, i64 144
  %i.ail = load <8 x bfloat>, ptr %i.aik, align 16, !tbaa !26
  %i.aim = fpext fast <8 x bfloat> %i.ail to <8 x float>
  %i.ain = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aem, <8 x float> nofpclass(nan inf) %i.aim, <8 x float> nofpclass(nan inf) %i.ahx)
  %i.aio = getelementptr inbounds nuw i8, ptr %i.fz, i64 160
  %i.aip = load <8 x bfloat>, ptr %i.aio, align 16, !tbaa !26
  %i.aiq = fpext fast <8 x bfloat> %i.aip to <8 x float>
  %i.air = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aex, <8 x float> nofpclass(nan inf) %i.aiq, <8 x float> nofpclass(nan inf) %i.aib)
  %i.ais = getelementptr inbounds nuw i8, ptr %i.fz, i64 176
  %i.ait = load <8 x bfloat>, ptr %i.ais, align 16, !tbaa !26
  %i.aiu = fpext fast <8 x bfloat> %i.ait to <8 x float>
  %i.aiv = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.afi, <8 x float> nofpclass(nan inf) %i.aiu, <8 x float> nofpclass(nan inf) %i.aif)
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.fz, i64 192
  %i.aix = load <8 x bfloat>, ptr %i.aiw, align 16, !tbaa !26
  %i.aiy = fpext fast <8 x bfloat> %i.aix to <8 x float>
  %i.aiz = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aft, <8 x float> nofpclass(nan inf) %i.aiy, <8 x float> nofpclass(nan inf) %i.aij)
  %i.aja = getelementptr inbounds nuw i8, ptr %i.fz, i64 208
  %i.ajb = load <8 x bfloat>, ptr %i.aja, align 16, !tbaa !26
  %i.ajc = fpext fast <8 x bfloat> %i.ajb to <8 x float>
  %i.ajd = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.age, <8 x float> nofpclass(nan inf) %i.ajc, <8 x float> nofpclass(nan inf) %i.ain)
  %i.aje = getelementptr inbounds nuw i8, ptr %i.fz, i64 224
  %i.ajf = load <8 x bfloat>, ptr %i.aje, align 16, !tbaa !26
  %i.ajg = fpext fast <8 x bfloat> %i.ajf to <8 x float>
  %i.ajh = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.agp, <8 x float> nofpclass(nan inf) %i.ajg, <8 x float> nofpclass(nan inf) %i.air)
  %i.aji = getelementptr inbounds nuw i8, ptr %i.fz, i64 240
  %i.ajj = load <8 x bfloat>, ptr %i.aji, align 16, !tbaa !26
  %i.ajk = fpext fast <8 x bfloat> %i.ajj to <8 x float>
  %i.ajl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.aha, <8 x float> nofpclass(nan inf) %i.ajk, <8 x float> nofpclass(nan inf) %i.aiv)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2332.us.us.us, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us, %.split.us.us.us, %bb.e, %.lr.ph.split.us.us.us
  %.66593.us.us.us = phi nsz <8 x float> [ %.265896937.us.us.us, %.lr.ph.split.us.us.us ], [ %.265896937.us.us.us, %.split.us.us.us ], [ %i.lv, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.rz, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.ajl, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zr, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265896937.us.us.us, %bb.e ] ; 2 uses
  %.66575.us.us.us = phi nsz <8 x float> [ %.265716938.us.us.us, %.lr.ph.split.us.us.us ], [ %.265716938.us.us.us, %.split.us.us.us ], [ %i.lr, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.rv, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.ajh, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zn, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265716938.us.us.us, %bb.e ] ; 2 uses
  %.66552.us.us.us = phi nsz <8 x float> [ %.265486939.us.us.us, %.lr.ph.split.us.us.us ], [ %.265486939.us.us.us, %.split.us.us.us ], [ %i.ln, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.rr, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.ajd, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zj, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.265486939.us.us.us, %bb.e ] ; 2 uses
  %.7.us.us.us = phi nsz <8 x float> [ %.365386940.us.us.us, %.lr.ph.split.us.us.us ], [ %.365386940.us.us.us, %.split.us.us.us ], [ %i.lj, %_ZN4ncnn3MatD2Ev.exit2339.us.us.us ], [ %i.rn, %_ZN4ncnn3MatD2Ev.exit2338.us.us.us ], [ %i.aiz, %_ZN4ncnn3MatD2Ev.exit2332.us.us.us ], [ %i.zf, %_ZN4ncnn3MatD2Ev.exit2336.us.us.us ], [ %.365386940.us.us.us, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.en
  br i1 %exitcond.not, label %..loopexit6924_crit_edge.us.us, label %.lr.ph.split.us.us.us, !llvm.loop !49

..loopexit6924_crit_edge.us.us:                   ; preds = %bb.f, %.preheader6923.us.us, %bb.d, %.lr.ph6953.split.us.us
  %.76594.us.us = phi nsz <8 x float> [ %.165886948.us.us, %.lr.ph6953.split.us.us ], [ %.165886948.us.us, %bb.d ], [ %.165886948.us.us, %.preheader6923.us.us ], [ %.66593.us.us.us, %bb.f ] ; 2 uses
  %.76576.us.us = phi nsz <8 x float> [ %.165706949.us.us, %.lr.ph6953.split.us.us ], [ %.165706949.us.us, %bb.d ], [ %.165706949.us.us, %.preheader6923.us.us ], [ %.66575.us.us.us, %bb.f ] ; 2 uses
  %.76553.us.us = phi nsz <8 x float> [ %.165476950.us.us, %.lr.ph6953.split.us.us ], [ %.165476950.us.us, %bb.d ], [ %.165476950.us.us, %.preheader6923.us.us ], [ %.66552.us.us.us, %bb.f ] ; 2 uses
  %.8.us.us = phi nsz <8 x float> [ %.265376951.us.us, %.lr.ph6953.split.us.us ], [ %.265376951.us.us, %bb.d ], [ %.265376951.us.us, %.preheader6923.us.us ], [ %.7.us.us.us, %bb.f ] ; 2 uses
  %indvars.iv.next8188 = add nuw nsw i64 %indvars.iv8187, 1 ; 2 uses
  %exitcond8191.not = icmp eq i64 %indvars.iv.next8188, %wide.trip.count8190
  br i1 %exitcond8191.not, label %._crit_edge.us, label %.lr.ph6953.split.us.us, !llvm.loop !50

._crit_edge.us:                                   ; preds = %..loopexit6924_crit_edge.us.us, %.preheader6929.us
  %.us-phi6966.us = phi <8 x float> [ %.065876971.us, %.preheader6929.us ], [ %.76594.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6967.us = phi <8 x float> [ %.065696972.us, %.preheader6929.us ], [ %.76576.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6968.us = phi <8 x float> [ %.065466973.us, %.preheader6929.us ], [ %.76553.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %.us-phi6969.us = phi <8 x float> [ %.165366974.us, %.preheader6929.us ], [ %.8.us.us, %..loopexit6924_crit_edge.us.us ] ; 2 uses
  %i.ajm = getelementptr inbounds [2 x i8], ptr %.018316976.us, i64 %i.dm ; 2 uses
  %indvars.iv.next8193 = add nuw nsw i64 %indvars.iv8192, 16 ; 2 uses
  %i.ajn = icmp slt i64 %indvars.iv.next8193, %invariant.op8777
  br i1 %i.ajn, label %.preheader6929.us, label %.preheader6933, !llvm.loop !51

.preheader6933:                                   ; preds = %._crit_edge.us, %.preheader6929.preheader, %_ZN4ncnn3MatD2Ev.exit2340
  %.06587.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6966.us, %._crit_edge.us ] ; 3 uses
  %.06569.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6967.us, %._crit_edge.us ] ; 3 uses
  %.06546.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2340 ], [ zeroinitializer, %.preheader6929.preheader ], [ %.us-phi6968.us, %._crit_edge.us ] ; 3 uses
  %.16536.lcssa = phi <8 x float> [ %.06535, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %.06535, %.preheader6929.preheader ], [ %.us-phi6969.us, %._crit_edge.us ] ; 3 uses
  %.01836.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %i.db, %.preheader6929.preheader ], [ %i.de, %._crit_edge.us ] ; 5 uses
  %.01831.lcssa = phi ptr [ %i.ee, %_ZN4ncnn3MatD2Ev.exit2340 ], [ %scevgep8185, %.preheader6929.preheader ], [ %i.ajm, %._crit_edge.us ] ; 3 uses
  %i.ajo = or disjoint i32 %.01836.lcssa, 7       ; 2 uses
  %i.ajp = icmp slt i32 %i.ajo, %i.bs
  br i1 %i.ajp, label %.preheader6928.lr.ph, label %.preheader6932

.preheader6928.lr.ph:                             ; preds = %.preheader6933
  %i.ajq = load i32, ptr %i.j, align 4
  %invariant.op7015 = sub i32 %.neg6858, %i.ajq
  %i.ajr = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ajs = load i32, ptr %i.a, align 4
  %.fr8031 = freeze i32 %i.ajs                    ; 2 uses
  %i.ajt = icmp sgt i32 %.fr8031, 0
  %i.aju = load i32, ptr %i.i, align 4
  %.neg6856 = add nuw nsw i32 %.018307214, 1
  %invariant.op7004 = sub i32 %.neg6856, %i.aju
  %i.ajv = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.dj, label %.preheader6928.us.preheader, label %.preheader6928.preheader

.preheader6928.preheader:                         ; preds = %.preheader6928.lr.ph
  %i.ajw = sub i32 %i.df, %.01836.lcssa           ; 2 uses
  %i.ajx = lshr i32 %i.ajw, 2
  %i.ajy = and i32 %i.ajx, 1073741822
  %narrow8737 = add nuw nsw i32 %i.ajy, 2
  %i.ajz = zext nneg i32 %narrow8737 to i64
  %i.aka = mul nsw i64 %i.do, %i.ajz
  %scevgep8195 = getelementptr i8, ptr %.01831.lcssa, i64 %i.aka
  %i.akb = add nsw i32 %.01836.lcssa, 8
  %i.akc = and i32 %i.ajw, -8
  %i.akd = add i32 %i.akb, %i.akc
  br label %.preheader6932

.preheader6928.us.preheader:                      ; preds = %.preheader6928.lr.ph
  %i.ake = load i32, ptr %i.c, align 4
  %i.akf = load i32, ptr %i.d, align 4
  %i.akg = zext i32 %.fr8031 to i64               ; 2 uses
  %i.akh = zext i32 %.01836.lcssa to i64
  %i.aki = zext nneg i32 %i.ajo to i64
  br label %.preheader6928.us

.preheader6928.us:                                ; preds = %.preheader6928.us.preheader, %._crit_edge.us7043
  %indvars.iv8206 = phi i64 [ %i.akh, %.preheader6928.us.preheader ], [ %indvars.iv.next8207, %._crit_edge.us7043 ] ; 10 uses
  %i.akj = phi i64 [ %i.aki, %.preheader6928.us.preheader ], [ %i.auq, %._crit_edge.us7043 ]
  %.118327027.us = phi ptr [ %.01831.lcssa, %.preheader6928.us.preheader ], [ %i.aup, %._crit_edge.us7043 ] ; 2 uses
  %.97025.us = phi <8 x float> [ %.16536.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7020.us, %._crit_edge.us7043 ] ; 2 uses
  %.865547024.us = phi <8 x float> [ %.06546.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7019.us, %._crit_edge.us7043 ] ; 2 uses
  %.865777023.us = phi <8 x float> [ %.06569.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7018.us, %._crit_edge.us7043 ] ; 2 uses
  %.865957022.us = phi <8 x float> [ %.06587.lcssa, %.preheader6928.us.preheader ], [ %.us-phi7017.us, %._crit_edge.us7043 ] ; 2 uses
  %i.akk = or disjoint i64 %indvars.iv8206, 1
  %i.akl = or disjoint i64 %indvars.iv8206, 2
  %i.akm = or disjoint i64 %indvars.iv8206, 3
  %i.akn = or disjoint i64 %indvars.iv8206, 4
  %i.ako = or disjoint i64 %indvars.iv8206, 5
  %i.akp = or disjoint i64 %indvars.iv8206, 6
  %i.akq = lshr exact i64 %indvars.iv8206, 2      ; 2 uses
  %i.akr = or disjoint i64 %i.akq, 1
  %i.aks = lshr exact i64 %indvars.iv8206, 3
  br i1 %i.ajt, label %.lr.ph7010.split.us.us, label %._crit_edge.us7043

.lr.ph7010.split.us.us:                           ; preds = %.preheader6928.us, %..loopexit6922_crit_edge.us.us
  %indvars.iv8201 = phi i64 [ %indvars.iv.next8202, %..loopexit6922_crit_edge.us.us ], [ 0, %.preheader6928.us ] ; 3 uses
  %.107008.us.us = phi <8 x float> [ %.13.us.us, %..loopexit6922_crit_edge.us.us ], [ %.97025.us, %.preheader6928.us ] ; 3 uses
  %.965557007.us.us = phi <8 x float> [ %.126558.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865547024.us, %.preheader6928.us ] ; 3 uses
  %.965787006.us.us = phi <8 x float> [ %.126581.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865777023.us, %.preheader6928.us ] ; 3 uses
  %.965967005.us.us = phi <8 x float> [ %.126599.us.us, %..loopexit6922_crit_edge.us.us ], [ %.865957022.us, %.preheader6928.us ] ; 3 uses
  %i.akt = trunc i64 %indvars.iv8201 to i32
  %i.aku = mul i32 %i.akf, %i.akt
  %.reass7016.us.us = add i32 %i.aku, %invariant.op7015 ; 3 uses
  %i.akv = icmp slt i32 %.reass7016.us.us, 0
  br i1 %i.akv, label %..loopexit6922_crit_edge.us.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph7010.split.us.us
  %i.akw = srem i32 %.reass7016.us.us, %i.ajr
  %i.akx = sdiv i32 %.reass7016.us.us, %i.ajr     ; 2 uses
  %.not2172.us.us = icmp eq i32 %i.akw, 0
  %.not2173.us.us = icmp slt i32 %i.akx, %i.bu
  %or.cond8970 = select i1 %.not2172.us.us, i1 %.not2173.us.us, i1 false
  br i1 %or.cond8970, label %.preheader6921.us.us, label %..loopexit6922_crit_edge.us.us

.preheader6921.us.us:                             ; preds = %bb.g
  %i.aky = mul nuw nsw i64 %indvars.iv8201, %i.akg
  %i.akz = sext i32 %i.akx to i64                 ; 3 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.preheader6921.us.us
  %indvars.iv8196 = phi i64 [ %indvars.iv.next8197, %bb.k ], [ 0, %.preheader6921.us.us ] ; 3 uses
  %.116998.us.us = phi <8 x float> [ %.12.us.us, %bb.k ], [ %.107008.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065566997.us.us = phi <8 x float> [ %.116557.us.us, %bb.k ], [ %.965557007.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065796996.us.us = phi <8 x float> [ %.116580.us.us, %bb.k ], [ %.965787006.us.us, %.preheader6921.us.us ] ; 4 uses
  %.1065976995.us.us = phi <8 x float> [ %.116598.us.us, %bb.k ], [ %.965967005.us.us, %.preheader6921.us.us ] ; 4 uses
  %i.ala = trunc i64 %indvars.iv8196 to i32
  %i.alb = mul i32 %i.ake, %i.ala
  %.reass.us.us = add i32 %i.alb, %invariant.op7004 ; 3 uses
  %i.alc = icmp slt i32 %.reass.us.us, 0
  br i1 %i.alc, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ald = srem i32 %.reass.us.us, %i.ajv
  %i.ale = sdiv i32 %.reass.us.us, %i.ajv         ; 4 uses
  %.not2174.us.us = icmp eq i32 %i.ald, 0
  %.not2175.us.us = icmp slt i32 %i.ale, %i.bt
  %or.cond8971 = select i1 %.not2174.us.us, i1 %.not2175.us.us, i1 false
  br i1 %or.cond8971, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.alf = add nuw nsw i64 %i.aky, %indvars.iv8196
  %i.alg = shl i64 %i.alf, 6
  %i.alh = and i64 %i.alg, 4294967232
  %i.ali = getelementptr inbounds nuw [2 x i8], ptr %.118327027.us, i64 %i.alh ; 8 uses
  switch i32 %.fr, label %bb.k [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2300.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2299.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2297.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2297.us.us:                  ; preds = %bb.j
  %i.alj = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !223
  %i.alk = load ptr, ptr %0, align 8, !tbaa !19, !noalias !223 ; 8 uses
  %i.all = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !223 ; 8 uses
  %i.alm = mul i64 %i.all, %indvars.iv8206
  %i.aln = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !223 ; 9 uses
  %i.alo = mul i64 %i.alm, %i.aln
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.alo
  %i.alq = sext i32 %i.alj to i64
  %i.alr = mul nsw i64 %i.alq, %i.akz
  %i.als = mul i64 %i.alr, %i.aln                 ; 8 uses
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alp, i64 %i.als
  %i.alu = sext i32 %i.ale to i64                 ; 8 uses
  %i.alv = getelementptr inbounds [2 x i8], ptr %i.alt, i64 %i.alu
  %i.alw = mul i64 %i.all, %i.akk
  %i.alx = mul i64 %i.alw, %i.aln
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.alx
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.als
  %i.ama = getelementptr inbounds [2 x i8], ptr %i.alz, i64 %i.alu
  %i.amb = mul i64 %i.all, %i.akl
  %i.amc = mul i64 %i.amb, %i.aln
  %i.amd = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.amc
  %i.ame = getelementptr inbounds nuw i8, ptr %i.amd, i64 %i.als
  %i.amf = getelementptr inbounds [2 x i8], ptr %i.ame, i64 %i.alu
  %i.amg = mul i64 %i.all, %i.akm
  %i.amh = mul i64 %i.amg, %i.aln
  %i.ami = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.amh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.ami, i64 %i.als
  %i.amk = getelementptr inbounds [2 x i8], ptr %i.amj, i64 %i.alu
  %i.aml = mul i64 %i.all, %i.akn
  %i.amm = mul i64 %i.aml, %i.aln
  %i.amn = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.amm
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 %i.als
  %i.amp = getelementptr inbounds [2 x i8], ptr %i.amo, i64 %i.alu
  %i.amq = mul i64 %i.all, %i.ako
  %i.amr = mul i64 %i.amq, %i.aln
  %i.ams = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.amr
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 %i.als
  %i.amu = getelementptr inbounds [2 x i8], ptr %i.amt, i64 %i.alu
  %i.amv = mul i64 %i.all, %i.akp
  %i.amw = mul i64 %i.amv, %i.aln
  %i.amx = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.amw
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 %i.als
  %i.amz = getelementptr inbounds [2 x i8], ptr %i.amy, i64 %i.alu
  %i.ana = mul i64 %i.all, %i.akj
  %i.anb = mul i64 %i.ana, %i.aln
  %i.anc = getelementptr inbounds nuw i8, ptr %i.alk, i64 %i.anb
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 %i.als
  %i.ane = getelementptr inbounds [2 x i8], ptr %i.and, i64 %i.alu
  %i.anf = load i16, ptr %i.alv, align 2, !tbaa !28
  %i.ang = zext i16 %i.anf to i32
  %i.anh = shl nuw i32 %i.ang, 16
  %i.ani = insertelement <8 x i32> poison, i32 %i.anh, i64 0
  %i.anj = bitcast <8 x i32> %i.ani to <8 x float>
  %i.ank = shufflevector <8 x float> %i.anj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anl = load i16, ptr %i.ama, align 2, !tbaa !28
  %i.anm = zext i16 %i.anl to i32
  %i.ann = shl nuw i32 %i.anm, 16
  %i.ano = insertelement <8 x i32> poison, i32 %i.ann, i64 0
  %i.anp = bitcast <8 x i32> %i.ano to <8 x float>
  %i.anq = shufflevector <8 x float> %i.anp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anr = load i16, ptr %i.amf, align 2, !tbaa !28
  %i.ans = zext i16 %i.anr to i32
  %i.ant = shl nuw i32 %i.ans, 16
  %i.anu = insertelement <8 x i32> poison, i32 %i.ant, i64 0
  %i.anv = bitcast <8 x i32> %i.anu to <8 x float>
  %i.anw = shufflevector <8 x float> %i.anv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.anx = load i16, ptr %i.amk, align 2, !tbaa !28
  %i.any = zext i16 %i.anx to i32
  %i.anz = shl nuw i32 %i.any, 16
  %i.aoa = insertelement <8 x i32> poison, i32 %i.anz, i64 0
  %i.aob = bitcast <8 x i32> %i.aoa to <8 x float>
  %i.aoc = shufflevector <8 x float> %i.aob, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aod = load i16, ptr %i.amp, align 2, !tbaa !28
  %i.aoe = zext i16 %i.aod to i32
  %i.aof = shl nuw i32 %i.aoe, 16
  %i.aog = insertelement <8 x i32> poison, i32 %i.aof, i64 0
  %i.aoh = bitcast <8 x i32> %i.aog to <8 x float>
  %i.aoi = shufflevector <8 x float> %i.aoh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aoj = load i16, ptr %i.amu, align 2, !tbaa !28
  %i.aok = zext i16 %i.aoj to i32
  %i.aol = shl nuw i32 %i.aok, 16
  %i.aom = insertelement <8 x i32> poison, i32 %i.aol, i64 0
  %i.aon = bitcast <8 x i32> %i.aom to <8 x float>
  %i.aoo = shufflevector <8 x float> %i.aon, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aop = load i16, ptr %i.amz, align 2, !tbaa !28
  %i.aoq = zext i16 %i.aop to i32
  %i.aor = shl nuw i32 %i.aoq, 16
  %i.aos = insertelement <8 x i32> poison, i32 %i.aor, i64 0
  %i.aot = bitcast <8 x i32> %i.aos to <8 x float>
  %i.aou = shufflevector <8 x float> %i.aot, <8 x float> poison, <8 x i32> zeroinitializer
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit2299.us.us:                  ; preds = %bb.j
  %i.aov = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !224
  %i.aow = load ptr, ptr %0, align 8, !tbaa !19, !noalias !224 ; 2 uses
  %i.aox = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !224 ; 2 uses
  %i.aoy = mul i64 %i.aox, %i.akq
  %i.aoz = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !224 ; 3 uses
  %i.apa = mul i64 %i.aoy, %i.aoz
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.apa
  %i.apc = sext i32 %i.aov to i64
  %i.apd = mul nsw i64 %i.apc, %i.akz
  %i.ape = mul i64 %i.apd, %i.aoz                 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.apb, i64 %i.ape
  %i.apg = shl nsw i32 %i.ale, 2
  %i.aph = sext i32 %i.apg to i64                 ; 2 uses
  %i.api = getelementptr inbounds [2 x i8], ptr %i.apf, i64 %i.aph ; 4 uses
  %i.apj = mul i64 %i.aox, %i.akr
  %i.apk = mul i64 %i.apj, %i.aoz
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aow, i64 %i.apk
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apl, i64 %i.ape
  %i.apn = getelementptr inbounds [2 x i8], ptr %i.apm, i64 %i.aph ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.aqc = load i16, ptr %i.aqb, align 2, !tbaa !28
  %i.aqd = zext i16 %i.aqc to i32
  %i.aqe = shl nuw i32 %i.aqd, 16
  %i.aqf = insertelement <8 x i32> poison, i32 %i.aqe, i64 0
  %i.aqg = bitcast <8 x i32> %i.aqf to <8 x float>
  %i.aqh = shufflevector <8 x float> %i.aqg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.api, i64 6
  %i.aqj = load i16, ptr %i.aqi, align 2, !tbaa !28
  %i.aqk = zext i16 %i.aqj to i32
  %i.aql = shl nuw i32 %i.aqk, 16
  %i.aqm = insertelement <8 x i32> poison, i32 %i.aql, i64 0
  %i.aqn = bitcast <8 x i32> %i.aqm to <8 x float>
  %i.aqo = shufflevector <8 x float> %i.aqn, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqp = load i16, ptr %i.apn, align 2, !tbaa !28
  %i.aqq = zext i16 %i.aqp to i32
  %i.aqr = shl nuw i32 %i.aqq, 16
  %i.aqs = insertelement <8 x i32> poison, i32 %i.aqr, i64 0
  %i.aqt = bitcast <8 x i32> %i.aqs to <8 x float>
  %i.aqu = shufflevector <8 x float> %i.aqt, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.apn, i64 2
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !28
  %i.aqx = zext i16 %i.aqw to i32
  %i.aqy = shl nuw i32 %i.aqx, 16
  %i.aqz = insertelement <8 x i32> poison, i32 %i.aqy, i64 0
  %i.ara = bitcast <8 x i32> %i.aqz to <8 x float>
  %i.arb = shufflevector <8 x float> %i.ara, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arc = getelementptr inbounds nuw i8, ptr %i.apn, i64 4
  %i.ard = load i16, ptr %i.arc, align 2, !tbaa !28
  %i.are = zext i16 %i.ard to i32
  %i.arf = shl nuw i32 %i.are, 16
  %i.arg = insertelement <8 x i32> poison, i32 %i.arf, i64 0
  %i.arh = bitcast <8 x i32> %i.arg to <8 x float>
  %i.ari = shufflevector <8 x float> %i.arh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.arj = getelementptr inbounds nuw i8, ptr %i.apn, i64 6
  br label %.sink.split

_ZN4ncnn3MatD2Ev.exit2300.us.us:                  ; preds = %bb.j
  %i.ark = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !225
  %i.arl = load ptr, ptr %0, align 8, !tbaa !19, !noalias !225
  %i.arm = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !225
  %i.arn = mul i64 %i.arm, %i.aks
  %i.aro = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !225 ; 2 uses
  %i.arp = mul i64 %i.arn, %i.aro
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.arp
  %i.arr = sext i32 %i.ark to i64
  %i.ars = mul nsw i64 %i.arr, %i.akz
  %i.art = mul i64 %i.ars, %i.aro
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.art
  %i.arv = shl nsw i32 %i.ale, 3
  %i.arw = sext i32 %i.arv to i64
  %i.arx = getelementptr inbounds [2 x i8], ptr %i.aru, i64 %i.arw ; 5 uses
  %i.ary = load i16, ptr %i.arx, align 2, !tbaa !28
  %i.arz = zext i16 %i.ary to i32
  %i.asa = shl nuw i32 %i.arz, 16
  %i.asb = insertelement <8 x i32> poison, i32 %i.asa, i64 0
  %i.asc = bitcast <8 x i32> %i.asb to <8 x float>
  %i.asd = shufflevector <8 x float> %i.asc, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arx, i64 2
  %i.asf = load i16, ptr %i.ase, align 2, !tbaa !28
  %i.asg = zext i16 %i.asf to i32
  %i.ash = shl nuw i32 %i.asg, 16
  %i.asi = insertelement <8 x i32> poison, i32 %i.ash, i64 0
  %i.asj = bitcast <8 x i32> %i.asi to <8 x float>
  %i.ask = shufflevector <8 x float> %i.asj, <8 x float> poison, <8 x i32> zeroinitializer
  %i.asl = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  %i.asm = load i16, ptr %i.asl, align 2, !tbaa !28
  %i.asn = zext i16 %i.asm to i32
  %i.aso = shl nuw i32 %i.asn, 16
  %i.asp = insertelement <8 x i32> poison, i32 %i.aso, i64 0
  %i.asq = bitcast <8 x i32> %i.asp to <8 x float>
  %i.asr = shufflevector <8 x float> %i.asq, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arx, i64 6
  %i.ast = load <4 x i16>, ptr %i.ass, align 2, !tbaa !28
  %i.asu = zext <4 x i16> %i.ast to <4 x i32>
  %i.asv = shl nuw <4 x i32> %i.asu, splat (i32 16) ; 4 uses
  %i.asw = bitcast <4 x i32> %i.asv to <4 x float>
  %i.asx = shufflevector <4 x float> %i.asw, <4 x float> poison, <8 x i32> zeroinitializer
  %i.asy = bitcast <4 x i32> %i.asv to <4 x float>
  %i.asz = shufflevector <4 x float> %i.asy, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ata = bitcast <4 x i32> %i.asv to <4 x float>
  %i.atb = shufflevector <4 x float> %i.ata, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.atc = bitcast <4 x i32> %i.asv to <4 x float>
  %i.atd = shufflevector <4 x float> %i.atc, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.ate = getelementptr inbounds nuw i8, ptr %i.arx, i64 14
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit2297.us.us, %_ZN4ncnn3MatD2Ev.exit2299.us.us, %_ZN4ncnn3MatD2Ev.exit2300.us.us
  %.sink8817.in = phi ptr [ %i.ate, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.arj, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.ane, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8812 = phi <8 x float> [ %i.asd, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.apt, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.ank, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8808 = phi <8 x float> [ %i.ask, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aqa, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.anq, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8804 = phi <8 x float> [ %i.asr, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aqh, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.anw, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8800 = phi <8 x float> [ %i.asx, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aqo, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aoc, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8795 = phi <8 x float> [ %i.asz, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.aqu, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aoi, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8790 = phi <8 x float> [ %i.atb, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.arb, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aoo, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8785 = phi <8 x float> [ %i.atd, %_ZN4ncnn3MatD2Ev.exit2300.us.us ], [ %i.ari, %_ZN4ncnn3MatD2Ev.exit2299.us.us ], [ %i.aou, %_ZN4ncnn3MatD2Ev.exit2297.us.us ]
  %.sink8817 = load i16, ptr %.sink8817.in, align 2, !tbaa !28
  %i.atf = zext i16 %.sink8817 to i32
  %i.atg = shl nuw i32 %i.atf, 16
  %i.ath = insertelement <8 x i32> poison, i32 %i.atg, i64 0
  %i.ati = bitcast <8 x i32> %i.ath to <8 x float>
  %i.atj = shufflevector <8 x float> %i.ati, <8 x float> poison, <8 x i32> zeroinitializer
  %i.atk = load <8 x bfloat>, ptr %i.ali, align 16, !tbaa !26
  %i.atl = fpext fast <8 x bfloat> %i.atk to <8 x float>
  %i.atm = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8812, <8 x float> nofpclass(nan inf) %i.atl, <8 x float> nofpclass(nan inf) %.116998.us.us)
  %i.atn = getelementptr inbounds nuw i8, ptr %i.ali, i64 16
  %i.ato = load <8 x bfloat>, ptr %i.atn, align 16, !tbaa !26
  %i.atp = fpext fast <8 x bfloat> %i.ato to <8 x float>
  %i.atq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8808, <8 x float> nofpclass(nan inf) %i.atp, <8 x float> nofpclass(nan inf) %.1065566997.us.us)
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ali, i64 32
  %i.ats = load <8 x bfloat>, ptr %i.atr, align 16, !tbaa !26
  %i.att = fpext fast <8 x bfloat> %i.ats to <8 x float>
  %i.atu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8804, <8 x float> nofpclass(nan inf) %i.att, <8 x float> nofpclass(nan inf) %.1065796996.us.us)
  %i.atv = getelementptr inbounds nuw i8, ptr %i.ali, i64 48
  %i.atw = load <8 x bfloat>, ptr %i.atv, align 16, !tbaa !26
  %i.atx = fpext fast <8 x bfloat> %i.atw to <8 x float>
  %i.aty = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8800, <8 x float> nofpclass(nan inf) %i.atx, <8 x float> nofpclass(nan inf) %.1065976995.us.us)
  %i.atz = getelementptr inbounds nuw i8, ptr %i.ali, i64 64
  %i.aua = load <8 x bfloat>, ptr %i.atz, align 16, !tbaa !26
  %i.aub = fpext fast <8 x bfloat> %i.aua to <8 x float>
  %i.auc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8795, <8 x float> nofpclass(nan inf) %i.aub, <8 x float> nofpclass(nan inf) %i.atm)
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ali, i64 80
  %i.aue = load <8 x bfloat>, ptr %i.aud, align 16, !tbaa !26
  %i.auf = fpext fast <8 x bfloat> %i.aue to <8 x float>
  %i.aug = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8790, <8 x float> nofpclass(nan inf) %i.auf, <8 x float> nofpclass(nan inf) %i.atq)
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ali, i64 96
  %i.aui = load <8 x bfloat>, ptr %i.auh, align 16, !tbaa !26
  %i.auj = fpext fast <8 x bfloat> %i.aui to <8 x float>
  %i.auk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8785, <8 x float> nofpclass(nan inf) %i.auj, <8 x float> nofpclass(nan inf) %i.atu)
  %i.aul = getelementptr inbounds nuw i8, ptr %i.ali, i64 112
  %i.aum = load <8 x bfloat>, ptr %i.aul, align 16, !tbaa !26
  %i.aun = fpext fast <8 x bfloat> %i.aum to <8 x float>
  %i.auo = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.atj, <8 x float> nofpclass(nan inf) %i.aun, <8 x float> nofpclass(nan inf) %i.aty)
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j, %bb.i, %bb.h
  %.116598.us.us = phi nsz <8 x float> [ %.1065976995.us.us, %bb.h ], [ %.1065976995.us.us, %bb.j ], [ %.1065976995.us.us, %bb.i ], [ %i.auo, %.sink.split ] ; 2 uses
  %.116580.us.us = phi nsz <8 x float> [ %.1065796996.us.us, %bb.h ], [ %.1065796996.us.us, %bb.j ], [ %.1065796996.us.us, %bb.i ], [ %i.auk, %.sink.split ] ; 2 uses
  %.116557.us.us = phi nsz <8 x float> [ %.1065566997.us.us, %bb.h ], [ %.1065566997.us.us, %bb.j ], [ %.1065566997.us.us, %bb.i ], [ %i.aug, %.sink.split ] ; 2 uses
  %.12.us.us = phi nsz <8 x float> [ %.116998.us.us, %bb.h ], [ %.116998.us.us, %bb.j ], [ %.116998.us.us, %bb.i ], [ %i.auc, %.sink.split ] ; 2 uses
  %indvars.iv.next8197 = add nuw nsw i64 %indvars.iv8196, 1 ; 2 uses
  %exitcond8200.not = icmp eq i64 %indvars.iv.next8197, %i.akg
  br i1 %exitcond8200.not, label %..loopexit6922_crit_edge.us.us, label %bb.h, !llvm.loop !58

..loopexit6922_crit_edge.us.us:                   ; preds = %bb.k, %bb.g, %.lr.ph7010.split.us.us
  %.126599.us.us = phi nsz <8 x float> [ %.965967005.us.us, %.lr.ph7010.split.us.us ], [ %.965967005.us.us, %bb.g ], [ %.116598.us.us, %bb.k ] ; 2 uses
  %.126581.us.us = phi nsz <8 x float> [ %.965787006.us.us, %.lr.ph7010.split.us.us ], [ %.965787006.us.us, %bb.g ], [ %.116580.us.us, %bb.k ] ; 2 uses
  %.126558.us.us = phi nsz <8 x float> [ %.965557007.us.us, %.lr.ph7010.split.us.us ], [ %.965557007.us.us, %bb.g ], [ %.116557.us.us, %bb.k ] ; 2 uses
  %.13.us.us = phi nsz <8 x float> [ %.107008.us.us, %.lr.ph7010.split.us.us ], [ %.107008.us.us, %bb.g ], [ %.12.us.us, %bb.k ] ; 2 uses
  %indvars.iv.next8202 = add nuw nsw i64 %indvars.iv8201, 1 ; 2 uses
  %exitcond8205.not = icmp eq i64 %indvars.iv.next8202, %wide.trip.count8204
  br i1 %exitcond8205.not, label %._crit_edge.us7043, label %.lr.ph7010.split.us.us, !llvm.loop !59

._crit_edge.us7043:                               ; preds = %..loopexit6922_crit_edge.us.us, %.preheader6928.us
  %.us-phi7017.us = phi <8 x float> [ %.865957022.us, %.preheader6928.us ], [ %.126599.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %.us-phi7018.us = phi <8 x float> [ %.865777023.us, %.preheader6928.us ], [ %.126581.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %.us-phi7019.us = phi <8 x float> [ %.865547024.us, %.preheader6928.us ], [ %.126558.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %.us-phi7020.us = phi <8 x float> [ %.97025.us, %.preheader6928.us ], [ %.13.us.us, %..loopexit6922_crit_edge.us.us ] ; 2 uses
  %i.aup = getelementptr inbounds [2 x i8], ptr %.118327027.us, i64 %i.do ; 2 uses
  %indvars.iv.next8207 = add nuw nsw i64 %indvars.iv8206, 8 ; 3 uses
  %i.auq = or disjoint i64 %indvars.iv.next8207, 7 ; 2 uses
  %i.aur = trunc nuw i64 %i.auq to i32
  %i.aus = icmp sgt i32 %i.bs, %i.aur
  br i1 %i.aus, label %.preheader6928.us, label %.preheader6932.loopexit, !llvm.loop !60

.preheader6932.loopexit:                          ; preds = %._crit_edge.us7043
  %i.aut = trunc nuw i64 %indvars.iv.next8207 to i32
  br label %.preheader6932

.preheader6932:                                   ; preds = %.preheader6928.preheader, %.preheader6932.loopexit, %.preheader6933
  %.86595.lcssa = phi <8 x float> [ %.06587.lcssa, %.preheader6933 ], [ %.us-phi7017.us, %.preheader6932.loopexit ], [ %.06587.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.86577.lcssa = phi <8 x float> [ %.06569.lcssa, %.preheader6933 ], [ %.us-phi7018.us, %.preheader6932.loopexit ], [ %.06569.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.86554.lcssa = phi <8 x float> [ %.06546.lcssa, %.preheader6933 ], [ %.us-phi7019.us, %.preheader6932.loopexit ], [ %.06546.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.9.lcssa = phi <8 x float> [ %.16536.lcssa, %.preheader6933 ], [ %.us-phi7020.us, %.preheader6932.loopexit ], [ %.16536.lcssa, %.preheader6928.preheader ] ; 3 uses
  %.11837.lcssa = phi i32 [ %.01836.lcssa, %.preheader6933 ], [ %i.aut, %.preheader6932.loopexit ], [ %i.akd, %.preheader6928.preheader ] ; 5 uses
  %.11832.lcssa = phi ptr [ %.01831.lcssa, %.preheader6933 ], [ %i.aup, %.preheader6932.loopexit ], [ %scevgep8195, %.preheader6928.preheader ] ; 3 uses
  %i.auu = or disjoint i32 %.11837.lcssa, 3       ; 2 uses
  %i.auv = icmp slt i32 %i.auu, %i.bs
  br i1 %i.auv, label %.preheader6927.lr.ph, label %.preheader6931

.preheader6927.lr.ph:                             ; preds = %.preheader6932
  %i.auw = load i32, ptr %i.j, align 4
  %invariant.op7096 = sub i32 %.neg6858, %i.auw
  %i.aux = load i32, ptr %i.f, align 4            ; 2 uses
  %i.auy = load i32, ptr %i.a, align 4
  %.fr8032 = freeze i32 %i.auy                    ; 2 uses
  %i.auz = icmp sgt i32 %.fr8032, 0
  %i.ava = load i32, ptr %i.i, align 4
  %.neg6852 = add nuw nsw i32 %.018307214, 1
  %invariant.op7059 = sub i32 %.neg6852, %i.ava   ; 2 uses
  %i.avb = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.dj, label %.preheader6927.us.preheader, label %.preheader6927.preheader

.preheader6927.preheader:                         ; preds = %.preheader6927.lr.ph
  %i.avc = sub i32 %i.dg, %.11837.lcssa           ; 2 uses
  %i.avd = lshr i32 %i.avc, 1
  %i.ave = and i32 %i.avd, 2147483646
  %narrow8738 = add nuw i32 %i.ave, 2
  %i.avf = zext i32 %narrow8738 to i64
  %i.avg = mul nsw i64 %i.dq, %i.avf
  %scevgep8209 = getelementptr i8, ptr %.11832.lcssa, i64 %i.avg
  %i.avh = add nsw i32 %.11837.lcssa, 4
  %i.avi = and i32 %i.avc, -4
  %i.avj = add i32 %i.avh, %i.avi
  br label %.preheader6931

.preheader6927.us.preheader:                      ; preds = %.preheader6927.lr.ph
  %i.avk = load i32, ptr %i.c, align 4            ; 2 uses
  %i.avl = load i32, ptr %i.d, align 4
  %i.avm = zext i32 %.fr8032 to i64               ; 3 uses
  %i.avn = zext i32 %.11837.lcssa to i64
  %i.avo = zext nneg i32 %i.auu to i64
  br label %.preheader6927.us

.preheader6927.us:                                ; preds = %.preheader6927.us.preheader, %._crit_edge.us7133
  %indvars.iv8225 = phi i64 [ %i.avn, %.preheader6927.us.preheader ], [ %indvars.iv.next8226, %._crit_edge.us7133 ] ; 5 uses
  %i.avp = phi i64 [ %i.avo, %.preheader6927.us.preheader ], [ %i.bbm, %._crit_edge.us7133 ]
  %.218337116.us = phi ptr [ %.11832.lcssa, %.preheader6927.us.preheader ], [ %i.bbl, %._crit_edge.us7133 ] ; 3 uses
  %.147114.us = phi <8 x float> [ %.9.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7109.us, %._crit_edge.us7133 ] ; 2 uses
  %.1365597113.us = phi <8 x float> [ %.86554.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7108.us, %._crit_edge.us7133 ] ; 2 uses
  %.1365827112.us = phi <8 x float> [ %.86577.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7107.us, %._crit_edge.us7133 ] ; 2 uses
  %.1366007111.us = phi <8 x float> [ %.86595.lcssa, %.preheader6927.us.preheader ], [ %.us-phi7106.us, %._crit_edge.us7133 ] ; 2 uses
  %i.avq = or disjoint i64 %indvars.iv8225, 1
  %i.avr = or disjoint i64 %indvars.iv8225, 2
  %i.avs = lshr exact i64 %indvars.iv8225, 2
  br i1 %i.auz, label %.lr.ph7091.split.us.us, label %._crit_edge.us7133

.lr.ph7091.split.us.us:                           ; preds = %.preheader6927.us, %..loopexit6920_crit_edge.us.us
  %indvars.iv8220 = phi i64 [ %indvars.iv.next8221, %..loopexit6920_crit_edge.us.us ], [ 0, %.preheader6927.us ] ; 3 uses
  %.1565407089.us.us = phi <8 x float> [ %.18.us.us, %..loopexit6920_crit_edge.us.us ], [ %.147114.us, %.preheader6927.us ] ; 5 uses
  %.1465607088.us.us = phi <8 x float> [ %.176563.us.us, %..loopexit6920_crit_edge.us.us ], [ %.1365597113.us, %.preheader6927.us ] ; 5 uses
  %.1465837087.us.us = phi <8 x float> [ %.176586.us.us, %..loopexit6920_crit_edge.us.us ], [ %.1365827112.us, %.preheader6927.us ] ; 5 uses
  %.1466017086.us.us = phi <8 x float> [ %.176604.us.us, %..loopexit6920_crit_edge.us.us ], [ %.1366007111.us, %.preheader6927.us ] ; 5 uses
  %i.avt = trunc i64 %indvars.iv8220 to i32
  %i.avu = mul i32 %i.avl, %i.avt
  %.reass7097.us.us = add i32 %i.avu, %invariant.op7096 ; 3 uses
  %i.avv = icmp slt i32 %.reass7097.us.us, 0
  br i1 %i.avv, label %..loopexit6920_crit_edge.us.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph7091.split.us.us
  %i.avw = srem i32 %.reass7097.us.us, %i.aux
  %i.avx = sdiv i32 %.reass7097.us.us, %i.aux     ; 2 uses
  %.not2168.us.us = icmp eq i32 %i.avw, 0
  %.not2169.us.us = icmp slt i32 %i.avx, %i.bu
  %or.cond8972 = select i1 %.not2168.us.us, i1 %.not2169.us.us, i1 false
  br i1 %or.cond8972, label %.preheader6919.us.us, label %..loopexit6920_crit_edge.us.us

.preheader6919.us.us:                             ; preds = %bb.l
  %i.avy = mul nuw nsw i64 %indvars.iv8220, %i.avm ; 2 uses
  %i.avz = sext i32 %i.avx to i64                 ; 2 uses
  switch i32 %.fr, label %..loopexit6920_crit_edge.us.us [
    i32 4, label %.lr.ph.split.us.us.us7131
    i32 1, label %.lr.ph.split.us7064.us.us
  ]

.lr.ph.split.us7064.us.us:                        ; preds = %.preheader6919.us.us, %bb.n
  %indvars.iv8210 = phi i64 [ %indvars.iv.next8211, %bb.n ], [ 0, %.preheader6919.us.us ] ; 3 uses
  %.167053.us7066.us.us = phi <8 x float> [ %.17.us7076.us.us, %bb.n ], [ %.1565407089.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565617052.us7067.us.us = phi <8 x float> [ %.166562.us7075.us.us, %bb.n ], [ %.1465607088.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565847051.us7068.us.us = phi <8 x float> [ %.166585.us7074.us.us, %bb.n ], [ %.1465837087.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1566027050.us7069.us.us = phi <8 x float> [ %.166603.us7073.us.us, %bb.n ], [ %.1466017086.us.us, %.preheader6919.us.us ] ; 3 uses
  %i.awa = trunc i64 %indvars.iv8210 to i32
  %i.awb = mul i32 %i.avk, %i.awa
  %.reass.us7070.us.us = add i32 %i.awb, %invariant.op7059 ; 3 uses
  %i.awc = icmp slt i32 %.reass.us7070.us.us, 0
  br i1 %i.awc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split.us7064.us.us
  %i.awd = srem i32 %.reass.us7070.us.us, %i.avb
  %i.awe = sdiv i32 %.reass.us7070.us.us, %i.avb  ; 2 uses
  %.not2170.us7071.us.us = icmp eq i32 %i.awd, 0
  %.not2171.us7072.us.us = icmp slt i32 %i.awe, %i.bt
  %or.cond8973 = select i1 %.not2170.us7071.us.us, i1 %.not2171.us7072.us.us, i1 false
  br i1 %or.cond8973, label %_ZN4ncnn3MatD2Ev.exit2288.us.us.us, label %bb.n

_ZN4ncnn3MatD2Ev.exit2288.us.us.us:               ; preds = %bb.m
  %i.awf = add nuw nsw i64 %i.avy, %indvars.iv8210
  %i.awg = shl i64 %i.awf, 5
  %i.awh = and i64 %i.awg, 4294967264
  %i.awi = getelementptr inbounds nuw [2 x i8], ptr %.218337116.us, i64 %i.awh ; 4 uses
  %i.awj = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !226
  %i.awk = load ptr, ptr %0, align 8, !tbaa !19, !noalias !226 ; 4 uses
  %i.awl = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !226 ; 4 uses
  %i.awm = mul i64 %i.awl, %indvars.iv8225
  %i.awn = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !226 ; 5 uses
  %i.awo = mul i64 %i.awm, %i.awn
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.awo
  %i.awq = sext i32 %i.awj to i64
  %i.awr = mul nsw i64 %i.awq, %i.avz
  %i.aws = mul i64 %i.awr, %i.awn                 ; 4 uses
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awp, i64 %i.aws
  %i.awu = sext i32 %i.awe to i64                 ; 4 uses
  %i.awv = getelementptr inbounds [2 x i8], ptr %i.awt, i64 %i.awu
  %i.aww = mul i64 %i.awl, %i.avq
  %i.awx = mul i64 %i.aww, %i.awn
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.awx
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 %i.aws
  %i.axa = getelementptr inbounds [2 x i8], ptr %i.awz, i64 %i.awu
  %i.axb = mul i64 %i.awl, %i.avr
  %i.axc = mul i64 %i.axb, %i.awn
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.axc
  %i.axe = getelementptr inbounds nuw i8, ptr %i.axd, i64 %i.aws
  %i.axf = getelementptr inbounds [2 x i8], ptr %i.axe, i64 %i.awu
  %i.axg = mul i64 %i.awl, %i.avp
  %i.axh = mul i64 %i.axg, %i.awn
  %i.axi = getelementptr inbounds nuw i8, ptr %i.awk, i64 %i.axh
  %i.axj = getelementptr inbounds nuw i8, ptr %i.axi, i64 %i.aws
  %i.axk = getelementptr inbounds [2 x i8], ptr %i.axj, i64 %i.awu
  %i.axl = load i16, ptr %i.awv, align 2, !tbaa !28
  %i.axm = zext i16 %i.axl to i32
  %i.axn = shl nuw i32 %i.axm, 16
  %i.axo = insertelement <8 x i32> poison, i32 %i.axn, i64 0
  %i.axp = bitcast <8 x i32> %i.axo to <8 x float>
  %i.axq = shufflevector <8 x float> %i.axp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axr = load i16, ptr %i.axa, align 2, !tbaa !28
  %i.axs = zext i16 %i.axr to i32
  %i.axt = shl nuw i32 %i.axs, 16
  %i.axu = insertelement <8 x i32> poison, i32 %i.axt, i64 0
  %i.axv = bitcast <8 x i32> %i.axu to <8 x float>
  %i.axw = shufflevector <8 x float> %i.axv, <8 x float> poison, <8 x i32> zeroinitializer
  %i.axx = load i16, ptr %i.axf, align 2, !tbaa !28
  %i.axy = zext i16 %i.axx to i32
  %i.axz = shl nuw i32 %i.axy, 16
  %i.aya = insertelement <8 x i32> poison, i32 %i.axz, i64 0
  %i.ayb = bitcast <8 x i32> %i.aya to <8 x float>
  %i.ayc = shufflevector <8 x float> %i.ayb, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ayd = load i16, ptr %i.axk, align 2, !tbaa !28
  %i.aye = zext i16 %i.ayd to i32
  %i.ayf = shl nuw i32 %i.aye, 16
  %i.ayg = insertelement <8 x i32> poison, i32 %i.ayf, i64 0
  %i.ayh = bitcast <8 x i32> %i.ayg to <8 x float>
  %i.ayi = shufflevector <8 x float> %i.ayh, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ayj = load <8 x bfloat>, ptr %i.awi, align 16, !tbaa !26
  %i.ayk = fpext fast <8 x bfloat> %i.ayj to <8 x float>
  %i.ayl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axq, <8 x float> nofpclass(nan inf) %i.ayk, <8 x float> nofpclass(nan inf) %.167053.us7066.us.us)
  %i.aym = getelementptr inbounds nuw i8, ptr %i.awi, i64 16
  %i.ayn = load <8 x bfloat>, ptr %i.aym, align 16, !tbaa !26
  %i.ayo = fpext fast <8 x bfloat> %i.ayn to <8 x float>
  %i.ayp = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.axw, <8 x float> nofpclass(nan inf) %i.ayo, <8 x float> nofpclass(nan inf) %.1565617052.us7067.us.us)
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.awi, i64 32
  %i.ayr = load <8 x bfloat>, ptr %i.ayq, align 16, !tbaa !26
  %i.ays = fpext fast <8 x bfloat> %i.ayr to <8 x float>
  %i.ayt = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ayc, <8 x float> nofpclass(nan inf) %i.ays, <8 x float> nofpclass(nan inf) %.1565847051.us7068.us.us)
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.awi, i64 48
  %i.ayv = load <8 x bfloat>, ptr %i.ayu, align 16, !tbaa !26
  %i.ayw = fpext fast <8 x bfloat> %i.ayv to <8 x float>
  %i.ayx = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ayi, <8 x float> nofpclass(nan inf) %i.ayw, <8 x float> nofpclass(nan inf) %.1566027050.us7069.us.us)
  br label %bb.n

bb.n:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2288.us.us.us, %bb.m, %.lr.ph.split.us7064.us.us
  %.166603.us7073.us.us = phi nsz <8 x float> [ %.1566027050.us7069.us.us, %.lr.ph.split.us7064.us.us ], [ %i.ayx, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.1566027050.us7069.us.us, %bb.m ] ; 2 uses
  %.166585.us7074.us.us = phi nsz <8 x float> [ %.1565847051.us7068.us.us, %.lr.ph.split.us7064.us.us ], [ %i.ayt, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.1565847051.us7068.us.us, %bb.m ] ; 2 uses
  %.166562.us7075.us.us = phi nsz <8 x float> [ %.1565617052.us7067.us.us, %.lr.ph.split.us7064.us.us ], [ %i.ayp, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.1565617052.us7067.us.us, %bb.m ] ; 2 uses
  %.17.us7076.us.us = phi nsz <8 x float> [ %.167053.us7066.us.us, %.lr.ph.split.us7064.us.us ], [ %i.ayl, %_ZN4ncnn3MatD2Ev.exit2288.us.us.us ], [ %.167053.us7066.us.us, %bb.m ] ; 2 uses
  %indvars.iv.next8211 = add nuw nsw i64 %indvars.iv8210, 1 ; 2 uses
  %exitcond8214.not = icmp eq i64 %indvars.iv.next8211, %i.avm
  br i1 %exitcond8214.not, label %..loopexit6920_crit_edge.us.us, label %.lr.ph.split.us7064.us.us, !llvm.loop !63

.lr.ph.split.us.us.us7131:                        ; preds = %.preheader6919.us.us, %bb.p
  %indvars.iv8215 = phi i64 [ %indvars.iv.next8216, %bb.p ], [ 0, %.preheader6919.us.us ] ; 3 uses
  %.167053.us.us.us = phi <8 x float> [ %.17.us.us.us, %bb.p ], [ %.1565407089.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565617052.us.us.us = phi <8 x float> [ %.166562.us.us.us, %bb.p ], [ %.1465607088.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1565847051.us.us.us = phi <8 x float> [ %.166585.us.us.us, %bb.p ], [ %.1465837087.us.us, %.preheader6919.us.us ] ; 3 uses
  %.1566027050.us.us.us = phi <8 x float> [ %.166603.us.us.us, %bb.p ], [ %.1466017086.us.us, %.preheader6919.us.us ] ; 3 uses
  %i.ayy = trunc i64 %indvars.iv8215 to i32
  %i.ayz = mul i32 %i.avk, %i.ayy
  %.reass.us.us7098.us = add i32 %i.ayz, %invariant.op7059 ; 3 uses
  %i.aza = icmp slt i32 %.reass.us.us7098.us, 0
  br i1 %i.aza, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.us.us.us7131
  %i.azb = srem i32 %.reass.us.us7098.us, %i.avb
  %i.azc = sdiv i32 %.reass.us.us7098.us, %i.avb  ; 2 uses
  %.not2170.us.us.us = icmp eq i32 %i.azb, 0
  %.not2171.us.us.us = icmp slt i32 %i.azc, %i.bt
  %or.cond8974 = select i1 %.not2170.us.us.us, i1 %.not2171.us.us.us, i1 false
  br i1 %or.cond8974, label %_ZN4ncnn3MatD2Ev.exit2289.us.us.us, label %bb.p

_ZN4ncnn3MatD2Ev.exit2289.us.us.us:               ; preds = %bb.o
  %i.azd = add nuw nsw i64 %i.avy, %indvars.iv8215
  %i.aze = shl i64 %i.azd, 5
  %i.azf = and i64 %i.aze, 4294967264
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %.218337116.us, i64 %i.azf ; 4 uses
  %i.azh = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !227
  %i.azi = load ptr, ptr %0, align 8, !tbaa !19, !noalias !227
  %i.azj = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !227
  %i.azk = mul i64 %i.azj, %i.avs
  %i.azl = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !227 ; 2 uses
  %i.azm = mul i64 %i.azk, %i.azl
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azi, i64 %i.azm
  %i.azo = sext i32 %i.azh to i64
  %i.azp = mul nsw i64 %i.azo, %i.avz
  %i.azq = mul i64 %i.azp, %i.azl
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azn, i64 %i.azq
  %i.azs = shl nsw i32 %i.azc, 2
  %i.azt = sext i32 %i.azs to i64
  %i.azu = getelementptr inbounds [2 x i8], ptr %i.azr, i64 %i.azt ; 4 uses
  %i.azv = load i16, ptr %i.azu, align 2, !tbaa !28
  %i.azw = zext i16 %i.azv to i32
  %i.azx = shl nuw i32 %i.azw, 16
  %i.azy = insertelement <8 x i32> poison, i32 %i.azx, i64 0
  %i.azz = bitcast <8 x i32> %i.azy to <8 x float>
  %i.baa = shufflevector <8 x float> %i.azz, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azu, i64 2
  %i.bac = load i16, ptr %i.bab, align 2, !tbaa !28
  %i.bad = zext i16 %i.bac to i32
  %i.bae = shl nuw i32 %i.bad, 16
  %i.baf = insertelement <8 x i32> poison, i32 %i.bae, i64 0
  %i.bag = bitcast <8 x i32> %i.baf to <8 x float>
  %i.bah = shufflevector <8 x float> %i.bag, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bai = getelementptr inbounds nuw i8, ptr %i.azu, i64 4
  %i.baj = load i16, ptr %i.bai, align 2, !tbaa !28
  %i.bak = zext i16 %i.baj to i32
  %i.bal = shl nuw i32 %i.bak, 16
  %i.bam = insertelement <8 x i32> poison, i32 %i.bal, i64 0
  %i.ban = bitcast <8 x i32> %i.bam to <8 x float>
  %i.bao = shufflevector <8 x float> %i.ban, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bap = getelementptr inbounds nuw i8, ptr %i.azu, i64 6
  %i.baq = load i16, ptr %i.bap, align 2, !tbaa !28
  %i.bar = zext i16 %i.baq to i32
  %i.bas = shl nuw i32 %i.bar, 16
  %i.bat = insertelement <8 x i32> poison, i32 %i.bas, i64 0
  %i.bau = bitcast <8 x i32> %i.bat to <8 x float>
  %i.bav = shufflevector <8 x float> %i.bau, <8 x float> poison, <8 x i32> zeroinitializer
  %i.baw = load <8 x bfloat>, ptr %i.azg, align 16, !tbaa !26
  %i.bax = fpext fast <8 x bfloat> %i.baw to <8 x float>
  %i.bay = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.baa, <8 x float> nofpclass(nan inf) %i.bax, <8 x float> nofpclass(nan inf) %.167053.us.us.us)
  %i.baz = getelementptr inbounds nuw i8, ptr %i.azg, i64 16
  %i.bba = load <8 x bfloat>, ptr %i.baz, align 16, !tbaa !26
  %i.bbb = fpext fast <8 x bfloat> %i.bba to <8 x float>
  %i.bbc = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bah, <8 x float> nofpclass(nan inf) %i.bbb, <8 x float> nofpclass(nan inf) %.1565617052.us.us.us)
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.azg, i64 32
  %i.bbe = load <8 x bfloat>, ptr %i.bbd, align 16, !tbaa !26
  %i.bbf = fpext fast <8 x bfloat> %i.bbe to <8 x float>
  %i.bbg = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bao, <8 x float> nofpclass(nan inf) %i.bbf, <8 x float> nofpclass(nan inf) %.1565847051.us.us.us)
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azg, i64 48
  %i.bbi = load <8 x bfloat>, ptr %i.bbh, align 16, !tbaa !26
  %i.bbj = fpext fast <8 x bfloat> %i.bbi to <8 x float>
  %i.bbk = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.bav, <8 x float> nofpclass(nan inf) %i.bbj, <8 x float> nofpclass(nan inf) %.1566027050.us.us.us)
  br label %bb.p

bb.p:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2289.us.us.us, %bb.o, %.lr.ph.split.us.us.us7131
  %.166603.us.us.us = phi nsz <8 x float> [ %.1566027050.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.1566027050.us.us.us, %bb.o ], [ %i.bbk, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %.166585.us.us.us = phi nsz <8 x float> [ %.1565847051.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.1565847051.us.us.us, %bb.o ], [ %i.bbg, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %.166562.us.us.us = phi nsz <8 x float> [ %.1565617052.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.1565617052.us.us.us, %bb.o ], [ %i.bbc, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %.17.us.us.us = phi nsz <8 x float> [ %.167053.us.us.us, %.lr.ph.split.us.us.us7131 ], [ %.167053.us.us.us, %bb.o ], [ %i.bay, %_ZN4ncnn3MatD2Ev.exit2289.us.us.us ] ; 2 uses
  %indvars.iv.next8216 = add nuw nsw i64 %indvars.iv8215, 1 ; 2 uses
  %exitcond8219.not = icmp eq i64 %indvars.iv.next8216, %i.avm
  br i1 %exitcond8219.not, label %..loopexit6920_crit_edge.us.us, label %.lr.ph.split.us.us.us7131, !llvm.loop !63

..loopexit6920_crit_edge.us.us:                   ; preds = %bb.n, %bb.p, %.preheader6919.us.us, %bb.l, %.lr.ph7091.split.us.us
  %.176604.us.us = phi nsz <8 x float> [ %.1466017086.us.us, %.lr.ph7091.split.us.us ], [ %.1466017086.us.us, %bb.l ], [ %.166603.us.us.us, %bb.p ], [ %.1466017086.us.us, %.preheader6919.us.us ], [ %.166603.us7073.us.us, %bb.n ] ; 2 uses
  %.176586.us.us = phi nsz <8 x float> [ %.1465837087.us.us, %.lr.ph7091.split.us.us ], [ %.1465837087.us.us, %bb.l ], [ %.166585.us.us.us, %bb.p ], [ %.1465837087.us.us, %.preheader6919.us.us ], [ %.166585.us7074.us.us, %bb.n ] ; 2 uses
  %.176563.us.us = phi nsz <8 x float> [ %.1465607088.us.us, %.lr.ph7091.split.us.us ], [ %.1465607088.us.us, %bb.l ], [ %.166562.us.us.us, %bb.p ], [ %.1465607088.us.us, %.preheader6919.us.us ], [ %.166562.us7075.us.us, %bb.n ] ; 2 uses
  %.18.us.us = phi nsz <8 x float> [ %.1565407089.us.us, %.lr.ph7091.split.us.us ], [ %.1565407089.us.us, %bb.l ], [ %.17.us.us.us, %bb.p ], [ %.1565407089.us.us, %.preheader6919.us.us ], [ %.17.us7076.us.us, %bb.n ] ; 2 uses
  %indvars.iv.next8221 = add nuw nsw i64 %indvars.iv8220, 1 ; 2 uses
  %exitcond8224.not = icmp eq i64 %indvars.iv.next8221, %wide.trip.count8223
  br i1 %exitcond8224.not, label %._crit_edge.us7133, label %.lr.ph7091.split.us.us, !llvm.loop !66

._crit_edge.us7133:                               ; preds = %..loopexit6920_crit_edge.us.us, %.preheader6927.us
  %.us-phi7106.us = phi <8 x float> [ %.1366007111.us, %.preheader6927.us ], [ %.176604.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %.us-phi7107.us = phi <8 x float> [ %.1365827112.us, %.preheader6927.us ], [ %.176586.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %.us-phi7108.us = phi <8 x float> [ %.1365597113.us, %.preheader6927.us ], [ %.176563.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %.us-phi7109.us = phi <8 x float> [ %.147114.us, %.preheader6927.us ], [ %.18.us.us, %..loopexit6920_crit_edge.us.us ] ; 2 uses
  %i.bbl = getelementptr inbounds [2 x i8], ptr %.218337116.us, i64 %i.dq ; 2 uses
  %indvars.iv.next8226 = add nuw nsw i64 %indvars.iv8225, 4 ; 3 uses
  %i.bbm = or disjoint i64 %indvars.iv.next8226, 3 ; 2 uses
  %i.bbn = trunc nuw i64 %i.bbm to i32
  %i.bbo = icmp sgt i32 %i.bs, %i.bbn
  br i1 %i.bbo, label %.preheader6927.us, label %.preheader6931.loopexit, !llvm.loop !67

.preheader6931.loopexit:                          ; preds = %._crit_edge.us7133
  %i.bbp = trunc nuw i64 %indvars.iv.next8226 to i32
  br label %.preheader6931

.preheader6931:                                   ; preds = %.preheader6927.preheader, %.preheader6931.loopexit, %.preheader6932
  %.136600.lcssa = phi <8 x float> [ %.86595.lcssa, %.preheader6932 ], [ %.us-phi7106.us, %.preheader6931.loopexit ], [ %.86595.lcssa, %.preheader6927.preheader ]
  %.136582.lcssa = phi <8 x float> [ %.86577.lcssa, %.preheader6932 ], [ %.us-phi7107.us, %.preheader6931.loopexit ], [ %.86577.lcssa, %.preheader6927.preheader ]
  %.136559.lcssa = phi <8 x float> [ %.86554.lcssa, %.preheader6932 ], [ %.us-phi7108.us, %.preheader6931.loopexit ], [ %.86554.lcssa, %.preheader6927.preheader ] ; 4 uses
  %.14.lcssa = phi <8 x float> [ %.9.lcssa, %.preheader6932 ], [ %.us-phi7109.us, %.preheader6931.loopexit ], [ %.9.lcssa, %.preheader6927.preheader ] ; 4 uses
  %.21838.lcssa = phi i32 [ %.11837.lcssa, %.preheader6932 ], [ %i.bbp, %.preheader6931.loopexit ], [ %i.avj, %.preheader6927.preheader ] ; 7 uses
  %.21833.lcssa = phi ptr [ %.11832.lcssa, %.preheader6932 ], [ %i.bbl, %.preheader6931.loopexit ], [ %scevgep8209, %.preheader6927.preheader ] ; 4 uses
  %i.bbq = or disjoint i32 %.21838.lcssa, 1       ; 2 uses
  %i.bbr = icmp slt i32 %i.bbq, %i.bs
  br i1 %i.bbr, label %.preheader6926.lr.ph, label %.preheader6930

.preheader6926.lr.ph:                             ; preds = %.preheader6931
  %i.bbs = load i32, ptr %i.d, align 4
  %i.bbt = load i32, ptr %i.j, align 4
  %invariant.op7152 = sub i32 %.neg6858, %i.bbt
  %i.bbu = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bbv = load i32, ptr %i.a, align 4
  %.fr8033 = freeze i32 %i.bbv                    ; 2 uses
  %i.bbw = load i32, ptr %i.c, align 4
  %i.bbx = load i32, ptr %i.i, align 4
  %.neg6848 = add nuw nsw i32 %.018307214, 1
  %invariant.op7145 = sub i32 %.neg6848, %i.bbx
  %i.bby = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.dj, label %.preheader6926.lr.ph.split.us, label %.preheader6926.preheader

.preheader6926.preheader:                         ; preds = %.preheader6926.lr.ph
  %i.bbz = sub i32 %i.dh, %.21838.lcssa           ; 2 uses
  %i.bca = and i32 %i.bbz, -2
  %i.bcb = zext i32 %i.bca to i64
  %i.bcc = add nuw nsw i64 %i.bcb, 2
  %i.bcd = mul nsw i64 %i.bcc, %i.ds
  %scevgep8228 = getelementptr i8, ptr %.21833.lcssa, i64 %i.bcd
  %i.bce = add nsw i32 %.21838.lcssa, 2
  %i.bcf = and i32 %i.bbz, -2
  %i.bcg = add i32 %i.bce, %i.bcf
  br label %.preheader6930

.preheader6926.lr.ph.split.us:                    ; preds = %.preheader6926.lr.ph
  %i.bch = icmp sgt i32 %.fr8033, 0
  br i1 %i.bch, label %.preheader6926.us.us.preheader, label %.preheader6926.us.preheader

.preheader6926.us.preheader:                      ; preds = %.preheader6926.lr.ph.split.us
  %i.bci = sub i32 %i.dh, %.21838.lcssa           ; 2 uses
  %i.bcj = and i32 %i.bci, -2
  %i.bck = zext i32 %i.bcj to i64
  %i.bcl = add nuw nsw i64 %i.bck, 2
  %i.bcm = mul nsw i64 %i.bcl, %i.ds
  %scevgep8229 = getelementptr i8, ptr %.21833.lcssa, i64 %i.bcm
  %i.bcn = add nsw i32 %.21838.lcssa, 2
  %i.bco = and i32 %i.bci, -2
  %i.bcp = add i32 %i.bcn, %i.bco
  br label %.preheader6930

.preheader6926.us.us.preheader:                   ; preds = %.preheader6926.lr.ph.split.us
  %i.bcq = zext nneg i32 %.fr8033 to i64          ; 2 uses
  %i.bcr = zext i32 %.21838.lcssa to i64
  %i.bcs = zext nneg i32 %i.bbq to i64
  br label %.preheader6926.us.us

.preheader6926.us.us:                             ; preds = %.preheader6926.us.us.preheader, %._crit_edge.split.us.us7174.us
  %indvars.iv8240 = phi i64 [ %i.bcr, %.preheader6926.us.us.preheader ], [ %indvars.iv.next8241, %._crit_edge.split.us.us7174.us ] ; 2 uses
  %i.bct = phi i64 [ %i.bcs, %.preheader6926.us.us.preheader ], [ %i.bew, %._crit_edge.split.us.us7174.us ]
  %.318347160.us.us = phi ptr [ %.21833.lcssa, %.preheader6926.us.us.preheader ], [ %i.bev, %._crit_edge.split.us.us7174.us ] ; 2 uses
  %.197158.us.us = phi <8 x float> [ %.14.lcssa, %.preheader6926.us.us.preheader ], [ %.23.us.us.us, %._crit_edge.split.us.us7174.us ]
  %.1865647157.us.us = phi <8 x float> [ %.136559.lcssa, %.preheader6926.us.us.preheader ], [ %.226568.us.us.us, %._crit_edge.split.us.us7174.us ]
  br label %bb.q

bb.q:                                             ; preds = %..loopexit6918_crit_edge.us.us.us, %.preheader6926.us.us
  %indvars.iv8235 = phi i64 [ %indvars.iv.next8236, %..loopexit6918_crit_edge.us.us.us ], [ 0, %.preheader6926.us.us ] ; 3 uses
  %.207147.us.us.us = phi <8 x float> [ %.23.us.us.us, %..loopexit6918_crit_edge.us.us.us ], [ %.197158.us.us, %.preheader6926.us.us ] ; 3 uses
  %.1965657146.us.us.us = phi <8 x float> [ %.226568.us.us.us, %..loopexit6918_crit_edge.us.us.us ], [ %.1865647157.us.us, %.preheader6926.us.us ] ; 3 uses
  %i.bcu = trunc i64 %indvars.iv8235 to i32
  %i.bcv = mul i32 %i.bbs, %i.bcu
  %.reass7153.us.us.us = add i32 %i.bcv, %invariant.op7152 ; 3 uses
  %i.bcw = icmp slt i32 %.reass7153.us.us.us, 0
  br i1 %i.bcw, label %..loopexit6918_crit_edge.us.us.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bcx = srem i32 %.reass7153.us.us.us, %i.bbu
  %i.bcy = sdiv i32 %.reass7153.us.us.us, %i.bbu  ; 2 uses
  %.not2164.us.us.us = icmp eq i32 %i.bcx, 0
  %.not2165.us.us.us = icmp slt i32 %i.bcy, %i.bu
  %or.cond8975 = select i1 %.not2164.us.us.us, i1 %.not2165.us.us.us, i1 false
  br i1 %or.cond8975, label %.preheader6917.us.us.us, label %..loopexit6918_crit_edge.us.us.us

.preheader6917.us.us.us:                          ; preds = %bb.r
  %i.bcz = mul nuw nsw i64 %indvars.iv8235, %i.bcq
  %i.bda = sext i32 %i.bcy to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %.preheader6917.us.us.us
  %indvars.iv8230 = phi i64 [ %indvars.iv.next8231, %bb.u ], [ 0, %.preheader6917.us.us.us ] ; 3 uses
  %.217141.us.us.us = phi <8 x float> [ %.22.us.us.us, %bb.u ], [ %.207147.us.us.us, %.preheader6917.us.us.us ] ; 3 uses
  %.2065667140.us.us.us = phi <8 x float> [ %.216567.us.us.us, %bb.u ], [ %.1965657146.us.us.us, %.preheader6917.us.us.us ] ; 3 uses
  %i.bdb = trunc i64 %indvars.iv8230 to i32
  %i.bdc = mul i32 %i.bbw, %i.bdb
  %.reass.us.us7173.us = add i32 %i.bdc, %invariant.op7145 ; 3 uses
  %i.bdd = icmp slt i32 %.reass.us.us7173.us, 0
  br i1 %i.bdd, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bde = srem i32 %.reass.us.us7173.us, %i.bby
  %i.bdf = sdiv i32 %.reass.us.us7173.us, %i.bby  ; 2 uses
  %.not2166.us.us.us = icmp eq i32 %i.bde, 0
  %.not2167.us.us.us = icmp slt i32 %i.bdf, %i.bt
  %or.cond8976 = select i1 %.not2166.us.us.us, i1 %.not2167.us.us.us, i1 false
  br i1 %or.cond8976, label %_ZN4ncnn3MatD2Ev.exit2284.us.us.us, label %bb.u

_ZN4ncnn3MatD2Ev.exit2284.us.us.us:               ; preds = %bb.t
  %i.bdg = add nuw nsw i64 %i.bcz, %indvars.iv8230
  %i.bdh = shl i64 %i.bdg, 4
  %i.bdi = and i64 %i.bdh, 4294967280
  %i.bdj = getelementptr inbounds nuw [2 x i8], ptr %.318347160.us.us, i64 %i.bdi ; 2 uses
  %i.bdk = load i32, ptr %i.ap, align 4, !tbaa !22, !noalias !228
  %i.bdl = load ptr, ptr %0, align 8, !tbaa !19, !noalias !228 ; 2 uses
  %i.bdm = load i64, ptr %i.aw, align 8, !tbaa !17, !noalias !228 ; 2 uses
  %i.bdn = mul i64 %i.bdm, %indvars.iv8240
  %i.bdo = load i64, ptr %i.ax, align 8, !tbaa !24, !noalias !228 ; 3 uses
  %i.bdp = mul i64 %i.bdn, %i.bdo
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdl, i64 %i.bdp
  %i.bdr = sext i32 %i.bdk to i64
  %i.bds = mul nsw i64 %i.bdr, %i.bda
  %i.bdt = mul i64 %i.bds, %i.bdo                 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdq, i64 %i.bdt
  %i.bdv = sext i32 %i.bdf to i64                 ; 2 uses
  %i.bdw = getelementptr inbounds [2 x i8], ptr %i.bdu, i64 %i.bdv
  %i.bdx = mul i64 %i.bdm, %i.bct
  %i.bdy = mul i64 %i.bdx, %i.bdo
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bdl, i64 %i.bdy
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 %i.bdt
  %i.beb = getelementptr inbounds [2 x i8], ptr %i.bea, i64 %i.bdv
  %i.bec = load i16, ptr %i.bdw, align 2, !tbaa !28
  %i.bed = zext i16 %i.bec to i32
  %i.bee = shl nuw i32 %i.bed, 16
  %i.bef = insertelement <8 x i32> poison, i32 %i.bee, i64 0
  %i.beg = bitcast <8 x i32> %i.bef to <8 x float>
  %i.beh = shufflevector <8 x float> %i.beg, <8 x float> poison, <8 x i32> zeroinitializer
  %i.bei = load i16, ptr %i.beb, align 2, !tbaa !28
  %i.bej = zext i16 %i.bei to i32
  %i.bek = shl nuw i32 %i.bej, 16
  %i.bel = insertelement <8 x i32> poison, i32 %i.bek, i64 0
  %i.bem = bitcast <8 x i32> %i.bel to <8 x float>
  %i.ben = shufflevector <8 x float> %i.bem, <8 x float> poison, <8 x i32> zeroinitializer
  %i.beo = load <8 x bfloat>, ptr %i.bdj, align 16, !tbaa !26
  %i.bep = fpext fast <8 x bfloat> %i.beo to <8 x float>
  %i.beq = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.beh, <8 x float> nofpclass(nan inf) %i.bep, <8 x float> nofpclass(nan inf) %.217141.us.us.us)
  %i.ber = getelementptr inbounds nuw i8, ptr %i.bdj, i64 16
  %i.bes = load <8 x bfloat>, ptr %i.ber, align 16, !tbaa !26
  %i.bet = fpext fast <8 x bfloat> %i.bes to <8 x float>
  %i.beu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %i.ben, <8 x float> nofpclass(nan inf) %i.bet, <8 x float> nofpclass(nan inf) %.2065667140.us.us.us)
  br label %bb.u

bb.u:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit2284.us.us.us, %bb.t, %bb.s
  %.216567.us.us.us = phi nsz <8 x float> [ %.2065667140.us.us.us, %bb.s ], [ %i.beu, %_ZN4ncnn3MatD2Ev.exit2284.us.us.us ], [ %.2065667140.us.us.us, %bb.t ] ; 2 uses
  %.22.us.us.us = phi nsz <8 x float> [ %.217141.us.us.us, %bb.s ], [ %i.beq, %_ZN4ncnn3MatD2Ev.exit2284.us.us.us ], [ %.217141.us.us.us, %bb.t ] ; 2 uses
  %indvars.iv.next8231 = add nuw nsw i64 %indvars.iv8230, 1 ; 2 uses
  %exitcond8234.not = icmp eq i64 %indvars.iv.next8231, %i.bcq
  br i1 %exitcond8234.not, label %..loopexit6918_crit_edge.us.us.us, label %bb.s, !llvm.loop !70

..loopexit6918_crit_edge.us.us.us:                ; preds = %bb.u, %bb.r, %bb.q
  %.226568.us.us.us = phi nsz <8 x float> [ %.1965657146.us.us.us, %bb.q ], [ %.1965657146.us.us.us, %bb.r ], [ %.216567.us.us.us, %bb.u ] ; 3 uses
  %.23.us.us.us = phi nsz <8 x float> [ %.207147.us.us.us, %bb.q ], [ %.207147.us.us.us, %bb.r ], [ %.22.us.us.us, %bb.u ] ; 3 uses
  %indvars.iv.next8236 = add nuw nsw i64 %indvars.iv8235, 1 ; 2 uses
  %exitcond8239.not = icmp eq i64 %indvars.iv.next8236, %wide.trip.count8238
  br i1 %exitcond8239.not, label %._crit_edge.split.us.us7174.us, label %bb.q, !llvm.loop !71

._crit_edge.split.us.us7174.us:                   ; preds = %..loopexit6918_crit_edge.us.us.us
  %i.bev = getelementptr inbounds [2 x i8], ptr %.318347160.us.us, i64 %i.ds ; 2 uses
  %indvars.iv.next8241 = add nuw nsw i64 %indvars.iv8240, 2 ; 3 uses
  %i.bew = or disjoint i64 %indvars.iv.next8241, 1 ; 2 uses
  %i.bex = trunc nuw i64 %i.bew to i32
  %i.bey = icmp sgt i32 %i.bs, %i.bex
  br i1 %i.bey, label %.preheader6926.us.us, label %.preheader6930.loopexit, !llvm.loop !72

.preheader6930.loopexit:                          ; preds = %._crit_edge.split.us.us7174.us
  %i.bez = trunc nuw i64 %indvars.iv.next8241 to i32
  br label %.preheader6930

.preheader6930:                                   ; preds = %.preheader6926.preheader, %.preheader6926.us.preheader, %.preheader6930.loopexit, %.preheader6931
  %.186564.lcssa = phi <8 x float> [ %.136559.lcssa, %.preheader6931 ], [ %.226568.us.us.us, %.preheader6930.loopexit ], [ %.136559.lcssa, %.preheader6926.us.preheader ], [ %.136559.lcssa, %.preheader6926.preheader ]
  %.19.lcssa = phi <8 x float> [ %.14.lcssa, %.preheader6931 ], [ %.23.us.us.us, %.preheader6930.loopexit ], [ %.14.lcssa, %.preheader6926.us.preheader ], [ %.14.lcssa, %.preheader6926.preheader ] ; 3 uses
  %.31839.lcssa = phi i32 [ %.21838.lcssa, %.preheader6931 ], [ %i.bez, %.preheader6930.loopexit ], [ %i.bcp, %.preheader6926.us.preheader ], [ %i.bcg, %.preheader6926.preheader ] ; 2 uses
  %.31834.lcssa = phi ptr [ %.21833.lcssa, %.preheader6931 ], [ %i.bev, %.preheader6930.loopexit ], [ %scevgep8229, %.preheader6926.us.preheader ], [ %scevgep8228, %.preheader6926.preheader ]
  %i.bfa = icmp slt i32 %.31839.lcssa, %i.bs
  br i1 %i.bfa, label %.preheader6925.lr.ph, label %._crit_edge7200

.preheader6925.lr.ph:                             ; preds = %.preheader6930
  %i.bfb = load i32, ptr %i.d, align 4
  %i.bfc = load i32, ptr %i.j, align 4
  %invariant.op7192 = sub i32 %.neg6858, %i.bfc
  %i.bfd = load i32, ptr %i.f, align 4            ; 2 uses
  %i.bfe = load i32, ptr %i.a, align 4
  %.fr8034 = freeze i32 %i.bfe                    ; 2 uses
  %i.bff = load i32, ptr %i.c, align 4
  %i.bfg = load i32, ptr %i.i, align 4
  %.neg6844 = add nuw nsw i32 %.018307214, 1
  %invariant.op7187 = sub i32 %.neg6844, %i.bfg
  %i.bfh = load i32, ptr %i.e, align 4            ; 2 uses
  %i.bfi = icmp sgt i32 %.fr8034, 0
  %or.cond = and i1 %i.dj, %i.bfi
  br i1 %or.cond, label %.preheader6925.us.us.preheader, label %._crit_edge7200

.preheader6925.us.us.preheader:                   ; preds = %.preheader6925.lr.ph
  %i.bfj = zext nneg i32 %.fr8034 to i64          ; 2 uses
  %i.bfk = zext i32 %.31839.lcssa to i64
  br label %.preheader6925.us.us

.preheader6925.us.us:                             ; preds = %.preheader6925.us.us.preheader, %._crit_edge.split.us.us7210.us
  %indvars.iv8253 = phi i64 [ %i.bfk, %.preheader6925.us.us.preheader ], [ %indvars.iv.next8254, %._crit_edge.split.us.us7210.us ] ; 2 uses
  %.418357198.us.us = phi ptr [ %.31834.lcssa, %.preheader6925.us.us.preheader ], [ %i.bgx, %._crit_edge.split.us.us7210.us ] ; 2 uses
  %.247196.us.us = phi <8 x float> [ %.19.lcssa, %.preheader6925.us.us.preheader ], [ %.28.us.us.us, %._crit_edge.split.us.us7210.us ]
  br label %bb.v

bb.v:                                             ; preds = %..loopexit6916_crit_edge.us.us.us, %.preheader6925.us.us
  %indvars.iv8248 = phi i64 [ %indvars.iv.next8249, %..loopexit6916_crit_edge.us.us.us ], [ 0, %.preheader6925.us.us ] ; 3 uses
  %.257188.us.us.us = phi <8 x float> [ %.28.us.us.us, %..loopexit6916_crit_edge.us.us.us ], [ %.247196.us.us, %.preheader6925.us.us ] ; 3 uses
  %i.bfl = trunc i64 %indvars.iv8248 to i32
  %i.bfm = mul i32 %i.bfb, %i.bfl
  %.reass7193.us.us.us = add i32 %i.bfm, %invariant.op7192 ; 3 uses
  %i.bfn = icmp slt i32 %.reass7193.us.us.us, 0
  br i1 %i.bfn, label %..loopexit6916_crit_edge.us.us.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bfo = srem i32 %.reass7193.us.us.us, %i.bfd
  %i.bfp = sdiv i32 %.reass7193.us.us.us, %i.bfd  ; 2 uses
  %.not2160.us.us.us = icmp eq i32 %i.bfo, 0
  %.not2161.us.us.us = icmp slt i32 %i.bfp, %i.bu
  %or.cond8977 = select i1 %.not2160.us.us.us, i1 %.not2161.us.us.us, i1 false
  br i1 %or.cond8977, label %.preheader6915.us.us.us, label %..loopexit6916_crit_edge.us.us.us

.preheader6915.us.us.us:                          ; preds = %bb.w
  %i.bfq = mul nuw nsw i64 %indvars.iv8248, %i.bfj
  %i.bfr = sext i32 %i.bfp to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.preheader6915.us.us.us
  %indvars.iv8243 = phi i64 [ %indvars.iv.next8244, %bb.z ], [ 0, %.preheader6915.us.us.us ] ; 3 uses
  %.267184.us.us.us = phi <8 x float> [ %.27.us.us.us, %bb.z ], [ %.257188.us.us.us, %.preheader6915.us.us.us ] ; 3 uses
  %i.bfs = trunc i64 %indvars.iv8243 to i32
  %i.bft = mul i32 %i.bff, %i.bfs
  %.reass.us.us7209.us = add i32 %i.bft, %invariant.op7187 ; 3 uses
  %i.bfu = icmp slt i32 %.reass.us.us7209.us, 0
  br i1 %i.bfu, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bfv = srem i32 %.reass.us.us7209.us, %i.bfh
  %i.bfw = sdiv i32 %.reass.us.us7209.us, %i.bfh  ; 2 uses
  %.not2162.us.us.us = icmp eq i32 %i.bfv, 0
  %.not2163.us.us.us = icmp slt i32 %i.bfw, %i.bt
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.cza = zext i16 %i.cyz to i32
  %i.czb = shl nuw i32 %i.cza, 16
  %i.czc = insertelement <4 x i32> poison, i32 %i.czb, i64 0
  %i.czd = bitcast <4 x i32> %i.czc to <4 x float>
  %i.cze = shufflevector <4 x float> %i.czd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czf = mul i64 %i.cwx, %i.btn
  %i.czg = mul i64 %i.czf, %i.cwz
  %i.czh = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.czg
  %i.czi = getelementptr inbounds nuw i8, ptr %i.czh, i64 %i.cxe
  %i.czj = getelementptr inbounds [2 x i8], ptr %i.czi, i64 %i.ctd
  %i.czk = load i16, ptr %i.czj, align 2, !tbaa !28
  %i.czl = zext i16 %i.czk to i32
  %i.czm = shl nuw i32 %i.czl, 16
  %i.czn = insertelement <4 x i32> poison, i32 %i.czm, i64 0
  %i.czo = bitcast <4 x i32> %i.czn to <4 x float>
  %i.czp = shufflevector <4 x float> %i.czo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.czq = mul i64 %i.cwx, %i.bss
  %i.czr = mul i64 %i.czq, %i.cwz
  %i.czs = getelementptr inbounds nuw i8, ptr %i.cww, i64 %i.czr
  %i.czt = getelementptr inbounds nuw i8, ptr %i.czs, i64 %i.cxe
  %i.czu = getelementptr inbounds [2 x i8], ptr %i.czt, i64 %i.ctd
  %i.czv = load i16, ptr %i.czu, align 2, !tbaa !28
  %i.czw = zext i16 %i.czv to i32
  %i.czx = shl nuw i32 %i.czw, 16
  %i.czy = insertelement <4 x i32> poison, i32 %i.czx, i64 0
  %i.czz = bitcast <4 x i32> %i.czy to <4 x float>
  %i.daa = shufflevector <4 x float> %i.czz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dab = load i64, ptr %i.bud, align 1, !tbaa !26
  %i.dac = insertelement <2 x i64> poison, i64 %i.dab, i64 0
  %i.dad = bitcast <2 x i64> %i.dac to <8 x i16>
  %i.dae = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dad, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.daf = bitcast <8 x i16> %i.dae to <4 x float>
  %i.dag = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctk, <4 x float> nofpclass(nan inf) %i.daf, <4 x float> nofpclass(nan inf) %.66719.us.us.us)
  %i.dah = getelementptr inbounds nuw i8, ptr %i.bud, i64 8
  %i.dai = load i64, ptr %i.dah, align 1, !tbaa !26
  %i.daj = insertelement <2 x i64> poison, i64 %i.dai, i64 0
  %i.dak = bitcast <2 x i64> %i.daj to <8 x i16>
  %i.dal = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dak, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dam = bitcast <8 x i16> %i.dal to <4 x float>
  %i.dan = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ctv, <4 x float> nofpclass(nan inf) %i.dam, <4 x float> nofpclass(nan inf) %.56695.us.us.us)
  %i.dao = getelementptr inbounds nuw i8, ptr %i.bud, i64 16
  %i.dap = load i64, ptr %i.dao, align 1, !tbaa !26
  %i.daq = insertelement <2 x i64> poison, i64 %i.dap, i64 0
  %i.dar = bitcast <2 x i64> %i.daq to <8 x i16>
  %i.das = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dar, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dat = bitcast <8 x i16> %i.das to <4 x float>
  %i.dau = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cug, <4 x float> nofpclass(nan inf) %i.dat, <4 x float> nofpclass(nan inf) %.56677.us.us.us)
  %i.dav = getelementptr inbounds nuw i8, ptr %i.bud, i64 24
  %i.daw = load i64, ptr %i.dav, align 1, !tbaa !26
  %i.dax = insertelement <2 x i64> poison, i64 %i.daw, i64 0
  %i.day = bitcast <2 x i64> %i.dax to <8 x i16>
  %i.daz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.day, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dba = bitcast <8 x i16> %i.daz to <4 x float>
  %i.dbb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cur, <4 x float> nofpclass(nan inf) %i.dba, <4 x float> nofpclass(nan inf) %.56659.us.us.us)
  %i.dbc = getelementptr inbounds nuw i8, ptr %i.bud, i64 32
  %i.dbd = load i64, ptr %i.dbc, align 1, !tbaa !26
  %i.dbe = insertelement <2 x i64> poison, i64 %i.dbd, i64 0
  %i.dbf = bitcast <2 x i64> %i.dbe to <8 x i16>
  %i.dbg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbh = bitcast <8 x i16> %i.dbg to <4 x float>
  %i.dbi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvc, <4 x float> nofpclass(nan inf) %i.dbh, <4 x float> nofpclass(nan inf) %i.dag)
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.bud, i64 40
  %i.dbk = load i64, ptr %i.dbj, align 1, !tbaa !26
  %i.dbl = insertelement <2 x i64> poison, i64 %i.dbk, i64 0
  %i.dbm = bitcast <2 x i64> %i.dbl to <8 x i16>
  %i.dbn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbo = bitcast <8 x i16> %i.dbn to <4 x float>
  %i.dbp = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvn, <4 x float> nofpclass(nan inf) %i.dbo, <4 x float> nofpclass(nan inf) %i.dan)
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.bud, i64 48
  %i.dbr = load i64, ptr %i.dbq, align 1, !tbaa !26
  %i.dbs = insertelement <2 x i64> poison, i64 %i.dbr, i64 0
  %i.dbt = bitcast <2 x i64> %i.dbs to <8 x i16>
  %i.dbu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dbt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dbv = bitcast <8 x i16> %i.dbu to <4 x float>
  %i.dbw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cvy, <4 x float> nofpclass(nan inf) %i.dbv, <4 x float> nofpclass(nan inf) %i.dau)
  %i.dbx = getelementptr inbounds nuw i8, ptr %i.bud, i64 56
  %i.dby = load i64, ptr %i.dbx, align 1, !tbaa !26
  %i.dbz = insertelement <2 x i64> poison, i64 %i.dby, i64 0
  %i.dca = bitcast <2 x i64> %i.dbz to <8 x i16>
  %i.dcb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcc = bitcast <8 x i16> %i.dcb to <4 x float>
  %i.dcd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwj, <4 x float> nofpclass(nan inf) %i.dcc, <4 x float> nofpclass(nan inf) %i.dbb)
  %i.dce = getelementptr inbounds nuw i8, ptr %i.bud, i64 64
  %i.dcf = load i64, ptr %i.dce, align 1, !tbaa !26
  %i.dcg = insertelement <2 x i64> poison, i64 %i.dcf, i64 0
  %i.dch = bitcast <2 x i64> %i.dcg to <8 x i16>
  %i.dci = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dch, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcj = bitcast <8 x i16> %i.dci to <4 x float>
  %i.dck = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cwu, <4 x float> nofpclass(nan inf) %i.dcj, <4 x float> nofpclass(nan inf) %i.dbi)
  %i.dcl = getelementptr inbounds nuw i8, ptr %i.bud, i64 72
  %i.dcm = load i64, ptr %i.dcl, align 1, !tbaa !26
  %i.dcn = insertelement <2 x i64> poison, i64 %i.dcm, i64 0
  %i.dco = bitcast <2 x i64> %i.dcn to <8 x i16>
  %i.dcp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dco, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcq = bitcast <8 x i16> %i.dcp to <4 x float>
  %i.dcr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxm, <4 x float> nofpclass(nan inf) %i.dcq, <4 x float> nofpclass(nan inf) %i.dbp)
  %i.dcs = getelementptr inbounds nuw i8, ptr %i.bud, i64 80
  %i.dct = load i64, ptr %i.dcs, align 1, !tbaa !26
  %i.dcu = insertelement <2 x i64> poison, i64 %i.dct, i64 0
  %i.dcv = bitcast <2 x i64> %i.dcu to <8 x i16>
  %i.dcw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dcv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dcx = bitcast <8 x i16> %i.dcw to <4 x float>
  %i.dcy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cxx, <4 x float> nofpclass(nan inf) %i.dcx, <4 x float> nofpclass(nan inf) %i.dbw)
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.bud, i64 88
  %i.dda = load i64, ptr %i.dcz, align 1, !tbaa !26
  %i.ddb = insertelement <2 x i64> poison, i64 %i.dda, i64 0
  %i.ddc = bitcast <2 x i64> %i.ddb to <8 x i16>
  %i.ddd = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dde = bitcast <8 x i16> %i.ddd to <4 x float>
  %i.ddf = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyi, <4 x float> nofpclass(nan inf) %i.dde, <4 x float> nofpclass(nan inf) %i.dcd)
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.bud, i64 96
  %i.ddh = load i64, ptr %i.ddg, align 1, !tbaa !26
  %i.ddi = insertelement <2 x i64> poison, i64 %i.ddh, i64 0
  %i.ddj = bitcast <2 x i64> %i.ddi to <8 x i16>
  %i.ddk = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddl = bitcast <8 x i16> %i.ddk to <4 x float>
  %i.ddm = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cyt, <4 x float> nofpclass(nan inf) %i.ddl, <4 x float> nofpclass(nan inf) %i.dck)
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.bud, i64 104
  %i.ddo = load i64, ptr %i.ddn, align 1, !tbaa !26
  %i.ddp = insertelement <2 x i64> poison, i64 %i.ddo, i64 0
  %i.ddq = bitcast <2 x i64> %i.ddp to <8 x i16>
  %i.ddr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dds = bitcast <8 x i16> %i.ddr to <4 x float>
  %i.ddt = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.cze, <4 x float> nofpclass(nan inf) %i.dds, <4 x float> nofpclass(nan inf) %i.dcr)
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.bud, i64 112
  %i.ddv = load i64, ptr %i.ddu, align 1, !tbaa !26
  %i.ddw = insertelement <2 x i64> poison, i64 %i.ddv, i64 0
  %i.ddx = bitcast <2 x i64> %i.ddw to <8 x i16>
  %i.ddy = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ddx, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ddz = bitcast <8 x i16> %i.ddy to <4 x float>
  %i.dea = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.czp, <4 x float> nofpclass(nan inf) %i.ddz, <4 x float> nofpclass(nan inf) %i.dcy)
  %i.deb = getelementptr inbounds nuw i8, ptr %i.bud, i64 120
  %i.dec = load i64, ptr %i.deb, align 1, !tbaa !26
  %i.ded = insertelement <2 x i64> poison, i64 %i.dec, i64 0
  %i.dee = bitcast <2 x i64> %i.ded to <8 x i16>
  %i.def = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dee, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.deg = bitcast <8 x i16> %i.def to <4 x float>
  %i.deh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.daa, <4 x float> nofpclass(nan inf) %i.deg, <4 x float> nofpclass(nan inf) %i.ddf)
  br label %bb.am

bb.am:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2272.us.us.us, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us, %.split2195.us.us.us, %bb.al, %.lr.ph.split.us.us.us7282
  %.76720.us.us.us = phi nsz <4 x float> [ %.367167222.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.367167222.us.us.us, %.split2195.us.us.us ], [ %i.cba, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cjh, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.ddm, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.crw, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.367167222.us.us.us, %bb.al ] ; 2 uses
  %.66696.us.us.us = phi nsz <4 x float> [ %.266927223.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266927223.us.us.us, %.split2195.us.us.us ], [ %i.cbh, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cjo, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.ddt, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.csd, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266927223.us.us.us, %bb.al ] ; 2 uses
  %.66678.us.us.us = phi nsz <4 x float> [ %.266747224.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266747224.us.us.us, %.split2195.us.us.us ], [ %i.cbo, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.cjv, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.dea, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.csk, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266747224.us.us.us, %bb.al ] ; 2 uses
  %.66660.us.us.us = phi nsz <4 x float> [ %.266567225.us.us.us, %.lr.ph.split.us.us.us7282 ], [ %.266567225.us.us.us, %.split2195.us.us.us ], [ %i.cbv, %_ZN4ncnn3MatD2Ev.exit2279.us.us.us ], [ %i.ckc, %_ZN4ncnn3MatD2Ev.exit2278.us.us.us ], [ %i.deh, %_ZN4ncnn3MatD2Ev.exit2272.us.us.us ], [ %i.csr, %_ZN4ncnn3MatD2Ev.exit2276.us.us.us ], [ %.266567225.us.us.us, %bb.al ] ; 2 uses
  %indvars.iv.next8266 = add nuw nsw i64 %indvars.iv8265, 1 ; 2 uses
  %exitcond8269.not = icmp eq i64 %indvars.iv.next8266, %i.bsr
  br i1 %exitcond8269.not, label %..loopexit6904_crit_edge.us.us, label %.lr.ph.split.us.us.us7282, !llvm.loop !99

..loopexit6904_crit_edge.us.us:                   ; preds = %bb.am, %.preheader6903.us.us, %bb.ak, %.lr.ph7242.split.us.us
  %.86721.us.us = phi nsz <4 x float> [ %.267157237.us.us, %.lr.ph7242.split.us.us ], [ %.267157237.us.us, %bb.ak ], [ %.267157237.us.us, %.preheader6903.us.us ], [ %.76720.us.us.us, %bb.am ] ; 2 uses
  %.76697.us.us = phi nsz <4 x float> [ %.166917238.us.us, %.lr.ph7242.split.us.us ], [ %.166917238.us.us, %bb.ak ], [ %.166917238.us.us, %.preheader6903.us.us ], [ %.66696.us.us.us, %bb.am ] ; 2 uses
  %.76679.us.us = phi nsz <4 x float> [ %.166737239.us.us, %.lr.ph7242.split.us.us ], [ %.166737239.us.us, %bb.ak ], [ %.166737239.us.us, %.preheader6903.us.us ], [ %.66678.us.us.us, %bb.am ] ; 2 uses
  %.76661.us.us = phi nsz <4 x float> [ %.166557240.us.us, %.lr.ph7242.split.us.us ], [ %.166557240.us.us, %bb.ak ], [ %.166557240.us.us, %.preheader6903.us.us ], [ %.66660.us.us.us, %bb.am ] ; 2 uses
  %indvars.iv.next8271 = add nuw nsw i64 %indvars.iv8270, 1 ; 2 uses
  %exitcond8274.not = icmp eq i64 %indvars.iv.next8271, %wide.trip.count8273
  br i1 %exitcond8274.not, label %._crit_edge7243.us, label %.lr.ph7242.split.us.us, !llvm.loop !100

._crit_edge7243.us:                               ; preds = %..loopexit6904_crit_edge.us.us, %.preheader6909.us
  %.us-phi7257.us = phi <4 x float> [ %.167147262.us, %.preheader6909.us ], [ %.86721.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7258.us = phi <4 x float> [ %.066907263.us, %.preheader6909.us ], [ %.76697.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7259.us = phi <4 x float> [ %.066727264.us, %.preheader6909.us ], [ %.76679.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %.us-phi7260.us = phi <4 x float> [ %.066547265.us, %.preheader6909.us ], [ %.76661.us.us, %..loopexit6904_crit_edge.us.us ] ; 2 uses
  %i.dei = getelementptr inbounds [2 x i8], ptr %.019617267.us, i64 %i.brq ; 2 uses
  %indvars.iv.next8276 = add nuw nsw i64 %indvars.iv8275, 16 ; 2 uses
  %i.dej = icmp slt i64 %indvars.iv.next8276, %invariant.op8778
  br i1 %i.dej, label %.preheader6909.us, label %.preheader6913, !llvm.loop !101

.preheader6913:                                   ; preds = %._crit_edge7243.us, %.preheader6909.preheader, %_ZN4ncnn3MatD2Ev.exit2280
  %.16714.lcssa = phi <4 x float> [ %.06713, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %.06713, %.preheader6909.preheader ], [ %.us-phi7257.us, %._crit_edge7243.us ] ; 3 uses
  %.06690.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7258.us, %._crit_edge7243.us ] ; 3 uses
  %.06672.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7259.us, %._crit_edge7243.us ] ; 3 uses
  %.06654.lcssa = phi <4 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2280 ], [ zeroinitializer, %.preheader6909.preheader ], [ %.us-phi7260.us, %._crit_edge7243.us ] ; 3 uses
  %.01966.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %i.brf, %.preheader6909.preheader ], [ %i.bri, %._crit_edge7243.us ] ; 5 uses
  %.01961.lcssa = phi ptr [ %i.bsi, %_ZN4ncnn3MatD2Ev.exit2280 ], [ %scevgep8264, %.preheader6909.preheader ], [ %i.dei, %._crit_edge7243.us ] ; 3 uses
  %i.dek = or disjoint i32 %.01966.lcssa, 7       ; 2 uses
  %i.del = icmp slt i32 %i.dek, %i.bpq
  br i1 %i.del, label %.preheader6908.lr.ph, label %.preheader6912

.preheader6908.lr.ph:                             ; preds = %.preheader6913
  %i.dem = load i32, ptr %i.j, align 4
  %invariant.op7310 = sub i32 %.neg6838, %i.dem
  %i.den = load i32, ptr %i.f, align 4            ; 2 uses
  %i.deo = load i32, ptr %i.a, align 4
  %.fr8038 = freeze i32 %i.deo                    ; 2 uses
  %i.dep = icmp sgt i32 %.fr8038, 0
  %i.deq = load i32, ptr %i.i, align 4
  %.neg6836 = add nuw nsw i32 %.019607505, 1
  %invariant.op7298 = sub i32 %.neg6836, %i.deq
  %i.der = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.brn, label %.preheader6908.us.preheader, label %.preheader6908.preheader

.preheader6908.preheader:                         ; preds = %.preheader6908.lr.ph
  %i.des = sub i32 %i.brj, %.01966.lcssa          ; 2 uses
  %i.det = lshr i32 %i.des, 2
  %i.deu = and i32 %i.det, 1073741822
  %narrow8740 = add nuw nsw i32 %i.deu, 2
  %i.dev = zext nneg i32 %narrow8740 to i64
  %i.dew = mul nsw i64 %i.brs, %i.dev
  %scevgep8278 = getelementptr i8, ptr %.01961.lcssa, i64 %i.dew
  %i.dex = add nsw i32 %.01966.lcssa, 8
  %i.dey = and i32 %i.des, -8
  %i.dez = add i32 %i.dex, %i.dey
  br label %.preheader6912

.preheader6908.us.preheader:                      ; preds = %.preheader6908.lr.ph
  %i.dfa = load i32, ptr %i.c, align 4
  %i.dfb = load i32, ptr %i.d, align 4
  %i.dfc = zext i32 %.fr8038 to i64               ; 2 uses
  %i.dfd = zext i32 %.01966.lcssa to i64
  %i.dfe = zext nneg i32 %i.dek to i64
  br label %.preheader6908.us

.preheader6908.us:                                ; preds = %.preheader6908.us.preheader, %._crit_edge7305.us
  %indvars.iv8289 = phi i64 [ %i.dfd, %.preheader6908.us.preheader ], [ %indvars.iv.next8290, %._crit_edge7305.us ] ; 10 uses
  %i.dff = phi i64 [ %i.dfe, %.preheader6908.us.preheader ], [ %i.dqk, %._crit_edge7305.us ]
  %.119627322.us = phi ptr [ %.01961.lcssa, %.preheader6908.us.preheader ], [ %i.dqj, %._crit_edge7305.us ] ; 2 uses
  %.866627320.us = phi <4 x float> [ %.06654.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7315.us, %._crit_edge7305.us ] ; 2 uses
  %.866807319.us = phi <4 x float> [ %.06672.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7314.us, %._crit_edge7305.us ] ; 2 uses
  %.866987318.us = phi <4 x float> [ %.06690.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7313.us, %._crit_edge7305.us ] ; 2 uses
  %.967227317.us = phi <4 x float> [ %.16714.lcssa, %.preheader6908.us.preheader ], [ %.us-phi7312.us, %._crit_edge7305.us ] ; 2 uses
  %i.dfg = or disjoint i64 %indvars.iv8289, 1
  %i.dfh = or disjoint i64 %indvars.iv8289, 2
  %i.dfi = or disjoint i64 %indvars.iv8289, 3
  %i.dfj = or disjoint i64 %indvars.iv8289, 4
  %i.dfk = or disjoint i64 %indvars.iv8289, 5
  %i.dfl = or disjoint i64 %indvars.iv8289, 6
  %i.dfm = lshr exact i64 %indvars.iv8289, 2      ; 2 uses
  %i.dfn = or disjoint i64 %i.dfm, 1
  %i.dfo = lshr exact i64 %indvars.iv8289, 3
  br i1 %i.dep, label %.lr.ph7304.split.us.us, label %._crit_edge7305.us

.lr.ph7304.split.us.us:                           ; preds = %.preheader6908.us, %..loopexit6902_crit_edge.us.us
  %indvars.iv8284 = phi i64 [ %indvars.iv.next8285, %..loopexit6902_crit_edge.us.us ], [ 0, %.preheader6908.us ] ; 3 uses
  %.966637302.us.us = phi <4 x float> [ %.126666.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866627320.us, %.preheader6908.us ] ; 3 uses
  %.966817301.us.us = phi <4 x float> [ %.126684.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866807319.us, %.preheader6908.us ] ; 3 uses
  %.966997300.us.us = phi <4 x float> [ %.126702.us.us, %..loopexit6902_crit_edge.us.us ], [ %.866987318.us, %.preheader6908.us ] ; 3 uses
  %.1067237299.us.us = phi <4 x float> [ %.136726.us.us, %..loopexit6902_crit_edge.us.us ], [ %.967227317.us, %.preheader6908.us ] ; 3 uses
  %i.dfp = trunc i64 %indvars.iv8284 to i32
  %i.dfq = mul i32 %i.dfb, %i.dfp
  %.reass7311.us.us = add i32 %i.dfq, %invariant.op7310 ; 3 uses
  %i.dfr = icmp slt i32 %.reass7311.us.us, 0
  br i1 %i.dfr, label %..loopexit6902_crit_edge.us.us, label %bb.an

bb.an:                                            ; preds = %.lr.ph7304.split.us.us
  %i.dfs = srem i32 %.reass7311.us.us, %i.den
  %i.dft = sdiv i32 %.reass7311.us.us, %i.den     ; 2 uses
  %.not2145.us.us = icmp eq i32 %i.dfs, 0
  %.not2146.us.us = icmp slt i32 %i.dft, %i.bps
  %or.cond8981 = select i1 %.not2145.us.us, i1 %.not2146.us.us, i1 false
  br i1 %or.cond8981, label %.preheader6901.us.us, label %..loopexit6902_crit_edge.us.us

.preheader6901.us.us:                             ; preds = %bb.an
  %i.dfu = mul nuw nsw i64 %indvars.iv8284, %i.dfc
  %i.dfv = sext i32 %i.dft to i64                 ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.preheader6901.us.us
  %indvars.iv8279 = phi i64 [ %indvars.iv.next8280, %bb.ar ], [ 0, %.preheader6901.us.us ] ; 3 uses
  %.1066647292.us.us = phi <4 x float> [ %.116665.us.us, %bb.ar ], [ %.966637302.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1066827291.us.us = phi <4 x float> [ %.116683.us.us, %bb.ar ], [ %.966817301.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1067007290.us.us = phi <4 x float> [ %.116701.us.us, %bb.ar ], [ %.966997300.us.us, %.preheader6901.us.us ] ; 4 uses
  %.1167247289.us.us = phi <4 x float> [ %.126725.us.us, %bb.ar ], [ %.1067237299.us.us, %.preheader6901.us.us ] ; 4 uses
  %i.dfw = trunc i64 %indvars.iv8279 to i32
  %i.dfx = mul i32 %i.dfa, %i.dfw
  %.reass.us.us7337 = add i32 %i.dfx, %invariant.op7298 ; 3 uses
  %i.dfy = icmp slt i32 %.reass.us.us7337, 0
  br i1 %i.dfy, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dfz = srem i32 %.reass.us.us7337, %i.der
  %i.dga = sdiv i32 %.reass.us.us7337, %i.der     ; 4 uses
  %.not2147.us.us = icmp eq i32 %i.dfz, 0
  %.not2148.us.us = icmp slt i32 %i.dga, %i.bpr
  %or.cond8982 = select i1 %.not2147.us.us, i1 %.not2148.us.us, i1 false
  br i1 %or.cond8982, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.dgb = add nuw nsw i64 %i.dfu, %indvars.iv8279
  %i.dgc = shl i64 %i.dgb, 5
  %i.dgd = and i64 %i.dgc, 4294967264
  %i.dge = getelementptr inbounds nuw [2 x i8], ptr %.119627322.us, i64 %i.dgd ; 8 uses
  switch i32 %.fr8036, label %bb.ar [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2256.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2255.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2253.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2253.us.us:                  ; preds = %bb.aq
  %i.dgf = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !239
  %i.dgg = load ptr, ptr %0, align 8, !tbaa !19, !noalias !239 ; 8 uses
  %i.dgh = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !239 ; 8 uses
  %i.dgi = mul i64 %i.dgh, %indvars.iv8289
  %i.dgj = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !239 ; 9 uses
  %i.dgk = mul i64 %i.dgi, %i.dgj
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.dgk
  %i.dgm = sext i32 %i.dgf to i64
  %i.dgn = mul nsw i64 %i.dgm, %i.dfv
  %i.dgo = mul i64 %i.dgn, %i.dgj                 ; 8 uses
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.dgl, i64 %i.dgo
  %i.dgq = sext i32 %i.dga to i64                 ; 8 uses
  %i.dgr = getelementptr inbounds [2 x i8], ptr %i.dgp, i64 %i.dgq
  %i.dgs = load i16, ptr %i.dgr, align 2, !tbaa !28
  %i.dgt = zext i16 %i.dgs to i32
  %i.dgu = shl nuw i32 %i.dgt, 16
  %i.dgv = insertelement <4 x i32> poison, i32 %i.dgu, i64 0
  %i.dgw = bitcast <4 x i32> %i.dgv to <4 x float>
  %i.dgx = shufflevector <4 x float> %i.dgw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dgy = mul i64 %i.dgh, %i.dfg
  %i.dgz = mul i64 %i.dgy, %i.dgj
  %i.dha = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.dgz
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dha, i64 %i.dgo
  %i.dhc = getelementptr inbounds [2 x i8], ptr %i.dhb, i64 %i.dgq
  %i.dhd = load i16, ptr %i.dhc, align 2, !tbaa !28
  %i.dhe = zext i16 %i.dhd to i32
  %i.dhf = shl nuw i32 %i.dhe, 16
  %i.dhg = insertelement <4 x i32> poison, i32 %i.dhf, i64 0
  %i.dhh = bitcast <4 x i32> %i.dhg to <4 x float>
  %i.dhi = shufflevector <4 x float> %i.dhh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dhj = mul i64 %i.dgh, %i.dfh
  %i.dhk = mul i64 %i.dhj, %i.dgj
  %i.dhl = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.dhk
  %i.dhm = getelementptr inbounds nuw i8, ptr %i.dhl, i64 %i.dgo
  %i.dhn = getelementptr inbounds [2 x i8], ptr %i.dhm, i64 %i.dgq
  %i.dho = load i16, ptr %i.dhn, align 2, !tbaa !28
  %i.dhp = zext i16 %i.dho to i32
  %i.dhq = shl nuw i32 %i.dhp, 16
  %i.dhr = insertelement <4 x i32> poison, i32 %i.dhq, i64 0
  %i.dhs = bitcast <4 x i32> %i.dhr to <4 x float>
  %i.dht = shufflevector <4 x float> %i.dhs, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dhu = mul i64 %i.dgh, %i.dfi
  %i.dhv = mul i64 %i.dhu, %i.dgj
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.dhv
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhw, i64 %i.dgo
  %i.dhy = getelementptr inbounds [2 x i8], ptr %i.dhx, i64 %i.dgq
  %i.dhz = load i16, ptr %i.dhy, align 2, !tbaa !28
  %i.dia = zext i16 %i.dhz to i32
  %i.dib = shl nuw i32 %i.dia, 16
  %i.dic = insertelement <4 x i32> poison, i32 %i.dib, i64 0
  %i.did = bitcast <4 x i32> %i.dic to <4 x float>
  %i.die = shufflevector <4 x float> %i.did, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dif = mul i64 %i.dgh, %i.dfj
  %i.dig = mul i64 %i.dif, %i.dgj
  %i.dih = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.dig
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dih, i64 %i.dgo
  %i.dij = getelementptr inbounds [2 x i8], ptr %i.dii, i64 %i.dgq
  %i.dik = load i16, ptr %i.dij, align 2, !tbaa !28
  %i.dil = zext i16 %i.dik to i32
  %i.dim = shl nuw i32 %i.dil, 16
  %i.din = insertelement <4 x i32> poison, i32 %i.dim, i64 0
  %i.dio = bitcast <4 x i32> %i.din to <4 x float>
  %i.dip = shufflevector <4 x float> %i.dio, <4 x float> poison, <4 x i32> zeroinitializer
  %i.diq = mul i64 %i.dgh, %i.dfk
  %i.dir = mul i64 %i.diq, %i.dgj
  %i.dis = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.dir
  %i.dit = getelementptr inbounds nuw i8, ptr %i.dis, i64 %i.dgo
  %i.diu = getelementptr inbounds [2 x i8], ptr %i.dit, i64 %i.dgq
  %i.div = load i16, ptr %i.diu, align 2, !tbaa !28
  %i.diw = zext i16 %i.div to i32
  %i.dix = shl nuw i32 %i.diw, 16
  %i.diy = insertelement <4 x i32> poison, i32 %i.dix, i64 0
  %i.diz = bitcast <4 x i32> %i.diy to <4 x float>
  %i.dja = shufflevector <4 x float> %i.diz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.djb = mul i64 %i.dgh, %i.dfl
  %i.djc = mul i64 %i.djb, %i.dgj
  %i.djd = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.djc
  %i.dje = getelementptr inbounds nuw i8, ptr %i.djd, i64 %i.dgo
  %i.djf = getelementptr inbounds [2 x i8], ptr %i.dje, i64 %i.dgq
  %i.djg = load i16, ptr %i.djf, align 2, !tbaa !28
  %i.djh = zext i16 %i.djg to i32
  %i.dji = shl nuw i32 %i.djh, 16
  %i.djj = insertelement <4 x i32> poison, i32 %i.dji, i64 0
  %i.djk = bitcast <4 x i32> %i.djj to <4 x float>
  %i.djl = shufflevector <4 x float> %i.djk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.djm = mul i64 %i.dgh, %i.dff
  %i.djn = mul i64 %i.djm, %i.dgj
  %i.djo = getelementptr inbounds nuw i8, ptr %i.dgg, i64 %i.djn
  %i.djp = getelementptr inbounds nuw i8, ptr %i.djo, i64 %i.dgo
  %i.djq = getelementptr inbounds [2 x i8], ptr %i.djp, i64 %i.dgq
  br label %.sink.split8818

_ZN4ncnn3MatD2Ev.exit2255.us.us:                  ; preds = %bb.aq
  %i.djr = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !240
  %i.djs = load ptr, ptr %0, align 8, !tbaa !19, !noalias !240 ; 2 uses
  %i.djt = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !240 ; 2 uses
  %i.dju = mul i64 %i.djt, %i.dfm
  %i.djv = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !240 ; 3 uses
  %i.djw = mul i64 %i.dju, %i.djv
  %i.djx = getelementptr inbounds nuw i8, ptr %i.djs, i64 %i.djw
  %i.djy = sext i32 %i.djr to i64
  %i.djz = mul nsw i64 %i.djy, %i.dfv
  %i.dka = mul i64 %i.djz, %i.djv                 ; 2 uses
  %i.dkb = getelementptr inbounds nuw i8, ptr %i.djx, i64 %i.dka
  %i.dkc = shl nsw i32 %i.dga, 2
  %i.dkd = sext i32 %i.dkc to i64                 ; 2 uses
  %i.dke = getelementptr inbounds [2 x i8], ptr %i.dkb, i64 %i.dkd ; 4 uses
  %i.dkf = mul i64 %i.djt, %i.dfn
  %i.dkg = mul i64 %i.dkf, %i.djv
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.djs, i64 %i.dkg
  %i.dki = getelementptr inbounds nuw i8, ptr %i.dkh, i64 %i.dka
  %i.dkj = getelementptr inbounds [2 x i8], ptr %i.dki, i64 %i.dkd ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.dlw = bitcast <4 x i32> %i.dlv to <4 x float>
  %i.dlx = shufflevector <4 x float> %i.dlw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dly = getelementptr inbounds nuw i8, ptr %i.dkj, i64 4
  %i.dlz = load i16, ptr %i.dly, align 2, !tbaa !28
  %i.dma = zext i16 %i.dlz to i32
  %i.dmb = shl nuw i32 %i.dma, 16
  %i.dmc = insertelement <4 x i32> poison, i32 %i.dmb, i64 0
  %i.dmd = bitcast <4 x i32> %i.dmc to <4 x float>
  %i.dme = shufflevector <4 x float> %i.dmd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.dkj, i64 6
  br label %.sink.split8818

_ZN4ncnn3MatD2Ev.exit2256.us.us:                  ; preds = %bb.aq
  %i.dmg = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !241
  %i.dmh = load ptr, ptr %0, align 8, !tbaa !19, !noalias !241
  %i.dmi = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !241
  %i.dmj = mul i64 %i.dmi, %i.dfo
  %i.dmk = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !241 ; 2 uses
  %i.dml = mul i64 %i.dmj, %i.dmk
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dmh, i64 %i.dml
  %i.dmn = sext i32 %i.dmg to i64
  %i.dmo = mul nsw i64 %i.dmn, %i.dfv
  %i.dmp = mul i64 %i.dmo, %i.dmk
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmm, i64 %i.dmp
  %i.dmr = shl nsw i32 %i.dga, 3
  %i.dms = sext i32 %i.dmr to i64
  %i.dmt = getelementptr inbounds [2 x i8], ptr %i.dmq, i64 %i.dms ; 5 uses
  %i.dmu = load i16, ptr %i.dmt, align 2, !tbaa !28
  %i.dmv = zext i16 %i.dmu to i32
  %i.dmw = shl nuw i32 %i.dmv, 16
  %i.dmx = insertelement <4 x i32> poison, i32 %i.dmw, i64 0
  %i.dmy = bitcast <4 x i32> %i.dmx to <4 x float>
  %i.dmz = shufflevector <4 x float> %i.dmy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dna = getelementptr inbounds nuw i8, ptr %i.dmt, i64 2
  %i.dnb = load i16, ptr %i.dna, align 2, !tbaa !28
  %i.dnc = zext i16 %i.dnb to i32
  %i.dnd = shl nuw i32 %i.dnc, 16
  %i.dne = insertelement <4 x i32> poison, i32 %i.dnd, i64 0
  %i.dnf = bitcast <4 x i32> %i.dne to <4 x float>
  %i.dng = shufflevector <4 x float> %i.dnf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnh = getelementptr inbounds nuw i8, ptr %i.dmt, i64 4
  %i.dni = load i16, ptr %i.dnh, align 2, !tbaa !28
  %i.dnj = zext i16 %i.dni to i32
  %i.dnk = shl nuw i32 %i.dnj, 16
  %i.dnl = insertelement <4 x i32> poison, i32 %i.dnk, i64 0
  %i.dnm = bitcast <4 x i32> %i.dnl to <4 x float>
  %i.dnn = shufflevector <4 x float> %i.dnm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dno = getelementptr inbounds nuw i8, ptr %i.dmt, i64 6
  %i.dnp = load <4 x i16>, ptr %i.dno, align 2, !tbaa !28
  %i.dnq = zext <4 x i16> %i.dnp to <4 x i32>
  %i.dnr = shl nuw <4 x i32> %i.dnq, splat (i32 16) ; 4 uses
  %i.dns = bitcast <4 x i32> %i.dnr to <4 x float>
  %i.dnt = shufflevector <4 x float> %i.dns, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dnu = bitcast <4 x i32> %i.dnr to <4 x float>
  %i.dnv = shufflevector <4 x float> %i.dnu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.dnw = bitcast <4 x i32> %i.dnr to <4 x float>
  %i.dnx = shufflevector <4 x float> %i.dnw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dny = bitcast <4 x i32> %i.dnr to <4 x float>
  %i.dnz = shufflevector <4 x float> %i.dny, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dmt, i64 14
  br label %.sink.split8818

.sink.split8818:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2253.us.us, %_ZN4ncnn3MatD2Ev.exit2255.us.us, %_ZN4ncnn3MatD2Ev.exit2256.us.us
  %.sink8879.in = phi ptr [ %i.doa, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dmf, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.djq, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8871 = phi <4 x float> [ %i.dmz, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dkp, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dgx, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8864 = phi <4 x float> [ %i.dng, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dkw, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dhi, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8857 = phi <4 x float> [ %i.dnn, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dld, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dht, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8850 = phi <4 x float> [ %i.dnt, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dlk, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.die, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8842 = phi <4 x float> [ %i.dnv, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dlq, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dip, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8834 = phi <4 x float> [ %i.dnx, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dlx, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.dja, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8826 = phi <4 x float> [ %i.dnz, %_ZN4ncnn3MatD2Ev.exit2256.us.us ], [ %i.dme, %_ZN4ncnn3MatD2Ev.exit2255.us.us ], [ %i.djl, %_ZN4ncnn3MatD2Ev.exit2253.us.us ]
  %.sink8879 = load i16, ptr %.sink8879.in, align 2, !tbaa !28
  %i.dob = zext i16 %.sink8879 to i32
  %i.doc = shl nuw i32 %i.dob, 16
  %i.dod = insertelement <4 x i32> poison, i32 %i.doc, i64 0
  %i.doe = bitcast <4 x i32> %i.dod to <4 x float>
  %i.dof = shufflevector <4 x float> %i.doe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dog = load i64, ptr %i.dge, align 1, !tbaa !26
  %i.doh = insertelement <2 x i64> poison, i64 %i.dog, i64 0
  %i.doi = bitcast <2 x i64> %i.doh to <8 x i16>
  %i.doj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.doi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dok = bitcast <8 x i16> %i.doj to <4 x float>
  %i.dol = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8871, <4 x float> nofpclass(nan inf) %i.dok, <4 x float> nofpclass(nan inf) %.1167247289.us.us)
  %i.dom = getelementptr inbounds nuw i8, ptr %i.dge, i64 8
  %i.don = load i64, ptr %i.dom, align 1, !tbaa !26
  %i.doo = insertelement <2 x i64> poison, i64 %i.don, i64 0
  %i.dop = bitcast <2 x i64> %i.doo to <8 x i16>
  %i.doq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dop, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dor = bitcast <8 x i16> %i.doq to <4 x float>
  %i.dos = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8864, <4 x float> nofpclass(nan inf) %i.dor, <4 x float> nofpclass(nan inf) %.1067007290.us.us)
  %i.dot = getelementptr inbounds nuw i8, ptr %i.dge, i64 16
  %i.dou = load i64, ptr %i.dot, align 1, !tbaa !26
  %i.dov = insertelement <2 x i64> poison, i64 %i.dou, i64 0
  %i.dow = bitcast <2 x i64> %i.dov to <8 x i16>
  %i.dox = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dow, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.doy = bitcast <8 x i16> %i.dox to <4 x float>
  %i.doz = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8857, <4 x float> nofpclass(nan inf) %i.doy, <4 x float> nofpclass(nan inf) %.1066827291.us.us)
  %i.dpa = getelementptr inbounds nuw i8, ptr %i.dge, i64 24
  %i.dpb = load i64, ptr %i.dpa, align 1, !tbaa !26
  %i.dpc = insertelement <2 x i64> poison, i64 %i.dpb, i64 0
  %i.dpd = bitcast <2 x i64> %i.dpc to <8 x i16>
  %i.dpe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dpd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dpf = bitcast <8 x i16> %i.dpe to <4 x float>
  %i.dpg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8850, <4 x float> nofpclass(nan inf) %i.dpf, <4 x float> nofpclass(nan inf) %.1066647292.us.us)
  %i.dph = getelementptr inbounds nuw i8, ptr %i.dge, i64 32
  %i.dpi = load i64, ptr %i.dph, align 1, !tbaa !26
  %i.dpj = insertelement <2 x i64> poison, i64 %i.dpi, i64 0
  %i.dpk = bitcast <2 x i64> %i.dpj to <8 x i16>
  %i.dpl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dpk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dpm = bitcast <8 x i16> %i.dpl to <4 x float>
  %i.dpn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8842, <4 x float> nofpclass(nan inf) %i.dpm, <4 x float> nofpclass(nan inf) %i.dol)
  %i.dpo = getelementptr inbounds nuw i8, ptr %i.dge, i64 40
  %i.dpp = load i64, ptr %i.dpo, align 1, !tbaa !26
  %i.dpq = insertelement <2 x i64> poison, i64 %i.dpp, i64 0
  %i.dpr = bitcast <2 x i64> %i.dpq to <8 x i16>
  %i.dps = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dpr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dpt = bitcast <8 x i16> %i.dps to <4 x float>
  %i.dpu = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8834, <4 x float> nofpclass(nan inf) %i.dpt, <4 x float> nofpclass(nan inf) %i.dos)
  %i.dpv = getelementptr inbounds nuw i8, ptr %i.dge, i64 48
  %i.dpw = load i64, ptr %i.dpv, align 1, !tbaa !26
  %i.dpx = insertelement <2 x i64> poison, i64 %i.dpw, i64 0
  %i.dpy = bitcast <2 x i64> %i.dpx to <8 x i16>
  %i.dpz = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dpy, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dqa = bitcast <8 x i16> %i.dpz to <4 x float>
  %i.dqb = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sink8826, <4 x float> nofpclass(nan inf) %i.dqa, <4 x float> nofpclass(nan inf) %i.doz)
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.dge, i64 56
  %i.dqd = load i64, ptr %i.dqc, align 1, !tbaa !26
  %i.dqe = insertelement <2 x i64> poison, i64 %i.dqd, i64 0
  %i.dqf = bitcast <2 x i64> %i.dqe to <8 x i16>
  %i.dqg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dqf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dqh = bitcast <8 x i16> %i.dqg to <4 x float>
  %i.dqi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dof, <4 x float> nofpclass(nan inf) %i.dqh, <4 x float> nofpclass(nan inf) %i.dpg)
  br label %bb.ar

bb.ar:                                            ; preds = %.sink.split8818, %bb.aq, %bb.ap, %bb.ao
  %.126725.us.us = phi nsz <4 x float> [ %.1167247289.us.us, %bb.ao ], [ %.1167247289.us.us, %bb.aq ], [ %.1167247289.us.us, %bb.ap ], [ %i.dpn, %.sink.split8818 ] ; 2 uses
  %.116701.us.us = phi nsz <4 x float> [ %.1067007290.us.us, %bb.ao ], [ %.1067007290.us.us, %bb.aq ], [ %.1067007290.us.us, %bb.ap ], [ %i.dpu, %.sink.split8818 ] ; 2 uses
  %.116683.us.us = phi nsz <4 x float> [ %.1066827291.us.us, %bb.ao ], [ %.1066827291.us.us, %bb.aq ], [ %.1066827291.us.us, %bb.ap ], [ %i.dqb, %.sink.split8818 ] ; 2 uses
  %.116665.us.us = phi nsz <4 x float> [ %.1066647292.us.us, %bb.ao ], [ %.1066647292.us.us, %bb.aq ], [ %.1066647292.us.us, %bb.ap ], [ %i.dqi, %.sink.split8818 ] ; 2 uses
  %indvars.iv.next8280 = add nuw nsw i64 %indvars.iv8279, 1 ; 2 uses
  %exitcond8283.not = icmp eq i64 %indvars.iv.next8280, %i.dfc
  br i1 %exitcond8283.not, label %..loopexit6902_crit_edge.us.us, label %bb.ao, !llvm.loop !108

..loopexit6902_crit_edge.us.us:                   ; preds = %bb.ar, %bb.an, %.lr.ph7304.split.us.us
  %.136726.us.us = phi nsz <4 x float> [ %.1067237299.us.us, %.lr.ph7304.split.us.us ], [ %.1067237299.us.us, %bb.an ], [ %.126725.us.us, %bb.ar ] ; 2 uses
  %.126702.us.us = phi nsz <4 x float> [ %.966997300.us.us, %.lr.ph7304.split.us.us ], [ %.966997300.us.us, %bb.an ], [ %.116701.us.us, %bb.ar ] ; 2 uses
  %.126684.us.us = phi nsz <4 x float> [ %.966817301.us.us, %.lr.ph7304.split.us.us ], [ %.966817301.us.us, %bb.an ], [ %.116683.us.us, %bb.ar ] ; 2 uses
  %.126666.us.us = phi nsz <4 x float> [ %.966637302.us.us, %.lr.ph7304.split.us.us ], [ %.966637302.us.us, %bb.an ], [ %.116665.us.us, %bb.ar ] ; 2 uses
  %indvars.iv.next8285 = add nuw nsw i64 %indvars.iv8284, 1 ; 2 uses
  %exitcond8288.not = icmp eq i64 %indvars.iv.next8285, %wide.trip.count8287
  br i1 %exitcond8288.not, label %._crit_edge7305.us, label %.lr.ph7304.split.us.us, !llvm.loop !109

._crit_edge7305.us:                               ; preds = %..loopexit6902_crit_edge.us.us, %.preheader6908.us
  %.us-phi7312.us = phi <4 x float> [ %.967227317.us, %.preheader6908.us ], [ %.136726.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %.us-phi7313.us = phi <4 x float> [ %.866987318.us, %.preheader6908.us ], [ %.126702.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %.us-phi7314.us = phi <4 x float> [ %.866807319.us, %.preheader6908.us ], [ %.126684.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %.us-phi7315.us = phi <4 x float> [ %.866627320.us, %.preheader6908.us ], [ %.126666.us.us, %..loopexit6902_crit_edge.us.us ] ; 2 uses
  %i.dqj = getelementptr inbounds [2 x i8], ptr %.119627322.us, i64 %i.brs ; 2 uses
  %indvars.iv.next8290 = add nuw nsw i64 %indvars.iv8289, 8 ; 3 uses
  %i.dqk = or disjoint i64 %indvars.iv.next8290, 7 ; 2 uses
  %i.dql = trunc nuw i64 %i.dqk to i32
  %i.dqm = icmp sgt i32 %i.bpq, %i.dql
  br i1 %i.dqm, label %.preheader6908.us, label %.preheader6912.loopexit, !llvm.loop !110

.preheader6912.loopexit:                          ; preds = %._crit_edge7305.us
  %i.dqn = trunc nuw i64 %indvars.iv.next8290 to i32
  br label %.preheader6912

.preheader6912:                                   ; preds = %.preheader6908.preheader, %.preheader6912.loopexit, %.preheader6913
  %.96722.lcssa = phi <4 x float> [ %.16714.lcssa, %.preheader6913 ], [ %.us-phi7312.us, %.preheader6912.loopexit ], [ %.16714.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.86698.lcssa = phi <4 x float> [ %.06690.lcssa, %.preheader6913 ], [ %.us-phi7313.us, %.preheader6912.loopexit ], [ %.06690.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.86680.lcssa = phi <4 x float> [ %.06672.lcssa, %.preheader6913 ], [ %.us-phi7314.us, %.preheader6912.loopexit ], [ %.06672.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.86662.lcssa = phi <4 x float> [ %.06654.lcssa, %.preheader6913 ], [ %.us-phi7315.us, %.preheader6912.loopexit ], [ %.06654.lcssa, %.preheader6908.preheader ] ; 3 uses
  %.11967.lcssa = phi i32 [ %.01966.lcssa, %.preheader6913 ], [ %i.dqn, %.preheader6912.loopexit ], [ %i.dez, %.preheader6908.preheader ] ; 5 uses
  %.11962.lcssa = phi ptr [ %.01961.lcssa, %.preheader6913 ], [ %i.dqj, %.preheader6912.loopexit ], [ %scevgep8278, %.preheader6908.preheader ] ; 3 uses
  %i.dqo = or disjoint i32 %.11967.lcssa, 3       ; 2 uses
  %i.dqp = icmp slt i32 %i.dqo, %i.bpq
  br i1 %i.dqp, label %.preheader6907.lr.ph, label %.preheader6911

.preheader6907.lr.ph:                             ; preds = %.preheader6912
  %i.dqq = load i32, ptr %i.j, align 4
  %invariant.op7391 = sub i32 %.neg6838, %i.dqq
  %i.dqr = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dqs = load i32, ptr %i.a, align 4
  %.fr8039 = freeze i32 %i.dqs                    ; 2 uses
  %i.dqt = icmp sgt i32 %.fr8039, 0
  %i.dqu = load i32, ptr %i.i, align 4
  %.neg6832 = add nuw nsw i32 %.019607505, 1
  %invariant.op7353 = sub i32 %.neg6832, %i.dqu   ; 2 uses
  %i.dqv = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.brn, label %.preheader6907.us.preheader, label %.preheader6907.preheader

.preheader6907.preheader:                         ; preds = %.preheader6907.lr.ph
  %i.dqw = sub i32 %i.brk, %.11967.lcssa          ; 2 uses
  %i.dqx = lshr i32 %i.dqw, 1
  %i.dqy = and i32 %i.dqx, 2147483646
  %narrow8741 = add nuw i32 %i.dqy, 2
  %i.dqz = zext i32 %narrow8741 to i64
  %i.dra = mul nsw i64 %i.bru, %i.dqz
  %scevgep8292 = getelementptr i8, ptr %.11962.lcssa, i64 %i.dra
  %i.drb = add nsw i32 %.11967.lcssa, 4
  %i.drc = and i32 %i.dqw, -4
  %i.drd = add i32 %i.drb, %i.drc
  br label %.preheader6911

.preheader6907.us.preheader:                      ; preds = %.preheader6907.lr.ph
  %i.dre = load i32, ptr %i.c, align 4            ; 2 uses
  %i.drf = load i32, ptr %i.d, align 4
  %i.drg = zext i32 %.fr8039 to i64               ; 3 uses
  %i.drh = zext i32 %.11967.lcssa to i64
  %i.dri = zext nneg i32 %i.dqo to i64
  br label %.preheader6907.us

.preheader6907.us:                                ; preds = %.preheader6907.us.preheader, %._crit_edge7386.us
  %indvars.iv8308 = phi i64 [ %i.drh, %.preheader6907.us.preheader ], [ %indvars.iv.next8309, %._crit_edge7386.us ] ; 5 uses
  %i.drj = phi i64 [ %i.dri, %.preheader6907.us.preheader ], [ %i.dye, %._crit_edge7386.us ]
  %.219637411.us = phi ptr [ %.11962.lcssa, %.preheader6907.us.preheader ], [ %i.dyd, %._crit_edge7386.us ] ; 3 uses
  %.1366677409.us = phi <4 x float> [ %.86662.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7404.us, %._crit_edge7386.us ] ; 2 uses
  %.1366857408.us = phi <4 x float> [ %.86680.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7403.us, %._crit_edge7386.us ] ; 2 uses
  %.1367037407.us = phi <4 x float> [ %.86698.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7402.us, %._crit_edge7386.us ] ; 2 uses
  %.1467277406.us = phi <4 x float> [ %.96722.lcssa, %.preheader6907.us.preheader ], [ %.us-phi7401.us, %._crit_edge7386.us ] ; 2 uses
  %i.drk = or disjoint i64 %indvars.iv8308, 1
  %i.drl = or disjoint i64 %indvars.iv8308, 2
  %i.drm = lshr exact i64 %indvars.iv8308, 2
  br i1 %i.dqt, label %.lr.ph7385.split.us.us, label %._crit_edge7386.us

.lr.ph7385.split.us.us:                           ; preds = %.preheader6907.us, %..loopexit6900_crit_edge.us.us
  %indvars.iv8303 = phi i64 [ %indvars.iv.next8304, %..loopexit6900_crit_edge.us.us ], [ 0, %.preheader6907.us ] ; 3 uses
  %.1466687383.us.us = phi <4 x float> [ %.176671.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1366677409.us, %.preheader6907.us ] ; 5 uses
  %.1466867382.us.us = phi <4 x float> [ %.176689.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1366857408.us, %.preheader6907.us ] ; 5 uses
  %.1467047381.us.us = phi <4 x float> [ %.176707.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1367037407.us, %.preheader6907.us ] ; 5 uses
  %.1567287380.us.us = phi <4 x float> [ %.186731.us.us, %..loopexit6900_crit_edge.us.us ], [ %.1467277406.us, %.preheader6907.us ] ; 5 uses
  %i.drn = trunc i64 %indvars.iv8303 to i32
  %i.dro = mul i32 %i.drf, %i.drn
  %.reass7392.us.us = add i32 %i.dro, %invariant.op7391 ; 3 uses
  %i.drp = icmp slt i32 %.reass7392.us.us, 0
  br i1 %i.drp, label %..loopexit6900_crit_edge.us.us, label %bb.as

bb.as:                                            ; preds = %.lr.ph7385.split.us.us
  %i.drq = srem i32 %.reass7392.us.us, %i.dqr
  %i.drr = sdiv i32 %.reass7392.us.us, %i.dqr     ; 2 uses
  %.not2141.us.us = icmp eq i32 %i.drq, 0
  %.not2142.us.us = icmp slt i32 %i.drr, %i.bps
  %or.cond8983 = select i1 %.not2141.us.us, i1 %.not2142.us.us, i1 false
  br i1 %or.cond8983, label %.preheader6899.us.us, label %..loopexit6900_crit_edge.us.us

.preheader6899.us.us:                             ; preds = %bb.as
  %i.drs = mul nuw nsw i64 %indvars.iv8303, %i.drg ; 2 uses
  %i.drt = sext i32 %i.drr to i64                 ; 2 uses
  switch i32 %.fr8036, label %..loopexit6900_crit_edge.us.us [
    i32 4, label %.lr.ph.split.us.us.us7426
    i32 1, label %.lr.ph.split.us7358.us.us
  ]

.lr.ph.split.us7358.us.us:                        ; preds = %.preheader6899.us.us, %bb.au
  %indvars.iv8293 = phi i64 [ %indvars.iv.next8294, %bb.au ], [ 0, %.preheader6899.us.us ] ; 3 uses
  %.1566697347.us7360.us.us = phi <4 x float> [ %.166670.us7370.us.us, %bb.au ], [ %.1466687383.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1566877346.us7361.us.us = phi <4 x float> [ %.166688.us7369.us.us, %bb.au ], [ %.1466867382.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1567057345.us7362.us.us = phi <4 x float> [ %.166706.us7368.us.us, %bb.au ], [ %.1467047381.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1667297344.us7363.us.us = phi <4 x float> [ %.176730.us7367.us.us, %bb.au ], [ %.1567287380.us.us, %.preheader6899.us.us ] ; 3 uses
  %i.dru = trunc i64 %indvars.iv8293 to i32
  %i.drv = mul i32 %i.dre, %i.dru
  %.reass.us7364.us.us = add i32 %i.drv, %invariant.op7353 ; 3 uses
  %i.drw = icmp slt i32 %.reass.us7364.us.us, 0
  br i1 %i.drw, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph.split.us7358.us.us
  %i.drx = srem i32 %.reass.us7364.us.us, %i.dqv
  %i.dry = sdiv i32 %.reass.us7364.us.us, %i.dqv  ; 2 uses
  %.not2143.us7365.us.us = icmp eq i32 %i.drx, 0
  %.not2144.us7366.us.us = icmp slt i32 %i.dry, %i.bpr
  %or.cond8984 = select i1 %.not2143.us7365.us.us, i1 %.not2144.us7366.us.us, i1 false
  br i1 %or.cond8984, label %_ZN4ncnn3MatD2Ev.exit2244.us.us.us, label %bb.au

_ZN4ncnn3MatD2Ev.exit2244.us.us.us:               ; preds = %bb.at
  %i.drz = add nuw nsw i64 %i.drs, %indvars.iv8293
  %i.dsa = shl i64 %i.drz, 4
  %i.dsb = and i64 %i.dsa, 4294967280
  %i.dsc = getelementptr inbounds nuw [2 x i8], ptr %.219637411.us, i64 %i.dsb ; 4 uses
  %i.dsd = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !242
  %i.dse = load ptr, ptr %0, align 8, !tbaa !19, !noalias !242 ; 4 uses
  %i.dsf = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !242 ; 4 uses
  %i.dsg = mul i64 %i.dsf, %indvars.iv8308
  %i.dsh = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !242 ; 5 uses
  %i.dsi = mul i64 %i.dsg, %i.dsh
  %i.dsj = getelementptr inbounds nuw i8, ptr %i.dse, i64 %i.dsi
  %i.dsk = sext i32 %i.dsd to i64
  %i.dsl = mul nsw i64 %i.dsk, %i.drt
  %i.dsm = mul i64 %i.dsl, %i.dsh                 ; 4 uses
  %i.dsn = getelementptr inbounds nuw i8, ptr %i.dsj, i64 %i.dsm
  %i.dso = sext i32 %i.dry to i64                 ; 4 uses
  %i.dsp = getelementptr inbounds [2 x i8], ptr %i.dsn, i64 %i.dso
  %i.dsq = load i16, ptr %i.dsp, align 2, !tbaa !28
  %i.dsr = zext i16 %i.dsq to i32
  %i.dss = shl nuw i32 %i.dsr, 16
  %i.dst = insertelement <4 x i32> poison, i32 %i.dss, i64 0
  %i.dsu = bitcast <4 x i32> %i.dst to <4 x float>
  %i.dsv = shufflevector <4 x float> %i.dsu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dsw = mul i64 %i.dsf, %i.drk
  %i.dsx = mul i64 %i.dsw, %i.dsh
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.dse, i64 %i.dsx
  %i.dsz = getelementptr inbounds nuw i8, ptr %i.dsy, i64 %i.dsm
  %i.dta = getelementptr inbounds [2 x i8], ptr %i.dsz, i64 %i.dso
  %i.dtb = load i16, ptr %i.dta, align 2, !tbaa !28
  %i.dtc = zext i16 %i.dtb to i32
  %i.dtd = shl nuw i32 %i.dtc, 16
  %i.dte = insertelement <4 x i32> poison, i32 %i.dtd, i64 0
  %i.dtf = bitcast <4 x i32> %i.dte to <4 x float>
  %i.dtg = shufflevector <4 x float> %i.dtf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dth = mul i64 %i.dsf, %i.drl
  %i.dti = mul i64 %i.dth, %i.dsh
  %i.dtj = getelementptr inbounds nuw i8, ptr %i.dse, i64 %i.dti
  %i.dtk = getelementptr inbounds nuw i8, ptr %i.dtj, i64 %i.dsm
  %i.dtl = getelementptr inbounds [2 x i8], ptr %i.dtk, i64 %i.dso
  %i.dtm = load i16, ptr %i.dtl, align 2, !tbaa !28
  %i.dtn = zext i16 %i.dtm to i32
  %i.dto = shl nuw i32 %i.dtn, 16
  %i.dtp = insertelement <4 x i32> poison, i32 %i.dto, i64 0
  %i.dtq = bitcast <4 x i32> %i.dtp to <4 x float>
  %i.dtr = shufflevector <4 x float> %i.dtq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dts = mul i64 %i.dsf, %i.drj
  %i.dtt = mul i64 %i.dts, %i.dsh
  %i.dtu = getelementptr inbounds nuw i8, ptr %i.dse, i64 %i.dtt
  %i.dtv = getelementptr inbounds nuw i8, ptr %i.dtu, i64 %i.dsm
  %i.dtw = getelementptr inbounds [2 x i8], ptr %i.dtv, i64 %i.dso
  %i.dtx = load i16, ptr %i.dtw, align 2, !tbaa !28
  %i.dty = zext i16 %i.dtx to i32
  %i.dtz = shl nuw i32 %i.dty, 16
  %i.dua = insertelement <4 x i32> poison, i32 %i.dtz, i64 0
  %i.dub = bitcast <4 x i32> %i.dua to <4 x float>
  %i.duc = shufflevector <4 x float> %i.dub, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dud = load i64, ptr %i.dsc, align 1, !tbaa !26
  %i.due = insertelement <2 x i64> poison, i64 %i.dud, i64 0
  %i.duf = bitcast <2 x i64> %i.due to <8 x i16>
  %i.dug = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.duf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duh = bitcast <8 x i16> %i.dug to <4 x float>
  %i.dui = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dsv, <4 x float> nofpclass(nan inf) %i.duh, <4 x float> nofpclass(nan inf) %.1667297344.us7363.us.us)
  %i.duj = getelementptr inbounds nuw i8, ptr %i.dsc, i64 8
  %i.duk = load i64, ptr %i.duj, align 1, !tbaa !26
  %i.dul = insertelement <2 x i64> poison, i64 %i.duk, i64 0
  %i.dum = bitcast <2 x i64> %i.dul to <8 x i16>
  %i.dun = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dum, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duo = bitcast <8 x i16> %i.dun to <4 x float>
  %i.dup = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dtg, <4 x float> nofpclass(nan inf) %i.duo, <4 x float> nofpclass(nan inf) %.1567057345.us7362.us.us)
  %i.duq = getelementptr inbounds nuw i8, ptr %i.dsc, i64 16
  %i.dur = load i64, ptr %i.duq, align 1, !tbaa !26
  %i.dus = insertelement <2 x i64> poison, i64 %i.dur, i64 0
  %i.dut = bitcast <2 x i64> %i.dus to <8 x i16>
  %i.duu = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dut, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.duv = bitcast <8 x i16> %i.duu to <4 x float>
  %i.duw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dtr, <4 x float> nofpclass(nan inf) %i.duv, <4 x float> nofpclass(nan inf) %.1566877346.us7361.us.us)
  %i.dux = getelementptr inbounds nuw i8, ptr %i.dsc, i64 24
  %i.duy = load i64, ptr %i.dux, align 1, !tbaa !26
  %i.duz = insertelement <2 x i64> poison, i64 %i.duy, i64 0
  %i.dva = bitcast <2 x i64> %i.duz to <8 x i16>
  %i.dvb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dva, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dvc = bitcast <8 x i16> %i.dvb to <4 x float>
  %i.dvd = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.duc, <4 x float> nofpclass(nan inf) %i.dvc, <4 x float> nofpclass(nan inf) %.1566697347.us7360.us.us)
  br label %bb.au

bb.au:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2244.us.us.us, %bb.at, %.lr.ph.split.us7358.us.us
  %.176730.us7367.us.us = phi nsz <4 x float> [ %.1667297344.us7363.us.us, %.lr.ph.split.us7358.us.us ], [ %i.dui, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1667297344.us7363.us.us, %bb.at ] ; 2 uses
  %.166706.us7368.us.us = phi nsz <4 x float> [ %.1567057345.us7362.us.us, %.lr.ph.split.us7358.us.us ], [ %i.dup, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1567057345.us7362.us.us, %bb.at ] ; 2 uses
  %.166688.us7369.us.us = phi nsz <4 x float> [ %.1566877346.us7361.us.us, %.lr.ph.split.us7358.us.us ], [ %i.duw, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1566877346.us7361.us.us, %bb.at ] ; 2 uses
  %.166670.us7370.us.us = phi nsz <4 x float> [ %.1566697347.us7360.us.us, %.lr.ph.split.us7358.us.us ], [ %i.dvd, %_ZN4ncnn3MatD2Ev.exit2244.us.us.us ], [ %.1566697347.us7360.us.us, %bb.at ] ; 2 uses
  %indvars.iv.next8294 = add nuw nsw i64 %indvars.iv8293, 1 ; 2 uses
  %exitcond8297.not = icmp eq i64 %indvars.iv.next8294, %i.drg
  br i1 %exitcond8297.not, label %..loopexit6900_crit_edge.us.us, label %.lr.ph.split.us7358.us.us, !llvm.loop !113

.lr.ph.split.us.us.us7426:                        ; preds = %.preheader6899.us.us, %bb.aw
  %indvars.iv8298 = phi i64 [ %indvars.iv.next8299, %bb.aw ], [ 0, %.preheader6899.us.us ] ; 3 uses
  %.1566697347.us.us.us = phi <4 x float> [ %.166670.us.us.us, %bb.aw ], [ %.1466687383.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1566877346.us.us.us = phi <4 x float> [ %.166688.us.us.us, %bb.aw ], [ %.1466867382.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1567057345.us.us.us = phi <4 x float> [ %.166706.us.us.us, %bb.aw ], [ %.1467047381.us.us, %.preheader6899.us.us ] ; 3 uses
  %.1667297344.us.us.us = phi <4 x float> [ %.176730.us.us.us, %bb.aw ], [ %.1567287380.us.us, %.preheader6899.us.us ] ; 3 uses
  %i.dve = trunc i64 %indvars.iv8298 to i32
  %i.dvf = mul i32 %i.dre, %i.dve
  %.reass.us.us7393.us = add i32 %i.dvf, %invariant.op7353 ; 3 uses
  %i.dvg = icmp slt i32 %.reass.us.us7393.us, 0
  br i1 %i.dvg, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph.split.us.us.us7426
  %i.dvh = srem i32 %.reass.us.us7393.us, %i.dqv
  %i.dvi = sdiv i32 %.reass.us.us7393.us, %i.dqv  ; 2 uses
  %.not2143.us.us.us = icmp eq i32 %i.dvh, 0
  %.not2144.us.us.us = icmp slt i32 %i.dvi, %i.bpr
  %or.cond8985 = select i1 %.not2143.us.us.us, i1 %.not2144.us.us.us, i1 false
  br i1 %or.cond8985, label %_ZN4ncnn3MatD2Ev.exit2245.us.us.us, label %bb.aw

_ZN4ncnn3MatD2Ev.exit2245.us.us.us:               ; preds = %bb.av
  %i.dvj = add nuw nsw i64 %i.drs, %indvars.iv8298
  %i.dvk = shl i64 %i.dvj, 4
  %i.dvl = and i64 %i.dvk, 4294967280
  %i.dvm = getelementptr inbounds nuw [2 x i8], ptr %.219637411.us, i64 %i.dvl ; 4 uses
  %i.dvn = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !243
  %i.dvo = load ptr, ptr %0, align 8, !tbaa !19, !noalias !243
  %i.dvp = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !243
  %i.dvq = mul i64 %i.dvp, %i.drm
  %i.dvr = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !243 ; 2 uses
  %i.dvs = mul i64 %i.dvq, %i.dvr
  %i.dvt = getelementptr inbounds nuw i8, ptr %i.dvo, i64 %i.dvs
  %i.dvu = sext i32 %i.dvn to i64
  %i.dvv = mul nsw i64 %i.dvu, %i.drt
  %i.dvw = mul i64 %i.dvv, %i.dvr
  %i.dvx = getelementptr inbounds nuw i8, ptr %i.dvt, i64 %i.dvw
  %i.dvy = shl nsw i32 %i.dvi, 2
  %i.dvz = sext i32 %i.dvy to i64
  %i.dwa = getelementptr inbounds [2 x i8], ptr %i.dvx, i64 %i.dvz ; 4 uses
  %i.dwb = load i16, ptr %i.dwa, align 2, !tbaa !28
  %i.dwc = zext i16 %i.dwb to i32
  %i.dwd = shl nuw i32 %i.dwc, 16
  %i.dwe = insertelement <4 x i32> poison, i32 %i.dwd, i64 0
  %i.dwf = bitcast <4 x i32> %i.dwe to <4 x float>
  %i.dwg = shufflevector <4 x float> %i.dwf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwh = getelementptr inbounds nuw i8, ptr %i.dwa, i64 2
  %i.dwi = load i16, ptr %i.dwh, align 2, !tbaa !28
  %i.dwj = zext i16 %i.dwi to i32
  %i.dwk = shl nuw i32 %i.dwj, 16
  %i.dwl = insertelement <4 x i32> poison, i32 %i.dwk, i64 0
  %i.dwm = bitcast <4 x i32> %i.dwl to <4 x float>
  %i.dwn = shufflevector <4 x float> %i.dwm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwo = getelementptr inbounds nuw i8, ptr %i.dwa, i64 4
  %i.dwp = load i16, ptr %i.dwo, align 2, !tbaa !28
  %i.dwq = zext i16 %i.dwp to i32
  %i.dwr = shl nuw i32 %i.dwq, 16
  %i.dws = insertelement <4 x i32> poison, i32 %i.dwr, i64 0
  %i.dwt = bitcast <4 x i32> %i.dws to <4 x float>
  %i.dwu = shufflevector <4 x float> %i.dwt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dwv = getelementptr inbounds nuw i8, ptr %i.dwa, i64 6
  %i.dww = load i16, ptr %i.dwv, align 2, !tbaa !28
  %i.dwx = zext i16 %i.dww to i32
  %i.dwy = shl nuw i32 %i.dwx, 16
  %i.dwz = insertelement <4 x i32> poison, i32 %i.dwy, i64 0
  %i.dxa = bitcast <4 x i32> %i.dwz to <4 x float>
  %i.dxb = shufflevector <4 x float> %i.dxa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dxc = load i64, ptr %i.dvm, align 1, !tbaa !26
  %i.dxd = insertelement <2 x i64> poison, i64 %i.dxc, i64 0
  %i.dxe = bitcast <2 x i64> %i.dxd to <8 x i16>
  %i.dxf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxe, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxg = bitcast <8 x i16> %i.dxf to <4 x float>
  %i.dxh = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwg, <4 x float> nofpclass(nan inf) %i.dxg, <4 x float> nofpclass(nan inf) %.1667297344.us.us.us)
  %i.dxi = getelementptr inbounds nuw i8, ptr %i.dvm, i64 8
  %i.dxj = load i64, ptr %i.dxi, align 1, !tbaa !26
  %i.dxk = insertelement <2 x i64> poison, i64 %i.dxj, i64 0
  %i.dxl = bitcast <2 x i64> %i.dxk to <8 x i16>
  %i.dxm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxn = bitcast <8 x i16> %i.dxm to <4 x float>
  %i.dxo = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwn, <4 x float> nofpclass(nan inf) %i.dxn, <4 x float> nofpclass(nan inf) %.1567057345.us.us.us)
  %i.dxp = getelementptr inbounds nuw i8, ptr %i.dvm, i64 16
  %i.dxq = load i64, ptr %i.dxp, align 1, !tbaa !26
  %i.dxr = insertelement <2 x i64> poison, i64 %i.dxq, i64 0
  %i.dxs = bitcast <2 x i64> %i.dxr to <8 x i16>
  %i.dxt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dxu = bitcast <8 x i16> %i.dxt to <4 x float>
  %i.dxv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dwu, <4 x float> nofpclass(nan inf) %i.dxu, <4 x float> nofpclass(nan inf) %.1566877346.us.us.us)
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dvm, i64 24
  %i.dxx = load i64, ptr %i.dxw, align 1, !tbaa !26
  %i.dxy = insertelement <2 x i64> poison, i64 %i.dxx, i64 0
  %i.dxz = bitcast <2 x i64> %i.dxy to <8 x i16>
  %i.dya = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dxz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dyb = bitcast <8 x i16> %i.dya to <4 x float>
  %i.dyc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.dxb, <4 x float> nofpclass(nan inf) %i.dyb, <4 x float> nofpclass(nan inf) %.1566697347.us.us.us)
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2245.us.us.us, %bb.av, %.lr.ph.split.us.us.us7426
  %.176730.us.us.us = phi nsz <4 x float> [ %.1667297344.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1667297344.us.us.us, %bb.av ], [ %i.dxh, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %.166706.us.us.us = phi nsz <4 x float> [ %.1567057345.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1567057345.us.us.us, %bb.av ], [ %i.dxo, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %.166688.us.us.us = phi nsz <4 x float> [ %.1566877346.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1566877346.us.us.us, %bb.av ], [ %i.dxv, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %.166670.us.us.us = phi nsz <4 x float> [ %.1566697347.us.us.us, %.lr.ph.split.us.us.us7426 ], [ %.1566697347.us.us.us, %bb.av ], [ %i.dyc, %_ZN4ncnn3MatD2Ev.exit2245.us.us.us ] ; 2 uses
  %indvars.iv.next8299 = add nuw nsw i64 %indvars.iv8298, 1 ; 2 uses
  %exitcond8302.not = icmp eq i64 %indvars.iv.next8299, %i.drg
  br i1 %exitcond8302.not, label %..loopexit6900_crit_edge.us.us, label %.lr.ph.split.us.us.us7426, !llvm.loop !113

..loopexit6900_crit_edge.us.us:                   ; preds = %bb.au, %bb.aw, %.preheader6899.us.us, %bb.as, %.lr.ph7385.split.us.us
  %.186731.us.us = phi nsz <4 x float> [ %.1567287380.us.us, %.lr.ph7385.split.us.us ], [ %.1567287380.us.us, %bb.as ], [ %.176730.us.us.us, %bb.aw ], [ %.1567287380.us.us, %.preheader6899.us.us ], [ %.176730.us7367.us.us, %bb.au ] ; 2 uses
  %.176707.us.us = phi nsz <4 x float> [ %.1467047381.us.us, %.lr.ph7385.split.us.us ], [ %.1467047381.us.us, %bb.as ], [ %.166706.us.us.us, %bb.aw ], [ %.1467047381.us.us, %.preheader6899.us.us ], [ %.166706.us7368.us.us, %bb.au ] ; 2 uses
  %.176689.us.us = phi nsz <4 x float> [ %.1466867382.us.us, %.lr.ph7385.split.us.us ], [ %.1466867382.us.us, %bb.as ], [ %.166688.us.us.us, %bb.aw ], [ %.1466867382.us.us, %.preheader6899.us.us ], [ %.166688.us7369.us.us, %bb.au ] ; 2 uses
  %.176671.us.us = phi nsz <4 x float> [ %.1466687383.us.us, %.lr.ph7385.split.us.us ], [ %.1466687383.us.us, %bb.as ], [ %.166670.us.us.us, %bb.aw ], [ %.1466687383.us.us, %.preheader6899.us.us ], [ %.166670.us7370.us.us, %bb.au ] ; 2 uses
  %indvars.iv.next8304 = add nuw nsw i64 %indvars.iv8303, 1 ; 2 uses
  %exitcond8307.not = icmp eq i64 %indvars.iv.next8304, %wide.trip.count8306
  br i1 %exitcond8307.not, label %._crit_edge7386.us, label %.lr.ph7385.split.us.us, !llvm.loop !116

._crit_edge7386.us:                               ; preds = %..loopexit6900_crit_edge.us.us, %.preheader6907.us
  %.us-phi7401.us = phi <4 x float> [ %.1467277406.us, %.preheader6907.us ], [ %.186731.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %.us-phi7402.us = phi <4 x float> [ %.1367037407.us, %.preheader6907.us ], [ %.176707.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %.us-phi7403.us = phi <4 x float> [ %.1366857408.us, %.preheader6907.us ], [ %.176689.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %.us-phi7404.us = phi <4 x float> [ %.1366677409.us, %.preheader6907.us ], [ %.176671.us.us, %..loopexit6900_crit_edge.us.us ] ; 2 uses
  %i.dyd = getelementptr inbounds [2 x i8], ptr %.219637411.us, i64 %i.bru ; 2 uses
  %indvars.iv.next8309 = add nuw nsw i64 %indvars.iv8308, 4 ; 3 uses
  %i.dye = or disjoint i64 %indvars.iv.next8309, 3 ; 2 uses
  %i.dyf = trunc nuw i64 %i.dye to i32
  %i.dyg = icmp sgt i32 %i.bpq, %i.dyf
  br i1 %i.dyg, label %.preheader6907.us, label %.preheader6911.loopexit, !llvm.loop !117

.preheader6911.loopexit:                          ; preds = %._crit_edge7386.us
  %i.dyh = trunc nuw i64 %indvars.iv.next8309 to i32
  br label %.preheader6911

.preheader6911:                                   ; preds = %.preheader6907.preheader, %.preheader6911.loopexit, %.preheader6912
  %.146727.lcssa = phi <4 x float> [ %.96722.lcssa, %.preheader6912 ], [ %.us-phi7401.us, %.preheader6911.loopexit ], [ %.96722.lcssa, %.preheader6907.preheader ] ; 4 uses
  %.136703.lcssa = phi <4 x float> [ %.86698.lcssa, %.preheader6912 ], [ %.us-phi7402.us, %.preheader6911.loopexit ], [ %.86698.lcssa, %.preheader6907.preheader ] ; 4 uses
  %.136685.lcssa = phi <4 x float> [ %.86680.lcssa, %.preheader6912 ], [ %.us-phi7403.us, %.preheader6911.loopexit ], [ %.86680.lcssa, %.preheader6907.preheader ]
  %.136667.lcssa = phi <4 x float> [ %.86662.lcssa, %.preheader6912 ], [ %.us-phi7404.us, %.preheader6911.loopexit ], [ %.86662.lcssa, %.preheader6907.preheader ]
  %.21968.lcssa = phi i32 [ %.11967.lcssa, %.preheader6912 ], [ %i.dyh, %.preheader6911.loopexit ], [ %i.drd, %.preheader6907.preheader ] ; 7 uses
  %.21963.lcssa = phi ptr [ %.11962.lcssa, %.preheader6912 ], [ %i.dyd, %.preheader6911.loopexit ], [ %scevgep8292, %.preheader6907.preheader ] ; 4 uses
  %i.dyi = or disjoint i32 %.21968.lcssa, 1       ; 2 uses
  %i.dyj = icmp slt i32 %i.dyi, %i.bpq
  br i1 %i.dyj, label %.preheader6906.lr.ph, label %.preheader6910

.preheader6906.lr.ph:                             ; preds = %.preheader6911
  %i.dyk = load i32, ptr %i.d, align 4
  %i.dyl = load i32, ptr %i.j, align 4
  %invariant.op7446 = sub i32 %.neg6838, %i.dyl
  %i.dym = load i32, ptr %i.f, align 4            ; 2 uses
  %i.dyn = load i32, ptr %i.a, align 4
  %.fr8040 = freeze i32 %i.dyn                    ; 2 uses
  %i.dyo = load i32, ptr %i.c, align 4
  %i.dyp = load i32, ptr %i.i, align 4
  %.neg6828 = add nuw nsw i32 %.019607505, 1
  %invariant.op7438 = sub i32 %.neg6828, %i.dyp
  %i.dyq = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.brn, label %.preheader6906.lr.ph.split.us, label %.preheader6906.preheader

.preheader6906.preheader:                         ; preds = %.preheader6906.lr.ph
  %i.dyr = sub i32 %i.brl, %.21968.lcssa          ; 2 uses
  %i.dys = and i32 %i.dyr, -2
  %i.dyt = zext i32 %i.dys to i64
  %i.dyu = add nuw nsw i64 %i.dyt, 2
  %i.dyv = mul nsw i64 %i.dyu, %i.brw
  %scevgep8311 = getelementptr i8, ptr %.21963.lcssa, i64 %i.dyv
  %i.dyw = add nsw i32 %.21968.lcssa, 2
  %i.dyx = and i32 %i.dyr, -2
  %i.dyy = add i32 %i.dyw, %i.dyx
  br label %.preheader6910

.preheader6906.lr.ph.split.us:                    ; preds = %.preheader6906.lr.ph
  %i.dyz = icmp sgt i32 %.fr8040, 0
  br i1 %i.dyz, label %.preheader6906.us.us.preheader, label %.preheader6906.us.preheader

.preheader6906.us.preheader:                      ; preds = %.preheader6906.lr.ph.split.us
  %i.dza = sub i32 %i.brl, %.21968.lcssa          ; 2 uses
  %i.dzb = and i32 %i.dza, -2
  %i.dzc = zext i32 %i.dzb to i64
  %i.dzd = add nuw nsw i64 %i.dzc, 2
  %i.dze = mul nsw i64 %i.dzd, %i.brw
  %scevgep8312 = getelementptr i8, ptr %.21963.lcssa, i64 %i.dze
  %i.dzf = add nsw i32 %.21968.lcssa, 2
  %i.dzg = and i32 %i.dza, -2
  %i.dzh = add i32 %i.dzf, %i.dzg
  br label %.preheader6910

.preheader6906.us.us.preheader:                   ; preds = %.preheader6906.lr.ph.split.us
  %i.dzi = zext nneg i32 %.fr8040 to i64          ; 2 uses
  %i.dzj = zext i32 %.21968.lcssa to i64
  %i.dzk = zext nneg i32 %i.dyi to i64
  br label %.preheader6906.us.us

.preheader6906.us.us:                             ; preds = %.preheader6906.us.us.preheader, %._crit_edge7443.split.us.us.us
  %indvars.iv8323 = phi i64 [ %i.dzj, %.preheader6906.us.us.preheader ], [ %indvars.iv.next8324, %._crit_edge7443.split.us.us.us ] ; 2 uses
  %i.dzl = phi i64 [ %i.dzk, %.preheader6906.us.us.preheader ], [ %i.ebu, %._crit_edge7443.split.us.us.us ]
  %.319647454.us.us = phi ptr [ %.21963.lcssa, %.preheader6906.us.us.preheader ], [ %i.ebt, %._crit_edge7443.split.us.us.us ] ; 2 uses
  %.1867087452.us.us = phi <4 x float> [ %.136703.lcssa, %.preheader6906.us.us.preheader ], [ %.226712.us.us.us, %._crit_edge7443.split.us.us.us ]
  %.1967327451.us.us = phi <4 x float> [ %.146727.lcssa, %.preheader6906.us.us.preheader ], [ %.236736.us.us.us, %._crit_edge7443.split.us.us.us ]
  br label %bb.ax

bb.ax:                                            ; preds = %..loopexit6898_crit_edge.us.us.us, %.preheader6906.us.us
  %indvars.iv8318 = phi i64 [ %indvars.iv.next8319, %..loopexit6898_crit_edge.us.us.us ], [ 0, %.preheader6906.us.us ] ; 3 uses
  %.1967097440.us.us.us = phi <4 x float> [ %.226712.us.us.us, %..loopexit6898_crit_edge.us.us.us ], [ %.1867087452.us.us, %.preheader6906.us.us ] ; 3 uses
  %.2067337439.us.us.us = phi <4 x float> [ %.236736.us.us.us, %..loopexit6898_crit_edge.us.us.us ], [ %.1967327451.us.us, %.preheader6906.us.us ] ; 3 uses
  %i.dzm = trunc i64 %indvars.iv8318 to i32
  %i.dzn = mul i32 %i.dyk, %i.dzm
  %.reass7447.us.us.us = add i32 %i.dzn, %invariant.op7446 ; 3 uses
  %i.dzo = icmp slt i32 %.reass7447.us.us.us, 0
  br i1 %i.dzo, label %..loopexit6898_crit_edge.us.us.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dzp = srem i32 %.reass7447.us.us.us, %i.dym
  %i.dzq = sdiv i32 %.reass7447.us.us.us, %i.dym  ; 2 uses
  %.not2137.us.us.us = icmp eq i32 %i.dzp, 0
  %.not2138.us.us.us = icmp slt i32 %i.dzq, %i.bps
  %or.cond8986 = select i1 %.not2137.us.us.us, i1 %.not2138.us.us.us, i1 false
  br i1 %or.cond8986, label %.preheader6897.us.us.us, label %..loopexit6898_crit_edge.us.us.us

.preheader6897.us.us.us:                          ; preds = %bb.ay
  %i.dzr = mul nuw nsw i64 %indvars.iv8318, %i.dzi
  %i.dzs = sext i32 %i.dzq to i64
  br label %bb.az

bb.az:                                            ; preds = %bb.bb, %.preheader6897.us.us.us
  %indvars.iv8313 = phi i64 [ %indvars.iv.next8314, %bb.bb ], [ 0, %.preheader6897.us.us.us ] ; 3 uses
  %.2067107434.us.us.us = phi <4 x float> [ %.216711.us.us.us, %bb.bb ], [ %.1967097440.us.us.us, %.preheader6897.us.us.us ] ; 3 uses
  %.2167347433.us.us.us = phi <4 x float> [ %.226735.us.us.us, %bb.bb ], [ %.2067337439.us.us.us, %.preheader6897.us.us.us ] ; 3 uses
  %i.dzt = trunc i64 %indvars.iv8313 to i32
  %i.dzu = mul i32 %i.dyo, %i.dzt
  %.reass.us.us7467.us = add i32 %i.dzu, %invariant.op7438 ; 3 uses
  %i.dzv = icmp slt i32 %.reass.us.us7467.us, 0
  br i1 %i.dzv, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dzw = srem i32 %.reass.us.us7467.us, %i.dyq
  %i.dzx = sdiv i32 %.reass.us.us7467.us, %i.dyq  ; 2 uses
  %.not2139.us.us.us = icmp eq i32 %i.dzw, 0
  %.not2140.us.us.us = icmp slt i32 %i.dzx, %i.bpr
  %or.cond8987 = select i1 %.not2139.us.us.us, i1 %.not2140.us.us.us, i1 false
  br i1 %or.cond8987, label %_ZN4ncnn3MatD2Ev.exit2240.us.us.us, label %bb.bb

_ZN4ncnn3MatD2Ev.exit2240.us.us.us:               ; preds = %bb.ba
  %i.dzy = add nuw nsw i64 %i.dzr, %indvars.iv8313
  %i.dzz = shl i64 %i.dzy, 3
  %i.eaa = and i64 %i.dzz, 4294967288
  %i.eab = getelementptr inbounds nuw [2 x i8], ptr %.319647454.us.us, i64 %i.eaa ; 2 uses
  %i.eac = load i32, ptr %i.bg, align 4, !tbaa !22, !noalias !244
  %i.ead = load ptr, ptr %0, align 8, !tbaa !19, !noalias !244 ; 2 uses
  %i.eae = load i64, ptr %i.bn, align 8, !tbaa !17, !noalias !244 ; 2 uses
  %i.eaf = mul i64 %i.eae, %indvars.iv8323
  %i.eag = load i64, ptr %i.bo, align 8, !tbaa !24, !noalias !244 ; 3 uses
  %i.eah = mul i64 %i.eaf, %i.eag
  %i.eai = getelementptr inbounds nuw i8, ptr %i.ead, i64 %i.eah
  %i.eaj = sext i32 %i.eac to i64
  %i.eak = mul nsw i64 %i.eaj, %i.dzs
  %i.eal = mul i64 %i.eak, %i.eag                 ; 2 uses
  %i.eam = getelementptr inbounds nuw i8, ptr %i.eai, i64 %i.eal
  %i.ean = sext i32 %i.dzx to i64                 ; 2 uses
  %i.eao = getelementptr inbounds [2 x i8], ptr %i.eam, i64 %i.ean
  %i.eap = mul i64 %i.eae, %i.dzl
  %i.eaq = mul i64 %i.eap, %i.eag
  %i.ear = getelementptr inbounds nuw i8, ptr %i.ead, i64 %i.eaq
  %i.eas = getelementptr inbounds nuw i8, ptr %i.ear, i64 %i.eal
  %i.eat = getelementptr inbounds [2 x i8], ptr %i.eas, i64 %i.ean
  %i.eau = load i16, ptr %i.eao, align 2, !tbaa !28
  %i.eav = zext i16 %i.eau to i32
  %i.eaw = shl nuw i32 %i.eav, 16
  %i.eax = insertelement <4 x i32> poison, i32 %i.eaw, i64 0
  %i.eay = bitcast <4 x i32> %i.eax to <4 x float>
  %i.eaz = shufflevector <4 x float> %i.eay, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eba = load i16, ptr %i.eat, align 2, !tbaa !28
  %i.ebb = zext i16 %i.eba to i32
  %i.ebc = shl nuw i32 %i.ebb, 16
  %i.ebd = insertelement <4 x i32> poison, i32 %i.ebc, i64 0
  %i.ebe = bitcast <4 x i32> %i.ebd to <4 x float>
  %i.ebf = shufflevector <4 x float> %i.ebe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ebg = load i64, ptr %i.eab, align 1, !tbaa !26
  %i.ebh = insertelement <2 x i64> poison, i64 %i.ebg, i64 0
  %i.ebi = bitcast <2 x i64> %i.ebh to <8 x i16>
  %i.ebj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebk = bitcast <8 x i16> %i.ebj to <4 x float>
  %i.ebl = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.eaz, <4 x float> nofpclass(nan inf) %i.ebk, <4 x float> nofpclass(nan inf) %.2167347433.us.us.us)
  %i.ebm = getelementptr inbounds nuw i8, ptr %i.eab, i64 8
  %i.ebn = load i64, ptr %i.ebm, align 1, !tbaa !26
  %i.ebo = insertelement <2 x i64> poison, i64 %i.ebn, i64 0
  %i.ebp = bitcast <2 x i64> %i.ebo to <8 x i16>
  %i.ebq = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ebp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ebr = bitcast <8 x i16> %i.ebq to <4 x float>
  %i.ebs = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ebf, <4 x float> nofpclass(nan inf) %i.ebr, <4 x float> nofpclass(nan inf) %.2067107434.us.us.us)
  br label %bb.bb

bb.bb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2240.us.us.us, %bb.ba, %bb.az
  %.226735.us.us.us = phi nsz <4 x float> [ %.2167347433.us.us.us, %bb.az ], [ %i.ebl, %_ZN4ncnn3MatD2Ev.exit2240.us.us.us ], [ %.2167347433.us.us.us, %bb.ba ] ; 2 uses
  %.216711.us.us.us = phi nsz <4 x float> [ %.2067107434.us.us.us, %bb.az ], [ %i.ebs, %_ZN4ncnn3MatD2Ev.exit2240.us.us.us ], [ %.2067107434.us.us.us, %bb.ba ] ; 2 uses
  %indvars.iv.next8314 = add nuw nsw i64 %indvars.iv8313, 1 ; 2 uses
  %exitcond8317.not = icmp eq i64 %indvars.iv.next8314, %i.dzi
  br i1 %exitcond8317.not, label %..loopexit6898_crit_edge.us.us.us, label %bb.az, !llvm.loop !120

..loopexit6898_crit_edge.us.us.us:                ; preds = %bb.bb, %bb.ay, %bb.ax
  %.236736.us.us.us = phi nsz <4 x float> [ %.2067337439.us.us.us, %bb.ax ], [ %.2067337439.us.us.us, %bb.ay ], [ %.226735.us.us.us, %bb.bb ] ; 3 uses
  %.226712.us.us.us = phi nsz <4 x float> [ %.1967097440.us.us.us, %bb.ax ], [ %.1967097440.us.us.us, %bb.ay ], [ %.216711.us.us.us, %bb.bb ] ; 3 uses
  %indvars.iv.next8319 = add nuw nsw i64 %indvars.iv8318, 1 ; 2 uses
  %exitcond8322.not = icmp eq i64 %indvars.iv.next8319, %wide.trip.count8321
  br i1 %exitcond8322.not, label %._crit_edge7443.split.us.us.us, label %bb.ax, !llvm.loop !121

._crit_edge7443.split.us.us.us:                   ; preds = %..loopexit6898_crit_edge.us.us.us
  %i.ebt = getelementptr inbounds [2 x i8], ptr %.319647454.us.us, i64 %i.brw ; 2 uses
  %indvars.iv.next8324 = add nuw nsw i64 %indvars.iv8323, 2 ; 3 uses
  %i.ebu = or disjoint i64 %indvars.iv.next8324, 1 ; 2 uses
  %i.ebv = trunc nuw i64 %i.ebu to i32
  %i.ebw = icmp sgt i32 %i.bpq, %i.ebv
  br i1 %i.ebw, label %.preheader6906.us.us, label %.preheader6910.loopexit, !llvm.loop !122

.preheader6910.loopexit:                          ; preds = %._crit_edge7443.split.us.us.us
  %i.ebx = trunc nuw i64 %indvars.iv.next8324 to i32
  br label %.preheader6910

.preheader6910:                                   ; preds = %.preheader6906.preheader, %.preheader6906.us.preheader, %.preheader6910.loopexit, %.preheader6911
  %.196732.lcssa = phi <4 x float> [ %.146727.lcssa, %.preheader6911 ], [ %.236736.us.us.us, %.preheader6910.loopexit ], [ %.146727.lcssa, %.preheader6906.us.preheader ], [ %.146727.lcssa, %.preheader6906.preheader ] ; 3 uses
  %.186708.lcssa = phi <4 x float> [ %.136703.lcssa, %.preheader6911 ], [ %.226712.us.us.us, %.preheader6910.loopexit ], [ %.136703.lcssa, %.preheader6906.us.preheader ], [ %.136703.lcssa, %.preheader6906.preheader ]
  %.31969.lcssa = phi i32 [ %.21968.lcssa, %.preheader6911 ], [ %i.ebx, %.preheader6910.loopexit ], [ %i.dzh, %.preheader6906.us.preheader ], [ %i.dyy, %.preheader6906.preheader ] ; 2 uses
  %.31964.lcssa = phi ptr [ %.21963.lcssa, %.preheader6911 ], [ %i.ebt, %.preheader6910.loopexit ], [ %scevgep8312, %.preheader6906.us.preheader ], [ %scevgep8311, %.preheader6906.preheader ]
  %i.eby = icmp slt i32 %.31969.lcssa, %i.bpq
  br i1 %i.eby, label %.preheader6905.lr.ph, label %._crit_edge7493

.preheader6905.lr.ph:                             ; preds = %.preheader6910
  %i.ebz = load i32, ptr %i.d, align 4
  %i.eca = load i32, ptr %i.j, align 4
  %invariant.op7485 = sub i32 %.neg6838, %i.eca
  %i.ecb = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ecc = load i32, ptr %i.a, align 4
  %.fr8041 = freeze i32 %i.ecc                    ; 2 uses
  %i.ecd = load i32, ptr %i.c, align 4
  %i.ece = load i32, ptr %i.i, align 4
  %.neg6824 = add nuw nsw i32 %.019607505, 1
  %invariant.op7479 = sub i32 %.neg6824, %i.ece
  %i.ecf = load i32, ptr %i.e, align 4            ; 2 uses
  %i.ecg = icmp sgt i32 %.fr8041, 0
  %or.cond8880 = and i1 %i.brn, %i.ecg
  br i1 %or.cond8880, label %.preheader6905.us.us.preheader, label %._crit_edge7493

.preheader6905.us.us.preheader:                   ; preds = %.preheader6905.lr.ph
  %i.ech = zext nneg i32 %.fr8041 to i64          ; 2 uses
  %i.eci = zext i32 %.31969.lcssa to i64
  br label %.preheader6905.us.us

.preheader6905.us.us:                             ; preds = %.preheader6905.us.us.preheader, %._crit_edge7483.split.us.us.us
  %indvars.iv8336 = phi i64 [ %i.eci, %.preheader6905.us.us.preheader ], [ %indvars.iv.next8337, %._crit_edge7483.split.us.us.us ] ; 2 uses
  %.419657491.us.us = phi ptr [ %.31964.lcssa, %.preheader6905.us.us.preheader ], [ %i.edy, %._crit_edge7483.split.us.us.us ] ; 2 uses
  %.2467377489.us.us = phi <4 x float> [ %.196732.lcssa, %.preheader6905.us.us.preheader ], [ %.286741.us.us.us, %._crit_edge7483.split.us.us.us ]
  br label %bb.bc

bb.bc:                                            ; preds = %..loopexit6896_crit_edge.us.us.us, %.preheader6905.us.us
  %indvars.iv8331 = phi i64 [ %indvars.iv.next8332, %..loopexit6896_crit_edge.us.us.us ], [ 0, %.preheader6905.us.us ] ; 3 uses
  %.2567387480.us.us.us = phi <4 x float> [ %.286741.us.us.us, %..loopexit6896_crit_edge.us.us.us ], [ %.2467377489.us.us, %.preheader6905.us.us ] ; 3 uses
  %i.ecj = trunc i64 %indvars.iv8331 to i32
  %i.eck = mul i32 %i.ebz, %i.ecj
  %.reass7486.us.us.us = add i32 %i.eck, %invariant.op7485 ; 3 uses
  %i.ecl = icmp slt i32 %.reass7486.us.us.us, 0
  br i1 %i.ecl, label %..loopexit6896_crit_edge.us.us.us, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ecm = srem i32 %.reass7486.us.us.us, %i.ecb
  %i.ecn = sdiv i32 %.reass7486.us.us.us, %i.ecb  ; 2 uses
  %.not2133.us.us.us = icmp eq i32 %i.ecm, 0
  %.not2134.us.us.us = icmp slt i32 %i.ecn, %i.bps
  %or.cond8988 = select i1 %.not2133.us.us.us, i1 %.not2134.us.us.us, i1 false
  br i1 %or.cond8988, label %.preheader6895.us.us.us, label %..loopexit6896_crit_edge.us.us.us

.preheader6895.us.us.us:                          ; preds = %bb.bd
  %i.eco = mul nuw nsw i64 %indvars.iv8331, %i.ech
  %i.ecp = sext i32 %i.ecn to i64
  br label %bb.be

bb.be:                                            ; preds = %bb.bg, %.preheader6895.us.us.us
  %indvars.iv8326 = phi i64 [ %indvars.iv.next8327, %bb.bg ], [ 0, %.preheader6895.us.us.us ] ; 3 uses
  %.2667397476.us.us.us = phi <4 x float> [ %.276740.us.us.us, %bb.bg ], [ %.2567387480.us.us.us, %.preheader6895.us.us.us ] ; 3 uses
  %i.ecq = trunc i64 %indvars.iv8326 to i32
  %i.ecr = mul i32 %i.ecd, %i.ecq
  %.reass.us.us7502.us = add i32 %i.ecr, %invariant.op7479 ; 3 uses
  %i.ecs = icmp slt i32 %.reass.us.us7502.us, 0
  br i1 %i.ecs, label %bb.bg, label %bb.bf
end_hunk_3
begin_hunk_4_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.erm = shl nsw i32 %i.eph, 2
  %i.ern = sext i32 %i.erm to i64                 ; 4 uses
  %i.ero = getelementptr inbounds [2 x i8], ptr %i.erl, i64 %i.ern
  %i.erp = mul i64 %i.erg, %i.eoe
  %i.erq = mul i64 %i.erp, %i.erf
  %i.err = getelementptr inbounds nuw i8, ptr %i.erh, i64 %i.erq
  %i.ers = getelementptr inbounds nuw i8, ptr %i.err, i64 %.pre-phi8619
  %i.ert = getelementptr inbounds [2 x i8], ptr %i.ers, i64 %i.ern
  %i.eru = mul i64 %i.erg, %i.eof
  %i.erv = mul i64 %i.eru, %i.erf
  %i.erw = getelementptr inbounds nuw i8, ptr %i.erh, i64 %i.erv
  %i.erx = getelementptr inbounds nuw i8, ptr %i.erw, i64 %.pre-phi8619
  %i.ery = getelementptr inbounds [2 x i8], ptr %i.erx, i64 %i.ern
  %i.erz = mul i64 %i.erg, %i.eog
  %i.esa = mul i64 %i.erz, %i.erf
  %i.esb = getelementptr inbounds nuw i8, ptr %i.erh, i64 %i.esa
  %i.esc = getelementptr inbounds nuw i8, ptr %i.esb, i64 %.pre-phi8619
  %i.esd = getelementptr inbounds [2 x i8], ptr %i.esc, i64 %i.ern
  %i.ese = load i64, ptr %i.ero, align 1, !tbaa !26
  %i.esf = insertelement <2 x i64> poison, i64 %i.ese, i64 0
  %i.esg = bitcast <2 x i64> %i.esf to <8 x i16>
  %i.esh = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esi = bitcast <8 x i16> %i.esh to <4 x float>
  %i.esj = load i64, ptr %i.ert, align 1, !tbaa !26
  %i.esk = insertelement <2 x i64> poison, i64 %i.esj, i64 0
  %i.esl = bitcast <2 x i64> %i.esk to <8 x i16>
  %i.esm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esn = bitcast <8 x i16> %i.esm to <4 x float>
  %i.eso = load i64, ptr %i.ery, align 1, !tbaa !26
  %i.esp = insertelement <2 x i64> poison, i64 %i.eso, i64 0
  %i.esq = bitcast <2 x i64> %i.esp to <8 x i16>
  %i.esr = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ess = bitcast <8 x i16> %i.esr to <4 x float>
  %i.est = load i64, ptr %i.esd, align 1, !tbaa !26
  %i.esu = insertelement <2 x i64> poison, i64 %i.est, i64 0
  %i.esv = bitcast <2 x i64> %i.esu to <8 x i16>
  %i.esw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.esv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.esx = bitcast <8 x i16> %i.esw to <4 x float>
  %i.esy = shufflevector <4 x float> %i.esi, <4 x float> %i.esn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.esz = shufflevector <4 x float> %i.ess, <4 x float> %i.esx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.eta = shufflevector <16 x float> %i.esy, <16 x float> %i.esz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.etb = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eta, <16 x float> nofpclass(nan inf) %.pre-phi8621, <16 x float> nofpclass(nan inf) %.46650.us.us.us) ; 2 uses
  %i.etc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.eta, <16 x float> nofpclass(nan inf) %.pre-phi8623, <16 x float> nofpclass(nan inf) %.46642.us.us.us) ; 2 uses
  br i1 %i.box, label %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, label %bb.bt

_ZN4ncnn3MatD2Ev.exit2227.us.us.us:               ; preds = %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us
  %.pre-phi8629 = phi i64 [ %.pre8628, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %.pre-phi8619, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.pre-phi8609, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epv, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.etd = phi i64 [ %.pre8568, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.erf, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqj, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epq, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.ete = phi i64 [ %.pre8567, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.erg, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eqk, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epo, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %i.etf = phi ptr [ %.pre8566, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.erh, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.eql, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.epn, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56651.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.etb, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.erd, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqe, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %.56643.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.split2196.us.us.us._ZN4ncnn3MatD2Ev.exit2227.us.us.us_crit_edge ], [ %i.etc, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %i.ere, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eqi, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ]
  %factor.op.mul.us.us.us = mul i64 %i.ete, %i.etd ; 16 uses
  %invariant.gep.us.us.us = getelementptr i8, ptr %i.etf, i64 %.pre-phi8629
  %i.etg = sext i32 %i.eph to i64
  %invariant.gep7515.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us.us, i64 %i.etg ; 16 uses
  %.reass.us.us7543.us = mul i64 %factor.op.mul.us.us.us, %indvars.iv8362
  %gep7516.us.us.us = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us
  %i.eth = load i16, ptr %gep7516.us.us.us, align 2, !tbaa !28
  %.reass.us.us7543.us.1 = mul i64 %factor.op.mul.us.us.us, %i.eoh
  %gep7516.us.us.us.1 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.1
  %i.eti = load i16, ptr %gep7516.us.us.us.1, align 2, !tbaa !28
  %.reass.us.us7543.us.2 = mul i64 %factor.op.mul.us.us.us, %i.eoi
  %gep7516.us.us.us.2 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.2
  %i.etj = load i16, ptr %gep7516.us.us.us.2, align 2, !tbaa !28
  %.reass.us.us7543.us.3 = mul i64 %factor.op.mul.us.us.us, %i.eoj
  %gep7516.us.us.us.3 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.3
  %i.etk = load i16, ptr %gep7516.us.us.us.3, align 2, !tbaa !28
  %.reass.us.us7543.us.4 = mul i64 %factor.op.mul.us.us.us, %i.eok
  %gep7516.us.us.us.4 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.4
  %i.etl = load i16, ptr %gep7516.us.us.us.4, align 2, !tbaa !28
  %.reass.us.us7543.us.5 = mul i64 %factor.op.mul.us.us.us, %i.eol
  %gep7516.us.us.us.5 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.5
  %i.etm = load i16, ptr %gep7516.us.us.us.5, align 2, !tbaa !28
  %.reass.us.us7543.us.6 = mul i64 %factor.op.mul.us.us.us, %i.eom
  %gep7516.us.us.us.6 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.6
  %i.etn = load i16, ptr %gep7516.us.us.us.6, align 2, !tbaa !28
  %.reass.us.us7543.us.7 = mul i64 %factor.op.mul.us.us.us, %i.eon
  %gep7516.us.us.us.7 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.7
  %i.eto = load i16, ptr %gep7516.us.us.us.7, align 2, !tbaa !28
  %.reass.us.us7543.us.8 = mul i64 %factor.op.mul.us.us.us, %i.eoo
  %gep7516.us.us.us.8 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.8
  %i.etp = load i16, ptr %gep7516.us.us.us.8, align 2, !tbaa !28
  %.reass.us.us7543.us.9 = mul i64 %factor.op.mul.us.us.us, %i.eop
  %gep7516.us.us.us.9 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.9
  %i.etq = load i16, ptr %gep7516.us.us.us.9, align 2, !tbaa !28
  %.reass.us.us7543.us.10 = mul i64 %factor.op.mul.us.us.us, %i.eoq
  %gep7516.us.us.us.10 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.10
  %i.etr = load i16, ptr %gep7516.us.us.us.10, align 2, !tbaa !28
  %.reass.us.us7543.us.11 = mul i64 %factor.op.mul.us.us.us, %i.eor
  %gep7516.us.us.us.11 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.11
  %i.ets = load i16, ptr %gep7516.us.us.us.11, align 2, !tbaa !28
  %.reass.us.us7543.us.12 = mul i64 %factor.op.mul.us.us.us, %i.eos
  %gep7516.us.us.us.12 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.12
  %i.ett = load i16, ptr %gep7516.us.us.us.12, align 2, !tbaa !28
  %.reass.us.us7543.us.13 = mul i64 %factor.op.mul.us.us.us, %i.eot
  %gep7516.us.us.us.13 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.13
  %i.etu = load i16, ptr %gep7516.us.us.us.13, align 2, !tbaa !28
  %.reass.us.us7543.us.14 = mul i64 %factor.op.mul.us.us.us, %i.eou
  %gep7516.us.us.us.14 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.14
  %i.etv = load i16, ptr %gep7516.us.us.us.14, align 2, !tbaa !28
  %.reass.us.us7543.us.15 = mul i64 %factor.op.mul.us.us.us, %i.eov
  %gep7516.us.us.us.15 = getelementptr i8, ptr %invariant.gep7515.us.us.us, i64 %.reass.us.us7543.us.15
  %i.etw = load i16, ptr %gep7516.us.us.us.15, align 2, !tbaa !28
  %i.etx = insertelement <16 x i16> poison, i16 %i.eth, i64 0
  %i.ety = insertelement <16 x i16> %i.etx, i16 %i.eti, i64 1
  %i.etz = insertelement <16 x i16> %i.ety, i16 %i.etj, i64 2
  %i.eua = insertelement <16 x i16> %i.etz, i16 %i.etk, i64 3
  %i.eub = insertelement <16 x i16> %i.eua, i16 %i.etl, i64 4
  %i.euc = insertelement <16 x i16> %i.eub, i16 %i.etm, i64 5
  %i.eud = insertelement <16 x i16> %i.euc, i16 %i.etn, i64 6
  %i.eue = insertelement <16 x i16> %i.eud, i16 %i.eto, i64 7
  %i.euf = insertelement <16 x i16> %i.eue, i16 %i.etp, i64 8
  %i.eug = insertelement <16 x i16> %i.euf, i16 %i.etq, i64 9
  %i.euh = insertelement <16 x i16> %i.eug, i16 %i.etr, i64 10
  %i.eui = insertelement <16 x i16> %i.euh, i16 %i.ets, i64 11
  %i.euj = insertelement <16 x i16> %i.eui, i16 %i.ett, i64 12
  %i.euk = insertelement <16 x i16> %i.euj, i16 %i.etu, i64 13
  %i.eul = insertelement <16 x i16> %i.euk, i16 %i.etv, i64 14
  %i.eum = insertelement <16 x i16> %i.eul, i16 %i.etw, i64 15
  %i.eun = zext <16 x i16> %i.eum to <16 x i32>
  %i.euo = shl nuw <16 x i32> %i.eun, splat (i32 16)
  %.sroa.08551.60.vec.insert = bitcast <16 x i32> %i.euo to <16 x float> ; 2 uses
  %i.eup = load <16 x bfloat>, ptr %i.epl, align 32, !tbaa !26
  %i.euq = fpext fast <16 x bfloat> %i.eup to <16 x float>
  %i.eur = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08551.60.vec.insert, <16 x float> nofpclass(nan inf) %i.euq, <16 x float> nofpclass(nan inf) %.56651.us.us.us)
  %i.eus = getelementptr inbounds nuw i8, ptr %i.epl, i64 32
  %i.eut = load <16 x bfloat>, ptr %i.eus, align 32, !tbaa !26
  %i.euu = fpext fast <16 x bfloat> %i.eut to <16 x float>
  %i.euv = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08551.60.vec.insert, <16 x float> nofpclass(nan inf) %i.euu, <16 x float> nofpclass(nan inf) %.56643.us.us.us)
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2227.us.us.us, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us, %.split2196.us.us.us, %bb.bs, %.lr.ph.split.us.us.us7564
  %.66652.us.us.us = phi nsz <16 x float> [ %.266487518.us.us.us, %.lr.ph.split.us.us.us7564 ], [ %.266487518.us.us.us, %.split2196.us.us.us ], [ %i.eqe, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.erd, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.eur, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.etb, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266487518.us.us.us, %bb.bs ] ; 2 uses
  %.66644.us.us.us = phi nsz <16 x float> [ %.266407519.us.us.us, %.lr.ph.split.us.us.us7564 ], [ %.266407519.us.us.us, %.split2196.us.us.us ], [ %i.eqi, %_ZN4ncnn3MatD2Ev.exit2234.us.us.us ], [ %i.ere, %_ZN4ncnn3MatD2Ev.exit2233.us.us.us ], [ %i.euv, %_ZN4ncnn3MatD2Ev.exit2227.us.us.us ], [ %i.etc, %_ZN4ncnn3MatD2Ev.exit2231.us.us.us ], [ %.266407519.us.us.us, %bb.bs ] ; 2 uses
  %indvars.iv.next8353 = add nuw nsw i64 %indvars.iv8352, 1 ; 2 uses
  %exitcond8356.not = icmp eq i64 %indvars.iv.next8353, %i.enz
  br i1 %exitcond8356.not, label %..loopexit6887_crit_edge.us.us, label %.lr.ph.split.us.us.us7564, !llvm.loop !143

..loopexit6887_crit_edge.us.us:                   ; preds = %bb.bt, %.preheader6886.us.us, %bb.br, %.lr.ph7531.split.us.us
  %.76653.us.us = phi nsz <16 x float> [ %.166477528.us.us, %.lr.ph7531.split.us.us ], [ %.166477528.us.us, %bb.br ], [ %.166477528.us.us, %.preheader6886.us.us ], [ %.66652.us.us.us, %bb.bt ] ; 2 uses
  %.76645.us.us = phi nsz <16 x float> [ %.166397529.us.us, %.lr.ph7531.split.us.us ], [ %.166397529.us.us, %bb.br ], [ %.166397529.us.us, %.preheader6886.us.us ], [ %.66644.us.us.us, %bb.bt ] ; 2 uses
  %indvars.iv.next8358 = add nuw nsw i64 %indvars.iv8357, 1 ; 2 uses
  %exitcond8361.not = icmp eq i64 %indvars.iv.next8358, %wide.trip.count8360
  br i1 %exitcond8361.not, label %._crit_edge7532.us, label %.lr.ph7531.split.us.us, !llvm.loop !144

._crit_edge7532.us:                               ; preds = %..loopexit6887_crit_edge.us.us, %.preheader6892.us
  %.us-phi7544.us = phi <16 x float> [ %.066467547.us, %.preheader6892.us ], [ %.76653.us.us, %..loopexit6887_crit_edge.us.us ] ; 2 uses
  %.us-phi7545.us = phi <16 x float> [ %.066387548.us, %.preheader6892.us ], [ %.76645.us.us, %..loopexit6887_crit_edge.us.us ] ; 2 uses
  %i.euw = getelementptr inbounds [2 x i8], ptr %.018947549.us, i64 %i.enf ; 2 uses
  %indvars.iv.next8363 = add nuw nsw i64 %indvars.iv8362, 16 ; 3 uses
  %i.eux = icmp slt i64 %indvars.iv.next8363, %invariant.op8779
  br i1 %i.eux, label %.preheader6892.us, label %._crit_edge7553.loopexit, !llvm.loop !145

._crit_edge7553.loopexit:                         ; preds = %._crit_edge7532.us
  %i.euy = trunc nuw nsw i64 %indvars.iv.next8363 to i32
  br label %._crit_edge7553

._crit_edge7553:                                  ; preds = %.preheader6892.lr.ph, %._crit_edge7553.loopexit, %_ZN4ncnn3MatD2Ev.exit2235
  %.06646.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7544.us, %._crit_edge7553.loopexit ], [ zeroinitializer, %.preheader6892.lr.ph ] ; 2 uses
  %.06638.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %.us-phi7545.us, %._crit_edge7553.loopexit ], [ zeroinitializer, %.preheader6892.lr.ph ] ; 2 uses
  %.01894.lcssa = phi ptr [ %i.ena, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.euw, %._crit_edge7553.loopexit ], [ %scevgep8347, %.preheader6892.lr.ph ] ; 3 uses
  %.01889.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2235 ], [ %i.euy, %._crit_edge7553.loopexit ], [ %i.bpi, %.preheader6892.lr.ph ] ; 5 uses
  %i.euz = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.eva = shufflevector <16 x float> %.06646.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.evb = fadd fast <8 x float> %i.euz, %i.eva   ; 2 uses
  %i.evc = shufflevector <8 x float> %i.evb, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.evd = shufflevector <8 x float> %i.evb, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.eve = fadd fast <4 x float> %i.evc, %i.evd   ; 4 uses
  %i.evf = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.evg = shufflevector <16 x float> %.06638.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.evh = fadd fast <8 x float> %i.evf, %i.evg   ; 2 uses
  %i.evi = shufflevector <8 x float> %i.evh, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.evj = shufflevector <8 x float> %i.evh, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.evk = fadd fast <4 x float> %i.evi, %i.evj   ; 4 uses
  %i.evl = or disjoint i32 %.01889.lcssa, 7
  %i.evm = icmp slt i32 %i.evl, %i.boc
  br i1 %i.evm, label %.preheader6891.lr.ph, label %._crit_edge7598

.preheader6891.lr.ph:                             ; preds = %._crit_edge7553
  %i.evn = load i32, ptr %i.j, align 4
  %invariant.op7586 = sub i32 %.neg6818, %i.evn
  %i.evo = load i32, ptr %i.f, align 4            ; 2 uses
  %i.evp = load i32, ptr %i.a, align 4
  %.fr8045 = freeze i32 %i.evp                    ; 2 uses
  %i.evq = icmp sgt i32 %.fr8045, 0
  %i.evr = load i32, ptr %i.i, align 4
  %.neg6816 = add nuw nsw i32 %.019317777, 1
  %invariant.op7577 = sub i32 %.neg6816, %i.evr
  %i.evs = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.enc, label %.preheader6891.us.preheader, label %.preheader6891.preheader

.preheader6891.preheader:                         ; preds = %.preheader6891.lr.ph
  %i.evt = sub i32 %i.bpk, %.01889.lcssa          ; 2 uses
  %i.evu = lshr i32 %i.evt, 2
  %i.evv = and i32 %i.evu, 1073741822
  %narrow8743 = add nuw nsw i32 %i.evv, 2
  %i.evw = zext nneg i32 %narrow8743 to i64
  %i.evx = mul nsw i64 %i.enh, %i.evw
  %scevgep8365 = getelementptr i8, ptr %.01894.lcssa, i64 %i.evx
  %i.evy = add nsw i32 %.01889.lcssa, 8
  %i.evz = and i32 %i.evt, -8
  %i.ewa = add i32 %i.evy, %i.evz
  br label %._crit_edge7598

.preheader6891.us.preheader:                      ; preds = %.preheader6891.lr.ph
  %i.ewb = load i32, ptr %i.c, align 4
  %i.ewc = load i32, ptr %i.d, align 4
  %i.ewd = zext i32 %.fr8045 to i64               ; 2 uses
  %i.ewe = zext i32 %.01889.lcssa to i64
  br label %.preheader6891.us

.preheader6891.us:                                ; preds = %.preheader6891.us.preheader, %._crit_edge7583.us
  %indvars.iv8380 = phi i64 [ %i.ewe, %.preheader6891.us.preheader ], [ %indvars.iv.next8381, %._crit_edge7583.us ] ; 11 uses
  %.118957594.us = phi ptr [ %.01894.lcssa, %.preheader6891.us.preheader ], [ %i.faj, %._crit_edge7583.us ] ; 2 uses
  %.066287593.us = phi <8 x float> [ zeroinitializer, %.preheader6891.us.preheader ], [ %.us-phi7590.us, %._crit_edge7583.us ] ; 2 uses
  %.066337592.us = phi <8 x float> [ zeroinitializer, %.preheader6891.us.preheader ], [ %.us-phi7589.us, %._crit_edge7583.us ] ; 2 uses
  %i.ewf = trunc nuw i64 %indvars.iv8380 to i32
  %i.ewg = lshr exact i32 %i.ewf, 2               ; 2 uses
  %i.ewh = zext nneg i32 %i.ewg to i64
  %i.ewi = or disjoint i32 %i.ewg, 1
  %i.ewj = zext nneg i32 %i.ewi to i64
  %i.ewk = lshr exact i64 %indvars.iv8380, 3
  %i.ewl = and i64 %i.ewk, 536870911
  br i1 %i.evq, label %.lr.ph7582.split.us.us.preheader, label %._crit_edge7583.us

.lr.ph7582.split.us.us.preheader:                 ; preds = %.preheader6891.us
  %i.ewm = or disjoint i64 %indvars.iv8380, 1
  %i.ewn = or disjoint i64 %indvars.iv8380, 2
  %i.ewo = or disjoint i64 %indvars.iv8380, 3
  %i.ewp = or disjoint i64 %indvars.iv8380, 4
  %i.ewq = or disjoint i64 %indvars.iv8380, 5
  %i.ewr = or disjoint i64 %indvars.iv8380, 6
  %i.ews = or disjoint i64 %indvars.iv8380, 7
  br label %.lr.ph7582.split.us.us

.lr.ph7582.split.us.us:                           ; preds = %.lr.ph7582.split.us.us.preheader, %..loopexit6885_crit_edge.us.us
  %indvars.iv8375 = phi i64 [ 0, %.lr.ph7582.split.us.us.preheader ], [ %indvars.iv.next8376, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %.166297580.us.us = phi <8 x float> [ %.066287593.us, %.lr.ph7582.split.us.us.preheader ], [ %.46632.us.us, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %.166347579.us.us = phi <8 x float> [ %.066337592.us, %.lr.ph7582.split.us.us.preheader ], [ %.46637.us.us, %..loopexit6885_crit_edge.us.us ] ; 3 uses
  %i.ewt = trunc i64 %indvars.iv8375 to i32
  %i.ewu = mul i32 %i.ewc, %i.ewt
  %.reass7587.us.us = add i32 %i.ewu, %invariant.op7586 ; 3 uses
  %i.ewv = icmp slt i32 %.reass7587.us.us, 0
  br i1 %i.ewv, label %..loopexit6885_crit_edge.us.us, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph7582.split.us.us
  %i.eww = srem i32 %.reass7587.us.us, %i.evo
  %i.ewx = sdiv i32 %.reass7587.us.us, %i.evo     ; 2 uses
  %.not2123.us.us = icmp eq i32 %i.eww, 0
  %.not2124.us.us = icmp slt i32 %i.ewx, %i.bog
  %or.cond8992 = select i1 %.not2123.us.us, i1 %.not2124.us.us, i1 false
  br i1 %or.cond8992, label %.preheader6884.us.us, label %..loopexit6885_crit_edge.us.us

.preheader6884.us.us:                             ; preds = %bb.bu
  %i.ewy = mul nuw nsw i64 %indvars.iv8375, %i.ewd
  %i.ewz = sext i32 %i.ewx to i64                 ; 3 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.by, %.preheader6884.us.us
  %indvars.iv8370 = phi i64 [ %indvars.iv.next8371, %bb.by ], [ 0, %.preheader6884.us.us ] ; 3 uses
  %.266307573.us.us = phi <8 x float> [ %.36631.us.us, %bb.by ], [ %.166297580.us.us, %.preheader6884.us.us ] ; 4 uses
  %.266357572.us.us = phi <8 x float> [ %.36636.us.us, %bb.by ], [ %.166347579.us.us, %.preheader6884.us.us ] ; 4 uses
  %i.exa = trunc i64 %indvars.iv8370 to i32
  %i.exb = mul i32 %i.ewb, %i.exa
  %.reass7578.us.us = add i32 %i.exb, %invariant.op7577 ; 3 uses
  %i.exc = icmp slt i32 %.reass7578.us.us, 0
  br i1 %i.exc, label %bb.by, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.exd = srem i32 %.reass7578.us.us, %i.evs
  %i.exe = sdiv i32 %.reass7578.us.us, %i.evs     ; 4 uses
  %.not2125.us.us = icmp eq i32 %i.exd, 0
  %.not2126.us.us = icmp slt i32 %i.exe, %i.boe
  %or.cond8993 = select i1 %.not2125.us.us, i1 %.not2126.us.us, i1 false
  br i1 %or.cond8993, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.exf = add nuw nsw i64 %i.ewy, %indvars.iv8370
  %i.exg = shl i64 %i.exf, 4
  %i.exh = and i64 %i.exg, 4294967280
  %i.exi = getelementptr inbounds nuw [2 x i8], ptr %.118957594.us, i64 %i.exh ; 2 uses
  switch i32 %.fr8043, label %bb.by [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2226.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2225.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2223.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2223.us.us:                  ; preds = %bb.bx
  %i.exj = load i32, ptr %i.bod, align 4, !tbaa !22, !noalias !252
  %i.exk = load ptr, ptr %0, align 8, !tbaa !19, !noalias !252
  %i.exl = load i64, ptr %i.bov, align 8, !tbaa !17, !noalias !252
  %i.exm = load i64, ptr %i.bow, align 8, !tbaa !24, !noalias !252 ; 2 uses
  %factor.op.mul.us.us = mul i64 %i.exl, %i.exm   ; 8 uses
  %i.exn = sext i32 %i.exj to i64
  %i.exo = mul nsw i64 %i.exn, %i.ewz
  %i.exp = mul i64 %i.exo, %i.exm
  %invariant.gep.us.us = getelementptr i8, ptr %i.exk, i64 %i.exp
  %i.exq = sext i32 %i.exe to i64
  %invariant.gep7569.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us, i64 %i.exq ; 8 uses
  %.reass.us7588.us = mul i64 %factor.op.mul.us.us, %indvars.iv8380
  %gep7570.us.us = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us
  %i.exr = load i16, ptr %gep7570.us.us, align 2, !tbaa !28
  %.reass.us7588.us.1 = mul i64 %factor.op.mul.us.us, %i.ewm
  %gep7570.us.us.1 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.1
  %i.exs = load i16, ptr %gep7570.us.us.1, align 2, !tbaa !28
  %.reass.us7588.us.2 = mul i64 %factor.op.mul.us.us, %i.ewn
  %gep7570.us.us.2 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.2
  %i.ext = load i16, ptr %gep7570.us.us.2, align 2, !tbaa !28
  %.reass.us7588.us.3 = mul i64 %factor.op.mul.us.us, %i.ewo
  %gep7570.us.us.3 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.3
  %i.exu = load i16, ptr %gep7570.us.us.3, align 2, !tbaa !28
  %.reass.us7588.us.4 = mul i64 %factor.op.mul.us.us, %i.ewp
  %gep7570.us.us.4 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.4
  %i.exv = load i16, ptr %gep7570.us.us.4, align 2, !tbaa !28
  %.reass.us7588.us.5 = mul i64 %factor.op.mul.us.us, %i.ewq
  %gep7570.us.us.5 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.5
  %i.exw = load i16, ptr %gep7570.us.us.5, align 2, !tbaa !28
  %.reass.us7588.us.6 = mul i64 %factor.op.mul.us.us, %i.ewr
  %gep7570.us.us.6 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.6
  %i.exx = load i16, ptr %gep7570.us.us.6, align 2, !tbaa !28
  %.reass.us7588.us.7 = mul i64 %factor.op.mul.us.us, %i.ews
  %gep7570.us.us.7 = getelementptr i8, ptr %invariant.gep7569.us.us, i64 %.reass.us7588.us.7
  %i.exy = load i16, ptr %gep7570.us.us.7, align 2, !tbaa !28
  %i.exz = insertelement <8 x i16> poison, i16 %i.exr, i64 0
  %i.eya = insertelement <8 x i16> %i.exz, i16 %i.exs, i64 1
  %i.eyb = insertelement <8 x i16> %i.eya, i16 %i.ext, i64 2
  %i.eyc = insertelement <8 x i16> %i.eyb, i16 %i.exu, i64 3
  %i.eyd = insertelement <8 x i16> %i.eyc, i16 %i.exv, i64 4
  %i.eye = insertelement <8 x i16> %i.eyd, i16 %i.exw, i64 5
  %i.eyf = insertelement <8 x i16> %i.eye, i16 %i.exx, i64 6
  %i.eyg = insertelement <8 x i16> %i.eyf, i16 %i.exy, i64 7
  %i.eyh = zext <8 x i16> %i.eyg to <8 x i32>
  %i.eyi = shl nuw <8 x i32> %i.eyh, splat (i32 16)
  %.sroa.08549.28.vec.insert = bitcast <8 x i32> %i.eyi to <8 x float>
  br label %.sink.split8881

_ZN4ncnn3MatD2Ev.exit2225.us.us:                  ; preds = %bb.bx
  %i.eyj = load i32, ptr %i.bod, align 4, !tbaa !22, !noalias !253
  %i.eyk = load ptr, ptr %0, align 8, !tbaa !19, !noalias !253 ; 2 uses
  %i.eyl = load i64, ptr %i.bov, align 8, !tbaa !17, !noalias !253 ; 2 uses
  %i.eym = mul i64 %i.eyl, %i.ewh
  %i.eyn = load i64, ptr %i.bow, align 8, !tbaa !24, !noalias !253 ; 3 uses
  %i.eyo = mul i64 %i.eym, %i.eyn
  %i.eyp = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.eyo
  %i.eyq = sext i32 %i.eyj to i64
  %i.eyr = mul nsw i64 %i.eyq, %i.ewz
  %i.eys = mul i64 %i.eyr, %i.eyn                 ; 2 uses
  %i.eyt = getelementptr inbounds nuw i8, ptr %i.eyp, i64 %i.eys
  %i.eyu = shl nsw i32 %i.exe, 2
  %i.eyv = sext i32 %i.eyu to i64                 ; 2 uses
  %i.eyw = getelementptr inbounds [2 x i8], ptr %i.eyt, i64 %i.eyv
  %i.eyx = mul i64 %i.eyl, %i.ewj
  %i.eyy = mul i64 %i.eyx, %i.eyn
  %i.eyz = getelementptr inbounds nuw i8, ptr %i.eyk, i64 %i.eyy
  %i.eza = getelementptr inbounds nuw i8, ptr %i.eyz, i64 %i.eys
  %i.ezb = getelementptr inbounds [2 x i8], ptr %i.eza, i64 %i.eyv
  %i.ezc = load i64, ptr %i.eyw, align 1, !tbaa !26
  %i.ezd = insertelement <2 x i64> poison, i64 %i.ezc, i64 0
  %i.eze = bitcast <2 x i64> %i.ezd to <8 x i16>
  %i.ezf = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.eze, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezg = load i64, ptr %i.ezb, align 1, !tbaa !26
  %i.ezh = insertelement <2 x i64> poison, i64 %i.ezg, i64 0
  %i.ezi = bitcast <2 x i64> %i.ezh to <8 x i16>
  %i.ezj = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ezi, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ezk = shufflevector <8 x i16> %i.ezf, <8 x i16> %i.ezj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ezl = bitcast <16 x i16> %i.ezk to <8 x float>
  br label %.sink.split8881

_ZN4ncnn3MatD2Ev.exit2226.us.us:                  ; preds = %bb.bx
  %i.ezm = load i32, ptr %i.bod, align 4, !tbaa !22, !noalias !254
  %i.ezn = load ptr, ptr %0, align 8, !tbaa !19, !noalias !254
  %i.ezo = load i64, ptr %i.bov, align 8, !tbaa !17, !noalias !254
  %i.ezp = mul i64 %i.ezo, %i.ewl
  %i.ezq = load i64, ptr %i.bow, align 8, !tbaa !24, !noalias !254 ; 2 uses
  %i.ezr = mul i64 %i.ezp, %i.ezq
  %i.ezs = getelementptr inbounds nuw i8, ptr %i.ezn, i64 %i.ezr
  %i.ezt = sext i32 %i.ezm to i64
  %i.ezu = mul nsw i64 %i.ezt, %i.ewz
  %i.ezv = mul i64 %i.ezu, %i.ezq
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.ezs, i64 %i.ezv
  %i.ezx = shl nsw i32 %i.exe, 3
  %i.ezy = sext i32 %i.ezx to i64
  %i.ezz = getelementptr inbounds [2 x i8], ptr %i.ezw, i64 %i.ezy
  %i.faa = load <8 x bfloat>, ptr %i.ezz, align 16, !tbaa !26
  %i.fab = fpext fast <8 x bfloat> %i.faa to <8 x float>
  br label %.sink.split8881

.sink.split8881:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2223.us.us, %_ZN4ncnn3MatD2Ev.exit2225.us.us, %_ZN4ncnn3MatD2Ev.exit2226.us.us
  %.sink8885 = phi <8 x float> [ %i.fab, %_ZN4ncnn3MatD2Ev.exit2226.us.us ], [ %i.ezl, %_ZN4ncnn3MatD2Ev.exit2225.us.us ], [ %.sroa.08549.28.vec.insert, %_ZN4ncnn3MatD2Ev.exit2223.us.us ] ; 2 uses
  %i.fac = load <8 x bfloat>, ptr %i.exi, align 16, !tbaa !26
  %i.fad = fpext fast <8 x bfloat> %i.fac to <8 x float>
  %i.fae = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8885, <8 x float> nofpclass(nan inf) %i.fad, <8 x float> nofpclass(nan inf) %.266357572.us.us)
  %i.faf = getelementptr inbounds nuw i8, ptr %i.exi, i64 16
  %i.fag = load <8 x bfloat>, ptr %i.faf, align 16, !tbaa !26
  %i.fah = fpext fast <8 x bfloat> %i.fag to <8 x float>
  %i.fai = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8885, <8 x float> nofpclass(nan inf) %i.fah, <8 x float> nofpclass(nan inf) %.266307573.us.us)
  br label %bb.by

bb.by:                                            ; preds = %.sink.split8881, %bb.bx, %bb.bw, %bb.bv
  %.36636.us.us = phi nsz <8 x float> [ %.266357572.us.us, %bb.bv ], [ %.266357572.us.us, %bb.bx ], [ %.266357572.us.us, %bb.bw ], [ %i.fae, %.sink.split8881 ] ; 2 uses
  %.36631.us.us = phi nsz <8 x float> [ %.266307573.us.us, %bb.bv ], [ %.266307573.us.us, %bb.bx ], [ %.266307573.us.us, %bb.bw ], [ %i.fai, %.sink.split8881 ] ; 2 uses
  %indvars.iv.next8371 = add nuw nsw i64 %indvars.iv8370, 1 ; 2 uses
  %exitcond8374.not = icmp eq i64 %indvars.iv.next8371, %i.ewd
  br i1 %exitcond8374.not, label %..loopexit6885_crit_edge.us.us, label %bb.bv, !llvm.loop !152

..loopexit6885_crit_edge.us.us:                   ; preds = %bb.by, %bb.bu, %.lr.ph7582.split.us.us
  %.46637.us.us = phi nsz <8 x float> [ %.166347579.us.us, %.lr.ph7582.split.us.us ], [ %.166347579.us.us, %bb.bu ], [ %.36636.us.us, %bb.by ] ; 2 uses
  %.46632.us.us = phi nsz <8 x float> [ %.166297580.us.us, %.lr.ph7582.split.us.us ], [ %.166297580.us.us, %bb.bu ], [ %.36631.us.us, %bb.by ] ; 2 uses
  %indvars.iv.next8376 = add nuw nsw i64 %indvars.iv8375, 1 ; 2 uses
  %exitcond8379.not = icmp eq i64 %indvars.iv.next8376, %wide.trip.count8378
  br i1 %exitcond8379.not, label %._crit_edge7583.us, label %.lr.ph7582.split.us.us, !llvm.loop !153

._crit_edge7583.us:                               ; preds = %..loopexit6885_crit_edge.us.us, %.preheader6891.us
  %.us-phi7589.us = phi <8 x float> [ %.066337592.us, %.preheader6891.us ], [ %.46637.us.us, %..loopexit6885_crit_edge.us.us ] ; 2 uses
  %.us-phi7590.us = phi <8 x float> [ %.066287593.us, %.preheader6891.us ], [ %.46632.us.us, %..loopexit6885_crit_edge.us.us ] ; 2 uses
  %i.faj = getelementptr inbounds [2 x i8], ptr %.118957594.us, i64 %i.enh ; 2 uses
  %indvars.iv.next8381 = add nuw nsw i64 %indvars.iv8380, 8 ; 3 uses
  %i.fak = trunc i64 %indvars.iv.next8381 to i32
  %i.fal = or i32 %i.fak, 7
  %i.fam = icmp slt i32 %i.fal, %i.boc
  br i1 %i.fam, label %.preheader6891.us, label %._crit_edge7598.loopexit, !llvm.loop !154

._crit_edge7598.loopexit:                         ; preds = %._crit_edge7583.us
  %i.fan = trunc nuw i64 %indvars.iv.next8381 to i32
  br label %._crit_edge7598

._crit_edge7598:                                  ; preds = %.preheader6891.preheader, %._crit_edge7598.loopexit, %._crit_edge7553
  %.06633.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7553 ], [ %.us-phi7589.us, %._crit_edge7598.loopexit ], [ zeroinitializer, %.preheader6891.preheader ] ; 2 uses
  %.06628.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7553 ], [ %.us-phi7590.us, %._crit_edge7598.loopexit ], [ zeroinitializer, %.preheader6891.preheader ] ; 2 uses
  %.11895.lcssa = phi ptr [ %.01894.lcssa, %._crit_edge7553 ], [ %i.faj, %._crit_edge7598.loopexit ], [ %scevgep8365, %.preheader6891.preheader ] ; 4 uses
  %.11890.lcssa = phi i32 [ %.01889.lcssa, %._crit_edge7553 ], [ %i.fan, %._crit_edge7598.loopexit ], [ %i.ewa, %.preheader6891.preheader ] ; 7 uses
  %i.fao = shufflevector <8 x float> %.06633.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fap = shufflevector <8 x float> %.06633.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.faq = fadd fast <4 x float> %i.fao, %i.fap   ; 4 uses
  %i.far = shufflevector <8 x float> %.06628.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fas = shufflevector <8 x float> %.06628.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fat = fadd fast <4 x float> %i.far, %i.fas   ; 4 uses
  %i.fau = or disjoint i32 %.11890.lcssa, 3
  %i.fav = icmp slt i32 %i.fau, %i.boc
  br i1 %i.fav, label %.preheader6890.lr.ph, label %._crit_edge7668

.preheader6890.lr.ph:                             ; preds = %._crit_edge7598
  %i.faw = load i32, ptr %i.d, align 4
  %i.fax = load i32, ptr %i.j, align 4
  %invariant.op7648 = sub i32 %.neg6818, %i.fax
  %i.fay = load i32, ptr %i.f, align 4            ; 2 uses
  %i.faz = load i32, ptr %i.a, align 4
  %.fr8046 = freeze i32 %i.faz                    ; 2 uses
  %i.fba = load i32, ptr %i.c, align 4            ; 2 uses
  %i.fbb = load i32, ptr %i.i, align 4
  %.neg6812 = add nuw nsw i32 %.019317777, 1
  %invariant.op7622 = sub i32 %.neg6812, %i.fbb   ; 2 uses
  %i.fbc = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.enc, label %.preheader6890.lr.ph.split.us, label %.preheader6890.preheader

.preheader6890.preheader:                         ; preds = %.preheader6890.lr.ph
  %i.fbd = sub i32 %i.bpl, %.11890.lcssa          ; 2 uses
  %i.fbe = lshr i32 %i.fbd, 1
  %i.fbf = and i32 %i.fbe, 2147483646
  %narrow8744 = add nuw i32 %i.fbf, 2
  %i.fbg = zext i32 %narrow8744 to i64
  %i.fbh = mul nsw i64 %i.enj, %i.fbg
  %scevgep8383 = getelementptr i8, ptr %.11895.lcssa, i64 %i.fbh
  %i.fbi = add nsw i32 %.11890.lcssa, 4
  %i.fbj = and i32 %i.fbd, -4
  %i.fbk = add i32 %i.fbi, %i.fbj
  br label %._crit_edge7668

.preheader6890.lr.ph.split.us:                    ; preds = %.preheader6890.lr.ph
  %i.fbl = icmp sgt i32 %.fr8046, 0
  br i1 %i.fbl, label %.preheader6890.us.us.preheader, label %.preheader6890.us.preheader

.preheader6890.us.preheader:                      ; preds = %.preheader6890.lr.ph.split.us
  %i.fbm = sub i32 %i.bpl, %.11890.lcssa          ; 2 uses
  %i.fbn = lshr i32 %i.fbm, 1
  %i.fbo = and i32 %i.fbn, 2147483646
  %narrow8745 = add nuw i32 %i.fbo, 2
  %i.fbp = zext i32 %narrow8745 to i64
  %i.fbq = mul nsw i64 %i.enj, %i.fbp
  %scevgep8384 = getelementptr i8, ptr %.11895.lcssa, i64 %i.fbq
  %i.fbr = add nsw i32 %.11890.lcssa, 4
  %i.fbs = and i32 %i.fbm, -4
  %i.fbt = add i32 %i.fbr, %i.fbs
  br label %._crit_edge7668

.preheader6890.us.us.preheader:                   ; preds = %.preheader6890.lr.ph.split.us
  %i.fbu = zext nneg i32 %.fr8046 to i64          ; 3 uses
  %i.fbv = zext i32 %.11890.lcssa to i64
  br label %.preheader6890.us.us

.preheader6890.us.us:                             ; preds = %.preheader6890.us.us.preheader, %._crit_edge7645.split.us.us.us
  %indvars.iv8404 = phi i64 [ %i.fbv, %.preheader6890.us.us.preheader ], [ %indvars.iv.next8405, %._crit_edge7645.split.us.us.us ] ; 6 uses
  %.218967664.us.us = phi ptr [ %.11895.lcssa, %.preheader6890.us.us.preheader ], [ %i.ffo, %._crit_edge7645.split.us.us.us ] ; 3 uses
  %.066187663.us.us = phi <4 x float> [ zeroinitializer, %.preheader6890.us.us.preheader ], [ %.46622.us.us.us, %._crit_edge7645.split.us.us.us ]
  %.066237662.us.us = phi <4 x float> [ zeroinitializer, %.preheader6890.us.us.preheader ], [ %.46627.us.us.us, %._crit_edge7645.split.us.us.us ]
  %i.fbw = lshr exact i64 %indvars.iv8404, 2
  %i.fbx = and i64 %i.fbw, 1073741823
  %i.fby = or disjoint i64 %indvars.iv8404, 1
  %i.fbz = or disjoint i64 %indvars.iv8404, 2
  %i.fca = or disjoint i64 %indvars.iv8404, 3
  br label %bb.bz

bb.bz:                                            ; preds = %..loopexit6883_crit_edge.us.us.us, %.preheader6890.us.us
  %indvars.iv8399 = phi i64 [ %indvars.iv.next8400, %..loopexit6883_crit_edge.us.us.us ], [ 0, %.preheader6890.us.us ] ; 3 uses
  %.166197642.us.us.us = phi <4 x float> [ %.46622.us.us.us, %..loopexit6883_crit_edge.us.us.us ], [ %.066187663.us.us, %.preheader6890.us.us ] ; 5 uses
  %.166247641.us.us.us = phi <4 x float> [ %.46627.us.us.us, %..loopexit6883_crit_edge.us.us.us ], [ %.066237662.us.us, %.preheader6890.us.us ] ; 5 uses
  %i.fcb = trunc i64 %indvars.iv8399 to i32
  %i.fcc = mul i32 %i.faw, %i.fcb
  %.reass.us7649.us.us = add i32 %i.fcc, %invariant.op7648 ; 3 uses
  %i.fcd = icmp slt i32 %.reass.us7649.us.us, 0
  br i1 %i.fcd, label %..loopexit6883_crit_edge.us.us.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fce = srem i32 %.reass.us7649.us.us, %i.fay
  %i.fcf = sdiv i32 %.reass.us7649.us.us, %i.fay  ; 2 uses
  %.not2119.us.us.us = icmp eq i32 %i.fce, 0
  %.not2120.us.us.us = icmp slt i32 %i.fcf, %i.bog
  %or.cond8994 = select i1 %.not2119.us.us.us, i1 %.not2120.us.us.us, i1 false
  br i1 %or.cond8994, label %.preheader6882.us.us.us, label %..loopexit6883_crit_edge.us.us.us

.preheader6882.us.us.us:                          ; preds = %bb.ca
  %i.fcg = mul nuw nsw i64 %indvars.iv8399, %i.fbu ; 2 uses
  %i.fch = sext i32 %i.fcf to i64                 ; 2 uses
  switch i32 %.fr8043, label %..loopexit6883_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7680.us
    i32 1, label %.lr.ph.split.us7626.us.us.us
  ]

.lr.ph.split.us7626.us.us.us:                     ; preds = %.preheader6882.us.us.us, %bb.cc
  %indvars.iv8389 = phi i64 [ %indvars.iv.next8390, %bb.cc ], [ 0, %.preheader6882.us.us.us ] ; 3 uses
  %.266207618.us7628.us.us.us = phi <4 x float> [ %.36621.us7635.us.us.us, %bb.cc ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %.266257617.us7629.us.us.us = phi <4 x float> [ %.36626.us7634.us.us.us, %bb.cc ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %i.fci = trunc i64 %indvars.iv8389 to i32
  %i.fcj = mul i32 %i.fba, %i.fci
  %.reass7623.us7630.us.us.us = add i32 %i.fcj, %invariant.op7622 ; 3 uses
  %i.fck = icmp slt i32 %.reass7623.us7630.us.us.us, 0
  br i1 %i.fck, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph.split.us7626.us.us.us
  %i.fcl = srem i32 %.reass7623.us7630.us.us.us, %i.fbc
  %i.fcm = sdiv i32 %.reass7623.us7630.us.us.us, %i.fbc ; 2 uses
  %.not2121.us7631.us.us.us = icmp eq i32 %i.fcl, 0
  %.not2122.us7632.us.us.us = icmp slt i32 %i.fcm, %i.boe
  %or.cond8995 = select i1 %.not2121.us7631.us.us.us, i1 %.not2122.us7632.us.us.us, i1 false
  br i1 %or.cond8995, label %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, label %bb.cc

_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us:            ; preds = %bb.cb
  %i.fcn = load i32, ptr %i.bod, align 4, !tbaa !22, !noalias !255
  %i.fco = load ptr, ptr %0, align 8, !tbaa !19, !noalias !255
  %i.fcp = load i64, ptr %i.bov, align 8, !tbaa !17, !noalias !255
  %i.fcq = load i64, ptr %i.bow, align 8, !tbaa !24, !noalias !255 ; 2 uses
  %factor.op.mul.us.us7650.us.us = mul i64 %i.fcp, %i.fcq ; 4 uses
  %i.fcr = sext i32 %i.fcn to i64
  %i.fcs = mul nsw i64 %i.fcr, %i.fch
  %i.fct = mul i64 %i.fcs, %i.fcq
  %invariant.gep.us.us7651.us.us = getelementptr i8, ptr %i.fco, i64 %i.fct
  %i.fcu = sext i32 %i.fcm to i64
  %invariant.gep7614.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7651.us.us, i64 %i.fcu ; 4 uses
  %.reass.us7633.us.us.us = mul i64 %factor.op.mul.us.us7650.us.us, %indvars.iv8404
  %gep7615.us.us.us.us = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us
  %i.fcv = load i16, ptr %gep7615.us.us.us.us, align 2, !tbaa !28
  %.reass.us7633.us.us.us.1 = mul i64 %factor.op.mul.us.us7650.us.us, %i.fby
  %gep7615.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.1
  %i.fcw = load i16, ptr %gep7615.us.us.us.us.1, align 2, !tbaa !28
  %.reass.us7633.us.us.us.2 = mul i64 %factor.op.mul.us.us7650.us.us, %i.fbz
  %gep7615.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.2
  %i.fcx = load i16, ptr %gep7615.us.us.us.us.2, align 2, !tbaa !28
  %.reass.us7633.us.us.us.3 = mul i64 %factor.op.mul.us.us7650.us.us, %i.fca
  %gep7615.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7614.us.us.us.us, i64 %.reass.us7633.us.us.us.3
  %i.fcy = load i16, ptr %gep7615.us.us.us.us.3, align 2, !tbaa !28
  %i.fcz = zext i16 %i.fcy to i32
  %i.fda = zext i16 %i.fcx to i32
  %i.fdb = zext i16 %i.fcw to i32
  %i.fdc = zext i16 %i.fcv to i32
  %i.fdd = insertelement <4 x i32> poison, i32 %i.fdc, i64 0
  %i.fde = insertelement <4 x i32> %i.fdd, i32 %i.fdb, i64 1
  %i.fdf = insertelement <4 x i32> %i.fde, i32 %i.fda, i64 2
  %i.fdg = insertelement <4 x i32> %i.fdf, i32 %i.fcz, i64 3
  %i.fdh = shl nuw <4 x i32> %i.fdg, splat (i32 16)
  %.sroa.08547.12.vec.insert = bitcast <4 x i32> %i.fdh to <4 x float> ; 2 uses
  %i.fdi = add nuw nsw i64 %i.fcg, %indvars.iv8389
  %i.fdj = shl i64 %i.fdi, 3
  %i.fdk = and i64 %i.fdj, 4294967288
  %i.fdl = getelementptr inbounds nuw [2 x i8], ptr %.218967664.us.us, i64 %i.fdk ; 2 uses
  %i.fdm = load i64, ptr %i.fdl, align 1, !tbaa !26
  %i.fdn = insertelement <2 x i64> poison, i64 %i.fdm, i64 0
  %i.fdo = bitcast <2 x i64> %i.fdn to <8 x i16>
  %i.fdp = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fdo, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fdq = bitcast <8 x i16> %i.fdp to <4 x float>
  %i.fdr = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08547.12.vec.insert, <4 x float> nofpclass(nan inf) %i.fdq, <4 x float> nofpclass(nan inf) %.266257617.us7629.us.us.us)
  %i.fds = getelementptr inbounds nuw i8, ptr %i.fdl, i64 8
  %i.fdt = load i64, ptr %i.fds, align 1, !tbaa !26
  %i.fdu = insertelement <2 x i64> poison, i64 %i.fdt, i64 0
  %i.fdv = bitcast <2 x i64> %i.fdu to <8 x i16>
  %i.fdw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fdv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fdx = bitcast <8 x i16> %i.fdw to <4 x float>
  %i.fdy = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.08547.12.vec.insert, <4 x float> nofpclass(nan inf) %i.fdx, <4 x float> nofpclass(nan inf) %.266207618.us7628.us.us.us)
  br label %bb.cc

bb.cc:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us, %bb.cb, %.lr.ph.split.us7626.us.us.us
  %.36626.us7634.us.us.us = phi nsz <4 x float> [ %.266257617.us7629.us.us.us, %.lr.ph.split.us7626.us.us.us ], [ %i.fdr, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266257617.us7629.us.us.us, %bb.cb ] ; 2 uses
  %.36621.us7635.us.us.us = phi nsz <4 x float> [ %.266207618.us7628.us.us.us, %.lr.ph.split.us7626.us.us.us ], [ %i.fdy, %_ZN4ncnn3MatD2Ev.exit2221.us.us.us.us ], [ %.266207618.us7628.us.us.us, %bb.cb ] ; 2 uses
  %indvars.iv.next8390 = add nuw nsw i64 %indvars.iv8389, 1 ; 2 uses
  %exitcond8393.not = icmp eq i64 %indvars.iv.next8390, %i.fbu
  br i1 %exitcond8393.not, label %..loopexit6883_crit_edge.us.us.us, label %.lr.ph.split.us7626.us.us.us, !llvm.loop !157

.lr.ph.split.us.us.us7680.us:                     ; preds = %.preheader6882.us.us.us, %bb.ce
  %indvars.iv8394 = phi i64 [ %indvars.iv.next8395, %bb.ce ], [ 0, %.preheader6882.us.us.us ] ; 3 uses
  %.266207618.us.us.us.us = phi <4 x float> [ %.36621.us.us.us.us, %bb.ce ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %.266257617.us.us.us.us = phi <4 x float> [ %.36626.us.us.us.us, %bb.ce ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ] ; 3 uses
  %i.fdz = trunc i64 %indvars.iv8394 to i32
  %i.fea = mul i32 %i.fba, %i.fdz
  %.reass7623.us.us.us.us = add i32 %i.fea, %invariant.op7622 ; 3 uses
  %i.feb = icmp slt i32 %.reass7623.us.us.us.us, 0
  br i1 %i.feb, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph.split.us.us.us7680.us
  %i.fec = srem i32 %.reass7623.us.us.us.us, %i.fbc
  %i.fed = sdiv i32 %.reass7623.us.us.us.us, %i.fbc ; 2 uses
  %.not2121.us.us.us.us = icmp eq i32 %i.fec, 0
  %.not2122.us.us.us.us = icmp slt i32 %i.fed, %i.boe
  %or.cond8996 = select i1 %.not2121.us.us.us.us, i1 %.not2122.us.us.us.us, i1 false
  br i1 %or.cond8996, label %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, label %bb.ce

_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us:            ; preds = %bb.cd
  %i.fee = add nuw nsw i64 %i.fcg, %indvars.iv8394
  %i.fef = shl i64 %i.fee, 3
  %i.feg = and i64 %i.fef, 4294967288
  %i.feh = getelementptr inbounds nuw [2 x i8], ptr %.218967664.us.us, i64 %i.feg ; 2 uses
  %i.fei = load i32, ptr %i.bod, align 4, !tbaa !22, !noalias !256
  %i.fej = load ptr, ptr %0, align 8, !tbaa !19, !noalias !256
  %i.fek = load i64, ptr %i.bov, align 8, !tbaa !17, !noalias !256
  %i.fel = mul i64 %i.fek, %i.fbx
  %i.fem = load i64, ptr %i.bow, align 8, !tbaa !24, !noalias !256 ; 2 uses
  %i.fen = mul i64 %i.fel, %i.fem
  %i.feo = getelementptr inbounds nuw i8, ptr %i.fej, i64 %i.fen
  %i.fep = sext i32 %i.fei to i64
  %i.feq = mul nsw i64 %i.fep, %i.fch
  %i.fer = mul i64 %i.feq, %i.fem
  %i.fes = getelementptr inbounds nuw i8, ptr %i.feo, i64 %i.fer
  %i.fet = shl nsw i32 %i.fed, 2
  %i.feu = sext i32 %i.fet to i64
  %i.fev = getelementptr inbounds [2 x i8], ptr %i.fes, i64 %i.feu
  %i.few = load i64, ptr %i.fev, align 1, !tbaa !26
  %i.fex = insertelement <2 x i64> poison, i64 %i.few, i64 0
  %i.fey = bitcast <2 x i64> %i.fex to <8 x i16>
  %i.fez = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fey, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffa = bitcast <8 x i16> %i.fez to <4 x float> ; 2 uses
  %i.ffb = load i64, ptr %i.feh, align 1, !tbaa !26
  %i.ffc = insertelement <2 x i64> poison, i64 %i.ffb, i64 0
  %i.ffd = bitcast <2 x i64> %i.ffc to <8 x i16>
  %i.ffe = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fff = bitcast <8 x i16> %i.ffe to <4 x float>
  %i.ffg = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ffa, <4 x float> nofpclass(nan inf) %i.fff, <4 x float> nofpclass(nan inf) %.266257617.us.us.us.us)
  %i.ffh = getelementptr inbounds nuw i8, ptr %i.feh, i64 8
  %i.ffi = load i64, ptr %i.ffh, align 1, !tbaa !26
  %i.ffj = insertelement <2 x i64> poison, i64 %i.ffi, i64 0
  %i.ffk = bitcast <2 x i64> %i.ffj to <8 x i16>
  %i.ffl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ffk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ffm = bitcast <8 x i16> %i.ffl to <4 x float>
  %i.ffn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ffa, <4 x float> nofpclass(nan inf) %i.ffm, <4 x float> nofpclass(nan inf) %.266207618.us.us.us.us)
  br label %bb.ce

bb.ce:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us, %bb.cd, %.lr.ph.split.us.us.us7680.us
  %.36626.us.us.us.us = phi nsz <4 x float> [ %.266257617.us.us.us.us, %.lr.ph.split.us.us.us7680.us ], [ %.266257617.us.us.us.us, %bb.cd ], [ %i.ffg, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %.36621.us.us.us.us = phi nsz <4 x float> [ %.266207618.us.us.us.us, %.lr.ph.split.us.us.us7680.us ], [ %.266207618.us.us.us.us, %bb.cd ], [ %i.ffn, %_ZN4ncnn3MatD2Ev.exit2222.us.us.us.us ] ; 2 uses
  %indvars.iv.next8395 = add nuw nsw i64 %indvars.iv8394, 1 ; 2 uses
  %exitcond8398.not = icmp eq i64 %indvars.iv.next8395, %i.fbu
  br i1 %exitcond8398.not, label %..loopexit6883_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7680.us, !llvm.loop !157

..loopexit6883_crit_edge.us.us.us:                ; preds = %bb.cc, %bb.ce, %.preheader6882.us.us.us, %bb.ca, %bb.bz
  %.46627.us.us.us = phi nsz <4 x float> [ %.166247641.us.us.us, %bb.bz ], [ %.166247641.us.us.us, %bb.ca ], [ %.36626.us.us.us.us, %bb.ce ], [ %.166247641.us.us.us, %.preheader6882.us.us.us ], [ %.36626.us7634.us.us.us, %bb.cc ] ; 3 uses
  %.46622.us.us.us = phi nsz <4 x float> [ %.166197642.us.us.us, %bb.bz ], [ %.166197642.us.us.us, %bb.ca ], [ %.36621.us.us.us.us, %bb.ce ], [ %.166197642.us.us.us, %.preheader6882.us.us.us ], [ %.36621.us7635.us.us.us, %bb.cc ] ; 3 uses
  %indvars.iv.next8400 = add nuw nsw i64 %indvars.iv8399, 1 ; 2 uses
  %exitcond8403.not = icmp eq i64 %indvars.iv.next8400, %wide.trip.count8402
  br i1 %exitcond8403.not, label %._crit_edge7645.split.us.us.us, label %bb.bz, !llvm.loop !160

._crit_edge7645.split.us.us.us:                   ; preds = %..loopexit6883_crit_edge.us.us.us
  %i.ffo = getelementptr inbounds [2 x i8], ptr %.218967664.us.us, i64 %i.enj ; 2 uses
  %indvars.iv.next8405 = add nuw nsw i64 %indvars.iv8404, 4 ; 3 uses
  %i.ffp = trunc i64 %indvars.iv.next8405 to i32
  %i.ffq = or i32 %i.ffp, 3
  %i.ffr = icmp slt i32 %i.ffq, %i.boc
  br i1 %i.ffr, label %.preheader6890.us.us, label %._crit_edge7668.loopexit, !llvm.loop !161

._crit_edge7668.loopexit:                         ; preds = %._crit_edge7645.split.us.us.us
  %i.ffs = trunc nuw i64 %indvars.iv.next8405 to i32
  br label %._crit_edge7668

._crit_edge7668:                                  ; preds = %.preheader6890.preheader, %.preheader6890.us.preheader, %._crit_edge7668.loopexit, %._crit_edge7598
  %.06623.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7598 ], [ %.46627.us.us.us, %._crit_edge7668.loopexit ], [ zeroinitializer, %.preheader6890.us.preheader ], [ zeroinitializer, %.preheader6890.preheader ] ; 4 uses
  %.06618.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7598 ], [ %.46622.us.us.us, %._crit_edge7668.loopexit ], [ zeroinitializer, %.preheader6890.us.preheader ], [ zeroinitializer, %.preheader6890.preheader ] ; 4 uses
  %.21896.lcssa = phi ptr [ %.11895.lcssa, %._crit_edge7598 ], [ %i.ffo, %._crit_edge7668.loopexit ], [ %scevgep8384, %.preheader6890.us.preheader ], [ %scevgep8383, %.preheader6890.preheader ] ; 3 uses
  %.21891.lcssa = phi i32 [ %.11890.lcssa, %._crit_edge7598 ], [ %i.ffs, %._crit_edge7668.loopexit ], [ %i.fbt, %.preheader6890.us.preheader ], [ %i.fbk, %.preheader6890.preheader ] ; 5 uses
  %i.fft = shufflevector <4 x float> %i.eve, <4 x float> %i.evk, <2 x i32> <i32 3, i32 7>
  %i.ffu = shufflevector <4 x float> %i.eve, <4 x float> %i.evk, <2 x i32> <i32 1, i32 5>
  %i.ffv = fadd fast <2 x float> %i.fft, %i.ffu
  %i.ffw = fadd fast <2 x float> %i.ffv, %i.enq
  %i.ffx = shufflevector <4 x float> %i.eve, <4 x float> %i.evk, <2 x i32> <i32 2, i32 6>
  %i.ffy = shufflevector <4 x float> %i.eve, <4 x float> %i.evk, <2 x i32> <i32 0, i32 4>
  %i.ffz = fadd fast <2 x float> %i.ffx, %i.ffy
  %i.fga = fadd fast <2 x float> %i.ffw, %i.ffz
  %i.fgb = shufflevector <4 x float> %i.faq, <4 x float> %i.fat, <2 x i32> <i32 3, i32 7>
  %i.fgc = shufflevector <4 x float> %i.faq, <4 x float> %i.fat, <2 x i32> <i32 1, i32 5>
  %i.fgd = fadd fast <2 x float> %i.fgb, %i.fgc
  %i.fge = fadd fast <2 x float> %i.fga, %i.fgd
  %i.fgf = shufflevector <4 x float> %i.faq, <4 x float> %i.fat, <2 x i32> <i32 2, i32 6>
  %i.fgg = shufflevector <4 x float> %i.faq, <4 x float> %i.fat, <2 x i32> <i32 0, i32 4>
  %i.fgh = fadd fast <2 x float> %i.fgf, %i.fgg
  %i.fgi = fadd fast <2 x float> %i.fge, %i.fgh
  %i.fgj = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 3, i32 7>
  %i.fgk = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 1, i32 5>
  %i.fgl = fadd fast <2 x float> %i.fgj, %i.fgk
  %i.fgm = fadd fast <2 x float> %i.fgi, %i.fgl
  %i.fgn = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 2, i32 6>
  %i.fgo = shufflevector <4 x float> %.06623.lcssa, <4 x float> %.06618.lcssa, <2 x i32> <i32 0, i32 4>
  %i.fgp = fadd fast <2 x float> %i.fgn, %i.fgo
  %i.fgq = fadd fast <2 x float> %i.fgm, %i.fgp   ; 3 uses
  %i.fgr = or disjoint i32 %.21891.lcssa, 1
  %i.fgs = icmp slt i32 %i.fgr, %i.boc
  br i1 %i.fgs, label %.preheader6889.lr.ph, label %.preheader6893

.preheader6889.lr.ph:                             ; preds = %._crit_edge7668
  %i.fgt = load i32, ptr %i.j, align 4
  %invariant.op7708 = sub i32 %.neg6818, %i.fgt
  %i.fgu = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fgv = load i32, ptr %i.a, align 4
  %.fr8047 = freeze i32 %i.fgv                    ; 2 uses
  %i.fgw = icmp sgt i32 %.fr8047, 0
  %i.fgx = load i32, ptr %i.i, align 4
  %.neg6808 = add nuw nsw i32 %.019317777, 1
  %invariant.op7699 = sub i32 %.neg6808, %i.fgx
  %i.fgy = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.enc, label %.preheader6889.us.preheader, label %.preheader6889.preheader

.preheader6889.preheader:                         ; preds = %.preheader6889.lr.ph
  %i.fgz = sub i32 %i.bpm, %.21891.lcssa          ; 2 uses
  %i.fha = and i32 %i.fgz, -2
  %i.fhb = zext i32 %i.fha to i64
  %i.fhc = add nuw nsw i64 %i.fhb, 2
  %i.fhd = mul nsw i64 %i.fhc, %i.enl
  %scevgep8407 = getelementptr i8, ptr %.21896.lcssa, i64 %i.fhd
  %i.fhe = add nsw i32 %.21891.lcssa, 2
  %i.fhf = and i32 %i.fgz, -2
  %i.fhg = add i32 %i.fhe, %i.fhf
  br label %.preheader6893

.preheader6889.us.preheader:                      ; preds = %.preheader6889.lr.ph
  %i.fhh = load i32, ptr %i.c, align 4
  %i.fhi = load i32, ptr %i.d, align 4
  %i.fhj = zext i32 %.fr8047 to i64               ; 2 uses
  %i.fhk = zext i32 %.21891.lcssa to i64
  br label %.preheader6889.us

.preheader6889.us:                                ; preds = %.preheader6889.us.preheader, %._crit_edge7705.us
  %indvars.iv8421 = phi i64 [ %i.fhk, %.preheader6889.us.preheader ], [ %indvars.iv.next8422, %._crit_edge7705.us ] ; 3 uses
  %.318977716.us = phi ptr [ %.21896.lcssa, %.preheader6889.us.preheader ], [ %i.fjk, %._crit_edge7705.us ] ; 2 uses
  %i.fhl = phi <2 x float> [ %i.fgq, %.preheader6889.us.preheader ], [ %i.fjj, %._crit_edge7705.us ] ; 2 uses
  br i1 %i.fgw, label %.lr.ph7704.split.us.us.preheader, label %._crit_edge7705.us

.lr.ph7704.split.us.us.preheader:                 ; preds = %.preheader6889.us
  %i.fhm = or disjoint i64 %indvars.iv8421, 1
  br label %.lr.ph7704.split.us.us

.lr.ph7704.split.us.us:                           ; preds = %.lr.ph7704.split.us.us.preheader, %..loopexit6881_crit_edge.us.us
  %indvars.iv8416 = phi i64 [ 0, %.lr.ph7704.split.us.us.preheader ], [ %indvars.iv.next8417, %..loopexit6881_crit_edge.us.us ] ; 3 uses
  %i.fhn = phi <2 x float> [ %i.fhl, %.lr.ph7704.split.us.us.preheader ], [ %i.fji, %..loopexit6881_crit_edge.us.us ] ; 3 uses
  %i.fho = trunc i64 %indvars.iv8416 to i32
  %i.fhp = mul i32 %i.fhi, %i.fho
  %.reass7709.us.us = add i32 %i.fhp, %invariant.op7708 ; 3 uses
  %i.fhq = icmp slt i32 %.reass7709.us.us, 0
  br i1 %i.fhq, label %..loopexit6881_crit_edge.us.us, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph7704.split.us.us
  %i.fhr = srem i32 %.reass7709.us.us, %i.fgu
  %i.fhs = sdiv i32 %.reass7709.us.us, %i.fgu     ; 2 uses
  %.not2115.us.us = icmp eq i32 %i.fhr, 0
  %.not2116.us.us = icmp slt i32 %i.fhs, %i.bog
  %or.cond8997 = select i1 %.not2115.us.us, i1 %.not2116.us.us, i1 false
  br i1 %or.cond8997, label %.preheader6880.us.us, label %..loopexit6881_crit_edge.us.us

.preheader6880.us.us:                             ; preds = %bb.cf
  %i.fht = mul nuw nsw i64 %indvars.iv8416, %i.fhj
  %i.fhu = sext i32 %i.fhs to i64
  br label %bb.cg

bb.cg:                                            ; preds = %.loopexit6877.us.us, %.preheader6880.us.us
  %indvars.iv8411 = phi i64 [ %indvars.iv.next8412, %.loopexit6877.us.us ], [ 0, %.preheader6880.us.us ] ; 3 uses
  %i.fhv = phi <2 x float> [ %i.fjh, %.loopexit6877.us.us ], [ %i.fhn, %.preheader6880.us.us ] ; 3 uses
  %i.fhw = trunc i64 %indvars.iv8411 to i32
  %i.fhx = mul i32 %i.fhh, %i.fhw
  %.reass7700.us.us = add i32 %i.fhx, %invariant.op7699 ; 3 uses
  %i.fhy = icmp slt i32 %.reass7700.us.us, 0
  br i1 %i.fhy, label %.loopexit6877.us.us, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.fhz = srem i32 %.reass7700.us.us, %i.fgy
  %i.fia = sdiv i32 %.reass7700.us.us, %i.fgy     ; 2 uses
  %.not2117.us.us = icmp eq i32 %i.fhz, 0
  %.not2118.us.us = icmp slt i32 %i.fia, %i.boe
  %or.cond8998 = select i1 %.not2117.us.us, i1 %.not2118.us.us, i1 false
  br i1 %or.cond8998, label %_ZN4ncnn3MatD2Ev.exit2220.us.us, label %.loopexit6877.us.us

_ZN4ncnn3MatD2Ev.exit2220.us.us:                  ; preds = %bb.ch
  %i.fib = add nuw nsw i64 %i.fht, %indvars.iv8411
  %i.fic = shl i64 %i.fib, 2
  %i.fid = and i64 %i.fic, 4294967292
  %i.fie = getelementptr inbounds nuw [2 x i8], ptr %.318977716.us, i64 %i.fid
  %i.fif = load i32, ptr %i.bod, align 4, !tbaa !22, !noalias !257
  %i.fig = load ptr, ptr %0, align 8, !tbaa !19, !noalias !257
  %i.fih = load i64, ptr %i.bov, align 8, !tbaa !17, !noalias !257
  %i.fii = load i64, ptr %i.bow, align 8, !tbaa !24, !noalias !257 ; 2 uses
  %factor.op.mul.us.us7731 = mul i64 %i.fih, %i.fii ; 2 uses
  %i.fij = sext i32 %i.fif to i64
  %i.fik = mul nsw i64 %i.fij, %i.fhu
  %i.fil = mul i64 %i.fik, %i.fii
  %invariant.gep.us.us7732 = getelementptr i8, ptr %i.fig, i64 %i.fil
  %i.fim = sext i32 %i.fia to i64
  %invariant.gep7689.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7732, i64 %i.fim ; 2 uses
  %.reass.us7710.us = mul i64 %factor.op.mul.us.us7731, %indvars.iv8421
  %gep7690.us.us = getelementptr i8, ptr %invariant.gep7689.us.us, i64 %.reass.us7710.us
  %i.fin = load i16, ptr %gep7690.us.us, align 2, !tbaa !28
  %.reass.us7710.us.1 = mul i64 %factor.op.mul.us.us7731, %i.fhm
  %gep7690.us.us.1 = getelementptr i8, ptr %invariant.gep7689.us.us, i64 %.reass.us7710.us.1
  %i.fio = load i16, ptr %gep7690.us.us.1, align 2, !tbaa !28
  %i.fip = load <4 x i16>, ptr %i.fie, align 2, !tbaa !28
  %i.fiq = freeze <4 x i16> %i.fip
  %i.fir = bitcast <4 x i16> %i.fiq to <2 x i32>  ; 2 uses
  %i.fis = and <2 x i32> %i.fir, splat (i32 -65536)
  %i.fit = shl <2 x i32> %i.fir, splat (i32 16)
  %i.fiu = bitcast <2 x i32> %i.fit to <2 x float>
  %i.fiv = insertelement <2 x i16> poison, i16 %i.fio, i64 0
  %i.fiw = insertelement <2 x i16> %i.fiv, i16 %i.fin, i64 1
  %i.fix = zext <2 x i16> %i.fiw to <2 x i32>
  %i.fiy = shl nuw <2 x i32> %i.fix, splat (i32 16)
  %i.fiz = bitcast <2 x i32> %i.fiy to <2 x float> ; 2 uses
  %i.fja = shufflevector <2 x float> %i.fiz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fjb = fmul fast <2 x float> %i.fja, %i.fiu
  %i.fjc = fadd fast <2 x float> %i.fjb, %i.fhv
  %i.fjd = bitcast <2 x i32> %i.fis to <2 x float>
  %i.fje = shufflevector <2 x float> %i.fiz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fjf = fmul fast <2 x float> %i.fje, %i.fjd
  %i.fjg = fadd fast <2 x float> %i.fjf, %i.fjc
  br label %.loopexit6877.us.us

.loopexit6877.us.us:                              ; preds = %_ZN4ncnn3MatD2Ev.exit2220.us.us, %bb.ch, %bb.cg
  %i.fjh = phi <2 x float> [ %i.fhv, %bb.cg ], [ %i.fhv, %bb.ch ], [ %i.fjg, %_ZN4ncnn3MatD2Ev.exit2220.us.us ] ; 2 uses
  %indvars.iv.next8412 = add nuw nsw i64 %indvars.iv8411, 1 ; 2 uses
  %exitcond8415.not = icmp eq i64 %indvars.iv.next8412, %i.fhj
  br i1 %exitcond8415.not, label %..loopexit6881_crit_edge.us.us, label %bb.cg, !llvm.loop !164

..loopexit6881_crit_edge.us.us:                   ; preds = %.loopexit6877.us.us, %bb.cf, %.lr.ph7704.split.us.us
  %i.fji = phi <2 x float> [ %i.fhn, %.lr.ph7704.split.us.us ], [ %i.fhn, %bb.cf ], [ %i.fjh, %.loopexit6877.us.us ] ; 2 uses
  %indvars.iv.next8417 = add nuw nsw i64 %indvars.iv8416, 1 ; 2 uses
  %exitcond8420.not = icmp eq i64 %indvars.iv.next8417, %wide.trip.count8419
  br i1 %exitcond8420.not, label %._crit_edge7705.us, label %.lr.ph7704.split.us.us, !llvm.loop !165

._crit_edge7705.us:                               ; preds = %..loopexit6881_crit_edge.us.us, %.preheader6889.us
  %i.fjj = phi <2 x float> [ %i.fhl, %.preheader6889.us ], [ %i.fji, %..loopexit6881_crit_edge.us.us ] ; 2 uses
  %i.fjk = getelementptr inbounds [2 x i8], ptr %.318977716.us, i64 %i.enl ; 2 uses
  %indvars.iv.next8422 = add nuw nsw i64 %indvars.iv8421, 2 ; 3 uses
  %i.fjl = trunc i64 %indvars.iv.next8422 to i32
  %i.fjm = or i32 %i.fjl, 1
  %i.fjn = icmp slt i32 %i.fjm, %i.boc
  br i1 %i.fjn, label %.preheader6889.us, label %.preheader6893.loopexit, !llvm.loop !166

.preheader6893.loopexit:                          ; preds = %._crit_edge7705.us
  %i.fjo = trunc nuw i64 %indvars.iv.next8422 to i32
  br label %.preheader6893

.preheader6893:                                   ; preds = %.preheader6889.preheader, %.preheader6893.loopexit, %._crit_edge7668
  %.31897.lcssa = phi ptr [ %.21896.lcssa, %._crit_edge7668 ], [ %i.fjk, %.preheader6893.loopexit ], [ %scevgep8407, %.preheader6889.preheader ]
  %.31892.lcssa = phi i32 [ %.21891.lcssa, %._crit_edge7668 ], [ %i.fjo, %.preheader6893.loopexit ], [ %i.fhg, %.preheader6889.preheader ] ; 2 uses
  %i.fjp = phi <2 x float> [ %i.fgq, %._crit_edge7668 ], [ %i.fjj, %.preheader6893.loopexit ], [ %i.fgq, %.preheader6889.preheader ] ; 3 uses
  %i.fjq = icmp slt i32 %.31892.lcssa, %i.boc
  br i1 %i.fjq, label %.preheader6888.lr.ph, label %._crit_edge7761

.preheader6888.lr.ph:                             ; preds = %.preheader6893
  %i.fjr = load i32, ptr %i.d, align 4
  %i.fjs = load i32, ptr %i.j, align 4
  %invariant.op7750 = sub i32 %.neg6818, %i.fjs
  %i.fjt = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fju = load i32, ptr %i.a, align 4
  %.fr8048 = freeze i32 %i.fju                    ; 2 uses
  %i.fjv = load i32, ptr %i.c, align 4
  %i.fjw = load i32, ptr %i.i, align 4
  %.neg6804 = add nuw nsw i32 %.019317777, 1
  %invariant.op7742 = sub i32 %.neg6804, %i.fjw
  %i.fjx = load i32, ptr %i.e, align 4            ; 2 uses
  %i.fjy = icmp sgt i32 %.fr8048, 0
  %or.cond8888 = and i1 %i.enc, %i.fjy
  br i1 %or.cond8888, label %.preheader6888.us.us.preheader, label %._crit_edge7761

.preheader6888.us.us.preheader:                   ; preds = %.preheader6888.lr.ph
  %i.fjz = zext nneg i32 %.fr8048 to i64          ; 2 uses
  %i.fka = zext i32 %.31892.lcssa to i64
  br label %.preheader6888.us.us

.preheader6888.us.us:                             ; preds = %.preheader6888.us.us.preheader, %._crit_edge7747.split.us.us.us
  %indvars.iv8434 = phi i64 [ %i.fka, %.preheader6888.us.us.preheader ], [ %indvars.iv.next8435, %._crit_edge7747.split.us.us.us ] ; 2 uses
  %.418987758.us.us = phi ptr [ %.31897.lcssa, %.preheader6888.us.us.preheader ], [ %i.flt, %._crit_edge7747.split.us.us.us ] ; 2 uses
  %i.fkb = phi <2 x float> [ %i.fjp, %.preheader6888.us.us.preheader ], [ %i.fls, %._crit_edge7747.split.us.us.us ]
  br label %bb.ci

bb.ci:                                            ; preds = %..loopexit6879_crit_edge.us.us.us, %.preheader6888.us.us
  %indvars.iv8429 = phi i64 [ %indvars.iv.next8430, %..loopexit6879_crit_edge.us.us.us ], [ 0, %.preheader6888.us.us ] ; 3 uses
  %i.fkc = phi <2 x float> [ %i.fls, %..loopexit6879_crit_edge.us.us.us ], [ %i.fkb, %.preheader6888.us.us ] ; 3 uses
  %i.fkd = trunc i64 %indvars.iv8429 to i32
  %i.fke = mul i32 %i.fjr, %i.fkd
  %.reass7751.us.us.us = add i32 %i.fke, %invariant.op7750 ; 3 uses
  %i.fkf = icmp slt i32 %.reass7751.us.us.us, 0
  br i1 %i.fkf, label %..loopexit6879_crit_edge.us.us.us, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.fkg = srem i32 %.reass7751.us.us.us, %i.fjt
  %i.fkh = sdiv i32 %.reass7751.us.us.us, %i.fjt  ; 2 uses
  %.not2111.us.us.us = icmp eq i32 %i.fkg, 0
  %.not2112.us.us.us = icmp slt i32 %i.fkh, %i.bog
  %or.cond8999 = select i1 %.not2111.us.us.us, i1 %.not2112.us.us.us, i1 false
  br i1 %or.cond8999, label %.preheader6878.us.us.us, label %..loopexit6879_crit_edge.us.us.us

.preheader6878.us.us.us:                          ; preds = %bb.cj
  %i.fki = mul nuw nsw i64 %indvars.iv8429, %i.fjz
  %i.fkj = sext i32 %i.fkh to i64
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cm, %.preheader6878.us.us.us
  %indvars.iv8424 = phi i64 [ %indvars.iv.next8425, %bb.cm ], [ 0, %.preheader6878.us.us.us ] ; 3 uses
  %i.fkk = phi <2 x float> [ %i.flr, %bb.cm ], [ %i.fkc, %.preheader6878.us.us.us ] ; 3 uses
  %i.fkl = trunc i64 %indvars.iv8424 to i32
  %i.fkm = mul i32 %i.fjv, %i.fkl
  %.reass.us7752.us.us = add i32 %i.fkm, %invariant.op7742 ; 3 uses
  %i.fkn = icmp slt i32 %.reass.us7752.us.us, 0
  br i1 %i.fkn, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.fko = srem i32 %.reass.us7752.us.us, %i.fjx
  %i.fkp = sdiv i32 %.reass.us7752.us.us, %i.fjx  ; 2 uses
  %.not2113.us.us.us = icmp eq i32 %i.fko, 0
  %.not2114.us.us.us = icmp slt i32 %i.fkp, %i.boe
  %or.cond9000 = select i1 %.not2113.us.us.us, i1 %.not2114.us.us.us, i1 false
  br i1 %or.cond9000, label %_ZN4ncnn3MatD2Ev.exit2219.us.us.us, label %bb.cm

end_hunk_4
begin_hunk_5_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a

_ZN4ncnn3MatD2Ev.exit2213.us.us.us:               ; preds = %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %.pre-phi8597 = phi <16 x float> [ %.pre8596, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8588, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fsd, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %.pre-phi8595 = phi i64 [ %.pre8594, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8586, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frv, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.ftp = phi i64 [ %.pre8577, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8572, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frq, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.ftq = phi i64 [ %.pre8576, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8571, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fro, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %i.ftr = phi ptr [ %.pre8575, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %.pre8570, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frn, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ] ; 5 uses
  %.46614.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2213.us.us.us_crit_edge ], [ %i.fto, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fse, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fts = mul i64 %i.ftq, %i.fqd
  %i.ftt = mul i64 %i.fts, %i.ftp
  %i.ftu = getelementptr inbounds nuw i8, ptr %i.ftr, i64 %i.ftt
  %i.ftv = getelementptr inbounds nuw i8, ptr %i.ftu, i64 %.pre-phi8595
  %i.ftw = shl nsw i32 %i.frh, 2
  %i.ftx = sext i32 %i.ftw to i64                 ; 4 uses
  %i.fty = getelementptr inbounds [2 x i8], ptr %i.ftv, i64 %i.ftx
  %i.ftz = mul i64 %i.ftq, %i.fqe
  %i.fua = mul i64 %i.ftz, %i.ftp
  %i.fub = getelementptr inbounds nuw i8, ptr %i.ftr, i64 %i.fua
  %i.fuc = getelementptr inbounds nuw i8, ptr %i.fub, i64 %.pre-phi8595
  %i.fud = getelementptr inbounds [2 x i8], ptr %i.fuc, i64 %i.ftx
  %i.fue = mul i64 %i.ftq, %i.fqf
  %i.fuf = mul i64 %i.fue, %i.ftp
  %i.fug = getelementptr inbounds nuw i8, ptr %i.ftr, i64 %i.fuf
  %i.fuh = getelementptr inbounds nuw i8, ptr %i.fug, i64 %.pre-phi8595
  %i.fui = getelementptr inbounds [2 x i8], ptr %i.fuh, i64 %i.ftx
  %i.fuj = mul i64 %i.ftq, %i.fqg
  %i.fuk = mul i64 %i.fuj, %i.ftp
  %i.ful = getelementptr inbounds nuw i8, ptr %i.ftr, i64 %i.fuk
  %i.fum = getelementptr inbounds nuw i8, ptr %i.ful, i64 %.pre-phi8595
  %i.fun = getelementptr inbounds [2 x i8], ptr %i.fum, i64 %i.ftx
  %i.fuo = load i64, ptr %i.fty, align 1, !tbaa !26
  %i.fup = insertelement <2 x i64> poison, i64 %i.fuo, i64 0
  %i.fuq = bitcast <2 x i64> %i.fup to <8 x i16>
  %i.fur = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fuq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fus = bitcast <8 x i16> %i.fur to <4 x float>
  %i.fut = load i64, ptr %i.fud, align 1, !tbaa !26
  %i.fuu = insertelement <2 x i64> poison, i64 %i.fut, i64 0
  %i.fuv = bitcast <2 x i64> %i.fuu to <8 x i16>
  %i.fuw = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fuv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fux = bitcast <8 x i16> %i.fuw to <4 x float>
  %i.fuy = load i64, ptr %i.fui, align 1, !tbaa !26
  %i.fuz = insertelement <2 x i64> poison, i64 %i.fuy, i64 0
  %i.fva = bitcast <2 x i64> %i.fuz to <8 x i16>
  %i.fvb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fva, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvc = bitcast <8 x i16> %i.fvb to <4 x float>
  %i.fvd = load i64, ptr %i.fun, align 1, !tbaa !26
  %i.fve = insertelement <2 x i64> poison, i64 %i.fvd, i64 0
  %i.fvf = bitcast <2 x i64> %i.fve to <8 x i16>
  %i.fvg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.fvf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.fvh = bitcast <8 x i16> %i.fvg to <4 x float>
  %i.fvi = shufflevector <4 x float> %i.fus, <4 x float> %i.fux, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fvj = shufflevector <4 x float> %i.fvc, <4 x float> %i.fvh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.fvk = shufflevector <16 x float> %i.fvi, <16 x float> %i.fvj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.fvl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fvk, <16 x float> nofpclass(nan inf) %.pre-phi8597, <16 x float> nofpclass(nan inf) %.46614.us.us.us) ; 2 uses
  br i1 %i.elm, label %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, label %bb.cw

_ZN4ncnn3MatD2Ev.exit2209.us.us.us:               ; preds = %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us
  %.pre-phi8603 = phi i64 [ %.pre8602, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %.pre-phi8595, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8586, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frv, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fvm = phi i64 [ %.pre8582, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.ftp, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8572, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frq, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fvn = phi i64 [ %.pre8581, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.ftq, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8571, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fro, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %i.fvo = phi ptr [ %.pre8580, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.ftr, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.pre8570, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.frn, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %.56615.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.split2197.us.us.us._ZN4ncnn3MatD2Ev.exit2209.us.us.us_crit_edge ], [ %i.fvl, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %i.fto, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fse, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ]
  %factor.op.mul7794.us.us.us = mul i64 %i.fvn, %i.fvm ; 16 uses
  %invariant.gep.us.us7819.us = getelementptr i8, ptr %i.fvo, i64 %.pre-phi8603
  %i.fvp = sext i32 %i.frh to i64
  %invariant.gep7796.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7819.us, i64 %i.fvp ; 16 uses
  %.reass7795.us.us.us = mul i64 %factor.op.mul7794.us.us.us, %indvars.iv8460
  %gep7797.us.us.us = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us
  %i.fvq = load i16, ptr %gep7797.us.us.us, align 2, !tbaa !28
  %.reass7795.us.us.us.1 = mul i64 %factor.op.mul7794.us.us.us, %i.fqh
  %gep7797.us.us.us.1 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.1
  %i.fvr = load i16, ptr %gep7797.us.us.us.1, align 2, !tbaa !28
  %.reass7795.us.us.us.2 = mul i64 %factor.op.mul7794.us.us.us, %i.fqi
  %gep7797.us.us.us.2 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.2
  %i.fvs = load i16, ptr %gep7797.us.us.us.2, align 2, !tbaa !28
  %.reass7795.us.us.us.3 = mul i64 %factor.op.mul7794.us.us.us, %i.fqj
  %gep7797.us.us.us.3 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.3
  %i.fvt = load i16, ptr %gep7797.us.us.us.3, align 2, !tbaa !28
  %.reass7795.us.us.us.4 = mul i64 %factor.op.mul7794.us.us.us, %i.fqk
  %gep7797.us.us.us.4 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.4
  %i.fvu = load i16, ptr %gep7797.us.us.us.4, align 2, !tbaa !28
  %.reass7795.us.us.us.5 = mul i64 %factor.op.mul7794.us.us.us, %i.fql
  %gep7797.us.us.us.5 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.5
  %i.fvv = load i16, ptr %gep7797.us.us.us.5, align 2, !tbaa !28
  %.reass7795.us.us.us.6 = mul i64 %factor.op.mul7794.us.us.us, %i.fqm
  %gep7797.us.us.us.6 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.6
  %i.fvw = load i16, ptr %gep7797.us.us.us.6, align 2, !tbaa !28
  %.reass7795.us.us.us.7 = mul i64 %factor.op.mul7794.us.us.us, %i.fqn
  %gep7797.us.us.us.7 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.7
  %i.fvx = load i16, ptr %gep7797.us.us.us.7, align 2, !tbaa !28
  %.reass7795.us.us.us.8 = mul i64 %factor.op.mul7794.us.us.us, %i.fqo
  %gep7797.us.us.us.8 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.8
  %i.fvy = load i16, ptr %gep7797.us.us.us.8, align 2, !tbaa !28
  %.reass7795.us.us.us.9 = mul i64 %factor.op.mul7794.us.us.us, %i.fqp
  %gep7797.us.us.us.9 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.9
  %i.fvz = load i16, ptr %gep7797.us.us.us.9, align 2, !tbaa !28
  %.reass7795.us.us.us.10 = mul i64 %factor.op.mul7794.us.us.us, %i.fqq
  %gep7797.us.us.us.10 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.10
  %i.fwa = load i16, ptr %gep7797.us.us.us.10, align 2, !tbaa !28
  %.reass7795.us.us.us.11 = mul i64 %factor.op.mul7794.us.us.us, %i.fqr
  %gep7797.us.us.us.11 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.11
  %i.fwb = load i16, ptr %gep7797.us.us.us.11, align 2, !tbaa !28
  %.reass7795.us.us.us.12 = mul i64 %factor.op.mul7794.us.us.us, %i.fqs
  %gep7797.us.us.us.12 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.12
  %i.fwc = load i16, ptr %gep7797.us.us.us.12, align 2, !tbaa !28
  %.reass7795.us.us.us.13 = mul i64 %factor.op.mul7794.us.us.us, %i.fqt
  %gep7797.us.us.us.13 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.13
  %i.fwd = load i16, ptr %gep7797.us.us.us.13, align 2, !tbaa !28
  %.reass7795.us.us.us.14 = mul i64 %factor.op.mul7794.us.us.us, %i.fqu
  %gep7797.us.us.us.14 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.14
  %i.fwe = load i16, ptr %gep7797.us.us.us.14, align 2, !tbaa !28
  %.reass7795.us.us.us.15 = mul i64 %factor.op.mul7794.us.us.us, %i.fqv
  %gep7797.us.us.us.15 = getelementptr i8, ptr %invariant.gep7796.us.us.us, i64 %.reass7795.us.us.us.15
  %i.fwf = load i16, ptr %gep7797.us.us.us.15, align 2, !tbaa !28
  %i.fwg = insertelement <16 x i16> poison, i16 %i.fvq, i64 0
  %i.fwh = insertelement <16 x i16> %i.fwg, i16 %i.fvr, i64 1
  %i.fwi = insertelement <16 x i16> %i.fwh, i16 %i.fvs, i64 2
  %i.fwj = insertelement <16 x i16> %i.fwi, i16 %i.fvt, i64 3
  %i.fwk = insertelement <16 x i16> %i.fwj, i16 %i.fvu, i64 4
  %i.fwl = insertelement <16 x i16> %i.fwk, i16 %i.fvv, i64 5
  %i.fwm = insertelement <16 x i16> %i.fwl, i16 %i.fvw, i64 6
  %i.fwn = insertelement <16 x i16> %i.fwm, i16 %i.fvx, i64 7
  %i.fwo = insertelement <16 x i16> %i.fwn, i16 %i.fvy, i64 8
  %i.fwp = insertelement <16 x i16> %i.fwo, i16 %i.fvz, i64 9
  %i.fwq = insertelement <16 x i16> %i.fwp, i16 %i.fwa, i64 10
  %i.fwr = insertelement <16 x i16> %i.fwq, i16 %i.fwb, i64 11
  %i.fws = insertelement <16 x i16> %i.fwr, i16 %i.fwc, i64 12
  %i.fwt = insertelement <16 x i16> %i.fws, i16 %i.fwd, i64 13
  %i.fwu = insertelement <16 x i16> %i.fwt, i16 %i.fwe, i64 14
  %i.fwv = insertelement <16 x i16> %i.fwu, i16 %i.fwf, i64 15
  %i.fww = zext <16 x i16> %i.fwv to <16 x i32>
  %i.fwx = shl nuw <16 x i32> %i.fww, splat (i32 16)
  %.sroa.08545.60.vec.insert = bitcast <16 x i32> %i.fwx to <16 x float>
  %i.fwy = load <16 x bfloat>, ptr %i.frl, align 32, !tbaa !26
  %i.fwz = fpext fast <16 x bfloat> %i.fwy to <16 x float>
  %i.fxa = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sroa.08545.60.vec.insert, <16 x float> nofpclass(nan inf) %i.fwz, <16 x float> nofpclass(nan inf) %.56615.us.us.us)
  br label %bb.cw

bb.cw:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us, %.split2197.us.us.us, %bb.cv, %.lr.ph.split.us.us.us7838
  %.66616.us.us.us = phi nsz <16 x float> [ %.266127799.us.us.us, %.lr.ph.split.us.us.us7838 ], [ %.266127799.us.us.us, %.split2197.us.us.us ], [ %i.fse, %_ZN4ncnn3MatD2Ev.exit2216.us.us.us ], [ %i.fto, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us ], [ %i.fxa, %_ZN4ncnn3MatD2Ev.exit2209.us.us.us ], [ %i.fvl, %_ZN4ncnn3MatD2Ev.exit2213.us.us.us ], [ %.266127799.us.us.us, %bb.cv ], [ %i.fsw, %_ZN4ncnn3MatD2Ev.exit2215.us.us.us.thread ] ; 2 uses
  %indvars.iv.next8451 = add nuw nsw i64 %indvars.iv8450, 1 ; 2 uses
  %exitcond8454.not = icmp eq i64 %indvars.iv.next8451, %i.fpz
  br i1 %exitcond8454.not, label %..loopexit6869_crit_edge.us.us, label %.lr.ph.split.us.us.us7838, !llvm.loop !183

..loopexit6869_crit_edge.us.us:                   ; preds = %bb.cw, %.preheader6868.us.us, %bb.cu, %.lr.ph7808.split.us.us
  %.76617.us.us = phi nsz <16 x float> [ %.166117806.us.us, %.lr.ph7808.split.us.us ], [ %.166117806.us.us, %bb.cu ], [ %.166117806.us.us, %.preheader6868.us.us ], [ %.66616.us.us.us, %bb.cw ] ; 2 uses
  %indvars.iv.next8456 = add nuw nsw i64 %indvars.iv8455, 1 ; 2 uses
  %exitcond8459.not = icmp eq i64 %indvars.iv.next8456, %wide.trip.count8458
  br i1 %exitcond8459.not, label %._crit_edge7809.us, label %.lr.ph7808.split.us.us, !llvm.loop !184

._crit_edge7809.us:                               ; preds = %..loopexit6869_crit_edge.us.us, %.preheader6874.us
  %.us-phi7820.us = phi <16 x float> [ %.066107822.us, %.preheader6874.us ], [ %.76617.us.us, %..loopexit6869_crit_edge.us.us ] ; 2 uses
  %i.fxb = getelementptr inbounds [2 x i8], ptr %.018487823.us, i64 %i.fph ; 2 uses
  %indvars.iv.next8461 = add nuw nsw i64 %indvars.iv8460, 16 ; 3 uses
  %i.fxc = icmp slt i64 %indvars.iv.next8461, %invariant.op8780
  br i1 %i.fxc, label %.preheader6874.us, label %._crit_edge7827.loopexit, !llvm.loop !185

._crit_edge7827.loopexit:                         ; preds = %._crit_edge7809.us
  %i.fxd = trunc nuw nsw i64 %indvars.iv.next8461 to i32
  br label %._crit_edge7827

._crit_edge7827:                                  ; preds = %.preheader6874.lr.ph, %._crit_edge7827.loopexit, %_ZN4ncnn3MatD2Ev.exit2217
  %.06610.lcssa = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %.us-phi7820.us, %._crit_edge7827.loopexit ], [ zeroinitializer, %.preheader6874.lr.ph ] ; 3 uses
  %.01848.lcssa = phi ptr [ %i.fpc, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.fxb, %._crit_edge7827.loopexit ], [ %scevgep8445, %.preheader6874.lr.ph ] ; 3 uses
  %.01843.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2217 ], [ %i.fxd, %._crit_edge7827.loopexit ], [ %i.elx, %.preheader6874.lr.ph ] ; 5 uses
  %i.fxe = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.fxf = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fxg = fadd fast <8 x float> %i.fxe, %i.fxf   ; 2 uses
  %i.fxh = shufflevector <8 x float> %i.fxg, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fxi = shufflevector <8 x float> %i.fxg, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.fxj = fadd fast <4 x float> %i.fxh, %i.fxi   ; 2 uses
  %i.fxk = shufflevector <4 x float> %i.fxj, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %i.fxl = fadd fast <4 x float> %i.fxk, %i.fxj
  %i.fxm = extractelement <4 x float> %i.fxl, i64 1
  %i.fxn = shufflevector <16 x float> %.06610.lcssa, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %i.fxo = or disjoint i32 %.01843.lcssa, 7
  %i.fxp = icmp slt i32 %i.fxo, %i.ekr
  br i1 %i.fxp, label %.preheader6873.lr.ph, label %._crit_edge7866

.preheader6873.lr.ph:                             ; preds = %._crit_edge7827
  %i.fxq = load i32, ptr %i.j, align 4
  %invariant.op7857 = sub i32 %.neg6798, %i.fxq
  %i.fxr = load i32, ptr %i.f, align 4            ; 2 uses
  %i.fxs = load i32, ptr %i.a, align 4
  %.fr8052 = freeze i32 %i.fxs                    ; 2 uses
  %i.fxt = icmp sgt i32 %.fr8052, 0
  %i.fxu = load i32, ptr %i.i, align 4
  %.neg6796 = add nuw nsw i32 %.018688011, 1
  %invariant.op7850 = sub i32 %.neg6796, %i.fxu
  %i.fxv = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fpe, label %.preheader6873.us.preheader, label %.preheader6873.preheader

.preheader6873.preheader:                         ; preds = %.preheader6873.lr.ph
  %i.fxw = sub i32 %i.elz, %.01843.lcssa          ; 2 uses
  %i.fxx = lshr i32 %i.fxw, 2
  %i.fxy = and i32 %i.fxx, 1073741822
  %narrow8748 = add nuw nsw i32 %i.fxy, 2
  %i.fxz = zext nneg i32 %narrow8748 to i64
  %i.fya = mul nsw i64 %i.fpj, %i.fxz
  %scevgep8463 = getelementptr i8, ptr %.01848.lcssa, i64 %i.fya
  %i.fyb = add nsw i32 %.01843.lcssa, 8
  %i.fyc = and i32 %i.fxw, -8
  %i.fyd = add i32 %i.fyb, %i.fyc
  br label %._crit_edge7866

.preheader6873.us.preheader:                      ; preds = %.preheader6873.lr.ph
  %i.fye = load i32, ptr %i.c, align 4
  %i.fyf = load i32, ptr %i.d, align 4
  %i.fyg = zext i32 %.fr8052 to i64               ; 2 uses
  %i.fyh = zext i32 %.01843.lcssa to i64
  br label %.preheader6873.us

.preheader6873.us:                                ; preds = %.preheader6873.us.preheader, %._crit_edge7855.us
  %indvars.iv8478 = phi i64 [ %i.fyh, %.preheader6873.us.preheader ], [ %indvars.iv.next8479, %._crit_edge7855.us ] ; 11 uses
  %.118497862.us = phi ptr [ %.01848.lcssa, %.preheader6873.us.preheader ], [ %i.gci, %._crit_edge7855.us ] ; 2 uses
  %.066057861.us = phi <8 x float> [ zeroinitializer, %.preheader6873.us.preheader ], [ %.us-phi7859.us, %._crit_edge7855.us ] ; 2 uses
  %i.fyi = trunc nuw i64 %indvars.iv8478 to i32
  %i.fyj = lshr exact i32 %i.fyi, 2               ; 2 uses
  %i.fyk = zext nneg i32 %i.fyj to i64
  %i.fyl = or disjoint i32 %i.fyj, 1
  %i.fym = zext nneg i32 %i.fyl to i64
  %i.fyn = lshr exact i64 %indvars.iv8478, 3
  %i.fyo = and i64 %i.fyn, 536870911
  br i1 %i.fxt, label %.lr.ph7854.split.us.us.preheader, label %._crit_edge7855.us

.lr.ph7854.split.us.us.preheader:                 ; preds = %.preheader6873.us
  %i.fyp = or disjoint i64 %indvars.iv8478, 1
  %i.fyq = or disjoint i64 %indvars.iv8478, 2
  %i.fyr = or disjoint i64 %indvars.iv8478, 3
  %i.fys = or disjoint i64 %indvars.iv8478, 4
  %i.fyt = or disjoint i64 %indvars.iv8478, 5
  %i.fyu = or disjoint i64 %indvars.iv8478, 6
  %i.fyv = or disjoint i64 %indvars.iv8478, 7
  br label %.lr.ph7854.split.us.us

.lr.ph7854.split.us.us:                           ; preds = %.lr.ph7854.split.us.us.preheader, %..loopexit6867_crit_edge.us.us
  %indvars.iv8473 = phi i64 [ 0, %.lr.ph7854.split.us.us.preheader ], [ %indvars.iv.next8474, %..loopexit6867_crit_edge.us.us ] ; 3 uses
  %.166067852.us.us = phi <8 x float> [ %.066057861.us, %.lr.ph7854.split.us.us.preheader ], [ %.46609.us.us, %..loopexit6867_crit_edge.us.us ] ; 3 uses
  %i.fyw = trunc i64 %indvars.iv8473 to i32
  %i.fyx = mul i32 %i.fyf, %i.fyw
  %.reass7858.us.us = add i32 %i.fyx, %invariant.op7857 ; 3 uses
  %i.fyy = icmp slt i32 %.reass7858.us.us, 0
  br i1 %i.fyy, label %..loopexit6867_crit_edge.us.us, label %bb.cx

bb.cx:                                            ; preds = %.lr.ph7854.split.us.us
  %i.fyz = srem i32 %.reass7858.us.us, %i.fxr
  %i.fza = sdiv i32 %.reass7858.us.us, %i.fxr     ; 2 uses
  %.not2102.us.us = icmp eq i32 %i.fyz, 0
  %.not2103.us.us = icmp slt i32 %i.fza, %i.ekv
  %or.cond9003 = select i1 %.not2102.us.us, i1 %.not2103.us.us, i1 false
  br i1 %or.cond9003, label %.preheader6866.us.us, label %..loopexit6867_crit_edge.us.us

.preheader6866.us.us:                             ; preds = %bb.cx
  %i.fzb = mul nuw nsw i64 %indvars.iv8473, %i.fyg
  %i.fzc = sext i32 %i.fza to i64                 ; 3 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.db, %.preheader6866.us.us
  %indvars.iv8468 = phi i64 [ %indvars.iv.next8469, %bb.db ], [ 0, %.preheader6866.us.us ] ; 3 uses
  %.266077847.us.us = phi <8 x float> [ %.36608.us.us, %bb.db ], [ %.166067852.us.us, %.preheader6866.us.us ] ; 4 uses
  %i.fzd = trunc i64 %indvars.iv8468 to i32
  %i.fze = mul i32 %i.fye, %i.fzd
  %.reass7851.us.us = add i32 %i.fze, %invariant.op7850 ; 3 uses
  %i.fzf = icmp slt i32 %.reass7851.us.us, 0
  br i1 %i.fzf, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.fzg = srem i32 %.reass7851.us.us, %i.fxv
  %i.fzh = sdiv i32 %.reass7851.us.us, %i.fxv     ; 4 uses
  %.not2104.us.us = icmp eq i32 %i.fzg, 0
  %.not2105.us.us = icmp slt i32 %i.fzh, %i.ekt
  %or.cond9004 = select i1 %.not2104.us.us, i1 %.not2105.us.us, i1 false
  br i1 %or.cond9004, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.fzi = add nuw nsw i64 %i.fzb, %indvars.iv8468
  %i.fzj = shl i64 %i.fzi, 3
  %i.fzk = and i64 %i.fzj, 4294967288
  %i.fzl = getelementptr inbounds nuw [2 x i8], ptr %.118497862.us, i64 %i.fzk
  switch i32 %.fr8050, label %bb.db [
    i32 8, label %_ZN4ncnn3MatD2Ev.exit2208.us.us
    i32 4, label %_ZN4ncnn3MatD2Ev.exit2207.us.us
    i32 1, label %_ZN4ncnn3MatD2Ev.exit2205.us.us
  ]

_ZN4ncnn3MatD2Ev.exit2205.us.us:                  ; preds = %bb.da
  %i.fzm = load i32, ptr %i.eks, align 4, !tbaa !22, !noalias !263
  %i.fzn = load ptr, ptr %0, align 8, !tbaa !19, !noalias !263
  %i.fzo = load i64, ptr %i.elk, align 8, !tbaa !17, !noalias !263
  %i.fzp = load i64, ptr %i.ell, align 8, !tbaa !24, !noalias !263 ; 2 uses
  %factor.op.mul7842.us.us = mul i64 %i.fzo, %i.fzp ; 8 uses
  %i.fzq = sext i32 %i.fzm to i64
  %i.fzr = mul nsw i64 %i.fzq, %i.fzc
  %i.fzs = mul i64 %i.fzr, %i.fzp
  %invariant.gep.us.us7877 = getelementptr i8, ptr %i.fzn, i64 %i.fzs
  %i.fzt = sext i32 %i.fzh to i64
  %invariant.gep7844.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7877, i64 %i.fzt ; 8 uses
  %.reass7843.us.us = mul i64 %factor.op.mul7842.us.us, %indvars.iv8478
  %gep7845.us.us = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us
  %i.fzu = load i16, ptr %gep7845.us.us, align 2, !tbaa !28
  %.reass7843.us.us.1 = mul i64 %factor.op.mul7842.us.us, %i.fyp
  %gep7845.us.us.1 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.1
  %i.fzv = load i16, ptr %gep7845.us.us.1, align 2, !tbaa !28
  %.reass7843.us.us.2 = mul i64 %factor.op.mul7842.us.us, %i.fyq
  %gep7845.us.us.2 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.2
  %i.fzw = load i16, ptr %gep7845.us.us.2, align 2, !tbaa !28
  %.reass7843.us.us.3 = mul i64 %factor.op.mul7842.us.us, %i.fyr
  %gep7845.us.us.3 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.3
  %i.fzx = load i16, ptr %gep7845.us.us.3, align 2, !tbaa !28
  %.reass7843.us.us.4 = mul i64 %factor.op.mul7842.us.us, %i.fys
  %gep7845.us.us.4 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.4
  %i.fzy = load i16, ptr %gep7845.us.us.4, align 2, !tbaa !28
  %.reass7843.us.us.5 = mul i64 %factor.op.mul7842.us.us, %i.fyt
  %gep7845.us.us.5 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.5
  %i.fzz = load i16, ptr %gep7845.us.us.5, align 2, !tbaa !28
  %.reass7843.us.us.6 = mul i64 %factor.op.mul7842.us.us, %i.fyu
  %gep7845.us.us.6 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.6
  %i.gaa = load i16, ptr %gep7845.us.us.6, align 2, !tbaa !28
  %.reass7843.us.us.7 = mul i64 %factor.op.mul7842.us.us, %i.fyv
  %gep7845.us.us.7 = getelementptr i8, ptr %invariant.gep7844.us.us, i64 %.reass7843.us.us.7
  %i.gab = load i16, ptr %gep7845.us.us.7, align 2, !tbaa !28
  %i.gac = insertelement <8 x i16> poison, i16 %i.fzu, i64 0
  %i.gad = insertelement <8 x i16> %i.gac, i16 %i.fzv, i64 1
  %i.gae = insertelement <8 x i16> %i.gad, i16 %i.fzw, i64 2
  %i.gaf = insertelement <8 x i16> %i.gae, i16 %i.fzx, i64 3
  %i.gag = insertelement <8 x i16> %i.gaf, i16 %i.fzy, i64 4
  %i.gah = insertelement <8 x i16> %i.gag, i16 %i.fzz, i64 5
  %i.gai = insertelement <8 x i16> %i.gah, i16 %i.gaa, i64 6
  %i.gaj = insertelement <8 x i16> %i.gai, i16 %i.gab, i64 7
  %i.gak = zext <8 x i16> %i.gaj to <8 x i32>
  %i.gal = shl nuw <8 x i32> %i.gak, splat (i32 16)
  %.sroa.08543.28.vec.insert = bitcast <8 x i32> %i.gal to <8 x float>
  br label %.sink.split8889

_ZN4ncnn3MatD2Ev.exit2207.us.us:                  ; preds = %bb.da
  %i.gam = load i32, ptr %i.eks, align 4, !tbaa !22, !noalias !264
  %i.gan = load ptr, ptr %0, align 8, !tbaa !19, !noalias !264 ; 2 uses
  %i.gao = load i64, ptr %i.elk, align 8, !tbaa !17, !noalias !264 ; 2 uses
  %i.gap = mul i64 %i.gao, %i.fyk
  %i.gaq = load i64, ptr %i.ell, align 8, !tbaa !24, !noalias !264 ; 3 uses
  %i.gar = mul i64 %i.gap, %i.gaq
  %i.gas = getelementptr inbounds nuw i8, ptr %i.gan, i64 %i.gar
  %i.gat = sext i32 %i.gam to i64
  %i.gau = mul nsw i64 %i.gat, %i.fzc
  %i.gav = mul i64 %i.gau, %i.gaq                 ; 2 uses
  %i.gaw = getelementptr inbounds nuw i8, ptr %i.gas, i64 %i.gav
  %i.gax = shl nsw i32 %i.fzh, 2
  %i.gay = sext i32 %i.gax to i64                 ; 2 uses
  %i.gaz = getelementptr inbounds [2 x i8], ptr %i.gaw, i64 %i.gay
  %i.gba = mul i64 %i.gao, %i.fym
  %i.gbb = mul i64 %i.gba, %i.gaq
  %i.gbc = getelementptr inbounds nuw i8, ptr %i.gan, i64 %i.gbb
  %i.gbd = getelementptr inbounds nuw i8, ptr %i.gbc, i64 %i.gav
  %i.gbe = getelementptr inbounds [2 x i8], ptr %i.gbd, i64 %i.gay
  %i.gbf = load i64, ptr %i.gaz, align 1, !tbaa !26
  %i.gbg = insertelement <2 x i64> poison, i64 %i.gbf, i64 0
  %i.gbh = bitcast <2 x i64> %i.gbg to <8 x i16>
  %i.gbi = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gbh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gbj = load i64, ptr %i.gbe, align 1, !tbaa !26
  %i.gbk = insertelement <2 x i64> poison, i64 %i.gbj, i64 0
  %i.gbl = bitcast <2 x i64> %i.gbk to <8 x i16>
  %i.gbm = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gbl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gbn = shufflevector <8 x i16> %i.gbi, <8 x i16> %i.gbm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gbo = bitcast <16 x i16> %i.gbn to <8 x float>
  br label %.sink.split8889

_ZN4ncnn3MatD2Ev.exit2208.us.us:                  ; preds = %bb.da
  %i.gbp = load i32, ptr %i.eks, align 4, !tbaa !22, !noalias !265
  %i.gbq = load ptr, ptr %0, align 8, !tbaa !19, !noalias !265
  %i.gbr = load i64, ptr %i.elk, align 8, !tbaa !17, !noalias !265
  %i.gbs = mul i64 %i.gbr, %i.fyo
  %i.gbt = load i64, ptr %i.ell, align 8, !tbaa !24, !noalias !265 ; 2 uses
  %i.gbu = mul i64 %i.gbs, %i.gbt
  %i.gbv = getelementptr inbounds nuw i8, ptr %i.gbq, i64 %i.gbu
  %i.gbw = sext i32 %i.gbp to i64
  %i.gbx = mul nsw i64 %i.gbw, %i.fzc
  %i.gby = mul i64 %i.gbx, %i.gbt
  %i.gbz = getelementptr inbounds nuw i8, ptr %i.gbv, i64 %i.gby
  %i.gca = shl nsw i32 %i.fzh, 3
  %i.gcb = sext i32 %i.gca to i64
  %i.gcc = getelementptr inbounds [2 x i8], ptr %i.gbz, i64 %i.gcb
  %i.gcd = load <8 x bfloat>, ptr %i.gcc, align 16, !tbaa !26
  %i.gce = fpext fast <8 x bfloat> %i.gcd to <8 x float>
  br label %.sink.split8889

.sink.split8889:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2205.us.us, %_ZN4ncnn3MatD2Ev.exit2207.us.us, %_ZN4ncnn3MatD2Ev.exit2208.us.us
  %.sink8890 = phi <8 x float> [ %i.gce, %_ZN4ncnn3MatD2Ev.exit2208.us.us ], [ %i.gbo, %_ZN4ncnn3MatD2Ev.exit2207.us.us ], [ %.sroa.08543.28.vec.insert, %_ZN4ncnn3MatD2Ev.exit2205.us.us ]
  %i.gcf = load <8 x bfloat>, ptr %i.fzl, align 16, !tbaa !26
  %i.gcg = fpext fast <8 x bfloat> %i.gcf to <8 x float>
  %i.gch = call fast noundef nofpclass(nan inf) <8 x float> @llvm.fma.v8f32(<8 x float> nofpclass(nan inf) %.sink8890, <8 x float> nofpclass(nan inf) %i.gcg, <8 x float> nofpclass(nan inf) %.266077847.us.us)
  br label %bb.db

bb.db:                                            ; preds = %.sink.split8889, %bb.da, %bb.cz, %bb.cy
  %.36608.us.us = phi nsz <8 x float> [ %.266077847.us.us, %bb.cy ], [ %.266077847.us.us, %bb.da ], [ %.266077847.us.us, %bb.cz ], [ %i.gch, %.sink.split8889 ] ; 2 uses
  %indvars.iv.next8469 = add nuw nsw i64 %indvars.iv8468, 1 ; 2 uses
  %exitcond8472.not = icmp eq i64 %indvars.iv.next8469, %i.fyg
  br i1 %exitcond8472.not, label %..loopexit6867_crit_edge.us.us, label %bb.cy, !llvm.loop !192

..loopexit6867_crit_edge.us.us:                   ; preds = %bb.db, %bb.cx, %.lr.ph7854.split.us.us
  %.46609.us.us = phi nsz <8 x float> [ %.166067852.us.us, %.lr.ph7854.split.us.us ], [ %.166067852.us.us, %bb.cx ], [ %.36608.us.us, %bb.db ] ; 2 uses
  %indvars.iv.next8474 = add nuw nsw i64 %indvars.iv8473, 1 ; 2 uses
  %exitcond8477.not = icmp eq i64 %indvars.iv.next8474, %wide.trip.count8476
  br i1 %exitcond8477.not, label %._crit_edge7855.us, label %.lr.ph7854.split.us.us, !llvm.loop !193

._crit_edge7855.us:                               ; preds = %..loopexit6867_crit_edge.us.us, %.preheader6873.us
  %.us-phi7859.us = phi <8 x float> [ %.066057861.us, %.preheader6873.us ], [ %.46609.us.us, %..loopexit6867_crit_edge.us.us ] ; 2 uses
  %i.gci = getelementptr inbounds [2 x i8], ptr %.118497862.us, i64 %i.fpj ; 2 uses
  %indvars.iv.next8479 = add nuw nsw i64 %indvars.iv8478, 8 ; 3 uses
  %i.gcj = trunc i64 %indvars.iv.next8479 to i32
  %i.gck = or i32 %i.gcj, 7
  %i.gcl = icmp slt i32 %i.gck, %i.ekr
  br i1 %i.gcl, label %.preheader6873.us, label %._crit_edge7866.loopexit, !llvm.loop !194

._crit_edge7866.loopexit:                         ; preds = %._crit_edge7855.us
  %i.gcm = trunc nuw i64 %indvars.iv.next8479 to i32
  br label %._crit_edge7866

._crit_edge7866:                                  ; preds = %.preheader6873.preheader, %._crit_edge7866.loopexit, %._crit_edge7827
  %.06605.lcssa = phi <8 x float> [ zeroinitializer, %._crit_edge7827 ], [ %.us-phi7859.us, %._crit_edge7866.loopexit ], [ zeroinitializer, %.preheader6873.preheader ] ; 2 uses
  %.11849.lcssa = phi ptr [ %.01848.lcssa, %._crit_edge7827 ], [ %i.gci, %._crit_edge7866.loopexit ], [ %scevgep8463, %.preheader6873.preheader ] ; 4 uses
  %.11844.lcssa = phi i32 [ %.01843.lcssa, %._crit_edge7827 ], [ %i.gcm, %._crit_edge7866.loopexit ], [ %i.fyd, %.preheader6873.preheader ] ; 7 uses
  %i.gcn = shufflevector <8 x float> %.06605.lcssa, <8 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.gco = shufflevector <8 x float> %.06605.lcssa, <8 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.gcp = fadd fast <4 x float> %i.gcn, %i.gco   ; 2 uses
  %i.gcq = or disjoint i32 %.11844.lcssa, 3
  %i.gcr = icmp slt i32 %i.gcq, %i.ekr
  br i1 %i.gcr, label %.preheader6872.lr.ph, label %._crit_edge7924

.preheader6872.lr.ph:                             ; preds = %._crit_edge7866
  %i.gcs = load i32, ptr %i.d, align 4
  %i.gct = load i32, ptr %i.j, align 4
  %invariant.op7907 = sub i32 %.neg6798, %i.gct
  %i.gcu = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gcv = load i32, ptr %i.a, align 4
  %.fr8053 = freeze i32 %i.gcv                    ; 2 uses
  %i.gcw = load i32, ptr %i.c, align 4            ; 2 uses
  %i.gcx = load i32, ptr %i.i, align 4
  %.neg6792 = add nuw nsw i32 %.018688011, 1
  %invariant.op7889 = sub i32 %.neg6792, %i.gcx   ; 2 uses
  %i.gcy = load i32, ptr %i.e, align 4            ; 4 uses
  br i1 %i.fpe, label %.preheader6872.lr.ph.split.us, label %.preheader6872.preheader

.preheader6872.preheader:                         ; preds = %.preheader6872.lr.ph
  %i.gcz = sub i32 %i.ema, %.11844.lcssa          ; 2 uses
  %i.gda = lshr i32 %i.gcz, 1
  %i.gdb = and i32 %i.gda, 2147483646
  %narrow8749 = add nuw i32 %i.gdb, 2
  %i.gdc = zext i32 %narrow8749 to i64
  %i.gdd = mul nsw i64 %i.fpl, %i.gdc
  %scevgep8481 = getelementptr i8, ptr %.11849.lcssa, i64 %i.gdd
  %i.gde = add nsw i32 %.11844.lcssa, 4
  %i.gdf = and i32 %i.gcz, -4
  %i.gdg = add i32 %i.gde, %i.gdf
  br label %._crit_edge7924

.preheader6872.lr.ph.split.us:                    ; preds = %.preheader6872.lr.ph
  %i.gdh = icmp sgt i32 %.fr8053, 0
  br i1 %i.gdh, label %.preheader6872.us.us.preheader, label %.preheader6872.us.preheader

.preheader6872.us.preheader:                      ; preds = %.preheader6872.lr.ph.split.us
  %i.gdi = sub i32 %i.ema, %.11844.lcssa          ; 2 uses
  %i.gdj = lshr i32 %i.gdi, 1
  %i.gdk = and i32 %i.gdj, 2147483646
  %narrow8750 = add nuw i32 %i.gdk, 2
  %i.gdl = zext i32 %narrow8750 to i64
  %i.gdm = mul nsw i64 %i.fpl, %i.gdl
  %scevgep8482 = getelementptr i8, ptr %.11849.lcssa, i64 %i.gdm
  %i.gdn = add nsw i32 %.11844.lcssa, 4
  %i.gdo = and i32 %i.gdi, -4
  %i.gdp = add i32 %i.gdn, %i.gdo
  br label %._crit_edge7924

.preheader6872.us.us.preheader:                   ; preds = %.preheader6872.lr.ph.split.us
  %i.gdq = zext nneg i32 %.fr8053 to i64          ; 3 uses
  %i.gdr = zext i32 %.11844.lcssa to i64
  br label %.preheader6872.us.us

.preheader6872.us.us:                             ; preds = %.preheader6872.us.us.preheader, %._crit_edge7905.split.us.us.us
  %indvars.iv8502 = phi i64 [ %i.gdr, %.preheader6872.us.us.preheader ], [ %indvars.iv.next8503, %._crit_edge7905.split.us.us.us ] ; 6 uses
  %.218507920.us.us = phi ptr [ %.11849.lcssa, %.preheader6872.us.us.preheader ], [ %i.ggw, %._crit_edge7905.split.us.us.us ] ; 3 uses
  %.065417919.us.us = phi <4 x float> [ zeroinitializer, %.preheader6872.us.us.preheader ], [ %.46545.us.us.us, %._crit_edge7905.split.us.us.us ]
  %i.gds = lshr exact i64 %indvars.iv8502, 2
  %i.gdt = and i64 %i.gds, 1073741823
  %i.gdu = or disjoint i64 %indvars.iv8502, 1
  %i.gdv = or disjoint i64 %indvars.iv8502, 2
  %i.gdw = or disjoint i64 %indvars.iv8502, 3
  br label %bb.dc

bb.dc:                                            ; preds = %..loopexit6865_crit_edge.us.us.us, %.preheader6872.us.us
  %indvars.iv8497 = phi i64 [ %indvars.iv.next8498, %..loopexit6865_crit_edge.us.us.us ], [ 0, %.preheader6872.us.us ] ; 3 uses
  %.165427902.us.us.us = phi <4 x float> [ %.46545.us.us.us, %..loopexit6865_crit_edge.us.us.us ], [ %.065417919.us.us, %.preheader6872.us.us ] ; 5 uses
  %i.gdx = trunc i64 %indvars.iv8497 to i32
  %i.gdy = mul i32 %i.gcs, %i.gdx
  %.reass7908.us.us.us = add i32 %i.gdy, %invariant.op7907 ; 3 uses
  %i.gdz = icmp slt i32 %.reass7908.us.us.us, 0
  br i1 %i.gdz, label %..loopexit6865_crit_edge.us.us.us, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.gea = srem i32 %.reass7908.us.us.us, %i.gcu
  %i.geb = sdiv i32 %.reass7908.us.us.us, %i.gcu  ; 2 uses
  %.not2098.us.us.us = icmp eq i32 %i.gea, 0
  %.not2099.us.us.us = icmp slt i32 %i.geb, %i.ekv
  %or.cond9005 = select i1 %.not2098.us.us.us, i1 %.not2099.us.us.us, i1 false
  br i1 %or.cond9005, label %.preheader6864.us.us.us, label %..loopexit6865_crit_edge.us.us.us

.preheader6864.us.us.us:                          ; preds = %bb.dd
  %i.gec = mul nuw nsw i64 %indvars.iv8497, %i.gdq ; 2 uses
  %i.ged = sext i32 %i.geb to i64                 ; 2 uses
  switch i32 %.fr8050, label %..loopexit6865_crit_edge.us.us.us [
    i32 4, label %.lr.ph.split.us.us.us7935.us
    i32 1, label %.lr.ph.split.us7892.us.us.us
  ]

.lr.ph.split.us7892.us.us.us:                     ; preds = %.preheader6864.us.us.us, %bb.df
  %indvars.iv8487 = phi i64 [ %indvars.iv.next8488, %bb.df ], [ 0, %.preheader6864.us.us.us ] ; 3 uses
  %.265437886.us7894.us.us.us = phi <4 x float> [ %.36544.us7898.us.us.us, %bb.df ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ] ; 3 uses
  %i.gee = trunc i64 %indvars.iv8487 to i32
  %i.gef = mul i32 %i.gcw, %i.gee
  %.reass7890.us7895.us.us.us = add i32 %i.gef, %invariant.op7889 ; 3 uses
  %i.geg = icmp slt i32 %.reass7890.us7895.us.us.us, 0
  br i1 %i.geg, label %bb.df, label %bb.de

bb.de:                                            ; preds = %.lr.ph.split.us7892.us.us.us
  %i.geh = srem i32 %.reass7890.us7895.us.us.us, %i.gcy
  %i.gei = sdiv i32 %.reass7890.us7895.us.us.us, %i.gcy ; 2 uses
  %.not2100.us7896.us.us.us = icmp eq i32 %i.geh, 0
  %.not2101.us7897.us.us.us = icmp slt i32 %i.gei, %i.ekt
  %or.cond9006 = select i1 %.not2100.us7896.us.us.us, i1 %.not2101.us7897.us.us.us, i1 false
  br i1 %or.cond9006, label %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, label %bb.df

_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us:            ; preds = %bb.de
  %i.gej = load i32, ptr %i.eks, align 4, !tbaa !22, !noalias !266
  %i.gek = load ptr, ptr %0, align 8, !tbaa !19, !noalias !266
  %i.gel = load i64, ptr %i.elk, align 8, !tbaa !17, !noalias !266
  %i.gem = load i64, ptr %i.ell, align 8, !tbaa !24, !noalias !266 ; 2 uses
  %factor.op.mul7881.us.us.us.us = mul i64 %i.gel, %i.gem ; 4 uses
  %i.gen = sext i32 %i.gej to i64
  %i.geo = mul nsw i64 %i.gen, %i.ged
  %i.gep = mul i64 %i.geo, %i.gem
  %invariant.gep.us.us7909.us.us = getelementptr i8, ptr %i.gek, i64 %i.gep
  %i.geq = sext i32 %i.gei to i64
  %invariant.gep7883.us.us.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7909.us.us, i64 %i.geq ; 4 uses
  %.reass7882.us.us.us.us = mul i64 %factor.op.mul7881.us.us.us.us, %indvars.iv8502
  %gep7884.us.us.us.us = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us
  %i.ger = load i16, ptr %gep7884.us.us.us.us, align 2, !tbaa !28
  %.reass7882.us.us.us.us.1 = mul i64 %factor.op.mul7881.us.us.us.us, %i.gdu
  %gep7884.us.us.us.us.1 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.1
  %i.ges = load i16, ptr %gep7884.us.us.us.us.1, align 2, !tbaa !28
  %.reass7882.us.us.us.us.2 = mul i64 %factor.op.mul7881.us.us.us.us, %i.gdv
  %gep7884.us.us.us.us.2 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.2
  %i.get = load i16, ptr %gep7884.us.us.us.us.2, align 2, !tbaa !28
  %.reass7882.us.us.us.us.3 = mul i64 %factor.op.mul7881.us.us.us.us, %i.gdw
  %gep7884.us.us.us.us.3 = getelementptr i8, ptr %invariant.gep7883.us.us.us.us, i64 %.reass7882.us.us.us.us.3
  %i.geu = load i16, ptr %gep7884.us.us.us.us.3, align 2, !tbaa !28
  %i.gev = zext i16 %i.geu to i32
  %i.gew = zext i16 %i.get to i32
  %i.gex = zext i16 %i.ges to i32
  %i.gey = zext i16 %i.ger to i32
  %i.gez = insertelement <4 x i32> poison, i32 %i.gey, i64 0
  %i.gfa = insertelement <4 x i32> %i.gez, i32 %i.gex, i64 1
  %i.gfb = insertelement <4 x i32> %i.gfa, i32 %i.gew, i64 2
  %i.gfc = insertelement <4 x i32> %i.gfb, i32 %i.gev, i64 3
  %i.gfd = shl nuw <4 x i32> %i.gfc, splat (i32 16)
  %.sroa.0.12.vec.insert = bitcast <4 x i32> %i.gfd to <4 x float>
  %i.gfe = add nuw nsw i64 %i.gec, %indvars.iv8487
  %i.gff = shl i64 %i.gfe, 2
  %i.gfg = and i64 %i.gff, 4294967292
  %i.gfh = getelementptr inbounds nuw [2 x i8], ptr %.218507920.us.us, i64 %i.gfg
  %i.gfi = load i64, ptr %i.gfh, align 1, !tbaa !26
  %i.gfj = insertelement <2 x i64> poison, i64 %i.gfi, i64 0
  %i.gfk = bitcast <2 x i64> %i.gfj to <8 x i16>
  %i.gfl = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.gfk, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.gfm = bitcast <8 x i16> %i.gfl to <4 x float>
  %i.gfn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %.sroa.0.12.vec.insert, <4 x float> nofpclass(nan inf) %i.gfm, <4 x float> nofpclass(nan inf) %.265437886.us7894.us.us.us)
  br label %bb.df

bb.df:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us, %bb.de, %.lr.ph.split.us7892.us.us.us
  %.36544.us7898.us.us.us = phi nsz <4 x float> [ %.265437886.us7894.us.us.us, %.lr.ph.split.us7892.us.us.us ], [ %i.gfn, %_ZN4ncnn3MatD2Ev.exit2203.us.us.us.us ], [ %.265437886.us7894.us.us.us, %bb.de ] ; 2 uses
  %indvars.iv.next8488 = add nuw nsw i64 %indvars.iv8487, 1 ; 2 uses
  %exitcond8491.not = icmp eq i64 %indvars.iv.next8488, %i.gdq
  br i1 %exitcond8491.not, label %..loopexit6865_crit_edge.us.us.us, label %.lr.ph.split.us7892.us.us.us, !llvm.loop !197

.lr.ph.split.us.us.us7935.us:                     ; preds = %.preheader6864.us.us.us, %bb.dh
  %indvars.iv8492 = phi i64 [ %indvars.iv.next8493, %bb.dh ], [ 0, %.preheader6864.us.us.us ] ; 3 uses
  %.265437886.us.us.us.us = phi <4 x float> [ %.36544.us.us.us.us, %bb.dh ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ] ; 3 uses
  %i.gfo = trunc i64 %indvars.iv8492 to i32
  %i.gfp = mul i32 %i.gcw, %i.gfo
  %.reass7890.us.us.us.us = add i32 %i.gfp, %invariant.op7889 ; 3 uses
  %i.gfq = icmp slt i32 %.reass7890.us.us.us.us, 0
  br i1 %i.gfq, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %.lr.ph.split.us.us.us7935.us
  %i.gfr = srem i32 %.reass7890.us.us.us.us, %i.gcy
  %i.gfs = sdiv i32 %.reass7890.us.us.us.us, %i.gcy ; 2 uses
  %.not2100.us.us.us.us = icmp eq i32 %i.gfr, 0
  %.not2101.us.us.us.us = icmp slt i32 %i.gfs, %i.ekt
  %or.cond9007 = select i1 %.not2100.us.us.us.us, i1 %.not2101.us.us.us.us, i1 false
  br i1 %or.cond9007, label %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, label %bb.dh

_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us:            ; preds = %bb.dg
  %i.gft = add nuw nsw i64 %i.gec, %indvars.iv8492
  %i.gfu = shl i64 %i.gft, 2
  %i.gfv = and i64 %i.gfu, 4294967292
  %i.gfw = getelementptr inbounds nuw [2 x i8], ptr %.218507920.us.us, i64 %i.gfv
  %i.gfx = load i32, ptr %i.eks, align 4, !tbaa !22, !noalias !267
  %i.gfy = load ptr, ptr %0, align 8, !tbaa !19, !noalias !267
  %i.gfz = load i64, ptr %i.elk, align 8, !tbaa !17, !noalias !267
  %i.gga = mul i64 %i.gfz, %i.gdt
  %i.ggb = load i64, ptr %i.ell, align 8, !tbaa !24, !noalias !267 ; 2 uses
  %i.ggc = mul i64 %i.gga, %i.ggb
  %i.ggd = getelementptr inbounds nuw i8, ptr %i.gfy, i64 %i.ggc
  %i.gge = sext i32 %i.gfx to i64
  %i.ggf = mul nsw i64 %i.gge, %i.ged
  %i.ggg = mul i64 %i.ggf, %i.ggb
  %i.ggh = getelementptr inbounds nuw i8, ptr %i.ggd, i64 %i.ggg
  %i.ggi = shl nsw i32 %i.gfs, 2
  %i.ggj = sext i32 %i.ggi to i64
  %i.ggk = getelementptr inbounds [2 x i8], ptr %i.ggh, i64 %i.ggj
  %i.ggl = load i64, ptr %i.ggk, align 1, !tbaa !26
  %i.ggm = insertelement <2 x i64> poison, i64 %i.ggl, i64 0
  %i.ggn = bitcast <2 x i64> %i.ggm to <8 x i16>
  %i.ggo = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ggn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ggp = bitcast <8 x i16> %i.ggo to <4 x float>
  %i.ggq = load i64, ptr %i.gfw, align 1, !tbaa !26
  %i.ggr = insertelement <2 x i64> poison, i64 %i.ggq, i64 0
  %i.ggs = bitcast <2 x i64> %i.ggr to <8 x i16>
  %i.ggt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ggs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ggu = bitcast <8 x i16> %i.ggt to <4 x float>
  %i.ggv = call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.ggp, <4 x float> nofpclass(nan inf) %i.ggu, <4 x float> nofpclass(nan inf) %.265437886.us.us.us.us)
  br label %bb.dh

bb.dh:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us, %bb.dg, %.lr.ph.split.us.us.us7935.us
  %.36544.us.us.us.us = phi nsz <4 x float> [ %.265437886.us.us.us.us, %.lr.ph.split.us.us.us7935.us ], [ %.265437886.us.us.us.us, %bb.dg ], [ %i.ggv, %_ZN4ncnn3MatD2Ev.exit2204.us.us.us.us ] ; 2 uses
  %indvars.iv.next8493 = add nuw nsw i64 %indvars.iv8492, 1 ; 2 uses
  %exitcond8496.not = icmp eq i64 %indvars.iv.next8493, %i.gdq
  br i1 %exitcond8496.not, label %..loopexit6865_crit_edge.us.us.us, label %.lr.ph.split.us.us.us7935.us, !llvm.loop !197

..loopexit6865_crit_edge.us.us.us:                ; preds = %bb.df, %bb.dh, %.preheader6864.us.us.us, %bb.dd, %bb.dc
  %.46545.us.us.us = phi nsz <4 x float> [ %.165427902.us.us.us, %bb.dc ], [ %.165427902.us.us.us, %bb.dd ], [ %.36544.us.us.us.us, %bb.dh ], [ %.165427902.us.us.us, %.preheader6864.us.us.us ], [ %.36544.us7898.us.us.us, %bb.df ] ; 3 uses
  %indvars.iv.next8498 = add nuw nsw i64 %indvars.iv8497, 1 ; 2 uses
  %exitcond8501.not = icmp eq i64 %indvars.iv.next8498, %wide.trip.count8500
  br i1 %exitcond8501.not, label %._crit_edge7905.split.us.us.us, label %bb.dc, !llvm.loop !200

._crit_edge7905.split.us.us.us:                   ; preds = %..loopexit6865_crit_edge.us.us.us
  %i.ggw = getelementptr inbounds [2 x i8], ptr %.218507920.us.us, i64 %i.fpl ; 2 uses
  %indvars.iv.next8503 = add nuw nsw i64 %indvars.iv8502, 4 ; 3 uses
  %i.ggx = trunc i64 %indvars.iv.next8503 to i32
  %i.ggy = or i32 %i.ggx, 3
  %i.ggz = icmp slt i32 %i.ggy, %i.ekr
  br i1 %i.ggz, label %.preheader6872.us.us, label %._crit_edge7924.loopexit, !llvm.loop !201

._crit_edge7924.loopexit:                         ; preds = %._crit_edge7905.split.us.us.us
  %i.gha = trunc nuw i64 %indvars.iv.next8503 to i32
  br label %._crit_edge7924

._crit_edge7924:                                  ; preds = %.preheader6872.preheader, %.preheader6872.us.preheader, %._crit_edge7924.loopexit, %._crit_edge7866
  %.06541.lcssa = phi <4 x float> [ zeroinitializer, %._crit_edge7866 ], [ %.46545.us.us.us, %._crit_edge7924.loopexit ], [ zeroinitializer, %.preheader6872.us.preheader ], [ zeroinitializer, %.preheader6872.preheader ] ; 2 uses
  %.21850.lcssa = phi ptr [ %.11849.lcssa, %._crit_edge7866 ], [ %i.ggw, %._crit_edge7924.loopexit ], [ %scevgep8482, %.preheader6872.us.preheader ], [ %scevgep8481, %.preheader6872.preheader ] ; 3 uses
  %.21845.lcssa = phi i32 [ %.11844.lcssa, %._crit_edge7866 ], [ %i.gha, %._crit_edge7924.loopexit ], [ %i.gdp, %.preheader6872.us.preheader ], [ %i.gdg, %.preheader6872.preheader ] ; 5 uses
  %i.ghb = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.gcp, <4 x i32> <i32 3, i32 2, i32 7, i32 6>
  %i.ghc = shufflevector <4 x float> %.06541.lcssa, <4 x float> %i.gcp, <4 x i32> <i32 1, i32 0, i32 5, i32 4>
  %i.ghd = fadd fast <4 x float> %i.ghb, %i.ghc
  %op.rdx = call fast float @llvm.vector.reduce.fadd.v4f32(float %i.fxm, <4 x float> %i.ghd)
  %op.rdx8916 = call fast float @llvm.vector.reduce.fadd.v8f32(float %.01853, <8 x float> %i.fxn)
  %op.rdx8917 = fadd fast float %op.rdx, %op.rdx8916 ; 3 uses
  %i.ghe = or disjoint i32 %.21845.lcssa, 1
  %i.ghf = icmp slt i32 %i.ghe, %i.ekr
  br i1 %i.ghf, label %.preheader6871.lr.ph, label %.preheader6875

.preheader6871.lr.ph:                             ; preds = %._crit_edge7924
  %i.ghg = load i32, ptr %i.j, align 4
  %invariant.op7958 = sub i32 %.neg6798, %i.ghg
  %i.ghh = load i32, ptr %i.f, align 4            ; 2 uses
  %i.ghi = load i32, ptr %i.a, align 4
  %.fr8054 = freeze i32 %i.ghi                    ; 2 uses
  %i.ghj = icmp sgt i32 %.fr8054, 0
  %i.ghk = load i32, ptr %i.i, align 4
  %.neg6788 = add nuw nsw i32 %.018688011, 1
  %invariant.op7951 = sub i32 %.neg6788, %i.ghk
  %i.ghl = load i32, ptr %i.e, align 4            ; 2 uses
  br i1 %i.fpe, label %.preheader6871.us.preheader, label %.preheader6871.preheader

.preheader6871.preheader:                         ; preds = %.preheader6871.lr.ph
  %i.ghm = sub i32 %i.emb, %.21845.lcssa          ; 2 uses
  %i.ghn = and i32 %i.ghm, -2
  %i.gho = zext i32 %i.ghn to i64
  %i.ghp = add nuw nsw i64 %i.gho, 2
  %i.ghq = mul nsw i64 %i.ghp, %i.fpn
  %scevgep8505 = getelementptr i8, ptr %.21850.lcssa, i64 %i.ghq
  %i.ghr = add nsw i32 %.21845.lcssa, 2
  %i.ghs = and i32 %i.ghm, -2
  %i.ght = add i32 %i.ghr, %i.ghs
  br label %.preheader6875

.preheader6871.us.preheader:                      ; preds = %.preheader6871.lr.ph
  %i.ghu = load i32, ptr %i.c, align 4
  %i.ghv = load i32, ptr %i.d, align 4
  %i.ghw = zext i32 %.fr8054 to i64               ; 2 uses
  %i.ghx = zext i32 %.21845.lcssa to i64
  br label %.preheader6871.us

.preheader6871.us:                                ; preds = %.preheader6871.us.preheader, %._crit_edge7956.us
  %indvars.iv8519 = phi i64 [ %i.ghx, %.preheader6871.us.preheader ], [ %indvars.iv.next8520, %._crit_edge7956.us ] ; 3 uses
  %.318517963.us = phi ptr [ %.21850.lcssa, %.preheader6871.us.preheader ], [ %i.gjq, %._crit_edge7956.us ] ; 2 uses
  %.118547962.us = phi float [ %op.rdx8917, %.preheader6871.us.preheader ], [ %.us-phi7960.us, %._crit_edge7956.us ] ; 2 uses
  br i1 %i.ghj, label %.lr.ph7955.split.us.us.preheader, label %._crit_edge7956.us

.lr.ph7955.split.us.us.preheader:                 ; preds = %.preheader6871.us
  %i.ghy = or disjoint i64 %indvars.iv8519, 1
  br label %.lr.ph7955.split.us.us

.lr.ph7955.split.us.us:                           ; preds = %.lr.ph7955.split.us.us.preheader, %..loopexit6863_crit_edge.us.us
  %indvars.iv8514 = phi i64 [ 0, %.lr.ph7955.split.us.us.preheader ], [ %indvars.iv.next8515, %..loopexit6863_crit_edge.us.us ] ; 3 uses
  %.218557953.us.us = phi float [ %.118547962.us, %.lr.ph7955.split.us.us.preheader ], [ %.81861.us.us, %..loopexit6863_crit_edge.us.us ] ; 3 uses
  %i.ghz = trunc i64 %indvars.iv8514 to i32
  %i.gia = mul i32 %i.ghv, %i.ghz
  %.reass7959.us.us = add i32 %i.gia, %invariant.op7958 ; 3 uses
  %i.gib = icmp slt i32 %.reass7959.us.us, 0
  br i1 %i.gib, label %..loopexit6863_crit_edge.us.us, label %bb.di

bb.di:                                            ; preds = %.lr.ph7955.split.us.us
  %i.gic = srem i32 %.reass7959.us.us, %i.ghh
  %i.gid = sdiv i32 %.reass7959.us.us, %i.ghh     ; 2 uses
  %.not2094.us.us = icmp eq i32 %i.gic, 0
  %.not2095.us.us = icmp slt i32 %i.gid, %i.ekv
  %or.cond9008 = select i1 %.not2094.us.us, i1 %.not2095.us.us, i1 false
  br i1 %or.cond9008, label %.preheader6862.us.us, label %..loopexit6863_crit_edge.us.us

.preheader6862.us.us:                             ; preds = %bb.di
  %i.gie = mul nuw nsw i64 %indvars.iv8514, %i.ghw
  %i.gif = sext i32 %i.gid to i64
  br label %bb.dj

bb.dj:                                            ; preds = %.loopexit.us.us, %.preheader6862.us.us
  %indvars.iv8509 = phi i64 [ %indvars.iv.next8510, %.loopexit.us.us ], [ 0, %.preheader6862.us.us ] ; 3 uses
  %.318567948.us.us = phi float [ %.61859.us.us, %.loopexit.us.us ], [ %.218557953.us.us, %.preheader6862.us.us ] ; 3 uses
  %i.gig = trunc i64 %indvars.iv8509 to i32
  %i.gih = mul i32 %i.ghu, %i.gig
  %.reass7952.us.us = add i32 %i.gih, %invariant.op7951 ; 3 uses
  %i.gii = icmp slt i32 %.reass7952.us.us, 0
  br i1 %i.gii, label %.loopexit.us.us, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.gij = srem i32 %.reass7952.us.us, %i.ghl
  %i.gik = sdiv i32 %.reass7952.us.us, %i.ghl     ; 2 uses
  %.not2096.us.us = icmp eq i32 %i.gij, 0
  %.not2097.us.us = icmp slt i32 %i.gik, %i.ekt
  %or.cond9009 = select i1 %.not2096.us.us, i1 %.not2097.us.us, i1 false
  br i1 %or.cond9009, label %_ZN4ncnn3MatD2Ev.exit2202.us.us, label %.loopexit.us.us

_ZN4ncnn3MatD2Ev.exit2202.us.us:                  ; preds = %bb.dk
  %i.gil = add nuw nsw i64 %i.gie, %indvars.iv8509
  %.idx8751 = shl nuw nsw i64 %i.gil, 2
  %i.gim = getelementptr inbounds nuw i8, ptr %.318517963.us, i64 %.idx8751 ; 2 uses
  %i.gin = load i32, ptr %i.eks, align 4, !tbaa !22, !noalias !268
  %i.gio = load ptr, ptr %0, align 8, !tbaa !19, !noalias !268
  %i.gip = load i64, ptr %i.elk, align 8, !tbaa !17, !noalias !268
  %i.giq = load i64, ptr %i.ell, align 8, !tbaa !24, !noalias !268 ; 2 uses
  %factor.op.mul7942.us.us = mul i64 %i.gip, %i.giq ; 2 uses
  %i.gir = sext i32 %i.gin to i64
  %i.gis = mul nsw i64 %i.gir, %i.gif
  %i.git = mul i64 %i.gis, %i.giq
  %invariant.gep.us.us7977 = getelementptr i8, ptr %i.gio, i64 %i.git
  %i.giu = sext i32 %i.gik to i64
  %invariant.gep7944.us.us = getelementptr [2 x i8], ptr %invariant.gep.us.us7977, i64 %i.giu ; 2 uses
  %.reass7943.us.us = mul i64 %factor.op.mul7942.us.us, %indvars.iv8519
  %gep7945.us.us = getelementptr i8, ptr %invariant.gep7944.us.us, i64 %.reass7943.us.us
  %i.giv = load i16, ptr %gep7945.us.us, align 2, !tbaa !28
  %i.giw = zext i16 %i.giv to i32
  %i.gix = shl nuw i32 %i.giw, 16
  %i.giy = bitcast i32 %i.gix to float
  %i.giz = load i16, ptr %i.gim, align 2, !tbaa !28
  %i.gja = zext i16 %i.giz to i32
  %i.gjb = shl nuw i32 %i.gja, 16
  %i.gjc = bitcast i32 %i.gjb to float
  %i.gjd = fmul fast float %i.gjc, %i.giy
  %i.gje = fadd fast float %i.gjd, %.318567948.us.us
  %.reass7943.us.us.1 = mul i64 %factor.op.mul7942.us.us, %i.ghy
  %gep7945.us.us.1 = getelementptr i8, ptr %invariant.gep7944.us.us, i64 %.reass7943.us.us.1
  %i.gjf = load i16, ptr %gep7945.us.us.1, align 2, !tbaa !28
  %i.gjg = zext i16 %i.gjf to i32
  %i.gjh = shl nuw i32 %i.gjg, 16
  %i.gji = bitcast i32 %i.gjh to float
  %i.gjj = getelementptr inbounds nuw i8, ptr %i.gim, i64 2
  %i.gjk = load i16, ptr %i.gjj, align 2, !tbaa !28
  %i.gjl = zext i16 %i.gjk to i32
  %i.gjm = shl nuw i32 %i.gjl, 16
  %i.gjn = bitcast i32 %i.gjm to float
  %i.gjo = fmul fast float %i.gjn, %i.gji
  %i.gjp = fadd fast float %i.gjo, %i.gje
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %_ZN4ncnn3MatD2Ev.exit2202.us.us, %bb.dk, %bb.dj
  %.61859.us.us = phi nsz float [ %.318567948.us.us, %bb.dj ], [ %.318567948.us.us, %bb.dk ], [ %i.gjp, %_ZN4ncnn3MatD2Ev.exit2202.us.us ] ; 2 uses
  %indvars.iv.next8510 = add nuw nsw i64 %indvars.iv8509, 1 ; 2 uses
  %exitcond8513.not = icmp eq i64 %indvars.iv.next8510, %i.ghw
  br i1 %exitcond8513.not, label %..loopexit6863_crit_edge.us.us, label %bb.dj, !llvm.loop !204

..loopexit6863_crit_edge.us.us:                   ; preds = %.loopexit.us.us, %bb.di, %.lr.ph7955.split.us.us
  %.81861.us.us = phi nsz float [ %.218557953.us.us, %.lr.ph7955.split.us.us ], [ %.218557953.us.us, %bb.di ], [ %.61859.us.us, %.loopexit.us.us ] ; 2 uses
  %indvars.iv.next8515 = add nuw nsw i64 %indvars.iv8514, 1 ; 2 uses
  %exitcond8518.not = icmp eq i64 %indvars.iv.next8515, %wide.trip.count8517
  br i1 %exitcond8518.not, label %._crit_edge7956.us, label %.lr.ph7955.split.us.us, !llvm.loop !205

._crit_edge7956.us:                               ; preds = %..loopexit6863_crit_edge.us.us, %.preheader6871.us
  %.us-phi7960.us = phi float [ %.118547962.us, %.preheader6871.us ], [ %.81861.us.us, %..loopexit6863_crit_edge.us.us ] ; 2 uses
  %i.gjq = getelementptr inbounds [2 x i8], ptr %.318517963.us, i64 %i.fpn ; 2 uses
  %indvars.iv.next8520 = add nuw nsw i64 %indvars.iv8519, 2 ; 3 uses
  %i.gjr = trunc i64 %indvars.iv.next8520 to i32
  %i.gjs = or i32 %i.gjr, 1
  %i.gjt = icmp slt i32 %i.gjs, %i.ekr
  br i1 %i.gjt, label %.preheader6871.us, label %.preheader6875.loopexit, !llvm.loop !206

.preheader6875.loopexit:                          ; preds = %._crit_edge7956.us
  %i.gju = trunc nuw i64 %indvars.iv.next8520 to i32
  br label %.preheader6875

.preheader6875:                                   ; preds = %.preheader6871.preheader, %.preheader6875.loopexit, %._crit_edge7924
  %.11854.lcssa = phi float [ %op.rdx8917, %._crit_edge7924 ], [ %.us-phi7960.us, %.preheader6875.loopexit ], [ %op.rdx8917, %.preheader6871.preheader ] ; 3 uses
  %.31851.lcssa = phi ptr [ %.21850.lcssa, %._crit_edge7924 ], [ %i.gjq, %.preheader6875.loopexit ], [ %scevgep8505, %.preheader6871.preheader ]
  %.31846.lcssa = phi i32 [ %.21845.lcssa, %._crit_edge7924 ], [ %i.gju, %.preheader6875.loopexit ], [ %i.ght, %.preheader6871.preheader ] ; 2 uses
  %i.gjv = icmp slt i32 %.31846.lcssa, %i.ekr
  br i1 %i.gjv, label %.preheader6870.lr.ph, label %._crit_edge7999

.preheader6870.lr.ph:                             ; preds = %.preheader6875
  %i.gjw = load i32, ptr %i.d, align 4
  %i.gjx = load i32, ptr %i.j, align 4
  %invariant.op7991 = sub i32 %.neg6798, %i.gjx
  %i.gjy = load i32, ptr %i.f, align 4            ; 2 uses
  %i.gjz = load i32, ptr %i.a, align 4
  %.fr8055 = freeze i32 %i.gjz                    ; 2 uses
  %i.gka = load i32, ptr %i.c, align 4
  %i.gkb = load i32, ptr %i.i, align 4
  %.neg6784 = add nuw nsw i32 %.018688011, 1
  %invariant.op7984 = sub i32 %.neg6784, %i.gkb
  %i.gkc = load i32, ptr %i.e, align 4            ; 2 uses
  %i.gkd = icmp sgt i32 %.fr8055, 0
  %or.cond8893 = and i1 %i.fpe, %i.gkd
  br i1 %or.cond8893, label %.preheader6870.us.us.preheader, label %._crit_edge7999

.preheader6870.us.us.preheader:                   ; preds = %.preheader6870.lr.ph
  %i.gke = zext nneg i32 %.fr8055 to i64          ; 2 uses
  %i.gkf = zext i32 %.31846.lcssa to i64
  br label %.preheader6870.us.us

.preheader6870.us.us:                             ; preds = %.preheader6870.us.us.preheader, %._crit_edge7989.split.us.us.us
  %indvars.iv8532 = phi i64 [ %i.gkf, %.preheader6870.us.us.preheader ], [ %indvars.iv.next8533, %._crit_edge7989.split.us.us.us ] ; 2 uses
  %.418527996.us.us = phi ptr [ %.31851.lcssa, %.preheader6870.us.us.preheader ], [ %i.glr, %._crit_edge7989.split.us.us.us ] ; 2 uses
  %.918627995.us.us = phi float [ %.11854.lcssa, %.preheader6870.us.us.preheader ], [ %.15.us.us.us, %._crit_edge7989.split.us.us.us ]
  br label %bb.dl

bb.dl:                                            ; preds = %..loopexit6861_crit_edge.us.us.us, %.preheader6870.us.us
  %indvars.iv8527 = phi i64 [ %indvars.iv.next8528, %..loopexit6861_crit_edge.us.us.us ], [ 0, %.preheader6870.us.us ] ; 3 uses
  %.1018637986.us.us.us = phi float [ %.15.us.us.us, %..loopexit6861_crit_edge.us.us.us ], [ %.918627995.us.us, %.preheader6870.us.us ] ; 3 uses
  %i.gkg = trunc i64 %indvars.iv8527 to i32
  %i.gkh = mul i32 %i.gjw, %i.gkg
  %.reass7992.us.us.us = add i32 %i.gkh, %invariant.op7991 ; 3 uses
  %i.gki = icmp slt i32 %.reass7992.us.us.us, 0
  br i1 %i.gki, label %..loopexit6861_crit_edge.us.us.us, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.gkj = srem i32 %.reass7992.us.us.us, %i.gjy
  %i.gkk = sdiv i32 %.reass7992.us.us.us, %i.gjy  ; 2 uses
  %.not2090.us.us.us = icmp eq i32 %i.gkj, 0
  %.not2091.us.us.us = icmp slt i32 %i.gkk, %i.ekv
  %or.cond9010 = select i1 %.not2090.us.us.us, i1 %.not2091.us.us.us, i1 false
  br i1 %or.cond9010, label %.preheader.us.us.us, label %..loopexit6861_crit_edge.us.us.us

.preheader.us.us.us:                              ; preds = %bb.dm
  %i.gkl = mul nuw nsw i64 %indvars.iv8527, %i.gke
  %i.gkm = sext i32 %i.gkk to i64
  %i.gkn = getelementptr inbounds nuw [2 x i8], ptr %.418527996.us.us, i64 %i.gkl
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dp, %.preheader.us.us.us
  %indvars.iv8522 = phi i64 [ %indvars.iv.next8523, %bb.dp ], [ 0, %.preheader.us.us.us ] ; 3 uses
  %.1118647981.us.us.us = phi float [ %.131866.us.us.us, %bb.dp ], [ %.1018637986.us.us.us, %.preheader.us.us.us ] ; 3 uses
  %i.gko = trunc i64 %indvars.iv8522 to i32
  %i.gkp = mul i32 %i.gka, %i.gko
  %.reass7985.us.us.us = add i32 %i.gkp, %invariant.op7984 ; 3 uses
  %i.gkq = icmp slt i32 %.reass7985.us.us.us, 0
  br i1 %i.gkq, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.gkr = srem i32 %.reass7985.us.us.us, %i.gkc
  %i.gks = sdiv i32 %.reass7985.us.us.us, %i.gkc  ; 2 uses
  %.not2092.us.us.us = icmp eq i32 %i.gkr, 0
  %.not2093.us.us.us = icmp slt i32 %i.gks, %i.ekt
  %or.cond9011 = select i1 %.not2092.us.us.us, i1 %.not2093.us.us.us, i1 false
  br i1 %or.cond9011, label %_ZN4ncnn3MatD2Ev.exit.us.us.us, label %bb.dp
end_hunk_5
begin_hunk_6_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.ut = zext i16 %i.us to i32
  %i.uu = shl nuw i32 %i.ut, 16
  %i.uv = insertelement <16 x i32> poison, i32 %i.uu, i64 0
  %i.uw = bitcast <16 x i32> %i.uv to <16 x float>
  %i.ux = shufflevector <16 x float> %i.uw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ud, i64 6
  %i.uz = load i16, ptr %i.uy, align 2, !tbaa !28
  %i.va = zext i16 %i.uz to i32
  %i.vb = shl nuw i32 %i.va, 16
  %i.vc = insertelement <16 x i32> poison, i32 %i.vb, i64 0
  %i.vd = bitcast <16 x i32> %i.vc to <16 x float>
  %i.ve = shufflevector <16 x float> %i.vd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.vg = load i16, ptr %i.vf, align 2, !tbaa !28
  %i.vh = zext i16 %i.vg to i32
  %i.vi = shl nuw i32 %i.vh, 16
  %i.vj = insertelement <16 x i32> poison, i32 %i.vi, i64 0
  %i.vk = bitcast <16 x i32> %i.vj to <16 x float>
  %i.vl = shufflevector <16 x float> %i.vk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vm = getelementptr inbounds nuw i8, ptr %i.ud, i64 10
  %i.vn = load i16, ptr %i.vm, align 2, !tbaa !28
  %i.vo = zext i16 %i.vn to i32
  %i.vp = shl nuw i32 %i.vo, 16
  %i.vq = insertelement <16 x i32> poison, i32 %i.vp, i64 0
  %i.vr = bitcast <16 x i32> %i.vq to <16 x float>
  %i.vs = shufflevector <16 x float> %i.vr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ud, i64 12
  %i.vu = load i16, ptr %i.vt, align 2, !tbaa !28
  %i.vv = zext i16 %i.vu to i32
  %i.vw = shl nuw i32 %i.vv, 16
  %i.vx = insertelement <16 x i32> poison, i32 %i.vw, i64 0
  %i.vy = bitcast <16 x i32> %i.vx to <16 x float>
  %i.vz = shufflevector <16 x float> %i.vy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.wa = getelementptr inbounds nuw i8, ptr %i.ud, i64 14
  %i.wb = load <8 x i16>, ptr %i.wa, align 2, !tbaa !28
  %i.wc = zext <8 x i16> %i.wb to <8 x i32>
  %i.wd = shl nuw <8 x i32> %i.wc, splat (i32 16) ; 8 uses
  %i.we = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wf = shufflevector <8 x float> %i.we, <8 x float> poison, <16 x i32> zeroinitializer
  %i.wg = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wh = shufflevector <8 x float> %i.wg, <8 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.wi = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wj = shufflevector <8 x float> %i.wi, <8 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.wk = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wl = shufflevector <8 x float> %i.wk, <8 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.wm = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wn = shufflevector <8 x float> %i.wm, <8 x float> poison, <16 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %i.wo = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wp = shufflevector <8 x float> %i.wo, <8 x float> poison, <16 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %i.wq = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wr = shufflevector <8 x float> %i.wq, <8 x float> poison, <16 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %i.ws = bitcast <8 x i32> %i.wd to <8 x float>
  %i.wt = shufflevector <8 x float> %i.ws, <8 x float> poison, <16 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ud, i64 30
  br label %.thread2238.us.us.us.sink.split

.thread2238.us.us.us.sink.split:                  ; preds = %.noexc997.us.us.us, %.noexc1005.us.us.us, %.noexc1009.us.us.us, %.noexc1011.us.us.us
  %.sink2734.in = phi ptr [ %i.wu, %.noexc1011.us.us.us ], [ %i.tp, %.noexc1009.us.us.us ], [ %i.qc, %.noexc1005.us.us.us ], [ %i.lb, %.noexc997.us.us.us ]
  %.sink2729 = phi <16 x float> [ %i.uj, %.noexc1011.us.us.us ], [ %i.rb, %.noexc1009.us.us.us ], [ %i.mk, %.noexc1005.us.us.us ], [ %i.er, %.noexc997.us.us.us ]
  %.sink2725 = phi <16 x float> [ %i.uq, %.noexc1011.us.us.us ], [ %i.ri, %.noexc1009.us.us.us ], [ %i.mr, %.noexc1005.us.us.us ], [ %i.fc, %.noexc997.us.us.us ]
  %.sink2721 = phi <16 x float> [ %i.ux, %.noexc1011.us.us.us ], [ %i.rp, %.noexc1009.us.us.us ], [ %i.my, %.noexc1005.us.us.us ], [ %i.fn, %.noexc997.us.us.us ]
  %.sink2717 = phi <16 x float> [ %i.ve, %.noexc1011.us.us.us ], [ %i.rv, %.noexc1009.us.us.us ], [ %i.nf, %.noexc1005.us.us.us ], [ %i.fy, %.noexc997.us.us.us ]
  %.sink2712 = phi <16 x float> [ %i.vl, %.noexc1011.us.us.us ], [ %i.rx, %.noexc1009.us.us.us ], [ %i.nl, %.noexc1005.us.us.us ], [ %i.gj, %.noexc997.us.us.us ]
  %.sink2707 = phi <16 x float> [ %i.vs, %.noexc1011.us.us.us ], [ %i.rz, %.noexc1009.us.us.us ], [ %i.ns, %.noexc1005.us.us.us ], [ %i.gu, %.noexc997.us.us.us ]
  %.sink2702 = phi <16 x float> [ %i.vz, %.noexc1011.us.us.us ], [ %i.sb, %.noexc1009.us.us.us ], [ %i.nz, %.noexc1005.us.us.us ], [ %i.hf, %.noexc997.us.us.us ]
  %.sink2697 = phi <16 x float> [ %i.wf, %.noexc1011.us.us.us ], [ %i.si, %.noexc1009.us.us.us ], [ %i.og, %.noexc1005.us.us.us ], [ %i.hq, %.noexc997.us.us.us ]
  %.sink2692 = phi <16 x float> [ %i.wh, %.noexc1011.us.us.us ], [ %i.so, %.noexc1009.us.us.us ], [ %i.om, %.noexc1005.us.us.us ], [ %i.ib, %.noexc997.us.us.us ]
  %.sink2687 = phi <16 x float> [ %i.wj, %.noexc1011.us.us.us ], [ %i.sv, %.noexc1009.us.us.us ], [ %i.ot, %.noexc1005.us.us.us ], [ %i.it, %.noexc997.us.us.us ]
  %.sink2682 = phi <16 x float> [ %i.wl, %.noexc1011.us.us.us ], [ %i.tc, %.noexc1009.us.us.us ], [ %i.pa, %.noexc1005.us.us.us ], [ %i.je, %.noexc997.us.us.us ]
  %.sink2677 = phi <16 x float> [ %i.wn, %.noexc1011.us.us.us ], [ %i.ti, %.noexc1009.us.us.us ], [ %i.ph, %.noexc1005.us.us.us ], [ %i.jp, %.noexc997.us.us.us ]
  %.sink2672 = phi <16 x float> [ %i.wp, %.noexc1011.us.us.us ], [ %i.tk, %.noexc1009.us.us.us ], [ %i.pn, %.noexc1005.us.us.us ], [ %i.ka, %.noexc997.us.us.us ]
  %.sink2667 = phi <16 x float> [ %i.wr, %.noexc1011.us.us.us ], [ %i.tm, %.noexc1009.us.us.us ], [ %i.pu, %.noexc1005.us.us.us ], [ %i.kl, %.noexc997.us.us.us ]
  %.sink2662 = phi <16 x float> [ %i.wt, %.noexc1011.us.us.us ], [ %i.to, %.noexc1009.us.us.us ], [ %i.qb, %.noexc1005.us.us.us ], [ %i.kw, %.noexc997.us.us.us ]
  %.sink2734 = load i16, ptr %.sink2734.in, align 2, !tbaa !28
  %i.wv = zext i16 %.sink2734 to i32
  %i.ww = shl nuw i32 %i.wv, 16
  %i.wx = insertelement <16 x i32> poison, i32 %i.ww, i64 0
  %i.wy = bitcast <16 x i32> %i.wx to <16 x float>
  %i.wz = shufflevector <16 x float> %i.wy, <16 x float> poison, <16 x i32> zeroinitializer
  %i.xa = load <16 x bfloat>, ptr %i.dy, align 32, !tbaa !26
  %i.xb = fpext fast <16 x bfloat> %i.xa to <16 x float>
  %i.xc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2729, <16 x float> nofpclass(nan inf) %i.xb, <16 x float> nofpclass(nan inf) %.322082305.us.us.us)
  %i.xd = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.xe = load <16 x bfloat>, ptr %i.xd, align 32, !tbaa !26
  %i.xf = fpext fast <16 x bfloat> %i.xe to <16 x float>
  %i.xg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2725, <16 x float> nofpclass(nan inf) %i.xf, <16 x float> nofpclass(nan inf) %.27842306.us.us.us)
  %i.xh = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  %i.xi = load <16 x bfloat>, ptr %i.xh, align 32, !tbaa !26
  %i.xj = fpext fast <16 x bfloat> %i.xi to <16 x float>
  %i.xk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2721, <16 x float> nofpclass(nan inf) %i.xj, <16 x float> nofpclass(nan inf) %.27542307.us.us.us)
  %i.xl = getelementptr inbounds nuw i8, ptr %i.dy, i64 96
  %i.xm = load <16 x bfloat>, ptr %i.xl, align 32, !tbaa !26
  %i.xn = fpext fast <16 x bfloat> %i.xm to <16 x float>
  %i.xo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2717, <16 x float> nofpclass(nan inf) %i.xn, <16 x float> nofpclass(nan inf) %.27492308.us.us.us)
  %i.xp = getelementptr inbounds nuw i8, ptr %i.dy, i64 128
  %i.xq = load <16 x bfloat>, ptr %i.xp, align 32, !tbaa !26
  %i.xr = fpext fast <16 x bfloat> %i.xq to <16 x float>
  %i.xs = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2712, <16 x float> nofpclass(nan inf) %i.xr, <16 x float> nofpclass(nan inf) %i.xc)
  %i.xt = getelementptr inbounds nuw i8, ptr %i.dy, i64 160
  %i.xu = load <16 x bfloat>, ptr %i.xt, align 32, !tbaa !26
  %i.xv = fpext fast <16 x bfloat> %i.xu to <16 x float>
  %i.xw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2707, <16 x float> nofpclass(nan inf) %i.xv, <16 x float> nofpclass(nan inf) %i.xg)
  %i.xx = getelementptr inbounds nuw i8, ptr %i.dy, i64 192
  %i.xy = load <16 x bfloat>, ptr %i.xx, align 32, !tbaa !26
  %i.xz = fpext fast <16 x bfloat> %i.xy to <16 x float>
  %i.ya = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2702, <16 x float> nofpclass(nan inf) %i.xz, <16 x float> nofpclass(nan inf) %i.xk)
  %i.yb = getelementptr inbounds nuw i8, ptr %i.dy, i64 224
  %i.yc = load <16 x bfloat>, ptr %i.yb, align 32, !tbaa !26
  %i.yd = fpext fast <16 x bfloat> %i.yc to <16 x float>
  %i.ye = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2697, <16 x float> nofpclass(nan inf) %i.yd, <16 x float> nofpclass(nan inf) %i.xo)
  %i.yf = getelementptr inbounds nuw i8, ptr %i.dy, i64 256
  %i.yg = load <16 x bfloat>, ptr %i.yf, align 32, !tbaa !26
  %i.yh = fpext fast <16 x bfloat> %i.yg to <16 x float>
  %i.yi = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2692, <16 x float> nofpclass(nan inf) %i.yh, <16 x float> nofpclass(nan inf) %i.xs)
  %i.yj = getelementptr inbounds nuw i8, ptr %i.dy, i64 288
  %i.yk = load <16 x bfloat>, ptr %i.yj, align 32, !tbaa !26
  %i.yl = fpext fast <16 x bfloat> %i.yk to <16 x float>
  %i.ym = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2687, <16 x float> nofpclass(nan inf) %i.yl, <16 x float> nofpclass(nan inf) %i.xw)
  %i.yn = getelementptr inbounds nuw i8, ptr %i.dy, i64 320
  %i.yo = load <16 x bfloat>, ptr %i.yn, align 32, !tbaa !26
  %i.yp = fpext fast <16 x bfloat> %i.yo to <16 x float>
  %i.yq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2682, <16 x float> nofpclass(nan inf) %i.yp, <16 x float> nofpclass(nan inf) %i.ya)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.dy, i64 352
  %i.ys = load <16 x bfloat>, ptr %i.yr, align 32, !tbaa !26
  %i.yt = fpext fast <16 x bfloat> %i.ys to <16 x float>
  %i.yu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2677, <16 x float> nofpclass(nan inf) %i.yt, <16 x float> nofpclass(nan inf) %i.ye)
  %i.yv = getelementptr inbounds nuw i8, ptr %i.dy, i64 384
  %i.yw = load <16 x bfloat>, ptr %i.yv, align 32, !tbaa !26
  %i.yx = fpext fast <16 x bfloat> %i.yw to <16 x float>
  %i.yy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2672, <16 x float> nofpclass(nan inf) %i.yx, <16 x float> nofpclass(nan inf) %i.yi)
  %i.yz = getelementptr inbounds nuw i8, ptr %i.dy, i64 416
  %i.za = load <16 x bfloat>, ptr %i.yz, align 32, !tbaa !26
  %i.zb = fpext fast <16 x bfloat> %i.za to <16 x float>
  %i.zc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2667, <16 x float> nofpclass(nan inf) %i.zb, <16 x float> nofpclass(nan inf) %i.ym)
  %i.zd = getelementptr inbounds nuw i8, ptr %i.dy, i64 448
  %i.ze = load <16 x bfloat>, ptr %i.zd, align 32, !tbaa !26
  %i.zf = fpext fast <16 x bfloat> %i.ze to <16 x float>
  %i.zg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2662, <16 x float> nofpclass(nan inf) %i.zf, <16 x float> nofpclass(nan inf) %i.yq)
  %i.zh = getelementptr inbounds nuw i8, ptr %i.dy, i64 480
  %i.zi = load <16 x bfloat>, ptr %i.zh, align 32, !tbaa !26
  %i.zj = fpext fast <16 x bfloat> %i.zi to <16 x float>
  %i.zk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.wz, <16 x float> nofpclass(nan inf) %i.zj, <16 x float> nofpclass(nan inf) %i.yu)
  br label %.thread2238.us.us.us

.thread2238.us.us.us:                             ; preds = %.thread2238.us.us.us.sink.split, %.split.us.us.us, %bb.g, %bb.f
  %.7.us.us.us = phi nsz <16 x float> [ %.322082305.us.us.us, %bb.f ], [ %.322082305.us.us.us, %bb.g ], [ %.322082305.us.us.us, %.split.us.us.us ], [ %i.yy, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %.8790.us.us.us = phi nsz <16 x float> [ %.27842306.us.us.us, %bb.f ], [ %.27842306.us.us.us, %bb.g ], [ %.27842306.us.us.us, %.split.us.us.us ], [ %i.zc, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %.8760.us.us.us = phi nsz <16 x float> [ %.27542307.us.us.us, %bb.f ], [ %.27542307.us.us.us, %bb.g ], [ %.27542307.us.us.us, %.split.us.us.us ], [ %i.zg, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %.8.us.us.us = phi nsz <16 x float> [ %.27492308.us.us.us, %bb.f ], [ %.27492308.us.us.us, %bb.g ], [ %.27492308.us.us.us, %.split.us.us.us ], [ %i.zk, %.thread2238.us.us.us.sink.split ] ; 2 uses
  %indvars.iv.next2559 = add nuw nsw i64 %indvars.iv2558, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next2559, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit2294.us.us, label %bb.f, !llvm.loop !286

.loopexit2294.us.us:                              ; preds = %.thread2238.us.us.us, %.preheader2293.us.us, %bb.e, %.lr.ph2321.split.us.us
  %.82211.us.us = phi nsz <16 x float> [ %.222072316.us.us, %.lr.ph2321.split.us.us ], [ %.222072316.us.us, %bb.e ], [ %.222072316.us.us, %.preheader2293.us.us ], [ %.7.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10792.us.us = phi nsz <16 x float> [ %.17832317.us.us, %.lr.ph2321.split.us.us ], [ %.17832317.us.us, %bb.e ], [ %.17832317.us.us, %.preheader2293.us.us ], [ %.8790.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10762.us.us = phi nsz <16 x float> [ %.17532318.us.us, %.lr.ph2321.split.us.us ], [ %.17532318.us.us, %bb.e ], [ %.17532318.us.us, %.preheader2293.us.us ], [ %.8760.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %.10.us.us = phi nsz <16 x float> [ %.17482319.us.us, %.lr.ph2321.split.us.us ], [ %.17482319.us.us, %bb.e ], [ %.17482319.us.us, %.preheader2293.us.us ], [ %.8.us.us.us, %.thread2238.us.us.us ] ; 2 uses
  %i.zl = add nuw nsw i32 %.07402320.us.us, 1     ; 2 uses
  %exitcond2561.not = icmp eq i32 %i.zl, %i.by
  br i1 %exitcond2561.not, label %._crit_edge.us, label %.lr.ph2321.split.us.us, !llvm.loop !287

._crit_edge.us:                                   ; preds = %.loopexit2294.us.us, %.preheader2299.us
  %.us-phi2328.us = phi <16 x float> [ %.122062332.us, %.preheader2299.us ], [ %.82211.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2329.us = phi <16 x float> [ %.07822333.us, %.preheader2299.us ], [ %.10792.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2330.us = phi <16 x float> [ %.07522334.us, %.preheader2299.us ], [ %.10762.us.us, %.loopexit2294.us.us ] ; 2 uses
  %.us-phi2331.us = phi <16 x float> [ %.07472335.us, %.preheader2299.us ], [ %.10.us.us, %.loopexit2294.us.us ] ; 2 uses
  %i.zm = getelementptr inbounds [2 x i8], ptr %.07422336.us, i64 %i.cc ; 2 uses
  %indvars.iv.next2563 = add nuw nsw i64 %indvars.iv2562, 16 ; 2 uses
  %i.zn = icmp slt i64 %indvars.iv.next2563, %invariant.op
  br i1 %i.zn, label %.preheader2299.us, label %.preheader2303, !llvm.loop !288

.preheader2303:                                   ; preds = %._crit_edge.us, %.preheader2299.preheader, %.noexc1013
  %.12206.lcssa = phi <16 x float> [ %.02205, %.noexc1013 ], [ %.02205, %.preheader2299.preheader ], [ %.us-phi2328.us, %._crit_edge.us ] ; 3 uses
  %.0782.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1013 ], [ zeroinitializer, %.preheader2299.preheader ], [ %.us-phi2329.us, %._crit_edge.us ] ; 3 uses
  %.0752.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1013 ], [ zeroinitializer, %.preheader2299.preheader ], [ %.us-phi2330.us, %._crit_edge.us ] ; 3 uses
  %.0747.lcssa = phi <16 x float> [ zeroinitializer, %.noexc1013 ], [ zeroinitializer, %.preheader2299.preheader ], [ %.us-phi2331.us, %._crit_edge.us ] ; 3 uses
  %.0742.lcssa = phi ptr [ %i.bx, %.noexc1013 ], [ %scevgep, %.preheader2299.preheader ], [ %i.zm, %._crit_edge.us ] ; 3 uses
  %.0741.lcssa = phi i32 [ 0, %.noexc1013 ], [ %i.bi, %.preheader2299.preheader ], [ %i.bl, %._crit_edge.us ] ; 5 uses
  %i.zo = or disjoint i32 %.0741.lcssa, 7         ; 2 uses
  %i.zp = icmp slt i32 %i.zo, %i.ae
  br i1 %i.zp, label %.preheader2298.lr.ph, label %.preheader2302

.preheader2298.lr.ph:                             ; preds = %.preheader2303
  %i.zq = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.zr = icmp sgt i32 %i.zq, 0
  %.neg2282 = add nuw nsw i32 %.08122526, 1
  %i.zs = load i32, ptr %15, align 4, !tbaa !9
  %i.zt = shl i32 %i.zs, 7
  %i.zu = sext i32 %i.zt to i64                   ; 2 uses
  br i1 %i.zr, label %.preheader2298.lr.ph.split.us, label %.preheader2298.preheader

.preheader2298.preheader:                         ; preds = %.preheader2298.lr.ph
  %i.zv = sub i32 %i.bm, %.0741.lcssa             ; 2 uses
  %i.zw = lshr i32 %i.zv, 2
  %i.zx = and i32 %i.zw, 1073741822
  %narrow2652 = add nuw nsw i32 %i.zx, 2
  %i.zy = zext nneg i32 %narrow2652 to i64
  %i.zz = mul nsw i64 %i.zy, %i.zu
  %scevgep2565 = getelementptr i8, ptr %.0742.lcssa, i64 %i.zz
  %i.aaa = add nsw i32 %.0741.lcssa, 8
  %i.aab = and i32 %i.zv, -8
  %i.aac = add i32 %i.aaa, %i.aab
  br label %.preheader2302

.preheader2298.lr.ph.split.us:                    ; preds = %.preheader2298.lr.ph
  %i.aad = load i32, ptr %8, align 4, !tbaa !9
  %i.aae = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2379.us = sub i32 %.neg2284, %i.aae
  %i.aaf = zext i32 %.0741.lcssa to i64
  %i.aag = zext nneg i32 %i.zo to i64
  br label %.preheader2298.us

.preheader2298.us:                                ; preds = %._crit_edge.us2394, %.preheader2298.lr.ph.split.us
  %indvars.iv2572 = phi i64 [ %indvars.iv.next2573, %._crit_edge.us2394 ], [ %i.aaf, %.preheader2298.lr.ph.split.us ] ; 10 uses
  %i.aah = phi i64 [ %i.akv, %._crit_edge.us2394 ], [ %i.aag, %.preheader2298.lr.ph.split.us ]
  %.17432385.us = phi ptr [ %i.aku, %._crit_edge.us2394 ], [ %.0742.lcssa, %.preheader2298.lr.ph.split.us ] ; 2 uses
  %.112384.us = phi <16 x float> [ %.20.us, %._crit_edge.us2394 ], [ %.0747.lcssa, %.preheader2298.lr.ph.split.us ]
  %.117632383.us = phi <16 x float> [ %.20772.us, %._crit_edge.us2394 ], [ %.0752.lcssa, %.preheader2298.lr.ph.split.us ]
  %.117932382.us = phi <16 x float> [ %.20802.us, %._crit_edge.us2394 ], [ %.0782.lcssa, %.preheader2298.lr.ph.split.us ]
  %.92381.us = phi <16 x float> [ %.152217.us, %._crit_edge.us2394 ], [ %.12206.lcssa, %.preheader2298.lr.ph.split.us ]
  %i.aai = or disjoint i64 %indvars.iv2572, 1
  %i.aaj = or disjoint i64 %indvars.iv2572, 2
  %i.aak = or disjoint i64 %indvars.iv2572, 3
  %i.aal = or disjoint i64 %indvars.iv2572, 4
  %i.aam = or disjoint i64 %indvars.iv2572, 5
  %i.aan = or disjoint i64 %indvars.iv2572, 6
  %i.aao = lshr exact i64 %indvars.iv2572, 2      ; 2 uses
  %i.aap = or disjoint i64 %i.aao, 1
  %i.aaq = lshr exact i64 %indvars.iv2572, 3
  br label %bb.h

bb.h:                                             ; preds = %.preheader2298.us, %.loopexit2292.us
  %.07382373.us = phi i32 [ 0, %.preheader2298.us ], [ %i.akp, %.loopexit2292.us ] ; 3 uses
  %.122372.us = phi <16 x float> [ %.112384.us, %.preheader2298.us ], [ %.20.us, %.loopexit2292.us ] ; 4 uses
  %.127642371.us = phi <16 x float> [ %.117632383.us, %.preheader2298.us ], [ %.20772.us, %.loopexit2292.us ] ; 4 uses
  %.127942370.us = phi <16 x float> [ %.117932382.us, %.preheader2298.us ], [ %.20802.us, %.loopexit2292.us ] ; 4 uses
  %.1022122369.us = phi <16 x float> [ %.92381.us, %.preheader2298.us ], [ %.152217.us, %.loopexit2292.us ] ; 4 uses
  %i.aar = mul nsw i32 %i.aad, %.07382373.us
  %.reass2380.us = add i32 %i.aar, %invariant.op2379.us ; 3 uses
  %i.aas = icmp slt i32 %.reass2380.us, 0
  br i1 %i.aas, label %.loopexit2292.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aat = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.aau = srem i32 %.reass2380.us, %i.aat
  %i.aav = sdiv i32 %.reass2380.us, %i.aat        ; 2 uses
  %.not879.us = icmp eq i32 %i.aau, 0
  %.not880.us = icmp slt i32 %i.aav, %i.ag
  %or.cond2784 = select i1 %.not879.us, i1 %.not880.us, i1 false
  br i1 %or.cond2784, label %.preheader2291.us, label %.loopexit2292.us

.preheader2291.us:                                ; preds = %bb.i
  %i.aaw = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.aax = icmp sgt i32 %i.aaw, 0
  br i1 %i.aax, label %.lr.ph.us, label %.loopexit2292.us

bb.j:                                             ; preds = %.lr.ph.us, %.thread2249.us
  %indvars.iv2566 = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next2567, %.thread2249.us ] ; 3 uses
  %.132363.us = phi <16 x float> [ %.122372.us, %.lr.ph.us ], [ %.18.us, %.thread2249.us ] ; 4 uses
  %.137652362.us = phi <16 x float> [ %.127642371.us, %.lr.ph.us ], [ %.18770.us, %.thread2249.us ] ; 4 uses
  %.137952361.us = phi <16 x float> [ %.127942370.us, %.lr.ph.us ], [ %.18800.us, %.thread2249.us ] ; 4 uses
  %.1122132360.us = phi <16 x float> [ %.1022122369.us, %.lr.ph.us ], [ %.142216.us, %.thread2249.us ] ; 4 uses
  %i.aay = trunc i64 %indvars.iv2566 to i32
  %i.aaz = mul i32 %i.akq, %i.aay
  %.reass.us2393 = add i32 %i.aaz, %invariant.op.us ; 3 uses
  %i.aba = icmp slt i32 %.reass.us2393, 0
  br i1 %i.aba, label %.thread2249.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.abb = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.abc = srem i32 %.reass.us2393, %i.abb
  %i.abd = sdiv i32 %.reass.us2393, %i.abb        ; 4 uses
  %.not881.us = icmp eq i32 %i.abc, 0
  %.not882.us = icmp slt i32 %i.abd, %i.af
  %or.cond2785 = select i1 %.not881.us, i1 %.not882.us, i1 false
  br i1 %or.cond2785, label %bb.l, label %.thread2249.us

bb.l:                                             ; preds = %bb.k
  %i.abe = trunc i64 %indvars.iv2566 to i32
  %i.abf = add i32 %i.aks, %i.abe
  %i.abg = shl nsw i32 %i.abf, 7
  %i.abh = zext nneg i32 %i.abg to i64
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %.17432385.us, i64 %i.abh ; 8 uses
  switch i32 %.fr, label %.thread2249.us [
    i32 8, label %.noexc965.us
    i32 4, label %.noexc963.us
    i32 1, label %.noexc959.us
  ]

.noexc959.us:                                     ; preds = %bb.l
  %i.abj = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !324
  %i.abk = load ptr, ptr %3, align 8, !tbaa !19, !noalias !324 ; 8 uses
  %i.abl = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !324 ; 8 uses
  %i.abm = mul i64 %i.abl, %indvars.iv2572
  %i.abn = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !324 ; 9 uses
  %i.abo = mul i64 %i.abm, %i.abn
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.abo
  %i.abq = sext i32 %i.abj to i64
  %i.abr = mul nsw i64 %i.abq, %i.akt
  %i.abs = mul i64 %i.abr, %i.abn                 ; 8 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.abs
  %i.abu = sext i32 %i.abd to i64                 ; 8 uses
  %i.abv = getelementptr inbounds [2 x i8], ptr %i.abt, i64 %i.abu
  %i.abw = load i16, ptr %i.abv, align 2, !tbaa !28
  %i.abx = zext i16 %i.abw to i32
  %i.aby = shl nuw i32 %i.abx, 16
  %i.abz = insertelement <16 x i32> poison, i32 %i.aby, i64 0
  %i.aca = bitcast <16 x i32> %i.abz to <16 x float>
  %i.acb = shufflevector <16 x float> %i.aca, <16 x float> poison, <16 x i32> zeroinitializer
  %i.acc = mul i64 %i.abl, %i.aai
  %i.acd = mul i64 %i.acc, %i.abn
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.acd
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 %i.abs
  %i.acg = getelementptr inbounds [2 x i8], ptr %i.acf, i64 %i.abu
  %i.ach = load i16, ptr %i.acg, align 2, !tbaa !28
  %i.aci = zext i16 %i.ach to i32
  %i.acj = shl nuw i32 %i.aci, 16
  %i.ack = insertelement <16 x i32> poison, i32 %i.acj, i64 0
  %i.acl = bitcast <16 x i32> %i.ack to <16 x float>
  %i.acm = shufflevector <16 x float> %i.acl, <16 x float> poison, <16 x i32> zeroinitializer
  %i.acn = mul i64 %i.abl, %i.aaj
  %i.aco = mul i64 %i.acn, %i.abn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.abs
  %i.acr = getelementptr inbounds [2 x i8], ptr %i.acq, i64 %i.abu
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !28
  %i.act = zext i16 %i.acs to i32
  %i.acu = shl nuw i32 %i.act, 16
  %i.acv = insertelement <16 x i32> poison, i32 %i.acu, i64 0
  %i.acw = bitcast <16 x i32> %i.acv to <16 x float>
  %i.acx = shufflevector <16 x float> %i.acw, <16 x float> poison, <16 x i32> zeroinitializer
  %i.acy = mul i64 %i.abl, %i.aak
  %i.acz = mul i64 %i.acy, %i.abn
  %i.ada = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.acz
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 %i.abs
  %i.adc = getelementptr inbounds [2 x i8], ptr %i.adb, i64 %i.abu
  %i.add = load i16, ptr %i.adc, align 2, !tbaa !28
  %i.ade = zext i16 %i.add to i32
  %i.adf = shl nuw i32 %i.ade, 16
  %i.adg = insertelement <16 x i32> poison, i32 %i.adf, i64 0
  %i.adh = bitcast <16 x i32> %i.adg to <16 x float>
  %i.adi = shufflevector <16 x float> %i.adh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adj = mul i64 %i.abl, %i.aal
  %i.adk = mul i64 %i.adj, %i.abn
  %i.adl = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adk
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 %i.abs
  %i.adn = getelementptr inbounds [2 x i8], ptr %i.adm, i64 %i.abu
  %i.ado = load i16, ptr %i.adn, align 2, !tbaa !28
  %i.adp = zext i16 %i.ado to i32
  %i.adq = shl nuw i32 %i.adp, 16
  %i.adr = insertelement <16 x i32> poison, i32 %i.adq, i64 0
  %i.ads = bitcast <16 x i32> %i.adr to <16 x float>
  %i.adt = shufflevector <16 x float> %i.ads, <16 x float> poison, <16 x i32> zeroinitializer
  %i.adu = mul i64 %i.abl, %i.aam
  %i.adv = mul i64 %i.adu, %i.abn
  %i.adw = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adv
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 %i.abs
  %i.ady = getelementptr inbounds [2 x i8], ptr %i.adx, i64 %i.abu
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !28
  %i.aea = zext i16 %i.adz to i32
  %i.aeb = shl nuw i32 %i.aea, 16
  %i.aec = insertelement <16 x i32> poison, i32 %i.aeb, i64 0
  %i.aed = bitcast <16 x i32> %i.aec to <16 x float>
  %i.aee = shufflevector <16 x float> %i.aed, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aef = mul i64 %i.abl, %i.aan
  %i.aeg = mul i64 %i.aef, %i.abn
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aeg
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aeh, i64 %i.abs
  %i.aej = getelementptr inbounds [2 x i8], ptr %i.aei, i64 %i.abu
  %i.aek = load i16, ptr %i.aej, align 2, !tbaa !28
  %i.ael = zext i16 %i.aek to i32
  %i.aem = shl nuw i32 %i.ael, 16
  %i.aen = insertelement <16 x i32> poison, i32 %i.aem, i64 0
  %i.aeo = bitcast <16 x i32> %i.aen to <16 x float>
  %i.aep = shufflevector <16 x float> %i.aeo, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aeq = mul i64 %i.abl, %i.aah
  %i.aer = mul i64 %i.aeq, %i.abn
  %i.aes = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.aer
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aes, i64 %i.abs
  %i.aeu = getelementptr inbounds [2 x i8], ptr %i.aet, i64 %i.abu
  br label %.thread2249.us.sink.split

.noexc963.us:                                     ; preds = %bb.l
  %i.aev = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !325
  %i.aew = load ptr, ptr %3, align 8, !tbaa !19, !noalias !325 ; 2 uses
  %i.aex = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !325 ; 2 uses
  %i.aey = mul i64 %i.aex, %i.aao
  %i.aez = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !325 ; 3 uses
  %i.afa = mul i64 %i.aey, %i.aez
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.afa
  %i.afc = sext i32 %i.aev to i64
  %i.afd = mul nsw i64 %i.afc, %i.akt
  %i.afe = mul i64 %i.afd, %i.aez                 ; 2 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afb, i64 %i.afe
  %i.afg = mul i64 %i.aex, %i.aap
  %i.afh = mul i64 %i.afg, %i.aez
  %i.afi = getelementptr inbounds nuw i8, ptr %i.aew, i64 %i.afh
  %i.afj = shl nsw i32 %i.abd, 2
  %i.afk = sext i32 %i.afj to i64                 ; 2 uses
  %i.afl = getelementptr inbounds [2 x i8], ptr %i.aff, i64 %i.afk ; 4 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL26deconvolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined:bb.a
  %i.agd = zext i16 %i.agc to i32
  %i.age = shl nuw i32 %i.agd, 16
  %i.agf = insertelement <16 x i32> poison, i32 %i.age, i64 0
  %i.agg = bitcast <16 x i32> %i.agf to <16 x float>
  %i.agh = shufflevector <16 x float> %i.agg, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agi = getelementptr inbounds nuw i8, ptr %i.afl, i64 6
  %i.agj = load i16, ptr %i.agi, align 2, !tbaa !28
  %i.agk = zext i16 %i.agj to i32
  %i.agl = shl nuw i32 %i.agk, 16
  %i.agm = insertelement <16 x i32> poison, i32 %i.agl, i64 0
  %i.agn = bitcast <16 x i32> %i.agm to <16 x float>
  %i.ago = shufflevector <16 x float> %i.agn, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agp = load i16, ptr %i.afn, align 2, !tbaa !28
  %i.agq = zext i16 %i.agp to i32
  %i.agr = shl nuw i32 %i.agq, 16
  %i.ags = insertelement <16 x i32> poison, i32 %i.agr, i64 0
  %i.agt = bitcast <16 x i32> %i.ags to <16 x float>
  %i.agu = shufflevector <16 x float> %i.agt, <16 x float> poison, <16 x i32> zeroinitializer
  %i.agv = getelementptr inbounds nuw i8, ptr %i.afn, i64 2
  %i.agw = load i16, ptr %i.agv, align 2, !tbaa !28
  %i.agx = zext i16 %i.agw to i32
  %i.agy = shl nuw i32 %i.agx, 16
  %i.agz = insertelement <16 x i32> poison, i32 %i.agy, i64 0
  %i.aha = bitcast <16 x i32> %i.agz to <16 x float>
  %i.ahb = shufflevector <16 x float> %i.aha, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.afn, i64 4
  %i.ahd = load i16, ptr %i.ahc, align 2, !tbaa !28
  %i.ahe = zext i16 %i.ahd to i32
  %i.ahf = shl nuw i32 %i.ahe, 16
  %i.ahg = insertelement <16 x i32> poison, i32 %i.ahf, i64 0
  %i.ahh = bitcast <16 x i32> %i.ahg to <16 x float>
  %i.ahi = shufflevector <16 x float> %i.ahh, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.afn, i64 6
  br label %.thread2249.us.sink.split

.noexc965.us:                                     ; preds = %bb.l
  %i.ahk = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !326
  %i.ahl = load ptr, ptr %3, align 8, !tbaa !19, !noalias !326
  %i.ahm = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !326
  %i.ahn = mul i64 %i.ahm, %i.aaq
  %i.aho = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !326 ; 2 uses
  %i.ahp = mul i64 %i.ahn, %i.aho
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.ahl, i64 %i.ahp
  %i.ahr = sext i32 %i.ahk to i64
  %i.ahs = mul nsw i64 %i.ahr, %i.akt
  %i.aht = mul i64 %i.ahs, %i.aho
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.ahq, i64 %i.aht
  %i.ahv = shl nsw i32 %i.abd, 3
  %i.ahw = sext i32 %i.ahv to i64
  %i.ahx = getelementptr inbounds [2 x i8], ptr %i.ahu, i64 %i.ahw ; 5 uses
  %i.ahy = load i16, ptr %i.ahx, align 2, !tbaa !28
  %i.ahz = zext i16 %i.ahy to i32
  %i.aia = shl nuw i32 %i.ahz, 16
  %i.aib = insertelement <16 x i32> poison, i32 %i.aia, i64 0
  %i.aic = bitcast <16 x i32> %i.aib to <16 x float>
  %i.aid = shufflevector <16 x float> %i.aic, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahx, i64 2
  %i.aif = load i16, ptr %i.aie, align 2, !tbaa !28
  %i.aig = zext i16 %i.aif to i32
  %i.aih = shl nuw i32 %i.aig, 16
  %i.aii = insertelement <16 x i32> poison, i32 %i.aih, i64 0
  %i.aij = bitcast <16 x i32> %i.aii to <16 x float>
  %i.aik = shufflevector <16 x float> %i.aij, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahx, i64 4
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !28
  %i.ain = zext i16 %i.aim to i32
  %i.aio = shl nuw i32 %i.ain, 16
  %i.aip = insertelement <16 x i32> poison, i32 %i.aio, i64 0
  %i.aiq = bitcast <16 x i32> %i.aip to <16 x float>
  %i.air = shufflevector <16 x float> %i.aiq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahx, i64 6
  %i.ait = load <4 x i16>, ptr %i.ais, align 2, !tbaa !28
  %i.aiu = zext <4 x i16> %i.ait to <4 x i32>
  %i.aiv = shl nuw <4 x i32> %i.aiu, splat (i32 16) ; 4 uses
  %i.aiw = bitcast <4 x i32> %i.aiv to <4 x float>
  %i.aix = shufflevector <4 x float> %i.aiw, <4 x float> poison, <16 x i32> zeroinitializer
  %i.aiy = bitcast <4 x i32> %i.aiv to <4 x float>
  %i.aiz = shufflevector <4 x float> %i.aiy, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.aja = bitcast <4 x i32> %i.aiv to <4 x float>
  %i.ajb = shufflevector <4 x float> %i.aja, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %i.ajc = bitcast <4 x i32> %i.aiv to <4 x float>
  %i.ajd = shufflevector <4 x float> %i.ajc, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ahx, i64 14
  br label %.thread2249.us.sink.split

.thread2249.us.sink.split:                        ; preds = %.noexc959.us, %.noexc963.us, %.noexc965.us
  %.sink2771.in = phi ptr [ %i.aje, %.noexc965.us ], [ %i.ahj, %.noexc963.us ], [ %i.aeu, %.noexc959.us ]
  %.sink2766 = phi <16 x float> [ %i.aid, %.noexc965.us ], [ %i.aft, %.noexc963.us ], [ %i.acb, %.noexc959.us ]
  %.sink2762 = phi <16 x float> [ %i.aik, %.noexc965.us ], [ %i.aga, %.noexc963.us ], [ %i.acm, %.noexc959.us ]
  %.sink2758 = phi <16 x float> [ %i.air, %.noexc965.us ], [ %i.agh, %.noexc963.us ], [ %i.acx, %.noexc959.us ]
  %.sink2754 = phi <16 x float> [ %i.aix, %.noexc965.us ], [ %i.ago, %.noexc963.us ], [ %i.adi, %.noexc959.us ]
  %.sink2749 = phi <16 x float> [ %i.aiz, %.noexc965.us ], [ %i.agu, %.noexc963.us ], [ %i.adt, %.noexc959.us ]
  %.sink2744 = phi <16 x float> [ %i.ajb, %.noexc965.us ], [ %i.ahb, %.noexc963.us ], [ %i.aee, %.noexc959.us ]
  %.sink2739 = phi <16 x float> [ %i.ajd, %.noexc965.us ], [ %i.ahi, %.noexc963.us ], [ %i.aep, %.noexc959.us ]
  %.sink2771 = load i16, ptr %.sink2771.in, align 2, !tbaa !28
  %i.ajf = zext i16 %.sink2771 to i32
  %i.ajg = shl nuw i32 %i.ajf, 16
  %i.ajh = insertelement <16 x i32> poison, i32 %i.ajg, i64 0
  %i.aji = bitcast <16 x i32> %i.ajh to <16 x float>
  %i.ajj = shufflevector <16 x float> %i.aji, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ajk = load <16 x bfloat>, ptr %i.abi, align 32, !tbaa !26
  %i.ajl = fpext fast <16 x bfloat> %i.ajk to <16 x float>
  %i.ajm = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2766, <16 x float> nofpclass(nan inf) %i.ajl, <16 x float> nofpclass(nan inf) %.1122132360.us)
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.abi, i64 32
  %i.ajo = load <16 x bfloat>, ptr %i.ajn, align 32, !tbaa !26
  %i.ajp = fpext fast <16 x bfloat> %i.ajo to <16 x float>
  %i.ajq = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2762, <16 x float> nofpclass(nan inf) %i.ajp, <16 x float> nofpclass(nan inf) %.137952361.us)
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.abi, i64 64
  %i.ajs = load <16 x bfloat>, ptr %i.ajr, align 32, !tbaa !26
  %i.ajt = fpext fast <16 x bfloat> %i.ajs to <16 x float>
  %i.aju = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2758, <16 x float> nofpclass(nan inf) %i.ajt, <16 x float> nofpclass(nan inf) %.137652362.us)
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.abi, i64 96
  %i.ajw = load <16 x bfloat>, ptr %i.ajv, align 32, !tbaa !26
  %i.ajx = fpext fast <16 x bfloat> %i.ajw to <16 x float>
  %i.ajy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2754, <16 x float> nofpclass(nan inf) %i.ajx, <16 x float> nofpclass(nan inf) %.132363.us)
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.abi, i64 128
  %i.aka = load <16 x bfloat>, ptr %i.ajz, align 32, !tbaa !26
  %i.akb = fpext fast <16 x bfloat> %i.aka to <16 x float>
  %i.akc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2749, <16 x float> nofpclass(nan inf) %i.akb, <16 x float> nofpclass(nan inf) %i.ajm)
  %i.akd = getelementptr inbounds nuw i8, ptr %i.abi, i64 160
  %i.ake = load <16 x bfloat>, ptr %i.akd, align 32, !tbaa !26
  %i.akf = fpext fast <16 x bfloat> %i.ake to <16 x float>
  %i.akg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2744, <16 x float> nofpclass(nan inf) %i.akf, <16 x float> nofpclass(nan inf) %i.ajq)
  %i.akh = getelementptr inbounds nuw i8, ptr %i.abi, i64 192
  %i.aki = load <16 x bfloat>, ptr %i.akh, align 32, !tbaa !26
  %i.akj = fpext fast <16 x bfloat> %i.aki to <16 x float>
  %i.akk = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %.sink2739, <16 x float> nofpclass(nan inf) %i.akj, <16 x float> nofpclass(nan inf) %i.aju)
  %i.akl = getelementptr inbounds nuw i8, ptr %i.abi, i64 224
  %i.akm = load <16 x bfloat>, ptr %i.akl, align 32, !tbaa !26
  %i.akn = fpext fast <16 x bfloat> %i.akm to <16 x float>
  %i.ako = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ajj, <16 x float> nofpclass(nan inf) %i.akn, <16 x float> nofpclass(nan inf) %i.ajy)
  br label %.thread2249.us

.thread2249.us:                                   ; preds = %.thread2249.us.sink.split, %bb.l, %bb.k, %bb.j
  %.142216.us = phi nsz <16 x float> [ %.1122132360.us, %bb.j ], [ %.1122132360.us, %bb.k ], [ %.1122132360.us, %bb.l ], [ %i.akc, %.thread2249.us.sink.split ] ; 2 uses
  %.18800.us = phi nsz <16 x float> [ %.137952361.us, %bb.j ], [ %.137952361.us, %bb.k ], [ %.137952361.us, %bb.l ], [ %i.akg, %.thread2249.us.sink.split ] ; 2 uses
  %.18770.us = phi nsz <16 x float> [ %.137652362.us, %bb.j ], [ %.137652362.us, %bb.k ], [ %.137652362.us, %bb.l ], [ %i.akk, %.thread2249.us.sink.split ] ; 2 uses
  %.18.us = phi nsz <16 x float> [ %.132363.us, %bb.j ], [ %.132363.us, %bb.k ], [ %.132363.us, %bb.l ], [ %i.ako, %.thread2249.us.sink.split ] ; 2 uses
  %indvars.iv.next2567 = add nuw nsw i64 %indvars.iv2566, 1 ; 2 uses
  %exitcond2570.not = icmp eq i64 %indvars.iv.next2567, %wide.trip.count2569
  br i1 %exitcond2570.not, label %.loopexit2292.us, label %bb.j, !llvm.loop !295

.loopexit2292.us:                                 ; preds = %.thread2249.us, %.preheader2291.us, %bb.i, %bb.h
  %.152217.us = phi nsz <16 x float> [ %.1022122369.us, %bb.h ], [ %.1022122369.us, %bb.i ], [ %.1022122369.us, %.preheader2291.us ], [ %.142216.us, %.thread2249.us ] ; 3 uses
  %.20802.us = phi nsz <16 x float> [ %.127942370.us, %bb.h ], [ %.127942370.us, %bb.i ], [ %.127942370.us, %.preheader2291.us ], [ %.18800.us, %.thread2249.us ] ; 3 uses
  %.20772.us = phi nsz <16 x float> [ %.127642371.us, %bb.h ], [ %.127642371.us, %bb.i ], [ %.127642371.us, %.preheader2291.us ], [ %.18770.us, %.thread2249.us ] ; 3 uses
  %.20.us = phi nsz <16 x float> [ %.122372.us, %bb.h ], [ %.122372.us, %bb.i ], [ %.122372.us, %.preheader2291.us ], [ %.18.us, %.thread2249.us ] ; 3 uses
  %i.akp = add nuw nsw i32 %.07382373.us, 1       ; 2 uses
  %exitcond2571.not = icmp eq i32 %i.akp, %i.zq
  br i1 %exitcond2571.not, label %._crit_edge.us2394, label %bb.h, !llvm.loop !296

.lr.ph.us:                                        ; preds = %.preheader2291.us
  %i.akq = load i32, ptr %12, align 4, !tbaa !9
  %i.akr = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us = sub i32 %.neg2282, %i.akr
  %i.aks = mul nuw nsw i32 %i.aaw, %.07382373.us
  %i.akt = sext i32 %i.aav to i64                 ; 3 uses
  %wide.trip.count2569 = zext nneg i32 %i.aaw to i64
  br label %bb.j

._crit_edge.us2394:                               ; preds = %.loopexit2292.us
  %i.aku = getelementptr inbounds [2 x i8], ptr %.17432385.us, i64 %i.zu ; 2 uses
  %indvars.iv.next2573 = add nuw nsw i64 %indvars.iv2572, 8 ; 3 uses
  %i.akv = or disjoint i64 %indvars.iv.next2573, 7 ; 2 uses
  %i.akw = trunc nuw i64 %i.akv to i32
  %i.akx = icmp sgt i32 %i.ae, %i.akw
  br i1 %i.akx, label %.preheader2298.us, label %.preheader2302.loopexit, !llvm.loop !297

.preheader2302.loopexit:                          ; preds = %._crit_edge.us2394
  %i.aky = trunc nuw i64 %indvars.iv.next2573 to i32
  br label %.preheader2302

.preheader2302:                                   ; preds = %.preheader2298.preheader, %.preheader2302.loopexit, %.preheader2303
  %.9.lcssa = phi <16 x float> [ %.12206.lcssa, %.preheader2303 ], [ %.152217.us, %.preheader2302.loopexit ], [ %.12206.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.11793.lcssa = phi <16 x float> [ %.0782.lcssa, %.preheader2303 ], [ %.20802.us, %.preheader2302.loopexit ], [ %.0782.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.11763.lcssa = phi <16 x float> [ %.0752.lcssa, %.preheader2303 ], [ %.20772.us, %.preheader2302.loopexit ], [ %.0752.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.11.lcssa = phi <16 x float> [ %.0747.lcssa, %.preheader2303 ], [ %.20.us, %.preheader2302.loopexit ], [ %.0747.lcssa, %.preheader2298.preheader ] ; 3 uses
  %.1743.lcssa = phi ptr [ %.0742.lcssa, %.preheader2303 ], [ %i.aku, %.preheader2302.loopexit ], [ %scevgep2565, %.preheader2298.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0741.lcssa, %.preheader2303 ], [ %i.aky, %.preheader2302.loopexit ], [ %i.aac, %.preheader2298.preheader ] ; 5 uses
  %i.akz = or disjoint i32 %.1.lcssa, 3           ; 2 uses
  %i.ala = icmp slt i32 %i.akz, %i.ae
  br i1 %i.ala, label %.preheader2297.lr.ph, label %.preheader2301

.preheader2297.lr.ph:                             ; preds = %.preheader2302
  %i.alb = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.alc = icmp sgt i32 %i.alb, 0
  %.neg2278 = add nuw nsw i32 %.08122526, 1
  %i.ald = load i32, ptr %15, align 4, !tbaa !9
  %i.ale = shl i32 %i.ald, 6
  %i.alf = sext i32 %i.ale to i64                 ; 2 uses
  br i1 %i.alc, label %.preheader2297.lr.ph.split.us, label %.preheader2297.preheader

.preheader2297.preheader:                         ; preds = %.preheader2297.lr.ph
  %i.alg = sub i32 %i.bn, %.1.lcssa               ; 2 uses
  %i.alh = lshr i32 %i.alg, 1
  %i.ali = and i32 %i.alh, 2147483646
  %narrow2653 = add nuw i32 %i.ali, 2
  %i.alj = zext i32 %narrow2653 to i64
  %i.alk = mul nsw i64 %i.alj, %i.alf
  %scevgep2575 = getelementptr i8, ptr %.1743.lcssa, i64 %i.alk
  %i.all = add nsw i32 %.1.lcssa, 4
  %i.alm = and i32 %i.alg, -4
  %i.aln = add i32 %i.all, %i.alm
  br label %.preheader2301

.preheader2297.lr.ph.split.us:                    ; preds = %.preheader2297.lr.ph
  %i.alo = load i32, ptr %8, align 4, !tbaa !9
  %i.alp = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2447.us = sub i32 %.neg2284, %i.alp
  %i.alq = zext i32 %.1.lcssa to i64
  %i.alr = zext nneg i32 %i.akz to i64
  br label %.preheader2297.us

.preheader2297.us:                                ; preds = %._crit_edge.us2470, %.preheader2297.lr.ph.split.us
  %indvars.iv2587 = phi i64 [ %indvars.iv.next2588, %._crit_edge.us2470 ], [ %i.alq, %.preheader2297.lr.ph.split.us ] ; 5 uses
  %i.als = phi i64 [ %i.ars, %._crit_edge.us2470 ], [ %i.alr, %.preheader2297.lr.ph.split.us ]
  %.27442453.us = phi ptr [ %i.arr, %._crit_edge.us2470 ], [ %.1743.lcssa, %.preheader2297.lr.ph.split.us ] ; 3 uses
  %.212452.us = phi <16 x float> [ %.29.us, %._crit_edge.us2470 ], [ %.11.lcssa, %.preheader2297.lr.ph.split.us ]
  %.217732451.us = phi <16 x float> [ %.29781.us, %._crit_edge.us2470 ], [ %.11763.lcssa, %.preheader2297.lr.ph.split.us ]
  %.218032450.us = phi <16 x float> [ %.29811.us, %._crit_edge.us2470 ], [ %.11793.lcssa, %.preheader2297.lr.ph.split.us ]
  %.162449.us = phi <16 x float> [ %.212220.us, %._crit_edge.us2470 ], [ %.9.lcssa, %.preheader2297.lr.ph.split.us ]
  %i.alt = or disjoint i64 %indvars.iv2587, 1
  %i.alu = or disjoint i64 %indvars.iv2587, 2
  %i.alv = lshr exact i64 %indvars.iv2587, 2
  br label %bb.m

bb.m:                                             ; preds = %.preheader2297.us, %.loopexit2290.us
  %.07362441.us = phi i32 [ 0, %.preheader2297.us ], [ %i.arq, %.loopexit2290.us ] ; 3 uses
  %.222440.us = phi <16 x float> [ %.212452.us, %.preheader2297.us ], [ %.29.us, %.loopexit2290.us ] ; 6 uses
  %.227742439.us = phi <16 x float> [ %.217732451.us, %.preheader2297.us ], [ %.29781.us, %.loopexit2290.us ] ; 6 uses
  %.228042438.us = phi <16 x float> [ %.218032450.us, %.preheader2297.us ], [ %.29811.us, %.loopexit2290.us ] ; 6 uses
  %.172437.us = phi <16 x float> [ %.162449.us, %.preheader2297.us ], [ %.212220.us, %.loopexit2290.us ] ; 6 uses
  %i.alw = mul nsw i32 %i.alo, %.07362441.us
  %.reass2448.us = add i32 %i.alw, %invariant.op2447.us ; 3 uses
  %i.alx = icmp slt i32 %.reass2448.us, 0
  br i1 %i.alx, label %.loopexit2290.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aly = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.alz = srem i32 %.reass2448.us, %i.aly
  %i.ama = sdiv i32 %.reass2448.us, %i.aly        ; 2 uses
  %.not875.us = icmp eq i32 %i.alz, 0
  %.not876.us = icmp slt i32 %i.ama, %i.ag
  %or.cond2786 = select i1 %.not875.us, i1 %.not876.us, i1 false
  br i1 %or.cond2786, label %.preheader2289.us, label %.loopexit2290.us

.preheader2289.us:                                ; preds = %bb.n
  %i.amb = load i32, ptr %11, align 4, !tbaa !9   ; 4 uses
  %i.amc = icmp sgt i32 %i.amb, 0
  br i1 %i.amc, label %.lr.ph.us2461, label %.loopexit2290.us

.lr.ph.us2461:                                    ; preds = %.preheader2289.us
  %i.amd = load i32, ptr %12, align 4, !tbaa !9   ; 2 uses
  %i.ame = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us2462 = sub i32 %.neg2278, %i.ame ; 2 uses
  %i.amf = mul nuw nsw i32 %i.amb, %.07362441.us  ; 2 uses
  %i.amg = sext i32 %i.ama to i64                 ; 2 uses
  switch i32 %.fr, label %.loopexit2290.us [
    i32 4, label %.lr.ph.split.us.us.preheader
    i32 1, label %.lr.ph.split.us2415.us.preheader
  ]

.lr.ph.split.us2415.us.preheader:                 ; preds = %.lr.ph.us2461
  %wide.trip.count2579 = zext nneg i32 %i.amb to i64
  br label %.lr.ph.split.us2415.us

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us2461
  %wide.trip.count2584 = zext nneg i32 %i.amb to i64
  br label %.lr.ph.split.us.us

.lr.ph.split.us2415.us:                           ; preds = %.lr.ph.split.us2415.us.preheader, %bb.p
  %indvars.iv2576 = phi i64 [ 0, %.lr.ph.split.us2415.us.preheader ], [ %indvars.iv.next2577, %bb.p ] ; 3 uses
  %.232404.us2417.us = phi <16 x float> [ %.222440.us, %.lr.ph.split.us2415.us.preheader ], [ %.27.us2427.us, %bb.p ] ; 3 uses
  %.237752403.us2418.us = phi <16 x float> [ %.227742439.us, %.lr.ph.split.us2415.us.preheader ], [ %.27779.us2426.us, %bb.p ] ; 3 uses
  %.238052402.us2419.us = phi <16 x float> [ %.228042438.us, %.lr.ph.split.us2415.us.preheader ], [ %.27809.us2425.us, %bb.p ] ; 3 uses
  %.1822182401.us2420.us = phi <16 x float> [ %.172437.us, %.lr.ph.split.us2415.us.preheader ], [ %.202219.us2424.us, %bb.p ] ; 3 uses
  %i.amh = trunc i64 %indvars.iv2576 to i32
  %i.ami = mul i32 %i.amd, %i.amh
  %.reass.us2421.us = add i32 %i.ami, %invariant.op.us2462 ; 3 uses
  %i.amj = icmp slt i32 %.reass.us2421.us, 0
  br i1 %i.amj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.us2415.us
  %i.amk = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.aml = srem i32 %.reass.us2421.us, %i.amk
  %i.amm = sdiv i32 %.reass.us2421.us, %i.amk     ; 2 uses
  %.not877.us2422.us = icmp eq i32 %i.aml, 0
  %.not878.us2423.us = icmp slt i32 %i.amm, %i.af
  %or.cond2787 = select i1 %.not877.us2422.us, i1 %.not878.us2423.us, i1 false
  br i1 %or.cond2787, label %.noexc941.us.us, label %bb.p

.noexc941.us.us:                                  ; preds = %bb.o
  %i.amn = trunc i64 %indvars.iv2576 to i32
  %i.amo = add i32 %i.amf, %i.amn
  %i.amp = shl nsw i32 %i.amo, 6
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = getelementptr inbounds nuw [2 x i8], ptr %.27442453.us, i64 %i.amq ; 4 uses
  %i.ams = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !327
  %i.amt = load ptr, ptr %3, align 8, !tbaa !19, !noalias !327 ; 4 uses
  %i.amu = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !327 ; 4 uses
  %i.amv = mul i64 %i.amu, %indvars.iv2587
  %i.amw = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !327 ; 5 uses
  %i.amx = mul i64 %i.amv, %i.amw
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.amx
  %i.amz = sext i32 %i.ams to i64
  %i.ana = mul nsw i64 %i.amz, %i.amg
  %i.anb = mul i64 %i.ana, %i.amw                 ; 4 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 %i.anb
  %i.and = sext i32 %i.amm to i64                 ; 4 uses
  %i.ane = getelementptr inbounds [2 x i8], ptr %i.anc, i64 %i.and
  %i.anf = load i16, ptr %i.ane, align 2, !tbaa !28
  %i.ang = zext i16 %i.anf to i32
  %i.anh = shl nuw i32 %i.ang, 16
  %i.ani = insertelement <16 x i32> poison, i32 %i.anh, i64 0
  %i.anj = bitcast <16 x i32> %i.ani to <16 x float>
  %i.ank = shufflevector <16 x float> %i.anj, <16 x float> poison, <16 x i32> zeroinitializer
  %i.anl = mul i64 %i.amu, %i.alt
  %i.anm = mul i64 %i.anl, %i.amw
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.anm
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 %i.anb
  %i.anp = getelementptr inbounds [2 x i8], ptr %i.ano, i64 %i.and
  %i.anq = load i16, ptr %i.anp, align 2, !tbaa !28
  %i.anr = zext i16 %i.anq to i32
  %i.ans = shl nuw i32 %i.anr, 16
  %i.ant = insertelement <16 x i32> poison, i32 %i.ans, i64 0
  %i.anu = bitcast <16 x i32> %i.ant to <16 x float>
  %i.anv = shufflevector <16 x float> %i.anu, <16 x float> poison, <16 x i32> zeroinitializer
  %i.anw = mul i64 %i.amu, %i.alu
  %i.anx = mul i64 %i.anw, %i.amw
  %i.any = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.anx
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 %i.anb
  %i.aoa = getelementptr inbounds [2 x i8], ptr %i.anz, i64 %i.and
  %i.aob = load i16, ptr %i.aoa, align 2, !tbaa !28
  %i.aoc = zext i16 %i.aob to i32
  %i.aod = shl nuw i32 %i.aoc, 16
  %i.aoe = insertelement <16 x i32> poison, i32 %i.aod, i64 0
  %i.aof = bitcast <16 x i32> %i.aoe to <16 x float>
  %i.aog = shufflevector <16 x float> %i.aof, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aoh = mul i64 %i.amu, %i.als
  %i.aoi = mul i64 %i.aoh, %i.amw
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.amt, i64 %i.aoi
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 %i.anb
  %i.aol = getelementptr inbounds [2 x i8], ptr %i.aok, i64 %i.and
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !28
  %i.aon = zext i16 %i.aom to i32
  %i.aoo = shl nuw i32 %i.aon, 16
  %i.aop = insertelement <16 x i32> poison, i32 %i.aoo, i64 0
  %i.aoq = bitcast <16 x i32> %i.aop to <16 x float>
  %i.aor = shufflevector <16 x float> %i.aoq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aos = load <16 x bfloat>, ptr %i.amr, align 32, !tbaa !26
  %i.aot = fpext fast <16 x bfloat> %i.aos to <16 x float>
  %i.aou = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ank, <16 x float> nofpclass(nan inf) %i.aot, <16 x float> nofpclass(nan inf) %.1822182401.us2420.us)
  %i.aov = getelementptr inbounds nuw i8, ptr %i.amr, i64 32
  %i.aow = load <16 x bfloat>, ptr %i.aov, align 32, !tbaa !26
  %i.aox = fpext fast <16 x bfloat> %i.aow to <16 x float>
  %i.aoy = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.anv, <16 x float> nofpclass(nan inf) %i.aox, <16 x float> nofpclass(nan inf) %.238052402.us2419.us)
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.amr, i64 64
  %i.apa = load <16 x bfloat>, ptr %i.aoz, align 32, !tbaa !26
  %i.apb = fpext fast <16 x bfloat> %i.apa to <16 x float>
  %i.apc = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aog, <16 x float> nofpclass(nan inf) %i.apb, <16 x float> nofpclass(nan inf) %.237752403.us2418.us)
  %i.apd = getelementptr inbounds nuw i8, ptr %i.amr, i64 96
  %i.ape = load <16 x bfloat>, ptr %i.apd, align 32, !tbaa !26
  %i.apf = fpext fast <16 x bfloat> %i.ape to <16 x float>
  %i.apg = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aor, <16 x float> nofpclass(nan inf) %i.apf, <16 x float> nofpclass(nan inf) %.232404.us2417.us)
  br label %bb.p

bb.p:                                             ; preds = %.noexc941.us.us, %bb.o, %.lr.ph.split.us2415.us
  %.202219.us2424.us = phi nsz <16 x float> [ %.1822182401.us2420.us, %.lr.ph.split.us2415.us ], [ %i.aou, %.noexc941.us.us ], [ %.1822182401.us2420.us, %bb.o ] ; 2 uses
  %.27809.us2425.us = phi nsz <16 x float> [ %.238052402.us2419.us, %.lr.ph.split.us2415.us ], [ %i.aoy, %.noexc941.us.us ], [ %.238052402.us2419.us, %bb.o ] ; 2 uses
  %.27779.us2426.us = phi nsz <16 x float> [ %.237752403.us2418.us, %.lr.ph.split.us2415.us ], [ %i.apc, %.noexc941.us.us ], [ %.237752403.us2418.us, %bb.o ] ; 2 uses
  %.27.us2427.us = phi nsz <16 x float> [ %.232404.us2417.us, %.lr.ph.split.us2415.us ], [ %i.apg, %.noexc941.us.us ], [ %.232404.us2417.us, %bb.o ] ; 2 uses
  %indvars.iv.next2577 = add nuw nsw i64 %indvars.iv2576, 1 ; 2 uses
  %exitcond2580.not = icmp eq i64 %indvars.iv.next2577, %wide.trip.count2579
  br i1 %exitcond2580.not, label %.loopexit2290.us, label %.lr.ph.split.us2415.us, !llvm.loop !300

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.r
  %indvars.iv2581 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next2582, %bb.r ] ; 3 uses
  %.232404.us.us = phi <16 x float> [ %.222440.us, %.lr.ph.split.us.us.preheader ], [ %.27.us.us, %bb.r ] ; 3 uses
  %.237752403.us.us = phi <16 x float> [ %.227742439.us, %.lr.ph.split.us.us.preheader ], [ %.27779.us.us, %bb.r ] ; 3 uses
  %.238052402.us.us = phi <16 x float> [ %.228042438.us, %.lr.ph.split.us.us.preheader ], [ %.27809.us.us, %bb.r ] ; 3 uses
  %.1822182401.us.us = phi <16 x float> [ %.172437.us, %.lr.ph.split.us.us.preheader ], [ %.202219.us.us, %bb.r ] ; 3 uses
  %i.aph = trunc i64 %indvars.iv2581 to i32
  %i.api = mul i32 %i.amd, %i.aph
  %.reass.us2410.us = add i32 %i.api, %invariant.op.us2462 ; 3 uses
  %i.apj = icmp slt i32 %.reass.us2410.us, 0
  br i1 %i.apj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.us.us
  %i.apk = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.apl = srem i32 %.reass.us2410.us, %i.apk
  %i.apm = sdiv i32 %.reass.us2410.us, %i.apk     ; 2 uses
  %.not877.us.us = icmp eq i32 %i.apl, 0
  %.not878.us.us = icmp slt i32 %i.apm, %i.af
  %or.cond2788 = select i1 %.not877.us.us, i1 %.not878.us.us, i1 false
  br i1 %or.cond2788, label %.noexc943.us.us, label %bb.r

.noexc943.us.us:                                  ; preds = %bb.q
  %i.apn = trunc i64 %indvars.iv2581 to i32
  %i.apo = add i32 %i.amf, %i.apn
  %i.app = shl nsw i32 %i.apo, 6
  %i.apq = zext nneg i32 %i.app to i64
  %i.apr = getelementptr inbounds nuw [2 x i8], ptr %.27442453.us, i64 %i.apq ; 4 uses
  %i.aps = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !328
  %i.apt = load ptr, ptr %3, align 8, !tbaa !19, !noalias !328
  %i.apu = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !328
  %i.apv = mul i64 %i.apu, %i.alv
  %i.apw = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !328 ; 2 uses
  %i.apx = mul i64 %i.apv, %i.apw
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apt, i64 %i.apx
  %i.apz = sext i32 %i.aps to i64
  %i.aqa = mul nsw i64 %i.apz, %i.amg
  %i.aqb = mul i64 %i.aqa, %i.apw
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apy, i64 %i.aqb
  %i.aqd = shl nsw i32 %i.apm, 2
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds [2 x i8], ptr %i.aqc, i64 %i.aqe ; 3 uses
  %i.aqg = load i16, ptr %i.aqf, align 2, !tbaa !28
  %i.aqh = zext i16 %i.aqg to i32
  %i.aqi = shl nuw i32 %i.aqh, 16
  %i.aqj = insertelement <16 x i32> poison, i32 %i.aqi, i64 0
  %i.aqk = bitcast <16 x i32> %i.aqj to <16 x float>
  %i.aql = shufflevector <16 x float> %i.aqk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aqf, i64 2
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !28
  %i.aqo = zext i16 %i.aqn to i32
  %i.aqp = shl nuw i32 %i.aqo, 16
  %i.aqq = insertelement <16 x i32> poison, i32 %i.aqp, i64 0
  %i.aqr = bitcast <16 x i32> %i.aqq to <16 x float>
  %i.aqs = shufflevector <16 x float> %i.aqr, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqf, i64 4
  %i.aqu = load <2 x i16>, ptr %i.aqt, align 2, !tbaa !28
  %i.aqv = zext <2 x i16> %i.aqu to <2 x i32>
  %i.aqw = shl nuw <2 x i32> %i.aqv, splat (i32 16) ; 2 uses
  %i.aqx = bitcast <2 x i32> %i.aqw to <2 x float>
  %i.aqy = shufflevector <2 x float> %i.aqx, <2 x float> poison, <16 x i32> zeroinitializer
  %i.aqz = bitcast <2 x i32> %i.aqw to <2 x float>
  %i.ara = shufflevector <2 x float> %i.aqz, <2 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.arb = load <16 x bfloat>, ptr %i.apr, align 32, !tbaa !26
  %i.arc = fpext fast <16 x bfloat> %i.arb to <16 x float>
  %i.ard = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aql, <16 x float> nofpclass(nan inf) %i.arc, <16 x float> nofpclass(nan inf) %.1822182401.us.us)
  %i.are = getelementptr inbounds nuw i8, ptr %i.apr, i64 32
  %i.arf = load <16 x bfloat>, ptr %i.are, align 32, !tbaa !26
  %i.arg = fpext fast <16 x bfloat> %i.arf to <16 x float>
  %i.arh = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqs, <16 x float> nofpclass(nan inf) %i.arg, <16 x float> nofpclass(nan inf) %.238052402.us.us)
  %i.ari = getelementptr inbounds nuw i8, ptr %i.apr, i64 64
  %i.arj = load <16 x bfloat>, ptr %i.ari, align 32, !tbaa !26
  %i.ark = fpext fast <16 x bfloat> %i.arj to <16 x float>
  %i.arl = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aqy, <16 x float> nofpclass(nan inf) %i.ark, <16 x float> nofpclass(nan inf) %.237752403.us.us)
  %i.arm = getelementptr inbounds nuw i8, ptr %i.apr, i64 96
  %i.arn = load <16 x bfloat>, ptr %i.arm, align 32, !tbaa !26
  %i.aro = fpext fast <16 x bfloat> %i.arn to <16 x float>
  %i.arp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.ara, <16 x float> nofpclass(nan inf) %i.aro, <16 x float> nofpclass(nan inf) %.232404.us.us)
  br label %bb.r

bb.r:                                             ; preds = %.noexc943.us.us, %bb.q, %.lr.ph.split.us.us
  %.202219.us.us = phi nsz <16 x float> [ %.1822182401.us.us, %.lr.ph.split.us.us ], [ %i.ard, %.noexc943.us.us ], [ %.1822182401.us.us, %bb.q ] ; 2 uses
  %.27809.us.us = phi nsz <16 x float> [ %.238052402.us.us, %.lr.ph.split.us.us ], [ %i.arh, %.noexc943.us.us ], [ %.238052402.us.us, %bb.q ] ; 2 uses
  %.27779.us.us = phi nsz <16 x float> [ %.237752403.us.us, %.lr.ph.split.us.us ], [ %i.arl, %.noexc943.us.us ], [ %.237752403.us.us, %bb.q ] ; 2 uses
  %.27.us.us = phi nsz <16 x float> [ %.232404.us.us, %.lr.ph.split.us.us ], [ %i.arp, %.noexc943.us.us ], [ %.232404.us.us, %bb.q ] ; 2 uses
  %indvars.iv.next2582 = add nuw nsw i64 %indvars.iv2581, 1 ; 2 uses
  %exitcond2585.not = icmp eq i64 %indvars.iv.next2582, %wide.trip.count2584
  br i1 %exitcond2585.not, label %.loopexit2290.us, label %.lr.ph.split.us.us, !llvm.loop !300

.loopexit2290.us:                                 ; preds = %bb.p, %bb.r, %.lr.ph.us2461, %.preheader2289.us, %bb.n, %bb.m
  %.212220.us = phi nsz <16 x float> [ %.172437.us, %bb.m ], [ %.172437.us, %bb.n ], [ %.202219.us.us, %bb.r ], [ %.172437.us, %.preheader2289.us ], [ %.172437.us, %.lr.ph.us2461 ], [ %.202219.us2424.us, %bb.p ] ; 3 uses
  %.29811.us = phi nsz <16 x float> [ %.228042438.us, %bb.m ], [ %.228042438.us, %bb.n ], [ %.27809.us.us, %bb.r ], [ %.228042438.us, %.preheader2289.us ], [ %.228042438.us, %.lr.ph.us2461 ], [ %.27809.us2425.us, %bb.p ] ; 3 uses
  %.29781.us = phi nsz <16 x float> [ %.227742439.us, %bb.m ], [ %.227742439.us, %bb.n ], [ %.27779.us.us, %bb.r ], [ %.227742439.us, %.preheader2289.us ], [ %.227742439.us, %.lr.ph.us2461 ], [ %.27779.us2426.us, %bb.p ] ; 3 uses
  %.29.us = phi nsz <16 x float> [ %.222440.us, %bb.m ], [ %.222440.us, %bb.n ], [ %.27.us.us, %bb.r ], [ %.222440.us, %.preheader2289.us ], [ %.222440.us, %.lr.ph.us2461 ], [ %.27.us2427.us, %bb.p ] ; 3 uses
  %i.arq = add nuw nsw i32 %.07362441.us, 1       ; 2 uses
  %exitcond2586.not = icmp eq i32 %i.arq, %i.alb
  br i1 %exitcond2586.not, label %._crit_edge.us2470, label %bb.m, !llvm.loop !303

._crit_edge.us2470:                               ; preds = %.loopexit2290.us
  %i.arr = getelementptr inbounds [2 x i8], ptr %.27442453.us, i64 %i.alf ; 2 uses
  %indvars.iv.next2588 = add nuw nsw i64 %indvars.iv2587, 4 ; 3 uses
  %i.ars = or disjoint i64 %indvars.iv.next2588, 3 ; 2 uses
  %i.art = trunc nuw i64 %i.ars to i32
  %i.aru = icmp sgt i32 %i.ae, %i.art
  br i1 %i.aru, label %.preheader2297.us, label %.preheader2301.loopexit, !llvm.loop !304

.preheader2301.loopexit:                          ; preds = %._crit_edge.us2470
  %i.arv = trunc nuw i64 %indvars.iv.next2588 to i32
  br label %.preheader2301

.preheader2301:                                   ; preds = %.preheader2297.preheader, %.preheader2301.loopexit, %.preheader2302
  %.16.lcssa = phi <16 x float> [ %.9.lcssa, %.preheader2302 ], [ %.212220.us, %.preheader2301.loopexit ], [ %.9.lcssa, %.preheader2297.preheader ] ; 3 uses
  %.21803.lcssa = phi <16 x float> [ %.11793.lcssa, %.preheader2302 ], [ %.29811.us, %.preheader2301.loopexit ], [ %.11793.lcssa, %.preheader2297.preheader ] ; 3 uses
  %.21773.lcssa = phi <16 x float> [ %.11763.lcssa, %.preheader2302 ], [ %.29781.us, %.preheader2301.loopexit ], [ %.11763.lcssa, %.preheader2297.preheader ]
  %.21.lcssa = phi <16 x float> [ %.11.lcssa, %.preheader2302 ], [ %.29.us, %.preheader2301.loopexit ], [ %.11.lcssa, %.preheader2297.preheader ]
  %.2744.lcssa = phi ptr [ %.1743.lcssa, %.preheader2302 ], [ %i.arr, %.preheader2301.loopexit ], [ %scevgep2575, %.preheader2297.preheader ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader2302 ], [ %i.arv, %.preheader2301.loopexit ], [ %i.aln, %.preheader2297.preheader ] ; 5 uses
  %i.arw = or disjoint i32 %.2.lcssa, 1           ; 2 uses
  %i.arx = icmp slt i32 %i.arw, %i.ae
  br i1 %i.arx, label %.preheader2296.lr.ph, label %.preheader2300

.preheader2296.lr.ph:                             ; preds = %.preheader2301
  %i.ary = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.arz = icmp sgt i32 %i.ary, 0
  %.neg2274 = add nuw nsw i32 %.08122526, 1
  %i.asa = load i32, ptr %15, align 4, !tbaa !9
  %i.asb = shl i32 %i.asa, 5
  %i.asc = sext i32 %i.asb to i64                 ; 2 uses
  br i1 %i.arz, label %.preheader2296.lr.ph.split.us, label %.preheader2296.preheader

.preheader2296.preheader:                         ; preds = %.preheader2296.lr.ph
  %i.asd = sub i32 %i.bo, %.2.lcssa               ; 2 uses
  %i.ase = and i32 %i.asd, -2
  %i.asf = zext i32 %i.ase to i64
  %i.asg = add nuw nsw i64 %i.asf, 2
  %i.ash = mul nsw i64 %i.asg, %i.asc
  %scevgep2590 = getelementptr i8, ptr %.2744.lcssa, i64 %i.ash
  %i.asi = add nsw i32 %.2.lcssa, 2
  %i.asj = and i32 %i.asd, -2
  %i.ask = add i32 %i.asi, %i.asj
  br label %.preheader2300

.preheader2296.lr.ph.split.us:                    ; preds = %.preheader2296.lr.ph
  %i.asl = load i32, ptr %8, align 4, !tbaa !9
  %i.asm = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2488.us = sub i32 %.neg2284, %i.asm
  %i.asn = zext i32 %.2.lcssa to i64
  %i.aso = zext nneg i32 %i.arw to i64
  br label %.preheader2296.us

.preheader2296.us:                                ; preds = %._crit_edge.us2501, %.preheader2296.lr.ph.split.us
  %indvars.iv2597 = phi i64 [ %indvars.iv.next2598, %._crit_edge.us2501 ], [ %i.asn, %.preheader2296.lr.ph.split.us ] ; 2 uses
  %i.asp = phi i64 [ %i.auz, %._crit_edge.us2501 ], [ %i.aso, %.preheader2296.lr.ph.split.us ]
  %.37452492.us = phi ptr [ %i.auy, %._crit_edge.us2501 ], [ %.2744.lcssa, %.preheader2296.lr.ph.split.us ] ; 2 uses
  %.302491.us = phi <16 x float> [ %.36.us, %._crit_edge.us2501 ], [ %.21803.lcssa, %.preheader2296.lr.ph.split.us ]
  %.2222212490.us = phi <16 x float> [ %.26.us, %._crit_edge.us2501 ], [ %.16.lcssa, %.preheader2296.lr.ph.split.us ]
  br label %bb.s

bb.s:                                             ; preds = %.preheader2296.us, %.loopexit2288.us
  %.07342484.us = phi i32 [ 0, %.preheader2296.us ], [ %i.aut, %.loopexit2288.us ] ; 3 uses
  %.312483.us = phi <16 x float> [ %.302491.us, %.preheader2296.us ], [ %.36.us, %.loopexit2288.us ] ; 4 uses
  %.2322222482.us = phi <16 x float> [ %.2222212490.us, %.preheader2296.us ], [ %.26.us, %.loopexit2288.us ] ; 4 uses
  %i.asq = mul nsw i32 %i.asl, %.07342484.us
  %.reass2489.us = add i32 %i.asq, %invariant.op2488.us ; 3 uses
  %i.asr = icmp slt i32 %.reass2489.us, 0
  br i1 %i.asr, label %.loopexit2288.us, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ass = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.ast = srem i32 %.reass2489.us, %i.ass
  %i.asu = sdiv i32 %.reass2489.us, %i.ass        ; 2 uses
  %.not871.us = icmp eq i32 %i.ast, 0
  %.not872.us = icmp slt i32 %i.asu, %i.ag
  %or.cond2789 = select i1 %.not871.us, i1 %.not872.us, i1 false
  br i1 %or.cond2789, label %.preheader2287.us, label %.loopexit2288.us

.preheader2287.us:                                ; preds = %bb.t
  %i.asv = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.asw = icmp sgt i32 %i.asv, 0
  br i1 %i.asw, label %.lr.ph.us2499, label %.loopexit2288.us

bb.u:                                             ; preds = %.lr.ph.us2499, %bb.w
  %indvars.iv2591 = phi i64 [ 0, %.lr.ph.us2499 ], [ %indvars.iv.next2592, %bb.w ] ; 3 uses
  %.322478.us = phi <16 x float> [ %.312483.us, %.lr.ph.us2499 ], [ %.34.us, %bb.w ] ; 3 uses
  %.2422232477.us = phi <16 x float> [ %.2322222482.us, %.lr.ph.us2499 ], [ %.25.us, %bb.w ] ; 3 uses
  %i.asx = trunc i64 %indvars.iv2591 to i32
  %i.asy = mul i32 %i.auu, %i.asx
  %.reass.us2498 = add i32 %i.asy, %invariant.op.us2500 ; 3 uses
  %i.asz = icmp slt i32 %.reass.us2498, 0
  br i1 %i.asz, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ata = load i32, ptr %14, align 4, !tbaa !9   ; 2 uses
  %i.atb = srem i32 %.reass.us2498, %i.ata
  %i.atc = sdiv i32 %.reass.us2498, %i.ata        ; 2 uses
  %.not873.us = icmp eq i32 %i.atb, 0
  %.not874.us = icmp slt i32 %i.atc, %i.af
  %or.cond2790 = select i1 %.not873.us, i1 %.not874.us, i1 false
  br i1 %or.cond2790, label %.noexc933.us, label %bb.w

.noexc933.us:                                     ; preds = %bb.v
  %i.atd = trunc i64 %indvars.iv2591 to i32
  %i.ate = add i32 %i.auw, %i.atd
  %i.atf = shl nsw i32 %i.ate, 5
  %i.atg = zext nneg i32 %i.atf to i64
  %i.ath = getelementptr inbounds nuw [2 x i8], ptr %.37452492.us, i64 %i.atg ; 2 uses
  %i.ati = load i32, ptr %i.n, align 4, !tbaa !22, !noalias !329
  %i.atj = load ptr, ptr %3, align 8, !tbaa !19, !noalias !329 ; 2 uses
  %i.atk = load i64, ptr %i.w, align 8, !tbaa !17, !noalias !329 ; 2 uses
  %i.atl = mul i64 %i.atk, %indvars.iv2597
  %i.atm = load i64, ptr %i.x, align 8, !tbaa !24, !noalias !329 ; 3 uses
  %i.atn = mul i64 %i.atl, %i.atm
  %i.ato = getelementptr inbounds nuw i8, ptr %i.atj, i64 %i.atn
  %i.atp = sext i32 %i.ati to i64
  %i.atq = mul nsw i64 %i.atp, %i.aux
  %i.atr = mul i64 %i.atq, %i.atm                 ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %i.ato, i64 %i.atr
  %i.att = mul i64 %i.atk, %i.asp
  %i.atu = mul i64 %i.att, %i.atm
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atj, i64 %i.atu
  %i.atw = sext i32 %i.atc to i64                 ; 2 uses
  %i.atx = getelementptr inbounds [2 x i8], ptr %i.ats, i64 %i.atw
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atv, i64 %i.atr
  %i.atz = getelementptr inbounds [2 x i8], ptr %i.aty, i64 %i.atw
  %i.aua = load i16, ptr %i.atx, align 2, !tbaa !28
  %i.aub = zext i16 %i.aua to i32
  %i.auc = shl nuw i32 %i.aub, 16
  %i.aud = insertelement <16 x i32> poison, i32 %i.auc, i64 0
  %i.aue = bitcast <16 x i32> %i.aud to <16 x float>
  %i.auf = shufflevector <16 x float> %i.aue, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aug = load i16, ptr %i.atz, align 2, !tbaa !28
  %i.auh = zext i16 %i.aug to i32
  %i.aui = shl nuw i32 %i.auh, 16
  %i.auj = insertelement <16 x i32> poison, i32 %i.aui, i64 0
  %i.auk = bitcast <16 x i32> %i.auj to <16 x float>
  %i.aul = shufflevector <16 x float> %i.auk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.aum = load <16 x bfloat>, ptr %i.ath, align 32, !tbaa !26
  %i.aun = fpext fast <16 x bfloat> %i.aum to <16 x float>
  %i.auo = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.auf, <16 x float> nofpclass(nan inf) %i.aun, <16 x float> nofpclass(nan inf) %.2422232477.us)
  %i.aup = getelementptr inbounds nuw i8, ptr %i.ath, i64 32
  %i.auq = load <16 x bfloat>, ptr %i.aup, align 32, !tbaa !26
  %i.aur = fpext fast <16 x bfloat> %i.auq to <16 x float>
  %i.aus = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.aul, <16 x float> nofpclass(nan inf) %i.aur, <16 x float> nofpclass(nan inf) %.322478.us)
  br label %bb.w

bb.w:                                             ; preds = %.noexc933.us, %bb.v, %bb.u
  %.25.us = phi nsz <16 x float> [ %.2422232477.us, %bb.u ], [ %i.auo, %.noexc933.us ], [ %.2422232477.us, %bb.v ] ; 2 uses
  %.34.us = phi nsz <16 x float> [ %.322478.us, %bb.u ], [ %i.aus, %.noexc933.us ], [ %.322478.us, %bb.v ] ; 2 uses
  %indvars.iv.next2592 = add nuw nsw i64 %indvars.iv2591, 1 ; 2 uses
  %exitcond2595.not = icmp eq i64 %indvars.iv.next2592, %wide.trip.count2594
  br i1 %exitcond2595.not, label %.loopexit2288.us, label %bb.u, !llvm.loop !307

.loopexit2288.us:                                 ; preds = %bb.w, %.preheader2287.us, %bb.t, %bb.s
  %.26.us = phi nsz <16 x float> [ %.2322222482.us, %bb.s ], [ %.2322222482.us, %bb.t ], [ %.2322222482.us, %.preheader2287.us ], [ %.25.us, %bb.w ] ; 3 uses
  %.36.us = phi nsz <16 x float> [ %.312483.us, %bb.s ], [ %.312483.us, %bb.t ], [ %.312483.us, %.preheader2287.us ], [ %.34.us, %bb.w ] ; 3 uses
  %i.aut = add nuw nsw i32 %.07342484.us, 1       ; 2 uses
  %exitcond2596.not = icmp eq i32 %i.aut, %i.ary
  br i1 %exitcond2596.not, label %._crit_edge.us2501, label %bb.s, !llvm.loop !308

.lr.ph.us2499:                                    ; preds = %.preheader2287.us
  %i.auu = load i32, ptr %12, align 4, !tbaa !9
  %i.auv = load i32, ptr %13, align 4, !tbaa !9
  %invariant.op.us2500 = sub i32 %.neg2274, %i.auv
  %i.auw = mul nuw nsw i32 %i.asv, %.07342484.us
  %i.aux = sext i32 %i.asu to i64
  %wide.trip.count2594 = zext nneg i32 %i.asv to i64
  br label %bb.u

._crit_edge.us2501:                               ; preds = %.loopexit2288.us
  %i.auy = getelementptr inbounds [2 x i8], ptr %.37452492.us, i64 %i.asc ; 2 uses
  %indvars.iv.next2598 = add nuw nsw i64 %indvars.iv2597, 2 ; 3 uses
  %i.auz = or disjoint i64 %indvars.iv.next2598, 1 ; 2 uses
  %i.ava = trunc nuw i64 %i.auz to i32
  %i.avb = icmp sgt i32 %i.ae, %i.ava
  br i1 %i.avb, label %.preheader2296.us, label %.preheader2300.loopexit, !llvm.loop !309

.preheader2300.loopexit:                          ; preds = %._crit_edge.us2501
  %i.avc = trunc nuw i64 %indvars.iv.next2598 to i32
  br label %.preheader2300

.preheader2300:                                   ; preds = %.preheader2296.preheader, %.preheader2300.loopexit, %.preheader2301
  %.222221.lcssa = phi <16 x float> [ %.16.lcssa, %.preheader2301 ], [ %.26.us, %.preheader2300.loopexit ], [ %.16.lcssa, %.preheader2296.preheader ] ; 3 uses
  %.30.lcssa = phi <16 x float> [ %.21803.lcssa, %.preheader2301 ], [ %.36.us, %.preheader2300.loopexit ], [ %.21803.lcssa, %.preheader2296.preheader ]
  %.3745.lcssa = phi ptr [ %.2744.lcssa, %.preheader2301 ], [ %i.auy, %.preheader2300.loopexit ], [ %scevgep2590, %.preheader2296.preheader ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader2301 ], [ %i.avc, %.preheader2300.loopexit ], [ %i.ask, %.preheader2296.preheader ] ; 2 uses
  %i.avd = icmp slt i32 %.3.lcssa, %i.ae
  br i1 %i.avd, label %.preheader2295.lr.ph, label %._crit_edge2518

.preheader2295.lr.ph:                             ; preds = %.preheader2300
  %i.ave = load i32, ptr %7, align 4, !tbaa !9    ; 2 uses
  %i.avf = icmp sgt i32 %i.ave, 0
  %.neg2270 = add nuw nsw i32 %.08122526, 1
  %i.avg = load i32, ptr %15, align 4, !tbaa !9
  %i.avh = shl nsw i32 %i.avg, 4
  %i.avi = sext i32 %i.avh to i64
  br i1 %i.avf, label %.preheader2295.lr.ph.split.us, label %._crit_edge2518

.preheader2295.lr.ph.split.us:                    ; preds = %.preheader2295.lr.ph
  %i.avj = load i32, ptr %8, align 4, !tbaa !9
  %i.avk = load i32, ptr %9, align 4, !tbaa !9
  %invariant.op2513.us = sub i32 %.neg2284, %i.avk
  %i.avl = zext i32 %.3.lcssa to i64
  br label %.preheader2295.us

.preheader2295.us:                                ; preds = %._crit_edge.us2523, %.preheader2295.lr.ph.split.us
  %indvars.iv2606 = phi i64 [ %indvars.iv.next2607, %._crit_edge.us2523 ], [ %i.avl, %.preheader2295.lr.ph.split.us ] ; 2 uses
  %.47462516.us = phi ptr [ %i.axf, %._crit_edge.us2523 ], [ %.3745.lcssa, %.preheader2295.lr.ph.split.us ] ; 2 uses
  %.2722242515.us = phi <16 x float> [ %.312227.us, %._crit_edge.us2523 ], [ %.222221.lcssa, %.preheader2295.lr.ph.split.us ]
  br label %bb.x

bb.x:                                             ; preds = %.preheader2295.us, %.loopexit.us
  %.07322510.us = phi i32 [ 0, %.preheader2295.us ], [ %i.axa, %.loopexit.us ] ; 3 uses
  %.282509.us = phi <16 x float> [ %.2722242515.us, %.preheader2295.us ], [ %.312227.us, %.loopexit.us ] ; 4 uses
  %i.avm = mul nsw i32 %i.avj, %.07322510.us
  %.reass2514.us = add i32 %i.avm, %invariant.op2513.us ; 3 uses
  %i.avn = icmp slt i32 %.reass2514.us, 0
  br i1 %i.avn, label %.loopexit.us, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.avo = load i32, ptr %10, align 4, !tbaa !9   ; 2 uses
  %i.avp = srem i32 %.reass2514.us, %i.avo
  %i.avq = sdiv i32 %.reass2514.us, %i.avo        ; 2 uses
  %.not867.us = icmp eq i32 %i.avp, 0
  %.not868.us = icmp slt i32 %i.avq, %i.ag
  %or.cond2791 = select i1 %.not867.us, i1 %.not868.us, i1 false
  br i1 %or.cond2791, label %.preheader.us, label %.loopexit.us

.preheader.us:                                    ; preds = %bb.y
  %i.avr = load i32, ptr %11, align 4, !tbaa !9   ; 3 uses
  %i.avs = icmp sgt i32 %i.avr, 0
  br i1 %i.avs, label %.lr.ph.us2521, label %.loopexit.us

bb.z:                                             ; preds = %.lr.ph.us2521, %bb.ab
  %indvars.iv2600 = phi i64 [ 0, %.lr.ph.us2521 ], [ %indvars.iv.next2601, %bb.ab ] ; 3 uses
  %.2922252506.us = phi <16 x float> [ %.282509.us, %.lr.ph.us2521 ], [ %.302226.us, %bb.ab ] ; 3 uses
  %i.avt = trunc i64 %indvars.iv2600 to i32
  %i.avu = mul i32 %i.axb, %i.avt
  %.reass.us2520 = add i32 %i.avu, %invariant.op.us2522 ; 3 uses
end_hunk_7
begin_hunk_8_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
.preheader1813.lr.ph:                             ; preds = %.noexc982
  %i.ll = load i32, ptr %i.kb, align 4
  %i.lm = load ptr, ptr %7, align 8
  %i.ln = load i64, ptr %i.kd, align 8            ; 2 uses
  %i.lo = sext i32 %i.ll to i64
  %factor.op.mul1828 = mul i64 %i.ln, %i.lo       ; 16 uses
  br i1 %i.ka, label %.preheader1813.us.preheader, label %.preheader1817

.preheader1813.us.preheader:                      ; preds = %.preheader1813.lr.ph
  %i.lp = load i64, ptr %i.kc, align 8
  %factor.op.mul = mul i64 %i.lp, %i.ln
  %i.lq = insertelement <16 x i64> poison, i64 %indvars.iv2517, i64 0
  %i.lr = shufflevector <16 x i64> %i.lq, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ls = or disjoint <16 x i64> %i.lr, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.lt = insertelement <16 x i64> poison, i64 %factor.op.mul, i64 0
  %i.lu = shufflevector <16 x i64> %i.lt, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.lv = mul <16 x i64> %i.lu, %i.ls             ; 16 uses
  br label %.preheader1813.us

.preheader1813.us:                                ; preds = %.preheader1813.us.preheader, %._crit_edge1835.us
  %indvars.iv2444 = phi i64 [ 0, %.preheader1813.us.preheader ], [ %indvars.iv.next2445, %._crit_edge1835.us ] ; 17 uses
  %.08451836.us = phi ptr [ %i.lk, %.preheader1813.us.preheader ], [ %i.pm, %._crit_edge1835.us ]
  %.reass1829.us = mul i64 %factor.op.mul1828, %indvars.iv2444
  %i.lw = or disjoint i64 %indvars.iv2444, 1
  %.reass1829.us.1 = mul i64 %factor.op.mul1828, %i.lw
  %i.lx = or disjoint i64 %indvars.iv2444, 2
  %.reass1829.us.2 = mul i64 %factor.op.mul1828, %i.lx
  %i.ly = or disjoint i64 %indvars.iv2444, 3
  %.reass1829.us.3 = mul i64 %factor.op.mul1828, %i.ly
  %i.lz = or disjoint i64 %indvars.iv2444, 4
  %.reass1829.us.4 = mul i64 %factor.op.mul1828, %i.lz
  %i.ma = or disjoint i64 %indvars.iv2444, 5
  %.reass1829.us.5 = mul i64 %factor.op.mul1828, %i.ma
  %i.mb = or disjoint i64 %indvars.iv2444, 6
  %.reass1829.us.6 = mul i64 %factor.op.mul1828, %i.mb
  %i.mc = or disjoint i64 %indvars.iv2444, 7
  %.reass1829.us.7 = mul i64 %factor.op.mul1828, %i.mc
  %i.md = or disjoint i64 %indvars.iv2444, 8
  %.reass1829.us.8 = mul i64 %factor.op.mul1828, %i.md
  %i.me = or disjoint i64 %indvars.iv2444, 9
  %.reass1829.us.9 = mul i64 %factor.op.mul1828, %i.me
  %i.mf = or disjoint i64 %indvars.iv2444, 10
  %.reass1829.us.10 = mul i64 %factor.op.mul1828, %i.mf
  %i.mg = or disjoint i64 %indvars.iv2444, 11
  %.reass1829.us.11 = mul i64 %factor.op.mul1828, %i.mg
  %i.mh = or disjoint i64 %indvars.iv2444, 12
  %.reass1829.us.12 = mul i64 %factor.op.mul1828, %i.mh
  %i.mi = or disjoint i64 %indvars.iv2444, 13
  %.reass1829.us.13 = mul i64 %factor.op.mul1828, %i.mi
  %i.mj = or disjoint i64 %indvars.iv2444, 14
  %.reass1829.us.14 = mul i64 %factor.op.mul1828, %i.mj
  %i.mk = or disjoint i64 %indvars.iv2444, 15
  %.reass1829.us.15 = mul i64 %factor.op.mul1828, %i.mk
  br label %.preheader1808.us

.preheader1808.us:                                ; preds = %.preheader1813.us, %.preheader1808.us
  %indvars.iv2439 = phi i64 [ 0, %.preheader1813.us ], [ %indvars.iv.next2440, %.preheader1808.us ] ; 2 uses
  %.18461833.us = phi ptr [ %.08451836.us, %.preheader1813.us ], [ %i.pm, %.preheader1808.us ] ; 17 uses
  %invariant.gep1830.us = getelementptr [4 x i8], ptr %i.lm, i64 %indvars.iv2439 ; 16 uses
  %gep.us = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us
  %i.ml = getelementptr i8, ptr %gep.us, <16 x i64> %i.lv
  %i.mm = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.ml, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.mn = lshr <16 x i32> %i.mm, splat (i32 16)
  %i.mo = trunc nuw <16 x i32> %i.mn to <16 x i16>
  store <16 x i16> %i.mo, ptr %.18461833.us, align 2, !tbaa !28
  %i.mp = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 32
  %gep.us.1 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.1
  %i.mq = getelementptr i8, ptr %gep.us.1, <16 x i64> %i.lv
  %i.mr = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.mq, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.ms = lshr <16 x i32> %i.mr, splat (i32 16)
  %i.mt = trunc nuw <16 x i32> %i.ms to <16 x i16>
  store <16 x i16> %i.mt, ptr %i.mp, align 2, !tbaa !28
  %i.mu = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 64
  %gep.us.2 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.2
  %i.mv = getelementptr i8, ptr %gep.us.2, <16 x i64> %i.lv
  %i.mw = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.mv, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.mx = lshr <16 x i32> %i.mw, splat (i32 16)
  %i.my = trunc nuw <16 x i32> %i.mx to <16 x i16>
  store <16 x i16> %i.my, ptr %i.mu, align 2, !tbaa !28
  %i.mz = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 96
  %gep.us.3 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.3
  %i.na = getelementptr i8, ptr %gep.us.3, <16 x i64> %i.lv
  %i.nb = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.na, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.nc = lshr <16 x i32> %i.nb, splat (i32 16)
  %i.nd = trunc nuw <16 x i32> %i.nc to <16 x i16>
  store <16 x i16> %i.nd, ptr %i.mz, align 2, !tbaa !28
  %i.ne = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 128
  %gep.us.4 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.4
  %i.nf = getelementptr i8, ptr %gep.us.4, <16 x i64> %i.lv
  %i.ng = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.nf, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.nh = lshr <16 x i32> %i.ng, splat (i32 16)
  %i.ni = trunc nuw <16 x i32> %i.nh to <16 x i16>
  store <16 x i16> %i.ni, ptr %i.ne, align 2, !tbaa !28
  %i.nj = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 160
  %gep.us.5 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.5
  %i.nk = getelementptr i8, ptr %gep.us.5, <16 x i64> %i.lv
  %i.nl = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.nk, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.nm = lshr <16 x i32> %i.nl, splat (i32 16)
  %i.nn = trunc nuw <16 x i32> %i.nm to <16 x i16>
  store <16 x i16> %i.nn, ptr %i.nj, align 2, !tbaa !28
  %i.no = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 192
  %gep.us.6 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.6
  %i.np = getelementptr i8, ptr %gep.us.6, <16 x i64> %i.lv
  %i.nq = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.np, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.nr = lshr <16 x i32> %i.nq, splat (i32 16)
  %i.ns = trunc nuw <16 x i32> %i.nr to <16 x i16>
  store <16 x i16> %i.ns, ptr %i.no, align 2, !tbaa !28
  %i.nt = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 224
  %gep.us.7 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.7
  %i.nu = getelementptr i8, ptr %gep.us.7, <16 x i64> %i.lv
  %i.nv = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.nu, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.nw = lshr <16 x i32> %i.nv, splat (i32 16)
  %i.nx = trunc nuw <16 x i32> %i.nw to <16 x i16>
  store <16 x i16> %i.nx, ptr %i.nt, align 2, !tbaa !28
  %i.ny = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 256
  %gep.us.8 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.8
  %i.nz = getelementptr i8, ptr %gep.us.8, <16 x i64> %i.lv
  %i.oa = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.nz, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.ob = lshr <16 x i32> %i.oa, splat (i32 16)
  %i.oc = trunc nuw <16 x i32> %i.ob to <16 x i16>
  store <16 x i16> %i.oc, ptr %i.ny, align 2, !tbaa !28
  %i.od = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 288
  %gep.us.9 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.9
  %i.oe = getelementptr i8, ptr %gep.us.9, <16 x i64> %i.lv
  %i.of = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.oe, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.og = lshr <16 x i32> %i.of, splat (i32 16)
  %i.oh = trunc nuw <16 x i32> %i.og to <16 x i16>
  store <16 x i16> %i.oh, ptr %i.od, align 2, !tbaa !28
  %i.oi = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 320
  %gep.us.10 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.10
  %i.oj = getelementptr i8, ptr %gep.us.10, <16 x i64> %i.lv
  %i.ok = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.oj, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.ol = lshr <16 x i32> %i.ok, splat (i32 16)
  %i.om = trunc nuw <16 x i32> %i.ol to <16 x i16>
  store <16 x i16> %i.om, ptr %i.oi, align 2, !tbaa !28
  %i.on = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 352
  %gep.us.11 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.11
  %i.oo = getelementptr i8, ptr %gep.us.11, <16 x i64> %i.lv
  %i.op = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.oo, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.oq = lshr <16 x i32> %i.op, splat (i32 16)
  %i.or = trunc nuw <16 x i32> %i.oq to <16 x i16>
  store <16 x i16> %i.or, ptr %i.on, align 2, !tbaa !28
  %i.os = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 384
  %gep.us.12 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.12
  %i.ot = getelementptr i8, ptr %gep.us.12, <16 x i64> %i.lv
  %i.ou = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.ot, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.ov = lshr <16 x i32> %i.ou, splat (i32 16)
  %i.ow = trunc nuw <16 x i32> %i.ov to <16 x i16>
  store <16 x i16> %i.ow, ptr %i.os, align 2, !tbaa !28
  %i.ox = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 416
  %gep.us.13 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.13
  %i.oy = getelementptr i8, ptr %gep.us.13, <16 x i64> %i.lv
  %i.oz = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.oy, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.pa = lshr <16 x i32> %i.oz, splat (i32 16)
  %i.pb = trunc nuw <16 x i32> %i.pa to <16 x i16>
  store <16 x i16> %i.pb, ptr %i.ox, align 2, !tbaa !28
  %i.pc = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 448
  %gep.us.14 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.14
  %i.pd = getelementptr i8, ptr %gep.us.14, <16 x i64> %i.lv
  %i.pe = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.pd, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.pf = lshr <16 x i32> %i.pe, splat (i32 16)
  %i.pg = trunc nuw <16 x i32> %i.pf to <16 x i16>
  store <16 x i16> %i.pg, ptr %i.pc, align 2, !tbaa !28
  %i.ph = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 480
  %gep.us.15 = getelementptr i8, ptr %invariant.gep1830.us, i64 %.reass1829.us.15
  %i.pi = getelementptr i8, ptr %gep.us.15, <16 x i64> %i.lv
  %i.pj = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.pi, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.pk = lshr <16 x i32> %i.pj, splat (i32 16)
  %i.pl = trunc nuw <16 x i32> %i.pk to <16 x i16>
  store <16 x i16> %i.pl, ptr %i.ph, align 2, !tbaa !28
  %i.pm = getelementptr inbounds nuw i8, ptr %.18461833.us, i64 512 ; 3 uses
  %indvars.iv.next2440 = add nuw nsw i64 %indvars.iv2439, 1 ; 2 uses
  %exitcond2443.not = icmp eq i64 %indvars.iv.next2440, %wide.trip.count2442
  br i1 %exitcond2443.not, label %._crit_edge1835.us, label %.preheader1808.us, !llvm.loop !343

._crit_edge1835.us:                               ; preds = %.preheader1808.us
  %indvars.iv.next2445 = add nuw nsw i64 %indvars.iv2444, 16 ; 3 uses
  %i.pn = icmp slt i64 %indvars.iv.next2445, %invariant.op
  br i1 %i.pn, label %.preheader1813.us, label %.preheader1817.loopexit, !llvm.loop !344

.preheader1817.loopexit:                          ; preds = %._crit_edge1835.us
  %i.po = trunc nuw nsw i64 %indvars.iv.next2445 to i32
  br label %.preheader1817

.preheader1817:                                   ; preds = %.preheader1813.lr.ph, %.preheader1817.loopexit, %.noexc982
  %.0845.lcssa = phi ptr [ %i.lk, %.noexc982 ], [ %i.pm, %.preheader1817.loopexit ], [ %i.lk, %.preheader1813.lr.ph ] ; 3 uses
  %.0840.lcssa = phi i32 [ 0, %.noexc982 ], [ %i.po, %.preheader1817.loopexit ], [ %i.ke, %.preheader1813.lr.ph ] ; 5 uses
  %i.pp = or disjoint i32 %.0840.lcssa, 7
  %i.pq = icmp slt i32 %i.pp, %2
  br i1 %i.pq, label %.preheader1812.lr.ph, label %.preheader1816

.preheader1812.lr.ph:                             ; preds = %.preheader1817
  %i.pr = load i32, ptr %i.kb, align 4
  %i.ps = load ptr, ptr %7, align 8
  %i.pt = load i64, ptr %i.kd, align 8            ; 2 uses
  %i.pu = sext i32 %i.pr to i64
  %factor.op.mul1846 = mul i64 %i.pt, %i.pu       ; 8 uses
  br i1 %i.ka, label %.preheader1812.us.preheader, label %.preheader1812.preheader

.preheader1812.preheader:                         ; preds = %.preheader1812.lr.ph
  %i.pv = add nsw i32 %.0840.lcssa, 8
  %i.pw = sub i32 %i.kg, %.0840.lcssa
  %i.px = and i32 %i.pw, -8
  %i.py = add i32 %i.pv, %i.px
  br label %.preheader1816

.preheader1812.us.preheader:                      ; preds = %.preheader1812.lr.ph
  %i.pz = load i64, ptr %i.kc, align 8
  %factor.op.mul1841 = mul i64 %i.pz, %i.pt       ; 16 uses
  %i.qa = zext i32 %.0840.lcssa to i64
  %.reass.us1859 = mul i64 %factor.op.mul1841, %indvars.iv2517 ; 8 uses
  %i.qb = or disjoint i64 %indvars.iv2517, 1
  %.reass.us1859.1 = mul i64 %factor.op.mul1841, %i.qb ; 8 uses
  %i.qc = or disjoint i64 %indvars.iv2517, 2
  %.reass.us1859.2 = mul i64 %factor.op.mul1841, %i.qc ; 8 uses
  %i.qd = or disjoint i64 %indvars.iv2517, 3
  %.reass.us1859.3 = mul i64 %factor.op.mul1841, %i.qd ; 8 uses
  %i.qe = or disjoint i64 %indvars.iv2517, 4
  %.reass.us1859.4 = mul i64 %factor.op.mul1841, %i.qe ; 8 uses
  %i.qf = or disjoint i64 %indvars.iv2517, 5
  %.reass.us1859.5 = mul i64 %factor.op.mul1841, %i.qf ; 8 uses
  %i.qg = or disjoint i64 %indvars.iv2517, 6
  %.reass.us1859.6 = mul i64 %factor.op.mul1841, %i.qg ; 8 uses
  %i.qh = or disjoint i64 %indvars.iv2517, 7
  %.reass.us1859.7 = mul i64 %factor.op.mul1841, %i.qh ; 8 uses
  %i.qi = or disjoint i64 %indvars.iv2517, 8
  %.reass.us1859.8 = mul i64 %factor.op.mul1841, %i.qi ; 8 uses
  %i.qj = or disjoint i64 %indvars.iv2517, 9
  %.reass.us1859.9 = mul i64 %factor.op.mul1841, %i.qj ; 8 uses
  %i.qk = or disjoint i64 %indvars.iv2517, 10
  %.reass.us1859.10 = mul i64 %factor.op.mul1841, %i.qk ; 8 uses
  %i.ql = or disjoint i64 %indvars.iv2517, 11
  %.reass.us1859.11 = mul i64 %factor.op.mul1841, %i.ql ; 8 uses
  %i.qm = or disjoint i64 %indvars.iv2517, 12
  %.reass.us1859.12 = mul i64 %factor.op.mul1841, %i.qm ; 8 uses
  %i.qn = or disjoint i64 %indvars.iv2517, 13
  %.reass.us1859.13 = mul i64 %factor.op.mul1841, %i.qn ; 8 uses
  %i.qo = or disjoint i64 %indvars.iv2517, 14
  %.reass.us1859.14 = mul i64 %factor.op.mul1841, %i.qo ; 8 uses
  %i.qp = or disjoint i64 %indvars.iv2517, 15
  %.reass.us1859.15 = mul i64 %factor.op.mul1841, %i.qp ; 8 uses
  br label %.preheader1812.us

.preheader1812.us:                                ; preds = %.preheader1812.us.preheader, %._crit_edge1853.us
  %indvars.iv2467 = phi i64 [ %i.qa, %.preheader1812.us.preheader ], [ %indvars.iv.next2468, %._crit_edge1853.us ] ; 9 uses
  %.48491854.us = phi ptr [ %.0845.lcssa, %.preheader1812.us.preheader ], [ %i.ako, %._crit_edge1853.us ]
  %.reass1847.us = mul i64 %factor.op.mul1846, %indvars.iv2467
  %i.qq = or disjoint i64 %indvars.iv2467, 1
  %.reass1847.us.1 = mul i64 %factor.op.mul1846, %i.qq
  %i.qr = or disjoint i64 %indvars.iv2467, 2
  %.reass1847.us.2 = mul i64 %factor.op.mul1846, %i.qr
  %i.qs = or disjoint i64 %indvars.iv2467, 3
  %.reass1847.us.3 = mul i64 %factor.op.mul1846, %i.qs
  %i.qt = or disjoint i64 %indvars.iv2467, 4
  %.reass1847.us.4 = mul i64 %factor.op.mul1846, %i.qt
  %i.qu = or disjoint i64 %indvars.iv2467, 5
  %.reass1847.us.5 = mul i64 %factor.op.mul1846, %i.qu
  %i.qv = or disjoint i64 %indvars.iv2467, 6
  %.reass1847.us.6 = mul i64 %factor.op.mul1846, %i.qv
  %i.qw = or disjoint i64 %indvars.iv2467, 7
  %.reass1847.us.7 = mul i64 %factor.op.mul1846, %i.qw
  br label %.preheader1807.us

.preheader1807.us:                                ; preds = %.preheader1812.us, %.preheader1807.us
  %indvars.iv2462 = phi i64 [ 0, %.preheader1812.us ], [ %indvars.iv.next2463, %.preheader1807.us ] ; 2 uses
  %.58501851.us = phi ptr [ %.48491854.us, %.preheader1812.us ], [ %i.ako, %.preheader1807.us ] ; 129 uses
  %invariant.gep1848.us = getelementptr [4 x i8], ptr %i.ps, i64 %indvars.iv2462 ; 8 uses
  %gep.us1858 = getelementptr i8, ptr %invariant.gep1848.us, i64 %.reass1847.us ; 16 uses
  %gep1843.us = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859
  %i.qx = load i32, ptr %gep1843.us, align 4, !tbaa !30
  %i.qy = lshr i32 %i.qx, 16
  %i.qz = trunc nuw i32 %i.qy to i16
  store i16 %i.qz, ptr %.58501851.us, align 2, !tbaa !28
  %i.ra = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 2
  %gep1843.us.1 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.1
  %i.rb = load i32, ptr %gep1843.us.1, align 4, !tbaa !30
  %i.rc = lshr i32 %i.rb, 16
  %i.rd = trunc nuw i32 %i.rc to i16
  store i16 %i.rd, ptr %i.ra, align 2, !tbaa !28
  %i.re = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 4
  %gep1843.us.2 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.2
  %i.rf = load i32, ptr %gep1843.us.2, align 4, !tbaa !30
  %i.rg = lshr i32 %i.rf, 16
  %i.rh = trunc nuw i32 %i.rg to i16
  store i16 %i.rh, ptr %i.re, align 2, !tbaa !28
  %i.ri = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 6
  %gep1843.us.3 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.3
  %i.rj = load i32, ptr %gep1843.us.3, align 4, !tbaa !30
  %i.rk = lshr i32 %i.rj, 16
  %i.rl = trunc nuw i32 %i.rk to i16
  store i16 %i.rl, ptr %i.ri, align 2, !tbaa !28
  %i.rm = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 8
  %gep1843.us.4 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.4
  %i.rn = load i32, ptr %gep1843.us.4, align 4, !tbaa !30
  %i.ro = lshr i32 %i.rn, 16
  %i.rp = trunc nuw i32 %i.ro to i16
  store i16 %i.rp, ptr %i.rm, align 2, !tbaa !28
  %i.rq = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 10
  %gep1843.us.5 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.5
  %i.rr = load i32, ptr %gep1843.us.5, align 4, !tbaa !30
  %i.rs = lshr i32 %i.rr, 16
  %i.rt = trunc nuw i32 %i.rs to i16
  store i16 %i.rt, ptr %i.rq, align 2, !tbaa !28
  %i.ru = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 12
  %gep1843.us.6 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.6
  %i.rv = load i32, ptr %gep1843.us.6, align 4, !tbaa !30
  %i.rw = lshr i32 %i.rv, 16
  %i.rx = trunc nuw i32 %i.rw to i16
  store i16 %i.rx, ptr %i.ru, align 2, !tbaa !28
  %i.ry = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 14
  %gep1843.us.7 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.7
  %i.rz = load i32, ptr %gep1843.us.7, align 4, !tbaa !30
  %i.sa = lshr i32 %i.rz, 16
  %i.sb = trunc nuw i32 %i.sa to i16
  store i16 %i.sb, ptr %i.ry, align 2, !tbaa !28
  %i.sc = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 16
  %gep1843.us.8 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.8
  %i.sd = load i32, ptr %gep1843.us.8, align 4, !tbaa !30
  %i.se = lshr i32 %i.sd, 16
  %i.sf = trunc nuw i32 %i.se to i16
  store i16 %i.sf, ptr %i.sc, align 2, !tbaa !28
  %i.sg = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 18
  %gep1843.us.9 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.9
  %i.sh = load i32, ptr %gep1843.us.9, align 4, !tbaa !30
  %i.si = lshr i32 %i.sh, 16
  %i.sj = trunc nuw i32 %i.si to i16
  store i16 %i.sj, ptr %i.sg, align 2, !tbaa !28
  %i.sk = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 20
  %gep1843.us.10 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.10
  %i.sl = load i32, ptr %gep1843.us.10, align 4, !tbaa !30
  %i.sm = lshr i32 %i.sl, 16
  %i.sn = trunc nuw i32 %i.sm to i16
  store i16 %i.sn, ptr %i.sk, align 2, !tbaa !28
  %i.so = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 22
  %gep1843.us.11 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.11
  %i.sp = load i32, ptr %gep1843.us.11, align 4, !tbaa !30
  %i.sq = lshr i32 %i.sp, 16
  %i.sr = trunc nuw i32 %i.sq to i16
  store i16 %i.sr, ptr %i.so, align 2, !tbaa !28
  %i.ss = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 24
  %gep1843.us.12 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.12
  %i.st = load i32, ptr %gep1843.us.12, align 4, !tbaa !30
  %i.su = lshr i32 %i.st, 16
  %i.sv = trunc nuw i32 %i.su to i16
  store i16 %i.sv, ptr %i.ss, align 2, !tbaa !28
  %i.sw = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 26
  %gep1843.us.13 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.13
  %i.sx = load i32, ptr %gep1843.us.13, align 4, !tbaa !30
  %i.sy = lshr i32 %i.sx, 16
  %i.sz = trunc nuw i32 %i.sy to i16
  store i16 %i.sz, ptr %i.sw, align 2, !tbaa !28
  %i.ta = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 28
  %gep1843.us.14 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.14
  %i.tb = load i32, ptr %gep1843.us.14, align 4, !tbaa !30
  %i.tc = lshr i32 %i.tb, 16
  %i.td = trunc nuw i32 %i.tc to i16
  store i16 %i.td, ptr %i.ta, align 2, !tbaa !28
  %i.te = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 30
  %gep1843.us.15 = getelementptr i8, ptr %gep.us1858, i64 %.reass.us1859.15
  %i.tf = load i32, ptr %gep1843.us.15, align 4, !tbaa !30
  %i.tg = lshr i32 %i.tf, 16
  %i.th = trunc nuw i32 %i.tg to i16
  store i16 %i.th, ptr %i.te, align 2, !tbaa !28
  %i.ti = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 32
  %gep.us1858.1 = getelementptr i8, ptr %invariant.gep1848.us, i64 %.reass1847.us.1 ; 16 uses
  %gep1843.us.12455 = getelementptr i8, ptr %gep.us1858.1, i64 %.reass.us1859
  %i.tj = load i32, ptr %gep1843.us.12455, align 4, !tbaa !30
  %i.tk = lshr i32 %i.tj, 16
  %i.tl = trunc nuw i32 %i.tk to i16
  store i16 %i.tl, ptr %i.ti, align 2, !tbaa !28
  %i.tm = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 34
  %gep1843.us.1.1 = getelementptr i8, ptr %gep.us1858.1, i64 %.reass.us1859.1
  %i.tn = load i32, ptr %gep1843.us.1.1, align 4, !tbaa !30
  %i.to = lshr i32 %i.tn, 16
  %i.tp = trunc nuw i32 %i.to to i16
  store i16 %i.tp, ptr %i.tm, align 2, !tbaa !28
  %i.tq = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 36
  %gep1843.us.2.1 = getelementptr i8, ptr %gep.us1858.1, i64 %.reass.us1859.2
  %i.tr = load i32, ptr %gep1843.us.2.1, align 4, !tbaa !30
  %i.ts = lshr i32 %i.tr, 16
  %i.tt = trunc nuw i32 %i.ts to i16
  store i16 %i.tt, ptr %i.tq, align 2, !tbaa !28
  %i.tu = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 38
  %gep1843.us.3.1 = getelementptr i8, ptr %gep.us1858.1, i64 %.reass.us1859.3
  %i.tv = load i32, ptr %gep1843.us.3.1, align 4, !tbaa !30
  %i.tw = lshr i32 %i.tv, 16
  %i.tx = trunc nuw i32 %i.tw to i16
  store i16 %i.tx, ptr %i.tu, align 2, !tbaa !28
  %i.ty = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 40
  %gep1843.us.4.1 = getelementptr i8, ptr %gep.us1858.1, i64 %.reass.us1859.4
  %i.tz = load i32, ptr %gep1843.us.4.1, align 4, !tbaa !30
  %i.ua = lshr i32 %i.tz, 16
  %i.ub = trunc nuw i32 %i.ua to i16
  store i16 %i.ub, ptr %i.ty, align 2, !tbaa !28
  %i.uc = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 42
  %gep1843.us.5.1 = getelementptr i8, ptr %gep.us1858.1, i64 %.reass.us1859.5
  %i.ud = load i32, ptr %gep1843.us.5.1, align 4, !tbaa !30
  %i.ue = lshr i32 %i.ud, 16
  %i.uf = trunc nuw i32 %i.ue to i16
  store i16 %i.uf, ptr %i.uc, align 2, !tbaa !28
  %i.ug = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 44
end_hunk_8
begin_hunk_9_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  %gep1843.us.4.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.4
  %i.agh = load i32, ptr %gep1843.us.4.6, align 4, !tbaa !30
  %i.agi = lshr i32 %i.agh, 16
  %i.agj = trunc nuw i32 %i.agi to i16
  store i16 %i.agj, ptr %i.agg, align 2, !tbaa !28
  %i.agk = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 202
  %gep1843.us.5.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.5
  %i.agl = load i32, ptr %gep1843.us.5.6, align 4, !tbaa !30
  %i.agm = lshr i32 %i.agl, 16
  %i.agn = trunc nuw i32 %i.agm to i16
  store i16 %i.agn, ptr %i.agk, align 2, !tbaa !28
  %i.ago = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 204
  %gep1843.us.6.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.6
  %i.agp = load i32, ptr %gep1843.us.6.6, align 4, !tbaa !30
  %i.agq = lshr i32 %i.agp, 16
  %i.agr = trunc nuw i32 %i.agq to i16
  store i16 %i.agr, ptr %i.ago, align 2, !tbaa !28
  %i.ags = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 206
  %gep1843.us.7.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.7
  %i.agt = load i32, ptr %gep1843.us.7.6, align 4, !tbaa !30
  %i.agu = lshr i32 %i.agt, 16
  %i.agv = trunc nuw i32 %i.agu to i16
  store i16 %i.agv, ptr %i.ags, align 2, !tbaa !28
  %i.agw = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 208
  %gep1843.us.8.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.8
  %i.agx = load i32, ptr %gep1843.us.8.6, align 4, !tbaa !30
  %i.agy = lshr i32 %i.agx, 16
  %i.agz = trunc nuw i32 %i.agy to i16
  store i16 %i.agz, ptr %i.agw, align 2, !tbaa !28
  %i.aha = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 210
  %gep1843.us.9.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.9
  %i.ahb = load i32, ptr %gep1843.us.9.6, align 4, !tbaa !30
  %i.ahc = lshr i32 %i.ahb, 16
  %i.ahd = trunc nuw i32 %i.ahc to i16
  store i16 %i.ahd, ptr %i.aha, align 2, !tbaa !28
  %i.ahe = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 212
  %gep1843.us.10.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.10
  %i.ahf = load i32, ptr %gep1843.us.10.6, align 4, !tbaa !30
  %i.ahg = lshr i32 %i.ahf, 16
  %i.ahh = trunc nuw i32 %i.ahg to i16
  store i16 %i.ahh, ptr %i.ahe, align 2, !tbaa !28
  %i.ahi = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 214
  %gep1843.us.11.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.11
  %i.ahj = load i32, ptr %gep1843.us.11.6, align 4, !tbaa !30
  %i.ahk = lshr i32 %i.ahj, 16
  %i.ahl = trunc nuw i32 %i.ahk to i16
  store i16 %i.ahl, ptr %i.ahi, align 2, !tbaa !28
  %i.ahm = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 216
  %gep1843.us.12.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.12
  %i.ahn = load i32, ptr %gep1843.us.12.6, align 4, !tbaa !30
  %i.aho = lshr i32 %i.ahn, 16
  %i.ahp = trunc nuw i32 %i.aho to i16
  store i16 %i.ahp, ptr %i.ahm, align 2, !tbaa !28
  %i.ahq = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 218
  %gep1843.us.13.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.13
  %i.ahr = load i32, ptr %gep1843.us.13.6, align 4, !tbaa !30
  %i.ahs = lshr i32 %i.ahr, 16
  %i.aht = trunc nuw i32 %i.ahs to i16
  store i16 %i.aht, ptr %i.ahq, align 2, !tbaa !28
  %i.ahu = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 220
  %gep1843.us.14.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.14
  %i.ahv = load i32, ptr %gep1843.us.14.6, align 4, !tbaa !30
  %i.ahw = lshr i32 %i.ahv, 16
  %i.ahx = trunc nuw i32 %i.ahw to i16
  store i16 %i.ahx, ptr %i.ahu, align 2, !tbaa !28
  %i.ahy = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 222
  %gep1843.us.15.6 = getelementptr i8, ptr %gep.us1858.6, i64 %.reass.us1859.15
  %i.ahz = load i32, ptr %gep1843.us.15.6, align 4, !tbaa !30
  %i.aia = lshr i32 %i.ahz, 16
  %i.aib = trunc nuw i32 %i.aia to i16
  store i16 %i.aib, ptr %i.ahy, align 2, !tbaa !28
  %i.aic = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 224
  %gep.us1858.7 = getelementptr i8, ptr %invariant.gep1848.us, i64 %.reass1847.us.7 ; 16 uses
  %gep1843.us.72461 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859
  %i.aid = load i32, ptr %gep1843.us.72461, align 4, !tbaa !30
  %i.aie = lshr i32 %i.aid, 16
  %i.aif = trunc nuw i32 %i.aie to i16
  store i16 %i.aif, ptr %i.aic, align 2, !tbaa !28
  %i.aig = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 226
  %gep1843.us.1.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.1
  %i.aih = load i32, ptr %gep1843.us.1.7, align 4, !tbaa !30
  %i.aii = lshr i32 %i.aih, 16
  %i.aij = trunc nuw i32 %i.aii to i16
  store i16 %i.aij, ptr %i.aig, align 2, !tbaa !28
  %i.aik = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 228
  %gep1843.us.2.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.2
  %i.ail = load i32, ptr %gep1843.us.2.7, align 4, !tbaa !30
  %i.aim = lshr i32 %i.ail, 16
  %i.ain = trunc nuw i32 %i.aim to i16
  store i16 %i.ain, ptr %i.aik, align 2, !tbaa !28
  %i.aio = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 230
  %gep1843.us.3.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.3
  %i.aip = load i32, ptr %gep1843.us.3.7, align 4, !tbaa !30
  %i.aiq = lshr i32 %i.aip, 16
  %i.air = trunc nuw i32 %i.aiq to i16
  store i16 %i.air, ptr %i.aio, align 2, !tbaa !28
  %i.ais = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 232
  %gep1843.us.4.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.4
  %i.ait = load i32, ptr %gep1843.us.4.7, align 4, !tbaa !30
  %i.aiu = lshr i32 %i.ait, 16
  %i.aiv = trunc nuw i32 %i.aiu to i16
  store i16 %i.aiv, ptr %i.ais, align 2, !tbaa !28
  %i.aiw = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 234
  %gep1843.us.5.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.5
  %i.aix = load i32, ptr %gep1843.us.5.7, align 4, !tbaa !30
  %i.aiy = lshr i32 %i.aix, 16
  %i.aiz = trunc nuw i32 %i.aiy to i16
  store i16 %i.aiz, ptr %i.aiw, align 2, !tbaa !28
  %i.aja = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 236
  %gep1843.us.6.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.6
  %i.ajb = load i32, ptr %gep1843.us.6.7, align 4, !tbaa !30
  %i.ajc = lshr i32 %i.ajb, 16
  %i.ajd = trunc nuw i32 %i.ajc to i16
  store i16 %i.ajd, ptr %i.aja, align 2, !tbaa !28
  %i.aje = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 238
  %gep1843.us.7.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.7
  %i.ajf = load i32, ptr %gep1843.us.7.7, align 4, !tbaa !30
  %i.ajg = lshr i32 %i.ajf, 16
  %i.ajh = trunc nuw i32 %i.ajg to i16
  store i16 %i.ajh, ptr %i.aje, align 2, !tbaa !28
  %i.aji = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 240
  %gep1843.us.8.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.8
  %i.ajj = load i32, ptr %gep1843.us.8.7, align 4, !tbaa !30
  %i.ajk = lshr i32 %i.ajj, 16
  %i.ajl = trunc nuw i32 %i.ajk to i16
  store i16 %i.ajl, ptr %i.aji, align 2, !tbaa !28
  %i.ajm = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 242
  %gep1843.us.9.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.9
  %i.ajn = load i32, ptr %gep1843.us.9.7, align 4, !tbaa !30
  %i.ajo = lshr i32 %i.ajn, 16
  %i.ajp = trunc nuw i32 %i.ajo to i16
  store i16 %i.ajp, ptr %i.ajm, align 2, !tbaa !28
  %i.ajq = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 244
  %gep1843.us.10.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.10
  %i.ajr = load i32, ptr %gep1843.us.10.7, align 4, !tbaa !30
  %i.ajs = lshr i32 %i.ajr, 16
  %i.ajt = trunc nuw i32 %i.ajs to i16
  store i16 %i.ajt, ptr %i.ajq, align 2, !tbaa !28
  %i.aju = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 246
  %gep1843.us.11.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.11
  %i.ajv = load i32, ptr %gep1843.us.11.7, align 4, !tbaa !30
  %i.ajw = lshr i32 %i.ajv, 16
  %i.ajx = trunc nuw i32 %i.ajw to i16
  store i16 %i.ajx, ptr %i.aju, align 2, !tbaa !28
  %i.ajy = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 248
  %gep1843.us.12.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.12
  %i.ajz = load i32, ptr %gep1843.us.12.7, align 4, !tbaa !30
  %i.aka = lshr i32 %i.ajz, 16
  %i.akb = trunc nuw i32 %i.aka to i16
  store i16 %i.akb, ptr %i.ajy, align 2, !tbaa !28
  %i.akc = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 250
  %gep1843.us.13.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.13
  %i.akd = load i32, ptr %gep1843.us.13.7, align 4, !tbaa !30
  %i.ake = lshr i32 %i.akd, 16
  %i.akf = trunc nuw i32 %i.ake to i16
  store i16 %i.akf, ptr %i.akc, align 2, !tbaa !28
  %i.akg = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 252
  %gep1843.us.14.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.14
  %i.akh = load i32, ptr %gep1843.us.14.7, align 4, !tbaa !30
  %i.aki = lshr i32 %i.akh, 16
  %i.akj = trunc nuw i32 %i.aki to i16
  store i16 %i.akj, ptr %i.akg, align 2, !tbaa !28
  %i.akk = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 254
  %gep1843.us.15.7 = getelementptr i8, ptr %gep.us1858.7, i64 %.reass.us1859.15
  %i.akl = load i32, ptr %gep1843.us.15.7, align 4, !tbaa !30
  %i.akm = lshr i32 %i.akl, 16
  %i.akn = trunc nuw i32 %i.akm to i16
  store i16 %i.akn, ptr %i.akk, align 2, !tbaa !28
  %i.ako = getelementptr inbounds nuw i8, ptr %.58501851.us, i64 256 ; 3 uses
  %indvars.iv.next2463 = add nuw nsw i64 %indvars.iv2462, 1 ; 2 uses
  %exitcond2466.not = icmp eq i64 %indvars.iv.next2463, %wide.trip.count2465
  br i1 %exitcond2466.not, label %._crit_edge1853.us, label %.preheader1807.us, !llvm.loop !345

._crit_edge1853.us:                               ; preds = %.preheader1807.us
  %indvars.iv.next2468 = add nuw nsw i64 %indvars.iv2467, 8 ; 3 uses
  %i.akp = trunc i64 %indvars.iv.next2468 to i32
  %i.akq = or i32 %i.akp, 7
  %i.akr = icmp slt i32 %i.akq, %2
  br i1 %i.akr, label %.preheader1812.us, label %.preheader1816.loopexit, !llvm.loop !346

.preheader1816.loopexit:                          ; preds = %._crit_edge1853.us
  %i.aks = trunc nuw i64 %indvars.iv.next2468 to i32
  br label %.preheader1816

.preheader1816:                                   ; preds = %.preheader1812.preheader, %.preheader1816.loopexit, %.preheader1817
  %.4849.lcssa = phi ptr [ %.0845.lcssa, %.preheader1817 ], [ %i.ako, %.preheader1816.loopexit ], [ %.0845.lcssa, %.preheader1812.preheader ] ; 3 uses
  %.1841.lcssa = phi i32 [ %.0840.lcssa, %.preheader1817 ], [ %i.aks, %.preheader1816.loopexit ], [ %i.py, %.preheader1812.preheader ] ; 5 uses
  %i.akt = or disjoint i32 %.1841.lcssa, 3
  %i.aku = icmp slt i32 %i.akt, %2
  br i1 %i.aku, label %.preheader1811.lr.ph, label %.preheader1815

.preheader1811.lr.ph:                             ; preds = %.preheader1816
  %i.akv = load i32, ptr %i.kb, align 4
  %i.akw = load ptr, ptr %7, align 8
  %i.akx = load i64, ptr %i.kd, align 8           ; 2 uses
  %i.aky = sext i32 %i.akv to i64
  %factor.op.mul1868 = mul i64 %i.akx, %i.aky     ; 4 uses
  br i1 %i.ka, label %.preheader1811.us.preheader, label %.preheader1811.preheader

.preheader1811.preheader:                         ; preds = %.preheader1811.lr.ph
  %i.akz = add nsw i32 %.1841.lcssa, 4
  %i.ala = sub i32 %i.kh, %.1841.lcssa
  %i.alb = and i32 %i.ala, -4
  %i.alc = add i32 %i.akz, %i.alb
  br label %.preheader1815

.preheader1811.us.preheader:                      ; preds = %.preheader1811.lr.ph
  %i.ald = load i64, ptr %i.kc, align 8
  %factor.op.mul1863 = mul i64 %i.ald, %i.akx     ; 16 uses
  %i.ale = zext i32 %.1841.lcssa to i64
  %.reass.us1881 = mul i64 %factor.op.mul1863, %indvars.iv2517 ; 4 uses
  %i.alf = or disjoint i64 %indvars.iv2517, 1
  %.reass.us1881.1 = mul i64 %factor.op.mul1863, %i.alf ; 4 uses
  %i.alg = or disjoint i64 %indvars.iv2517, 2
  %.reass.us1881.2 = mul i64 %factor.op.mul1863, %i.alg ; 4 uses
  %i.alh = or disjoint i64 %indvars.iv2517, 3
  %.reass.us1881.3 = mul i64 %factor.op.mul1863, %i.alh ; 4 uses
  %i.ali = or disjoint i64 %indvars.iv2517, 4
  %.reass.us1881.4 = mul i64 %factor.op.mul1863, %i.ali ; 4 uses
  %i.alj = or disjoint i64 %indvars.iv2517, 5
  %.reass.us1881.5 = mul i64 %factor.op.mul1863, %i.alj ; 4 uses
  %i.alk = or disjoint i64 %indvars.iv2517, 6
  %.reass.us1881.6 = mul i64 %factor.op.mul1863, %i.alk ; 4 uses
  %i.all = or disjoint i64 %indvars.iv2517, 7
  %.reass.us1881.7 = mul i64 %factor.op.mul1863, %i.all ; 4 uses
  %i.alm = or disjoint i64 %indvars.iv2517, 8
  %.reass.us1881.8 = mul i64 %factor.op.mul1863, %i.alm ; 4 uses
  %i.aln = or disjoint i64 %indvars.iv2517, 9
  %.reass.us1881.9 = mul i64 %factor.op.mul1863, %i.aln ; 4 uses
  %i.alo = or disjoint i64 %indvars.iv2517, 10
  %.reass.us1881.10 = mul i64 %factor.op.mul1863, %i.alo ; 4 uses
  %i.alp = or disjoint i64 %indvars.iv2517, 11
  %.reass.us1881.11 = mul i64 %factor.op.mul1863, %i.alp ; 4 uses
  %i.alq = or disjoint i64 %indvars.iv2517, 12
  %.reass.us1881.12 = mul i64 %factor.op.mul1863, %i.alq ; 4 uses
  %i.alr = or disjoint i64 %indvars.iv2517, 13
  %.reass.us1881.13 = mul i64 %factor.op.mul1863, %i.alr ; 4 uses
  %i.als = or disjoint i64 %indvars.iv2517, 14
  %.reass.us1881.14 = mul i64 %factor.op.mul1863, %i.als ; 4 uses
  %i.alt = or disjoint i64 %indvars.iv2517, 15
  %.reass.us1881.15 = mul i64 %factor.op.mul1863, %i.alt ; 4 uses
  br label %.preheader1811.us

.preheader1811.us:                                ; preds = %.preheader1811.us.preheader, %._crit_edge1875.us
  %indvars.iv2486 = phi i64 [ %i.ale, %.preheader1811.us.preheader ], [ %indvars.iv.next2487, %._crit_edge1875.us ] ; 5 uses
  %.88531876.us = phi ptr [ %.4849.lcssa, %.preheader1811.us.preheader ], [ %i.avs, %._crit_edge1875.us ]
  %.reass1869.us = mul i64 %factor.op.mul1868, %indvars.iv2486
  %i.alu = or disjoint i64 %indvars.iv2486, 1
  %.reass1869.us.1 = mul i64 %factor.op.mul1868, %i.alu
  %i.alv = or disjoint i64 %indvars.iv2486, 2
  %.reass1869.us.2 = mul i64 %factor.op.mul1868, %i.alv
  %i.alw = or disjoint i64 %indvars.iv2486, 3
  %.reass1869.us.3 = mul i64 %factor.op.mul1868, %i.alw
  br label %.preheader1806.us

.preheader1806.us:                                ; preds = %.preheader1811.us, %.preheader1806.us
  %indvars.iv2481 = phi i64 [ 0, %.preheader1811.us ], [ %indvars.iv.next2482, %.preheader1806.us ] ; 2 uses
  %.98541873.us = phi ptr [ %.88531876.us, %.preheader1811.us ], [ %i.avs, %.preheader1806.us ] ; 65 uses
  %invariant.gep1870.us = getelementptr [4 x i8], ptr %i.akw, i64 %indvars.iv2481 ; 4 uses
  %gep.us1880 = getelementptr i8, ptr %invariant.gep1870.us, i64 %.reass1869.us ; 16 uses
  %gep1865.us = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881
  %i.alx = load i32, ptr %gep1865.us, align 4, !tbaa !30
  %i.aly = lshr i32 %i.alx, 16
  %i.alz = trunc nuw i32 %i.aly to i16
  store i16 %i.alz, ptr %.98541873.us, align 2, !tbaa !28
  %i.ama = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 2
  %gep1865.us.1 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.1
  %i.amb = load i32, ptr %gep1865.us.1, align 4, !tbaa !30
  %i.amc = lshr i32 %i.amb, 16
  %i.amd = trunc nuw i32 %i.amc to i16
  store i16 %i.amd, ptr %i.ama, align 2, !tbaa !28
  %i.ame = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 4
  %gep1865.us.2 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.2
  %i.amf = load i32, ptr %gep1865.us.2, align 4, !tbaa !30
  %i.amg = lshr i32 %i.amf, 16
  %i.amh = trunc nuw i32 %i.amg to i16
  store i16 %i.amh, ptr %i.ame, align 2, !tbaa !28
  %i.ami = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 6
  %gep1865.us.3 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.3
  %i.amj = load i32, ptr %gep1865.us.3, align 4, !tbaa !30
  %i.amk = lshr i32 %i.amj, 16
  %i.aml = trunc nuw i32 %i.amk to i16
  store i16 %i.aml, ptr %i.ami, align 2, !tbaa !28
  %i.amm = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 8
  %gep1865.us.4 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.4
  %i.amn = load i32, ptr %gep1865.us.4, align 4, !tbaa !30
  %i.amo = lshr i32 %i.amn, 16
  %i.amp = trunc nuw i32 %i.amo to i16
  store i16 %i.amp, ptr %i.amm, align 2, !tbaa !28
  %i.amq = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 10
  %gep1865.us.5 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.5
  %i.amr = load i32, ptr %gep1865.us.5, align 4, !tbaa !30
  %i.ams = lshr i32 %i.amr, 16
  %i.amt = trunc nuw i32 %i.ams to i16
  store i16 %i.amt, ptr %i.amq, align 2, !tbaa !28
  %i.amu = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 12
  %gep1865.us.6 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.6
  %i.amv = load i32, ptr %gep1865.us.6, align 4, !tbaa !30
  %i.amw = lshr i32 %i.amv, 16
  %i.amx = trunc nuw i32 %i.amw to i16
  store i16 %i.amx, ptr %i.amu, align 2, !tbaa !28
  %i.amy = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 14
  %gep1865.us.7 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.7
  %i.amz = load i32, ptr %gep1865.us.7, align 4, !tbaa !30
  %i.ana = lshr i32 %i.amz, 16
  %i.anb = trunc nuw i32 %i.ana to i16
  store i16 %i.anb, ptr %i.amy, align 2, !tbaa !28
  %i.anc = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 16
  %gep1865.us.8 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.8
  %i.and = load i32, ptr %gep1865.us.8, align 4, !tbaa !30
  %i.ane = lshr i32 %i.and, 16
  %i.anf = trunc nuw i32 %i.ane to i16
  store i16 %i.anf, ptr %i.anc, align 2, !tbaa !28
  %i.ang = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 18
  %gep1865.us.9 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.9
  %i.anh = load i32, ptr %gep1865.us.9, align 4, !tbaa !30
  %i.ani = lshr i32 %i.anh, 16
  %i.anj = trunc nuw i32 %i.ani to i16
  store i16 %i.anj, ptr %i.ang, align 2, !tbaa !28
  %i.ank = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 20
  %gep1865.us.10 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.10
  %i.anl = load i32, ptr %gep1865.us.10, align 4, !tbaa !30
  %i.anm = lshr i32 %i.anl, 16
  %i.ann = trunc nuw i32 %i.anm to i16
  store i16 %i.ann, ptr %i.ank, align 2, !tbaa !28
  %i.ano = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 22
  %gep1865.us.11 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.11
  %i.anp = load i32, ptr %gep1865.us.11, align 4, !tbaa !30
  %i.anq = lshr i32 %i.anp, 16
  %i.anr = trunc nuw i32 %i.anq to i16
  store i16 %i.anr, ptr %i.ano, align 2, !tbaa !28
  %i.ans = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 24
  %gep1865.us.12 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.12
  %i.ant = load i32, ptr %gep1865.us.12, align 4, !tbaa !30
  %i.anu = lshr i32 %i.ant, 16
  %i.anv = trunc nuw i32 %i.anu to i16
  store i16 %i.anv, ptr %i.ans, align 2, !tbaa !28
  %i.anw = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 26
  %gep1865.us.13 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.13
  %i.anx = load i32, ptr %gep1865.us.13, align 4, !tbaa !30
  %i.any = lshr i32 %i.anx, 16
  %i.anz = trunc nuw i32 %i.any to i16
  store i16 %i.anz, ptr %i.anw, align 2, !tbaa !28
  %i.aoa = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 28
  %gep1865.us.14 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.14
  %i.aob = load i32, ptr %gep1865.us.14, align 4, !tbaa !30
  %i.aoc = lshr i32 %i.aob, 16
  %i.aod = trunc nuw i32 %i.aoc to i16
  store i16 %i.aod, ptr %i.aoa, align 2, !tbaa !28
  %i.aoe = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 30
  %gep1865.us.15 = getelementptr i8, ptr %gep.us1880, i64 %.reass.us1881.15
  %i.aof = load i32, ptr %gep1865.us.15, align 4, !tbaa !30
  %i.aog = lshr i32 %i.aof, 16
  %i.aoh = trunc nuw i32 %i.aog to i16
  store i16 %i.aoh, ptr %i.aoe, align 2, !tbaa !28
  %i.aoi = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 32
  %gep.us1880.1 = getelementptr i8, ptr %invariant.gep1870.us, i64 %.reass1869.us.1 ; 16 uses
  %gep1865.us.12478 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881
  %i.aoj = load i32, ptr %gep1865.us.12478, align 4, !tbaa !30
  %i.aok = lshr i32 %i.aoj, 16
  %i.aol = trunc nuw i32 %i.aok to i16
  store i16 %i.aol, ptr %i.aoi, align 2, !tbaa !28
  %i.aom = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 34
  %gep1865.us.1.1 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881.1
  %i.aon = load i32, ptr %gep1865.us.1.1, align 4, !tbaa !30
  %i.aoo = lshr i32 %i.aon, 16
  %i.aop = trunc nuw i32 %i.aoo to i16
  store i16 %i.aop, ptr %i.aom, align 2, !tbaa !28
  %i.aoq = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 36
  %gep1865.us.2.1 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881.2
  %i.aor = load i32, ptr %gep1865.us.2.1, align 4, !tbaa !30
  %i.aos = lshr i32 %i.aor, 16
  %i.aot = trunc nuw i32 %i.aos to i16
  store i16 %i.aot, ptr %i.aoq, align 2, !tbaa !28
  %i.aou = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 38
  %gep1865.us.3.1 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881.3
  %i.aov = load i32, ptr %gep1865.us.3.1, align 4, !tbaa !30
  %i.aow = lshr i32 %i.aov, 16
  %i.aox = trunc nuw i32 %i.aow to i16
  store i16 %i.aox, ptr %i.aou, align 2, !tbaa !28
  %i.aoy = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 40
  %gep1865.us.4.1 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881.4
  %i.aoz = load i32, ptr %gep1865.us.4.1, align 4, !tbaa !30
  %i.apa = lshr i32 %i.aoz, 16
  %i.apb = trunc nuw i32 %i.apa to i16
  store i16 %i.apb, ptr %i.aoy, align 2, !tbaa !28
  %i.apc = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 42
  %gep1865.us.5.1 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881.5
  %i.apd = load i32, ptr %gep1865.us.5.1, align 4, !tbaa !30
  %i.ape = lshr i32 %i.apd, 16
  %i.apf = trunc nuw i32 %i.ape to i16
  store i16 %i.apf, ptr %i.apc, align 2, !tbaa !28
  %i.apg = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 44
  %gep1865.us.6.1 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881.6
  %i.aph = load i32, ptr %gep1865.us.6.1, align 4, !tbaa !30
  %i.api = lshr i32 %i.aph, 16
  %i.apj = trunc nuw i32 %i.api to i16
  store i16 %i.apj, ptr %i.apg, align 2, !tbaa !28
  %i.apk = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 46
  %gep1865.us.7.1 = getelementptr i8, ptr %gep.us1880.1, i64 %.reass.us1881.7
  %i.apl = load i32, ptr %gep1865.us.7.1, align 4, !tbaa !30
end_hunk_9
begin_hunk_10_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  %gep1865.us.4.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.4
  %i.arl = load i32, ptr %gep1865.us.4.2, align 4, !tbaa !30
  %i.arm = lshr i32 %i.arl, 16
  %i.arn = trunc nuw i32 %i.arm to i16
  store i16 %i.arn, ptr %i.ark, align 2, !tbaa !28
  %i.aro = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 74
  %gep1865.us.5.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.5
  %i.arp = load i32, ptr %gep1865.us.5.2, align 4, !tbaa !30
  %i.arq = lshr i32 %i.arp, 16
  %i.arr = trunc nuw i32 %i.arq to i16
  store i16 %i.arr, ptr %i.aro, align 2, !tbaa !28
  %i.ars = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 76
  %gep1865.us.6.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.6
  %i.art = load i32, ptr %gep1865.us.6.2, align 4, !tbaa !30
  %i.aru = lshr i32 %i.art, 16
  %i.arv = trunc nuw i32 %i.aru to i16
  store i16 %i.arv, ptr %i.ars, align 2, !tbaa !28
  %i.arw = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 78
  %gep1865.us.7.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.7
  %i.arx = load i32, ptr %gep1865.us.7.2, align 4, !tbaa !30
  %i.ary = lshr i32 %i.arx, 16
  %i.arz = trunc nuw i32 %i.ary to i16
  store i16 %i.arz, ptr %i.arw, align 2, !tbaa !28
  %i.asa = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 80
  %gep1865.us.8.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.8
  %i.asb = load i32, ptr %gep1865.us.8.2, align 4, !tbaa !30
  %i.asc = lshr i32 %i.asb, 16
  %i.asd = trunc nuw i32 %i.asc to i16
  store i16 %i.asd, ptr %i.asa, align 2, !tbaa !28
  %i.ase = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 82
  %gep1865.us.9.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.9
  %i.asf = load i32, ptr %gep1865.us.9.2, align 4, !tbaa !30
  %i.asg = lshr i32 %i.asf, 16
  %i.ash = trunc nuw i32 %i.asg to i16
  store i16 %i.ash, ptr %i.ase, align 2, !tbaa !28
  %i.asi = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 84
  %gep1865.us.10.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.10
  %i.asj = load i32, ptr %gep1865.us.10.2, align 4, !tbaa !30
  %i.ask = lshr i32 %i.asj, 16
  %i.asl = trunc nuw i32 %i.ask to i16
  store i16 %i.asl, ptr %i.asi, align 2, !tbaa !28
  %i.asm = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 86
  %gep1865.us.11.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.11
  %i.asn = load i32, ptr %gep1865.us.11.2, align 4, !tbaa !30
  %i.aso = lshr i32 %i.asn, 16
  %i.asp = trunc nuw i32 %i.aso to i16
  store i16 %i.asp, ptr %i.asm, align 2, !tbaa !28
  %i.asq = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 88
  %gep1865.us.12.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.12
  %i.asr = load i32, ptr %gep1865.us.12.2, align 4, !tbaa !30
  %i.ass = lshr i32 %i.asr, 16
  %i.ast = trunc nuw i32 %i.ass to i16
  store i16 %i.ast, ptr %i.asq, align 2, !tbaa !28
  %i.asu = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 90
  %gep1865.us.13.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.13
  %i.asv = load i32, ptr %gep1865.us.13.2, align 4, !tbaa !30
  %i.asw = lshr i32 %i.asv, 16
  %i.asx = trunc nuw i32 %i.asw to i16
  store i16 %i.asx, ptr %i.asu, align 2, !tbaa !28
  %i.asy = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 92
  %gep1865.us.14.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.14
  %i.asz = load i32, ptr %gep1865.us.14.2, align 4, !tbaa !30
  %i.ata = lshr i32 %i.asz, 16
  %i.atb = trunc nuw i32 %i.ata to i16
  store i16 %i.atb, ptr %i.asy, align 2, !tbaa !28
  %i.atc = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 94
  %gep1865.us.15.2 = getelementptr i8, ptr %gep.us1880.2, i64 %.reass.us1881.15
  %i.atd = load i32, ptr %gep1865.us.15.2, align 4, !tbaa !30
  %i.ate = lshr i32 %i.atd, 16
  %i.atf = trunc nuw i32 %i.ate to i16
  store i16 %i.atf, ptr %i.atc, align 2, !tbaa !28
  %i.atg = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 96
  %gep.us1880.3 = getelementptr i8, ptr %invariant.gep1870.us, i64 %.reass1869.us.3 ; 16 uses
  %gep1865.us.32480 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881
  %i.ath = load i32, ptr %gep1865.us.32480, align 4, !tbaa !30
  %i.ati = lshr i32 %i.ath, 16
  %i.atj = trunc nuw i32 %i.ati to i16
  store i16 %i.atj, ptr %i.atg, align 2, !tbaa !28
  %i.atk = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 98
  %gep1865.us.1.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.1
  %i.atl = load i32, ptr %gep1865.us.1.3, align 4, !tbaa !30
  %i.atm = lshr i32 %i.atl, 16
  %i.atn = trunc nuw i32 %i.atm to i16
  store i16 %i.atn, ptr %i.atk, align 2, !tbaa !28
  %i.ato = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 100
  %gep1865.us.2.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.2
  %i.atp = load i32, ptr %gep1865.us.2.3, align 4, !tbaa !30
  %i.atq = lshr i32 %i.atp, 16
  %i.atr = trunc nuw i32 %i.atq to i16
  store i16 %i.atr, ptr %i.ato, align 2, !tbaa !28
  %i.ats = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 102
  %gep1865.us.3.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.3
  %i.att = load i32, ptr %gep1865.us.3.3, align 4, !tbaa !30
  %i.atu = lshr i32 %i.att, 16
  %i.atv = trunc nuw i32 %i.atu to i16
  store i16 %i.atv, ptr %i.ats, align 2, !tbaa !28
  %i.atw = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 104
  %gep1865.us.4.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.4
  %i.atx = load i32, ptr %gep1865.us.4.3, align 4, !tbaa !30
  %i.aty = lshr i32 %i.atx, 16
  %i.atz = trunc nuw i32 %i.aty to i16
  store i16 %i.atz, ptr %i.atw, align 2, !tbaa !28
  %i.aua = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 106
  %gep1865.us.5.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.5
  %i.aub = load i32, ptr %gep1865.us.5.3, align 4, !tbaa !30
  %i.auc = lshr i32 %i.aub, 16
  %i.aud = trunc nuw i32 %i.auc to i16
  store i16 %i.aud, ptr %i.aua, align 2, !tbaa !28
  %i.aue = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 108
  %gep1865.us.6.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.6
  %i.auf = load i32, ptr %gep1865.us.6.3, align 4, !tbaa !30
  %i.aug = lshr i32 %i.auf, 16
  %i.auh = trunc nuw i32 %i.aug to i16
  store i16 %i.auh, ptr %i.aue, align 2, !tbaa !28
  %i.aui = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 110
  %gep1865.us.7.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.7
  %i.auj = load i32, ptr %gep1865.us.7.3, align 4, !tbaa !30
  %i.auk = lshr i32 %i.auj, 16
  %i.aul = trunc nuw i32 %i.auk to i16
  store i16 %i.aul, ptr %i.aui, align 2, !tbaa !28
  %i.aum = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 112
  %gep1865.us.8.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.8
  %i.aun = load i32, ptr %gep1865.us.8.3, align 4, !tbaa !30
  %i.auo = lshr i32 %i.aun, 16
  %i.aup = trunc nuw i32 %i.auo to i16
  store i16 %i.aup, ptr %i.aum, align 2, !tbaa !28
  %i.auq = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 114
  %gep1865.us.9.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.9
  %i.aur = load i32, ptr %gep1865.us.9.3, align 4, !tbaa !30
  %i.aus = lshr i32 %i.aur, 16
  %i.aut = trunc nuw i32 %i.aus to i16
  store i16 %i.aut, ptr %i.auq, align 2, !tbaa !28
  %i.auu = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 116
  %gep1865.us.10.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.10
  %i.auv = load i32, ptr %gep1865.us.10.3, align 4, !tbaa !30
  %i.auw = lshr i32 %i.auv, 16
  %i.aux = trunc nuw i32 %i.auw to i16
  store i16 %i.aux, ptr %i.auu, align 2, !tbaa !28
  %i.auy = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 118
  %gep1865.us.11.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.11
  %i.auz = load i32, ptr %gep1865.us.11.3, align 4, !tbaa !30
  %i.ava = lshr i32 %i.auz, 16
  %i.avb = trunc nuw i32 %i.ava to i16
  store i16 %i.avb, ptr %i.auy, align 2, !tbaa !28
  %i.avc = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 120
  %gep1865.us.12.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.12
  %i.avd = load i32, ptr %gep1865.us.12.3, align 4, !tbaa !30
  %i.ave = lshr i32 %i.avd, 16
  %i.avf = trunc nuw i32 %i.ave to i16
  store i16 %i.avf, ptr %i.avc, align 2, !tbaa !28
  %i.avg = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 122
  %gep1865.us.13.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.13
  %i.avh = load i32, ptr %gep1865.us.13.3, align 4, !tbaa !30
  %i.avi = lshr i32 %i.avh, 16
  %i.avj = trunc nuw i32 %i.avi to i16
  store i16 %i.avj, ptr %i.avg, align 2, !tbaa !28
  %i.avk = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 124
  %gep1865.us.14.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.14
  %i.avl = load i32, ptr %gep1865.us.14.3, align 4, !tbaa !30
  %i.avm = lshr i32 %i.avl, 16
  %i.avn = trunc nuw i32 %i.avm to i16
  store i16 %i.avn, ptr %i.avk, align 2, !tbaa !28
  %i.avo = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 126
  %gep1865.us.15.3 = getelementptr i8, ptr %gep.us1880.3, i64 %.reass.us1881.15
  %i.avp = load i32, ptr %gep1865.us.15.3, align 4, !tbaa !30
  %i.avq = lshr i32 %i.avp, 16
  %i.avr = trunc nuw i32 %i.avq to i16
  store i16 %i.avr, ptr %i.avo, align 2, !tbaa !28
  %i.avs = getelementptr inbounds nuw i8, ptr %.98541873.us, i64 128 ; 3 uses
  %indvars.iv.next2482 = add nuw nsw i64 %indvars.iv2481, 1 ; 2 uses
  %exitcond2485.not = icmp eq i64 %indvars.iv.next2482, %wide.trip.count2484
  br i1 %exitcond2485.not, label %._crit_edge1875.us, label %.preheader1806.us, !llvm.loop !347

._crit_edge1875.us:                               ; preds = %.preheader1806.us
  %indvars.iv.next2487 = add nuw nsw i64 %indvars.iv2486, 4 ; 3 uses
  %i.avt = trunc i64 %indvars.iv.next2487 to i32
  %i.avu = or i32 %i.avt, 3
  %i.avv = icmp slt i32 %i.avu, %2
  br i1 %i.avv, label %.preheader1811.us, label %.preheader1815.loopexit, !llvm.loop !348

.preheader1815.loopexit:                          ; preds = %._crit_edge1875.us
  %i.avw = trunc nuw i64 %indvars.iv.next2487 to i32
  br label %.preheader1815

.preheader1815:                                   ; preds = %.preheader1811.preheader, %.preheader1815.loopexit, %.preheader1816
  %.8853.lcssa = phi ptr [ %.4849.lcssa, %.preheader1816 ], [ %i.avs, %.preheader1815.loopexit ], [ %.4849.lcssa, %.preheader1811.preheader ] ; 3 uses
  %.2842.lcssa = phi i32 [ %.1841.lcssa, %.preheader1816 ], [ %i.avw, %.preheader1815.loopexit ], [ %i.alc, %.preheader1811.preheader ] ; 5 uses
  %i.avx = or disjoint i32 %.2842.lcssa, 1
  %i.avy = icmp slt i32 %i.avx, %2
  br i1 %i.avy, label %.preheader1810.lr.ph, label %.preheader1814

.preheader1810.lr.ph:                             ; preds = %.preheader1815
  %i.avz = load i32, ptr %i.kb, align 4
  %i.awa = load ptr, ptr %7, align 8
  %i.awb = load i64, ptr %i.kd, align 8           ; 2 uses
  %i.awc = sext i32 %i.avz to i64
  %factor.op.mul1890 = mul i64 %i.awb, %i.awc     ; 2 uses
  br i1 %i.ka, label %.preheader1810.us.preheader, label %.preheader1810.preheader

.preheader1810.preheader:                         ; preds = %.preheader1810.lr.ph
  %i.awd = add nsw i32 %.2842.lcssa, 2
  %i.awe = sub i32 %i.ki, %.2842.lcssa
  %i.awf = and i32 %i.awe, -2
  %i.awg = add i32 %i.awd, %i.awf
  br label %.preheader1814

.preheader1810.us.preheader:                      ; preds = %.preheader1810.lr.ph
  %i.awh = load i64, ptr %i.kc, align 8
  %factor.op.mul1885 = mul i64 %i.awh, %i.awb     ; 2 uses
  %i.awi = zext i32 %.2842.lcssa to i64
  %.reass.us1903 = mul i64 %factor.op.mul1885, %indvars.iv2517
  %i.awj = insertelement <16 x i64> poison, i64 %indvars.iv2517, i64 0
  %i.awk = shufflevector <16 x i64> %i.awj, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.awl = or disjoint <16 x i64> %i.awk, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.awm = insertelement <16 x i64> poison, i64 %factor.op.mul1885, i64 0
  %i.awn = shufflevector <16 x i64> %i.awm, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.awo = mul <16 x i64> %i.awn, %i.awl          ; 6 uses
  %i.awp = extractelement <16 x i64> %i.awo, i64 1
  %i.awq = extractelement <16 x i64> %i.awo, i64 2
  %i.awr = extractelement <16 x i64> %i.awo, i64 3
  %i.aws = shufflevector <16 x i64> %i.awo, <16 x i64> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.awt = shufflevector <16 x i64> %i.awo, <16 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br label %.preheader1810.us

.preheader1810.us:                                ; preds = %.preheader1810.us.preheader, %._crit_edge1897.us
  %indvars.iv2502 = phi i64 [ %i.awi, %.preheader1810.us.preheader ], [ %indvars.iv.next2503, %._crit_edge1897.us ] ; 3 uses
  %.128571898.us = phi ptr [ %.8853.lcssa, %.preheader1810.us.preheader ], [ %i.axs, %._crit_edge1897.us ]
  %.reass1891.us = mul i64 %factor.op.mul1890, %indvars.iv2502
  %i.awu = or disjoint i64 %indvars.iv2502, 1
  %.reass1891.us.1 = mul i64 %factor.op.mul1890, %i.awu
  br label %.preheader1805.us

.preheader1805.us:                                ; preds = %.preheader1810.us, %.preheader1805.us
  %indvars.iv2497 = phi i64 [ 0, %.preheader1810.us ], [ %indvars.iv.next2498, %.preheader1805.us ] ; 2 uses
  %.138581895.us = phi ptr [ %.128571898.us, %.preheader1810.us ], [ %i.axs, %.preheader1805.us ] ; 3 uses
  %invariant.gep1892.us = getelementptr [4 x i8], ptr %i.awa, i64 %indvars.iv2497 ; 2 uses
  %gep.us1902 = getelementptr i8, ptr %invariant.gep1892.us, i64 %.reass1891.us
  %i.awv = getelementptr i8, ptr %gep.us1902, <16 x i64> %i.awo
  %i.aww = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.awv, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.awx = lshr <16 x i32> %i.aww, splat (i32 16)
  %i.awy = trunc nuw <16 x i32> %i.awx to <16 x i16>
  store <16 x i16> %i.awy, ptr %.138581895.us, align 2, !tbaa !28
  %i.awz = getelementptr inbounds nuw i8, ptr %.138581895.us, i64 32
  %gep.us1902.1 = getelementptr i8, ptr %invariant.gep1892.us, i64 %.reass1891.us.1 ; 6 uses
  %gep1887.us.12496 = getelementptr i8, ptr %gep.us1902.1, i64 %.reass.us1903
  %i.axa = load i32, ptr %gep1887.us.12496, align 4, !tbaa !30
  %gep1887.us.1.1 = getelementptr i8, ptr %gep.us1902.1, i64 %i.awp
  %i.axb = load i32, ptr %gep1887.us.1.1, align 4, !tbaa !30
  %gep1887.us.2.1 = getelementptr i8, ptr %gep.us1902.1, i64 %i.awq
  %i.axc = load i32, ptr %gep1887.us.2.1, align 4, !tbaa !30
  %gep1887.us.3.1 = getelementptr i8, ptr %gep.us1902.1, i64 %i.awr
  %i.axd = load i32, ptr %gep1887.us.3.1, align 4, !tbaa !30
  %i.axe = getelementptr i8, ptr %gep.us1902.1, <4 x i64> %i.awt
  %i.axf = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.axe, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !30
  %i.axg = getelementptr i8, ptr %gep.us1902.1, <8 x i64> %i.aws
  %i.axh = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %i.axg, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !30
  %i.axi = insertelement <16 x i32> poison, i32 %i.axa, i64 0
  %i.axj = insertelement <16 x i32> %i.axi, i32 %i.axb, i64 1
  %i.axk = insertelement <16 x i32> %i.axj, i32 %i.axc, i64 2
  %i.axl = insertelement <16 x i32> %i.axk, i32 %i.axd, i64 3
  %i.axm = shufflevector <8 x i32> %i.axh, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axn = shufflevector <16 x i32> %i.axl, <16 x i32> %i.axm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.axo = shufflevector <4 x i32> %i.axf, <4 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.axp = shufflevector <16 x i32> %i.axn, <16 x i32> %i.axo, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 16, i32 17, i32 18, i32 19, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.axq = lshr <16 x i32> %i.axp, splat (i32 16)
  %i.axr = trunc nuw <16 x i32> %i.axq to <16 x i16>
  store <16 x i16> %i.axr, ptr %i.awz, align 2, !tbaa !28
  %i.axs = getelementptr inbounds nuw i8, ptr %.138581895.us, i64 64 ; 3 uses
  %indvars.iv.next2498 = add nuw nsw i64 %indvars.iv2497, 1 ; 2 uses
  %exitcond2501.not = icmp eq i64 %indvars.iv.next2498, %wide.trip.count2500
  br i1 %exitcond2501.not, label %._crit_edge1897.us, label %.preheader1805.us, !llvm.loop !349

._crit_edge1897.us:                               ; preds = %.preheader1805.us
  %indvars.iv.next2503 = add nuw nsw i64 %indvars.iv2502, 2 ; 3 uses
  %i.axt = trunc i64 %indvars.iv.next2503 to i32
  %i.axu = or i32 %i.axt, 1
  %i.axv = icmp slt i32 %i.axu, %2
  br i1 %i.axv, label %.preheader1810.us, label %.preheader1814.loopexit, !llvm.loop !350

.preheader1814.loopexit:                          ; preds = %._crit_edge1897.us
  %i.axw = trunc nuw i64 %indvars.iv.next2503 to i32
  br label %.preheader1814

.preheader1814:                                   ; preds = %.preheader1810.preheader, %.preheader1814.loopexit, %.preheader1815
  %.12857.lcssa = phi ptr [ %.8853.lcssa, %.preheader1815 ], [ %i.axs, %.preheader1814.loopexit ], [ %.8853.lcssa, %.preheader1810.preheader ]
  %.3843.lcssa = phi i32 [ %.2842.lcssa, %.preheader1815 ], [ %i.axw, %.preheader1814.loopexit ], [ %i.awg, %.preheader1810.preheader ] ; 2 uses
  %i.axx = icmp slt i32 %.3843.lcssa, %2
  br i1 %i.axx, label %.preheader1809.lr.ph, label %._crit_edge1917.split

.preheader1809.lr.ph:                             ; preds = %.preheader1814
  %i.axy = load i32, ptr %i.kb, align 4
  %i.axz = load ptr, ptr %7, align 8
  %i.aya = load i64, ptr %i.kd, align 8           ; 2 uses
  %i.ayb = sext i32 %i.axy to i64
  %factor.op.mul1918 = mul i64 %i.aya, %i.ayb
  br i1 %i.ka, label %.preheader1809.preheader, label %._crit_edge1917.split

.preheader1809.preheader:                         ; preds = %.preheader1809.lr.ph
  %i.ayc = load i64, ptr %i.kc, align 8
  %factor.op.mul1907 = mul i64 %i.ayc, %i.aya
  %i.ayd = zext i32 %.3843.lcssa to i64
  %i.aye = insertelement <16 x i64> poison, i64 %indvars.iv2517, i64 0
  %i.ayf = shufflevector <16 x i64> %i.aye, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ayg = or disjoint <16 x i64> %i.ayf, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.ayh = insertelement <16 x i64> poison, i64 %factor.op.mul1907, i64 0
  %i.ayi = shufflevector <16 x i64> %i.ayh, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.ayj = mul <16 x i64> %i.ayi, %i.ayg          ; 5 uses
  br label %.preheader1809

.preheader1809:                                   ; preds = %.preheader1809.preheader, %._crit_edge1914
  %indvars.iv2514 = phi i64 [ %i.ayd, %.preheader1809.preheader ], [ %indvars.iv.next2515, %._crit_edge1914 ] ; 2 uses
  %.168611915 = phi ptr [ %.12857.lcssa, %.preheader1809.preheader ], [ %.lcssa3400, %._crit_edge1914 ] ; 2 uses
  %.reass1919 = mul i64 %factor.op.mul1918, %indvars.iv2514
  %invariant.gep = getelementptr i8, ptr %i.axz, i64 %.reass1919 ; 5 uses
  br i1 %i.kl, label %.preheader1804.epil.preheader, label %.preheader1809.new

.preheader1809.new:                               ; preds = %.preheader1809
  %invariant.gep3447 = getelementptr i8, ptr %invariant.gep, <16 x i64> %i.ayj
  br label %.preheader1804

.preheader1804:                                   ; preds = %.preheader1804, %.preheader1809.new
  %indvars.iv2509 = phi i64 [ 0, %.preheader1809.new ], [ %indvars.iv.next2510.3, %.preheader1804 ] ; 5 uses
  %.178621912 = phi ptr [ %.168611915, %.preheader1809.new ], [ %i.azf, %.preheader1804 ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader1809.new ], [ %niter.next.3, %.preheader1804 ]
  %gep = getelementptr [4 x i8], <16 x ptr> %invariant.gep3447, i64 %indvars.iv2509
  %i.ayk = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.ayl = lshr <16 x i32> %i.ayk, splat (i32 16)
  %i.aym = trunc nuw <16 x i32> %i.ayl to <16 x i16>
  store <16 x i16> %i.aym, ptr %.178621912, align 2, !tbaa !28
  %i.ayn = getelementptr inbounds nuw i8, ptr %.178621912, i64 32
  %i.ayo = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2509
  %invariant.gep1908.1 = getelementptr i8, ptr %i.ayo, i64 4
  %i.ayp = getelementptr i8, ptr %invariant.gep1908.1, <16 x i64> %i.ayj
  %i.ayq = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.ayp, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.ayr = lshr <16 x i32> %i.ayq, splat (i32 16)
  %i.ays = trunc nuw <16 x i32> %i.ayr to <16 x i16>
  store <16 x i16> %i.ays, ptr %i.ayn, align 2, !tbaa !28
  %i.ayt = getelementptr inbounds nuw i8, ptr %.178621912, i64 64
  %i.ayu = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2509
  %invariant.gep1908.2 = getelementptr i8, ptr %i.ayu, i64 8
  %i.ayv = getelementptr i8, ptr %invariant.gep1908.2, <16 x i64> %i.ayj
  %i.ayw = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.ayv, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.ayx = lshr <16 x i32> %i.ayw, splat (i32 16)
  %i.ayy = trunc nuw <16 x i32> %i.ayx to <16 x i16>
  store <16 x i16> %i.ayy, ptr %i.ayt, align 2, !tbaa !28
  %i.ayz = getelementptr inbounds nuw i8, ptr %.178621912, i64 96
  %i.aza = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv2509
  %invariant.gep1908.3 = getelementptr i8, ptr %i.aza, i64 12
  %i.azb = getelementptr i8, ptr %invariant.gep1908.3, <16 x i64> %i.ayj
  %i.azc = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.azb, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.azd = lshr <16 x i32> %i.azc, splat (i32 16)
  %i.aze = trunc nuw <16 x i32> %i.azd to <16 x i16>
  store <16 x i16> %i.aze, ptr %i.ayz, align 2, !tbaa !28
  %i.azf = getelementptr inbounds nuw i8, ptr %.178621912, i64 128 ; 3 uses
  %indvars.iv.next2510.3 = add nuw nsw i64 %indvars.iv2509, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge1914.unr-lcssa, label %.preheader1804, !llvm.loop !351

._crit_edge1914.unr-lcssa:                        ; preds = %.preheader1804
  br i1 %lcmp.mod3402.not, label %._crit_edge1914, label %.preheader1804.epil.preheader

.preheader1804.epil.preheader:                    ; preds = %._crit_edge1914.unr-lcssa, %.preheader1809
  %indvars.iv2509.epil.init = phi i64 [ 0, %.preheader1809 ], [ %indvars.iv.next2510.3, %._crit_edge1914.unr-lcssa ]
  %.178621912.epil.init = phi ptr [ %.168611915, %.preheader1809 ], [ %i.azf, %._crit_edge1914.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3404)
  %invariant.gep3448 = getelementptr i8, ptr %invariant.gep, <16 x i64> %i.ayj
  br label %.preheader1804.epil

.preheader1804.epil:                              ; preds = %.preheader1804.epil, %.preheader1804.epil.preheader
  %indvars.iv2509.epil = phi i64 [ %indvars.iv2509.epil.init, %.preheader1804.epil.preheader ], [ %indvars.iv.next2510.epil, %.preheader1804.epil ] ; 2 uses
  %.178621912.epil = phi ptr [ %.178621912.epil.init, %.preheader1804.epil.preheader ], [ %i.azj, %.preheader1804.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.preheader1804.epil.preheader ], [ %epil.iter.next, %.preheader1804.epil ]
  %gep3449 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3448, i64 %indvars.iv2509.epil
  %i.azg = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep3449, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.azh = lshr <16 x i32> %i.azg, splat (i32 16)
  %i.azi = trunc nuw <16 x i32> %i.azh to <16 x i16>
  store <16 x i16> %i.azi, ptr %.178621912.epil, align 2, !tbaa !28
  %i.azj = getelementptr inbounds nuw i8, ptr %.178621912.epil, i64 32 ; 2 uses
  %indvars.iv.next2510.epil = add nuw nsw i64 %indvars.iv2509.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3401
  br i1 %epil.iter.cmp.not, label %._crit_edge1914, label %.preheader1804.epil, !llvm.loop !352

._crit_edge1914:                                  ; preds = %.preheader1804.epil, %._crit_edge1914.unr-lcssa
  %.lcssa3400 = phi ptr [ %i.azf, %._crit_edge1914.unr-lcssa ], [ %i.azj, %.preheader1804.epil ]
  %indvars.iv.next2515 = add nuw nsw i64 %indvars.iv2514, 1 ; 2 uses
  %i.azk = trunc nuw i64 %indvars.iv.next2515 to i32
  %i.azl = icmp sgt i32 %2, %i.azk
  br i1 %i.azl, label %.preheader1809, label %._crit_edge1917.split, !llvm.loop !353

._crit_edge1917.split:                            ; preds = %._crit_edge1914, %.preheader1809.lr.ph, %.preheader1814
  %indvars.iv.next2518 = add nuw nsw i64 %indvars.iv2517, 16 ; 3 uses
  %i.azm = or disjoint i64 %indvars.iv.next2518, 15
  %i.azn = icmp samesign ult i64 %i.azm, %i.kj
  br i1 %i.azn, label %.noexc982, label %.preheader1799.loopexit, !llvm.loop !354

.preheader1780.loopexit:                          ; preds = %._crit_edge2031.split
  %i.azo = trunc nuw nsw i64 %indvars.iv.next2607 to i32
  br label %.preheader1780

.preheader1780:                                   ; preds = %.preheader1780.loopexit, %.preheader1799
  %.1865.lcssa = phi i32 [ %.0864.lcssa, %.preheader1799 ], [ %i.azo, %.preheader1780.loopexit ] ; 3 uses
  %i.azp = or disjoint i32 %.1865.lcssa, 3
  %i.azq = icmp slt i32 %i.azp, %3
  br i1 %i.azq, label %.noexc958.lr.ph, label %.preheader1761

.noexc958.lr.ph:                                  ; preds = %.preheader1780
  %i.azr = load ptr, ptr %1, align 8, !tbaa !19, !noalias !436
  %i.azs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.azt = load i64, ptr %i.azs, align 8, !tbaa !17, !noalias !436
  %i.azu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.azv = load i64, ptr %i.azu, align 8, !tbaa !24, !noalias !436
  %factor.op.mul2152 = mul i64 %i.azt, %i.azv
  %i.azw = icmp sgt i32 %2, 15
  %i.azx = icmp sgt i32 %i.a, 0                   ; 5 uses
  %i.azy = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 5 uses
  %i.azz = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 5 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bab = and i32 %2, -16
  %i.bac = sext i32 %2 to i64
  %i.bad = add i32 %2, -8
  %i.bae = add i32 %2, -4
  %i.baf = add i32 %2, -2
  %i.bag = zext nneg i32 %.1865.lcssa to i64
  %wide.trip.count2620 = zext i32 %i.a to i64     ; 11 uses
  %invariant.op2896 = add nsw i64 %i.bac, -15
  %wide.trip.count2639 = zext nneg i32 %i.a to i64
  %wide.trip.count2658 = zext nneg i32 %i.a to i64
  %wide.trip.count2674 = zext nneg i32 %i.a to i64
  %wide.trip.count2686 = zext nneg i32 %i.a to i64
  %min.iters.check3047 = icmp ult i32 %i.a, 4
  %min.iters.check3049 = icmp ult i32 %i.a, 16
  %i.bah = and i64 %wide.trip.count2620, 12
  %n.vec3051 = and i64 %wide.trip.count2620, 2147483632 ; 5 uses
  %i.bai = shl nuw nsw i64 %n.vec3051, 4
  %cmp.n3066 = icmp eq i64 %n.vec3051, %wide.trip.count2620
  %min.epilog.iters.check3072 = icmp eq i64 %i.bah, 0
  %n.vec3074 = and i64 %wide.trip.count2620, 2147483644 ; 4 uses
  %i.baj = shl nuw nsw i64 %n.vec3074, 4
  %cmp.n3089 = icmp eq i64 %n.vec3074, %wide.trip.count2620
  %min.iters.check3010 = icmp ult i32 %i.a, 4
  %min.iters.check3012 = icmp ult i32 %i.a, 16
  %i.bak = and i64 %wide.trip.count2620, 12
  %n.vec3014 = and i64 %wide.trip.count2620, 2147483632 ; 5 uses
  %i.bal = shl nuw nsw i64 %n.vec3014, 3
  %cmp.n3025 = icmp eq i64 %n.vec3014, %wide.trip.count2620
  %min.epilog.iters.check3031 = icmp eq i64 %i.bak, 0
  %n.vec3033 = and i64 %wide.trip.count2620, 2147483644 ; 4 uses
  %i.bam = shl nuw nsw i64 %n.vec3033, 3
  %cmp.n3044 = icmp eq i64 %n.vec3033, %wide.trip.count2620
  br label %.noexc958

.noexc970:                                        ; preds = %.noexc970.lr.ph, %._crit_edge2031.split
  %indvars.iv2606 = phi i64 [ %i.le, %.noexc970.lr.ph ], [ %indvars.iv.next2607, %._crit_edge2031.split ] ; 31 uses
  %i.ban = trunc nuw nsw i64 %indvars.iv2606 to i32
  %i.bao = lshr i32 %i.ban, 4
  %i.bap = trunc i64 %indvars.iv2606 to i32
  %i.baq = lshr i32 %i.bap, 3
  %i.bar = and i32 %i.baq, 1
  %i.bas = add nuw nsw i32 %i.bar, %i.bao
  %i.bat = zext nneg i32 %i.bas to i64
  %.reass2039 = mul i64 %factor.op.mul2038, %i.bat
  %i.bau = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.reass2039 ; 3 uses
  br i1 %i.ku, label %.preheader1794.lr.ph, label %.preheader1798

.preheader1794.lr.ph:                             ; preds = %.noexc970
  %i.bav = load i32, ptr %i.kw, align 4
  %i.baw = load ptr, ptr %7, align 8
  %i.bax = load i64, ptr %i.ky, align 8           ; 2 uses
  %i.bay = sext i32 %i.bav to i64
  %factor.op.mul1933 = mul i64 %i.bax, %i.bay
  br i1 %i.kv, label %.preheader1794.us.preheader, label %.preheader1798

.preheader1794.us.preheader:                      ; preds = %.preheader1794.lr.ph
  %i.baz = load i64, ptr %i.kx, align 8
  %factor.op.mul1926 = mul i64 %i.baz, %i.bax     ; 8 uses
  %.reass1927.us = mul i64 %factor.op.mul1926, %indvars.iv2606
  %i.bba = or disjoint i64 %indvars.iv2606, 1
  %.reass1927.us.1 = mul i64 %factor.op.mul1926, %i.bba
  %i.bbb = or disjoint i64 %indvars.iv2606, 2
  %.reass1927.us.2 = mul i64 %factor.op.mul1926, %i.bbb
  %i.bbc = or disjoint i64 %indvars.iv2606, 3
  %.reass1927.us.3 = mul i64 %factor.op.mul1926, %i.bbc
  %i.bbd = or disjoint i64 %indvars.iv2606, 4
  %.reass1927.us.4 = mul i64 %factor.op.mul1926, %i.bbd
  %i.bbe = or disjoint i64 %indvars.iv2606, 5
  %.reass1927.us.5 = mul i64 %factor.op.mul1926, %i.bbe
  %i.bbf = or disjoint i64 %indvars.iv2606, 6
  %.reass1927.us.6 = mul i64 %factor.op.mul1926, %i.bbf
  %i.bbg = or disjoint i64 %indvars.iv2606, 7
  %.reass1927.us.7 = mul i64 %factor.op.mul1926, %i.bbg
  %broadcast.splatinsert2990 = insertelement <16 x i64> poison, i64 %factor.op.mul1933, i64 0
  %broadcast.splat2991 = shufflevector <16 x i64> %broadcast.splatinsert2990, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader1794.us

.preheader1794.us:                                ; preds = %.preheader1794.us.preheader, %._crit_edge1940.us
  %indvars.iv2533 = phi i64 [ 0, %.preheader1794.us.preheader ], [ %indvars.iv.next2534, %._crit_edge1940.us ] ; 2 uses
  %.08071942.us = phi ptr [ %i.bau, %.preheader1794.us.preheader ], [ %i.bbj, %._crit_edge1940.us ]
  %broadcast.splatinsert = insertelement <16 x i64> poison, i64 %indvars.iv2533, i64 0
  %broadcast.splat = shufflevector <16 x i64> %broadcast.splatinsert, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.bbh = or disjoint <16 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.bbi = mul <16 x i64> %broadcast.splat2991, %i.bbh
  %invariant.gep3450 = getelementptr i8, ptr %i.baw, <16 x i64> %i.bbi
  br label %.preheader1789.us

.preheader1789.us:                                ; preds = %.preheader1794.us, %.preheader1789.us
  %indvars.iv2528 = phi i64 [ 0, %.preheader1794.us ], [ %indvars.iv.next2529, %.preheader1789.us ] ; 2 uses
  %.18081938.us = phi ptr [ %.08071942.us, %.preheader1794.us ], [ %i.bbj, %.preheader1789.us ] ; 2 uses
  %i.bbj = getelementptr i8, ptr %.18081938.us, i64 256 ; 3 uses
  %gep3451 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3450, i64 %indvars.iv2528 ; 8 uses
  %wide.gep2993 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us
  %wide.masked.gather = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep2993, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep2994 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us.1
  %wide.masked.gather2995 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep2994, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep2996 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us.2
  %wide.masked.gather2997 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep2996, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep2998 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us.3
  %wide.masked.gather2999 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep2998, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep3000 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us.4
  %wide.masked.gather3001 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3000, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep3002 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us.5
  %wide.masked.gather3003 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3002, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep3004 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us.6
  %wide.masked.gather3005 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3004, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep3006 = getelementptr i8, <16 x ptr> %gep3451, i64 %.reass1927.us.7
  %wide.masked.gather3007 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3006, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.bbk = shufflevector <16 x i32> %wide.masked.gather, <16 x i32> %wide.masked.gather2995, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbl = shufflevector <16 x i32> %wide.masked.gather2997, <16 x i32> %wide.masked.gather2999, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbm = shufflevector <32 x i32> %i.bbk, <32 x i32> %i.bbl, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bbn = lshr <64 x i32> %i.bbm, splat (i32 16)
  %i.bbo = trunc nuw <64 x i32> %i.bbn to <64 x i16>
  %i.bbp = shufflevector <16 x i32> %wide.masked.gather3001, <16 x i32> %wide.masked.gather3003, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbq = shufflevector <16 x i32> %wide.masked.gather3005, <16 x i32> %wide.masked.gather3007, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bbr = shufflevector <32 x i32> %i.bbp, <32 x i32> %i.bbq, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bbs = lshr <64 x i32> %i.bbr, splat (i32 16)
  %i.bbt = trunc nuw <64 x i32> %i.bbs to <64 x i16>
  %interleaved.vec3008 = shufflevector <64 x i16> %i.bbo, <64 x i16> %i.bbt, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec3008, ptr %.18081938.us, align 2, !tbaa !28
  %indvars.iv.next2529 = add nuw nsw i64 %indvars.iv2528, 1 ; 2 uses
  %exitcond2532.not = icmp eq i64 %indvars.iv.next2529, %wide.trip.count2531
  br i1 %exitcond2532.not, label %._crit_edge1940.us, label %.preheader1789.us, !llvm.loop !357

._crit_edge1940.us:                               ; preds = %.preheader1789.us
  %indvars.iv.next2534 = add nuw nsw i64 %indvars.iv2533, 16 ; 3 uses
  %i.bbu = icmp slt i64 %indvars.iv.next2534, %invariant.op2894
  br i1 %i.bbu, label %.preheader1794.us, label %.preheader1798.loopexit, !llvm.loop !358

.preheader1798.loopexit:                          ; preds = %._crit_edge1940.us
  %i.bbv = trunc nuw nsw i64 %indvars.iv.next2534 to i32
  br label %.preheader1798

.preheader1798:                                   ; preds = %.preheader1794.lr.ph, %.preheader1798.loopexit, %.noexc970
  %.0807.lcssa = phi ptr [ %i.bau, %.noexc970 ], [ %i.bbj, %.preheader1798.loopexit ], [ %i.bau, %.preheader1794.lr.ph ] ; 3 uses
  %.0802.lcssa = phi i32 [ 0, %.noexc970 ], [ %i.bbv, %.preheader1798.loopexit ], [ %i.kz, %.preheader1794.lr.ph ] ; 5 uses
  %i.bbw = or disjoint i32 %.0802.lcssa, 7
  %i.bbx = icmp slt i32 %i.bbw, %2
  br i1 %i.bbx, label %.preheader1793.lr.ph, label %.preheader1797

.preheader1793.lr.ph:                             ; preds = %.preheader1798
  %i.bby = load i32, ptr %i.kw, align 4
  %i.bbz = load ptr, ptr %7, align 8
  %i.bca = load i64, ptr %i.ky, align 8           ; 2 uses
  %i.bcb = sext i32 %i.bby to i64
  %factor.op.mul1956 = mul i64 %i.bca, %i.bcb     ; 8 uses
  br i1 %i.kv, label %.preheader1793.us.preheader, label %.preheader1793.preheader

.preheader1793.preheader:                         ; preds = %.preheader1793.lr.ph
  %i.bcc = add nsw i32 %.0802.lcssa, 8
  %i.bcd = sub i32 %i.lb, %.0802.lcssa
  %i.bce = and i32 %i.bcd, -8
  %i.bcf = add i32 %i.bcc, %i.bce
  br label %.preheader1797

.preheader1793.us.preheader:                      ; preds = %.preheader1793.lr.ph
  %i.bcg = load i64, ptr %i.kx, align 8
  %factor.op.mul1949 = mul i64 %i.bcg, %i.bca     ; 8 uses
  %i.bch = zext i32 %.0802.lcssa to i64
  %.reass1950.us = mul i64 %factor.op.mul1949, %indvars.iv2606 ; 8 uses
  %i.bci = or disjoint i64 %indvars.iv2606, 1
  %.reass1950.us.1 = mul i64 %factor.op.mul1949, %i.bci ; 8 uses
  %i.bcj = or disjoint i64 %indvars.iv2606, 2
  %.reass1950.us.2 = mul i64 %factor.op.mul1949, %i.bcj ; 8 uses
  %i.bck = or disjoint i64 %indvars.iv2606, 3
  %.reass1950.us.3 = mul i64 %factor.op.mul1949, %i.bck ; 8 uses
  %i.bcl = or disjoint i64 %indvars.iv2606, 4
  %.reass1950.us.4 = mul i64 %factor.op.mul1949, %i.bcl ; 8 uses
  %i.bcm = or disjoint i64 %indvars.iv2606, 5
  %.reass1950.us.5 = mul i64 %factor.op.mul1949, %i.bcm ; 8 uses
  %i.bcn = or disjoint i64 %indvars.iv2606, 6
  %.reass1950.us.6 = mul i64 %factor.op.mul1949, %i.bcn ; 8 uses
  %i.bco = or disjoint i64 %indvars.iv2606, 7
  %.reass1950.us.7 = mul i64 %factor.op.mul1949, %i.bco ; 8 uses
  br label %.preheader1793.us

.preheader1793.us:                                ; preds = %.preheader1793.us.preheader, %._crit_edge1963.us
  %indvars.iv2556 = phi i64 [ %i.bch, %.preheader1793.us.preheader ], [ %indvars.iv.next2557, %._crit_edge1963.us ] ; 9 uses
  %.48111965.us = phi ptr [ %.0807.lcssa, %.preheader1793.us.preheader ], [ %i.bmr, %._crit_edge1963.us ]
  %.reass1957.us = mul i64 %factor.op.mul1956, %indvars.iv2556
  %i.bcp = or disjoint i64 %indvars.iv2556, 1
  %.reass1957.us.1 = mul i64 %factor.op.mul1956, %i.bcp
  %i.bcq = or disjoint i64 %indvars.iv2556, 2
  %.reass1957.us.2 = mul i64 %factor.op.mul1956, %i.bcq
  %i.bcr = or disjoint i64 %indvars.iv2556, 3
  %.reass1957.us.3 = mul i64 %factor.op.mul1956, %i.bcr
  %i.bcs = or disjoint i64 %indvars.iv2556, 4
  %.reass1957.us.4 = mul i64 %factor.op.mul1956, %i.bcs
  %i.bct = or disjoint i64 %indvars.iv2556, 5
  %.reass1957.us.5 = mul i64 %factor.op.mul1956, %i.bct
  %i.bcu = or disjoint i64 %indvars.iv2556, 6
  %.reass1957.us.6 = mul i64 %factor.op.mul1956, %i.bcu
  %i.bcv = or disjoint i64 %indvars.iv2556, 7
  %.reass1957.us.7 = mul i64 %factor.op.mul1956, %i.bcv
  br label %.preheader1788.us

.preheader1788.us:                                ; preds = %.preheader1793.us, %.preheader1788.us
  %indvars.iv2551 = phi i64 [ 0, %.preheader1793.us ], [ %indvars.iv.next2552, %.preheader1788.us ] ; 2 uses
  %.58121961.us = phi ptr [ %.48111965.us, %.preheader1793.us ], [ %i.bmr, %.preheader1788.us ] ; 65 uses
  %invariant.gep1958.us = getelementptr [4 x i8], ptr %i.bbz, i64 %indvars.iv2551 ; 8 uses
  %gep.us1969 = getelementptr i8, ptr %invariant.gep1958.us, i64 %.reass1957.us ; 8 uses
  %gep1953.us = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us
  %i.bcw = load i32, ptr %gep1953.us, align 4, !tbaa !30
  %i.bcx = lshr i32 %i.bcw, 16
  %i.bcy = trunc nuw i32 %i.bcx to i16
  store i16 %i.bcy, ptr %.58121961.us, align 2, !tbaa !28
  %i.bcz = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 2
  %gep1953.us.1 = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us.1
  %i.bda = load i32, ptr %gep1953.us.1, align 4, !tbaa !30
  %i.bdb = lshr i32 %i.bda, 16
  %i.bdc = trunc nuw i32 %i.bdb to i16
  store i16 %i.bdc, ptr %i.bcz, align 2, !tbaa !28
  %i.bdd = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 4
  %gep1953.us.2 = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us.2
  %i.bde = load i32, ptr %gep1953.us.2, align 4, !tbaa !30
  %i.bdf = lshr i32 %i.bde, 16
  %i.bdg = trunc nuw i32 %i.bdf to i16
  store i16 %i.bdg, ptr %i.bdd, align 2, !tbaa !28
  %i.bdh = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 6
  %gep1953.us.3 = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us.3
  %i.bdi = load i32, ptr %gep1953.us.3, align 4, !tbaa !30
  %i.bdj = lshr i32 %i.bdi, 16
  %i.bdk = trunc nuw i32 %i.bdj to i16
  store i16 %i.bdk, ptr %i.bdh, align 2, !tbaa !28
  %i.bdl = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 8
  %gep1953.us.4 = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us.4
  %i.bdm = load i32, ptr %gep1953.us.4, align 4, !tbaa !30
  %i.bdn = lshr i32 %i.bdm, 16
  %i.bdo = trunc nuw i32 %i.bdn to i16
  store i16 %i.bdo, ptr %i.bdl, align 2, !tbaa !28
  %i.bdp = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 10
  %gep1953.us.5 = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us.5
  %i.bdq = load i32, ptr %gep1953.us.5, align 4, !tbaa !30
  %i.bdr = lshr i32 %i.bdq, 16
  %i.bds = trunc nuw i32 %i.bdr to i16
  store i16 %i.bds, ptr %i.bdp, align 2, !tbaa !28
  %i.bdt = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 12
  %gep1953.us.6 = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us.6
  %i.bdu = load i32, ptr %gep1953.us.6, align 4, !tbaa !30
  %i.bdv = lshr i32 %i.bdu, 16
  %i.bdw = trunc nuw i32 %i.bdv to i16
  store i16 %i.bdw, ptr %i.bdt, align 2, !tbaa !28
  %i.bdx = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 14
  %gep1953.us.7 = getelementptr i8, ptr %gep.us1969, i64 %.reass1950.us.7
  %i.bdy = load i32, ptr %gep1953.us.7, align 4, !tbaa !30
  %i.bdz = lshr i32 %i.bdy, 16
  %i.bea = trunc nuw i32 %i.bdz to i16
  store i16 %i.bea, ptr %i.bdx, align 2, !tbaa !28
  %i.beb = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 16
  %gep.us1969.1 = getelementptr i8, ptr %invariant.gep1958.us, i64 %.reass1957.us.1 ; 8 uses
  %gep1953.us.12544 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us
  %i.bec = load i32, ptr %gep1953.us.12544, align 4, !tbaa !30
  %i.bed = lshr i32 %i.bec, 16
  %i.bee = trunc nuw i32 %i.bed to i16
  store i16 %i.bee, ptr %i.beb, align 2, !tbaa !28
  %i.bef = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 18
  %gep1953.us.1.1 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us.1
  %i.beg = load i32, ptr %gep1953.us.1.1, align 4, !tbaa !30
  %i.beh = lshr i32 %i.beg, 16
  %i.bei = trunc nuw i32 %i.beh to i16
  store i16 %i.bei, ptr %i.bef, align 2, !tbaa !28
  %i.bej = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 20
  %gep1953.us.2.1 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us.2
  %i.bek = load i32, ptr %gep1953.us.2.1, align 4, !tbaa !30
  %i.bel = lshr i32 %i.bek, 16
  %i.bem = trunc nuw i32 %i.bel to i16
  store i16 %i.bem, ptr %i.bej, align 2, !tbaa !28
  %i.ben = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 22
  %gep1953.us.3.1 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us.3
  %i.beo = load i32, ptr %gep1953.us.3.1, align 4, !tbaa !30
  %i.bep = lshr i32 %i.beo, 16
  %i.beq = trunc nuw i32 %i.bep to i16
  store i16 %i.beq, ptr %i.ben, align 2, !tbaa !28
  %i.ber = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 24
  %gep1953.us.4.1 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us.4
  %i.bes = load i32, ptr %gep1953.us.4.1, align 4, !tbaa !30
  %i.bet = lshr i32 %i.bes, 16
  %i.beu = trunc nuw i32 %i.bet to i16
  store i16 %i.beu, ptr %i.ber, align 2, !tbaa !28
  %i.bev = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 26
  %gep1953.us.5.1 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us.5
  %i.bew = load i32, ptr %gep1953.us.5.1, align 4, !tbaa !30
  %i.bex = lshr i32 %i.bew, 16
  %i.bey = trunc nuw i32 %i.bex to i16
  store i16 %i.bey, ptr %i.bev, align 2, !tbaa !28
  %i.bez = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 28
  %gep1953.us.6.1 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us.6
  %i.bfa = load i32, ptr %gep1953.us.6.1, align 4, !tbaa !30
  %i.bfb = lshr i32 %i.bfa, 16
  %i.bfc = trunc nuw i32 %i.bfb to i16
  store i16 %i.bfc, ptr %i.bez, align 2, !tbaa !28
  %i.bfd = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 30
  %gep1953.us.7.1 = getelementptr i8, ptr %gep.us1969.1, i64 %.reass1950.us.7
  %i.bfe = load i32, ptr %gep1953.us.7.1, align 4, !tbaa !30
  %i.bff = lshr i32 %i.bfe, 16
  %i.bfg = trunc nuw i32 %i.bff to i16
  store i16 %i.bfg, ptr %i.bfd, align 2, !tbaa !28
  %i.bfh = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 32
  %gep.us1969.2 = getelementptr i8, ptr %invariant.gep1958.us, i64 %.reass1957.us.2 ; 8 uses
  %gep1953.us.22545 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us
  %i.bfi = load i32, ptr %gep1953.us.22545, align 4, !tbaa !30
  %i.bfj = lshr i32 %i.bfi, 16
  %i.bfk = trunc nuw i32 %i.bfj to i16
  store i16 %i.bfk, ptr %i.bfh, align 2, !tbaa !28
  %i.bfl = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 34
  %gep1953.us.1.2 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us.1
  %i.bfm = load i32, ptr %gep1953.us.1.2, align 4, !tbaa !30
  %i.bfn = lshr i32 %i.bfm, 16
  %i.bfo = trunc nuw i32 %i.bfn to i16
  store i16 %i.bfo, ptr %i.bfl, align 2, !tbaa !28
  %i.bfp = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 36
  %gep1953.us.2.2 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us.2
  %i.bfq = load i32, ptr %gep1953.us.2.2, align 4, !tbaa !30
  %i.bfr = lshr i32 %i.bfq, 16
  %i.bfs = trunc nuw i32 %i.bfr to i16
  store i16 %i.bfs, ptr %i.bfp, align 2, !tbaa !28
  %i.bft = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 38
  %gep1953.us.3.2 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us.3
  %i.bfu = load i32, ptr %gep1953.us.3.2, align 4, !tbaa !30
  %i.bfv = lshr i32 %i.bfu, 16
  %i.bfw = trunc nuw i32 %i.bfv to i16
  store i16 %i.bfw, ptr %i.bft, align 2, !tbaa !28
  %i.bfx = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 40
  %gep1953.us.4.2 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us.4
  %i.bfy = load i32, ptr %gep1953.us.4.2, align 4, !tbaa !30
  %i.bfz = lshr i32 %i.bfy, 16
  %i.bga = trunc nuw i32 %i.bfz to i16
  store i16 %i.bga, ptr %i.bfx, align 2, !tbaa !28
  %i.bgb = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 42
  %gep1953.us.5.2 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us.5
  %i.bgc = load i32, ptr %gep1953.us.5.2, align 4, !tbaa !30
  %i.bgd = lshr i32 %i.bgc, 16
  %i.bge = trunc nuw i32 %i.bgd to i16
  store i16 %i.bge, ptr %i.bgb, align 2, !tbaa !28
  %i.bgf = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 44
  %gep1953.us.6.2 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us.6
  %i.bgg = load i32, ptr %gep1953.us.6.2, align 4, !tbaa !30
  %i.bgh = lshr i32 %i.bgg, 16
  %i.bgi = trunc nuw i32 %i.bgh to i16
  store i16 %i.bgi, ptr %i.bgf, align 2, !tbaa !28
  %i.bgj = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 46
  %gep1953.us.7.2 = getelementptr i8, ptr %gep.us1969.2, i64 %.reass1950.us.7
  %i.bgk = load i32, ptr %gep1953.us.7.2, align 4, !tbaa !30
  %i.bgl = lshr i32 %i.bgk, 16
  %i.bgm = trunc nuw i32 %i.bgl to i16
  store i16 %i.bgm, ptr %i.bgj, align 2, !tbaa !28
  %i.bgn = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 48
  %gep.us1969.3 = getelementptr i8, ptr %invariant.gep1958.us, i64 %.reass1957.us.3 ; 8 uses
  %gep1953.us.32546 = getelementptr i8, ptr %gep.us1969.3, i64 %.reass1950.us
  %i.bgo = load i32, ptr %gep1953.us.32546, align 4, !tbaa !30
end_hunk_10
begin_hunk_11_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  %i.bil = lshr i32 %i.bik, 16
  %i.bim = trunc nuw i32 %i.bil to i16
  store i16 %i.bim, ptr %i.bij, align 2, !tbaa !28
  %i.bin = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 74
  %gep1953.us.5.4 = getelementptr i8, ptr %gep.us1969.4, i64 %.reass1950.us.5
  %i.bio = load i32, ptr %gep1953.us.5.4, align 4, !tbaa !30
  %i.bip = lshr i32 %i.bio, 16
  %i.biq = trunc nuw i32 %i.bip to i16
  store i16 %i.biq, ptr %i.bin, align 2, !tbaa !28
  %i.bir = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 76
  %gep1953.us.6.4 = getelementptr i8, ptr %gep.us1969.4, i64 %.reass1950.us.6
  %i.bis = load i32, ptr %gep1953.us.6.4, align 4, !tbaa !30
  %i.bit = lshr i32 %i.bis, 16
  %i.biu = trunc nuw i32 %i.bit to i16
  store i16 %i.biu, ptr %i.bir, align 2, !tbaa !28
  %i.biv = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 78
  %gep1953.us.7.4 = getelementptr i8, ptr %gep.us1969.4, i64 %.reass1950.us.7
  %i.biw = load i32, ptr %gep1953.us.7.4, align 4, !tbaa !30
  %i.bix = lshr i32 %i.biw, 16
  %i.biy = trunc nuw i32 %i.bix to i16
  store i16 %i.biy, ptr %i.biv, align 2, !tbaa !28
  %i.biz = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 80
  %gep.us1969.5 = getelementptr i8, ptr %invariant.gep1958.us, i64 %.reass1957.us.5 ; 8 uses
  %gep1953.us.52548 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us
  %i.bja = load i32, ptr %gep1953.us.52548, align 4, !tbaa !30
  %i.bjb = lshr i32 %i.bja, 16
  %i.bjc = trunc nuw i32 %i.bjb to i16
  store i16 %i.bjc, ptr %i.biz, align 2, !tbaa !28
  %i.bjd = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 82
  %gep1953.us.1.5 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us.1
  %i.bje = load i32, ptr %gep1953.us.1.5, align 4, !tbaa !30
  %i.bjf = lshr i32 %i.bje, 16
  %i.bjg = trunc nuw i32 %i.bjf to i16
  store i16 %i.bjg, ptr %i.bjd, align 2, !tbaa !28
  %i.bjh = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 84
  %gep1953.us.2.5 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us.2
  %i.bji = load i32, ptr %gep1953.us.2.5, align 4, !tbaa !30
  %i.bjj = lshr i32 %i.bji, 16
  %i.bjk = trunc nuw i32 %i.bjj to i16
  store i16 %i.bjk, ptr %i.bjh, align 2, !tbaa !28
  %i.bjl = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 86
  %gep1953.us.3.5 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us.3
  %i.bjm = load i32, ptr %gep1953.us.3.5, align 4, !tbaa !30
  %i.bjn = lshr i32 %i.bjm, 16
  %i.bjo = trunc nuw i32 %i.bjn to i16
  store i16 %i.bjo, ptr %i.bjl, align 2, !tbaa !28
  %i.bjp = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 88
  %gep1953.us.4.5 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us.4
  %i.bjq = load i32, ptr %gep1953.us.4.5, align 4, !tbaa !30
  %i.bjr = lshr i32 %i.bjq, 16
  %i.bjs = trunc nuw i32 %i.bjr to i16
  store i16 %i.bjs, ptr %i.bjp, align 2, !tbaa !28
  %i.bjt = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 90
  %gep1953.us.5.5 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us.5
  %i.bju = load i32, ptr %gep1953.us.5.5, align 4, !tbaa !30
  %i.bjv = lshr i32 %i.bju, 16
  %i.bjw = trunc nuw i32 %i.bjv to i16
  store i16 %i.bjw, ptr %i.bjt, align 2, !tbaa !28
  %i.bjx = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 92
  %gep1953.us.6.5 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us.6
  %i.bjy = load i32, ptr %gep1953.us.6.5, align 4, !tbaa !30
  %i.bjz = lshr i32 %i.bjy, 16
  %i.bka = trunc nuw i32 %i.bjz to i16
  store i16 %i.bka, ptr %i.bjx, align 2, !tbaa !28
  %i.bkb = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 94
  %gep1953.us.7.5 = getelementptr i8, ptr %gep.us1969.5, i64 %.reass1950.us.7
  %i.bkc = load i32, ptr %gep1953.us.7.5, align 4, !tbaa !30
  %i.bkd = lshr i32 %i.bkc, 16
  %i.bke = trunc nuw i32 %i.bkd to i16
  store i16 %i.bke, ptr %i.bkb, align 2, !tbaa !28
  %i.bkf = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 96
  %gep.us1969.6 = getelementptr i8, ptr %invariant.gep1958.us, i64 %.reass1957.us.6 ; 8 uses
  %gep1953.us.62549 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us
  %i.bkg = load i32, ptr %gep1953.us.62549, align 4, !tbaa !30
  %i.bkh = lshr i32 %i.bkg, 16
  %i.bki = trunc nuw i32 %i.bkh to i16
  store i16 %i.bki, ptr %i.bkf, align 2, !tbaa !28
  %i.bkj = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 98
  %gep1953.us.1.6 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us.1
  %i.bkk = load i32, ptr %gep1953.us.1.6, align 4, !tbaa !30
  %i.bkl = lshr i32 %i.bkk, 16
  %i.bkm = trunc nuw i32 %i.bkl to i16
  store i16 %i.bkm, ptr %i.bkj, align 2, !tbaa !28
  %i.bkn = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 100
  %gep1953.us.2.6 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us.2
  %i.bko = load i32, ptr %gep1953.us.2.6, align 4, !tbaa !30
  %i.bkp = lshr i32 %i.bko, 16
  %i.bkq = trunc nuw i32 %i.bkp to i16
  store i16 %i.bkq, ptr %i.bkn, align 2, !tbaa !28
  %i.bkr = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 102
  %gep1953.us.3.6 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us.3
  %i.bks = load i32, ptr %gep1953.us.3.6, align 4, !tbaa !30
  %i.bkt = lshr i32 %i.bks, 16
  %i.bku = trunc nuw i32 %i.bkt to i16
  store i16 %i.bku, ptr %i.bkr, align 2, !tbaa !28
  %i.bkv = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 104
  %gep1953.us.4.6 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us.4
  %i.bkw = load i32, ptr %gep1953.us.4.6, align 4, !tbaa !30
  %i.bkx = lshr i32 %i.bkw, 16
  %i.bky = trunc nuw i32 %i.bkx to i16
  store i16 %i.bky, ptr %i.bkv, align 2, !tbaa !28
  %i.bkz = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 106
  %gep1953.us.5.6 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us.5
  %i.bla = load i32, ptr %gep1953.us.5.6, align 4, !tbaa !30
  %i.blb = lshr i32 %i.bla, 16
  %i.blc = trunc nuw i32 %i.blb to i16
  store i16 %i.blc, ptr %i.bkz, align 2, !tbaa !28
  %i.bld = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 108
  %gep1953.us.6.6 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us.6
  %i.ble = load i32, ptr %gep1953.us.6.6, align 4, !tbaa !30
  %i.blf = lshr i32 %i.ble, 16
  %i.blg = trunc nuw i32 %i.blf to i16
  store i16 %i.blg, ptr %i.bld, align 2, !tbaa !28
  %i.blh = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 110
  %gep1953.us.7.6 = getelementptr i8, ptr %gep.us1969.6, i64 %.reass1950.us.7
  %i.bli = load i32, ptr %gep1953.us.7.6, align 4, !tbaa !30
  %i.blj = lshr i32 %i.bli, 16
  %i.blk = trunc nuw i32 %i.blj to i16
  store i16 %i.blk, ptr %i.blh, align 2, !tbaa !28
  %i.bll = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 112
  %gep.us1969.7 = getelementptr i8, ptr %invariant.gep1958.us, i64 %.reass1957.us.7 ; 8 uses
  %gep1953.us.72550 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us
  %i.blm = load i32, ptr %gep1953.us.72550, align 4, !tbaa !30
  %i.bln = lshr i32 %i.blm, 16
  %i.blo = trunc nuw i32 %i.bln to i16
  store i16 %i.blo, ptr %i.bll, align 2, !tbaa !28
  %i.blp = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 114
  %gep1953.us.1.7 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us.1
  %i.blq = load i32, ptr %gep1953.us.1.7, align 4, !tbaa !30
  %i.blr = lshr i32 %i.blq, 16
  %i.bls = trunc nuw i32 %i.blr to i16
  store i16 %i.bls, ptr %i.blp, align 2, !tbaa !28
  %i.blt = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 116
  %gep1953.us.2.7 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us.2
  %i.blu = load i32, ptr %gep1953.us.2.7, align 4, !tbaa !30
  %i.blv = lshr i32 %i.blu, 16
  %i.blw = trunc nuw i32 %i.blv to i16
  store i16 %i.blw, ptr %i.blt, align 2, !tbaa !28
  %i.blx = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 118
  %gep1953.us.3.7 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us.3
  %i.bly = load i32, ptr %gep1953.us.3.7, align 4, !tbaa !30
  %i.blz = lshr i32 %i.bly, 16
  %i.bma = trunc nuw i32 %i.blz to i16
  store i16 %i.bma, ptr %i.blx, align 2, !tbaa !28
  %i.bmb = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 120
  %gep1953.us.4.7 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us.4
  %i.bmc = load i32, ptr %gep1953.us.4.7, align 4, !tbaa !30
  %i.bmd = lshr i32 %i.bmc, 16
  %i.bme = trunc nuw i32 %i.bmd to i16
  store i16 %i.bme, ptr %i.bmb, align 2, !tbaa !28
  %i.bmf = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 122
  %gep1953.us.5.7 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us.5
  %i.bmg = load i32, ptr %gep1953.us.5.7, align 4, !tbaa !30
  %i.bmh = lshr i32 %i.bmg, 16
  %i.bmi = trunc nuw i32 %i.bmh to i16
  store i16 %i.bmi, ptr %i.bmf, align 2, !tbaa !28
  %i.bmj = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 124
  %gep1953.us.6.7 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us.6
  %i.bmk = load i32, ptr %gep1953.us.6.7, align 4, !tbaa !30
  %i.bml = lshr i32 %i.bmk, 16
  %i.bmm = trunc nuw i32 %i.bml to i16
  store i16 %i.bmm, ptr %i.bmj, align 2, !tbaa !28
  %i.bmn = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 126
  %gep1953.us.7.7 = getelementptr i8, ptr %gep.us1969.7, i64 %.reass1950.us.7
  %i.bmo = load i32, ptr %gep1953.us.7.7, align 4, !tbaa !30
  %i.bmp = lshr i32 %i.bmo, 16
  %i.bmq = trunc nuw i32 %i.bmp to i16
  store i16 %i.bmq, ptr %i.bmn, align 2, !tbaa !28
  %i.bmr = getelementptr inbounds nuw i8, ptr %.58121961.us, i64 128 ; 3 uses
  %indvars.iv.next2552 = add nuw nsw i64 %indvars.iv2551, 1 ; 2 uses
  %exitcond2555.not = icmp eq i64 %indvars.iv.next2552, %wide.trip.count2554
  br i1 %exitcond2555.not, label %._crit_edge1963.us, label %.preheader1788.us, !llvm.loop !359

._crit_edge1963.us:                               ; preds = %.preheader1788.us
  %indvars.iv.next2557 = add nuw nsw i64 %indvars.iv2556, 8 ; 3 uses
  %i.bms = trunc i64 %indvars.iv.next2557 to i32
  %i.bmt = or i32 %i.bms, 7
  %i.bmu = icmp slt i32 %i.bmt, %2
  br i1 %i.bmu, label %.preheader1793.us, label %.preheader1797.loopexit, !llvm.loop !360

.preheader1797.loopexit:                          ; preds = %._crit_edge1963.us
  %i.bmv = trunc nuw i64 %indvars.iv.next2557 to i32
  br label %.preheader1797

.preheader1797:                                   ; preds = %.preheader1793.preheader, %.preheader1797.loopexit, %.preheader1798
  %.4811.lcssa = phi ptr [ %.0807.lcssa, %.preheader1798 ], [ %i.bmr, %.preheader1797.loopexit ], [ %.0807.lcssa, %.preheader1793.preheader ] ; 3 uses
  %.1803.lcssa = phi i32 [ %.0802.lcssa, %.preheader1798 ], [ %i.bmv, %.preheader1797.loopexit ], [ %i.bcf, %.preheader1793.preheader ] ; 5 uses
  %i.bmw = or disjoint i32 %.1803.lcssa, 3
  %i.bmx = icmp slt i32 %i.bmw, %2
  br i1 %i.bmx, label %.preheader1792.lr.ph, label %.preheader1796

.preheader1792.lr.ph:                             ; preds = %.preheader1797
  %i.bmy = load i32, ptr %i.kw, align 4
  %i.bmz = load ptr, ptr %7, align 8
  %i.bna = load i64, ptr %i.ky, align 8           ; 2 uses
  %i.bnb = sext i32 %i.bmy to i64
  %factor.op.mul1979 = mul i64 %i.bna, %i.bnb     ; 4 uses
  br i1 %i.kv, label %.preheader1792.us.preheader, label %.preheader1792.preheader

.preheader1792.preheader:                         ; preds = %.preheader1792.lr.ph
  %i.bnc = add nsw i32 %.1803.lcssa, 4
  %i.bnd = sub i32 %i.lc, %.1803.lcssa
  %i.bne = and i32 %i.bnd, -4
  %i.bnf = add i32 %i.bnc, %i.bne
  br label %.preheader1796

.preheader1792.us.preheader:                      ; preds = %.preheader1792.lr.ph
  %i.bng = load i64, ptr %i.kx, align 8
  %factor.op.mul1972 = mul i64 %i.bng, %i.bna     ; 8 uses
  %i.bnh = zext i32 %.1803.lcssa to i64
  %.reass1973.us = mul i64 %factor.op.mul1972, %indvars.iv2606 ; 4 uses
  %i.bni = or disjoint i64 %indvars.iv2606, 1
  %.reass1973.us.1 = mul i64 %factor.op.mul1972, %i.bni ; 4 uses
  %i.bnj = or disjoint i64 %indvars.iv2606, 2
  %.reass1973.us.2 = mul i64 %factor.op.mul1972, %i.bnj ; 4 uses
  %i.bnk = or disjoint i64 %indvars.iv2606, 3
  %.reass1973.us.3 = mul i64 %factor.op.mul1972, %i.bnk ; 4 uses
  %i.bnl = or disjoint i64 %indvars.iv2606, 4
  %.reass1973.us.4 = mul i64 %factor.op.mul1972, %i.bnl ; 4 uses
  %i.bnm = or disjoint i64 %indvars.iv2606, 5
  %.reass1973.us.5 = mul i64 %factor.op.mul1972, %i.bnm ; 4 uses
  %i.bnn = or disjoint i64 %indvars.iv2606, 6
  %.reass1973.us.6 = mul i64 %factor.op.mul1972, %i.bnn ; 4 uses
  %i.bno = or disjoint i64 %indvars.iv2606, 7
  %.reass1973.us.7 = mul i64 %factor.op.mul1972, %i.bno ; 4 uses
  br label %.preheader1792.us

.preheader1792.us:                                ; preds = %.preheader1792.us.preheader, %._crit_edge1986.us
  %indvars.iv2575 = phi i64 [ %i.bnh, %.preheader1792.us.preheader ], [ %indvars.iv.next2576, %._crit_edge1986.us ] ; 5 uses
  %.88151988.us = phi ptr [ %.4811.lcssa, %.preheader1792.us.preheader ], [ %i.bsp, %._crit_edge1986.us ]
  %.reass1980.us = mul i64 %factor.op.mul1979, %indvars.iv2575
  %i.bnp = or disjoint i64 %indvars.iv2575, 1
  %.reass1980.us.1 = mul i64 %factor.op.mul1979, %i.bnp
  %i.bnq = or disjoint i64 %indvars.iv2575, 2
  %.reass1980.us.2 = mul i64 %factor.op.mul1979, %i.bnq
  %i.bnr = or disjoint i64 %indvars.iv2575, 3
  %.reass1980.us.3 = mul i64 %factor.op.mul1979, %i.bnr
  br label %.preheader1787.us

.preheader1787.us:                                ; preds = %.preheader1792.us, %.preheader1787.us
  %indvars.iv2570 = phi i64 [ 0, %.preheader1792.us ], [ %indvars.iv.next2571, %.preheader1787.us ] ; 2 uses
  %.98161984.us = phi ptr [ %.88151988.us, %.preheader1792.us ], [ %i.bsp, %.preheader1787.us ] ; 33 uses
  %invariant.gep1981.us = getelementptr [4 x i8], ptr %i.bmz, i64 %indvars.iv2570 ; 4 uses
  %gep.us1992 = getelementptr i8, ptr %invariant.gep1981.us, i64 %.reass1980.us ; 8 uses
  %gep1976.us = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us
  %i.bns = load i32, ptr %gep1976.us, align 4, !tbaa !30
  %i.bnt = lshr i32 %i.bns, 16
  %i.bnu = trunc nuw i32 %i.bnt to i16
  store i16 %i.bnu, ptr %.98161984.us, align 2, !tbaa !28
  %i.bnv = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 2
  %gep1976.us.1 = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us.1
  %i.bnw = load i32, ptr %gep1976.us.1, align 4, !tbaa !30
  %i.bnx = lshr i32 %i.bnw, 16
  %i.bny = trunc nuw i32 %i.bnx to i16
  store i16 %i.bny, ptr %i.bnv, align 2, !tbaa !28
  %i.bnz = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 4
  %gep1976.us.2 = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us.2
  %i.boa = load i32, ptr %gep1976.us.2, align 4, !tbaa !30
  %i.bob = lshr i32 %i.boa, 16
  %i.boc = trunc nuw i32 %i.bob to i16
  store i16 %i.boc, ptr %i.bnz, align 2, !tbaa !28
  %i.bod = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 6
  %gep1976.us.3 = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us.3
  %i.boe = load i32, ptr %gep1976.us.3, align 4, !tbaa !30
  %i.bof = lshr i32 %i.boe, 16
  %i.bog = trunc nuw i32 %i.bof to i16
  store i16 %i.bog, ptr %i.bod, align 2, !tbaa !28
  %i.boh = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 8
  %gep1976.us.4 = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us.4
  %i.boi = load i32, ptr %gep1976.us.4, align 4, !tbaa !30
  %i.boj = lshr i32 %i.boi, 16
  %i.bok = trunc nuw i32 %i.boj to i16
  store i16 %i.bok, ptr %i.boh, align 2, !tbaa !28
  %i.bol = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 10
  %gep1976.us.5 = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us.5
  %i.bom = load i32, ptr %gep1976.us.5, align 4, !tbaa !30
  %i.bon = lshr i32 %i.bom, 16
  %i.boo = trunc nuw i32 %i.bon to i16
  store i16 %i.boo, ptr %i.bol, align 2, !tbaa !28
  %i.bop = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 12
  %gep1976.us.6 = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us.6
  %i.boq = load i32, ptr %gep1976.us.6, align 4, !tbaa !30
  %i.bor = lshr i32 %i.boq, 16
  %i.bos = trunc nuw i32 %i.bor to i16
  store i16 %i.bos, ptr %i.bop, align 2, !tbaa !28
  %i.bot = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 14
  %gep1976.us.7 = getelementptr i8, ptr %gep.us1992, i64 %.reass1973.us.7
  %i.bou = load i32, ptr %gep1976.us.7, align 4, !tbaa !30
  %i.bov = lshr i32 %i.bou, 16
  %i.bow = trunc nuw i32 %i.bov to i16
  store i16 %i.bow, ptr %i.bot, align 2, !tbaa !28
  %i.box = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 16
  %gep.us1992.1 = getelementptr i8, ptr %invariant.gep1981.us, i64 %.reass1980.us.1 ; 8 uses
  %gep1976.us.12567 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us
  %i.boy = load i32, ptr %gep1976.us.12567, align 4, !tbaa !30
  %i.boz = lshr i32 %i.boy, 16
  %i.bpa = trunc nuw i32 %i.boz to i16
  store i16 %i.bpa, ptr %i.box, align 2, !tbaa !28
  %i.bpb = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 18
  %gep1976.us.1.1 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us.1
  %i.bpc = load i32, ptr %gep1976.us.1.1, align 4, !tbaa !30
  %i.bpd = lshr i32 %i.bpc, 16
  %i.bpe = trunc nuw i32 %i.bpd to i16
  store i16 %i.bpe, ptr %i.bpb, align 2, !tbaa !28
  %i.bpf = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 20
  %gep1976.us.2.1 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us.2
  %i.bpg = load i32, ptr %gep1976.us.2.1, align 4, !tbaa !30
  %i.bph = lshr i32 %i.bpg, 16
  %i.bpi = trunc nuw i32 %i.bph to i16
  store i16 %i.bpi, ptr %i.bpf, align 2, !tbaa !28
  %i.bpj = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 22
  %gep1976.us.3.1 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us.3
  %i.bpk = load i32, ptr %gep1976.us.3.1, align 4, !tbaa !30
  %i.bpl = lshr i32 %i.bpk, 16
  %i.bpm = trunc nuw i32 %i.bpl to i16
  store i16 %i.bpm, ptr %i.bpj, align 2, !tbaa !28
  %i.bpn = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 24
  %gep1976.us.4.1 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us.4
  %i.bpo = load i32, ptr %gep1976.us.4.1, align 4, !tbaa !30
  %i.bpp = lshr i32 %i.bpo, 16
  %i.bpq = trunc nuw i32 %i.bpp to i16
  store i16 %i.bpq, ptr %i.bpn, align 2, !tbaa !28
  %i.bpr = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 26
  %gep1976.us.5.1 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us.5
  %i.bps = load i32, ptr %gep1976.us.5.1, align 4, !tbaa !30
  %i.bpt = lshr i32 %i.bps, 16
  %i.bpu = trunc nuw i32 %i.bpt to i16
  store i16 %i.bpu, ptr %i.bpr, align 2, !tbaa !28
  %i.bpv = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 28
  %gep1976.us.6.1 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us.6
  %i.bpw = load i32, ptr %gep1976.us.6.1, align 4, !tbaa !30
  %i.bpx = lshr i32 %i.bpw, 16
  %i.bpy = trunc nuw i32 %i.bpx to i16
  store i16 %i.bpy, ptr %i.bpv, align 2, !tbaa !28
  %i.bpz = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 30
  %gep1976.us.7.1 = getelementptr i8, ptr %gep.us1992.1, i64 %.reass1973.us.7
  %i.bqa = load i32, ptr %gep1976.us.7.1, align 4, !tbaa !30
  %i.bqb = lshr i32 %i.bqa, 16
  %i.bqc = trunc nuw i32 %i.bqb to i16
  store i16 %i.bqc, ptr %i.bpz, align 2, !tbaa !28
  %i.bqd = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 32
  %gep.us1992.2 = getelementptr i8, ptr %invariant.gep1981.us, i64 %.reass1980.us.2 ; 8 uses
  %gep1976.us.22568 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us
  %i.bqe = load i32, ptr %gep1976.us.22568, align 4, !tbaa !30
  %i.bqf = lshr i32 %i.bqe, 16
  %i.bqg = trunc nuw i32 %i.bqf to i16
  store i16 %i.bqg, ptr %i.bqd, align 2, !tbaa !28
  %i.bqh = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 34
  %gep1976.us.1.2 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us.1
  %i.bqi = load i32, ptr %gep1976.us.1.2, align 4, !tbaa !30
  %i.bqj = lshr i32 %i.bqi, 16
  %i.bqk = trunc nuw i32 %i.bqj to i16
  store i16 %i.bqk, ptr %i.bqh, align 2, !tbaa !28
  %i.bql = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 36
  %gep1976.us.2.2 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us.2
  %i.bqm = load i32, ptr %gep1976.us.2.2, align 4, !tbaa !30
  %i.bqn = lshr i32 %i.bqm, 16
  %i.bqo = trunc nuw i32 %i.bqn to i16
  store i16 %i.bqo, ptr %i.bql, align 2, !tbaa !28
  %i.bqp = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 38
  %gep1976.us.3.2 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us.3
  %i.bqq = load i32, ptr %gep1976.us.3.2, align 4, !tbaa !30
  %i.bqr = lshr i32 %i.bqq, 16
  %i.bqs = trunc nuw i32 %i.bqr to i16
  store i16 %i.bqs, ptr %i.bqp, align 2, !tbaa !28
  %i.bqt = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 40
  %gep1976.us.4.2 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us.4
  %i.bqu = load i32, ptr %gep1976.us.4.2, align 4, !tbaa !30
  %i.bqv = lshr i32 %i.bqu, 16
  %i.bqw = trunc nuw i32 %i.bqv to i16
  store i16 %i.bqw, ptr %i.bqt, align 2, !tbaa !28
  %i.bqx = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 42
  %gep1976.us.5.2 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us.5
  %i.bqy = load i32, ptr %gep1976.us.5.2, align 4, !tbaa !30
  %i.bqz = lshr i32 %i.bqy, 16
  %i.bra = trunc nuw i32 %i.bqz to i16
  store i16 %i.bra, ptr %i.bqx, align 2, !tbaa !28
  %i.brb = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 44
  %gep1976.us.6.2 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us.6
  %i.brc = load i32, ptr %gep1976.us.6.2, align 4, !tbaa !30
  %i.brd = lshr i32 %i.brc, 16
  %i.bre = trunc nuw i32 %i.brd to i16
  store i16 %i.bre, ptr %i.brb, align 2, !tbaa !28
  %i.brf = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 46
  %gep1976.us.7.2 = getelementptr i8, ptr %gep.us1992.2, i64 %.reass1973.us.7
  %i.brg = load i32, ptr %gep1976.us.7.2, align 4, !tbaa !30
  %i.brh = lshr i32 %i.brg, 16
  %i.bri = trunc nuw i32 %i.brh to i16
  store i16 %i.bri, ptr %i.brf, align 2, !tbaa !28
  %i.brj = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 48
  %gep.us1992.3 = getelementptr i8, ptr %invariant.gep1981.us, i64 %.reass1980.us.3 ; 8 uses
  %gep1976.us.32569 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us
  %i.brk = load i32, ptr %gep1976.us.32569, align 4, !tbaa !30
  %i.brl = lshr i32 %i.brk, 16
  %i.brm = trunc nuw i32 %i.brl to i16
  store i16 %i.brm, ptr %i.brj, align 2, !tbaa !28
  %i.brn = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 50
  %gep1976.us.1.3 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us.1
  %i.bro = load i32, ptr %gep1976.us.1.3, align 4, !tbaa !30
  %i.brp = lshr i32 %i.bro, 16
  %i.brq = trunc nuw i32 %i.brp to i16
  store i16 %i.brq, ptr %i.brn, align 2, !tbaa !28
  %i.brr = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 52
  %gep1976.us.2.3 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us.2
  %i.brs = load i32, ptr %gep1976.us.2.3, align 4, !tbaa !30
  %i.brt = lshr i32 %i.brs, 16
  %i.bru = trunc nuw i32 %i.brt to i16
  store i16 %i.bru, ptr %i.brr, align 2, !tbaa !28
  %i.brv = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 54
  %gep1976.us.3.3 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us.3
  %i.brw = load i32, ptr %gep1976.us.3.3, align 4, !tbaa !30
  %i.brx = lshr i32 %i.brw, 16
  %i.bry = trunc nuw i32 %i.brx to i16
  store i16 %i.bry, ptr %i.brv, align 2, !tbaa !28
  %i.brz = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 56
  %gep1976.us.4.3 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us.4
  %i.bsa = load i32, ptr %gep1976.us.4.3, align 4, !tbaa !30
  %i.bsb = lshr i32 %i.bsa, 16
  %i.bsc = trunc nuw i32 %i.bsb to i16
  store i16 %i.bsc, ptr %i.brz, align 2, !tbaa !28
  %i.bsd = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 58
  %gep1976.us.5.3 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us.5
  %i.bse = load i32, ptr %gep1976.us.5.3, align 4, !tbaa !30
  %i.bsf = lshr i32 %i.bse, 16
  %i.bsg = trunc nuw i32 %i.bsf to i16
  store i16 %i.bsg, ptr %i.bsd, align 2, !tbaa !28
  %i.bsh = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 60
  %gep1976.us.6.3 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us.6
  %i.bsi = load i32, ptr %gep1976.us.6.3, align 4, !tbaa !30
  %i.bsj = lshr i32 %i.bsi, 16
  %i.bsk = trunc nuw i32 %i.bsj to i16
  store i16 %i.bsk, ptr %i.bsh, align 2, !tbaa !28
  %i.bsl = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 62
  %gep1976.us.7.3 = getelementptr i8, ptr %gep.us1992.3, i64 %.reass1973.us.7
  %i.bsm = load i32, ptr %gep1976.us.7.3, align 4, !tbaa !30
  %i.bsn = lshr i32 %i.bsm, 16
  %i.bso = trunc nuw i32 %i.bsn to i16
  store i16 %i.bso, ptr %i.bsl, align 2, !tbaa !28
  %i.bsp = getelementptr inbounds nuw i8, ptr %.98161984.us, i64 64 ; 3 uses
  %indvars.iv.next2571 = add nuw nsw i64 %indvars.iv2570, 1 ; 2 uses
  %exitcond2574.not = icmp eq i64 %indvars.iv.next2571, %wide.trip.count2573
  br i1 %exitcond2574.not, label %._crit_edge1986.us, label %.preheader1787.us, !llvm.loop !361

._crit_edge1986.us:                               ; preds = %.preheader1787.us
  %indvars.iv.next2576 = add nuw nsw i64 %indvars.iv2575, 4 ; 3 uses
  %i.bsq = trunc i64 %indvars.iv.next2576 to i32
  %i.bsr = or i32 %i.bsq, 3
  %i.bss = icmp slt i32 %i.bsr, %2
  br i1 %i.bss, label %.preheader1792.us, label %.preheader1796.loopexit, !llvm.loop !362

.preheader1796.loopexit:                          ; preds = %._crit_edge1986.us
  %i.bst = trunc nuw i64 %indvars.iv.next2576 to i32
  br label %.preheader1796

.preheader1796:                                   ; preds = %.preheader1792.preheader, %.preheader1796.loopexit, %.preheader1797
  %.8815.lcssa = phi ptr [ %.4811.lcssa, %.preheader1797 ], [ %i.bsp, %.preheader1796.loopexit ], [ %.4811.lcssa, %.preheader1792.preheader ] ; 3 uses
  %.2804.lcssa = phi i32 [ %.1803.lcssa, %.preheader1797 ], [ %i.bst, %.preheader1796.loopexit ], [ %i.bnf, %.preheader1792.preheader ] ; 5 uses
  %i.bsu = or disjoint i32 %.2804.lcssa, 1
  %i.bsv = icmp slt i32 %i.bsu, %2
  br i1 %i.bsv, label %.preheader1791.lr.ph, label %.preheader1795

.preheader1791.lr.ph:                             ; preds = %.preheader1796
  %i.bsw = load i32, ptr %i.kw, align 4
  %i.bsx = load ptr, ptr %7, align 8
  %i.bsy = load i64, ptr %i.ky, align 8           ; 2 uses
  %i.bsz = sext i32 %i.bsw to i64
  %factor.op.mul2002 = mul i64 %i.bsy, %i.bsz     ; 2 uses
  br i1 %i.kv, label %.preheader1791.us.preheader, label %.preheader1791.preheader

.preheader1791.preheader:                         ; preds = %.preheader1791.lr.ph
  %i.bta = add nsw i32 %.2804.lcssa, 2
  %i.btb = sub i32 %i.ld, %.2804.lcssa
  %i.btc = and i32 %i.btb, -2
  %i.btd = add i32 %i.bta, %i.btc
  br label %.preheader1795

.preheader1791.us.preheader:                      ; preds = %.preheader1791.lr.ph
  %i.bte = load i64, ptr %i.kx, align 8
  %factor.op.mul1995 = mul i64 %i.bte, %i.bsy     ; 2 uses
  %i.btf = zext i32 %.2804.lcssa to i64
  %.reass1996.us = mul i64 %factor.op.mul1995, %indvars.iv2606
  %i.btg = insertelement <8 x i64> poison, i64 %indvars.iv2606, i64 0
  %i.bth = shufflevector <8 x i64> %i.btg, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bti = or disjoint <8 x i64> %i.bth, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.btj = insertelement <8 x i64> poison, i64 %factor.op.mul1995, i64 0
  %i.btk = shufflevector <8 x i64> %i.btj, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.btl = mul <8 x i64> %i.btk, %i.bti           ; 5 uses
  %i.btm = extractelement <8 x i64> %i.btl, i64 1
  %i.btn = extractelement <8 x i64> %i.btl, i64 2
  %i.bto = extractelement <8 x i64> %i.btl, i64 3
  %i.btp = shufflevector <8 x i64> %i.btl, <8 x i64> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  br label %.preheader1791.us

.preheader1791.us:                                ; preds = %.preheader1791.us.preheader, %._crit_edge2009.us
  %indvars.iv2591 = phi i64 [ %i.btf, %.preheader1791.us.preheader ], [ %indvars.iv.next2592, %._crit_edge2009.us ] ; 3 uses
  %.128192011.us = phi ptr [ %.8815.lcssa, %.preheader1791.us.preheader ], [ %i.buk, %._crit_edge2009.us ]
  %.reass2003.us = mul i64 %factor.op.mul2002, %indvars.iv2591
  %i.btq = or disjoint i64 %indvars.iv2591, 1
  %.reass2003.us.1 = mul i64 %factor.op.mul2002, %i.btq
  br label %.preheader1786.us

.preheader1786.us:                                ; preds = %.preheader1791.us, %.preheader1786.us
  %indvars.iv2586 = phi i64 [ 0, %.preheader1791.us ], [ %indvars.iv.next2587, %.preheader1786.us ] ; 2 uses
  %.138202007.us = phi ptr [ %.128192011.us, %.preheader1791.us ], [ %i.buk, %.preheader1786.us ] ; 3 uses
  %invariant.gep2004.us = getelementptr [4 x i8], ptr %i.bsx, i64 %indvars.iv2586 ; 2 uses
  %gep.us2015 = getelementptr i8, ptr %invariant.gep2004.us, i64 %.reass2003.us
  %i.btr = getelementptr i8, ptr %gep.us2015, <8 x i64> %i.btl
  %i.bts = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %i.btr, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !30
  %i.btt = lshr <8 x i32> %i.bts, splat (i32 16)
  %i.btu = trunc nuw <8 x i32> %i.btt to <8 x i16>
  store <8 x i16> %i.btu, ptr %.138202007.us, align 2, !tbaa !28
  %i.btv = getelementptr inbounds nuw i8, ptr %.138202007.us, i64 16
  %gep.us2015.1 = getelementptr i8, ptr %invariant.gep2004.us, i64 %.reass2003.us.1 ; 5 uses
  %gep1999.us.12585 = getelementptr i8, ptr %gep.us2015.1, i64 %.reass1996.us
  %i.btw = load i32, ptr %gep1999.us.12585, align 4, !tbaa !30
  %gep1999.us.1.1 = getelementptr i8, ptr %gep.us2015.1, i64 %i.btm
  %i.btx = load i32, ptr %gep1999.us.1.1, align 4, !tbaa !30
  %gep1999.us.2.1 = getelementptr i8, ptr %gep.us2015.1, i64 %i.btn
  %i.bty = load i32, ptr %gep1999.us.2.1, align 4, !tbaa !30
  %gep1999.us.3.1 = getelementptr i8, ptr %gep.us2015.1, i64 %i.bto
  %i.btz = load i32, ptr %gep1999.us.3.1, align 4, !tbaa !30
  %i.bua = getelementptr i8, ptr %gep.us2015.1, <4 x i64> %i.btp
  %i.bub = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 4 %i.bua, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !30
  %i.buc = insertelement <8 x i32> poison, i32 %i.btw, i64 0
  %i.bud = insertelement <8 x i32> %i.buc, i32 %i.btx, i64 1
  %i.bue = insertelement <8 x i32> %i.bud, i32 %i.bty, i64 2
  %i.buf = insertelement <8 x i32> %i.bue, i32 %i.btz, i64 3
  %i.bug = shufflevector <4 x i32> %i.bub, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.buh = shufflevector <8 x i32> %i.buf, <8 x i32> %i.bug, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.bui = lshr <8 x i32> %i.buh, splat (i32 16)
  %i.buj = trunc nuw <8 x i32> %i.bui to <8 x i16>
  store <8 x i16> %i.buj, ptr %i.btv, align 2, !tbaa !28
  %i.buk = getelementptr inbounds nuw i8, ptr %.138202007.us, i64 32 ; 3 uses
  %indvars.iv.next2587 = add nuw nsw i64 %indvars.iv2586, 1 ; 2 uses
  %exitcond2590.not = icmp eq i64 %indvars.iv.next2587, %wide.trip.count2589
  br i1 %exitcond2590.not, label %._crit_edge2009.us, label %.preheader1786.us, !llvm.loop !363

._crit_edge2009.us:                               ; preds = %.preheader1786.us
  %indvars.iv.next2592 = add nuw nsw i64 %indvars.iv2591, 2 ; 3 uses
  %i.bul = trunc i64 %indvars.iv.next2592 to i32
  %i.bum = or i32 %i.bul, 1
  %i.bun = icmp slt i32 %i.bum, %2
  br i1 %i.bun, label %.preheader1791.us, label %.preheader1795.loopexit, !llvm.loop !364

.preheader1795.loopexit:                          ; preds = %._crit_edge2009.us
  %i.buo = trunc nuw i64 %indvars.iv.next2592 to i32
  br label %.preheader1795

.preheader1795:                                   ; preds = %.preheader1791.preheader, %.preheader1795.loopexit, %.preheader1796
  %.12819.lcssa = phi ptr [ %.8815.lcssa, %.preheader1796 ], [ %i.buk, %.preheader1795.loopexit ], [ %.8815.lcssa, %.preheader1791.preheader ]
  %.3805.lcssa = phi i32 [ %.2804.lcssa, %.preheader1796 ], [ %i.buo, %.preheader1795.loopexit ], [ %i.btd, %.preheader1791.preheader ] ; 2 uses
  %i.bup = icmp slt i32 %.3805.lcssa, %2
  br i1 %i.bup, label %.preheader1790.lr.ph, label %._crit_edge2031.split

.preheader1790.lr.ph:                             ; preds = %.preheader1795
  %i.buq = load i32, ptr %i.kw, align 4
  %i.bur = load ptr, ptr %7, align 8
  %i.bus = load i64, ptr %i.ky, align 8           ; 2 uses
  %i.but = sext i32 %i.buq to i64
  %factor.op.mul2032 = mul i64 %i.bus, %i.but
  br i1 %i.kv, label %.preheader1790.preheader, label %._crit_edge2031.split

.preheader1790.preheader:                         ; preds = %.preheader1790.lr.ph
  %i.buu = load i64, ptr %i.kx, align 8
  %factor.op.mul2018 = mul i64 %i.buu, %i.bus     ; 2 uses
  %i.buv = zext i32 %.3805.lcssa to i64
  %.reass2019 = mul i64 %factor.op.mul2018, %indvars.iv2606 ; 2 uses
  %i.buw = insertelement <8 x i64> poison, i64 %indvars.iv2606, i64 0
  %i.bux = shufflevector <8 x i64> %i.buw, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.buy = or disjoint <8 x i64> %i.bux, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.buz = insertelement <8 x i64> poison, i64 %factor.op.mul2018, i64 0
  %i.bva = shufflevector <8 x i64> %i.buz, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.bvb = mul <8 x i64> %i.bva, %i.buy           ; 15 uses
  %i.bvc = extractelement <8 x i64> %i.bvb, i64 1
  %i.bvd = extractelement <8 x i64> %i.bvb, i64 2
  %i.bve = extractelement <8 x i64> %i.bvb, i64 3
  %i.bvf = extractelement <8 x i64> %i.bvb, i64 4
  %i.bvg = extractelement <8 x i64> %i.bvb, i64 5
  %i.bvh = extractelement <8 x i64> %i.bvb, i64 6
  %i.bvi = extractelement <8 x i64> %i.bvb, i64 7
  %i.bvj = extractelement <8 x i64> %i.bvb, i64 1
  %i.bvk = extractelement <8 x i64> %i.bvb, i64 2
  %i.bvl = extractelement <8 x i64> %i.bvb, i64 3
  %i.bvm = extractelement <8 x i64> %i.bvb, i64 4
  %i.bvn = extractelement <8 x i64> %i.bvb, i64 5
  %i.bvo = extractelement <8 x i64> %i.bvb, i64 6
  %i.bvp = extractelement <8 x i64> %i.bvb, i64 7
  br label %iter.check2966

iter.check2966:                                   ; preds = %.preheader1790.preheader, %._crit_edge2027
  %indvars.iv2603 = phi i64 [ %i.buv, %.preheader1790.preheader ], [ %indvars.iv.next2604, %._crit_edge2027 ] ; 2 uses
  %.168232029 = phi ptr [ %.12819.lcssa, %.preheader1790.preheader ], [ %.lcssa2924, %._crit_edge2027 ] ; 5 uses
  %.reass2033 = mul i64 %factor.op.mul2032, %indvars.iv2603
  %invariant.gep2020 = getelementptr i8, ptr %i.bur, i64 %.reass2033 ; 3 uses
  br i1 %min.iters.check2946, label %.preheader1785.preheader, label %vector.main.loop.iter.check2947

vector.main.loop.iter.check2947:                  ; preds = %iter.check2966
  br i1 %min.iters.check2948, label %vec.epilog.ph2970, label %vector.ph2949

vector.ph2949:                                    ; preds = %vector.main.loop.iter.check2947
  %i.bvq = getelementptr i8, ptr %.168232029, i64 %i.lh ; 2 uses
  br label %vector.body2951

vector.body2951:                                  ; preds = %vector.body2951, %vector.ph2949
  %index2952 = phi i64 [ 0, %vector.ph2949 ], [ %index.next2961, %vector.body2951 ] ; 3 uses
  %i.bvr = shl i64 %index2952, 4
  %next.gep = getelementptr i8, ptr %.168232029, i64 %i.bvr
  %i.bvs = getelementptr [4 x i8], ptr %invariant.gep2020, i64 %index2952 ; 8 uses
  %i.bvt = getelementptr i8, ptr %i.bvs, i64 %.reass2019
  %wide.load2953 = load <16 x i32>, ptr %i.bvt, align 4, !tbaa !30
  %i.bvu = getelementptr i8, ptr %i.bvs, i64 %i.bvc
  %wide.load2954 = load <16 x i32>, ptr %i.bvu, align 4, !tbaa !30
  %i.bvv = getelementptr i8, ptr %i.bvs, i64 %i.bvd
  %wide.load2955 = load <16 x i32>, ptr %i.bvv, align 4, !tbaa !30
  %i.bvw = getelementptr i8, ptr %i.bvs, i64 %i.bve
  %wide.load2956 = load <16 x i32>, ptr %i.bvw, align 4, !tbaa !30
  %i.bvx = getelementptr i8, ptr %i.bvs, i64 %i.bvf
  %wide.load2957 = load <16 x i32>, ptr %i.bvx, align 4, !tbaa !30
  %i.bvy = getelementptr i8, ptr %i.bvs, i64 %i.bvg
  %wide.load2958 = load <16 x i32>, ptr %i.bvy, align 4, !tbaa !30
  %i.bvz = getelementptr i8, ptr %i.bvs, i64 %i.bvh
  %wide.load2959 = load <16 x i32>, ptr %i.bvz, align 4, !tbaa !30
  %i.bwa = getelementptr i8, ptr %i.bvs, i64 %i.bvi
  %wide.load2960 = load <16 x i32>, ptr %i.bwa, align 4, !tbaa !30
  %i.bwb = shufflevector <16 x i32> %wide.load2953, <16 x i32> %wide.load2954, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bwc = shufflevector <16 x i32> %wide.load2955, <16 x i32> %wide.load2956, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bwd = shufflevector <32 x i32> %i.bwb, <32 x i32> %i.bwc, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bwe = lshr <64 x i32> %i.bwd, splat (i32 16)
  %i.bwf = trunc nuw <64 x i32> %i.bwe to <64 x i16>
  %i.bwg = shufflevector <16 x i32> %wide.load2957, <16 x i32> %wide.load2958, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bwh = shufflevector <16 x i32> %wide.load2959, <16 x i32> %wide.load2960, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bwi = shufflevector <32 x i32> %i.bwg, <32 x i32> %i.bwh, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.bwj = lshr <64 x i32> %i.bwi, splat (i32 16)
  %i.bwk = trunc nuw <64 x i32> %i.bwj to <64 x i16>
  %interleaved.vec = shufflevector <64 x i16> %i.bwf, <64 x i16> %i.bwk, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !28
  %index.next2961 = add nuw i64 %index2952, 16    ; 2 uses
  %i.bwl = icmp eq i64 %index.next2961, %n.vec2950
  br i1 %i.bwl, label %middle.block2962, label %vector.body2951, !llvm.loop !365

middle.block2962:                                 ; preds = %vector.body2951
  br i1 %cmp.n2963, label %._crit_edge2027, label %vec.epilog.iter.check2968

vec.epilog.iter.check2968:                        ; preds = %middle.block2962
  br i1 %min.epilog.iters.check2969, label %.preheader1785.preheader, label %vec.epilog.ph2970, !prof !437

vec.epilog.ph2970:                                ; preds = %vector.main.loop.iter.check2947, %vec.epilog.iter.check2968
  %vec.epilog.resume.val2964 = phi i64 [ %n.vec2950, %vec.epilog.iter.check2968 ], [ 0, %vector.main.loop.iter.check2947 ]
  %i.bwm = getelementptr i8, ptr %.168232029, i64 %i.li ; 2 uses
  br label %vec.epilog.vector.body2972

vec.epilog.vector.body2972:                       ; preds = %vec.epilog.vector.body2972, %vec.epilog.ph2970
  %index2973 = phi i64 [ %vec.epilog.resume.val2964, %vec.epilog.ph2970 ], [ %index.next2984, %vec.epilog.vector.body2972 ] ; 3 uses
  %i.bwn = shl i64 %index2973, 4
  %next.gep2974 = getelementptr i8, ptr %.168232029, i64 %i.bwn
  %i.bwo = getelementptr [4 x i8], ptr %invariant.gep2020, i64 %index2973 ; 8 uses
  %i.bwp = getelementptr i8, ptr %i.bwo, i64 %.reass2019
  %wide.load2975 = load <4 x i32>, ptr %i.bwp, align 4, !tbaa !30
  %i.bwq = getelementptr i8, ptr %i.bwo, i64 %i.bvj
  %wide.load2976 = load <4 x i32>, ptr %i.bwq, align 4, !tbaa !30
  %i.bwr = getelementptr i8, ptr %i.bwo, i64 %i.bvk
  %wide.load2977 = load <4 x i32>, ptr %i.bwr, align 4, !tbaa !30
  %i.bws = getelementptr i8, ptr %i.bwo, i64 %i.bvl
  %wide.load2978 = load <4 x i32>, ptr %i.bws, align 4, !tbaa !30
  %i.bwt = getelementptr i8, ptr %i.bwo, i64 %i.bvm
  %wide.load2979 = load <4 x i32>, ptr %i.bwt, align 4, !tbaa !30
  %i.bwu = getelementptr i8, ptr %i.bwo, i64 %i.bvn
  %wide.load2980 = load <4 x i32>, ptr %i.bwu, align 4, !tbaa !30
  %i.bwv = getelementptr i8, ptr %i.bwo, i64 %i.bvo
  %wide.load2981 = load <4 x i32>, ptr %i.bwv, align 4, !tbaa !30
  %i.bww = getelementptr i8, ptr %i.bwo, i64 %i.bvp
end_hunk_11
begin_hunk_12_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
.preheader1785.preheader:                         ; preds = %iter.check2966, %vec.epilog.iter.check2968, %vec.epilog.middle.block2985
  %indvars.iv2598.ph = phi i64 [ 0, %iter.check2966 ], [ %n.vec2950, %vec.epilog.iter.check2968 ], [ %n.vec2971, %vec.epilog.middle.block2985 ]
  %.178242025.ph = phi ptr [ %.168232029, %iter.check2966 ], [ %i.bvq, %vec.epilog.iter.check2968 ], [ %i.bwm, %vec.epilog.middle.block2985 ]
  %invariant.gep3452 = getelementptr i8, ptr %invariant.gep2020, <8 x i64> %i.bvb
  br label %.preheader1785

.preheader1785:                                   ; preds = %.preheader1785.preheader, %.preheader1785
  %indvars.iv2598 = phi i64 [ %indvars.iv.next2599, %.preheader1785 ], [ %indvars.iv2598.ph, %.preheader1785.preheader ] ; 2 uses
  %.178242025 = phi ptr [ %i.bxj, %.preheader1785 ], [ %.178242025.ph, %.preheader1785.preheader ] ; 2 uses
  %gep3453 = getelementptr [4 x i8], <8 x ptr> %invariant.gep3452, i64 %indvars.iv2598
  %i.bxg = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %gep3453, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !30
  %i.bxh = lshr <8 x i32> %i.bxg, splat (i32 16)
  %i.bxi = trunc nuw <8 x i32> %i.bxh to <8 x i16>
  store <8 x i16> %i.bxi, ptr %.178242025, align 2, !tbaa !28
  %i.bxj = getelementptr inbounds nuw i8, ptr %.178242025, i64 16 ; 2 uses
  %indvars.iv.next2599 = add nuw nsw i64 %indvars.iv2598, 1 ; 2 uses
  %exitcond2602.not = icmp eq i64 %indvars.iv.next2599, %wide.trip.count2601
  br i1 %exitcond2602.not, label %._crit_edge2027, label %.preheader1785, !llvm.loop !367

._crit_edge2027:                                  ; preds = %.preheader1785, %vec.epilog.middle.block2985, %middle.block2962
  %.lcssa2924 = phi ptr [ %i.bwm, %vec.epilog.middle.block2985 ], [ %i.bvq, %middle.block2962 ], [ %i.bxj, %.preheader1785 ]
  %indvars.iv.next2604 = add nuw nsw i64 %indvars.iv2603, 1 ; 2 uses
  %i.bxk = trunc nuw i64 %indvars.iv.next2604 to i32
  %i.bxl = icmp sgt i32 %2, %i.bxk
  br i1 %i.bxl, label %iter.check2966, label %._crit_edge2031.split, !llvm.loop !368

._crit_edge2031.split:                            ; preds = %._crit_edge2027, %.preheader1790.lr.ph, %.preheader1795
  %indvars.iv.next2607 = add nuw nsw i64 %indvars.iv2606, 8 ; 3 uses
  %i.bxm = icmp slt i64 %indvars.iv.next2607, %invariant.op2895
  br i1 %i.bxm, label %.noexc970, label %.preheader1780.loopexit, !llvm.loop !369

.preheader1761.loopexit:                          ; preds = %._crit_edge2145.split
  %i.bxn = trunc nuw i64 %indvars.iv.next2692 to i32
  br label %.preheader1761

.preheader1761:                                   ; preds = %.preheader1761.loopexit, %.preheader1780
  %.2866.lcssa = phi i32 [ %.1865.lcssa, %.preheader1780 ], [ %i.bxn, %.preheader1761.loopexit ] ; 3 uses
  %i.bxo = or disjoint i32 %.2866.lcssa, 1
  %i.bxp = icmp slt i32 %i.bxo, %3
  br i1 %i.bxp, label %.noexc946.lr.ph, label %.preheader1742

.noexc946.lr.ph:                                  ; preds = %.preheader1761
  %i.bxq = load ptr, ptr %1, align 8, !tbaa !19, !noalias !438
  %i.bxr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bxs = load i64, ptr %i.bxr, align 8, !tbaa !17, !noalias !438
  %i.bxt = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bxu = load i64, ptr %i.bxt, align 8, !tbaa !24, !noalias !438
  %factor.op.mul2262 = mul i64 %i.bxs, %i.bxu
  %i.bxv = icmp sgt i32 %2, 15
  %i.bxw = icmp sgt i32 %i.a, 0                   ; 5 uses
  %i.bxx = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 5 uses
  %i.bxy = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 5 uses
  %i.bxz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.bya = and i32 %2, -16
  %i.byb = sext i32 %2 to i64
  %i.byc = add i32 %2, -8
  %i.byd = add i32 %2, -4
  %i.bye = add i32 %2, -2
  %i.byf = zext i32 %.2866.lcssa to i64
  %wide.trip.count2705 = zext i32 %i.a to i64     ; 17 uses
  %invariant.op2897 = add nsw i64 %i.byb, -15
  %wide.trip.count2721 = zext nneg i32 %i.a to i64
  %wide.trip.count2737 = zext nneg i32 %i.a to i64
  %wide.trip.count2752 = zext nneg i32 %i.a to i64
  %wide.trip.count2763 = zext nneg i32 %i.a to i64
  %xtraiter3405 = and i64 %wide.trip.count2705, 1
  %i.byg = icmp eq i32 %i.a, 1
  %unroll_iter3410 = and i64 %wide.trip.count2705, 2147483646
  %lcmp.mod3407.not = icmp eq i64 %xtraiter3405, 0
  %lcmp.mod3409 = trunc i32 %i.a to i1
  %min.iters.check3179 = icmp ult i32 %i.a, 4
  %min.iters.check3181 = icmp ult i32 %i.a, 16
  %i.byh = and i64 %wide.trip.count2705, 12
  %n.vec3183 = and i64 %wide.trip.count2705, 2147483632 ; 5 uses
  %i.byi = shl nuw nsw i64 %n.vec3183, 4
  %cmp.n3198 = icmp eq i64 %n.vec3183, %wide.trip.count2705
  %min.epilog.iters.check3204 = icmp eq i64 %i.byh, 0
  %n.vec3206 = and i64 %wide.trip.count2705, 2147483644 ; 4 uses
  %i.byj = shl nuw nsw i64 %n.vec3206, 4
  %cmp.n3221 = icmp eq i64 %n.vec3206, %wide.trip.count2705
  %min.iters.check3142 = icmp ult i32 %i.a, 4
  %min.iters.check3144 = icmp ult i32 %i.a, 16
  %i.byk = and i64 %wide.trip.count2705, 12
  %n.vec3146 = and i64 %wide.trip.count2705, 2147483632 ; 5 uses
  %i.byl = shl nuw nsw i64 %n.vec3146, 3
  %cmp.n3157 = icmp eq i64 %n.vec3146, %wide.trip.count2705
  %min.epilog.iters.check3163 = icmp eq i64 %i.byk, 0
  %n.vec3165 = and i64 %wide.trip.count2705, 2147483644 ; 4 uses
  %i.bym = shl nuw nsw i64 %n.vec3165, 3
  %cmp.n3176 = icmp eq i64 %n.vec3165, %wide.trip.count2705
  %min.iters.check3109 = icmp ult i32 %i.a, 4
  %min.iters.check3111 = icmp ult i32 %i.a, 16
  %i.byn = and i64 %wide.trip.count2705, 12
  %n.vec3113 = and i64 %wide.trip.count2705, 2147483632 ; 5 uses
  %i.byo = shl nuw nsw i64 %n.vec3113, 2
  %cmp.n3122 = icmp eq i64 %n.vec3113, %wide.trip.count2705
  %min.epilog.iters.check3128 = icmp eq i64 %i.byn, 0
  %n.vec3130 = and i64 %wide.trip.count2705, 2147483644 ; 4 uses
  %i.byp = shl nuw nsw i64 %n.vec3130, 2
  %cmp.n3139 = icmp eq i64 %n.vec3130, %wide.trip.count2705
  br label %.noexc946

.noexc958:                                        ; preds = %.noexc958.lr.ph, %._crit_edge2145.split
  %indvars.iv2691 = phi i64 [ %i.bag, %.noexc958.lr.ph ], [ %indvars.iv.next2692, %._crit_edge2145.split ] ; 17 uses
  %i.byq = trunc nuw nsw i64 %indvars.iv2691 to i32 ; 2 uses
  %i.byr = lshr i32 %i.byq, 4
  %i.bys = lshr i32 %i.byq, 3
  %i.byt = and i32 %i.bys, 1
  %i.byu = add nuw nsw i32 %i.byt, %i.byr
  %i.byv = trunc i64 %indvars.iv2691 to i32
  %i.byw = lshr i32 %i.byv, 2
  %i.byx = and i32 %i.byw, 1
  %i.byy = add nuw nsw i32 %i.byu, %i.byx
  %i.byz = zext nneg i32 %i.byy to i64
  %.reass2153 = mul i64 %factor.op.mul2152, %i.byz
  %i.bza = getelementptr inbounds nuw i8, ptr %i.azr, i64 %.reass2153 ; 3 uses
  br i1 %i.azw, label %.preheader1775.lr.ph, label %.preheader1779

.preheader1775.lr.ph:                             ; preds = %.noexc958
  %i.bzb = load i32, ptr %i.azy, align 4
  %i.bzc = load ptr, ptr %7, align 8
  %i.bzd = load i64, ptr %i.baa, align 8          ; 2 uses
  %i.bze = sext i32 %i.bzb to i64
  %factor.op.mul2047 = mul i64 %i.bzd, %i.bze
  br i1 %i.azx, label %.preheader1775.us.preheader, label %.preheader1779

.preheader1775.us.preheader:                      ; preds = %.preheader1775.lr.ph
  %i.bzf = load i64, ptr %i.azz, align 8
  %factor.op.mul2040 = mul i64 %i.bzf, %i.bzd     ; 4 uses
  %.reass2041.us = mul i64 %factor.op.mul2040, %indvars.iv2691
  %i.bzg = or disjoint i64 %indvars.iv2691, 1
  %.reass2041.us.1 = mul i64 %factor.op.mul2040, %i.bzg
  %i.bzh = or disjoint i64 %indvars.iv2691, 2
  %.reass2041.us.2 = mul i64 %factor.op.mul2040, %i.bzh
  %i.bzi = or disjoint i64 %indvars.iv2691, 3
  %.reass2041.us.3 = mul i64 %factor.op.mul2040, %i.bzi
  %broadcast.splatinsert3095 = insertelement <16 x i64> poison, i64 %factor.op.mul2047, i64 0
  %broadcast.splat3096 = shufflevector <16 x i64> %broadcast.splatinsert3095, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader1775.us

.preheader1775.us:                                ; preds = %.preheader1775.us.preheader, %._crit_edge2054.us
  %indvars.iv2622 = phi i64 [ 0, %.preheader1775.us.preheader ], [ %indvars.iv.next2623, %._crit_edge2054.us ] ; 2 uses
  %.07692056.us = phi ptr [ %i.bza, %.preheader1775.us.preheader ], [ %i.bzl, %._crit_edge2054.us ]
  %broadcast.splatinsert3093 = insertelement <16 x i64> poison, i64 %indvars.iv2622, i64 0
  %broadcast.splat3094 = shufflevector <16 x i64> %broadcast.splatinsert3093, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.bzj = or disjoint <16 x i64> %broadcast.splat3094, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.bzk = mul <16 x i64> %broadcast.splat3096, %i.bzj
  %invariant.gep3454 = getelementptr i8, ptr %i.bzc, <16 x i64> %i.bzk
  br label %.preheader1770.us

.preheader1770.us:                                ; preds = %.preheader1775.us, %.preheader1770.us
  %indvars.iv2617 = phi i64 [ 0, %.preheader1775.us ], [ %indvars.iv.next2618, %.preheader1770.us ] ; 2 uses
  %.17702052.us = phi ptr [ %.07692056.us, %.preheader1775.us ], [ %i.bzl, %.preheader1770.us ] ; 2 uses
  %i.bzl = getelementptr i8, ptr %.17702052.us, i64 128 ; 3 uses
  %gep3455 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3454, i64 %indvars.iv2617 ; 4 uses
  %wide.gep3099 = getelementptr i8, <16 x ptr> %gep3455, i64 %.reass2041.us
  %wide.masked.gather3100 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3099, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep3101 = getelementptr i8, <16 x ptr> %gep3455, i64 %.reass2041.us.1
  %wide.masked.gather3102 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3101, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep3103 = getelementptr i8, <16 x ptr> %gep3455, i64 %.reass2041.us.2
  %wide.masked.gather3104 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3103, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %wide.gep3105 = getelementptr i8, <16 x ptr> %gep3455, i64 %.reass2041.us.3
  %wide.masked.gather3106 = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %wide.gep3105, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.bzm = shufflevector <16 x i32> %wide.masked.gather3100, <16 x i32> %wide.masked.gather3102, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bzn = lshr <32 x i32> %i.bzm, splat (i32 16)
  %i.bzo = trunc nuw <32 x i32> %i.bzn to <32 x i16>
  %i.bzp = shufflevector <16 x i32> %wide.masked.gather3104, <16 x i32> %wide.masked.gather3106, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.bzq = lshr <32 x i32> %i.bzp, splat (i32 16)
  %i.bzr = trunc nuw <32 x i32> %i.bzq to <32 x i16>
  %interleaved.vec3107 = shufflevector <32 x i16> %i.bzo, <32 x i16> %i.bzr, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec3107, ptr %.17702052.us, align 2, !tbaa !28
  %indvars.iv.next2618 = add nuw nsw i64 %indvars.iv2617, 1 ; 2 uses
  %exitcond2621.not = icmp eq i64 %indvars.iv.next2618, %wide.trip.count2620
  br i1 %exitcond2621.not, label %._crit_edge2054.us, label %.preheader1770.us, !llvm.loop !372

._crit_edge2054.us:                               ; preds = %.preheader1770.us
  %indvars.iv.next2623 = add nuw nsw i64 %indvars.iv2622, 16 ; 3 uses
  %i.bzs = icmp slt i64 %indvars.iv.next2623, %invariant.op2896
  br i1 %i.bzs, label %.preheader1775.us, label %.preheader1779.loopexit, !llvm.loop !373

.preheader1779.loopexit:                          ; preds = %._crit_edge2054.us
  %i.bzt = trunc nuw nsw i64 %indvars.iv.next2623 to i32
  br label %.preheader1779

.preheader1779:                                   ; preds = %.preheader1775.lr.ph, %.preheader1779.loopexit, %.noexc958
  %.0769.lcssa = phi ptr [ %i.bza, %.noexc958 ], [ %i.bzl, %.preheader1779.loopexit ], [ %i.bza, %.preheader1775.lr.ph ] ; 3 uses
  %.0764.lcssa = phi i32 [ 0, %.noexc958 ], [ %i.bzt, %.preheader1779.loopexit ], [ %i.bab, %.preheader1775.lr.ph ] ; 5 uses
  %i.bzu = or disjoint i32 %.0764.lcssa, 7
  %i.bzv = icmp slt i32 %i.bzu, %2
  br i1 %i.bzv, label %.preheader1774.lr.ph, label %.preheader1778

.preheader1774.lr.ph:                             ; preds = %.preheader1779
  %i.bzw = load i32, ptr %i.azy, align 4
  %i.bzx = load ptr, ptr %7, align 8
  %i.bzy = load i64, ptr %i.baa, align 8          ; 2 uses
  %i.bzz = sext i32 %i.bzw to i64
  %factor.op.mul2070 = mul i64 %i.bzy, %i.bzz     ; 8 uses
  br i1 %i.azx, label %.preheader1774.us.preheader, label %.preheader1774.preheader

.preheader1774.preheader:                         ; preds = %.preheader1774.lr.ph
  %i.caa = add nsw i32 %.0764.lcssa, 8
  %i.cab = sub i32 %i.bad, %.0764.lcssa
  %i.cac = and i32 %i.cab, -8
  %i.cad = add i32 %i.caa, %i.cac
  br label %.preheader1778

.preheader1774.us.preheader:                      ; preds = %.preheader1774.lr.ph
  %i.cae = load i64, ptr %i.azz, align 8
  %factor.op.mul2063 = mul i64 %i.cae, %i.bzy     ; 4 uses
  %i.caf = zext i32 %.0764.lcssa to i64
  %.reass2064.us = mul i64 %factor.op.mul2063, %indvars.iv2691 ; 8 uses
  %i.cag = or disjoint i64 %indvars.iv2691, 1
  %.reass2064.us.1 = mul i64 %factor.op.mul2063, %i.cag ; 8 uses
  %i.cah = or disjoint i64 %indvars.iv2691, 2
  %.reass2064.us.2 = mul i64 %factor.op.mul2063, %i.cah ; 8 uses
  %i.cai = or disjoint i64 %indvars.iv2691, 3
  %.reass2064.us.3 = mul i64 %factor.op.mul2063, %i.cai ; 8 uses
  br label %.preheader1774.us

.preheader1774.us:                                ; preds = %.preheader1774.us.preheader, %._crit_edge2077.us
  %indvars.iv2641 = phi i64 [ %i.caf, %.preheader1774.us.preheader ], [ %indvars.iv.next2642, %._crit_edge2077.us ] ; 9 uses
  %.47732079.us = phi ptr [ %.0769.lcssa, %.preheader1774.us.preheader ], [ %i.cfn, %._crit_edge2077.us ]
  %.reass2071.us = mul i64 %factor.op.mul2070, %indvars.iv2641
  %i.caj = or disjoint i64 %indvars.iv2641, 1
  %.reass2071.us.1 = mul i64 %factor.op.mul2070, %i.caj
  %i.cak = or disjoint i64 %indvars.iv2641, 2
  %.reass2071.us.2 = mul i64 %factor.op.mul2070, %i.cak
  %i.cal = or disjoint i64 %indvars.iv2641, 3
  %.reass2071.us.3 = mul i64 %factor.op.mul2070, %i.cal
  %i.cam = or disjoint i64 %indvars.iv2641, 4
  %.reass2071.us.4 = mul i64 %factor.op.mul2070, %i.cam
  %i.can = or disjoint i64 %indvars.iv2641, 5
  %.reass2071.us.5 = mul i64 %factor.op.mul2070, %i.can
  %i.cao = or disjoint i64 %indvars.iv2641, 6
  %.reass2071.us.6 = mul i64 %factor.op.mul2070, %i.cao
  %i.cap = or disjoint i64 %indvars.iv2641, 7
  %.reass2071.us.7 = mul i64 %factor.op.mul2070, %i.cap
  br label %.preheader1769.us

.preheader1769.us:                                ; preds = %.preheader1774.us, %.preheader1769.us
  %indvars.iv2636 = phi i64 [ 0, %.preheader1774.us ], [ %indvars.iv.next2637, %.preheader1769.us ] ; 2 uses
  %.57742075.us = phi ptr [ %.47732079.us, %.preheader1774.us ], [ %i.cfn, %.preheader1769.us ] ; 33 uses
  %invariant.gep2072.us = getelementptr [4 x i8], ptr %i.bzx, i64 %indvars.iv2636 ; 8 uses
  %gep.us2083 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us ; 4 uses
  %gep2067.us = getelementptr i8, ptr %gep.us2083, i64 %.reass2064.us
  %i.caq = load i32, ptr %gep2067.us, align 4, !tbaa !30
  %i.car = lshr i32 %i.caq, 16
  %i.cas = trunc nuw i32 %i.car to i16
  store i16 %i.cas, ptr %.57742075.us, align 2, !tbaa !28
  %i.cat = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 2
  %gep2067.us.1 = getelementptr i8, ptr %gep.us2083, i64 %.reass2064.us.1
  %i.cau = load i32, ptr %gep2067.us.1, align 4, !tbaa !30
  %i.cav = lshr i32 %i.cau, 16
  %i.caw = trunc nuw i32 %i.cav to i16
  store i16 %i.caw, ptr %i.cat, align 2, !tbaa !28
  %i.cax = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 4
  %gep2067.us.2 = getelementptr i8, ptr %gep.us2083, i64 %.reass2064.us.2
  %i.cay = load i32, ptr %gep2067.us.2, align 4, !tbaa !30
  %i.caz = lshr i32 %i.cay, 16
  %i.cba = trunc nuw i32 %i.caz to i16
  store i16 %i.cba, ptr %i.cax, align 2, !tbaa !28
  %i.cbb = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 6
  %gep2067.us.3 = getelementptr i8, ptr %gep.us2083, i64 %.reass2064.us.3
  %i.cbc = load i32, ptr %gep2067.us.3, align 4, !tbaa !30
  %i.cbd = lshr i32 %i.cbc, 16
  %i.cbe = trunc nuw i32 %i.cbd to i16
  store i16 %i.cbe, ptr %i.cbb, align 2, !tbaa !28
  %i.cbf = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 8
  %gep.us2083.1 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us.1 ; 4 uses
  %gep2067.us.12633 = getelementptr i8, ptr %gep.us2083.1, i64 %.reass2064.us
  %i.cbg = load i32, ptr %gep2067.us.12633, align 4, !tbaa !30
  %i.cbh = lshr i32 %i.cbg, 16
  %i.cbi = trunc nuw i32 %i.cbh to i16
  store i16 %i.cbi, ptr %i.cbf, align 2, !tbaa !28
  %i.cbj = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 10
  %gep2067.us.1.1 = getelementptr i8, ptr %gep.us2083.1, i64 %.reass2064.us.1
  %i.cbk = load i32, ptr %gep2067.us.1.1, align 4, !tbaa !30
  %i.cbl = lshr i32 %i.cbk, 16
  %i.cbm = trunc nuw i32 %i.cbl to i16
  store i16 %i.cbm, ptr %i.cbj, align 2, !tbaa !28
  %i.cbn = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 12
  %gep2067.us.2.1 = getelementptr i8, ptr %gep.us2083.1, i64 %.reass2064.us.2
  %i.cbo = load i32, ptr %gep2067.us.2.1, align 4, !tbaa !30
  %i.cbp = lshr i32 %i.cbo, 16
  %i.cbq = trunc nuw i32 %i.cbp to i16
  store i16 %i.cbq, ptr %i.cbn, align 2, !tbaa !28
  %i.cbr = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 14
  %gep2067.us.3.1 = getelementptr i8, ptr %gep.us2083.1, i64 %.reass2064.us.3
  %i.cbs = load i32, ptr %gep2067.us.3.1, align 4, !tbaa !30
  %i.cbt = lshr i32 %i.cbs, 16
  %i.cbu = trunc nuw i32 %i.cbt to i16
  store i16 %i.cbu, ptr %i.cbr, align 2, !tbaa !28
  %i.cbv = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 16
  %gep.us2083.2 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us.2 ; 4 uses
  %gep2067.us.22634 = getelementptr i8, ptr %gep.us2083.2, i64 %.reass2064.us
  %i.cbw = load i32, ptr %gep2067.us.22634, align 4, !tbaa !30
  %i.cbx = lshr i32 %i.cbw, 16
  %i.cby = trunc nuw i32 %i.cbx to i16
  store i16 %i.cby, ptr %i.cbv, align 2, !tbaa !28
  %i.cbz = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 18
  %gep2067.us.1.2 = getelementptr i8, ptr %gep.us2083.2, i64 %.reass2064.us.1
  %i.cca = load i32, ptr %gep2067.us.1.2, align 4, !tbaa !30
  %i.ccb = lshr i32 %i.cca, 16
  %i.ccc = trunc nuw i32 %i.ccb to i16
  store i16 %i.ccc, ptr %i.cbz, align 2, !tbaa !28
  %i.ccd = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 20
  %gep2067.us.2.2 = getelementptr i8, ptr %gep.us2083.2, i64 %.reass2064.us.2
  %i.cce = load i32, ptr %gep2067.us.2.2, align 4, !tbaa !30
  %i.ccf = lshr i32 %i.cce, 16
  %i.ccg = trunc nuw i32 %i.ccf to i16
  store i16 %i.ccg, ptr %i.ccd, align 2, !tbaa !28
  %i.cch = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 22
  %gep2067.us.3.2 = getelementptr i8, ptr %gep.us2083.2, i64 %.reass2064.us.3
  %i.cci = load i32, ptr %gep2067.us.3.2, align 4, !tbaa !30
  %i.ccj = lshr i32 %i.cci, 16
  %i.cck = trunc nuw i32 %i.ccj to i16
  store i16 %i.cck, ptr %i.cch, align 2, !tbaa !28
  %i.ccl = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 24
  %gep.us2083.3 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us.3 ; 4 uses
  %gep2067.us.32635 = getelementptr i8, ptr %gep.us2083.3, i64 %.reass2064.us
  %i.ccm = load i32, ptr %gep2067.us.32635, align 4, !tbaa !30
  %i.ccn = lshr i32 %i.ccm, 16
  %i.cco = trunc nuw i32 %i.ccn to i16
  store i16 %i.cco, ptr %i.ccl, align 2, !tbaa !28
  %i.ccp = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 26
  %gep2067.us.1.3 = getelementptr i8, ptr %gep.us2083.3, i64 %.reass2064.us.1
  %i.ccq = load i32, ptr %gep2067.us.1.3, align 4, !tbaa !30
  %i.ccr = lshr i32 %i.ccq, 16
  %i.ccs = trunc nuw i32 %i.ccr to i16
  store i16 %i.ccs, ptr %i.ccp, align 2, !tbaa !28
  %i.cct = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 28
  %gep2067.us.2.3 = getelementptr i8, ptr %gep.us2083.3, i64 %.reass2064.us.2
  %i.ccu = load i32, ptr %gep2067.us.2.3, align 4, !tbaa !30
  %i.ccv = lshr i32 %i.ccu, 16
  %i.ccw = trunc nuw i32 %i.ccv to i16
  store i16 %i.ccw, ptr %i.cct, align 2, !tbaa !28
  %i.ccx = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 30
  %gep2067.us.3.3 = getelementptr i8, ptr %gep.us2083.3, i64 %.reass2064.us.3
  %i.ccy = load i32, ptr %gep2067.us.3.3, align 4, !tbaa !30
  %i.ccz = lshr i32 %i.ccy, 16
  %i.cda = trunc nuw i32 %i.ccz to i16
  store i16 %i.cda, ptr %i.ccx, align 2, !tbaa !28
  %i.cdb = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 32
  %gep.us2083.4 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us.4 ; 4 uses
  %gep2067.us.4 = getelementptr i8, ptr %gep.us2083.4, i64 %.reass2064.us
  %i.cdc = load i32, ptr %gep2067.us.4, align 4, !tbaa !30
  %i.cdd = lshr i32 %i.cdc, 16
  %i.cde = trunc nuw i32 %i.cdd to i16
  store i16 %i.cde, ptr %i.cdb, align 2, !tbaa !28
  %i.cdf = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 34
  %gep2067.us.1.4 = getelementptr i8, ptr %gep.us2083.4, i64 %.reass2064.us.1
  %i.cdg = load i32, ptr %gep2067.us.1.4, align 4, !tbaa !30
  %i.cdh = lshr i32 %i.cdg, 16
  %i.cdi = trunc nuw i32 %i.cdh to i16
  store i16 %i.cdi, ptr %i.cdf, align 2, !tbaa !28
  %i.cdj = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 36
  %gep2067.us.2.4 = getelementptr i8, ptr %gep.us2083.4, i64 %.reass2064.us.2
  %i.cdk = load i32, ptr %gep2067.us.2.4, align 4, !tbaa !30
  %i.cdl = lshr i32 %i.cdk, 16
  %i.cdm = trunc nuw i32 %i.cdl to i16
  store i16 %i.cdm, ptr %i.cdj, align 2, !tbaa !28
  %i.cdn = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 38
  %gep2067.us.3.4 = getelementptr i8, ptr %gep.us2083.4, i64 %.reass2064.us.3
  %i.cdo = load i32, ptr %gep2067.us.3.4, align 4, !tbaa !30
  %i.cdp = lshr i32 %i.cdo, 16
  %i.cdq = trunc nuw i32 %i.cdp to i16
  store i16 %i.cdq, ptr %i.cdn, align 2, !tbaa !28
  %i.cdr = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 40
  %gep.us2083.5 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us.5 ; 4 uses
  %gep2067.us.5 = getelementptr i8, ptr %gep.us2083.5, i64 %.reass2064.us
  %i.cds = load i32, ptr %gep2067.us.5, align 4, !tbaa !30
  %i.cdt = lshr i32 %i.cds, 16
  %i.cdu = trunc nuw i32 %i.cdt to i16
  store i16 %i.cdu, ptr %i.cdr, align 2, !tbaa !28
  %i.cdv = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 42
  %gep2067.us.1.5 = getelementptr i8, ptr %gep.us2083.5, i64 %.reass2064.us.1
  %i.cdw = load i32, ptr %gep2067.us.1.5, align 4, !tbaa !30
  %i.cdx = lshr i32 %i.cdw, 16
  %i.cdy = trunc nuw i32 %i.cdx to i16
  store i16 %i.cdy, ptr %i.cdv, align 2, !tbaa !28
  %i.cdz = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 44
  %gep2067.us.2.5 = getelementptr i8, ptr %gep.us2083.5, i64 %.reass2064.us.2
  %i.cea = load i32, ptr %gep2067.us.2.5, align 4, !tbaa !30
  %i.ceb = lshr i32 %i.cea, 16
  %i.cec = trunc nuw i32 %i.ceb to i16
  store i16 %i.cec, ptr %i.cdz, align 2, !tbaa !28
  %i.ced = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 46
  %gep2067.us.3.5 = getelementptr i8, ptr %gep.us2083.5, i64 %.reass2064.us.3
  %i.cee = load i32, ptr %gep2067.us.3.5, align 4, !tbaa !30
  %i.cef = lshr i32 %i.cee, 16
  %i.ceg = trunc nuw i32 %i.cef to i16
  store i16 %i.ceg, ptr %i.ced, align 2, !tbaa !28
  %i.ceh = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 48
  %gep.us2083.6 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us.6 ; 4 uses
  %gep2067.us.6 = getelementptr i8, ptr %gep.us2083.6, i64 %.reass2064.us
  %i.cei = load i32, ptr %gep2067.us.6, align 4, !tbaa !30
  %i.cej = lshr i32 %i.cei, 16
  %i.cek = trunc nuw i32 %i.cej to i16
  store i16 %i.cek, ptr %i.ceh, align 2, !tbaa !28
  %i.cel = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 50
  %gep2067.us.1.6 = getelementptr i8, ptr %gep.us2083.6, i64 %.reass2064.us.1
  %i.cem = load i32, ptr %gep2067.us.1.6, align 4, !tbaa !30
  %i.cen = lshr i32 %i.cem, 16
  %i.ceo = trunc nuw i32 %i.cen to i16
  store i16 %i.ceo, ptr %i.cel, align 2, !tbaa !28
  %i.cep = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 52
  %gep2067.us.2.6 = getelementptr i8, ptr %gep.us2083.6, i64 %.reass2064.us.2
  %i.ceq = load i32, ptr %gep2067.us.2.6, align 4, !tbaa !30
  %i.cer = lshr i32 %i.ceq, 16
  %i.ces = trunc nuw i32 %i.cer to i16
  store i16 %i.ces, ptr %i.cep, align 2, !tbaa !28
  %i.cet = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 54
  %gep2067.us.3.6 = getelementptr i8, ptr %gep.us2083.6, i64 %.reass2064.us.3
  %i.ceu = load i32, ptr %gep2067.us.3.6, align 4, !tbaa !30
  %i.cev = lshr i32 %i.ceu, 16
  %i.cew = trunc nuw i32 %i.cev to i16
  store i16 %i.cew, ptr %i.cet, align 2, !tbaa !28
  %i.cex = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 56
  %gep.us2083.7 = getelementptr i8, ptr %invariant.gep2072.us, i64 %.reass2071.us.7 ; 4 uses
  %gep2067.us.7 = getelementptr i8, ptr %gep.us2083.7, i64 %.reass2064.us
  %i.cey = load i32, ptr %gep2067.us.7, align 4, !tbaa !30
  %i.cez = lshr i32 %i.cey, 16
  %i.cfa = trunc nuw i32 %i.cez to i16
  store i16 %i.cfa, ptr %i.cex, align 2, !tbaa !28
  %i.cfb = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 58
  %gep2067.us.1.7 = getelementptr i8, ptr %gep.us2083.7, i64 %.reass2064.us.1
  %i.cfc = load i32, ptr %gep2067.us.1.7, align 4, !tbaa !30
  %i.cfd = lshr i32 %i.cfc, 16
  %i.cfe = trunc nuw i32 %i.cfd to i16
  store i16 %i.cfe, ptr %i.cfb, align 2, !tbaa !28
  %i.cff = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 60
  %gep2067.us.2.7 = getelementptr i8, ptr %gep.us2083.7, i64 %.reass2064.us.2
  %i.cfg = load i32, ptr %gep2067.us.2.7, align 4, !tbaa !30
  %i.cfh = lshr i32 %i.cfg, 16
  %i.cfi = trunc nuw i32 %i.cfh to i16
  store i16 %i.cfi, ptr %i.cff, align 2, !tbaa !28
  %i.cfj = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 62
  %gep2067.us.3.7 = getelementptr i8, ptr %gep.us2083.7, i64 %.reass2064.us.3
  %i.cfk = load i32, ptr %gep2067.us.3.7, align 4, !tbaa !30
  %i.cfl = lshr i32 %i.cfk, 16
  %i.cfm = trunc nuw i32 %i.cfl to i16
  store i16 %i.cfm, ptr %i.cfj, align 2, !tbaa !28
  %i.cfn = getelementptr inbounds nuw i8, ptr %.57742075.us, i64 64 ; 3 uses
  %indvars.iv.next2637 = add nuw nsw i64 %indvars.iv2636, 1 ; 2 uses
  %exitcond2640.not = icmp eq i64 %indvars.iv.next2637, %wide.trip.count2639
  br i1 %exitcond2640.not, label %._crit_edge2077.us, label %.preheader1769.us, !llvm.loop !374

._crit_edge2077.us:                               ; preds = %.preheader1769.us
  %indvars.iv.next2642 = add nuw nsw i64 %indvars.iv2641, 8 ; 3 uses
  %i.cfo = trunc i64 %indvars.iv.next2642 to i32
  %i.cfp = or i32 %i.cfo, 7
  %i.cfq = icmp slt i32 %i.cfp, %2
  br i1 %i.cfq, label %.preheader1774.us, label %.preheader1778.loopexit, !llvm.loop !375

.preheader1778.loopexit:                          ; preds = %._crit_edge2077.us
  %i.cfr = trunc nuw i64 %indvars.iv.next2642 to i32
  br label %.preheader1778

.preheader1778:                                   ; preds = %.preheader1774.preheader, %.preheader1778.loopexit, %.preheader1779
  %.4773.lcssa = phi ptr [ %.0769.lcssa, %.preheader1779 ], [ %i.cfn, %.preheader1778.loopexit ], [ %.0769.lcssa, %.preheader1774.preheader ] ; 3 uses
  %.1765.lcssa = phi i32 [ %.0764.lcssa, %.preheader1779 ], [ %i.cfr, %.preheader1778.loopexit ], [ %i.cad, %.preheader1774.preheader ] ; 5 uses
  %i.cfs = or disjoint i32 %.1765.lcssa, 3
  %i.cft = icmp slt i32 %i.cfs, %2
  br i1 %i.cft, label %.preheader1773.lr.ph, label %.preheader1777

.preheader1773.lr.ph:                             ; preds = %.preheader1778
  %i.cfu = load i32, ptr %i.azy, align 4
  %i.cfv = load ptr, ptr %7, align 8
  %i.cfw = load i64, ptr %i.baa, align 8          ; 2 uses
  %i.cfx = sext i32 %i.cfu to i64
  %factor.op.mul2093 = mul i64 %i.cfw, %i.cfx     ; 4 uses
  br i1 %i.azx, label %.preheader1773.us.preheader, label %.preheader1773.preheader

.preheader1773.preheader:                         ; preds = %.preheader1773.lr.ph
  %i.cfy = add nsw i32 %.1765.lcssa, 4
  %i.cfz = sub i32 %i.bae, %.1765.lcssa
  %i.cga = and i32 %i.cfz, -4
  %i.cgb = add i32 %i.cfy, %i.cga
  br label %.preheader1777

.preheader1773.us.preheader:                      ; preds = %.preheader1773.lr.ph
  %i.cgc = load i64, ptr %i.azz, align 8
  %factor.op.mul2086 = mul i64 %i.cgc, %i.cfw     ; 2 uses
  %i.cgd = zext i32 %.1765.lcssa to i64
  %.reass2087.us = mul i64 %factor.op.mul2086, %indvars.iv2691 ; 2 uses
  %i.cge = insertelement <4 x i64> poison, i64 %indvars.iv2691, i64 0
  %i.cgf = shufflevector <4 x i64> %i.cge, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cgg = or disjoint <4 x i64> %i.cgf, <i64 0, i64 1, i64 2, i64 3>
  %i.cgh = insertelement <4 x i64> poison, i64 %factor.op.mul2086, i64 0
  %i.cgi = shufflevector <4 x i64> %i.cgh, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cgj = mul <4 x i64> %i.cgi, %i.cgg           ; 4 uses
  %i.cgk = shufflevector <4 x i64> %i.cgj, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cgl = extractelement <4 x i64> %i.cgj, i64 1 ; 2 uses
  %i.cgm = extractelement <4 x i64> %i.cgj, i64 2 ; 2 uses
  %i.cgn = extractelement <4 x i64> %i.cgj, i64 3 ; 2 uses
  br label %.preheader1773.us

.preheader1773.us:                                ; preds = %.preheader1773.us.preheader, %._crit_edge2100.us
  %indvars.iv2660 = phi i64 [ %i.cgd, %.preheader1773.us.preheader ], [ %indvars.iv.next2661, %._crit_edge2100.us ] ; 5 uses
  %.87772102.us = phi ptr [ %.4773.lcssa, %.preheader1773.us.preheader ], [ %i.chr, %._crit_edge2100.us ]
  %.reass2094.us = mul i64 %factor.op.mul2093, %indvars.iv2660
  %i.cgo = or disjoint i64 %indvars.iv2660, 1
  %.reass2094.us.1 = mul i64 %factor.op.mul2093, %i.cgo
  %i.cgp = or disjoint i64 %indvars.iv2660, 2
  %.reass2094.us.2 = mul i64 %factor.op.mul2093, %i.cgp
  %i.cgq = or disjoint i64 %indvars.iv2660, 3
  %.reass2094.us.3 = mul i64 %factor.op.mul2093, %i.cgq
  br label %.preheader1768.us

.preheader1768.us:                                ; preds = %.preheader1773.us, %.preheader1768.us
  %indvars.iv2655 = phi i64 [ 0, %.preheader1773.us ], [ %indvars.iv.next2656, %.preheader1768.us ] ; 2 uses
  %.97782098.us = phi ptr [ %.87772102.us, %.preheader1773.us ], [ %i.chr, %.preheader1768.us ] ; 3 uses
  %invariant.gep2095.us = getelementptr [4 x i8], ptr %i.cfv, i64 %indvars.iv2655 ; 4 uses
  %gep.us2106 = getelementptr i8, ptr %invariant.gep2095.us, i64 %.reass2094.us
  %gep.us2106.1 = getelementptr i8, ptr %invariant.gep2095.us, i64 %.reass2094.us.1
  %i.cgr = insertelement <8 x ptr> poison, ptr %gep.us2106, i64 0
  %i.cgs = insertelement <8 x ptr> %i.cgr, ptr %gep.us2106.1, i64 1
  %i.cgt = shufflevector <8 x ptr> %i.cgs, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.cgu = getelementptr i8, <8 x ptr> %i.cgt, <8 x i64> %i.cgk
  %i.cgv = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %i.cgu, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !30
  %i.cgw = lshr <8 x i32> %i.cgv, splat (i32 16)
  %i.cgx = trunc nuw <8 x i32> %i.cgw to <8 x i16>
  store <8 x i16> %i.cgx, ptr %.97782098.us, align 2, !tbaa !28
  %i.cgy = getelementptr inbounds nuw i8, ptr %.97782098.us, i64 16
  %gep.us2106.2 = getelementptr i8, ptr %invariant.gep2095.us, i64 %.reass2094.us.2 ; 4 uses
  %gep2090.us.22653 = getelementptr i8, ptr %gep.us2106.2, i64 %.reass2087.us
  %i.cgz = load i32, ptr %gep2090.us.22653, align 4, !tbaa !30
  %gep2090.us.1.2 = getelementptr i8, ptr %gep.us2106.2, i64 %i.cgl
  %i.cha = load i32, ptr %gep2090.us.1.2, align 4, !tbaa !30
  %gep2090.us.2.2 = getelementptr i8, ptr %gep.us2106.2, i64 %i.cgm
  %i.chb = load i32, ptr %gep2090.us.2.2, align 4, !tbaa !30
  %gep2090.us.3.2 = getelementptr i8, ptr %gep.us2106.2, i64 %i.cgn
  %i.chc = load i32, ptr %gep2090.us.3.2, align 4, !tbaa !30
  %gep.us2106.3 = getelementptr i8, ptr %invariant.gep2095.us, i64 %.reass2094.us.3 ; 4 uses
  %gep2090.us.32654 = getelementptr i8, ptr %gep.us2106.3, i64 %.reass2087.us
  %i.chd = load i32, ptr %gep2090.us.32654, align 4, !tbaa !30
  %gep2090.us.1.3 = getelementptr i8, ptr %gep.us2106.3, i64 %i.cgl
  %i.che = load i32, ptr %gep2090.us.1.3, align 4, !tbaa !30
  %gep2090.us.2.3 = getelementptr i8, ptr %gep.us2106.3, i64 %i.cgm
  %i.chf = load i32, ptr %gep2090.us.2.3, align 4, !tbaa !30
  %gep2090.us.3.3 = getelementptr i8, ptr %gep.us2106.3, i64 %i.cgn
  %i.chg = load i32, ptr %gep2090.us.3.3, align 4, !tbaa !30
  %i.chh = insertelement <8 x i32> poison, i32 %i.cgz, i64 0
  %i.chi = insertelement <8 x i32> %i.chh, i32 %i.cha, i64 1
  %i.chj = insertelement <8 x i32> %i.chi, i32 %i.chb, i64 2
  %i.chk = insertelement <8 x i32> %i.chj, i32 %i.chc, i64 3
  %i.chl = insertelement <8 x i32> %i.chk, i32 %i.chd, i64 4
  %i.chm = insertelement <8 x i32> %i.chl, i32 %i.che, i64 5
  %i.chn = insertelement <8 x i32> %i.chm, i32 %i.chf, i64 6
  %i.cho = insertelement <8 x i32> %i.chn, i32 %i.chg, i64 7
  %i.chp = lshr <8 x i32> %i.cho, splat (i32 16)
  %i.chq = trunc nuw <8 x i32> %i.chp to <8 x i16>
  store <8 x i16> %i.chq, ptr %i.cgy, align 2, !tbaa !28
  %i.chr = getelementptr inbounds nuw i8, ptr %.97782098.us, i64 32 ; 3 uses
  %indvars.iv.next2656 = add nuw nsw i64 %indvars.iv2655, 1 ; 2 uses
  %exitcond2659.not = icmp eq i64 %indvars.iv.next2656, %wide.trip.count2658
  br i1 %exitcond2659.not, label %._crit_edge2100.us, label %.preheader1768.us, !llvm.loop !376

._crit_edge2100.us:                               ; preds = %.preheader1768.us
  %indvars.iv.next2661 = add nuw nsw i64 %indvars.iv2660, 4 ; 3 uses
  %i.chs = trunc i64 %indvars.iv.next2661 to i32
  %i.cht = or i32 %i.chs, 3
  %i.chu = icmp slt i32 %i.cht, %2
  br i1 %i.chu, label %.preheader1773.us, label %.preheader1777.loopexit, !llvm.loop !377

.preheader1777.loopexit:                          ; preds = %._crit_edge2100.us
  %i.chv = trunc nuw i64 %indvars.iv.next2661 to i32
  br label %.preheader1777

.preheader1777:                                   ; preds = %.preheader1773.preheader, %.preheader1777.loopexit, %.preheader1778
  %.8777.lcssa = phi ptr [ %.4773.lcssa, %.preheader1778 ], [ %i.chr, %.preheader1777.loopexit ], [ %.4773.lcssa, %.preheader1773.preheader ] ; 3 uses
  %.2766.lcssa = phi i32 [ %.1765.lcssa, %.preheader1778 ], [ %i.chv, %.preheader1777.loopexit ], [ %i.cgb, %.preheader1773.preheader ] ; 5 uses
  %i.chw = or disjoint i32 %.2766.lcssa, 1
  %i.chx = icmp slt i32 %i.chw, %2
  br i1 %i.chx, label %.preheader1772.lr.ph, label %.preheader1776

.preheader1772.lr.ph:                             ; preds = %.preheader1777
  %i.chy = load i32, ptr %i.azy, align 4
  %i.chz = load ptr, ptr %7, align 8              ; 3 uses
  %i.cia = load i64, ptr %i.baa, align 8          ; 2 uses
  %i.cib = sext i32 %i.chy to i64
  %factor.op.mul2116 = mul i64 %i.cia, %i.cib     ; 2 uses
  br i1 %i.azx, label %.preheader1772.us.preheader, label %.preheader1772.preheader

.preheader1772.preheader:                         ; preds = %.preheader1772.lr.ph
  %i.cic = add nsw i32 %.2766.lcssa, 2
  %i.cid = sub i32 %i.baf, %.2766.lcssa
  %i.cie = and i32 %i.cid, -2
  %i.cif = add i32 %i.cic, %i.cie
  br label %.preheader1776

.preheader1772.us.preheader:                      ; preds = %.preheader1772.lr.ph
  %i.cig = load i64, ptr %i.azz, align 8
  %factor.op.mul2109 = mul i64 %i.cig, %i.cia     ; 2 uses
  %i.cih = zext i32 %.2766.lcssa to i64
  %.reass2110.us = mul i64 %factor.op.mul2109, %indvars.iv2691 ; 4 uses
  %i.cii = insertelement <4 x i64> poison, i64 %indvars.iv2691, i64 0
  %i.cij = shufflevector <4 x i64> %i.cii, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cik = or disjoint <4 x i64> %i.cij, <i64 0, i64 1, i64 2, i64 3>
  %i.cil = insertelement <4 x i64> poison, i64 %factor.op.mul2109, i64 0
  %i.cim = shufflevector <4 x i64> %i.cil, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cin = mul <4 x i64> %i.cim, %i.cik           ; 7 uses
  %i.cio = shufflevector <4 x i64> %i.cin, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cip = extractelement <4 x i64> %i.cin, i64 1 ; 2 uses
  %i.ciq = extractelement <4 x i64> %i.cin, i64 2 ; 2 uses
  %i.cir = extractelement <4 x i64> %i.cin, i64 3 ; 2 uses
  %i.cis = extractelement <4 x i64> %i.cin, i64 1 ; 2 uses
  %i.cit = extractelement <4 x i64> %i.cin, i64 2 ; 2 uses
  %i.ciu = extractelement <4 x i64> %i.cin, i64 3 ; 2 uses
  br label %iter.check3069

iter.check3069:                                   ; preds = %.preheader1772.us.preheader, %._crit_edge2123.us
  %indvars.iv2676 = phi i64 [ %i.cih, %.preheader1772.us.preheader ], [ %indvars.iv.next2677, %._crit_edge2123.us ] ; 3 uses
  %.127812125.us = phi ptr [ %.8777.lcssa, %.preheader1772.us.preheader ], [ %.lcssa2918, %._crit_edge2123.us ] ; 5 uses
  %.reass2117.us = mul i64 %factor.op.mul2116, %indvars.iv2676 ; 3 uses
  %i.civ = or disjoint i64 %indvars.iv2676, 1
  %.reass2117.us.1 = mul i64 %factor.op.mul2116, %i.civ ; 3 uses
  br i1 %min.iters.check3047, label %.preheader1767.us.preheader, label %vector.main.loop.iter.check3048

vector.main.loop.iter.check3048:                  ; preds = %iter.check3069
  br i1 %min.iters.check3049, label %vec.epilog.ph3073, label %vector.ph3050

vector.ph3050:                                    ; preds = %vector.main.loop.iter.check3048
  %i.ciw = getelementptr i8, ptr %.127812125.us, i64 %i.bai ; 2 uses
  br label %vector.body3052

vector.body3052:                                  ; preds = %vector.body3052, %vector.ph3050
  %index3053 = phi i64 [ 0, %vector.ph3050 ], [ %index.next3064, %vector.body3052 ] ; 3 uses
  %i.cix = shl i64 %index3053, 4
  %next.gep3054 = getelementptr i8, ptr %.127812125.us, i64 %i.cix
  %i.ciy = getelementptr [4 x i8], ptr %i.chz, i64 %index3053 ; 2 uses
  %i.ciz = getelementptr i8, ptr %i.ciy, i64 %.reass2117.us ; 4 uses
  %i.cja = getelementptr i8, ptr %i.ciz, i64 %.reass2110.us
  %wide.load3055 = load <16 x i32>, ptr %i.cja, align 4, !tbaa !30
  %i.cjb = getelementptr i8, ptr %i.ciz, i64 %i.cip
  %wide.load3056 = load <16 x i32>, ptr %i.cjb, align 4, !tbaa !30
  %i.cjc = getelementptr i8, ptr %i.ciz, i64 %i.ciq
  %wide.load3057 = load <16 x i32>, ptr %i.cjc, align 4, !tbaa !30
  %i.cjd = getelementptr i8, ptr %i.ciz, i64 %i.cir
  %wide.load3058 = load <16 x i32>, ptr %i.cjd, align 4, !tbaa !30
  %i.cje = getelementptr i8, ptr %i.ciy, i64 %.reass2117.us.1 ; 4 uses
  %i.cjf = getelementptr i8, ptr %i.cje, i64 %.reass2110.us
  %wide.load3059 = load <16 x i32>, ptr %i.cjf, align 4, !tbaa !30
  %i.cjg = getelementptr i8, ptr %i.cje, i64 %i.cip
  %wide.load3060 = load <16 x i32>, ptr %i.cjg, align 4, !tbaa !30
  %i.cjh = getelementptr i8, ptr %i.cje, i64 %i.ciq
  %wide.load3061 = load <16 x i32>, ptr %i.cjh, align 4, !tbaa !30
  %i.cji = getelementptr i8, ptr %i.cje, i64 %i.cir
  %wide.load3062 = load <16 x i32>, ptr %i.cji, align 4, !tbaa !30
  %i.cjj = shufflevector <16 x i32> %wide.load3055, <16 x i32> %wide.load3056, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cjk = shufflevector <16 x i32> %wide.load3057, <16 x i32> %wide.load3058, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cjl = shufflevector <32 x i32> %i.cjj, <32 x i32> %i.cjk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cjm = lshr <64 x i32> %i.cjl, splat (i32 16)
  %i.cjn = trunc nuw <64 x i32> %i.cjm to <64 x i16>
  %i.cjo = shufflevector <16 x i32> %wide.load3059, <16 x i32> %wide.load3060, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cjp = shufflevector <16 x i32> %wide.load3061, <16 x i32> %wide.load3062, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cjq = shufflevector <32 x i32> %i.cjo, <32 x i32> %i.cjp, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cjr = lshr <64 x i32> %i.cjq, splat (i32 16)
  %i.cjs = trunc nuw <64 x i32> %i.cjr to <64 x i16>
  %interleaved.vec3063 = shufflevector <64 x i16> %i.cjn, <64 x i16> %i.cjs, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec3063, ptr %next.gep3054, align 2, !tbaa !28
  %index.next3064 = add nuw i64 %index3053, 16    ; 2 uses
  %i.cjt = icmp eq i64 %index.next3064, %n.vec3051
  br i1 %i.cjt, label %middle.block3065, label %vector.body3052, !llvm.loop !378

middle.block3065:                                 ; preds = %vector.body3052
  br i1 %cmp.n3066, label %._crit_edge2123.us, label %vec.epilog.iter.check3071

vec.epilog.iter.check3071:                        ; preds = %middle.block3065
  br i1 %min.epilog.iters.check3072, label %.preheader1767.us.preheader, label %vec.epilog.ph3073, !prof !437

vec.epilog.ph3073:                                ; preds = %vector.main.loop.iter.check3048, %vec.epilog.iter.check3071
  %vec.epilog.resume.val3067 = phi i64 [ %n.vec3051, %vec.epilog.iter.check3071 ], [ 0, %vector.main.loop.iter.check3048 ]
  %i.cju = getelementptr i8, ptr %.127812125.us, i64 %i.baj ; 2 uses
  br label %vec.epilog.vector.body3075

vec.epilog.vector.body3075:                       ; preds = %vec.epilog.vector.body3075, %vec.epilog.ph3073
  %index3076 = phi i64 [ %vec.epilog.resume.val3067, %vec.epilog.ph3073 ], [ %index.next3087, %vec.epilog.vector.body3075 ] ; 3 uses
  %i.cjv = shl i64 %index3076, 4
  %next.gep3077 = getelementptr i8, ptr %.127812125.us, i64 %i.cjv
  %i.cjw = getelementptr [4 x i8], ptr %i.chz, i64 %index3076 ; 2 uses
  %i.cjx = getelementptr i8, ptr %i.cjw, i64 %.reass2117.us ; 4 uses
  %i.cjy = getelementptr i8, ptr %i.cjx, i64 %.reass2110.us
  %wide.load3078 = load <4 x i32>, ptr %i.cjy, align 4, !tbaa !30
  %i.cjz = getelementptr i8, ptr %i.cjx, i64 %i.cis
  %wide.load3079 = load <4 x i32>, ptr %i.cjz, align 4, !tbaa !30
  %i.cka = getelementptr i8, ptr %i.cjx, i64 %i.cit
  %wide.load3080 = load <4 x i32>, ptr %i.cka, align 4, !tbaa !30
  %i.ckb = getelementptr i8, ptr %i.cjx, i64 %i.ciu
  %wide.load3081 = load <4 x i32>, ptr %i.ckb, align 4, !tbaa !30
  %i.ckc = getelementptr i8, ptr %i.cjw, i64 %.reass2117.us.1 ; 4 uses
  %i.ckd = getelementptr i8, ptr %i.ckc, i64 %.reass2110.us
  %wide.load3082 = load <4 x i32>, ptr %i.ckd, align 4, !tbaa !30
  %i.cke = getelementptr i8, ptr %i.ckc, i64 %i.cis
  %wide.load3083 = load <4 x i32>, ptr %i.cke, align 4, !tbaa !30
  %i.ckf = getelementptr i8, ptr %i.ckc, i64 %i.cit
  %wide.load3084 = load <4 x i32>, ptr %i.ckf, align 4, !tbaa !30
  %i.ckg = getelementptr i8, ptr %i.ckc, i64 %i.ciu
  %wide.load3085 = load <4 x i32>, ptr %i.ckg, align 4, !tbaa !30
  %i.ckh = shufflevector <4 x i32> %wide.load3078, <4 x i32> %wide.load3079, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cki = shufflevector <4 x i32> %wide.load3080, <4 x i32> %wide.load3081, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ckj = shufflevector <4 x i32> %wide.load3082, <4 x i32> %wide.load3083, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ckk = shufflevector <4 x i32> %wide.load3084, <4 x i32> %wide.load3085, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ckl = shufflevector <8 x i32> %i.ckh, <8 x i32> %i.cki, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ckm = shufflevector <8 x i32> %i.ckj, <8 x i32> %i.ckk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ckn = shufflevector <16 x i32> %i.ckl, <16 x i32> %i.ckm, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cko = lshr <32 x i32> %i.ckn, splat (i32 16)
  %interleaved.vec3086 = trunc nuw <32 x i32> %i.cko to <32 x i16>
  store <32 x i16> %interleaved.vec3086, ptr %next.gep3077, align 2, !tbaa !28
  %index.next3087 = add nuw i64 %index3076, 4     ; 2 uses
  %i.ckp = icmp eq i64 %index.next3087, %n.vec3074
  br i1 %i.ckp, label %vec.epilog.middle.block3088, label %vec.epilog.vector.body3075, !llvm.loop !379

vec.epilog.middle.block3088:                      ; preds = %vec.epilog.vector.body3075
  br i1 %cmp.n3089, label %._crit_edge2123.us, label %.preheader1767.us.preheader

.preheader1767.us.preheader:                      ; preds = %iter.check3069, %vec.epilog.iter.check3071, %vec.epilog.middle.block3088
  %indvars.iv2671.ph = phi i64 [ 0, %iter.check3069 ], [ %n.vec3051, %vec.epilog.iter.check3071 ], [ %n.vec3074, %vec.epilog.middle.block3088 ]
  %.137822121.us.ph = phi ptr [ %.127812125.us, %iter.check3069 ], [ %i.ciw, %vec.epilog.iter.check3071 ], [ %i.cju, %vec.epilog.middle.block3088 ]
  br label %.preheader1767.us

.preheader1767.us:                                ; preds = %.preheader1767.us.preheader, %.preheader1767.us
  %indvars.iv2671 = phi i64 [ %indvars.iv.next2672, %.preheader1767.us ], [ %indvars.iv2671.ph, %.preheader1767.us.preheader ] ; 2 uses
  %.137822121.us = phi ptr [ %i.ckx, %.preheader1767.us ], [ %.137822121.us.ph, %.preheader1767.us.preheader ] ; 2 uses
  %invariant.gep2118.us = getelementptr [4 x i8], ptr %i.chz, i64 %indvars.iv2671 ; 2 uses
  %gep.us2129 = getelementptr i8, ptr %invariant.gep2118.us, i64 %.reass2117.us
  %gep.us2129.1 = getelementptr i8, ptr %invariant.gep2118.us, i64 %.reass2117.us.1
  %i.ckq = insertelement <8 x ptr> poison, ptr %gep.us2129, i64 0
  %i.ckr = insertelement <8 x ptr> %i.ckq, ptr %gep.us2129.1, i64 1
  %i.cks = shufflevector <8 x ptr> %i.ckr, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.ckt = getelementptr i8, <8 x ptr> %i.cks, <8 x i64> %i.cio
  %i.cku = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %i.ckt, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !30
  %i.ckv = lshr <8 x i32> %i.cku, splat (i32 16)
  %i.ckw = trunc nuw <8 x i32> %i.ckv to <8 x i16>
  store <8 x i16> %i.ckw, ptr %.137822121.us, align 2, !tbaa !28
  %i.ckx = getelementptr inbounds nuw i8, ptr %.137822121.us, i64 16 ; 2 uses
  %indvars.iv.next2672 = add nuw nsw i64 %indvars.iv2671, 1 ; 2 uses
  %exitcond2675.not = icmp eq i64 %indvars.iv.next2672, %wide.trip.count2674
  br i1 %exitcond2675.not, label %._crit_edge2123.us, label %.preheader1767.us, !llvm.loop !380

._crit_edge2123.us:                               ; preds = %.preheader1767.us, %vec.epilog.middle.block3088, %middle.block3065
  %.lcssa2918 = phi ptr [ %i.cju, %vec.epilog.middle.block3088 ], [ %i.ciw, %middle.block3065 ], [ %i.ckx, %.preheader1767.us ] ; 2 uses
  %indvars.iv.next2677 = add nuw nsw i64 %indvars.iv2676, 2 ; 3 uses
  %i.cky = trunc i64 %indvars.iv.next2677 to i32
  %i.ckz = or i32 %i.cky, 1
  %i.cla = icmp slt i32 %i.ckz, %2
  br i1 %i.cla, label %iter.check3069, label %.preheader1776.loopexit, !llvm.loop !381

.preheader1776.loopexit:                          ; preds = %._crit_edge2123.us
  %i.clb = trunc nuw i64 %indvars.iv.next2677 to i32
  br label %.preheader1776

.preheader1776:                                   ; preds = %.preheader1772.preheader, %.preheader1776.loopexit, %.preheader1777
  %.12781.lcssa = phi ptr [ %.8777.lcssa, %.preheader1777 ], [ %.lcssa2918, %.preheader1776.loopexit ], [ %.8777.lcssa, %.preheader1772.preheader ]
  %.3767.lcssa = phi i32 [ %.2766.lcssa, %.preheader1777 ], [ %i.clb, %.preheader1776.loopexit ], [ %i.cif, %.preheader1772.preheader ] ; 2 uses
  %i.clc = icmp slt i32 %.3767.lcssa, %2
  br i1 %i.clc, label %.preheader1771.lr.ph, label %._crit_edge2145.split

.preheader1771.lr.ph:                             ; preds = %.preheader1776
  %i.cld = load i32, ptr %i.azy, align 4
  %i.cle = load ptr, ptr %7, align 8
  %i.clf = load i64, ptr %i.baa, align 8          ; 2 uses
  %i.clg = sext i32 %i.cld to i64
  %factor.op.mul2146 = mul i64 %i.clf, %i.clg
  br i1 %i.azx, label %.preheader1771.preheader, label %._crit_edge2145.split

.preheader1771.preheader:                         ; preds = %.preheader1771.lr.ph
  %i.clh = load i64, ptr %i.azz, align 8
  %factor.op.mul2132 = mul i64 %i.clh, %i.clf     ; 2 uses
  %i.cli = zext i32 %.3767.lcssa to i64
  %.reass2133 = mul i64 %factor.op.mul2132, %indvars.iv2691 ; 2 uses
  %i.clj = insertelement <4 x i64> poison, i64 %indvars.iv2691, i64 0
  %i.clk = shufflevector <4 x i64> %i.clj, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.cll = or disjoint <4 x i64> %i.clk, <i64 0, i64 1, i64 2, i64 3>
  %i.clm = insertelement <4 x i64> poison, i64 %factor.op.mul2132, i64 0
  %i.cln = shufflevector <4 x i64> %i.clm, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.clo = mul <4 x i64> %i.cln, %i.cll           ; 7 uses
  %i.clp = extractelement <4 x i64> %i.clo, i64 1
  %i.clq = extractelement <4 x i64> %i.clo, i64 2
  %i.clr = extractelement <4 x i64> %i.clo, i64 3
  %i.cls = extractelement <4 x i64> %i.clo, i64 1
  %i.clt = extractelement <4 x i64> %i.clo, i64 2
  %i.clu = extractelement <4 x i64> %i.clo, i64 3
  br label %iter.check3028

iter.check3028:                                   ; preds = %.preheader1771.preheader, %._crit_edge2141
end_hunk_12
begin_hunk_13_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  %i.cnj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cnk = load i64, ptr %i.cnj, align 8, !tbaa !24, !noalias !439
  %factor.op.mul2339 = mul i64 %i.cni, %i.cnk
  %i.cnl = icmp sgt i32 %2, 15
  %i.cnm = icmp sgt i32 %i.a, 0                   ; 5 uses
  %i.cnn = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 5 uses
  %i.cno = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 5 uses
  %i.cnp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.cnq = and i32 %2, -16
  %i.cnr = sext i32 %2 to i64
  %i.cns = add i32 %2, -8
  %i.cnt = add i32 %2, -4
  %i.cnu = add i32 %2, -2
  %i.cnv = zext i32 %.3867.lcssa to i64
  %wide.trip.count2778 = zext i32 %i.a to i64     ; 22 uses
  %invariant.op2898 = add nsw i64 %i.cnr, -15
  %wide.trip.count2790 = zext nneg i32 %i.a to i64
  %wide.trip.count2802 = zext nneg i32 %i.a to i64
  %wide.trip.count2813 = zext nneg i32 %i.a to i64
  %wide.trip.count2821 = zext nneg i32 %i.a to i64
  %xtraiter3413 = and i64 %wide.trip.count2778, 3 ; 3 uses
  %i.cnw = add nsw i32 %i.a, -1
  %i.cnx = icmp ult i32 %i.cnw, 3
  %unroll_iter3418 = and i64 %wide.trip.count2778, 2147483644
  %lcmp.mod3415.not = icmp eq i64 %xtraiter3413, 0
  %lcmp.mod3417 = icmp ne i64 %xtraiter3413, 0
  %min.iters.check3326 = icmp ult i32 %i.a, 4
  %min.iters.check3328 = icmp ult i32 %i.a, 16
  %i.cny = and i64 %wide.trip.count2778, 12
  %n.vec3330 = and i64 %wide.trip.count2778, 2147483632 ; 5 uses
  %i.cnz = shl nuw nsw i64 %n.vec3330, 4
  %cmp.n3345 = icmp eq i64 %n.vec3330, %wide.trip.count2778
  %min.epilog.iters.check3351 = icmp eq i64 %i.cny, 0
  %n.vec3353 = and i64 %wide.trip.count2778, 2147483644 ; 4 uses
  %i.coa = shl nuw nsw i64 %n.vec3353, 4
  %cmp.n3368 = icmp eq i64 %n.vec3353, %wide.trip.count2778
  %min.iters.check3289 = icmp ult i32 %i.a, 4
  %min.iters.check3291 = icmp ult i32 %i.a, 16
  %i.cob = and i64 %wide.trip.count2778, 12
  %n.vec3293 = and i64 %wide.trip.count2778, 2147483632 ; 5 uses
  %i.coc = shl nuw nsw i64 %n.vec3293, 3
  %cmp.n3304 = icmp eq i64 %n.vec3293, %wide.trip.count2778
  %min.epilog.iters.check3310 = icmp eq i64 %i.cob, 0
  %n.vec3312 = and i64 %wide.trip.count2778, 2147483644 ; 4 uses
  %i.cod = shl nuw nsw i64 %n.vec3312, 3
  %cmp.n3323 = icmp eq i64 %n.vec3312, %wide.trip.count2778
  %min.iters.check3256 = icmp ult i32 %i.a, 4
  %min.iters.check3258 = icmp ult i32 %i.a, 16
  %i.coe = and i64 %wide.trip.count2778, 12
  %n.vec3260 = and i64 %wide.trip.count2778, 2147483632 ; 5 uses
  %i.cof = shl nuw nsw i64 %n.vec3260, 2
  %cmp.n3269 = icmp eq i64 %n.vec3260, %wide.trip.count2778
  %min.epilog.iters.check3275 = icmp eq i64 %i.coe, 0
  %n.vec3277 = and i64 %wide.trip.count2778, 2147483644 ; 4 uses
  %i.cog = shl nuw nsw i64 %n.vec3277, 2
  %cmp.n3286 = icmp eq i64 %n.vec3277, %wide.trip.count2778
  %min.iters.check3224 = icmp ult i32 %i.a, 8
  %min.iters.check3226 = icmp ult i32 %i.a, 64
  %i.coh = and i64 %wide.trip.count2778, 56
  %n.vec3228 = and i64 %wide.trip.count2778, 2147483584 ; 5 uses
  %i.coi = shl nuw nsw i64 %n.vec3228, 1
  %cmp.n3238 = icmp eq i64 %n.vec3228, %wide.trip.count2778
  %min.epilog.iters.check3244 = icmp eq i64 %i.coh, 0
  %n.vec3246 = and i64 %wide.trip.count2778, 2147483640 ; 4 uses
  %i.coj = shl nuw nsw i64 %n.vec3246, 1
  %cmp.n3253 = icmp eq i64 %n.vec3246, %wide.trip.count2778
  br label %.noexc934

.noexc946:                                        ; preds = %.noexc946.lr.ph, %._crit_edge2255.split
  %indvars.iv2768 = phi i64 [ %i.byf, %.noexc946.lr.ph ], [ %indvars.iv.next2769, %._crit_edge2255.split ] ; 12 uses
  %i.cok = trunc i64 %indvars.iv2768 to i32
  %i.col = insertelement <2 x i32> poison, i32 %i.cok, i64 0
  %i.com = shufflevector <2 x i32> %i.col, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.con = lshr <4 x i32> %i.com, <i32 3, i32 2, i32 1, i32 4>
  %i.coo = and <4 x i32> %i.con, <i32 1, i32 1, i32 1, i32 -1>
  %i.cop = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.coo)
  %i.coq = zext nneg i32 %i.cop to i64
  %.reass2263 = mul i64 %factor.op.mul2262, %i.coq
  %i.cor = getelementptr inbounds nuw i8, ptr %i.bxq, i64 %.reass2263 ; 3 uses
  br i1 %i.bxv, label %.preheader1756.lr.ph, label %.preheader1760

.preheader1756.lr.ph:                             ; preds = %.noexc946
  %i.cos = load ptr, ptr %7, align 8              ; 3 uses
  br i1 %i.bxw, label %.preheader1756.us.preheader, label %.preheader1760

.preheader1756.us.preheader:                      ; preds = %.preheader1756.lr.ph
  %i.cot = load i64, ptr %i.bxz, align 8          ; 2 uses
  %i.cou = load i32, ptr %i.bxx, align 4
  %i.cov = sext i32 %i.cou to i64
  %factor.op.mul2154 = mul i64 %i.cot, %i.cov
  %i.cow = load i64, ptr %i.bxy, align 8
  %factor.op.mul2159 = mul i64 %i.cow, %i.cot     ; 2 uses
  %.reass2160.us = mul i64 %factor.op.mul2159, %indvars.iv2768 ; 3 uses
  %i.cox = or disjoint i64 %indvars.iv2768, 1
  %.reass2160.us.1 = mul i64 %factor.op.mul2159, %i.cox ; 3 uses
  %i.coy = insertelement <16 x i64> poison, i64 %factor.op.mul2154, i64 0
  %i.coz = shufflevector <16 x i64> %i.coy, <16 x i64> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %.preheader1756.us

.preheader1756.us:                                ; preds = %.preheader1756.us.preheader, %._crit_edge2167.us
  %indvars.iv2707 = phi i64 [ 0, %.preheader1756.us.preheader ], [ %indvars.iv.next2708, %._crit_edge2167.us ] ; 3 uses
  %.07362169.us = phi ptr [ %i.cor, %.preheader1756.us.preheader ], [ %.lcssa3381, %._crit_edge2167.us ] ; 2 uses
  %i.cpa = insertelement <16 x i64> poison, i64 %indvars.iv2707, i64 0
  %i.cpb = shufflevector <16 x i64> %i.cpa, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.cpc = or disjoint <16 x i64> %i.cpb, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15> ; 2 uses
  %i.cpd = insertelement <16 x i64> %i.cpc, i64 %indvars.iv2707, i64 0
  %i.cpe = mul <16 x i64> %i.coz, %i.cpd          ; 3 uses
  %i.cpf = mul <16 x i64> %i.coz, %i.cpc          ; 3 uses
  br i1 %i.byg, label %.preheader1751.us.epil.preheader, label %.preheader1751.us

.preheader1751.us:                                ; preds = %.preheader1756.us, %.preheader1751.us
  %indvars.iv2702 = phi i64 [ %indvars.iv.next2703.1, %.preheader1751.us ], [ 0, %.preheader1756.us ] ; 3 uses
  %.17372165.us = phi ptr [ %i.cqa, %.preheader1751.us ], [ %.07362169.us, %.preheader1756.us ] ; 5 uses
  %niter3411 = phi i64 [ %niter3411.next.1, %.preheader1751.us ], [ 0, %.preheader1756.us ]
  %invariant.gep2161.us = getelementptr [4 x i8], ptr %i.cos, i64 %indvars.iv2702 ; 2 uses
  %gep2162.us = getelementptr i8, ptr %invariant.gep2161.us, i64 %.reass2160.us
  %i.cpg = getelementptr i8, ptr %gep2162.us, <16 x i64> %i.cpe
  %i.cph = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpg, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.cpi = lshr <16 x i32> %i.cph, splat (i32 16)
  %i.cpj = trunc nuw <16 x i32> %i.cpi to <16 x i16>
  store <16 x i16> %i.cpj, ptr %.17372165.us, align 2, !tbaa !28
  %i.cpk = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 32
  %gep2162.us.1 = getelementptr i8, ptr %invariant.gep2161.us, i64 %.reass2160.us.1
  %i.cpl = getelementptr i8, ptr %gep2162.us.1, <16 x i64> %i.cpf
  %i.cpm = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpl, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.cpn = lshr <16 x i32> %i.cpm, splat (i32 16)
  %i.cpo = trunc nuw <16 x i32> %i.cpn to <16 x i16>
  store <16 x i16> %i.cpo, ptr %i.cpk, align 2, !tbaa !28
  %i.cpp = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 64
  %i.cpq = getelementptr [4 x i8], ptr %i.cos, i64 %indvars.iv2702
  %invariant.gep2161.us.1 = getelementptr i8, ptr %i.cpq, i64 4 ; 2 uses
  %gep2162.us.13412 = getelementptr i8, ptr %invariant.gep2161.us.1, i64 %.reass2160.us
  %i.cpr = getelementptr i8, ptr %gep2162.us.13412, <16 x i64> %i.cpe
  %i.cps = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpr, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.cpt = lshr <16 x i32> %i.cps, splat (i32 16)
  %i.cpu = trunc nuw <16 x i32> %i.cpt to <16 x i16>
  store <16 x i16> %i.cpu, ptr %i.cpp, align 2, !tbaa !28
  %i.cpv = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 96
  %gep2162.us.1.1 = getelementptr i8, ptr %invariant.gep2161.us.1, i64 %.reass2160.us.1
  %i.cpw = getelementptr i8, ptr %gep2162.us.1.1, <16 x i64> %i.cpf
  %i.cpx = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cpw, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.cpy = lshr <16 x i32> %i.cpx, splat (i32 16)
  %i.cpz = trunc nuw <16 x i32> %i.cpy to <16 x i16>
  store <16 x i16> %i.cpz, ptr %i.cpv, align 2, !tbaa !28
  %i.cqa = getelementptr inbounds nuw i8, ptr %.17372165.us, i64 128 ; 3 uses
  %indvars.iv.next2703.1 = add nuw nsw i64 %indvars.iv2702, 2 ; 2 uses
  %niter3411.next.1 = add i64 %niter3411, 2       ; 2 uses
  %niter3411.ncmp.1 = icmp eq i64 %niter3411.next.1, %unroll_iter3410
  br i1 %niter3411.ncmp.1, label %._crit_edge2167.us.unr-lcssa, label %.preheader1751.us, !llvm.loop !389

._crit_edge2167.us.unr-lcssa:                     ; preds = %.preheader1751.us
  br i1 %lcmp.mod3407.not, label %._crit_edge2167.us, label %.preheader1751.us.epil.preheader

.preheader1751.us.epil.preheader:                 ; preds = %._crit_edge2167.us.unr-lcssa, %.preheader1756.us
  %indvars.iv2702.epil.init = phi i64 [ 0, %.preheader1756.us ], [ %indvars.iv.next2703.1, %._crit_edge2167.us.unr-lcssa ]
  %.17372165.us.epil.init = phi ptr [ %.07362169.us, %.preheader1756.us ], [ %i.cqa, %._crit_edge2167.us.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod3409)
  %invariant.gep2161.us.epil = getelementptr [4 x i8], ptr %i.cos, i64 %indvars.iv2702.epil.init ; 2 uses
  %gep2162.us.epil = getelementptr i8, ptr %invariant.gep2161.us.epil, i64 %.reass2160.us
  %i.cqb = getelementptr i8, ptr %gep2162.us.epil, <16 x i64> %i.cpe
  %i.cqc = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cqb, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.cqd = lshr <16 x i32> %i.cqc, splat (i32 16)
  %i.cqe = trunc nuw <16 x i32> %i.cqd to <16 x i16>
  store <16 x i16> %i.cqe, ptr %.17372165.us.epil.init, align 2, !tbaa !28
  %i.cqf = getelementptr inbounds nuw i8, ptr %.17372165.us.epil.init, i64 32
  %gep2162.us.1.epil = getelementptr i8, ptr %invariant.gep2161.us.epil, i64 %.reass2160.us.1
  %i.cqg = getelementptr i8, ptr %gep2162.us.1.epil, <16 x i64> %i.cpf
  %i.cqh = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.cqg, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.cqi = lshr <16 x i32> %i.cqh, splat (i32 16)
  %i.cqj = trunc nuw <16 x i32> %i.cqi to <16 x i16>
  store <16 x i16> %i.cqj, ptr %i.cqf, align 2, !tbaa !28
  %i.cqk = getelementptr inbounds nuw i8, ptr %.17372165.us.epil.init, i64 64
  br label %._crit_edge2167.us

._crit_edge2167.us:                               ; preds = %._crit_edge2167.us.unr-lcssa, %.preheader1751.us.epil.preheader
  %.lcssa3381 = phi ptr [ %i.cqa, %._crit_edge2167.us.unr-lcssa ], [ %i.cqk, %.preheader1751.us.epil.preheader ] ; 2 uses
  %indvars.iv.next2708 = add nuw nsw i64 %indvars.iv2707, 16 ; 3 uses
  %i.cql = icmp slt i64 %indvars.iv.next2708, %invariant.op2897
  br i1 %i.cql, label %.preheader1756.us, label %.preheader1760.loopexit, !llvm.loop !390

.preheader1760.loopexit:                          ; preds = %._crit_edge2167.us
  %i.cqm = trunc nuw nsw i64 %indvars.iv.next2708 to i32
  br label %.preheader1760

.preheader1760:                                   ; preds = %.preheader1756.lr.ph, %.preheader1760.loopexit, %.noexc946
  %.0736.lcssa = phi ptr [ %i.cor, %.noexc946 ], [ %.lcssa3381, %.preheader1760.loopexit ], [ %i.cor, %.preheader1756.lr.ph ] ; 3 uses
  %.0731.lcssa = phi i32 [ 0, %.noexc946 ], [ %i.cqm, %.preheader1760.loopexit ], [ %i.bya, %.preheader1756.lr.ph ] ; 5 uses
  %i.cqn = or disjoint i32 %.0731.lcssa, 7
  %i.cqo = icmp slt i32 %i.cqn, %2
  br i1 %i.cqo, label %.preheader1755.lr.ph, label %.preheader1759

.preheader1755.lr.ph:                             ; preds = %.preheader1760
  %i.cqp = load i32, ptr %i.bxx, align 4
  %i.cqq = load ptr, ptr %7, align 8
  %i.cqr = load i64, ptr %i.bxz, align 8          ; 2 uses
  %i.cqs = sext i32 %i.cqp to i64
  %factor.op.mul2176 = mul i64 %i.cqr, %i.cqs     ; 8 uses
  br i1 %i.bxw, label %.preheader1755.us.preheader, label %.preheader1755.preheader

.preheader1755.preheader:                         ; preds = %.preheader1755.lr.ph
  %i.cqt = add nsw i32 %.0731.lcssa, 8
  %i.cqu = sub i32 %i.byc, %.0731.lcssa
  %i.cqv = and i32 %i.cqu, -8
  %i.cqw = add i32 %i.cqt, %i.cqv
  br label %.preheader1759

.preheader1755.us.preheader:                      ; preds = %.preheader1755.lr.ph
  %i.cqx = load i64, ptr %i.bxy, align 8
  %factor.op.mul2181 = mul i64 %i.cqx, %i.cqr     ; 2 uses
  %i.cqy = zext i32 %.0731.lcssa to i64
  %.reass2182.us = mul i64 %factor.op.mul2181, %indvars.iv2768
  %i.cqz = or disjoint i64 %indvars.iv2768, 1
  %.reass2182.us.1 = mul i64 %factor.op.mul2181, %i.cqz
  br label %.preheader1755.us

.preheader1755.us:                                ; preds = %.preheader1755.us.preheader, %._crit_edge2189.us
  %indvars.iv2723 = phi i64 [ %i.cqy, %.preheader1755.us.preheader ], [ %indvars.iv.next2724, %._crit_edge2189.us ] ; 9 uses
  %.47402191.us = phi ptr [ %.0736.lcssa, %.preheader1755.us.preheader ], [ %i.cts, %._crit_edge2189.us ]
  %.reass2177.us = mul i64 %factor.op.mul2176, %indvars.iv2723 ; 2 uses
  %i.cra = or disjoint i64 %indvars.iv2723, 1
  %.reass2177.us.1 = mul i64 %factor.op.mul2176, %i.cra ; 2 uses
  %i.crb = or disjoint i64 %indvars.iv2723, 2
  %.reass2177.us.2 = mul i64 %factor.op.mul2176, %i.crb ; 2 uses
  %i.crc = or disjoint i64 %indvars.iv2723, 3
  %.reass2177.us.3 = mul i64 %factor.op.mul2176, %i.crc ; 2 uses
  %i.crd = or disjoint i64 %indvars.iv2723, 4
  %.reass2177.us.4 = mul i64 %factor.op.mul2176, %i.crd ; 2 uses
  %i.cre = or disjoint i64 %indvars.iv2723, 5
  %.reass2177.us.5 = mul i64 %factor.op.mul2176, %i.cre ; 2 uses
  %i.crf = or disjoint i64 %indvars.iv2723, 6
  %.reass2177.us.6 = mul i64 %factor.op.mul2176, %i.crf ; 2 uses
  %i.crg = or disjoint i64 %indvars.iv2723, 7
  %.reass2177.us.7 = mul i64 %factor.op.mul2176, %i.crg ; 2 uses
  br label %.preheader1750.us

.preheader1750.us:                                ; preds = %.preheader1755.us, %.preheader1750.us
  %indvars.iv2718 = phi i64 [ 0, %.preheader1755.us ], [ %indvars.iv.next2719, %.preheader1750.us ] ; 2 uses
  %.57412187.us = phi ptr [ %.47402191.us, %.preheader1755.us ], [ %i.cts, %.preheader1750.us ] ; 17 uses
  %invariant.gep2183.us = getelementptr [4 x i8], ptr %i.cqq, i64 %indvars.iv2718 ; 2 uses
  %gep2184.us = getelementptr i8, ptr %invariant.gep2183.us, i64 %.reass2182.us ; 8 uses
  %gep.us2195 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us
  %i.crh = load i32, ptr %gep.us2195, align 4, !tbaa !30
  %i.cri = lshr i32 %i.crh, 16
  %i.crj = trunc nuw i32 %i.cri to i16
  store i16 %i.crj, ptr %.57412187.us, align 2, !tbaa !28
  %i.crk = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 2
  %gep.us2195.1 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.1
  %i.crl = load i32, ptr %gep.us2195.1, align 4, !tbaa !30
  %i.crm = lshr i32 %i.crl, 16
  %i.crn = trunc nuw i32 %i.crm to i16
  store i16 %i.crn, ptr %i.crk, align 2, !tbaa !28
  %i.cro = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 4
  %gep.us2195.2 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.2
  %i.crp = load i32, ptr %gep.us2195.2, align 4, !tbaa !30
  %i.crq = lshr i32 %i.crp, 16
  %i.crr = trunc nuw i32 %i.crq to i16
  store i16 %i.crr, ptr %i.cro, align 2, !tbaa !28
  %i.crs = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 6
  %gep.us2195.3 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.3
  %i.crt = load i32, ptr %gep.us2195.3, align 4, !tbaa !30
  %i.cru = lshr i32 %i.crt, 16
  %i.crv = trunc nuw i32 %i.cru to i16
  store i16 %i.crv, ptr %i.crs, align 2, !tbaa !28
  %i.crw = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 8
  %gep.us2195.4 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.4
  %i.crx = load i32, ptr %gep.us2195.4, align 4, !tbaa !30
  %i.cry = lshr i32 %i.crx, 16
  %i.crz = trunc nuw i32 %i.cry to i16
  store i16 %i.crz, ptr %i.crw, align 2, !tbaa !28
  %i.csa = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 10
  %gep.us2195.5 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.5
  %i.csb = load i32, ptr %gep.us2195.5, align 4, !tbaa !30
  %i.csc = lshr i32 %i.csb, 16
  %i.csd = trunc nuw i32 %i.csc to i16
  store i16 %i.csd, ptr %i.csa, align 2, !tbaa !28
  %i.cse = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 12
  %gep.us2195.6 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.6
  %i.csf = load i32, ptr %gep.us2195.6, align 4, !tbaa !30
  %i.csg = lshr i32 %i.csf, 16
  %i.csh = trunc nuw i32 %i.csg to i16
  store i16 %i.csh, ptr %i.cse, align 2, !tbaa !28
  %i.csi = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 14
  %gep.us2195.7 = getelementptr i8, ptr %gep2184.us, i64 %.reass2177.us.7
  %i.csj = load i32, ptr %gep.us2195.7, align 4, !tbaa !30
  %i.csk = lshr i32 %i.csj, 16
  %i.csl = trunc nuw i32 %i.csk to i16
  store i16 %i.csl, ptr %i.csi, align 2, !tbaa !28
  %i.csm = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 16
  %gep2184.us.1 = getelementptr i8, ptr %invariant.gep2183.us, i64 %.reass2182.us.1 ; 8 uses
  %gep.us2195.12717 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us
  %i.csn = load i32, ptr %gep.us2195.12717, align 4, !tbaa !30
  %i.cso = lshr i32 %i.csn, 16
  %i.csp = trunc nuw i32 %i.cso to i16
  store i16 %i.csp, ptr %i.csm, align 2, !tbaa !28
  %i.csq = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 18
  %gep.us2195.1.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.1
  %i.csr = load i32, ptr %gep.us2195.1.1, align 4, !tbaa !30
  %i.css = lshr i32 %i.csr, 16
  %i.cst = trunc nuw i32 %i.css to i16
  store i16 %i.cst, ptr %i.csq, align 2, !tbaa !28
  %i.csu = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 20
  %gep.us2195.2.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.2
  %i.csv = load i32, ptr %gep.us2195.2.1, align 4, !tbaa !30
  %i.csw = lshr i32 %i.csv, 16
  %i.csx = trunc nuw i32 %i.csw to i16
  store i16 %i.csx, ptr %i.csu, align 2, !tbaa !28
  %i.csy = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 22
  %gep.us2195.3.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.3
  %i.csz = load i32, ptr %gep.us2195.3.1, align 4, !tbaa !30
  %i.cta = lshr i32 %i.csz, 16
  %i.ctb = trunc nuw i32 %i.cta to i16
  store i16 %i.ctb, ptr %i.csy, align 2, !tbaa !28
  %i.ctc = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 24
  %gep.us2195.4.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.4
  %i.ctd = load i32, ptr %gep.us2195.4.1, align 4, !tbaa !30
  %i.cte = lshr i32 %i.ctd, 16
  %i.ctf = trunc nuw i32 %i.cte to i16
  store i16 %i.ctf, ptr %i.ctc, align 2, !tbaa !28
  %i.ctg = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 26
  %gep.us2195.5.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.5
  %i.cth = load i32, ptr %gep.us2195.5.1, align 4, !tbaa !30
  %i.cti = lshr i32 %i.cth, 16
  %i.ctj = trunc nuw i32 %i.cti to i16
  store i16 %i.ctj, ptr %i.ctg, align 2, !tbaa !28
  %i.ctk = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 28
  %gep.us2195.6.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.6
  %i.ctl = load i32, ptr %gep.us2195.6.1, align 4, !tbaa !30
  %i.ctm = lshr i32 %i.ctl, 16
  %i.ctn = trunc nuw i32 %i.ctm to i16
  store i16 %i.ctn, ptr %i.ctk, align 2, !tbaa !28
  %i.cto = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 30
  %gep.us2195.7.1 = getelementptr i8, ptr %gep2184.us.1, i64 %.reass2177.us.7
  %i.ctp = load i32, ptr %gep.us2195.7.1, align 4, !tbaa !30
  %i.ctq = lshr i32 %i.ctp, 16
  %i.ctr = trunc nuw i32 %i.ctq to i16
  store i16 %i.ctr, ptr %i.cto, align 2, !tbaa !28
  %i.cts = getelementptr inbounds nuw i8, ptr %.57412187.us, i64 32 ; 3 uses
  %indvars.iv.next2719 = add nuw nsw i64 %indvars.iv2718, 1 ; 2 uses
  %exitcond2722.not = icmp eq i64 %indvars.iv.next2719, %wide.trip.count2721
  br i1 %exitcond2722.not, label %._crit_edge2189.us, label %.preheader1750.us, !llvm.loop !391

._crit_edge2189.us:                               ; preds = %.preheader1750.us
  %indvars.iv.next2724 = add nuw nsw i64 %indvars.iv2723, 8 ; 3 uses
  %i.ctt = trunc i64 %indvars.iv.next2724 to i32
  %i.ctu = or i32 %i.ctt, 7
  %i.ctv = icmp slt i32 %i.ctu, %2
  br i1 %i.ctv, label %.preheader1755.us, label %.preheader1759.loopexit, !llvm.loop !392

.preheader1759.loopexit:                          ; preds = %._crit_edge2189.us
  %i.ctw = trunc nuw i64 %indvars.iv.next2724 to i32
  br label %.preheader1759

.preheader1759:                                   ; preds = %.preheader1755.preheader, %.preheader1759.loopexit, %.preheader1760
  %.4740.lcssa = phi ptr [ %.0736.lcssa, %.preheader1760 ], [ %i.cts, %.preheader1759.loopexit ], [ %.0736.lcssa, %.preheader1755.preheader ] ; 3 uses
  %.1732.lcssa = phi i32 [ %.0731.lcssa, %.preheader1760 ], [ %i.ctw, %.preheader1759.loopexit ], [ %i.cqw, %.preheader1755.preheader ] ; 5 uses
  %i.ctx = or disjoint i32 %.1732.lcssa, 3
  %i.cty = icmp slt i32 %i.ctx, %2
  br i1 %i.cty, label %.preheader1754.lr.ph, label %.preheader1758

.preheader1754.lr.ph:                             ; preds = %.preheader1759
  %i.ctz = load i32, ptr %i.bxx, align 4
  %i.cua = load ptr, ptr %7, align 8              ; 3 uses
  %i.cub = load i64, ptr %i.bxz, align 8          ; 2 uses
  %i.cuc = sext i32 %i.ctz to i64
  %factor.op.mul2198 = mul i64 %i.cub, %i.cuc     ; 5 uses
  br i1 %i.bxw, label %.preheader1754.us.preheader, label %.preheader1754.preheader

.preheader1754.preheader:                         ; preds = %.preheader1754.lr.ph
  %i.cud = add nsw i32 %.1732.lcssa, 4
  %i.cue = sub i32 %i.byd, %.1732.lcssa
  %i.cuf = and i32 %i.cue, -4
  %i.cug = add i32 %i.cud, %i.cuf
  br label %.preheader1758

.preheader1754.us.preheader:                      ; preds = %.preheader1754.lr.ph
  %i.cuh = load i64, ptr %i.bxy, align 8
  %factor.op.mul2203 = mul i64 %i.cuh, %i.cub     ; 2 uses
  %i.cui = zext i32 %.1732.lcssa to i64
  %.reass2204.us = mul i64 %factor.op.mul2203, %indvars.iv2768 ; 3 uses
  %i.cuj = or disjoint i64 %indvars.iv2768, 1
  %.reass2204.us.1 = mul i64 %factor.op.mul2203, %i.cuj ; 3 uses
  %i.cuk = insertelement <4 x i64> poison, i64 %factor.op.mul2198, i64 0
  %i.cul = shufflevector <4 x i64> %i.cuk, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %iter.check3201

iter.check3201:                                   ; preds = %.preheader1754.us.preheader, %._crit_edge2211.us
  %indvars.iv2739 = phi i64 [ %i.cui, %.preheader1754.us.preheader ], [ %indvars.iv.next2740, %._crit_edge2211.us ] ; 5 uses
  %.87442213.us = phi ptr [ %.4740.lcssa, %.preheader1754.us.preheader ], [ %.lcssa2912, %._crit_edge2211.us ] ; 5 uses
  %.reass2199.us = mul i64 %factor.op.mul2198, %indvars.iv2739 ; 4 uses
  %i.cum = or disjoint i64 %indvars.iv2739, 1     ; 2 uses
  %.reass2199.us.1 = mul i64 %factor.op.mul2198, %i.cum ; 4 uses
  %i.cun = insertelement <2 x i64> poison, i64 %indvars.iv2739, i64 0
  %i.cuo = shufflevector <2 x i64> %i.cun, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.cup = or disjoint <2 x i64> %i.cuo, <i64 2, i64 3> ; 3 uses
  %i.cuq = extractelement <2 x i64> %i.cup, i64 0
  %.reass2199.us.2 = mul i64 %factor.op.mul2198, %i.cuq ; 4 uses
  %i.cur = insertelement <4 x i64> poison, i64 %indvars.iv2739, i64 0
  %i.cus = insertelement <4 x i64> %i.cur, i64 %i.cum, i64 1
  %i.cut = shufflevector <2 x i64> %i.cup, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cuu = shufflevector <4 x i64> %i.cus, <4 x i64> %i.cut, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cuv = mul <4 x i64> %i.cul, %i.cuu
  %i.cuw = shufflevector <4 x i64> %i.cuv, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.cux = extractelement <2 x i64> %i.cup, i64 1
  %.reass2199.us.3 = mul i64 %factor.op.mul2198, %i.cux ; 4 uses
  br i1 %min.iters.check3179, label %.preheader1749.us.preheader, label %vector.main.loop.iter.check3180

vector.main.loop.iter.check3180:                  ; preds = %iter.check3201
  br i1 %min.iters.check3181, label %vec.epilog.ph3205, label %vector.ph3182

vector.ph3182:                                    ; preds = %vector.main.loop.iter.check3180
  %i.cuy = getelementptr i8, ptr %.87442213.us, i64 %i.byi ; 2 uses
  br label %vector.body3184

vector.body3184:                                  ; preds = %vector.body3184, %vector.ph3182
  %index3185 = phi i64 [ 0, %vector.ph3182 ], [ %index.next3196, %vector.body3184 ] ; 3 uses
  %i.cuz = shl i64 %index3185, 4
  %next.gep3186 = getelementptr i8, ptr %.87442213.us, i64 %i.cuz
  %i.cva = getelementptr [4 x i8], ptr %i.cua, i64 %index3185 ; 2 uses
  %i.cvb = getelementptr i8, ptr %i.cva, i64 %.reass2204.us ; 4 uses
  %i.cvc = getelementptr i8, ptr %i.cvb, i64 %.reass2199.us
  %wide.load3187 = load <16 x i32>, ptr %i.cvc, align 4, !tbaa !30
  %i.cvd = getelementptr i8, ptr %i.cvb, i64 %.reass2199.us.1
  %wide.load3188 = load <16 x i32>, ptr %i.cvd, align 4, !tbaa !30
  %i.cve = getelementptr i8, ptr %i.cvb, i64 %.reass2199.us.2
  %wide.load3189 = load <16 x i32>, ptr %i.cve, align 4, !tbaa !30
  %i.cvf = getelementptr i8, ptr %i.cvb, i64 %.reass2199.us.3
  %wide.load3190 = load <16 x i32>, ptr %i.cvf, align 4, !tbaa !30
  %i.cvg = getelementptr i8, ptr %i.cva, i64 %.reass2204.us.1 ; 4 uses
  %i.cvh = getelementptr i8, ptr %i.cvg, i64 %.reass2199.us
  %wide.load3191 = load <16 x i32>, ptr %i.cvh, align 4, !tbaa !30
  %i.cvi = getelementptr i8, ptr %i.cvg, i64 %.reass2199.us.1
  %wide.load3192 = load <16 x i32>, ptr %i.cvi, align 4, !tbaa !30
  %i.cvj = getelementptr i8, ptr %i.cvg, i64 %.reass2199.us.2
  %wide.load3193 = load <16 x i32>, ptr %i.cvj, align 4, !tbaa !30
  %i.cvk = getelementptr i8, ptr %i.cvg, i64 %.reass2199.us.3
  %wide.load3194 = load <16 x i32>, ptr %i.cvk, align 4, !tbaa !30
  %i.cvl = shufflevector <16 x i32> %wide.load3187, <16 x i32> %wide.load3188, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cvm = shufflevector <16 x i32> %wide.load3189, <16 x i32> %wide.load3190, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cvn = shufflevector <32 x i32> %i.cvl, <32 x i32> %i.cvm, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cvo = lshr <64 x i32> %i.cvn, splat (i32 16)
  %i.cvp = trunc nuw <64 x i32> %i.cvo to <64 x i16>
  %i.cvq = shufflevector <16 x i32> %wide.load3191, <16 x i32> %wide.load3192, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cvr = shufflevector <16 x i32> %wide.load3193, <16 x i32> %wide.load3194, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cvs = shufflevector <32 x i32> %i.cvq, <32 x i32> %i.cvr, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.cvt = lshr <64 x i32> %i.cvs, splat (i32 16)
  %i.cvu = trunc nuw <64 x i32> %i.cvt to <64 x i16>
  %interleaved.vec3195 = shufflevector <64 x i16> %i.cvp, <64 x i16> %i.cvu, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec3195, ptr %next.gep3186, align 2, !tbaa !28
  %index.next3196 = add nuw i64 %index3185, 16    ; 2 uses
  %i.cvv = icmp eq i64 %index.next3196, %n.vec3183
  br i1 %i.cvv, label %middle.block3197, label %vector.body3184, !llvm.loop !393

middle.block3197:                                 ; preds = %vector.body3184
  br i1 %cmp.n3198, label %._crit_edge2211.us, label %vec.epilog.iter.check3203

vec.epilog.iter.check3203:                        ; preds = %middle.block3197
  br i1 %min.epilog.iters.check3204, label %.preheader1749.us.preheader, label %vec.epilog.ph3205, !prof !437

vec.epilog.ph3205:                                ; preds = %vector.main.loop.iter.check3180, %vec.epilog.iter.check3203
  %vec.epilog.resume.val3199 = phi i64 [ %n.vec3183, %vec.epilog.iter.check3203 ], [ 0, %vector.main.loop.iter.check3180 ]
  %i.cvw = getelementptr i8, ptr %.87442213.us, i64 %i.byj ; 2 uses
  br label %vec.epilog.vector.body3207

vec.epilog.vector.body3207:                       ; preds = %vec.epilog.vector.body3207, %vec.epilog.ph3205
  %index3208 = phi i64 [ %vec.epilog.resume.val3199, %vec.epilog.ph3205 ], [ %index.next3219, %vec.epilog.vector.body3207 ] ; 3 uses
  %i.cvx = shl i64 %index3208, 4
  %next.gep3209 = getelementptr i8, ptr %.87442213.us, i64 %i.cvx
  %i.cvy = getelementptr [4 x i8], ptr %i.cua, i64 %index3208 ; 2 uses
  %i.cvz = getelementptr i8, ptr %i.cvy, i64 %.reass2204.us ; 4 uses
  %i.cwa = getelementptr i8, ptr %i.cvz, i64 %.reass2199.us
  %wide.load3210 = load <4 x i32>, ptr %i.cwa, align 4, !tbaa !30
  %i.cwb = getelementptr i8, ptr %i.cvz, i64 %.reass2199.us.1
  %wide.load3211 = load <4 x i32>, ptr %i.cwb, align 4, !tbaa !30
  %i.cwc = getelementptr i8, ptr %i.cvz, i64 %.reass2199.us.2
  %wide.load3212 = load <4 x i32>, ptr %i.cwc, align 4, !tbaa !30
  %i.cwd = getelementptr i8, ptr %i.cvz, i64 %.reass2199.us.3
  %wide.load3213 = load <4 x i32>, ptr %i.cwd, align 4, !tbaa !30
  %i.cwe = getelementptr i8, ptr %i.cvy, i64 %.reass2204.us.1 ; 4 uses
  %i.cwf = getelementptr i8, ptr %i.cwe, i64 %.reass2199.us
  %wide.load3214 = load <4 x i32>, ptr %i.cwf, align 4, !tbaa !30
  %i.cwg = getelementptr i8, ptr %i.cwe, i64 %.reass2199.us.1
  %wide.load3215 = load <4 x i32>, ptr %i.cwg, align 4, !tbaa !30
  %i.cwh = getelementptr i8, ptr %i.cwe, i64 %.reass2199.us.2
  %wide.load3216 = load <4 x i32>, ptr %i.cwh, align 4, !tbaa !30
  %i.cwi = getelementptr i8, ptr %i.cwe, i64 %.reass2199.us.3
  %wide.load3217 = load <4 x i32>, ptr %i.cwi, align 4, !tbaa !30
  %i.cwj = shufflevector <4 x i32> %wide.load3210, <4 x i32> %wide.load3211, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cwk = shufflevector <4 x i32> %wide.load3212, <4 x i32> %wide.load3213, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cwl = shufflevector <4 x i32> %wide.load3214, <4 x i32> %wide.load3215, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cwm = shufflevector <4 x i32> %wide.load3216, <4 x i32> %wide.load3217, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cwn = shufflevector <8 x i32> %i.cwj, <8 x i32> %i.cwk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cwo = shufflevector <8 x i32> %i.cwl, <8 x i32> %i.cwm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cwp = shufflevector <16 x i32> %i.cwn, <16 x i32> %i.cwo, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.cwq = lshr <32 x i32> %i.cwp, splat (i32 16)
  %interleaved.vec3218 = trunc nuw <32 x i32> %i.cwq to <32 x i16>
  store <32 x i16> %interleaved.vec3218, ptr %next.gep3209, align 2, !tbaa !28
  %index.next3219 = add nuw i64 %index3208, 4     ; 2 uses
  %i.cwr = icmp eq i64 %index.next3219, %n.vec3206
  br i1 %i.cwr, label %vec.epilog.middle.block3220, label %vec.epilog.vector.body3207, !llvm.loop !394

vec.epilog.middle.block3220:                      ; preds = %vec.epilog.vector.body3207
  br i1 %cmp.n3221, label %._crit_edge2211.us, label %.preheader1749.us.preheader

.preheader1749.us.preheader:                      ; preds = %iter.check3201, %vec.epilog.iter.check3203, %vec.epilog.middle.block3220
  %indvars.iv2734.ph = phi i64 [ 0, %iter.check3201 ], [ %n.vec3183, %vec.epilog.iter.check3203 ], [ %n.vec3206, %vec.epilog.middle.block3220 ]
  %.97452209.us.ph = phi ptr [ %.87442213.us, %iter.check3201 ], [ %i.cuy, %vec.epilog.iter.check3203 ], [ %i.cvw, %vec.epilog.middle.block3220 ]
  br label %.preheader1749.us

.preheader1749.us:                                ; preds = %.preheader1749.us.preheader, %.preheader1749.us
  %indvars.iv2734 = phi i64 [ %indvars.iv.next2735, %.preheader1749.us ], [ %indvars.iv2734.ph, %.preheader1749.us.preheader ] ; 2 uses
  %.97452209.us = phi ptr [ %i.cwz, %.preheader1749.us ], [ %.97452209.us.ph, %.preheader1749.us.preheader ] ; 2 uses
  %invariant.gep2205.us = getelementptr [4 x i8], ptr %i.cua, i64 %indvars.iv2734 ; 2 uses
  %gep2206.us = getelementptr i8, ptr %invariant.gep2205.us, i64 %.reass2204.us
  %gep2206.us.1 = getelementptr i8, ptr %invariant.gep2205.us, i64 %.reass2204.us.1
  %i.cws = insertelement <8 x ptr> poison, ptr %gep2206.us, i64 0
  %i.cwt = insertelement <8 x ptr> %i.cws, ptr %gep2206.us.1, i64 1
  %i.cwu = shufflevector <8 x ptr> %i.cwt, <8 x ptr> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.cwv = getelementptr i8, <8 x ptr> %i.cwu, <8 x i64> %i.cuw
  %i.cww = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %i.cwv, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !30
  %i.cwx = lshr <8 x i32> %i.cww, splat (i32 16)
  %i.cwy = trunc nuw <8 x i32> %i.cwx to <8 x i16>
  store <8 x i16> %i.cwy, ptr %.97452209.us, align 2, !tbaa !28
  %i.cwz = getelementptr inbounds nuw i8, ptr %.97452209.us, i64 16 ; 2 uses
  %indvars.iv.next2735 = add nuw nsw i64 %indvars.iv2734, 1 ; 2 uses
  %exitcond2738.not = icmp eq i64 %indvars.iv.next2735, %wide.trip.count2737
  br i1 %exitcond2738.not, label %._crit_edge2211.us, label %.preheader1749.us, !llvm.loop !395

._crit_edge2211.us:                               ; preds = %.preheader1749.us, %vec.epilog.middle.block3220, %middle.block3197
  %.lcssa2912 = phi ptr [ %i.cvw, %vec.epilog.middle.block3220 ], [ %i.cuy, %middle.block3197 ], [ %i.cwz, %.preheader1749.us ] ; 2 uses
  %indvars.iv.next2740 = add nuw nsw i64 %indvars.iv2739, 4 ; 3 uses
  %i.cxa = trunc i64 %indvars.iv.next2740 to i32
  %i.cxb = or i32 %i.cxa, 3
  %i.cxc = icmp slt i32 %i.cxb, %2
  br i1 %i.cxc, label %iter.check3201, label %.preheader1758.loopexit, !llvm.loop !396

.preheader1758.loopexit:                          ; preds = %._crit_edge2211.us
  %i.cxd = trunc nuw i64 %indvars.iv.next2740 to i32
  br label %.preheader1758

.preheader1758:                                   ; preds = %.preheader1754.preheader, %.preheader1758.loopexit, %.preheader1759
  %.8744.lcssa = phi ptr [ %.4740.lcssa, %.preheader1759 ], [ %.lcssa2912, %.preheader1758.loopexit ], [ %.4740.lcssa, %.preheader1754.preheader ] ; 3 uses
  %.2733.lcssa = phi i32 [ %.1732.lcssa, %.preheader1759 ], [ %i.cxd, %.preheader1758.loopexit ], [ %i.cug, %.preheader1754.preheader ] ; 5 uses
  %i.cxe = or disjoint i32 %.2733.lcssa, 1
  %i.cxf = icmp slt i32 %i.cxe, %2
  br i1 %i.cxf, label %.preheader1753.lr.ph, label %.preheader1757

.preheader1753.lr.ph:                             ; preds = %.preheader1758
  %i.cxg = load i32, ptr %i.bxx, align 4
  %i.cxh = load ptr, ptr %7, align 8              ; 3 uses
  %i.cxi = load i64, ptr %i.bxz, align 8          ; 2 uses
  %i.cxj = sext i32 %i.cxg to i64
  %factor.op.mul2220 = mul i64 %i.cxi, %i.cxj     ; 2 uses
  br i1 %i.bxw, label %.preheader1753.us.preheader, label %.preheader1753.preheader

.preheader1753.preheader:                         ; preds = %.preheader1753.lr.ph
  %i.cxk = add nsw i32 %.2733.lcssa, 2
  %i.cxl = sub i32 %i.bye, %.2733.lcssa
  %i.cxm = and i32 %i.cxl, -2
  %i.cxn = add i32 %i.cxk, %i.cxm
  br label %.preheader1757

.preheader1753.us.preheader:                      ; preds = %.preheader1753.lr.ph
  %i.cxo = load i64, ptr %i.bxy, align 8
  %factor.op.mul2225 = mul i64 %i.cxo, %i.cxi     ; 2 uses
  %i.cxp = zext i32 %.2733.lcssa to i64
  %.reass2226.us = mul i64 %factor.op.mul2225, %indvars.iv2768 ; 3 uses
  %i.cxq = or disjoint i64 %indvars.iv2768, 1
  %.reass2226.us.1 = mul i64 %factor.op.mul2225, %i.cxq ; 3 uses
  br label %iter.check3160

iter.check3160:                                   ; preds = %.preheader1753.us.preheader, %._crit_edge2233.us
  %indvars.iv2754 = phi i64 [ %i.cxp, %.preheader1753.us.preheader ], [ %indvars.iv.next2755, %._crit_edge2233.us ] ; 3 uses
  %.127482235.us = phi ptr [ %.8744.lcssa, %.preheader1753.us.preheader ], [ %.lcssa2913, %._crit_edge2233.us ] ; 5 uses
  %.reass2221.us = mul i64 %factor.op.mul2220, %indvars.iv2754 ; 6 uses
  %i.cxr = or disjoint i64 %indvars.iv2754, 1
  %.reass2221.us.1 = mul i64 %factor.op.mul2220, %i.cxr ; 6 uses
  br i1 %min.iters.check3142, label %.preheader1748.us.preheader, label %vector.main.loop.iter.check3143

vector.main.loop.iter.check3143:                  ; preds = %iter.check3160
  br i1 %min.iters.check3144, label %vec.epilog.ph3164, label %vector.ph3145

vector.ph3145:                                    ; preds = %vector.main.loop.iter.check3143
  %i.cxs = getelementptr i8, ptr %.127482235.us, i64 %i.byl ; 2 uses
  br label %vector.body3147

vector.body3147:                                  ; preds = %vector.body3147, %vector.ph3145
  %index3148 = phi i64 [ 0, %vector.ph3145 ], [ %index.next3155, %vector.body3147 ] ; 3 uses
  %i.cxt = shl i64 %index3148, 3
  %next.gep3149 = getelementptr i8, ptr %.127482235.us, i64 %i.cxt
  %i.cxu = getelementptr [4 x i8], ptr %i.cxh, i64 %index3148 ; 2 uses
  %i.cxv = getelementptr i8, ptr %i.cxu, i64 %.reass2226.us ; 2 uses
  %i.cxw = getelementptr i8, ptr %i.cxv, i64 %.reass2221.us
  %wide.load3150 = load <16 x i32>, ptr %i.cxw, align 4, !tbaa !30
  %i.cxx = getelementptr i8, ptr %i.cxv, i64 %.reass2221.us.1
  %wide.load3151 = load <16 x i32>, ptr %i.cxx, align 4, !tbaa !30
  %i.cxy = getelementptr i8, ptr %i.cxu, i64 %.reass2226.us.1 ; 2 uses
  %i.cxz = getelementptr i8, ptr %i.cxy, i64 %.reass2221.us
  %wide.load3152 = load <16 x i32>, ptr %i.cxz, align 4, !tbaa !30
  %i.cya = getelementptr i8, ptr %i.cxy, i64 %.reass2221.us.1
  %wide.load3153 = load <16 x i32>, ptr %i.cya, align 4, !tbaa !30
  %i.cyb = shufflevector <16 x i32> %wide.load3150, <16 x i32> %wide.load3151, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cyc = lshr <32 x i32> %i.cyb, splat (i32 16)
  %i.cyd = trunc nuw <32 x i32> %i.cyc to <32 x i16>
  %i.cye = shufflevector <16 x i32> %wide.load3152, <16 x i32> %wide.load3153, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.cyf = lshr <32 x i32> %i.cye, splat (i32 16)
  %i.cyg = trunc nuw <32 x i32> %i.cyf to <32 x i16>
  %interleaved.vec3154 = shufflevector <32 x i16> %i.cyd, <32 x i16> %i.cyg, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec3154, ptr %next.gep3149, align 2, !tbaa !28
  %index.next3155 = add nuw i64 %index3148, 16    ; 2 uses
  %i.cyh = icmp eq i64 %index.next3155, %n.vec3146
  br i1 %i.cyh, label %middle.block3156, label %vector.body3147, !llvm.loop !397

middle.block3156:                                 ; preds = %vector.body3147
  br i1 %cmp.n3157, label %._crit_edge2233.us, label %vec.epilog.iter.check3162

vec.epilog.iter.check3162:                        ; preds = %middle.block3156
  br i1 %min.epilog.iters.check3163, label %.preheader1748.us.preheader, label %vec.epilog.ph3164, !prof !437

vec.epilog.ph3164:                                ; preds = %vector.main.loop.iter.check3143, %vec.epilog.iter.check3162
  %vec.epilog.resume.val3158 = phi i64 [ %n.vec3146, %vec.epilog.iter.check3162 ], [ 0, %vector.main.loop.iter.check3143 ]
  %i.cyi = getelementptr i8, ptr %.127482235.us, i64 %i.bym ; 2 uses
  br label %vec.epilog.vector.body3166

vec.epilog.vector.body3166:                       ; preds = %vec.epilog.vector.body3166, %vec.epilog.ph3164
  %index3167 = phi i64 [ %vec.epilog.resume.val3158, %vec.epilog.ph3164 ], [ %index.next3174, %vec.epilog.vector.body3166 ] ; 3 uses
  %i.cyj = shl i64 %index3167, 3
  %next.gep3168 = getelementptr i8, ptr %.127482235.us, i64 %i.cyj
  %i.cyk = getelementptr [4 x i8], ptr %i.cxh, i64 %index3167 ; 2 uses
  %i.cyl = getelementptr i8, ptr %i.cyk, i64 %.reass2226.us ; 2 uses
  %i.cym = getelementptr i8, ptr %i.cyl, i64 %.reass2221.us
  %wide.load3169 = load <4 x i32>, ptr %i.cym, align 4, !tbaa !30
  %i.cyn = getelementptr i8, ptr %i.cyl, i64 %.reass2221.us.1
  %wide.load3170 = load <4 x i32>, ptr %i.cyn, align 4, !tbaa !30
  %i.cyo = getelementptr i8, ptr %i.cyk, i64 %.reass2226.us.1 ; 2 uses
  %i.cyp = getelementptr i8, ptr %i.cyo, i64 %.reass2221.us
  %wide.load3171 = load <4 x i32>, ptr %i.cyp, align 4, !tbaa !30
  %i.cyq = getelementptr i8, ptr %i.cyo, i64 %.reass2221.us.1
  %wide.load3172 = load <4 x i32>, ptr %i.cyq, align 4, !tbaa !30
  %i.cyr = shufflevector <4 x i32> %wide.load3169, <4 x i32> %wide.load3170, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cys = shufflevector <4 x i32> %wide.load3171, <4 x i32> %wide.load3172, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cyt = shufflevector <8 x i32> %i.cyr, <8 x i32> %i.cys, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.cyu = lshr <16 x i32> %i.cyt, splat (i32 16)
  %interleaved.vec3173 = trunc nuw <16 x i32> %i.cyu to <16 x i16>
  store <16 x i16> %interleaved.vec3173, ptr %next.gep3168, align 2, !tbaa !28
  %index.next3174 = add nuw i64 %index3167, 4     ; 2 uses
  %i.cyv = icmp eq i64 %index.next3174, %n.vec3165
  br i1 %i.cyv, label %vec.epilog.middle.block3175, label %vec.epilog.vector.body3166, !llvm.loop !398

vec.epilog.middle.block3175:                      ; preds = %vec.epilog.vector.body3166
  br i1 %cmp.n3176, label %._crit_edge2233.us, label %.preheader1748.us.preheader

.preheader1748.us.preheader:                      ; preds = %iter.check3160, %vec.epilog.iter.check3162, %vec.epilog.middle.block3175
  %indvars.iv2749.ph = phi i64 [ 0, %iter.check3160 ], [ %n.vec3146, %vec.epilog.iter.check3162 ], [ %n.vec3165, %vec.epilog.middle.block3175 ]
  %.137492231.us.ph = phi ptr [ %.127482235.us, %iter.check3160 ], [ %i.cxs, %vec.epilog.iter.check3162 ], [ %i.cyi, %vec.epilog.middle.block3175 ]
  br label %.preheader1748.us

.preheader1748.us:                                ; preds = %.preheader1748.us.preheader, %.preheader1748.us
  %indvars.iv2749 = phi i64 [ %indvars.iv.next2750, %.preheader1748.us ], [ %indvars.iv2749.ph, %.preheader1748.us.preheader ] ; 2 uses
  %.137492231.us = phi ptr [ %i.czl, %.preheader1748.us ], [ %.137492231.us.ph, %.preheader1748.us.preheader ] ; 5 uses
  %invariant.gep2227.us = getelementptr [4 x i8], ptr %i.cxh, i64 %indvars.iv2749 ; 2 uses
  %gep2228.us = getelementptr i8, ptr %invariant.gep2227.us, i64 %.reass2226.us ; 2 uses
  %gep.us2239 = getelementptr i8, ptr %gep2228.us, i64 %.reass2221.us
  %i.cyw = load i32, ptr %gep.us2239, align 4, !tbaa !30
  %i.cyx = lshr i32 %i.cyw, 16
  %i.cyy = trunc nuw i32 %i.cyx to i16
  store i16 %i.cyy, ptr %.137492231.us, align 2, !tbaa !28
  %i.cyz = getelementptr inbounds nuw i8, ptr %.137492231.us, i64 2
  %gep.us2239.1 = getelementptr i8, ptr %gep2228.us, i64 %.reass2221.us.1
  %i.cza = load i32, ptr %gep.us2239.1, align 4, !tbaa !30
  %i.czb = lshr i32 %i.cza, 16
  %i.czc = trunc nuw i32 %i.czb to i16
  store i16 %i.czc, ptr %i.cyz, align 2, !tbaa !28
  %i.czd = getelementptr inbounds nuw i8, ptr %.137492231.us, i64 4
  %gep2228.us.1 = getelementptr i8, ptr %invariant.gep2227.us, i64 %.reass2226.us.1 ; 2 uses
  %gep.us2239.12748 = getelementptr i8, ptr %gep2228.us.1, i64 %.reass2221.us
  %i.cze = load i32, ptr %gep.us2239.12748, align 4, !tbaa !30
  %i.czf = lshr i32 %i.cze, 16
  %i.czg = trunc nuw i32 %i.czf to i16
  store i16 %i.czg, ptr %i.czd, align 2, !tbaa !28
  %i.czh = getelementptr inbounds nuw i8, ptr %.137492231.us, i64 6
  %gep.us2239.1.1 = getelementptr i8, ptr %gep2228.us.1, i64 %.reass2221.us.1
  %i.czi = load i32, ptr %gep.us2239.1.1, align 4, !tbaa !30
  %i.czj = lshr i32 %i.czi, 16
  %i.czk = trunc nuw i32 %i.czj to i16
  store i16 %i.czk, ptr %i.czh, align 2, !tbaa !28
  %i.czl = getelementptr inbounds nuw i8, ptr %.137492231.us, i64 8 ; 2 uses
  %indvars.iv.next2750 = add nuw nsw i64 %indvars.iv2749, 1 ; 2 uses
  %exitcond2753.not = icmp eq i64 %indvars.iv.next2750, %wide.trip.count2752
  br i1 %exitcond2753.not, label %._crit_edge2233.us, label %.preheader1748.us, !llvm.loop !399

._crit_edge2233.us:                               ; preds = %.preheader1748.us, %vec.epilog.middle.block3175, %middle.block3156
  %.lcssa2913 = phi ptr [ %i.cyi, %vec.epilog.middle.block3175 ], [ %i.cxs, %middle.block3156 ], [ %i.czl, %.preheader1748.us ] ; 2 uses
  %indvars.iv.next2755 = add nuw nsw i64 %indvars.iv2754, 2 ; 3 uses
  %i.czm = trunc i64 %indvars.iv.next2755 to i32
  %i.czn = or i32 %i.czm, 1
  %i.czo = icmp slt i32 %i.czn, %2
  br i1 %i.czo, label %iter.check3160, label %.preheader1757.loopexit, !llvm.loop !400

.preheader1757.loopexit:                          ; preds = %._crit_edge2233.us
  %i.czp = trunc nuw i64 %indvars.iv.next2755 to i32
  br label %.preheader1757

.preheader1757:                                   ; preds = %.preheader1753.preheader, %.preheader1757.loopexit, %.preheader1758
  %.12748.lcssa = phi ptr [ %.8744.lcssa, %.preheader1758 ], [ %.lcssa2913, %.preheader1757.loopexit ], [ %.8744.lcssa, %.preheader1753.preheader ]
  %.3734.lcssa = phi i32 [ %.2733.lcssa, %.preheader1758 ], [ %i.czp, %.preheader1757.loopexit ], [ %i.cxn, %.preheader1753.preheader ] ; 2 uses
  %i.czq = icmp slt i32 %.3734.lcssa, %2
  br i1 %i.czq, label %.preheader1752.lr.ph, label %._crit_edge2255.split

.preheader1752.lr.ph:                             ; preds = %.preheader1757
  %i.czr = load i32, ptr %i.bxx, align 4
  %i.czs = load ptr, ptr %7, align 8
  %i.czt = load i64, ptr %i.bxz, align 8          ; 2 uses
  %i.czu = sext i32 %i.czr to i64
  %factor.op.mul2256 = mul i64 %i.czt, %i.czu
  br i1 %i.bxw, label %.preheader1752.preheader, label %._crit_edge2255.split

.preheader1752.preheader:                         ; preds = %.preheader1752.lr.ph
  %i.czv = load i64, ptr %i.bxy, align 8
  %factor.op.mul2242 = mul i64 %i.czv, %i.czt     ; 2 uses
  %i.czw = zext i32 %.3734.lcssa to i64
  %.reass2243 = mul i64 %factor.op.mul2242, %indvars.iv2768 ; 3 uses
  %i.czx = or disjoint i64 %indvars.iv2768, 1
  %.reass2243.1 = mul i64 %factor.op.mul2242, %i.czx ; 3 uses
  br label %iter.check3125

iter.check3125:                                   ; preds = %.preheader1752.preheader, %._crit_edge2251
  %indvars.iv2765 = phi i64 [ %i.czw, %.preheader1752.preheader ], [ %indvars.iv.next2766, %._crit_edge2251 ] ; 2 uses
  %.162253 = phi ptr [ %.12748.lcssa, %.preheader1752.preheader ], [ %.lcssa2914, %._crit_edge2251 ] ; 5 uses
  %.reass2257 = mul i64 %factor.op.mul2256, %indvars.iv2765
  %invariant.gep2244 = getelementptr i8, ptr %i.czs, i64 %.reass2257 ; 3 uses
  br i1 %min.iters.check3109, label %.preheader1747.preheader, label %vector.main.loop.iter.check3110

vector.main.loop.iter.check3110:                  ; preds = %iter.check3125
  br i1 %min.iters.check3111, label %vec.epilog.ph3129, label %vector.ph3112

vector.ph3112:                                    ; preds = %vector.main.loop.iter.check3110
  %i.czy = getelementptr i8, ptr %.162253, i64 %i.byo ; 2 uses
  br label %vector.body3114

vector.body3114:                                  ; preds = %vector.body3114, %vector.ph3112
  %index3115 = phi i64 [ 0, %vector.ph3112 ], [ %index.next3120, %vector.body3114 ] ; 3 uses
  %i.czz = shl i64 %index3115, 2
  %next.gep3116 = getelementptr i8, ptr %.162253, i64 %i.czz
  %i.daa = getelementptr [4 x i8], ptr %invariant.gep2244, i64 %index3115 ; 2 uses
  %i.dab = getelementptr i8, ptr %i.daa, i64 %.reass2243
  %wide.load3117 = load <16 x i32>, ptr %i.dab, align 4, !tbaa !30
  %i.dac = getelementptr i8, ptr %i.daa, i64 %.reass2243.1
  %wide.load3118 = load <16 x i32>, ptr %i.dac, align 4, !tbaa !30
  %i.dad = shufflevector <16 x i32> %wide.load3117, <16 x i32> %wide.load3118, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.dae = lshr <32 x i32> %i.dad, splat (i32 16)
  %interleaved.vec3119 = trunc nuw <32 x i32> %i.dae to <32 x i16>
  store <32 x i16> %interleaved.vec3119, ptr %next.gep3116, align 2, !tbaa !28
  %index.next3120 = add nuw i64 %index3115, 16    ; 2 uses
  %i.daf = icmp eq i64 %index.next3120, %n.vec3113
  br i1 %i.daf, label %middle.block3121, label %vector.body3114, !llvm.loop !401

end_hunk_13
begin_hunk_14_@_ZN4ncnnL43deconvolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii:bb.a
  br label %vec.epilog.vector.body3131

vec.epilog.vector.body3131:                       ; preds = %vec.epilog.vector.body3131, %vec.epilog.ph3129
  %index3132 = phi i64 [ %vec.epilog.resume.val3123, %vec.epilog.ph3129 ], [ %index.next3137, %vec.epilog.vector.body3131 ] ; 3 uses
  %i.dah = shl i64 %index3132, 2
  %next.gep3133 = getelementptr i8, ptr %.162253, i64 %i.dah
  %i.dai = getelementptr [4 x i8], ptr %invariant.gep2244, i64 %index3132 ; 2 uses
  %i.daj = getelementptr i8, ptr %i.dai, i64 %.reass2243
  %wide.load3134 = load <4 x i32>, ptr %i.daj, align 4, !tbaa !30
  %i.dak = getelementptr i8, ptr %i.dai, i64 %.reass2243.1
  %wide.load3135 = load <4 x i32>, ptr %i.dak, align 4, !tbaa !30
  %i.dal = shufflevector <4 x i32> %wide.load3134, <4 x i32> %wide.load3135, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.dam = lshr <8 x i32> %i.dal, splat (i32 16)
  %interleaved.vec3136 = trunc nuw <8 x i32> %i.dam to <8 x i16>
  store <8 x i16> %interleaved.vec3136, ptr %next.gep3133, align 2, !tbaa !28
  %index.next3137 = add nuw i64 %index3132, 4     ; 2 uses
  %i.dan = icmp eq i64 %index.next3137, %n.vec3130
  br i1 %i.dan, label %vec.epilog.middle.block3138, label %vec.epilog.vector.body3131, !llvm.loop !402

vec.epilog.middle.block3138:                      ; preds = %vec.epilog.vector.body3131
  br i1 %cmp.n3139, label %._crit_edge2251, label %.preheader1747.preheader

.preheader1747.preheader:                         ; preds = %iter.check3125, %vec.epilog.iter.check3127, %vec.epilog.middle.block3138
  %indvars.iv2760.ph = phi i64 [ 0, %iter.check3125 ], [ %n.vec3113, %vec.epilog.iter.check3127 ], [ %n.vec3130, %vec.epilog.middle.block3138 ]
  %.172249.ph = phi ptr [ %.162253, %iter.check3125 ], [ %i.czy, %vec.epilog.iter.check3127 ], [ %i.dag, %vec.epilog.middle.block3138 ]
  br label %.preheader1747

.preheader1747:                                   ; preds = %.preheader1747.preheader, %.preheader1747
  %indvars.iv2760 = phi i64 [ %indvars.iv.next2761, %.preheader1747 ], [ %indvars.iv2760.ph, %.preheader1747.preheader ] ; 2 uses
  %.172249 = phi ptr [ %i.dav, %.preheader1747 ], [ %.172249.ph, %.preheader1747.preheader ] ; 3 uses
  %invariant.gep2245 = getelementptr [4 x i8], ptr %invariant.gep2244, i64 %indvars.iv2760 ; 2 uses
  %gep2246 = getelementptr i8, ptr %invariant.gep2245, i64 %.reass2243
  %i.dao = load i32, ptr %gep2246, align 4, !tbaa !30
  %i.dap = lshr i32 %i.dao, 16
  %i.daq = trunc nuw i32 %i.dap to i16
  store i16 %i.daq, ptr %.172249, align 2, !tbaa !28
  %i.dar = getelementptr inbounds nuw i8, ptr %.172249, i64 2
  %gep2246.1 = getelementptr i8, ptr %invariant.gep2245, i64 %.reass2243.1
  %i.das = load i32, ptr %gep2246.1, align 4, !tbaa !30
  %i.dat = lshr i32 %i.das, 16
  %i.dau = trunc nuw i32 %i.dat to i16
  store i16 %i.dau, ptr %i.dar, align 2, !tbaa !28
  %i.dav = getelementptr inbounds nuw i8, ptr %.172249, i64 4 ; 2 uses
  %indvars.iv.next2761 = add nuw nsw i64 %indvars.iv2760, 1 ; 2 uses
  %exitcond2764.not = icmp eq i64 %indvars.iv.next2761, %wide.trip.count2763
  br i1 %exitcond2764.not, label %._crit_edge2251, label %.preheader1747, !llvm.loop !403

._crit_edge2251:                                  ; preds = %.preheader1747, %vec.epilog.middle.block3138, %middle.block3121
  %.lcssa2914 = phi ptr [ %i.dag, %vec.epilog.middle.block3138 ], [ %i.czy, %middle.block3121 ], [ %i.dav, %.preheader1747 ]
  %indvars.iv.next2766 = add nuw nsw i64 %indvars.iv2765, 1 ; 2 uses
  %i.daw = trunc nuw i64 %indvars.iv.next2766 to i32
  %i.dax = icmp sgt i32 %2, %i.daw
  br i1 %i.dax, label %iter.check3125, label %._crit_edge2255.split, !llvm.loop !404

._crit_edge2255.split:                            ; preds = %._crit_edge2251, %.preheader1752.lr.ph, %.preheader1757
  %indvars.iv.next2769 = add nuw nsw i64 %indvars.iv2768, 2 ; 3 uses
  %i.day = trunc i64 %indvars.iv.next2769 to i32
  %i.daz = or i32 %i.day, 1
  %i.dba = icmp slt i32 %i.daz, %3
  br i1 %i.dba, label %.noexc946, label %.preheader1742.loopexit, !llvm.loop !405

.noexc934:                                        ; preds = %.noexc934.lr.ph, %._crit_edge2334.split
  %indvars.iv2826 = phi i64 [ %i.cnv, %.noexc934.lr.ph ], [ %indvars.iv.next2827, %._crit_edge2334.split ] ; 7 uses
  %i.dbb = trunc i64 %indvars.iv2826 to i32       ; 2 uses
  %i.dbc = lshr i32 %i.dbb, 4
  %i.dbd = insertelement <4 x i32> poison, i32 %i.dbb, i64 0
  %i.dbe = shufflevector <4 x i32> %i.dbd, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dbf = lshr <4 x i32> %i.dbe, <i32 0, i32 3, i32 2, i32 1>
  %i.dbg = and <4 x i32> %i.dbf, splat (i32 1)
  %i.dbh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dbg)
  %op.rdx = add nuw nsw i32 %i.dbh, %i.dbc
  %i.dbi = zext nneg i32 %op.rdx to i64
  %.reass2340 = mul i64 %factor.op.mul2339, %i.dbi
  %i.dbj = getelementptr inbounds nuw i8, ptr %i.cng, i64 %.reass2340 ; 3 uses
  br i1 %i.cnl, label %.preheader1737.lr.ph, label %.preheader1741

.preheader1737.lr.ph:                             ; preds = %.noexc934
  %i.dbk = load i32, ptr %i.cnn, align 4
  %i.dbl = load ptr, ptr %7, align 8
  %i.dbm = load i64, ptr %i.cno, align 8
  %i.dbn = mul i64 %i.dbm, %indvars.iv2826
  %i.dbo = load i64, ptr %i.cnp, align 8          ; 2 uses
  %i.dbp = mul i64 %i.dbn, %i.dbo
  %i.dbq = getelementptr inbounds nuw i8, ptr %i.dbl, i64 %i.dbp ; 5 uses
  %i.dbr = sext i32 %i.dbk to i64
  %factor.op.mul2264 = mul i64 %i.dbo, %i.dbr
  br i1 %i.cnm, label %.preheader1737.us.preheader, label %.preheader1741

.preheader1737.us.preheader:                      ; preds = %.preheader1737.lr.ph
  %i.dbs = insertelement <16 x i64> poison, i64 %factor.op.mul2264, i64 0
  %i.dbt = shufflevector <16 x i64> %i.dbs, <16 x i64> poison, <16 x i32> zeroinitializer
  br label %.preheader1737.us

.preheader1737.us:                                ; preds = %.preheader1737.us.preheader, %._crit_edge2271.us
  %indvars.iv2780 = phi i64 [ %indvars.iv.next2781, %._crit_edge2271.us ], [ 0, %.preheader1737.us.preheader ] ; 2 uses
  %.07122273.us = phi ptr [ %.lcssa, %._crit_edge2271.us ], [ %i.dbj, %.preheader1737.us.preheader ] ; 2 uses
  %i.dbu = insertelement <16 x i64> poison, i64 %indvars.iv2780, i64 0
  %i.dbv = shufflevector <16 x i64> %i.dbu, <16 x i64> poison, <16 x i32> zeroinitializer
  %i.dbw = or disjoint <16 x i64> %i.dbv, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %i.dbx = mul <16 x i64> %i.dbt, %i.dbw          ; 5 uses
  br i1 %i.cnx, label %.preheader1732.us.epil.preheader, label %.preheader1737.us.new

.preheader1737.us.new:                            ; preds = %.preheader1737.us
  %invariant.gep3458 = getelementptr i8, ptr %i.dbq, <16 x i64> %i.dbx
  br label %.preheader1732.us

.preheader1732.us:                                ; preds = %.preheader1732.us, %.preheader1737.us.new
  %indvars.iv2775 = phi i64 [ 0, %.preheader1737.us.new ], [ %indvars.iv.next2776.3, %.preheader1732.us ] ; 5 uses
  %.17132269.us = phi ptr [ %.07122273.us, %.preheader1737.us.new ], [ %i.dct, %.preheader1732.us ] ; 5 uses
  %niter3419 = phi i64 [ 0, %.preheader1737.us.new ], [ %niter3419.next.3, %.preheader1732.us ]
  %gep3459 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3458, i64 %indvars.iv2775
  %i.dby = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep3459, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.dbz = lshr <16 x i32> %i.dby, splat (i32 16)
  %i.dca = trunc nuw <16 x i32> %i.dbz to <16 x i16>
  store <16 x i16> %i.dca, ptr %.17132269.us, align 2, !tbaa !28
  %i.dcb = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 32
  %i.dcc = getelementptr [4 x i8], ptr %i.dbq, i64 %indvars.iv2775
  %invariant.gep2266.us.1 = getelementptr i8, ptr %i.dcc, i64 4
  %i.dcd = getelementptr i8, ptr %invariant.gep2266.us.1, <16 x i64> %i.dbx
  %i.dce = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.dcd, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.dcf = lshr <16 x i32> %i.dce, splat (i32 16)
  %i.dcg = trunc nuw <16 x i32> %i.dcf to <16 x i16>
  store <16 x i16> %i.dcg, ptr %i.dcb, align 2, !tbaa !28
  %i.dch = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 64
  %i.dci = getelementptr [4 x i8], ptr %i.dbq, i64 %indvars.iv2775
  %invariant.gep2266.us.2 = getelementptr i8, ptr %i.dci, i64 8
  %i.dcj = getelementptr i8, ptr %invariant.gep2266.us.2, <16 x i64> %i.dbx
  %i.dck = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.dcj, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.dcl = lshr <16 x i32> %i.dck, splat (i32 16)
  %i.dcm = trunc nuw <16 x i32> %i.dcl to <16 x i16>
  store <16 x i16> %i.dcm, ptr %i.dch, align 2, !tbaa !28
  %i.dcn = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 96
  %i.dco = getelementptr [4 x i8], ptr %i.dbq, i64 %indvars.iv2775
  %invariant.gep2266.us.3 = getelementptr i8, ptr %i.dco, i64 12
  %i.dcp = getelementptr i8, ptr %invariant.gep2266.us.3, <16 x i64> %i.dbx
  %i.dcq = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %i.dcp, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.dcr = lshr <16 x i32> %i.dcq, splat (i32 16)
  %i.dcs = trunc nuw <16 x i32> %i.dcr to <16 x i16>
  store <16 x i16> %i.dcs, ptr %i.dcn, align 2, !tbaa !28
  %i.dct = getelementptr inbounds nuw i8, ptr %.17132269.us, i64 128 ; 3 uses
  %indvars.iv.next2776.3 = add nuw nsw i64 %indvars.iv2775, 4 ; 2 uses
  %niter3419.next.3 = add i64 %niter3419, 4       ; 2 uses
  %niter3419.ncmp.3 = icmp eq i64 %niter3419.next.3, %unroll_iter3418
  br i1 %niter3419.ncmp.3, label %._crit_edge2271.us.unr-lcssa, label %.preheader1732.us, !llvm.loop !406

._crit_edge2271.us.unr-lcssa:                     ; preds = %.preheader1732.us
  br i1 %lcmp.mod3415.not, label %._crit_edge2271.us, label %.preheader1732.us.epil.preheader

.preheader1732.us.epil.preheader:                 ; preds = %._crit_edge2271.us.unr-lcssa, %.preheader1737.us
  %indvars.iv2775.epil.init = phi i64 [ 0, %.preheader1737.us ], [ %indvars.iv.next2776.3, %._crit_edge2271.us.unr-lcssa ]
  %.17132269.us.epil.init = phi ptr [ %.07122273.us, %.preheader1737.us ], [ %i.dct, %._crit_edge2271.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod3417)
  %invariant.gep3460 = getelementptr i8, ptr %i.dbq, <16 x i64> %i.dbx
  br label %.preheader1732.us.epil

.preheader1732.us.epil:                           ; preds = %.preheader1732.us.epil, %.preheader1732.us.epil.preheader
  %indvars.iv2775.epil = phi i64 [ %indvars.iv2775.epil.init, %.preheader1732.us.epil.preheader ], [ %indvars.iv.next2776.epil, %.preheader1732.us.epil ] ; 2 uses
  %.17132269.us.epil = phi ptr [ %.17132269.us.epil.init, %.preheader1732.us.epil.preheader ], [ %i.dcx, %.preheader1732.us.epil ] ; 2 uses
  %epil.iter3414 = phi i64 [ 0, %.preheader1732.us.epil.preheader ], [ %epil.iter3414.next, %.preheader1732.us.epil ]
  %gep3461 = getelementptr [4 x i8], <16 x ptr> %invariant.gep3460, i64 %indvars.iv2775.epil
  %i.dcu = call <16 x i32> @llvm.masked.gather.v16i32.v16p0(<16 x ptr> align 4 %gep3461, <16 x i1> splat (i1 true), <16 x i32> poison), !tbaa !30
  %i.dcv = lshr <16 x i32> %i.dcu, splat (i32 16)
  %i.dcw = trunc nuw <16 x i32> %i.dcv to <16 x i16>
  store <16 x i16> %i.dcw, ptr %.17132269.us.epil, align 2, !tbaa !28
  %i.dcx = getelementptr inbounds nuw i8, ptr %.17132269.us.epil, i64 32 ; 2 uses
  %indvars.iv.next2776.epil = add nuw nsw i64 %indvars.iv2775.epil, 1
  %epil.iter3414.next = add i64 %epil.iter3414, 1 ; 2 uses
  %epil.iter3414.cmp.not = icmp eq i64 %epil.iter3414.next, %xtraiter3413
  br i1 %epil.iter3414.cmp.not, label %._crit_edge2271.us, label %.preheader1732.us.epil, !llvm.loop !407

._crit_edge2271.us:                               ; preds = %.preheader1732.us.epil, %._crit_edge2271.us.unr-lcssa
  %.lcssa = phi ptr [ %i.dct, %._crit_edge2271.us.unr-lcssa ], [ %i.dcx, %.preheader1732.us.epil ] ; 2 uses
  %indvars.iv.next2781 = add nuw nsw i64 %indvars.iv2780, 16 ; 3 uses
  %i.dcy = icmp slt i64 %indvars.iv.next2781, %invariant.op2898
  br i1 %i.dcy, label %.preheader1737.us, label %.preheader1741.loopexit, !llvm.loop !408

.preheader1741.loopexit:                          ; preds = %._crit_edge2271.us
  %i.dcz = trunc nuw nsw i64 %indvars.iv.next2781 to i32
  br label %.preheader1741

.preheader1741:                                   ; preds = %.preheader1737.lr.ph, %.preheader1741.loopexit, %.noexc934
  %.0712.lcssa = phi ptr [ %i.dbj, %.noexc934 ], [ %.lcssa, %.preheader1741.loopexit ], [ %i.dbj, %.preheader1737.lr.ph ] ; 3 uses
  %.0711.lcssa = phi i32 [ 0, %.noexc934 ], [ %i.dcz, %.preheader1741.loopexit ], [ %i.cnq, %.preheader1737.lr.ph ] ; 5 uses
  %i.dda = or disjoint i32 %.0711.lcssa, 7
  %i.ddb = icmp slt i32 %i.dda, %2
  br i1 %i.ddb, label %.preheader1736.lr.ph, label %.preheader1740

.preheader1736.lr.ph:                             ; preds = %.preheader1741
  %i.ddc = load i32, ptr %i.cnn, align 4
  %i.ddd = load ptr, ptr %7, align 8
  %i.dde = load i64, ptr %i.cno, align 8
  %i.ddf = mul i64 %i.dde, %indvars.iv2826
  %i.ddg = load i64, ptr %i.cnp, align 8          ; 2 uses
  %i.ddh = mul i64 %i.ddf, %i.ddg
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.ddd, i64 %i.ddh ; 3 uses
  %i.ddj = sext i32 %i.ddc to i64
  %factor.op.mul2280 = mul i64 %i.ddg, %i.ddj     ; 9 uses
  br i1 %i.cnm, label %.preheader1736.us.preheader, label %.preheader1736.preheader

.preheader1736.preheader:                         ; preds = %.preheader1736.lr.ph
  %i.ddk = add nsw i32 %.0711.lcssa, 8
  %i.ddl = sub i32 %i.cns, %.0711.lcssa
  %i.ddm = and i32 %i.ddl, -8
  %i.ddn = add i32 %i.ddk, %i.ddm
  br label %.preheader1740

.preheader1736.us.preheader:                      ; preds = %.preheader1736.lr.ph
  %i.ddo = zext i32 %.0711.lcssa to i64
  %i.ddp = insertelement <8 x i64> poison, i64 %factor.op.mul2280, i64 0
  %i.ddq = shufflevector <8 x i64> %i.ddp, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %iter.check3348

iter.check3348:                                   ; preds = %.preheader1736.us.preheader, %._crit_edge2287.us
  %indvars.iv2792 = phi i64 [ %i.ddo, %.preheader1736.us.preheader ], [ %indvars.iv.next2793, %._crit_edge2287.us ] ; 6 uses
  %.37152289.us = phi ptr [ %.0712.lcssa, %.preheader1736.us.preheader ], [ %.lcssa2906, %._crit_edge2287.us ] ; 5 uses
  %.reass2281.us = mul i64 %factor.op.mul2280, %indvars.iv2792 ; 2 uses
  %i.ddr = insertelement <4 x i64> poison, i64 %indvars.iv2792, i64 0
  %i.dds = shufflevector <4 x i64> %i.ddr, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ddt = or disjoint <4 x i64> %i.dds, <i64 1, i64 2, i64 3, i64 4> ; 5 uses
  %i.ddu = extractelement <4 x i64> %i.ddt, i64 0
  %.reass2281.us.1 = mul i64 %factor.op.mul2280, %i.ddu ; 2 uses
  %i.ddv = extractelement <4 x i64> %i.ddt, i64 1
  %.reass2281.us.2 = mul i64 %factor.op.mul2280, %i.ddv ; 2 uses
  %i.ddw = extractelement <4 x i64> %i.ddt, i64 2
  %.reass2281.us.3 = mul i64 %factor.op.mul2280, %i.ddw ; 2 uses
  %i.ddx = extractelement <4 x i64> %i.ddt, i64 3
  %.reass2281.us.4 = mul i64 %factor.op.mul2280, %i.ddx ; 2 uses
  %i.ddy = insertelement <2 x i64> poison, i64 %indvars.iv2792, i64 0
  %i.ddz = shufflevector <2 x i64> %i.ddy, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.dea = or disjoint <2 x i64> %i.ddz, <i64 5, i64 6> ; 3 uses
  %i.deb = extractelement <2 x i64> %i.dea, i64 0
  %.reass2281.us.5 = mul i64 %factor.op.mul2280, %i.deb ; 2 uses
  %i.dec = extractelement <2 x i64> %i.dea, i64 1
  %.reass2281.us.6 = mul i64 %factor.op.mul2280, %i.dec ; 2 uses
  %i.ded = or disjoint i64 %indvars.iv2792, 7     ; 2 uses
  %i.dee = insertelement <8 x i64> poison, i64 %indvars.iv2792, i64 0
  %i.def = shufflevector <4 x i64> %i.ddt, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.deg = shufflevector <8 x i64> %i.dee, <8 x i64> %i.def, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.deh = shufflevector <2 x i64> %i.dea, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dei = shufflevector <8 x i64> %i.deg, <8 x i64> %i.deh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 poison>
  %i.dej = insertelement <8 x i64> %i.dei, i64 %i.ded, i64 7
  %i.dek = mul <8 x i64> %i.ddq, %i.dej
  %.reass2281.us.7 = mul i64 %factor.op.mul2280, %i.ded ; 2 uses
  br i1 %min.iters.check3326, label %.preheader1731.us.preheader, label %vector.main.loop.iter.check3327

vector.main.loop.iter.check3327:                  ; preds = %iter.check3348
  br i1 %min.iters.check3328, label %vec.epilog.ph3352, label %vector.ph3329

vector.ph3329:                                    ; preds = %vector.main.loop.iter.check3327
  %i.del = getelementptr i8, ptr %.37152289.us, i64 %i.cnz ; 2 uses
  br label %vector.body3331

vector.body3331:                                  ; preds = %vector.body3331, %vector.ph3329
  %index3332 = phi i64 [ 0, %vector.ph3329 ], [ %index.next3343, %vector.body3331 ] ; 3 uses
  %i.dem = shl i64 %index3332, 4
  %next.gep3333 = getelementptr i8, ptr %.37152289.us, i64 %i.dem
  %i.den = getelementptr [4 x i8], ptr %i.ddi, i64 %index3332 ; 8 uses
  %i.deo = getelementptr i8, ptr %i.den, i64 %.reass2281.us
  %wide.load3334 = load <16 x i32>, ptr %i.deo, align 4, !tbaa !30
  %i.dep = getelementptr i8, ptr %i.den, i64 %.reass2281.us.1
  %wide.load3335 = load <16 x i32>, ptr %i.dep, align 4, !tbaa !30
  %i.deq = getelementptr i8, ptr %i.den, i64 %.reass2281.us.2
  %wide.load3336 = load <16 x i32>, ptr %i.deq, align 4, !tbaa !30
  %i.der = getelementptr i8, ptr %i.den, i64 %.reass2281.us.3
  %wide.load3337 = load <16 x i32>, ptr %i.der, align 4, !tbaa !30
  %i.des = getelementptr i8, ptr %i.den, i64 %.reass2281.us.4
  %wide.load3338 = load <16 x i32>, ptr %i.des, align 4, !tbaa !30
  %i.det = getelementptr i8, ptr %i.den, i64 %.reass2281.us.5
  %wide.load3339 = load <16 x i32>, ptr %i.det, align 4, !tbaa !30
  %i.deu = getelementptr i8, ptr %i.den, i64 %.reass2281.us.6
  %wide.load3340 = load <16 x i32>, ptr %i.deu, align 4, !tbaa !30
  %i.dev = getelementptr i8, ptr %i.den, i64 %.reass2281.us.7
  %wide.load3341 = load <16 x i32>, ptr %i.dev, align 4, !tbaa !30
  %i.dew = shufflevector <16 x i32> %wide.load3334, <16 x i32> %wide.load3335, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dex = shufflevector <16 x i32> %wide.load3336, <16 x i32> %wide.load3337, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dey = shufflevector <32 x i32> %i.dew, <32 x i32> %i.dex, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dez = lshr <64 x i32> %i.dey, splat (i32 16)
  %i.dfa = trunc nuw <64 x i32> %i.dez to <64 x i16>
  %i.dfb = shufflevector <16 x i32> %wide.load3338, <16 x i32> %wide.load3339, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dfc = shufflevector <16 x i32> %wide.load3340, <16 x i32> %wide.load3341, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dfd = shufflevector <32 x i32> %i.dfb, <32 x i32> %i.dfc, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.dfe = lshr <64 x i32> %i.dfd, splat (i32 16)
  %i.dff = trunc nuw <64 x i32> %i.dfe to <64 x i16>
  %interleaved.vec3342 = shufflevector <64 x i16> %i.dfa, <64 x i16> %i.dff, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x i16> %interleaved.vec3342, ptr %next.gep3333, align 2, !tbaa !28
  %index.next3343 = add nuw i64 %index3332, 16    ; 2 uses
  %i.dfg = icmp eq i64 %index.next3343, %n.vec3330
  br i1 %i.dfg, label %middle.block3344, label %vector.body3331, !llvm.loop !409

middle.block3344:                                 ; preds = %vector.body3331
  br i1 %cmp.n3345, label %._crit_edge2287.us, label %vec.epilog.iter.check3350

vec.epilog.iter.check3350:                        ; preds = %middle.block3344
  br i1 %min.epilog.iters.check3351, label %.preheader1731.us.preheader, label %vec.epilog.ph3352, !prof !437

vec.epilog.ph3352:                                ; preds = %vector.main.loop.iter.check3327, %vec.epilog.iter.check3350
  %vec.epilog.resume.val3346 = phi i64 [ %n.vec3330, %vec.epilog.iter.check3350 ], [ 0, %vector.main.loop.iter.check3327 ]
  %i.dfh = getelementptr i8, ptr %.37152289.us, i64 %i.coa ; 2 uses
  br label %vec.epilog.vector.body3354

vec.epilog.vector.body3354:                       ; preds = %vec.epilog.vector.body3354, %vec.epilog.ph3352
  %index3355 = phi i64 [ %vec.epilog.resume.val3346, %vec.epilog.ph3352 ], [ %index.next3366, %vec.epilog.vector.body3354 ] ; 3 uses
  %i.dfi = shl i64 %index3355, 4
  %next.gep3356 = getelementptr i8, ptr %.37152289.us, i64 %i.dfi
  %i.dfj = getelementptr [4 x i8], ptr %i.ddi, i64 %index3355 ; 8 uses
  %i.dfk = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us
  %wide.load3357 = load <4 x i32>, ptr %i.dfk, align 4, !tbaa !30
  %i.dfl = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us.1
  %wide.load3358 = load <4 x i32>, ptr %i.dfl, align 4, !tbaa !30
  %i.dfm = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us.2
  %wide.load3359 = load <4 x i32>, ptr %i.dfm, align 4, !tbaa !30
  %i.dfn = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us.3
  %wide.load3360 = load <4 x i32>, ptr %i.dfn, align 4, !tbaa !30
  %i.dfo = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us.4
  %wide.load3361 = load <4 x i32>, ptr %i.dfo, align 4, !tbaa !30
  %i.dfp = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us.5
  %wide.load3362 = load <4 x i32>, ptr %i.dfp, align 4, !tbaa !30
  %i.dfq = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us.6
  %wide.load3363 = load <4 x i32>, ptr %i.dfq, align 4, !tbaa !30
  %i.dfr = getelementptr i8, ptr %i.dfj, i64 %.reass2281.us.7
  %wide.load3364 = load <4 x i32>, ptr %i.dfr, align 4, !tbaa !30
  %i.dfs = shufflevector <4 x i32> %wide.load3357, <4 x i32> %wide.load3358, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dft = shufflevector <4 x i32> %wide.load3359, <4 x i32> %wide.load3360, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dfu = shufflevector <4 x i32> %wide.load3361, <4 x i32> %wide.load3362, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dfv = shufflevector <4 x i32> %wide.load3363, <4 x i32> %wide.load3364, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dfw = shufflevector <8 x i32> %i.dfs, <8 x i32> %i.dft, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dfx = shufflevector <8 x i32> %i.dfu, <8 x i32> %i.dfv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.dfy = shufflevector <16 x i32> %i.dfw, <16 x i32> %i.dfx, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.dfz = lshr <32 x i32> %i.dfy, splat (i32 16)
  %interleaved.vec3365 = trunc nuw <32 x i32> %i.dfz to <32 x i16>
  store <32 x i16> %interleaved.vec3365, ptr %next.gep3356, align 2, !tbaa !28
  %index.next3366 = add nuw i64 %index3355, 4     ; 2 uses
  %i.dga = icmp eq i64 %index.next3366, %n.vec3353
  br i1 %i.dga, label %vec.epilog.middle.block3367, label %vec.epilog.vector.body3354, !llvm.loop !410

vec.epilog.middle.block3367:                      ; preds = %vec.epilog.vector.body3354
  br i1 %cmp.n3368, label %._crit_edge2287.us, label %.preheader1731.us.preheader

.preheader1731.us.preheader:                      ; preds = %iter.check3348, %vec.epilog.iter.check3350, %vec.epilog.middle.block3367
  %indvars.iv2787.ph = phi i64 [ 0, %iter.check3348 ], [ %n.vec3330, %vec.epilog.iter.check3350 ], [ %n.vec3353, %vec.epilog.middle.block3367 ]
  %.47162285.us.ph = phi ptr [ %.37152289.us, %iter.check3348 ], [ %i.del, %vec.epilog.iter.check3350 ], [ %i.dfh, %vec.epilog.middle.block3367 ]
  %invariant.gep3462 = getelementptr i8, ptr %i.ddi, <8 x i64> %i.dek
  br label %.preheader1731.us

.preheader1731.us:                                ; preds = %.preheader1731.us.preheader, %.preheader1731.us
  %indvars.iv2787 = phi i64 [ %indvars.iv.next2788, %.preheader1731.us ], [ %indvars.iv2787.ph, %.preheader1731.us.preheader ] ; 2 uses
  %.47162285.us = phi ptr [ %i.dge, %.preheader1731.us ], [ %.47162285.us.ph, %.preheader1731.us.preheader ] ; 2 uses
  %gep3463 = getelementptr [4 x i8], <8 x ptr> %invariant.gep3462, i64 %indvars.iv2787
  %i.dgb = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %gep3463, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !30
  %i.dgc = lshr <8 x i32> %i.dgb, splat (i32 16)
  %i.dgd = trunc nuw <8 x i32> %i.dgc to <8 x i16>
  store <8 x i16> %i.dgd, ptr %.47162285.us, align 2, !tbaa !28
  %i.dge = getelementptr inbounds nuw i8, ptr %.47162285.us, i64 16 ; 2 uses
  %indvars.iv.next2788 = add nuw nsw i64 %indvars.iv2787, 1 ; 2 uses
  %exitcond2791.not = icmp eq i64 %indvars.iv.next2788, %wide.trip.count2790
  br i1 %exitcond2791.not, label %._crit_edge2287.us, label %.preheader1731.us, !llvm.loop !411

._crit_edge2287.us:                               ; preds = %.preheader1731.us, %vec.epilog.middle.block3367, %middle.block3344
  %.lcssa2906 = phi ptr [ %i.dfh, %vec.epilog.middle.block3367 ], [ %i.del, %middle.block3344 ], [ %i.dge, %.preheader1731.us ] ; 2 uses
  %indvars.iv.next2793 = add nuw nsw i64 %indvars.iv2792, 8 ; 3 uses
  %i.dgf = trunc i64 %indvars.iv.next2793 to i32
  %i.dgg = or i32 %i.dgf, 7
  %i.dgh = icmp slt i32 %i.dgg, %2
  br i1 %i.dgh, label %iter.check3348, label %.preheader1740.loopexit, !llvm.loop !412

.preheader1740.loopexit:                          ; preds = %._crit_edge2287.us
  %i.dgi = trunc nuw i64 %indvars.iv.next2793 to i32
  br label %.preheader1740

.preheader1740:                                   ; preds = %.preheader1736.preheader, %.preheader1740.loopexit, %.preheader1741
  %.3715.lcssa = phi ptr [ %.0712.lcssa, %.preheader1741 ], [ %.lcssa2906, %.preheader1740.loopexit ], [ %.0712.lcssa, %.preheader1736.preheader ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0711.lcssa, %.preheader1741 ], [ %i.dgi, %.preheader1740.loopexit ], [ %i.ddn, %.preheader1736.preheader ] ; 5 uses
  %i.dgj = or disjoint i32 %.1.lcssa, 3
  %i.dgk = icmp slt i32 %i.dgj, %2
  br i1 %i.dgk, label %.preheader1735.lr.ph, label %.preheader1739

.preheader1735.lr.ph:                             ; preds = %.preheader1740
  %i.dgl = load i32, ptr %i.cnn, align 4
  %i.dgm = load ptr, ptr %7, align 8
  %i.dgn = load i64, ptr %i.cno, align 8
  %i.dgo = mul i64 %i.dgn, %indvars.iv2826
  %i.dgp = load i64, ptr %i.cnp, align 8          ; 2 uses
  %i.dgq = mul i64 %i.dgo, %i.dgp
  %i.dgr = getelementptr inbounds nuw i8, ptr %i.dgm, i64 %i.dgq ; 3 uses
  %i.dgs = sext i32 %i.dgl to i64
  %factor.op.mul2296 = mul i64 %i.dgp, %i.dgs     ; 4 uses
  br i1 %i.cnm, label %.preheader1735.us.preheader, label %.preheader1735.preheader

.preheader1735.preheader:                         ; preds = %.preheader1735.lr.ph
  %i.dgt = add nsw i32 %.1.lcssa, 4
  %i.dgu = sub i32 %i.cnt, %.1.lcssa
  %i.dgv = and i32 %i.dgu, -4
  %i.dgw = add i32 %i.dgt, %i.dgv
  br label %.preheader1739

.preheader1735.us.preheader:                      ; preds = %.preheader1735.lr.ph
  %i.dgx = zext i32 %.1.lcssa to i64
  br label %iter.check3307

iter.check3307:                                   ; preds = %.preheader1735.us.preheader, %._crit_edge2303.us
  %indvars.iv2804 = phi i64 [ %i.dgx, %.preheader1735.us.preheader ], [ %indvars.iv.next2805, %._crit_edge2303.us ] ; 5 uses
  %.62305.us = phi ptr [ %.3715.lcssa, %.preheader1735.us.preheader ], [ %.lcssa2907, %._crit_edge2303.us ] ; 5 uses
  %.reass2297.us = mul i64 %factor.op.mul2296, %indvars.iv2804 ; 3 uses
  %i.dgy = or disjoint i64 %indvars.iv2804, 1
  %.reass2297.us.1 = mul i64 %factor.op.mul2296, %i.dgy ; 3 uses
  %i.dgz = or disjoint i64 %indvars.iv2804, 2
  %.reass2297.us.2 = mul i64 %factor.op.mul2296, %i.dgz ; 3 uses
  %i.dha = or disjoint i64 %indvars.iv2804, 3
  %.reass2297.us.3 = mul i64 %factor.op.mul2296, %i.dha ; 3 uses
  br i1 %min.iters.check3289, label %.preheader1730.us.preheader, label %vector.main.loop.iter.check3290

vector.main.loop.iter.check3290:                  ; preds = %iter.check3307
  br i1 %min.iters.check3291, label %vec.epilog.ph3311, label %vector.ph3292

vector.ph3292:                                    ; preds = %vector.main.loop.iter.check3290
  %i.dhb = getelementptr i8, ptr %.62305.us, i64 %i.coc ; 2 uses
  br label %vector.body3294

vector.body3294:                                  ; preds = %vector.body3294, %vector.ph3292
  %index3295 = phi i64 [ 0, %vector.ph3292 ], [ %index.next3302, %vector.body3294 ] ; 3 uses
  %i.dhc = shl i64 %index3295, 3
  %next.gep3296 = getelementptr i8, ptr %.62305.us, i64 %i.dhc
  %i.dhd = getelementptr [4 x i8], ptr %i.dgr, i64 %index3295 ; 4 uses
  %i.dhe = getelementptr i8, ptr %i.dhd, i64 %.reass2297.us
  %wide.load3297 = load <16 x i32>, ptr %i.dhe, align 4, !tbaa !30
  %i.dhf = getelementptr i8, ptr %i.dhd, i64 %.reass2297.us.1
  %wide.load3298 = load <16 x i32>, ptr %i.dhf, align 4, !tbaa !30
  %i.dhg = getelementptr i8, ptr %i.dhd, i64 %.reass2297.us.2
  %wide.load3299 = load <16 x i32>, ptr %i.dhg, align 4, !tbaa !30
  %i.dhh = getelementptr i8, ptr %i.dhd, i64 %.reass2297.us.3
  %wide.load3300 = load <16 x i32>, ptr %i.dhh, align 4, !tbaa !30
  %i.dhi = shufflevector <16 x i32> %wide.load3297, <16 x i32> %wide.load3298, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dhj = lshr <32 x i32> %i.dhi, splat (i32 16)
  %i.dhk = trunc nuw <32 x i32> %i.dhj to <32 x i16>
  %i.dhl = shufflevector <16 x i32> %wide.load3299, <16 x i32> %wide.load3300, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.dhm = lshr <32 x i32> %i.dhl, splat (i32 16)
  %i.dhn = trunc nuw <32 x i32> %i.dhm to <32 x i16>
  %interleaved.vec3301 = shufflevector <32 x i16> %i.dhk, <32 x i16> %i.dhn, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i16> %interleaved.vec3301, ptr %next.gep3296, align 2, !tbaa !28
  %index.next3302 = add nuw i64 %index3295, 16    ; 2 uses
  %i.dho = icmp eq i64 %index.next3302, %n.vec3293
  br i1 %i.dho, label %middle.block3303, label %vector.body3294, !llvm.loop !413

middle.block3303:                                 ; preds = %vector.body3294
  br i1 %cmp.n3304, label %._crit_edge2303.us, label %vec.epilog.iter.check3309

vec.epilog.iter.check3309:                        ; preds = %middle.block3303
  br i1 %min.epilog.iters.check3310, label %.preheader1730.us.preheader, label %vec.epilog.ph3311, !prof !437

vec.epilog.ph3311:                                ; preds = %vector.main.loop.iter.check3290, %vec.epilog.iter.check3309
  %vec.epilog.resume.val3305 = phi i64 [ %n.vec3293, %vec.epilog.iter.check3309 ], [ 0, %vector.main.loop.iter.check3290 ]
  %i.dhp = getelementptr i8, ptr %.62305.us, i64 %i.cod ; 2 uses
  br label %vec.epilog.vector.body3313

vec.epilog.vector.body3313:                       ; preds = %vec.epilog.vector.body3313, %vec.epilog.ph3311
  %index3314 = phi i64 [ %vec.epilog.resume.val3305, %vec.epilog.ph3311 ], [ %index.next3321, %vec.epilog.vector.body3313 ] ; 3 uses
  %i.dhq = shl i64 %index3314, 3
  %next.gep3315 = getelementptr i8, ptr %.62305.us, i64 %i.dhq
  %i.dhr = getelementptr [4 x i8], ptr %i.dgr, i64 %index3314 ; 4 uses
  %i.dhs = getelementptr i8, ptr %i.dhr, i64 %.reass2297.us
  %wide.load3316 = load <4 x i32>, ptr %i.dhs, align 4, !tbaa !30
  %i.dht = getelementptr i8, ptr %i.dhr, i64 %.reass2297.us.1
  %wide.load3317 = load <4 x i32>, ptr %i.dht, align 4, !tbaa !30
  %i.dhu = getelementptr i8, ptr %i.dhr, i64 %.reass2297.us.2
  %wide.load3318 = load <4 x i32>, ptr %i.dhu, align 4, !tbaa !30
  %i.dhv = getelementptr i8, ptr %i.dhr, i64 %.reass2297.us.3
  %wide.load3319 = load <4 x i32>, ptr %i.dhv, align 4, !tbaa !30
  %i.dhw = shufflevector <4 x i32> %wide.load3316, <4 x i32> %wide.load3317, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dhx = shufflevector <4 x i32> %wide.load3318, <4 x i32> %wide.load3319, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dhy = shufflevector <8 x i32> %i.dhw, <8 x i32> %i.dhx, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  %i.dhz = lshr <16 x i32> %i.dhy, splat (i32 16)
  %interleaved.vec3320 = trunc nuw <16 x i32> %i.dhz to <16 x i16>
  store <16 x i16> %interleaved.vec3320, ptr %next.gep3315, align 2, !tbaa !28
  %index.next3321 = add nuw i64 %index3314, 4     ; 2 uses
  %i.dia = icmp eq i64 %index.next3321, %n.vec3312
  br i1 %i.dia, label %vec.epilog.middle.block3322, label %vec.epilog.vector.body3313, !llvm.loop !414

vec.epilog.middle.block3322:                      ; preds = %vec.epilog.vector.body3313
  br i1 %cmp.n3323, label %._crit_edge2303.us, label %.preheader1730.us.preheader

.preheader1730.us.preheader:                      ; preds = %iter.check3307, %vec.epilog.iter.check3309, %vec.epilog.middle.block3322
  %indvars.iv2799.ph = phi i64 [ 0, %iter.check3307 ], [ %n.vec3293, %vec.epilog.iter.check3309 ], [ %n.vec3312, %vec.epilog.middle.block3322 ]
  %.72301.us.ph = phi ptr [ %.62305.us, %iter.check3307 ], [ %i.dhb, %vec.epilog.iter.check3309 ], [ %i.dhp, %vec.epilog.middle.block3322 ]
  br label %.preheader1730.us

.preheader1730.us:                                ; preds = %.preheader1730.us.preheader, %.preheader1730.us
  %indvars.iv2799 = phi i64 [ %indvars.iv.next2800, %.preheader1730.us ], [ %indvars.iv2799.ph, %.preheader1730.us.preheader ] ; 2 uses
  %.72301.us = phi ptr [ %i.diq, %.preheader1730.us ], [ %.72301.us.ph, %.preheader1730.us.preheader ] ; 5 uses
  %invariant.gep2298.us = getelementptr [4 x i8], ptr %i.dgr, i64 %indvars.iv2799 ; 4 uses
  %gep.us2309 = getelementptr i8, ptr %invariant.gep2298.us, i64 %.reass2297.us
  %i.dib = load i32, ptr %gep.us2309, align 4, !tbaa !30
  %i.dic = lshr i32 %i.dib, 16
  %i.did = trunc nuw i32 %i.dic to i16
  store i16 %i.did, ptr %.72301.us, align 2, !tbaa !28
  %i.die = getelementptr inbounds nuw i8, ptr %.72301.us, i64 2
  %gep.us2309.1 = getelementptr i8, ptr %invariant.gep2298.us, i64 %.reass2297.us.1
  %i.dif = load i32, ptr %gep.us2309.1, align 4, !tbaa !30
  %i.dig = lshr i32 %i.dif, 16
  %i.dih = trunc nuw i32 %i.dig to i16
  store i16 %i.dih, ptr %i.die, align 2, !tbaa !28
  %i.dii = getelementptr inbounds nuw i8, ptr %.72301.us, i64 4
  %gep.us2309.2 = getelementptr i8, ptr %invariant.gep2298.us, i64 %.reass2297.us.2
  %i.dij = load i32, ptr %gep.us2309.2, align 4, !tbaa !30
  %i.dik = lshr i32 %i.dij, 16
  %i.dil = trunc nuw i32 %i.dik to i16
  store i16 %i.dil, ptr %i.dii, align 2, !tbaa !28
  %i.dim = getelementptr inbounds nuw i8, ptr %.72301.us, i64 6
  %gep.us2309.3 = getelementptr i8, ptr %invariant.gep2298.us, i64 %.reass2297.us.3
  %i.din = load i32, ptr %gep.us2309.3, align 4, !tbaa !30
  %i.dio = lshr i32 %i.din, 16
  %i.dip = trunc nuw i32 %i.dio to i16
  store i16 %i.dip, ptr %i.dim, align 2, !tbaa !28
  %i.diq = getelementptr inbounds nuw i8, ptr %.72301.us, i64 8 ; 2 uses
  %indvars.iv.next2800 = add nuw nsw i64 %indvars.iv2799, 1 ; 2 uses
  %exitcond2803.not = icmp eq i64 %indvars.iv.next2800, %wide.trip.count2802
  br i1 %exitcond2803.not, label %._crit_edge2303.us, label %.preheader1730.us, !llvm.loop !415

._crit_edge2303.us:                               ; preds = %.preheader1730.us, %vec.epilog.middle.block3322, %middle.block3303
  %.lcssa2907 = phi ptr [ %i.dhp, %vec.epilog.middle.block3322 ], [ %i.dhb, %middle.block3303 ], [ %i.diq, %.preheader1730.us ] ; 2 uses
  %indvars.iv.next2805 = add nuw nsw i64 %indvars.iv2804, 4 ; 3 uses
  %i.dir = trunc i64 %indvars.iv.next2805 to i32
  %i.dis = or i32 %i.dir, 3
  %i.dit = icmp slt i32 %i.dis, %2
  br i1 %i.dit, label %iter.check3307, label %.preheader1739.loopexit, !llvm.loop !416

.preheader1739.loopexit:                          ; preds = %._crit_edge2303.us
  %i.diu = trunc nuw i64 %indvars.iv.next2805 to i32
  br label %.preheader1739

.preheader1739:                                   ; preds = %.preheader1735.preheader, %.preheader1739.loopexit, %.preheader1740
  %.6.lcssa = phi ptr [ %.3715.lcssa, %.preheader1740 ], [ %.lcssa2907, %.preheader1739.loopexit ], [ %.3715.lcssa, %.preheader1735.preheader ] ; 3 uses
  %.2.lcssa = phi i32 [ %.1.lcssa, %.preheader1740 ], [ %i.diu, %.preheader1739.loopexit ], [ %i.dgw, %.preheader1735.preheader ] ; 5 uses
  %i.div = or disjoint i32 %.2.lcssa, 1
  %i.diw = icmp slt i32 %i.div, %2
  br i1 %i.diw, label %.preheader1734.lr.ph, label %.preheader1738

.preheader1734.lr.ph:                             ; preds = %.preheader1739
  %i.dix = load i32, ptr %i.cnn, align 4
  %i.diy = load ptr, ptr %7, align 8
  %i.diz = load i64, ptr %i.cno, align 8
  %i.dja = mul i64 %i.diz, %indvars.iv2826
  %i.djb = load i64, ptr %i.cnp, align 8          ; 2 uses
  %i.djc = mul i64 %i.dja, %i.djb
  %i.djd = getelementptr inbounds nuw i8, ptr %i.diy, i64 %i.djc ; 3 uses
  %i.dje = sext i32 %i.dix to i64
  %factor.op.mul2312 = mul i64 %i.djb, %i.dje     ; 2 uses
  br i1 %i.cnm, label %.preheader1734.us.preheader, label %.preheader1734.preheader

.preheader1734.preheader:                         ; preds = %.preheader1734.lr.ph
  %i.djf = add nsw i32 %.2.lcssa, 2
  %i.djg = sub i32 %i.cnu, %.2.lcssa
  %i.djh = and i32 %i.djg, -2
  %i.dji = add i32 %i.djf, %i.djh
  br label %.preheader1738

.preheader1734.us.preheader:                      ; preds = %.preheader1734.lr.ph
  %i.djj = zext i32 %.2.lcssa to i64
  br label %iter.check3272

iter.check3272:                                   ; preds = %.preheader1734.us.preheader, %._crit_edge2319.us
  %indvars.iv2815 = phi i64 [ %i.djj, %.preheader1734.us.preheader ], [ %indvars.iv.next2816, %._crit_edge2319.us ] ; 3 uses
  %.92321.us = phi ptr [ %.6.lcssa, %.preheader1734.us.preheader ], [ %.lcssa2908, %._crit_edge2319.us ] ; 5 uses
  %.reass2313.us = mul i64 %factor.op.mul2312, %indvars.iv2815 ; 3 uses
  %i.djk = or disjoint i64 %indvars.iv2815, 1
  %.reass2313.us.1 = mul i64 %factor.op.mul2312, %i.djk ; 3 uses
  br i1 %min.iters.check3256, label %.preheader.us.preheader, label %vector.main.loop.iter.check3257

vector.main.loop.iter.check3257:                  ; preds = %iter.check3272
  br i1 %min.iters.check3258, label %vec.epilog.ph3276, label %vector.ph3259

vector.ph3259:                                    ; preds = %vector.main.loop.iter.check3257
  %i.djl = getelementptr i8, ptr %.92321.us, i64 %i.cof ; 2 uses
  br label %vector.body3261

vector.body3261:                                  ; preds = %vector.body3261, %vector.ph3259
  %index3262 = phi i64 [ 0, %vector.ph3259 ], [ %index.next3267, %vector.body3261 ] ; 3 uses
  %i.djm = shl i64 %index3262, 2
  %next.gep3263 = getelementptr i8, ptr %.92321.us, i64 %i.djm
  %i.djn = getelementptr [4 x i8], ptr %i.djd, i64 %index3262 ; 2 uses
  %i.djo = getelementptr i8, ptr %i.djn, i64 %.reass2313.us
  %wide.load3264 = load <16 x i32>, ptr %i.djo, align 4, !tbaa !30
  %i.djp = getelementptr i8, ptr %i.djn, i64 %.reass2313.us.1
  %wide.load3265 = load <16 x i32>, ptr %i.djp, align 4, !tbaa !30
  %i.djq = shufflevector <16 x i32> %wide.load3264, <16 x i32> %wide.load3265, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.djr = lshr <32 x i32> %i.djq, splat (i32 16)
  %interleaved.vec3266 = trunc nuw <32 x i32> %i.djr to <32 x i16>
  store <32 x i16> %interleaved.vec3266, ptr %next.gep3263, align 2, !tbaa !28
  %index.next3267 = add nuw i64 %index3262, 16    ; 2 uses
  %i.djs = icmp eq i64 %index.next3267, %n.vec3260
  br i1 %i.djs, label %middle.block3268, label %vector.body3261, !llvm.loop !417

middle.block3268:                                 ; preds = %vector.body3261
  br i1 %cmp.n3269, label %._crit_edge2319.us, label %vec.epilog.iter.check3274

vec.epilog.iter.check3274:                        ; preds = %middle.block3268
  br i1 %min.epilog.iters.check3275, label %.preheader.us.preheader, label %vec.epilog.ph3276, !prof !437

vec.epilog.ph3276:                                ; preds = %vector.main.loop.iter.check3257, %vec.epilog.iter.check3274
  %vec.epilog.resume.val3270 = phi i64 [ %n.vec3260, %vec.epilog.iter.check3274 ], [ 0, %vector.main.loop.iter.check3257 ]
  %i.djt = getelementptr i8, ptr %.92321.us, i64 %i.cog ; 2 uses
  br label %vec.epilog.vector.body3278

vec.epilog.vector.body3278:                       ; preds = %vec.epilog.vector.body3278, %vec.epilog.ph3276
  %index3279 = phi i64 [ %vec.epilog.resume.val3270, %vec.epilog.ph3276 ], [ %index.next3284, %vec.epilog.vector.body3278 ] ; 3 uses
  %i.dju = shl i64 %index3279, 2
  %next.gep3280 = getelementptr i8, ptr %.92321.us, i64 %i.dju
  %i.djv = getelementptr [4 x i8], ptr %i.djd, i64 %index3279 ; 2 uses
  %i.djw = getelementptr i8, ptr %i.djv, i64 %.reass2313.us
  %wide.load3281 = load <4 x i32>, ptr %i.djw, align 4, !tbaa !30
  %i.djx = getelementptr i8, ptr %i.djv, i64 %.reass2313.us.1
  %wide.load3282 = load <4 x i32>, ptr %i.djx, align 4, !tbaa !30
  %i.djy = shufflevector <4 x i32> %wide.load3281, <4 x i32> %wide.load3282, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.djz = lshr <8 x i32> %i.djy, splat (i32 16)
  %interleaved.vec3283 = trunc nuw <8 x i32> %i.djz to <8 x i16>
  store <8 x i16> %interleaved.vec3283, ptr %next.gep3280, align 2, !tbaa !28
  %index.next3284 = add nuw i64 %index3279, 4     ; 2 uses
  %i.dka = icmp eq i64 %index.next3284, %n.vec3277
  br i1 %i.dka, label %vec.epilog.middle.block3285, label %vec.epilog.vector.body3278, !llvm.loop !418

vec.epilog.middle.block3285:                      ; preds = %vec.epilog.vector.body3278
  br i1 %cmp.n3286, label %._crit_edge2319.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %iter.check3272, %vec.epilog.iter.check3274, %vec.epilog.middle.block3285
  %indvars.iv2810.ph = phi i64 [ 0, %iter.check3272 ], [ %n.vec3260, %vec.epilog.iter.check3274 ], [ %n.vec3277, %vec.epilog.middle.block3285 ]
  %.102317.us.ph = phi ptr [ %.92321.us, %iter.check3272 ], [ %i.djl, %vec.epilog.iter.check3274 ], [ %i.djt, %vec.epilog.middle.block3285 ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv2810 = phi i64 [ %indvars.iv.next2811, %.preheader.us ], [ %indvars.iv2810.ph, %.preheader.us.preheader ] ; 2 uses
  %.102317.us = phi ptr [ %i.dki, %.preheader.us ], [ %.102317.us.ph, %.preheader.us.preheader ] ; 3 uses
  %invariant.gep2314.us = getelementptr [4 x i8], ptr %i.djd, i64 %indvars.iv2810 ; 2 uses
  %gep.us2325 = getelementptr i8, ptr %invariant.gep2314.us, i64 %.reass2313.us
  %i.dkb = load i32, ptr %gep.us2325, align 4, !tbaa !30
  %i.dkc = lshr i32 %i.dkb, 16
  %i.dkd = trunc nuw i32 %i.dkc to i16
  store i16 %i.dkd, ptr %.102317.us, align 2, !tbaa !28
  %i.dke = getelementptr inbounds nuw i8, ptr %.102317.us, i64 2
  %gep.us2325.1 = getelementptr i8, ptr %invariant.gep2314.us, i64 %.reass2313.us.1
  %i.dkf = load i32, ptr %gep.us2325.1, align 4, !tbaa !30
  %i.dkg = lshr i32 %i.dkf, 16
  %i.dkh = trunc nuw i32 %i.dkg to i16
  store i16 %i.dkh, ptr %i.dke, align 2, !tbaa !28
  %i.dki = getelementptr inbounds nuw i8, ptr %.102317.us, i64 4 ; 2 uses
  %indvars.iv.next2811 = add nuw nsw i64 %indvars.iv2810, 1 ; 2 uses
  %exitcond2814.not = icmp eq i64 %indvars.iv.next2811, %wide.trip.count2813
  br i1 %exitcond2814.not, label %._crit_edge2319.us, label %.preheader.us, !llvm.loop !419

._crit_edge2319.us:                               ; preds = %.preheader.us, %vec.epilog.middle.block3285, %middle.block3268
  %.lcssa2908 = phi ptr [ %i.djt, %vec.epilog.middle.block3285 ], [ %i.djl, %middle.block3268 ], [ %i.dki, %.preheader.us ] ; 2 uses
  %indvars.iv.next2816 = add nuw nsw i64 %indvars.iv2815, 2 ; 3 uses
  %i.dkj = trunc i64 %indvars.iv.next2816 to i32
  %i.dkk = or i32 %i.dkj, 1
  %i.dkl = icmp slt i32 %i.dkk, %2
  br i1 %i.dkl, label %iter.check3272, label %.preheader1738.loopexit, !llvm.loop !420

.preheader1738.loopexit:                          ; preds = %._crit_edge2319.us
  %i.dkm = trunc nuw i64 %indvars.iv.next2816 to i32
  br label %.preheader1738

.preheader1738:                                   ; preds = %.preheader1734.preheader, %.preheader1738.loopexit, %.preheader1739
  %.9.lcssa = phi ptr [ %.6.lcssa, %.preheader1739 ], [ %.lcssa2908, %.preheader1738.loopexit ], [ %.6.lcssa, %.preheader1734.preheader ]
  %.3.lcssa = phi i32 [ %.2.lcssa, %.preheader1739 ], [ %i.dkm, %.preheader1738.loopexit ], [ %i.dji, %.preheader1734.preheader ] ; 2 uses
  %i.dkn = icmp slt i32 %.3.lcssa, %2
  br i1 %i.dkn, label %.preheader1733.lr.ph, label %._crit_edge2334.split

.preheader1733.lr.ph:                             ; preds = %.preheader1738
  %i.dko = load i32, ptr %i.cnn, align 4
  %i.dkp = load ptr, ptr %7, align 8
  %i.dkq = load i64, ptr %i.cno, align 8
  %i.dkr = mul i64 %i.dkq, %indvars.iv2826
  %i.dks = load i64, ptr %i.cnp, align 8          ; 2 uses
  %i.dkt = mul i64 %i.dkr, %i.dks
  %i.dku = getelementptr inbounds nuw i8, ptr %i.dkp, i64 %i.dkt
  %i.dkv = sext i32 %i.dko to i64
  %factor.op.mul2335 = mul i64 %i.dks, %i.dkv
  br i1 %i.cnm, label %.preheader1733.preheader, label %._crit_edge2334.split

.preheader1733.preheader:                         ; preds = %.preheader1733.lr.ph
  %i.dkw = zext i32 %.3.lcssa to i64
  br label %iter.check3241

iter.check3241:                                   ; preds = %.preheader1733.preheader, %._crit_edge2330
  %indvars.iv2823 = phi i64 [ %i.dkw, %.preheader1733.preheader ], [ %indvars.iv.next2824, %._crit_edge2330 ] ; 2 uses
  %.122332 = phi ptr [ %.9.lcssa, %.preheader1733.preheader ], [ %.lcssa2909, %._crit_edge2330 ] ; 5 uses
  %.reass2336 = mul i64 %factor.op.mul2335, %indvars.iv2823
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dku, i64 %.reass2336 ; 3 uses
  br i1 %min.iters.check3224, label %.noexc.preheader, label %vector.main.loop.iter.check3225

vector.main.loop.iter.check3225:                  ; preds = %iter.check3241
  br i1 %min.iters.check3226, label %vec.epilog.ph3245, label %vector.ph3227

vector.ph3227:                                    ; preds = %vector.main.loop.iter.check3225
  %i.dky = getelementptr i8, ptr %.122332, i64 %i.coi ; 2 uses
  br label %vector.body3229

vector.body3229:                                  ; preds = %vector.body3229, %vector.ph3227
  %index3230 = phi i64 [ 0, %vector.ph3227 ], [ %index.next3236, %vector.body3229 ] ; 3 uses
  %i.dkz = shl i64 %index3230, 1
  %next.gep3231 = getelementptr i8, ptr %.122332, i64 %i.dkz ; 4 uses
  %i.dla = getelementptr inbounds nuw [4 x i8], ptr %i.dkx, i64 %index3230 ; 4 uses
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.dla, i64 64
  %i.dlc = getelementptr inbounds nuw i8, ptr %i.dla, i64 128
  %i.dld = getelementptr inbounds nuw i8, ptr %i.dla, i64 192
  %wide.load3232 = load <16 x i32>, ptr %i.dla, align 4, !tbaa !30
  %wide.load3233 = load <16 x i32>, ptr %i.dlb, align 4, !tbaa !30
  %wide.load3234 = load <16 x i32>, ptr %i.dlc, align 4, !tbaa !30
  %wide.load3235 = load <16 x i32>, ptr %i.dld, align 4, !tbaa !30
  %i.dle = lshr <16 x i32> %wide.load3232, splat (i32 16)
  %i.dlf = lshr <16 x i32> %wide.load3233, splat (i32 16)
  %i.dlg = lshr <16 x i32> %wide.load3234, splat (i32 16)
  %i.dlh = lshr <16 x i32> %wide.load3235, splat (i32 16)
  %i.dli = trunc nuw <16 x i32> %i.dle to <16 x i16>
  %i.dlj = trunc nuw <16 x i32> %i.dlf to <16 x i16>
  %i.dlk = trunc nuw <16 x i32> %i.dlg to <16 x i16>
  %i.dll = trunc nuw <16 x i32> %i.dlh to <16 x i16>
  %i.dlm = getelementptr i8, ptr %next.gep3231, i64 32
  %i.dln = getelementptr i8, ptr %next.gep3231, i64 64
  %i.dlo = getelementptr i8, ptr %next.gep3231, i64 96
  store <16 x i16> %i.dli, ptr %next.gep3231, align 2, !tbaa !28
  store <16 x i16> %i.dlj, ptr %i.dlm, align 2, !tbaa !28
  store <16 x i16> %i.dlk, ptr %i.dln, align 2, !tbaa !28
  store <16 x i16> %i.dll, ptr %i.dlo, align 2, !tbaa !28
  %index.next3236 = add nuw i64 %index3230, 64    ; 2 uses
  %i.dlp = icmp eq i64 %index.next3236, %n.vec3228
  br i1 %i.dlp, label %middle.block3237, label %vector.body3229, !llvm.loop !421

middle.block3237:                                 ; preds = %vector.body3229
  br i1 %cmp.n3238, label %._crit_edge2330, label %vec.epilog.iter.check3243

vec.epilog.iter.check3243:                        ; preds = %middle.block3237
  br i1 %min.epilog.iters.check3244, label %.noexc.preheader, label %vec.epilog.ph3245, !prof !431

vec.epilog.ph3245:                                ; preds = %vector.main.loop.iter.check3225, %vec.epilog.iter.check3243
  %vec.epilog.resume.val3239 = phi i64 [ %n.vec3228, %vec.epilog.iter.check3243 ], [ 0, %vector.main.loop.iter.check3225 ]
  %i.dlq = getelementptr i8, ptr %.122332, i64 %i.coj ; 2 uses
  br label %vec.epilog.vector.body3247

vec.epilog.vector.body3247:                       ; preds = %vec.epilog.vector.body3247, %vec.epilog.ph3245
  %index3248 = phi i64 [ %vec.epilog.resume.val3239, %vec.epilog.ph3245 ], [ %index.next3251, %vec.epilog.vector.body3247 ] ; 3 uses
  %i.dlr = shl i64 %index3248, 1
  %next.gep3249 = getelementptr i8, ptr %.122332, i64 %i.dlr
  %i.dls = getelementptr inbounds nuw [4 x i8], ptr %i.dkx, i64 %index3248
  %wide.load3250 = load <8 x i32>, ptr %i.dls, align 4, !tbaa !30
  %i.dlt = lshr <8 x i32> %wide.load3250, splat (i32 16)
  %i.dlu = trunc nuw <8 x i32> %i.dlt to <8 x i16>
  store <8 x i16> %i.dlu, ptr %next.gep3249, align 2, !tbaa !28
  %index.next3251 = add nuw i64 %index3248, 8     ; 2 uses
  %i.dlv = icmp eq i64 %index.next3251, %n.vec3246
  br i1 %i.dlv, label %vec.epilog.middle.block3252, label %vec.epilog.vector.body3247, !llvm.loop !422

end_hunk_14
