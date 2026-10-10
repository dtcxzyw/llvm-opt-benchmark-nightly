Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %wide.load485 = load <4 x float>, ptr %i.aic, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aid = fsub reassoc nsz arcp contract afn <4 x float> %wide.load485, %wide.load484 ; 4 uses
  %i.aie = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aid, %broadcast.splat482
  %i.aif = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aid, %broadcast.splat480
  %i.aig = fsub reassoc nsz arcp contract afn <4 x float> %i.aid, %broadcast.splat480
  %i.aih = select <4 x i1> %i.aif, <4 x float> %i.aig, <4 x float> zeroinitializer
  %i.aii = fadd reassoc nsz arcp contract afn <4 x float> %i.aid, %broadcast.splat480
  %i.aij = select <4 x i1> %i.aie, <4 x float> %i.aii, <4 x float> %i.aih ; 2 uses
  store <4 x float> %i.aij, ptr %i.aic, align 4, !tbaa !12, !alias.scope !214, !noalias !215
  %i.aik = getelementptr [4 x i8], ptr %.0233, i64 %index483 ; 2 uses
  %wide.masked.load486 = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr align 4 %i.aik, <4 x i1> %i.aia, <4 x float> poison), !tbaa !12, !alias.scope !216, !noalias !213
  %i.ail = fadd reassoc nsz arcp contract afn <4 x float> %wide.masked.load486, %i.aij
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ail, ptr align 4 %i.aik, <4 x i1> %i.aia), !tbaa !12, !alias.scope !216, !noalias !213
  %index.next487 = add nuw i64 %index483, 4       ; 2 uses
  %i.aim = icmp eq i64 %index.next487, %n.vec476
  br i1 %i.aim, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !178

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n488, label %.loopexit951, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv367.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec461, %vec.epilog.iter.check ], [ %n.vec476, %vec.epilog.middle.block ] ; 6 uses
  br i1 %lcmp.mod985.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %gep433.prol = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367.ph
  %i.ain = load float, ptr %gep433.prol, align 4, !tbaa !12
  %gep435.prol = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367.ph ; 2 uses
  %i.aio = load float, ptr %gep435.prol, align 4, !tbaa !12
  %i.aip = fsub reassoc nsz arcp contract afn float %i.aio, %i.ain ; 4 uses
  %i.aiq = fcmp reassoc nsz arcp contract afn olt float %i.aip, %i.agv
  %i.air = fcmp reassoc nsz arcp contract afn ogt float %i.aip, %i.agu
  %i.ais = fsub reassoc nsz arcp contract afn float %i.aip, %i.agu
  %spec.select442.prol = select i1 %i.air, float %i.ais, float 0.000000e+00
  %i.ait = fadd reassoc nsz arcp contract afn float %i.aip, %i.agu
  %.sink.prol = select i1 %i.aiq, float %i.ait, float %spec.select442.prol ; 2 uses
  store float %.sink.prol, ptr %gep435.prol, align 4, !tbaa !12
  br i1 %.not254, label %bb.h, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.h:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.aiu = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367.ph ; 2 uses
  %i.aiv = load float, ptr %i.aiu, align 4, !tbaa !12
  %i.aiw = fadd reassoc nsz arcp contract afn float %i.aiv, %.sink.prol
  store float %i.aiw, ptr %i.aiu, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.h, %vec.epilog.scalar.ph.prol
  %indvars.iv.next368.prol = or disjoint i64 %indvars.iv367.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv367.unr = phi i64 [ %indvars.iv367.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next368.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aix = icmp eq i64 %indvars.iv367.ph, %i.bd
  br i1 %i.aix, label %.loopexit951, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.k
  %indvars.iv367 = phi i64 [ %indvars.iv.next368.1, %bb.k ], [ %indvars.iv367.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep433 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv367
  %i.aiy = load float, ptr %gep433, align 4, !tbaa !12
  %gep435 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv367 ; 2 uses
  %i.aiz = load float, ptr %gep435, align 4, !tbaa !12
  %i.aja = fsub reassoc nsz arcp contract afn float %i.aiz, %i.aiy ; 4 uses
  %i.ajb = fcmp reassoc nsz arcp contract afn olt float %i.aja, %i.agv
  %i.ajc = fcmp reassoc nsz arcp contract afn ogt float %i.aja, %i.agu
  %i.ajd = fsub reassoc nsz arcp contract afn float %i.aja, %i.agu
  %spec.select442 = select i1 %i.ajc, float %i.ajd, float 0.000000e+00
  %i.aje = fadd reassoc nsz arcp contract afn float %i.aja, %i.agu
  %.sink = select i1 %i.ajb, float %i.aje, float %spec.select442 ; 2 uses
  store float %.sink, ptr %gep435, align 4, !tbaa !12
  br i1 %.not254, label %bb.i, label %vec.epilog.scalar.ph.1

bb.i:                                             ; preds = %vec.epilog.scalar.ph
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv367 ; 2 uses
  %i.ajg = load float, ptr %i.ajf, align 4, !tbaa !12
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajg, %.sink
  store float %i.ajh, ptr %i.ajf, align 4, !tbaa !12
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %vec.epilog.scalar.ph, %bb.i
  %indvars.iv.next368 = add nuw nsw i64 %indvars.iv367, 1 ; 3 uses
  %gep433.1 = getelementptr [4 x i8], ptr %invariant.gep432, i64 %indvars.iv.next368
  %i.aji = load float, ptr %gep433.1, align 4, !tbaa !12
  %gep435.1 = getelementptr [4 x i8], ptr %invariant.gep434, i64 %indvars.iv.next368 ; 2 uses
  %i.ajj = load float, ptr %gep435.1, align 4, !tbaa !12
  %i.ajk = fsub reassoc nsz arcp contract afn float %i.ajj, %i.aji ; 4 uses
  %i.ajl = fcmp reassoc nsz arcp contract afn olt float %i.ajk, %i.agv
  %i.ajm = fcmp reassoc nsz arcp contract afn ogt float %i.ajk, %i.agu
  %i.ajn = fsub reassoc nsz arcp contract afn float %i.ajk, %i.agu
  %spec.select442.1 = select i1 %i.ajm, float %i.ajn, float 0.000000e+00
  %i.ajo = fadd reassoc nsz arcp contract afn float %i.ajk, %i.agu
  %.sink.1 = select i1 %i.ajl, float %i.ajo, float %spec.select442.1 ; 2 uses
  store float %.sink.1, ptr %gep435.1, align 4, !tbaa !12
  br i1 %.not254, label %bb.j, label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ajp = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv.next368 ; 2 uses
  %i.ajq = load float, ptr %i.ajp, align 4, !tbaa !12
  %i.ajr = fadd reassoc nsz arcp contract afn float %i.ajq, %.sink.1
  store float %i.ajr, ptr %i.ajp, align 4, !tbaa !12
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
  %i.ajs = getelementptr inbounds nuw [4 x i8], ptr %.0233, i64 %indvars.iv376
  %i.ajt = load float, ptr %i.ajs, align 4, !tbaa !12
  %gep437 = getelementptr [4 x i8], ptr %invariant.gep436, i64 %indvars.iv376
  %i.aju = load float, ptr %gep437, align 4, !tbaa !12
  %i.ajv = fadd reassoc nsz arcp contract afn float %i.aju, %i.ajt ; 2 uses
  %i.ajw = fmul reassoc nsz arcp contract afn float %i.ajv, %i.ajv
  %i.ajx = fmul reassoc nsz arcp contract afn float %i.ajw, f0x37800000
  %i.ajy = fptosi float %i.ajx to i32
  %i.ajz = tail call i32 @llvm.umin.i32(i32 %i.ajy, i32 65535)
  %i.aka = trunc nuw i32 %i.ajz to i16
  %gep320 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv376
  store i16 %i.aka, ptr %gep320, align 2, !tbaa !82
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count
  br i1 %exitcond380.not, label %.loopexit952, label %scalar.ph, !llvm.loop !181

.loopexit952:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count384
  br i1 %exitcond385.not, label %._crit_edge323, label %iter.check936, !llvm.loop !182

._crit_edge323:                                   ; preds = %.loopexit952
  %i.akb = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !191 ; 8 uses
  %.not252 = icmp eq i32 %i.akc, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit289, label %.preheader291

.preheader291:                                    ; preds = %._crit_edge323
  %i.akd = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.ake = lshr i32 %i.akc, 4
  %i.akf = and i32 %i.ake, 2                      ; 2 uses
  %i.akg = zext nneg i32 %i.akf to i64
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akg
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akh, i64 4
  %i.akj = load float, ptr %i.aki, align 8, !tbaa !12 ; 2 uses
  %i.akk = and i32 %i.akc, 2
  %i.akl = or disjoint i32 %i.akk, 1
  %i.akm = zext nneg i32 %i.akl to i64            ; 2 uses
  %i.akn = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akm
  %i.ako = load float, ptr %i.akn, align 8, !tbaa !12
  %i.akp = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akm
  %i.akq = load i32, ptr %i.akp, align 4, !tbaa !79
  store i32 %i.akq, ptr %i.b, align 4, !tbaa !79
  %i.akr = lshr i32 %i.akc, 8
  %i.aks = and i32 %i.akr, 2
  %i.akt = zext nneg i32 %i.aks to i64
  %i.aku = getelementptr inbounds nuw [4 x i8], ptr %i.akd, i64 %i.akt
  %i.akv = getelementptr inbounds nuw i8, ptr %i.aku, i64 4
  %i.akw = load float, ptr %i.akv, align 8, !tbaa !12
  %i.akx = insertelement <2 x float> poison, float %i.akj, i64 0
  %i.aky = insertelement <2 x float> %i.akx, float %i.akw, i64 1
  %i.akz = fmul reassoc nsz arcp contract afn <2 x float> %i.aky, splat (float 1.250000e-01)
  %i.ala = insertelement <2 x float> poison, float %i.ako, i64 0
  %i.alb = insertelement <2 x float> %i.ala, float %i.akj, i64 1
  %i.alc = fdiv reassoc nsz arcp contract afn <2 x float> %i.akz, %i.alb
  store <2 x float> %i.alc, ptr %i.a, align 8, !tbaa !12
  %i.ald = zext nneg i32 %i.akf to i64
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ald
  %i.alf = getelementptr inbounds nuw i8, ptr %i.ale, i64 4
  %i.alg = load i32, ptr %i.alf, align 4, !tbaa !79
  %i.alh = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.alg, ptr %i.alh, align 4, !tbaa !79
  %i.ali = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.alj = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.alk = load i16, ptr %i.alj, align 4, !tbaa !85
  %i.all = icmp ugt i16 %i.alk, 2
  br i1 %i.all, label %.preheader.lr.ph, label %.loopexit289

.preheader.lr.ph:                                 ; preds = %.preheader291
  %i.alm = load i16, ptr %i.ali, align 2, !tbaa !86 ; 2 uses
  %i.aln = zext i16 %i.alm to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.aln, 2
  %i.alo = getelementptr inbounds nuw i8, ptr %.0233, i64 %.idx
  %i.alp = getelementptr inbounds nuw [2 x i8], ptr %.0233, i64 %i.aln
  %i.alq = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.alr = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.als = load float, ptr %i.alr, align 4, !tbaa !212
  %i.alt = fmul reassoc nsz arcp contract afn float %i.als, f0x3B000000 ; 4 uses
  %i.alu = fneg reassoc nsz arcp contract afn float %i.alt
  br label %.preheader

.loopexit287:                                     ; preds = %bb.m, %._crit_edge333
  %i.alv = phi i16 [ %i.anl, %._crit_edge333 ], [ %i.aqs, %bb.m ]
  %i.alw = load i16, ptr %i.alj, align 4, !tbaa !85
  %i.alx = zext i16 %i.alw to i32
  %i.aly = add nsw i32 %i.alx, -1
  %i.alz = icmp slt i32 %.pre409, %i.aly
  br i1 %i.alz, label %.preheader, label %.loopexit289, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit287
  %i.ama = phi i16 [ %i.alm, %.preheader.lr.ph ], [ %i.alv, %.loopexit287 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.alo, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit287 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.alp, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit287 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0233, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit287 ] ; 2 uses
  %.0338.a = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit287 ] ; 3 uses
  %.3226337.a = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre409, %.loopexit287 ] ; 6 uses
  %.not253330 = icmp sgt i32 %.0338.a, %.3226337.a
  %.pre409 = add nuw i32 %.3226337.a, 1           ; 3 uses
  br i1 %.not253330, label %._crit_edge333, label %.lr.ph332

.loopexit:                                        ; preds = %bb.l, %.lr.ph332
  %i.amb = phi i16 [ %i.amd, %.lr.ph332 ], [ %i.ani, %bb.l ] ; 2 uses
  %i.amc = phi i16 [ %i.ame, %.lr.ph332 ], [ %i.ani, %bb.l ]
  %exitcond400.not = icmp eq i32 %.1331, %.3226337.a
  br i1 %exitcond400.not, label %._crit_edge333, label %.lr.ph332, !llvm.loop !184

.lr.ph332:                                        ; preds = %.preheader, %.loopexit
  %i.amd = phi i16 [ %i.amb, %.loopexit ], [ %i.ama, %.preheader ]
  %i.ame = phi i16 [ %i.amc, %.loopexit ], [ %i.ama, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1331 = phi i32 [ %i.amf, %.loopexit ], [ %.0338.a, %.preheader ] ; 2 uses
  %i.amf = add nsw i32 %.1331, 1                  ; 3 uses
  %i.amg = shl i32 %i.amf, 1
  %i.amh = and i32 %i.amg, 14                     ; 2 uses
  %i.ami = shl nuw nsw i32 %i.amh, 1
  %i.amj = or disjoint i32 %i.ami, 2
  %i.amk = lshr i32 %i.akc, %i.amj                ; 2 uses
  %i.aml = and i32 %i.amk, 1                      ; 2 uses
  %i.amm = zext i16 %i.ame to i32
  %i.amn = icmp samesign ult i32 %i.aml, %i.amm
  br i1 %i.amn, label %.lr.ph329, label %.loopexit

.lr.ph329:                                        ; preds = %.lr.ph332
  %i.amo = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.amp = and i32 %i.amk, 1
  %i.amq = zext nneg i32 %i.amp to i64
  %i.amr = or disjoint i32 %i.aml, %i.amh
  %i.ams = shl nuw nsw i32 %i.amr, 1
  %i.amt = lshr i32 %i.akc, %i.ams
  %i.amu = and i32 %i.amt, 3
  %i.amv = zext nneg i32 %i.amu to i64
  %invariant.gep438 = getelementptr [2 x i8], ptr %i.amo, i64 %i.amv
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph329, %bb.l
  %indvars.iv397 = phi i64 [ %i.amq, %.lr.ph329 ], [ %indvars.iv.next398, %bb.l ] ; 3 uses
  %i.amw = load i16, ptr %i.alq, align 4, !tbaa !87
  %i.amx = zext i16 %i.amw to i32                 ; 2 uses
  %i.amy = ashr i32 %i.amf, %i.amx
  %i.amz = load i16, ptr %i.d, align 2, !tbaa !187
  %i.ana = zext i16 %i.amz to i32
  %i.anb = mul nsw i32 %i.amy, %i.ana
  %i.anc = trunc nuw nsw i64 %indvars.iv397 to i32
  %i.and = lshr i32 %i.anc, %i.amx
  %i.ane = add nsw i32 %i.anb, %i.and
  %i.anf = sext i32 %i.ane to i64
  %gep439 = getelementptr [8 x i8], ptr %invariant.gep438, i64 %i.anf
  %i.ang = load i16, ptr %gep439, align 2, !tbaa !82
  %i.anh = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv397
  store i16 %i.ang, ptr %i.anh, align 2, !tbaa !82
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 2 ; 2 uses
  %i.ani = load i16, ptr %i.ali, align 2, !tbaa !86 ; 3 uses
  %i.anj = zext i16 %i.ani to i64
  %i.ank = icmp samesign ult i64 %indvars.iv.next398, %i.anj
  br i1 %i.ank, label %bb.l, label %.loopexit, !llvm.loop !185

._crit_edge333:                                   ; preds = %.loopexit, %.preheader
  %i.anl = phi i16 [ %i.ama, %.preheader ], [ %i.amb, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0338.a, %.preheader ], [ %.pre409, %.loopexit ]
  %i.anm = shl nuw nsw i32 %.3226337.a, 1
  %i.ann = and i32 %i.anm, 14                     ; 2 uses
  %i.ano = shl nuw nsw i32 %i.ann, 1
  %i.anp = lshr i32 %i.akc, %i.ano                ; 3 uses
  %i.anq = and i32 %i.anp, 1
  %i.anr = add nuw nsw i32 %i.anq, 1
  %i.ans = zext i16 %i.anl to i32
  %i.ant = add nsw i32 %i.ans, -1
  %i.anu = icmp slt i32 %i.anr, %i.ant
  br i1 %i.anu, label %.lr.ph336, label %.loopexit287

.lr.ph336:                                        ; preds = %._crit_edge333
  %i.anv = and i32 %.3226337.a, 1                 ; 2 uses
  %i.anw = xor i32 %i.anv, 1
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anx
  %i.anz = load i32, ptr %i.any, align 4, !tbaa !79
  %i.aoa = zext nneg i32 %i.anv to i64            ; 2 uses
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aoa
  %i.aoc = load float, ptr %i.aob, align 4, !tbaa !12
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aoa
  %i.aoe = load i32, ptr %i.aod, align 4, !tbaa !79
  %i.aof = load ptr, ptr %i.c, align 8, !tbaa !81
  %i.aog = and i32 %i.anp, 1
  %i.aoh = and i32 %i.anp, 1
  %narrow = add nuw nsw i32 %i.aoh, 1
  %i.aoi = zext nneg i32 %narrow to i64
  %i.aoj = shl i32 %i.anz, 2
  %i.aok = or disjoint i32 %i.aog, %i.ann
  %i.aol = shl nuw nsw i32 %i.aok, 1
  %i.aom = xor i32 %i.aol, 2
  %i.aon = lshr i32 %i.akc, %i.aom
  %i.aoo = and i32 %i.aon, 3
  %i.aop = zext nneg i32 %i.aoo to i64
  %invariant.gep440 = getelementptr inbounds nuw [2 x i8], ptr %i.aof, i64 %i.aop
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph336, %bb.m
  %indvars.iv401 = phi i64 [ %i.aoi, %.lr.ph336 ], [ %indvars.iv.next402, %bb.m ] ; 5 uses
  %i.aoq = add nsw i64 %indvars.iv401, -1         ; 2 uses
  %i.aor = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.aoq
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !82
  %i.aot = zext i16 %i.aos to i32
  %i.aou = add nuw nsw i64 %indvars.iv401, 1      ; 2 uses
  %i.aov = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.aou
  %i.aow = load i16, ptr %i.aov, align 2, !tbaa !82
  %i.aox = zext i16 %i.aow to i32
  %i.aoy = add nuw nsw i32 %i.aox, %i.aot
  %i.aoz = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.aoq
  %i.apa = load i16, ptr %i.aoz, align 2, !tbaa !82
  %i.apb = zext i16 %i.apa to i32
  %i.apc = add nuw nsw i32 %i.aoy, %i.apb
  %i.apd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.aou
  %i.ape = load i16, ptr %i.apd, align 2, !tbaa !82
  %i.apf = zext i16 %i.ape to i32
  %i.apg = add nuw nsw i32 %i.apc, %i.apf
  %i.aph = sub i32 %i.apg, %i.aoj
  %i.api = sitofp reassoc nsz arcp contract afn i32 %i.aph to float
  %i.apj = fmul reassoc nsz arcp contract afn float %i.aoc, %i.api
  %i.apk = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv401
  %i.apl = load i16, ptr %i.apk, align 2, !tbaa !82
  %i.apm = zext i16 %i.apl to i32
  %i.apn = add nsw i32 %i.aoe, %i.apm
  %i.apo = sitofp reassoc nsz arcp contract afn i32 %i.apn to float
  %i.app = fmul reassoc nnan nsz arcp contract afn float %i.apo, 5.000000e-01
  %i.apq = fadd reassoc nsz arcp contract afn float %i.app, %i.apj ; 2 uses
  %i.apr = fcmp reassoc nsz arcp contract afn olt float %i.apq, 0.000000e+00
  %i.aps = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.apq)
  %spec.select280 = select reassoc nsz arcp contract afn i1 %i.apr, float 0.000000e+00, float %i.aps ; 2 uses
  %i.apt = load i16, ptr %i.alq, align 4, !tbaa !87
  %i.apu = zext i16 %i.apt to i32                 ; 2 uses
  %i.apv = lshr i32 %.3226337.a, %i.apu
  %i.apw = load i16, ptr %i.d, align 2, !tbaa !187
  %i.apx = zext i16 %i.apw to i32
  %i.apy = mul nuw nsw i32 %i.apv, %i.apx
  %i.apz = trunc nuw nsw i64 %indvars.iv401 to i32
  %i.aqa = lshr i32 %i.apz, %i.apu
  %i.aqb = add nuw nsw i32 %i.apy, %i.aqa
  %i.aqc = zext nneg i32 %i.aqb to i64
  %gep441 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep440, i64 %i.aqc ; 2 uses
  %i.aqd = load i16, ptr %gep441, align 2, !tbaa !82
  %i.aqe = uitofp reassoc nsz arcp contract afn i16 %i.aqd to float
  %i.aqf = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.aqe)
  %i.aqg = fsub reassoc nsz arcp contract afn float %i.aqf, %spec.select280 ; 4 uses
  %i.aqh = fcmp reassoc nsz arcp contract afn olt float %i.aqg, %i.alu
  %i.aqi = fadd reassoc nsz arcp contract afn float %i.aqg, %i.alt
  %i.aqj = fcmp reassoc nsz arcp contract afn ogt float %i.aqg, %i.alt
  %i.aqk = fsub reassoc nsz arcp contract afn float %i.aqg, %i.alt
  %spec.select255 = select nsz i1 %i.aqj, float %i.aqk, float 0.000000e+00
  %.0232 = select nsz i1 %i.aqh, float %i.aqi, float %spec.select255
  %i.aql = fadd reassoc nsz arcp contract afn float %.0232, %spec.select280 ; 2 uses
  %i.aqm = fmul reassoc nsz arcp contract afn float %i.aql, %i.aql
  %i.aqn = fpext reassoc nsz arcp contract afn float %i.aqm to double
  %i.aqo = fadd reassoc nsz arcp contract afn double %i.aqn, 5.000000e-01
  %i.aqp = fptosi double %i.aqo to i32
  %i.aqq = tail call i32 @llvm.umin.i32(i32 %i.aqp, i32 65535)
  %i.aqr = trunc nuw i32 %i.aqq to i16
  store i16 %i.aqr, ptr %gep441, align 2, !tbaa !82
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %i.aqs = load i16, ptr %i.ali, align 2, !tbaa !86 ; 2 uses
  %i.aqt = zext i16 %i.aqs to i64
  %i.aqu = add nsw i64 %i.aqt, -1
  %i.aqv = icmp slt i64 %indvars.iv.next402, %i.aqu
  br i1 %i.aqv, label %bb.m, label %.loopexit287, !llvm.loop !186

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
