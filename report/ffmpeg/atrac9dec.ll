Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/atrac9dec?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 17
begin_hunk_0_@atrac9_decode_frame:bb.a
  %i.amc = call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.amb)
  %op.rdx = add i32 %i.amc, 6
  %i.amd = sdiv i32 %op.rdx, 12
  br label %.lr.ph.preheader.i278.i

bb.bt:                                            ; preds = %bb.bs
  %i.ame = icmp samesign ugt i32 %i.alo, 8
  br i1 %i.ame, label %.lr.ph.preheader.i278.i, label %._crit_edge.i277.i

.lr.ph.preheader.i278.i:                          ; preds = %bb.bt, %.thread.i.i
  %.119.i.i = phi i32 [ %i.amd, %.thread.i.i ], [ 0, %bb.bt ]
  %.pre.i280.i.in = getelementptr i8, ptr %i.vu, i64 56
  %.pre.i280.i = load i32, ptr %.pre.i280.i.in, align 8, !tbaa !39 ; 2 uses
  %i.amf = add nsw i64 %i.alw, -8                 ; 3 uses
  %min.iters.check588 = icmp ult i64 %i.amf, 4
  br i1 %min.iters.check588, label %.lr.ph.i281.i.preheader, label %vector.ph589

vector.ph589:                                     ; preds = %.lr.ph.preheader.i278.i
  %n.vec590 = and i64 %i.amf, -4                  ; 3 uses
  %i.amg = add nsw i64 %n.vec590, 8
  %vector.recur.init = insertelement <4 x i32> poison, i32 %.pre.i280.i, i64 3
  br label %vector.body591

vector.body591:                                   ; preds = %pred.store.continue600, %vector.ph589
  %index592 = phi i64 [ 0, %vector.ph589 ], [ %index.next601, %pred.store.continue600 ] ; 6 uses
  %vector.recur = phi <4 x i32> [ %vector.recur.init, %vector.ph589 ], [ %wide.load594, %pred.store.continue600 ]
  %i.amh = add nuw i64 %index592, 8               ; 2 uses
  %i.ami = getelementptr [4 x i8], ptr %i.wo, i64 %i.amh
  %i.amj = getelementptr i8, ptr %i.ami, i64 -4
  %wide.load593 = load <4 x i32>, ptr %i.amj, align 4, !tbaa !39 ; 2 uses
  %i.amk = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %index592
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 36
  %wide.load594 = load <4 x i32>, ptr %i.aml, align 4, !tbaa !39 ; 5 uses
  %i.amm = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load594, <4 x i32> <i32 3, i32 4, i32 5, i32 6> ; 2 uses
  %i.amn = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load593, <4 x i32> %wide.load594)
  %i.amo = sub nsw <4 x i32> %i.amm, %i.amn
  %i.amp = icmp sgt <4 x i32> %i.amo, splat (i32 2)
  %i.amq = shl nsw <4 x i32> %i.amm, splat (i32 1)
  %i.amr = add <4 x i32> %wide.load593, %wide.load594
  %i.ams = sub <4 x i32> %i.amq, %i.amr
  %i.amt = icmp sgt <4 x i32> %i.ams, splat (i32 2)
  %i.amu = select <4 x i1> %i.amp, <4 x i1> splat (i1 true), <4 x i1> %i.amt ; 4 uses
  %i.amv = extractelement <4 x i1> %i.amu, i64 0
  br i1 %i.amv, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body591
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %i.amh
  store i32 1, ptr %i.amw, align 4, !tbaa !39
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body591
  %i.amx = extractelement <4 x i1> %i.amu, i64 1
  br i1 %i.amx, label %pred.store.if595, label %pred.store.continue596

pred.store.if595:                                 ; preds = %pred.store.continue
  %i.amy = getelementptr [4 x i8], ptr %i.als, i64 %index592
  %i.amz = getelementptr i8, ptr %i.amy, i64 36
  store i32 1, ptr %i.amz, align 4, !tbaa !39
  br label %pred.store.continue596

pred.store.continue596:                           ; preds = %pred.store.if595, %pred.store.continue
  %i.ana = extractelement <4 x i1> %i.amu, i64 2
  br i1 %i.ana, label %pred.store.if597, label %pred.store.continue598

pred.store.if597:                                 ; preds = %pred.store.continue596
  %i.anb = getelementptr [4 x i8], ptr %i.als, i64 %index592
  %i.anc = getelementptr i8, ptr %i.anb, i64 40
  store i32 1, ptr %i.anc, align 4, !tbaa !39
  br label %pred.store.continue598

pred.store.continue598:                           ; preds = %pred.store.if597, %pred.store.continue596
  %i.and = extractelement <4 x i1> %i.amu, i64 3
  br i1 %i.and, label %pred.store.if599, label %pred.store.continue600

pred.store.if599:                                 ; preds = %pred.store.continue598
  %i.ane = getelementptr [4 x i8], ptr %i.als, i64 %index592
  %i.anf = getelementptr i8, ptr %i.ane, i64 44
  store i32 1, ptr %i.anf, align 4, !tbaa !39
  br label %pred.store.continue600

pred.store.continue600:                           ; preds = %pred.store.if599, %pred.store.continue598
  %index.next601 = add nuw i64 %index592, 4       ; 2 uses
  %i.ang = icmp eq i64 %index.next601, %n.vec590
  br i1 %i.ang, label %middle.block602, label %vector.body591, !llvm.loop !103

middle.block602:                                  ; preds = %pred.store.continue600
  %vector.recur.extract = extractelement <4 x i32> %wide.load594, i64 3
  %cmp.n603 = icmp eq i64 %i.amf, %n.vec590
  br i1 %cmp.n603, label %.preheader.i285.i, label %.lr.ph.i281.i.preheader

.lr.ph.i281.i.preheader:                          ; preds = %.lr.ph.preheader.i278.i, %middle.block602
  %.ph = phi i32 [ %.pre.i280.i, %.lr.ph.preheader.i278.i ], [ %vector.recur.extract, %middle.block602 ]
  %indvars.iv.i282.i.ph = phi i64 [ 8, %.lr.ph.preheader.i278.i ], [ %i.amg, %middle.block602 ]
  br label %.lr.ph.i281.i

.preheader.i285.i:                                ; preds = %bb.bw, %middle.block602
  %i.anh = icmp sgt i32 %i.alo, 12
  br i1 %i.anh, label %.lr.ph9.i286.i, label %._crit_edge.i277.i

.lr.ph.i281.i:                                    ; preds = %.lr.ph.i281.i.preheader, %bb.bw
  %i.ani = phi i32 [ %i.ann, %bb.bw ], [ %.ph, %.lr.ph.i281.i.preheader ] ; 2 uses
  %indvars.iv.i282.i = phi i64 [ %indvars.iv.next.i283.i, %bb.bw ], [ %indvars.iv.i282.i.ph, %.lr.ph.i281.i.preheader ] ; 3 uses
  %i.anj = getelementptr [4 x i8], ptr %i.wo, i64 %indvars.iv.i282.i
  %i.ank = getelementptr i8, ptr %i.anj, i64 -4
  %i.anl = load i32, ptr %i.ank, align 4, !tbaa !39 ; 2 uses
  %indvars.iv.next.i283.i = add nuw nsw i64 %indvars.iv.i282.i, 1 ; 3 uses
  %i.anm = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv.next.i283.i
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !39 ; 3 uses
  %i.ano = call i32 @llvm.smin.i32(i32 %i.anl, i32 %i.ann)
  %i.anp = sub nsw i32 %i.ani, %i.ano
  %i.anq = icmp sgt i32 %i.anp, 2
  br i1 %i.anq, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i281.i
  %i.anr = shl nsw i32 %i.ani, 1
  %i.ans = add i32 %i.anl, %i.ann
  %i.ant = sub i32 %i.anr, %i.ans
  %i.anu = icmp sgt i32 %i.ant, 2
  br i1 %i.anu, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu, %.lr.ph.i281.i
  %i.anv = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv.i282.i
  store i32 1, ptr %i.anv, align 4, !tbaa !39
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %exitcond.not.i284.i = icmp eq i64 %indvars.iv.next.i283.i, %i.alw
  br i1 %exitcond.not.i284.i, label %.preheader.i285.i, label %.lr.ph.i281.i, !llvm.loop !104

._crit_edge.i277.i:                               ; preds = %bb.by, %.preheader.i285.i, %bb.bt
  store i32 %i.alr, ptr %i.alq, align 4, !tbaa !39
  %.val.pre.i = load i32, ptr %i.ad, align 16, !tbaa !38
  %.pre416.i = load i32, ptr %i.vz, align 4, !tbaa !163
  br label %calc_codebook_idx.exit.i

.lr.ph9.i286.i:                                   ; preds = %.preheader.i285.i, %bb.by
  %indvars.iv12.i287.i = phi i64 [ %indvars.iv.next13.i288.i, %bb.by ], [ 12, %.preheader.i285.i ] ; 4 uses
  %indvars.iv.next13.i288.i = add nuw nsw i64 %indvars.iv12.i287.i, 1 ; 3 uses
  %i.anw = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv12.i287.i ; 2 uses
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !39
  %.not.i289.i = icmp eq i32 %i.anx, 0
  br i1 %.not.i289.i, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph9.i286.i
  %i.any = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv12.i287.i ; 2 uses
  %i.anz = getelementptr i8, ptr %i.any, i64 -4
  %i.aoa = load i32, ptr %i.anz, align 4, !tbaa !39
  %i.aob = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %indvars.iv.next13.i288.i
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !39
  %..i291.i = call i32 @llvm.smin.i32(i32 %i.aoc, i32 %i.aoa)
  %i.aod = trunc i64 %indvars.iv12.i287.i to i32
  %i.aoe = add i32 %i.aod, -20
  %i.aof = icmp ult i32 %i.aoe, 10
  %.neg.i292.i = sext i1 %i.aof to i32
  %i.aog = load i32, ptr %i.any, align 4, !tbaa !39 ; 2 uses
  %i.aoh = sub nsw i32 %i.aog, %..i291.i
  %i.aoi = icmp sgt i32 %i.aoh, 1
  %i.aoj = add nsw i32 %.119.i.i, %.neg.i292.i
  %i.aok = icmp sge i32 %i.aog, %i.aoj
  %narrow.i.i = select i1 %i.aoi, i1 %i.aok, i1 false
  %i.aol = zext i1 %narrow.i.i to i32
  store i32 %i.aol, ptr %i.anw, align 4, !tbaa !39
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph9.i286.i
  %exitcond16.not.i290.i = icmp eq i64 %indvars.iv.next13.i288.i, %i.alw
  br i1 %exitcond16.not.i290.i, label %._crit_edge.i277.i, label %.lr.ph9.i286.i, !llvm.loop !105

calc_codebook_idx.exit.i:                         ; preds = %._crit_edge.i277.i, %calc_precision.exit.i
  %i.aom = phi i32 [ %i.alo, %calc_precision.exit.i ], [ %.pre416.i, %._crit_edge.i277.i ]
  %.val.i = phi i32 [ %.val.pre414.i, %calc_precision.exit.i ], [ %.val.pre.i, %._crit_edge.i277.i ]
  %i.aon = icmp sgt i32 %.val.i, 7
  %i.aoo = select i1 %i.aon, i32 1, i32 7
  %i.aop = getelementptr inbounds nuw i8, ptr %i.vu, i64 752
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.aop, i8 0, i64 1024, i1 false)
  %i.aoq = icmp sgt i32 %i.aom, 0
  br i1 %i.aoq, label %.lr.ph12.i293.i, label %read_coeffs_fine.exit.thread.i

read_coeffs_fine.exit.thread.i:                   ; preds = %calc_codebook_idx.exit.i
  %i.aor = getelementptr inbounds nuw i8, ptr %i.vu, i64 1776
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.aor, i8 0, i64 2048, i1 false)
  br label %dequantize.exit327.i

.lr.ph12.i293.i:                                  ; preds = %calc_codebook_idx.exit.i, %calc_codebook_idx.exit.thread.i
  %i.aos = phi i32 [ 1, %calc_codebook_idx.exit.thread.i ], [ %i.aoo, %calc_codebook_idx.exit.i ]
  %i.aot = getelementptr inbounds nuw i8, ptr %i.vu, i64 272 ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.vu, i64 752 ; 3 uses
  br label %bb.bz

bb.bz:                                            ; preds = %.loopexit.i299.i, %.lr.ph12.i293.i
  %.sroa.15.15 = phi i32 [ %.sroa.15.12, %.lr.ph12.i293.i ], [ %.sroa.15.17, %.loopexit.i299.i ] ; 3 uses
  %indvars.iv22.i.i = phi i64 [ 0, %.lr.ph12.i293.i ], [ %indvars.iv.next23.i.i, %.loopexit.i299.i ] ; 6 uses
  %i.aov = getelementptr inbounds nuw [4 x i8], ptr @at9_q_unit_to_coeff_idx, i64 %indvars.iv22.i.i
  %i.aow = load i32, ptr %i.aov, align 4, !tbaa !39
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = getelementptr inbounds [4 x i8], ptr %i.aou, i64 %i.aox ; 4 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr @at9_q_unit_to_coeff_cnt, i64 %indvars.iv22.i.i
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !37
  %i.apb = zext i8 %i.apa to i32                  ; 2 uses
  %i.apc = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %indvars.iv22.i.i
  %i.apd = load i32, ptr %i.apc, align 4, !tbaa !39 ; 3 uses
  %i.ape = add nsw i32 %i.apd, 1                  ; 4 uses
  %.not.not.i.i = icmp slt i32 %i.apd, %i.aos
  br i1 %.not.not.i.i, label %bb.ca, label %.lr.ph.i294.i

.lr.ph.i294.i:                                    ; preds = %bb.bz
  %i.apf = sub nsw i32 31, %i.apd                 ; 4 uses
  %4 = shl nsw i32 -1, %i.apf                     ; 3 uses
  %umax.i.i = call i32 @llvm.umax.i32(i32 %i.apb, i32 1) ; 2 uses
  %wide.trip.count.i295.i = zext nneg i32 %umax.i.i to i64 ; 2 uses
  %xtraiter712 = and i64 %wide.trip.count.i295.i, 1
  %unroll_iter717 = and i64 %wide.trip.count.i295.i, 254
  br label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.als, i64 %indvars.iv22.i.i
  %i.aph = load i32, ptr %i.apg, align 4, !tbaa !39
  %i.api = getelementptr inbounds nuw i8, ptr @at9_q_unit_to_codebookidx, i64 %indvars.iv22.i.i
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !37
  %i.apk = sext i32 %i.aph to i64                 ; 2 uses
  %i.apl = getelementptr inbounds [256 x i8], ptr @coeff_vlc, i64 %i.apk
  %i.apm = sext i32 %i.ape to i64                 ; 2 uses
  %i.apn = getelementptr inbounds [32 x i8], ptr %i.apl, i64 %i.apm
  %i.apo = zext i8 %i.apj to i64                  ; 2 uses
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %i.apo
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !50 ; 2 uses
  %i.apr = getelementptr inbounds [512 x i8], ptr @at9_huffman_coeffs, i64 %i.apk
  %i.aps = getelementptr inbounds [64 x i8], ptr %i.apr, i64 %i.apm
  %i.apt = getelementptr inbounds nuw [16 x i8], ptr %i.aps, i64 %i.apo ; 3 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %i.apv = load i32, ptr %i.apu, align 8, !tbaa !181
  %i.apw = lshr i32 %i.apb, %i.apv                ; 2 uses
  %.not.i300.i = icmp eq i32 %i.apw, 0
  br i1 %.not.i300.i, label %.loopexit.i299.i, label %.lr.ph9.i301.i

.lr.ph9.i301.i:                                   ; preds = %bb.ca
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apt, i64 4
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !182 ; 5 uses
  %i.apz = icmp sgt i32 %i.apy, 0
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apt, i64 12
  %i.aqb = sext i32 %i.apy to i64
  %wide.trip.count19.i.i = zext i32 %i.apy to i64 ; 2 uses
  %xtraiter720 = and i64 %wide.trip.count19.i.i, 1
  %i.aqc = icmp eq i32 %i.apy, 1
  %unroll_iter724 = and i64 %wide.trip.count19.i.i, 2147483646
  %lcmp.mod722.not = icmp eq i64 %xtraiter720, 0
  %lcmp.mod723 = trunc i32 %i.apy to i1
  br label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i302.i, %.lr.ph9.i301.i
  %.sroa.15.21 = phi i32 [ %.sroa.15.15, %.lr.ph9.i301.i ], [ %i.arn, %._crit_edge.i302.i ] ; 4 uses
  %.0487.i.i = phi i32 [ 0, %.lr.ph9.i301.i ], [ %i.arv, %._crit_edge.i302.i ]
  %.0496.i.i = phi ptr [ %i.aoy, %.lr.ph9.i301.i ], [ %i.aru, %._crit_edge.i302.i ] ; 4 uses
  %i.aqd = lshr i32 %.sroa.15.21, 3
  %i.aqe = zext nneg i32 %i.aqd to i64
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aqe
  %i.aqg = load i32, ptr %i.aqf, align 1, !tbaa !37
  %i.aqh = call i32 @llvm.bswap.i32(i32 %i.aqg)
  %i.aqi = and i32 %.sroa.15.21, 7
  %i.aqj = shl i32 %i.aqh, %i.aqi
  %i.aqk = lshr i32 %i.aqj, 23
  %i.aql = zext nneg i32 %i.aqk to i64
  %i.aqm = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %i.aql ; 2 uses
  %i.aqn = load i16, ptr %i.aqm, align 2, !tbaa !37
  %i.aqo = sext i16 %i.aqn to i32                 ; 2 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqm, i64 2
  %i.aqq = load i16, ptr %i.aqp, align 2, !tbaa !37 ; 2 uses
  %i.aqr = sext i16 %i.aqq to i32                 ; 2 uses
  %i.aqs = icmp slt i16 %i.aqq, 0
  br i1 %i.aqs, label %bb.cc, label %get_vlc2.exit.i.i

bb.cc:                                            ; preds = %bb.cb
  %i.aqt = add i32 %.sroa.15.21, 9
  %i.aqu = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.aqt) ; 3 uses
  %i.aqv = lshr i32 %i.aqu, 3
  %i.aqw = zext nneg i32 %i.aqv to i64
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aqw
  %i.aqy = load i32, ptr %i.aqx, align 1, !tbaa !37
  %i.aqz = call i32 @llvm.bswap.i32(i32 %i.aqy)
  %i.ara = and i32 %i.aqu, 7
  %i.arb = shl i32 %i.aqz, %i.ara
  %i.arc = add nsw i32 %i.aqr, 32
  %i.ard = lshr i32 %i.arb, %i.arc
  %i.are = add i32 %i.ard, %i.aqo
  %i.arf = zext i32 %i.are to i64
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.apq, i64 %i.arf ; 2 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 2
  %i.ari = load i16, ptr %i.arh, align 2, !tbaa !37
  %i.arj = sext i16 %i.ari to i32
  %i.ark = load i16, ptr %i.arg, align 2, !tbaa !37
  %i.arl = zext i16 %i.ark to i32
  br label %get_vlc2.exit.i.i

get_vlc2.exit.i.i:                                ; preds = %bb.cc, %bb.cb
  %.167.i.i.i = phi i32 [ %i.arl, %bb.cc ], [ %i.aqo, %bb.cb ] ; 2 uses
  %.165.i.i.i = phi i32 [ %i.aqu, %bb.cc ], [ %.sroa.15.21, %bb.cb ]
  %.1.i.i.i = phi i32 [ %i.arj, %bb.cc ], [ %i.aqr, %bb.cb ]
  %i.arm = add i32 %.1.i.i.i, %.165.i.i.i
  %i.arn = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.arm) ; 2 uses
  br i1 %i.apz, label %.lr.ph5.i.i, label %._crit_edge.i302.i

.lr.ph5.i.i:                                      ; preds = %get_vlc2.exit.i.i
  %i.aro = load i32, ptr %i.aqa, align 4, !tbaa !183 ; 3 uses
  %i.arp = sub i32 32, %i.aro                     ; 6 uses
  br i1 %i.aqc, label %.epil.preheader719, label %.lr.ph5.i.i.new

._crit_edge.i302.i.loopexit.unr-lcssa:            ; preds = %.lr.ph5.i.i.new
  br i1 %lcmp.mod722.not, label %._crit_edge.i302.i, label %.epil.preheader719

.epil.preheader719:                               ; preds = %._crit_edge.i302.i.loopexit.unr-lcssa, %.lr.ph5.i.i
  %indvars.iv16.i.i.epil.init = phi i64 [ 0, %.lr.ph5.i.i ], [ %indvars.iv.next17.i.i.1, %._crit_edge.i302.i.loopexit.unr-lcssa ]
  %.047.in3.i.i.epil.init = phi i32 [ %.167.i.i.i, %.lr.ph5.i.i ], [ %i.asf, %._crit_edge.i302.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod723)
  %i.arq = and i32 %.047.in3.i.i.epil.init, 65535
  %i.arr = shl i32 %i.arq, %i.arp
  %i.ars = ashr exact i32 %i.arr, %i.arp
  %i.art = getelementptr inbounds nuw [4 x i8], ptr %.0496.i.i, i64 %indvars.iv16.i.i.epil.init
  store i32 %i.ars, ptr %i.art, align 4, !tbaa !39
  br label %._crit_edge.i302.i

._crit_edge.i302.i:                               ; preds = %.epil.preheader719, %._crit_edge.i302.i.loopexit.unr-lcssa, %get_vlc2.exit.i.i
  %i.aru = getelementptr inbounds [4 x i8], ptr %.0496.i.i, i64 %i.aqb
  %i.arv = add nuw nsw i32 %.0487.i.i, 1          ; 2 uses
  %exitcond21.not.i.i = icmp eq i32 %i.arv, %i.apw
  br i1 %exitcond21.not.i.i, label %.loopexit.i299.i, label %bb.cb, !llvm.loop !106

.lr.ph5.i.i.new:                                  ; preds = %.lr.ph5.i.i, %.lr.ph5.i.i.new
  %indvars.iv16.i.i = phi i64 [ %indvars.iv.next17.i.i.1, %.lr.ph5.i.i.new ], [ 0, %.lr.ph5.i.i ] ; 3 uses
  %.047.in3.i.i = phi i32 [ %i.asf, %.lr.ph5.i.i.new ], [ %.167.i.i.i, %.lr.ph5.i.i ]
  %niter725 = phi i64 [ %niter725.next.1, %.lr.ph5.i.i.new ], [ 0, %.lr.ph5.i.i ]
  %i.arw = and i32 %.047.in3.i.i, 65535           ; 2 uses
  %i.arx = shl i32 %i.arw, %i.arp
  %i.ary = ashr exact i32 %i.arx, %i.arp
  %i.arz = getelementptr inbounds nuw [4 x i8], ptr %.0496.i.i, i64 %indvars.iv16.i.i
  store i32 %i.ary, ptr %i.arz, align 4, !tbaa !39
  %i.asa = lshr i32 %i.arw, %i.aro                ; 2 uses
  %i.asb = shl i32 %i.asa, %i.arp
  %i.asc = ashr exact i32 %i.asb, %i.arp
  %i.asd = getelementptr inbounds nuw [4 x i8], ptr %.0496.i.i, i64 %indvars.iv16.i.i
  %i.ase = getelementptr inbounds nuw i8, ptr %i.asd, i64 4
  store i32 %i.asc, ptr %i.ase, align 4, !tbaa !39
  %i.asf = lshr i32 %i.asa, %i.aro                ; 2 uses
  %indvars.iv.next17.i.i.1 = add nuw nsw i64 %indvars.iv16.i.i, 2 ; 2 uses
  %niter725.next.1 = add i64 %niter725, 2         ; 2 uses
  %niter725.ncmp.1 = icmp eq i64 %niter725.next.1, %unroll_iter724
  br i1 %niter725.ncmp.1, label %._crit_edge.i302.i.loopexit.unr-lcssa, label %.lr.ph5.i.i.new, !llvm.loop !107

bb.cd:                                            ; preds = %bb.cd, %.lr.ph.i294.i
  %.sroa.15.16 = phi i32 [ %.sroa.15.15, %.lr.ph.i294.i ], [ %i.ata, %bb.cd ] ; 3 uses
  %indvars.iv.i296.i = phi i64 [ 0, %.lr.ph.i294.i ], [ %indvars.iv.next.i297.i.1, %bb.cd ] ; 3 uses
  %niter718 = phi i64 [ 0, %.lr.ph.i294.i ], [ %niter718.next.1, %bb.cd ]
  %i.asg = lshr i32 %.sroa.15.16, 3
  %i.ash = zext nneg i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ash
  %i.asj = load i32, ptr %i.asi, align 1, !tbaa !37
  %i.ask = call i32 @llvm.bswap.i32(i32 %i.asj)
  %i.asl = and i32 %.sroa.15.16, 7
  %i.asm = shl i32 %i.ask, %i.asl
  %i.asn = add i32 %.sroa.15.16, %i.ape
  %i.aso = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.asn) ; 3 uses
  %i.asp = and i32 %i.asm, %4
  %i.asq = ashr exact i32 %i.asp, %i.apf
  %i.asr = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i296.i
  store i32 %i.asq, ptr %i.asr, align 4, !tbaa !39
  %i.ass = lshr i32 %i.aso, 3
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ast
  %i.asv = load i32, ptr %i.asu, align 1, !tbaa !37
  %i.asw = call i32 @llvm.bswap.i32(i32 %i.asv)
  %i.asx = and i32 %i.aso, 7
  %i.asy = shl i32 %i.asw, %i.asx
  %i.asz = add i32 %i.aso, %i.ape
  %i.ata = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.asz) ; 5 uses
  %i.atb = and i32 %i.asy, %4
  %i.atc = ashr exact i32 %i.atb, %i.apf
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.i296.i
  %i.ate = getelementptr inbounds nuw i8, ptr %i.atd, i64 4
  store i32 %i.atc, ptr %i.ate, align 4, !tbaa !39
  %indvars.iv.next.i297.i.1 = add nuw nsw i64 %indvars.iv.i296.i, 2 ; 2 uses
  %niter718.next.1 = add i64 %niter718, 2         ; 2 uses
  %niter718.ncmp.1 = icmp eq i64 %niter718.next.1, %unroll_iter717
  br i1 %niter718.ncmp.1, label %.loopexit.i299.i.loopexit660.unr-lcssa, label %bb.cd, !llvm.loop !108

.loopexit.i299.i.loopexit660.unr-lcssa:           ; preds = %bb.cd
  %lcmp.mod714.not = icmp eq i64 %xtraiter712, 0
  br i1 %lcmp.mod714.not, label %.loopexit.i299.i, label %.epil.preheader711

.epil.preheader711:                               ; preds = %.loopexit.i299.i.loopexit660.unr-lcssa
  %lcmp.mod716 = trunc i32 %umax.i.i to i1
  call void @llvm.assume(i1 %lcmp.mod716)
  %i.atf = lshr i32 %i.ata, 3
  %i.atg = zext nneg i32 %i.atf to i64
  %i.ath = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.atg
  %i.ati = load i32, ptr %i.ath, align 1, !tbaa !37
  %i.atj = call i32 @llvm.bswap.i32(i32 %i.ati)
  %i.atk = and i32 %i.ata, 7
  %i.atl = shl i32 %i.atj, %i.atk
  %i.atm = add i32 %i.ata, %i.ape
  %i.atn = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.atm)
  %i.ato = and i32 %i.atl, %4
  %i.atp = ashr exact i32 %i.ato, %i.apf
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.aoy, i64 %indvars.iv.next.i297.i.1
  store i32 %i.atp, ptr %i.atq, align 4, !tbaa !39
  br label %.loopexit.i299.i

.loopexit.i299.i:                                 ; preds = %.epil.preheader711, %.loopexit.i299.i.loopexit660.unr-lcssa, %._crit_edge.i302.i, %bb.ca
  %.sroa.15.17 = phi i32 [ %.sroa.15.15, %bb.ca ], [ %i.arn, %._crit_edge.i302.i ], [ %i.ata, %.loopexit.i299.i.loopexit660.unr-lcssa ], [ %i.atn, %.epil.preheader711 ] ; 3 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 2 uses
  %i.atr = load i32, ptr %i.vz, align 4, !tbaa !163 ; 3 uses
  %i.ats = sext i32 %i.atr to i64
  %i.att = icmp slt i64 %indvars.iv.next23.i.i, %i.ats
  br i1 %i.att, label %bb.bz, label %read_coeffs_coarse.exit.i, !llvm.loop !109

read_coeffs_coarse.exit.i:                        ; preds = %.loopexit.i299.i
  %i.atu = getelementptr inbounds nuw i8, ptr %i.vu, i64 1776 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.atu, i8 0, i64 1024, i1 false)
  %i.atv = icmp sgt i32 %i.atr, 0
  br i1 %i.atv, label %.lr.ph3.i304.i, label %read_coeffs_fine.exit.thread461.i

read_coeffs_fine.exit.thread461.i:                ; preds = %read_coeffs_coarse.exit.i
  %i.atw = getelementptr inbounds nuw i8, ptr %i.vu, i64 2800
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.atw, i8 0, i64 1024, i1 false)
  br label %dequantize.exit327.i

.lr.ph3.i304.i:                                   ; preds = %read_coeffs_coarse.exit.i
  %i.atx = getelementptr inbounds nuw i8, ptr %i.vu, i64 392 ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit.i307.i, %.lr.ph3.i304.i
  %.sroa.15.18 = phi i32 [ %.sroa.15.17, %.lr.ph3.i304.i ], [ %.sroa.15.19, %.loopexit.i307.i ] ; 6 uses
  %i.aty = phi i32 [ %i.atr, %.lr.ph3.i304.i ], [ %i.avy, %.loopexit.i307.i ] ; 2 uses
  %indvars.iv5.i305.i = phi i64 [ 0, %.lr.ph3.i304.i ], [ %indvars.iv.next6.i306.i, %.loopexit.i307.i ] ; 3 uses
  %indvars.iv.next6.i306.i = add nuw nsw i64 %indvars.iv5.i305.i, 1 ; 3 uses
  %i.atz = getelementptr inbounds nuw [4 x i8], ptr @at9_q_unit_to_coeff_idx, i64 %indvars.iv.next6.i306.i
  %i.aua = load i32, ptr %i.atz, align 4, !tbaa !39 ; 2 uses
  %i.aub = getelementptr inbounds nuw [4 x i8], ptr %i.atx, i64 %indvars.iv5.i305.i
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !39 ; 3 uses
  %i.aud = add nuw nsw i32 %i.auc, 1              ; 3 uses
  %i.aue = icmp slt i32 %i.auc, 1
  br i1 %i.aue, label %.loopexit.i307.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.auf = getelementptr inbounds nuw [4 x i8], ptr @at9_q_unit_to_coeff_idx, i64 %indvars.iv5.i305.i
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !39 ; 2 uses
  %i.auh = icmp slt i32 %i.aug, %i.aua
  br i1 %i.auh, label %.lr.ph.i308.i, label %.loopexit.i307.i

.lr.ph.i308.i:                                    ; preds = %bb.cf
  %i.aui = sub nsw i32 31, %i.auc                 ; 4 uses
  %5 = shl nsw i32 -1, %i.aui                     ; 3 uses
  %i.auj = sext i32 %i.aug to i64                 ; 5 uses
  %wide.trip.count.i309.i = sext i32 %i.aua to i64 ; 3 uses
  %i.auk = sub nsw i64 %wide.trip.count.i309.i, %i.auj
  %xtraiter726 = and i64 %i.auk, 1
  %lcmp.mod727.not = icmp eq i64 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i308.i
  %i.aul = lshr i32 %.sroa.15.18, 3
  %i.aum = zext nneg i32 %i.aul to i64
  %i.aun = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aum
  %i.auo = load i32, ptr %i.aun, align 1, !tbaa !37
  %i.aup = call i32 @llvm.bswap.i32(i32 %i.auo)
  %i.auq = and i32 %.sroa.15.18, 7
  %i.aur = shl i32 %i.aup, %i.auq
  %i.aus = add i32 %i.aud, %.sroa.15.18
  %i.aut = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.aus) ; 2 uses
  %i.auu = and i32 %i.aur, %5
  %i.auv = ashr exact i32 %i.auu, %i.aui
  %i.auw = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %i.auj
  store i32 %i.auv, ptr %i.auw, align 4, !tbaa !39
  %indvars.iv.next.i311.i.prol = add nsw i64 %i.auj, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i308.i
  %.lcssa695.unr = phi i32 [ poison, %.lr.ph.i308.i ], [ %i.aut, %.prol.loopexit.unr-lcssa ]
  %.sroa.15.20.unr = phi i32 [ %.sroa.15.18, %.lr.ph.i308.i ], [ %i.aut, %.prol.loopexit.unr-lcssa ]
  %indvars.iv.i310.i.unr = phi i64 [ %i.auj, %.lr.ph.i308.i ], [ %indvars.iv.next.i311.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.aux = add nsw i64 %wide.trip.count.i309.i, -1
  %i.auy = icmp eq i64 %i.aux, %i.auj
  br i1 %i.auy, label %.loopexit.loopexit.i.i, label %.lr.ph.i308.i.new

.lr.ph.i308.i.new:                                ; preds = %.prol.loopexit, %.lr.ph.i308.i.new
  %.sroa.15.20 = phi i32 [ %i.avt, %.lr.ph.i308.i.new ], [ %.sroa.15.20.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.i310.i = phi i64 [ %indvars.iv.next.i311.i.1, %.lr.ph.i308.i.new ], [ %indvars.iv.i310.i.unr, %.prol.loopexit ] ; 3 uses
  %i.auz = lshr i32 %.sroa.15.20, 3
  %i.ava = zext nneg i32 %i.auz to i64
  %i.avb = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ava
  %i.avc = load i32, ptr %i.avb, align 1, !tbaa !37
  %i.avd = call i32 @llvm.bswap.i32(i32 %i.avc)
  %i.ave = and i32 %.sroa.15.20, 7
  %i.avf = shl i32 %i.avd, %i.ave
  %i.avg = add i32 %i.aud, %.sroa.15.20
  %i.avh = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.avg) ; 3 uses
  %i.avi = and i32 %i.avf, %5
  %i.avj = ashr exact i32 %i.avi, %i.aui
  %i.avk = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %indvars.iv.i310.i
  store i32 %i.avj, ptr %i.avk, align 4, !tbaa !39
  %i.avl = lshr i32 %i.avh, 3
  %i.avm = zext nneg i32 %i.avl to i64
  %i.avn = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.avm
  %i.avo = load i32, ptr %i.avn, align 1, !tbaa !37
  %i.avp = call i32 @llvm.bswap.i32(i32 %i.avo)
  %i.avq = and i32 %i.avh, 7
  %i.avr = shl i32 %i.avp, %i.avq
  %i.avs = add nuw i32 %i.aud, %i.avh
  %i.avt = call i32 @llvm.umin.i32(i32 %i.aa, i32 %i.avs) ; 2 uses
  %i.avu = and i32 %i.avr, %5
  %i.avv = ashr exact i32 %i.avu, %i.aui
  %i.avw = getelementptr [4 x i8], ptr %i.atu, i64 %indvars.iv.i310.i
  %i.avx = getelementptr i8, ptr %i.avw, i64 4
  store i32 %i.avv, ptr %i.avx, align 4, !tbaa !39
  %indvars.iv.next.i311.i.1 = add nsw i64 %indvars.iv.i310.i, 2 ; 2 uses
  %exitcond.not.i312.i.1 = icmp eq i64 %indvars.iv.next.i311.i.1, %wide.trip.count.i309.i
  br i1 %exitcond.not.i312.i.1, label %.loopexit.loopexit.i.i, label %.lr.ph.i308.i.new, !llvm.loop !110

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph.i308.i.new, %.prol.loopexit
  %.lcssa695 = phi i32 [ %.lcssa695.unr, %.prol.loopexit ], [ %i.avt, %.lr.ph.i308.i.new ]
  %.pre.i313.i = load i32, ptr %i.vz, align 4, !tbaa !163
  br label %.loopexit.i307.i

.loopexit.i307.i:                                 ; preds = %.loopexit.loopexit.i.i, %bb.cf, %bb.ce
  %.sroa.15.19 = phi i32 [ %.sroa.15.18, %bb.ce ], [ %.lcssa695, %.loopexit.loopexit.i.i ], [ %.sroa.15.18, %bb.cf ] ; 3 uses
  %i.avy = phi i32 [ %i.aty, %bb.ce ], [ %.pre.i313.i, %.loopexit.loopexit.i.i ], [ %i.aty, %bb.cf ] ; 4 uses
  %i.avz = sext i32 %i.avy to i64
  %i.awa = icmp slt i64 %indvars.iv.next6.i306.i, %i.avz
  br i1 %i.awa, label %bb.ce, label %read_coeffs_fine.exit.i, !llvm.loop !111

read_coeffs_fine.exit.i:                          ; preds = %.loopexit.i307.i
  %i.awb = getelementptr inbounds nuw i8, ptr %i.vu, i64 2800 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.awb, i8 0, i64 1024, i1 false)
  %i.awc = icmp sgt i32 %i.avy, 0
  br i1 %i.awc, label %.lr.ph3.i315.i, label %dequantize.exit327.i

.lr.ph3.i315.i:                                   ; preds = %read_coeffs_fine.exit.i
  %wide.trip.count8.i316.i = zext nneg i32 %i.avy to i64
  br label %bb.cg

.loopexit.i319.i:                                 ; preds = %.lr.ph.i323.i, %middle.block584, %bb.cg
  %exitcond9.not.i320.i = icmp eq i64 %indvars.iv.next6.i318.i, %wide.trip.count8.i316.i
  br i1 %exitcond9.not.i320.i, label %dequantize.exit327.i, label %bb.cg, !llvm.loop !64

bb.cg:                                            ; preds = %.loopexit.i319.i, %.lr.ph3.i315.i
  %i.awd = phi i32 [ 0, %.lr.ph3.i315.i ], [ %i.awf, %.loopexit.i319.i ] ; 2 uses
  %indvars.iv5.i317.i = phi i64 [ 0, %.lr.ph3.i315.i ], [ %indvars.iv.next6.i318.i, %.loopexit.i319.i ] ; 3 uses
  %indvars.iv.next6.i318.i = add nuw nsw i64 %indvars.iv5.i317.i, 1 ; 3 uses
  %i.awe = getelementptr inbounds nuw [4 x i8], ptr @at9_q_unit_to_coeff_idx, i64 %indvars.iv.next6.i318.i
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !39 ; 3 uses
  %i.awg = getelementptr inbounds nuw [4 x i8], ptr %i.aot, i64 %indvars.iv5.i317.i
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !39
  %i.awi = sext i32 %i.awh to i64
  %i.awj = getelementptr inbounds [4 x i8], ptr @at9_quant_step_coarse, i64 %i.awi
  %i.awk = load float, ptr %i.awj, align 4, !tbaa !44 ; 2 uses
  %i.awl = getelementptr inbounds nuw [4 x i8], ptr %i.atx, i64 %indvars.iv5.i317.i
  %i.awm = load i32, ptr %i.awl, align 4, !tbaa !39
  %i.awn = sext i32 %i.awm to i64
  %i.awo = getelementptr inbounds [4 x i8], ptr @at9_quant_step_fine, i64 %i.awn
  %i.awp = load float, ptr %i.awo, align 4, !tbaa !44 ; 2 uses
  %i.awq = icmp slt i32 %i.awd, %i.awf
  br i1 %i.awq, label %.lr.ph.preheader.i321.i, label %.loopexit.i319.i

.lr.ph.preheader.i321.i:                          ; preds = %bb.cg
  %i.awr = sext i32 %i.awd to i64                 ; 4 uses
  %wide.trip.count.i322.i = sext i32 %i.awf to i64 ; 2 uses
  %i.aws = sub nsw i64 %wide.trip.count.i322.i, %i.awr ; 3 uses
  %min.iters.check570 = icmp ult i64 %i.aws, 8
  br i1 %min.iters.check570, label %.lr.ph.i323.i.preheader, label %vector.ph571

vector.ph571:                                     ; preds = %.lr.ph.preheader.i321.i
  %n.vec572 = and i64 %i.aws, -8                  ; 3 uses
  %i.awt = add nsw i64 %n.vec572, %i.awr
  %broadcast.splatinsert573 = insertelement <4 x float> poison, float %i.awk, i64 0
  %broadcast.splat574 = shufflevector <4 x float> %broadcast.splatinsert573, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert575 = insertelement <4 x float> poison, float %i.awp, i64 0
  %broadcast.splat576 = shufflevector <4 x float> %broadcast.splatinsert575, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body577

vector.body577:                                   ; preds = %vector.body577, %vector.ph571
  %index578 = phi i64 [ 0, %vector.ph571 ], [ %index.next583, %vector.body577 ] ; 2 uses
  %i.awu = add i64 %index578, %i.awr              ; 3 uses
  %i.awv = getelementptr inbounds [4 x i8], ptr %i.aou, i64 %i.awu ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awv, i64 16
  %wide.load579 = load <4 x i32>, ptr %i.awv, align 4, !tbaa !39
  %wide.load580 = load <4 x i32>, ptr %i.aww, align 4, !tbaa !39
  %i.awx = sitofp nsz <4 x i32> %wide.load579 to <4 x float>
  %i.awy = sitofp nsz <4 x i32> %wide.load580 to <4 x float>
  %i.awz = fmul nsz <4 x float> %broadcast.splat574, %i.awx
  %i.axa = fmul nsz <4 x float> %broadcast.splat574, %i.awy
  %i.axb = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %i.awu ; 2 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.axb, i64 16
  %wide.load581 = load <4 x i32>, ptr %i.axb, align 4, !tbaa !39
  %wide.load582 = load <4 x i32>, ptr %i.axc, align 4, !tbaa !39
  %i.axd = sitofp nsz <4 x i32> %wide.load581 to <4 x float>
  %i.axe = sitofp nsz <4 x i32> %wide.load582 to <4 x float>
  %i.axf = fmul nsz <4 x float> %broadcast.splat576, %i.axd
  %i.axg = fmul nsz <4 x float> %broadcast.splat576, %i.axe
  %i.axh = fadd nsz <4 x float> %i.awz, %i.axf
  %i.axi = fadd nsz <4 x float> %i.axa, %i.axg
  %i.axj = getelementptr inbounds [4 x i8], ptr %i.awb, i64 %i.awu ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axj, i64 16
  store <4 x float> %i.axh, ptr %i.axj, align 4, !tbaa !44
  store <4 x float> %i.axi, ptr %i.axk, align 4, !tbaa !44
  %index.next583 = add nuw i64 %index578, 8       ; 2 uses
  %i.axl = icmp eq i64 %index.next583, %n.vec572
  br i1 %i.axl, label %middle.block584, label %vector.body577, !llvm.loop !112

middle.block584:                                  ; preds = %vector.body577
  %cmp.n585 = icmp eq i64 %i.aws, %n.vec572
  br i1 %cmp.n585, label %.loopexit.i319.i, label %.lr.ph.i323.i.preheader

.lr.ph.i323.i.preheader:                          ; preds = %.lr.ph.preheader.i321.i, %middle.block584
  %indvars.iv.i324.i.ph = phi i64 [ %i.awr, %.lr.ph.preheader.i321.i ], [ %i.awt, %middle.block584 ]
  br label %.lr.ph.i323.i

.lr.ph.i323.i:                                    ; preds = %.lr.ph.i323.i.preheader, %.lr.ph.i323.i
  %indvars.iv.i324.i = phi i64 [ %indvars.iv.next.i325.i, %.lr.ph.i323.i ], [ %indvars.iv.i324.i.ph, %.lr.ph.i323.i.preheader ] ; 4 uses
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.aou, i64 %indvars.iv.i324.i
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !39
  %i.axo = sitofp nsz i32 %i.axn to float
  %i.axp = fmul nsz float %i.awk, %i.axo
  %i.axq = getelementptr inbounds [4 x i8], ptr %i.atu, i64 %indvars.iv.i324.i
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !39
  %i.axs = sitofp nsz i32 %i.axr to float
  %i.axt = fmul nsz float %i.awp, %i.axs
  %i.axu = fadd nsz float %i.axp, %i.axt
  %i.axv = getelementptr inbounds [4 x i8], ptr %i.awb, i64 %indvars.iv.i324.i
  store float %i.axu, ptr %i.axv, align 4, !tbaa !44
  %indvars.iv.next.i325.i = add nsw i64 %indvars.iv.i324.i, 1 ; 2 uses
  %exitcond.not.i326.i = icmp eq i64 %indvars.iv.next.i325.i, %wide.trip.count.i322.i
  br i1 %exitcond.not.i326.i, label %.loopexit.i319.i, label %.lr.ph.i323.i, !llvm.loop !113

dequantize.exit327.i:                             ; preds = %.loopexit.i319.i, %read_coeffs_fine.exit.i, %read_coeffs_fine.exit.thread461.i, %read_coeffs_fine.exit.thread.i
  %.sroa.15.13 = phi i32 [ %.sroa.15.12, %read_coeffs_fine.exit.thread.i ], [ %.sroa.15.19, %read_coeffs_fine.exit.i ], [ %.sroa.15.17, %read_coeffs_fine.exit.thread461.i ], [ %.sroa.15.19, %.loopexit.i319.i ] ; 4 uses
  %indvars.iv.next394.i = add nuw nsw i64 %indvars.iv393.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next394.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge220.i, label %bb.ao, !llvm.loop !114

.critedge220.i:                                   ; preds = %dequantize.exit327.i
  %i.axw = load i32, ptr %i.rf, align 16, !tbaa !170
  %.not212.i = icmp eq i32 %i.axw, 0              ; 2 uses
  %.in213.v.i = select i1 %.not212.i, i64 8676, i64 8696
  %.in213.i = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.in213.v.i
  %i.axx = load i32, ptr %.in213.i, align 4, !tbaa !39
  store i32 %i.axx, ptr %i.vt, align 8, !tbaa !184
  %i.axy = load i32, ptr %i.pe, align 16, !tbaa !176 ; 2 uses
  %i.axz = sext i32 %i.axy to i64                 ; 2 uses
  %i.aya = getelementptr inbounds [4336 x i8], ptr %i.ay, i64 %i.axz
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 2800 ; 6 uses
  %.not.i78 = icmp eq i32 %i.axy, 0               ; 2 uses
  %i.ayc = zext i1 %.not.i78 to i64
end_hunk_0
