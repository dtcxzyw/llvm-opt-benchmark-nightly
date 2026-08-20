inline.NumInlined: 114
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_Z7dsaupd_PiPKcS_S1_S_PdS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a

sub_020.i:                                        ; preds = %.lr.ph75.i.prol.loopexit, %.lr.ph75.i, %middle.block666, %vec.epilog.middle.block681, %._crit_edge71.i
  %i.als = load i8, ptr %3, align 1
  %.not82.i = icmp eq i8 %i.als, 66
  br i1 %.not82.i, label %.tail19.i, label %.tail19.thread.i

.tail19.i:                                        ; preds = %sub_020.i
  %i.alt = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.alu = load i8, ptr %i.alt, align 1
  %i.alv = icmp eq i8 %i.alu, 69
  br i1 %i.alv, label %bb.cz, label %.tail19.thread.i

bb.cz:                                            ; preds = %.tail19.i
  store i16 16716, ptr %i.ag, align 2
  br label %.tail19.thread.i

.tail19.thread.i:                                 ; preds = %bb.cz, %.tail19.i, %sub_020.i
  %.sink266.i = phi ptr [ %i.ag, %bb.cz ], [ %3, %sub_020.i ], [ %3, %.tail19.i ]
  %.val386.i = load i32, ptr %i.aae, align 4, !tbaa !8
  call fastcc void @_ZL7dsortr_PKcPiS1_PdS2_(ptr noundef nonnull %.sink266.i, i32 %.val389.i, i32 %.val386.i, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey)
  %i.alw = load i32, ptr %2, align 4, !tbaa !8
  %i.alx = mul nsw i32 %i.alw, 3
  %i.aly = sext i32 %i.alx to i64
  %i.alz = getelementptr [8 x i8], ptr %i.fh, i64 %i.aly
  %i.ama = getelementptr i8, ptr %i.alz, i64 8
  %i.amb = load double, ptr %i.ama, align 8, !tbaa !10
  store double %i.amb, ptr %i.eq, align 8, !tbaa !10
  %i.amc = getelementptr inbounds nuw i8, ptr %13, i64 100 ; 2 uses
  %i.amd = load i32, ptr %i.amc, align 4, !tbaa !8
  %i.ame = load i32, ptr %i.em, align 4, !tbaa !8
  %i.amf = icmp sgt i32 %i.amd, %i.ame
  %.pre140.pre141.i = load i32, ptr %i.aae, align 4, !tbaa !8 ; 3 uses
  br i1 %i.amf, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %.tail19.thread.i
  %i.amg = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.amh = icmp slt i32 %.pre140.pre141.i, %i.amg
  br i1 %i.amh, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 1, ptr %16, align 4, !tbaa !8
  %.pre140.pre.i = load i32, ptr %i.aae, align 4, !tbaa !8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %.tail19.thread.i
  %.pre140.i = phi i32 [ %.pre140.pre.i, %bb.db ], [ %.pre140.pre141.i, %bb.da ], [ %.pre140.pre141.i, %.tail19.thread.i ] ; 3 uses
  %i.ami = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.amj = icmp eq i32 %i.ami, 0
  br i1 %i.amj, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.amk = load i32, ptr %i.zq, align 4, !tbaa !8
  %i.aml = icmp slt i32 %.pre140.i, %i.amk
  br i1 %i.aml, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 2, ptr %16, align 4, !tbaa !8
  %.pre139.i = load i32, ptr %i.aae, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.amm = phi i32 [ %.pre139.i, %bb.de ], [ %.pre140.i, %bb.dd ], [ %.pre140.i, %bb.dc ] ; 2 uses
  store i32 %i.amm, ptr %i.ej, align 4, !tbaa !8
  %i.amn = load i32, ptr %i.amc, align 4, !tbaa !8
  store i32 %i.amn, ptr %i.em, align 4, !tbaa !8
  store i32 %i.amm, ptr %i.ei, align 4, !tbaa !8
  br label %.sink.split268.i

bb.dg:                                            ; preds = %bb.cv
  %i.amo = icmp slt i32 %.pre.i, %i.adj
  %.pr.i.pre303 = load i32, ptr %i.el, align 4, !tbaa !8 ; 2 uses
  %i.amp = icmp eq i32 %.pr.i.pre303, 1
  %or.cond422 = select i1 %i.amo, i1 %i.amp, i1 false
  br i1 %or.cond422, label %bb.dh, label %thread-pre-split.i

bb.dh:                                            ; preds = %bb.dg
  store i32 %.pre.i, ptr %i.ae, align 4, !tbaa !8
  %i.amq = sdiv i32 %i.adk, 2
  %i.amr = call i32 @llvm.smin.i32(i32 %.pre.i, i32 %i.amq)
  %i.ams = add nsw i32 %i.adj, %i.amr             ; 3 uses
  store i32 %i.ams, ptr %i.ei, align 4, !tbaa !8
  %i.amt = icmp eq i32 %i.ams, 1
  %.pre302 = load i32, ptr %i.ie, align 4, !tbaa !8 ; 4 uses
  br i1 %i.amt, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.amu = icmp sgt i32 %.pre302, 5
  br i1 %i.amu, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.amv = lshr i32 %.pre302, 1
  br label %.sink.split.i

bb.dk:                                            ; preds = %bb.di
  %i.amw = icmp sgt i32 %.pre302, 2
  br i1 %i.amw, label %.sink.split.i, label %bb.dl

.sink.split.i:                                    ; preds = %bb.dk, %bb.dj
  %.sink267.i = phi i32 [ %i.amv, %bb.dj ], [ 2, %bb.dk ] ; 2 uses
  store i32 %.sink267.i, ptr %i.ei, align 4, !tbaa !8
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split.i, %bb.dk, %bb.dh
  %i.amx = phi i32 [ %i.ams, %bb.dh ], [ 1, %bb.dk ], [ %.sink267.i, %.sink.split.i ] ; 2 uses
  %i.amy = sub nsw i32 %.pre302, %i.amx
  store i32 %i.amy, ptr %i.ej, align 4, !tbaa !8
  %i.amz = icmp slt i32 %i.adj, %i.amx
  br i1 %i.amz, label %bb.dm, label %.thread373

bb.dm:                                            ; preds = %bb.dl
  call fastcc void @_ZL7dsgets_PiPKcS_S_PdS2_S2_(ptr noundef nonnull readonly %i.el, ptr noundef readonly %3, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ff)
  %.pr.i.pre = load i32, ptr %i.el, align 4, !tbaa !8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.dg, %bb.dm
  %i.ana = phi i32 [ %.pr.i.pre303, %bb.dg ], [ %.pr.i.pre, %bb.dm ]
  %i.anb = icmp eq i32 %i.ana, 0
  br i1 %i.anb, label %bb.dn, label %.thread373

bb.dn:                                            ; preds = %thread-pre-split.i
  %i.anc = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 1, ptr %i.anc, align 4, !tbaa !8
  br label %.sink.split268.i

.thread373:                                       ; preds = %thread-pre-split.i, %bb.dl
  %i.and = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.and, align 4, !tbaa !8
  br label %bb.dq

bb.do:                                            ; preds = %bb.ae
  %.pre306 = load i32, ptr %i.el, align 4, !tbaa !8
  %i.ane = icmp eq i32 %.pre306, 0
  %i.anf = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.anf, align 4, !tbaa !8
  br i1 %i.ane, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @dcopy_(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ac)
  br label %bb.dq

bb.dq:                                            ; preds = %.thread373, %bb.dp, %bb.do
  %.val395.i = load i32, ptr %i.er, align 4, !tbaa !8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store double -1.000000e+00, ptr %i.c, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 1, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.ang = load i32, ptr %9, align 4, !tbaa !8    ; 5 uses
  %narrow332.i.i = xor i32 %i.ang, -1
  %i.anh = sext i32 %narrow332.i.i to i64
  %i.ani = getelementptr inbounds [8 x i8], ptr %8, i64 %i.anh ; 4 uses
  %narrow.i401.i = xor i32 %.val395.i, -1
  %i.anj = sext i32 %narrow.i401.i to i64         ; 5 uses
  %i.ank = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.anj ; 12 uses
  %i.anl = load i32, ptr %i.fd, align 4, !tbaa !8 ; 8 uses
  %narrow329.i.i = xor i32 %i.anl, -1
  %i.anm = sext i32 %narrow329.i.i to i64         ; 3 uses
  %i.ann = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.anm ; 8 uses
  %i.ano = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.anp = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.anq = add nsw i32 %i.anp, %i.ano
  store i32 %i.anq, ptr %i.k, align 4, !tbaa !8
  call void @dlaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fd)
  %i.anr = load i32, ptr %i.ej, align 4, !tbaa !8 ; 3 uses
  %i.ans = icmp eq i32 %i.anr, 0
  br i1 %i.ans, label %_ZL7dsapps_PiS_S_PdS0_S_S0_S_S0_S0_S_S0_.exit.i, label %.preheader3.i.i

.preheader3.i.i:                                  ; preds = %bb.dq
  %.not28.i.i = icmp slt i32 %i.anr, 1
  br i1 %.not28.i.i, label %.preheader3.._crit_edge31_crit_edge.i.i, label %.preheader.lr.ph.i.i

.preheader3.._crit_edge31_crit_edge.i.i:          ; preds = %.preheader3.i.i
  %.pre78.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  br label %._crit_edge31.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader3.i.i
  %i.ant = shl i32 %.val395.i, 1                  ; 3 uses
  %i.anu = sext i32 %i.ant to i64
  %i.anv = sext i32 %.val395.i to i64             ; 3 uses
  %i.anw = sext i32 %i.anl to i64                 ; 5 uses
  %i.anx = add nuw i32 %i.anr, 1
  %wide.trip.count.i402.i = zext i32 %i.anx to i64
  %.pre.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.ank, i64 %i.anu ; 3 uses
  %invariant.gep109.i.i = getelementptr [8 x i8], ptr %i.ank, i64 %i.anv ; 3 uses
  %i.any = shl nsw i64 %i.fb, 3                   ; 4 uses
  %i.anz = shl nsw i64 %i.anm, 3                  ; 4 uses
  %i.aoa = shl nsw i64 %i.anw, 3
  %i.aob = shl nsw i64 %i.anw, 3
  %i.aoc = shl nsw i64 %i.anw, 3
  %17 = add nsw i64 %i.fb, %i.anm
  %i.aod = shl nsw i64 %17, 3                     ; 3 uses
  %scevgep518 = getelementptr i8, ptr %14, i64 %i.aod
  %i.aoe = add nsw i64 %i.aod, -8                 ; 2 uses
  %scevgep520 = getelementptr i8, ptr %14, i64 %i.aoe
  %scevgep522 = getelementptr i8, ptr %14, i64 %i.aod
  %scevgep524 = getelementptr i8, ptr %14, i64 %i.aoe
  %i.aof = getelementptr i8, ptr %14, i64 %i.any
  %i.aog = getelementptr i8, ptr %i.aof, i64 %i.anz
  %i.aoh = getelementptr i8, ptr %14, i64 %i.any
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 %i.anz
  %i.aoj = getelementptr i8, ptr %i.aoi, i64 -8
  %i.aok = getelementptr i8, ptr %14, i64 %i.any
  %i.aol = getelementptr i8, ptr %i.aok, i64 %i.anz
  %i.aom = getelementptr i8, ptr %14, i64 %i.any
  %i.aon = getelementptr i8, ptr %i.aom, i64 %i.anz
  %i.aoo = getelementptr i8, ptr %i.aon, i64 -8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge24.i.i, %.preheader.lr.ph.i.i
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %.preheader.lr.ph.i.i ], [ %.pre81.i.i, %._crit_edge24.i.i ] ; 2 uses
  %indvars.iv65.i.i = phi i64 [ 1, %.preheader.lr.ph.i.i ], [ %indvars.iv.next66.i.i, %._crit_edge24.i.i ] ; 3 uses
  %.031730.i.i = phi i32 [ 1, %.preheader.lr.ph.i.i ], [ %.1.lcssa.i.i, %._crit_edge24.i.i ] ; 4 uses
  %indvars128.i = trunc i64 %indvars.iv65.i.i to i32 ; 2 uses
  %i.aop = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv65.i.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dy, %.preheader.i.i
  %.pre83.i.i = phi i32 [ %.pre81.i.i, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ]
  %i.aoq = phi i32 [ %i.axj, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi i32 [ %i.awy, %bb.dy ], [ %.031730.i.i, %.preheader.i.i ] ; 9 uses
  %i.aor = sext i32 %.0.i.i to i64                ; 3 uses
  %i.aos = call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %i.aoq)
  %smax.i.i = sext i32 %i.aos to i64
  %exitcond.not.i404.i472.not = icmp slt i32 %.0.i.i, %i.aoq
  br i1 %exitcond.not.i404.i472.not, label %.lr.ph475, label %.loopexit2.i.i

bb.ds:                                            ; preds = %.lr.ph475
  %exitcond.not.i404.i = icmp eq i64 %indvars.iv.next.i405.i, %smax.i.i
  br i1 %exitcond.not.i404.i, label %.loopexit2.i.i, label %.lr.ph475, !llvm.loop !58

.lr.ph475:                                        ; preds = %bb.dr, %bb.ds
  %indvars.iv.i403.i473 = phi i64 [ %indvars.iv.next.i405.i, %bb.ds ], [ %i.aor, %bb.dr ] ; 3 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i403.i473
  %indvars.iv.next.i405.i = add nsw i64 %indvars.iv.i403.i473, 1 ; 3 uses
  %i.aot = load <2 x double>, ptr %gep.i.i, align 8, !tbaa !10
  %i.aou = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aot) ; 2 uses
  %shift685 = shufflevector <2 x double> %i.aou, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop686 = fadd <2 x double> %i.aou, %shift685
  %i.aov = extractelement <2 x double> %foldExtExtBinop686, i64 0
  %i.aow = getelementptr [8 x i8], ptr %i.ank, i64 %indvars.iv.next.i405.i ; 2 uses
  %i.aox = getelementptr [8 x i8], ptr %i.aow, i64 %i.anv
  %i.aoy = load double, ptr %i.aox, align 8, !tbaa !10
  %i.aoz = fmul double %i.aov, f0x3CB0000000000000
  %i.apa = fcmp ugt double %i.aoy, %i.aoz
  br i1 %i.apa, label %bb.ds, label %bb.dt, !llvm.loop !58

bb.dt:                                            ; preds = %.lr.ph475
  %i.apb = getelementptr [8 x i8], ptr %i.aow, i64 %i.anv
  %i.apc = trunc nsw i64 %indvars.iv.i403.i473 to i32
  store double 0.000000e+00, ptr %i.apb, align 8, !tbaa !10
  br label %.loopexit2.i.i

.loopexit2.i.i:                                   ; preds = %bb.ds, %bb.dr, %bb.dt
  %.0318.i.i = phi i32 [ %i.apc, %bb.dt ], [ %i.aoq, %bb.dr ], [ %i.aoq, %bb.ds ] ; 7 uses
  %i.apd = icmp slt i32 %.0.i.i, %.0318.i.i
  br i1 %i.apd, label %bb.du, label %.loopexit1.i.i

bb.du:                                            ; preds = %.loopexit2.i.i
  %i.ape = add nsw i32 %.0.i.i, %i.ant
  %i.apf = sext i32 %i.ape to i64
  %i.apg = getelementptr inbounds [8 x i8], ptr %i.ank, i64 %i.apf ; 3 uses
  %i.aph = load double, ptr %i.apg, align 8, !tbaa !10
  %i.api = load double, ptr %i.aop, align 8, !tbaa !10
  %i.apj = fsub double %i.aph, %i.api
  store double %i.apj, ptr %i.g, align 8, !tbaa !10
  %i.apk = add nsw i32 %.0.i.i, 1                 ; 3 uses
  %i.apl = add nsw i32 %i.apk, %.val395.i
  %i.apm = sext i32 %i.apl to i64
  %i.apn = getelementptr inbounds [8 x i8], ptr %i.ank, i64 %i.apm ; 3 uses
  %i.apo = load double, ptr %i.apn, align 8, !tbaa !10
  store double %i.apo, ptr %i.h, align 8, !tbaa !10
  call void @dlartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.app = load double, ptr %i.f, align 8, !tbaa !10 ; 19 uses
  %i.apq = load double, ptr %i.apg, align 8, !tbaa !10 ; 2 uses
  %i.apr = load double, ptr %i.j, align 8, !tbaa !10 ; 14 uses
  %i.aps = load double, ptr %i.apn, align 8, !tbaa !10 ; 3 uses
  %i.apt = fmul double %i.apr, %i.aps             ; 2 uses
  %i.apu = call double @llvm.fmuladd.f64(double %i.app, double %i.apq, double %i.apt)
  %i.apv = add nsw i32 %i.apk, %i.ant
  %i.apw = sext i32 %i.apv to i64
  %i.apx = getelementptr inbounds [8 x i8], ptr %i.ank, i64 %i.apw ; 2 uses
  %i.apy = load double, ptr %i.apx, align 8, !tbaa !10 ; 2 uses
  %i.apz = fmul double %i.apr, %i.apy
  %i.aqa = call double @llvm.fmuladd.f64(double %i.app, double %i.aps, double %i.apz)
  %i.aqb = fneg double %i.apt
  %i.aqc = call double @llvm.fmuladd.f64(double %i.app, double %i.apy, double %i.aqb) ; 2 uses
  %i.aqd = fneg double %i.apq
  %i.aqe = fmul double %i.apr, %i.aqd
  %i.aqf = call double @llvm.fmuladd.f64(double %i.app, double %i.aps, double %i.aqe) ; 2 uses
  %i.aqg = fmul double %i.apr, %i.aqa
  %i.aqh = call double @llvm.fmuladd.f64(double %i.app, double %i.apu, double %i.aqg)
  store double %i.aqh, ptr %i.apg, align 8, !tbaa !10
  %i.aqi = fneg double %i.aqf
  %i.aqj = fmul double %i.apr, %i.aqi
  %i.aqk = call double @llvm.fmuladd.f64(double %i.app, double %i.aqc, double %i.aqj)
  store double %i.aqk, ptr %i.apx, align 8, !tbaa !10
  %i.aql = fmul double %i.apr, %i.aqc
  %i.aqm = call double @llvm.fmuladd.f64(double %i.app, double %i.aqf, double %i.aql)
  store double %i.aqm, ptr %i.apn, align 8, !tbaa !10
  %i.aqn = add i32 %.0.i.i, %indvars128.i
  %i.aqo = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  %i.aqp = call i32 @llvm.smin.i32(i32 %i.aqn, i32 %i.aqo) ; 5 uses
  %.not3347.i.i = icmp slt i32 %i.aqp, 1
  br i1 %.not3347.i.i, label %._crit_edge.i.i, label %.lr.ph.i406.i

.lr.ph.i406.i:                                    ; preds = %bb.du
  %i.aqq = mul nsw i32 %.0.i.i, %i.anl
  %i.aqr = mul nsw i32 %i.apk, %i.anl
  %i.aqs = fneg double %i.apr                     ; 6 uses
  %i.aqt = sext i32 %i.aqq to i64                 ; 2 uses
  %i.aqu = sext i32 %i.aqr to i64                 ; 2 uses
  %invariant.gep101.i.i = getelementptr [8 x i8], ptr %i.ann, i64 %i.aqt ; 6 uses
  %invariant.gep103.i.i = getelementptr [8 x i8], ptr %i.ann, i64 %i.aqu ; 6 uses
  %narrow.i = add nuw i32 %i.aqp, 1               ; 4 uses
  %i.aqv = zext i32 %narrow.i to i64              ; 3 uses
  %i.aqw = zext nneg i32 %i.aqp to i64            ; 2 uses
  %min.iters.check530 = icmp ult i32 %i.aqp, 8
  br i1 %min.iters.check530, label %scalar.ph529.preheader, label %vector.memcheck517

vector.memcheck517:                               ; preds = %.lr.ph.i406.i
  %i.aqx = shl nsw i64 %i.aqu, 3                  ; 2 uses
  %scevgep519 = getelementptr i8, ptr %scevgep518, i64 %i.aqx
  %i.aqy = shl nuw nsw i64 %i.aqv, 3              ; 2 uses
  %i.aqz = getelementptr i8, ptr %scevgep520, i64 %i.aqx
  %scevgep521 = getelementptr i8, ptr %i.aqz, i64 %i.aqy
  %i.ara = shl nsw i64 %i.aqt, 3                  ; 2 uses
  %scevgep523 = getelementptr i8, ptr %scevgep522, i64 %i.ara
  %i.arb = getelementptr i8, ptr %scevgep524, i64 %i.ara
  %scevgep525 = getelementptr i8, ptr %i.arb, i64 %i.aqy
  %bound0526 = icmp ult ptr %scevgep519, %scevgep525
  %bound1527 = icmp ult ptr %scevgep523, %scevgep521
  %found.conflict528 = and i1 %bound0526, %bound1527
  br i1 %found.conflict528, label %scalar.ph529.preheader, label %vector.ph531

vector.ph531:                                     ; preds = %vector.memcheck517
  %n.vec532 = and i64 %i.aqw, 2147483640          ; 3 uses
  %i.arc = or disjoint i64 %n.vec532, 1
  %broadcast.splatinsert533 = insertelement <4 x double> poison, double %i.aqs, i64 0
  %broadcast.splat534 = shufflevector <4 x double> %broadcast.splatinsert533, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert535 = insertelement <4 x double> poison, double %i.apr, i64 0
  %broadcast.splat536 = shufflevector <4 x double> %broadcast.splatinsert535, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert537 = insertelement <4 x double> poison, double %i.app, i64 0
  %broadcast.splat538 = shufflevector <4 x double> %broadcast.splatinsert537, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %vector.ph531
  %index540 = phi i64 [ 0, %vector.ph531 ], [ %index.next545, %vector.body539 ] ; 2 uses
  %i.ard = or disjoint i64 %index540, 1           ; 2 uses
  %i.are = getelementptr [8 x i8], ptr %invariant.gep101.i.i, i64 %i.ard ; 3 uses
  %i.arf = getelementptr i8, ptr %i.are, i64 32   ; 2 uses
  %wide.load541 = load <4 x double>, ptr %i.are, align 8, !tbaa !10, !alias.scope !59 ; 2 uses
  %wide.load542 = load <4 x double>, ptr %i.arf, align 8, !tbaa !10, !alias.scope !59 ; 2 uses
  %i.arg = getelementptr [8 x i8], ptr %invariant.gep103.i.i, i64 %i.ard ; 3 uses
  %i.arh = getelementptr i8, ptr %i.arg, i64 32   ; 2 uses
  %wide.load543 = load <4 x double>, ptr %i.arg, align 8, !tbaa !10, !alias.scope !62, !noalias !59 ; 2 uses
  %wide.load544 = load <4 x double>, ptr %i.arh, align 8, !tbaa !10, !alias.scope !62, !noalias !59 ; 2 uses
  %i.ari = fmul <4 x double> %broadcast.splat536, %wide.load543
  %i.arj = fmul <4 x double> %broadcast.splat536, %wide.load544
  %i.ark = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %wide.load541, <4 x double> %i.ari)
  %i.arl = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat538, <4 x double> %wide.load542, <4 x double> %i.arj)
  %i.arm = fmul <4 x double> %broadcast.splat538, %wide.load543
  %i.arn = fmul <4 x double> %broadcast.splat538, %wide.load544
  %i.aro = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat534, <4 x double> %wide.load541, <4 x double> %i.arm)
  %i.arp = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %broadcast.splat534, <4 x double> %wide.load542, <4 x double> %i.arn)
  store <4 x double> %i.aro, ptr %i.arg, align 8, !tbaa !10, !alias.scope !62, !noalias !59
  store <4 x double> %i.arp, ptr %i.arh, align 8, !tbaa !10, !alias.scope !62, !noalias !59
  store <4 x double> %i.ark, ptr %i.are, align 8, !tbaa !10, !alias.scope !59
  store <4 x double> %i.arl, ptr %i.arf, align 8, !tbaa !10, !alias.scope !59
  %index.next545 = add nuw i64 %index540, 8       ; 2 uses
  %i.arq = icmp eq i64 %index.next545, %n.vec532
  br i1 %i.arq, label %middle.block546, label %vector.body539, !llvm.loop !64

middle.block546:                                  ; preds = %vector.body539
  %cmp.n547 = icmp eq i64 %n.vec532, %i.aqw
  br i1 %cmp.n547, label %._crit_edge.i.i, label %scalar.ph529.preheader

scalar.ph529.preheader:                           ; preds = %vector.memcheck517, %.lr.ph.i406.i, %middle.block546
  %indvars.iv49.i.i.ph = phi i64 [ 1, %vector.memcheck517 ], [ 1, %.lr.ph.i406.i ], [ %i.arc, %middle.block546 ] ; 4 uses
  %i.arr = sub nsw i64 %i.aqv, %indvars.iv49.i.i.ph
  %i.ars = zext nneg i32 %i.aqp to i64
  %i.art = sub nsw i64 %i.ars, %indvars.iv49.i.i.ph
  %xtraiter763 = and i64 %i.arr, 3                ; 2 uses
  %lcmp.mod764.not = icmp eq i64 %xtraiter763, 0
  br i1 %lcmp.mod764.not, label %scalar.ph529.prol.loopexit, label %scalar.ph529.prol

scalar.ph529.prol:                                ; preds = %scalar.ph529.preheader, %scalar.ph529.prol
  %indvars.iv49.i.i.prol = phi i64 [ %indvars.iv.next50.i.i.prol, %scalar.ph529.prol ], [ %indvars.iv49.i.i.ph, %scalar.ph529.preheader ] ; 3 uses
  %prol.iter765 = phi i64 [ %prol.iter765.next, %scalar.ph529.prol ], [ 0, %scalar.ph529.preheader ]
  %gep102.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep101.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.aru = load double, ptr %gep102.i.i.prol, align 8, !tbaa !10 ; 2 uses
  %gep104.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep103.i.i, i64 %indvars.iv49.i.i.prol ; 2 uses
  %i.arv = load double, ptr %gep104.i.i.prol, align 8, !tbaa !10 ; 2 uses
  %i.arw = fmul double %i.apr, %i.arv
  %i.arx = call double @llvm.fmuladd.f64(double %i.app, double %i.aru, double %i.arw)
  %i.ary = fmul double %i.app, %i.arv
end_hunk_0
begin_hunk_1_@_Z7ssaupd_PiPKcS_S1_S_PfS2_S_S2_S_S_S_S2_S_S2_S_S_:bb.a

sub_020.i:                                        ; preds = %.lr.ph75.i.prol.loopexit, %.lr.ph75.i, %middle.block705, %vec.epilog.middle.block719, %._crit_edge71.i
  %i.amk = load i8, ptr %3, align 1
  %.not82.i = icmp eq i8 %i.amk, 66
  br i1 %.not82.i, label %.tail19.i, label %.tail19.thread.i

.tail19.i:                                        ; preds = %sub_020.i
  %i.aml = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.amm = load i8, ptr %i.aml, align 1
  %i.amn = icmp eq i8 %i.amm, 69
  br i1 %i.amn, label %bb.cz, label %.tail19.thread.i

bb.cz:                                            ; preds = %.tail19.i
  store i16 16716, ptr %i.ag, align 2
  br label %.tail19.thread.i

.tail19.thread.i:                                 ; preds = %bb.cz, %.tail19.i, %sub_020.i
  %.sink266.i = phi ptr [ %i.ag, %bb.cz ], [ %3, %sub_020.i ], [ %3, %.tail19.i ]
  %.val386.i = load i32, ptr %i.aaw, align 4, !tbaa !8
  call fastcc void @_ZL7ssortr_PKcPiS1_PfS2_(ptr noundef nonnull %.sink266.i, i32 %.val389.i, i32 %.val386.i, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey)
  %i.amo = load i32, ptr %2, align 4, !tbaa !8
  %i.amp = mul nsw i32 %i.amo, 3
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr [4 x i8], ptr %i.fh, i64 %i.amq
  %i.ams = getelementptr i8, ptr %i.amr, i64 4
  %i.amt = load float, ptr %i.ams, align 4, !tbaa !163
  store float %i.amt, ptr %i.eq, align 4, !tbaa !163
  %i.amu = getelementptr inbounds nuw i8, ptr %13, i64 100 ; 2 uses
  %i.amv = load i32, ptr %i.amu, align 4, !tbaa !8
  %i.amw = load i32, ptr %i.em, align 4, !tbaa !8
  %i.amx = icmp sgt i32 %i.amv, %i.amw
  %.pre140.pre141.i = load i32, ptr %i.aaw, align 4, !tbaa !8 ; 3 uses
  br i1 %i.amx, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %.tail19.thread.i
  %i.amy = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.amz = icmp slt i32 %.pre140.pre141.i, %i.amy
  br i1 %i.amz, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  store i32 1, ptr %16, align 4, !tbaa !8
  %.pre140.pre.i = load i32, ptr %i.aaw, align 4, !tbaa !8
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %.tail19.thread.i
  %.pre140.i = phi i32 [ %.pre140.pre.i, %bb.db ], [ %.pre140.pre141.i, %bb.da ], [ %.pre140.pre141.i, %.tail19.thread.i ] ; 3 uses
  %i.ana = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.anb = icmp eq i32 %i.ana, 0
  br i1 %i.anb, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %i.anc = load i32, ptr %i.aai, align 4, !tbaa !8
  %i.and = icmp slt i32 %.pre140.i, %i.anc
  br i1 %i.and, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 2, ptr %16, align 4, !tbaa !8
  %.pre139.i = load i32, ptr %i.aaw, align 4, !tbaa !8
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %i.ane = phi i32 [ %.pre139.i, %bb.de ], [ %.pre140.i, %bb.dd ], [ %.pre140.i, %bb.dc ] ; 2 uses
  store i32 %i.ane, ptr %i.ej, align 4, !tbaa !8
  %i.anf = load i32, ptr %i.amu, align 4, !tbaa !8
  store i32 %i.anf, ptr %i.em, align 4, !tbaa !8
  store i32 %i.ane, ptr %i.ei, align 4, !tbaa !8
  br label %.sink.split268.i

bb.dg:                                            ; preds = %bb.cv
  %i.ang = icmp slt i32 %.pre.i, %i.aeb
  %.pr.i.pre303 = load i32, ptr %i.el, align 4, !tbaa !8 ; 2 uses
  %i.anh = icmp eq i32 %.pr.i.pre303, 1
  %or.cond422 = select i1 %i.ang, i1 %i.anh, i1 false
  br i1 %or.cond422, label %bb.dh, label %thread-pre-split.i

bb.dh:                                            ; preds = %bb.dg
  store i32 %.pre.i, ptr %i.ae, align 4, !tbaa !8
  %i.ani = sdiv i32 %i.aec, 2
  %i.anj = call i32 @llvm.smin.i32(i32 %.pre.i, i32 %i.ani)
  %i.ank = add nsw i32 %i.aeb, %i.anj             ; 3 uses
  store i32 %i.ank, ptr %i.ei, align 4, !tbaa !8
  %i.anl = icmp eq i32 %i.ank, 1
  %.pre302 = load i32, ptr %i.ie, align 4, !tbaa !8 ; 4 uses
  br i1 %i.anl, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.anm = icmp sgt i32 %.pre302, 5
  br i1 %i.anm, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ann = lshr i32 %.pre302, 1
  br label %.sink.split.i

bb.dk:                                            ; preds = %bb.di
  %i.ano = icmp sgt i32 %.pre302, 2
  br i1 %i.ano, label %.sink.split.i, label %bb.dl

.sink.split.i:                                    ; preds = %bb.dk, %bb.dj
  %.sink267.i = phi i32 [ %i.ann, %bb.dj ], [ 2, %bb.dk ] ; 2 uses
  store i32 %.sink267.i, ptr %i.ei, align 4, !tbaa !8
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split.i, %bb.dk, %bb.dh
  %i.anp = phi i32 [ %i.ank, %bb.dh ], [ 1, %bb.dk ], [ %.sink267.i, %.sink.split.i ] ; 2 uses
  %i.anq = sub nsw i32 %.pre302, %i.anp
  store i32 %i.anq, ptr %i.ej, align 4, !tbaa !8
  %i.anr = icmp slt i32 %i.aeb, %i.anp
  br i1 %i.anr, label %bb.dm, label %.thread373

bb.dm:                                            ; preds = %bb.dl
  call fastcc void @_ZL7ssgets_PiPKcS_S_PfS2_S2_(ptr noundef nonnull readonly %i.el, ptr noundef readonly %3, ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ey, ptr noundef nonnull %i.ff)
  %.pr.i.pre = load i32, ptr %i.el, align 4, !tbaa !8
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.dg, %bb.dm
  %i.ans = phi i32 [ %.pr.i.pre303, %bb.dg ], [ %.pr.i.pre, %bb.dm ]
  %i.ant = icmp eq i32 %i.ans, 0
  br i1 %i.ant, label %bb.dn, label %.thread373

bb.dn:                                            ; preds = %thread-pre-split.i
  %i.anu = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 1, ptr %i.anu, align 4, !tbaa !8
  br label %.sink.split268.i

.thread373:                                       ; preds = %thread-pre-split.i, %bb.dl
  %i.anv = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.anv, align 4, !tbaa !8
  br label %bb.dq

bb.do:                                            ; preds = %bb.ae
  %.pre306 = load i32, ptr %i.el, align 4, !tbaa !8
  %i.anw = icmp eq i32 %.pre306, 0
  %i.anx = getelementptr inbounds nuw i8, ptr %13, i64 96
  store i32 0, ptr %i.anx, align 4, !tbaa !8
  br i1 %i.anw, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call void @scopy_(ptr noundef nonnull %i.ej, ptr noundef nonnull %i.ff, ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ev, ptr noundef nonnull %i.ac)
  br label %bb.dq

bb.dq:                                            ; preds = %.thread373, %bb.dp, %bb.do
  %.val395.i = load i32, ptr %i.er, align 4, !tbaa !8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store float -1.000000e+00, ptr %i.c, align 4, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 1, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  %i.any = load i32, ptr %9, align 4, !tbaa !8    ; 5 uses
  %narrow330.i.i = xor i32 %i.any, -1
  %i.anz = sext i32 %narrow330.i.i to i64
  %i.aoa = getelementptr inbounds [4 x i8], ptr %8, i64 %i.anz ; 4 uses
  %narrow.i401.i = xor i32 %.val395.i, -1
  %i.aob = sext i32 %narrow.i401.i to i64         ; 5 uses
  %i.aoc = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.aob ; 12 uses
  %i.aod = load i32, ptr %i.fd, align 4, !tbaa !8 ; 8 uses
  %narrow327.i.i = xor i32 %i.aod, -1
  %i.aoe = sext i32 %narrow327.i.i to i64         ; 3 uses
  %i.aof = getelementptr inbounds [4 x i8], ptr %i.fc, i64 %i.aoe ; 8 uses
  %i.aog = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.aoh = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.aoi = add nsw i32 %i.aoh, %i.aog
  store i32 %i.aoi, ptr %i.k, align 4, !tbaa !8
  call void @slaset_(ptr noundef nonnull @.str.12, ptr noundef nonnull %i.k, ptr noundef nonnull %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.fc, ptr noundef nonnull %i.fd)
  %i.aoj = load i32, ptr %i.ej, align 4, !tbaa !8 ; 3 uses
  %i.aok = icmp eq i32 %i.aoj, 0
  br i1 %i.aok, label %_ZL7ssapps_PiS_S_PfS0_S_S0_S_S0_S0_S_S0_.exit.i, label %.preheader3.i.i

.preheader3.i.i:                                  ; preds = %bb.dq
  %.not28.i.i = icmp slt i32 %i.aoj, 1
  br i1 %.not28.i.i, label %.preheader3.._crit_edge31_crit_edge.i.i, label %.preheader.lr.ph.i.i

.preheader3.._crit_edge31_crit_edge.i.i:          ; preds = %.preheader3.i.i
  %.pre78.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  br label %._crit_edge31.i.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader3.i.i
  %i.aol = shl i32 %.val395.i, 1                  ; 3 uses
  %i.aom = sext i32 %i.aol to i64
  %i.aon = sext i32 %.val395.i to i64             ; 3 uses
  %i.aoo = sext i32 %i.aod to i64                 ; 5 uses
  %i.aop = add nuw i32 %i.aoj, 1
  %wide.trip.count.i402.i = zext i32 %i.aop to i64
  %.pre.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !8
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.aoc, i64 %i.aom ; 3 uses
  %invariant.gep109.i.i = getelementptr [4 x i8], ptr %i.aoc, i64 %i.aon ; 3 uses
  %i.aoq = shl nsw i64 %i.fb, 2                   ; 4 uses
  %i.aor = shl nsw i64 %i.aoe, 2                  ; 4 uses
  %i.aos = shl nsw i64 %i.aoo, 2
  %i.aot = shl nsw i64 %i.aoo, 2
  %i.aou = shl nsw i64 %i.aoo, 2
  %17 = add nsw i64 %i.fb, %i.aoe
  %i.aov = shl nsw i64 %17, 2                     ; 3 uses
  %scevgep541 = getelementptr i8, ptr %14, i64 %i.aov
  %i.aow = add nsw i64 %i.aov, -4                 ; 2 uses
  %scevgep543 = getelementptr i8, ptr %14, i64 %i.aow
  %scevgep545 = getelementptr i8, ptr %14, i64 %i.aov
  %scevgep547 = getelementptr i8, ptr %14, i64 %i.aow
  %i.aox = getelementptr i8, ptr %14, i64 %i.aoq
  %i.aoy = getelementptr i8, ptr %i.aox, i64 %i.aor
  %i.aoz = getelementptr i8, ptr %14, i64 %i.aoq
  %i.apa = getelementptr i8, ptr %i.aoz, i64 %i.aor
  %i.apb = getelementptr i8, ptr %i.apa, i64 -4
  %i.apc = getelementptr i8, ptr %14, i64 %i.aoq
  %i.apd = getelementptr i8, ptr %i.apc, i64 %i.aor
  %i.ape = getelementptr i8, ptr %14, i64 %i.aoq
  %i.apf = getelementptr i8, ptr %i.ape, i64 %i.aor
  %i.apg = getelementptr i8, ptr %i.apf, i64 -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge24.i.i, %.preheader.lr.ph.i.i
  %.pre.i.i = phi i32 [ %.pre.pre.i.i, %.preheader.lr.ph.i.i ], [ %.pre81.i.i, %._crit_edge24.i.i ] ; 2 uses
  %indvars.iv65.i.i = phi i64 [ 1, %.preheader.lr.ph.i.i ], [ %indvars.iv.next66.i.i, %._crit_edge24.i.i ] ; 3 uses
  %.031730.i.i = phi i32 [ 1, %.preheader.lr.ph.i.i ], [ %.1.lcssa.i.i, %._crit_edge24.i.i ] ; 4 uses
  %indvars128.i = trunc i64 %indvars.iv65.i.i to i32 ; 2 uses
  %i.aph = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %indvars.iv65.i.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dy, %.preheader.i.i
  %.pre83.i.i = phi i32 [ %.pre81.i.i, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ]
  %i.api = phi i32 [ %i.ayv, %bb.dy ], [ %.pre.i.i, %.preheader.i.i ] ; 5 uses
  %.0.i.i = phi i32 [ %i.ayk, %bb.dy ], [ %.031730.i.i, %.preheader.i.i ] ; 9 uses
  %i.apj = sext i32 %.0.i.i to i64                ; 3 uses
  %i.apk = call i32 @llvm.smax.i32(i32 %.0.i.i, i32 %i.api)
  %smax.i.i = sext i32 %i.apk to i64
  %exitcond.not.i404.i472.not = icmp slt i32 %.0.i.i, %i.api
  br i1 %exitcond.not.i404.i472.not, label %.lr.ph475, label %.loopexit2.i.i

bb.ds:                                            ; preds = %.lr.ph475
  %exitcond.not.i404.i = icmp eq i64 %indvars.iv.next.i405.i, %smax.i.i
  br i1 %exitcond.not.i404.i, label %.loopexit2.i.i, label %.lr.ph475, !llvm.loop !207

.lr.ph475:                                        ; preds = %bb.dr, %bb.ds
  %indvars.iv.i403.i473 = phi i64 [ %indvars.iv.next.i405.i, %bb.ds ], [ %i.apj, %bb.dr ] ; 3 uses
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i403.i473
  %indvars.iv.next.i405.i = add nsw i64 %indvars.iv.i403.i473, 1 ; 3 uses
  %i.apl = load <2 x float>, ptr %gep.i.i, align 4, !tbaa !163
  %i.apm = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.apl) ; 2 uses
  %shift723 = shufflevector <2 x float> %i.apm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop724 = fadd <2 x float> %i.apm, %shift723
  %i.apn = extractelement <2 x float> %foldExtExtBinop724, i64 0
  %i.apo = getelementptr [4 x i8], ptr %i.aoc, i64 %indvars.iv.next.i405.i ; 2 uses
  %i.app = getelementptr [4 x i8], ptr %i.apo, i64 %i.aon
  %i.apq = load float, ptr %i.app, align 4, !tbaa !163
  %i.apr = fmul float %i.apn, f0x34000000
  %i.aps = fcmp ugt float %i.apq, %i.apr
  br i1 %i.aps, label %bb.ds, label %bb.dt, !llvm.loop !207

bb.dt:                                            ; preds = %.lr.ph475
  %i.apt = getelementptr [4 x i8], ptr %i.apo, i64 %i.aon
  %i.apu = trunc nsw i64 %indvars.iv.i403.i473 to i32
  store float 0.000000e+00, ptr %i.apt, align 4, !tbaa !163
  br label %.loopexit2.i.i

.loopexit2.i.i:                                   ; preds = %bb.ds, %bb.dr, %bb.dt
  %.0318.i.i = phi i32 [ %i.apu, %bb.dt ], [ %i.api, %bb.dr ], [ %i.api, %bb.ds ] ; 7 uses
  %i.apv = icmp slt i32 %.0.i.i, %.0318.i.i
  br i1 %i.apv, label %bb.du, label %.loopexit1.i.i

bb.du:                                            ; preds = %.loopexit2.i.i
  %i.apw = add nsw i32 %.0.i.i, %i.aol
  %i.apx = sext i32 %i.apw to i64
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.apx ; 3 uses
  %i.apz = load float, ptr %i.apy, align 4, !tbaa !163
  %i.aqa = load float, ptr %i.aph, align 4, !tbaa !163
  %i.aqb = fsub float %i.apz, %i.aqa
  store float %i.aqb, ptr %i.g, align 4, !tbaa !163
  %i.aqc = add nsw i32 %.0.i.i, 1                 ; 3 uses
  %i.aqd = add nsw i32 %i.aqc, %.val395.i
  %i.aqe = sext i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.aqe ; 3 uses
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !163
  store float %i.aqg, ptr %i.h, align 4, !tbaa !163
  call void @slartg_(ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, ptr noundef nonnull %i.j, ptr noundef nonnull %i.i)
  %i.aqh = load float, ptr %i.f, align 4, !tbaa !163 ; 20 uses
  %i.aqi = load float, ptr %i.apy, align 4, !tbaa !163 ; 2 uses
  %i.aqj = load float, ptr %i.j, align 4, !tbaa !163 ; 15 uses
  %i.aqk = load float, ptr %i.aqf, align 4, !tbaa !163 ; 3 uses
  %i.aql = fmul float %i.aqj, %i.aqk              ; 2 uses
  %i.aqm = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqi, float %i.aql)
  %i.aqn = add nsw i32 %i.aqc, %i.aol
  %i.aqo = sext i32 %i.aqn to i64
  %i.aqp = getelementptr inbounds [4 x i8], ptr %i.aoc, i64 %i.aqo ; 2 uses
  %i.aqq = load float, ptr %i.aqp, align 4, !tbaa !163 ; 2 uses
  %i.aqr = fmul float %i.aqj, %i.aqq
  %i.aqs = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqk, float %i.aqr)
  %i.aqt = fneg float %i.aql
  %i.aqu = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqq, float %i.aqt) ; 2 uses
  %i.aqv = fneg float %i.aqi
  %i.aqw = fmul float %i.aqj, %i.aqv
  %i.aqx = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqk, float %i.aqw) ; 2 uses
  %i.aqy = fmul float %i.aqj, %i.aqs
  %i.aqz = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqm, float %i.aqy)
  store float %i.aqz, ptr %i.apy, align 4, !tbaa !163
  %i.ara = fneg float %i.aqx
  %i.arb = fmul float %i.aqj, %i.ara
  %i.arc = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqu, float %i.arb)
  store float %i.arc, ptr %i.aqp, align 4, !tbaa !163
  %i.ard = fmul float %i.aqj, %i.aqu
  %i.are = call float @llvm.fmuladd.f32(float %i.aqh, float %i.aqx, float %i.ard)
  store float %i.are, ptr %i.aqf, align 4, !tbaa !163
  %i.arf = add i32 %.0.i.i, %indvars128.i
  %i.arg = load i32, ptr %i.k, align 4, !tbaa !8  ; 3 uses
  %i.arh = call i32 @llvm.smin.i32(i32 %i.arf, i32 %i.arg) ; 6 uses
  %.not3327.i.i = icmp slt i32 %i.arh, 1
  br i1 %.not3327.i.i, label %._crit_edge.i.i, label %iter.check573

iter.check573:                                    ; preds = %bb.du
  %i.ari = mul nsw i32 %.0.i.i, %i.aod
  %i.arj = mul nsw i32 %i.aqc, %i.aod
  %i.ark = fneg float %i.aqj                      ; 7 uses
  %i.arl = sext i32 %i.ari to i64                 ; 2 uses
  %i.arm = sext i32 %i.arj to i64                 ; 2 uses
  %invariant.gep101.i.i = getelementptr [4 x i8], ptr %i.aof, i64 %i.arl ; 7 uses
  %invariant.gep103.i.i = getelementptr [4 x i8], ptr %i.aof, i64 %i.arm ; 7 uses
  %narrow.i = add nuw i32 %i.arh, 1               ; 5 uses
  %i.arn = zext i32 %narrow.i to i64              ; 3 uses
  %i.aro = zext nneg i32 %i.arh to i64            ; 5 uses
  %min.iters.check552 = icmp ult i32 %i.arh, 4
  br i1 %min.iters.check552, label %vec.epilog.scalar.ph574.preheader, label %vector.memcheck540

vector.memcheck540:                               ; preds = %iter.check573
  %i.arp = shl nsw i64 %i.arm, 2                  ; 2 uses
  %scevgep542 = getelementptr i8, ptr %scevgep541, i64 %i.arp
  %i.arq = shl nuw nsw i64 %i.arn, 2              ; 2 uses
  %i.arr = getelementptr i8, ptr %scevgep543, i64 %i.arp
  %scevgep544 = getelementptr i8, ptr %i.arr, i64 %i.arq
  %i.ars = shl nsw i64 %i.arl, 2                  ; 2 uses
  %scevgep546 = getelementptr i8, ptr %scevgep545, i64 %i.ars
  %i.art = getelementptr i8, ptr %scevgep547, i64 %i.ars
  %scevgep548 = getelementptr i8, ptr %i.art, i64 %i.arq
  %bound0549 = icmp ult ptr %scevgep542, %scevgep548
  %bound1550 = icmp ult ptr %scevgep546, %scevgep544
  %found.conflict551 = and i1 %bound0549, %bound1550
  br i1 %found.conflict551, label %vec.epilog.scalar.ph574.preheader, label %vector.main.loop.iter.check553

vector.main.loop.iter.check553:                   ; preds = %vector.memcheck540
  %min.iters.check554 = icmp ult i32 %i.arh, 16
  br i1 %min.iters.check554, label %vec.epilog.ph577, label %vector.ph555

vector.ph555:                                     ; preds = %vector.main.loop.iter.check553
  %i.aru = and i64 %i.aro, 12
  %n.vec556 = and i64 %i.aro, 2147483632          ; 4 uses
  %i.arv = or disjoint i64 %n.vec556, 1
  %broadcast.splatinsert557 = insertelement <8 x float> poison, float %i.ark, i64 0
  %broadcast.splat558 = shufflevector <8 x float> %broadcast.splatinsert557, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert559 = insertelement <8 x float> poison, float %i.aqj, i64 0
  %broadcast.splat560 = shufflevector <8 x float> %broadcast.splatinsert559, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert561 = insertelement <8 x float> poison, float %i.aqh, i64 0
  %broadcast.splat562 = shufflevector <8 x float> %broadcast.splatinsert561, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph555
  %index564 = phi i64 [ 0, %vector.ph555 ], [ %index.next569, %vector.body563 ] ; 2 uses
  %i.arw = or disjoint i64 %index564, 1           ; 2 uses
  %i.arx = getelementptr [4 x i8], ptr %invariant.gep101.i.i, i64 %i.arw ; 3 uses
  %i.ary = getelementptr i8, ptr %i.arx, i64 32   ; 2 uses
  %wide.load565 = load <8 x float>, ptr %i.arx, align 4, !tbaa !163, !alias.scope !208 ; 2 uses
  %wide.load566 = load <8 x float>, ptr %i.ary, align 4, !tbaa !163, !alias.scope !208 ; 2 uses
  %i.arz = getelementptr [4 x i8], ptr %invariant.gep103.i.i, i64 %i.arw ; 3 uses
  %i.asa = getelementptr i8, ptr %i.arz, i64 32   ; 2 uses
  %wide.load567 = load <8 x float>, ptr %i.arz, align 4, !tbaa !163, !alias.scope !211, !noalias !208 ; 2 uses
  %wide.load568 = load <8 x float>, ptr %i.asa, align 4, !tbaa !163, !alias.scope !211, !noalias !208 ; 2 uses
  %i.asb = fmul <8 x float> %broadcast.splat560, %wide.load567
  %i.asc = fmul <8 x float> %broadcast.splat560, %wide.load568
  %i.asd = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat562, <8 x float> %wide.load565, <8 x float> %i.asb)
  %i.ase = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat562, <8 x float> %wide.load566, <8 x float> %i.asc)
  %i.asf = fmul <8 x float> %broadcast.splat562, %wide.load567
  %i.asg = fmul <8 x float> %broadcast.splat562, %wide.load568
  %i.ash = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat558, <8 x float> %wide.load565, <8 x float> %i.asf)
  %i.asi = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat558, <8 x float> %wide.load566, <8 x float> %i.asg)
  store <8 x float> %i.ash, ptr %i.arz, align 4, !tbaa !163, !alias.scope !211, !noalias !208
  store <8 x float> %i.asi, ptr %i.asa, align 4, !tbaa !163, !alias.scope !211, !noalias !208
  store <8 x float> %i.asd, ptr %i.arx, align 4, !tbaa !163, !alias.scope !208
  store <8 x float> %i.ase, ptr %i.ary, align 4, !tbaa !163, !alias.scope !208
  %index.next569 = add nuw i64 %index564, 16      ; 2 uses
  %i.asj = icmp eq i64 %index.next569, %n.vec556
  br i1 %i.asj, label %middle.block570, label %vector.body563, !llvm.loop !213

middle.block570:                                  ; preds = %vector.body563
  %cmp.n571 = icmp eq i64 %n.vec556, %i.aro
  br i1 %cmp.n571, label %._crit_edge.i.i, label %vec.epilog.iter.check575

vec.epilog.iter.check575:                         ; preds = %middle.block570
  %min.epilog.iters.check576 = icmp eq i64 %i.aru, 0
  br i1 %min.epilog.iters.check576, label %vec.epilog.scalar.ph574.preheader, label %vec.epilog.ph577, !prof !33

vec.epilog.ph577:                                 ; preds = %vector.main.loop.iter.check553, %vec.epilog.iter.check575
  %vec.epilog.resume.val572 = phi i64 [ %n.vec556, %vec.epilog.iter.check575 ], [ 0, %vector.main.loop.iter.check553 ]
  %n.vec578 = and i64 %i.aro, 2147483644          ; 3 uses
  %i.ask = or disjoint i64 %n.vec578, 1
  %broadcast.splatinsert579 = insertelement <4 x float> poison, float %i.ark, i64 0
  %broadcast.splat580 = shufflevector <4 x float> %broadcast.splatinsert579, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert581 = insertelement <4 x float> poison, float %i.aqj, i64 0
  %broadcast.splat582 = shufflevector <4 x float> %broadcast.splatinsert581, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert583 = insertelement <4 x float> poison, float %i.aqh, i64 0
  %broadcast.splat584 = shufflevector <4 x float> %broadcast.splatinsert583, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
end_hunk_1
