Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/brotli/original/compress_fragment?download=true
inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@BrotliCompressFragmentFastImpl9:bb.a
  %i.adc = sub nsw i64 %i.acd, %i.adb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.add = lshr i64 %i.ada, 3
  %i.ade = getelementptr inbounds nuw i8, ptr %6, i64 %i.add ; 2 uses
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !18, !alias.scope !323
  %i.adg = zext i8 %i.adf to i64
  %i.adh = and i64 %i.ada, 7
  %i.adi = shl nsw i64 %i.adc, %i.adh
  %i.adj = or i64 %i.adi, %i.adg
  store i64 %i.adj, ptr %i.ade, align 1, !noalias !322
  %i.adk = add i64 %i.ada, %i.ach
  store i64 %i.adk, ptr %5, align 8, !tbaa !17, !alias.scope !322
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.acl ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !25
  %i.adn = add i32 %i.adm, 1
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.am:                                            ; preds = %bb.ak
  %i.ado = icmp ult i64 %i.abf, 2118
  br i1 %i.ado, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.adp = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.adq = trunc nuw nsw i64 %i.adp to i32
  %i.adr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adq, i1 true) ; 2 uses
  %i.ads = xor i32 %i.adr, 31
  %i.adt = sub nuw nsw i32 59, %i.adr
  %i.adu = zext nneg i32 %i.adt to i64            ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !18
  %i.adx = zext i8 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.adu
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !29
  %i.aea = zext i16 %i.adz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !325)
  %i.aeb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !324 ; 3 uses
  %i.aec = lshr i64 %i.aeb, 3
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 %i.aec ; 2 uses
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !18, !alias.scope !325
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = and i64 %i.aeb, 7
  %i.aeh = shl nuw nsw i64 %i.aea, %i.aeg
  %i.aei = or i64 %i.aeh, %i.aef
  store i64 %i.aei, ptr %i.aed, align 1, !noalias !324
  %i.aej = add i64 %i.aeb, %i.adx                 ; 4 uses
  store i64 %i.aej, ptr %5, align 8, !tbaa !17, !alias.scope !324
  %i.aek = zext nneg i32 %i.ads to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.aek
  %i.ael = add nsw i64 %.neg.i45, %i.adp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.aem = lshr i64 %i.aej, 3
  %i.aen = getelementptr inbounds nuw i8, ptr %6, i64 %i.aem ; 2 uses
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !18, !alias.scope !327
  %i.aep = zext i8 %i.aeo to i64
  %i.aeq = and i64 %i.aej, 7
  %i.aer = shl nsw i64 %i.ael, %i.aeq
  %i.aes = or i64 %i.aer, %i.aep
  store i64 %i.aes, ptr %i.aen, align 1, !noalias !326
  %i.aet = add i64 %i.aej, %i.aek
  store i64 %i.aet, ptr %5, align 8, !tbaa !17, !alias.scope !326
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adu ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !25
  %i.aew = add i32 %i.aev, 1
  store i32 %i.aew, ptr %i.aeu, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.ao:                                            ; preds = %bb.am
  %i.aex = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.aey = zext i8 %i.aex to i64
  %i.aez = load i16, ptr %i.co, align 2, !tbaa !29
  %i.afa = zext i16 %i.aez to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  %i.afb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !328 ; 3 uses
  %i.afc = lshr i64 %i.afb, 3
  %i.afd = getelementptr inbounds nuw i8, ptr %6, i64 %i.afc ; 2 uses
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !18, !alias.scope !329
  %i.aff = zext i8 %i.afe to i64
  %i.afg = and i64 %i.afb, 7
  %i.afh = shl nuw nsw i64 %i.afa, %i.afg
  %i.afi = or i64 %i.afh, %i.aff
  store i64 %i.afi, ptr %i.afd, align 1, !noalias !328
  %i.afj = add i64 %i.afb, %i.aey                 ; 4 uses
  store i64 %i.afj, ptr %5, align 8, !tbaa !17, !alias.scope !328
  %i.afk = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.afl = lshr i64 %i.afj, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %6, i64 %i.afl ; 2 uses
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !18, !alias.scope !331
  %i.afo = zext i8 %i.afn to i64
  %i.afp = and i64 %i.afj, 7
  %i.afq = shl i64 %i.afk, %i.afp
  %i.afr = or i64 %i.afq, %i.afo
  store i64 %i.afr, ptr %i.afm, align 1, !noalias !330
  %i.afs = add i64 %i.afj, 24
  store i64 %i.afs, ptr %5, align 8, !tbaa !17, !alias.scope !330
  %i.aft = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.afu = add i32 %i.aft, 1
  store i32 %i.afu, ptr %i.cp, align 4, !tbaa !25
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %sext388.i = shl i64 %i.abd, 32
  %i.afv = ashr exact i64 %sext388.i, 32
  %i.afw = add nsw i64 %i.afv, 3                  ; 3 uses
  %i.afx = trunc i64 %i.afw to i32
  %i.afy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afx, i1 true) ; 2 uses
  %i.afz = sub nsw i32 30, %i.afy
  %i.aga = zext i32 %i.afz to i64                 ; 3 uses
  %i.agb = lshr i64 %i.afw, %i.aga
  %i.agc = and i64 %i.agb, 1                      ; 2 uses
  %i.agd = or disjoint i64 %i.agc, 2
  %i.age = shl i64 %i.agd, %i.aga
  %i.agf = shl nuw nsw i32 %i.afy, 1
  %i.agg = sub nsw i32 58, %i.agf
  %i.agh = zext i32 %i.agg to i64
  %i.agi = or disjoint i64 %i.agc, %i.agh
  %i.agj = add nuw nsw i64 %i.agi, 80             ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !18
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.agj
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !29
  %i.agp = zext i16 %i.ago to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.agq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !332 ; 3 uses
  %i.agr = lshr i64 %i.agq, 3
  %i.ags = getelementptr inbounds nuw i8, ptr %6, i64 %i.agr ; 2 uses
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !18, !alias.scope !333
  %i.agu = zext i8 %i.agt to i64
  %i.agv = and i64 %i.agq, 7
  %i.agw = shl nuw nsw i64 %i.agp, %i.agv
  %i.agx = or i64 %i.agw, %i.agu
  store i64 %i.agx, ptr %i.ags, align 1, !noalias !332
  %i.agy = add i64 %i.agq, %i.agm                 ; 4 uses
  store i64 %i.agy, ptr %5, align 8, !tbaa !17, !alias.scope !332
  %i.agz = sub i64 %i.afw, %i.age
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.aha = lshr i64 %i.agy, 3
  %i.ahb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aha ; 2 uses
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !18, !alias.scope !335
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = and i64 %i.agy, 7
  %i.ahf = shl i64 %i.agz, %i.ahe
  %i.ahg = or i64 %i.ahf, %i.ahd
  store i64 %i.ahg, ptr %i.ahb, align 1, !noalias !334
  %i.ahh = add i64 %i.agy, %i.aga
  store i64 %i.ahh, ptr %5, align 8, !tbaa !17, !alias.scope !334
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.agj ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !25
  %i.ahk = add i32 %i.ahj, 1
  store i32 %i.ahk, ptr %i.ahi, align 4, !tbaa !25
  %.not389.i = icmp ult ptr %i.abg, %i.cy
  br i1 %.not389.i, label %bb.ap, label %.thread103, !prof !22

bb.ap:                                            ; preds = %EmitCopyLen.exit
  %i.ahl = getelementptr inbounds i8, ptr %i.abg, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.ahl, align 1 ; 4 uses
  %i.ahm = mul i64 %.0.copyload.i44, 8503243848024064
  %i.ahn = lshr i64 %i.ahm, 55
  %i.aho = lshr i64 %.0.copyload.i44, 24
  %i.ahp = mul i64 %i.aho, 8503243848024064
  %i.ahq = lshr i64 %i.ahp, 55
  %i.ahr = ptrtoint ptr %i.abg to i64
  %i.ahs = sub i64 %i.ahr, %i.ca
  %i.aht = trunc i64 %i.ahs to i32                ; 4 uses
  %i.ahu = add i32 %i.aht, -3
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahn
  store i32 %i.ahu, ptr %i.ahv, align 4, !tbaa !25
  %i.ahw = lshr i64 %.0.copyload.i44, 8
  %i.ahx = mul i64 %i.ahw, 8503243848024064
  %i.ahy = lshr i64 %i.ahx, 55
  %i.ahz = add i32 %i.aht, -2
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahy
  store i32 %i.ahz, ptr %i.aia, align 4, !tbaa !25
  %i.aib = lshr i64 %.0.copyload.i44, 16
  %i.aic = mul i64 %i.aib, 8503243848024064
  %i.aid = lshr i64 %i.aic, 55
  %i.aie = add i32 %i.aht, -1
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aid
  store i32 %i.aie, ptr %i.aif, align 4, !tbaa !25
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahq ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !25
  store i32 %i.aht, ptr %i.aig, align 4, !tbaa !25
  %.pn = sext i32 %i.aih to i64
  %.4332.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.abg, align 1
  %.0.copyload.i48 = load i32, ptr %.4332.i, align 1
  %i.aii = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.aii, label %IsMatch.exit6, label %.thread76.backedge

.thread103:                                       ; preds = %EmitCopyLenLastDistance.exit, %.split, %.split.us, %EmitCopyLen.exit, %.critedge.backedge.us, %.critedge.backedge.us205, %UpdateBits.exit
  %.7.i = phi ptr [ %.1361.i, %.split ], [ %.0360.i, %UpdateBits.exit ], [ %.1361.i, %.split.us ], [ %.1361.i, %.critedge.backedge.us ], [ %.1361.i, %.critedge.backedge.us205 ], [ %i.abg, %EmitCopyLen.exit ], [ %i.gt, %EmitCopyLenLastDistance.exit ] ; 11 uses
  %i.aij = sub i64 %.0318.i, %.0358.i             ; 6 uses
  %i.aik = tail call i64 @llvm.umin.i64(i64 %i.aij, i64 65536) ; 4 uses
  %.not390.i = icmp eq i64 %i.aij, 0
  br i1 %.not390.i, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.thread103
  %i.ail = add i64 %i.aik, %.0357.i               ; 3 uses
  %i.aim = icmp ult i64 %i.ail, 1048577
  br i1 %i.aim, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ait, %.lr.ph.i ], [ 0, %bb.ar ] ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !18
  %i.aip = zext i8 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.aip ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !25
  %i.ais = add i32 %i.air, 1
  store i32 %i.ais, ptr %i.aiq, align 4, !tbaa !25
  %i.ait = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.aiu = icmp samesign ult i64 %i.ait, %i.aik
  br i1 %i.aiu, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aiv = trunc nuw nsw i64 %i.aik to i32
  %.lhs.trunc = add nuw nsw i32 %i.aiv, 42
  %i.aiw = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.aix = icmp ult i64 %i.aij, 10966
  br i1 %i.aix, label %._crit_edge.thread.i, label %bb.as

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.zext
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !31
  %.pre.i = uitofp nneg i32 %i.aiw to double
  br label %FastLog2.exit23.i

bb.as:                                            ; preds = %._crit_edge.i
  %i.aja = uitofp nneg i32 %i.aiw to double       ; 2 uses
  %i.ajb = tail call double @log2(double noundef %i.aja) #11
  br label %FastLog2.exit23.i

FastLog2.exit23.i:                                ; preds = %bb.as, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.aja, %bb.as ]
  %.0.i22.i = phi double [ %i.aiz, %._crit_edge.thread.i ], [ %i.ajb, %bb.as ]
  %i.ajc = fadd double %.0.i22.i, 5.000000e-01
  %i.ajd = tail call double @llvm.fmuladd.f64(double %i.ajc, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.at

bb.at:                                            ; preds = %FastLog2.exit.i, %FastLog2.exit23.i
  %.026.i54 = phi double [ %i.ajd, %FastLog2.exit23.i ], [ %i.ajr, %FastLog2.exit.i ]
  %.125.i55 = phi i64 [ 0, %FastLog2.exit23.i ], [ %i.ajs, %FastLog2.exit.i ] ; 3 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i55
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !25 ; 3 uses
  %i.ajg = uitofp i32 %i.ajf to double            ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i55
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !18
  %i.ajj = uitofp i8 %i.aji to double
  %i.ajk = icmp ult i32 %i.ajf, 256
  br i1 %i.ajk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ajl = zext nneg i32 %i.ajf to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ajl
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !31
  br label %FastLog2.exit.i

bb.av:                                            ; preds = %bb.at
  %i.ajo = tail call double @log2(double noundef %i.ajg) #11
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.av, %bb.au
  %.0.i.i = phi double [ %i.ajn, %bb.au ], [ %i.ajo, %bb.av ]
  %i.ajp = fadd double %.0.i.i, %i.ajj
  %i.ajq = fneg double %i.ajg
  %i.ajr = tail call double @llvm.fmuladd.f64(double %i.ajq, double %i.ajp, double %.026.i54) ; 2 uses
  %i.ajs = add nuw nsw i64 %.125.i55, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ajs, 256
  br i1 %exitcond.not.i, label %ShouldMergeBlock.exit, label %bb.at, !llvm.loop !7

ShouldMergeBlock.exit:                            ; preds = %FastLog2.exit.i
  %i.ajt = fcmp ult double %i.ajr, 0.000000e+00
  br i1 %i.ajt, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %ShouldMergeBlock.exit
  %i.aju = trunc nuw nsw i64 %i.ail to i32
  %i.ajv = add nsw i32 %i.aju, -1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.030.i = phi i64 [ 20, %bb.aw ], [ %i.akp, %bb.ax ] ; 2 uses
  %.02429.i = phi i32 [ %i.ajv, %bb.aw ], [ %i.akq, %bb.ax ] ; 2 uses
  %.02528.i = phi i64 [ %.0356.i.ph, %bb.aw ], [ %i.akr, %bb.ax ] ; 3 uses
  %i.ajw = lshr i64 %.02528.i, 3
  %i.ajx = and i64 %.02528.i, 7                   ; 3 uses
  %i.ajy = sub nuw nsw i64 8, %i.ajx
  %i.ajz = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.ajy) ; 4 uses
  %i.aka = add nuw nsw i64 %i.ajz, %i.ajx
  %i.akb = trunc nuw nsw i64 %i.aka to i32
  %notmask.i = shl nsw i32 -1, %i.akb
  %i.akc = trunc nuw nsw i64 %i.ajx to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.akc
  %i.akd = xor i32 %notmask26.i, -1
  %i.ake = or i32 %notmask.i, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %6, i64 %i.ajw ; 2 uses
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !18
  %i.akh = zext i8 %i.akg to i32
  %i.aki = and i32 %i.ake, %i.akh
  %i.akj = trunc nuw nsw i64 %i.ajz to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.akj
  %i.akk = xor i32 %notmask27.i, -1
  %i.akl = and i32 %.02429.i, %i.akk
  %i.akm = shl nuw nsw i32 %i.akl, %i.akc
  %i.akn = or i32 %i.aki, %i.akm
  %i.ako = trunc i32 %i.akn to i8
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.lcssa625 = phi i64 [ %i.aij, %ShouldMergeBlock.exit ], [ %i.aij, %bb.aq ], [ 0, %.thread103 ] ; 7 uses
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !22

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !29
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !336 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !337
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !336
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !336
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !25
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !29
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !338 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !339
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !338
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !338
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !341
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !340
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !340
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !25
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !29
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !343)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !342 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !343
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !342
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !342
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !345
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !344
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !344
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !25
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !29
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !346 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !347
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !346
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !346
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !349
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !348
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !348
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !350 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

end_hunk_0
begin_hunk_1_@BrotliCompressFragmentFastImpl9:bb.a
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !29
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !354 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !355
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !354
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !354
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !356
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !357
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !25
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !25
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !29
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !358 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !359
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !358
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !358
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !360
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !361
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !25
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !25
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !29
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !363
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !362
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !362
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !29
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !364)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !365
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !364
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !364
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !29
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !351
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !350
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !350
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !29
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !363
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !362
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !362
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %.lcssa625, %bb.ay ], [ %.lcssa625, %EmitInsertLen.exit27 ], [ %.lcssa625, %bb.bj ], [ %.lcssa625, %.epil.preheader643 ], [ %.lcssa625, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %.lcssa625, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %.lcssa625, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !367
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !366
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !366
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !369)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !369
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !368
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !368
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !371
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !370
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !370
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !373)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !373
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !372
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !372
  tail call void @llvm.experimental.noalias.scope.decl(metadata !374)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !375)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !375
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !374
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !374
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !20
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl11(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !568)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !569
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !568
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !568
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !571)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !571
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !570
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !570
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !573
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !572
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !572
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !575
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !574
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !574
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !577
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !576
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !576
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !579
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !578
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !17, !alias.scope !578
  %i.bh = add i64 %.0343.i181, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa179, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa179, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18, !alias.scope !581
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !580
end_hunk_1
begin_hunk_2_@BrotliCompressFragmentFastImpl11:bb.a
  %i.adc = sub nsw i64 %i.acd, %i.adb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.add = lshr i64 %i.ada, 3
  %i.ade = getelementptr inbounds nuw i8, ptr %6, i64 %i.add ; 2 uses
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !18, !alias.scope !643
  %i.adg = zext i8 %i.adf to i64
  %i.adh = and i64 %i.ada, 7
  %i.adi = shl nsw i64 %i.adc, %i.adh
  %i.adj = or i64 %i.adi, %i.adg
  store i64 %i.adj, ptr %i.ade, align 1, !noalias !642
  %i.adk = add i64 %i.ada, %i.ach
  store i64 %i.adk, ptr %5, align 8, !tbaa !17, !alias.scope !642
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.acl ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !25
  %i.adn = add i32 %i.adm, 1
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.am:                                            ; preds = %bb.ak
  %i.ado = icmp ult i64 %i.abf, 2118
  br i1 %i.ado, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.adp = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.adq = trunc nuw nsw i64 %i.adp to i32
  %i.adr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adq, i1 true) ; 2 uses
  %i.ads = xor i32 %i.adr, 31
  %i.adt = sub nuw nsw i32 59, %i.adr
  %i.adu = zext nneg i32 %i.adt to i64            ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !18
  %i.adx = zext i8 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.adu
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !29
  %i.aea = zext i16 %i.adz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.aeb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !644 ; 3 uses
  %i.aec = lshr i64 %i.aeb, 3
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 %i.aec ; 2 uses
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !18, !alias.scope !645
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = and i64 %i.aeb, 7
  %i.aeh = shl nuw nsw i64 %i.aea, %i.aeg
  %i.aei = or i64 %i.aeh, %i.aef
  store i64 %i.aei, ptr %i.aed, align 1, !noalias !644
  %i.aej = add i64 %i.aeb, %i.adx                 ; 4 uses
  store i64 %i.aej, ptr %5, align 8, !tbaa !17, !alias.scope !644
  %i.aek = zext nneg i32 %i.ads to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.aek
  %i.ael = add nsw i64 %.neg.i45, %i.adp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !647)
  %i.aem = lshr i64 %i.aej, 3
  %i.aen = getelementptr inbounds nuw i8, ptr %6, i64 %i.aem ; 2 uses
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !18, !alias.scope !647
  %i.aep = zext i8 %i.aeo to i64
  %i.aeq = and i64 %i.aej, 7
  %i.aer = shl nsw i64 %i.ael, %i.aeq
  %i.aes = or i64 %i.aer, %i.aep
  store i64 %i.aes, ptr %i.aen, align 1, !noalias !646
  %i.aet = add i64 %i.aej, %i.aek
  store i64 %i.aet, ptr %5, align 8, !tbaa !17, !alias.scope !646
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adu ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !25
  %i.aew = add i32 %i.aev, 1
  store i32 %i.aew, ptr %i.aeu, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.ao:                                            ; preds = %bb.am
  %i.aex = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.aey = zext i8 %i.aex to i64
  %i.aez = load i16, ptr %i.co, align 2, !tbaa !29
  %i.afa = zext i16 %i.aez to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.afb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !648 ; 3 uses
  %i.afc = lshr i64 %i.afb, 3
  %i.afd = getelementptr inbounds nuw i8, ptr %6, i64 %i.afc ; 2 uses
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !18, !alias.scope !649
  %i.aff = zext i8 %i.afe to i64
  %i.afg = and i64 %i.afb, 7
  %i.afh = shl nuw nsw i64 %i.afa, %i.afg
  %i.afi = or i64 %i.afh, %i.aff
  store i64 %i.afi, ptr %i.afd, align 1, !noalias !648
  %i.afj = add i64 %i.afb, %i.aey                 ; 4 uses
  store i64 %i.afj, ptr %5, align 8, !tbaa !17, !alias.scope !648
  %i.afk = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !650)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !651)
  %i.afl = lshr i64 %i.afj, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %6, i64 %i.afl ; 2 uses
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !18, !alias.scope !651
  %i.afo = zext i8 %i.afn to i64
  %i.afp = and i64 %i.afj, 7
  %i.afq = shl i64 %i.afk, %i.afp
  %i.afr = or i64 %i.afq, %i.afo
  store i64 %i.afr, ptr %i.afm, align 1, !noalias !650
  %i.afs = add i64 %i.afj, 24
  store i64 %i.afs, ptr %5, align 8, !tbaa !17, !alias.scope !650
  %i.aft = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.afu = add i32 %i.aft, 1
  store i32 %i.afu, ptr %i.cp, align 4, !tbaa !25
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %sext388.i = shl i64 %i.abd, 32
  %i.afv = ashr exact i64 %sext388.i, 32
  %i.afw = add nsw i64 %i.afv, 3                  ; 3 uses
  %i.afx = trunc i64 %i.afw to i32
  %i.afy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afx, i1 true) ; 2 uses
  %i.afz = sub nsw i32 30, %i.afy
  %i.aga = zext i32 %i.afz to i64                 ; 3 uses
  %i.agb = lshr i64 %i.afw, %i.aga
  %i.agc = and i64 %i.agb, 1                      ; 2 uses
  %i.agd = or disjoint i64 %i.agc, 2
  %i.age = shl i64 %i.agd, %i.aga
  %i.agf = shl nuw nsw i32 %i.afy, 1
  %i.agg = sub nsw i32 58, %i.agf
  %i.agh = zext i32 %i.agg to i64
  %i.agi = or disjoint i64 %i.agc, %i.agh
  %i.agj = add nuw nsw i64 %i.agi, 80             ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !18
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.agj
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !29
  %i.agp = zext i16 %i.ago to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.agq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !652 ; 3 uses
  %i.agr = lshr i64 %i.agq, 3
  %i.ags = getelementptr inbounds nuw i8, ptr %6, i64 %i.agr ; 2 uses
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !18, !alias.scope !653
  %i.agu = zext i8 %i.agt to i64
  %i.agv = and i64 %i.agq, 7
  %i.agw = shl nuw nsw i64 %i.agp, %i.agv
  %i.agx = or i64 %i.agw, %i.agu
  store i64 %i.agx, ptr %i.ags, align 1, !noalias !652
  %i.agy = add i64 %i.agq, %i.agm                 ; 4 uses
  store i64 %i.agy, ptr %5, align 8, !tbaa !17, !alias.scope !652
  %i.agz = sub i64 %i.afw, %i.age
  tail call void @llvm.experimental.noalias.scope.decl(metadata !654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %i.aha = lshr i64 %i.agy, 3
  %i.ahb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aha ; 2 uses
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !18, !alias.scope !655
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = and i64 %i.agy, 7
  %i.ahf = shl i64 %i.agz, %i.ahe
  %i.ahg = or i64 %i.ahf, %i.ahd
  store i64 %i.ahg, ptr %i.ahb, align 1, !noalias !654
  %i.ahh = add i64 %i.agy, %i.aga
  store i64 %i.ahh, ptr %5, align 8, !tbaa !17, !alias.scope !654
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.agj ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !25
  %i.ahk = add i32 %i.ahj, 1
  store i32 %i.ahk, ptr %i.ahi, align 4, !tbaa !25
  %.not389.i = icmp ult ptr %i.abg, %i.cy
  br i1 %.not389.i, label %bb.ap, label %.thread103, !prof !22

bb.ap:                                            ; preds = %EmitCopyLen.exit
  %i.ahl = getelementptr inbounds i8, ptr %i.abg, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.ahl, align 1 ; 4 uses
  %i.ahm = mul i64 %.0.copyload.i44, 8503243848024064
  %i.ahn = lshr i64 %i.ahm, 53
  %i.aho = lshr i64 %.0.copyload.i44, 24
  %i.ahp = mul i64 %i.aho, 8503243848024064
  %i.ahq = lshr i64 %i.ahp, 53
  %i.ahr = ptrtoint ptr %i.abg to i64
  %i.ahs = sub i64 %i.ahr, %i.ca
  %i.aht = trunc i64 %i.ahs to i32                ; 4 uses
  %i.ahu = add i32 %i.aht, -3
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahn
  store i32 %i.ahu, ptr %i.ahv, align 4, !tbaa !25
  %i.ahw = lshr i64 %.0.copyload.i44, 8
  %i.ahx = mul i64 %i.ahw, 8503243848024064
  %i.ahy = lshr i64 %i.ahx, 53
  %i.ahz = add i32 %i.aht, -2
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahy
  store i32 %i.ahz, ptr %i.aia, align 4, !tbaa !25
  %i.aib = lshr i64 %.0.copyload.i44, 16
  %i.aic = mul i64 %i.aib, 8503243848024064
  %i.aid = lshr i64 %i.aic, 53
  %i.aie = add i32 %i.aht, -1
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aid
  store i32 %i.aie, ptr %i.aif, align 4, !tbaa !25
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahq ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !25
  store i32 %i.aht, ptr %i.aig, align 4, !tbaa !25
  %.pn = sext i32 %i.aih to i64
  %.4332.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.abg, align 1
  %.0.copyload.i48 = load i32, ptr %.4332.i, align 1
  %i.aii = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.aii, label %IsMatch.exit6, label %.thread76.backedge

.thread103:                                       ; preds = %EmitCopyLenLastDistance.exit, %.split, %.split.us, %EmitCopyLen.exit, %.critedge.backedge.us, %.critedge.backedge.us205, %UpdateBits.exit
  %.7.i = phi ptr [ %.1361.i, %.split ], [ %.0360.i, %UpdateBits.exit ], [ %.1361.i, %.split.us ], [ %.1361.i, %.critedge.backedge.us ], [ %.1361.i, %.critedge.backedge.us205 ], [ %i.abg, %EmitCopyLen.exit ], [ %i.gt, %EmitCopyLenLastDistance.exit ] ; 11 uses
  %i.aij = sub i64 %.0318.i, %.0358.i             ; 6 uses
  %i.aik = tail call i64 @llvm.umin.i64(i64 %i.aij, i64 65536) ; 4 uses
  %.not390.i = icmp eq i64 %i.aij, 0
  br i1 %.not390.i, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.thread103
  %i.ail = add i64 %i.aik, %.0357.i               ; 3 uses
  %i.aim = icmp ult i64 %i.ail, 1048577
  br i1 %i.aim, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ait, %.lr.ph.i ], [ 0, %bb.ar ] ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !18
  %i.aip = zext i8 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.aip ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !25
  %i.ais = add i32 %i.air, 1
  store i32 %i.ais, ptr %i.aiq, align 4, !tbaa !25
  %i.ait = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.aiu = icmp samesign ult i64 %i.ait, %i.aik
  br i1 %i.aiu, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aiv = trunc nuw nsw i64 %i.aik to i32
  %.lhs.trunc = add nuw nsw i32 %i.aiv, 42
  %i.aiw = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.aix = icmp ult i64 %i.aij, 10966
  br i1 %i.aix, label %._crit_edge.thread.i, label %bb.as

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.zext
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !31
  %.pre.i = uitofp nneg i32 %i.aiw to double
  br label %FastLog2.exit23.i

bb.as:                                            ; preds = %._crit_edge.i
  %i.aja = uitofp nneg i32 %i.aiw to double       ; 2 uses
  %i.ajb = tail call double @log2(double noundef %i.aja) #11
  br label %FastLog2.exit23.i

FastLog2.exit23.i:                                ; preds = %bb.as, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.aja, %bb.as ]
  %.0.i22.i = phi double [ %i.aiz, %._crit_edge.thread.i ], [ %i.ajb, %bb.as ]
  %i.ajc = fadd double %.0.i22.i, 5.000000e-01
  %i.ajd = tail call double @llvm.fmuladd.f64(double %i.ajc, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.at

bb.at:                                            ; preds = %FastLog2.exit.i, %FastLog2.exit23.i
  %.026.i54 = phi double [ %i.ajd, %FastLog2.exit23.i ], [ %i.ajr, %FastLog2.exit.i ]
  %.125.i55 = phi i64 [ 0, %FastLog2.exit23.i ], [ %i.ajs, %FastLog2.exit.i ] ; 3 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i55
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !25 ; 3 uses
  %i.ajg = uitofp i32 %i.ajf to double            ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i55
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !18
  %i.ajj = uitofp i8 %i.aji to double
  %i.ajk = icmp ult i32 %i.ajf, 256
  br i1 %i.ajk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ajl = zext nneg i32 %i.ajf to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ajl
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !31
  br label %FastLog2.exit.i

bb.av:                                            ; preds = %bb.at
  %i.ajo = tail call double @log2(double noundef %i.ajg) #11
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.av, %bb.au
  %.0.i.i = phi double [ %i.ajn, %bb.au ], [ %i.ajo, %bb.av ]
  %i.ajp = fadd double %.0.i.i, %i.ajj
  %i.ajq = fneg double %i.ajg
  %i.ajr = tail call double @llvm.fmuladd.f64(double %i.ajq, double %i.ajp, double %.026.i54) ; 2 uses
  %i.ajs = add nuw nsw i64 %.125.i55, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ajs, 256
  br i1 %exitcond.not.i, label %ShouldMergeBlock.exit, label %bb.at, !llvm.loop !7

ShouldMergeBlock.exit:                            ; preds = %FastLog2.exit.i
  %i.ajt = fcmp ult double %i.ajr, 0.000000e+00
  br i1 %i.ajt, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %ShouldMergeBlock.exit
  %i.aju = trunc nuw nsw i64 %i.ail to i32
  %i.ajv = add nsw i32 %i.aju, -1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.030.i = phi i64 [ 20, %bb.aw ], [ %i.akp, %bb.ax ] ; 2 uses
  %.02429.i = phi i32 [ %i.ajv, %bb.aw ], [ %i.akq, %bb.ax ] ; 2 uses
  %.02528.i = phi i64 [ %.0356.i.ph, %bb.aw ], [ %i.akr, %bb.ax ] ; 3 uses
  %i.ajw = lshr i64 %.02528.i, 3
  %i.ajx = and i64 %.02528.i, 7                   ; 3 uses
  %i.ajy = sub nuw nsw i64 8, %i.ajx
  %i.ajz = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.ajy) ; 4 uses
  %i.aka = add nuw nsw i64 %i.ajz, %i.ajx
  %i.akb = trunc nuw nsw i64 %i.aka to i32
  %notmask.i = shl nsw i32 -1, %i.akb
  %i.akc = trunc nuw nsw i64 %i.ajx to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.akc
  %i.akd = xor i32 %notmask26.i, -1
  %i.ake = or i32 %notmask.i, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %6, i64 %i.ajw ; 2 uses
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !18
  %i.akh = zext i8 %i.akg to i32
  %i.aki = and i32 %i.ake, %i.akh
  %i.akj = trunc nuw nsw i64 %i.ajz to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.akj
  %i.akk = xor i32 %notmask27.i, -1
  %i.akl = and i32 %.02429.i, %i.akk
  %i.akm = shl nuw nsw i32 %i.akl, %i.akc
  %i.akn = or i32 %i.aki, %i.akm
  %i.ako = trunc i32 %i.akn to i8
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.lcssa625 = phi i64 [ %i.aij, %ShouldMergeBlock.exit ], [ %i.aij, %bb.aq ], [ 0, %.thread103 ] ; 7 uses
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !22

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !29
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !656 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !657
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !656
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !656
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !25
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !29
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !658 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !659
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !658
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !658
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !661
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !660
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !660
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !25
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !29
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !662 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !663
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !662
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !662
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !665
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !664
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !664
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !25
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !29
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !667)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !666 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !667
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !666
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !666
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !669
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !668
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !668
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !670 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

end_hunk_2
begin_hunk_3_@BrotliCompressFragmentFastImpl11:bb.a
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !29
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !674 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !675
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !674
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !674
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !676
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !677
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !25
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !25
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !29
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !678 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !679
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !678
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !678
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !680
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !681
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !25
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !25
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !29
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !683
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !682
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !682
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !29
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !685
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !684
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !684
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !29
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !671
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !670
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !670
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !29
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !683
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !682
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !682
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %.lcssa625, %bb.ay ], [ %.lcssa625, %EmitInsertLen.exit27 ], [ %.lcssa625, %bb.bj ], [ %.lcssa625, %.epil.preheader643 ], [ %.lcssa625, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %.lcssa625, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %.lcssa625, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !687)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !687
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !686
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !686
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !689
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !688
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !688
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !691
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !690
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !690
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !693
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !692
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !692
  tail call void @llvm.experimental.noalias.scope.decl(metadata !694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !695)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !695
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !694
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !694
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !20
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl13(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !888)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !889
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !888
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !888
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !891)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !891
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !890
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !890
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !893
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !892
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !892
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !895)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !895
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !894
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !894
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !897
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !896
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !896
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !898)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !899
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !898
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !17, !alias.scope !898
  %i.bh = add i64 %.0343.i181, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa179, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa179, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18, !alias.scope !901
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !900
end_hunk_3
begin_hunk_4_@BrotliCompressFragmentFastImpl13:bb.a
  %i.adc = sub nsw i64 %i.acd, %i.adb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.add = lshr i64 %i.ada, 3
  %i.ade = getelementptr inbounds nuw i8, ptr %6, i64 %i.add ; 2 uses
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !18, !alias.scope !963
  %i.adg = zext i8 %i.adf to i64
  %i.adh = and i64 %i.ada, 7
  %i.adi = shl nsw i64 %i.adc, %i.adh
  %i.adj = or i64 %i.adi, %i.adg
  store i64 %i.adj, ptr %i.ade, align 1, !noalias !962
  %i.adk = add i64 %i.ada, %i.ach
  store i64 %i.adk, ptr %5, align 8, !tbaa !17, !alias.scope !962
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.acl ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !25
  %i.adn = add i32 %i.adm, 1
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.am:                                            ; preds = %bb.ak
  %i.ado = icmp ult i64 %i.abf, 2118
  br i1 %i.ado, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.adp = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.adq = trunc nuw nsw i64 %i.adp to i32
  %i.adr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adq, i1 true) ; 2 uses
  %i.ads = xor i32 %i.adr, 31
  %i.adt = sub nuw nsw i32 59, %i.adr
  %i.adu = zext nneg i32 %i.adt to i64            ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !18
  %i.adx = zext i8 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.adu
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !29
  %i.aea = zext i16 %i.adz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.aeb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !964 ; 3 uses
  %i.aec = lshr i64 %i.aeb, 3
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 %i.aec ; 2 uses
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !18, !alias.scope !965
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = and i64 %i.aeb, 7
  %i.aeh = shl nuw nsw i64 %i.aea, %i.aeg
  %i.aei = or i64 %i.aeh, %i.aef
  store i64 %i.aei, ptr %i.aed, align 1, !noalias !964
  %i.aej = add i64 %i.aeb, %i.adx                 ; 4 uses
  store i64 %i.aej, ptr %5, align 8, !tbaa !17, !alias.scope !964
  %i.aek = zext nneg i32 %i.ads to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.aek
  %i.ael = add nsw i64 %.neg.i45, %i.adp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %i.aem = lshr i64 %i.aej, 3
  %i.aen = getelementptr inbounds nuw i8, ptr %6, i64 %i.aem ; 2 uses
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !18, !alias.scope !967
  %i.aep = zext i8 %i.aeo to i64
  %i.aeq = and i64 %i.aej, 7
  %i.aer = shl nsw i64 %i.ael, %i.aeq
  %i.aes = or i64 %i.aer, %i.aep
  store i64 %i.aes, ptr %i.aen, align 1, !noalias !966
  %i.aet = add i64 %i.aej, %i.aek
  store i64 %i.aet, ptr %5, align 8, !tbaa !17, !alias.scope !966
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adu ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !25
  %i.aew = add i32 %i.aev, 1
  store i32 %i.aew, ptr %i.aeu, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.ao:                                            ; preds = %bb.am
  %i.aex = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.aey = zext i8 %i.aex to i64
  %i.aez = load i16, ptr %i.co, align 2, !tbaa !29
  %i.afa = zext i16 %i.aez to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.afb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !968 ; 3 uses
  %i.afc = lshr i64 %i.afb, 3
  %i.afd = getelementptr inbounds nuw i8, ptr %6, i64 %i.afc ; 2 uses
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !18, !alias.scope !969
  %i.aff = zext i8 %i.afe to i64
  %i.afg = and i64 %i.afb, 7
  %i.afh = shl nuw nsw i64 %i.afa, %i.afg
  %i.afi = or i64 %i.afh, %i.aff
  store i64 %i.afi, ptr %i.afd, align 1, !noalias !968
  %i.afj = add i64 %i.afb, %i.aey                 ; 4 uses
  store i64 %i.afj, ptr %5, align 8, !tbaa !17, !alias.scope !968
  %i.afk = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !970)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !971)
  %i.afl = lshr i64 %i.afj, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %6, i64 %i.afl ; 2 uses
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !18, !alias.scope !971
  %i.afo = zext i8 %i.afn to i64
  %i.afp = and i64 %i.afj, 7
  %i.afq = shl i64 %i.afk, %i.afp
  %i.afr = or i64 %i.afq, %i.afo
  store i64 %i.afr, ptr %i.afm, align 1, !noalias !970
  %i.afs = add i64 %i.afj, 24
  store i64 %i.afs, ptr %5, align 8, !tbaa !17, !alias.scope !970
  %i.aft = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.afu = add i32 %i.aft, 1
  store i32 %i.afu, ptr %i.cp, align 4, !tbaa !25
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %sext388.i = shl i64 %i.abd, 32
  %i.afv = ashr exact i64 %sext388.i, 32
  %i.afw = add nsw i64 %i.afv, 3                  ; 3 uses
  %i.afx = trunc i64 %i.afw to i32
  %i.afy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afx, i1 true) ; 2 uses
  %i.afz = sub nsw i32 30, %i.afy
  %i.aga = zext i32 %i.afz to i64                 ; 3 uses
  %i.agb = lshr i64 %i.afw, %i.aga
  %i.agc = and i64 %i.agb, 1                      ; 2 uses
  %i.agd = or disjoint i64 %i.agc, 2
  %i.age = shl i64 %i.agd, %i.aga
  %i.agf = shl nuw nsw i32 %i.afy, 1
  %i.agg = sub nsw i32 58, %i.agf
  %i.agh = zext i32 %i.agg to i64
  %i.agi = or disjoint i64 %i.agc, %i.agh
  %i.agj = add nuw nsw i64 %i.agi, 80             ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !18
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.agj
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !29
  %i.agp = zext i16 %i.ago to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !972)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  %i.agq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !972 ; 3 uses
  %i.agr = lshr i64 %i.agq, 3
  %i.ags = getelementptr inbounds nuw i8, ptr %6, i64 %i.agr ; 2 uses
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !18, !alias.scope !973
  %i.agu = zext i8 %i.agt to i64
  %i.agv = and i64 %i.agq, 7
  %i.agw = shl nuw nsw i64 %i.agp, %i.agv
  %i.agx = or i64 %i.agw, %i.agu
  store i64 %i.agx, ptr %i.ags, align 1, !noalias !972
  %i.agy = add i64 %i.agq, %i.agm                 ; 4 uses
  store i64 %i.agy, ptr %5, align 8, !tbaa !17, !alias.scope !972
  %i.agz = sub i64 %i.afw, %i.age
  tail call void @llvm.experimental.noalias.scope.decl(metadata !974)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  %i.aha = lshr i64 %i.agy, 3
  %i.ahb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aha ; 2 uses
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !18, !alias.scope !975
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = and i64 %i.agy, 7
  %i.ahf = shl i64 %i.agz, %i.ahe
  %i.ahg = or i64 %i.ahf, %i.ahd
  store i64 %i.ahg, ptr %i.ahb, align 1, !noalias !974
  %i.ahh = add i64 %i.agy, %i.aga
  store i64 %i.ahh, ptr %5, align 8, !tbaa !17, !alias.scope !974
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.agj ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !25
  %i.ahk = add i32 %i.ahj, 1
  store i32 %i.ahk, ptr %i.ahi, align 4, !tbaa !25
  %.not389.i = icmp ult ptr %i.abg, %i.cy
  br i1 %.not389.i, label %bb.ap, label %.thread103, !prof !22

bb.ap:                                            ; preds = %EmitCopyLen.exit
  %i.ahl = getelementptr inbounds i8, ptr %i.abg, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.ahl, align 1 ; 4 uses
  %i.ahm = mul i64 %.0.copyload.i44, 8503243848024064
  %i.ahn = lshr i64 %i.ahm, 51
  %i.aho = lshr i64 %.0.copyload.i44, 24
  %i.ahp = mul i64 %i.aho, 8503243848024064
  %i.ahq = lshr i64 %i.ahp, 51
  %i.ahr = ptrtoint ptr %i.abg to i64
  %i.ahs = sub i64 %i.ahr, %i.ca
  %i.aht = trunc i64 %i.ahs to i32                ; 4 uses
  %i.ahu = add i32 %i.aht, -3
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahn
  store i32 %i.ahu, ptr %i.ahv, align 4, !tbaa !25
  %i.ahw = lshr i64 %.0.copyload.i44, 8
  %i.ahx = mul i64 %i.ahw, 8503243848024064
  %i.ahy = lshr i64 %i.ahx, 51
  %i.ahz = add i32 %i.aht, -2
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahy
  store i32 %i.ahz, ptr %i.aia, align 4, !tbaa !25
  %i.aib = lshr i64 %.0.copyload.i44, 16
  %i.aic = mul i64 %i.aib, 8503243848024064
  %i.aid = lshr i64 %i.aic, 51
  %i.aie = add i32 %i.aht, -1
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aid
  store i32 %i.aie, ptr %i.aif, align 4, !tbaa !25
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahq ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !25
  store i32 %i.aht, ptr %i.aig, align 4, !tbaa !25
  %.pn = sext i32 %i.aih to i64
  %.4332.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.abg, align 1
  %.0.copyload.i48 = load i32, ptr %.4332.i, align 1
  %i.aii = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.aii, label %IsMatch.exit6, label %.thread76.backedge

.thread103:                                       ; preds = %EmitCopyLenLastDistance.exit, %.split, %.split.us, %EmitCopyLen.exit, %.critedge.backedge.us, %.critedge.backedge.us205, %UpdateBits.exit
  %.7.i = phi ptr [ %.1361.i, %.split ], [ %.0360.i, %UpdateBits.exit ], [ %.1361.i, %.split.us ], [ %.1361.i, %.critedge.backedge.us ], [ %.1361.i, %.critedge.backedge.us205 ], [ %i.abg, %EmitCopyLen.exit ], [ %i.gt, %EmitCopyLenLastDistance.exit ] ; 11 uses
  %i.aij = sub i64 %.0318.i, %.0358.i             ; 6 uses
  %i.aik = tail call i64 @llvm.umin.i64(i64 %i.aij, i64 65536) ; 4 uses
  %.not390.i = icmp eq i64 %i.aij, 0
  br i1 %.not390.i, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.thread103
  %i.ail = add i64 %i.aik, %.0357.i               ; 3 uses
  %i.aim = icmp ult i64 %i.ail, 1048577
  br i1 %i.aim, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ait, %.lr.ph.i ], [ 0, %bb.ar ] ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !18
  %i.aip = zext i8 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.aip ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !25
  %i.ais = add i32 %i.air, 1
  store i32 %i.ais, ptr %i.aiq, align 4, !tbaa !25
  %i.ait = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.aiu = icmp samesign ult i64 %i.ait, %i.aik
  br i1 %i.aiu, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aiv = trunc nuw nsw i64 %i.aik to i32
  %.lhs.trunc = add nuw nsw i32 %i.aiv, 42
  %i.aiw = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.aix = icmp ult i64 %i.aij, 10966
  br i1 %i.aix, label %._crit_edge.thread.i, label %bb.as

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.zext
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !31
  %.pre.i = uitofp nneg i32 %i.aiw to double
  br label %FastLog2.exit23.i

bb.as:                                            ; preds = %._crit_edge.i
  %i.aja = uitofp nneg i32 %i.aiw to double       ; 2 uses
  %i.ajb = tail call double @log2(double noundef %i.aja) #11
  br label %FastLog2.exit23.i

FastLog2.exit23.i:                                ; preds = %bb.as, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.aja, %bb.as ]
  %.0.i22.i = phi double [ %i.aiz, %._crit_edge.thread.i ], [ %i.ajb, %bb.as ]
  %i.ajc = fadd double %.0.i22.i, 5.000000e-01
  %i.ajd = tail call double @llvm.fmuladd.f64(double %i.ajc, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.at

bb.at:                                            ; preds = %FastLog2.exit.i, %FastLog2.exit23.i
  %.026.i54 = phi double [ %i.ajd, %FastLog2.exit23.i ], [ %i.ajr, %FastLog2.exit.i ]
  %.125.i55 = phi i64 [ 0, %FastLog2.exit23.i ], [ %i.ajs, %FastLog2.exit.i ] ; 3 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i55
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !25 ; 3 uses
  %i.ajg = uitofp i32 %i.ajf to double            ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i55
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !18
  %i.ajj = uitofp i8 %i.aji to double
  %i.ajk = icmp ult i32 %i.ajf, 256
  br i1 %i.ajk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ajl = zext nneg i32 %i.ajf to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ajl
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !31
  br label %FastLog2.exit.i

bb.av:                                            ; preds = %bb.at
  %i.ajo = tail call double @log2(double noundef %i.ajg) #11
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.av, %bb.au
  %.0.i.i = phi double [ %i.ajn, %bb.au ], [ %i.ajo, %bb.av ]
  %i.ajp = fadd double %.0.i.i, %i.ajj
  %i.ajq = fneg double %i.ajg
  %i.ajr = tail call double @llvm.fmuladd.f64(double %i.ajq, double %i.ajp, double %.026.i54) ; 2 uses
  %i.ajs = add nuw nsw i64 %.125.i55, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ajs, 256
  br i1 %exitcond.not.i, label %ShouldMergeBlock.exit, label %bb.at, !llvm.loop !7

ShouldMergeBlock.exit:                            ; preds = %FastLog2.exit.i
  %i.ajt = fcmp ult double %i.ajr, 0.000000e+00
  br i1 %i.ajt, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %ShouldMergeBlock.exit
  %i.aju = trunc nuw nsw i64 %i.ail to i32
  %i.ajv = add nsw i32 %i.aju, -1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.030.i = phi i64 [ 20, %bb.aw ], [ %i.akp, %bb.ax ] ; 2 uses
  %.02429.i = phi i32 [ %i.ajv, %bb.aw ], [ %i.akq, %bb.ax ] ; 2 uses
  %.02528.i = phi i64 [ %.0356.i.ph, %bb.aw ], [ %i.akr, %bb.ax ] ; 3 uses
  %i.ajw = lshr i64 %.02528.i, 3
  %i.ajx = and i64 %.02528.i, 7                   ; 3 uses
  %i.ajy = sub nuw nsw i64 8, %i.ajx
  %i.ajz = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.ajy) ; 4 uses
  %i.aka = add nuw nsw i64 %i.ajz, %i.ajx
  %i.akb = trunc nuw nsw i64 %i.aka to i32
  %notmask.i = shl nsw i32 -1, %i.akb
  %i.akc = trunc nuw nsw i64 %i.ajx to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.akc
  %i.akd = xor i32 %notmask26.i, -1
  %i.ake = or i32 %notmask.i, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %6, i64 %i.ajw ; 2 uses
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !18
  %i.akh = zext i8 %i.akg to i32
  %i.aki = and i32 %i.ake, %i.akh
  %i.akj = trunc nuw nsw i64 %i.ajz to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.akj
  %i.akk = xor i32 %notmask27.i, -1
  %i.akl = and i32 %.02429.i, %i.akk
  %i.akm = shl nuw nsw i32 %i.akl, %i.akc
  %i.akn = or i32 %i.aki, %i.akm
  %i.ako = trunc i32 %i.akn to i8
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.lcssa625 = phi i64 [ %i.aij, %ShouldMergeBlock.exit ], [ %i.aij, %bb.aq ], [ 0, %.thread103 ] ; 7 uses
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !22

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !29
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !976 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !977
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !976
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !976
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !25
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !29
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !979)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !978 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !979
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !978
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !978
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !981)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !981
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !980
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !980
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !25
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !29
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !983)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !982 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !983
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !982
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !982
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !985
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !984
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !984
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !25
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !29
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !986)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !986 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !987
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !986
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !986
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !988)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !989)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !989
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !988
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !988
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !990 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

end_hunk_4
begin_hunk_5_@BrotliCompressFragmentFastImpl13:bb.a
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !29
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !994 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !995
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !994
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !994
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !996
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !997
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !25
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !25
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !29
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !998 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !999
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !998
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !998
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !1000
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !1001
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !25
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !25
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !29
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !1003
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !1002
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !1002
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !29
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !1005
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !1004
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !1004
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !29
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !991)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !991
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !990
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !990
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !29
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !1003
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !1002
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !1002
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %.lcssa625, %bb.ay ], [ %.lcssa625, %EmitInsertLen.exit27 ], [ %.lcssa625, %bb.bj ], [ %.lcssa625, %.epil.preheader643 ], [ %.lcssa625, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %.lcssa625, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %.lcssa625, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !1007
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !1006
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !1006
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !1009
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !1008
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !1008
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !1011
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !1010
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !1010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !1013
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !1012
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !1012
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !1015
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !1014
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !1014
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !20
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @BrotliCompressFragmentFastImpl15(ptr noundef %0, ptr noundef %1, i64 noundef range(i64 1, 0) %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr noundef %5, ptr noundef %6) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 11 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 98304) ; 3 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !17     ; 3 uses
  %i.g = add i64 %i.f, 3                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.h = lshr i64 %i.f, 3
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 %i.h ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !18, !alias.scope !1209
  %i.k = zext i8 %i.j to i64
  store i64 %i.k, ptr %i.i, align 1, !noalias !1208
  %i.l = add i64 %i.f, 1                          ; 3 uses
  store i64 %i.l, ptr %5, align 8, !tbaa !17, !alias.scope !1208
  %i.m = icmp ult i64 %2, 65537
  %.0.i52 = select i1 %i.m, i64 4, i64 5          ; 2 uses
  %i.n = add nsw i64 %.0.i52, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  %i.o = lshr i64 %i.l, 3
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !18, !alias.scope !1211
  %i.r = zext i8 %i.q to i64
  %i.s = and i64 %i.l, 7
  %i.t = shl nuw nsw i64 %i.n, %i.s
  %i.u = or i64 %i.t, %i.r
  store i64 %i.u, ptr %i.p, align 1, !noalias !1210
  store i64 %i.g, ptr %5, align 8, !tbaa !17, !alias.scope !1210
  %i.v = shl nuw nsw i64 %.0.i52, 2
  %i.w = add nsw i64 %i.e, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %i.x = lshr i64 %i.g, 3
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 %i.x ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !18, !alias.scope !1213
  %i.aa = zext i8 %i.z to i64
  %i.ab = and i64 %i.g, 7
  %i.ac = shl nuw nsw i64 %i.w, %i.ab
  %i.ad = or i64 %i.ac, %i.aa
  store i64 %i.ad, ptr %i.y, align 1, !noalias !1212
  %i.ae = add i64 %i.g, %i.v                      ; 4 uses
  store i64 %i.ae, ptr %5, align 8, !tbaa !17, !alias.scope !1212
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.af = lshr i64 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 %i.af ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !alias.scope !1215
  %i.ai = zext i8 %i.ah to i64
  store i64 %i.ai, ptr %i.ag, align 1, !noalias !1214
  %i.aj = add i64 %i.ae, 1                        ; 2 uses
  store i64 %i.aj, ptr %5, align 8, !tbaa !17, !alias.scope !1214
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1217)
  %i.ak = lshr i64 %i.aj, 3
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 %i.ak ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18, !alias.scope !1217
  %i.an = zext i8 %i.am to i64
  store i64 %i.an, ptr %i.al, align 1, !noalias !1216
  %i.ao = add i64 %i.ae, 14
  store i64 %i.ao, ptr %5, align 8, !tbaa !17, !alias.scope !1216
  %i.ap = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %1, i64 noundef %i.e, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2176 ; 4 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 7
  %.pre359 = load i64, ptr %5, align 8, !tbaa !17 ; 2 uses
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1664
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.au = phi i64 [ %.pre359, %.lr.ph ], [ %i.bg, %bb.b ] ; 3 uses
  %.0343.i181 = phi i64 [ 0, %.lr.ph ], [ %i.bh, %bb.b ] ; 2 uses
  %i.av = lshr exact i64 %.0343.i181, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = zext i8 %i.ax to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.az = lshr i64 %i.au, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !18, !alias.scope !1219
  %i.bc = zext i8 %i.bb to i64
  %i.bd = and i64 %i.au, 7
  %i.be = shl nuw nsw i64 %i.ay, %i.bd
  %i.bf = or i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.ba, align 1, !noalias !1218
  %i.bg = add i64 %i.au, 8                        ; 3 uses
  store i64 %i.bg, ptr %5, align 8, !tbaa !17, !alias.scope !1218
  %i.bh = add i64 %.0343.i181, 8                  ; 2 uses
  %i.bi = or disjoint i64 %i.bh, 7
  %i.bj = load i64, ptr %i.aq, align 8, !tbaa !20 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.b, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.bl = phi i64 [ %.pre359, %bb.a ], [ %i.bg, %bb.b ] ; 3 uses
  %.lcssa179 = phi i64 [ %i.ar, %bb.a ], [ %i.bj, %bb.b ] ; 2 uses
  %i.bm = and i64 %.lcssa179, 7
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 3 uses
  %i.bo = lshr i64 %.lcssa179, 3
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.br = zext i8 %i.bq to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.bs = lshr i64 %i.bl, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 %i.bs ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !18, !alias.scope !1221
  %i.bv = zext i8 %i.bu to i64
  %i.bw = and i64 %i.bl, 7
  %i.bx = shl nuw nsw i64 %i.br, %i.bw
  %i.by = or i64 %i.bx, %i.bv
  store i64 %i.by, ptr %i.bt, align 1, !noalias !1220
end_hunk_5
begin_hunk_6_@BrotliCompressFragmentFastImpl15:bb.a
  %i.adc = sub nsw i64 %i.acd, %i.adb
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.add = lshr i64 %i.ada, 3
  %i.ade = getelementptr inbounds nuw i8, ptr %6, i64 %i.add ; 2 uses
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !18, !alias.scope !1283
  %i.adg = zext i8 %i.adf to i64
  %i.adh = and i64 %i.ada, 7
  %i.adi = shl nsw i64 %i.adc, %i.adh
  %i.adj = or i64 %i.adi, %i.adg
  store i64 %i.adj, ptr %i.ade, align 1, !noalias !1282
  %i.adk = add i64 %i.ada, %i.ach
  store i64 %i.adk, ptr %5, align 8, !tbaa !17, !alias.scope !1282
  %i.adl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.acl ; 2 uses
  %i.adm = load i32, ptr %i.adl, align 4, !tbaa !25
  %i.adn = add i32 %i.adm, 1
  store i32 %i.adn, ptr %i.adl, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.am:                                            ; preds = %bb.ak
  %i.ado = icmp ult i64 %i.abf, 2118
  br i1 %i.ado, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.adp = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.adq = trunc nuw nsw i64 %i.adp to i32
  %i.adr = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.adq, i1 true) ; 2 uses
  %i.ads = xor i32 %i.adr, 31
  %i.adt = sub nuw nsw i32 59, %i.adr
  %i.adu = zext nneg i32 %i.adt to i64            ; 3 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.adu
  %i.adw = load i8, ptr %i.adv, align 1, !tbaa !18
  %i.adx = zext i8 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.adu
  %i.adz = load i16, ptr %i.ady, align 2, !tbaa !29
  %i.aea = zext i16 %i.adz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1285)
  %i.aeb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1284 ; 3 uses
  %i.aec = lshr i64 %i.aeb, 3
  %i.aed = getelementptr inbounds nuw i8, ptr %6, i64 %i.aec ; 2 uses
  %i.aee = load i8, ptr %i.aed, align 1, !tbaa !18, !alias.scope !1285
  %i.aef = zext i8 %i.aee to i64
  %i.aeg = and i64 %i.aeb, 7
  %i.aeh = shl nuw nsw i64 %i.aea, %i.aeg
  %i.aei = or i64 %i.aeh, %i.aef
  store i64 %i.aei, ptr %i.aed, align 1, !noalias !1284
  %i.aej = add i64 %i.aeb, %i.adx                 ; 4 uses
  store i64 %i.aej, ptr %5, align 8, !tbaa !17, !alias.scope !1284
  %i.aek = zext nneg i32 %i.ads to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.aek
  %i.ael = add nsw i64 %.neg.i45, %i.adp
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1287)
  %i.aem = lshr i64 %i.aej, 3
  %i.aen = getelementptr inbounds nuw i8, ptr %6, i64 %i.aem ; 2 uses
  %i.aeo = load i8, ptr %i.aen, align 1, !tbaa !18, !alias.scope !1287
  %i.aep = zext i8 %i.aeo to i64
  %i.aeq = and i64 %i.aej, 7
  %i.aer = shl nsw i64 %i.ael, %i.aeq
  %i.aes = or i64 %i.aer, %i.aep
  store i64 %i.aes, ptr %i.aen, align 1, !noalias !1286
  %i.aet = add i64 %i.aej, %i.aek
  store i64 %i.aet, ptr %5, align 8, !tbaa !17, !alias.scope !1286
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adu ; 2 uses
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !25
  %i.aew = add i32 %i.aev, 1
  store i32 %i.aew, ptr %i.aeu, align 4, !tbaa !25
  br label %EmitCopyLen.exit

bb.ao:                                            ; preds = %bb.am
  %i.aex = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.aey = zext i8 %i.aex to i64
  %i.aez = load i16, ptr %i.co, align 2, !tbaa !29
  %i.afa = zext i16 %i.aez to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1289)
  %i.afb = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1288 ; 3 uses
  %i.afc = lshr i64 %i.afb, 3
  %i.afd = getelementptr inbounds nuw i8, ptr %6, i64 %i.afc ; 2 uses
  %i.afe = load i8, ptr %i.afd, align 1, !tbaa !18, !alias.scope !1289
  %i.aff = zext i8 %i.afe to i64
  %i.afg = and i64 %i.afb, 7
  %i.afh = shl nuw nsw i64 %i.afa, %i.afg
  %i.afi = or i64 %i.afh, %i.aff
  store i64 %i.afi, ptr %i.afd, align 1, !noalias !1288
  %i.afj = add i64 %i.afb, %i.aey                 ; 4 uses
  store i64 %i.afj, ptr %5, align 8, !tbaa !17, !alias.scope !1288
  %i.afk = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  %i.afl = lshr i64 %i.afj, 3
  %i.afm = getelementptr inbounds nuw i8, ptr %6, i64 %i.afl ; 2 uses
  %i.afn = load i8, ptr %i.afm, align 1, !tbaa !18, !alias.scope !1291
  %i.afo = zext i8 %i.afn to i64
  %i.afp = and i64 %i.afj, 7
  %i.afq = shl i64 %i.afk, %i.afp
  %i.afr = or i64 %i.afq, %i.afo
  store i64 %i.afr, ptr %i.afm, align 1, !noalias !1290
  %i.afs = add i64 %i.afj, 24
  store i64 %i.afs, ptr %5, align 8, !tbaa !17, !alias.scope !1290
  %i.aft = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.afu = add i32 %i.aft, 1
  store i32 %i.afu, ptr %i.cp, align 4, !tbaa !25
  br label %EmitCopyLen.exit

EmitCopyLen.exit:                                 ; preds = %bb.aj, %bb.al, %bb.an, %bb.ao
  %sext388.i = shl i64 %i.abd, 32
  %i.afv = ashr exact i64 %sext388.i, 32
  %i.afw = add nsw i64 %i.afv, 3                  ; 3 uses
  %i.afx = trunc i64 %i.afw to i32
  %i.afy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.afx, i1 true) ; 2 uses
  %i.afz = sub nsw i32 30, %i.afy
  %i.aga = zext i32 %i.afz to i64                 ; 3 uses
  %i.agb = lshr i64 %i.afw, %i.aga
  %i.agc = and i64 %i.agb, 1                      ; 2 uses
  %i.agd = or disjoint i64 %i.agc, 2
  %i.age = shl i64 %i.agd, %i.aga
  %i.agf = shl nuw nsw i32 %i.afy, 1
  %i.agg = sub nsw i32 58, %i.agf
  %i.agh = zext i32 %i.agg to i64
  %i.agi = or disjoint i64 %i.agc, %i.agh
  %i.agj = add nuw nsw i64 %i.agi, 80             ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !18
  %i.agm = zext i8 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.agj
  %i.ago = load i16, ptr %i.agn, align 2, !tbaa !29
  %i.agp = zext i16 %i.ago to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.agq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1292 ; 3 uses
  %i.agr = lshr i64 %i.agq, 3
  %i.ags = getelementptr inbounds nuw i8, ptr %6, i64 %i.agr ; 2 uses
  %i.agt = load i8, ptr %i.ags, align 1, !tbaa !18, !alias.scope !1293
  %i.agu = zext i8 %i.agt to i64
  %i.agv = and i64 %i.agq, 7
  %i.agw = shl nuw nsw i64 %i.agp, %i.agv
  %i.agx = or i64 %i.agw, %i.agu
  store i64 %i.agx, ptr %i.ags, align 1, !noalias !1292
  %i.agy = add i64 %i.agq, %i.agm                 ; 4 uses
  store i64 %i.agy, ptr %5, align 8, !tbaa !17, !alias.scope !1292
  %i.agz = sub i64 %i.afw, %i.age
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  %i.aha = lshr i64 %i.agy, 3
  %i.ahb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aha ; 2 uses
  %i.ahc = load i8, ptr %i.ahb, align 1, !tbaa !18, !alias.scope !1295
  %i.ahd = zext i8 %i.ahc to i64
  %i.ahe = and i64 %i.agy, 7
  %i.ahf = shl i64 %i.agz, %i.ahe
  %i.ahg = or i64 %i.ahf, %i.ahd
  store i64 %i.ahg, ptr %i.ahb, align 1, !noalias !1294
  %i.ahh = add i64 %i.agy, %i.aga
  store i64 %i.ahh, ptr %5, align 8, !tbaa !17, !alias.scope !1294
  %i.ahi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.agj ; 2 uses
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !25
  %i.ahk = add i32 %i.ahj, 1
  store i32 %i.ahk, ptr %i.ahi, align 4, !tbaa !25
  %.not389.i = icmp ult ptr %i.abg, %i.cy
  br i1 %.not389.i, label %bb.ap, label %.thread103, !prof !22

bb.ap:                                            ; preds = %EmitCopyLen.exit
  %i.ahl = getelementptr inbounds i8, ptr %i.abg, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.ahl, align 1 ; 4 uses
  %i.ahm = mul i64 %.0.copyload.i44, 8503243848024064
  %i.ahn = lshr i64 %i.ahm, 49
  %i.aho = lshr i64 %.0.copyload.i44, 24
  %i.ahp = mul i64 %i.aho, 8503243848024064
  %i.ahq = lshr i64 %i.ahp, 49
  %i.ahr = ptrtoint ptr %i.abg to i64
  %i.ahs = sub i64 %i.ahr, %i.ca
  %i.aht = trunc i64 %i.ahs to i32                ; 4 uses
  %i.ahu = add i32 %i.aht, -3
  %i.ahv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahn
  store i32 %i.ahu, ptr %i.ahv, align 4, !tbaa !25
  %i.ahw = lshr i64 %.0.copyload.i44, 8
  %i.ahx = mul i64 %i.ahw, 8503243848024064
  %i.ahy = lshr i64 %i.ahx, 49
  %i.ahz = add i32 %i.aht, -2
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahy
  store i32 %i.ahz, ptr %i.aia, align 4, !tbaa !25
  %i.aib = lshr i64 %.0.copyload.i44, 16
  %i.aic = mul i64 %i.aib, 8503243848024064
  %i.aid = lshr i64 %i.aic, 49
  %i.aie = add i32 %i.aht, -1
  %i.aif = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aid
  store i32 %i.aie, ptr %i.aif, align 4, !tbaa !25
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ahq ; 2 uses
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !25
  store i32 %i.aht, ptr %i.aig, align 4, !tbaa !25
  %.pn = sext i32 %i.aih to i64
  %.4332.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.abg, align 1
  %.0.copyload.i48 = load i32, ptr %.4332.i, align 1
  %i.aii = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.aii, label %IsMatch.exit6, label %.thread76.backedge

.thread103:                                       ; preds = %EmitCopyLenLastDistance.exit, %.split, %.split.us, %EmitCopyLen.exit, %.critedge.backedge.us, %.critedge.backedge.us205, %UpdateBits.exit
  %.7.i = phi ptr [ %.1361.i, %.split ], [ %.0360.i, %UpdateBits.exit ], [ %.1361.i, %.split.us ], [ %.1361.i, %.critedge.backedge.us ], [ %.1361.i, %.critedge.backedge.us205 ], [ %i.abg, %EmitCopyLen.exit ], [ %i.gt, %EmitCopyLenLastDistance.exit ] ; 11 uses
  %i.aij = sub i64 %.0318.i, %.0358.i             ; 6 uses
  %i.aik = tail call i64 @llvm.umin.i64(i64 %i.aij, i64 65536) ; 4 uses
  %.not390.i = icmp eq i64 %i.aij, 0
  br i1 %.not390.i, label %bb.ay, label %bb.aq

bb.aq:                                            ; preds = %.thread103
  %i.ail = add i64 %i.aik, %.0357.i               ; 3 uses
  %i.aim = icmp ult i64 %i.ail, 1048577
  br i1 %i.aim, label %bb.ar, label %bb.ay

bb.ar:                                            ; preds = %bb.aq
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ar, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ait, %.lr.ph.i ], [ 0, %bb.ar ] ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.aio = load i8, ptr %i.ain, align 1, !tbaa !18
  %i.aip = zext i8 %i.aio to i64
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.aip ; 2 uses
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !25
  %i.ais = add i32 %i.air, 1
  store i32 %i.ais, ptr %i.aiq, align 4, !tbaa !25
  %i.ait = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.aiu = icmp samesign ult i64 %i.ait, %i.aik
  br i1 %i.aiu, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.aiv = trunc nuw nsw i64 %i.aik to i32
  %.lhs.trunc = add nuw nsw i32 %i.aiv, 42
  %i.aiw = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.aix = icmp ult i64 %i.aij, 10966
  br i1 %i.aix, label %._crit_edge.thread.i, label %bb.as

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aiw to i64
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %.zext
  %i.aiz = load double, ptr %i.aiy, align 8, !tbaa !31
  %.pre.i = uitofp nneg i32 %i.aiw to double
  br label %FastLog2.exit23.i

bb.as:                                            ; preds = %._crit_edge.i
  %i.aja = uitofp nneg i32 %i.aiw to double       ; 2 uses
  %i.ajb = tail call double @log2(double noundef %i.aja) #11
  br label %FastLog2.exit23.i

FastLog2.exit23.i:                                ; preds = %bb.as, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.aja, %bb.as ]
  %.0.i22.i = phi double [ %i.aiz, %._crit_edge.thread.i ], [ %i.ajb, %bb.as ]
  %i.ajc = fadd double %.0.i22.i, 5.000000e-01
  %i.ajd = tail call double @llvm.fmuladd.f64(double %i.ajc, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.at

bb.at:                                            ; preds = %FastLog2.exit.i, %FastLog2.exit23.i
  %.026.i54 = phi double [ %i.ajd, %FastLog2.exit23.i ], [ %i.ajr, %FastLog2.exit.i ]
  %.125.i55 = phi i64 [ 0, %FastLog2.exit23.i ], [ %i.ajs, %FastLog2.exit.i ] ; 3 uses
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i55
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !25 ; 3 uses
  %i.ajg = uitofp i32 %i.ajf to double            ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i55
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !18
  %i.ajj = uitofp i8 %i.aji to double
  %i.ajk = icmp ult i32 %i.ajf, 256
  br i1 %i.ajk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ajl = zext nneg i32 %i.ajf to i64
  %i.ajm = getelementptr inbounds nuw [8 x i8], ptr @kBrotliLog2Table, i64 %i.ajl
  %i.ajn = load double, ptr %i.ajm, align 8, !tbaa !31
  br label %FastLog2.exit.i

bb.av:                                            ; preds = %bb.at
  %i.ajo = tail call double @log2(double noundef %i.ajg) #11
  br label %FastLog2.exit.i

FastLog2.exit.i:                                  ; preds = %bb.av, %bb.au
  %.0.i.i = phi double [ %i.ajn, %bb.au ], [ %i.ajo, %bb.av ]
  %i.ajp = fadd double %.0.i.i, %i.ajj
  %i.ajq = fneg double %i.ajg
  %i.ajr = tail call double @llvm.fmuladd.f64(double %i.ajq, double %i.ajp, double %.026.i54) ; 2 uses
  %i.ajs = add nuw nsw i64 %.125.i55, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ajs, 256
  br i1 %exitcond.not.i, label %ShouldMergeBlock.exit, label %bb.at, !llvm.loop !7

ShouldMergeBlock.exit:                            ; preds = %FastLog2.exit.i
  %i.ajt = fcmp ult double %i.ajr, 0.000000e+00
  br i1 %i.ajt, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %ShouldMergeBlock.exit
  %i.aju = trunc nuw nsw i64 %i.ail to i32
  %i.ajv = add nsw i32 %i.aju, -1
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %bb.aw
  %.030.i = phi i64 [ 20, %bb.aw ], [ %i.akp, %bb.ax ] ; 2 uses
  %.02429.i = phi i32 [ %i.ajv, %bb.aw ], [ %i.akq, %bb.ax ] ; 2 uses
  %.02528.i = phi i64 [ %.0356.i.ph, %bb.aw ], [ %i.akr, %bb.ax ] ; 3 uses
  %i.ajw = lshr i64 %.02528.i, 3
  %i.ajx = and i64 %.02528.i, 7                   ; 3 uses
  %i.ajy = sub nuw nsw i64 8, %i.ajx
  %i.ajz = tail call i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.ajy) ; 4 uses
  %i.aka = add nuw nsw i64 %i.ajz, %i.ajx
  %i.akb = trunc nuw nsw i64 %i.aka to i32
  %notmask.i = shl nsw i32 -1, %i.akb
  %i.akc = trunc nuw nsw i64 %i.ajx to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.akc
  %i.akd = xor i32 %notmask26.i, -1
  %i.ake = or i32 %notmask.i, %i.akd
  %i.akf = getelementptr inbounds nuw i8, ptr %6, i64 %i.ajw ; 2 uses
  %i.akg = load i8, ptr %i.akf, align 1, !tbaa !18
  %i.akh = zext i8 %i.akg to i32
  %i.aki = and i32 %i.ake, %i.akh
  %i.akj = trunc nuw nsw i64 %i.ajz to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.akj
  %i.akk = xor i32 %notmask27.i, -1
  %i.akl = and i32 %.02429.i, %i.akk
  %i.akm = shl nuw nsw i32 %i.akl, %i.akc
  %i.akn = or i32 %i.aki, %i.akm
  %i.ako = trunc i32 %i.akn to i8
  store i8 %i.ako, ptr %i.akf, align 1, !tbaa !18
  %i.akp = sub nuw i64 %.030.i, %i.ajz            ; 2 uses
  %i.akq = lshr i32 %.02429.i, %i.akj
  %i.akr = add i64 %i.ajz, %.02528.i
  %.not.i56 = icmp eq i64 %i.akp, 0
  br i1 %.not.i56, label %UpdateBits.exit.loopexit, label %bb.ax, !llvm.loop !1

bb.ay:                                            ; preds = %ShouldMergeBlock.exit, %bb.aq, %.thread103
  %.lcssa625 = phi i64 [ %i.aij, %ShouldMergeBlock.exit ], [ %i.aij, %bb.aq ], [ 0, %.thread103 ] ; 7 uses
  %.0.i.lcssa632633 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa634635 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.aks = icmp ult ptr %.7.i, %i.ct
  br i1 %i.aks, label %bb.az, label %EmitLiterals.exit33

bb.az:                                            ; preds = %bb.ay
  %i.akt = ptrtoint ptr %i.ct to i64
  %i.aku = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.akv = sub i64 %i.akt, %i.aku                 ; 18 uses
  %i.akw = icmp ult i64 %i.akv, 6210
  br i1 %i.akw, label %bb.ba, label %bb.bi, !prof !22

bb.ba:                                            ; preds = %bb.az
  %i.akx = icmp samesign ult i64 %i.akv, 6
  br i1 %i.akx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.aky = or disjoint i64 %i.akv, 40             ; 3 uses
  %i.akz = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aky
  %i.ala = load i8, ptr %i.akz, align 1, !tbaa !18
  %i.alb = zext i8 %i.ala to i64
  %i.alc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aky
  %i.ald = load i16, ptr %i.alc, align 2, !tbaa !29
  %i.ale = zext i16 %i.ald to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.alf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1296 ; 3 uses
  %i.alg = lshr i64 %i.alf, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %6, i64 %i.alg ; 2 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !18, !alias.scope !1297
  %i.alj = zext i8 %i.ali to i64
  %i.alk = and i64 %i.alf, 7
  %i.all = shl nuw nsw i64 %i.ale, %i.alk
  %i.alm = or i64 %i.all, %i.alj
  store i64 %i.alm, ptr %i.alh, align 1, !noalias !1296
  %i.aln = add i64 %i.alf, %i.alb
  store i64 %i.aln, ptr %5, align 8, !tbaa !17, !alias.scope !1296
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aky ; 2 uses
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !25
  %i.alq = add i32 %i.alp, 1
  store i32 %i.alq, ptr %i.alo, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bc:                                            ; preds = %bb.ba
  %i.alr = icmp samesign ult i64 %i.akv, 130
  br i1 %i.alr, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.als = add nsw i64 %i.akv, -2                 ; 3 uses
  %i.alt = trunc nuw nsw i64 %i.als to i32
  %i.alu = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.alt, i1 true)
  %i.alv = sub nuw nsw i32 30, %i.alu             ; 2 uses
  %i.alw = zext nneg i32 %i.alv to i64            ; 3 uses
  %i.alx = lshr i64 %i.als, %i.alw                ; 2 uses
  %i.aly = shl nuw nsw i32 %i.alv, 1
  %narrow280 = add nuw nsw i32 %i.aly, 42
  %i.alz = zext nneg i32 %narrow280 to i64
  %i.ama = add nuw nsw i64 %i.alx, %i.alz         ; 3 uses
  %i.amb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ama
  %i.amc = load i8, ptr %i.amb, align 1, !tbaa !18
  %i.amd = zext i8 %i.amc to i64
  %i.ame = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ama
  %i.amf = load i16, ptr %i.ame, align 2, !tbaa !29
  %i.amg = zext i16 %i.amf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.amh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1298 ; 3 uses
  %i.ami = lshr i64 %i.amh, 3
  %i.amj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ami ; 2 uses
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !18, !alias.scope !1299
  %i.aml = zext i8 %i.amk to i64
  %i.amm = and i64 %i.amh, 7
  %i.amn = shl nuw nsw i64 %i.amg, %i.amm
  %i.amo = or i64 %i.amn, %i.aml
  store i64 %i.amo, ptr %i.amj, align 1, !noalias !1298
  %i.amp = add i64 %i.amh, %i.amd                 ; 4 uses
  store i64 %i.amp, ptr %5, align 8, !tbaa !17, !alias.scope !1298
  %i.amq = shl nuw nsw i64 %i.alx, %i.alw
  %i.amr = sub nsw i64 %i.als, %i.amq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %i.ams = lshr i64 %i.amp, 3
  %i.amt = getelementptr inbounds nuw i8, ptr %6, i64 %i.ams ; 2 uses
  %i.amu = load i8, ptr %i.amt, align 1, !tbaa !18, !alias.scope !1301
  %i.amv = zext i8 %i.amu to i64
  %i.amw = and i64 %i.amp, 7
  %i.amx = shl nsw i64 %i.amr, %i.amw
  %i.amy = or i64 %i.amx, %i.amv
  store i64 %i.amy, ptr %i.amt, align 1, !noalias !1300
  %i.amz = add i64 %i.amp, %i.alw
  store i64 %i.amz, ptr %5, align 8, !tbaa !17, !alias.scope !1300
  %i.ana = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ama ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !tbaa !25
  %i.anc = add i32 %i.anb, 1
  store i32 %i.anc, ptr %i.ana, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.be:                                            ; preds = %bb.bc
  %i.and = icmp samesign ult i64 %i.akv, 2114
  br i1 %i.and, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ane = add nsw i64 %i.akv, -66                ; 2 uses
  %i.anf = trunc nuw nsw i64 %i.ane to i32
  %i.ang = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.anf, i1 true) ; 2 uses
  %i.anh = xor i32 %i.ang, 31
  %i.ani = sub nuw nsw i32 81, %i.ang
  %i.anj = zext nneg i32 %i.ani to i64            ; 3 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anj
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !18
  %i.anm = zext i8 %i.anl to i64
  %i.ann = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anj
  %i.ano = load i16, ptr %i.ann, align 2, !tbaa !29
  %i.anp = zext i16 %i.ano to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  %i.anq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1302 ; 3 uses
  %i.anr = lshr i64 %i.anq, 3
  %i.ans = getelementptr inbounds nuw i8, ptr %6, i64 %i.anr ; 2 uses
  %i.ant = load i8, ptr %i.ans, align 1, !tbaa !18, !alias.scope !1303
  %i.anu = zext i8 %i.ant to i64
  %i.anv = and i64 %i.anq, 7
  %i.anw = shl nuw nsw i64 %i.anp, %i.anv
  %i.anx = or i64 %i.anw, %i.anu
  store i64 %i.anx, ptr %i.ans, align 1, !noalias !1302
  %i.any = add i64 %i.anq, %i.anm                 ; 4 uses
  store i64 %i.any, ptr %5, align 8, !tbaa !17, !alias.scope !1302
  %i.anz = zext nneg i32 %i.anh to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.anz
  %i.aoa = add nsw i64 %.neg.i26, %i.ane
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1305)
  %i.aob = lshr i64 %i.any, 3
  %i.aoc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aob ; 2 uses
  %i.aod = load i8, ptr %i.aoc, align 1, !tbaa !18, !alias.scope !1305
  %i.aoe = zext i8 %i.aod to i64
  %i.aof = and i64 %i.any, 7
  %i.aog = shl nsw i64 %i.aoa, %i.aof
  %i.aoh = or i64 %i.aog, %i.aoe
  store i64 %i.aoh, ptr %i.aoc, align 1, !noalias !1304
  %i.aoi = add i64 %i.any, %i.anz
  store i64 %i.aoi, ptr %5, align 8, !tbaa !17, !alias.scope !1304
  %i.aoj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anj ; 2 uses
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !25
  %i.aol = add i32 %i.aok, 1
  store i32 %i.aol, ptr %i.aoj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

bb.bg:                                            ; preds = %bb.be
  %i.aom = load i8, ptr %i.ch, align 1, !tbaa !18
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = load i16, ptr %i.ci, align 2, !tbaa !29
  %i.aop = zext i16 %i.aoo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.aoq = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1306 ; 3 uses
  %i.aor = lshr i64 %i.aoq, 3
  %i.aos = getelementptr inbounds nuw i8, ptr %6, i64 %i.aor ; 2 uses
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !18, !alias.scope !1307
  %i.aou = zext i8 %i.aot to i64
  %i.aov = and i64 %i.aoq, 7
  %i.aow = shl nuw nsw i64 %i.aop, %i.aov
  %i.aox = or i64 %i.aow, %i.aou
  store i64 %i.aox, ptr %i.aos, align 1, !noalias !1306
  %i.aoy = add i64 %i.aoq, %i.aon                 ; 4 uses
  store i64 %i.aoy, ptr %5, align 8, !tbaa !17, !alias.scope !1306
  %i.aoz = add nsw i64 %i.akv, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  %i.apa = lshr i64 %i.aoy, 3
  %i.apb = getelementptr inbounds nuw i8, ptr %6, i64 %i.apa ; 2 uses
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !18, !alias.scope !1309
  %i.apd = zext i8 %i.apc to i64
  %i.ape = and i64 %i.aoy, 7
  %i.apf = shl nuw nsw i64 %i.aoz, %i.ape
  %i.apg = or i64 %i.apf, %i.apd
  store i64 %i.apg, ptr %i.apb, align 1, !noalias !1308
  %i.aph = add i64 %i.aoy, 12
  store i64 %i.aph, ptr %5, align 8, !tbaa !17, !alias.scope !1308
  %i.api = load i32, ptr %i.cj, align 4, !tbaa !25
  %i.apj = add i32 %i.api, 1
  store i32 %i.apj, ptr %i.cj, align 4, !tbaa !25
  br label %EmitInsertLen.exit27

EmitInsertLen.exit27:                             ; preds = %bb.bb, %bb.bd, %bb.bf, %bb.bg
  %.not281 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not281, label %EmitLiterals.exit33, label %.lr.ph272

.lr.ph272:                                        ; preds = %EmitInsertLen.exit27
  %.promoted273 = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1310 ; 2 uses
  %i.apk = add nsw i64 %.0358.i, -1
  %i.apl = add i64 %i.apk, %.0.i.lcssa632633
  %xtraiter645 = and i64 %i.akv, 1
  %i.apm = icmp eq i64 %i.apl, %.7.i.lcssa634635
  br i1 %i.apm, label %.epil.preheader643, label %.lr.ph272.new

.lr.ph272.new:                                    ; preds = %.lr.ph272
  %unroll_iter650 = and i64 %i.akv, 8190
  br label %bb.bh

end_hunk_6
begin_hunk_7_@BrotliCompressFragmentFastImpl15:bb.a
  %i.arc = icmp ult i64 %i.akv, 22594
  br i1 %i.arc, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ard = load i8, ptr %i.ce, align 2, !tbaa !18
  %i.are = zext i8 %i.ard to i64
  %i.arf = load i16, ptr %i.cf, align 4, !tbaa !29
  %i.arg = zext i16 %i.arf to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.arh = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1314 ; 3 uses
  %i.ari = lshr i64 %i.arh, 3
  %i.arj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ari ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !18, !alias.scope !1315
  %i.arl = zext i8 %i.ark to i64
  %i.arm = and i64 %i.arh, 7
  %i.arn = shl nuw nsw i64 %i.arg, %i.arm
  %i.aro = or i64 %i.arn, %i.arl
  store i64 %i.aro, ptr %i.arj, align 1, !noalias !1314
  %i.arp = add i64 %i.arh, %i.are                 ; 4 uses
  store i64 %i.arp, ptr %5, align 8, !tbaa !17, !alias.scope !1314
  %i.arq = add nsw i64 %i.akv, -6210
  %i.arr = lshr i64 %i.arp, 3
  %i.ars = getelementptr inbounds nuw i8, ptr %6, i64 %i.arr ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !18, !alias.scope !1316
  %i.aru = zext i8 %i.art to i64
  %i.arv = and i64 %i.arp, 7
  %i.arw = shl nuw nsw i64 %i.arq, %i.arv
  %i.arx = or i64 %i.arw, %i.aru
  store i64 %i.arx, ptr %i.ars, align 1, !noalias !1317
  %i.ary = add i64 %i.arp, 14
  %i.arz = load i32, ptr %i.cg, align 8, !tbaa !25
  %i.asa = add i32 %i.arz, 1
  store i32 %i.asa, ptr %i.cg, align 8, !tbaa !25
  br label %EmitLongInsertLen.exit30

bb.bm:                                            ; preds = %bb.bk
  %i.asb = load i8, ptr %i.cb, align 1, !tbaa !18
  %i.asc = zext i8 %i.asb to i64
  %i.asd = load i16, ptr %i.cc, align 2, !tbaa !29
  %i.ase = zext i16 %i.asd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.asf = load i64, ptr %5, align 8, !tbaa !17, !alias.scope !1318 ; 3 uses
  %i.asg = lshr i64 %i.asf, 3
  %i.ash = getelementptr inbounds nuw i8, ptr %6, i64 %i.asg ; 2 uses
  %i.asi = load i8, ptr %i.ash, align 1, !tbaa !18, !alias.scope !1319
  %i.asj = zext i8 %i.asi to i64
  %i.ask = and i64 %i.asf, 7
  %i.asl = shl nuw nsw i64 %i.ase, %i.ask
  %i.asm = or i64 %i.asl, %i.asj
  store i64 %i.asm, ptr %i.ash, align 1, !noalias !1318
  %i.asn = add i64 %i.asf, %i.asc                 ; 4 uses
  store i64 %i.asn, ptr %5, align 8, !tbaa !17, !alias.scope !1318
  %i.aso = add i64 %i.akv, -22594
  %i.asp = lshr i64 %i.asn, 3
  %i.asq = getelementptr inbounds nuw i8, ptr %6, i64 %i.asp ; 2 uses
  %i.asr = load i8, ptr %i.asq, align 1, !tbaa !18, !alias.scope !1320
  %i.ass = zext i8 %i.asr to i64
  %i.ast = and i64 %i.asn, 7
  %i.asu = shl i64 %i.aso, %i.ast
  %i.asv = or i64 %i.asu, %i.ass
  store i64 %i.asv, ptr %i.asq, align 1, !noalias !1321
  %i.asw = add i64 %i.asn, 24
  %i.asx = load i32, ptr %i.cd, align 4, !tbaa !25
  %i.asy = add i32 %i.asx, 1
  store i32 %i.asy, ptr %i.cd, align 4, !tbaa !25
  br label %EmitLongInsertLen.exit30

EmitLongInsertLen.exit30:                         ; preds = %bb.bl, %bb.bm
  %.sink358 = phi i64 [ %i.ary, %bb.bl ], [ %i.asw, %bb.bm ] ; 3 uses
  store i64 %.sink358, ptr %5, align 8, !tbaa !17
  %i.asz = add nsw i64 %.0358.i, -1
  %i.ata = add i64 %i.asz, %.0.i.lcssa632633
  %xtraiter636 = and i64 %i.akv, 1
  %i.atb = icmp eq i64 %i.ata, %.7.i.lcssa634635
  br i1 %i.atb, label %.epil.preheader629, label %EmitLongInsertLen.exit30.new

EmitLongInsertLen.exit30.new:                     ; preds = %EmitLongInsertLen.exit30
  %unroll_iter641 = and i64 %i.akv, -2
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %EmitLongInsertLen.exit30.new
  %.0.i34270 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %i.aum, %bb.bn ] ; 3 uses
  %i.atc = phi i64 [ %.sink358, %EmitLongInsertLen.exit30.new ], [ %i.aul, %bb.bn ] ; 3 uses
  %niter642 = phi i64 [ 0, %EmitLongInsertLen.exit30.new ], [ %niter642.next.1, %bb.bn ]
  %i.atd = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.ate = load i8, ptr %i.atd, align 1, !tbaa !18
  %i.atf = zext i8 %i.ate to i64                  ; 2 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %0, i64 %i.atf
  %i.ath = load i8, ptr %i.atg, align 1, !tbaa !18
  %i.ati = zext i8 %i.ath to i64
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atf
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !29
  %i.atl = zext i16 %i.atk to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.atm = lshr i64 %i.atc, 3
  %i.atn = getelementptr inbounds nuw i8, ptr %6, i64 %i.atm ; 2 uses
  %i.ato = load i8, ptr %i.atn, align 1, !tbaa !18, !alias.scope !1323
  %i.atp = zext i8 %i.ato to i64
  %i.atq = and i64 %i.atc, 7
  %i.atr = shl nuw nsw i64 %i.atl, %i.atq
  %i.ats = or i64 %i.atr, %i.atp
  store i64 %i.ats, ptr %i.atn, align 1, !noalias !1322
  %i.att = add i64 %i.atc, %i.ati                 ; 4 uses
  store i64 %i.att, ptr %5, align 8, !tbaa !17, !alias.scope !1322
  %i.atu = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atu, i64 1
  %i.atw = load i8, ptr %i.atv, align 1, !tbaa !18
  %i.atx = zext i8 %i.atw to i64                  ; 2 uses
  %i.aty = getelementptr inbounds nuw i8, ptr %0, i64 %i.atx
  %i.atz = load i8, ptr %i.aty, align 1, !tbaa !18
  %i.aua = zext i8 %i.atz to i64
  %i.aub = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.atx
  %i.auc = load i16, ptr %i.aub, align 2, !tbaa !29
  %i.aud = zext i16 %i.auc to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1324)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  %i.aue = lshr i64 %i.att, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aue ; 2 uses
  %i.aug = load i8, ptr %i.auf, align 1, !tbaa !18, !alias.scope !1325
  %i.auh = zext i8 %i.aug to i64
  %i.aui = and i64 %i.att, 7
  %i.auj = shl nuw nsw i64 %i.aud, %i.aui
  %i.auk = or i64 %i.auj, %i.auh
  store i64 %i.auk, ptr %i.auf, align 1, !noalias !1324
  %i.aul = add i64 %i.att, %i.aua                 ; 3 uses
  store i64 %i.aul, ptr %5, align 8, !tbaa !17, !alias.scope !1324
  %i.aum = add nuw i64 %.0.i34270, 2              ; 2 uses
  %niter642.next.1 = add i64 %niter642, 2         ; 2 uses
  %niter642.ncmp.1 = icmp eq i64 %niter642.next.1, %unroll_iter641
  br i1 %niter642.ncmp.1, label %EmitLiterals.exit33.loopexit560.unr-lcssa, label %bb.bn, !llvm.loop !5

EmitLiterals.exit33.loopexit.unr-lcssa:           ; preds = %bb.bh
  %lcmp.mod648.not = icmp eq i64 %xtraiter645, 0
  br i1 %lcmp.mod648.not, label %EmitLiterals.exit33, label %.epil.preheader643

.epil.preheader643:                               ; preds = %EmitLiterals.exit33.loopexit.unr-lcssa, %.lr.ph272
  %.epil.init647 = phi i64 [ %.promoted273, %.lr.ph272 ], [ %i.aqw, %EmitLiterals.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32271.epil.init = phi i64 [ 0, %.lr.ph272 ], [ %i.aqx, %EmitLiterals.exit33.loopexit.unr-lcssa ]
  %lcmp.mod649 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.aun = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32271.epil.init
  %i.auo = load i8, ptr %i.aun, align 1, !tbaa !18
  %i.aup = zext i8 %i.auo to i64                  ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %0, i64 %i.aup
  %i.aur = load i8, ptr %i.auq, align 1, !tbaa !18
  %i.aus = zext i8 %i.aur to i64
  %i.aut = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aup
  %i.auu = load i16, ptr %i.aut, align 2, !tbaa !29
  %i.auv = zext i16 %i.auu to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1311)
  %i.auw = lshr i64 %.epil.init647, 3
  %i.aux = getelementptr inbounds nuw i8, ptr %6, i64 %i.auw ; 2 uses
  %i.auy = load i8, ptr %i.aux, align 1, !tbaa !18, !alias.scope !1311
  %i.auz = zext i8 %i.auy to i64
  %i.ava = and i64 %.epil.init647, 7
  %i.avb = shl nuw nsw i64 %i.auv, %i.ava
  %i.avc = or i64 %i.avb, %i.auz
  store i64 %i.avc, ptr %i.aux, align 1, !noalias !1310
  %i.avd = add i64 %.epil.init647, %i.aus
  store i64 %i.avd, ptr %5, align 8, !tbaa !17, !alias.scope !1310
  br label %EmitLiterals.exit33

EmitLiterals.exit33.loopexit560.unr-lcssa:        ; preds = %bb.bn
  %lcmp.mod639.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod639.not, label %EmitLiterals.exit33, label %.epil.preheader629

.epil.preheader629:                               ; preds = %EmitLiterals.exit33.loopexit560.unr-lcssa, %EmitLongInsertLen.exit30
  %.0.i34270.epil.init = phi i64 [ 0, %EmitLongInsertLen.exit30 ], [ %i.aum, %EmitLiterals.exit33.loopexit560.unr-lcssa ]
  %.epil.init638 = phi i64 [ %.sink358, %EmitLongInsertLen.exit30 ], [ %i.aul, %EmitLiterals.exit33.loopexit560.unr-lcssa ] ; 3 uses
  %lcmp.mod640 = trunc i64 %i.akv to i1
  tail call void @llvm.assume(i1 %lcmp.mod640)
  %i.ave = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34270.epil.init
  %i.avf = load i8, ptr %i.ave, align 1, !tbaa !18
  %i.avg = zext i8 %i.avf to i64                  ; 2 uses
  %i.avh = getelementptr inbounds nuw i8, ptr %0, i64 %i.avg
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !18
  %i.avj = zext i8 %i.avi to i64
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avg
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !29
  %i.avm = zext i16 %i.avl to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1323)
  %i.avn = lshr i64 %.epil.init638, 3
  %i.avo = getelementptr inbounds nuw i8, ptr %6, i64 %i.avn ; 2 uses
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !18, !alias.scope !1323
  %i.avq = zext i8 %i.avp to i64
  %i.avr = and i64 %.epil.init638, 7
  %i.avs = shl nuw nsw i64 %i.avm, %i.avr
  %i.avt = or i64 %i.avs, %i.avq
  store i64 %i.avt, ptr %i.avo, align 1, !noalias !1322
  %i.avu = add i64 %.epil.init638, %i.avj
  store i64 %i.avu, ptr %5, align 8, !tbaa !17, !alias.scope !1322
  br label %EmitLiterals.exit33

EmitLiterals.exit33:                              ; preds = %.epil.preheader629, %EmitLiterals.exit33.loopexit560.unr-lcssa, %.epil.preheader643, %EmitLiterals.exit33.loopexit.unr-lcssa, %EmitInsertLen.exit27, %.thread76.thread118, %bb.bj, %bb.ay
  %.8.i = phi ptr [ %.us-phi221, %.thread76.thread118 ], [ %i.ct, %bb.ay ], [ %i.ct, %EmitInsertLen.exit27 ], [ %i.ct, %bb.bj ], [ %i.ct, %.epil.preheader643 ], [ %i.ct, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %i.ct, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %i.ct, %.epil.preheader629 ] ; 2 uses
  %.5323.i = phi i64 [ %i.ln, %.thread76.thread118 ], [ %.lcssa625, %bb.ay ], [ %.lcssa625, %EmitInsertLen.exit27 ], [ %.lcssa625, %bb.bj ], [ %.lcssa625, %.epil.preheader643 ], [ %.lcssa625, %EmitLiterals.exit33.loopexit.unr-lcssa ], [ %.lcssa625, %EmitLiterals.exit33.loopexit560.unr-lcssa ], [ %.lcssa625, %.epil.preheader629 ] ; 4 uses
  %.not393.i = icmp eq i64 %.5323.i, 0
  br i1 %.not393.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %EmitLiterals.exit33
  %i.avv = tail call i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.avw = load i64, ptr %5, align 8, !tbaa !17   ; 3 uses
  %i.avx = add i64 %i.avw, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.avy = lshr i64 %i.avw, 3
  %i.avz = getelementptr inbounds nuw i8, ptr %6, i64 %i.avy ; 2 uses
  %i.awa = load i8, ptr %i.avz, align 1, !tbaa !18, !alias.scope !1327
  %i.awb = zext i8 %i.awa to i64
  store i64 %i.awb, ptr %i.avz, align 1, !noalias !1326
  %i.awc = add i64 %i.avw, 1                      ; 3 uses
  store i64 %i.awc, ptr %5, align 8, !tbaa !17, !alias.scope !1326
  %i.awd = icmp ult i64 %.5323.i, 65537
  %.0.i57 = select i1 %i.awd, i64 4, i64 5        ; 2 uses
  %i.awe = add nsw i64 %.0.i57, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  %i.awf = lshr i64 %i.awc, 3
  %i.awg = getelementptr inbounds nuw i8, ptr %6, i64 %i.awf ; 2 uses
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !18, !alias.scope !1329
  %i.awi = zext i8 %i.awh to i64
  %i.awj = and i64 %i.awc, 7
  %i.awk = shl nuw nsw i64 %i.awe, %i.awj
  %i.awl = or i64 %i.awk, %i.awi
  store i64 %i.awl, ptr %i.awg, align 1, !noalias !1328
  store i64 %i.avx, ptr %5, align 8, !tbaa !17, !alias.scope !1328
  %i.awm = shl nuw nsw i64 %.0.i57, 2
  %i.awn = add nsw i64 %i.avv, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1331)
  %i.awo = lshr i64 %i.avx, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !18, !alias.scope !1331
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %i.avx, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !1330
  %i.awv = add i64 %i.avx, %i.awm                 ; 4 uses
  store i64 %i.awv, ptr %5, align 8, !tbaa !17, !alias.scope !1330
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1333)
  %i.aww = lshr i64 %i.awv, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %6, i64 %i.aww ; 2 uses
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !18, !alias.scope !1333
  %i.awz = zext i8 %i.awy to i64
  store i64 %i.awz, ptr %i.awx, align 1, !noalias !1332
  %i.axa = add i64 %i.awv, 1                      ; 2 uses
  store i64 %i.axa, ptr %5, align 8, !tbaa !17, !alias.scope !1332
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %i.axb = lshr i64 %i.axa, 3
  %i.axc = getelementptr inbounds nuw i8, ptr %6, i64 %i.axb ; 2 uses
  %i.axd = load i8, ptr %i.axc, align 1, !tbaa !18, !alias.scope !1335
  %i.axe = zext i8 %i.axd to i64
  store i64 %i.axe, ptr %i.axc, align 1, !noalias !1334
  %i.axf = add i64 %i.awv, 14
  store i64 %i.axf, ptr %5, align 8, !tbaa !17, !alias.scope !1334
  %i.axg = tail call fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.avv, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %UpdateBits.exit.outer

bb.bp:                                            ; preds = %EmitLiterals.exit33
  %.not394.i = icmp eq i32 %3, 0
  br i1 %.not394.i, label %bb.bq, label %BrotliCompressFragmentFastImpl.exit

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.bn, align 8, !tbaa !18
  store i64 0, ptr %i.aq, align 8, !tbaa !20
  tail call fastcc void @BuildAndStoreCommandPrefixCode(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %BrotliCompressFragmentFastImpl.exit

BrotliCompressFragmentFastImpl.exit:              ; preds = %bb.bp, %bb.bq
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @EmitUncompressedMetaBlock(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3, ptr nofree noundef captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = trunc i64 %2 to i8
  %i.e = and i8 %i.d, 7
  %notmask.i = shl nsw i8 -1, %i.e
  %i.f = xor i8 %notmask.i, -1
  %i.g = lshr i64 %2, 3
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 %i.g ; 4 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18
  %i.j = and i8 %i.i, %i.f
  store i8 %i.j, ptr %i.h, align 1, !tbaa !18
  store i64 %2, ptr %3, align 8, !tbaa !17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.k = load i8, ptr %i.h, align 1, !tbaa !18, !alias.scope !1349
  %i.l = zext i8 %i.k to i64
  store i64 %i.l, ptr %i.h, align 1, !noalias !1348
  %i.m = add i64 %2, 1                            ; 3 uses
  store i64 %i.m, ptr %3, align 8, !tbaa !17, !alias.scope !1348
  %i.n = icmp ult i64 %i.c, 65537
  %i.o = icmp ult i64 %i.c, 1048577
  %spec.select.i = select i1 %i.o, i64 5, i64 6
  %.0.i = select i1 %i.n, i64 4, i64 %spec.select.i ; 2 uses
  %i.p = add nsw i64 %.0.i, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1351)
  %i.q = lshr i64 %i.m, 3
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 %i.q ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18, !alias.scope !1351
  %i.t = zext i8 %i.s to i64
  %i.u = and i64 %i.m, 7
  %i.v = shl nuw nsw i64 %i.p, %i.u
  %i.w = or i64 %i.v, %i.t
  store i64 %i.w, ptr %i.r, align 1, !noalias !1350
  %i.x = add i64 %2, 3                            ; 4 uses
  store i64 %i.x, ptr %3, align 8, !tbaa !17, !alias.scope !1350
  %i.y = shl nuw nsw i64 %.0.i, 2
  %i.z = add i64 %i.c, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1353)
  %i.aa = lshr i64 %i.x, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !18, !alias.scope !1353
  %i.ad = zext i8 %i.ac to i64
  %i.ae = and i64 %i.x, 7
  %i.af = shl i64 %i.z, %i.ae
  %i.ag = or i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.ab, align 1, !noalias !1352
  %i.ah = add i64 %i.y, %i.x                      ; 4 uses
  store i64 %i.ah, ptr %3, align 8, !tbaa !17, !alias.scope !1352
  %i.ai = lshr i64 %i.ah, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 %i.ai ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18, !alias.scope !1354
  %i.al = zext i8 %i.ak to i64
  %i.am = and i64 %i.ah, 7
  %i.an = shl nuw nsw i64 1, %i.am
  %i.ao = or i64 %i.an, %i.al
  store i64 %i.ao, ptr %i.aj, align 1, !noalias !1355
  %i.ap = add i64 %i.ah, 8
  %i.aq = and i64 %i.ap, 4294967288               ; 2 uses
  store i64 %i.aq, ptr %3, align 8, !tbaa !17
  %i.ar = lshr exact i64 %i.aq, 3
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %0, i64 %i.c, i1 false)
  %i.at = shl i64 %i.c, 3
  %i.au = load i64, ptr %3, align 8, !tbaa !17
  %i.av = add i64 %i.au, %i.at                    ; 2 uses
  store i64 %i.av, ptr %3, align 8, !tbaa !17
  %i.aw = lshr i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 %i.aw
  store i8 0, ptr %i.ax, align 1, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc i64 @BuildAndStoreLiteralPrefixCode(ptr noundef initializes((6288, 7312)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6288 ; 12 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  %i.b = icmp ult i64 %2, 32768
  br i1 %i.b, label %.preheader60, label %.preheader62

.preheader60:                                     ; preds = %bb.a
  %.not71 = icmp eq i64 %2, 0
  br i1 %.not71, label %vector.ph86, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader60
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %7 = icmp slt i64 %2, 4
  br i1 %7, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, 32764
  br label %.lr.ph

vector.ph86.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vector.ph86, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %vector.ph86.loopexit.unr-lcssa, %.lr.ph.preheader
  %.05466.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ay, %vector.ph86.loopexit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.05466.epil = phi i64 [ %i.i, %.lr.ph.epil ], [ %.05466.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.05466.epil
  %i.d = load i8, ptr %i.c, align 1, !tbaa !18
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !25
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !25
  %i.i = add nuw nsw i64 %.05466.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %vector.ph86, label %.lr.ph.epil, !llvm.loop !1356

vector.ph86:                                      ; preds = %vector.ph86.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader60
  %i.j = insertelement <2 x i64> <i64 poison, i64 0>, i64 %2, i64 0
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph86
  %index88 = phi i64 [ 0, %vector.ph86 ], [ %index.next93, %vector.body87 ] ; 2 uses
  %vec.phi89 = phi <2 x i64> [ %i.j, %vector.ph86 ], [ %i.u, %vector.body87 ]
  %vec.phi90 = phi <2 x i64> [ zeroinitializer, %vector.ph86 ], [ %i.v, %vector.body87 ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index88 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %wide.load91 = load <2 x i32>, ptr %i.k, align 4, !tbaa !25 ; 2 uses
  %wide.load92 = load <2 x i32>, ptr %i.l, align 4, !tbaa !25 ; 2 uses
  %i.m = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load91, <2 x i32> splat (i32 11))
  %i.n = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load92, <2 x i32> splat (i32 11))
  %i.o = shl nuw nsw <2 x i32> %i.m, splat (i32 1) ; 2 uses
  %i.p = shl nuw nsw <2 x i32> %i.n, splat (i32 1) ; 2 uses
  %i.q = add <2 x i32> %i.o, %wide.load91
  %i.r = add <2 x i32> %i.p, %wide.load92
  store <2 x i32> %i.q, ptr %i.k, align 4, !tbaa !25
  store <2 x i32> %i.r, ptr %i.l, align 4, !tbaa !25
  %i.s = zext nneg <2 x i32> %i.o to <2 x i64>
  %i.t = zext nneg <2 x i32> %i.p to <2 x i64>
  %i.u = add <2 x i64> %vec.phi89, %i.s           ; 2 uses
  %i.v = add <2 x i64> %vec.phi90, %i.t           ; 2 uses
  %index.next93 = add nuw i64 %index88, 4         ; 2 uses
  %i.w = icmp eq i64 %index.next93, 256
  br i1 %i.w, label %.loopexit.loopexit, label %vector.body87, !llvm.loop !1357

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.05466 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ay, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.05466
  %i.y = load i8, ptr %i.x, align 1, !tbaa !18
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !25
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.05466
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !25
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %.05466
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !18
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.aq = add i32 %i.ap, 1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %.05466
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.au ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !25
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !25
  %i.ay = add nuw nsw i64 %.05466, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %vector.ph86.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !1358

.preheader62:                                     ; preds = %bb.a, %.preheader62
  %.25663 = phi i64 [ %i.bf, %.preheader62 ], [ 0, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %.25663
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !18
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !25
  %i.be = add i32 %i.bd, 1
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !25
  %i.bf = add i64 %.25663, 29                     ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %2
  br i1 %i.bg, label %.preheader62, label %vector.ph, !llvm.loop !1359

vector.ph:                                        ; preds = %.preheader62
  %i.bh = add i64 %2, 28
  %i.bi = udiv i64 %i.bh, 29
  %i.bj = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bi, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bj, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi84 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %wide.load = load <2 x i32>, ptr %i.bk, align 4, !tbaa !25 ; 2 uses
  %wide.load85 = load <2 x i32>, ptr %i.bl, align 4, !tbaa !25 ; 2 uses
  %i.bm = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load, <2 x i32> splat (i32 11))
  %i.bn = tail call <2 x i32> @llvm.umin.v2i32(<2 x i32> %wide.load85, <2 x i32> splat (i32 11))
  %i.bo = shl nuw nsw <2 x i32> %i.bm, splat (i32 1)
  %i.bp = shl nuw nsw <2 x i32> %i.bn, splat (i32 1)
  %i.bq = or disjoint <2 x i32> %i.bo, splat (i32 1) ; 2 uses
  %i.br = or disjoint <2 x i32> %i.bp, splat (i32 1) ; 2 uses
  %i.bs = add <2 x i32> %i.bq, %wide.load
  %i.bt = add <2 x i32> %i.br, %wide.load85
  store <2 x i32> %i.bs, ptr %i.bk, align 4, !tbaa !25
  store <2 x i32> %i.bt, ptr %i.bl, align 4, !tbaa !25
  %i.bu = zext nneg <2 x i32> %i.bq to <2 x i64>
  %i.bv = zext nneg <2 x i32> %i.br to <2 x i64>
  %i.bw = add <2 x i64> %vec.phi, %i.bu           ; 2 uses
  %i.bx = add <2 x i64> %vec.phi84, %i.bv         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.by = icmp eq i64 %index.next, 256
  br i1 %i.by, label %.loopexit.loopexit82, label %vector.body, !llvm.loop !1360

.loopexit.loopexit:                               ; preds = %vector.body87
  %bin.rdx95 = add <2 x i64> %i.v, %i.u
  br label %.loopexit

.loopexit.loopexit82:                             ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bx, %i.bw
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit82, %.loopexit.loopexit
  %bin.rdx.sink = phi <2 x i64> [ %bin.rdx, %.loopexit.loopexit82 ], [ %bin.rdx95, %.loopexit.loopexit ]
  %i.bz = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx.sink) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 2184
  tail call void @BrotliBuildAndStoreHuffmanTreeFast(ptr noundef nonnull %i.ca, ptr noundef nonnull %i.a, i64 noundef %i.bz, i64 noundef 8, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #11
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.loopexit
  %.070 = phi i64 [ 0, %.loopexit ], [ %.1.1, %bb.f ] ; 2 uses
  %.469 = phi i64 [ 0, %.loopexit ], [ %i.cs, %bb.f ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.469
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !25 ; 2 uses
  %.not = icmp eq i32 %i.cc, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 %.469
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18
  %i.cf = zext i8 %i.ce to i32
  %i.cg = mul i32 %i.cc, %i.cf
  %i.ch = zext i32 %i.cg to i64
  %i.ci = add i64 %.070, %i.ch
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i64 [ %i.ci, %bb.c ], [ %.070, %bb.b ] ; 2 uses
  %i.cj = or disjoint i64 %.469, 1                ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !25 ; 2 uses
  %.not.1 = icmp eq i32 %i.cl, 0
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %i.cj
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = zext i8 %i.cn to i32
  %i.cp = mul i32 %i.cl, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = add i64 %.1, %i.cq
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i64 [ %i.cr, %bb.e ], [ %.1, %bb.d ] ; 2 uses
  %i.cs = add nuw nsw i64 %.469, 2                ; 2 uses
  %exitcond76.not.1 = icmp eq i64 %i.cs, 256
  br i1 %exitcond76.not.1, label %bb.g, label %bb.b, !llvm.loop !1361

bb.g:                                             ; preds = %bb.f
  %i.ct = mul i64 %.1.1, 125
end_hunk_7
