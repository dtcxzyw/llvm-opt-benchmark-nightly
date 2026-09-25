Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yalantinglibs/original/server?download=true
inline.NumInlined: 54344
inline.NumDeleted: 20585
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN7cinatra4sha19transformIvEEvPjS2_:bb.a
  %i.adt = add i32 %i.adp, -899497514
  %i.adu = add i32 %i.adt, %i.acn
  %i.adv = add i32 %i.adu, %i.adr
  %i.adw = add i32 %i.adv, %i.ads                 ; 5 uses
  %i.adx = tail call i32 @llvm.fshl.i32(i32 %i.acy, i32 %i.acy, i32 30) ; 3 uses
  %i.ady = xor i32 %i.wv, %i.vt
  %i.adz = xor i32 %i.ady, %i.aab
  %i.aea = xor i32 %i.adz, %i.acr                 ; 2 uses
  %i.aeb = tail call noundef i32 @llvm.fshl.i32(i32 %i.aea, i32 %i.aea, i32 1) ; 5 uses
  store i32 %i.aeb, ptr %1, align 4, !tbaa !280
  %i.aec = xor i32 %i.adx, %i.adl
  %i.aed = xor i32 %i.aec, %i.adk
  %i.aee = tail call i32 @llvm.fshl.i32(i32 %i.adw, i32 %i.adw, i32 5)
  %i.aef = add i32 %i.aeb, -899497514
  %i.aeg = add i32 %i.aef, %i.acz
  %i.aeh = add i32 %i.aeg, %i.aed
  %i.aei = add i32 %i.aeh, %i.aee                 ; 5 uses
  %i.aej = tail call i32 @llvm.fshl.i32(i32 %i.adk, i32 %i.adk, i32 30) ; 3 uses
  %i.aek = xor i32 %i.xj, %i.wh
  %i.ael = xor i32 %i.aek, %i.aap
  %i.aem = xor i32 %i.ael, %i.add                 ; 2 uses
  %i.aen = tail call noundef i32 @llvm.fshl.i32(i32 %i.aem, i32 %i.aem, i32 1) ; 5 uses
  store i32 %i.aen, ptr %i.w, align 4, !tbaa !280
  %i.aeo = xor i32 %i.aej, %i.adx
  %i.aep = xor i32 %i.aeo, %i.adw
  %i.aeq = tail call i32 @llvm.fshl.i32(i32 %i.aei, i32 %i.aei, i32 5)
  %i.aer = add i32 %i.aen, -899497514
  %i.aes = add i32 %i.aer, %i.adl
  %i.aet = add i32 %i.aes, %i.aep
  %i.aeu = add i32 %i.aet, %i.aeq                 ; 5 uses
  %i.aev = tail call i32 @llvm.fshl.i32(i32 %i.adw, i32 %i.adw, i32 30) ; 3 uses
  %i.aew = xor i32 %i.xx, %i.wv
  %i.aex = xor i32 %i.aew, %i.abd
  %i.aey = xor i32 %i.aex, %i.adp                 ; 2 uses
  %i.aez = tail call noundef i32 @llvm.fshl.i32(i32 %i.aey, i32 %i.aey, i32 1) ; 4 uses
  store i32 %i.aez, ptr %i.ah, align 4, !tbaa !280
  %i.afa = xor i32 %i.aev, %i.aej
  %i.afb = xor i32 %i.afa, %i.aei
  %i.afc = tail call i32 @llvm.fshl.i32(i32 %i.aeu, i32 %i.aeu, i32 5)
  %i.afd = add i32 %i.aez, -899497514
  %i.afe = add i32 %i.afd, %i.adx
  %i.aff = add i32 %i.afe, %i.afb
  %i.afg = add i32 %i.aff, %i.afc                 ; 5 uses
  %i.afh = tail call i32 @llvm.fshl.i32(i32 %i.aei, i32 %i.aei, i32 30) ; 3 uses
  %i.afi = xor i32 %i.yl, %i.xj
  %i.afj = xor i32 %i.afi, %i.abr
  %i.afk = xor i32 %i.afj, %i.aeb                 ; 2 uses
  %i.afl = tail call noundef i32 @llvm.fshl.i32(i32 %i.afk, i32 %i.afk, i32 1) ; 4 uses
  store i32 %i.afl, ptr %i.as, align 4, !tbaa !280
  %i.afm = xor i32 %i.afh, %i.aev
  %i.afn = xor i32 %i.afm, %i.aeu
  %i.afo = tail call i32 @llvm.fshl.i32(i32 %i.afg, i32 %i.afg, i32 5)
  %i.afp = add i32 %i.afl, -899497514
  %i.afq = add i32 %i.afp, %i.aej
  %i.afr = add i32 %i.afq, %i.afn
  %i.afs = add i32 %i.afr, %i.afo                 ; 5 uses
  %i.aft = tail call i32 @llvm.fshl.i32(i32 %i.aeu, i32 %i.aeu, i32 30) ; 3 uses
  %i.afu = xor i32 %i.yz, %i.xx
  %i.afv = xor i32 %i.afu, %i.acf
  %i.afw = xor i32 %i.afv, %i.aen                 ; 2 uses
  %i.afx = tail call noundef i32 @llvm.fshl.i32(i32 %i.afw, i32 %i.afw, i32 1) ; 4 uses
  store i32 %i.afx, ptr %i.bd, align 4, !tbaa !280
  %i.afy = xor i32 %i.aft, %i.afh
  %i.afz = xor i32 %i.afy, %i.afg
  %i.aga = tail call i32 @llvm.fshl.i32(i32 %i.afs, i32 %i.afs, i32 5)
  %i.agb = add i32 %i.afx, -899497514
  %i.agc = add i32 %i.agb, %i.aev
  %i.agd = add i32 %i.agc, %i.afz
  %i.age = add i32 %i.agd, %i.aga                 ; 5 uses
  %i.agf = tail call i32 @llvm.fshl.i32(i32 %i.afg, i32 %i.afg, i32 30) ; 3 uses
  %i.agg = xor i32 %i.zn, %i.yl
  %i.agh = xor i32 %i.agg, %i.acr
  %i.agi = xor i32 %i.agh, %i.aez                 ; 2 uses
  %i.agj = tail call noundef i32 @llvm.fshl.i32(i32 %i.agi, i32 %i.agi, i32 1) ; 4 uses
  store i32 %i.agj, ptr %i.bo, align 4, !tbaa !280
  %i.agk = xor i32 %i.agf, %i.aft
  %i.agl = xor i32 %i.agk, %i.afs
  %i.agm = tail call i32 @llvm.fshl.i32(i32 %i.age, i32 %i.age, i32 5)
  %i.agn = add i32 %i.agj, -899497514
  %i.ago = add i32 %i.agn, %i.afh
  %i.agp = add i32 %i.ago, %i.agl
  %i.agq = add i32 %i.agp, %i.agm                 ; 5 uses
  %i.agr = tail call i32 @llvm.fshl.i32(i32 %i.afs, i32 %i.afs, i32 30) ; 3 uses
  %i.ags = xor i32 %i.aab, %i.yz
  %i.agt = xor i32 %i.ags, %i.add
  %i.agu = xor i32 %i.agt, %i.afl                 ; 2 uses
  %i.agv = tail call noundef i32 @llvm.fshl.i32(i32 %i.agu, i32 %i.agu, i32 1) ; 4 uses
  store i32 %i.agv, ptr %i.bz, align 4, !tbaa !280
  %i.agw = xor i32 %i.agr, %i.agf
  %i.agx = xor i32 %i.agw, %i.age
  %i.agy = tail call i32 @llvm.fshl.i32(i32 %i.agq, i32 %i.agq, i32 5)
  %i.agz = add i32 %i.agv, -899497514
  %i.aha = add i32 %i.agz, %i.aft
  %i.ahb = add i32 %i.aha, %i.agx
  %i.ahc = add i32 %i.ahb, %i.agy                 ; 5 uses
  %i.ahd = tail call i32 @llvm.fshl.i32(i32 %i.age, i32 %i.age, i32 30) ; 3 uses
  %i.ahe = xor i32 %i.aap, %i.zn
  %i.ahf = xor i32 %i.ahe, %i.adp
  %i.ahg = xor i32 %i.ahf, %i.afx                 ; 2 uses
  %i.ahh = tail call noundef i32 @llvm.fshl.i32(i32 %i.ahg, i32 %i.ahg, i32 1) ; 4 uses
  store i32 %i.ahh, ptr %i.ck, align 4, !tbaa !280
  %i.ahi = xor i32 %i.ahd, %i.agr
  %i.ahj = xor i32 %i.ahi, %i.agq
  %i.ahk = tail call i32 @llvm.fshl.i32(i32 %i.ahc, i32 %i.ahc, i32 5)
  %i.ahl = add i32 %i.ahh, -899497514
  %i.ahm = add i32 %i.ahl, %i.agf
  %i.ahn = add i32 %i.ahm, %i.ahj
  %i.aho = add i32 %i.ahn, %i.ahk                 ; 5 uses
  %i.ahp = tail call i32 @llvm.fshl.i32(i32 %i.agq, i32 %i.agq, i32 30) ; 3 uses
  %i.ahq = xor i32 %i.abd, %i.aab
  %i.ahr = xor i32 %i.ahq, %i.aeb
  %i.ahs = xor i32 %i.ahr, %i.agj                 ; 2 uses
  %i.aht = tail call noundef i32 @llvm.fshl.i32(i32 %i.ahs, i32 %i.ahs, i32 1) ; 3 uses
  store i32 %i.aht, ptr %i.cv, align 4, !tbaa !280
  %i.ahu = xor i32 %i.ahp, %i.ahd
  %i.ahv = xor i32 %i.ahu, %i.ahc
  %i.ahw = tail call i32 @llvm.fshl.i32(i32 %i.aho, i32 %i.aho, i32 5)
  %i.ahx = add i32 %i.aht, -899497514
  %i.ahy = add i32 %i.ahx, %i.agr
  %i.ahz = add i32 %i.ahy, %i.ahv
  %i.aia = tail call i32 @llvm.fshl.i32(i32 %i.ahc, i32 %i.ahc, i32 30) ; 3 uses
  %i.aib = xor i32 %i.abr, %i.aap
  %i.aic = xor i32 %i.aib, %i.aen
  %i.aid = xor i32 %i.aic, %i.agv                 ; 2 uses
  %i.aie = tail call noundef i32 @llvm.fshl.i32(i32 %i.aid, i32 %i.aid, i32 1) ; 3 uses
  store i32 %i.aie, ptr %i.dg, align 4, !tbaa !280
  %i.aif = xor i32 %i.aia, %i.ahp
  %i.aig = xor i32 %i.aif, %i.aho
  %i.aih = add i32 %i.aie, -899497514
  %i.aii = add i32 %i.aih, %i.ahd
  %i.aij = add i32 %i.aii, %i.aig
  %i.aik = tail call i32 @llvm.fshl.i32(i32 %i.aho, i32 %i.aho, i32 30) ; 3 uses
  %i.ail = xor i32 %i.acf, %i.abd
  %i.aim = xor i32 %i.ail, %i.aez
  %i.ain = xor i32 %i.aim, %i.ahh                 ; 2 uses
  %i.aio = tail call noundef i32 @llvm.fshl.i32(i32 %i.ain, i32 %i.ain, i32 1) ; 3 uses
  store i32 %i.aio, ptr %i.dr, align 4, !tbaa !280
  %i.aip = xor i32 %i.acr, %i.abr
  %i.aiq = xor i32 %i.aip, %i.afl
  %i.air = xor i32 %i.aiq, %i.aht                 ; 2 uses
  %i.ais = tail call noundef i32 @llvm.fshl.i32(i32 %i.air, i32 %i.air, i32 1) ; 3 uses
  store i32 %i.ais, ptr %i.ec, align 4, !tbaa !280
  %i.ait = add i32 %i.ais, -899497514
  %i.aiu = add i32 %i.ait, %i.aia
  %i.aiv = xor i32 %i.add, %i.acf
  %i.aiw = xor i32 %i.aiv, %i.afx
  %i.aix = xor i32 %i.aiw, %i.aie                 ; 2 uses
  %i.aiy = tail call noundef i32 @llvm.fshl.i32(i32 %i.aix, i32 %i.aix, i32 1) ; 3 uses
  store i32 %i.aiy, ptr %i.en, align 4, !tbaa !280
  %i.aiz = xor i32 %i.adp, %i.acr
  %i.aja = xor i32 %i.aiz, %i.agj
  %i.ajb = xor i32 %i.aja, %i.aio                 ; 2 uses
  %i.ajc = tail call noundef i32 @llvm.fshl.i32(i32 %i.ajb, i32 %i.ajb, i32 1) ; 2 uses
  store i32 %i.ajc, ptr %i.ey, align 4, !tbaa !280
  %i.ajd = add i32 %i.ajc, -899497514
  %i.aje = xor i32 %i.aeb, %i.add
  %i.ajf = xor i32 %i.aje, %i.agv
  %i.ajg = xor i32 %i.ajf, %i.ais                 ; 2 uses
  %i.ajh = tail call noundef i32 @llvm.fshl.i32(i32 %i.ajg, i32 %i.ajg, i32 1) ; 2 uses
  store i32 %i.ajh, ptr %i.fj, align 4, !tbaa !280
  %i.aji = xor i32 %i.aen, %i.adp
  %i.ajj = xor i32 %i.aji, %i.ahh
  %i.ajk = xor i32 %i.ajj, %i.aiy                 ; 2 uses
  %i.ajl = tail call noundef i32 @llvm.fshl.i32(i32 %i.ajk, i32 %i.ajk, i32 1) ; 2 uses
  store i32 %i.ajl, ptr %i.fu, align 4, !tbaa !280
  %i.ajm = load i32, ptr %0, align 4, !tbaa !280
  %i.ajn = add i32 %i.ajm, -899497514
  %i.ajo = add i32 %i.ajn, %i.ajl
  %i.ajp = add i32 %i.ahz, %i.ahw                 ; 5 uses
  %i.ajq = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 5)
  %i.ajr = add i32 %i.aij, %i.ajq                 ; 5 uses
  %i.ajs = xor i32 %i.aik, %i.aia
  %i.ajt = xor i32 %i.ajs, %i.ajp
  %i.aju = tail call i32 @llvm.fshl.i32(i32 %i.ajr, i32 %i.ajr, i32 5)
  %i.ajv = add i32 %i.aio, -899497514
  %i.ajw = add i32 %i.ajv, %i.ahp
  %i.ajx = add i32 %i.ajw, %i.ajt
  %i.ajy = add i32 %i.ajx, %i.aju                 ; 5 uses
  %i.ajz = tail call i32 @llvm.fshl.i32(i32 %i.ajp, i32 %i.ajp, i32 30) ; 3 uses
  %i.aka = xor i32 %i.ajz, %i.aik
  %i.akb = xor i32 %i.aka, %i.ajr
  %i.akc = tail call i32 @llvm.fshl.i32(i32 %i.ajy, i32 %i.ajy, i32 5)
  %i.akd = add i32 %i.aiu, %i.akb
  %i.ake = add i32 %i.akd, %i.akc                 ; 5 uses
  %i.akf = tail call i32 @llvm.fshl.i32(i32 %i.ajr, i32 %i.ajr, i32 30) ; 3 uses
  %i.akg = xor i32 %i.akf, %i.ajz
  %i.akh = xor i32 %i.akg, %i.ajy
  %i.aki = tail call i32 @llvm.fshl.i32(i32 %i.ake, i32 %i.ake, i32 5)
  %i.akj = add i32 %i.aiy, -899497514
  %i.akk = add i32 %i.akj, %i.aik
  %i.akl = add i32 %i.akk, %i.akh
  %i.akm = add i32 %i.akl, %i.aki                 ; 5 uses
  %i.akn = tail call i32 @llvm.fshl.i32(i32 %i.ajy, i32 %i.ajy, i32 30) ; 3 uses
  %i.ako = xor i32 %i.akn, %i.akf
  %i.akp = xor i32 %i.ako, %i.ake
  %i.akq = tail call i32 @llvm.fshl.i32(i32 %i.akm, i32 %i.akm, i32 5)
  %i.akr = add i32 %i.ajd, %i.ajz
  %i.aks = add i32 %i.akr, %i.akp
  %i.akt = add i32 %i.aks, %i.akq                 ; 5 uses
  %i.aku = tail call i32 @llvm.fshl.i32(i32 %i.ake, i32 %i.ake, i32 30) ; 3 uses
  %2 = tail call i32 @llvm.fshl.i32(i32 %i.akm, i32 %i.akm, i32 30) ; 2 uses
  %3 = tail call i32 @llvm.fshl.i32(i32 %i.akt, i32 %i.akt, i32 30)
  %i.akv = tail call i32 @llvm.fshl.i32(i32 %i.akt, i32 %i.akt, i32 5)
  %4 = xor i32 %i.aku, %i.akn
  %5 = xor i32 %4, %i.akm
  %i.akw = add i32 %i.ajh, -899497514
  %i.akx = add i32 %i.akw, %i.akf
  %6 = add i32 %i.akx, %5
  %i.aky = xor i32 %2, %i.aku
  %i.akz = xor i32 %i.aky, %i.akt
  %7 = add i32 %6, %i.akv                         ; 3 uses
  %i.ala = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 5)
  %i.alb = add i32 %i.ajo, %i.akn
  %i.alc = add i32 %i.alb, %i.akz
  %i.ald = add i32 %i.alc, %i.ala
  store i32 %i.ald, ptr %0, align 4, !tbaa !280
  %i.ale = load <4 x i32>, ptr %i.b, align 4, !tbaa !280
  %i.alf = insertelement <4 x i32> poison, i32 %7, i64 0
  %i.alg = insertelement <4 x i32> %i.alf, i32 %3, i64 1
  %i.alh = insertelement <4 x i32> %i.alg, i32 %2, i64 2
  %i.ali = insertelement <4 x i32> %i.alh, i32 %i.aku, i64 3
  %i.alj = add <4 x i32> %i.ali, %i.ale
  store <4 x i32> %i.alj, ptr %i.b, align 4, !tbaa !280
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio6detail7read_opINS_3ssl6streamIRNS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEEEENS_17mutable_buffers_1EPKNS_14mutable_bufferENS0_18transfer_exactly_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSG_10async_readISA_SB_EEN12async_simple4coro4LazyISK_EERT_RT0_mEUlOSQ_E_SA_EENSO_ISQ_EESS_RT1_ENKUlSQ_E_clINSG_21callback_awaitor_baseISK_NSG_16callback_awaitorISK_EEE15awaitor_handlerEEEDaSQ_EUlDpOT_E_EclESJ_mi(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::ssl::detail::io_op.4568", align 8 ; 17 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %4, ptr %i.a, align 8, !tbaa !3709
  %cond = icmp eq i32 %4, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1914 ; 5 uses
  br i1 %cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6.i.i = icmp eq i32 %1, 0
  %.pre = load i64, ptr %0, align 8, !tbaa !333   ; 4 uses
  %.not.i.i = icmp ult i64 %i.c, %.pre
  %or.cond = select i1 %.not6.i.i, i1 %.not.i.i, i1 false
  br i1 %or.cond, label %bb.c, label %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit

bb.c:                                             ; preds = %bb.b
  %i.d = sub nuw i64 %.pre, %i.c
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 65536)
  br label %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit

_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit: ; preds = %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12, %bb.c, %bb.b
  %i.e = phi i64 [ %.pre, %bb.c ], [ %.pre, %bb.b ], [ %i.al, %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12 ]
  %i.f = phi i64 [ %i.c, %bb.c ], [ %i.c, %bb.b ], [ %i.af, %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12 ]
  %.0 = phi i64 [ %spec.select.i.i, %bb.c ], [ 0, %bb.b ], [ %spec.select.i.i11, %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12 ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3710, !nonnull !343, !align !538 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1737 ; 2 uses
  %spec.select.i.i8 = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.k) ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !1738
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.i.i8
  %i.n = sub i64 %i.k, %spec.select.i.i8
  %spec.select.i1.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %.0)
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !1854, !nonnull !343, !align !538
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %i.o, ptr %5, align 8, !tbaa !951
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !1855
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.m, ptr %i.r, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %spec.select.i1.i, ptr %.sroa.422.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i32 0, ptr %i.s, align 8, !tbaa !3712
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 36
  store i32 0, ptr %i.t, align 4, !tbaa !3713
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 0, ptr %i.u, align 8, !tbaa !566
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58, !inline_history !9880 ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !tbaa !567
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 0, ptr %i.x, align 8, !tbaa !3714
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i64 %i.e, ptr %i.y, align 8, !tbaa !333
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 72
  store ptr %i.h, ptr %i.z, align 8, !tbaa !949
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 104
  store i32 %4, ptr %i.ab, align 8, !tbaa !3709
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 112
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1260
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !1260
  call void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_7read_opINS_17mutable_buffers_1EEENS_6detail7read_opINS0_6streamIRS7_EES9_PKNS_14mutable_bufferENSB_18transfer_exactly_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_10async_readISF_S9_EEN12async_simple4coro4LazyISO_EERT_RT0_mEUlOSU_E_SF_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EEEclESN_mi(ptr noundef nonnull align 8 dereferenceable(120) %5, i32 0, ptr nonnull %i.w, i64 noundef 0, i32 noundef 1), !inline_history !9881
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.af = add i64 %i.c, %3                        ; 6 uses
  store i64 %i.af, ptr %i.b, align 8, !tbaa !1914
  %i.ag = icmp ne i32 %1, 0
  %i.ah = icmp ne i64 %3, 0
  %or.cond.not.not32.not35 = or i1 %i.ag, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = icmp ult i64 %i.af, %i.aj
  %or.cond.not = select i1 %or.cond.not.not32.not35, i1 %i.ak, i1 false
  %.not6.i.i9 = icmp eq i32 %1, 0
  %or.cond30 = select i1 %or.cond.not, i1 %.not6.i.i9, i1 false
  br i1 %or.cond30, label %bb.e, label %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12.thread

bb.e:                                             ; preds = %bb.d
  %i.al = load i64, ptr %0, align 8, !tbaa !3715  ; 3 uses
  %.not.i.i10 = icmp ult i64 %i.af, %i.al
  br i1 %.not.i.i10, label %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12, label %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12.thread

_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12: ; preds = %bb.e
  %i.am = sub nuw i64 %i.al, %i.af
  %spec.select.i.i11 = tail call i64 @llvm.umin.i64(i64 %i.am, i64 65536)
  br label %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit, !llvm.loop !9882

_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12.thread: ; preds = %bb.e, %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !1437 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %1, ptr %i.ap, align 8, !tbaa !280
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %2, ptr %.sroa.22.0..sroa_idx.i.i, align 8, !tbaa !563
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 %i.af, ptr %i.aq, align 8, !tbaa !333
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !973 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr nonnull %i.ar), !inline_history !9883
  br label %bb.f

bb.f:                                             ; preds = %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit12.thread, %_ZN4asio6detail25base_from_completion_condINS0_18transfer_exactly_tEE20check_for_completionERKSt10error_codem.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4asio3ssl6detail5io_opINS_19basic_stream_socketINS_2ip3tcpENS_15any_io_executorEEENS1_7read_opINS_17mutable_buffers_1EEENS_6detail7read_opINS0_6streamIRS7_EES9_PKNS_14mutable_bufferENSB_18transfer_exactly_tEZZN7coro_io8async_ioISt4pairISt10error_codemEZNSK_10async_readISF_S9_EEN12async_simple4coro4LazyISO_EERT_RT0_mEUlOSU_E_SF_EENSS_ISU_EESW_RT1_ENKUlSU_E_clINSK_21callback_awaitor_baseISO_NSK_16callback_awaitorISO_EEE15awaitor_handlerEEEDaSU_EUlDpOT_E_EEEclESN_mi(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 %1, ptr %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.asio::const_buffers_1", align 8 ; 5 uses
  %6 = alloca %"class.asio::detail::write_op.4590", align 8 ; 17 uses
  %7 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %8 = alloca %"class.asio::mutable_buffers_1", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i32 %4, ptr %i.a, align 8, !tbaa !3712
  %cond = icmp eq i32 %4, 1
  br i1 %cond, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a, %bb.ab
  %.0 = phi i64 [ %3, %bb.a ], [ %.3, %bb.ab ]    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.2.0..0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..0..sroa_idx.i.i, align 8, !tbaa !333 ; 2 uses
  %i.f = icmp eq i64 %.sroa.2.0.copyload.i.i, 0
  br i1 %i.f, label %_ZNK4asio3ssl6detail7read_opINS_17mutable_buffers_1EEclERNS1_6engineERSt10error_codeRm.exit.thread, label %_ZNK4asio3ssl6detail7read_opINS_17mutable_buffers_1EEclERNS1_6engineERSt10error_codeRm.exit

_ZNK4asio3ssl6detail7read_opINS_17mutable_buffers_1EEclERNS1_6engineERSt10error_codeRm.exit.thread: ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #58
  store i32 0, ptr %i.d, align 8, !tbaa !280
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.g, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !tbaa !563
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !3713
  br label %bb.m

_ZNK4asio3ssl6detail7read_opINS_17mutable_buffers_1EEclERNS1_6engineERSt10error_codeRm.exit: ; preds = %bb.b
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !9889, !nonnull !343, !align !538
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8, !tbaa !306
  %i.j = tail call noundef i32 @_ZN4asio3ssl6detail6engine7performEMS2_FiPvmES3_mRSt10error_codePm(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 ptrtoint (ptr @_ZN4asio3ssl6detail6engine7do_readEPvm to i64), i64 0, ptr noundef %.sroa.0.0.copyload.i.i, i64 noundef %.sroa.2.0.copyload.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.j, ptr %i.k, align 4, !tbaa !3713
  switch i32 %i.j, label %bb.m [
    i32 -2, label %bb.c
    i32 -1, label %bb.i
    i32 1, label %bb.i
  ]

bb.c:                                             ; preds = %_ZNK4asio3ssl6detail7read_opINS_17mutable_buffers_1EEclERNS1_6engineERSt10error_codeRm.exit
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !9889, !nonnull !343, !align !538 ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 344 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1793 ; 2 uses
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 336 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1463
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !1794
  %i.s = trunc i64 %i.n to i32
  %i.t = tail call i32 @BIO_write(ptr noundef %i.q, ptr noundef %i.r, i32 noundef %i.s)
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.u = zext nneg i32 %narrow.i to i64
  %i.v = load i64, ptr %i.m, align 8, !tbaa !1793 ; 2 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.v) ; 2 uses
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !1794
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.i.i
  %i.y = sub i64 %i.v, %spec.select.i.i
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !9889, !nonnull !343, !align !538 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 336
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !306
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 344
  store i64 %i.y, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !333
  br label %bb.ab

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 3 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !333
  %i.ad = icmp eq i64 %.sroa.0.0.copyload.i.i.i, -9223372036854775808
  br i1 %i.ad, label %bb.f, label %bb.h
end_hunk_0
