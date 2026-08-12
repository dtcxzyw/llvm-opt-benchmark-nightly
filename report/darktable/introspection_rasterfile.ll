inline.NumInlined: 32
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
begin_hunk_0_@process:bb.a
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1.i.i = phi nsz float [ %.0..i.i, %bb.ah ], [ %.0.i.i, %bb.ag ] ; 3 uses
  br i1 %.not177.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.idx178.i.i = mul i64 %.0149199.i.i, 12
  %i.ajp = getelementptr i8, ptr %i.ahk, i64 %.idx178.i.i
  %i.ajq = getelementptr i8, ptr %i.ajp, i64 8
  %i.ajr = load float, ptr %i.ajq, align 4, !tbaa !13 ; 2 uses
  %i.ajs = fcmp reassoc nsz arcp contract afn ogt float %.1.i.i, %i.ajr
  %.1..i.i = select reassoc nsz arcp contract afn i1 %i.ajs, float %.1.i.i, float %i.ajr
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.i.i = phi nsz float [ %.1..i.i, %bb.aj ], [ %.1.i.i, %bb.ai ] ; 3 uses
  %i.ajt = fcmp reassoc nsz arcp contract afn oge float %.2.i.i, 0.000000e+00
  %i.aju = fcmp reassoc nsz arcp contract afn ole float %.2.i.i, 1.000000e+00
  %i.ajv = select reassoc nsz arcp contract afn i1 %i.aju, float %.2.i.i, float 1.000000e+00
  %i.ajw = select reassoc nsz arcp contract afn i1 %i.ajt, float %i.ajv, float 0.000000e+00
  %i.ajx = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %.0149199.i.i
  store float %i.ajw, ptr %i.ajx, align 4, !tbaa !13
  %i.ajy = add nuw i64 %.0149199.i.i, 1           ; 2 uses
  %exitcond218.not.i.i = icmp eq i64 %i.ajy, %i.ahy
  br i1 %exitcond218.not.i.i, label %._crit_edge.i.i, label %scalar.ph283, !llvm.loop !176

bb.al:                                            ; preds = %._crit_edge.i.i, %bb.ae
  %.sink.i.i = phi ptr [ %i.ahk, %._crit_edge.i.i ], [ %i.ahr, %bb.ae ]
  %.3.i.i = phi ptr [ %i.ahr, %._crit_edge.i.i ], [ null, %bb.ae ]
  call void @free(ptr noundef %.sink.i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_read_rasterfile.exit.i

_read_rasterfile.exit.i:                          ; preds = %bb.al, %bb.ad, %bb.j
  %.5.i.i = phi ptr [ %.3.i.i, %bb.al ], [ null, %bb.j ], [ %.2152.i.i, %bb.ad ]
  store volatile ptr %.5.i.i, ptr %i.dl, align 8, !tbaa !75
  %i.ajz = load volatile ptr, ptr %i.dl, align 8, !tbaa !75
  %.not54.i = icmp eq ptr %i.ajz, null
  %i.aka = select i1 %.not54.i, i64 0, i64 %i.di
  store volatile i64 %i.aka, ptr %i.dj, align 8, !tbaa !73
  %i.akb = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !78
  %i.akc = and i32 %i.akb, 33554432
  %.not55.i = icmp eq i32 %i.akc, 0
  br i1 %.not55.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_read_rasterfile.exit.i
  %i.akd = load volatile ptr, ptr %i.dl, align 8, !tbaa !75
  %i.ake = load i32, ptr %i.do, align 8, !tbaa !77
  %i.akf = load i32, ptr %i.dn, align 4, !tbaa !76
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.35, ptr noundef %i.akd, i32 noundef %i.ake, i32 noundef %i.akf) #22
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %_read_rasterfile.exit.i, %_get_cache_hash.exit.i
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 3 uses
  %i.akh = load volatile ptr, ptr %i.akg, align 8, !tbaa !75
  %.not56.i = icmp eq ptr %i.akh, null
  br i1 %.not56.i, label %_get_rasterfile_mask.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.akj = load i32, ptr %i.aki, align 8, !tbaa !77
  %i.akk = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !177 ; 2 uses
  %.not57.i = icmp eq i32 %i.akj, %i.akl
  br i1 %.not57.i, label %bb.ap, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.ao
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !178
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.akm = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.akn = load i32, ptr %i.akm, align 4, !tbaa !76
  %i.ako = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !178 ; 2 uses
  %.not63.i = icmp eq i32 %i.akn, %i.akp
  br i1 %.not63.i, label %.thread93.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %..thread_crit_edge.i
  %i.akq = phi i32 [ %.pre.i, %..thread_crit_edge.i ], [ %i.akp, %bb.ap ]
  %i.akr = sext i32 %i.akl to i64
  %i.aks = sext i32 %i.akq to i64
  %i.akt = shl nsw i64 %i.akr, 2
  %i.aku = mul i64 %i.akt, %i.aks
  %i.akv = call ptr @dt_alloc_aligned(i64 noundef %i.aku) #22 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.akv, i64 64) ]
  %.not58.i = icmp eq ptr %i.akv, null
  br i1 %.not58.i, label %_get_rasterfile_mask.exit, label %bb.ar

.thread93.i:                                      ; preds = %bb.ap
  %i.akw = load volatile ptr, ptr %i.akg, align 8, !tbaa !75 ; 2 uses
  %.not5894.i = icmp eq ptr %i.akw, null
  br i1 %.not5894.i, label %_get_rasterfile_mask.exit, label %interpolate_bilinear.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.akx = load volatile ptr, ptr %i.akg, align 8, !tbaa !75 ; 2 uses
  %i.aky = load i32, ptr %i.aki, align 8, !tbaa !77
  %i.akz = sext i32 %i.aky to i64                 ; 7 uses
  %i.ala = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.alb = load i32, ptr %i.ala, align 4, !tbaa !76
  %i.alc = sext i32 %i.alb to i64                 ; 4 uses
  %i.ald = load i32, ptr %i.akk, align 4, !tbaa !177 ; 3 uses
  %i.ale = sext i32 %i.ald to i64                 ; 5 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !178 ; 2 uses
  %i.alh = sext i32 %i.alg to i64                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %.not.i.i = icmp eq i32 %i.alg, 0
  br i1 %.not.i.i, label %interpolate_bilinear.exit.i, label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %bb.ar
  %.not90.i.i = icmp eq i32 %i.ald, 0
  %i.ali = add nsw i64 %i.akz, -1                 ; 3 uses
  %i.alj = add nsw i64 %i.alc, -1                 ; 2 uses
  br i1 %.not90.i.i, label %interpolate_bilinear.exit.i, label %.preheader.lr.ph.split.i.i

.preheader.lr.ph.split.i.i:                       ; preds = %.preheader.lr.ph.i.i
  %i.alk = uitofp reassoc nsz arcp contract afn i64 %i.akz to float ; 2 uses
  %i.all = uitofp reassoc nsz arcp contract afn i64 %i.ale to float ; 2 uses
  %i.alm = uitofp reassoc nsz arcp contract afn i64 %i.alh to float
  %i.aln = uitofp reassoc nsz arcp contract afn i64 %i.alc to float
  %i.alo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.alm
  %min.iters.check306 = icmp ult i32 %i.ald, 8
  %n.vec308 = and i64 %i.ale, -8                  ; 3 uses
  %broadcast.splatinsert311 = insertelement <8 x float> poison, float %i.alk, i64 0
  %broadcast.splat312 = shufflevector <8 x float> %broadcast.splatinsert311, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert313 = insertelement <8 x float> poison, float %i.all, i64 0
  %broadcast.splat314 = shufflevector <8 x float> %broadcast.splatinsert313, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert315 = insertelement <8 x i64> poison, i64 %i.akz, i64 0
  %broadcast.splat316 = shufflevector <8 x i64> %broadcast.splatinsert315, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert317 = insertelement <8 x i64> poison, i64 %i.ali, i64 0
  %broadcast.splat318 = shufflevector <8 x i64> %broadcast.splatinsert317, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.alp = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat314
  %cmp.n333 = icmp eq i64 %n.vec308, %i.ale
  %i.alq = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.all
  br label %.preheader.i60.i

.preheader.i60.i:                                 ; preds = %._crit_edge.i62.i, %.preheader.lr.ph.split.i.i
  %.08388.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i ], [ %i.anf, %._crit_edge.i62.i ] ; 3 uses
  %i.alr = uitofp reassoc nsz arcp contract afn i64 %.08388.i.i to float
  %i.als = fmul reassoc nnan nsz arcp contract afn float %i.aln, %i.alr
  %i.alt = fmul reassoc nsz arcp contract afn float %i.als, %i.alo ; 2 uses
  %i.alu = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.alt)
  %i.alv = fptoui float %i.alu to i64             ; 3 uses
  %i.alw = add i64 %i.alv, 1                      ; 2 uses
  %i.alx = icmp ugt i64 %i.alc, %i.alv
  %i.aly = select i1 %i.alx, i64 %i.alv, i64 %i.alj
  %i.alz = icmp ult i64 %i.alw, %i.alc
  %i.ama = select i1 %i.alz, i64 %i.alw, i64 %i.alj ; 2 uses
  %i.amb = mul i64 %i.aly, %i.akz
  %i.amc = mul i64 %i.ama, %i.akz
  %i.amd = getelementptr [4 x i8], ptr %i.akx, i64 %i.amb ; 4 uses
  %i.ame = getelementptr [4 x i8], ptr %i.akx, i64 %i.amc ; 4 uses
  %i.amf = uitofp reassoc nsz arcp contract afn i64 %i.ama to float
  %i.amg = fsub reassoc nsz arcp contract afn float %i.amf, %i.alt ; 2 uses
  %i.amh = mul i64 %.08388.i.i, %i.ale
  %i.ami = getelementptr [4 x i8], ptr %i.akv, i64 %i.amh ; 2 uses
  br i1 %min.iters.check306, label %scalar.ph305.preheader, label %vector.ph307

vector.ph307:                                     ; preds = %.preheader.i60.i
  %broadcast.splatinsert309 = insertelement <8 x float> poison, float %i.amg, i64 0
  %broadcast.splat310 = shufflevector <8 x float> %broadcast.splatinsert309, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body319

vector.body319:                                   ; preds = %vector.body319, %vector.ph307
  %index320 = phi i64 [ 0, %vector.ph307 ], [ %index.next330, %vector.body319 ] ; 2 uses
  %vec.ind321 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph307 ], [ %vec.ind.next331, %vector.body319 ] ; 2 uses
  %i.amj = uitofp <8 x i64> %vec.ind321 to <8 x float>
  %i.amk = fmul reassoc nnan nsz arcp contract afn <8 x float> %broadcast.splat312, %i.amj
  %i.aml = fmul reassoc nsz arcp contract afn <8 x float> %i.amk, %i.alp ; 2 uses
  %i.amm = call reassoc nsz arcp contract afn <8 x float> @llvm.floor.v8f32(<8 x float> %i.aml)
  %i.amn = fptoui <8 x float> %i.amm to <8 x i64> ; 3 uses
  %i.amo = add <8 x i64> %i.amn, splat (i64 1)    ; 2 uses
  %i.amp = icmp ugt <8 x i64> %broadcast.splat316, %i.amn
  %i.amq = select <8 x i1> %i.amp, <8 x i64> %i.amn, <8 x i64> %broadcast.splat318 ; 2 uses
  %i.amr = icmp ult <8 x i64> %i.amo, %broadcast.splat316
  %i.ams = select <8 x i1> %i.amr, <8 x i64> %i.amo, <8 x i64> %broadcast.splat318 ; 3 uses
  %wide.gep322 = getelementptr [4 x i8], ptr %i.amd, <8 x i64> %i.amq
  %wide.gep323 = getelementptr [4 x i8], ptr %i.amd, <8 x i64> %i.ams
  %wide.gep324 = getelementptr [4 x i8], ptr %i.ame, <8 x i64> %i.ams
  %wide.gep325 = getelementptr [4 x i8], ptr %i.ame, <8 x i64> %i.amq
  %i.amt = uitofp <8 x i64> %i.ams to <8 x float>
  %i.amu = fsub reassoc nsz arcp contract afn <8 x float> %i.amt, %i.aml ; 3 uses
  %i.amv = fsub reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %i.amu ; 2 uses
  %i.amw = getelementptr [4 x i8], ptr %i.ami, i64 %index320
  %wide.masked.gather326 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep325, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !179, !noalias !182
  %i.amx = fmul reassoc nsz arcp contract afn <8 x float> %i.amu, %wide.masked.gather326
  %wide.masked.gather327 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep324, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !179, !noalias !182
  %i.amy = fmul reassoc nsz arcp contract afn <8 x float> %i.amv, %wide.masked.gather327
  %i.amz = fadd reassoc nsz arcp contract afn <8 x float> %i.amy, %i.amx ; 2 uses
  %wide.masked.gather328 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep322, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !179, !noalias !182
  %i.ana = fmul reassoc nsz arcp contract afn <8 x float> %i.amu, %wide.masked.gather328
  %wide.masked.gather329 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep323, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !13, !alias.scope !179, !noalias !182
  %i.anb = fmul reassoc nsz arcp contract afn <8 x float> %i.amv, %wide.masked.gather329
  %7 = fsub reassoc nsz arcp contract afn <8 x float> %i.ana, %i.amz
  %8 = fadd reassoc nsz arcp contract afn <8 x float> %7, %i.anb
  %i.anc = fmul reassoc nsz arcp contract afn <8 x float> %8, %broadcast.splat310
  %i.and = fadd reassoc nsz arcp contract afn <8 x float> %i.anc, %i.amz
  store <8 x float> %i.and, ptr %i.amw, align 4, !tbaa !13, !alias.scope !182, !noalias !179
  %index.next330 = add nuw i64 %index320, 8       ; 2 uses
  %vec.ind.next331 = add nuw <8 x i64> %vec.ind321, splat (i64 8)
  %i.ane = icmp eq i64 %index.next330, %n.vec308
  br i1 %i.ane, label %middle.block332, label %vector.body319, !llvm.loop !184

middle.block332:                                  ; preds = %vector.body319
  br i1 %cmp.n333, label %._crit_edge.i62.i, label %scalar.ph305.preheader

scalar.ph305.preheader:                           ; preds = %.preheader.i60.i, %middle.block332
  %.08487.i.i.ph = phi i64 [ 0, %.preheader.i60.i ], [ %n.vec308, %middle.block332 ]
  br label %scalar.ph305

._crit_edge.i62.i:                                ; preds = %scalar.ph305, %middle.block332
  %i.anf = add nuw i64 %.08388.i.i, 1             ; 2 uses
  %exitcond91.not.i.i = icmp eq i64 %i.anf, %i.alh
  br i1 %exitcond91.not.i.i, label %interpolate_bilinear.exit.i, label %.preheader.i60.i

scalar.ph305:                                     ; preds = %scalar.ph305.preheader, %scalar.ph305
  %.08487.i.i = phi i64 [ %i.aoj, %scalar.ph305 ], [ %.08487.i.i.ph, %scalar.ph305.preheader ] ; 3 uses
  %i.ang = uitofp reassoc nsz arcp contract afn i64 %.08487.i.i to float
  %i.anh = fmul reassoc nnan nsz arcp contract afn float %i.alk, %i.ang
  %i.ani = fmul reassoc nsz arcp contract afn float %i.anh, %i.alq ; 2 uses
  %i.anj = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.ani)
  %i.ank = fptoui float %i.anj to i64             ; 3 uses
  %i.anl = add i64 %i.ank, 1                      ; 2 uses
  %i.anm = icmp ugt i64 %i.akz, %i.ank
  %i.ann = select i1 %i.anm, i64 %i.ank, i64 %i.ali ; 2 uses
  %i.ano = icmp ult i64 %i.anl, %i.akz
  %i.anp = select i1 %i.ano, i64 %i.anl, i64 %i.ali ; 3 uses
  %i.anq = getelementptr [4 x i8], ptr %i.amd, i64 %i.ann
  %i.anr = getelementptr [4 x i8], ptr %i.amd, i64 %i.anp
  %i.ans = getelementptr [4 x i8], ptr %i.ame, i64 %i.anp
  %i.ant = getelementptr [4 x i8], ptr %i.ame, i64 %i.ann
  %i.anu = uitofp reassoc nsz arcp contract afn i64 %i.anp to float
  %i.anv = fsub reassoc nsz arcp contract afn float %i.anu, %i.ani ; 3 uses
  %i.anw = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.anv ; 2 uses
  %i.anx = getelementptr [4 x i8], ptr %i.ami, i64 %.08487.i.i
  %i.any = load float, ptr %i.ant, align 4, !tbaa !13, !alias.scope !179, !noalias !182
  %i.anz = fmul reassoc nsz arcp contract afn float %i.anv, %i.any
  %i.aoa = load float, ptr %i.ans, align 4, !tbaa !13, !alias.scope !179, !noalias !182
  %i.aob = fmul reassoc nsz arcp contract afn float %i.anw, %i.aoa
  %i.aoc = fadd reassoc nsz arcp contract afn float %i.aob, %i.anz ; 2 uses
  %i.aod = load float, ptr %i.anq, align 4, !tbaa !13, !alias.scope !179, !noalias !182
  %i.aoe = fmul reassoc nsz arcp contract afn float %i.anv, %i.aod
  %i.aof = load float, ptr %i.anr, align 4, !tbaa !13, !alias.scope !179, !noalias !182
  %i.aog = fmul reassoc nsz arcp contract afn float %i.anw, %i.aof
  %9 = fsub reassoc nsz arcp contract afn float %i.aoe, %i.aoc
  %10 = fadd reassoc nsz arcp contract afn float %9, %i.aog
  %i.aoh = fmul reassoc nsz arcp contract afn float %10, %i.amg
  %i.aoi = fadd reassoc nsz arcp contract afn float %i.aoh, %i.aoc
  store float %i.aoi, ptr %i.anx, align 4, !tbaa !13, !alias.scope !182, !noalias !179
  %i.aoj = add nuw i64 %.08487.i.i, 1             ; 2 uses
  %exitcond.not.i61.i = icmp eq i64 %i.aoj, %i.ale
  br i1 %exitcond.not.i61.i, label %._crit_edge.i62.i, label %scalar.ph305, !llvm.loop !185

interpolate_bilinear.exit.i:                      ; preds = %._crit_edge.i62.i, %.preheader.lr.ph.i.i, %bb.ar, %.thread93.i
  %i.aok = phi i1 [ false, %.thread93.i ], [ true, %bb.ar ], [ true, %.preheader.lr.ph.i.i ], [ true, %._crit_edge.i62.i ]
  %i.aol = phi ptr [ %i.akw, %.thread93.i ], [ %i.akv, %bb.ar ], [ %i.akv, %.preheader.lr.ph.i.i ], [ %i.akv, %._crit_edge.i62.i ] ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aon = load i32, ptr %i.aom, align 4, !tbaa !177
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.aoq = load i32, ptr %i.aop, align 4, !tbaa !178
  %i.aor = sext i32 %i.aoq to i64
  %i.aos = shl nsw i64 %i.aoo, 2
  %i.aot = mul i64 %i.aos, %i.aor
  %i.aou = call ptr @dt_alloc_aligned(i64 noundef %i.aot) #22 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aou, i64 64) ]
  %.not59.i = icmp eq ptr %i.aou, null
  br i1 %.not59.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %interpolate_bilinear.exit.i
  %i.aov = getelementptr inbounds nuw i8, ptr %i.x, i64 392
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !186
  call void %i.aow(ptr noundef %i.x, ptr noundef nonnull %1, ptr noundef nonnull %i.aol, ptr noundef nonnull %i.aou, ptr noundef %4, ptr noundef nonnull %5) #22, !inline_history !187
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %interpolate_bilinear.exit.i
  br i1 %i.aok, label %bb.au, label %_get_rasterfile_mask.exit

bb.au:                                            ; preds = %bb.at
  call void @free(ptr noundef nonnull %i.aol) #22
  br label %_get_rasterfile_mask.exit

_get_rasterfile_mask.exit:                        ; preds = %bb.an, %bb.aq, %.thread93.i, %bb.at, %bb.au
  %.1.i = phi ptr [ null, %bb.an ], [ %i.aou, %bb.au ], [ %i.aou, %bb.at ], [ null, %bb.aq ], [ null, %.thread93.i ]
  %i.aox = call i32 @pthread_mutex_unlock(ptr noundef %i.ab) #22 ; 0 uses
  br label %bb.av

bb.av:                                            ; preds = %bb.f, %_get_rasterfile_mask.exit
  %i.aoy = phi ptr [ %.1.i, %_get_rasterfile_mask.exit ], [ null, %bb.f ] ; 18 uses
  br i1 %i.v, label %bb.aw, label %.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.f, i64 628
  store i32 128, ptr %i.aoz, align 4, !tbaa !188
  br i1 %.not, label %.preheader, label %bb.bb

.preheader:                                       ; preds = %bb.aw
  %i.apa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.apb = load i32, ptr %i.apa, align 4, !tbaa !177
  %i.apc = sext i32 %i.apb to i64                 ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ape = load i32, ptr %i.apd, align 4, !tbaa !178
  %i.apf = sext i32 %i.ape to i64                 ; 2 uses
  %i.apg = mul nsw i64 %i.apf, %i.apc             ; 7 uses
  %.not113 = icmp eq i64 %i.apg, 0
  br i1 %.not113, label %.loopexit, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader
  %.not97 = icmp ne ptr %i.aoy, null              ; 5 uses
  %min.iters.check399 = icmp ult i64 %i.apg, 9
  br i1 %min.iters.check399, label %scalar.ph398.preheader, label %vector.memcheck392

scalar.ph398.preheader:                           ; preds = %vector.body404, %vector.memcheck392, %.lr.ph111
  %.092110.ph = phi i64 [ 0, %vector.memcheck392 ], [ 0, %.lr.ph111 ], [ %n.vec401, %vector.body404 ] ; 6 uses
  %i.aph = sub i64 %i.apg, %.092110.ph
  %.neg469 = add i64 %.092110.ph, 1
  %xtraiter465 = and i64 %i.aph, 1
  %lcmp.mod466.not = icmp eq i64 %xtraiter465, 0
  br i1 %lcmp.mod466.not, label %scalar.ph398.prol.loopexit, label %scalar.ph398.prol

scalar.ph398.prol:                                ; preds = %scalar.ph398.preheader
  %.idx.prol = shl i64 %.092110.ph, 4
  %i.api = getelementptr inbounds nuw i8, ptr %3, i64 %.idx.prol ; 4 uses
  %i.apj = load float, ptr %i.api, align 4, !tbaa !13
  %i.apk = getelementptr inbounds nuw i8, ptr %i.api, i64 4 ; 2 uses
  %i.apl = load float, ptr %i.apk, align 4, !tbaa !13
  %i.apm = fadd reassoc nsz arcp contract afn float %i.apl, %i.apj
  %i.apn = getelementptr inbounds nuw i8, ptr %i.api, i64 8 ; 2 uses
  %i.apo = load float, ptr %i.apn, align 4, !tbaa !13
  %i.app = fadd reassoc nsz arcp contract afn float %i.apm, %i.apo
  %i.apq = fmul reassoc nsz arcp contract afn float %i.app, 3.300000e-01 ; 2 uses
  %i.apr = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.apq) ; 2 uses
  %i.aps = fcmp reassoc nsz arcp contract afn ult float %i.apq, 0.000000e+00
  br i1 %i.aps, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %scalar.ph398.prol
  %i.apt = fcmp reassoc nsz arcp contract afn ugt float %i.apr, 5.000000e-01
  br i1 %i.apt, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.apu = fmul reassoc nnan nsz arcp contract afn float %i.apr, 2.000000e-01
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %scalar.ph398.prol
  %i.apv = phi float [ 1.000000e-01, %bb.ax ], [ %i.apu, %bb.ay ], [ 0.000000e+00, %scalar.ph398.prol ] ; 2 uses
  br i1 %.not97, label %bb.ba, label %scalar.ph398.prol.loopexit.unr-lcssa

bb.ba:                                            ; preds = %bb.az
  %i.apw = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %.092110.ph
  %i.apx = load float, ptr %i.apw, align 4, !tbaa !13
  %i.apy = fadd reassoc nsz arcp contract afn float %i.apx, %i.apv
  br label %scalar.ph398.prol.loopexit.unr-lcssa

scalar.ph398.prol.loopexit.unr-lcssa:             ; preds = %bb.ba, %bb.az
  %i.apz = phi float [ %i.apy, %bb.ba ], [ %i.apv, %bb.az ] ; 3 uses
  store float %i.apz, ptr %i.api, align 4, !tbaa !13
  store float %i.apz, ptr %i.apk, align 4, !tbaa !13
  store float %i.apz, ptr %i.apn, align 4, !tbaa !13
  %i.aqa = add nuw i64 %.092110.ph, 1
  br label %scalar.ph398.prol.loopexit

scalar.ph398.prol.loopexit:                       ; preds = %scalar.ph398.prol.loopexit.unr-lcssa, %scalar.ph398.preheader
  %.092110.unr = phi i64 [ %.092110.ph, %scalar.ph398.preheader ], [ %i.aqa, %scalar.ph398.prol.loopexit.unr-lcssa ]
  %i.aqb = icmp eq i64 %i.apg, %.neg469
  br i1 %i.aqb, label %.loopexit, label %scalar.ph398

vector.memcheck392:                               ; preds = %.lr.ph111
  %i.aqc = mul nsw i64 %i.apc, %i.apf             ; 2 uses
  %i.aqd = shl i64 %i.aqc, 4
  %i.aqe = getelementptr i8, ptr %3, i64 %i.aqd
  %scevgep393 = getelementptr i8, ptr %i.aqe, i64 -4
  %i.aqf = shl i64 %i.aqc, 2
  %scevgep394 = getelementptr i8, ptr %i.aoy, i64 %i.aqf
  %bound0395 = icmp ult ptr %3, %scevgep394
  %bound1396 = icmp ult ptr %i.aoy, %scevgep393
  %found.conflict397 = and i1 %bound0395, %bound1396
  br i1 %found.conflict397, label %scalar.ph398.preheader, label %vector.ph400

vector.ph400:                                     ; preds = %vector.memcheck392
  %i.aqg = and i64 %i.apg, 7                      ; 2 uses
  %i.aqh = icmp eq i64 %i.aqg, 0
  %i.aqi = select i1 %i.aqh, i64 8, i64 %i.aqg
  %n.vec401 = sub i64 %i.apg, %i.aqi              ; 2 uses
  %i.aqj = insertelement <8 x i1> poison, i1 %.not97, i64 0
  %i.aqk = shufflevector <8 x i1> %i.aqj, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vector.body404

vector.body404:                                   ; preds = %vector.body404, %vector.ph400
  %index405 = phi i64 [ 0, %vector.ph400 ], [ %index.next418, %vector.body404 ] ; 2 uses
  %vec.ind406 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph400 ], [ %vec.ind.next419, %vector.body404 ] ; 2 uses
  %i.aql = shl <8 x i64> %vec.ind406, splat (i64 4)
  %wide.gep407 = getelementptr inbounds nuw i8, ptr %3, <8 x i64> %i.aql ; 4 uses
  %i.aqm = extractelement <8 x ptr> %wide.gep407, i64 0
  %wide.vec408 = load <32 x float>, ptr %i.aqm, align 4, !tbaa !13, !alias.scope !189, !noalias !192 ; 3 uses
  %strided.vec409 = shufflevector <32 x float> %wide.vec408, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec410 = shufflevector <32 x float> %wide.vec408, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec411 = shufflevector <32 x float> %wide.vec408, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %wide.gep412 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep407, i64 4
  %i.aqn = fadd reassoc nsz arcp contract afn <8 x float> %strided.vec410, %strided.vec409
  %wide.gep413 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep407, i64 8
  %i.aqo = fadd reassoc nsz arcp contract afn <8 x float> %i.aqn, %strided.vec411
  %i.aqp = fmul reassoc nsz arcp contract afn <8 x float> %i.aqo, splat (float 3.300000e-01) ; 2 uses
  %i.aqq = call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.aqp) ; 2 uses
  %i.aqr = fcmp reassoc nsz arcp contract afn oge <8 x float> %i.aqp, zeroinitializer
  %i.aqs = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.aqq, splat (float 5.000000e-01)
  %i.aqt = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aqq, splat (float 2.000000e-01)
  %predphi414 = select <8 x i1> %i.aqs, <8 x float> splat (float 1.000000e-01), <8 x float> %i.aqt
  %predphi415 = select <8 x i1> %i.aqr, <8 x float> %predphi414, <8 x float> zeroinitializer
  %i.aqu = getelementptr [4 x i8], ptr %i.aoy, i64 %index405
  %wide.masked.load416 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.aqu, <8 x i1> %i.aqk, <8 x float> poison), !tbaa !13, !alias.scope !192
  %i.aqv = select i1 %.not97, <8 x float> %wide.masked.load416, <8 x float> splat (float -0.000000e+00)
  %predphi417 = fadd reassoc arcp contract afn <8 x float> %predphi415, %i.aqv ; 3 uses
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi417, <8 x ptr> align 4 %wide.gep407, <8 x i1> splat (i1 true)), !tbaa !13, !alias.scope !189, !noalias !192
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi417, <8 x ptr> align 4 %wide.gep412, <8 x i1> splat (i1 true)), !tbaa !13, !alias.scope !189, !noalias !192
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %predphi417, <8 x ptr> align 4 %wide.gep413, <8 x i1> splat (i1 true)), !tbaa !13, !alias.scope !189, !noalias !192
  %index.next418 = add nuw i64 %index405, 8       ; 2 uses
  %vec.ind.next419 = add nuw <8 x i64> %vec.ind406, splat (i64 8)
  %i.aqw = icmp eq i64 %index.next418, %n.vec401
  br i1 %i.aqw, label %scalar.ph398.preheader, label %vector.body404, !llvm.loop !194

bb.bb:                                            ; preds = %bb.aw
  %i.aqx = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.aqy = load i32, ptr %i.aqx, align 4, !tbaa !178
  %i.aqz = sext i32 %i.aqy to i64
  %i.ara = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.arb = load i32, ptr %i.ara, align 4, !tbaa !177
  %i.arc = sext i32 %i.arb to i64
  call void @dt_box_mean(ptr noundef %3, i64 noundef %i.aqz, i64 noundef %i.arc, i32 noundef 1, i64 noundef 3, i32 noundef 2) #22
  %i.ard = load i32, ptr %i.ara, align 4, !tbaa !177
  %i.are = sext i32 %i.ard to i64                 ; 2 uses
  %i.arf = load i32, ptr %i.aqx, align 4, !tbaa !178
  %i.arg = sext i32 %i.arf to i64                 ; 2 uses
  %i.arh = mul nsw i64 %i.arg, %i.are             ; 11 uses
  %.not112 = icmp eq i64 %i.arh, 0
  br i1 %.not112, label %.loopexit, label %iter.check373

iter.check373:                                    ; preds = %bb.bb
  %.not98 = icmp ne ptr %i.aoy, null              ; 10 uses
  %min.iters.check342 = icmp ult i64 %i.arh, 8
  br i1 %min.iters.check342, label %vec.epilog.scalar.ph374.preheader, label %vector.memcheck335

vector.memcheck335:                               ; preds = %iter.check373
  %i.ari = mul nsw i64 %i.are, %i.arg
  %i.arj = shl i64 %i.ari, 2                      ; 2 uses
  %scevgep336 = getelementptr i8, ptr %3, i64 %i.arj
  %scevgep337 = getelementptr i8, ptr %i.aoy, i64 %i.arj
end_hunk_0
