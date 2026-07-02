inline.NumInlined: 78
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 27
begin_hunk_0_@UMHEXIntegerPelBlockMotionSearch:bb.a
  %i.aic = sub nsw i64 %i.agd, %indvars.iv        ; 2 uses
  %i.aid = sub nsw i64 %i.aic, %i.age             ; 2 uses
  %i.aie = trunc nsw i64 %i.aid to i32
  %i.aif = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aie, i1 true)
  %.not978 = icmp sgt i32 %i.aif, %10
  %brmerge1110 = select i1 %.not978, i1 true, i1 %.not976
  br i1 %brmerge1110, label %bb.ds, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.aig = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aih = getelementptr inbounds [8 x i8], ptr %i.aig, i64 %i.afy
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !34
  %i.aij = add nsw i64 %i.aid, %i.fh              ; 2 uses
  %i.aik = getelementptr inbounds i8, ptr %i.aii, i64 %i.aij
  %i.ail = load i8, ptr %i.aik, align 1, !tbaa !81
  %.not980 = icmp eq i8 %i.ail, 0
  br i1 %.not980, label %bb.dp, label %bb.ds

bb.dp:                                            ; preds = %bb.do
  %i.aim = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.ain = trunc nsw i64 %i.aic to i32            ; 2 uses
  %i.aio = shl i32 %i.ain, 2                      ; 2 uses
  %i.aip = sub nsw i32 %i.aio, %i.z
  %i.aiq = sext i32 %i.aip to i64
  %i.air = getelementptr inbounds [4 x i8], ptr %i.aim, i64 %i.aiq
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !4
  %i.ait = getelementptr inbounds [4 x i8], ptr %i.aim, i64 %i.agb
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !4
  %i.aiv = add nsw i32 %i.aiu, %i.ais
  %i.aiw = mul nsw i32 %i.aiv, %12
  %i.aix = ashr i32 %i.aiw, 16                    ; 3 uses
  %i.aiy = icmp slt i32 %i.aix, %.12
  br i1 %i.aiy, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %bb.dp
  %i.aiz = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.aja = zext nneg i32 %i.aiz to i64
  %i.ajb = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.aja
  %i.ajc = load ptr, ptr %i.ajb, align 8, !tbaa !10
  %i.ajd = sub nsw i32 %.12, %i.aix
  %i.aje = add nsw i32 %i.aio, 80
  %i.ajf = tail call i32 %i.ajc(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.ajd, i32 noundef %i.aje, i32 noundef %i.agc) #13
  %i.ajg = add nsw i32 %i.ajf, %i.aix             ; 2 uses
  %i.ajh = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aji = getelementptr inbounds [8 x i8], ptr %i.ajh, i64 %i.afy
  %i.ajj = load ptr, ptr %i.aji, align 8, !tbaa !34
  %i.ajk = getelementptr inbounds i8, ptr %i.ajj, i64 %i.aij
  store i8 1, ptr %i.ajk, align 1, !tbaa !81
  %i.ajl = icmp slt i32 %i.ajg, %.12
  br i1 %i.ajl, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dn, %bb.dp, %bb.dr, %bb.dq, %bb.do
  %.13863 = phi i32 [ %.12862, %bb.do ], [ %.10860.3, %bb.dr ], [ %.12862, %bb.dq ], [ %.12862, %bb.dp ], [ %.12862, %bb.dn ] ; 4 uses
  %.13832 = phi i32 [ %.12831, %bb.do ], [ %i.ain, %bb.dr ], [ %.12831, %bb.dq ], [ %.12831, %bb.dp ], [ %.12831, %bb.dn ] ; 4 uses
  %.13 = phi i32 [ %.12, %bb.do ], [ %i.ajg, %bb.dr ], [ %.12, %bb.dq ], [ %.12, %bb.dp ], [ %.12, %bb.dn ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ajm = icmp slt i64 %indvars.iv.next, %i.fh
  br i1 %i.ajm, label %bb.di, label %.preheader1025, !llvm.loop !84

.lr.ph1053.split:                                 ; preds = %.lr.ph1053.split.preheader, %bb.ec
  %indvars.iv1122 = phi i64 [ 1, %.lr.ph1053.split.preheader ], [ %indvars.iv.next1123, %bb.ec ] ; 3 uses
  %.141052 = phi i32 [ %.13, %.lr.ph1053.split.preheader ], [ %.16, %bb.ec ] ; 7 uses
  %.148331051 = phi i32 [ %.13832, %.lr.ph1053.split.preheader ], [ %.16835, %bb.ec ] ; 4 uses
  %.148641050 = phi i32 [ %.13863, %.lr.ph1053.split.preheader ], [ %.16866, %bb.ec ] ; 4 uses
  %i.ajn = add nsw i64 %indvars.iv1122, %i.agp    ; 2 uses
  %i.ajo = sub nsw i64 %i.ajn, %i.agq             ; 2 uses
  %i.ajp = trunc nsw i64 %i.ajo to i32
  %i.ajq = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ajp, i1 true)
  %.not970 = icmp samesign ugt i32 %i.ajq, %10
  br i1 %.not970, label %bb.dx, label %bb.dt

bb.dt:                                            ; preds = %.lr.ph1053.split
  %i.ajr = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.ajs = add nsw i64 %i.ajo, %i.fh              ; 2 uses
  %i.ajt = getelementptr inbounds [8 x i8], ptr %i.ajr, i64 %i.ajs
  %i.aju = load ptr, ptr %i.ajt, align 8, !tbaa !34
  %i.ajv = getelementptr inbounds i8, ptr %i.aju, i64 %i.agk
  %i.ajw = load i8, ptr %i.ajv, align 1, !tbaa !81
  %.not971 = icmp eq i8 %i.ajw, 0
  br i1 %.not971, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt
  %i.ajx = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.ajy = getelementptr inbounds [4 x i8], ptr %i.ajx, i64 %i.agn
  %i.ajz = load i32, ptr %i.ajy, align 4, !tbaa !4
  %i.aka = trunc nsw i64 %i.ajn to i32            ; 2 uses
  %i.akb = shl i32 %i.aka, 2                      ; 2 uses
  %i.akc = sub nsw i32 %i.akb, %i.ac
  %i.akd = sext i32 %i.akc to i64
  %i.ake = getelementptr inbounds [4 x i8], ptr %i.ajx, i64 %i.akd
  %i.akf = load i32, ptr %i.ake, align 4, !tbaa !4
  %i.akg = add nsw i32 %i.akf, %i.ajz
  %i.akh = mul nsw i32 %i.akg, %12
  %i.aki = ashr i32 %i.akh, 16                    ; 3 uses
  %i.akj = icmp slt i32 %i.aki, %.141052
  br i1 %i.akj, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.akk = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.akl = zext nneg i32 %i.akk to i64
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.akl
  %i.akn = load ptr, ptr %i.akm, align 8, !tbaa !10
  %i.ako = sub nsw i32 %.141052, %i.aki
  %i.akp = add nsw i32 %i.akb, 80
  %i.akq = tail call i32 %i.akn(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.ako, i32 noundef %i.ago, i32 noundef %i.akp) #13
  %i.akr = add nsw i32 %i.akq, %i.aki             ; 2 uses
  %i.aks = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.akt = getelementptr inbounds [8 x i8], ptr %i.aks, i64 %i.ajs
  %i.aku = load ptr, ptr %i.akt, align 8, !tbaa !34
  %i.akv = getelementptr inbounds i8, ptr %i.aku, i64 %i.agk
  store i8 1, ptr %i.akv, align 1, !tbaa !81
  %i.akw = icmp slt i32 %i.akr, %.141052
  br i1 %i.akw, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dt, %bb.dv, %bb.dw, %bb.du, %.lr.ph1053.split
  %.15865.ph = phi i32 [ %.148641050, %.lr.ph1053.split ], [ %.148641050, %bb.du ], [ %.148641050, %bb.dv ], [ %i.aka, %bb.dw ], [ %.148641050, %bb.dt ] ; 4 uses
  %.15834.ph = phi i32 [ %.148331051, %.lr.ph1053.split ], [ %.148331051, %bb.du ], [ %.148331051, %bb.dv ], [ %.10829.3, %bb.dw ], [ %.148331051, %bb.dt ] ; 4 uses
  %.15.ph = phi i32 [ %.141052, %.lr.ph1053.split ], [ %.141052, %bb.du ], [ %.141052, %bb.dv ], [ %i.akr, %bb.dw ], [ %.141052, %bb.dt ] ; 7 uses
  %i.akx = sub nsw i64 %i.agp, %indvars.iv1122    ; 2 uses
  %i.aky = sub nsw i64 %i.akx, %i.agq             ; 2 uses
  %i.akz = trunc nsw i64 %i.aky to i32
  %i.ala = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.akz, i1 true)
  %.not973 = icmp samesign ugt i32 %i.ala, %10
  br i1 %.not973, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.alb = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.alc = add nsw i64 %i.aky, %i.fh              ; 2 uses
  %i.ald = getelementptr inbounds [8 x i8], ptr %i.alb, i64 %i.alc
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !34
  %i.alf = getelementptr inbounds i8, ptr %i.ale, i64 %i.agk
  %i.alg = load i8, ptr %i.alf, align 1, !tbaa !81
  %.not974 = icmp eq i8 %i.alg, 0
  br i1 %.not974, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.alh = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.ali = getelementptr inbounds [4 x i8], ptr %i.alh, i64 %i.agn
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !4
  %i.alk = trunc nsw i64 %i.akx to i32            ; 2 uses
  %i.all = shl i32 %i.alk, 2                      ; 2 uses
  %i.alm = sub nsw i32 %i.all, %i.ac
  %i.aln = sext i32 %i.alm to i64
  %i.alo = getelementptr inbounds [4 x i8], ptr %i.alh, i64 %i.aln
  %i.alp = load i32, ptr %i.alo, align 4, !tbaa !4
  %i.alq = add nsw i32 %i.alp, %i.alj
  %i.alr = mul nsw i32 %i.alq, %12
  %i.als = ashr i32 %i.alr, 16                    ; 3 uses
  %i.alt = icmp slt i32 %i.als, %.15.ph
  br i1 %i.alt, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.alu = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.alv = zext nneg i32 %i.alu to i64
  %i.alw = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.alv
  %i.alx = load ptr, ptr %i.alw, align 8, !tbaa !10
  %i.aly = sub nsw i32 %.15.ph, %i.als
  %i.alz = add nsw i32 %i.all, 80
  %i.ama = tail call i32 %i.alx(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.aly, i32 noundef %i.ago, i32 noundef %i.alz) #13
  %i.amb = add nsw i32 %i.ama, %i.als             ; 2 uses
  %i.amc = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.amd = getelementptr inbounds [8 x i8], ptr %i.amc, i64 %i.alc
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !34
  %i.amf = getelementptr inbounds i8, ptr %i.ame, i64 %i.agk
  store i8 1, ptr %i.amf, align 1, !tbaa !81
  %i.amg = icmp slt i32 %i.amb, %.15.ph
  br i1 %i.amg, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  br label %bb.ec

bb.ec:                                            ; preds = %bb.dx, %bb.dz, %bb.eb, %bb.ea, %bb.dy
  %.16866 = phi i32 [ %.15865.ph, %bb.dy ], [ %i.alk, %bb.eb ], [ %.15865.ph, %bb.ea ], [ %.15865.ph, %bb.dz ], [ %.15865.ph, %bb.dx ] ; 2 uses
  %.16835 = phi i32 [ %.15834.ph, %bb.dy ], [ %.10829.3, %bb.eb ], [ %.15834.ph, %bb.ea ], [ %.15834.ph, %bb.dz ], [ %.15834.ph, %bb.dx ] ; 2 uses
  %.16 = phi i32 [ %.15.ph, %bb.dy ], [ %i.amb, %bb.eb ], [ %.15.ph, %bb.ea ], [ %.15.ph, %bb.dz ], [ %.15.ph, %bb.dx ] ; 2 uses
  %indvars.iv.next1123 = add nuw nsw i64 %indvars.iv1122, 2 ; 2 uses
  %i.amh = icmp samesign ult i64 %indvars.iv.next1123, %i.agr
  br i1 %i.amh, label %.lr.ph1053.split, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %bb.ec, %.preheader1026, %.lr.ph1053, %.preheader1025
  %.14864.lcssa = phi i32 [ %.13863, %.preheader1025 ], [ %.10860.3, %.preheader1026 ], [ %.13863, %.lr.ph1053 ], [ %.16866, %bb.ec ] ; 5 uses
  %.14833.lcssa = phi i32 [ %.13832, %.preheader1025 ], [ %.10829.3, %.preheader1026 ], [ %.13832, %.lr.ph1053 ], [ %.16835, %bb.ec ] ; 5 uses
  %.14.lcssa = phi i32 [ %.13, %.preheader1025 ], [ %.10.3, %.preheader1026 ], [ %.13, %.lr.ph1053 ], [ %.16, %bb.ec ] ; 4 uses
  %i.ami = load i32, ptr @pred_SAD, align 4, !tbaa !4 ; 2 uses
  %i.amj = sub nsw i32 %.14.lcssa, %i.ami
  %i.amk = sitofp i32 %i.amj to float             ; 2 uses
  %i.aml = sitofp i32 %i.ami to float             ; 2 uses
  %i.amm = fmul float %.0882, %i.aml
  %i.amn = fcmp ogt float %i.amm, %i.amk
  br i1 %i.amn, label %.loopexit1020, label %bb.ed

bb.ed:                                            ; preds = %._crit_edge
  %i.amo = fmul float %.0883, %i.aml
  %i.amp = fcmp ogt float %i.amo, %i.amk
  br i1 %i.amp, label %.loopexit1022, label %.preheader1024.preheader

.preheader1024.preheader:                         ; preds = %bb.ed
  %.pre1160 = load ptr, ptr @spiral_search_x, align 8, !tbaa !87
  %.pre1162 = load ptr, ptr @spiral_search_y, align 8, !tbaa !87
  br label %.preheader1024

.preheader1024:                                   ; preds = %.preheader1024.preheader, %bb.ej
  %13 = phi ptr [ %.pre1162, %.preheader1024.preheader ], [ %15, %bb.ej ] ; 5 uses
  %14 = phi ptr [ %.pre1160, %.preheader1024.preheader ], [ %16, %bb.ej ] ; 5 uses
  %indvars.iv1125 = phi i64 [ 1, %.preheader1024.preheader ], [ %indvars.iv.next1126, %bb.ej ] ; 3 uses
  %.171062.a = phi i32 [ %.14.lcssa, %.preheader1024.preheader ], [ %.18, %bb.ej ] ; 8 uses
  %.178361061 = phi i32 [ %.14833.lcssa, %.preheader1024.preheader ], [ %.18837, %bb.ej ] ; 5 uses
  %.178671060 = phi i32 [ %.14864.lcssa, %.preheader1024.preheader ], [ %.18868, %bb.ej ] ; 5 uses
  %i.amq = getelementptr inbounds nuw [2 x i8], ptr %14, i64 %indvars.iv1125
  %i.amr = load i16, ptr %i.amq, align 2, !tbaa !50
  %i.ams = sext i16 %i.amr to i32
  %i.amt = add nsw i32 %.14833.lcssa, %i.ams      ; 3 uses
  %i.amu = getelementptr inbounds nuw [2 x i8], ptr %13, i64 %indvars.iv1125
  %i.amv = load i16, ptr %i.amu, align 2, !tbaa !50
  %i.amw = sext i16 %i.amv to i32
  %i.amx = add nsw i32 %.14864.lcssa, %i.amw      ; 3 uses
  %i.amy = sub nsw i32 %i.amt, %i.af              ; 2 uses
  %i.amz = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.amy, i1 true)
  %.not966 = icmp sgt i32 %i.amz, %10
  br i1 %.not966, label %bb.ej, label %bb.ee

bb.ee:                                            ; preds = %.preheader1024
  %i.ana = sub nsw i32 %i.amx, %i.ai              ; 2 uses
  %i.anb = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ana, i1 true)
  %.not967 = icmp samesign ugt i32 %i.anb, %10
  br i1 %.not967, label %bb.ej, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.anc = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.and = add nsw i32 %i.ana, %10
  %i.ane = sext i32 %i.and to i64                 ; 2 uses
  %i.anf = getelementptr inbounds [8 x i8], ptr %i.anc, i64 %i.ane
  %i.ang = load ptr, ptr %i.anf, align 8, !tbaa !34
  %i.anh = add nsw i32 %i.amy, %10
  %i.ani = sext i32 %i.anh to i64                 ; 2 uses
  %i.anj = getelementptr inbounds i8, ptr %i.ang, i64 %i.ani
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !81
  %.not968 = icmp eq i8 %i.ank, 0
  br i1 %.not968, label %bb.eg, label %bb.ej

bb.eg:                                            ; preds = %bb.ef
  %i.anl = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.anm = shl i32 %i.amt, 2                      ; 2 uses
  %i.ann = sub nsw i32 %i.anm, %i.z
  %i.ano = sext i32 %i.ann to i64
  %i.anp = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.ano
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !4
  %i.anr = shl i32 %i.amx, 2                      ; 2 uses
  %i.ans = sub nsw i32 %i.anr, %i.ac
  %i.ant = sext i32 %i.ans to i64
  %i.anu = getelementptr inbounds [4 x i8], ptr %i.anl, i64 %i.ant
  %i.anv = load i32, ptr %i.anu, align 4, !tbaa !4
  %i.anw = add nsw i32 %i.anv, %i.anq
  %i.anx = mul nsw i32 %i.anw, %12
  %i.any = ashr i32 %i.anx, 16                    ; 3 uses
  %i.anz = icmp slt i32 %i.any, %.171062.a
  br i1 %i.anz, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.aoa = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.aob = zext nneg i32 %i.aoa to i64
  %i.aoc = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.aob
  %i.aod = load ptr, ptr %i.aoc, align 8, !tbaa !10
  %i.aoe = sub nsw i32 %.171062.a, %i.any
  %i.aof = add nsw i32 %i.anm, 80
  %i.aog = add nsw i32 %i.anr, 80
  %i.aoh = tail call i32 %i.aod(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.aoe, i32 noundef %i.aof, i32 noundef %i.aog) #13
  %i.aoi = add nsw i32 %i.aoh, %i.any             ; 2 uses
  %i.aoj = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aok = getelementptr inbounds [8 x i8], ptr %i.aoj, i64 %i.ane
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !34
  %i.aom = getelementptr inbounds i8, ptr %i.aol, i64 %i.ani
  store i8 1, ptr %i.aom, align 1, !tbaa !81
  %i.aon = icmp slt i32 %i.aoi, %.171062.a
  %.pre1159 = load ptr, ptr @spiral_search_x, align 8, !tbaa !87 ; 2 uses
  %.pre1161 = load ptr, ptr @spiral_search_y, align 8, !tbaa !87 ; 2 uses
  br i1 %i.aon, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  br label %bb.ej

bb.ej:                                            ; preds = %.preheader1024, %bb.ee, %bb.eg, %bb.ei, %bb.eh, %bb.ef
  %15 = phi ptr [ %13, %bb.ef ], [ %.pre1161, %bb.ei ], [ %.pre1161, %bb.eh ], [ %13, %bb.eg ], [ %13, %bb.ee ], [ %13, %.preheader1024 ]
  %16 = phi ptr [ %14, %bb.ef ], [ %.pre1159, %bb.ei ], [ %.pre1159, %bb.eh ], [ %14, %bb.eg ], [ %14, %bb.ee ], [ %14, %.preheader1024 ]
  %.18868 = phi i32 [ %.178671060, %bb.ef ], [ %i.amx, %bb.ei ], [ %.178671060, %bb.eh ], [ %.178671060, %bb.eg ], [ %.178671060, %bb.ee ], [ %.178671060, %.preheader1024 ] ; 5 uses
  %.18837 = phi i32 [ %.178361061, %bb.ef ], [ %i.amt, %bb.ei ], [ %.178361061, %bb.eh ], [ %.178361061, %bb.eg ], [ %.178361061, %bb.ee ], [ %.178361061, %.preheader1024 ] ; 5 uses
  %.18 = phi i32 [ %.171062.a, %bb.ef ], [ %i.aoi, %bb.ei ], [ %.171062.a, %bb.eh ], [ %.171062.a, %bb.eg ], [ %.171062.a, %bb.ee ], [ %.171062.a, %.preheader1024 ] ; 6 uses
  %indvars.iv.next1126 = add nuw nsw i64 %indvars.iv1125, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1126, 25
  br i1 %exitcond.not, label %bb.ek, label %.preheader1024, !llvm.loop !89

bb.ek:                                            ; preds = %bb.ej
  %i.aoo = load i32, ptr @pred_SAD, align 4, !tbaa !4 ; 2 uses
  %i.aop = sub nsw i32 %.18, %i.aoo
  %i.aoq = sitofp i32 %i.aop to float             ; 2 uses
  %i.aor = sitofp i32 %i.aoo to float             ; 2 uses
  %i.aos = fmul float %.0882, %i.aor
  %i.aot = fcmp ogt float %i.aos, %i.aoq
  br i1 %i.aot, label %.loopexit1020, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aou = fmul float %.0883, %i.aor
  %i.aov = fcmp ogt float %i.aou, %i.aoq
  br i1 %i.aov, label %.loopexit1022, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) @Big_Hexagon_x, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @Big_Hexagon_y, i64 64, i1 false)
  %.not9621067 = icmp slt i32 %10, 4
  br i1 %.not9621067, label %.loopexit1022, label %.preheader1021.preheader

.preheader1021.preheader:                         ; preds = %bb.em
  %i.aow = lshr i32 %10, 2
  br label %.preheader1021

bb.en:                                            ; preds = %bb.ev
  %i.aox = add nuw nsw i32 %.28931068, 1
  %exitcond1132.not = icmp eq i32 %.28931068, %i.aow
  br i1 %exitcond1132.not, label %.loopexit1022, label %.preheader1021, !llvm.loop !90

.preheader1021:                                   ; preds = %.preheader1021.preheader, %bb.en
  %.191071 = phi i32 [ %.21, %bb.en ], [ %.18, %.preheader1021.preheader ]
  %.198381070 = phi i32 [ %.21840, %bb.en ], [ %.18837, %.preheader1021.preheader ]
  %.198691069 = phi i32 [ %.21871, %bb.en ], [ %.18868, %.preheader1021.preheader ]
  %.28931068 = phi i32 [ %i.aox, %bb.en ], [ 1, %.preheader1021.preheader ] ; 2 uses
  br label %bb.eo

bb.eo:                                            ; preds = %.preheader1021, %bb.eu
  %indvars.iv1128 = phi i64 [ 0, %.preheader1021 ], [ %indvars.iv.next1129, %bb.eu ] ; 5 uses
  %.201066 = phi i32 [ %.191071, %.preheader1021 ], [ %.21, %bb.eu ] ; 8 uses
  %.208391065 = phi i32 [ %.198381070, %.preheader1021 ], [ %.21840, %bb.eu ] ; 5 uses
  %.208701064 = phi i32 [ %.198691069, %.preheader1021 ], [ %.21871, %bb.eu ] ; 5 uses
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1128 ; 2 uses
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !4 ; 2 uses
  %i.apa = add nsw i32 %i.aoz, %.14833.lcssa      ; 3 uses
  %i.apb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv1128 ; 2 uses
  %i.apc = load i32, ptr %i.apb, align 4, !tbaa !4 ; 2 uses
  %i.apd = add nsw i32 %i.apc, %.14864.lcssa      ; 3 uses
  %i.ape = getelementptr inbounds nuw [4 x i8], ptr @Big_Hexagon_x, i64 %indvars.iv1128
  %i.apf = load i32, ptr %i.ape, align 4, !tbaa !4
  %i.apg = add nsw i32 %i.apf, %i.aoz
  store i32 %i.apg, ptr %i.aoy, align 4, !tbaa !4
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr @Big_Hexagon_y, i64 %indvars.iv1128
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !4
  %i.apj = add nsw i32 %i.api, %i.apc
  store i32 %i.apj, ptr %i.apb, align 4, !tbaa !4
  %i.apk = sub nsw i32 %i.apa, %i.af              ; 2 uses
  %i.apl = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.apk, i1 true)
  %.not963 = icmp sgt i32 %i.apl, %10
  br i1 %.not963, label %bb.eu, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.apm = sub nsw i32 %i.apd, %i.ai              ; 2 uses
  %i.apn = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.apm, i1 true)
  %.not964 = icmp samesign ugt i32 %i.apn, %10
  br i1 %.not964, label %bb.eu, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.apo = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.app = add nsw i32 %i.apm, %10
  %i.apq = sext i32 %i.app to i64                 ; 2 uses
  %i.apr = getelementptr inbounds [8 x i8], ptr %i.apo, i64 %i.apq
  %i.aps = load ptr, ptr %i.apr, align 8, !tbaa !34
  %i.apt = add nsw i32 %i.apk, %10
  %i.apu = sext i32 %i.apt to i64                 ; 2 uses
  %i.apv = getelementptr inbounds i8, ptr %i.aps, i64 %i.apu
  %i.apw = load i8, ptr %i.apv, align 1, !tbaa !81
  %.not965 = icmp eq i8 %i.apw, 0
  br i1 %.not965, label %bb.er, label %bb.eu

bb.er:                                            ; preds = %bb.eq
  %i.apx = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.apy = shl i32 %i.apa, 2                      ; 2 uses
  %i.apz = sub nsw i32 %i.apy, %i.z
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = getelementptr inbounds [4 x i8], ptr %i.apx, i64 %i.aqa
  %i.aqc = load i32, ptr %i.aqb, align 4, !tbaa !4
  %i.aqd = shl i32 %i.apd, 2                      ; 2 uses
  %i.aqe = sub nsw i32 %i.aqd, %i.ac
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds [4 x i8], ptr %i.apx, i64 %i.aqf
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !4
  %i.aqi = add nsw i32 %i.aqh, %i.aqc
  %i.aqj = mul nsw i32 %i.aqi, %12
  %i.aqk = ashr i32 %i.aqj, 16                    ; 3 uses
  %i.aql = icmp slt i32 %i.aqk, %.201066
  br i1 %i.aql, label %bb.es, label %bb.eu

bb.es:                                            ; preds = %bb.er
  %i.aqm = load i32, ptr @dist_method, align 4, !tbaa !4
  %i.aqn = zext nneg i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds nuw [8 x i8], ptr @computeUniPred, i64 %i.aqn
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !10
  %i.aqq = sub nsw i32 %.201066, %i.aqk
  %i.aqr = add nsw i32 %i.apy, 80
  %i.aqs = add nsw i32 %i.aqd, 80
  %i.aqt = tail call i32 %i.aqp(ptr noundef %0, i32 noundef %i.v, i32 noundef %i.w, i32 noundef %i.aqq, i32 noundef %i.aqr, i32 noundef %i.aqs) #13
  %i.aqu = add nsw i32 %i.aqt, %i.aqk             ; 2 uses
  %i.aqv = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aqw = getelementptr inbounds [8 x i8], ptr %i.aqv, i64 %i.apq
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !34
  %i.aqy = getelementptr inbounds i8, ptr %i.aqx, i64 %i.apu
  store i8 1, ptr %i.aqy, align 1, !tbaa !81
  %i.aqz = icmp slt i32 %i.aqu, %.201066
  br i1 %i.aqz, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  br label %bb.eu

bb.eu:                                            ; preds = %bb.eo, %bb.ep, %bb.er, %bb.et, %bb.es, %bb.eq
  %.21871 = phi i32 [ %.208701064, %bb.eq ], [ %i.apd, %bb.et ], [ %.208701064, %bb.es ], [ %.208701064, %bb.er ], [ %.208701064, %bb.ep ], [ %.208701064, %bb.eo ] ; 4 uses
  %.21840 = phi i32 [ %.208391065, %bb.eq ], [ %i.apa, %bb.et ], [ %.208391065, %bb.es ], [ %.208391065, %bb.er ], [ %.208391065, %bb.ep ], [ %.208391065, %bb.eo ] ; 4 uses
  %.21 = phi i32 [ %.201066, %bb.eq ], [ %i.aqu, %bb.et ], [ %.201066, %bb.es ], [ %.201066, %bb.er ], [ %.201066, %bb.ep ], [ %.201066, %bb.eo ] ; 5 uses
  %indvars.iv.next1129 = add nuw nsw i64 %indvars.iv1128, 1 ; 2 uses
  %exitcond1131.not = icmp eq i64 %indvars.iv.next1129, 16
  br i1 %exitcond1131.not, label %bb.ev, label %bb.eo, !llvm.loop !91

bb.ev:                                            ; preds = %bb.eu
  %i.ara = icmp slt i32 %.21, %i.uq
  br i1 %i.ara, label %.loopexit, label %bb.en

.loopexit1022:                                    ; preds = %bb.en, %bb.em, %bb.el, %bb.ed, %bb.dh
  %.22872 = phi i32 [ %.10860.3, %bb.dh ], [ %.14864.lcssa, %bb.ed ], [ %.18868, %bb.el ], [ %.18868, %bb.em ], [ %.21871, %bb.en ] ; 2 uses
  %.22841 = phi i32 [ %.10829.3, %bb.dh ], [ %.14833.lcssa, %bb.ed ], [ %.18837, %bb.el ], [ %.18837, %bb.em ], [ %.21840, %bb.en ] ; 2 uses
  %.22 = phi i32 [ %.10.3, %bb.dh ], [ %.14.lcssa, %bb.ed ], [ %.18, %bb.el ], [ %.18, %bb.em ], [ %.21, %bb.en ] ; 2 uses
  %i.arb = icmp sgt i32 %10, 0
  br i1 %i.arb, label %.preheader1019, label %.loopexit

bb.ew:                                            ; preds = %bb.fe
  %i.arc = add nuw nsw i32 %.38941079, 1          ; 2 uses
  %exitcond1137.not = icmp eq i32 %i.arc, %10
  br i1 %exitcond1137.not, label %.loopexit1020, label %.preheader1019, !llvm.loop !92

.preheader1019:                                   ; preds = %.loopexit1022, %bb.ew
  %.231082 = phi i32 [ %.25, %bb.ew ], [ %.22, %.loopexit1022 ]
  %.238421081 = phi i32 [ %.25844, %bb.ew ], [ %.22841, %.loopexit1022 ] ; 4 uses
  %.238731080 = phi i32 [ %.25875, %bb.ew ], [ %.22872, %.loopexit1022 ] ; 4 uses
  %.38941079 = phi i32 [ %i.arc, %bb.ew ], [ 0, %.loopexit1022 ]
  br label %bb.ex

bb.ex:                                            ; preds = %.preheader1019, %bb.fd
  %indvars.iv1133 = phi i64 [ 0, %.preheader1019 ], [ %indvars.iv.next1134, %bb.fd ] ; 3 uses
  %.241078 = phi i32 [ %.231082, %.preheader1019 ], [ %.25, %bb.fd ] ; 8 uses
  %.248431077 = phi i32 [ %.238421081, %.preheader1019 ], [ %.25844, %bb.fd ] ; 5 uses
  %.248741076 = phi i32 [ %.238731080, %.preheader1019 ], [ %.25875, %bb.fd ] ; 5 uses
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr @Hexagon_x, i64 %indvars.iv1133
  %i.are = load i32, ptr %i.ard, align 4, !tbaa !4
  %i.arf = add nsw i32 %i.are, %.238421081        ; 3 uses
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr @Hexagon_y, i64 %indvars.iv1133
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !4
  %i.ari = add nsw i32 %i.arh, %.238731080        ; 3 uses
  %i.arj = sub nsw i32 %i.arf, %i.af              ; 2 uses
  %i.ark = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.arj, i1 true)
  %.not981 = icmp sgt i32 %i.ark, %10
  br i1 %.not981, label %bb.fd, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.arl = sub nsw i32 %i.ari, %i.ai              ; 2 uses
  %i.arm = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.arl, i1 true)
  %.not982 = icmp samesign ugt i32 %i.arm, %10
  br i1 %.not982, label %bb.fd, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.arn = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aro = add nsw i32 %i.arl, %10
  %i.arp = sext i32 %i.aro to i64                 ; 2 uses
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.arn, i64 %i.arp
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !34
  %i.ars = add nsw i32 %i.arj, %10
  %i.art = sext i32 %i.ars to i64                 ; 2 uses
  %i.aru = getelementptr inbounds i8, ptr %i.arr, i64 %i.art
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !81
  %.not983 = icmp eq i8 %i.arv, 0
  br i1 %.not983, label %bb.fa, label %bb.fd

bb.fa:                                            ; preds = %bb.ez
  %i.arw = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 2 uses
  %i.arx = shl i32 %i.arf, 2                      ; 2 uses
  %i.ary = sub nsw i32 %i.arx, %i.z
  %i.arz = sext i32 %i.ary to i64
  %i.asa = getelementptr inbounds [4 x i8], ptr %i.arw, i64 %i.arz
  %i.asb = load i32, ptr %i.asa, align 4, !tbaa !4
  %i.asc = shl i32 %i.ari, 2                      ; 2 uses
  %i.asd = sub nsw i32 %i.asc, %i.ac
  %i.ase = sext i32 %i.asd to i64
  %i.asf = getelementptr inbounds [4 x i8], ptr %i.arw, i64 %i.ase
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !4
end_hunk_0
begin_hunk_1_@UMHEXBipredIntegerPelBlockMotionSearch:bb.a
  %.not1170 = icmp eq i8 %i.anb, 0
  br i1 %.not1170, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.anc = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.and = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ia
  %i.ane = load i32, ptr %i.and, align 4, !tbaa !4
  %i.anf = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ig
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !4
  %i.anh = add nsw i32 %i.ang, %i.ane
  %i.ani = mul nsw i32 %i.anh, %16
  %i.anj = ashr i32 %i.ani, 16
  %i.ank = trunc nsw i64 %i.ams to i32            ; 2 uses
  %i.anl = shl i32 %i.ank, 2                      ; 2 uses
  %i.anm = sub nsw i32 %i.anl, %i.x
  %i.ann = sext i32 %i.anm to i64
  %i.ano = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ann
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !4
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.akm
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !4
  %i.ans = add nsw i32 %i.anr, %i.anp
  %i.ant = mul nsw i32 %i.ans, %16
  %i.anu = ashr i32 %i.ant, 16
  %i.anv = add nsw i32 %i.anu, %i.anj             ; 3 uses
  %i.anw = icmp slt i32 %i.anv, %.11
  br i1 %i.anw, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %bb.di
  %i.anx = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.any = sub nsw i32 %.11, %i.anv
  %i.anz = add nsw i32 %i.anl, 80
  %i.aoa = tail call i32 %i.anx(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.any, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.anz, i32 noundef %i.akn) #13
  %i.aob = add nsw i32 %i.aoa, %i.anv             ; 2 uses
  %i.aoc = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aod = getelementptr inbounds [8 x i8], ptr %i.aoc, i64 %i.akj
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !34
  %i.aof = getelementptr inbounds i8, ptr %i.aoe, i64 %i.amz
  store i8 1, ptr %i.aof, align 1, !tbaa !81
  %i.aog = icmp slt i32 %i.aob, %.11
  br i1 %i.aog, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dg, %bb.di, %bb.dk, %bb.dj, %bb.dh
  %.121044 = phi i32 [ %.111043, %bb.dh ], [ %i.ank, %bb.dk ], [ %.111043, %bb.dj ], [ %.111043, %bb.di ], [ %.111043, %bb.dg ] ; 4 uses
  %.121014 = phi i32 [ %.111013, %bb.dh ], [ %.91011.3, %bb.dk ], [ %.111013, %bb.dj ], [ %.111013, %bb.di ], [ %.111013, %bb.dg ] ; 4 uses
  %.12 = phi i32 [ %.11, %bb.dh ], [ %i.aob, %bb.dk ], [ %.11, %bb.dj ], [ %.11, %bb.di ], [ %.11, %bb.dg ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aoh = icmp slt i64 %indvars.iv.next, %i.ji
  br i1 %i.aoh, label %bb.db, label %.preheader1240, !llvm.loop !122

.lr.ph1268.split:                                 ; preds = %.lr.ph1268.split.preheader, %bb.dv
  %indvars.iv1336 = phi i64 [ 1, %.lr.ph1268.split.preheader ], [ %indvars.iv.next1337, %bb.dv ] ; 3 uses
  %.131267 = phi i32 [ %.12, %.lr.ph1268.split.preheader ], [ %.15, %bb.dv ] ; 7 uses
  %.1310151266 = phi i32 [ %.121014, %.lr.ph1268.split.preheader ], [ %.151017, %bb.dv ] ; 4 uses
  %.1310451265 = phi i32 [ %.121044, %.lr.ph1268.split.preheader ], [ %.151047, %bb.dv ] ; 4 uses
  %i.aoi = add nsw i64 %indvars.iv1336, %i.ala    ; 2 uses
  %i.aoj = sub nsw i64 %i.aoi, %i.alb             ; 2 uses
  %i.aok = trunc nsw i64 %i.aoj to i32
  %i.aol = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.aok, i1 true)
  %.not1160 = icmp samesign ugt i32 %i.aol, %14
  br i1 %.not1160, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph1268.split
  %i.aom = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aon = add nsw i64 %i.aoj, %i.ji              ; 2 uses
  %i.aoo = getelementptr inbounds [8 x i8], ptr %i.aom, i64 %i.aon
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !34
  %i.aoq = getelementptr inbounds i8, ptr %i.aop, i64 %i.akv
  %i.aor = load i8, ptr %i.aoq, align 1, !tbaa !81
  %.not1161 = icmp eq i8 %i.aor, 0
  br i1 %.not1161, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.aos = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.aot = getelementptr inbounds [4 x i8], ptr %i.aos, i64 %i.ia
  %i.aou = load i32, ptr %i.aot, align 4, !tbaa !4
  %i.aov = getelementptr inbounds [4 x i8], ptr %i.aos, i64 %i.ig
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !4
  %i.aox = add nsw i32 %i.aow, %i.aou
  %i.aoy = mul nsw i32 %i.aox, %16
  %i.aoz = ashr i32 %i.aoy, 16
  %i.apa = getelementptr inbounds [4 x i8], ptr %i.aos, i64 %i.aky
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !4
  %i.apc = trunc nsw i64 %i.aoi to i32            ; 2 uses
  %i.apd = shl i32 %i.apc, 2                      ; 2 uses
  %i.ape = sub nsw i32 %i.apd, %i.z
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr inbounds [4 x i8], ptr %i.aos, i64 %i.apf
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !4
  %i.api = add nsw i32 %i.aph, %i.apb
  %i.apj = mul nsw i32 %i.api, %16
  %i.apk = ashr i32 %i.apj, 16
  %i.apl = add nsw i32 %i.apk, %i.aoz             ; 3 uses
  %i.apm = icmp slt i32 %i.apl, %.131267
  br i1 %i.apm, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.apn = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.apo = sub nsw i32 %.131267, %i.apl
  %i.app = add nsw i32 %i.apd, 80
  %i.apq = tail call i32 %i.apn(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.apo, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.akz, i32 noundef %i.app) #13
  %i.apr = add nsw i32 %i.apq, %i.apl             ; 2 uses
  %i.aps = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.apt = getelementptr inbounds [8 x i8], ptr %i.aps, i64 %i.aon
  %i.apu = load ptr, ptr %i.apt, align 8, !tbaa !34
  %i.apv = getelementptr inbounds i8, ptr %i.apu, i64 %i.akv
  store i8 1, ptr %i.apv, align 1, !tbaa !81
  %i.apw = icmp slt i32 %i.apr, %.131267
  br i1 %i.apw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dm, %bb.do, %bb.dp, %bb.dn, %.lr.ph1268.split
  %.141046.ph = phi i32 [ %.1310451265, %.lr.ph1268.split ], [ %.1310451265, %bb.dn ], [ %.1310451265, %bb.do ], [ %.91041.3, %bb.dp ], [ %.1310451265, %bb.dm ] ; 4 uses
  %.141016.ph = phi i32 [ %.1310151266, %.lr.ph1268.split ], [ %.1310151266, %bb.dn ], [ %.1310151266, %bb.do ], [ %i.apc, %bb.dp ], [ %.1310151266, %bb.dm ] ; 4 uses
  %.14.ph = phi i32 [ %.131267, %.lr.ph1268.split ], [ %.131267, %bb.dn ], [ %.131267, %bb.do ], [ %i.apr, %bb.dp ], [ %.131267, %bb.dm ] ; 7 uses
  %i.apx = sub nsw i64 %i.ala, %indvars.iv1336    ; 2 uses
  %i.apy = sub nsw i64 %i.apx, %i.alb             ; 2 uses
  %i.apz = trunc nsw i64 %i.apy to i32
  %i.aqa = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.apz, i1 true)
  %.not1163 = icmp samesign ugt i32 %i.aqa, %14
  br i1 %.not1163, label %bb.dv, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aqb = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.aqc = add nsw i64 %i.apy, %i.ji              ; 2 uses
  %i.aqd = getelementptr inbounds [8 x i8], ptr %i.aqb, i64 %i.aqc
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !34
  %i.aqf = getelementptr inbounds i8, ptr %i.aqe, i64 %i.akv
  %i.aqg = load i8, ptr %i.aqf, align 1, !tbaa !81
  %.not1164 = icmp eq i8 %i.aqg, 0
  br i1 %.not1164, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr
  %i.aqh = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.aqi = getelementptr inbounds [4 x i8], ptr %i.aqh, i64 %i.ia
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !4
  %i.aqk = getelementptr inbounds [4 x i8], ptr %i.aqh, i64 %i.ig
  %i.aql = load i32, ptr %i.aqk, align 4, !tbaa !4
  %i.aqm = add nsw i32 %i.aql, %i.aqj
  %i.aqn = mul nsw i32 %i.aqm, %16
  %i.aqo = ashr i32 %i.aqn, 16
  %i.aqp = getelementptr inbounds [4 x i8], ptr %i.aqh, i64 %i.aky
  %i.aqq = load i32, ptr %i.aqp, align 4, !tbaa !4
  %i.aqr = trunc nsw i64 %i.apx to i32            ; 2 uses
  %i.aqs = shl i32 %i.aqr, 2                      ; 2 uses
  %i.aqt = sub nsw i32 %i.aqs, %i.z
  %i.aqu = sext i32 %i.aqt to i64
  %i.aqv = getelementptr inbounds [4 x i8], ptr %i.aqh, i64 %i.aqu
  %i.aqw = load i32, ptr %i.aqv, align 4, !tbaa !4
  %i.aqx = add nsw i32 %i.aqw, %i.aqq
  %i.aqy = mul nsw i32 %i.aqx, %16
  %i.aqz = ashr i32 %i.aqy, 16
  %i.ara = add nsw i32 %i.aqz, %i.aqo             ; 3 uses
  %i.arb = icmp slt i32 %i.ara, %.14.ph
  br i1 %i.arb, label %bb.dt, label %bb.dv

bb.dt:                                            ; preds = %bb.ds
  %i.arc = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.ard = sub nsw i32 %.14.ph, %i.ara
  %i.are = add nsw i32 %i.aqs, 80
  %i.arf = tail call i32 %i.arc(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.ard, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.akz, i32 noundef %i.are) #13
  %i.arg = add nsw i32 %i.arf, %i.ara             ; 2 uses
  %i.arh = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.ari = getelementptr inbounds [8 x i8], ptr %i.arh, i64 %i.aqc
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !34
  %i.ark = getelementptr inbounds i8, ptr %i.arj, i64 %i.akv
  store i8 1, ptr %i.ark, align 1, !tbaa !81
  %i.arl = icmp slt i32 %i.arg, %.14.ph
  br i1 %i.arl, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dq, %bb.ds, %bb.du, %bb.dt, %bb.dr
  %.151047 = phi i32 [ %.141046.ph, %bb.dr ], [ %.91041.3, %bb.du ], [ %.141046.ph, %bb.dt ], [ %.141046.ph, %bb.ds ], [ %.141046.ph, %bb.dq ] ; 2 uses
  %.151017 = phi i32 [ %.141016.ph, %bb.dr ], [ %i.aqr, %bb.du ], [ %.141016.ph, %bb.dt ], [ %.141016.ph, %bb.ds ], [ %.141016.ph, %bb.dq ] ; 2 uses
  %.15 = phi i32 [ %.14.ph, %bb.dr ], [ %i.arg, %bb.du ], [ %.14.ph, %bb.dt ], [ %.14.ph, %bb.ds ], [ %.14.ph, %bb.dq ] ; 2 uses
  %indvars.iv.next1337 = add nuw nsw i64 %indvars.iv1336, 2 ; 2 uses
  %i.arm = icmp samesign ult i64 %indvars.iv.next1337, %i.alc
  br i1 %i.arm, label %.lr.ph1268.split, label %._crit_edge, !llvm.loop !123

._crit_edge:                                      ; preds = %bb.dv, %.preheader1241, %.lr.ph1268, %.preheader1240
  %.131045.lcssa = phi i32 [ %.121044, %.preheader1240 ], [ %.91041.3, %.preheader1241 ], [ %.121044, %.lr.ph1268 ], [ %.151047, %bb.dv ] ; 5 uses
  %.131015.lcssa = phi i32 [ %.121014, %.preheader1240 ], [ %.91011.3, %.preheader1241 ], [ %.121014, %.lr.ph1268 ], [ %.151017, %bb.dv ] ; 5 uses
  %.13.lcssa = phi i32 [ %.12, %.preheader1240 ], [ %.9.3, %.preheader1241 ], [ %.12, %.lr.ph1268 ], [ %.15, %bb.dv ] ; 4 uses
  %i.arn = load i32, ptr @pred_SAD, align 4, !tbaa !4 ; 2 uses
  %i.aro = sub nsw i32 %.13.lcssa, %i.arn
  %i.arp = sitofp i32 %i.aro to float             ; 2 uses
  %i.arq = sitofp i32 %i.arn to float             ; 2 uses
  %i.arr = fmul float %.01076, %i.arq
  %i.ars = fcmp ogt float %i.arr, %i.arp
  br i1 %i.ars, label %.loopexit1235, label %bb.dw

bb.dw:                                            ; preds = %._crit_edge
  %i.art = fmul float %.01075, %i.arq
  %i.aru = fcmp ogt float %i.art, %i.arp
  br i1 %i.aru, label %.loopexit1237, label %.preheader1239.preheader

.preheader1239.preheader:                         ; preds = %bb.dw
  %.pre1362 = load ptr, ptr @spiral_search_x, align 8, !tbaa !87
  %.pre1364 = load ptr, ptr @spiral_search_y, align 8, !tbaa !87
  br label %.preheader1239

.preheader1239:                                   ; preds = %.preheader1239.preheader, %bb.ec
  %17 = phi ptr [ %.pre1364, %.preheader1239.preheader ], [ %19, %bb.ec ] ; 5 uses
  %18 = phi ptr [ %.pre1362, %.preheader1239.preheader ], [ %20, %bb.ec ] ; 5 uses
  %indvars.iv1339 = phi i64 [ 1, %.preheader1239.preheader ], [ %indvars.iv.next1340, %bb.ec ] ; 3 uses
  %.161277.a = phi i32 [ %.13.lcssa, %.preheader1239.preheader ], [ %.17, %bb.ec ] ; 8 uses
  %.1610181276 = phi i32 [ %.131015.lcssa, %.preheader1239.preheader ], [ %.171019, %bb.ec ] ; 5 uses
  %.1610481275 = phi i32 [ %.131045.lcssa, %.preheader1239.preheader ], [ %.171049, %bb.ec ] ; 5 uses
  %i.arv = getelementptr inbounds nuw [2 x i8], ptr %18, i64 %indvars.iv1339
  %i.arw = load i16, ptr %i.arv, align 2, !tbaa !50
  %i.arx = sext i16 %i.arw to i32
  %i.ary = add nsw i32 %.131045.lcssa, %i.arx     ; 3 uses
  %i.arz = getelementptr inbounds nuw [2 x i8], ptr %17, i64 %indvars.iv1339
  %i.asa = load i16, ptr %i.arz, align 2, !tbaa !50
  %i.asb = sext i16 %i.asa to i32
  %i.asc = add nsw i32 %.131015.lcssa, %i.asb     ; 3 uses
  %i.asd = sub nsw i32 %i.ary, %i.as              ; 2 uses
  %i.ase = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.asd, i1 true)
  %.not1156 = icmp sgt i32 %i.ase, %14
  br i1 %.not1156, label %bb.ec, label %bb.dx

bb.dx:                                            ; preds = %.preheader1239
  %i.asf = sub nsw i32 %i.asc, %i.at              ; 2 uses
  %i.asg = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.asf, i1 true)
  %.not1157 = icmp samesign ugt i32 %i.asg, %14
  br i1 %.not1157, label %bb.ec, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.ash = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.asi = add nsw i32 %i.asf, %14
  %i.asj = sext i32 %i.asi to i64                 ; 2 uses
  %i.ask = getelementptr inbounds [8 x i8], ptr %i.ash, i64 %i.asj
  %i.asl = load ptr, ptr %i.ask, align 8, !tbaa !34
  %i.asm = add nsw i32 %i.asd, %14
  %i.asn = sext i32 %i.asm to i64                 ; 2 uses
  %i.aso = getelementptr inbounds i8, ptr %i.asl, i64 %i.asn
  %i.asp = load i8, ptr %i.aso, align 1, !tbaa !81
  %.not1158 = icmp eq i8 %i.asp, 0
  br i1 %.not1158, label %bb.dz, label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  %i.asq = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.asr = getelementptr inbounds [4 x i8], ptr %i.asq, i64 %i.ia
  %i.ass = load i32, ptr %i.asr, align 4, !tbaa !4
  %i.ast = getelementptr inbounds [4 x i8], ptr %i.asq, i64 %i.ig
  %i.asu = load i32, ptr %i.ast, align 4, !tbaa !4
  %i.asv = add nsw i32 %i.asu, %i.ass
  %i.asw = mul nsw i32 %i.asv, %16
  %i.asx = ashr i32 %i.asw, 16
  %i.asy = shl i32 %i.ary, 2                      ; 2 uses
  %i.asz = sub nsw i32 %i.asy, %i.x
  %i.ata = sext i32 %i.asz to i64
  %i.atb = getelementptr inbounds [4 x i8], ptr %i.asq, i64 %i.ata
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !4
  %i.atd = shl i32 %i.asc, 2                      ; 2 uses
  %i.ate = sub nsw i32 %i.atd, %i.z
  %i.atf = sext i32 %i.ate to i64
  %i.atg = getelementptr inbounds [4 x i8], ptr %i.asq, i64 %i.atf
  %i.ath = load i32, ptr %i.atg, align 4, !tbaa !4
  %i.ati = add nsw i32 %i.ath, %i.atc
  %i.atj = mul nsw i32 %i.ati, %16
  %i.atk = ashr i32 %i.atj, 16
  %i.atl = add nsw i32 %i.atk, %i.asx             ; 3 uses
  %i.atm = icmp slt i32 %i.atl, %.161277.a
  br i1 %i.atm, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.atn = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.ato = sub nsw i32 %.161277.a, %i.atl
  %i.atp = add nsw i32 %i.asy, 80
  %i.atq = add nsw i32 %i.atd, 80
  %i.atr = tail call i32 %i.atn(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.ato, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.atp, i32 noundef %i.atq) #13
  %i.ats = add nsw i32 %i.atr, %i.atl             ; 2 uses
  %i.att = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.atu = getelementptr inbounds [8 x i8], ptr %i.att, i64 %i.asj
  %i.atv = load ptr, ptr %i.atu, align 8, !tbaa !34
  %i.atw = getelementptr inbounds i8, ptr %i.atv, i64 %i.asn
  store i8 1, ptr %i.atw, align 1, !tbaa !81
  %i.atx = icmp slt i32 %i.ats, %.161277.a
  %.pre = load ptr, ptr @spiral_search_x, align 8, !tbaa !87 ; 2 uses
  %.pre1363 = load ptr, ptr @spiral_search_y, align 8, !tbaa !87 ; 2 uses
  br i1 %i.atx, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  br label %bb.ec

bb.ec:                                            ; preds = %.preheader1239, %bb.dx, %bb.dz, %bb.eb, %bb.ea, %bb.dy
  %19 = phi ptr [ %17, %bb.dy ], [ %.pre1363, %bb.eb ], [ %.pre1363, %bb.ea ], [ %17, %bb.dz ], [ %17, %bb.dx ], [ %17, %.preheader1239 ]
  %20 = phi ptr [ %18, %bb.dy ], [ %.pre, %bb.eb ], [ %.pre, %bb.ea ], [ %18, %bb.dz ], [ %18, %bb.dx ], [ %18, %.preheader1239 ]
  %.171049 = phi i32 [ %.1610481275, %bb.dy ], [ %i.ary, %bb.eb ], [ %.1610481275, %bb.ea ], [ %.1610481275, %bb.dz ], [ %.1610481275, %bb.dx ], [ %.1610481275, %.preheader1239 ] ; 5 uses
  %.171019 = phi i32 [ %.1610181276, %bb.dy ], [ %i.asc, %bb.eb ], [ %.1610181276, %bb.ea ], [ %.1610181276, %bb.dz ], [ %.1610181276, %bb.dx ], [ %.1610181276, %.preheader1239 ] ; 5 uses
  %.17 = phi i32 [ %.161277.a, %bb.dy ], [ %i.ats, %bb.eb ], [ %.161277.a, %bb.ea ], [ %.161277.a, %bb.dz ], [ %.161277.a, %bb.dx ], [ %.161277.a, %.preheader1239 ] ; 6 uses
  %indvars.iv.next1340 = add nuw nsw i64 %indvars.iv1339, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1340, 25
  br i1 %exitcond.not, label %bb.ed, label %.preheader1239, !llvm.loop !124

bb.ed:                                            ; preds = %bb.ec
  %i.aty = load i32, ptr @pred_SAD, align 4, !tbaa !4 ; 2 uses
  %i.atz = sub nsw i32 %.17, %i.aty
  %i.aua = sitofp i32 %i.atz to float             ; 2 uses
  %i.aub = sitofp i32 %i.aty to float             ; 2 uses
  %i.auc = fmul float %.01076, %i.aub
  %i.aud = fcmp ogt float %i.auc, %i.aua
  br i1 %i.aud, label %.loopexit1235, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aue = fmul float %.01075, %i.aub
  %i.auf = fcmp ogt float %i.aue, %i.aua
  br i1 %i.auf, label %.loopexit1237, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) @Big_Hexagon_x, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @Big_Hexagon_y, i64 64, i1 false)
  %i.aug = load ptr, ptr @input, align 8, !tbaa !10
  %i.auh = getelementptr inbounds nuw i8, ptr %i.aug, i64 28
  %i.aui = load i32, ptr %i.auh, align 4, !tbaa !35
  %.not11521282 = icmp slt i32 %i.aui, 4
  br i1 %.not11521282, label %.loopexit1237, label %.preheader1236

bb.eg:                                            ; preds = %bb.eo
  %i.auj = add nuw nsw i32 %.210641283, 1
  %i.auk = load ptr, ptr @input, align 8, !tbaa !10
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auk, i64 28
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !35
  %i.aun = ashr i32 %i.aum, 2
  %.not1152.not = icmp slt i32 %.210641283, %i.aun
  br i1 %.not1152.not, label %.preheader1236, label %.loopexit1237, !llvm.loop !125

.preheader1236:                                   ; preds = %bb.ef, %bb.eg
  %.181286 = phi i32 [ %.20, %bb.eg ], [ %.17, %bb.ef ]
  %.1810201285 = phi i32 [ %.201022, %bb.eg ], [ %.171019, %bb.ef ]
  %.1810501284 = phi i32 [ %.201052, %bb.eg ], [ %.171049, %bb.ef ]
  %.210641283 = phi i32 [ %i.auj, %bb.eg ], [ 1, %bb.ef ] ; 2 uses
  br label %bb.eh

bb.eh:                                            ; preds = %.preheader1236, %bb.en
  %indvars.iv1342 = phi i64 [ 0, %.preheader1236 ], [ %indvars.iv.next1343, %bb.en ] ; 5 uses
  %.191281 = phi i32 [ %.181286, %.preheader1236 ], [ %.20, %bb.en ] ; 8 uses
  %.1910211280 = phi i32 [ %.1810201285, %.preheader1236 ], [ %.201022, %bb.en ] ; 5 uses
  %.1910511279 = phi i32 [ %.1810501284, %.preheader1236 ], [ %.201052, %bb.en ] ; 5 uses
  %i.auo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1342 ; 2 uses
  %i.aup = load i32, ptr %i.auo, align 4, !tbaa !4 ; 2 uses
  %i.auq = add nsw i32 %i.aup, %.131045.lcssa     ; 3 uses
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv1342 ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !4 ; 2 uses
  %i.aut = add nsw i32 %i.aus, %.131015.lcssa     ; 3 uses
  %i.auu = getelementptr inbounds nuw [4 x i8], ptr @Big_Hexagon_x, i64 %indvars.iv1342
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !4
  %i.auw = add nsw i32 %i.auv, %i.aup
  store i32 %i.auw, ptr %i.auo, align 4, !tbaa !4
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr @Big_Hexagon_y, i64 %indvars.iv1342
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !4
  %i.auz = add nsw i32 %i.auy, %i.aus
  store i32 %i.auz, ptr %i.aur, align 4, !tbaa !4
  %i.ava = sub nsw i32 %i.auq, %i.as              ; 2 uses
  %i.avb = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.ava, i1 true)
  %.not1153 = icmp sgt i32 %i.avb, %14
  br i1 %.not1153, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.avc = sub nsw i32 %i.aut, %i.at              ; 2 uses
  %i.avd = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.avc, i1 true)
  %.not1154 = icmp samesign ugt i32 %i.avd, %14
  br i1 %.not1154, label %bb.en, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ave = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.avf = add nsw i32 %i.avc, %14
  %i.avg = sext i32 %i.avf to i64                 ; 2 uses
  %i.avh = getelementptr inbounds [8 x i8], ptr %i.ave, i64 %i.avg
  %i.avi = load ptr, ptr %i.avh, align 8, !tbaa !34
  %i.avj = add nsw i32 %i.ava, %14
  %i.avk = sext i32 %i.avj to i64                 ; 2 uses
  %i.avl = getelementptr inbounds i8, ptr %i.avi, i64 %i.avk
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !81
  %.not1155 = icmp eq i8 %i.avm, 0
  br i1 %.not1155, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %bb.ej
  %i.avn = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.avo = getelementptr inbounds [4 x i8], ptr %i.avn, i64 %i.ia
  %i.avp = load i32, ptr %i.avo, align 4, !tbaa !4
  %i.avq = getelementptr inbounds [4 x i8], ptr %i.avn, i64 %i.ig
  %i.avr = load i32, ptr %i.avq, align 4, !tbaa !4
  %i.avs = add nsw i32 %i.avr, %i.avp
  %i.avt = mul nsw i32 %i.avs, %16
  %i.avu = ashr i32 %i.avt, 16
  %i.avv = shl i32 %i.auq, 2                      ; 2 uses
  %i.avw = sub nsw i32 %i.avv, %i.x
  %i.avx = sext i32 %i.avw to i64
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.avn, i64 %i.avx
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !4
  %i.awa = shl i32 %i.aut, 2                      ; 2 uses
  %i.awb = sub nsw i32 %i.awa, %i.z
  %i.awc = sext i32 %i.awb to i64
  %i.awd = getelementptr inbounds [4 x i8], ptr %i.avn, i64 %i.awc
  %i.awe = load i32, ptr %i.awd, align 4, !tbaa !4
  %i.awf = add nsw i32 %i.awe, %i.avz
  %i.awg = mul nsw i32 %i.awf, %16
  %i.awh = ashr i32 %i.awg, 16
  %i.awi = add nsw i32 %i.awh, %i.avu             ; 3 uses
  %i.awj = icmp slt i32 %i.awi, %.191281
  br i1 %i.awj, label %bb.el, label %bb.en

bb.el:                                            ; preds = %bb.ek
  %i.awk = load ptr, ptr @computeBiPred, align 8, !tbaa !10
  %i.awl = sub nsw i32 %.191281, %i.awi
  %i.awm = add nsw i32 %i.avv, 80
  %i.awn = add nsw i32 %i.awa, 80
  %i.awo = tail call i32 %i.awk(ptr noundef %0, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.awl, i32 noundef %i.ja, i32 noundef %i.jb, i32 noundef %i.awm, i32 noundef %i.awn) #13
  %i.awp = add nsw i32 %i.awo, %i.awi             ; 2 uses
  %i.awq = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.awr = getelementptr inbounds [8 x i8], ptr %i.awq, i64 %i.avg
  %i.aws = load ptr, ptr %i.awr, align 8, !tbaa !34
  %i.awt = getelementptr inbounds i8, ptr %i.aws, i64 %i.avk
  store i8 1, ptr %i.awt, align 1, !tbaa !81
  %i.awu = icmp slt i32 %i.awp, %.191281
  br i1 %i.awu, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  br label %bb.en

bb.en:                                            ; preds = %bb.eh, %bb.ei, %bb.ek, %bb.em, %bb.el, %bb.ej
  %.201052 = phi i32 [ %.1910511279, %bb.ej ], [ %i.auq, %bb.em ], [ %.1910511279, %bb.el ], [ %.1910511279, %bb.ek ], [ %.1910511279, %bb.ei ], [ %.1910511279, %bb.eh ] ; 4 uses
  %.201022 = phi i32 [ %.1910211280, %bb.ej ], [ %i.aut, %bb.em ], [ %.1910211280, %bb.el ], [ %.1910211280, %bb.ek ], [ %.1910211280, %bb.ei ], [ %.1910211280, %bb.eh ] ; 4 uses
  %.20 = phi i32 [ %.191281, %bb.ej ], [ %i.awp, %bb.em ], [ %.191281, %bb.el ], [ %.191281, %bb.ek ], [ %.191281, %bb.ei ], [ %.191281, %bb.eh ] ; 5 uses
  %indvars.iv.next1343 = add nuw nsw i64 %indvars.iv1342, 1 ; 2 uses
  %exitcond1345.not = icmp eq i64 %indvars.iv.next1343, 16
  br i1 %exitcond1345.not, label %bb.eo, label %bb.eh, !llvm.loop !126

bb.eo:                                            ; preds = %bb.en
  %i.awv = icmp slt i32 %.20, %i.aab
  br i1 %i.awv, label %.loopexit, label %bb.eg

.loopexit1237:                                    ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.dw, %bb.da
  %.211053 = phi i32 [ %.91041.3, %bb.da ], [ %.131045.lcssa, %bb.dw ], [ %.171049, %bb.ee ], [ %.171049, %bb.ef ], [ %.201052, %bb.eg ] ; 2 uses
  %.211023 = phi i32 [ %.91011.3, %bb.da ], [ %.131015.lcssa, %bb.dw ], [ %.171019, %bb.ee ], [ %.171019, %bb.ef ], [ %.201022, %bb.eg ] ; 2 uses
  %.21 = phi i32 [ %.9.3, %bb.da ], [ %.13.lcssa, %bb.dw ], [ %.17, %bb.ee ], [ %.17, %bb.ef ], [ %.20, %bb.eg ] ; 2 uses
  %i.aww = icmp sgt i32 %14, 0
  br i1 %i.aww, label %.preheader1234, label %.loopexit

bb.ep:                                            ; preds = %bb.ex
  %i.awx = add nuw nsw i32 %.310651294, 1         ; 2 uses
  %exitcond1350.not = icmp eq i32 %i.awx, %14
  br i1 %exitcond1350.not, label %.loopexit1235, label %.preheader1234, !llvm.loop !127

.preheader1234:                                   ; preds = %.loopexit1237, %bb.ep
  %.221297 = phi i32 [ %.24, %bb.ep ], [ %.21, %.loopexit1237 ]
  %.2210241296 = phi i32 [ %.241026, %bb.ep ], [ %.211023, %.loopexit1237 ] ; 4 uses
  %.2210541295 = phi i32 [ %.241056, %bb.ep ], [ %.211053, %.loopexit1237 ] ; 4 uses
  %.310651294 = phi i32 [ %i.awx, %bb.ep ], [ 0, %.loopexit1237 ]
  br label %bb.eq

bb.eq:                                            ; preds = %.preheader1234, %bb.ew
  %indvars.iv1346 = phi i64 [ 0, %.preheader1234 ], [ %indvars.iv.next1347, %bb.ew ] ; 3 uses
  %.231293 = phi i32 [ %.221297, %.preheader1234 ], [ %.24, %bb.ew ] ; 8 uses
  %.2310251292 = phi i32 [ %.2210241296, %.preheader1234 ], [ %.241026, %bb.ew ] ; 5 uses
  %.2310551291 = phi i32 [ %.2210541295, %.preheader1234 ], [ %.241056, %bb.ew ] ; 5 uses
  %i.awy = getelementptr inbounds nuw [4 x i8], ptr @Hexagon_x, i64 %indvars.iv1346
  %i.awz = load i32, ptr %i.awy, align 4, !tbaa !4
  %i.axa = add nsw i32 %i.awz, %.2210541295       ; 3 uses
  %i.axb = getelementptr inbounds nuw [4 x i8], ptr @Hexagon_y, i64 %indvars.iv1346
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !4
  %i.axd = add nsw i32 %i.axc, %.2210241296       ; 3 uses
  %i.axe = sub nsw i32 %i.axa, %i.as              ; 2 uses
  %i.axf = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.axe, i1 true)
  %.not1171 = icmp sgt i32 %i.axf, %14
  br i1 %.not1171, label %bb.ew, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.axg = sub nsw i32 %i.axd, %i.at              ; 2 uses
  %i.axh = tail call range(i32 0, -2147483648) i32 @llvm.abs.i32(i32 %i.axg, i1 true)
  %.not1172 = icmp samesign ugt i32 %i.axh, %14
  br i1 %.not1172, label %bb.ew, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.axi = load ptr, ptr @McostState, align 8, !tbaa !39
  %i.axj = add nsw i32 %i.axg, %14
  %i.axk = sext i32 %i.axj to i64                 ; 2 uses
  %i.axl = getelementptr inbounds [8 x i8], ptr %i.axi, i64 %i.axk
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !34
  %i.axn = add nsw i32 %i.axe, %14
  %i.axo = sext i32 %i.axn to i64                 ; 2 uses
  %i.axp = getelementptr inbounds i8, ptr %i.axm, i64 %i.axo
  %i.axq = load i8, ptr %i.axp, align 1, !tbaa !81
  %.not1173 = icmp eq i8 %i.axq, 0
  br i1 %.not1173, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %bb.es
  %i.axr = load ptr, ptr @mvbits, align 8, !tbaa !53 ; 4 uses
  %i.axs = getelementptr inbounds [4 x i8], ptr %i.axr, i64 %i.ia
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !4
end_hunk_1
