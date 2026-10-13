Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %wide.load485 = load <4 x float>, ptr %i.aib, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aic = fsub reassoc nsz arcp contract afn <4 x float> %wide.load485, %wide.load484 ; 4 uses
  %i.aid = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aic, %broadcast.splat482
  %i.aie = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aic, %broadcast.splat480
  %i.aif = fsub reassoc nsz arcp contract afn <4 x float> %i.aic, %broadcast.splat480
  %i.aig = select <4 x i1> %i.aie, <4 x float> %i.aif, <4 x float> zeroinitializer
  %i.aih = fadd reassoc nsz arcp contract afn <4 x float> %i.aic, %broadcast.splat480
  %i.aii = select <4 x i1> %i.aid, <4 x float> %i.aih, <4 x float> %i.aig ; 2 uses
  store <4 x float> %i.aii, ptr %i.aib, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aij = getelementptr [4 x i8], ptr %.0233, i64 %index483 ; 2 uses
  %wide.masked.load486 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aij, <4 x i1> %i.ahz, <4 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.aik = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load486, %i.aii
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.aik, ptr align 4 %i.aij, <4 x i1> %i.ahz), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next487 = add nuw i64 %index483, 4       ; 2 uses
  %i.ail = icmp eq i64 %index.next487, %n.vec476
  br i1 %i.ail, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n488, label %.loopexit951, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv367.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec461, %vec.epilog.iter.check ], [ %n.vec476, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod985.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep433.prol = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367.ph
  %i.aim = load float, ptr %gep433.prol, align 4, !tbaa !12
  %gep435.prol = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367.ph ; 2 uses
  %i.ain = load float, ptr %gep435.prol, align 4, !tbaa !12
  %i.aio = fsub reassoc nsz arcp contract afn float %i.ain, %i.aim ; 4 uses
  %i.aip = fcmp reassoc nsz arcp contract afn olt float %i.aio, %i.agu
  %i.aiq = fcmp reassoc nsz arcp contract afn ogt float %i.aio, %i.agt
  %i.air = fsub reassoc nsz arcp contract afn float %i.aio, %i.agt
  %spec.select442.prol = select i1 %i.aiq, float %i.air, float 0.000000e+00
  %i.ais = fadd reassoc nsz arcp contract afn float %i.aio, %i.agt
  %.sink.prol = select i1 %i.aip, float %i.ais, float %spec.select442.prol ; 2 uses
  store float %.sink.prol, ptr %gep435.prol, align 4, !tbaa !12
  br i1 %.not254, label %bb.h, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367.ph ; 2 uses
  %i.aiu = load float, ptr %i.ait, align 4, !tbaa !12
  %i.aiv = fadd reassoc nsz arcp contract afn float %i.aiu, %.sink.prol
  store float %i.aiv, ptr %i.ait, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.h, %vec.epilog.scalar.ph.prol
  %indvars.iv.next368.prol = or disjoint i64 %indvars.iv367.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next368.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aiw = icmp eq i64 %indvars.iv367.ph, %i.bd
  br i1 %i.aiw, label %.loopexit951, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.1, %bb.k ], [ %indvars.iv367.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep433 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367
  %i.aix = load float, ptr %gep433, align 4, !tbaa !12
  %gep435 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367 ; 2 uses
  %i.aiy = load float, ptr %gep435, align 4, !tbaa !12
  %i.aiz = fsub reassoc nsz arcp contract afn float %i.aiy, %i.aix ; 4 uses
  %i.aja = fcmp reassoc nsz arcp contract afn olt float %i.aiz, %i.agu
  %i.ajb = fcmp reassoc nsz arcp contract afn ogt float %i.aiz, %i.agt
  %i.ajc = fsub reassoc nsz arcp contract afn float %i.aiz, %i.agt
  %spec.select442 = select i1 %i.ajb, float %i.ajc, float 0.000000e+00
  %i.ajd = fadd reassoc nsz arcp contract afn float %i.aiz, %i.agt
  %.sink = select i1 %i.aja, float %i.ajd, float %spec.select442 ; 2 uses
  store float %.sink, ptr %gep435, align 4, !tbaa !12
  br i1 %.not254, label %bb.i, label %vec.epilog.scalar.ph.1

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %i.aje = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367 ; 2 uses
  %i.ajf = load float, ptr %i.aje, align 4, !tbaa !12
  %i.ajg = fadd reassoc nsz arcp contract afn float %i.ajf, %.sink
  store float %i.ajg, ptr %i.aje, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.i
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 3 uses
  %gep433.1 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv.next368
  %i.ajh = load float, ptr %gep433.1, align 4, !tbaa !12
  %gep435.1 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv.next368 ; 2 uses
  %i.aji = load float, ptr %gep435.1, align 4, !tbaa !12
  %i.ajj = fsub reassoc nsz arcp contract afn float %i.aji, %i.ajh ; 4 uses
  %i.ajk = fcmp reassoc nsz arcp contract afn olt float %i.ajj, %i.agu
  %i.ajl = fcmp reassoc nsz arcp contract afn ogt float %i.ajj, %i.agt
  %i.ajm = fsub reassoc nsz arcp contract afn float %i.ajj, %i.agt
  %spec.select442.1 = select i1 %i.ajl, float %i.ajm, float 0.000000e+00
  %i.ajn = fadd reassoc nsz arcp contract afn float %i.ajj, %i.agt
  %.sink.1 = select i1 %i.ajk, float %i.ajn, float %spec.select442.1 ; 2 uses
  store float %.sink.1, ptr %gep435.1, align 4, !tbaa !12
  br i1 %.not254, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv.next368 ; 2 uses
  %i.ajp = load float, ptr %i.ajo, align 4, !tbaa !12
  %i.ajq = fadd reassoc nsz arcp contract afn float %i.ajp, %.sink.1
  store float %i.ajq, ptr %i.ajo, align 4, !tbaa !12
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %vec.epilog.scalar.ph.1
  %indvars.iv.next368.1 = add nuw nsw i64 %indvars.iv367, 2 ; 2 uses
  %exitcond371.not.1 = icmp eq i64 %indvars.iv.next368.1, %wide.trip.count
  br i1 %exitcond371.not.1, label %.loopexit951, label %vec.epilog.scalar.ph, !llvm.loop !179

.loopexit951:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k, %vec.epilog.middle.block, %middle.block474
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next373, 5
  br i1 %exitcond375.not, label %.preheader293, label %bb.g, !llvm.loop !180

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %scalar.ph ], [ %indvars.iv376.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv376
  %i.ajs = load float, ptr %i.ajr, align 4, !tbaa !12
  %gep437 = getelementptr [4 x i8], ptr %invariant.gep436, i64 %indvars.iv376
  %i.ajt = load float, ptr %gep437, align 4, !tbaa !12
  %i.aju = fadd reassoc nsz arcp contract afn float %i.ajt, %i.ajs ; 2 uses
  %i.ajv = fmul reassoc nsz arcp contract afn float %i.aju, %i.aju
  %i.ajw = fmul reassoc nsz arcp contract afn float %i.ajv, f0x37800000
  %i.ajx = fptosi float %i.ajw to i32
  %i.ajy = tail call i32 @llvm.umin.i32(i32 %i.ajx, i32 65535)
  %i.ajz = trunc nuw i32 %i.ajy to i16
  %gep320 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv376
  store i16 %i.ajz, ptr %gep320, align 2, !tbaa !82
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count
  br i1 %exitcond380.not, label %.loopexit952, label %scalar.ph, !llvm.loop !181

.loopexit952:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge323, label %iter.check936, !llvm.loop !182

._crit_edge323:                                   ; preds = %.loopexit952
  %i.aka = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.akb = load i32, ptr %i.aka, align 8, !tbaa !191 ; 8 uses
  %.not252 = icmp eq i32 %i.akb, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit289, label %.preheader291

.preheader291:                                    ; preds = %._crit_edge323
  %i.akc = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.akd = lshr i32 %i.akb, 4
  %i.ake = and i32 %i.akd, 2                      ; 2 uses
  %i.akf = zext nneg i32 %i.ake to i64
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akf
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 4
  %i.aki = load float, ptr %i.akh, align 8, !tbaa !12 ; 2 uses
  %i.akj = and i32 %i.akb, 2
  %i.akk = or disjoint i32 %i.akj, 1
  %i.akl = zext nneg i32 %i.akk to i64            ; 2 uses
  %i.akm = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.akl
  %i.akn = load float, ptr %i.akm, align 8, !tbaa !12
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akl
  %i.akp = load i32, ptr %i.ako, align 4, !tbaa !79
  store i32 %i.akp, ptr %i.b, align 4, !tbaa !79
  %i.akq = lshr i32 %i.akb, 8
  %i.akr = and i32 %i.akq, 2
  %i.aks = zext nneg i32 %i.akr to i64
  %i.akt = getelementptr inbounds nuw [4 x i8], ptr %i.akc, i64 %i.aks
  %i.aku = getelementptr inbounds nuw i8, ptr %i.akt, i64 4
  %i.akv = load float, ptr %i.aku, align 8, !tbaa !12
  %i.akw = insertelement <2 x float> poison, float %i.aki, i64 0
  %i.akx = insertelement <2 x float> %i.akw, float %i.akv, i64 1
  %i.aky = fmul reassoc nsz arcp contract afn <2 x float> %i.akx, splat (float 1.250000e-01)
  %i.akz = insertelement <2 x float> poison, float %i.akn, i64 0
  %i.ala = insertelement <2 x float> %i.akz, float %i.aki, i64 1
  %i.alb = fdiv reassoc nsz arcp contract afn <2 x float> %i.aky, %i.ala
  store <2 x float> %i.alb, ptr %i.a, align 8, !tbaa !12
  %i.alc = zext nneg i32 %i.ake to i64
  %i.ald = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.alc
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ald, i64 4
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !79
  %i.alg = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.alf, ptr %i.alg, align 4, !tbaa !79
  %i.alh = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.alj = load i16, ptr %i.ali, align 4, !tbaa !85
  %i.alk = icmp ugt i16 %i.alj, 2
  br i1 %i.alk, label %.preheader.lr.ph, label %.loopexit289

.preheader.lr.ph:                                 ; preds = %.preheader291
  %i.all = load i16, ptr %i.alh, align 2, !tbaa !86 ; 2 uses
  %i.alm = zext i16 %i.all to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.alm, 2
  %i.aln = getelementptr inbounds nuw i8, ptr %.0233, i64 %.idx
  %i.alo = getelementptr inbounds nuw [2 x i8], ptr %.0233, i64 %i.alm
  %i.alp = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.alr = load float, ptr %i.alq, align 4, !tbaa !212
  %i.als = fmul reassoc nsz arcp contract afn float %i.alr, f0x3B000000 ; 4 uses
  %i.alt = fneg reassoc nsz arcp contract afn float %i.als
  br label %.preheader

.loopexit287:                                     ; preds = %bb.m, %._crit_edge333
  %i.alu = phi i16 [ %i.ank, %._crit_edge333 ], [ %i.aqr, %bb.m ]
  %i.alv = load i16, ptr %i.ali, align 4, !tbaa !85
  %i.alw = zext i16 %i.alv to i32
  %i.alx = add nsw i32 %i.alw, -1
  %i.aly = icmp slt i32 %.pre409, %i.alx
  br i1 %i.aly, label %.preheader, label %.loopexit289, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit287
  %i.alz = phi i16 [ %i.all, %.preheader.lr.ph ], [ %i.alu, %.loopexit287 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.aln, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit287 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.alo, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit287 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0233, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit287 ] ; 2 uses
  %.0338.a = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit287 ] ; 3 uses
  %.3226337.a = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre409, %.loopexit287 ] ; 6 uses
  %.not253330 = icmp sgt i32 %.0338.a, %.3226337.a
  %.pre409 = add nuw i32 %.3226337.a, 1           ; 3 uses
  br i1 %.not253330, label %._crit_edge333, label %.lr.ph332

.loopexit:                                        ; preds = %bb.l, %.lr.ph332
  %i.ama = phi i16 [ %i.amc, %.lr.ph332 ], [ %i.anh, %bb.l ] ; 2 uses
  %i.amb = phi i16 [ %i.amd, %.lr.ph332 ], [ %i.anh, %bb.l ]
  %exitcond400.not = icmp eq i32 %.1331, %.3226337.a
  br i1 %exitcond400.not, label %._crit_edge333, label %.lr.ph332, !llvm.loop !184

.lr.ph332:                                        ; preds = %.preheader, %.loopexit
  %i.amc = phi i16 [ %i.ama, %.loopexit ], [ %i.alz, %.preheader ]
  %i.amd = phi i16 [ %i.amb, %.loopexit ], [ %i.alz, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1331 = phi i32 [ %i.ame, %.loopexit ], [ %.0338.a, %.preheader ] ; 2 uses
  %i.ame = add nsw i32 %.1331, 1                  ; 3 uses
  %i.amf = shl i32 %i.ame, 1
  %i.amg = and i32 %i.amf, 14                     ; 2 uses
  %i.amh = shl nuw nsw i32 %i.amg, 1
  %i.ami = or disjoint i32 %i.amh, 2
  %i.amj = lshr i32 %i.akb, %i.ami                ; 2 uses
  %i.amk = and i32 %i.amj, 1                      ; 2 uses
  %i.aml = zext i16 %i.amd to i32
  %i.amm = icmp samesign ult i32 %i.amk, %i.aml
  br i1 %i.amm, label %.lr.ph329, label %.loopexit

.lr.ph329:                                        ; preds = %.lr.ph332
  %i.amn = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.amo = and i32 %i.amj, 1
  %i.amp = zext nneg i32 %i.amo to i64
  %i.amq = or disjoint i32 %i.amk, %i.amg
  %i.amr = shl nuw nsw i32 %i.amq, 1
  %i.ams = lshr i32 %i.akb, %i.amr
  %i.amt = and i32 %i.ams, 3
  %i.amu = zext nneg i32 %i.amt to i64
  %invariant.gep438 = getelementptr [2 x i8], ptr %i.amn, i64 %i.amu
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph329, %bb.l
  %indvars.iv397 = phi i64 [ %i.amp, %.lr.ph329 ], [ %indvars.iv.next398, %bb.l ] ; 3 uses
  %i.amv = load i16, ptr %i.alp, align 4, !tbaa !87
  %i.amw = zext i16 %i.amv to i32                 ; 2 uses
  %i.amx = ashr i32 %i.ame, %i.amw
  %i.amy = load i16, ptr %i.d, align 2, !tbaa !187
  %i.amz = zext i16 %i.amy to i32
  %i.ana = mul nsw i32 %i.amx, %i.amz
  %i.anb = trunc nuw nsw i64 %indvars.iv397 to i32
  %i.anc = lshr i32 %i.anb, %i.amw
  %i.and = add nsw i32 %i.ana, %i.anc
  %i.ane = sext i32 %i.and to i64
  %gep439 = getelementptr [8 x i8], ptr %invariant.gep438, i64 %i.ane
  %i.anf = load i16, ptr %gep439, align 2, !tbaa !82
  %i.ang = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv397
  store i16 %i.anf, ptr %i.ang, align 2, !tbaa !82
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %i.anh = load i16, ptr %i.alh, align 2, !tbaa !86 ; 3 uses
  %i.ani = zext i16 %i.anh to i64
  %i.anj = icmp samesign ult i64 %indvars.iv.next398, %i.ani
  br i1 %i.anj, label %bb.l, label %.loopexit, !llvm.loop !185

._crit_edge333:                                   ; preds = %.loopexit, %.preheader
  %i.ank = phi i16 [ %i.alz, %.preheader ], [ %i.ama, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0338.a, %.preheader ], [ %.pre409, %.loopexit ]
  %i.anl = shl nuw nsw i32 %.3226337.a, 1
  %i.anm = and i32 %i.anl, 14                     ; 2 uses
  %i.ann = shl nuw nsw i32 %i.anm, 1
  %i.ano = lshr i32 %i.akb, %i.ann                ; 3 uses
  %i.anp = and i32 %i.ano, 1
  %i.anq = add nuw nsw i32 %i.anp, 1
  %i.anr = zext i16 %i.ank to i32
  %i.ans = add nsw i32 %i.anr, -1
  %i.ant = icmp slt i32 %i.anq, %i.ans
  br i1 %i.ant, label %.lr.ph336, label %.loopexit287

.lr.ph336:                                        ; preds = %._crit_edge333
  %i.anu = and i32 %.3226337.a, 1                 ; 2 uses
  %i.anv = xor i32 %i.anu, 1
  %i.anw = zext nneg i32 %i.anv to i64
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anw
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !79
  %i.anz = zext nneg i32 %i.anu to i64            ; 2 uses
  %i.aoa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.anz
  %i.aob = load float, ptr %i.aoa, align 4, !tbaa !12
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anz
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !79
  %i.aoe = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.aof = and i32 %i.ano, 1
  %i.aog = and i32 %i.ano, 1
  %narrow = add nuw nsw i32 %i.aog, 1
  %i.aoh = zext nneg i32 %narrow to i64
  %i.aoi = shl i32 %i.any, 2
  %i.aoj = or disjoint i32 %i.aof, %i.anm
  %i.aok = shl nuw nsw i32 %i.aoj, 1
  %i.aol = xor i32 %i.aok, 2
  %i.aom = lshr i32 %i.akb, %i.aol
  %i.aon = and i32 %i.aom, 3
  %i.aoo = zext nneg i32 %i.aon to i64
  %invariant.gep440 = getelementptr inbounds nuw [2 x i8], ptr %i.aoe, i64 %i.aoo
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph336, %bb.m
  %indvars.iv401 = phi i64 [ %i.aoh, %.lr.ph336 ], [ %indvars.iv.next402, %bb.m ] ; 5 uses
  %i.aop = add nsw i64 %indvars.iv401, -1         ; 2 uses
  %i.aoq = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.aop
  %i.aor = load i16, ptr %i.aoq, align 2, !tbaa !82
  %i.aos = zext i16 %i.aor to i32
  %i.aot = add nuw nsw i64 %indvars.iv401, 1      ; 2 uses
  %i.aou = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.aot
  %i.aov = load i16, ptr %i.aou, align 2, !tbaa !82
  %i.aow = zext i16 %i.aov to i32
  %i.aox = add nuw nsw i32 %i.aow, %i.aos
  %i.aoy = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.aop
  %i.aoz = load i16, ptr %i.aoy, align 2, !tbaa !82
  %i.apa = zext i16 %i.aoz to i32
  %i.apb = add nuw nsw i32 %i.aox, %i.apa
  %i.apc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.aot
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !82
  %i.ape = zext i16 %i.apd to i32
  %i.apf = add nuw nsw i32 %i.apb, %i.ape
  %i.apg = sub i32 %i.apf, %i.aoi
  %i.aph = sitofp reassoc nsz arcp contract afn i32 %i.apg to float
  %i.api = fmul reassoc nsz arcp contract afn float %i.aob, %i.aph
  %i.apj = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv401
  %i.apk = load i16, ptr %i.apj, align 2, !tbaa !82
  %i.apl = zext i16 %i.apk to i32
  %i.apm = add nsw i32 %i.aod, %i.apl
  %i.apn = sitofp reassoc nsz arcp contract afn i32 %i.apm to float
  %i.apo = fmul reassoc nnan nsz arcp contract afn float %i.apn, 5.000000e-01
  %i.app = fadd reassoc nsz arcp contract afn float %i.apo, %i.api ; 2 uses
  %i.apq = fcmp reassoc nsz arcp contract afn olt float %i.app, 0.000000e+00
  %i.apr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.app)
  %spec.select280 = select reassoc nsz arcp contract afn i1 %i.apq, float 0.000000e+00, float %i.apr ; 2 uses
  %i.aps = load i16, ptr %i.alp, align 4, !tbaa !87
  %i.apt = zext i16 %i.aps to i32                 ; 2 uses
  %i.apu = lshr i32 %.3226337.a, %i.apt
  %i.apv = load i16, ptr %i.d, align 2, !tbaa !187
  %i.apw = zext i16 %i.apv to i32
  %i.apx = mul nuw nsw i32 %i.apu, %i.apw
  %i.apy = trunc nuw nsw i64 %indvars.iv401 to i32
  %i.apz = lshr i32 %i.apy, %i.apt
  %i.aqa = add nuw nsw i32 %i.apx, %i.apz
  %i.aqb = zext nneg i32 %i.aqa to i64
  %gep441 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep440, i64 %i.aqb ; 2 uses
  %i.aqc = load i16, ptr %gep441, align 2, !tbaa !82
  %i.aqd = uitofp reassoc nsz arcp contract afn i16 %i.aqc to float
  %i.aqe = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aqd)
  %i.aqf = fsub reassoc nsz arcp contract afn float %i.aqe, %spec.select280 ; 4 uses
  %i.aqg = fcmp reassoc nsz arcp contract afn olt float %i.aqf, %i.alt
  %i.aqh = fadd reassoc nsz arcp contract afn float %i.aqf, %i.als
  %i.aqi = fcmp reassoc nsz arcp contract afn ogt float %i.aqf, %i.als
  %i.aqj = fsub reassoc nsz arcp contract afn float %i.aqf, %i.als
  %spec.select255 = select nsz i1 %i.aqi, float %i.aqj, float 0.000000e+00
  %.0232 = select nsz i1 %i.aqg, float %i.aqh, float %spec.select255
  %i.aqk = fadd reassoc nsz arcp contract afn float %.0232, %spec.select280 ; 2 uses
  %i.aql = fmul reassoc nsz arcp contract afn float %i.aqk, %i.aqk
  %i.aqm = fpext reassoc nsz arcp contract afn float %i.aql to double
  %i.aqn = fadd reassoc nsz arcp contract afn double %i.aqm, 5.000000e-01
  %i.aqo = fptosi double %i.aqn to i32
  %i.aqp = tail call i32 @llvm.umin.i32(i32 %i.aqo, i32 65535)
  %i.aqq = trunc nuw i32 %i.aqp to i16
  store i16 %i.aqq, ptr %gep441, align 2, !tbaa !82
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %i.aqr = load i16, ptr %i.alh, align 2, !tbaa !86 ; 2 uses
  %i.aqs = zext i16 %i.aqr to i64
  %i.aqt = add nsw i64 %i.aqs, -1
  %i.aqu = icmp slt i64 %indvars.iv.next402, %i.aqt
  br i1 %i.aqu, label %bb.m, label %.loopexit287, !llvm.loop !186

.loopexit289:                                     ; preds = %.loopexit287, %bb.f, %.preheader291, %._crit_edge323
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.0233)
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.b, %.loopexit289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13median_filterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5484 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !221  ; 2 uses
  %.not79 = icmp slt i32 %i.d, 1
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge77.1
  %i.j = phi i32 [ %i.d, %.lr.ph82 ], [ %i.ix, %._crit_edge77.1 ]
  %.04880 = phi i32 [ 1, %.lr.ph82 ], [ %i.iw, %._crit_edge77.1 ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !89
  %i.m = add nsw i32 %.04880, -1
  %i.n = tail call noundef i32 %i.k(ptr noundef %i.l, i32 noundef 8192, i32 noundef %i.m, i32 noundef %i.j)
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 6, ptr %i.o, align 16, !tbaa !91
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !81   ; 9 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = load i16, ptr %i.g, align 2, !tbaa !86   ; 2 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = load i16, ptr %i.h, align 4, !tbaa !85   ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.s
  %.not84 = icmp eq i64 %i.v, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.04965 = phi ptr [ %i.y, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = load i16, ptr %.04965, align 2, !tbaa !82
  %i.x = getelementptr inbounds nuw i8, ptr %.04965, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %.04965, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.g, align 2, !tbaa !86   ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = load i16, ptr %i.h, align 4, !tbaa !85  ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = icmp ult ptr %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !217

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ %i.s, %bb.e ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ag = phi i16 [ %i.t, %bb.e ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ah = phi i16 [ %i.r, %bb.e ], [ %i.z, %.lr.ph ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = zext i16 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %.pre-phi, %i.am
  br i1 %i.an, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %bb.l
  %i.ap = phi i16 [ %i.ag, %.lr.ph76 ], [ %i.dw, %bb.l ]
  %i.aq = phi i16 [ %i.ah, %.lr.ph76 ], [ %i.dx, %bb.l ] ; 2 uses
  %i.ar = phi i32 [ %i.ai, %.lr.ph76 ], [ %i.dz, %bb.l ] ; 4 uses
  %.15074 = phi ptr [ %i.ao, %.lr.ph76 ], [ %i.dy, %bb.l ] ; 7 uses
  %i.as = ptrtoint ptr %.15074 to i64
  %i.at = sub i64 %i.as, %i.q
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  %i.aw = zext i16 %i.aq to i64
  %i.ax = srem i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 2
  br i1 %i.ay, label %bb.l, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.f
  %i.az = sub nsw i32 0, %i.ar
  %narrow = xor i32 %i.ar, -1
  %i.ba = sext i32 %narrow to i64
  %i.bb = zext nneg i32 %i.ar to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next95, %.lr.ph72 ] ; 4 uses
  %indvars.iv86 = phi i64 [ %i.ba, %.lr.ph72.preheader ], [ %indvars.iv.next87, %.lr.ph72 ] ; 4 uses
  %.04569 = phi i32 [ %i.az, %.lr.ph72.preheader ], [ %i.cf, %.lr.ph72 ] ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !82
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !82
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !79
  %i.bl = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 14
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !82
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.bl, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !82
  %i.br = zext i16 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !79
  %i.bv = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 22
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !82
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bv, i64 18
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !82
  %i.cb = zext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !79
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv, 3
  %i.cf = add nsw i32 %.04569, %i.ar
  %.not59 = icmp sgt i32 %.04569, 0
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %i.bb
  br i1 %.not59, label %.preheader, label %.lr.ph72, !llvm.loop !218

.preheader:                                       ; preds = %.lr.ph72, %bb.j
  %indvars.iv97 = phi i64 [ %indvars.iv.next98.1143, %bb.j ], [ 0, %.lr.ph72 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw13median_filterEvE3opt, i64 %indvars.iv97 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !222
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci ; 4 uses
end_hunk_0
