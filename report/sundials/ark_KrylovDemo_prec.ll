Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ark_KrylovDemo_prec?download=true
inline.NumInlined: 74
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@PSolve:bb.a
  %i.aju = load double, ptr %i.ajt, align 8, !tbaa !22
  %i.ajv = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv.i357.i
  %i.ajw = load double, ptr %i.ajv, align 8, !tbaa !22
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %indvars.iv.i357.i ; 2 uses
  %i.ajy = load double, ptr %i.ajx, align 8, !tbaa !22
  %i.ajz = tail call double @llvm.fmuladd.f64(double %i.aju, double %i.ajw, double %i.ajy)
  store double %i.ajz, ptr %i.ajx, align 8, !tbaa !22
  %indvars.iv.next.i358.i = add nuw nsw i64 %indvars.iv.i357.i, 1 ; 3 uses
  %i.aka = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i358.i
  %i.akb = load double, ptr %i.aka, align 8, !tbaa !22
  %i.akc = getelementptr inbounds nuw [8 x i8], ptr %i.ajb, i64 %indvars.iv.next.i358.i
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !22
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.ahu, i64 %indvars.iv.next.i358.i ; 2 uses
  %i.akf = load double, ptr %i.ake, align 8, !tbaa !22
  %i.akg = tail call double @llvm.fmuladd.f64(double %i.akb, double %i.akd, double %i.akf)
  store double %i.akg, ptr %i.ake, align 8, !tbaa !22
  %indvars.iv.next.i358.i.1 = add nuw nsw i64 %indvars.iv.i357.i, 2 ; 2 uses
  %exitcond.not.i359.i.1 = icmp eq i64 %indvars.iv.next.i358.i.1, %.pre-phi.i
  br i1 %exitcond.not.i359.i.1, label %v_inc_by_prod.exit.i, label %.lr.ph.i356.i, !llvm.loop !186

bb.u:                                             ; preds = %bb.m
  %i.akh = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.xm ; 10 uses
  %i.aki = getelementptr inbounds [8 x i8], ptr %i.akh, i64 %i.dm ; 4 uses
  br i1 %i.v, label %.lr.ph.i363.i.preheader, label %v_inc_by_prod.exit.i

.lr.ph.i363.i.preheader:                          ; preds = %bb.u
  %brmerge810 = select i1 %min.iters.check170, i1 true, i1 %found.conflict174
  br i1 %brmerge810, label %.lr.ph.i363.i.preheader698, label %vector.body178

vector.body178:                                   ; preds = %.lr.ph.i363.i.preheader, %vector.body178
  %index179 = phi i64 [ %index.next186, %vector.body178 ], [ 0, %.lr.ph.i363.i.preheader ] ; 4 uses
  %i.akj = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %index179 ; 2 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %i.akj, i64 16
  %wide.load180.a = load <2 x double>, ptr %i.akj, align 16, !tbaa !22
  %wide.load181.a = load <2 x double>, ptr %i.akk, align 16, !tbaa !22
  %i.akl = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %index179 ; 2 uses
  %i.akm = getelementptr inbounds nuw i8, ptr %i.akl, i64 16
  %wide.load182 = load <2 x double>, ptr %i.akl, align 8, !tbaa !22, !alias.scope !219
  %wide.load183 = load <2 x double>, ptr %i.akm, align 8, !tbaa !22, !alias.scope !219
  %i.akn = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %index179 ; 3 uses
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 16 ; 2 uses
  %wide.load184 = load <2 x double>, ptr %i.akn, align 8, !tbaa !22, !alias.scope !220, !noalias !219
  %wide.load185 = load <2 x double>, ptr %i.ako, align 8, !tbaa !22, !alias.scope !220, !noalias !219
  %i.akp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load180.a, <2 x double> %wide.load182, <2 x double> %wide.load184)
  %i.akq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load181.a, <2 x double> %wide.load183, <2 x double> %wide.load185)
  store <2 x double> %i.akp, ptr %i.akn, align 8, !tbaa !22, !alias.scope !220, !noalias !219
  store <2 x double> %i.akq, ptr %i.ako, align 8, !tbaa !22, !alias.scope !220, !noalias !219
  %index.next186 = add nuw i64 %index179, 4       ; 2 uses
  %i.akr = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.akr, label %middle.block187, label %vector.body178, !llvm.loop !190

middle.block187:                                  ; preds = %vector.body178
  br i1 %cmp.n188, label %.lr.ph.preheader.i368.i, label %.lr.ph.i363.i.preheader698

.lr.ph.i363.i.preheader698:                       ; preds = %.lr.ph.i363.i.preheader, %middle.block187
  %indvars.iv.i364.i.ph = phi i64 [ %n.vec177, %middle.block187 ], [ 0, %.lr.ph.i363.i.preheader ] ; 6 uses
  %.neg795 = or disjoint i64 %indvars.iv.i364.i.ph, 1
  br i1 %lcmp.mod777.not, label %.lr.ph.i363.i.prol.loopexit, label %.lr.ph.i363.i.prol

.lr.ph.i363.i.prol:                               ; preds = %.lr.ph.i363.i.preheader698
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i364.i.ph
  %i.akt = load double, ptr %i.aks, align 16, !tbaa !22
  %i.aku = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %indvars.iv.i364.i.ph
  %i.akv = load double, ptr %i.aku, align 8, !tbaa !22
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv.i364.i.ph ; 2 uses
  %i.akx = load double, ptr %i.akw, align 8, !tbaa !22
  %i.aky = tail call double @llvm.fmuladd.f64(double %i.akt, double %i.akv, double %i.akx)
  store double %i.aky, ptr %i.akw, align 8, !tbaa !22
  %indvars.iv.next.i365.i.prol = or disjoint i64 %indvars.iv.i364.i.ph, 1
  br label %.lr.ph.i363.i.prol.loopexit

.lr.ph.i363.i.prol.loopexit:                      ; preds = %.lr.ph.i363.i.prol, %.lr.ph.i363.i.preheader698
  %indvars.iv.i364.i.unr = phi i64 [ %indvars.iv.i364.i.ph, %.lr.ph.i363.i.preheader698 ], [ %indvars.iv.next.i365.i.prol, %.lr.ph.i363.i.prol ]
  %i.akz = icmp eq i64 %.pre-phi.i, %.neg795
  br i1 %i.akz, label %.lr.ph.preheader.i368.i, label %.lr.ph.i363.i

.lr.ph.i363.i:                                    ; preds = %.lr.ph.i363.i.prol.loopexit, %.lr.ph.i363.i
  %indvars.iv.i364.i = phi i64 [ %indvars.iv.next.i365.i.1, %.lr.ph.i363.i ], [ %indvars.iv.i364.i.unr, %.lr.ph.i363.i.prol.loopexit ] ; 5 uses
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i364.i
  %i.alb = load double, ptr %i.ala, align 8, !tbaa !22
  %i.alc = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %indvars.iv.i364.i
  %i.ald = load double, ptr %i.alc, align 8, !tbaa !22
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv.i364.i ; 2 uses
  %i.alf = load double, ptr %i.ale, align 8, !tbaa !22
  %i.alg = tail call double @llvm.fmuladd.f64(double %i.alb, double %i.ald, double %i.alf)
  store double %i.alg, ptr %i.ale, align 8, !tbaa !22
  %indvars.iv.next.i365.i = add nuw nsw i64 %indvars.iv.i364.i, 1 ; 3 uses
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i365.i
  %i.ali = load double, ptr %i.alh, align 8, !tbaa !22
  %i.alj = getelementptr inbounds nuw [8 x i8], ptr %i.aki, i64 %indvars.iv.next.i365.i
  %i.alk = load double, ptr %i.alj, align 8, !tbaa !22
  %i.all = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv.next.i365.i ; 2 uses
  %i.alm = load double, ptr %i.all, align 8, !tbaa !22
  %i.aln = tail call double @llvm.fmuladd.f64(double %i.ali, double %i.alk, double %i.alm)
  store double %i.aln, ptr %i.all, align 8, !tbaa !22
  %indvars.iv.next.i365.i.1 = add nuw nsw i64 %indvars.iv.i364.i, 2 ; 2 uses
  %exitcond.not.i366.i.1 = icmp eq i64 %indvars.iv.next.i365.i.1, %.pre-phi.i
  br i1 %exitcond.not.i366.i.1, label %.lr.ph.preheader.i368.i, label %.lr.ph.i363.i, !llvm.loop !191

.lr.ph.preheader.i368.i:                          ; preds = %.lr.ph.i363.i.prol.loopexit, %.lr.ph.i363.i, %middle.block187
  %i.alo = getelementptr inbounds [8 x i8], ptr %i.akh, i64 %i.dn ; 4 uses
  %brmerge811 = select i1 %min.iters.check140, i1 true, i1 %found.conflict
  br i1 %brmerge811, label %.lr.ph.i370.i.preheader, label %vector.body144

vector.body144:                                   ; preds = %.lr.ph.preheader.i368.i, %vector.body144
  %index145 = phi i64 [ %index.next152, %vector.body144 ], [ 0, %.lr.ph.preheader.i368.i ] ; 4 uses
  %i.alp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index145 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 16
  %wide.load146.a = load <2 x double>, ptr %i.alp, align 16, !tbaa !22
  %wide.load147.a = load <2 x double>, ptr %i.alq, align 16, !tbaa !22
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %index145 ; 2 uses
  %i.als = getelementptr inbounds nuw i8, ptr %i.alr, i64 16
  %wide.load148 = load <2 x double>, ptr %i.alr, align 8, !tbaa !22, !alias.scope !221
  %wide.load149 = load <2 x double>, ptr %i.als, align 8, !tbaa !22, !alias.scope !221
  %i.alt = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %index145 ; 3 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 16 ; 2 uses
  %wide.load150 = load <2 x double>, ptr %i.alt, align 8, !tbaa !22, !alias.scope !222, !noalias !221
  %wide.load151 = load <2 x double>, ptr %i.alu, align 8, !tbaa !22, !alias.scope !222, !noalias !221
  %i.alv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load146.a, <2 x double> %wide.load148, <2 x double> %wide.load150)
  %i.alw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load147.a, <2 x double> %wide.load149, <2 x double> %wide.load151)
  store <2 x double> %i.alv, ptr %i.alt, align 8, !tbaa !22, !alias.scope !222, !noalias !221
  store <2 x double> %i.alw, ptr %i.alu, align 8, !tbaa !22, !alias.scope !222, !noalias !221
  %index.next152 = add nuw i64 %index145, 4       ; 2 uses
  %i.alx = icmp eq i64 %index.next152, %n.vec143
  br i1 %i.alx, label %middle.block153, label %vector.body144, !llvm.loop !195

middle.block153:                                  ; preds = %vector.body144
  br i1 %cmp.n154, label %v_inc_by_prod.exit.i, label %.lr.ph.i370.i.preheader

.lr.ph.i370.i.preheader:                          ; preds = %.lr.ph.preheader.i368.i, %middle.block153
  %indvars.iv.i371.i.ph = phi i64 [ %n.vec143, %middle.block153 ], [ 0, %.lr.ph.preheader.i368.i ] ; 6 uses
  %.neg796 = or disjoint i64 %indvars.iv.i371.i.ph, 1
  br i1 %lcmp.mod780.not, label %.lr.ph.i370.i.prol.loopexit, label %.lr.ph.i370.i.prol

.lr.ph.i370.i.prol:                               ; preds = %.lr.ph.i370.i.preheader
  %i.aly = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i371.i.ph
  %i.alz = load double, ptr %i.aly, align 16, !tbaa !22
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %indvars.iv.i371.i.ph
  %i.amb = load double, ptr %i.ama, align 8, !tbaa !22
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv.i371.i.ph ; 2 uses
  %i.amd = load double, ptr %i.amc, align 8, !tbaa !22
  %i.ame = tail call double @llvm.fmuladd.f64(double %i.alz, double %i.amb, double %i.amd)
  store double %i.ame, ptr %i.amc, align 8, !tbaa !22
  %indvars.iv.next.i372.i.prol = or disjoint i64 %indvars.iv.i371.i.ph, 1
  br label %.lr.ph.i370.i.prol.loopexit

.lr.ph.i370.i.prol.loopexit:                      ; preds = %.lr.ph.i370.i.prol, %.lr.ph.i370.i.preheader
  %indvars.iv.i371.i.unr = phi i64 [ %indvars.iv.i371.i.ph, %.lr.ph.i370.i.preheader ], [ %indvars.iv.next.i372.i.prol, %.lr.ph.i370.i.prol ]
  %i.amf = icmp eq i64 %.pre-phi.i, %.neg796
  br i1 %i.amf, label %v_inc_by_prod.exit.i, label %.lr.ph.i370.i

.lr.ph.i370.i:                                    ; preds = %.lr.ph.i370.i.prol.loopexit, %.lr.ph.i370.i
  %indvars.iv.i371.i = phi i64 [ %indvars.iv.next.i372.i.1, %.lr.ph.i370.i ], [ %indvars.iv.i371.i.unr, %.lr.ph.i370.i.prol.loopexit ] ; 5 uses
  %i.amg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i371.i
  %i.amh = load double, ptr %i.amg, align 8, !tbaa !22
  %i.ami = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %indvars.iv.i371.i
  %i.amj = load double, ptr %i.ami, align 8, !tbaa !22
  %i.amk = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv.i371.i ; 2 uses
  %i.aml = load double, ptr %i.amk, align 8, !tbaa !22
  %i.amm = tail call double @llvm.fmuladd.f64(double %i.amh, double %i.amj, double %i.aml)
  store double %i.amm, ptr %i.amk, align 8, !tbaa !22
  %indvars.iv.next.i372.i = add nuw nsw i64 %indvars.iv.i371.i, 1 ; 3 uses
  %i.amn = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i372.i
  %i.amo = load double, ptr %i.amn, align 8, !tbaa !22
  %i.amp = getelementptr inbounds nuw [8 x i8], ptr %i.alo, i64 %indvars.iv.next.i372.i
  %i.amq = load double, ptr %i.amp, align 8, !tbaa !22
  %i.amr = getelementptr inbounds nuw [8 x i8], ptr %i.akh, i64 %indvars.iv.next.i372.i ; 2 uses
  %i.ams = load double, ptr %i.amr, align 8, !tbaa !22
  %i.amt = tail call double @llvm.fmuladd.f64(double %i.amo, double %i.amq, double %i.ams)
  store double %i.amt, ptr %i.amr, align 8, !tbaa !22
  %indvars.iv.next.i372.i.1 = add nuw nsw i64 %indvars.iv.i371.i, 2 ; 2 uses
  %exitcond.not.i373.i.1 = icmp eq i64 %indvars.iv.next.i372.i.1, %.pre-phi.i
  br i1 %exitcond.not.i373.i.1, label %v_inc_by_prod.exit.i, label %.lr.ph.i370.i, !llvm.loop !196

v_inc_by_prod.exit.i:                             ; preds = %.lr.ph.i356.i.prol.loopexit, %.lr.ph.i356.i, %.lr.ph.i342.i.prol.loopexit, %.lr.ph.i342.i, %.lr.ph.i335.i.prol.loopexit, %.lr.ph.i335.i, %.lr.ph.i321.i.prol.loopexit, %.lr.ph.i321.i, %.lr.ph.i307.i.prol.loopexit, %.lr.ph.i307.i, %.lr.ph.i300.i.prol.loopexit, %.lr.ph.i300.i, %.lr.ph.i294.i.prol.loopexit, %.lr.ph.i294.i, %.lr.ph.i370.i.prol.loopexit, %.lr.ph.i370.i, %middle.block493, %middle.block459, %middle.block391, %middle.block323, %middle.block289, %middle.block255, %middle.block221, %middle.block153, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %indvars.iv.next457.i = add nuw nsw i64 %indvars.iv456.i, 1 ; 2 uses
  %exitcond460.not.i = icmp eq i64 %indvars.iv.next457.i, %wide.trip.count449.i
  br i1 %exitcond460.not.i, label %._crit_edge406.i, label %bb.m

._crit_edge406.i:                                 ; preds = %v_inc_by_prod.exit.i
  %indvars.iv.next462.i = add nuw nsw i64 %indvars.iv461.i, 1 ; 2 uses
  %exitcond465.not.i = icmp eq i64 %indvars.iv.next462.i, %wide.trip.count454.i
  br i1 %exitcond465.not.i, label %._crit_edge410.split.i, label %.lr.ph405.i

._crit_edge410.split.i:                           ; preds = %._crit_edge406.i, %.loopexit.i
  tail call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %4, double noundef 1.000000e+00, ptr noundef %i.g, ptr noundef %4) #11
  %i.amu = add nuw nsw i32 %.0411.i, 1            ; 2 uses
  %exitcond466.not.i = icmp eq i32 %i.amu, 6
  br i1 %exitcond466.not.i, label %GSIter.exit, label %bb.b

GSIter.exit:                                      ; preds = %._crit_edge410.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.amv = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.amw = load i32, ptr %i.n, align 8, !tbaa !34 ; 2 uses
  %i.amx = load i32, ptr %i.p, align 4, !tbaa !197 ; 2 uses
  %i.amy = getelementptr inbounds nuw i8, ptr %8, i64 92
  %9 = load i32, ptr %i.amy, align 4, !tbaa !33
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.amz = load i32, ptr %10, align 8, !tbaa !31  ; 2 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.anb = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.anc = icmp sgt i32 %i.amx, 0
  br i1 %i.anc, label %.lr.ph56, label %._crit_edge57.split

.lr.ph56:                                         ; preds = %GSIter.exit
  %i.and = icmp sgt i32 %i.amw, 0
  %i.ane = sext i32 %i.amz to i64
  br i1 %i.and, label %.lr.ph.preheader, label %._crit_edge57.split

.lr.ph.preheader:                                 ; preds = %.lr.ph56
  %wide.trip.count80 = zext nneg i32 %i.amx to i64
  %wide.trip.count = zext nneg i32 %i.amw to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv77 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next78, %._crit_edge ] ; 2 uses
  %.055 = phi i32 [ 0, %.lr.ph.preheader ], [ %12, %._crit_edge ]
  %i.anf = getelementptr inbounds nuw [4 x i8], ptr %i.anb, i64 %indvars.iv77
  %i.ang = load i32, ptr %i.anf, align 4, !tbaa !23
  %i.anh = mul nsw i32 %i.ang, %9
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv72 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next73, %bb.v ] ; 2 uses
  %.153 = phi i32 [ %.055, %.lr.ph ], [ %12, %bb.v ] ; 2 uses
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.ana, i64 %indvars.iv72
  %i.anj = load i32, ptr %i.ani, align 4, !tbaa !23
  %i.ank = add nsw i32 %i.anj, %i.anh
  %i.anl = sext i32 %i.ank to i64                 ; 2 uses
  %i.anm = getelementptr inbounds [8 x i8], ptr %8, i64 %i.anl
  %i.ann = load ptr, ptr %i.anm, align 8, !tbaa !14
  %i.ano = getelementptr inbounds [8 x i8], ptr %i.amv, i64 %i.anl
  %i.anp = load ptr, ptr %i.ano, align 8, !tbaa !16
  %i.anq = tail call ptr @N_VGetArrayPointer(ptr noundef %4) #11
  %11 = sext i32 %.153 to i64
  %i.anr = getelementptr inbounds [8 x i8], ptr %i.anq, i64 %11
  tail call void @SUNDlsMat_denseGETRS(ptr noundef %i.ann, i64 noundef %i.ane, ptr noundef %i.anp, ptr noundef %i.anr) #11
  %12 = add nsw i32 %.153, %i.amz                 ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v

._crit_edge:                                      ; preds = %bb.v
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
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
  %i.s = load double, ptr %i.r, align 8, !tbaa !22
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.s) ; 0 uses
  %i.u = add i32 %i.p, %1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !22
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.x) ; 0 uses
  %i.z = add i32 %i.p, %i.e
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aa
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !22
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ac) ; 0 uses
  %i.ae = add i32 %i.p, %i.f
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !22
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ah) ; 0 uses
  %i.aj = add i32 %i.p, %i.g
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !22
  %i.an = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.am) ; 0 uses
  %i.ao = add i32 %i.p, %i.h
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !22
  %i.as = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ar) ; 0 uses
  %putchar18 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.at = add i32 %i.i, %i.o                      ; 6 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !22
  %i.ax = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.aw) ; 0 uses
  %i.ay = add i32 %i.at, %1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !22
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bb) ; 0 uses
  %i.bd = add i32 %i.at, %i.e
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.be
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !22
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bg) ; 0 uses
  %i.bi = add i32 %i.at, %i.f
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !22
  %i.bm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bl) ; 0 uses
  %i.bn = add i32 %i.at, %i.g
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !22
  %i.br = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bq) ; 0 uses
  %i.bs = add i32 %i.at, %i.h
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bt
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !22
  %i.bw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.bv) ; 0 uses
  %putchar18.1 = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.bx = add i32 %i.j, %i.o                      ; 6 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.by
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !22
  %i.cb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ca) ; 0 uses
  %i.cc = add i32 %i.bx, %1
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !22
  %i.cg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cf) ; 0 uses
  %i.ch = add i32 %i.bx, %i.e
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ci
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !22
  %i.cl = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ck) ; 0 uses
  %i.cm = add i32 %i.bx, %i.f
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !22
  %i.cq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cp) ; 0 uses
  %i.cr = add i32 %i.bx, %i.g
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !22
  %i.cv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cu) ; 0 uses
  %i.cw = add i32 %i.bx, %i.h
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !22
  %i.da = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.cz) ; 0 uses
  %putchar18.2 = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.db = add i32 %i.k, %i.o                      ; 6 uses
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !22
  %i.df = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.de) ; 0 uses
  %i.dg = add i32 %i.db, %1
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dh
  %i.dj = load double, ptr %i.di, align 8, !tbaa !22
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.dj) ; 0 uses
  %i.dl = add i32 %i.db, %i.e
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !22
  %i.dp = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.do) ; 0 uses
  %i.dq = add i32 %i.db, %i.f
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !22
  %i.du = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.dt) ; 0 uses
  %i.dv = add i32 %i.db, %i.g
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.dw
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !22
  %i.dz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.dy) ; 0 uses
  %i.ea = add i32 %i.db, %i.h
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.eb
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !22
  %i.ee = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ed) ; 0 uses
  %putchar18.3 = tail call i32 @putchar(i32 10)   ; 0 uses
  %i.ef = add i32 %2, %i.o                        ; 6 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.eg
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !22
  %i.ej = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ei) ; 0 uses
  %i.ek = add i32 %i.ef, %1
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.el
  %i.en = load double, ptr %i.em, align 8, !tbaa !22
  %i.eo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.en) ; 0 uses
  %i.ep = add i32 %i.ef, %i.e
  %i.eq = sext i32 %i.ep to i64
  %i.er = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.eq
  %i.es = load double, ptr %i.er, align 8, !tbaa !22
  %i.et = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.es) ; 0 uses
  %i.eu = add i32 %i.ef, %i.f
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ev
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !22
  %i.ey = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.ex) ; 0 uses
  %i.ez = add i32 %i.ef, %i.g
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fa
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !22
  %i.fd = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.fc) ; 0 uses
  %i.fe = add i32 %i.ef, %i.h
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ff
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !22
  %i.fi = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44, double noundef %i.fh) ; 0 uses
end_hunk_0
