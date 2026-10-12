Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/autocorr?download=true
inline.NumInlined: 330
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 33
begin_hunk_0_@_Z15low_do_autocorrPKcPK16gmx_output_env_tS0_iiiPPffmibbbffi:bb.a
  %i.bjm = mul nuw nsw i64 %i.bjk, 12
  %i.bjn = and i64 %i.bjm, 17179869180
  %scevgep245.i = getelementptr i8, ptr %i.eg, i64 %i.bjn ; 2 uses
  %.sroa.5276.0.copyload.i = load float, ptr %.sroa.5276.0.scevgep244.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5273.0.scevgep245.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep245.i, i64 8
  %.sroa.5273.0.copyload.i = load float, ptr %.sroa.5273.0.scevgep245.sroa_idx.i, align 4, !tbaa !24
  %i.bjo = load <2 x float>, ptr %scevgep244.i, align 4, !tbaa !24 ; 2 uses
  %i.bjp = load <2 x float>, ptr %scevgep245.i, align 4, !tbaa !24 ; 2 uses
  %i.bjq = shufflevector <2 x float> %i.bjo, <2 x float> %i.bjp, <2 x i32> <i32 0, i32 2>
  %i.bjr = fpext <2 x float> %i.bjq to <2 x double> ; 6 uses
  %i.bjs = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bjr, <2 x double> %i.bjr, <2 x double> zeroinitializer)
  %i.bjt = shufflevector <2 x float> %i.bjo, <2 x float> %i.bjp, <2 x i32> <i32 1, i32 3>
  %i.bju = fpext <2 x float> %i.bjt to <2 x double> ; 6 uses
  %i.bjv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bju, <2 x double> %i.bju, <2 x double> %i.bjs)
  %i.bjw = insertelement <2 x float> poison, float %.sroa.5276.0.copyload.i, i64 0
  %i.bjx = insertelement <2 x float> %i.bjw, float %.sroa.5273.0.copyload.i, i64 1
  %i.bjy = fpext <2 x float> %i.bjx to <2 x double> ; 6 uses
  %i.bjz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bjy, <2 x double> %i.bjy, <2 x double> %i.bjv) ; 2 uses
  %shift = shufflevector <2 x double> %i.bjz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1340 = fmul <2 x double> %i.bjz, %shift
  %i.bka = extractelement <2 x double> %foldExtExtBinop1340, i64 0 ; 2 uses
  %i.bkb = fcmp ogt double %i.bka, 0.000000e+00
  br i1 %i.bkb, label %bb.bn, label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

bb.bn:                                            ; preds = %bb.bm
  %i.bkc = extractelement <2 x double> %i.bjr, i64 0
  %i.bkd = extractelement <2 x double> %i.bjr, i64 1
  %i.bke = call double @llvm.fmuladd.f64(double %i.bkc, double %i.bkd, double 0.000000e+00)
  %i.bkf = extractelement <2 x double> %i.bju, i64 0
  %i.bkg = extractelement <2 x double> %i.bju, i64 1
  %i.bkh = call double @llvm.fmuladd.f64(double %i.bkf, double %i.bkg, double %i.bke)
  %i.bki = extractelement <2 x double> %i.bjy, i64 0
  %i.bkj = extractelement <2 x double> %i.bjy, i64 1
  %i.bkk = call double @llvm.fmuladd.f64(double %i.bki, double %i.bkj, double %i.bkh)
  %i.bkl = call double @sqrt(double noundef %i.bka) #16
  %i.bkm = fdiv double 1.000000e+00, %i.bkl
  %i.bkn = fmul double %i.bkk, %i.bkm
  %i.bko = fptrunc double %i.bkn to float
  br label %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i

_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i: ; preds = %bb.bn, %bb.bm
  %.026.i.us.us.us.us.us.us.us.us.us.i = phi float [ %i.bko, %bb.bn ], [ 1.000000e+00, %bb.bm ] ; 3 uses
  %i.bkp = fcmp ogt float %.026.i.us.us.us.us.us.us.us.us.us.i, 1.000000e+00
  %i.bkq = fcmp olt float %.026.i.us.us.us.us.us.us.us.us.us.i, -1.000000e+00
  %..026.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.bkq, float -1.000000e+00, float %.026.i.us.us.us.us.us.us.us.us.us.i
  %.027.i.us.us.us.us.us.us.us.us.us.i = select i1 %i.bkp, float 1.000000e+00, float %..026.i.us.us.us.us.us.us.us.us.us.i ; 2 uses
  %i.bkr = fpext float %.027.i.us.us.us.us.us.us.us.us.us.i to double
  %i.bks = fadd double %i.bkr, -1.000000e+00
  %i.bkt = fcmp ogt double %i.bks, 1.000000e-15
  br i1 %i.bkt, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.bku = extractelement <2 x double> %i.bjy, i64 0
  %i.bkv = extractelement <2 x double> %i.bjy, i64 1
  %i.bkw = extractelement <2 x double> %i.bju, i64 0
  %i.bkx = extractelement <2 x double> %i.bju, i64 1
  %i.bky = extractelement <2 x double> %i.bjr, i64 0
  %i.bkz = extractelement <2 x double> %i.bjr, i64 1
  %i.bla = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.39, i32 noundef %i.bji, i32 noundef %i.bjj, double noundef %i.bky, double noundef %i.bkw, double noundef %i.bku, double noundef %i.bkz, double noundef %i.bkx, double noundef %i.bkv) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %_ZL9cos_anglePKfS0_.exit.us.us.us.us.us.us.us.us.us.i
  %i.blb = call noundef float @_Z9LegendrePfj(float noundef %.027.i.us.us.us.us.us.us.us.us.us.i, i32 noundef %.0110.i)
  %i.blc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv249.i192 ; 2 uses
  %i.bld = load float, ptr %i.blc, align 4, !tbaa !24
  %i.ble = fadd float %i.blb, %i.bld
  store float %i.ble, ptr %i.blc, align 4, !tbaa !24
  %indvars.iv.next250.i194 = add nuw nsw i64 %indvars.iv249.i192, 1 ; 2 uses
  %exitcond253.not.i195 = icmp eq i64 %indvars.iv.next250.i194, %i.ap
  br i1 %exitcond253.not.i195, label %.critedge.us.us.us.us.us.i, label %bb.bl, !llvm.loop !202

.critedge.us.us.us.us.us.i:                       ; preds = %bb.bp, %bb.bl
  %indvars.iv.next255.i193 = add nuw nsw i64 %indvars.iv254.i191, %i.bje ; 2 uses
  %i.blf = trunc nuw i64 %indvars.iv.next255.i193 to i32
  %i.blg = icmp sgt i32 %3, %i.blf
  %indvar.next.i = add i32 %indvar.i, 1
  br i1 %i.blg, label %.lr.ph137.us.us.us.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph152.split.us.split.us.split.us.split.us.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.i
  br i1 %i.ay, label %.lr.ph137.us.us.us.us.us175.preheader.i, label %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i

.lr.ph137.us.us.us.us.us175.preheader.i:          ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  %i.blh = mul i32 %.0.i, 3
  %i.bli = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.us.us.us175.i

.lr.ph137.us.us.us.us.us175.i:                    ; preds = %.critedge.us.us.us.us.us177.i, %.lr.ph137.us.us.us.us.us175.preheader.i
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %.critedge.us.us.us.us.us177.i ], [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ] ; 2 uses
  %indvars.iv239.i = phi i64 [ %indvars.iv.next240.i, %.critedge.us.us.us.us.us177.i ], [ 0, %.lr.ph137.us.us.us.us.us175.preheader.i ] ; 2 uses
  %i.blj = trunc nuw i64 %indvars.iv285 to i32
  %i.blk = mul i32 %i.blh, %i.blj
  %i.bll = zext i32 %i.blk to i64
  %i.blm = shl nuw nsw i64 %i.bll, 2
  %scevgep227.i = getelementptr i8, ptr %i.eg, i64 %i.blm ; 3 uses
  %.sroa.4269.0.scevgep227.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep227.i, i64 4
  %.sroa.5270.0.scevgep227.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep227.i, i64 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %.lr.ph137.us.us.us.us.us175.i
  %indvars.iv232.i = phi i64 [ %indvars.iv.next233.i, %bb.br ], [ 0, %.lr.ph137.us.us.us.us.us175.i ] ; 3 uses
  %i.bln = add nuw nsw i64 %indvars.iv232.i, %indvars.iv239.i ; 2 uses
  %i.blo = icmp samesign ult i64 %i.bln, %i.az
  br i1 %i.blo, label %bb.br, label %.critedge.us.us.us.us.us177.i

bb.br:                                            ; preds = %bb.bq
  %i.blp = mul nuw nsw i64 %i.bln, 12
  %i.blq = and i64 %i.blp, 17179869180
  %scevgep228.i = getelementptr i8, ptr %i.eg, i64 %i.blq ; 3 uses
  %.sroa.0268.0.copyload.i = load float, ptr %scevgep227.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4269.0.copyload.i = load float, ptr %.sroa.4269.0.scevgep227.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5270.0.copyload.i = load float, ptr %.sroa.5270.0.scevgep227.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.0265.0.copyload.i = load float, ptr %scevgep228.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.4266.0.scevgep228.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep228.i, i64 4
  %.sroa.4266.0.copyload.i = load float, ptr %.sroa.4266.0.scevgep228.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %.sroa.5267.0.scevgep228.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep228.i, i64 8
  %.sroa.5267.0.copyload.i = load float, ptr %.sroa.5267.0.scevgep228.sroa_idx.i, align 4, !tbaa !24 ; 2 uses
  %i.blr = fneg float %.sroa.4266.0.copyload.i
  %i.bls = fmul float %.sroa.5270.0.copyload.i, %i.blr
  %i.blt = call float @llvm.fmuladd.f32(float %.sroa.4269.0.copyload.i, float %.sroa.5267.0.copyload.i, float %i.bls) ; 2 uses
  %i.blu = fneg float %.sroa.5267.0.copyload.i
  %i.blv = fmul float %.sroa.0268.0.copyload.i, %i.blu
  %i.blw = call float @llvm.fmuladd.f32(float %.sroa.5270.0.copyload.i, float %.sroa.0265.0.copyload.i, float %i.blv) ; 2 uses
  %i.blx = fneg float %.sroa.0265.0.copyload.i
  %i.bly = fmul float %.sroa.4269.0.copyload.i, %i.blx
  %i.blz = call float @llvm.fmuladd.f32(float %.sroa.0268.0.copyload.i, float %.sroa.4266.0.copyload.i, float %i.bly) ; 2 uses
  %i.bma = fmul float %i.blw, %i.blw
  %i.bmb = call float @llvm.fmuladd.f32(float %i.blt, float %i.blt, float %i.bma)
  %i.bmc = call noundef float @llvm.fmuladd.f32(float %i.blz, float %i.blz, float %i.bmb)
  %i.bmd = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv232.i ; 2 uses
  %i.bme = load float, ptr %i.bmd, align 4, !tbaa !24
  %i.bmf = fadd float %i.bme, %i.bmc
  store float %i.bmf, ptr %i.bmd, align 4, !tbaa !24
  %indvars.iv.next233.i = add nuw nsw i64 %indvars.iv232.i, 1 ; 2 uses
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next233.i, %i.ap
  br i1 %exitcond236.not.i, label %.critedge.us.us.us.us.us177.i, label %bb.bq, !llvm.loop !202

.critedge.us.us.us.us.us177.i:                    ; preds = %bb.br, %bb.bq
  %indvars.iv.next240.i = add nuw nsw i64 %indvars.iv239.i, %i.bli ; 2 uses
  %i.bmg = icmp samesign ult i64 %indvars.iv.next240.i, %i.az
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1
  br i1 %i.bmg, label %.lr.ph137.us.us.us.us.us175.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph152.split.us.split.us.split.us.split.us.split.split.i: ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.i
  br i1 %.not155, label %.split.us174.i, label %.lr.ph137.us.us.us.us.preheader.i

.lr.ph137.us.us.us.us.preheader.i:                ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  %i.bmh = mul i32 %.0.i, 3
  %i.bmi = zext nneg i32 %.0.i to i64
  br label %.lr.ph137.us.us.us.us.i

.lr.ph137.us.us.us.us.i:                          ; preds = %.critedge.us.us.us.us.i, %.lr.ph137.us.us.us.us.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.us.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.us.preheader.i ] ; 2 uses
  %indvars.iv222.i189 = phi i64 [ %indvars.iv.next223.i190, %.critedge.us.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.us.preheader.i ] ; 2 uses
  %i.bmj = trunc nuw i64 %indvars.iv to i32
  %i.bmk = mul i32 %i.bmh, %i.bmj
  %i.bml = zext i32 %i.bmk to i64
  %i.bmm = shl nuw nsw i64 %i.bml, 2
  %scevgep.i = getelementptr i8, ptr %i.eg, i64 %i.bmm ; 3 uses
  %.sroa.4263.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 4
  %.sroa.5264.0.scevgep.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep.i, i64 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bt, %.lr.ph137.us.us.us.us.i
  %indvars.iv215.i = phi i64 [ %indvars.iv.next216.i, %bb.bt ], [ 0, %.lr.ph137.us.us.us.us.i ] ; 3 uses
  %i.bmn = add nuw nsw i64 %indvars.iv215.i, %indvars.iv222.i189 ; 2 uses
  %i.bmo = icmp samesign ult i64 %i.bmn, %i.az
  br i1 %i.bmo, label %bb.bt, label %.critedge.us.us.us.us.i

bb.bt:                                            ; preds = %bb.bs
  %i.bmp = mul nuw nsw i64 %i.bmn, 12
  %i.bmq = and i64 %i.bmp, 17179869180
  %scevgep211.i = getelementptr i8, ptr %i.eg, i64 %i.bmq ; 3 uses
  %.sroa.0262.0.copyload.i = load float, ptr %scevgep.i, align 4, !tbaa !24
  %.sroa.4263.0.copyload.i = load float, ptr %.sroa.4263.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5264.0.copyload.i = load float, ptr %.sroa.5264.0.scevgep.sroa_idx.i, align 4, !tbaa !24
  %.sroa.0.0.copyload.i = load float, ptr %scevgep211.i, align 4, !tbaa !24
  %.sroa.4.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 4
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %.sroa.5.0.scevgep211.sroa_idx.i = getelementptr inbounds nuw i8, ptr %scevgep211.i, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0.scevgep211.sroa_idx.i, align 4, !tbaa !24
  %i.bmr = fmul float %.sroa.4263.0.copyload.i, %.sroa.4.0.copyload.i
  %i.bms = call float @llvm.fmuladd.f32(float %.sroa.0262.0.copyload.i, float %.sroa.0.0.copyload.i, float %i.bmr)
  %i.bmt = call noundef float @llvm.fmuladd.f32(float %.sroa.5264.0.copyload.i, float %.sroa.5.0.copyload.i, float %i.bms)
  %i.bmu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv215.i ; 2 uses
  %i.bmv = load float, ptr %i.bmu, align 4, !tbaa !24
  %i.bmw = fadd float %i.bmv, %i.bmt
  store float %i.bmw, ptr %i.bmu, align 4, !tbaa !24
  %indvars.iv.next216.i = add nuw nsw i64 %indvars.iv215.i, 1 ; 2 uses
  %exitcond219.not.i = icmp eq i64 %indvars.iv.next216.i, %i.ap
  br i1 %exitcond219.not.i, label %.critedge.us.us.us.us.i, label %bb.bs, !llvm.loop !202

.critedge.us.us.us.us.i:                          ; preds = %bb.bt, %bb.bs
  %indvars.iv.next223.i190 = add nuw nsw i64 %indvars.iv222.i189, %i.bmi ; 2 uses
  %i.bmx = icmp samesign ult i64 %indvars.iv.next223.i190, %i.az
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.bmx, label %.lr.ph137.us.us.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph137.us.us.us.i:                             ; preds = %.critedge.us.us.us.i, %.lr.ph137.us.us.us.preheader.i
  %indvar = phi i64 [ %indvar.next, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 4 uses
  %indvars.iv208.i = phi i64 [ %indvars.iv.next209.i, %.critedge.us.us.us.i ], [ 0, %.lr.ph137.us.us.us.preheader.i ] ; 6 uses
  %27 = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv208.i ; 3 uses
  %28 = call i64 @llvm.umax.i64(i64 %indvars.iv208.i, i64 %i.az)
  %29 = mul i64 %indvar, %i.bix
  %i.bmy = sub i64 %28, %29
  %i.bmz = call i64 @llvm.umin.i64(i64 %i.bj, i64 %i.bmy)
  %i.bna = add nsw i64 %i.bmz, 1                  ; 3 uses
  %min.iters.check1279 = icmp ult i64 %i.bna, 33
  br i1 %min.iters.check1279, label %scalar.ph1278.preheader, label %vector.memcheck1265

vector.memcheck1265:                              ; preds = %.lr.ph137.us.us.us.i
  %i.bnb = mul i64 %i.biy, %indvar
  %i.bnc = getelementptr i8, ptr %i.eg, i64 %i.bnb
  %scevgep1268 = getelementptr i8, ptr %i.bnc, i64 4
  %umax = call i64 @llvm.umax.i64(i64 %indvars.iv208.i, i64 %i.az)
  %i.bnd = mul i64 %indvar, %i.bix
  %i.bne = sub i64 %umax, %i.bnd
  %umin = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bne)
  %i.bnf = shl i64 %umin, 2                       ; 2 uses
  %scevgep1269 = getelementptr i8, ptr %scevgep1268, i64 %i.bnf
  %scevgep1267 = getelementptr i8, ptr %scevgep1266, i64 %i.bnf ; 2 uses
  %bound01271 = icmp ult ptr %i.ah, %scevgep1269
  %bound11272 = icmp ult ptr %27, %scevgep1267
  %found.conflict1273 = and i1 %bound01271, %bound11272
  %bound11275 = icmp ult ptr %i.eg, %scevgep1267
  %found.conflict1276 = and i1 %bound01274, %bound11275
  %conflict.rdx1277 = or i1 %found.conflict1273, %found.conflict1276
  br i1 %conflict.rdx1277, label %scalar.ph1278.preheader, label %vector.ph1280

vector.ph1280:                                    ; preds = %vector.memcheck1265
  %i.bng = and i64 %i.bna, 31                     ; 2 uses
  %i.bnh = icmp eq i64 %i.bng, 0
  %i.bni = select i1 %i.bnh, i64 32, i64 %i.bng
  %n.vec1281 = sub i64 %i.bna, %i.bni             ; 2 uses
  %i.bnj = load float, ptr %27, align 4, !tbaa !24, !alias.scope !266
  %broadcast.splatinsert1288 = insertelement <8 x float> poison, float %i.bnj, i64 0
  %broadcast.splat1289 = shufflevector <8 x float> %broadcast.splatinsert1288, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep1432 = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv208.i
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1280
  %index1283 = phi i64 [ 0, %vector.ph1280 ], [ %index.next1294, %vector.body1282 ] ; 3 uses
  %gep1433 = getelementptr [4 x i8], ptr %invariant.gep1432, i64 %index1283 ; 4 uses
  %i.bnk = getelementptr inbounds nuw i8, ptr %gep1433, i64 32
  %i.bnl = getelementptr inbounds nuw i8, ptr %gep1433, i64 64
  %i.bnm = getelementptr inbounds nuw i8, ptr %gep1433, i64 96
  %wide.load1284 = load <8 x float>, ptr %gep1433, align 4, !tbaa !24, !alias.scope !267
  %wide.load1285 = load <8 x float>, ptr %i.bnk, align 4, !tbaa !24, !alias.scope !267
  %wide.load1286 = load <8 x float>, ptr %i.bnl, align 4, !tbaa !24, !alias.scope !267
  %wide.load1287 = load <8 x float>, ptr %i.bnm, align 4, !tbaa !24, !alias.scope !267
  %i.bnn = fcmp oeq <8 x float> %broadcast.splat1289, %wide.load1284
  %i.bno = fcmp oeq <8 x float> %broadcast.splat1289, %wide.load1285
  %i.bnp = fcmp oeq <8 x float> %broadcast.splat1289, %wide.load1286
  %i.bnq = fcmp oeq <8 x float> %broadcast.splat1289, %wide.load1287
  %i.bnr = uitofp <8 x i1> %i.bnn to <8 x float>
  %i.bns = uitofp <8 x i1> %i.bno to <8 x float>
  %i.bnt = uitofp <8 x i1> %i.bnp to <8 x float>
  %i.bnu = uitofp <8 x i1> %i.bnq to <8 x float>
  %i.bnv = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1283 ; 5 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 32 ; 2 uses
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnv, i64 64 ; 2 uses
  %i.bny = getelementptr inbounds nuw i8, ptr %i.bnv, i64 96 ; 2 uses
  %wide.load1290 = load <8 x float>, ptr %i.bnv, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %wide.load1291 = load <8 x float>, ptr %i.bnw, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %wide.load1292 = load <8 x float>, ptr %i.bnx, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %wide.load1293 = load <8 x float>, ptr %i.bny, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %i.bnz = fadd <8 x float> %wide.load1290, %i.bnr
  %i.boa = fadd <8 x float> %wide.load1291, %i.bns
  %i.bob = fadd <8 x float> %wide.load1292, %i.bnt
  %i.boc = fadd <8 x float> %wide.load1293, %i.bnu
  store <8 x float> %i.bnz, ptr %i.bnv, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  store <8 x float> %i.boa, ptr %i.bnw, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  store <8 x float> %i.bob, ptr %i.bnx, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  store <8 x float> %i.boc, ptr %i.bny, align 4, !tbaa !24, !alias.scope !268, !noalias !269
  %index.next1294 = add nuw i64 %index1283, 32    ; 2 uses
  %i.bod = icmp eq i64 %index.next1294, %n.vec1281
  br i1 %i.bod, label %scalar.ph1278.preheader, label %vector.body1282, !llvm.loop !208

scalar.ph1278.preheader:                          ; preds = %vector.body1282, %vector.memcheck1265, %.lr.ph137.us.us.us.i
  %indvars.iv203.i.ph = phi i64 [ 0, %vector.memcheck1265 ], [ 0, %.lr.ph137.us.us.us.i ], [ %n.vec1281, %vector.body1282 ]
  br label %scalar.ph1278

scalar.ph1278:                                    ; preds = %scalar.ph1278.preheader, %bb.bu
  %indvars.iv203.i = phi i64 [ %indvars.iv.next204.i, %bb.bu ], [ %indvars.iv203.i.ph, %scalar.ph1278.preheader ] ; 3 uses
  %i.boe = add nuw nsw i64 %indvars.iv203.i, %indvars.iv208.i ; 2 uses
  %i.bof = icmp samesign ult i64 %i.boe, %i.az
  br i1 %i.bof, label %bb.bu, label %.critedge.us.us.us.i

bb.bu:                                            ; preds = %scalar.ph1278
  %i.bog = load float, ptr %27, align 4, !tbaa !24
  %i.boh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.boe
  %i.boi = load float, ptr %i.boh, align 4, !tbaa !24
  %i.boj = fcmp oeq float %i.bog, %i.boi
  %i.bok = uitofp i1 %i.boj to float
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv203.i ; 2 uses
  %i.bom = load float, ptr %i.bol, align 4, !tbaa !24
  %i.bon = fadd float %i.bom, %i.bok
  store float %i.bon, ptr %i.bol, align 4, !tbaa !24
  %indvars.iv.next204.i = add nuw nsw i64 %indvars.iv203.i, 1 ; 2 uses
  %exitcond207.not.i = icmp eq i64 %indvars.iv.next204.i, %i.ap
  br i1 %exitcond207.not.i, label %.critedge.us.us.us.i, label %scalar.ph1278, !llvm.loop !209

.critedge.us.us.us.i:                             ; preds = %bb.bu, %scalar.ph1278
  %indvars.iv.next209.i = add nuw nsw i64 %indvars.iv208.i, %i.bix ; 2 uses
  %i.boo = icmp samesign ult i64 %indvars.iv.next209.i, %i.az
  %indvar.next = add i64 %indvar, 1
  br i1 %i.boo, label %.lr.ph137.us.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph137.us.us.i:                                ; preds = %.critedge.us.us.i, %.lr.ph137.us.us.preheader.i
  %indvars.iv200.i = phi i64 [ 0, %.lr.ph137.us.us.preheader.i ], [ %indvars.iv.next201.i, %.critedge.us.us.i ] ; 3 uses
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv200.i
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bw, %.lr.ph137.us.us.i
  %indvars.iv195.i = phi i64 [ %indvars.iv.next196.i, %bb.bw ], [ 0, %.lr.ph137.us.us.i ] ; 3 uses
  %i.boq = add nuw nsw i64 %indvars.iv195.i, %indvars.iv200.i ; 2 uses
  %i.bor = icmp samesign ult i64 %i.boq, %i.az
  br i1 %i.bor, label %bb.bw, label %.critedge.us.us.i

bb.bw:                                            ; preds = %bb.bv
  %i.bos = load float, ptr %i.bop, align 4, !tbaa !24
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.boq
  %i.bou = load float, ptr %i.bot, align 4, !tbaa !24
  %i.bov = fsub float %i.bos, %i.bou
  %i.bow = call noundef float @cosf(float noundef %i.bov) #16
  %i.box = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv195.i ; 2 uses
  %i.boy = load float, ptr %i.box, align 4, !tbaa !24
  %i.boz = fadd float %i.bow, %i.boy
  store float %i.boz, ptr %i.box, align 4, !tbaa !24
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 1 ; 2 uses
  %exitcond199.not.i = icmp eq i64 %indvars.iv.next196.i, %i.ap
  br i1 %exitcond199.not.i, label %.critedge.us.us.i, label %bb.bv, !llvm.loop !202

.critedge.us.us.i:                                ; preds = %bb.bw, %bb.bv
  %indvars.iv.next201.i = add nuw nsw i64 %indvars.iv200.i, %i.biw ; 2 uses
  %i.bpa = icmp samesign ult i64 %indvars.iv.next201.i, %i.az
  br i1 %i.bpa, label %.lr.ph137.us.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph137.us.i:                                   ; preds = %.critedge.us.i, %.lr.ph137.us.preheader.i
  %indvar1300 = phi i64 [ %indvar.next1301, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 4 uses
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %.critedge.us.i ], [ 0, %.lr.ph137.us.preheader.i ] ; 6 uses
  %30 = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv192.i ; 3 uses
  %31 = call i64 @llvm.umax.i64(i64 %indvars.iv192.i, i64 %i.az)
  %32 = mul i64 %indvar1300, %i.biq
  %i.bpb = sub i64 %31, %32
  %i.bpc = call i64 @llvm.umin.i64(i64 %i.bi, i64 %i.bpb)
  %i.bpd = add nsw i64 %i.bpc, 1                  ; 3 uses
  %min.iters.check1315 = icmp ult i64 %i.bpd, 33
  br i1 %min.iters.check1315, label %scalar.ph1314.preheader, label %vector.memcheck1297

vector.memcheck1297:                              ; preds = %.lr.ph137.us.i
  %i.bpe = mul i64 %i.bir, %indvar1300
  %i.bpf = getelementptr i8, ptr %i.eg, i64 %i.bpe
  %scevgep1304 = getelementptr i8, ptr %i.bpf, i64 4
  %umax1299 = call i64 @llvm.umax.i64(i64 %indvars.iv192.i, i64 %i.az)
  %i.bpg = mul i64 %indvar1300, %i.biq
  %i.bph = sub i64 %umax1299, %i.bpg
  %umin1302 = call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bph)
  %i.bpi = shl i64 %umin1302, 2                   ; 2 uses
  %scevgep1305 = getelementptr i8, ptr %scevgep1304, i64 %i.bpi
  %scevgep1303 = getelementptr i8, ptr %scevgep1298, i64 %i.bpi ; 2 uses
  %bound01307 = icmp ult ptr %i.ah, %scevgep1305
  %bound11308 = icmp ult ptr %30, %scevgep1303
  %found.conflict1309 = and i1 %bound01307, %bound11308
  %bound11311 = icmp ult ptr %i.eg, %scevgep1303
  %found.conflict1312 = and i1 %bound01310, %bound11311
  %conflict.rdx1313 = or i1 %found.conflict1309, %found.conflict1312
  br i1 %conflict.rdx1313, label %scalar.ph1314.preheader, label %vector.ph1316

vector.ph1316:                                    ; preds = %vector.memcheck1297
  %i.bpj = and i64 %i.bpd, 31                     ; 2 uses
  %i.bpk = icmp eq i64 %i.bpj, 0
  %i.bpl = select i1 %i.bpk, i64 32, i64 %i.bpj
  %n.vec1317 = sub i64 %i.bpd, %i.bpl             ; 2 uses
  %i.bpm = load float, ptr %30, align 4, !tbaa !24, !alias.scope !270
  %broadcast.splatinsert1328 = insertelement <8 x float> poison, float %i.bpm, i64 0
  %broadcast.splat1329 = shufflevector <8 x float> %broadcast.splatinsert1328, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.eg, i64 %indvars.iv192.i
  br label %vector.body1318

vector.body1318:                                  ; preds = %vector.body1318, %vector.ph1316
  %index1319 = phi i64 [ 0, %vector.ph1316 ], [ %index.next1330, %vector.body1318 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1319 ; 4 uses
  %i.bpn = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bpo = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bpp = getelementptr inbounds nuw i8, ptr %gep, i64 96
  %wide.load1320 = load <8 x float>, ptr %gep, align 4, !tbaa !24, !alias.scope !271
  %wide.load1321 = load <8 x float>, ptr %i.bpn, align 4, !tbaa !24, !alias.scope !271
  %wide.load1322 = load <8 x float>, ptr %i.bpo, align 4, !tbaa !24, !alias.scope !271
  %wide.load1323 = load <8 x float>, ptr %i.bpp, align 4, !tbaa !24, !alias.scope !271
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1319 ; 5 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpq, i64 32 ; 2 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpq, i64 64 ; 2 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpq, i64 96 ; 2 uses
  %wide.load1324 = load <8 x float>, ptr %i.bpq, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %wide.load1325 = load <8 x float>, ptr %i.bpr, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %wide.load1326 = load <8 x float>, ptr %i.bps, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %wide.load1327 = load <8 x float>, ptr %i.bpt, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %i.bpu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1329, <8 x float> %wide.load1320, <8 x float> %wide.load1324)
  %i.bpv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1329, <8 x float> %wide.load1321, <8 x float> %wide.load1325)
  %i.bpw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1329, <8 x float> %wide.load1322, <8 x float> %wide.load1326)
  %i.bpx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat1329, <8 x float> %wide.load1323, <8 x float> %wide.load1327)
  store <8 x float> %i.bpu, ptr %i.bpq, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  store <8 x float> %i.bpv, ptr %i.bpr, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  store <8 x float> %i.bpw, ptr %i.bps, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  store <8 x float> %i.bpx, ptr %i.bpt, align 4, !tbaa !24, !alias.scope !272, !noalias !273
  %index.next1330 = add nuw i64 %index1319, 32    ; 2 uses
  %i.bpy = icmp eq i64 %index.next1330, %n.vec1317
  br i1 %i.bpy, label %scalar.ph1314.preheader, label %vector.body1318, !llvm.loop !214

scalar.ph1314.preheader:                          ; preds = %vector.body1318, %vector.memcheck1297, %.lr.ph137.us.i
  %indvars.iv.i186.ph = phi i64 [ 0, %vector.memcheck1297 ], [ 0, %.lr.ph137.us.i ], [ %n.vec1317, %vector.body1318 ]
  br label %scalar.ph1314

scalar.ph1314:                                    ; preds = %scalar.ph1314.preheader, %bb.bx
  %indvars.iv.i186 = phi i64 [ %indvars.iv.next.i187, %bb.bx ], [ %indvars.iv.i186.ph, %scalar.ph1314.preheader ] ; 3 uses
  %i.bpz = add nuw nsw i64 %indvars.iv.i186, %indvars.iv192.i ; 2 uses
  %i.bqa = icmp samesign ult i64 %i.bpz, %i.az
  br i1 %i.bqa, label %bb.bx, label %.critedge.us.i

bb.bx:                                            ; preds = %scalar.ph1314
  %i.bqb = load float, ptr %30, align 4, !tbaa !24
  %i.bqc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.bpz
  %i.bqd = load float, ptr %i.bqc, align 4, !tbaa !24
  %i.bqe = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i186 ; 2 uses
  %i.bqf = load float, ptr %i.bqe, align 4, !tbaa !24
  %i.bqg = call float @llvm.fmuladd.f32(float %i.bqb, float %i.bqd, float %i.bqf)
  store float %i.bqg, ptr %i.bqe, align 4, !tbaa !24
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i186, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %i.ap
  br i1 %exitcond.not.i188, label %.critedge.us.i, label %scalar.ph1314, !llvm.loop !215

.critedge.us.i:                                   ; preds = %bb.bx, %scalar.ph1314
  %indvars.iv.next193.i = add nuw nsw i64 %indvars.iv192.i, %i.biq ; 2 uses
  %i.bqh = icmp samesign ult i64 %indvars.iv.next193.i, %i.az
  %indvar.next1301 = add i64 %indvar1300, 1
  br i1 %i.bqh, label %.lr.ph137.us.i, label %.lr.ph182.i184, !llvm.loop !203

.lr.ph182.i184:                                   ; preds = %.critedge.us.i, %.critedge.us.us.i, %.critedge.us.us.us.i, %.critedge.us.us.us.us.i, %.critedge.us.us.us.us.us177.i, %.critedge.us.us.us.us.us.i, %.preheader131.i
  %i.bqi = add i32 %.0.i, %3                      ; 6 uses
  %i.bqj = sub i64 %i.ai, %i.eh
  %diff.check1247 = icmp ugt i64 %i.bqj, -32
  %or.cond1336 = select i1 %min.iters.check1249, i1 true, i1 %diff.check1247
  br i1 %or.cond1336, label %scalar.ph1248.preheader, label %vector.ph1250

vector.ph1250:                                    ; preds = %.lr.ph182.i184
  %broadcast.splatinsert1252 = insertelement <8 x i32> poison, i32 %i.bqi, i64 0
  %broadcast.splat1253 = shufflevector <8 x i32> %broadcast.splatinsert1252, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert1254 = insertelement <8 x i32> poison, i32 %.0.i, i64 0
  %broadcast.splat1255 = shufflevector <8 x i32> %broadcast.splatinsert1254, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body1256

vector.body1256:                                  ; preds = %vector.body1256, %vector.ph1250
  %index1257 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1260, %vector.body1256 ] ; 3 uses
  %vec.ind1258 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph1250 ], [ %vec.ind.next1261, %vector.body1256 ] ; 2 uses
  %i.bqk = xor <8 x i32> %vec.ind1258, splat (i32 -1)
  %i.bql = add <8 x i32> %broadcast.splat1253, %i.bqk
  %i.bqm = sdiv <8 x i32> %i.bql, %broadcast.splat1255
  %i.bqn = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index1257
  %wide.load1259 = load <8 x float>, ptr %i.bqn, align 4, !tbaa !24
  %i.bqo = sitofp <8 x i32> %i.bqm to <8 x float>
  %i.bqp = fdiv <8 x float> %wide.load1259, %i.bqo
  %i.bqq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index1257
  store <8 x float> %i.bqp, ptr %i.bqq, align 4, !tbaa !24
  %index.next1260 = add nuw i64 %index1257, 8     ; 2 uses
  %vec.ind.next1261 = add <8 x i32> %vec.ind1258, splat (i32 8)
  %i.bqr = icmp eq i64 %index.next1260, %n.vec1251
  br i1 %i.bqr, label %middle.block1262, label %vector.body1256, !llvm.loop !216

middle.block1262:                                 ; preds = %vector.body1256
  br i1 %cmp.n1263, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph1248.preheader

scalar.ph1248.preheader:                          ; preds = %.lr.ph182.i184, %middle.block1262
  %indvars.iv257.i.ph = phi i64 [ 0, %.lr.ph182.i184 ], [ %n.vec1251, %middle.block1262 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph1248.prol.loopexit, label %scalar.ph1248.prol

scalar.ph1248.prol:                               ; preds = %scalar.ph1248.preheader, %scalar.ph1248.prol
  %indvars.iv257.i.prol = phi i64 [ %indvars.iv.next258.i.prol, %scalar.ph1248.prol ], [ %indvars.iv257.i.ph, %scalar.ph1248.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1248.prol ], [ 0, %scalar.ph1248.preheader ]
  %i.bqs = trunc nuw nsw i64 %indvars.iv257.i.prol to i32
  %i.bqt = xor i32 %i.bqs, -1
  %i.bqu = add i32 %i.bqi, %i.bqt
  %i.bqv = sdiv i32 %i.bqu, %.0.i
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv257.i.prol
  %i.bqx = load float, ptr %i.bqw, align 4, !tbaa !24
  %i.bqy = sitofp i32 %i.bqv to float
  %i.bqz = fdiv float %i.bqx, %i.bqy
  %i.bra = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv257.i.prol
  store float %i.bqz, ptr %i.bra, align 4, !tbaa !24
  %indvars.iv.next258.i.prol = add nuw nsw i64 %indvars.iv257.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph1248.prol.loopexit, label %scalar.ph1248.prol, !llvm.loop !217

scalar.ph1248.prol.loopexit:                      ; preds = %scalar.ph1248.prol, %scalar.ph1248.preheader
  %indvars.iv257.i.unr = phi i64 [ %indvars.iv257.i.ph, %scalar.ph1248.preheader ], [ %indvars.iv.next258.i.prol, %scalar.ph1248.prol ]
  %i.brb = sub nsw i64 %indvars.iv257.i.ph, %i.ap
  %i.brc = icmp ugt i64 %i.brb, -4
  br i1 %i.brc, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph1248

.split.us174.i:                                   ; preds = %.lr.ph152.split.us.split.us.split.us.split.us.split.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IA78_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %16, ptr noundef nonnull align 1 dereferenceable(78) @.str, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef 242, ptr noundef nonnull @.str.40, i64 noundef %8) #17
          to label %bb.by unwind label %bb.bz

bb.by:                                            ; preds = %.split.us174.i
  unreachable

bb.bz:                                            ; preds = %.split.us174.i
  %i.brd = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %common.resume

scalar.ph1248:                                    ; preds = %scalar.ph1248.prol.loopexit, %scalar.ph1248
  %indvars.iv257.i = phi i64 [ %indvars.iv.next258.i.3, %scalar.ph1248 ], [ %indvars.iv257.i.unr, %scalar.ph1248.prol.loopexit ] ; 7 uses
  %i.bre = trunc nuw nsw i64 %indvars.iv257.i to i32
  %i.brf = xor i32 %i.bre, -1
  %i.brg = add i32 %i.bqi, %i.brf
  %i.brh = sdiv i32 %i.brg, %.0.i
  %i.bri = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv257.i
  %i.brj = load float, ptr %i.bri, align 4, !tbaa !24
  %i.brk = sitofp i32 %i.brh to float
  %i.brl = fdiv float %i.brj, %i.brk
  %i.brm = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv257.i
  store float %i.brl, ptr %i.brm, align 4, !tbaa !24
  %indvars.iv.next258.i = add nuw nsw i64 %indvars.iv257.i, 1 ; 3 uses
  %i.brn = trunc nuw nsw i64 %indvars.iv.next258.i to i32
  %i.bro = xor i32 %i.brn, -1
  %i.brp = add i32 %i.bqi, %i.bro
  %i.brq = sdiv i32 %i.brp, %.0.i
  %i.brr = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next258.i
  %i.brs = load float, ptr %i.brr, align 4, !tbaa !24
  %i.brt = sitofp i32 %i.brq to float
  %i.bru = fdiv float %i.brs, %i.brt
  %i.brv = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next258.i
  store float %i.bru, ptr %i.brv, align 4, !tbaa !24
  %indvars.iv.next258.i.1 = add nuw nsw i64 %indvars.iv257.i, 2 ; 3 uses
  %i.brw = trunc nuw nsw i64 %indvars.iv.next258.i.1 to i32
  %i.brx = xor i32 %i.brw, -1
  %i.bry = add i32 %i.bqi, %i.brx
  %i.brz = sdiv i32 %i.bry, %.0.i
  %i.bsa = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next258.i.1
  %i.bsb = load float, ptr %i.bsa, align 4, !tbaa !24
  %i.bsc = sitofp i32 %i.brz to float
  %i.bsd = fdiv float %i.bsb, %i.bsc
  %i.bse = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next258.i.1
  store float %i.bsd, ptr %i.bse, align 4, !tbaa !24
  %indvars.iv.next258.i.2 = add nuw nsw i64 %indvars.iv257.i, 3 ; 3 uses
  %i.bsf = trunc nuw nsw i64 %indvars.iv.next258.i.2 to i32
  %i.bsg = xor i32 %i.bsf, -1
  %i.bsh = add i32 %i.bqi, %i.bsg
  %i.bsi = sdiv i32 %i.bsh, %.0.i
  %i.bsj = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next258.i.2
  %i.bsk = load float, ptr %i.bsj, align 4, !tbaa !24
  %i.bsl = sitofp i32 %i.bsi to float
  %i.bsm = fdiv float %i.bsk, %i.bsl
  %i.bsn = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.next258.i.2
  store float %i.bsm, ptr %i.bsn, align 4, !tbaa !24
  %indvars.iv.next258.i.3 = add nuw nsw i64 %indvars.iv257.i, 4 ; 2 uses
  %exitcond261.not.i.3 = icmp eq i64 %indvars.iv.next258.i.3, %i.ap
  br i1 %exitcond261.not.i.3, label %_ZL10do_ac_coreiiPfS_im.exit, label %scalar.ph1248, !llvm.loop !218

_ZL10do_ac_coreiiPfS_im.exit:                     ; preds = %scalar.ph1248.prol.loopexit, %scalar.ph1248, %middle.block1262, %bb.bk, %_ZL12do_four_coremiPfS_S_.exit
  %indvars.iv.next289 = add nuw nsw i64 %indvars.iv288, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next289, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !219

bb.ca:                                            ; preds = %._crit_edge
  %i.bso = load ptr, ptr @stderr, align 8, !tbaa !22
  %fputc = call i32 @fputc(i32 10, ptr %i.bso)    ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %._crit_edge
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str, i32 noundef 629, ptr noundef %i.ah)
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str, i32 noundef 630, ptr noundef %i.ag)
  %i.bsp = load ptr, ptr %i.b, align 8, !tbaa !12
  %.not159 = icmp eq ptr %i.bsp, null
  br i1 %.not159, label %bb.cf, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.cb
  %i.bsq = sext i32 %.0147.fr to i64
  %i.bsr = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str, i32 noundef 634, i64 noundef range(i64 -2147483648, 2147483648) %i.bsq, i64 noundef 4)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  call void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i8 noundef zeroext 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  %i.bss = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 6 uses
  store ptr %i.bss, ptr %22, align 8, !tbaa !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.bss, ptr noundef nonnull align 1 dereferenceable(9) @.str.13, i64 9, i1 false)
  %i.bst = getelementptr inbounds nuw i8, ptr %22, i64 8
  store i64 9, ptr %i.bst, align 8, !tbaa !34
  %i.bsu = getelementptr inbounds nuw i8, ptr %22, i64 25
  store i8 0, ptr %i.bsu, align 1, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  %i.bsv = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 6 uses
  store ptr %i.bsv, ptr %23, align 8, !tbaa !32
  store i32 695478339, ptr %i.bsv, align 8
  %i.bsw = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 4, ptr %i.bsw, align 8, !tbaa !34
  %i.bsx = getelementptr inbounds nuw i8, ptr %23, i64 20
  store i8 0, ptr %i.bsx, align 4, !tbaa !35
  %i.bsy = invoke noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef %1)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %._crit_edge.i.i
  %i.bsz = load ptr, ptr %23, align 8, !tbaa !36  ; 2 uses
  %i.bta = icmp eq ptr %i.bsz, %i.bsv
  br i1 %i.bta, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.cc
  %i.btb = load i64, ptr %i.bsv, align 8, !tbaa !35
  %i.btc = add i64 %i.btb, 1
  call void @_ZdlPvm(ptr noundef %i.bsz, i64 noundef %i.btc) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.btd = load ptr, ptr %22, align 8, !tbaa !36  ; 2 uses
  %i.bte = icmp eq ptr %i.btd, %i.bss
  br i1 %i.bte, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit203, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i201
end_hunk_0
