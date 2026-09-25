Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/xtc3?download=true
inline.NumInlined: 116
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@Ptngc_pack_array_xtc3:bb.a
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1076
  %i.aoc = insertelement <2 x i32> poison, i32 %i.anz, i64 0
  %i.aod = insertelement <2 x i32> %i.aoc, i32 %i.aoa, i64 1 ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.akc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph961.preheader, label %vec.epilog.ph, !prof !77

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.anz, %vec.epilog.iter.check ], [ %i.aka, %vector.main.loop.iter.check ]
  %bc.merge.rdx1313 = phi i32 [ %i.aoa, %vec.epilog.iter.check ], [ %i.akb, %vector.main.loop.iter.check ]
  %bc.merge.rdx1314 = phi i32 [ %i.aob, %vec.epilog.iter.check ], [ %.sroa.18.2, %vector.main.loop.iter.check ]
  %n.vec1315 = and i64 %wide.trip.count1076, 4294967288 ; 3 uses
  %i.aoe = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.aof = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1313, i64 0
  %i.aog = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1314, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1316 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1324, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1317 = phi <8 x i32> [ %i.aoe, %vec.epilog.ph ], [ %i.aop, %vec.epilog.vector.body ]
  %vec.phi1318 = phi <8 x i32> [ %i.aof, %vec.epilog.ph ], [ %i.aow, %vec.epilog.vector.body ]
  %vec.phi1319 = phi <8 x i32> [ %i.aog, %vec.epilog.ph ], [ %i.apd, %vec.epilog.vector.body ]
  %i.aoh = mul nuw nsw i64 %index1316, 12
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aoh
  %wide.vec1320 = load <24 x i32>, ptr %i.aoi, align 16, !tbaa !10 ; 3 uses
  %strided.vec1321 = shufflevector <24 x i32> %wide.vec1320, <24 x i32> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec1322 = shufflevector <24 x i32> %wide.vec1320, <24 x i32> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec1323 = shufflevector <24 x i32> %wide.vec1320, <24 x i32> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %i.aoj = add nsw <8 x i32> %strided.vec1321, splat (i32 1)
  %i.aok = sdiv <8 x i32> %i.aoj, splat (i32 2)   ; 2 uses
  %i.aol = and <8 x i32> %strided.vec1321, splat (i32 1)
  %i.aom = icmp eq <8 x i32> %i.aol, zeroinitializer
  %i.aon = sub nsw <8 x i32> zeroinitializer, %i.aok
  %i.aoo = select <8 x i1> %i.aom, <8 x i32> %i.aon, <8 x i32> %i.aok
  %i.aop = add <8 x i32> %i.aoo, %vec.phi1317     ; 2 uses
  %i.aoq = add nsw <8 x i32> %strided.vec1322, splat (i32 1)
  %i.aor = sdiv <8 x i32> %i.aoq, splat (i32 2)   ; 2 uses
  %i.aos = and <8 x i32> %strided.vec1322, splat (i32 1)
  %i.aot = icmp eq <8 x i32> %i.aos, zeroinitializer
  %i.aou = sub nsw <8 x i32> zeroinitializer, %i.aor
  %i.aov = select <8 x i1> %i.aot, <8 x i32> %i.aou, <8 x i32> %i.aor
  %i.aow = add <8 x i32> %i.aov, %vec.phi1318     ; 2 uses
  %i.aox = add nsw <8 x i32> %strided.vec1323, splat (i32 1)
  %i.aoy = sdiv <8 x i32> %i.aox, splat (i32 2)   ; 2 uses
  %i.aoz = and <8 x i32> %strided.vec1323, splat (i32 1)
  %i.apa = icmp eq <8 x i32> %i.aoz, zeroinitializer
  %i.apb = sub nsw <8 x i32> zeroinitializer, %i.aoy
  %i.apc = select <8 x i1> %i.apa, <8 x i32> %i.apb, <8 x i32> %i.aoy
  %i.apd = add <8 x i32> %i.apc, %vec.phi1319     ; 2 uses
  %index.next1324 = add nuw i64 %index1316, 8     ; 2 uses
  %i.ape = icmp eq i64 %index.next1324, %n.vec1315
  br i1 %i.ape, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !61

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.apf = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aop)
  %i.apg = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.aow)
  %i.aph = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.apd) ; 2 uses
  %cmp.n1325 = icmp eq i64 %n.vec1315, %wide.trip.count1076
  %i.api = insertelement <2 x i32> poison, i32 %i.apf, i64 0
  %i.apj = insertelement <2 x i32> %i.api, i32 %i.apg, i64 1 ; 2 uses
  br i1 %cmp.n1325, label %.loopexit, label %.lr.ph961.preheader

.lr.ph961.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1073.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1315, %vec.epilog.middle.block ]
  %.ph = phi i32 [ %.sroa.18.2, %iter.check ], [ %i.aob, %vec.epilog.iter.check ], [ %i.aph, %vec.epilog.middle.block ]
  %.ph1785 = phi <2 x i32> [ %i.rt, %iter.check ], [ %i.aod, %vec.epilog.iter.check ], [ %i.apj, %vec.epilog.middle.block ]
  br label %.lr.ph961

.lr.ph953:                                        ; preds = %.lr.ph953.preheader, %insert_value_in_array.exit673
  %.pre.i671 = phi ptr [ %.pre.i671.pre, %.lr.ph953.preheader ], [ %.pre.i6711098, %insert_value_in_array.exit673 ] ; 2 uses
  %indvars.iv1067 = phi i64 [ 0, %.lr.ph953.preheader ], [ %indvars.iv.next1068, %insert_value_in_array.exit673 ] ; 2 uses
  %i.apk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv1067
  %i.apl = load i32, ptr %i.apk, align 4, !tbaa !10
  %i.apm = load i32, ptr %i.eo, align 8, !tbaa !10 ; 2 uses
  %i.apn = add nsw i32 %i.apm, 1                  ; 4 uses
  store i32 %i.apn, ptr %i.eo, align 8, !tbaa !10
  %i.apo = load i32, ptr %i.ep, align 4, !tbaa !10
  %.not.i.i670 = icmp slt i32 %i.apm, %i.apo
  br i1 %.not.i.i670, label %insert_value_in_array.exit673, label %bb.el

bb.el:                                            ; preds = %.lr.ph953
  %i.app = sdiv i32 %i.apn, 2
  %i.apq = add nsw i32 %i.app, %i.apn             ; 2 uses
  store i32 %i.apq, ptr %i.ep, align 4, !tbaa !10
  %i.apr = sext i32 %i.apq to i64
  %i.aps = shl nsw i64 %i.apr, 2
  %i.apt = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i671, i64 noundef %i.aps, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.apt, ptr %i.en, align 8, !tbaa !19
  br label %insert_value_in_array.exit673

insert_value_in_array.exit673:                    ; preds = %.lr.ph953, %bb.el
  %.pre.i6711098 = phi ptr [ %.pre.i671, %.lr.ph953 ], [ %i.apt, %bb.el ] ; 2 uses
  %i.apu = sext i32 %i.apn to i64
  %i.apv = getelementptr [4 x i8], ptr %.pre.i6711098, i64 %i.apu
  %i.apw = getelementptr i8, ptr %i.apv, i64 -4
  store i32 %i.apl, ptr %i.apw, align 4, !tbaa !10
  %indvars.iv.next1068 = add nuw nsw i64 %indvars.iv1067, 1 ; 2 uses
  %exitcond1072.not = icmp eq i64 %indvars.iv.next1068, %wide.trip.count1071
  br i1 %exitcond1072.not, label %iter.check, label %.lr.ph953, !llvm.loop !62

.lr.ph961:                                        ; preds = %.lr.ph961.preheader, %.lr.ph961
  %indvars.iv1073 = phi i64 [ %indvars.iv.next1074, %.lr.ph961 ], [ %indvars.iv1073.ph, %.lr.ph961.preheader ] ; 2 uses
  %i.apx = phi i32 [ %i.aqp, %.lr.ph961 ], [ %.ph, %.lr.ph961.preheader ]
  %i.apy = phi <2 x i32> [ %i.aqh, %.lr.ph961 ], [ %.ph1785, %.lr.ph961.preheader ]
  %.idx = mul nuw nsw i64 %indvars.iv1073, 12
  %i.apz = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.aqa = load <2 x i32>, ptr %i.apz, align 4, !tbaa !10 ; 2 uses
  %i.aqb = add nsw <2 x i32> %i.aqa, splat (i32 1)
  %i.aqc = sdiv <2 x i32> %i.aqb, splat (i32 2)   ; 2 uses
  %i.aqd = and <2 x i32> %i.aqa, splat (i32 1)
  %i.aqe = icmp eq <2 x i32> %i.aqd, zeroinitializer
  %i.aqf = sub nsw <2 x i32> zeroinitializer, %i.aqc
  %i.aqg = select <2 x i1> %i.aqe, <2 x i32> %i.aqf, <2 x i32> %i.aqc
  %i.aqh = add nsw <2 x i32> %i.aqg, %i.apy       ; 2 uses
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.apz, i64 8
  %i.aqj = load i32, ptr %i.aqi, align 4, !tbaa !10 ; 2 uses
  %i.aqk = add nsw i32 %i.aqj, 1
  %i.aql = sdiv i32 %i.aqk, 2                     ; 2 uses
  %i.aqm = and i32 %i.aqj, 1
  %i.aqn = icmp eq i32 %i.aqm, 0
  %i.aqo = sub nsw i32 0, %i.aql
  %spec.select.i676 = select i1 %i.aqn, i32 %i.aqo, i32 %i.aql
  %i.aqp = add nsw i32 %spec.select.i676, %i.apx  ; 2 uses
  %indvars.iv.next1074 = add nuw nsw i64 %indvars.iv1073, 1 ; 2 uses
  %exitcond1077.not = icmp eq i64 %indvars.iv.next1074, %wide.trip.count1076
  br i1 %exitcond1077.not, label %.loopexit, label %.lr.ph961, !llvm.loop !63

.loopexit:                                        ; preds = %.lr.ph961, %middle.block, %vec.epilog.middle.block, %.preheader888
  %.sroa.18.3 = phi i32 [ %i.aft, %.preheader888 ], [ %i.aph, %vec.epilog.middle.block ], [ %i.aob, %middle.block ], [ %i.aqp, %.lr.ph961 ]
  %.2491 = phi i32 [ %.0489974, %.preheader888 ], [ %.1490, %vec.epilog.middle.block ], [ %.1490, %middle.block ], [ %.1490, %.lr.ph961 ]
  %.3484 = phi i32 [ %.0481975, %.preheader888 ], [ %.2483, %vec.epilog.middle.block ], [ %.2483, %middle.block ], [ %.2483, %.lr.ph961 ]
  %.pn = phi i32 [ %i.afl, %.preheader888 ], [ %i.ajz, %vec.epilog.middle.block ], [ %i.ajz, %middle.block ], [ %i.ajz, %.lr.ph961 ]
  %.2483.pn = phi i32 [ %.0445, %.preheader888 ], [ %.2483, %vec.epilog.middle.block ], [ %.2483, %middle.block ], [ %.2483, %.lr.ph961 ]
  %i.aqq = phi <2 x i32> [ %i.afq, %.preheader888 ], [ %i.apj, %vec.epilog.middle.block ], [ %i.aod, %middle.block ], [ %i.aqh, %.lr.ph961 ]
  %.3472 = sub nsw i32 %.2471, %.2483.pn
  %.3476 = add nsw i32 %.pn, %.2475
  br label %bb.em

bb.em:                                            ; preds = %.loopexit, %bb.cx, %._crit_edge969
  %.sroa.18.4 = phi i32 [ %.sroa.18.0, %._crit_edge969 ], [ %.sroa.18.3, %.loopexit ], [ %.sroa.18.2, %bb.cx ]
  %.3861 = phi i32 [ %.0858973, %._crit_edge969 ], [ %.2860, %.loopexit ], [ %.2860, %bb.cx ]
  %.4493 = phi i32 [ %.0489974, %._crit_edge969 ], [ %.2491, %.loopexit ], [ %.0489974, %bb.cx ]
  %.5486 = phi i32 [ %.0481975, %._crit_edge969 ], [ %.3484, %.loopexit ], [ %.0481975, %bb.cx ]
  %.5478 = phi i32 [ %.1474.lcssa, %._crit_edge969 ], [ %.3476, %.loopexit ], [ %.2475, %bb.cx ]
  %.5 = phi i32 [ %.1470.lcssa, %._crit_edge969 ], [ %.3472, %.loopexit ], [ %.2471, %bb.cx ] ; 2 uses
  %.3468 = phi i32 [ %.0465978, %._crit_edge969 ], [ 0, %.loopexit ], [ 1, %bb.cx ]
  %i.aqr = phi <2 x i32> [ %i.er, %._crit_edge969 ], [ %i.aqq, %.loopexit ], [ %i.rt, %bb.cx ]
  %.not = icmp eq i32 %.5, 0
  br i1 %.not, label %._crit_edge980, label %bb.ag, !llvm.loop !64

._crit_edge980:                                   ; preds = %bb.em, %positive_int.exit588
  %i.aqs = load i32, ptr %i.f, align 8, !tbaa !14 ; 2 uses
  %.not534 = icmp eq i32 %i.aqs, 0
  br i1 %.not534, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %._crit_edge980
  call fastcc void @flush_large(ptr noundef %4, i32 noundef %i.aqs)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %._crit_edge980
  %i.aqt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aqu = load i32, ptr %i.aqt, align 8, !tbaa !22 ; 5 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %.04381201, i64 12
  store i32 %i.aqu, ptr %i.aqv, align 1
  %.not535 = icmp eq i32 %i.aqu, 0
  br i1 %.not535, label %bb.et, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aqw = tail call i32 @bwlzh_get_buflen(i32 noundef %i.aqu) #12
  %i.aqx = sext i32 %i.aqw to i64
  %i.aqy = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.aqx, ptr noundef nonnull @.str, i32 noundef 1620) #12 ; 4 uses
  %i.aqz = icmp sgt i32 %3, 4
  %i.ara = load ptr, ptr %4, align 8, !tbaa !23   ; 2 uses
  br i1 %i.aqz, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  call void @bwlzh_compress(ptr noundef %i.ara, i32 noundef %i.aqu, ptr noundef %i.aqy, ptr noundef nonnull %i.b) #12
  br label %bb.es

bb.er:                                            ; preds = %bb.ep
  call void @bwlzh_compress_no_lz77(ptr noundef %i.ara, i32 noundef %i.aqu, ptr noundef %i.aqy, ptr noundef nonnull %i.b) #12
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq
  %i.arb = load i32, ptr %i.b, align 4, !tbaa !10 ; 3 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.04381201, i64 16
  store i32 %i.arb, ptr %i.arc, align 1
  %i.ard = getelementptr inbounds nuw i8, ptr %.04381201, i64 20
  %i.are = sext i32 %i.arb to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ard, ptr align 1 %i.aqy, i64 %i.are, i1 false)
  %i.arf = add nsw i32 %i.arb, 20
  call void @free(ptr noundef %i.aqy) #12
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.eo
  %.0855 = phi i32 [ 16, %bb.eo ], [ %i.arf, %bb.es ] ; 3 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.arh = sext i32 %.0855 to i64
  %i.ari = getelementptr i8, ptr %.04381201, i64 %i.arh ; 4 uses
  %i.arj = add nsw i32 %.0855, 4                  ; 2 uses
  %5 = load <4 x i32>, ptr %i.arg, align 8
  %6 = shufflevector <4 x i32> %5, <4 x i32> poison, <4 x i32> zeroinitializer
  %7 = lshr <4 x i32> %6, <i32 0, i32 8, i32 16, i32 24>
  %8 = trunc <4 x i32> %7 to <4 x i8>
  store <4 x i8> %8, ptr %i.ari, align 1, !tbaa !24
  %i.ark = load i32, ptr %i.arg, align 8, !tbaa !25 ; 2 uses
  %.not536 = icmp eq i32 %i.ark, 0
  br i1 %.not536, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.arl = call i32 @bwlzh_get_buflen(i32 noundef %i.ark) #12
  %i.arm = sext i32 %i.arl to i64
  %i.arn = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.arm, ptr noundef nonnull @.str, i32 noundef 1642) #12 ; 4 uses
  %i.aro = icmp sgt i32 %3, 4
  %i.arp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !26 ; 2 uses
  %i.arr = load i32, ptr %i.arg, align 8, !tbaa !25 ; 2 uses
  br i1 %i.aro, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  call void @bwlzh_compress(ptr noundef %i.arq, i32 noundef %i.arr, ptr noundef %i.arn, ptr noundef nonnull %i.b) #12
  br label %bb.ex

bb.ew:                                            ; preds = %bb.eu
  call void @bwlzh_compress_no_lz77(ptr noundef %i.arq, i32 noundef %i.arr, ptr noundef %i.arn, ptr noundef nonnull %i.b) #12
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev
  %i.ars = load i32, ptr %i.b, align 4, !tbaa !10 ; 4 uses
  %i.art = trunc i32 %i.ars to i8
  %i.aru = sext i32 %i.arj to i64
  %i.arv = getelementptr inbounds i8, ptr %.04381201, i64 %i.aru
  store i8 %i.art, ptr %i.arv, align 1, !tbaa !24
  %i.arw = lshr i32 %i.ars, 8
  %i.arx = trunc i32 %i.arw to i8
  %i.ary = getelementptr i8, ptr %i.ari, i64 5
  store i8 %i.arx, ptr %i.ary, align 1, !tbaa !24
  %i.arz = lshr i32 %i.ars, 16
  %i.asa = trunc i32 %i.arz to i8
  %i.asb = getelementptr i8, ptr %i.ari, i64 6
  store i8 %i.asa, ptr %i.asb, align 1, !tbaa !24
  %i.asc = lshr i32 %i.ars, 24
  %i.asd = trunc nuw i32 %i.asc to i8
  %i.ase = add nsw i32 %.0855, 8                  ; 2 uses
  %i.asf = getelementptr i8, ptr %i.ari, i64 7
  store i8 %i.asd, ptr %i.asf, align 1, !tbaa !24
  %i.asg = sext i32 %i.ase to i64
  %i.ash = getelementptr inbounds i8, ptr %.04381201, i64 %i.asg
  %i.asi = load i32, ptr %i.b, align 4, !tbaa !10
  %i.asj = sext i32 %i.asi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ash, ptr align 1 %i.arn, i64 %i.asj, i1 false)
  %i.ask = load i32, ptr %i.b, align 4, !tbaa !10
  %i.asl = add nsw i32 %i.ask, %i.ase
  call void @free(ptr noundef %i.arn) #12
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.et
  %.1856 = phi i32 [ %i.arj, %bb.et ], [ %i.asl, %bb.ex ] ; 4 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 5 uses
  %i.asn = sext i32 %.1856 to i64
  %i.aso = getelementptr i8, ptr %.04381201, i64 %i.asn ; 3 uses
  %i.asp = add nsw i32 %.1856, 4                  ; 2 uses
  %9 = load <4 x i32>, ptr %i.asm, align 8
  %10 = shufflevector <4 x i32> %9, <4 x i32> poison, <4 x i32> zeroinitializer
  %11 = lshr <4 x i32> %10, <i32 0, i32 8, i32 16, i32 24>
  %12 = trunc <4 x i32> %11 to <4 x i8>
  store <4 x i8> %12, ptr %i.aso, align 1, !tbaa !24
  %i.asq = load i32, ptr %i.asm, align 8, !tbaa !27 ; 7 uses
  %.not537 = icmp eq i32 %i.asq, 0
  br i1 %.not537, label %bb.fk, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.asr = icmp slt i32 %3, 3
  br i1 %i.asr, label %bb.fc, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.ass = icmp samesign ult i32 %3, 6
  br i1 %i.ass, label %bb.fb, label %bb.fd

bb.fb:                                            ; preds = %bb.fa
  %i.ast = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !28 ; 3 uses
  %i.asv = icmp sgt i32 %i.asq, 0
  br i1 %i.asv, label %iter.check1613, label %heuristic_bwlzh.exit

iter.check1613:                                   ; preds = %bb.fb
  %wide.trip.count.i678 = zext nneg i32 %i.asq to i64 ; 6 uses
  %min.iters.check1590 = icmp ult i32 %i.asq, 8
  br i1 %min.iters.check1590, label %.lr.ph.i679.preheader, label %vector.main.loop.iter.check1591

vector.main.loop.iter.check1591:                  ; preds = %iter.check1613
  %min.iters.check1592 = icmp ult i32 %i.asq, 32
  br i1 %min.iters.check1592, label %vec.epilog.ph1617, label %vector.ph1593

vector.ph1593:                                    ; preds = %vector.main.loop.iter.check1591
  %i.asw = and i64 %wide.trip.count.i678, 24
  %n.vec1594 = and i64 %wide.trip.count.i678, 2147483616 ; 4 uses
  br label %vector.body1595

vector.body1595:                                  ; preds = %vector.ph1593, %vector.body1595
  %index1596 = phi i64 [ 0, %vector.ph1593 ], [ %index.next1605, %vector.body1595 ] ; 2 uses
  %vec.phi1597 = phi <8 x i32> [ zeroinitializer, %vector.ph1593 ], [ %i.atj, %vector.body1595 ]
  %vec.phi1598 = phi <8 x i32> [ zeroinitializer, %vector.ph1593 ], [ %i.atk, %vector.body1595 ]
  %vec.phi1599 = phi <8 x i32> [ zeroinitializer, %vector.ph1593 ], [ %i.atl, %vector.body1595 ]
  %vec.phi1600 = phi <8 x i32> [ zeroinitializer, %vector.ph1593 ], [ %i.atm, %vector.body1595 ]
  %i.asx = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %index1596 ; 4 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 32
  %i.asz = getelementptr inbounds nuw i8, ptr %i.asx, i64 64
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asx, i64 96
  %wide.load1601 = load <8 x i32>, ptr %i.asx, align 4, !tbaa !10
  %wide.load1602 = load <8 x i32>, ptr %i.asy, align 4, !tbaa !10
  %wide.load1603 = load <8 x i32>, ptr %i.asz, align 4, !tbaa !10
  %wide.load1604 = load <8 x i32>, ptr %i.ata, align 4, !tbaa !10
  %i.atb = icmp ugt <8 x i32> %wide.load1601, splat (i32 16383)
  %i.atc = icmp ugt <8 x i32> %wide.load1602, splat (i32 16383)
  %i.atd = icmp ugt <8 x i32> %wide.load1603, splat (i32 16383)
  %i.ate = icmp ugt <8 x i32> %wide.load1604, splat (i32 16383)
  %i.atf = zext <8 x i1> %i.atb to <8 x i32>
  %i.atg = zext <8 x i1> %i.atc to <8 x i32>
  %i.ath = zext <8 x i1> %i.atd to <8 x i32>
  %i.ati = zext <8 x i1> %i.ate to <8 x i32>
  %i.atj = add <8 x i32> %vec.phi1597, %i.atf     ; 2 uses
  %i.atk = add <8 x i32> %vec.phi1598, %i.atg     ; 2 uses
  %i.atl = add <8 x i32> %vec.phi1599, %i.ath     ; 2 uses
  %i.atm = add <8 x i32> %vec.phi1600, %i.ati     ; 2 uses
  %index.next1605 = add nuw i64 %index1596, 32    ; 2 uses
  %i.atn = icmp eq i64 %index.next1605, %n.vec1594
  br i1 %i.atn, label %middle.block1606, label %vector.body1595, !llvm.loop !65

middle.block1606:                                 ; preds = %vector.body1595
  %bin.rdx1607 = add <8 x i32> %i.atk, %i.atj
  %bin.rdx1608 = add <8 x i32> %i.atl, %bin.rdx1607
  %bin.rdx1609 = add <8 x i32> %i.atm, %bin.rdx1608
  %i.ato = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1609) ; 3 uses
  %cmp.n1610 = icmp eq i64 %n.vec1594, %wide.trip.count.i678
  br i1 %cmp.n1610, label %heuristic_bwlzh.exit, label %vec.epilog.iter.check1615

vec.epilog.iter.check1615:                        ; preds = %middle.block1606
  %min.epilog.iters.check1616 = icmp eq i64 %i.asw, 0
  br i1 %min.epilog.iters.check1616, label %.lr.ph.i679.preheader, label %vec.epilog.ph1617, !prof !77

vec.epilog.ph1617:                                ; preds = %vector.main.loop.iter.check1591, %vec.epilog.iter.check1615
  %vec.epilog.resume.val1611 = phi i64 [ %n.vec1594, %vec.epilog.iter.check1615 ], [ 0, %vector.main.loop.iter.check1591 ]
  %bc.merge.rdx1612 = phi i32 [ %i.ato, %vec.epilog.iter.check1615 ], [ 0, %vector.main.loop.iter.check1591 ]
  %n.vec1618 = and i64 %wide.trip.count.i678, 2147483640 ; 3 uses
  %i.atp = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1612, i64 0
  br label %vec.epilog.vector.body1619

vec.epilog.vector.body1619:                       ; preds = %vec.epilog.vector.body1619, %vec.epilog.ph1617
  %index1620 = phi i64 [ %vec.epilog.resume.val1611, %vec.epilog.ph1617 ], [ %index.next1623, %vec.epilog.vector.body1619 ] ; 2 uses
  %vec.phi1621 = phi <8 x i32> [ %i.atp, %vec.epilog.ph1617 ], [ %i.att, %vec.epilog.vector.body1619 ]
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %index1620
  %wide.load1622 = load <8 x i32>, ptr %i.atq, align 4, !tbaa !10
  %i.atr = icmp ugt <8 x i32> %wide.load1622, splat (i32 16383)
  %i.ats = zext <8 x i1> %i.atr to <8 x i32>
  %i.att = add <8 x i32> %vec.phi1621, %i.ats     ; 2 uses
  %index.next1623 = add nuw i64 %index1620, 8     ; 2 uses
  %i.atu = icmp eq i64 %index.next1623, %n.vec1618
  br i1 %i.atu, label %vec.epilog.middle.block1624, label %vec.epilog.vector.body1619, !llvm.loop !66

vec.epilog.middle.block1624:                      ; preds = %vec.epilog.vector.body1619
  %i.atv = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.att) ; 2 uses
  %cmp.n1625 = icmp eq i64 %n.vec1618, %wide.trip.count.i678
  br i1 %cmp.n1625, label %heuristic_bwlzh.exit, label %.lr.ph.i679.preheader

.lr.ph.i679.preheader:                            ; preds = %iter.check1613, %vec.epilog.iter.check1615, %vec.epilog.middle.block1624
  %indvars.iv.i680.ph = phi i64 [ 0, %iter.check1613 ], [ %n.vec1594, %vec.epilog.iter.check1615 ], [ %n.vec1618, %vec.epilog.middle.block1624 ]
  %.012.i.ph = phi i32 [ 0, %iter.check1613 ], [ %i.ato, %vec.epilog.iter.check1615 ], [ %i.atv, %vec.epilog.middle.block1624 ]
  br label %.lr.ph.i679

.lr.ph.i679:                                      ; preds = %.lr.ph.i679.preheader, %.lr.ph.i679
  %indvars.iv.i680 = phi i64 [ %indvars.iv.next.i682, %.lr.ph.i679 ], [ %indvars.iv.i680.ph, %.lr.ph.i679.preheader ] ; 2 uses
  %.012.i = phi i32 [ %spec.select.i681, %.lr.ph.i679 ], [ %.012.i.ph, %.lr.ph.i679.preheader ]
  %i.atw = getelementptr inbounds nuw [4 x i8], ptr %i.asu, i64 %indvars.iv.i680
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !10
  %i.aty = icmp ugt i32 %i.atx, 16383
  %i.atz = zext i1 %i.aty to i32
  %spec.select.i681 = add nuw nsw i32 %.012.i, %i.atz ; 2 uses
  %indvars.iv.next.i682 = add nuw nsw i64 %indvars.iv.i680, 1 ; 2 uses
  %exitcond.not.i683 = icmp eq i64 %indvars.iv.next.i682, %wide.trip.count.i678
  br i1 %exitcond.not.i683, label %heuristic_bwlzh.exit, label %.lr.ph.i679, !llvm.loop !67

heuristic_bwlzh.exit:                             ; preds = %.lr.ph.i679, %middle.block1606, %vec.epilog.middle.block1624, %bb.fb
  %.0.lcssa.i = phi i32 [ 0, %bb.fb ], [ %i.atv, %vec.epilog.middle.block1624 ], [ %i.ato, %middle.block1606 ], [ %spec.select.i681, %.lr.ph.i679 ]
  %i.aua = sdiv i32 %i.asq, 10
  %.not875 = icmp sgt i32 %.0.lcssa.i, %i.aua
  br i1 %.not875, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %heuristic_bwlzh.exit, %bb.ez
  store i32 2147483647, ptr %i.b, align 4, !tbaa !10
  br label %bb.fg

bb.fd:                                            ; preds = %heuristic_bwlzh.exit, %bb.fa
  %i.aub = call i32 @bwlzh_get_buflen(i32 noundef %i.asq) #12
  %i.auc = sext i32 %i.aub to i64
  %i.aud = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.auc, ptr noundef nonnull @.str, i32 noundef 1672) #12 ; 4 uses
  %i.aue = icmp samesign ugt i32 %3, 4
  %i.auf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !28 ; 2 uses
  %i.auh = load i32, ptr %i.asm, align 8, !tbaa !27 ; 2 uses
  br i1 %i.aue, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  call void @bwlzh_compress(ptr noundef %i.aug, i32 noundef %i.auh, ptr noundef %i.aud, ptr noundef nonnull %i.b) #12
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fd
  call void @bwlzh_compress_no_lz77(ptr noundef %i.aug, i32 noundef %i.auh, ptr noundef %i.aud, ptr noundef nonnull %i.b) #12
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff, %bb.fc
  %.0461 = phi ptr [ null, %bb.fc ], [ %i.aud, %bb.fe ], [ %i.aud, %bb.ff ] ; 2 uses
  %i.aui = load i32, ptr %i.asm, align 8, !tbaa !27
  %i.auj = add nsw i32 %i.aui, 3
  %i.auk = sext i32 %i.auj to i64
  %i.aul = shl nsw i64 %i.auk, 2
  %i.aum = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.aul, ptr noundef nonnull @.str, i32 noundef 1684) #12 ; 3 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.auo = load ptr, ptr %i.aun, align 8, !tbaa !28
  %i.aup = load i32, ptr %i.asm, align 8, !tbaa !27
  call fastcc void @base_compress(ptr noundef %i.auo, i32 noundef %i.aup, ptr noundef %i.aum, ptr noundef %i.c)
  %i.auq = load i32, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.aur = load i32, ptr %i.b, align 4, !tbaa !10
  %i.aus = icmp slt i32 %i.auq, %i.aur
  %i.aut = sext i32 %i.asp to i64
  %i.auu = getelementptr inbounds i8, ptr %.04381201, i64 %i.aut ; 2 uses
  br i1 %i.aus, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store i8 0, ptr %i.auu, align 1, !tbaa !24
  %i.auv = getelementptr i8, ptr %i.aso, i64 5
  %i.auw = add nsw i32 %.1856, 9                  ; 2 uses
  %13 = insertelement <4 x i32> poison, i32 %i.auq, i64 0
  %14 = shufflevector <4 x i32> %13, <4 x i32> poison, <4 x i32> zeroinitializer
  %15 = lshr <4 x i32> %14, <i32 0, i32 8, i32 16, i32 24>
  %16 = trunc <4 x i32> %15 to <4 x i8>
  store <4 x i8> %16, ptr %i.auv, align 1, !tbaa !24
  %i.aux = sext i32 %i.auw to i64
  %i.auy = getelementptr inbounds i8, ptr %.04381201, i64 %i.aux
  %i.auz = sext i32 %i.auq to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.auy, ptr align 1 %i.aum, i64 %i.auz, i1 false)
  %i.ava = add nsw i32 %i.auq, %i.auw
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  store i8 1, ptr %i.auu, align 1, !tbaa !24
  %i.avb = getelementptr i8, ptr %i.aso, i64 5
  %i.avc = add nsw i32 %.1856, 9                  ; 2 uses
  %17 = load i32, ptr %i.b, align 4, !tbaa !10
  %18 = insertelement <4 x i32> poison, i32 %17, i64 0
  %19 = shufflevector <4 x i32> %18, <4 x i32> poison, <4 x i32> zeroinitializer
  %20 = lshr <4 x i32> %19, <i32 0, i32 8, i32 16, i32 24>
  %21 = trunc <4 x i32> %20 to <4 x i8>
  store <4 x i8> %21, ptr %i.avb, align 1, !tbaa !24
  %i.avd = sext i32 %i.avc to i64
  %i.ave = getelementptr inbounds i8, ptr %.04381201, i64 %i.avd
  %i.avf = load i32, ptr %i.b, align 4, !tbaa !10
  %i.avg = sext i32 %i.avf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ave, ptr align 1 %.0461, i64 %i.avg, i1 false)
  %i.avh = load i32, ptr %i.b, align 4, !tbaa !10
  %i.avi = add nsw i32 %i.avh, %i.avc
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %storemerge = phi i32 [ %i.avi, %bb.fi ], [ %i.ava, %bb.fh ]
  call void @free(ptr noundef %.0461) #12
  call void @free(ptr noundef %i.aum) #12
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.ey
  %.2 = phi i32 [ %i.asp, %bb.ey ], [ %storemerge, %bb.fj ] ; 4 uses
  %i.avj = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 5 uses
  %i.avk = sext i32 %.2 to i64
  %i.avl = getelementptr i8, ptr %.04381201, i64 %i.avk ; 3 uses
  %i.avm = add nsw i32 %.2, 4                     ; 2 uses
  %22 = load <4 x i32>, ptr %i.avj, align 8
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer
  %24 = lshr <4 x i32> %23, <i32 0, i32 8, i32 16, i32 24>
  %25 = trunc <4 x i32> %24 to <4 x i8>
  store <4 x i8> %25, ptr %i.avl, align 1, !tbaa !24
  %i.avn = load i32, ptr %i.avj, align 8, !tbaa !29 ; 7 uses
  %.not539 = icmp eq i32 %i.avn, 0
  br i1 %.not539, label %bb.fw, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.avo = icmp slt i32 %3, 3
  br i1 %i.avo, label %bb.fo, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.avp = icmp samesign ult i32 %3, 6
  br i1 %i.avp, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %i.avq = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.avr = load ptr, ptr %i.avq, align 8, !tbaa !30 ; 3 uses
  %i.avs = icmp sgt i32 %i.avn, 0
  br i1 %i.avs, label %iter.check1651, label %heuristic_bwlzh.exit694

iter.check1651:                                   ; preds = %bb.fn
  %wide.trip.count.i687 = zext nneg i32 %i.avn to i64 ; 6 uses
  %min.iters.check1628 = icmp ult i32 %i.avn, 8
  br i1 %min.iters.check1628, label %.lr.ph.i688.preheader, label %vector.main.loop.iter.check1629

vector.main.loop.iter.check1629:                  ; preds = %iter.check1651
  %min.iters.check1630 = icmp ult i32 %i.avn, 32
  br i1 %min.iters.check1630, label %vec.epilog.ph1655, label %vector.ph1631

vector.ph1631:                                    ; preds = %vector.main.loop.iter.check1629
  %i.avt = and i64 %wide.trip.count.i687, 24
  %n.vec1632 = and i64 %wide.trip.count.i687, 2147483616 ; 4 uses
  br label %vector.body1633

vector.body1633:                                  ; preds = %vector.ph1631, %vector.body1633
  %index1634 = phi i64 [ 0, %vector.ph1631 ], [ %index.next1643, %vector.body1633 ] ; 2 uses
  %vec.phi1635 = phi <8 x i32> [ zeroinitializer, %vector.ph1631 ], [ %i.awg, %vector.body1633 ]
  %vec.phi1636 = phi <8 x i32> [ zeroinitializer, %vector.ph1631 ], [ %i.awh, %vector.body1633 ]
  %vec.phi1637 = phi <8 x i32> [ zeroinitializer, %vector.ph1631 ], [ %i.awi, %vector.body1633 ]
  %vec.phi1638 = phi <8 x i32> [ zeroinitializer, %vector.ph1631 ], [ %i.awj, %vector.body1633 ]
  %i.avu = getelementptr inbounds nuw [4 x i8], ptr %i.avr, i64 %index1634 ; 4 uses
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 32
  %i.avw = getelementptr inbounds nuw i8, ptr %i.avu, i64 64
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avu, i64 96
  %wide.load1639 = load <8 x i32>, ptr %i.avu, align 4, !tbaa !10
  %wide.load1640 = load <8 x i32>, ptr %i.avv, align 4, !tbaa !10
  %wide.load1641 = load <8 x i32>, ptr %i.avw, align 4, !tbaa !10
  %wide.load1642 = load <8 x i32>, ptr %i.avx, align 4, !tbaa !10
  %i.avy = icmp ugt <8 x i32> %wide.load1639, splat (i32 16383)
  %i.avz = icmp ugt <8 x i32> %wide.load1640, splat (i32 16383)
  %i.awa = icmp ugt <8 x i32> %wide.load1641, splat (i32 16383)
  %i.awb = icmp ugt <8 x i32> %wide.load1642, splat (i32 16383)
  %i.awc = zext <8 x i1> %i.avy to <8 x i32>
  %i.awd = zext <8 x i1> %i.avz to <8 x i32>
  %i.awe = zext <8 x i1> %i.awa to <8 x i32>
  %i.awf = zext <8 x i1> %i.awb to <8 x i32>
  %i.awg = add <8 x i32> %vec.phi1635, %i.awc     ; 2 uses
  %i.awh = add <8 x i32> %vec.phi1636, %i.awd     ; 2 uses
  %i.awi = add <8 x i32> %vec.phi1637, %i.awe     ; 2 uses
  %i.awj = add <8 x i32> %vec.phi1638, %i.awf     ; 2 uses
  %index.next1643 = add nuw i64 %index1634, 32    ; 2 uses
  %i.awk = icmp eq i64 %index.next1643, %n.vec1632
  br i1 %i.awk, label %middle.block1644, label %vector.body1633, !llvm.loop !68

middle.block1644:                                 ; preds = %vector.body1633
  %bin.rdx1645 = add <8 x i32> %i.awh, %i.awg
  %bin.rdx1646 = add <8 x i32> %i.awi, %bin.rdx1645
  %bin.rdx1647 = add <8 x i32> %i.awj, %bin.rdx1646
  %i.awl = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1647) ; 3 uses
  %cmp.n1648 = icmp eq i64 %n.vec1632, %wide.trip.count.i687
  br i1 %cmp.n1648, label %heuristic_bwlzh.exit694, label %vec.epilog.iter.check1653

vec.epilog.iter.check1653:                        ; preds = %middle.block1644
  %min.epilog.iters.check1654 = icmp eq i64 %i.avt, 0
  br i1 %min.epilog.iters.check1654, label %.lr.ph.i688.preheader, label %vec.epilog.ph1655, !prof !77

vec.epilog.ph1655:                                ; preds = %vector.main.loop.iter.check1629, %vec.epilog.iter.check1653
  %vec.epilog.resume.val1649 = phi i64 [ %n.vec1632, %vec.epilog.iter.check1653 ], [ 0, %vector.main.loop.iter.check1629 ]
  %bc.merge.rdx1650 = phi i32 [ %i.awl, %vec.epilog.iter.check1653 ], [ 0, %vector.main.loop.iter.check1629 ]
  %n.vec1656 = and i64 %wide.trip.count.i687, 2147483640 ; 3 uses
  %i.awm = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1650, i64 0
  br label %vec.epilog.vector.body1657

vec.epilog.vector.body1657:                       ; preds = %vec.epilog.vector.body1657, %vec.epilog.ph1655
  %index1658 = phi i64 [ %vec.epilog.resume.val1649, %vec.epilog.ph1655 ], [ %index.next1661, %vec.epilog.vector.body1657 ] ; 2 uses
  %vec.phi1659 = phi <8 x i32> [ %i.awm, %vec.epilog.ph1655 ], [ %i.awq, %vec.epilog.vector.body1657 ]
  %i.awn = getelementptr inbounds nuw [4 x i8], ptr %i.avr, i64 %index1658
  %wide.load1660 = load <8 x i32>, ptr %i.awn, align 4, !tbaa !10
  %i.awo = icmp ugt <8 x i32> %wide.load1660, splat (i32 16383)
  %i.awp = zext <8 x i1> %i.awo to <8 x i32>
  %i.awq = add <8 x i32> %vec.phi1659, %i.awp     ; 2 uses
  %index.next1661 = add nuw i64 %index1658, 8     ; 2 uses
  %i.awr = icmp eq i64 %index.next1661, %n.vec1656
  br i1 %i.awr, label %vec.epilog.middle.block1662, label %vec.epilog.vector.body1657, !llvm.loop !69

vec.epilog.middle.block1662:                      ; preds = %vec.epilog.vector.body1657
  %i.aws = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.awq) ; 2 uses
  %cmp.n1663 = icmp eq i64 %n.vec1656, %wide.trip.count.i687
  br i1 %cmp.n1663, label %heuristic_bwlzh.exit694, label %.lr.ph.i688.preheader

.lr.ph.i688.preheader:                            ; preds = %iter.check1651, %vec.epilog.iter.check1653, %vec.epilog.middle.block1662
  %indvars.iv.i689.ph = phi i64 [ 0, %iter.check1651 ], [ %n.vec1632, %vec.epilog.iter.check1653 ], [ %n.vec1656, %vec.epilog.middle.block1662 ]
  %.012.i690.ph = phi i32 [ 0, %iter.check1651 ], [ %i.awl, %vec.epilog.iter.check1653 ], [ %i.aws, %vec.epilog.middle.block1662 ]
  br label %.lr.ph.i688

.lr.ph.i688:                                      ; preds = %.lr.ph.i688.preheader, %.lr.ph.i688
  %indvars.iv.i689 = phi i64 [ %indvars.iv.next.i692, %.lr.ph.i688 ], [ %indvars.iv.i689.ph, %.lr.ph.i688.preheader ] ; 2 uses
  %.012.i690 = phi i32 [ %spec.select.i691, %.lr.ph.i688 ], [ %.012.i690.ph, %.lr.ph.i688.preheader ]
  %i.awt = getelementptr inbounds nuw [4 x i8], ptr %i.avr, i64 %indvars.iv.i689
  %i.awu = load i32, ptr %i.awt, align 4, !tbaa !10
  %i.awv = icmp ugt i32 %i.awu, 16383
  %i.aww = zext i1 %i.awv to i32
  %spec.select.i691 = add nuw nsw i32 %.012.i690, %i.aww ; 2 uses
  %indvars.iv.next.i692 = add nuw nsw i64 %indvars.iv.i689, 1 ; 2 uses
  %exitcond.not.i693 = icmp eq i64 %indvars.iv.next.i692, %wide.trip.count.i687
  br i1 %exitcond.not.i693, label %heuristic_bwlzh.exit694, label %.lr.ph.i688, !llvm.loop !70

heuristic_bwlzh.exit694:                          ; preds = %.lr.ph.i688, %middle.block1644, %vec.epilog.middle.block1662, %bb.fn
  %.0.lcssa.i684 = phi i32 [ 0, %bb.fn ], [ %i.aws, %vec.epilog.middle.block1662 ], [ %i.awl, %middle.block1644 ], [ %spec.select.i691, %.lr.ph.i688 ]
  %i.awx = sdiv i32 %i.avn, 10
  %.not876 = icmp sgt i32 %.0.lcssa.i684, %i.awx
  br i1 %.not876, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %heuristic_bwlzh.exit694, %bb.fl
  store i32 2147483647, ptr %i.b, align 4, !tbaa !10
  br label %bb.fs

bb.fp:                                            ; preds = %heuristic_bwlzh.exit694, %bb.fm
  %i.awy = call i32 @bwlzh_get_buflen(i32 noundef %i.avn) #12
  %i.awz = sext i32 %i.awy to i64
  %i.axa = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.awz, ptr noundef nonnull @.str, i32 noundef 1722) #12 ; 4 uses
  %i.axb = icmp samesign ugt i32 %3, 4
  %i.axc = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.axd = load ptr, ptr %i.axc, align 8, !tbaa !30 ; 2 uses
  %i.axe = load i32, ptr %i.avj, align 8, !tbaa !29 ; 2 uses
  br i1 %i.axb, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call void @bwlzh_compress(ptr noundef %i.axd, i32 noundef %i.axe, ptr noundef %i.axa, ptr noundef nonnull %i.b) #12
  br label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  call void @bwlzh_compress_no_lz77(ptr noundef %i.axd, i32 noundef %i.axe, ptr noundef %i.axa, ptr noundef nonnull %i.b) #12
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fq, %bb.fr, %bb.fo
  %.1462 = phi ptr [ null, %bb.fo ], [ %i.axa, %bb.fq ], [ %i.axa, %bb.fr ] ; 2 uses
  %i.axf = load i32, ptr %i.avj, align 8, !tbaa !29
  %i.axg = add nsw i32 %i.axf, 3
  %i.axh = sext i32 %i.axg to i64
  %i.axi = shl nsw i64 %i.axh, 2
  %i.axj = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.axi, ptr noundef nonnull @.str, i32 noundef 1735) #12 ; 3 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.axl = load ptr, ptr %i.axk, align 8, !tbaa !30
  %i.axm = load i32, ptr %i.avj, align 8, !tbaa !29
  call fastcc void @base_compress(ptr noundef %i.axl, i32 noundef %i.axm, ptr noundef %i.axj, ptr noundef %i.c)
  %i.axn = load i32, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.axo = load i32, ptr %i.b, align 4, !tbaa !10
  %i.axp = icmp slt i32 %i.axn, %i.axo
  %i.axq = sext i32 %i.avm to i64
  %i.axr = getelementptr inbounds i8, ptr %.04381201, i64 %i.axq ; 2 uses
  br i1 %i.axp, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  store i8 0, ptr %i.axr, align 1, !tbaa !24
  %i.axs = getelementptr i8, ptr %i.avl, i64 5
  %i.axt = add nsw i32 %.2, 9                     ; 2 uses
  %26 = insertelement <4 x i32> poison, i32 %i.axn, i64 0
  %27 = shufflevector <4 x i32> %26, <4 x i32> poison, <4 x i32> zeroinitializer
  %28 = lshr <4 x i32> %27, <i32 0, i32 8, i32 16, i32 24>
  %29 = trunc <4 x i32> %28 to <4 x i8>
  store <4 x i8> %29, ptr %i.axs, align 1, !tbaa !24
  %i.axu = sext i32 %i.axt to i64
  %i.axv = getelementptr inbounds i8, ptr %.04381201, i64 %i.axu
  %i.axw = sext i32 %i.axn to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.axv, ptr align 1 %i.axj, i64 %i.axw, i1 false)
  %i.axx = add nsw i32 %i.axn, %i.axt
  br label %bb.fv

bb.fu:                                            ; preds = %bb.fs
  store i8 1, ptr %i.axr, align 1, !tbaa !24
  %i.axy = getelementptr i8, ptr %i.avl, i64 5
  %i.axz = add nsw i32 %.2, 9                     ; 2 uses
  %30 = load i32, ptr %i.b, align 4, !tbaa !10
  %31 = insertelement <4 x i32> poison, i32 %30, i64 0
  %32 = shufflevector <4 x i32> %31, <4 x i32> poison, <4 x i32> zeroinitializer
  %33 = lshr <4 x i32> %32, <i32 0, i32 8, i32 16, i32 24>
  %34 = trunc <4 x i32> %33 to <4 x i8>
  store <4 x i8> %34, ptr %i.axy, align 1, !tbaa !24
  %i.aya = sext i32 %i.axz to i64
  %i.ayb = getelementptr inbounds i8, ptr %.04381201, i64 %i.aya
  %i.ayc = load i32, ptr %i.b, align 4, !tbaa !10
  %i.ayd = sext i32 %i.ayc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ayb, ptr align 1 %.1462, i64 %i.ayd, i1 false)
  %i.aye = load i32, ptr %i.b, align 4, !tbaa !10
  %i.ayf = add nsw i32 %i.aye, %i.axz
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %storemerge541 = phi i32 [ %i.ayf, %bb.fu ], [ %i.axx, %bb.ft ]
  call void @free(ptr noundef %.1462) #12
  call void @free(ptr noundef %i.axj) #12
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fk
  %.3 = phi i32 [ %i.avm, %bb.fk ], [ %storemerge541, %bb.fv ] ; 4 uses
  %i.ayg = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 5 uses
  %i.ayh = sext i32 %.3 to i64
  %i.ayi = getelementptr i8, ptr %.04381201, i64 %i.ayh ; 3 uses
  %i.ayj = add nsw i32 %.3, 4                     ; 2 uses
  %35 = load <4 x i32>, ptr %i.ayg, align 8
  %36 = shufflevector <4 x i32> %35, <4 x i32> poison, <4 x i32> zeroinitializer
  %37 = lshr <4 x i32> %36, <i32 0, i32 8, i32 16, i32 24>
  %38 = trunc <4 x i32> %37 to <4 x i8>
  store <4 x i8> %38, ptr %i.ayi, align 1, !tbaa !24
  %i.ayk = load i32, ptr %i.ayg, align 8, !tbaa !31 ; 7 uses
  %.not542 = icmp eq i32 %i.ayk, 0
  br i1 %.not542, label %bb.gi, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.ayl = icmp slt i32 %3, 3
  br i1 %i.ayl, label %bb.ga, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.aym = icmp samesign ult i32 %3, 6
  br i1 %i.aym, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.ayn = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ayo = load ptr, ptr %i.ayn, align 8, !tbaa !32 ; 3 uses
  %i.ayp = icmp sgt i32 %i.ayk, 0
  br i1 %i.ayp, label %iter.check1689, label %heuristic_bwlzh.exit705

iter.check1689:                                   ; preds = %bb.fz
  %wide.trip.count.i698 = zext nneg i32 %i.ayk to i64 ; 6 uses
  %min.iters.check1666 = icmp ult i32 %i.ayk, 8
  br i1 %min.iters.check1666, label %.lr.ph.i699.preheader, label %vector.main.loop.iter.check1667

vector.main.loop.iter.check1667:                  ; preds = %iter.check1689
  %min.iters.check1668 = icmp ult i32 %i.ayk, 32
  br i1 %min.iters.check1668, label %vec.epilog.ph1693, label %vector.ph1669

vector.ph1669:                                    ; preds = %vector.main.loop.iter.check1667
  %i.ayq = and i64 %wide.trip.count.i698, 24
  %n.vec1670 = and i64 %wide.trip.count.i698, 2147483616 ; 4 uses
  br label %vector.body1671

vector.body1671:                                  ; preds = %vector.ph1669, %vector.body1671
  %index1672 = phi i64 [ 0, %vector.ph1669 ], [ %index.next1681, %vector.body1671 ] ; 2 uses
  %vec.phi1673 = phi <8 x i32> [ zeroinitializer, %vector.ph1669 ], [ %i.azd, %vector.body1671 ]
  %vec.phi1674 = phi <8 x i32> [ zeroinitializer, %vector.ph1669 ], [ %i.aze, %vector.body1671 ]
  %vec.phi1675 = phi <8 x i32> [ zeroinitializer, %vector.ph1669 ], [ %i.azf, %vector.body1671 ]
  %vec.phi1676 = phi <8 x i32> [ zeroinitializer, %vector.ph1669 ], [ %i.azg, %vector.body1671 ]
  %i.ayr = getelementptr inbounds nuw [4 x i8], ptr %i.ayo, i64 %index1672 ; 4 uses
  %i.ays = getelementptr inbounds nuw i8, ptr %i.ayr, i64 32
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayr, i64 64
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.ayr, i64 96
  %wide.load1677 = load <8 x i32>, ptr %i.ayr, align 4, !tbaa !10
  %wide.load1678 = load <8 x i32>, ptr %i.ays, align 4, !tbaa !10
  %wide.load1679 = load <8 x i32>, ptr %i.ayt, align 4, !tbaa !10
  %wide.load1680 = load <8 x i32>, ptr %i.ayu, align 4, !tbaa !10
  %i.ayv = icmp ugt <8 x i32> %wide.load1677, splat (i32 16383)
  %i.ayw = icmp ugt <8 x i32> %wide.load1678, splat (i32 16383)
  %i.ayx = icmp ugt <8 x i32> %wide.load1679, splat (i32 16383)
  %i.ayy = icmp ugt <8 x i32> %wide.load1680, splat (i32 16383)
  %i.ayz = zext <8 x i1> %i.ayv to <8 x i32>
  %i.aza = zext <8 x i1> %i.ayw to <8 x i32>
  %i.azb = zext <8 x i1> %i.ayx to <8 x i32>
  %i.azc = zext <8 x i1> %i.ayy to <8 x i32>
  %i.azd = add <8 x i32> %vec.phi1673, %i.ayz     ; 2 uses
  %i.aze = add <8 x i32> %vec.phi1674, %i.aza     ; 2 uses
  %i.azf = add <8 x i32> %vec.phi1675, %i.azb     ; 2 uses
  %i.azg = add <8 x i32> %vec.phi1676, %i.azc     ; 2 uses
  %index.next1681 = add nuw i64 %index1672, 32    ; 2 uses
  %i.azh = icmp eq i64 %index.next1681, %n.vec1670
  br i1 %i.azh, label %middle.block1682, label %vector.body1671, !llvm.loop !71

middle.block1682:                                 ; preds = %vector.body1671
  %bin.rdx1683 = add <8 x i32> %i.aze, %i.azd
  %bin.rdx1684 = add <8 x i32> %i.azf, %bin.rdx1683
  %bin.rdx1685 = add <8 x i32> %i.azg, %bin.rdx1684
  %i.azi = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1685) ; 3 uses
  %cmp.n1686 = icmp eq i64 %n.vec1670, %wide.trip.count.i698
  br i1 %cmp.n1686, label %heuristic_bwlzh.exit705, label %vec.epilog.iter.check1691

vec.epilog.iter.check1691:                        ; preds = %middle.block1682
  %min.epilog.iters.check1692 = icmp eq i64 %i.ayq, 0
  br i1 %min.epilog.iters.check1692, label %.lr.ph.i699.preheader, label %vec.epilog.ph1693, !prof !77

vec.epilog.ph1693:                                ; preds = %vector.main.loop.iter.check1667, %vec.epilog.iter.check1691
  %vec.epilog.resume.val1687 = phi i64 [ %n.vec1670, %vec.epilog.iter.check1691 ], [ 0, %vector.main.loop.iter.check1667 ]
  %bc.merge.rdx1688 = phi i32 [ %i.azi, %vec.epilog.iter.check1691 ], [ 0, %vector.main.loop.iter.check1667 ]
  %n.vec1694 = and i64 %wide.trip.count.i698, 2147483640 ; 3 uses
  %i.azj = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1688, i64 0
  br label %vec.epilog.vector.body1695

vec.epilog.vector.body1695:                       ; preds = %vec.epilog.vector.body1695, %vec.epilog.ph1693
  %index1696 = phi i64 [ %vec.epilog.resume.val1687, %vec.epilog.ph1693 ], [ %index.next1699, %vec.epilog.vector.body1695 ] ; 2 uses
  %vec.phi1697 = phi <8 x i32> [ %i.azj, %vec.epilog.ph1693 ], [ %i.azn, %vec.epilog.vector.body1695 ]
  %i.azk = getelementptr inbounds nuw [4 x i8], ptr %i.ayo, i64 %index1696
  %wide.load1698 = load <8 x i32>, ptr %i.azk, align 4, !tbaa !10
  %i.azl = icmp ugt <8 x i32> %wide.load1698, splat (i32 16383)
  %i.azm = zext <8 x i1> %i.azl to <8 x i32>
  %i.azn = add <8 x i32> %vec.phi1697, %i.azm     ; 2 uses
  %index.next1699 = add nuw i64 %index1696, 8     ; 2 uses
  %i.azo = icmp eq i64 %index.next1699, %n.vec1694
  br i1 %i.azo, label %vec.epilog.middle.block1700, label %vec.epilog.vector.body1695, !llvm.loop !72

vec.epilog.middle.block1700:                      ; preds = %vec.epilog.vector.body1695
  %i.azp = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.azn) ; 2 uses
  %cmp.n1701 = icmp eq i64 %n.vec1694, %wide.trip.count.i698
  br i1 %cmp.n1701, label %heuristic_bwlzh.exit705, label %.lr.ph.i699.preheader

.lr.ph.i699.preheader:                            ; preds = %iter.check1689, %vec.epilog.iter.check1691, %vec.epilog.middle.block1700
  %indvars.iv.i700.ph = phi i64 [ 0, %iter.check1689 ], [ %n.vec1670, %vec.epilog.iter.check1691 ], [ %n.vec1694, %vec.epilog.middle.block1700 ]
  %.012.i701.ph = phi i32 [ 0, %iter.check1689 ], [ %i.azi, %vec.epilog.iter.check1691 ], [ %i.azp, %vec.epilog.middle.block1700 ]
  br label %.lr.ph.i699

.lr.ph.i699:                                      ; preds = %.lr.ph.i699.preheader, %.lr.ph.i699
  %indvars.iv.i700 = phi i64 [ %indvars.iv.next.i703, %.lr.ph.i699 ], [ %indvars.iv.i700.ph, %.lr.ph.i699.preheader ] ; 2 uses
  %.012.i701 = phi i32 [ %spec.select.i702, %.lr.ph.i699 ], [ %.012.i701.ph, %.lr.ph.i699.preheader ]
  %i.azq = getelementptr inbounds nuw [4 x i8], ptr %i.ayo, i64 %indvars.iv.i700
  %i.azr = load i32, ptr %i.azq, align 4, !tbaa !10
  %i.azs = icmp ugt i32 %i.azr, 16383
  %i.azt = zext i1 %i.azs to i32
  %spec.select.i702 = add nuw nsw i32 %.012.i701, %i.azt ; 2 uses
  %indvars.iv.next.i703 = add nuw nsw i64 %indvars.iv.i700, 1 ; 2 uses
  %exitcond.not.i704 = icmp eq i64 %indvars.iv.next.i703, %wide.trip.count.i698
  br i1 %exitcond.not.i704, label %heuristic_bwlzh.exit705, label %.lr.ph.i699, !llvm.loop !73

heuristic_bwlzh.exit705:                          ; preds = %.lr.ph.i699, %middle.block1682, %vec.epilog.middle.block1700, %bb.fz
  %.0.lcssa.i695 = phi i32 [ 0, %bb.fz ], [ %i.azp, %vec.epilog.middle.block1700 ], [ %i.azi, %middle.block1682 ], [ %spec.select.i702, %.lr.ph.i699 ]
  %i.azu = sdiv i32 %i.ayk, 10
  %.not877 = icmp sgt i32 %.0.lcssa.i695, %i.azu
  br i1 %.not877, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %heuristic_bwlzh.exit705, %bb.fx
  store i32 2147483647, ptr %i.b, align 4, !tbaa !10
  br label %bb.ge

bb.gb:                                            ; preds = %heuristic_bwlzh.exit705, %bb.fy
  %i.azv = call i32 @bwlzh_get_buflen(i32 noundef %i.ayk) #12
  %i.azw = sext i32 %i.azv to i64
  %i.azx = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.azw, ptr noundef nonnull @.str, i32 noundef 1773) #12 ; 4 uses
  %i.azy = icmp samesign ugt i32 %3, 4
  %i.azz = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.baa = load ptr, ptr %i.azz, align 8, !tbaa !32 ; 2 uses
  %i.bab = load i32, ptr %i.ayg, align 8, !tbaa !31 ; 2 uses
  br i1 %i.azy, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @bwlzh_compress(ptr noundef %i.baa, i32 noundef %i.bab, ptr noundef %i.azx, ptr noundef nonnull %i.b) #12
  br label %bb.ge

bb.gd:                                            ; preds = %bb.gb
  call void @bwlzh_compress_no_lz77(ptr noundef %i.baa, i32 noundef %i.bab, ptr noundef %i.azx, ptr noundef nonnull %i.b) #12
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd, %bb.ga
  %.2463 = phi ptr [ null, %bb.ga ], [ %i.azx, %bb.gc ], [ %i.azx, %bb.gd ] ; 2 uses
  %i.bac = load i32, ptr %i.ayg, align 8, !tbaa !31
  %i.bad = add nsw i32 %i.bac, 3
  %i.bae = sext i32 %i.bad to i64
  %i.baf = shl nsw i64 %i.bae, 2
  %i.bag = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.baf, ptr noundef nonnull @.str, i32 noundef 1786) #12 ; 3 uses
  %i.bah = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !32
  %i.baj = load i32, ptr %i.ayg, align 8, !tbaa !31
  call fastcc void @base_compress(ptr noundef %i.bai, i32 noundef %i.baj, ptr noundef %i.bag, ptr noundef %i.c)
  %i.bak = load i32, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.bal = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bam = icmp slt i32 %i.bak, %i.bal
  %i.ban = sext i32 %i.ayj to i64
  %i.bao = getelementptr inbounds i8, ptr %.04381201, i64 %i.ban ; 2 uses
  br i1 %i.bam, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i8 0, ptr %i.bao, align 1, !tbaa !24
  %i.bap = getelementptr i8, ptr %i.ayi, i64 5
  %i.baq = add nsw i32 %.3, 9                     ; 2 uses
  %39 = insertelement <4 x i32> poison, i32 %i.bak, i64 0
  %40 = shufflevector <4 x i32> %39, <4 x i32> poison, <4 x i32> zeroinitializer
  %41 = lshr <4 x i32> %40, <i32 0, i32 8, i32 16, i32 24>
  %42 = trunc <4 x i32> %41 to <4 x i8>
  store <4 x i8> %42, ptr %i.bap, align 1, !tbaa !24
  %i.bar = sext i32 %i.baq to i64
  %i.bas = getelementptr inbounds i8, ptr %.04381201, i64 %i.bar
  %i.bat = sext i32 %i.bak to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bas, ptr align 1 %i.bag, i64 %i.bat, i1 false)
  %i.bau = add nsw i32 %i.bak, %i.baq
  br label %bb.gh

bb.gg:                                            ; preds = %bb.ge
  store i8 1, ptr %i.bao, align 1, !tbaa !24
  %i.bav = getelementptr i8, ptr %i.ayi, i64 5
  %i.baw = add nsw i32 %.3, 9                     ; 2 uses
  %43 = load i32, ptr %i.b, align 4, !tbaa !10
  %44 = insertelement <4 x i32> poison, i32 %43, i64 0
  %45 = shufflevector <4 x i32> %44, <4 x i32> poison, <4 x i32> zeroinitializer
  %46 = lshr <4 x i32> %45, <i32 0, i32 8, i32 16, i32 24>
  %47 = trunc <4 x i32> %46 to <4 x i8>
  store <4 x i8> %47, ptr %i.bav, align 1, !tbaa !24
  %i.bax = sext i32 %i.baw to i64
  %i.bay = getelementptr inbounds i8, ptr %.04381201, i64 %i.bax
  %i.baz = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bba = sext i32 %i.baz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bay, ptr align 1 %.2463, i64 %i.bba, i1 false)
  %i.bbb = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bbc = add nsw i32 %i.bbb, %i.baw
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %storemerge544 = phi i32 [ %i.bbc, %bb.gg ], [ %i.bau, %bb.gf ]
  call void @free(ptr noundef %.2463) #12
  call void @free(ptr noundef %i.bag) #12
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.fw
  %.4 = phi i32 [ %i.ayj, %bb.fw ], [ %storemerge544, %bb.gh ] ; 4 uses
  %i.bbd = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 5 uses
  %i.bbe = sext i32 %.4 to i64
  %i.bbf = getelementptr i8, ptr %.04381201, i64 %i.bbe ; 3 uses
  %i.bbg = add nsw i32 %.4, 4                     ; 2 uses
  %48 = load <4 x i32>, ptr %i.bbd, align 8
  %49 = shufflevector <4 x i32> %48, <4 x i32> poison, <4 x i32> zeroinitializer
  %50 = lshr <4 x i32> %49, <i32 0, i32 8, i32 16, i32 24>
  %51 = trunc <4 x i32> %50 to <4 x i8>
  store <4 x i8> %51, ptr %i.bbf, align 1, !tbaa !24
  %i.bbh = load i32, ptr %i.bbd, align 8, !tbaa !33 ; 7 uses
  %.not545 = icmp eq i32 %i.bbh, 0
  br i1 %.not545, label %bb.gu, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.bbi = icmp slt i32 %3, 3
  br i1 %i.bbi, label %bb.gm, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.bbj = icmp samesign ult i32 %3, 6
  br i1 %i.bbj, label %bb.gl, label %bb.gn

bb.gl:                                            ; preds = %bb.gk
  %i.bbk = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bbl = load ptr, ptr %i.bbk, align 8, !tbaa !34 ; 3 uses
  %i.bbm = icmp sgt i32 %i.bbh, 0
  br i1 %i.bbm, label %iter.check1727, label %heuristic_bwlzh.exit716

iter.check1727:                                   ; preds = %bb.gl
  %wide.trip.count.i709 = zext nneg i32 %i.bbh to i64 ; 6 uses
  %min.iters.check1704 = icmp ult i32 %i.bbh, 8
  br i1 %min.iters.check1704, label %.lr.ph.i710.preheader, label %vector.main.loop.iter.check1705

vector.main.loop.iter.check1705:                  ; preds = %iter.check1727
  %min.iters.check1706 = icmp ult i32 %i.bbh, 32
  br i1 %min.iters.check1706, label %vec.epilog.ph1731, label %vector.ph1707

vector.ph1707:                                    ; preds = %vector.main.loop.iter.check1705
  %i.bbn = and i64 %wide.trip.count.i709, 24
  %n.vec1708 = and i64 %wide.trip.count.i709, 2147483616 ; 4 uses
  br label %vector.body1709

vector.body1709:                                  ; preds = %vector.ph1707, %vector.body1709
  %index1710 = phi i64 [ 0, %vector.ph1707 ], [ %index.next1719, %vector.body1709 ] ; 2 uses
  %vec.phi1711 = phi <8 x i32> [ zeroinitializer, %vector.ph1707 ], [ %i.bca, %vector.body1709 ]
  %vec.phi1712 = phi <8 x i32> [ zeroinitializer, %vector.ph1707 ], [ %i.bcb, %vector.body1709 ]
  %vec.phi1713 = phi <8 x i32> [ zeroinitializer, %vector.ph1707 ], [ %i.bcc, %vector.body1709 ]
  %vec.phi1714 = phi <8 x i32> [ zeroinitializer, %vector.ph1707 ], [ %i.bcd, %vector.body1709 ]
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %index1710 ; 4 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 32
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbo, i64 64
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbo, i64 96
  %wide.load1715 = load <8 x i32>, ptr %i.bbo, align 4, !tbaa !10
  %wide.load1716 = load <8 x i32>, ptr %i.bbp, align 4, !tbaa !10
  %wide.load1717 = load <8 x i32>, ptr %i.bbq, align 4, !tbaa !10
  %wide.load1718 = load <8 x i32>, ptr %i.bbr, align 4, !tbaa !10
  %i.bbs = icmp ugt <8 x i32> %wide.load1715, splat (i32 16383)
  %i.bbt = icmp ugt <8 x i32> %wide.load1716, splat (i32 16383)
  %i.bbu = icmp ugt <8 x i32> %wide.load1717, splat (i32 16383)
  %i.bbv = icmp ugt <8 x i32> %wide.load1718, splat (i32 16383)
  %i.bbw = zext <8 x i1> %i.bbs to <8 x i32>
  %i.bbx = zext <8 x i1> %i.bbt to <8 x i32>
  %i.bby = zext <8 x i1> %i.bbu to <8 x i32>
  %i.bbz = zext <8 x i1> %i.bbv to <8 x i32>
  %i.bca = add <8 x i32> %vec.phi1711, %i.bbw     ; 2 uses
  %i.bcb = add <8 x i32> %vec.phi1712, %i.bbx     ; 2 uses
  %i.bcc = add <8 x i32> %vec.phi1713, %i.bby     ; 2 uses
  %i.bcd = add <8 x i32> %vec.phi1714, %i.bbz     ; 2 uses
  %index.next1719 = add nuw i64 %index1710, 32    ; 2 uses
  %i.bce = icmp eq i64 %index.next1719, %n.vec1708
  br i1 %i.bce, label %middle.block1720, label %vector.body1709, !llvm.loop !74

middle.block1720:                                 ; preds = %vector.body1709
  %bin.rdx1721 = add <8 x i32> %i.bcb, %i.bca
  %bin.rdx1722 = add <8 x i32> %i.bcc, %bin.rdx1721
  %bin.rdx1723 = add <8 x i32> %i.bcd, %bin.rdx1722
  %i.bcf = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx1723) ; 3 uses
  %cmp.n1724 = icmp eq i64 %n.vec1708, %wide.trip.count.i709
  br i1 %cmp.n1724, label %heuristic_bwlzh.exit716, label %vec.epilog.iter.check1729

vec.epilog.iter.check1729:                        ; preds = %middle.block1720
  %min.epilog.iters.check1730 = icmp eq i64 %i.bbn, 0
  br i1 %min.epilog.iters.check1730, label %.lr.ph.i710.preheader, label %vec.epilog.ph1731, !prof !77

vec.epilog.ph1731:                                ; preds = %vector.main.loop.iter.check1705, %vec.epilog.iter.check1729
  %vec.epilog.resume.val1725 = phi i64 [ %n.vec1708, %vec.epilog.iter.check1729 ], [ 0, %vector.main.loop.iter.check1705 ]
  %bc.merge.rdx1726 = phi i32 [ %i.bcf, %vec.epilog.iter.check1729 ], [ 0, %vector.main.loop.iter.check1705 ]
  %n.vec1732 = and i64 %wide.trip.count.i709, 2147483640 ; 3 uses
  %i.bcg = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1726, i64 0
  br label %vec.epilog.vector.body1733

vec.epilog.vector.body1733:                       ; preds = %vec.epilog.vector.body1733, %vec.epilog.ph1731
  %index1734 = phi i64 [ %vec.epilog.resume.val1725, %vec.epilog.ph1731 ], [ %index.next1737, %vec.epilog.vector.body1733 ] ; 2 uses
  %vec.phi1735 = phi <8 x i32> [ %i.bcg, %vec.epilog.ph1731 ], [ %i.bck, %vec.epilog.vector.body1733 ]
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %index1734
  %wide.load1736 = load <8 x i32>, ptr %i.bch, align 4, !tbaa !10
  %i.bci = icmp ugt <8 x i32> %wide.load1736, splat (i32 16383)
  %i.bcj = zext <8 x i1> %i.bci to <8 x i32>
  %i.bck = add <8 x i32> %vec.phi1735, %i.bcj     ; 2 uses
  %index.next1737 = add nuw i64 %index1734, 8     ; 2 uses
  %i.bcl = icmp eq i64 %index.next1737, %n.vec1732
  br i1 %i.bcl, label %vec.epilog.middle.block1738, label %vec.epilog.vector.body1733, !llvm.loop !75

vec.epilog.middle.block1738:                      ; preds = %vec.epilog.vector.body1733
  %i.bcm = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.bck) ; 2 uses
  %cmp.n1739 = icmp eq i64 %n.vec1732, %wide.trip.count.i709
  br i1 %cmp.n1739, label %heuristic_bwlzh.exit716, label %.lr.ph.i710.preheader

.lr.ph.i710.preheader:                            ; preds = %iter.check1727, %vec.epilog.iter.check1729, %vec.epilog.middle.block1738
  %indvars.iv.i711.ph = phi i64 [ 0, %iter.check1727 ], [ %n.vec1708, %vec.epilog.iter.check1729 ], [ %n.vec1732, %vec.epilog.middle.block1738 ]
  %.012.i712.ph = phi i32 [ 0, %iter.check1727 ], [ %i.bcf, %vec.epilog.iter.check1729 ], [ %i.bcm, %vec.epilog.middle.block1738 ]
  br label %.lr.ph.i710

.lr.ph.i710:                                      ; preds = %.lr.ph.i710.preheader, %.lr.ph.i710
  %indvars.iv.i711 = phi i64 [ %indvars.iv.next.i714, %.lr.ph.i710 ], [ %indvars.iv.i711.ph, %.lr.ph.i710.preheader ] ; 2 uses
  %.012.i712 = phi i32 [ %spec.select.i713, %.lr.ph.i710 ], [ %.012.i712.ph, %.lr.ph.i710.preheader ]
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.bbl, i64 %indvars.iv.i711
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !10
  %i.bcp = icmp ugt i32 %i.bco, 16383
  %i.bcq = zext i1 %i.bcp to i32
  %spec.select.i713 = add nuw nsw i32 %.012.i712, %i.bcq ; 2 uses
  %indvars.iv.next.i714 = add nuw nsw i64 %indvars.iv.i711, 1 ; 2 uses
  %exitcond.not.i715 = icmp eq i64 %indvars.iv.next.i714, %wide.trip.count.i709
  br i1 %exitcond.not.i715, label %heuristic_bwlzh.exit716, label %.lr.ph.i710, !llvm.loop !76

heuristic_bwlzh.exit716:                          ; preds = %.lr.ph.i710, %middle.block1720, %vec.epilog.middle.block1738, %bb.gl
  %.0.lcssa.i706 = phi i32 [ 0, %bb.gl ], [ %i.bcm, %vec.epilog.middle.block1738 ], [ %i.bcf, %middle.block1720 ], [ %spec.select.i713, %.lr.ph.i710 ]
  %i.bcr = sdiv i32 %i.bbh, 10
  %.not878 = icmp sgt i32 %.0.lcssa.i706, %i.bcr
  br i1 %.not878, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %heuristic_bwlzh.exit716, %bb.gj
  store i32 2147483647, ptr %i.b, align 4, !tbaa !10
  br label %bb.gq

bb.gn:                                            ; preds = %heuristic_bwlzh.exit716, %bb.gk
  %i.bcs = call i32 @bwlzh_get_buflen(i32 noundef %i.bbh) #12
  %i.bct = sext i32 %i.bcs to i64
  %i.bcu = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.bct, ptr noundef nonnull @.str, i32 noundef 1824) #12 ; 4 uses
  %i.bcv = icmp samesign ugt i32 %3, 4
  %i.bcw = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bcx = load ptr, ptr %i.bcw, align 8, !tbaa !34 ; 2 uses
  %i.bcy = load i32, ptr %i.bbd, align 8, !tbaa !33 ; 2 uses
  br i1 %i.bcv, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  call void @bwlzh_compress(ptr noundef %i.bcx, i32 noundef %i.bcy, ptr noundef %i.bcu, ptr noundef nonnull %i.b) #12
  br label %bb.gq

bb.gp:                                            ; preds = %bb.gn
  call void @bwlzh_compress_no_lz77(ptr noundef %i.bcx, i32 noundef %i.bcy, ptr noundef %i.bcu, ptr noundef nonnull %i.b) #12
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gp, %bb.gm
  %.3464 = phi ptr [ null, %bb.gm ], [ %i.bcu, %bb.go ], [ %i.bcu, %bb.gp ] ; 2 uses
  %i.bcz = load i32, ptr %i.bbd, align 8, !tbaa !33
  %i.bda = add nsw i32 %i.bcz, 3
  %i.bdb = sext i32 %i.bda to i64
  %i.bdc = shl nsw i64 %i.bdb, 2
  %i.bdd = call ptr @Ptngc_warnmalloc_x(i64 noundef %i.bdc, ptr noundef nonnull @.str, i32 noundef 1836) #12 ; 3 uses
  %i.bde = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !34
  %i.bdg = load i32, ptr %i.bbd, align 8, !tbaa !33
  call fastcc void @base_compress(ptr noundef %i.bdf, i32 noundef %i.bdg, ptr noundef %i.bdd, ptr noundef %i.c)
  %i.bdh = load i32, ptr %i.c, align 4, !tbaa !10 ; 4 uses
  %i.bdi = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bdj = icmp slt i32 %i.bdh, %i.bdi
  %i.bdk = sext i32 %i.bbg to i64
  %i.bdl = getelementptr inbounds i8, ptr %.04381201, i64 %i.bdk ; 2 uses
  br i1 %i.bdj, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  store i8 0, ptr %i.bdl, align 1, !tbaa !24
  %i.bdm = getelementptr i8, ptr %i.bbf, i64 5
  %i.bdn = add nsw i32 %.4, 9                     ; 2 uses
  %52 = insertelement <4 x i32> poison, i32 %i.bdh, i64 0
  %53 = shufflevector <4 x i32> %52, <4 x i32> poison, <4 x i32> zeroinitializer
  %54 = lshr <4 x i32> %53, <i32 0, i32 8, i32 16, i32 24>
  %55 = trunc <4 x i32> %54 to <4 x i8>
  store <4 x i8> %55, ptr %i.bdm, align 1, !tbaa !24
  %i.bdo = sext i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds i8, ptr %.04381201, i64 %i.bdo
  %i.bdq = sext i32 %i.bdh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bdp, ptr align 1 %i.bdd, i64 %i.bdq, i1 false)
  %i.bdr = add nsw i32 %i.bdh, %i.bdn
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gq
  store i8 1, ptr %i.bdl, align 1, !tbaa !24
  %i.bds = getelementptr i8, ptr %i.bbf, i64 5
  %i.bdt = add nsw i32 %.4, 9                     ; 2 uses
  %56 = load i32, ptr %i.b, align 4, !tbaa !10
  %57 = insertelement <4 x i32> poison, i32 %56, i64 0
  %58 = shufflevector <4 x i32> %57, <4 x i32> poison, <4 x i32> zeroinitializer
  %59 = lshr <4 x i32> %58, <i32 0, i32 8, i32 16, i32 24>
  %60 = trunc <4 x i32> %59 to <4 x i8>
  store <4 x i8> %60, ptr %i.bds, align 1, !tbaa !24
  %i.bdu = sext i32 %i.bdt to i64
  %i.bdv = getelementptr inbounds i8, ptr %.04381201, i64 %i.bdu
  %i.bdw = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bdx = sext i32 %i.bdw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bdv, ptr align 1 %.3464, i64 %i.bdx, i1 false)
  %i.bdy = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bdz = add nsw i32 %i.bdy, %i.bdt
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %storemerge547 = phi i32 [ %i.bdz, %bb.gs ], [ %i.bdr, %bb.gr ]
  call void @free(ptr noundef %.3464) #12
  call void @free(ptr noundef %i.bdd) #12
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gi
  %.5857 = phi i32 [ %i.bbg, %bb.gi ], [ %storemerge547, %bb.gt ]
  store i32 %.5857, ptr %1, align 4, !tbaa !10
  %i.bea = load ptr, ptr %4, align 8, !tbaa !23
  call void @free(ptr noundef %i.bea) #12
  %i.beb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !26
  call void @free(ptr noundef %i.bec) #12
  %i.bed = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !28
  call void @free(ptr noundef %i.bee) #12
  %i.bef = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.beg = load ptr, ptr %i.bef, align 8, !tbaa !30
  call void @free(ptr noundef %i.beg) #12
  %i.beh = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bei = load ptr, ptr %i.beh, align 8, !tbaa !32
  call void @free(ptr noundef %i.bei) #12
  %i.bej = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.bek = load ptr, ptr %i.bej, align 8, !tbaa !34
  call void @free(ptr noundef %i.bek) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.04381201
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @Ptngc_warnmalloc_x(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Ptngc_find_magic_index(i32 noundef) local_unnamed_addr #2

declare i32 @Ptngc_magic(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @buffer_large(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %3, 3                        ; 3 uses
  %i.b = sdiv i32 %2, %i.a
  %i.c = srem i32 %2, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !14
  %i.f = icmp eq i32 %i.e, 1024
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @flush_large(ptr noundef %0, i32 noundef 1024)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = sext i32 %2 to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %1, i64 %i.g ; 6 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !10   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = load i32, ptr %i.j, align 8, !tbaa !10
  %i.l = sub nsw i32 %i.i, %i.k                   ; 2 uses
  %i.m = getelementptr i8, ptr %i.h, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.p = load i32, ptr %i.o, align 4, !tbaa !10
  %i.q = sub nsw i32 %i.n, %i.p                   ; 2 uses
  %i.r = getelementptr i8, ptr %i.h, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !10   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load i32, ptr %i.t, align 8, !tbaa !10
  %i.v = sub nsw i32 %i.s, %i.u                   ; 2 uses
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.q, i32 %i.l)
  %.1.i = tail call i32 @llvm.umax.i32(i32 %i.v, i32 %spec.select.i)
  %i.w = uitofp i32 %.1.i to double               ; 3 uses
  %i.x = icmp ne i32 %4, 0
  %i.y = icmp sgt i32 %i.c, 2
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr i8, ptr %i.h, i64 -12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !10
  %i.ab = sub nsw i32 %i.i, %i.aa                 ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nuw i32 %i.ab, 1
  %i.ae = add i32 %i.ad, -1
  br label %positive_int.exit

bb.f:                                             ; preds = %bb.d
  %i.af = icmp slt i32 %i.ab, 0
  br i1 %i.af, label %bb.g, label %positive_int.exit

bb.g:                                             ; preds = %bb.f
  %i.ag = xor i32 %i.ab, -1
  %i.ah = shl nuw nsw i32 %i.ag, 1
  %i.ai = add nuw nsw i32 %i.ah, 2
  br label %positive_int.exit

positive_int.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ae, %bb.e ], [ %i.ai, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %i.aj = getelementptr i8, ptr %i.h, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !10
  %i.al = sub nsw i32 %i.n, %i.ak                 ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %positive_int.exit
  %i.an = shl nuw i32 %i.al, 1
  %i.ao = add i32 %i.an, -1
  br label %positive_int.exit83

bb.i:                                             ; preds = %positive_int.exit
  %i.ap = icmp slt i32 %i.al, 0
  br i1 %i.ap, label %bb.j, label %positive_int.exit83

bb.j:                                             ; preds = %bb.i
  %i.aq = xor i32 %i.al, -1
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = add nuw nsw i32 %i.ar, 2
  br label %positive_int.exit83

positive_int.exit83:                              ; preds = %bb.h, %bb.i, %bb.j
  %.0.i82 = phi i32 [ %i.ao, %bb.h ], [ %i.as, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %i.at = getelementptr i8, ptr %i.h, i64 -4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !10
  %i.av = sub nsw i32 %i.s, %i.au                 ; 4 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %bb.k, label %bb.l

bb.k:                                             ; preds = %positive_int.exit83
  %i.ax = shl nuw i32 %i.av, 1
  %i.ay = add i32 %i.ax, -1
  br label %positive_int.exit85

bb.l:                                             ; preds = %positive_int.exit83
  %i.az = icmp slt i32 %i.av, 0
  br i1 %i.az, label %bb.m, label %positive_int.exit85

bb.m:                                             ; preds = %bb.l
  %i.ba = xor i32 %i.av, -1
  %i.bb = shl nuw nsw i32 %i.ba, 1
  %i.bc = add nuw nsw i32 %i.bb, 2
  br label %positive_int.exit85

positive_int.exit85:                              ; preds = %bb.k, %bb.l, %bb.m
  %.0.i84 = phi i32 [ %i.ay, %bb.k ], [ %i.bc, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %spec.select.i86 = tail call i32 @llvm.umax.i32(i32 %.0.i82, i32 %.0.i)
  %.1.i87 = tail call i32 @llvm.umax.i32(i32 %.0.i84, i32 %spec.select.i86)
  %i.bd = uitofp i32 %.1.i87 to double            ; 2 uses
  %i.be = fmul nnan double %i.bd, 1.500000e+00
  %i.bf = fcmp olt double %i.be, %i.w             ; 2 uses
  %spec.select = select i1 %i.bf, double %i.bd, double %i.w
  %spec.select80 = zext i1 %i.bf to i32
  br label %bb.n

bb.n:                                             ; preds = %positive_int.exit85, %bb.c
  %.sroa.0101.0 = phi i32 [ %.0.i, %positive_int.exit85 ], [ 0, %bb.c ]
  %.sroa.6103.0 = phi i32 [ %.0.i82, %positive_int.exit85 ], [ 0, %bb.c ]
  %.sroa.9105.0 = phi i32 [ %.0.i84, %positive_int.exit85 ], [ 0, %bb.c ]
  %.177 = phi double [ %spec.select, %positive_int.exit85 ], [ %i.w, %bb.c ]
  %.1 = phi i32 [ %spec.select80, %positive_int.exit85 ], [ 0, %bb.c ] ; 2 uses
  %i.bg = icmp sgt i32 %i.b, 0
  br i1 %i.bg, label %bb.o, label %._crit_edge

._crit_edge:                                      ; preds = %bb.n
  %.pre = load i32, ptr %i.d, align 8, !tbaa !14
  br label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.bh = sub nsw i32 %2, %i.a
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bi ; 3 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !10
end_hunk_0
begin_hunk_1_@write_three_large:bb.a
  %i.ap = add nsw i32 %i.ao, %i.am                ; 2 uses
  store i32 %i.ap, ptr %i.p, align 4, !tbaa !10
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i.1, i64 noundef %i.ar, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.as, ptr %i.n, align 8, !tbaa !19
  %.pre1.i.1 = load i32, ptr %i.o, align 8, !tbaa !10
  br label %insert_value_in_array.exit.1

insert_value_in_array.exit.1:                     ; preds = %bb.c, %insert_value_in_array.exit
  %i.at = phi i32 [ %i.am, %insert_value_in_array.exit ], [ %.pre1.i.1, %bb.c ]
  %.pre.i.2 = phi ptr [ %.pre.i.1, %insert_value_in_array.exit ], [ %i.as, %bb.c ] ; 3 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [4 x i8], ptr %.pre.i.2, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -4
  store i32 %i.ak, ptr %i.aw, align 4, !tbaa !10
  %i.ax = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !10 ; 2 uses
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !10  ; 2 uses
  %i.bb = add nsw i32 %i.ba, 1                    ; 4 uses
  store i32 %i.bb, ptr %i.o, align 8, !tbaa !10
  %i.bc = load i32, ptr %i.p, align 4, !tbaa !10
  %.not.i.i.2 = icmp slt i32 %i.ba, %i.bc
  br i1 %.not.i.i.2, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %insert_value_in_array.exit.1
  %i.bd = sdiv i32 %i.bb, 2
  %i.be = add nsw i32 %i.bd, %i.bb                ; 2 uses
  store i32 %i.be, ptr %i.p, align 4, !tbaa !10
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 2
  %i.bh = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i.2, i64 noundef %i.bg, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.bh, ptr %i.n, align 8, !tbaa !19
  %.pre1.i.2 = load i32, ptr %i.o, align 8, !tbaa !10
  br label %.loopexit

bb.e:                                             ; preds = %.preheader36
  %i.bi = sdiv i32 %i.l, 2
  %i.bj = add nsw i32 %i.bi, %i.l                 ; 2 uses
  store i32 %i.bj, ptr %i.j, align 4, !tbaa !10
  %i.bk = sext i32 %i.bj to i64
  %i.bl = shl nsw i64 %i.bk, 2
  %i.bm = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i27, i64 noundef %i.bl, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !19
  %.pre1.i28 = load i32, ptr %i.i, align 8, !tbaa !10
  br label %insert_value_in_array.exit29

insert_value_in_array.exit29:                     ; preds = %.preheader36, %bb.e
  %i.bn = phi i32 [ %i.l, %.preheader36 ], [ %.pre1.i28, %bb.e ]
  %.pre.i27.1 = phi ptr [ %.pre.i27, %.preheader36 ], [ %i.bm, %bb.e ] ; 3 uses
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [4 x i8], ptr %.pre.i27.1, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  store i32 %i.g, ptr %i.bq, align 4, !tbaa !10
  %i.br = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !10
  %i.bu = load i32, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1                    ; 4 uses
  store i32 %i.bv, ptr %i.i, align 8, !tbaa !10
  %i.bw = load i32, ptr %i.j, align 4, !tbaa !10
  %.not.i.i26.1 = icmp slt i32 %i.bu, %i.bw
  br i1 %.not.i.i26.1, label %insert_value_in_array.exit29.1, label %bb.f

bb.f:                                             ; preds = %insert_value_in_array.exit29
  %i.bx = sdiv i32 %i.bv, 2
  %i.by = add nsw i32 %i.bx, %i.bv                ; 2 uses
  store i32 %i.by, ptr %i.j, align 4, !tbaa !10
  %i.bz = sext i32 %i.by to i64
  %i.ca = shl nsw i64 %i.bz, 2
  %i.cb = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i27.1, i64 noundef %i.ca, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.cb, ptr %i.h, align 8, !tbaa !19
  %.pre1.i28.1 = load i32, ptr %i.i, align 8, !tbaa !10
  br label %insert_value_in_array.exit29.1

insert_value_in_array.exit29.1:                   ; preds = %bb.f, %insert_value_in_array.exit29
  %i.cc = phi i32 [ %i.bv, %insert_value_in_array.exit29 ], [ %.pre1.i28.1, %bb.f ]
  %.pre.i27.2 = phi ptr [ %.pre.i27.1, %insert_value_in_array.exit29 ], [ %i.cb, %bb.f ] ; 3 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %.pre.i27.2, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -4
  store i32 %i.bt, ptr %i.cf, align 4, !tbaa !10
  %i.cg = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.ch = getelementptr i8, ptr %i.cg, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !10 ; 2 uses
  %i.cj = load i32, ptr %i.i, align 8, !tbaa !10  ; 2 uses
  %i.ck = add nsw i32 %i.cj, 1                    ; 4 uses
  store i32 %i.ck, ptr %i.i, align 8, !tbaa !10
  %i.cl = load i32, ptr %i.j, align 4, !tbaa !10
  %.not.i.i26.2 = icmp slt i32 %i.cj, %i.cl
  br i1 %.not.i.i26.2, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %insert_value_in_array.exit29.1
  %i.cm = sdiv i32 %i.ck, 2
  %i.cn = add nsw i32 %i.cm, %i.ck                ; 2 uses
  store i32 %i.cn, ptr %i.j, align 4, !tbaa !10
  %i.co = sext i32 %i.cn to i64
  %i.cp = shl nsw i64 %i.co, 2
  %i.cq = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i27.2, i64 noundef %i.cp, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.cq, ptr %i.h, align 8, !tbaa !19
  %.pre1.i28.2 = load i32, ptr %i.i, align 8, !tbaa !10
  br label %.loopexit

bb.h:                                             ; preds = %.preheader
  %i.cr = sdiv i32 %i.x, 2
  %i.cs = add nsw i32 %i.cr, %i.x                 ; 2 uses
  store i32 %i.cs, ptr %i.v, align 4, !tbaa !10
  %i.ct = sext i32 %i.cs to i64
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = tail call ptr @Ptngc_warnrealloc_x(ptr noundef %.pre.i31, i64 noundef %i.cu, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.cv, ptr %i.t, align 8, !tbaa !19
  %.pre1.i32 = load i32, ptr %i.u, align 8, !tbaa !10
  br label %insert_value_in_array.exit33

insert_value_in_array.exit33:                     ; preds = %.preheader, %bb.h
  %i.cw = phi i32 [ %i.x, %.preheader ], [ %.pre1.i32, %bb.h ]
  %.pre.i31.1 = phi ptr [ %.pre.i31, %.preheader ], [ %i.cv, %bb.h ] ; 3 uses
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %.pre.i31.1, i64 %i.cx
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  store i32 %i.g, ptr %i.cz, align 4, !tbaa !10
  %i.da = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.db = getelementptr i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !10
  %i.dd = load i32, ptr %i.u, align 8, !tbaa !10  ; 2 uses
  %i.de = add nsw i32 %i.dd, 1                    ; 4 uses
  store i32 %i.de, ptr %i.u, align 8, !tbaa !10
  %i.df = load i32, ptr %i.v, align 4, !tbaa !10
  %.not.i.i30.1 = icmp slt i32 %i.dd, %i.df
  br i1 %.not.i.i30.1, label %insert_value_in_array.exit33.1, label %bb.i

bb.i:                                             ; preds = %insert_value_in_array.exit33
  %i.dg = sdiv i32 %i.de, 2
  %i.dh = add nsw i32 %i.dg, %i.de                ; 2 uses
  store i32 %i.dh, ptr %i.v, align 4, !tbaa !10
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i31.1, i64 noundef %i.dj, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.dk, ptr %i.t, align 8, !tbaa !19
  %.pre1.i32.1 = load i32, ptr %i.u, align 8, !tbaa !10
  br label %insert_value_in_array.exit33.1

insert_value_in_array.exit33.1:                   ; preds = %bb.i, %insert_value_in_array.exit33
  %i.dl = phi i32 [ %i.de, %insert_value_in_array.exit33 ], [ %.pre1.i32.1, %bb.i ]
  %.pre.i31.2 = phi ptr [ %.pre.i31.1, %insert_value_in_array.exit33 ], [ %i.dk, %bb.i ] ; 3 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %.pre.i31.2, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -4
  store i32 %i.dc, ptr %i.do, align 4, !tbaa !10
  %i.dp = getelementptr [4 x i8], ptr %i.c, i64 %i.e
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !10 ; 2 uses
  %i.ds = load i32, ptr %i.u, align 8, !tbaa !10  ; 2 uses
  %i.dt = add nsw i32 %i.ds, 1                    ; 4 uses
  store i32 %i.dt, ptr %i.u, align 8, !tbaa !10
  %i.du = load i32, ptr %i.v, align 4, !tbaa !10
  %.not.i.i30.2 = icmp slt i32 %i.ds, %i.du
  br i1 %.not.i.i30.2, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %insert_value_in_array.exit33.1
  %i.dv = sdiv i32 %i.dt, 2
  %i.dw = add nsw i32 %i.dv, %i.dt                ; 2 uses
  store i32 %i.dw, ptr %i.v, align 4, !tbaa !10
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 2
  %i.dz = tail call ptr @Ptngc_warnrealloc_x(ptr noundef nonnull %.pre.i31.2, i64 noundef %i.dy, ptr noundef nonnull @.str, i32 noundef 234) #12 ; 2 uses
  store ptr %i.dz, ptr %i.t, align 8, !tbaa !19
  %.pre1.i32.2 = load i32, ptr %i.u, align 8, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %insert_value_in_array.exit33.1, %bb.j, %insert_value_in_array.exit29.1, %bb.g, %insert_value_in_array.exit.1, %bb.d
  %.sink50 = phi i32 [ %.pre1.i.2, %bb.d ], [ %.pre1.i28.2, %bb.g ], [ %i.bb, %insert_value_in_array.exit.1 ], [ %i.ck, %insert_value_in_array.exit29.1 ], [ %i.dt, %insert_value_in_array.exit33.1 ], [ %.pre1.i32.2, %bb.j ]
  %.sink48 = phi ptr [ %i.bh, %bb.d ], [ %i.cq, %bb.g ], [ %.pre.i.2, %insert_value_in_array.exit.1 ], [ %.pre.i27.2, %insert_value_in_array.exit29.1 ], [ %.pre.i31.2, %insert_value_in_array.exit33.1 ], [ %i.dz, %bb.j ]
  %.sink = phi i32 [ %i.az, %bb.d ], [ %i.ci, %bb.g ], [ %i.az, %insert_value_in_array.exit.1 ], [ %i.ci, %insert_value_in_array.exit29.1 ], [ %i.dr, %insert_value_in_array.exit33.1 ], [ %i.dr, %bb.j ]
  %i.ea = sext i32 %.sink50 to i64
  %i.eb = getelementptr [4 x i8], ptr %.sink48, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  store i32 %.sink, ptr %i.ec, align 4, !tbaa !10
  ret void
}

declare i32 @bwlzh_get_buflen(i32 noundef) local_unnamed_addr #2

declare void @bwlzh_compress(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bwlzh_compress_no_lz77(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc void @base_compress(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 3)) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 9 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  %i.c = alloca [25 x i32], align 16              ; 19 uses
  %i.d = alloca [25 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 24, ptr %2, align 1, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.e, align 1, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i8 8, ptr %i.f, align 1, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit120
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %.loopexit120 ] ; 3 uses
  %.075152 = phi i32 [ 3, %bb.a ], [ %.7, %.loopexit120 ] ; 2 uses
  %.091151 = phi i32 [ 0, %bb.a ], [ %.495, %.loopexit120 ] ; 2 uses
  %indvars171 = trunc nuw nsw i64 %indvars.iv to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.c, i8 0, i64 100, i1 false)
  %i.g = icmp sgt i32 %1, %indvars171
  br i1 %i.g, label %.lr.ph140, label %.loopexit120

.lr.ph140:                                        ; preds = %bb.b, %bb.e
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %bb.e ], [ %indvars.iv, %bb.b ] ; 3 uses
  %.176136 = phi i32 [ %.5, %bb.e ], [ %.075152, %bb.b ] ; 4 uses
  %.080135 = phi i32 [ %.282111, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.083134 = phi i32 [ %.184, %bb.e ], [ 0, %bb.b ] ; 2 uses
  %.085133 = phi i32 [ %.590109, %bb.e ], [ 0, %bb.b ] ; 3 uses
  %.192132 = phi i32 [ %.394107, %bb.e ], [ %.091151, %bb.b ] ; 2 uses
  %i.h = icmp eq i32 %.083134, 0
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %.lr.ph140
  %i.i = icmp eq i32 %.080135, 0
  br i1 %i.i, label %.lr.ph, label %.thread114

.thread114:                                       ; preds = %bb.c
  %i.j = add nsw i32 %.080135, -1
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %.lr.ph ], [ %indvars.iv158, %bb.c ] ; 2 uses
  %.079123 = phi i32 [ %i.m, %.lr.ph ], [ 0, %bb.c ]
  %.186122 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %bb.c ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv160
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %spec.select = call i32 @llvm.umax.i32(i32 %i.l, i32 %.186122) ; 2 uses
  %i.m = add nuw nsw i32 %.079123, 1              ; 2 uses
  %i.n = icmp ne i32 %i.m, 192
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 3 ; 2 uses
  %i.o = trunc nuw i64 %indvars.iv.next161 to i32
  %i.p = icmp sgt i32 %1, %i.o
  %or.cond = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !98

._crit_edge:                                      ; preds = %.lr.ph
  %i.q = add i32 %spec.select, 1
  %spec.store.select = call i32 @llvm.umax.i32(i32 %i.q, i32 2) ; 4 uses
  %i.r = sext i32 %.176136 to i64
  %i.s = getelementptr inbounds i8, ptr %2, i64 %i.r
  store i32 %spec.store.select, ptr %i.s, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false)
  %i.t = add i32 %spec.store.select, -1           ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.t, ptr noundef nonnull %i.a, i32 noundef 25) #12
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i, %._crit_edge
  %.02228.i = phi i32 [ %i.u, %.peel.next.i ], [ 1, %._crit_edge ]
  call void @Ptngc_largeint_mul(i32 noundef %spec.store.select, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 25) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, ptr noundef nonnull align 16 dereferenceable(100) %i.b, i64 100, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.t, ptr noundef nonnull %i.a, i32 noundef 25) #12
  %i.u = add nuw nsw i32 %.02228.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.u, 24
  br i1 %exitcond.not.i, label %.lr.ph33.i, label %.peel.next.i, !llvm.loop !0

.lr.ph33.i:                                       ; preds = %.peel.next.i, %.loopexit.i.1
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.loopexit.i.1 ], [ 0, %.peel.next.i ] ; 4 uses
  %.032.i = phi i32 [ %.3.i.1, %.loopexit.i.1 ], [ 0, %.peel.next.i ] ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.w = load i32, ptr %i.v, align 8, !tbaa !10   ; 5 uses
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph33.i
  %i.x = and i32 %i.w, 255
  %.not25.i = icmp eq i32 %i.x, 0
  %indvars.iv.i.tr = trunc i64 %indvars.iv.i to i32
  %i.y = shl nuw nsw i32 %indvars.iv.i.tr, 2      ; 4 uses
  %i.z = or disjoint i32 %i.y, 1
  %.2.i = select i1 %.not25.i, i32 %.032.i, i32 %i.z
  %i.aa = and i32 %i.w, 65280
  %.not25.1.i = icmp eq i32 %i.aa, 0
  %i.ab = or disjoint i32 %i.y, 2
  %.2.1.i = select i1 %.not25.1.i, i32 %.2.i, i32 %i.ab
  %i.ac = and i32 %i.w, 16711680
  %.not25.2.i = icmp eq i32 %i.ac, 0
  %i.ad = or disjoint i32 %i.y, 3
  %.2.2.i = select i1 %.not25.2.i, i32 %.2.1.i, i32 %i.ad
  %.not25.3.i = icmp ult i32 %i.w, 16777216
  %i.ae = or disjoint i32 %i.y, 4
  %.2.3.i = select i1 %.not25.3.i, i32 %.2.2.i, i32 %i.ae
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %.lr.ph33.i
  %.3.i = phi i32 [ %.032.i, %.lr.ph33.i ], [ %.2.3.i, %.preheader.i ] ; 2 uses
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !10 ; 5 uses
  %.not.i.1 = icmp eq i32 %i.ag, 0
  br i1 %.not.i.1, label %.loopexit.i.1, label %.preheader.i.1

.preheader.i.1:                                   ; preds = %.loopexit.i
  %i.ah = and i32 %i.ag, 255
  %.not25.i.1 = icmp eq i32 %i.ah, 0
  %indvars.iv.i.tr.1 = trunc i64 %indvars.iv.next.i to i32
  %i.ai = shl nuw nsw i32 %indvars.iv.i.tr.1, 2   ; 4 uses
  %i.aj = or disjoint i32 %i.ai, 1
  %.2.i.1 = select i1 %.not25.i.1, i32 %.3.i, i32 %i.aj
  %i.ak = and i32 %i.ag, 65280
  %.not25.1.i.1 = icmp eq i32 %i.ak, 0
  %i.al = or disjoint i32 %i.ai, 2
  %.2.1.i.1 = select i1 %.not25.1.i.1, i32 %.2.i.1, i32 %i.al
  %i.am = and i32 %i.ag, 16711680
  %.not25.2.i.1 = icmp eq i32 %i.am, 0
  %i.an = or disjoint i32 %i.ai, 3
  %.2.2.i.1 = select i1 %.not25.2.i.1, i32 %.2.1.i.1, i32 %i.an
  %.not25.3.i.1 = icmp ult i32 %i.ag, 16777216
  %i.ao = add nuw nsw i32 %i.ai, 4
  %.2.3.i.1 = select i1 %.not25.3.i.1, i32 %.2.2.i.1, i32 %i.ao
  br label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %.preheader.i.1, %.loopexit.i
  %.3.i.1 = phi i32 [ %.3.i, %.loopexit.i ], [ %.2.3.i.1, %.preheader.i.1 ] ; 2 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond37.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 24
  br i1 %exitcond37.not.i.1, label %bb.d, label %.lr.ph33.i, !llvm.loop !1

bb.d:                                             ; preds = %.loopexit.i.1
  %i.ap = add nsw i32 %.176136, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph140
  call void @Ptngc_largeint_mul(i32 noundef %.085133, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef 25) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.c, ptr noundef nonnull align 16 dereferenceable(100) %i.d, i64 100, i1 false), !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.thread, %bb.d, %.thread114
  %.3113 = phi i32 [ %.176136, %.thread114 ], [ %i.ap, %bb.d ], [ %.176136, %.thread ] ; 3 uses
  %.282111 = phi i32 [ %i.j, %.thread114 ], [ 7, %bb.d ], [ %.080135, %.thread ]
  %.590109 = phi i32 [ %.085133, %.thread114 ], [ %spec.store.select, %bb.d ], [ %.085133, %.thread ] ; 2 uses
  %.394107 = phi i32 [ %.192132, %.thread114 ], [ %.3.i.1, %bb.d ], [ %.192132, %.thread ] ; 7 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv158
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !10
  call void @Ptngc_largeint_add(i32 noundef %i.ar, ptr noundef nonnull %i.c, i32 noundef 25) #12
  %i.as = add nsw i32 %.083134, 1                 ; 2 uses
  %i.at = icmp eq i32 %i.as, 24
  br i1 %i.at, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.loopexit
  %.not154 = icmp eq i32 %.394107, 0
  br i1 %.not154, label %._crit_edge130, label %iter.check226

iter.check226:                                    ; preds = %.preheader
  %i.au = sext i32 %.3113 to i64                  ; 5 uses
  %i.av = zext i32 %.394107 to i64                ; 5 uses
  %min.iters.check201 = icmp ult i32 %.394107, 4
  br i1 %min.iters.check201, label %.lr.ph129.preheader, label %vector.main.loop.iter.check202

vector.main.loop.iter.check202:                   ; preds = %iter.check226
  %min.iters.check203 = icmp ult i32 %.394107, 16
  br i1 %min.iters.check203, label %vec.epilog.ph230, label %vector.ph204

vector.ph204:                                     ; preds = %vector.main.loop.iter.check202
  %i.aw = and i64 %i.av, 12
  %n.vec205 = and i64 %i.av, 4294967280           ; 5 uses
  %i.ax = add nsw i64 %n.vec205, %i.au            ; 2 uses
  %i.ay = trunc nuw i64 %n.vec205 to i32          ; 2 uses
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.au
  br label %vector.body206

vector.body206:                                   ; preds = %vector.ph204, %vector.body206
  %index207 = phi i64 [ 0, %vector.ph204 ], [ %index.next220, %vector.body206 ] ; 6 uses
  %vec.ind208 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph204 ], [ %vec.ind.next221, %vector.body206 ] ; 5 uses
  %i.az = lshr exact i64 %index207, 2
  %i.ba = lshr exact i64 %index207, 2
  %i.bb = lshr exact i64 %index207, 2
  %i.bc = lshr exact i64 %index207, 2
  %i.bd = and i64 %i.az, 1073741820
  %i.be = and i64 %i.ba, 1073741820
  %i.bf = and i64 %i.bb, 1073741820
  %i.bg = and i64 %i.bc, 1073741820
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bd
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.be
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bf
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.bg
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bo = load i32, ptr %i.bh, align 16, !tbaa !10
  %broadcast.splatinsert212 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat213 = shufflevector <4 x i32> %broadcast.splatinsert212, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !10
  %broadcast.splatinsert214 = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat215 = shufflevector <4 x i32> %broadcast.splatinsert214, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bq = load i32, ptr %i.bl, align 8, !tbaa !10
  %broadcast.splatinsert216 = insertelement <4 x i32> poison, i32 %i.bq, i64 0
  %broadcast.splat217 = shufflevector <4 x i32> %broadcast.splatinsert216, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !10
  %broadcast.splatinsert218 = insertelement <4 x i32> poison, i32 %i.br, i64 0
  %broadcast.splat219 = shufflevector <4 x i32> %broadcast.splatinsert218, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bs = shl <4 x i32> %vec.ind208, splat (i32 3)
  %step.add209 = shl <4 x i32> %vec.ind208, splat (i32 3)
  %step.add.2210 = shl <4 x i32> %vec.ind208, splat (i32 3)
  %i.bt = shl <4 x i32> %vec.ind208, splat (i32 3)
  %i.bu = and <4 x i32> %i.bs, splat (i32 24)
  %i.bv = and <4 x i32> %step.add209, splat (i32 24)
  %i.bw = and <4 x i32> %step.add.2210, splat (i32 24)
  %i.bx = and <4 x i32> %i.bt, splat (i32 24)
  %i.by = lshr <4 x i32> %broadcast.splat213, %i.bu
  %i.bz = lshr <4 x i32> %broadcast.splat215, %i.bv
  %i.ca = lshr <4 x i32> %broadcast.splat217, %i.bw
  %i.cb = lshr <4 x i32> %broadcast.splat219, %i.bx
  %i.cc = trunc <4 x i32> %i.by to <4 x i8>
  %i.cd = trunc <4 x i32> %i.bz to <4 x i8>
  %i.ce = trunc <4 x i32> %i.ca to <4 x i8>
  %i.cf = trunc <4 x i32> %i.cb to <4 x i8>
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index207 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.ch = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %gep, i64 12
  store <4 x i8> %i.cc, ptr %gep, align 1, !tbaa !24
  store <4 x i8> %i.cd, ptr %i.cg, align 1, !tbaa !24
  store <4 x i8> %i.ce, ptr %i.ch, align 1, !tbaa !24
  store <4 x i8> %i.cf, ptr %i.ci, align 1, !tbaa !24
  %index.next220 = add nuw i64 %index207, 16      ; 2 uses
  %vec.ind.next221 = add nuw <4 x i32> %vec.ind208, splat (i32 16)
  %i.cj = icmp eq i64 %index.next220, %n.vec205
  br i1 %i.cj, label %middle.block222, label %vector.body206, !llvm.loop !99

middle.block222:                                  ; preds = %vector.body206
  %cmp.n223 = icmp eq i64 %n.vec205, %i.av
  br i1 %cmp.n223, label %._crit_edge130.loopexit, label %vec.epilog.iter.check228

vec.epilog.iter.check228:                         ; preds = %middle.block222
  %min.epilog.iters.check229 = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check229, label %.lr.ph129.preheader, label %vec.epilog.ph230, !prof !107

vec.epilog.ph230:                                 ; preds = %vector.main.loop.iter.check202, %vec.epilog.iter.check228
  %vec.epilog.resume.val224 = phi i64 [ %n.vec205, %vec.epilog.iter.check228 ], [ 0, %vector.main.loop.iter.check202 ]
  %bc.resume.val225 = phi i32 [ %i.ay, %vec.epilog.iter.check228 ], [ 0, %vector.main.loop.iter.check202 ]
  %n.vec231 = and i64 %i.av, 4294967292           ; 4 uses
  %i.ck = add nsw i64 %n.vec231, %i.au            ; 2 uses
  %i.cl = trunc nuw i64 %n.vec231 to i32
  %broadcast.splatinsert232 = insertelement <4 x i32> poison, i32 %bc.resume.val225, i64 0
  %broadcast.splat233 = shufflevector <4 x i32> %broadcast.splatinsert232, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction234 = add nuw <4 x i32> %broadcast.splat233, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep250 = getelementptr i8, ptr %2, i64 %i.au
  br label %vec.epilog.vector.body235

vec.epilog.vector.body235:                        ; preds = %vec.epilog.vector.body235, %vec.epilog.ph230
  %index236 = phi i64 [ %vec.epilog.resume.val224, %vec.epilog.ph230 ], [ %index.next240, %vec.epilog.vector.body235 ] ; 3 uses
  %vec.ind237 = phi <4 x i32> [ %induction234, %vec.epilog.ph230 ], [ %vec.ind.next241, %vec.epilog.vector.body235 ] ; 2 uses
  %i.cm = lshr exact i64 %index236, 2
  %i.cn = and i64 %i.cm, 1073741823
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !10
  %broadcast.splatinsert238 = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %broadcast.splat239 = shufflevector <4 x i32> %broadcast.splatinsert238, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cq = shl <4 x i32> %vec.ind237, splat (i32 3)
  %i.cr = and <4 x i32> %i.cq, splat (i32 24)
  %i.cs = lshr <4 x i32> %broadcast.splat239, %i.cr
  %i.ct = trunc <4 x i32> %i.cs to <4 x i8>
  %gep251 = getelementptr i8, ptr %invariant.gep250, i64 %index236
  store <4 x i8> %i.ct, ptr %gep251, align 1, !tbaa !24
  %index.next240 = add nuw i64 %index236, 4       ; 2 uses
  %vec.ind.next241 = add nuw <4 x i32> %vec.ind237, splat (i32 4)
  %i.cu = icmp eq i64 %index.next240, %n.vec231
  br i1 %i.cu, label %vec.epilog.middle.block242, label %vec.epilog.vector.body235, !llvm.loop !100

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body235
  %cmp.n243 = icmp eq i64 %n.vec231, %i.av
  br i1 %cmp.n243, label %._crit_edge130.loopexit, label %.lr.ph129.preheader

.lr.ph129.preheader:                              ; preds = %iter.check226, %vec.epilog.iter.check228, %vec.epilog.middle.block242
  %indvars.iv163.ph = phi i64 [ %i.au, %iter.check226 ], [ %i.ax, %vec.epilog.iter.check228 ], [ %i.ck, %vec.epilog.middle.block242 ]
  %.1128.ph = phi i32 [ 0, %iter.check226 ], [ %i.ay, %vec.epilog.iter.check228 ], [ %i.cl, %vec.epilog.middle.block242 ]
  br label %.lr.ph129

.lr.ph129:                                        ; preds = %.lr.ph129.preheader, %.lr.ph129
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %.lr.ph129 ], [ %indvars.iv163.ph, %.lr.ph129.preheader ] ; 2 uses
  %.1128 = phi i32 [ %i.de, %.lr.ph129 ], [ %.1128.ph, %.lr.ph129.preheader ] ; 3 uses
  %i.cv = lshr i32 %.1128, 2
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !10
  %i.cz = shl i32 %.1128, 3
  %i.da = and i32 %i.cz, 24
  %i.db = lshr i32 %i.cy, %i.da
  %i.dc = trunc i32 %i.db to i8
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %2, i64 %indvars.iv163
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !24
  %i.de = add nuw i32 %.1128, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.de, %.394107
  br i1 %exitcond.not, label %._crit_edge130.loopexit, label %.lr.ph129, !llvm.loop !101

._crit_edge130.loopexit:                          ; preds = %.lr.ph129, %vec.epilog.middle.block242, %middle.block222
  %indvars.iv.next164.lcssa = phi i64 [ %i.ck, %vec.epilog.middle.block242 ], [ %i.ax, %middle.block222 ], [ %indvars.iv.next164, %.lr.ph129 ]
  %i.df = trunc nsw i64 %indvars.iv.next164.lcssa to i32
  br label %._crit_edge130

._crit_edge130:                                   ; preds = %._crit_edge130.loopexit, %.preheader
  %.4.lcssa = phi i32 [ %.3113, %.preheader ], [ %i.df, %._crit_edge130.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.c, i8 0, i64 100, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %._crit_edge130
  %.184 = phi i32 [ 0, %._crit_edge130 ], [ %i.as, %.loopexit ] ; 3 uses
  %.5 = phi i32 [ %.4.lcssa, %._crit_edge130 ], [ %.3113, %.loopexit ] ; 4 uses
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 3 ; 2 uses
  %i.dg = trunc nuw i64 %indvars.iv.next159 to i32
  %i.dh = icmp sgt i32 %1, %i.dg
  br i1 %i.dh, label %.lr.ph140, label %._crit_edge141, !llvm.loop !102

._crit_edge141:                                   ; preds = %bb.e
  %.not = icmp eq i32 %.184, 0
  br i1 %.not, label %.loopexit120, label %bb.f

bb.f:                                             ; preds = %._crit_edge141
  %i.di = call fastcc i32 @base_bytes(i32 noundef %.590109, i32 noundef %.184) ; 6 uses
  %.not155 = icmp eq i32 %i.di, 0
  br i1 %.not155, label %.loopexit120, label %iter.check

iter.check:                                       ; preds = %bb.f
  %i.dj = sext i32 %.5 to i64                     ; 5 uses
  %i.dk = zext i32 %i.di to i64                   ; 5 uses
  %min.iters.check = icmp ult i32 %i.di, 4
  br i1 %min.iters.check, label %.lr.ph149.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i32 %i.di, 16
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dl = and i64 %i.dk, 12
  %n.vec = and i64 %i.dk, 4294967280              ; 5 uses
  %i.dm = add nsw i64 %n.vec, %i.dj               ; 2 uses
  %i.dn = trunc nuw i64 %n.vec to i32             ; 2 uses
  %invariant.gep252 = getelementptr i8, ptr %2, i64 %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %i.do = lshr exact i64 %index, 2
  %i.dp = lshr exact i64 %index, 2
  %i.dq = lshr exact i64 %index, 2
  %i.dr = lshr exact i64 %index, 2
  %i.ds = and i64 %i.do, 1073741820
  %i.dt = and i64 %i.dp, 1073741820
  %i.du = and i64 %i.dq, 1073741820
  %i.dv = and i64 %i.dr, 1073741820
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ds
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dt
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.dv
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  %i.ed = load i32, ptr %i.dw, align 16, !tbaa !10
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ee = load i32, ptr %i.dy, align 4, !tbaa !10
  %broadcast.splatinsert182 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat183 = shufflevector <4 x i32> %broadcast.splatinsert182, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ef = load i32, ptr %i.ea, align 8, !tbaa !10
  %broadcast.splatinsert184 = insertelement <4 x i32> poison, i32 %i.ef, i64 0
  %broadcast.splat185 = shufflevector <4 x i32> %broadcast.splatinsert184, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !10
  %broadcast.splatinsert186 = insertelement <4 x i32> poison, i32 %i.eg, i64 0
  %broadcast.splat187 = shufflevector <4 x i32> %broadcast.splatinsert186, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.eh = shl <4 x i32> %vec.ind, splat (i32 3)
  %step.add = shl <4 x i32> %vec.ind, splat (i32 3)
  %step.add.2 = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.ei = shl <4 x i32> %vec.ind, splat (i32 3)
  %i.ej = and <4 x i32> %i.eh, splat (i32 24)
  %i.ek = and <4 x i32> %step.add, splat (i32 24)
  %i.el = and <4 x i32> %step.add.2, splat (i32 24)
  %i.em = and <4 x i32> %i.ei, splat (i32 24)
  %i.en = lshr <4 x i32> %broadcast.splat, %i.ej
  %i.eo = lshr <4 x i32> %broadcast.splat183, %i.ek
  %i.ep = lshr <4 x i32> %broadcast.splat185, %i.el
  %i.eq = lshr <4 x i32> %broadcast.splat187, %i.em
  %i.er = trunc <4 x i32> %i.en to <4 x i8>
  %i.es = trunc <4 x i32> %i.eo to <4 x i8>
  %i.et = trunc <4 x i32> %i.ep to <4 x i8>
  %i.eu = trunc <4 x i32> %i.eq to <4 x i8>
  %gep253 = getelementptr i8, ptr %invariant.gep252, i64 %index ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %gep253, i64 4
  %i.ew = getelementptr inbounds nuw i8, ptr %gep253, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %gep253, i64 12
  store <4 x i8> %i.er, ptr %gep253, align 1, !tbaa !24
  store <4 x i8> %i.es, ptr %i.ev, align 1, !tbaa !24
  store <4 x i8> %i.et, ptr %i.ew, align 1, !tbaa !24
  store <4 x i8> %i.eu, ptr %i.ex, align 1, !tbaa !24
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 16)
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dk
  br i1 %cmp.n, label %.loopexit120.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph149.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val188 = phi i32 [ %i.dn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec189 = and i64 %i.dk, 4294967292           ; 4 uses
  %i.ez = add nsw i64 %n.vec189, %i.dj            ; 2 uses
  %i.fa = trunc nuw i64 %n.vec189 to i32
  %broadcast.splatinsert190 = insertelement <4 x i32> poison, i32 %bc.resume.val188, i64 0
  %broadcast.splat191 = shufflevector <4 x i32> %broadcast.splatinsert190, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nuw <4 x i32> %broadcast.splat191, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep254 = getelementptr i8, ptr %2, i64 %i.dj
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index192 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next196, %vec.epilog.vector.body ] ; 3 uses
  %vec.ind193 = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next197, %vec.epilog.vector.body ] ; 2 uses
  %i.fb = lshr exact i64 %index192, 2
  %i.fc = and i64 %i.fb, 1073741823
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !10
  %broadcast.splatinsert194 = insertelement <4 x i32> poison, i32 %i.fe, i64 0
  %broadcast.splat195 = shufflevector <4 x i32> %broadcast.splatinsert194, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ff = shl <4 x i32> %vec.ind193, splat (i32 3)
  %i.fg = and <4 x i32> %i.ff, splat (i32 24)
  %i.fh = lshr <4 x i32> %broadcast.splat195, %i.fg
  %i.fi = trunc <4 x i32> %i.fh to <4 x i8>
  %gep255 = getelementptr i8, ptr %invariant.gep254, i64 %index192
  store <4 x i8> %i.fi, ptr %gep255, align 1, !tbaa !24
  %index.next196 = add nuw i64 %index192, 4       ; 2 uses
  %vec.ind.next197 = add nuw <4 x i32> %vec.ind193, splat (i32 4)
  %i.fj = icmp eq i64 %index.next196, %n.vec189
  br i1 %i.fj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !104

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n198 = icmp eq i64 %n.vec189, %i.dk
  br i1 %cmp.n198, label %.loopexit120.loopexit, label %.lr.ph149.preheader

.lr.ph149.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv167.ph = phi i64 [ %i.dj, %iter.check ], [ %i.dm, %vec.epilog.iter.check ], [ %i.ez, %vec.epilog.middle.block ]
  %.2147.ph = phi i32 [ 0, %iter.check ], [ %i.dn, %vec.epilog.iter.check ], [ %i.fa, %vec.epilog.middle.block ]
  br label %.lr.ph149

.lr.ph149:                                        ; preds = %.lr.ph149.preheader, %.lr.ph149
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %.lr.ph149 ], [ %indvars.iv167.ph, %.lr.ph149.preheader ] ; 2 uses
  %.2147 = phi i32 [ %i.ft, %.lr.ph149 ], [ %.2147.ph, %.lr.ph149.preheader ] ; 3 uses
  %i.fk = lshr i32 %.2147, 2
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !10
  %i.fo = shl i32 %.2147, 3
  %i.fp = and i32 %i.fo, 24
  %i.fq = lshr i32 %i.fn, %i.fp
  %i.fr = trunc i32 %i.fq to i8
  %indvars.iv.next168 = add nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.fs = getelementptr inbounds i8, ptr %2, i64 %indvars.iv167
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !24
  %i.ft = add nuw i32 %.2147, 1                   ; 2 uses
  %exitcond170.not = icmp eq i32 %i.ft, %i.di
  br i1 %exitcond170.not, label %.loopexit120.loopexit, label %.lr.ph149, !llvm.loop !105

.loopexit120.loopexit:                            ; preds = %.lr.ph149, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next168.lcssa = phi i64 [ %i.ez, %vec.epilog.middle.block ], [ %i.dm, %middle.block ], [ %indvars.iv.next168, %.lr.ph149 ]
  %i.fu = trunc nsw i64 %indvars.iv.next168.lcssa to i32
  br label %.loopexit120

.loopexit120:                                     ; preds = %bb.b, %.loopexit120.loopexit, %bb.f, %._crit_edge141
  %.495 = phi i32 [ %.394107, %._crit_edge141 ], [ 0, %bb.f ], [ %i.di, %.loopexit120.loopexit ], [ %.091151, %bb.b ]
  %.7 = phi i32 [ %.5, %._crit_edge141 ], [ %.5, %bb.f ], [ %i.fu, %.loopexit120.loopexit ], [ %.075152, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond172.not, label %bb.g, label %bb.b, !llvm.loop !106

bb.g:                                             ; preds = %.loopexit120
  store i32 %.7, ptr %3, align 4, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret void
}

; Function Attrs: nounwind uwtable
define noundef i32 @Ptngc_unpack_array_xtc3(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 7 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [3 x i32], align 4                ; 9 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.xtc3_context, align 8       ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store i32 0, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i32 0, ptr %i.g, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16508
  store i32 0, ptr %i.h, align 4, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, i8 0, i64 96, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load <2 x i8>, ptr %0, align 1, !tbaa !24 ; 2 uses
  %i.l = load <2 x i8>, ptr %i.j, align 1, !tbaa !24 ; 2 uses
  %i.m = shufflevector <2 x i8> %i.k, <2 x i8> %i.l, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.n = shufflevector <2 x i8> %i.k, <2 x i8> %i.l, <2 x i32> <i32 1, i32 3>
  %i.o = zext <2 x i8> %i.n to <2 x i32>
  %i.p = shl nuw nsw <2 x i32> %i.o, splat (i32 8)
  %i.q = tail call <3 x i16> @llvm.masked.load.v3i16.p0(ptr nonnull align 1 %i.i, <3 x i1> <i1 true, i1 false, i1 true>, <3 x i16> poison)
  %i.r = shufflevector <3 x i16> %i.q, <3 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.s = zext <2 x i16> %i.r to <2 x i32>
  %i.t = shl nuw <2 x i32> %i.s, splat (i32 16)
  %i.u = or disjoint <2 x i32> %i.p, %i.t
  %i.v = zext <2 x i8> %i.m to <2 x i32>
  %i.w = or disjoint <2 x i32> %i.u, %i.v
  %i.x = add nsw <2 x i32> %i.w, splat (i32 1)
  %i.y = sdiv <2 x i32> %i.x, splat (i32 2)       ; 2 uses
  %i.z = and <2 x i8> %i.m, splat (i8 1)
  %i.aa = icmp eq <2 x i8> %i.z, zeroinitializer
  %i.ab = sub nsw <2 x i32> zeroinitializer, %i.y
  %i.ac = select <2 x i1> %i.aa, <2 x i32> %i.ab, <2 x i32> %i.y
  store <2 x i32> %i.ac, ptr %i.a, align 8, !tbaa !10
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !24
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24
  %i.ai = zext i8 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = zext i16 %i.al to i32
  %i.an = shl nuw i32 %i.am, 16
  %i.ao = or disjoint i32 %i.aj, %i.an
  %i.ap = or disjoint i32 %i.ao, %i.af
  %i.aq = add nsw i32 %i.ap, 1
  %i.ar = sdiv i32 %i.aq, 2                       ; 2 uses
  %i.as = and i32 %i.af, 1
  %i.at = icmp eq i32 %i.as, 0
  %i.au = sub nsw i32 0, %i.ar
  %spec.select.i.2 = select i1 %i.at, i32 %i.au, i32 %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %spec.select.i.2, ptr %i.av, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ax = sdiv i32 %2, 3                          ; 2 uses
  %i.ay = load i32, ptr %i.aw, align 1            ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bb = load i32, ptr %i.ba, align 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bd = sext i32 %i.ay to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.be, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.bf, ptr %4, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.bc, i32 noundef %i.ay, ptr noundef %i.bf) #12
  %i.bg = sext i32 %i.bb to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bc, i64 %i.bg ; 2 uses
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !37
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bi = phi ptr [ %i.bh, %bb.b ], [ %i.ba, %bb.a ] ; 3 uses
  %i.bj = load i32, ptr %i.bi, align 1            ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not109 = icmp eq i32 %i.bj, 0
  br i1 %.not109, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bn = load i32, ptr %i.bl, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %i.bp = sext i32 %i.bj to i64
  %i.bq = shl nsw i64 %i.bp, 2
  %i.br = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.bq, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.br, ptr %i.bm, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.bo, i32 noundef %i.bj, ptr noundef %i.br) #12
  %i.bs = sext i32 %i.bn to i64
  %i.bt = getelementptr inbounds i8, ptr %i.bo, i64 %i.bs ; 2 uses
  store ptr %i.bt, ptr %i.b, align 8, !tbaa !37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bu = phi ptr [ %i.bt, %bb.d ], [ %i.bl, %bb.c ] ; 4 uses
  %i.bv = load i32, ptr %i.bu, align 1            ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 %i.bv, ptr %i.bw, align 8, !tbaa !27
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %.not110 = icmp eq i32 %i.bv, 0
  br i1 %.not110, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 5 ; 2 uses
  store ptr %i.by, ptr %i.b, align 8, !tbaa !37
  %i.bz = load i8, ptr %i.bx, align 1, !tbaa !24
  %i.ca = icmp eq i8 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cc = load i32, ptr %i.by, align 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 9 ; 2 uses
  %i.ce = sext i32 %i.bv to i64
  %i.cf = shl nsw i64 %i.ce, 2
  %i.cg = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.cf, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.cg, ptr %i.cb, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.cd, i32 noundef %i.bv, ptr noundef %i.cg) #12
  %i.ch = sext i32 %i.cc to i64
  %i.ci = getelementptr inbounds i8, ptr %i.cd, i64 %i.ch ; 2 uses
  store ptr %i.ci, ptr %i.b, align 8, !tbaa !37
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.bv, ptr noundef %i.cb)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.cj = phi ptr [ %i.ci, %bb.g ], [ %.pre, %bb.h ], [ %i.bx, %bb.e ] ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 1            ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %.not111 = icmp eq i32 %i.ck, 0
  br i1 %.not111, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 5 ; 2 uses
  store ptr %i.cn, ptr %i.b, align 8, !tbaa !37
  %i.co = load i8, ptr %i.cm, align 1, !tbaa !24
  %i.cp = icmp eq i8 %i.co, 1
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  br i1 %i.cp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = load i32, ptr %i.cn, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 9 ; 3 uses
  store ptr %i.cs, ptr %i.b, align 8, !tbaa !37
  %i.ct = sext i32 %i.ck to i64
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.cu, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.cv, ptr %i.cq, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.cs, i32 noundef %i.ck, ptr noundef %i.cv) #12
  %i.cw = sext i32 %i.cr to i64
  %i.cx = getelementptr inbounds i8, ptr %i.cs, i64 %i.cw
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.ck, ptr noundef %i.cq)
  %.pre172 = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.i
  %i.cy = phi ptr [ %i.cx, %bb.k ], [ %.pre172, %bb.l ], [ %i.cm, %bb.i ] ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 1            ; 5 uses
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i32 %i.cz, ptr %i.da, align 8, !tbaa !31
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4 ; 2 uses
  %.not112 = icmp eq i32 %i.cz, 0
  br i1 %.not112, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 5 ; 2 uses
  store ptr %i.dc, ptr %i.b, align 8, !tbaa !37
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !24
  %i.de = icmp eq i8 %i.dd, 1
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  br i1 %i.de, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dg = load i32, ptr %i.dc, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cy, i64 9 ; 3 uses
  store ptr %i.dh, ptr %i.b, align 8, !tbaa !37
  %i.di = sext i32 %i.cz to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.dj, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.dk, ptr %i.df, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.dh, i32 noundef %i.cz, ptr noundef %i.dk) #12
  %i.dl = sext i32 %i.dg to i64
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %i.dl
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.cz, ptr noundef %i.df)
  %.pre173 = load ptr, ptr %i.b, align 8, !tbaa !37
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.dn = phi ptr [ %i.dm, %bb.o ], [ %.pre173, %bb.p ], [ %i.db, %bb.m ] ; 4 uses
  %i.do = load i32, ptr %i.dn, align 1            ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !33
  %.not113 = icmp eq i32 %i.do, 0
  br i1 %.not113, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 5
  store ptr %i.dr, ptr %i.b, align 8, !tbaa !37
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !24
  %i.dt = icmp eq i8 %i.ds, 1
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  br i1 %i.dt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dn, i64 9
  %i.dw = sext i32 %i.do to i64
  %i.dx = shl nsw i64 %i.dw, 2
  %i.dy = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.dx, ptr noundef nonnull @.str, i32 noundef 1869) #12 ; 2 uses
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !19
  tail call void @bwlzh_decompress(ptr noundef nonnull %i.dv, i32 noundef %i.do, ptr noundef %i.dy) #12
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call fastcc void @decompress_base_block(ptr noundef %i.b, i32 noundef %i.do, ptr noundef %i.du)
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, ptr noundef nonnull align 8 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.dz = load i32, ptr %i.az, align 8            ; 2 uses
  %i.ea = icmp sgt i32 %2, 2
  %i.eb = icmp sgt i32 %i.dz, 0
  %i.ec = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %i.ec, label %.lr.ph148, label %._crit_edge149

.lr.ph148:                                        ; preds = %bb.u
  %i.ed = load ptr, ptr %4, align 8, !tbaa !23
  %.old = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ek = zext nneg i32 %i.dz to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph148, %.loopexit121
  %indvars.iv169 = phi i64 [ 0, %.lr.ph148 ], [ %indvars.iv.next170, %.loopexit121 ] ; 2 uses
  %.086146 = phi i32 [ 0, %.lr.ph148 ], [ %.389, %.loopexit121 ] ; 11 uses
  %.090145 = phi i32 [ 0, %.lr.ph148 ], [ %.292, %.loopexit121 ] ; 11 uses
  %.093144 = phi i32 [ 0, %.lr.ph148 ], [ %.194, %.loopexit121 ] ; 13 uses
  %.096142 = phi i32 [ 0, %.lr.ph148 ], [ %.197, %.loopexit121 ] ; 9 uses
  %.098141 = phi i32 [ 0, %.lr.ph148 ], [ %.199, %.loopexit121 ] ; 13 uses
  %.0100140 = phi i32 [ 0, %.lr.ph148 ], [ %.1101, %.loopexit121 ] ; 12 uses
  %.0102139 = phi i32 [ %i.ax, %.lr.ph148 ], [ %.3105, %.loopexit121 ] ; 10 uses
  %indvars.iv.next170 = add nuw nsw i64 %indvars.iv169, 1 ; 2 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv169
  %i.em = load i32, ptr %i.el, align 4, !tbaa !10 ; 3 uses
  %i.en = icmp eq i32 %i.em, 0                    ; 2 uses
  switch i32 %i.em, label %.fold.split [
    i32 3, label %.preheader120
    i32 0, label %bb.w
    i32 2, label %bb.w
    i32 5, label %bb.z
    i32 1, label %bb.ab
    i32 4, label %bb.ad
    i32 6, label %.loopexit121
    i32 7, label %bb.ae
    i32 8, label %bb.af
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.eo = icmp ne i32 %.0100140, 0
  %or.cond5 = select i1 %i.en, i1 %i.eo, i1 false
  %spec.store.select = zext i1 %or.cond5 to i32
  call fastcc void @unpack_one_large(ptr noundef %4, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1, i32 noundef %.086146, i32 noundef %spec.store.select, i32 noundef %3, i32 noundef %.096142)
  %i.ep = add nsw i32 %.0102139, -1               ; 2 uses
  %i.eq = add nsw i32 %.086146, 3                 ; 2 uses
  %.not115 = icmp eq i32 %i.em, 2
  br i1 %.not115, label %.loopexit121, label %.preheader120

.preheader120:                                    ; preds = %bb.v, %bb.w
  %.187185 = phi i32 [ %i.eq, %bb.w ], [ %.086146, %bb.v ] ; 4 uses
  %.1103184 = phi i32 [ %i.ep, %bb.w ], [ %.0102139, %bb.v ]
  %.promoted127 = load i32, ptr %i.c, align 4     ; 2 uses
  %i.er = icmp sgt i32 %.098141, 0
  br i1 %i.er, label %.lr.ph131, label %bb.y

.lr.ph131:                                        ; preds = %.preheader120
  %.promoted134 = load i32, ptr %i.ei, align 4, !tbaa !10
  %.promoted136 = load i32, ptr %i.ej, align 4, !tbaa !10
  %i.es = sext i32 %.187185 to i64
  %i.et = sext i32 %.090145 to i64
  %wide.trip.count = zext nneg i32 %.098141 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.es
  %i.eu = insertelement <2 x i32> poison, i32 %.promoted127, i64 0
  %i.ev = insertelement <2 x i32> %i.eu, i32 %.promoted134, i64 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph131, %bb.x
  %indvars.iv159 = phi i64 [ %i.et, %.lr.ph131 ], [ %indvars.iv.next160, %bb.x ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph131 ], [ %indvars.iv.next, %bb.x ] ; 2 uses
  %i.ew = phi i32 [ %.promoted136, %.lr.ph131 ], [ %i.fg, %bb.x ]
  %i.ex = phi <2 x i32> [ %i.ev, %.lr.ph131 ], [ %i.fo, %bb.x ]
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %indvars.iv159 ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !10 ; 2 uses
  %i.fb = add nsw i32 %i.fa, 1
  %i.fc = sdiv i32 %i.fb, 2                       ; 2 uses
  %i.fd = and i32 %i.fa, 1
  %i.fe = icmp eq i32 %i.fd, 0
  %i.ff = sub nsw i32 0, %i.fc
  %spec.select.i119 = select i1 %i.fe, i32 %i.ff, i32 %i.fc
  %i.fg = add nsw i32 %spec.select.i119, %i.ew    ; 3 uses
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, 3 ; 2 uses
  %.idx = mul i64 %indvars.iv, 12
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx ; 2 uses
  %i.fh = load <2 x i32>, ptr %i.ey, align 4, !tbaa !10 ; 2 uses
  %i.fi = add nsw <2 x i32> %i.fh, splat (i32 1)
  %i.fj = sdiv <2 x i32> %i.fi, splat (i32 2)     ; 2 uses
  %i.fk = and <2 x i32> %i.fh, splat (i32 1)
  %i.fl = icmp eq <2 x i32> %i.fk, zeroinitializer
  %i.fm = sub nsw <2 x i32> zeroinitializer, %i.fj
  %i.fn = select <2 x i1> %i.fl, <2 x i32> %i.fm, <2 x i32> %i.fj
  %i.fo = add nsw <2 x i32> %i.fn, %i.ex          ; 4 uses
  store <2 x i32> %i.fo, ptr %gep, align 4, !tbaa !10
  %i.fp = getelementptr i8, ptr %gep, i64 8
  store i32 %i.fg, ptr %i.fp, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond164.not, label %._crit_edge, label %bb.x, !llvm.loop !108

._crit_edge:                                      ; preds = %bb.x
  %i.fq = trunc nsw i64 %indvars.iv.next160 to i32
  %i.fr = extractelement <2 x i32> %i.fo, i64 1
  store i32 %i.fr, ptr %i.ei, align 4, !tbaa !10
  store i32 %i.fg, ptr %i.ej, align 4, !tbaa !10
  %i.fs = extractelement <2 x i32> %i.fo, i64 0
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %.preheader120
  %.lcssa128 = phi i32 [ %i.fs, %._crit_edge ], [ %.promoted127, %.preheader120 ]
  %.191.lcssa = phi i32 [ %i.fq, %._crit_edge ], [ %.090145, %.preheader120 ]
  store i32 %.lcssa128, ptr %i.c, align 4
  %i.ft = icmp ne i32 %.0100140, 0
  %or.cond7 = select i1 %i.en, i1 %i.ft, i1 false
  br i1 %or.cond7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.y
  %i.fu = add nsw i32 %.187185, -3
  %i.fv = sext i32 %i.fu to i64                   ; 2 uses
  %i.fw = sext i32 %.187185 to i64                ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fv ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.fw ; 2 uses
  %i.fz = load <2 x i32>, ptr %i.fx, align 4, !tbaa !10
  %i.ga = load <2 x i32>, ptr %i.fy, align 4, !tbaa !10
  store <2 x i32> %i.ga, ptr %i.fx, align 4, !tbaa !10
  store <2 x i32> %i.fz, ptr %i.fy, align 4, !tbaa !10
  %i.gb = getelementptr [4 x i8], ptr %1, i64 %i.fv
  %i.gc = getelementptr i8, ptr %i.gb, i64 8      ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !10
  %i.ge = getelementptr [4 x i8], ptr %1, i64 %i.fw
  %i.gf = getelementptr i8, ptr %i.ge, i64 8      ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !10
  store i32 %i.gg, ptr %i.gc, align 4, !tbaa !10
  store i32 %i.gd, ptr %i.gf, align 4, !tbaa !10
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.y
  %i.gh = sub nsw i32 %.1103184, %.098141
  %i.gi = mul nsw i32 %.098141, 3
  %i.gj = add nsw i32 %.187185, %i.gi
  br label %.loopexit121

bb.z:                                             ; preds = %bb.v
  %i.gk = icmp slt i32 %.093144, %.old
  br i1 %i.gk, label %bb.aa, label %.fold.split

bb.aa:                                            ; preds = %bb.z
  %i.gl = add nsw i32 %.093144, 1                 ; 2 uses
  %i.gm = sext i32 %.093144 to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !10 ; 3 uses
  %i.gp = icmp sgt i32 %i.go, 0
  br i1 %i.gp, label %.lr.ph, label %.loopexit121

.lr.ph:                                           ; preds = %bb.aa, %.lr.ph
  %.3125 = phi i32 [ %i.gr, %.lr.ph ], [ 0, %bb.aa ]
  %.288124 = phi i32 [ %i.gq, %.lr.ph ], [ %.086146, %bb.aa ] ; 2 uses
  call fastcc void @unpack_one_large(ptr noundef %4, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.a, ptr noundef %1, i32 noundef %.288124, i32 noundef 0, i32 noundef %3, i32 noundef %.096142)
  %i.gq = add nsw i32 %.288124, 3                 ; 2 uses
  %i.gr = add nuw nsw i32 %.3125, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gr, %i.go
  br i1 %exitcond.not, label %.loopexit121.loopexit, label %.lr.ph, !llvm.loop !109

bb.ab:                                            ; preds = %bb.v
  %.old116 = icmp slt i32 %.093144, %.old
  br i1 %.old116, label %bb.ac, label %.fold.split

bb.ac:                                            ; preds = %bb.ab
  %i.gs = add nsw i32 %.093144, 1
  %i.gt = sext i32 %.093144 to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %i.ef, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !10
  br label %.loopexit121

bb.ad:                                            ; preds = %bb.v
  %i.gw = sub nuw nsw i32 1, %.0100140
  br label %.loopexit121

bb.ae:                                            ; preds = %bb.v
  br label %.loopexit121

bb.af:                                            ; preds = %bb.v
  br label %.loopexit121

.fold.split:                                      ; preds = %bb.z, %bb.ab, %bb.v
  br label %.loopexit121

.loopexit121.loopexit:                            ; preds = %.lr.ph
  %i.gx = sub i32 %.0102139, %i.go
  br label %.loopexit121

.loopexit121:                                     ; preds = %.loopexit121.loopexit, %bb.aa, %bb.v, %.fold.split, %bb.ad, %bb.ae, %bb.af, %bb.ac, %bb.w, %.loopexit
  %.3105 = phi i32 [ %i.gh, %.loopexit ], [ %i.ep, %bb.w ], [ %.0102139, %.fold.split ], [ %.0102139, %bb.ac ], [ %.0102139, %bb.ad ], [ %.0102139, %bb.v ], [ %.0102139, %bb.ae ], [ %.0102139, %bb.af ], [ %.0102139, %bb.aa ], [ %i.gx, %.loopexit121.loopexit ] ; 3 uses
  %.1101 = phi i32 [ %.0100140, %.loopexit ], [ %.0100140, %bb.w ], [ %.0100140, %.fold.split ], [ %.0100140, %bb.ac ], [ %i.gw, %bb.ad ], [ %.0100140, %bb.v ], [ %.0100140, %bb.ae ], [ %.0100140, %bb.af ], [ %.0100140, %bb.aa ], [ %.0100140, %.loopexit121.loopexit ]
  %.199 = phi i32 [ %.098141, %.loopexit ], [ %.098141, %bb.w ], [ %.098141, %.fold.split ], [ %i.gv, %bb.ac ], [ %.098141, %bb.ad ], [ %.098141, %bb.v ], [ %.098141, %bb.ae ], [ %.098141, %bb.af ], [ %.098141, %bb.aa ], [ %.098141, %.loopexit121.loopexit ]
  %.197 = phi i32 [ %.096142, %.loopexit ], [ %.096142, %bb.w ], [ %.096142, %.fold.split ], [ %.096142, %bb.ac ], [ %.096142, %bb.ad ], [ 0, %bb.v ], [ 1, %bb.ae ], [ 2, %bb.af ], [ %.096142, %bb.aa ], [ %.096142, %.loopexit121.loopexit ]
  %.194 = phi i32 [ %.093144, %.loopexit ], [ %.093144, %bb.w ], [ %.093144, %.fold.split ], [ %i.gs, %bb.ac ], [ %.093144, %bb.ad ], [ %.093144, %bb.v ], [ %.093144, %bb.ae ], [ %.093144, %bb.af ], [ %i.gl, %bb.aa ], [ %i.gl, %.loopexit121.loopexit ]
  %.292 = phi i32 [ %.191.lcssa, %.loopexit ], [ %.090145, %bb.w ], [ %.090145, %.fold.split ], [ %.090145, %bb.ac ], [ %.090145, %bb.ad ], [ %.090145, %bb.v ], [ %.090145, %bb.ae ], [ %.090145, %bb.af ], [ %.090145, %bb.aa ], [ %.090145, %.loopexit121.loopexit ]
  %.389 = phi i32 [ %i.gj, %.loopexit ], [ %i.eq, %bb.w ], [ %.086146, %.fold.split ], [ %.086146, %bb.ac ], [ %.086146, %bb.ad ], [ %.086146, %bb.v ], [ %.086146, %bb.ae ], [ %.086146, %bb.af ], [ %.086146, %bb.aa ], [ %i.gq, %.loopexit121.loopexit ]
  %i.gy = icmp sgt i32 %.3105, 0
  %i.gz = icmp samesign ult i64 %indvars.iv.next170, %i.ek
  %i.ha = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %i.ha, label %bb.v, label %._crit_edge149, !llvm.loop !110

._crit_edge149:                                   ; preds = %.loopexit121, %bb.u
  %.0102.lcssa = phi i32 [ %i.ax, %bb.u ], [ %.3105, %.loopexit121 ]
  %i.hb = icmp slt i32 %.0102.lcssa, 0
  br i1 %i.hb, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge149
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !18
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.5, i64 59, i64 1, ptr %i.hc) #13 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.ah:                                            ; preds = %._crit_edge149
  %i.hd = load ptr, ptr %4, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.hd) #12
  %i.he = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !26
  tail call void @free(ptr noundef %i.hf) #12
  %i.hg = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.hh) #12
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !30
  tail call void @free(ptr noundef %i.hj) #12
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !32
  tail call void @free(ptr noundef %i.hl) #12
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !34
  tail call void @free(ptr noundef %i.hn) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decompress_base_block(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16385 x i32], align 16           ; 10 uses
  %i.b = alloca [16385 x i32], align 16           ; 4 uses
  %i.c = alloca [16385 x i32], align 16           ; 10 uses
  %i.d = alloca [16385 x i32], align 16           ; 4 uses
  %i.e = alloca [16385 x i32], align 16           ; 10 uses
  %i.f = alloca [16385 x i32], align 16           ; 4 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !37     ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store ptr %i.i, ptr %0, align 8, !tbaa !37
  %i.j = sext i32 %1 to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call ptr @Ptngc_warnmalloc_x(i64 noundef %i.k, ptr noundef nonnull @.str, i32 noundef 1879) #12 ; 2 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !19
  %i.m = load ptr, ptr %0, align 8, !tbaa !37     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.n = load i16, ptr %i.m, align 1              ; 7 uses
  %i.o = zext i16 %i.n to i32                     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !24
  %i.r = zext i8 %i.q to i32
  %i.s = icmp ugt i16 %i.n, 16384
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !18
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.t, ptr noundef nonnull @.str.10, i32 noundef %i.o) #15 ; 0 uses
  tail call void @exit(i32 noundef 1) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.v = sdiv i32 %1, 3
  %.off.i = add i32 %1, 2
  %.not109.i = icmp ult i32 %.off.i, 5
  %i.w = add nuw nsw i32 %i.o, 1                  ; 5 uses
  %i.x = shl nuw nsw i32 %i.w, 2
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %.not102.i = icmp eq i16 %i.n, 0
  %wide.trip.count.i.i = zext nneg i16 %i.n to i64 ; 4 uses
  br i1 %.not109.i, label %base_decompress.exit, label %.lr.ph117.preheader.i

.lr.ph117.preheader.i:                            ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aa = shl nuw nsw i64 %wide.trip.count.i.i, 2
  %i.ab = add nuw nsw i64 %i.aa, 4
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.ac = icmp eq i16 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count.i.i, 32766
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod16 = trunc i16 %i.n to i1
  br label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %._crit_edge118.i, %.lr.ph117.preheader.i
  %.0120.i = phi ptr [ %i.fb, %._crit_edge118.i ], [ %i.z, %.lr.ph117.preheader.i ]
  %.059119.i = phi i32 [ %i.fk, %._crit_edge118.i ], [ 0, %.lr.ph117.preheader.i ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph117.i
  %.1115.i = phi ptr [ %.0120.i, %.lr.ph117.i ], [ %i.fb, %._crit_edge.i ] ; 3 uses
  %.061114.i = phi i32 [ 0, %.lr.ph117.i ], [ %.162.i, %._crit_edge.i ]
  %.063113.i = phi i32 [ 0, %.lr.ph117.i ], [ %i.bm, %._crit_edge.i ] ; 2 uses
  %.065112.i = phi i32 [ %.059119.i, %.lr.ph117.i ], [ %i.fi, %._crit_edge.i ] ; 2 uses
  %.066111.i = phi i32 [ %i.v, %.lr.ph117.i ], [ %i.fj, %._crit_edge.i ] ; 11 uses
  %.067110.i = phi i32 [ 0, %.lr.ph117.i ], [ %.269.i, %._crit_edge.i ]
  %i.ad = icmp eq i32 %.063113.i, 0
  br i1 %i.ad, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ae = load i32, ptr %.1115.i, align 1         ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1115.i, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.y, i1 false)
  br i1 %.not102.i, label %base_bytes.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add i32 %i.ae, -1                       ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.ag, ptr noundef nonnull %i.c, i32 noundef %i.w) #12
  %cond = icmp eq i16 %i.n, 1
  br i1 %cond, label %.lr.ph33.i.i.epil.preheader, label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %bb.f, %.peel.next.i.i
  %.02228.i.i = phi i32 [ %i.ah, %.peel.next.i.i ], [ 1, %bb.f ]
  call void @Ptngc_largeint_mul(i32 noundef %i.ae, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i32 noundef %i.w) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, ptr noundef nonnull align 16 dereferenceable(1) %i.d, i64 %i.y, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.ag, ptr noundef nonnull %i.c, i32 noundef %i.w) #12
  %i.ah = add nuw nsw i32 %.02228.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ah, %i.o
  br i1 %exitcond.not.i.i, label %.lr.ph33.i.i.preheader, label %.peel.next.i.i, !llvm.loop !0

.lr.ph33.i.i.preheader:                           ; preds = %.peel.next.i.i
  br i1 %i.ac, label %.lr.ph33.i.i.epil.preheader, label %.lr.ph33.i.i

.lr.ph33.i.i:                                     ; preds = %.lr.ph33.i.i.preheader, %.loopexit.i.i.1
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ] ; 4 uses
  %.032.i.i = phi i32 [ %.3.i.i.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.loopexit.i.i.1 ], [ 0, %.lr.ph33.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !10 ; 5 uses
  %.not.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph33.i.i
  %i.ak = and i32 %i.aj, 255
  %.not25.i.i = icmp eq i32 %i.ak, 0
  %indvars.iv.i.tr.i = trunc i64 %indvars.iv.i.i to i32
  %i.al = shl i32 %indvars.iv.i.tr.i, 2           ; 4 uses
  %i.am = or disjoint i32 %i.al, 1
  %.2.i.i = select i1 %.not25.i.i, i32 %.032.i.i, i32 %i.am
  %i.an = and i32 %i.aj, 65280
  %.not25.1.i.i = icmp eq i32 %i.an, 0
  %i.ao = or disjoint i32 %i.al, 2
  %.2.1.i.i = select i1 %.not25.1.i.i, i32 %.2.i.i, i32 %i.ao
  %i.ap = and i32 %i.aj, 16711680
  %.not25.2.i.i = icmp eq i32 %i.ap, 0
  %i.aq = or disjoint i32 %i.al, 3
  %.2.2.i.i = select i1 %.not25.2.i.i, i32 %.2.1.i.i, i32 %i.aq
  %.not25.3.i.i = icmp ult i32 %i.aj, 16777216
  %i.ar = or disjoint i32 %i.al, 4
  %.2.3.i.i = select i1 %.not25.3.i.i, i32 %.2.2.i.i, i32 %i.ar
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph33.i.i
  %.3.i.i = phi i32 [ %.032.i.i, %.lr.ph33.i.i ], [ %.2.3.i.i, %.preheader.i.i ] ; 2 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !10 ; 5 uses
  %.not.i.i.1 = icmp eq i32 %i.at, 0
  br i1 %.not.i.i.1, label %.loopexit.i.i.1, label %.preheader.i.i.1

.preheader.i.i.1:                                 ; preds = %.loopexit.i.i
  %i.au = and i32 %i.at, 255
  %.not25.i.i.1 = icmp eq i32 %i.au, 0
  %indvars.iv.i.tr.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %i.av = shl i32 %indvars.iv.i.tr.i.1, 2         ; 4 uses
  %i.aw = or disjoint i32 %i.av, 1
  %.2.i.i.1 = select i1 %.not25.i.i.1, i32 %.3.i.i, i32 %i.aw
  %i.ax = and i32 %i.at, 65280
  %.not25.1.i.i.1 = icmp eq i32 %i.ax, 0
  %i.ay = or disjoint i32 %i.av, 2
  %.2.1.i.i.1 = select i1 %.not25.1.i.i.1, i32 %.2.i.i.1, i32 %i.ay
  %i.az = and i32 %i.at, 16711680
  %.not25.2.i.i.1 = icmp eq i32 %i.az, 0
  %i.ba = or disjoint i32 %i.av, 3
  %.2.2.i.i.1 = select i1 %.not25.2.i.i.1, i32 %.2.1.i.i.1, i32 %i.ba
  %.not25.3.i.i.1 = icmp ult i32 %i.at, 16777216
  %i.bb = add i32 %i.av, 4
  %.2.3.i.i.1 = select i1 %.not25.3.i.i.1, i32 %.2.2.i.i.1, i32 %i.bb
  br label %.loopexit.i.i.1

.loopexit.i.i.1:                                  ; preds = %.preheader.i.i.1, %.loopexit.i.i
  %.3.i.i.1 = phi i32 [ %.3.i.i, %.loopexit.i.i ], [ %.2.3.i.i.1, %.preheader.i.i.1 ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %base_bytes.exit.i.loopexit.unr-lcssa, label %.lr.ph33.i.i, !llvm.loop !1

base_bytes.exit.i.loopexit.unr-lcssa:             ; preds = %.loopexit.i.i.1
  br i1 %lcmp.mod.not, label %base_bytes.exit.i, label %.lr.ph33.i.i.epil.preheader

.lr.ph33.i.i.epil.preheader:                      ; preds = %bb.f, %base_bytes.exit.i.loopexit.unr-lcssa, %.lr.ph33.i.i.preheader
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph33.i.i.preheader ], [ %indvars.iv.next.i.i.1, %base_bytes.exit.i.loopexit.unr-lcssa ], [ 0, %bb.f ] ; 2 uses
  %.032.i.i.epil.init = phi i32 [ 0, %.lr.ph33.i.i.preheader ], [ %.3.i.i.1, %base_bytes.exit.i.loopexit.unr-lcssa ], [ 0, %bb.f ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod16)
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i.epil.init
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !10 ; 5 uses
  %.not.i.i.epil = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i.epil, label %base_bytes.exit.i, label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.lr.ph33.i.i.epil.preheader
  %i.be = and i32 %i.bd, 255
  %.not25.i.i.epil = icmp eq i32 %i.be, 0
  %indvars.iv.i.tr.i.epil = trunc i64 %indvars.iv.i.i.epil.init to i32
  %i.bf = shl i32 %indvars.iv.i.tr.i.epil, 2      ; 4 uses
  %i.bg = or disjoint i32 %i.bf, 1
  %.2.i.i.epil = select i1 %.not25.i.i.epil, i32 %.032.i.i.epil.init, i32 %i.bg
  %i.bh = and i32 %i.bd, 65280
  %.not25.1.i.i.epil = icmp eq i32 %i.bh, 0
  %i.bi = or disjoint i32 %i.bf, 2
  %.2.1.i.i.epil = select i1 %.not25.1.i.i.epil, i32 %.2.i.i.epil, i32 %i.bi
  %i.bj = and i32 %i.bd, 16711680
  %.not25.2.i.i.epil = icmp eq i32 %i.bj, 0
  %i.bk = or disjoint i32 %i.bf, 3
  %.2.2.i.i.epil = select i1 %.not25.2.i.i.epil, i32 %.2.1.i.i.epil, i32 %i.bk
  %.not25.3.i.i.epil = icmp ult i32 %i.bd, 16777216
  %i.bl = add i32 %i.bf, 4
  %.2.3.i.i.epil = select i1 %.not25.3.i.i.epil, i32 %.2.2.i.i.epil, i32 %i.bl
  br label %base_bytes.exit.i

base_bytes.exit.i:                                ; preds = %base_bytes.exit.i.loopexit.unr-lcssa, %.preheader.i.i.epil, %.lr.ph33.i.i.epil.preheader, %bb.e
  %.0.lcssa.i.i = phi i32 [ 0, %bb.e ], [ %.3.i.i.1, %base_bytes.exit.i.loopexit.unr-lcssa ], [ %.032.i.i.epil.init, %.lr.ph33.i.i.epil.preheader ], [ %.2.3.i.i.epil, %.preheader.i.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.g

bb.g:                                             ; preds = %base_bytes.exit.i, %bb.d
  %.168.i = phi i32 [ %.0.lcssa.i.i, %base_bytes.exit.i ], [ %.067110.i, %bb.d ]
  %.164.i = phi i32 [ %i.r, %base_bytes.exit.i ], [ %.063113.i, %bb.d ]
  %.162.i = phi i32 [ %i.ae, %base_bytes.exit.i ], [ %.061114.i, %bb.d ] ; 4 uses
  %.2.i = phi ptr [ %i.af, %base_bytes.exit.i ], [ %.1115.i, %bb.d ] ; 6 uses
  %i.bm = add nsw i32 %.164.i, -1
  %i.bn = icmp slt i32 %.066111.i, %i.o
  br i1 %i.bn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.bo = add nsw i32 %.066111.i, 1               ; 4 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 2                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.bq, i1 false)
  %i.br = icmp sgt i32 %.066111.i, 0
  br i1 %i.br, label %bb.i, label %base_bytes.exit101.i

bb.i:                                             ; preds = %bb.h
  %i.bs = add i32 %.162.i, -1                     ; 2 uses
  call void @Ptngc_largeint_add(i32 noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef %i.bo) #12
  %exitcond.peel.not.i78.i = icmp eq i32 %.066111.i, 1
  br i1 %exitcond.peel.not.i78.i, label %.lr.ph33.preheader.i82.i, label %.peel.next.i79.i

.lr.ph33.preheader.i82.i:                         ; preds = %.peel.next.i79.i, %bb.i
  %wide.trip.count.i83.i = zext nneg i32 %.066111.i to i64 ; 2 uses
  %xtraiter17 = and i64 %wide.trip.count.i83.i, 1
  %i.bt = icmp eq i32 %.066111.i, 1
  br i1 %i.bt, label %.lr.ph33.i84.i.epil.preheader, label %.lr.ph33.preheader.i82.i.new

.lr.ph33.preheader.i82.i.new:                     ; preds = %.lr.ph33.preheader.i82.i
  %unroll_iter21 = and i64 %wide.trip.count.i83.i, 2147483646
  br label %.lr.ph33.i84.i

.peel.next.i79.i:                                 ; preds = %bb.i, %.peel.next.i79.i
  %.02228.i80.i = phi i32 [ %i.bu, %.peel.next.i79.i ], [ 1, %bb.i ]
  call void @Ptngc_largeint_mul(i32 noundef %.162.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.bo) #12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 16 %i.b, i64 %i.bq, i1 false)
  call void @Ptngc_largeint_add(i32 noundef %i.bs, ptr noundef nonnull %i.a, i32 noundef %i.bo) #12
  %i.bu = add nuw nsw i32 %.02228.i80.i, 1        ; 2 uses
  %exitcond.not.i81.i = icmp eq i32 %i.bu, %.066111.i
  br i1 %exitcond.not.i81.i, label %.lr.ph33.preheader.i82.i, label %.peel.next.i79.i, !llvm.loop !0

.lr.ph33.i84.i:                                   ; preds = %.loopexit.i97.i.1, %.lr.ph33.preheader.i82.i.new
  %indvars.iv.i85.i = phi i64 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %indvars.iv.next.i99.i.1, %.loopexit.i97.i.1 ] ; 4 uses
  %.032.i86.i = phi i32 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %.3.i98.i.1, %.loopexit.i97.i.1 ] ; 2 uses
  %niter22 = phi i64 [ 0, %.lr.ph33.preheader.i82.i.new ], [ %niter22.next.1, %.loopexit.i97.i.1 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i85.i
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !10 ; 5 uses
  %.not.i87.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i87.i, label %.loopexit.i97.i, label %.preheader.i88.i

.preheader.i88.i:                                 ; preds = %.lr.ph33.i84.i
  %i.bx = and i32 %i.bw, 255
  %.not25.i89.i = icmp eq i32 %i.bx, 0
  %indvars.iv.i85.tr.i = trunc i64 %indvars.iv.i85.i to i32
  %i.by = shl i32 %indvars.iv.i85.tr.i, 2         ; 4 uses
  %i.bz = or disjoint i32 %i.by, 1
  %.2.i90.i = select i1 %.not25.i89.i, i32 %.032.i86.i, i32 %i.bz
  %i.ca = and i32 %i.bw, 65280
  %.not25.1.i91.i = icmp eq i32 %i.ca, 0
  %i.cb = or disjoint i32 %i.by, 2
  %.2.1.i92.i = select i1 %.not25.1.i91.i, i32 %.2.i90.i, i32 %i.cb
  %i.cc = and i32 %i.bw, 16711680
  %.not25.2.i93.i = icmp eq i32 %i.cc, 0
  %i.cd = or disjoint i32 %i.by, 3
  %.2.2.i94.i = select i1 %.not25.2.i93.i, i32 %.2.1.i92.i, i32 %i.cd
  %.not25.3.i95.i = icmp ult i32 %i.bw, 16777216
  %i.ce = or disjoint i32 %i.by, 4
  %.2.3.i96.i = select i1 %.not25.3.i95.i, i32 %.2.2.i94.i, i32 %i.ce
  br label %.loopexit.i97.i

.loopexit.i97.i:                                  ; preds = %.preheader.i88.i, %.lr.ph33.i84.i
  %.3.i98.i = phi i32 [ %.032.i86.i, %.lr.ph33.i84.i ], [ %.2.3.i96.i, %.preheader.i88.i ] ; 2 uses
  %indvars.iv.next.i99.i = or disjoint i64 %indvars.iv.i85.i, 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i99.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !10 ; 5 uses
  %.not.i87.i.1 = icmp eq i32 %i.cg, 0
  br i1 %.not.i87.i.1, label %.loopexit.i97.i.1, label %.preheader.i88.i.1

.preheader.i88.i.1:                               ; preds = %.loopexit.i97.i
  %i.ch = and i32 %i.cg, 255
  %.not25.i89.i.1 = icmp eq i32 %i.ch, 0
  %indvars.iv.i85.tr.i.1 = trunc i64 %indvars.iv.next.i99.i to i32
  %i.ci = shl i32 %indvars.iv.i85.tr.i.1, 2       ; 4 uses
  %i.cj = or disjoint i32 %i.ci, 1
  %.2.i90.i.1 = select i1 %.not25.i89.i.1, i32 %.3.i98.i, i32 %i.cj
  %i.ck = and i32 %i.cg, 65280
  %.not25.1.i91.i.1 = icmp eq i32 %i.ck, 0
  %i.cl = or disjoint i32 %i.ci, 2
  %.2.1.i92.i.1 = select i1 %.not25.1.i91.i.1, i32 %.2.i90.i.1, i32 %i.cl
  %i.cm = and i32 %i.cg, 16711680
  %.not25.2.i93.i.1 = icmp eq i32 %i.cm, 0
  %i.cn = or disjoint i32 %i.ci, 3
  %.2.2.i94.i.1 = select i1 %.not25.2.i93.i.1, i32 %.2.1.i92.i.1, i32 %i.cn
  %.not25.3.i95.i.1 = icmp ult i32 %i.cg, 16777216
  %i.co = add i32 %i.ci, 4
  %.2.3.i96.i.1 = select i1 %.not25.3.i95.i.1, i32 %.2.2.i94.i.1, i32 %i.co
  br label %.loopexit.i97.i.1

.loopexit.i97.i.1:                                ; preds = %.preheader.i88.i.1, %.loopexit.i97.i
  %.3.i98.i.1 = phi i32 [ %.3.i98.i, %.loopexit.i97.i ], [ %.2.3.i96.i.1, %.preheader.i88.i.1 ] ; 3 uses
  %indvars.iv.next.i99.i.1 = add nuw nsw i64 %indvars.iv.i85.i, 2 ; 2 uses
  %niter22.next.1 = add i64 %niter22, 2           ; 2 uses
  %niter22.ncmp.1 = icmp eq i64 %niter22.next.1, %unroll_iter21
  br i1 %niter22.ncmp.1, label %base_bytes.exit101.i.loopexit.unr-lcssa, label %.lr.ph33.i84.i, !llvm.loop !1

base_bytes.exit101.i.loopexit.unr-lcssa:          ; preds = %.loopexit.i97.i.1
  %lcmp.mod18.not = icmp eq i64 %xtraiter17, 0
  br i1 %lcmp.mod18.not, label %base_bytes.exit101.i, label %.lr.ph33.i84.i.epil.preheader

.lr.ph33.i84.i.epil.preheader:                    ; preds = %base_bytes.exit101.i.loopexit.unr-lcssa, %.lr.ph33.preheader.i82.i
  %indvars.iv.i85.i.epil.init = phi i64 [ 0, %.lr.ph33.preheader.i82.i ], [ %indvars.iv.next.i99.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ] ; 2 uses
  %.032.i86.i.epil.init = phi i32 [ 0, %.lr.ph33.preheader.i82.i ], [ %.3.i98.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod20 = trunc i32 %.066111.i to i1
  call void @llvm.assume(i1 %lcmp.mod20)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i85.i.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !10 ; 5 uses
  %.not.i87.i.epil = icmp eq i32 %i.cq, 0
  br i1 %.not.i87.i.epil, label %base_bytes.exit101.i, label %.preheader.i88.i.epil

.preheader.i88.i.epil:                            ; preds = %.lr.ph33.i84.i.epil.preheader
  %i.cr = and i32 %i.cq, 255
  %.not25.i89.i.epil = icmp eq i32 %i.cr, 0
  %indvars.iv.i85.tr.i.epil = trunc i64 %indvars.iv.i85.i.epil.init to i32
  %i.cs = shl i32 %indvars.iv.i85.tr.i.epil, 2    ; 4 uses
  %i.ct = or disjoint i32 %i.cs, 1
  %.2.i90.i.epil = select i1 %.not25.i89.i.epil, i32 %.032.i86.i.epil.init, i32 %i.ct
  %i.cu = and i32 %i.cq, 65280
  %.not25.1.i91.i.epil = icmp eq i32 %i.cu, 0
  %i.cv = or disjoint i32 %i.cs, 2
  %.2.1.i92.i.epil = select i1 %.not25.1.i91.i.epil, i32 %.2.i90.i.epil, i32 %i.cv
  %i.cw = and i32 %i.cq, 16711680
  %.not25.2.i93.i.epil = icmp eq i32 %i.cw, 0
  %i.cx = or disjoint i32 %i.cs, 3
  %.2.2.i94.i.epil = select i1 %.not25.2.i93.i.epil, i32 %.2.1.i92.i.epil, i32 %i.cx
  %.not25.3.i95.i.epil = icmp ult i32 %i.cq, 16777216
  %i.cy = add i32 %i.cs, 4
  %.2.3.i96.i.epil = select i1 %.not25.3.i95.i.epil, i32 %.2.2.i94.i.epil, i32 %i.cy
  br label %base_bytes.exit101.i

base_bytes.exit101.i:                             ; preds = %base_bytes.exit101.i.loopexit.unr-lcssa, %.preheader.i88.i.epil, %.lr.ph33.i84.i.epil.preheader, %bb.h
  %.0.lcssa.i77.i = phi i32 [ 0, %bb.h ], [ %.3.i98.i.1, %base_bytes.exit101.i.loopexit.unr-lcssa ], [ %.032.i86.i.epil.init, %.lr.ph33.i84.i.epil.preheader ], [ %.2.3.i96.i.epil, %.preheader.i88.i.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.j

bb.j:                                             ; preds = %base_bytes.exit101.i, %bb.g
  %.269.i = phi i32 [ %.0.lcssa.i77.i, %base_bytes.exit101.i ], [ %.168.i, %bb.g ] ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, i8 0, i64 %i.y, i1 false)
  %i.cz = sdiv i32 %.269.i, 4
  %.not75.i = icmp sle i32 %i.cz, %i.o
  %i.da = icmp sgt i32 %.269.i, 0
  %or.cond.i = and i1 %i.da, %.not75.i
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %.loopexit103.i

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %.269.i to i64 ; 2 uses
  %xtraiter23 = and i64 %wide.trip.count.i, 3     ; 3 uses
  %i.db = icmp ult i32 %.269.i, 4
  br i1 %i.db, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter26 = and i64 %wide.trip.count.i, 2147483644
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 9 uses
  %niter27 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter27.next.3, %.lr.ph.i ]
  %i.dc = lshr exact i64 %indvars.iv.i, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !24
  %i.df = zext i8 %i.de to i32
  %i.dg = and i64 %i.dc, 1073741823
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !10
  %i.dj = or i32 %i.di, %i.df
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !10
  %i.dk = lshr exact i64 %indvars.iv.i, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !24
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 8
  %i.dq = and i64 %i.dk, 1073741823
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !10
  %i.dt = or i32 %i.dp, %i.ds
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !10
  %i.du = lshr exact i64 %indvars.iv.i, 2
  %i.dv = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 2
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !24
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 16
  %i.ea = and i64 %i.du, 1073741823
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !10
  %i.ed = or i32 %i.dz, %i.ec
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !10
  %i.ee = lshr exact i64 %indvars.iv.i, 2
  %i.ef = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 3
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !24
  %i.ei = zext i8 %i.eh to i32
  %i.ej = shl nuw i32 %i.ei, 24
  %i.ek = and i64 %i.ee, 1073741823
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ek ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !10
  %i.en = or i32 %i.ej, %i.em
  store i32 %i.en, ptr %i.el, align 4, !tbaa !10
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter27.next.3 = add i64 %niter27, 4           ; 2 uses
  %niter27.ncmp.3 = icmp eq i64 %niter27.next.3, %unroll_iter26
  br i1 %niter27.ncmp.3, label %.loopexit103.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !111

.loopexit103.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod24.not = icmp eq i64 %xtraiter23, 0
  br i1 %lcmp.mod24.not, label %.loopexit103.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %.loopexit103.i.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter23, 0
  call void @llvm.assume(i1 %lcmp.mod25)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 4 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.eo = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  %i.ep = lshr i64 %indvars.iv.i.epil, 2
  %i.eq = getelementptr inbounds nuw i8, ptr %.2.i, i64 %indvars.iv.i.epil
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !24
  %i.es = zext i8 %i.er to i32
  %i.et = shl i32 %i.eo, 3
  %i.eu = and i32 %i.et, 24
  %i.ev = shl nuw i32 %i.es, %i.eu
  %i.ew = and i64 %i.ep, 1073741823
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !10
  %i.ez = or i32 %i.ev, %i.ey
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !10
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter23
  br i1 %epil.iter.cmp.not, label %.loopexit103.i, label %.lr.ph.i.epil, !llvm.loop !112

.loopexit103.i:                                   ; preds = %.loopexit103.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.j
  %i.fa = sext i32 %.269.i to i64
  %i.fb = getelementptr inbounds i8, ptr %.2.i, i64 %i.fa ; 2 uses
  %spec.select.i = call i32 @llvm.smin.i32(i32 %.066111.i, i32 %i.o) ; 3 uses
  %i.fc = icmp sgt i32 %spec.select.i, 0
  br i1 %i.fc, label %.lr.ph108.preheader.i, label %._crit_edge.i

.lr.ph108.preheader.i:                            ; preds = %.loopexit103.i
  %i.fd = sext i32 %.066111.i to i64
  %smin.i = call i64 @llvm.smin.i64(i64 %i.fd, i64 %wide.trip.count.i.i)
  %i.fe = sext i32 %.065112.i to i64
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.l, i64 %i.fe
  br label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.lr.ph108.i, %.lr.ph108.preheader.i
  %indvars.iv126.i = phi i64 [ %smin.i, %.lr.ph108.preheader.i ], [ %indvars.iv.next127.i, %.lr.ph108.i ] ; 2 uses
  %indvars.iv.next127.i = add nsw i64 %indvars.iv126.i, -1 ; 2 uses
  %i.ff = call i32 @Ptngc_largeint_div(i32 noundef %.162.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.w) #12
  %.idx.i = mul i64 %indvars.iv.next127.i, 12
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %.idx.i
  store i32 %i.ff, ptr %gep.i, align 4, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 16 dereferenceable(1) %i.f, i64 %i.ab, i1 false), !tbaa !10
  %i.fg = icmp sgt i64 %indvars.iv126.i, 1
  br i1 %i.fg, label %.lr.ph108.i, label %._crit_edge.i, !llvm.loop !113

._crit_edge.i:                                    ; preds = %.lr.ph108.i, %.loopexit103.i
  %i.fh = mul nsw i32 %spec.select.i, 3
  %i.fi = add nsw i32 %i.fh, %.065112.i
  %i.fj = sub nsw i32 %.066111.i, %spec.select.i  ; 2 uses
  %.not.i = icmp eq i32 %i.fj, 0
  br i1 %.not.i, label %._crit_edge118.i, label %bb.d, !llvm.loop !114

._crit_edge118.i:                                 ; preds = %._crit_edge.i
  %i.fk = add nuw nsw i32 %.059119.i, 1           ; 2 uses
  %exitcond128.not.i = icmp eq i32 %i.fk, 3
  br i1 %exitcond128.not.i, label %base_decompress.exit.loopexit, label %.lr.ph117.i, !llvm.loop !115

base_decompress.exit.loopexit:                    ; preds = %._crit_edge118.i
  %.pre = load ptr, ptr %0, align 8, !tbaa !37
  br label %base_decompress.exit

base_decompress.exit:                             ; preds = %base_decompress.exit.loopexit, %bb.c
  %i.fl = phi ptr [ %.pre, %base_decompress.exit.loopexit ], [ %i.m, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.fm = sext i32 %i.h to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 %i.fm
  store ptr %i.fn, ptr %0, align 8, !tbaa !37
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @unpack_one_large(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef %9, i32 noundef range(i32 0, 3) %10) unnamed_addr #7 {
bb.a:
  switch i32 %10, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %1, align 4, !tbaa !10     ; 2 uses
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.d ; 2 uses
  %i.f = load <2 x i32>, ptr %i.e, align 4, !tbaa !10
  %i.g = load <2 x i32>, ptr %5, align 4, !tbaa !10
  %i.h = add nsw <2 x i32> %i.g, %i.f
  %i.i = getelementptr i8, ptr %i.e, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = add nsw i32 %i.l, %i.j
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !30   ; 2 uses
  %.not54 = icmp eq ptr %i.o, null
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.q ; 2 uses
  %i.s = load <2 x i32>, ptr %i.r, align 4, !tbaa !10 ; 2 uses
  %i.t = add nsw <2 x i32> %i.s, splat (i32 1)
  %i.u = sdiv <2 x i32> %i.t, splat (i32 2)       ; 2 uses
  %i.v = and <2 x i32> %i.s, splat (i32 1)
  %i.w = icmp eq <2 x i32> %i.v, zeroinitializer
  %i.x = sub nsw <2 x i32> zeroinitializer, %i.u
  %i.y = select <2 x i1> %i.w, <2 x i32> %i.x, <2 x i32> %i.u
  %i.z = load <2 x i32>, ptr %4, align 4, !tbaa !10
  %i.aa = add nsw <2 x i32> %i.y, %i.z
  %i.ab = getelementptr i8, ptr %i.r, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !10 ; 2 uses
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = sdiv i32 %i.ad, 2                       ; 2 uses
  %i.af = and i32 %i.ac, 1
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = sub nsw i32 0, %i.ae
  %spec.select.i57 = select i1 %i.ag, i32 %i.ah, i32 %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !10
  %i.ak = add nsw i32 %spec.select.i57, %i.aj
  br label %.sink.split

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32 ; 2 uses
  %.not55 = icmp eq ptr %i.am, null
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  %.neg = mul i32 %9, -3
  %i.aq = add i32 %.neg, %7
  %i.ar = mul nuw nsw i32 %8, 3
  %i.as = add i32 %i.aq, %i.ar                    ; 3 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %6, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !10
  %i.aw = load <2 x i32>, ptr %i.ap, align 4, !tbaa !10 ; 2 uses
  %i.ax = add nsw <2 x i32> %i.aw, splat (i32 1)
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 2)     ; 2 uses
  %i.az = and <2 x i32> %i.aw, splat (i32 1)
  %i.ba = icmp eq <2 x i32> %i.az, zeroinitializer
  %i.bb = sub nsw <2 x i32> zeroinitializer, %i.ay
  %i.bc = select <2 x i1> %i.ba, <2 x i32> %i.bb, <2 x i32> %i.ay
  %i.bd = add i32 %i.as, 1
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %6, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10
  %i.bh = insertelement <2 x i32> poison, i32 %i.av, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bg, i64 1
  %i.bj = add nsw <2 x i32> %i.bc, %i.bi
  %i.bk = getelementptr i8, ptr %i.ap, i64 8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !10 ; 2 uses
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = sdiv i32 %i.bm, 2                       ; 2 uses
  %i.bo = and i32 %i.bl, 1
  %i.bp = icmp eq i32 %i.bo, 0
  %i.bq = sub nsw i32 0, %i.bn
  %spec.select.i60 = select i1 %i.bp, i32 %i.bq, i32 %i.bn
  %i.br = add i32 %i.as, 2
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bs
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10
  %i.bv = add nsw i32 %spec.select.i60, %i.bu
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.g, %bb.e
  %.sink64 = phi i32 [ %i.p, %bb.e ], [ %i.an, %bb.g ], [ %i.c, %bb.c ]
  %.sink63 = phi ptr [ %2, %bb.e ], [ %3, %bb.g ], [ %1, %bb.c ]
  %.sroa.12.0.ph = phi i32 [ %i.ak, %bb.e ], [ %i.bv, %bb.g ], [ %i.m, %bb.c ]
  %i.bw = phi <2 x i32> [ %i.aa, %bb.e ], [ %i.bj, %bb.g ], [ %i.h, %bb.c ]
  %i.bx = add nsw i32 %.sink64, 3
  store i32 %i.bx, ptr %.sink63, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.f
  %.sroa.12.0 = phi i32 [ 0, %bb.f ], [ %.sroa.12.0.ph, %.sink.split ] ; 2 uses
  %i.by = phi <2 x i32> [ zeroinitializer, %bb.f ], [ %i.bw, %.sink.split ] ; 2 uses
  store <2 x i32> %i.by, ptr %4, align 4
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 4
  %i.bz = sext i32 %7 to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bz ; 2 uses
  store <2 x i32> %i.by, ptr %i.ca, align 4, !tbaa !10
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  store i32 %.sroa.12.0, ptr %i.cb, align 4, !tbaa !10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

end_hunk_1
begin_hunk_2_@base_bytes:bb.a
  %.not25 = icmp eq i32 %i.m, 0
  %i.n = trunc i64 %i.l to i32
  %i.o = or disjoint i32 %i.n, 1
  %.2 = select i1 %.not25, i32 %.032, i32 %i.o
  %i.p = and i32 %i.k, 65280
  %.not25.1 = icmp eq i32 %i.p, 0
  %i.q = trunc i64 %i.l to i32
  %i.r = or disjoint i32 %i.q, 2
  %.2.1 = select i1 %.not25.1, i32 %.2, i32 %i.r
  %i.s = and i32 %i.k, 16711680
  %.not25.2 = icmp eq i32 %i.s, 0
  %i.t = trunc i64 %i.l to i32
  %i.u = or disjoint i32 %i.t, 3
  %.2.2 = select i1 %.not25.2, i32 %.2.1, i32 %i.u
  %.not25.3 = icmp ult i32 %i.k, 16777216
  %i.v = trunc i64 %i.l to i32
  %i.w = or disjoint i32 %i.v, 4
  %.2.3 = select i1 %.not25.3, i32 %.2.2, i32 %i.w
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph33
  %.3 = phi i32 [ %.032, %.lr.ph33 ], [ %.2.3, %.preheader ] ; 2 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !10   ; 5 uses
  %.not.1 = icmp eq i32 %i.y, 0
  br i1 %.not.1, label %.loopexit.1, label %.preheader.1

.preheader.1:                                     ; preds = %.loopexit
  %i.z = shl nuw nsw i64 %indvars.iv.next, 2      ; 4 uses
  %i.aa = and i32 %i.y, 255
  %.not25.145 = icmp eq i32 %i.aa, 0
  %i.ab = trunc i64 %i.z to i32
  %i.ac = or disjoint i32 %i.ab, 1
  %.2.146 = select i1 %.not25.145, i32 %.3, i32 %i.ac
  %i.ad = and i32 %i.y, 65280
  %.not25.1.1 = icmp eq i32 %i.ad, 0
  %i.ae = trunc i64 %i.z to i32
  %i.af = or disjoint i32 %i.ae, 2
  %.2.1.1 = select i1 %.not25.1.1, i32 %.2.146, i32 %i.af
  %i.ag = and i32 %i.y, 16711680
  %.not25.2.1 = icmp eq i32 %i.ag, 0
  %i.ah = trunc i64 %i.z to i32
  %i.ai = or disjoint i32 %i.ah, 3
  %.2.2.1 = select i1 %.not25.2.1, i32 %.2.1.1, i32 %i.ai
  %.not25.3.1 = icmp ult i32 %i.y, 16777216
  %i.aj = trunc i64 %i.z to i32
  %i.ak = add i32 %i.aj, 4
  %.2.3.1 = select i1 %.not25.3.1, i32 %.2.2.1, i32 %i.ak
  br label %.loopexit.1

.loopexit.1:                                      ; preds = %.preheader.1, %.loopexit
  %.3.1 = phi i32 [ %.3, %.loopexit ], [ %.2.3.1, %.preheader.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph33, !llvm.loop !1

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.loopexit.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph33.epil.preheader

.lr.ph33.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph33.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph33.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.032.epil.init = phi i32 [ 0, %.lr.ph33.preheader ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod44 = trunc i32 %1 to i1
  call void @llvm.assume(i1 %lcmp.mod44)
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.epil.init
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10 ; 5 uses
  %.not.epil = icmp eq i32 %i.am, 0
  br i1 %.not.epil, label %._crit_edge, label %.preheader.epil

.preheader.epil:                                  ; preds = %.lr.ph33.epil.preheader
  %i.an = shl nuw nsw i64 %indvars.iv.epil.init, 2 ; 4 uses
  %i.ao = and i32 %i.am, 255
  %.not25.epil = icmp eq i32 %i.ao, 0
  %i.ap = trunc i64 %i.an to i32
  %i.aq = or disjoint i32 %i.ap, 1
  %.2.epil = select i1 %.not25.epil, i32 %.032.epil.init, i32 %i.aq
  %i.ar = and i32 %i.am, 65280
  %.not25.1.epil = icmp eq i32 %i.ar, 0
  %i.as = trunc i64 %i.an to i32
  %i.at = or disjoint i32 %i.as, 2
  %.2.1.epil = select i1 %.not25.1.epil, i32 %.2.epil, i32 %i.at
  %i.au = and i32 %i.am, 16711680
  %.not25.2.epil = icmp eq i32 %i.au, 0
  %i.av = trunc i64 %i.an to i32
  %i.aw = or disjoint i32 %i.av, 3
  %.2.2.epil = select i1 %.not25.2.epil, i32 %.2.1.epil, i32 %i.aw
  %.not25.3.epil = icmp ult i32 %i.am, 16777216
  %i.ax = trunc i64 %i.an to i32
  %i.ay = add i32 %i.ax, 4
  %.2.3.epil = select i1 %.not25.3.epil, i32 %.2.2.epil, i32 %i.ay
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.epil, %.lr.ph33.epil.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ], [ %.032.epil.init, %.lr.ph33.epil.preheader ], [ %.2.3.epil, %.preheader.epil ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0.lcssa
}

declare void @Ptngc_largeint_mul(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Ptngc_largeint_add(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @bwlzh_decompress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Ptngc_largeint_div(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <3 x i16> @llvm.masked.load.v3i16.p0(ptr captures(none), <3 x i1>, <3 x i16>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { cold noreturn nounwind }
attributes #15 = { cold nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16, !35}
!1 = distinct !{!1, !16}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"xtc3_context", !12, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !7, i64 24, !7, i64 28, !12, i64 32, !7, i64 40, !7, i64 44, !12, i64 48, !7, i64 56, !7, i64 60, !12, i64 64, !7, i64 72, !7, i64 76, !12, i64 80, !7, i64 88, !7, i64 92, !6, i64 96, !6, i64 108, !7, i64 120, !6, i64 124, !6, i64 12412, !7, i64 16508}
!14 = !{!13, !7, i64 120}
!15 = !{!13, !7, i64 16508}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!12, !12, i64 0}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = !{!13, !7, i64 8}
!23 = !{!13, !12, i64 0}
!24 = !{!6, !6, i64 0}
!25 = !{!13, !7, i64 24}
!26 = !{!13, !12, i64 16}
!27 = !{!13, !7, i64 40}
!28 = !{!13, !12, i64 32}
!29 = !{!13, !7, i64 56}
!30 = !{!13, !12, i64 48}
!31 = !{!13, !7, i64 72}
!32 = !{!13, !12, i64 64}
!33 = !{!13, !7, i64 88}
!34 = !{!13, !12, i64 80}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = !{!"p1 omnipotent char", !11, i64 0}
!37 = !{!36, !36, i64 0}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16, !20, !21}
!42 = distinct !{!42, !16, !20, !21}
!43 = distinct !{!43, !16, !20, !21}
!44 = distinct !{!44, !16, !21, !20}
!45 = distinct !{!45, !16, !20, !21}
!46 = distinct !{!46, !16, !20, !21}
!47 = distinct !{!47, !16, !21, !20}
!48 = distinct !{!48, !16, !21, !20}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16, !20, !21}
!51 = distinct !{!51, !16, !20, !21}
!52 = distinct !{!52, !16, !21, !20}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16, !20, !21}
!55 = distinct !{!55, !16, !20, !21}
!56 = distinct !{!56, !16, !21, !20}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = distinct !{!59, !16}
!60 = distinct !{!60, !16, !20, !21}
!61 = distinct !{!61, !16, !20, !21}
!62 = distinct !{!62, !16}
!63 = distinct !{!63, !16, !21, !20}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16, !20, !21}
!66 = distinct !{!66, !16, !20, !21}
!67 = distinct !{!67, !16, !21, !20}
!68 = distinct !{!68, !16, !20, !21}
!69 = distinct !{!69, !16, !20, !21}
!70 = distinct !{!70, !16, !21, !20}
!71 = distinct !{!71, !16, !20, !21}
!72 = distinct !{!72, !16, !20, !21}
!73 = distinct !{!73, !16, !21, !20}
!74 = distinct !{!74, !16, !20, !21}
!75 = distinct !{!75, !16, !20, !21}
!76 = distinct !{!76, !16, !21, !20}
!77 = !{!"branch_weights", i32 8, i32 24}
!78 = !{!"branch_weights", i32 4, i32 28}
!79 = !{!"branch_weights", i32 8, i32 8}
!80 = distinct !{!80, !16}
!81 = distinct !{!81, !16}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !"LVerDomain"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !84}
!87 = distinct !{!87, !84}
!88 = distinct !{!88, !84}
!89 = distinct !{!89, !84}
!90 = distinct !{!90, !84}
!91 = distinct !{!91, !84}
!92 = distinct !{!92, !84}
!93 = distinct !{!93, !16, !20, !21}
!94 = distinct !{!94, !16, !20}
!95 = !{!85}
!96 = !{!86}
!97 = !{!92, !91, !90, !85, !89, !88, !87}
!98 = distinct !{!98, !16}
!99 = distinct !{!99, !16, !20, !21}
!100 = distinct !{!100, !16, !20, !21}
!101 = distinct !{!101, !16, !21, !20}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16, !20, !21}
!104 = distinct !{!104, !16, !20, !21}
!105 = distinct !{!105, !16, !21, !20}
!106 = distinct !{!106, !16}
!107 = !{!"branch_weights", i32 4, i32 12}
!108 = distinct !{!108, !16}
!109 = distinct !{!109, !16}
!110 = distinct !{!110, !16}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !116}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = !{!"llvm.loop.unroll.disable"}
end_hunk_2
