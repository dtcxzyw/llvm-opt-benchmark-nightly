inline.NumInlined: 7
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN4ncnn54convolution1d_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iii:bb.a
  br i1 %min.iters.check400, label %vec.epilog.scalar.ph420.preheader, label %vector.main.loop.iter.check401

vector.main.loop.iter.check401:                   ; preds = %iter.check419
  br i1 %min.iters.check402, label %vec.epilog.ph423, label %vector.ph403

vector.ph403:                                     ; preds = %vector.main.loop.iter.check401
  %i.bnw = getelementptr i8, ptr %.61987.us.i, i64 %i.bao ; 2 uses
  br label %vector.body405

vector.body405:                                   ; preds = %vector.body405, %vector.ph403
  %index406 = phi i64 [ 0, %vector.ph403 ], [ %index.next415, %vector.body405 ] ; 3 uses
  %i.bnx = shl i64 %index406, 2                   ; 2 uses
  %next.gep407 = getelementptr i8, ptr %.61987.us.i, i64 %i.bnx
  %i.bny = getelementptr i8, ptr %.61987.us.i, i64 %i.bnx
  %next.gep408 = getelementptr i8, ptr %i.bny, i64 64
  %i.bnz = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %index406 ; 3 uses
  %i.boa = getelementptr inbounds nuw i8, ptr %i.bnz, i64 64
  %wide.load409 = load <16 x i32>, ptr %i.bnz, align 4, !tbaa !51
  %wide.load410 = load <16 x i32>, ptr %i.boa, align 4, !tbaa !51
  %i.bob = getelementptr inbounds nuw [4 x i8], ptr %i.bnz, i64 %i.azt ; 2 uses
  %i.boc = getelementptr inbounds nuw i8, ptr %i.bob, i64 64
  %wide.load411 = load <16 x i32>, ptr %i.bob, align 4, !tbaa !51
  %wide.load412 = load <16 x i32>, ptr %i.boc, align 4, !tbaa !51
  %i.bod = shufflevector <16 x i32> %wide.load409, <16 x i32> %wide.load411, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.boe = lshr <32 x i32> %i.bod, splat (i32 16)
  %interleaved.vec413 = trunc nuw <32 x i32> %i.boe to <32 x i16>
  store <32 x i16> %interleaved.vec413, ptr %next.gep407, align 2, !tbaa !33
  %i.bof = shufflevector <16 x i32> %wide.load410, <16 x i32> %wide.load412, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bog = lshr <32 x i32> %i.bof, splat (i32 16)
  %interleaved.vec414 = trunc nuw <32 x i32> %i.bog to <32 x i16>
  store <32 x i16> %interleaved.vec414, ptr %next.gep408, align 2, !tbaa !33
  %index.next415 = add nuw i64 %index406, 32      ; 2 uses
  %i.boh = icmp eq i64 %index.next415, %n.vec404
  br i1 %i.boh, label %middle.block416, label %vector.body405, !llvm.loop !221

middle.block416:                                  ; preds = %vector.body405
  br i1 %cmp.n417, label %._crit_edge1984.us.i, label %vec.epilog.iter.check421

vec.epilog.iter.check421:                         ; preds = %middle.block416
  br i1 %min.epilog.iters.check422, label %vec.epilog.scalar.ph420.preheader, label %vec.epilog.ph423, !prof !222

vec.epilog.ph423:                                 ; preds = %vector.main.loop.iter.check401, %vec.epilog.iter.check421
  %vec.epilog.resume.val418 = phi i64 [ %n.vec404, %vec.epilog.iter.check421 ], [ 0, %vector.main.loop.iter.check401 ]
  %i.boi = getelementptr i8, ptr %.61987.us.i, i64 %i.bap ; 2 uses
  br label %vec.epilog.vector.body425

vec.epilog.vector.body425:                        ; preds = %vec.epilog.vector.body425, %vec.epilog.ph423
  %index426 = phi i64 [ %vec.epilog.resume.val418, %vec.epilog.ph423 ], [ %index.next431, %vec.epilog.vector.body425 ] ; 3 uses
  %i.boj = shl i64 %index426, 2
  %next.gep427 = getelementptr i8, ptr %.61987.us.i, i64 %i.boj
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %index426 ; 2 uses
  %wide.load428 = load <8 x i32>, ptr %i.bok, align 4, !tbaa !51
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %i.bok, i64 %i.azt
  %wide.load429 = load <8 x i32>, ptr %i.bol, align 4, !tbaa !51
  %i.bom = shufflevector <8 x i32> %wide.load428, <8 x i32> %wide.load429, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bon = lshr <16 x i32> %i.bom, splat (i32 16)
  %interleaved.vec430 = trunc nuw <16 x i32> %i.bon to <16 x i16>
  store <16 x i16> %interleaved.vec430, ptr %next.gep427, align 2, !tbaa !33
  %index.next431 = add nuw i64 %index426, 8       ; 2 uses
  %i.boo = icmp eq i64 %index.next431, %n.vec424
  br i1 %i.boo, label %vec.epilog.middle.block432, label %vec.epilog.vector.body425, !llvm.loop !223

vec.epilog.middle.block432:                       ; preds = %vec.epilog.vector.body425
  br i1 %cmp.n433, label %._crit_edge1984.us.i, label %vec.epilog.scalar.ph420.preheader

vec.epilog.scalar.ph420.preheader:                ; preds = %iter.check419, %vec.epilog.iter.check421, %vec.epilog.middle.block432
  %indvars.iv2396.i.ph = phi i64 [ 0, %iter.check419 ], [ %n.vec404, %vec.epilog.iter.check421 ], [ %n.vec424, %vec.epilog.middle.block432 ]
  %.71982.us.i.ph = phi ptr [ %.61987.us.i, %iter.check419 ], [ %i.bnw, %vec.epilog.iter.check421 ], [ %i.boi, %vec.epilog.middle.block432 ]
  br label %vec.epilog.scalar.ph420

vec.epilog.scalar.ph420:                          ; preds = %vec.epilog.scalar.ph420.preheader, %vec.epilog.scalar.ph420
  %indvars.iv2396.i = phi i64 [ %indvars.iv.next2397.i, %vec.epilog.scalar.ph420 ], [ %indvars.iv2396.i.ph, %vec.epilog.scalar.ph420.preheader ] ; 2 uses
  %.71982.us.i = phi ptr [ %i.boy, %vec.epilog.scalar.ph420 ], [ %.71982.us.i.ph, %vec.epilog.scalar.ph420.preheader ] ; 3 uses
  %i.bop = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %indvars.iv2396.i ; 2 uses
  %i.boq = load i32, ptr %i.bop, align 4, !tbaa !51
  %i.bor = lshr i32 %i.boq, 16
  %i.bos = trunc nuw i32 %i.bor to i16
  store i16 %i.bos, ptr %.71982.us.i, align 2, !tbaa !33
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %i.bop, i64 %i.azt
  %i.bou = getelementptr inbounds nuw i8, ptr %.71982.us.i, i64 2
  %i.bov = load i32, ptr %i.bot, align 4, !tbaa !51
  %i.bow = lshr i32 %i.bov, 16
  %i.box = trunc nuw i32 %i.bow to i16
  store i16 %i.box, ptr %i.bou, align 2, !tbaa !33
  %i.boy = getelementptr inbounds nuw i8, ptr %.71982.us.i, i64 4 ; 2 uses
  %indvars.iv.next2397.i = add nuw nsw i64 %indvars.iv2396.i, 1 ; 2 uses
  %exitcond2400.not.i = icmp eq i64 %indvars.iv.next2397.i, %wide.trip.count2379.i
  br i1 %exitcond2400.not.i, label %._crit_edge1984.us.i, label %vec.epilog.scalar.ph420, !llvm.loop !224

._crit_edge1984.us.i:                             ; preds = %vec.epilog.scalar.ph420, %vec.epilog.middle.block432, %middle.block416
  %.lcssa252 = phi ptr [ %i.boi, %vec.epilog.middle.block432 ], [ %i.bnw, %middle.block416 ], [ %i.boy, %vec.epilog.scalar.ph420 ] ; 2 uses
  %i.boz = getelementptr inbounds nuw [4 x i8], ptr %.311131986.us.i, i64 %i.azv ; 2 uses
  %i.bpa = add nuw nsw i32 %.311031988.us.i, 2    ; 3 uses
  %i.bpb = or disjoint i32 %i.bpa, 1
  %i.bpc = icmp slt i32 %i.bpb, %2
  br i1 %i.bpc, label %iter.check419, label %.preheader1559.i, !llvm.loop !225

.preheader1559.i:                                 ; preds = %._crit_edge1984.us.i, %.preheader1560.i
  %.31113.lcssa.i = phi ptr [ %.21112.lcssa.i, %.preheader1560.i ], [ %i.boz, %._crit_edge1984.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.41109.lcssa.i, %.preheader1560.i ], [ %.lcssa252, %._crit_edge1984.us.i ]
  %.31103.lcssa.i = phi i32 [ %.21102.lcssa.i, %.preheader1560.i ], [ %i.bpa, %._crit_edge1984.us.i ] ; 2 uses
  %i.bpd = icmp sge i32 %.31103.lcssa.i, %2
  %brmerge2016.i = or i1 %i.azw, %i.bpd
  br i1 %brmerge2016.i, label %._crit_edge2001.split.i, label %iter.check385

iter.check385:                                    ; preds = %.preheader1559.i, %._crit_edge1997.i
  %.411042000.i = phi i32 [ %i.bqc, %._crit_edge1997.i ], [ %.31103.lcssa.i, %.preheader1559.i ]
  %.91999.i = phi ptr [ %.lcssa255, %._crit_edge1997.i ], [ %.6.lcssa.i, %.preheader1559.i ] ; 5 uses
  br i1 %min.iters.check369, label %vec.epilog.scalar.ph386.preheader, label %vector.main.loop.iter.check370

vector.main.loop.iter.check370:                   ; preds = %iter.check385
  br i1 %min.iters.check371, label %vec.epilog.ph389, label %vector.ph372

vector.ph372:                                     ; preds = %vector.main.loop.iter.check370
  %i.bpe = getelementptr i8, ptr %.91999.i, i64 %i.bar ; 2 uses
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph372
  %index375 = phi i64 [ 0, %vector.ph372 ], [ %index.next381, %vector.body374 ] ; 3 uses
  %i.bpf = shl i64 %index375, 1
  %next.gep376 = getelementptr i8, ptr %.91999.i, i64 %i.bpf ; 4 uses
  %i.bpg = getelementptr inbounds nuw [4 x i8], ptr %.31113.lcssa.i, i64 %index375 ; 4 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 64
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpg, i64 128
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpg, i64 192
  %wide.load377 = load <16 x i32>, ptr %i.bpg, align 4, !tbaa !51
  %wide.load378 = load <16 x i32>, ptr %i.bph, align 4, !tbaa !51
  %wide.load379 = load <16 x i32>, ptr %i.bpi, align 4, !tbaa !51
  %wide.load380 = load <16 x i32>, ptr %i.bpj, align 4, !tbaa !51
  %i.bpk = lshr <16 x i32> %wide.load377, splat (i32 16)
  %i.bpl = lshr <16 x i32> %wide.load378, splat (i32 16)
  %i.bpm = lshr <16 x i32> %wide.load379, splat (i32 16)
  %i.bpn = lshr <16 x i32> %wide.load380, splat (i32 16)
  %i.bpo = trunc nuw <16 x i32> %i.bpk to <16 x i16>
  %i.bpp = trunc nuw <16 x i32> %i.bpl to <16 x i16>
  %i.bpq = trunc nuw <16 x i32> %i.bpm to <16 x i16>
  %i.bpr = trunc nuw <16 x i32> %i.bpn to <16 x i16>
  %i.bps = getelementptr i8, ptr %next.gep376, i64 32
  %i.bpt = getelementptr i8, ptr %next.gep376, i64 64
  %i.bpu = getelementptr i8, ptr %next.gep376, i64 96
  store <16 x i16> %i.bpo, ptr %next.gep376, align 2, !tbaa !33
  store <16 x i16> %i.bpp, ptr %i.bps, align 2, !tbaa !33
  store <16 x i16> %i.bpq, ptr %i.bpt, align 2, !tbaa !33
  store <16 x i16> %i.bpr, ptr %i.bpu, align 2, !tbaa !33
  %index.next381 = add nuw i64 %index375, 64      ; 2 uses
  %i.bpv = icmp eq i64 %index.next381, %n.vec373
  br i1 %i.bpv, label %middle.block382, label %vector.body374, !llvm.loop !226

middle.block382:                                  ; preds = %vector.body374
  br i1 %cmp.n383, label %._crit_edge1997.i, label %vec.epilog.iter.check387

vec.epilog.iter.check387:                         ; preds = %middle.block382
  br i1 %min.epilog.iters.check388, label %vec.epilog.scalar.ph386.preheader, label %vec.epilog.ph389, !prof !227

vec.epilog.ph389:                                 ; preds = %vector.main.loop.iter.check370, %vec.epilog.iter.check387
  %vec.epilog.resume.val384 = phi i64 [ %n.vec373, %vec.epilog.iter.check387 ], [ 0, %vector.main.loop.iter.check370 ]
  %i.bpw = getelementptr i8, ptr %.91999.i, i64 %i.bas ; 2 uses
  br label %vec.epilog.vector.body391

vec.epilog.vector.body391:                        ; preds = %vec.epilog.vector.body391, %vec.epilog.ph389
  %index392 = phi i64 [ %vec.epilog.resume.val384, %vec.epilog.ph389 ], [ %index.next395, %vec.epilog.vector.body391 ] ; 3 uses
  %i.bpx = shl i64 %index392, 1
  %next.gep393 = getelementptr i8, ptr %.91999.i, i64 %i.bpx
  %i.bpy = getelementptr inbounds nuw [4 x i8], ptr %.31113.lcssa.i, i64 %index392
  %wide.load394 = load <8 x i32>, ptr %i.bpy, align 4, !tbaa !51
  %i.bpz = lshr <8 x i32> %wide.load394, splat (i32 16)
  %i.bqa = trunc nuw <8 x i32> %i.bpz to <8 x i16>
  store <8 x i16> %i.bqa, ptr %next.gep393, align 2, !tbaa !33
  %index.next395 = add nuw i64 %index392, 8       ; 2 uses
  %i.bqb = icmp eq i64 %index.next395, %n.vec390
  br i1 %i.bqb, label %vec.epilog.middle.block396, label %vec.epilog.vector.body391, !llvm.loop !228

vec.epilog.middle.block396:                       ; preds = %vec.epilog.vector.body391
  br i1 %cmp.n397, label %._crit_edge1997.i, label %vec.epilog.scalar.ph386.preheader

vec.epilog.scalar.ph386.preheader:                ; preds = %iter.check385, %vec.epilog.iter.check387, %vec.epilog.middle.block396
  %indvars.iv2401.i.ph = phi i64 [ 0, %iter.check385 ], [ %n.vec373, %vec.epilog.iter.check387 ], [ %n.vec390, %vec.epilog.middle.block396 ]
  %.101995.i.ph = phi ptr [ %.91999.i, %iter.check385 ], [ %i.bpe, %vec.epilog.iter.check387 ], [ %i.bpw, %vec.epilog.middle.block396 ]
  br label %vec.epilog.scalar.ph386

._crit_edge1997.i:                                ; preds = %vec.epilog.scalar.ph386, %vec.epilog.middle.block396, %middle.block382
  %.lcssa255 = phi ptr [ %i.bpw, %vec.epilog.middle.block396 ], [ %i.bpe, %middle.block382 ], [ %i.bqh, %vec.epilog.scalar.ph386 ]
  %i.bqc = add nuw nsw i32 %.411042000.i, 1       ; 2 uses
  %exitcond2406.not.i = icmp eq i32 %i.bqc, %2
  br i1 %exitcond2406.not.i, label %._crit_edge2001.split.i, label %iter.check385, !llvm.loop !229

vec.epilog.scalar.ph386:                          ; preds = %vec.epilog.scalar.ph386.preheader, %vec.epilog.scalar.ph386
  %indvars.iv2401.i = phi i64 [ %indvars.iv.next2402.i, %vec.epilog.scalar.ph386 ], [ %indvars.iv2401.i.ph, %vec.epilog.scalar.ph386.preheader ] ; 2 uses
  %.101995.i = phi ptr [ %i.bqh, %vec.epilog.scalar.ph386 ], [ %.101995.i.ph, %vec.epilog.scalar.ph386.preheader ] ; 2 uses
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr %.31113.lcssa.i, i64 %indvars.iv2401.i
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !51
  %i.bqf = lshr i32 %i.bqe, 16
  %i.bqg = trunc nuw i32 %i.bqf to i16
  store i16 %i.bqg, ptr %.101995.i, align 2, !tbaa !33
  %i.bqh = getelementptr inbounds nuw i8, ptr %.101995.i, i64 2 ; 2 uses
  %indvars.iv.next2402.i = add nuw nsw i64 %indvars.iv2401.i, 1 ; 2 uses
  %exitcond2405.not.i = icmp eq i64 %indvars.iv.next2402.i, %wide.trip.count2379.i
  br i1 %exitcond2405.not.i, label %._crit_edge1997.i, label %vec.epilog.scalar.ph386, !llvm.loop !230

._crit_edge2001.split.i:                          ; preds = %._crit_edge1997.i, %.preheader1559.i, %.preheader1555.lr.ph.i, %.preheader1556.lr.ph.i
  %indvars.iv.next2408.i = add nsw i64 %indvars.iv2407.i, 1 ; 2 uses
  %indvars.iv.next2374.i = add i32 %indvars.iv2373.i, %i.ayz
  %exitcond2411.not.i = icmp eq i64 %indvars.iv.next2408.i, %wide.trip.count2410.i
  br i1 %exitcond2411.not.i, label %_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !231

_ZN4ncnnL43convolution1d_transform_kernel_packed_bf16sERKNS_3MatERS0_iii.exit: ; preds = %._crit_edge2001.split.i, %.preheader1563.i
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.exp.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.log.v2f32(<2 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.tanh.v2f32(<2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bf16,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!6, !6, i64 0}
!10 = !{!11, !6, i64 24}
!11 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!11, !6, i64 48}
!17 = !{!11, !6, i64 44}
!18 = !{!11, !12, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 float", !12, i64 0}
!21 = !{!22, !6, i64 4}
!22 = !{!"_ZTSN4ncnn6OptionE", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !6, i64 4, !15, i64 8, !15, i64 16, !6, i64 24, !23, i64 28, !23, i64 29, !23, i64 30, !23, i64 31, !23, i64 32, !23, i64 33, !23, i64 34, !23, i64 35, !23, i64 36, !23, i64 37, !23, i64 38, !23, i64 39, !6, i64 40, !23, i64 44, !23, i64 45, !23, i64 46, !23, i64 47, !7, i64 48, !23, i64 49, !23, i64 50, !23, i64 51, !23, i64 52, !23, i64 53, !23, i64 54, !23, i64 55, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59, !23, i64 60, !23, i64 61, !23, i64 62, !23, i64 63}
!23 = !{!"bool", !7, i64 0}
!24 = !{!11, !14, i64 16}
!25 = distinct !{!25, !26, !27}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = !{!7, !7, i64 0}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!31 = distinct !{!31, !"_ZNK4ncnn3Mat7channelEi"}
!32 = !{!11, !14, i64 64}
!33 = !{!34, !34, i64 0}
!34 = !{!"short", !7, i64 0}
!35 = distinct !{!35, !26}
!36 = distinct !{!36, !26}
!37 = distinct !{!37, !26}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !26}
!40 = distinct !{!40, !26}
!41 = distinct !{!41, !26}
!42 = distinct !{!42, !26}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = distinct !{!47, !26}
!48 = distinct !{!48, !26}
!49 = distinct !{!49, !26}
!50 = distinct !{!50, !26}
!51 = !{!52, !52, i64 0}
!52 = !{!"float", !7, i64 0}
!53 = distinct !{!53, !26}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!56 = distinct !{!56, !"_ZNK4ncnn3Mat7channelEi"}
!57 = distinct !{!57, !26, !27}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !"_ZNK4ncnn3Mat7channelEi"}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !26}
!65 = distinct !{!65, !26}
!66 = distinct !{!66, !26}
!67 = distinct !{!67, !26}
!68 = distinct !{!68, !26}
!69 = distinct !{!69, !26}
!70 = distinct !{!70, !26}
!71 = distinct !{!71, !26}
!72 = distinct !{!72, !26}
!73 = distinct !{!73, !26}
!74 = distinct !{!74, !26}
!75 = distinct !{!75, !26}
!76 = distinct !{!76, !26}
!77 = distinct !{!77, !26}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!80 = distinct !{!80, !"_ZNK4ncnn3Mat7channelEi"}
!81 = distinct !{!81, !26}
!82 = distinct !{!82, !26}
!83 = distinct !{!83, !26}
!84 = distinct !{!84, !26}
!85 = distinct !{!85, !26}
!86 = distinct !{!86, !26}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = distinct !{!89, !26}
!90 = distinct !{!90, !26}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !26}
!93 = distinct !{!93, !26}
!94 = distinct !{!94, !26}
!95 = distinct !{!95, !26}
!96 = distinct !{!96, !26}
!97 = distinct !{!97, !26}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !26}
!100 = distinct !{!100, !26}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.unroll.disable"}
!103 = distinct !{!103, !26}
!104 = distinct !{!104, !26}
!105 = distinct !{!105, !26}
!106 = distinct !{!106, !26}
!107 = distinct !{!107, !26}
!108 = distinct !{!108, !102}
!109 = distinct !{!109, !26}
!110 = distinct !{!110, !26}
!111 = distinct !{!111, !26}
!112 = distinct !{!112, !26}
!113 = distinct !{!113, !26}
!114 = distinct !{!114, !26}
!115 = distinct !{!115, !26}
!116 = distinct !{!116, !26}
!117 = distinct !{!117, !26}
!118 = distinct !{!118, !26}
!119 = distinct !{!119, !26}
!120 = distinct !{!120, !27}
!121 = !{!122}
end_hunk_0
