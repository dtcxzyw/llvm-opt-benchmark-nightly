inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aef = shl nuw nsw i64 %i.adm, %i.adl
  %i.aeg = sub nsw i64 %i.adh, %i.aef
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.aeh = lshr i64 %i.aee, 3
  %i.aei = getelementptr inbounds nuw i8, ptr %6, i64 %i.aeh ; 2 uses
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !9, !alias.scope !239, !noalias !236
  %i.aek = zext i8 %i.aej to i64
  %i.ael = and i64 %i.aee, 7
  %i.aem = shl nsw i64 %i.aeg, %i.ael
  %i.aen = or i64 %i.aem, %i.aek
  store i64 %i.aen, ptr %i.aei, align 1, !noalias !236
  %i.aeo = add i64 %i.aee, %i.adl
  store i64 %i.aeo, ptr %5, align 8, !tbaa !7, !alias.scope !236, !noalias !239
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adp ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !3
  %i.aer = add i32 %i.aeq, 1
  store i32 %i.aer, ptr %i.aep, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aes = icmp ult i64 %i.acj, 2118
  br i1 %i.aes, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aet = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aeu = trunc nuw nsw i64 %i.aet to i32
  %i.aev = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeu, i1 true) ; 2 uses
  %i.aew = xor i32 %i.aev, 31
  %i.aex = sub nuw nsw i32 59, %i.aev
  %i.aey = zext nneg i32 %i.aex to i64            ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !9
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aey
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !83
  %i.afe = zext i16 %i.afd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.aff = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !241, !noalias !244 ; 3 uses
  %i.afg = lshr i64 %i.aff, 3
  %i.afh = getelementptr inbounds nuw i8, ptr %6, i64 %i.afg ; 2 uses
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !9, !alias.scope !244, !noalias !241
  %i.afj = zext i8 %i.afi to i64
  %i.afk = and i64 %i.aff, 7
  %i.afl = shl nuw nsw i64 %i.afe, %i.afk
  %i.afm = or i64 %i.afl, %i.afj
  store i64 %i.afm, ptr %i.afh, align 1, !noalias !241
  %i.afn = add i64 %i.aff, %i.afb                 ; 4 uses
  store i64 %i.afn, ptr %5, align 8, !tbaa !7, !alias.scope !241, !noalias !244
  %i.afo = zext nneg i32 %i.aew to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afo
  %i.afp = add nsw i64 %.neg.i45, %i.aet
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.afq = lshr i64 %i.afn, 3
  %i.afr = getelementptr inbounds nuw i8, ptr %6, i64 %i.afq ; 2 uses
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  %i.aft = zext i8 %i.afs to i64
  %i.afu = and i64 %i.afn, 7
  %i.afv = shl nsw i64 %i.afp, %i.afu
  %i.afw = or i64 %i.afv, %i.aft
  store i64 %i.afw, ptr %i.afr, align 1, !noalias !246
  %i.afx = add i64 %i.afn, %i.afo
  store i64 %i.afx, ptr %5, align 8, !tbaa !7, !alias.scope !246, !noalias !249
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aey ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !3
  %i.aga = add i32 %i.afz, 1
  store i32 %i.aga, ptr %i.afy, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.agb = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.agc = zext i8 %i.agb to i64
  %i.agd = load i16, ptr %i.co, align 2, !tbaa !83
  %i.age = zext i16 %i.agd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.agf = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !251, !noalias !254 ; 3 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = getelementptr inbounds nuw i8, ptr %6, i64 %i.agg ; 2 uses
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !9, !alias.scope !254, !noalias !251
  %i.agj = zext i8 %i.agi to i64
  %i.agk = and i64 %i.agf, 7
  %i.agl = shl nuw nsw i64 %i.age, %i.agk
  %i.agm = or i64 %i.agl, %i.agj
  store i64 %i.agm, ptr %i.agh, align 1, !noalias !251
  %i.agn = add i64 %i.agf, %i.agc                 ; 4 uses
  store i64 %i.agn, ptr %5, align 8, !tbaa !7, !alias.scope !251, !noalias !254
  %i.ago = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.agp = lshr i64 %i.agn, 3
  %i.agq = getelementptr inbounds nuw i8, ptr %6, i64 %i.agp ; 2 uses
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !9, !alias.scope !259, !noalias !256
  %i.ags = zext i8 %i.agr to i64
  %i.agt = and i64 %i.agn, 7
  %i.agu = shl i64 %i.ago, %i.agt
  %i.agv = or i64 %i.agu, %i.ags
  store i64 %i.agv, ptr %i.agq, align 1, !noalias !256
  %i.agw = add i64 %i.agn, 24
  store i64 %i.agw, ptr %5, align 8, !tbaa !7, !alias.scope !256, !noalias !259
  %i.agx = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agy = add i32 %i.agx, 1
  store i32 %i.agy, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ach, 32
  %i.agz = ashr exact i64 %sext391.i, 32
  %i.aha = add nsw i64 %i.agz, 3                  ; 3 uses
  %i.ahb = trunc i64 %i.aha to i32
  %i.ahc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahb, i1 true) ; 2 uses
  %i.ahd = sub nsw i32 30, %i.ahc
  %i.ahe = zext i32 %i.ahd to i64                 ; 3 uses
  %i.ahf = lshr i64 %i.aha, %i.ahe
  %i.ahg = and i64 %i.ahf, 1                      ; 2 uses
  %i.ahh = or disjoint i64 %i.ahg, 2
  %i.ahi = shl i64 %i.ahh, %i.ahe
  %i.ahj = shl nuw nsw i32 %i.ahc, 1
  %i.ahk = sub nsw i32 58, %i.ahj
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = or disjoint i64 %i.ahg, %i.ahl
  %i.ahn = add nuw nsw i64 %i.ahm, 80             ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !9
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahn
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !83
  %i.aht = zext i16 %i.ahs to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ahu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !261, !noalias !264 ; 3 uses
  %i.ahv = lshr i64 %i.ahu, 3
  %i.ahw = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahv ; 2 uses
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !9, !alias.scope !264, !noalias !261
  %i.ahy = zext i8 %i.ahx to i64
  %i.ahz = and i64 %i.ahu, 7
  %i.aia = shl nuw nsw i64 %i.aht, %i.ahz
  %i.aib = or i64 %i.aia, %i.ahy
  store i64 %i.aib, ptr %i.ahw, align 1, !noalias !261
  %i.aic = add i64 %i.ahu, %i.ahq                 ; 4 uses
  store i64 %i.aic, ptr %5, align 8, !tbaa !7, !alias.scope !261, !noalias !264
  %i.aid = sub i64 %i.aha, %i.ahi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.aie = lshr i64 %i.aic, 3
  %i.aif = getelementptr inbounds nuw i8, ptr %6, i64 %i.aie ; 2 uses
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !9, !alias.scope !269, !noalias !266
  %i.aih = zext i8 %i.aig to i64
  %i.aii = and i64 %i.aic, 7
  %i.aij = shl i64 %i.aid, %i.aii
  %i.aik = or i64 %i.aij, %i.aih
  store i64 %i.aik, ptr %i.aif, align 1, !noalias !266
  %i.ail = add i64 %i.aic, %i.ahe
  store i64 %i.ail, ptr %5, align 8, !tbaa !7, !alias.scope !266, !noalias !269
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahn ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !3
  %i.aio = add i32 %i.ain, 1
  store i32 %i.aio, ptr %i.aim, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ack, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aip = getelementptr inbounds i8, ptr %i.ack, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aip, align 1 ; 4 uses
  %i.aiq = mul i64 %.0.copyload.i44, 8503243848024064
  %i.air = lshr i64 %i.aiq, 55
  %i.ais = lshr i64 %.0.copyload.i44, 24
  %i.ait = mul i64 %i.ais, 8503243848024064
  %i.aiu = lshr i64 %i.ait, 55
  %i.aiv = ptrtoint ptr %i.ack to i64
  %i.aiw = sub i64 %i.aiv, %i.ca
  %i.aix = trunc i64 %i.aiw to i32                ; 4 uses
  %i.aiy = add i32 %i.aix, -3
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air
  store i32 %i.aiy, ptr %i.aiz, align 4, !tbaa !3
  %i.aja = lshr i64 %.0.copyload.i44, 8
  %i.ajb = mul i64 %i.aja, 8503243848024064
  %i.ajc = lshr i64 %i.ajb, 55
  %i.ajd = add i32 %i.aix, -2
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajc
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !3
  %i.ajf = lshr i64 %.0.copyload.i44, 16
  %i.ajg = mul i64 %i.ajf, 8503243848024064
  %i.ajh = lshr i64 %i.ajg, 55
  %i.aji = add i32 %i.aix, -1
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajh
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !3
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiu ; 2 uses
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3
  store i32 %i.aix, ptr %i.ajk, align 4, !tbaa !3
  %.pn = sext i32 %i.ajl to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ack, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajm = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajm, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ack, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hx, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajn = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajo = tail call noundef i64 @llvm.umin.i64(i64 %i.ajn, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajn, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajp = add i64 %i.ajo, %.0332.i               ; 3 uses
  %i.ajq = icmp ult i64 %i.ajp, 1048577
  br i1 %i.ajq, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ajx, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !9
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajt ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !3
  %i.ajw = add i32 %i.ajv, 1
  store i32 %i.ajw, ptr %i.aju, align 4, !tbaa !3
  %i.ajx = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajy = icmp samesign ult i64 %i.ajx, %i.ajo
  br i1 %i.ajy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajz = trunc nuw nsw i64 %i.ajo to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajz, 42
  %i.aka = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.akb = icmp ult i64 %i.ajn, 10966
  br i1 %i.akb, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.aka to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.ake = uitofp nneg i32 %i.aka to double       ; 2 uses
  %i.akf = tail call double @log2(double noundef %i.ake) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.ake, %bb.ax ]
  %.0.i22.i = phi double [ %i.akd, %._crit_edge.thread.i ], [ %i.akf, %bb.ax ]
  %i.akg = fadd double %.0.i22.i, 5.000000e-01
  %i.akh = tail call double @llvm.fmuladd.f64(double %i.akg, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.akh, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akv, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akw, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !3 ; 3 uses
  %i.akk = uitofp i32 %i.akj to double            ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !9
  %i.akn = uitofp i8 %i.akm to double
  %i.ako = icmp ult i32 %i.akj, 256
  br i1 %i.ako, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akp = zext nneg i32 %i.akj to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akp
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.aks = tail call double @log2(double noundef %i.akk) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.akr, %bb.az ], [ %i.aks, %bb.ba ]
  %i.akt = fadd double %.0.i.i, %i.akn
  %i.aku = fneg double %i.akk
  %i.akv = tail call double @llvm.fmuladd.f64(double %i.aku, double %i.akt, double %.026.i) ; 2 uses
  %i.akw = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akw, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.akx = fcmp ult double %i.akv, 0.000000e+00
  br i1 %i.akx, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.aky = trunc nuw nsw i64 %i.ajp to i32
  %i.akz = add nsw i32 %i.aky, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alt, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akz, %bb.bb ], [ %i.alu, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.alv, %bb.bc ] ; 3 uses
  %i.ala = lshr i64 %.02528.i, 3
  %i.alb = and i64 %.02528.i, 7                   ; 3 uses
  %i.alc = sub nuw nsw i64 8, %i.alb
  %i.ald = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.alc) ; 4 uses
  %i.ale = add nuw nsw i64 %i.ald, %i.alb
  %i.alf = trunc nuw nsw i64 %i.ale to i32
  %notmask.i = shl nsw i32 -1, %i.alf
  %i.alg = trunc nuw nsw i64 %i.alb to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.alg
  %i.alh = xor i32 %notmask26.i, -1
  %i.ali = or i32 %notmask.i, %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ala ; 2 uses
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !9
  %i.all = zext i8 %i.alk to i32
  %i.alm = and i32 %i.ali, %i.all
  %i.aln = trunc nuw nsw i64 %i.ald to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.aln
  %i.alo = xor i32 %notmask27.i, -1
  %i.alp = and i32 %.02429.i, %i.alo
  %i.alq = shl nuw nsw i32 %i.alp, %i.alg
  %i.alr = or i32 %i.alm, %i.alq
  %i.als = trunc i32 %i.alr to i8
  store i8 %i.als, ptr %i.alj, align 1, !tbaa !9
  %i.alt = sub i64 %.030.i, %i.ald                ; 2 uses
  %i.alu = lshr i32 %.02429.i, %i.aln
  %i.alv = add i64 %i.ald, %.02528.i
  %.not.i54 = icmp eq i64 %i.alt, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alw = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alw, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alx = ptrtoint ptr %i.ct to i64
  %i.aly = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alz = sub i64 %i.alx, %i.aly                 ; 18 uses
  %i.ama = icmp ult i64 %i.alz, 6210
  br i1 %i.ama, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.amb = icmp samesign ult i64 %i.alz, 6
  br i1 %i.amb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.amc = or disjoint i64 %i.alz, 40             ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amc
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !9
  %i.amf = zext i8 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.amc
  %i.amh = load i16, ptr %i.amg, align 2, !tbaa !83
  %i.ami = zext i16 %i.amh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.amj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !275, !noalias !278 ; 3 uses
  %i.amk = lshr i64 %i.amj, 3
  %i.aml = getelementptr inbounds nuw i8, ptr %6, i64 %i.amk ; 2 uses
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !9, !alias.scope !278, !noalias !275
  %i.amn = zext i8 %i.amm to i64
  %i.amo = and i64 %i.amj, 7
  %i.amp = shl nuw nsw i64 %i.ami, %i.amo
  %i.amq = or i64 %i.amp, %i.amn
  store i64 %i.amq, ptr %i.aml, align 1, !noalias !275
  %i.amr = add i64 %i.amj, %i.amf
  store i64 %i.amr, ptr %5, align 8, !tbaa !7, !alias.scope !275, !noalias !278
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.amc ; 2 uses
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !3
  %i.amu = add i32 %i.amt, 1
  store i32 %i.amu, ptr %i.ams, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.amv = icmp samesign ult i64 %i.alz, 130
  br i1 %i.amv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amw = add nsw i64 %i.alz, -2                 ; 3 uses
  %i.amx = trunc nuw nsw i64 %i.amw to i32
  %i.amy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amx, i1 true)
  %i.amz = sub nuw nsw i32 30, %i.amy             ; 2 uses
  %i.ana = zext nneg i32 %i.amz to i64            ; 3 uses
  %i.anb = lshr i64 %i.amw, %i.ana                ; 2 uses
  %i.anc = shl nuw nsw i32 %i.amz, 1
  %narrow281 = add nuw nsw i32 %i.anc, 42
  %i.and = zext nneg i32 %narrow281 to i64
  %i.ane = add nuw nsw i64 %i.anb, %i.and         ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !9
  %i.anh = zext i8 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ane
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !83
  %i.ank = zext i16 %i.anj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.anl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !280, !noalias !283 ; 3 uses
  %i.anm = lshr i64 %i.anl, 3
  %i.ann = getelementptr inbounds nuw i8, ptr %6, i64 %i.anm ; 2 uses
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !9, !alias.scope !283, !noalias !280
  %i.anp = zext i8 %i.ano to i64
  %i.anq = and i64 %i.anl, 7
  %i.anr = shl nuw nsw i64 %i.ank, %i.anq
  %i.ans = or i64 %i.anr, %i.anp
  store i64 %i.ans, ptr %i.ann, align 1, !noalias !280
  %i.ant = add i64 %i.anl, %i.anh                 ; 4 uses
  store i64 %i.ant, ptr %5, align 8, !tbaa !7, !alias.scope !280, !noalias !283
  %i.anu = shl nuw nsw i64 %i.anb, %i.ana
  %i.anv = sub nsw i64 %i.amw, %i.anu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.anw = lshr i64 %i.ant, 3
  %i.anx = getelementptr inbounds nuw i8, ptr %6, i64 %i.anw ; 2 uses
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !9, !alias.scope !288, !noalias !285
  %i.anz = zext i8 %i.any to i64
  %i.aoa = and i64 %i.ant, 7
  %i.aob = shl nsw i64 %i.anv, %i.aoa
  %i.aoc = or i64 %i.aob, %i.anz
  store i64 %i.aoc, ptr %i.anx, align 1, !noalias !285
  %i.aod = add i64 %i.ant, %i.ana
  store i64 %i.aod, ptr %5, align 8, !tbaa !7, !alias.scope !285, !noalias !288
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ane ; 2 uses
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !3
  %i.aog = add i32 %i.aof, 1
  store i32 %i.aog, ptr %i.aoe, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoh = icmp samesign ult i64 %i.alz, 2114
  br i1 %i.aoh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aoi = add nsw i64 %i.alz, -66                ; 2 uses
  %i.aoj = trunc nuw nsw i64 %i.aoi to i32
  %i.aok = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aoj, i1 true) ; 2 uses
  %i.aol = xor i32 %i.aok, 31
  %i.aom = sub nuw nsw i32 81, %i.aok
  %i.aon = zext nneg i32 %i.aom to i64            ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !9
  %i.aoq = zext i8 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aon
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !83
  %i.aot = zext i16 %i.aos to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.aou = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !290, !noalias !293 ; 3 uses
  %i.aov = lshr i64 %i.aou, 3
  %i.aow = getelementptr inbounds nuw i8, ptr %6, i64 %i.aov ; 2 uses
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !9, !alias.scope !293, !noalias !290
  %i.aoy = zext i8 %i.aox to i64
  %i.aoz = and i64 %i.aou, 7
  %i.apa = shl nuw nsw i64 %i.aot, %i.aoz
  %i.apb = or i64 %i.apa, %i.aoy
  store i64 %i.apb, ptr %i.aow, align 1, !noalias !290
  %i.apc = add i64 %i.aou, %i.aoq                 ; 4 uses
  store i64 %i.apc, ptr %5, align 8, !tbaa !7, !alias.scope !290, !noalias !293
  %i.apd = zext nneg i32 %i.aol to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apd
  %i.ape = add nsw i64 %.neg.i26, %i.aoi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.apf = lshr i64 %i.apc, 3
  %i.apg = getelementptr inbounds nuw i8, ptr %6, i64 %i.apf ; 2 uses
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !9, !alias.scope !298, !noalias !295
  %i.api = zext i8 %i.aph to i64
  %i.apj = and i64 %i.apc, 7
  %i.apk = shl nsw i64 %i.ape, %i.apj
  %i.apl = or i64 %i.apk, %i.api
  store i64 %i.apl, ptr %i.apg, align 1, !noalias !295
  %i.apm = add i64 %i.apc, %i.apd
  store i64 %i.apm, ptr %5, align 8, !tbaa !7, !alias.scope !295, !noalias !298
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aon ; 2 uses
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !3
  %i.app = add i32 %i.apo, 1
  store i32 %i.app, ptr %i.apn, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apq = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apr = zext i8 %i.apq to i64
  %i.aps = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apt = zext i16 %i.aps to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.apu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !300, !noalias !303 ; 3 uses
  %i.apv = lshr i64 %i.apu, 3
  %i.apw = getelementptr inbounds nuw i8, ptr %6, i64 %i.apv ; 2 uses
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !9, !alias.scope !303, !noalias !300
  %i.apy = zext i8 %i.apx to i64
  %i.apz = and i64 %i.apu, 7
  %i.aqa = shl nuw nsw i64 %i.apt, %i.apz
  %i.aqb = or i64 %i.aqa, %i.apy
  store i64 %i.aqb, ptr %i.apw, align 1, !noalias !300
  %i.aqc = add i64 %i.apu, %i.apr                 ; 4 uses
  store i64 %i.aqc, ptr %5, align 8, !tbaa !7, !alias.scope !300, !noalias !303
  %i.aqd = add nsw i64 %i.alz, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.aqe = lshr i64 %i.aqc, 3
  %i.aqf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqe ; 2 uses
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !9, !alias.scope !308, !noalias !305
  %i.aqh = zext i8 %i.aqg to i64
  %i.aqi = and i64 %i.aqc, 7
  %i.aqj = shl nuw nsw i64 %i.aqd, %i.aqi
  %i.aqk = or i64 %i.aqj, %i.aqh
  store i64 %i.aqk, ptr %i.aqf, align 1, !noalias !305
  %i.aql = add i64 %i.aqc, 12
  store i64 %i.aql, ptr %5, align 8, !tbaa !7, !alias.scope !305, !noalias !308
  %i.aqm = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqn = add i32 %i.aqm, 1
  store i32 %i.aqn, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !310, !noalias !313 ; 2 uses
  %i.aqo = add nsw i64 %.0331.i, -1
  %i.aqp = add i64 %i.aqo, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alz, 1
  %i.aqq = icmp eq i64 %i.aqp, %.7.i.lcssa635636
  br i1 %i.aqq, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alz, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqr = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.asa, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.asb, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqs = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64                  ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !9
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqu
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !83
  %i.ara = zext i16 %i.aqz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.arb = lshr i64 %i.aqr, 3
  %i.arc = getelementptr inbounds nuw i8, ptr %6, i64 %i.arb ; 2 uses
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !9, !alias.scope !313, !noalias !310
  %i.are = zext i8 %i.ard to i64
  %i.arf = and i64 %i.aqr, 7
  %i.arg = shl nuw nsw i64 %i.ara, %i.arf
  %i.arh = or i64 %i.arg, %i.are
  store i64 %i.arh, ptr %i.arc, align 1, !noalias !310
  %i.ari = add i64 %i.aqr, %i.aqx                 ; 4 uses
  store i64 %i.ari, ptr %5, align 8, !tbaa !7, !alias.scope !310, !noalias !313
  %i.arj = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64                  ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !9
  %i.arp = zext i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arm
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !83
  %i.ars = zext i16 %i.arr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.art = lshr i64 %i.ari, 3
  %i.aru = getelementptr inbounds nuw i8, ptr %6, i64 %i.art ; 2 uses
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !9, !alias.scope !317, !noalias !315
  %i.arw = zext i8 %i.arv to i64
  %i.arx = and i64 %i.ari, 7
  %i.ary = shl nuw nsw i64 %i.ars, %i.arx
  %i.arz = or i64 %i.ary, %i.arw
  store i64 %i.arz, ptr %i.aru, align 1, !noalias !315
  %i.asa = add i64 %i.ari, %i.arp                 ; 3 uses
  store i64 %i.asa, ptr %5, align 8, !tbaa !7, !alias.scope !315, !noalias !317
  %i.asb = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.asc = sub i64 %i.aly, %i.cr
  %i.asd = mul i64 %i.asc, 50
  %i.ase = icmp ugt i64 %i.asd, %i.alz
  %narrow.not130 = or i1 %i.cs, %i.ase
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asf = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asf, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asg = icmp ult i64 %i.alz, 22594
  br i1 %i.asg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ash = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asi = zext i8 %i.ash to i64
  %i.asj = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ask = zext i16 %i.asj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.asl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !319, !noalias !322 ; 3 uses
  %i.asm = lshr i64 %i.asl, 3
  %i.asn = getelementptr inbounds nuw i8, ptr %6, i64 %i.asm ; 2 uses
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !9, !alias.scope !322, !noalias !319
  %i.asp = zext i8 %i.aso to i64
  %i.asq = and i64 %i.asl, 7
  %i.asr = shl nuw nsw i64 %i.ask, %i.asq
  %i.ass = or i64 %i.asr, %i.asp
  store i64 %i.ass, ptr %i.asn, align 1, !noalias !319
  %i.ast = add i64 %i.asl, %i.asi                 ; 4 uses
  store i64 %i.ast, ptr %5, align 8, !tbaa !7, !alias.scope !319, !noalias !322
  %i.asu = add nsw i64 %i.alz, -6210
  %i.asv = lshr i64 %i.ast, 3
  %i.asw = getelementptr inbounds nuw i8, ptr %6, i64 %i.asv ; 2 uses
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !9, !alias.scope !324, !noalias !327
  %i.asy = zext i8 %i.asx to i64
  %i.asz = and i64 %i.ast, 7
  %i.ata = shl nuw nsw i64 %i.asu, %i.asz
  %i.atb = or i64 %i.ata, %i.asy
  store i64 %i.atb, ptr %i.asw, align 1, !noalias !327
  %i.atc = add i64 %i.ast, 14
  %i.atd = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ate = add i32 %i.atd, 1
  store i32 %i.ate, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atf = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atg = zext i8 %i.atf to i64
  %i.ath = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.ati = zext i16 %i.ath to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.atj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !329, !noalias !332 ; 3 uses
  %i.atk = lshr i64 %i.atj, 3
  %i.atl = getelementptr inbounds nuw i8, ptr %6, i64 %i.atk ; 2 uses
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !9, !alias.scope !332, !noalias !329
  %i.atn = zext i8 %i.atm to i64
  %i.ato = and i64 %i.atj, 7
  %i.atp = shl nuw nsw i64 %i.ati, %i.ato
  %i.atq = or i64 %i.atp, %i.atn
  store i64 %i.atq, ptr %i.atl, align 1, !noalias !329
  %i.atr = add i64 %i.atj, %i.atg                 ; 4 uses
  store i64 %i.atr, ptr %5, align 8, !tbaa !7, !alias.scope !329, !noalias !332
  %i.ats = add i64 %i.alz, -22594
  %i.att = lshr i64 %i.atr, 3
  %i.atu = getelementptr inbounds nuw i8, ptr %6, i64 %i.att ; 2 uses
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !9, !alias.scope !334, !noalias !337
  %i.atw = zext i8 %i.atv to i64
  %i.atx = and i64 %i.atr, 7
  %i.aty = shl i64 %i.ats, %i.atx
  %i.atz = or i64 %i.aty, %i.atw
  store i64 %i.atz, ptr %i.atu, align 1, !noalias !337
  %i.aua = add i64 %i.atr, 24
  %i.aub = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.auc = add i32 %i.aub, 1
  store i32 %i.auc, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.atc, %bb.bq ], [ %i.aua, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aud = add nsw i64 %.0331.i, -1
  %i.aue = add i64 %i.aud, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alz, 1
  %i.auf = icmp eq i64 %i.aue, %.7.i.lcssa635636
  br i1 %i.auf, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alz, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avq, %bb.bs ] ; 3 uses
  %i.aug = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avp, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.auh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64                  ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !9
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auj
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !83
  %i.aup = zext i16 %i.auo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.auq = lshr i64 %i.aug, 3
  %i.aur = getelementptr inbounds nuw i8, ptr %6, i64 %i.auq ; 2 uses
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !9, !alias.scope !342, !noalias !339
  %i.aut = zext i8 %i.aus to i64
  %i.auu = and i64 %i.aug, 7
  %i.auv = shl nuw nsw i64 %i.aup, %i.auu
  %i.auw = or i64 %i.auv, %i.aut
  store i64 %i.auw, ptr %i.aur, align 1, !noalias !339
  %i.aux = add i64 %i.aug, %i.aum                 ; 4 uses
  store i64 %i.aux, ptr %5, align 8, !tbaa !7, !alias.scope !339, !noalias !342
  %i.auy = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 1
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64                  ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !9
  %i.ave = zext i8 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avb
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !83
  %i.avh = zext i16 %i.avg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.avi = lshr i64 %i.aux, 3
  %i.avj = getelementptr inbounds nuw i8, ptr %6, i64 %i.avi ; 2 uses
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !9, !alias.scope !346, !noalias !344
  %i.avl = zext i8 %i.avk to i64
  %i.avm = and i64 %i.aux, 7
  %i.avn = shl nuw nsw i64 %i.avh, %i.avm
  %i.avo = or i64 %i.avn, %i.avl
  store i64 %i.avo, ptr %i.avj, align 1, !noalias !344
  %i.avp = add i64 %i.aux, %i.ave                 ; 3 uses
  store i64 %i.avp, ptr %5, align 8, !tbaa !7, !alias.scope !344, !noalias !346
  %i.avq = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.asa, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.asb, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avr = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64                  ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 %i.avt
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !9
  %i.avw = zext i8 %i.avv to i64
  %i.avx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avt
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !83
  %i.avz = zext i16 %i.avy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.awa = lshr i64 %.epil.init646, 3
  %i.awb = getelementptr inbounds nuw i8, ptr %6, i64 %i.awa ; 2 uses
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !9, !alias.scope !313, !noalias !310
  %i.awd = zext i8 %i.awc to i64
  %i.awe = and i64 %.epil.init646, 7
  %i.awf = shl nuw nsw i64 %i.avz, %i.awe
  %i.awg = or i64 %i.awf, %i.awd
  store i64 %i.awg, ptr %i.awb, align 1, !noalias !310
  %i.awh = add i64 %.epil.init646, %i.avw
  store i64 %i.awh, ptr %5, align 8, !tbaa !7, !alias.scope !310, !noalias !313
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avq, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avp, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awi = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64                  ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !9
  %i.awn = zext i8 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awk
  %i.awp = load i16, ptr %i.awo, align 2, !tbaa !83
  %i.awq = zext i16 %i.awp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.awr = lshr i64 %.epil.init637, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !9, !alias.scope !342, !noalias !339
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %.epil.init637, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !339
  %i.awy = add i64 %.epil.init637, %i.awn
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !339, !noalias !342
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mr, %.thread74.thread118 ], [ %i.ajn, %bb.bd ], [ %i.ajn, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajn, %bb.bo ], [ %i.ajn, %.epil.preheader642 ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajn, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.awz = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.axa = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.axb = add i64 %i.axa, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.axc = lshr i64 %i.axa, 3
  %i.axd = getelementptr inbounds nuw i8, ptr %6, i64 %i.axc ; 2 uses
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !9, !alias.scope !351, !noalias !348
  %i.axf = zext i8 %i.axe to i64
  store i64 %i.axf, ptr %i.axd, align 1, !noalias !348
  %i.axg = add i64 %i.axa, 1                      ; 3 uses
  store i64 %i.axg, ptr %5, align 8, !tbaa !7, !alias.scope !348, !noalias !351
  %i.axh = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axh, i64 4, i64 5        ; 2 uses
  %i.axi = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.axj = lshr i64 %i.axg, 3
  %i.axk = getelementptr inbounds nuw i8, ptr %6, i64 %i.axj ; 2 uses
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !9, !alias.scope !356, !noalias !353
  %i.axm = zext i8 %i.axl to i64
  %i.axn = and i64 %i.axg, 7
  %i.axo = shl nuw nsw i64 %i.axi, %i.axn
  %i.axp = or i64 %i.axo, %i.axm
  store i64 %i.axp, ptr %i.axk, align 1, !noalias !353
  store i64 %i.axb, ptr %5, align 8, !tbaa !7, !alias.scope !353, !noalias !356
  %i.axq = shl nuw nsw i64 %.0.i55, 2
  %i.axr = add nsw i64 %i.awz, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.axs = lshr i64 %i.axb, 3
  %i.axt = getelementptr inbounds nuw i8, ptr %6, i64 %i.axs ; 2 uses
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !9, !alias.scope !361, !noalias !358
  %i.axv = zext i8 %i.axu to i64
  %i.axw = and i64 %i.axb, 7
  %i.axx = shl nuw nsw i64 %i.axr, %i.axw
  %i.axy = or i64 %i.axx, %i.axv
  store i64 %i.axy, ptr %i.axt, align 1, !noalias !358
  %i.axz = add i64 %i.axb, %i.axq                 ; 4 uses
  store i64 %i.axz, ptr %5, align 8, !tbaa !7, !alias.scope !358, !noalias !361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.aya = lshr i64 %i.axz, 3
  %i.ayb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aya ; 2 uses
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !9, !alias.scope !366, !noalias !363
  %i.ayd = zext i8 %i.ayc to i64
  store i64 %i.ayd, ptr %i.ayb, align 1, !noalias !363
  %i.aye = add i64 %i.axz, 1                      ; 2 uses
  store i64 %i.aye, ptr %5, align 8, !tbaa !7, !alias.scope !363, !noalias !366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ayf = lshr i64 %i.aye, 3
  %i.ayg = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayf ; 2 uses
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !9, !alias.scope !371, !noalias !368
  %i.ayi = zext i8 %i.ayh to i64
  store i64 %i.ayi, ptr %i.ayg, align 1, !noalias !368
  %i.ayj = add i64 %i.axz, 14
  store i64 %i.ayj, ptr %5, align 8, !tbaa !7, !alias.scope !368, !noalias !371
  %i.ayk = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.awz, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL10UpdateBitsmjmPh.exit.outer

bb.bu:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bv, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit
end_hunk_0
begin_hunk_1_@_ZL32BrotliCompressFragmentFastImpl11PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aef = shl nuw nsw i64 %i.adm, %i.adl
  %i.aeg = sub nsw i64 %i.adh, %i.aef
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.aeh = lshr i64 %i.aee, 3
  %i.aei = getelementptr inbounds nuw i8, ptr %6, i64 %i.aeh ; 2 uses
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !9, !alias.scope !560, !noalias !557
  %i.aek = zext i8 %i.aej to i64
  %i.ael = and i64 %i.aee, 7
  %i.aem = shl nsw i64 %i.aeg, %i.ael
  %i.aen = or i64 %i.aem, %i.aek
  store i64 %i.aen, ptr %i.aei, align 1, !noalias !557
  %i.aeo = add i64 %i.aee, %i.adl
  store i64 %i.aeo, ptr %5, align 8, !tbaa !7, !alias.scope !557, !noalias !560
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adp ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !3
  %i.aer = add i32 %i.aeq, 1
  store i32 %i.aer, ptr %i.aep, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aes = icmp ult i64 %i.acj, 2118
  br i1 %i.aes, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aet = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aeu = trunc nuw nsw i64 %i.aet to i32
  %i.aev = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeu, i1 true) ; 2 uses
  %i.aew = xor i32 %i.aev, 31
  %i.aex = sub nuw nsw i32 59, %i.aev
  %i.aey = zext nneg i32 %i.aex to i64            ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !9
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aey
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !83
  %i.afe = zext i16 %i.afd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.aff = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !562, !noalias !565 ; 3 uses
  %i.afg = lshr i64 %i.aff, 3
  %i.afh = getelementptr inbounds nuw i8, ptr %6, i64 %i.afg ; 2 uses
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !9, !alias.scope !565, !noalias !562
  %i.afj = zext i8 %i.afi to i64
  %i.afk = and i64 %i.aff, 7
  %i.afl = shl nuw nsw i64 %i.afe, %i.afk
  %i.afm = or i64 %i.afl, %i.afj
  store i64 %i.afm, ptr %i.afh, align 1, !noalias !562
  %i.afn = add i64 %i.aff, %i.afb                 ; 4 uses
  store i64 %i.afn, ptr %5, align 8, !tbaa !7, !alias.scope !562, !noalias !565
  %i.afo = zext nneg i32 %i.aew to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afo
  %i.afp = add nsw i64 %.neg.i45, %i.aet
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.afq = lshr i64 %i.afn, 3
  %i.afr = getelementptr inbounds nuw i8, ptr %6, i64 %i.afq ; 2 uses
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !9, !alias.scope !570, !noalias !567
  %i.aft = zext i8 %i.afs to i64
  %i.afu = and i64 %i.afn, 7
  %i.afv = shl nsw i64 %i.afp, %i.afu
  %i.afw = or i64 %i.afv, %i.aft
  store i64 %i.afw, ptr %i.afr, align 1, !noalias !567
  %i.afx = add i64 %i.afn, %i.afo
  store i64 %i.afx, ptr %5, align 8, !tbaa !7, !alias.scope !567, !noalias !570
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aey ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !3
  %i.aga = add i32 %i.afz, 1
  store i32 %i.aga, ptr %i.afy, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.agb = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.agc = zext i8 %i.agb to i64
  %i.agd = load i16, ptr %i.co, align 2, !tbaa !83
  %i.age = zext i16 %i.agd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.agf = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !572, !noalias !575 ; 3 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = getelementptr inbounds nuw i8, ptr %6, i64 %i.agg ; 2 uses
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !9, !alias.scope !575, !noalias !572
  %i.agj = zext i8 %i.agi to i64
  %i.agk = and i64 %i.agf, 7
  %i.agl = shl nuw nsw i64 %i.age, %i.agk
  %i.agm = or i64 %i.agl, %i.agj
  store i64 %i.agm, ptr %i.agh, align 1, !noalias !572
  %i.agn = add i64 %i.agf, %i.agc                 ; 4 uses
  store i64 %i.agn, ptr %5, align 8, !tbaa !7, !alias.scope !572, !noalias !575
  %i.ago = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.agp = lshr i64 %i.agn, 3
  %i.agq = getelementptr inbounds nuw i8, ptr %6, i64 %i.agp ; 2 uses
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !9, !alias.scope !580, !noalias !577
  %i.ags = zext i8 %i.agr to i64
  %i.agt = and i64 %i.agn, 7
  %i.agu = shl i64 %i.ago, %i.agt
  %i.agv = or i64 %i.agu, %i.ags
  store i64 %i.agv, ptr %i.agq, align 1, !noalias !577
  %i.agw = add i64 %i.agn, 24
  store i64 %i.agw, ptr %5, align 8, !tbaa !7, !alias.scope !577, !noalias !580
  %i.agx = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agy = add i32 %i.agx, 1
  store i32 %i.agy, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ach, 32
  %i.agz = ashr exact i64 %sext391.i, 32
  %i.aha = add nsw i64 %i.agz, 3                  ; 3 uses
  %i.ahb = trunc i64 %i.aha to i32
  %i.ahc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahb, i1 true) ; 2 uses
  %i.ahd = sub nsw i32 30, %i.ahc
  %i.ahe = zext i32 %i.ahd to i64                 ; 3 uses
  %i.ahf = lshr i64 %i.aha, %i.ahe
  %i.ahg = and i64 %i.ahf, 1                      ; 2 uses
  %i.ahh = or disjoint i64 %i.ahg, 2
  %i.ahi = shl i64 %i.ahh, %i.ahe
  %i.ahj = shl nuw nsw i32 %i.ahc, 1
  %i.ahk = sub nsw i32 58, %i.ahj
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = or disjoint i64 %i.ahg, %i.ahl
  %i.ahn = add nuw nsw i64 %i.ahm, 80             ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !9
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahn
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !83
  %i.aht = zext i16 %i.ahs to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.ahu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !582, !noalias !585 ; 3 uses
  %i.ahv = lshr i64 %i.ahu, 3
  %i.ahw = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahv ; 2 uses
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !9, !alias.scope !585, !noalias !582
  %i.ahy = zext i8 %i.ahx to i64
  %i.ahz = and i64 %i.ahu, 7
  %i.aia = shl nuw nsw i64 %i.aht, %i.ahz
  %i.aib = or i64 %i.aia, %i.ahy
  store i64 %i.aib, ptr %i.ahw, align 1, !noalias !582
  %i.aic = add i64 %i.ahu, %i.ahq                 ; 4 uses
  store i64 %i.aic, ptr %5, align 8, !tbaa !7, !alias.scope !582, !noalias !585
  %i.aid = sub i64 %i.aha, %i.ahi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.aie = lshr i64 %i.aic, 3
  %i.aif = getelementptr inbounds nuw i8, ptr %6, i64 %i.aie ; 2 uses
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !9, !alias.scope !590, !noalias !587
  %i.aih = zext i8 %i.aig to i64
  %i.aii = and i64 %i.aic, 7
  %i.aij = shl i64 %i.aid, %i.aii
  %i.aik = or i64 %i.aij, %i.aih
  store i64 %i.aik, ptr %i.aif, align 1, !noalias !587
  %i.ail = add i64 %i.aic, %i.ahe
  store i64 %i.ail, ptr %5, align 8, !tbaa !7, !alias.scope !587, !noalias !590
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahn ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !3
  %i.aio = add i32 %i.ain, 1
  store i32 %i.aio, ptr %i.aim, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ack, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aip = getelementptr inbounds i8, ptr %i.ack, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aip, align 1 ; 4 uses
  %i.aiq = mul i64 %.0.copyload.i44, 8503243848024064
  %i.air = lshr i64 %i.aiq, 53
  %i.ais = lshr i64 %.0.copyload.i44, 24
  %i.ait = mul i64 %i.ais, 8503243848024064
  %i.aiu = lshr i64 %i.ait, 53
  %i.aiv = ptrtoint ptr %i.ack to i64
  %i.aiw = sub i64 %i.aiv, %i.ca
  %i.aix = trunc i64 %i.aiw to i32                ; 4 uses
  %i.aiy = add i32 %i.aix, -3
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air
  store i32 %i.aiy, ptr %i.aiz, align 4, !tbaa !3
  %i.aja = lshr i64 %.0.copyload.i44, 8
  %i.ajb = mul i64 %i.aja, 8503243848024064
  %i.ajc = lshr i64 %i.ajb, 53
  %i.ajd = add i32 %i.aix, -2
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajc
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !3
  %i.ajf = lshr i64 %.0.copyload.i44, 16
  %i.ajg = mul i64 %i.ajf, 8503243848024064
  %i.ajh = lshr i64 %i.ajg, 53
  %i.aji = add i32 %i.aix, -1
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajh
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !3
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiu ; 2 uses
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3
  store i32 %i.aix, ptr %i.ajk, align 4, !tbaa !3
  %.pn = sext i32 %i.ajl to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ack, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajm = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajm, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ack, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hx, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajn = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajo = tail call noundef i64 @llvm.umin.i64(i64 %i.ajn, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajn, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajp = add i64 %i.ajo, %.0332.i               ; 3 uses
  %i.ajq = icmp ult i64 %i.ajp, 1048577
  br i1 %i.ajq, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ajx, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !9
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajt ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !3
  %i.ajw = add i32 %i.ajv, 1
  store i32 %i.ajw, ptr %i.aju, align 4, !tbaa !3
  %i.ajx = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajy = icmp samesign ult i64 %i.ajx, %i.ajo
  br i1 %i.ajy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajz = trunc nuw nsw i64 %i.ajo to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajz, 42
  %i.aka = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.akb = icmp ult i64 %i.ajn, 10966
  br i1 %i.akb, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.aka to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.ake = uitofp nneg i32 %i.aka to double       ; 2 uses
  %i.akf = tail call double @log2(double noundef %i.ake) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.ake, %bb.ax ]
  %.0.i22.i = phi double [ %i.akd, %._crit_edge.thread.i ], [ %i.akf, %bb.ax ]
  %i.akg = fadd double %.0.i22.i, 5.000000e-01
  %i.akh = tail call double @llvm.fmuladd.f64(double %i.akg, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.akh, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akv, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akw, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !3 ; 3 uses
  %i.akk = uitofp i32 %i.akj to double            ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !9
  %i.akn = uitofp i8 %i.akm to double
  %i.ako = icmp ult i32 %i.akj, 256
  br i1 %i.ako, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akp = zext nneg i32 %i.akj to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akp
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.aks = tail call double @log2(double noundef %i.akk) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.akr, %bb.az ], [ %i.aks, %bb.ba ]
  %i.akt = fadd double %.0.i.i, %i.akn
  %i.aku = fneg double %i.akk
  %i.akv = tail call double @llvm.fmuladd.f64(double %i.aku, double %i.akt, double %.026.i) ; 2 uses
  %i.akw = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akw, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.akx = fcmp ult double %i.akv, 0.000000e+00
  br i1 %i.akx, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.aky = trunc nuw nsw i64 %i.ajp to i32
  %i.akz = add nsw i32 %i.aky, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alt, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akz, %bb.bb ], [ %i.alu, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.alv, %bb.bc ] ; 3 uses
  %i.ala = lshr i64 %.02528.i, 3
  %i.alb = and i64 %.02528.i, 7                   ; 3 uses
  %i.alc = sub nuw nsw i64 8, %i.alb
  %i.ald = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.alc) ; 4 uses
  %i.ale = add nuw nsw i64 %i.ald, %i.alb
  %i.alf = trunc nuw nsw i64 %i.ale to i32
  %notmask.i = shl nsw i32 -1, %i.alf
  %i.alg = trunc nuw nsw i64 %i.alb to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.alg
  %i.alh = xor i32 %notmask26.i, -1
  %i.ali = or i32 %notmask.i, %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ala ; 2 uses
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !9
  %i.all = zext i8 %i.alk to i32
  %i.alm = and i32 %i.ali, %i.all
  %i.aln = trunc nuw nsw i64 %i.ald to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.aln
  %i.alo = xor i32 %notmask27.i, -1
  %i.alp = and i32 %.02429.i, %i.alo
  %i.alq = shl nuw nsw i32 %i.alp, %i.alg
  %i.alr = or i32 %i.alm, %i.alq
  %i.als = trunc i32 %i.alr to i8
  store i8 %i.als, ptr %i.alj, align 1, !tbaa !9
  %i.alt = sub i64 %.030.i, %i.ald                ; 2 uses
  %i.alu = lshr i32 %.02429.i, %i.aln
  %i.alv = add i64 %i.ald, %.02528.i
  %.not.i54 = icmp eq i64 %i.alt, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alw = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alw, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alx = ptrtoint ptr %i.ct to i64
  %i.aly = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alz = sub i64 %i.alx, %i.aly                 ; 18 uses
  %i.ama = icmp ult i64 %i.alz, 6210
  br i1 %i.ama, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.amb = icmp samesign ult i64 %i.alz, 6
  br i1 %i.amb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.amc = or disjoint i64 %i.alz, 40             ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amc
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !9
  %i.amf = zext i8 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.amc
  %i.amh = load i16, ptr %i.amg, align 2, !tbaa !83
  %i.ami = zext i16 %i.amh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.amj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !592, !noalias !595 ; 3 uses
  %i.amk = lshr i64 %i.amj, 3
  %i.aml = getelementptr inbounds nuw i8, ptr %6, i64 %i.amk ; 2 uses
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !9, !alias.scope !595, !noalias !592
  %i.amn = zext i8 %i.amm to i64
  %i.amo = and i64 %i.amj, 7
  %i.amp = shl nuw nsw i64 %i.ami, %i.amo
  %i.amq = or i64 %i.amp, %i.amn
  store i64 %i.amq, ptr %i.aml, align 1, !noalias !592
  %i.amr = add i64 %i.amj, %i.amf
  store i64 %i.amr, ptr %5, align 8, !tbaa !7, !alias.scope !592, !noalias !595
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.amc ; 2 uses
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !3
  %i.amu = add i32 %i.amt, 1
  store i32 %i.amu, ptr %i.ams, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.amv = icmp samesign ult i64 %i.alz, 130
  br i1 %i.amv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amw = add nsw i64 %i.alz, -2                 ; 3 uses
  %i.amx = trunc nuw nsw i64 %i.amw to i32
  %i.amy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amx, i1 true)
  %i.amz = sub nuw nsw i32 30, %i.amy             ; 2 uses
  %i.ana = zext nneg i32 %i.amz to i64            ; 3 uses
  %i.anb = lshr i64 %i.amw, %i.ana                ; 2 uses
  %i.anc = shl nuw nsw i32 %i.amz, 1
  %narrow281 = add nuw nsw i32 %i.anc, 42
  %i.and = zext nneg i32 %narrow281 to i64
  %i.ane = add nuw nsw i64 %i.anb, %i.and         ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !9
  %i.anh = zext i8 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ane
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !83
  %i.ank = zext i16 %i.anj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.anl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !597, !noalias !600 ; 3 uses
  %i.anm = lshr i64 %i.anl, 3
  %i.ann = getelementptr inbounds nuw i8, ptr %6, i64 %i.anm ; 2 uses
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !9, !alias.scope !600, !noalias !597
  %i.anp = zext i8 %i.ano to i64
  %i.anq = and i64 %i.anl, 7
  %i.anr = shl nuw nsw i64 %i.ank, %i.anq
  %i.ans = or i64 %i.anr, %i.anp
  store i64 %i.ans, ptr %i.ann, align 1, !noalias !597
  %i.ant = add i64 %i.anl, %i.anh                 ; 4 uses
  store i64 %i.ant, ptr %5, align 8, !tbaa !7, !alias.scope !597, !noalias !600
  %i.anu = shl nuw nsw i64 %i.anb, %i.ana
  %i.anv = sub nsw i64 %i.amw, %i.anu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.anw = lshr i64 %i.ant, 3
  %i.anx = getelementptr inbounds nuw i8, ptr %6, i64 %i.anw ; 2 uses
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !9, !alias.scope !605, !noalias !602
  %i.anz = zext i8 %i.any to i64
  %i.aoa = and i64 %i.ant, 7
  %i.aob = shl nsw i64 %i.anv, %i.aoa
  %i.aoc = or i64 %i.aob, %i.anz
  store i64 %i.aoc, ptr %i.anx, align 1, !noalias !602
  %i.aod = add i64 %i.ant, %i.ana
  store i64 %i.aod, ptr %5, align 8, !tbaa !7, !alias.scope !602, !noalias !605
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ane ; 2 uses
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !3
  %i.aog = add i32 %i.aof, 1
  store i32 %i.aog, ptr %i.aoe, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoh = icmp samesign ult i64 %i.alz, 2114
  br i1 %i.aoh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aoi = add nsw i64 %i.alz, -66                ; 2 uses
  %i.aoj = trunc nuw nsw i64 %i.aoi to i32
  %i.aok = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aoj, i1 true) ; 2 uses
  %i.aol = xor i32 %i.aok, 31
  %i.aom = sub nuw nsw i32 81, %i.aok
  %i.aon = zext nneg i32 %i.aom to i64            ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !9
  %i.aoq = zext i8 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aon
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !83
  %i.aot = zext i16 %i.aos to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.aou = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !607, !noalias !610 ; 3 uses
  %i.aov = lshr i64 %i.aou, 3
  %i.aow = getelementptr inbounds nuw i8, ptr %6, i64 %i.aov ; 2 uses
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !9, !alias.scope !610, !noalias !607
  %i.aoy = zext i8 %i.aox to i64
  %i.aoz = and i64 %i.aou, 7
  %i.apa = shl nuw nsw i64 %i.aot, %i.aoz
  %i.apb = or i64 %i.apa, %i.aoy
  store i64 %i.apb, ptr %i.aow, align 1, !noalias !607
  %i.apc = add i64 %i.aou, %i.aoq                 ; 4 uses
  store i64 %i.apc, ptr %5, align 8, !tbaa !7, !alias.scope !607, !noalias !610
  %i.apd = zext nneg i32 %i.aol to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apd
  %i.ape = add nsw i64 %.neg.i26, %i.aoi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.apf = lshr i64 %i.apc, 3
  %i.apg = getelementptr inbounds nuw i8, ptr %6, i64 %i.apf ; 2 uses
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !9, !alias.scope !615, !noalias !612
  %i.api = zext i8 %i.aph to i64
  %i.apj = and i64 %i.apc, 7
  %i.apk = shl nsw i64 %i.ape, %i.apj
  %i.apl = or i64 %i.apk, %i.api
  store i64 %i.apl, ptr %i.apg, align 1, !noalias !612
  %i.apm = add i64 %i.apc, %i.apd
  store i64 %i.apm, ptr %5, align 8, !tbaa !7, !alias.scope !612, !noalias !615
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aon ; 2 uses
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !3
  %i.app = add i32 %i.apo, 1
  store i32 %i.app, ptr %i.apn, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apq = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apr = zext i8 %i.apq to i64
  %i.aps = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apt = zext i16 %i.aps to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.apu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !617, !noalias !620 ; 3 uses
  %i.apv = lshr i64 %i.apu, 3
  %i.apw = getelementptr inbounds nuw i8, ptr %6, i64 %i.apv ; 2 uses
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !9, !alias.scope !620, !noalias !617
  %i.apy = zext i8 %i.apx to i64
  %i.apz = and i64 %i.apu, 7
  %i.aqa = shl nuw nsw i64 %i.apt, %i.apz
  %i.aqb = or i64 %i.aqa, %i.apy
  store i64 %i.aqb, ptr %i.apw, align 1, !noalias !617
  %i.aqc = add i64 %i.apu, %i.apr                 ; 4 uses
  store i64 %i.aqc, ptr %5, align 8, !tbaa !7, !alias.scope !617, !noalias !620
  %i.aqd = add nsw i64 %i.alz, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.aqe = lshr i64 %i.aqc, 3
  %i.aqf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqe ; 2 uses
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !9, !alias.scope !625, !noalias !622
  %i.aqh = zext i8 %i.aqg to i64
  %i.aqi = and i64 %i.aqc, 7
  %i.aqj = shl nuw nsw i64 %i.aqd, %i.aqi
  %i.aqk = or i64 %i.aqj, %i.aqh
  store i64 %i.aqk, ptr %i.aqf, align 1, !noalias !622
  %i.aql = add i64 %i.aqc, 12
  store i64 %i.aql, ptr %5, align 8, !tbaa !7, !alias.scope !622, !noalias !625
  %i.aqm = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqn = add i32 %i.aqm, 1
  store i32 %i.aqn, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !627, !noalias !630 ; 2 uses
  %i.aqo = add nsw i64 %.0331.i, -1
  %i.aqp = add i64 %i.aqo, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alz, 1
  %i.aqq = icmp eq i64 %i.aqp, %.7.i.lcssa635636
  br i1 %i.aqq, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alz, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqr = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.asa, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.asb, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqs = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64                  ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !9
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqu
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !83
  %i.ara = zext i16 %i.aqz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.arb = lshr i64 %i.aqr, 3
  %i.arc = getelementptr inbounds nuw i8, ptr %6, i64 %i.arb ; 2 uses
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !9, !alias.scope !630, !noalias !627
  %i.are = zext i8 %i.ard to i64
  %i.arf = and i64 %i.aqr, 7
  %i.arg = shl nuw nsw i64 %i.ara, %i.arf
  %i.arh = or i64 %i.arg, %i.are
  store i64 %i.arh, ptr %i.arc, align 1, !noalias !627
  %i.ari = add i64 %i.aqr, %i.aqx                 ; 4 uses
  store i64 %i.ari, ptr %5, align 8, !tbaa !7, !alias.scope !627, !noalias !630
  %i.arj = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64                  ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !9
  %i.arp = zext i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arm
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !83
  %i.ars = zext i16 %i.arr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.art = lshr i64 %i.ari, 3
  %i.aru = getelementptr inbounds nuw i8, ptr %6, i64 %i.art ; 2 uses
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !9, !alias.scope !634, !noalias !632
  %i.arw = zext i8 %i.arv to i64
  %i.arx = and i64 %i.ari, 7
  %i.ary = shl nuw nsw i64 %i.ars, %i.arx
  %i.arz = or i64 %i.ary, %i.arw
  store i64 %i.arz, ptr %i.aru, align 1, !noalias !632
  %i.asa = add i64 %i.ari, %i.arp                 ; 3 uses
  store i64 %i.asa, ptr %5, align 8, !tbaa !7, !alias.scope !632, !noalias !634
  %i.asb = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.asc = sub i64 %i.aly, %i.cr
  %i.asd = mul i64 %i.asc, 50
  %i.ase = icmp ugt i64 %i.asd, %i.alz
  %narrow.not130 = or i1 %i.cs, %i.ase
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asf = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asf, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asg = icmp ult i64 %i.alz, 22594
  br i1 %i.asg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ash = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asi = zext i8 %i.ash to i64
  %i.asj = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ask = zext i16 %i.asj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.asl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !636, !noalias !639 ; 3 uses
  %i.asm = lshr i64 %i.asl, 3
  %i.asn = getelementptr inbounds nuw i8, ptr %6, i64 %i.asm ; 2 uses
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !9, !alias.scope !639, !noalias !636
  %i.asp = zext i8 %i.aso to i64
  %i.asq = and i64 %i.asl, 7
  %i.asr = shl nuw nsw i64 %i.ask, %i.asq
  %i.ass = or i64 %i.asr, %i.asp
  store i64 %i.ass, ptr %i.asn, align 1, !noalias !636
  %i.ast = add i64 %i.asl, %i.asi                 ; 4 uses
  store i64 %i.ast, ptr %5, align 8, !tbaa !7, !alias.scope !636, !noalias !639
  %i.asu = add nsw i64 %i.alz, -6210
  %i.asv = lshr i64 %i.ast, 3
  %i.asw = getelementptr inbounds nuw i8, ptr %6, i64 %i.asv ; 2 uses
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !9, !alias.scope !641, !noalias !644
  %i.asy = zext i8 %i.asx to i64
  %i.asz = and i64 %i.ast, 7
  %i.ata = shl nuw nsw i64 %i.asu, %i.asz
  %i.atb = or i64 %i.ata, %i.asy
  store i64 %i.atb, ptr %i.asw, align 1, !noalias !644
  %i.atc = add i64 %i.ast, 14
  %i.atd = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ate = add i32 %i.atd, 1
  store i32 %i.ate, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atf = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atg = zext i8 %i.atf to i64
  %i.ath = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.ati = zext i16 %i.ath to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.atj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !646, !noalias !649 ; 3 uses
  %i.atk = lshr i64 %i.atj, 3
  %i.atl = getelementptr inbounds nuw i8, ptr %6, i64 %i.atk ; 2 uses
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !9, !alias.scope !649, !noalias !646
  %i.atn = zext i8 %i.atm to i64
  %i.ato = and i64 %i.atj, 7
  %i.atp = shl nuw nsw i64 %i.ati, %i.ato
  %i.atq = or i64 %i.atp, %i.atn
  store i64 %i.atq, ptr %i.atl, align 1, !noalias !646
  %i.atr = add i64 %i.atj, %i.atg                 ; 4 uses
  store i64 %i.atr, ptr %5, align 8, !tbaa !7, !alias.scope !646, !noalias !649
  %i.ats = add i64 %i.alz, -22594
  %i.att = lshr i64 %i.atr, 3
  %i.atu = getelementptr inbounds nuw i8, ptr %6, i64 %i.att ; 2 uses
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !9, !alias.scope !651, !noalias !654
  %i.atw = zext i8 %i.atv to i64
  %i.atx = and i64 %i.atr, 7
  %i.aty = shl i64 %i.ats, %i.atx
  %i.atz = or i64 %i.aty, %i.atw
  store i64 %i.atz, ptr %i.atu, align 1, !noalias !654
  %i.aua = add i64 %i.atr, 24
  %i.aub = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.auc = add i32 %i.aub, 1
  store i32 %i.auc, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.atc, %bb.bq ], [ %i.aua, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aud = add nsw i64 %.0331.i, -1
  %i.aue = add i64 %i.aud, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alz, 1
  %i.auf = icmp eq i64 %i.aue, %.7.i.lcssa635636
  br i1 %i.auf, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alz, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avq, %bb.bs ] ; 3 uses
  %i.aug = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avp, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.auh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64                  ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !9
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auj
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !83
  %i.aup = zext i16 %i.auo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.auq = lshr i64 %i.aug, 3
  %i.aur = getelementptr inbounds nuw i8, ptr %6, i64 %i.auq ; 2 uses
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !9, !alias.scope !659, !noalias !656
  %i.aut = zext i8 %i.aus to i64
  %i.auu = and i64 %i.aug, 7
  %i.auv = shl nuw nsw i64 %i.aup, %i.auu
  %i.auw = or i64 %i.auv, %i.aut
  store i64 %i.auw, ptr %i.aur, align 1, !noalias !656
  %i.aux = add i64 %i.aug, %i.aum                 ; 4 uses
  store i64 %i.aux, ptr %5, align 8, !tbaa !7, !alias.scope !656, !noalias !659
  %i.auy = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 1
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64                  ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !9
  %i.ave = zext i8 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avb
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !83
  %i.avh = zext i16 %i.avg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.avi = lshr i64 %i.aux, 3
  %i.avj = getelementptr inbounds nuw i8, ptr %6, i64 %i.avi ; 2 uses
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !9, !alias.scope !663, !noalias !661
  %i.avl = zext i8 %i.avk to i64
  %i.avm = and i64 %i.aux, 7
  %i.avn = shl nuw nsw i64 %i.avh, %i.avm
  %i.avo = or i64 %i.avn, %i.avl
  store i64 %i.avo, ptr %i.avj, align 1, !noalias !661
  %i.avp = add i64 %i.aux, %i.ave                 ; 3 uses
  store i64 %i.avp, ptr %5, align 8, !tbaa !7, !alias.scope !661, !noalias !663
  %i.avq = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.asa, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.asb, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avr = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64                  ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 %i.avt
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !9
  %i.avw = zext i8 %i.avv to i64
  %i.avx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avt
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !83
  %i.avz = zext i16 %i.avy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.awa = lshr i64 %.epil.init646, 3
  %i.awb = getelementptr inbounds nuw i8, ptr %6, i64 %i.awa ; 2 uses
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !9, !alias.scope !630, !noalias !627
  %i.awd = zext i8 %i.awc to i64
  %i.awe = and i64 %.epil.init646, 7
  %i.awf = shl nuw nsw i64 %i.avz, %i.awe
  %i.awg = or i64 %i.awf, %i.awd
  store i64 %i.awg, ptr %i.awb, align 1, !noalias !627
  %i.awh = add i64 %.epil.init646, %i.avw
  store i64 %i.awh, ptr %5, align 8, !tbaa !7, !alias.scope !627, !noalias !630
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avq, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avp, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awi = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64                  ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !9
  %i.awn = zext i8 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awk
  %i.awp = load i16, ptr %i.awo, align 2, !tbaa !83
  %i.awq = zext i16 %i.awp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.awr = lshr i64 %.epil.init637, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !9, !alias.scope !659, !noalias !656
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %.epil.init637, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !656
  %i.awy = add i64 %.epil.init637, %i.awn
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !656, !noalias !659
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mr, %.thread74.thread118 ], [ %i.ajn, %bb.bd ], [ %i.ajn, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajn, %bb.bo ], [ %i.ajn, %.epil.preheader642 ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajn, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.awz = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.axa = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.axb = add i64 %i.axa, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.axc = lshr i64 %i.axa, 3
  %i.axd = getelementptr inbounds nuw i8, ptr %6, i64 %i.axc ; 2 uses
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !9, !alias.scope !668, !noalias !665
  %i.axf = zext i8 %i.axe to i64
  store i64 %i.axf, ptr %i.axd, align 1, !noalias !665
  %i.axg = add i64 %i.axa, 1                      ; 3 uses
  store i64 %i.axg, ptr %5, align 8, !tbaa !7, !alias.scope !665, !noalias !668
  %i.axh = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axh, i64 4, i64 5        ; 2 uses
  %i.axi = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.axj = lshr i64 %i.axg, 3
  %i.axk = getelementptr inbounds nuw i8, ptr %6, i64 %i.axj ; 2 uses
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !9, !alias.scope !673, !noalias !670
  %i.axm = zext i8 %i.axl to i64
  %i.axn = and i64 %i.axg, 7
  %i.axo = shl nuw nsw i64 %i.axi, %i.axn
  %i.axp = or i64 %i.axo, %i.axm
  store i64 %i.axp, ptr %i.axk, align 1, !noalias !670
  store i64 %i.axb, ptr %5, align 8, !tbaa !7, !alias.scope !670, !noalias !673
  %i.axq = shl nuw nsw i64 %.0.i55, 2
  %i.axr = add nsw i64 %i.awz, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.axs = lshr i64 %i.axb, 3
  %i.axt = getelementptr inbounds nuw i8, ptr %6, i64 %i.axs ; 2 uses
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !9, !alias.scope !678, !noalias !675
  %i.axv = zext i8 %i.axu to i64
  %i.axw = and i64 %i.axb, 7
  %i.axx = shl nuw nsw i64 %i.axr, %i.axw
  %i.axy = or i64 %i.axx, %i.axv
  store i64 %i.axy, ptr %i.axt, align 1, !noalias !675
  %i.axz = add i64 %i.axb, %i.axq                 ; 4 uses
  store i64 %i.axz, ptr %5, align 8, !tbaa !7, !alias.scope !675, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.aya = lshr i64 %i.axz, 3
  %i.ayb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aya ; 2 uses
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !9, !alias.scope !683, !noalias !680
  %i.ayd = zext i8 %i.ayc to i64
  store i64 %i.ayd, ptr %i.ayb, align 1, !noalias !680
  %i.aye = add i64 %i.axz, 1                      ; 2 uses
  store i64 %i.aye, ptr %5, align 8, !tbaa !7, !alias.scope !680, !noalias !683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.ayf = lshr i64 %i.aye, 3
  %i.ayg = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayf ; 2 uses
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !9, !alias.scope !688, !noalias !685
  %i.ayi = zext i8 %i.ayh to i64
  store i64 %i.ayi, ptr %i.ayg, align 1, !noalias !685
  %i.ayj = add i64 %i.axz, 14
  store i64 %i.ayj, ptr %5, align 8, !tbaa !7, !alias.scope !685, !noalias !688
  %i.ayk = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.awz, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL10UpdateBitsmjmPh.exit.outer

bb.bu:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bv, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit
end_hunk_1
begin_hunk_2_@_ZL32BrotliCompressFragmentFastImpl13PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aef = shl nuw nsw i64 %i.adm, %i.adl
  %i.aeg = sub nsw i64 %i.adh, %i.aef
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.aeh = lshr i64 %i.aee, 3
  %i.aei = getelementptr inbounds nuw i8, ptr %6, i64 %i.aeh ; 2 uses
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !9, !alias.scope !877, !noalias !874
  %i.aek = zext i8 %i.aej to i64
  %i.ael = and i64 %i.aee, 7
  %i.aem = shl nsw i64 %i.aeg, %i.ael
  %i.aen = or i64 %i.aem, %i.aek
  store i64 %i.aen, ptr %i.aei, align 1, !noalias !874
  %i.aeo = add i64 %i.aee, %i.adl
  store i64 %i.aeo, ptr %5, align 8, !tbaa !7, !alias.scope !874, !noalias !877
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adp ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !3
  %i.aer = add i32 %i.aeq, 1
  store i32 %i.aer, ptr %i.aep, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aes = icmp ult i64 %i.acj, 2118
  br i1 %i.aes, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aet = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aeu = trunc nuw nsw i64 %i.aet to i32
  %i.aev = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeu, i1 true) ; 2 uses
  %i.aew = xor i32 %i.aev, 31
  %i.aex = sub nuw nsw i32 59, %i.aev
  %i.aey = zext nneg i32 %i.aex to i64            ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !9
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aey
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !83
  %i.afe = zext i16 %i.afd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.aff = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !879, !noalias !882 ; 3 uses
  %i.afg = lshr i64 %i.aff, 3
  %i.afh = getelementptr inbounds nuw i8, ptr %6, i64 %i.afg ; 2 uses
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !9, !alias.scope !882, !noalias !879
  %i.afj = zext i8 %i.afi to i64
  %i.afk = and i64 %i.aff, 7
  %i.afl = shl nuw nsw i64 %i.afe, %i.afk
  %i.afm = or i64 %i.afl, %i.afj
  store i64 %i.afm, ptr %i.afh, align 1, !noalias !879
  %i.afn = add i64 %i.aff, %i.afb                 ; 4 uses
  store i64 %i.afn, ptr %5, align 8, !tbaa !7, !alias.scope !879, !noalias !882
  %i.afo = zext nneg i32 %i.aew to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afo
  %i.afp = add nsw i64 %.neg.i45, %i.aet
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.afq = lshr i64 %i.afn, 3
  %i.afr = getelementptr inbounds nuw i8, ptr %6, i64 %i.afq ; 2 uses
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !9, !alias.scope !887, !noalias !884
  %i.aft = zext i8 %i.afs to i64
  %i.afu = and i64 %i.afn, 7
  %i.afv = shl nsw i64 %i.afp, %i.afu
  %i.afw = or i64 %i.afv, %i.aft
  store i64 %i.afw, ptr %i.afr, align 1, !noalias !884
  %i.afx = add i64 %i.afn, %i.afo
  store i64 %i.afx, ptr %5, align 8, !tbaa !7, !alias.scope !884, !noalias !887
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aey ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !3
  %i.aga = add i32 %i.afz, 1
  store i32 %i.aga, ptr %i.afy, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.agb = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.agc = zext i8 %i.agb to i64
  %i.agd = load i16, ptr %i.co, align 2, !tbaa !83
  %i.age = zext i16 %i.agd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.agf = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !889, !noalias !892 ; 3 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = getelementptr inbounds nuw i8, ptr %6, i64 %i.agg ; 2 uses
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !9, !alias.scope !892, !noalias !889
  %i.agj = zext i8 %i.agi to i64
  %i.agk = and i64 %i.agf, 7
  %i.agl = shl nuw nsw i64 %i.age, %i.agk
  %i.agm = or i64 %i.agl, %i.agj
  store i64 %i.agm, ptr %i.agh, align 1, !noalias !889
  %i.agn = add i64 %i.agf, %i.agc                 ; 4 uses
  store i64 %i.agn, ptr %5, align 8, !tbaa !7, !alias.scope !889, !noalias !892
  %i.ago = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.agp = lshr i64 %i.agn, 3
  %i.agq = getelementptr inbounds nuw i8, ptr %6, i64 %i.agp ; 2 uses
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !9, !alias.scope !897, !noalias !894
  %i.ags = zext i8 %i.agr to i64
  %i.agt = and i64 %i.agn, 7
  %i.agu = shl i64 %i.ago, %i.agt
  %i.agv = or i64 %i.agu, %i.ags
  store i64 %i.agv, ptr %i.agq, align 1, !noalias !894
  %i.agw = add i64 %i.agn, 24
  store i64 %i.agw, ptr %5, align 8, !tbaa !7, !alias.scope !894, !noalias !897
  %i.agx = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agy = add i32 %i.agx, 1
  store i32 %i.agy, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ach, 32
  %i.agz = ashr exact i64 %sext391.i, 32
  %i.aha = add nsw i64 %i.agz, 3                  ; 3 uses
  %i.ahb = trunc i64 %i.aha to i32
  %i.ahc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahb, i1 true) ; 2 uses
  %i.ahd = sub nsw i32 30, %i.ahc
  %i.ahe = zext i32 %i.ahd to i64                 ; 3 uses
  %i.ahf = lshr i64 %i.aha, %i.ahe
  %i.ahg = and i64 %i.ahf, 1                      ; 2 uses
  %i.ahh = or disjoint i64 %i.ahg, 2
  %i.ahi = shl i64 %i.ahh, %i.ahe
  %i.ahj = shl nuw nsw i32 %i.ahc, 1
  %i.ahk = sub nsw i32 58, %i.ahj
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = or disjoint i64 %i.ahg, %i.ahl
  %i.ahn = add nuw nsw i64 %i.ahm, 80             ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !9
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahn
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !83
  %i.aht = zext i16 %i.ahs to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.ahu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !899, !noalias !902 ; 3 uses
  %i.ahv = lshr i64 %i.ahu, 3
  %i.ahw = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahv ; 2 uses
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !9, !alias.scope !902, !noalias !899
  %i.ahy = zext i8 %i.ahx to i64
  %i.ahz = and i64 %i.ahu, 7
  %i.aia = shl nuw nsw i64 %i.aht, %i.ahz
  %i.aib = or i64 %i.aia, %i.ahy
  store i64 %i.aib, ptr %i.ahw, align 1, !noalias !899
  %i.aic = add i64 %i.ahu, %i.ahq                 ; 4 uses
  store i64 %i.aic, ptr %5, align 8, !tbaa !7, !alias.scope !899, !noalias !902
  %i.aid = sub i64 %i.aha, %i.ahi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.aie = lshr i64 %i.aic, 3
  %i.aif = getelementptr inbounds nuw i8, ptr %6, i64 %i.aie ; 2 uses
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !9, !alias.scope !907, !noalias !904
  %i.aih = zext i8 %i.aig to i64
  %i.aii = and i64 %i.aic, 7
  %i.aij = shl i64 %i.aid, %i.aii
  %i.aik = or i64 %i.aij, %i.aih
  store i64 %i.aik, ptr %i.aif, align 1, !noalias !904
  %i.ail = add i64 %i.aic, %i.ahe
  store i64 %i.ail, ptr %5, align 8, !tbaa !7, !alias.scope !904, !noalias !907
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahn ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !3
  %i.aio = add i32 %i.ain, 1
  store i32 %i.aio, ptr %i.aim, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ack, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aip = getelementptr inbounds i8, ptr %i.ack, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aip, align 1 ; 4 uses
  %i.aiq = mul i64 %.0.copyload.i44, 8503243848024064
  %i.air = lshr i64 %i.aiq, 51
  %i.ais = lshr i64 %.0.copyload.i44, 24
  %i.ait = mul i64 %i.ais, 8503243848024064
  %i.aiu = lshr i64 %i.ait, 51
  %i.aiv = ptrtoint ptr %i.ack to i64
  %i.aiw = sub i64 %i.aiv, %i.ca
  %i.aix = trunc i64 %i.aiw to i32                ; 4 uses
  %i.aiy = add i32 %i.aix, -3
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air
  store i32 %i.aiy, ptr %i.aiz, align 4, !tbaa !3
  %i.aja = lshr i64 %.0.copyload.i44, 8
  %i.ajb = mul i64 %i.aja, 8503243848024064
  %i.ajc = lshr i64 %i.ajb, 51
  %i.ajd = add i32 %i.aix, -2
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajc
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !3
  %i.ajf = lshr i64 %.0.copyload.i44, 16
  %i.ajg = mul i64 %i.ajf, 8503243848024064
  %i.ajh = lshr i64 %i.ajg, 51
  %i.aji = add i32 %i.aix, -1
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajh
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !3
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiu ; 2 uses
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3
  store i32 %i.aix, ptr %i.ajk, align 4, !tbaa !3
  %.pn = sext i32 %i.ajl to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ack, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajm = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajm, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ack, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hx, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajn = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajo = tail call noundef i64 @llvm.umin.i64(i64 %i.ajn, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajn, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajp = add i64 %i.ajo, %.0332.i               ; 3 uses
  %i.ajq = icmp ult i64 %i.ajp, 1048577
  br i1 %i.ajq, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ajx, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !9
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajt ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !3
  %i.ajw = add i32 %i.ajv, 1
  store i32 %i.ajw, ptr %i.aju, align 4, !tbaa !3
  %i.ajx = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajy = icmp samesign ult i64 %i.ajx, %i.ajo
  br i1 %i.ajy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajz = trunc nuw nsw i64 %i.ajo to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajz, 42
  %i.aka = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.akb = icmp ult i64 %i.ajn, 10966
  br i1 %i.akb, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.aka to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.ake = uitofp nneg i32 %i.aka to double       ; 2 uses
  %i.akf = tail call double @log2(double noundef %i.ake) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.ake, %bb.ax ]
  %.0.i22.i = phi double [ %i.akd, %._crit_edge.thread.i ], [ %i.akf, %bb.ax ]
  %i.akg = fadd double %.0.i22.i, 5.000000e-01
  %i.akh = tail call double @llvm.fmuladd.f64(double %i.akg, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.akh, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akv, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akw, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !3 ; 3 uses
  %i.akk = uitofp i32 %i.akj to double            ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !9
  %i.akn = uitofp i8 %i.akm to double
  %i.ako = icmp ult i32 %i.akj, 256
  br i1 %i.ako, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akp = zext nneg i32 %i.akj to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akp
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.aks = tail call double @log2(double noundef %i.akk) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.akr, %bb.az ], [ %i.aks, %bb.ba ]
  %i.akt = fadd double %.0.i.i, %i.akn
  %i.aku = fneg double %i.akk
  %i.akv = tail call double @llvm.fmuladd.f64(double %i.aku, double %i.akt, double %.026.i) ; 2 uses
  %i.akw = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akw, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.akx = fcmp ult double %i.akv, 0.000000e+00
  br i1 %i.akx, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.aky = trunc nuw nsw i64 %i.ajp to i32
  %i.akz = add nsw i32 %i.aky, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alt, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akz, %bb.bb ], [ %i.alu, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.alv, %bb.bc ] ; 3 uses
  %i.ala = lshr i64 %.02528.i, 3
  %i.alb = and i64 %.02528.i, 7                   ; 3 uses
  %i.alc = sub nuw nsw i64 8, %i.alb
  %i.ald = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.alc) ; 4 uses
  %i.ale = add nuw nsw i64 %i.ald, %i.alb
  %i.alf = trunc nuw nsw i64 %i.ale to i32
  %notmask.i = shl nsw i32 -1, %i.alf
  %i.alg = trunc nuw nsw i64 %i.alb to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.alg
  %i.alh = xor i32 %notmask26.i, -1
  %i.ali = or i32 %notmask.i, %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ala ; 2 uses
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !9
  %i.all = zext i8 %i.alk to i32
  %i.alm = and i32 %i.ali, %i.all
  %i.aln = trunc nuw nsw i64 %i.ald to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.aln
  %i.alo = xor i32 %notmask27.i, -1
  %i.alp = and i32 %.02429.i, %i.alo
  %i.alq = shl nuw nsw i32 %i.alp, %i.alg
  %i.alr = or i32 %i.alm, %i.alq
  %i.als = trunc i32 %i.alr to i8
  store i8 %i.als, ptr %i.alj, align 1, !tbaa !9
  %i.alt = sub i64 %.030.i, %i.ald                ; 2 uses
  %i.alu = lshr i32 %.02429.i, %i.aln
  %i.alv = add i64 %i.ald, %.02528.i
  %.not.i54 = icmp eq i64 %i.alt, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alw = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alw, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alx = ptrtoint ptr %i.ct to i64
  %i.aly = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alz = sub i64 %i.alx, %i.aly                 ; 18 uses
  %i.ama = icmp ult i64 %i.alz, 6210
  br i1 %i.ama, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.amb = icmp samesign ult i64 %i.alz, 6
  br i1 %i.amb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.amc = or disjoint i64 %i.alz, 40             ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amc
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !9
  %i.amf = zext i8 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.amc
  %i.amh = load i16, ptr %i.amg, align 2, !tbaa !83
  %i.ami = zext i16 %i.amh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.amj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !909, !noalias !912 ; 3 uses
  %i.amk = lshr i64 %i.amj, 3
  %i.aml = getelementptr inbounds nuw i8, ptr %6, i64 %i.amk ; 2 uses
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !9, !alias.scope !912, !noalias !909
  %i.amn = zext i8 %i.amm to i64
  %i.amo = and i64 %i.amj, 7
  %i.amp = shl nuw nsw i64 %i.ami, %i.amo
  %i.amq = or i64 %i.amp, %i.amn
  store i64 %i.amq, ptr %i.aml, align 1, !noalias !909
  %i.amr = add i64 %i.amj, %i.amf
  store i64 %i.amr, ptr %5, align 8, !tbaa !7, !alias.scope !909, !noalias !912
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.amc ; 2 uses
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !3
  %i.amu = add i32 %i.amt, 1
  store i32 %i.amu, ptr %i.ams, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.amv = icmp samesign ult i64 %i.alz, 130
  br i1 %i.amv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amw = add nsw i64 %i.alz, -2                 ; 3 uses
  %i.amx = trunc nuw nsw i64 %i.amw to i32
  %i.amy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amx, i1 true)
  %i.amz = sub nuw nsw i32 30, %i.amy             ; 2 uses
  %i.ana = zext nneg i32 %i.amz to i64            ; 3 uses
  %i.anb = lshr i64 %i.amw, %i.ana                ; 2 uses
  %i.anc = shl nuw nsw i32 %i.amz, 1
  %narrow281 = add nuw nsw i32 %i.anc, 42
  %i.and = zext nneg i32 %narrow281 to i64
  %i.ane = add nuw nsw i64 %i.anb, %i.and         ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !9
  %i.anh = zext i8 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ane
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !83
  %i.ank = zext i16 %i.anj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.anl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !914, !noalias !917 ; 3 uses
  %i.anm = lshr i64 %i.anl, 3
  %i.ann = getelementptr inbounds nuw i8, ptr %6, i64 %i.anm ; 2 uses
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !9, !alias.scope !917, !noalias !914
  %i.anp = zext i8 %i.ano to i64
  %i.anq = and i64 %i.anl, 7
  %i.anr = shl nuw nsw i64 %i.ank, %i.anq
  %i.ans = or i64 %i.anr, %i.anp
  store i64 %i.ans, ptr %i.ann, align 1, !noalias !914
  %i.ant = add i64 %i.anl, %i.anh                 ; 4 uses
  store i64 %i.ant, ptr %5, align 8, !tbaa !7, !alias.scope !914, !noalias !917
  %i.anu = shl nuw nsw i64 %i.anb, %i.ana
  %i.anv = sub nsw i64 %i.amw, %i.anu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.anw = lshr i64 %i.ant, 3
  %i.anx = getelementptr inbounds nuw i8, ptr %6, i64 %i.anw ; 2 uses
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !9, !alias.scope !922, !noalias !919
  %i.anz = zext i8 %i.any to i64
  %i.aoa = and i64 %i.ant, 7
  %i.aob = shl nsw i64 %i.anv, %i.aoa
  %i.aoc = or i64 %i.aob, %i.anz
  store i64 %i.aoc, ptr %i.anx, align 1, !noalias !919
  %i.aod = add i64 %i.ant, %i.ana
  store i64 %i.aod, ptr %5, align 8, !tbaa !7, !alias.scope !919, !noalias !922
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ane ; 2 uses
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !3
  %i.aog = add i32 %i.aof, 1
  store i32 %i.aog, ptr %i.aoe, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoh = icmp samesign ult i64 %i.alz, 2114
  br i1 %i.aoh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aoi = add nsw i64 %i.alz, -66                ; 2 uses
  %i.aoj = trunc nuw nsw i64 %i.aoi to i32
  %i.aok = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aoj, i1 true) ; 2 uses
  %i.aol = xor i32 %i.aok, 31
  %i.aom = sub nuw nsw i32 81, %i.aok
  %i.aon = zext nneg i32 %i.aom to i64            ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !9
  %i.aoq = zext i8 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aon
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !83
  %i.aot = zext i16 %i.aos to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.aou = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !924, !noalias !927 ; 3 uses
  %i.aov = lshr i64 %i.aou, 3
  %i.aow = getelementptr inbounds nuw i8, ptr %6, i64 %i.aov ; 2 uses
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !9, !alias.scope !927, !noalias !924
  %i.aoy = zext i8 %i.aox to i64
  %i.aoz = and i64 %i.aou, 7
  %i.apa = shl nuw nsw i64 %i.aot, %i.aoz
  %i.apb = or i64 %i.apa, %i.aoy
  store i64 %i.apb, ptr %i.aow, align 1, !noalias !924
  %i.apc = add i64 %i.aou, %i.aoq                 ; 4 uses
  store i64 %i.apc, ptr %5, align 8, !tbaa !7, !alias.scope !924, !noalias !927
  %i.apd = zext nneg i32 %i.aol to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apd
  %i.ape = add nsw i64 %.neg.i26, %i.aoi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.apf = lshr i64 %i.apc, 3
  %i.apg = getelementptr inbounds nuw i8, ptr %6, i64 %i.apf ; 2 uses
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !9, !alias.scope !932, !noalias !929
  %i.api = zext i8 %i.aph to i64
  %i.apj = and i64 %i.apc, 7
  %i.apk = shl nsw i64 %i.ape, %i.apj
  %i.apl = or i64 %i.apk, %i.api
  store i64 %i.apl, ptr %i.apg, align 1, !noalias !929
  %i.apm = add i64 %i.apc, %i.apd
  store i64 %i.apm, ptr %5, align 8, !tbaa !7, !alias.scope !929, !noalias !932
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aon ; 2 uses
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !3
  %i.app = add i32 %i.apo, 1
  store i32 %i.app, ptr %i.apn, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apq = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apr = zext i8 %i.apq to i64
  %i.aps = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apt = zext i16 %i.aps to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.apu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !934, !noalias !937 ; 3 uses
  %i.apv = lshr i64 %i.apu, 3
  %i.apw = getelementptr inbounds nuw i8, ptr %6, i64 %i.apv ; 2 uses
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !9, !alias.scope !937, !noalias !934
  %i.apy = zext i8 %i.apx to i64
  %i.apz = and i64 %i.apu, 7
  %i.aqa = shl nuw nsw i64 %i.apt, %i.apz
  %i.aqb = or i64 %i.aqa, %i.apy
  store i64 %i.aqb, ptr %i.apw, align 1, !noalias !934
  %i.aqc = add i64 %i.apu, %i.apr                 ; 4 uses
  store i64 %i.aqc, ptr %5, align 8, !tbaa !7, !alias.scope !934, !noalias !937
  %i.aqd = add nsw i64 %i.alz, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.aqe = lshr i64 %i.aqc, 3
  %i.aqf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqe ; 2 uses
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !9, !alias.scope !942, !noalias !939
  %i.aqh = zext i8 %i.aqg to i64
  %i.aqi = and i64 %i.aqc, 7
  %i.aqj = shl nuw nsw i64 %i.aqd, %i.aqi
  %i.aqk = or i64 %i.aqj, %i.aqh
  store i64 %i.aqk, ptr %i.aqf, align 1, !noalias !939
  %i.aql = add i64 %i.aqc, 12
  store i64 %i.aql, ptr %5, align 8, !tbaa !7, !alias.scope !939, !noalias !942
  %i.aqm = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqn = add i32 %i.aqm, 1
  store i32 %i.aqn, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !944, !noalias !947 ; 2 uses
  %i.aqo = add nsw i64 %.0331.i, -1
  %i.aqp = add i64 %i.aqo, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alz, 1
  %i.aqq = icmp eq i64 %i.aqp, %.7.i.lcssa635636
  br i1 %i.aqq, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alz, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqr = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.asa, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.asb, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqs = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64                  ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !9
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqu
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !83
  %i.ara = zext i16 %i.aqz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.arb = lshr i64 %i.aqr, 3
  %i.arc = getelementptr inbounds nuw i8, ptr %6, i64 %i.arb ; 2 uses
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !9, !alias.scope !947, !noalias !944
  %i.are = zext i8 %i.ard to i64
  %i.arf = and i64 %i.aqr, 7
  %i.arg = shl nuw nsw i64 %i.ara, %i.arf
  %i.arh = or i64 %i.arg, %i.are
  store i64 %i.arh, ptr %i.arc, align 1, !noalias !944
  %i.ari = add i64 %i.aqr, %i.aqx                 ; 4 uses
  store i64 %i.ari, ptr %5, align 8, !tbaa !7, !alias.scope !944, !noalias !947
  %i.arj = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64                  ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !9
  %i.arp = zext i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arm
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !83
  %i.ars = zext i16 %i.arr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.art = lshr i64 %i.ari, 3
  %i.aru = getelementptr inbounds nuw i8, ptr %6, i64 %i.art ; 2 uses
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !9, !alias.scope !951, !noalias !949
  %i.arw = zext i8 %i.arv to i64
  %i.arx = and i64 %i.ari, 7
  %i.ary = shl nuw nsw i64 %i.ars, %i.arx
  %i.arz = or i64 %i.ary, %i.arw
  store i64 %i.arz, ptr %i.aru, align 1, !noalias !949
  %i.asa = add i64 %i.ari, %i.arp                 ; 3 uses
  store i64 %i.asa, ptr %5, align 8, !tbaa !7, !alias.scope !949, !noalias !951
  %i.asb = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.asc = sub i64 %i.aly, %i.cr
  %i.asd = mul i64 %i.asc, 50
  %i.ase = icmp ugt i64 %i.asd, %i.alz
  %narrow.not130 = or i1 %i.cs, %i.ase
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asf = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asf, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asg = icmp ult i64 %i.alz, 22594
  br i1 %i.asg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ash = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asi = zext i8 %i.ash to i64
  %i.asj = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ask = zext i16 %i.asj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.asl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !953, !noalias !956 ; 3 uses
  %i.asm = lshr i64 %i.asl, 3
  %i.asn = getelementptr inbounds nuw i8, ptr %6, i64 %i.asm ; 2 uses
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !9, !alias.scope !956, !noalias !953
  %i.asp = zext i8 %i.aso to i64
  %i.asq = and i64 %i.asl, 7
  %i.asr = shl nuw nsw i64 %i.ask, %i.asq
  %i.ass = or i64 %i.asr, %i.asp
  store i64 %i.ass, ptr %i.asn, align 1, !noalias !953
  %i.ast = add i64 %i.asl, %i.asi                 ; 4 uses
  store i64 %i.ast, ptr %5, align 8, !tbaa !7, !alias.scope !953, !noalias !956
  %i.asu = add nsw i64 %i.alz, -6210
  %i.asv = lshr i64 %i.ast, 3
  %i.asw = getelementptr inbounds nuw i8, ptr %6, i64 %i.asv ; 2 uses
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !9, !alias.scope !958, !noalias !961
  %i.asy = zext i8 %i.asx to i64
  %i.asz = and i64 %i.ast, 7
  %i.ata = shl nuw nsw i64 %i.asu, %i.asz
  %i.atb = or i64 %i.ata, %i.asy
  store i64 %i.atb, ptr %i.asw, align 1, !noalias !961
  %i.atc = add i64 %i.ast, 14
  %i.atd = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ate = add i32 %i.atd, 1
  store i32 %i.ate, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atf = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atg = zext i8 %i.atf to i64
  %i.ath = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.ati = zext i16 %i.ath to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.atj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !963, !noalias !966 ; 3 uses
  %i.atk = lshr i64 %i.atj, 3
  %i.atl = getelementptr inbounds nuw i8, ptr %6, i64 %i.atk ; 2 uses
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !9, !alias.scope !966, !noalias !963
  %i.atn = zext i8 %i.atm to i64
  %i.ato = and i64 %i.atj, 7
  %i.atp = shl nuw nsw i64 %i.ati, %i.ato
  %i.atq = or i64 %i.atp, %i.atn
  store i64 %i.atq, ptr %i.atl, align 1, !noalias !963
  %i.atr = add i64 %i.atj, %i.atg                 ; 4 uses
  store i64 %i.atr, ptr %5, align 8, !tbaa !7, !alias.scope !963, !noalias !966
  %i.ats = add i64 %i.alz, -22594
  %i.att = lshr i64 %i.atr, 3
  %i.atu = getelementptr inbounds nuw i8, ptr %6, i64 %i.att ; 2 uses
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !9, !alias.scope !968, !noalias !971
  %i.atw = zext i8 %i.atv to i64
  %i.atx = and i64 %i.atr, 7
  %i.aty = shl i64 %i.ats, %i.atx
  %i.atz = or i64 %i.aty, %i.atw
  store i64 %i.atz, ptr %i.atu, align 1, !noalias !971
  %i.aua = add i64 %i.atr, 24
  %i.aub = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.auc = add i32 %i.aub, 1
  store i32 %i.auc, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.atc, %bb.bq ], [ %i.aua, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aud = add nsw i64 %.0331.i, -1
  %i.aue = add i64 %i.aud, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alz, 1
  %i.auf = icmp eq i64 %i.aue, %.7.i.lcssa635636
  br i1 %i.auf, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alz, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avq, %bb.bs ] ; 3 uses
  %i.aug = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avp, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.auh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64                  ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !9
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auj
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !83
  %i.aup = zext i16 %i.auo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.auq = lshr i64 %i.aug, 3
  %i.aur = getelementptr inbounds nuw i8, ptr %6, i64 %i.auq ; 2 uses
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !9, !alias.scope !976, !noalias !973
  %i.aut = zext i8 %i.aus to i64
  %i.auu = and i64 %i.aug, 7
  %i.auv = shl nuw nsw i64 %i.aup, %i.auu
  %i.auw = or i64 %i.auv, %i.aut
  store i64 %i.auw, ptr %i.aur, align 1, !noalias !973
  %i.aux = add i64 %i.aug, %i.aum                 ; 4 uses
  store i64 %i.aux, ptr %5, align 8, !tbaa !7, !alias.scope !973, !noalias !976
  %i.auy = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 1
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64                  ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !9
  %i.ave = zext i8 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avb
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !83
  %i.avh = zext i16 %i.avg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.avi = lshr i64 %i.aux, 3
  %i.avj = getelementptr inbounds nuw i8, ptr %6, i64 %i.avi ; 2 uses
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !9, !alias.scope !980, !noalias !978
  %i.avl = zext i8 %i.avk to i64
  %i.avm = and i64 %i.aux, 7
  %i.avn = shl nuw nsw i64 %i.avh, %i.avm
  %i.avo = or i64 %i.avn, %i.avl
  store i64 %i.avo, ptr %i.avj, align 1, !noalias !978
  %i.avp = add i64 %i.aux, %i.ave                 ; 3 uses
  store i64 %i.avp, ptr %5, align 8, !tbaa !7, !alias.scope !978, !noalias !980
  %i.avq = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.asa, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.asb, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avr = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64                  ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 %i.avt
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !9
  %i.avw = zext i8 %i.avv to i64
  %i.avx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avt
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !83
  %i.avz = zext i16 %i.avy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.awa = lshr i64 %.epil.init646, 3
  %i.awb = getelementptr inbounds nuw i8, ptr %6, i64 %i.awa ; 2 uses
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !9, !alias.scope !947, !noalias !944
  %i.awd = zext i8 %i.awc to i64
  %i.awe = and i64 %.epil.init646, 7
  %i.awf = shl nuw nsw i64 %i.avz, %i.awe
  %i.awg = or i64 %i.awf, %i.awd
  store i64 %i.awg, ptr %i.awb, align 1, !noalias !944
  %i.awh = add i64 %.epil.init646, %i.avw
  store i64 %i.awh, ptr %5, align 8, !tbaa !7, !alias.scope !944, !noalias !947
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avq, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avp, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awi = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64                  ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !9
  %i.awn = zext i8 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awk
  %i.awp = load i16, ptr %i.awo, align 2, !tbaa !83
  %i.awq = zext i16 %i.awp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.awr = lshr i64 %.epil.init637, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !9, !alias.scope !976, !noalias !973
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %.epil.init637, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !973
  %i.awy = add i64 %.epil.init637, %i.awn
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !973, !noalias !976
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mr, %.thread74.thread118 ], [ %i.ajn, %bb.bd ], [ %i.ajn, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajn, %bb.bo ], [ %i.ajn, %.epil.preheader642 ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajn, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.awz = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.axa = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.axb = add i64 %i.axa, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.axc = lshr i64 %i.axa, 3
  %i.axd = getelementptr inbounds nuw i8, ptr %6, i64 %i.axc ; 2 uses
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !9, !alias.scope !985, !noalias !982
  %i.axf = zext i8 %i.axe to i64
  store i64 %i.axf, ptr %i.axd, align 1, !noalias !982
  %i.axg = add i64 %i.axa, 1                      ; 3 uses
  store i64 %i.axg, ptr %5, align 8, !tbaa !7, !alias.scope !982, !noalias !985
  %i.axh = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axh, i64 4, i64 5        ; 2 uses
  %i.axi = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.axj = lshr i64 %i.axg, 3
  %i.axk = getelementptr inbounds nuw i8, ptr %6, i64 %i.axj ; 2 uses
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !9, !alias.scope !990, !noalias !987
  %i.axm = zext i8 %i.axl to i64
  %i.axn = and i64 %i.axg, 7
  %i.axo = shl nuw nsw i64 %i.axi, %i.axn
  %i.axp = or i64 %i.axo, %i.axm
  store i64 %i.axp, ptr %i.axk, align 1, !noalias !987
  store i64 %i.axb, ptr %5, align 8, !tbaa !7, !alias.scope !987, !noalias !990
  %i.axq = shl nuw nsw i64 %.0.i55, 2
  %i.axr = add nsw i64 %i.awz, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.axs = lshr i64 %i.axb, 3
  %i.axt = getelementptr inbounds nuw i8, ptr %6, i64 %i.axs ; 2 uses
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !9, !alias.scope !995, !noalias !992
  %i.axv = zext i8 %i.axu to i64
  %i.axw = and i64 %i.axb, 7
  %i.axx = shl nuw nsw i64 %i.axr, %i.axw
  %i.axy = or i64 %i.axx, %i.axv
  store i64 %i.axy, ptr %i.axt, align 1, !noalias !992
  %i.axz = add i64 %i.axb, %i.axq                 ; 4 uses
  store i64 %i.axz, ptr %5, align 8, !tbaa !7, !alias.scope !992, !noalias !995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.aya = lshr i64 %i.axz, 3
  %i.ayb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aya ; 2 uses
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !9, !alias.scope !1000, !noalias !997
  %i.ayd = zext i8 %i.ayc to i64
  store i64 %i.ayd, ptr %i.ayb, align 1, !noalias !997
  %i.aye = add i64 %i.axz, 1                      ; 2 uses
  store i64 %i.aye, ptr %5, align 8, !tbaa !7, !alias.scope !997, !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ayf = lshr i64 %i.aye, 3
  %i.ayg = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayf ; 2 uses
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !9, !alias.scope !1005, !noalias !1002
  %i.ayi = zext i8 %i.ayh to i64
  store i64 %i.ayi, ptr %i.ayg, align 1, !noalias !1002
  %i.ayj = add i64 %i.axz, 14
  store i64 %i.ayj, ptr %5, align 8, !tbaa !7, !alias.scope !1002, !noalias !1005
  %i.ayk = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.awz, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL10UpdateBitsmjmPh.exit.outer

bb.bu:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bv, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit
end_hunk_2
begin_hunk_3_@_ZL32BrotliCompressFragmentFastImpl15PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aef = shl nuw nsw i64 %i.adm, %i.adl
  %i.aeg = sub nsw i64 %i.adh, %i.aef
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.aeh = lshr i64 %i.aee, 3
  %i.aei = getelementptr inbounds nuw i8, ptr %6, i64 %i.aeh ; 2 uses
  %i.aej = load i8, ptr %i.aei, align 1, !tbaa !9, !alias.scope !1194, !noalias !1191
  %i.aek = zext i8 %i.aej to i64
  %i.ael = and i64 %i.aee, 7
  %i.aem = shl nsw i64 %i.aeg, %i.ael
  %i.aen = or i64 %i.aem, %i.aek
  store i64 %i.aen, ptr %i.aei, align 1, !noalias !1191
  %i.aeo = add i64 %i.aee, %i.adl
  store i64 %i.aeo, ptr %5, align 8, !tbaa !7, !alias.scope !1191, !noalias !1194
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adp ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !3
  %i.aer = add i32 %i.aeq, 1
  store i32 %i.aer, ptr %i.aep, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aes = icmp ult i64 %i.acj, 2118
  br i1 %i.aes, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aet = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aeu = trunc nuw nsw i64 %i.aet to i32
  %i.aev = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aeu, i1 true) ; 2 uses
  %i.aew = xor i32 %i.aev, 31
  %i.aex = sub nuw nsw i32 59, %i.aev
  %i.aey = zext nneg i32 %i.aex to i64            ; 3 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aey
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !9
  %i.afb = zext i8 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aey
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !83
  %i.afe = zext i16 %i.afd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.aff = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1196, !noalias !1199 ; 3 uses
  %i.afg = lshr i64 %i.aff, 3
  %i.afh = getelementptr inbounds nuw i8, ptr %6, i64 %i.afg ; 2 uses
  %i.afi = load i8, ptr %i.afh, align 1, !tbaa !9, !alias.scope !1199, !noalias !1196
  %i.afj = zext i8 %i.afi to i64
  %i.afk = and i64 %i.aff, 7
  %i.afl = shl nuw nsw i64 %i.afe, %i.afk
  %i.afm = or i64 %i.afl, %i.afj
  store i64 %i.afm, ptr %i.afh, align 1, !noalias !1196
  %i.afn = add i64 %i.aff, %i.afb                 ; 4 uses
  store i64 %i.afn, ptr %5, align 8, !tbaa !7, !alias.scope !1196, !noalias !1199
  %i.afo = zext nneg i32 %i.aew to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afo
  %i.afp = add nsw i64 %.neg.i45, %i.aet
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.afq = lshr i64 %i.afn, 3
  %i.afr = getelementptr inbounds nuw i8, ptr %6, i64 %i.afq ; 2 uses
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !9, !alias.scope !1204, !noalias !1201
  %i.aft = zext i8 %i.afs to i64
  %i.afu = and i64 %i.afn, 7
  %i.afv = shl nsw i64 %i.afp, %i.afu
  %i.afw = or i64 %i.afv, %i.aft
  store i64 %i.afw, ptr %i.afr, align 1, !noalias !1201
  %i.afx = add i64 %i.afn, %i.afo
  store i64 %i.afx, ptr %5, align 8, !tbaa !7, !alias.scope !1201, !noalias !1204
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aey ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !3
  %i.aga = add i32 %i.afz, 1
  store i32 %i.aga, ptr %i.afy, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.agb = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.agc = zext i8 %i.agb to i64
  %i.agd = load i16, ptr %i.co, align 2, !tbaa !83
  %i.age = zext i16 %i.agd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.agf = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1206, !noalias !1209 ; 3 uses
  %i.agg = lshr i64 %i.agf, 3
  %i.agh = getelementptr inbounds nuw i8, ptr %6, i64 %i.agg ; 2 uses
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !9, !alias.scope !1209, !noalias !1206
  %i.agj = zext i8 %i.agi to i64
  %i.agk = and i64 %i.agf, 7
  %i.agl = shl nuw nsw i64 %i.age, %i.agk
  %i.agm = or i64 %i.agl, %i.agj
  store i64 %i.agm, ptr %i.agh, align 1, !noalias !1206
  %i.agn = add i64 %i.agf, %i.agc                 ; 4 uses
  store i64 %i.agn, ptr %5, align 8, !tbaa !7, !alias.scope !1206, !noalias !1209
  %i.ago = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.agp = lshr i64 %i.agn, 3
  %i.agq = getelementptr inbounds nuw i8, ptr %6, i64 %i.agp ; 2 uses
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !9, !alias.scope !1214, !noalias !1211
  %i.ags = zext i8 %i.agr to i64
  %i.agt = and i64 %i.agn, 7
  %i.agu = shl i64 %i.ago, %i.agt
  %i.agv = or i64 %i.agu, %i.ags
  store i64 %i.agv, ptr %i.agq, align 1, !noalias !1211
  %i.agw = add i64 %i.agn, 24
  store i64 %i.agw, ptr %5, align 8, !tbaa !7, !alias.scope !1211, !noalias !1214
  %i.agx = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agy = add i32 %i.agx, 1
  store i32 %i.agy, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ach, 32
  %i.agz = ashr exact i64 %sext391.i, 32
  %i.aha = add nsw i64 %i.agz, 3                  ; 3 uses
  %i.ahb = trunc i64 %i.aha to i32
  %i.ahc = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ahb, i1 true) ; 2 uses
  %i.ahd = sub nsw i32 30, %i.ahc
  %i.ahe = zext i32 %i.ahd to i64                 ; 3 uses
  %i.ahf = lshr i64 %i.aha, %i.ahe
  %i.ahg = and i64 %i.ahf, 1                      ; 2 uses
  %i.ahh = or disjoint i64 %i.ahg, 2
  %i.ahi = shl i64 %i.ahh, %i.ahe
  %i.ahj = shl nuw nsw i32 %i.ahc, 1
  %i.ahk = sub nsw i32 58, %i.ahj
  %i.ahl = zext i32 %i.ahk to i64
  %i.ahm = or disjoint i64 %i.ahg, %i.ahl
  %i.ahn = add nuw nsw i64 %i.ahm, 80             ; 3 uses
  %i.aho = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahn
  %i.ahp = load i8, ptr %i.aho, align 1, !tbaa !9
  %i.ahq = zext i8 %i.ahp to i64
  %i.ahr = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahn
  %i.ahs = load i16, ptr %i.ahr, align 2, !tbaa !83
  %i.aht = zext i16 %i.ahs to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.ahu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1216, !noalias !1219 ; 3 uses
  %i.ahv = lshr i64 %i.ahu, 3
  %i.ahw = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahv ; 2 uses
  %i.ahx = load i8, ptr %i.ahw, align 1, !tbaa !9, !alias.scope !1219, !noalias !1216
  %i.ahy = zext i8 %i.ahx to i64
  %i.ahz = and i64 %i.ahu, 7
  %i.aia = shl nuw nsw i64 %i.aht, %i.ahz
  %i.aib = or i64 %i.aia, %i.ahy
  store i64 %i.aib, ptr %i.ahw, align 1, !noalias !1216
  %i.aic = add i64 %i.ahu, %i.ahq                 ; 4 uses
  store i64 %i.aic, ptr %5, align 8, !tbaa !7, !alias.scope !1216, !noalias !1219
  %i.aid = sub i64 %i.aha, %i.ahi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.aie = lshr i64 %i.aic, 3
  %i.aif = getelementptr inbounds nuw i8, ptr %6, i64 %i.aie ; 2 uses
  %i.aig = load i8, ptr %i.aif, align 1, !tbaa !9, !alias.scope !1224, !noalias !1221
  %i.aih = zext i8 %i.aig to i64
  %i.aii = and i64 %i.aic, 7
  %i.aij = shl i64 %i.aid, %i.aii
  %i.aik = or i64 %i.aij, %i.aih
  store i64 %i.aik, ptr %i.aif, align 1, !noalias !1221
  %i.ail = add i64 %i.aic, %i.ahe
  store i64 %i.ail, ptr %5, align 8, !tbaa !7, !alias.scope !1221, !noalias !1224
  %i.aim = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahn ; 2 uses
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !3
  %i.aio = add i32 %i.ain, 1
  store i32 %i.aio, ptr %i.aim, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ack, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aip = getelementptr inbounds i8, ptr %i.ack, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aip, align 1 ; 4 uses
  %i.aiq = mul i64 %.0.copyload.i44, 8503243848024064
  %i.air = lshr i64 %i.aiq, 49
  %i.ais = lshr i64 %.0.copyload.i44, 24
  %i.ait = mul i64 %i.ais, 8503243848024064
  %i.aiu = lshr i64 %i.ait, 49
  %i.aiv = ptrtoint ptr %i.ack to i64
  %i.aiw = sub i64 %i.aiv, %i.ca
  %i.aix = trunc i64 %i.aiw to i32                ; 4 uses
  %i.aiy = add i32 %i.aix, -3
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air
  store i32 %i.aiy, ptr %i.aiz, align 4, !tbaa !3
  %i.aja = lshr i64 %.0.copyload.i44, 8
  %i.ajb = mul i64 %i.aja, 8503243848024064
  %i.ajc = lshr i64 %i.ajb, 49
  %i.ajd = add i32 %i.aix, -2
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajc
  store i32 %i.ajd, ptr %i.aje, align 4, !tbaa !3
  %i.ajf = lshr i64 %.0.copyload.i44, 16
  %i.ajg = mul i64 %i.ajf, 8503243848024064
  %i.ajh = lshr i64 %i.ajg, 49
  %i.aji = add i32 %i.aix, -1
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ajh
  store i32 %i.aji, ptr %i.ajj, align 4, !tbaa !3
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiu ; 2 uses
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !3
  store i32 %i.aix, ptr %i.ajk, align 4, !tbaa !3
  %.pn = sext i32 %i.ajl to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ack, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajm = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajm, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ack, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hx, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajn = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajo = tail call noundef i64 @llvm.umin.i64(i64 %i.ajn, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajn, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajp = add i64 %i.ajo, %.0332.i               ; 3 uses
  %i.ajq = icmp ult i64 %i.ajp, 1048577
  br i1 %i.ajq, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.ajx, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajs = load i8, ptr %i.ajr, align 1, !tbaa !9
  %i.ajt = zext i8 %i.ajs to i64
  %i.aju = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajt ; 2 uses
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !3
  %i.ajw = add i32 %i.ajv, 1
  store i32 %i.ajw, ptr %i.aju, align 4, !tbaa !3
  %i.ajx = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajy = icmp samesign ult i64 %i.ajx, %i.ajo
  br i1 %i.ajy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajz = trunc nuw nsw i64 %i.ajo to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajz, 42
  %i.aka = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.akb = icmp ult i64 %i.ajn, 10966
  br i1 %i.akb, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.aka to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.ake = uitofp nneg i32 %i.aka to double       ; 2 uses
  %i.akf = tail call double @log2(double noundef %i.ake) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.ake, %bb.ax ]
  %.0.i22.i = phi double [ %i.akd, %._crit_edge.thread.i ], [ %i.akf, %bb.ax ]
  %i.akg = fadd double %.0.i22.i, 5.000000e-01
  %i.akh = tail call double @llvm.fmuladd.f64(double %i.akg, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.akh, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akv, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akw, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.aki = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akj = load i32, ptr %i.aki, align 4, !tbaa !3 ; 3 uses
  %i.akk = uitofp i32 %i.akj to double            ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akm = load i8, ptr %i.akl, align 1, !tbaa !9
  %i.akn = uitofp i8 %i.akm to double
  %i.ako = icmp ult i32 %i.akj, 256
  br i1 %i.ako, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akp = zext nneg i32 %i.akj to i64
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akp
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.aks = tail call double @log2(double noundef %i.akk) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.akr, %bb.az ], [ %i.aks, %bb.ba ]
  %i.akt = fadd double %.0.i.i, %i.akn
  %i.aku = fneg double %i.akk
  %i.akv = tail call double @llvm.fmuladd.f64(double %i.aku, double %i.akt, double %.026.i) ; 2 uses
  %i.akw = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akw, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.akx = fcmp ult double %i.akv, 0.000000e+00
  br i1 %i.akx, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.aky = trunc nuw nsw i64 %i.ajp to i32
  %i.akz = add nsw i32 %i.aky, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alt, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akz, %bb.bb ], [ %i.alu, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.alv, %bb.bc ] ; 3 uses
  %i.ala = lshr i64 %.02528.i, 3
  %i.alb = and i64 %.02528.i, 7                   ; 3 uses
  %i.alc = sub nuw nsw i64 8, %i.alb
  %i.ald = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.alc) ; 4 uses
  %i.ale = add nuw nsw i64 %i.ald, %i.alb
  %i.alf = trunc nuw nsw i64 %i.ale to i32
  %notmask.i = shl nsw i32 -1, %i.alf
  %i.alg = trunc nuw nsw i64 %i.alb to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.alg
  %i.alh = xor i32 %notmask26.i, -1
  %i.ali = or i32 %notmask.i, %i.alh
  %i.alj = getelementptr inbounds nuw i8, ptr %6, i64 %i.ala ; 2 uses
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !9
  %i.all = zext i8 %i.alk to i32
  %i.alm = and i32 %i.ali, %i.all
  %i.aln = trunc nuw nsw i64 %i.ald to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.aln
  %i.alo = xor i32 %notmask27.i, -1
  %i.alp = and i32 %.02429.i, %i.alo
  %i.alq = shl nuw nsw i32 %i.alp, %i.alg
  %i.alr = or i32 %i.alm, %i.alq
  %i.als = trunc i32 %i.alr to i8
  store i8 %i.als, ptr %i.alj, align 1, !tbaa !9
  %i.alt = sub i64 %.030.i, %i.ald                ; 2 uses
  %i.alu = lshr i32 %.02429.i, %i.aln
  %i.alv = add i64 %i.ald, %.02528.i
  %.not.i54 = icmp eq i64 %i.alt, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alw = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alw, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alx = ptrtoint ptr %i.ct to i64
  %i.aly = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alz = sub i64 %i.alx, %i.aly                 ; 18 uses
  %i.ama = icmp ult i64 %i.alz, 6210
  br i1 %i.ama, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.amb = icmp samesign ult i64 %i.alz, 6
  br i1 %i.amb, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.amc = or disjoint i64 %i.alz, 40             ; 3 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.amc
  %i.ame = load i8, ptr %i.amd, align 1, !tbaa !9
  %i.amf = zext i8 %i.ame to i64
  %i.amg = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.amc
  %i.amh = load i16, ptr %i.amg, align 2, !tbaa !83
  %i.ami = zext i16 %i.amh to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.amj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1226, !noalias !1229 ; 3 uses
  %i.amk = lshr i64 %i.amj, 3
  %i.aml = getelementptr inbounds nuw i8, ptr %6, i64 %i.amk ; 2 uses
  %i.amm = load i8, ptr %i.aml, align 1, !tbaa !9, !alias.scope !1229, !noalias !1226
  %i.amn = zext i8 %i.amm to i64
  %i.amo = and i64 %i.amj, 7
  %i.amp = shl nuw nsw i64 %i.ami, %i.amo
  %i.amq = or i64 %i.amp, %i.amn
  store i64 %i.amq, ptr %i.aml, align 1, !noalias !1226
  %i.amr = add i64 %i.amj, %i.amf
  store i64 %i.amr, ptr %5, align 8, !tbaa !7, !alias.scope !1226, !noalias !1229
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.amc ; 2 uses
  %i.amt = load i32, ptr %i.ams, align 4, !tbaa !3
  %i.amu = add i32 %i.amt, 1
  store i32 %i.amu, ptr %i.ams, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.amv = icmp samesign ult i64 %i.alz, 130
  br i1 %i.amv, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amw = add nsw i64 %i.alz, -2                 ; 3 uses
  %i.amx = trunc nuw nsw i64 %i.amw to i32
  %i.amy = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amx, i1 true)
  %i.amz = sub nuw nsw i32 30, %i.amy             ; 2 uses
  %i.ana = zext nneg i32 %i.amz to i64            ; 3 uses
  %i.anb = lshr i64 %i.amw, %i.ana                ; 2 uses
  %i.anc = shl nuw nsw i32 %i.amz, 1
  %narrow281 = add nuw nsw i32 %i.anc, 42
  %i.and = zext nneg i32 %narrow281 to i64
  %i.ane = add nuw nsw i64 %i.anb, %i.and         ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ane
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !9
  %i.anh = zext i8 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ane
  %i.anj = load i16, ptr %i.ani, align 2, !tbaa !83
  %i.ank = zext i16 %i.anj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.anl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1231, !noalias !1234 ; 3 uses
  %i.anm = lshr i64 %i.anl, 3
  %i.ann = getelementptr inbounds nuw i8, ptr %6, i64 %i.anm ; 2 uses
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !9, !alias.scope !1234, !noalias !1231
  %i.anp = zext i8 %i.ano to i64
  %i.anq = and i64 %i.anl, 7
  %i.anr = shl nuw nsw i64 %i.ank, %i.anq
  %i.ans = or i64 %i.anr, %i.anp
  store i64 %i.ans, ptr %i.ann, align 1, !noalias !1231
  %i.ant = add i64 %i.anl, %i.anh                 ; 4 uses
  store i64 %i.ant, ptr %5, align 8, !tbaa !7, !alias.scope !1231, !noalias !1234
  %i.anu = shl nuw nsw i64 %i.anb, %i.ana
  %i.anv = sub nsw i64 %i.amw, %i.anu
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.anw = lshr i64 %i.ant, 3
  %i.anx = getelementptr inbounds nuw i8, ptr %6, i64 %i.anw ; 2 uses
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !9, !alias.scope !1239, !noalias !1236
  %i.anz = zext i8 %i.any to i64
  %i.aoa = and i64 %i.ant, 7
  %i.aob = shl nsw i64 %i.anv, %i.aoa
  %i.aoc = or i64 %i.aob, %i.anz
  store i64 %i.aoc, ptr %i.anx, align 1, !noalias !1236
  %i.aod = add i64 %i.ant, %i.ana
  store i64 %i.aod, ptr %5, align 8, !tbaa !7, !alias.scope !1236, !noalias !1239
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ane ; 2 uses
  %i.aof = load i32, ptr %i.aoe, align 4, !tbaa !3
  %i.aog = add i32 %i.aof, 1
  store i32 %i.aog, ptr %i.aoe, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoh = icmp samesign ult i64 %i.alz, 2114
  br i1 %i.aoh, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aoi = add nsw i64 %i.alz, -66                ; 2 uses
  %i.aoj = trunc nuw nsw i64 %i.aoi to i32
  %i.aok = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aoj, i1 true) ; 2 uses
  %i.aol = xor i32 %i.aok, 31
  %i.aom = sub nuw nsw i32 81, %i.aok
  %i.aon = zext nneg i32 %i.aom to i64            ; 3 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aon
  %i.aop = load i8, ptr %i.aoo, align 1, !tbaa !9
  %i.aoq = zext i8 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aon
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !83
  %i.aot = zext i16 %i.aos to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.aou = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1241, !noalias !1244 ; 3 uses
  %i.aov = lshr i64 %i.aou, 3
  %i.aow = getelementptr inbounds nuw i8, ptr %6, i64 %i.aov ; 2 uses
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !9, !alias.scope !1244, !noalias !1241
  %i.aoy = zext i8 %i.aox to i64
  %i.aoz = and i64 %i.aou, 7
  %i.apa = shl nuw nsw i64 %i.aot, %i.aoz
  %i.apb = or i64 %i.apa, %i.aoy
  store i64 %i.apb, ptr %i.aow, align 1, !noalias !1241
  %i.apc = add i64 %i.aou, %i.aoq                 ; 4 uses
  store i64 %i.apc, ptr %5, align 8, !tbaa !7, !alias.scope !1241, !noalias !1244
  %i.apd = zext nneg i32 %i.aol to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apd
  %i.ape = add nsw i64 %.neg.i26, %i.aoi
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.apf = lshr i64 %i.apc, 3
  %i.apg = getelementptr inbounds nuw i8, ptr %6, i64 %i.apf ; 2 uses
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !9, !alias.scope !1249, !noalias !1246
  %i.api = zext i8 %i.aph to i64
  %i.apj = and i64 %i.apc, 7
  %i.apk = shl nsw i64 %i.ape, %i.apj
  %i.apl = or i64 %i.apk, %i.api
  store i64 %i.apl, ptr %i.apg, align 1, !noalias !1246
  %i.apm = add i64 %i.apc, %i.apd
  store i64 %i.apm, ptr %5, align 8, !tbaa !7, !alias.scope !1246, !noalias !1249
  %i.apn = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aon ; 2 uses
  %i.apo = load i32, ptr %i.apn, align 4, !tbaa !3
  %i.app = add i32 %i.apo, 1
  store i32 %i.app, ptr %i.apn, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apq = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apr = zext i8 %i.apq to i64
  %i.aps = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apt = zext i16 %i.aps to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.apu = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1251, !noalias !1254 ; 3 uses
  %i.apv = lshr i64 %i.apu, 3
  %i.apw = getelementptr inbounds nuw i8, ptr %6, i64 %i.apv ; 2 uses
  %i.apx = load i8, ptr %i.apw, align 1, !tbaa !9, !alias.scope !1254, !noalias !1251
  %i.apy = zext i8 %i.apx to i64
  %i.apz = and i64 %i.apu, 7
  %i.aqa = shl nuw nsw i64 %i.apt, %i.apz
  %i.aqb = or i64 %i.aqa, %i.apy
  store i64 %i.aqb, ptr %i.apw, align 1, !noalias !1251
  %i.aqc = add i64 %i.apu, %i.apr                 ; 4 uses
  store i64 %i.aqc, ptr %5, align 8, !tbaa !7, !alias.scope !1251, !noalias !1254
  %i.aqd = add nsw i64 %i.alz, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %i.aqe = lshr i64 %i.aqc, 3
  %i.aqf = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqe ; 2 uses
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !9, !alias.scope !1259, !noalias !1256
  %i.aqh = zext i8 %i.aqg to i64
  %i.aqi = and i64 %i.aqc, 7
  %i.aqj = shl nuw nsw i64 %i.aqd, %i.aqi
  %i.aqk = or i64 %i.aqj, %i.aqh
  store i64 %i.aqk, ptr %i.aqf, align 1, !noalias !1256
  %i.aql = add i64 %i.aqc, 12
  store i64 %i.aql, ptr %5, align 8, !tbaa !7, !alias.scope !1256, !noalias !1259
  %i.aqm = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqn = add i32 %i.aqm, 1
  store i32 %i.aqn, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1261, !noalias !1264 ; 2 uses
  %i.aqo = add nsw i64 %.0331.i, -1
  %i.aqp = add i64 %i.aqo, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alz, 1
  %i.aqq = icmp eq i64 %i.aqp, %.7.i.lcssa635636
  br i1 %i.aqq, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alz, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqr = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.asa, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.asb, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqs = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64                  ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqu
  %i.aqw = load i8, ptr %i.aqv, align 1, !tbaa !9
  %i.aqx = zext i8 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqu
  %i.aqz = load i16, ptr %i.aqy, align 2, !tbaa !83
  %i.ara = zext i16 %i.aqz to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.arb = lshr i64 %i.aqr, 3
  %i.arc = getelementptr inbounds nuw i8, ptr %6, i64 %i.arb ; 2 uses
  %i.ard = load i8, ptr %i.arc, align 1, !tbaa !9, !alias.scope !1264, !noalias !1261
  %i.are = zext i8 %i.ard to i64
  %i.arf = and i64 %i.aqr, 7
  %i.arg = shl nuw nsw i64 %i.ara, %i.arf
  %i.arh = or i64 %i.arg, %i.are
  store i64 %i.arh, ptr %i.arc, align 1, !noalias !1261
  %i.ari = add i64 %i.aqr, %i.aqx                 ; 4 uses
  store i64 %i.ari, ptr %5, align 8, !tbaa !7, !alias.scope !1261, !noalias !1264
  %i.arj = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 1
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64                  ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %0, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !9
  %i.arp = zext i8 %i.aro to i64
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arm
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !83
  %i.ars = zext i16 %i.arr to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.art = lshr i64 %i.ari, 3
  %i.aru = getelementptr inbounds nuw i8, ptr %6, i64 %i.art ; 2 uses
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !9, !alias.scope !1268, !noalias !1266
  %i.arw = zext i8 %i.arv to i64
  %i.arx = and i64 %i.ari, 7
  %i.ary = shl nuw nsw i64 %i.ars, %i.arx
  %i.arz = or i64 %i.ary, %i.arw
  store i64 %i.arz, ptr %i.aru, align 1, !noalias !1266
  %i.asa = add i64 %i.ari, %i.arp                 ; 3 uses
  store i64 %i.asa, ptr %5, align 8, !tbaa !7, !alias.scope !1266, !noalias !1268
  %i.asb = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.asc = sub i64 %i.aly, %i.cr
  %i.asd = mul i64 %i.asc, 50
  %i.ase = icmp ugt i64 %i.asd, %i.alz
  %narrow.not130 = or i1 %i.cs, %i.ase
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asf = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asf, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asg = icmp ult i64 %i.alz, 22594
  br i1 %i.asg, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ash = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asi = zext i8 %i.ash to i64
  %i.asj = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ask = zext i16 %i.asj to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.asl = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1270, !noalias !1273 ; 3 uses
  %i.asm = lshr i64 %i.asl, 3
  %i.asn = getelementptr inbounds nuw i8, ptr %6, i64 %i.asm ; 2 uses
  %i.aso = load i8, ptr %i.asn, align 1, !tbaa !9, !alias.scope !1273, !noalias !1270
  %i.asp = zext i8 %i.aso to i64
  %i.asq = and i64 %i.asl, 7
  %i.asr = shl nuw nsw i64 %i.ask, %i.asq
  %i.ass = or i64 %i.asr, %i.asp
  store i64 %i.ass, ptr %i.asn, align 1, !noalias !1270
  %i.ast = add i64 %i.asl, %i.asi                 ; 4 uses
  store i64 %i.ast, ptr %5, align 8, !tbaa !7, !alias.scope !1270, !noalias !1273
  %i.asu = add nsw i64 %i.alz, -6210
  %i.asv = lshr i64 %i.ast, 3
  %i.asw = getelementptr inbounds nuw i8, ptr %6, i64 %i.asv ; 2 uses
  %i.asx = load i8, ptr %i.asw, align 1, !tbaa !9, !alias.scope !1275, !noalias !1278
  %i.asy = zext i8 %i.asx to i64
  %i.asz = and i64 %i.ast, 7
  %i.ata = shl nuw nsw i64 %i.asu, %i.asz
  %i.atb = or i64 %i.ata, %i.asy
  store i64 %i.atb, ptr %i.asw, align 1, !noalias !1278
  %i.atc = add i64 %i.ast, 14
  %i.atd = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.ate = add i32 %i.atd, 1
  store i32 %i.ate, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atf = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atg = zext i8 %i.atf to i64
  %i.ath = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.ati = zext i16 %i.ath to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.atj = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1280, !noalias !1283 ; 3 uses
  %i.atk = lshr i64 %i.atj, 3
  %i.atl = getelementptr inbounds nuw i8, ptr %6, i64 %i.atk ; 2 uses
  %i.atm = load i8, ptr %i.atl, align 1, !tbaa !9, !alias.scope !1283, !noalias !1280
  %i.atn = zext i8 %i.atm to i64
  %i.ato = and i64 %i.atj, 7
  %i.atp = shl nuw nsw i64 %i.ati, %i.ato
  %i.atq = or i64 %i.atp, %i.atn
  store i64 %i.atq, ptr %i.atl, align 1, !noalias !1280
  %i.atr = add i64 %i.atj, %i.atg                 ; 4 uses
  store i64 %i.atr, ptr %5, align 8, !tbaa !7, !alias.scope !1280, !noalias !1283
  %i.ats = add i64 %i.alz, -22594
  %i.att = lshr i64 %i.atr, 3
  %i.atu = getelementptr inbounds nuw i8, ptr %6, i64 %i.att ; 2 uses
  %i.atv = load i8, ptr %i.atu, align 1, !tbaa !9, !alias.scope !1285, !noalias !1288
  %i.atw = zext i8 %i.atv to i64
  %i.atx = and i64 %i.atr, 7
  %i.aty = shl i64 %i.ats, %i.atx
  %i.atz = or i64 %i.aty, %i.atw
  store i64 %i.atz, ptr %i.atu, align 1, !noalias !1288
  %i.aua = add i64 %i.atr, 24
  %i.aub = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.auc = add i32 %i.aub, 1
  store i32 %i.auc, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.atc, %bb.bq ], [ %i.aua, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aud = add nsw i64 %.0331.i, -1
  %i.aue = add i64 %i.aud, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alz, 1
  %i.auf = icmp eq i64 %i.aue, %.7.i.lcssa635636
  br i1 %i.auf, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alz, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avq, %bb.bs ] ; 3 uses
  %i.aug = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avp, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.auh = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64                  ; 2 uses
  %i.auk = getelementptr inbounds nuw i8, ptr %0, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !9
  %i.aum = zext i8 %i.aul to i64
  %i.aun = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auj
  %i.auo = load i16, ptr %i.aun, align 2, !tbaa !83
  %i.aup = zext i16 %i.auo to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.auq = lshr i64 %i.aug, 3
  %i.aur = getelementptr inbounds nuw i8, ptr %6, i64 %i.auq ; 2 uses
  %i.aus = load i8, ptr %i.aur, align 1, !tbaa !9, !alias.scope !1293, !noalias !1290
  %i.aut = zext i8 %i.aus to i64
  %i.auu = and i64 %i.aug, 7
  %i.auv = shl nuw nsw i64 %i.aup, %i.auu
  %i.auw = or i64 %i.auv, %i.aut
  store i64 %i.auw, ptr %i.aur, align 1, !noalias !1290
  %i.aux = add i64 %i.aug, %i.aum                 ; 4 uses
  store i64 %i.aux, ptr %5, align 8, !tbaa !7, !alias.scope !1290, !noalias !1293
  %i.auy = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auz = getelementptr inbounds nuw i8, ptr %i.auy, i64 1
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64                  ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %0, i64 %i.avb
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !9
  %i.ave = zext i8 %i.avd to i64
  %i.avf = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avb
  %i.avg = load i16, ptr %i.avf, align 2, !tbaa !83
  %i.avh = zext i16 %i.avg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.avi = lshr i64 %i.aux, 3
  %i.avj = getelementptr inbounds nuw i8, ptr %6, i64 %i.avi ; 2 uses
  %i.avk = load i8, ptr %i.avj, align 1, !tbaa !9, !alias.scope !1297, !noalias !1295
  %i.avl = zext i8 %i.avk to i64
  %i.avm = and i64 %i.aux, 7
  %i.avn = shl nuw nsw i64 %i.avh, %i.avm
  %i.avo = or i64 %i.avn, %i.avl
  store i64 %i.avo, ptr %i.avj, align 1, !noalias !1295
  %i.avp = add i64 %i.aux, %i.ave                 ; 3 uses
  store i64 %i.avp, ptr %5, align 8, !tbaa !7, !alias.scope !1295, !noalias !1297
  %i.avq = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.asa, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.asb, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avr = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64                  ; 2 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %0, i64 %i.avt
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !9
  %i.avw = zext i8 %i.avv to i64
  %i.avx = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avt
  %i.avy = load i16, ptr %i.avx, align 2, !tbaa !83
  %i.avz = zext i16 %i.avy to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.awa = lshr i64 %.epil.init646, 3
  %i.awb = getelementptr inbounds nuw i8, ptr %6, i64 %i.awa ; 2 uses
  %i.awc = load i8, ptr %i.awb, align 1, !tbaa !9, !alias.scope !1264, !noalias !1261
  %i.awd = zext i8 %i.awc to i64
  %i.awe = and i64 %.epil.init646, 7
  %i.awf = shl nuw nsw i64 %i.avz, %i.awe
  %i.awg = or i64 %i.awf, %i.awd
  store i64 %i.awg, ptr %i.awb, align 1, !noalias !1261
  %i.awh = add i64 %.epil.init646, %i.avw
  store i64 %i.awh, ptr %5, align 8, !tbaa !7, !alias.scope !1261, !noalias !1264
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avq, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avp, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alz to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awi = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64                  ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %0, i64 %i.awk
  %i.awm = load i8, ptr %i.awl, align 1, !tbaa !9
  %i.awn = zext i8 %i.awm to i64
  %i.awo = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awk
  %i.awp = load i16, ptr %i.awo, align 2, !tbaa !83
  %i.awq = zext i16 %i.awp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.awr = lshr i64 %.epil.init637, 3
  %i.aws = getelementptr inbounds nuw i8, ptr %6, i64 %i.awr ; 2 uses
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !9, !alias.scope !1293, !noalias !1290
  %i.awu = zext i8 %i.awt to i64
  %i.awv = and i64 %.epil.init637, 7
  %i.aww = shl nuw nsw i64 %i.awq, %i.awv
  %i.awx = or i64 %i.aww, %i.awu
  store i64 %i.awx, ptr %i.aws, align 1, !noalias !1290
  %i.awy = add i64 %.epil.init637, %i.awn
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !1290, !noalias !1293
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mr, %.thread74.thread118 ], [ %i.ajn, %bb.bd ], [ %i.ajn, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajn, %bb.bo ], [ %i.ajn, %.epil.preheader642 ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajn, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.awz = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.axa = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.axb = add i64 %i.axa, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.axc = lshr i64 %i.axa, 3
  %i.axd = getelementptr inbounds nuw i8, ptr %6, i64 %i.axc ; 2 uses
  %i.axe = load i8, ptr %i.axd, align 1, !tbaa !9, !alias.scope !1302, !noalias !1299
  %i.axf = zext i8 %i.axe to i64
  store i64 %i.axf, ptr %i.axd, align 1, !noalias !1299
  %i.axg = add i64 %i.axa, 1                      ; 3 uses
  store i64 %i.axg, ptr %5, align 8, !tbaa !7, !alias.scope !1299, !noalias !1302
  %i.axh = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axh, i64 4, i64 5        ; 2 uses
  %i.axi = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.axj = lshr i64 %i.axg, 3
  %i.axk = getelementptr inbounds nuw i8, ptr %6, i64 %i.axj ; 2 uses
  %i.axl = load i8, ptr %i.axk, align 1, !tbaa !9, !alias.scope !1307, !noalias !1304
  %i.axm = zext i8 %i.axl to i64
  %i.axn = and i64 %i.axg, 7
  %i.axo = shl nuw nsw i64 %i.axi, %i.axn
  %i.axp = or i64 %i.axo, %i.axm
  store i64 %i.axp, ptr %i.axk, align 1, !noalias !1304
  store i64 %i.axb, ptr %5, align 8, !tbaa !7, !alias.scope !1304, !noalias !1307
  %i.axq = shl nuw nsw i64 %.0.i55, 2
  %i.axr = add nsw i64 %i.awz, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  %i.axs = lshr i64 %i.axb, 3
  %i.axt = getelementptr inbounds nuw i8, ptr %6, i64 %i.axs ; 2 uses
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !9, !alias.scope !1312, !noalias !1309
  %i.axv = zext i8 %i.axu to i64
  %i.axw = and i64 %i.axb, 7
  %i.axx = shl nuw nsw i64 %i.axr, %i.axw
  %i.axy = or i64 %i.axx, %i.axv
  store i64 %i.axy, ptr %i.axt, align 1, !noalias !1309
  %i.axz = add i64 %i.axb, %i.axq                 ; 4 uses
  store i64 %i.axz, ptr %5, align 8, !tbaa !7, !alias.scope !1309, !noalias !1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.aya = lshr i64 %i.axz, 3
  %i.ayb = getelementptr inbounds nuw i8, ptr %6, i64 %i.aya ; 2 uses
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !9, !alias.scope !1317, !noalias !1314
  %i.ayd = zext i8 %i.ayc to i64
  store i64 %i.ayd, ptr %i.ayb, align 1, !noalias !1314
  %i.aye = add i64 %i.axz, 1                      ; 2 uses
  store i64 %i.aye, ptr %5, align 8, !tbaa !7, !alias.scope !1314, !noalias !1317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.ayf = lshr i64 %i.aye, 3
  %i.ayg = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayf ; 2 uses
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !9, !alias.scope !1322, !noalias !1319
  %i.ayi = zext i8 %i.ayh to i64
  store i64 %i.ayi, ptr %i.ayg, align 1, !noalias !1319
  %i.ayj = add i64 %i.axz, 14
  store i64 %i.ayj, ptr %5, align 8, !tbaa !7, !alias.scope !1319, !noalias !1322
  %i.ayk = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.awz, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL10UpdateBitsmjmPh.exit.outer

bb.bu:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %.not397.i = icmp eq i32 %3, 0
  br i1 %.not397.i, label %bb.bv, label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.bn, align 8, !tbaa !9
  store i64 0, ptr %i.aq, align 8, !tbaa !61
  tail call fastcc void @_ZL30BuildAndStoreCommandPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPmPh(ptr noundef %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.bn)
  br label %_ZL30BrotliCompressFragmentFastImplPN13duckdb_brotli18BrotliOnePassArenaEPKhmiPimPmPh.exit
end_hunk_3
