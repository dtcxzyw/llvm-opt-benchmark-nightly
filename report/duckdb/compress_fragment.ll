inline.NumInlined: 19
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZL31BrotliCompressFragmentFastImpl9PN13duckdb_brotli18BrotliOnePassArenaEPKhmiPiPmPh:bb.a
  %i.aec = shl nuw nsw i64 %i.adj, %i.adi
  %i.aed = sub nsw i64 %i.ade, %i.aec
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.aee = lshr i64 %i.aeb, 3
  %i.aef = getelementptr inbounds nuw i8, ptr %6, i64 %i.aee ; 2 uses
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !9, !alias.scope !239, !noalias !236
  %i.aeh = zext i8 %i.aeg to i64
  %i.aei = and i64 %i.aeb, 7
  %i.aej = shl nsw i64 %i.aed, %i.aei
  %i.aek = or i64 %i.aej, %i.aeh
  store i64 %i.aek, ptr %i.aef, align 1, !noalias !236
  %i.ael = add i64 %i.aeb, %i.adi
  store i64 %i.ael, ptr %5, align 8, !tbaa !7, !alias.scope !236, !noalias !239
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adm ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !3
  %i.aeo = add i32 %i.aen, 1
  store i32 %i.aeo, ptr %i.aem, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aep = icmp ult i64 %i.acg, 2118
  br i1 %i.aep, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aeq = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aer = trunc nuw nsw i64 %i.aeq to i32
  %i.aes = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aer, i1 true) ; 2 uses
  %i.aet = xor i32 %i.aes, 31
  %i.aeu = sub nuw nsw i32 59, %i.aes
  %i.aev = zext nneg i32 %i.aeu to i64            ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !9
  %i.aey = zext i8 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aev
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !83
  %i.afb = zext i16 %i.afa to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.afc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !241, !noalias !244 ; 3 uses
  %i.afd = lshr i64 %i.afc, 3
  %i.afe = getelementptr inbounds nuw i8, ptr %6, i64 %i.afd ; 2 uses
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !9, !alias.scope !244, !noalias !241
  %i.afg = zext i8 %i.aff to i64
  %i.afh = and i64 %i.afc, 7
  %i.afi = shl nuw nsw i64 %i.afb, %i.afh
  %i.afj = or i64 %i.afi, %i.afg
  store i64 %i.afj, ptr %i.afe, align 1, !noalias !241
  %i.afk = add i64 %i.afc, %i.aey                 ; 4 uses
  store i64 %i.afk, ptr %5, align 8, !tbaa !7, !alias.scope !241, !noalias !244
  %i.afl = zext nneg i32 %i.aet to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afl
  %i.afm = add nsw i64 %.neg.i45, %i.aeq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  %i.afn = lshr i64 %i.afk, 3
  %i.afo = getelementptr inbounds nuw i8, ptr %6, i64 %i.afn ; 2 uses
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !9, !alias.scope !249, !noalias !246
  %i.afq = zext i8 %i.afp to i64
  %i.afr = and i64 %i.afk, 7
  %i.afs = shl nsw i64 %i.afm, %i.afr
  %i.aft = or i64 %i.afs, %i.afq
  store i64 %i.aft, ptr %i.afo, align 1, !noalias !246
  %i.afu = add i64 %i.afk, %i.afl
  store i64 %i.afu, ptr %5, align 8, !tbaa !7, !alias.scope !246, !noalias !249
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aev ; 2 uses
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !3
  %i.afx = add i32 %i.afw, 1
  store i32 %i.afx, ptr %i.afv, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.afy = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.afz = zext i8 %i.afy to i64
  %i.aga = load i16, ptr %i.co, align 2, !tbaa !83
  %i.agb = zext i16 %i.aga to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.agc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !251, !noalias !254 ; 3 uses
  %i.agd = lshr i64 %i.agc, 3
  %i.age = getelementptr inbounds nuw i8, ptr %6, i64 %i.agd ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !9, !alias.scope !254, !noalias !251
  %i.agg = zext i8 %i.agf to i64
  %i.agh = and i64 %i.agc, 7
  %i.agi = shl nuw nsw i64 %i.agb, %i.agh
  %i.agj = or i64 %i.agi, %i.agg
  store i64 %i.agj, ptr %i.age, align 1, !noalias !251
  %i.agk = add i64 %i.agc, %i.afz                 ; 4 uses
  store i64 %i.agk, ptr %5, align 8, !tbaa !7, !alias.scope !251, !noalias !254
  %i.agl = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.agm = lshr i64 %i.agk, 3
  %i.agn = getelementptr inbounds nuw i8, ptr %6, i64 %i.agm ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !9, !alias.scope !259, !noalias !256
  %i.agp = zext i8 %i.ago to i64
  %i.agq = and i64 %i.agk, 7
  %i.agr = shl i64 %i.agl, %i.agq
  %i.ags = or i64 %i.agr, %i.agp
  store i64 %i.ags, ptr %i.agn, align 1, !noalias !256
  %i.agt = add i64 %i.agk, 24
  store i64 %i.agt, ptr %5, align 8, !tbaa !7, !alias.scope !256, !noalias !259
  %i.agu = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agv = add i32 %i.agu, 1
  store i32 %i.agv, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ace, 32
  %i.agw = ashr exact i64 %sext391.i, 32
  %i.agx = add nsw i64 %i.agw, 3                  ; 3 uses
  %i.agy = trunc i64 %i.agx to i32
  %i.agz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agy, i1 true) ; 2 uses
  %i.aha = sub nsw i32 30, %i.agz
  %i.ahb = zext i32 %i.aha to i64                 ; 3 uses
  %i.ahc = lshr i64 %i.agx, %i.ahb
  %i.ahd = and i64 %i.ahc, 1                      ; 2 uses
  %i.ahe = or disjoint i64 %i.ahd, 2
  %i.ahf = shl i64 %i.ahe, %i.ahb
  %i.ahg = shl nuw nsw i32 %i.agz, 1
  %i.ahh = sub nsw i32 58, %i.ahg
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = or disjoint i64 %i.ahd, %i.ahi
  %i.ahk = add nuw nsw i64 %i.ahj, 80             ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !9
  %i.ahn = zext i8 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahk
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !83
  %i.ahq = zext i16 %i.ahp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  %i.ahr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !261, !noalias !264 ; 3 uses
  %i.ahs = lshr i64 %i.ahr, 3
  %i.aht = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahs ; 2 uses
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !9, !alias.scope !264, !noalias !261
  %i.ahv = zext i8 %i.ahu to i64
  %i.ahw = and i64 %i.ahr, 7
  %i.ahx = shl nuw nsw i64 %i.ahq, %i.ahw
  %i.ahy = or i64 %i.ahx, %i.ahv
  store i64 %i.ahy, ptr %i.aht, align 1, !noalias !261
  %i.ahz = add i64 %i.ahr, %i.ahn                 ; 4 uses
  store i64 %i.ahz, ptr %5, align 8, !tbaa !7, !alias.scope !261, !noalias !264
  %i.aia = sub i64 %i.agx, %i.ahf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %i.aib = lshr i64 %i.ahz, 3
  %i.aic = getelementptr inbounds nuw i8, ptr %6, i64 %i.aib ; 2 uses
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !9, !alias.scope !269, !noalias !266
  %i.aie = zext i8 %i.aid to i64
  %i.aif = and i64 %i.ahz, 7
  %i.aig = shl i64 %i.aia, %i.aif
  %i.aih = or i64 %i.aig, %i.aie
  store i64 %i.aih, ptr %i.aic, align 1, !noalias !266
  %i.aii = add i64 %i.ahz, %i.ahb
  store i64 %i.aii, ptr %5, align 8, !tbaa !7, !alias.scope !266, !noalias !269
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahk ; 2 uses
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !3
  %i.ail = add i32 %i.aik, 1
  store i32 %i.ail, ptr %i.aij, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ach, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aim = getelementptr inbounds i8, ptr %i.ach, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aim, align 1 ; 4 uses
  %i.ain = mul i64 %.0.copyload.i44, 8503243848024064
  %i.aio = lshr i64 %i.ain, 55
  %i.aip = lshr i64 %.0.copyload.i44, 24
  %i.aiq = mul i64 %i.aip, 8503243848024064
  %i.air = lshr i64 %i.aiq, 55
  %i.ais = ptrtoint ptr %i.ach to i64
  %i.ait = sub i64 %i.ais, %i.ca
  %i.aiu = trunc i64 %i.ait to i32                ; 4 uses
  %i.aiv = add i32 %i.aiu, -3
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio
  store i32 %i.aiv, ptr %i.aiw, align 4, !tbaa !3
  %i.aix = lshr i64 %.0.copyload.i44, 8
  %i.aiy = mul i64 %i.aix, 8503243848024064
  %i.aiz = lshr i64 %i.aiy, 55
  %i.aja = add i32 %i.aiu, -2
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiz
  store i32 %i.aja, ptr %i.ajb, align 4, !tbaa !3
  %i.ajc = lshr i64 %.0.copyload.i44, 16
  %i.ajd = mul i64 %i.ajc, 8503243848024064
  %i.aje = lshr i64 %i.ajd, 55
  %i.ajf = add i32 %i.aiu, -1
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aje
  store i32 %i.ajf, ptr %i.ajg, align 4, !tbaa !3
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air ; 2 uses
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !3
  store i32 %i.aiu, ptr %i.ajh, align 4, !tbaa !3
  %.pn = sext i32 %i.aji to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ach, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajj = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajj, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ach, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hu, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajk = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajl = tail call noundef i64 @llvm.umin.i64(i64 %i.ajk, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajk, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajm = add i64 %i.ajl, %.0332.i               ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, 1048577
  br i1 %i.ajn, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.aju, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !9
  %i.ajq = zext i8 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajq ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !3
  %i.ajt = add i32 %i.ajs, 1
  store i32 %i.ajt, ptr %i.ajr, align 4, !tbaa !3
  %i.aju = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajv = icmp samesign ult i64 %i.aju, %i.ajl
  br i1 %i.ajv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajw = trunc nuw nsw i64 %i.ajl to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajw, 42
  %i.ajx = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.ajy = icmp ult i64 %i.ajk, 10966
  br i1 %i.ajy, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.ajx to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.akb = uitofp nneg i32 %i.ajx to double       ; 2 uses
  %i.akc = tail call double @log2(double noundef %i.akb) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.akb, %bb.ax ]
  %.0.i22.i = phi double [ %i.aka, %._crit_edge.thread.i ], [ %i.akc, %bb.ax ]
  %i.akd = fadd double %.0.i22.i, 5.000000e-01
  %i.ake = tail call double @llvm.fmuladd.f64(double %i.akd, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.ake, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.aks, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akt, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !3 ; 3 uses
  %i.akh = uitofp i32 %i.akg to double            ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !9
  %i.akk = uitofp i8 %i.akj to double
  %i.akl = icmp ult i32 %i.akg, 256
  br i1 %i.akl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akm = zext nneg i32 %i.akg to i64
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akm
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.akp = tail call double @log2(double noundef %i.akh) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.ako, %bb.az ], [ %i.akp, %bb.ba ]
  %i.akq = fadd double %.0.i.i, %i.akk
  %i.akr = fneg double %i.akh
  %i.aks = tail call double @llvm.fmuladd.f64(double %i.akr, double %i.akq, double %.026.i) ; 2 uses
  %i.akt = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akt, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.aku = fcmp ult double %i.aks, 0.000000e+00
  br i1 %i.aku, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.akv = trunc nuw nsw i64 %i.ajm to i32
  %i.akw = add nsw i32 %i.akv, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alq, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akw, %bb.bb ], [ %i.alr, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.als, %bb.bc ] ; 3 uses
  %i.akx = lshr i64 %.02528.i, 3
  %i.aky = and i64 %.02528.i, 7                   ; 3 uses
  %i.akz = sub nuw nsw i64 8, %i.aky
  %i.ala = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.akz) ; 4 uses
  %i.alb = add nuw nsw i64 %i.ala, %i.aky
  %i.alc = trunc nuw nsw i64 %i.alb to i32
  %notmask.i = shl nsw i32 -1, %i.alc
  %i.ald = trunc nuw nsw i64 %i.aky to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.ald
  %i.ale = xor i32 %notmask26.i, -1
  %i.alf = or i32 %notmask.i, %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %6, i64 %i.akx ; 2 uses
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !9
  %i.ali = zext i8 %i.alh to i32
  %i.alj = and i32 %i.alf, %i.ali
  %i.alk = trunc nuw nsw i64 %i.ala to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.alk
  %i.all = xor i32 %notmask27.i, -1
  %i.alm = and i32 %.02429.i, %i.all
  %i.aln = shl nuw nsw i32 %i.alm, %i.ald
  %i.alo = or i32 %i.alj, %i.aln
  %i.alp = trunc i32 %i.alo to i8
  store i8 %i.alp, ptr %i.alg, align 1, !tbaa !9
  %i.alq = sub i64 %.030.i, %i.ala                ; 2 uses
  %i.alr = lshr i32 %.02429.i, %i.alk
  %i.als = add i64 %i.ala, %.02528.i
  %.not.i54 = icmp eq i64 %i.alq, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alt = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alt, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alu = ptrtoint ptr %i.ct to i64
  %i.alv = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alw = sub i64 %i.alu, %i.alv                 ; 18 uses
  %i.alx = icmp ult i64 %i.alw, 6210
  br i1 %i.alx, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.aly = icmp samesign ult i64 %i.alw, 6
  br i1 %i.aly, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.alz = or disjoint i64 %i.alw, 40             ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !9
  %i.amc = zext i8 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.alz
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !83
  %i.amf = zext i16 %i.ame to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %i.amg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !275, !noalias !278 ; 3 uses
  %i.amh = lshr i64 %i.amg, 3
  %i.ami = getelementptr inbounds nuw i8, ptr %6, i64 %i.amh ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !9, !alias.scope !278, !noalias !275
  %i.amk = zext i8 %i.amj to i64
  %i.aml = and i64 %i.amg, 7
  %i.amm = shl nuw nsw i64 %i.amf, %i.aml
  %i.amn = or i64 %i.amm, %i.amk
  store i64 %i.amn, ptr %i.ami, align 1, !noalias !275
  %i.amo = add i64 %i.amg, %i.amc
  store i64 %i.amo, ptr %5, align 8, !tbaa !7, !alias.scope !275, !noalias !278
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.alz ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !3
  %i.amr = add i32 %i.amq, 1
  store i32 %i.amr, ptr %i.amp, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.ams = icmp samesign ult i64 %i.alw, 130
  br i1 %i.ams, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amt = add nsw i64 %i.alw, -2                 ; 3 uses
  %i.amu = trunc nuw nsw i64 %i.amt to i32
  %i.amv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amu, i1 true)
  %i.amw = sub nuw nsw i32 30, %i.amv             ; 2 uses
  %i.amx = zext nneg i32 %i.amw to i64            ; 3 uses
  %i.amy = lshr i64 %i.amt, %i.amx                ; 2 uses
  %i.amz = shl nuw nsw i32 %i.amw, 1
  %narrow281 = add nuw nsw i32 %i.amz, 42
  %i.ana = zext nneg i32 %narrow281 to i64
  %i.anb = add nuw nsw i64 %i.amy, %i.ana         ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anb
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !9
  %i.ane = zext i8 %i.and to i64
  %i.anf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anb
  %i.ang = load i16, ptr %i.anf, align 2, !tbaa !83
  %i.anh = zext i16 %i.ang to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.ani = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !280, !noalias !283 ; 3 uses
  %i.anj = lshr i64 %i.ani, 3
  %i.ank = getelementptr inbounds nuw i8, ptr %6, i64 %i.anj ; 2 uses
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !9, !alias.scope !283, !noalias !280
  %i.anm = zext i8 %i.anl to i64
  %i.ann = and i64 %i.ani, 7
  %i.ano = shl nuw nsw i64 %i.anh, %i.ann
  %i.anp = or i64 %i.ano, %i.anm
  store i64 %i.anp, ptr %i.ank, align 1, !noalias !280
  %i.anq = add i64 %i.ani, %i.ane                 ; 4 uses
  store i64 %i.anq, ptr %5, align 8, !tbaa !7, !alias.scope !280, !noalias !283
  %i.anr = shl nuw nsw i64 %i.amy, %i.amx
  %i.ans = sub nsw i64 %i.amt, %i.anr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.ant = lshr i64 %i.anq, 3
  %i.anu = getelementptr inbounds nuw i8, ptr %6, i64 %i.ant ; 2 uses
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !9, !alias.scope !288, !noalias !285
  %i.anw = zext i8 %i.anv to i64
  %i.anx = and i64 %i.anq, 7
  %i.any = shl nsw i64 %i.ans, %i.anx
  %i.anz = or i64 %i.any, %i.anw
  store i64 %i.anz, ptr %i.anu, align 1, !noalias !285
  %i.aoa = add i64 %i.anq, %i.amx
  store i64 %i.aoa, ptr %5, align 8, !tbaa !7, !alias.scope !285, !noalias !288
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anb ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !3
  %i.aod = add i32 %i.aoc, 1
  store i32 %i.aod, ptr %i.aob, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoe = icmp samesign ult i64 %i.alw, 2114
  br i1 %i.aoe, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aof = add nsw i64 %i.alw, -66                ; 2 uses
  %i.aog = trunc nuw nsw i64 %i.aof to i32
  %i.aoh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aog, i1 true) ; 2 uses
  %i.aoi = xor i32 %i.aoh, 31
  %i.aoj = sub nuw nsw i32 81, %i.aoh
  %i.aok = zext nneg i32 %i.aoj to i64            ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !9
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aok
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !83
  %i.aoq = zext i16 %i.aop to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !293)
  %i.aor = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !290, !noalias !293 ; 3 uses
  %i.aos = lshr i64 %i.aor, 3
  %i.aot = getelementptr inbounds nuw i8, ptr %6, i64 %i.aos ; 2 uses
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !9, !alias.scope !293, !noalias !290
  %i.aov = zext i8 %i.aou to i64
  %i.aow = and i64 %i.aor, 7
  %i.aox = shl nuw nsw i64 %i.aoq, %i.aow
  %i.aoy = or i64 %i.aox, %i.aov
  store i64 %i.aoy, ptr %i.aot, align 1, !noalias !290
  %i.aoz = add i64 %i.aor, %i.aon                 ; 4 uses
  store i64 %i.aoz, ptr %5, align 8, !tbaa !7, !alias.scope !290, !noalias !293
  %i.apa = zext nneg i32 %i.aoi to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apa
  %i.apb = add nsw i64 %.neg.i26, %i.aof
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  %i.apc = lshr i64 %i.aoz, 3
  %i.apd = getelementptr inbounds nuw i8, ptr %6, i64 %i.apc ; 2 uses
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !9, !alias.scope !298, !noalias !295
  %i.apf = zext i8 %i.ape to i64
  %i.apg = and i64 %i.aoz, 7
  %i.aph = shl nsw i64 %i.apb, %i.apg
  %i.api = or i64 %i.aph, %i.apf
  store i64 %i.api, ptr %i.apd, align 1, !noalias !295
  %i.apj = add i64 %i.aoz, %i.apa
  store i64 %i.apj, ptr %5, align 8, !tbaa !7, !alias.scope !295, !noalias !298
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aok ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !3
  %i.apm = add i32 %i.apl, 1
  store i32 %i.apm, ptr %i.apk, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apn = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apo = zext i8 %i.apn to i64
  %i.app = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apq = zext i16 %i.app to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !303)
  %i.apr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !300, !noalias !303 ; 3 uses
  %i.aps = lshr i64 %i.apr, 3
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 %i.aps ; 2 uses
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !9, !alias.scope !303, !noalias !300
  %i.apv = zext i8 %i.apu to i64
  %i.apw = and i64 %i.apr, 7
  %i.apx = shl nuw nsw i64 %i.apq, %i.apw
  %i.apy = or i64 %i.apx, %i.apv
  store i64 %i.apy, ptr %i.apt, align 1, !noalias !300
  %i.apz = add i64 %i.apr, %i.apo                 ; 4 uses
  store i64 %i.apz, ptr %5, align 8, !tbaa !7, !alias.scope !300, !noalias !303
  %i.aqa = add nsw i64 %i.alw, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  %i.aqb = lshr i64 %i.apz, 3
  %i.aqc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqb ; 2 uses
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !9, !alias.scope !308, !noalias !305
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = and i64 %i.apz, 7
  %i.aqg = shl nuw nsw i64 %i.aqa, %i.aqf
  %i.aqh = or i64 %i.aqg, %i.aqe
  store i64 %i.aqh, ptr %i.aqc, align 1, !noalias !305
  %i.aqi = add i64 %i.apz, 12
  store i64 %i.aqi, ptr %5, align 8, !tbaa !7, !alias.scope !305, !noalias !308
  %i.aqj = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqk = add i32 %i.aqj, 1
  store i32 %i.aqk, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !310, !noalias !313 ; 2 uses
  %i.aql = add nsw i64 %.0331.i, -1
  %i.aqm = add i64 %i.aql, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alw, 1
  %i.aqn = icmp eq i64 %i.aqm, %.7.i.lcssa635636
  br i1 %i.aqn, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alw, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqo = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.arx, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.ary, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqp = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !9
  %i.aqr = zext i8 %i.aqq to i64                  ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqr
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqr
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !83
  %i.aqx = zext i16 %i.aqw to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.aqy = lshr i64 %i.aqo, 3
  %i.aqz = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqy ; 2 uses
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !9, !alias.scope !313, !noalias !310
  %i.arb = zext i8 %i.ara to i64
  %i.arc = and i64 %i.aqo, 7
  %i.ard = shl nuw nsw i64 %i.aqx, %i.arc
  %i.are = or i64 %i.ard, %i.arb
  store i64 %i.are, ptr %i.aqz, align 1, !noalias !310
  %i.arf = add i64 %i.aqo, %i.aqu                 ; 4 uses
  store i64 %i.arf, ptr %5, align 8, !tbaa !7, !alias.scope !310, !noalias !313
  %i.arg = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 1
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !9
  %i.arj = zext i8 %i.ari to i64                  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 %i.arj
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arj
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !83
  %i.arp = zext i16 %i.aro to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.arq = lshr i64 %i.arf, 3
  %i.arr = getelementptr inbounds nuw i8, ptr %6, i64 %i.arq ; 2 uses
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !9, !alias.scope !317, !noalias !315
  %i.art = zext i8 %i.ars to i64
  %i.aru = and i64 %i.arf, 7
  %i.arv = shl nuw nsw i64 %i.arp, %i.aru
  %i.arw = or i64 %i.arv, %i.art
  store i64 %i.arw, ptr %i.arr, align 1, !noalias !315
  %i.arx = add i64 %i.arf, %i.arm                 ; 3 uses
  store i64 %i.arx, ptr %5, align 8, !tbaa !7, !alias.scope !315, !noalias !317
  %i.ary = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.arz = sub i64 %i.alv, %i.cr
  %i.asa = mul i64 %i.arz, 50
  %i.asb = icmp ugt i64 %i.asa, %i.alw
  %narrow.not130 = or i1 %i.cs, %i.asb
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asc = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asc, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asd = icmp ult i64 %i.alw, 22594
  br i1 %i.asd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ase = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asf = zext i8 %i.ase to i64
  %i.asg = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ash = zext i16 %i.asg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  %i.asi = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !319, !noalias !322 ; 3 uses
  %i.asj = lshr i64 %i.asi, 3
  %i.ask = getelementptr inbounds nuw i8, ptr %6, i64 %i.asj ; 2 uses
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !9, !alias.scope !322, !noalias !319
  %i.asm = zext i8 %i.asl to i64
  %i.asn = and i64 %i.asi, 7
  %i.aso = shl nuw nsw i64 %i.ash, %i.asn
  %i.asp = or i64 %i.aso, %i.asm
  store i64 %i.asp, ptr %i.ask, align 1, !noalias !319
  %i.asq = add i64 %i.asi, %i.asf                 ; 4 uses
  store i64 %i.asq, ptr %5, align 8, !tbaa !7, !alias.scope !319, !noalias !322
  %i.asr = add nsw i64 %i.alw, -6210
  %i.ass = lshr i64 %i.asq, 3
  %i.ast = getelementptr inbounds nuw i8, ptr %6, i64 %i.ass ; 2 uses
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !9, !alias.scope !324, !noalias !327
  %i.asv = zext i8 %i.asu to i64
  %i.asw = and i64 %i.asq, 7
  %i.asx = shl nuw nsw i64 %i.asr, %i.asw
  %i.asy = or i64 %i.asx, %i.asv
  store i64 %i.asy, ptr %i.ast, align 1, !noalias !327
  %i.asz = add i64 %i.asq, 14
  %i.ata = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.atb = add i32 %i.ata, 1
  store i32 %i.atb, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atd = zext i8 %i.atc to i64
  %i.ate = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.atf = zext i16 %i.ate to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !329)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.atg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !329, !noalias !332 ; 3 uses
  %i.ath = lshr i64 %i.atg, 3
  %i.ati = getelementptr inbounds nuw i8, ptr %6, i64 %i.ath ; 2 uses
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !9, !alias.scope !332, !noalias !329
  %i.atk = zext i8 %i.atj to i64
  %i.atl = and i64 %i.atg, 7
  %i.atm = shl nuw nsw i64 %i.atf, %i.atl
  %i.atn = or i64 %i.atm, %i.atk
  store i64 %i.atn, ptr %i.ati, align 1, !noalias !329
  %i.ato = add i64 %i.atg, %i.atd                 ; 4 uses
  store i64 %i.ato, ptr %5, align 8, !tbaa !7, !alias.scope !329, !noalias !332
  %i.atp = add i64 %i.alw, -22594
  %i.atq = lshr i64 %i.ato, 3
  %i.atr = getelementptr inbounds nuw i8, ptr %6, i64 %i.atq ; 2 uses
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !9, !alias.scope !334, !noalias !337
  %i.att = zext i8 %i.ats to i64
  %i.atu = and i64 %i.ato, 7
  %i.atv = shl i64 %i.atp, %i.atu
  %i.atw = or i64 %i.atv, %i.att
  store i64 %i.atw, ptr %i.atr, align 1, !noalias !337
  %i.atx = add i64 %i.ato, 24
  %i.aty = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.atz = add i32 %i.aty, 1
  store i32 %i.atz, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.asz, %bb.bq ], [ %i.atx, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aua = add nsw i64 %.0331.i, -1
  %i.aub = add i64 %i.aua, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alw, 1
  %i.auc = icmp eq i64 %i.aub, %.7.i.lcssa635636
  br i1 %i.auc, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alw, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avn, %bb.bs ] ; 3 uses
  %i.aud = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avm, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.aue = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !9
  %i.aug = zext i8 %i.auf to i64                  ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 %i.aug
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aug
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !83
  %i.aum = zext i16 %i.aul to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.aun = lshr i64 %i.aud, 3
  %i.auo = getelementptr inbounds nuw i8, ptr %6, i64 %i.aun ; 2 uses
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !9, !alias.scope !342, !noalias !339
  %i.auq = zext i8 %i.aup to i64
  %i.aur = and i64 %i.aud, 7
  %i.aus = shl nuw nsw i64 %i.aum, %i.aur
  %i.aut = or i64 %i.aus, %i.auq
  store i64 %i.aut, ptr %i.auo, align 1, !noalias !339
  %i.auu = add i64 %i.aud, %i.auj                 ; 4 uses
  store i64 %i.auu, ptr %5, align 8, !tbaa !7, !alias.scope !339, !noalias !342
  %i.auv = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !9
  %i.auy = zext i8 %i.aux to i64                  ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auy
  %i.avd = load i16, ptr %i.avc, align 2, !tbaa !83
  %i.ave = zext i16 %i.avd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %i.avf = lshr i64 %i.auu, 3
  %i.avg = getelementptr inbounds nuw i8, ptr %6, i64 %i.avf ; 2 uses
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !9, !alias.scope !346, !noalias !344
  %i.avi = zext i8 %i.avh to i64
  %i.avj = and i64 %i.auu, 7
  %i.avk = shl nuw nsw i64 %i.ave, %i.avj
  %i.avl = or i64 %i.avk, %i.avi
  store i64 %i.avl, ptr %i.avg, align 1, !noalias !344
  %i.avm = add i64 %i.auu, %i.avb                 ; 3 uses
  store i64 %i.avm, ptr %5, align 8, !tbaa !7, !alias.scope !344, !noalias !346
  %i.avn = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.arx, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.ary, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !9
  %i.avq = zext i8 %i.avp to i64                  ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avq
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !83
  %i.avw = zext i16 %i.avv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.avx = lshr i64 %.epil.init646, 3
  %i.avy = getelementptr inbounds nuw i8, ptr %6, i64 %i.avx ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !9, !alias.scope !313, !noalias !310
  %i.awa = zext i8 %i.avz to i64
  %i.awb = and i64 %.epil.init646, 7
  %i.awc = shl nuw nsw i64 %i.avw, %i.awb
  %i.awd = or i64 %i.awc, %i.awa
  store i64 %i.awd, ptr %i.avy, align 1, !noalias !310
  %i.awe = add i64 %.epil.init646, %i.avt
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !310, !noalias !313
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avm, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !9
  %i.awh = zext i8 %i.awg to i64                  ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 %i.awh
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awh
  %i.awm = load i16, ptr %i.awl, align 2, !tbaa !83
  %i.awn = zext i16 %i.awm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.awo = lshr i64 %.epil.init637, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !9, !alias.scope !342, !noalias !339
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %.epil.init637, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !339
  %i.awv = add i64 %.epil.init637, %i.awk
  store i64 %i.awv, ptr %5, align 8, !tbaa !7, !alias.scope !339, !noalias !342
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mo, %.thread74.thread118 ], [ %i.ajk, %bb.bd ], [ %i.ajk, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajk, %bb.bo ], [ %i.ajk, %.epil.preheader642 ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajk, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.aww = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.awx = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.awy = add i64 %i.awx, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %i.awz = lshr i64 %i.awx, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !9, !alias.scope !351, !noalias !348
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !348
  %i.axd = add i64 %i.awx, 1                      ; 3 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !7, !alias.scope !348, !noalias !351
  %i.axe = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axe, i64 4, i64 5        ; 2 uses
  %i.axf = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.axg = lshr i64 %i.axd, 3
  %i.axh = getelementptr inbounds nuw i8, ptr %6, i64 %i.axg ; 2 uses
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !9, !alias.scope !356, !noalias !353
  %i.axj = zext i8 %i.axi to i64
  %i.axk = and i64 %i.axd, 7
  %i.axl = shl nuw nsw i64 %i.axf, %i.axk
  %i.axm = or i64 %i.axl, %i.axj
  store i64 %i.axm, ptr %i.axh, align 1, !noalias !353
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !353, !noalias !356
  %i.axn = shl nuw nsw i64 %.0.i55, 2
  %i.axo = add nsw i64 %i.aww, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.axp = lshr i64 %i.awy, 3
  %i.axq = getelementptr inbounds nuw i8, ptr %6, i64 %i.axp ; 2 uses
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !9, !alias.scope !361, !noalias !358
  %i.axs = zext i8 %i.axr to i64
  %i.axt = and i64 %i.awy, 7
  %i.axu = shl nuw nsw i64 %i.axo, %i.axt
  %i.axv = or i64 %i.axu, %i.axs
  store i64 %i.axv, ptr %i.axq, align 1, !noalias !358
  %i.axw = add i64 %i.awy, %i.axn                 ; 4 uses
  store i64 %i.axw, ptr %5, align 8, !tbaa !7, !alias.scope !358, !noalias !361
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !366)
  %i.axx = lshr i64 %i.axw, 3
  %i.axy = getelementptr inbounds nuw i8, ptr %6, i64 %i.axx ; 2 uses
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !9, !alias.scope !366, !noalias !363
  %i.aya = zext i8 %i.axz to i64
  store i64 %i.aya, ptr %i.axy, align 1, !noalias !363
  %i.ayb = add i64 %i.axw, 1                      ; 2 uses
  store i64 %i.ayb, ptr %5, align 8, !tbaa !7, !alias.scope !363, !noalias !366
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  %i.ayc = lshr i64 %i.ayb, 3
  %i.ayd = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayc ; 2 uses
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !9, !alias.scope !371, !noalias !368
  %i.ayf = zext i8 %i.aye to i64
  store i64 %i.ayf, ptr %i.ayd, align 1, !noalias !368
  %i.ayg = add i64 %i.axw, 14
  store i64 %i.ayg, ptr %5, align 8, !tbaa !7, !alias.scope !368, !noalias !371
  %i.ayh = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.aww, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
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
  %i.aec = shl nuw nsw i64 %i.adj, %i.adi
  %i.aed = sub nsw i64 %i.ade, %i.aec
  tail call void @llvm.experimental.noalias.scope.decl(metadata !557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !560)
  %i.aee = lshr i64 %i.aeb, 3
  %i.aef = getelementptr inbounds nuw i8, ptr %6, i64 %i.aee ; 2 uses
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !9, !alias.scope !560, !noalias !557
  %i.aeh = zext i8 %i.aeg to i64
  %i.aei = and i64 %i.aeb, 7
  %i.aej = shl nsw i64 %i.aed, %i.aei
  %i.aek = or i64 %i.aej, %i.aeh
  store i64 %i.aek, ptr %i.aef, align 1, !noalias !557
  %i.ael = add i64 %i.aeb, %i.adi
  store i64 %i.ael, ptr %5, align 8, !tbaa !7, !alias.scope !557, !noalias !560
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adm ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !3
  %i.aeo = add i32 %i.aen, 1
  store i32 %i.aeo, ptr %i.aem, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aep = icmp ult i64 %i.acg, 2118
  br i1 %i.aep, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aeq = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aer = trunc nuw nsw i64 %i.aeq to i32
  %i.aes = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aer, i1 true) ; 2 uses
  %i.aet = xor i32 %i.aes, 31
  %i.aeu = sub nuw nsw i32 59, %i.aes
  %i.aev = zext nneg i32 %i.aeu to i64            ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !9
  %i.aey = zext i8 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aev
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !83
  %i.afb = zext i16 %i.afa to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.afc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !562, !noalias !565 ; 3 uses
  %i.afd = lshr i64 %i.afc, 3
  %i.afe = getelementptr inbounds nuw i8, ptr %6, i64 %i.afd ; 2 uses
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !9, !alias.scope !565, !noalias !562
  %i.afg = zext i8 %i.aff to i64
  %i.afh = and i64 %i.afc, 7
  %i.afi = shl nuw nsw i64 %i.afb, %i.afh
  %i.afj = or i64 %i.afi, %i.afg
  store i64 %i.afj, ptr %i.afe, align 1, !noalias !562
  %i.afk = add i64 %i.afc, %i.aey                 ; 4 uses
  store i64 %i.afk, ptr %5, align 8, !tbaa !7, !alias.scope !562, !noalias !565
  %i.afl = zext nneg i32 %i.aet to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afl
  %i.afm = add nsw i64 %.neg.i45, %i.aeq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !570)
  %i.afn = lshr i64 %i.afk, 3
  %i.afo = getelementptr inbounds nuw i8, ptr %6, i64 %i.afn ; 2 uses
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !9, !alias.scope !570, !noalias !567
  %i.afq = zext i8 %i.afp to i64
  %i.afr = and i64 %i.afk, 7
  %i.afs = shl nsw i64 %i.afm, %i.afr
  %i.aft = or i64 %i.afs, %i.afq
  store i64 %i.aft, ptr %i.afo, align 1, !noalias !567
  %i.afu = add i64 %i.afk, %i.afl
  store i64 %i.afu, ptr %5, align 8, !tbaa !7, !alias.scope !567, !noalias !570
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aev ; 2 uses
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !3
  %i.afx = add i32 %i.afw, 1
  store i32 %i.afx, ptr %i.afv, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.afy = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.afz = zext i8 %i.afy to i64
  %i.aga = load i16, ptr %i.co, align 2, !tbaa !83
  %i.agb = zext i16 %i.aga to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !575)
  %i.agc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !572, !noalias !575 ; 3 uses
  %i.agd = lshr i64 %i.agc, 3
  %i.age = getelementptr inbounds nuw i8, ptr %6, i64 %i.agd ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !9, !alias.scope !575, !noalias !572
  %i.agg = zext i8 %i.agf to i64
  %i.agh = and i64 %i.agc, 7
  %i.agi = shl nuw nsw i64 %i.agb, %i.agh
  %i.agj = or i64 %i.agi, %i.agg
  store i64 %i.agj, ptr %i.age, align 1, !noalias !572
  %i.agk = add i64 %i.agc, %i.afz                 ; 4 uses
  store i64 %i.agk, ptr %5, align 8, !tbaa !7, !alias.scope !572, !noalias !575
  %i.agl = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !580)
  %i.agm = lshr i64 %i.agk, 3
  %i.agn = getelementptr inbounds nuw i8, ptr %6, i64 %i.agm ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !9, !alias.scope !580, !noalias !577
  %i.agp = zext i8 %i.ago to i64
  %i.agq = and i64 %i.agk, 7
  %i.agr = shl i64 %i.agl, %i.agq
  %i.ags = or i64 %i.agr, %i.agp
  store i64 %i.ags, ptr %i.agn, align 1, !noalias !577
  %i.agt = add i64 %i.agk, 24
  store i64 %i.agt, ptr %5, align 8, !tbaa !7, !alias.scope !577, !noalias !580
  %i.agu = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agv = add i32 %i.agu, 1
  store i32 %i.agv, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ace, 32
  %i.agw = ashr exact i64 %sext391.i, 32
  %i.agx = add nsw i64 %i.agw, 3                  ; 3 uses
  %i.agy = trunc i64 %i.agx to i32
  %i.agz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agy, i1 true) ; 2 uses
  %i.aha = sub nsw i32 30, %i.agz
  %i.ahb = zext i32 %i.aha to i64                 ; 3 uses
  %i.ahc = lshr i64 %i.agx, %i.ahb
  %i.ahd = and i64 %i.ahc, 1                      ; 2 uses
  %i.ahe = or disjoint i64 %i.ahd, 2
  %i.ahf = shl i64 %i.ahe, %i.ahb
  %i.ahg = shl nuw nsw i32 %i.agz, 1
  %i.ahh = sub nsw i32 58, %i.ahg
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = or disjoint i64 %i.ahd, %i.ahi
  %i.ahk = add nuw nsw i64 %i.ahj, 80             ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !9
  %i.ahn = zext i8 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahk
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !83
  %i.ahq = zext i16 %i.ahp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %i.ahr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !582, !noalias !585 ; 3 uses
  %i.ahs = lshr i64 %i.ahr, 3
  %i.aht = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahs ; 2 uses
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !9, !alias.scope !585, !noalias !582
  %i.ahv = zext i8 %i.ahu to i64
  %i.ahw = and i64 %i.ahr, 7
  %i.ahx = shl nuw nsw i64 %i.ahq, %i.ahw
  %i.ahy = or i64 %i.ahx, %i.ahv
  store i64 %i.ahy, ptr %i.aht, align 1, !noalias !582
  %i.ahz = add i64 %i.ahr, %i.ahn                 ; 4 uses
  store i64 %i.ahz, ptr %5, align 8, !tbaa !7, !alias.scope !582, !noalias !585
  %i.aia = sub i64 %i.agx, %i.ahf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.aib = lshr i64 %i.ahz, 3
  %i.aic = getelementptr inbounds nuw i8, ptr %6, i64 %i.aib ; 2 uses
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !9, !alias.scope !590, !noalias !587
  %i.aie = zext i8 %i.aid to i64
  %i.aif = and i64 %i.ahz, 7
  %i.aig = shl i64 %i.aia, %i.aif
  %i.aih = or i64 %i.aig, %i.aie
  store i64 %i.aih, ptr %i.aic, align 1, !noalias !587
  %i.aii = add i64 %i.ahz, %i.ahb
  store i64 %i.aii, ptr %5, align 8, !tbaa !7, !alias.scope !587, !noalias !590
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahk ; 2 uses
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !3
  %i.ail = add i32 %i.aik, 1
  store i32 %i.ail, ptr %i.aij, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ach, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aim = getelementptr inbounds i8, ptr %i.ach, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aim, align 1 ; 4 uses
  %i.ain = mul i64 %.0.copyload.i44, 8503243848024064
  %i.aio = lshr i64 %i.ain, 53
  %i.aip = lshr i64 %.0.copyload.i44, 24
  %i.aiq = mul i64 %i.aip, 8503243848024064
  %i.air = lshr i64 %i.aiq, 53
  %i.ais = ptrtoint ptr %i.ach to i64
  %i.ait = sub i64 %i.ais, %i.ca
  %i.aiu = trunc i64 %i.ait to i32                ; 4 uses
  %i.aiv = add i32 %i.aiu, -3
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio
  store i32 %i.aiv, ptr %i.aiw, align 4, !tbaa !3
  %i.aix = lshr i64 %.0.copyload.i44, 8
  %i.aiy = mul i64 %i.aix, 8503243848024064
  %i.aiz = lshr i64 %i.aiy, 53
  %i.aja = add i32 %i.aiu, -2
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiz
  store i32 %i.aja, ptr %i.ajb, align 4, !tbaa !3
  %i.ajc = lshr i64 %.0.copyload.i44, 16
  %i.ajd = mul i64 %i.ajc, 8503243848024064
  %i.aje = lshr i64 %i.ajd, 53
  %i.ajf = add i32 %i.aiu, -1
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aje
  store i32 %i.ajf, ptr %i.ajg, align 4, !tbaa !3
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air ; 2 uses
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !3
  store i32 %i.aiu, ptr %i.ajh, align 4, !tbaa !3
  %.pn = sext i32 %i.aji to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ach, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajj = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajj, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ach, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hu, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajk = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajl = tail call noundef i64 @llvm.umin.i64(i64 %i.ajk, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajk, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajm = add i64 %i.ajl, %.0332.i               ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, 1048577
  br i1 %i.ajn, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.aju, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !9
  %i.ajq = zext i8 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajq ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !3
  %i.ajt = add i32 %i.ajs, 1
  store i32 %i.ajt, ptr %i.ajr, align 4, !tbaa !3
  %i.aju = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajv = icmp samesign ult i64 %i.aju, %i.ajl
  br i1 %i.ajv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajw = trunc nuw nsw i64 %i.ajl to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajw, 42
  %i.ajx = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.ajy = icmp ult i64 %i.ajk, 10966
  br i1 %i.ajy, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.ajx to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.akb = uitofp nneg i32 %i.ajx to double       ; 2 uses
  %i.akc = tail call double @log2(double noundef %i.akb) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.akb, %bb.ax ]
  %.0.i22.i = phi double [ %i.aka, %._crit_edge.thread.i ], [ %i.akc, %bb.ax ]
  %i.akd = fadd double %.0.i22.i, 5.000000e-01
  %i.ake = tail call double @llvm.fmuladd.f64(double %i.akd, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.ake, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.aks, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akt, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !3 ; 3 uses
  %i.akh = uitofp i32 %i.akg to double            ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !9
  %i.akk = uitofp i8 %i.akj to double
  %i.akl = icmp ult i32 %i.akg, 256
  br i1 %i.akl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akm = zext nneg i32 %i.akg to i64
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akm
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.akp = tail call double @log2(double noundef %i.akh) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.ako, %bb.az ], [ %i.akp, %bb.ba ]
  %i.akq = fadd double %.0.i.i, %i.akk
  %i.akr = fneg double %i.akh
  %i.aks = tail call double @llvm.fmuladd.f64(double %i.akr, double %i.akq, double %.026.i) ; 2 uses
  %i.akt = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akt, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.aku = fcmp ult double %i.aks, 0.000000e+00
  br i1 %i.aku, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.akv = trunc nuw nsw i64 %i.ajm to i32
  %i.akw = add nsw i32 %i.akv, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alq, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akw, %bb.bb ], [ %i.alr, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.als, %bb.bc ] ; 3 uses
  %i.akx = lshr i64 %.02528.i, 3
  %i.aky = and i64 %.02528.i, 7                   ; 3 uses
  %i.akz = sub nuw nsw i64 8, %i.aky
  %i.ala = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.akz) ; 4 uses
  %i.alb = add nuw nsw i64 %i.ala, %i.aky
  %i.alc = trunc nuw nsw i64 %i.alb to i32
  %notmask.i = shl nsw i32 -1, %i.alc
  %i.ald = trunc nuw nsw i64 %i.aky to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.ald
  %i.ale = xor i32 %notmask26.i, -1
  %i.alf = or i32 %notmask.i, %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %6, i64 %i.akx ; 2 uses
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !9
  %i.ali = zext i8 %i.alh to i32
  %i.alj = and i32 %i.alf, %i.ali
  %i.alk = trunc nuw nsw i64 %i.ala to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.alk
  %i.all = xor i32 %notmask27.i, -1
  %i.alm = and i32 %.02429.i, %i.all
  %i.aln = shl nuw nsw i32 %i.alm, %i.ald
  %i.alo = or i32 %i.alj, %i.aln
  %i.alp = trunc i32 %i.alo to i8
  store i8 %i.alp, ptr %i.alg, align 1, !tbaa !9
  %i.alq = sub i64 %.030.i, %i.ala                ; 2 uses
  %i.alr = lshr i32 %.02429.i, %i.alk
  %i.als = add i64 %i.ala, %.02528.i
  %.not.i54 = icmp eq i64 %i.alq, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alt = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alt, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alu = ptrtoint ptr %i.ct to i64
  %i.alv = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alw = sub i64 %i.alu, %i.alv                 ; 18 uses
  %i.alx = icmp ult i64 %i.alw, 6210
  br i1 %i.alx, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.aly = icmp samesign ult i64 %i.alw, 6
  br i1 %i.aly, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.alz = or disjoint i64 %i.alw, 40             ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !9
  %i.amc = zext i8 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.alz
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !83
  %i.amf = zext i16 %i.ame to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !592)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  %i.amg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !592, !noalias !595 ; 3 uses
  %i.amh = lshr i64 %i.amg, 3
  %i.ami = getelementptr inbounds nuw i8, ptr %6, i64 %i.amh ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !9, !alias.scope !595, !noalias !592
  %i.amk = zext i8 %i.amj to i64
  %i.aml = and i64 %i.amg, 7
  %i.amm = shl nuw nsw i64 %i.amf, %i.aml
  %i.amn = or i64 %i.amm, %i.amk
  store i64 %i.amn, ptr %i.ami, align 1, !noalias !592
  %i.amo = add i64 %i.amg, %i.amc
  store i64 %i.amo, ptr %5, align 8, !tbaa !7, !alias.scope !592, !noalias !595
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.alz ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !3
  %i.amr = add i32 %i.amq, 1
  store i32 %i.amr, ptr %i.amp, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.ams = icmp samesign ult i64 %i.alw, 130
  br i1 %i.ams, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amt = add nsw i64 %i.alw, -2                 ; 3 uses
  %i.amu = trunc nuw nsw i64 %i.amt to i32
  %i.amv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amu, i1 true)
  %i.amw = sub nuw nsw i32 30, %i.amv             ; 2 uses
  %i.amx = zext nneg i32 %i.amw to i64            ; 3 uses
  %i.amy = lshr i64 %i.amt, %i.amx                ; 2 uses
  %i.amz = shl nuw nsw i32 %i.amw, 1
  %narrow281 = add nuw nsw i32 %i.amz, 42
  %i.ana = zext nneg i32 %narrow281 to i64
  %i.anb = add nuw nsw i64 %i.amy, %i.ana         ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anb
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !9
  %i.ane = zext i8 %i.and to i64
  %i.anf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anb
  %i.ang = load i16, ptr %i.anf, align 2, !tbaa !83
  %i.anh = zext i16 %i.ang to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.ani = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !597, !noalias !600 ; 3 uses
  %i.anj = lshr i64 %i.ani, 3
  %i.ank = getelementptr inbounds nuw i8, ptr %6, i64 %i.anj ; 2 uses
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !9, !alias.scope !600, !noalias !597
  %i.anm = zext i8 %i.anl to i64
  %i.ann = and i64 %i.ani, 7
  %i.ano = shl nuw nsw i64 %i.anh, %i.ann
  %i.anp = or i64 %i.ano, %i.anm
  store i64 %i.anp, ptr %i.ank, align 1, !noalias !597
  %i.anq = add i64 %i.ani, %i.ane                 ; 4 uses
  store i64 %i.anq, ptr %5, align 8, !tbaa !7, !alias.scope !597, !noalias !600
  %i.anr = shl nuw nsw i64 %i.amy, %i.amx
  %i.ans = sub nsw i64 %i.amt, %i.anr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.ant = lshr i64 %i.anq, 3
  %i.anu = getelementptr inbounds nuw i8, ptr %6, i64 %i.ant ; 2 uses
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !9, !alias.scope !605, !noalias !602
  %i.anw = zext i8 %i.anv to i64
  %i.anx = and i64 %i.anq, 7
  %i.any = shl nsw i64 %i.ans, %i.anx
  %i.anz = or i64 %i.any, %i.anw
  store i64 %i.anz, ptr %i.anu, align 1, !noalias !602
  %i.aoa = add i64 %i.anq, %i.amx
  store i64 %i.aoa, ptr %5, align 8, !tbaa !7, !alias.scope !602, !noalias !605
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anb ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !3
  %i.aod = add i32 %i.aoc, 1
  store i32 %i.aod, ptr %i.aob, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoe = icmp samesign ult i64 %i.alw, 2114
  br i1 %i.aoe, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aof = add nsw i64 %i.alw, -66                ; 2 uses
  %i.aog = trunc nuw nsw i64 %i.aof to i32
  %i.aoh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aog, i1 true) ; 2 uses
  %i.aoi = xor i32 %i.aoh, 31
  %i.aoj = sub nuw nsw i32 81, %i.aoh
  %i.aok = zext nneg i32 %i.aoj to i64            ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !9
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aok
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !83
  %i.aoq = zext i16 %i.aop to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  %i.aor = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !607, !noalias !610 ; 3 uses
  %i.aos = lshr i64 %i.aor, 3
  %i.aot = getelementptr inbounds nuw i8, ptr %6, i64 %i.aos ; 2 uses
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !9, !alias.scope !610, !noalias !607
  %i.aov = zext i8 %i.aou to i64
  %i.aow = and i64 %i.aor, 7
  %i.aox = shl nuw nsw i64 %i.aoq, %i.aow
  %i.aoy = or i64 %i.aox, %i.aov
  store i64 %i.aoy, ptr %i.aot, align 1, !noalias !607
  %i.aoz = add i64 %i.aor, %i.aon                 ; 4 uses
  store i64 %i.aoz, ptr %5, align 8, !tbaa !7, !alias.scope !607, !noalias !610
  %i.apa = zext nneg i32 %i.aoi to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apa
  %i.apb = add nsw i64 %.neg.i26, %i.aof
  tail call void @llvm.experimental.noalias.scope.decl(metadata !612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.apc = lshr i64 %i.aoz, 3
  %i.apd = getelementptr inbounds nuw i8, ptr %6, i64 %i.apc ; 2 uses
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !9, !alias.scope !615, !noalias !612
  %i.apf = zext i8 %i.ape to i64
  %i.apg = and i64 %i.aoz, 7
  %i.aph = shl nsw i64 %i.apb, %i.apg
  %i.api = or i64 %i.aph, %i.apf
  store i64 %i.api, ptr %i.apd, align 1, !noalias !612
  %i.apj = add i64 %i.aoz, %i.apa
  store i64 %i.apj, ptr %5, align 8, !tbaa !7, !alias.scope !612, !noalias !615
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aok ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !3
  %i.apm = add i32 %i.apl, 1
  store i32 %i.apm, ptr %i.apk, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apn = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apo = zext i8 %i.apn to i64
  %i.app = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apq = zext i16 %i.app to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !620)
  %i.apr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !617, !noalias !620 ; 3 uses
  %i.aps = lshr i64 %i.apr, 3
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 %i.aps ; 2 uses
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !9, !alias.scope !620, !noalias !617
  %i.apv = zext i8 %i.apu to i64
  %i.apw = and i64 %i.apr, 7
  %i.apx = shl nuw nsw i64 %i.apq, %i.apw
  %i.apy = or i64 %i.apx, %i.apv
  store i64 %i.apy, ptr %i.apt, align 1, !noalias !617
  %i.apz = add i64 %i.apr, %i.apo                 ; 4 uses
  store i64 %i.apz, ptr %5, align 8, !tbaa !7, !alias.scope !617, !noalias !620
  %i.aqa = add nsw i64 %i.alw, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %i.aqb = lshr i64 %i.apz, 3
  %i.aqc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqb ; 2 uses
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !9, !alias.scope !625, !noalias !622
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = and i64 %i.apz, 7
  %i.aqg = shl nuw nsw i64 %i.aqa, %i.aqf
  %i.aqh = or i64 %i.aqg, %i.aqe
  store i64 %i.aqh, ptr %i.aqc, align 1, !noalias !622
  %i.aqi = add i64 %i.apz, 12
  store i64 %i.aqi, ptr %5, align 8, !tbaa !7, !alias.scope !622, !noalias !625
  %i.aqj = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqk = add i32 %i.aqj, 1
  store i32 %i.aqk, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !627, !noalias !630 ; 2 uses
  %i.aql = add nsw i64 %.0331.i, -1
  %i.aqm = add i64 %i.aql, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alw, 1
  %i.aqn = icmp eq i64 %i.aqm, %.7.i.lcssa635636
  br i1 %i.aqn, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alw, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqo = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.arx, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.ary, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqp = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !9
  %i.aqr = zext i8 %i.aqq to i64                  ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqr
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqr
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !83
  %i.aqx = zext i16 %i.aqw to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.aqy = lshr i64 %i.aqo, 3
  %i.aqz = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqy ; 2 uses
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !9, !alias.scope !630, !noalias !627
  %i.arb = zext i8 %i.ara to i64
  %i.arc = and i64 %i.aqo, 7
  %i.ard = shl nuw nsw i64 %i.aqx, %i.arc
  %i.are = or i64 %i.ard, %i.arb
  store i64 %i.are, ptr %i.aqz, align 1, !noalias !627
  %i.arf = add i64 %i.aqo, %i.aqu                 ; 4 uses
  store i64 %i.arf, ptr %5, align 8, !tbaa !7, !alias.scope !627, !noalias !630
  %i.arg = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 1
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !9
  %i.arj = zext i8 %i.ari to i64                  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 %i.arj
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arj
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !83
  %i.arp = zext i16 %i.aro to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.arq = lshr i64 %i.arf, 3
  %i.arr = getelementptr inbounds nuw i8, ptr %6, i64 %i.arq ; 2 uses
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !9, !alias.scope !634, !noalias !632
  %i.art = zext i8 %i.ars to i64
  %i.aru = and i64 %i.arf, 7
  %i.arv = shl nuw nsw i64 %i.arp, %i.aru
  %i.arw = or i64 %i.arv, %i.art
  store i64 %i.arw, ptr %i.arr, align 1, !noalias !632
  %i.arx = add i64 %i.arf, %i.arm                 ; 3 uses
  store i64 %i.arx, ptr %5, align 8, !tbaa !7, !alias.scope !632, !noalias !634
  %i.ary = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.arz = sub i64 %i.alv, %i.cr
  %i.asa = mul i64 %i.arz, 50
  %i.asb = icmp ugt i64 %i.asa, %i.alw
  %narrow.not130 = or i1 %i.cs, %i.asb
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asc = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asc, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asd = icmp ult i64 %i.alw, 22594
  br i1 %i.asd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ase = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asf = zext i8 %i.ase to i64
  %i.asg = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ash = zext i16 %i.asg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  %i.asi = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !636, !noalias !639 ; 3 uses
  %i.asj = lshr i64 %i.asi, 3
  %i.ask = getelementptr inbounds nuw i8, ptr %6, i64 %i.asj ; 2 uses
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !9, !alias.scope !639, !noalias !636
  %i.asm = zext i8 %i.asl to i64
  %i.asn = and i64 %i.asi, 7
  %i.aso = shl nuw nsw i64 %i.ash, %i.asn
  %i.asp = or i64 %i.aso, %i.asm
  store i64 %i.asp, ptr %i.ask, align 1, !noalias !636
  %i.asq = add i64 %i.asi, %i.asf                 ; 4 uses
  store i64 %i.asq, ptr %5, align 8, !tbaa !7, !alias.scope !636, !noalias !639
  %i.asr = add nsw i64 %i.alw, -6210
  %i.ass = lshr i64 %i.asq, 3
  %i.ast = getelementptr inbounds nuw i8, ptr %6, i64 %i.ass ; 2 uses
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !9, !alias.scope !641, !noalias !644
  %i.asv = zext i8 %i.asu to i64
  %i.asw = and i64 %i.asq, 7
  %i.asx = shl nuw nsw i64 %i.asr, %i.asw
  %i.asy = or i64 %i.asx, %i.asv
  store i64 %i.asy, ptr %i.ast, align 1, !noalias !644
  %i.asz = add i64 %i.asq, 14
  %i.ata = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.atb = add i32 %i.ata, 1
  store i32 %i.atb, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atd = zext i8 %i.atc to i64
  %i.ate = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.atf = zext i16 %i.ate to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.atg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !646, !noalias !649 ; 3 uses
  %i.ath = lshr i64 %i.atg, 3
  %i.ati = getelementptr inbounds nuw i8, ptr %6, i64 %i.ath ; 2 uses
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !9, !alias.scope !649, !noalias !646
  %i.atk = zext i8 %i.atj to i64
  %i.atl = and i64 %i.atg, 7
  %i.atm = shl nuw nsw i64 %i.atf, %i.atl
  %i.atn = or i64 %i.atm, %i.atk
  store i64 %i.atn, ptr %i.ati, align 1, !noalias !646
  %i.ato = add i64 %i.atg, %i.atd                 ; 4 uses
  store i64 %i.ato, ptr %5, align 8, !tbaa !7, !alias.scope !646, !noalias !649
  %i.atp = add i64 %i.alw, -22594
  %i.atq = lshr i64 %i.ato, 3
  %i.atr = getelementptr inbounds nuw i8, ptr %6, i64 %i.atq ; 2 uses
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !9, !alias.scope !651, !noalias !654
  %i.att = zext i8 %i.ats to i64
  %i.atu = and i64 %i.ato, 7
  %i.atv = shl i64 %i.atp, %i.atu
  %i.atw = or i64 %i.atv, %i.att
  store i64 %i.atw, ptr %i.atr, align 1, !noalias !654
  %i.atx = add i64 %i.ato, 24
  %i.aty = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.atz = add i32 %i.aty, 1
  store i32 %i.atz, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.asz, %bb.bq ], [ %i.atx, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aua = add nsw i64 %.0331.i, -1
  %i.aub = add i64 %i.aua, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alw, 1
  %i.auc = icmp eq i64 %i.aub, %.7.i.lcssa635636
  br i1 %i.auc, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alw, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avn, %bb.bs ] ; 3 uses
  %i.aud = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avm, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.aue = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !9
  %i.aug = zext i8 %i.auf to i64                  ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 %i.aug
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aug
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !83
  %i.aum = zext i16 %i.aul to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.aun = lshr i64 %i.aud, 3
  %i.auo = getelementptr inbounds nuw i8, ptr %6, i64 %i.aun ; 2 uses
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !9, !alias.scope !659, !noalias !656
  %i.auq = zext i8 %i.aup to i64
  %i.aur = and i64 %i.aud, 7
  %i.aus = shl nuw nsw i64 %i.aum, %i.aur
  %i.aut = or i64 %i.aus, %i.auq
  store i64 %i.aut, ptr %i.auo, align 1, !noalias !656
  %i.auu = add i64 %i.aud, %i.auj                 ; 4 uses
  store i64 %i.auu, ptr %5, align 8, !tbaa !7, !alias.scope !656, !noalias !659
  %i.auv = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !9
  %i.auy = zext i8 %i.aux to i64                  ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auy
  %i.avd = load i16, ptr %i.avc, align 2, !tbaa !83
  %i.ave = zext i16 %i.avd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !663)
  %i.avf = lshr i64 %i.auu, 3
  %i.avg = getelementptr inbounds nuw i8, ptr %6, i64 %i.avf ; 2 uses
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !9, !alias.scope !663, !noalias !661
  %i.avi = zext i8 %i.avh to i64
  %i.avj = and i64 %i.auu, 7
  %i.avk = shl nuw nsw i64 %i.ave, %i.avj
  %i.avl = or i64 %i.avk, %i.avi
  store i64 %i.avl, ptr %i.avg, align 1, !noalias !661
  %i.avm = add i64 %i.auu, %i.avb                 ; 3 uses
  store i64 %i.avm, ptr %5, align 8, !tbaa !7, !alias.scope !661, !noalias !663
  %i.avn = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.arx, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.ary, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !9
  %i.avq = zext i8 %i.avp to i64                  ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avq
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !83
  %i.avw = zext i16 %i.avv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !630)
  %i.avx = lshr i64 %.epil.init646, 3
  %i.avy = getelementptr inbounds nuw i8, ptr %6, i64 %i.avx ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !9, !alias.scope !630, !noalias !627
  %i.awa = zext i8 %i.avz to i64
  %i.awb = and i64 %.epil.init646, 7
  %i.awc = shl nuw nsw i64 %i.avw, %i.awb
  %i.awd = or i64 %i.awc, %i.awa
  store i64 %i.awd, ptr %i.avy, align 1, !noalias !627
  %i.awe = add i64 %.epil.init646, %i.avt
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !627, !noalias !630
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avm, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !9
  %i.awh = zext i8 %i.awg to i64                  ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 %i.awh
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awh
  %i.awm = load i16, ptr %i.awl, align 2, !tbaa !83
  %i.awn = zext i16 %i.awm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.awo = lshr i64 %.epil.init637, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !9, !alias.scope !659, !noalias !656
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %.epil.init637, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !656
  %i.awv = add i64 %.epil.init637, %i.awk
  store i64 %i.awv, ptr %5, align 8, !tbaa !7, !alias.scope !656, !noalias !659
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mo, %.thread74.thread118 ], [ %i.ajk, %bb.bd ], [ %i.ajk, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajk, %bb.bo ], [ %i.ajk, %.epil.preheader642 ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajk, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.aww = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.awx = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.awy = add i64 %i.awx, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  %i.awz = lshr i64 %i.awx, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !9, !alias.scope !668, !noalias !665
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !665
  %i.axd = add i64 %i.awx, 1                      ; 3 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !7, !alias.scope !665, !noalias !668
  %i.axe = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axe, i64 4, i64 5        ; 2 uses
  %i.axf = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.axg = lshr i64 %i.axd, 3
  %i.axh = getelementptr inbounds nuw i8, ptr %6, i64 %i.axg ; 2 uses
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !9, !alias.scope !673, !noalias !670
  %i.axj = zext i8 %i.axi to i64
  %i.axk = and i64 %i.axd, 7
  %i.axl = shl nuw nsw i64 %i.axf, %i.axk
  %i.axm = or i64 %i.axl, %i.axj
  store i64 %i.axm, ptr %i.axh, align 1, !noalias !670
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !670, !noalias !673
  %i.axn = shl nuw nsw i64 %.0.i55, 2
  %i.axo = add nsw i64 %i.aww, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  %i.axp = lshr i64 %i.awy, 3
  %i.axq = getelementptr inbounds nuw i8, ptr %6, i64 %i.axp ; 2 uses
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !9, !alias.scope !678, !noalias !675
  %i.axs = zext i8 %i.axr to i64
  %i.axt = and i64 %i.awy, 7
  %i.axu = shl nuw nsw i64 %i.axo, %i.axt
  %i.axv = or i64 %i.axu, %i.axs
  store i64 %i.axv, ptr %i.axq, align 1, !noalias !675
  %i.axw = add i64 %i.awy, %i.axn                 ; 4 uses
  store i64 %i.axw, ptr %5, align 8, !tbaa !7, !alias.scope !675, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !683)
  %i.axx = lshr i64 %i.axw, 3
  %i.axy = getelementptr inbounds nuw i8, ptr %6, i64 %i.axx ; 2 uses
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !9, !alias.scope !683, !noalias !680
  %i.aya = zext i8 %i.axz to i64
  store i64 %i.aya, ptr %i.axy, align 1, !noalias !680
  %i.ayb = add i64 %i.axw, 1                      ; 2 uses
  store i64 %i.ayb, ptr %5, align 8, !tbaa !7, !alias.scope !680, !noalias !683
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !688)
  %i.ayc = lshr i64 %i.ayb, 3
  %i.ayd = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayc ; 2 uses
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !9, !alias.scope !688, !noalias !685
  %i.ayf = zext i8 %i.aye to i64
  store i64 %i.ayf, ptr %i.ayd, align 1, !noalias !685
  %i.ayg = add i64 %i.axw, 14
  store i64 %i.ayg, ptr %5, align 8, !tbaa !7, !alias.scope !685, !noalias !688
  %i.ayh = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.aww, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
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
  %i.aec = shl nuw nsw i64 %i.adj, %i.adi
  %i.aed = sub nsw i64 %i.ade, %i.aec
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.aee = lshr i64 %i.aeb, 3
  %i.aef = getelementptr inbounds nuw i8, ptr %6, i64 %i.aee ; 2 uses
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !9, !alias.scope !877, !noalias !874
  %i.aeh = zext i8 %i.aeg to i64
  %i.aei = and i64 %i.aeb, 7
  %i.aej = shl nsw i64 %i.aed, %i.aei
  %i.aek = or i64 %i.aej, %i.aeh
  store i64 %i.aek, ptr %i.aef, align 1, !noalias !874
  %i.ael = add i64 %i.aeb, %i.adi
  store i64 %i.ael, ptr %5, align 8, !tbaa !7, !alias.scope !874, !noalias !877
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adm ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !3
  %i.aeo = add i32 %i.aen, 1
  store i32 %i.aeo, ptr %i.aem, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aep = icmp ult i64 %i.acg, 2118
  br i1 %i.aep, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aeq = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aer = trunc nuw nsw i64 %i.aeq to i32
  %i.aes = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aer, i1 true) ; 2 uses
  %i.aet = xor i32 %i.aes, 31
  %i.aeu = sub nuw nsw i32 59, %i.aes
  %i.aev = zext nneg i32 %i.aeu to i64            ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !9
  %i.aey = zext i8 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aev
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !83
  %i.afb = zext i16 %i.afa to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !882)
  %i.afc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !879, !noalias !882 ; 3 uses
  %i.afd = lshr i64 %i.afc, 3
  %i.afe = getelementptr inbounds nuw i8, ptr %6, i64 %i.afd ; 2 uses
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !9, !alias.scope !882, !noalias !879
  %i.afg = zext i8 %i.aff to i64
  %i.afh = and i64 %i.afc, 7
  %i.afi = shl nuw nsw i64 %i.afb, %i.afh
  %i.afj = or i64 %i.afi, %i.afg
  store i64 %i.afj, ptr %i.afe, align 1, !noalias !879
  %i.afk = add i64 %i.afc, %i.aey                 ; 4 uses
  store i64 %i.afk, ptr %5, align 8, !tbaa !7, !alias.scope !879, !noalias !882
  %i.afl = zext nneg i32 %i.aet to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afl
  %i.afm = add nsw i64 %.neg.i45, %i.aeq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !887)
  %i.afn = lshr i64 %i.afk, 3
  %i.afo = getelementptr inbounds nuw i8, ptr %6, i64 %i.afn ; 2 uses
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !9, !alias.scope !887, !noalias !884
  %i.afq = zext i8 %i.afp to i64
  %i.afr = and i64 %i.afk, 7
  %i.afs = shl nsw i64 %i.afm, %i.afr
  %i.aft = or i64 %i.afs, %i.afq
  store i64 %i.aft, ptr %i.afo, align 1, !noalias !884
  %i.afu = add i64 %i.afk, %i.afl
  store i64 %i.afu, ptr %5, align 8, !tbaa !7, !alias.scope !884, !noalias !887
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aev ; 2 uses
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !3
  %i.afx = add i32 %i.afw, 1
  store i32 %i.afx, ptr %i.afv, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.afy = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.afz = zext i8 %i.afy to i64
  %i.aga = load i16, ptr %i.co, align 2, !tbaa !83
  %i.agb = zext i16 %i.aga to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !892)
  %i.agc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !889, !noalias !892 ; 3 uses
  %i.agd = lshr i64 %i.agc, 3
  %i.age = getelementptr inbounds nuw i8, ptr %6, i64 %i.agd ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !9, !alias.scope !892, !noalias !889
  %i.agg = zext i8 %i.agf to i64
  %i.agh = and i64 %i.agc, 7
  %i.agi = shl nuw nsw i64 %i.agb, %i.agh
  %i.agj = or i64 %i.agi, %i.agg
  store i64 %i.agj, ptr %i.age, align 1, !noalias !889
  %i.agk = add i64 %i.agc, %i.afz                 ; 4 uses
  store i64 %i.agk, ptr %5, align 8, !tbaa !7, !alias.scope !889, !noalias !892
  %i.agl = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !897)
  %i.agm = lshr i64 %i.agk, 3
  %i.agn = getelementptr inbounds nuw i8, ptr %6, i64 %i.agm ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !9, !alias.scope !897, !noalias !894
  %i.agp = zext i8 %i.ago to i64
  %i.agq = and i64 %i.agk, 7
  %i.agr = shl i64 %i.agl, %i.agq
  %i.ags = or i64 %i.agr, %i.agp
  store i64 %i.ags, ptr %i.agn, align 1, !noalias !894
  %i.agt = add i64 %i.agk, 24
  store i64 %i.agt, ptr %5, align 8, !tbaa !7, !alias.scope !894, !noalias !897
  %i.agu = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agv = add i32 %i.agu, 1
  store i32 %i.agv, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ace, 32
  %i.agw = ashr exact i64 %sext391.i, 32
  %i.agx = add nsw i64 %i.agw, 3                  ; 3 uses
  %i.agy = trunc i64 %i.agx to i32
  %i.agz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agy, i1 true) ; 2 uses
  %i.aha = sub nsw i32 30, %i.agz
  %i.ahb = zext i32 %i.aha to i64                 ; 3 uses
  %i.ahc = lshr i64 %i.agx, %i.ahb
  %i.ahd = and i64 %i.ahc, 1                      ; 2 uses
  %i.ahe = or disjoint i64 %i.ahd, 2
  %i.ahf = shl i64 %i.ahe, %i.ahb
  %i.ahg = shl nuw nsw i32 %i.agz, 1
  %i.ahh = sub nsw i32 58, %i.ahg
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = or disjoint i64 %i.ahd, %i.ahi
  %i.ahk = add nuw nsw i64 %i.ahj, 80             ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !9
  %i.ahn = zext i8 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahk
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !83
  %i.ahq = zext i16 %i.ahp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.ahr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !899, !noalias !902 ; 3 uses
  %i.ahs = lshr i64 %i.ahr, 3
  %i.aht = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahs ; 2 uses
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !9, !alias.scope !902, !noalias !899
  %i.ahv = zext i8 %i.ahu to i64
  %i.ahw = and i64 %i.ahr, 7
  %i.ahx = shl nuw nsw i64 %i.ahq, %i.ahw
  %i.ahy = or i64 %i.ahx, %i.ahv
  store i64 %i.ahy, ptr %i.aht, align 1, !noalias !899
  %i.ahz = add i64 %i.ahr, %i.ahn                 ; 4 uses
  store i64 %i.ahz, ptr %5, align 8, !tbaa !7, !alias.scope !899, !noalias !902
  %i.aia = sub i64 %i.agx, %i.ahf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.aib = lshr i64 %i.ahz, 3
  %i.aic = getelementptr inbounds nuw i8, ptr %6, i64 %i.aib ; 2 uses
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !9, !alias.scope !907, !noalias !904
  %i.aie = zext i8 %i.aid to i64
  %i.aif = and i64 %i.ahz, 7
  %i.aig = shl i64 %i.aia, %i.aif
  %i.aih = or i64 %i.aig, %i.aie
  store i64 %i.aih, ptr %i.aic, align 1, !noalias !904
  %i.aii = add i64 %i.ahz, %i.ahb
  store i64 %i.aii, ptr %5, align 8, !tbaa !7, !alias.scope !904, !noalias !907
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahk ; 2 uses
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !3
  %i.ail = add i32 %i.aik, 1
  store i32 %i.ail, ptr %i.aij, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ach, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aim = getelementptr inbounds i8, ptr %i.ach, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aim, align 1 ; 4 uses
  %i.ain = mul i64 %.0.copyload.i44, 8503243848024064
  %i.aio = lshr i64 %i.ain, 51
  %i.aip = lshr i64 %.0.copyload.i44, 24
  %i.aiq = mul i64 %i.aip, 8503243848024064
  %i.air = lshr i64 %i.aiq, 51
  %i.ais = ptrtoint ptr %i.ach to i64
  %i.ait = sub i64 %i.ais, %i.ca
  %i.aiu = trunc i64 %i.ait to i32                ; 4 uses
  %i.aiv = add i32 %i.aiu, -3
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio
  store i32 %i.aiv, ptr %i.aiw, align 4, !tbaa !3
  %i.aix = lshr i64 %.0.copyload.i44, 8
  %i.aiy = mul i64 %i.aix, 8503243848024064
  %i.aiz = lshr i64 %i.aiy, 51
  %i.aja = add i32 %i.aiu, -2
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiz
  store i32 %i.aja, ptr %i.ajb, align 4, !tbaa !3
  %i.ajc = lshr i64 %.0.copyload.i44, 16
  %i.ajd = mul i64 %i.ajc, 8503243848024064
  %i.aje = lshr i64 %i.ajd, 51
  %i.ajf = add i32 %i.aiu, -1
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aje
  store i32 %i.ajf, ptr %i.ajg, align 4, !tbaa !3
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air ; 2 uses
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !3
  store i32 %i.aiu, ptr %i.ajh, align 4, !tbaa !3
  %.pn = sext i32 %i.aji to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ach, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajj = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajj, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ach, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hu, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajk = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajl = tail call noundef i64 @llvm.umin.i64(i64 %i.ajk, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajk, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajm = add i64 %i.ajl, %.0332.i               ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, 1048577
  br i1 %i.ajn, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.aju, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !9
  %i.ajq = zext i8 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajq ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !3
  %i.ajt = add i32 %i.ajs, 1
  store i32 %i.ajt, ptr %i.ajr, align 4, !tbaa !3
  %i.aju = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajv = icmp samesign ult i64 %i.aju, %i.ajl
  br i1 %i.ajv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajw = trunc nuw nsw i64 %i.ajl to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajw, 42
  %i.ajx = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.ajy = icmp ult i64 %i.ajk, 10966
  br i1 %i.ajy, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.ajx to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.akb = uitofp nneg i32 %i.ajx to double       ; 2 uses
  %i.akc = tail call double @log2(double noundef %i.akb) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.akb, %bb.ax ]
  %.0.i22.i = phi double [ %i.aka, %._crit_edge.thread.i ], [ %i.akc, %bb.ax ]
  %i.akd = fadd double %.0.i22.i, 5.000000e-01
  %i.ake = tail call double @llvm.fmuladd.f64(double %i.akd, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.ake, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.aks, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akt, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !3 ; 3 uses
  %i.akh = uitofp i32 %i.akg to double            ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !9
  %i.akk = uitofp i8 %i.akj to double
  %i.akl = icmp ult i32 %i.akg, 256
  br i1 %i.akl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akm = zext nneg i32 %i.akg to i64
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akm
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.akp = tail call double @log2(double noundef %i.akh) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.ako, %bb.az ], [ %i.akp, %bb.ba ]
  %i.akq = fadd double %.0.i.i, %i.akk
  %i.akr = fneg double %i.akh
  %i.aks = tail call double @llvm.fmuladd.f64(double %i.akr, double %i.akq, double %.026.i) ; 2 uses
  %i.akt = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akt, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.aku = fcmp ult double %i.aks, 0.000000e+00
  br i1 %i.aku, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.akv = trunc nuw nsw i64 %i.ajm to i32
  %i.akw = add nsw i32 %i.akv, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alq, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akw, %bb.bb ], [ %i.alr, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.als, %bb.bc ] ; 3 uses
  %i.akx = lshr i64 %.02528.i, 3
  %i.aky = and i64 %.02528.i, 7                   ; 3 uses
  %i.akz = sub nuw nsw i64 8, %i.aky
  %i.ala = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.akz) ; 4 uses
  %i.alb = add nuw nsw i64 %i.ala, %i.aky
  %i.alc = trunc nuw nsw i64 %i.alb to i32
  %notmask.i = shl nsw i32 -1, %i.alc
  %i.ald = trunc nuw nsw i64 %i.aky to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.ald
  %i.ale = xor i32 %notmask26.i, -1
  %i.alf = or i32 %notmask.i, %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %6, i64 %i.akx ; 2 uses
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !9
  %i.ali = zext i8 %i.alh to i32
  %i.alj = and i32 %i.alf, %i.ali
  %i.alk = trunc nuw nsw i64 %i.ala to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.alk
  %i.all = xor i32 %notmask27.i, -1
  %i.alm = and i32 %.02429.i, %i.all
  %i.aln = shl nuw nsw i32 %i.alm, %i.ald
  %i.alo = or i32 %i.alj, %i.aln
  %i.alp = trunc i32 %i.alo to i8
  store i8 %i.alp, ptr %i.alg, align 1, !tbaa !9
  %i.alq = sub i64 %.030.i, %i.ala                ; 2 uses
  %i.alr = lshr i32 %.02429.i, %i.alk
  %i.als = add i64 %i.ala, %.02528.i
  %.not.i54 = icmp eq i64 %i.alq, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alt = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alt, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alu = ptrtoint ptr %i.ct to i64
  %i.alv = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alw = sub i64 %i.alu, %i.alv                 ; 18 uses
  %i.alx = icmp ult i64 %i.alw, 6210
  br i1 %i.alx, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.aly = icmp samesign ult i64 %i.alw, 6
  br i1 %i.aly, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.alz = or disjoint i64 %i.alw, 40             ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !9
  %i.amc = zext i8 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.alz
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !83
  %i.amf = zext i16 %i.ame to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %i.amg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !909, !noalias !912 ; 3 uses
  %i.amh = lshr i64 %i.amg, 3
  %i.ami = getelementptr inbounds nuw i8, ptr %6, i64 %i.amh ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !9, !alias.scope !912, !noalias !909
  %i.amk = zext i8 %i.amj to i64
  %i.aml = and i64 %i.amg, 7
  %i.amm = shl nuw nsw i64 %i.amf, %i.aml
  %i.amn = or i64 %i.amm, %i.amk
  store i64 %i.amn, ptr %i.ami, align 1, !noalias !909
  %i.amo = add i64 %i.amg, %i.amc
  store i64 %i.amo, ptr %5, align 8, !tbaa !7, !alias.scope !909, !noalias !912
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.alz ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !3
  %i.amr = add i32 %i.amq, 1
  store i32 %i.amr, ptr %i.amp, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.ams = icmp samesign ult i64 %i.alw, 130
  br i1 %i.ams, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amt = add nsw i64 %i.alw, -2                 ; 3 uses
  %i.amu = trunc nuw nsw i64 %i.amt to i32
  %i.amv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amu, i1 true)
  %i.amw = sub nuw nsw i32 30, %i.amv             ; 2 uses
  %i.amx = zext nneg i32 %i.amw to i64            ; 3 uses
  %i.amy = lshr i64 %i.amt, %i.amx                ; 2 uses
  %i.amz = shl nuw nsw i32 %i.amw, 1
  %narrow281 = add nuw nsw i32 %i.amz, 42
  %i.ana = zext nneg i32 %narrow281 to i64
  %i.anb = add nuw nsw i64 %i.amy, %i.ana         ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anb
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !9
  %i.ane = zext i8 %i.and to i64
  %i.anf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anb
  %i.ang = load i16, ptr %i.anf, align 2, !tbaa !83
  %i.anh = zext i16 %i.ang to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !917)
  %i.ani = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !914, !noalias !917 ; 3 uses
  %i.anj = lshr i64 %i.ani, 3
  %i.ank = getelementptr inbounds nuw i8, ptr %6, i64 %i.anj ; 2 uses
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !9, !alias.scope !917, !noalias !914
  %i.anm = zext i8 %i.anl to i64
  %i.ann = and i64 %i.ani, 7
  %i.ano = shl nuw nsw i64 %i.anh, %i.ann
  %i.anp = or i64 %i.ano, %i.anm
  store i64 %i.anp, ptr %i.ank, align 1, !noalias !914
  %i.anq = add i64 %i.ani, %i.ane                 ; 4 uses
  store i64 %i.anq, ptr %5, align 8, !tbaa !7, !alias.scope !914, !noalias !917
  %i.anr = shl nuw nsw i64 %i.amy, %i.amx
  %i.ans = sub nsw i64 %i.amt, %i.anr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.ant = lshr i64 %i.anq, 3
  %i.anu = getelementptr inbounds nuw i8, ptr %6, i64 %i.ant ; 2 uses
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !9, !alias.scope !922, !noalias !919
  %i.anw = zext i8 %i.anv to i64
  %i.anx = and i64 %i.anq, 7
  %i.any = shl nsw i64 %i.ans, %i.anx
  %i.anz = or i64 %i.any, %i.anw
  store i64 %i.anz, ptr %i.anu, align 1, !noalias !919
  %i.aoa = add i64 %i.anq, %i.amx
  store i64 %i.aoa, ptr %5, align 8, !tbaa !7, !alias.scope !919, !noalias !922
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anb ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !3
  %i.aod = add i32 %i.aoc, 1
  store i32 %i.aod, ptr %i.aob, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoe = icmp samesign ult i64 %i.alw, 2114
  br i1 %i.aoe, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aof = add nsw i64 %i.alw, -66                ; 2 uses
  %i.aog = trunc nuw nsw i64 %i.aof to i32
  %i.aoh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aog, i1 true) ; 2 uses
  %i.aoi = xor i32 %i.aoh, 31
  %i.aoj = sub nuw nsw i32 81, %i.aoh
  %i.aok = zext nneg i32 %i.aoj to i64            ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !9
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aok
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !83
  %i.aoq = zext i16 %i.aop to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !927)
  %i.aor = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !924, !noalias !927 ; 3 uses
  %i.aos = lshr i64 %i.aor, 3
  %i.aot = getelementptr inbounds nuw i8, ptr %6, i64 %i.aos ; 2 uses
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !9, !alias.scope !927, !noalias !924
  %i.aov = zext i8 %i.aou to i64
  %i.aow = and i64 %i.aor, 7
  %i.aox = shl nuw nsw i64 %i.aoq, %i.aow
  %i.aoy = or i64 %i.aox, %i.aov
  store i64 %i.aoy, ptr %i.aot, align 1, !noalias !924
  %i.aoz = add i64 %i.aor, %i.aon                 ; 4 uses
  store i64 %i.aoz, ptr %5, align 8, !tbaa !7, !alias.scope !924, !noalias !927
  %i.apa = zext nneg i32 %i.aoi to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apa
  %i.apb = add nsw i64 %.neg.i26, %i.aof
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.apc = lshr i64 %i.aoz, 3
  %i.apd = getelementptr inbounds nuw i8, ptr %6, i64 %i.apc ; 2 uses
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !9, !alias.scope !932, !noalias !929
  %i.apf = zext i8 %i.ape to i64
  %i.apg = and i64 %i.aoz, 7
  %i.aph = shl nsw i64 %i.apb, %i.apg
  %i.api = or i64 %i.aph, %i.apf
  store i64 %i.api, ptr %i.apd, align 1, !noalias !929
  %i.apj = add i64 %i.aoz, %i.apa
  store i64 %i.apj, ptr %5, align 8, !tbaa !7, !alias.scope !929, !noalias !932
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aok ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !3
  %i.apm = add i32 %i.apl, 1
  store i32 %i.apm, ptr %i.apk, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apn = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apo = zext i8 %i.apn to i64
  %i.app = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apq = zext i16 %i.app to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !934)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.apr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !934, !noalias !937 ; 3 uses
  %i.aps = lshr i64 %i.apr, 3
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 %i.aps ; 2 uses
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !9, !alias.scope !937, !noalias !934
  %i.apv = zext i8 %i.apu to i64
  %i.apw = and i64 %i.apr, 7
  %i.apx = shl nuw nsw i64 %i.apq, %i.apw
  %i.apy = or i64 %i.apx, %i.apv
  store i64 %i.apy, ptr %i.apt, align 1, !noalias !934
  %i.apz = add i64 %i.apr, %i.apo                 ; 4 uses
  store i64 %i.apz, ptr %5, align 8, !tbaa !7, !alias.scope !934, !noalias !937
  %i.aqa = add nsw i64 %i.alw, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.aqb = lshr i64 %i.apz, 3
  %i.aqc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqb ; 2 uses
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !9, !alias.scope !942, !noalias !939
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = and i64 %i.apz, 7
  %i.aqg = shl nuw nsw i64 %i.aqa, %i.aqf
  %i.aqh = or i64 %i.aqg, %i.aqe
  store i64 %i.aqh, ptr %i.aqc, align 1, !noalias !939
  %i.aqi = add i64 %i.apz, 12
  store i64 %i.aqi, ptr %5, align 8, !tbaa !7, !alias.scope !939, !noalias !942
  %i.aqj = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqk = add i32 %i.aqj, 1
  store i32 %i.aqk, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !944, !noalias !947 ; 2 uses
  %i.aql = add nsw i64 %.0331.i, -1
  %i.aqm = add i64 %i.aql, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alw, 1
  %i.aqn = icmp eq i64 %i.aqm, %.7.i.lcssa635636
  br i1 %i.aqn, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alw, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqo = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.arx, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.ary, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqp = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !9
  %i.aqr = zext i8 %i.aqq to i64                  ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqr
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqr
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !83
  %i.aqx = zext i16 %i.aqw to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.aqy = lshr i64 %i.aqo, 3
  %i.aqz = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqy ; 2 uses
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !9, !alias.scope !947, !noalias !944
  %i.arb = zext i8 %i.ara to i64
  %i.arc = and i64 %i.aqo, 7
  %i.ard = shl nuw nsw i64 %i.aqx, %i.arc
  %i.are = or i64 %i.ard, %i.arb
  store i64 %i.are, ptr %i.aqz, align 1, !noalias !944
  %i.arf = add i64 %i.aqo, %i.aqu                 ; 4 uses
  store i64 %i.arf, ptr %5, align 8, !tbaa !7, !alias.scope !944, !noalias !947
  %i.arg = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 1
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !9
  %i.arj = zext i8 %i.ari to i64                  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 %i.arj
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arj
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !83
  %i.arp = zext i16 %i.aro to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !949)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.arq = lshr i64 %i.arf, 3
  %i.arr = getelementptr inbounds nuw i8, ptr %6, i64 %i.arq ; 2 uses
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !9, !alias.scope !951, !noalias !949
  %i.art = zext i8 %i.ars to i64
  %i.aru = and i64 %i.arf, 7
  %i.arv = shl nuw nsw i64 %i.arp, %i.aru
  %i.arw = or i64 %i.arv, %i.art
  store i64 %i.arw, ptr %i.arr, align 1, !noalias !949
  %i.arx = add i64 %i.arf, %i.arm                 ; 3 uses
  store i64 %i.arx, ptr %5, align 8, !tbaa !7, !alias.scope !949, !noalias !951
  %i.ary = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.arz = sub i64 %i.alv, %i.cr
  %i.asa = mul i64 %i.arz, 50
  %i.asb = icmp ugt i64 %i.asa, %i.alw
  %narrow.not130 = or i1 %i.cs, %i.asb
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asc = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asc, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asd = icmp ult i64 %i.alw, 22594
  br i1 %i.asd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ase = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asf = zext i8 %i.ase to i64
  %i.asg = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ash = zext i16 %i.asg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  %i.asi = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !953, !noalias !956 ; 3 uses
  %i.asj = lshr i64 %i.asi, 3
  %i.ask = getelementptr inbounds nuw i8, ptr %6, i64 %i.asj ; 2 uses
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !9, !alias.scope !956, !noalias !953
  %i.asm = zext i8 %i.asl to i64
  %i.asn = and i64 %i.asi, 7
  %i.aso = shl nuw nsw i64 %i.ash, %i.asn
  %i.asp = or i64 %i.aso, %i.asm
  store i64 %i.asp, ptr %i.ask, align 1, !noalias !953
  %i.asq = add i64 %i.asi, %i.asf                 ; 4 uses
  store i64 %i.asq, ptr %5, align 8, !tbaa !7, !alias.scope !953, !noalias !956
  %i.asr = add nsw i64 %i.alw, -6210
  %i.ass = lshr i64 %i.asq, 3
  %i.ast = getelementptr inbounds nuw i8, ptr %6, i64 %i.ass ; 2 uses
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !9, !alias.scope !958, !noalias !961
  %i.asv = zext i8 %i.asu to i64
  %i.asw = and i64 %i.asq, 7
  %i.asx = shl nuw nsw i64 %i.asr, %i.asw
  %i.asy = or i64 %i.asx, %i.asv
  store i64 %i.asy, ptr %i.ast, align 1, !noalias !961
  %i.asz = add i64 %i.asq, 14
  %i.ata = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.atb = add i32 %i.ata, 1
  store i32 %i.atb, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atd = zext i8 %i.atc to i64
  %i.ate = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.atf = zext i16 %i.ate to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.atg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !963, !noalias !966 ; 3 uses
  %i.ath = lshr i64 %i.atg, 3
  %i.ati = getelementptr inbounds nuw i8, ptr %6, i64 %i.ath ; 2 uses
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !9, !alias.scope !966, !noalias !963
  %i.atk = zext i8 %i.atj to i64
  %i.atl = and i64 %i.atg, 7
  %i.atm = shl nuw nsw i64 %i.atf, %i.atl
  %i.atn = or i64 %i.atm, %i.atk
  store i64 %i.atn, ptr %i.ati, align 1, !noalias !963
  %i.ato = add i64 %i.atg, %i.atd                 ; 4 uses
  store i64 %i.ato, ptr %5, align 8, !tbaa !7, !alias.scope !963, !noalias !966
  %i.atp = add i64 %i.alw, -22594
  %i.atq = lshr i64 %i.ato, 3
  %i.atr = getelementptr inbounds nuw i8, ptr %6, i64 %i.atq ; 2 uses
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !9, !alias.scope !968, !noalias !971
  %i.att = zext i8 %i.ats to i64
  %i.atu = and i64 %i.ato, 7
  %i.atv = shl i64 %i.atp, %i.atu
  %i.atw = or i64 %i.atv, %i.att
  store i64 %i.atw, ptr %i.atr, align 1, !noalias !971
  %i.atx = add i64 %i.ato, 24
  %i.aty = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.atz = add i32 %i.aty, 1
  store i32 %i.atz, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.asz, %bb.bq ], [ %i.atx, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aua = add nsw i64 %.0331.i, -1
  %i.aub = add i64 %i.aua, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alw, 1
  %i.auc = icmp eq i64 %i.aub, %.7.i.lcssa635636
  br i1 %i.auc, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alw, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avn, %bb.bs ] ; 3 uses
  %i.aud = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avm, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.aue = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !9
  %i.aug = zext i8 %i.auf to i64                  ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 %i.aug
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aug
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !83
  %i.aum = zext i16 %i.aul to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.aun = lshr i64 %i.aud, 3
  %i.auo = getelementptr inbounds nuw i8, ptr %6, i64 %i.aun ; 2 uses
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !9, !alias.scope !976, !noalias !973
  %i.auq = zext i8 %i.aup to i64
  %i.aur = and i64 %i.aud, 7
  %i.aus = shl nuw nsw i64 %i.aum, %i.aur
  %i.aut = or i64 %i.aus, %i.auq
  store i64 %i.aut, ptr %i.auo, align 1, !noalias !973
  %i.auu = add i64 %i.aud, %i.auj                 ; 4 uses
  store i64 %i.auu, ptr %5, align 8, !tbaa !7, !alias.scope !973, !noalias !976
  %i.auv = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !9
  %i.auy = zext i8 %i.aux to i64                  ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auy
  %i.avd = load i16, ptr %i.avc, align 2, !tbaa !83
  %i.ave = zext i16 %i.avd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !980)
  %i.avf = lshr i64 %i.auu, 3
  %i.avg = getelementptr inbounds nuw i8, ptr %6, i64 %i.avf ; 2 uses
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !9, !alias.scope !980, !noalias !978
  %i.avi = zext i8 %i.avh to i64
  %i.avj = and i64 %i.auu, 7
  %i.avk = shl nuw nsw i64 %i.ave, %i.avj
  %i.avl = or i64 %i.avk, %i.avi
  store i64 %i.avl, ptr %i.avg, align 1, !noalias !978
  %i.avm = add i64 %i.auu, %i.avb                 ; 3 uses
  store i64 %i.avm, ptr %5, align 8, !tbaa !7, !alias.scope !978, !noalias !980
  %i.avn = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.arx, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.ary, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !9
  %i.avq = zext i8 %i.avp to i64                  ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avq
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !83
  %i.avw = zext i16 %i.avv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !947)
  %i.avx = lshr i64 %.epil.init646, 3
  %i.avy = getelementptr inbounds nuw i8, ptr %6, i64 %i.avx ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !9, !alias.scope !947, !noalias !944
  %i.awa = zext i8 %i.avz to i64
  %i.awb = and i64 %.epil.init646, 7
  %i.awc = shl nuw nsw i64 %i.avw, %i.awb
  %i.awd = or i64 %i.awc, %i.awa
  store i64 %i.awd, ptr %i.avy, align 1, !noalias !944
  %i.awe = add i64 %.epil.init646, %i.avt
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !944, !noalias !947
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avm, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !9
  %i.awh = zext i8 %i.awg to i64                  ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 %i.awh
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awh
  %i.awm = load i16, ptr %i.awl, align 2, !tbaa !83
  %i.awn = zext i16 %i.awm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !973)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.awo = lshr i64 %.epil.init637, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !9, !alias.scope !976, !noalias !973
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %.epil.init637, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !973
  %i.awv = add i64 %.epil.init637, %i.awk
  store i64 %i.awv, ptr %5, align 8, !tbaa !7, !alias.scope !973, !noalias !976
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mo, %.thread74.thread118 ], [ %i.ajk, %bb.bd ], [ %i.ajk, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajk, %bb.bo ], [ %i.ajk, %.epil.preheader642 ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajk, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.aww = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.awx = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.awy = add i64 %i.awx, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.awz = lshr i64 %i.awx, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !9, !alias.scope !985, !noalias !982
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !982
  %i.axd = add i64 %i.awx, 1                      ; 3 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !7, !alias.scope !982, !noalias !985
  %i.axe = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axe, i64 4, i64 5        ; 2 uses
  %i.axf = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.axg = lshr i64 %i.axd, 3
  %i.axh = getelementptr inbounds nuw i8, ptr %6, i64 %i.axg ; 2 uses
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !9, !alias.scope !990, !noalias !987
  %i.axj = zext i8 %i.axi to i64
  %i.axk = and i64 %i.axd, 7
  %i.axl = shl nuw nsw i64 %i.axf, %i.axk
  %i.axm = or i64 %i.axl, %i.axj
  store i64 %i.axm, ptr %i.axh, align 1, !noalias !987
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !987, !noalias !990
  %i.axn = shl nuw nsw i64 %.0.i55, 2
  %i.axo = add nsw i64 %i.aww, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !995)
  %i.axp = lshr i64 %i.awy, 3
  %i.axq = getelementptr inbounds nuw i8, ptr %6, i64 %i.axp ; 2 uses
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !9, !alias.scope !995, !noalias !992
  %i.axs = zext i8 %i.axr to i64
  %i.axt = and i64 %i.awy, 7
  %i.axu = shl nuw nsw i64 %i.axo, %i.axt
  %i.axv = or i64 %i.axu, %i.axs
  store i64 %i.axv, ptr %i.axq, align 1, !noalias !992
  %i.axw = add i64 %i.awy, %i.axn                 ; 4 uses
  store i64 %i.axw, ptr %5, align 8, !tbaa !7, !alias.scope !992, !noalias !995
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  %i.axx = lshr i64 %i.axw, 3
  %i.axy = getelementptr inbounds nuw i8, ptr %6, i64 %i.axx ; 2 uses
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !9, !alias.scope !1000, !noalias !997
  %i.aya = zext i8 %i.axz to i64
  store i64 %i.aya, ptr %i.axy, align 1, !noalias !997
  %i.ayb = add i64 %i.axw, 1                      ; 2 uses
  store i64 %i.ayb, ptr %5, align 8, !tbaa !7, !alias.scope !997, !noalias !1000
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.ayc = lshr i64 %i.ayb, 3
  %i.ayd = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayc ; 2 uses
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !9, !alias.scope !1005, !noalias !1002
  %i.ayf = zext i8 %i.aye to i64
  store i64 %i.ayf, ptr %i.ayd, align 1, !noalias !1002
  %i.ayg = add i64 %i.axw, 14
  store i64 %i.ayg, ptr %5, align 8, !tbaa !7, !alias.scope !1002, !noalias !1005
  %i.ayh = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.aww, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
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
  %i.aec = shl nuw nsw i64 %i.adj, %i.adi
  %i.aed = sub nsw i64 %i.ade, %i.aec
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %i.aee = lshr i64 %i.aeb, 3
  %i.aef = getelementptr inbounds nuw i8, ptr %6, i64 %i.aee ; 2 uses
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !9, !alias.scope !1194, !noalias !1191
  %i.aeh = zext i8 %i.aeg to i64
  %i.aei = and i64 %i.aeb, 7
  %i.aej = shl nsw i64 %i.aed, %i.aei
  %i.aek = or i64 %i.aej, %i.aeh
  store i64 %i.aek, ptr %i.aef, align 1, !noalias !1191
  %i.ael = add i64 %i.aeb, %i.adi
  store i64 %i.ael, ptr %5, align 8, !tbaa !7, !alias.scope !1191, !noalias !1194
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adm ; 2 uses
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !3
  %i.aeo = add i32 %i.aen, 1
  store i32 %i.aeo, ptr %i.aem, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.ar:                                            ; preds = %bb.ap
  %i.aep = icmp ult i64 %i.acg, 2118
  br i1 %i.aep, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aeq = add nsw i64 %.2.i9, -65                ; 2 uses
  %i.aer = trunc nuw nsw i64 %i.aeq to i32
  %i.aes = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aer, i1 true) ; 2 uses
  %i.aet = xor i32 %i.aes, 31
  %i.aeu = sub nuw nsw i32 59, %i.aes
  %i.aev = zext nneg i32 %i.aeu to i64            ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aev
  %i.aex = load i8, ptr %i.aew, align 1, !tbaa !9
  %i.aey = zext i8 %i.aex to i64
  %i.aez = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aev
  %i.afa = load i16, ptr %i.aez, align 2, !tbaa !83
  %i.afb = zext i16 %i.afa to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1199)
  %i.afc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1196, !noalias !1199 ; 3 uses
  %i.afd = lshr i64 %i.afc, 3
  %i.afe = getelementptr inbounds nuw i8, ptr %6, i64 %i.afd ; 2 uses
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !9, !alias.scope !1199, !noalias !1196
  %i.afg = zext i8 %i.aff to i64
  %i.afh = and i64 %i.afc, 7
  %i.afi = shl nuw nsw i64 %i.afb, %i.afh
  %i.afj = or i64 %i.afi, %i.afg
  store i64 %i.afj, ptr %i.afe, align 1, !noalias !1196
  %i.afk = add i64 %i.afc, %i.aey                 ; 4 uses
  store i64 %i.afk, ptr %5, align 8, !tbaa !7, !alias.scope !1196, !noalias !1199
  %i.afl = zext nneg i32 %i.aet to i64            ; 2 uses
  %.neg.i45 = shl nsw i64 -1, %i.afl
  %i.afm = add nsw i64 %.neg.i45, %i.aeq
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.afn = lshr i64 %i.afk, 3
  %i.afo = getelementptr inbounds nuw i8, ptr %6, i64 %i.afn ; 2 uses
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !9, !alias.scope !1204, !noalias !1201
  %i.afq = zext i8 %i.afp to i64
  %i.afr = and i64 %i.afk, 7
  %i.afs = shl nsw i64 %i.afm, %i.afr
  %i.aft = or i64 %i.afs, %i.afq
  store i64 %i.aft, ptr %i.afo, align 1, !noalias !1201
  %i.afu = add i64 %i.afk, %i.afl
  store i64 %i.afu, ptr %5, align 8, !tbaa !7, !alias.scope !1201, !noalias !1204
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aev ; 2 uses
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !3
  %i.afx = add i32 %i.afw, 1
  store i32 %i.afx, ptr %i.afv, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

bb.at:                                            ; preds = %bb.ar
  %i.afy = load i8, ptr %i.cn, align 1, !tbaa !9
  %i.afz = zext i8 %i.afy to i64
  %i.aga = load i16, ptr %i.co, align 2, !tbaa !83
  %i.agb = zext i16 %i.aga to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  %i.agc = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1206, !noalias !1209 ; 3 uses
  %i.agd = lshr i64 %i.agc, 3
  %i.age = getelementptr inbounds nuw i8, ptr %6, i64 %i.agd ; 2 uses
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !9, !alias.scope !1209, !noalias !1206
  %i.agg = zext i8 %i.agf to i64
  %i.agh = and i64 %i.agc, 7
  %i.agi = shl nuw nsw i64 %i.agb, %i.agh
  %i.agj = or i64 %i.agi, %i.agg
  store i64 %i.agj, ptr %i.age, align 1, !noalias !1206
  %i.agk = add i64 %i.agc, %i.afz                 ; 4 uses
  store i64 %i.agk, ptr %5, align 8, !tbaa !7, !alias.scope !1206, !noalias !1209
  %i.agl = add i64 %.2.i9, -2113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.agm = lshr i64 %i.agk, 3
  %i.agn = getelementptr inbounds nuw i8, ptr %6, i64 %i.agm ; 2 uses
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !9, !alias.scope !1214, !noalias !1211
  %i.agp = zext i8 %i.ago to i64
  %i.agq = and i64 %i.agk, 7
  %i.agr = shl i64 %i.agl, %i.agq
  %i.ags = or i64 %i.agr, %i.agp
  store i64 %i.ags, ptr %i.agn, align 1, !noalias !1211
  %i.agt = add i64 %i.agk, 24
  store i64 %i.agt, ptr %5, align 8, !tbaa !7, !alias.scope !1211, !noalias !1214
  %i.agu = load i32, ptr %i.cp, align 4, !tbaa !3
  %i.agv = add i32 %i.agu, 1
  store i32 %i.agv, ptr %i.cp, align 4, !tbaa !3
  br label %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit

_ZL11EmitCopyLenmPKhPKtPjPmPh.exit:               ; preds = %bb.ao, %bb.aq, %bb.as, %bb.at
  %sext391.i = shl i64 %i.ace, 32
  %i.agw = ashr exact i64 %sext391.i, 32
  %i.agx = add nsw i64 %i.agw, 3                  ; 3 uses
  %i.agy = trunc i64 %i.agx to i32
  %i.agz = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.agy, i1 true) ; 2 uses
  %i.aha = sub nsw i32 30, %i.agz
  %i.ahb = zext i32 %i.aha to i64                 ; 3 uses
  %i.ahc = lshr i64 %i.agx, %i.ahb
  %i.ahd = and i64 %i.ahc, 1                      ; 2 uses
  %i.ahe = or disjoint i64 %i.ahd, 2
  %i.ahf = shl i64 %i.ahe, %i.ahb
  %i.ahg = shl nuw nsw i32 %i.agz, 1
  %i.ahh = sub nsw i32 58, %i.ahg
  %i.ahi = zext i32 %i.ahh to i64
  %i.ahj = or disjoint i64 %i.ahd, %i.ahi
  %i.ahk = add nuw nsw i64 %i.ahj, 80             ; 3 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ahk
  %i.ahm = load i8, ptr %i.ahl, align 1, !tbaa !9
  %i.ahn = zext i8 %i.ahm to i64
  %i.aho = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ahk
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !83
  %i.ahq = zext i16 %i.ahp to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  %i.ahr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1216, !noalias !1219 ; 3 uses
  %i.ahs = lshr i64 %i.ahr, 3
  %i.aht = getelementptr inbounds nuw i8, ptr %6, i64 %i.ahs ; 2 uses
  %i.ahu = load i8, ptr %i.aht, align 1, !tbaa !9, !alias.scope !1219, !noalias !1216
  %i.ahv = zext i8 %i.ahu to i64
  %i.ahw = and i64 %i.ahr, 7
  %i.ahx = shl nuw nsw i64 %i.ahq, %i.ahw
  %i.ahy = or i64 %i.ahx, %i.ahv
  store i64 %i.ahy, ptr %i.aht, align 1, !noalias !1216
  %i.ahz = add i64 %i.ahr, %i.ahn                 ; 4 uses
  store i64 %i.ahz, ptr %5, align 8, !tbaa !7, !alias.scope !1216, !noalias !1219
  %i.aia = sub i64 %i.agx, %i.ahf
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1224)
  %i.aib = lshr i64 %i.ahz, 3
  %i.aic = getelementptr inbounds nuw i8, ptr %6, i64 %i.aib ; 2 uses
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !9, !alias.scope !1224, !noalias !1221
  %i.aie = zext i8 %i.aid to i64
  %i.aif = and i64 %i.ahz, 7
  %i.aig = shl i64 %i.aia, %i.aif
  %i.aih = or i64 %i.aig, %i.aie
  store i64 %i.aih, ptr %i.aic, align 1, !noalias !1221
  %i.aii = add i64 %i.ahz, %i.ahb
  store i64 %i.aii, ptr %5, align 8, !tbaa !7, !alias.scope !1221, !noalias !1224
  %i.aij = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ahk ; 2 uses
  %i.aik = load i32, ptr %i.aij, align 4, !tbaa !3
  %i.ail = add i32 %i.aik, 1
  store i32 %i.ail, ptr %i.aij, align 4, !tbaa !3
  %.not392.i = icmp ult ptr %i.ach, %i.cy
  br i1 %.not392.i, label %bb.au, label %.thread101, !prof !76

bb.au:                                            ; preds = %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit
  %i.aim = getelementptr inbounds i8, ptr %i.ach, i64 -3
  %.0.copyload.i44 = load i64, ptr %i.aim, align 1 ; 4 uses
  %i.ain = mul i64 %.0.copyload.i44, 8503243848024064
  %i.aio = lshr i64 %i.ain, 49
  %i.aip = lshr i64 %.0.copyload.i44, 24
  %i.aiq = mul i64 %i.aip, 8503243848024064
  %i.air = lshr i64 %i.aiq, 49
  %i.ais = ptrtoint ptr %i.ach to i64
  %i.ait = sub i64 %i.ais, %i.ca
  %i.aiu = trunc i64 %i.ait to i32                ; 4 uses
  %i.aiv = add i32 %i.aiu, -3
  %i.aiw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aio
  store i32 %i.aiv, ptr %i.aiw, align 4, !tbaa !3
  %i.aix = lshr i64 %.0.copyload.i44, 8
  %i.aiy = mul i64 %i.aix, 8503243848024064
  %i.aiz = lshr i64 %i.aiy, 49
  %i.aja = add i32 %i.aiu, -2
  %i.ajb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aiz
  store i32 %i.aja, ptr %i.ajb, align 4, !tbaa !3
  %i.ajc = lshr i64 %.0.copyload.i44, 16
  %i.ajd = mul i64 %i.ajc, 8503243848024064
  %i.aje = lshr i64 %i.ajd, 49
  %i.ajf = add i32 %i.aiu, -1
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aje
  store i32 %i.ajf, ptr %i.ajg, align 4, !tbaa !3
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.air ; 2 uses
  %i.aji = load i32, ptr %i.ajh, align 4, !tbaa !3
  store i32 %i.aiu, ptr %i.ajh, align 4, !tbaa !3
  %.pn = sext i32 %i.aji to i64
  %.6367.i = getelementptr inbounds i8, ptr %1, i64 %.pn ; 3 uses
  %.0.copyload.i49 = load i32, ptr %i.ach, align 1
  %.0.copyload.i48 = load i32, ptr %.6367.i, align 1
  %i.ajj = icmp eq i32 %.0.copyload.i49, %.0.copyload.i48
  br i1 %i.ajj, label %_ZL7IsMatchPKhS0_.exit6, label %.thread74.backedge

.thread101:                                       ; preds = %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit, %.split, %.split.us, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit, %.critedge.backedge.us, %.critedge.backedge.us211, %_ZL10UpdateBitsmjmPh.exit
  %.7.i = phi ptr [ %.1325.i, %.split ], [ %.0324.i, %_ZL10UpdateBitsmjmPh.exit ], [ %.1325.i, %.split.us ], [ %.1325.i, %.critedge.backedge.us ], [ %.1325.i, %.critedge.backedge.us211 ], [ %i.ach, %_ZL11EmitCopyLenmPKhPKtPjPmPh.exit ], [ %i.hu, %_ZL23EmitCopyLenLastDistancemPKhPKtPjPmPh.exit ] ; 11 uses
  %i.ajk = sub i64 %.0318.i, %.0331.i             ; 11 uses
  %i.ajl = tail call noundef i64 @llvm.umin.i64(i64 %i.ajk, i64 65536) ; 4 uses
  %.not393.i = icmp eq i64 %i.ajk, 0
  br i1 %.not393.i, label %bb.bd, label %bb.av

bb.av:                                            ; preds = %.thread101
  %i.ajm = add i64 %i.ajl, %.0332.i               ; 3 uses
  %i.ajn = icmp ult i64 %i.ajm, 1048577
  br i1 %i.ajn, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cq, i8 0, i64 1024, i1 false)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aw, %.lr.ph.i
  %.02024.i = phi i64 [ %i.aju, %.lr.ph.i ], [ 0, %bb.aw ] ; 2 uses
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.02024.i
  %i.ajp = load i8, ptr %i.ajo, align 1, !tbaa !9
  %i.ajq = zext i8 %i.ajp to i64
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ajq ; 2 uses
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !3
  %i.ajt = add i32 %i.ajs, 1
  store i32 %i.ajt, ptr %i.ajr, align 4, !tbaa !3
  %i.aju = add nuw nsw i64 %.02024.i, 43          ; 2 uses
  %i.ajv = icmp samesign ult i64 %i.aju, %i.ajl
  br i1 %i.ajv, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !271

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %i.ajw = trunc nuw nsw i64 %i.ajl to i32
  %.lhs.trunc = add nuw nsw i32 %i.ajw, 42
  %i.ajx = udiv i32 %.lhs.trunc, 43               ; 3 uses
  %i.ajy = icmp ult i64 %i.ajk, 10966
  br i1 %i.ajy, label %._crit_edge.thread.i, label %bb.ax

._crit_edge.thread.i:                             ; preds = %._crit_edge.i
  %.zext = zext nneg i32 %i.ajx to i64
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %.zext
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !272
  %.pre.i = uitofp nneg i32 %i.ajx to double
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

bb.ax:                                            ; preds = %._crit_edge.i
  %i.akb = uitofp nneg i32 %i.ajx to double       ; 2 uses
  %i.akc = tail call double @log2(double noundef %i.akb) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit23.i

_ZN13duckdb_brotliL8FastLog2Em.exit23.i:          ; preds = %bb.ax, %._crit_edge.thread.i
  %.pre-phi.i = phi double [ %.pre.i, %._crit_edge.thread.i ], [ %i.akb, %bb.ax ]
  %.0.i22.i = phi double [ %i.aka, %._crit_edge.thread.i ], [ %i.akc, %bb.ax ]
  %i.akd = fadd double %.0.i22.i, 5.000000e-01
  %i.ake = tail call double @llvm.fmuladd.f64(double %i.akd, double %.pre-phi.i, double 2.000000e+02)
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i
  %.026.i = phi double [ %i.ake, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.aks, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ]
  %.125.i = phi i64 [ 0, %_ZN13duckdb_brotliL8FastLog2Em.exit23.i ], [ %i.akt, %_ZN13duckdb_brotliL8FastLog2Em.exit.i ] ; 3 uses
  %i.akf = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.125.i
  %i.akg = load i32, ptr %i.akf, align 4, !tbaa !3 ; 3 uses
  %i.akh = uitofp i32 %i.akg to double            ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 %.125.i
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !9
  %i.akk = uitofp i8 %i.akj to double
  %i.akl = icmp ult i32 %i.akg, 256
  br i1 %i.akl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.akm = zext nneg i32 %i.akg to i64
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr @_ZN13duckdb_brotli16kBrotliLog2TableE, i64 %i.akm
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !272
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

bb.ba:                                            ; preds = %bb.ay
  %i.akp = tail call double @log2(double noundef %i.akh) #11, !tbaa !3
  br label %_ZN13duckdb_brotliL8FastLog2Em.exit.i

_ZN13duckdb_brotliL8FastLog2Em.exit.i:            ; preds = %bb.ba, %bb.az
  %.0.i.i = phi double [ %i.ako, %bb.az ], [ %i.akp, %bb.ba ]
  %i.akq = fadd double %.0.i.i, %i.akk
  %i.akr = fneg double %i.akh
  %i.aks = tail call double @llvm.fmuladd.f64(double %i.akr, double %i.akq, double %.026.i) ; 2 uses
  %i.akt = add nuw nsw i64 %.125.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.akt, 256
  br i1 %exitcond.not.i, label %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, label %bb.ay, !llvm.loop !274

_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit: ; preds = %_ZN13duckdb_brotliL8FastLog2Em.exit.i
  %i.aku = fcmp ult double %i.aks, 0.000000e+00
  br i1 %i.aku, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit
  %i.akv = trunc nuw nsw i64 %i.ajm to i32
  %i.akw = add nsw i32 %i.akv, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bc, %bb.bb
  %.030.i = phi i64 [ 20, %bb.bb ], [ %i.alq, %bb.bc ] ; 2 uses
  %.02429.i = phi i32 [ %i.akw, %bb.bb ], [ %i.alr, %bb.bc ] ; 2 uses
  %.02528.i = phi i64 [ %.0333.i.ph, %bb.bb ], [ %i.als, %bb.bc ] ; 3 uses
  %i.akx = lshr i64 %.02528.i, 3
  %i.aky = and i64 %.02528.i, 7                   ; 3 uses
  %i.akz = sub nuw nsw i64 8, %i.aky
  %i.ala = tail call noundef i64 @llvm.umin.i64(i64 %.030.i, i64 range(i64 -15, -16) %i.akz) ; 4 uses
  %i.alb = add nuw nsw i64 %i.ala, %i.aky
  %i.alc = trunc nuw nsw i64 %i.alb to i32
  %notmask.i = shl nsw i32 -1, %i.alc
  %i.ald = trunc nuw nsw i64 %i.aky to i32        ; 2 uses
  %notmask26.i = shl nsw i32 -1, %i.ald
  %i.ale = xor i32 %notmask26.i, -1
  %i.alf = or i32 %notmask.i, %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %6, i64 %i.akx ; 2 uses
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !9
  %i.ali = zext i8 %i.alh to i32
  %i.alj = and i32 %i.alf, %i.ali
  %i.alk = trunc nuw nsw i64 %i.ala to i32        ; 2 uses
  %notmask27.i = shl nsw i32 -1, %i.alk
  %i.all = xor i32 %notmask27.i, -1
  %i.alm = and i32 %.02429.i, %i.all
  %i.aln = shl nuw nsw i32 %i.alm, %i.ald
  %i.alo = or i32 %i.alj, %i.aln
  %i.alp = trunc i32 %i.alo to i8
  store i8 %i.alp, ptr %i.alg, align 1, !tbaa !9
  %i.alq = sub i64 %.030.i, %i.ala                ; 2 uses
  %i.alr = lshr i32 %.02429.i, %i.alk
  %i.als = add i64 %i.ala, %.02528.i
  %.not.i54 = icmp eq i64 %i.alq, 0
  br i1 %.not.i54, label %_ZL10UpdateBitsmjmPh.exit.loopexit, label %bb.bc, !llvm.loop !75

bb.bd:                                            ; preds = %_ZL16ShouldMergeBlockPN13duckdb_brotli18BrotliOnePassArenaEPKhmS3_.exit, %bb.av, %.thread101
  %.0.i.lcssa633634 = ptrtoaddr ptr %.0.i to i64  ; 2 uses
  %.7.i.lcssa635636 = ptrtoaddr ptr %.7.i to i64  ; 2 uses
  %i.alt = icmp ult ptr %.7.i, %i.ct
  br i1 %i.alt, label %bb.be, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.be:                                            ; preds = %bb.bd
  %i.alu = ptrtoint ptr %i.ct to i64
  %i.alv = ptrtoint ptr %.7.i to i64              ; 2 uses
  %i.alw = sub i64 %i.alu, %i.alv                 ; 18 uses
  %i.alx = icmp ult i64 %i.alw, 6210
  br i1 %i.alx, label %bb.bf, label %bb.bn, !prof !76

bb.bf:                                            ; preds = %bb.be
  %i.aly = icmp samesign ult i64 %i.alw, 6
  br i1 %i.aly, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.alz = or disjoint i64 %i.alw, 40             ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.alz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !9
  %i.amc = zext i8 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.alz
  %i.ame = load i16, ptr %i.amd, align 2, !tbaa !83
  %i.amf = zext i16 %i.ame to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.amg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1226, !noalias !1229 ; 3 uses
  %i.amh = lshr i64 %i.amg, 3
  %i.ami = getelementptr inbounds nuw i8, ptr %6, i64 %i.amh ; 2 uses
  %i.amj = load i8, ptr %i.ami, align 1, !tbaa !9, !alias.scope !1229, !noalias !1226
  %i.amk = zext i8 %i.amj to i64
  %i.aml = and i64 %i.amg, 7
  %i.amm = shl nuw nsw i64 %i.amf, %i.aml
  %i.amn = or i64 %i.amm, %i.amk
  store i64 %i.amn, ptr %i.ami, align 1, !noalias !1226
  %i.amo = add i64 %i.amg, %i.amc
  store i64 %i.amo, ptr %5, align 8, !tbaa !7, !alias.scope !1226, !noalias !1229
  %i.amp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.alz ; 2 uses
  %i.amq = load i32, ptr %i.amp, align 4, !tbaa !3
  %i.amr = add i32 %i.amq, 1
  store i32 %i.amr, ptr %i.amp, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bh:                                            ; preds = %bb.bf
  %i.ams = icmp samesign ult i64 %i.alw, 130
  br i1 %i.ams, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.amt = add nsw i64 %i.alw, -2                 ; 3 uses
  %i.amu = trunc nuw nsw i64 %i.amt to i32
  %i.amv = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.amu, i1 true)
  %i.amw = sub nuw nsw i32 30, %i.amv             ; 2 uses
  %i.amx = zext nneg i32 %i.amw to i64            ; 3 uses
  %i.amy = lshr i64 %i.amt, %i.amx                ; 2 uses
  %i.amz = shl nuw nsw i32 %i.amw, 1
  %narrow281 = add nuw nsw i32 %i.amz, 42
  %i.ana = zext nneg i32 %narrow281 to i64
  %i.anb = add nuw nsw i64 %i.amy, %i.ana         ; 3 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.anb
  %i.and = load i8, ptr %i.anc, align 1, !tbaa !9
  %i.ane = zext i8 %i.and to i64
  %i.anf = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.anb
  %i.ang = load i16, ptr %i.anf, align 2, !tbaa !83
  %i.anh = zext i16 %i.ang to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1234)
  %i.ani = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1231, !noalias !1234 ; 3 uses
  %i.anj = lshr i64 %i.ani, 3
  %i.ank = getelementptr inbounds nuw i8, ptr %6, i64 %i.anj ; 2 uses
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !9, !alias.scope !1234, !noalias !1231
  %i.anm = zext i8 %i.anl to i64
  %i.ann = and i64 %i.ani, 7
  %i.ano = shl nuw nsw i64 %i.anh, %i.ann
  %i.anp = or i64 %i.ano, %i.anm
  store i64 %i.anp, ptr %i.ank, align 1, !noalias !1231
  %i.anq = add i64 %i.ani, %i.ane                 ; 4 uses
  store i64 %i.anq, ptr %5, align 8, !tbaa !7, !alias.scope !1231, !noalias !1234
  %i.anr = shl nuw nsw i64 %i.amy, %i.amx
  %i.ans = sub nsw i64 %i.amt, %i.anr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1239)
  %i.ant = lshr i64 %i.anq, 3
  %i.anu = getelementptr inbounds nuw i8, ptr %6, i64 %i.ant ; 2 uses
  %i.anv = load i8, ptr %i.anu, align 1, !tbaa !9, !alias.scope !1239, !noalias !1236
  %i.anw = zext i8 %i.anv to i64
  %i.anx = and i64 %i.anq, 7
  %i.any = shl nsw i64 %i.ans, %i.anx
  %i.anz = or i64 %i.any, %i.anw
  store i64 %i.anz, ptr %i.anu, align 1, !noalias !1236
  %i.aoa = add i64 %i.anq, %i.amx
  store i64 %i.aoa, ptr %5, align 8, !tbaa !7, !alias.scope !1236, !noalias !1239
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.anb ; 2 uses
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !3
  %i.aod = add i32 %i.aoc, 1
  store i32 %i.aod, ptr %i.aob, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bj:                                            ; preds = %bb.bh
  %i.aoe = icmp samesign ult i64 %i.alw, 2114
  br i1 %i.aoe, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aof = add nsw i64 %i.alw, -66                ; 2 uses
  %i.aog = trunc nuw nsw i64 %i.aof to i32
  %i.aoh = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.aog, i1 true) ; 2 uses
  %i.aoi = xor i32 %i.aoh, 31
  %i.aoj = sub nuw nsw i32 81, %i.aoh
  %i.aok = zext nneg i32 %i.aoj to i64            ; 3 uses
  %i.aol = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aok
  %i.aom = load i8, ptr %i.aol, align 1, !tbaa !9
  %i.aon = zext i8 %i.aom to i64
  %i.aoo = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.aok
  %i.aop = load i16, ptr %i.aoo, align 2, !tbaa !83
  %i.aoq = zext i16 %i.aop to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.aor = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1241, !noalias !1244 ; 3 uses
  %i.aos = lshr i64 %i.aor, 3
  %i.aot = getelementptr inbounds nuw i8, ptr %6, i64 %i.aos ; 2 uses
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !9, !alias.scope !1244, !noalias !1241
  %i.aov = zext i8 %i.aou to i64
  %i.aow = and i64 %i.aor, 7
  %i.aox = shl nuw nsw i64 %i.aoq, %i.aow
  %i.aoy = or i64 %i.aox, %i.aov
  store i64 %i.aoy, ptr %i.aot, align 1, !noalias !1241
  %i.aoz = add i64 %i.aor, %i.aon                 ; 4 uses
  store i64 %i.aoz, ptr %5, align 8, !tbaa !7, !alias.scope !1241, !noalias !1244
  %i.apa = zext nneg i32 %i.aoi to i64            ; 2 uses
  %.neg.i26 = shl nsw i64 -1, %i.apa
  %i.apb = add nsw i64 %.neg.i26, %i.aof
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.apc = lshr i64 %i.aoz, 3
  %i.apd = getelementptr inbounds nuw i8, ptr %6, i64 %i.apc ; 2 uses
  %i.ape = load i8, ptr %i.apd, align 1, !tbaa !9, !alias.scope !1249, !noalias !1246
  %i.apf = zext i8 %i.ape to i64
  %i.apg = and i64 %i.aoz, 7
  %i.aph = shl nsw i64 %i.apb, %i.apg
  %i.api = or i64 %i.aph, %i.apf
  store i64 %i.api, ptr %i.apd, align 1, !noalias !1246
  %i.apj = add i64 %i.aoz, %i.apa
  store i64 %i.apj, ptr %5, align 8, !tbaa !7, !alias.scope !1246, !noalias !1249
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aok ; 2 uses
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !3
  %i.apm = add i32 %i.apl, 1
  store i32 %i.apm, ptr %i.apk, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

bb.bl:                                            ; preds = %bb.bj
  %i.apn = load i8, ptr %i.ch, align 1, !tbaa !9
  %i.apo = zext i8 %i.apn to i64
  %i.app = load i16, ptr %i.ci, align 2, !tbaa !83
  %i.apq = zext i16 %i.app to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  %i.apr = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1251, !noalias !1254 ; 3 uses
  %i.aps = lshr i64 %i.apr, 3
  %i.apt = getelementptr inbounds nuw i8, ptr %6, i64 %i.aps ; 2 uses
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !9, !alias.scope !1254, !noalias !1251
  %i.apv = zext i8 %i.apu to i64
  %i.apw = and i64 %i.apr, 7
  %i.apx = shl nuw nsw i64 %i.apq, %i.apw
  %i.apy = or i64 %i.apx, %i.apv
  store i64 %i.apy, ptr %i.apt, align 1, !noalias !1251
  %i.apz = add i64 %i.apr, %i.apo                 ; 4 uses
  store i64 %i.apz, ptr %5, align 8, !tbaa !7, !alias.scope !1251, !noalias !1254
  %i.aqa = add nsw i64 %i.alw, -2114
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1259)
  %i.aqb = lshr i64 %i.apz, 3
  %i.aqc = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqb ; 2 uses
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !9, !alias.scope !1259, !noalias !1256
  %i.aqe = zext i8 %i.aqd to i64
  %i.aqf = and i64 %i.apz, 7
  %i.aqg = shl nuw nsw i64 %i.aqa, %i.aqf
  %i.aqh = or i64 %i.aqg, %i.aqe
  store i64 %i.aqh, ptr %i.aqc, align 1, !noalias !1256
  %i.aqi = add i64 %i.apz, 12
  store i64 %i.aqi, ptr %5, align 8, !tbaa !7, !alias.scope !1256, !noalias !1259
  %i.aqj = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.aqk = add i32 %i.aqj, 1
  store i32 %i.aqk, ptr %i.cj, align 4, !tbaa !3
  br label %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27

_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27:           ; preds = %bb.bg, %bb.bi, %bb.bk, %bb.bl
  %.not282 = icmp eq ptr %i.ct, %.7.i
  br i1 %.not282, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.lr.ph273

.lr.ph273:                                        ; preds = %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27
  %.promoted274 = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1261, !noalias !1264 ; 2 uses
  %i.aql = add nsw i64 %.0331.i, -1
  %i.aqm = add i64 %i.aql, %.0.i.lcssa633634
  %xtraiter644 = and i64 %i.alw, 1
  %i.aqn = icmp eq i64 %i.aqm, %.7.i.lcssa635636
  br i1 %i.aqn, label %.epil.preheader642, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter649 = and i64 %i.alw, 8190
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %.lr.ph273.new
  %i.aqo = phi i64 [ %.promoted274, %.lr.ph273.new ], [ %i.arx, %bb.bm ] ; 3 uses
  %.0.i32272 = phi i64 [ 0, %.lr.ph273.new ], [ %i.ary, %bb.bm ] ; 3 uses
  %niter650 = phi i64 [ 0, %.lr.ph273.new ], [ %niter650.next.1, %bb.bm ]
  %i.aqp = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !9
  %i.aqr = zext i8 %i.aqq to i64                  ; 2 uses
  %i.aqs = getelementptr inbounds nuw i8, ptr %0, i64 %i.aqr
  %i.aqt = load i8, ptr %i.aqs, align 1, !tbaa !9
  %i.aqu = zext i8 %i.aqt to i64
  %i.aqv = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aqr
  %i.aqw = load i16, ptr %i.aqv, align 2, !tbaa !83
  %i.aqx = zext i16 %i.aqw to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.aqy = lshr i64 %i.aqo, 3
  %i.aqz = getelementptr inbounds nuw i8, ptr %6, i64 %i.aqy ; 2 uses
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !9, !alias.scope !1264, !noalias !1261
  %i.arb = zext i8 %i.ara to i64
  %i.arc = and i64 %i.aqo, 7
  %i.ard = shl nuw nsw i64 %i.aqx, %i.arc
  %i.are = or i64 %i.ard, %i.arb
  store i64 %i.are, ptr %i.aqz, align 1, !noalias !1261
  %i.arf = add i64 %i.aqo, %i.aqu                 ; 4 uses
  store i64 %i.arf, ptr %5, align 8, !tbaa !7, !alias.scope !1261, !noalias !1264
  %i.arg = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 1
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !9
  %i.arj = zext i8 %i.ari to i64                  ; 2 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 %i.arj
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !9
  %i.arm = zext i8 %i.arl to i64
  %i.arn = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.arj
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !83
  %i.arp = zext i16 %i.aro to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1268)
  %i.arq = lshr i64 %i.arf, 3
  %i.arr = getelementptr inbounds nuw i8, ptr %6, i64 %i.arq ; 2 uses
  %i.ars = load i8, ptr %i.arr, align 1, !tbaa !9, !alias.scope !1268, !noalias !1266
  %i.art = zext i8 %i.ars to i64
  %i.aru = and i64 %i.arf, 7
  %i.arv = shl nuw nsw i64 %i.arp, %i.aru
  %i.arw = or i64 %i.arv, %i.art
  store i64 %i.arw, ptr %i.arr, align 1, !noalias !1266
  %i.arx = add i64 %i.arf, %i.arm                 ; 3 uses
  store i64 %i.arx, ptr %5, align 8, !tbaa !7, !alias.scope !1266, !noalias !1268
  %i.ary = add nuw i64 %.0.i32272, 2              ; 2 uses
  %niter650.next.1 = add i64 %niter650, 2         ; 2 uses
  %niter650.ncmp.1 = icmp eq i64 %niter650.next.1, %unroll_iter649
  br i1 %niter650.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, label %bb.bm, !llvm.loop !149

bb.bn:                                            ; preds = %bb.be
  %i.arz = sub i64 %i.alv, %i.cr
  %i.asa = mul i64 %i.arz, 50
  %i.asb = icmp ugt i64 %i.asa, %i.alw
  %narrow.not130 = or i1 %i.cs, %i.asb
  br i1 %narrow.not130, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.asc = add i64 %.0333.i.ph, -3
  tail call fastcc void @_ZL25EmitUncompressedMetaBlockPKhS0_mPmPh(ptr noundef %.0330.i.ph, ptr noundef nonnull %i.ct, i64 noundef %i.asc, ptr noundef nonnull %5, ptr noundef %6)
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

bb.bp:                                            ; preds = %bb.bn
  %i.asd = icmp ult i64 %i.alw, 22594
  br i1 %i.asd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ase = load i8, ptr %i.ce, align 2, !tbaa !9
  %i.asf = zext i8 %i.ase to i64
  %i.asg = load i16, ptr %i.cf, align 4, !tbaa !83
  %i.ash = zext i16 %i.asg to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  %i.asi = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1270, !noalias !1273 ; 3 uses
  %i.asj = lshr i64 %i.asi, 3
  %i.ask = getelementptr inbounds nuw i8, ptr %6, i64 %i.asj ; 2 uses
  %i.asl = load i8, ptr %i.ask, align 1, !tbaa !9, !alias.scope !1273, !noalias !1270
  %i.asm = zext i8 %i.asl to i64
  %i.asn = and i64 %i.asi, 7
  %i.aso = shl nuw nsw i64 %i.ash, %i.asn
  %i.asp = or i64 %i.aso, %i.asm
  store i64 %i.asp, ptr %i.ask, align 1, !noalias !1270
  %i.asq = add i64 %i.asi, %i.asf                 ; 4 uses
  store i64 %i.asq, ptr %5, align 8, !tbaa !7, !alias.scope !1270, !noalias !1273
  %i.asr = add nsw i64 %i.alw, -6210
  %i.ass = lshr i64 %i.asq, 3
  %i.ast = getelementptr inbounds nuw i8, ptr %6, i64 %i.ass ; 2 uses
  %i.asu = load i8, ptr %i.ast, align 1, !tbaa !9, !alias.scope !1275, !noalias !1278
  %i.asv = zext i8 %i.asu to i64
  %i.asw = and i64 %i.asq, 7
  %i.asx = shl nuw nsw i64 %i.asr, %i.asw
  %i.asy = or i64 %i.asx, %i.asv
  store i64 %i.asy, ptr %i.ast, align 1, !noalias !1278
  %i.asz = add i64 %i.asq, 14
  %i.ata = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.atb = add i32 %i.ata, 1
  store i32 %i.atb, ptr %i.cg, align 8, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

bb.br:                                            ; preds = %bb.bp
  %i.atc = load i8, ptr %i.cb, align 1, !tbaa !9
  %i.atd = zext i8 %i.atc to i64
  %i.ate = load i16, ptr %i.cc, align 2, !tbaa !83
  %i.atf = zext i16 %i.ate to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1283)
  %i.atg = load i64, ptr %5, align 8, !tbaa !7, !alias.scope !1280, !noalias !1283 ; 3 uses
  %i.ath = lshr i64 %i.atg, 3
  %i.ati = getelementptr inbounds nuw i8, ptr %6, i64 %i.ath ; 2 uses
  %i.atj = load i8, ptr %i.ati, align 1, !tbaa !9, !alias.scope !1283, !noalias !1280
  %i.atk = zext i8 %i.atj to i64
  %i.atl = and i64 %i.atg, 7
  %i.atm = shl nuw nsw i64 %i.atf, %i.atl
  %i.atn = or i64 %i.atm, %i.atk
  store i64 %i.atn, ptr %i.ati, align 1, !noalias !1280
  %i.ato = add i64 %i.atg, %i.atd                 ; 4 uses
  store i64 %i.ato, ptr %5, align 8, !tbaa !7, !alias.scope !1280, !noalias !1283
  %i.atp = add i64 %i.alw, -22594
  %i.atq = lshr i64 %i.ato, 3
  %i.atr = getelementptr inbounds nuw i8, ptr %6, i64 %i.atq ; 2 uses
  %i.ats = load i8, ptr %i.atr, align 1, !tbaa !9, !alias.scope !1285, !noalias !1288
  %i.att = zext i8 %i.ats to i64
  %i.atu = and i64 %i.ato, 7
  %i.atv = shl i64 %i.atp, %i.atu
  %i.atw = or i64 %i.atv, %i.att
  store i64 %i.atw, ptr %i.atr, align 1, !noalias !1288
  %i.atx = add i64 %i.ato, 24
  %i.aty = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.atz = add i32 %i.aty, 1
  store i32 %i.atz, ptr %i.cd, align 4, !tbaa !3
  br label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30:       ; preds = %bb.bq, %bb.br
  %.sink359 = phi i64 [ %i.asz, %bb.bq ], [ %i.atx, %bb.br ] ; 3 uses
  store i64 %.sink359, ptr %5, align 8, !tbaa !7, !noalias !35
  %i.aua = add nsw i64 %.0331.i, -1
  %i.aub = add i64 %i.aua, %.0.i.lcssa633634
  %xtraiter635 = and i64 %i.alw, 1
  %i.auc = icmp eq i64 %i.aub, %.7.i.lcssa635636
  br i1 %i.auc, label %.epil.preheader630, label %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new

_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new:   ; preds = %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %unroll_iter640 = and i64 %i.alw, -2
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bs, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new
  %.0.i34271 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avn, %bb.bs ] ; 3 uses
  %i.aud = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %i.avm, %bb.bs ] ; 3 uses
  %niter641 = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30.new ], [ %niter641.next.1, %bb.bs ]
  %i.aue = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auf = load i8, ptr %i.aue, align 1, !tbaa !9
  %i.aug = zext i8 %i.auf to i64                  ; 2 uses
  %i.auh = getelementptr inbounds nuw i8, ptr %0, i64 %i.aug
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !9
  %i.auj = zext i8 %i.aui to i64
  %i.auk = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.aug
  %i.aul = load i16, ptr %i.auk, align 2, !tbaa !83
  %i.aum = zext i16 %i.aul to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.aun = lshr i64 %i.aud, 3
  %i.auo = getelementptr inbounds nuw i8, ptr %6, i64 %i.aun ; 2 uses
  %i.aup = load i8, ptr %i.auo, align 1, !tbaa !9, !alias.scope !1293, !noalias !1290
  %i.auq = zext i8 %i.aup to i64
  %i.aur = and i64 %i.aud, 7
  %i.aus = shl nuw nsw i64 %i.aum, %i.aur
  %i.aut = or i64 %i.aus, %i.auq
  store i64 %i.aut, ptr %i.auo, align 1, !noalias !1290
  %i.auu = add i64 %i.aud, %i.auj                 ; 4 uses
  store i64 %i.auu, ptr %5, align 8, !tbaa !7, !alias.scope !1290, !noalias !1293
  %i.auv = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 1
  %i.aux = load i8, ptr %i.auw, align 1, !tbaa !9
  %i.auy = zext i8 %i.aux to i64                  ; 2 uses
  %i.auz = getelementptr inbounds nuw i8, ptr %0, i64 %i.auy
  %i.ava = load i8, ptr %i.auz, align 1, !tbaa !9
  %i.avb = zext i8 %i.ava to i64
  %i.avc = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.auy
  %i.avd = load i16, ptr %i.avc, align 2, !tbaa !83
  %i.ave = zext i16 %i.avd to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  %i.avf = lshr i64 %i.auu, 3
  %i.avg = getelementptr inbounds nuw i8, ptr %6, i64 %i.avf ; 2 uses
  %i.avh = load i8, ptr %i.avg, align 1, !tbaa !9, !alias.scope !1297, !noalias !1295
  %i.avi = zext i8 %i.avh to i64
  %i.avj = and i64 %i.auu, 7
  %i.avk = shl nuw nsw i64 %i.ave, %i.avj
  %i.avl = or i64 %i.avk, %i.avi
  store i64 %i.avl, ptr %i.avg, align 1, !noalias !1295
  %i.avm = add i64 %i.auu, %i.avb                 ; 3 uses
  store i64 %i.avm, ptr %5, align 8, !tbaa !7, !alias.scope !1295, !noalias !1297
  %i.avn = add nuw i64 %.0.i34271, 2              ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, label %bb.bs, !llvm.loop !149

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa: ; preds = %bb.bm
  %lcmp.mod647.not = icmp eq i64 %xtraiter644, 0
  br i1 %lcmp.mod647.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader642

.epil.preheader642:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %.lr.ph273
  %.epil.init646 = phi i64 [ %.promoted274, %.lr.ph273 ], [ %i.arx, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ] ; 3 uses
  %.0.i32272.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.ary, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ]
  %lcmp.mod648 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod648)
  %i.avo = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i32272.epil.init
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !9
  %i.avq = zext i8 %i.avp to i64                  ; 2 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %0, i64 %i.avq
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !9
  %i.avt = zext i8 %i.avs to i64
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.avq
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !83
  %i.avw = zext i16 %i.avv to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  %i.avx = lshr i64 %.epil.init646, 3
  %i.avy = getelementptr inbounds nuw i8, ptr %6, i64 %i.avx ; 2 uses
  %i.avz = load i8, ptr %i.avy, align 1, !tbaa !9, !alias.scope !1264, !noalias !1261
  %i.awa = zext i8 %i.avz to i64
  %i.awb = and i64 %.epil.init646, 7
  %i.awc = shl nuw nsw i64 %i.avw, %i.awb
  %i.awd = or i64 %i.awc, %i.awa
  store i64 %i.awd, ptr %i.avy, align 1, !noalias !1261
  %i.awe = add i64 %.epil.init646, %i.avt
  store i64 %i.awe, ptr %5, align 8, !tbaa !7, !alias.scope !1261, !noalias !1264
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa: ; preds = %bb.bs
  %lcmp.mod638.not = icmp eq i64 %xtraiter635, 0
  br i1 %lcmp.mod638.not, label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33, label %.epil.preheader630

.epil.preheader630:                               ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30
  %.0.i34271.epil.init = phi i64 [ 0, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avn, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ]
  %.epil.init637 = phi i64 [ %.sink359, %_ZL17EmitLongInsertLenmPKhPKtPjPmPh.exit30 ], [ %i.avm, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ] ; 3 uses
  %lcmp.mod639 = trunc i64 %i.alw to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.awf = getelementptr inbounds nuw i8, ptr %.7.i, i64 %.0.i34271.epil.init
  %i.awg = load i8, ptr %i.awf, align 1, !tbaa !9
  %i.awh = zext i8 %i.awg to i64                  ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %0, i64 %i.awh
  %i.awj = load i8, ptr %i.awi, align 1, !tbaa !9
  %i.awk = zext i8 %i.awj to i64
  %i.awl = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %i.awh
  %i.awm = load i16, ptr %i.awl, align 2, !tbaa !83
  %i.awn = zext i16 %i.awm to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1293)
  %i.awo = lshr i64 %.epil.init637, 3
  %i.awp = getelementptr inbounds nuw i8, ptr %6, i64 %i.awo ; 2 uses
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !9, !alias.scope !1293, !noalias !1290
  %i.awr = zext i8 %i.awq to i64
  %i.aws = and i64 %.epil.init637, 7
  %i.awt = shl nuw nsw i64 %i.awn, %i.aws
  %i.awu = or i64 %i.awt, %i.awr
  store i64 %i.awu, ptr %i.awp, align 1, !noalias !1290
  %i.awv = add i64 %.epil.init637, %i.awk
  store i64 %i.awv, ptr %5, align 8, !tbaa !7, !alias.scope !1290, !noalias !1293
  br label %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33

_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33:           ; preds = %.epil.preheader630, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa, %.epil.preheader642, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27, %.thread74.thread118, %bb.bo, %bb.bd
  %.8.i = phi ptr [ %.us-phi220, %.thread74.thread118 ], [ %i.ct, %bb.bd ], [ %i.ct, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ct, %bb.bo ], [ %i.ct, %.epil.preheader642 ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ct, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ct, %.epil.preheader630 ] ; 2 uses
  %.5323.i = phi i64 [ %i.mo, %.thread74.thread118 ], [ %i.ajk, %bb.bd ], [ %i.ajk, %_ZL13EmitInsertLenmPKhPKtPjPmPh.exit27 ], [ %i.ajk, %bb.bo ], [ %i.ajk, %.epil.preheader642 ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit.unr-lcssa ], [ %i.ajk, %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33.loopexit561.unr-lcssa ], [ %i.ajk, %.epil.preheader630 ] ; 4 uses
  %.not396.i = icmp eq i64 %.5323.i, 0
  br i1 %.not396.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZL12EmitLiteralsPKhmS0_PKtPmPh.exit33
  %i.aww = tail call noundef i64 @llvm.umin.i64(i64 %.5323.i, i64 98304) ; 3 uses
  %i.awx = load i64, ptr %5, align 8, !tbaa !7    ; 3 uses
  %i.awy = add i64 %i.awx, 3                      ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.awz = lshr i64 %i.awx, 3
  %i.axa = getelementptr inbounds nuw i8, ptr %6, i64 %i.awz ; 2 uses
  %i.axb = load i8, ptr %i.axa, align 1, !tbaa !9, !alias.scope !1302, !noalias !1299
  %i.axc = zext i8 %i.axb to i64
  store i64 %i.axc, ptr %i.axa, align 1, !noalias !1299
  %i.axd = add i64 %i.awx, 1                      ; 3 uses
  store i64 %i.axd, ptr %5, align 8, !tbaa !7, !alias.scope !1299, !noalias !1302
  %i.axe = icmp ult i64 %.5323.i, 65537
  %.0.i55 = select i1 %i.axe, i64 4, i64 5        ; 2 uses
  %i.axf = add nsw i64 %.0.i55, -4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  %i.axg = lshr i64 %i.axd, 3
  %i.axh = getelementptr inbounds nuw i8, ptr %6, i64 %i.axg ; 2 uses
  %i.axi = load i8, ptr %i.axh, align 1, !tbaa !9, !alias.scope !1307, !noalias !1304
  %i.axj = zext i8 %i.axi to i64
  %i.axk = and i64 %i.axd, 7
  %i.axl = shl nuw nsw i64 %i.axf, %i.axk
  %i.axm = or i64 %i.axl, %i.axj
  store i64 %i.axm, ptr %i.axh, align 1, !noalias !1304
  store i64 %i.awy, ptr %5, align 8, !tbaa !7, !alias.scope !1304, !noalias !1307
  %i.axn = shl nuw nsw i64 %.0.i55, 2
  %i.axo = add nsw i64 %i.aww, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1312)
  %i.axp = lshr i64 %i.awy, 3
  %i.axq = getelementptr inbounds nuw i8, ptr %6, i64 %i.axp ; 2 uses
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !9, !alias.scope !1312, !noalias !1309
  %i.axs = zext i8 %i.axr to i64
  %i.axt = and i64 %i.awy, 7
  %i.axu = shl nuw nsw i64 %i.axo, %i.axt
  %i.axv = or i64 %i.axu, %i.axs
  store i64 %i.axv, ptr %i.axq, align 1, !noalias !1309
  %i.axw = add i64 %i.awy, %i.axn                 ; 4 uses
  store i64 %i.axw, ptr %5, align 8, !tbaa !7, !alias.scope !1309, !noalias !1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  %i.axx = lshr i64 %i.axw, 3
  %i.axy = getelementptr inbounds nuw i8, ptr %6, i64 %i.axx ; 2 uses
  %i.axz = load i8, ptr %i.axy, align 1, !tbaa !9, !alias.scope !1317, !noalias !1314
  %i.aya = zext i8 %i.axz to i64
  store i64 %i.aya, ptr %i.axy, align 1, !noalias !1314
  %i.ayb = add i64 %i.axw, 1                      ; 2 uses
  store i64 %i.ayb, ptr %5, align 8, !tbaa !7, !alias.scope !1314, !noalias !1317
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1322)
  %i.ayc = lshr i64 %i.ayb, 3
  %i.ayd = getelementptr inbounds nuw i8, ptr %6, i64 %i.ayc ; 2 uses
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !9, !alias.scope !1322, !noalias !1319
  %i.ayf = zext i8 %i.aye to i64
  store i64 %i.ayf, ptr %i.ayd, align 1, !noalias !1319
  %i.ayg = add i64 %i.axw, 14
  store i64 %i.ayg, ptr %5, align 8, !tbaa !7, !alias.scope !1319, !noalias !1322
  %i.ayh = tail call fastcc noundef i64 @_ZL30BuildAndStoreLiteralPrefixCodePN13duckdb_brotli18BrotliOnePassArenaEPKhmPhPtPmS4_(ptr noundef %0, ptr noundef %.8.i, i64 noundef %i.aww, ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %5, ptr noundef %6)
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
