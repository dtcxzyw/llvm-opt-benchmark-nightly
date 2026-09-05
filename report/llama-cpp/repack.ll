Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/repack?download=true
begin_hunk_0_@ggml_gemm_q4_0_8x8_q8_0:bb.a

.lr.ph1081.split.us.preheader.i:                  ; preds = %.lr.ph1081.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.aar = mul i64 %.2.i, %2
  %i.aas = shl i64 %i.aar, 4
  %i.aat = shl nsw i64 %.0987.i, 5                ; 16 uses
  %i.aau = shl i64 %2, 6
  %i.aav = sub nsw i64 %i.aag, %.0987.i
  %i.aaw = shl nsw i64 %i.aav, 5                  ; 16 uses
  %i.aax = shl nsw i64 %.2.i, 2                   ; 15 uses
  %i.aay = or disjoint i64 %i.aax, 1
  %i.aaz = mul i64 %2, %i.aay
  %i.aba = shl i64 %i.aaz, 2
  %i.abb = or disjoint i64 %i.aax, 2
  %i.abc = mul i64 %2, %i.abb
  %i.abd = shl i64 %i.abc, 2
  %i.abe = or disjoint i64 %i.aax, 3
  %i.abf = mul i64 %2, %i.abe
  %i.abg = shl i64 %i.abf, 2
  %i.abh = add i64 %i.aax, 4
  %i.abi = mul i64 %2, %i.abh
  %i.abj = shl i64 %i.abi, 2
  %i.abk = add i64 %i.aax, 5
  %i.abl = mul i64 %2, %i.abk
  %i.abm = shl i64 %i.abl, 2
  %i.abn = add i64 %i.aax, 6
  %i.abo = mul i64 %2, %i.abn
  %i.abp = shl i64 %i.abo, 2
  %i.abq = add i64 %i.aax, 7
  %i.abr = mul i64 %2, %i.abq
  %i.abs = shl i64 %i.abr, 2
  %i.abt = add i64 %i.aax, 8
  %i.abu = mul i64 %2, %i.abt
  %i.abv = shl i64 %i.abu, 2
  %i.abw = add i64 %i.aax, 9
  %i.abx = mul i64 %2, %i.abw
  %i.aby = shl i64 %i.abx, 2
  %i.abz = add i64 %i.aax, 10
  %i.aca = mul i64 %2, %i.abz
  %i.acb = shl i64 %i.aca, 2
  %i.acc = add i64 %i.aax, 11
  %i.acd = mul i64 %2, %i.acc
  %i.ace = shl i64 %i.acd, 2
  %i.acf = add i64 %i.aax, 12
  %i.acg = mul i64 %2, %i.acf
  %i.ach = shl i64 %i.acg, 2
  %i.aci = add i64 %i.aax, 13
  %i.acj = mul i64 %2, %i.aci
  %i.ack = shl i64 %i.acj, 2
  %i.acl = add i64 %i.aax, 14
  %i.acm = mul i64 %2, %i.acl
  %i.acn = shl i64 %i.acm, 2
  %i.aco = add i64 %i.aax, 15
  %i.acp = mul i64 %2, %i.aco
  %i.acq = shl i64 %i.acp, 2
  %i.acr = xor i64 %.2.i, -1
  %i.acs = add i64 %i.acr, %i.l
  %i.act = lshr i64 %i.acs, 2
  %i.acu = getelementptr i8, ptr %1, i64 %i.aas
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.aat
  %i.acw = getelementptr i8, ptr %1, i64 %i.aba
  %i.acx = getelementptr i8, ptr %i.acw, i64 %i.aat
  %i.acy = getelementptr i8, ptr %1, i64 %i.abd
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.aat
  %i.ada = getelementptr i8, ptr %1, i64 %i.abg
  %i.adb = getelementptr i8, ptr %i.ada, i64 %i.aat
  %i.adc = getelementptr i8, ptr %1, i64 %i.abj
  %i.add = getelementptr i8, ptr %i.adc, i64 %i.aat
  %i.ade = getelementptr i8, ptr %1, i64 %i.abm
  %i.adf = getelementptr i8, ptr %i.ade, i64 %i.aat
  %i.adg = getelementptr i8, ptr %1, i64 %i.abp
  %i.adh = getelementptr i8, ptr %i.adg, i64 %i.aat
  %i.adi = getelementptr i8, ptr %1, i64 %i.abs
  %i.adj = getelementptr i8, ptr %i.adi, i64 %i.aat
  %i.adk = getelementptr i8, ptr %1, i64 %i.abv
  %i.adl = getelementptr i8, ptr %i.adk, i64 %i.aat
  %i.adm = getelementptr i8, ptr %1, i64 %i.aby
  %i.adn = getelementptr i8, ptr %i.adm, i64 %i.aat
  %i.ado = getelementptr i8, ptr %1, i64 %i.acb
  %i.adp = getelementptr i8, ptr %i.ado, i64 %i.aat
  %i.adq = getelementptr i8, ptr %1, i64 %i.ace
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.aat
  %i.ads = getelementptr i8, ptr %1, i64 %i.ach
  %i.adt = getelementptr i8, ptr %i.ads, i64 %i.aat
  %i.adu = getelementptr i8, ptr %1, i64 %i.ack
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.aat
  %i.adw = getelementptr i8, ptr %1, i64 %i.acn
  %i.adx = getelementptr i8, ptr %i.adw, i64 %i.aat
  %i.ady = getelementptr i8, ptr %1, i64 %i.acq
  %i.adz = getelementptr i8, ptr %i.ady, i64 %i.aat
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.aoe, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !108
  %i.aea = mul nsw i64 %.31079.us.i, %i.f
  %i.aeb = getelementptr inbounds [136 x i8], ptr %4, i64 %i.aea ; 2 uses
  store ptr %i.aeb, ptr %i.c, align 16, !tbaa !21, !noalias !108
  %i.aec = getelementptr inbounds [136 x i8], ptr %i.aeb, i64 %i.f ; 2 uses
  store ptr %i.aec, ptr %i.aao, align 8, !tbaa !21, !noalias !108
  %i.aed = getelementptr inbounds [136 x i8], ptr %i.aec, i64 %i.f ; 2 uses
  store ptr %i.aed, ptr %i.aap, align 16, !tbaa !21, !noalias !108
  %i.aee = getelementptr inbounds [136 x i8], ptr %i.aed, i64 %i.f
  store ptr %i.aee, ptr %i.aaq, align 8, !tbaa !21, !noalias !108
  %i.aef = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.aeg = mul i64 %i.aef, %2
  %i.aeh = or disjoint i64 %i.aef, 1
  %i.aei = mul i64 %i.aeh, %2
  %i.aej = or disjoint i64 %i.aef, 2
  %i.aek = mul i64 %i.aej, %2
  %i.ael = or disjoint i64 %i.aef, 3
  %i.aem = mul i64 %i.ael, %2
  %i.aen = add nsw i64 %i.aef, 4
  %i.aeo = mul i64 %i.aen, %2
  %i.aep = add nsw i64 %i.aef, 5
  %i.aeq = mul i64 %i.aep, %2
  %i.aer = add nsw i64 %i.aef, 6
  %i.aes = mul i64 %i.aer, %2
  %i.aet = add nsw i64 %i.aef, 7
  %i.aeu = mul i64 %i.aet, %2
  %i.aev = add nsw i64 %i.aef, 8
  %i.aew = mul i64 %i.aev, %2
  %i.aex = add nsw i64 %i.aef, 9
  %i.aey = mul i64 %i.aex, %2
  %i.aez = add nsw i64 %i.aef, 10
  %i.afa = mul i64 %i.aez, %2
  %i.afb = add nsw i64 %i.aef, 11
  %i.afc = mul i64 %i.afb, %2
  %i.afd = add nsw i64 %i.aef, 12
  %i.afe = mul i64 %i.afd, %2
  %i.aff = add nsw i64 %i.aef, 13
  %i.afg = mul i64 %i.aff, %2
  %i.afh = add nsw i64 %i.aef, 14
  %i.afi = mul i64 %i.afh, %2
  %i.afj = add nsw i64 %i.aef, 15
  %i.afk = mul i64 %i.afj, %2
  br i1 %i.aai, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.afl = mul i64 %i.aau, %indvar62              ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.acv, i64 %i.afl
  %scevgep65 = getelementptr i8, ptr %i.acx, i64 %i.afl
  %scevgep66 = getelementptr i8, ptr %i.acz, i64 %i.afl
  %scevgep67 = getelementptr i8, ptr %i.adb, i64 %i.afl
  %scevgep68 = getelementptr i8, ptr %i.add, i64 %i.afl
  %scevgep69 = getelementptr i8, ptr %i.adf, i64 %i.afl
  %scevgep70 = getelementptr i8, ptr %i.adh, i64 %i.afl
  %scevgep71 = getelementptr i8, ptr %i.adj, i64 %i.afl
  %scevgep72 = getelementptr i8, ptr %i.adl, i64 %i.afl
  %scevgep73 = getelementptr i8, ptr %i.adn, i64 %i.afl
  %scevgep74 = getelementptr i8, ptr %i.adp, i64 %i.afl
  %scevgep75 = getelementptr i8, ptr %i.adr, i64 %i.afl
  %scevgep76 = getelementptr i8, ptr %i.adt, i64 %i.afl
  %scevgep77 = getelementptr i8, ptr %i.adv, i64 %i.afl
  %scevgep78 = getelementptr i8, ptr %i.adx, i64 %i.afl
  %scevgep79 = getelementptr i8, ptr %i.adz, i64 %i.afl
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep64, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep65, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep66, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep67, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep68, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep69, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep70, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep71, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep73, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep74, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep75, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep76, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep78, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep79, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !105, !noalias !109
  br label %._crit_edge.us1085.i

.preheader1015.us.i.us:                           ; preds = %.lr.ph1081.split.us.i, %.preheader1014.us.loopexit.i.us
  %.09991077.us.i.us = phi i64 [ %i.aod, %.preheader1014.us.loopexit.i.us ], [ %.0987.i, %.lr.ph1081.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !tbaa !9, !noalias !108
  %i.afm = mul nsw i64 %.09991077.us.i.us, %i.f
  %i.afn = getelementptr inbounds [144 x i8], ptr %3, i64 %i.afm
  br label %.lr.ph1075.us.i.us

.lr.ph1075.us.i.us:                               ; preds = %.preheader1015.us.i.us, %bb.h
  %.010051074.us.i.us = phi i64 [ %i.aoc, %bb.h ], [ 0, %.preheader1015.us.i.us ] ; 3 uses
  %i.afo = getelementptr inbounds nuw [144 x i8], ptr %i.afn, i64 %.010051074.us.i.us ; 5 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %i.afq = load <8 x i32>, ptr %i.afp, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 48
  %i.afs = load <8 x i32>, ptr %i.afr, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 80
  %i.afu = load <8 x i32>, ptr %i.aft, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 112
  %i.afw = load <8 x i32>, ptr %i.afv, align 1, !tbaa !9, !alias.scope !106, !noalias !110 ; 2 uses
  %i.afx = shufflevector <8 x i32> %i.afq, <8 x i32> %i.afs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.afy = shufflevector <8 x i32> %i.afq, <8 x i32> %i.afs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.afz = shufflevector <8 x i32> %i.afu, <8 x i32> %i.afw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aga = shufflevector <8 x i32> %i.afu, <8 x i32> %i.afw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.agb = bitcast <8 x i32> %i.afx to <32 x i8>
  %i.agc = and <32 x i8> %i.agb, splat (i8 15)
  %i.agd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.agc) ; 2 uses
  %i.age = bitcast <8 x i32> %i.afy to <32 x i8>
  %i.agf = and <32 x i8> %i.age, splat (i8 15)
  %i.agg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.agf) ; 2 uses
  %i.agh = bitcast <8 x i32> %i.afz to <32 x i8>
  %i.agi = and <32 x i8> %i.agh, splat (i8 15)
  %i.agj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.agi) ; 2 uses
  %i.agk = bitcast <8 x i32> %i.aga to <32 x i8>
  %i.agl = and <32 x i8> %i.agk, splat (i8 15)
  %i.agm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.agl) ; 2 uses
  %i.agn = bitcast <8 x i32> %i.afx to <16 x i16>
  %i.ago = lshr <16 x i16> %i.agn, splat (i16 4)
  %i.agp = bitcast <16 x i16> %i.ago to <32 x i8>
  %i.agq = and <32 x i8> %i.agp, splat (i8 15)
  %i.agr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.agq) ; 2 uses
  %i.ags = bitcast <8 x i32> %i.afy to <16 x i16>
  %i.agt = lshr <16 x i16> %i.ags, splat (i16 4)
  %i.agu = bitcast <16 x i16> %i.agt to <32 x i8>
  %i.agv = and <32 x i8> %i.agu, splat (i8 15)
  %i.agw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.agv) ; 2 uses
  %i.agx = bitcast <8 x i32> %i.afz to <16 x i16>
  %i.agy = lshr <16 x i16> %i.agx, splat (i16 4)
  %i.agz = bitcast <16 x i16> %i.agy to <32 x i8>
  %i.aha = and <32 x i8> %i.agz, splat (i8 15)
  %i.ahb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.aha) ; 2 uses
  %i.ahc = bitcast <8 x i32> %i.aga to <16 x i16>
  %i.ahd = lshr <16 x i16> %i.ahc, splat (i16 4)
  %i.ahe = bitcast <16 x i16> %i.ahd to <32 x i8>
  %i.ahf = and <32 x i8> %i.ahe, splat (i8 15)
  %i.ahg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1, i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>, <32 x i8> %i.ahf) ; 2 uses
  %i.ahh = load <8 x half>, ptr %i.afo, align 1, !tbaa !9, !alias.scope !106, !noalias !110
  %i.ahi = fpext <8 x half> %i.ahh to <8 x float> ; 4 uses
  %i.ahj = shufflevector <32 x i8> %i.ahb, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahk = shufflevector <32 x i8> %i.agr, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahl = shufflevector <32 x i8> %i.agj, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahm = shufflevector <32 x i8> %i.agd, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahn = shufflevector <32 x i8> %i.ahg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aho = shufflevector <32 x i8> %i.agw, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahp = shufflevector <32 x i8> %i.agm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahq = shufflevector <32 x i8> %i.agg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahr = shufflevector <32 x i8> %i.ahb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahs = shufflevector <32 x i8> %i.agr, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aht = shufflevector <32 x i8> %i.agj, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahu = shufflevector <32 x i8> %i.agd, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahv = shufflevector <32 x i8> %i.ahg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahw = shufflevector <32 x i8> %i.agw, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahx = shufflevector <32 x i8> %i.agm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahy = shufflevector <32 x i8> %i.agg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph1075.us.i.us
  %indvars.iv1165.i.us = phi i64 [ %indvars.iv.next1166.i.us, %bb.g ], [ 0, %.lr.ph1075.us.i.us ] ; 3 uses
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1165.i.us
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !21, !noalias !108
  %i.aib = getelementptr inbounds nuw [136 x i8], ptr %i.aia, i64 %.010051074.us.i.us ; 5 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load <8 x i32>, ptr %i.aic, align 1, !tbaa !9, !noalias !106 ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 40
  %i.aif = load <8 x i32>, ptr %i.aie, align 1, !tbaa !9, !noalias !106 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aib, i64 72
  %i.aih = load <8 x i32>, ptr %i.aig, align 1, !tbaa !9, !noalias !106 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aib, i64 104
  %i.aij = load <8 x i32>, ptr %i.aii, align 1, !tbaa !9, !noalias !106 ; 4 uses
  %i.aik = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.ail = shufflevector <32 x i8> %i.aik, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aim = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ail, <32 x i8> %i.ail) ; 2 uses
  %i.ain = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahj, <32 x i8> %i.ail)
  %i.aio = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aim, <32 x i8> %i.ain)
  %i.aip = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.aiq = shufflevector <32 x i8> %i.aip, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.air = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiq, <32 x i8> %i.aiq) ; 2 uses
  %i.ais = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahk, <32 x i8> %i.aiq)
  %i.ait = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aio, <32 x i8> %i.air, <32 x i8> %i.ais)
  %i.aiu = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.aiv = shufflevector <32 x i8> %i.aiu, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aiw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiv, <32 x i8> %i.aiv) ; 2 uses
  %i.aix = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahl, <32 x i8> %i.aiv)
  %i.aiy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ait, <32 x i8> %i.aiw, <32 x i8> %i.aix)
  %i.aiz = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.aja = shufflevector <32 x i8> %i.aiz, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ajb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aja, <32 x i8> %i.aja) ; 2 uses
  %i.ajc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahm, <32 x i8> %i.aja)
  %i.ajd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aiy, <32 x i8> %i.ajb, <32 x i8> %i.ajc)
  %i.aje = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahn, <32 x i8> %i.ail)
  %i.ajf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aim, <32 x i8> %i.aje)
  %i.ajg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.aiq)
  %i.ajh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajf, <32 x i8> %i.air, <32 x i8> %i.ajg)
  %i.aji = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahp, <32 x i8> %i.aiv)
  %i.ajj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajh, <32 x i8> %i.aiw, <32 x i8> %i.aji)
  %i.ajk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahq, <32 x i8> %i.aja)
  %i.ajl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajj, <32 x i8> %i.ajb, <32 x i8> %i.ajk)
  %i.ajm = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.ajn = shufflevector <32 x i8> %i.ajm, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajn, <32 x i8> %i.ajn) ; 2 uses
  %i.ajp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahj, <32 x i8> %i.ajn)
  %i.ajq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajo, <32 x i8> %i.ajp)
  %i.ajr = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.ajs = shufflevector <32 x i8> %i.ajr, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajs, <32 x i8> %i.ajs) ; 2 uses
  %i.aju = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahk, <32 x i8> %i.ajs)
  %i.ajv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajq, <32 x i8> %i.ajt, <32 x i8> %i.aju)
  %i.ajw = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.ajx = shufflevector <32 x i8> %i.ajw, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajx, <32 x i8> %i.ajx) ; 2 uses
  %i.ajz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahl, <32 x i8> %i.ajx)
  %i.aka = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajv, <32 x i8> %i.ajy, <32 x i8> %i.ajz)
  %i.akb = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.akc = shufflevector <32 x i8> %i.akb, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.akd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akc, <32 x i8> %i.akc) ; 2 uses
  %i.ake = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahm, <32 x i8> %i.akc)
  %i.akf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aka, <32 x i8> %i.akd, <32 x i8> %i.ake)
  %i.akg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahn, <32 x i8> %i.ajn)
  %i.akh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajo, <32 x i8> %i.akg)
  %i.aki = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.ajs)
  %i.akj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akh, <32 x i8> %i.ajt, <32 x i8> %i.aki)
  %i.akk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahp, <32 x i8> %i.ajx)
  %i.akl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akj, <32 x i8> %i.ajy, <32 x i8> %i.akk)
  %i.akm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahq, <32 x i8> %i.akc)
  %i.akn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akl, <32 x i8> %i.akd, <32 x i8> %i.akm)
  %i.ako = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.akp = shufflevector <32 x i8> %i.ako, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.akq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akp, <32 x i8> %i.akp) ; 2 uses
  %i.akr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahr, <32 x i8> %i.akp)
  %i.aks = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.akq, <32 x i8> %i.akr)
  %i.akt = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.aku = shufflevector <32 x i8> %i.akt, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.akv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aku, <32 x i8> %i.aku) ; 2 uses
  %i.akw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahs, <32 x i8> %i.aku)
  %i.akx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aks, <32 x i8> %i.akv, <32 x i8> %i.akw)
  %i.aky = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.akz = shufflevector <32 x i8> %i.aky, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ala = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akz, <32 x i8> %i.akz) ; 2 uses
  %i.alb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.akz)
  %i.alc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akx, <32 x i8> %i.ala, <32 x i8> %i.alb)
  %i.ald = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.ale = shufflevector <32 x i8> %i.ald, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.alf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ale, <32 x i8> %i.ale) ; 2 uses
  %i.alg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahu, <32 x i8> %i.ale)
  %i.alh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alc, <32 x i8> %i.alf, <32 x i8> %i.alg)
  %i.ali = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahv, <32 x i8> %i.akp)
  %i.alj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.akq, <32 x i8> %i.ali)
  %i.alk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahw, <32 x i8> %i.aku)
  %i.all = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alj, <32 x i8> %i.akv, <32 x i8> %i.alk)
  %i.alm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahx, <32 x i8> %i.akz)
  %i.aln = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.all, <32 x i8> %i.ala, <32 x i8> %i.alm)
  %i.alo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.ale)
  %i.alp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aln, <32 x i8> %i.alf, <32 x i8> %i.alo)
  %i.alq = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.alr = shufflevector <32 x i8> %i.alq, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.als = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.alr, <32 x i8> %i.alr) ; 2 uses
  %i.alt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahr, <32 x i8> %i.alr)
  %i.alu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.als, <32 x i8> %i.alt)
  %i.alv = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.alw = shufflevector <32 x i8> %i.alv, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.alx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.alw, <32 x i8> %i.alw) ; 2 uses
  %i.aly = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahs, <32 x i8> %i.alw)
  %i.alz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alu, <32 x i8> %i.alx, <32 x i8> %i.aly)
  %i.ama = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.amb = shufflevector <32 x i8> %i.ama, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.amc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.amb, <32 x i8> %i.amb) ; 2 uses
  %i.amd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.amb)
  %i.ame = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alz, <32 x i8> %i.amc, <32 x i8> %i.amd)
  %i.amf = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.amg = shufflevector <32 x i8> %i.amf, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.amh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.amg, <32 x i8> %i.amg) ; 2 uses
  %i.ami = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahu, <32 x i8> %i.amg)
  %i.amj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ame, <32 x i8> %i.amh, <32 x i8> %i.ami)
  %i.amk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahv, <32 x i8> %i.alr)
  %i.aml = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.als, <32 x i8> %i.amk)
  %i.amm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahw, <32 x i8> %i.alw)
  %i.amn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aml, <32 x i8> %i.alx, <32 x i8> %i.amm)
  %i.amo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahx, <32 x i8> %i.amb)
  %i.amp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amn, <32 x i8> %i.amc, <32 x i8> %i.amo)
  %i.amq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.amg)
  %i.amr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amp, <32 x i8> %i.amh, <32 x i8> %i.amq)
  %i.ams = add <8 x i32> %i.alh, %i.ajd           ; 2 uses
  %i.amt = add <8 x i32> %i.alp, %i.ajl           ; 2 uses
  %i.amu = add <8 x i32> %i.amj, %i.akf           ; 2 uses
  %i.amv = add <8 x i32> %i.amr, %i.akn           ; 2 uses
  %i.amw = shufflevector <8 x i32> %i.ams, <8 x i32> %i.amt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.amx = shufflevector <8 x i32> %i.ams, <8 x i32> %i.amt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.amy = shufflevector <8 x i32> %i.amu, <8 x i32> %i.amv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.amz = shufflevector <8 x i32> %i.amu, <8 x i32> %i.amv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ana = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.aib, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !106
end_hunk_0
begin_hunk_1_@ggml_gemm_q4_K_8x8_q8_K:bb.a
  %i.xa = shufflevector <8 x i16> %i.nu, <8 x i16> poison, <32 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.xb = tail call <16 x i32> @llvm.x86.avx512.pmaddw.d.512(<32 x i16> %i.xa, <32 x i16> %i.iz)
  %i.xc = sitofp <16 x i32> %i.wv to <16 x float>
  %i.xd = fmul <16 x float> %i.vt, %i.cj
  %i.xe = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.vv ; 2 uses
  %i.xf = load <16 x float>, ptr %i.xe, align 64, !tbaa !9
  %i.xg = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xc, <16 x float> %i.xd, <16 x float> %i.xf)
  store <16 x float> %i.xg, ptr %i.xe, align 64, !tbaa !9
  %i.xh = sitofp <16 x i32> %i.wx to <16 x float>
  %i.xi = fmul <16 x float> %i.wa, %i.cj
  %i.xj = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.wc ; 2 uses
  %i.xk = load <16 x float>, ptr %i.xj, align 64, !tbaa !9
  %i.xl = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xh, <16 x float> %i.xi, <16 x float> %i.xk)
  store <16 x float> %i.xl, ptr %i.xj, align 64, !tbaa !9
  %i.xm = sitofp <16 x i32> %i.wz to <16 x float>
  %i.xn = fmul <16 x float> %i.wh, %i.cj
  %i.xo = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.wj ; 2 uses
  %i.xp = load <16 x float>, ptr %i.xo, align 64, !tbaa !9
  %i.xq = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xm, <16 x float> %i.xn, <16 x float> %i.xp)
  store <16 x float> %i.xq, ptr %i.xo, align 64, !tbaa !9
  %i.xr = sitofp <16 x i32> %i.xb to <16 x float>
  %i.xs = fmul <16 x float> %i.wo, %i.cj
  %i.xt = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.wq ; 2 uses
  %i.xu = load <16 x float>, ptr %i.xt, align 64, !tbaa !9
  %i.xv = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.xr, <16 x float> %i.xs, <16 x float> %i.xu)
  store <16 x float> %i.xv, ptr %i.xt, align 64, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !112

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next2454 = add nuw nsw i64 %indvars.iv2453, 1 ; 2 uses
  %exitcond2456.not = icmp eq i64 %indvars.iv.next2454, 4
  br i1 %exitcond2456.not, label %bb.e, label %bb.b, !llvm.loop !113

bb.e:                                             ; preds = %bb.d
  %i.xw = add nuw nsw i64 %.022342279.us, 1       ; 2 uses
  %exitcond2457.not = icmp eq i64 %i.xw, %i.h
  br i1 %exitcond2457.not, label %.preheader2270.us.loopexit, label %.lr.ph.us, !llvm.loop !114

.preheader2270.us.loopexit:                       ; preds = %bb.e
  %.pre = load <16 x float>, ptr %i.b, align 64, !tbaa !9
  %.pre2610 = load <16 x float>, ptr %i.c, align 64, !tbaa !9
  %.pre2611 = load <16 x float>, ptr %.phi.trans.insert, align 64, !tbaa !9
  %.pre2613 = load <16 x float>, ptr %.phi.trans.insert2612, align 64, !tbaa !9
  %.pre2615 = load <16 x float>, ptr %.phi.trans.insert2614, align 64, !tbaa !9
  %.pre2617 = load <16 x float>, ptr %.phi.trans.insert2616, align 64, !tbaa !9
  %.pre2619 = load <16 x float>, ptr %.phi.trans.insert2618, align 64, !tbaa !9
  %.pre2621 = load <16 x float>, ptr %.phi.trans.insert2620, align 64, !tbaa !9
  %.pre2623 = load <16 x float>, ptr %.phi.trans.insert2622, align 64, !tbaa !9
  %.pre2625 = load <16 x float>, ptr %.phi.trans.insert2624, align 64, !tbaa !9
  %.pre2627 = load <16 x float>, ptr %.phi.trans.insert2626, align 64, !tbaa !9
  %.pre2629 = load <16 x float>, ptr %.phi.trans.insert2628, align 64, !tbaa !9
  %.pre2631 = load <16 x float>, ptr %.phi.trans.insert2630, align 64, !tbaa !9
  %.pre2633 = load <16 x float>, ptr %.phi.trans.insert2632, align 64, !tbaa !9
  %.pre2635 = load <16 x float>, ptr %.phi.trans.insert2634, align 64, !tbaa !9
  %.pre2637 = load <16 x float>, ptr %.phi.trans.insert2636, align 64, !tbaa !9
  %.pre2639 = load <16 x float>, ptr %.phi.trans.insert2638, align 64, !tbaa !9
  %.pre2641 = load <16 x float>, ptr %.phi.trans.insert2640, align 64, !tbaa !9
  %.pre2643 = load <16 x float>, ptr %.phi.trans.insert2642, align 64, !tbaa !9
  %.pre2645 = load <16 x float>, ptr %.phi.trans.insert2644, align 64, !tbaa !9
  %.pre2647 = load <16 x float>, ptr %.phi.trans.insert2646, align 64, !tbaa !9
  %.pre2649 = load <16 x float>, ptr %.phi.trans.insert2648, align 64, !tbaa !9
  %i.xx = fsub <16 x float> %.pre, %.pre2610
  %i.xy = fsub <16 x float> %.pre2611, %.pre2613
  %i.xz = fsub <16 x float> %.pre2615, %.pre2617
  %i.ya = fsub <16 x float> %.pre2619, %.pre2621
  %i.yb = fsub <16 x float> %.pre2623, %.pre2625
  %i.yc = fsub <16 x float> %.pre2627, %.pre2629
  %i.yd = fsub <16 x float> %.pre2631, %.pre2633
  %i.ye = fsub <16 x float> %.pre2635, %.pre2637
  %i.yf = fsub <16 x float> %.pre2639, %.pre2641
  %i.yg = fsub <16 x float> %.pre2643, %.pre2645
  %i.yh = fsub <16 x float> %.pre2647, %.pre2649
  br label %.preheader2270.us

.preheader2270.us:                                ; preds = %.preheader2270.us.loopexit, %.preheader2271.us
  %i.yi = phi <16 x float> [ %i.xx, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yj = phi <16 x float> [ %i.xy, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yk = phi <16 x float> [ %i.xz, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yl = phi <16 x float> [ %i.ya, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.ym = phi <16 x float> [ %i.yb, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yn = phi <16 x float> [ %i.yc, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yo = phi <16 x float> [ %i.yd, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yp = phi <16 x float> [ %i.ye, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yq = phi <16 x float> [ %i.yf, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.yr = phi <16 x float> [ %i.yg, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %i.ys = phi <16 x float> [ %i.yh, %.preheader2270.us.loopexit ], [ zeroinitializer, %.preheader2271.us ]
  %.idx2261.us = shl nuw nsw i64 %.022312281.us, 5
  %invariant.gep.us = getelementptr i8, ptr %1, i64 %.idx2261.us ; 16 uses
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.am
  store <16 x float> %i.yi, ptr %gep.us, align 1, !tbaa !9
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ao
  store <16 x float> %i.yj, ptr %gep.us.1, align 1, !tbaa !9
  %gep.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.aq
  store <16 x float> %i.yk, ptr %gep.us.2, align 1, !tbaa !9
  %gep.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.as
  store <16 x float> %i.yl, ptr %gep.us.3, align 1, !tbaa !9
  %gep.us.4 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.au
  store <16 x float> %i.ym, ptr %gep.us.4, align 1, !tbaa !9
  %gep.us.5 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.aw
  store <16 x float> %i.yn, ptr %gep.us.5, align 1, !tbaa !9
  %gep.us.6 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ay
  store <16 x float> %i.yo, ptr %gep.us.6, align 1, !tbaa !9
  %gep.us.7 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ba
  store <16 x float> %i.yp, ptr %gep.us.7, align 1, !tbaa !9
  %gep.us.8 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bc
  store <16 x float> %i.yq, ptr %gep.us.8, align 1, !tbaa !9
  %gep.us.9 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.be
  store <16 x float> %i.yr, ptr %gep.us.9, align 1, !tbaa !9
  %gep.us.10 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bg
  store <16 x float> %i.ys, ptr %gep.us.10, align 1, !tbaa !9
  %gep.us.11 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bi
  %i.yt = load <16 x float>, ptr %i.w, align 64, !tbaa !9
  %i.yu = load <16 x float>, ptr %i.x, align 64, !tbaa !9
  %i.yv = fsub <16 x float> %i.yt, %i.yu
  store <16 x float> %i.yv, ptr %gep.us.11, align 1, !tbaa !9
  %gep.us.12 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bk
  %i.yw = load <16 x float>, ptr %i.y, align 64, !tbaa !9
  %i.yx = load <16 x float>, ptr %i.z, align 64, !tbaa !9
  %i.yy = fsub <16 x float> %i.yw, %i.yx
  store <16 x float> %i.yy, ptr %gep.us.12, align 1, !tbaa !9
  %gep.us.13 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bm
  %i.yz = load <16 x float>, ptr %i.aa, align 64, !tbaa !9
  %i.za = load <16 x float>, ptr %i.ab, align 64, !tbaa !9
  %i.zb = fsub <16 x float> %i.yz, %i.za
  store <16 x float> %i.zb, ptr %gep.us.13, align 1, !tbaa !9
  %gep.us.14 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bo
  %i.zc = load <16 x float>, ptr %i.ac, align 64, !tbaa !9
  %i.zd = load <16 x float>, ptr %i.ad, align 64, !tbaa !9
  %i.ze = fsub <16 x float> %i.zc, %i.zd
  store <16 x float> %i.ze, ptr %gep.us.14, align 1, !tbaa !9
  %gep.us.15 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bq
  %i.zf = load <16 x float>, ptr %i.ae, align 64, !tbaa !9
  %i.zg = load <16 x float>, ptr %i.af, align 64, !tbaa !9
  %i.zh = fsub <16 x float> %i.zf, %i.zg
  store <16 x float> %i.zh, ptr %gep.us.15, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.zi = add nuw nsw i64 %.022312281.us, 2       ; 2 uses
  %i.zj = icmp slt i64 %i.zi, %i.q
  br i1 %i.zj, label %.preheader2271.us, label %._crit_edge.us, !llvm.loop !115

._crit_edge.us:                                   ; preds = %.preheader2270.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.zk = add nuw nsw i64 %.022282283.us, 4       ; 3 uses
  %i.zl = icmp slt i64 %i.zk, %i.n
  br i1 %i.zl, label %.lr.ph2285.split.us, label %.preheader2269, !llvm.loop !116

.preheader2269:                                   ; preds = %.lr.ph2285.split, %._crit_edge.us, %bb.a
  %.02228.lcssa = phi i64 [ 0, %bb.a ], [ %i.zk, %._crit_edge.us ], [ %i.awx, %.lr.ph2285.split ] ; 4 uses
  %i.zm = sdiv i32 %5, 4
  %i.zn = sext i32 %i.zm to i64                   ; 9 uses
  %i.zo = icmp slt i64 %.02228.lcssa, %i.zn
  br i1 %i.zo, label %.lr.ph, label %._crit_edge2333

.lr.ph:                                           ; preds = %.preheader2269
  %i.zp = sdiv i32 %i.l, 8
  %i.zq = sext i32 %i.zp to i64                   ; 2 uses
  %i.zr = icmp sgt i32 %i.l, 7
  br i1 %i.zr, label %.lr.ph.split.us, label %._crit_edge2333

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.zs = icmp sgt i32 %0, 255
  br i1 %i.zs, label %.lr.ph2328.us.us, label %.lr.ph2328.us.preheader

.lr.ph2328.us.preheader:                          ; preds = %.lr.ph.split.us
  %i.zt = add nsw i64 %i.zq, -1                   ; 2 uses
  %i.zu = lshr i64 %i.zt, 1
  %i.zv = add nuw i64 %i.zu, 1                    ; 2 uses
  %xtraiter = and i64 %i.zv, 3                    ; 3 uses
  %i.zw = icmp ult i64 %i.zt, 6
  %unroll_iter = and i64 %i.zv, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2816 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph2328.us

.lr.ph2328.us.us:                                 ; preds = %.lr.ph.split.us, %._crit_edge.split.us.us.us
  %.12332.us.us = phi i64 [ %i.awf, %._crit_edge.split.us.us.us ], [ %.02228.lcssa, %.lr.ph.split.us ] ; 3 uses
  %i.zx = mul nsw i64 %.12332.us.us, %i.h
  %i.zy = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.zx
  %i.zz = shl nuw nsw i64 %.12332.us.us, 2        ; 4 uses
  %i.aaa = mul i64 %i.zz, %2
  %i.aab = or disjoint i64 %i.zz, 1
  %i.aac = mul i64 %i.aab, %2
  %i.aad = or disjoint i64 %i.zz, 2
  %i.aae = mul i64 %i.aad, %2
  %i.aaf = or disjoint i64 %i.zz, 3
  %i.aag = mul i64 %i.aaf, %2
  br label %.preheader2268.us.us.us

.preheader2268.us.us.us:                          ; preds = %..preheader2267_crit_edge.us.us.us, %.lr.ph2328.us.us
  %.022382327.us.us.us = phi i64 [ 0, %.lr.ph2328.us.us ], [ %i.awd, %..preheader2267_crit_edge.us.us.us ] ; 4 uses
  %i.aah = mul nuw nsw i64 %.022382327.us.us.us, %i.h
  %i.aai = getelementptr inbounds nuw [1152 x i8], ptr %3, i64 %i.aah
  %i.aaj = or disjoint i64 %.022382327.us.us.us, 1
  %i.aak = mul nuw nsw i64 %i.aaj, %i.h
  %i.aal = getelementptr inbounds nuw [1152 x i8], ptr %3, i64 %i.aak
  br label %bb.f

bb.f:                                             ; preds = %.preheader2268.us.us.us, %bb.h
  %.lcssa23042325.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avx, %bb.h ]
  %.lcssa23022323.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avv, %bb.h ]
  %.lcssa23002321.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avt, %bb.h ]
  %.lcssa22962319.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avh, %bb.h ]
  %.lcssa22942317.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avf, %bb.h ]
  %.lcssa22922315.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avd, %bb.h ]
  %.022412311.us.us.us = phi i64 [ 0, %.preheader2268.us.us.us ], [ %i.avy, %bb.h ] ; 4 uses
  %.lcssa229023072310.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avb, %bb.h ]
  %.lcssa229823082309.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader2268.us.us.us ], [ %i.avr, %bb.h ]
  %i.aam = getelementptr inbounds nuw [1152 x i8], ptr %i.aal, i64 %.022412311.us.us.us ; 12 uses
  %i.aan = load <2 x i64>, ptr %i.aam, align 1, !tbaa !9
  %i.aao = getelementptr inbounds nuw [1152 x i8], ptr %i.aai, i64 %.022412311.us.us.us ; 12 uses
  %i.aap = load <2 x i64>, ptr %i.aao, align 1, !tbaa !9
  %i.aaq = shufflevector <2 x i64> %i.aap, <2 x i64> %i.aan, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aar = bitcast <4 x i64> %i.aaq to <16 x half>
  %i.aas = fpext <16 x half> %i.aar to <16 x float> ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aau = load <2 x i64>, ptr %i.aat, align 1, !tbaa !9
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aao, i64 16
  %i.aaw = load <2 x i64>, ptr %i.aav, align 1, !tbaa !9
  %i.aax = shufflevector <2 x i64> %i.aaw, <2 x i64> %i.aau, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aay = bitcast <4 x i64> %i.aax to <16 x half>
  %i.aaz = fpext <16 x half> %i.aay to <16 x float> ; 4 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aao, i64 128
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aao, i64 160
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aao, i64 192
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aao, i64 224
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aao, i64 256
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aao, i64 288
  %i.abg = getelementptr inbounds nuw i8, ptr %i.aao, i64 320
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aao, i64 352
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aam, i64 128
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aam, i64 160
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aam, i64 192
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aam, i64 224
  %i.abm = getelementptr inbounds nuw i8, ptr %i.aam, i64 256
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aam, i64 288
  %i.abo = getelementptr inbounds nuw i8, ptr %i.aam, i64 320
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aam, i64 352
  %i.abq = getelementptr inbounds nuw i8, ptr %i.aao, i64 32
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aao, i64 44
  %i.abs = getelementptr inbounds nuw i8, ptr %i.aam, i64 32
  %i.abt = getelementptr inbounds nuw i8, ptr %i.aam, i64 44
  %i.abu = getelementptr inbounds nuw [1168 x i8], ptr %i.zy, i64 %.022412311.us.us.us ; 10 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 16
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 48
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 80
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abu, i64 112
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abu, i64 144
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abu, i64 176
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abu, i64 208
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abu, i64 240
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abu, i64 1040
  %i.ace = load <4 x float>, ptr %i.abu, align 16, !tbaa !9 ; 4 uses
  %i.acf = shufflevector <4 x float> %i.ace, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.acg = fmul <16 x float> %i.acf, %i.aas
  %i.ach = shufflevector <4 x float> %i.ace, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.aci = fmul <16 x float> %i.ach, %i.aas
  %i.acj = shufflevector <4 x float> %i.ace, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ack = fmul <16 x float> %i.acj, %i.aas
  %i.acl = shufflevector <4 x float> %i.ace, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.acm = fmul <16 x float> %i.acl, %i.aas
  %i.acn = fmul <16 x float> %i.acf, %i.aaz
  %i.aco = fmul <16 x float> %i.ach, %i.aaz
  %i.acp = fmul <16 x float> %i.acj, %i.aaz
  %i.acq = fmul <16 x float> %i.acl, %i.aaz
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv2479 = phi i64 [ %indvars.iv.next2480, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.acr = phi <16 x float> [ %i.avb, %bb.g ], [ %.lcssa229023072310.us.us.us, %bb.f ]
  %i.acs = phi <16 x float> [ %i.avd, %bb.g ], [ %.lcssa22922315.us.us.us, %bb.f ]
  %i.act = phi <16 x float> [ %i.avf, %bb.g ], [ %.lcssa22942317.us.us.us, %bb.f ]
  %i.acu = phi <16 x float> [ %i.avh, %bb.g ], [ %.lcssa22962319.us.us.us, %bb.f ]
  %i.acv = phi <16 x float> [ %i.avr, %bb.g ], [ %.lcssa229823082309.us.us.us, %bb.f ]
  %i.acw = phi <16 x float> [ %i.avt, %bb.g ], [ %.lcssa23002321.us.us.us, %bb.f ]
  %i.acx = phi <16 x float> [ %i.avv, %bb.g ], [ %.lcssa23022323.us.us.us, %bb.f ]
  %i.acy = phi <16 x float> [ %i.avx, %bb.g ], [ %.lcssa23042325.us.us.us, %bb.f ]
  %i.acz = shl nuw nsw i64 %indvars.iv2479, 8     ; 24 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.aba, i64 %i.acz
  %i.adb = load <8 x i32>, ptr %i.ada, align 1, !tbaa !9 ; 2 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.acz
  %i.add = load <8 x i32>, ptr %i.adc, align 1, !tbaa !9 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.abc, i64 %i.acz
  %i.adf = load <8 x i32>, ptr %i.ade, align 1, !tbaa !9 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.abd, i64 %i.acz
  %i.adh = load <8 x i32>, ptr %i.adg, align 1, !tbaa !9 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.abe, i64 %i.acz
  %i.adj = load <8 x i32>, ptr %i.adi, align 1, !tbaa !9 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %i.abf, i64 %i.acz
  %i.adl = load <8 x i32>, ptr %i.adk, align 1, !tbaa !9 ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.abg, i64 %i.acz
  %i.adn = load <8 x i32>, ptr %i.adm, align 1, !tbaa !9 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abh, i64 %i.acz
  %i.adp = load <8 x i32>, ptr %i.ado, align 1, !tbaa !9 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.acz
  %i.adr = load <8 x i32>, ptr %i.adq, align 1, !tbaa !9 ; 2 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.acz
  %i.adt = load <8 x i32>, ptr %i.ads, align 1, !tbaa !9 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.acz
  %i.adv = load <8 x i32>, ptr %i.adu, align 1, !tbaa !9 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.abl, i64 %i.acz
  %i.adx = load <8 x i32>, ptr %i.adw, align 1, !tbaa !9 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %i.abm, i64 %i.acz
  %i.adz = load <8 x i32>, ptr %i.ady, align 1, !tbaa !9 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.abn, i64 %i.acz
  %i.aeb = load <8 x i32>, ptr %i.aea, align 1, !tbaa !9 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.abo, i64 %i.acz
  %i.aed = load <8 x i32>, ptr %i.aec, align 1, !tbaa !9 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.abp, i64 %i.acz
  %i.aef = load <8 x i32>, ptr %i.aee, align 1, !tbaa !9 ; 2 uses
  %i.aeg = shufflevector <8 x i32> %i.adb, <8 x i32> %i.add, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeh = shufflevector <8 x i32> %i.adr, <8 x i32> %i.adt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aei = shufflevector <16 x i32> %i.aeg, <16 x i32> %i.aeh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aej = shufflevector <8 x i32> %i.adb, <8 x i32> %i.add, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aek = shufflevector <8 x i32> %i.adr, <8 x i32> %i.adt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ael = shufflevector <16 x i32> %i.aej, <16 x i32> %i.aek, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aem = shufflevector <8 x i32> %i.adf, <8 x i32> %i.adh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aen = shufflevector <8 x i32> %i.adv, <8 x i32> %i.adx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeo = shufflevector <16 x i32> %i.aem, <16 x i32> %i.aen, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aep = shufflevector <8 x i32> %i.adf, <8 x i32> %i.adh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeq = shufflevector <8 x i32> %i.adv, <8 x i32> %i.adx, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aer = shufflevector <16 x i32> %i.aep, <16 x i32> %i.aeq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aes = shufflevector <8 x i32> %i.adj, <8 x i32> %i.adl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aet = shufflevector <8 x i32> %i.adz, <8 x i32> %i.aeb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aeu = shufflevector <16 x i32> %i.aes, <16 x i32> %i.aet, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aev = shufflevector <8 x i32> %i.adj, <8 x i32> %i.adl, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aew = shufflevector <8 x i32> %i.adz, <8 x i32> %i.aeb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aex = shufflevector <16 x i32> %i.aev, <16 x i32> %i.aew, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.aey = shufflevector <8 x i32> %i.adn, <8 x i32> %i.adp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aez = shufflevector <8 x i32> %i.aed, <8 x i32> %i.aef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afa = shufflevector <16 x i32> %i.aey, <16 x i32> %i.aez, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.afb = shufflevector <8 x i32> %i.adn, <8 x i32> %i.adp, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afc = shufflevector <8 x i32> %i.aed, <8 x i32> %i.aef, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.afd = shufflevector <16 x i32> %i.afb, <16 x i32> %i.afc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.afe = bitcast <16 x i32> %i.aei to <32 x i16>
  %i.aff = lshr <32 x i16> %i.afe, splat (i16 4)
  %i.afg = bitcast <16 x i32> %i.ael to <32 x i16>
  %i.afh = lshr <32 x i16> %i.afg, splat (i16 4)
  %i.afi = bitcast <16 x i32> %i.aeo to <32 x i16>
  %i.afj = lshr <32 x i16> %i.afi, splat (i16 4)
  %i.afk = bitcast <16 x i32> %i.aer to <32 x i16>
  %i.afl = lshr <32 x i16> %i.afk, splat (i16 4)
  %i.afm = bitcast <16 x i32> %i.aeu to <32 x i16>
  %i.afn = lshr <32 x i16> %i.afm, splat (i16 4)
  %i.afo = bitcast <16 x i32> %i.aex to <32 x i16>
  %i.afp = lshr <32 x i16> %i.afo, splat (i16 4)
  %i.afq = bitcast <16 x i32> %i.afa to <32 x i16>
  %i.afr = lshr <32 x i16> %i.afq, splat (i16 4)
  %i.afs = bitcast <16 x i32> %i.afd to <32 x i16>
  %i.aft = lshr <32 x i16> %i.afs, splat (i16 4)
  %i.afu = and <16 x i32> %i.aei, splat (i32 252645135) ; 2 uses
  %i.afv = and <16 x i32> %i.ael, splat (i32 252645135) ; 2 uses
  %i.afw = and <16 x i32> %i.aeo, splat (i32 252645135) ; 2 uses
  %i.afx = and <16 x i32> %i.aer, splat (i32 252645135) ; 2 uses
  %i.afy = and <16 x i32> %i.aeu, splat (i32 252645135) ; 2 uses
  %i.afz = and <16 x i32> %i.aex, splat (i32 252645135) ; 2 uses
  %i.aga = and <16 x i32> %i.afa, splat (i32 252645135) ; 2 uses
  %i.agb = and <16 x i32> %i.afd, splat (i32 252645135) ; 2 uses
  %.inner2769 = and <32 x i16> %i.aff, splat (i16 3855) ; 2 uses
  %.inner2770 = and <32 x i16> %i.afh, splat (i16 3855) ; 2 uses
  %.inner2771 = and <32 x i16> %i.afj, splat (i16 3855) ; 2 uses
  %.inner2772 = and <32 x i16> %i.afl, splat (i16 3855) ; 2 uses
  %.inner2773 = and <32 x i16> %i.afn, splat (i16 3855) ; 2 uses
  %.inner2774 = and <32 x i16> %i.afp, splat (i16 3855) ; 2 uses
  %.inner2775 = and <32 x i16> %i.afr, splat (i16 3855) ; 2 uses
  %.inner2776 = and <32 x i16> %i.aft, splat (i16 3855) ; 2 uses
  %i.agc = mul nuw nsw i64 %indvars.iv2479, 24    ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.abq, i64 %i.agc ; 3 uses
  %.sroa.111223.0..sroa_idx.us.us.us = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %.sroa.111223.0.copyload.us.us.us = load i32, ptr %.sroa.111223.0..sroa_idx.us.us.us, align 1
  %i.age = insertelement <2 x i32> poison, i32 %.sroa.111223.0.copyload.us.us.us, i64 0
  %i.agf = shufflevector <2 x i32> %i.age, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agg = lshr <2 x i32> %i.agf, <i32 0, i32 4>
  %i.agh = and <2 x i32> %i.agg, splat (i32 252645135)
  %i.agi = load <2 x i32>, ptr %i.agd, align 1
  %i.agj = shufflevector <2 x i32> %i.agi, <2 x i32> %i.agh, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.agc ; 2 uses
  %.sroa.111213.0..sroa_idx.us.us.us = getelementptr inbounds nuw i8, ptr %i.agk, i64 8
  %.sroa.111213.0.copyload.us.us.us = load i32, ptr %.sroa.111213.0..sroa_idx.us.us.us, align 1
  %i.agl = insertelement <2 x i32> poison, i32 %.sroa.111213.0.copyload.us.us.us, i64 0
  %i.agm = shufflevector <2 x i32> %i.agl, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.agn = lshr <2 x i32> %i.agm, <i32 0, i32 4>
  %i.ago = and <2 x i32> %i.agn, splat (i32 252645135)
  %i.agp = load <2 x i32>, ptr %i.agk, align 1
  %i.agq = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.agd, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison)
  %i.agr = shufflevector <5 x i32> %i.agq, <5 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.ags = lshr <4 x i32> %i.agr, splat (i32 2)   ; 4 uses
  %i.agt = shufflevector <4 x i32> <i32 1061109567, i32 808464432, i32 1061109567, i32 poison>, <4 x i32> %i.ags, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.agu = shufflevector <4 x i32> <i32 -1, i32 poison, i32 -1, i32 808464432>, <4 x i32> %i.ags, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.agv = and <4 x i32> %i.agt, %i.agu           ; 2 uses
  %i.agw = and <4 x i32> %i.agj, %i.agv
  %i.agx = or disjoint <4 x i32> %i.agj, %i.agv
  %i.agy = shufflevector <4 x i32> <i32 1061109567, i32 808464432, i32 1061109567, i32 poison>, <4 x i32> %i.ags, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.agz = shufflevector <4 x i32> <i32 -1, i32 poison, i32 -1, i32 808464432>, <4 x i32> %i.ags, <4 x i32> <i32 0, i32 6, i32 2, i32 3>
  %i.aha = and <4 x i32> %i.agy, %i.agz           ; 2 uses
  %i.ahb = shufflevector <2 x i32> %i.agp, <2 x i32> %i.ago, <4 x i32> <i32 0, i32 2, i32 1, i32 3> ; 2 uses
  %i.ahc = and <4 x i32> %i.ahb, %i.aha
  %i.ahd = or disjoint <4 x i32> %i.ahb, %i.aha
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.agc ; 3 uses
end_hunk_1
begin_hunk_2_@ggml_gemm_q4_K_8x8_q8_K:bb.a
  %i.bpv = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bpp, <8 x float> %i.bpr, <8 x float> %i.bpu)
  store <8 x float> %i.bpv, ptr %i.bpt, align 32, !tbaa !9
  %i.bpw = shufflevector <8 x i16> %i.bgw, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bpx = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bpw, <16 x i16> %i.bcr)
  %i.bpy = shufflevector <8 x i16> %i.bgw, <8 x i16> poison, <16 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.bpz = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bpy, <16 x i16> %i.bcr)
  %i.bqa = shufflevector <8 x i16> %i.bgw, <8 x i16> poison, <16 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.bqb = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bqa, <16 x i16> %i.bcr)
  %i.bqc = shufflevector <8 x i16> %i.bgw, <8 x i16> poison, <16 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.bqd = tail call <8 x i32> @llvm.x86.avx2.pmadd.wd(<16 x i16> %i.bqc, <16 x i16> %i.bcr)
  %i.bqe = sitofp <8 x i32> %i.bpx to <8 x float>
  %i.bqf = fmul <8 x float> %i.bov, %i.azl
  %i.bqg = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.box ; 2 uses
  %i.bqh = load <8 x float>, ptr %i.bqg, align 32, !tbaa !9
  %i.bqi = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bqe, <8 x float> %i.bqf, <8 x float> %i.bqh)
  store <8 x float> %i.bqi, ptr %i.bqg, align 32, !tbaa !9
  %i.bqj = sitofp <8 x i32> %i.bpz to <8 x float>
  %i.bqk = fmul <8 x float> %i.bpc, %i.azl
  %i.bql = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.bpe ; 2 uses
  %i.bqm = load <8 x float>, ptr %i.bql, align 32, !tbaa !9
  %i.bqn = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bqj, <8 x float> %i.bqk, <8 x float> %i.bqm)
  store <8 x float> %i.bqn, ptr %i.bql, align 32, !tbaa !9
  %i.bqo = sitofp <8 x i32> %i.bqb to <8 x float>
  %i.bqp = fmul <8 x float> %i.bpj, %i.azl
  %i.bqq = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.bpl ; 2 uses
  %i.bqr = load <8 x float>, ptr %i.bqq, align 32, !tbaa !9
  %i.bqs = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bqo, <8 x float> %i.bqp, <8 x float> %i.bqr)
  store <8 x float> %i.bqs, ptr %i.bqq, align 32, !tbaa !9
  %i.bqt = sitofp <8 x i32> %i.bqd to <8 x float>
  %i.bqu = fmul <8 x float> %i.bpq, %i.azl
  %i.bqv = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.bps ; 2 uses
  %i.bqw = load <8 x float>, ptr %i.bqv, align 32, !tbaa !9
  %i.bqx = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.bqt, <8 x float> %i.bqu, <8 x float> %i.bqw)
  store <8 x float> %i.bqx, ptr %i.bqv, align 32, !tbaa !9
  %indvars.iv.next2504 = add nuw nsw i64 %indvars.iv2503, 1 ; 2 uses
  %exitcond2506.not = icmp eq i64 %indvars.iv.next2504, 4
  br i1 %exitcond2506.not, label %bb.m, label %bb.l, !llvm.loop !122

bb.m:                                             ; preds = %bb.l
  %indvars.iv.next2508 = add nuw nsw i64 %indvars.iv2507, 1 ; 2 uses
  %exitcond2510.not = icmp eq i64 %indvars.iv.next2508, 4
  br i1 %exitcond2510.not, label %bb.n, label %bb.k, !llvm.loop !123

bb.n:                                             ; preds = %bb.m
  %i.bqy = add nuw nsw i64 %.022482358.us, 1      ; 2 uses
  %exitcond2511.not = icmp eq i64 %i.bqy, %i.h
  br i1 %exitcond2511.not, label %.preheader2264.us.loopexit, label %.lr.ph2359.us, !llvm.loop !124

.preheader2264.us.loopexit:                       ; preds = %bb.n
  %.pre2650 = load <8 x float>, ptr %i.e, align 32, !tbaa !9
  %.pre2651 = load <8 x float>, ptr %i.f, align 32, !tbaa !9
  %.pre2653 = load <8 x float>, ptr %.phi.trans.insert2652, align 32, !tbaa !9
  %.pre2655 = load <8 x float>, ptr %.phi.trans.insert2654, align 32, !tbaa !9
  %.pre2657 = load <8 x float>, ptr %.phi.trans.insert2656, align 32, !tbaa !9
  %.pre2659 = load <8 x float>, ptr %.phi.trans.insert2658, align 32, !tbaa !9
  %.pre2661 = load <8 x float>, ptr %.phi.trans.insert2660, align 32, !tbaa !9
  %.pre2663 = load <8 x float>, ptr %.phi.trans.insert2662, align 32, !tbaa !9
  %.pre2665 = load <8 x float>, ptr %.phi.trans.insert2664, align 32, !tbaa !9
  %.pre2667 = load <8 x float>, ptr %.phi.trans.insert2666, align 32, !tbaa !9
  %.pre2669 = load <8 x float>, ptr %.phi.trans.insert2668, align 32, !tbaa !9
  %.pre2671 = load <8 x float>, ptr %.phi.trans.insert2670, align 32, !tbaa !9
  %.pre2673 = load <8 x float>, ptr %.phi.trans.insert2672, align 32, !tbaa !9
  %.pre2675 = load <8 x float>, ptr %.phi.trans.insert2674, align 32, !tbaa !9
  %.pre2677 = load <8 x float>, ptr %.phi.trans.insert2676, align 32, !tbaa !9
  %.pre2679 = load <8 x float>, ptr %.phi.trans.insert2678, align 32, !tbaa !9
  %.pre2681 = load <8 x float>, ptr %.phi.trans.insert2680, align 32, !tbaa !9
  %.pre2683 = load <8 x float>, ptr %.phi.trans.insert2682, align 32, !tbaa !9
  %.pre2685 = load <8 x float>, ptr %.phi.trans.insert2684, align 32, !tbaa !9
  %.pre2687 = load <8 x float>, ptr %.phi.trans.insert2686, align 32, !tbaa !9
  %.pre2689 = load <8 x float>, ptr %.phi.trans.insert2688, align 32, !tbaa !9
  %.pre2691 = load <8 x float>, ptr %.phi.trans.insert2690, align 32, !tbaa !9
  %i.bqz = fsub <8 x float> %.pre2650, %.pre2651
  %i.bra = fsub <8 x float> %.pre2653, %.pre2655
  %i.brb = fsub <8 x float> %.pre2657, %.pre2659
  %i.brc = fsub <8 x float> %.pre2661, %.pre2663
  %i.brd = fsub <8 x float> %.pre2665, %.pre2667
  %i.bre = fsub <8 x float> %.pre2669, %.pre2671
  %i.brf = fsub <8 x float> %.pre2673, %.pre2675
  %i.brg = fsub <8 x float> %.pre2677, %.pre2679
  %i.brh = fsub <8 x float> %.pre2681, %.pre2683
  %i.bri = fsub <8 x float> %.pre2685, %.pre2687
  %i.brj = fsub <8 x float> %.pre2689, %.pre2691
  br label %.preheader2264.us

.preheader2264.us:                                ; preds = %.preheader2264.us.loopexit, %.preheader2265.us
  %i.brk = phi <8 x float> [ %i.bqz, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brl = phi <8 x float> [ %i.bra, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brm = phi <8 x float> [ %i.brb, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brn = phi <8 x float> [ %i.brc, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.bro = phi <8 x float> [ %i.brd, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brp = phi <8 x float> [ %i.bre, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brq = phi <8 x float> [ %i.brf, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brr = phi <8 x float> [ %i.brg, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brs = phi <8 x float> [ %i.brh, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.brt = phi <8 x float> [ %i.bri, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %i.bru = phi <8 x float> [ %i.brj, %.preheader2264.us.loopexit ], [ zeroinitializer, %.preheader2265.us ]
  %.idx2259.us = shl i64 %.022452361.us, 5
  %invariant.gep.us2368 = getelementptr i8, ptr %1, i64 %.idx2259.us ; 16 uses
  %gep.us2367 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.axz
  store <8 x float> %i.brk, ptr %gep.us2367, align 1, !tbaa !9
  %gep.us2367.1 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayb
  store <8 x float> %i.brl, ptr %gep.us2367.1, align 1, !tbaa !9
  %gep.us2367.2 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayd
  store <8 x float> %i.brm, ptr %gep.us2367.2, align 1, !tbaa !9
  %gep.us2367.3 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayf
  store <8 x float> %i.brn, ptr %gep.us2367.3, align 1, !tbaa !9
  %gep.us2367.4 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayh
  store <8 x float> %i.bro, ptr %gep.us2367.4, align 1, !tbaa !9
  %gep.us2367.5 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayj
  store <8 x float> %i.brp, ptr %gep.us2367.5, align 1, !tbaa !9
  %gep.us2367.6 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayl
  store <8 x float> %i.brq, ptr %gep.us2367.6, align 1, !tbaa !9
  %gep.us2367.7 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayn
  store <8 x float> %i.brr, ptr %gep.us2367.7, align 1, !tbaa !9
  %gep.us2367.8 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayp
  store <8 x float> %i.brs, ptr %gep.us2367.8, align 1, !tbaa !9
  %gep.us2367.9 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayr
  store <8 x float> %i.brt, ptr %gep.us2367.9, align 1, !tbaa !9
  %gep.us2367.10 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayt
  store <8 x float> %i.bru, ptr %gep.us2367.10, align 1, !tbaa !9
  %gep.us2367.11 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayv
  %i.brv = load <8 x float>, ptr %i.axj, align 32, !tbaa !9
  %i.brw = load <8 x float>, ptr %i.axk, align 32, !tbaa !9
  %i.brx = fsub <8 x float> %i.brv, %i.brw
  store <8 x float> %i.brx, ptr %gep.us2367.11, align 1, !tbaa !9
  %gep.us2367.12 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayx
  %i.bry = load <8 x float>, ptr %i.axl, align 32, !tbaa !9
  %i.brz = load <8 x float>, ptr %i.axm, align 32, !tbaa !9
  %i.bsa = fsub <8 x float> %i.bry, %i.brz
  store <8 x float> %i.bsa, ptr %gep.us2367.12, align 1, !tbaa !9
  %gep.us2367.13 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.ayz
  %i.bsb = load <8 x float>, ptr %i.axn, align 32, !tbaa !9
  %i.bsc = load <8 x float>, ptr %i.axo, align 32, !tbaa !9
  %i.bsd = fsub <8 x float> %i.bsb, %i.bsc
  store <8 x float> %i.bsd, ptr %gep.us2367.13, align 1, !tbaa !9
  %gep.us2367.14 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.azb
  %i.bse = load <8 x float>, ptr %i.axp, align 32, !tbaa !9
  %i.bsf = load <8 x float>, ptr %i.axq, align 32, !tbaa !9
  %i.bsg = fsub <8 x float> %i.bse, %i.bsf
  store <8 x float> %i.bsg, ptr %gep.us2367.14, align 1, !tbaa !9
  %gep.us2367.15 = getelementptr [4 x i8], ptr %invariant.gep.us2368, i64 %i.azd
  %i.bsh = load <8 x float>, ptr %i.axr, align 32, !tbaa !9
  %i.bsi = load <8 x float>, ptr %i.axs, align 32, !tbaa !9
  %i.bsj = fsub <8 x float> %i.bsh, %i.bsi
  store <8 x float> %i.bsj, ptr %gep.us2367.15, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.bsk = add nsw i64 %.022452361.us, 1          ; 2 uses
  %exitcond2516.not = icmp eq i64 %i.bsk, %i.axd
  br i1 %exitcond2516.not, label %._crit_edge.us2369, label %.preheader2265.us, !llvm.loop !125

._crit_edge.us2369:                               ; preds = %.preheader2264.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.bsl = add nsw i64 %.32363.us, 4              ; 3 uses
  %i.bsm = icmp slt i64 %i.bsl, %i.n
  br i1 %i.bsm, label %.lr.ph2365.split.us, label %.preheader2263, !llvm.loop !126

.preheader2263:                                   ; preds = %.lr.ph2365.split, %._crit_edge.us2369, %bb.j
  %.3.lcssa = phi i64 [ %.2, %bb.j ], [ %i.bsl, %._crit_edge.us2369 ], [ %i.cks, %.lr.ph2365.split ] ; 3 uses
  %i.bsn = icmp slt i64 %.3.lcssa, %i.zn
  br i1 %i.bsn, label %.lr.ph2416, label %._crit_edge2417.split

.lr.ph2416:                                       ; preds = %.preheader2263
  %i.bso = sdiv i32 %6, 8
  %i.bsp = sext i32 %i.bso to i64                 ; 5 uses
  %i.bsq = icmp slt i64 %.02229, %i.bsp
  br i1 %i.bsq, label %.lr.ph2416.split, label %._crit_edge2417.split

.lr.ph2416.split:                                 ; preds = %.lr.ph2416
  %i.bsr = icmp sgt i32 %0, 255
  br i1 %i.bsr, label %.lr.ph2412.us, label %.lr.ph2412.preheader

.lr.ph2412.preheader:                             ; preds = %.lr.ph2416.split
  %i.bss = sub nsw i64 %i.bsp, %.02229
  %xtraiter2820 = and i64 %i.bss, 3               ; 2 uses
  %lcmp.mod2821.not = icmp eq i64 %xtraiter2820, 0
  %i.bst = sub nsw i64 %.02229, %i.bsp
  %i.bsu = icmp ugt i64 %i.bst, -4
  br label %.lr.ph2412

.lr.ph2412.us:                                    ; preds = %.lr.ph2416.split, %._crit_edge.split.us.us
  %.42415.us = phi i64 [ %i.ckr, %._crit_edge.split.us.us ], [ %.3.lcssa, %.lr.ph2416.split ] ; 3 uses
  %i.bsv = mul nsw i64 %.42415.us, %i.h
  %i.bsw = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.bsv
  %i.bsx = shl nsw i64 %.42415.us, 2              ; 4 uses
  %i.bsy = mul i64 %i.bsx, %2
  %i.bsz = or disjoint i64 %i.bsx, 1
  %i.bta = mul i64 %i.bsz, %2
  %i.btb = or disjoint i64 %i.bsx, 2
  %i.btc = mul i64 %i.btb, %2
  %i.btd = or disjoint i64 %i.bsx, 3
  %i.bte = mul i64 %i.btd, %2
  br label %.preheader2262.us.us

.preheader2262.us.us:                             ; preds = %..preheader_crit_edge.us.us, %.lr.ph2412.us
  %.022542411.us.us = phi i64 [ %.02229, %.lr.ph2412.us ], [ %i.ckq, %..preheader_crit_edge.us.us ] ; 3 uses
  %i.btf = mul nsw i64 %.022542411.us.us, %i.h
  %i.btg = getelementptr inbounds [1152 x i8], ptr %3, i64 %i.btf
  br label %bb.o

bb.o:                                             ; preds = %.preheader2262.us.us, %bb.q
  %.lcssa23872409.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.ckk, %bb.q ]
  %.lcssa23852407.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.cki, %bb.q ]
  %.lcssa23832405.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.ckg, %bb.q ]
  %.lcssa23792403.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.cju, %bb.q ]
  %.lcssa23772401.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.cjs, %bb.q ]
  %.lcssa23752399.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.cjq, %bb.q ]
  %.022512394.us.us = phi i64 [ 0, %.preheader2262.us.us ], [ %i.ckl, %bb.q ] ; 3 uses
  %.lcssa237323902393.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.cjo, %bb.q ]
  %.lcssa238123912392.us.us = phi <8 x float> [ zeroinitializer, %.preheader2262.us.us ], [ %i.cke, %bb.q ]
  %i.bth = getelementptr inbounds nuw [1152 x i8], ptr %i.btg, i64 %.022512394.us.us ; 11 uses
  %i.bti = load <8 x half>, ptr %i.bth, align 1, !tbaa !9
  %i.btj = fpext <8 x half> %i.bti to <8 x float> ; 4 uses
  %i.btk = getelementptr inbounds nuw i8, ptr %i.bth, i64 16
  %i.btl = load <8 x half>, ptr %i.btk, align 1, !tbaa !9
  %i.btm = fpext <8 x half> %i.btl to <8 x float> ; 4 uses
  %i.btn = getelementptr inbounds nuw i8, ptr %i.bth, i64 128
  %i.bto = getelementptr inbounds nuw i8, ptr %i.bth, i64 160
  %i.btp = getelementptr inbounds nuw i8, ptr %i.bth, i64 192
  %i.btq = getelementptr inbounds nuw i8, ptr %i.bth, i64 224
  %i.btr = getelementptr inbounds nuw i8, ptr %i.bth, i64 256
  %i.bts = getelementptr inbounds nuw i8, ptr %i.bth, i64 288
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bth, i64 320
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bth, i64 352
  %i.btv = getelementptr inbounds nuw i8, ptr %i.bth, i64 32
  %i.btw = getelementptr inbounds nuw [1168 x i8], ptr %i.bsw, i64 %.022512394.us.us ; 10 uses
  %i.btx = getelementptr inbounds nuw i8, ptr %i.btw, i64 16
  %i.bty = getelementptr inbounds nuw i8, ptr %i.btw, i64 48
  %i.btz = getelementptr inbounds nuw i8, ptr %i.btw, i64 80
  %i.bua = getelementptr inbounds nuw i8, ptr %i.btw, i64 112
  %i.bub = getelementptr inbounds nuw i8, ptr %i.btw, i64 144
  %i.buc = getelementptr inbounds nuw i8, ptr %i.btw, i64 176
  %i.bud = getelementptr inbounds nuw i8, ptr %i.btw, i64 208
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btw, i64 240
  %i.buf = getelementptr inbounds nuw i8, ptr %i.btw, i64 1040
  %i.bug = load <4 x float>, ptr %i.btw, align 16, !tbaa !9 ; 4 uses
  %i.buh = shufflevector <4 x float> %i.bug, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bui = fmul <8 x float> %i.buh, %i.btj
  %i.buj = shufflevector <4 x float> %i.bug, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.buk = fmul <8 x float> %i.buj, %i.btj
  %i.bul = shufflevector <4 x float> %i.bug, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.bum = fmul <8 x float> %i.bul, %i.btj
  %i.bun = shufflevector <4 x float> %i.bug, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.buo = fmul <8 x float> %i.bun, %i.btj
  %i.bup = fmul <8 x float> %i.buh, %i.btm
  %i.buq = fmul <8 x float> %i.buj, %i.btm
  %i.bur = fmul <8 x float> %i.bul, %i.btm
  %i.bus = fmul <8 x float> %i.bun, %i.btm
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %indvars.iv2535 = phi i64 [ %indvars.iv.next2536, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %i.but = phi <8 x float> [ %i.cjo, %bb.p ], [ %.lcssa237323902393.us.us, %bb.o ]
  %i.buu = phi <8 x float> [ %i.cjq, %bb.p ], [ %.lcssa23752399.us.us, %bb.o ]
  %i.buv = phi <8 x float> [ %i.cjs, %bb.p ], [ %.lcssa23772401.us.us, %bb.o ]
  %i.buw = phi <8 x float> [ %i.cju, %bb.p ], [ %.lcssa23792403.us.us, %bb.o ]
  %i.bux = phi <8 x float> [ %i.cke, %bb.p ], [ %.lcssa238123912392.us.us, %bb.o ]
  %i.buy = phi <8 x float> [ %i.ckg, %bb.p ], [ %.lcssa23832405.us.us, %bb.o ]
  %i.buz = phi <8 x float> [ %i.cki, %bb.p ], [ %.lcssa23852407.us.us, %bb.o ]
  %i.bva = phi <8 x float> [ %i.ckk, %bb.p ], [ %.lcssa23872409.us.us, %bb.o ]
  %i.bvb = shl nuw nsw i64 %indvars.iv2535, 8     ; 16 uses
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.btn, i64 %i.bvb
  %i.bvd = load <8 x i32>, ptr %i.bvc, align 1, !tbaa !9 ; 2 uses
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bto, i64 %i.bvb
  %i.bvf = load <8 x i32>, ptr %i.bve, align 1, !tbaa !9 ; 2 uses
  %i.bvg = getelementptr inbounds nuw i8, ptr %i.btp, i64 %i.bvb
  %i.bvh = load <8 x i32>, ptr %i.bvg, align 1, !tbaa !9 ; 2 uses
  %i.bvi = getelementptr inbounds nuw i8, ptr %i.btq, i64 %i.bvb
  %i.bvj = load <8 x i32>, ptr %i.bvi, align 1, !tbaa !9 ; 2 uses
  %i.bvk = getelementptr inbounds nuw i8, ptr %i.btr, i64 %i.bvb
  %i.bvl = load <8 x i32>, ptr %i.bvk, align 1, !tbaa !9 ; 2 uses
  %i.bvm = getelementptr inbounds nuw i8, ptr %i.bts, i64 %i.bvb
  %i.bvn = load <8 x i32>, ptr %i.bvm, align 1, !tbaa !9 ; 2 uses
  %i.bvo = getelementptr inbounds nuw i8, ptr %i.btt, i64 %i.bvb
  %i.bvp = load <8 x i32>, ptr %i.bvo, align 1, !tbaa !9 ; 2 uses
  %i.bvq = getelementptr inbounds nuw i8, ptr %i.btu, i64 %i.bvb
  %i.bvr = load <8 x i32>, ptr %i.bvq, align 1, !tbaa !9 ; 2 uses
  %i.bvs = shufflevector <8 x i32> %i.bvd, <8 x i32> %i.bvf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bvt = shufflevector <8 x i32> %i.bvd, <8 x i32> %i.bvf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bvu = shufflevector <8 x i32> %i.bvh, <8 x i32> %i.bvj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bvv = shufflevector <8 x i32> %i.bvh, <8 x i32> %i.bvj, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bvw = shufflevector <8 x i32> %i.bvl, <8 x i32> %i.bvn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bvx = shufflevector <8 x i32> %i.bvl, <8 x i32> %i.bvn, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bvy = shufflevector <8 x i32> %i.bvp, <8 x i32> %i.bvr, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bvz = shufflevector <8 x i32> %i.bvp, <8 x i32> %i.bvr, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bwa = bitcast <8 x i32> %i.bvs to <16 x i16>
  %i.bwb = lshr <16 x i16> %i.bwa, splat (i16 4)
  %i.bwc = bitcast <8 x i32> %i.bvt to <16 x i16>
  %i.bwd = lshr <16 x i16> %i.bwc, splat (i16 4)
  %i.bwe = bitcast <8 x i32> %i.bvu to <16 x i16>
  %i.bwf = lshr <16 x i16> %i.bwe, splat (i16 4)
  %i.bwg = bitcast <8 x i32> %i.bvv to <16 x i16>
  %i.bwh = lshr <16 x i16> %i.bwg, splat (i16 4)
  %i.bwi = bitcast <8 x i32> %i.bvw to <16 x i16>
  %i.bwj = lshr <16 x i16> %i.bwi, splat (i16 4)
  %i.bwk = bitcast <8 x i32> %i.bvx to <16 x i16>
  %i.bwl = lshr <16 x i16> %i.bwk, splat (i16 4)
  %i.bwm = bitcast <8 x i32> %i.bvy to <16 x i16>
  %i.bwn = lshr <16 x i16> %i.bwm, splat (i16 4)
  %i.bwo = bitcast <8 x i32> %i.bvz to <16 x i16>
  %i.bwp = lshr <16 x i16> %i.bwo, splat (i16 4)
  %i.bwq = and <8 x i32> %i.bvs, splat (i32 252645135) ; 2 uses
  %i.bwr = and <8 x i32> %i.bvt, splat (i32 252645135) ; 2 uses
  %i.bws = and <8 x i32> %i.bvu, splat (i32 252645135) ; 2 uses
  %i.bwt = and <8 x i32> %i.bvv, splat (i32 252645135) ; 2 uses
  %i.bwu = and <8 x i32> %i.bvw, splat (i32 252645135) ; 2 uses
  %i.bwv = and <8 x i32> %i.bvx, splat (i32 252645135) ; 2 uses
  %i.bww = and <8 x i32> %i.bvy, splat (i32 252645135) ; 2 uses
  %i.bwx = and <8 x i32> %i.bvz, splat (i32 252645135) ; 2 uses
  %.inner2785 = and <16 x i16> %i.bwb, splat (i16 3855) ; 2 uses
  %.inner2786 = and <16 x i16> %i.bwd, splat (i16 3855) ; 2 uses
  %.inner2787 = and <16 x i16> %i.bwf, splat (i16 3855) ; 2 uses
  %.inner2788 = and <16 x i16> %i.bwh, splat (i16 3855) ; 2 uses
  %.inner2789 = and <16 x i16> %i.bwj, splat (i16 3855) ; 2 uses
  %.inner2790 = and <16 x i16> %i.bwl, splat (i16 3855) ; 2 uses
  %.inner2791 = and <16 x i16> %i.bwn, splat (i16 3855) ; 2 uses
  %.inner2792 = and <16 x i16> %i.bwp, splat (i16 3855) ; 2 uses
  %i.bwy = mul nuw nsw i64 %indvars.iv2535, 24
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.btv, i64 %i.bwy ; 2 uses
  %.sroa.11234.0..sroa_idx.us.us = getelementptr inbounds nuw i8, ptr %i.bwz, i64 8
  %i.bxa = tail call <5 x i32> @llvm.masked.load.v5i32.p0(ptr nonnull align 1 %i.bwz, <5 x i1> <i1 true, i1 true, i1 false, i1 true, i1 true>, <5 x i32> poison) ; 2 uses
  %i.bxb = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr nonnull align 1 %.sroa.11234.0..sroa_idx.us.us, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x i32> poison)
  %i.bxc = shufflevector <4 x i32> %i.bxb, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 3, i32 3>
  %i.bxd = lshr <4 x i32> %i.bxc, <i32 4, i32 0, i32 4, i32 0>
  %i.bxe = and <4 x i32> %i.bxd, splat (i32 252645135)
  %i.bxf = shufflevector <5 x i32> %i.bxa, <5 x i32> poison, <4 x i32> <i32 1, i32 0, i32 4, i32 3>
  %i.bxg = lshr <5 x i32> %i.bxa, <i32 2, i32 2, i32 poison, i32 2, i32 2>
  %i.bxh = shufflevector <5 x i32> %i.bxg, <5 x i32> poison, <8 x i32> <i32 1, i32 0, i32 4, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bxi = shufflevector <8 x i32> %i.bxh, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 -1, i32 -1, i32 -1, i32 -1>, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %i.bxj = and <8 x i32> %i.bxi, <i32 808464432, i32 808464432, i32 808464432, i32 808464432, i32 1061109567, i32 1061109567, i32 1061109567, i32 1061109567> ; 2 uses
  %i.bxk = shufflevector <4 x i32> %i.bxf, <4 x i32> %i.bxe, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.bxl = or disjoint <8 x i32> %i.bxk, %i.bxj
  %i.bxm = and <8 x i32> %i.bxk, %i.bxj
  %i.bxn = shufflevector <8 x i32> %i.bxl, <8 x i32> %i.bxm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.bxo = bitcast <8 x i32> %i.bxn to <32 x i8>
  %i.bxp = shufflevector <32 x i8> %i.bxo, <32 x i8> poison, <16 x i32> <i32 20, i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7>
  %i.bxq = zext nneg <16 x i8> %i.bxp to <16 x i16>
  %i.bxr = bitcast <8 x i32> %i.bxn to <32 x i8>
  %i.bxs = shufflevector <32 x i8> %i.bxr, <32 x i8> poison, <16 x i32> <i32 28, i32 28, i32 29, i32 29, i32 30, i32 30, i32 31, i32 31, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15>
  %i.bxt = zext nneg <16 x i8> %i.bxs to <16 x i16>
  %i.bxu = bitcast <8 x i32> %i.bxn to <32 x i8>
  %i.bxv = bitcast <8 x i32> %i.bxn to <32 x i8>
  %i.bxw = shufflevector <32 x i8> %i.bxu, <32 x i8> %i.bxv, <16 x i32> <i32 16, i32 56, i32 17, i32 57, i32 18, i32 58, i32 19, i32 59, i32 0, i32 40, i32 1, i32 41, i32 2, i32 42, i32 3, i32 43>
  %i.bxx = zext nneg <16 x i8> %i.bxw to <16 x i16> ; 4 uses
  %i.bxy = bitcast <16 x i16> %i.bxq to <8 x i32> ; 2 uses
  %i.bxz = shufflevector <8 x i32> %i.bxy, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5>
  %i.bya = shufflevector <8 x i32> %i.bxy, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7>
  %i.byb = bitcast <16 x i16> %i.bxt to <8 x i32> ; 2 uses
  %i.byc = shufflevector <8 x i32> %i.byb, <8 x i32> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 4, i32 5, i32 4, i32 5>
  %i.byd = shufflevector <8 x i32> %i.byb, <8 x i32> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 6, i32 7, i32 6, i32 7>
  %i.bye = getelementptr inbounds nuw i8, ptr %i.btx, i64 %i.bvb
  %i.byf = load <8 x i32>, ptr %i.bye, align 1, !tbaa !9 ; 4 uses
  %i.byg = getelementptr inbounds nuw i8, ptr %i.bty, i64 %i.bvb
  %i.byh = load <8 x i32>, ptr %i.byg, align 1, !tbaa !9 ; 4 uses
  %i.byi = getelementptr inbounds nuw i8, ptr %i.btz, i64 %i.bvb
  %i.byj = load <8 x i32>, ptr %i.byi, align 1, !tbaa !9 ; 4 uses
  %i.byk = getelementptr inbounds nuw i8, ptr %i.bua, i64 %i.bvb
  %i.byl = load <8 x i32>, ptr %i.byk, align 1, !tbaa !9 ; 4 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %i.bub, i64 %i.bvb
  %i.byn = load <8 x i32>, ptr %i.bym, align 1, !tbaa !9 ; 4 uses
  %i.byo = getelementptr inbounds nuw i8, ptr %i.buc, i64 %i.bvb
  %i.byp = load <8 x i32>, ptr %i.byo, align 1, !tbaa !9 ; 4 uses
  %i.byq = getelementptr inbounds nuw i8, ptr %i.bud, i64 %i.bvb
  %i.byr = load <8 x i32>, ptr %i.byq, align 1, !tbaa !9 ; 4 uses
  %i.bys = getelementptr inbounds nuw i8, ptr %i.bue, i64 %i.bvb
  %i.byt = load <8 x i32>, ptr %i.bys, align 1, !tbaa !9 ; 4 uses
  %.idx2715 = shl nuw nsw i64 %indvars.iv2535, 5
  %i.byu = getelementptr inbounds nuw i8, ptr %i.buf, i64 %.idx2715
  %i.byv = load <4 x i64>, ptr %i.byu, align 1, !tbaa !9 ; 2 uses
  %i.byw = bitcast <4 x i64> %i.byv to <16 x i16>
  %i.byx = shufflevector <16 x i16> %i.byw, <16 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.byy = bitcast <4 x i64> %i.byv to <16 x i16>
  %i.byz = shufflevector <16 x i16> %i.byy, <16 x i16> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bza = tail call <8 x i16> @llvm.x86.ssse3.phadd.w.128(<8 x i16> %i.byx, <8 x i16> %i.byz) ; 4 uses
  %i.bzb = bitcast <8 x i32> %i.bww to <32 x i8>
  %i.bzc = shufflevector <32 x i8> %i.bzb, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bzd = bitcast <8 x i32> %i.byl to <32 x i8>
  %i.bze = shufflevector <32 x i8> %i.bzd, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bzf = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bzc, <32 x i8> %i.bze)
  %i.bzg = bitcast <8 x i32> %i.bwu to <32 x i8>
  %i.bzh = shufflevector <32 x i8> %i.bzg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bzi = bitcast <8 x i32> %i.byj to <32 x i8>
  %i.bzj = shufflevector <32 x i8> %i.bzi, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bzk = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bzh, <32 x i8> %i.bzj)
  %i.bzl = bitcast <8 x i32> %i.bws to <32 x i8>
  %i.bzm = shufflevector <32 x i8> %i.bzl, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bzn = bitcast <8 x i32> %i.byh to <32 x i8>
  %i.bzo = shufflevector <32 x i8> %i.bzn, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bzp = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bzm, <32 x i8> %i.bzo)
  %i.bzq = bitcast <8 x i32> %i.bwq to <32 x i8>
  %i.bzr = shufflevector <32 x i8> %i.bzq, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bzs = bitcast <8 x i32> %i.byf to <32 x i8>
  %i.bzt = shufflevector <32 x i8> %i.bzs, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.bzu = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bzr, <32 x i8> %i.bzt)
  %i.bzv = bitcast <8 x i32> %i.bwx to <32 x i8>
  %i.bzw = shufflevector <32 x i8> %i.bzv, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.bzx = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bzw, <32 x i8> %i.bze)
  %i.bzy = bitcast <8 x i32> %i.bwv to <32 x i8>
  %i.bzz = shufflevector <32 x i8> %i.bzy, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.caa = tail call <16 x i16> @llvm.x86.avx2.pmadd.ub.sw(<32 x i8> %i.bzz, <32 x i8> %i.bzj)
  %i.cab = bitcast <8 x i32> %i.bwt to <32 x i8>
end_hunk_2
begin_hunk_3_@ggml_gemm_iq4_nl_8x8_q8_0:bb.a

.lr.ph1081.split.us.preheader.i:                  ; preds = %.lr.ph1081.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aap = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1252.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1254.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1256.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1258.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1260.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1262.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1264.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1266.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1268.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1270.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1272.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1274.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1276.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1278.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1280.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.aar = mul i64 %.2.i, %2
  %i.aas = shl i64 %i.aar, 4
  %i.aat = shl nsw i64 %.0987.i, 5                ; 16 uses
  %i.aau = shl i64 %2, 6
  %i.aav = sub nsw i64 %i.aag, %.0987.i
  %i.aaw = shl nsw i64 %i.aav, 5                  ; 16 uses
  %i.aax = shl nsw i64 %.2.i, 2                   ; 15 uses
  %i.aay = or disjoint i64 %i.aax, 1
  %i.aaz = mul i64 %2, %i.aay
  %i.aba = shl i64 %i.aaz, 2
  %i.abb = or disjoint i64 %i.aax, 2
  %i.abc = mul i64 %2, %i.abb
  %i.abd = shl i64 %i.abc, 2
  %i.abe = or disjoint i64 %i.aax, 3
  %i.abf = mul i64 %2, %i.abe
  %i.abg = shl i64 %i.abf, 2
  %i.abh = add i64 %i.aax, 4
  %i.abi = mul i64 %2, %i.abh
  %i.abj = shl i64 %i.abi, 2
  %i.abk = add i64 %i.aax, 5
  %i.abl = mul i64 %2, %i.abk
  %i.abm = shl i64 %i.abl, 2
  %i.abn = add i64 %i.aax, 6
  %i.abo = mul i64 %2, %i.abn
  %i.abp = shl i64 %i.abo, 2
  %i.abq = add i64 %i.aax, 7
  %i.abr = mul i64 %2, %i.abq
  %i.abs = shl i64 %i.abr, 2
  %i.abt = add i64 %i.aax, 8
  %i.abu = mul i64 %2, %i.abt
  %i.abv = shl i64 %i.abu, 2
  %i.abw = add i64 %i.aax, 9
  %i.abx = mul i64 %2, %i.abw
  %i.aby = shl i64 %i.abx, 2
  %i.abz = add i64 %i.aax, 10
  %i.aca = mul i64 %2, %i.abz
  %i.acb = shl i64 %i.aca, 2
  %i.acc = add i64 %i.aax, 11
  %i.acd = mul i64 %2, %i.acc
  %i.ace = shl i64 %i.acd, 2
  %i.acf = add i64 %i.aax, 12
  %i.acg = mul i64 %2, %i.acf
  %i.ach = shl i64 %i.acg, 2
  %i.aci = add i64 %i.aax, 13
  %i.acj = mul i64 %2, %i.aci
  %i.ack = shl i64 %i.acj, 2
  %i.acl = add i64 %i.aax, 14
  %i.acm = mul i64 %2, %i.acl
  %i.acn = shl i64 %i.acm, 2
  %i.aco = add i64 %i.aax, 15
  %i.acp = mul i64 %2, %i.aco
  %i.acq = shl i64 %i.acp, 2
  %i.acr = xor i64 %.2.i, -1
  %i.acs = add i64 %i.acr, %i.l
  %i.act = lshr i64 %i.acs, 2
  %i.acu = getelementptr i8, ptr %1, i64 %i.aas
  %i.acv = getelementptr i8, ptr %i.acu, i64 %i.aat
  %i.acw = getelementptr i8, ptr %1, i64 %i.aba
  %i.acx = getelementptr i8, ptr %i.acw, i64 %i.aat
  %i.acy = getelementptr i8, ptr %1, i64 %i.abd
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.aat
  %i.ada = getelementptr i8, ptr %1, i64 %i.abg
  %i.adb = getelementptr i8, ptr %i.ada, i64 %i.aat
  %i.adc = getelementptr i8, ptr %1, i64 %i.abj
  %i.add = getelementptr i8, ptr %i.adc, i64 %i.aat
  %i.ade = getelementptr i8, ptr %1, i64 %i.abm
  %i.adf = getelementptr i8, ptr %i.ade, i64 %i.aat
  %i.adg = getelementptr i8, ptr %1, i64 %i.abp
  %i.adh = getelementptr i8, ptr %i.adg, i64 %i.aat
  %i.adi = getelementptr i8, ptr %1, i64 %i.abs
  %i.adj = getelementptr i8, ptr %i.adi, i64 %i.aat
  %i.adk = getelementptr i8, ptr %1, i64 %i.abv
  %i.adl = getelementptr i8, ptr %i.adk, i64 %i.aat
  %i.adm = getelementptr i8, ptr %1, i64 %i.aby
  %i.adn = getelementptr i8, ptr %i.adm, i64 %i.aat
  %i.ado = getelementptr i8, ptr %1, i64 %i.acb
  %i.adp = getelementptr i8, ptr %i.ado, i64 %i.aat
  %i.adq = getelementptr i8, ptr %1, i64 %i.ace
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.aat
  %i.ads = getelementptr i8, ptr %1, i64 %i.ach
  %i.adt = getelementptr i8, ptr %i.ads, i64 %i.aat
  %i.adu = getelementptr i8, ptr %1, i64 %i.ack
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.aat
  %i.adw = getelementptr i8, ptr %1, i64 %i.acn
  %i.adx = getelementptr i8, ptr %i.adw, i64 %i.aat
  %i.ady = getelementptr i8, ptr %1, i64 %i.acq
  %i.adz = getelementptr i8, ptr %i.ady, i64 %i.aat
  br label %.lr.ph1081.split.us.i

.lr.ph1081.split.us.i:                            ; preds = %._crit_edge.us1085.i, %.lr.ph1081.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1085.i ], [ 0, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  %.31079.us.i = phi i64 [ %i.aoe, %._crit_edge.us1085.i ], [ %.2.i, %.lr.ph1081.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !155
  %i.aea = mul nsw i64 %.31079.us.i, %i.f
  %i.aeb = getelementptr inbounds [136 x i8], ptr %4, i64 %i.aea ; 2 uses
  store ptr %i.aeb, ptr %i.c, align 16, !tbaa !21, !noalias !155
  %i.aec = getelementptr inbounds [136 x i8], ptr %i.aeb, i64 %i.f ; 2 uses
  store ptr %i.aec, ptr %i.aao, align 8, !tbaa !21, !noalias !155
  %i.aed = getelementptr inbounds [136 x i8], ptr %i.aec, i64 %i.f ; 2 uses
  store ptr %i.aed, ptr %i.aap, align 16, !tbaa !21, !noalias !155
  %i.aee = getelementptr inbounds [136 x i8], ptr %i.aed, i64 %i.f
  store ptr %i.aee, ptr %i.aaq, align 8, !tbaa !21, !noalias !155
  %i.aef = shl nsw i64 %.31079.us.i, 2            ; 16 uses
  %i.aeg = mul i64 %i.aef, %2
  %i.aeh = or disjoint i64 %i.aef, 1
  %i.aei = mul i64 %i.aeh, %2
  %i.aej = or disjoint i64 %i.aef, 2
  %i.aek = mul i64 %i.aej, %2
  %i.ael = or disjoint i64 %i.aef, 3
  %i.aem = mul i64 %i.ael, %2
  %i.aen = add nsw i64 %i.aef, 4
  %i.aeo = mul i64 %i.aen, %2
  %i.aep = add nsw i64 %i.aef, 5
  %i.aeq = mul i64 %i.aep, %2
  %i.aer = add nsw i64 %i.aef, 6
  %i.aes = mul i64 %i.aer, %2
  %i.aet = add nsw i64 %i.aef, 7
  %i.aeu = mul i64 %i.aet, %2
  %i.aev = add nsw i64 %i.aef, 8
  %i.aew = mul i64 %i.aev, %2
  %i.aex = add nsw i64 %i.aef, 9
  %i.aey = mul i64 %i.aex, %2
  %i.aez = add nsw i64 %i.aef, 10
  %i.afa = mul i64 %i.aez, %2
  %i.afb = add nsw i64 %i.aef, 11
  %i.afc = mul i64 %i.afb, %2
  %i.afd = add nsw i64 %i.aef, 12
  %i.afe = mul i64 %i.afd, %2
  %i.aff = add nsw i64 %i.aef, 13
  %i.afg = mul i64 %i.aff, %2
  %i.afh = add nsw i64 %i.aef, 14
  %i.afi = mul i64 %i.afh, %2
  %i.afj = add nsw i64 %i.aef, 15
  %i.afk = mul i64 %i.afj, %2
  br i1 %i.aai, label %.preheader1015.us.i.us, label %.preheader1015.us.i.preheader

.preheader1015.us.i.preheader:                    ; preds = %.lr.ph1081.split.us.i
  %i.afl = mul i64 %i.aau, %indvar62              ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.acv, i64 %i.afl
  %scevgep65 = getelementptr i8, ptr %i.acx, i64 %i.afl
  %scevgep66 = getelementptr i8, ptr %i.acz, i64 %i.afl
  %scevgep67 = getelementptr i8, ptr %i.adb, i64 %i.afl
  %scevgep68 = getelementptr i8, ptr %i.add, i64 %i.afl
  %scevgep69 = getelementptr i8, ptr %i.adf, i64 %i.afl
  %scevgep70 = getelementptr i8, ptr %i.adh, i64 %i.afl
  %scevgep71 = getelementptr i8, ptr %i.adj, i64 %i.afl
  %scevgep72 = getelementptr i8, ptr %i.adl, i64 %i.afl
  %scevgep73 = getelementptr i8, ptr %i.adn, i64 %i.afl
  %scevgep74 = getelementptr i8, ptr %i.adp, i64 %i.afl
  %scevgep75 = getelementptr i8, ptr %i.adr, i64 %i.afl
  %scevgep76 = getelementptr i8, ptr %i.adt, i64 %i.afl
  %scevgep77 = getelementptr i8, ptr %i.adv, i64 %i.afl
  %scevgep78 = getelementptr i8, ptr %i.adx, i64 %i.afl
  %scevgep79 = getelementptr i8, ptr %i.adz, i64 %i.afl
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep64, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep65, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep66, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep67, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep68, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep69, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep70, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep71, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep73, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep74, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep75, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep76, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep78, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep79, i8 0, i64 %i.aaw, i1 false), !tbaa !9, !alias.scope !152, !noalias !156
  br label %._crit_edge.us1085.i

.preheader1015.us.i.us:                           ; preds = %.lr.ph1081.split.us.i, %.preheader1014.us.loopexit.i.us
  %.09991077.us.i.us = phi i64 [ %i.aod, %.preheader1014.us.loopexit.i.us ], [ %.0987.i, %.lr.ph1081.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !tbaa !9, !noalias !155
  %i.afm = mul nsw i64 %.09991077.us.i.us, %i.f
  %i.afn = getelementptr inbounds [144 x i8], ptr %3, i64 %i.afm
  br label %.lr.ph1075.us.i.us

.lr.ph1075.us.i.us:                               ; preds = %.preheader1015.us.i.us, %bb.h
  %.010051074.us.i.us = phi i64 [ %i.aoc, %bb.h ], [ 0, %.preheader1015.us.i.us ] ; 3 uses
  %i.afo = getelementptr inbounds nuw [144 x i8], ptr %i.afn, i64 %.010051074.us.i.us ; 5 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afo, i64 16
  %i.afq = load <8 x i32>, ptr %i.afp, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 48
  %i.afs = load <8 x i32>, ptr %i.afr, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afo, i64 80
  %i.afu = load <8 x i32>, ptr %i.aft, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afo, i64 112
  %i.afw = load <8 x i32>, ptr %i.afv, align 1, !tbaa !9, !alias.scope !153, !noalias !157 ; 2 uses
  %i.afx = shufflevector <8 x i32> %i.afq, <8 x i32> %i.afs, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.afy = shufflevector <8 x i32> %i.afq, <8 x i32> %i.afs, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.afz = shufflevector <8 x i32> %i.afu, <8 x i32> %i.afw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aga = shufflevector <8 x i32> %i.afu, <8 x i32> %i.afw, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.agb = bitcast <8 x i32> %i.afx to <32 x i8>
  %i.agc = and <32 x i8> %i.agb, splat (i8 15)
  %i.agd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.agc) ; 2 uses
  %i.age = bitcast <8 x i32> %i.afy to <32 x i8>
  %i.agf = and <32 x i8> %i.age, splat (i8 15)
  %i.agg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.agf) ; 2 uses
  %i.agh = bitcast <8 x i32> %i.afz to <32 x i8>
  %i.agi = and <32 x i8> %i.agh, splat (i8 15)
  %i.agj = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.agi) ; 2 uses
  %i.agk = bitcast <8 x i32> %i.aga to <32 x i8>
  %i.agl = and <32 x i8> %i.agk, splat (i8 15)
  %i.agm = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.agl) ; 2 uses
  %i.agn = bitcast <8 x i32> %i.afx to <16 x i16>
  %i.ago = lshr <16 x i16> %i.agn, splat (i16 4)
  %i.agp = bitcast <16 x i16> %i.ago to <32 x i8>
  %i.agq = and <32 x i8> %i.agp, splat (i8 15)
  %i.agr = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.agq) ; 2 uses
  %i.ags = bitcast <8 x i32> %i.afy to <16 x i16>
  %i.agt = lshr <16 x i16> %i.ags, splat (i16 4)
  %i.agu = bitcast <16 x i16> %i.agt to <32 x i8>
  %i.agv = and <32 x i8> %i.agu, splat (i8 15)
  %i.agw = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.agv) ; 2 uses
  %i.agx = bitcast <8 x i32> %i.afz to <16 x i16>
  %i.agy = lshr <16 x i16> %i.agx, splat (i16 4)
  %i.agz = bitcast <16 x i16> %i.agy to <32 x i8>
  %i.aha = and <32 x i8> %i.agz, splat (i8 15)
  %i.ahb = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.aha) ; 2 uses
  %i.ahc = bitcast <8 x i32> %i.aga to <16 x i16>
  %i.ahd = lshr <16 x i16> %i.ahc, splat (i16 4)
  %i.ahe = bitcast <16 x i16> %i.ahd to <32 x i8>
  %i.ahf = and <32 x i8> %i.ahe, splat (i8 15)
  %i.ahg = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113, i8 -127, i8 -104, i8 -83, i8 -65, i8 -49, i8 -35, i8 -22, i8 -10, i8 1, i8 13, i8 25, i8 38, i8 53, i8 69, i8 89, i8 113>, <32 x i8> %i.ahf) ; 2 uses
  %i.ahh = load <8 x half>, ptr %i.afo, align 1, !tbaa !9, !alias.scope !153, !noalias !157
  %i.ahi = fpext <8 x half> %i.ahh to <8 x float> ; 4 uses
  %i.ahj = shufflevector <32 x i8> %i.ahb, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahk = shufflevector <32 x i8> %i.agr, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahl = shufflevector <32 x i8> %i.agj, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahm = shufflevector <32 x i8> %i.agd, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahn = shufflevector <32 x i8> %i.ahg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aho = shufflevector <32 x i8> %i.agw, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahp = shufflevector <32 x i8> %i.agm, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahq = shufflevector <32 x i8> %i.agg, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahr = shufflevector <32 x i8> %i.ahb, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahs = shufflevector <32 x i8> %i.agr, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aht = shufflevector <32 x i8> %i.agj, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahu = shufflevector <32 x i8> %i.agd, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahv = shufflevector <32 x i8> %i.ahg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahw = shufflevector <32 x i8> %i.agw, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahx = shufflevector <32 x i8> %i.agm, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahy = shufflevector <32 x i8> %i.agg, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph1075.us.i.us
  %indvars.iv1165.i.us = phi i64 [ %indvars.iv.next1166.i.us, %bb.g ], [ 0, %.lr.ph1075.us.i.us ] ; 3 uses
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1165.i.us
  %i.aia = load ptr, ptr %i.ahz, align 8, !tbaa !21, !noalias !155
  %i.aib = getelementptr inbounds nuw [136 x i8], ptr %i.aia, i64 %.010051074.us.i.us ; 5 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 8
  %i.aid = load <8 x i32>, ptr %i.aic, align 1, !tbaa !9, !noalias !153 ; 4 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 40
  %i.aif = load <8 x i32>, ptr %i.aie, align 1, !tbaa !9, !noalias !153 ; 4 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aib, i64 72
  %i.aih = load <8 x i32>, ptr %i.aig, align 1, !tbaa !9, !noalias !153 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aib, i64 104
  %i.aij = load <8 x i32>, ptr %i.aii, align 1, !tbaa !9, !noalias !153 ; 4 uses
  %i.aik = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.ail = shufflevector <32 x i8> %i.aik, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aim = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ail, <32 x i8> %i.ail) ; 2 uses
  %i.ain = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahj, <32 x i8> %i.ail)
  %i.aio = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aim, <32 x i8> %i.ain)
  %i.aip = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.aiq = shufflevector <32 x i8> %i.aip, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.air = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiq, <32 x i8> %i.aiq) ; 2 uses
  %i.ais = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahk, <32 x i8> %i.aiq)
  %i.ait = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aio, <32 x i8> %i.air, <32 x i8> %i.ais)
  %i.aiu = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.aiv = shufflevector <32 x i8> %i.aiu, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aiw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiv, <32 x i8> %i.aiv) ; 2 uses
  %i.aix = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahl, <32 x i8> %i.aiv)
  %i.aiy = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ait, <32 x i8> %i.aiw, <32 x i8> %i.aix)
  %i.aiz = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.aja = shufflevector <32 x i8> %i.aiz, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ajb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aja, <32 x i8> %i.aja) ; 2 uses
  %i.ajc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahm, <32 x i8> %i.aja)
  %i.ajd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aiy, <32 x i8> %i.ajb, <32 x i8> %i.ajc)
  %i.aje = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahn, <32 x i8> %i.ail)
  %i.ajf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aim, <32 x i8> %i.aje)
  %i.ajg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.aiq)
  %i.ajh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajf, <32 x i8> %i.air, <32 x i8> %i.ajg)
  %i.aji = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahp, <32 x i8> %i.aiv)
  %i.ajj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajh, <32 x i8> %i.aiw, <32 x i8> %i.aji)
  %i.ajk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahq, <32 x i8> %i.aja)
  %i.ajl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajj, <32 x i8> %i.ajb, <32 x i8> %i.ajk)
  %i.ajm = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.ajn = shufflevector <32 x i8> %i.ajm, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajn, <32 x i8> %i.ajn) ; 2 uses
  %i.ajp = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahj, <32 x i8> %i.ajn)
  %i.ajq = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajo, <32 x i8> %i.ajp)
  %i.ajr = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.ajs = shufflevector <32 x i8> %i.ajr, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajs, <32 x i8> %i.ajs) ; 2 uses
  %i.aju = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahk, <32 x i8> %i.ajs)
  %i.ajv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajq, <32 x i8> %i.ajt, <32 x i8> %i.aju)
  %i.ajw = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.ajx = shufflevector <32 x i8> %i.ajw, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajx, <32 x i8> %i.ajx) ; 2 uses
  %i.ajz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahl, <32 x i8> %i.ajx)
  %i.aka = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajv, <32 x i8> %i.ajy, <32 x i8> %i.ajz)
  %i.akb = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.akc = shufflevector <32 x i8> %i.akb, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.akd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akc, <32 x i8> %i.akc) ; 2 uses
  %i.ake = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahm, <32 x i8> %i.akc)
  %i.akf = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aka, <32 x i8> %i.akd, <32 x i8> %i.ake)
  %i.akg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahn, <32 x i8> %i.ajn)
  %i.akh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajo, <32 x i8> %i.akg)
  %i.aki = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.ajs)
  %i.akj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akh, <32 x i8> %i.ajt, <32 x i8> %i.aki)
  %i.akk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahp, <32 x i8> %i.ajx)
  %i.akl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akj, <32 x i8> %i.ajy, <32 x i8> %i.akk)
  %i.akm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahq, <32 x i8> %i.akc)
  %i.akn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akl, <32 x i8> %i.akd, <32 x i8> %i.akm)
  %i.ako = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.akp = shufflevector <32 x i8> %i.ako, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.akq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akp, <32 x i8> %i.akp) ; 2 uses
  %i.akr = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahr, <32 x i8> %i.akp)
  %i.aks = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.akq, <32 x i8> %i.akr)
  %i.akt = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.aku = shufflevector <32 x i8> %i.akt, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.akv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aku, <32 x i8> %i.aku) ; 2 uses
  %i.akw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahs, <32 x i8> %i.aku)
  %i.akx = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aks, <32 x i8> %i.akv, <32 x i8> %i.akw)
  %i.aky = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.akz = shufflevector <32 x i8> %i.aky, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ala = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akz, <32 x i8> %i.akz) ; 2 uses
  %i.alb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.akz)
  %i.alc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akx, <32 x i8> %i.ala, <32 x i8> %i.alb)
  %i.ald = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.ale = shufflevector <32 x i8> %i.ald, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.alf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ale, <32 x i8> %i.ale) ; 2 uses
  %i.alg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahu, <32 x i8> %i.ale)
  %i.alh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alc, <32 x i8> %i.alf, <32 x i8> %i.alg)
  %i.ali = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahv, <32 x i8> %i.akp)
  %i.alj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.akq, <32 x i8> %i.ali)
  %i.alk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahw, <32 x i8> %i.aku)
  %i.all = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alj, <32 x i8> %i.akv, <32 x i8> %i.alk)
  %i.alm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahx, <32 x i8> %i.akz)
  %i.aln = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.all, <32 x i8> %i.ala, <32 x i8> %i.alm)
  %i.alo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.ale)
  %i.alp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aln, <32 x i8> %i.alf, <32 x i8> %i.alo)
  %i.alq = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.alr = shufflevector <32 x i8> %i.alq, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.als = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.alr, <32 x i8> %i.alr) ; 2 uses
  %i.alt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahr, <32 x i8> %i.alr)
  %i.alu = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.als, <32 x i8> %i.alt)
  %i.alv = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.alw = shufflevector <32 x i8> %i.alv, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.alx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.alw, <32 x i8> %i.alw) ; 2 uses
  %i.aly = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahs, <32 x i8> %i.alw)
  %i.alz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alu, <32 x i8> %i.alx, <32 x i8> %i.aly)
  %i.ama = bitcast <8 x i32> %i.aif to <32 x i8>
  %i.amb = shufflevector <32 x i8> %i.ama, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.amc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.amb, <32 x i8> %i.amb) ; 2 uses
  %i.amd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.amb)
  %i.ame = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alz, <32 x i8> %i.amc, <32 x i8> %i.amd)
  %i.amf = bitcast <8 x i32> %i.aid to <32 x i8>
  %i.amg = shufflevector <32 x i8> %i.amf, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.amh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.amg, <32 x i8> %i.amg) ; 2 uses
  %i.ami = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahu, <32 x i8> %i.amg)
  %i.amj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ame, <32 x i8> %i.amh, <32 x i8> %i.ami)
  %i.amk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahv, <32 x i8> %i.alr)
  %i.aml = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.als, <32 x i8> %i.amk)
  %i.amm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahw, <32 x i8> %i.alw)
  %i.amn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aml, <32 x i8> %i.alx, <32 x i8> %i.amm)
  %i.amo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahx, <32 x i8> %i.amb)
  %i.amp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amn, <32 x i8> %i.amc, <32 x i8> %i.amo)
  %i.amq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.amg)
  %i.amr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amp, <32 x i8> %i.amh, <32 x i8> %i.amq)
  %i.ams = add <8 x i32> %i.alh, %i.ajd           ; 2 uses
  %i.amt = add <8 x i32> %i.alp, %i.ajl           ; 2 uses
  %i.amu = add <8 x i32> %i.amj, %i.akf           ; 2 uses
  %i.amv = add <8 x i32> %i.amr, %i.akn           ; 2 uses
  %i.amw = shufflevector <8 x i32> %i.ams, <8 x i32> %i.amt, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.amx = shufflevector <8 x i32> %i.ams, <8 x i32> %i.amt, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.amy = shufflevector <8 x i32> %i.amu, <8 x i32> %i.amv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.amz = shufflevector <8 x i32> %i.amu, <8 x i32> %i.amv, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.ana = tail call <4 x i32> @llvm.masked.load.v4i32.p0(ptr align 1 %i.aib, <4 x i1> <i1 true, i1 true, i1 false, i1 false>, <4 x i32> poison), !noalias !153
end_hunk_3
begin_hunk_4_@ggml_gemm_mxfp4_8x8_q8_0:bb.a

.lr.ph1165.split.us.preheader.i:                  ; preds = %.lr.ph1165.i
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aar = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aas = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.phi.trans.insert1336.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.phi.trans.insert1338.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.phi.trans.insert1340.i = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %.phi.trans.insert1342.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %.phi.trans.insert1344.i = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %.phi.trans.insert1346.i = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.phi.trans.insert1348.i = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.phi.trans.insert1350.i = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  %.phi.trans.insert1352.i = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %.phi.trans.insert1354.i = getelementptr inbounds nuw i8, ptr %i.d, i64 320
  %.phi.trans.insert1356.i = getelementptr inbounds nuw i8, ptr %i.d, i64 352
  %.phi.trans.insert1358.i = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.phi.trans.insert1360.i = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %.phi.trans.insert1362.i = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %.phi.trans.insert1364.i = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  %i.aat = mul i64 %.2.i, %2
  %i.aau = shl i64 %i.aat, 4
  %i.aav = shl nsw i64 %.01071.i, 5               ; 16 uses
  %i.aaw = shl i64 %2, 6
  %i.aax = sub nsw i64 %i.aai, %.01071.i
  %i.aay = shl nsw i64 %i.aax, 5                  ; 16 uses
  %i.aaz = shl nsw i64 %.2.i, 2                   ; 15 uses
  %i.aba = or disjoint i64 %i.aaz, 1
  %i.abb = mul i64 %2, %i.aba
  %i.abc = shl i64 %i.abb, 2
  %i.abd = or disjoint i64 %i.aaz, 2
  %i.abe = mul i64 %2, %i.abd
  %i.abf = shl i64 %i.abe, 2
  %i.abg = or disjoint i64 %i.aaz, 3
  %i.abh = mul i64 %2, %i.abg
  %i.abi = shl i64 %i.abh, 2
  %i.abj = add i64 %i.aaz, 4
  %i.abk = mul i64 %2, %i.abj
  %i.abl = shl i64 %i.abk, 2
  %i.abm = add i64 %i.aaz, 5
  %i.abn = mul i64 %2, %i.abm
  %i.abo = shl i64 %i.abn, 2
  %i.abp = add i64 %i.aaz, 6
  %i.abq = mul i64 %2, %i.abp
  %i.abr = shl i64 %i.abq, 2
  %i.abs = add i64 %i.aaz, 7
  %i.abt = mul i64 %2, %i.abs
  %i.abu = shl i64 %i.abt, 2
  %i.abv = add i64 %i.aaz, 8
  %i.abw = mul i64 %2, %i.abv
  %i.abx = shl i64 %i.abw, 2
  %i.aby = add i64 %i.aaz, 9
  %i.abz = mul i64 %2, %i.aby
  %i.aca = shl i64 %i.abz, 2
  %i.acb = add i64 %i.aaz, 10
  %i.acc = mul i64 %2, %i.acb
  %i.acd = shl i64 %i.acc, 2
  %i.ace = add i64 %i.aaz, 11
  %i.acf = mul i64 %2, %i.ace
  %i.acg = shl i64 %i.acf, 2
  %i.ach = add i64 %i.aaz, 12
  %i.aci = mul i64 %2, %i.ach
  %i.acj = shl i64 %i.aci, 2
  %i.ack = add i64 %i.aaz, 13
  %i.acl = mul i64 %2, %i.ack
  %i.acm = shl i64 %i.acl, 2
  %i.acn = add i64 %i.aaz, 14
  %i.aco = mul i64 %2, %i.acn
  %i.acp = shl i64 %i.aco, 2
  %i.acq = add i64 %i.aaz, 15
  %i.acr = mul i64 %2, %i.acq
  %i.acs = shl i64 %i.acr, 2
  %i.act = xor i64 %.2.i, -1
  %i.acu = add i64 %i.act, %i.l
  %i.acv = lshr i64 %i.acu, 2
  %i.acw = getelementptr i8, ptr %1, i64 %i.aau
  %i.acx = getelementptr i8, ptr %i.acw, i64 %i.aav
  %i.acy = getelementptr i8, ptr %1, i64 %i.abc
  %i.acz = getelementptr i8, ptr %i.acy, i64 %i.aav
  %i.ada = getelementptr i8, ptr %1, i64 %i.abf
  %i.adb = getelementptr i8, ptr %i.ada, i64 %i.aav
  %i.adc = getelementptr i8, ptr %1, i64 %i.abi
  %i.add = getelementptr i8, ptr %i.adc, i64 %i.aav
  %i.ade = getelementptr i8, ptr %1, i64 %i.abl
  %i.adf = getelementptr i8, ptr %i.ade, i64 %i.aav
  %i.adg = getelementptr i8, ptr %1, i64 %i.abo
  %i.adh = getelementptr i8, ptr %i.adg, i64 %i.aav
  %i.adi = getelementptr i8, ptr %1, i64 %i.abr
  %i.adj = getelementptr i8, ptr %i.adi, i64 %i.aav
  %i.adk = getelementptr i8, ptr %1, i64 %i.abu
  %i.adl = getelementptr i8, ptr %i.adk, i64 %i.aav
  %i.adm = getelementptr i8, ptr %1, i64 %i.abx
  %i.adn = getelementptr i8, ptr %i.adm, i64 %i.aav
  %i.ado = getelementptr i8, ptr %1, i64 %i.aca
  %i.adp = getelementptr i8, ptr %i.ado, i64 %i.aav
  %i.adq = getelementptr i8, ptr %1, i64 %i.acd
  %i.adr = getelementptr i8, ptr %i.adq, i64 %i.aav
  %i.ads = getelementptr i8, ptr %1, i64 %i.acg
  %i.adt = getelementptr i8, ptr %i.ads, i64 %i.aav
  %i.adu = getelementptr i8, ptr %1, i64 %i.acj
  %i.adv = getelementptr i8, ptr %i.adu, i64 %i.aav
  %i.adw = getelementptr i8, ptr %1, i64 %i.acm
  %i.adx = getelementptr i8, ptr %i.adw, i64 %i.aav
  %i.ady = getelementptr i8, ptr %1, i64 %i.acp
  %i.adz = getelementptr i8, ptr %i.ady, i64 %i.aav
  %i.aea = getelementptr i8, ptr %1, i64 %i.acs
  %i.aeb = getelementptr i8, ptr %i.aea, i64 %i.aav
  br label %.lr.ph1165.split.us.i

.lr.ph1165.split.us.i:                            ; preds = %._crit_edge.us1169.i, %.lr.ph1165.split.us.preheader.i
  %indvar62 = phi i64 [ %indvar.next63, %._crit_edge.us1169.i ], [ 0, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  %.31163.us.i = phi i64 [ %i.aoi, %._crit_edge.us1169.i ], [ %.2.i, %.lr.ph1165.split.us.preheader.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13, !noalias !182
  %i.aec = mul nsw i64 %.31163.us.i, %i.f
  %i.aed = getelementptr inbounds [136 x i8], ptr %4, i64 %i.aec ; 2 uses
  store ptr %i.aed, ptr %i.c, align 16, !tbaa !21, !noalias !182
  %i.aee = getelementptr inbounds [136 x i8], ptr %i.aed, i64 %i.f ; 2 uses
  store ptr %i.aee, ptr %i.aaq, align 8, !tbaa !21, !noalias !182
  %i.aef = getelementptr inbounds [136 x i8], ptr %i.aee, i64 %i.f ; 2 uses
  store ptr %i.aef, ptr %i.aar, align 16, !tbaa !21, !noalias !182
  %i.aeg = getelementptr inbounds [136 x i8], ptr %i.aef, i64 %i.f
  store ptr %i.aeg, ptr %i.aas, align 8, !tbaa !21, !noalias !182
  %i.aeh = shl nsw i64 %.31163.us.i, 2            ; 16 uses
  %i.aei = mul i64 %i.aeh, %2
  %i.aej = or disjoint i64 %i.aeh, 1
  %i.aek = mul i64 %i.aej, %2
  %i.ael = or disjoint i64 %i.aeh, 2
  %i.aem = mul i64 %i.ael, %2
  %i.aen = or disjoint i64 %i.aeh, 3
  %i.aeo = mul i64 %i.aen, %2
  %i.aep = add nsw i64 %i.aeh, 4
  %i.aeq = mul i64 %i.aep, %2
  %i.aer = add nsw i64 %i.aeh, 5
  %i.aes = mul i64 %i.aer, %2
  %i.aet = add nsw i64 %i.aeh, 6
  %i.aeu = mul i64 %i.aet, %2
  %i.aev = add nsw i64 %i.aeh, 7
  %i.aew = mul i64 %i.aev, %2
  %i.aex = add nsw i64 %i.aeh, 8
  %i.aey = mul i64 %i.aex, %2
  %i.aez = add nsw i64 %i.aeh, 9
  %i.afa = mul i64 %i.aez, %2
  %i.afb = add nsw i64 %i.aeh, 10
  %i.afc = mul i64 %i.afb, %2
  %i.afd = add nsw i64 %i.aeh, 11
  %i.afe = mul i64 %i.afd, %2
  %i.aff = add nsw i64 %i.aeh, 12
  %i.afg = mul i64 %i.aff, %2
  %i.afh = add nsw i64 %i.aeh, 13
  %i.afi = mul i64 %i.afh, %2
  %i.afj = add nsw i64 %i.aeh, 14
  %i.afk = mul i64 %i.afj, %2
  %i.afl = add nsw i64 %i.aeh, 15
  %i.afm = mul i64 %i.afl, %2
  br i1 %i.aak, label %.preheader1099.us.i.us, label %.preheader1099.us.i.preheader

.preheader1099.us.i.preheader:                    ; preds = %.lr.ph1165.split.us.i
  %i.afn = mul i64 %i.aaw, %indvar62              ; 16 uses
  %scevgep64 = getelementptr i8, ptr %i.acx, i64 %i.afn
  %scevgep65 = getelementptr i8, ptr %i.acz, i64 %i.afn
  %scevgep66 = getelementptr i8, ptr %i.adb, i64 %i.afn
  %scevgep67 = getelementptr i8, ptr %i.add, i64 %i.afn
  %scevgep68 = getelementptr i8, ptr %i.adf, i64 %i.afn
  %scevgep69 = getelementptr i8, ptr %i.adh, i64 %i.afn
  %scevgep70 = getelementptr i8, ptr %i.adj, i64 %i.afn
  %scevgep71 = getelementptr i8, ptr %i.adl, i64 %i.afn
  %scevgep72 = getelementptr i8, ptr %i.adn, i64 %i.afn
  %scevgep73 = getelementptr i8, ptr %i.adp, i64 %i.afn
  %scevgep74 = getelementptr i8, ptr %i.adr, i64 %i.afn
  %scevgep75 = getelementptr i8, ptr %i.adt, i64 %i.afn
  %scevgep76 = getelementptr i8, ptr %i.adv, i64 %i.afn
  %scevgep77 = getelementptr i8, ptr %i.adx, i64 %i.afn
  %scevgep78 = getelementptr i8, ptr %i.adz, i64 %i.afn
  %scevgep79 = getelementptr i8, ptr %i.aeb, i64 %i.afn
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep64, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep65, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep66, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep67, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep68, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep69, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep70, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep71, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep72, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep73, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep74, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep75, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep76, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep77, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep78, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  tail call void @llvm.memset.p0.i64(ptr align 1 %scevgep79, i8 0, i64 %i.aay, i1 false), !tbaa !9, !alias.scope !179, !noalias !183
  br label %._crit_edge.us1169.i

.preheader1099.us.i.us:                           ; preds = %.lr.ph1165.split.us.i, %.preheader1098.us.loopexit.i.us
  %.010831161.us.i.us = phi i64 [ %i.aoh, %.preheader1098.us.loopexit.i.us ], [ %.01071.i, %.lr.ph1165.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13, !noalias !182
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(512) %i.d, i8 0, i64 512, i1 false), !tbaa !9, !noalias !182
  %i.afo = mul nsw i64 %.010831161.us.i.us, %i.f
  %i.afp = getelementptr inbounds [136 x i8], ptr %3, i64 %i.afo
  br label %.lr.ph1159.us.i.us

.lr.ph1159.us.i.us:                               ; preds = %.preheader1099.us.i.us, %bb.h
  %.010891158.us.i.us = phi i64 [ %i.aog, %bb.h ], [ 0, %.preheader1099.us.i.us ] ; 3 uses
  %i.afq = getelementptr inbounds nuw [136 x i8], ptr %i.afp, i64 %.010891158.us.i.us ; 5 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load <8 x i32>, ptr %i.afr, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afq, i64 40
  %i.afu = load <8 x i32>, ptr %i.aft, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afq, i64 72
  %i.afw = load <8 x i32>, ptr %i.afv, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afq, i64 104
  %i.afy = load <8 x i32>, ptr %i.afx, align 1, !tbaa !9, !alias.scope !180, !noalias !184 ; 2 uses
  %i.afz = shufflevector <8 x i32> %i.afs, <8 x i32> %i.afu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.aga = shufflevector <8 x i32> %i.afs, <8 x i32> %i.afu, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.agb = shufflevector <8 x i32> %i.afw, <8 x i32> %i.afy, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.agc = shufflevector <8 x i32> %i.afw, <8 x i32> %i.afy, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.agd = bitcast <8 x i32> %i.afz to <32 x i8>
  %i.age = and <32 x i8> %i.agd, splat (i8 15)
  %i.agf = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.age) ; 2 uses
  %i.agg = bitcast <8 x i32> %i.aga to <32 x i8>
  %i.agh = and <32 x i8> %i.agg, splat (i8 15)
  %i.agi = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.agh) ; 2 uses
  %i.agj = bitcast <8 x i32> %i.agb to <32 x i8>
  %i.agk = and <32 x i8> %i.agj, splat (i8 15)
  %i.agl = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.agk) ; 2 uses
  %i.agm = bitcast <8 x i32> %i.agc to <32 x i8>
  %i.agn = and <32 x i8> %i.agm, splat (i8 15)
  %i.ago = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.agn) ; 2 uses
  %i.agp = bitcast <8 x i32> %i.afz to <16 x i16>
  %i.agq = lshr <16 x i16> %i.agp, splat (i16 4)
  %i.agr = bitcast <16 x i16> %i.agq to <32 x i8>
  %i.ags = and <32 x i8> %i.agr, splat (i8 15)
  %i.agt = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ags) ; 2 uses
  %i.agu = bitcast <8 x i32> %i.aga to <16 x i16>
  %i.agv = lshr <16 x i16> %i.agu, splat (i16 4)
  %i.agw = bitcast <16 x i16> %i.agv to <32 x i8>
  %i.agx = and <32 x i8> %i.agw, splat (i8 15)
  %i.agy = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.agx) ; 2 uses
  %i.agz = bitcast <8 x i32> %i.agb to <16 x i16>
  %i.aha = lshr <16 x i16> %i.agz, splat (i16 4)
  %i.ahb = bitcast <16 x i16> %i.aha to <32 x i8>
  %i.ahc = and <32 x i8> %i.ahb, splat (i8 15)
  %i.ahd = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ahc) ; 2 uses
  %i.ahe = bitcast <8 x i32> %i.agc to <16 x i16>
  %i.ahf = lshr <16 x i16> %i.ahe, splat (i16 4)
  %i.ahg = bitcast <16 x i16> %i.ahf to <32 x i8>
  %i.ahh = and <32 x i8> %i.ahg, splat (i8 15)
  %i.ahi = tail call <32 x i8> @llvm.x86.avx2.pshuf.b(<32 x i8> <i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12, i8 0, i8 1, i8 2, i8 3, i8 4, i8 6, i8 8, i8 12, i8 0, i8 -1, i8 -2, i8 -3, i8 -4, i8 -6, i8 -8, i8 -12>, <32 x i8> %i.ahh) ; 2 uses
  %i.ahj = load <8 x i8>, ptr %i.afq, align 1, !tbaa !9, !alias.scope !180, !noalias !184
  %i.ahk = zext <8 x i8> %i.ahj to <8 x i64>
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr @ggml_table_f32_e8m0_half, <8 x i64> %i.ahk
  %i.ahm = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %i.ahl, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !noalias !182 ; 4 uses
  %i.ahn = shufflevector <32 x i8> %i.ahd, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aho = shufflevector <32 x i8> %i.agt, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahp = shufflevector <32 x i8> %i.agl, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahq = shufflevector <32 x i8> %i.agf, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahr = shufflevector <32 x i8> %i.ahi, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahs = shufflevector <32 x i8> %i.agy, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.aht = shufflevector <32 x i8> %i.ago, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahu = shufflevector <32 x i8> %i.agi, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ahv = shufflevector <32 x i8> %i.ahd, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahw = shufflevector <32 x i8> %i.agt, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahx = shufflevector <32 x i8> %i.agl, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahy = shufflevector <32 x i8> %i.agf, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ahz = shufflevector <32 x i8> %i.ahi, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aia = shufflevector <32 x i8> %i.agy, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aib = shufflevector <32 x i8> %i.ago, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.aic = shufflevector <32 x i8> %i.agi, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph1159.us.i.us
  %indvars.iv1249.i.us = phi i64 [ %indvars.iv.next1250.i.us, %bb.g ], [ 0, %.lr.ph1159.us.i.us ] ; 3 uses
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1249.i.us
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !21, !noalias !182
  %i.aif = getelementptr inbounds nuw [136 x i8], ptr %i.aie, i64 %.010891158.us.i.us ; 5 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aif, i64 8
  %i.aih = load <8 x i32>, ptr %i.aig, align 1, !tbaa !9 ; 4 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aif, i64 40
  %i.aij = load <8 x i32>, ptr %i.aii, align 1, !tbaa !9 ; 4 uses
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aif, i64 72
  %i.ail = load <8 x i32>, ptr %i.aik, align 1, !tbaa !9 ; 4 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aif, i64 104
  %i.ain = load <8 x i32>, ptr %i.aim, align 1, !tbaa !9 ; 4 uses
  %i.aio = bitcast <8 x i32> %i.ain to <32 x i8>
  %i.aip = shufflevector <32 x i8> %i.aio, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aiq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aip, <32 x i8> %i.aip) ; 2 uses
  %i.air = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahn, <32 x i8> %i.aip)
  %i.ais = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aiq, <32 x i8> %i.air)
  %i.ait = bitcast <8 x i32> %i.ail to <32 x i8>
  %i.aiu = shufflevector <32 x i8> %i.ait, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aiv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiu, <32 x i8> %i.aiu) ; 2 uses
  %i.aiw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.aiu)
  %i.aix = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ais, <32 x i8> %i.aiv, <32 x i8> %i.aiw)
  %i.aiy = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.aiz = shufflevector <32 x i8> %i.aiy, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.aja = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aiz, <32 x i8> %i.aiz) ; 2 uses
  %i.ajb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahp, <32 x i8> %i.aiz)
  %i.ajc = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aix, <32 x i8> %i.aja, <32 x i8> %i.ajb)
  %i.ajd = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.aje = shufflevector <32 x i8> %i.ajd, <32 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11, i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 8, i32 9, i32 10, i32 11> ; 4 uses
  %i.ajf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aje, <32 x i8> %i.aje) ; 2 uses
  %i.ajg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahq, <32 x i8> %i.aje)
  %i.ajh = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajc, <32 x i8> %i.ajf, <32 x i8> %i.ajg)
  %i.aji = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahr, <32 x i8> %i.aip)
  %i.ajj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aiq, <32 x i8> %i.aji)
  %i.ajk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahs, <32 x i8> %i.aiu)
  %i.ajl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajj, <32 x i8> %i.aiv, <32 x i8> %i.ajk)
  %i.ajm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.aiz)
  %i.ajn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajl, <32 x i8> %i.aja, <32 x i8> %i.ajm)
  %i.ajo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahu, <32 x i8> %i.aje)
  %i.ajp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajn, <32 x i8> %i.ajf, <32 x i8> %i.ajo)
  %i.ajq = bitcast <8 x i32> %i.ain to <32 x i8>
  %i.ajr = shufflevector <32 x i8> %i.ajq, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajs = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajr, <32 x i8> %i.ajr) ; 2 uses
  %i.ajt = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahn, <32 x i8> %i.ajr)
  %i.aju = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajs, <32 x i8> %i.ajt)
  %i.ajv = bitcast <8 x i32> %i.ail to <32 x i8>
  %i.ajw = shufflevector <32 x i8> %i.ajv, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.ajx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ajw, <32 x i8> %i.ajw) ; 2 uses
  %i.ajy = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aho, <32 x i8> %i.ajw)
  %i.ajz = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aju, <32 x i8> %i.ajx, <32 x i8> %i.ajy)
  %i.aka = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.akb = shufflevector <32 x i8> %i.aka, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.akc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akb, <32 x i8> %i.akb) ; 2 uses
  %i.akd = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahp, <32 x i8> %i.akb)
  %i.ake = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ajz, <32 x i8> %i.akc, <32 x i8> %i.akd)
  %i.akf = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.akg = shufflevector <32 x i8> %i.akf, <32 x i8> poison, <32 x i32> <i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27, i32 16, i32 17, i32 18, i32 19, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27, i32 24, i32 25, i32 26, i32 27> ; 4 uses
  %i.akh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akg, <32 x i8> %i.akg) ; 2 uses
  %i.aki = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahq, <32 x i8> %i.akg)
  %i.akj = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ake, <32 x i8> %i.akh, <32 x i8> %i.aki)
  %i.akk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahr, <32 x i8> %i.ajr)
  %i.akl = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.ajs, <32 x i8> %i.akk)
  %i.akm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahs, <32 x i8> %i.ajw)
  %i.akn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akl, <32 x i8> %i.ajx, <32 x i8> %i.akm)
  %i.ako = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aht, <32 x i8> %i.akb)
  %i.akp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akn, <32 x i8> %i.akc, <32 x i8> %i.ako)
  %i.akq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahu, <32 x i8> %i.akg)
  %i.akr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akp, <32 x i8> %i.akh, <32 x i8> %i.akq)
  %i.aks = bitcast <8 x i32> %i.ain to <32 x i8>
  %i.akt = shufflevector <32 x i8> %i.aks, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.aku = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.akt, <32 x i8> %i.akt) ; 2 uses
  %i.akv = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahv, <32 x i8> %i.akt)
  %i.akw = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aku, <32 x i8> %i.akv)
  %i.akx = bitcast <8 x i32> %i.ail to <32 x i8>
  %i.aky = shufflevector <32 x i8> %i.akx, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.akz = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aky, <32 x i8> %i.aky) ; 2 uses
  %i.ala = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahw, <32 x i8> %i.aky)
  %i.alb = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.akw, <32 x i8> %i.akz, <32 x i8> %i.ala)
  %i.alc = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.ald = shufflevector <32 x i8> %i.alc, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.ale = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ald, <32 x i8> %i.ald) ; 2 uses
  %i.alf = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahx, <32 x i8> %i.ald)
  %i.alg = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alb, <32 x i8> %i.ale, <32 x i8> %i.alf)
  %i.alh = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.ali = shufflevector <32 x i8> %i.alh, <32 x i8> poison, <32 x i32> <i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15, i32 4, i32 5, i32 6, i32 7, i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.alj = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ali, <32 x i8> %i.ali) ; 2 uses
  %i.alk = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.ali)
  %i.all = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alg, <32 x i8> %i.alj, <32 x i8> %i.alk)
  %i.alm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahz, <32 x i8> %i.akt)
  %i.aln = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.aku, <32 x i8> %i.alm)
  %i.alo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aia, <32 x i8> %i.aky)
  %i.alp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aln, <32 x i8> %i.akz, <32 x i8> %i.alo)
  %i.alq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aib, <32 x i8> %i.ald)
  %i.alr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alp, <32 x i8> %i.ale, <32 x i8> %i.alq)
  %i.als = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aic, <32 x i8> %i.ali)
  %i.alt = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.alr, <32 x i8> %i.alj, <32 x i8> %i.als)
  %i.alu = bitcast <8 x i32> %i.ain to <32 x i8>
  %i.alv = shufflevector <32 x i8> %i.alu, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.alw = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.alv, <32 x i8> %i.alv) ; 2 uses
  %i.alx = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahv, <32 x i8> %i.alv)
  %i.aly = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.alw, <32 x i8> %i.alx)
  %i.alz = bitcast <8 x i32> %i.ail to <32 x i8>
  %i.ama = shufflevector <32 x i8> %i.alz, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.amb = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ama, <32 x i8> %i.ama) ; 2 uses
  %i.amc = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahw, <32 x i8> %i.ama)
  %i.amd = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.aly, <32 x i8> %i.amb, <32 x i8> %i.amc)
  %i.ame = bitcast <8 x i32> %i.aij to <32 x i8>
  %i.amf = shufflevector <32 x i8> %i.ame, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.amg = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.amf, <32 x i8> %i.amf) ; 2 uses
  %i.amh = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahx, <32 x i8> %i.amf)
  %i.ami = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amd, <32 x i8> %i.amg, <32 x i8> %i.amh)
  %i.amj = bitcast <8 x i32> %i.aih to <32 x i8>
  %i.amk = shufflevector <32 x i8> %i.amj, <32 x i8> poison, <32 x i32> <i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31, i32 20, i32 21, i32 22, i32 23, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31, i32 28, i32 29, i32 30, i32 31> ; 4 uses
  %i.aml = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.amk, <32 x i8> %i.amk) ; 2 uses
  %i.amm = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahy, <32 x i8> %i.amk)
  %i.amn = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.ami, <32 x i8> %i.aml, <32 x i8> %i.amm)
  %i.amo = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.ahz, <32 x i8> %i.alv)
  %i.amp = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> zeroinitializer, <32 x i8> %i.alw, <32 x i8> %i.amo)
  %i.amq = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aia, <32 x i8> %i.ama)
  %i.amr = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amp, <32 x i8> %i.amb, <32 x i8> %i.amq)
  %i.ams = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aib, <32 x i8> %i.amf)
  %i.amt = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amr, <32 x i8> %i.amg, <32 x i8> %i.ams)
  %i.amu = tail call <32 x i8> @llvm.x86.avx2.psign.b(<32 x i8> %i.aic, <32 x i8> %i.amk)
  %i.amv = tail call <8 x i32> @llvm.x86.avx512.vpdpbusd.256(<8 x i32> %i.amt, <32 x i8> %i.aml, <32 x i8> %i.amu)
  %i.amw = add <8 x i32> %i.all, %i.ajh           ; 2 uses
  %i.amx = add <8 x i32> %i.alt, %i.ajp           ; 2 uses
  %i.amy = add <8 x i32> %i.amn, %i.akj           ; 2 uses
  %i.amz = add <8 x i32> %i.amv, %i.akr           ; 2 uses
  %i.ana = shufflevector <8 x i32> %i.amw, <8 x i32> %i.amx, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
  %i.anb = shufflevector <8 x i32> %i.amw, <8 x i32> %i.amx, <8 x i32> <i32 2, i32 3, i32 10, i32 11, i32 6, i32 7, i32 14, i32 15>
  %i.anc = shufflevector <8 x i32> %i.amy, <8 x i32> %i.amz, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 4, i32 5, i32 12, i32 13>
end_hunk_4
begin_hunk_5_@ggml_gemm_q2_K_8x8_q8_K:bb.a
  %i.anb = add <16 x i32> %i.ana, %i.amp
  %i.anc = add <16 x i32> %i.alu, %i.ali
  %i.and = add <16 x i32> %i.anc, %i.amg
  %i.ane = add <16 x i32> %i.and, %i.ams
  %i.anf = sitofp <16 x i32> %i.amv to <16 x float>
  %i.ang = fmul <16 x float> %i.ajw, %i.cj
  %i.anh = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.ajy ; 2 uses
  %i.ani = load <16 x float>, ptr %i.anh, align 64, !tbaa !9
  %i.anj = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anf, <16 x float> %i.ang, <16 x float> %i.ani)
  store <16 x float> %i.anj, ptr %i.anh, align 64, !tbaa !9
  %i.ank = sitofp <16 x i32> %i.amy to <16 x float>
  %i.anl = fmul <16 x float> %i.akd, %i.cj
  %i.anm = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.akf ; 2 uses
  %i.ann = load <16 x float>, ptr %i.anm, align 64, !tbaa !9
  %i.ano = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.ank, <16 x float> %i.anl, <16 x float> %i.ann)
  store <16 x float> %i.ano, ptr %i.anm, align 64, !tbaa !9
  %i.anp = sitofp <16 x i32> %i.anb to <16 x float>
  %i.anq = fmul <16 x float> %i.akk, %i.cj
  %i.anr = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.akm ; 2 uses
  %i.ans = load <16 x float>, ptr %i.anr, align 64, !tbaa !9
  %i.ant = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anp, <16 x float> %i.anq, <16 x float> %i.ans)
  store <16 x float> %i.ant, ptr %i.anr, align 64, !tbaa !9
  %i.anu = sitofp <16 x i32> %i.ane to <16 x float>
  %i.anv = fmul <16 x float> %i.akr, %i.cj
  %i.anw = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.akt ; 2 uses
  %i.anx = load <16 x float>, ptr %i.anw, align 64, !tbaa !9
  %i.any = tail call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.anu, <16 x float> %i.anv, <16 x float> %i.anx)
  store <16 x float> %i.any, ptr %i.anw, align 64, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !186

bb.d:                                             ; preds = %bb.c
  br i1 %i.di, label %bb.b, label %bb.e, !llvm.loop !187

bb.e:                                             ; preds = %bb.d
  %i.anz = add nuw nsw i64 %.040144059.us, 1      ; 2 uses
  %exitcond4236.not = icmp eq i64 %i.anz, %i.h
  br i1 %exitcond4236.not, label %.preheader4050.us.loopexit, label %.lr.ph.us, !llvm.loop !188

.preheader4050.us.loopexit:                       ; preds = %bb.e
  %.pre = load <16 x float>, ptr %i.b, align 64, !tbaa !9
  %.pre4386 = load <16 x float>, ptr %i.c, align 64, !tbaa !9
  %.pre4387 = load <16 x float>, ptr %.phi.trans.insert, align 64, !tbaa !9
  %.pre4389 = load <16 x float>, ptr %.phi.trans.insert4388, align 64, !tbaa !9
  %.pre4391 = load <16 x float>, ptr %.phi.trans.insert4390, align 64, !tbaa !9
  %.pre4393 = load <16 x float>, ptr %.phi.trans.insert4392, align 64, !tbaa !9
  %.pre4395 = load <16 x float>, ptr %.phi.trans.insert4394, align 64, !tbaa !9
  %.pre4397 = load <16 x float>, ptr %.phi.trans.insert4396, align 64, !tbaa !9
  %.pre4399 = load <16 x float>, ptr %.phi.trans.insert4398, align 64, !tbaa !9
  %.pre4401 = load <16 x float>, ptr %.phi.trans.insert4400, align 64, !tbaa !9
  %.pre4403 = load <16 x float>, ptr %.phi.trans.insert4402, align 64, !tbaa !9
  %.pre4405 = load <16 x float>, ptr %.phi.trans.insert4404, align 64, !tbaa !9
  %.pre4407 = load <16 x float>, ptr %.phi.trans.insert4406, align 64, !tbaa !9
  %.pre4409 = load <16 x float>, ptr %.phi.trans.insert4408, align 64, !tbaa !9
  %.pre4411 = load <16 x float>, ptr %.phi.trans.insert4410, align 64, !tbaa !9
  %.pre4413 = load <16 x float>, ptr %.phi.trans.insert4412, align 64, !tbaa !9
  %.pre4415 = load <16 x float>, ptr %.phi.trans.insert4414, align 64, !tbaa !9
  %.pre4417 = load <16 x float>, ptr %.phi.trans.insert4416, align 64, !tbaa !9
  %.pre4419 = load <16 x float>, ptr %.phi.trans.insert4418, align 64, !tbaa !9
  %.pre4421 = load <16 x float>, ptr %.phi.trans.insert4420, align 64, !tbaa !9
  %.pre4423 = load <16 x float>, ptr %.phi.trans.insert4422, align 64, !tbaa !9
  %.pre4425 = load <16 x float>, ptr %.phi.trans.insert4424, align 64, !tbaa !9
  %i.aoa = fsub <16 x float> %.pre, %.pre4386
  %i.aob = fsub <16 x float> %.pre4387, %.pre4389
  %i.aoc = fsub <16 x float> %.pre4391, %.pre4393
  %i.aod = fsub <16 x float> %.pre4395, %.pre4397
  %i.aoe = fsub <16 x float> %.pre4399, %.pre4401
  %i.aof = fsub <16 x float> %.pre4403, %.pre4405
  %i.aog = fsub <16 x float> %.pre4407, %.pre4409
  %i.aoh = fsub <16 x float> %.pre4411, %.pre4413
  %i.aoi = fsub <16 x float> %.pre4415, %.pre4417
  %i.aoj = fsub <16 x float> %.pre4419, %.pre4421
  %i.aok = fsub <16 x float> %.pre4423, %.pre4425
  br label %.preheader4050.us

.preheader4050.us:                                ; preds = %.preheader4050.us.loopexit, %.preheader4051.us
  %i.aol = phi <16 x float> [ %i.aoa, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aom = phi <16 x float> [ %i.aob, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aon = phi <16 x float> [ %i.aoc, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aoo = phi <16 x float> [ %i.aod, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aop = phi <16 x float> [ %i.aoe, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aoq = phi <16 x float> [ %i.aof, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aor = phi <16 x float> [ %i.aog, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aos = phi <16 x float> [ %i.aoh, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aot = phi <16 x float> [ %i.aoi, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aou = phi <16 x float> [ %i.aoj, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %i.aov = phi <16 x float> [ %i.aok, %.preheader4050.us.loopexit ], [ zeroinitializer, %.preheader4051.us ]
  %.idx4041.us = shl nuw nsw i64 %.040114061.us, 5
  %invariant.gep.us = getelementptr i8, ptr %1, i64 %.idx4041.us ; 16 uses
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.am
  store <16 x float> %i.aol, ptr %gep.us, align 1, !tbaa !9
  %gep.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ao
  store <16 x float> %i.aom, ptr %gep.us.1, align 1, !tbaa !9
  %gep.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.aq
  store <16 x float> %i.aon, ptr %gep.us.2, align 1, !tbaa !9
  %gep.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.as
  store <16 x float> %i.aoo, ptr %gep.us.3, align 1, !tbaa !9
  %gep.us.4 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.au
  store <16 x float> %i.aop, ptr %gep.us.4, align 1, !tbaa !9
  %gep.us.5 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.aw
  store <16 x float> %i.aoq, ptr %gep.us.5, align 1, !tbaa !9
  %gep.us.6 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ay
  store <16 x float> %i.aor, ptr %gep.us.6, align 1, !tbaa !9
  %gep.us.7 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.ba
  store <16 x float> %i.aos, ptr %gep.us.7, align 1, !tbaa !9
  %gep.us.8 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bc
  store <16 x float> %i.aot, ptr %gep.us.8, align 1, !tbaa !9
  %gep.us.9 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.be
  store <16 x float> %i.aou, ptr %gep.us.9, align 1, !tbaa !9
  %gep.us.10 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bg
  store <16 x float> %i.aov, ptr %gep.us.10, align 1, !tbaa !9
  %gep.us.11 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bi
  %i.aow = load <16 x float>, ptr %i.w, align 64, !tbaa !9
  %i.aox = load <16 x float>, ptr %i.x, align 64, !tbaa !9
  %i.aoy = fsub <16 x float> %i.aow, %i.aox
  store <16 x float> %i.aoy, ptr %gep.us.11, align 1, !tbaa !9
  %gep.us.12 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bk
  %i.aoz = load <16 x float>, ptr %i.y, align 64, !tbaa !9
  %i.apa = load <16 x float>, ptr %i.z, align 64, !tbaa !9
  %i.apb = fsub <16 x float> %i.aoz, %i.apa
  store <16 x float> %i.apb, ptr %gep.us.12, align 1, !tbaa !9
  %gep.us.13 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bm
  %i.apc = load <16 x float>, ptr %i.aa, align 64, !tbaa !9
  %i.apd = load <16 x float>, ptr %i.ab, align 64, !tbaa !9
  %i.ape = fsub <16 x float> %i.apc, %i.apd
  store <16 x float> %i.ape, ptr %gep.us.13, align 1, !tbaa !9
  %gep.us.14 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bo
  %i.apf = load <16 x float>, ptr %i.ac, align 64, !tbaa !9
  %i.apg = load <16 x float>, ptr %i.ad, align 64, !tbaa !9
  %i.aph = fsub <16 x float> %i.apf, %i.apg
  store <16 x float> %i.aph, ptr %gep.us.14, align 1, !tbaa !9
  %gep.us.15 = getelementptr [4 x i8], ptr %invariant.gep.us, i64 %i.bq
  %i.api = load <16 x float>, ptr %i.ae, align 64, !tbaa !9
  %i.apj = load <16 x float>, ptr %i.af, align 64, !tbaa !9
  %i.apk = fsub <16 x float> %i.api, %i.apj
  store <16 x float> %i.apk, ptr %gep.us.15, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.apl = add nuw nsw i64 %.040114061.us, 2      ; 2 uses
  %i.apm = icmp slt i64 %i.apl, %i.q
  br i1 %i.apm, label %.preheader4051.us, label %._crit_edge.us, !llvm.loop !189

._crit_edge.us:                                   ; preds = %.preheader4050.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.apn = add nuw nsw i64 %.040084063.us, 4      ; 3 uses
  %i.apo = icmp slt i64 %i.apn, %i.n
  br i1 %i.apo, label %.lr.ph4065.split.us, label %.preheader4049, !llvm.loop !190

.preheader4049:                                   ; preds = %.lr.ph4065.split, %._crit_edge.us, %bb.a
  %.04008.lcssa = phi i64 [ 0, %bb.a ], [ %i.apn, %._crit_edge.us ], [ %i.cdd, %.lr.ph4065.split ] ; 4 uses
  %i.app = sdiv i32 %5, 4
  %i.apq = sext i32 %i.app to i64                 ; 9 uses
  %i.apr = icmp slt i64 %.04008.lcssa, %i.apq
  br i1 %i.apr, label %.lr.ph, label %._crit_edge4113

.lr.ph:                                           ; preds = %.preheader4049
  %i.aps = sdiv i32 %i.l, 8
  %i.apt = sext i32 %i.aps to i64                 ; 2 uses
  %i.apu = icmp sgt i32 %i.l, 7
  br i1 %i.apu, label %.lr.ph.split.us, label %._crit_edge4113

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.apv = icmp sgt i32 %0, 255
  br i1 %i.apv, label %.lr.ph4108.us.us, label %.lr.ph4108.us.preheader

.lr.ph4108.us.preheader:                          ; preds = %.lr.ph.split.us
  %i.apw = add nsw i64 %i.apt, -1                 ; 2 uses
  %i.apx = lshr i64 %i.apw, 1
  %i.apy = add nuw i64 %i.apx, 1                  ; 2 uses
  %xtraiter = and i64 %i.apy, 3                   ; 3 uses
  %i.apz = icmp ult i64 %i.apw, 6
  %unroll_iter = and i64 %i.apy, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod4684 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph4108.us

.lr.ph4108.us.us:                                 ; preds = %.lr.ph.split.us, %._crit_edge.split.us.us.us
  %.14112.us.us = phi i64 [ %i.ccl, %._crit_edge.split.us.us.us ], [ %.04008.lcssa, %.lr.ph.split.us ] ; 3 uses
  %i.aqa = mul nsw i64 %.14112.us.us, %i.h
  %i.aqb = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.aqa
  %i.aqc = shl nuw nsw i64 %.14112.us.us, 2       ; 4 uses
  %i.aqd = mul i64 %i.aqc, %2
  %i.aqe = or disjoint i64 %i.aqc, 1
  %i.aqf = mul i64 %i.aqe, %2
  %i.aqg = or disjoint i64 %i.aqc, 2
  %i.aqh = mul i64 %i.aqg, %2
  %i.aqi = or disjoint i64 %i.aqc, 3
  %i.aqj = mul i64 %i.aqi, %2
  br label %.preheader4048.us.us.us

.preheader4048.us.us.us:                          ; preds = %..preheader4047_crit_edge.us.us.us, %.lr.ph4108.us.us
  %.040184107.us.us.us = phi i64 [ 0, %.lr.ph4108.us.us ], [ %i.ccj, %..preheader4047_crit_edge.us.us.us ] ; 4 uses
  %i.aqk = mul nuw nsw i64 %.040184107.us.us.us, %i.h
  %i.aql = getelementptr inbounds nuw [672 x i8], ptr %3, i64 %i.aqk
  %i.aqm = or disjoint i64 %.040184107.us.us.us, 1
  %i.aqn = mul nuw nsw i64 %i.aqm, %i.h
  %i.aqo = getelementptr inbounds nuw [672 x i8], ptr %3, i64 %i.aqn
  br label %bb.f

bb.f:                                             ; preds = %.preheader4048.us.us.us, %bb.h
  %.lcssa40844105.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.ccd, %bb.h ]
  %.lcssa40824103.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.ccb, %bb.h ]
  %.lcssa40804101.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.cbz, %bb.h ]
  %.lcssa40764099.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.bzn, %bb.h ]
  %.lcssa40744097.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.bzl, %bb.h ]
  %.lcssa40724095.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.bzj, %bb.h ]
  %.040214091.us.us.us = phi i64 [ 0, %.preheader4048.us.us.us ], [ %i.cce, %bb.h ] ; 4 uses
  %.lcssa407040874090.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.bzh, %bb.h ]
  %.lcssa407840884089.us.us.us = phi <16 x float> [ zeroinitializer, %.preheader4048.us.us.us ], [ %i.cbx, %bb.h ]
  %i.aqp = getelementptr inbounds nuw [672 x i8], ptr %i.aqo, i64 %.040214091.us.us.us ; 14 uses
  %i.aqq = load <2 x i64>, ptr %i.aqp, align 1, !tbaa !9
  %i.aqr = getelementptr inbounds nuw [672 x i8], ptr %i.aql, i64 %.040214091.us.us.us ; 14 uses
  %i.aqs = load <2 x i64>, ptr %i.aqr, align 1, !tbaa !9
  %i.aqt = shufflevector <2 x i64> %i.aqs, <2 x i64> %i.aqq, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aqu = bitcast <4 x i64> %i.aqt to <16 x half>
  %i.aqv = fpext <16 x half> %i.aqu to <16 x float> ; 4 uses
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqp, i64 16
  %i.aqx = load <2 x i64>, ptr %i.aqw, align 1, !tbaa !9
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqr, i64 16
  %i.aqz = load <2 x i64>, ptr %i.aqy, align 1, !tbaa !9
  %i.ara = shufflevector <2 x i64> %i.aqz, <2 x i64> %i.aqx, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.arb = bitcast <4 x i64> %i.ara to <16 x half>
  %i.arc = fpext <16 x half> %i.arb to <16 x float> ; 4 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.aqr, i64 160
  %i.are = getelementptr inbounds nuw i8, ptr %i.aqr, i64 192
  %i.arf = getelementptr inbounds nuw i8, ptr %i.aqr, i64 224
  %i.arg = getelementptr inbounds nuw i8, ptr %i.aqr, i64 256
  %i.arh = getelementptr inbounds nuw i8, ptr %i.aqr, i64 288
  %i.ari = getelementptr inbounds nuw i8, ptr %i.aqr, i64 320
  %i.arj = getelementptr inbounds nuw i8, ptr %i.aqr, i64 352
  %i.ark = getelementptr inbounds nuw i8, ptr %i.aqr, i64 384
  %i.arl = getelementptr inbounds nuw i8, ptr %i.aqp, i64 160
  %i.arm = getelementptr inbounds nuw i8, ptr %i.aqp, i64 192
  %i.arn = getelementptr inbounds nuw i8, ptr %i.aqp, i64 224
  %i.aro = getelementptr inbounds nuw i8, ptr %i.aqp, i64 256
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aqp, i64 288
  %i.arq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 320
  %i.arr = getelementptr inbounds nuw i8, ptr %i.aqp, i64 352
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aqp, i64 384
  %i.art = getelementptr inbounds nuw i8, ptr %i.aqr, i64 32
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqr, i64 48
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aqr, i64 64
  %i.arw = getelementptr inbounds nuw i8, ptr %i.aqr, i64 80
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aqp, i64 32
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aqp, i64 48
  %i.arz = getelementptr inbounds nuw i8, ptr %i.aqp, i64 64
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aqp, i64 80
  %i.asb = getelementptr inbounds nuw [1168 x i8], ptr %i.aqb, i64 %.040214091.us.us.us ; 21 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.asb, i64 16
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asb, i64 48
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asb, i64 80
  %i.asf = getelementptr inbounds nuw i8, ptr %i.asb, i64 112
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asb, i64 144
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asb, i64 176
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asb, i64 208
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asb, i64 240
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asb, i64 272
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asb, i64 304
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asb, i64 336
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asb, i64 368
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asb, i64 400
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asb, i64 432
  %i.asq = getelementptr inbounds nuw i8, ptr %i.asb, i64 464
  %i.asr = getelementptr inbounds nuw i8, ptr %i.asb, i64 496
  %i.ass = getelementptr inbounds nuw i8, ptr %i.asb, i64 1040
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asb, i64 1056
  %i.asu = getelementptr inbounds nuw i8, ptr %i.asb, i64 1072
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asb, i64 1088
  %i.asw = load <4 x float>, ptr %i.asb, align 16, !tbaa !9 ; 4 uses
  %i.asx = shufflevector <4 x float> %i.asw, <4 x float> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.asy = fmul <16 x float> %i.asx, %i.aqv
  %i.asz = shufflevector <4 x float> %i.asw, <4 x float> poison, <16 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ata = fmul <16 x float> %i.asz, %i.aqv
  %i.atb = shufflevector <4 x float> %i.asw, <4 x float> poison, <16 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.atc = fmul <16 x float> %i.atb, %i.aqv
  %i.atd = shufflevector <4 x float> %i.asw, <4 x float> poison, <16 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.ate = fmul <16 x float> %i.atd, %i.aqv
  %i.atf = fmul <16 x float> %i.asx, %i.arc
  %i.atg = fmul <16 x float> %i.asz, %i.arc
  %i.ath = fmul <16 x float> %i.atb, %i.arc
  %i.ati = fmul <16 x float> %i.atd, %i.arc
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %i.atj = phi i1 [ false, %bb.g ], [ true, %bb.f ]
  %indvars.iv4258 = phi i64 [ 1, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.atk = phi <16 x float> [ %i.bzh, %bb.g ], [ %.lcssa407040874090.us.us.us, %bb.f ]
  %i.atl = phi <16 x float> [ %i.bzj, %bb.g ], [ %.lcssa40724095.us.us.us, %bb.f ]
  %i.atm = phi <16 x float> [ %i.bzl, %bb.g ], [ %.lcssa40744097.us.us.us, %bb.f ]
  %i.atn = phi <16 x float> [ %i.bzn, %bb.g ], [ %.lcssa40764099.us.us.us, %bb.f ]
  %i.ato = phi <16 x float> [ %i.cbx, %bb.g ], [ %.lcssa407840884089.us.us.us, %bb.f ]
  %i.atp = phi <16 x float> [ %i.cbz, %bb.g ], [ %.lcssa40804101.us.us.us, %bb.f ]
  %i.atq = phi <16 x float> [ %i.ccb, %bb.g ], [ %.lcssa40824103.us.us.us, %bb.f ]
  %i.atr = phi <16 x float> [ %i.ccd, %bb.g ], [ %.lcssa40844105.us.us.us, %bb.f ]
  %i.ats = shl nuw nsw i64 %indvars.iv4258, 8     ; 16 uses
  %i.att = getelementptr inbounds nuw i8, ptr %i.ard, i64 %i.ats
  %i.atu = load <8 x i32>, ptr %i.att, align 1, !tbaa !9 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.ats
  %i.atw = load <8 x i32>, ptr %i.atv, align 1, !tbaa !9 ; 2 uses
  %i.atx = getelementptr inbounds nuw i8, ptr %i.arf, i64 %i.ats
  %i.aty = load <8 x i32>, ptr %i.atx, align 1, !tbaa !9 ; 2 uses
  %i.atz = getelementptr inbounds nuw i8, ptr %i.arg, i64 %i.ats
  %i.aua = load <8 x i32>, ptr %i.atz, align 1, !tbaa !9 ; 2 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %i.arh, i64 %i.ats
  %i.auc = load <8 x i32>, ptr %i.aub, align 1, !tbaa !9 ; 2 uses
  %i.aud = getelementptr inbounds nuw i8, ptr %i.ari, i64 %i.ats
  %i.aue = load <8 x i32>, ptr %i.aud, align 1, !tbaa !9 ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ats
  %i.aug = load <8 x i32>, ptr %i.auf, align 1, !tbaa !9 ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %i.ark, i64 %i.ats
  %i.aui = load <8 x i32>, ptr %i.auh, align 1, !tbaa !9 ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %i.arl, i64 %i.ats
  %i.auk = load <8 x i32>, ptr %i.auj, align 1, !tbaa !9 ; 2 uses
  %i.aul = getelementptr inbounds nuw i8, ptr %i.arm, i64 %i.ats
  %i.aum = load <8 x i32>, ptr %i.aul, align 1, !tbaa !9 ; 2 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %i.arn, i64 %i.ats
  %i.auo = load <8 x i32>, ptr %i.aun, align 1, !tbaa !9 ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %i.aro, i64 %i.ats
  %i.auq = load <8 x i32>, ptr %i.aup, align 1, !tbaa !9 ; 2 uses
  %i.aur = getelementptr inbounds nuw i8, ptr %i.arp, i64 %i.ats
  %i.aus = load <8 x i32>, ptr %i.aur, align 1, !tbaa !9 ; 2 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.arq, i64 %i.ats
  %i.auu = load <8 x i32>, ptr %i.aut, align 1, !tbaa !9 ; 2 uses
  %i.auv = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.ats
  %i.auw = load <8 x i32>, ptr %i.auv, align 1, !tbaa !9 ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.ars, i64 %i.ats
  %i.auy = load <8 x i32>, ptr %i.aux, align 1, !tbaa !9 ; 2 uses
  %i.auz = shufflevector <8 x i32> %i.atu, <8 x i32> %i.atw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ava = shufflevector <8 x i32> %i.auk, <8 x i32> %i.aum, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avb = shufflevector <16 x i32> %i.auz, <16 x i32> %i.ava, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avc = shufflevector <8 x i32> %i.atu, <8 x i32> %i.atw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avd = shufflevector <8 x i32> %i.auk, <8 x i32> %i.aum, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ave = shufflevector <16 x i32> %i.avc, <16 x i32> %i.avd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avf = shufflevector <8 x i32> %i.aty, <8 x i32> %i.aua, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avg = shufflevector <8 x i32> %i.auo, <8 x i32> %i.auq, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avh = shufflevector <16 x i32> %i.avf, <16 x i32> %i.avg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avi = shufflevector <8 x i32> %i.aty, <8 x i32> %i.aua, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avj = shufflevector <8 x i32> %i.auo, <8 x i32> %i.auq, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avk = shufflevector <16 x i32> %i.avi, <16 x i32> %i.avj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avl = shufflevector <8 x i32> %i.auc, <8 x i32> %i.aue, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avm = shufflevector <8 x i32> %i.aus, <8 x i32> %i.auu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avn = shufflevector <16 x i32> %i.avl, <16 x i32> %i.avm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avo = shufflevector <8 x i32> %i.auc, <8 x i32> %i.aue, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avp = shufflevector <8 x i32> %i.aus, <8 x i32> %i.auu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avq = shufflevector <16 x i32> %i.avo, <16 x i32> %i.avp, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avr = shufflevector <8 x i32> %i.aug, <8 x i32> %i.aui, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avs = shufflevector <8 x i32> %i.auw, <8 x i32> %i.auy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avt = shufflevector <16 x i32> %i.avr, <16 x i32> %i.avs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avu = shufflevector <8 x i32> %i.aug, <8 x i32> %i.aui, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avv = shufflevector <8 x i32> %i.auw, <8 x i32> %i.auy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.avw = shufflevector <16 x i32> %i.avu, <16 x i32> %i.avv, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23> ; 2 uses
  %i.avx = bitcast <16 x i32> %i.avb to <32 x i16> ; 3 uses
  %i.avy = lshr <32 x i16> %i.avx, splat (i16 2)
  %i.avz = bitcast <16 x i32> %i.ave to <32 x i16> ; 3 uses
  %i.awa = lshr <32 x i16> %i.avz, splat (i16 2)
  %i.awb = bitcast <16 x i32> %i.avh to <32 x i16> ; 3 uses
  %i.awc = lshr <32 x i16> %i.awb, splat (i16 2)
  %i.awd = bitcast <16 x i32> %i.avk to <32 x i16> ; 3 uses
  %i.awe = lshr <32 x i16> %i.awd, splat (i16 2)
  %i.awf = bitcast <16 x i32> %i.avn to <32 x i16> ; 3 uses
  %i.awg = lshr <32 x i16> %i.awf, splat (i16 2)
  %i.awh = bitcast <16 x i32> %i.avq to <32 x i16> ; 3 uses
  %i.awi = lshr <32 x i16> %i.awh, splat (i16 2)
  %i.awj = bitcast <16 x i32> %i.avt to <32 x i16> ; 3 uses
  %i.awk = lshr <32 x i16> %i.awj, splat (i16 2)
  %i.awl = bitcast <16 x i32> %i.avw to <32 x i16> ; 3 uses
  %i.awm = lshr <32 x i16> %i.awl, splat (i16 2)
  %i.awn = lshr <32 x i16> %i.avx, splat (i16 4)
  %i.awo = lshr <32 x i16> %i.avz, splat (i16 4)
  %i.awp = lshr <32 x i16> %i.awb, splat (i16 4)
  %i.awq = lshr <32 x i16> %i.awd, splat (i16 4)
  %i.awr = lshr <32 x i16> %i.awf, splat (i16 4)
  %i.aws = lshr <32 x i16> %i.awh, splat (i16 4)
  %i.awt = lshr <32 x i16> %i.awj, splat (i16 4)
  %i.awu = lshr <32 x i16> %i.awl, splat (i16 4)
  %i.awv = lshr <32 x i16> %i.avx, splat (i16 6)
  %i.aww = lshr <32 x i16> %i.avz, splat (i16 6)
  %i.awx = lshr <32 x i16> %i.awb, splat (i16 6)
  %i.awy = lshr <32 x i16> %i.awd, splat (i16 6)
  %i.awz = lshr <32 x i16> %i.awf, splat (i16 6)
  %i.axa = lshr <32 x i16> %i.awh, splat (i16 6)
  %i.axb = lshr <32 x i16> %i.awj, splat (i16 6)
  %i.axc = lshr <32 x i16> %i.awl, splat (i16 6)
  %i.axd = and <16 x i32> %i.avb, splat (i32 50529027) ; 2 uses
  %i.axe = and <16 x i32> %i.ave, splat (i32 50529027) ; 2 uses
  %i.axf = and <16 x i32> %i.avh, splat (i32 50529027) ; 2 uses
  %i.axg = and <16 x i32> %i.avk, splat (i32 50529027) ; 2 uses
  %i.axh = and <16 x i32> %i.avn, splat (i32 50529027) ; 2 uses
  %i.axi = and <16 x i32> %i.avq, splat (i32 50529027) ; 2 uses
  %i.axj = and <16 x i32> %i.avt, splat (i32 50529027) ; 2 uses
  %i.axk = and <16 x i32> %i.avw, splat (i32 50529027) ; 2 uses
  %.inner4565 = and <32 x i16> %i.avy, splat (i16 771) ; 2 uses
  %.inner4566 = and <32 x i16> %i.awa, splat (i16 771) ; 2 uses
  %.inner4567 = and <32 x i16> %i.awc, splat (i16 771) ; 2 uses
  %.inner4568 = and <32 x i16> %i.awe, splat (i16 771) ; 2 uses
  %.inner4569 = and <32 x i16> %i.awg, splat (i16 771) ; 2 uses
  %.inner4570 = and <32 x i16> %i.awi, splat (i16 771) ; 2 uses
  %.inner4571 = and <32 x i16> %i.awk, splat (i16 771) ; 2 uses
  %.inner4572 = and <32 x i16> %i.awm, splat (i16 771) ; 2 uses
  %.inner4573 = and <32 x i16> %i.awn, splat (i16 771) ; 2 uses
end_hunk_5
begin_hunk_6_@ggml_gemm_q2_K_8x8_q8_K:bb.a
  %i.dmr = add <8 x i32> %i.dlj, %i.dkx
  %i.dms = add <8 x i32> %i.dmr, %i.dlv
  %i.dmt = add <8 x i32> %i.dms, %i.dmh
  %i.dmu = add <8 x i32> %i.dlm, %i.dla
  %i.dmv = add <8 x i32> %i.dmu, %i.dly
  %i.dmw = add <8 x i32> %i.dmv, %i.dmk
  %i.dmx = add <8 x i32> %i.dlp, %i.dld
  %i.dmy = add <8 x i32> %i.dmx, %i.dmb
  %i.dmz = add <8 x i32> %i.dmy, %i.dmn
  %i.dna = add <8 x i32> %i.dls, %i.dlg
  %i.dnb = add <8 x i32> %i.dna, %i.dme
  %i.dnc = add <8 x i32> %i.dnb, %i.dmq
  %i.dnd = sitofp <8 x i32> %i.dmt to <8 x float>
  %i.dne = fmul <8 x float> %i.dju, %i.cfr
  %i.dnf = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.djw ; 2 uses
  %i.dng = load <8 x float>, ptr %i.dnf, align 32, !tbaa !9
  %i.dnh = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dnd, <8 x float> %i.dne, <8 x float> %i.dng)
  store <8 x float> %i.dnh, ptr %i.dnf, align 32, !tbaa !9
  %i.dni = sitofp <8 x i32> %i.dmw to <8 x float>
  %i.dnj = fmul <8 x float> %i.dkb, %i.cfr
  %i.dnk = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.dkd ; 2 uses
  %i.dnl = load <8 x float>, ptr %i.dnk, align 32, !tbaa !9
  %i.dnm = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dni, <8 x float> %i.dnj, <8 x float> %i.dnl)
  store <8 x float> %i.dnm, ptr %i.dnk, align 32, !tbaa !9
  %i.dnn = sitofp <8 x i32> %i.dmz to <8 x float>
  %i.dno = fmul <8 x float> %i.dki, %i.cfr
  %i.dnp = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.dkk ; 2 uses
  %i.dnq = load <8 x float>, ptr %i.dnp, align 32, !tbaa !9
  %i.dnr = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dnn, <8 x float> %i.dno, <8 x float> %i.dnq)
  store <8 x float> %i.dnr, ptr %i.dnp, align 32, !tbaa !9
  %i.dns = sitofp <8 x i32> %i.dnc to <8 x float>
  %i.dnt = fmul <8 x float> %i.dkp, %i.cfr
  %i.dnu = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.dkr ; 2 uses
  %i.dnv = load <8 x float>, ptr %i.dnu, align 32, !tbaa !9
  %i.dnw = tail call noundef <8 x float> @llvm.fma.v8f32(<8 x float> %i.dns, <8 x float> %i.dnt, <8 x float> %i.dnv)
  store <8 x float> %i.dnw, ptr %i.dnu, align 32, !tbaa !9
  %indvars.iv.next4282 = add nuw nsw i64 %indvars.iv4281, 1 ; 2 uses
  %exitcond4284.not = icmp eq i64 %indvars.iv.next4282, 4
  br i1 %exitcond4284.not, label %bb.m, label %bb.l, !llvm.loop !196

bb.m:                                             ; preds = %bb.l
  br i1 %i.cge, label %bb.k, label %bb.n, !llvm.loop !197

bb.n:                                             ; preds = %bb.m
  %i.dnx = add nuw nsw i64 %.040284138.us, 1      ; 2 uses
  %exitcond4288.not = icmp eq i64 %i.dnx, %i.h
  br i1 %exitcond4288.not, label %.preheader4044.us.loopexit, label %.lr.ph4139.us, !llvm.loop !198

.preheader4044.us.loopexit:                       ; preds = %bb.n
  %.pre4426 = load <8 x float>, ptr %i.e, align 32, !tbaa !9
  %.pre4427 = load <8 x float>, ptr %i.f, align 32, !tbaa !9
  %.pre4429 = load <8 x float>, ptr %.phi.trans.insert4428, align 32, !tbaa !9
  %.pre4431 = load <8 x float>, ptr %.phi.trans.insert4430, align 32, !tbaa !9
  %.pre4433 = load <8 x float>, ptr %.phi.trans.insert4432, align 32, !tbaa !9
  %.pre4435 = load <8 x float>, ptr %.phi.trans.insert4434, align 32, !tbaa !9
  %.pre4437 = load <8 x float>, ptr %.phi.trans.insert4436, align 32, !tbaa !9
  %.pre4439 = load <8 x float>, ptr %.phi.trans.insert4438, align 32, !tbaa !9
  %.pre4441 = load <8 x float>, ptr %.phi.trans.insert4440, align 32, !tbaa !9
  %.pre4443 = load <8 x float>, ptr %.phi.trans.insert4442, align 32, !tbaa !9
  %.pre4445 = load <8 x float>, ptr %.phi.trans.insert4444, align 32, !tbaa !9
  %.pre4447 = load <8 x float>, ptr %.phi.trans.insert4446, align 32, !tbaa !9
  %.pre4449 = load <8 x float>, ptr %.phi.trans.insert4448, align 32, !tbaa !9
  %.pre4451 = load <8 x float>, ptr %.phi.trans.insert4450, align 32, !tbaa !9
  %.pre4453 = load <8 x float>, ptr %.phi.trans.insert4452, align 32, !tbaa !9
  %.pre4455 = load <8 x float>, ptr %.phi.trans.insert4454, align 32, !tbaa !9
  %.pre4457 = load <8 x float>, ptr %.phi.trans.insert4456, align 32, !tbaa !9
  %.pre4459 = load <8 x float>, ptr %.phi.trans.insert4458, align 32, !tbaa !9
  %.pre4461 = load <8 x float>, ptr %.phi.trans.insert4460, align 32, !tbaa !9
  %.pre4463 = load <8 x float>, ptr %.phi.trans.insert4462, align 32, !tbaa !9
  %.pre4465 = load <8 x float>, ptr %.phi.trans.insert4464, align 32, !tbaa !9
  %.pre4467 = load <8 x float>, ptr %.phi.trans.insert4466, align 32, !tbaa !9
  %i.dny = fsub <8 x float> %.pre4426, %.pre4427
  %i.dnz = fsub <8 x float> %.pre4429, %.pre4431
  %i.doa = fsub <8 x float> %.pre4433, %.pre4435
  %i.dob = fsub <8 x float> %.pre4437, %.pre4439
  %i.doc = fsub <8 x float> %.pre4441, %.pre4443
  %i.dod = fsub <8 x float> %.pre4445, %.pre4447
  %i.doe = fsub <8 x float> %.pre4449, %.pre4451
  %i.dof = fsub <8 x float> %.pre4453, %.pre4455
  %i.dog = fsub <8 x float> %.pre4457, %.pre4459
  %i.doh = fsub <8 x float> %.pre4461, %.pre4463
  %i.doi = fsub <8 x float> %.pre4465, %.pre4467
  br label %.preheader4044.us

.preheader4044.us:                                ; preds = %.preheader4044.us.loopexit, %.preheader4045.us
  %i.doj = phi <8 x float> [ %i.dny, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.dok = phi <8 x float> [ %i.dnz, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.dol = phi <8 x float> [ %i.doa, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.dom = phi <8 x float> [ %i.dob, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.don = phi <8 x float> [ %i.doc, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.doo = phi <8 x float> [ %i.dod, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.dop = phi <8 x float> [ %i.doe, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.doq = phi <8 x float> [ %i.dof, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.dor = phi <8 x float> [ %i.dog, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.dos = phi <8 x float> [ %i.doh, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %i.dot = phi <8 x float> [ %i.doi, %.preheader4044.us.loopexit ], [ zeroinitializer, %.preheader4045.us ]
  %.idx4039.us = shl i64 %.040254141.us, 5
  %invariant.gep.us4148 = getelementptr i8, ptr %1, i64 %.idx4039.us ; 16 uses
  %gep.us4147 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cef
  store <8 x float> %i.doj, ptr %gep.us4147, align 1, !tbaa !9
  %gep.us4147.1 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.ceh
  store <8 x float> %i.dok, ptr %gep.us4147.1, align 1, !tbaa !9
  %gep.us4147.2 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cej
  store <8 x float> %i.dol, ptr %gep.us4147.2, align 1, !tbaa !9
  %gep.us4147.3 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cel
  store <8 x float> %i.dom, ptr %gep.us4147.3, align 1, !tbaa !9
  %gep.us4147.4 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cen
  store <8 x float> %i.don, ptr %gep.us4147.4, align 1, !tbaa !9
  %gep.us4147.5 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cep
  store <8 x float> %i.doo, ptr %gep.us4147.5, align 1, !tbaa !9
  %gep.us4147.6 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cer
  store <8 x float> %i.dop, ptr %gep.us4147.6, align 1, !tbaa !9
  %gep.us4147.7 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cet
  store <8 x float> %i.doq, ptr %gep.us4147.7, align 1, !tbaa !9
  %gep.us4147.8 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cev
  store <8 x float> %i.dor, ptr %gep.us4147.8, align 1, !tbaa !9
  %gep.us4147.9 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cex
  store <8 x float> %i.dos, ptr %gep.us4147.9, align 1, !tbaa !9
  %gep.us4147.10 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cez
  store <8 x float> %i.dot, ptr %gep.us4147.10, align 1, !tbaa !9
  %gep.us4147.11 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cfb
  %i.dou = load <8 x float>, ptr %i.cdp, align 32, !tbaa !9
  %i.dov = load <8 x float>, ptr %i.cdq, align 32, !tbaa !9
  %i.dow = fsub <8 x float> %i.dou, %i.dov
  store <8 x float> %i.dow, ptr %gep.us4147.11, align 1, !tbaa !9
  %gep.us4147.12 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cfd
  %i.dox = load <8 x float>, ptr %i.cdr, align 32, !tbaa !9
  %i.doy = load <8 x float>, ptr %i.cds, align 32, !tbaa !9
  %i.doz = fsub <8 x float> %i.dox, %i.doy
  store <8 x float> %i.doz, ptr %gep.us4147.12, align 1, !tbaa !9
  %gep.us4147.13 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cff
  %i.dpa = load <8 x float>, ptr %i.cdt, align 32, !tbaa !9
  %i.dpb = load <8 x float>, ptr %i.cdu, align 32, !tbaa !9
  %i.dpc = fsub <8 x float> %i.dpa, %i.dpb
  store <8 x float> %i.dpc, ptr %gep.us4147.13, align 1, !tbaa !9
  %gep.us4147.14 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cfh
  %i.dpd = load <8 x float>, ptr %i.cdv, align 32, !tbaa !9
  %i.dpe = load <8 x float>, ptr %i.cdw, align 32, !tbaa !9
  %i.dpf = fsub <8 x float> %i.dpd, %i.dpe
  store <8 x float> %i.dpf, ptr %gep.us4147.14, align 1, !tbaa !9
  %gep.us4147.15 = getelementptr [4 x i8], ptr %invariant.gep.us4148, i64 %i.cfj
  %i.dpg = load <8 x float>, ptr %i.cdx, align 32, !tbaa !9
  %i.dph = load <8 x float>, ptr %i.cdy, align 32, !tbaa !9
  %i.dpi = fsub <8 x float> %i.dpg, %i.dph
  store <8 x float> %i.dpi, ptr %gep.us4147.15, align 1, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.dpj = add nsw i64 %.040254141.us, 1          ; 2 uses
  %exitcond4293.not = icmp eq i64 %i.dpj, %i.cdj
  br i1 %exitcond4293.not, label %._crit_edge.us4149, label %.preheader4045.us, !llvm.loop !199

._crit_edge.us4149:                               ; preds = %.preheader4044.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  %i.dpk = add nsw i64 %.34143.us, 4              ; 3 uses
  %i.dpl = icmp slt i64 %i.dpk, %i.n
  br i1 %i.dpl, label %.lr.ph4145.split.us, label %.preheader4043, !llvm.loop !200

.preheader4043:                                   ; preds = %.lr.ph4145.split, %._crit_edge.us4149, %bb.j
  %.3.lcssa = phi i64 [ %.2, %bb.j ], [ %i.dpk, %._crit_edge.us4149 ], [ %i.eyk, %.lr.ph4145.split ] ; 3 uses
  %i.dpm = icmp slt i64 %.3.lcssa, %i.apq
  br i1 %i.dpm, label %.lr.ph4196, label %._crit_edge4197.split

.lr.ph4196:                                       ; preds = %.preheader4043
  %i.dpn = sdiv i32 %6, 8
  %i.dpo = sext i32 %i.dpn to i64                 ; 5 uses
  %i.dpp = icmp slt i64 %.04009, %i.dpo
  br i1 %i.dpp, label %.lr.ph4196.split, label %._crit_edge4197.split

.lr.ph4196.split:                                 ; preds = %.lr.ph4196
  %i.dpq = icmp sgt i32 %0, 255
  br i1 %i.dpq, label %.lr.ph4192.us, label %.lr.ph4192.preheader

.lr.ph4192.preheader:                             ; preds = %.lr.ph4196.split
  %i.dpr = sub nsw i64 %i.dpo, %.04009
  %xtraiter4688 = and i64 %i.dpr, 3               ; 2 uses
  %lcmp.mod4689.not = icmp eq i64 %xtraiter4688, 0
  %i.dps = sub nsw i64 %.04009, %i.dpo
  %i.dpt = icmp ugt i64 %i.dps, -4
  br label %.lr.ph4192

.lr.ph4192.us:                                    ; preds = %.lr.ph4196.split, %._crit_edge.split.us.us
  %.44195.us = phi i64 [ %i.eyj, %._crit_edge.split.us.us ], [ %.3.lcssa, %.lr.ph4196.split ] ; 3 uses
  %i.dpu = mul nsw i64 %.44195.us, %i.h
  %i.dpv = getelementptr inbounds [1168 x i8], ptr %4, i64 %i.dpu
  %i.dpw = shl nsw i64 %.44195.us, 2              ; 4 uses
  %i.dpx = mul i64 %i.dpw, %2
  %i.dpy = or disjoint i64 %i.dpw, 1
  %i.dpz = mul i64 %i.dpy, %2
  %i.dqa = or disjoint i64 %i.dpw, 2
  %i.dqb = mul i64 %i.dqa, %2
  %i.dqc = or disjoint i64 %i.dpw, 3
  %i.dqd = mul i64 %i.dqc, %2
  br label %.preheader4042.us.us

.preheader4042.us.us:                             ; preds = %..preheader_crit_edge.us.us, %.lr.ph4192.us
  %.040324191.us.us = phi i64 [ %.04009, %.lr.ph4192.us ], [ %i.eyi, %..preheader_crit_edge.us.us ] ; 3 uses
  %i.dqe = mul nsw i64 %.040324191.us.us, %i.h
  %i.dqf = getelementptr inbounds [672 x i8], ptr %3, i64 %i.dqe
  br label %bb.o

bb.o:                                             ; preds = %.preheader4042.us.us, %bb.q
  %.lcssa41674189.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.eyc, %bb.q ]
  %.lcssa41654187.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.eya, %bb.q ]
  %.lcssa41634185.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.exy, %bb.q ]
  %.lcssa41594183.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.evm, %bb.q ]
  %.lcssa41574181.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.evk, %bb.q ]
  %.lcssa41554179.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.evi, %bb.q ]
  %.040354174.us.us = phi i64 [ 0, %.preheader4042.us.us ], [ %i.eyd, %bb.q ] ; 3 uses
  %.lcssa415341704173.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.evg, %bb.q ]
  %.lcssa416141714172.us.us = phi <8 x float> [ zeroinitializer, %.preheader4042.us.us ], [ %i.exw, %bb.q ]
  %i.dqg = getelementptr inbounds nuw [672 x i8], ptr %i.dqf, i64 %.040354174.us.us ; 14 uses
  %i.dqh = load <8 x half>, ptr %i.dqg, align 1, !tbaa !9
  %i.dqi = fpext <8 x half> %i.dqh to <8 x float> ; 4 uses
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dqg, i64 16
  %i.dqk = load <8 x half>, ptr %i.dqj, align 1, !tbaa !9
  %i.dql = fpext <8 x half> %i.dqk to <8 x float> ; 4 uses
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dqg, i64 160
  %i.dqn = getelementptr inbounds nuw i8, ptr %i.dqg, i64 192
  %i.dqo = getelementptr inbounds nuw i8, ptr %i.dqg, i64 224
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.dqg, i64 256
  %i.dqq = getelementptr inbounds nuw i8, ptr %i.dqg, i64 288
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.dqg, i64 320
  %i.dqs = getelementptr inbounds nuw i8, ptr %i.dqg, i64 352
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dqg, i64 384
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dqg, i64 32
  %i.dqv = getelementptr inbounds nuw i8, ptr %i.dqg, i64 48
  %i.dqw = getelementptr inbounds nuw i8, ptr %i.dqg, i64 64
  %i.dqx = getelementptr inbounds nuw i8, ptr %i.dqg, i64 80
  %i.dqy = getelementptr inbounds nuw [1168 x i8], ptr %i.dpv, i64 %.040354174.us.us ; 21 uses
  %i.dqz = getelementptr inbounds nuw i8, ptr %i.dqy, i64 16
  %i.dra = getelementptr inbounds nuw i8, ptr %i.dqy, i64 48
  %i.drb = getelementptr inbounds nuw i8, ptr %i.dqy, i64 80
  %i.drc = getelementptr inbounds nuw i8, ptr %i.dqy, i64 112
  %i.drd = getelementptr inbounds nuw i8, ptr %i.dqy, i64 144
  %i.dre = getelementptr inbounds nuw i8, ptr %i.dqy, i64 176
  %i.drf = getelementptr inbounds nuw i8, ptr %i.dqy, i64 208
  %i.drg = getelementptr inbounds nuw i8, ptr %i.dqy, i64 240
  %i.drh = getelementptr inbounds nuw i8, ptr %i.dqy, i64 272
  %i.dri = getelementptr inbounds nuw i8, ptr %i.dqy, i64 304
  %i.drj = getelementptr inbounds nuw i8, ptr %i.dqy, i64 336
  %i.drk = getelementptr inbounds nuw i8, ptr %i.dqy, i64 368
  %i.drl = getelementptr inbounds nuw i8, ptr %i.dqy, i64 400
  %i.drm = getelementptr inbounds nuw i8, ptr %i.dqy, i64 432
  %i.drn = getelementptr inbounds nuw i8, ptr %i.dqy, i64 464
  %i.dro = getelementptr inbounds nuw i8, ptr %i.dqy, i64 496
  %i.drp = getelementptr inbounds nuw i8, ptr %i.dqy, i64 1040
  %i.drq = getelementptr inbounds nuw i8, ptr %i.dqy, i64 1056
  %i.drr = getelementptr inbounds nuw i8, ptr %i.dqy, i64 1072
  %i.drs = getelementptr inbounds nuw i8, ptr %i.dqy, i64 1088
  %i.drt = load <4 x float>, ptr %i.dqy, align 16, !tbaa !9 ; 4 uses
  %i.dru = shufflevector <4 x float> %i.drt, <4 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.drv = fmul <8 x float> %i.dru, %i.dqi
  %i.drw = shufflevector <4 x float> %i.drt, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.drx = fmul <8 x float> %i.drw, %i.dqi
  %i.dry = shufflevector <4 x float> %i.drt, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.drz = fmul <8 x float> %i.dry, %i.dqi
  %i.dsa = shufflevector <4 x float> %i.drt, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.dsb = fmul <8 x float> %i.dsa, %i.dqi
  %i.dsc = fmul <8 x float> %i.dru, %i.dql
  %i.dsd = fmul <8 x float> %i.drw, %i.dql
  %i.dse = fmul <8 x float> %i.dry, %i.dql
  %i.dsf = fmul <8 x float> %i.dsa, %i.dql
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %bb.o
  %i.dsg = phi i1 [ false, %bb.p ], [ true, %bb.o ]
  %indvars.iv4312 = phi i64 [ 1, %bb.p ], [ 0, %bb.o ] ; 4 uses
  %i.dsh = phi <8 x float> [ %i.evg, %bb.p ], [ %.lcssa415341704173.us.us, %bb.o ]
  %i.dsi = phi <8 x float> [ %i.evi, %bb.p ], [ %.lcssa41554179.us.us, %bb.o ]
  %i.dsj = phi <8 x float> [ %i.evk, %bb.p ], [ %.lcssa41574181.us.us, %bb.o ]
  %i.dsk = phi <8 x float> [ %i.evm, %bb.p ], [ %.lcssa41594183.us.us, %bb.o ]
  %i.dsl = phi <8 x float> [ %i.exw, %bb.p ], [ %.lcssa416141714172.us.us, %bb.o ]
  %i.dsm = phi <8 x float> [ %i.exy, %bb.p ], [ %.lcssa41634185.us.us, %bb.o ]
  %i.dsn = phi <8 x float> [ %i.eya, %bb.p ], [ %.lcssa41654187.us.us, %bb.o ]
  %i.dso = phi <8 x float> [ %i.eyc, %bb.p ], [ %.lcssa41674189.us.us, %bb.o ]
  %i.dsp = shl nuw nsw i64 %indvars.iv4312, 8     ; 8 uses
  %i.dsq = getelementptr inbounds nuw i8, ptr %i.dqm, i64 %i.dsp
  %i.dsr = load <8 x i32>, ptr %i.dsq, align 1, !tbaa !9 ; 2 uses
  %i.dss = getelementptr inbounds nuw i8, ptr %i.dqn, i64 %i.dsp
  %i.dst = load <8 x i32>, ptr %i.dss, align 1, !tbaa !9 ; 2 uses
  %i.dsu = getelementptr inbounds nuw i8, ptr %i.dqo, i64 %i.dsp
  %i.dsv = load <8 x i32>, ptr %i.dsu, align 1, !tbaa !9 ; 2 uses
  %i.dsw = getelementptr inbounds nuw i8, ptr %i.dqp, i64 %i.dsp
  %i.dsx = load <8 x i32>, ptr %i.dsw, align 1, !tbaa !9 ; 2 uses
  %i.dsy = getelementptr inbounds nuw i8, ptr %i.dqq, i64 %i.dsp
  %i.dsz = load <8 x i32>, ptr %i.dsy, align 1, !tbaa !9 ; 2 uses
  %i.dta = getelementptr inbounds nuw i8, ptr %i.dqr, i64 %i.dsp
  %i.dtb = load <8 x i32>, ptr %i.dta, align 1, !tbaa !9 ; 2 uses
  %i.dtc = getelementptr inbounds nuw i8, ptr %i.dqs, i64 %i.dsp
  %i.dtd = load <8 x i32>, ptr %i.dtc, align 1, !tbaa !9 ; 2 uses
  %i.dte = getelementptr inbounds nuw i8, ptr %i.dqt, i64 %i.dsp
  %i.dtf = load <8 x i32>, ptr %i.dte, align 1, !tbaa !9 ; 2 uses
  %i.dtg = shufflevector <8 x i32> %i.dsr, <8 x i32> %i.dst, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dth = shufflevector <8 x i32> %i.dsr, <8 x i32> %i.dst, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dti = shufflevector <8 x i32> %i.dsv, <8 x i32> %i.dsx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dtj = shufflevector <8 x i32> %i.dsv, <8 x i32> %i.dsx, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dtk = shufflevector <8 x i32> %i.dsz, <8 x i32> %i.dtb, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dtl = shufflevector <8 x i32> %i.dsz, <8 x i32> %i.dtb, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dtm = shufflevector <8 x i32> %i.dtd, <8 x i32> %i.dtf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.dtn = shufflevector <8 x i32> %i.dtd, <8 x i32> %i.dtf, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.dto = bitcast <8 x i32> %i.dtg to <16 x i16> ; 3 uses
  %i.dtp = lshr <16 x i16> %i.dto, splat (i16 2)
  %i.dtq = bitcast <8 x i32> %i.dth to <16 x i16> ; 3 uses
  %i.dtr = lshr <16 x i16> %i.dtq, splat (i16 2)
  %i.dts = bitcast <8 x i32> %i.dti to <16 x i16> ; 3 uses
  %i.dtt = lshr <16 x i16> %i.dts, splat (i16 2)
  %i.dtu = bitcast <8 x i32> %i.dtj to <16 x i16> ; 3 uses
  %i.dtv = lshr <16 x i16> %i.dtu, splat (i16 2)
  %i.dtw = bitcast <8 x i32> %i.dtk to <16 x i16> ; 3 uses
  %i.dtx = lshr <16 x i16> %i.dtw, splat (i16 2)
  %i.dty = bitcast <8 x i32> %i.dtl to <16 x i16> ; 3 uses
  %i.dtz = lshr <16 x i16> %i.dty, splat (i16 2)
  %i.dua = bitcast <8 x i32> %i.dtm to <16 x i16> ; 3 uses
  %i.dub = lshr <16 x i16> %i.dua, splat (i16 2)
  %i.duc = bitcast <8 x i32> %i.dtn to <16 x i16> ; 3 uses
  %i.dud = lshr <16 x i16> %i.duc, splat (i16 2)
  %i.due = lshr <16 x i16> %i.dto, splat (i16 4)
  %i.duf = lshr <16 x i16> %i.dtq, splat (i16 4)
  %i.dug = lshr <16 x i16> %i.dts, splat (i16 4)
  %i.duh = lshr <16 x i16> %i.dtu, splat (i16 4)
  %i.dui = lshr <16 x i16> %i.dtw, splat (i16 4)
  %i.duj = lshr <16 x i16> %i.dty, splat (i16 4)
  %i.duk = lshr <16 x i16> %i.dua, splat (i16 4)
  %i.dul = lshr <16 x i16> %i.duc, splat (i16 4)
  %i.dum = lshr <16 x i16> %i.dto, splat (i16 6)
  %i.dun = lshr <16 x i16> %i.dtq, splat (i16 6)
  %i.duo = lshr <16 x i16> %i.dts, splat (i16 6)
  %i.dup = lshr <16 x i16> %i.dtu, splat (i16 6)
  %i.duq = lshr <16 x i16> %i.dtw, splat (i16 6)
  %i.dur = lshr <16 x i16> %i.dty, splat (i16 6)
  %i.dus = lshr <16 x i16> %i.dua, splat (i16 6)
  %i.dut = lshr <16 x i16> %i.duc, splat (i16 6)
  %i.duu = and <8 x i32> %i.dtg, splat (i32 50529027) ; 2 uses
  %i.duv = and <8 x i32> %i.dth, splat (i32 50529027) ; 2 uses
  %i.duw = and <8 x i32> %i.dti, splat (i32 50529027) ; 2 uses
  %i.dux = and <8 x i32> %i.dtj, splat (i32 50529027) ; 2 uses
  %i.duy = and <8 x i32> %i.dtk, splat (i32 50529027) ; 2 uses
  %i.duz = and <8 x i32> %i.dtl, splat (i32 50529027) ; 2 uses
  %i.dva = and <8 x i32> %i.dtm, splat (i32 50529027) ; 2 uses
  %i.dvb = and <8 x i32> %i.dtn, splat (i32 50529027) ; 2 uses
  %.inner4629 = and <16 x i16> %i.dtp, splat (i16 771) ; 2 uses
  %.inner4630 = and <16 x i16> %i.dtr, splat (i16 771) ; 2 uses
  %.inner4631 = and <16 x i16> %i.dtt, splat (i16 771) ; 2 uses
  %.inner4632 = and <16 x i16> %i.dtv, splat (i16 771) ; 2 uses
  %.inner4633 = and <16 x i16> %i.dtx, splat (i16 771) ; 2 uses
  %.inner4634 = and <16 x i16> %i.dtz, splat (i16 771) ; 2 uses
  %.inner4635 = and <16 x i16> %i.dub, splat (i16 771) ; 2 uses
  %.inner4636 = and <16 x i16> %i.dud, splat (i16 771) ; 2 uses
  %.inner4637 = and <16 x i16> %i.due, splat (i16 771) ; 2 uses
  %.inner4638 = and <16 x i16> %i.duf, splat (i16 771) ; 2 uses
  %.inner4639 = and <16 x i16> %i.dug, splat (i16 771) ; 2 uses
  %.inner4640 = and <16 x i16> %i.duh, splat (i16 771) ; 2 uses
  %.inner4641 = and <16 x i16> %i.dui, splat (i16 771) ; 2 uses
  %.inner4642 = and <16 x i16> %i.duj, splat (i16 771) ; 2 uses
  %.inner4643 = and <16 x i16> %i.duk, splat (i16 771) ; 2 uses
  %.inner4644 = and <16 x i16> %i.dul, splat (i16 771) ; 2 uses
  %.inner4645 = and <16 x i16> %i.dum, splat (i16 771) ; 2 uses
  %.inner4646 = and <16 x i16> %i.dun, splat (i16 771) ; 2 uses
  %.inner4647 = and <16 x i16> %i.duo, splat (i16 771) ; 2 uses
  %.inner4648 = and <16 x i16> %i.dup, splat (i16 771) ; 2 uses
  %.inner4649 = and <16 x i16> %i.duq, splat (i16 771) ; 2 uses
  %.inner4650 = and <16 x i16> %i.dur, splat (i16 771) ; 2 uses
  %.inner4651 = and <16 x i16> %i.dus, splat (i16 771) ; 2 uses
  %.inner4652 = and <16 x i16> %i.dut, splat (i16 771) ; 2 uses
  %i.dvc = shl nuw nsw i64 %indvars.iv4312, 6     ; 4 uses
  %i.dvd = getelementptr inbounds nuw i8, ptr %i.dqu, i64 %i.dvc
  %i.dve = load <2 x i64>, ptr %i.dvd, align 1, !tbaa !9 ; 2 uses
  %i.dvf = getelementptr inbounds nuw i8, ptr %i.dqv, i64 %i.dvc
  %i.dvg = load <2 x i64>, ptr %i.dvf, align 1, !tbaa !9 ; 2 uses
  %i.dvh = getelementptr inbounds nuw i8, ptr %i.dqw, i64 %i.dvc
  %i.dvi = load <2 x i64>, ptr %i.dvh, align 1, !tbaa !9 ; 2 uses
  %i.dvj = getelementptr inbounds nuw i8, ptr %i.dqx, i64 %i.dvc
  %i.dvk = load <2 x i64>, ptr %i.dvj, align 1, !tbaa !9 ; 2 uses
  %i.dvl = bitcast <2 x i64> %i.dve to <8 x i16>
  %i.dvm = lshr <8 x i16> %i.dvl, splat (i16 4)
  %i.dvn = bitcast <8 x i16> %i.dvm to <16 x i8>
  %i.dvo = and <16 x i8> %i.dvn, splat (i8 15)
  %i.dvp = zext nneg <16 x i8> %i.dvo to <16 x i16> ; 4 uses
  %i.dvq = bitcast <2 x i64> %i.dvg to <8 x i16>
  %i.dvr = lshr <8 x i16> %i.dvq, splat (i16 4)
  %i.dvs = bitcast <8 x i16> %i.dvr to <16 x i8>
  %i.dvt = and <16 x i8> %i.dvs, splat (i8 15)
  %i.dvu = zext nneg <16 x i8> %i.dvt to <16 x i16> ; 4 uses
  %i.dvv = bitcast <2 x i64> %i.dvi to <8 x i16>
  %i.dvw = lshr <8 x i16> %i.dvv, splat (i16 4)
  %i.dvx = bitcast <8 x i16> %i.dvw to <16 x i8>
  %i.dvy = and <16 x i8> %i.dvx, splat (i8 15)
  %i.dvz = zext nneg <16 x i8> %i.dvy to <16 x i16> ; 4 uses
  %i.dwa = bitcast <2 x i64> %i.dvk to <8 x i16>
  %i.dwb = lshr <8 x i16> %i.dwa, splat (i16 4)
  %i.dwc = bitcast <8 x i16> %i.dwb to <16 x i8>
  %i.dwd = and <16 x i8> %i.dwc, splat (i8 15)
  %i.dwe = zext nneg <16 x i8> %i.dwd to <16 x i16> ; 4 uses
  %i.dwf = bitcast <2 x i64> %i.dve to <16 x i8>
  %i.dwg = and <16 x i8> %i.dwf, splat (i8 15)    ; 2 uses
  %i.dwh = shufflevector <16 x i8> %i.dwg, <16 x i8> poison, <16 x i32> <i32 0, i32 0, i32 2, i32 2, i32 4, i32 4, i32 6, i32 6, i32 8, i32 8, i32 10, i32 10, i32 12, i32 12, i32 14, i32 14>
  %i.dwi = zext nneg <16 x i8> %i.dwh to <16 x i16>
  %i.dwj = shufflevector <16 x i8> %i.dwg, <16 x i8> poison, <16 x i32> <i32 1, i32 1, i32 3, i32 3, i32 5, i32 5, i32 7, i32 7, i32 9, i32 9, i32 11, i32 11, i32 13, i32 13, i32 15, i32 15>
  %i.dwk = zext nneg <16 x i8> %i.dwj to <16 x i16>
  %i.dwl = bitcast <2 x i64> %i.dvg to <16 x i8>
  %i.dwm = and <16 x i8> %i.dwl, splat (i8 15)    ; 2 uses
end_hunk_6
