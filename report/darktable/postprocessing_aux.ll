inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.aik = fcmp reassoc nsz arcp contract afn ogt float %i.aii, %i.agq
  br i1 %i.aik, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ail = fsub reassoc nsz arcp contract afn float %i.aii, %i.agq
  br label %bb.k

bb.j:                                             ; preds = %vec.epilog.scalar.ph.prol
  %i.aim = fadd reassoc nsz arcp contract afn float %i.aii, %i.agq
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.sink.prol = phi float [ %i.ail, %bb.i ], [ %i.aim, %bb.j ], [ 0.000000e+00, %bb.h ] ; 2 uses
  store float %.sink.prol, ptr %gep442.prol, align 4, !tbaa !11
  br i1 %.not254, label %bb.l, label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

bb.l:                                             ; preds = %bb.k
  %i.ain = getelementptr inbounds nuw [4 x i8], ptr %.0231, i64 %indvars.iv371.ph ; 2 uses
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !11
  %i.aip = fadd reassoc nsz arcp contract afn float %i.aio, %.sink.prol
  store float %i.aip, ptr %i.ain, align 4, !tbaa !11
  br label %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa

vec.epilog.scalar.ph.prol.loopexit.unr-lcssa:     ; preds = %bb.l, %bb.k
  %indvars.iv.next372.prol = or disjoint i64 %indvars.iv371.ph, 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa, %vec.epilog.scalar.ph.preheader
  %indvars.iv371.unr = phi i64 [ %indvars.iv371.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next372.prol, %vec.epilog.scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aiq = icmp eq i64 %indvars.iv371.ph, %i.ba
  br i1 %i.aiq, label %.loopexit984, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.w
  %indvars.iv371 = phi i64 [ %indvars.iv.next372.1, %bb.w ], [ %indvars.iv371.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %gep440 = getelementptr [4 x i8], ptr %invariant.gep439, i64 %indvars.iv371
  %i.air = load float, ptr %gep440, align 4, !tbaa !11
  %gep442 = getelementptr [4 x i8], ptr %invariant.gep441, i64 %indvars.iv371 ; 2 uses
  %i.ais = load float, ptr %gep442, align 4, !tbaa !11
  %i.ait = fsub reassoc nsz arcp contract afn float %i.ais, %i.air ; 4 uses
  %i.aiu = fcmp reassoc nsz arcp contract afn olt float %i.ait, %i.agr
  br i1 %i.aiu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %vec.epilog.scalar.ph
  %i.aiv = fadd reassoc nsz arcp contract afn float %i.ait, %i.agq
  br label %bb.p

bb.n:                                             ; preds = %vec.epilog.scalar.ph
  %i.aiw = fcmp reassoc nsz arcp contract afn ogt float %i.ait, %i.agq
  br i1 %i.aiw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aix = fsub reassoc nsz arcp contract afn float %i.ait, %i.agq
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.m
  %.sink = phi float [ %i.aix, %bb.o ], [ %i.aiv, %bb.m ], [ 0.000000e+00, %bb.n ] ; 2 uses
  store float %.sink, ptr %gep442, align 4, !tbaa !11
  br i1 %.not254, label %bb.q, label %vec.epilog.scalar.ph.1

bb.q:                                             ; preds = %bb.p
  %i.aiy = getelementptr inbounds nuw [4 x i8], ptr %.0231, i64 %indvars.iv371 ; 2 uses
  %i.aiz = load float, ptr %i.aiy, align 4, !tbaa !11
  %i.aja = fadd reassoc nsz arcp contract afn float %i.aiz, %.sink
  store float %i.aja, ptr %i.aiy, align 4, !tbaa !11
  br label %vec.epilog.scalar.ph.1

vec.epilog.scalar.ph.1:                           ; preds = %bb.p, %bb.q
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 3 uses
  %gep440.1 = getelementptr [4 x i8], ptr %invariant.gep439, i64 %indvars.iv.next372
  %i.ajb = load float, ptr %gep440.1, align 4, !tbaa !11
  %gep442.1 = getelementptr [4 x i8], ptr %invariant.gep441, i64 %indvars.iv.next372 ; 2 uses
  %i.ajc = load float, ptr %gep442.1, align 4, !tbaa !11
  %i.ajd = fsub reassoc nsz arcp contract afn float %i.ajc, %i.ajb ; 4 uses
  %i.aje = fcmp reassoc nsz arcp contract afn olt float %i.ajd, %i.agr
  br i1 %i.aje, label %bb.t, label %bb.r

bb.r:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ajf = fcmp reassoc nsz arcp contract afn ogt float %i.ajd, %i.agq
  br i1 %i.ajf, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ajg = fsub reassoc nsz arcp contract afn float %i.ajd, %i.agq
  br label %bb.u

bb.t:                                             ; preds = %vec.epilog.scalar.ph.1
  %i.ajh = fadd reassoc nsz arcp contract afn float %i.ajd, %i.agq
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sink.1 = phi float [ %i.ajg, %bb.s ], [ %i.ajh, %bb.t ], [ 0.000000e+00, %bb.r ] ; 2 uses
  store float %.sink.1, ptr %gep442.1, align 4, !tbaa !11
  br i1 %.not254, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %.0231, i64 %indvars.iv.next372 ; 2 uses
  %i.ajj = load float, ptr %i.aji, align 4, !tbaa !11
  %i.ajk = fadd reassoc nsz arcp contract afn float %i.ajj, %.sink.1
  store float %i.ajk, ptr %i.aji, align 4, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next372.1 = add nuw nsw i64 %indvars.iv371, 2 ; 2 uses
  %exitcond375.not.1 = icmp eq i64 %indvars.iv.next372.1, %wide.trip.count
  br i1 %exitcond375.not.1, label %.loopexit984, label %vec.epilog.scalar.ph, !llvm.loop !202

.loopexit984:                                     ; preds = %vec.epilog.scalar.ph.prol.loopexit, %bb.w, %vec.epilog.middle.block, %middle.block484
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond379.not = icmp eq i64 %indvars.iv.next377, 5
  br i1 %exitcond379.not, label %.preheader297, label %bb.g, !llvm.loop !203

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv380 = phi i64 [ %indvars.iv.next381, %scalar.ph ], [ %indvars.iv380.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %.0231, i64 %indvars.iv380
  %i.ajm = load float, ptr %i.ajl, align 4, !tbaa !11
  %gep444 = getelementptr [4 x i8], ptr %invariant.gep443, i64 %indvars.iv380
  %i.ajn = load float, ptr %gep444, align 4, !tbaa !11
  %i.ajo = fadd reassoc nsz arcp contract afn float %i.ajn, %i.ajm ; 2 uses
  %i.ajp = fmul reassoc nsz arcp contract afn float %i.ajo, %i.ajo
  %i.ajq = fmul reassoc nsz arcp contract afn float %i.ajp, f0x37800000
  %i.ajr = fptosi float %i.ajq to i32
  %i.ajs = tail call i32 @llvm.smax.i32(i32 %i.ajr, i32 0)
  %i.ajt = tail call i32 @llvm.umin.i32(i32 %i.ajs, i32 65535)
  %i.aju = trunc nuw i32 %i.ajt to i16
  %gep324 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv380
  store i16 %i.aju, ptr %gep324, align 2, !tbaa !115
  %indvars.iv.next381 = add nuw nsw i64 %indvars.iv380, 1 ; 2 uses
  %exitcond384.not = icmp eq i64 %indvars.iv.next381, %wide.trip.count
  br i1 %exitcond384.not, label %.loopexit985, label %scalar.ph, !llvm.loop !204

.loopexit985:                                     ; preds = %scalar.ph, %middle.block
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %exitcond389.not = icmp eq i64 %indvars.iv.next386, %wide.trip.count388
  br i1 %exitcond389.not, label %._crit_edge327, label %iter.check968, !llvm.loop !205

._crit_edge327:                                   ; preds = %.loopexit985
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.ajw = load i32, ptr %i.ajv, align 8, !tbaa !113 ; 8 uses
  %.not252 = icmp eq i32 %i.ajw, 0
  %brmerge = or i1 %i.an, %.not252
  br i1 %brmerge, label %.loopexit293, label %.preheader295

.preheader295:                                    ; preds = %._crit_edge327
  %i.ajx = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.ajy = lshr i32 %i.ajw, 4
  %i.ajz = and i32 %i.ajy, 2                      ; 2 uses
  %i.aka = zext nneg i32 %i.ajz to i64
  %i.akb = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.aka
  %i.akc = getelementptr inbounds nuw i8, ptr %i.akb, i64 4
  %i.akd = load float, ptr %i.akc, align 8, !tbaa !11 ; 2 uses
  %i.ake = and i32 %i.ajw, 2
  %i.akf = or disjoint i32 %i.ake, 1
  %i.akg = zext nneg i32 %i.akf to i64            ; 2 uses
  %i.akh = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.akg
  %i.aki = load float, ptr %i.akh, align 8, !tbaa !11
  %i.akj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akg
  %i.akk = load i32, ptr %i.akj, align 4, !tbaa !111
  store i32 %i.akk, ptr %i.b, align 4, !tbaa !111
  %i.akl = lshr i32 %i.ajw, 8
  %i.akm = and i32 %i.akl, 2
  %i.akn = zext nneg i32 %i.akm to i64
  %i.ako = getelementptr inbounds nuw [4 x i8], ptr %i.ajx, i64 %i.akn
  %i.akp = getelementptr inbounds nuw i8, ptr %i.ako, i64 4
  %i.akq = load float, ptr %i.akp, align 8, !tbaa !11
  %i.akr = insertelement <2 x float> poison, float %i.akd, i64 0
  %i.aks = insertelement <2 x float> %i.akr, float %i.akq, i64 1
  %i.akt = fmul reassoc nsz arcp contract afn <2 x float> %i.aks, splat (float 1.250000e-01)
  %i.aku = insertelement <2 x float> poison, float %i.aki, i64 0
  %i.akv = insertelement <2 x float> %i.aku, float %i.akd, i64 1
  %i.akw = fdiv reassoc nsz arcp contract afn <2 x float> %i.akt, %i.akv
  store <2 x float> %i.akw, ptr %i.a, align 8, !tbaa !11
  %i.akx = zext nneg i32 %i.ajz to i64
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.akx
  %i.akz = getelementptr inbounds nuw i8, ptr %i.aky, i64 4
  %i.ala = load i32, ptr %i.akz, align 4, !tbaa !111
  %i.alb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.ala, ptr %i.alb, align 4, !tbaa !111
  %i.alc = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ale = load i16, ptr %i.ald, align 4, !tbaa !206
  %i.alf = icmp ugt i16 %i.ale, 2
  br i1 %i.alf, label %.preheader.lr.ph, label %.loopexit293

.preheader.lr.ph:                                 ; preds = %.preheader295
  %i.alg = load i16, ptr %i.alc, align 2, !tbaa !207 ; 2 uses
  %i.alh = zext i16 %i.alg to i64                 ; 2 uses
  %.idx = shl nuw nsw i64 %i.alh, 2
  %i.ali = getelementptr inbounds nuw i8, ptr %.0231, i64 %.idx
  %i.alj = getelementptr inbounds nuw [2 x i8], ptr %.0231, i64 %i.alh
  %i.alk = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.alm = load float, ptr %i.all, align 4, !tbaa !191
  %i.aln = fmul reassoc nsz arcp contract afn float %i.alm, f0x3B000000 ; 4 uses
  %i.alo = fneg reassoc nsz arcp contract afn float %i.aln
  br label %.preheader

.loopexit291:                                     ; preds = %bb.ac, %._crit_edge337
  %i.alp = phi i16 [ %i.anf, %._crit_edge337 ], [ %i.aqo, %bb.ac ]
  %i.alq = load i16, ptr %i.ald, align 4, !tbaa !206
  %i.alr = zext i16 %i.alq to i32
  %i.als = add nsw i32 %i.alr, -1
  %i.alt = icmp slt i32 %1, %i.als
  %indvars.iv.next405 = add nuw nsw i32 %indvars.iv404, 1
  br i1 %i.alt, label %.preheader, label %.loopexit293, !llvm.loop !208

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit291
  %i.alu = phi i16 [ %i.alg, %.preheader.lr.ph ], [ %i.alp, %.loopexit291 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.ali, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit291 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.alj, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit291 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %.0231, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit291 ] ; 2 uses
  %indvars.iv404 = phi i32 [ 2, %.preheader.lr.ph ], [ %indvars.iv.next405, %.loopexit291 ] ; 3 uses
  %.0342 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit291 ] ; 3 uses
  %.3226341 = phi i32 [ 1, %.preheader.lr.ph ], [ %1, %.loopexit291 ] ; 5 uses
  %.not253334 = icmp sgt i32 %.0342, %.3226341
  br i1 %.not253334, label %._crit_edge337, label %.lr.ph336

.loopexit:                                        ; preds = %bb.x, %.lr.ph336
  %i.alv = phi i16 [ %i.alx, %.lr.ph336 ], [ %i.anc, %bb.x ] ; 2 uses
  %i.alw = phi i16 [ %i.aly, %.lr.ph336 ], [ %i.anc, %bb.x ]
  %exitcond406.not = icmp eq i32 %i.alz, %indvars.iv404
  br i1 %exitcond406.not, label %._crit_edge337, label %.lr.ph336, !llvm.loop !209

.lr.ph336:                                        ; preds = %.preheader, %.loopexit
  %i.alx = phi i16 [ %i.alv, %.loopexit ], [ %i.alu, %.preheader ]
  %i.aly = phi i16 [ %i.alw, %.loopexit ], [ %i.alu, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1335 = phi i32 [ %i.alz, %.loopexit ], [ %.0342, %.preheader ]
  %i.alz = add nsw i32 %.1335, 1                  ; 4 uses
  %i.ama = shl i32 %i.alz, 1
  %i.amb = and i32 %i.ama, 14                     ; 2 uses
  %i.amc = shl nuw nsw i32 %i.amb, 1
  %i.amd = or disjoint i32 %i.amc, 2
  %i.ame = lshr i32 %i.ajw, %i.amd                ; 2 uses
  %i.amf = and i32 %i.ame, 1                      ; 2 uses
  %i.amg = zext i16 %i.aly to i32
  %i.amh = icmp samesign ult i32 %i.amf, %i.amg
  br i1 %i.amh, label %.lr.ph333, label %.loopexit

.lr.ph333:                                        ; preds = %.lr.ph336
  %i.ami = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.amj = and i32 %i.ame, 1
  %i.amk = zext nneg i32 %i.amj to i64
  %i.aml = or disjoint i32 %i.amf, %i.amb
  %i.amm = shl nuw nsw i32 %i.aml, 1
  %i.amn = lshr i32 %i.ajw, %i.amm
  %i.amo = and i32 %i.amn, 3
  %i.amp = zext nneg i32 %i.amo to i64
  %invariant.gep445 = getelementptr [2 x i8], ptr %i.ami, i64 %i.amp
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph333, %bb.x
  %indvars.iv401 = phi i64 [ %i.amk, %.lr.ph333 ], [ %indvars.iv.next402, %bb.x ] ; 3 uses
  %i.amq = load i16, ptr %i.alk, align 4, !tbaa !210
  %i.amr = zext i16 %i.amq to i32                 ; 2 uses
  %i.ams = ashr i32 %i.alz, %i.amr
  %i.amt = load i16, ptr %i.d, align 2, !tbaa !45
  %i.amu = zext i16 %i.amt to i32
  %i.amv = mul nsw i32 %i.ams, %i.amu
  %i.amw = trunc nuw nsw i64 %indvars.iv401 to i32
  %i.amx = lshr i32 %i.amw, %i.amr
  %i.amy = add nsw i32 %i.amv, %i.amx
  %i.amz = sext i32 %i.amy to i64
  %gep446 = getelementptr [8 x i8], ptr %invariant.gep445, i64 %i.amz
  %i.ana = load i16, ptr %gep446, align 2, !tbaa !115
  %i.anb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv401
  store i16 %i.ana, ptr %i.anb, align 2, !tbaa !115
  %indvars.iv.next402 = add nuw nsw i64 %indvars.iv401, 2 ; 2 uses
  %i.anc = load i16, ptr %i.alc, align 2, !tbaa !207 ; 3 uses
  %i.and = zext i16 %i.anc to i64
  %i.ane = icmp samesign ult i64 %indvars.iv.next402, %i.and
  br i1 %i.ane, label %bb.x, label %.loopexit, !llvm.loop !211

._crit_edge337:                                   ; preds = %.loopexit, %.preheader
  %i.anf = phi i16 [ %i.alu, %.preheader ], [ %i.alv, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0342, %.preheader ], [ %indvars.iv404, %.loopexit ]
  %1 = add nuw nsw i32 %.3226341, 1               ; 2 uses
  %i.ang = shl nuw nsw i32 %.3226341, 1
  %i.anh = and i32 %i.ang, 14                     ; 2 uses
  %i.ani = shl nuw nsw i32 %i.anh, 1
  %i.anj = lshr i32 %i.ajw, %i.ani                ; 3 uses
  %i.ank = and i32 %i.anj, 1
  %i.anl = add nuw nsw i32 %i.ank, 1
  %i.anm = zext i16 %i.anf to i32
  %i.ann = add nsw i32 %i.anm, -1
  %i.ano = icmp slt i32 %i.anl, %i.ann
  br i1 %i.ano, label %.lr.ph340, label %.loopexit291

.lr.ph340:                                        ; preds = %._crit_edge337
  %i.anp = and i32 %.3226341, 1                   ; 2 uses
  %i.anq = xor i32 %i.anp, 1
  %i.anr = zext nneg i32 %i.anq to i64
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anr
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !111
  %i.anu = zext nneg i32 %i.anp to i64            ; 2 uses
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.anu
  %i.anw = load float, ptr %i.anv, align 4, !tbaa !11
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anu
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !111
  %i.anz = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.aoa = and i32 %i.anj, 1
  %i.aob = and i32 %i.anj, 1
  %narrow = add nuw nsw i32 %i.aob, 1
  %i.aoc = zext nneg i32 %narrow to i64
  %i.aod = shl i32 %i.ant, 2
  %i.aoe = or disjoint i32 %i.aoa, %i.anh
  %i.aof = shl nuw nsw i32 %i.aoe, 1
  %i.aog = xor i32 %i.aof, 2
  %i.aoh = lshr i32 %i.ajw, %i.aog
  %i.aoi = and i32 %i.aoh, 3
  %i.aoj = zext nneg i32 %i.aoi to i64
  %invariant.gep447 = getelementptr inbounds nuw [2 x i8], ptr %i.anz, i64 %i.aoj
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph340, %bb.ac
  %indvars.iv407 = phi i64 [ %i.aoc, %.lr.ph340 ], [ %indvars.iv.next408, %bb.ac ] ; 5 uses
  %i.aok = add nsw i64 %indvars.iv407, -1         ; 2 uses
  %i.aol = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.aok
  %i.aom = load i16, ptr %i.aol, align 2, !tbaa !115
  %i.aon = zext i16 %i.aom to i32
  %i.aoo = add nuw nsw i64 %indvars.iv407, 1      ; 2 uses
  %i.aop = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.aoo
  %i.aoq = load i16, ptr %i.aop, align 2, !tbaa !115
  %i.aor = zext i16 %i.aoq to i32
  %i.aos = add nuw nsw i32 %i.aor, %i.aon
  %i.aot = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.aok
  %i.aou = load i16, ptr %i.aot, align 2, !tbaa !115
  %i.aov = zext i16 %i.aou to i32
  %i.aow = add nuw nsw i32 %i.aos, %i.aov
  %i.aox = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.aoo
  %i.aoy = load i16, ptr %i.aox, align 2, !tbaa !115
  %i.aoz = zext i16 %i.aoy to i32
  %i.apa = add nuw nsw i32 %i.aow, %i.aoz
  %i.apb = sub i32 %i.apa, %i.aod
  %i.apc = sitofp reassoc nsz arcp contract afn i32 %i.apb to float
  %i.apd = fmul reassoc nsz arcp contract afn float %i.anw, %i.apc
  %i.ape = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv407
  %i.apf = load i16, ptr %i.ape, align 2, !tbaa !115
  %i.apg = zext i16 %i.apf to i32
  %i.aph = add nsw i32 %i.any, %i.apg
  %i.api = sitofp reassoc nsz arcp contract afn i32 %i.aph to float
  %i.apj = fmul reassoc nnan nsz arcp contract afn float %i.api, 5.000000e-01
  %i.apk = fadd reassoc nsz arcp contract afn float %i.apj, %i.apd ; 2 uses
  %i.apl = fcmp reassoc nsz arcp contract afn olt float %i.apk, 0.000000e+00
  %i.apm = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.apk)
  %i.apn = select reassoc nsz arcp contract afn i1 %i.apl, float 0.000000e+00, float %i.apm ; 2 uses
  %i.apo = load i16, ptr %i.alk, align 4, !tbaa !210
  %i.app = zext i16 %i.apo to i32                 ; 2 uses
  %i.apq = lshr i32 %.3226341, %i.app
  %i.apr = load i16, ptr %i.d, align 2, !tbaa !45
  %i.aps = zext i16 %i.apr to i32
  %i.apt = mul nuw nsw i32 %i.apq, %i.aps
  %i.apu = trunc nuw nsw i64 %indvars.iv407 to i32
  %i.apv = lshr i32 %i.apu, %i.app
  %i.apw = add nuw nsw i32 %i.apt, %i.apv
  %i.apx = zext nneg i32 %i.apw to i64
  %gep448 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep447, i64 %i.apx ; 2 uses
  %i.apy = load i16, ptr %gep448, align 2, !tbaa !115
  %i.apz = uitofp reassoc nsz arcp contract afn i16 %i.apy to float
  %i.aqa = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.apz)
  %i.aqb = fsub reassoc nsz arcp contract afn float %i.aqa, %i.apn ; 4 uses
  %i.aqc = fcmp reassoc nsz arcp contract afn olt float %i.aqb, %i.alo
  br i1 %i.aqc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.aqd = fadd reassoc nsz arcp contract afn float %i.aqb, %i.aln
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.aqe = fcmp reassoc nsz arcp contract afn ogt float %i.aqb, %i.aln
  br i1 %i.aqe, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.aqf = fsub reassoc nsz arcp contract afn float %i.aqb, %i.aln
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.0233 = phi nsz float [ %i.aqd, %bb.z ], [ %i.aqf, %bb.ab ], [ 0.000000e+00, %bb.aa ]
  %i.aqg = fadd reassoc nsz arcp contract afn float %.0233, %i.apn ; 2 uses
  %i.aqh = fmul reassoc nsz arcp contract afn float %i.aqg, %i.aqg
  %i.aqi = fpext reassoc nsz arcp contract afn float %i.aqh to double
  %i.aqj = fadd reassoc nsz arcp contract afn double %i.aqi, 5.000000e-01
  %i.aqk = fptosi double %i.aqj to i32
  %i.aql = tail call i32 @llvm.smax.i32(i32 %i.aqk, i32 0)
  %i.aqm = tail call i32 @llvm.umin.i32(i32 %i.aql, i32 65535)
  %i.aqn = trunc nuw i32 %i.aqm to i16
  store i16 %i.aqn, ptr %gep448, align 2, !tbaa !115
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 2 ; 2 uses
  %i.aqo = load i16, ptr %i.alc, align 2, !tbaa !207 ; 2 uses
  %i.aqp = zext i16 %i.aqo to i64
  %i.aqq = add nsw i64 %i.aqp, -1
  %i.aqr = icmp slt i64 %indvars.iv.next408, %i.aqq
  br i1 %i.aqr, label %bb.y, label %.loopexit291, !llvm.loop !212

.loopexit293:                                     ; preds = %.loopexit291, %bb.f, %.preheader295, %._crit_edge327
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %.0231)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.b, %.loopexit293
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
  %i.a = alloca [9 x i32], align 16               ; 29 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5484 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !213  ; 2 uses
  %.not79 = icmp slt i32 %i.d, 1
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge77.1
  %i.z = phi i32 [ %i.d, %.lr.ph82 ], [ %i.mr, %._crit_edge77.1 ]
  %.05080 = phi i32 [ 1, %.lr.ph82 ], [ %i.mq, %._crit_edge77.1 ] ; 3 uses
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !214 ; 2 uses
  %.not57 = icmp eq ptr %i.aa, null
  br i1 %.not57, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.f, align 8, !tbaa !215
  %i.ac = add nsw i32 %.05080, -1
  %i.ad = tail call noundef i32 %i.aa(ptr noundef %i.ab, i32 noundef 8192, i32 noundef %i.ac, i32 noundef %i.z)
  %.not58 = icmp eq i32 %i.ad, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = tail call ptr @__cxa_allocate_exception(i64 4) #10 ; 2 uses
  store i32 6, ptr %i.ae, align 16, !tbaa !216
  tail call void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #11
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !114 ; 9 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ah = load i16, ptr %i.g, align 2, !tbaa !207 ; 2 uses
  %i.ai = zext i16 %i.ah to i64                   ; 2 uses
  %i.aj = load i16, ptr %i.h, align 4, !tbaa !206 ; 2 uses
  %i.ak = zext i16 %i.aj to i64
  %i.al = mul nuw nsw i64 %i.ak, %i.ai
  %.not84 = icmp eq i64 %i.al, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.065 = phi ptr [ %i.ao, %.lr.ph ], [ %i.af, %bb.e ] ; 3 uses
  %i.am = load i16, ptr %.065, align 2, !tbaa !115
  %i.an = getelementptr inbounds nuw i8, ptr %.065, i64 6
  store i16 %i.am, ptr %i.an, align 2, !tbaa !115
  %i.ao = getelementptr inbounds nuw i8, ptr %.065, i64 8 ; 2 uses
  %i.ap = load i16, ptr %i.g, align 2, !tbaa !207 ; 2 uses
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = load i16, ptr %i.h, align 4, !tbaa !206 ; 2 uses
  %i.as = zext i16 %i.ar to i64
  %i.at = mul nuw nsw i64 %i.as, %i.aq
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.at
  %i.av = icmp ult ptr %i.ao, %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !218

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ %i.ai, %bb.e ], [ %i.aq, %.lr.ph ] ; 3 uses
  %i.aw = phi i16 [ %i.aj, %bb.e ], [ %i.ar, %.lr.ph ] ; 3 uses
  %i.ax = phi i16 [ %i.ah, %bb.e ], [ %i.ap, %.lr.ph ] ; 3 uses
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = zext i16 %i.aw to i32
  %i.ba = add nsw i32 %i.az, -1
  %i.bb = mul nsw i32 %i.ba, %i.ay
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %.pre-phi, %i.bc
  br i1 %i.bd, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.pre-phi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %bb.l
  %i.bf = phi i16 [ %i.aw, %.lr.ph76 ], [ %i.gb, %bb.l ]
  %i.bg = phi i16 [ %i.ax, %.lr.ph76 ], [ %i.gc, %bb.l ] ; 2 uses
  %i.bh = phi i32 [ %i.ay, %.lr.ph76 ], [ %i.ge, %bb.l ] ; 2 uses
  %.174 = phi ptr [ %i.be, %.lr.ph76 ], [ %i.gd, %bb.l ] ; 13 uses
  %i.bi = ptrtoint ptr %.174 to i64
  %i.bj = sub i64 %i.bi, %i.ag
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = add nsw i64 %i.bk, 1
  %i.bm = zext i16 %i.bg to i64
  %i.bn = srem i64 %i.bl, %i.bm
  %i.bo = icmp slt i64 %i.bn, 2
  br i1 %i.bo, label %bb.l, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.f
  %i.bp = zext nneg i32 %i.bh to i64              ; 2 uses
  %narrow = xor i32 %i.bh, -1
  %i.bq = sext i32 %narrow to i64                 ; 4 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %.174, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !115
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !115
  %i.bx = zext i16 %i.bw to i32
  %i.by = sub nsw i32 %i.bu, %i.bx
  store i32 %i.by, ptr %i.a, align 8, !tbaa !111
  %i.bz = getelementptr [8 x i8], ptr %.174, i64 %i.bq ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 14
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !115
  %i.cc = zext i16 %i.cb to i32
  %i.cd = getelementptr i8, ptr %i.bz, i64 10
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !115
  %i.cf = zext i16 %i.ce to i32
  %i.cg = sub nsw i32 %i.cc, %i.cf
  store i32 %i.cg, ptr %i.j, align 4, !tbaa !111
  %i.ch = getelementptr [8 x i8], ptr %.174, i64 %i.bq ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 22
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !115
  %i.ck = zext i16 %i.cj to i32
  %i.cl = getelementptr i8, ptr %i.ch, i64 18
end_hunk_0
