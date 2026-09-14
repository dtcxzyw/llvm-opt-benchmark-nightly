Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/siren?download=true
inline.NumInlined: 28
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 17
begin_hunk_0_@siren_decode:bb.a
  br label %bb.cw

bb.cw:                                            ; preds = %thread-pre-split, %decode_vector.exit
  %.val172 = phi i32 [ %.val172.pre, %thread-pre-split ], [ %.val158.i, %decode_vector.exit ] ; 2 uses
  %.promoted254 = phi i32 [ %.val171.pre, %thread-pre-split ], [ %.val.i186, %decode_vector.exit ] ; 4 uses
  %i.aos = phi i32 [ %.pr, %thread-pre-split ], [ %i.anl, %decode_vector.exit ] ; 6 uses
  %i.aot = sub nsw i32 %.val172, %.promoted254    ; 2 uses
  %i.aou = icmp sgt i32 %i.aot, %i.aos
  br i1 %i.aou, label %.preheader236, label %bb.cy

.preheader236:                                    ; preds = %bb.cw
  %i.aov = load ptr, ptr %i.e, align 16, !tbaa !81
  %i.aow = load i32, ptr %i.am, align 16, !tbaa !83
  br label %bb.cx

bb.cx:                                            ; preds = %.preheader236, %bb.cx
  %i.aox = phi i32 [ %spec.select.i204, %bb.cx ], [ %.promoted254, %.preheader236 ] ; 4 uses
  %.0148 = phi i32 [ %i.apk, %bb.cx ], [ 0, %.preheader236 ]
  %i.aoy = lshr i32 %i.aox, 3
  %i.aoz = zext nneg i32 %i.aoy to i64
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aov, i64 %i.aoz
  %i.apb = load i8, ptr %i.apa, align 1, !tbaa !33
  %i.apc = icmp slt i32 %i.aox, %i.aow
  %i.apd = zext i1 %i.apc to i32
  %spec.select.i204 = add i32 %i.aox, %i.apd      ; 4 uses
  %i.ape = zext i8 %i.apb to i32
  %i.apf = and i32 %i.aox, 7
  %i.apg = shl nuw nsw i32 %i.ape, %i.apf
  %i.aph = lshr i32 %i.apg, 7
  store i32 %spec.select.i204, ptr %i.al, align 8, !tbaa !84
  %i.api = and i32 %i.aph, 1
  %i.apj = xor i32 %i.api, 1
  %i.apk = or i32 %i.apj, %.0148                  ; 2 uses
  %i.apl = sub nsw i32 %.val172, %spec.select.i204
  %i.apm = icmp sgt i32 %i.apl, %i.aos
  br i1 %i.apm, label %bb.cx, label %.loopexit, !llvm.loop !70

bb.cy:                                            ; preds = %bb.cw
  %i.apn = icmp slt i32 %i.aot, %i.aos
  br i1 %i.apn, label %bb.cz, label %.loopexit

bb.cz:                                            ; preds = %bb.cy
  %i.apo = add nuw nsw i32 %i.dd, 1
  %i.app = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !97
  %i.apr = icmp slt i32 %i.apo, %i.apq
  %spec.select = zext i1 %i.apr to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cx, %bb.cz, %bb.cy
  %i.aps = phi i32 [ %.promoted254, %bb.cz ], [ %.promoted254, %bb.cy ], [ %spec.select.i204, %bb.cx ] ; 3 uses
  %.1149 = phi i32 [ %spec.select, %bb.cz ], [ 0, %bb.cy ], [ %i.apk, %bb.cx ] ; 3 uses
  br i1 %i.ta, label %.lr.ph258.preheader, label %._crit_edge259

.lr.ph258.preheader:                              ; preds = %.loopexit
  %wide.trip.count294 = zext nneg i32 %i.sx to i64 ; 3 uses
  %min.iters.check392 = icmp ult i32 %i.sx, 8
  br i1 %min.iters.check392, label %.lr.ph258.preheader422, label %vector.ph393

vector.ph393:                                     ; preds = %.lr.ph258.preheader
  %n.vec394 = and i64 %wide.trip.count294, 2147483640 ; 3 uses
  br label %vector.body395

vector.body395:                                   ; preds = %vector.body395, %vector.ph393
  %index396 = phi i64 [ 0, %vector.ph393 ], [ %index.next399, %vector.body395 ] ; 2 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph393 ], [ %i.apz, %vector.body395 ]
  %vec.phi397 = phi <4 x i1> [ zeroinitializer, %vector.ph393 ], [ %i.aqa, %vector.body395 ]
  %i.apt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index396 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 16
  %wide.load = load <4 x i32>, ptr %i.apt, align 4, !tbaa !32
  %wide.load398 = load <4 x i32>, ptr %i.apu, align 4, !tbaa !32
  %i.apv = add <4 x i32> %wide.load, splat (i32 -34)
  %i.apw = add <4 x i32> %wide.load398, splat (i32 -34)
  %i.apx = icmp ult <4 x i32> %i.apv, splat (i32 -65)
  %i.apy = icmp ult <4 x i32> %i.apw, splat (i32 -65)
  %i.apz = or <4 x i1> %vec.phi, %i.apx           ; 2 uses
  %i.aqa = or <4 x i1> %vec.phi397, %i.apy        ; 2 uses
  %index.next399 = add nuw i64 %index396, 8       ; 2 uses
  %i.aqb = icmp eq i64 %index.next399, %n.vec394
  br i1 %i.aqb, label %middle.block400, label %vector.body395, !llvm.loop !71

middle.block400:                                  ; preds = %vector.body395
  %bin.rdx = or <4 x i1> %i.aqa, %i.apz
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.aqc = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not419 = icmp eq i4 %i.aqc, 0
  %rdx.select = select i1 %.not419, i32 %.1149, i32 1 ; 2 uses
  %cmp.n401 = icmp eq i64 %n.vec394, %wide.trip.count294
  br i1 %cmp.n401, label %._crit_edge259, label %.lr.ph258.preheader422

.lr.ph258.preheader422:                           ; preds = %.lr.ph258.preheader, %middle.block400
  %indvars.iv291.ph = phi i64 [ 0, %.lr.ph258.preheader ], [ %n.vec394, %middle.block400 ]
  %.2255.ph = phi i32 [ %.1149, %.lr.ph258.preheader ], [ %rdx.select, %middle.block400 ]
  br label %.lr.ph258

._crit_edge259:                                   ; preds = %.lr.ph258, %middle.block400, %.loopexit
  %.2.lcssa = phi i32 [ %.1149, %.loopexit ], [ %rdx.select, %middle.block400 ], [ %.3, %.lr.ph258 ]
  %i.aqd = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.aqe = load i32, ptr %i.aqd, align 8, !tbaa !98
  %i.aqf = and i32 %i.aqe, 1
  %.not161 = icmp eq i32 %i.aqf, 0
  %.not162 = icmp eq i32 %i.aos, 0
  %or.cond216 = or i1 %.not162, %.not161
  br i1 %or.cond216, label %bb.dc, label %bb.da

.lr.ph258:                                        ; preds = %.lr.ph258.preheader422, %.lr.ph258
  %indvars.iv291 = phi i64 [ %indvars.iv.next292, %.lr.ph258 ], [ %indvars.iv291.ph, %.lr.ph258.preheader422 ] ; 2 uses
  %.2255 = phi i32 [ %.3, %.lr.ph258 ], [ %.2255.ph, %.lr.ph258.preheader422 ]
  %i.aqg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv291
  %i.aqh = load i32, ptr %i.aqg, align 4, !tbaa !32
  %i.aqi = add i32 %i.aqh, -34
  %or.cond = icmp ult i32 %i.aqi, -65
  %.3 = select i1 %or.cond, i32 1, i32 %.2255     ; 2 uses
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %._crit_edge259, label %.lr.ph258, !llvm.loop !72

bb.da:                                            ; preds = %._crit_edge259
  %i.aqj = load i32, ptr %i.am, align 16, !tbaa !83
  %i.aqk = load ptr, ptr %i.e, align 16, !tbaa !81
  %i.aql = lshr i32 %i.aps, 3
  %i.aqm = zext nneg i32 %i.aql to i64
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.aqk, i64 %i.aqm
  %i.aqo = load i32, ptr %i.aqn, align 1, !tbaa !33
  %i.aqp = tail call i32 @llvm.bswap.i32(i32 %i.aqo)
  %i.aqq = and i32 %i.aps, 7
  %i.aqr = shl i32 %i.aqp, %i.aqq
  %i.aqs = sub nsw i32 32, %i.aos
  %i.aqt = lshr i32 %i.aqr, %i.aqs                ; 2 uses
  %i.aqu = add i32 %i.aps, %i.aos
  %i.aqv = tail call i32 @llvm.umin.i32(i32 %i.aqj, i32 %i.aqu)
  store i32 %i.aqv, ptr %i.al, align 8, !tbaa !84
  %i.aqw = sdiv i32 %.0147, 16
  %i.aqx = add nsw i32 %i.aqw, -1                 ; 3 uses
  %i.aqy = icmp sgt i32 %.0147, 31
  %i.aqz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !80 ; 3 uses
  br i1 %i.aqy, label %.lr.ph263, label %._crit_edge264

.lr.ph263:                                        ; preds = %bb.da
  %smax = tail call i32 @llvm.smax.i32(i32 %i.aqx, i32 1)
  %wide.trip.count299 = zext nneg i32 %smax to i64 ; 3 uses
  %min.iters.check404 = icmp slt i32 %.0147, 144
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph263
  %n.vec406 = and i64 %wide.trip.count299, 2147483640 ; 3 uses
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next413, %vector.body407 ] ; 2 uses
  %vec.phi409 = phi <4 x i32> [ zeroinitializer, %vector.ph405 ], [ %i.arm, %vector.body407 ]
  %vec.phi410 = phi <4 x i32> [ zeroinitializer, %vector.ph405 ], [ %i.arn, %vector.body407 ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph405 ], [ %vec.ind.next, %vector.body407 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.arb = shl nuw nsw i64 %index408, 1
  %i.arc = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.arb ; 2 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %i.arc, i64 8
  %wide.load411 = load <4 x i16>, ptr %i.arc, align 1, !tbaa !33
  %wide.load412 = load <4 x i16>, ptr %i.ard, align 1, !tbaa !33
  %i.are = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load411)
  %i.arf = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %wide.load412)
  %i.arg = zext <4 x i16> %i.are to <4 x i32>
  %i.arh = zext <4 x i16> %i.arf to <4 x i32>
  %i.ari = urem <4 x i32> %vec.ind, splat (i32 15)
  %i.arj = urem <4 x i32> %step.add, splat (i32 15)
  %i.ark = shl nuw nsw <4 x i32> %i.arg, %i.ari
  %i.arl = shl nuw nsw <4 x i32> %i.arh, %i.arj
  %i.arm = xor <4 x i32> %i.ark, %vec.phi409      ; 2 uses
  %i.arn = xor <4 x i32> %i.arl, %vec.phi410      ; 2 uses
  %index.next413 = add nuw i64 %index408, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aro = icmp eq i64 %index.next413, %n.vec406
  br i1 %i.aro, label %middle.block414, label %vector.body407, !llvm.loop !73

middle.block414:                                  ; preds = %vector.body407
  %bin.rdx415 = xor <4 x i32> %i.arn, %i.arm
  %i.arp = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx415) ; 2 uses
  %cmp.n416 = icmp eq i64 %n.vec406, %wide.trip.count299
  br i1 %cmp.n416, label %._crit_edge264, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %.lr.ph263, %middle.block414
  %indvars.iv296.ph = phi i64 [ 0, %.lr.ph263 ], [ %n.vec406, %middle.block414 ]
  %.0143260.ph = phi i32 [ 0, %.lr.ph263 ], [ %i.arp, %middle.block414 ]
  br label %scalar.ph403

._crit_edge264:                                   ; preds = %scalar.ph403, %middle.block414, %bb.da
  %.0143.lcssa = phi i32 [ 0, %bb.da ], [ %i.arp, %middle.block414 ], [ %i.ati, %scalar.ph403 ]
  %i.arq = shl nsw i32 %i.aqx, 1
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds i8, ptr %i.ara, i64 %i.arr
  %i.art = load i16, ptr %i.ars, align 1, !tbaa !33
  %i.aru = tail call i16 @llvm.bswap.i16(i16 %i.art)
  %i.arv = zext i16 %i.aru to i32
  %i.arw = xor i32 %i.aqt, -1
  %i.arx = and i32 %i.arv, %i.arw
  %i.ary = srem i32 %i.aqx, 15
  %i.arz = shl nuw nsw i32 %i.arx, %i.ary
  %i.asa = xor i32 %i.arz, %.0143.lcssa           ; 2 uses
  %i.asb = lshr i32 %i.asa, 15
  %i.asc = xor i32 %i.asb, %i.asa                 ; 3 uses
  %i.asd = and i32 %i.asc, 32640                  ; 2 uses
  %i.ase = lshr i32 %i.asd, 8
  %i.asf = or disjoint i32 %i.ase, %i.asd         ; 2 uses
  %i.asg = lshr i32 %i.asf, 4
  %i.ash = xor i32 %i.asg, %i.asf                 ; 2 uses
  %i.asi = lshr i32 %i.ash, 2
  %i.asj = xor i32 %i.asi, %i.ash                 ; 2 uses
  %i.ask = and i32 %i.asc, 30840                  ; 2 uses
  %i.asl = lshr i32 %i.ask, 8
  %i.asm = xor i32 %i.asl, %i.ask                 ; 2 uses
  %i.asn = lshr i32 %i.asm, 4
  %i.aso = or disjoint i32 %i.asn, %i.asm         ; 2 uses
  %i.asp = lshr i32 %i.aso, 2
  %i.asq = xor i32 %i.asp, %i.aso                 ; 2 uses
  %i.asr = lshr i32 %i.asq, 1
  %i.ass = xor i32 %i.asr, %i.asq
  %i.ast = shl nuw nsw i32 %i.asj, 1
  %i.asu = xor i32 %i.asj, %i.ast
  %i.asv = and i32 %i.asu, 2
  %i.asw = and i32 %i.ass, 1
  %i.asx = or disjoint i32 %i.asw, %i.asv
  %4 = shl nuw nsw i32 %i.asx, 2
  %5 = insertelement <2 x i32> poison, i32 %i.asc, i64 0
  %6 = shufflevector <2 x i32> %5, <2 x i32> poison, <2 x i32> zeroinitializer
  %7 = and <2 x i32> %6, <i32 21845, i32 26214>   ; 2 uses
  %8 = lshr <2 x i32> %7, splat (i32 8)
  %9 = xor <2 x i32> %8, %7                       ; 2 uses
  %10 = lshr <2 x i32> %9, splat (i32 4)
  %11 = xor <2 x i32> %10, %9                     ; 2 uses
  %12 = lshr <2 x i32> %11, splat (i32 2)
  %13 = xor <2 x i32> %12, %11                    ; 3 uses
  %14 = lshr <2 x i32> %13, splat (i32 1)
  %15 = shl nuw nsw <2 x i32> %13, splat (i32 1)
  %16 = shufflevector <2 x i32> %14, <2 x i32> %15, <2 x i32> <i32 0, i32 3>
  %17 = xor <2 x i32> %16, %13
  %18 = and <2 x i32> %17, <i32 1, i32 2>         ; 2 uses
  %19 = extractelement <2 x i32> %18, i64 1
  %i.asy = or disjoint i32 %4, %19
  %20 = extractelement <2 x i32> %18, i64 0
  %i.asz = or disjoint i32 %20, %i.asy
  %.not163 = icmp eq i32 %i.aqt, %i.asz
  br i1 %.not163, label %bb.dc, label %bb.db

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %indvars.iv296 = phi i64 [ %indvars.iv.next297, %scalar.ph403 ], [ %indvars.iv296.ph, %scalar.ph403.preheader ] ; 3 uses
  %.0143260 = phi i32 [ %i.ati, %scalar.ph403 ], [ %.0143260.ph, %scalar.ph403.preheader ]
  %i.ata = shl nuw nsw i64 %indvars.iv296, 1
  %i.atb = getelementptr inbounds nuw i8, ptr %i.ara, i64 %i.ata
  %i.atc = load i16, ptr %i.atb, align 1, !tbaa !33
  %i.atd = tail call i16 @llvm.bswap.i16(i16 %i.atc)
  %i.ate = zext i16 %i.atd to i32
  %i.atf = trunc nuw nsw i64 %indvars.iv296 to i32
  %i.atg = urem i32 %i.atf, 15
  %i.ath = shl nuw nsw i32 %i.ate, %i.atg
  %i.ati = xor i32 %i.ath, %.0143260              ; 2 uses
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1 ; 2 uses
  %exitcond300.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count299
  br i1 %exitcond300.not, label %._crit_edge264, label %scalar.ph403, !llvm.loop !74

bb.db:                                            ; preds = %._crit_edge264
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4) #8
  %i.atj = load i32, ptr %i.aqd, align 8, !tbaa !98
  %i.atk = and i32 %i.atj, 8
  %.not164 = icmp eq i32 %i.atk, 0
  br i1 %.not164, label %..thread_crit_edge, label %.critedge

..thread_crit_edge:                               ; preds = %bb.db
  %.pre313 = load ptr, ptr %i.sy, align 8, !tbaa !88
  br label %.thread

bb.dc:                                            ; preds = %._crit_edge264, %._crit_edge259
  %.not165 = icmp eq i32 %.2.lcssa, 0
  %.pre314 = load ptr, ptr %i.sy, align 8, !tbaa !88 ; 2 uses
  br i1 %.not165, label %bb.dd, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.dc
  %i.atl = phi ptr [ %.pre313, %..thread_crit_edge ], [ %.pre314, %bb.dc ]
  %i.atm = getelementptr inbounds nuw i8, ptr %i.e, i64 836 ; 2 uses
  %i.atn = sext i32 %i.h to i64
  %i.ato = shl nsw i64 %i.atn, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.atl, ptr nonnull align 4 %i.atm, i64 %i.ato, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.atm, i8 0, i64 %i.ato, i1 false)
  br label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.atp = getelementptr inbounds nuw i8, ptr %i.e, i64 836
  %i.atq = sext i32 %i.h to i64
  %i.atr = shl nsw i64 %i.atq, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.atp, ptr align 4 %.pre314, i64 %i.atr, i1 false)
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %.thread
  %i.ats = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 320, ptr %i.ats, align 8, !tbaa !103
  %i.att = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #8 ; 2 uses
  %i.atu = icmp slt i32 %i.att, 0
  br i1 %i.atu, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.de
  %i.atv = load ptr, ptr %i.sy, align 8, !tbaa !88 ; 6 uses
  br label %bb.dg

bb.df:                                            ; preds = %bb.dg
  %i.atw = getelementptr inbounds nuw i8, ptr %i.e, i64 2128
  %i.atx = load ptr, ptr %i.atw, align 16, !tbaa !104
  %i.aty = getelementptr inbounds nuw i8, ptr %i.e, i64 2136
  %i.atz = load ptr, ptr %i.aty, align 8, !tbaa !105
  %i.aua = getelementptr inbounds nuw i8, ptr %i.e, i64 7280 ; 4 uses
  %i.aub = load ptr, ptr %i.aua, align 16, !tbaa !45
  tail call void %i.atx(ptr noundef %i.atz, ptr noundef %i.aub, ptr noundef nonnull %i.atv, i64 noundef 4) #8
  %i.auc = getelementptr inbounds nuw i8, ptr %i.e, i64 2120
  %i.aud = load ptr, ptr %i.auc, align 8, !tbaa !42
  %i.aue = getelementptr inbounds nuw i8, ptr %i.aud, i64 40
  %i.auf = load ptr, ptr %i.aue, align 8, !tbaa !107
  %i.aug = load ptr, ptr %1, align 8, !tbaa !108
  %i.auh = getelementptr inbounds nuw i8, ptr %i.e, i64 7288
  %i.aui = load ptr, ptr %i.auh, align 8, !tbaa !46
  %i.auj = getelementptr inbounds nuw i8, ptr %i.aui, i64 640
  %i.auk = load ptr, ptr %i.aua, align 16, !tbaa !45
  %i.aul = getelementptr inbounds nuw i8, ptr %i.e, i64 7264
  %i.aum = load ptr, ptr %i.aul, align 16, !tbaa !41
  tail call void %i.auf(ptr noundef %i.aug, ptr noundef nonnull %i.auj, ptr noundef %i.auk, ptr noundef %i.aum, i32 noundef 160) #8
  %i.aun = load <2 x ptr>, ptr %i.aua, align 16, !tbaa !31
  %i.auo = shufflevector <2 x ptr> %i.aun, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.auo, ptr %i.aua, align 16, !tbaa !31
  store i32 1, ptr %2, align 4, !tbaa !32
  %i.aup = load i32, ptr %i.i, align 8, !tbaa !43
  %.not166 = icmp eq i32 %i.aup, 0
  br i1 %.not166, label %bb.di, label %bb.dh

bb.dg:                                            ; preds = %bb.dg, %.preheader
  %indvars.iv305 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next306.4, %bb.dg ] ; 7 uses
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %indvars.iv305 ; 2 uses
  %i.aur = load float, ptr %i.auq, align 4, !tbaa !10
  %i.aus = fneg nsz float %i.aur
  store float %i.aus, ptr %i.auq, align 4, !tbaa !10
  %i.aut = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %indvars.iv305
  %i.auu = getelementptr inbounds nuw i8, ptr %i.aut, i64 8 ; 2 uses
  %i.auv = load float, ptr %i.auu, align 4, !tbaa !10
  %i.auw = fneg nsz float %i.auv
  store float %i.auw, ptr %i.auu, align 4, !tbaa !10
  %i.aux = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %indvars.iv305
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aux, i64 16 ; 2 uses
  %i.auz = load float, ptr %i.auy, align 4, !tbaa !10
  %i.ava = fneg nsz float %i.auz
  store float %i.ava, ptr %i.auy, align 4, !tbaa !10
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %indvars.iv305
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 24 ; 2 uses
  %i.avd = load float, ptr %i.avc, align 4, !tbaa !10
  %i.ave = fneg nsz float %i.avd
  store float %i.ave, ptr %i.avc, align 4, !tbaa !10
  %i.avf = getelementptr inbounds nuw [4 x i8], ptr %i.atv, i64 %indvars.iv305
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 32 ; 2 uses
  %i.avh = load float, ptr %i.avg, align 4, !tbaa !10
  %i.avi = fneg nsz float %i.avh
  store float %i.avi, ptr %i.avg, align 4, !tbaa !10
  %indvars.iv.next306.4 = add nuw nsw i64 %indvars.iv305, 10
  %i.avj = icmp samesign ult i64 %indvars.iv305, 310
  br i1 %i.avj, label %bb.dg, label %bb.df, !llvm.loop !75

bb.dh:                                            ; preds = %bb.df
  %i.avk = sdiv i32 %.0147, 8
  br label %.critedge

bb.di:                                            ; preds = %bb.df
  %i.avl = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.avm = load i32, ptr %i.avl, align 8, !tbaa !78
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %categorize_regions.exit.thread, %bb.db, %bb.dh, %bb.di, %bb.de, %decode_vector.exit.thread, %decode_envelope.exit, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ -1094995529, %bb.c ], [ -1094995529, %bb.b ], [ -1094995529, %bb.d ], [ %spec.select.i.i, %decode_envelope.exit ], [ %i.aoq, %decode_vector.exit.thread ], [ %i.att, %bb.de ], [ %i.avm, %bb.di ], [ -1094995529, %categorize_regions.exit.thread ], [ %i.avk, %bb.dh ], [ -1094995529, %bb.db ], [ -1094995529, %bb.f ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @siren_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 836
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %i.c, i8 0, i64 1280, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 7288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1280) %i.e, i8 0, i64 1280, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 7280
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !45
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
