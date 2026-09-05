Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/flatten?download=true
inline.NumInlined: 16
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@ADIOI_Flatten:bb.a
.preheader945.lr.ph:                              ; preds = %bb.bn
  %i.aec = icmp sgt i64 %i.ady, 0
  %i.aed = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br i1 %i.aec, label %.preheader945.us, label %._crit_edge1004

.preheader945.us:                                 ; preds = %.preheader945.lr.ph, %._crit_edge1000.us
  %.81003.us = phi i32 [ %i.afm, %._crit_edge1000.us ], [ 1, %.preheader945.lr.ph ]
  %.191002.us = phi i64 [ %i.afk, %._crit_edge1000.us ], [ %i.abn, %.preheader945.lr.ph ]
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader945.us, %flatlist_node_grow.exit897.us
  %.20998.us = phi i64 [ %.191002.us, %.preheader945.us ], [ %i.afk, %flatlist_node_grow.exit897.us ] ; 5 uses
  %.11824997.us = phi i64 [ 0, %.preheader945.us ], [ %i.afl, %flatlist_node_grow.exit897.us ]
  br i1 %.not, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.aeg = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.aeh = call i32 @PMPI_Type_get_extent(ptr noundef %i.aeg, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %sext921.us = shl i64 %.20998.us, 32
  %i.aei = ashr exact i64 %sext921.us, 32
  %i.aej = load i64, ptr %i.aed, align 8, !tbaa !16 ; 2 uses
  %.not.i895.us = icmp sgt i64 %i.aej, %i.aei
  br i1 %.not.i895.us, label %.flatlist_node_grow.exit897.us_crit_edge, label %bb.br

.flatlist_node_grow.exit897.us_crit_edge:         ; preds = %bb.bq
  %.pre1217 = load ptr, ptr %i.aef, align 8, !tbaa !19
  %.pre1218 = load ptr, ptr %i.aee, align 8, !tbaa !18
  br label %flatlist_node_grow.exit897.us

bb.br:                                            ; preds = %bb.bq
  %i.aek = sitofp i64 %i.aej to double
  %i.ael = call double @llvm.fmuladd.f64(double %i.aek, double 1.250000e+00, double 4.000000e+00)
  %i.aem = fptosi double %i.ael to i32            ; 2 uses
  %i.aen = shl nsw i32 %i.aem, 1
  %i.aeo = sext i32 %i.aen to i64
  %i.aep = call ptr @ADIOI_Calloc_fn(i64 noundef %i.aeo, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.aeq = sext i32 %i.aem to i64                 ; 2 uses
  %i.aer = getelementptr inbounds [8 x i8], ptr %i.aep, i64 %i.aeq ; 3 uses
  %i.aes = load i64, ptr %i.aed, align 8, !tbaa !16 ; 2 uses
  %.not20.i896.us = icmp eq i64 %i.aes, 0
  br i1 %.not20.i896.us, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.aet = load ptr, ptr %i.aee, align 8, !tbaa !18
  %i.aeu = shl i64 %i.aes, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aep, ptr align 8 %i.aet, i64 %i.aeu, i1 false)
  %i.aev = load ptr, ptr %i.aef, align 8, !tbaa !19
  %i.aew = load i64, ptr %i.aed, align 8, !tbaa !16
  %i.aex = shl i64 %i.aew, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aer, ptr align 8 %i.aev, i64 %i.aex, i1 false)
  %i.aey = load ptr, ptr %i.aee, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.aey, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  store ptr %i.aep, ptr %i.aee, align 8, !tbaa !18
  store ptr %i.aer, ptr %i.aef, align 8, !tbaa !19
  store i64 %i.aeq, ptr %i.aed, align 8, !tbaa !16
  br label %flatlist_node_grow.exit897.us

flatlist_node_grow.exit897.us:                    ; preds = %.flatlist_node_grow.exit897.us_crit_edge, %bb.bt
  %i.aez = phi ptr [ %.pre1218, %.flatlist_node_grow.exit897.us_crit_edge ], [ %i.aep, %bb.bt ] ; 2 uses
  %i.afa = phi ptr [ %.pre1217, %.flatlist_node_grow.exit897.us_crit_edge ], [ %i.aer, %bb.bt ] ; 2 uses
  %i.afb = sub nsw i64 %.20998.us, %i.ady         ; 2 uses
  %i.afc = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %i.afb
  %i.afd = load i64, ptr %i.afc, align 8, !tbaa !9
  %i.afe = load i64, ptr %i.l, align 8, !tbaa !73
  %i.aff = add nsw i64 %i.afe, %i.afd
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.afa, i64 %.20998.us
  store i64 %i.aff, ptr %i.afg, align 8, !tbaa !9
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.aez, i64 %i.afb
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !9
  %i.afj = getelementptr inbounds [8 x i8], ptr %i.aez, i64 %.20998.us
  store i64 %i.afi, ptr %i.afj, align 8, !tbaa !9
  %i.afk = add nsw i64 %.20998.us, 1              ; 4 uses
  %i.afl = add nuw nsw i64 %.11824997.us, 1       ; 2 uses
  %exitcond1169.not = icmp eq i64 %i.afl, %i.ady
  br i1 %exitcond1169.not, label %._crit_edge1000.us, label %bb.bo, !llvm.loop !54

._crit_edge1000.us:                               ; preds = %flatlist_node_grow.exit897.us
  %i.afm = add nuw nsw i32 %.81003.us, 1          ; 2 uses
  %i.afn = load i32, ptr %i.adz, align 4, !tbaa !10
  %i.afo = icmp slt i32 %i.afm, %i.afn
  br i1 %i.afo, label %.preheader945.us, label %._crit_edge1004.loopexit, !llvm.loop !55

._crit_edge1004.loopexit:                         ; preds = %._crit_edge1000.us
  %.pre1242 = sub i64 %i.afk, %i.abb
  br label %._crit_edge1004

._crit_edge1004:                                  ; preds = %.preheader945.lr.ph, %._crit_edge1004.loopexit, %bb.bn
  %.pre-phi1243 = phi i64 [ %i.ady, %bb.bn ], [ %.pre1242, %._crit_edge1004.loopexit ], [ %i.ady, %.preheader945.lr.ph ] ; 5 uses
  %.19.lcssa = phi i64 [ %i.abn, %bb.bn ], [ %i.afk, %._crit_edge1004.loopexit ], [ %i.abn, %.preheader945.lr.ph ] ; 5 uses
  store i64 %.19.lcssa, ptr %3, align 8, !tbaa !9
  %i.afp = icmp sgt i32 %i.aau, 1
  br i1 %i.afp, label %.preheader944.lr.ph, label %._crit_edge1015

.preheader944.lr.ph:                              ; preds = %._crit_edge1004
  %i.afq = icmp sgt i64 %.pre-phi1243, 0
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  br i1 %i.afq, label %.preheader944.lr.ph.split.us, label %._crit_edge1015

.preheader944.lr.ph.split.us:                     ; preds = %.preheader944.lr.ph
  br i1 %.not, label %.preheader944.us.us, label %.preheader944.us

.preheader944.us.us:                              ; preds = %.preheader944.lr.ph.split.us, %._crit_edge1010.split.us.us.us
  %.211014.us.us = phi i64 [ %i.ahe, %._crit_edge1010.split.us.us.us ], [ %.19.lcssa, %.preheader944.lr.ph.split.us ]
  %.128251013.us.us = phi i64 [ %i.ahf, %._crit_edge1010.split.us.us.us ], [ 1, %.preheader944.lr.ph.split.us ] ; 2 uses
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.128251013.us.us ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 4
  br label %bb.bu

bb.bu:                                            ; preds = %flatlist_node_grow.exit903.us.us.us, %.preheader944.us.us
  %indvars.iv1175 = phi i64 [ %indvars.iv.next1176, %flatlist_node_grow.exit903.us.us.us ], [ 0, %.preheader944.us.us ]
  %.221007.us.us.us = phi i64 [ %i.ahe, %flatlist_node_grow.exit903.us.us.us ], [ %.211014.us.us, %.preheader944.us.us ] ; 5 uses
  %i.afx = load i32, ptr %i.afv, align 4, !tbaa !10
  %i.afy = load i32, ptr %i.afw, align 4, !tbaa !10
  %i.afz = sub nsw i32 %i.afx, %i.afy
  %i.aga = sext i32 %i.afz to i64
  %sext920.us.us.us = shl i64 %.221007.us.us.us, 32
  %i.agb = ashr exact i64 %sext920.us.us.us, 32
  %i.agc = load i64, ptr %i.afr, align 8, !tbaa !16 ; 2 uses
  %.not.i901.us.us.us = icmp sgt i64 %i.agc, %i.agb
  br i1 %.not.i901.us.us.us, label %.flatlist_node_grow.exit903.us.us.us_crit_edge, label %bb.bv

.flatlist_node_grow.exit903.us.us.us_crit_edge:   ; preds = %bb.bu
  %.pre1221 = load ptr, ptr %i.aft, align 8, !tbaa !19
  %.pre1222 = load ptr, ptr %i.afs, align 8, !tbaa !18
  br label %flatlist_node_grow.exit903.us.us.us

bb.bv:                                            ; preds = %bb.bu
  %i.agd = sitofp i64 %i.agc to double
  %i.age = call double @llvm.fmuladd.f64(double %i.agd, double 1.250000e+00, double 4.000000e+00)
  %i.agf = fptosi double %i.age to i32            ; 2 uses
  %i.agg = shl nsw i32 %i.agf, 1
  %i.agh = sext i32 %i.agg to i64
  %i.agi = call ptr @ADIOI_Calloc_fn(i64 noundef %i.agh, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.agj = sext i32 %i.agf to i64                 ; 2 uses
  %i.agk = getelementptr inbounds [8 x i8], ptr %i.agi, i64 %i.agj ; 3 uses
  %i.agl = load i64, ptr %i.afr, align 8, !tbaa !16 ; 2 uses
  %.not20.i902.us.us.us = icmp eq i64 %i.agl, 0
  br i1 %.not20.i902.us.us.us, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.agm = load ptr, ptr %i.afs, align 8, !tbaa !18
  %i.agn = shl i64 %i.agl, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.agi, ptr align 8 %i.agm, i64 %i.agn, i1 false)
  %i.ago = load ptr, ptr %i.aft, align 8, !tbaa !19
  %i.agp = load i64, ptr %i.afr, align 8, !tbaa !16
  %i.agq = shl i64 %i.agp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.agk, ptr align 8 %i.ago, i64 %i.agq, i1 false)
  %i.agr = load ptr, ptr %i.afs, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.agr, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  store ptr %i.agi, ptr %i.afs, align 8, !tbaa !18
  store ptr %i.agk, ptr %i.aft, align 8, !tbaa !19
  store i64 %i.agj, ptr %i.afr, align 8, !tbaa !16
  br label %flatlist_node_grow.exit903.us.us.us

flatlist_node_grow.exit903.us.us.us:              ; preds = %.flatlist_node_grow.exit903.us.us.us_crit_edge, %bb.bx
  %i.ags = phi ptr [ %.pre1222, %.flatlist_node_grow.exit903.us.us.us_crit_edge ], [ %i.agi, %bb.bx ] ; 2 uses
  %i.agt = phi ptr [ %.pre1221, %.flatlist_node_grow.exit903.us.us.us_crit_edge ], [ %i.agk, %bb.bx ] ; 2 uses
  %i.agu = sub nsw i64 %.221007.us.us.us, %.pre-phi1243 ; 2 uses
  %i.agv = getelementptr inbounds [8 x i8], ptr %i.agt, i64 %i.agu
  %i.agw = load i64, ptr %i.agv, align 8, !tbaa !9
  %i.agx = load i64, ptr %i.l, align 8, !tbaa !73
  %i.agy = mul nsw i64 %i.agx, %i.aga
  %i.agz = add nsw i64 %i.agy, %i.agw
  %i.aha = getelementptr inbounds [8 x i8], ptr %i.agt, i64 %.221007.us.us.us
  store i64 %i.agz, ptr %i.aha, align 8, !tbaa !9
  %i.ahb = getelementptr inbounds [8 x i8], ptr %i.ags, i64 %i.agu
  %i.ahc = load i64, ptr %i.ahb, align 8, !tbaa !9
  %i.ahd = getelementptr inbounds [8 x i8], ptr %i.ags, i64 %.221007.us.us.us
  store i64 %i.ahc, ptr %i.ahd, align 8, !tbaa !9
  %i.ahe = add nsw i64 %.221007.us.us.us, 1       ; 3 uses
  %indvars.iv.next1176 = add nuw nsw i64 %indvars.iv1175, 1 ; 2 uses
  %exitcond1178.not = icmp eq i64 %indvars.iv.next1176, %.pre-phi1243
  br i1 %exitcond1178.not, label %._crit_edge1010.split.us.us.us, label %bb.bu, !llvm.loop !56

._crit_edge1010.split.us.us.us:                   ; preds = %flatlist_node_grow.exit903.us.us.us
  %i.ahf = add nuw nsw i64 %.128251013.us.us, 1   ; 2 uses
  %exitcond1179.not = icmp eq i64 %i.ahf, %i.aav
  br i1 %exitcond1179.not, label %._crit_edge1015, label %.preheader944.us.us, !llvm.loop !57

.preheader944.us:                                 ; preds = %.preheader944.lr.ph.split.us, %._crit_edge1010.split.us1019
  %.211014.us = phi i64 [ %i.aim, %._crit_edge1010.split.us1019 ], [ %.19.lcssa, %.preheader944.lr.ph.split.us ]
  %.128251013.us = phi i64 [ %i.ain, %._crit_edge1010.split.us1019 ], [ 1, %.preheader944.lr.ph.split.us ] ; 2 uses
  %i.ahg = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.128251013.us ; 2 uses
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 -8
  br label %bb.by

bb.by:                                            ; preds = %.preheader944.us, %flatlist_node_grow.exit900.us
  %indvars.iv1170 = phi i64 [ 0, %.preheader944.us ], [ %indvars.iv.next1171, %flatlist_node_grow.exit900.us ]
  %.221007.us1018 = phi i64 [ %.211014.us, %.preheader944.us ], [ %i.aim, %flatlist_node_grow.exit900.us ] ; 5 uses
  %sext919.us = shl i64 %.221007.us1018, 32
  %i.ahi = ashr exact i64 %sext919.us, 32
  %i.ahj = load i64, ptr %i.afr, align 8, !tbaa !16 ; 2 uses
  %.not.i898.us = icmp sgt i64 %i.ahj, %i.ahi
  br i1 %.not.i898.us, label %.flatlist_node_grow.exit900.us_crit_edge, label %bb.bz

.flatlist_node_grow.exit900.us_crit_edge:         ; preds = %bb.by
  %.pre1219 = load ptr, ptr %i.aft, align 8, !tbaa !19
  %.pre1220 = load ptr, ptr %i.afs, align 8, !tbaa !18
  br label %flatlist_node_grow.exit900.us

bb.bz:                                            ; preds = %bb.by
  %i.ahk = sitofp i64 %i.ahj to double
  %i.ahl = call double @llvm.fmuladd.f64(double %i.ahk, double 1.250000e+00, double 4.000000e+00)
  %i.ahm = fptosi double %i.ahl to i32            ; 2 uses
  %i.ahn = shl nsw i32 %i.ahm, 1
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = call ptr @ADIOI_Calloc_fn(i64 noundef %i.aho, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.ahq = sext i32 %i.ahm to i64                 ; 2 uses
  %i.ahr = getelementptr inbounds [8 x i8], ptr %i.ahp, i64 %i.ahq ; 3 uses
  %i.ahs = load i64, ptr %i.afr, align 8, !tbaa !16 ; 2 uses
  %.not20.i899.us = icmp eq i64 %i.ahs, 0
  br i1 %.not20.i899.us, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.aht = load ptr, ptr %i.afs, align 8, !tbaa !18
  %i.ahu = shl i64 %i.ahs, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ahp, ptr align 8 %i.aht, i64 %i.ahu, i1 false)
  %i.ahv = load ptr, ptr %i.aft, align 8, !tbaa !19
  %i.ahw = load i64, ptr %i.afr, align 8, !tbaa !16
  %i.ahx = shl i64 %i.ahw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ahr, ptr align 8 %i.ahv, i64 %i.ahx, i1 false)
  %i.ahy = load ptr, ptr %i.afs, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.ahy, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  store ptr %i.ahp, ptr %i.afs, align 8, !tbaa !18
  store ptr %i.ahr, ptr %i.aft, align 8, !tbaa !19
  store i64 %i.ahq, ptr %i.afr, align 8, !tbaa !16
  br label %flatlist_node_grow.exit900.us

flatlist_node_grow.exit900.us:                    ; preds = %.flatlist_node_grow.exit900.us_crit_edge, %bb.cb
  %i.ahz = phi ptr [ %.pre1220, %.flatlist_node_grow.exit900.us_crit_edge ], [ %i.ahp, %bb.cb ] ; 2 uses
  %i.aia = phi ptr [ %.pre1219, %.flatlist_node_grow.exit900.us_crit_edge ], [ %i.ahr, %bb.cb ] ; 2 uses
  %i.aib = sub nsw i64 %.221007.us1018, %.pre-phi1243 ; 2 uses
  %i.aic = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %i.aib
  %i.aid = load i64, ptr %i.aic, align 8, !tbaa !9
  %i.aie = load i64, ptr %i.ahg, align 8, !tbaa !73
  %i.aif = add nsw i64 %i.aie, %i.aid
  %i.aig = load i64, ptr %i.ahh, align 8, !tbaa !73
  %i.aih = sub i64 %i.aif, %i.aig
  %i.aii = getelementptr inbounds [8 x i8], ptr %i.aia, i64 %.221007.us1018
  store i64 %i.aih, ptr %i.aii, align 8, !tbaa !9
  %i.aij = getelementptr inbounds [8 x i8], ptr %i.ahz, i64 %i.aib
  %i.aik = load i64, ptr %i.aij, align 8, !tbaa !9
  %i.ail = getelementptr inbounds [8 x i8], ptr %i.ahz, i64 %.221007.us1018
  store i64 %i.aik, ptr %i.ail, align 8, !tbaa !9
  %i.aim = add nsw i64 %.221007.us1018, 1         ; 3 uses
  %indvars.iv.next1171 = add nuw nsw i64 %indvars.iv1170, 1 ; 2 uses
  %exitcond1173.not = icmp eq i64 %indvars.iv.next1171, %.pre-phi1243
  br i1 %exitcond1173.not, label %._crit_edge1010.split.us1019, label %bb.by, !llvm.loop !56

._crit_edge1010.split.us1019:                     ; preds = %flatlist_node_grow.exit900.us
  %i.ain = add nuw nsw i64 %.128251013.us, 1      ; 2 uses
  %exitcond1174.not = icmp eq i64 %i.ain, %i.aav
  br i1 %exitcond1174.not, label %._crit_edge1015, label %.preheader944.us, !llvm.loop !57

._crit_edge1015:                                  ; preds = %._crit_edge1010.split.us1019, %._crit_edge1010.split.us.us.us, %.preheader944.lr.ph, %._crit_edge1004
  %.21.lcssa = phi i64 [ %.19.lcssa, %._crit_edge1004 ], [ %.19.lcssa, %.preheader944.lr.ph ], [ %i.ahe, %._crit_edge1010.split.us.us.us ], [ %i.aim, %._crit_edge1010.split.us1019 ]
  store i64 %.21.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit941

bb.cc:                                            ; preds = %bb.a, %bb.a
  %i.aio = load i32, ptr %i.t, align 4, !tbaa !10 ; 3 uses
  %i.aip = sext i32 %i.aio to i64                 ; 2 uses
  %i.aiq = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.air = call i32 @PMPI_Type_get_envelope(ptr noundef %i.aiq, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.ais = load ptr, ptr %i.ad, align 8, !tbaa !22
  call void @ADIOI_Datatype_iscontig(ptr noundef %i.ais, ptr noundef nonnull %i.c) #7
  %i.ait = load i64, ptr %3, align 8, !tbaa !9    ; 9 uses
  %i.aiu = load i32, ptr %i.b, align 4, !tbaa !10
  %i.aiv = icmp eq i32 %i.aiu, 0
  %i.aiw = load i32, ptr %i.c, align 4
  %i.aix = icmp ne i32 %i.aiw, 0
  %or.cond13 = select i1 %i.aiv, i1 true, i1 %i.aix
  br i1 %or.cond13, label %.thread1348, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aiy = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.aiz = load i64, ptr %i.y, align 8, !tbaa !73
  %i.aja = add nsw i64 %i.aiz, %2
  call void @ADIOI_Flatten(ptr noundef %i.aiy, ptr noundef %1, i64 noundef %i.aja, ptr noundef nonnull %3)
  %.pre1214 = load i64, ptr %3, align 8, !tbaa !9 ; 5 uses
  %i.ajb = icmp eq i64 %i.ait, %.pre1214
  br i1 %i.ajb, label %.thread1348, label %bb.ck

.thread1348:                                      ; preds = %bb.cc, %bb.cd
  %i.ajc = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.ajd = call i32 @PMPI_Type_size_x(ptr noundef %i.ajc, ptr noundef nonnull %i.j) #7 ; 0 uses
  %i.aje = add nsw i64 %i.ait, %i.aip
  %i.ajf = icmp sgt i32 %i.aio, 0
  br i1 %i.ajf, label %.lr.ph994, label %._crit_edge995

.lr.ph994:                                        ; preds = %.thread1348
  %i.ajg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph994, %bb.cj
  %.8789992 = phi i64 [ %i.ait, %.lr.ph994 ], [ %.9790, %bb.cj ] ; 5 uses
  %.13826991 = phi i64 [ %i.ait, %.lr.ph994 ], [ %i.ajj, %bb.cj ] ; 2 uses
  %i.ajj = add nsw i64 %.13826991, 1              ; 3 uses
  %i.ajk = sub nsw i64 %i.ajj, %i.ait
  %i.ajl = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ajk
  %i.ajm = load i32, ptr %i.ajl, align 4, !tbaa !10 ; 2 uses
  %i.ajn = icmp sgt i32 %i.ajm, 0
  br i1 %i.ajn, label %bb.cf, label %bb.cj

bb.cf:                                            ; preds = %bb.ce
  %i.ajo = zext nneg i32 %i.ajm to i64
  %sext918 = shl i64 %.8789992, 32
  %i.ajp = ashr exact i64 %sext918, 32
  %i.ajq = load i64, ptr %i.ajg, align 8, !tbaa !16 ; 2 uses
  %.not.i904 = icmp sgt i64 %i.ajq, %i.ajp
  br i1 %.not.i904, label %.flatlist_node_grow.exit906_crit_edge, label %bb.cg

.flatlist_node_grow.exit906_crit_edge:            ; preds = %bb.cf
  %.pre1215 = load ptr, ptr %i.aji, align 8, !tbaa !19
  %.pre1216 = load ptr, ptr %i.ajh, align 8, !tbaa !18
  br label %flatlist_node_grow.exit906

bb.cg:                                            ; preds = %bb.cf
  %i.ajr = sitofp i64 %i.ajq to double
  %i.ajs = call double @llvm.fmuladd.f64(double %i.ajr, double 1.250000e+00, double 4.000000e+00)
  %i.ajt = fptosi double %i.ajs to i32            ; 2 uses
  %i.aju = shl nsw i32 %i.ajt, 1
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = call ptr @ADIOI_Calloc_fn(i64 noundef %i.ajv, i64 noundef 8, i32 noundef 45, ptr noundef nonnull @.str) #7 ; 4 uses
  %i.ajx = sext i32 %i.ajt to i64                 ; 2 uses
  %i.ajy = getelementptr inbounds [8 x i8], ptr %i.ajw, i64 %i.ajx ; 3 uses
  %i.ajz = load i64, ptr %i.ajg, align 8, !tbaa !16 ; 2 uses
  %.not20.i905 = icmp eq i64 %i.ajz, 0
  br i1 %.not20.i905, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.aka = load ptr, ptr %i.ajh, align 8, !tbaa !18
  %i.akb = shl i64 %i.ajz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ajw, ptr align 8 %i.aka, i64 %i.akb, i1 false)
  %i.akc = load ptr, ptr %i.aji, align 8, !tbaa !19
  %i.akd = load i64, ptr %i.ajg, align 8, !tbaa !16
  %i.ake = shl i64 %i.akd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ajy, ptr align 8 %i.akc, i64 %i.ake, i1 false)
  %i.akf = load ptr, ptr %i.ajh, align 8, !tbaa !18
  call void @ADIOI_Free_fn(ptr noundef %i.akf, i32 noundef 50, ptr noundef nonnull @.str) #7
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  store ptr %i.ajw, ptr %i.ajh, align 8, !tbaa !18
  store ptr %i.ajy, ptr %i.aji, align 8, !tbaa !19
  store i64 %i.ajx, ptr %i.ajg, align 8, !tbaa !16
  br label %flatlist_node_grow.exit906

flatlist_node_grow.exit906:                       ; preds = %.flatlist_node_grow.exit906_crit_edge, %bb.ci
  %i.akg = phi ptr [ %.pre1216, %.flatlist_node_grow.exit906_crit_edge ], [ %i.ajw, %bb.ci ]
  %i.akh = phi ptr [ %.pre1215, %.flatlist_node_grow.exit906_crit_edge ], [ %i.ajy, %bb.ci ]
  %i.aki = sub nsw i64 %.13826991, %i.ait
  %i.akj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.aki
  %i.akk = load i64, ptr %i.akj, align 8, !tbaa !73
  %i.akl = add nsw i64 %i.akk, %2
  %i.akm = getelementptr inbounds [8 x i8], ptr %i.akh, i64 %.8789992
  store i64 %i.akl, ptr %i.akm, align 8, !tbaa !9
  %i.akn = load i64, ptr %i.j, align 8, !tbaa !9
  %i.ako = mul nsw i64 %i.akn, %i.ajo
  %i.akp = getelementptr inbounds [8 x i8], ptr %i.akg, i64 %.8789992
  store i64 %i.ako, ptr %i.akp, align 8, !tbaa !9
  %i.akq = add nsw i64 %.8789992, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ce, %flatlist_node_grow.exit906
  %.9790 = phi i64 [ %i.akq, %flatlist_node_grow.exit906 ], [ %.8789992, %bb.ce ] ; 2 uses
  %i.akr = icmp slt i64 %i.ajj, %i.aje
  br i1 %i.akr, label %bb.ce, label %._crit_edge995, !llvm.loop !58

._crit_edge995:                                   ; preds = %bb.cj, %.thread1348
  %.8789.lcssa = phi i64 [ %i.ait, %.thread1348 ], [ %.9790, %bb.cj ]
  store i64 %.8789.lcssa, ptr %3, align 8, !tbaa !9
  br label %.loopexit941

bb.ck:                                            ; preds = %bb.cd
  %i.aks = sub i64 %.pre1214, %i.ait              ; 7 uses
  %i.akt = load ptr, ptr %i.ad, align 8, !tbaa !22
  %i.aku = call i32 @PMPI_Type_get_extent(ptr noundef %i.akt, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #7 ; 0 uses
  %i.akv = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !10 ; 2 uses
  %i.akx = icmp sgt i32 %i.akw, 1
  br i1 %i.akx, label %.preheader950.lr.ph, label %.preheader948

.preheader950.lr.ph:                              ; preds = %bb.ck
end_hunk_0
