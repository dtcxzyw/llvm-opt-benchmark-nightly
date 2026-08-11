inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@siren_decode:bb.a
  br label %bb.bm

bb.bm:                                            ; preds = %thread-pre-split, %decode_vector.exit
  %.val172 = phi i32 [ %.val172.pre, %thread-pre-split ], [ %.val157.i, %decode_vector.exit ] ; 2 uses
  %.promoted248 = phi i32 [ %.val171.pre, %thread-pre-split ], [ %.val.i186, %decode_vector.exit ] ; 4 uses
  %i.aih = phi i32 [ %.pr, %thread-pre-split ], [ %i.aha, %decode_vector.exit ] ; 6 uses
  %i.aii = sub nsw i32 %.val172, %.promoted248    ; 2 uses
  %i.aij = icmp sgt i32 %i.aii, %i.aih
  br i1 %i.aij, label %.preheader230, label %bb.bo

.preheader230:                                    ; preds = %bb.bm
  %i.aik = load ptr, ptr %i.e, align 16, !tbaa !59
  %i.ail = load i32, ptr %i.am, align 16, !tbaa !61
  br label %bb.bn

bb.bn:                                            ; preds = %.preheader230, %bb.bn
  %i.aim = phi i32 [ %spec.select.i198, %bb.bn ], [ %.promoted248, %.preheader230 ] ; 4 uses
  %.0144 = phi i32 [ %i.aiz, %bb.bn ], [ 0, %.preheader230 ]
  %i.ain = lshr i32 %i.aim, 3
  %i.aio = zext nneg i32 %i.ain to i64
  %i.aip = getelementptr inbounds nuw i8, ptr %i.aik, i64 %i.aio
  %i.aiq = load i8, ptr %i.aip, align 1, !tbaa !33
  %i.air = icmp slt i32 %i.aim, %i.ail
  %i.ais = zext i1 %i.air to i32
  %spec.select.i198 = add i32 %i.aim, %i.ais      ; 4 uses
  %i.ait = zext i8 %i.aiq to i32
  %i.aiu = and i32 %i.aim, 7
  %i.aiv = shl nuw nsw i32 %i.ait, %i.aiu
  %i.aiw = lshr i32 %i.aiv, 7
  store i32 %spec.select.i198, ptr %i.al, align 8, !tbaa !62
  %i.aix = and i32 %i.aiw, 1
  %i.aiy = xor i32 %i.aix, 1
  %i.aiz = or i32 %i.aiy, %.0144                  ; 2 uses
  %i.aja = sub nsw i32 %.val172, %spec.select.i198
  %i.ajb = icmp sgt i32 %i.aja, %i.aih
  br i1 %i.ajb, label %bb.bn, label %.loopexit, !llvm.loop !91

bb.bo:                                            ; preds = %bb.bm
  %i.ajc = icmp slt i32 %i.aii, %i.aih
  br i1 %i.ajc, label %bb.bp, label %.loopexit

bb.bp:                                            ; preds = %bb.bo
  %i.ajd = add nuw nsw i32 %i.dd, 1
  %i.aje = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !92
  %i.ajg = icmp slt i32 %i.ajd, %i.ajf
  %spec.select = zext i1 %i.ajg to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bn, %bb.bp, %bb.bo
  %i.ajh = phi i32 [ %.promoted248, %bb.bp ], [ %.promoted248, %bb.bo ], [ %spec.select.i198, %bb.bn ] ; 3 uses
  %.1145 = phi i32 [ %spec.select, %bb.bp ], [ 0, %bb.bo ], [ %i.aiz, %bb.bn ] ; 3 uses
  br i1 %i.ta, label %.lr.ph252.preheader, label %._crit_edge253

.lr.ph252.preheader:                              ; preds = %.loopexit
  %wide.trip.count288 = zext nneg i32 %i.sx to i64 ; 3 uses
  %min.iters.check368 = icmp ult i32 %i.sx, 8
  br i1 %min.iters.check368, label %.lr.ph252.preheader398, label %vector.ph369

vector.ph369:                                     ; preds = %.lr.ph252.preheader
  %n.vec370 = and i64 %wide.trip.count288, 2147483640 ; 3 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph369
  %index372 = phi i64 [ 0, %vector.ph369 ], [ %index.next375, %vector.body371 ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph369 ], [ %i.ajo, %vector.body371 ]
  %vec.phi373 = phi <4 x i1> [ zeroinitializer, %vector.ph369 ], [ %i.ajp, %vector.body371 ]
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index372 ; 2 uses
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.aji, i64 16
  %wide.load = load <4 x i32>, ptr %i.aji, align 4, !tbaa !32
  %wide.load374 = load <4 x i32>, ptr %i.ajj, align 4, !tbaa !32
  %i.ajk = add <4 x i32> %wide.load, splat (i32 -34)
  %i.ajl = add <4 x i32> %wide.load374, splat (i32 -34)
  %i.ajm = icmp ult <4 x i32> %i.ajk, splat (i32 -65)
  %i.ajn = icmp ult <4 x i32> %i.ajl, splat (i32 -65)
  %i.ajo = or <4 x i1> %vec.phi, %i.ajm           ; 2 uses
  %i.ajp = or <4 x i1> %vec.phi373, %i.ajn        ; 2 uses
  %index.next375 = add nuw i64 %index372, 8       ; 2 uses
  %i.ajq = icmp eq i64 %index.next375, %n.vec370
  br i1 %i.ajq, label %middle.block376, label %vector.body371, !llvm.loop !93

middle.block376:                                  ; preds = %vector.body371
  %bin.rdx = or <4 x i1> %i.ajp, %i.ajo
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ajr = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not395 = icmp eq i4 %i.ajr, 0
  %rdx.select = select i1 %.not395, i32 %.1145, i32 1 ; 2 uses
  %cmp.n377 = icmp eq i64 %n.vec370, %wide.trip.count288
  br i1 %cmp.n377, label %._crit_edge253, label %.lr.ph252.preheader398

.lr.ph252.preheader398:                           ; preds = %.lr.ph252.preheader, %middle.block376
  %indvars.iv285.ph = phi i64 [ 0, %.lr.ph252.preheader ], [ %n.vec370, %middle.block376 ]
  %.2250.ph = phi i32 [ %.1145, %.lr.ph252.preheader ], [ %rdx.select, %middle.block376 ]
  br label %.lr.ph252

._crit_edge253:                                   ; preds = %.lr.ph252, %middle.block376, %.loopexit
  %.2.lcssa = phi i32 [ %.1145, %.loopexit ], [ %rdx.select, %middle.block376 ], [ %.3, %.lr.ph252 ]
  %i.ajs = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.ajt = load i32, ptr %i.ajs, align 8, !tbaa !94
  %i.aju = and i32 %i.ajt, 1
  %.not161 = icmp eq i32 %i.aju, 0
  %.not162 = icmp eq i32 %i.aih, 0
  %or.cond210 = or i1 %.not162, %.not161
  br i1 %or.cond210, label %bb.bs, label %bb.bq

.lr.ph252:                                        ; preds = %.lr.ph252.preheader398, %.lr.ph252
  %indvars.iv285 = phi i64 [ %indvars.iv.next286, %.lr.ph252 ], [ %indvars.iv285.ph, %.lr.ph252.preheader398 ] ; 2 uses
  %.2250 = phi i32 [ %.3, %.lr.ph252 ], [ %.2250.ph, %.lr.ph252.preheader398 ]
  %i.ajv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv285
  %i.ajw = load i32, ptr %i.ajv, align 4, !tbaa !32
  %i.ajx = add i32 %i.ajw, -34
  %or.cond = icmp ult i32 %i.ajx, -65
  %.3 = select i1 %or.cond, i32 1, i32 %.2250     ; 2 uses
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 2 uses
  %exitcond289.not = icmp eq i64 %indvars.iv.next286, %wide.trip.count288
  br i1 %exitcond289.not, label %._crit_edge253, label %.lr.ph252, !llvm.loop !95

bb.bq:                                            ; preds = %._crit_edge253
  %i.ajy = load i32, ptr %i.am, align 16, !tbaa !61
  %i.ajz = load ptr, ptr %i.e, align 16, !tbaa !59
  %i.aka = lshr i32 %i.ajh, 3
  %i.akb = zext nneg i32 %i.aka to i64
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajz, i64 %i.akb
  %i.akd = load i32, ptr %i.akc, align 1, !tbaa !33
  %i.ake = tail call i32 @llvm.bswap.i32(i32 %i.akd)
  %i.akf = and i32 %i.ajh, 7
  %i.akg = shl i32 %i.ake, %i.akf
  %i.akh = sub nsw i32 32, %i.aih
  %i.aki = lshr i32 %i.akg, %i.akh                ; 2 uses
  %i.akj = add i32 %i.ajh, %i.aih
  %i.akk = tail call i32 @llvm.umin.i32(i32 %i.ajy, i32 %i.akj)
  store i32 %i.akk, ptr %i.al, align 8, !tbaa !62
  %i.akl = sdiv i32 %.0149, 16
  %i.akm = add nsw i32 %i.akl, -1                 ; 3 uses
  %i.akn = icmp sgt i32 %.0149, 31
  %i.ako = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akp = load ptr, ptr %i.ako, align 8, !tbaa !58 ; 3 uses
  br i1 %i.akn, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %bb.bq
  %smax = tail call i32 @llvm.smax.i32(i32 %i.akm, i32 1)
  %wide.trip.count293 = zext nneg i32 %smax to i64 ; 3 uses
  %min.iters.check380 = icmp slt i32 %.0149, 144
  br i1 %min.iters.check380, label %scalar.ph379.preheader, label %vector.ph381

vector.ph381:                                     ; preds = %.lr.ph257
  %n.vec382 = and i64 %wide.trip.count293, 2147483640 ; 3 uses
  br label %vector.body383

vector.body383:                                   ; preds = %vector.body383, %vector.ph381
  %index384 = phi i64 [ 0, %vector.ph381 ], [ %index.next389, %vector.body383 ] ; 2 uses
  %vec.phi385 = phi <4 x i32> [ zeroinitializer, %vector.ph381 ], [ %i.alb, %vector.body383 ]
  %vec.phi386 = phi <4 x i32> [ zeroinitializer, %vector.ph381 ], [ %i.alc, %vector.body383 ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph381 ], [ %vec.ind.next, %vector.body383 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.akq = shl nuw nsw i64 %index384, 1
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.akq ; 2 uses
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %wide.load387 = load <4 x i16>, ptr %i.akr, align 1, !tbaa !33
  %wide.load388 = load <4 x i16>, ptr %i.aks, align 1, !tbaa !33
  %i.akt = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load387)
  %i.aku = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load388)
  %i.akv = zext <4 x i16> %i.akt to <4 x i32>
  %i.akw = zext <4 x i16> %i.aku to <4 x i32>
  %i.akx = urem <4 x i32> %vec.ind, splat (i32 15)
  %i.aky = urem <4 x i32> %step.add, splat (i32 15)
  %i.akz = shl nuw nsw <4 x i32> %i.akv, %i.akx
  %i.ala = shl nuw nsw <4 x i32> %i.akw, %i.aky
  %i.alb = xor <4 x i32> %i.akz, %vec.phi385      ; 2 uses
  %i.alc = xor <4 x i32> %i.ala, %vec.phi386      ; 2 uses
  %index.next389 = add nuw i64 %index384, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ald = icmp eq i64 %index.next389, %n.vec382
  br i1 %i.ald, label %middle.block390, label %vector.body383, !llvm.loop !96

middle.block390:                                  ; preds = %vector.body383
  %bin.rdx391 = xor <4 x i32> %i.alc, %i.alb
  %i.ale = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx391) ; 2 uses
  %cmp.n392 = icmp eq i64 %n.vec382, %wide.trip.count293
  br i1 %cmp.n392, label %._crit_edge258, label %scalar.ph379.preheader

scalar.ph379.preheader:                           ; preds = %.lr.ph257, %middle.block390
  %indvars.iv290.ph = phi i64 [ 0, %.lr.ph257 ], [ %n.vec382, %middle.block390 ]
  %.0143254.ph = phi i32 [ 0, %.lr.ph257 ], [ %i.ale, %middle.block390 ]
  br label %scalar.ph379

._crit_edge258:                                   ; preds = %scalar.ph379, %middle.block390, %bb.bq
  %.0143.lcssa = phi i32 [ 0, %bb.bq ], [ %i.ale, %middle.block390 ], [ %i.amx, %scalar.ph379 ]
  %i.alf = shl nsw i32 %i.akm, 1
  %i.alg = sext i32 %i.alf to i64
  %i.alh = getelementptr inbounds i8, ptr %i.akp, i64 %i.alg
  %i.ali = load i16, ptr %i.alh, align 1, !tbaa !33
  %i.alj = tail call i16 @llvm.bswap.i16(i16 %i.ali)
  %i.alk = zext i16 %i.alj to i32
  %i.all = xor i32 %i.aki, -1
  %i.alm = and i32 %i.alk, %i.all
  %i.aln = srem i32 %i.akm, 15
  %i.alo = shl nuw nsw i32 %i.alm, %i.aln
  %i.alp = xor i32 %i.alo, %.0143.lcssa           ; 2 uses
  %i.alq = lshr i32 %i.alp, 15
  %i.alr = xor i32 %i.alq, %i.alp                 ; 4 uses
  %i.als = and i32 %i.alr, 32640                  ; 2 uses
  %i.alt = lshr i32 %i.als, 8
  %i.alu = or disjoint i32 %i.alt, %i.als         ; 2 uses
  %i.alv = lshr i32 %i.alu, 4
  %i.alw = xor i32 %i.alv, %i.alu                 ; 2 uses
  %i.alx = lshr i32 %i.alw, 2
  %i.aly = xor i32 %i.alx, %i.alw                 ; 2 uses
  %i.alz = and i32 %i.alr, 30840                  ; 2 uses
  %i.ama = lshr i32 %i.alz, 8
  %i.amb = xor i32 %i.ama, %i.alz                 ; 2 uses
  %i.amc = lshr i32 %i.amb, 4
  %i.amd = or disjoint i32 %i.amc, %i.amb         ; 2 uses
  %i.ame = lshr i32 %i.amd, 2
  %i.amf = xor i32 %i.ame, %i.amd                 ; 2 uses
  %i.amg = lshr i32 %i.amf, 1
  %i.amh = xor i32 %i.amg, %i.amf
  %i.ami = shl nuw nsw i32 %i.aly, 1
  %i.amj = xor i32 %i.aly, %i.ami
  %i.amk = and i32 %i.amj, 2
  %i.aml = and i32 %i.amh, 1
  %i.amm = or disjoint i32 %i.aml, %i.amk
  %4 = and i32 %i.alr, 26214                      ; 2 uses
  %5 = lshr i32 %4, 8
  %6 = xor i32 %5, %4                             ; 2 uses
  %7 = lshr i32 %6, 4
  %8 = xor i32 %7, %6                             ; 2 uses
  %9 = lshr i32 %8, 2
  %10 = xor i32 %9, %8                            ; 2 uses
  %11 = and i32 %i.alr, 21845                     ; 2 uses
  %12 = lshr i32 %11, 8
  %13 = xor i32 %12, %11                          ; 2 uses
  %14 = lshr i32 %13, 4
  %15 = xor i32 %14, %13                          ; 2 uses
  %16 = lshr i32 %15, 2
  %17 = xor i32 %16, %15                          ; 2 uses
  %18 = lshr i32 %17, 1
  %19 = xor i32 %18, %17
  %20 = shl nuw nsw i32 %i.amm, 2
  %21 = shl nuw nsw i32 %10, 1
  %22 = xor i32 %10, %21
  %23 = and i32 %22, 2
  %i.amn = or disjoint i32 %20, %23
  %24 = and i32 %19, 1
  %i.amo = or disjoint i32 %24, %i.amn
  %.not163 = icmp eq i32 %i.aki, %i.amo
  br i1 %.not163, label %bb.bs, label %bb.br

scalar.ph379:                                     ; preds = %scalar.ph379.preheader, %scalar.ph379
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %scalar.ph379 ], [ %indvars.iv290.ph, %scalar.ph379.preheader ] ; 3 uses
  %.0143254 = phi i32 [ %i.amx, %scalar.ph379 ], [ %.0143254.ph, %scalar.ph379.preheader ]
  %i.amp = shl nuw nsw i64 %indvars.iv290, 1
  %i.amq = getelementptr inbounds nuw i8, ptr %i.akp, i64 %i.amp
  %i.amr = load i16, ptr %i.amq, align 1, !tbaa !33
  %i.ams = tail call i16 @llvm.bswap.i16(i16 %i.amr)
  %i.amt = zext i16 %i.ams to i32
  %i.amu = trunc nuw nsw i64 %indvars.iv290 to i32
  %i.amv = urem i32 %i.amu, 15
  %i.amw = shl nuw nsw i32 %i.amt, %i.amv
  %i.amx = xor i32 %i.amw, %.0143254              ; 2 uses
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %exitcond294.not = icmp eq i64 %indvars.iv.next291, %wide.trip.count293
  br i1 %exitcond294.not, label %._crit_edge258, label %scalar.ph379, !llvm.loop !97

bb.br:                                            ; preds = %._crit_edge258
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4) #8
  %i.amy = load i32, ptr %i.ajs, align 8, !tbaa !94
  %i.amz = and i32 %i.amy, 8
  %.not164 = icmp eq i32 %i.amz, 0
  br i1 %.not164, label %..thread_crit_edge, label %.critedge

..thread_crit_edge:                               ; preds = %bb.br
  %.pre307 = load ptr, ptr %i.sy, align 8, !tbaa !74
  br label %.thread

bb.bs:                                            ; preds = %._crit_edge258, %._crit_edge253
  %.not165 = icmp eq i32 %.2.lcssa, 0
  %.pre308 = load ptr, ptr %i.sy, align 8, !tbaa !74 ; 2 uses
  br i1 %.not165, label %bb.bt, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.bs
  %i.ana = phi ptr [ %.pre307, %..thread_crit_edge ], [ %.pre308, %bb.bs ]
  %i.anb = getelementptr inbounds nuw i8, ptr %i.e, i64 836 ; 2 uses
  %i.anc = sext i32 %i.h to i64
  %i.and = shl nsw i64 %i.anc, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ana, ptr nonnull align 4 %i.anb, i64 %i.and, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.anb, i8 0, i64 %i.and, i1 false)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ane = getelementptr inbounds nuw i8, ptr %i.e, i64 836
  %i.anf = sext i32 %i.h to i64
  %i.ang = shl nsw i64 %i.anf, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ane, ptr align 4 %.pre308, i64 %i.ang, i1 false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.thread
  %i.anh = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 320, ptr %i.anh, align 8, !tbaa !98
  %i.ani = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.anj = icmp slt i32 %i.ani, 0
  br i1 %i.anj, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.bu
  %i.ank = load ptr, ptr %i.sy, align 8, !tbaa !74 ; 6 uses
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bw
  %i.anl = getelementptr inbounds nuw i8, ptr %i.e, i64 2128
  %i.anm = load ptr, ptr %i.anl, align 16, !tbaa !103
  %i.ann = getelementptr inbounds nuw i8, ptr %i.e, i64 2136
  %i.ano = load ptr, ptr %i.ann, align 8, !tbaa !104
  %i.anp = getelementptr inbounds nuw i8, ptr %i.e, i64 7280 ; 4 uses
  %i.anq = load ptr, ptr %i.anp, align 16, !tbaa !105
  tail call void %i.anm(ptr noundef %i.ano, ptr noundef %i.anq, ptr noundef nonnull %i.ank, i64 noundef 4) #8
  %i.anr = getelementptr inbounds nuw i8, ptr %i.e, i64 2120
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !47
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 40
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !106
  %i.anv = load ptr, ptr %1, align 8, !tbaa !108
  %i.anw = getelementptr inbounds nuw i8, ptr %i.e, i64 7288
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !109
  %i.any = getelementptr inbounds nuw i8, ptr %i.anx, i64 640
  %i.anz = load ptr, ptr %i.anp, align 16, !tbaa !105
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.e, i64 7264
  %i.aob = load ptr, ptr %i.aoa, align 16, !tbaa !40
  tail call void %i.anu(ptr noundef %i.anv, ptr noundef nonnull %i.any, ptr noundef %i.anz, ptr noundef %i.aob, i32 noundef 160) #8
  %i.aoc = load <2 x ptr>, ptr %i.anp, align 16, !tbaa !30
  %i.aod = shufflevector <2 x ptr> %i.aoc, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aod, ptr %i.anp, align 16, !tbaa !30
  store i32 1, ptr %2, align 4, !tbaa !32
  %i.aoe = load i32, ptr %i.i, align 8, !tbaa !52
  %.not166 = icmp eq i32 %i.aoe, 0
  br i1 %.not166, label %bb.by, label %bb.bx

bb.bw:                                            ; preds = %bb.bw, %.preheader
  %indvars.iv299 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next300.4, %bb.bw ] ; 7 uses
  %i.aof = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv299 ; 2 uses
  %i.aog = load float, ptr %i.aof, align 4, !tbaa !9
  %i.aoh = fneg nsz float %i.aog
  store float %i.aoh, ptr %i.aof, align 4, !tbaa !9
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv299
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 8 ; 2 uses
  %i.aok = load float, ptr %i.aoj, align 4, !tbaa !9
  %i.aol = fneg nsz float %i.aok
  store float %i.aol, ptr %i.aoj, align 4, !tbaa !9
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv299
  %i.aon = getelementptr inbounds nuw i8, ptr %i.aom, i64 16 ; 2 uses
  %i.aoo = load float, ptr %i.aon, align 4, !tbaa !9
  %i.aop = fneg nsz float %i.aoo
  store float %i.aop, ptr %i.aon, align 4, !tbaa !9
  %i.aoq = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv299
  %i.aor = getelementptr inbounds nuw i8, ptr %i.aoq, i64 24 ; 2 uses
  %i.aos = load float, ptr %i.aor, align 4, !tbaa !9
  %i.aot = fneg nsz float %i.aos
  store float %i.aot, ptr %i.aor, align 4, !tbaa !9
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.ank, i64 %indvars.iv299
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 32 ; 2 uses
  %i.aow = load float, ptr %i.aov, align 4, !tbaa !9
  %i.aox = fneg nsz float %i.aow
  store float %i.aox, ptr %i.aov, align 4, !tbaa !9
  %indvars.iv.next300.4 = add nuw nsw i64 %indvars.iv299, 10
  %i.aoy = icmp samesign ult i64 %indvars.iv299, 310
  br i1 %i.aoy, label %bb.bw, label %bb.bv, !llvm.loop !110

bb.bx:                                            ; preds = %bb.bv
  %i.aoz = sdiv i32 %.0149, 8
  br label %.critedge

bb.by:                                            ; preds = %bb.bv
  %i.apa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.apb = load i32, ptr %i.apa, align 8, !tbaa !55
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %categorize_regions.exit.thread, %bb.br, %bb.bx, %bb.by, %bb.bu, %decode_vector.exit.thread, %decode_envelope.exit, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ %spec.select.i.i, %decode_envelope.exit ], [ %i.aif, %decode_vector.exit.thread ], [ %i.ani, %bb.bu ], [ %i.apb, %bb.by ], [ -1094995529, %categorize_regions.exit.thread ], [ %i.aoz, %bb.bx ], [ -1094995529, %bb.br ], [ -1094995529, %bb.f ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @siren_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2120
  tail call void @av_freep(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 2136
  tail call void @av_tx_uninit(ptr noundef nonnull %i.d) #8
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @siren_flush(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 836
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 7288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %i.e, i8 0, i64 1280, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 7280
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %i.g, i8 0, i64 1280, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @avpriv_float_dsp_alloc(i32 noundef) local_unnamed_addr #4

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

end_hunk_0
