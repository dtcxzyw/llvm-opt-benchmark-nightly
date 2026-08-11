inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@PSolve:bb.a
.lr.ph.i356.i:                                    ; preds = %.lr.ph.i356.i.prol.loopexit, %.lr.ph.i356.i
  %indvars.iv.i357.i = phi i64 [ %indvars.iv.next.i358.i.1, %.lr.ph.i356.i ], [ %indvars.iv.i357.i.unr, %.lr.ph.i356.i.prol.loopexit ] ; 5 uses
  %i.ajz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i357.i
  %i.aka = load double, ptr %i.ajz, align 8, !tbaa !28
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.ajh, i64 %indvars.iv.i357.i
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !28
  %i.akd = getelementptr inbounds nuw [8 x i8], ptr %i.aia, i64 %indvars.iv.i357.i ; 2 uses
  %i.ake = load double, ptr %i.akd, align 8, !tbaa !28
  %i.akf = tail call double @llvm.fmuladd.f64(double %i.aka, double %i.akc, double %i.ake)
  store double %i.akf, ptr %i.akd, align 8, !tbaa !28
  %indvars.iv.next.i358.i = add nuw nsw i64 %indvars.iv.i357.i, 1 ; 3 uses
  %i.akg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i358.i
  %i.akh = load double, ptr %i.akg, align 8, !tbaa !28
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.ajh, i64 %indvars.iv.next.i358.i
  %i.akj = load double, ptr %i.aki, align 8, !tbaa !28
  %i.akk = getelementptr inbounds nuw [8 x i8], ptr %i.aia, i64 %indvars.iv.next.i358.i ; 2 uses
  %i.akl = load double, ptr %i.akk, align 8, !tbaa !28
  %i.akm = tail call double @llvm.fmuladd.f64(double %i.akh, double %i.akj, double %i.akl)
  store double %i.akm, ptr %i.akk, align 8, !tbaa !28
  %indvars.iv.next.i358.i.1 = add nuw nsw i64 %indvars.iv.i357.i, 2 ; 2 uses
  %exitcond.not.i359.i.1 = icmp eq i64 %indvars.iv.next.i358.i.1, %.pre-phi.i
  br i1 %exitcond.not.i359.i.1, label %v_inc_by_prod.exit.i, label %.lr.ph.i356.i, !llvm.loop !208

bb.u:                                             ; preds = %bb.m
  %i.akn = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.xs ; 10 uses
  %i.ako = getelementptr inbounds [8 x i8], ptr %i.akn, i64 %i.dm ; 4 uses
  br i1 %i.v, label %.lr.ph.i363.i.preheader, label %v_inc_by_prod.exit.i

.lr.ph.i363.i.preheader:                          ; preds = %bb.u
  %brmerge700 = select i1 %min.iters.check164, i1 true, i1 %found.conflict160
  br i1 %brmerge700, label %.lr.ph.i363.i.preheader588, label %vector.body167

vector.body167:                                   ; preds = %.lr.ph.i363.i.preheader, %vector.body167
  %index168 = phi i64 [ %index.next175, %vector.body167 ], [ 0, %.lr.ph.i363.i.preheader ] ; 4 uses
  %i.akp = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index168 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 16
  %wide.load169 = load <2 x double>, ptr %i.akp, align 16, !tbaa !28
  %wide.load170 = load <2 x double>, ptr %i.akq, align 16, !tbaa !28
  %i.akr = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %index168 ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 16
  %wide.load171 = load <2 x double>, ptr %i.akr, align 8, !tbaa !28, !alias.scope !209
  %wide.load172 = load <2 x double>, ptr %i.aks, align 8, !tbaa !28, !alias.scope !209
  %i.akt = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %index168 ; 3 uses
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 16 ; 2 uses
  %wide.load173 = load <2 x double>, ptr %i.akt, align 8, !tbaa !28, !alias.scope !212, !noalias !209
  %wide.load174 = load <2 x double>, ptr %i.aku, align 8, !tbaa !28, !alias.scope !212, !noalias !209
  %i.akv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load169, <2 x double> %wide.load171, <2 x double> %wide.load173)
  %i.akw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load170, <2 x double> %wide.load172, <2 x double> %wide.load174)
  store <2 x double> %i.akv, ptr %i.akt, align 8, !tbaa !28, !alias.scope !212, !noalias !209
  store <2 x double> %i.akw, ptr %i.aku, align 8, !tbaa !28, !alias.scope !212, !noalias !209
  %index.next175 = add nuw i64 %index168, 4       ; 2 uses
  %i.akx = icmp eq i64 %index.next175, %n.vec166
  br i1 %i.akx, label %middle.block176, label %vector.body167, !llvm.loop !214

middle.block176:                                  ; preds = %vector.body167
  br i1 %cmp.n177, label %.lr.ph.preheader.i368.i, label %.lr.ph.i363.i.preheader588

.lr.ph.i363.i.preheader588:                       ; preds = %.lr.ph.i363.i.preheader, %middle.block176
  %indvars.iv.i364.i.ph = phi i64 [ %n.vec166, %middle.block176 ], [ 0, %.lr.ph.i363.i.preheader ] ; 6 uses
  %.neg685 = or disjoint i64 %indvars.iv.i364.i.ph, 1
  br i1 %lcmp.mod667.not, label %.lr.ph.i363.i.prol.loopexit, label %.lr.ph.i363.i.prol

.lr.ph.i363.i.prol:                               ; preds = %.lr.ph.i363.i.preheader588
  %i.aky = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i364.i.ph
  %i.akz = load double, ptr %i.aky, align 16, !tbaa !28
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %indvars.iv.i364.i.ph
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !28
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.i364.i.ph ; 2 uses
  %i.ald = load double, ptr %i.alc, align 8, !tbaa !28
  %i.ale = tail call double @llvm.fmuladd.f64(double %i.akz, double %i.alb, double %i.ald)
  store double %i.ale, ptr %i.alc, align 8, !tbaa !28
  %indvars.iv.next.i365.i.prol = or disjoint i64 %indvars.iv.i364.i.ph, 1
  br label %.lr.ph.i363.i.prol.loopexit

.lr.ph.i363.i.prol.loopexit:                      ; preds = %.lr.ph.i363.i.prol, %.lr.ph.i363.i.preheader588
  %indvars.iv.i364.i.unr = phi i64 [ %indvars.iv.i364.i.ph, %.lr.ph.i363.i.preheader588 ], [ %indvars.iv.next.i365.i.prol, %.lr.ph.i363.i.prol ]
  %i.alf = icmp eq i64 %.pre-phi.i, %.neg685
  br i1 %i.alf, label %.lr.ph.preheader.i368.i, label %.lr.ph.i363.i

.lr.ph.i363.i:                                    ; preds = %.lr.ph.i363.i.prol.loopexit, %.lr.ph.i363.i
  %indvars.iv.i364.i = phi i64 [ %indvars.iv.next.i365.i.1, %.lr.ph.i363.i ], [ %indvars.iv.i364.i.unr, %.lr.ph.i363.i.prol.loopexit ] ; 5 uses
  %i.alg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i364.i
  %i.alh = load double, ptr %i.alg, align 8, !tbaa !28
  %i.ali = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %indvars.iv.i364.i
  %i.alj = load double, ptr %i.ali, align 8, !tbaa !28
  %i.alk = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.i364.i ; 2 uses
  %i.all = load double, ptr %i.alk, align 8, !tbaa !28
  %i.alm = tail call double @llvm.fmuladd.f64(double %i.alh, double %i.alj, double %i.all)
  store double %i.alm, ptr %i.alk, align 8, !tbaa !28
  %indvars.iv.next.i365.i = add nuw nsw i64 %indvars.iv.i364.i, 1 ; 3 uses
  %i.aln = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i365.i
  %i.alo = load double, ptr %i.aln, align 8, !tbaa !28
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.ako, i64 %indvars.iv.next.i365.i
  %i.alq = load double, ptr %i.alp, align 8, !tbaa !28
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i365.i ; 2 uses
  %i.als = load double, ptr %i.alr, align 8, !tbaa !28
  %i.alt = tail call double @llvm.fmuladd.f64(double %i.alo, double %i.alq, double %i.als)
  store double %i.alt, ptr %i.alr, align 8, !tbaa !28
  %indvars.iv.next.i365.i.1 = add nuw nsw i64 %indvars.iv.i364.i, 2 ; 2 uses
  %exitcond.not.i366.i.1 = icmp eq i64 %indvars.iv.next.i365.i.1, %.pre-phi.i
  br i1 %exitcond.not.i366.i.1, label %.lr.ph.preheader.i368.i, label %.lr.ph.i363.i, !llvm.loop !215

.lr.ph.preheader.i368.i:                          ; preds = %.lr.ph.i363.i.prol.loopexit, %.lr.ph.i363.i, %middle.block176
  %i.alu = getelementptr inbounds [8 x i8], ptr %i.akn, i64 %i.dn ; 4 uses
  %brmerge701 = select i1 %min.iters.check138, i1 true, i1 %found.conflict
  br i1 %brmerge701, label %.lr.ph.i370.i.preheader, label %vector.body141

vector.body141:                                   ; preds = %.lr.ph.preheader.i368.i, %vector.body141
  %index142 = phi i64 [ %index.next149, %vector.body141 ], [ 0, %.lr.ph.preheader.i368.i ] ; 4 uses
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index142 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 16
  %wide.load143 = load <2 x double>, ptr %i.alv, align 16, !tbaa !28
  %wide.load144 = load <2 x double>, ptr %i.alw, align 16, !tbaa !28
  %i.alx = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %index142 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 16
  %wide.load145 = load <2 x double>, ptr %i.alx, align 8, !tbaa !28, !alias.scope !216
  %wide.load146 = load <2 x double>, ptr %i.aly, align 8, !tbaa !28, !alias.scope !216
  %i.alz = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %index142 ; 3 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alz, i64 16 ; 2 uses
  %wide.load147 = load <2 x double>, ptr %i.alz, align 8, !tbaa !28, !alias.scope !219, !noalias !216
  %wide.load148 = load <2 x double>, ptr %i.ama, align 8, !tbaa !28, !alias.scope !219, !noalias !216
  %i.amb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load143, <2 x double> %wide.load145, <2 x double> %wide.load147)
  %i.amc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load144, <2 x double> %wide.load146, <2 x double> %wide.load148)
  store <2 x double> %i.amb, ptr %i.alz, align 8, !tbaa !28, !alias.scope !219, !noalias !216
  store <2 x double> %i.amc, ptr %i.ama, align 8, !tbaa !28, !alias.scope !219, !noalias !216
  %index.next149 = add nuw i64 %index142, 4       ; 2 uses
  %i.amd = icmp eq i64 %index.next149, %n.vec140
  br i1 %i.amd, label %middle.block150, label %vector.body141, !llvm.loop !221

middle.block150:                                  ; preds = %vector.body141
  br i1 %cmp.n151, label %v_inc_by_prod.exit.i, label %.lr.ph.i370.i.preheader

.lr.ph.i370.i.preheader:                          ; preds = %.lr.ph.preheader.i368.i, %middle.block150
  %indvars.iv.i371.i.ph = phi i64 [ %n.vec140, %middle.block150 ], [ 0, %.lr.ph.preheader.i368.i ] ; 6 uses
  %.neg686 = or disjoint i64 %indvars.iv.i371.i.ph, 1
  br i1 %lcmp.mod670.not, label %.lr.ph.i370.i.prol.loopexit, label %.lr.ph.i370.i.prol

.lr.ph.i370.i.prol:                               ; preds = %.lr.ph.i370.i.preheader
  %i.ame = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i371.i.ph
  %i.amf = load double, ptr %i.ame, align 16, !tbaa !28
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %indvars.iv.i371.i.ph
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !28
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.i371.i.ph ; 2 uses
  %i.amj = load double, ptr %i.ami, align 8, !tbaa !28
  %i.amk = tail call double @llvm.fmuladd.f64(double %i.amf, double %i.amh, double %i.amj)
  store double %i.amk, ptr %i.ami, align 8, !tbaa !28
  %indvars.iv.next.i372.i.prol = or disjoint i64 %indvars.iv.i371.i.ph, 1
  br label %.lr.ph.i370.i.prol.loopexit

.lr.ph.i370.i.prol.loopexit:                      ; preds = %.lr.ph.i370.i.prol, %.lr.ph.i370.i.preheader
  %indvars.iv.i371.i.unr = phi i64 [ %indvars.iv.i371.i.ph, %.lr.ph.i370.i.preheader ], [ %indvars.iv.next.i372.i.prol, %.lr.ph.i370.i.prol ]
  %i.aml = icmp eq i64 %.pre-phi.i, %.neg686
  br i1 %i.aml, label %v_inc_by_prod.exit.i, label %.lr.ph.i370.i

.lr.ph.i370.i:                                    ; preds = %.lr.ph.i370.i.prol.loopexit, %.lr.ph.i370.i
  %indvars.iv.i371.i = phi i64 [ %indvars.iv.next.i372.i.1, %.lr.ph.i370.i ], [ %indvars.iv.i371.i.unr, %.lr.ph.i370.i.prol.loopexit ] ; 5 uses
  %i.amm = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i371.i
  %i.amn = load double, ptr %i.amm, align 8, !tbaa !28
  %i.amo = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %indvars.iv.i371.i
  %i.amp = load double, ptr %i.amo, align 8, !tbaa !28
  %i.amq = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.i371.i ; 2 uses
  %i.amr = load double, ptr %i.amq, align 8, !tbaa !28
  %i.ams = tail call double @llvm.fmuladd.f64(double %i.amn, double %i.amp, double %i.amr)
  store double %i.ams, ptr %i.amq, align 8, !tbaa !28
  %indvars.iv.next.i372.i = add nuw nsw i64 %indvars.iv.i371.i, 1 ; 3 uses
  %i.amt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i372.i
  %i.amu = load double, ptr %i.amt, align 8, !tbaa !28
  %i.amv = getelementptr inbounds nuw [8 x i8], ptr %i.alu, i64 %indvars.iv.next.i372.i
  %i.amw = load double, ptr %i.amv, align 8, !tbaa !28
  %i.amx = getelementptr inbounds nuw [8 x i8], ptr %i.akn, i64 %indvars.iv.next.i372.i ; 2 uses
  %i.amy = load double, ptr %i.amx, align 8, !tbaa !28
  %i.amz = tail call double @llvm.fmuladd.f64(double %i.amu, double %i.amw, double %i.amy)
  store double %i.amz, ptr %i.amx, align 8, !tbaa !28
  %indvars.iv.next.i372.i.1 = add nuw nsw i64 %indvars.iv.i371.i, 2 ; 2 uses
  %exitcond.not.i373.i.1 = icmp eq i64 %indvars.iv.next.i372.i.1, %.pre-phi.i
  br i1 %exitcond.not.i373.i.1, label %v_inc_by_prod.exit.i, label %.lr.ph.i370.i, !llvm.loop !222

v_inc_by_prod.exit.i:                             ; preds = %.lr.ph.i356.i.prol.loopexit, %.lr.ph.i356.i, %.lr.ph.i342.i.prol.loopexit, %.lr.ph.i342.i, %.lr.ph.i335.i.prol.loopexit, %.lr.ph.i335.i, %.lr.ph.i321.i.prol.loopexit, %.lr.ph.i321.i, %.lr.ph.i307.i.prol.loopexit, %.lr.ph.i307.i, %.lr.ph.i300.i.prol.loopexit, %.lr.ph.i300.i, %.lr.ph.i294.i.prol.loopexit, %.lr.ph.i294.i, %.lr.ph.i370.i.prol.loopexit, %.lr.ph.i370.i, %middle.block410, %middle.block384, %middle.block332, %middle.block280, %middle.block254, %middle.block228, %middle.block202, %middle.block150, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 1 ; 2 uses
  %exitcond460.not.i = icmp eq i64 %indvars.iv.next457.i, %wide.trip.count449.i
  br i1 %exitcond460.not.i, label %._crit_edge406.i, label %bb.m

._crit_edge406.i:                                 ; preds = %v_inc_by_prod.exit.i
  %indvars.iv.next462.i = add nuw nsw i64 %indvars.iv461.i, 1 ; 2 uses
  %exitcond465.not.i = icmp eq i64 %indvars.iv.next462.i, %wide.trip.count454.i
  br i1 %exitcond465.not.i, label %._crit_edge410.split.i, label %.lr.ph405.i

._crit_edge410.split.i:                           ; preds = %._crit_edge406.i, %.loopexit.i
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %i.g, ptr noundef %4) #11
  %i.ana = add nuw nsw i32 %.0231411.i, 1         ; 2 uses
  %exitcond466.not.i = icmp eq i32 %i.ana, 6
  br i1 %exitcond466.not.i, label %GSIter.exit, label %bb.b

GSIter.exit:                                      ; preds = %._crit_edge410.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.anb = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.anc = load i32, ptr %i.n, align 8, !tbaa !87 ; 3 uses
  %i.and = load i32, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.ane = getelementptr inbounds nuw i8, ptr %8, i64 92
  %9 = load i32, ptr %i.ane, align 4, !tbaa !84
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.anf = load i32, ptr %10, align 8, !tbaa !81  ; 2 uses
  %i.ang = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.anh = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.ani = icmp sgt i32 %i.and, 0
  br i1 %i.ani, label %.lr.ph56, label %._crit_edge57.split

.lr.ph56:                                         ; preds = %GSIter.exit
  %i.anj = icmp sgt i32 %i.anc, 0
  %i.ank = sext i32 %i.anf to i64                 ; 2 uses
  br i1 %i.anj, label %.lr.ph.preheader, label %._crit_edge57.split

.lr.ph.preheader:                                 ; preds = %.lr.ph56
  %11 = mul i32 %i.anc, %i.anf
  %wide.trip.count80 = zext nneg i32 %i.and to i64
  %wide.trip.count = zext nneg i32 %i.anc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv77 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next78, %._crit_edge ] ; 2 uses
  %indvars.iv72 = phi i32 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next73, %._crit_edge ] ; 2 uses
  %12 = sext i32 %indvars.iv72 to i64
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.anh, i64 %indvars.iv77
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !29
  %i.ann = mul nsw i32 %i.anm, %9
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv72.a = phi i64 [ %12, %.lr.ph ], [ %indvars.iv.next73.a, %bb.v ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.ano = getelementptr inbounds nuw [4 x i8], ptr %i.ang, i64 %indvars.iv
  %i.anp = load i32, ptr %i.ano, align 4, !tbaa !29
  %i.anq = add nsw i32 %i.anp, %i.ann
  %i.anr = sext i32 %i.anq to i64                 ; 2 uses
  %i.ans = getelementptr inbounds [8 x i8], ptr %8, i64 %i.anr
  %i.ant = load ptr, ptr %i.ans, align 8, !tbaa !18
  %i.anu = getelementptr inbounds [8 x i8], ptr %i.anb, i64 %i.anr
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !21
  %i.anw = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #11
  %i.anx = getelementptr inbounds [8 x i8], ptr %i.anw, i64 %indvars.iv72.a
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.ant, i64 noundef %i.ank, ptr noundef %i.anv, ptr noundef %i.anx) #11
  %indvars.iv.next73.a = add nsw i64 %indvars.iv72.a, %i.ank
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.v
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %indvars.iv.next73 = add i32 %indvars.iv72, %11
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge57.split, label %.lr.ph

._crit_edge57.split:                              ; preds = %._crit_edge, %.lr.ph56, %GSIter.exit
  ret i32 0
}

declare i32 @ARKodeSetLSNormFactor(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @ARKStepReInit(ptr noundef, ptr noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SUNLinSol_SPGMRSetPrecType(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @PrintAllSpecies(ptr noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @N_VGetArrayPointer(ptr noundef %0) #11 ; 36 uses
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, double noundef %3) ; 0 uses
  %.not21 = icmp slt i32 %1, 1
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %i.c to i64
  %i.d = mul i32 %2, 5
  %i.e = shl nuw i32 %1, 1                        ; 6 uses
  %i.f = mul i32 %1, 3                            ; 6 uses
  %i.g = shl i32 %1, 2                            ; 6 uses
  %i.h = mul i32 %1, 5                            ; 6 uses
  %i.i = shl i32 %2, 2
  %i.j = mul i32 %2, 3
  %i.k = shl i32 %2, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43, i32 noundef %i.l) ; 0 uses
  %i.n = add nsw i64 %indvars.iv, -1              ; 2 uses
  %i.o = trunc nuw nsw i64 %i.n to i32            ; 10 uses
  %i.p = add i32 %i.d, %i.o                       ; 6 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !28
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.s) ; 0 uses
  %i.u = add i32 %i.p, %1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !28
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.x) ; 0 uses
  %i.z = add i32 %i.p, %i.e
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !28
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ac) ; 0 uses
  %i.ae = add i32 %i.p, %i.f
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !28
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ah) ; 0 uses
  %i.aj = add i32 %i.p, %i.g
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !28
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.am) ; 0 uses
  %i.ao = add i32 %i.p, %i.h
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !28
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ar) ; 0 uses
  %putchar18 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.at = add i32 %i.i, %i.o                      ; 6 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !28
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.aw) ; 0 uses
  %i.ay = add i32 %i.at, %1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !28
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bb) ; 0 uses
  %i.bd = add i32 %i.at, %i.e
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !28
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bg) ; 0 uses
  %i.bi = add i32 %i.at, %i.f
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !28
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bl) ; 0 uses
  %i.bn = add i32 %i.at, %i.g
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !28
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bq) ; 0 uses
  %i.bs = add i32 %i.at, %i.h
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !28
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bv) ; 0 uses
  %putchar18.1 = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.bx = add i32 %i.j, %i.o                      ; 6 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !28
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ca) ; 0 uses
  %i.cc = add i32 %i.bx, %1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !28
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cf) ; 0 uses
  %i.ch = add i32 %i.bx, %i.e
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !28
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ck) ; 0 uses
  %i.cm = add i32 %i.bx, %i.f
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !28
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cp) ; 0 uses
  %i.cr = add i32 %i.bx, %i.g
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !28
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cu) ; 0 uses
  %i.cw = add i32 %i.bx, %i.h
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !28
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cz) ; 0 uses
  %putchar18.2 = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.db = add i32 %i.k, %i.o                      ; 6 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !28
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.de) ; 0 uses
  %i.dg = add i32 %i.db, %1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !28
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.dj) ; 0 uses
  %i.dl = add i32 %i.db, %i.e
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !28
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.do) ; 0 uses
  %i.dq = add i32 %i.db, %i.f
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !28
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.dt) ; 0 uses
  %i.dv = add i32 %i.db, %i.g
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !28
  %i.dz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.dy) ; 0 uses
  %i.ea = add i32 %i.db, %i.h
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !28
  %i.ee = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ed) ; 0 uses
  %putchar18.3 = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.ef = add i32 %2, %i.o                        ; 6 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !28
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ei) ; 0 uses
  %i.ek = add i32 %i.ef, %1
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !28
  %i.eo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.en) ; 0 uses
  %i.ep = add i32 %i.ef, %i.e
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !28
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.es) ; 0 uses
  %i.eu = add i32 %i.ef, %i.f
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !28
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ex) ; 0 uses
  %i.ez = add i32 %i.ef, %i.g
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !28
  %i.fd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.fc) ; 0 uses
  %i.fe = add i32 %i.ef, %i.h
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !28
  %i.fi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.fh) ; 0 uses
  %putchar18.4 = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.n
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !28
  %i.fl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.fk) ; 0 uses
  %i.fm = add i32 %1, %i.o
  %i.fn = sext i32 %i.fm to i64
end_hunk_0
