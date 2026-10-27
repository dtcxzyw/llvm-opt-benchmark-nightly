Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vcm?download=true
inline.NumInlined: 724
inline.NumDeleted: 310
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZL13do_stopcm_grpRK9t_mdatomsN3gmx8ArrayRefINS2_11BasicVectorIfEEEES6_RK5t_vcm.omp_outlined:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #16
  store i32 %i.zr, ptr %i.ah, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #16
  store i32 1, ptr %i.ai, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj) #16
  store i32 0, ptr %i.aj, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.bo, i32 34, ptr nonnull %i.aj, ptr nonnull %i.ag, ptr nonnull %i.ah, ptr nonnull %i.ai, i32 1, i32 1)
  %i.zs = load i32, ptr %i.ah, align 4, !tbaa !57
  %i.zt = call i32 @llvm.smin.i32(i32 %i.zs, i32 %i.zr) ; 5 uses
  store i32 %i.zt, ptr %i.ah, align 4, !tbaa !57
  %i.zu = load i32, ptr %i.ag, align 4, !tbaa !57 ; 4 uses
  %.not6780.i70 = icmp sgt i32 %i.zu, %i.zt
  br i1 %.not6780.i70, label %._crit_edge84.i72, label %.lr.ph83.i71

.lr.ph83.i71:                                     ; preds = %bb.bl
  %i.zv = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !54 ; 3 uses
  %i.zx = sext i32 %i.zu to i64                   ; 4 uses
  %i.zy = add nsw i32 %i.zt, 1
  %i.zz = add i32 %i.zt, %i.zu
  %i.aaa = and i32 %i.zz, 1
  %lcmp.mod.not.not = icmp eq i32 %i.aaa, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph83.i71
  %i.aab = getelementptr inbounds [2 x i8], ptr %i.to, i64 %i.zx
  %i.aac = load i16, ptr %i.aab, align 2, !tbaa !105
  %i.aad = zext i16 %i.aac to i64
  %i.aae = getelementptr inbounds nuw [12 x i8], ptr %i.zw, i64 %i.aad ; 3 uses
  %i.aaf = getelementptr inbounds [12 x i8], ptr %i.tk, i64 %i.zx ; 4 uses
  %i.aag = load float, ptr %i.aae, align 4, !tbaa !50
  %i.aah = load float, ptr %i.aaf, align 4, !tbaa !50
  %i.aai = fsub float %i.aah, %i.aag
  store float %i.aai, ptr %i.aaf, align 4, !tbaa !50
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aae, i64 4
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !50
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaf, i64 4 ; 2 uses
  %i.aam = load float, ptr %i.aal, align 4, !tbaa !50
  %i.aan = fsub float %i.aam, %i.aak
  store float %i.aan, ptr %i.aal, align 4, !tbaa !50
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
  %i.aap = load float, ptr %i.aao, align 4, !tbaa !50
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaf, i64 8 ; 2 uses
  %i.aar = load float, ptr %i.aaq, align 4, !tbaa !50
  %i.aas = fsub float %i.aar, %i.aap
  store float %i.aas, ptr %i.aaq, align 4, !tbaa !50
  %indvars.iv.next106.i.prol = add nsw i64 %i.zx, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph83.i71
  %indvars.iv105.i.unr = phi i64 [ %i.zx, %.lr.ph83.i71 ], [ %indvars.iv.next106.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.aat = icmp eq i32 %i.zt, %i.zu
  br i1 %i.aat, label %._crit_edge84.i72, label %.lr.ph83.i71.new

.lr.ph83.i71.new:                                 ; preds = %.prol.loopexit, %.lr.ph83.i71.new
  %indvars.iv105.i = phi i64 [ %indvars.iv.next106.i.1, %.lr.ph83.i71.new ], [ %indvars.iv105.i.unr, %.prol.loopexit ] ; 4 uses
  %i.aau = getelementptr inbounds [2 x i8], ptr %i.to, i64 %indvars.iv105.i
  %i.aav = load i16, ptr %i.aau, align 2, !tbaa !105
  %i.aaw = zext i16 %i.aav to i64
  %i.aax = getelementptr inbounds nuw [12 x i8], ptr %i.zw, i64 %i.aaw ; 3 uses
  %i.aay = getelementptr inbounds [12 x i8], ptr %i.tk, i64 %indvars.iv105.i ; 4 uses
  %i.aaz = load float, ptr %i.aax, align 4, !tbaa !50
  %i.aba = load float, ptr %i.aay, align 4, !tbaa !50
  %i.abb = fsub float %i.aba, %i.aaz
  store float %i.abb, ptr %i.aay, align 4, !tbaa !50
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aax, i64 4
  %i.abd = load float, ptr %i.abc, align 4, !tbaa !50
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 4 ; 2 uses
  %i.abf = load float, ptr %i.abe, align 4, !tbaa !50
  %i.abg = fsub float %i.abf, %i.abd
  store float %i.abg, ptr %i.abe, align 4, !tbaa !50
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abi = load float, ptr %i.abh, align 4, !tbaa !50
  %i.abj = getelementptr inbounds nuw i8, ptr %i.aay, i64 8 ; 2 uses
  %i.abk = load float, ptr %i.abj, align 4, !tbaa !50
  %i.abl = fsub float %i.abk, %i.abi
  store float %i.abl, ptr %i.abj, align 4, !tbaa !50
  %indvars.iv.next106.i = add nsw i64 %indvars.iv105.i, 1 ; 2 uses
  %i.abm = getelementptr inbounds [2 x i8], ptr %i.to, i64 %indvars.iv.next106.i
  %i.abn = load i16, ptr %i.abm, align 2, !tbaa !105
  %i.abo = zext i16 %i.abn to i64
  %i.abp = getelementptr inbounds nuw [12 x i8], ptr %i.zw, i64 %i.abo ; 3 uses
  %i.abq = getelementptr inbounds [12 x i8], ptr %i.tk, i64 %indvars.iv.next106.i ; 4 uses
  %i.abr = load float, ptr %i.abp, align 4, !tbaa !50
  %i.abs = load float, ptr %i.abq, align 4, !tbaa !50
  %i.abt = fsub float %i.abs, %i.abr
  store float %i.abt, ptr %i.abq, align 4, !tbaa !50
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abp, i64 4
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !50
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abq, i64 4 ; 2 uses
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !50
  %i.aby = fsub float %i.abx, %i.abv
  store float %i.aby, ptr %i.abw, align 4, !tbaa !50
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abp, i64 8
  %i.aca = load float, ptr %i.abz, align 4, !tbaa !50
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abq, i64 8 ; 2 uses
  %i.acc = load float, ptr %i.acb, align 4, !tbaa !50
  %i.acd = fsub float %i.acc, %i.aca
  store float %i.acd, ptr %i.acb, align 4, !tbaa !50
  %indvars.iv.next106.i.1 = add nsw i64 %indvars.iv105.i, 2 ; 2 uses
  %lftr.wideiv108.i.1 = trunc i64 %indvars.iv.next106.i.1 to i32
  %exitcond109.not.i.1 = icmp eq i32 %i.zy, %lftr.wideiv108.i.1
  br i1 %exitcond109.not.i.1, label %._crit_edge84.i72, label %.lr.ph83.i71.new

._crit_edge84.i72:                                ; preds = %.prol.loopexit, %.lr.ph83.i71.new, %bb.bl
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #16
  br label %bb.bm

bb.bm:                                            ; preds = %._crit_edge84.i72, %bb.bk
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bo)
  br label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit

bb.bn:                                            ; preds = %bb.a, %bb.b
  %i.ace = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !41
  switch i32 %i.acf, label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit [
    i32 1, label %bb.bo
    i32 2, label %bb.bv
    i32 3, label %bb.cd
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.acg = load i32, ptr %6, align 4, !tbaa !57   ; 3 uses
  %.sroa.016.0.copyload = load ptr, ptr %7, align 8 ; 4 uses
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.217.0.copyload = load ptr, ptr %.sroa.217.0..sroa_idx, align 8
  %i.ach = load ptr, ptr %3, align 8, !tbaa !109  ; 9 uses
  %i.aci = load ptr, ptr %5, align 8, !tbaa !109  ; 9 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !42
  %i.acl = fmul float %i.ack, 5.000000e-01        ; 7 uses
  %i.acm = icmp eq ptr %.sroa.016.0.copyload, %.sroa.217.0.copyload
  %i.acn = icmp sgt i32 %i.acg, 0                 ; 2 uses
  br i1 %i.acm, label %bb.bp, label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.acn, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.aco = add nsw i32 %i.acg, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  store i32 0, ptr %i.q, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  store i32 %i.aco, ptr %i.r, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  store i32 1, ptr %i.s, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #16
  store i32 0, ptr %i.t, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.bo, i32 34, ptr nonnull %i.t, ptr nonnull %i.q, ptr nonnull %i.r, ptr nonnull %i.s, i32 1, i32 1)
  %i.acp = load i32, ptr %i.r, align 4, !tbaa !57
  %i.acq = call i32 @llvm.smin.i32(i32 %i.acp, i32 %i.aco) ; 6 uses
  store i32 %i.acq, ptr %i.r, align 4, !tbaa !57
  %i.acr = load i32, ptr %i.q, align 4, !tbaa !57 ; 3 uses
  %.not486.i = icmp sgt i32 %i.acr, %i.acq
  br i1 %.not486.i, label %._crit_edge8.i, label %.preheader.lr.ph.i84

.preheader.lr.ph.i84:                             ; preds = %bb.bq
  %i.acs = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.act = load ptr, ptr %i.acs, align 8, !tbaa !54 ; 10 uses
  %i.acu = sext i32 %i.acr to i64                 ; 6 uses
  %i.acv = add nsw i32 %i.acq, 1
  %i.acw = sub i32 %i.acq, %i.acr                 ; 2 uses
  %i.acx = zext i32 %i.acw to i64                 ; 2 uses
  %i.acy = add nuw nsw i64 %i.acx, 1              ; 2 uses
  %min.iters.check401 = icmp ult i32 %i.acw, 16
  br i1 %min.iters.check401, label %.preheader.i85.preheader, label %vector.memcheck402

vector.memcheck402:                               ; preds = %.preheader.lr.ph.i84
  %i.acz = mul nsw i64 %i.acu, 12                 ; 2 uses
  %i.ada = getelementptr i8, ptr %i.ach, i64 %i.acz ; 2 uses
  %i.adb = add nsw i64 %i.acu, %i.acx
  %i.adc = mul nsw i64 %i.adb, 12
  %i.add = add nsw i64 %i.adc, 4                  ; 2 uses
  %i.ade = getelementptr i8, ptr %i.ach, i64 %i.add ; 2 uses
  %i.adf = getelementptr i8, ptr %i.aci, i64 %i.acz ; 2 uses
  %i.adg = getelementptr i8, ptr %i.aci, i64 %i.add ; 2 uses
  %i.adh = getelementptr i8, ptr %i.act, i64 4    ; 2 uses
  %bound0403 = icmp ult ptr %i.ada, %i.adg
  %bound1404 = icmp ult ptr %i.adf, %i.ade
  %found.conflict405 = and i1 %bound0403, %bound1404
  %bound0406 = icmp ult ptr %i.ada, %i.adh
  %bound1407 = icmp ult ptr %i.act, %i.ade
  %found.conflict408 = and i1 %bound0406, %bound1407
  %conflict.rdx409 = or i1 %found.conflict405, %found.conflict408
  %bound0410 = icmp ult ptr %i.adf, %i.adh
  %bound1411 = icmp ult ptr %i.act, %i.adg
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %conflict.rdx409, %found.conflict412
  br i1 %conflict.rdx413, label %.preheader.i85.preheader, label %vector.ph414

vector.ph414:                                     ; preds = %vector.memcheck402
  %i.adi = and i64 %i.acy, 7                      ; 2 uses
  %i.adj = icmp eq i64 %i.adi, 0
  %i.adk = select i1 %i.adj, i64 8, i64 %i.adi
  %n.vec415 = sub nsw i64 %i.acy, %i.adk          ; 2 uses
  %i.adl = add nsw i64 %n.vec415, %i.acu
  %i.adm = load float, ptr %i.act, align 4, !tbaa !50, !alias.scope !295 ; 2 uses
  %.scalar = fneg float %i.adm
  %i.adn = insertelement <8 x float> poison, float %.scalar, i64 0
  %i.ado = shufflevector <8 x float> %i.adn, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert432 = insertelement <8 x float> poison, float %i.adm, i64 0
  %broadcast.splat433 = shufflevector <8 x float> %broadcast.splatinsert432, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert418 = insertelement <8 x float> poison, float %i.acl, i64 0
  %broadcast.splat419 = shufflevector <8 x float> %broadcast.splatinsert418, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert420 = insertelement <8 x i64> poison, i64 %i.acu, i64 0
  %broadcast.splat421 = shufflevector <8 x i64> %broadcast.splatinsert420, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction422 = add nsw <8 x i64> %broadcast.splat421, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph414
  %index424 = phi i64 [ 0, %vector.ph414 ], [ %index.next434, %vector.body423 ]
  %vec.ind425 = phi <8 x i64> [ %induction422, %vector.ph414 ], [ %vec.ind.next435, %vector.body423 ] ; 3 uses
  %wide.gep426 = getelementptr inbounds [12 x i8], ptr %i.ach, <8 x i64> %vec.ind425 ; 2 uses
  %i.adp = extractelement <8 x ptr> %wide.gep426, i64 0
  %wide.gep427 = getelementptr inbounds [12 x i8], ptr %i.aci, <8 x i64> %vec.ind425 ; 2 uses
  %i.adq = extractelement <8 x ptr> %wide.gep427, i64 0
  %wide.vec428 = load <24 x float>, ptr %i.adp, align 4, !tbaa !50, !alias.scope !296, !noalias !297
  %strided.vec429 = shufflevector <24 x float> %wide.vec428, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.adr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ado, <8 x float> %broadcast.splat419, <8 x float> %strided.vec429)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.adr, <8 x ptr> align 4 %wide.gep426, <8 x i1> splat (i1 true)), !tbaa !50, !alias.scope !296, !noalias !297
  %wide.vec430 = load <24 x float>, ptr %i.adq, align 4, !tbaa !50, !alias.scope !298, !noalias !295
  %strided.vec431 = shufflevector <24 x float> %wide.vec430, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %i.ads = fsub <8 x float> %strided.vec431, %broadcast.splat433
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ads, <8 x ptr> align 4 %wide.gep427, <8 x i1> splat (i1 true)), !tbaa !50, !alias.scope !298, !noalias !295
  %index.next434 = add nuw i64 %index424, 8       ; 2 uses
  %vec.ind.next435 = add nsw <8 x i64> %vec.ind425, splat (i64 8)
  %i.adt = icmp eq i64 %index.next434, %n.vec415
  br i1 %i.adt, label %.preheader.i85.preheader, label %vector.body423, !llvm.loop !273

.preheader.i85.preheader:                         ; preds = %vector.body423, %vector.memcheck402, %.preheader.lr.ph.i84
  %indvars.iv10.i.ph = phi i64 [ %i.acu, %vector.memcheck402 ], [ %i.acu, %.preheader.lr.ph.i84 ], [ %i.adl, %vector.body423 ] ; 5 uses
  %i.adu = trunc i64 %indvars.iv10.i.ph to i32    ; 2 uses
  %i.adv = add i32 %i.acq, %i.adu
  %i.adw = and i32 %i.adv, 1
  %lcmp.mod479.not.not = icmp eq i32 %i.adw, 0
  br i1 %lcmp.mod479.not.not, label %.preheader.i85.prol, label %.preheader.i85.prol.loopexit

.preheader.i85.prol:                              ; preds = %.preheader.i85.preheader
  %i.adx = getelementptr inbounds [12 x i8], ptr %i.ach, i64 %indvars.iv10.i.ph ; 2 uses
  %i.ady = getelementptr inbounds [12 x i8], ptr %i.aci, i64 %indvars.iv10.i.ph ; 2 uses
  %i.adz = load float, ptr %i.act, align 4, !tbaa !50
  %i.aea = load float, ptr %i.adx, align 4, !tbaa !50
  %i.aeb = fneg float %i.adz
  %i.aec = call float @llvm.fmuladd.f32(float %i.aeb, float %i.acl, float %i.aea)
  store float %i.aec, ptr %i.adx, align 4, !tbaa !50
  %i.aed = load float, ptr %i.act, align 4, !tbaa !50
  %i.aee = load float, ptr %i.ady, align 4, !tbaa !50
  %i.aef = fsub float %i.aee, %i.aed
  store float %i.aef, ptr %i.ady, align 4, !tbaa !50
  %indvars.iv.next11.i.prol = add nsw i64 %indvars.iv10.i.ph, 1
  br label %.preheader.i85.prol.loopexit

.preheader.i85.prol.loopexit:                     ; preds = %.preheader.i85.prol, %.preheader.i85.preheader
  %indvars.iv10.i.unr = phi i64 [ %indvars.iv10.i.ph, %.preheader.i85.preheader ], [ %indvars.iv.next11.i.prol, %.preheader.i85.prol ]
  %i.aeg = icmp eq i32 %i.acq, %i.adu
  br i1 %i.aeg, label %._crit_edge8.i, label %.preheader.i85

.preheader.i85:                                   ; preds = %.preheader.i85.prol.loopexit, %.preheader.i85
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i.1, %.preheader.i85 ], [ %indvars.iv10.i.unr, %.preheader.i85.prol.loopexit ] ; 4 uses
  %i.aeh = getelementptr inbounds [12 x i8], ptr %i.ach, i64 %indvars.iv10.i ; 2 uses
  %i.aei = getelementptr inbounds [12 x i8], ptr %i.aci, i64 %indvars.iv10.i ; 2 uses
  %i.aej = load float, ptr %i.act, align 4, !tbaa !50
  %i.aek = load float, ptr %i.aeh, align 4, !tbaa !50
  %i.ael = fneg float %i.aej
  %i.aem = call float @llvm.fmuladd.f32(float %i.ael, float %i.acl, float %i.aek)
  store float %i.aem, ptr %i.aeh, align 4, !tbaa !50
  %i.aen = load float, ptr %i.act, align 4, !tbaa !50
  %i.aeo = load float, ptr %i.aei, align 4, !tbaa !50
  %i.aep = fsub float %i.aeo, %i.aen
  store float %i.aep, ptr %i.aei, align 4, !tbaa !50
  %indvars.iv.next11.i = add nsw i64 %indvars.iv10.i, 1 ; 2 uses
  %i.aeq = getelementptr inbounds [12 x i8], ptr %i.ach, i64 %indvars.iv.next11.i ; 2 uses
  %i.aer = getelementptr inbounds [12 x i8], ptr %i.aci, i64 %indvars.iv.next11.i ; 2 uses
  %i.aes = load float, ptr %i.act, align 4, !tbaa !50
  %i.aet = load float, ptr %i.aeq, align 4, !tbaa !50
  %i.aeu = fneg float %i.aes
  %i.aev = call float @llvm.fmuladd.f32(float %i.aeu, float %i.acl, float %i.aet)
  store float %i.aev, ptr %i.aeq, align 4, !tbaa !50
  %i.aew = load float, ptr %i.act, align 4, !tbaa !50
  %i.aex = load float, ptr %i.aer, align 4, !tbaa !50
  %i.aey = fsub float %i.aex, %i.aew
  store float %i.aey, ptr %i.aer, align 4, !tbaa !50
  %indvars.iv.next11.i.1 = add nsw i64 %indvars.iv10.i, 2 ; 2 uses
  %lftr.wideiv13.i.1 = trunc i64 %indvars.iv.next11.i.1 to i32
  %exitcond14.not.i.1 = icmp eq i32 %i.acv, %lftr.wideiv13.i.1
  br i1 %exitcond14.not.i.1, label %._crit_edge8.i, label %.preheader.i85, !llvm.loop !274

._crit_edge8.i:                                   ; preds = %.preheader.i85.prol.loopexit, %.preheader.i85, %bb.bq
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  br label %bb.br

bb.br:                                            ; preds = %._crit_edge8.i, %bb.bp
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bo)
  br label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit

bb.bs:                                            ; preds = %bb.bo
  br i1 %i.acn, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.aez = add nsw i32 %i.acg, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #16
  store i32 0, ptr %i.u, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #16
  store i32 %i.aez, ptr %i.v, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #16
  store i32 1, ptr %i.w, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #16
  store i32 0, ptr %i.x, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.bo, i32 34, ptr nonnull %i.x, ptr nonnull %i.u, ptr nonnull %i.v, ptr nonnull %i.w, i32 1, i32 1)
  %i.afa = load i32, ptr %i.v, align 4, !tbaa !57
  %i.afb = call i32 @llvm.smin.i32(i32 %i.afa, i32 %i.aez) ; 5 uses
  store i32 %i.afb, ptr %i.v, align 4, !tbaa !57
  %i.afc = load i32, ptr %i.u, align 4, !tbaa !57 ; 4 uses
  %.not4.i = icmp sgt i32 %i.afc, %i.afb
  br i1 %.not4.i, label %._crit_edge.i83, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.bt
  %i.afd = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !54 ; 3 uses
  %i.aff = sext i32 %i.afc to i64                 ; 5 uses
  %i.afg = add nsw i32 %i.afb, 1
  %i.afh = add i32 %i.afb, %i.afc
  %i.afi = and i32 %i.afh, 1
  %lcmp.mod476.not.not = icmp eq i32 %i.afi, 0
  br i1 %lcmp.mod476.not.not, label %.prol.loopexit474.unr-lcssa, label %.prol.loopexit474

.prol.loopexit474.unr-lcssa:                      ; preds = %.lr.ph.i78
  %i.afj = getelementptr inbounds [2 x i8], ptr %.sroa.016.0.copyload, i64 %i.aff
  %i.afk = load i16, ptr %i.afj, align 2, !tbaa !105
  %i.afl = zext i16 %i.afk to i64
  %i.afm = getelementptr inbounds nuw [12 x i8], ptr %i.afe, i64 %i.afl ; 2 uses
  %i.afn = getelementptr inbounds [12 x i8], ptr %i.ach, i64 %i.aff ; 2 uses
  %i.afo = getelementptr inbounds [12 x i8], ptr %i.aci, i64 %i.aff ; 2 uses
  %i.afp = load float, ptr %i.afm, align 4, !tbaa !50
  %i.afq = load float, ptr %i.afn, align 4, !tbaa !50
  %i.afr = fneg float %i.afp
  %i.afs = call float @llvm.fmuladd.f32(float %i.afr, float %i.acl, float %i.afq)
  store float %i.afs, ptr %i.afn, align 4, !tbaa !50
  %i.aft = load float, ptr %i.afm, align 4, !tbaa !50
  %i.afu = load float, ptr %i.afo, align 4, !tbaa !50
  %i.afv = fsub float %i.afu, %i.aft
  store float %i.afv, ptr %i.afo, align 4, !tbaa !50
  %indvars.iv.next.i80.prol = add nsw i64 %i.aff, 1
  br label %.prol.loopexit474

.prol.loopexit474:                                ; preds = %.prol.loopexit474.unr-lcssa, %.lr.ph.i78
  %indvars.iv.i79.unr = phi i64 [ %i.aff, %.lr.ph.i78 ], [ %indvars.iv.next.i80.prol, %.prol.loopexit474.unr-lcssa ]
  %i.afw = icmp eq i32 %i.afb, %i.afc
  br i1 %i.afw, label %._crit_edge.i83, label %.lr.ph.i78.new

.lr.ph.i78.new:                                   ; preds = %.prol.loopexit474, %.lr.ph.i78.new
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i80.1, %.lr.ph.i78.new ], [ %indvars.iv.i79.unr, %.prol.loopexit474 ] ; 5 uses
  %i.afx = getelementptr inbounds [2 x i8], ptr %.sroa.016.0.copyload, i64 %indvars.iv.i79
  %i.afy = load i16, ptr %i.afx, align 2, !tbaa !105
  %i.afz = zext i16 %i.afy to i64
  %i.aga = getelementptr inbounds nuw [12 x i8], ptr %i.afe, i64 %i.afz ; 2 uses
  %i.agb = getelementptr inbounds [12 x i8], ptr %i.ach, i64 %indvars.iv.i79 ; 2 uses
  %i.agc = getelementptr inbounds [12 x i8], ptr %i.aci, i64 %indvars.iv.i79 ; 2 uses
  %i.agd = load float, ptr %i.aga, align 4, !tbaa !50
  %i.age = load float, ptr %i.agb, align 4, !tbaa !50
  %i.agf = fneg float %i.agd
  %i.agg = call float @llvm.fmuladd.f32(float %i.agf, float %i.acl, float %i.age)
  store float %i.agg, ptr %i.agb, align 4, !tbaa !50
  %i.agh = load float, ptr %i.aga, align 4, !tbaa !50
  %i.agi = load float, ptr %i.agc, align 4, !tbaa !50
  %i.agj = fsub float %i.agi, %i.agh
  store float %i.agj, ptr %i.agc, align 4, !tbaa !50
  %indvars.iv.next.i80 = add nsw i64 %indvars.iv.i79, 1 ; 3 uses
  %i.agk = getelementptr inbounds [2 x i8], ptr %.sroa.016.0.copyload, i64 %indvars.iv.next.i80
  %i.agl = load i16, ptr %i.agk, align 2, !tbaa !105
  %i.agm = zext i16 %i.agl to i64
  %i.agn = getelementptr inbounds nuw [12 x i8], ptr %i.afe, i64 %i.agm ; 2 uses
  %i.ago = getelementptr inbounds [12 x i8], ptr %i.ach, i64 %indvars.iv.next.i80 ; 2 uses
  %i.agp = getelementptr inbounds [12 x i8], ptr %i.aci, i64 %indvars.iv.next.i80 ; 2 uses
  %i.agq = load float, ptr %i.agn, align 4, !tbaa !50
  %i.agr = load float, ptr %i.ago, align 4, !tbaa !50
  %i.ags = fneg float %i.agq
  %i.agt = call float @llvm.fmuladd.f32(float %i.ags, float %i.acl, float %i.agr)
  store float %i.agt, ptr %i.ago, align 4, !tbaa !50
  %i.agu = load float, ptr %i.agn, align 4, !tbaa !50
  %i.agv = load float, ptr %i.agp, align 4, !tbaa !50
  %i.agw = fsub float %i.agv, %i.agu
  store float %i.agw, ptr %i.agp, align 4, !tbaa !50
  %indvars.iv.next.i80.1 = add nsw i64 %indvars.iv.i79, 2 ; 2 uses
  %lftr.wideiv.i81.1 = trunc i64 %indvars.iv.next.i80.1 to i32
  %exitcond.not.i82.1 = icmp eq i32 %i.afg, %lftr.wideiv.i81.1
  br i1 %exitcond.not.i82.1, label %._crit_edge.i83, label %.lr.ph.i78.new

._crit_edge.i83:                                  ; preds = %.prol.loopexit474, %.lr.ph.i78.new, %bb.bt
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #16
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.i83, %bb.bs
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bo)
  br label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit

bb.bv:                                            ; preds = %bb.bn
  %i.agx = load i32, ptr %6, align 4, !tbaa !57   ; 3 uses
  %.sroa.014.0.copyload = load ptr, ptr %7, align 8 ; 2 uses
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.215.0.copyload = load ptr, ptr %.sroa.215.0..sroa_idx, align 8
  %i.agy = load ptr, ptr %3, align 8, !tbaa !109  ; 7 uses
  %i.agz = load ptr, ptr %5, align 8, !tbaa !109  ; 7 uses
  %i.aha = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ahb = load float, ptr %i.aha, align 4, !tbaa !42
  %i.ahc = fmul float %i.ahb, 5.000000e-01        ; 9 uses
  %i.ahd = icmp eq ptr %.sroa.014.0.copyload, %.sroa.215.0.copyload
  %i.ahe = icmp sgt i32 %i.agx, 0                 ; 2 uses
  br i1 %i.ahd, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.ahe, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ahf = add nsw i32 %i.agx, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store i32 0, ptr %i.i, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store i32 %i.ahf, ptr %i.j, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i32 1, ptr %i.k, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  store i32 0, ptr %i.l, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.bo, i32 34, ptr nonnull %i.l, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.k, i32 1, i32 1)
  %i.ahg = load i32, ptr %i.j, align 4, !tbaa !57
  %i.ahh = call i32 @llvm.smin.i32(i32 %i.ahg, i32 %i.ahf) ; 6 uses
  store i32 %i.ahh, ptr %i.j, align 4, !tbaa !57
  %i.ahi = load i32, ptr %i.i, align 4, !tbaa !57 ; 3 uses
  %.not488.i = icmp sgt i32 %i.ahi, %i.ahh
  br i1 %.not488.i, label %._crit_edge10.i, label %.preheader.lr.ph.i92

.preheader.lr.ph.i92:                             ; preds = %bb.bx
  %i.ahj = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !54 ; 11 uses
  %i.ahl = sext i32 %i.ahi to i64                 ; 6 uses
  %i.ahm = add nsw i32 %i.ahh, 1
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 4 ; 7 uses
  %i.aho = sub i32 %i.ahh, %i.ahi                 ; 2 uses
  %i.ahp = zext i32 %i.aho to i64                 ; 2 uses
  %i.ahq = add nuw nsw i64 %i.ahp, 1              ; 2 uses
  %min.iters.check339 = icmp ult i32 %i.aho, 8
  br i1 %min.iters.check339, label %.preheader.i93.preheader, label %vector.memcheck340

vector.memcheck340:                               ; preds = %.preheader.lr.ph.i92
  %i.ahr = mul nsw i64 %i.ahl, 12                 ; 2 uses
  %i.ahs = getelementptr i8, ptr %i.agy, i64 %i.ahr ; 2 uses
  %i.aht = add nsw i64 %i.ahl, %i.ahp
  %i.ahu = mul nsw i64 %i.aht, 12
  %i.ahv = add nsw i64 %i.ahu, 8                  ; 2 uses
  %i.ahw = getelementptr i8, ptr %i.agy, i64 %i.ahv ; 2 uses
  %i.ahx = getelementptr i8, ptr %i.agz, i64 %i.ahr ; 2 uses
  %i.ahy = getelementptr i8, ptr %i.agz, i64 %i.ahv ; 2 uses
  %i.ahz = getelementptr i8, ptr %i.ahk, i64 8    ; 2 uses
  %bound0341 = icmp ult ptr %i.ahs, %i.ahy
  %bound1342 = icmp ult ptr %i.ahx, %i.ahw
  %found.conflict343 = and i1 %bound0341, %bound1342
  %bound0344 = icmp ult ptr %i.ahs, %i.ahz
  %bound1345 = icmp ult ptr %i.ahk, %i.ahw
  %found.conflict346 = and i1 %bound0344, %bound1345
  %conflict.rdx347 = or i1 %found.conflict343, %found.conflict346
  %bound0348 = icmp ult ptr %i.ahx, %i.ahz
  %bound1349 = icmp ult ptr %i.ahk, %i.ahy
  %found.conflict350 = and i1 %bound0348, %bound1349
  %conflict.rdx351 = or i1 %conflict.rdx347, %found.conflict350
  br i1 %conflict.rdx351, label %.preheader.i93.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck340
  %i.aia = and i64 %i.ahq, 7                      ; 2 uses
  %i.aib = icmp eq i64 %i.aia, 0
  %i.aic = select i1 %i.aib, i64 8, i64 %i.aia
  %n.vec353 = sub nsw i64 %i.ahq, %i.aic          ; 2 uses
  %i.aid = add nsw i64 %n.vec353, %i.ahl
  %i.aie = load float, ptr %i.ahk, align 4, !tbaa !50, !alias.scope !299 ; 2 uses
  %.scalar438 = fneg float %i.aie
  %i.aif = insertelement <8 x float> poison, float %.scalar438, i64 0
  %i.aig = shufflevector <8 x float> %i.aif, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert374 = insertelement <8 x float> poison, float %i.aie, i64 0
  %broadcast.splat375 = shufflevector <8 x float> %broadcast.splatinsert374, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aih = load float, ptr %i.ahn, align 4, !tbaa !50, !alias.scope !299 ; 2 uses
  %.scalar439 = fneg float %i.aih
  %i.aii = insertelement <8 x float> poison, float %.scalar439, i64 0
  %i.aij = shufflevector <8 x float> %i.aii, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert378 = insertelement <8 x float> poison, float %i.aih, i64 0
  %broadcast.splat379 = shufflevector <8 x float> %broadcast.splatinsert378, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert358 = insertelement <8 x float> poison, float %i.ahc, i64 0
  %broadcast.splat359 = shufflevector <8 x float> %broadcast.splatinsert358, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert360 = insertelement <8 x i64> poison, i64 %i.ahl, i64 0
  %broadcast.splat361 = shufflevector <8 x i64> %broadcast.splatinsert360, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction362 = add nsw <8 x i64> %broadcast.splat361, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vector.body363

vector.body363:                                   ; preds = %vector.body363, %vector.ph352
  %index364 = phi i64 [ 0, %vector.ph352 ], [ %index.next380, %vector.body363 ]
  %vec.ind365 = phi <8 x i64> [ %induction362, %vector.ph352 ], [ %vec.ind.next381, %vector.body363 ] ; 3 uses
  %wide.gep366 = getelementptr inbounds [12 x i8], ptr %i.agy, <8 x i64> %vec.ind365 ; 3 uses
  %i.aik = extractelement <8 x ptr> %wide.gep366, i64 0
  %wide.gep367 = getelementptr inbounds [12 x i8], ptr %i.agz, <8 x i64> %vec.ind365 ; 3 uses
  %i.ail = extractelement <8 x ptr> %wide.gep367, i64 0
  %wide.vec368 = load <24 x float>, ptr %i.aik, align 4, !tbaa !50, !alias.scope !300, !noalias !301 ; 2 uses
  %strided.vec369 = shufflevector <24 x float> %wide.vec368, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec370 = shufflevector <24 x float> %wide.vec368, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.aim = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aig, <8 x float> %broadcast.splat359, <8 x float> %strided.vec369)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aim, <8 x ptr> align 4 %wide.gep366, <8 x i1> splat (i1 true)), !tbaa !50, !alias.scope !300, !noalias !301
  %wide.vec371 = load <24 x float>, ptr %i.ail, align 4, !tbaa !50, !alias.scope !302, !noalias !299 ; 2 uses
  %strided.vec372 = shufflevector <24 x float> %wide.vec371, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec373 = shufflevector <24 x float> %wide.vec371, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %i.ain = fsub <8 x float> %strided.vec372, %broadcast.splat375
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ain, <8 x ptr> align 4 %wide.gep367, <8 x i1> splat (i1 true)), !tbaa !50, !alias.scope !302, !noalias !299
  %wide.gep376 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep366, i64 4
  %i.aio = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.aij, <8 x float> %broadcast.splat359, <8 x float> %strided.vec370)
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aio, <8 x ptr> align 4 %wide.gep376, <8 x i1> splat (i1 true)), !tbaa !50, !alias.scope !300, !noalias !301
  %wide.gep377 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep367, i64 4
  %i.aip = fsub <8 x float> %strided.vec373, %broadcast.splat379
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.aip, <8 x ptr> align 4 %wide.gep377, <8 x i1> splat (i1 true)), !tbaa !50, !alias.scope !302, !noalias !299
  %index.next380 = add nuw i64 %index364, 8       ; 2 uses
  %vec.ind.next381 = add nsw <8 x i64> %vec.ind365, splat (i64 8)
  %i.aiq = icmp eq i64 %index.next380, %n.vec353
  br i1 %i.aiq, label %.preheader.i93.preheader, label %vector.body363, !llvm.loop !279

.preheader.i93.preheader:                         ; preds = %vector.body363, %vector.memcheck340, %.preheader.lr.ph.i92
  %indvars.iv16.i.ph = phi i64 [ %i.ahl, %vector.memcheck340 ], [ %i.ahl, %.preheader.lr.ph.i92 ], [ %i.aid, %vector.body363 ] ; 5 uses
  %i.air = trunc i64 %indvars.iv16.i.ph to i32    ; 2 uses
  %i.ais = add i32 %i.ahh, %i.air
  %i.ait = and i32 %i.ais, 1
  %lcmp.mod471.not.not = icmp eq i32 %i.ait, 0
  br i1 %lcmp.mod471.not.not, label %.preheader.i93.prol, label %.preheader.i93.prol.loopexit

.preheader.i93.prol:                              ; preds = %.preheader.i93.preheader
  %i.aiu = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %indvars.iv16.i.ph ; 3 uses
  %i.aiv = getelementptr inbounds [12 x i8], ptr %i.agz, i64 %indvars.iv16.i.ph ; 3 uses
  %i.aiw = load float, ptr %i.ahk, align 4, !tbaa !50
  %i.aix = load float, ptr %i.aiu, align 4, !tbaa !50
  %i.aiy = fneg float %i.aiw
  %i.aiz = call float @llvm.fmuladd.f32(float %i.aiy, float %i.ahc, float %i.aix)
  store float %i.aiz, ptr %i.aiu, align 4, !tbaa !50
  %i.aja = load float, ptr %i.ahk, align 4, !tbaa !50
  %i.ajb = load float, ptr %i.aiv, align 4, !tbaa !50
  %i.ajc = fsub float %i.ajb, %i.aja
  store float %i.ajc, ptr %i.aiv, align 4, !tbaa !50
  %i.ajd = load float, ptr %i.ahn, align 4, !tbaa !50
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aiu, i64 4 ; 2 uses
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !50
  %i.ajg = fneg float %i.ajd
  %i.ajh = call float @llvm.fmuladd.f32(float %i.ajg, float %i.ahc, float %i.ajf)
  store float %i.ajh, ptr %i.aje, align 4, !tbaa !50
  %i.aji = load float, ptr %i.ahn, align 4, !tbaa !50
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aiv, i64 4 ; 2 uses
  %i.ajk = load float, ptr %i.ajj, align 4, !tbaa !50
  %i.ajl = fsub float %i.ajk, %i.aji
  store float %i.ajl, ptr %i.ajj, align 4, !tbaa !50
  %indvars.iv.next17.i.prol = add nsw i64 %indvars.iv16.i.ph, 1
  br label %.preheader.i93.prol.loopexit

.preheader.i93.prol.loopexit:                     ; preds = %.preheader.i93.prol, %.preheader.i93.preheader
  %indvars.iv16.i.unr = phi i64 [ %indvars.iv16.i.ph, %.preheader.i93.preheader ], [ %indvars.iv.next17.i.prol, %.preheader.i93.prol ]
  %i.ajm = icmp eq i32 %i.ahh, %i.air
  br i1 %i.ajm, label %._crit_edge10.i, label %.preheader.i93

.preheader.i93:                                   ; preds = %.preheader.i93.prol.loopexit, %.preheader.i93
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i.1, %.preheader.i93 ], [ %indvars.iv16.i.unr, %.preheader.i93.prol.loopexit ] ; 4 uses
  %i.ajn = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %indvars.iv16.i ; 3 uses
  %i.ajo = getelementptr inbounds [12 x i8], ptr %i.agz, i64 %indvars.iv16.i ; 3 uses
  %i.ajp = load float, ptr %i.ahk, align 4, !tbaa !50
  %i.ajq = load float, ptr %i.ajn, align 4, !tbaa !50
  %i.ajr = fneg float %i.ajp
  %i.ajs = call float @llvm.fmuladd.f32(float %i.ajr, float %i.ahc, float %i.ajq)
  store float %i.ajs, ptr %i.ajn, align 4, !tbaa !50
  %i.ajt = load float, ptr %i.ahk, align 4, !tbaa !50
  %i.aju = load float, ptr %i.ajo, align 4, !tbaa !50
  %i.ajv = fsub float %i.aju, %i.ajt
  store float %i.ajv, ptr %i.ajo, align 4, !tbaa !50
  %i.ajw = load float, ptr %i.ahn, align 4, !tbaa !50
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajn, i64 4 ; 2 uses
  %i.ajy = load float, ptr %i.ajx, align 4, !tbaa !50
  %i.ajz = fneg float %i.ajw
  %i.aka = call float @llvm.fmuladd.f32(float %i.ajz, float %i.ahc, float %i.ajy)
  store float %i.aka, ptr %i.ajx, align 4, !tbaa !50
  %i.akb = load float, ptr %i.ahn, align 4, !tbaa !50
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajo, i64 4 ; 2 uses
  %i.akd = load float, ptr %i.akc, align 4, !tbaa !50
  %i.ake = fsub float %i.akd, %i.akb
  store float %i.ake, ptr %i.akc, align 4, !tbaa !50
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, 1 ; 2 uses
  %i.akf = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %indvars.iv.next17.i ; 3 uses
  %i.akg = getelementptr inbounds [12 x i8], ptr %i.agz, i64 %indvars.iv.next17.i ; 3 uses
  %i.akh = load float, ptr %i.ahk, align 4, !tbaa !50
  %i.aki = load float, ptr %i.akf, align 4, !tbaa !50
  %i.akj = fneg float %i.akh
  %i.akk = call float @llvm.fmuladd.f32(float %i.akj, float %i.ahc, float %i.aki)
  store float %i.akk, ptr %i.akf, align 4, !tbaa !50
  %i.akl = load float, ptr %i.ahk, align 4, !tbaa !50
  %i.akm = load float, ptr %i.akg, align 4, !tbaa !50
  %i.akn = fsub float %i.akm, %i.akl
  store float %i.akn, ptr %i.akg, align 4, !tbaa !50
  %i.ako = load float, ptr %i.ahn, align 4, !tbaa !50
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akf, i64 4 ; 2 uses
  %i.akq = load float, ptr %i.akp, align 4, !tbaa !50
  %i.akr = fneg float %i.ako
  %i.aks = call float @llvm.fmuladd.f32(float %i.akr, float %i.ahc, float %i.akq)
  store float %i.aks, ptr %i.akp, align 4, !tbaa !50
  %i.akt = load float, ptr %i.ahn, align 4, !tbaa !50
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akg, i64 4 ; 2 uses
  %i.akv = load float, ptr %i.aku, align 4, !tbaa !50
  %i.akw = fsub float %i.akv, %i.akt
  store float %i.akw, ptr %i.aku, align 4, !tbaa !50
  %indvars.iv.next17.i.1 = add nsw i64 %indvars.iv16.i, 2 ; 2 uses
  %lftr.wideiv19.i.1 = trunc i64 %indvars.iv.next17.i.1 to i32
  %exitcond20.not.i.1 = icmp eq i32 %i.ahm, %lftr.wideiv19.i.1
  br i1 %exitcond20.not.i.1, label %._crit_edge10.i, label %.preheader.i93, !llvm.loop !280

._crit_edge10.i:                                  ; preds = %.preheader.i93.prol.loopexit, %.preheader.i93, %bb.bx
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #16
  br label %bb.by

bb.by:                                            ; preds = %._crit_edge10.i, %bb.bw
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bo)
  br label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit

bb.bz:                                            ; preds = %bb.bv
  br i1 %i.ahe, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.akx = add nsw i32 %i.agx, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  store i32 0, ptr %i.m, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i32 %i.akx, ptr %i.n, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 1, ptr %i.o, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  store i32 0, ptr %i.p, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.bo, i32 34, ptr nonnull %i.p, ptr nonnull %i.m, ptr nonnull %i.n, ptr nonnull %i.o, i32 1, i32 1)
  %i.aky = load i32, ptr %i.n, align 4, !tbaa !57
  %i.akz = call i32 @llvm.smin.i32(i32 %i.aky, i32 %i.akx) ; 3 uses
  store i32 %i.akz, ptr %i.n, align 4, !tbaa !57
  %i.ala = load i32, ptr %i.m, align 4, !tbaa !57 ; 2 uses
  %.not5.i = icmp sgt i32 %i.ala, %i.akz
  br i1 %.not5.i, label %._crit_edge.i91, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %bb.ca
  %i.alb = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !54
  %i.ald = sext i32 %i.ala to i64
  %i.ale = add nsw i32 %i.akz, 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cb, %.lr.ph.i86
  %indvars.iv.i87 = phi i64 [ %i.ald, %.lr.ph.i86 ], [ %indvars.iv.next.i88, %bb.cb ] ; 4 uses
  %i.alf = getelementptr inbounds [2 x i8], ptr %.sroa.014.0.copyload, i64 %indvars.iv.i87
  %i.alg = load i16, ptr %i.alf, align 2, !tbaa !105
  %i.alh = zext i16 %i.alg to i64
  %i.ali = getelementptr inbounds nuw [12 x i8], ptr %i.alc, i64 %i.alh ; 3 uses
  %i.alj = getelementptr inbounds [12 x i8], ptr %i.agy, i64 %indvars.iv.i87 ; 3 uses
  %i.alk = getelementptr inbounds [12 x i8], ptr %i.agz, i64 %indvars.iv.i87 ; 3 uses
  %i.all = load float, ptr %i.ali, align 4, !tbaa !50
  %i.alm = load float, ptr %i.alj, align 4, !tbaa !50
  %i.aln = fneg float %i.all
  %i.alo = call float @llvm.fmuladd.f32(float %i.aln, float %i.ahc, float %i.alm)
  store float %i.alo, ptr %i.alj, align 4, !tbaa !50
  %i.alp = load float, ptr %i.ali, align 4, !tbaa !50
  %i.alq = load float, ptr %i.alk, align 4, !tbaa !50
  %i.alr = fsub float %i.alq, %i.alp
  store float %i.alr, ptr %i.alk, align 4, !tbaa !50
  %i.als = getelementptr inbounds nuw i8, ptr %i.ali, i64 4 ; 2 uses
  %i.alt = load float, ptr %i.als, align 4, !tbaa !50
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alj, i64 4 ; 2 uses
  %i.alv = load float, ptr %i.alu, align 4, !tbaa !50
  %i.alw = fneg float %i.alt
  %i.alx = call float @llvm.fmuladd.f32(float %i.alw, float %i.ahc, float %i.alv)
  store float %i.alx, ptr %i.alu, align 4, !tbaa !50
  %i.aly = load float, ptr %i.als, align 4, !tbaa !50
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alk, i64 4 ; 2 uses
  %i.ama = load float, ptr %i.alz, align 4, !tbaa !50
  %i.amb = fsub float %i.ama, %i.aly
  store float %i.amb, ptr %i.alz, align 4, !tbaa !50
  %indvars.iv.next.i88 = add nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %lftr.wideiv.i89 = trunc i64 %indvars.iv.next.i88 to i32
  %exitcond.not.i90 = icmp eq i32 %i.ale, %lftr.wideiv.i89
  br i1 %exitcond.not.i90, label %._crit_edge.i91, label %bb.cb

._crit_edge.i91:                                  ; preds = %bb.cb, %bb.ca
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  br label %bb.cc

bb.cc:                                            ; preds = %._crit_edge.i91, %bb.bz
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bo)
  br label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit

bb.cd:                                            ; preds = %bb.bn
  %i.amc = load i32, ptr %6, align 4, !tbaa !57   ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %7, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8
  %i.amd = load ptr, ptr %3, align 8, !tbaa !109  ; 5 uses
  %i.ame = load ptr, ptr %5, align 8, !tbaa !109  ; 5 uses
  %i.amf = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.amg = load float, ptr %i.amf, align 4, !tbaa !42
  %i.amh = fmul float %i.amg, 5.000000e-01        ; 7 uses
  %i.ami = icmp eq ptr %.sroa.0.0.copyload, %.sroa.2.0.copyload
  %i.amj = icmp sgt i32 %i.amc, 0                 ; 2 uses
  br i1 %i.ami, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.amj, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.amk = add nsw i32 %i.amc, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 %i.amk, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i32 1, ptr %i.c, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.bo, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.aml = load i32, ptr %i.b, align 4, !tbaa !57
  %i.amm = call i32 @llvm.smin.i32(i32 %i.aml, i32 %i.amk) ; 4 uses
  store i32 %i.amm, ptr %i.b, align 4, !tbaa !57
  %i.amn = load i32, ptr %i.a, align 4, !tbaa !57 ; 3 uses
  %.not488.i101 = icmp sgt i32 %i.amn, %i.amm
  br i1 %.not488.i101, label %._crit_edge10.i104, label %.preheader.lr.ph.i102

.preheader.lr.ph.i102:                            ; preds = %bb.cf
  %i.amo = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.amp = load ptr, ptr %i.amo, align 8, !tbaa !54 ; 8 uses
  %i.amq = sext i32 %i.amn to i64                 ; 6 uses
  %i.amr = add nsw i32 %i.amm, 1
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amp, i64 4 ; 3 uses
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amp, i64 8 ; 3 uses
  %i.amu = sub i32 %i.amm, %i.amn                 ; 2 uses
  %i.amv = zext i32 %i.amu to i64                 ; 2 uses
  %i.amw = add nuw nsw i64 %i.amv, 1              ; 2 uses
  %min.iters.check278 = icmp ult i32 %i.amu, 7
  br i1 %min.iters.check278, label %.preheader.i103.preheader, label %vector.memcheck279

vector.memcheck279:                               ; preds = %.preheader.lr.ph.i102
  %i.amx = mul nsw i64 %i.amq, 12                 ; 2 uses
  %i.amy = getelementptr i8, ptr %i.amd, i64 %i.amx ; 2 uses
  %i.amz = add nsw i64 %i.amq, %i.amv
  %i.ana = mul nsw i64 %i.amz, 12
  %i.anb = add nsw i64 %i.ana, 12                 ; 2 uses
  %i.anc = getelementptr i8, ptr %i.amd, i64 %i.anb ; 2 uses
  %i.and = getelementptr i8, ptr %i.ame, i64 %i.amx ; 2 uses
  %i.ane = getelementptr i8, ptr %i.ame, i64 %i.anb ; 2 uses
  %i.anf = getelementptr i8, ptr %i.amp, i64 12   ; 2 uses
  %bound0280 = icmp ult ptr %i.amy, %i.ane
  %bound1281 = icmp ult ptr %i.and, %i.anc
  %found.conflict282 = and i1 %bound0280, %bound1281
  %bound0283 = icmp ult ptr %i.amy, %i.anf
  %bound1284 = icmp ult ptr %i.amp, %i.anc
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx = or i1 %found.conflict282, %found.conflict285
  %bound0286 = icmp ult ptr %i.and, %i.anf
  %bound1287 = icmp ult ptr %i.amp, %i.ane
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx, %found.conflict288
  br i1 %conflict.rdx289, label %.preheader.i103.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck279
  %n.vec291 = and i64 %i.amw, 8589934584          ; 3 uses
  %i.ang = add nsw i64 %n.vec291, %i.amq
  %i.anh = load float, ptr %i.amp, align 4, !tbaa !50, !alias.scope !303 ; 2 uses
  %.scalar440 = fneg float %i.anh
  %i.ani = insertelement <8 x float> poison, float %.scalar440, i64 0
  %i.anj = shufflevector <8 x float> %i.ani, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert310 = insertelement <8 x float> poison, float %i.anh, i64 0
  %i.ank = load float, ptr %i.ams, align 4, !tbaa !50, !alias.scope !303 ; 2 uses
  %.scalar441 = fneg float %i.ank
  %i.anl = insertelement <8 x float> poison, float %.scalar441, i64 0
  %i.anm = shufflevector <8 x float> %i.anl, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert312 = insertelement <8 x float> poison, float %i.ank, i64 0
  %i.ann = load float, ptr %i.amt, align 4, !tbaa !50, !alias.scope !303 ; 2 uses
  %.scalar442 = fneg float %i.ann
  %i.ano = insertelement <8 x float> poison, float %.scalar442, i64 0
  %i.anp = shufflevector <8 x float> %i.ano, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert315 = insertelement <8 x float> poison, float %i.ann, i64 0
  %broadcast.splatinsert298 = insertelement <8 x float> poison, float %i.amh, i64 0
  %broadcast.splat299 = shufflevector <8 x float> %broadcast.splatinsert298, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %8 = shufflevector <8 x float> %broadcast.splatinsert310, <8 x float> %broadcast.splatinsert312, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8>
  %9 = shufflevector <8 x float> %broadcast.splatinsert315, <8 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %vector.body300

vector.body300:                                   ; preds = %vector.body300, %vector.ph290
  %index301 = phi i64 [ 0, %vector.ph290 ], [ %index.next318, %vector.body300 ] ; 2 uses
  %i.anq = add i64 %index301, %i.amq              ; 2 uses
  %i.anr = getelementptr inbounds [12 x i8], ptr %i.amd, i64 %i.anq ; 2 uses
  %i.ans = getelementptr inbounds [12 x i8], ptr %i.ame, i64 %i.anq ; 2 uses
  %wide.vec302 = load <24 x float>, ptr %i.anr, align 4, !tbaa !50, !alias.scope !304, !noalias !305 ; 3 uses
  %strided.vec303 = shufflevector <24 x float> %wide.vec302, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec304 = shufflevector <24 x float> %wide.vec302, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec305 = shufflevector <24 x float> %wide.vec302, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ant = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anj, <8 x float> %broadcast.splat299, <8 x float> %strided.vec303)
  %wide.vec306 = load <24 x float>, ptr %i.ans, align 4, !tbaa !50, !alias.scope !306, !noalias !303 ; 2 uses
  %i.anu = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anm, <8 x float> %broadcast.splat299, <8 x float> %strided.vec304)
  %i.anv = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.anp, <8 x float> %broadcast.splat299, <8 x float> %strided.vec305)
  %i.anw = shufflevector <8 x float> %i.ant, <8 x float> %i.anu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.anx = shufflevector <8 x float> %i.anv, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec314 = shufflevector <16 x float> %i.anw, <16 x float> %i.anx, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec314, ptr %i.anr, align 4, !tbaa !50, !alias.scope !304, !noalias !305
  %10 = shufflevector <24 x float> %wide.vec306, <24 x float> poison, <16 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21, i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %11 = fsub <16 x float> %10, %8
  %12 = shufflevector <24 x float> %wide.vec306, <24 x float> poison, <16 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = fsub <16 x float> %12, %9
  %interleaved.vec317 = shufflevector <16 x float> %11, <16 x float> %13, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec317, ptr %i.ans, align 4, !tbaa !50, !alias.scope !306, !noalias !303
  %index.next318 = add nuw i64 %index301, 8       ; 2 uses
  %i.any = icmp eq i64 %index.next318, %n.vec291
  br i1 %i.any, label %middle.block319, label %vector.body300, !llvm.loop !285

middle.block319:                                  ; preds = %vector.body300
  %cmp.n320 = icmp eq i64 %i.amw, %n.vec291
  br i1 %cmp.n320, label %._crit_edge10.i104, label %.preheader.i103.preheader

.preheader.i103.preheader:                        ; preds = %vector.memcheck279, %.preheader.lr.ph.i102, %middle.block319
  %indvars.iv17.i.ph = phi i64 [ %i.amq, %vector.memcheck279 ], [ %i.amq, %.preheader.lr.ph.i102 ], [ %i.ang, %middle.block319 ]
  br label %.preheader.i103

.preheader.i103:                                  ; preds = %.preheader.i103.preheader, %.preheader.i103
  %indvars.iv17.i = phi i64 [ %indvars.iv.next18.i, %.preheader.i103 ], [ %indvars.iv17.i.ph, %.preheader.i103.preheader ] ; 3 uses
  %i.anz = getelementptr inbounds [12 x i8], ptr %i.amd, i64 %indvars.iv17.i ; 4 uses
  %i.aoa = getelementptr inbounds [12 x i8], ptr %i.ame, i64 %indvars.iv17.i ; 4 uses
  %i.aob = load float, ptr %i.amp, align 4, !tbaa !50
  %i.aoc = load float, ptr %i.anz, align 4, !tbaa !50
  %i.aod = fneg float %i.aob
  %i.aoe = call float @llvm.fmuladd.f32(float %i.aod, float %i.amh, float %i.aoc)
  store float %i.aoe, ptr %i.anz, align 4, !tbaa !50
  %i.aof = load float, ptr %i.amp, align 4, !tbaa !50
  %i.aog = load float, ptr %i.aoa, align 4, !tbaa !50
  %i.aoh = fsub float %i.aog, %i.aof
  store float %i.aoh, ptr %i.aoa, align 4, !tbaa !50
  %i.aoi = load float, ptr %i.ams, align 4, !tbaa !50
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anz, i64 4 ; 2 uses
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !50
  %i.aol = fneg float %i.aoi
  %i.aom = call float @llvm.fmuladd.f32(float %i.aol, float %i.amh, float %i.aok)
  store float %i.aom, ptr %i.aoj, align 4, !tbaa !50
  %i.aon = load float, ptr %i.ams, align 4, !tbaa !50
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aoa, i64 4 ; 2 uses
  %i.aop = load float, ptr %i.aoo, align 4, !tbaa !50
  %i.aoq = fsub float %i.aop, %i.aon
  store float %i.aoq, ptr %i.aoo, align 4, !tbaa !50
  %i.aor = load float, ptr %i.amt, align 4, !tbaa !50
  %i.aos = getelementptr inbounds nuw i8, ptr %i.anz, i64 8 ; 2 uses
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !50
  %i.aou = fneg float %i.aor
  %i.aov = call float @llvm.fmuladd.f32(float %i.aou, float %i.amh, float %i.aot)
  store float %i.aov, ptr %i.aos, align 4, !tbaa !50
  %i.aow = load float, ptr %i.amt, align 4, !tbaa !50
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8 ; 2 uses
  %i.aoy = load float, ptr %i.aox, align 4, !tbaa !50
  %i.aoz = fsub float %i.aoy, %i.aow
  store float %i.aoz, ptr %i.aox, align 4, !tbaa !50
  %indvars.iv.next18.i = add nsw i64 %indvars.iv17.i, 1 ; 2 uses
  %lftr.wideiv20.i = trunc i64 %indvars.iv.next18.i to i32
  %exitcond21.not.i = icmp eq i32 %i.amr, %lftr.wideiv20.i
  br i1 %exitcond21.not.i, label %._crit_edge10.i104, label %.preheader.i103, !llvm.loop !286

._crit_edge10.i104:                               ; preds = %.preheader.i103, %middle.block319, %bb.cf
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.cg

bb.cg:                                            ; preds = %._crit_edge10.i104, %bb.ce
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bo)
  br label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit

bb.ch:                                            ; preds = %bb.cd
  br i1 %i.amj, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.apa = add nsw i32 %i.amc, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store i32 0, ptr %i.e, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store i32 %i.apa, ptr %i.f, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  store i32 1, ptr %i.g, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store i32 0, ptr %i.h, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.bo, i32 34, ptr nonnull %i.h, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %i.g, i32 1, i32 1)
  %i.apb = load i32, ptr %i.f, align 4, !tbaa !57
  %i.apc = call i32 @llvm.smin.i32(i32 %i.apb, i32 %i.apa) ; 3 uses
  store i32 %i.apc, ptr %i.f, align 4, !tbaa !57
  %i.apd = load i32, ptr %i.e, align 4, !tbaa !57 ; 2 uses
  %.not5.i94 = icmp sgt i32 %i.apd, %i.apc
  br i1 %.not5.i94, label %._crit_edge.i100, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.ci
  %i.ape = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !54
  %i.apg = sext i32 %i.apd to i64
  %i.aph = add nsw i32 %i.apc, 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cj, %.lr.ph.i95
  %indvars.iv.i96 = phi i64 [ %i.apg, %.lr.ph.i95 ], [ %indvars.iv.next.i97, %bb.cj ] ; 4 uses
  %i.api = getelementptr inbounds [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv.i96
  %i.apj = load i16, ptr %i.api, align 2, !tbaa !105
  %i.apk = zext i16 %i.apj to i64
  %i.apl = getelementptr inbounds nuw [12 x i8], ptr %i.apf, i64 %i.apk ; 4 uses
  %i.apm = getelementptr inbounds [12 x i8], ptr %i.amd, i64 %indvars.iv.i96 ; 4 uses
  %i.apn = getelementptr inbounds [12 x i8], ptr %i.ame, i64 %indvars.iv.i96 ; 4 uses
  %i.apo = load float, ptr %i.apl, align 4, !tbaa !50
  %i.app = load float, ptr %i.apm, align 4, !tbaa !50
  %i.apq = fneg float %i.apo
  %i.apr = call float @llvm.fmuladd.f32(float %i.apq, float %i.amh, float %i.app)
  store float %i.apr, ptr %i.apm, align 4, !tbaa !50
  %i.aps = load float, ptr %i.apl, align 4, !tbaa !50
  %i.apt = load float, ptr %i.apn, align 4, !tbaa !50
  %i.apu = fsub float %i.apt, %i.aps
  store float %i.apu, ptr %i.apn, align 4, !tbaa !50
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apl, i64 4 ; 2 uses
  %i.apw = load float, ptr %i.apv, align 4, !tbaa !50
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apm, i64 4 ; 2 uses
  %i.apy = load float, ptr %i.apx, align 4, !tbaa !50
  %i.apz = fneg float %i.apw
  %i.aqa = call float @llvm.fmuladd.f32(float %i.apz, float %i.amh, float %i.apy)
  store float %i.aqa, ptr %i.apx, align 4, !tbaa !50
  %i.aqb = load float, ptr %i.apv, align 4, !tbaa !50
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apn, i64 4 ; 2 uses
  %i.aqd = load float, ptr %i.aqc, align 4, !tbaa !50
  %i.aqe = fsub float %i.aqd, %i.aqb
  store float %i.aqe, ptr %i.aqc, align 4, !tbaa !50
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.apl, i64 8 ; 2 uses
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !50
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.apm, i64 8 ; 2 uses
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !50
  %i.aqj = fneg float %i.aqg
  %i.aqk = call float @llvm.fmuladd.f32(float %i.aqj, float %i.amh, float %i.aqi)
  store float %i.aqk, ptr %i.aqh, align 4, !tbaa !50
  %i.aql = load float, ptr %i.aqf, align 4, !tbaa !50
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.apn, i64 8 ; 2 uses
  %i.aqn = load float, ptr %i.aqm, align 4, !tbaa !50
  %i.aqo = fsub float %i.aqn, %i.aql
  store float %i.aqo, ptr %i.aqm, align 4, !tbaa !50
  %indvars.iv.next.i97 = add nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %lftr.wideiv.i98 = trunc i64 %indvars.iv.next.i97 to i32
  %exitcond.not.i99 = icmp eq i32 %i.aph, %lftr.wideiv.i98
  br i1 %exitcond.not.i99, label %._crit_edge.i100, label %bb.cj

._crit_edge.i100:                                 ; preds = %bb.cj, %bb.ci
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %bb.ck

bb.ck:                                            ; preds = %._crit_edge.i100, %bb.ch
  call void @__kmpc_barrier(ptr nonnull @2, i32 %i.bo)
  br label %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit

_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit: ; preds = %bb.ck, %bb.cg, %bb.cc, %bb.by, %bb.bu, %bb.br, %bb.bm, %bb.bj, %bb.bf, %bb.ao, %bb.al, %bb.ah, %bb.o, %bb.l, %bb.h, %bb.bn, %bb.c
  %i.aqp = load i32, ptr %i.bm, align 4, !tbaa !40
  %i.aqq = icmp eq i32 %i.aqp, 1
  br i1 %i.aqq, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %_ZL21doStopComMotionLinearILi1EEvRK9t_mdatomsN3gmx8ArrayRefINS3_11BasicVectorIfEEEERK5t_vcm.exit
  %i.aqr = load i32, ptr %6, align 4, !tbaa !57   ; 2 uses
  %i.aqs = icmp sgt i32 %i.aqr, 0
  %.pre = load i32, ptr %0, align 4, !tbaa !57    ; 3 uses
  br i1 %i.aqs, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl
  %i.aqt = add nsw i32 %i.aqr, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi) #16
  store i32 0, ptr %i.bi, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj) #16
  store i32 %i.aqt, ptr %i.bj, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk) #16
  store i32 1, ptr %i.bk, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl) #16
  store i32 0, ptr %i.bl, align 4, !tbaa !57
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %.pre, i32 34, ptr nonnull %i.bl, ptr nonnull %i.bi, ptr nonnull %i.bj, ptr nonnull %i.bk, i32 1, i32 1)
  %i.aqu = load i32, ptr %i.bj, align 4, !tbaa !57
  %i.aqv = call i32 @llvm.smin.i32(i32 %i.aqu, i32 %i.aqt) ; 3 uses
  store i32 %i.aqv, ptr %i.bj, align 4, !tbaa !57
  %i.aqw = load i32, ptr %i.bi, align 4, !tbaa !57 ; 2 uses
  %.not131 = icmp sgt i32 %i.aqw, %i.aqv
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.cm
  %i.aqx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !54
  %i.ara = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !54
  %i.arc = sext i32 %i.aqw to i64
  %i.ard = add nsw i32 %i.aqv, 1
  br label %bb.cn

bb.cn:                                            ; preds = %.lr.ph, %bb.cp
  %indvars.iv = phi i64 [ %i.arc, %.lr.ph ], [ %indvars.iv.next, %bb.cp ] ; 4 uses
  %.0133 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.cp ]
  %.sroa.01.0.copyload.i105 = load ptr, ptr %7, align 8 ; 2 uses
  %.sroa.0.0.copyload.i106 = load ptr, ptr %i.aqx, align 8
  %i.are = icmp eq ptr %.sroa.01.0.copyload.i105, %.sroa.0.0.copyload.i106
  br i1 %i.are, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.arf = getelementptr inbounds [2 x i8], ptr %.sroa.01.0.copyload.i105, i64 %indvars.iv
end_hunk_0
