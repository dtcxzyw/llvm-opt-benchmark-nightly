Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pme_spread?download=true
inline.NumInlined: 325
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_Z14spread_on_gridPK9gmx_pme_tP11PmeAtomCommP14PmeAndFftGridsbbb.omp_outlined.1:bb.a
  %i.alq = icmp ugt i64 %i.alp, -8
  br i1 %i.alq, label %._crit_edge260.2.i, label %.lr.ph259.2.i

.lr.ph259.2.i:                                    ; preds = %.lr.ph259.2.i.prol.loopexit, %.lr.ph259.2.i
  %indvars.iv334.2.i = phi i64 [ %indvars.iv.next335.2.i.7, %.lr.ph259.2.i ], [ %indvars.iv334.2.i.unr, %.lr.ph259.2.i.prol.loopexit ] ; 10 uses
  %i.alr = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv334.2.i ; 2 uses
  %i.als = getelementptr i8, ptr %i.alr, i64 -4
  %i.alt = load float, ptr %i.als, align 4, !tbaa !134
  %i.alu = load float, ptr %i.alr, align 4, !tbaa !134
  %i.alv = fsub float %i.alt, %i.alu
  %gep443.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv334.2.i
  store float %i.alv, ptr %gep443.i, align 4, !tbaa !134
  %indvars.iv.next335.2.i = add nuw nsw i64 %indvars.iv334.2.i, 1 ; 2 uses
  %i.alw = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i ; 2 uses
  %i.alx = getelementptr i8, ptr %i.alw, i64 -4
  %i.aly = load float, ptr %i.alx, align 4, !tbaa !134
  %i.alz = load float, ptr %i.alw, align 4, !tbaa !134
  %i.ama = fsub float %i.aly, %i.alz
  %gep443.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i
  store float %i.ama, ptr %gep443.i.1, align 4, !tbaa !134
  %indvars.iv.next335.2.i.1 = add nuw nsw i64 %indvars.iv334.2.i, 2 ; 2 uses
  %i.amb = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.1 ; 2 uses
  %i.amc = getelementptr i8, ptr %i.amb, i64 -4
  %i.amd = load float, ptr %i.amc, align 4, !tbaa !134
  %i.ame = load float, ptr %i.amb, align 4, !tbaa !134
  %i.amf = fsub float %i.amd, %i.ame
  %gep443.i.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.1
  store float %i.amf, ptr %gep443.i.2, align 4, !tbaa !134
  %indvars.iv.next335.2.i.2 = add nuw nsw i64 %indvars.iv334.2.i, 3 ; 2 uses
  %i.amg = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.2 ; 2 uses
  %i.amh = getelementptr i8, ptr %i.amg, i64 -4
  %i.ami = load float, ptr %i.amh, align 4, !tbaa !134
  %i.amj = load float, ptr %i.amg, align 4, !tbaa !134
  %i.amk = fsub float %i.ami, %i.amj
  %gep443.i.3 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.2
  store float %i.amk, ptr %gep443.i.3, align 4, !tbaa !134
  %indvars.iv.next335.2.i.3 = add nuw nsw i64 %indvars.iv334.2.i, 4 ; 2 uses
  %i.aml = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.3 ; 2 uses
  %i.amm = getelementptr i8, ptr %i.aml, i64 -4
  %i.amn = load float, ptr %i.amm, align 4, !tbaa !134
  %i.amo = load float, ptr %i.aml, align 4, !tbaa !134
  %i.amp = fsub float %i.amn, %i.amo
  %gep443.i.4 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.3
  store float %i.amp, ptr %gep443.i.4, align 4, !tbaa !134
  %indvars.iv.next335.2.i.4 = add nuw nsw i64 %indvars.iv334.2.i, 5 ; 2 uses
  %i.amq = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.4 ; 2 uses
  %i.amr = getelementptr i8, ptr %i.amq, i64 -4
  %i.ams = load float, ptr %i.amr, align 4, !tbaa !134
  %i.amt = load float, ptr %i.amq, align 4, !tbaa !134
  %i.amu = fsub float %i.ams, %i.amt
  %gep443.i.5 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.4
  store float %i.amu, ptr %gep443.i.5, align 4, !tbaa !134
  %indvars.iv.next335.2.i.5 = add nuw nsw i64 %indvars.iv334.2.i, 6 ; 2 uses
  %i.amv = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.5 ; 2 uses
  %i.amw = getelementptr i8, ptr %i.amv, i64 -4
  %i.amx = load float, ptr %i.amw, align 4, !tbaa !134
  %i.amy = load float, ptr %i.amv, align 4, !tbaa !134
  %i.amz = fsub float %i.amx, %i.amy
  %gep443.i.6 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.5
  store float %i.amz, ptr %gep443.i.6, align 4, !tbaa !134
  %indvars.iv.next335.2.i.6 = add nuw nsw i64 %indvars.iv334.2.i, 7 ; 2 uses
  %i.ana = getelementptr [4 x i8], ptr %i.d, i64 %indvars.iv.next335.2.i.6 ; 2 uses
  %i.anb = getelementptr i8, ptr %i.ana, i64 -4
  %i.anc = load float, ptr %i.anb, align 4, !tbaa !134
  %i.and = load float, ptr %i.ana, align 4, !tbaa !134
  %i.ane = fsub float %i.anc, %i.and
  %gep443.i.7 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep442.i, i64 %indvars.iv.next335.2.i.6
  store float %i.ane, ptr %gep443.i.7, align 4, !tbaa !134
  %indvars.iv.next335.2.i.7 = add nuw nsw i64 %indvars.iv334.2.i, 8 ; 2 uses
  %exitcond338.2.not.i.7 = icmp eq i64 %indvars.iv.next335.2.i.7, %i.ij
  br i1 %exitcond338.2.not.i.7, label %._crit_edge260.2.i, label %.lr.ph259.2.i, !llvm.loop !303

._crit_edge260.2.i:                               ; preds = %.lr.ph259.2.i.prol.loopexit, %.lr.ph259.2.i, %vec.epilog.middle.block220, %middle.block205
  %i.anf = fmul float %i.ail, %i.hv
  %i.ang = load float, ptr %i.hy, align 4, !tbaa !134
  %i.anh = fmul float %i.anf, %i.ang
  store float %i.anh, ptr %i.hq, align 4, !tbaa !134
  br i1 %i.hz, label %.lr.ph263.2.i.preheader, label %._crit_edge264.2.thread.i

.lr.ph263.2.i.preheader:                          ; preds = %._crit_edge260.2.i
  br i1 %min.iters.check158, label %.lr.ph263.2.i.preheader507, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph263.2.i.preheader
  %broadcast.splatinsert161 = insertelement <8 x float> poison, float %i.ail, i64 0
  %broadcast.splat162 = shufflevector <8 x float> %broadcast.splatinsert161, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph159
  %index168 = phi i64 [ 0, %vector.ph159 ], [ %index.next174, %vector.body167 ]
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph159 ], [ %vec.ind.next, %vector.body167 ] ; 2 uses
  %vec.ind169 = phi <8 x i32> [ <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>, %vector.ph159 ], [ %vec.ind.next175, %vector.body167 ] ; 2 uses
  %i.ani = uitofp nneg <8 x i32> %vec.ind169 to <8 x float>
  %i.anj = fadd <8 x float> %broadcast.splat162, %i.ani
  %i.ank = sub nuw nsw <8 x i64> %broadcast.splat164, %vec.ind ; 2 uses
  %i.anl = extractelement <8 x i64> %i.ank, i64 0
  %i.anm = getelementptr [4 x i8], ptr %i.d, i64 %i.anl ; 2 uses
  %i.ann = getelementptr i8, ptr %i.anm, i64 -36
  %wide.load170 = load <8 x float>, ptr %i.ann, align 4, !tbaa !134
  %reverse = shufflevector <8 x float> %wide.load170, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ano = trunc nuw nsw <8 x i64> %i.ank to <8 x i32>
  %i.anp = uitofp nneg <8 x i32> %i.ano to <8 x float>
  %i.anq = fsub <8 x float> %i.anp, %broadcast.splat162
  %i.anr = getelementptr i8, ptr %i.anm, i64 -32  ; 2 uses
  %wide.load171 = load <8 x float>, ptr %i.anr, align 4, !tbaa !134
  %reverse172 = shufflevector <8 x float> %wide.load171, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ans = fmul <8 x float> %reverse172, %i.anq
  %i.ant = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anj, <8 x float> %reverse, <8 x float> %i.ans)
  %i.anu = shufflevector <8 x float> %i.ant, <8 x float> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse173 = fmul <8 x float> %i.anu, %i.ji
  store <8 x float> %reverse173, ptr %i.anr, align 4, !tbaa !134
  %index.next174 = add nuw i64 %index168, 8       ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next175 = add <8 x i32> %vec.ind169, splat (i32 8)
  %i.anv = icmp eq i64 %index.next174, %n.vec160
  br i1 %i.anv, label %middle.block176, label %vector.body167, !llvm.loop !304

middle.block176:                                  ; preds = %vector.body167
  br i1 %cmp.n177, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i.preheader507

.lr.ph263.2.i.preheader507:                       ; preds = %.lr.ph263.2.i.preheader, %middle.block176
  %indvars.iv339.2.i.ph = phi i64 [ 1, %.lr.ph263.2.i.preheader ], [ %i.jh, %middle.block176 ]
  br label %.lr.ph263.2.i

.lr.ph263.2.i:                                    ; preds = %.lr.ph263.2.i.preheader507, %.lr.ph263.2.i
  %indvars.iv339.2.i = phi i64 [ %indvars.iv.next340.2.i, %.lr.ph263.2.i ], [ %indvars.iv339.2.i.ph, %.lr.ph263.2.i.preheader507 ] ; 3 uses
  %i.anw = trunc nuw nsw i64 %indvars.iv339.2.i to i32
  %i.anx = uitofp nneg i32 %i.anw to float
  %i.any = fadd float %i.ail, %i.anx
  %i.anz = sub nuw nsw i64 %i.hw, %indvars.iv339.2.i ; 2 uses
  %i.aoa = getelementptr [4 x i8], ptr %i.d, i64 %i.anz ; 2 uses
  %i.aob = getelementptr i8, ptr %i.aoa, i64 -8
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !134
  %i.aod = trunc nuw nsw i64 %i.anz to i32
  %i.aoe = uitofp nneg i32 %i.aod to float
  %i.aof = fsub float %i.aoe, %i.ail
  %i.aog = getelementptr i8, ptr %i.aoa, i64 -4   ; 2 uses
  %i.aoh = load float, ptr %i.aog, align 4, !tbaa !134
  %i.aoi = fmul float %i.aoh, %i.aof
  %i.aoj = call float @llvm.fmuladd.f32(float %i.any, float %i.aoc, float %i.aoi)
  %i.aok = fmul float %i.aoj, %i.hv
  store float %i.aok, ptr %i.aog, align 4, !tbaa !134
  %indvars.iv.next340.2.i = add nuw nsw i64 %indvars.iv339.2.i, 1 ; 2 uses
  %exitcond343.2.not.i = icmp eq i64 %indvars.iv.next340.2.i, %wide.trip.count342.i
  br i1 %exitcond343.2.not.i, label %._crit_edge264.2.thread.i, label %.lr.ph263.2.i, !llvm.loop !305

._crit_edge264.2.thread.i:                        ; preds = %.lr.ph263.2.i, %middle.block176, %._crit_edge260.2.i
  %i.aol = fmul float %i.aim, %i.hv
  %i.aom = load float, ptr %i.d, align 16, !tbaa !134
  %i.aon = fmul float %i.aol, %i.aom
  store float %i.aon, ptr %i.d, align 16, !tbaa !134
  br label %.lr.ph267.2.i

._crit_edge264.2.i:                               ; preds = %._crit_edge256.2.i, %._crit_edge256.2.thread.i
  %.ph434.i = phi float [ %i.ail, %._crit_edge256.2.i ], [ %i.aie, %._crit_edge256.2.thread.i ]
  %.ph435.i = phi float [ %i.aim, %._crit_edge256.2.i ], [ %i.aif, %._crit_edge256.2.thread.i ]
  %i.aoo = fmul float %.ph434.i, %i.hv
  %i.aop = load float, ptr %i.hy, align 4, !tbaa !134
  %i.aoq = fmul float %i.aoo, %i.aop
  store float %i.aoq, ptr %i.hq, align 4, !tbaa !134
  %i.aor = fmul float %.ph435.i, %i.hv
  %i.aos = load float, ptr %i.d, align 16, !tbaa !134
  %i.aot = fmul float %i.aor, %i.aos
  store float %i.aot, ptr %i.d, align 16, !tbaa !134
  br i1 %i.ia, label %.lr.ph267.2.i, label %._crit_edge268.2.i

.lr.ph267.2.i:                                    ; preds = %._crit_edge264.2.i, %._crit_edge264.2.thread.i
  %i.aou = load ptr, ptr %i.io, align 8, !tbaa !332
  %scevgep344.2.i = getelementptr nuw i8, ptr %i.aou, i64 %i.uu
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %scevgep344.2.i, ptr nonnull align 16 %i.d, i64 %i.ik, i1 false), !tbaa !134
  br label %._crit_edge268.2.i

._crit_edge268.2.i:                               ; preds = %.lr.ph267.2.i, %._crit_edge264.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge268.2.i, %bb.m
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %exitcond356.not.i = icmp eq i64 %indvars.iv.next353.i, %wide.trip.count355.i
  br i1 %exitcond356.not.i, label %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit, label %.lr.ph272.split.i, !llvm.loop !271

_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit: ; preds = %.loopexit232.us.i, %.loopexit230.us.i, %.loopexit.i, %bb.j, %bb.i
  %i.aov = load i8, ptr %8, align 1, !tbaa !17, !range !106, !noundef !107
  %i.aow = trunc nuw i8 %i.aov to i1
  br i1 %i.aow, label %bb.n, label %bb.s

bb.n:                                             ; preds = %_ZL13make_bsplinesN3gmx8ArrayRefIPfEES2_iPA3_fiPKiPKfb.exit
  %i.aox = load ptr, ptr %4, align 8, !tbaa !11   ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 80
  %i.aoz = load i8, ptr %i.aoy, align 8, !tbaa !108, !range !106, !noundef !107
  %i.apa = trunc nuw i8 %i.aoz to i1
  %i.apb = load ptr, ptr %3, align 8, !tbaa !15   ; 2 uses
  br i1 %i.apa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 88
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !193
  %i.ape = getelementptr inbounds nuw [72 x i8], ptr %i.apd, i64 %indvars.iv
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.apf = phi ptr [ %i.ape, %bb.o ], [ %i.apb, %bb.n ] ; 7 uses
  %i.apg = load ptr, ptr %5, align 8, !tbaa !13   ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aox, i64 192
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !339 ; 2 uses
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apf, i64 40
  %i.apk = load i32, ptr %i.apj, align 8, !tbaa !105
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apf, i64 44
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apf, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %i.apf, i64 24
  %10 = load i32, ptr %i.apm, align 8, !tbaa !105 ; 15 uses
  %11 = load i32, ptr %i.apl, align 4, !tbaa !105 ; 6 uses
  %12 = load <2 x i32>, ptr %9, align 8, !tbaa !105 ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.apf, i64 32
  %14 = load i32, ptr %13, align 8, !tbaa !105    ; 4 uses
  %i.apn = mul i32 %10, %11                       ; 5 uses
  %i.apo = mul i32 %i.apn, %i.apk                 ; 2 uses
  %i.app = getelementptr inbounds nuw i8, ptr %i.apf, i64 56
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !194
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !195 ; 19 uses
  %i.aps = icmp sgt i32 %i.apo, 0
  br i1 %i.aps, label %.lr.ph.preheader.i, label %._crit_edge.i41

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.apt = zext nneg i32 %i.apo to i64
  %i.apu = shl nuw nsw i64 %i.apt, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.apr, i8 0, i64 %i.apu, i1 false), !tbaa !134
  br label %._crit_edge.i41

._crit_edge.i41:                                  ; preds = %.lr.ph.preheader.i, %bb.p
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apf, i64 36
  %i.apw = load i32, ptr %i.apv, align 4, !tbaa !196
  %.fr.i = freeze i32 %i.apw                      ; 6 uses
  %i.apx = load i32, ptr %.035, align 8, !tbaa !329 ; 4 uses
  %i.apy = icmp sgt i32 %i.apx, 0
  br i1 %i.apy, label %.lr.ph423.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit

.lr.ph423.i:                                      ; preds = %._crit_edge.i41
  %i.apz = getelementptr inbounds nuw i8, ptr %.035, i64 8 ; 3 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apg, i64 152 ; 3 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apg, i64 264 ; 3 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %.035, i64 32 ; 3 uses
  %i.aqd = getelementptr inbounds nuw i8, ptr %.035, i64 40 ; 3 uses
  %i.aqe = getelementptr inbounds nuw i8, ptr %.035, i64 48 ; 3 uses
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.api, i64 12
  %i.aqg = sext i32 %10 to i64                    ; 5 uses
  %i.aqh = shl nsw i32 %10, 1
  %i.aqi = sext i32 %i.aqh to i64                 ; 5 uses
  %i.aqj = mul nsw i32 %10, 3
  %i.aqk = sext i32 %i.aqj to i64                 ; 5 uses
  %i.aql = shl nsw i32 %10, 2
  %i.aqm = sext i32 %i.aql to i64                 ; 5 uses
  %i.aqn = icmp sgt i32 %.fr.i, 0
  switch i32 %.fr.i, label %.lr.ph423.split.preheader.i [
    i32 4, label %.lr.ph423.split.us.i
    i32 5, label %.lr.ph423.split.us425.i.preheader
  ]

.lr.ph423.split.us425.i.preheader:                ; preds = %.lr.ph423.i
  %15 = insertelement <4 x i32> poison, i32 %11, i64 0
  %i.aqo = shufflevector <4 x i32> %15, <4 x i32> poison, <4 x i32> zeroinitializer
  %16 = insertelement <4 x i32> poison, i32 %10, i64 0
  %17 = shufflevector <4 x i32> %16, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.lr.ph423.split.us425.i

.lr.ph423.split.preheader.i:                      ; preds = %.lr.ph423.i
  %i.aqp = sext i32 %.fr.i to i64                 ; 2 uses
  %.pre455.i = load ptr, ptr %i.apz, align 8, !tbaa !183
  %wide.trip.count449.i = zext i32 %.fr.i to i64  ; 12 uses
  %i.aqq = zext nneg i32 %i.apx to i64
  %i.aqr = add nsw i64 %wide.trip.count449.i, -1  ; 2 uses
  %i.aqs = shl nuw nsw i64 %wide.trip.count449.i, 2 ; 2 uses
  %i.aqt = shl nsw i64 %i.aqp, 2
  %i.aqu = mul i32 %11, %10
  %i.aqv = zext i32 %i.aqu to i64
  %i.aqw = zext i32 %10 to i64
  %scevgep121 = getelementptr i8, ptr %i.apr, i64 %i.aqs
  %i.aqx = extractelement <2 x i32> %12, i64 0
  %i.aqy = extractelement <2 x i32> %12, i64 1    ; 2 uses
  %min.iters.check123 = icmp ult i32 %.fr.i, 4
  %i.aqz = trunc i64 %i.aqr to i32
  %i.ara = icmp ugt i64 %i.aqr, 4294967295
  %min.iters.check125 = icmp ult i32 %.fr.i, 32
  %i.arb = and i64 %wide.trip.count449.i, 28
  %n.vec127 = and i64 %wide.trip.count449.i, 2147483616 ; 4 uses
  %cmp.n140 = icmp eq i64 %n.vec127, %wide.trip.count449.i
  %min.epilog.iters.check145 = icmp eq i64 %i.arb, 0
  %n.vec147 = and i64 %wide.trip.count449.i, 2147483644 ; 3 uses
  %cmp.n156 = icmp eq i64 %n.vec147, %wide.trip.count449.i
  %xtraiter531 = and i64 %wide.trip.count449.i, 3 ; 2 uses
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  br label %.lr.ph423.split.i

.lr.ph423.split.us.i:                             ; preds = %.lr.ph423.i, %.loopexit406.us.i
  %i.arc = phi i32 [ %i.awk, %.loopexit406.us.i ], [ %i.apx, %.lr.ph423.i ]
  %indvars.iv435.i = phi i64 [ %indvars.iv.next436.i, %.loopexit406.us.i ], [ 0, %.lr.ph423.i ] ; 3 uses
  %i.ard = load ptr, ptr %i.apz, align 8, !tbaa !183
  %i.are = getelementptr inbounds nuw [4 x i8], ptr %i.ard, i64 %indvars.iv435.i
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !105
  %i.arg = sext i32 %i.arf to i64                 ; 2 uses
  %i.arh = load i64, ptr %i.aqa, align 8
  %i.ari = inttoptr i64 %i.arh to ptr
  %i.arj = getelementptr inbounds [4 x i8], ptr %i.ari, i64 %i.arg
  %i.ark = load float, ptr %i.arj, align 4, !tbaa !134 ; 5 uses
  %i.arl = fcmp une float %i.ark, 0.000000e+00
  br i1 %i.arl, label %.loopexit406.us.loopexit.i, label %.loopexit406.us.i

.loopexit406.us.loopexit.i:                       ; preds = %.lr.ph423.split.us.i
  %i.arm = load ptr, ptr %i.aqb, align 8, !tbaa !187
  %i.arn = getelementptr inbounds nuw [12 x i8], ptr %i.arm, i64 %i.arg ; 2 uses
  %i.aro = shl nuw nsw i64 %indvars.iv435.i, 2    ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !105
  %i.arr = sub nsw i32 %i.arq, %14
  %i.ars = load ptr, ptr %i.aqc, align 8, !tbaa !332
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %i.ars, i64 %i.aro ; 4 uses
  %i.aru = load ptr, ptr %i.aqd, align 8, !tbaa !332
  %i.arv = getelementptr inbounds nuw [4 x i8], ptr %i.aru, i64 %i.aro ; 4 uses
  %i.arw = load ptr, ptr %i.aqe, align 8, !tbaa !332
  %i.arx = getelementptr inbounds nuw [4 x i8], ptr %i.arw, i64 %i.aro
  %i.ary = load float, ptr %i.arv, align 4, !tbaa !134
  %i.arz = insertelement <4 x float> poison, float %i.ary, i64 0
  %i.asa = shufflevector <4 x float> %i.arz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arv, i64 4
  %i.asc = load float, ptr %i.asb, align 4, !tbaa !134
  %i.asd = insertelement <4 x float> poison, float %i.asc, i64 0
  %i.ase = shufflevector <4 x float> %i.asd, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.arv, i64 8
  %i.asg = load float, ptr %i.asf, align 4, !tbaa !134
  %i.ash = insertelement <4 x float> poison, float %i.asg, i64 0
  %i.asi = shufflevector <4 x float> %i.ash, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %i.arv, i64 12
  %i.ask = load float, ptr %i.asj, align 4, !tbaa !134
  %i.asl = insertelement <4 x float> poison, float %i.ask, i64 0
  %i.asm = shufflevector <4 x float> %i.asl, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %.val330.us.i = load <4 x float>, ptr %i.arx, align 16, !tbaa !340 ; 4 uses
  %i.asn = sext i32 %i.arr to i64                 ; 16 uses
  %i.aso = load float, ptr %i.art, align 4, !tbaa !134
  %i.asp = fmul float %i.ark, %i.aso
  %i.asq = insertelement <4 x float> poison, float %i.asp, i64 0
  %i.asr = shufflevector <4 x float> %i.asq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ass = fmul <4 x float> %.val330.us.i, %i.asr ; 4 uses
  %i.ast = load <2 x i32>, ptr %i.arn, align 4, !tbaa !105
  %i.asu = sub nsw <2 x i32> %i.ast, %12          ; 3 uses
  %i.asv = extractelement <2 x i32> %i.asu, i64 1 ; 3 uses
  %i.asw = mul nsw i32 %i.asv, %10
  %i.asx = sext i32 %i.asw to i64                 ; 4 uses
  %i.asy = add nsw <2 x i32> %i.asu, splat (i32 1) ; 2 uses
  %18 = extractelement <2 x i32> %i.asy, i64 1
  %19 = mul nsw i32 %18, %10
  %i.asz = sext i32 %19 to i64                    ; 4 uses
  %i.ata = add nsw i32 %i.asv, 2
  %i.atb = mul nsw i32 %i.ata, %10
  %i.atc = sext i32 %i.atb to i64                 ; 4 uses
  %i.atd = add nsw i32 %i.asv, 3
  %i.ate = mul nsw i32 %i.atd, %10
  %i.atf = sext i32 %i.ate to i64                 ; 4 uses
  %i.atg = extractelement <2 x i32> %i.asu, i64 0 ; 3 uses
  %i.ath = mul i32 %i.atg, %i.apn
  %i.ati = sext i32 %i.ath to i64
  %i.atj = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.ati ; 4 uses
  %i.atk = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.asx
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.atk, i64 %i.asn ; 2 uses
  %.val336.us.i = load <4 x float>, ptr %i.atl, align 1, !tbaa !340
  %i.atm = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.asz
  %i.atn = getelementptr inbounds [4 x i8], ptr %i.atm, i64 %i.asn ; 2 uses
  %.val335.us.i = load <4 x float>, ptr %i.atn, align 1, !tbaa !340
  %i.ato = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.atc
  %i.atp = getelementptr inbounds [4 x i8], ptr %i.ato, i64 %i.asn ; 2 uses
  %.val334.us.i = load <4 x float>, ptr %i.atp, align 1, !tbaa !340
  %i.atq = getelementptr inbounds [4 x i8], ptr %i.atj, i64 %i.atf
  %i.atr = getelementptr inbounds [4 x i8], ptr %i.atq, i64 %i.asn ; 2 uses
  %.val333.us.i = load <4 x float>, ptr %i.atr, align 1, !tbaa !340
  %i.ats = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ass, <4 x float> %i.asa, <4 x float> %.val336.us.i)
  %i.att = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ass, <4 x float> %i.ase, <4 x float> %.val335.us.i)
  %i.atu = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ass, <4 x float> %i.asi, <4 x float> %.val334.us.i)
  %i.atv = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ass, <4 x float> %i.asm, <4 x float> %.val333.us.i)
  store <4 x float> %i.ats, ptr %i.atl, align 1, !tbaa !340
  store <4 x float> %i.att, ptr %i.atn, align 1, !tbaa !340
  store <4 x float> %i.atu, ptr %i.atp, align 1, !tbaa !340
  store <4 x float> %i.atv, ptr %i.atr, align 1, !tbaa !340
  %i.atw = extractelement <2 x i32> %i.asy, i64 0
  %i.atx = mul i32 %i.atw, %i.apn
  %i.aty = getelementptr inbounds nuw i8, ptr %i.art, i64 4
  %i.atz = load float, ptr %i.aty, align 4, !tbaa !134
  %i.aua = fmul float %i.ark, %i.atz
  %i.aub = insertelement <4 x float> poison, float %i.aua, i64 0
  %i.auc = shufflevector <4 x float> %i.aub, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aud = fmul <4 x float> %.val330.us.i, %i.auc ; 4 uses
  %i.aue = sext i32 %i.atx to i64
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.aue ; 4 uses
  %i.aug = getelementptr inbounds [4 x i8], ptr %i.auf, i64 %i.asx
  %i.auh = getelementptr inbounds [4 x i8], ptr %i.aug, i64 %i.asn ; 2 uses
  %.val336.us.1.i = load <4 x float>, ptr %i.auh, align 1, !tbaa !340
  %i.aui = getelementptr inbounds [4 x i8], ptr %i.auf, i64 %i.asz
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.aui, i64 %i.asn ; 2 uses
  %.val335.us.1.i = load <4 x float>, ptr %i.auj, align 1, !tbaa !340
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.auf, i64 %i.atc
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.auk, i64 %i.asn ; 2 uses
  %.val334.us.1.i = load <4 x float>, ptr %i.aul, align 1, !tbaa !340
  %i.aum = getelementptr inbounds [4 x i8], ptr %i.auf, i64 %i.atf
  %i.aun = getelementptr inbounds [4 x i8], ptr %i.aum, i64 %i.asn ; 2 uses
  %.val333.us.1.i = load <4 x float>, ptr %i.aun, align 1, !tbaa !340
  %i.auo = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aud, <4 x float> %i.asa, <4 x float> %.val336.us.1.i)
  %i.aup = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aud, <4 x float> %i.ase, <4 x float> %.val335.us.1.i)
  %i.auq = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aud, <4 x float> %i.asi, <4 x float> %.val334.us.1.i)
  %i.aur = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.aud, <4 x float> %i.asm, <4 x float> %.val333.us.1.i)
  store <4 x float> %i.auo, ptr %i.auh, align 1, !tbaa !340
  store <4 x float> %i.aup, ptr %i.auj, align 1, !tbaa !340
  store <4 x float> %i.auq, ptr %i.aul, align 1, !tbaa !340
  store <4 x float> %i.aur, ptr %i.aun, align 1, !tbaa !340
  %i.aus = add nsw i32 %i.atg, 2
  %i.aut = mul i32 %i.aus, %i.apn
  %i.auu = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !134
  %i.auw = fmul float %i.ark, %i.auv
  %i.aux = insertelement <4 x float> poison, float %i.auw, i64 0
  %i.auy = shufflevector <4 x float> %i.aux, <4 x float> poison, <4 x i32> zeroinitializer
  %i.auz = fmul <4 x float> %.val330.us.i, %i.auy ; 4 uses
  %i.ava = sext i32 %i.aut to i64
  %i.avb = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.ava ; 4 uses
  %i.avc = getelementptr inbounds [4 x i8], ptr %i.avb, i64 %i.asx
  %i.avd = getelementptr inbounds [4 x i8], ptr %i.avc, i64 %i.asn ; 2 uses
  %.val336.us.2.i = load <4 x float>, ptr %i.avd, align 1, !tbaa !340
  %i.ave = getelementptr inbounds [4 x i8], ptr %i.avb, i64 %i.asz
  %i.avf = getelementptr inbounds [4 x i8], ptr %i.ave, i64 %i.asn ; 2 uses
  %.val335.us.2.i = load <4 x float>, ptr %i.avf, align 1, !tbaa !340
  %i.avg = getelementptr inbounds [4 x i8], ptr %i.avb, i64 %i.atc
  %i.avh = getelementptr inbounds [4 x i8], ptr %i.avg, i64 %i.asn ; 2 uses
  %.val334.us.2.i = load <4 x float>, ptr %i.avh, align 1, !tbaa !340
  %i.avi = getelementptr inbounds [4 x i8], ptr %i.avb, i64 %i.atf
  %i.avj = getelementptr inbounds [4 x i8], ptr %i.avi, i64 %i.asn ; 2 uses
  %.val333.us.2.i = load <4 x float>, ptr %i.avj, align 1, !tbaa !340
  %i.avk = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.auz, <4 x float> %i.asa, <4 x float> %.val336.us.2.i)
  %i.avl = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.auz, <4 x float> %i.ase, <4 x float> %.val335.us.2.i)
  %i.avm = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.auz, <4 x float> %i.asi, <4 x float> %.val334.us.2.i)
  %i.avn = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.auz, <4 x float> %i.asm, <4 x float> %.val333.us.2.i)
  store <4 x float> %i.avk, ptr %i.avd, align 1, !tbaa !340
  store <4 x float> %i.avl, ptr %i.avf, align 1, !tbaa !340
  store <4 x float> %i.avm, ptr %i.avh, align 1, !tbaa !340
  store <4 x float> %i.avn, ptr %i.avj, align 1, !tbaa !340
  %i.avo = add nsw i32 %i.atg, 3
  %i.avp = mul i32 %i.avo, %i.apn
  %i.avq = getelementptr inbounds nuw i8, ptr %i.art, i64 12
  %i.avr = load float, ptr %i.avq, align 4, !tbaa !134
  %i.avs = fmul float %i.ark, %i.avr
  %i.avt = insertelement <4 x float> poison, float %i.avs, i64 0
  %i.avu = shufflevector <4 x float> %i.avt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.avv = fmul <4 x float> %.val330.us.i, %i.avu ; 4 uses
  %i.avw = sext i32 %i.avp to i64
  %i.avx = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.avw ; 4 uses
  %i.avy = getelementptr inbounds [4 x i8], ptr %i.avx, i64 %i.asx
  %i.avz = getelementptr inbounds [4 x i8], ptr %i.avy, i64 %i.asn ; 2 uses
  %.val336.us.3.i = load <4 x float>, ptr %i.avz, align 1, !tbaa !340
  %i.awa = getelementptr inbounds [4 x i8], ptr %i.avx, i64 %i.asz
  %i.awb = getelementptr inbounds [4 x i8], ptr %i.awa, i64 %i.asn ; 2 uses
  %.val335.us.3.i = load <4 x float>, ptr %i.awb, align 1, !tbaa !340
  %i.awc = getelementptr inbounds [4 x i8], ptr %i.avx, i64 %i.atc
  %i.awd = getelementptr inbounds [4 x i8], ptr %i.awc, i64 %i.asn ; 2 uses
  %.val334.us.3.i = load <4 x float>, ptr %i.awd, align 1, !tbaa !340
  %i.awe = getelementptr inbounds [4 x i8], ptr %i.avx, i64 %i.atf
  %i.awf = getelementptr inbounds [4 x i8], ptr %i.awe, i64 %i.asn ; 2 uses
  %.val333.us.3.i = load <4 x float>, ptr %i.awf, align 1, !tbaa !340
  %i.awg = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.avv, <4 x float> %i.asa, <4 x float> %.val336.us.3.i)
  %i.awh = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.avv, <4 x float> %i.ase, <4 x float> %.val335.us.3.i)
  %i.awi = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.avv, <4 x float> %i.asi, <4 x float> %.val334.us.3.i)
  %i.awj = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.avv, <4 x float> %i.asm, <4 x float> %.val333.us.3.i)
  store <4 x float> %i.awg, ptr %i.avz, align 1, !tbaa !340
  store <4 x float> %i.awh, ptr %i.awb, align 1, !tbaa !340
  store <4 x float> %i.awi, ptr %i.awd, align 1, !tbaa !340
  store <4 x float> %i.awj, ptr %i.awf, align 1, !tbaa !340
  %.pre454.i = load i32, ptr %.035, align 8, !tbaa !329
  br label %.loopexit406.us.i

.loopexit406.us.i:                                ; preds = %.loopexit406.us.loopexit.i, %.lr.ph423.split.us.i
  %i.awk = phi i32 [ %.pre454.i, %.loopexit406.us.loopexit.i ], [ %i.arc, %.lr.ph423.split.us.i ] ; 2 uses
  %indvars.iv.next436.i = add nuw nsw i64 %indvars.iv435.i, 1 ; 2 uses
  %i.awl = sext i32 %i.awk to i64
  %i.awm = icmp slt i64 %indvars.iv.next436.i, %i.awl
  br i1 %i.awm, label %.lr.ph423.split.us.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, !llvm.loop !306

.lr.ph423.split.us425.i:                          ; preds = %.lr.ph423.split.us425.i.preheader, %.loopexit407.us.i
  %i.awn = phi i32 [ %i.bev, %.loopexit407.us.i ], [ %i.apx, %.lr.ph423.split.us425.i.preheader ]
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43, %.loopexit407.us.i ], [ 0, %.lr.ph423.split.us425.i.preheader ] ; 3 uses
  %i.awo = load ptr, ptr %i.apz, align 8, !tbaa !183
  %i.awp = getelementptr inbounds nuw [4 x i8], ptr %i.awo, i64 %indvars.iv.i42
  %i.awq = load i32, ptr %i.awp, align 4, !tbaa !105
  %i.awr = sext i32 %i.awq to i64                 ; 2 uses
  %i.aws = load i64, ptr %i.aqa, align 8
  %i.awt = inttoptr i64 %i.aws to ptr
  %i.awu = getelementptr inbounds [4 x i8], ptr %i.awt, i64 %i.awr
  %i.awv = load float, ptr %i.awu, align 4, !tbaa !134 ; 6 uses
  %i.aww = fcmp une float %i.awv, 0.000000e+00
  br i1 %i.aww, label %.loopexit407.us.loopexit.i, label %.loopexit407.us.i

.loopexit407.us.loopexit.i:                       ; preds = %.lr.ph423.split.us425.i
  %i.awx = load ptr, ptr %i.aqb, align 8, !tbaa !187
  %i.awy = getelementptr inbounds nuw [12 x i8], ptr %i.awx, i64 %i.awr ; 2 uses
  %i.awz = mul nuw nsw i64 %indvars.iv.i42, 5     ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axb = load i32, ptr %i.axa, align 4, !tbaa !105
  %i.axc = sub nsw i32 %i.axb, %14                ; 2 uses
  %i.axd = load ptr, ptr %i.aqc, align 8, !tbaa !332
  %i.axe = getelementptr inbounds nuw [4 x i8], ptr %i.axd, i64 %i.awz ; 5 uses
  %i.axf = load ptr, ptr %i.aqd, align 8, !tbaa !332
  %i.axg = getelementptr inbounds nuw [4 x i8], ptr %i.axf, i64 %i.awz ; 5 uses
  %i.axh = load ptr, ptr %i.aqe, align 8, !tbaa !332
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.axh, i64 %i.awz
  %i.axj = load float, ptr %i.axg, align 4, !tbaa !134
  %i.axk = insertelement <4 x float> poison, float %i.axj, i64 0
  %i.axl = shufflevector <4 x float> %i.axk, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %i.axg, i64 4
  %i.axn = load float, ptr %i.axm, align 4, !tbaa !134
  %i.axo = insertelement <4 x float> poison, float %i.axn, i64 0
  %i.axp = shufflevector <4 x float> %i.axo, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axg, i64 8
  %i.axr = load float, ptr %i.axq, align 4, !tbaa !134
  %i.axs = insertelement <4 x float> poison, float %i.axr, i64 0
  %i.axt = shufflevector <4 x float> %i.axs, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axg, i64 12
  %i.axv = load float, ptr %i.axu, align 4, !tbaa !134
  %i.axw = insertelement <4 x float> poison, float %i.axv, i64 0
  %i.axx = shufflevector <4 x float> %i.axw, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axg, i64 16
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !134
  %i.aya = insertelement <4 x float> poison, float %i.axz, i64 0
  %i.ayb = shufflevector <4 x float> %i.aya, <4 x float> poison, <4 x i32> zeroinitializer ; 10 uses
  %i.ayc = and i32 %i.axc, 3
  %i.ayd = zext nneg i32 %i.ayc to i64            ; 3 uses
  %i.aye = sub nsw i64 0, %i.ayd
  %i.ayf = getelementptr inbounds [4 x i8], ptr %i.axi, i64 %i.aye ; 2 uses
  %.val332.us.i = load <4 x float>, ptr %i.ayf, align 1, !tbaa !340
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 16
  %.val331.us.i = load <4 x float>, ptr %i.ayg, align 1, !tbaa !340
  %i.ayh = getelementptr inbounds nuw [2 x i8], ptr %i.api, i64 %i.ayd
  %.sroa.069.0.copyload404.us.i = load <16 x i1>, ptr %i.ayh, align 2, !tbaa !342
  %i.ayi = shufflevector <4 x float> %.val332.us.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayj = select <16 x i1> %.sroa.069.0.copyload404.us.i, <16 x float> %i.ayi, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.ayk = shufflevector <16 x float> %i.ayj, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ayl = getelementptr inbounds nuw [2 x i8], ptr %i.aqf, i64 %i.ayd
  %.sroa.066.0.copyload405.us.i = load <16 x i1>, ptr %i.ayl, align 2, !tbaa !342
  %i.aym = shufflevector <4 x float> %.val331.us.i, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ayn = select <16 x i1> %.sroa.066.0.copyload405.us.i, <16 x float> %i.aym, <16 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>
  %i.ayo = shufflevector <16 x float> %i.ayn, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 5 uses
  %i.ayp = and i32 %i.axc, -4                     ; 2 uses
  %i.ayq = load float, ptr %i.axe, align 4, !tbaa !134
  %i.ayr = fmul float %i.awv, %i.ayq
  %i.ays = insertelement <4 x float> poison, float %i.ayr, i64 0
  %i.ayt = shufflevector <4 x float> %i.ays, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ayu = fmul <4 x float> %i.ayk, %i.ayt        ; 5 uses
  %i.ayv = fmul <4 x float> %i.ayo, %i.ayt        ; 5 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.axe, i64 4
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.axe, i64 8
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.axe, i64 12
  %i.ayz = load <2 x i32>, ptr %i.awy, align 4, !tbaa !105
  %i.aza = sub nsw <2 x i32> %i.ayz, %12          ; 4 uses
  %i.azb = shufflevector <2 x i32> %i.aza, <2 x i32> poison, <4 x i32> zeroinitializer
  %i.azc = add nsw <4 x i32> %i.azb, <i32 0, i32 1, i32 2, i32 3>
  %i.azd = mul nsw <4 x i32> %i.azc, %i.aqo
  %i.aze = shufflevector <2 x i32> %i.aza, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.azf = add <4 x i32> %i.azd, %i.aze
  %i.azg = mul <4 x i32> %i.azf, %17
  %i.azh = insertelement <4 x i32> poison, i32 %i.ayp, i64 0
  %i.azi = shufflevector <4 x i32> %i.azh, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.azj = add <4 x i32> %i.azi, %i.azg           ; 4 uses
  %i.azk = extractelement <4 x i32> %i.azj, i64 0
  %i.azl = sext i32 %i.azk to i64
  %i.azm = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.azl ; 7 uses
  %.val329.us.i = load <4 x float>, ptr %i.azm, align 16, !tbaa !340
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.azm, i64 %i.aqg ; 3 uses
  %.val328.us.i = load <4 x float>, ptr %i.azn, align 16, !tbaa !340
  %i.azo = getelementptr inbounds [4 x i8], ptr %i.azm, i64 %i.aqi ; 3 uses
  %.val327.us.i = load <4 x float>, ptr %i.azo, align 16, !tbaa !340
  %i.azp = getelementptr inbounds [4 x i8], ptr %i.azm, i64 %i.aqk ; 3 uses
  %.val326.us.i = load <4 x float>, ptr %i.azp, align 16, !tbaa !340
  %i.azq = getelementptr inbounds [4 x i8], ptr %i.azm, i64 %i.aqm ; 3 uses
  %.val325.us.i = load <4 x float>, ptr %i.azq, align 16, !tbaa !340
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azm, i64 16 ; 2 uses
  %.val324.us.i = load <4 x float>, ptr %i.azr, align 16, !tbaa !340
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azn, i64 16 ; 2 uses
  %.val323.us.i = load <4 x float>, ptr %i.azs, align 16, !tbaa !340
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azo, i64 16 ; 2 uses
  %.val322.us.i = load <4 x float>, ptr %i.azt, align 16, !tbaa !340
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azp, i64 16 ; 2 uses
  %.val321.us.i = load <4 x float>, ptr %i.azu, align 16, !tbaa !340
  %i.azv = getelementptr inbounds nuw i8, ptr %i.azq, i64 16 ; 2 uses
  %.val.us.i = load <4 x float>, ptr %i.azv, align 16, !tbaa !340
  %i.azw = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayu, <4 x float> %i.axl, <4 x float> %.val329.us.i)
  %i.azx = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayu, <4 x float> %i.axp, <4 x float> %.val328.us.i)
  %i.azy = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayu, <4 x float> %i.axt, <4 x float> %.val327.us.i)
  %i.azz = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayu, <4 x float> %i.axx, <4 x float> %.val326.us.i)
  %i.baa = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayu, <4 x float> %i.ayb, <4 x float> %.val325.us.i)
  %i.bab = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayv, <4 x float> %i.axl, <4 x float> %.val324.us.i)
  %i.bac = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayv, <4 x float> %i.axp, <4 x float> %.val323.us.i)
  %i.bad = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayv, <4 x float> %i.axt, <4 x float> %.val322.us.i)
  %i.bae = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayv, <4 x float> %i.axx, <4 x float> %.val321.us.i)
  %i.baf = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.ayv, <4 x float> %i.ayb, <4 x float> %.val.us.i)
  store <4 x float> %i.azw, ptr %i.azm, align 16, !tbaa !340
  store <4 x float> %i.azx, ptr %i.azn, align 16, !tbaa !340
  store <4 x float> %i.azy, ptr %i.azo, align 16, !tbaa !340
  store <4 x float> %i.azz, ptr %i.azp, align 16, !tbaa !340
  store <4 x float> %i.baa, ptr %i.azq, align 16, !tbaa !340
  store <4 x float> %i.bab, ptr %i.azr, align 16, !tbaa !340
  store <4 x float> %i.bac, ptr %i.azs, align 16, !tbaa !340
  store <4 x float> %i.bad, ptr %i.azt, align 16, !tbaa !340
  store <4 x float> %i.bae, ptr %i.azu, align 16, !tbaa !340
  store <4 x float> %i.baf, ptr %i.azv, align 16, !tbaa !340
  %i.bag = load float, ptr %i.ayw, align 4, !tbaa !134
  %i.bah = fmul float %i.awv, %i.bag
  %i.bai = insertelement <4 x float> poison, float %i.bah, i64 0
  %i.baj = shufflevector <4 x float> %i.bai, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bak = fmul <4 x float> %i.ayk, %i.baj        ; 5 uses
  %i.bal = fmul <4 x float> %i.ayo, %i.baj        ; 5 uses
  %i.bam = extractelement <4 x i32> %i.azj, i64 1
  %i.ban = sext i32 %i.bam to i64
  %i.bao = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.ban ; 7 uses
  %.val329.us.1.i = load <4 x float>, ptr %i.bao, align 16, !tbaa !340
  %i.bap = getelementptr inbounds [4 x i8], ptr %i.bao, i64 %i.aqg ; 3 uses
  %.val328.us.1.i = load <4 x float>, ptr %i.bap, align 16, !tbaa !340
  %i.baq = getelementptr inbounds [4 x i8], ptr %i.bao, i64 %i.aqi ; 3 uses
  %.val327.us.1.i = load <4 x float>, ptr %i.baq, align 16, !tbaa !340
  %i.bar = getelementptr inbounds [4 x i8], ptr %i.bao, i64 %i.aqk ; 3 uses
  %.val326.us.1.i = load <4 x float>, ptr %i.bar, align 16, !tbaa !340
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.bao, i64 %i.aqm ; 3 uses
  %.val325.us.1.i = load <4 x float>, ptr %i.bas, align 16, !tbaa !340
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bao, i64 16 ; 2 uses
  %.val324.us.1.i = load <4 x float>, ptr %i.bat, align 16, !tbaa !340
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bap, i64 16 ; 2 uses
  %.val323.us.1.i = load <4 x float>, ptr %i.bau, align 16, !tbaa !340
  %i.bav = getelementptr inbounds nuw i8, ptr %i.baq, i64 16 ; 2 uses
  %.val322.us.1.i = load <4 x float>, ptr %i.bav, align 16, !tbaa !340
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bar, i64 16 ; 2 uses
  %.val321.us.1.i = load <4 x float>, ptr %i.baw, align 16, !tbaa !340
  %i.bax = getelementptr inbounds nuw i8, ptr %i.bas, i64 16 ; 2 uses
  %.val.us.1.i = load <4 x float>, ptr %i.bax, align 16, !tbaa !340
  %i.bay = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bak, <4 x float> %i.axl, <4 x float> %.val329.us.1.i)
  %i.baz = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bak, <4 x float> %i.axp, <4 x float> %.val328.us.1.i)
  %i.bba = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bak, <4 x float> %i.axt, <4 x float> %.val327.us.1.i)
  %i.bbb = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bak, <4 x float> %i.axx, <4 x float> %.val326.us.1.i)
  %i.bbc = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bak, <4 x float> %i.ayb, <4 x float> %.val325.us.1.i)
  %i.bbd = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bal, <4 x float> %i.axl, <4 x float> %.val324.us.1.i)
  %i.bbe = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bal, <4 x float> %i.axp, <4 x float> %.val323.us.1.i)
  %i.bbf = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bal, <4 x float> %i.axt, <4 x float> %.val322.us.1.i)
  %i.bbg = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bal, <4 x float> %i.axx, <4 x float> %.val321.us.1.i)
  %i.bbh = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bal, <4 x float> %i.ayb, <4 x float> %.val.us.1.i)
  store <4 x float> %i.bay, ptr %i.bao, align 16, !tbaa !340
  store <4 x float> %i.baz, ptr %i.bap, align 16, !tbaa !340
  store <4 x float> %i.bba, ptr %i.baq, align 16, !tbaa !340
  store <4 x float> %i.bbb, ptr %i.bar, align 16, !tbaa !340
  store <4 x float> %i.bbc, ptr %i.bas, align 16, !tbaa !340
  store <4 x float> %i.bbd, ptr %i.bat, align 16, !tbaa !340
  store <4 x float> %i.bbe, ptr %i.bau, align 16, !tbaa !340
  store <4 x float> %i.bbf, ptr %i.bav, align 16, !tbaa !340
  store <4 x float> %i.bbg, ptr %i.baw, align 16, !tbaa !340
  store <4 x float> %i.bbh, ptr %i.bax, align 16, !tbaa !340
  %i.bbi = load float, ptr %i.ayx, align 4, !tbaa !134
  %i.bbj = fmul float %i.awv, %i.bbi
  %i.bbk = insertelement <4 x float> poison, float %i.bbj, i64 0
  %i.bbl = shufflevector <4 x float> %i.bbk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bbm = fmul <4 x float> %i.ayk, %i.bbl        ; 5 uses
  %i.bbn = fmul <4 x float> %i.ayo, %i.bbl        ; 5 uses
  %i.bbo = extractelement <4 x i32> %i.azj, i64 2
  %i.bbp = sext i32 %i.bbo to i64
  %i.bbq = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bbp ; 7 uses
  %.val329.us.2.i = load <4 x float>, ptr %i.bbq, align 16, !tbaa !340
  %i.bbr = getelementptr inbounds [4 x i8], ptr %i.bbq, i64 %i.aqg ; 3 uses
  %.val328.us.2.i = load <4 x float>, ptr %i.bbr, align 16, !tbaa !340
  %i.bbs = getelementptr inbounds [4 x i8], ptr %i.bbq, i64 %i.aqi ; 3 uses
  %.val327.us.2.i = load <4 x float>, ptr %i.bbs, align 16, !tbaa !340
  %i.bbt = getelementptr inbounds [4 x i8], ptr %i.bbq, i64 %i.aqk ; 3 uses
  %.val326.us.2.i = load <4 x float>, ptr %i.bbt, align 16, !tbaa !340
  %i.bbu = getelementptr inbounds [4 x i8], ptr %i.bbq, i64 %i.aqm ; 3 uses
  %.val325.us.2.i = load <4 x float>, ptr %i.bbu, align 16, !tbaa !340
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbq, i64 16 ; 2 uses
  %.val324.us.2.i = load <4 x float>, ptr %i.bbv, align 16, !tbaa !340
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbr, i64 16 ; 2 uses
  %.val323.us.2.i = load <4 x float>, ptr %i.bbw, align 16, !tbaa !340
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbs, i64 16 ; 2 uses
  %.val322.us.2.i = load <4 x float>, ptr %i.bbx, align 16, !tbaa !340
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbt, i64 16 ; 2 uses
  %.val321.us.2.i = load <4 x float>, ptr %i.bby, align 16, !tbaa !340
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbu, i64 16 ; 2 uses
  %.val.us.2.i = load <4 x float>, ptr %i.bbz, align 16, !tbaa !340
  %i.bca = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbm, <4 x float> %i.axl, <4 x float> %.val329.us.2.i)
  %i.bcb = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbm, <4 x float> %i.axp, <4 x float> %.val328.us.2.i)
  %i.bcc = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbm, <4 x float> %i.axt, <4 x float> %.val327.us.2.i)
  %i.bcd = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbm, <4 x float> %i.axx, <4 x float> %.val326.us.2.i)
  %i.bce = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbm, <4 x float> %i.ayb, <4 x float> %.val325.us.2.i)
  %i.bcf = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbn, <4 x float> %i.axl, <4 x float> %.val324.us.2.i)
  %i.bcg = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbn, <4 x float> %i.axp, <4 x float> %.val323.us.2.i)
  %i.bch = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbn, <4 x float> %i.axt, <4 x float> %.val322.us.2.i)
  %i.bci = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbn, <4 x float> %i.axx, <4 x float> %.val321.us.2.i)
  %i.bcj = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bbn, <4 x float> %i.ayb, <4 x float> %.val.us.2.i)
  store <4 x float> %i.bca, ptr %i.bbq, align 16, !tbaa !340
  store <4 x float> %i.bcb, ptr %i.bbr, align 16, !tbaa !340
  store <4 x float> %i.bcc, ptr %i.bbs, align 16, !tbaa !340
  store <4 x float> %i.bcd, ptr %i.bbt, align 16, !tbaa !340
  store <4 x float> %i.bce, ptr %i.bbu, align 16, !tbaa !340
  store <4 x float> %i.bcf, ptr %i.bbv, align 16, !tbaa !340
  store <4 x float> %i.bcg, ptr %i.bbw, align 16, !tbaa !340
  store <4 x float> %i.bch, ptr %i.bbx, align 16, !tbaa !340
  store <4 x float> %i.bci, ptr %i.bby, align 16, !tbaa !340
  store <4 x float> %i.bcj, ptr %i.bbz, align 16, !tbaa !340
  %i.bck = load float, ptr %i.ayy, align 4, !tbaa !134
  %i.bcl = fmul float %i.awv, %i.bck
  %i.bcm = insertelement <4 x float> poison, float %i.bcl, i64 0
  %i.bcn = shufflevector <4 x float> %i.bcm, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bco = fmul <4 x float> %i.ayk, %i.bcn        ; 5 uses
  %i.bcp = fmul <4 x float> %i.ayo, %i.bcn        ; 5 uses
  %i.bcq = extractelement <4 x i32> %i.azj, i64 3
  %i.bcr = sext i32 %i.bcq to i64
  %i.bcs = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bcr ; 7 uses
  %.val329.us.3.i = load <4 x float>, ptr %i.bcs, align 16, !tbaa !340
  %i.bct = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.aqg ; 3 uses
  %.val328.us.3.i = load <4 x float>, ptr %i.bct, align 16, !tbaa !340
  %i.bcu = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.aqi ; 3 uses
  %.val327.us.3.i = load <4 x float>, ptr %i.bcu, align 16, !tbaa !340
  %i.bcv = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.aqk ; 3 uses
  %.val326.us.3.i = load <4 x float>, ptr %i.bcv, align 16, !tbaa !340
  %i.bcw = getelementptr inbounds [4 x i8], ptr %i.bcs, i64 %i.aqm ; 3 uses
  %.val325.us.3.i = load <4 x float>, ptr %i.bcw, align 16, !tbaa !340
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcs, i64 16 ; 2 uses
  %.val324.us.3.i = load <4 x float>, ptr %i.bcx, align 16, !tbaa !340
  %i.bcy = getelementptr inbounds nuw i8, ptr %i.bct, i64 16 ; 2 uses
  %.val323.us.3.i = load <4 x float>, ptr %i.bcy, align 16, !tbaa !340
  %i.bcz = getelementptr inbounds nuw i8, ptr %i.bcu, i64 16 ; 2 uses
  %.val322.us.3.i = load <4 x float>, ptr %i.bcz, align 16, !tbaa !340
  %i.bda = getelementptr inbounds nuw i8, ptr %i.bcv, i64 16 ; 2 uses
  %.val321.us.3.i = load <4 x float>, ptr %i.bda, align 16, !tbaa !340
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bcw, i64 16 ; 2 uses
  %.val.us.3.i = load <4 x float>, ptr %i.bdb, align 16, !tbaa !340
  %i.bdc = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bco, <4 x float> %i.axl, <4 x float> %.val329.us.3.i)
  %i.bdd = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bco, <4 x float> %i.axp, <4 x float> %.val328.us.3.i)
  %i.bde = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bco, <4 x float> %i.axt, <4 x float> %.val327.us.3.i)
  %i.bdf = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bco, <4 x float> %i.axx, <4 x float> %.val326.us.3.i)
  %i.bdg = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bco, <4 x float> %i.ayb, <4 x float> %.val325.us.3.i)
  %i.bdh = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bcp, <4 x float> %i.axl, <4 x float> %.val324.us.3.i)
  %i.bdi = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bcp, <4 x float> %i.axp, <4 x float> %.val323.us.3.i)
  %i.bdj = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bcp, <4 x float> %i.axt, <4 x float> %.val322.us.3.i)
  %i.bdk = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bcp, <4 x float> %i.axx, <4 x float> %.val321.us.3.i)
  %i.bdl = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bcp, <4 x float> %i.ayb, <4 x float> %.val.us.3.i)
  store <4 x float> %i.bdc, ptr %i.bcs, align 16, !tbaa !340
  store <4 x float> %i.bdd, ptr %i.bct, align 16, !tbaa !340
  store <4 x float> %i.bde, ptr %i.bcu, align 16, !tbaa !340
  store <4 x float> %i.bdf, ptr %i.bcv, align 16, !tbaa !340
  store <4 x float> %i.bdg, ptr %i.bcw, align 16, !tbaa !340
  store <4 x float> %i.bdh, ptr %i.bcx, align 16, !tbaa !340
  store <4 x float> %i.bdi, ptr %i.bcy, align 16, !tbaa !340
  store <4 x float> %i.bdj, ptr %i.bcz, align 16, !tbaa !340
  store <4 x float> %i.bdk, ptr %i.bda, align 16, !tbaa !340
  store <4 x float> %i.bdl, ptr %i.bdb, align 16, !tbaa !340
  %i.bdm = extractelement <2 x i32> %i.aza, i64 0
  %i.bdn = add nsw i32 %i.bdm, 4
  %i.bdo = mul nsw i32 %i.bdn, %11
  %i.bdp = extractelement <2 x i32> %i.aza, i64 1
  %i.bdq = add i32 %i.bdo, %i.bdp
  %i.bdr = mul i32 %i.bdq, %10
  %i.bds = add i32 %i.bdr, %i.ayp
  %i.bdt = getelementptr inbounds nuw i8, ptr %i.axe, i64 16
  %i.bdu = load float, ptr %i.bdt, align 4, !tbaa !134
  %i.bdv = fmul float %i.awv, %i.bdu
  %i.bdw = insertelement <4 x float> poison, float %i.bdv, i64 0
  %i.bdx = shufflevector <4 x float> %i.bdw, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bdy = fmul <4 x float> %i.ayk, %i.bdx        ; 5 uses
  %i.bdz = fmul <4 x float> %i.ayo, %i.bdx        ; 5 uses
  %i.bea = sext i32 %i.bds to i64
  %i.beb = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bea ; 7 uses
  %.val329.us.4.i = load <4 x float>, ptr %i.beb, align 16, !tbaa !340
  %i.bec = getelementptr inbounds [4 x i8], ptr %i.beb, i64 %i.aqg ; 3 uses
  %.val328.us.4.i = load <4 x float>, ptr %i.bec, align 16, !tbaa !340
  %i.bed = getelementptr inbounds [4 x i8], ptr %i.beb, i64 %i.aqi ; 3 uses
  %.val327.us.4.i = load <4 x float>, ptr %i.bed, align 16, !tbaa !340
  %i.bee = getelementptr inbounds [4 x i8], ptr %i.beb, i64 %i.aqk ; 3 uses
  %.val326.us.4.i = load <4 x float>, ptr %i.bee, align 16, !tbaa !340
  %i.bef = getelementptr inbounds [4 x i8], ptr %i.beb, i64 %i.aqm ; 3 uses
  %.val325.us.4.i = load <4 x float>, ptr %i.bef, align 16, !tbaa !340
  %i.beg = getelementptr inbounds nuw i8, ptr %i.beb, i64 16 ; 2 uses
  %.val324.us.4.i = load <4 x float>, ptr %i.beg, align 16, !tbaa !340
  %i.beh = getelementptr inbounds nuw i8, ptr %i.bec, i64 16 ; 2 uses
  %.val323.us.4.i = load <4 x float>, ptr %i.beh, align 16, !tbaa !340
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bed, i64 16 ; 2 uses
  %.val322.us.4.i = load <4 x float>, ptr %i.bei, align 16, !tbaa !340
  %i.bej = getelementptr inbounds nuw i8, ptr %i.bee, i64 16 ; 2 uses
  %.val321.us.4.i = load <4 x float>, ptr %i.bej, align 16, !tbaa !340
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bef, i64 16 ; 2 uses
  %.val.us.4.i = load <4 x float>, ptr %i.bek, align 16, !tbaa !340
  %i.bel = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdy, <4 x float> %i.axl, <4 x float> %.val329.us.4.i)
  %i.bem = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdy, <4 x float> %i.axp, <4 x float> %.val328.us.4.i)
  %i.ben = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdy, <4 x float> %i.axt, <4 x float> %.val327.us.4.i)
  %i.beo = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdy, <4 x float> %i.axx, <4 x float> %.val326.us.4.i)
  %i.bep = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdy, <4 x float> %i.ayb, <4 x float> %.val325.us.4.i)
  %i.beq = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdz, <4 x float> %i.axl, <4 x float> %.val324.us.4.i)
  %i.ber = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdz, <4 x float> %i.axp, <4 x float> %.val323.us.4.i)
  %i.bes = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdz, <4 x float> %i.axt, <4 x float> %.val322.us.4.i)
  %i.bet = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdz, <4 x float> %i.axx, <4 x float> %.val321.us.4.i)
  %i.beu = call noundef <4 x float> @llvm.fma.v4f32(<4 x float> %i.bdz, <4 x float> %i.ayb, <4 x float> %.val.us.4.i)
  store <4 x float> %i.bel, ptr %i.beb, align 16, !tbaa !340
  store <4 x float> %i.bem, ptr %i.bec, align 16, !tbaa !340
  store <4 x float> %i.ben, ptr %i.bed, align 16, !tbaa !340
  store <4 x float> %i.beo, ptr %i.bee, align 16, !tbaa !340
  store <4 x float> %i.bep, ptr %i.bef, align 16, !tbaa !340
  store <4 x float> %i.beq, ptr %i.beg, align 16, !tbaa !340
  store <4 x float> %i.ber, ptr %i.beh, align 16, !tbaa !340
  store <4 x float> %i.bes, ptr %i.bei, align 16, !tbaa !340
  store <4 x float> %i.bet, ptr %i.bej, align 16, !tbaa !340
  store <4 x float> %i.beu, ptr %i.bek, align 16, !tbaa !340
  %.pre.i44 = load i32, ptr %.035, align 8, !tbaa !329
  br label %.loopexit407.us.i

.loopexit407.us.i:                                ; preds = %.loopexit407.us.loopexit.i, %.lr.ph423.split.us425.i
  %i.bev = phi i32 [ %.pre.i44, %.loopexit407.us.loopexit.i ], [ %i.awn, %.lr.ph423.split.us425.i ] ; 2 uses
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %i.bew = sext i32 %i.bev to i64
  %i.bex = icmp slt i64 %indvars.iv.next.i43, %i.bew
  br i1 %i.bex, label %.lr.ph423.split.us425.i, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, !llvm.loop !306

.lr.ph423.split.i:                                ; preds = %.loopexit.i45, %.lr.ph423.split.preheader.i
  %indvars.iv451.i = phi i64 [ 0, %.lr.ph423.split.preheader.i ], [ %indvars.iv.next452.i, %.loopexit.i45 ] ; 4 uses
  %i.bey = mul i64 %i.aqt, %indvars.iv451.i
  %i.bez = getelementptr inbounds nuw [4 x i8], ptr %.pre455.i, i64 %indvars.iv451.i
  %i.bfa = load i32, ptr %i.bez, align 4, !tbaa !105
  %i.bfb = sext i32 %i.bfa to i64                 ; 2 uses
  %i.bfc = load i64, ptr %i.aqa, align 8
  %i.bfd = inttoptr i64 %i.bfc to ptr
  %i.bfe = getelementptr inbounds [4 x i8], ptr %i.bfd, i64 %i.bfb
  %i.bff = load float, ptr %i.bfe, align 4, !tbaa !134 ; 2 uses
  %i.bfg = fcmp une float %i.bff, 0.000000e+00
  br i1 %i.bfg, label %.preheader.i46, label %.loopexit.i45

.preheader.i46:                                   ; preds = %.lr.ph423.split.i
  %i.bfh = load ptr, ptr %i.aqb, align 8, !tbaa !187
  %i.bfi = getelementptr inbounds nuw [12 x i8], ptr %i.bfh, i64 %i.bfb ; 3 uses
  %i.bfj = mul nsw i64 %indvars.iv451.i, %i.aqp   ; 3 uses
  %i.bfk = load i32, ptr %i.bfi, align 4, !tbaa !105
  %i.bfl = sub i32 %i.bfk, %i.aqx                 ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfi, i64 4
  %i.bfn = load i32, ptr %i.bfm, align 4, !tbaa !105 ; 2 uses
  %i.bfo = sub i32 %i.bfn, %i.aqy
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfi, i64 8
  %i.bfq = load i32, ptr %i.bfp, align 4, !tbaa !105 ; 2 uses
  %i.bfr = sub i32 %i.bfq, %14
  %i.bfs = load ptr, ptr %i.aqc, align 8, !tbaa !332
  %i.bft = getelementptr inbounds [4 x i8], ptr %i.bfs, i64 %i.bfj
  %i.bfu = load ptr, ptr %i.aqd, align 8, !tbaa !332
  %i.bfv = getelementptr inbounds [4 x i8], ptr %i.bfu, i64 %i.bfj
  %i.bfw = load ptr, ptr %i.aqe, align 8, !tbaa !332 ; 2 uses
  %i.bfx = getelementptr [4 x i8], ptr %i.bfw, i64 %i.bfj ; 8 uses
  br i1 %i.aqn, label %.lr.ph417.i.preheader, label %.loopexit.i45

.lr.ph417.i.preheader:                            ; preds = %.preheader.i46
  %i.bfy = getelementptr i8, ptr %i.bfw, i64 %i.aqs
  %scevgep = getelementptr i8, ptr %i.bfy, i64 %i.bey
  %i.bfz = sub i32 %i.bfq, %14
  %i.bga = sub i32 %i.bfn, %i.aqy
  %i.bgb = mul i32 %11, %i.bfl
  %i.bgc = add i32 %i.bga, %i.bgb
  %i.bgd = mul i32 %10, %i.bgc
  %i.bge = add i32 %i.bfz, %i.bgd
  %i.bgf = zext i32 %i.bge to i64
  br label %.lr.ph417.i

.lr.ph417.i:                                      ; preds = %.lr.ph417.i.preheader, %._crit_edge418.i
  %indvars.iv446.i = phi i64 [ %indvars.iv.next447.i, %._crit_edge418.i ], [ 0, %.lr.ph417.i.preheader ] ; 4 uses
  %i.bgg = mul i64 %indvars.iv446.i, %i.aqv
  %i.bgh = add i64 %i.bgg, %i.bgf
  %i.bgi = trunc nuw nsw i64 %indvars.iv446.i to i32
  %i.bgj = add nsw i32 %i.bfl, %i.bgi
  %i.bgk = mul nsw i32 %i.bgj, %11
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bft, i64 %indvars.iv446.i
  %i.bgm = load float, ptr %i.bgl, align 4, !tbaa !134
  %i.bgn = fmul float %i.bff, %i.bgm
  %i.bgo = add i32 %i.bfo, %i.bgk
  br label %iter.check142

iter.check142:                                    ; preds = %._crit_edge414.i, %.lr.ph417.i
  %indvars.iv441.i = phi i64 [ 0, %.lr.ph417.i ], [ %indvars.iv.next442.i, %._crit_edge414.i ] ; 4 uses
  %i.bgp = mul i64 %indvars.iv441.i, %i.aqw
  %i.bgq = add i64 %i.bgh, %i.bgp
  %sext = shl i64 %i.bgq, 32
  %i.bgr = ashr exact i64 %sext, 30               ; 2 uses
  %scevgep120 = getelementptr i8, ptr %i.apr, i64 %i.bgr
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.bgr
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.bfv, i64 %indvars.iv441.i
  %i.bgt = load float, ptr %i.bgs, align 4, !tbaa !134
  %i.bgu = fmul float %i.bgn, %i.bgt              ; 7 uses
  %i.bgv = trunc nuw nsw i64 %indvars.iv441.i to i32
  %i.bgw = add i32 %i.bgo, %i.bgv
  %i.bgx = mul i32 %i.bgw, %10
  %i.bgy = add i32 %i.bfr, %i.bgx                 ; 9 uses
  br i1 %min.iters.check123, label %vec.epilog.scalar.ph143.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check142
  %i.bgz = add i32 %i.bgy, %i.aqz
  %i.bha = icmp slt i32 %i.bgz, %i.bgy
  %i.bhb = or i1 %i.bha, %i.ara
  br i1 %i.bhb, label %vec.epilog.scalar.ph143.preheader, label %vector.memcheck119

vector.memcheck119:                               ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.bfx, %scevgep122
  %bound1 = icmp ult ptr %scevgep120, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph143.preheader, label %vector.main.loop.iter.check124

vector.main.loop.iter.check124:                   ; preds = %vector.memcheck119
  br i1 %min.iters.check125, label %vec.epilog.ph146, label %vector.ph126

vector.ph126:                                     ; preds = %vector.main.loop.iter.check124
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.bgu, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph126
  %index129 = phi i64 [ 0, %vector.ph126 ], [ %index.next138, %vector.body128 ] ; 3 uses
  %i.bhc = trunc nuw nsw i64 %index129 to i32
  %i.bhd = add i32 %i.bgy, %i.bhc
  %i.bhe = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %index129 ; 4 uses
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 32
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bhe, i64 64
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.bhe, i64 96
  %wide.load130 = load <8 x float>, ptr %i.bhe, align 4, !tbaa !134, !alias.scope !343, !noalias !344
  %wide.load131 = load <8 x float>, ptr %i.bhf, align 4, !tbaa !134, !alias.scope !343, !noalias !344
  %wide.load132 = load <8 x float>, ptr %i.bhg, align 4, !tbaa !134, !alias.scope !343, !noalias !344
  %wide.load133 = load <8 x float>, ptr %i.bhh, align 4, !tbaa !134, !alias.scope !343, !noalias !344
  %i.bhi = sext i32 %i.bhd to i64
  %i.bhj = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bhi ; 5 uses
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 32 ; 2 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhj, i64 64 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhj, i64 96 ; 2 uses
  %wide.load134 = load <8 x float>, ptr %i.bhj, align 4, !tbaa !134, !alias.scope !344
  %wide.load135 = load <8 x float>, ptr %i.bhk, align 4, !tbaa !134, !alias.scope !344
  %wide.load136 = load <8 x float>, ptr %i.bhl, align 4, !tbaa !134, !alias.scope !344
  %wide.load137 = load <8 x float>, ptr %i.bhm, align 4, !tbaa !134, !alias.scope !344
  %i.bhn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load130, <8 x float> %wide.load134)
  %i.bho = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load131, <8 x float> %wide.load135)
  %i.bhp = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load132, <8 x float> %wide.load136)
  %i.bhq = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat, <8 x float> %wide.load133, <8 x float> %wide.load137)
  store <8 x float> %i.bhn, ptr %i.bhj, align 4, !tbaa !134, !alias.scope !344
  store <8 x float> %i.bho, ptr %i.bhk, align 4, !tbaa !134, !alias.scope !344
  store <8 x float> %i.bhp, ptr %i.bhl, align 4, !tbaa !134, !alias.scope !344
  store <8 x float> %i.bhq, ptr %i.bhm, align 4, !tbaa !134, !alias.scope !344
  %index.next138 = add nuw i64 %index129, 32      ; 2 uses
  %i.bhr = icmp eq i64 %index.next138, %n.vec127
  br i1 %i.bhr, label %middle.block139, label %vector.body128, !llvm.loop !310

middle.block139:                                  ; preds = %vector.body128
  br i1 %cmp.n140, label %._crit_edge414.i, label %vec.epilog.iter.check144

vec.epilog.iter.check144:                         ; preds = %middle.block139
  br i1 %min.epilog.iters.check145, label %vec.epilog.scalar.ph143.preheader, label %vec.epilog.ph146, !prof !138

vec.epilog.ph146:                                 ; preds = %vector.main.loop.iter.check124, %vec.epilog.iter.check144
  %vec.epilog.resume.val141 = phi i64 [ %n.vec127, %vec.epilog.iter.check144 ], [ 0, %vector.main.loop.iter.check124 ]
  %broadcast.splatinsert148 = insertelement <4 x float> poison, float %i.bgu, i64 0
  %broadcast.splat149 = shufflevector <4 x float> %broadcast.splatinsert148, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body150

vec.epilog.vector.body150:                        ; preds = %vec.epilog.vector.body150, %vec.epilog.ph146
  %index151 = phi i64 [ %vec.epilog.resume.val141, %vec.epilog.ph146 ], [ %index.next154, %vec.epilog.vector.body150 ] ; 3 uses
  %i.bhs = trunc nuw nsw i64 %index151 to i32
  %i.bht = add i32 %i.bgy, %i.bhs
  %i.bhu = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %index151
  %wide.load152 = load <4 x float>, ptr %i.bhu, align 4, !tbaa !134, !alias.scope !343, !noalias !344
  %i.bhv = sext i32 %i.bht to i64
  %i.bhw = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bhv ; 2 uses
  %wide.load153 = load <4 x float>, ptr %i.bhw, align 4, !tbaa !134, !alias.scope !344
  %i.bhx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat149, <4 x float> %wide.load152, <4 x float> %wide.load153)
  store <4 x float> %i.bhx, ptr %i.bhw, align 4, !tbaa !134, !alias.scope !344
  %index.next154 = add nuw i64 %index151, 4       ; 2 uses
  %i.bhy = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.bhy, label %vec.epilog.middle.block155, label %vec.epilog.vector.body150, !llvm.loop !311

vec.epilog.middle.block155:                       ; preds = %vec.epilog.vector.body150
  br i1 %cmp.n156, label %._crit_edge414.i, label %vec.epilog.scalar.ph143.preheader

vec.epilog.scalar.ph143.preheader:                ; preds = %vector.memcheck119, %vector.scevcheck, %iter.check142, %vec.epilog.iter.check144, %vec.epilog.middle.block155
  %indvars.iv438.i.ph = phi i64 [ 0, %iter.check142 ], [ 0, %vector.scevcheck ], [ 0, %vector.memcheck119 ], [ %n.vec127, %vec.epilog.iter.check144 ], [ %n.vec147, %vec.epilog.middle.block155 ] ; 3 uses
  br i1 %lcmp.mod532.not, label %vec.epilog.scalar.ph143.prol.loopexit, label %vec.epilog.scalar.ph143.prol

vec.epilog.scalar.ph143.prol:                     ; preds = %vec.epilog.scalar.ph143.preheader, %vec.epilog.scalar.ph143.prol
  %indvars.iv438.i.prol = phi i64 [ %indvars.iv.next439.i.prol, %vec.epilog.scalar.ph143.prol ], [ %indvars.iv438.i.ph, %vec.epilog.scalar.ph143.preheader ] ; 3 uses
  %prol.iter533 = phi i64 [ %prol.iter533.next, %vec.epilog.scalar.ph143.prol ], [ 0, %vec.epilog.scalar.ph143.preheader ]
  %i.bhz = trunc nuw nsw i64 %indvars.iv438.i.prol to i32
  %i.bia = add i32 %i.bgy, %i.bhz
  %i.bib = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %indvars.iv438.i.prol
  %i.bic = load float, ptr %i.bib, align 4, !tbaa !134
  %i.bid = sext i32 %i.bia to i64
  %i.bie = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bid ; 2 uses
  %i.bif = load float, ptr %i.bie, align 4, !tbaa !134
  %i.big = call float @llvm.fmuladd.f32(float %i.bgu, float %i.bic, float %i.bif)
  store float %i.big, ptr %i.bie, align 4, !tbaa !134
  %indvars.iv.next439.i.prol = add nuw nsw i64 %indvars.iv438.i.prol, 1 ; 2 uses
  %prol.iter533.next = add i64 %prol.iter533, 1   ; 2 uses
  %prol.iter533.cmp.not = icmp eq i64 %prol.iter533.next, %xtraiter531
  br i1 %prol.iter533.cmp.not, label %vec.epilog.scalar.ph143.prol.loopexit, label %vec.epilog.scalar.ph143.prol, !llvm.loop !312

vec.epilog.scalar.ph143.prol.loopexit:            ; preds = %vec.epilog.scalar.ph143.prol, %vec.epilog.scalar.ph143.preheader
  %indvars.iv438.i.unr = phi i64 [ %indvars.iv438.i.ph, %vec.epilog.scalar.ph143.preheader ], [ %indvars.iv.next439.i.prol, %vec.epilog.scalar.ph143.prol ]
  %i.bih = sub nsw i64 %indvars.iv438.i.ph, %wide.trip.count449.i
  %i.bii = icmp ugt i64 %i.bih, -4
  br i1 %i.bii, label %._crit_edge414.i, label %vec.epilog.scalar.ph143

vec.epilog.scalar.ph143:                          ; preds = %vec.epilog.scalar.ph143.prol.loopexit, %vec.epilog.scalar.ph143
  %indvars.iv438.i = phi i64 [ %indvars.iv.next439.i.3, %vec.epilog.scalar.ph143 ], [ %indvars.iv438.i.unr, %vec.epilog.scalar.ph143.prol.loopexit ] ; 6 uses
  %i.bij = trunc nuw nsw i64 %indvars.iv438.i to i32
  %i.bik = add i32 %i.bgy, %i.bij
  %i.bil = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %indvars.iv438.i
  %i.bim = load float, ptr %i.bil, align 4, !tbaa !134
  %i.bin = sext i32 %i.bik to i64
  %i.bio = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bin ; 2 uses
  %i.bip = load float, ptr %i.bio, align 4, !tbaa !134
  %i.biq = call float @llvm.fmuladd.f32(float %i.bgu, float %i.bim, float %i.bip)
  store float %i.biq, ptr %i.bio, align 4, !tbaa !134
  %indvars.iv.next439.i = add nuw nsw i64 %indvars.iv438.i, 1 ; 2 uses
  %i.bir = trunc nuw nsw i64 %indvars.iv.next439.i to i32
  %i.bis = add i32 %i.bgy, %i.bir
  %i.bit = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %indvars.iv.next439.i
  %i.biu = load float, ptr %i.bit, align 4, !tbaa !134
  %i.biv = sext i32 %i.bis to i64
  %i.biw = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.biv ; 2 uses
  %i.bix = load float, ptr %i.biw, align 4, !tbaa !134
  %i.biy = call float @llvm.fmuladd.f32(float %i.bgu, float %i.biu, float %i.bix)
  store float %i.biy, ptr %i.biw, align 4, !tbaa !134
  %indvars.iv.next439.i.1 = add nuw nsw i64 %indvars.iv438.i, 2 ; 2 uses
  %i.biz = trunc nuw nsw i64 %indvars.iv.next439.i.1 to i32
  %i.bja = add i32 %i.bgy, %i.biz
  %i.bjb = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %indvars.iv.next439.i.1
  %i.bjc = load float, ptr %i.bjb, align 4, !tbaa !134
  %i.bjd = sext i32 %i.bja to i64
  %i.bje = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bjd ; 2 uses
  %i.bjf = load float, ptr %i.bje, align 4, !tbaa !134
  %i.bjg = call float @llvm.fmuladd.f32(float %i.bgu, float %i.bjc, float %i.bjf)
  store float %i.bjg, ptr %i.bje, align 4, !tbaa !134
  %indvars.iv.next439.i.2 = add nuw nsw i64 %indvars.iv438.i, 3 ; 2 uses
  %i.bjh = trunc nuw nsw i64 %indvars.iv.next439.i.2 to i32
  %i.bji = add i32 %i.bgy, %i.bjh
  %i.bjj = getelementptr inbounds nuw [4 x i8], ptr %i.bfx, i64 %indvars.iv.next439.i.2
  %i.bjk = load float, ptr %i.bjj, align 4, !tbaa !134
  %i.bjl = sext i32 %i.bji to i64
  %i.bjm = getelementptr inbounds [4 x i8], ptr %i.apr, i64 %i.bjl ; 2 uses
  %i.bjn = load float, ptr %i.bjm, align 4, !tbaa !134
  %i.bjo = call float @llvm.fmuladd.f32(float %i.bgu, float %i.bjk, float %i.bjn)
  store float %i.bjo, ptr %i.bjm, align 4, !tbaa !134
  %indvars.iv.next439.i.3 = add nuw nsw i64 %indvars.iv438.i, 4 ; 2 uses
  %exitcond.not.i47.3 = icmp eq i64 %indvars.iv.next439.i.3, %wide.trip.count449.i
  br i1 %exitcond.not.i47.3, label %._crit_edge414.i, label %vec.epilog.scalar.ph143, !llvm.loop !313

._crit_edge414.i:                                 ; preds = %vec.epilog.scalar.ph143.prol.loopexit, %vec.epilog.scalar.ph143, %vec.epilog.middle.block155, %middle.block139
  %indvars.iv.next442.i = add nuw nsw i64 %indvars.iv441.i, 1 ; 2 uses
  %exitcond445.not.i = icmp eq i64 %indvars.iv.next442.i, %wide.trip.count449.i
  br i1 %exitcond445.not.i, label %._crit_edge418.i, label %iter.check142, !llvm.loop !314

._crit_edge418.i:                                 ; preds = %._crit_edge414.i
  %indvars.iv.next447.i = add nuw nsw i64 %indvars.iv446.i, 1 ; 2 uses
  %exitcond450.not.i = icmp eq i64 %indvars.iv.next447.i, %wide.trip.count449.i
  br i1 %exitcond450.not.i, label %.loopexit.i45, label %.lr.ph417.i, !llvm.loop !315

.loopexit.i45:                                    ; preds = %._crit_edge418.i, %.preheader.i46, %.lr.ph423.split.i
  %indvars.iv.next452.i = add nuw nsw i64 %indvars.iv451.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next452.i, %i.aqq
  br i1 %exitcond.not, label %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit, label %.lr.ph423.split.i, !llvm.loop !306

_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit: ; preds = %.loopexit407.us.i, %.loopexit406.us.i, %.loopexit.i45, %._crit_edge.i41
  %i.bjp = load ptr, ptr %4, align 8, !tbaa !11
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 80
  %i.bjr = load i8, ptr %i.bjq, align 8, !tbaa !108, !range !106, !noundef !107
  %i.bjs = trunc nuw i8 %i.bjr to i1
  br i1 %i.bjs, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZL35spread_coefficients_bsplines_threadP9pmegrid_tPK11PmeAtomCommP12splinedata_tRK15pme_spline_work.exit
  %i.bjt = load ptr, ptr %3, align 8, !tbaa !15   ; 3 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjt, i64 200
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !129 ; 2 uses
  %i.bjw = ptrtoaddr ptr %i.bjv to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bjt, i64 216
  %i.bjy = load ptr, ptr %i.bjx, align 8, !tbaa !130
  %i.bjz = invoke noundef i32 @_Z30gmx_parallel_3dfft_real_limitsP18gmx_parallel_3dfftPiS1_S1_(ptr noundef %i.bjy, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.r     ; 0 uses

.noexc:                                           ; preds = %bb.q
  %i.bka = load i32, ptr %i.q, align 4, !tbaa !105 ; 3 uses
  %i.bkb = load i32, ptr %i.r, align 4, !tbaa !105 ; 4 uses
  %i.bkc = getelementptr inbounds nuw i8, ptr %i.bjt, i64 88
  %i.bkd = load ptr, ptr %i.bkc, align 8, !tbaa !193
  %i.bke = getelementptr inbounds nuw [72 x i8], ptr %i.bkd, i64 %indvars.iv ; 8 uses
  %i.bkf = getelementptr inbounds nuw i8, ptr %i.bke, i64 44
end_hunk_0
