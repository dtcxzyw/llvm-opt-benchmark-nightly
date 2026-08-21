inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  br i1 %min.iters.check401, label %vec.epilog.scalar.ph421.preheader, label %vector.main.loop.iter.check402

vector.main.loop.iter.check402:                   ; preds = %iter.check420
  br i1 %min.iters.check403, label %vec.epilog.ph424, label %vector.ph404

vector.ph404:                                     ; preds = %vector.main.loop.iter.check402
  %i.bnb = getelementptr i8, ptr %.61980.us.i, i64 %i.bae ; 2 uses
  br label %vector.body406

vector.body406:                                   ; preds = %vector.body406, %vector.ph404
  %index407 = phi i64 [ 0, %vector.ph404 ], [ %index.next416, %vector.body406 ] ; 3 uses
  %i.bnc = shl i64 %index407, 2                   ; 2 uses
  %next.gep408 = getelementptr i8, ptr %.61980.us.i, i64 %i.bnc
  %i.bnd = getelementptr i8, ptr %.61980.us.i, i64 %i.bnc
  %next.gep409 = getelementptr i8, ptr %i.bnd, i64 64
  %i.bne = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %index407 ; 3 uses
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bne, i64 64
  %wide.load410 = load <16 x i32>, ptr %i.bne, align 4, !tbaa !74
  %wide.load411 = load <16 x i32>, ptr %i.bnf, align 4, !tbaa !74
  %i.bng = getelementptr inbounds nuw [4 x i8], ptr %i.bne, i64 %i.azj ; 2 uses
  %i.bnh = getelementptr inbounds nuw i8, ptr %i.bng, i64 64
  %wide.load412 = load <16 x i32>, ptr %i.bng, align 4, !tbaa !74
  %wide.load413 = load <16 x i32>, ptr %i.bnh, align 4, !tbaa !74
  %i.bni = shufflevector <16 x i32> %wide.load410, <16 x i32> %wide.load412, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bnj = lshr <32 x i32> %i.bni, splat (i32 16)
  %interleaved.vec414 = trunc nuw <32 x i32> %i.bnj to <32 x i16>
  store <32 x i16> %interleaved.vec414, ptr %next.gep408, align 2, !tbaa !76
  %i.bnk = shufflevector <16 x i32> %wide.load411, <16 x i32> %wide.load413, <32 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.bnl = lshr <32 x i32> %i.bnk, splat (i32 16)
  %interleaved.vec415 = trunc nuw <32 x i32> %i.bnl to <32 x i16>
  store <32 x i16> %interleaved.vec415, ptr %next.gep409, align 2, !tbaa !76
  %index.next416 = add nuw i64 %index407, 32      ; 2 uses
  %i.bnm = icmp eq i64 %index.next416, %n.vec405
  br i1 %i.bnm, label %middle.block417, label %vector.body406, !llvm.loop !102

middle.block417:                                  ; preds = %vector.body406
  br i1 %cmp.n418, label %._crit_edge1977.us.i, label %vec.epilog.iter.check422

vec.epilog.iter.check422:                         ; preds = %middle.block417
  br i1 %min.epilog.iters.check423, label %vec.epilog.scalar.ph421.preheader, label %vec.epilog.ph424, !prof !103

vec.epilog.ph424:                                 ; preds = %vector.main.loop.iter.check402, %vec.epilog.iter.check422
  %vec.epilog.resume.val419 = phi i64 [ %n.vec405, %vec.epilog.iter.check422 ], [ 0, %vector.main.loop.iter.check402 ]
  %i.bnn = getelementptr i8, ptr %.61980.us.i, i64 %i.baf ; 2 uses
  br label %vec.epilog.vector.body426

vec.epilog.vector.body426:                        ; preds = %vec.epilog.vector.body426, %vec.epilog.ph424
  %index427 = phi i64 [ %vec.epilog.resume.val419, %vec.epilog.ph424 ], [ %index.next432, %vec.epilog.vector.body426 ] ; 3 uses
  %i.bno = shl i64 %index427, 2
  %next.gep428 = getelementptr i8, ptr %.61980.us.i, i64 %i.bno
  %i.bnp = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %index427 ; 2 uses
  %wide.load429 = load <8 x i32>, ptr %i.bnp, align 4, !tbaa !74
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %i.bnp, i64 %i.azj
  %wide.load430 = load <8 x i32>, ptr %i.bnq, align 4, !tbaa !74
  %i.bnr = shufflevector <8 x i32> %wide.load429, <8 x i32> %wide.load430, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bns = lshr <16 x i32> %i.bnr, splat (i32 16)
  %interleaved.vec431 = trunc nuw <16 x i32> %i.bns to <16 x i16>
  store <16 x i16> %interleaved.vec431, ptr %next.gep428, align 2, !tbaa !76
  %index.next432 = add nuw i64 %index427, 8       ; 2 uses
  %i.bnt = icmp eq i64 %index.next432, %n.vec425
  br i1 %i.bnt, label %vec.epilog.middle.block433, label %vec.epilog.vector.body426, !llvm.loop !104

vec.epilog.middle.block433:                       ; preds = %vec.epilog.vector.body426
  br i1 %cmp.n434, label %._crit_edge1977.us.i, label %vec.epilog.scalar.ph421.preheader

vec.epilog.scalar.ph421.preheader:                ; preds = %iter.check420, %vec.epilog.iter.check422, %vec.epilog.middle.block433
  %indvars.iv2389.i.ph = phi i64 [ 0, %iter.check420 ], [ %n.vec405, %vec.epilog.iter.check422 ], [ %n.vec425, %vec.epilog.middle.block433 ]
  %.71975.us.i.ph = phi ptr [ %.61980.us.i, %iter.check420 ], [ %i.bnb, %vec.epilog.iter.check422 ], [ %i.bnn, %vec.epilog.middle.block433 ]
  br label %vec.epilog.scalar.ph421

vec.epilog.scalar.ph421:                          ; preds = %vec.epilog.scalar.ph421.preheader, %vec.epilog.scalar.ph421
  %indvars.iv2389.i = phi i64 [ %indvars.iv.next2390.i, %vec.epilog.scalar.ph421 ], [ %indvars.iv2389.i.ph, %vec.epilog.scalar.ph421.preheader ] ; 2 uses
  %.71975.us.i = phi ptr [ %i.bod, %vec.epilog.scalar.ph421 ], [ %.71975.us.i.ph, %vec.epilog.scalar.ph421.preheader ] ; 3 uses
  %i.bnu = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %indvars.iv2389.i ; 2 uses
  %i.bnv = load i32, ptr %i.bnu, align 4, !tbaa !74
  %i.bnw = lshr i32 %i.bnv, 16
  %i.bnx = trunc nuw i32 %i.bnw to i16
  store i16 %i.bnx, ptr %.71975.us.i, align 2, !tbaa !76
  %i.bny = getelementptr inbounds nuw [4 x i8], ptr %i.bnu, i64 %i.azj
  %i.bnz = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 2
  %i.boa = load i32, ptr %i.bny, align 4, !tbaa !74
  %i.bob = lshr i32 %i.boa, 16
  %i.boc = trunc nuw i32 %i.bob to i16
  store i16 %i.boc, ptr %i.bnz, align 2, !tbaa !76
  %i.bod = getelementptr inbounds nuw i8, ptr %.71975.us.i, i64 4 ; 2 uses
  %indvars.iv.next2390.i = add nuw nsw i64 %indvars.iv2389.i, 1 ; 2 uses
  %exitcond2393.not.i = icmp eq i64 %indvars.iv.next2390.i, %wide.trip.count2372.i
  br i1 %exitcond2393.not.i, label %._crit_edge1977.us.i, label %vec.epilog.scalar.ph421, !llvm.loop !105

._crit_edge1977.us.i:                             ; preds = %vec.epilog.scalar.ph421, %vec.epilog.middle.block433, %middle.block417
  %.lcssa253 = phi ptr [ %i.bnn, %vec.epilog.middle.block433 ], [ %i.bnb, %middle.block417 ], [ %i.bod, %vec.epilog.scalar.ph421 ] ; 2 uses
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %.311141979.us.i, i64 %i.azl ; 2 uses
  %i.bof = add nuw nsw i32 %.311041981.us.i, 2    ; 3 uses
  %i.bog = or disjoint i32 %i.bof, 1
  %i.boh = icmp slt i32 %i.bog, %2
  br i1 %i.boh, label %iter.check420, label %.preheader1552.i, !llvm.loop !106

.preheader1552.i:                                 ; preds = %._crit_edge1977.us.i, %.preheader1553.i
  %.31114.lcssa.i = phi ptr [ %.21113.lcssa.i, %.preheader1553.i ], [ %i.boe, %._crit_edge1977.us.i ] ; 3 uses
  %.6.lcssa.i = phi ptr [ %.41110.lcssa.i, %.preheader1553.i ], [ %.lcssa253, %._crit_edge1977.us.i ]
  %.31104.lcssa.i = phi i32 [ %.21103.lcssa.i, %.preheader1553.i ], [ %i.bof, %._crit_edge1977.us.i ] ; 2 uses
  %i.boi = icmp sge i32 %.31104.lcssa.i, %2
  %brmerge2009.i = or i1 %i.azm, %i.boi
  br i1 %brmerge2009.i, label %._crit_edge1994.split.i, label %iter.check386

iter.check386:                                    ; preds = %.preheader1552.i, %._crit_edge1990.i
  %.411051993.i = phi i32 [ %i.bph, %._crit_edge1990.i ], [ %.31104.lcssa.i, %.preheader1552.i ]
  %.91992.i = phi ptr [ %.lcssa256, %._crit_edge1990.i ], [ %.6.lcssa.i, %.preheader1552.i ] ; 5 uses
  br i1 %min.iters.check370, label %vec.epilog.scalar.ph387.preheader, label %vector.main.loop.iter.check371

vector.main.loop.iter.check371:                   ; preds = %iter.check386
  br i1 %min.iters.check372, label %vec.epilog.ph390, label %vector.ph373

vector.ph373:                                     ; preds = %vector.main.loop.iter.check371
  %i.boj = getelementptr i8, ptr %.91992.i, i64 %i.bah ; 2 uses
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph373
  %index376 = phi i64 [ 0, %vector.ph373 ], [ %index.next382, %vector.body375 ] ; 3 uses
  %i.bok = shl i64 %index376, 1
  %next.gep377 = getelementptr i8, ptr %.91992.i, i64 %i.bok ; 4 uses
  %i.bol = getelementptr inbounds nuw [4 x i8], ptr %.31114.lcssa.i, i64 %index376 ; 4 uses
  %i.bom = getelementptr inbounds nuw i8, ptr %i.bol, i64 64
  %i.bon = getelementptr inbounds nuw i8, ptr %i.bol, i64 128
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bol, i64 192
  %wide.load378 = load <16 x i32>, ptr %i.bol, align 4, !tbaa !74
  %wide.load379 = load <16 x i32>, ptr %i.bom, align 4, !tbaa !74
  %wide.load380 = load <16 x i32>, ptr %i.bon, align 4, !tbaa !74
  %wide.load381 = load <16 x i32>, ptr %i.boo, align 4, !tbaa !74
  %i.bop = lshr <16 x i32> %wide.load378, splat (i32 16)
  %i.boq = lshr <16 x i32> %wide.load379, splat (i32 16)
  %i.bor = lshr <16 x i32> %wide.load380, splat (i32 16)
  %i.bos = lshr <16 x i32> %wide.load381, splat (i32 16)
  %i.bot = trunc nuw <16 x i32> %i.bop to <16 x i16>
  %i.bou = trunc nuw <16 x i32> %i.boq to <16 x i16>
  %i.bov = trunc nuw <16 x i32> %i.bor to <16 x i16>
  %i.bow = trunc nuw <16 x i32> %i.bos to <16 x i16>
  %i.box = getelementptr i8, ptr %next.gep377, i64 32
  %i.boy = getelementptr i8, ptr %next.gep377, i64 64
  %i.boz = getelementptr i8, ptr %next.gep377, i64 96
  store <16 x i16> %i.bot, ptr %next.gep377, align 2, !tbaa !76
  store <16 x i16> %i.bou, ptr %i.box, align 2, !tbaa !76
  store <16 x i16> %i.bov, ptr %i.boy, align 2, !tbaa !76
  store <16 x i16> %i.bow, ptr %i.boz, align 2, !tbaa !76
  %index.next382 = add nuw i64 %index376, 64      ; 2 uses
  %i.bpa = icmp eq i64 %index.next382, %n.vec374
  br i1 %i.bpa, label %middle.block383, label %vector.body375, !llvm.loop !107

middle.block383:                                  ; preds = %vector.body375
  br i1 %cmp.n384, label %._crit_edge1990.i, label %vec.epilog.iter.check388

vec.epilog.iter.check388:                         ; preds = %middle.block383
  br i1 %min.epilog.iters.check389, label %vec.epilog.scalar.ph387.preheader, label %vec.epilog.ph390, !prof !108

vec.epilog.ph390:                                 ; preds = %vector.main.loop.iter.check371, %vec.epilog.iter.check388
  %vec.epilog.resume.val385 = phi i64 [ %n.vec374, %vec.epilog.iter.check388 ], [ 0, %vector.main.loop.iter.check371 ]
  %i.bpb = getelementptr i8, ptr %.91992.i, i64 %i.bai ; 2 uses
  br label %vec.epilog.vector.body392

vec.epilog.vector.body392:                        ; preds = %vec.epilog.vector.body392, %vec.epilog.ph390
  %index393 = phi i64 [ %vec.epilog.resume.val385, %vec.epilog.ph390 ], [ %index.next396, %vec.epilog.vector.body392 ] ; 3 uses
  %i.bpc = shl i64 %index393, 1
  %next.gep394 = getelementptr i8, ptr %.91992.i, i64 %i.bpc
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %.31114.lcssa.i, i64 %index393
  %wide.load395 = load <8 x i32>, ptr %i.bpd, align 4, !tbaa !74
  %i.bpe = lshr <8 x i32> %wide.load395, splat (i32 16)
  %i.bpf = trunc nuw <8 x i32> %i.bpe to <8 x i16>
  store <8 x i16> %i.bpf, ptr %next.gep394, align 2, !tbaa !76
  %index.next396 = add nuw i64 %index393, 8       ; 2 uses
  %i.bpg = icmp eq i64 %index.next396, %n.vec391
  br i1 %i.bpg, label %vec.epilog.middle.block397, label %vec.epilog.vector.body392, !llvm.loop !109

vec.epilog.middle.block397:                       ; preds = %vec.epilog.vector.body392
  br i1 %cmp.n398, label %._crit_edge1990.i, label %vec.epilog.scalar.ph387.preheader

vec.epilog.scalar.ph387.preheader:                ; preds = %iter.check386, %vec.epilog.iter.check388, %vec.epilog.middle.block397
  %indvars.iv2394.i.ph = phi i64 [ 0, %iter.check386 ], [ %n.vec374, %vec.epilog.iter.check388 ], [ %n.vec391, %vec.epilog.middle.block397 ]
  %.101988.i.ph = phi ptr [ %.91992.i, %iter.check386 ], [ %i.boj, %vec.epilog.iter.check388 ], [ %i.bpb, %vec.epilog.middle.block397 ]
  br label %vec.epilog.scalar.ph387

._crit_edge1990.i:                                ; preds = %vec.epilog.scalar.ph387, %vec.epilog.middle.block397, %middle.block383
  %.lcssa256 = phi ptr [ %i.bpb, %vec.epilog.middle.block397 ], [ %i.boj, %middle.block383 ], [ %i.bpm, %vec.epilog.scalar.ph387 ]
  %i.bph = add nuw nsw i32 %.411051993.i, 1       ; 2 uses
  %exitcond2399.not.i = icmp eq i32 %i.bph, %2
  br i1 %exitcond2399.not.i, label %._crit_edge1994.split.i, label %iter.check386, !llvm.loop !110

vec.epilog.scalar.ph387:                          ; preds = %vec.epilog.scalar.ph387.preheader, %vec.epilog.scalar.ph387
  %indvars.iv2394.i = phi i64 [ %indvars.iv.next2395.i, %vec.epilog.scalar.ph387 ], [ %indvars.iv2394.i.ph, %vec.epilog.scalar.ph387.preheader ] ; 2 uses
  %.101988.i = phi ptr [ %i.bpm, %vec.epilog.scalar.ph387 ], [ %.101988.i.ph, %vec.epilog.scalar.ph387.preheader ] ; 2 uses
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %.31114.lcssa.i, i64 %indvars.iv2394.i
  %i.bpj = load i32, ptr %i.bpi, align 4, !tbaa !74
  %i.bpk = lshr i32 %i.bpj, 16
  %i.bpl = trunc nuw i32 %i.bpk to i16
  store i16 %i.bpl, ptr %.101988.i, align 2, !tbaa !76
  %i.bpm = getelementptr inbounds nuw i8, ptr %.101988.i, i64 2 ; 2 uses
  %indvars.iv.next2395.i = add nuw nsw i64 %indvars.iv2394.i, 1 ; 2 uses
  %exitcond2398.not.i = icmp eq i64 %indvars.iv.next2395.i, %wide.trip.count2372.i
  br i1 %exitcond2398.not.i, label %._crit_edge1990.i, label %vec.epilog.scalar.ph387, !llvm.loop !111

._crit_edge1994.split.i:                          ; preds = %._crit_edge1990.i, %.preheader1552.i, %.preheader1548.lr.ph.i, %.preheader1549.lr.ph.i
  %indvars.iv.next2401.i = add nsw i64 %indvars.iv2400.i, 1 ; 2 uses
  %indvars.iv.next2367.i = add i32 %indvars.iv2366.i, %i.ayp
  %exitcond2404.not.i = icmp eq i64 %indvars.iv.next2401.i, %wide.trip.count2403.i
  br i1 %exitcond2404.not.i, label %_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit, label %_ZN4ncnn3MatD2Ev.exit.i, !llvm.loop !112

_ZN4ncnnL41convolution_transform_kernel_packed_bf16sERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge1994.split.i, %.preheader1556.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <16 x float> @llvm.x86.avx512.mask.gather.dps.512(<16 x float>, ptr, <16 x i32>, <16 x i1>, i32 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.x86.avx2.gather.d.ps.256(<8 x float>, ptr, <8 x i32>, <8 x float>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x float> @llvm.x86.avx2.gather.d.ps(<4 x float>, ptr, <4 x i32>, <4 x float>, i8 immarg) #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float>) #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn35convolution_packed_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) local_unnamed_addr #8 {
bb.a:
  tail call fastcc void @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(64) %12)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %12) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 20 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 20 uses
  %i.g = alloca ptr, align 8                      ; 24 uses
  %i.h = alloca ptr, align 8                      ; 8 uses
  %i.i = alloca i32, align 4                      ; 8 uses
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %8, ptr %i.a, align 4, !tbaa !113
  store i32 %9, ptr %i.b, align 4, !tbaa !113
  store i32 %10, ptr %i.c, align 4, !tbaa !113
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 21 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !114
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !115  ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !116
  %i.q = mul i32 %i.p, %i.n                       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 21 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !18
  %i.t = sext i32 %i.n to i64
  %i.u = mul i64 %i.s, %i.t
  store i64 %i.u, ptr %i.d, align 8, !tbaa !117
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !114  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !118  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !116
  %i.ad = mul nsw i32 %i.ac, %i.aa                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !18
  %i.ag = sext i32 %i.aa to i64
  %i.ah = mul i64 %i.af, %i.ag
  store i64 %i.ah, ptr %i.e, align 8, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.ai = mul nsw i32 %5, %4                      ; 4 uses
  store i32 %i.ai, ptr %i.f, align 4, !tbaa !113
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = icmp slt i32 %i.ai, 0
  br i1 %i.ak, label %.noexc2592, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc2592:                                       ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc2593

.noexc2593:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = shl nuw nsw i64 %i.aj, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #28 ; 5 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.aj ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !113
  %i.ao = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc2593
  %i.aq = getelementptr i8, ptr %i.am, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.aq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !113
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc2593, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.an, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.an, %.noexc2593 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.03778.0 = phi ptr [ %i.am, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.am, %.noexc2593 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store ptr %.sroa.03778.0, ptr %i.g, align 8, !tbaa !119
  %i.ar = mul nsw i32 %i.l, %7
  %i.as = mul nsw i32 %6, %4
  %i.at = sub i32 %i.ar, %i.as
  %i.au = icmp sgt i32 %5, 0
  %i.av = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.au, %i.av
  br i1 %or.cond, label %.preheader4400.preheader, label %._crit_edge4410.split

.preheader4400.preheader:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.aw = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  %min.iters.check6230 = icmp ult i32 %4, 64
  %i.ax = and i64 %i.aw, 56
  %n.vec = and i64 %i.aw, 2147483584              ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ay = trunc nuw nsw i64 %n.vec to i32
  %i.az = mul i32 %6, %i.ay
  %i.ba = shl <16 x i32> %broadcast.splat, splat (i32 4) ; 5 uses
  %broadcast.splatinsert6231 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat6232 = shufflevector <16 x i32> %broadcast.splatinsert6231, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bb = mul nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.op = add <16 x i32> %i.ba, %i.ba     ; 2 uses
  %invariant.op6864 = add <16 x i32> %invariant.op, %i.ba ; 2 uses
  %invariant.op6866 = add <16 x i32> %invariant.op6864, %i.ba
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  %n.vec6236 = and i64 %i.aw, 2147483640          ; 4 uses
  %i.bc = trunc nuw nsw i64 %n.vec6236 to i32
  %i.bd = mul i32 %6, %i.bc
  %broadcast.splatinsert6237 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat6238 = shufflevector <8 x i32> %broadcast.splatinsert6237, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert6241 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat6242 = shufflevector <8 x i32> %broadcast.splatinsert6241, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.be = mul nsw <8 x i32> %broadcast.splat6242, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = shl nsw i32 %6, 3
  %broadcast.splatinsert6244 = insertelement <8 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat6245 = shufflevector <8 x i32> %broadcast.splatinsert6244, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n6250 = icmp eq i64 %n.vec6236, %i.aw
  br label %iter.check

iter.check:                                       ; preds = %.preheader4400.preheader, %._crit_edge
  %.016314409 = phi i32 [ %i.cl, %._crit_edge ], [ 0, %.preheader4400.preheader ]
  %.016324408 = phi i32 [ %i.ck, %._crit_edge ], [ 0, %.preheader4400.preheader ] ; 5 uses
  %.016344407 = phi i32 [ %i.bh, %._crit_edge ], [ 0, %.preheader4400.preheader ] ; 2 uses
  %i.bg = sext i32 %.016344407 to i64             ; 5 uses
  %i.bh = add i32 %4, %.016344407                 ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check6230, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bi = add nsw i64 %n.vec, %i.bg
  %i.bj = add i32 %.016324408, %i.az              ; 3 uses
  %broadcast.splatinsert6233 = insertelement <16 x i32> poison, i32 %.016324408, i64 0
  %broadcast.splat6234 = shufflevector <16 x i32> %broadcast.splatinsert6233, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat6234, %i.bb
  %invariant.gep6865 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@_ZN4ncnnL46convolution_im2col_gemm_transform_kernel_bf16sERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.xb = mul nsw i64 %i.xa, %i.aa
  %gep257.i = getelementptr [4 x i8], ptr %invariant.gep256.i, i64 %i.xb ; 6 uses
  br i1 %i.wo, label %iter.check274, label %.preheader.i

iter.check274:                                    ; preds = %bb.f
  br i1 %min.iters.check258, label %.lr.ph242.i.preheader, label %vector.main.loop.iter.check259

vector.main.loop.iter.check259:                   ; preds = %iter.check274
  br i1 %min.iters.check260, label %vec.epilog.ph278, label %vector.ph261

vector.ph261:                                     ; preds = %vector.main.loop.iter.check259
  %i.xc = getelementptr i8, ptr %gep257.i, i64 %i.wu ; 2 uses
  %i.xd = getelementptr i8, ptr %.12252.i, i64 %i.wv ; 2 uses
  br label %vector.body263

vector.body263:                                   ; preds = %vector.body263, %vector.ph261
  %index264 = phi i64 [ 0, %vector.ph261 ], [ %index.next268, %vector.body263 ] ; 3 uses
  %i.xe = shl i64 %index264, 3
  %next.gep265 = getelementptr i8, ptr %gep257.i, i64 %i.xe
  %i.xf = shl i64 %index264, 2
  %next.gep266 = getelementptr i8, ptr %.12252.i, i64 %i.xf
  %wide.vec = load <32 x i32>, ptr %next.gep265, align 4, !tbaa !74
  %i.xg = lshr <32 x i32> %wide.vec, splat (i32 16)
  %interleaved.vec = trunc nuw <32 x i32> %i.xg to <32 x i16>
  store <32 x i16> %interleaved.vec, ptr %next.gep266, align 2, !tbaa !76
  %index.next268 = add nuw i64 %index264, 16      ; 2 uses
  %i.xh = icmp eq i64 %index.next268, %n.vec262
  br i1 %i.xh, label %middle.block269, label %vector.body263, !llvm.loop !389

middle.block269:                                  ; preds = %vector.body263
  br i1 %cmp.n270, label %.preheader.i, label %vec.epilog.iter.check276

vec.epilog.iter.check276:                         ; preds = %middle.block269
  br i1 %min.epilog.iters.check277, label %.lr.ph242.i.preheader, label %vec.epilog.ph278, !prof !81

vec.epilog.ph278:                                 ; preds = %vector.main.loop.iter.check259, %vec.epilog.iter.check276
  %vec.epilog.resume.val271 = phi i64 [ %n.vec262, %vec.epilog.iter.check276 ], [ 0, %vector.main.loop.iter.check259 ]
  %i.xi = getelementptr i8, ptr %gep257.i, i64 %i.wy ; 2 uses
  %i.xj = getelementptr i8, ptr %.12252.i, i64 %i.wz ; 2 uses
  br label %vec.epilog.vector.body280

vec.epilog.vector.body280:                        ; preds = %vec.epilog.vector.body280, %vec.epilog.ph278
  %index281 = phi i64 [ %vec.epilog.resume.val271, %vec.epilog.ph278 ], [ %index.next288, %vec.epilog.vector.body280 ] ; 3 uses
  %i.xk = shl i64 %index281, 3
  %next.gep282 = getelementptr i8, ptr %gep257.i, i64 %i.xk
  %i.xl = shl i64 %index281, 2
  %next.gep283 = getelementptr i8, ptr %.12252.i, i64 %i.xl
  %wide.vec284 = load <8 x i32>, ptr %next.gep282, align 4, !tbaa !74
  %i.xm = lshr <8 x i32> %wide.vec284, splat (i32 16)
  %interleaved.vec287 = trunc nuw <8 x i32> %i.xm to <8 x i16>
  store <8 x i16> %interleaved.vec287, ptr %next.gep283, align 2, !tbaa !76
  %index.next288 = add nuw i64 %index281, 4       ; 2 uses
  %i.xn = icmp eq i64 %index.next288, %n.vec279
  br i1 %i.xn, label %vec.epilog.middle.block289, label %vec.epilog.vector.body280, !llvm.loop !390

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body280
  br i1 %cmp.n290, label %.preheader.i, label %.lr.ph242.i.preheader

.lr.ph242.i.preheader:                            ; preds = %iter.check274, %vec.epilog.iter.check276, %vec.epilog.middle.block289
  %.0240.i.ph = phi i32 [ 0, %iter.check274 ], [ %i.wt, %vec.epilog.iter.check276 ], [ %i.wx, %vec.epilog.middle.block289 ]
  %.0459239.i.ph = phi ptr [ %gep257.i, %iter.check274 ], [ %i.xc, %vec.epilog.iter.check276 ], [ %i.xi, %vec.epilog.middle.block289 ]
  %.13238.i.ph = phi ptr [ %.12252.i, %iter.check274 ], [ %i.xd, %vec.epilog.iter.check276 ], [ %i.xj, %vec.epilog.middle.block289 ]
  br label %.lr.ph242.i

.preheader.i:                                     ; preds = %.lr.ph242.i, %middle.block269, %vec.epilog.middle.block289, %bb.f
  %.13.lcssa.i = phi ptr [ %.12252.i, %bb.f ], [ %i.xj, %vec.epilog.middle.block289 ], [ %i.xd, %middle.block269 ], [ %i.zf, %.lr.ph242.i ] ; 6 uses
  %.0459.lcssa.i = phi ptr [ %gep257.i, %bb.f ], [ %i.xi, %vec.epilog.middle.block289 ], [ %i.xc, %middle.block269 ], [ %i.zg, %.lr.ph242.i ] ; 5 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.wp, %vec.epilog.middle.block289 ], [ %i.wp, %middle.block269 ], [ %i.wp, %.lr.ph242.i ] ; 5 uses
  %i.xo = icmp slt i32 %.0.lcssa.i, %.sroa.speculated
  br i1 %i.xo, label %iter.check, label %._crit_edge250.i

iter.check:                                       ; preds = %.preheader.i
  %i.xp = xor i32 %.0.lcssa.i, -1
  %i.xq = add i32 %.sroa.speculated, %i.xp        ; 3 uses
  %i.xr = zext i32 %i.xq to i64
  %i.xs = add nuw nsw i64 %i.xr, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.xq, 7
  br i1 %min.iters.check, label %.lr.ph249.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check241 = icmp ult i32 %i.xq, 63
  br i1 %min.iters.check241, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xt = and i64 %i.xs, 56
  %n.vec = and i64 %i.xs, 8589934528              ; 6 uses
  %i.xu = trunc i64 %n.vec to i32
  %i.xv = add i32 %.0.lcssa.i, %i.xu
  %i.xw = shl nuw nsw i64 %n.vec, 2
  %i.xx = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.xw
  %i.xy = shl nuw nsw i64 %n.vec, 1
  %i.xz = getelementptr i8, ptr %.13.lcssa.i, i64 %i.xy ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ya = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.ya ; 4 uses
  %i.yb = shl i64 %index, 1
  %next.gep242 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.yb ; 4 uses
  %i.yc = getelementptr i8, ptr %next.gep, i64 64
  %i.yd = getelementptr i8, ptr %next.gep, i64 128
  %i.ye = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <16 x i32>, ptr %next.gep, align 4, !tbaa !74
  %wide.load243 = load <16 x i32>, ptr %i.yc, align 4, !tbaa !74
  %wide.load244 = load <16 x i32>, ptr %i.yd, align 4, !tbaa !74
  %wide.load245 = load <16 x i32>, ptr %i.ye, align 4, !tbaa !74
  %i.yf = lshr <16 x i32> %wide.load, splat (i32 16)
  %i.yg = lshr <16 x i32> %wide.load243, splat (i32 16)
  %i.yh = lshr <16 x i32> %wide.load244, splat (i32 16)
  %i.yi = lshr <16 x i32> %wide.load245, splat (i32 16)
  %i.yj = trunc nuw <16 x i32> %i.yf to <16 x i16>
  %i.yk = trunc nuw <16 x i32> %i.yg to <16 x i16>
  %i.yl = trunc nuw <16 x i32> %i.yh to <16 x i16>
  %i.ym = trunc nuw <16 x i32> %i.yi to <16 x i16>
  %i.yn = getelementptr i8, ptr %next.gep242, i64 32
  %i.yo = getelementptr i8, ptr %next.gep242, i64 64
  %i.yp = getelementptr i8, ptr %next.gep242, i64 96
  store <16 x i16> %i.yj, ptr %next.gep242, align 2, !tbaa !76
  store <16 x i16> %i.yk, ptr %i.yn, align 2, !tbaa !76
  store <16 x i16> %i.yl, ptr %i.yo, align 2, !tbaa !76
  store <16 x i16> %i.ym, ptr %i.yp, align 2, !tbaa !76
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.yq = icmp eq i64 %index.next, %n.vec
  br i1 %i.yq, label %middle.block, label %vector.body, !llvm.loop !391

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.xs, %n.vec
  br i1 %cmp.n, label %._crit_edge250.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.xt, 0
  br i1 %min.epilog.iters.check, label %.lr.ph249.i.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec248 = and i64 %i.xs, 8589934584           ; 5 uses
  %i.yr = trunc i64 %n.vec248 to i32
  %i.ys = add i32 %.0.lcssa.i, %i.yr
  %i.yt = shl nuw nsw i64 %n.vec248, 2
  %i.yu = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.yt
  %i.yv = shl nuw nsw i64 %n.vec248, 1
  %i.yw = getelementptr i8, ptr %.13.lcssa.i, i64 %i.yv ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index249 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 3 uses
  %i.yx = shl i64 %index249, 2
  %next.gep250 = getelementptr i8, ptr %.0459.lcssa.i, i64 %i.yx
  %i.yy = shl i64 %index249, 1
  %next.gep251 = getelementptr i8, ptr %.13.lcssa.i, i64 %i.yy
  %wide.load252 = load <8 x i32>, ptr %next.gep250, align 4, !tbaa !74
  %i.yz = lshr <8 x i32> %wide.load252, splat (i32 16)
  %i.za = trunc nuw <8 x i32> %i.yz to <8 x i16>
  store <8 x i16> %i.za, ptr %next.gep251, align 2, !tbaa !76
  %index.next253 = add nuw i64 %index249, 8       ; 2 uses
  %i.zb = icmp eq i64 %index.next253, %n.vec248
  br i1 %i.zb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n254 = icmp eq i64 %i.xs, %n.vec248
  br i1 %cmp.n254, label %._crit_edge250.i, label %.lr.ph249.i.preheader

.lr.ph249.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1248.i.ph = phi i32 [ %.0.lcssa.i, %iter.check ], [ %i.xv, %vec.epilog.iter.check ], [ %i.ys, %vec.epilog.middle.block ]
  %.1460247.i.ph = phi ptr [ %.0459.lcssa.i, %iter.check ], [ %i.xx, %vec.epilog.iter.check ], [ %i.yu, %vec.epilog.middle.block ]
  %.14246.i.ph = phi ptr [ %.13.lcssa.i, %iter.check ], [ %i.xz, %vec.epilog.iter.check ], [ %i.yw, %vec.epilog.middle.block ]
  br label %.lr.ph249.i

.lr.ph242.i:                                      ; preds = %.lr.ph242.i.preheader, %.lr.ph242.i
  %.0240.i = phi i32 [ %i.zh, %.lr.ph242.i ], [ %.0240.i.ph, %.lr.ph242.i.preheader ]
  %.0459239.i = phi ptr [ %i.zg, %.lr.ph242.i ], [ %.0459239.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %.13238.i = phi ptr [ %i.zf, %.lr.ph242.i ], [ %.13238.i.ph, %.lr.ph242.i.preheader ] ; 2 uses
  %i.zc = load <2 x i32>, ptr %.0459239.i, align 4, !tbaa !74
  %i.zd = lshr <2 x i32> %i.zc, splat (i32 16)
  %i.ze = trunc nuw <2 x i32> %i.zd to <2 x i16>
  store <2 x i16> %i.ze, ptr %.13238.i, align 2, !tbaa !76
  %i.zf = getelementptr inbounds nuw i8, ptr %.13238.i, i64 4 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %.0459239.i, i64 8 ; 2 uses
  %i.zh = add nuw nsw i32 %.0240.i, 2             ; 2 uses
  %i.zi = or disjoint i32 %i.zh, 1
  %i.zj = icmp slt i32 %i.zi, %.sroa.speculated
  br i1 %i.zj, label %.lr.ph242.i, label %.preheader.i, !llvm.loop !393

.lr.ph249.i:                                      ; preds = %.lr.ph249.i.preheader, %.lr.ph249.i
  %.1248.i = phi i32 [ %i.zp, %.lr.ph249.i ], [ %.1248.i.ph, %.lr.ph249.i.preheader ]
  %.1460247.i = phi ptr [ %i.zo, %.lr.ph249.i ], [ %.1460247.i.ph, %.lr.ph249.i.preheader ] ; 2 uses
  %.14246.i = phi ptr [ %i.zn, %.lr.ph249.i ], [ %.14246.i.ph, %.lr.ph249.i.preheader ] ; 2 uses
  %i.zk = load i32, ptr %.1460247.i, align 4, !tbaa !74
  %i.zl = lshr i32 %i.zk, 16
  %i.zm = trunc nuw i32 %i.zl to i16
  store i16 %i.zm, ptr %.14246.i, align 2, !tbaa !76
  %i.zn = getelementptr inbounds nuw i8, ptr %.14246.i, i64 2 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.1460247.i, i64 4
  %i.zp = add nuw nsw i32 %.1248.i, 1             ; 2 uses
  %exitcond328.not.i = icmp eq i32 %i.zp, %.sroa.speculated
  br i1 %exitcond328.not.i, label %._crit_edge250.i, label %.lr.ph249.i, !llvm.loop !394

._crit_edge250.i:                                 ; preds = %.lr.ph249.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.14.lcssa.i = phi ptr [ %.13.lcssa.i, %.preheader.i ], [ %i.yw, %vec.epilog.middle.block ], [ %i.xz, %middle.block ], [ %i.zn, %.lr.ph249.i ]
  %indvars.iv.next330.i = add nsw i64 %indvars.iv329.i, 1 ; 2 uses
  %exitcond332.not.i = icmp eq i64 %indvars.iv.next330.i, %i.ap
  br i1 %exitcond332.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %bb.f, !llvm.loop !395

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge250.i, %.preheader3.i
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.ab ; 2 uses
  %i.zq = icmp slt i64 %indvars.iv.next, %i.ac
  %indvar.next = add i32 %indvar, 1
  br i1 %i.zq, label %.noexc, label %._crit_edge, !llvm.loop !396

._crit_edge109.split:                             ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge109.split, %bb.a
  ret void
}

declare noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv() local_unnamed_addr #2

declare noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv() local_unnamed_addr #2

declare noundef i32 @_ZN4ncnn22get_physical_cpu_countEv() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn40convolution_im2col_gemm_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %13) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 7 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 6 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.p = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.ncnn::Mat", align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.q = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 2 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !113
  store i32 %5, ptr %i.b, align 4, !tbaa !113
  store i32 %6, ptr %i.c, align 4, !tbaa !113
  store i32 %7, ptr %i.d, align 4, !tbaa !113
  store i32 %8, ptr %i.e, align 4, !tbaa !113
  store i32 %9, ptr %i.f, align 4, !tbaa !113
  store i32 %10, ptr %i.g, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load i32, ptr %i.r, align 8, !tbaa !116
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load i32, ptr %i.t, align 8, !tbaa !115
  %i.v = mul nsw i32 %i.u, %i.s                   ; 3 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.x = load i32, ptr %i.w, align 4, !tbaa !114
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !118
  %i.aa = mul nsw i32 %i.z, %i.x                  ; 3 uses
  store i32 %i.aa, ptr %i.i, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !116
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !115
  %i.af = mul i32 %5, %4
  %i.ag = mul i32 %i.af, %i.ac
  %i.ah = mul i32 %i.ag, %i.ae                    ; 3 uses
  store i32 %i.ah, ptr %i.j, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.ai = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.aj = ashr i32 %i.ai, 1                       ; 2 uses
  %i.ak = icmp eq i32 %12, 0
  br i1 %i.ak, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.al = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0120.i.i = phi i32 [ %i.al, %bb.b ], [ %12, %bb.a ] ; 3 uses
  %i.am = add nsw i32 %i.aj, -64
  %i.an = sdiv i32 %i.am, 256
  %i.ao = shl nsw i32 %i.an, 4
  %.sroa.speculated110.i.i = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 16) ; 3 uses
  %i.ap = add i32 %i.ah, -1                       ; 3 uses
  %i.aq = add i32 %.sroa.speculated110.i.i, %i.ap
  %i.ar = sdiv i32 %i.aq, %.sroa.speculated110.i.i ; 2 uses
  %i.as = add i32 %i.ar, %i.ap
  %i.at = sdiv i32 %i.as, %i.ar
  %i.au = add nsw i32 %i.at, 15
  %i.av = sdiv i32 %i.au, 16
  %i.aw = shl nsw i32 %i.av, 4
  %.sroa.speculated105.i.i = tail call i32 @llvm.smin.i32(i32 %i.aw, i32 %.sroa.speculated110.i.i) ; 7 uses
  store i32 %.sroa.speculated105.i.i, ptr %i.m, align 4, !tbaa !113
  %i.ax = add nsw i32 %i.v, 63
  %i.ay = sdiv i32 %i.ax, 64                      ; 2 uses
  %i.az = add i32 %i.v, -1                        ; 4 uses
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = sdiv i32 %i.ba, %i.ay
  %i.bc = add nsw i32 %i.bb, 15
  %i.bd = sdiv i32 %i.bc, 16
  %i.be = shl nsw i32 %i.bd, 4
  %.sroa.speculated98.i.i = tail call i32 @llvm.smax.i32(i32 %i.be, i32 16)
  %i.bf = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated93.i.i = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %.0120.i.i)
  %i.bg = mul nsw i32 %.sroa.speculated98.i.i, %.sroa.speculated93.i.i ; 3 uses
  %i.bh = add i32 %i.bg, %i.az
  %i.bi = sdiv i32 %i.bh, %i.bg                   ; 2 uses
  %i.bj = add i32 %i.bi, %i.az
  %i.bk = sdiv i32 %i.bj, %i.bi
  %i.bl = add nsw i32 %i.bk, 15
  %i.bm = sdiv i32 %i.bl, 16
  %i.bn = shl nsw i32 %i.bm, 4
  %.sroa.speculated88.i.i = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.bg) ; 3 uses
  %i.bo = icmp sgt i32 %.0120.i.i, 1
  br i1 %i.bo, label %bb.d, label %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i

bb.d:                                             ; preds = %bb.c
  %i.bp = sdiv i32 %.sroa.speculated88.i.i, %.0120.i.i
  %.sroa.speculated76.i.i = tail call i32 @llvm.smax.i32(i32 %i.bp, i32 1)
  %i.bq = add nuw nsw i32 %.sroa.speculated76.i.i, 15
  %i.br = and i32 %i.bq, 2147483632
  %.sroa.speculated83.i.i = tail call i32 @llvm.smin.i32(i32 %i.br, i32 %.sroa.speculated88.i.i)
  br label %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i

_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i: ; preds = %bb.d, %bb.c
  %i.bs = phi i32 [ %.sroa.speculated83.i.i, %bb.d ], [ %.sroa.speculated88.i.i, %bb.c ] ; 6 uses
  store i32 %i.bs, ptr %i.k, align 4, !tbaa !113
  %i.bt = icmp sgt i32 %i.aa, 0
  tail call void @llvm.assume(i1 %i.bt)
  %.not.i47.i = icmp slt i32 %.sroa.speculated105.i.i, %i.ah
  %i.bu = mul nsw i32 %i.bs, %.sroa.speculated105.i.i
  %i.bv = sub nsw i32 %i.aj, %i.bu
  %i.bw = select i1 %.not.i47.i, i32 %i.bs, i32 0
  %.sink.i.i = add nsw i32 %i.bw, %.sroa.speculated105.i.i
  %i.bx = sdiv i32 %i.bv, %.sink.i.i
  %i.by = sdiv i32 %i.bx, 16
  %i.bz = shl nsw i32 %i.by, 4
  %.sroa.speculated69.i.i = tail call i32 @llvm.smax.i32(i32 %i.bz, i32 16) ; 3 uses
  %i.ca = add nsw i32 %i.aa, -1                   ; 3 uses
  %i.cb = add nuw i32 %.sroa.speculated69.i.i, %i.ca
  %i.cc = udiv i32 %i.cb, %.sroa.speculated69.i.i ; 2 uses
  %i.cd = add nuw i32 %i.cc, %i.ca
  %i.ce = udiv i32 %i.cd, %i.cc
  %i.cf = add nuw nsw i32 %i.ce, 15
  %i.cg = and i32 %i.cf, -16
  %.sroa.speculated64.i.i = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 %.sroa.speculated69.i.i)
  %.sroa.speculated.i.i = tail call i32 @llvm.umax.i32(i32 %.sroa.speculated64.i.i, i32 16) ; 4 uses
  store i32 %.sroa.speculated.i.i, ptr %i.l, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #10
  %i.ch = add i32 %i.az, %i.bs
  %i.ci = sdiv i32 %i.ch, %i.bs
  store i32 %i.ci, ptr %i.n, align 4, !tbaa !113
  %i.cj = add nuw i32 %.sroa.speculated.i.i, %i.ca
  %i.ck = sdiv i32 %i.cj, %.sroa.speculated.i.i   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #10
  %i.cl = add i32 %.sroa.speculated105.i.i, %i.ap
  %i.cm = sdiv i32 %i.cl, %.sroa.speculated105.i.i ; 2 uses
  store i32 %i.cm, ptr %i.o, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.cn = mul nsw i32 %.sroa.speculated.i.i, %.sroa.speculated105.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !397
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %14, i64 32 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %14, i64 64 ; 2 uses
  store i64 0, ptr %i.cs, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %14, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.cr, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %14, i32 noundef %i.cn, i32 noundef %i.cm, i32 noundef %i.ck, i64 noundef 2, ptr noundef %i.cp)
  %i.ct = load ptr, ptr %14, align 8, !tbaa !9
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZNK4ncnn3Mat5emptyEv.exit46.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit46.i

_ZNK4ncnn3Mat5emptyEv.exit46.i:                   ; preds = %_ZN4ncnnL50convolution_im2col_gemm_get_optimal_tile_mnk_bf16sEiiiRiS0_S0_i.exit.i
  %i.cv = getelementptr inbounds nuw i8, ptr %14, i64 56
  %i.cw = load i64, ptr %i.cs, align 8, !tbaa !18
  %i.cx = load i32, ptr %i.cv, align 8, !tbaa !116
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.cw, %i.cy
end_hunk_1
begin_hunk_2_@_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined:bb.a
  %i.bdx = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx749.i.i.3 = shl i64 %i.bdx, 4
  %i.bdy = getelementptr inbounds nuw i8, ptr %i.bdu, i64 %.idx749.i.i.3 ; 2 uses
  %niter311.next.3 = add i32 %niter311, 4         ; 2 uses
  %niter311.ncmp.3 = icmp eq i32 %niter311.next.3, %unroll_iter310
  br i1 %niter311.ncmp.3, label %.loopexit.i.i.loopexit234.unr-lcssa, label %.lr.ph704.i.i, !llvm.loop !465

_ZN4ncnn3MatD2Ev.exit763.i.i:                     ; preds = %.split839.i.i
  br i1 %i.bbn, label %.lr.ph709.preheader.i.i, label %.loopexit.i.i

.lr.ph709.preheader.i.i:                          ; preds = %_ZN4ncnn3MatD2Ev.exit763.i.i
  %i.bdz = load ptr, ptr %9, align 8, !tbaa !9, !noalias !466
  %i.bea = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !466
  %i.beb = mul i64 %i.bea, %i.bbl
  %i.bec = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !466
  %i.bed = mul i64 %i.beb, %i.bec
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bdz, i64 %i.bed
  %i.bef = add nsw i64 %indvars.iv768.i.i, %i.bbq
  %.idx790.i.i = shl nsw i64 %i.bef, 3
  %i.beg = getelementptr inbounds i8, ptr %i.bee, i64 %.idx790.i.i ; 2 uses
  br i1 %i.bca, label %.lr.ph709.i.i.epil.preheader, label %.lr.ph709.i.i

.lr.ph709.i.i:                                    ; preds = %.lr.ph709.preheader.i.i, %.lr.ph709.i.i
  %.0709707.i.i = phi ptr [ %i.bew, %.lr.ph709.i.i ], [ %i.beg, %.lr.ph709.preheader.i.i ] ; 2 uses
  %.35706.i.i = phi ptr [ %i.beu, %.lr.ph709.i.i ], [ %.30717.i.i, %.lr.ph709.preheader.i.i ] ; 5 uses
  %niter304 = phi i32 [ %niter304.next.3, %.lr.ph709.i.i ], [ 0, %.lr.ph709.preheader.i.i ]
  %i.beh = load i64, ptr %.0709707.i.i, align 1, !tbaa !20
  store i64 %i.beh, ptr %.35706.i.i, align 1, !tbaa !20
  %i.bei = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 8
  %i.bej = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i = shl i64 %i.bej, 3
  %i.bek = getelementptr inbounds nuw i8, ptr %.0709707.i.i, i64 %.idx.i.i ; 2 uses
  %i.bel = load i64, ptr %i.bek, align 1, !tbaa !20
  store i64 %i.bel, ptr %i.bei, align 1, !tbaa !20
  %i.bem = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 16
  %i.ben = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i.1 = shl i64 %i.ben, 3
  %i.beo = getelementptr inbounds nuw i8, ptr %i.bek, i64 %.idx.i.i.1 ; 2 uses
  %i.bep = load i64, ptr %i.beo, align 1, !tbaa !20
  store i64 %i.bep, ptr %i.bem, align 1, !tbaa !20
  %i.beq = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 24
  %i.ber = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i.2 = shl i64 %i.ber, 3
  %i.bes = getelementptr inbounds nuw i8, ptr %i.beo, i64 %.idx.i.i.2 ; 2 uses
  %i.bet = load i64, ptr %i.bes, align 1, !tbaa !20
  store i64 %i.bet, ptr %i.beq, align 1, !tbaa !20
  %i.beu = getelementptr inbounds nuw i8, ptr %.35706.i.i, i64 32 ; 3 uses
  %i.bev = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i.3 = shl i64 %i.bev, 3
  %i.bew = getelementptr inbounds nuw i8, ptr %i.bes, i64 %.idx.i.i.3 ; 2 uses
  %niter304.next.3 = add i32 %niter304, 4         ; 2 uses
  %niter304.ncmp.3 = icmp eq i32 %niter304.next.3, %unroll_iter303
  br i1 %niter304.ncmp.3, label %.loopexit.i.i.loopexit235.unr-lcssa, label %.lr.ph709.i.i, !llvm.loop !469

_ZN4ncnn3MatD2Ev.exit.i.i:                        ; preds = %.split839.i.i
  br i1 %i.bbp, label %.lr.ph714.i.i, label %.loopexit.i.i

.lr.ph714.i.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit.i.i
  %i.bex = load ptr, ptr %9, align 8, !tbaa !9, !noalias !470
  %i.bey = load i64, ptr %i.p, align 8, !tbaa !18, !noalias !470 ; 10 uses
  %i.bez = mul i64 %i.bey, %i.bbo
  %i.bfa = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !470
  %i.bfb = mul i64 %i.bez, %i.bfa
  %i.bfc = getelementptr inbounds nuw i8, ptr %i.bex, i64 %i.bfb
  %i.bfd = getelementptr [2 x i8], ptr %i.bfc, i64 %indvars.iv768.i.i
  %i.bfe = getelementptr [2 x i8], ptr %i.bfd, i64 %i.bbq ; 2 uses
  br i1 %i.bbz, label %.epil.preheader, label %.lr.ph714.i.i.new

.lr.ph714.i.i.new:                                ; preds = %.lr.ph714.i.i, %.lr.ph714.i.i.new
  %.0707712.i.i = phi ptr [ %i.bgc, %.lr.ph714.i.i.new ], [ %i.bfe, %.lr.ph714.i.i ] ; 2 uses
  %.37711.i.i = phi ptr [ %i.bgb, %.lr.ph714.i.i.new ], [ %.30717.i.i, %.lr.ph714.i.i ] ; 9 uses
  %niter297 = phi i32 [ %niter297.next.7, %.lr.ph714.i.i.new ], [ 0, %.lr.ph714.i.i ]
  %i.bff = load i16, ptr %.0707712.i.i, align 2, !tbaa !76
  store i16 %i.bff, ptr %.37711.i.i, align 2, !tbaa !76
  %i.bfg = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 2
  %i.bfh = getelementptr inbounds nuw [2 x i8], ptr %.0707712.i.i, i64 %i.bey ; 2 uses
  %i.bfi = load i16, ptr %i.bfh, align 2, !tbaa !76
  store i16 %i.bfi, ptr %i.bfg, align 2, !tbaa !76
  %i.bfj = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 4
  %i.bfk = getelementptr inbounds nuw [2 x i8], ptr %i.bfh, i64 %i.bey ; 2 uses
  %i.bfl = load i16, ptr %i.bfk, align 2, !tbaa !76
  store i16 %i.bfl, ptr %i.bfj, align 2, !tbaa !76
  %i.bfm = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 6
  %i.bfn = getelementptr inbounds nuw [2 x i8], ptr %i.bfk, i64 %i.bey ; 2 uses
  %i.bfo = load i16, ptr %i.bfn, align 2, !tbaa !76
  store i16 %i.bfo, ptr %i.bfm, align 2, !tbaa !76
  %i.bfp = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 8
  %i.bfq = getelementptr inbounds nuw [2 x i8], ptr %i.bfn, i64 %i.bey ; 2 uses
  %i.bfr = load i16, ptr %i.bfq, align 2, !tbaa !76
  store i16 %i.bfr, ptr %i.bfp, align 2, !tbaa !76
  %i.bfs = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 10
  %i.bft = getelementptr inbounds nuw [2 x i8], ptr %i.bfq, i64 %i.bey ; 2 uses
  %i.bfu = load i16, ptr %i.bft, align 2, !tbaa !76
  store i16 %i.bfu, ptr %i.bfs, align 2, !tbaa !76
  %i.bfv = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 12
  %i.bfw = getelementptr inbounds nuw [2 x i8], ptr %i.bft, i64 %i.bey ; 2 uses
  %i.bfx = load i16, ptr %i.bfw, align 2, !tbaa !76
  store i16 %i.bfx, ptr %i.bfv, align 2, !tbaa !76
  %i.bfy = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 14
  %i.bfz = getelementptr inbounds nuw [2 x i8], ptr %i.bfw, i64 %i.bey ; 2 uses
  %i.bga = load i16, ptr %i.bfz, align 2, !tbaa !76
  store i16 %i.bga, ptr %i.bfy, align 2, !tbaa !76
  %i.bgb = getelementptr inbounds nuw i8, ptr %.37711.i.i, i64 16 ; 3 uses
  %i.bgc = getelementptr inbounds nuw [2 x i8], ptr %i.bfz, i64 %i.bey ; 2 uses
  %niter297.next.7 = add i32 %niter297, 8         ; 2 uses
  %niter297.ncmp.7 = icmp eq i32 %niter297.next.7, %unroll_iter296
  br i1 %niter297.ncmp.7, label %.loopexit.i.i.loopexit236.unr-lcssa, label %.lr.ph714.i.i.new, !llvm.loop !473

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph699.i.i
  br i1 %lcmp.mod314.not, label %.loopexit.i.i, label %.lr.ph699.i.i.epil.preheader

.lr.ph699.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph699.preheader.i.i
  %.0713697.i.i.epil.init = phi ptr [ %i.bck, %.lr.ph699.preheader.i.i ], [ %i.bda, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.31696.i.i.epil.init = phi ptr [ %.30717.i.i, %.lr.ph699.preheader.i.i ], [ %i.bcy, %.loopexit.i.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod316)
  br label %.lr.ph699.i.i.epil

.lr.ph699.i.i.epil:                               ; preds = %.lr.ph699.i.i.epil, %.lr.ph699.i.i.epil.preheader
  %.0713697.i.i.epil = phi ptr [ %i.bgg, %.lr.ph699.i.i.epil ], [ %.0713697.i.i.epil.init, %.lr.ph699.i.i.epil.preheader ] ; 2 uses
  %.31696.i.i.epil = phi ptr [ %i.bge, %.lr.ph699.i.i.epil ], [ %.31696.i.i.epil.init, %.lr.ph699.i.i.epil.preheader ] ; 2 uses
  %epil.iter313 = phi i32 [ %epil.iter313.next, %.lr.ph699.i.i.epil ], [ 0, %.lr.ph699.i.i.epil.preheader ]
  %i.bgd = load <4 x i64>, ptr %.0713697.i.i.epil, align 1, !tbaa !20
  store <4 x i64> %i.bgd, ptr %.31696.i.i.epil, align 1, !tbaa !20
  %i.bge = getelementptr inbounds nuw i8, ptr %.31696.i.i.epil, i64 32 ; 2 uses
  %i.bgf = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx750.i.i.epil = shl i64 %i.bgf, 5
  %i.bgg = getelementptr inbounds nuw i8, ptr %.0713697.i.i.epil, i64 %.idx750.i.i.epil
  %epil.iter313.next = add i32 %epil.iter313, 1   ; 2 uses
  %epil.iter313.cmp.not = icmp eq i32 %epil.iter313.next, %xtraiter312
  br i1 %epil.iter313.cmp.not, label %.loopexit.i.i, label %.lr.ph699.i.i.epil, !llvm.loop !474

.loopexit.i.i.loopexit234.unr-lcssa:              ; preds = %.lr.ph704.i.i
  br i1 %lcmp.mod307.not, label %.loopexit.i.i, label %.lr.ph704.i.i.epil.preheader

.lr.ph704.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit234.unr-lcssa, %.lr.ph704.preheader.i.i
  %.0711702.i.i.epil.init = phi ptr [ %i.bdi, %.lr.ph704.preheader.i.i ], [ %i.bdy, %.loopexit.i.i.loopexit234.unr-lcssa ]
  %.33701.i.i.epil.init = phi ptr [ %.30717.i.i, %.lr.ph704.preheader.i.i ], [ %i.bdw, %.loopexit.i.i.loopexit234.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod309)
  br label %.lr.ph704.i.i.epil

.lr.ph704.i.i.epil:                               ; preds = %.lr.ph704.i.i.epil, %.lr.ph704.i.i.epil.preheader
  %.0711702.i.i.epil = phi ptr [ %i.bgk, %.lr.ph704.i.i.epil ], [ %.0711702.i.i.epil.init, %.lr.ph704.i.i.epil.preheader ] ; 2 uses
  %.33701.i.i.epil = phi ptr [ %i.bgi, %.lr.ph704.i.i.epil ], [ %.33701.i.i.epil.init, %.lr.ph704.i.i.epil.preheader ] ; 2 uses
  %epil.iter306 = phi i32 [ %epil.iter306.next, %.lr.ph704.i.i.epil ], [ 0, %.lr.ph704.i.i.epil.preheader ]
  %i.bgh = load <2 x i64>, ptr %.0711702.i.i.epil, align 1, !tbaa !20
  store <2 x i64> %i.bgh, ptr %.33701.i.i.epil, align 1, !tbaa !20
  %i.bgi = getelementptr inbounds nuw i8, ptr %.33701.i.i.epil, i64 16 ; 2 uses
  %i.bgj = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx749.i.i.epil = shl i64 %i.bgj, 4
  %i.bgk = getelementptr inbounds nuw i8, ptr %.0711702.i.i.epil, i64 %.idx749.i.i.epil
  %epil.iter306.next = add i32 %epil.iter306, 1   ; 2 uses
  %epil.iter306.cmp.not = icmp eq i32 %epil.iter306.next, %xtraiter305
  br i1 %epil.iter306.cmp.not, label %.loopexit.i.i, label %.lr.ph704.i.i.epil, !llvm.loop !475

.loopexit.i.i.loopexit235.unr-lcssa:              ; preds = %.lr.ph709.i.i
  br i1 %lcmp.mod300.not, label %.loopexit.i.i, label %.lr.ph709.i.i.epil.preheader

.lr.ph709.i.i.epil.preheader:                     ; preds = %.loopexit.i.i.loopexit235.unr-lcssa, %.lr.ph709.preheader.i.i
  %.0709707.i.i.epil.init = phi ptr [ %i.beg, %.lr.ph709.preheader.i.i ], [ %i.bew, %.loopexit.i.i.loopexit235.unr-lcssa ]
  %.35706.i.i.epil.init = phi ptr [ %.30717.i.i, %.lr.ph709.preheader.i.i ], [ %i.beu, %.loopexit.i.i.loopexit235.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod302)
  br label %.lr.ph709.i.i.epil

.lr.ph709.i.i.epil:                               ; preds = %.lr.ph709.i.i.epil, %.lr.ph709.i.i.epil.preheader
  %.0709707.i.i.epil = phi ptr [ %i.bgo, %.lr.ph709.i.i.epil ], [ %.0709707.i.i.epil.init, %.lr.ph709.i.i.epil.preheader ] ; 2 uses
  %.35706.i.i.epil = phi ptr [ %i.bgm, %.lr.ph709.i.i.epil ], [ %.35706.i.i.epil.init, %.lr.ph709.i.i.epil.preheader ] ; 2 uses
  %epil.iter299 = phi i32 [ %epil.iter299.next, %.lr.ph709.i.i.epil ], [ 0, %.lr.ph709.i.i.epil.preheader ]
  %i.bgl = load i64, ptr %.0709707.i.i.epil, align 1, !tbaa !20
  store i64 %i.bgl, ptr %.35706.i.i.epil, align 1, !tbaa !20
  %i.bgm = getelementptr inbounds nuw i8, ptr %.35706.i.i.epil, i64 8 ; 2 uses
  %i.bgn = load i64, ptr %i.p, align 8, !tbaa !18
  %.idx.i.i.epil = shl i64 %i.bgn, 3
  %i.bgo = getelementptr inbounds nuw i8, ptr %.0709707.i.i.epil, i64 %.idx.i.i.epil
  %epil.iter299.next = add i32 %epil.iter299, 1   ; 2 uses
  %epil.iter299.cmp.not = icmp eq i32 %epil.iter299.next, %xtraiter298
  br i1 %epil.iter299.cmp.not, label %.loopexit.i.i, label %.lr.ph709.i.i.epil, !llvm.loop !476

.loopexit.i.i.loopexit236.unr-lcssa:              ; preds = %.lr.ph714.i.i.new
  br i1 %lcmp.mod293.not, label %.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i.i.loopexit236.unr-lcssa, %.lr.ph714.i.i
  %.0707712.i.i.epil.init = phi ptr [ %i.bfe, %.lr.ph714.i.i ], [ %i.bgc, %.loopexit.i.i.loopexit236.unr-lcssa ]
  %.37711.i.i.epil.init = phi ptr [ %.30717.i.i, %.lr.ph714.i.i ], [ %i.bgb, %.loopexit.i.i.loopexit236.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod295)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.0707712.i.i.epil = phi ptr [ %.0707712.i.i.epil.init, %.epil.preheader ], [ %i.bgr, %bb.d ] ; 2 uses
  %.37711.i.i.epil = phi ptr [ %.37711.i.i.epil.init, %.epil.preheader ], [ %i.bgq, %bb.d ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.bgp = load i16, ptr %.0707712.i.i.epil, align 2, !tbaa !76
  store i16 %i.bgp, ptr %.37711.i.i.epil, align 2, !tbaa !76
  %i.bgq = getelementptr inbounds nuw i8, ptr %.37711.i.i.epil, i64 2 ; 2 uses
  %i.bgr = getelementptr inbounds nuw [2 x i8], ptr %.0707712.i.i.epil, i64 %i.bey
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter292
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %bb.d, !llvm.loop !477

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit236.unr-lcssa, %bb.d, %.loopexit.i.i.loopexit235.unr-lcssa, %.lr.ph709.i.i.epil, %.loopexit.i.i.loopexit234.unr-lcssa, %.lr.ph704.i.i.epil, %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph699.i.i.epil, %_ZN4ncnn3MatD2Ev.exit.i.i, %_ZN4ncnn3MatD2Ev.exit763.i.i, %_ZN4ncnn3MatD2Ev.exit764.i.i, %_ZN4ncnn3MatD2Ev.exit765.i.i, %.split839.i.i
  %.38.i.i = phi ptr [ %.30717.i.i, %.split839.i.i ], [ %.30717.i.i, %_ZN4ncnn3MatD2Ev.exit.i.i ], [ %i.bgm, %.lr.ph709.i.i.epil ], [ %i.bge, %.lr.ph699.i.i.epil ], [ %.30717.i.i, %_ZN4ncnn3MatD2Ev.exit763.i.i ], [ %i.bgi, %.lr.ph704.i.i.epil ], [ %.30717.i.i, %_ZN4ncnn3MatD2Ev.exit764.i.i ], [ %.30717.i.i, %_ZN4ncnn3MatD2Ev.exit765.i.i ], [ %i.bcy, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.bdw, %.loopexit.i.i.loopexit234.unr-lcssa ], [ %i.beu, %.loopexit.i.i.loopexit235.unr-lcssa ], [ %i.bgb, %.loopexit.i.i.loopexit236.unr-lcssa ], [ %i.bgq, %bb.d ]
  %indvars.iv.next769.i.i = add nsw i64 %indvars.iv768.i.i, 1 ; 2 uses
  %exitcond771.not.i.i = icmp eq i64 %indvars.iv.next769.i.i, %wide.trip.count.i.i
  br i1 %exitcond771.not.i.i, label %_ZN4ncnn3MatD2Ev.exit, label %.split839.i.i, !llvm.loop !478

bb.e:                                             ; preds = %.noexc
  %i.bgs = icmp eq i32 %i.at, 2                   ; 4 uses
  %or.cond13.i = and i1 %or.cond.i, %i.bgs
  %i.bgt = icmp eq i32 %i.au, 2                   ; 4 uses
  %or.cond15.i = and i1 %or.cond13.i, %i.bgt
  br i1 %or.cond15.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated65, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.bgu = icmp eq i32 %i.ap, 3
  %i.bgv = icmp eq i32 %i.aq, 3
  %or.cond17.i = and i1 %i.bgu, %i.bgv
  %or.cond19.i = and i1 %or.cond17.i, %i.ax
  %or.cond21.i = and i1 %or.cond19.i, %i.ay       ; 2 uses
  %or.cond23.i = and i1 %or.cond21.i, %i.az
  %or.cond25.i = and i1 %or.cond23.i, %i.ba
  br i1 %or.cond25.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated65, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.i:                                             ; preds = %bb.g
  %or.cond33.i = and i1 %or.cond21.i, %i.bgs
  %or.cond35.i = and i1 %or.cond33.i, %i.bgt
  br i1 %or.cond35.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated65, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 3, i32 noundef 3, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bgw = icmp eq i32 %i.ap, 5
  %i.bgx = icmp eq i32 %i.aq, 5
  %or.cond37.i = and i1 %i.bgw, %i.bgx
  %or.cond39.i = and i1 %or.cond37.i, %i.ax
  %or.cond41.i = and i1 %or.cond39.i, %i.ay       ; 2 uses
  %or.cond43.i = and i1 %or.cond41.i, %i.az
  %or.cond45.i = and i1 %or.cond43.i, %i.ba
  br i1 %or.cond45.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated65, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 1, i32 noundef 1)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.m:                                             ; preds = %bb.k
  %or.cond53.i = and i1 %or.cond41.i, %i.bgs
  %or.cond55.i = and i1 %or.cond53.i, %i.bgt
  br i1 %or.cond55.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated65, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 5, i32 noundef 5, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bgy = icmp eq i32 %i.ap, 7
  %i.bgz = icmp eq i32 %i.aq, 7
  %or.cond57.i = and i1 %i.bgy, %i.bgz
  %or.cond59.i = and i1 %or.cond57.i, %i.ax
  %or.cond61.i = and i1 %or.cond59.i, %i.ay
  %or.cond63.i = and i1 %or.cond61.i, %i.bgs
  %or.cond65.i = and i1 %or.cond63.i, %i.bgt
  br i1 %or.cond65.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated65, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef 7, i32 noundef 7, i32 noundef 1, i32 noundef 1, i32 noundef 2, i32 noundef 2)
  br label %_ZN4ncnn3MatD2Ev.exit

bb.q:                                             ; preds = %bb.o
  call fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr noundef nonnull readonly align 8 dereferenceable(72) %9, ptr %i.ao, i32 noundef %i.v, i32 noundef %.sroa.speculated65, i32 noundef %i.x, i32 noundef %.sroa.speculated, i32 noundef %i.ap, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at, i32 noundef %i.au)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.loopexit.i.i, %bb.q, %bb.p, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %.lr.ph718.i.i, %.preheader.i.i
  %i.bha = add nsw i32 %.0107, 1
  %i.bhb = load i32, ptr %i.b, align 4, !tbaa !113
  %.not.not = icmp slt i32 %.0107, %i.bhb
  br i1 %.not.not, label %.noexc, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL29convolution_im2col_gemm_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %15) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !113
  %i.h = load i32, ptr %0, align 4, !tbaa !113    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !113
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !113
  %i.k = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not184 = icmp sgt i32 %i.k, %i.j
  br i1 %.not184, label %._crit_edge188, label %.lr.ph187

.lr.ph187:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph187, %_ZN4ncnn3MatD2Ev.exit
  %.048185 = phi i32 [ %i.k, %.lr.ph187 ], [ %i.an, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.t = load i32, ptr %3, align 4, !tbaa !113    ; 2 uses
  %i.u = mul nsw i32 %i.t, %.048185               ; 3 uses
  %i.v = load i32, ptr %4, align 4, !tbaa !113
  %i.w = load i32, ptr %5, align 4, !tbaa !113
  %i.x = icmp sgt i32 %i.v, %i.w
  br i1 %i.x, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit55

bb.d:                                             ; preds = %bb.c
  %i.y = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc49 unwind label %bb.f

.noexc49:                                         ; preds = %bb.d
  %i.z = load ptr, ptr %6, align 8, !tbaa !9, !noalias !479
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !479
  %i.ab = sext i32 %i.y to i64
  %i.ac = mul i64 %i.aa, %i.ab
  %i.ad = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !479
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %.pre = load i32, ptr %3, align 4, !tbaa !113
  br label %_ZN4ncnn3MatD2Ev.exit55

_ZN4ncnn3MatD2Ev.exit55:                          ; preds = %.noexc49, %bb.c
  %i.ag = phi i32 [ %i.t, %bb.c ], [ %.pre, %.noexc49 ]
  %.sroa.0170.0 = phi ptr [ null, %bb.c ], [ %i.af, %.noexc49 ]
  %i.ah = load i32, ptr %7, align 4, !tbaa !113
  %i.ai = sub nsw i32 %i.ah, %i.u
  %.sroa.speculated152 = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.ai)
  %i.aj = load i32, ptr %8, align 4, !tbaa !113   ; 2 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit55
  %i.al = load i32, ptr %4, align 4, !tbaa !113   ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.pre190 = load i32, ptr %9, align 4, !tbaa !113
  br label %.lr.ph.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge, %.lr.ph, %_ZN4ncnn3MatD2Ev.exit55
  %i.an = add nsw i32 %.048185, 1
  %i.ao = load i32, ptr %i.b, align 4, !tbaa !113
  %.not.not = icmp slt i32 %.048185, %i.ao
  br i1 %.not.not, label %bb.c, label %._crit_edge188

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.ap = phi i32 [ %i.au, %._crit_edge ], [ %i.aj, %.lr.ph.split.preheader ] ; 2 uses
  %i.aq = phi i32 [ %i.av, %._crit_edge ], [ %.pre190, %.lr.ph.split.preheader ] ; 2 uses
  %i.ar = phi i32 [ %i.aw, %._crit_edge ], [ %i.al, %.lr.ph.split.preheader ] ; 3 uses
  %.047183 = phi i32 [ %i.ax, %._crit_edge ], [ 0, %.lr.ph.split.preheader ] ; 4 uses
  %i.as = sub nsw i32 %i.ap, %.047183
  %.sroa.speculated148 = call i32 @llvm.smin.i32(i32 %i.aq, i32 %i.as)
  %i.at = icmp sgt i32 %i.ar, 0
  br i1 %i.at, label %.noexc.preheader, label %._crit_edge

.noexc.preheader:                                 ; preds = %.lr.ph.split
  %.pre191 = load i32, ptr %5, align 4, !tbaa !113
  br label %.noexc

end_hunk_2
begin_hunk_3_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  br i1 %i.sts, label %middle.block10707, label %vector.body10690, !llvm.loop !565

middle.block10707:                                ; preds = %vector.body10690
  %bin.rdx10708 = fadd fast <16 x float> %i.stp, %i.sto
  %bin.rdx10709 = fadd fast <16 x float> %i.stq, %bin.rdx10708
  %bin.rdx10710 = fadd fast <16 x float> %i.str, %bin.rdx10709
  %i.stt = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx10710) ; 3 uses
  %cmp.n10711 = icmp eq i64 %i.srx, %n.vec10689
  br i1 %cmp.n10711, label %._crit_edge9697, label %vec.epilog.iter.check10718

vec.epilog.iter.check10718:                       ; preds = %middle.block10707
  %min.epilog.iters.check10719 = icmp eq i64 %i.sry, 0
  br i1 %min.epilog.iters.check10719, label %.lr.ph9696.preheader, label %vec.epilog.ph10720, !prof !108

vec.epilog.ph10720:                               ; preds = %vector.main.loop.iter.check10686, %vec.epilog.iter.check10718
  %vec.epilog.resume.val10712 = phi i64 [ %n.vec10689, %vec.epilog.iter.check10718 ], [ 0, %vector.main.loop.iter.check10686 ]
  %bc.merge.rdx10714 = phi float [ %i.stt, %vec.epilog.iter.check10718 ], [ %.12335.lcssa, %vector.main.loop.iter.check10686 ]
  %n.vec10721 = and i64 %i.srx, 8589934584        ; 4 uses
  %i.stu = trunc i64 %n.vec10721 to i32
  %i.stv = add i32 %.02330.lcssa, %i.stu
  %i.stw = shl nuw nsw i64 %n.vec10721, 1         ; 2 uses
  %i.stx = getelementptr i8, ptr %.02332.lcssa, i64 %i.stw
  %i.sty = getelementptr i8, ptr %.102426.lcssa, i64 %i.stw ; 2 uses
  %i.stz = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx10714, i64 0
  br label %vec.epilog.vector.body10722

vec.epilog.vector.body10722:                      ; preds = %vec.epilog.vector.body10722, %vec.epilog.ph10720
  %index10723 = phi i64 [ %vec.epilog.resume.val10712, %vec.epilog.ph10720 ], [ %index.next10729, %vec.epilog.vector.body10722 ] ; 2 uses
  %vec.phi10724 = phi <8 x float> [ %i.stz, %vec.epilog.ph10720 ], [ %i.sui, %vec.epilog.vector.body10722 ]
  %i.sua = shl i64 %index10723, 1                 ; 2 uses
  %next.gep10725 = getelementptr i8, ptr %.02332.lcssa, i64 %i.sua
  %next.gep10726 = getelementptr i8, ptr %.102426.lcssa, i64 %i.sua
  %wide.load10727 = load <8 x i16>, ptr %next.gep10725, align 2, !tbaa !76
  %i.sub = zext <8 x i16> %wide.load10727 to <8 x i32>
  %i.suc = shl nuw <8 x i32> %i.sub, splat (i32 16)
  %i.sud = bitcast <8 x i32> %i.suc to <8 x float>
  %wide.load10728 = load <8 x i16>, ptr %next.gep10726, align 2, !tbaa !76
  %i.sue = zext <8 x i16> %wide.load10728 to <8 x i32>
  %i.suf = shl nuw <8 x i32> %i.sue, splat (i32 16)
  %i.sug = bitcast <8 x i32> %i.suf to <8 x float>
  %i.suh = fmul fast <8 x float> %i.sug, %i.sud
  %i.sui = fadd fast <8 x float> %i.suh, %vec.phi10724 ; 2 uses
  %index.next10729 = add nuw i64 %index10723, 8   ; 2 uses
  %i.suj = icmp eq i64 %index.next10729, %n.vec10721
  br i1 %i.suj, label %vec.epilog.middle.block10730, label %vec.epilog.vector.body10722, !llvm.loop !566

vec.epilog.middle.block10730:                     ; preds = %vec.epilog.vector.body10722
  %i.suk = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.sui) ; 2 uses
  %cmp.n10731 = icmp eq i64 %i.srx, %n.vec10721
  br i1 %cmp.n10731, label %._crit_edge9697, label %.lr.ph9696.preheader

.lr.ph9696.preheader:                             ; preds = %iter.check10716, %vec.epilog.iter.check10718, %vec.epilog.middle.block10730
  %.123319695.ph = phi i32 [ %.02330.lcssa, %iter.check10716 ], [ %i.ssa, %vec.epilog.iter.check10718 ], [ %i.stv, %vec.epilog.middle.block10730 ]
  %.123339694.ph = phi ptr [ %.02332.lcssa, %iter.check10716 ], [ %i.ssc, %vec.epilog.iter.check10718 ], [ %i.stx, %vec.epilog.middle.block10730 ]
  %.223369693.ph = phi float [ %.12335.lcssa, %iter.check10716 ], [ %i.stt, %vec.epilog.iter.check10718 ], [ %i.suk, %vec.epilog.middle.block10730 ]
  %.1124279692.ph = phi ptr [ %.102426.lcssa, %iter.check10716 ], [ %i.ssd, %vec.epilog.iter.check10718 ], [ %i.sty, %vec.epilog.middle.block10730 ]
  br label %.lr.ph9696

.lr.ph9687:                                       ; preds = %.lr.ph9687.preheader, %.lr.ph9687
  %.023309685 = phi i32 [ %i.sva, %.lr.ph9687 ], [ %.023309685.ph, %.lr.ph9687.preheader ]
  %.023329684 = phi ptr [ %i.suy, %.lr.ph9687 ], [ %.023329684.ph, %.lr.ph9687.preheader ] ; 2 uses
  %.123359683 = phi float [ %i.sux, %.lr.ph9687 ], [ %.123359683.ph, %.lr.ph9687.preheader ]
  %.1024269682 = phi ptr [ %i.suz, %.lr.ph9687 ], [ %.1024269682.ph, %.lr.ph9687.preheader ] ; 2 uses
  %i.sul = load <2 x i16>, ptr %.023329684, align 2, !tbaa !76
  %i.sum = zext <2 x i16> %i.sul to <2 x i32>
  %i.sun = shl nuw <2 x i32> %i.sum, splat (i32 16)
  %i.suo = bitcast <2 x i32> %i.sun to <2 x float>
  %i.sup = load <2 x i16>, ptr %.1024269682, align 2, !tbaa !76
  %i.suq = zext <2 x i16> %i.sup to <2 x i32>
  %i.sur = shl nuw <2 x i32> %i.suq, splat (i32 16)
  %i.sus = bitcast <2 x i32> %i.sur to <2 x float>
  %i.sut = fmul fast <2 x float> %i.sus, %i.suo   ; 2 uses
  %i.suu = extractelement <2 x float> %i.sut, i64 0
  %i.suv = fadd fast float %i.suu, %.123359683
  %i.suw = extractelement <2 x float> %i.sut, i64 1
  %i.sux = fadd fast float %i.suv, %i.suw         ; 2 uses
  %i.suy = getelementptr inbounds nuw i8, ptr %.023329684, i64 4 ; 2 uses
  %i.suz = getelementptr inbounds nuw i8, ptr %.1024269682, i64 4
  %i.sva = add nuw nsw i32 %.023309685, 2         ; 2 uses
  %i.svb = or disjoint i32 %i.sva, 1
  %i.svc = icmp slt i32 %i.svb, %7
  br i1 %i.svc, label %.lr.ph9687, label %.preheader.loopexit, !llvm.loop !567

.lr.ph9696:                                       ; preds = %.lr.ph9696.preheader, %.lr.ph9696
  %.123319695 = phi i32 [ %i.svp, %.lr.ph9696 ], [ %.123319695.ph, %.lr.ph9696.preheader ]
  %.123339694 = phi ptr [ %i.svn, %.lr.ph9696 ], [ %.123339694.ph, %.lr.ph9696.preheader ] ; 2 uses
  %.223369693 = phi float [ %i.svm, %.lr.ph9696 ], [ %.223369693.ph, %.lr.ph9696.preheader ]
  %.1124279692 = phi ptr [ %i.svo, %.lr.ph9696 ], [ %.1124279692.ph, %.lr.ph9696.preheader ] ; 2 uses
  %i.svd = load i16, ptr %.123339694, align 2, !tbaa !76
  %i.sve = zext i16 %i.svd to i32
  %i.svf = shl nuw i32 %i.sve, 16
  %i.svg = bitcast i32 %i.svf to float
  %i.svh = load i16, ptr %.1124279692, align 2, !tbaa !76
  %i.svi = zext i16 %i.svh to i32
  %i.svj = shl nuw i32 %i.svi, 16
  %i.svk = bitcast i32 %i.svj to float
  %i.svl = fmul fast float %i.svk, %i.svg
  %i.svm = fadd fast float %i.svl, %.223369693    ; 2 uses
  %i.svn = getelementptr inbounds nuw i8, ptr %.123339694, i64 2
  %i.svo = getelementptr inbounds nuw i8, ptr %.1124279692, i64 2 ; 2 uses
  %i.svp = add nuw nsw i32 %.123319695, 1         ; 2 uses
  %exitcond10037.not = icmp eq i32 %i.svp, %7
  br i1 %exitcond10037.not, label %._crit_edge9697, label %.lr.ph9696, !llvm.loop !568

._crit_edge9697:                                  ; preds = %.lr.ph9696, %middle.block10707, %vec.epilog.middle.block10730, %.preheader
  %.112427.lcssa = phi ptr [ %.102426.lcssa, %.preheader ], [ %i.sty, %vec.epilog.middle.block10730 ], [ %i.ssd, %middle.block10707 ], [ %i.svo, %.lr.ph9696 ]
  %.22336.lcssa = phi float [ %.12335.lcssa, %.preheader ], [ %i.suk, %vec.epilog.middle.block10730 ], [ %i.stt, %middle.block10707 ], [ %i.svm, %.lr.ph9696 ] ; 14 uses
  br i1 %8, label %bb.hk, label %bb.hu

bb.hk:                                            ; preds = %._crit_edge9697
  switch i32 %9, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
    i32 3, label %bb.hn
    i32 4, label %bb.hp
    i32 5, label %bb.hq
    i32 6, label %bb.hr
  ]

bb.hl:                                            ; preds = %bb.hk
  %i.svq = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %.22336.lcssa, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hm:                                            ; preds = %bb.hk
  %i.svr = load float, ptr %i.sed, align 4, !tbaa !74
  %i.svs = fcmp fast ogt float %.22336.lcssa, 0.000000e+00
  %i.svt = select fast i1 %i.svs, float 1.000000e+00, float %i.svr
  %i.svu = fmul fast float %i.svt, %.22336.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hn:                                            ; preds = %bb.hk
  %i.svv = load float, ptr %i.seb, align 4, !tbaa !74
  %i.svw = load float, ptr %i.sec, align 4, !tbaa !74 ; 2 uses
  %.04950 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.22336.lcssa, float %i.svv) ; 2 uses
  %i.svx = fcmp fast ogt float %.04950, %i.svw
  br i1 %i.svx, label %bb.ho, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ho:                                            ; preds = %bb.hn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hp:                                            ; preds = %bb.hk
  %.sroa.speculated1473 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.22336.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated1473, float f0xC2B0C0A5)
  %i.svy = fneg fast float %.sroa.speculated
  %i.svz = tail call fast float @llvm.exp.f32(float %i.svy)
  %i.swa = fadd fast float %i.svz, 1.000000e+00
  %i.swb = fdiv fast float 1.000000e+00, %i.swa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hq:                                            ; preds = %bb.hk
  %i.swc = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %.22336.lcssa)
  %i.swd = fadd fast float %i.swc, 1.000000e+00
  %i.swe = tail call fast float @llvm.log.f32(float %i.swd)
  %i.swf = tail call fast float @llvm.tanh.f32(float %i.swe)
  %i.swg = fmul fast float %i.swf, %.22336.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hr:                                            ; preds = %bb.hk
  %i.swh = load float, ptr %i.sdz, align 4, !tbaa !74 ; 3 uses
  %i.swi = load float, ptr %i.sea, align 4, !tbaa !74 ; 2 uses
  %i.swj = fneg fast float %i.swi
  %i.swk = fdiv fast float %i.swj, %i.swh         ; 2 uses
  %i.swl = fcmp fast olt float %.22336.lcssa, %i.swk
  br i1 %i.swl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.swm = fdiv fast float 1.000000e+00, %i.swh
  %i.swn = fadd fast float %i.swk, %i.swm
  %i.swo = fcmp fast ogt float %.22336.lcssa, %i.swn
  br i1 %i.swo, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.swp = fmul fast float %i.swh, %.22336.lcssa
  %i.swq = fadd fast float %i.swp, %i.swi
  %i.swr = fmul fast float %i.swq, %.22336.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.hr, %bb.hk, %bb.hl, %bb.hm, %bb.hn, %bb.ho, %bb.hp, %bb.hq, %bb.hs, %bb.ht
  %.14951 = phi nsz float [ %.22336.lcssa, %bb.hk ], [ %i.svq, %bb.hl ], [ %i.svu, %bb.hm ], [ %i.svw, %bb.ho ], [ %.04950, %bb.hn ], [ %i.swb, %bb.hp ], [ %i.swg, %bb.hq ], [ %i.swr, %bb.ht ], [ %.22336.lcssa, %bb.hs ], [ 0.000000e+00, %bb.hr ]
  %i.sws = bitcast float %.14951 to i32
  %i.swt = lshr i32 %i.sws, 16
  %i.swu = trunc nuw i32 %i.swt to i16
  store i16 %i.swu, ptr %.624349700, align 2, !tbaa !76
  %i.swv = getelementptr inbounds nuw i8, ptr %.624349700, i64 2
  br label %bb.hv

bb.hu:                                            ; preds = %._crit_edge9697
  store float %.22336.lcssa, ptr %.249703, align 4, !tbaa !74
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.72435 = phi ptr [ %i.swv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.624349700, %bb.hu ]
  %i.sww = getelementptr inbounds nuw i8, ptr %.249703, i64 4 ; 2 uses
  %i.swx = add nuw nsw i32 %.324159702, 1         ; 2 uses
  %exitcond10038.not = icmp eq i32 %i.swx, %5
  br i1 %exitcond10038.not, label %._crit_edge9705, label %bb.hi, !llvm.loop !569

._crit_edge9705:                                  ; preds = %bb.hv, %.preheader8884
  %.24.lcssa = phi ptr [ %.23.lcssa, %.preheader8884 ], [ %i.sww, %bb.hv ]
  %i.swy = getelementptr inbounds [2 x i8], ptr %.49710, i64 %i.otj
  %indvars.iv.next10040 = add nsw i64 %indvars.iv10039, 1 ; 2 uses
  %exitcond10042.not = icmp eq i64 %indvars.iv.next10040, %wide.trip.count
  br i1 %exitcond10042.not, label %._crit_edge9712, label %bb.fr, !llvm.loop !570

._crit_edge9712:                                  ; preds = %._crit_edge9705, %.preheader8887
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 14 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115  ; 58 uses
  %i.e = add nsw i32 %5, -1
  %i.f = mul nsw i32 %7, %i.e
  %.neg = xor i32 %i.f, -1
  %i.g = add i32 %i.b, %.neg
  %i.h = sdiv i32 %i.g, %9
  %i.i = add nsw i32 %i.h, 1                      ; 58 uses
  %i.j = mul nsw i32 %6, %5                       ; 38 uses
  %factor.op.mul1324 = mul i32 %i.d, %9           ; 4 uses
  %i.k = icmp sgt i32 %2, 15
  br i1 %i.k, label %.lr.ph, label %.preheader1302

.lr.ph:                                           ; preds = %bb.a
  %i.l = icmp ne i32 %i.d, 1                      ; 4 uses
  %i.m = icmp slt i32 %4, 2                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = sext i32 %9 to i64                       ; 3 uses
  %i.q = shl nsw i32 %9, 1
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = mul nsw i32 %9, 3
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = shl nsw i32 %9, 2
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = mul nsw i32 %9, 5
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = mul nsw i32 %9, 6
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = mul nsw i32 %9, 7
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = shl nsw i32 %9, 3
  %i.ad = sext i32 %i.ac to i64                   ; 5 uses
  %i.ae = mul nsw i32 %9, 9
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = mul nsw i32 %9, 10
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = mul nsw i32 %9, 11
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = mul nsw i32 %9, 12
  %i.al = sext i32 %i.ak to i64                   ; 4 uses
  %i.am = mul nsw i32 %9, 13
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = mul nsw i32 %9, 14
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = mul nsw i32 %9, 15
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %factor.op.mul1319 = mul i32 %7, %i.d
  %i.as = shl nsw i32 %9, 4
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = mul nsw i32 %9, 20
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i32 %9, 24
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = mul nsw i32 %9, 28
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i32 %9, 5
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = mul nsw i32 %9, 36
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i32 %9, 40
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul nsw i32 %9, 44
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i32 %9, 48
  %i.bj = sext i32 %i.bi to i64                   ; 3 uses
  %i.bk = mul nsw i32 %9, 52
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i32 %9, 56
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = mul nsw i32 %9, 60
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i32 %9, 6
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul nsw i32 %9, 72
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i32 %9, 80
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = mul nsw i32 %9, 88
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i32 %9, 96
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = mul nsw i32 %9, 104
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i32 %9, 112
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = mul nsw i32 %9, 120
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i32 %9, 7
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i32 %9, 144
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul nsw i32 %9, 160
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i32 %9, 176
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i32 %9, 192
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i32 %9, 208
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i32 %9, 224
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i32 %9, 240
  %i.cv = sext i32 %i.cu to i64
  %brmerge1391 = or i1 %i.l, %i.m
  %brmerge = or i1 %i.l, %i.m
  br label %bb.b

.preheader1302:                                   ; preds = %.loopexit1303, %bb.a
  %.02758.lcssa = phi i32 [ 0, %bb.a ], [ %i.bwn, %.loopexit1303 ] ; 3 uses
  %.02757.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.15, %.loopexit1303 ] ; 2 uses
  %i.cw = or disjoint i32 %.02758.lcssa, 7
  %i.cx = icmp slt i32 %i.cw, %2
  br i1 %i.cx, label %.lr.ph1349, label %.preheader1295

.lr.ph1349:                                       ; preds = %.preheader1302
  %i.cy = icmp ne i32 %i.d, 1                     ; 4 uses
  %i.cz = icmp slt i32 %4, 2                      ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.dc = sext i32 %9 to i64                      ; 3 uses
  %i.dd = shl nsw i32 %9, 1
  %i.de = sext i32 %i.dd to i64                   ; 3 uses
  %i.df = mul nsw i32 %9, 3
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = shl nsw i32 %9, 2
  %i.di = sext i32 %i.dh to i64                   ; 4 uses
  %i.dj = mul nsw i32 %9, 5
  %i.dk = sext i32 %i.dj to i64                   ; 3 uses
  %i.dl = mul nsw i32 %9, 6
  %i.dm = sext i32 %i.dl to i64                   ; 3 uses
  %i.dn = mul nsw i32 %9, 7
  %i.do = sext i32 %i.dn to i64                   ; 3 uses
  %factor.op.mul1340 = mul i32 %7, %i.d
  %i.dp = shl nsw i32 %9, 3
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = mul nsw i32 %9, 12
  %i.ds = sext i32 %i.dr to i64
  %i.dt = shl nsw i32 %9, 4
  %i.du = sext i32 %i.dt to i64                   ; 3 uses
  %i.dv = mul nsw i32 %9, 20
  %i.dw = sext i32 %i.dv to i64
  %i.dx = mul nsw i32 %9, 24
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = mul nsw i32 %9, 28
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i32 %9, 5
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = mul nsw i32 %9, 40
  %i.ee = sext i32 %i.ed to i64
  %i.ef = mul nsw i32 %9, 48
  %i.eg = sext i32 %i.ef to i64                   ; 2 uses
  %i.eh = mul nsw i32 %9, 56
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i32 %9, 6
  %i.ek = sext i32 %i.ej to i64
  %i.el = mul nsw i32 %9, 80
  %i.em = sext i32 %i.el to i64
  %i.en = mul nsw i32 %9, 96
  %i.eo = sext i32 %i.en to i64
  %i.ep = mul nsw i32 %9, 112
  %i.eq = sext i32 %i.ep to i64
  %brmerge1397 = or i1 %i.cy, %i.cz
  %brmerge1394 = or i1 %i.cy, %i.cz
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %.loopexit1303
  %.027571326 = phi ptr [ %.0.val, %.lr.ph ], [ %.15, %.loopexit1303 ] ; 4 uses
  %.027581325 = phi i32 [ 0, %.lr.ph ], [ %i.bwn, %.loopexit1303 ] ; 2 uses
  %i.er = add nsw i32 %.027581325, %1             ; 17 uses
  %i.es = sdiv i32 %i.er, %i.i                    ; 5 uses
  %i.et = add nsw i32 %i.er, 1                    ; 2 uses
  %i.eu = sdiv i32 %i.et, %i.i                    ; 2 uses
  %i.ev = add nsw i32 %i.er, 2                    ; 2 uses
  %i.ew = sdiv i32 %i.ev, %i.i                    ; 2 uses
  %i.ex = add nsw i32 %i.er, 3                    ; 2 uses
  %i.ey = sdiv i32 %i.ex, %i.i                    ; 2 uses
  %i.ez = add nsw i32 %i.er, 4                    ; 2 uses
  %i.fa = sdiv i32 %i.ez, %i.i                    ; 2 uses
  %i.fb = add nsw i32 %i.er, 5                    ; 2 uses
  %i.fc = sdiv i32 %i.fb, %i.i                    ; 2 uses
  %i.fd = add nsw i32 %i.er, 6                    ; 2 uses
  %i.fe = sdiv i32 %i.fd, %i.i                    ; 2 uses
  %i.ff = add nsw i32 %i.er, 7                    ; 2 uses
  %i.fg = sdiv i32 %i.ff, %i.i                    ; 2 uses
  %i.fh = add nsw i32 %i.er, 8                    ; 2 uses
  %i.fi = sdiv i32 %i.fh, %i.i                    ; 2 uses
  %i.fj = add nsw i32 %i.er, 9                    ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN4ncnnL48conv3x3s1_winograd23_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.bv:                                            ; preds = %bb.bu
  %i.bsv = load float, ptr %i.bot, align 4, !tbaa !74 ; 5 uses
  %i.bsw = load float, ptr %i.bou, align 4, !tbaa !74 ; 3 uses
  %i.bsx = fneg fast float %i.bsw
  %i.bsy = fdiv fast float %i.bsx, %i.bsv         ; 4 uses
  %i.bsz = fcmp fast olt float %i.brn, %i.bsy
  br i1 %i.bsz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.bta = fdiv fast float 1.000000e+00, %i.bsv
  %i.btb = fadd fast float %i.bsy, %i.bta
  %i.btc = fcmp fast ogt float %i.brn, %i.btb
  br i1 %i.btc, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.btd = fmul fast float %i.bsv, %i.brn
  %i.bte = fadd fast float %i.btd, %i.bsw
  %i.btf = fmul fast float %i.bte, %i.brn
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread

bb.by:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread: ; preds = %bb.bx, %bb.bw, %bb.bv
  %.1652809 = phi float [ %i.btf, %bb.bx ], [ 0.000000e+00, %bb.bv ], [ %i.brn, %bb.bw ] ; 3 uses
  %i.btg = fcmp fast olt float %i.brp, %i.bsy
  br i1 %i.btg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread
  %i.bth = fdiv fast float 1.000000e+00, %i.bsv
  %i.bti = fadd fast float %i.bsy, %i.bth
  %i.btj = fcmp fast ogt float %i.brp, %i.bti
  br i1 %i.btj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.btk = fmul fast float %i.bsv, %i.brp
  %i.btl = fadd fast float %i.btk, %i.bsw
  %i.btm = fmul fast float %i.btl, %i.brp
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.bu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813, %bb.by, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825, %bb.bz, %bb.ca
  %.1652810 = phi float [ %.1652809, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread ], [ %i.brq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816 ], [ %i.brv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819 ], [ %.1652815, %bb.by ], [ %.1652815, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813 ], [ %i.bsg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822 ], [ %i.bsp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825 ], [ %.1652809, %bb.ca ], [ %.1652809, %bb.bz ], [ %i.brn, %bb.bu ]
  %.1654 = phi nsz float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread ], [ %i.brr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816 ], [ %i.bry, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819 ], [ %i.bsa, %bb.by ], [ %.0653, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813 ], [ %i.bsk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822 ], [ %i.bsu, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825 ], [ %i.btm, %bb.ca ], [ %i.brp, %bb.bz ], [ %i.brp, %bb.bu ]
  %i.btn = bitcast float %.1652810 to i32
  %i.bto = lshr i32 %i.btn, 16
  %i.btp = trunc nuw i32 %i.bto to i16
  store i16 %i.btp, ptr %i.bqt, align 2, !tbaa !76
  br i1 %i.bqv, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.btq = bitcast float %.1654 to i32
  %i.btr = lshr i32 %i.btq, 16
  %i.bts = trunc nuw i32 %i.btr to i16
  %i.btt = getelementptr inbounds nuw i8, ptr %i.bqt, i64 2
  store i16 %i.bts, ptr %i.btt, align 2, !tbaa !76
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.btu = getelementptr inbounds [2 x i8], ptr %i.bqt, i64 %i.bbj
  br label %bb.cd

bb.cd:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.cc
  %.1 = phi ptr [ %i.bqt, %_ZN4ncnn3MatD2Ev.exit ], [ %i.btu, %bb.cc ] ; 2 uses
  %i.btv = or disjoint i32 %i.bqo, 1
  %.not727.1 = icmp slt i32 %i.btv, %i.g
  br i1 %.not727.1, label %bb.ce, label %bb.cm

bb.ce:                                            ; preds = %bb.cd
  %i.btw = fadd fast float %i.bpt, %i.bon         ; 2 uses
  %i.btx = fadd fast float %i.btw, %i.bpl
  %i.bty = fadd fast float %i.btx, %i.bqb         ; 13 uses
  %i.btz = fsub fast float %i.btw, %i.bqb
  %i.bua = fadd fast float %i.btz, %i.bqj         ; 13 uses
  switch i32 %6, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1 [
    i32 1, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816.1
    i32 2, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819.1
    i32 3, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813.1
    i32 4, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822.1
    i32 5, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825.1
    i32 6, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.bub = load float, ptr %i.boy, align 4, !tbaa !74 ; 5 uses
  %i.buc = load float, ptr %i.boz, align 4, !tbaa !74 ; 3 uses
  %i.bud = fneg fast float %i.buc
  %i.bue = fdiv fast float %i.bud, %i.bub         ; 4 uses
  %i.buf = fcmp fast olt float %i.bty, %i.bue
  br i1 %i.buf, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.bug = fdiv fast float 1.000000e+00, %i.bub
  %i.buh = fadd fast float %i.bue, %i.bug
  %i.bui = fcmp fast ogt float %i.bty, %i.buh
  br i1 %i.bui, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.buj = fmul fast float %i.bub, %i.bty
  %i.buk = fadd fast float %i.buj, %i.buc
  %i.bul = fmul fast float %i.buk, %i.bty
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1: ; preds = %bb.ch, %bb.cg, %bb.cf
  %.1652809.1 = phi float [ %i.bul, %bb.ch ], [ 0.000000e+00, %bb.cf ], [ %i.bty, %bb.cg ] ; 3 uses
  %i.bum = fcmp fast olt float %i.bua, %i.bue
  br i1 %i.bum, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1, label %bb.ci

bb.ci:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1
  %i.bun = fdiv fast float 1.000000e+00, %i.bub
  %i.buo = fadd fast float %i.bue, %i.bun
  %i.bup = fcmp fast ogt float %i.bua, %i.buo
  br i1 %i.bup, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.buq = fmul fast float %i.bub, %i.bua
  %i.bur = fadd fast float %i.buq, %i.buc
  %i.bus = fmul fast float %i.bur, %i.bua
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825.1: ; preds = %bb.ce
  %i.but = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bty)
  %i.buu = fadd fast float %i.but, 1.000000e+00
  %i.buv = tail call fast float @llvm.log.f32(float %i.buu)
  %i.buw = tail call fast float @llvm.tanh.f32(float %i.buv)
  %i.bux = fmul fast float %i.buw, %i.bty
  %i.buy = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.bua)
  %i.buz = fadd fast float %i.buy, 1.000000e+00
  %i.bva = tail call fast float @llvm.log.f32(float %i.buz)
  %i.bvb = tail call fast float @llvm.tanh.f32(float %i.bva)
  %i.bvc = fmul fast float %i.bvb, %i.bua
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822.1: ; preds = %bb.ce
  %.sroa.speculated135.1 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.bty, float f0x42B0C0A5)
  %.sroa.speculated131.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated135.1, float f0xC2B0C0A5)
  %i.bvd = fneg fast float %.sroa.speculated131.1
  %i.bve = tail call fast float @llvm.exp.f32(float %i.bvd)
  %i.bvf = fadd fast float %i.bve, 1.000000e+00
  %i.bvg = fdiv fast float 1.000000e+00, %i.bvf
  %.sroa.speculated121.1 = tail call nnan ninf nsz float @llvm.minnum.f32(float %i.bua, float f0x42B0C0A5)
  %.sroa.speculated.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated121.1, float f0xC2B0C0A5)
  %i.bvh = fneg fast float %.sroa.speculated.1
  %i.bvi = tail call fast float @llvm.exp.f32(float %i.bvh)
  %i.bvj = fadd fast float %i.bvi, 1.000000e+00
  %i.bvk = fdiv fast float 1.000000e+00, %i.bvj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813.1: ; preds = %bb.ce
  %i.bvl = load float, ptr %i.bpa, align 4, !tbaa !74 ; 2 uses
  %i.bvm = load float, ptr %i.bpb, align 4, !tbaa !74 ; 4 uses
  %.0651.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bty, float %i.bvl) ; 2 uses
  %i.bvn = fcmp fast ogt float %.0651.1, %i.bvm
  %.1652815.1 = select i1 %i.bvn, float %i.bvm, float %.0651.1 ; 2 uses
  %.0653.1 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.bua, float %i.bvl) ; 2 uses
  %i.bvo = fcmp fast ogt float %.0653.1, %i.bvm
  br i1 %i.bvo, label %bb.ck, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

bb.ck:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813.1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819.1: ; preds = %bb.ce
  %i.bvp = load float, ptr %i.bpc, align 4, !tbaa !74 ; 2 uses
  %i.bvq = fcmp fast ogt float %i.bty, 0.000000e+00
  %i.bvr = select fast i1 %i.bvq, float 1.000000e+00, float %i.bvp
  %i.bvs = fmul fast float %i.bvr, %i.bty
  %i.bvt = fcmp fast ogt float %i.bua, 0.000000e+00
  %i.bvu = select fast i1 %i.bvt, float 1.000000e+00, float %i.bvp
  %i.bvv = fmul fast float %i.bvu, %i.bua
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816.1: ; preds = %bb.ce
  %i.bvw = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.bty, float 0.000000e+00)
  %i.bvx = tail call fast float @llvm.maxnum.f32(float nofpclass(nan inf) %i.bua, float 0.000000e+00)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1

_ZL13activation_ssfiRKN4ncnn3MatE.exit.1:         ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819.1, %bb.ck, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825.1, %bb.cj, %bb.ci, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1, %bb.ce
  %.1652810.1 = phi float [ %.1652809.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1 ], [ %i.bvw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816.1 ], [ %i.bvs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819.1 ], [ %.1652815.1, %bb.ck ], [ %.1652815.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813.1 ], [ %i.bvg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822.1 ], [ %i.bux, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825.1 ], [ %.1652809.1, %bb.cj ], [ %.1652809.1, %bb.ci ], [ %i.bty, %bb.ce ]
  %.1654.1 = phi nsz float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread.1 ], [ %i.bvx, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread816.1 ], [ %i.bvv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread819.1 ], [ %i.bvm, %bb.ck ], [ %.0653.1, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread813.1 ], [ %i.bvk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread822.1 ], [ %i.bvc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit800.thread825.1 ], [ %i.bus, %bb.cj ], [ %i.bua, %bb.ci ], [ %i.bua, %bb.ce ]
  %i.bvy = bitcast float %.1652810.1 to i32
  %i.bvz = lshr i32 %i.bvy, 16
  %i.bwa = trunc nuw i32 %i.bvz to i16
  store i16 %i.bwa, ptr %.1, align 2, !tbaa !76
  br i1 %i.bqv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1
  %i.bwb = bitcast float %.1654.1 to i32
  %i.bwc = lshr i32 %i.bwb, 16
  %i.bwd = trunc nuw i32 %i.bwc to i16
  %i.bwe = getelementptr inbounds nuw i8, ptr %.1, i64 2
  store i16 %i.bwd, ptr %i.bwe, align 2, !tbaa !76
  br label %bb.cm

bb.cm:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.1, %bb.cl, %bb.cd
  %indvars.iv.next1012 = add nuw nsw i64 %indvars.iv1011, 1 ; 2 uses
  %exitcond1015.not = icmp eq i64 %indvars.iv.next1012, %wide.trip.count1014
  br i1 %exitcond1015.not, label %._crit_edge925, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !672

._crit_edge925:                                   ; preds = %bb.cm, %bb.bt
  %indvars.iv.next1017 = add nsw i64 %indvars.iv1016, 1 ; 2 uses
  %exitcond1020.not = icmp eq i64 %indvars.iv.next1017, %wide.trip.count1019
  br i1 %exitcond1020.not, label %._crit_edge932, label %bb.br, !llvm.loop !673

._crit_edge932:                                   ; preds = %._crit_edge925, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn37conv3x3s1_winograd23_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %7) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %5, ptr %i.d, align 4, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !113
  %i.q = add nsw <2 x i32> %i.p, splat (i32 1)
  %i.r = sdiv <2 x i32> %i.q, splat (i32 2)       ; 2 uses
  %shift = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.r
  %i.s = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !115
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  store i32 %i.x, ptr %i.e, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 %i.s, ptr %i.f, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !115
  %i.ac = mul nsw i32 %i.ab, %i.z                 ; 3 uses
  store i32 %i.ac, ptr %i.g, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %i.x, i32 noundef %i.s, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !113 ; 2 uses
  %i.ae = add i32 %i.x, -1
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = sdiv i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !113
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !113 ; 4 uses
  %i.ai = add i32 %i.s, -1
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = sdiv i32 %i.aj, %i.ah                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.al = load i32, ptr %i.j, align 4, !tbaa !113 ; 4 uses
  %i.am = add i32 %i.ac, -1
  %i.an = add i32 %i.am, %i.al
  %i.ao = sdiv i32 %i.an, %i.al                   ; 3 uses
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ap = mul nsw i32 %i.al, %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !397
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.av, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ap, i32 noundef 16, i32 noundef %i.ao, i32 noundef %i.ak, i64 noundef 4, ptr noundef %i.ar)
  %i.az = load ptr, ptr %8, align 8, !tbaa !9
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit172.i

_ZNK4ncnn3Mat5emptyEv.exit172.i:                  ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !18
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !116
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.bc, %i.be
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.bh = mul nsw i32 %i.ao, %i.ak                ; 2 uses
  store i32 %i.bh, ptr %i.m, align 4, !tbaa !113
  %i.bi = icmp sgt i32 %4, 1
  %i.bj = icmp slt i32 %i.bh, %4
  %or.cond.i = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = shl nsw i32 %i.ah, 4
  %i.bl = mul nsw i32 %i.al, %i.bk                ; 2 uses
  br i1 %or.cond.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !397
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bo, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.bl, i64 noundef 4, ptr noundef %i.bm)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.d

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %bb.c
  %i.br = load ptr, ptr %9, align 8, !tbaa !9
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit171.i

_ZNK4ncnn3Mat5emptyEv.exit171.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.bu = load i32, ptr %i.bp, align 8, !tbaa !116
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul i64 %i.bt, %i.bv
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4ncnn3Mat5emptyEv.exit171.i
  %i.by = load i32, ptr %i.m, align 4, !tbaa !113
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.noexc.lr.ph.i, label %._crit_edge.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %.noexc.i

bb.d:                                             ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.av

.noexc.i:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit91.i, %.noexc.lr.ph.i
  %.0195.i = phi i32 [ 0, %.noexc.lr.ph.i ], [ %i.ec, %_ZN4ncnn3MatD2Ev.exit91.i ] ; 3 uses
  %i.ci = load i32, ptr %i.l, align 4, !tbaa !113 ; 2 uses
  %i.cj = sdiv i32 %.0195.i, %i.ci
  %i.ck = srem i32 %.0195.i, %i.ci
  %i.cl = load i32, ptr %i.i, align 4, !tbaa !113 ; 2 uses
  %i.cm = mul nsw i32 %i.cl, %i.cj                ; 3 uses
  %i.cn = load i32, ptr %i.j, align 4, !tbaa !113 ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.ck                ; 3 uses
  %i.cp = load i32, ptr %i.f, align 4, !tbaa !113
  %i.cq = sub nsw i32 %i.cp, %i.cm
  %.sroa.speculated192.i = call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.cq) ; 2 uses
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !113
  %i.cs = sub nsw i32 %i.cr, %i.co
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cs) ; 2 uses
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.cm, i32 noundef %.sroa.speculated192.i, i32 noundef %i.co, i32 noundef %.sroa.speculated.i, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.ct = load i32, ptr %i.i, align 4, !tbaa !113
  %i.cu = sdiv i32 %i.cm, %i.ct
  %i.cv = load ptr, ptr %8, align 8, !tbaa !9, !noalias !674
  %i.cw = load i64, ptr %i.ay, align 8, !tbaa !18, !noalias !674
  %i.cx = sext i32 %i.cu to i64
  %i.cy = mul i64 %i.cw, %i.cx
  %i.cz = load i64, ptr %i.at, align 8, !tbaa !19, !noalias !674 ; 3 uses
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.da
  %i.dc = load i32, ptr %i.au, align 8, !tbaa !115, !noalias !674
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !344, !noalias !674
  %i.de = load i32, ptr %i.j, align 4, !tbaa !113
  %i.df = sdiv i32 %i.co, %i.de
  %i.dg = sext i32 %i.df to i64
  store ptr null, ptr %i.ca, align 8, !tbaa !343, !alias.scope !677
  store i64 %i.cz, ptr %i.cb, align 8, !tbaa !19, !alias.scope !677
  store i32 %i.dc, ptr %i.cc, align 8, !tbaa !115, !alias.scope !677
  store ptr %i.dd, ptr %i.cd, align 8, !tbaa !344, !alias.scope !677
  %i.dh = load <2 x i32>, ptr %i.aw, align 4, !tbaa !113, !noalias !674
  %i.di = load i32, ptr %i.ax, align 8, !tbaa !118, !noalias !674
  %i.dj = load i32, ptr %i.aw, align 4, !tbaa !114, !noalias !674
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sext i32 %i.di to i64
end_hunk_4
begin_hunk_5_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_RS0_iiiii:bb.a
  %i.bep = or disjoint i32 %i.beo, 1
  %i.beq = icmp slt i32 %i.bep, %4
  br i1 %i.beq, label %.lr.ph1040, label %.preheader501, !llvm.loop !758

.lr.ph1058:                                       ; preds = %.lr.ph1058.preheader, %._crit_edge1051
  %.271057 = phi ptr [ %i.bgx, %._crit_edge1051 ], [ %.26.lcssa, %.lr.ph1058.preheader ] ; 5 uses
  %.410041056 = phi i32 [ %i.bgy, %._crit_edge1051 ], [ %.31003.lcssa, %.lr.ph1058.preheader ]
  %.810131055 = phi ptr [ %.91014.lcssa, %._crit_edge1051 ], [ %.61011.lcssa, %.lr.ph1058.preheader ] ; 7 uses
  br i1 %i.adl, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph1058
  %i.ber = load float, ptr %.271057, align 4, !tbaa !74
  %i.bes = getelementptr inbounds nuw i8, ptr %.271057, i64 4
  %i.bet = load float, ptr %i.bes, align 4, !tbaa !74
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph1058, %bb.as
  %.0909 = phi nsz float [ %i.ber, %bb.as ], [ 0.000000e+00, %.lr.ph1058 ] ; 4 uses
  %.0907 = phi nsz float [ %i.bet, %bb.as ], [ 0.000000e+00, %.lr.ph1058 ] ; 4 uses
  br i1 %i.adm, label %iter.check, label %._crit_edge1051

iter.check:                                       ; preds = %bb.at
  br i1 %min.iters.check, label %.lr.ph1050.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1859, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.beu = getelementptr i8, ptr %.810131055, i64 %i.aej
  %i.bev = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0907, i64 0
  %i.bew = insertelement <16 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.0909, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <16 x float> [ %i.bev, %vector.ph ], [ %i.bfr, %vector.body ]
  %vec.phi1860 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfs, %vector.body ]
  %vec.phi1861 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bft, %vector.body ]
  %vec.phi1862 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfu, %vector.body ]
  %vec.phi1863 = phi <16 x float> [ %i.bew, %vector.ph ], [ %i.bfj, %vector.body ]
  %vec.phi1864 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfk, %vector.body ]
  %vec.phi1865 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfl, %vector.body ]
  %vec.phi1866 = phi <16 x float> [ zeroinitializer, %vector.ph ], [ %i.bfm, %vector.body ]
  %i.bex = shl i64 %index, 3                      ; 4 uses
  %next.gep = getelementptr i8, ptr %i.atv, i64 %i.bex
  %i.bey = getelementptr i8, ptr %i.atv, i64 %i.bex
  %next.gep1867 = getelementptr i8, ptr %i.bey, i64 128
  %i.bez = getelementptr i8, ptr %i.atv, i64 %i.bex
  %next.gep1868 = getelementptr i8, ptr %i.bez, i64 256
  %i.bfa = getelementptr i8, ptr %i.atv, i64 %i.bex
  %next.gep1869 = getelementptr i8, ptr %i.bfa, i64 384
  %i.bfb = shl i64 %index, 2
  %next.gep1870 = getelementptr i8, ptr %.810131055, i64 %i.bfb ; 4 uses
  %wide.vec = load <32 x float>, ptr %next.gep, align 4, !tbaa !74 ; 2 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1871 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1872 = load <32 x float>, ptr %next.gep1867, align 4, !tbaa !74 ; 2 uses
  %strided.vec1873 = shufflevector <32 x float> %wide.vec1872, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1874 = shufflevector <32 x float> %wide.vec1872, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1875 = load <32 x float>, ptr %next.gep1868, align 4, !tbaa !74 ; 2 uses
  %strided.vec1876 = shufflevector <32 x float> %wide.vec1875, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1877 = shufflevector <32 x float> %wide.vec1875, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %wide.vec1878 = load <32 x float>, ptr %next.gep1869, align 4, !tbaa !74 ; 2 uses
  %strided.vec1879 = shufflevector <32 x float> %wide.vec1878, <32 x float> poison, <16 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16, i32 18, i32 20, i32 22, i32 24, i32 26, i32 28, i32 30>
  %strided.vec1880 = shufflevector <32 x float> %wide.vec1878, <32 x float> poison, <16 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15, i32 17, i32 19, i32 21, i32 23, i32 25, i32 27, i32 29, i32 31>
  %i.bfc = getelementptr i8, ptr %next.gep1870, i64 64
  %i.bfd = getelementptr i8, ptr %next.gep1870, i64 128
  %i.bfe = getelementptr i8, ptr %next.gep1870, i64 192
  %wide.load = load <16 x float>, ptr %next.gep1870, align 4, !tbaa !74 ; 2 uses
  %wide.load1881 = load <16 x float>, ptr %i.bfc, align 4, !tbaa !74 ; 2 uses
  %wide.load1882 = load <16 x float>, ptr %i.bfd, align 4, !tbaa !74 ; 2 uses
  %wide.load1883 = load <16 x float>, ptr %i.bfe, align 4, !tbaa !74 ; 2 uses
  %i.bff = fmul fast <16 x float> %wide.load, %strided.vec
  %i.bfg = fmul fast <16 x float> %wide.load1881, %strided.vec1873
  %i.bfh = fmul fast <16 x float> %wide.load1882, %strided.vec1876
  %i.bfi = fmul fast <16 x float> %wide.load1883, %strided.vec1879
  %i.bfj = fadd fast <16 x float> %i.bff, %vec.phi1863 ; 2 uses
  %i.bfk = fadd fast <16 x float> %i.bfg, %vec.phi1864 ; 2 uses
  %i.bfl = fadd fast <16 x float> %i.bfh, %vec.phi1865 ; 2 uses
  %i.bfm = fadd fast <16 x float> %i.bfi, %vec.phi1866 ; 2 uses
  %i.bfn = fmul fast <16 x float> %strided.vec1871, %wide.load
  %i.bfo = fmul fast <16 x float> %strided.vec1874, %wide.load1881
  %i.bfp = fmul fast <16 x float> %strided.vec1877, %wide.load1882
  %i.bfq = fmul fast <16 x float> %strided.vec1880, %wide.load1883
  %i.bfr = fadd fast <16 x float> %i.bfn, %vec.phi ; 2 uses
  %i.bfs = fadd fast <16 x float> %i.bfo, %vec.phi1860 ; 2 uses
  %i.bft = fadd fast <16 x float> %i.bfp, %vec.phi1861 ; 2 uses
  %i.bfu = fadd fast <16 x float> %i.bfq, %vec.phi1862 ; 2 uses
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.bfv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bfv, label %middle.block, label %vector.body, !llvm.loop !759

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <16 x float> %i.bfs, %i.bfr
  %bin.rdx1884 = fadd fast <16 x float> %i.bft, %bin.rdx
  %bin.rdx1885 = fadd fast <16 x float> %i.bfu, %bin.rdx1884
  %i.bfw = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1885) ; 3 uses
  %bin.rdx1886 = fadd fast <16 x float> %i.bfk, %i.bfj
  %bin.rdx1887 = fadd fast <16 x float> %i.bfl, %bin.rdx1886
  %bin.rdx1888 = fadd fast <16 x float> %i.bfm, %bin.rdx1887
  %i.bfx = tail call fast float @llvm.vector.reduce.fadd.v16f32(float 0.000000e+00, <16 x float> %bin.rdx1888) ; 3 uses
  br i1 %cmp.n, label %._crit_edge1051.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph1050.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.bfw, %vec.epilog.iter.check ], [ %.0907, %vector.main.loop.iter.check ]
  %bc.merge.rdx1889 = phi float [ %i.bfx, %vec.epilog.iter.check ], [ %.0909, %vector.main.loop.iter.check ]
  %i.bfy = getelementptr i8, ptr %.810131055, i64 %i.aem
  %i.bfz = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  %i.bga = insertelement <8 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx1889, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1893 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1902, %vec.epilog.vector.body ] ; 3 uses
  %vec.phi1894 = phi <8 x float> [ %i.bfz, %vec.epilog.ph ], [ %i.bgg, %vec.epilog.vector.body ]
  %vec.phi1895 = phi <8 x float> [ %i.bga, %vec.epilog.ph ], [ %i.bge, %vec.epilog.vector.body ]
  %i.bgb = shl i64 %index1893, 3
  %next.gep1896 = getelementptr i8, ptr %i.atv, i64 %i.bgb
  %i.bgc = shl i64 %index1893, 2
  %next.gep1897 = getelementptr i8, ptr %.810131055, i64 %i.bgc
  %wide.vec1898 = load <16 x float>, ptr %next.gep1896, align 4, !tbaa !74 ; 2 uses
  %strided.vec1899 = shufflevector <16 x float> %wide.vec1898, <16 x float> poison, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14>
  %strided.vec1900 = shufflevector <16 x float> %wide.vec1898, <16 x float> poison, <8 x i32> <i32 1, i32 3, i32 5, i32 7, i32 9, i32 11, i32 13, i32 15>
  %wide.load1901 = load <8 x float>, ptr %next.gep1897, align 4, !tbaa !74 ; 2 uses
  %i.bgd = fmul fast <8 x float> %wide.load1901, %strided.vec1899
  %i.bge = fadd fast <8 x float> %i.bgd, %vec.phi1895 ; 2 uses
  %i.bgf = fmul fast <8 x float> %strided.vec1900, %wide.load1901
  %i.bgg = fadd fast <8 x float> %i.bgf, %vec.phi1894 ; 2 uses
  %index.next1902 = add nuw i64 %index1893, 8     ; 2 uses
  %i.bgh = icmp eq i64 %index.next1902, %n.vec1892
  br i1 %i.bgh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !760

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bgi = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bgg) ; 2 uses
  %i.bgj = tail call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %i.bge) ; 2 uses
  br i1 %cmp.n1903, label %._crit_edge1051.loopexit, label %.lr.ph1050.preheader

.lr.ph1050.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09061048.ph = phi i32 [ 0, %iter.check ], [ %i.aeh, %vec.epilog.iter.check ], [ %i.aek, %vec.epilog.middle.block ]
  %.19081047.ph = phi float [ %.0907, %iter.check ], [ %i.bfw, %vec.epilog.iter.check ], [ %i.bgi, %vec.epilog.middle.block ]
  %.19101046.ph = phi float [ %.0909, %iter.check ], [ %i.bfx, %vec.epilog.iter.check ], [ %i.bgj, %vec.epilog.middle.block ]
  %.09111045.ph = phi ptr [ %i.atv, %iter.check ], [ %i.bbo, %vec.epilog.iter.check ], [ %i.bbp, %vec.epilog.middle.block ]
  %.910141044.ph = phi ptr [ %.810131055, %iter.check ], [ %i.beu, %vec.epilog.iter.check ], [ %i.bfy, %vec.epilog.middle.block ]
  br label %.lr.ph1050

.lr.ph1050:                                       ; preds = %.lr.ph1050.preheader, %.lr.ph1050
  %.09061048 = phi i32 [ %i.bgu, %.lr.ph1050 ], [ %.09061048.ph, %.lr.ph1050.preheader ]
  %.19081047 = phi float [ %i.bgr, %.lr.ph1050 ], [ %.19081047.ph, %.lr.ph1050.preheader ]
  %.19101046 = phi float [ %i.bgn, %.lr.ph1050 ], [ %.19101046.ph, %.lr.ph1050.preheader ]
  %.09111045 = phi ptr [ %i.bgs, %.lr.ph1050 ], [ %.09111045.ph, %.lr.ph1050.preheader ] ; 3 uses
  %.910141044 = phi ptr [ %i.bgt, %.lr.ph1050 ], [ %.910141044.ph, %.lr.ph1050.preheader ] ; 2 uses
  %i.bgk = load float, ptr %.09111045, align 4, !tbaa !74
  %i.bgl = load float, ptr %.910141044, align 4, !tbaa !74 ; 2 uses
  %i.bgm = fmul fast float %i.bgl, %i.bgk
  %i.bgn = fadd fast float %i.bgm, %.19101046     ; 2 uses
  %i.bgo = getelementptr inbounds nuw i8, ptr %.09111045, i64 4
  %i.bgp = load float, ptr %i.bgo, align 4, !tbaa !74
  %i.bgq = fmul fast float %i.bgp, %i.bgl
  %i.bgr = fadd fast float %i.bgq, %.19081047     ; 2 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %.09111045, i64 8
  %i.bgt = getelementptr inbounds nuw i8, ptr %.910141044, i64 4
  %i.bgu = add nuw nsw i32 %.09061048, 1          ; 2 uses
  %exitcond1461.not = icmp eq i32 %i.bgu, %6
  br i1 %exitcond1461.not, label %._crit_edge1051.loopexit, label %.lr.ph1050, !llvm.loop !761

._crit_edge1051.loopexit:                         ; preds = %.lr.ph1050, %vec.epilog.middle.block, %middle.block
  %.lcssa1740 = phi float [ %i.bgj, %vec.epilog.middle.block ], [ %i.bfx, %middle.block ], [ %i.bgn, %.lr.ph1050 ]
  %.lcssa1739 = phi float [ %i.bgi, %vec.epilog.middle.block ], [ %i.bfw, %middle.block ], [ %i.bgr, %.lr.ph1050 ]
  %i.bgv = getelementptr i8, ptr %.810131055, i64 %i.adu
  %scevgep1460 = getelementptr i8, ptr %i.bgv, i64 4
  br label %._crit_edge1051

._crit_edge1051:                                  ; preds = %._crit_edge1051.loopexit, %bb.at
  %.91014.lcssa = phi ptr [ %.810131055, %bb.at ], [ %scevgep1460, %._crit_edge1051.loopexit ]
  %.1910.lcssa = phi float [ %.0909, %bb.at ], [ %.lcssa1740, %._crit_edge1051.loopexit ]
  %.1908.lcssa = phi float [ %.0907, %bb.at ], [ %.lcssa1739, %._crit_edge1051.loopexit ]
  store float %.1910.lcssa, ptr %.271057, align 4, !tbaa !74
  %i.bgw = getelementptr inbounds nuw i8, ptr %.271057, i64 4
  store float %.1908.lcssa, ptr %i.bgw, align 4, !tbaa !74
  %i.bgx = getelementptr inbounds nuw i8, ptr %.271057, i64 8 ; 2 uses
  %i.bgy = add nuw nsw i32 %.410041056, 1         ; 2 uses
  %exitcond1462.not = icmp eq i32 %i.bgy, %4
  br i1 %exitcond1462.not, label %._crit_edge1059, label %.lr.ph1058, !llvm.loop !762

._crit_edge1059:                                  ; preds = %._crit_edge1051, %.preheader501
  %.27.lcssa = phi ptr [ %.26.lcssa, %.preheader501 ], [ %i.bgx, %._crit_edge1051 ] ; 3 uses
  %indvars.iv.next1464 = add nuw nsw i64 %indvars.iv1463, 1 ; 2 uses
  %exitcond1467.not = icmp eq i64 %indvars.iv.next1464, %wide.trip.count1466
  br i1 %exitcond1467.not, label %bb.ai, label %bb.aj, !llvm.loop !763

.preheader499:                                    ; preds = %.preheader499.lr.ph, %bb.au
  %indvars.iv1493 = phi i64 [ %i.asv, %.preheader499.lr.ph ], [ %indvars.iv.next1494, %bb.au ] ; 2 uses
  %.281172 = phi ptr [ %.21.lcssa, %.preheader499.lr.ph ], [ %.34.lcssa, %bb.au ]
  %i.bgz = mul nsw i64 %indvars.iv1493, %i.asw
  br label %bb.av

bb.au:                                            ; preds = %._crit_edge1167
  %indvars.iv.next1494 = add nsw i64 %indvars.iv1493, 1 ; 2 uses
  %exitcond1497.not = icmp eq i64 %indvars.iv.next1494, %wide.trip.count1496
  br i1 %exitcond1497.not, label %._crit_edge1173, label %.preheader499, !llvm.loop !764

bb.av:                                            ; preds = %.preheader499, %._crit_edge1167
  %indvars.iv1488 = phi i64 [ 0, %.preheader499 ], [ %indvars.iv.next1489, %._crit_edge1167 ] ; 3 uses
  %.291169 = phi ptr [ %.281172, %.preheader499 ], [ %.34.lcssa, %._crit_edge1167 ] ; 2 uses
  %i.bha = load ptr, ptr %0, align 8, !tbaa !9
  %i.bhb = load i32, ptr %i.asg, align 4, !tbaa !114
  %i.bhc = sext i32 %i.bhb to i64
  %i.bhd = mul nsw i64 %indvars.iv1488, %i.bhc
  %i.bhe = load i64, ptr %i.ash, align 8, !tbaa !19
  %i.bhf = mul i64 %i.bhd, %i.bhe
  %i.bhg = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bhf
  %i.bhh = getelementptr inbounds [4 x i8], ptr %i.bhg, i64 %i.bgz ; 16 uses
  %i.bhi = load ptr, ptr %1, align 8, !tbaa !9
  %i.bhj = load i32, ptr %i.asi, align 4, !tbaa !114
  %i.bhk = sext i32 %i.bhj to i64
  %i.bhl = mul nsw i64 %indvars.iv1488, %i.bhk
  %i.bhm = load i64, ptr %i.asj, align 8, !tbaa !19
  %i.bhn = mul i64 %i.bhl, %i.bhm
  %i.bho = getelementptr inbounds nuw i8, ptr %i.bhi, i64 %i.bhn ; 2 uses
  br i1 %i.ask, label %.lr.ph1086, label %.preheader498

.preheader498:                                    ; preds = %._crit_edge1076, %bb.av
  %.30.lcssa = phi ptr [ %.291169, %bb.av ], [ %i.bjw, %._crit_edge1076 ] ; 2 uses
  %.0900.lcssa = phi ptr [ %i.bho, %bb.av ], [ %.1901.lcssa, %._crit_edge1076 ] ; 2 uses
  %.0898.lcssa = phi i32 [ 0, %bb.av ], [ %i.asq, %._crit_edge1076 ] ; 3 uses
  %i.bhp = or disjoint i32 %.0898.lcssa, 7
  %i.bhq = icmp slt i32 %i.bhp, %4
  br i1 %i.bhq, label %.lr.ph1104, label %.preheader497

.lr.ph1086:                                       ; preds = %bb.av, %._crit_edge1076
  %.08981084 = phi i32 [ %i.bjx, %._crit_edge1076 ], [ 0, %bb.av ]
  %.09001083 = phi ptr [ %.1901.lcssa, %._crit_edge1076 ], [ %i.bho, %bb.av ] ; 4 uses
  %.301082 = phi ptr [ %i.bjw, %._crit_edge1076 ], [ %.291169, %bb.av ] ; 9 uses
  br i1 %i.asl, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph1086
  %i.bhr = load <4 x float>, ptr %.301082, align 1, !tbaa !20
  %i.bhs = getelementptr inbounds nuw i8, ptr %.301082, i64 16
  %i.bht = load <4 x float>, ptr %i.bhs, align 1, !tbaa !20
  %i.bhu = getelementptr inbounds nuw i8, ptr %.301082, i64 32
  %i.bhv = load <4 x float>, ptr %i.bhu, align 1, !tbaa !20
  %i.bhw = getelementptr inbounds nuw i8, ptr %.301082, i64 48
  %i.bhx = load <4 x float>, ptr %i.bhw, align 1, !tbaa !20
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph1086, %bb.aw
  %.0375 = phi nsz <4 x float> [ %i.bhr, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %.0373 = phi nsz <4 x float> [ %i.bht, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %.0371 = phi nsz <4 x float> [ %i.bhv, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  %storemerge1100 = phi <4 x float> [ %i.bhx, %bb.aw ], [ zeroinitializer, %.lr.ph1086 ] ; 3 uses
  br i1 %i.asm, label %.lr.ph1075.preheader, label %._crit_edge1076

.lr.ph1075.preheader:                             ; preds = %bb.ax
  br i1 %i.asy, label %.lr.ph1075.epil.preheader, label %.lr.ph1075

.lr.ph1075:                                       ; preds = %.lr.ph1075.preheader, %.lr.ph1075
  %.08971072 = phi ptr [ %i.bjc, %.lr.ph1075 ], [ %i.bhh, %.lr.ph1075.preheader ] ; 3 uses
  %.19011071 = phi ptr [ %i.bjd, %.lr.ph1075 ], [ %.09001083, %.lr.ph1075.preheader ] ; 9 uses
  %.03701070 = phi <4 x float> [ %i.bjb, %.lr.ph1075 ], [ %storemerge1100, %.lr.ph1075.preheader ]
  %.13721069 = phi <4 x float> [ %i.bja, %.lr.ph1075 ], [ %.0371, %.lr.ph1075.preheader ]
  %.13741068 = phi <4 x float> [ %i.biz, %.lr.ph1075 ], [ %.0373, %.lr.ph1075.preheader ]
  %.13761067 = phi <4 x float> [ %i.biy, %.lr.ph1075 ], [ %.0375, %.lr.ph1075.preheader ]
  %niter2374 = phi i32 [ %niter2374.next.1, %.lr.ph1075 ], [ 0, %.lr.ph1075.preheader ]
  %i.bhy = load float, ptr %.08971072, align 4, !tbaa !74
  %i.bhz = insertelement <4 x float> poison, float %i.bhy, i64 0
  %i.bia = shufflevector <4 x float> %i.bhz, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bib = load <4 x float>, ptr %.19011071, align 16, !tbaa !20
  %i.bic = getelementptr inbounds nuw i8, ptr %.19011071, i64 16
  %i.bid = load <4 x float>, ptr %i.bic, align 16, !tbaa !20
  %i.bie = getelementptr inbounds nuw i8, ptr %.19011071, i64 32
  %i.bif = load <4 x float>, ptr %i.bie, align 16, !tbaa !20
  %i.big = getelementptr inbounds nuw i8, ptr %.19011071, i64 48
  %i.bih = load <4 x float>, ptr %i.big, align 16, !tbaa !20
  %i.bii = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bib, <4 x float> nofpclass(nan inf) %.13761067)
  %i.bij = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bid, <4 x float> nofpclass(nan inf) %.13741068)
  %i.bik = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bif, <4 x float> nofpclass(nan inf) %.13721069)
  %i.bil = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bia, <4 x float> nofpclass(nan inf) %i.bih, <4 x float> nofpclass(nan inf) %.03701070)
  %i.bim = getelementptr inbounds nuw i8, ptr %.08971072, i64 4
  %i.bin = getelementptr inbounds nuw i8, ptr %.19011071, i64 64
  %i.bio = load float, ptr %i.bim, align 4, !tbaa !74
  %i.bip = insertelement <4 x float> poison, float %i.bio, i64 0
  %i.biq = shufflevector <4 x float> %i.bip, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bir = load <4 x float>, ptr %i.bin, align 16, !tbaa !20
  %i.bis = getelementptr inbounds nuw i8, ptr %.19011071, i64 80
  %i.bit = load <4 x float>, ptr %i.bis, align 16, !tbaa !20
  %i.biu = getelementptr inbounds nuw i8, ptr %.19011071, i64 96
  %i.biv = load <4 x float>, ptr %i.biu, align 16, !tbaa !20
  %i.biw = getelementptr inbounds nuw i8, ptr %.19011071, i64 112
  %i.bix = load <4 x float>, ptr %i.biw, align 16, !tbaa !20
  %i.biy = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bir, <4 x float> nofpclass(nan inf) %i.bii) ; 3 uses
  %i.biz = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bit, <4 x float> nofpclass(nan inf) %i.bij) ; 3 uses
  %i.bja = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.biv, <4 x float> nofpclass(nan inf) %i.bik) ; 3 uses
  %i.bjb = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.biq, <4 x float> nofpclass(nan inf) %i.bix, <4 x float> nofpclass(nan inf) %i.bil) ; 3 uses
  %i.bjc = getelementptr inbounds nuw i8, ptr %.08971072, i64 8 ; 2 uses
  %i.bjd = getelementptr inbounds nuw i8, ptr %.19011071, i64 128 ; 2 uses
  %niter2374.next.1 = add nuw nsw i32 %niter2374, 2 ; 2 uses
  %niter2374.ncmp.1 = icmp eq i32 %niter2374.next.1, %unroll_iter2373
  br i1 %niter2374.ncmp.1, label %._crit_edge1076.loopexit.unr-lcssa, label %.lr.ph1075, !llvm.loop !765

._crit_edge1076.loopexit.unr-lcssa:               ; preds = %.lr.ph1075
  br i1 %lcmp.mod2367.not, label %._crit_edge1076.loopexit, label %.lr.ph1075.epil.preheader

.lr.ph1075.epil.preheader:                        ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.preheader
  %.08971072.epil.init = phi ptr [ %i.bhh, %.lr.ph1075.preheader ], [ %i.bjc, %._crit_edge1076.loopexit.unr-lcssa ]
  %.19011071.epil.init = phi ptr [ %.09001083, %.lr.ph1075.preheader ], [ %i.bjd, %._crit_edge1076.loopexit.unr-lcssa ] ; 4 uses
  %.03701070.epil.init = phi <4 x float> [ %storemerge1100, %.lr.ph1075.preheader ], [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13721069.epil.init = phi <4 x float> [ %.0371, %.lr.ph1075.preheader ], [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13741068.epil.init = phi <4 x float> [ %.0373, %.lr.ph1075.preheader ], [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ]
  %.13761067.epil.init = phi <4 x float> [ %.0375, %.lr.ph1075.preheader ], [ %i.biy, %._crit_edge1076.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2372)
  %i.bje = load float, ptr %.08971072.epil.init, align 4, !tbaa !74
  %i.bjf = insertelement <4 x float> poison, float %i.bje, i64 0
  %i.bjg = shufflevector <4 x float> %i.bjf, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bjh = load <4 x float>, ptr %.19011071.epil.init, align 16, !tbaa !20
  %i.bji = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 16
  %i.bjj = load <4 x float>, ptr %i.bji, align 16, !tbaa !20
  %i.bjk = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 32
  %i.bjl = load <4 x float>, ptr %i.bjk, align 16, !tbaa !20
  %i.bjm = getelementptr inbounds nuw i8, ptr %.19011071.epil.init, i64 48
  %i.bjn = load <4 x float>, ptr %i.bjm, align 16, !tbaa !20
  %i.bjo = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjh, <4 x float> nofpclass(nan inf) %.13761067.epil.init)
  %i.bjp = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjj, <4 x float> nofpclass(nan inf) %.13741068.epil.init)
  %i.bjq = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjl, <4 x float> nofpclass(nan inf) %.13721069.epil.init)
  %i.bjr = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bjg, <4 x float> nofpclass(nan inf) %i.bjn, <4 x float> nofpclass(nan inf) %.03701070.epil.init)
  br label %._crit_edge1076.loopexit

._crit_edge1076.loopexit:                         ; preds = %._crit_edge1076.loopexit.unr-lcssa, %.lr.ph1075.epil.preheader
  %.lcssa2111 = phi <4 x float> [ %i.biy, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjo, %.lr.ph1075.epil.preheader ]
  %.lcssa2110 = phi <4 x float> [ %i.biz, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjp, %.lr.ph1075.epil.preheader ]
  %.lcssa2109 = phi <4 x float> [ %i.bja, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjq, %.lr.ph1075.epil.preheader ]
  %.lcssa = phi <4 x float> [ %i.bjb, %._crit_edge1076.loopexit.unr-lcssa ], [ %i.bjr, %.lr.ph1075.epil.preheader ]
  %i.bjs = getelementptr i8, ptr %.09001083, i64 %i.asp
  %scevgep1471 = getelementptr i8, ptr %i.bjs, i64 64
  br label %._crit_edge1076

._crit_edge1076:                                  ; preds = %._crit_edge1076.loopexit, %bb.ax
  %.1376.lcssa = phi <4 x float> [ %.0375, %bb.ax ], [ %.lcssa2111, %._crit_edge1076.loopexit ]
  %.1374.lcssa = phi <4 x float> [ %.0373, %bb.ax ], [ %.lcssa2110, %._crit_edge1076.loopexit ]
  %.1372.lcssa = phi <4 x float> [ %.0371, %bb.ax ], [ %.lcssa2109, %._crit_edge1076.loopexit ]
  %.0370.lcssa = phi <4 x float> [ %storemerge1100, %bb.ax ], [ %.lcssa, %._crit_edge1076.loopexit ]
  %.1901.lcssa = phi ptr [ %.09001083, %bb.ax ], [ %scevgep1471, %._crit_edge1076.loopexit ] ; 2 uses
  store <4 x float> %.1376.lcssa, ptr %.301082, align 1, !tbaa !20
  %i.bjt = getelementptr inbounds nuw i8, ptr %.301082, i64 16
  store <4 x float> %.1374.lcssa, ptr %i.bjt, align 1, !tbaa !20
  %i.bju = getelementptr inbounds nuw i8, ptr %.301082, i64 32
  store <4 x float> %.1372.lcssa, ptr %i.bju, align 1, !tbaa !20
  %i.bjv = getelementptr inbounds nuw i8, ptr %.301082, i64 48
  store <4 x float> %.0370.lcssa, ptr %i.bjv, align 1, !tbaa !20
  %i.bjw = getelementptr inbounds nuw i8, ptr %.301082, i64 64 ; 2 uses
  %i.bjx = add nuw nsw i32 %.08981084, 16         ; 2 uses
  %i.bjy = or disjoint i32 %i.bjx, 15
  %i.bjz = icmp slt i32 %i.bjy, %4
  br i1 %i.bjz, label %.lr.ph1086, label %.preheader498, !llvm.loop !766

.preheader497:                                    ; preds = %._crit_edge1097, %.preheader498
  %.31.lcssa = phi ptr [ %.30.lcssa, %.preheader498 ], [ %i.bnr, %._crit_edge1097 ] ; 5 uses
  %.2902.lcssa = phi ptr [ %.0900.lcssa, %.preheader498 ], [ %.3903.lcssa, %._crit_edge1097 ] ; 4 uses
  %.1899.lcssa = phi i32 [ %.0898.lcssa, %.preheader498 ], [ %i.bns, %._crit_edge1097 ] ; 9 uses
  %i.bka = or disjoint i32 %.1899.lcssa, 3
  %i.bkb = icmp slt i32 %i.bka, %4
  br i1 %i.bkb, label %.lr.ph1120, label %.preheader496

.lr.ph1120:                                       ; preds = %.preheader497
  br i1 %i.asm, label %.lr.ph1120.split.us, label %.lr.ph1120.split

.lr.ph1120.split.us:                              ; preds = %.lr.ph1120, %._crit_edge1114.us
  %.21119.us = phi i32 [ %i.blo, %._crit_edge1114.us ], [ %.1899.lcssa, %.lr.ph1120 ]
  %.49041118.us = phi ptr [ %scevgep1481, %._crit_edge1114.us ], [ %.2902.lcssa, %.lr.ph1120 ] ; 3 uses
  %.321117.us = phi ptr [ %i.bln, %._crit_edge1114.us ], [ %.31.lcssa, %.lr.ph1120 ] ; 3 uses
  br i1 %i.asl, label %.lr.ph1113.us.preheader, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph1120.split.us
  %i.bkc = load <4 x float>, ptr %.321117.us, align 1, !tbaa !20
  br label %.lr.ph1113.us.preheader

.lr.ph1113.us.preheader:                          ; preds = %bb.ay, %.lr.ph1120.split.us
  %.03501108.us.ph = phi <4 x float> [ zeroinitializer, %.lr.ph1120.split.us ], [ %i.bkc, %bb.ay ] ; 2 uses
  br i1 %i.ata, label %.lr.ph1113.us.epil.preheader, label %.lr.ph1113.us

.lr.ph1113.us:                                    ; preds = %.lr.ph1113.us.preheader, %.lr.ph1113.us
  %.08931110.us = phi ptr [ %i.bld, %.lr.ph1113.us ], [ %i.bhh, %.lr.ph1113.us.preheader ] ; 5 uses
  %.51109.us = phi ptr [ %i.ble, %.lr.ph1113.us ], [ %.49041118.us, %.lr.ph1113.us.preheader ] ; 5 uses
  %.03501108.us = phi <4 x float> [ %i.blc, %.lr.ph1113.us ], [ %.03501108.us.ph, %.lr.ph1113.us.preheader ]
  %niter2389 = phi i32 [ %niter2389.next.3, %.lr.ph1113.us ], [ 0, %.lr.ph1113.us.preheader ]
  %i.bkd = load float, ptr %.08931110.us, align 4, !tbaa !74
  %i.bke = insertelement <4 x float> poison, float %i.bkd, i64 0
  %i.bkf = shufflevector <4 x float> %i.bke, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkg = load <4 x float>, ptr %.51109.us, align 16, !tbaa !20
  %i.bkh = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkf, <4 x float> nofpclass(nan inf) %i.bkg, <4 x float> nofpclass(nan inf) %.03501108.us)
  %i.bki = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 4
  %i.bkj = getelementptr inbounds nuw i8, ptr %.51109.us, i64 16
  %i.bkk = load float, ptr %i.bki, align 4, !tbaa !74
  %i.bkl = insertelement <4 x float> poison, float %i.bkk, i64 0
  %i.bkm = shufflevector <4 x float> %i.bkl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bkn = load <4 x float>, ptr %i.bkj, align 16, !tbaa !20
  %i.bko = tail call fast noundef nofpclass(nan inf) <4 x float> @llvm.fma.v4f32(<4 x float> nofpclass(nan inf) %i.bkm, <4 x float> nofpclass(nan inf) %i.bkn, <4 x float> nofpclass(nan inf) %i.bkh)
  %i.bkp = getelementptr inbounds nuw i8, ptr %.08931110.us, i64 8
  %i.bkq = getelementptr inbounds nuw i8, ptr %.51109.us, i64 32
end_hunk_5
begin_hunk_6_@_ZN4ncnnL48conv3x3s1_winograd43_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a

bb.fi:                                            ; preds = %bb.fh
  %i.eri = load float, ptr %i.duo, align 4, !tbaa !74 ; 9 uses
  %i.erj = load float, ptr %i.dup, align 4, !tbaa !74 ; 5 uses
  %i.erk = fneg fast float %i.erj
  %i.erl = fdiv fast float %i.erk, %i.eri         ; 8 uses
  %i.erm = extractelement <4 x float> %i.erh, i64 2 ; 5 uses
  %i.ern = fcmp fast olt float %i.erm, %i.erl
  br i1 %i.ern, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ero = fdiv fast float 1.000000e+00, %i.eri
  %i.erp = fadd fast float %i.erl, %i.ero
  %i.erq = fcmp fast ogt float %i.erm, %i.erp
  br i1 %i.erq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.err = fmul fast float %i.eri, %i.erm
  %i.ers = fadd fast float %i.err, %i.erj
  %i.ert = fmul fast float %i.ers, %i.erm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3: ; preds = %bb.fk, %bb.fj, %bb.fi
  %.113022014.3 = phi float [ %i.ert, %bb.fk ], [ 0.000000e+00, %bb.fi ], [ %i.erm, %bb.fj ]
  %i.eru = extractelement <4 x float> %i.erh, i64 1 ; 5 uses
  %i.erv = fcmp fast olt float %i.eru, %i.erl
  br i1 %i.erv, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3, label %bb.fl

bb.fl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3
  %i.erw = fdiv fast float 1.000000e+00, %i.eri
  %i.erx = fadd fast float %i.erl, %i.erw
  %i.ery = fcmp fast ogt float %i.eru, %i.erx
  br i1 %i.ery, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.erz = fmul fast float %i.eri, %i.eru
  %i.esa = fadd fast float %i.erz, %i.erj
  %i.esb = fmul fast float %i.esa, %i.eru
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3: ; preds = %bb.fm, %bb.fl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3
  %.113042037.3 = phi float [ %i.esb, %bb.fm ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread.3 ], [ %i.eru, %bb.fl ]
  %i.esc = extractelement <4 x float> %i.erh, i64 0 ; 5 uses
  %i.esd = fcmp fast olt float %i.esc, %i.erl
  br i1 %i.esd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3, label %bb.fn

bb.fn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3
  %i.ese = fdiv fast float 1.000000e+00, %i.eri
  %i.esf = fadd fast float %i.erl, %i.ese
  %i.esg = fcmp fast ogt float %i.esc, %i.esf
  br i1 %i.esg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.esh = fmul fast float %i.eri, %i.esc
  %i.esi = fadd fast float %i.esh, %i.erj
  %i.esj = fmul fast float %i.esi, %i.esc
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3: ; preds = %bb.fo, %bb.fn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3
  %.113062073.3 = phi float [ %i.esj, %bb.fo ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1255.thread.3 ], [ %i.esc, %bb.fn ]
  %i.esk = extractelement <4 x float> %i.erh, i64 3 ; 4 uses
  %i.esl = fcmp fast olt float %i.esk, %i.erl
  %i.esm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %.113062073.3, i64 0
  %i.esn = insertelement <4 x float> %i.esm, float %.113042037.3, i64 1
  %i.eso = insertelement <4 x float> %i.esn, float %.113022014.3, i64 2 ; 3 uses
  br i1 %i.esl, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3, label %bb.fp

bb.fp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3
  %i.esp = fdiv fast float 1.000000e+00, %i.eri
  %i.esq = fadd fast float %i.erl, %i.esp
  %i.esr = fcmp fast ogt float %i.esk, %i.esq
  %i.ess = shufflevector <4 x float> %i.eso, <4 x float> %i.erh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br i1 %i.esr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.est = fmul fast float %i.eri, %i.esk
  %i.esu = fadd fast float %i.est, %i.erj
  %i.esv = fmul fast float %i.esu, %i.esk
  %i.esw = insertelement <4 x float> %i.eso, float %i.esv, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.3: ; preds = %bb.fh
  %i.esx = extractelement <4 x float> %i.erh, i64 2
  %i.esy = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.esx)
  %i.esz = extractelement <4 x float> %i.erh, i64 1
  %i.eta = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.esz)
  %i.etb = extractelement <4 x float> %i.erh, i64 0
  %i.etc = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.etb)
  %i.etd = extractelement <4 x float> %i.erh, i64 3
  %i.ete = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.etd)
  %i.etf = fadd fast float %i.ete, 1.000000e+00
  %i.etg = fadd fast float %i.esy, 1.000000e+00
  %i.eth = fadd fast float %i.eta, 1.000000e+00
  %i.eti = fadd fast float %i.etc, 1.000000e+00
  %i.etj = tail call fast float @llvm.log.f32(float %i.etf)
  %i.etk = tail call fast float @llvm.log.f32(float %i.etg)
  %i.etl = tail call fast float @llvm.log.f32(float %i.eth)
  %i.etm = tail call fast float @llvm.log.f32(float %i.eti)
  %i.etn = tail call fast float @llvm.tanh.f32(float %i.etj)
  %i.eto = tail call fast float @llvm.tanh.f32(float %i.etk)
  %i.etp = tail call fast float @llvm.tanh.f32(float %i.etl)
  %i.etq = tail call fast float @llvm.tanh.f32(float %i.etm)
  %i.etr = insertelement <4 x float> poison, float %i.etq, i64 0
  %i.ets = insertelement <4 x float> %i.etr, float %i.etp, i64 1
  %i.ett = insertelement <4 x float> %i.ets, float %i.eto, i64 2
  %i.etu = insertelement <4 x float> %i.ett, float %i.etn, i64 3
  %i.etv = fmul fast <4 x float> %i.etu, %i.erh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.3: ; preds = %bb.fh
  %i.etw = tail call nnan ninf nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.erh, <4 x float> splat (float f0x42B0C0A5))
  %i.etx = tail call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.etw, <4 x float> splat (float f0xC2B0C0A5))
  %i.ety = fneg fast <4 x float> %i.etx
  %i.etz = tail call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.ety)
  %i.eua = fadd fast <4 x float> %i.etz, splat (float 1.000000e+00)
  %i.eub = fdiv fast <4 x float> splat (float 1.000000e+00), %i.eua
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3: ; preds = %bb.fh
  %i.euc = load float, ptr %i.duq, align 4, !tbaa !74 ; 4 uses
  %i.eud = load float, ptr %i.dur, align 4, !tbaa !74 ; 8 uses
  %i.eue = extractelement <4 x float> %i.erh, i64 2
  %.01301.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.eue, float %i.euc) ; 2 uses
  %i.euf = fcmp fast ogt float %.01301.3, %i.eud
  %.113022020.3 = select i1 %i.euf, float %i.eud, float %.01301.3
  %i.eug = extractelement <4 x float> %i.erh, i64 1
  %.01303.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.eug, float %i.euc) ; 2 uses
  %i.euh = fcmp fast ogt float %.01303.3, %i.eud
  %.113042045.3 = select i1 %i.euh, float %i.eud, float %.01303.3
  %i.eui = extractelement <4 x float> %i.erh, i64 0
  %.01305.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.eui, float %i.euc) ; 2 uses
  %i.euj = fcmp fast ogt float %.01305.3, %i.eud
  %.113062083.3 = select i1 %i.euj, float %i.eud, float %.01305.3
  %i.euk = extractelement <4 x float> %i.erh, i64 3
  %.01307.3 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %i.euk, float %i.euc) ; 2 uses
  %i.eul = fcmp fast ogt float %.01307.3, %i.eud
  %i.eum = insertelement <4 x float> poison, float %.113062083.3, i64 0
  %i.eun = insertelement <4 x float> %i.eum, float %.113042045.3, i64 1
  %i.euo = insertelement <4 x float> %i.eun, float %.113022020.3, i64 2 ; 2 uses
  %i.eup = insertelement <4 x float> %i.euo, float %.01307.3, i64 3
  br i1 %i.eul, label %bb.fr, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

bb.fr:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3
  %i.euq = insertelement <4 x float> %i.euo, float %i.eud, i64 3
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.3: ; preds = %bb.fh
  %i.eur = load float, ptr %i.dus, align 4, !tbaa !74
  %i.eus = fcmp fast ogt <4 x float> %i.erh, zeroinitializer
  %i.eut = insertelement <4 x float> poison, float %i.eur, i64 0
  %i.euu = shufflevector <4 x float> %i.eut, <4 x float> poison, <4 x i32> zeroinitializer
  %i.euv = select <4 x i1> %i.eus, <4 x float> splat (float 1.000000e+00), <4 x float> %i.euu
  %i.euw = fmul fast <4 x float> %i.euv, %i.erh
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.3: ; preds = %bb.fh
  %i.eux = tail call fast <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.erh, <4 x float> zeroinitializer)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3

_ZL13activation_ssfiRKN4ncnn3MatE.exit.3:         ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.3, %bb.fr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.3, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.3, %bb.fq, %bb.fp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3, %bb.fh
  %i.euy = phi <4 x float> [ %i.eso, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1254.thread.3 ], [ %i.eux, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2021.3 ], [ %i.euw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2024.3 ], [ %i.euq, %bb.fr ], [ %i.eup, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2018.3 ], [ %i.eub, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2027.3 ], [ %i.etv, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1256.thread2030.3 ], [ %i.esw, %bb.fq ], [ %i.ess, %bb.fp ], [ %i.erh, %bb.fh ] ; 4 uses
  %i.euz = bitcast <4 x float> %i.euy to <8 x i16>
  %i.eva = extractelement <8 x i16> %i.euz, i64 5
  store i16 %i.eva, ptr %.1.2, align 2, !tbaa !76
  br i1 %i.ebp, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3
  %i.evb = bitcast <4 x float> %i.euy to <8 x i16>
  %i.evc = extractelement <8 x i16> %i.evb, i64 3
  %i.evd = getelementptr inbounds nuw i8, ptr %.1.2, i64 2
  store i16 %i.evc, ptr %i.evd, align 2, !tbaa !76
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit.3
  br i1 %i.ebr, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.eve = bitcast <4 x float> %i.euy to <8 x i16>
  %i.evf = extractelement <8 x i16> %i.eve, i64 1
  %i.evg = getelementptr inbounds nuw i8, ptr %.1.2, i64 4
  store i16 %i.evf, ptr %i.evg, align 2, !tbaa !76
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  br i1 %i.ebt, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.evh = bitcast <4 x float> %i.euy to <8 x i16>
  %i.evi = extractelement <8 x i16> %i.evh, i64 7
  %i.evj = getelementptr inbounds nuw i8, ptr %.1.2, i64 6
  store i16 %i.evi, ptr %i.evj, align 2, !tbaa !76
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fv, %bb.fw, %bb.fg
  %indvars.iv.next2305 = add nuw nsw i64 %indvars.iv2304, 1 ; 2 uses
  %exitcond2308.not = icmp eq i64 %indvars.iv.next2305, %wide.trip.count2307
  br i1 %exitcond2308.not, label %._crit_edge2213, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !859

._crit_edge2213:                                  ; preds = %bb.fx, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %indvars.iv.next2310 = add nsw i64 %indvars.iv2309, 1 ; 2 uses
  %exitcond2313.not = icmp eq i64 %indvars.iv.next2310, %wide.trip.count2312
  br i1 %exitcond2313.not, label %._crit_edge2220, label %bb.dc, !llvm.loop !860

._crit_edge2220:                                  ; preds = %._crit_edge2213, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn37conv3x3s1_winograd43_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %7) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %5, ptr %i.d, align 4, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !113
  %i.q = add nsw <2 x i32> %i.p, splat (i32 3)
  %i.r = sdiv <2 x i32> %i.q, splat (i32 4)       ; 2 uses
  %shift = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.r
  %i.s = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !115
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  store i32 %i.x, ptr %i.e, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 %i.s, ptr %i.f, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !115
  %i.ac = mul nsw i32 %i.ab, %i.z                 ; 3 uses
  store i32 %i.ac, ptr %i.g, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %i.x, i32 noundef %i.s, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !113 ; 2 uses
  %i.ae = add i32 %i.x, -1
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = sdiv i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !113
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !113 ; 3 uses
  %i.ai = add i32 %i.s, -1
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = sdiv i32 %i.aj, %i.ah                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.al = load i32, ptr %i.j, align 4, !tbaa !113 ; 3 uses
  %i.am = add i32 %i.ac, -1
  %i.an = add i32 %i.am, %i.al
  %i.ao = sdiv i32 %i.an, %i.al                   ; 3 uses
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ap = mul i32 %i.al, %i.ah                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !397
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.av, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ap, i32 noundef 36, i32 noundef %i.ao, i32 noundef %i.ak, i64 noundef 4, ptr noundef %i.ar)
  %i.az = load ptr, ptr %8, align 8, !tbaa !9
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit172.i

_ZNK4ncnn3Mat5emptyEv.exit172.i:                  ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !18
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !116
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.bc, %i.be
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.bh = mul nsw i32 %i.ao, %i.ak                ; 2 uses
  store i32 %i.bh, ptr %i.m, align 4, !tbaa !113
  %i.bi = icmp sgt i32 %4, 1
  %i.bj = icmp slt i32 %i.bh, %4
  %or.cond.i = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = mul i32 %i.ap, 36                       ; 2 uses
  br i1 %or.cond.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !397
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.bp, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bn, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.bk, i64 noundef 4, ptr noundef %i.bl)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.d

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %bb.c
  %i.bq = load ptr, ptr %9, align 8, !tbaa !9
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit171.i

_ZNK4ncnn3Mat5emptyEv.exit171.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.bs = load i64, ptr %i.bp, align 8, !tbaa !18
  %i.bt = load i32, ptr %i.bo, align 8, !tbaa !116
  %i.bu = sext i32 %i.bt to i64
  %i.bv = mul i64 %i.bs, %i.bu
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4ncnn3Mat5emptyEv.exit171.i
  %i.bx = load i32, ptr %i.m, align 4, !tbaa !113
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.noexc.lr.ph.i, label %._crit_edge.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.bz = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %.noexc.i

bb.d:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.av

.noexc.i:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit91.i, %.noexc.lr.ph.i
  %.0195.i = phi i32 [ 0, %.noexc.lr.ph.i ], [ %i.eb, %_ZN4ncnn3MatD2Ev.exit91.i ] ; 3 uses
  %i.ch = load i32, ptr %i.l, align 4, !tbaa !113 ; 2 uses
  %i.ci = sdiv i32 %.0195.i, %i.ch
  %i.cj = srem i32 %.0195.i, %i.ch
  %i.ck = load i32, ptr %i.i, align 4, !tbaa !113 ; 2 uses
  %i.cl = mul nsw i32 %i.ck, %i.ci                ; 3 uses
  %i.cm = load i32, ptr %i.j, align 4, !tbaa !113 ; 2 uses
  %i.cn = mul nsw i32 %i.cm, %i.cj                ; 3 uses
  %i.co = load i32, ptr %i.f, align 4, !tbaa !113
  %i.cp = sub nsw i32 %i.co, %i.cl
  %.sroa.speculated192.i = call i32 @llvm.smin.i32(i32 %i.ck, i32 %i.cp) ; 2 uses
  %i.cq = load i32, ptr %i.g, align 4, !tbaa !113
  %i.cr = sub nsw i32 %i.cq, %i.cn
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.cm, i32 %i.cr) ; 2 uses
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.cl, i32 noundef %.sroa.speculated192.i, i32 noundef %i.cn, i32 noundef %.sroa.speculated.i, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.cs = load i32, ptr %i.i, align 4, !tbaa !113
  %i.ct = sdiv i32 %i.cl, %i.cs
  %i.cu = load ptr, ptr %8, align 8, !tbaa !9, !noalias !861
  %i.cv = load i64, ptr %i.ay, align 8, !tbaa !18, !noalias !861
  %i.cw = sext i32 %i.ct to i64
  %i.cx = mul i64 %i.cv, %i.cw
  %i.cy = load i64, ptr %i.at, align 8, !tbaa !19, !noalias !861 ; 3 uses
  %i.cz = mul i64 %i.cx, %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cz
  %i.db = load i32, ptr %i.au, align 8, !tbaa !115, !noalias !861
  %i.dc = load ptr, ptr %i.av, align 8, !tbaa !344, !noalias !861
  %i.dd = load i32, ptr %i.j, align 4, !tbaa !113
  %i.de = sdiv i32 %i.cn, %i.dd
  %i.df = sext i32 %i.de to i64
  store ptr null, ptr %i.bz, align 8, !tbaa !343, !alias.scope !864
  store i64 %i.cy, ptr %i.ca, align 8, !tbaa !19, !alias.scope !864
  store i32 %i.db, ptr %i.cb, align 8, !tbaa !115, !alias.scope !864
  store ptr %i.dc, ptr %i.cc, align 8, !tbaa !344, !alias.scope !864
  %i.dg = load <2 x i32>, ptr %i.aw, align 4, !tbaa !113, !noalias !861
  %i.dh = load i32, ptr %i.ax, align 8, !tbaa !118, !noalias !861
  %i.di = load i32, ptr %i.aw, align 4, !tbaa !114, !noalias !861
  %i.dj = sext i32 %i.di to i64
  %i.dk = sext i32 %i.dh to i64
  %i.dl = mul nsw i64 %i.dk, %i.dj                ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN4ncnnL48conv3x3s1_winograd63_transform_output_tile_bf16sERKNS_3MatERS0_S2_iiiiiS2_:bb.a
  %i.gha = tail call fast float @llvm.tanh.f32(float %i.ggw)
  %i.ghb = tail call fast float @llvm.tanh.f32(float %i.ggx)
  %i.ghc = insertelement <4 x float> poison, float %i.ggy, i64 0
  %i.ghd = insertelement <4 x float> %i.ghc, float %i.ggz, i64 1
  %i.ghe = insertelement <4 x float> %i.ghd, float %i.gha, i64 2
  %i.ghf = insertelement <4 x float> %i.ghe, float %i.ghb, i64 3
  %i.ghg = fmul fast <4 x float> %i.ghf, %i.geh
  %i.ghh = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %i.gen)
  %i.ghi = fadd fast float %i.ghh, 1.000000e+00
  %i.ghj = tail call fast float @llvm.log.f32(float %i.ghi)
  %i.ghk = tail call fast float @llvm.tanh.f32(float %i.ghj)
  %i.ghl = fmul fast float %i.ghk, %i.gen
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.fi:                                            ; preds = %bb.fh
  %i.ghm = load float, ptr %i.gbf, align 4, !tbaa !74 ; 13 uses
  %i.ghn = load float, ptr %i.gbg, align 4, !tbaa !74 ; 7 uses
  %i.gho = fneg fast float %i.ghn
  %i.ghp = fdiv fast float %i.gho, %i.ghm         ; 12 uses
  %i.ghq = fcmp fast olt float %i.gem, %i.ghp
  br i1 %i.ghq, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.ghr = fdiv fast float 1.000000e+00, %i.ghm
  %i.ghs = fadd fast float %i.ghp, %i.ghr
  %i.ght = fcmp fast ogt float %i.gem, %i.ghs
  br i1 %i.ght, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ghu = fmul fast float %i.ghm, %i.gem
  %i.ghv = fadd fast float %i.ghu, %i.ghn
  %i.ghw = fmul fast float %i.ghv, %i.gem
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread: ; preds = %bb.fk, %bb.fj, %bb.fi
  %.119273558 = phi float [ %i.ghw, %bb.fk ], [ 0.000000e+00, %bb.fi ], [ %i.gem, %bb.fj ] ; 3 uses
  %i.ghx = extractelement <4 x float> %i.geh, i64 0 ; 5 uses
  %i.ghy = fcmp fast olt float %i.ghx, %i.ghp
  br i1 %i.ghy, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread, label %bb.fl

bb.fl:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread
  %i.ghz = fdiv fast float 1.000000e+00, %i.ghm
  %i.gia = fadd fast float %i.ghp, %i.ghz
  %i.gib = fcmp fast ogt float %i.ghx, %i.gia
  br i1 %i.gib, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.gic = fmul fast float %i.ghm, %i.ghx
  %i.gid = fadd fast float %i.gic, %i.ghn
  %i.gie = fmul fast float %i.gid, %i.ghx
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread: ; preds = %bb.fm, %bb.fl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread
  %.119293581 = phi float [ %i.gie, %bb.fm ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread ], [ %i.ghx, %bb.fl ]
  %i.gif = extractelement <4 x float> %i.geh, i64 1 ; 5 uses
  %i.gig = fcmp fast olt float %i.gif, %i.ghp
  br i1 %i.gig, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread, label %bb.fn

bb.fn:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread
  %i.gih = fdiv fast float 1.000000e+00, %i.ghm
  %i.gii = fadd fast float %i.ghp, %i.gih
  %i.gij = fcmp fast ogt float %i.gif, %i.gii
  br i1 %i.gij, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.gik = fmul fast float %i.ghm, %i.gif
  %i.gil = fadd fast float %i.gik, %i.ghn
  %i.gim = fmul fast float %i.gil, %i.gif
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread: ; preds = %bb.fo, %bb.fn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread
  %.119313617 = phi float [ %i.gim, %bb.fo ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1747.thread ], [ %i.gif, %bb.fn ]
  %i.gin = extractelement <4 x float> %i.geh, i64 2 ; 5 uses
  %i.gio = fcmp fast olt float %i.gin, %i.ghp
  br i1 %i.gio, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread, label %bb.fp

bb.fp:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread
  %i.gip = fdiv fast float 1.000000e+00, %i.ghm
  %i.giq = fadd fast float %i.ghp, %i.gip
  %i.gir = fcmp fast ogt float %i.gin, %i.giq
  br i1 %i.gir, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.gis = fmul fast float %i.ghm, %i.gin
  %i.git = fadd fast float %i.gis, %i.ghn
  %i.giu = fmul fast float %i.git, %i.gin
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread

_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread: ; preds = %bb.fq, %bb.fp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread
  %.119333666 = phi float [ %i.giu, %bb.fq ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1746.thread ], [ %i.gin, %bb.fp ]
  %i.giv = extractelement <4 x float> %i.geh, i64 3 ; 5 uses
  %i.giw = fcmp fast olt float %i.giv, %i.ghp
  br i1 %i.giw, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread, label %bb.fr

bb.fr:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread
  %i.gix = fdiv fast float 1.000000e+00, %i.ghm
  %i.giy = fadd fast float %i.ghp, %i.gix
  %i.giz = fcmp fast ogt float %i.giv, %i.giy
  br i1 %i.giz, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.gja = fmul fast float %i.ghm, %i.giv
  %i.gjb = fadd fast float %i.gja, %i.ghn
  %i.gjc = fmul fast float %i.gjb, %i.giv
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread

bb.ft:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3562
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread: ; preds = %bb.fs, %bb.fr, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread
  %.119353728 = phi float [ %i.gjc, %bb.fs ], [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1745.thread ], [ %i.giv, %bb.fr ]
  %i.gjd = fcmp fast olt float %i.gen, %i.ghp
  %i.gje = insertelement <4 x float> poison, float %.119293581, i64 0
  %i.gjf = insertelement <4 x float> %i.gje, float %.119313617, i64 1
  %i.gjg = insertelement <4 x float> %i.gjf, float %.119333666, i64 2
  %i.gjh = insertelement <4 x float> %i.gjg, float %.119353728, i64 3 ; 3 uses
  br i1 %i.gjd, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread
  %i.gji = fdiv fast float 1.000000e+00, %i.ghm
  %i.gjj = fadd fast float %i.ghp, %i.gji
  %i.gjk = fcmp fast ogt float %i.gen, %i.gjj
  br i1 %i.gjk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.gjl = fmul fast float %i.ghm, %i.gen
  %i.gjm = fadd fast float %i.gjl, %i.ghn
  %i.gjn = fmul fast float %i.gjm, %i.gen
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.fh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3565, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3568, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3562, %bb.ft, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3571, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3574, %bb.fu, %bb.fv
  %.1192735593580361636633725 = phi float [ %.119273558, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread ], [ %i.geo, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3565 ], [ %i.gev, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3568 ], [ %.119273564, %bb.ft ], [ %.119273564, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3562 ], [ %i.gfs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3571 ], [ %i.ggh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3574 ], [ %.119273558, %bb.fv ], [ %.119273558, %bb.fu ], [ %i.gem, %bb.fh ]
  %.11937 = phi nsz float [ 0.000000e+00, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread ], [ %i.geq, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3565 ], [ %i.gfd, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3568 ], [ %i.gff, %bb.ft ], [ %.01936, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3562 ], [ %i.ggc, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3571 ], [ %i.ghl, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3574 ], [ %i.gjn, %bb.fv ], [ %i.gen, %bb.fu ], [ %i.gen, %bb.fh ]
  %i.gjo = phi <4 x float> [ %i.gjh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1744.thread ], [ %i.gep, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3565 ], [ %i.gfa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3568 ], [ %i.gfn, %bb.ft ], [ %i.gfn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3562 ], [ %i.gfy, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3571 ], [ %i.ghg, %_ZL13activation_ssfiRKN4ncnn3MatE.exit1748.thread3574 ], [ %i.gjh, %bb.fv ], [ %i.gjh, %bb.fu ], [ %i.geh, %bb.fh ] ; 4 uses
  %i.gjp = bitcast float %.1192735593580361636633725 to i32
  %i.gjq = lshr i32 %i.gjp, 16
  %i.gjr = trunc nuw i32 %i.gjq to i16
  store i16 %i.gjr, ptr %.015723910, align 2, !tbaa !76
  br i1 %i.gaw, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.gjs = bitcast <4 x float> %i.gjo to <8 x i16>
  %i.gjt = extractelement <8 x i16> %i.gjs, i64 1
  %i.gju = getelementptr inbounds nuw i8, ptr %.015723910, i64 2
  store i16 %i.gjt, ptr %i.gju, align 2, !tbaa !76
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  br i1 %i.gay, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.gjv = bitcast <4 x float> %i.gjo to <8 x i16>
  %i.gjw = extractelement <8 x i16> %i.gjv, i64 3
  %i.gjx = getelementptr inbounds nuw i8, ptr %.015723910, i64 4
  store i16 %i.gjw, ptr %i.gjx, align 2, !tbaa !76
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  br i1 %i.gba, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.gjy = bitcast <4 x float> %i.gjo to <8 x i16>
  %i.gjz = extractelement <8 x i16> %i.gjy, i64 5
  %i.gka = getelementptr inbounds nuw i8, ptr %.015723910, i64 6
  store i16 %i.gjz, ptr %i.gka, align 2, !tbaa !76
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  br i1 %i.gbc, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.gkb = bitcast <4 x float> %i.gjo to <8 x i16>
  %i.gkc = extractelement <8 x i16> %i.gkb, i64 7
  %i.gkd = getelementptr inbounds nuw i8, ptr %.015723910, i64 8
  store i16 %i.gkc, ptr %i.gkd, align 2, !tbaa !76
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  br i1 %i.gbe, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.gke = bitcast float %.11937 to i32
  %i.gkf = lshr i32 %i.gke, 16
  %i.gkg = trunc nuw i32 %i.gkf to i16
  %i.gkh = getelementptr inbounds nuw i8, ptr %.015723910, i64 10
  store i16 %i.gkg, ptr %i.gkh, align 2, !tbaa !76
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.gki = getelementptr inbounds [2 x i8], ptr %.015723910, i64 %i.fhh
  br label %bb.gg

bb.gg:                                            ; preds = %bb.fg, %bb.gf
  %.1 = phi ptr [ %.015723910, %bb.fg ], [ %i.gki, %bb.gf ]
  %indvars.iv.next4003 = add nuw nsw i64 %indvars.iv4002, 1 ; 2 uses
  %exitcond4005.not = icmp eq i64 %indvars.iv.next4003, 6
  br i1 %exitcond4005.not, label %bb.ff, label %bb.fg, !llvm.loop !950

._crit_edge3915:                                  ; preds = %bb.ff, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %indvars.iv.next4012 = add nsw i64 %indvars.iv4011, 1 ; 2 uses
  %exitcond4015.not = icmp eq i64 %indvars.iv.next4012, %wide.trip.count4014
  br i1 %exitcond4015.not, label %._crit_edge3922, label %bb.fa, !llvm.loop !951

._crit_edge3922:                                  ; preds = %._crit_edge3915, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZN4ncnn37conv3x3s1_winograd63_bf16s_avx512bf16ERKNS_3MatERS0_S2_S2_iiS2_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(72) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %7) local_unnamed_addr #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 10 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.m = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %10 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.n = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i32 %5, ptr %i.d, align 4, !tbaa !113
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !113
  %i.q = add nsw <2 x i32> %i.p, splat (i32 5)
  %i.r = sdiv <2 x i32> %i.q, splat (i32 6)       ; 2 uses
  %shift = shufflevector <2 x i32> %i.r, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = mul nsw <2 x i32> %shift, %i.r
  %i.s = extractelement <2 x i32> %foldExtExtBinop, i64 0 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.u = load i32, ptr %i.t, align 8, !tbaa !116
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i32, ptr %i.v, align 8, !tbaa !115
  %i.x = mul nsw i32 %i.w, %i.u                   ; 3 uses
  store i32 %i.x, ptr %i.e, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 %i.s, ptr %i.f, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !115
  %i.ac = mul nsw i32 %i.ab, %i.z                 ; 3 uses
  store i32 %i.ac, ptr %i.g, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call fastcc void @_ZN4ncnnL20get_optimal_tile_mnkEiiiRiS0_S0_i(i32 noundef %i.x, i32 noundef %i.s, i32 noundef %i.ac, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.ad = load i32, ptr %i.h, align 4, !tbaa !113 ; 2 uses
  %i.ae = add i32 %i.x, -1
  %i.af = add i32 %i.ae, %i.ad
  %i.ag = sdiv i32 %i.af, %i.ad
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !113
  %i.ah = load i32, ptr %i.i, align 4, !tbaa !113 ; 4 uses
  %i.ai = add i32 %i.s, -1
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = sdiv i32 %i.aj, %i.ah                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.al = load i32, ptr %i.j, align 4, !tbaa !113 ; 4 uses
  %i.am = add i32 %i.ac, -1
  %i.an = add i32 %i.am, %i.al
  %i.ao = sdiv i32 %i.an, %i.al                   ; 3 uses
  store i32 %i.ao, ptr %i.l, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ap = mul nsw i32 %i.al, %i.ah
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !397
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 44 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  store i64 0, ptr %i.ay, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.av, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.ap, i32 noundef 64, i32 noundef %i.ao, i32 noundef %i.ak, i64 noundef 4, ptr noundef %i.ar)
  %i.az = load ptr, ptr %8, align 8, !tbaa !9
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit172.i

_ZNK4ncnn3Mat5emptyEv.exit172.i:                  ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bc = load i64, ptr %i.ay, align 8, !tbaa !18
  %i.bd = load i32, ptr %i.bb, align 8, !tbaa !116
  %i.be = sext i32 %i.bd to i64
  %i.bf = mul i64 %i.bc, %i.be
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZNK4ncnn3Mat5emptyEv.exit172.thread.i, label %bb.b

bb.b:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit172.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.bh = mul nsw i32 %i.ao, %i.ak                ; 2 uses
  store i32 %i.bh, ptr %i.m, align 4, !tbaa !113
  %i.bi = icmp sgt i32 %4, 1
  %i.bj = icmp slt i32 %i.bh, %4
  %or.cond.i = select i1 %i.bi, i1 %i.bj, i1 false
  %i.bk = shl nsw i32 %i.ah, 6
  %i.bl = mul nsw i32 %i.al, %i.bk                ; 2 uses
  br i1 %or.cond.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !397
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bq = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.bq, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bo, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.bl, i64 noundef 4, ptr noundef %i.bm)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.d

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %bb.c
  %i.br = load ptr, ptr %9, align 8, !tbaa !9
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit171.i

_ZNK4ncnn3Mat5emptyEv.exit171.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !18
  %i.bu = load i32, ptr %i.bp, align 8, !tbaa !116
  %i.bv = sext i32 %i.bu to i64
  %i.bw = mul i64 %i.bt, %i.bv
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4ncnn3Mat5emptyEv.exit171.i
  %i.by = load i32, ptr %i.m, align 4, !tbaa !113
  %i.bz = icmp sgt i32 %i.by, 0
  br i1 %i.bz, label %.noexc.lr.ph.i, label %._crit_edge.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.cg = getelementptr inbounds nuw i8, ptr %10, i64 64
  br label %.noexc.i

bb.d:                                             ; preds = %bb.c
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.av

.noexc.i:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit91.i, %.noexc.lr.ph.i
  %.0195.i = phi i32 [ 0, %.noexc.lr.ph.i ], [ %i.ec, %_ZN4ncnn3MatD2Ev.exit91.i ] ; 3 uses
  %i.ci = load i32, ptr %i.l, align 4, !tbaa !113 ; 2 uses
  %i.cj = sdiv i32 %.0195.i, %i.ci
  %i.ck = srem i32 %.0195.i, %i.ci
  %i.cl = load i32, ptr %i.i, align 4, !tbaa !113 ; 2 uses
  %i.cm = mul nsw i32 %i.cl, %i.cj                ; 3 uses
  %i.cn = load i32, ptr %i.j, align 4, !tbaa !113 ; 2 uses
  %i.co = mul nsw i32 %i.cn, %i.ck                ; 3 uses
  %i.cp = load i32, ptr %i.f, align 4, !tbaa !113
  %i.cq = sub nsw i32 %i.cp, %i.cm
  %.sroa.speculated192.i = call i32 @llvm.smin.i32(i32 %i.cl, i32 %i.cq) ; 2 uses
  %i.cr = load i32, ptr %i.g, align 4, !tbaa !113
  %i.cs = sub nsw i32 %i.cr, %i.co
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cs) ; 2 uses
  call fastcc void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.cm, i32 noundef %.sroa.speculated192.i, i32 noundef %i.co, i32 noundef %.sroa.speculated.i, i32 noundef %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.ct = load i32, ptr %i.i, align 4, !tbaa !113
  %i.cu = sdiv i32 %i.cm, %i.ct
  %i.cv = load ptr, ptr %8, align 8, !tbaa !9, !noalias !952
  %i.cw = load i64, ptr %i.ay, align 8, !tbaa !18, !noalias !952
  %i.cx = sext i32 %i.cu to i64
  %i.cy = mul i64 %i.cw, %i.cx
  %i.cz = load i64, ptr %i.at, align 8, !tbaa !19, !noalias !952 ; 3 uses
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.da
  %i.dc = load i32, ptr %i.au, align 8, !tbaa !115, !noalias !952
  %i.dd = load ptr, ptr %i.av, align 8, !tbaa !344, !noalias !952
  %i.de = load i32, ptr %i.j, align 4, !tbaa !113
  %i.df = sdiv i32 %i.co, %i.de
  %i.dg = sext i32 %i.df to i64
  store ptr null, ptr %i.ca, align 8, !tbaa !343, !alias.scope !955
  store i64 %i.cz, ptr %i.cb, align 8, !tbaa !19, !alias.scope !955
  store i32 %i.dc, ptr %i.cc, align 8, !tbaa !115, !alias.scope !955
  store ptr %i.dd, ptr %i.cd, align 8, !tbaa !344, !alias.scope !955
  %i.dh = load <2 x i32>, ptr %i.aw, align 4, !tbaa !113, !noalias !952
  %i.di = load i32, ptr %i.ax, align 8, !tbaa !118, !noalias !952
  %i.dj = load i32, ptr %i.aw, align 4, !tbaa !114, !noalias !952
  %i.dk = sext i32 %i.dj to i64
  %i.dl = sext i32 %i.di to i64
end_hunk_7
