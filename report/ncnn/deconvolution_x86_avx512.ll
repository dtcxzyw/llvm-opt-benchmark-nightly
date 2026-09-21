Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/deconvolution_x86_avx512?download=true
inline.NumInlined: 20
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 115
begin_hunk_0_@_ZN4ncnn24Deconvolution_x86_avx51215create_pipelineERKNS_6OptionE:bb.a
  %i.hnr = getelementptr [4 x i8], ptr %i.hle, i64 %index3260 ; 2 uses
  %i.hns = getelementptr i8, ptr %i.hnr, i64 %.reass2117.us.i ; 4 uses
  %i.hnt = getelementptr i8, ptr %i.hns, i64 %.reass2110.us.i
  %wide.load3262 = load <16 x float>, ptr %i.hnt, align 4, !tbaa !39, !alias.scope !1091
  %i.hnu = getelementptr i8, ptr %i.hns, i64 %.reass2110.us.1.i
  %wide.load3263 = load <16 x float>, ptr %i.hnu, align 4, !tbaa !39, !alias.scope !1092
  %i.hnv = getelementptr i8, ptr %i.hns, i64 %.reass2110.us.2.i
  %wide.load3264 = load <16 x float>, ptr %i.hnv, align 4, !tbaa !39, !alias.scope !1093
  %i.hnw = getelementptr i8, ptr %i.hns, i64 %.reass2110.us.3.i
  %wide.load3265 = load <16 x float>, ptr %i.hnw, align 4, !tbaa !39, !alias.scope !1094
  %i.hnx = getelementptr i8, ptr %i.hnr, i64 %.reass2117.us.1.i ; 4 uses
  %i.hny = getelementptr i8, ptr %i.hnx, i64 %.reass2110.us.i
  %wide.load3266 = load <16 x float>, ptr %i.hny, align 4, !tbaa !39, !alias.scope !1095
  %i.hnz = getelementptr i8, ptr %i.hnx, i64 %.reass2110.us.1.i
  %wide.load3267 = load <16 x float>, ptr %i.hnz, align 4, !tbaa !39, !alias.scope !1096
  %i.hoa = getelementptr i8, ptr %i.hnx, i64 %.reass2110.us.2.i
  %wide.load3268 = load <16 x float>, ptr %i.hoa, align 4, !tbaa !39, !alias.scope !1097
  %i.hob = getelementptr i8, ptr %i.hnx, i64 %.reass2110.us.3.i
  %wide.load3269 = load <16 x float>, ptr %i.hob, align 4, !tbaa !39, !alias.scope !1098
  %i.hoc = shufflevector <16 x float> %wide.load3262, <16 x float> %wide.load3263, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hod = shufflevector <16 x float> %wide.load3264, <16 x float> %wide.load3265, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hoe = shufflevector <16 x float> %wide.load3266, <16 x float> %wide.load3267, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hof = shufflevector <16 x float> %wide.load3268, <16 x float> %wide.load3269, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hog = shufflevector <32 x float> %i.hoc, <32 x float> %i.hod, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.hoh = shufflevector <32 x float> %i.hoe, <32 x float> %i.hof, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec3270 = shufflevector <64 x float> %i.hog, <64 x float> %i.hoh, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec3270, ptr %next.gep3261, align 4, !tbaa !39, !alias.scope !1099, !noalias !1100
  %index.next3271 = add nuw i64 %index3260, 16    ; 2 uses
  %i.hoi = icmp eq i64 %index.next3271, %n.vec3258
  br i1 %i.hoi, label %middle.block3272, label %vector.body3259, !llvm.loop !544

middle.block3272:                                 ; preds = %vector.body3259
  br i1 %cmp.n3273, label %._crit_edge2123.us.i, label %vec.epilog.iter.check3278

vec.epilog.iter.check3278:                        ; preds = %middle.block3272
  br i1 %min.epilog.iters.check3279, label %.preheader1767.us.i.preheader, label %vec.epilog.ph3280, !prof !66

vec.epilog.ph3280:                                ; preds = %vector.main.loop.iter.check3255, %vec.epilog.iter.check3278
  %vec.epilog.resume.val3274 = phi i64 [ %n.vec3258, %vec.epilog.iter.check3278 ], [ 0, %vector.main.loop.iter.check3255 ]
  %i.hoj = getelementptr i8, ptr %.127812125.us.i, i64 %i.cuc ; 2 uses
  br label %vec.epilog.vector.body3282

vec.epilog.vector.body3282:                       ; preds = %vec.epilog.vector.body3282, %vec.epilog.ph3280
  %index3283 = phi i64 [ %vec.epilog.resume.val3274, %vec.epilog.ph3280 ], [ %index.next3294, %vec.epilog.vector.body3282 ] ; 3 uses
  %i.hok = shl i64 %index3283, 5
  %next.gep3284 = getelementptr i8, ptr %.127812125.us.i, i64 %i.hok
  %i.hol = getelementptr [4 x i8], ptr %i.hle, i64 %index3283 ; 2 uses
  %i.hom = getelementptr i8, ptr %i.hol, i64 %.reass2117.us.i ; 4 uses
  %i.hon = getelementptr i8, ptr %i.hom, i64 %.reass2110.us.i
  %wide.load3285 = load <4 x float>, ptr %i.hon, align 4, !tbaa !39, !alias.scope !1091
  %i.hoo = getelementptr i8, ptr %i.hom, i64 %.reass2110.us.1.i
  %wide.load3286 = load <4 x float>, ptr %i.hoo, align 4, !tbaa !39, !alias.scope !1092
  %i.hop = getelementptr i8, ptr %i.hom, i64 %.reass2110.us.2.i
  %wide.load3287 = load <4 x float>, ptr %i.hop, align 4, !tbaa !39, !alias.scope !1093
  %i.hoq = getelementptr i8, ptr %i.hom, i64 %.reass2110.us.3.i
  %wide.load3288 = load <4 x float>, ptr %i.hoq, align 4, !tbaa !39, !alias.scope !1094
  %i.hor = getelementptr i8, ptr %i.hol, i64 %.reass2117.us.1.i ; 4 uses
  %i.hos = getelementptr i8, ptr %i.hor, i64 %.reass2110.us.i
  %wide.load3289 = load <4 x float>, ptr %i.hos, align 4, !tbaa !39, !alias.scope !1095
  %i.hot = getelementptr i8, ptr %i.hor, i64 %.reass2110.us.1.i
  %wide.load3290 = load <4 x float>, ptr %i.hot, align 4, !tbaa !39, !alias.scope !1096
  %i.hou = getelementptr i8, ptr %i.hor, i64 %.reass2110.us.2.i
  %wide.load3291 = load <4 x float>, ptr %i.hou, align 4, !tbaa !39, !alias.scope !1097
  %i.hov = getelementptr i8, ptr %i.hor, i64 %.reass2110.us.3.i
  %wide.load3292 = load <4 x float>, ptr %i.hov, align 4, !tbaa !39, !alias.scope !1098
  %i.how = shufflevector <4 x float> %wide.load3285, <4 x float> %wide.load3286, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hox = shufflevector <4 x float> %wide.load3287, <4 x float> %wide.load3288, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hoy = shufflevector <4 x float> %wide.load3289, <4 x float> %wide.load3290, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hoz = shufflevector <4 x float> %wide.load3291, <4 x float> %wide.load3292, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hpa = shufflevector <8 x float> %i.how, <8 x float> %i.hox, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hpb = shufflevector <8 x float> %i.hoy, <8 x float> %i.hoz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec3293 = shufflevector <16 x float> %i.hpa, <16 x float> %i.hpb, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec3293, ptr %next.gep3284, align 4, !tbaa !39, !alias.scope !1099, !noalias !1100
  %index.next3294 = add nuw i64 %index3283, 4     ; 2 uses
  %i.hpc = icmp eq i64 %index.next3294, %n.vec3281
  br i1 %i.hpc, label %vec.epilog.middle.block3295, label %vec.epilog.vector.body3282, !llvm.loop !545

vec.epilog.middle.block3295:                      ; preds = %vec.epilog.vector.body3282
  br i1 %cmp.n3296, label %._crit_edge2123.us.i, label %.preheader1767.us.i.preheader

.preheader1767.us.i.preheader:                    ; preds = %vector.memcheck3201, %iter.check3276, %vec.epilog.iter.check3278, %vec.epilog.middle.block3295
  %indvars.iv2674.i.ph = phi i64 [ 0, %iter.check3276 ], [ 0, %vector.memcheck3201 ], [ %n.vec3258, %vec.epilog.iter.check3278 ], [ %n.vec3281, %vec.epilog.middle.block3295 ]
  %.137822121.us.i.ph = phi ptr [ %.127812125.us.i, %iter.check3276 ], [ %.127812125.us.i, %vector.memcheck3201 ], [ %i.hnp, %vec.epilog.iter.check3278 ], [ %i.hoj, %vec.epilog.middle.block3295 ]
  br label %.preheader1767.us.i

.preheader1767.us.i:                              ; preds = %.preheader1767.us.i.preheader, %.preheader1767.us.i
  %indvars.iv2674.i = phi i64 [ %indvars.iv.next2675.i, %.preheader1767.us.i ], [ %indvars.iv2674.i.ph, %.preheader1767.us.i.preheader ] ; 2 uses
  %.137822121.us.i = phi ptr [ %i.hps, %.preheader1767.us.i ], [ %.137822121.us.i.ph, %.preheader1767.us.i.preheader ] ; 9 uses
  %invariant.gep2118.us.i = getelementptr [4 x i8], ptr %i.hle, i64 %indvars.iv2674.i ; 2 uses
  %gep.us2129.i = getelementptr i8, ptr %invariant.gep2118.us.i, i64 %.reass2117.us.i ; 4 uses
  %gep2113.us.i = getelementptr i8, ptr %gep.us2129.i, i64 %.reass2110.us.i
  %i.hpd = load float, ptr %gep2113.us.i, align 4, !tbaa !39
  store float %i.hpd, ptr %.137822121.us.i, align 4, !tbaa !39
  %i.hpe = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 4
  %gep2113.us.1.i = getelementptr i8, ptr %gep.us2129.i, i64 %.reass2110.us.1.i
  %i.hpf = load float, ptr %gep2113.us.1.i, align 4, !tbaa !39
  store float %i.hpf, ptr %i.hpe, align 4, !tbaa !39
  %i.hpg = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 8
  %gep2113.us.2.i = getelementptr i8, ptr %gep.us2129.i, i64 %.reass2110.us.2.i
  %i.hph = load float, ptr %gep2113.us.2.i, align 4, !tbaa !39
  store float %i.hph, ptr %i.hpg, align 4, !tbaa !39
  %i.hpi = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 12
  %gep2113.us.3.i = getelementptr i8, ptr %gep.us2129.i, i64 %.reass2110.us.3.i
  %i.hpj = load float, ptr %gep2113.us.3.i, align 4, !tbaa !39
  store float %i.hpj, ptr %i.hpi, align 4, !tbaa !39
  %i.hpk = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 16
  %gep.us2129.1.i = getelementptr i8, ptr %invariant.gep2118.us.i, i64 %.reass2117.us.1.i ; 4 uses
  %gep2113.us.12673.i = getelementptr i8, ptr %gep.us2129.1.i, i64 %.reass2110.us.i
  %i.hpl = load float, ptr %gep2113.us.12673.i, align 4, !tbaa !39
  store float %i.hpl, ptr %i.hpk, align 4, !tbaa !39
  %i.hpm = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 20
  %gep2113.us.1.1.i = getelementptr i8, ptr %gep.us2129.1.i, i64 %.reass2110.us.1.i
  %i.hpn = load float, ptr %gep2113.us.1.1.i, align 4, !tbaa !39
  store float %i.hpn, ptr %i.hpm, align 4, !tbaa !39
  %i.hpo = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 24
  %gep2113.us.2.1.i = getelementptr i8, ptr %gep.us2129.1.i, i64 %.reass2110.us.2.i
  %i.hpp = load float, ptr %gep2113.us.2.1.i, align 4, !tbaa !39
  store float %i.hpp, ptr %i.hpo, align 4, !tbaa !39
  %i.hpq = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 28
  %gep2113.us.3.1.i = getelementptr i8, ptr %gep.us2129.1.i, i64 %.reass2110.us.3.i
  %i.hpr = load float, ptr %gep2113.us.3.1.i, align 4, !tbaa !39
  store float %i.hpr, ptr %i.hpq, align 4, !tbaa !39
  %i.hps = getelementptr inbounds nuw i8, ptr %.137822121.us.i, i64 32 ; 2 uses
  %indvars.iv.next2675.i = add nuw nsw i64 %indvars.iv2674.i, 1 ; 2 uses
  %exitcond2678.not.i = icmp eq i64 %indvars.iv.next2675.i, %wide.trip.count2623.i
  br i1 %exitcond2678.not.i, label %._crit_edge2123.us.i, label %.preheader1767.us.i, !llvm.loop !546

._crit_edge2123.us.i:                             ; preds = %.preheader1767.us.i, %vec.epilog.middle.block3295, %middle.block3272
  %.lcssa428 = phi ptr [ %i.hoj, %vec.epilog.middle.block3295 ], [ %i.hnp, %middle.block3272 ], [ %i.hps, %.preheader1767.us.i ] ; 2 uses
  %indvars.iv.next2680.i = add nuw nsw i64 %indvars.iv2679.i, 2 ; 2 uses
  %i.hpt = trunc i64 %indvars.iv.next2680.i to i32 ; 2 uses
  %i.hpu = or i32 %i.hpt, 1
  %i.hpv = icmp slt i32 %i.hpu, %i.bx
  %indvar.next3204 = add i64 %indvar3203, 1
  br i1 %i.hpv, label %iter.check3276, label %.preheader1776.i, !llvm.loop !547

.preheader1776.i:                                 ; preds = %._crit_edge2123.us.i, %.preheader1777.i.thread, %.preheader1772.preheader.i, %.preheader1777.i
  %.12781.lcssa.i = phi ptr [ %.8777.lcssa.i, %.preheader1777.i ], [ %.4773.lcssa.i, %.preheader1777.i.thread ], [ %.8777.lcssa.i171177, %.preheader1772.preheader.i ], [ %.lcssa428, %._crit_edge2123.us.i ]
  %.3767.lcssa.i = phi i32 [ %.2766.lcssa.i, %.preheader1777.i ], [ %i.hla, %.preheader1777.i.thread ], [ %i.hlk, %.preheader1772.preheader.i ], [ %i.hpt, %._crit_edge2123.us.i ] ; 3 uses
  %i.hpw = icmp slt i32 %.3767.lcssa.i, %i.bx
  br i1 %i.hpw, label %.preheader1771.lr.ph.i, label %._crit_edge2145.split.i

.preheader1771.lr.ph.i:                           ; preds = %.preheader1776.i
  %i.hpx = load i32, ptr %i.csc, align 4
  %i.hpy = load ptr, ptr %3, align 8              ; 9 uses
  %i.hpz = load i64, ptr %i.cse, align 8          ; 11 uses
  %i.hqa = sext i32 %i.hpx to i64                 ; 4 uses
  %factor.op.mul2146.i = mul i64 %i.hpz, %i.hqa
  br i1 %i.csb, label %.preheader1771.preheader.i, label %._crit_edge2145.split.i

.preheader1771.preheader.i:                       ; preds = %.preheader1771.lr.ph.i
  %i.hqb = load i64, ptr %i.csd, align 8          ; 5 uses
  %factor.op.mul2132.i = mul i64 %i.hqb, %i.hpz   ; 4 uses
  %i.hqc = zext i32 %.3767.lcssa.i to i64         ; 3 uses
  %.reass2133.i = mul i64 %factor.op.mul2132.i, %indvars.iv2694.i ; 5 uses
  %i.hqd = add nuw i64 %indvars.iv2694.i, 1       ; 2 uses
  %.reass2133.1.i = mul i64 %factor.op.mul2132.i, %i.hqd ; 5 uses
  %i.hqe = add nuw i64 %indvars.iv2694.i, 2       ; 2 uses
  %.reass2133.2.i = mul i64 %factor.op.mul2132.i, %i.hqe ; 5 uses
  %i.hqf = add nuw nsw i64 %indvars.iv2694.i, 3   ; 2 uses
  %.reass2133.3.i = mul i64 %factor.op.mul2132.i, %i.hqf ; 5 uses
  %i.hqg = mul i64 %i.hqb, %i.hqf                 ; 2 uses
  %i.hqh = mul nsw i64 %i.hqa, %i.hqc             ; 4 uses
  %i.hqi = add i64 %i.hqg, %i.hqh
  %i.hqj = mul i64 %i.hpz, %i.hqi
  %scevgep3133 = getelementptr i8, ptr %i.hpy, i64 %i.hqj
  %scevgep3134 = getelementptr i8, ptr %i.hpy, i64 %i.cso
  %i.hqk = xor i32 %.3767.lcssa.i, -1
  %i.hql = add i32 %i.bx, %i.hqk
  %i.hqm = zext i32 %i.hql to i64
  %i.hqn = add nuw nsw i64 %i.hqc, %i.hqm
  %i.hqo = mul i64 %i.hqn, %i.hqa                 ; 4 uses
  %i.hqp = add i64 %i.hqg, %i.hqo
  %i.hqq = mul i64 %i.hpz, %i.hqp
  %scevgep3135 = getelementptr i8, ptr %scevgep3134, i64 %i.hqq
  %i.hqr = mul i64 %i.hpz, %i.hqa
  %i.hqs = mul i64 %i.hqb, %i.hqe                 ; 2 uses
  %i.hqt = add i64 %i.hqs, %i.hqh
  %i.hqu = mul i64 %i.hpz, %i.hqt
  %scevgep3136 = getelementptr i8, ptr %i.hpy, i64 %i.hqu
  %scevgep3137 = getelementptr i8, ptr %i.hpy, i64 %i.cso
  %i.hqv = add i64 %i.hqs, %i.hqo
  %i.hqw = mul i64 %i.hpz, %i.hqv
  %scevgep3138 = getelementptr i8, ptr %scevgep3137, i64 %i.hqw
  %i.hqx = mul i64 %i.hqb, %i.hqd                 ; 2 uses
  %i.hqy = add i64 %i.hqx, %i.hqh
  %i.hqz = mul i64 %i.hpz, %i.hqy
  %scevgep3139 = getelementptr i8, ptr %i.hpy, i64 %i.hqz
  %scevgep3140 = getelementptr i8, ptr %i.hpy, i64 %i.cso
  %i.hra = add i64 %i.hqx, %i.hqo
  %i.hrb = mul i64 %i.hpz, %i.hra
  %scevgep3141 = getelementptr i8, ptr %scevgep3140, i64 %i.hrb
  %i.hrc = mul i64 %i.hqb, %indvars.iv2694.i      ; 2 uses
  %i.hrd = add i64 %i.hrc, %i.hqh
  %i.hre = mul i64 %i.hpz, %i.hrd
  %scevgep3142 = getelementptr i8, ptr %i.hpy, i64 %i.hre
  %scevgep3143 = getelementptr i8, ptr %i.hpy, i64 %i.cso
  %i.hrf = add i64 %i.hrc, %i.hqo
  %i.hrg = mul i64 %i.hpz, %i.hrf
  %scevgep3144 = getelementptr i8, ptr %scevgep3143, i64 %i.hrg
  %stride.check3152 = icmp slt i64 %i.hqr, 0
  br label %iter.check3182

iter.check3182:                                   ; preds = %._crit_edge2141.i, %.preheader1771.preheader.i
  %indvars.iv2691.i = phi i64 [ %i.hqc, %.preheader1771.preheader.i ], [ %indvars.iv.next2692.i, %._crit_edge2141.i ] ; 2 uses
  %.167852143.i = phi ptr [ %.12781.lcssa.i, %.preheader1771.preheader.i ], [ %.lcssa430, %._crit_edge2141.i ] ; 11 uses
  %.reass2147.i = mul i64 %factor.op.mul2146.i, %indvars.iv2691.i
  %invariant.gep2134.i = getelementptr i8, ptr %i.hpy, i64 %.reass2147.i ; 5 uses
  br i1 %min.iters.check3164, label %.preheader1766.i.preheader, label %vector.memcheck3131

vector.memcheck3131:                              ; preds = %iter.check3182
  %scevgep3132 = getelementptr i8, ptr %.167852143.i, i64 %i.csn ; 4 uses
  %bound03145 = icmp ult ptr %.167852143.i, %scevgep3135
  %bound13146 = icmp ult ptr %scevgep3133, %scevgep3132
  %found.conflict3147 = and i1 %bound03145, %bound13146
  %bound03149 = icmp ult ptr %.167852143.i, %scevgep3138
  %bound13150 = icmp ult ptr %scevgep3136, %scevgep3132
  %found.conflict3151 = and i1 %bound03149, %bound13150
  %15 = or i1 %found.conflict3151, %stride.check3152
  %conflict.rdx3153 = or i1 %found.conflict3147, %15
  %bound03154 = icmp ult ptr %.167852143.i, %scevgep3141
  %bound13155 = icmp ult ptr %scevgep3139, %scevgep3132
  %found.conflict3156 = and i1 %bound03154, %bound13155
  %conflict.rdx3158 = or i1 %found.conflict3156, %conflict.rdx3153
  %bound03159 = icmp ult ptr %.167852143.i, %scevgep3144
  %bound13160 = icmp ult ptr %scevgep3142, %scevgep3132
  %found.conflict3161 = and i1 %bound03159, %bound13160
  %conflict.rdx3163 = or i1 %found.conflict3161, %conflict.rdx3158
  br i1 %conflict.rdx3163, label %.preheader1766.i.preheader, label %vector.main.loop.iter.check3165

vector.main.loop.iter.check3165:                  ; preds = %vector.memcheck3131
  br i1 %min.iters.check3166, label %vec.epilog.ph3186, label %vector.ph3167

vector.ph3167:                                    ; preds = %vector.main.loop.iter.check3165
  %i.hrh = getelementptr i8, ptr %.167852143.i, i64 %i.cue ; 2 uses
  br label %vector.body3169

vector.body3169:                                  ; preds = %vector.body3169, %vector.ph3167
  %index3170 = phi i64 [ 0, %vector.ph3167 ], [ %index.next3177, %vector.body3169 ] ; 3 uses
  %i.hri = shl i64 %index3170, 4
  %next.gep3171 = getelementptr i8, ptr %.167852143.i, i64 %i.hri
  %i.hrj = getelementptr [4 x i8], ptr %invariant.gep2134.i, i64 %index3170 ; 4 uses
  %i.hrk = getelementptr i8, ptr %i.hrj, i64 %.reass2133.i
  %wide.load3172 = load <16 x float>, ptr %i.hrk, align 4, !tbaa !39, !alias.scope !1101
  %i.hrl = getelementptr i8, ptr %i.hrj, i64 %.reass2133.1.i
  %wide.load3173 = load <16 x float>, ptr %i.hrl, align 4, !tbaa !39, !alias.scope !1102
  %i.hrm = getelementptr i8, ptr %i.hrj, i64 %.reass2133.2.i
  %wide.load3174 = load <16 x float>, ptr %i.hrm, align 4, !tbaa !39, !alias.scope !1103
  %i.hrn = getelementptr i8, ptr %i.hrj, i64 %.reass2133.3.i
  %wide.load3175 = load <16 x float>, ptr %i.hrn, align 4, !tbaa !39, !alias.scope !1104
  %i.hro = shufflevector <16 x float> %wide.load3172, <16 x float> %wide.load3173, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.hrp = shufflevector <16 x float> %wide.load3174, <16 x float> %wide.load3175, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec3176 = shufflevector <32 x float> %i.hro, <32 x float> %i.hrp, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec3176, ptr %next.gep3171, align 4, !tbaa !39, !alias.scope !1105, !noalias !1106
  %index.next3177 = add nuw i64 %index3170, 16    ; 2 uses
  %i.hrq = icmp eq i64 %index.next3177, %n.vec3168
  br i1 %i.hrq, label %middle.block3178, label %vector.body3169, !llvm.loop !554

middle.block3178:                                 ; preds = %vector.body3169
  br i1 %cmp.n3179, label %._crit_edge2141.i, label %vec.epilog.iter.check3184

vec.epilog.iter.check3184:                        ; preds = %middle.block3178
  br i1 %min.epilog.iters.check3185, label %.preheader1766.i.preheader, label %vec.epilog.ph3186, !prof !66

vec.epilog.ph3186:                                ; preds = %vector.main.loop.iter.check3165, %vec.epilog.iter.check3184
  %vec.epilog.resume.val3180 = phi i64 [ %n.vec3168, %vec.epilog.iter.check3184 ], [ 0, %vector.main.loop.iter.check3165 ]
  %i.hrr = getelementptr i8, ptr %.167852143.i, i64 %i.cuf ; 2 uses
  br label %vec.epilog.vector.body3188

vec.epilog.vector.body3188:                       ; preds = %vec.epilog.vector.body3188, %vec.epilog.ph3186
  %index3189 = phi i64 [ %vec.epilog.resume.val3180, %vec.epilog.ph3186 ], [ %index.next3196, %vec.epilog.vector.body3188 ] ; 3 uses
  %i.hrs = shl i64 %index3189, 4
  %next.gep3190 = getelementptr i8, ptr %.167852143.i, i64 %i.hrs
  %i.hrt = getelementptr [4 x i8], ptr %invariant.gep2134.i, i64 %index3189 ; 4 uses
  %i.hru = getelementptr i8, ptr %i.hrt, i64 %.reass2133.i
  %wide.load3191 = load <4 x float>, ptr %i.hru, align 4, !tbaa !39, !alias.scope !1101
  %i.hrv = getelementptr i8, ptr %i.hrt, i64 %.reass2133.1.i
  %wide.load3192 = load <4 x float>, ptr %i.hrv, align 4, !tbaa !39, !alias.scope !1102
  %i.hrw = getelementptr i8, ptr %i.hrt, i64 %.reass2133.2.i
  %wide.load3193 = load <4 x float>, ptr %i.hrw, align 4, !tbaa !39, !alias.scope !1103
  %i.hrx = getelementptr i8, ptr %i.hrt, i64 %.reass2133.3.i
  %wide.load3194 = load <4 x float>, ptr %i.hrx, align 4, !tbaa !39, !alias.scope !1104
  %i.hry = shufflevector <4 x float> %wide.load3191, <4 x float> %wide.load3192, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.hrz = shufflevector <4 x float> %wide.load3193, <4 x float> %wide.load3194, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec3195 = shufflevector <8 x float> %i.hry, <8 x float> %i.hrz, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec3195, ptr %next.gep3190, align 4, !tbaa !39, !alias.scope !1105, !noalias !1106
  %index.next3196 = add nuw i64 %index3189, 4     ; 2 uses
  %i.hsa = icmp eq i64 %index.next3196, %n.vec3187
  br i1 %i.hsa, label %vec.epilog.middle.block3197, label %vec.epilog.vector.body3188, !llvm.loop !555

vec.epilog.middle.block3197:                      ; preds = %vec.epilog.vector.body3188
  br i1 %cmp.n3198, label %._crit_edge2141.i, label %.preheader1766.i.preheader

.preheader1766.i.preheader:                       ; preds = %vector.memcheck3131, %iter.check3182, %vec.epilog.iter.check3184, %vec.epilog.middle.block3197
  %indvars.iv2686.i.ph = phi i64 [ 0, %iter.check3182 ], [ 0, %vector.memcheck3131 ], [ %n.vec3168, %vec.epilog.iter.check3184 ], [ %n.vec3187, %vec.epilog.middle.block3197 ] ; 4 uses
  %.177862139.i.ph = phi ptr [ %.167852143.i, %iter.check3182 ], [ %.167852143.i, %vector.memcheck3131 ], [ %i.hrh, %vec.epilog.iter.check3184 ], [ %i.hrr, %vec.epilog.middle.block3197 ] ; 6 uses
  br i1 %lcmp.mod6037.not, label %.preheader1766.i.prol.loopexit, label %.preheader1766.i.prol

.preheader1766.i.prol:                            ; preds = %.preheader1766.i.preheader
  %invariant.gep2135.i.prol = getelementptr [4 x i8], ptr %invariant.gep2134.i, i64 %indvars.iv2686.i.ph ; 4 uses
  %gep2136.i.prol = getelementptr i8, ptr %invariant.gep2135.i.prol, i64 %.reass2133.i
  %i.hsb = load float, ptr %gep2136.i.prol, align 4, !tbaa !39
  store float %i.hsb, ptr %.177862139.i.ph, align 4, !tbaa !39
  %i.hsc = getelementptr inbounds nuw i8, ptr %.177862139.i.ph, i64 4
  %gep2136.1.i.prol = getelementptr i8, ptr %invariant.gep2135.i.prol, i64 %.reass2133.1.i
  %i.hsd = load float, ptr %gep2136.1.i.prol, align 4, !tbaa !39
  store float %i.hsd, ptr %i.hsc, align 4, !tbaa !39
  %i.hse = getelementptr inbounds nuw i8, ptr %.177862139.i.ph, i64 8
  %gep2136.2.i.prol = getelementptr i8, ptr %invariant.gep2135.i.prol, i64 %.reass2133.2.i
  %i.hsf = load float, ptr %gep2136.2.i.prol, align 4, !tbaa !39
  store float %i.hsf, ptr %i.hse, align 4, !tbaa !39
  %i.hsg = getelementptr inbounds nuw i8, ptr %.177862139.i.ph, i64 12
  %gep2136.3.i.prol = getelementptr i8, ptr %invariant.gep2135.i.prol, i64 %.reass2133.3.i
  %i.hsh = load float, ptr %gep2136.3.i.prol, align 4, !tbaa !39
  store float %i.hsh, ptr %i.hsg, align 4, !tbaa !39
  %i.hsi = getelementptr inbounds nuw i8, ptr %.177862139.i.ph, i64 16 ; 2 uses
  %indvars.iv.next2687.i.prol = or disjoint i64 %indvars.iv2686.i.ph, 1
  br label %.preheader1766.i.prol.loopexit

.preheader1766.i.prol.loopexit:                   ; preds = %.preheader1766.i.prol, %.preheader1766.i.preheader
  %.lcssa6018.unr = phi ptr [ poison, %.preheader1766.i.preheader ], [ %i.hsi, %.preheader1766.i.prol ]
  %indvars.iv2686.i.unr = phi i64 [ %indvars.iv2686.i.ph, %.preheader1766.i.preheader ], [ %indvars.iv.next2687.i.prol, %.preheader1766.i.prol ]
  %.177862139.i.unr = phi ptr [ %.177862139.i.ph, %.preheader1766.i.preheader ], [ %i.hsi, %.preheader1766.i.prol ]
  %i.hsj = icmp eq i64 %indvars.iv2686.i.ph, %i.cug
  br i1 %i.hsj, label %._crit_edge2141.i, label %.preheader1766.i

.preheader1766.i:                                 ; preds = %.preheader1766.i.prol.loopexit, %.preheader1766.i
  %indvars.iv2686.i = phi i64 [ %indvars.iv.next2687.i.1, %.preheader1766.i ], [ %indvars.iv2686.i.unr, %.preheader1766.i.prol.loopexit ] ; 3 uses
  %.177862139.i = phi ptr [ %i.hta, %.preheader1766.i ], [ %.177862139.i.unr, %.preheader1766.i.prol.loopexit ] ; 9 uses
  %invariant.gep2135.i = getelementptr [4 x i8], ptr %invariant.gep2134.i, i64 %indvars.iv2686.i ; 4 uses
  %gep2136.i = getelementptr i8, ptr %invariant.gep2135.i, i64 %.reass2133.i
  %i.hsk = load float, ptr %gep2136.i, align 4, !tbaa !39
  store float %i.hsk, ptr %.177862139.i, align 4, !tbaa !39
  %i.hsl = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 4
  %gep2136.1.i = getelementptr i8, ptr %invariant.gep2135.i, i64 %.reass2133.1.i
  %i.hsm = load float, ptr %gep2136.1.i, align 4, !tbaa !39
  store float %i.hsm, ptr %i.hsl, align 4, !tbaa !39
  %i.hsn = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 8
  %gep2136.2.i = getelementptr i8, ptr %invariant.gep2135.i, i64 %.reass2133.2.i
  %i.hso = load float, ptr %gep2136.2.i, align 4, !tbaa !39
  store float %i.hso, ptr %i.hsn, align 4, !tbaa !39
  %i.hsp = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 12
  %gep2136.3.i = getelementptr i8, ptr %invariant.gep2135.i, i64 %.reass2133.3.i
  %i.hsq = load float, ptr %gep2136.3.i, align 4, !tbaa !39
  store float %i.hsq, ptr %i.hsp, align 4, !tbaa !39
  %i.hsr = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 16
  %i.hss = getelementptr [4 x i8], ptr %invariant.gep2134.i, i64 %indvars.iv2686.i
  %invariant.gep2135.i.1 = getelementptr i8, ptr %i.hss, i64 4 ; 4 uses
  %gep2136.i.1 = getelementptr i8, ptr %invariant.gep2135.i.1, i64 %.reass2133.i
  %i.hst = load float, ptr %gep2136.i.1, align 4, !tbaa !39
  store float %i.hst, ptr %i.hsr, align 4, !tbaa !39
  %i.hsu = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 20
  %gep2136.1.i.1 = getelementptr i8, ptr %invariant.gep2135.i.1, i64 %.reass2133.1.i
  %i.hsv = load float, ptr %gep2136.1.i.1, align 4, !tbaa !39
  store float %i.hsv, ptr %i.hsu, align 4, !tbaa !39
  %i.hsw = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 24
  %gep2136.2.i.1 = getelementptr i8, ptr %invariant.gep2135.i.1, i64 %.reass2133.2.i
  %i.hsx = load float, ptr %gep2136.2.i.1, align 4, !tbaa !39
  store float %i.hsx, ptr %i.hsw, align 4, !tbaa !39
  %i.hsy = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 28
  %gep2136.3.i.1 = getelementptr i8, ptr %invariant.gep2135.i.1, i64 %.reass2133.3.i
  %i.hsz = load float, ptr %gep2136.3.i.1, align 4, !tbaa !39
  store float %i.hsz, ptr %i.hsy, align 4, !tbaa !39
  %i.hta = getelementptr inbounds nuw i8, ptr %.177862139.i, i64 32 ; 2 uses
  %indvars.iv.next2687.i.1 = add nuw nsw i64 %indvars.iv2686.i, 2 ; 2 uses
  %exitcond2690.not.i.1 = icmp eq i64 %indvars.iv.next2687.i.1, %wide.trip.count2623.i
  br i1 %exitcond2690.not.i.1, label %._crit_edge2141.i, label %.preheader1766.i, !llvm.loop !556

._crit_edge2141.i:                                ; preds = %.preheader1766.i.prol.loopexit, %.preheader1766.i, %vec.epilog.middle.block3197, %middle.block3178
  %.lcssa430 = phi ptr [ %i.hrr, %vec.epilog.middle.block3197 ], [ %i.hrh, %middle.block3178 ], [ %.lcssa6018.unr, %.preheader1766.i.prol.loopexit ], [ %i.hta, %.preheader1766.i ]
  %indvars.iv.next2692.i = add nuw nsw i64 %indvars.iv2691.i, 1 ; 2 uses
  %i.htb = trunc nuw i64 %indvars.iv.next2692.i to i32
  %i.htc = icmp sgt i32 %i.bx, %i.htb
  br i1 %i.htc, label %iter.check3182, label %._crit_edge2145.split.i, !llvm.loop !557

._crit_edge2145.split.i:                          ; preds = %._crit_edge2141.i, %.preheader1771.lr.ph.i, %.preheader1776.i
  %indvars.iv.next2695.i = add nuw nsw i64 %indvars.iv2694.i, 4 ; 2 uses
  %i.htd = trunc i64 %indvars.iv.next2695.i to i32 ; 2 uses
  %i.hte = or i32 %i.htd, 3
  %i.htf = icmp slt i32 %i.hte, %i.bs
  %indvar.next3208 = add i64 %indvar3207, 1
  br i1 %i.htf, label %.noexc1191.i, label %.preheader1761.i, !llvm.loop !558

.preheader1742.i:                                 ; preds = %._crit_edge2255.split.i, %.preheader1761.i
  %.3867.lcssa.i = phi i32 [ %.2866.lcssa.i, %.preheader1761.i ], [ %i.jfe, %._crit_edge2255.split.i ] ; 2 uses
  %i.htg = icmp slt i32 %.3867.lcssa.i, %i.bs
  br i1 %i.htg, label %.noexc1167.lr.ph.i, label %._crit_edge2338.i

.noexc1167.lr.ph.i:                               ; preds = %.preheader1742.i
  %i.hth = load ptr, ptr %i.lj, align 8, !tbaa !20, !noalias !1107
  %i.hti = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.htj = load i64, ptr %i.hti, align 8, !tbaa !21, !noalias !1107
  %i.htk = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.htl = load i64, ptr %i.htk, align 8, !tbaa !56, !noalias !1107
  %factor.op.mul2339.i = mul i64 %i.htl, %i.htj
  %i.htm = icmp sgt i32 %i.bx, 15
  %i.htn = icmp sgt i32 %i.bn, 0                  ; 5 uses
  %i.hto = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %i.htp = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 5 uses
  %i.htq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.htr = and i32 %i.bx, -16
  %i.hts = sext i32 %i.bx to i64                  ; 2 uses
  %i.htt = add i32 %i.bx, -8
  %i.htu = add i32 %i.bx, -4
  %i.htv = add i32 %i.bx, -2
  %i.htw = zext i32 %.3867.lcssa.i to i64
  %wide.trip.count2781.i = zext i32 %i.bn to i64  ; 41 uses
  %invariant.op2901.i = add nsw i64 %i.hts, -15
  %i.htx = shl nuw nsw i64 %wide.trip.count2781.i, 3
  %i.hty = shl nuw nsw i64 %wide.trip.count2781.i, 2 ; 29 uses
  %i.htz = shl nuw nsw i64 %wide.trip.count2781.i, 4
  %i.hua = shl nuw nsw i64 %wide.trip.count2781.i, 5
  %i.hub = shl nuw nsw i64 %wide.trip.count2781.i, 6
  %i.huc = add nsw i64 %i.hts, -16                ; 3 uses
  %i.hud = and i64 %i.huc, -16                    ; 14 uses
  %i.hue = or i64 %i.huc, 15
  %i.huf = or disjoint i64 %i.hud, 14
  %i.hug = or disjoint i64 %i.hud, 13
  %i.huh = or disjoint i64 %i.hud, 12
  %i.hui = or disjoint i64 %i.hud, 11
  %i.huj = or disjoint i64 %i.hud, 10
  %i.huk = or disjoint i64 %i.hud, 9
  %i.hul = or disjoint i64 %i.hud, 8
  %i.hum = or disjoint i64 %i.hud, 7
  %i.hun = or disjoint i64 %i.hud, 6
  %i.huo = or disjoint i64 %i.hud, 5
  %i.hup = or disjoint i64 %i.hud, 4
  %i.huq = or disjoint i64 %i.hud, 3
end_hunk_0
