Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/connectedcomponents?download=true
inline.NumInlined: 3211
inline.NumDeleted: 270
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.ecd = getelementptr inbounds nuw i8, ptr %i.eau, i64 4 ; 2 uses
  %i.ece = load i32, ptr %i.ecd, align 4, !tbaa !58
  %i.ecf = tail call i32 @llvm.smin.i32(i32 %i.ece, i32 %i.dyk)
  store i32 %i.ecf, ptr %i.ecd, align 4, !tbaa !58
  %i.ecg = getelementptr inbounds nuw i8, ptr %i.eau, i64 12 ; 2 uses
  %i.ech = load i32, ptr %i.ecg, align 4, !tbaa !58
  %i.eci = tail call i32 @llvm.smax.i32(i32 %i.ech, i32 %i.dyk)
  store i32 %i.eci, ptr %i.ecg, align 4, !tbaa !58
  %i.ecj = getelementptr inbounds nuw i8, ptr %i.eau, i64 16 ; 2 uses
  %i.eck = load i32, ptr %i.ecj, align 4, !tbaa !58
  %i.ecl = add nsw i32 %i.eck, 1
  store i32 %i.ecl, ptr %i.ecj, align 4, !tbaa !58
  %i.ecm = load i64, ptr %i.eat, align 8, !tbaa !116
  %i.ecn = add i64 %i.ecm, %i.eay
  store i64 %i.ecn, ptr %i.eat, align 8, !tbaa !116
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.sink4175 = phi ptr [ %i.eat, %bb.sl ], [ %i.ebv, %bb.sk ]
  %i.eco = getelementptr inbounds nuw i8, ptr %.sink4175, i64 8 ; 2 uses
  %i.ecp = load i64, ptr %i.eco, align 8, !tbaa !117
  %i.ecq = add i64 %i.ecp, %indvars.iv3703
  store i64 %i.ecq, ptr %i.eco, align 8, !tbaa !117
  %i.ecr = load i32, ptr %i.c, align 8, !tbaa !38
  %i.ecs = sext i32 %i.ecr to i64
  %i.ect = icmp slt i64 %i.dyg, %i.ecs
  br i1 %i.ect, label %bb.sn, label %bb.sv

bb.sn:                                            ; preds = %bb.sm
  %i.ecu = getelementptr inbounds nuw i8, ptr %i.dya, i64 %indvars.iv3700
  %i.ecv = load i8, ptr %i.ecu, align 1, !tbaa !32
  %.not1873 = icmp eq i8 %i.ecv, 0
  %i.ecw = getelementptr inbounds nuw [2 x i8], ptr %i.dye, i64 %indvars.iv3700 ; 2 uses
  br i1 %.not1873, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  store i16 %i.dza, ptr %i.ecw, align 2, !tbaa !53
  %i.ecx = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.ecy = icmp slt i32 %i.ecx, 2
  %i.ecz = load i64, ptr %i.dli, align 8
  %i.eda = zext i16 %i.dza to i64                 ; 2 uses
  %i.edb = mul i64 %i.ecz, %i.eda
  %.sink.idx.i.i3147 = select i1 %i.ecy, i64 0, i64 %i.edb
  %.sink.i.i3148 = getelementptr inbounds nuw i8, ptr %i.eau, i64 %.sink.idx.i.i3147 ; 6 uses
  %i.edc = load i32, ptr %.sink.i.i3148, align 4, !tbaa !58
  %i.edd = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3149 = tail call i32 @llvm.smin.i32(i32 %i.edc, i32 %i.edd)
  store i32 %..i3149, ptr %.sink.i.i3148, align 4, !tbaa !58
  %i.ede = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 8 ; 2 uses
  %i.edf = load i32, ptr %i.ede, align 4, !tbaa !58
  %i.edg = tail call i32 @llvm.smax.i32(i32 %i.edf, i32 %i.edd)
  store i32 %i.edg, ptr %i.ede, align 4, !tbaa !58
  %i.edh = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 4 ; 2 uses
  %i.edi = load i32, ptr %i.edh, align 4, !tbaa !58
  %i.edj = tail call i32 @llvm.smin.i32(i32 %i.edi, i32 %i.dyl)
  store i32 %i.edj, ptr %i.edh, align 4, !tbaa !58
  %i.edk = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 12 ; 2 uses
  %i.edl = load i32, ptr %i.edk, align 4, !tbaa !58
  %i.edm = tail call i32 @llvm.smax.i32(i32 %i.edl, i32 %i.dyl)
  store i32 %i.edm, ptr %i.edk, align 4, !tbaa !58
  %i.edn = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 16 ; 2 uses
  %i.edo = load i32, ptr %i.edn, align 4, !tbaa !58
  %i.edp = add nsw i32 %i.edo, 1
  store i32 %i.edp, ptr %i.edn, align 4, !tbaa !58
  %i.edq = getelementptr inbounds nuw [16 x i8], ptr %i.eat, i64 %i.eda ; 3 uses
  %i.edr = load i64, ptr %i.edq, align 8, !tbaa !116
  %i.eds = add i64 %i.edr, %indvars.iv3700
  store i64 %i.eds, ptr %i.edq, align 8, !tbaa !116
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sn
  store i16 0, ptr %i.ecw, align 2, !tbaa !53
  %i.edt = load i32, ptr %i.eau, align 4, !tbaa !58
  %i.edu = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 2 uses
  %..i3152 = tail call i32 @llvm.smin.i32(i32 %i.edt, i32 %i.edu)
  store i32 %..i3152, ptr %i.eau, align 4, !tbaa !58
  %i.edv = getelementptr inbounds nuw i8, ptr %i.eau, i64 8 ; 2 uses
  %i.edw = load i32, ptr %i.edv, align 4, !tbaa !58
  %i.edx = tail call i32 @llvm.smax.i32(i32 %i.edw, i32 %i.edu)
  store i32 %i.edx, ptr %i.edv, align 4, !tbaa !58
  %i.edy = getelementptr inbounds nuw i8, ptr %i.eau, i64 4 ; 2 uses
  %i.edz = load i32, ptr %i.edy, align 4, !tbaa !58
  %i.eea = tail call i32 @llvm.smin.i32(i32 %i.edz, i32 %i.dym)
  store i32 %i.eea, ptr %i.edy, align 4, !tbaa !58
  %i.eeb = getelementptr inbounds nuw i8, ptr %i.eau, i64 12 ; 2 uses
  %i.eec = load i32, ptr %i.eeb, align 4, !tbaa !58
  %i.eed = tail call i32 @llvm.smax.i32(i32 %i.eec, i32 %i.dym)
  store i32 %i.eed, ptr %i.eeb, align 4, !tbaa !58
  %i.eee = getelementptr inbounds nuw i8, ptr %i.eau, i64 16 ; 2 uses
  %i.eef = load i32, ptr %i.eee, align 4, !tbaa !58
  %i.eeg = add nsw i32 %i.eef, 1
  store i32 %i.eeg, ptr %i.eee, align 4, !tbaa !58
  %i.eeh = load i64, ptr %i.eat, align 8, !tbaa !116
  %i.eei = add i64 %i.eeh, %indvars.iv3700
  store i64 %i.eei, ptr %i.eat, align 8, !tbaa !116
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.sink4178 = phi ptr [ %i.eat, %bb.sp ], [ %i.edq, %bb.so ]
  %i.eej = getelementptr inbounds nuw i8, ptr %.sink4178, i64 8 ; 2 uses
  %i.eek = load i64, ptr %i.eej, align 8, !tbaa !117
  %i.eel = add i64 %i.eek, %i.dyg
  store i64 %i.eel, ptr %i.eej, align 8, !tbaa !117
  %i.eem = getelementptr inbounds nuw i8, ptr %i.dya, i64 %i.eay
  %i.een = load i8, ptr %i.eem, align 1, !tbaa !32
  %.not1874 = icmp eq i8 %i.een, 0
  %i.eeo = getelementptr inbounds nuw [2 x i8], ptr %i.dye, i64 %i.eay ; 2 uses
  br i1 %.not1874, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  store i16 %i.dza, ptr %i.eeo, align 2, !tbaa !53
  %i.eep = load i32, ptr %i.dlg, align 4, !tbaa !96
  %i.eeq = icmp slt i32 %i.eep, 2
  %i.eer = load i64, ptr %i.dli, align 8
  %i.ees = zext i16 %i.dza to i64                 ; 2 uses
  %i.eet = mul i64 %i.eer, %i.ees
  %.sink.idx.i.i3153 = select i1 %i.eeq, i64 0, i64 %i.eet
  %.sink.i.i3154 = getelementptr inbounds nuw i8, ptr %i.eau, i64 %.sink.idx.i.i3153 ; 6 uses
  %i.eeu = load i32, ptr %.sink.i.i3154, align 4, !tbaa !58
  %i.eev = trunc nuw nsw i64 %i.eay to i32        ; 2 uses
  %..i3155 = tail call i32 @llvm.smin.i32(i32 %i.eeu, i32 %i.eev)
  store i32 %..i3155, ptr %.sink.i.i3154, align 4, !tbaa !58
  %i.eew = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 8 ; 2 uses
  %i.eex = load i32, ptr %i.eew, align 4, !tbaa !58
  %i.eey = tail call i32 @llvm.smax.i32(i32 %i.eex, i32 %i.eev)
  store i32 %i.eey, ptr %i.eew, align 4, !tbaa !58
  %i.eez = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 4 ; 2 uses
  %i.efa = load i32, ptr %i.eez, align 4, !tbaa !58
  %i.efb = tail call i32 @llvm.smin.i32(i32 %i.efa, i32 %i.dyn)
  store i32 %i.efb, ptr %i.eez, align 4, !tbaa !58
  %i.efc = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 12 ; 2 uses
  %i.efd = load i32, ptr %i.efc, align 4, !tbaa !58
  %i.efe = tail call i32 @llvm.smax.i32(i32 %i.efd, i32 %i.dyn)
  store i32 %i.efe, ptr %i.efc, align 4, !tbaa !58
  %i.eff = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 16 ; 2 uses
  %i.efg = load i32, ptr %i.eff, align 4, !tbaa !58
  %i.efh = add nsw i32 %i.efg, 1
  store i32 %i.efh, ptr %i.eff, align 4, !tbaa !58
  %i.efi = getelementptr inbounds nuw [16 x i8], ptr %i.eat, i64 %i.ees ; 2 uses
  %i.efj = load <2 x i64>, ptr %i.efi, align 8, !tbaa !39
  %i.efk = insertelement <2 x i64> %i.dyr, i64 %i.eay, i64 0
  %i.efl = add <2 x i64> %i.efj, %i.efk
  store <2 x i64> %i.efl, ptr %i.efi, align 8, !tbaa !39
  br label %bb.sv

bb.ss:                                            ; preds = %bb.sq
  store i16 0, ptr %i.eeo, align 2, !tbaa !53
  %i.efm = load i32, ptr %i.eau, align 4, !tbaa !58
  %i.efn = trunc nuw nsw i64 %i.eay to i32        ; 2 uses
  %..i3158 = tail call i32 @llvm.smin.i32(i32 %i.efm, i32 %i.efn)
  store i32 %..i3158, ptr %i.eau, align 4, !tbaa !58
  %i.efo = getelementptr inbounds nuw i8, ptr %i.eau, i64 8 ; 2 uses
  %i.efp = load i32, ptr %i.efo, align 4, !tbaa !58
  %i.efq = tail call i32 @llvm.smax.i32(i32 %i.efp, i32 %i.efn)
  store i32 %i.efq, ptr %i.efo, align 4, !tbaa !58
  %i.efr = getelementptr inbounds nuw i8, ptr %i.eau, i64 4 ; 2 uses
  %i.efs = load i32, ptr %i.efr, align 4, !tbaa !58
  %i.eft = tail call i32 @llvm.smin.i32(i32 %i.efs, i32 %i.dyo)
  store i32 %i.eft, ptr %i.efr, align 4, !tbaa !58
  %i.efu = getelementptr inbounds nuw i8, ptr %i.eau, i64 12 ; 2 uses
  %i.efv = load i32, ptr %i.efu, align 4, !tbaa !58
  %i.efw = tail call i32 @llvm.smax.i32(i32 %i.efv, i32 %i.dyo)
  store i32 %i.efw, ptr %i.efu, align 4, !tbaa !58
  %i.efx = getelementptr inbounds nuw i8, ptr %i.eau, i64 16 ; 2 uses
  %i.efy = load i32, ptr %i.efx, align 4, !tbaa !58
  %i.efz = add nsw i32 %i.efy, 1
  store i32 %i.efz, ptr %i.efx, align 4, !tbaa !58
  %i.ega = load <2 x i64>, ptr %i.eat, align 8, !tbaa !39
  %i.egb = insertelement <2 x i64> %i.dyr, i64 %i.eay, i64 0
  %i.egc = add <2 x i64> %i.ega, %i.egb
  store <2 x i64> %i.egc, ptr %i.eat, align 8, !tbaa !39
  br label %bb.sv

bb.st:                                            ; preds = %bb.sf
  %i.egd = or disjoint i64 %indvars.iv3700, 1     ; 5 uses
  %i.ege = getelementptr inbounds nuw [2 x i8], ptr %i.dyd, i64 %i.egd
  store i16 0, ptr %i.ege, align 2, !tbaa !53
  %i.egf = load ptr, ptr %i.dlh, align 8, !tbaa !54 ; 7 uses
  %i.egg = load i32, ptr %i.egf, align 4, !tbaa !58
  %i.egh = trunc nuw nsw i64 %indvars.iv3700 to i32 ; 4 uses
  %..i3161 = tail call i32 @llvm.smin.i32(i32 %i.egg, i32 %i.egh)
  %i.egi = getelementptr inbounds nuw i8, ptr %i.egf, i64 8 ; 3 uses
  %i.egj = load i32, ptr %i.egi, align 4, !tbaa !58
  %i.egk = tail call i32 @llvm.smax.i32(i32 %i.egj, i32 %i.egh)
  %i.egl = getelementptr inbounds nuw i8, ptr %i.egf, i64 4 ; 3 uses
  %i.egm = load i32, ptr %i.egl, align 4, !tbaa !58
  %i.egn = tail call i32 @llvm.smin.i32(i32 %i.egm, i32 %i.dyp) ; 2 uses
  %i.ego = getelementptr inbounds nuw i8, ptr %i.egf, i64 12 ; 3 uses
  %i.egp = load i32, ptr %i.ego, align 4, !tbaa !58
  %i.egq = tail call i32 @llvm.smax.i32(i32 %i.egp, i32 %i.dyp) ; 2 uses
  %i.egr = getelementptr inbounds nuw i8, ptr %i.egf, i64 16 ; 3 uses
  %i.egs = load i32, ptr %i.egr, align 4, !tbaa !58 ; 2 uses
  %i.egt = load ptr, ptr %i.dlj, align 8, !tbaa !49 ; 4 uses
  %i.egu = load i64, ptr %i.egt, align 8, !tbaa !116
  %i.egv = add i64 %i.egu, %indvars.iv3700
  %i.egw = getelementptr inbounds nuw i8, ptr %i.egt, i64 8 ; 3 uses
  %i.egx = load i64, ptr %i.egw, align 8, !tbaa !117
  %i.egy = trunc nuw nsw i64 %i.egd to i32        ; 4 uses
  %..i3164 = tail call i32 @llvm.smin.i32(i32 %..i3161, i32 %i.egy) ; 2 uses
  store i32 %..i3164, ptr %i.egf, align 4, !tbaa !58
  %i.egz = tail call i32 @llvm.smax.i32(i32 %i.egk, i32 %i.egy) ; 2 uses
  store i32 %i.egz, ptr %i.egi, align 4, !tbaa !58
  store i32 %i.egn, ptr %i.egl, align 4, !tbaa !58
  store i32 %i.egq, ptr %i.ego, align 4, !tbaa !58
  %i.eha = add nsw i32 %i.egs, 2
  store i32 %i.eha, ptr %i.egr, align 4, !tbaa !58
  %i.ehb = add i64 %i.egv, %i.egd                 ; 2 uses
  store i64 %i.ehb, ptr %i.egt, align 8, !tbaa !116
  %.reass4148 = add i64 %i.egx, %invariant.op4147 ; 2 uses
  store i64 %.reass4148, ptr %i.egw, align 8, !tbaa !117
  %i.ehc = load i32, ptr %i.c, align 8, !tbaa !38
  %i.ehd = sext i32 %i.ehc to i64
  %i.ehe = icmp slt i64 %i.dyg, %i.ehd
  br i1 %i.ehe, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.ehf = getelementptr inbounds nuw [2 x i8], ptr %i.dye, i64 %indvars.iv3700
  store i16 0, ptr %i.ehf, align 2, !tbaa !53
  %i.ehg = getelementptr inbounds nuw [2 x i8], ptr %i.dye, i64 %i.egd
  store i16 0, ptr %i.ehg, align 2, !tbaa !53
  %..i3167 = tail call i32 @llvm.smin.i32(i32 %..i3164, i32 %i.egh)
  %i.ehh = tail call i32 @llvm.umax.i32(i32 %i.egz, i32 %i.egh)
  %i.ehi = tail call i32 @llvm.smin.i32(i32 %i.egn, i32 %i.dyq)
  %i.ehj = tail call i32 @llvm.smax.i32(i32 %i.egq, i32 %i.dyq)
  %i.ehk = add i64 %i.ehb, %indvars.iv3700
  %..i3170 = tail call i32 @llvm.smin.i32(i32 %..i3167, i32 %i.egy)
  store i32 %..i3170, ptr %i.egf, align 4, !tbaa !58
  %i.ehl = tail call i32 @llvm.smax.i32(i32 %i.ehh, i32 %i.egy)
  store i32 %i.ehl, ptr %i.egi, align 4, !tbaa !58
  store i32 %i.ehi, ptr %i.egl, align 4, !tbaa !58
  store i32 %i.ehj, ptr %i.ego, align 4, !tbaa !58
  %i.ehm = add nsw i32 %i.egs, 4
  store i32 %i.ehm, ptr %i.egr, align 4, !tbaa !58
  %i.ehn = add i64 %i.ehk, %i.egd
  store i64 %i.ehn, ptr %i.egt, align 8, !tbaa !116
  %.reass4150 = add i64 %.reass4148, %invariant.op4149
  store i64 %.reass4150, ptr %i.egw, align 8, !tbaa !117
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.ss, %bb.sr, %bb.st, %bb.sm
  %indvars.iv.next3701 = add nuw nsw i64 %indvars.iv3700, 2 ; 2 uses
  %i.eho = load i32, ptr %i.o, align 4, !tbaa !51 ; 2 uses
  %i.ehp = sext i32 %i.eho to i64
  %i.ehq = icmp slt i64 %indvars.iv.next3701, %i.ehp
  br i1 %i.ehq, label %bb.sf, label %._crit_edge3530.loopexit, !llvm.loop !322

bb.sw:                                            ; preds = %bb.rc
  br i1 %.not1858, label %.preheader, label %.preheader3278

.preheader3278:                                   ; preds = %bb.sw
  br i1 %i.dkt, label %.lr.ph3538, label %.loopexit

.lr.ph3538:                                       ; preds = %.preheader3278
  %i.ehr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ehs = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eht = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ehu = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ehv = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ehw = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ehx = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.ehy = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %.pre3723 = load ptr, ptr %i.ehr, align 8, !tbaa !54
  %.pre3724 = load ptr, ptr %i.eht, align 8, !tbaa !54
  br label %bb.sx

.preheader:                                       ; preds = %bb.sw
  br i1 %i.dkt, label %.lr.ph3545, label %.loopexit

.lr.ph3545:                                       ; preds = %.preheader
  %i.ehz = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eia = load ptr, ptr %i.ehz, align 8, !tbaa !54
  %i.eib = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eic = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eid = load ptr, ptr %i.eic, align 8, !tbaa !54
  %i.eie = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.eif = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eig = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.eih = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %i.eii = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  br label %bb.tp

bb.sx:                                            ; preds = %.lr.ph3538, %._crit_edge3536
  %i.eij = phi i32 [ %i.dkp, %.lr.ph3538 ], [ %i.ejg, %._crit_edge3536 ]
  %i.eik = phi i32 [ %i.dkr, %.lr.ph3538 ], [ %i.ejh, %._crit_edge3536 ] ; 2 uses
  %indvars.iv3709 = phi i64 [ 0, %.lr.ph3538 ], [ %indvars.iv.next3710, %._crit_edge3536 ] ; 13 uses
  %i.eil = load i64, ptr %i.ehs, align 8, !tbaa !39 ; 2 uses
  %i.eim = mul i64 %i.eil, %indvars.iv3709
  %i.ein = getelementptr inbounds nuw i8, ptr %.pre3723, i64 %i.eim ; 3 uses
  %i.eio = getelementptr inbounds nuw i8, ptr %i.ein, i64 %i.eil ; 2 uses
  %i.eip = load i64, ptr %i.ehu, align 8, !tbaa !39 ; 2 uses
  %i.eiq = mul i64 %i.eip, %indvars.iv3709
  %i.eir = getelementptr inbounds nuw i8, ptr %.pre3724, i64 %i.eiq ; 4 uses
  %i.eis = getelementptr inbounds nuw i8, ptr %i.eir, i64 %i.eip ; 4 uses
  %i.eit = icmp sgt i32 %i.eik, 0
  br i1 %i.eit, label %.lr.ph3535, label %._crit_edge3536

.lr.ph3535:                                       ; preds = %bb.sx
  %i.eiu = or disjoint i64 %indvars.iv3709, 1     ; 9 uses
  %i.eiv = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.eiw = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.eix = trunc nuw nsw i64 %i.eiu to i32        ; 2 uses
  %i.eiy = trunc nuw nsw i64 %i.eiu to i32        ; 2 uses
  %i.eiz = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.eja = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 2 uses
  %i.ejb = trunc nuw nsw i64 %i.eiu to i32        ; 2 uses
  %i.ejc = trunc nuw nsw i64 %i.eiu to i32        ; 2 uses
  %i.ejd = trunc nuw nsw i64 %indvars.iv3709 to i32 ; 4 uses
  %i.eje = trunc nuw nsw i64 %i.eiu to i32        ; 4 uses
  %invariant.op4151 = add nuw i64 %indvars.iv3709, %i.eiu
  %invariant.op4153 = add nuw i64 %indvars.iv3709, %i.eiu
  %i.ejf = insertelement <2 x i64> poison, i64 %i.eiu, i64 1 ; 2 uses
  br label %bb.sy

._crit_edge3536.loopexit:                         ; preds = %bb.to
  %.pre3725 = load i32, ptr %i.c, align 8, !tbaa !38
  br label %._crit_edge3536

._crit_edge3536:                                  ; preds = %._crit_edge3536.loopexit, %bb.sx
  %i.ejg = phi i32 [ %.pre3725, %._crit_edge3536.loopexit ], [ %i.eij, %bb.sx ] ; 2 uses
  %i.ejh = phi i32 [ %i.esc, %._crit_edge3536.loopexit ], [ %i.eik, %bb.sx ]
  %indvars.iv.next3710 = add nuw nsw i64 %indvars.iv3709, 2 ; 2 uses
  %i.eji = sext i32 %i.ejg to i64
  %i.ejj = icmp slt i64 %indvars.iv.next3710, %i.eji
  br i1 %i.ejj, label %bb.sx, label %.loopexit, !llvm.loop !323

bb.sy:                                            ; preds = %.lr.ph3535, %bb.to
  %indvars.iv3706 = phi i64 [ 0, %.lr.ph3535 ], [ %indvars.iv.next3707, %bb.to ] ; 18 uses
  %i.ejk = getelementptr inbounds nuw [2 x i8], ptr %i.eir, i64 %indvars.iv3706 ; 3 uses
  %i.ejl = load i16, ptr %i.ejk, align 2, !tbaa !53 ; 2 uses
  %.not1864 = icmp eq i16 %i.ejl, 0
  br i1 %.not1864, label %bb.tm, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  %i.ejm = zext i16 %i.ejl to i64
  %i.ejn = getelementptr inbounds nuw [2 x i8], ptr %.sroa.03251.0, i64 %i.ejm
  %i.ejo = load i16, ptr %i.ejn, align 2, !tbaa !53 ; 8 uses
  %i.ejp = getelementptr inbounds nuw i8, ptr %i.ein, i64 %indvars.iv3706
  %i.ejq = load i8, ptr %i.ejp, align 1, !tbaa !32
  %.not1865 = icmp eq i8 %i.ejq, 0
  br i1 %.not1865, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  store i16 %i.ejo, ptr %i.ejk, align 2, !tbaa !53
  %i.ejr = load i32, ptr %i.ehv, align 4, !tbaa !96
  %i.ejs = icmp slt i32 %i.ejr, 2
  %i.ejt = load ptr, ptr %i.ehw, align 8, !tbaa !54 ; 2 uses
  %i.eju = load i64, ptr %i.ehx, align 8
  %i.ejv = zext i16 %i.ejo to i64                 ; 2 uses
  %i.ejw = mul i64 %i.eju, %i.ejv
  %.sink.idx.i.i3171 = select i1 %i.ejs, i64 0, i64 %i.ejw
  %.sink.i.i3172 = getelementptr inbounds nuw i8, ptr %i.ejt, i64 %.sink.idx.i.i3171 ; 6 uses
  %i.ejx = load i32, ptr %.sink.i.i3172, align 4, !tbaa !58
  %i.ejy = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3173 = tail call i32 @llvm.smin.i32(i32 %i.ejx, i32 %i.ejy)
  store i32 %..i3173, ptr %.sink.i.i3172, align 4, !tbaa !58
  %i.ejz = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 8 ; 2 uses
  %i.eka = load i32, ptr %i.ejz, align 4, !tbaa !58
  %i.ekb = tail call i32 @llvm.smax.i32(i32 %i.eka, i32 %i.ejy)
  store i32 %i.ekb, ptr %i.ejz, align 4, !tbaa !58
  %i.ekc = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 4 ; 2 uses
  %i.ekd = load i32, ptr %i.ekc, align 4, !tbaa !58
  %i.eke = tail call i32 @llvm.smin.i32(i32 %i.ekd, i32 %i.eiv)
  store i32 %i.eke, ptr %i.ekc, align 4, !tbaa !58
  %i.ekf = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 12 ; 2 uses
  %i.ekg = load i32, ptr %i.ekf, align 4, !tbaa !58
  %i.ekh = tail call i32 @llvm.smax.i32(i32 %i.ekg, i32 %i.eiv)
  store i32 %i.ekh, ptr %i.ekf, align 4, !tbaa !58
  %i.eki = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 16 ; 2 uses
  %i.ekj = load i32, ptr %i.eki, align 4, !tbaa !58
  %i.ekk = add nsw i32 %i.ekj, 1
  store i32 %i.ekk, ptr %i.eki, align 4, !tbaa !58
  %i.ekl = load ptr, ptr %i.ehy, align 8, !tbaa !49 ; 2 uses
  %i.ekm = getelementptr inbounds nuw [16 x i8], ptr %i.ekl, i64 %i.ejv ; 3 uses
  %i.ekn = load i64, ptr %i.ekm, align 8, !tbaa !116
  %i.eko = add i64 %i.ekn, %indvars.iv3706
  store i64 %i.eko, ptr %i.ekm, align 8, !tbaa !116
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  store i16 0, ptr %i.ejk, align 2, !tbaa !53
  %i.ekp = load ptr, ptr %i.ehw, align 8, !tbaa !54 ; 7 uses
  %i.ekq = load i32, ptr %i.ekp, align 4, !tbaa !58
  %i.ekr = trunc nuw nsw i64 %indvars.iv3706 to i32 ; 2 uses
  %..i3176 = tail call i32 @llvm.smin.i32(i32 %i.ekq, i32 %i.ekr)
  store i32 %..i3176, ptr %i.ekp, align 4, !tbaa !58
  %i.eks = getelementptr inbounds nuw i8, ptr %i.ekp, i64 8 ; 2 uses
  %i.ekt = load i32, ptr %i.eks, align 4, !tbaa !58
  %i.eku = tail call i32 @llvm.smax.i32(i32 %i.ekt, i32 %i.ekr)
  store i32 %i.eku, ptr %i.eks, align 4, !tbaa !58
  %i.ekv = getelementptr inbounds nuw i8, ptr %i.ekp, i64 4 ; 2 uses
  %i.ekw = load i32, ptr %i.ekv, align 4, !tbaa !58
  %i.ekx = tail call i32 @llvm.smin.i32(i32 %i.ekw, i32 %i.eiw)
  store i32 %i.ekx, ptr %i.ekv, align 4, !tbaa !58
  %i.eky = getelementptr inbounds nuw i8, ptr %i.ekp, i64 12 ; 2 uses
  %i.ekz = load i32, ptr %i.eky, align 4, !tbaa !58
  %i.ela = tail call i32 @llvm.smax.i32(i32 %i.ekz, i32 %i.eiw)
  store i32 %i.ela, ptr %i.eky, align 4, !tbaa !58
  %i.elb = getelementptr inbounds nuw i8, ptr %i.ekp, i64 16 ; 2 uses
  %i.elc = load i32, ptr %i.elb, align 4, !tbaa !58
  %i.eld = add nsw i32 %i.elc, 1
  store i32 %i.eld, ptr %i.elb, align 4, !tbaa !58
  %i.ele = load ptr, ptr %i.ehy, align 8, !tbaa !49 ; 4 uses
  %i.elf = load i64, ptr %i.ele, align 8, !tbaa !116
  %i.elg = add i64 %i.elf, %indvars.iv3706
  store i64 %i.elg, ptr %i.ele, align 8, !tbaa !116
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.sink4181 = phi ptr [ %i.ele, %bb.tb ], [ %i.ekm, %bb.ta ]
  %i.elh = phi ptr [ %i.ele, %bb.tb ], [ %i.ekl, %bb.ta ] ; 11 uses
  %i.eli = phi ptr [ %i.ekp, %bb.tb ], [ %i.ejt, %bb.ta ] ; 21 uses
  %i.elj = getelementptr inbounds nuw i8, ptr %.sink4181, i64 8 ; 2 uses
  %i.elk = load i64, ptr %i.elj, align 8, !tbaa !117
  %i.ell = add i64 %i.elk, %indvars.iv3709
  store i64 %i.ell, ptr %i.elj, align 8, !tbaa !117
  %i.elm = getelementptr inbounds nuw i8, ptr %i.eio, i64 %indvars.iv3706
  %i.eln = load i8, ptr %i.elm, align 1, !tbaa !32
  %.not1866 = icmp eq i8 %i.eln, 0
  %i.elo = getelementptr inbounds nuw [2 x i8], ptr %i.eis, i64 %indvars.iv3706 ; 2 uses
  br i1 %.not1866, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  store i16 %i.ejo, ptr %i.elo, align 2, !tbaa !53
  %i.elp = load i32, ptr %i.ehv, align 4, !tbaa !96
  %i.elq = icmp slt i32 %i.elp, 2
  %i.elr = load i64, ptr %i.ehx, align 8
  %i.els = zext i16 %i.ejo to i64                 ; 2 uses
  %i.elt = mul i64 %i.elr, %i.els
end_hunk_0
begin_hunk_1_@_ZN2cv19connectedcomponents13LabelingGranaIthNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.ewl = load i32, ptr %i.ewk, align 4, !tbaa !58
  %i.ewm = tail call i32 @llvm.smax.i32(i32 %i.ewl, i32 %i.ewj)
  store i32 %i.ewm, ptr %i.ewk, align 4, !tbaa !58
  %i.ewn = getelementptr inbounds nuw i8, ptr %i.eve, i64 4 ; 2 uses
  %i.ewo = load i32, ptr %i.ewn, align 4, !tbaa !58
  %i.ewp = tail call i32 @llvm.smin.i32(i32 %i.ewo, i32 %i.esu)
  store i32 %i.ewp, ptr %i.ewn, align 4, !tbaa !58
  %i.ewq = getelementptr inbounds nuw i8, ptr %i.eve, i64 12 ; 2 uses
  %i.ewr = load i32, ptr %i.ewq, align 4, !tbaa !58
  %i.ews = tail call i32 @llvm.smax.i32(i32 %i.ewr, i32 %i.esu)
  store i32 %i.ews, ptr %i.ewq, align 4, !tbaa !58
  %i.ewt = getelementptr inbounds nuw i8, ptr %i.eve, i64 16 ; 2 uses
  %i.ewu = load i32, ptr %i.ewt, align 4, !tbaa !58
  %i.ewv = add nsw i32 %i.ewu, 1
  store i32 %i.ewv, ptr %i.ewt, align 4, !tbaa !58
  %i.eww = load i64, ptr %i.evd, align 8, !tbaa !116
  %i.ewx = add i64 %i.eww, %i.evi
  store i64 %i.ewx, ptr %i.evd, align 8, !tbaa !116
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.tv
  %.sink4193 = phi ptr [ %i.evd, %bb.tw ], [ %i.ewf, %bb.tv ]
  %i.ewy = getelementptr inbounds nuw i8, ptr %.sink4193, i64 8 ; 2 uses
  %i.ewz = load i64, ptr %i.ewy, align 8, !tbaa !117
  %i.exa = add i64 %i.ewz, %indvars.iv3715
  store i64 %i.exa, ptr %i.ewy, align 8, !tbaa !117
  %i.exb = getelementptr inbounds nuw i8, ptr %i.esk, i64 %indvars.iv3712
  %i.exc = load i8, ptr %i.exb, align 1, !tbaa !32
  %.not1862 = icmp eq i8 %i.exc, 0
  %i.exd = getelementptr inbounds nuw [2 x i8], ptr %i.eso, i64 %indvars.iv3712 ; 2 uses
  br i1 %.not1862, label %bb.tz, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  store i16 %i.etk, ptr %i.exd, align 2, !tbaa !53
  %i.exe = load i32, ptr %i.eif, align 4, !tbaa !96
  %i.exf = icmp slt i32 %i.exe, 2
  %i.exg = load i64, ptr %i.eih, align 8
  %i.exh = zext i16 %i.etk to i64                 ; 2 uses
  %i.exi = mul i64 %i.exg, %i.exh
  %.sink.idx.i.i3219 = select i1 %i.exf, i64 0, i64 %i.exi
  %.sink.i.i3220 = getelementptr inbounds nuw i8, ptr %i.eve, i64 %.sink.idx.i.i3219 ; 6 uses
  %i.exj = load i32, ptr %.sink.i.i3220, align 4, !tbaa !58
  %i.exk = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3221 = tail call i32 @llvm.smin.i32(i32 %i.exj, i32 %i.exk)
  store i32 %..i3221, ptr %.sink.i.i3220, align 4, !tbaa !58
  %i.exl = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 8 ; 2 uses
  %i.exm = load i32, ptr %i.exl, align 4, !tbaa !58
  %i.exn = tail call i32 @llvm.smax.i32(i32 %i.exm, i32 %i.exk)
  store i32 %i.exn, ptr %i.exl, align 4, !tbaa !58
  %i.exo = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 4 ; 2 uses
  %i.exp = load i32, ptr %i.exo, align 4, !tbaa !58
  %i.exq = tail call i32 @llvm.smin.i32(i32 %i.exp, i32 %i.esv)
  store i32 %i.exq, ptr %i.exo, align 4, !tbaa !58
  %i.exr = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 12 ; 2 uses
  %i.exs = load i32, ptr %i.exr, align 4, !tbaa !58
  %i.ext = tail call i32 @llvm.smax.i32(i32 %i.exs, i32 %i.esv)
  store i32 %i.ext, ptr %i.exr, align 4, !tbaa !58
  %i.exu = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 16 ; 2 uses
  %i.exv = load i32, ptr %i.exu, align 4, !tbaa !58
  %i.exw = add nsw i32 %i.exv, 1
  store i32 %i.exw, ptr %i.exu, align 4, !tbaa !58
  %i.exx = getelementptr inbounds nuw [16 x i8], ptr %i.evd, i64 %i.exh ; 3 uses
  %i.exy = load i64, ptr %i.exx, align 8, !tbaa !116
  %i.exz = add i64 %i.exy, %indvars.iv3712
  store i64 %i.exz, ptr %i.exx, align 8, !tbaa !116
  br label %bb.ua

bb.tz:                                            ; preds = %bb.tx
  store i16 0, ptr %i.exd, align 2, !tbaa !53
  %i.eya = load i32, ptr %i.eve, align 4, !tbaa !58
  %i.eyb = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 2 uses
  %..i3224 = tail call i32 @llvm.smin.i32(i32 %i.eya, i32 %i.eyb)
  store i32 %..i3224, ptr %i.eve, align 4, !tbaa !58
  %i.eyc = getelementptr inbounds nuw i8, ptr %i.eve, i64 8 ; 2 uses
  %i.eyd = load i32, ptr %i.eyc, align 4, !tbaa !58
  %i.eye = tail call i32 @llvm.smax.i32(i32 %i.eyd, i32 %i.eyb)
  store i32 %i.eye, ptr %i.eyc, align 4, !tbaa !58
  %i.eyf = getelementptr inbounds nuw i8, ptr %i.eve, i64 4 ; 2 uses
  %i.eyg = load i32, ptr %i.eyf, align 4, !tbaa !58
  %i.eyh = tail call i32 @llvm.smin.i32(i32 %i.eyg, i32 %i.esw)
  store i32 %i.eyh, ptr %i.eyf, align 4, !tbaa !58
  %i.eyi = getelementptr inbounds nuw i8, ptr %i.eve, i64 12 ; 2 uses
  %i.eyj = load i32, ptr %i.eyi, align 4, !tbaa !58
  %i.eyk = tail call i32 @llvm.smax.i32(i32 %i.eyj, i32 %i.esw)
  store i32 %i.eyk, ptr %i.eyi, align 4, !tbaa !58
  %i.eyl = getelementptr inbounds nuw i8, ptr %i.eve, i64 16 ; 2 uses
  %i.eym = load i32, ptr %i.eyl, align 4, !tbaa !58
  %i.eyn = add nsw i32 %i.eym, 1
  store i32 %i.eyn, ptr %i.eyl, align 4, !tbaa !58
  %i.eyo = load i64, ptr %i.evd, align 8, !tbaa !116
  %i.eyp = add i64 %i.eyo, %indvars.iv3712
  store i64 %i.eyp, ptr %i.evd, align 8, !tbaa !116
  br label %bb.ua

bb.ua:                                            ; preds = %bb.tz, %bb.ty
  %.sink4196 = phi ptr [ %i.evd, %bb.tz ], [ %i.exx, %bb.ty ]
  %i.eyq = getelementptr inbounds nuw i8, ptr %.sink4196, i64 8 ; 2 uses
  %i.eyr = load i64, ptr %i.eyq, align 8, !tbaa !117
  %i.eys = add i64 %i.eyr, %i.esq
  store i64 %i.eys, ptr %i.eyq, align 8, !tbaa !117
  %i.eyt = getelementptr inbounds nuw i8, ptr %i.esk, i64 %i.evi
  %i.eyu = load i8, ptr %i.eyt, align 1, !tbaa !32
  %.not1863 = icmp eq i8 %i.eyu, 0
  %i.eyv = getelementptr inbounds nuw [2 x i8], ptr %i.eso, i64 %i.evi ; 2 uses
  br i1 %.not1863, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  store i16 %i.etk, ptr %i.eyv, align 2, !tbaa !53
  %i.eyw = load i32, ptr %i.eif, align 4, !tbaa !96
  %i.eyx = icmp slt i32 %i.eyw, 2
  %i.eyy = load i64, ptr %i.eih, align 8
  %i.eyz = zext i16 %i.etk to i64                 ; 2 uses
  %i.eza = mul i64 %i.eyy, %i.eyz
  %.sink.idx.i.i3225 = select i1 %i.eyx, i64 0, i64 %i.eza
  %.sink.i.i3226 = getelementptr inbounds nuw i8, ptr %i.eve, i64 %.sink.idx.i.i3225 ; 6 uses
  %i.ezb = load i32, ptr %.sink.i.i3226, align 4, !tbaa !58
  %i.ezc = trunc nuw nsw i64 %i.evi to i32        ; 2 uses
  %..i3227 = tail call i32 @llvm.smin.i32(i32 %i.ezb, i32 %i.ezc)
  store i32 %..i3227, ptr %.sink.i.i3226, align 4, !tbaa !58
  %i.ezd = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 8 ; 2 uses
  %i.eze = load i32, ptr %i.ezd, align 4, !tbaa !58
  %i.ezf = tail call i32 @llvm.smax.i32(i32 %i.eze, i32 %i.ezc)
  store i32 %i.ezf, ptr %i.ezd, align 4, !tbaa !58
  %i.ezg = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 4 ; 2 uses
  %i.ezh = load i32, ptr %i.ezg, align 4, !tbaa !58
  %i.ezi = tail call i32 @llvm.smin.i32(i32 %i.ezh, i32 %i.esx)
  store i32 %i.ezi, ptr %i.ezg, align 4, !tbaa !58
  %i.ezj = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 12 ; 2 uses
  %i.ezk = load i32, ptr %i.ezj, align 4, !tbaa !58
  %i.ezl = tail call i32 @llvm.smax.i32(i32 %i.ezk, i32 %i.esx)
  store i32 %i.ezl, ptr %i.ezj, align 4, !tbaa !58
  %i.ezm = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 16 ; 2 uses
  %i.ezn = load i32, ptr %i.ezm, align 4, !tbaa !58
  %i.ezo = add nsw i32 %i.ezn, 1
  store i32 %i.ezo, ptr %i.ezm, align 4, !tbaa !58
  %i.ezp = getelementptr inbounds nuw [16 x i8], ptr %i.evd, i64 %i.eyz ; 2 uses
  %i.ezq = load <2 x i64>, ptr %i.ezp, align 8, !tbaa !39
  %i.ezr = insertelement <2 x i64> %i.etb, i64 %i.evi, i64 0
  %i.ezs = add <2 x i64> %i.ezq, %i.ezr
  store <2 x i64> %i.ezs, ptr %i.ezp, align 8, !tbaa !39
  br label %bb.ue

bb.uc:                                            ; preds = %bb.ua
  store i16 0, ptr %i.eyv, align 2, !tbaa !53
  %i.ezt = load i32, ptr %i.eve, align 4, !tbaa !58
  %i.ezu = trunc nuw nsw i64 %i.evi to i32        ; 2 uses
  %..i3230 = tail call i32 @llvm.smin.i32(i32 %i.ezt, i32 %i.ezu)
  store i32 %..i3230, ptr %i.eve, align 4, !tbaa !58
  %i.ezv = getelementptr inbounds nuw i8, ptr %i.eve, i64 8 ; 2 uses
  %i.ezw = load i32, ptr %i.ezv, align 4, !tbaa !58
  %i.ezx = tail call i32 @llvm.smax.i32(i32 %i.ezw, i32 %i.ezu)
  store i32 %i.ezx, ptr %i.ezv, align 4, !tbaa !58
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.eve, i64 4 ; 2 uses
  %i.ezz = load i32, ptr %i.ezy, align 4, !tbaa !58
  %i.faa = tail call i32 @llvm.smin.i32(i32 %i.ezz, i32 %i.esy)
  store i32 %i.faa, ptr %i.ezy, align 4, !tbaa !58
  %i.fab = getelementptr inbounds nuw i8, ptr %i.eve, i64 12 ; 2 uses
  %i.fac = load i32, ptr %i.fab, align 4, !tbaa !58
  %i.fad = tail call i32 @llvm.smax.i32(i32 %i.fac, i32 %i.esy)
  store i32 %i.fad, ptr %i.fab, align 4, !tbaa !58
  %i.fae = getelementptr inbounds nuw i8, ptr %i.eve, i64 16 ; 2 uses
  %i.faf = load i32, ptr %i.fae, align 4, !tbaa !58
  %i.fag = add nsw i32 %i.faf, 1
  store i32 %i.fag, ptr %i.fae, align 4, !tbaa !58
  %i.fah = load <2 x i64>, ptr %i.evd, align 8, !tbaa !39
  %i.fai = insertelement <2 x i64> %i.etb, i64 %i.evi, i64 0
  %i.faj = add <2 x i64> %i.fah, %i.fai
  store <2 x i64> %i.faj, ptr %i.evd, align 8, !tbaa !39
  br label %bb.ue

bb.ud:                                            ; preds = %bb.tq
  %i.fak = or disjoint i64 %indvars.iv3712, 1     ; 5 uses
  %i.fal = getelementptr inbounds nuw [2 x i8], ptr %i.esn, i64 %i.fak
  store i16 0, ptr %i.fal, align 2, !tbaa !53
  %i.fam = getelementptr inbounds nuw [2 x i8], ptr %i.eso, i64 %indvars.iv3712
  store i16 0, ptr %i.fam, align 2, !tbaa !53
  %i.fan = getelementptr inbounds nuw [2 x i8], ptr %i.eso, i64 %i.fak
  store i16 0, ptr %i.fan, align 2, !tbaa !53
  %i.fao = load ptr, ptr %i.eig, align 8, !tbaa !54 ; 6 uses
  %i.fap = load i32, ptr %i.fao, align 4, !tbaa !58
  %i.faq = trunc nuw nsw i64 %indvars.iv3712 to i32 ; 4 uses
  %..i3233 = tail call i32 @llvm.smin.i32(i32 %i.fap, i32 %i.faq)
  %i.far = getelementptr inbounds nuw i8, ptr %i.fao, i64 8 ; 2 uses
  %i.fas = load i32, ptr %i.far, align 4, !tbaa !58
  %i.fat = tail call i32 @llvm.smax.i32(i32 %i.fas, i32 %i.faq)
  %i.fau = getelementptr inbounds nuw i8, ptr %i.fao, i64 4 ; 2 uses
  %i.fav = load i32, ptr %i.fau, align 4, !tbaa !58
  %i.faw = tail call i32 @llvm.smin.i32(i32 %i.fav, i32 %i.esz)
  %i.fax = getelementptr inbounds nuw i8, ptr %i.fao, i64 12 ; 2 uses
  %i.fay = load i32, ptr %i.fax, align 4, !tbaa !58
  %i.faz = tail call i32 @llvm.smax.i32(i32 %i.fay, i32 %i.esz)
  %i.fba = getelementptr inbounds nuw i8, ptr %i.fao, i64 16 ; 2 uses
  %i.fbb = load i32, ptr %i.fba, align 4, !tbaa !58
  %i.fbc = load ptr, ptr %i.eii, align 8, !tbaa !49 ; 3 uses
  %i.fbd = load i64, ptr %i.fbc, align 8, !tbaa !116
  %i.fbe = add i64 %i.fbd, %indvars.iv3712
  %i.fbf = getelementptr inbounds nuw i8, ptr %i.fbc, i64 8 ; 2 uses
  %i.fbg = load i64, ptr %i.fbf, align 8, !tbaa !117
  %i.fbh = trunc nuw nsw i64 %i.fak to i32        ; 4 uses
  %..i3236 = tail call i32 @llvm.smin.i32(i32 %..i3233, i32 %i.fbh)
  %i.fbi = tail call i32 @llvm.smax.i32(i32 %i.fat, i32 %i.fbh)
  %i.fbj = add i64 %i.fbe, %i.fak
  %..i3239 = tail call i32 @llvm.smin.i32(i32 %..i3236, i32 %i.faq)
  %i.fbk = tail call i32 @llvm.umax.i32(i32 %i.fbi, i32 %i.faq)
  %i.fbl = tail call i32 @llvm.smin.i32(i32 %i.faw, i32 %i.eta)
  %i.fbm = tail call i32 @llvm.smax.i32(i32 %i.faz, i32 %i.eta)
  %i.fbn = add i64 %i.fbj, %indvars.iv3712
  %..i3242 = tail call i32 @llvm.smin.i32(i32 %..i3239, i32 %i.fbh)
  store i32 %..i3242, ptr %i.fao, align 4, !tbaa !58
  %i.fbo = tail call i32 @llvm.smax.i32(i32 %i.fbk, i32 %i.fbh)
  store i32 %i.fbo, ptr %i.far, align 4, !tbaa !58
  store i32 %i.fbl, ptr %i.fau, align 4, !tbaa !58
  store i32 %i.fbm, ptr %i.fax, align 4, !tbaa !58
  %i.fbp = add nsw i32 %i.fbb, 4
  store i32 %i.fbp, ptr %i.fba, align 4, !tbaa !58
  %i.fbq = add i64 %i.fbn, %i.fak
  store i64 %i.fbq, ptr %i.fbc, align 8, !tbaa !116
  %.reass4160 = add i64 %i.fbg, %invariant.op4159
  store i64 %.reass4160, ptr %i.fbf, align 8, !tbaa !117
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.uc, %bb.ub
  %indvars.iv.next3713 = add nuw nsw i64 %indvars.iv3712, 2 ; 2 uses
  %i.fbr = load i32, ptr %i.o, align 4, !tbaa !51 ; 2 uses
  %i.fbs = sext i32 %i.fbr to i64
  %i.fbt = icmp slt i64 %indvars.iv.next3713, %i.fbs
  br i1 %i.fbt, label %bb.tq, label %._crit_edge3543.loopexit, !llvm.loop !326

.loopexit:                                        ; preds = %._crit_edge3523, %._crit_edge3530, %._crit_edge3536, %._crit_edge3543, %.preheader3282, %.preheader3280, %.preheader3278, %.preheader
  %i.fbu = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fbv = load i32, ptr %i.fbu, align 8, !tbaa !95
  %i.fbw = icmp sgt i32 %i.fbv, 0
  br i1 %i.fbw, label %.lr.ph.i3243, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i3243:                                     ; preds = %.loopexit
  %i.fbx = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fby = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fbz = load ptr, ptr %i.fby, align 8, !tbaa !54
  %i.fca = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fcb = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.fcc = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fcd = load ptr, ptr %i.fcc, align 8, !tbaa !54
  %i.fce = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.fcf = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.fcg = load ptr, ptr %i.fcf, align 8
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ui, %.lr.ph.i3243
  %indvars.iv.i3244 = phi i64 [ 0, %.lr.ph.i3243 ], [ %indvars.iv.next.i3248, %bb.ui ] ; 4 uses
  %i.fch = load i32, ptr %i.fbx, align 4, !tbaa !96
  %i.fci = icmp slt i32 %i.fch, 2
  %i.fcj = load i64, ptr %i.fca, align 8
  %i.fck = mul i64 %i.fcj, %indvars.iv.i3244
  %.sink.idx.i.i3245 = select i1 %i.fci, i64 0, i64 %i.fck
  %.sink.i.i3246 = getelementptr inbounds nuw i8, ptr %i.fbz, i64 %.sink.idx.i.i3245 ; 6 uses
  %i.fcl = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 16
  %i.fcm = load i32, ptr %i.fcl, align 4, !tbaa !58 ; 2 uses
  %i.fcn = load i32, ptr %i.fcb, align 4, !tbaa !96
  %i.fco = icmp slt i32 %i.fcn, 2
  %i.fcp = load i64, ptr %i.fce, align 8
  %i.fcq = mul i64 %i.fcp, %indvars.iv.i3244
  %.sink.idx.i25.i = select i1 %i.fco, i64 0, i64 %i.fcq
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.fcd, i64 %.sink.idx.i25.i
  %.not.i3247 = icmp eq i32 %i.fcm, 0
  br i1 %.not.i3247, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.fcr = uitofp i32 %i.fcm to double
  %i.fcs = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8 ; 2 uses
  %i.fct = load <2 x i32>, ptr %i.fcs, align 4, !tbaa !58
  %i.fcu = load <2 x i32>, ptr %.sink.i.i3246, align 4, !tbaa !58
  %i.fcv = add <2 x i32> %i.fct, splat (i32 1)
  %i.fcw = sub <2 x i32> %i.fcv, %i.fcu
  store <2 x i32> %i.fcw, ptr %i.fcs, align 4, !tbaa !58
  %i.fcx = getelementptr inbounds nuw [16 x i8], ptr %i.fcg, i64 %indvars.iv.i3244
  %i.fcy = load <2 x i64>, ptr %i.fcx, align 8, !tbaa !39
  %i.fcz = uitofp <2 x i64> %i.fcy to <2 x double>
  %i.fda = insertelement <2 x double> poison, double %i.fcr, i64 0
  %i.fdb = shufflevector <2 x double> %i.fda, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fdc = fdiv <2 x double> %i.fcz, %i.fdb
  br label %bb.ui

bb.uh:                                            ; preds = %bb.uf
  %i.fdd = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8
  store i32 0, ptr %i.fdd, align 4, !tbaa !58
  %i.fde = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 12
  store i32 0, ptr %i.fde, align 4, !tbaa !58
  store i32 -1, ptr %.sink.i.i3246, align 4, !tbaa !58
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  %i.fdf = phi <2 x double> [ splat (double +qnan), %bb.uh ], [ %i.fdc, %bb.ug ]
  store <2 x double> %i.fdf, ptr %.sink.i26.i, align 8, !tbaa !98
  %indvars.iv.next.i3248 = add nuw nsw i64 %indvars.iv.i3244, 1 ; 2 uses
  %i.fdg = load i32, ptr %i.fbu, align 8, !tbaa !95
  %i.fdh = sext i32 %i.fdg to i64
  %i.fdi = icmp slt i64 %indvars.iv.next.i3248, %i.fdh
  br i1 %i.fdi, label %bb.uf, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !7

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.ui, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.uj

bb.uj:                                            ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %i.fdj = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fdk = sub i64 %.sroa.10.0, %i.fdj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fdk) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, %bb.uj
  ret i16 %.015.lcssa.i

bb.uk:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLItEET_PS2_S2_.exit
  %i.fdl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i3249 = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i3249, label %_ZNSt6vectorItSaItEED2Ev.exit3250, label %bb.ul

bb.ul:                                            ; preds = %.thread3993, %bb.uk
  %.pn20453996 = phi { ptr, i32 } [ %i.fd, %.thread3993 ], [ %i.fdl, %bb.uk ]
  %i.fdm = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fdn = sub i64 %.sroa.10.0, %i.fdm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fdn) #17
  br label %_ZNSt6vectorItSaItEED2Ev.exit3250

_ZNSt6vectorItSaItEED2Ev.exit3250:                ; preds = %bb.uk, %bb.ul, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2045.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn1856, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079 ], [ %.pn1854, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076 ], [ %.pn20453996, %bb.ul ], [ %i.fdl, %bb.uk ]
  resume { ptr, i32 } %.pn2045.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(460) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4309) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.k = load i64, ptr %i.i, align 8, !tbaa !32
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.g, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3250

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !51   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 10 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !51
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4310) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076

end_hunk_1
begin_hunk_2_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.ecx = load i32, ptr %i.ecw, align 4, !tbaa !58
  %i.ecy = tail call i32 @llvm.smin.i32(i32 %i.ecx, i32 %i.dze)
  store i32 %i.ecy, ptr %i.ecw, align 4, !tbaa !58
  %i.ecz = getelementptr inbounds nuw i8, ptr %i.ebn, i64 12 ; 2 uses
  %i.eda = load i32, ptr %i.ecz, align 4, !tbaa !58
  %i.edb = tail call i32 @llvm.smax.i32(i32 %i.eda, i32 %i.dze)
  store i32 %i.edb, ptr %i.ecz, align 4, !tbaa !58
  %i.edc = getelementptr inbounds nuw i8, ptr %i.ebn, i64 16 ; 2 uses
  %i.edd = load i32, ptr %i.edc, align 4, !tbaa !58
  %i.ede = add nsw i32 %i.edd, 1
  store i32 %i.ede, ptr %i.edc, align 4, !tbaa !58
  %i.edf = load i64, ptr %i.ebm, align 8, !tbaa !116
  %i.edg = add i64 %i.edf, %i.ebr
  store i64 %i.edg, ptr %i.ebm, align 8, !tbaa !116
  br label %bb.sm

bb.sm:                                            ; preds = %bb.sl, %bb.sk
  %.sink4177 = phi ptr [ %i.ebm, %bb.sl ], [ %i.eco, %bb.sk ]
  %i.edh = getelementptr inbounds nuw i8, ptr %.sink4177, i64 8 ; 2 uses
  %i.edi = load i64, ptr %i.edh, align 8, !tbaa !117
  %i.edj = add i64 %i.edi, %indvars.iv3705
  store i64 %i.edj, ptr %i.edh, align 8, !tbaa !117
  %i.edk = load i32, ptr %i.c, align 8, !tbaa !38
  %i.edl = sext i32 %i.edk to i64
  %i.edm = icmp slt i64 %i.dyy, %i.edl
  br i1 %i.edm, label %bb.sn, label %bb.sv

bb.sn:                                            ; preds = %bb.sm
  %i.edn = getelementptr inbounds nuw i8, ptr %i.dys, i64 %indvars.iv3702
  %i.edo = load i8, ptr %i.edn, align 1, !tbaa !32
  %.not1874 = icmp eq i8 %i.edo, 0
  %i.edp = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %indvars.iv3702 ; 2 uses
  br i1 %.not1874, label %bb.sp, label %bb.so

bb.so:                                            ; preds = %bb.sn
  store i32 %i.dzt, ptr %i.edp, align 4, !tbaa !58
  %i.edq = load i32, ptr %i.dlh, align 4, !tbaa !96
  %i.edr = icmp slt i32 %i.edq, 2
  %i.eds = load i64, ptr %i.dli, align 8
  %i.edt = sext i32 %i.dzt to i64                 ; 2 uses
  %i.edu = mul i64 %i.eds, %i.edt
  %.sink.idx.i.i3147 = select i1 %i.edr, i64 0, i64 %i.edu
  %.sink.i.i3148 = getelementptr inbounds nuw i8, ptr %i.ebn, i64 %.sink.idx.i.i3147 ; 6 uses
  %i.edv = load i32, ptr %.sink.i.i3148, align 4, !tbaa !58
  %i.edw = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 2 uses
  %..i3149 = tail call i32 @llvm.smin.i32(i32 %i.edv, i32 %i.edw)
  store i32 %..i3149, ptr %.sink.i.i3148, align 4, !tbaa !58
  %i.edx = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 8 ; 2 uses
  %i.edy = load i32, ptr %i.edx, align 4, !tbaa !58
  %i.edz = tail call i32 @llvm.smax.i32(i32 %i.edy, i32 %i.edw)
  store i32 %i.edz, ptr %i.edx, align 4, !tbaa !58
  %i.eea = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 4 ; 2 uses
  %i.eeb = load i32, ptr %i.eea, align 4, !tbaa !58
  %i.eec = tail call i32 @llvm.smin.i32(i32 %i.eeb, i32 %i.dzf)
  store i32 %i.eec, ptr %i.eea, align 4, !tbaa !58
  %i.eed = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 12 ; 2 uses
  %i.eee = load i32, ptr %i.eed, align 4, !tbaa !58
  %i.eef = tail call i32 @llvm.smax.i32(i32 %i.eee, i32 %i.dzf)
  store i32 %i.eef, ptr %i.eed, align 4, !tbaa !58
  %i.eeg = getelementptr inbounds nuw i8, ptr %.sink.i.i3148, i64 16 ; 2 uses
  %i.eeh = load i32, ptr %i.eeg, align 4, !tbaa !58
  %i.eei = add nsw i32 %i.eeh, 1
  store i32 %i.eei, ptr %i.eeg, align 4, !tbaa !58
  %i.eej = getelementptr inbounds nuw [16 x i8], ptr %i.ebm, i64 %i.edt ; 3 uses
  %i.eek = load i64, ptr %i.eej, align 8, !tbaa !116
  %i.eel = add i64 %i.eek, %indvars.iv3702
  store i64 %i.eel, ptr %i.eej, align 8, !tbaa !116
  br label %bb.sq

bb.sp:                                            ; preds = %bb.sn
  store i32 0, ptr %i.edp, align 4, !tbaa !58
  %i.eem = load i32, ptr %i.ebn, align 4, !tbaa !58
  %i.een = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 2 uses
  %..i3152 = tail call i32 @llvm.smin.i32(i32 %i.eem, i32 %i.een)
  store i32 %..i3152, ptr %i.ebn, align 4, !tbaa !58
  %i.eeo = getelementptr inbounds nuw i8, ptr %i.ebn, i64 8 ; 2 uses
  %i.eep = load i32, ptr %i.eeo, align 4, !tbaa !58
  %i.eeq = tail call i32 @llvm.smax.i32(i32 %i.eep, i32 %i.een)
  store i32 %i.eeq, ptr %i.eeo, align 4, !tbaa !58
  %i.eer = getelementptr inbounds nuw i8, ptr %i.ebn, i64 4 ; 2 uses
  %i.ees = load i32, ptr %i.eer, align 4, !tbaa !58
  %i.eet = tail call i32 @llvm.smin.i32(i32 %i.ees, i32 %i.dzg)
  store i32 %i.eet, ptr %i.eer, align 4, !tbaa !58
  %i.eeu = getelementptr inbounds nuw i8, ptr %i.ebn, i64 12 ; 2 uses
  %i.eev = load i32, ptr %i.eeu, align 4, !tbaa !58
  %i.eew = tail call i32 @llvm.smax.i32(i32 %i.eev, i32 %i.dzg)
  store i32 %i.eew, ptr %i.eeu, align 4, !tbaa !58
  %i.eex = getelementptr inbounds nuw i8, ptr %i.ebn, i64 16 ; 2 uses
  %i.eey = load i32, ptr %i.eex, align 4, !tbaa !58
  %i.eez = add nsw i32 %i.eey, 1
  store i32 %i.eez, ptr %i.eex, align 4, !tbaa !58
  %i.efa = load i64, ptr %i.ebm, align 8, !tbaa !116
  %i.efb = add i64 %i.efa, %indvars.iv3702
  store i64 %i.efb, ptr %i.ebm, align 8, !tbaa !116
  br label %bb.sq

bb.sq:                                            ; preds = %bb.sp, %bb.so
  %.sink4180 = phi ptr [ %i.ebm, %bb.sp ], [ %i.eej, %bb.so ]
  %i.efc = getelementptr inbounds nuw i8, ptr %.sink4180, i64 8 ; 2 uses
  %i.efd = load i64, ptr %i.efc, align 8, !tbaa !117
  %i.efe = add i64 %i.efd, %i.dyy
  store i64 %i.efe, ptr %i.efc, align 8, !tbaa !117
  %i.eff = getelementptr inbounds nuw i8, ptr %i.dys, i64 %i.ebr
  %i.efg = load i8, ptr %i.eff, align 1, !tbaa !32
  %.not1875 = icmp eq i8 %i.efg, 0
  %i.efh = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %i.ebr ; 2 uses
  br i1 %.not1875, label %bb.ss, label %bb.sr

bb.sr:                                            ; preds = %bb.sq
  store i32 %i.dzt, ptr %i.efh, align 4, !tbaa !58
  %i.efi = load i32, ptr %i.dlh, align 4, !tbaa !96
  %i.efj = icmp slt i32 %i.efi, 2
  %i.efk = load i64, ptr %i.dli, align 8
  %i.efl = sext i32 %i.dzt to i64                 ; 2 uses
  %i.efm = mul i64 %i.efk, %i.efl
  %.sink.idx.i.i3153 = select i1 %i.efj, i64 0, i64 %i.efm
  %.sink.i.i3154 = getelementptr inbounds nuw i8, ptr %i.ebn, i64 %.sink.idx.i.i3153 ; 6 uses
  %i.efn = load i32, ptr %.sink.i.i3154, align 4, !tbaa !58
  %i.efo = trunc nuw nsw i64 %i.ebr to i32        ; 2 uses
  %..i3155 = tail call i32 @llvm.smin.i32(i32 %i.efn, i32 %i.efo)
  store i32 %..i3155, ptr %.sink.i.i3154, align 4, !tbaa !58
  %i.efp = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 8 ; 2 uses
  %i.efq = load i32, ptr %i.efp, align 4, !tbaa !58
  %i.efr = tail call i32 @llvm.smax.i32(i32 %i.efq, i32 %i.efo)
  store i32 %i.efr, ptr %i.efp, align 4, !tbaa !58
  %i.efs = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 4 ; 2 uses
  %i.eft = load i32, ptr %i.efs, align 4, !tbaa !58
  %i.efu = tail call i32 @llvm.smin.i32(i32 %i.eft, i32 %i.dzh)
  store i32 %i.efu, ptr %i.efs, align 4, !tbaa !58
  %i.efv = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 12 ; 2 uses
  %i.efw = load i32, ptr %i.efv, align 4, !tbaa !58
  %i.efx = tail call i32 @llvm.smax.i32(i32 %i.efw, i32 %i.dzh)
  store i32 %i.efx, ptr %i.efv, align 4, !tbaa !58
  %i.efy = getelementptr inbounds nuw i8, ptr %.sink.i.i3154, i64 16 ; 2 uses
  %i.efz = load i32, ptr %i.efy, align 4, !tbaa !58
  %i.ega = add nsw i32 %i.efz, 1
  store i32 %i.ega, ptr %i.efy, align 4, !tbaa !58
  %i.egb = getelementptr inbounds nuw [16 x i8], ptr %i.ebm, i64 %i.efl ; 2 uses
  %i.egc = load <2 x i64>, ptr %i.egb, align 8, !tbaa !39
  %i.egd = insertelement <2 x i64> %i.dzj, i64 %i.ebr, i64 0
  %i.ege = add <2 x i64> %i.egc, %i.egd
  store <2 x i64> %i.ege, ptr %i.egb, align 8, !tbaa !39
  br label %bb.sv

bb.ss:                                            ; preds = %bb.sq
  store i32 0, ptr %i.efh, align 4, !tbaa !58
  %i.egf = load i32, ptr %i.ebn, align 4, !tbaa !58
  %i.egg = trunc nuw nsw i64 %i.ebr to i32        ; 2 uses
  %..i3158 = tail call i32 @llvm.smin.i32(i32 %i.egf, i32 %i.egg)
  store i32 %..i3158, ptr %i.ebn, align 4, !tbaa !58
  %i.egh = getelementptr inbounds nuw i8, ptr %i.ebn, i64 8 ; 2 uses
  %i.egi = load i32, ptr %i.egh, align 4, !tbaa !58
  %i.egj = tail call i32 @llvm.smax.i32(i32 %i.egi, i32 %i.egg)
  store i32 %i.egj, ptr %i.egh, align 4, !tbaa !58
  %i.egk = getelementptr inbounds nuw i8, ptr %i.ebn, i64 4 ; 2 uses
  %i.egl = load i32, ptr %i.egk, align 4, !tbaa !58
  %i.egm = tail call i32 @llvm.smin.i32(i32 %i.egl, i32 %i.dzi)
  store i32 %i.egm, ptr %i.egk, align 4, !tbaa !58
  %i.egn = getelementptr inbounds nuw i8, ptr %i.ebn, i64 12 ; 2 uses
  %i.ego = load i32, ptr %i.egn, align 4, !tbaa !58
  %i.egp = tail call i32 @llvm.smax.i32(i32 %i.ego, i32 %i.dzi)
  store i32 %i.egp, ptr %i.egn, align 4, !tbaa !58
  %i.egq = getelementptr inbounds nuw i8, ptr %i.ebn, i64 16 ; 2 uses
  %i.egr = load i32, ptr %i.egq, align 4, !tbaa !58
  %i.egs = add nsw i32 %i.egr, 1
  store i32 %i.egs, ptr %i.egq, align 4, !tbaa !58
  %i.egt = load <2 x i64>, ptr %i.ebm, align 8, !tbaa !39
  %i.egu = insertelement <2 x i64> %i.dzj, i64 %i.ebr, i64 0
  %i.egv = add <2 x i64> %i.egt, %i.egu
  store <2 x i64> %i.egv, ptr %i.ebm, align 8, !tbaa !39
  br label %bb.sv

bb.st:                                            ; preds = %bb.sf
  store i32 0, ptr %i.dzo, align 4, !tbaa !58
  %i.egw = or disjoint i64 %indvars.iv3702, 1     ; 5 uses
  %i.egx = getelementptr inbounds nuw [4 x i8], ptr %i.dyv, i64 %i.egw
  store i32 0, ptr %i.egx, align 4, !tbaa !58
  %i.egy = load ptr, ptr %i.dlf, align 8, !tbaa !54 ; 8 uses
  %i.egz = load i32, ptr %i.egy, align 4, !tbaa !58
  %i.eha = trunc nuw nsw i64 %indvars.iv3702 to i32 ; 4 uses
  %..i3161 = tail call i32 @llvm.smin.i32(i32 %i.egz, i32 %i.eha)
  %i.ehb = getelementptr inbounds nuw i8, ptr %i.egy, i64 8 ; 4 uses
  %i.ehc = load i32, ptr %i.ehb, align 4, !tbaa !58
  %i.ehd = tail call i32 @llvm.smax.i32(i32 %i.ehc, i32 %i.eha)
  %i.ehe = getelementptr inbounds nuw i8, ptr %i.egy, i64 4 ; 4 uses
  %i.ehf = load i32, ptr %i.ehe, align 4, !tbaa !58
  %i.ehg = tail call i32 @llvm.smin.i32(i32 %i.ehf, i32 %i.dyz)
  %i.ehh = getelementptr inbounds nuw i8, ptr %i.egy, i64 12 ; 4 uses
  %i.ehi = load i32, ptr %i.ehh, align 4, !tbaa !58
  %i.ehj = tail call i32 @llvm.smax.i32(i32 %i.ehi, i32 %i.dyz)
  %i.ehk = getelementptr inbounds nuw i8, ptr %i.egy, i64 16 ; 4 uses
  %i.ehl = load i32, ptr %i.ehk, align 4, !tbaa !58
  %i.ehm = load ptr, ptr %i.dlg, align 8, !tbaa !49 ; 4 uses
  %i.ehn = load i64, ptr %i.ehm, align 8, !tbaa !116
  %i.eho = add i64 %i.ehn, %indvars.iv3702
  %i.ehp = getelementptr inbounds nuw i8, ptr %i.ehm, i64 8 ; 3 uses
  %i.ehq = load i64, ptr %i.ehp, align 8, !tbaa !117
  %i.ehr = trunc nuw nsw i64 %i.egw to i32        ; 4 uses
  %..i3164 = tail call i32 @llvm.smin.i32(i32 %..i3161, i32 %i.ehr)
  store i32 %..i3164, ptr %i.egy, align 4, !tbaa !58
  %i.ehs = tail call i32 @llvm.smax.i32(i32 %i.ehd, i32 %i.ehr)
  store i32 %i.ehs, ptr %i.ehb, align 4, !tbaa !58
  store i32 %i.ehg, ptr %i.ehe, align 4, !tbaa !58
  store i32 %i.ehj, ptr %i.ehh, align 4, !tbaa !58
  %i.eht = add nsw i32 %i.ehl, 2
  store i32 %i.eht, ptr %i.ehk, align 4, !tbaa !58
  %i.ehu = add i64 %i.eho, %i.egw                 ; 2 uses
  store i64 %i.ehu, ptr %i.ehm, align 8, !tbaa !116
  %.reass4150 = add i64 %i.ehq, %invariant.op4149 ; 2 uses
  store i64 %.reass4150, ptr %i.ehp, align 8, !tbaa !117
  %i.ehv = load i32, ptr %i.c, align 8, !tbaa !38
  %i.ehw = sext i32 %i.ehv to i64
  %i.ehx = icmp slt i64 %i.dyy, %i.ehw
  br i1 %i.ehx, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.ehy = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %indvars.iv3702
  store i32 0, ptr %i.ehy, align 4, !tbaa !58
  %i.ehz = getelementptr inbounds nuw [4 x i8], ptr %i.dyw, i64 %i.egw
  store i32 0, ptr %i.ehz, align 4, !tbaa !58
  %i.eia = load i32, ptr %i.egy, align 4, !tbaa !58
  %..i3167 = tail call i32 @llvm.smin.i32(i32 %i.eia, i32 %i.eha)
  %i.eib = load i32, ptr %i.ehb, align 4, !tbaa !58
  %i.eic = tail call i32 @llvm.smax.i32(i32 %i.eib, i32 %i.eha)
  %i.eid = load i32, ptr %i.ehe, align 4, !tbaa !58
  %i.eie = tail call i32 @llvm.smin.i32(i32 %i.eid, i32 %i.dza)
  %i.eif = load i32, ptr %i.ehh, align 4, !tbaa !58
  %i.eig = tail call i32 @llvm.smax.i32(i32 %i.eif, i32 %i.dza)
  %i.eih = load i32, ptr %i.ehk, align 4, !tbaa !58
  %i.eii = add i64 %i.ehu, %indvars.iv3702
  %..i3170 = tail call i32 @llvm.smin.i32(i32 %..i3167, i32 %i.ehr)
  store i32 %..i3170, ptr %i.egy, align 4, !tbaa !58
  %i.eij = tail call i32 @llvm.smax.i32(i32 %i.eic, i32 %i.ehr)
  store i32 %i.eij, ptr %i.ehb, align 4, !tbaa !58
  store i32 %i.eie, ptr %i.ehe, align 4, !tbaa !58
  store i32 %i.eig, ptr %i.ehh, align 4, !tbaa !58
  %i.eik = add nsw i32 %i.eih, 2
  store i32 %i.eik, ptr %i.ehk, align 4, !tbaa !58
  %i.eil = add i64 %i.eii, %i.egw
  store i64 %i.eil, ptr %i.ehm, align 8, !tbaa !116
  %.reass4152 = add i64 %.reass4150, %invariant.op4151
  store i64 %.reass4152, ptr %i.ehp, align 8, !tbaa !117
  br label %bb.sv

bb.sv:                                            ; preds = %bb.su, %bb.ss, %bb.sr, %bb.st, %bb.sm
  %indvars.iv.next3703 = add nuw nsw i64 %indvars.iv3702, 2 ; 2 uses
  %i.eim = load i32, ptr %i.o, align 4, !tbaa !51 ; 2 uses
  %i.ein = sext i32 %i.eim to i64
  %i.eio = icmp slt i64 %indvars.iv.next3703, %i.ein
  br i1 %i.eio, label %bb.sf, label %._crit_edge3530.loopexit, !llvm.loop !332

bb.sw:                                            ; preds = %bb.rc
  br i1 %.not1862, label %.preheader, label %.preheader3278

.preheader3278:                                   ; preds = %bb.sw
  br i1 %i.dks, label %.lr.ph3538, label %.loopexit

.lr.ph3538:                                       ; preds = %.preheader3278
  %i.eip = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eiq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eir = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eis = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.eit = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.eiu = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.eiv = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.eiw = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  %.pre3725 = load ptr, ptr %i.eip, align 8, !tbaa !54
  %.pre3726 = load ptr, ptr %i.eir, align 8, !tbaa !54
  br label %bb.sx

.preheader:                                       ; preds = %bb.sw
  br i1 %i.dks, label %.lr.ph3545, label %.loopexit

.lr.ph3545:                                       ; preds = %.preheader
  %i.eix = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eiy = load ptr, ptr %i.eix, align 8, !tbaa !54
  %i.eiz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.eja = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ejb = load ptr, ptr %i.eja, align 8, !tbaa !54
  %i.ejc = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ejd = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.eje = getelementptr inbounds nuw i8, ptr %4, i64 432 ; 3 uses
  %i.ejf = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ejg = getelementptr inbounds nuw i8, ptr %4, i64 136 ; 4 uses
  br label %bb.tp

bb.sx:                                            ; preds = %.lr.ph3538, %._crit_edge3536
  %i.ejh = phi i32 [ %i.dko, %.lr.ph3538 ], [ %i.eke, %._crit_edge3536 ]
  %i.eji = phi i32 [ %i.dkq, %.lr.ph3538 ], [ %i.ekf, %._crit_edge3536 ] ; 2 uses
  %indvars.iv3711 = phi i64 [ 0, %.lr.ph3538 ], [ %indvars.iv.next3712, %._crit_edge3536 ] ; 13 uses
  %i.ejj = load i64, ptr %i.eiq, align 8, !tbaa !39 ; 2 uses
  %i.ejk = mul i64 %i.ejj, %indvars.iv3711
  %i.ejl = getelementptr inbounds nuw i8, ptr %.pre3725, i64 %i.ejk ; 3 uses
  %i.ejm = getelementptr inbounds nuw i8, ptr %i.ejl, i64 %i.ejj ; 2 uses
  %i.ejn = load i64, ptr %i.eis, align 8, !tbaa !39 ; 2 uses
  %i.ejo = mul i64 %i.ejn, %indvars.iv3711
  %i.ejp = getelementptr inbounds nuw i8, ptr %.pre3726, i64 %i.ejo ; 4 uses
  %i.ejq = getelementptr inbounds nuw i8, ptr %i.ejp, i64 %i.ejn ; 4 uses
  %i.ejr = icmp sgt i32 %i.eji, 0
  br i1 %i.ejr, label %.lr.ph3535, label %._crit_edge3536

.lr.ph3535:                                       ; preds = %bb.sx
  %i.ejs = or disjoint i64 %indvars.iv3711, 1     ; 9 uses
  %i.ejt = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 4 uses
  %i.eju = trunc nuw nsw i64 %i.ejs to i32        ; 4 uses
  %invariant.op4153 = add nuw i64 %indvars.iv3711, %i.ejs
  %invariant.op4155 = add nuw i64 %indvars.iv3711, %i.ejs
  %i.ejv = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.ejw = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.ejx = trunc nuw nsw i64 %i.ejs to i32        ; 2 uses
  %i.ejy = trunc nuw nsw i64 %i.ejs to i32        ; 2 uses
  %i.ejz = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.eka = trunc nuw nsw i64 %indvars.iv3711 to i32 ; 2 uses
  %i.ekb = trunc nuw nsw i64 %i.ejs to i32        ; 2 uses
  %i.ekc = trunc nuw nsw i64 %i.ejs to i32        ; 2 uses
  %i.ekd = insertelement <2 x i64> poison, i64 %i.ejs, i64 1 ; 2 uses
  br label %bb.sy

._crit_edge3536.loopexit:                         ; preds = %bb.to
  %.pre3727 = load i32, ptr %i.c, align 8, !tbaa !38
  br label %._crit_edge3536

._crit_edge3536:                                  ; preds = %._crit_edge3536.loopexit, %bb.sx
  %i.eke = phi i32 [ %.pre3727, %._crit_edge3536.loopexit ], [ %i.ejh, %bb.sx ] ; 2 uses
  %i.ekf = phi i32 [ %i.etg, %._crit_edge3536.loopexit ], [ %i.eji, %bb.sx ]
  %indvars.iv.next3712 = add nuw nsw i64 %indvars.iv3711, 2 ; 2 uses
  %i.ekg = sext i32 %i.eke to i64
  %i.ekh = icmp slt i64 %indvars.iv.next3712, %i.ekg
  br i1 %i.ekh, label %bb.sx, label %.loopexit, !llvm.loop !333

bb.sy:                                            ; preds = %.lr.ph3535, %bb.to
  %indvars.iv3708 = phi i64 [ 0, %.lr.ph3535 ], [ %indvars.iv.next3709, %bb.to ] ; 18 uses
  %i.eki = getelementptr inbounds nuw [4 x i8], ptr %i.ejp, i64 %indvars.iv3708 ; 4 uses
  %i.ekj = load i32, ptr %i.eki, align 4, !tbaa !58 ; 2 uses
  %i.ekk = icmp sgt i32 %i.ekj, 0
  br i1 %i.ekk, label %bb.sz, label %bb.tm

bb.sz:                                            ; preds = %bb.sy
  %i.ekl = zext nneg i32 %i.ekj to i64
  %i.ekm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.03251.0, i64 %i.ekl
  %i.ekn = load i32, ptr %i.ekm, align 4, !tbaa !58 ; 8 uses
  %i.eko = getelementptr inbounds nuw i8, ptr %i.ejl, i64 %indvars.iv3708
  %i.ekp = load i8, ptr %i.eko, align 1, !tbaa !32
  %.not1867 = icmp eq i8 %i.ekp, 0
  br i1 %.not1867, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz
  store i32 %i.ekn, ptr %i.eki, align 4, !tbaa !58
  %i.ekq = load i32, ptr %i.eiv, align 4, !tbaa !96
  %i.ekr = icmp slt i32 %i.ekq, 2
  %i.eks = load ptr, ptr %i.eit, align 8, !tbaa !54 ; 2 uses
  %i.ekt = load i64, ptr %i.eiw, align 8
  %i.eku = sext i32 %i.ekn to i64                 ; 2 uses
  %i.ekv = mul i64 %i.ekt, %i.eku
  %.sink.idx.i.i3171 = select i1 %i.ekr, i64 0, i64 %i.ekv
  %.sink.i.i3172 = getelementptr inbounds nuw i8, ptr %i.eks, i64 %.sink.idx.i.i3171 ; 6 uses
  %i.ekw = load i32, ptr %.sink.i.i3172, align 4, !tbaa !58
  %i.ekx = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3173 = tail call i32 @llvm.smin.i32(i32 %i.ekw, i32 %i.ekx)
  store i32 %..i3173, ptr %.sink.i.i3172, align 4, !tbaa !58
  %i.eky = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 8 ; 2 uses
  %i.ekz = load i32, ptr %i.eky, align 4, !tbaa !58
  %i.ela = tail call i32 @llvm.smax.i32(i32 %i.ekz, i32 %i.ekx)
  store i32 %i.ela, ptr %i.eky, align 4, !tbaa !58
  %i.elb = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 4 ; 2 uses
  %i.elc = load i32, ptr %i.elb, align 4, !tbaa !58
  %i.eld = tail call i32 @llvm.smin.i32(i32 %i.elc, i32 %i.ejv)
  store i32 %i.eld, ptr %i.elb, align 4, !tbaa !58
  %i.ele = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 12 ; 2 uses
  %i.elf = load i32, ptr %i.ele, align 4, !tbaa !58
  %i.elg = tail call i32 @llvm.smax.i32(i32 %i.elf, i32 %i.ejv)
  store i32 %i.elg, ptr %i.ele, align 4, !tbaa !58
  %i.elh = getelementptr inbounds nuw i8, ptr %.sink.i.i3172, i64 16 ; 2 uses
  %i.eli = load i32, ptr %i.elh, align 4, !tbaa !58
  %i.elj = add nsw i32 %i.eli, 1
  store i32 %i.elj, ptr %i.elh, align 4, !tbaa !58
  %i.elk = load ptr, ptr %i.eiu, align 8, !tbaa !49 ; 2 uses
  %i.ell = getelementptr inbounds nuw [16 x i8], ptr %i.elk, i64 %i.eku ; 3 uses
  %i.elm = load i64, ptr %i.ell, align 8, !tbaa !116
  %i.eln = add i64 %i.elm, %indvars.iv3708
  store i64 %i.eln, ptr %i.ell, align 8, !tbaa !116
  br label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  store i32 0, ptr %i.eki, align 4, !tbaa !58
  %i.elo = load ptr, ptr %i.eit, align 8, !tbaa !54 ; 7 uses
  %i.elp = load i32, ptr %i.elo, align 4, !tbaa !58
  %i.elq = trunc nuw nsw i64 %indvars.iv3708 to i32 ; 2 uses
  %..i3176 = tail call i32 @llvm.smin.i32(i32 %i.elp, i32 %i.elq)
  store i32 %..i3176, ptr %i.elo, align 4, !tbaa !58
  %i.elr = getelementptr inbounds nuw i8, ptr %i.elo, i64 8 ; 2 uses
  %i.els = load i32, ptr %i.elr, align 4, !tbaa !58
  %i.elt = tail call i32 @llvm.smax.i32(i32 %i.els, i32 %i.elq)
  store i32 %i.elt, ptr %i.elr, align 4, !tbaa !58
  %i.elu = getelementptr inbounds nuw i8, ptr %i.elo, i64 4 ; 2 uses
  %i.elv = load i32, ptr %i.elu, align 4, !tbaa !58
  %i.elw = tail call i32 @llvm.smin.i32(i32 %i.elv, i32 %i.ejw)
  store i32 %i.elw, ptr %i.elu, align 4, !tbaa !58
  %i.elx = getelementptr inbounds nuw i8, ptr %i.elo, i64 12 ; 2 uses
  %i.ely = load i32, ptr %i.elx, align 4, !tbaa !58
  %i.elz = tail call i32 @llvm.smax.i32(i32 %i.ely, i32 %i.ejw)
  store i32 %i.elz, ptr %i.elx, align 4, !tbaa !58
  %i.ema = getelementptr inbounds nuw i8, ptr %i.elo, i64 16 ; 2 uses
  %i.emb = load i32, ptr %i.ema, align 4, !tbaa !58
  %i.emc = add nsw i32 %i.emb, 1
  store i32 %i.emc, ptr %i.ema, align 4, !tbaa !58
  %i.emd = load ptr, ptr %i.eiu, align 8, !tbaa !49 ; 4 uses
  %i.eme = load i64, ptr %i.emd, align 8, !tbaa !116
  %i.emf = add i64 %i.eme, %indvars.iv3708
  store i64 %i.emf, ptr %i.emd, align 8, !tbaa !116
  br label %bb.tc

bb.tc:                                            ; preds = %bb.tb, %bb.ta
  %.sink4183 = phi ptr [ %i.emd, %bb.tb ], [ %i.ell, %bb.ta ]
  %i.emg = phi ptr [ %i.emd, %bb.tb ], [ %i.elk, %bb.ta ] ; 11 uses
  %i.emh = phi ptr [ %i.elo, %bb.tb ], [ %i.eks, %bb.ta ] ; 21 uses
  %i.emi = getelementptr inbounds nuw i8, ptr %.sink4183, i64 8 ; 2 uses
  %i.emj = load i64, ptr %i.emi, align 8, !tbaa !117
  %i.emk = add i64 %i.emj, %indvars.iv3711
  store i64 %i.emk, ptr %i.emi, align 8, !tbaa !117
  %i.eml = getelementptr inbounds nuw i8, ptr %i.ejm, i64 %indvars.iv3708
  %i.emm = load i8, ptr %i.eml, align 1, !tbaa !32
  %.not1868 = icmp eq i8 %i.emm, 0
  %i.emn = getelementptr inbounds nuw [4 x i8], ptr %i.ejq, i64 %indvars.iv3708 ; 2 uses
  br i1 %.not1868, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  store i32 %i.ekn, ptr %i.emn, align 4, !tbaa !58
  %i.emo = load i32, ptr %i.eiv, align 4, !tbaa !96
  %i.emp = icmp slt i32 %i.emo, 2
  %i.emq = load i64, ptr %i.eiw, align 8
  %i.emr = sext i32 %i.ekn to i64                 ; 2 uses
  %i.ems = mul i64 %i.emq, %i.emr
end_hunk_2
begin_hunk_3_@_ZN2cv19connectedcomponents13LabelingGranaIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_:bb.a
  %i.exr = tail call i32 @llvm.smax.i32(i32 %i.exq, i32 %i.exo)
  store i32 %i.exr, ptr %i.exp, align 4, !tbaa !58
  %i.exs = getelementptr inbounds nuw i8, ptr %i.ewj, i64 4 ; 2 uses
  %i.ext = load i32, ptr %i.exs, align 4, !tbaa !58
  %i.exu = tail call i32 @llvm.smin.i32(i32 %i.ext, i32 %i.eua)
  store i32 %i.exu, ptr %i.exs, align 4, !tbaa !58
  %i.exv = getelementptr inbounds nuw i8, ptr %i.ewj, i64 12 ; 2 uses
  %i.exw = load i32, ptr %i.exv, align 4, !tbaa !58
  %i.exx = tail call i32 @llvm.smax.i32(i32 %i.exw, i32 %i.eua)
  store i32 %i.exx, ptr %i.exv, align 4, !tbaa !58
  %i.exy = getelementptr inbounds nuw i8, ptr %i.ewj, i64 16 ; 2 uses
  %i.exz = load i32, ptr %i.exy, align 4, !tbaa !58
  %i.eya = add nsw i32 %i.exz, 1
  store i32 %i.eya, ptr %i.exy, align 4, !tbaa !58
  %i.eyb = load i64, ptr %i.ewi, align 8, !tbaa !116
  %i.eyc = add i64 %i.eyb, %i.ewn
  store i64 %i.eyc, ptr %i.ewi, align 8, !tbaa !116
  br label %bb.tx

bb.tx:                                            ; preds = %bb.tw, %bb.tv
  %.sink4195 = phi ptr [ %i.ewi, %bb.tw ], [ %i.exk, %bb.tv ]
  %i.eyd = getelementptr inbounds nuw i8, ptr %.sink4195, i64 8 ; 2 uses
  %i.eye = load i64, ptr %i.eyd, align 8, !tbaa !117
  %i.eyf = add i64 %i.eye, %indvars.iv3717
  store i64 %i.eyf, ptr %i.eyd, align 8, !tbaa !117
  %i.eyg = getelementptr inbounds nuw i8, ptr %i.eto, i64 %indvars.iv3714
  %i.eyh = load i8, ptr %i.eyg, align 1, !tbaa !32
  %.not1865 = icmp eq i8 %i.eyh, 0
  %i.eyi = getelementptr inbounds nuw [4 x i8], ptr %i.ets, i64 %indvars.iv3714 ; 2 uses
  br i1 %.not1865, label %bb.tz, label %bb.ty

bb.ty:                                            ; preds = %bb.tx
  store i32 %i.eup, ptr %i.eyi, align 4, !tbaa !58
  %i.eyj = load i32, ptr %i.ejf, align 4, !tbaa !96
  %i.eyk = icmp slt i32 %i.eyj, 2
  %i.eyl = load i64, ptr %i.ejg, align 8
  %i.eym = sext i32 %i.eup to i64                 ; 2 uses
  %i.eyn = mul i64 %i.eyl, %i.eym
  %.sink.idx.i.i3219 = select i1 %i.eyk, i64 0, i64 %i.eyn
  %.sink.i.i3220 = getelementptr inbounds nuw i8, ptr %i.ewj, i64 %.sink.idx.i.i3219 ; 6 uses
  %i.eyo = load i32, ptr %.sink.i.i3220, align 4, !tbaa !58
  %i.eyp = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3221 = tail call i32 @llvm.smin.i32(i32 %i.eyo, i32 %i.eyp)
  store i32 %..i3221, ptr %.sink.i.i3220, align 4, !tbaa !58
  %i.eyq = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 8 ; 2 uses
  %i.eyr = load i32, ptr %i.eyq, align 4, !tbaa !58
  %i.eys = tail call i32 @llvm.smax.i32(i32 %i.eyr, i32 %i.eyp)
  store i32 %i.eys, ptr %i.eyq, align 4, !tbaa !58
  %i.eyt = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 4 ; 2 uses
  %i.eyu = load i32, ptr %i.eyt, align 4, !tbaa !58
  %i.eyv = tail call i32 @llvm.smin.i32(i32 %i.eyu, i32 %i.eub)
  store i32 %i.eyv, ptr %i.eyt, align 4, !tbaa !58
  %i.eyw = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 12 ; 2 uses
  %i.eyx = load i32, ptr %i.eyw, align 4, !tbaa !58
  %i.eyy = tail call i32 @llvm.smax.i32(i32 %i.eyx, i32 %i.eub)
  store i32 %i.eyy, ptr %i.eyw, align 4, !tbaa !58
  %i.eyz = getelementptr inbounds nuw i8, ptr %.sink.i.i3220, i64 16 ; 2 uses
  %i.eza = load i32, ptr %i.eyz, align 4, !tbaa !58
  %i.ezb = add nsw i32 %i.eza, 1
  store i32 %i.ezb, ptr %i.eyz, align 4, !tbaa !58
  %i.ezc = getelementptr inbounds nuw [16 x i8], ptr %i.ewi, i64 %i.eym ; 3 uses
  %i.ezd = load i64, ptr %i.ezc, align 8, !tbaa !116
  %i.eze = add i64 %i.ezd, %indvars.iv3714
  store i64 %i.eze, ptr %i.ezc, align 8, !tbaa !116
  br label %bb.ua

bb.tz:                                            ; preds = %bb.tx
  store i32 0, ptr %i.eyi, align 4, !tbaa !58
  %i.ezf = load i32, ptr %i.ewj, align 4, !tbaa !58
  %i.ezg = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 2 uses
  %..i3224 = tail call i32 @llvm.smin.i32(i32 %i.ezf, i32 %i.ezg)
  store i32 %..i3224, ptr %i.ewj, align 4, !tbaa !58
  %i.ezh = getelementptr inbounds nuw i8, ptr %i.ewj, i64 8 ; 2 uses
  %i.ezi = load i32, ptr %i.ezh, align 4, !tbaa !58
  %i.ezj = tail call i32 @llvm.smax.i32(i32 %i.ezi, i32 %i.ezg)
  store i32 %i.ezj, ptr %i.ezh, align 4, !tbaa !58
  %i.ezk = getelementptr inbounds nuw i8, ptr %i.ewj, i64 4 ; 2 uses
  %i.ezl = load i32, ptr %i.ezk, align 4, !tbaa !58
  %i.ezm = tail call i32 @llvm.smin.i32(i32 %i.ezl, i32 %i.euc)
  store i32 %i.ezm, ptr %i.ezk, align 4, !tbaa !58
  %i.ezn = getelementptr inbounds nuw i8, ptr %i.ewj, i64 12 ; 2 uses
  %i.ezo = load i32, ptr %i.ezn, align 4, !tbaa !58
  %i.ezp = tail call i32 @llvm.smax.i32(i32 %i.ezo, i32 %i.euc)
  store i32 %i.ezp, ptr %i.ezn, align 4, !tbaa !58
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.ewj, i64 16 ; 2 uses
  %i.ezr = load i32, ptr %i.ezq, align 4, !tbaa !58
  %i.ezs = add nsw i32 %i.ezr, 1
  store i32 %i.ezs, ptr %i.ezq, align 4, !tbaa !58
  %i.ezt = load i64, ptr %i.ewi, align 8, !tbaa !116
  %i.ezu = add i64 %i.ezt, %indvars.iv3714
  store i64 %i.ezu, ptr %i.ewi, align 8, !tbaa !116
  br label %bb.ua

bb.ua:                                            ; preds = %bb.tz, %bb.ty
  %.sink4198 = phi ptr [ %i.ewi, %bb.tz ], [ %i.ezc, %bb.ty ]
  %i.ezv = getelementptr inbounds nuw i8, ptr %.sink4198, i64 8 ; 2 uses
  %i.ezw = load i64, ptr %i.ezv, align 8, !tbaa !117
  %i.ezx = add i64 %i.ezw, %i.etu
  store i64 %i.ezx, ptr %i.ezv, align 8, !tbaa !117
  %i.ezy = getelementptr inbounds nuw i8, ptr %i.eto, i64 %i.ewn
  %i.ezz = load i8, ptr %i.ezy, align 1, !tbaa !32
  %.not1866 = icmp eq i8 %i.ezz, 0
  %i.faa = getelementptr inbounds nuw [4 x i8], ptr %i.ets, i64 %i.ewn ; 2 uses
  br i1 %.not1866, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  store i32 %i.eup, ptr %i.faa, align 4, !tbaa !58
  %i.fab = load i32, ptr %i.ejf, align 4, !tbaa !96
  %i.fac = icmp slt i32 %i.fab, 2
  %i.fad = load i64, ptr %i.ejg, align 8
  %i.fae = sext i32 %i.eup to i64                 ; 2 uses
  %i.faf = mul i64 %i.fad, %i.fae
  %.sink.idx.i.i3225 = select i1 %i.fac, i64 0, i64 %i.faf
  %.sink.i.i3226 = getelementptr inbounds nuw i8, ptr %i.ewj, i64 %.sink.idx.i.i3225 ; 6 uses
  %i.fag = load i32, ptr %.sink.i.i3226, align 4, !tbaa !58
  %i.fah = trunc nuw nsw i64 %i.ewn to i32        ; 2 uses
  %..i3227 = tail call i32 @llvm.smin.i32(i32 %i.fag, i32 %i.fah)
  store i32 %..i3227, ptr %.sink.i.i3226, align 4, !tbaa !58
  %i.fai = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 8 ; 2 uses
  %i.faj = load i32, ptr %i.fai, align 4, !tbaa !58
  %i.fak = tail call i32 @llvm.smax.i32(i32 %i.faj, i32 %i.fah)
  store i32 %i.fak, ptr %i.fai, align 4, !tbaa !58
  %i.fal = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 4 ; 2 uses
  %i.fam = load i32, ptr %i.fal, align 4, !tbaa !58
  %i.fan = tail call i32 @llvm.smin.i32(i32 %i.fam, i32 %i.eud)
  store i32 %i.fan, ptr %i.fal, align 4, !tbaa !58
  %i.fao = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 12 ; 2 uses
  %i.fap = load i32, ptr %i.fao, align 4, !tbaa !58
  %i.faq = tail call i32 @llvm.smax.i32(i32 %i.fap, i32 %i.eud)
  store i32 %i.faq, ptr %i.fao, align 4, !tbaa !58
  %i.far = getelementptr inbounds nuw i8, ptr %.sink.i.i3226, i64 16 ; 2 uses
  %i.fas = load i32, ptr %i.far, align 4, !tbaa !58
  %i.fat = add nsw i32 %i.fas, 1
  store i32 %i.fat, ptr %i.far, align 4, !tbaa !58
  %i.fau = getelementptr inbounds nuw [16 x i8], ptr %i.ewi, i64 %i.fae ; 2 uses
  %i.fav = load <2 x i64>, ptr %i.fau, align 8, !tbaa !39
  %i.faw = insertelement <2 x i64> %i.euf, i64 %i.ewn, i64 0
  %i.fax = add <2 x i64> %i.fav, %i.faw
  store <2 x i64> %i.fax, ptr %i.fau, align 8, !tbaa !39
  br label %bb.ue

bb.uc:                                            ; preds = %bb.ua
  store i32 0, ptr %i.faa, align 4, !tbaa !58
  %i.fay = load i32, ptr %i.ewj, align 4, !tbaa !58
  %i.faz = trunc nuw nsw i64 %i.ewn to i32        ; 2 uses
  %..i3230 = tail call i32 @llvm.smin.i32(i32 %i.fay, i32 %i.faz)
  store i32 %..i3230, ptr %i.ewj, align 4, !tbaa !58
  %i.fba = getelementptr inbounds nuw i8, ptr %i.ewj, i64 8 ; 2 uses
  %i.fbb = load i32, ptr %i.fba, align 4, !tbaa !58
  %i.fbc = tail call i32 @llvm.smax.i32(i32 %i.fbb, i32 %i.faz)
  store i32 %i.fbc, ptr %i.fba, align 4, !tbaa !58
  %i.fbd = getelementptr inbounds nuw i8, ptr %i.ewj, i64 4 ; 2 uses
  %i.fbe = load i32, ptr %i.fbd, align 4, !tbaa !58
  %i.fbf = tail call i32 @llvm.smin.i32(i32 %i.fbe, i32 %i.eue)
  store i32 %i.fbf, ptr %i.fbd, align 4, !tbaa !58
  %i.fbg = getelementptr inbounds nuw i8, ptr %i.ewj, i64 12 ; 2 uses
  %i.fbh = load i32, ptr %i.fbg, align 4, !tbaa !58
  %i.fbi = tail call i32 @llvm.smax.i32(i32 %i.fbh, i32 %i.eue)
  store i32 %i.fbi, ptr %i.fbg, align 4, !tbaa !58
  %i.fbj = getelementptr inbounds nuw i8, ptr %i.ewj, i64 16 ; 2 uses
  %i.fbk = load i32, ptr %i.fbj, align 4, !tbaa !58
  %i.fbl = add nsw i32 %i.fbk, 1
  store i32 %i.fbl, ptr %i.fbj, align 4, !tbaa !58
  %i.fbm = load <2 x i64>, ptr %i.ewi, align 8, !tbaa !39
  %i.fbn = insertelement <2 x i64> %i.euf, i64 %i.ewn, i64 0
  %i.fbo = add <2 x i64> %i.fbm, %i.fbn
  store <2 x i64> %i.fbo, ptr %i.ewi, align 8, !tbaa !39
  br label %bb.ue

bb.ud:                                            ; preds = %bb.tq
  store i32 0, ptr %i.euk, align 4, !tbaa !58
  %i.fbp = or disjoint i64 %indvars.iv3714, 1     ; 5 uses
  %i.fbq = getelementptr inbounds nuw [4 x i8], ptr %i.etr, i64 %i.fbp
  store i32 0, ptr %i.fbq, align 4, !tbaa !58
  %i.fbr = getelementptr inbounds nuw [4 x i8], ptr %i.ets, i64 %indvars.iv3714
  store i32 0, ptr %i.fbr, align 4, !tbaa !58
  %i.fbs = getelementptr inbounds nuw [4 x i8], ptr %i.ets, i64 %i.fbp
  store i32 0, ptr %i.fbs, align 4, !tbaa !58
  %i.fbt = load ptr, ptr %i.ejd, align 8, !tbaa !54 ; 6 uses
  %i.fbu = load i32, ptr %i.fbt, align 4, !tbaa !58
  %i.fbv = trunc nuw nsw i64 %indvars.iv3714 to i32 ; 4 uses
  %..i3233 = tail call i32 @llvm.smin.i32(i32 %i.fbu, i32 %i.fbv)
  %i.fbw = getelementptr inbounds nuw i8, ptr %i.fbt, i64 8 ; 2 uses
  %i.fbx = load i32, ptr %i.fbw, align 4, !tbaa !58
  %i.fby = tail call i32 @llvm.smax.i32(i32 %i.fbx, i32 %i.fbv)
  %i.fbz = getelementptr inbounds nuw i8, ptr %i.fbt, i64 4 ; 2 uses
  %i.fca = load i32, ptr %i.fbz, align 4, !tbaa !58
  %i.fcb = tail call i32 @llvm.smin.i32(i32 %i.fca, i32 %i.etv)
  %i.fcc = getelementptr inbounds nuw i8, ptr %i.fbt, i64 12 ; 2 uses
  %i.fcd = load i32, ptr %i.fcc, align 4, !tbaa !58
  %i.fce = tail call i32 @llvm.smax.i32(i32 %i.fcd, i32 %i.etv)
  %i.fcf = getelementptr inbounds nuw i8, ptr %i.fbt, i64 16 ; 2 uses
  %i.fcg = load i32, ptr %i.fcf, align 4, !tbaa !58
  %i.fch = load ptr, ptr %i.eje, align 8, !tbaa !49 ; 3 uses
  %i.fci = load i64, ptr %i.fch, align 8, !tbaa !116
  %i.fcj = add i64 %i.fci, %indvars.iv3714
  %i.fck = getelementptr inbounds nuw i8, ptr %i.fch, i64 8 ; 2 uses
  %i.fcl = load i64, ptr %i.fck, align 8, !tbaa !117
  %i.fcm = trunc nuw nsw i64 %i.fbp to i32        ; 4 uses
  %..i3236 = tail call i32 @llvm.smin.i32(i32 %..i3233, i32 %i.fcm)
  %i.fcn = tail call i32 @llvm.smax.i32(i32 %i.fby, i32 %i.fcm)
  %i.fco = add i64 %i.fcj, %i.fbp
  %..i3239 = tail call i32 @llvm.smin.i32(i32 %..i3236, i32 %i.fbv)
  %i.fcp = tail call i32 @llvm.umax.i32(i32 %i.fcn, i32 %i.fbv)
  %i.fcq = tail call i32 @llvm.smin.i32(i32 %i.fcb, i32 %i.etw)
  %i.fcr = tail call i32 @llvm.smax.i32(i32 %i.fce, i32 %i.etw)
  %i.fcs = add i64 %i.fco, %indvars.iv3714
  %..i3242 = tail call i32 @llvm.smin.i32(i32 %..i3239, i32 %i.fcm)
  store i32 %..i3242, ptr %i.fbt, align 4, !tbaa !58
  %i.fct = tail call i32 @llvm.smax.i32(i32 %i.fcp, i32 %i.fcm)
  store i32 %i.fct, ptr %i.fbw, align 4, !tbaa !58
  store i32 %i.fcq, ptr %i.fbz, align 4, !tbaa !58
  store i32 %i.fcr, ptr %i.fcc, align 4, !tbaa !58
  %i.fcu = add nsw i32 %i.fcg, 4
  store i32 %i.fcu, ptr %i.fcf, align 4, !tbaa !58
  %i.fcv = add i64 %i.fcs, %i.fbp
  store i64 %i.fcv, ptr %i.fch, align 8, !tbaa !116
  %.reass4162 = add i64 %i.fcl, %invariant.op4161
  store i64 %.reass4162, ptr %i.fck, align 8, !tbaa !117
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.uc, %bb.ub
  %indvars.iv.next3715 = add nuw nsw i64 %indvars.iv3714, 2 ; 2 uses
  %i.fcw = load i32, ptr %i.o, align 4, !tbaa !51 ; 2 uses
  %i.fcx = sext i32 %i.fcw to i64
  %i.fcy = icmp slt i64 %indvars.iv.next3715, %i.fcx
  br i1 %i.fcy, label %bb.tq, label %._crit_edge3543.loopexit, !llvm.loop !336

.loopexit:                                        ; preds = %._crit_edge3523, %._crit_edge3530, %._crit_edge3536, %._crit_edge3543, %.preheader3282, %.preheader3280, %.preheader3278, %.preheader
  %i.fcz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fda = load i32, ptr %i.fcz, align 8, !tbaa !95
  %i.fdb = icmp sgt i32 %i.fda, 0
  br i1 %i.fdb, label %.lr.ph.i3243, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit

.lr.ph.i3243:                                     ; preds = %.loopexit
  %i.fdc = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.fdd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fde = load ptr, ptr %i.fdd, align 8, !tbaa !54
  %i.fdf = getelementptr inbounds nuw i8, ptr %4, i64 136
  %i.fdg = getelementptr inbounds nuw i8, ptr %4, i64 228
  %i.fdh = getelementptr inbounds nuw i8, ptr %4, i64 248
  %i.fdi = load ptr, ptr %i.fdh, align 8, !tbaa !54
  %i.fdj = getelementptr inbounds nuw i8, ptr %4, i64 352
  %i.fdk = getelementptr inbounds nuw i8, ptr %4, i64 432
  %i.fdl = load ptr, ptr %i.fdk, align 8
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ui, %.lr.ph.i3243
  %indvars.iv.i3244 = phi i64 [ 0, %.lr.ph.i3243 ], [ %indvars.iv.next.i3248, %bb.ui ] ; 4 uses
  %i.fdm = load i32, ptr %i.fdc, align 4, !tbaa !96
  %i.fdn = icmp slt i32 %i.fdm, 2
  %i.fdo = load i64, ptr %i.fdf, align 8
  %i.fdp = mul i64 %i.fdo, %indvars.iv.i3244
  %.sink.idx.i.i3245 = select i1 %i.fdn, i64 0, i64 %i.fdp
  %.sink.i.i3246 = getelementptr inbounds nuw i8, ptr %i.fde, i64 %.sink.idx.i.i3245 ; 6 uses
  %i.fdq = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 16
  %i.fdr = load i32, ptr %i.fdq, align 4, !tbaa !58 ; 2 uses
  %i.fds = load i32, ptr %i.fdg, align 4, !tbaa !96
  %i.fdt = icmp slt i32 %i.fds, 2
  %i.fdu = load i64, ptr %i.fdj, align 8
  %i.fdv = mul i64 %i.fdu, %indvars.iv.i3244
  %.sink.idx.i25.i = select i1 %i.fdt, i64 0, i64 %i.fdv
  %.sink.i26.i = getelementptr inbounds nuw i8, ptr %i.fdi, i64 %.sink.idx.i25.i
  %.not.i3247 = icmp eq i32 %i.fdr, 0
  br i1 %.not.i3247, label %bb.uh, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.fdw = uitofp i32 %i.fdr to double
  %i.fdx = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8 ; 2 uses
  %i.fdy = load <2 x i32>, ptr %i.fdx, align 4, !tbaa !58
  %i.fdz = load <2 x i32>, ptr %.sink.i.i3246, align 4, !tbaa !58
  %i.fea = add <2 x i32> %i.fdy, splat (i32 1)
  %i.feb = sub <2 x i32> %i.fea, %i.fdz
  store <2 x i32> %i.feb, ptr %i.fdx, align 4, !tbaa !58
  %i.fec = getelementptr inbounds nuw [16 x i8], ptr %i.fdl, i64 %indvars.iv.i3244
  %i.fed = load <2 x i64>, ptr %i.fec, align 8, !tbaa !39
  %i.fee = uitofp <2 x i64> %i.fed to <2 x double>
  %i.fef = insertelement <2 x double> poison, double %i.fdw, i64 0
  %i.feg = shufflevector <2 x double> %i.fef, <2 x double> poison, <2 x i32> zeroinitializer
  %i.feh = fdiv <2 x double> %i.fee, %i.feg
  br label %bb.ui

bb.uh:                                            ; preds = %bb.uf
  %i.fei = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 8
  store i32 0, ptr %i.fei, align 4, !tbaa !58
  %i.fej = getelementptr inbounds nuw i8, ptr %.sink.i.i3246, i64 12
  store i32 0, ptr %i.fej, align 4, !tbaa !58
  store i32 -1, ptr %.sink.i.i3246, align 4, !tbaa !58
  br label %bb.ui

bb.ui:                                            ; preds = %bb.uh, %bb.ug
  %i.fek = phi <2 x double> [ splat (double +qnan), %bb.uh ], [ %i.feh, %bb.ug ]
  store <2 x double> %i.fek, ptr %.sink.i26.i, align 8, !tbaa !98
  %indvars.iv.next.i3248 = add nuw nsw i64 %indvars.iv.i3244, 1 ; 2 uses
  %i.fel = load i32, ptr %i.fcz, align 8, !tbaa !95
  %i.fem = sext i32 %i.fel to i64
  %i.fen = icmp slt i64 %indvars.iv.next.i3248, %i.fem
  br i1 %i.fen, label %bb.uf, label %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, !llvm.loop !7

_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit: ; preds = %bb.ui, %.loopexit
  %.not.i.i.i = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.uj

bb.uj:                                            ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit
  %i.feo = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fep = sub i64 %.sroa.10.0, %i.feo
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fep) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN2cv19connectedcomponents9CCStatsOp6finishEv.exit, %bb.uj
  ret i32 %.015.lcssa.i

bb.uk:                                            ; preds = %_ZN2cv19connectedcomponentsL8flattenLIiEET_PS2_S2_.exit
  %i.feq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i3249 = icmp eq ptr %.sroa.03251.0, null
  br i1 %.not.i.i.i3249, label %_ZNSt6vectorIiSaIiEED2Ev.exit3250, label %bb.ul

bb.ul:                                            ; preds = %.thread3995, %bb.uk
  %.pn20453998 = phi { ptr, i32 } [ %i.fc, %.thread3995 ], [ %i.feq, %bb.uk ]
  %i.fer = ptrtoint ptr %.sroa.03251.0 to i64
  %i.fes = sub i64 %.sroa.10.0, %i.fer
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.03251.0, i64 noundef %i.fes) #17
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit3250

_ZNSt6vectorIiSaIiEED2Ev.exit3250:                ; preds = %bb.uk, %bb.ul, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn2045.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn1860, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2079 ], [ %.pn1858, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit2076 ], [ %.pn20453998, %bb.ul ], [ %i.feq, %bb.uk ]
  resume { ptr, i32 } %.pn2045.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEEclERKNS_3MatERS4_iRS2_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(208) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(460) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.cv::Range", align 4        ; 7 uses
  %12 = alloca %"class.cv::connectedcomponents::LabelingGranaParallel<int, unsigned char, cv::connectedcomponents::CCStatsOp>::FirstScan", align 8 ; 11 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %13 = alloca %"class.std::vector.34", align 8   ; 9 uses
  %14 = alloca %"class.cv::connectedcomponents::LabelingGranaParallel<int, unsigned char, cv::connectedcomponents::CCStatsOp>::SecondScan", align 8 ; 13 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !38
  %i.f = icmp eq i32 %i.c, %i.e
  br i1 %i.f, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4248) #16
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !31     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.l = load i64, ptr %i.j, align 8, !tbaa !32
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.h, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit93

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !51   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.19, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.1, i32 noundef 4249) #16
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  unreachable

end_hunk_3
begin_hunk_4_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !58
  %i.vp = add nsw i32 %i.vo, 1
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !58
  %i.vq = load ptr, ptr %i.db, align 8, !tbaa !49 ; 3 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !116
  %i.vs = add i64 %i.vr, %i.tz
  store i64 %i.vs, ptr %i.vq, align 8, !tbaa !116
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink1324 = phi ptr [ %i.vq, %bb.ak ], [ %i.uy, %bb.aj ]
  %i.vt = getelementptr inbounds nuw i8, ptr %.sink1324, i64 8 ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !117
  %i.vv = add i64 %i.vu, %indvars.iv1213
  store i64 %i.vv, ptr %i.vt, align 8, !tbaa !117
  %i.vw = load i32, ptr %i.dc, align 8, !tbaa !38
  %i.vx = icmp sgt i32 %i.vw, %i.rt
  br i1 %i.vx, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.vy = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv1210
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !32
  %.not797 = icmp eq i8 %i.vz, 0
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210 ; 2 uses
  br i1 %.not797, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %i.sd, ptr %i.wa, align 4, !tbaa !58
  %i.wb = load i32, ptr %i.de, align 4, !tbaa !96
  %i.wc = icmp slt i32 %i.wb, 2
  %i.wd = load ptr, ptr %i.df, align 8, !tbaa !54
  %i.we = load i64, ptr %i.dg, align 8
  %i.wf = sext i32 %i.sd to i64                   ; 2 uses
  %i.wg = mul i64 %i.we, %i.wf
  %.sink.idx.i.i859 = select i1 %i.wc, i64 0, i64 %i.wg
  %.sink.i.i860 = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.sink.idx.i.i859 ; 6 uses
  %i.wh = load i32, ptr %.sink.i.i860, align 4, !tbaa !58
  %i.wi = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i861 = tail call i32 @llvm.smin.i32(i32 %i.wh, i32 %i.wi)
  store i32 %..i861, ptr %.sink.i.i860, align 4, !tbaa !58
  %i.wj = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 8 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !58
  %i.wl = tail call i32 @llvm.smax.i32(i32 %i.wk, i32 %i.wi)
  store i32 %i.wl, ptr %i.wj, align 4, !tbaa !58
  %i.wm = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 4 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !58
  %i.wo = tail call i32 @llvm.smin.i32(i32 %i.wn, i32 %i.rt)
  store i32 %i.wo, ptr %i.wm, align 4, !tbaa !58
  %i.wp = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 12 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !58
  %i.wr = tail call i32 @llvm.smax.i32(i32 %i.wq, i32 %i.rt)
  store i32 %i.wr, ptr %i.wp, align 4, !tbaa !58
  %i.ws = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 16 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !58
  %i.wu = add nsw i32 %i.wt, 1
  store i32 %i.wu, ptr %i.ws, align 4, !tbaa !58
  %i.wv = load ptr, ptr %i.dh, align 8, !tbaa !49
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.wv, i64 %i.wf ; 3 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !116
  %i.wy = add i64 %i.wx, %indvars.iv1210
  store i64 %i.wy, ptr %i.ww, align 8, !tbaa !116
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i32 0, ptr %i.wa, align 4, !tbaa !58
  %i.wz = load ptr, ptr %i.dj, align 8, !tbaa !54 ; 6 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !58
  %i.xb = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i864 = tail call i32 @llvm.smin.i32(i32 %i.xa, i32 %i.xb)
  store i32 %..i864, ptr %i.wz, align 4, !tbaa !58
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !58
  %i.xe = tail call i32 @llvm.smax.i32(i32 %i.xd, i32 %i.xb)
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !58
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wz, i64 4 ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !58
  %i.xh = tail call i32 @llvm.smin.i32(i32 %i.xg, i32 %i.rt)
  store i32 %i.xh, ptr %i.xf, align 4, !tbaa !58
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wz, i64 12 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !58
  %i.xk = tail call i32 @llvm.smax.i32(i32 %i.xj, i32 %i.rt)
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !58
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !58
  %i.xn = add nsw i32 %i.xm, 1
  store i32 %i.xn, ptr %i.xl, align 4, !tbaa !58
  %i.xo = load ptr, ptr %i.dk, align 8, !tbaa !49 ; 3 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !116
  %i.xq = add i64 %i.xp, %indvars.iv1210
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !116
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink1327 = phi ptr [ %i.xo, %bb.ao ], [ %i.ww, %bb.an ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.sink1327, i64 8 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !117
  %i.xt = add i64 %i.xs, %i.rm
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !117
  %i.xu = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.tz
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !32
  %.not798 = icmp eq i8 %i.xv, 0
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.tz ; 2 uses
  br i1 %.not798, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.sd, ptr %i.xw, align 4, !tbaa !58
  %i.xx = load i32, ptr %i.dm, align 4, !tbaa !96
  %i.xy = icmp slt i32 %i.xx, 2
  %i.xz = load ptr, ptr %i.dn, align 8, !tbaa !54
  %i.ya = load i64, ptr %i.do, align 8
  %i.yb = sext i32 %i.sd to i64                   ; 2 uses
  %i.yc = mul i64 %i.ya, %i.yb
  %.sink.idx.i.i865 = select i1 %i.xy, i64 0, i64 %i.yc
  %.sink.i.i866 = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.sink.idx.i.i865 ; 6 uses
  %i.yd = load i32, ptr %.sink.i.i866, align 4, !tbaa !58
  %i.ye = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i867 = tail call i32 @llvm.smin.i32(i32 %i.yd, i32 %i.ye)
  store i32 %..i867, ptr %.sink.i.i866, align 4, !tbaa !58
  %i.yf = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 8 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !58
  %i.yh = tail call i32 @llvm.smax.i32(i32 %i.yg, i32 %i.ye)
  store i32 %i.yh, ptr %i.yf, align 4, !tbaa !58
  %i.yi = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 4 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !58
  %i.yk = tail call i32 @llvm.smin.i32(i32 %i.yj, i32 %i.rt)
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !58
  %i.yl = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 12 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !58
  %i.yn = tail call i32 @llvm.smax.i32(i32 %i.ym, i32 %i.rt)
  store i32 %i.yn, ptr %i.yl, align 4, !tbaa !58
  %i.yo = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 16 ; 2 uses
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !58
  %i.yq = add nsw i32 %i.yp, 1
  store i32 %i.yq, ptr %i.yo, align 4, !tbaa !58
  %i.yr = load ptr, ptr %i.dp, align 8, !tbaa !49
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %i.yb ; 2 uses
  %i.yt = load <2 x i64>, ptr %i.ys, align 8, !tbaa !39
  %i.yu = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.yv = add <2 x i64> %i.yt, %i.yu
  store <2 x i64> %i.yv, ptr %i.ys, align 8, !tbaa !39
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  store i32 0, ptr %i.xw, align 4, !tbaa !58
  %i.yw = load ptr, ptr %i.dq, align 8, !tbaa !54 ; 6 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !58
  %i.yy = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i870 = tail call i32 @llvm.smin.i32(i32 %i.yx, i32 %i.yy)
  store i32 %..i870, ptr %i.yw, align 4, !tbaa !58
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !58
  %i.zb = tail call i32 @llvm.smax.i32(i32 %i.za, i32 %i.yy)
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !58
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !58
  %i.ze = tail call i32 @llvm.smin.i32(i32 %i.zd, i32 %i.rt)
  store i32 %i.ze, ptr %i.zc, align 4, !tbaa !58
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yw, i64 12 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !58
  %i.zh = tail call i32 @llvm.smax.i32(i32 %i.zg, i32 %i.rt)
  store i32 %i.zh, ptr %i.zf, align 4, !tbaa !58
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yw, i64 16 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !58
  %i.zk = add nsw i32 %i.zj, 1
  store i32 %i.zk, ptr %i.zi, align 4, !tbaa !58
  %i.zl = load ptr, ptr %i.dr, align 8, !tbaa !49 ; 2 uses
  %i.zm = load <2 x i64>, ptr %i.zl, align 8, !tbaa !39
  %i.zn = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.zo = add <2 x i64> %i.zm, %i.zn
  store <2 x i64> %i.zo, ptr %i.zl, align 8, !tbaa !39
  br label %bb.au

bb.as:                                            ; preds = %bb.ae
  store i32 0, ptr %i.rx, align 4, !tbaa !58
  %i.zp = or disjoint i64 %indvars.iv1210, 1      ; 5 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.zp
  store i32 0, ptr %i.zq, align 4, !tbaa !58
  %i.zr = load ptr, ptr %i.cj, align 8, !tbaa !54 ; 8 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !58
  %i.zt = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 4 uses
  %..i873 = tail call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.zt)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 4 uses
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !58
  %i.zw = tail call i32 @llvm.smax.i32(i32 %i.zv, i32 %i.zt)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zr, i64 4 ; 4 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !58
  %i.zz = tail call i32 @llvm.smin.i32(i32 %i.zy, i32 %i.rn)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 12 ; 4 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !58
  %i.aac = tail call i32 @llvm.smax.i32(i32 %i.aab, i32 %i.rn)
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zr, i64 16 ; 4 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !58
  %i.aaf = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 4 uses
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !116
  %i.aah = add i64 %i.aag, %indvars.iv1210
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 3 uses
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !117
  %i.aak = trunc nuw nsw i64 %i.zp to i32         ; 4 uses
  %..i876 = tail call i32 @llvm.smin.i32(i32 %..i873, i32 %i.aak)
  store i32 %..i876, ptr %i.zr, align 4, !tbaa !58
  %i.aal = tail call i32 @llvm.smax.i32(i32 %i.zw, i32 %i.aak)
  store i32 %i.aal, ptr %i.zu, align 4, !tbaa !58
  store i32 %i.zz, ptr %i.zx, align 4, !tbaa !58
  store i32 %i.aac, ptr %i.aaa, align 4, !tbaa !58
  %i.aam = add nsw i32 %i.aae, 2
  store i32 %i.aam, ptr %i.aad, align 4, !tbaa !58
  %i.aan = add i64 %i.aah, %i.zp                  ; 2 uses
  store i64 %i.aan, ptr %i.aaf, align 8, !tbaa !116
  %.reass1297 = add i64 %i.aaj, %invariant.op1296 ; 2 uses
  store i64 %.reass1297, ptr %i.aai, align 8, !tbaa !117
  %i.aao = load i32, ptr %i.cl, align 8, !tbaa !38
  %i.aap = icmp sgt i32 %i.aao, %i.ro
  br i1 %i.aap, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210
  store i32 0, ptr %i.aaq, align 4, !tbaa !58
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.zp
  store i32 0, ptr %i.aar, align 4, !tbaa !58
  %i.aas = load i32, ptr %i.zr, align 4, !tbaa !58
  %..i879 = tail call i32 @llvm.smin.i32(i32 %i.aas, i32 %i.zt)
  %i.aat = load i32, ptr %i.zu, align 4, !tbaa !58
  %i.aau = tail call i32 @llvm.smax.i32(i32 %i.aat, i32 %i.zt)
  %i.aav = load i32, ptr %i.zx, align 4, !tbaa !58
  %i.aaw = tail call i32 @llvm.smin.i32(i32 %i.aav, i32 %i.ro)
  %i.aax = load i32, ptr %i.aaa, align 4, !tbaa !58
  %i.aay = tail call i32 @llvm.smax.i32(i32 %i.aax, i32 %i.ro)
  %i.aaz = load i32, ptr %i.aad, align 4, !tbaa !58
  %i.aba = add i64 %i.aan, %indvars.iv1210
  %..i882 = tail call i32 @llvm.smin.i32(i32 %..i879, i32 %i.aak)
  store i32 %..i882, ptr %i.zr, align 4, !tbaa !58
  %i.abb = tail call i32 @llvm.smax.i32(i32 %i.aau, i32 %i.aak)
  store i32 %i.abb, ptr %i.zu, align 4, !tbaa !58
  store i32 %i.aaw, ptr %i.zx, align 4, !tbaa !58
  store i32 %i.aay, ptr %i.aaa, align 4, !tbaa !58
  %i.abc = add nsw i32 %i.aaz, 2
  store i32 %i.abc, ptr %i.aad, align 4, !tbaa !58
  %i.abd = add i64 %i.aba, %i.zp
  store i64 %i.abd, ptr %i.aaf, align 8, !tbaa !116
  %.reass1299 = add i64 %.reass1297, %invariant.op1298
  store i64 %.reass1299, ptr %i.aai, align 8, !tbaa !117
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.al, %bb.ar, %bb.aq
  %indvars.iv.next1211 = add nuw nsw i64 %indvars.iv1210, 2 ; 2 uses
  %i.abe = load i32, ptr %i.z, align 4, !tbaa !51
  %i.abf = sext i32 %i.abe to i64
  %i.abg = icmp slt i64 %indvars.iv.next1211, %i.abf
  br i1 %i.abg, label %bb.ae, label %._crit_edge1158, !llvm.loop !403

bb.av:                                            ; preds = %bb.b
  br i1 %.not785, label %.preheader, label %.preheader1109

.preheader1109:                                   ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1166, label %.loopexit

.lr.ph1166:                                       ; preds = %.preheader1109
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre1238 = load ptr, ptr %i.f, align 8, !tbaa !416 ; 2 uses
  %.phi.trans.insert1239 = getelementptr inbounds nuw i8, ptr %.pre1238, i64 24
  %.pre1240 = load ptr, ptr %.phi.trans.insert1239, align 8, !tbaa !54
  %i.abi = getelementptr inbounds nuw i8, ptr %.pre1238, i64 128
  %i.abj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !54
  %i.abl = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.abm = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.abn = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 432
  %i.abq = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 136
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 432
  %i.abv = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 432
  %i.aby = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 12
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 136
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 432
  %i.acd = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 432
  %i.acg = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 12
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 32
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 136
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 432
  %i.acl = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 432
  %i.aco = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 12
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 136
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 432
  %i.act = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.acu = getelementptr inbounds nuw i8, ptr %i.s, i64 432
  br label %bb.aw

.preheader:                                       ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1173, label %.loopexit

.lr.ph1173:                                       ; preds = %.preheader
  %i.acv = load ptr, ptr %i.f, align 8, !tbaa !416, !nonnull !93, !align !94 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !54
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 128
  %i.acz = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !54
  %i.adb = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.add = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 4 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.s, i64 432 ; 3 uses
  %i.adh = icmp sgt i32 %i.aa, 0
  br i1 %i.adh, label %.lr.ph1173.split, label %.loopexit

bb.aw:                                            ; preds = %.lr.ph1166, %._crit_edge1164
  %indvars.iv1219 = phi i64 [ %i.m, %.lr.ph1166 ], [ %indvars.iv.next1220, %._crit_edge1164 ] ; 13 uses
  %i.adi = load i64, ptr %i.abi, align 8, !tbaa !39 ; 2 uses
  %i.adj = mul i64 %i.adi, %indvars.iv1219
  %i.adk = getelementptr inbounds nuw i8, ptr %.pre1240, i64 %i.adj ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adi ; 2 uses
  %i.adm = load i64, ptr %i.abl, align 8, !tbaa !39 ; 2 uses
  %i.adn = mul i64 %i.adm, %indvars.iv1219
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adn ; 4 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.adm ; 4 uses
  %i.adq = load i32, ptr %i.abm, align 4, !tbaa !51
  %i.adr = icmp sgt i32 %i.adq, 0
  br i1 %i.adr, label %.lr.ph1163, label %._crit_edge1164

.lr.ph1163:                                       ; preds = %bb.aw
  %i.ads = or disjoint i64 %indvars.iv1219, 1     ; 9 uses
  %i.adt = trunc nuw i64 %indvars.iv1219 to i32   ; 4 uses
  %i.adu = trunc nuw i64 %i.ads to i32            ; 4 uses
  %invariant.op1300 = add nuw i64 %indvars.iv1219, %i.ads
  %invariant.op1302 = add nuw i64 %indvars.iv1219, %i.ads
  %i.adv = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adw = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adx = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.ady = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.adz = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.aea = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.aeb = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.aec = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.aed = insertelement <2 x i64> poison, i64 %i.ads, i64 1 ; 2 uses
  br label %bb.ax

._crit_edge1164:                                  ; preds = %bb.bn, %bb.aw
  %indvars.iv.next1220 = add nuw nsw i64 %indvars.iv1219, 2 ; 2 uses
  %i.aee = trunc nuw i64 %indvars.iv.next1220 to i32
  %i.aef = icmp sgt i32 %.sroa.speculated, %i.aee
  br i1 %i.aef, label %bb.aw, label %.loopexit, !llvm.loop !404

bb.ax:                                            ; preds = %.lr.ph1163, %bb.bn
  %indvars.iv1216 = phi i64 [ 0, %.lr.ph1163 ], [ %indvars.iv.next1217, %bb.bn ] ; 18 uses
  %i.aeg = phi ptr [ %i.abm, %.lr.ph1163 ], [ %i.z, %bb.bn ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv1216 ; 4 uses
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !58 ; 2 uses
  %i.aej = icmp sgt i32 %i.aei, 0
  br i1 %i.aej, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.aek = load ptr, ptr %i.abh, align 8, !tbaa !122
  %i.ael = zext nneg i32 %i.aei to i64
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.ael
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !58 ; 8 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adk, i64 %indvars.iv1216
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !32
  %.not790 = icmp eq i8 %i.aep, 0
  br i1 %.not790, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.aen, ptr %i.aeh, align 4, !tbaa !58
  %i.aeq = load i32, ptr %i.abr, align 4, !tbaa !96
  %i.aer = icmp slt i32 %i.aeq, 2
  %i.aes = load ptr, ptr %i.abs, align 8, !tbaa !54
  %i.aet = load i64, ptr %i.abt, align 8
  %i.aeu = sext i32 %i.aen to i64                 ; 2 uses
  %i.aev = mul i64 %i.aet, %i.aeu
  %.sink.idx.i.i883 = select i1 %i.aer, i64 0, i64 %i.aev
  %.sink.i.i884 = getelementptr inbounds nuw i8, ptr %i.aes, i64 %.sink.idx.i.i883 ; 6 uses
  %i.aew = load i32, ptr %.sink.i.i884, align 4, !tbaa !58
  %i.aex = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i885 = tail call i32 @llvm.smin.i32(i32 %i.aew, i32 %i.aex)
  store i32 %..i885, ptr %.sink.i.i884, align 4, !tbaa !58
  %i.aey = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 8 ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !58
  %i.afa = tail call i32 @llvm.smax.i32(i32 %i.aez, i32 %i.aex)
  store i32 %i.afa, ptr %i.aey, align 4, !tbaa !58
  %i.afb = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 4 ; 2 uses
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !58
  %i.afd = tail call i32 @llvm.smin.i32(i32 %i.afc, i32 %i.adv)
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !58
  %i.afe = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 12 ; 2 uses
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !58
  %i.afg = tail call i32 @llvm.smax.i32(i32 %i.aff, i32 %i.adv)
  store i32 %i.afg, ptr %i.afe, align 4, !tbaa !58
  %i.afh = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 16 ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !58
  %i.afj = add nsw i32 %i.afi, 1
  store i32 %i.afj, ptr %i.afh, align 4, !tbaa !58
  %i.afk = load ptr, ptr %i.abu, align 8, !tbaa !49
  %i.afl = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %i.aeu ; 3 uses
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !116
  %i.afn = add i64 %i.afm, %indvars.iv1216
  store i64 %i.afn, ptr %i.afl, align 8, !tbaa !116
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  store i32 0, ptr %i.aeh, align 4, !tbaa !58
  %i.afo = load ptr, ptr %i.abw, align 8, !tbaa !54 ; 6 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !58
  %i.afq = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i888 = tail call i32 @llvm.smin.i32(i32 %i.afp, i32 %i.afq)
  store i32 %..i888, ptr %i.afo, align 4, !tbaa !58
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 8 ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !58
  %i.aft = tail call i32 @llvm.smax.i32(i32 %i.afs, i32 %i.afq)
  store i32 %i.aft, ptr %i.afr, align 4, !tbaa !58
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afo, i64 4 ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !58
  %i.afw = tail call i32 @llvm.smin.i32(i32 %i.afv, i32 %i.adw)
  store i32 %i.afw, ptr %i.afu, align 4, !tbaa !58
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afo, i64 12 ; 2 uses
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !58
  %i.afz = tail call i32 @llvm.smax.i32(i32 %i.afy, i32 %i.adw)
  store i32 %i.afz, ptr %i.afx, align 4, !tbaa !58
end_hunk_4
begin_hunk_5_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.asa = tail call i32 @llvm.smax.i32(i32 %i.arz, i32 %i.arx)
  store i32 %i.asa, ptr %i.ary, align 4, !tbaa !58
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4 ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !58
  %i.asd = tail call i32 @llvm.smin.i32(i32 %i.asc, i32 %i.aoj)
  store i32 %i.asd, ptr %i.asb, align 4, !tbaa !58
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !58
  %i.asg = tail call i32 @llvm.smax.i32(i32 %i.asf, i32 %i.aoj)
  store i32 %i.asg, ptr %i.ase, align 4, !tbaa !58
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16 ; 2 uses
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !58
  %i.asj = add nsw i32 %i.asi, 1
  store i32 %i.asj, ptr %i.ash, align 4, !tbaa !58
  %i.ask = load i64, ptr %i.aqr, align 8, !tbaa !116
  %i.asl = add i64 %i.ask, %i.aqw
  store i64 %i.asl, ptr %i.aqr, align 8, !tbaa !116
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink1342 = phi ptr [ %i.aqr, %bb.bu ], [ %i.art, %bb.bt ]
  %i.asm = getelementptr inbounds nuw i8, ptr %.sink1342, i64 8 ; 2 uses
  %i.asn = load i64, ptr %i.asm, align 8, !tbaa !117
  %i.aso = add i64 %i.asn, %indvars.iv1225
  store i64 %i.aso, ptr %i.asm, align 8, !tbaa !117
  %i.asp = getelementptr inbounds nuw i8, ptr %i.anx, i64 %indvars.iv1222
  %i.asq = load i8, ptr %i.asp, align 1, !tbaa !32
  %.not788 = icmp eq i8 %i.asq, 0
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %indvars.iv1222 ; 2 uses
  br i1 %.not788, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.aoy, ptr %i.asr, align 4, !tbaa !58
  %i.ass = load i32, ptr %i.add, align 4, !tbaa !96
  %i.ast = icmp slt i32 %i.ass, 2
  %i.asu = load i64, ptr %i.adf, align 8
  %i.asv = sext i32 %i.aoy to i64                 ; 2 uses
  %i.asw = mul i64 %i.asu, %i.asv
  %.sink.idx.i.i931 = select i1 %i.ast, i64 0, i64 %i.asw
  %.sink.i.i932 = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %.sink.idx.i.i931 ; 6 uses
  %i.asx = load i32, ptr %.sink.i.i932, align 4, !tbaa !58
  %i.asy = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i933 = tail call i32 @llvm.smin.i32(i32 %i.asx, i32 %i.asy)
  store i32 %..i933, ptr %.sink.i.i932, align 4, !tbaa !58
  %i.asz = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 8 ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !58
  %i.atb = tail call i32 @llvm.smax.i32(i32 %i.ata, i32 %i.asy)
  store i32 %i.atb, ptr %i.asz, align 4, !tbaa !58
  %i.atc = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 4 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !58
  %i.ate = tail call i32 @llvm.smin.i32(i32 %i.atd, i32 %i.aok)
  store i32 %i.ate, ptr %i.atc, align 4, !tbaa !58
  %i.atf = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 12 ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !58
  %i.ath = tail call i32 @llvm.smax.i32(i32 %i.atg, i32 %i.aok)
  store i32 %i.ath, ptr %i.atf, align 4, !tbaa !58
  %i.ati = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 16 ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !58
  %i.atk = add nsw i32 %i.atj, 1
  store i32 %i.atk, ptr %i.ati, align 4, !tbaa !58
  %i.atl = getelementptr inbounds nuw [16 x i8], ptr %i.aqr, i64 %i.asv ; 3 uses
  %i.atm = load i64, ptr %i.atl, align 8, !tbaa !116
  %i.atn = add i64 %i.atm, %indvars.iv1222
  store i64 %i.atn, ptr %i.atl, align 8, !tbaa !116
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store i32 0, ptr %i.asr, align 4, !tbaa !58
  %i.ato = load i32, ptr %i.aqs, align 4, !tbaa !58
  %i.atp = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i936 = tail call i32 @llvm.smin.i32(i32 %i.ato, i32 %i.atp)
  store i32 %..i936, ptr %i.aqs, align 4, !tbaa !58
  %i.atq = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8 ; 2 uses
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !58
  %i.ats = tail call i32 @llvm.smax.i32(i32 %i.atr, i32 %i.atp)
  store i32 %i.ats, ptr %i.atq, align 4, !tbaa !58
  %i.att = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4 ; 2 uses
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !58
  %i.atv = tail call i32 @llvm.smin.i32(i32 %i.atu, i32 %i.aol)
  store i32 %i.atv, ptr %i.att, align 4, !tbaa !58
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !58
  %i.aty = tail call i32 @llvm.smax.i32(i32 %i.atx, i32 %i.aol)
  store i32 %i.aty, ptr %i.atw, align 4, !tbaa !58
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16 ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !58
  %i.aub = add nsw i32 %i.aua, 1
  store i32 %i.aub, ptr %i.atz, align 4, !tbaa !58
  %i.auc = load i64, ptr %i.aqr, align 8, !tbaa !116
  %i.aud = add i64 %i.auc, %indvars.iv1222
  store i64 %i.aud, ptr %i.aqr, align 8, !tbaa !116
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink1345 = phi ptr [ %i.aqr, %bb.bx ], [ %i.atl, %bb.bw ]
  %i.aue = getelementptr inbounds nuw i8, ptr %.sink1345, i64 8 ; 2 uses
  %i.auf = load i64, ptr %i.aue, align 8, !tbaa !117
  %i.aug = add i64 %i.auf, %i.aod
  store i64 %i.aug, ptr %i.aue, align 8, !tbaa !117
  %i.auh = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.aqw
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !32
  %.not789 = icmp eq i8 %i.aui, 0
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.aqw ; 2 uses
  br i1 %.not789, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %i.aoy, ptr %i.auj, align 4, !tbaa !58
  %i.auk = load i32, ptr %i.add, align 4, !tbaa !96
  %i.aul = icmp slt i32 %i.auk, 2
  %i.aum = load i64, ptr %i.adf, align 8
  %i.aun = sext i32 %i.aoy to i64                 ; 2 uses
  %i.auo = mul i64 %i.aum, %i.aun
  %.sink.idx.i.i937 = select i1 %i.aul, i64 0, i64 %i.auo
  %.sink.i.i938 = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %.sink.idx.i.i937 ; 6 uses
  %i.aup = load i32, ptr %.sink.i.i938, align 4, !tbaa !58
  %i.auq = trunc nuw nsw i64 %i.aqw to i32        ; 2 uses
  %..i939 = tail call i32 @llvm.smin.i32(i32 %i.aup, i32 %i.auq)
  store i32 %..i939, ptr %.sink.i.i938, align 4, !tbaa !58
  %i.aur = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 8 ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !58
  %i.aut = tail call i32 @llvm.smax.i32(i32 %i.aus, i32 %i.auq)
  store i32 %i.aut, ptr %i.aur, align 4, !tbaa !58
  %i.auu = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 4 ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !58
  %i.auw = tail call i32 @llvm.smin.i32(i32 %i.auv, i32 %i.aom)
  store i32 %i.auw, ptr %i.auu, align 4, !tbaa !58
  %i.aux = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 12 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !58
  %i.auz = tail call i32 @llvm.smax.i32(i32 %i.auy, i32 %i.aom)
  store i32 %i.auz, ptr %i.aux, align 4, !tbaa !58
  %i.ava = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 16 ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !58
  %i.avc = add nsw i32 %i.avb, 1
  store i32 %i.avc, ptr %i.ava, align 4, !tbaa !58
  %i.avd = getelementptr inbounds nuw [16 x i8], ptr %i.aqr, i64 %i.aun ; 2 uses
  %i.ave = load <2 x i64>, ptr %i.avd, align 8, !tbaa !39
  %i.avf = insertelement <2 x i64> %i.aoo, i64 %i.aqw, i64 0
  %i.avg = add <2 x i64> %i.ave, %i.avf
  store <2 x i64> %i.avg, ptr %i.avd, align 8, !tbaa !39
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  store i32 0, ptr %i.auj, align 4, !tbaa !58
  %i.avh = load i32, ptr %i.aqs, align 4, !tbaa !58
  %i.avi = trunc nuw nsw i64 %i.aqw to i32        ; 2 uses
  %..i942 = tail call i32 @llvm.smin.i32(i32 %i.avh, i32 %i.avi)
  store i32 %..i942, ptr %i.aqs, align 4, !tbaa !58
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8 ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !58
  %i.avl = tail call i32 @llvm.smax.i32(i32 %i.avk, i32 %i.avi)
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !58
  %i.avm = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4 ; 2 uses
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !58
  %i.avo = tail call i32 @llvm.smin.i32(i32 %i.avn, i32 %i.aon)
  store i32 %i.avo, ptr %i.avm, align 4, !tbaa !58
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !58
  %i.avr = tail call i32 @llvm.smax.i32(i32 %i.avq, i32 %i.aon)
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !58
  %i.avs = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16 ; 2 uses
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !58
  %i.avu = add nsw i32 %i.avt, 1
  store i32 %i.avu, ptr %i.avs, align 4, !tbaa !58
  %i.avv = load <2 x i64>, ptr %i.aqr, align 8, !tbaa !39
  %i.avw = insertelement <2 x i64> %i.aoo, i64 %i.aqw, i64 0
  %i.avx = add <2 x i64> %i.avv, %i.avw
  store <2 x i64> %i.avx, ptr %i.aqr, align 8, !tbaa !39
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bo
  store i32 0, ptr %i.aos, align 4, !tbaa !58
  %i.avy = or disjoint i64 %indvars.iv1222, 1     ; 5 uses
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.avy
  store i32 0, ptr %i.avz, align 4, !tbaa !58
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %indvars.iv1222
  store i32 0, ptr %i.awa, align 4, !tbaa !58
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.avy
  store i32 0, ptr %i.awb, align 4, !tbaa !58
  %i.awc = load ptr, ptr %i.ade, align 8, !tbaa !54 ; 6 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !58
  %i.awe = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 4 uses
  %..i945 = tail call i32 @llvm.smin.i32(i32 %i.awd, i32 %i.awe)
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awc, i64 8 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !58
  %i.awh = tail call i32 @llvm.smax.i32(i32 %i.awg, i32 %i.awe)
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awc, i64 4 ; 2 uses
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !58
  %i.awk = tail call i32 @llvm.smin.i32(i32 %i.awj, i32 %i.aoe)
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awc, i64 12 ; 2 uses
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !58
  %i.awn = tail call i32 @llvm.smax.i32(i32 %i.awm, i32 %i.aoe)
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awc, i64 16 ; 2 uses
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !58
  %i.awq = load ptr, ptr %i.adg, align 8, !tbaa !49 ; 3 uses
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !116
  %i.aws = add i64 %i.awr, %indvars.iv1222
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awq, i64 8 ; 2 uses
  %i.awu = load i64, ptr %i.awt, align 8, !tbaa !117
  %i.awv = trunc nuw nsw i64 %i.avy to i32        ; 4 uses
  %..i948 = tail call i32 @llvm.smin.i32(i32 %..i945, i32 %i.awv)
  %i.aww = tail call i32 @llvm.smax.i32(i32 %i.awh, i32 %i.awv)
  %i.awx = add i64 %i.aws, %i.avy
  %..i951 = tail call i32 @llvm.smin.i32(i32 %..i948, i32 %i.awe)
  %i.awy = tail call i32 @llvm.umax.i32(i32 %i.aww, i32 %i.awe)
  %i.awz = tail call i32 @llvm.smin.i32(i32 %i.awk, i32 %i.aof)
  %i.axa = tail call i32 @llvm.smax.i32(i32 %i.awn, i32 %i.aof)
  %i.axb = add i64 %i.awx, %indvars.iv1222
  %..i954 = tail call i32 @llvm.smin.i32(i32 %..i951, i32 %i.awv)
  store i32 %..i954, ptr %i.awc, align 4, !tbaa !58
  %i.axc = tail call i32 @llvm.smax.i32(i32 %i.awy, i32 %i.awv)
  store i32 %i.axc, ptr %i.awf, align 4, !tbaa !58
  store i32 %i.awz, ptr %i.awi, align 4, !tbaa !58
  store i32 %i.axa, ptr %i.awl, align 4, !tbaa !58
  %i.axd = add nsw i32 %i.awp, 4
  store i32 %i.axd, ptr %i.awo, align 4, !tbaa !58
  %i.axe = add i64 %i.axb, %i.avy
  store i64 %i.axe, ptr %i.awq, align 8, !tbaa !116
  %.reass1309 = add i64 %i.awu, %invariant.op1308
  store i64 %.reass1309, ptr %i.awt, align 8, !tbaa !117
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %bb.cb
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 2 ; 2 uses
  %i.axf = load i32, ptr %i.z, align 4, !tbaa !51 ; 2 uses
  %i.axg = sext i32 %i.axf to i64
  %i.axh = icmp slt i64 %indvars.iv.next1223, %i.axg
  br i1 %i.axh, label %bb.bo, label %._crit_edge1171, !llvm.loop !407

bb.cd:                                            ; preds = %bb.a
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !419, !nonnull !93, !align !94 ; 89 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 456
  store i32 %.sroa.speculated, ptr %i.axk, align 8, !tbaa !114
  %i.axl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !418, !nonnull !93, !align !94 ; 19 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !38
  %i.axp = and i32 %i.axo, 1
  %.not = icmp eq i32 %i.axp, 0
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axm, i64 12 ; 7 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !51 ; 2 uses
  %i.axs = and i32 %i.axr, 1
  %.not765 = icmp eq i32 %i.axs, 0                ; 2 uses
  %i.axt = icmp slt i32 %i.b, %.sroa.speculated   ; 4 uses
  br i1 %.not, label %bb.dx, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1119, label %.preheader1121

.preheader1121:                                   ; preds = %bb.ce
  br i1 %i.axt, label %.lr.ph1126, label %.loopexit

.lr.ph1126:                                       ; preds = %.preheader1121
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axv = sext i32 %i.b to i64
  %i.axw = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  %i.axx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axm, i64 12 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.azc = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azf = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azh = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azk = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  br label %bb.cf

.preheader1119:                                   ; preds = %bb.ce
  br i1 %i.axt, label %.lr.ph1133, label %.loopexit

.lr.ph1133:                                       ; preds = %.preheader1119
  %i.azl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.azm = sext i32 %i.b to i64
  %i.azn = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1228 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1229 = load ptr, ptr %.phi.trans.insert1228, align 8, !tbaa !54
  %i.azo = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !54
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.azs = getelementptr inbounds nuw i8, ptr %i.axm, i64 12
  %i.azt = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azu = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azv = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.azw = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.azx = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azy = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bab = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bac = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bad = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bae = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.baf = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bag = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bah = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bai = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.baj = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bak = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bal = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bam = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ban = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bao = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bap = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.baq = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bar = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bas = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bat = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bau = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  br label %bb.df

bb.cf:                                            ; preds = %.lr.ph1126, %._crit_edge
  %indvars.iv1183 = phi i64 [ %i.axv, %.lr.ph1126 ], [ %indvars.iv.next1184, %._crit_edge ] ; 13 uses
  %i.bav = load i64, ptr %i.axx, align 8, !tbaa !39 ; 2 uses
  %i.baw = mul i64 %i.bav, %indvars.iv1183
  %i.bax = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.baw ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 %i.bav ; 3 uses
  %i.baz = load ptr, ptr %i.axy, align 8, !tbaa !54
  %i.bba = load i64, ptr %i.axz, align 8, !tbaa !39 ; 2 uses
  %i.bbb = mul i64 %i.bba, %indvars.iv1183
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.baz, i64 %i.bbb ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 %i.bba ; 6 uses
  %i.bbe = load i32, ptr %i.aya, align 4, !tbaa !51
  %i.bbf = icmp sgt i32 %i.bbe, 0
  br i1 %i.bbf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cf
  %i.bbg = or disjoint i64 %indvars.iv1183, 1     ; 16 uses
  %i.bbh = trunc nsw i64 %indvars.iv1183 to i32   ; 4 uses
  %i.bbi = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbj = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %invariant.op = shl i64 %i.bbg, 1
  %i.bbk = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbl = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbm = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbn = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbo = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbp = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbq = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbr = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbs = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbt = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbu = insertelement <2 x i64> poison, i64 %i.bbg, i64 1 ; 4 uses
  br label %bb.cg

._crit_edge:                                      ; preds = %bb.de, %bb.cf
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, 2 ; 2 uses
  %i.bbv = icmp slt i64 %indvars.iv.next1184, %i.axw
  br i1 %i.bbv, label %bb.cf, label %.loopexit, !llvm.loop !408

bb.cg:                                            ; preds = %.lr.ph, %bb.de
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.de ] ; 27 uses
  %i.bbw = phi ptr [ %i.aya, %.lr.ph ], [ %i.axq, %bb.de ] ; 2 uses
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %i.bbc, i64 %indvars.iv ; 4 uses
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !58 ; 2 uses
  %i.bbz = icmp sgt i32 %i.bby, 0
  br i1 %i.bbz, label %bb.ch, label %bb.cz

bb.ch:                                            ; preds = %bb.cg
  %i.bca = load ptr, ptr %i.axu, align 8, !tbaa !122
  %i.bcb = zext nneg i32 %i.bby to i64
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %i.bcb
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !58 ; 10 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bax, i64 %indvars.iv
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !32
  %.not779 = icmp eq i8 %i.bcf, 0
  br i1 %.not779, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.bcd, ptr %i.bbx, align 4, !tbaa !58
  %i.bcg = load i32, ptr %i.ayf, align 4, !tbaa !96
  %i.bch = icmp slt i32 %i.bcg, 2
  %i.bci = load ptr, ptr %i.ayg, align 8, !tbaa !54
  %i.bcj = load i64, ptr %i.ayh, align 8
  %i.bck = sext i32 %i.bcd to i64                 ; 2 uses
  %i.bcl = mul i64 %i.bcj, %i.bck
  %.sink.idx.i.i955 = select i1 %i.bch, i64 0, i64 %i.bcl
end_hunk_5
begin_hunk_6_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.btb = add nsw i32 %i.bta, 1
  store i32 %i.btb, ptr %i.bsz, align 4, !tbaa !58
  %i.btc = load ptr, ptr %i.bah, align 8, !tbaa !49 ; 3 uses
  %i.btd = load i64, ptr %i.btc, align 8, !tbaa !116
  %i.bte = add i64 %i.btd, %i.brl
  store i64 %i.bte, ptr %i.btc, align 8, !tbaa !116
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.sink1360 = phi ptr [ %i.btc, %bb.dm ], [ %i.bsk, %bb.dl ]
  %i.btf = getelementptr inbounds nuw i8, ptr %.sink1360, i64 8 ; 2 uses
  %i.btg = load i64, ptr %i.btf, align 8, !tbaa !117
  %i.bth = add i64 %i.btg, %indvars.iv1189
  store i64 %i.bth, ptr %i.btf, align 8, !tbaa !117
  %i.bti = load i32, ptr %i.bai, align 8, !tbaa !38
  %i.btj = sext i32 %i.bti to i64
  %i.btk = icmp slt i64 %i.bow, %i.btj
  br i1 %i.btk, label %bb.do, label %bb.dw

bb.do:                                            ; preds = %bb.dn
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bop, i64 %indvars.iv1186
  %i.btm = load i8, ptr %i.btl, align 1, !tbaa !32
  %.not777 = icmp eq i8 %i.btm, 0
  %i.btn = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %indvars.iv1186 ; 2 uses
  br i1 %.not777, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i32 %i.bpp, ptr %i.btn, align 4, !tbaa !58
  %i.bto = load i32, ptr %i.baj, align 4, !tbaa !96
  %i.btp = icmp slt i32 %i.bto, 2
  %i.btq = load ptr, ptr %i.bak, align 8, !tbaa !54
  %i.btr = load i64, ptr %i.bal, align 8
  %i.bts = sext i32 %i.bpp to i64                 ; 2 uses
  %i.btt = mul i64 %i.btr, %i.bts
  %.sink.idx.i.i1012 = select i1 %i.btp, i64 0, i64 %i.btt
  %.sink.i.i1013 = getelementptr inbounds nuw i8, ptr %i.btq, i64 %.sink.idx.i.i1012 ; 6 uses
  %i.btu = load i32, ptr %.sink.i.i1013, align 4, !tbaa !58
  %i.btv = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1014 = tail call i32 @llvm.smin.i32(i32 %i.btu, i32 %i.btv)
  store i32 %..i1014, ptr %.sink.i.i1013, align 4, !tbaa !58
  %i.btw = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 8 ; 2 uses
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !58
  %i.bty = tail call i32 @llvm.smax.i32(i32 %i.btx, i32 %i.btv)
  store i32 %i.bty, ptr %i.btw, align 4, !tbaa !58
  %i.btz = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 4 ; 2 uses
  %i.bua = load i32, ptr %i.btz, align 4, !tbaa !58
  %i.bub = tail call i32 @llvm.smin.i32(i32 %i.bua, i32 %i.bpd)
  store i32 %i.bub, ptr %i.btz, align 4, !tbaa !58
  %i.buc = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 12 ; 2 uses
  %i.bud = load i32, ptr %i.buc, align 4, !tbaa !58
  %i.bue = tail call i32 @llvm.smax.i32(i32 %i.bud, i32 %i.bpd)
  store i32 %i.bue, ptr %i.buc, align 4, !tbaa !58
  %i.buf = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 16 ; 2 uses
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !58
  %i.buh = add nsw i32 %i.bug, 1
  store i32 %i.buh, ptr %i.buf, align 4, !tbaa !58
  %i.bui = load ptr, ptr %i.bam, align 8, !tbaa !49
  %i.buj = getelementptr inbounds nuw [16 x i8], ptr %i.bui, i64 %i.bts ; 3 uses
  %i.buk = load i64, ptr %i.buj, align 8, !tbaa !116
  %i.bul = add i64 %i.buk, %indvars.iv1186
  store i64 %i.bul, ptr %i.buj, align 8, !tbaa !116
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  store i32 0, ptr %i.btn, align 4, !tbaa !58
  %i.bum = load ptr, ptr %i.ban, align 8, !tbaa !54 ; 6 uses
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !58
  %i.buo = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1017 = tail call i32 @llvm.smin.i32(i32 %i.bun, i32 %i.buo)
  store i32 %..i1017, ptr %i.bum, align 4, !tbaa !58
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bum, i64 8 ; 2 uses
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !58
  %i.bur = tail call i32 @llvm.smax.i32(i32 %i.buq, i32 %i.buo)
  store i32 %i.bur, ptr %i.bup, align 4, !tbaa !58
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bum, i64 4 ; 2 uses
  %i.but = load i32, ptr %i.bus, align 4, !tbaa !58
  %i.buu = tail call i32 @llvm.smin.i32(i32 %i.but, i32 %i.bpe)
  store i32 %i.buu, ptr %i.bus, align 4, !tbaa !58
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bum, i64 12 ; 2 uses
  %i.buw = load i32, ptr %i.buv, align 4, !tbaa !58
  %i.bux = tail call i32 @llvm.smax.i32(i32 %i.buw, i32 %i.bpe)
  store i32 %i.bux, ptr %i.buv, align 4, !tbaa !58
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bum, i64 16 ; 2 uses
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !58
  %i.bva = add nsw i32 %i.buz, 1
  store i32 %i.bva, ptr %i.buy, align 4, !tbaa !58
  %i.bvb = load ptr, ptr %i.bao, align 8, !tbaa !49 ; 3 uses
  %i.bvc = load i64, ptr %i.bvb, align 8, !tbaa !116
  %i.bvd = add i64 %i.bvc, %indvars.iv1186
  store i64 %i.bvd, ptr %i.bvb, align 8, !tbaa !116
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.sink1363 = phi ptr [ %i.bvb, %bb.dq ], [ %i.buj, %bb.dp ]
  %i.bve = getelementptr inbounds nuw i8, ptr %.sink1363, i64 8 ; 2 uses
  %i.bvf = load i64, ptr %i.bve, align 8, !tbaa !117
  %i.bvg = add i64 %i.bvf, %i.bow
  store i64 %i.bvg, ptr %i.bve, align 8, !tbaa !117
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bop, i64 %i.brl
  %i.bvi = load i8, ptr %i.bvh, align 1, !tbaa !32
  %.not778 = icmp eq i8 %i.bvi, 0
  %i.bvj = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %i.brl ; 2 uses
  br i1 %.not778, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.bpp, ptr %i.bvj, align 4, !tbaa !58
  %i.bvk = load i32, ptr %i.bap, align 4, !tbaa !96
  %i.bvl = icmp slt i32 %i.bvk, 2
  %i.bvm = load ptr, ptr %i.baq, align 8, !tbaa !54
  %i.bvn = load i64, ptr %i.bar, align 8
  %i.bvo = sext i32 %i.bpp to i64                 ; 2 uses
  %i.bvp = mul i64 %i.bvn, %i.bvo
  %.sink.idx.i.i1018 = select i1 %i.bvl, i64 0, i64 %i.bvp
  %.sink.i.i1019 = getelementptr inbounds nuw i8, ptr %i.bvm, i64 %.sink.idx.i.i1018 ; 6 uses
  %i.bvq = load i32, ptr %.sink.i.i1019, align 4, !tbaa !58
  %i.bvr = trunc nuw nsw i64 %i.brl to i32        ; 2 uses
  %..i1020 = tail call i32 @llvm.smin.i32(i32 %i.bvq, i32 %i.bvr)
  store i32 %..i1020, ptr %.sink.i.i1019, align 4, !tbaa !58
  %i.bvs = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 8 ; 2 uses
  %i.bvt = load i32, ptr %i.bvs, align 4, !tbaa !58
  %i.bvu = tail call i32 @llvm.smax.i32(i32 %i.bvt, i32 %i.bvr)
  store i32 %i.bvu, ptr %i.bvs, align 4, !tbaa !58
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 4 ; 2 uses
  %i.bvw = load i32, ptr %i.bvv, align 4, !tbaa !58
  %i.bvx = tail call i32 @llvm.smin.i32(i32 %i.bvw, i32 %i.bpf)
  store i32 %i.bvx, ptr %i.bvv, align 4, !tbaa !58
  %i.bvy = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 12 ; 2 uses
  %i.bvz = load i32, ptr %i.bvy, align 4, !tbaa !58
  %i.bwa = tail call i32 @llvm.smax.i32(i32 %i.bvz, i32 %i.bpf)
  store i32 %i.bwa, ptr %i.bvy, align 4, !tbaa !58
  %i.bwb = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 16 ; 2 uses
  %i.bwc = load i32, ptr %i.bwb, align 4, !tbaa !58
  %i.bwd = add nsw i32 %i.bwc, 1
  store i32 %i.bwd, ptr %i.bwb, align 4, !tbaa !58
  %i.bwe = load ptr, ptr %i.bas, align 8, !tbaa !49
  %i.bwf = getelementptr inbounds nuw [16 x i8], ptr %i.bwe, i64 %i.bvo ; 2 uses
  %i.bwg = load <2 x i64>, ptr %i.bwf, align 8, !tbaa !39
  %i.bwh = insertelement <2 x i64> %i.bph, i64 %i.brl, i64 0
  %i.bwi = add <2 x i64> %i.bwg, %i.bwh
  store <2 x i64> %i.bwi, ptr %i.bwf, align 8, !tbaa !39
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %i.bvj, align 4, !tbaa !58
  %i.bwj = load ptr, ptr %i.bat, align 8, !tbaa !54 ; 6 uses
  %i.bwk = load i32, ptr %i.bwj, align 4, !tbaa !58
  %i.bwl = trunc nuw nsw i64 %i.brl to i32        ; 2 uses
  %..i1023 = tail call i32 @llvm.smin.i32(i32 %i.bwk, i32 %i.bwl)
  store i32 %..i1023, ptr %i.bwj, align 4, !tbaa !58
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwj, i64 8 ; 2 uses
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !58
  %i.bwo = tail call i32 @llvm.smax.i32(i32 %i.bwn, i32 %i.bwl)
  store i32 %i.bwo, ptr %i.bwm, align 4, !tbaa !58
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwj, i64 4 ; 2 uses
  %i.bwq = load i32, ptr %i.bwp, align 4, !tbaa !58
  %i.bwr = tail call i32 @llvm.smin.i32(i32 %i.bwq, i32 %i.bpg)
  store i32 %i.bwr, ptr %i.bwp, align 4, !tbaa !58
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwj, i64 12 ; 2 uses
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !58
  %i.bwu = tail call i32 @llvm.smax.i32(i32 %i.bwt, i32 %i.bpg)
  store i32 %i.bwu, ptr %i.bws, align 4, !tbaa !58
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwj, i64 16 ; 2 uses
  %i.bww = load i32, ptr %i.bwv, align 4, !tbaa !58
  %i.bwx = add nsw i32 %i.bww, 1
  store i32 %i.bwx, ptr %i.bwv, align 4, !tbaa !58
  %i.bwy = load ptr, ptr %i.bau, align 8, !tbaa !49 ; 2 uses
  %i.bwz = load <2 x i64>, ptr %i.bwy, align 8, !tbaa !39
  %i.bxa = insertelement <2 x i64> %i.bph, i64 %i.brl, i64 0
  %i.bxb = add <2 x i64> %i.bwz, %i.bxa
  store <2 x i64> %i.bxb, ptr %i.bwy, align 8, !tbaa !39
  br label %bb.dw

bb.du:                                            ; preds = %bb.dg
  store i32 0, ptr %i.bpj, align 4, !tbaa !58
  %i.bxc = or disjoint i64 %indvars.iv1186, 1     ; 5 uses
  %i.bxd = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bxc
  store i32 0, ptr %i.bxd, align 4, !tbaa !58
  %i.bxe = load ptr, ptr %i.azt, align 8, !tbaa !54 ; 8 uses
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !58
  %i.bxg = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 4 uses
  %..i1026 = tail call i32 @llvm.smin.i32(i32 %i.bxf, i32 %i.bxg)
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxe, i64 8 ; 4 uses
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !58
  %i.bxj = tail call i32 @llvm.smax.i32(i32 %i.bxi, i32 %i.bxg)
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxe, i64 4 ; 4 uses
  %i.bxl = load i32, ptr %i.bxk, align 4, !tbaa !58
  %i.bxm = tail call i32 @llvm.smin.i32(i32 %i.bxl, i32 %i.box)
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxe, i64 12 ; 4 uses
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !58
  %i.bxp = tail call i32 @llvm.smax.i32(i32 %i.bxo, i32 %i.box)
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxe, i64 16 ; 4 uses
  %i.bxr = load i32, ptr %i.bxq, align 4, !tbaa !58
  %i.bxs = load ptr, ptr %i.azu, align 8, !tbaa !49 ; 4 uses
  %i.bxt = load i64, ptr %i.bxs, align 8, !tbaa !116
  %i.bxu = add i64 %i.bxt, %indvars.iv1186
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxs, i64 8 ; 3 uses
  %i.bxw = load i64, ptr %i.bxv, align 8, !tbaa !117
  %i.bxx = trunc nuw nsw i64 %i.bxc to i32        ; 4 uses
  %..i1029 = tail call i32 @llvm.smin.i32(i32 %..i1026, i32 %i.bxx)
  store i32 %..i1029, ptr %i.bxe, align 4, !tbaa !58
  %i.bxy = tail call i32 @llvm.smax.i32(i32 %i.bxj, i32 %i.bxx)
  store i32 %i.bxy, ptr %i.bxh, align 4, !tbaa !58
  store i32 %i.bxm, ptr %i.bxk, align 4, !tbaa !58
  store i32 %i.bxp, ptr %i.bxn, align 4, !tbaa !58
  %i.bxz = add nsw i32 %i.bxr, 2
  store i32 %i.bxz, ptr %i.bxq, align 4, !tbaa !58
  %i.bya = add i64 %i.bxu, %i.bxc                 ; 2 uses
  store i64 %i.bya, ptr %i.bxs, align 8, !tbaa !116
  %.reass1281 = add i64 %i.bxw, %invariant.op1280 ; 2 uses
  store i64 %.reass1281, ptr %i.bxv, align 8, !tbaa !117
  %i.byb = load i32, ptr %i.azv, align 8, !tbaa !38
  %i.byc = sext i32 %i.byb to i64
  %i.byd = icmp slt i64 %i.bow, %i.byc
  br i1 %i.byd, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %indvars.iv1186
  store i32 0, ptr %i.bye, align 4, !tbaa !58
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %i.bxc
  store i32 0, ptr %i.byf, align 4, !tbaa !58
  %i.byg = load i32, ptr %i.bxe, align 4, !tbaa !58
  %..i1032 = tail call i32 @llvm.smin.i32(i32 %i.byg, i32 %i.bxg)
  %i.byh = load i32, ptr %i.bxh, align 4, !tbaa !58
  %i.byi = tail call i32 @llvm.smax.i32(i32 %i.byh, i32 %i.bxg)
  %i.byj = load i32, ptr %i.bxk, align 4, !tbaa !58
  %i.byk = tail call i32 @llvm.smin.i32(i32 %i.byj, i32 %i.boy)
  %i.byl = load i32, ptr %i.bxn, align 4, !tbaa !58
  %i.bym = tail call i32 @llvm.smax.i32(i32 %i.byl, i32 %i.boy)
  %i.byn = load i32, ptr %i.bxq, align 4, !tbaa !58
  %i.byo = add i64 %i.bya, %indvars.iv1186
  %..i1035 = tail call i32 @llvm.smin.i32(i32 %..i1032, i32 %i.bxx)
  store i32 %..i1035, ptr %i.bxe, align 4, !tbaa !58
  %i.byp = tail call i32 @llvm.smax.i32(i32 %i.byi, i32 %i.bxx)
  store i32 %i.byp, ptr %i.bxh, align 4, !tbaa !58
  store i32 %i.byk, ptr %i.bxk, align 4, !tbaa !58
  store i32 %i.bym, ptr %i.bxn, align 4, !tbaa !58
  %i.byq = add nsw i32 %i.byn, 2
  store i32 %i.byq, ptr %i.bxq, align 4, !tbaa !58
  %i.byr = add i64 %i.byo, %i.bxc
  store i64 %i.byr, ptr %i.bxs, align 8, !tbaa !116
  %.reass1283 = add i64 %.reass1281, %invariant.op1282
  store i64 %.reass1283, ptr %i.bxv, align 8, !tbaa !117
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %bb.dn, %bb.dt, %bb.ds
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 2 ; 2 uses
  %i.bys = load i32, ptr %i.axq, align 4, !tbaa !51
  %i.byt = sext i32 %i.bys to i64
  %i.byu = icmp slt i64 %indvars.iv.next1187, %i.byt
  br i1 %i.byu, label %bb.dg, label %._crit_edge1131, !llvm.loop !411

bb.dx:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1115, label %.preheader1117

.preheader1117:                                   ; preds = %bb.dx
  br i1 %i.axt, label %.lr.ph1139, label %.loopexit

.lr.ph1139:                                       ; preds = %.preheader1117
  %i.byv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.byw = sext i32 %i.b to i64
  %i.byx = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1230 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1231 = load ptr, ptr %.phi.trans.insert1230, align 8, !tbaa !54
  %i.byy = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.byz = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.bza = load ptr, ptr %i.byz, align 8, !tbaa !54
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.axm, i64 12 ; 2 uses
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bze = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.caa = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.cab = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.cac = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  br label %bb.dy

.preheader1115:                                   ; preds = %bb.dx
  br i1 %i.axt, label %.lr.ph1146, label %.loopexit

.lr.ph1146:                                       ; preds = %.preheader1115
  %i.cad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !54
  %i.caf = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.cag = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !54
  %i.cai = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.caj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cak = getelementptr inbounds nuw i8, ptr %i.axj, i64 12 ; 4 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %i.axj, i64 32 ; 3 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.axj, i64 136 ; 4 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.axj, i64 432 ; 3 uses
  %i.cao = sext i32 %i.b to i64
  %i.cap = sext i32 %.sroa.speculated to i64
  br label %bb.eq

bb.dy:                                            ; preds = %.lr.ph1139, %._crit_edge1137
  %indvars.iv1195 = phi i64 [ %i.byw, %.lr.ph1139 ], [ %indvars.iv.next1196, %._crit_edge1137 ] ; 13 uses
  %i.caq = load i64, ptr %i.byy, align 8, !tbaa !39 ; 2 uses
  %i.car = mul i64 %i.caq, %indvars.iv1195
  %i.cas = getelementptr inbounds nuw i8, ptr %.pre1231, i64 %i.car ; 3 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cas, i64 %i.caq ; 2 uses
  %i.cau = load i64, ptr %i.bzb, align 8, !tbaa !39 ; 2 uses
  %i.cav = mul i64 %i.cau, %indvars.iv1195
  %i.caw = getelementptr inbounds nuw i8, ptr %i.bza, i64 %i.cav ; 4 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 %i.cau ; 4 uses
  %i.cay = load i32, ptr %i.bzc, align 4, !tbaa !51
  %i.caz = icmp sgt i32 %i.cay, 0
  br i1 %i.caz, label %.lr.ph1136, label %._crit_edge1137

.lr.ph1136:                                       ; preds = %bb.dy
  %i.cba = or disjoint i64 %indvars.iv1195, 1     ; 9 uses
  %i.cbb = trunc nsw i64 %indvars.iv1195 to i32   ; 4 uses
  %i.cbc = trunc nsw i64 %i.cba to i32            ; 4 uses
  %invariant.op1284 = add i64 %indvars.iv1195, %i.cba
  %invariant.op1286 = add i64 %indvars.iv1195, %i.cba
  %i.cbd = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbe = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbf = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbg = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbh = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbi = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbj = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbk = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbl = insertelement <2 x i64> poison, i64 %i.cba, i64 1 ; 2 uses
  br label %bb.dz

._crit_edge1137:                                  ; preds = %bb.ep, %bb.dy
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, 2 ; 2 uses
  %i.cbm = icmp slt i64 %indvars.iv.next1196, %i.byx
  br i1 %i.cbm, label %bb.dy, label %.loopexit, !llvm.loop !412

bb.dz:                                            ; preds = %.lr.ph1136, %bb.ep
  %indvars.iv1192 = phi i64 [ 0, %.lr.ph1136 ], [ %indvars.iv.next1193, %bb.ep ] ; 18 uses
  %i.cbn = phi ptr [ %i.bzc, %.lr.ph1136 ], [ %i.axq, %bb.ep ] ; 2 uses
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %i.caw, i64 %indvars.iv1192 ; 4 uses
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !58 ; 2 uses
  %i.cbq = icmp sgt i32 %i.cbp, 0
  br i1 %i.cbq, label %bb.ea, label %bb.en

bb.ea:                                            ; preds = %bb.dz
  %i.cbr = load ptr, ptr %i.byv, align 8, !tbaa !122
  %i.cbs = zext nneg i32 %i.cbp to i64
  %i.cbt = getelementptr inbounds nuw [4 x i8], ptr %i.cbr, i64 %i.cbs
  %i.cbu = load i32, ptr %i.cbt, align 4, !tbaa !58 ; 8 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cas, i64 %indvars.iv1192
  %i.cbw = load i8, ptr %i.cbv, align 1, !tbaa !32
  %.not770 = icmp eq i8 %i.cbw, 0
  br i1 %.not770, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i32 %i.cbu, ptr %i.cbo, align 4, !tbaa !58
  %i.cbx = load i32, ptr %i.bzf, align 4, !tbaa !96
  %i.cby = icmp slt i32 %i.cbx, 2
  %i.cbz = load ptr, ptr %i.bzg, align 8, !tbaa !54
  %i.cca = load i64, ptr %i.bzh, align 8
  %i.ccb = sext i32 %i.cbu to i64                 ; 2 uses
  %i.ccc = mul i64 %i.cca, %i.ccb
  %.sink.idx.i.i1036 = select i1 %i.cby, i64 0, i64 %i.ccc
  %.sink.i.i1037 = getelementptr inbounds nuw i8, ptr %i.cbz, i64 %.sink.idx.i.i1036 ; 6 uses
  %i.ccd = load i32, ptr %.sink.i.i1037, align 4, !tbaa !58
  %i.cce = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1038 = tail call i32 @llvm.smin.i32(i32 %i.ccd, i32 %i.cce)
  store i32 %..i1038, ptr %.sink.i.i1037, align 4, !tbaa !58
  %i.ccf = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 8 ; 2 uses
  %i.ccg = load i32, ptr %i.ccf, align 4, !tbaa !58
  %i.cch = tail call i32 @llvm.smax.i32(i32 %i.ccg, i32 %i.cce)
  store i32 %i.cch, ptr %i.ccf, align 4, !tbaa !58
  %i.cci = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 4 ; 2 uses
  %i.ccj = load i32, ptr %i.cci, align 4, !tbaa !58
  %i.cck = tail call i32 @llvm.smin.i32(i32 %i.ccj, i32 %i.cbd)
  store i32 %i.cck, ptr %i.cci, align 4, !tbaa !58
  %i.ccl = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 12 ; 2 uses
  %i.ccm = load i32, ptr %i.ccl, align 4, !tbaa !58
  %i.ccn = tail call i32 @llvm.smax.i32(i32 %i.ccm, i32 %i.cbd)
  store i32 %i.ccn, ptr %i.ccl, align 4, !tbaa !58
  %i.cco = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 16 ; 2 uses
  %i.ccp = load i32, ptr %i.cco, align 4, !tbaa !58
  %i.ccq = add nsw i32 %i.ccp, 1
  store i32 %i.ccq, ptr %i.cco, align 4, !tbaa !58
  %i.ccr = load ptr, ptr %i.bzi, align 8, !tbaa !49
  %i.ccs = getelementptr inbounds nuw [16 x i8], ptr %i.ccr, i64 %i.ccb ; 3 uses
  %i.cct = load i64, ptr %i.ccs, align 8, !tbaa !116
  %i.ccu = add i64 %i.cct, %indvars.iv1192
  store i64 %i.ccu, ptr %i.ccs, align 8, !tbaa !116
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  store i32 0, ptr %i.cbo, align 4, !tbaa !58
  %i.ccv = load ptr, ptr %i.bzj, align 8, !tbaa !54 ; 6 uses
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !58
  %i.ccx = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1041 = tail call i32 @llvm.smin.i32(i32 %i.ccw, i32 %i.ccx)
  store i32 %..i1041, ptr %i.ccv, align 4, !tbaa !58
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccv, i64 8 ; 2 uses
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !58
  %i.cda = tail call i32 @llvm.smax.i32(i32 %i.ccz, i32 %i.ccx)
  store i32 %i.cda, ptr %i.ccy, align 4, !tbaa !58
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccv, i64 4 ; 2 uses
  %i.cdc = load i32, ptr %i.cdb, align 4, !tbaa !58
  %i.cdd = tail call i32 @llvm.smin.i32(i32 %i.cdc, i32 %i.cbe)
  store i32 %i.cdd, ptr %i.cdb, align 4, !tbaa !58
  %i.cde = getelementptr inbounds nuw i8, ptr %i.ccv, i64 12 ; 2 uses
  %i.cdf = load i32, ptr %i.cde, align 4, !tbaa !58
  %i.cdg = tail call i32 @llvm.smax.i32(i32 %i.cdf, i32 %i.cbe)
  store i32 %i.cdg, ptr %i.cde, align 4, !tbaa !58
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.ccv, i64 16 ; 2 uses
  %i.cdi = load i32, ptr %i.cdh, align 4, !tbaa !58
  %i.cdj = add nsw i32 %i.cdi, 1
  store i32 %i.cdj, ptr %i.cdh, align 4, !tbaa !58
  %i.cdk = load ptr, ptr %i.bzk, align 8, !tbaa !49 ; 3 uses
  %i.cdl = load i64, ptr %i.cdk, align 8, !tbaa !116
  %i.cdm = add i64 %i.cdl, %indvars.iv1192
  store i64 %i.cdm, ptr %i.cdk, align 8, !tbaa !116
end_hunk_6
begin_hunk_7_@_ZNK2cv19connectedcomponents21LabelingGranaParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.cpg = tail call i32 @llvm.smax.i32(i32 %i.cpf, i32 %i.cpd)
  store i32 %i.cpg, ptr %i.cpe, align 4, !tbaa !58
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cpi = load i32, ptr %i.cph, align 4, !tbaa !58
  %i.cpj = tail call i32 @llvm.smin.i32(i32 %i.cpi, i32 %i.clq)
  store i32 %i.cpj, ptr %i.cph, align 4, !tbaa !58
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.cpl = load i32, ptr %i.cpk, align 4, !tbaa !58
  %i.cpm = tail call i32 @llvm.smax.i32(i32 %i.cpl, i32 %i.clq)
  store i32 %i.cpm, ptr %i.cpk, align 4, !tbaa !58
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.cpo = load i32, ptr %i.cpn, align 4, !tbaa !58
  %i.cpp = add nsw i32 %i.cpo, 1
  store i32 %i.cpp, ptr %i.cpn, align 4, !tbaa !58
  %i.cpq = load i64, ptr %i.cnx, align 8, !tbaa !116
  %i.cpr = add i64 %i.cpq, %i.coc
  store i64 %i.cpr, ptr %i.cnx, align 8, !tbaa !116
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sink1378 = phi ptr [ %i.cnx, %bb.ex ], [ %i.coz, %bb.ew ]
  %i.cps = getelementptr inbounds nuw i8, ptr %.sink1378, i64 8 ; 2 uses
  %i.cpt = load i64, ptr %i.cps, align 8, !tbaa !117
  %i.cpu = add i64 %i.cpt, %indvars.iv1201
  store i64 %i.cpu, ptr %i.cps, align 8, !tbaa !117
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cle, i64 %indvars.iv1198
  %i.cpw = load i8, ptr %i.cpv, align 1, !tbaa !32
  %.not768 = icmp eq i8 %i.cpw, 0
  %i.cpx = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %indvars.iv1198 ; 2 uses
  br i1 %.not768, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store i32 %i.cme, ptr %i.cpx, align 4, !tbaa !58
  %i.cpy = load i32, ptr %i.cak, align 4, !tbaa !96
  %i.cpz = icmp slt i32 %i.cpy, 2
  %i.cqa = load i64, ptr %i.cam, align 8
  %i.cqb = sext i32 %i.cme to i64                 ; 2 uses
  %i.cqc = mul i64 %i.cqa, %i.cqb
  %.sink.idx.i.i1084 = select i1 %i.cpz, i64 0, i64 %i.cqc
  %.sink.i.i1085 = getelementptr inbounds nuw i8, ptr %i.cny, i64 %.sink.idx.i.i1084 ; 6 uses
  %i.cqd = load i32, ptr %.sink.i.i1085, align 4, !tbaa !58
  %i.cqe = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1086 = tail call i32 @llvm.smin.i32(i32 %i.cqd, i32 %i.cqe)
  store i32 %..i1086, ptr %.sink.i.i1085, align 4, !tbaa !58
  %i.cqf = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 8 ; 2 uses
  %i.cqg = load i32, ptr %i.cqf, align 4, !tbaa !58
  %i.cqh = tail call i32 @llvm.smax.i32(i32 %i.cqg, i32 %i.cqe)
  store i32 %i.cqh, ptr %i.cqf, align 4, !tbaa !58
  %i.cqi = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 4 ; 2 uses
  %i.cqj = load i32, ptr %i.cqi, align 4, !tbaa !58
  %i.cqk = tail call i32 @llvm.smin.i32(i32 %i.cqj, i32 %i.clr)
  store i32 %i.cqk, ptr %i.cqi, align 4, !tbaa !58
  %i.cql = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 12 ; 2 uses
  %i.cqm = load i32, ptr %i.cql, align 4, !tbaa !58
  %i.cqn = tail call i32 @llvm.smax.i32(i32 %i.cqm, i32 %i.clr)
  store i32 %i.cqn, ptr %i.cql, align 4, !tbaa !58
  %i.cqo = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 16 ; 2 uses
  %i.cqp = load i32, ptr %i.cqo, align 4, !tbaa !58
  %i.cqq = add nsw i32 %i.cqp, 1
  store i32 %i.cqq, ptr %i.cqo, align 4, !tbaa !58
  %i.cqr = getelementptr inbounds nuw [16 x i8], ptr %i.cnx, i64 %i.cqb ; 3 uses
  %i.cqs = load i64, ptr %i.cqr, align 8, !tbaa !116
  %i.cqt = add i64 %i.cqs, %indvars.iv1198
  store i64 %i.cqt, ptr %i.cqr, align 8, !tbaa !116
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  store i32 0, ptr %i.cpx, align 4, !tbaa !58
  %i.cqu = load i32, ptr %i.cny, align 4, !tbaa !58
  %i.cqv = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1089 = tail call i32 @llvm.smin.i32(i32 %i.cqu, i32 %i.cqv)
  store i32 %..i1089, ptr %i.cny, align 4, !tbaa !58
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cny, i64 8 ; 2 uses
  %i.cqx = load i32, ptr %i.cqw, align 4, !tbaa !58
  %i.cqy = tail call i32 @llvm.smax.i32(i32 %i.cqx, i32 %i.cqv)
  store i32 %i.cqy, ptr %i.cqw, align 4, !tbaa !58
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cra = load i32, ptr %i.cqz, align 4, !tbaa !58
  %i.crb = tail call i32 @llvm.smin.i32(i32 %i.cra, i32 %i.cls)
  store i32 %i.crb, ptr %i.cqz, align 4, !tbaa !58
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.crd = load i32, ptr %i.crc, align 4, !tbaa !58
  %i.cre = tail call i32 @llvm.smax.i32(i32 %i.crd, i32 %i.cls)
  store i32 %i.cre, ptr %i.crc, align 4, !tbaa !58
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.crg = load i32, ptr %i.crf, align 4, !tbaa !58
  %i.crh = add nsw i32 %i.crg, 1
  store i32 %i.crh, ptr %i.crf, align 4, !tbaa !58
  %i.cri = load i64, ptr %i.cnx, align 8, !tbaa !116
  %i.crj = add i64 %i.cri, %indvars.iv1198
  store i64 %i.crj, ptr %i.cnx, align 8, !tbaa !116
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sink1381 = phi ptr [ %i.cnx, %bb.fa ], [ %i.cqr, %bb.ez ]
  %i.crk = getelementptr inbounds nuw i8, ptr %.sink1381, i64 8 ; 2 uses
  %i.crl = load i64, ptr %i.crk, align 8, !tbaa !117
  %i.crm = add i64 %i.crl, %i.clk
  store i64 %i.crm, ptr %i.crk, align 8, !tbaa !117
  %i.crn = getelementptr inbounds nuw i8, ptr %i.cle, i64 %i.coc
  %i.cro = load i8, ptr %i.crn, align 1, !tbaa !32
  %.not769 = icmp eq i8 %i.cro, 0
  %i.crp = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.coc ; 2 uses
  br i1 %.not769, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i32 %i.cme, ptr %i.crp, align 4, !tbaa !58
  %i.crq = load i32, ptr %i.cak, align 4, !tbaa !96
  %i.crr = icmp slt i32 %i.crq, 2
  %i.crs = load i64, ptr %i.cam, align 8
  %i.crt = sext i32 %i.cme to i64                 ; 2 uses
  %i.cru = mul i64 %i.crs, %i.crt
  %.sink.idx.i.i1090 = select i1 %i.crr, i64 0, i64 %i.cru
  %.sink.i.i1091 = getelementptr inbounds nuw i8, ptr %i.cny, i64 %.sink.idx.i.i1090 ; 6 uses
  %i.crv = load i32, ptr %.sink.i.i1091, align 4, !tbaa !58
  %i.crw = trunc nuw nsw i64 %i.coc to i32        ; 2 uses
  %..i1092 = tail call i32 @llvm.smin.i32(i32 %i.crv, i32 %i.crw)
  store i32 %..i1092, ptr %.sink.i.i1091, align 4, !tbaa !58
  %i.crx = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 8 ; 2 uses
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !58
  %i.crz = tail call i32 @llvm.smax.i32(i32 %i.cry, i32 %i.crw)
  store i32 %i.crz, ptr %i.crx, align 4, !tbaa !58
  %i.csa = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 4 ; 2 uses
  %i.csb = load i32, ptr %i.csa, align 4, !tbaa !58
  %i.csc = tail call i32 @llvm.smin.i32(i32 %i.csb, i32 %i.clt)
  store i32 %i.csc, ptr %i.csa, align 4, !tbaa !58
  %i.csd = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 12 ; 2 uses
  %i.cse = load i32, ptr %i.csd, align 4, !tbaa !58
  %i.csf = tail call i32 @llvm.smax.i32(i32 %i.cse, i32 %i.clt)
  store i32 %i.csf, ptr %i.csd, align 4, !tbaa !58
  %i.csg = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 16 ; 2 uses
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !58
  %i.csi = add nsw i32 %i.csh, 1
  store i32 %i.csi, ptr %i.csg, align 4, !tbaa !58
  %i.csj = getelementptr inbounds nuw [16 x i8], ptr %i.cnx, i64 %i.crt ; 2 uses
  %i.csk = load <2 x i64>, ptr %i.csj, align 8, !tbaa !39
  %i.csl = insertelement <2 x i64> %i.clv, i64 %i.coc, i64 0
  %i.csm = add <2 x i64> %i.csk, %i.csl
  store <2 x i64> %i.csm, ptr %i.csj, align 8, !tbaa !39
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fb
  store i32 0, ptr %i.crp, align 4, !tbaa !58
  %i.csn = load i32, ptr %i.cny, align 4, !tbaa !58
  %i.cso = trunc nuw nsw i64 %i.coc to i32        ; 2 uses
  %..i1095 = tail call i32 @llvm.smin.i32(i32 %i.csn, i32 %i.cso)
  store i32 %..i1095, ptr %i.cny, align 4, !tbaa !58
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cny, i64 8 ; 2 uses
  %i.csq = load i32, ptr %i.csp, align 4, !tbaa !58
  %i.csr = tail call i32 @llvm.smax.i32(i32 %i.csq, i32 %i.cso)
  store i32 %i.csr, ptr %i.csp, align 4, !tbaa !58
  %i.css = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cst = load i32, ptr %i.css, align 4, !tbaa !58
  %i.csu = tail call i32 @llvm.smin.i32(i32 %i.cst, i32 %i.clu)
  store i32 %i.csu, ptr %i.css, align 4, !tbaa !58
  %i.csv = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.csw = load i32, ptr %i.csv, align 4, !tbaa !58
  %i.csx = tail call i32 @llvm.smax.i32(i32 %i.csw, i32 %i.clu)
  store i32 %i.csx, ptr %i.csv, align 4, !tbaa !58
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.csz = load i32, ptr %i.csy, align 4, !tbaa !58
  %i.cta = add nsw i32 %i.csz, 1
  store i32 %i.cta, ptr %i.csy, align 4, !tbaa !58
  %i.ctb = load <2 x i64>, ptr %i.cnx, align 8, !tbaa !39
  %i.ctc = insertelement <2 x i64> %i.clv, i64 %i.coc, i64 0
  %i.ctd = add <2 x i64> %i.ctb, %i.ctc
  store <2 x i64> %i.ctd, ptr %i.cnx, align 8, !tbaa !39
  br label %bb.ff

bb.fe:                                            ; preds = %bb.er
  store i32 0, ptr %i.cly, align 4, !tbaa !58
  %i.cte = or disjoint i64 %indvars.iv1198, 1     ; 5 uses
  %i.ctf = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cte
  store i32 0, ptr %i.ctf, align 4, !tbaa !58
  %i.ctg = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %indvars.iv1198
  store i32 0, ptr %i.ctg, align 4, !tbaa !58
  %i.cth = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.cte
  store i32 0, ptr %i.cth, align 4, !tbaa !58
  %i.cti = load ptr, ptr %i.cal, align 8, !tbaa !54 ; 6 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !58
  %i.ctk = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 4 uses
  %..i1098 = tail call i32 @llvm.smin.i32(i32 %i.ctj, i32 %i.ctk)
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cti, i64 8 ; 2 uses
  %i.ctm = load i32, ptr %i.ctl, align 4, !tbaa !58
  %i.ctn = tail call i32 @llvm.smax.i32(i32 %i.ctm, i32 %i.ctk)
  %i.cto = getelementptr inbounds nuw i8, ptr %i.cti, i64 4 ; 2 uses
  %i.ctp = load i32, ptr %i.cto, align 4, !tbaa !58
  %i.ctq = tail call i32 @llvm.smin.i32(i32 %i.ctp, i32 %i.cll)
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.cti, i64 12 ; 2 uses
  %i.cts = load i32, ptr %i.ctr, align 4, !tbaa !58
  %i.ctt = tail call i32 @llvm.smax.i32(i32 %i.cts, i32 %i.cll)
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.cti, i64 16 ; 2 uses
  %i.ctv = load i32, ptr %i.ctu, align 4, !tbaa !58
  %i.ctw = load ptr, ptr %i.can, align 8, !tbaa !49 ; 3 uses
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !116
  %i.cty = add i64 %i.ctx, %indvars.iv1198
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctw, i64 8 ; 2 uses
  %i.cua = load i64, ptr %i.ctz, align 8, !tbaa !117
  %i.cub = trunc nuw nsw i64 %i.cte to i32        ; 4 uses
  %..i1101 = tail call i32 @llvm.smin.i32(i32 %..i1098, i32 %i.cub)
  %i.cuc = tail call i32 @llvm.smax.i32(i32 %i.ctn, i32 %i.cub)
  %i.cud = add i64 %i.cty, %i.cte
  %..i1104 = tail call i32 @llvm.smin.i32(i32 %..i1101, i32 %i.ctk)
  %i.cue = tail call i32 @llvm.umax.i32(i32 %i.cuc, i32 %i.ctk)
  %i.cuf = tail call i32 @llvm.smin.i32(i32 %i.ctq, i32 %i.clm)
  %i.cug = tail call i32 @llvm.smax.i32(i32 %i.ctt, i32 %i.clm)
  %i.cuh = add i64 %i.cud, %indvars.iv1198
  %..i1107 = tail call i32 @llvm.smin.i32(i32 %..i1104, i32 %i.cub)
  store i32 %..i1107, ptr %i.cti, align 4, !tbaa !58
  %i.cui = tail call i32 @llvm.smax.i32(i32 %i.cue, i32 %i.cub)
  store i32 %i.cui, ptr %i.ctl, align 4, !tbaa !58
  store i32 %i.cuf, ptr %i.cto, align 4, !tbaa !58
  store i32 %i.cug, ptr %i.ctr, align 4, !tbaa !58
  %i.cuj = add nsw i32 %i.ctv, 4
  store i32 %i.cuj, ptr %i.ctu, align 4, !tbaa !58
  %i.cuk = add i64 %i.cuh, %i.cte
  store i64 %i.cuk, ptr %i.ctw, align 8, !tbaa !116
  %.reass1293 = add i64 %i.cua, %invariant.op1292
  store i64 %.reass1293, ptr %i.ctz, align 8, !tbaa !117
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fd, %bb.fe
  %indvars.iv.next1199 = add nuw nsw i64 %indvars.iv1198, 2 ; 2 uses
  %i.cul = load i32, ptr %i.axq, align 4, !tbaa !51 ; 2 uses
  %i.cum = sext i32 %i.cul to i64
  %i.cun = icmp slt i64 %indvars.iv.next1199, %i.cum
  br i1 %i.cun, label %bb.er, label %._crit_edge1144, !llvm.loop !415

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge1131, %._crit_edge1137, %._crit_edge1144, %._crit_edge1151, %._crit_edge1158, %._crit_edge1164, %._crit_edge1171, %.lr.ph1173, %.preheader1121, %.preheader1119, %.preheader1117, %.preheader1115, %.preheader1113, %.preheader1111, %.preheader1109, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE11mergeLabelsERKNS_3MatERS4_PiS8_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !51   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %.087159 = load i32, ptr %3, align 4, !tbaa !58 ; 2 uses
  %i.e = icmp slt i32 %.087159, %i.d
  br i1 %i.e, label %.lr.ph162, label %._crit_edge163

.lr.ph162:                                        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = load i64, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %i.j = sub i64 0, %i.i                          ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.o = sub i64 0, %i.n
  %i.p = icmp sgt i32 %i.b, 0
  br i1 %i.p, label %.lr.ph.us.preheader, label %._crit_edge163

.lr.ph.us.preheader:                              ; preds = %.lr.ph162
  %i.q = add nsw i32 %i.b, -2
  %i.r = add nsw i32 %i.b, -1
  %i.s = zext nneg i32 %i.r to i64
  %i.t = sext i32 %i.q to i64
  %i.u = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.087160.us = phi i32 [ %.087.us, %._crit_edge.us ], [ %.087159, %.lr.ph.us.preheader ]
  %i.v = sext i32 %.087160.us to i64              ; 3 uses
  %i.w = mul i64 %i.i, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.w ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.j
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.j ; 3 uses
  %i.aa = mul i64 %i.n, %i.v
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.o ; 7 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.ab
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.ab ] ; 16 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !58 ; 9 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.c, label %bb.ab

bb.c:                                             ; preds = %bb.b
  %.not.us = icmp eq i64 %indvars.iv, 0
  br i1 %.not.us, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !58 ; 5 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !32
  %.not93.us = icmp eq i8 %i.al, 0
  br i1 %.not93.us, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr i8, ptr %i.ac, i64 %indvars.iv
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %.not94.us = icmp eq i8 %i.ao, 0
  br i1 %.not94.us, label %bb.h, label %.preheader.us

.preheader.us:                                    ; preds = %bb.f, %.preheader.us
  %.0.i.i.us = phi i32 [ %i.ar, %.preheader.us ], [ %i.ai, %bb.f ] ; 4 uses
  %i.ap = sext i32 %.0.i.i.us to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !58 ; 2 uses
  %i.as = icmp slt i32 %i.ar, %.0.i.i.us
  br i1 %i.as, label %.preheader.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us: ; preds = %.preheader.us
  %.not.i.us = icmp eq i32 %i.ai, %i.ae
  br i1 %.not.i.us, label %bb.g, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us, %.preheader.i.us
  %.0.i18.i.us = phi i32 [ %i.av, %.preheader.i.us ], [ %i.ae, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 3 uses
  %i.at = sext i32 %.0.i18.i.us to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %2, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58 ; 2 uses
  %i.aw = icmp slt i32 %i.av, %.0.i18.i.us
  br i1 %i.aw, label %.preheader.i.us, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us: ; preds = %.preheader.i.us
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %.0.i.i.us, i32 %.0.i18.i.us) ; 3 uses
  %i.ax = zext nneg i32 %i.ae to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ax ; 3 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58 ; 2 uses
  %i.ba = icmp slt i32 %i.az, %i.ae
  br i1 %i.ba, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us

.lr.ph.i.i.us:                                    ; preds = %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us, %.lr.ph.i.i.us
  %i.bb = phi i32 [ %i.bf, %.lr.ph.i.i.us ], [ %i.az, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ] ; 2 uses
  %i.bc = phi ptr [ %i.be, %.lr.ph.i.i.us ], [ %i.ay, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ]
  store i32 %spec.select.i.us, ptr %i.bc, align 4, !tbaa !58
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bd ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !58 ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.bb
  br i1 %i.bg, label %.lr.ph.i.i.us, label %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us: ; preds = %.lr.ph.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us
  %.lcssa.i.i.us = phi ptr [ %i.ay, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit19.i.us ], [ %i.be, %.lr.ph.i.i.us ]
  store i32 %spec.select.i.us, ptr %.lcssa.i.i.us, align 4, !tbaa !58
  br label %bb.g

bb.g:                                             ; preds = %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us
  %.1.i.us = phi i32 [ %spec.select.i.us, %_ZN2cv19connectedcomponentsL7setRootIiEEvPT_S2_S2_.exit.i.us ], [ %.0.i.i.us, %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i.us ] ; 4 uses
  %i.bh = zext nneg i32 %i.ai to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !58 ; 2 uses
  %i.bk = icmp slt i32 %i.bj, %i.ai
  br i1 %i.bk, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us

.lr.ph.i21.i.us:                                  ; preds = %bb.g, %.lr.ph.i21.i.us
  %i.bl = phi i32 [ %i.bp, %.lr.ph.i21.i.us ], [ %i.bj, %bb.g ] ; 2 uses
  %i.bm = phi ptr [ %i.bo, %.lr.ph.i21.i.us ], [ %i.bi, %bb.g ]
  store i32 %.1.i.us, ptr %i.bm, align 4, !tbaa !58
  %i.bn = sext i32 %i.bl to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bn ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !58 ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %i.bl
  br i1 %i.bq, label %.lr.ph.i21.i.us, label %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, !llvm.loop !4

_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us: ; preds = %.lr.ph.i21.i.us, %bb.g
  %.lcssa.i20.i.us = phi ptr [ %i.bi, %bb.g ], [ %i.bo, %.lr.ph.i21.i.us ]
  store i32 %.1.i.us, ptr %.lcssa.i20.i.us, align 4, !tbaa !58
  store i32 %.1.i.us, ptr %i.ad, align 4, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us, %bb.f, %bb.e, %bb.d, %bb.c
  %i.br = phi i32 [ %.1.i.us, %_ZN2cv19connectedcomponentsL9set_unionIiEET_PS2_S2_S2_.exit.us ], [ %i.ae, %bb.f ], [ %i.ae, %bb.e ], [ %i.ae, %bb.d ], [ %i.ae, %bb.c ] ; 13 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !58 ; 9 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bv = icmp samesign ult i64 %indvars.iv, %i.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %.not97.us = icmp eq i8 %i.bx, 0                ; 3 uses
  br i1 %i.bv, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not97.us, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !32
  %.not96.us = icmp eq i8 %i.bz, 0
  br i1 %.not96.us, label %bb.w, label %.preheader195

.preheader195:                                    ; preds = %bb.k, %.preheader195
  %.0.i.i121.us = phi i32 [ %i.cc, %.preheader195 ], [ %i.bt, %bb.k ] ; 4 uses
  %i.ca = sext i32 %.0.i.i121.us to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !58 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, %.0.i.i121.us
  br i1 %i.cd, label %.preheader195, label %_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us, !llvm.loop !3

_ZN2cv19connectedcomponentsL8findRootIiEET_PKS2_S2_.exit.i122.us: ; preds = %.preheader195
  %.not.i123.us = icmp eq i32 %i.bt, %i.br
  br i1 %.not.i123.us, label %bb.l, label %.preheader.i124.us

end_hunk_7
begin_hunk_8_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.vo = load i32, ptr %i.vn, align 4, !tbaa !58
  %i.vp = add nsw i32 %i.vo, 1
  store i32 %i.vp, ptr %i.vn, align 4, !tbaa !58
  %i.vq = load ptr, ptr %i.db, align 8, !tbaa !49 ; 3 uses
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !116
  %i.vs = add i64 %i.vr, %i.tz
  store i64 %i.vs, ptr %i.vq, align 8, !tbaa !116
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.sink1324 = phi ptr [ %i.vq, %bb.ak ], [ %i.uy, %bb.aj ]
  %i.vt = getelementptr inbounds nuw i8, ptr %.sink1324, i64 8 ; 2 uses
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !117
  %i.vv = add i64 %i.vu, %indvars.iv1213
  store i64 %i.vv, ptr %i.vt, align 8, !tbaa !117
  %i.vw = load i32, ptr %i.dc, align 8, !tbaa !38
  %i.vx = icmp sgt i32 %i.vw, %i.rt
  br i1 %i.vx, label %bb.am, label %bb.au

bb.am:                                            ; preds = %bb.al
  %i.vy = getelementptr inbounds nuw i8, ptr %i.rf, i64 %indvars.iv1210
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !32
  %.not797 = icmp eq i8 %i.vz, 0
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210 ; 2 uses
  br i1 %.not797, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %i.sd, ptr %i.wa, align 4, !tbaa !58
  %i.wb = load i32, ptr %i.de, align 4, !tbaa !96
  %i.wc = icmp slt i32 %i.wb, 2
  %i.wd = load ptr, ptr %i.df, align 8, !tbaa !54
  %i.we = load i64, ptr %i.dg, align 8
  %i.wf = sext i32 %i.sd to i64                   ; 2 uses
  %i.wg = mul i64 %i.we, %i.wf
  %.sink.idx.i.i859 = select i1 %i.wc, i64 0, i64 %i.wg
  %.sink.i.i860 = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.sink.idx.i.i859 ; 6 uses
  %i.wh = load i32, ptr %.sink.i.i860, align 4, !tbaa !58
  %i.wi = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i861 = tail call i32 @llvm.smin.i32(i32 %i.wh, i32 %i.wi)
  store i32 %..i861, ptr %.sink.i.i860, align 4, !tbaa !58
  %i.wj = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 8 ; 2 uses
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !58
  %i.wl = tail call i32 @llvm.smax.i32(i32 %i.wk, i32 %i.wi)
  store i32 %i.wl, ptr %i.wj, align 4, !tbaa !58
  %i.wm = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 4 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !58
  %i.wo = tail call i32 @llvm.smin.i32(i32 %i.wn, i32 %i.rt)
  store i32 %i.wo, ptr %i.wm, align 4, !tbaa !58
  %i.wp = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 12 ; 2 uses
  %i.wq = load i32, ptr %i.wp, align 4, !tbaa !58
  %i.wr = tail call i32 @llvm.smax.i32(i32 %i.wq, i32 %i.rt)
  store i32 %i.wr, ptr %i.wp, align 4, !tbaa !58
  %i.ws = getelementptr inbounds nuw i8, ptr %.sink.i.i860, i64 16 ; 2 uses
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !58
  %i.wu = add nsw i32 %i.wt, 1
  store i32 %i.wu, ptr %i.ws, align 4, !tbaa !58
  %i.wv = load ptr, ptr %i.dh, align 8, !tbaa !49
  %i.ww = getelementptr inbounds nuw [16 x i8], ptr %i.wv, i64 %i.wf ; 3 uses
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !116
  %i.wy = add i64 %i.wx, %indvars.iv1210
  store i64 %i.wy, ptr %i.ww, align 8, !tbaa !116
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i32 0, ptr %i.wa, align 4, !tbaa !58
  %i.wz = load ptr, ptr %i.dj, align 8, !tbaa !54 ; 6 uses
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !58
  %i.xb = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 2 uses
  %..i864 = tail call i32 @llvm.smin.i32(i32 %i.xa, i32 %i.xb)
  store i32 %..i864, ptr %i.wz, align 4, !tbaa !58
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 8 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !58
  %i.xe = tail call i32 @llvm.smax.i32(i32 %i.xd, i32 %i.xb)
  store i32 %i.xe, ptr %i.xc, align 4, !tbaa !58
  %i.xf = getelementptr inbounds nuw i8, ptr %i.wz, i64 4 ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !58
  %i.xh = tail call i32 @llvm.smin.i32(i32 %i.xg, i32 %i.rt)
  store i32 %i.xh, ptr %i.xf, align 4, !tbaa !58
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wz, i64 12 ; 2 uses
  %i.xj = load i32, ptr %i.xi, align 4, !tbaa !58
  %i.xk = tail call i32 @llvm.smax.i32(i32 %i.xj, i32 %i.rt)
  store i32 %i.xk, ptr %i.xi, align 4, !tbaa !58
  %i.xl = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !58
  %i.xn = add nsw i32 %i.xm, 1
  store i32 %i.xn, ptr %i.xl, align 4, !tbaa !58
  %i.xo = load ptr, ptr %i.dk, align 8, !tbaa !49 ; 3 uses
  %i.xp = load i64, ptr %i.xo, align 8, !tbaa !116
  %i.xq = add i64 %i.xp, %indvars.iv1210
  store i64 %i.xq, ptr %i.xo, align 8, !tbaa !116
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.sink1327 = phi ptr [ %i.xo, %bb.ao ], [ %i.ww, %bb.an ]
  %i.xr = getelementptr inbounds nuw i8, ptr %.sink1327, i64 8 ; 2 uses
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !117
  %i.xt = add i64 %i.xs, %i.rm
  store i64 %i.xt, ptr %i.xr, align 8, !tbaa !117
  %i.xu = getelementptr inbounds nuw i8, ptr %i.rf, i64 %i.tz
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !32
  %.not798 = icmp eq i8 %i.xv, 0
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.tz ; 2 uses
  br i1 %.not798, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i32 %i.sd, ptr %i.xw, align 4, !tbaa !58
  %i.xx = load i32, ptr %i.dm, align 4, !tbaa !96
  %i.xy = icmp slt i32 %i.xx, 2
  %i.xz = load ptr, ptr %i.dn, align 8, !tbaa !54
  %i.ya = load i64, ptr %i.do, align 8
  %i.yb = sext i32 %i.sd to i64                   ; 2 uses
  %i.yc = mul i64 %i.ya, %i.yb
  %.sink.idx.i.i865 = select i1 %i.xy, i64 0, i64 %i.yc
  %.sink.i.i866 = getelementptr inbounds nuw i8, ptr %i.xz, i64 %.sink.idx.i.i865 ; 6 uses
  %i.yd = load i32, ptr %.sink.i.i866, align 4, !tbaa !58
  %i.ye = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i867 = tail call i32 @llvm.smin.i32(i32 %i.yd, i32 %i.ye)
  store i32 %..i867, ptr %.sink.i.i866, align 4, !tbaa !58
  %i.yf = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 8 ; 2 uses
  %i.yg = load i32, ptr %i.yf, align 4, !tbaa !58
  %i.yh = tail call i32 @llvm.smax.i32(i32 %i.yg, i32 %i.ye)
  store i32 %i.yh, ptr %i.yf, align 4, !tbaa !58
  %i.yi = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 4 ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !58
  %i.yk = tail call i32 @llvm.smin.i32(i32 %i.yj, i32 %i.rt)
  store i32 %i.yk, ptr %i.yi, align 4, !tbaa !58
  %i.yl = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 12 ; 2 uses
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !58
  %i.yn = tail call i32 @llvm.smax.i32(i32 %i.ym, i32 %i.rt)
  store i32 %i.yn, ptr %i.yl, align 4, !tbaa !58
  %i.yo = getelementptr inbounds nuw i8, ptr %.sink.i.i866, i64 16 ; 2 uses
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !58
  %i.yq = add nsw i32 %i.yp, 1
  store i32 %i.yq, ptr %i.yo, align 4, !tbaa !58
  %i.yr = load ptr, ptr %i.dp, align 8, !tbaa !49
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yr, i64 %i.yb ; 2 uses
  %i.yt = load <2 x i64>, ptr %i.ys, align 8, !tbaa !39
  %i.yu = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.yv = add <2 x i64> %i.yt, %i.yu
  store <2 x i64> %i.yv, ptr %i.ys, align 8, !tbaa !39
  br label %bb.au

bb.ar:                                            ; preds = %bb.ap
  store i32 0, ptr %i.xw, align 4, !tbaa !58
  %i.yw = load ptr, ptr %i.dq, align 8, !tbaa !54 ; 6 uses
  %i.yx = load i32, ptr %i.yw, align 4, !tbaa !58
  %i.yy = trunc nuw nsw i64 %i.tz to i32          ; 2 uses
  %..i870 = tail call i32 @llvm.smin.i32(i32 %i.yx, i32 %i.yy)
  store i32 %..i870, ptr %i.yw, align 4, !tbaa !58
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yw, i64 8 ; 2 uses
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !58
  %i.zb = tail call i32 @llvm.smax.i32(i32 %i.za, i32 %i.yy)
  store i32 %i.zb, ptr %i.yz, align 4, !tbaa !58
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yw, i64 4 ; 2 uses
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !58
  %i.ze = tail call i32 @llvm.smin.i32(i32 %i.zd, i32 %i.rt)
  store i32 %i.ze, ptr %i.zc, align 4, !tbaa !58
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yw, i64 12 ; 2 uses
  %i.zg = load i32, ptr %i.zf, align 4, !tbaa !58
  %i.zh = tail call i32 @llvm.smax.i32(i32 %i.zg, i32 %i.rt)
  store i32 %i.zh, ptr %i.zf, align 4, !tbaa !58
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yw, i64 16 ; 2 uses
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !58
  %i.zk = add nsw i32 %i.zj, 1
  store i32 %i.zk, ptr %i.zi, align 4, !tbaa !58
  %i.zl = load ptr, ptr %i.dr, align 8, !tbaa !49 ; 2 uses
  %i.zm = load <2 x i64>, ptr %i.zl, align 8, !tbaa !39
  %i.zn = insertelement <2 x i64> %i.ru, i64 %i.tz, i64 0
  %i.zo = add <2 x i64> %i.zm, %i.zn
  store <2 x i64> %i.zo, ptr %i.zl, align 8, !tbaa !39
  br label %bb.au

bb.as:                                            ; preds = %bb.ae
  store i32 0, ptr %i.rx, align 4, !tbaa !58
  %i.zp = or disjoint i64 %indvars.iv1210, 1      ; 5 uses
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %i.zp
  store i32 0, ptr %i.zq, align 4, !tbaa !58
  %i.zr = load ptr, ptr %i.cj, align 8, !tbaa !54 ; 8 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !58
  %i.zt = trunc nuw nsw i64 %indvars.iv1210 to i32 ; 4 uses
  %..i873 = tail call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.zt)
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 8 ; 4 uses
  %i.zv = load i32, ptr %i.zu, align 4, !tbaa !58
  %i.zw = tail call i32 @llvm.smax.i32(i32 %i.zv, i32 %i.zt)
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zr, i64 4 ; 4 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !58
  %i.zz = tail call i32 @llvm.smin.i32(i32 %i.zy, i32 %i.rn)
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zr, i64 12 ; 4 uses
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !58
  %i.aac = tail call i32 @llvm.smax.i32(i32 %i.aab, i32 %i.rn)
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zr, i64 16 ; 4 uses
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !58
  %i.aaf = load ptr, ptr %i.ck, align 8, !tbaa !49 ; 4 uses
  %i.aag = load i64, ptr %i.aaf, align 8, !tbaa !116
  %i.aah = add i64 %i.aag, %indvars.iv1210
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 3 uses
  %i.aaj = load i64, ptr %i.aai, align 8, !tbaa !117
  %i.aak = trunc nuw nsw i64 %i.zp to i32         ; 4 uses
  %..i876 = tail call i32 @llvm.smin.i32(i32 %..i873, i32 %i.aak)
  store i32 %..i876, ptr %i.zr, align 4, !tbaa !58
  %i.aal = tail call i32 @llvm.smax.i32(i32 %i.zw, i32 %i.aak)
  store i32 %i.aal, ptr %i.zu, align 4, !tbaa !58
  store i32 %i.zz, ptr %i.zx, align 4, !tbaa !58
  store i32 %i.aac, ptr %i.aaa, align 4, !tbaa !58
  %i.aam = add nsw i32 %i.aae, 2
  store i32 %i.aam, ptr %i.aad, align 4, !tbaa !58
  %i.aan = add i64 %i.aah, %i.zp                  ; 2 uses
  store i64 %i.aan, ptr %i.aaf, align 8, !tbaa !116
  %.reass1297 = add i64 %i.aaj, %invariant.op1296 ; 2 uses
  store i64 %.reass1297, ptr %i.aai, align 8, !tbaa !117
  %i.aao = load i32, ptr %i.cl, align 8, !tbaa !38
  %i.aap = icmp sgt i32 %i.aao, %i.ro
  br i1 %i.aap, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv1210
  store i32 0, ptr %i.aaq, align 4, !tbaa !58
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %i.zp
  store i32 0, ptr %i.aar, align 4, !tbaa !58
  %i.aas = load i32, ptr %i.zr, align 4, !tbaa !58
  %..i879 = tail call i32 @llvm.smin.i32(i32 %i.aas, i32 %i.zt)
  %i.aat = load i32, ptr %i.zu, align 4, !tbaa !58
  %i.aau = tail call i32 @llvm.smax.i32(i32 %i.aat, i32 %i.zt)
  %i.aav = load i32, ptr %i.zx, align 4, !tbaa !58
  %i.aaw = tail call i32 @llvm.smin.i32(i32 %i.aav, i32 %i.ro)
  %i.aax = load i32, ptr %i.aaa, align 4, !tbaa !58
  %i.aay = tail call i32 @llvm.smax.i32(i32 %i.aax, i32 %i.ro)
  %i.aaz = load i32, ptr %i.aad, align 4, !tbaa !58
  %i.aba = add i64 %i.aan, %indvars.iv1210
  %..i882 = tail call i32 @llvm.smin.i32(i32 %..i879, i32 %i.aak)
  store i32 %..i882, ptr %i.zr, align 4, !tbaa !58
  %i.abb = tail call i32 @llvm.smax.i32(i32 %i.aau, i32 %i.aak)
  store i32 %i.abb, ptr %i.zu, align 4, !tbaa !58
  store i32 %i.aaw, ptr %i.zx, align 4, !tbaa !58
  store i32 %i.aay, ptr %i.aaa, align 4, !tbaa !58
  %i.abc = add nsw i32 %i.aaz, 2
  store i32 %i.abc, ptr %i.aad, align 4, !tbaa !58
  %i.abd = add i64 %i.aba, %i.zp
  store i64 %i.abd, ptr %i.aaf, align 8, !tbaa !116
  %.reass1299 = add i64 %.reass1297, %invariant.op1298
  store i64 %.reass1299, ptr %i.aai, align 8, !tbaa !117
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.al, %bb.ar, %bb.aq
  %indvars.iv.next1211 = add nuw nsw i64 %indvars.iv1210, 2 ; 2 uses
  %i.abe = load i32, ptr %i.z, align 4, !tbaa !51
  %i.abf = sext i32 %i.abe to i64
  %i.abg = icmp slt i64 %indvars.iv.next1211, %i.abf
  br i1 %i.abg, label %bb.ae, label %._crit_edge1158, !llvm.loop !428

bb.av:                                            ; preds = %bb.b
  br i1 %.not785, label %.preheader, label %.preheader1109

.preheader1109:                                   ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1166, label %.loopexit

.lr.ph1166:                                       ; preds = %.preheader1109
  %i.abh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre1238 = load ptr, ptr %i.f, align 8, !tbaa !441 ; 2 uses
  %.phi.trans.insert1239 = getelementptr inbounds nuw i8, ptr %.pre1238, i64 24
  %.pre1240 = load ptr, ptr %.phi.trans.insert1239, align 8, !tbaa !54
  %i.abi = getelementptr inbounds nuw i8, ptr %.pre1238, i64 128
  %i.abj = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !54
  %i.abl = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.abm = getelementptr inbounds nuw i8, ptr %i.v, i64 12 ; 2 uses
  %i.abn = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abn, i64 32
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abn, i64 432
  %i.abq = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.abr = getelementptr inbounds nuw i8, ptr %i.abq, i64 12
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abq, i64 32
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abq, i64 136
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abq, i64 432
  %i.abv = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 32
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abv, i64 432
  %i.aby = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 12
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 32
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aby, i64 136
  %i.acc = getelementptr inbounds nuw i8, ptr %i.aby, i64 432
  %i.acd = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 32
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 432
  %i.acg = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 12
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 32
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 136
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acg, i64 432
  %i.acl = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 32
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 432
  %i.aco = getelementptr inbounds nuw [464 x i8], ptr %i.r, i64 %i.m ; 4 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 12
  %i.acq = getelementptr inbounds nuw i8, ptr %i.aco, i64 32
  %i.acr = getelementptr inbounds nuw i8, ptr %i.aco, i64 136
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aco, i64 432
  %i.act = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.acu = getelementptr inbounds nuw i8, ptr %i.s, i64 432
  br label %bb.aw

.preheader:                                       ; preds = %bb.av
  br i1 %i.ac, label %.lr.ph1173, label %.loopexit

.lr.ph1173:                                       ; preds = %.preheader
  %i.acv = load ptr, ptr %i.f, align 8, !tbaa !441, !nonnull !93, !align !94 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !54
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 128
  %i.acz = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ada = load ptr, ptr %i.acz, align 8, !tbaa !54
  %i.adb = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.adc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.add = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 4 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.s, i64 432 ; 3 uses
  %i.adh = icmp sgt i32 %i.aa, 0
  br i1 %i.adh, label %.lr.ph1173.split, label %.loopexit

bb.aw:                                            ; preds = %.lr.ph1166, %._crit_edge1164
  %indvars.iv1219 = phi i64 [ %i.m, %.lr.ph1166 ], [ %indvars.iv.next1220, %._crit_edge1164 ] ; 13 uses
  %i.adi = load i64, ptr %i.abi, align 8, !tbaa !39 ; 2 uses
  %i.adj = mul i64 %i.adi, %indvars.iv1219
  %i.adk = getelementptr inbounds nuw i8, ptr %.pre1240, i64 %i.adj ; 3 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 %i.adi ; 2 uses
  %i.adm = load i64, ptr %i.abl, align 8, !tbaa !39 ; 2 uses
  %i.adn = mul i64 %i.adm, %indvars.iv1219
  %i.ado = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.adn ; 4 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 %i.adm ; 4 uses
  %i.adq = load i32, ptr %i.abm, align 4, !tbaa !51
  %i.adr = icmp sgt i32 %i.adq, 0
  br i1 %i.adr, label %.lr.ph1163, label %._crit_edge1164

.lr.ph1163:                                       ; preds = %bb.aw
  %i.ads = or disjoint i64 %indvars.iv1219, 1     ; 9 uses
  %i.adt = trunc nuw i64 %indvars.iv1219 to i32   ; 4 uses
  %i.adu = trunc nuw i64 %i.ads to i32            ; 4 uses
  %invariant.op1300 = add nuw i64 %indvars.iv1219, %i.ads
  %invariant.op1302 = add nuw i64 %indvars.iv1219, %i.ads
  %i.adv = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adw = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.adx = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.ady = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.adz = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.aea = trunc nuw i64 %indvars.iv1219 to i32   ; 2 uses
  %i.aeb = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.aec = trunc nuw i64 %i.ads to i32            ; 2 uses
  %i.aed = insertelement <2 x i64> poison, i64 %i.ads, i64 1 ; 2 uses
  br label %bb.ax

._crit_edge1164:                                  ; preds = %bb.bn, %bb.aw
  %indvars.iv.next1220 = add nuw nsw i64 %indvars.iv1219, 2 ; 2 uses
  %i.aee = trunc nuw i64 %indvars.iv.next1220 to i32
  %i.aef = icmp sgt i32 %.sroa.speculated, %i.aee
  br i1 %i.aef, label %bb.aw, label %.loopexit, !llvm.loop !429

bb.ax:                                            ; preds = %.lr.ph1163, %bb.bn
  %indvars.iv1216 = phi i64 [ 0, %.lr.ph1163 ], [ %indvars.iv.next1217, %bb.bn ] ; 18 uses
  %i.aeg = phi ptr [ %i.abm, %.lr.ph1163 ], [ %i.z, %bb.bn ] ; 2 uses
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %i.ado, i64 %indvars.iv1216 ; 4 uses
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !58 ; 2 uses
  %i.aej = icmp sgt i32 %i.aei, 0
  br i1 %i.aej, label %bb.ay, label %bb.bl

bb.ay:                                            ; preds = %bb.ax
  %i.aek = load ptr, ptr %i.abh, align 8, !tbaa !128
  %i.ael = zext nneg i32 %i.aei to i64
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.aek, i64 %i.ael
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !58 ; 8 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.adk, i64 %indvars.iv1216
  %i.aep = load i8, ptr %i.aeo, align 1, !tbaa !32
  %.not790 = icmp eq i8 %i.aep, 0
  br i1 %.not790, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 %i.aen, ptr %i.aeh, align 4, !tbaa !58
  %i.aeq = load i32, ptr %i.abr, align 4, !tbaa !96
  %i.aer = icmp slt i32 %i.aeq, 2
  %i.aes = load ptr, ptr %i.abs, align 8, !tbaa !54
  %i.aet = load i64, ptr %i.abt, align 8
  %i.aeu = sext i32 %i.aen to i64                 ; 2 uses
  %i.aev = mul i64 %i.aet, %i.aeu
  %.sink.idx.i.i883 = select i1 %i.aer, i64 0, i64 %i.aev
  %.sink.i.i884 = getelementptr inbounds nuw i8, ptr %i.aes, i64 %.sink.idx.i.i883 ; 6 uses
  %i.aew = load i32, ptr %.sink.i.i884, align 4, !tbaa !58
  %i.aex = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i885 = tail call i32 @llvm.smin.i32(i32 %i.aew, i32 %i.aex)
  store i32 %..i885, ptr %.sink.i.i884, align 4, !tbaa !58
  %i.aey = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 8 ; 2 uses
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !58
  %i.afa = tail call i32 @llvm.smax.i32(i32 %i.aez, i32 %i.aex)
  store i32 %i.afa, ptr %i.aey, align 4, !tbaa !58
  %i.afb = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 4 ; 2 uses
  %i.afc = load i32, ptr %i.afb, align 4, !tbaa !58
  %i.afd = tail call i32 @llvm.smin.i32(i32 %i.afc, i32 %i.adv)
  store i32 %i.afd, ptr %i.afb, align 4, !tbaa !58
  %i.afe = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 12 ; 2 uses
  %i.aff = load i32, ptr %i.afe, align 4, !tbaa !58
  %i.afg = tail call i32 @llvm.smax.i32(i32 %i.aff, i32 %i.adv)
  store i32 %i.afg, ptr %i.afe, align 4, !tbaa !58
  %i.afh = getelementptr inbounds nuw i8, ptr %.sink.i.i884, i64 16 ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !58
  %i.afj = add nsw i32 %i.afi, 1
  store i32 %i.afj, ptr %i.afh, align 4, !tbaa !58
  %i.afk = load ptr, ptr %i.abu, align 8, !tbaa !49
  %i.afl = getelementptr inbounds nuw [16 x i8], ptr %i.afk, i64 %i.aeu ; 3 uses
  %i.afm = load i64, ptr %i.afl, align 8, !tbaa !116
  %i.afn = add i64 %i.afm, %indvars.iv1216
  store i64 %i.afn, ptr %i.afl, align 8, !tbaa !116
  br label %bb.bb

bb.ba:                                            ; preds = %bb.ay
  store i32 0, ptr %i.aeh, align 4, !tbaa !58
  %i.afo = load ptr, ptr %i.abw, align 8, !tbaa !54 ; 6 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !58
  %i.afq = trunc nuw nsw i64 %indvars.iv1216 to i32 ; 2 uses
  %..i888 = tail call i32 @llvm.smin.i32(i32 %i.afp, i32 %i.afq)
  store i32 %..i888, ptr %i.afo, align 4, !tbaa !58
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afo, i64 8 ; 2 uses
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !58
  %i.aft = tail call i32 @llvm.smax.i32(i32 %i.afs, i32 %i.afq)
  store i32 %i.aft, ptr %i.afr, align 4, !tbaa !58
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afo, i64 4 ; 2 uses
  %i.afv = load i32, ptr %i.afu, align 4, !tbaa !58
  %i.afw = tail call i32 @llvm.smin.i32(i32 %i.afv, i32 %i.adw)
  store i32 %i.afw, ptr %i.afu, align 4, !tbaa !58
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afo, i64 12 ; 2 uses
  %i.afy = load i32, ptr %i.afx, align 4, !tbaa !58
  %i.afz = tail call i32 @llvm.smax.i32(i32 %i.afy, i32 %i.adw)
  store i32 %i.afz, ptr %i.afx, align 4, !tbaa !58
end_hunk_8
begin_hunk_9_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.asa = tail call i32 @llvm.smax.i32(i32 %i.arz, i32 %i.arx)
  store i32 %i.asa, ptr %i.ary, align 4, !tbaa !58
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4 ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !58
  %i.asd = tail call i32 @llvm.smin.i32(i32 %i.asc, i32 %i.aoj)
  store i32 %i.asd, ptr %i.asb, align 4, !tbaa !58
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.asf = load i32, ptr %i.ase, align 4, !tbaa !58
  %i.asg = tail call i32 @llvm.smax.i32(i32 %i.asf, i32 %i.aoj)
  store i32 %i.asg, ptr %i.ase, align 4, !tbaa !58
  %i.ash = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16 ; 2 uses
  %i.asi = load i32, ptr %i.ash, align 4, !tbaa !58
  %i.asj = add nsw i32 %i.asi, 1
  store i32 %i.asj, ptr %i.ash, align 4, !tbaa !58
  %i.ask = load i64, ptr %i.aqr, align 8, !tbaa !116
  %i.asl = add i64 %i.ask, %i.aqw
  store i64 %i.asl, ptr %i.aqr, align 8, !tbaa !116
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.sink1342 = phi ptr [ %i.aqr, %bb.bu ], [ %i.art, %bb.bt ]
  %i.asm = getelementptr inbounds nuw i8, ptr %.sink1342, i64 8 ; 2 uses
  %i.asn = load i64, ptr %i.asm, align 8, !tbaa !117
  %i.aso = add i64 %i.asn, %indvars.iv1225
  store i64 %i.aso, ptr %i.asm, align 8, !tbaa !117
  %i.asp = getelementptr inbounds nuw i8, ptr %i.anx, i64 %indvars.iv1222
  %i.asq = load i8, ptr %i.asp, align 1, !tbaa !32
  %.not788 = icmp eq i8 %i.asq, 0
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %indvars.iv1222 ; 2 uses
  br i1 %.not788, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store i32 %i.aoy, ptr %i.asr, align 4, !tbaa !58
  %i.ass = load i32, ptr %i.add, align 4, !tbaa !96
  %i.ast = icmp slt i32 %i.ass, 2
  %i.asu = load i64, ptr %i.adf, align 8
  %i.asv = sext i32 %i.aoy to i64                 ; 2 uses
  %i.asw = mul i64 %i.asu, %i.asv
  %.sink.idx.i.i931 = select i1 %i.ast, i64 0, i64 %i.asw
  %.sink.i.i932 = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %.sink.idx.i.i931 ; 6 uses
  %i.asx = load i32, ptr %.sink.i.i932, align 4, !tbaa !58
  %i.asy = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i933 = tail call i32 @llvm.smin.i32(i32 %i.asx, i32 %i.asy)
  store i32 %..i933, ptr %.sink.i.i932, align 4, !tbaa !58
  %i.asz = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 8 ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !58
  %i.atb = tail call i32 @llvm.smax.i32(i32 %i.ata, i32 %i.asy)
  store i32 %i.atb, ptr %i.asz, align 4, !tbaa !58
  %i.atc = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 4 ; 2 uses
  %i.atd = load i32, ptr %i.atc, align 4, !tbaa !58
  %i.ate = tail call i32 @llvm.smin.i32(i32 %i.atd, i32 %i.aok)
  store i32 %i.ate, ptr %i.atc, align 4, !tbaa !58
  %i.atf = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 12 ; 2 uses
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !58
  %i.ath = tail call i32 @llvm.smax.i32(i32 %i.atg, i32 %i.aok)
  store i32 %i.ath, ptr %i.atf, align 4, !tbaa !58
  %i.ati = getelementptr inbounds nuw i8, ptr %.sink.i.i932, i64 16 ; 2 uses
  %i.atj = load i32, ptr %i.ati, align 4, !tbaa !58
  %i.atk = add nsw i32 %i.atj, 1
  store i32 %i.atk, ptr %i.ati, align 4, !tbaa !58
  %i.atl = getelementptr inbounds nuw [16 x i8], ptr %i.aqr, i64 %i.asv ; 3 uses
  %i.atm = load i64, ptr %i.atl, align 8, !tbaa !116
  %i.atn = add i64 %i.atm, %indvars.iv1222
  store i64 %i.atn, ptr %i.atl, align 8, !tbaa !116
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv
  store i32 0, ptr %i.asr, align 4, !tbaa !58
  %i.ato = load i32, ptr %i.aqs, align 4, !tbaa !58
  %i.atp = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 2 uses
  %..i936 = tail call i32 @llvm.smin.i32(i32 %i.ato, i32 %i.atp)
  store i32 %..i936, ptr %i.aqs, align 4, !tbaa !58
  %i.atq = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8 ; 2 uses
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !58
  %i.ats = tail call i32 @llvm.smax.i32(i32 %i.atr, i32 %i.atp)
  store i32 %i.ats, ptr %i.atq, align 4, !tbaa !58
  %i.att = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4 ; 2 uses
  %i.atu = load i32, ptr %i.att, align 4, !tbaa !58
  %i.atv = tail call i32 @llvm.smin.i32(i32 %i.atu, i32 %i.aol)
  store i32 %i.atv, ptr %i.att, align 4, !tbaa !58
  %i.atw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !58
  %i.aty = tail call i32 @llvm.smax.i32(i32 %i.atx, i32 %i.aol)
  store i32 %i.aty, ptr %i.atw, align 4, !tbaa !58
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16 ; 2 uses
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !58
  %i.aub = add nsw i32 %i.aua, 1
  store i32 %i.aub, ptr %i.atz, align 4, !tbaa !58
  %i.auc = load i64, ptr %i.aqr, align 8, !tbaa !116
  %i.aud = add i64 %i.auc, %indvars.iv1222
  store i64 %i.aud, ptr %i.aqr, align 8, !tbaa !116
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sink1345 = phi ptr [ %i.aqr, %bb.bx ], [ %i.atl, %bb.bw ]
  %i.aue = getelementptr inbounds nuw i8, ptr %.sink1345, i64 8 ; 2 uses
  %i.auf = load i64, ptr %i.aue, align 8, !tbaa !117
  %i.aug = add i64 %i.auf, %i.aod
  store i64 %i.aug, ptr %i.aue, align 8, !tbaa !117
  %i.auh = getelementptr inbounds nuw i8, ptr %i.anx, i64 %i.aqw
  %i.aui = load i8, ptr %i.auh, align 1, !tbaa !32
  %.not789 = icmp eq i8 %i.aui, 0
  %i.auj = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.aqw ; 2 uses
  br i1 %.not789, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %i.aoy, ptr %i.auj, align 4, !tbaa !58
  %i.auk = load i32, ptr %i.add, align 4, !tbaa !96
  %i.aul = icmp slt i32 %i.auk, 2
  %i.aum = load i64, ptr %i.adf, align 8
  %i.aun = sext i32 %i.aoy to i64                 ; 2 uses
  %i.auo = mul i64 %i.aum, %i.aun
  %.sink.idx.i.i937 = select i1 %i.aul, i64 0, i64 %i.auo
  %.sink.i.i938 = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %.sink.idx.i.i937 ; 6 uses
  %i.aup = load i32, ptr %.sink.i.i938, align 4, !tbaa !58
  %i.auq = trunc nuw nsw i64 %i.aqw to i32        ; 2 uses
  %..i939 = tail call i32 @llvm.smin.i32(i32 %i.aup, i32 %i.auq)
  store i32 %..i939, ptr %.sink.i.i938, align 4, !tbaa !58
  %i.aur = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 8 ; 2 uses
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !58
  %i.aut = tail call i32 @llvm.smax.i32(i32 %i.aus, i32 %i.auq)
  store i32 %i.aut, ptr %i.aur, align 4, !tbaa !58
  %i.auu = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 4 ; 2 uses
  %i.auv = load i32, ptr %i.auu, align 4, !tbaa !58
  %i.auw = tail call i32 @llvm.smin.i32(i32 %i.auv, i32 %i.aom)
  store i32 %i.auw, ptr %i.auu, align 4, !tbaa !58
  %i.aux = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 12 ; 2 uses
  %i.auy = load i32, ptr %i.aux, align 4, !tbaa !58
  %i.auz = tail call i32 @llvm.smax.i32(i32 %i.auy, i32 %i.aom)
  store i32 %i.auz, ptr %i.aux, align 4, !tbaa !58
  %i.ava = getelementptr inbounds nuw i8, ptr %.sink.i.i938, i64 16 ; 2 uses
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !58
  %i.avc = add nsw i32 %i.avb, 1
  store i32 %i.avc, ptr %i.ava, align 4, !tbaa !58
  %i.avd = getelementptr inbounds nuw [16 x i8], ptr %i.aqr, i64 %i.aun ; 2 uses
  %i.ave = load <2 x i64>, ptr %i.avd, align 8, !tbaa !39
  %i.avf = insertelement <2 x i64> %i.aoo, i64 %i.aqw, i64 0
  %i.avg = add <2 x i64> %i.ave, %i.avf
  store <2 x i64> %i.avg, ptr %i.avd, align 8, !tbaa !39
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  store i32 0, ptr %i.auj, align 4, !tbaa !58
  %i.avh = load i32, ptr %i.aqs, align 4, !tbaa !58
  %i.avi = trunc nuw nsw i64 %i.aqw to i32        ; 2 uses
  %..i942 = tail call i32 @llvm.smin.i32(i32 %i.avh, i32 %i.avi)
  store i32 %..i942, ptr %i.aqs, align 4, !tbaa !58
  %i.avj = getelementptr inbounds nuw i8, ptr %i.aqs, i64 8 ; 2 uses
  %i.avk = load i32, ptr %i.avj, align 4, !tbaa !58
  %i.avl = tail call i32 @llvm.smax.i32(i32 %i.avk, i32 %i.avi)
  store i32 %i.avl, ptr %i.avj, align 4, !tbaa !58
  %i.avm = getelementptr inbounds nuw i8, ptr %i.aqs, i64 4 ; 2 uses
  %i.avn = load i32, ptr %i.avm, align 4, !tbaa !58
  %i.avo = tail call i32 @llvm.smin.i32(i32 %i.avn, i32 %i.aon)
  store i32 %i.avo, ptr %i.avm, align 4, !tbaa !58
  %i.avp = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !58
  %i.avr = tail call i32 @llvm.smax.i32(i32 %i.avq, i32 %i.aon)
  store i32 %i.avr, ptr %i.avp, align 4, !tbaa !58
  %i.avs = getelementptr inbounds nuw i8, ptr %i.aqs, i64 16 ; 2 uses
  %i.avt = load i32, ptr %i.avs, align 4, !tbaa !58
  %i.avu = add nsw i32 %i.avt, 1
  store i32 %i.avu, ptr %i.avs, align 4, !tbaa !58
  %i.avv = load <2 x i64>, ptr %i.aqr, align 8, !tbaa !39
  %i.avw = insertelement <2 x i64> %i.aoo, i64 %i.aqw, i64 0
  %i.avx = add <2 x i64> %i.avv, %i.avw
  store <2 x i64> %i.avx, ptr %i.aqr, align 8, !tbaa !39
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bo
  store i32 0, ptr %i.aos, align 4, !tbaa !58
  %i.avy = or disjoint i64 %indvars.iv1222, 1     ; 5 uses
  %i.avz = getelementptr inbounds nuw [4 x i8], ptr %i.aoa, i64 %i.avy
  store i32 0, ptr %i.avz, align 4, !tbaa !58
  %i.awa = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %indvars.iv1222
  store i32 0, ptr %i.awa, align 4, !tbaa !58
  %i.awb = getelementptr inbounds nuw [4 x i8], ptr %i.aob, i64 %i.avy
  store i32 0, ptr %i.awb, align 4, !tbaa !58
  %i.awc = load ptr, ptr %i.ade, align 8, !tbaa !54 ; 6 uses
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !58
  %i.awe = trunc nuw nsw i64 %indvars.iv1222 to i32 ; 4 uses
  %..i945 = tail call i32 @llvm.smin.i32(i32 %i.awd, i32 %i.awe)
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awc, i64 8 ; 2 uses
  %i.awg = load i32, ptr %i.awf, align 4, !tbaa !58
  %i.awh = tail call i32 @llvm.smax.i32(i32 %i.awg, i32 %i.awe)
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awc, i64 4 ; 2 uses
  %i.awj = load i32, ptr %i.awi, align 4, !tbaa !58
  %i.awk = tail call i32 @llvm.smin.i32(i32 %i.awj, i32 %i.aoe)
  %i.awl = getelementptr inbounds nuw i8, ptr %i.awc, i64 12 ; 2 uses
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !58
  %i.awn = tail call i32 @llvm.smax.i32(i32 %i.awm, i32 %i.aoe)
  %i.awo = getelementptr inbounds nuw i8, ptr %i.awc, i64 16 ; 2 uses
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !58
  %i.awq = load ptr, ptr %i.adg, align 8, !tbaa !49 ; 3 uses
  %i.awr = load i64, ptr %i.awq, align 8, !tbaa !116
  %i.aws = add i64 %i.awr, %indvars.iv1222
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awq, i64 8 ; 2 uses
  %i.awu = load i64, ptr %i.awt, align 8, !tbaa !117
  %i.awv = trunc nuw nsw i64 %i.avy to i32        ; 4 uses
  %..i948 = tail call i32 @llvm.smin.i32(i32 %..i945, i32 %i.awv)
  %i.aww = tail call i32 @llvm.smax.i32(i32 %i.awh, i32 %i.awv)
  %i.awx = add i64 %i.aws, %i.avy
  %..i951 = tail call i32 @llvm.smin.i32(i32 %..i948, i32 %i.awe)
  %i.awy = tail call i32 @llvm.umax.i32(i32 %i.aww, i32 %i.awe)
  %i.awz = tail call i32 @llvm.smin.i32(i32 %i.awk, i32 %i.aof)
  %i.axa = tail call i32 @llvm.smax.i32(i32 %i.awn, i32 %i.aof)
  %i.axb = add i64 %i.awx, %indvars.iv1222
  %..i954 = tail call i32 @llvm.smin.i32(i32 %..i951, i32 %i.awv)
  store i32 %..i954, ptr %i.awc, align 4, !tbaa !58
  %i.axc = tail call i32 @llvm.smax.i32(i32 %i.awy, i32 %i.awv)
  store i32 %i.axc, ptr %i.awf, align 4, !tbaa !58
  store i32 %i.awz, ptr %i.awi, align 4, !tbaa !58
  store i32 %i.axa, ptr %i.awl, align 4, !tbaa !58
  %i.axd = add nsw i32 %i.awp, 4
  store i32 %i.axd, ptr %i.awo, align 4, !tbaa !58
  %i.axe = add i64 %i.axb, %i.avy
  store i64 %i.axe, ptr %i.awq, align 8, !tbaa !116
  %.reass1309 = add i64 %i.awu, %invariant.op1308
  store i64 %.reass1309, ptr %i.awt, align 8, !tbaa !117
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bz, %bb.ca, %bb.cb
  %indvars.iv.next1223 = add nuw nsw i64 %indvars.iv1222, 2 ; 2 uses
  %i.axf = load i32, ptr %i.z, align 4, !tbaa !51 ; 2 uses
  %i.axg = sext i32 %i.axf to i64
  %i.axh = icmp slt i64 %indvars.iv.next1223, %i.axg
  br i1 %i.axh, label %bb.bo, label %._crit_edge1171, !llvm.loop !432

bb.cd:                                            ; preds = %bb.a
  %i.axi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !444, !nonnull !93, !align !94 ; 89 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 456
  store i32 %.sroa.speculated, ptr %i.axk, align 8, !tbaa !114
  %i.axl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axm = load ptr, ptr %i.axl, align 8, !tbaa !443, !nonnull !93, !align !94 ; 19 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.axo = load i32, ptr %i.axn, align 8, !tbaa !38
  %i.axp = and i32 %i.axo, 1
  %.not = icmp eq i32 %i.axp, 0
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axm, i64 12 ; 7 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !51 ; 2 uses
  %i.axs = and i32 %i.axr, 1
  %.not765 = icmp eq i32 %i.axs, 0                ; 2 uses
  %i.axt = icmp slt i32 %i.b, %.sroa.speculated   ; 4 uses
  br i1 %.not, label %bb.dx, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1119, label %.preheader1121

.preheader1121:                                   ; preds = %bb.ce
  br i1 %i.axt, label %.lr.ph1126, label %.loopexit

.lr.ph1126:                                       ; preds = %.preheader1121
  %i.axu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axv = sext i32 %i.b to i64
  %i.axw = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !54
  %i.axx = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axm, i64 12 ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ays = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.aza = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azb = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.azc = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.aze = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azf = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.azg = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azh = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.azi = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azj = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azk = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  br label %bb.cf

.preheader1119:                                   ; preds = %bb.ce
  br i1 %i.axt, label %.lr.ph1133, label %.loopexit

.lr.ph1133:                                       ; preds = %.preheader1119
  %i.azl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.azm = sext i32 %i.b to i64
  %i.azn = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1228 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1229 = load ptr, ptr %.phi.trans.insert1228, align 8, !tbaa !54
  %i.azo = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.azp = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !54
  %i.azr = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.azs = getelementptr inbounds nuw i8, ptr %i.axm, i64 12
  %i.azt = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azu = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.azv = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.azw = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.azx = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.azy = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.baa = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bab = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bac = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bad = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bae = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.baf = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bag = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bah = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bai = getelementptr inbounds nuw i8, ptr %i.axm, i64 8
  %i.baj = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bak = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bal = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bam = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.ban = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bao = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bap = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.baq = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bar = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bas = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bat = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bau = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  br label %bb.df

bb.cf:                                            ; preds = %.lr.ph1126, %._crit_edge
  %indvars.iv1183 = phi i64 [ %i.axv, %.lr.ph1126 ], [ %indvars.iv.next1184, %._crit_edge ] ; 13 uses
  %i.bav = load i64, ptr %i.axx, align 8, !tbaa !39 ; 2 uses
  %i.baw = mul i64 %i.bav, %indvars.iv1183
  %i.bax = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.baw ; 3 uses
  %i.bay = getelementptr inbounds nuw i8, ptr %i.bax, i64 %i.bav ; 3 uses
  %i.baz = load ptr, ptr %i.axy, align 8, !tbaa !54
  %i.bba = load i64, ptr %i.axz, align 8, !tbaa !39 ; 2 uses
  %i.bbb = mul i64 %i.bba, %indvars.iv1183
  %i.bbc = getelementptr inbounds nuw i8, ptr %i.baz, i64 %i.bbb ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %i.bbc, i64 %i.bba ; 6 uses
  %i.bbe = load i32, ptr %i.aya, align 4, !tbaa !51
  %i.bbf = icmp sgt i32 %i.bbe, 0
  br i1 %i.bbf, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.cf
  %i.bbg = or disjoint i64 %indvars.iv1183, 1     ; 16 uses
  %i.bbh = trunc nsw i64 %indvars.iv1183 to i32   ; 4 uses
  %i.bbi = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbj = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %invariant.op = shl i64 %i.bbg, 1
  %i.bbk = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbl = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbm = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbn = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbo = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbp = trunc nsw i64 %indvars.iv1183 to i32   ; 2 uses
  %i.bbq = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbr = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbs = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbt = trunc nsw i64 %i.bbg to i32            ; 2 uses
  %i.bbu = insertelement <2 x i64> poison, i64 %i.bbg, i64 1 ; 4 uses
  br label %bb.cg

._crit_edge:                                      ; preds = %bb.de, %bb.cf
  %indvars.iv.next1184 = add nsw i64 %indvars.iv1183, 2 ; 2 uses
  %i.bbv = icmp slt i64 %indvars.iv.next1184, %i.axw
  br i1 %i.bbv, label %bb.cf, label %.loopexit, !llvm.loop !433

bb.cg:                                            ; preds = %.lr.ph, %bb.de
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.de ] ; 27 uses
  %i.bbw = phi ptr [ %i.aya, %.lr.ph ], [ %i.axq, %bb.de ] ; 2 uses
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %i.bbc, i64 %indvars.iv ; 4 uses
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !58 ; 2 uses
  %i.bbz = icmp sgt i32 %i.bby, 0
  br i1 %i.bbz, label %bb.ch, label %bb.cz

bb.ch:                                            ; preds = %bb.cg
  %i.bca = load ptr, ptr %i.axu, align 8, !tbaa !128
  %i.bcb = zext nneg i32 %i.bby to i64
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %i.bcb
  %i.bcd = load i32, ptr %i.bcc, align 4, !tbaa !58 ; 10 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bax, i64 %indvars.iv
  %i.bcf = load i8, ptr %i.bce, align 1, !tbaa !32
  %.not779 = icmp eq i8 %i.bcf, 0
  br i1 %.not779, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i32 %i.bcd, ptr %i.bbx, align 4, !tbaa !58
  %i.bcg = load i32, ptr %i.ayf, align 4, !tbaa !96
  %i.bch = icmp slt i32 %i.bcg, 2
  %i.bci = load ptr, ptr %i.ayg, align 8, !tbaa !54
  %i.bcj = load i64, ptr %i.ayh, align 8
  %i.bck = sext i32 %i.bcd to i64                 ; 2 uses
  %i.bcl = mul i64 %i.bcj, %i.bck
  %.sink.idx.i.i955 = select i1 %i.bch, i64 0, i64 %i.bcl
end_hunk_9
begin_hunk_10_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.btb = add nsw i32 %i.bta, 1
  store i32 %i.btb, ptr %i.bsz, align 4, !tbaa !58
  %i.btc = load ptr, ptr %i.bah, align 8, !tbaa !49 ; 3 uses
  %i.btd = load i64, ptr %i.btc, align 8, !tbaa !116
  %i.bte = add i64 %i.btd, %i.brl
  store i64 %i.bte, ptr %i.btc, align 8, !tbaa !116
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.sink1360 = phi ptr [ %i.btc, %bb.dm ], [ %i.bsk, %bb.dl ]
  %i.btf = getelementptr inbounds nuw i8, ptr %.sink1360, i64 8 ; 2 uses
  %i.btg = load i64, ptr %i.btf, align 8, !tbaa !117
  %i.bth = add i64 %i.btg, %indvars.iv1189
  store i64 %i.bth, ptr %i.btf, align 8, !tbaa !117
  %i.bti = load i32, ptr %i.bai, align 8, !tbaa !38
  %i.btj = sext i32 %i.bti to i64
  %i.btk = icmp slt i64 %i.bow, %i.btj
  br i1 %i.btk, label %bb.do, label %bb.dw

bb.do:                                            ; preds = %bb.dn
  %i.btl = getelementptr inbounds nuw i8, ptr %i.bop, i64 %indvars.iv1186
  %i.btm = load i8, ptr %i.btl, align 1, !tbaa !32
  %.not777 = icmp eq i8 %i.btm, 0
  %i.btn = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %indvars.iv1186 ; 2 uses
  br i1 %.not777, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  store i32 %i.bpp, ptr %i.btn, align 4, !tbaa !58
  %i.bto = load i32, ptr %i.baj, align 4, !tbaa !96
  %i.btp = icmp slt i32 %i.bto, 2
  %i.btq = load ptr, ptr %i.bak, align 8, !tbaa !54
  %i.btr = load i64, ptr %i.bal, align 8
  %i.bts = sext i32 %i.bpp to i64                 ; 2 uses
  %i.btt = mul i64 %i.btr, %i.bts
  %.sink.idx.i.i1012 = select i1 %i.btp, i64 0, i64 %i.btt
  %.sink.i.i1013 = getelementptr inbounds nuw i8, ptr %i.btq, i64 %.sink.idx.i.i1012 ; 6 uses
  %i.btu = load i32, ptr %.sink.i.i1013, align 4, !tbaa !58
  %i.btv = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1014 = tail call i32 @llvm.smin.i32(i32 %i.btu, i32 %i.btv)
  store i32 %..i1014, ptr %.sink.i.i1013, align 4, !tbaa !58
  %i.btw = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 8 ; 2 uses
  %i.btx = load i32, ptr %i.btw, align 4, !tbaa !58
  %i.bty = tail call i32 @llvm.smax.i32(i32 %i.btx, i32 %i.btv)
  store i32 %i.bty, ptr %i.btw, align 4, !tbaa !58
  %i.btz = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 4 ; 2 uses
  %i.bua = load i32, ptr %i.btz, align 4, !tbaa !58
  %i.bub = tail call i32 @llvm.smin.i32(i32 %i.bua, i32 %i.bpd)
  store i32 %i.bub, ptr %i.btz, align 4, !tbaa !58
  %i.buc = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 12 ; 2 uses
  %i.bud = load i32, ptr %i.buc, align 4, !tbaa !58
  %i.bue = tail call i32 @llvm.smax.i32(i32 %i.bud, i32 %i.bpd)
  store i32 %i.bue, ptr %i.buc, align 4, !tbaa !58
  %i.buf = getelementptr inbounds nuw i8, ptr %.sink.i.i1013, i64 16 ; 2 uses
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !58
  %i.buh = add nsw i32 %i.bug, 1
  store i32 %i.buh, ptr %i.buf, align 4, !tbaa !58
  %i.bui = load ptr, ptr %i.bam, align 8, !tbaa !49
  %i.buj = getelementptr inbounds nuw [16 x i8], ptr %i.bui, i64 %i.bts ; 3 uses
  %i.buk = load i64, ptr %i.buj, align 8, !tbaa !116
  %i.bul = add i64 %i.buk, %indvars.iv1186
  store i64 %i.bul, ptr %i.buj, align 8, !tbaa !116
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  store i32 0, ptr %i.btn, align 4, !tbaa !58
  %i.bum = load ptr, ptr %i.ban, align 8, !tbaa !54 ; 6 uses
  %i.bun = load i32, ptr %i.bum, align 4, !tbaa !58
  %i.buo = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 2 uses
  %..i1017 = tail call i32 @llvm.smin.i32(i32 %i.bun, i32 %i.buo)
  store i32 %..i1017, ptr %i.bum, align 4, !tbaa !58
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bum, i64 8 ; 2 uses
  %i.buq = load i32, ptr %i.bup, align 4, !tbaa !58
  %i.bur = tail call i32 @llvm.smax.i32(i32 %i.buq, i32 %i.buo)
  store i32 %i.bur, ptr %i.bup, align 4, !tbaa !58
  %i.bus = getelementptr inbounds nuw i8, ptr %i.bum, i64 4 ; 2 uses
  %i.but = load i32, ptr %i.bus, align 4, !tbaa !58
  %i.buu = tail call i32 @llvm.smin.i32(i32 %i.but, i32 %i.bpe)
  store i32 %i.buu, ptr %i.bus, align 4, !tbaa !58
  %i.buv = getelementptr inbounds nuw i8, ptr %i.bum, i64 12 ; 2 uses
  %i.buw = load i32, ptr %i.buv, align 4, !tbaa !58
  %i.bux = tail call i32 @llvm.smax.i32(i32 %i.buw, i32 %i.bpe)
  store i32 %i.bux, ptr %i.buv, align 4, !tbaa !58
  %i.buy = getelementptr inbounds nuw i8, ptr %i.bum, i64 16 ; 2 uses
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !58
  %i.bva = add nsw i32 %i.buz, 1
  store i32 %i.bva, ptr %i.buy, align 4, !tbaa !58
  %i.bvb = load ptr, ptr %i.bao, align 8, !tbaa !49 ; 3 uses
  %i.bvc = load i64, ptr %i.bvb, align 8, !tbaa !116
  %i.bvd = add i64 %i.bvc, %indvars.iv1186
  store i64 %i.bvd, ptr %i.bvb, align 8, !tbaa !116
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.sink1363 = phi ptr [ %i.bvb, %bb.dq ], [ %i.buj, %bb.dp ]
  %i.bve = getelementptr inbounds nuw i8, ptr %.sink1363, i64 8 ; 2 uses
  %i.bvf = load i64, ptr %i.bve, align 8, !tbaa !117
  %i.bvg = add i64 %i.bvf, %i.bow
  store i64 %i.bvg, ptr %i.bve, align 8, !tbaa !117
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bop, i64 %i.brl
  %i.bvi = load i8, ptr %i.bvh, align 1, !tbaa !32
  %.not778 = icmp eq i8 %i.bvi, 0
  %i.bvj = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %i.brl ; 2 uses
  br i1 %.not778, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.bpp, ptr %i.bvj, align 4, !tbaa !58
  %i.bvk = load i32, ptr %i.bap, align 4, !tbaa !96
  %i.bvl = icmp slt i32 %i.bvk, 2
  %i.bvm = load ptr, ptr %i.baq, align 8, !tbaa !54
  %i.bvn = load i64, ptr %i.bar, align 8
  %i.bvo = sext i32 %i.bpp to i64                 ; 2 uses
  %i.bvp = mul i64 %i.bvn, %i.bvo
  %.sink.idx.i.i1018 = select i1 %i.bvl, i64 0, i64 %i.bvp
  %.sink.i.i1019 = getelementptr inbounds nuw i8, ptr %i.bvm, i64 %.sink.idx.i.i1018 ; 6 uses
  %i.bvq = load i32, ptr %.sink.i.i1019, align 4, !tbaa !58
  %i.bvr = trunc nuw nsw i64 %i.brl to i32        ; 2 uses
  %..i1020 = tail call i32 @llvm.smin.i32(i32 %i.bvq, i32 %i.bvr)
  store i32 %..i1020, ptr %.sink.i.i1019, align 4, !tbaa !58
  %i.bvs = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 8 ; 2 uses
  %i.bvt = load i32, ptr %i.bvs, align 4, !tbaa !58
  %i.bvu = tail call i32 @llvm.smax.i32(i32 %i.bvt, i32 %i.bvr)
  store i32 %i.bvu, ptr %i.bvs, align 4, !tbaa !58
  %i.bvv = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 4 ; 2 uses
  %i.bvw = load i32, ptr %i.bvv, align 4, !tbaa !58
  %i.bvx = tail call i32 @llvm.smin.i32(i32 %i.bvw, i32 %i.bpf)
  store i32 %i.bvx, ptr %i.bvv, align 4, !tbaa !58
  %i.bvy = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 12 ; 2 uses
  %i.bvz = load i32, ptr %i.bvy, align 4, !tbaa !58
  %i.bwa = tail call i32 @llvm.smax.i32(i32 %i.bvz, i32 %i.bpf)
  store i32 %i.bwa, ptr %i.bvy, align 4, !tbaa !58
  %i.bwb = getelementptr inbounds nuw i8, ptr %.sink.i.i1019, i64 16 ; 2 uses
  %i.bwc = load i32, ptr %i.bwb, align 4, !tbaa !58
  %i.bwd = add nsw i32 %i.bwc, 1
  store i32 %i.bwd, ptr %i.bwb, align 4, !tbaa !58
  %i.bwe = load ptr, ptr %i.bas, align 8, !tbaa !49
  %i.bwf = getelementptr inbounds nuw [16 x i8], ptr %i.bwe, i64 %i.bvo ; 2 uses
  %i.bwg = load <2 x i64>, ptr %i.bwf, align 8, !tbaa !39
  %i.bwh = insertelement <2 x i64> %i.bph, i64 %i.brl, i64 0
  %i.bwi = add <2 x i64> %i.bwg, %i.bwh
  store <2 x i64> %i.bwi, ptr %i.bwf, align 8, !tbaa !39
  br label %bb.dw

bb.dt:                                            ; preds = %bb.dr
  store i32 0, ptr %i.bvj, align 4, !tbaa !58
  %i.bwj = load ptr, ptr %i.bat, align 8, !tbaa !54 ; 6 uses
  %i.bwk = load i32, ptr %i.bwj, align 4, !tbaa !58
  %i.bwl = trunc nuw nsw i64 %i.brl to i32        ; 2 uses
  %..i1023 = tail call i32 @llvm.smin.i32(i32 %i.bwk, i32 %i.bwl)
  store i32 %..i1023, ptr %i.bwj, align 4, !tbaa !58
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwj, i64 8 ; 2 uses
  %i.bwn = load i32, ptr %i.bwm, align 4, !tbaa !58
  %i.bwo = tail call i32 @llvm.smax.i32(i32 %i.bwn, i32 %i.bwl)
  store i32 %i.bwo, ptr %i.bwm, align 4, !tbaa !58
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwj, i64 4 ; 2 uses
  %i.bwq = load i32, ptr %i.bwp, align 4, !tbaa !58
  %i.bwr = tail call i32 @llvm.smin.i32(i32 %i.bwq, i32 %i.bpg)
  store i32 %i.bwr, ptr %i.bwp, align 4, !tbaa !58
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwj, i64 12 ; 2 uses
  %i.bwt = load i32, ptr %i.bws, align 4, !tbaa !58
  %i.bwu = tail call i32 @llvm.smax.i32(i32 %i.bwt, i32 %i.bpg)
  store i32 %i.bwu, ptr %i.bws, align 4, !tbaa !58
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwj, i64 16 ; 2 uses
  %i.bww = load i32, ptr %i.bwv, align 4, !tbaa !58
  %i.bwx = add nsw i32 %i.bww, 1
  store i32 %i.bwx, ptr %i.bwv, align 4, !tbaa !58
  %i.bwy = load ptr, ptr %i.bau, align 8, !tbaa !49 ; 2 uses
  %i.bwz = load <2 x i64>, ptr %i.bwy, align 8, !tbaa !39
  %i.bxa = insertelement <2 x i64> %i.bph, i64 %i.brl, i64 0
  %i.bxb = add <2 x i64> %i.bwz, %i.bxa
  store <2 x i64> %i.bxb, ptr %i.bwy, align 8, !tbaa !39
  br label %bb.dw

bb.du:                                            ; preds = %bb.dg
  store i32 0, ptr %i.bpj, align 4, !tbaa !58
  %i.bxc = or disjoint i64 %indvars.iv1186, 1     ; 5 uses
  %i.bxd = getelementptr inbounds nuw [4 x i8], ptr %i.bos, i64 %i.bxc
  store i32 0, ptr %i.bxd, align 4, !tbaa !58
  %i.bxe = load ptr, ptr %i.azt, align 8, !tbaa !54 ; 8 uses
  %i.bxf = load i32, ptr %i.bxe, align 4, !tbaa !58
  %i.bxg = trunc nuw nsw i64 %indvars.iv1186 to i32 ; 4 uses
  %..i1026 = tail call i32 @llvm.smin.i32(i32 %i.bxf, i32 %i.bxg)
  %i.bxh = getelementptr inbounds nuw i8, ptr %i.bxe, i64 8 ; 4 uses
  %i.bxi = load i32, ptr %i.bxh, align 4, !tbaa !58
  %i.bxj = tail call i32 @llvm.smax.i32(i32 %i.bxi, i32 %i.bxg)
  %i.bxk = getelementptr inbounds nuw i8, ptr %i.bxe, i64 4 ; 4 uses
  %i.bxl = load i32, ptr %i.bxk, align 4, !tbaa !58
  %i.bxm = tail call i32 @llvm.smin.i32(i32 %i.bxl, i32 %i.box)
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxe, i64 12 ; 4 uses
  %i.bxo = load i32, ptr %i.bxn, align 4, !tbaa !58
  %i.bxp = tail call i32 @llvm.smax.i32(i32 %i.bxo, i32 %i.box)
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bxe, i64 16 ; 4 uses
  %i.bxr = load i32, ptr %i.bxq, align 4, !tbaa !58
  %i.bxs = load ptr, ptr %i.azu, align 8, !tbaa !49 ; 4 uses
  %i.bxt = load i64, ptr %i.bxs, align 8, !tbaa !116
  %i.bxu = add i64 %i.bxt, %indvars.iv1186
  %i.bxv = getelementptr inbounds nuw i8, ptr %i.bxs, i64 8 ; 3 uses
  %i.bxw = load i64, ptr %i.bxv, align 8, !tbaa !117
  %i.bxx = trunc nuw nsw i64 %i.bxc to i32        ; 4 uses
  %..i1029 = tail call i32 @llvm.smin.i32(i32 %..i1026, i32 %i.bxx)
  store i32 %..i1029, ptr %i.bxe, align 4, !tbaa !58
  %i.bxy = tail call i32 @llvm.smax.i32(i32 %i.bxj, i32 %i.bxx)
  store i32 %i.bxy, ptr %i.bxh, align 4, !tbaa !58
  store i32 %i.bxm, ptr %i.bxk, align 4, !tbaa !58
  store i32 %i.bxp, ptr %i.bxn, align 4, !tbaa !58
  %i.bxz = add nsw i32 %i.bxr, 2
  store i32 %i.bxz, ptr %i.bxq, align 4, !tbaa !58
  %i.bya = add i64 %i.bxu, %i.bxc                 ; 2 uses
  store i64 %i.bya, ptr %i.bxs, align 8, !tbaa !116
  %.reass1281 = add i64 %i.bxw, %invariant.op1280 ; 2 uses
  store i64 %.reass1281, ptr %i.bxv, align 8, !tbaa !117
  %i.byb = load i32, ptr %i.azv, align 8, !tbaa !38
  %i.byc = sext i32 %i.byb to i64
  %i.byd = icmp slt i64 %i.bow, %i.byc
  br i1 %i.byd, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.bye = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %indvars.iv1186
  store i32 0, ptr %i.bye, align 4, !tbaa !58
  %i.byf = getelementptr inbounds nuw [4 x i8], ptr %i.bot, i64 %i.bxc
  store i32 0, ptr %i.byf, align 4, !tbaa !58
  %i.byg = load i32, ptr %i.bxe, align 4, !tbaa !58
  %..i1032 = tail call i32 @llvm.smin.i32(i32 %i.byg, i32 %i.bxg)
  %i.byh = load i32, ptr %i.bxh, align 4, !tbaa !58
  %i.byi = tail call i32 @llvm.smax.i32(i32 %i.byh, i32 %i.bxg)
  %i.byj = load i32, ptr %i.bxk, align 4, !tbaa !58
  %i.byk = tail call i32 @llvm.smin.i32(i32 %i.byj, i32 %i.boy)
  %i.byl = load i32, ptr %i.bxn, align 4, !tbaa !58
  %i.bym = tail call i32 @llvm.smax.i32(i32 %i.byl, i32 %i.boy)
  %i.byn = load i32, ptr %i.bxq, align 4, !tbaa !58
  %i.byo = add i64 %i.bya, %indvars.iv1186
  %..i1035 = tail call i32 @llvm.smin.i32(i32 %..i1032, i32 %i.bxx)
  store i32 %..i1035, ptr %i.bxe, align 4, !tbaa !58
  %i.byp = tail call i32 @llvm.smax.i32(i32 %i.byi, i32 %i.bxx)
  store i32 %i.byp, ptr %i.bxh, align 4, !tbaa !58
  store i32 %i.byk, ptr %i.bxk, align 4, !tbaa !58
  store i32 %i.bym, ptr %i.bxn, align 4, !tbaa !58
  %i.byq = add nsw i32 %i.byn, 2
  store i32 %i.byq, ptr %i.bxq, align 4, !tbaa !58
  %i.byr = add i64 %i.byo, %i.bxc
  store i64 %i.byr, ptr %i.bxs, align 8, !tbaa !116
  %.reass1283 = add i64 %.reass1281, %invariant.op1282
  store i64 %.reass1283, ptr %i.bxv, align 8, !tbaa !117
  br label %bb.dw

bb.dw:                                            ; preds = %bb.du, %bb.dv, %bb.dn, %bb.dt, %bb.ds
  %indvars.iv.next1187 = add nuw nsw i64 %indvars.iv1186, 2 ; 2 uses
  %i.bys = load i32, ptr %i.axq, align 4, !tbaa !51
  %i.byt = sext i32 %i.bys to i64
  %i.byu = icmp slt i64 %indvars.iv.next1187, %i.byt
  br i1 %i.byu, label %bb.dg, label %._crit_edge1131, !llvm.loop !436

bb.dx:                                            ; preds = %bb.cd
  br i1 %.not765, label %.preheader1115, label %.preheader1117

.preheader1117:                                   ; preds = %bb.dx
  br i1 %i.axt, label %.lr.ph1139, label %.loopexit

.lr.ph1139:                                       ; preds = %.preheader1117
  %i.byv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.byw = sext i32 %i.b to i64
  %i.byx = sext i32 %.sroa.speculated to i64
  %.phi.trans.insert1230 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.pre1231 = load ptr, ptr %.phi.trans.insert1230, align 8, !tbaa !54
  %i.byy = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.byz = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.bza = load ptr, ptr %i.byz, align 8, !tbaa !54
  %i.bzb = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.bzc = getelementptr inbounds nuw i8, ptr %i.axm, i64 12 ; 2 uses
  %i.bzd = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bze = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzg = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bzi = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzj = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzk = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzl = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzn = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzq = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzr = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzs = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzt = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzv = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.axj, i64 12
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.axj, i64 136
  %i.caa = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  %i.cab = getelementptr inbounds nuw i8, ptr %i.axj, i64 32
  %i.cac = getelementptr inbounds nuw i8, ptr %i.axj, i64 432
  br label %bb.dy

.preheader1115:                                   ; preds = %bb.dx
  br i1 %i.axt, label %.lr.ph1146, label %.loopexit

.lr.ph1146:                                       ; preds = %.preheader1115
  %i.cad = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.cae = load ptr, ptr %i.cad, align 8, !tbaa !54
  %i.caf = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.cag = getelementptr inbounds nuw i8, ptr %i.axm, i64 24
  %i.cah = load ptr, ptr %i.cag, align 8, !tbaa !54
  %i.cai = getelementptr inbounds nuw i8, ptr %i.axm, i64 128
  %i.caj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cak = getelementptr inbounds nuw i8, ptr %i.axj, i64 12 ; 4 uses
  %i.cal = getelementptr inbounds nuw i8, ptr %i.axj, i64 32 ; 3 uses
  %i.cam = getelementptr inbounds nuw i8, ptr %i.axj, i64 136 ; 4 uses
  %i.can = getelementptr inbounds nuw i8, ptr %i.axj, i64 432 ; 3 uses
  %i.cao = sext i32 %i.b to i64
  %i.cap = sext i32 %.sroa.speculated to i64
  br label %bb.eq

bb.dy:                                            ; preds = %.lr.ph1139, %._crit_edge1137
  %indvars.iv1195 = phi i64 [ %i.byw, %.lr.ph1139 ], [ %indvars.iv.next1196, %._crit_edge1137 ] ; 13 uses
  %i.caq = load i64, ptr %i.byy, align 8, !tbaa !39 ; 2 uses
  %i.car = mul i64 %i.caq, %indvars.iv1195
  %i.cas = getelementptr inbounds nuw i8, ptr %.pre1231, i64 %i.car ; 3 uses
  %i.cat = getelementptr inbounds nuw i8, ptr %i.cas, i64 %i.caq ; 2 uses
  %i.cau = load i64, ptr %i.bzb, align 8, !tbaa !39 ; 2 uses
  %i.cav = mul i64 %i.cau, %indvars.iv1195
  %i.caw = getelementptr inbounds nuw i8, ptr %i.bza, i64 %i.cav ; 4 uses
  %i.cax = getelementptr inbounds nuw i8, ptr %i.caw, i64 %i.cau ; 4 uses
  %i.cay = load i32, ptr %i.bzc, align 4, !tbaa !51
  %i.caz = icmp sgt i32 %i.cay, 0
  br i1 %i.caz, label %.lr.ph1136, label %._crit_edge1137

.lr.ph1136:                                       ; preds = %bb.dy
  %i.cba = or disjoint i64 %indvars.iv1195, 1     ; 9 uses
  %i.cbb = trunc nsw i64 %indvars.iv1195 to i32   ; 4 uses
  %i.cbc = trunc nsw i64 %i.cba to i32            ; 4 uses
  %invariant.op1284 = add i64 %indvars.iv1195, %i.cba
  %invariant.op1286 = add i64 %indvars.iv1195, %i.cba
  %i.cbd = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbe = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbf = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbg = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbh = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbi = trunc nsw i64 %indvars.iv1195 to i32   ; 2 uses
  %i.cbj = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbk = trunc nsw i64 %i.cba to i32            ; 2 uses
  %i.cbl = insertelement <2 x i64> poison, i64 %i.cba, i64 1 ; 2 uses
  br label %bb.dz

._crit_edge1137:                                  ; preds = %bb.ep, %bb.dy
  %indvars.iv.next1196 = add nsw i64 %indvars.iv1195, 2 ; 2 uses
  %i.cbm = icmp slt i64 %indvars.iv.next1196, %i.byx
  br i1 %i.cbm, label %bb.dy, label %.loopexit, !llvm.loop !437

bb.dz:                                            ; preds = %.lr.ph1136, %bb.ep
  %indvars.iv1192 = phi i64 [ 0, %.lr.ph1136 ], [ %indvars.iv.next1193, %bb.ep ] ; 18 uses
  %i.cbn = phi ptr [ %i.bzc, %.lr.ph1136 ], [ %i.axq, %bb.ep ] ; 2 uses
  %i.cbo = getelementptr inbounds nuw [4 x i8], ptr %i.caw, i64 %indvars.iv1192 ; 4 uses
  %i.cbp = load i32, ptr %i.cbo, align 4, !tbaa !58 ; 2 uses
  %i.cbq = icmp sgt i32 %i.cbp, 0
  br i1 %i.cbq, label %bb.ea, label %bb.en

bb.ea:                                            ; preds = %bb.dz
  %i.cbr = load ptr, ptr %i.byv, align 8, !tbaa !128
  %i.cbs = zext nneg i32 %i.cbp to i64
  %i.cbt = getelementptr inbounds nuw [4 x i8], ptr %i.cbr, i64 %i.cbs
  %i.cbu = load i32, ptr %i.cbt, align 4, !tbaa !58 ; 8 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cas, i64 %indvars.iv1192
  %i.cbw = load i8, ptr %i.cbv, align 1, !tbaa !32
  %.not770 = icmp eq i8 %i.cbw, 0
  br i1 %.not770, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  store i32 %i.cbu, ptr %i.cbo, align 4, !tbaa !58
  %i.cbx = load i32, ptr %i.bzf, align 4, !tbaa !96
  %i.cby = icmp slt i32 %i.cbx, 2
  %i.cbz = load ptr, ptr %i.bzg, align 8, !tbaa !54
  %i.cca = load i64, ptr %i.bzh, align 8
  %i.ccb = sext i32 %i.cbu to i64                 ; 2 uses
  %i.ccc = mul i64 %i.cca, %i.ccb
  %.sink.idx.i.i1036 = select i1 %i.cby, i64 0, i64 %i.ccc
  %.sink.i.i1037 = getelementptr inbounds nuw i8, ptr %i.cbz, i64 %.sink.idx.i.i1036 ; 6 uses
  %i.ccd = load i32, ptr %.sink.i.i1037, align 4, !tbaa !58
  %i.cce = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1038 = tail call i32 @llvm.smin.i32(i32 %i.ccd, i32 %i.cce)
  store i32 %..i1038, ptr %.sink.i.i1037, align 4, !tbaa !58
  %i.ccf = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 8 ; 2 uses
  %i.ccg = load i32, ptr %i.ccf, align 4, !tbaa !58
  %i.cch = tail call i32 @llvm.smax.i32(i32 %i.ccg, i32 %i.cce)
  store i32 %i.cch, ptr %i.ccf, align 4, !tbaa !58
  %i.cci = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 4 ; 2 uses
  %i.ccj = load i32, ptr %i.cci, align 4, !tbaa !58
  %i.cck = tail call i32 @llvm.smin.i32(i32 %i.ccj, i32 %i.cbd)
  store i32 %i.cck, ptr %i.cci, align 4, !tbaa !58
  %i.ccl = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 12 ; 2 uses
  %i.ccm = load i32, ptr %i.ccl, align 4, !tbaa !58
  %i.ccn = tail call i32 @llvm.smax.i32(i32 %i.ccm, i32 %i.cbd)
  store i32 %i.ccn, ptr %i.ccl, align 4, !tbaa !58
  %i.cco = getelementptr inbounds nuw i8, ptr %.sink.i.i1037, i64 16 ; 2 uses
  %i.ccp = load i32, ptr %i.cco, align 4, !tbaa !58
  %i.ccq = add nsw i32 %i.ccp, 1
  store i32 %i.ccq, ptr %i.cco, align 4, !tbaa !58
  %i.ccr = load ptr, ptr %i.bzi, align 8, !tbaa !49
  %i.ccs = getelementptr inbounds nuw [16 x i8], ptr %i.ccr, i64 %i.ccb ; 3 uses
  %i.cct = load i64, ptr %i.ccs, align 8, !tbaa !116
  %i.ccu = add i64 %i.cct, %indvars.iv1192
  store i64 %i.ccu, ptr %i.ccs, align 8, !tbaa !116
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  store i32 0, ptr %i.cbo, align 4, !tbaa !58
  %i.ccv = load ptr, ptr %i.bzj, align 8, !tbaa !54 ; 6 uses
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !58
  %i.ccx = trunc nuw nsw i64 %indvars.iv1192 to i32 ; 2 uses
  %..i1041 = tail call i32 @llvm.smin.i32(i32 %i.ccw, i32 %i.ccx)
  store i32 %..i1041, ptr %i.ccv, align 4, !tbaa !58
  %i.ccy = getelementptr inbounds nuw i8, ptr %i.ccv, i64 8 ; 2 uses
  %i.ccz = load i32, ptr %i.ccy, align 4, !tbaa !58
  %i.cda = tail call i32 @llvm.smax.i32(i32 %i.ccz, i32 %i.ccx)
  store i32 %i.cda, ptr %i.ccy, align 4, !tbaa !58
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccv, i64 4 ; 2 uses
  %i.cdc = load i32, ptr %i.cdb, align 4, !tbaa !58
  %i.cdd = tail call i32 @llvm.smin.i32(i32 %i.cdc, i32 %i.cbe)
  store i32 %i.cdd, ptr %i.cdb, align 4, !tbaa !58
  %i.cde = getelementptr inbounds nuw i8, ptr %i.ccv, i64 12 ; 2 uses
  %i.cdf = load i32, ptr %i.cde, align 4, !tbaa !58
  %i.cdg = tail call i32 @llvm.smax.i32(i32 %i.cdf, i32 %i.cbe)
  store i32 %i.cdg, ptr %i.cde, align 4, !tbaa !58
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.ccv, i64 16 ; 2 uses
  %i.cdi = load i32, ptr %i.cdh, align 4, !tbaa !58
  %i.cdj = add nsw i32 %i.cdi, 1
  store i32 %i.cdj, ptr %i.cdh, align 4, !tbaa !58
  %i.cdk = load ptr, ptr %i.bzk, align 8, !tbaa !49 ; 3 uses
  %i.cdl = load i64, ptr %i.cdk, align 8, !tbaa !116
  %i.cdm = add i64 %i.cdl, %indvars.iv1192
  store i64 %i.cdm, ptr %i.cdk, align 8, !tbaa !116
end_hunk_10
begin_hunk_11_@_ZNK2cv19connectedcomponents23LabelingBolelliParallelIihNS0_9CCStatsOpEE10SecondScanclERKNS_5RangeE:bb.a
  %i.cpg = tail call i32 @llvm.smax.i32(i32 %i.cpf, i32 %i.cpd)
  store i32 %i.cpg, ptr %i.cpe, align 4, !tbaa !58
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cpi = load i32, ptr %i.cph, align 4, !tbaa !58
  %i.cpj = tail call i32 @llvm.smin.i32(i32 %i.cpi, i32 %i.clq)
  store i32 %i.cpj, ptr %i.cph, align 4, !tbaa !58
  %i.cpk = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.cpl = load i32, ptr %i.cpk, align 4, !tbaa !58
  %i.cpm = tail call i32 @llvm.smax.i32(i32 %i.cpl, i32 %i.clq)
  store i32 %i.cpm, ptr %i.cpk, align 4, !tbaa !58
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.cpo = load i32, ptr %i.cpn, align 4, !tbaa !58
  %i.cpp = add nsw i32 %i.cpo, 1
  store i32 %i.cpp, ptr %i.cpn, align 4, !tbaa !58
  %i.cpq = load i64, ptr %i.cnx, align 8, !tbaa !116
  %i.cpr = add i64 %i.cpq, %i.coc
  store i64 %i.cpr, ptr %i.cnx, align 8, !tbaa !116
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ew
  %.sink1378 = phi ptr [ %i.cnx, %bb.ex ], [ %i.coz, %bb.ew ]
  %i.cps = getelementptr inbounds nuw i8, ptr %.sink1378, i64 8 ; 2 uses
  %i.cpt = load i64, ptr %i.cps, align 8, !tbaa !117
  %i.cpu = add i64 %i.cpt, %indvars.iv1201
  store i64 %i.cpu, ptr %i.cps, align 8, !tbaa !117
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cle, i64 %indvars.iv1198
  %i.cpw = load i8, ptr %i.cpv, align 1, !tbaa !32
  %.not768 = icmp eq i8 %i.cpw, 0
  %i.cpx = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %indvars.iv1198 ; 2 uses
  br i1 %.not768, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  store i32 %i.cme, ptr %i.cpx, align 4, !tbaa !58
  %i.cpy = load i32, ptr %i.cak, align 4, !tbaa !96
  %i.cpz = icmp slt i32 %i.cpy, 2
  %i.cqa = load i64, ptr %i.cam, align 8
  %i.cqb = sext i32 %i.cme to i64                 ; 2 uses
  %i.cqc = mul i64 %i.cqa, %i.cqb
  %.sink.idx.i.i1084 = select i1 %i.cpz, i64 0, i64 %i.cqc
  %.sink.i.i1085 = getelementptr inbounds nuw i8, ptr %i.cny, i64 %.sink.idx.i.i1084 ; 6 uses
  %i.cqd = load i32, ptr %.sink.i.i1085, align 4, !tbaa !58
  %i.cqe = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1086 = tail call i32 @llvm.smin.i32(i32 %i.cqd, i32 %i.cqe)
  store i32 %..i1086, ptr %.sink.i.i1085, align 4, !tbaa !58
  %i.cqf = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 8 ; 2 uses
  %i.cqg = load i32, ptr %i.cqf, align 4, !tbaa !58
  %i.cqh = tail call i32 @llvm.smax.i32(i32 %i.cqg, i32 %i.cqe)
  store i32 %i.cqh, ptr %i.cqf, align 4, !tbaa !58
  %i.cqi = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 4 ; 2 uses
  %i.cqj = load i32, ptr %i.cqi, align 4, !tbaa !58
  %i.cqk = tail call i32 @llvm.smin.i32(i32 %i.cqj, i32 %i.clr)
  store i32 %i.cqk, ptr %i.cqi, align 4, !tbaa !58
  %i.cql = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 12 ; 2 uses
  %i.cqm = load i32, ptr %i.cql, align 4, !tbaa !58
  %i.cqn = tail call i32 @llvm.smax.i32(i32 %i.cqm, i32 %i.clr)
  store i32 %i.cqn, ptr %i.cql, align 4, !tbaa !58
  %i.cqo = getelementptr inbounds nuw i8, ptr %.sink.i.i1085, i64 16 ; 2 uses
  %i.cqp = load i32, ptr %i.cqo, align 4, !tbaa !58
  %i.cqq = add nsw i32 %i.cqp, 1
  store i32 %i.cqq, ptr %i.cqo, align 4, !tbaa !58
  %i.cqr = getelementptr inbounds nuw [16 x i8], ptr %i.cnx, i64 %i.cqb ; 3 uses
  %i.cqs = load i64, ptr %i.cqr, align 8, !tbaa !116
  %i.cqt = add i64 %i.cqs, %indvars.iv1198
  store i64 %i.cqt, ptr %i.cqr, align 8, !tbaa !116
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ey
  store i32 0, ptr %i.cpx, align 4, !tbaa !58
  %i.cqu = load i32, ptr %i.cny, align 4, !tbaa !58
  %i.cqv = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 2 uses
  %..i1089 = tail call i32 @llvm.smin.i32(i32 %i.cqu, i32 %i.cqv)
  store i32 %..i1089, ptr %i.cny, align 4, !tbaa !58
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cny, i64 8 ; 2 uses
  %i.cqx = load i32, ptr %i.cqw, align 4, !tbaa !58
  %i.cqy = tail call i32 @llvm.smax.i32(i32 %i.cqx, i32 %i.cqv)
  store i32 %i.cqy, ptr %i.cqw, align 4, !tbaa !58
  %i.cqz = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cra = load i32, ptr %i.cqz, align 4, !tbaa !58
  %i.crb = tail call i32 @llvm.smin.i32(i32 %i.cra, i32 %i.cls)
  store i32 %i.crb, ptr %i.cqz, align 4, !tbaa !58
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.crd = load i32, ptr %i.crc, align 4, !tbaa !58
  %i.cre = tail call i32 @llvm.smax.i32(i32 %i.crd, i32 %i.cls)
  store i32 %i.cre, ptr %i.crc, align 4, !tbaa !58
  %i.crf = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.crg = load i32, ptr %i.crf, align 4, !tbaa !58
  %i.crh = add nsw i32 %i.crg, 1
  store i32 %i.crh, ptr %i.crf, align 4, !tbaa !58
  %i.cri = load i64, ptr %i.cnx, align 8, !tbaa !116
  %i.crj = add i64 %i.cri, %indvars.iv1198
  store i64 %i.crj, ptr %i.cnx, align 8, !tbaa !116
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.sink1381 = phi ptr [ %i.cnx, %bb.fa ], [ %i.cqr, %bb.ez ]
  %i.crk = getelementptr inbounds nuw i8, ptr %.sink1381, i64 8 ; 2 uses
  %i.crl = load i64, ptr %i.crk, align 8, !tbaa !117
  %i.crm = add i64 %i.crl, %i.clk
  store i64 %i.crm, ptr %i.crk, align 8, !tbaa !117
  %i.crn = getelementptr inbounds nuw i8, ptr %i.cle, i64 %i.coc
  %i.cro = load i8, ptr %i.crn, align 1, !tbaa !32
  %.not769 = icmp eq i8 %i.cro, 0
  %i.crp = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.coc ; 2 uses
  br i1 %.not769, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i32 %i.cme, ptr %i.crp, align 4, !tbaa !58
  %i.crq = load i32, ptr %i.cak, align 4, !tbaa !96
  %i.crr = icmp slt i32 %i.crq, 2
  %i.crs = load i64, ptr %i.cam, align 8
  %i.crt = sext i32 %i.cme to i64                 ; 2 uses
  %i.cru = mul i64 %i.crs, %i.crt
  %.sink.idx.i.i1090 = select i1 %i.crr, i64 0, i64 %i.cru
  %.sink.i.i1091 = getelementptr inbounds nuw i8, ptr %i.cny, i64 %.sink.idx.i.i1090 ; 6 uses
  %i.crv = load i32, ptr %.sink.i.i1091, align 4, !tbaa !58
  %i.crw = trunc nuw nsw i64 %i.coc to i32        ; 2 uses
  %..i1092 = tail call i32 @llvm.smin.i32(i32 %i.crv, i32 %i.crw)
  store i32 %..i1092, ptr %.sink.i.i1091, align 4, !tbaa !58
  %i.crx = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 8 ; 2 uses
  %i.cry = load i32, ptr %i.crx, align 4, !tbaa !58
  %i.crz = tail call i32 @llvm.smax.i32(i32 %i.cry, i32 %i.crw)
  store i32 %i.crz, ptr %i.crx, align 4, !tbaa !58
  %i.csa = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 4 ; 2 uses
  %i.csb = load i32, ptr %i.csa, align 4, !tbaa !58
  %i.csc = tail call i32 @llvm.smin.i32(i32 %i.csb, i32 %i.clt)
  store i32 %i.csc, ptr %i.csa, align 4, !tbaa !58
  %i.csd = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 12 ; 2 uses
  %i.cse = load i32, ptr %i.csd, align 4, !tbaa !58
  %i.csf = tail call i32 @llvm.smax.i32(i32 %i.cse, i32 %i.clt)
  store i32 %i.csf, ptr %i.csd, align 4, !tbaa !58
  %i.csg = getelementptr inbounds nuw i8, ptr %.sink.i.i1091, i64 16 ; 2 uses
  %i.csh = load i32, ptr %i.csg, align 4, !tbaa !58
  %i.csi = add nsw i32 %i.csh, 1
  store i32 %i.csi, ptr %i.csg, align 4, !tbaa !58
  %i.csj = getelementptr inbounds nuw [16 x i8], ptr %i.cnx, i64 %i.crt ; 2 uses
  %i.csk = load <2 x i64>, ptr %i.csj, align 8, !tbaa !39
  %i.csl = insertelement <2 x i64> %i.clv, i64 %i.coc, i64 0
  %i.csm = add <2 x i64> %i.csk, %i.csl
  store <2 x i64> %i.csm, ptr %i.csj, align 8, !tbaa !39
  br label %bb.ff

bb.fd:                                            ; preds = %bb.fb
  store i32 0, ptr %i.crp, align 4, !tbaa !58
  %i.csn = load i32, ptr %i.cny, align 4, !tbaa !58
  %i.cso = trunc nuw nsw i64 %i.coc to i32        ; 2 uses
  %..i1095 = tail call i32 @llvm.smin.i32(i32 %i.csn, i32 %i.cso)
  store i32 %..i1095, ptr %i.cny, align 4, !tbaa !58
  %i.csp = getelementptr inbounds nuw i8, ptr %i.cny, i64 8 ; 2 uses
  %i.csq = load i32, ptr %i.csp, align 4, !tbaa !58
  %i.csr = tail call i32 @llvm.smax.i32(i32 %i.csq, i32 %i.cso)
  store i32 %i.csr, ptr %i.csp, align 4, !tbaa !58
  %i.css = getelementptr inbounds nuw i8, ptr %i.cny, i64 4 ; 2 uses
  %i.cst = load i32, ptr %i.css, align 4, !tbaa !58
  %i.csu = tail call i32 @llvm.smin.i32(i32 %i.cst, i32 %i.clu)
  store i32 %i.csu, ptr %i.css, align 4, !tbaa !58
  %i.csv = getelementptr inbounds nuw i8, ptr %i.cny, i64 12 ; 2 uses
  %i.csw = load i32, ptr %i.csv, align 4, !tbaa !58
  %i.csx = tail call i32 @llvm.smax.i32(i32 %i.csw, i32 %i.clu)
  store i32 %i.csx, ptr %i.csv, align 4, !tbaa !58
  %i.csy = getelementptr inbounds nuw i8, ptr %i.cny, i64 16 ; 2 uses
  %i.csz = load i32, ptr %i.csy, align 4, !tbaa !58
  %i.cta = add nsw i32 %i.csz, 1
  store i32 %i.cta, ptr %i.csy, align 4, !tbaa !58
  %i.ctb = load <2 x i64>, ptr %i.cnx, align 8, !tbaa !39
  %i.ctc = insertelement <2 x i64> %i.clv, i64 %i.coc, i64 0
  %i.ctd = add <2 x i64> %i.ctb, %i.ctc
  store <2 x i64> %i.ctd, ptr %i.cnx, align 8, !tbaa !39
  br label %bb.ff

bb.fe:                                            ; preds = %bb.er
  store i32 0, ptr %i.cly, align 4, !tbaa !58
  %i.cte = or disjoint i64 %indvars.iv1198, 1     ; 5 uses
  %i.ctf = getelementptr inbounds nuw [4 x i8], ptr %i.clh, i64 %i.cte
  store i32 0, ptr %i.ctf, align 4, !tbaa !58
  %i.ctg = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %indvars.iv1198
  store i32 0, ptr %i.ctg, align 4, !tbaa !58
  %i.cth = getelementptr inbounds nuw [4 x i8], ptr %i.cli, i64 %i.cte
  store i32 0, ptr %i.cth, align 4, !tbaa !58
  %i.cti = load ptr, ptr %i.cal, align 8, !tbaa !54 ; 6 uses
  %i.ctj = load i32, ptr %i.cti, align 4, !tbaa !58
  %i.ctk = trunc nuw nsw i64 %indvars.iv1198 to i32 ; 4 uses
  %..i1098 = tail call i32 @llvm.smin.i32(i32 %i.ctj, i32 %i.ctk)
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.cti, i64 8 ; 2 uses
  %i.ctm = load i32, ptr %i.ctl, align 4, !tbaa !58
  %i.ctn = tail call i32 @llvm.smax.i32(i32 %i.ctm, i32 %i.ctk)
  %i.cto = getelementptr inbounds nuw i8, ptr %i.cti, i64 4 ; 2 uses
  %i.ctp = load i32, ptr %i.cto, align 4, !tbaa !58
  %i.ctq = tail call i32 @llvm.smin.i32(i32 %i.ctp, i32 %i.cll)
  %i.ctr = getelementptr inbounds nuw i8, ptr %i.cti, i64 12 ; 2 uses
  %i.cts = load i32, ptr %i.ctr, align 4, !tbaa !58
  %i.ctt = tail call i32 @llvm.smax.i32(i32 %i.cts, i32 %i.cll)
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.cti, i64 16 ; 2 uses
  %i.ctv = load i32, ptr %i.ctu, align 4, !tbaa !58
  %i.ctw = load ptr, ptr %i.can, align 8, !tbaa !49 ; 3 uses
  %i.ctx = load i64, ptr %i.ctw, align 8, !tbaa !116
  %i.cty = add i64 %i.ctx, %indvars.iv1198
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.ctw, i64 8 ; 2 uses
  %i.cua = load i64, ptr %i.ctz, align 8, !tbaa !117
  %i.cub = trunc nuw nsw i64 %i.cte to i32        ; 4 uses
  %..i1101 = tail call i32 @llvm.smin.i32(i32 %..i1098, i32 %i.cub)
  %i.cuc = tail call i32 @llvm.smax.i32(i32 %i.ctn, i32 %i.cub)
  %i.cud = add i64 %i.cty, %i.cte
  %..i1104 = tail call i32 @llvm.smin.i32(i32 %..i1101, i32 %i.ctk)
  %i.cue = tail call i32 @llvm.umax.i32(i32 %i.cuc, i32 %i.ctk)
  %i.cuf = tail call i32 @llvm.smin.i32(i32 %i.ctq, i32 %i.clm)
  %i.cug = tail call i32 @llvm.smax.i32(i32 %i.ctt, i32 %i.clm)
  %i.cuh = add i64 %i.cud, %indvars.iv1198
  %..i1107 = tail call i32 @llvm.smin.i32(i32 %..i1104, i32 %i.cub)
  store i32 %..i1107, ptr %i.cti, align 4, !tbaa !58
  %i.cui = tail call i32 @llvm.smax.i32(i32 %i.cue, i32 %i.cub)
  store i32 %i.cui, ptr %i.ctl, align 4, !tbaa !58
  store i32 %i.cuf, ptr %i.cto, align 4, !tbaa !58
  store i32 %i.cug, ptr %i.ctr, align 4, !tbaa !58
  %i.cuj = add nsw i32 %i.ctv, 4
  store i32 %i.cuj, ptr %i.ctu, align 4, !tbaa !58
  %i.cuk = add i64 %i.cuh, %i.cte
  store i64 %i.cuk, ptr %i.ctw, align 8, !tbaa !116
  %.reass1293 = add i64 %i.cua, %invariant.op1292
  store i64 %.reass1293, ptr %i.ctz, align 8, !tbaa !117
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fc, %bb.fd, %bb.fe
  %indvars.iv.next1199 = add nuw nsw i64 %indvars.iv1198, 2 ; 2 uses
  %i.cul = load i32, ptr %i.axq, align 4, !tbaa !51 ; 2 uses
  %i.cum = sext i32 %i.cul to i64
  %i.cun = icmp slt i64 %indvars.iv.next1199, %i.cum
  br i1 %i.cun, label %bb.er, label %._crit_edge1144, !llvm.loop !440

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge1131, %._crit_edge1137, %._crit_edge1144, %._crit_edge1151, %._crit_edge1158, %._crit_edge1164, %._crit_edge1171, %.lr.ph1173, %.preheader1121, %.preheader1119, %.preheader1117, %.preheader1115, %.preheader1113, %.preheader1111, %.preheader1109, %.preheader
  ret void
}

; Function Attrs: nounwind
declare void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv19connectedcomponents25LabelingBolelli4CParallelIihNS0_9CCStatsOpEE9FirstScanD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK2cv19connectedcomponents25LabelingBolelli4CParallelIihNS0_9CCStatsOpEE9FirstScanclERKNS_5RangeE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !60
  %i.b = shl nsw i32 %i.a, 1                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !61
  %i.e = shl i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !446, !nonnull !93, !align !94 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.i, i32 %i.e) ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 2 uses
  %i.l = sext i32 %i.b to i64                     ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l
  store i32 %.sroa.speculated, ptr %i.m, align 4, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !447, !nonnull !93, !align !94 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !51
  %i.r = mul nsw i32 %i.q, %i.b
  %i.s = ashr exact i32 %i.r, 1                   ; 2 uses
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !51   ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39   ; 3 uses
  %i.aa = mul i64 %i.z, %i.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !54 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !39 ; 3 uses
  %i.ag = mul i64 %i.af, %i.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag ; 5 uses
  %.not117125 = icmp sgt i32 %i.v, 0
  br i1 %.not117125, label %.lr.ph.lr.ph, label %.loopexit99.thread

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = zext nneg i32 %i.v to i64
  %narrow = add nsw i32 %i.s, 1
  %i.ak = sext i32 %narrow to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer101
  %indvars.iv180 = phi i64 [ %i.ak, %.lr.ph.lr.ph ], [ %indvars.iv.next181, %.outer101 ] ; 4 uses
  %i.al = phi i32 [ 0, %.lr.ph.lr.ph ], [ %i.be, %.outer101 ] ; 2 uses
  %i.am = sext i32 %i.al to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv174.in = phi i32 [ %i.al, %.lr.ph ], [ %indvars.iv174, %bb.d ]
  %indvars.iv = phi i64 [ %i.am, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 6 uses
  %indvars.iv174 = add i32 %indvars.iv174.in, 1   ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !32
  %.not87 = icmp eq i8 %i.ao, 0
  br i1 %.not87, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ap = trunc nsw i64 %indvars.iv to i32
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.ar = trunc nsw i64 %indvars.iv180 to i32     ; 2 uses
  store i32 %i.ar, ptr %i.aq, align 4, !tbaa !58
  %i.as = load ptr, ptr %i.ai, align 8, !tbaa !131
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %indvars.iv180
  store i32 %i.ar, ptr %i.at, align 4, !tbaa !58
  %indvars.iv.next181 = add nsw i64 %indvars.iv180, 1 ; 4 uses
  %i.au = add nsw i32 %i.ap, 1
  %.not88119 = icmp slt i32 %i.au, %i.v
  br i1 %.not88119, label %.lr.ph121.preheader, label %.loopexit99

.lr.ph121.preheader:                              ; preds = %bb.c
  %i.av = sext i32 %indvars.iv174 to i64
  br label %.lr.ph121

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  store i32 0, ptr %i.aw, align 4, !tbaa !58
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %.not, label %bb.b, label %.loopexit99

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.e
  %indvars.iv177 = phi i64 [ %i.av, %.lr.ph121.preheader ], [ %indvars.iv.next178, %bb.e ] ; 6 uses
  %.177120 = phi i64 [ %indvars.iv, %.lr.ph121.preheader ], [ %indvars.iv177, %bb.e ]
  %i.ax = getelementptr inbounds i8, ptr %i.ab, i64 %indvars.iv177
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !32
  %.not89 = icmp eq i8 %i.ay, 0
  br i1 %.not89, label %.outer101, label %bb.e

bb.e:                                             ; preds = %.lr.ph121
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %.177120
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !58
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv177
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !58
  %indvars.iv.next178 = add nsw i64 %indvars.iv177, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next178 to i32
  %exitcond.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit99, label %.lr.ph121

.outer101:                                        ; preds = %.lr.ph121
  %i.bc = trunc nsw i64 %indvars.iv177 to i32
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv177
  store i32 0, ptr %i.bd, align 4, !tbaa !58
  %i.be = add nsw i32 %i.bc, 1                    ; 2 uses
  %.not117 = icmp slt i32 %i.be, %i.v
  br i1 %.not117, label %.lr.ph, label %.loopexit99

.loopexit99:                                      ; preds = %.outer101, %bb.c, %bb.d, %bb.e
  %indvars.iv.next181.lcssa225.sink = phi i64 [ %indvars.iv.next181, %bb.e ], [ %indvars.iv180, %bb.d ], [ %indvars.iv.next181, %bb.c ], [ %indvars.iv.next181, %.outer101 ]
  %i.bf = trunc nsw i64 %indvars.iv.next181.lcssa225.sink to i32 ; 2 uses
  %i.bg = or disjoint i32 %i.b, 1                 ; 3 uses
  %i.bh = icmp slt i32 %i.bg, %.sroa.speculated
  br i1 %i.bh, label %.lr.ph142, label %._crit_edge

.loopexit99.thread:                               ; preds = %bb.a
  %i.bi = or disjoint i32 %i.b, 1
  br label %._crit_edge

.lr.ph142:                                        ; preds = %.loopexit99
  %i.bj = sub i64 0, %i.z
  %i.bk = sub i64 0, %i.af
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bm = zext nneg i32 %i.v to i64
  %i.bn = or disjoint i64 %i.l, 1
  br label %.lr.ph129.lr.ph.us

.lr.ph129.lr.ph.us:                               ; preds = %.lr.ph142, %.loopexit.us
  %indvars.iv194 = phi i64 [ %i.bn, %.lr.ph142 ], [ %indvars.iv.next195, %.loopexit.us ] ; 3 uses
  %.2141.us = phi i32 [ %i.bf, %.lr.ph142 ], [ %.5.us, %.loopexit.us ]
  %i.bo = mul i64 %i.z, %indvars.iv194
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bj ; 2 uses
  %i.br = mul i64 %i.af, %indvars.iv194
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.br ; 8 uses
  %i.bt = getelementptr inbounds i8, ptr %i.bs, i64 %i.bk ; 2 uses
  br label %.lr.ph129.us

bb.f:                                             ; preds = %.lr.ph129.us, %bb.o
  %indvars.iv186.in = phi i32 [ %i.eb, %.lr.ph129.us ], [ %indvars.iv186, %bb.o ]
  %indvars.iv183 = phi i64 [ %i.ec, %.lr.ph129.us ], [ %indvars.iv.next184, %bb.o ] ; 9 uses
  %indvars.iv186 = add i32 %indvars.iv186.in, 1   ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %indvars.iv183
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !32
  %.not91.us = icmp eq i8 %i.bv, 0
  br i1 %.not91.us, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = trunc nsw i64 %indvars.iv183 to i32
  %i.bx = getelementptr inbounds i8, ptr %i.bq, i64 %indvars.iv183
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %.not92.us = icmp eq i8 %i.by, 0
  br i1 %.not92.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv183
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !58
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv183
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !58
  br label %.preheader.us

end_hunk_11
