inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_minizL20tdefl_compress_blockEPNS_16tdefl_compressorEi:bb.a
  %.pre410.i = load i32, ptr %i.aas, align 8, !tbaa !176
  %.pre411.i = load i32, ptr %i.aap, align 4, !tbaa !175
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  %i.aey = phi i32 [ %.pre411.i, %bb.ec ], [ %i.aer, %bb.eb ]
  %i.aez = phi i32 [ %.pre410.i, %bb.ec ], [ %i.aes, %bb.eb ]
  %i.afa = lshr i32 %i.aez, 8                     ; 3 uses
  store i32 %i.afa, ptr %i.aas, align 8, !tbaa !176
  %i.afb = add i32 %i.aey, -8                     ; 4 uses
  store i32 %i.afb, ptr %i.aap, align 4, !tbaa !175
  %i.afc = icmp ugt i32 %i.afb, 7
  br i1 %i.afc, label %bb.eb, label %.preheader318.i, !llvm.loop !330

.preheader.i:                                     ; preds = %._crit_edge361.i
  %.not383.i = icmp eq i32 %.19.i, 0
  br i1 %.not383.i, label %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit, label %.lr.ph380.i

.lr.ph380.i:                                      ; preds = %.preheader.i
  %i.afd = getelementptr inbounds nuw i8, ptr %0, i64 36106
  br label %bb.eh

bb.ee:                                            ; preds = %._crit_edge361.i, %.preheader318.i
  %i.afe = phi i32 [ %i.aem, %.preheader318.i ], [ %i.agk, %._crit_edge361.i ]
  %i.aff = phi i32 [ %i.aen, %.preheader318.i ], [ %i.agl, %._crit_edge361.i ] ; 3 uses
  %indvars.iv400.i = phi i64 [ 0, %.preheader318.i ], [ %indvars.iv.next401.i, %._crit_edge361.i ] ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL37s_tdefl_packed_code_size_syms_swizzleE, i64 %indvars.iv400.i
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !7
  %i.afi = zext i8 %i.afh to i64
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.afi
  %i.afk = load i8, ptr %i.afj, align 1, !tbaa !7
  %i.afl = zext i8 %i.afk to i32
  %i.afm = shl nuw nsw i32 %i.afl, %i.aff
  %i.afn = or i32 %i.afm, %i.afe                  ; 4 uses
  store i32 %i.afn, ptr %i.aas, align 8, !tbaa !176
  %i.afo = add nuw nsw i32 %i.aff, 3              ; 4 uses
  store i32 %i.afo, ptr %i.aap, align 4, !tbaa !175
  %i.afp = icmp samesign ugt i32 %i.aff, 4
  br i1 %i.afp, label %.lr.ph360.i, label %._crit_edge361.i

.lr.ph360.i:                                      ; preds = %bb.ee
  %i.afq = load ptr, ptr %i.aeo, align 8, !tbaa !37
  %i.afr = load ptr, ptr %i.aep, align 8, !tbaa !38
  %i.afs = icmp ult ptr %i.afq, %i.afr
  br i1 %i.afs, label %.lr.ph360.split.i, label %.lr.ph360.split.us.i

.lr.ph360.split.us.i:                             ; preds = %.lr.ph360.i, %.lr.ph360.split.us.i
  %i.aft = phi i32 [ %i.afw, %.lr.ph360.split.us.i ], [ %i.afo, %.lr.ph360.i ]
  %i.afu = phi i32 [ %i.afv, %.lr.ph360.split.us.i ], [ %i.afn, %.lr.ph360.i ]
  %i.afv = lshr i32 %i.afu, 8                     ; 3 uses
  %i.afw = add i32 %i.aft, -8                     ; 4 uses
  %i.afx = icmp ugt i32 %i.afw, 7
  br i1 %i.afx, label %.lr.ph360.split.us.i, label %._crit_edge361.split.us.i, !llvm.loop !331

._crit_edge361.split.us.i:                        ; preds = %.lr.ph360.split.us.i
  store i32 %i.afv, ptr %i.aas, align 8, !tbaa !176
  store i32 %i.afw, ptr %i.aap, align 4, !tbaa !175
  br label %._crit_edge361.i

.lr.ph360.split.i:                                ; preds = %.lr.ph360.i, %bb.eg
  %i.afy = phi i32 [ %i.agi, %bb.eg ], [ %i.afo, %.lr.ph360.i ]
  %i.afz = phi i32 [ %i.agh, %bb.eg ], [ %i.afn, %.lr.ph360.i ] ; 2 uses
  %i.aga = load ptr, ptr %i.aeo, align 8, !tbaa !37 ; 3 uses
  %i.agb = load ptr, ptr %i.aep, align 8, !tbaa !38
  %i.agc = icmp ult ptr %i.aga, %i.agb
  br i1 %i.agc, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph360.split.i
  %i.agd = trunc i32 %i.afz to i8
  %i.age = getelementptr inbounds nuw i8, ptr %i.aga, i64 1
  store ptr %i.age, ptr %i.aeo, align 8, !tbaa !37
  store i8 %i.agd, ptr %i.aga, align 1, !tbaa !7
  %.pre412.i = load i32, ptr %i.aas, align 8, !tbaa !176
  %.pre413.i = load i32, ptr %i.aap, align 4, !tbaa !175
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph360.split.i
  %i.agf = phi i32 [ %.pre413.i, %bb.ef ], [ %i.afy, %.lr.ph360.split.i ]
  %i.agg = phi i32 [ %.pre412.i, %bb.ef ], [ %i.afz, %.lr.ph360.split.i ]
  %i.agh = lshr i32 %i.agg, 8                     ; 3 uses
  store i32 %i.agh, ptr %i.aas, align 8, !tbaa !176
  %i.agi = add i32 %i.agf, -8                     ; 4 uses
  store i32 %i.agi, ptr %i.aap, align 4, !tbaa !175
  %i.agj = icmp ugt i32 %i.agi, 7
  br i1 %i.agj, label %.lr.ph360.split.i, label %._crit_edge361.i, !llvm.loop !332

._crit_edge361.i:                                 ; preds = %bb.eg, %._crit_edge361.split.us.i, %bb.ee
  %i.agk = phi i32 [ %i.afn, %bb.ee ], [ %i.afv, %._crit_edge361.split.us.i ], [ %i.agh, %bb.eg ] ; 3 uses
  %i.agl = phi i32 [ %i.afo, %bb.ee ], [ %i.afw, %._crit_edge361.split.us.i ], [ %i.agi, %bb.eg ] ; 3 uses
  %indvars.iv.next401.i = add nuw nsw i64 %indvars.iv400.i, 1 ; 2 uses
  %exitcond404.not.i = icmp eq i64 %indvars.iv.next401.i, %wide.trip.count403.i
  br i1 %exitcond404.not.i, label %.preheader.i, label %bb.ee, !llvm.loop !333

bb.eh:                                            ; preds = %.loopexit.i, %.lr.ph380.i
  %i.agm = phi i32 [ %i.agk, %.lr.ph380.i ], [ %i.aju, %.loopexit.i ]
  %i.agn = phi i32 [ %i.agl, %.lr.ph380.i ], [ %i.ajv, %.loopexit.i ] ; 3 uses
  %.0280379.i = phi i32 [ 0, %.lr.ph380.i ], [ %.1281.i, %.loopexit.i ] ; 3 uses
  %i.ago = add nuw i32 %.0280379.i, 1             ; 2 uses
  %i.agp = zext i32 %.0280379.i to i64
  %i.agq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.agp
  %i.agr = load i8, ptr %i.agq, align 1, !tbaa !7 ; 2 uses
  %i.ags = zext i8 %i.agr to i64                  ; 3 uses
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.afd, i64 %i.ags
  %i.agu = load i16, ptr %i.agt, align 2, !tbaa !118
  %i.agv = zext i16 %i.agu to i32
  %i.agw = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.ags
  %i.agx = load i8, ptr %i.agw, align 1, !tbaa !7
  %i.agy = zext i8 %i.agx to i32                  ; 2 uses
  %i.agz = shl nuw nsw i32 %i.agv, %i.agn
  %i.aha = or i32 %i.agz, %i.agm                  ; 4 uses
  store i32 %i.aha, ptr %i.aas, align 8, !tbaa !176
  %i.ahb = add nuw nsw i32 %i.agn, %i.agy         ; 6 uses
  store i32 %i.ahb, ptr %i.aap, align 4, !tbaa !175
  %i.ahc = icmp samesign ugt i32 %i.ahb, 7
  br i1 %i.ahc, label %.lr.ph366.i, label %._crit_edge367.i

.lr.ph366.i:                                      ; preds = %bb.eh
  %i.ahd = load ptr, ptr %i.aeo, align 8, !tbaa !37
  %i.ahe = load ptr, ptr %i.aep, align 8, !tbaa !38
  %i.ahf = icmp ult ptr %i.ahd, %i.ahe
  br i1 %i.ahf, label %.lr.ph366.split.i, label %.lr.ph366.split.us.i.preheader

.lr.ph366.split.us.i.preheader:                   ; preds = %.lr.ph366.i
  %i.ahg = add i32 %i.agn, -8
  %i.ahh = add i32 %i.ahg, %i.agy                 ; 2 uses
  %i.ahi = lshr i32 %i.ahh, 3
  %i.ahj = add nuw nsw i32 %i.ahi, 1
  %xtraiter331 = and i32 %i.ahj, 7                ; 2 uses
  %lcmp.mod332.not = icmp eq i32 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol

.lr.ph366.split.us.i.prol:                        ; preds = %.lr.ph366.split.us.i.preheader, %.lr.ph366.split.us.i.prol
  %i.ahk = phi i32 [ %i.ahn, %.lr.ph366.split.us.i.prol ], [ %i.ahb, %.lr.ph366.split.us.i.preheader ]
  %i.ahl = phi i32 [ %i.ahm, %.lr.ph366.split.us.i.prol ], [ %i.aha, %.lr.ph366.split.us.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph366.split.us.i.prol ], [ 0, %.lr.ph366.split.us.i.preheader ]
  %i.ahm = lshr i32 %i.ahl, 8                     ; 2 uses
  %i.ahn = add i32 %i.ahk, -8                     ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter331
  br i1 %prol.iter.cmp.not, label %.lr.ph366.split.us.i.prol.loopexit, label %.lr.ph366.split.us.i.prol, !llvm.loop !334

.lr.ph366.split.us.i.prol.loopexit:               ; preds = %.lr.ph366.split.us.i.prol, %.lr.ph366.split.us.i.preheader
  %.unr = phi i32 [ %i.ahb, %.lr.ph366.split.us.i.preheader ], [ %i.ahn, %.lr.ph366.split.us.i.prol ]
  %.lcssa284.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahm, %.lr.ph366.split.us.i.prol ]
  %.lcssa283.unr = phi i32 [ poison, %.lr.ph366.split.us.i.preheader ], [ %i.ahn, %.lr.ph366.split.us.i.prol ]
  %i.aho = icmp ult i32 %i.ahh, 56
  br i1 %i.aho, label %._crit_edge367.split.us.i, label %.lr.ph366.split.us.i

.lr.ph366.split.us.i:                             ; preds = %.lr.ph366.split.us.i.prol.loopexit, %.lr.ph366.split.us.i
  %i.ahp = phi i32 [ %i.ahq, %.lr.ph366.split.us.i ], [ %.unr, %.lr.ph366.split.us.i.prol.loopexit ]
  %i.ahq = add i32 %i.ahp, -64                    ; 3 uses
  %i.ahr = icmp ugt i32 %i.ahq, 7
  br i1 %i.ahr, label %.lr.ph366.split.us.i, label %._crit_edge367.split.us.i, !llvm.loop !335

._crit_edge367.split.us.i:                        ; preds = %.lr.ph366.split.us.i, %.lr.ph366.split.us.i.prol.loopexit
  %.lcssa284 = phi i32 [ %.lcssa284.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ 0, %.lr.ph366.split.us.i ] ; 2 uses
  %.lcssa283 = phi i32 [ %.lcssa283.unr, %.lr.ph366.split.us.i.prol.loopexit ], [ %i.ahq, %.lr.ph366.split.us.i ] ; 2 uses
  store i32 %.lcssa284, ptr %i.aas, align 8, !tbaa !176
  store i32 %.lcssa283, ptr %i.aap, align 4, !tbaa !175
  br label %._crit_edge367.i

.lr.ph366.split.i:                                ; preds = %.lr.ph366.i, %bb.ej
  %i.ahs = phi i32 [ %i.aic, %bb.ej ], [ %i.ahb, %.lr.ph366.i ]
  %i.aht = phi i32 [ %i.aib, %bb.ej ], [ %i.aha, %.lr.ph366.i ] ; 2 uses
  %i.ahu = load ptr, ptr %i.aeo, align 8, !tbaa !37 ; 3 uses
  %i.ahv = load ptr, ptr %i.aep, align 8, !tbaa !38
  %i.ahw = icmp ult ptr %i.ahu, %i.ahv
  br i1 %i.ahw, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %.lr.ph366.split.i
  %i.ahx = trunc i32 %i.aht to i8
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahu, i64 1
  store ptr %i.ahy, ptr %i.aeo, align 8, !tbaa !37
  store i8 %i.ahx, ptr %i.ahu, align 1, !tbaa !7
  %.pre414.i = load i32, ptr %i.aas, align 8, !tbaa !176
  %.pre415.i = load i32, ptr %i.aap, align 4, !tbaa !175
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.lr.ph366.split.i
  %i.ahz = phi i32 [ %.pre415.i, %bb.ei ], [ %i.ahs, %.lr.ph366.split.i ]
  %i.aia = phi i32 [ %.pre414.i, %bb.ei ], [ %i.aht, %.lr.ph366.split.i ]
  %i.aib = lshr i32 %i.aia, 8                     ; 3 uses
  store i32 %i.aib, ptr %i.aas, align 8, !tbaa !176
  %i.aic = add i32 %i.ahz, -8                     ; 4 uses
  store i32 %i.aic, ptr %i.aap, align 4, !tbaa !175
  %i.aid = icmp ugt i32 %i.aic, 7
  br i1 %i.aid, label %.lr.ph366.split.i, label %._crit_edge367.i, !llvm.loop !336

._crit_edge367.i:                                 ; preds = %bb.ej, %._crit_edge367.split.us.i, %bb.eh
  %i.aie = phi i32 [ %i.aha, %bb.eh ], [ %.lcssa284, %._crit_edge367.split.us.i ], [ %i.aib, %bb.ej ] ; 2 uses
  %i.aif = phi i32 [ %i.ahb, %bb.eh ], [ %.lcssa283, %._crit_edge367.split.us.i ], [ %i.aic, %bb.ej ] ; 4 uses
  %i.aig = icmp ugt i8 %i.agr, 15
  br i1 %i.aig, label %bb.ek, label %.loopexit.i

bb.ek:                                            ; preds = %._crit_edge367.i
  %i.aih = add i32 %.0280379.i, 2                 ; 3 uses
  %i.aii = zext i32 %i.ago to i64
  %i.aij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.aii
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !7
  %i.ail = zext i8 %i.aik to i32
  %2 = getelementptr i8, ptr @.str.13, i64 %i.ags
  %i.aim = getelementptr i8, ptr %2, i64 -16
  %i.ain = load i8, ptr %i.aim, align 1, !tbaa !7
  %i.aio = sext i8 %i.ain to i32                  ; 2 uses
  %i.aip = shl nuw nsw i32 %i.ail, %i.aif
  %i.aiq = or i32 %i.aip, %i.aie                  ; 4 uses
  store i32 %i.aiq, ptr %i.aas, align 8, !tbaa !176
  %i.air = add nsw i32 %i.aif, %i.aio             ; 6 uses
  store i32 %i.air, ptr %i.aap, align 4, !tbaa !175
  %i.ais = icmp ugt i32 %i.air, 7
  br i1 %i.ais, label %.lr.ph374.i, label %.loopexit.i

.lr.ph374.i:                                      ; preds = %bb.ek
  %i.ait = load ptr, ptr %i.aeo, align 8, !tbaa !37
  %i.aiu = load ptr, ptr %i.aep, align 8, !tbaa !38
  %i.aiv = icmp ult ptr %i.ait, %i.aiu
  br i1 %i.aiv, label %.lr.ph374.split.i, label %.lr.ph374.split.us.i.preheader

.lr.ph374.split.us.i.preheader:                   ; preds = %.lr.ph374.i
  %i.aiw = add i32 %i.aif, -8
  %i.aix = add i32 %i.aiw, %i.aio                 ; 2 uses
  %i.aiy = lshr i32 %i.aix, 3
  %i.aiz = add nuw nsw i32 %i.aiy, 1
  %xtraiter334 = and i32 %i.aiz, 7                ; 2 uses
  %lcmp.mod335.not = icmp eq i32 %xtraiter334, 0
  br i1 %lcmp.mod335.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol

.lr.ph374.split.us.i.prol:                        ; preds = %.lr.ph374.split.us.i.preheader, %.lr.ph374.split.us.i.prol
  %i.aja = phi i32 [ %i.ajd, %.lr.ph374.split.us.i.prol ], [ %i.air, %.lr.ph374.split.us.i.preheader ]
  %i.ajb = phi i32 [ %i.ajc, %.lr.ph374.split.us.i.prol ], [ %i.aiq, %.lr.ph374.split.us.i.preheader ]
  %prol.iter336 = phi i32 [ %prol.iter336.next, %.lr.ph374.split.us.i.prol ], [ 0, %.lr.ph374.split.us.i.preheader ]
  %i.ajc = lshr i32 %i.ajb, 8                     ; 2 uses
  %i.ajd = add i32 %i.aja, -8                     ; 3 uses
  %prol.iter336.next = add i32 %prol.iter336, 1   ; 2 uses
  %prol.iter336.cmp.not = icmp eq i32 %prol.iter336.next, %xtraiter334
  br i1 %prol.iter336.cmp.not, label %.lr.ph374.split.us.i.prol.loopexit, label %.lr.ph374.split.us.i.prol, !llvm.loop !337

.lr.ph374.split.us.i.prol.loopexit:               ; preds = %.lr.ph374.split.us.i.prol, %.lr.ph374.split.us.i.preheader
  %.unr337 = phi i32 [ %i.air, %.lr.ph374.split.us.i.preheader ], [ %i.ajd, %.lr.ph374.split.us.i.prol ]
  %.lcssa288.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.ajc, %.lr.ph374.split.us.i.prol ]
  %.lcssa287.unr = phi i32 [ poison, %.lr.ph374.split.us.i.preheader ], [ %i.ajd, %.lr.ph374.split.us.i.prol ]
  %i.aje = icmp ult i32 %i.aix, 56
  br i1 %i.aje, label %..loopexit_crit_edge.split.us.i, label %.lr.ph374.split.us.i

.lr.ph374.split.us.i:                             ; preds = %.lr.ph374.split.us.i.prol.loopexit, %.lr.ph374.split.us.i
  %i.ajf = phi i32 [ %i.ajg, %.lr.ph374.split.us.i ], [ %.unr337, %.lr.ph374.split.us.i.prol.loopexit ]
  %i.ajg = add i32 %i.ajf, -64                    ; 3 uses
  %i.ajh = icmp ugt i32 %i.ajg, 7
  br i1 %i.ajh, label %.lr.ph374.split.us.i, label %..loopexit_crit_edge.split.us.i, !llvm.loop !338

..loopexit_crit_edge.split.us.i:                  ; preds = %.lr.ph374.split.us.i, %.lr.ph374.split.us.i.prol.loopexit
  %.lcssa288 = phi i32 [ %.lcssa288.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ 0, %.lr.ph374.split.us.i ] ; 2 uses
  %.lcssa287 = phi i32 [ %.lcssa287.unr, %.lr.ph374.split.us.i.prol.loopexit ], [ %i.ajg, %.lr.ph374.split.us.i ] ; 2 uses
  store i32 %.lcssa288, ptr %i.aas, align 8, !tbaa !176
  store i32 %.lcssa287, ptr %i.aap, align 4, !tbaa !175
  br label %.loopexit.i

.lr.ph374.split.i:                                ; preds = %.lr.ph374.i, %bb.em
  %i.aji = phi i32 [ %i.ajs, %bb.em ], [ %i.air, %.lr.ph374.i ]
  %i.ajj = phi i32 [ %i.ajr, %bb.em ], [ %i.aiq, %.lr.ph374.i ] ; 2 uses
  %i.ajk = load ptr, ptr %i.aeo, align 8, !tbaa !37 ; 3 uses
  %i.ajl = load ptr, ptr %i.aep, align 8, !tbaa !38
  %i.ajm = icmp ult ptr %i.ajk, %i.ajl
  br i1 %i.ajm, label %bb.el, label %bb.em

bb.el:                                            ; preds = %.lr.ph374.split.i
  %i.ajn = trunc i32 %i.ajj to i8
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ajk, i64 1
  store ptr %i.ajo, ptr %i.aeo, align 8, !tbaa !37
  store i8 %i.ajn, ptr %i.ajk, align 1, !tbaa !7
  %.pre416.i = load i32, ptr %i.aas, align 8, !tbaa !176
  %.pre417.i = load i32, ptr %i.aap, align 4, !tbaa !175
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %.lr.ph374.split.i
  %i.ajp = phi i32 [ %.pre417.i, %bb.el ], [ %i.aji, %.lr.ph374.split.i ]
  %i.ajq = phi i32 [ %.pre416.i, %bb.el ], [ %i.ajj, %.lr.ph374.split.i ]
  %i.ajr = lshr i32 %i.ajq, 8                     ; 3 uses
  store i32 %i.ajr, ptr %i.aas, align 8, !tbaa !176
  %i.ajs = add i32 %i.ajp, -8                     ; 4 uses
  store i32 %i.ajs, ptr %i.aap, align 4, !tbaa !175
  %i.ajt = icmp ugt i32 %i.ajs, 7
  br i1 %i.ajt, label %.lr.ph374.split.i, label %.loopexit.i, !llvm.loop !339

.loopexit.i:                                      ; preds = %bb.em, %..loopexit_crit_edge.split.us.i, %bb.ek, %._crit_edge367.i
  %i.aju = phi i32 [ %i.aie, %._crit_edge367.i ], [ %.lcssa288, %..loopexit_crit_edge.split.us.i ], [ %i.aiq, %bb.ek ], [ %i.ajr, %bb.em ] ; 2 uses
  %i.ajv = phi i32 [ %i.aif, %._crit_edge367.i ], [ %.lcssa287, %..loopexit_crit_edge.split.us.i ], [ %i.air, %bb.ek ], [ %i.ajs, %bb.em ] ; 2 uses
  %.1281.i = phi i32 [ %i.ago, %._crit_edge367.i ], [ %i.aih, %..loopexit_crit_edge.split.us.i ], [ %i.aih, %bb.ek ], [ %i.aih, %bb.em ] ; 2 uses
  %i.ajw = icmp ult i32 %.1281.i, %.19.i
  br i1 %i.ajw, label %bb.eh, label %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit, !llvm.loop !340

_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit: ; preds = %.loopexit.i, %.preheader.i
  %.pre168.i102 = phi i32 [ %i.agk, %.preheader.i ], [ %i.aju, %.loopexit.i ]
  %.pre166.i100 = phi i32 [ %i.agl, %.preheader.i ], [ %i.ajv, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit

_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit: ; preds = %bb.p, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i, %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit
  %.pre168.i = phi i32 [ %.pre168.i102, %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit ], [ %i.pp, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i ], [ %i.qd, %bb.p ] ; 2 uses
  %.pre166.i = phi i32 [ %.pre166.i100, %_ZN12duckdb_minizL25tdefl_start_dynamic_blockEPNS_16tdefl_compressorE.exit ], [ %i.pq, %_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii.exit47.i ], [ %i.qe, %bb.p ] ; 2 uses
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 37546 ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !34
  %i.aka = icmp ult ptr %i.ajx, %i.ajz
  br i1 %i.aka, label %.lr.ph145.i, label %._crit_edge146.i

.lr.ph145.i:                                      ; preds = %_ZN12duckdb_minizL24tdefl_start_static_blockEPNS_16tdefl_compressorE.exit
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 34954 ; 2 uses
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 36682 ; 2 uses
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 15 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 15 uses
  %i.akf = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 10 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %0, i64 35530
  %i.aki = getelementptr inbounds nuw i8, ptr %0, i64 36970
  br label %bb.en

bb.en:                                            ; preds = %.loopexit.i6, %.lr.ph145.i
  %i.akj = phi i32 [ %.pre168.i, %.lr.ph145.i ], [ %i.apv, %.loopexit.i6 ] ; 2 uses
  %i.akk = phi i32 [ %.pre166.i, %.lr.ph145.i ], [ %i.apw, %.loopexit.i6 ] ; 4 uses
  %.0143.i = phi i32 [ 1, %.lr.ph145.i ], [ %i.apx, %.loopexit.i6 ] ; 2 uses
  %.0110142.i = phi ptr [ %i.ajx, %.lr.ph145.i ], [ %.2.i, %.loopexit.i6 ] ; 3 uses
  %i.akl = icmp eq i32 %.0143.i, 1
  br i1 %i.akl, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.akm = getelementptr inbounds nuw i8, ptr %.0110142.i, i64 1
  %i.akn = load i8, ptr %.0110142.i, align 1, !tbaa !7
  %i.ako = zext i8 %i.akn to i32
  %i.akp = or disjoint i32 %i.ako, 256
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.1111.i = phi ptr [ %i.akm, %bb.eo ], [ %.0110142.i, %bb.en ] ; 5 uses
  %.1.i = phi i32 [ %i.akp, %bb.eo ], [ %.0143.i, %bb.en ] ; 2 uses
  %i.akq = and i32 %.1.i, 1
  %.not.i4 = icmp eq i32 %i.akq, 0
  br i1 %.not.i4, label %bb.ez, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.akr = load i8, ptr %.1111.i, align 1, !tbaa !7 ; 2 uses
  %i.aks = zext i8 %i.akr to i32
  %i.akt = getelementptr inbounds nuw i8, ptr %.1111.i, i64 1
  %i.aku = load i16, ptr %i.akt, align 1          ; 4 uses
  %i.akv = zext i16 %i.aku to i32
  %i.akw = lshr i16 %i.aku, 8
  %i.akx = zext nneg i16 %i.akw to i64            ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %.1111.i, i64 3 ; 2 uses
  %i.akz = zext i8 %i.akr to i64                  ; 2 uses
  %i.ala = getelementptr inbounds nuw [2 x i8], ptr @_ZN12duckdb_minizL15s_tdefl_len_symE, i64 %i.akz
  %i.alb = load i16, ptr %i.ala, align 2, !tbaa !118
  %i.alc = zext i16 %i.alb to i64                 ; 2 uses
  %i.ald = getelementptr inbounds nuw [2 x i8], ptr %i.akb, i64 %i.alc
  %i.ale = load i16, ptr %i.ald, align 2, !tbaa !118
  %i.alf = zext i16 %i.ale to i32
  %i.alg = getelementptr inbounds nuw i8, ptr %i.akc, i64 %i.alc
  %i.alh = load i8, ptr %i.alg, align 1, !tbaa !7
  %i.ali = zext i8 %i.alh to i32
  %i.alj = shl nuw nsw i32 %i.alf, %i.akk
  %i.alk = or i32 %i.akj, %i.alj                  ; 3 uses
  store i32 %i.alk, ptr %i.ake, align 8, !tbaa !176
  %i.all = add nuw nsw i32 %i.akk, %i.ali         ; 4 uses
  store i32 %i.all, ptr %i.akd, align 4, !tbaa !175
  %i.alm = icmp samesign ugt i32 %i.all, 7
  br i1 %i.alm, label %.lr.ph.i7, label %._crit_edge.i5

.lr.ph.i7:                                        ; preds = %bb.eq, %bb.es
  %i.aln = phi i32 [ %i.alx, %bb.es ], [ %i.all, %bb.eq ]
  %i.alo = phi i32 [ %i.alw, %bb.es ], [ %i.alk, %bb.eq ] ; 2 uses
  %i.alp = load ptr, ptr %i.akf, align 8, !tbaa !37 ; 3 uses
  %i.alq = load ptr, ptr %i.akg, align 8, !tbaa !38
  %i.alr = icmp ult ptr %i.alp, %i.alq
  br i1 %i.alr, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.lr.ph.i7
  %i.als = trunc i32 %i.alo to i8
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alp, i64 1
  store ptr %i.alt, ptr %i.akf, align 8, !tbaa !37
  store i8 %i.als, ptr %i.alp, align 1, !tbaa !7
  %.pre.i8 = load i32, ptr %i.ake, align 8, !tbaa !176
  %.pre157.i = load i32, ptr %i.akd, align 4, !tbaa !175
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %.lr.ph.i7
  %i.alu = phi i32 [ %.pre157.i, %bb.er ], [ %i.aln, %.lr.ph.i7 ]
  %i.alv = phi i32 [ %.pre.i8, %bb.er ], [ %i.alo, %.lr.ph.i7 ]
  %i.alw = lshr i32 %i.alv, 8                     ; 3 uses
  store i32 %i.alw, ptr %i.ake, align 8, !tbaa !176
  %i.alx = add i32 %i.alu, -8                     ; 4 uses
  store i32 %i.alx, ptr %i.akd, align 4, !tbaa !175
  %i.aly = icmp ugt i32 %i.alx, 7
  br i1 %i.aly, label %.lr.ph.i7, label %._crit_edge.i5, !llvm.loop !341

._crit_edge.i5:                                   ; preds = %bb.es, %bb.eq
  %i.alz = phi i32 [ %i.alk, %bb.eq ], [ %i.alw, %bb.es ]
  %storemerge125.lcssa.i = phi i32 [ %i.all, %bb.eq ], [ %i.alx, %bb.es ] ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr @_ZN12duckdb_minizL17s_tdefl_len_extraE, i64 %i.akz
  %i.amb = load i8, ptr %i.ama, align 1, !tbaa !7 ; 2 uses
  %i.amc = zext i8 %i.amb to i64
  %i.amd = getelementptr inbounds nuw [4 x i8], ptr @_ZN12duckdb_minizL11mz_bitmasksE, i64 %i.amc
  %i.ame = load i32, ptr %i.amd, align 4, !tbaa !3
end_hunk_0
