Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
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
  %indvars.iv.next2401.i = add nuw nsw i64 %indvars.iv2400.i, 1 ; 2 uses
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
  tail call void @_ZSt9terminatev() #25
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
  %i.ad = mul i32 %i.ac, %i.aa                    ; 6 uses
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
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc2593

.noexc2593:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.al = shl nuw nsw i64 %i.aj, 2
  %i.am = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #27 ; 5 uses
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
  %broadcast.splatinsert6241.a = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat6242.a = shufflevector <8 x i32> %broadcast.splatinsert6241.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.be = mul nsw <8 x i32> %broadcast.splat6242.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
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
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.ba
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op6864
  %i.bk = mul nsw <16 x i32> %vec.ind, %broadcast.splat6232
  %i.bl = mul nsw <16 x i32> %step.add, %broadcast.splat6232
  %i.bm = mul nsw <16 x i32> %step.add.2.reass, %broadcast.splat6232
  %i.bn = mul nsw <16 x i32> %step.add.3.reass, %broadcast.splat6232
  %gep = getelementptr [4 x i8], ptr %invariant.gep6865, i64 %index ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bq = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %i.bk, ptr %gep, align 4, !tbaa !113
  store <16 x i32> %i.bl, ptr %i.bo, align 4, !tbaa !113
  store <16 x i32> %i.bm, ptr %i.bp, align 4, !tbaa !113
  store <16 x i32> %i.bn, ptr %i.bq, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op6866
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val6235 = phi i32 [ %i.bj, %vec.epilog.iter.check ], [ %.016324408, %vector.main.loop.iter.check ]
  %i.bs = add nsw i64 %n.vec6236, %i.bg
  %i.bt = add i32 %.016324408, %i.bd              ; 2 uses
  %broadcast.splatinsert6239 = insertelement <8 x i32> poison, i32 %bc.resume.val6235, i64 0
  %broadcast.splat6240 = shufflevector <8 x i32> %broadcast.splatinsert6239, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction6243 = add nsw <8 x i32> %broadcast.splat6240, %i.be
  %invariant.gep6867 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6246 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next6248, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind6247 = phi <8 x i32> [ %induction6243, %vec.epilog.ph ], [ %vec.ind.next6249, %vec.epilog.vector.body ] ; 2 uses
  %i.bu = mul nsw <8 x i32> %vec.ind6247, %broadcast.splat6238
  %gep6868 = getelementptr [4 x i8], ptr %invariant.gep6867, i64 %index6246
  store <8 x i32> %i.bu, ptr %gep6868, align 4, !tbaa !113
  %index.next6248 = add nuw i64 %index6246, 8     ; 2 uses
  %vec.ind.next6249 = add nsw <8 x i32> %vec.ind6247, %broadcast.splat6245
  %i.bv = icmp eq i64 %index.next6248, %n.vec6236
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n6250, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bg, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  %.116334404.ph = phi i32 [ %.016324408, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.bt, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge4410.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.bw = load ptr, ptr %3, align 8, !tbaa !9
  store ptr %i.bw, ptr %i.h, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.bx = sdiv i32 %i.ad, 16
  store i32 %i.bx, ptr %i.i, align 4, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !124
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.bz)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.h, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %11, ptr nonnull %i.e)
  %i.ca = load i32, ptr %i.i, align 4, !tbaa !113
  %i.cb = shl nsw i32 %i.ca, 4                    ; 3 uses
  %i.cc = sub nsw i32 %i.ad, %i.cb                ; 2 uses
  %i.cd = sdiv i32 %i.cc, 8                       ; 3 uses
  store i32 %i.cd, ptr %i.i, align 4, !tbaa !113
  %i.ce = icmp sgt i32 %i.cc, 7
  br i1 %i.ce, label %.noexc2330.lr.ph, label %._crit_edge4627

.noexc2330.lr.ph:                                 ; preds = %._crit_edge4410.split
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cj = sext i32 %i.cb to i64
  %wide.trip.count5519 = zext nneg i32 %i.cd to i64
  br label %.noexc2330

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa6229 = phi i32 [ %i.bt, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.co, %vec.epilog.scalar.ph ]
  %i.ck = add nsw i32 %i.at, %.lcssa6229
  %i.cl = add nuw nsw i32 %.016314409, 1          ; 2 uses
  %exitcond5428.not = icmp eq i32 %i.cl, %5
  br i1 %exitcond5428.not, label %._crit_edge4410.split, label %iter.check, !llvm.loop !127

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.116334404 = phi i32 [ %i.co, %vec.epilog.scalar.ph ], [ %.116334404.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cm = mul nsw i32 %.116334404, %i.n
end_hunk_0
begin_hunk_1_@_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE:bb.a
  %i.fkp = load float, ptr %i.fko, align 4, !tbaa !74
  %i.fkq = fcmp fast ogt <2 x float> %i.fkm, zeroinitializer
  %i.fkr = insertelement <2 x float> poison, float %i.fkp, i64 0
  %i.fks = shufflevector <2 x float> %i.fkr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fkt = select <2 x i1> %i.fkq, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fks
  %i.fku = fmul fast <2 x float> %i.fkt, %i.fkm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301: ; preds = %._crit_edge5008
  %i.fkv = load ptr, ptr %11, align 8, !tbaa !9   ; 2 uses
  %i.fkw = load float, ptr %i.fkv, align 4, !tbaa !74 ; 2 uses
  %i.fkx = getelementptr inbounds nuw i8, ptr %i.fkv, i64 4
  %i.fky = load float, ptr %i.fkx, align 4, !tbaa !74 ; 4 uses
  %i.fkz = extractelement <2 x float> %i.fkm, i64 0
  %.04104 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.fkz, float %i.fkw) ; 2 uses
  %i.fla = fcmp fast ogt float %.04104, %i.fky
  %.141054303 = select i1 %i.fla, float %i.fky, float %.04104
  %i.flb = extractelement <2 x float> %i.fkm, i64 1
  %.04106 = call nnan ninf nsz float @llvm.maxnum.f32(float %i.flb, float %i.fkw) ; 2 uses
  %i.flc = fcmp fast ogt float %.04106, %i.fky
  %i.fld = insertelement <2 x float> poison, float %.141054303, i64 0
  %i.fle = insertelement <2 x float> %i.fld, float %.04106, i64 1 ; 2 uses
  br i1 %i.flc, label %bb.an, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4310: ; preds = %._crit_edge5008
  %i.flf = call nnan ninf nsz <2 x float> @llvm.minnum.v2f32(<2 x float> %i.fkm, <2 x float> splat (float f0x42B0C0A5))
  %i.flg = call nnan ninf nsz <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.flf, <2 x float> splat (float f0xC2B0C0A5))
  %i.flh = fneg fast <2 x float> %i.flg
  %i.fli = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.flh)
  %i.flj = fadd fast <2 x float> %i.fli, splat (float 1.000000e+00)
  %i.flk = fdiv fast <2 x float> splat (float 1.000000e+00), %i.flj
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4313: ; preds = %._crit_edge5008
  %i.fll = call fast <2 x float> @llvm.exp.v2f32(<2 x float> %i.fkm)
  %i.flm = fadd fast <2 x float> %i.fll, splat (float 1.000000e+00)
  %i.fln = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.flm)
  %i.flo = call fast <2 x float> @llvm.tanh.v2f32(<2 x float> %i.fln)
  %i.flp = fmul fast <2 x float> %i.flo, %i.fkm
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

bb.ak:                                            ; preds = %._crit_edge5008
  %i.flq = load ptr, ptr %11, align 8, !tbaa !9   ; 2 uses
  %i.flr = load float, ptr %i.flq, align 4, !tbaa !74 ; 5 uses
  %i.fls = getelementptr inbounds nuw i8, ptr %i.flq, i64 4
  %i.flt = load float, ptr %i.fls, align 4, !tbaa !74 ; 3 uses
  %i.flu = fneg fast float %i.flt
  %i.flv = fdiv fast float %i.flu, %i.flr         ; 4 uses
  %i.flw = extractelement <2 x float> %i.fkm, i64 0 ; 5 uses
  %i.flx = fcmp fast olt float %i.flw, %i.flv
  br i1 %i.flx, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fly = fdiv fast float 1.000000e+00, %i.flr
  %i.flz = fadd fast float %i.flv, %i.fly
  %i.fma = fcmp fast ogt float %i.flw, %i.flz
  br i1 %i.fma, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fmb = fmul fast float %i.flr, %i.flw
  %i.fmc = fadd fast float %i.fmb, %i.flt
  %i.fmd = fmul fast float %i.fmc, %i.flw
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread

bb.an:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301
  %i.fme = insertelement <2 x float> %i.fle, float %i.fky, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread: ; preds = %bb.ak, %bb.al, %bb.am
  %.141054297 = phi float [ %i.fmd, %bb.am ], [ 0.000000e+00, %bb.ak ], [ %i.flw, %bb.al ] ; 2 uses
  %i.fmf = extractelement <2 x float> %i.fkm, i64 1 ; 4 uses
  %i.fmg = fcmp fast olt float %i.fmf, %i.flv
  %i.fmh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.141054297, i64 0 ; 2 uses
  br i1 %i.fmg, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566, label %bb.ao

bb.ao:                                            ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread
  %i.fmi = fdiv fast float 1.000000e+00, %i.flr
  %i.fmj = fadd fast float %i.flv, %i.fmi
  %i.fmk = fcmp fast ogt float %i.fmf, %i.fmj
  %i.fml = insertelement <2 x float> %i.fkm, float %.141054297, i64 0
  br i1 %i.fmk, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fmm = fmul fast float %i.flr, %i.fmf
  %i.fmn = fadd fast float %i.fmm, %i.flt
  %i.fmo = fmul fast float %i.fmn, %i.fmf
  %i.fmp = insertelement <2 x float> %i.fmh, float %i.fmo, i64 1
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit2566

_ZL13activation_ssfiRKN4ncnn3MatE.exit2566:       ; preds = %._crit_edge5008, %bb.ap, %bb.ao, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4313, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4310, %bb.an, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4307, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4304, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread
  %i.fmq = phi <2 x float> [ %i.fmh, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread ], [ %i.fkn, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4304 ], [ %i.fku, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4307 ], [ %i.fme, %bb.an ], [ %i.fle, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4301 ], [ %i.flk, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4310 ], [ %i.flp, %_ZL13activation_ssfiRKN4ncnn3MatE.exit2567.thread4313 ], [ %i.fmp, %bb.ap ], [ %i.fml, %bb.ao ], [ %i.fkm, %._crit_edge5008 ]
  %i.fmr = bitcast <2 x float> %i.fmq to <2 x i32>
  %i.fms = lshr <2 x i32> %i.fmr, splat (i32 16)
  %i.fmt = trunc nuw <2 x i32> %i.fms to <2 x i16> ; 2 uses
  %i.fmu = extractelement <2 x i16> %i.fmt, i64 0
  store i16 %i.fmu, ptr %.115315018, align 2, !tbaa !76
  %i.fmv = extractelement <2 x i16> %i.fmt, i64 1
  store i16 %i.fmv, ptr %.115295019, align 2, !tbaa !76
  %i.fmw = getelementptr inbounds nuw i8, ptr %.115315018, i64 2 ; 2 uses
  %i.fmx = getelementptr inbounds nuw i8, ptr %.115295019, i64 2 ; 2 uses
  %indvars.iv.next5701 = add nuw nsw i64 %indvars.iv5700, 1 ; 2 uses
  %exitcond5704.not = icmp eq i64 %indvars.iv.next5701, %wide.trip.count5703
  br i1 %exitcond5704.not, label %._crit_edge5022, label %bb.ac, !llvm.loop !258

._crit_edge5193.split:                            ; preds = %._crit_edge5191, %.noexc.lr.ph, %._crit_edge5036.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %.not.i.i.i = icmp eq ptr %.sroa.03778.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %._crit_edge5193.split
  %i.fmy = ptrtoint ptr %.sroa.10.0 to i64
  %i.fmz = ptrtoint ptr %.sroa.03778.0 to i64
  %i.fna = sub i64 %i.fmy, %i.fmz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.03778.0, i64 noundef %i.fna) #28
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge5193.split, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret void

.noexc:                                           ; preds = %.noexc.lr.ph.split.split, %._crit_edge5191
  %indvars.iv5801 = phi i64 [ %i.dfu, %.noexc.lr.ph.split.split ], [ %indvars.iv.next5802, %._crit_edge5191 ] ; 4 uses
  %.reass5195 = mul i64 %factor.op.mul5194, %indvars.iv5801
  %i.fnb = getelementptr inbounds nuw i8, ptr %i.dfa, i64 %.reass5195
  %i.fnc = load ptr, ptr %i.h, align 8            ; 2 uses
  %.not = icmp eq ptr %i.fnc, null
  %i.fnd = getelementptr inbounds [4 x i8], ptr %i.fnc, i64 %indvars.iv5801
  %i.fne = trunc nsw i64 %indvars.iv5801 to i32   ; 2 uses
  %i.fnf = sdiv i32 %i.fne, 16
  %i.fng = insertelement <4 x i32> poison, i32 %i.fne, i64 0
  %i.fnh = shufflevector <4 x i32> %i.fng, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fni = srem <4 x i32> %i.fnh, <i32 16, i32 8, i32 4, i32 2> ; 4 uses
  %i.fnj = bitcast <4 x i32> %i.fni to <16 x i8>
  %.lhs.trunc4320 = extractelement <16 x i8> %i.fnj, i64 0
  %i.fnk = sdiv i8 %.lhs.trunc4320, 8
  %.sext4321 = sext i8 %i.fnk to i32
  %i.fnl = bitcast <4 x i32> %i.fni to <16 x i8>
  %.lhs.trunc4322 = extractelement <16 x i8> %i.fnl, i64 4
  %i.fnm = sdiv i8 %.lhs.trunc4322, 4
  %.sext4323 = sext i8 %i.fnm to i32
  %i.fnn = bitcast <4 x i32> %i.fni to <16 x i8>
  %.lhs.trunc4324 = extractelement <16 x i8> %i.fnn, i64 8
  %i.fno = sdiv i8 %.lhs.trunc4324, 2
  %.sext4325 = sext i8 %i.fno to i32
  %i.fnp = extractelement <4 x i32> %i.fni, i64 3
  %i.fnq = add nsw i32 %i.fnp, %i.fnf
  %i.fnr = add nsw i32 %i.fnq, %.sext4321
  %i.fns = add nsw i32 %i.fnr, %.sext4323
  %i.fnt = add nsw i32 %i.fns, %.sext4325
  %i.fnu = sext i32 %i.fnt to i64
  %i.fnv = load i32, ptr %i.c, align 4
  %.reass5198 = mul i64 %factor.op.mul5197, %i.fnu
  %i.fnw = getelementptr inbounds nuw i8, ptr %i.dfq, i64 %.reass5198 ; 2 uses
  br label %.preheader4342

.preheader4342:                                   ; preds = %.noexc, %._crit_edge5181
  %.014715190 = phi i32 [ 0, %.noexc ], [ %i.foo, %._crit_edge5181 ] ; 2 uses
  %.014725189 = phi ptr [ %i.fnb, %.noexc ], [ %i.hxa, %._crit_edge5181 ]
  %i.fnx = load i32, ptr %i.b, align 4
  %i.fny = mul nsw i32 %i.fnx, %.014715190
  %i.fnz = sext i32 %i.fny to i64                 ; 5 uses
  %i.foa = load i32, ptr %i.a, align 4            ; 2 uses
  %factor.op.mul5183 = mul i32 %i.n, %i.foa       ; 3 uses
  %i.fob = load i32, ptr %i.f, align 4            ; 8 uses
  %i.foc = icmp sgt i32 %i.fob, 0                 ; 2 uses
  %i.fod = add i32 %i.fob, -1
  %i.foe = zext i32 %i.fod to i64                 ; 2 uses
  %i.fof = shl nuw nsw i64 %i.foe, 2
  %i.fog = shl nuw nsw i64 %i.foe, 1
  %i.foh = sext i32 %i.foa to i64                 ; 2 uses
  %wide.trip.count5780 = zext i32 %i.fob to i64   ; 11 uses
  %wide.trip.count5790 = zext nneg i32 %i.fob to i64
  %min.iters.check6418 = icmp ult i32 %i.fob, 8
  %min.iters.check6420 = icmp ult i32 %i.fob, 64
  %i.foi = and i64 %wide.trip.count5780, 56
  %n.vec6422 = and i64 %wide.trip.count5780, 2147483584 ; 5 uses
  %i.foj = shl nuw nsw i64 %n.vec6422, 2
  %cmp.n6454 = icmp eq i64 %n.vec6422, %wide.trip.count5780
  %min.epilog.iters.check6460 = icmp eq i64 %i.foi, 0
  %n.vec6462 = and i64 %wide.trip.count5780, 2147483640 ; 4 uses
  %i.fok = shl nuw nsw i64 %n.vec6462, 2
  %cmp.n6473 = icmp eq i64 %n.vec6462, %wide.trip.count5780
  %min.iters.check6372 = icmp ult i32 %i.fob, 8
  %min.iters.check6374 = icmp ult i32 %i.fob, 64
  %i.fol = and i64 %wide.trip.count5780, 56
  %n.vec6376 = and i64 %wide.trip.count5780, 2147483584 ; 5 uses
  %i.fom = shl nuw nsw i64 %n.vec6376, 1
  %cmp.n6397 = icmp eq i64 %n.vec6376, %wide.trip.count5780
  %min.epilog.iters.check6403 = icmp eq i64 %i.fol, 0
  %n.vec6405 = and i64 %wide.trip.count5780, 2147483640 ; 4 uses
  %i.fon = shl nuw nsw i64 %n.vec6405, 1
  %cmp.n6414 = icmp eq i64 %n.vec6405, %wide.trip.count5780
  br label %bb.ar

._crit_edge5191:                                  ; preds = %._crit_edge5181
  %indvars.iv.next5802 = add nsw i64 %indvars.iv5801, 1 ; 2 uses
  %exitcond5805.not = icmp eq i64 %indvars.iv.next5802, %i.dfv
  br i1 %exitcond5805.not, label %._crit_edge5193.split, label %.noexc, !llvm.loop !259

._crit_edge5181:                                  ; preds = %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %i.foo = add nuw nsw i32 %.014715190, 1         ; 2 uses
  %exitcond5800.not = icmp eq i32 %i.foo, %i.y
  br i1 %exitcond5800.not, label %._crit_edge5191, label %.preheader4342, !llvm.loop !260

bb.ar:                                            ; preds = %.preheader4342, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %indvars.iv5795 = phi i64 [ 0, %.preheader4342 ], [ %indvars.iv.next5796, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 6 uses
  %.114735178 = phi ptr [ %.014725189, %.preheader4342 ], [ %i.hxa, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ] ; 2 uses
  br i1 %.not, label %_ZN4ncnn3MatD2Ev.exit2336, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fop = load float, ptr %i.fnd, align 4, !tbaa !74
  br label %_ZN4ncnn3MatD2Ev.exit2336

_ZN4ncnn3MatD2Ev.exit2336:                        ; preds = %bb.as, %bb.ar
  %.01465 = phi nsz float [ %i.fop, %bb.as ], [ 0.000000e+00, %bb.ar ]
  br i1 %i.dfg, label %_ZN4ncnn3MatD2Ev.exit2335.lr.ph, label %._crit_edge5075

_ZN4ncnn3MatD2Ev.exit2335.lr.ph:                  ; preds = %_ZN4ncnn3MatD2Ev.exit2336
  %i.foq = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !261
  %i.for = load ptr, ptr %0, align 8, !tbaa !9, !noalias !261
  %i.fos = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !261
  %i.fot = load i64, ptr %i.dfh, align 8, !tbaa !19, !noalias !261 ; 2 uses
  %factor.op.mul5079 = mul i64 %i.fos, %i.fot
  %i.fou = sext i32 %i.foq to i64
  %i.fov = mul i64 %i.fot, %i.fou
  %i.fow = mul i64 %i.fov, %i.fnz
  %invariant.gep5081 = getelementptr i8, ptr %i.for, i64 %i.fow
  %i.fox = trunc nuw nsw i64 %indvars.iv5795 to i32
  %.reass5184 = mul i32 %factor.op.mul5183, %i.fox
  %i.foy = sext i32 %.reass5184 to i64
  %invariant.gep5082 = getelementptr [2 x i8], ptr %invariant.gep5081, i64 %i.foy
  %i.foz = load i32, ptr %i.f, align 4            ; 8 uses
  %i.fpa = icmp slt i32 %i.foz, 1                 ; 2 uses
  %i.fpb = load ptr, ptr %i.g, align 8            ; 8 uses
  %i.fpc = load i64, ptr %i.d, align 8            ; 17 uses
  %i.fpd = icmp sgt i32 %i.foz, 0                 ; 2 uses
  %.idx1941 = shl i64 %i.fpc, 2                   ; 2 uses
  %.idx1942 = mul i64 %i.fpc, 6                   ; 2 uses
  %.idx1943 = mul i64 %i.fpc, 30
  %.idx1944 = mul i64 %i.fpc, 28
  %.idx1945 = mul i64 %i.fpc, 26
  %.idx1946 = mul i64 %i.fpc, 24
  %.idx1947 = mul i64 %i.fpc, 22
  %.idx1948 = mul i64 %i.fpc, 20
  %.idx1949 = mul i64 %i.fpc, 18
  %.idx1950 = shl i64 %i.fpc, 4
  %.idx1951 = mul i64 %i.fpc, 14
  %.idx1952 = mul i64 %i.fpc, 12
  %.idx1953 = mul i64 %i.fpc, 10
  %.idx1954 = shl i64 %i.fpc, 3
  %i.fpe = add i32 %i.foz, -1
  %i.fpf = zext i32 %i.fpe to i64
  %i.fpg = shl nuw nsw i64 %i.fpf, 5              ; 4 uses
  %brmerge5224 = select i1 %i.dfi, i1 true, i1 %i.fpa
  %wide.trip.count5716 = zext i32 %i.foz to i64   ; 5 uses
  %brmerge5227 = select i1 %i.dfl, i1 true, i1 %i.fpa
  %wide.trip.count5737 = zext nneg i32 %i.foz to i64
  %wide.trip.count5730 = zext nneg i32 %i.foz to i64
  %i.fph = add nsw i64 %wide.trip.count5716, -1   ; 2 uses
  %xtraiter6674 = and i64 %wide.trip.count5716, 1
  %i.fpi = icmp eq i64 %i.fph, 0
  %unroll_iter6678 = and i64 %wide.trip.count5716, 2147483646
  %lcmp.mod6675.not = icmp eq i64 %xtraiter6674, 0
  %lcmp.mod6677 = trunc i32 %i.foz to i1
  %xtraiter6680 = and i64 %wide.trip.count5716, 1
  %i.fpj = icmp eq i64 %i.fph, 0
  %unroll_iter6684 = and i64 %wide.trip.count5716, 2147483646
  %lcmp.mod6681.not = icmp eq i64 %xtraiter6680, 0
  %lcmp.mod6683 = trunc i32 %i.foz to i1
  br label %_ZN4ncnn3MatD2Ev.exit2335

_ZN4ncnn3MatD2Ev.exit2335:                        ; preds = %_ZN4ncnn3MatD2Ev.exit2335.lr.ph, %.loopexit4336
  %.014595074 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2335.lr.ph ], [ %i.fwt, %.loopexit4336 ] ; 2 uses
  %.014605073 = phi ptr [ %i.fnw, %_ZN4ncnn3MatD2Ev.exit2335.lr.ph ], [ %.8, %.loopexit4336 ] ; 13 uses
  %.040535072 = phi <16 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2335.lr.ph ], [ %.84061, %.loopexit4336 ] ; 9 uses
  %i.fpk = sdiv i32 %.014595074, %i.n
  %i.fpl = sext i32 %i.fpk to i64
  %.reass5080 = mul i64 %factor.op.mul5079, %i.fpl
  %gep5083 = getelementptr i8, ptr %invariant.gep5082, i64 %.reass5080 ; 27 uses
  br i1 %brmerge5224, label %.loopexit4340, label %.lr.ph5049.preheader

.lr.ph5049.preheader:                             ; preds = %_ZN4ncnn3MatD2Ev.exit2335
  br i1 %i.fpi, label %.lr.ph5049.epil.preheader, label %.lr.ph5049

.lr.ph5049:                                       ; preds = %.lr.ph5049.preheader, %.lr.ph5049
  %indvars.iv5711 = phi i64 [ %indvars.iv.next5712.1, %.lr.ph5049 ], [ 0, %.lr.ph5049.preheader ] ; 3 uses
  %.114615047 = phi ptr [ %i.fqg, %.lr.ph5049 ], [ %.014605073, %.lr.ph5049.preheader ] ; 3 uses
  %.140545046 = phi <16 x float> [ %i.fqf, %.lr.ph5049 ], [ %.040535072, %.lr.ph5049.preheader ]
  %niter6679 = phi i64 [ %niter6679.next.1, %.lr.ph5049 ], [ 0, %.lr.ph5049.preheader ]
  %i.fpm = getelementptr inbounds nuw [4 x i8], ptr %i.fpb, i64 %indvars.iv5711
  %i.fpn = load i32, ptr %i.fpm, align 4, !tbaa !113
  %i.fpo = sext i32 %i.fpn to i64
  %i.fpp = getelementptr inbounds [2 x i8], ptr %gep5083, i64 %i.fpo
  %i.fpq = load <16 x bfloat>, ptr %i.fpp, align 1, !tbaa !20
  %i.fpr = fpext fast <16 x bfloat> %i.fpq to <16 x float>
  %i.fps = load <16 x bfloat>, ptr %.114615047, align 32, !tbaa !20
  %i.fpt = fpext fast <16 x bfloat> %i.fps to <16 x float>
  %i.fpu = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fpr, <16 x float> nofpclass(nan inf) %i.fpt, <16 x float> nofpclass(nan inf) %.140545046)
  %i.fpv = getelementptr inbounds nuw i8, ptr %.114615047, i64 32
  %i.fpw = getelementptr inbounds nuw [4 x i8], ptr %i.fpb, i64 %indvars.iv5711
  %i.fpx = getelementptr inbounds nuw i8, ptr %i.fpw, i64 4
  %i.fpy = load i32, ptr %i.fpx, align 4, !tbaa !113
  %i.fpz = sext i32 %i.fpy to i64
  %i.fqa = getelementptr inbounds [2 x i8], ptr %gep5083, i64 %i.fpz
  %i.fqb = load <16 x bfloat>, ptr %i.fqa, align 1, !tbaa !20
  %i.fqc = fpext fast <16 x bfloat> %i.fqb to <16 x float>
  %i.fqd = load <16 x bfloat>, ptr %i.fpv, align 32, !tbaa !20
  %i.fqe = fpext fast <16 x bfloat> %i.fqd to <16 x float>
  %i.fqf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fqc, <16 x float> nofpclass(nan inf) %i.fqe, <16 x float> nofpclass(nan inf) %i.fpu) ; 3 uses
  %i.fqg = getelementptr inbounds nuw i8, ptr %.114615047, i64 64 ; 2 uses
  %indvars.iv.next5712.1 = add nuw nsw i64 %indvars.iv5711, 2 ; 2 uses
  %niter6679.next.1 = add i64 %niter6679, 2       ; 2 uses
  %niter6679.ncmp.1 = icmp eq i64 %niter6679.next.1, %unroll_iter6678
  br i1 %niter6679.ncmp.1, label %.loopexit4340.thread.unr-lcssa, label %.lr.ph5049, !llvm.loop !264

.loopexit4340.thread.unr-lcssa:                   ; preds = %.lr.ph5049
  br i1 %lcmp.mod6675.not, label %.loopexit4340.thread, label %.lr.ph5049.epil.preheader

.lr.ph5049.epil.preheader:                        ; preds = %.loopexit4340.thread.unr-lcssa, %.lr.ph5049.preheader
  %indvars.iv5711.epil.init = phi i64 [ 0, %.lr.ph5049.preheader ], [ %indvars.iv.next5712.1, %.loopexit4340.thread.unr-lcssa ]
  %.114615047.epil.init = phi ptr [ %.014605073, %.lr.ph5049.preheader ], [ %i.fqg, %.loopexit4340.thread.unr-lcssa ]
  %.140545046.epil.init = phi <16 x float> [ %.040535072, %.lr.ph5049.preheader ], [ %i.fqf, %.loopexit4340.thread.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod6677)
  %i.fqh = getelementptr inbounds nuw [4 x i8], ptr %i.fpb, i64 %indvars.iv5711.epil.init
  %i.fqi = load i32, ptr %i.fqh, align 4, !tbaa !113
  %i.fqj = sext i32 %i.fqi to i64
  %i.fqk = getelementptr inbounds [2 x i8], ptr %gep5083, i64 %i.fqj
  %i.fql = load <16 x bfloat>, ptr %i.fqk, align 1, !tbaa !20
  %i.fqm = fpext fast <16 x bfloat> %i.fql to <16 x float>
  %i.fqn = load <16 x bfloat>, ptr %.114615047.epil.init, align 32, !tbaa !20
  %i.fqo = fpext fast <16 x bfloat> %i.fqn to <16 x float>
  %i.fqp = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.fqm, <16 x float> nofpclass(nan inf) %i.fqo, <16 x float> nofpclass(nan inf) %.140545046.epil.init)
  br label %.loopexit4340.thread

.loopexit4340.thread:                             ; preds = %.loopexit4340.thread.unr-lcssa, %.lr.ph5049.epil.preheader
  %.lcssa = phi <16 x float> [ %i.fqf, %.loopexit4340.thread.unr-lcssa ], [ %i.fqp, %.lr.ph5049.epil.preheader ]
  %scevgep5713 = getelementptr i8, ptr %.014605073, i64 32
  %scevgep5714 = getelementptr i8, ptr %scevgep5713, i64 %i.fpg
  br label %.loopexit4336

.loopexit4340:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit2335
  br i1 %i.dfj, label %bb.at, label %.loopexit4338

bb.at:                                            ; preds = %.loopexit4340
  %i.fqq = getelementptr inbounds nuw [2 x i8], ptr %gep5083, i64 %i.fpc ; 3 uses
  br i1 %i.fpd, label %.lr.ph5056.preheader, label %.loopexit4336

.lr.ph5056.preheader:                             ; preds = %bb.at
  br i1 %i.fpj, label %.lr.ph5056.epil.preheader, label %.lr.ph5056

.lr.ph5056:                                       ; preds = %.lr.ph5056.preheader, %.lr.ph5056
  %indvars.iv5718 = phi i64 [ %indvars.iv.next5719.1, %.lr.ph5056 ], [ 0, %.lr.ph5056.preheader ] ; 3 uses
  %.314635053 = phi ptr [ %i.frx, %.lr.ph5056 ], [ %.014605073, %.lr.ph5056.preheader ] ; 3 uses
  %.340565052 = phi <16 x float> [ %i.frw, %.lr.ph5056 ], [ %.040535072, %.lr.ph5056.preheader ]
  %niter6685 = phi i64 [ %niter6685.next.1, %.lr.ph5056 ], [ 0, %.lr.ph5056.preheader ]
  %i.fqr = getelementptr inbounds nuw [4 x i8], ptr %i.fpb, i64 %indvars.iv5718
  %i.fqs = load i32, ptr %i.fqr, align 4, !tbaa !113
  %i.fqt = sext i32 %i.fqs to i64                 ; 2 uses
  %i.fqu = getelementptr inbounds [2 x i8], ptr %gep5083, i64 %i.fqt
  %i.fqv = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.fqu)
  %i.fqw = bitcast <16 x i8> %i.fqv to <8 x bfloat>
  %i.fqx = fpext fast <8 x bfloat> %i.fqw to <8 x float>
  %i.fqy = getelementptr inbounds [2 x i8], ptr %i.fqq, i64 %i.fqt
  %i.fqz = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.fqy)
  %i.fra = bitcast <16 x i8> %i.fqz to <8 x bfloat>
  %i.frb = fpext fast <8 x bfloat> %i.fra to <8 x float>
  %i.frc = shufflevector <8 x float> %i.fqx, <8 x float> %i.frb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.frd = load <16 x bfloat>, ptr %.314635053, align 32, !tbaa !20
  %i.fre = fpext fast <16 x bfloat> %i.frd to <16 x float>
  %i.frf = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.frc, <16 x float> nofpclass(nan inf) %i.fre, <16 x float> nofpclass(nan inf) %.340565052)
  %i.frg = getelementptr inbounds nuw i8, ptr %.314635053, i64 32
  %i.frh = getelementptr inbounds nuw [4 x i8], ptr %i.fpb, i64 %indvars.iv5718
  %i.fri = getelementptr inbounds nuw i8, ptr %i.frh, i64 4
  %i.frj = load i32, ptr %i.fri, align 4, !tbaa !113
  %i.frk = sext i32 %i.frj to i64                 ; 2 uses
  %i.frl = getelementptr inbounds [2 x i8], ptr %gep5083, i64 %i.frk
  %i.frm = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.frl)
  %i.frn = bitcast <16 x i8> %i.frm to <8 x bfloat>
  %i.fro = fpext fast <8 x bfloat> %i.frn to <8 x float>
  %i.frp = getelementptr inbounds [2 x i8], ptr %i.fqq, i64 %i.frk
  %i.frq = call <16 x i8> @llvm.x86.sse3.ldu.dq(ptr %i.frp)
  %i.frr = bitcast <16 x i8> %i.frq to <8 x bfloat>
  %i.frs = fpext fast <8 x bfloat> %i.frr to <8 x float>
  %i.frt = shufflevector <8 x float> %i.fro, <8 x float> %i.frs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fru = load <16 x bfloat>, ptr %i.frg, align 32, !tbaa !20
  %i.frv = fpext fast <16 x bfloat> %i.fru to <16 x float>
  %i.frw = call fast noundef nofpclass(nan inf) <16 x float> @llvm.fma.v16f32(<16 x float> nofpclass(nan inf) %i.frt, <16 x float> nofpclass(nan inf) %i.frv, <16 x float> nofpclass(nan inf) %i.frf) ; 3 uses
  %i.frx = getelementptr inbounds nuw i8, ptr %.314635053, i64 64 ; 2 uses
  %indvars.iv.next5719.1 = add nuw nsw i64 %indvars.iv5718, 2 ; 2 uses
  %niter6685.next.1 = add i64 %niter6685, 2       ; 2 uses
  %niter6685.ncmp.1 = icmp eq i64 %niter6685.next.1, %unroll_iter6684
  br i1 %niter6685.ncmp.1, label %.loopexit4338.loopexit.unr-lcssa, label %.lr.ph5056, !llvm.loop !265

.loopexit4338.loopexit.unr-lcssa:                 ; preds = %.lr.ph5056
  br i1 %lcmp.mod6681.not, label %.loopexit4338.loopexit, label %.lr.ph5056.epil.preheader

.lr.ph5056.epil.preheader:                        ; preds = %.loopexit4338.loopexit.unr-lcssa, %.lr.ph5056.preheader
  %indvars.iv5718.epil.init = phi i64 [ 0, %.lr.ph5056.preheader ], [ %indvars.iv.next5719.1, %.loopexit4338.loopexit.unr-lcssa ]
end_hunk_1
begin_hunk_2_@_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.arp = shl nuw <2 x i32> %i.aro, splat (i32 16)
  %i.arq = bitcast <2 x i32> %i.arp to <2 x float>
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.arr = phi <2 x float> [ %i.arq, %bb.dg ], [ zeroinitializer, %bb.df ] ; 2 uses
  br i1 %i.amq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ars = getelementptr inbounds nuw i8, ptr %i.aql, i64 6
  %i.art = load i16, ptr %i.ars, align 2, !tbaa !76
  %i.aru = getelementptr inbounds nuw i8, ptr %i.aqn, i64 6
  %i.arv = load i16, ptr %i.aru, align 2, !tbaa !76
  %i.arw = zext i16 %i.arv to i32
  %i.arx = zext i16 %i.art to i32
  %i.ary = insertelement <2 x i32> poison, i32 %i.arx, i64 0
  %i.arz = insertelement <2 x i32> %i.ary, i32 %i.arw, i64 1
  %i.asa = shl nuw <2 x i32> %i.arz, splat (i32 16)
  %i.asb = bitcast <2 x i32> %i.asa to <2 x float>
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dc
  %i.asc = phi <2 x float> [ zeroinitializer, %bb.dc ], [ %i.asb, %bb.di ], [ zeroinitializer, %bb.dh ]
  %i.asd = phi <2 x float> [ zeroinitializer, %bb.dc ], [ %i.arg, %bb.di ], [ %i.arg, %bb.dh ] ; 3 uses
  %i.ase = phi <2 x float> [ zeroinitializer, %bb.dc ], [ %i.arr, %bb.di ], [ %i.arr, %bb.dh ] ; 3 uses
  %i.asf = phi <2 x float> [ zeroinitializer, %bb.dc ], [ %i.aqv, %bb.di ], [ %i.aqv, %bb.dh ]
  %i.asg = fsub fast <2 x float> %i.asf, %i.ase   ; 3 uses
  %i.ash = fadd fast <2 x float> %i.ase, %i.asd   ; 3 uses
  %i.asi = fsub fast <2 x float> %i.ase, %i.asd   ; 3 uses
  %i.asj = fsub fast <2 x float> %i.asc, %i.asd   ; 3 uses
  %i.ask = getelementptr inbounds [2 x i8], ptr %i.aql, i64 %i.akw ; 5 uses
  %i.asl = icmp sgt i64 %invariant.op848, %i.amf
  br i1 %i.asl, label %bb.dk, label %bb.dq

bb.dk:                                            ; preds = %bb.dj
  %i.asm = getelementptr inbounds nuw [2 x i8], ptr %i.ask, i64 %i.amk ; 4 uses
  %i.asn = load i16, ptr %i.ask, align 2, !tbaa !76
  %i.aso = load i16, ptr %i.asm, align 2, !tbaa !76
  %i.asp = zext i16 %i.aso to i32
  %i.asq = zext i16 %i.asn to i32
  %i.asr = insertelement <2 x i32> poison, i32 %i.asq, i64 0
  %i.ass = insertelement <2 x i32> %i.asr, i32 %i.asp, i64 1
  %i.ast = shl nuw <2 x i32> %i.ass, splat (i32 16)
  %i.asu = bitcast <2 x i32> %i.ast to <2 x float> ; 2 uses
  br i1 %i.amm, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.asv = getelementptr inbounds nuw i8, ptr %i.ask, i64 2
  %i.asw = load i16, ptr %i.asv, align 2, !tbaa !76
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asm, i64 2
  %i.asy = load i16, ptr %i.asx, align 2, !tbaa !76
  %i.asz = zext i16 %i.asy to i32
  %i.ata = zext i16 %i.asw to i32
  %i.atb = insertelement <2 x i32> poison, i32 %i.ata, i64 0
  %i.atc = insertelement <2 x i32> %i.atb, i32 %i.asz, i64 1
  %i.atd = shl nuw <2 x i32> %i.atc, splat (i32 16)
  %i.ate = bitcast <2 x i32> %i.atd to <2 x float>
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.atf = phi <2 x float> [ %i.ate, %bb.dl ], [ zeroinitializer, %bb.dk ] ; 2 uses
  br i1 %i.amo, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.atg = getelementptr inbounds nuw i8, ptr %i.ask, i64 4
  %i.ath = load i16, ptr %i.atg, align 2, !tbaa !76
  %i.ati = getelementptr inbounds nuw i8, ptr %i.asm, i64 4
  %i.atj = load i16, ptr %i.ati, align 2, !tbaa !76
  %i.atk = zext i16 %i.atj to i32
  %i.atl = zext i16 %i.ath to i32
  %i.atm = insertelement <2 x i32> poison, i32 %i.atl, i64 0
  %i.atn = insertelement <2 x i32> %i.atm, i32 %i.atk, i64 1
  %i.ato = shl nuw <2 x i32> %i.atn, splat (i32 16)
  %i.atp = bitcast <2 x i32> %i.ato to <2 x float>
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.atq = phi <2 x float> [ %i.atp, %bb.dn ], [ zeroinitializer, %bb.dm ] ; 2 uses
  br i1 %i.amq, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.atr = getelementptr inbounds nuw i8, ptr %i.ask, i64 6
  %i.ats = load i16, ptr %i.atr, align 2, !tbaa !76
  %i.att = getelementptr inbounds nuw i8, ptr %i.asm, i64 6
  %i.atu = load i16, ptr %i.att, align 2, !tbaa !76
  %i.atv = zext i16 %i.atu to i32
  %i.atw = zext i16 %i.ats to i32
  %i.atx = insertelement <2 x i32> poison, i32 %i.atw, i64 0
  %i.aty = insertelement <2 x i32> %i.atx, i32 %i.atv, i64 1
  %i.atz = shl nuw <2 x i32> %i.aty, splat (i32 16)
  %i.aua = bitcast <2 x i32> %i.atz to <2 x float>
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do, %bb.dj
  %i.aub = phi <2 x float> [ zeroinitializer, %bb.dj ], [ %i.aua, %bb.dp ], [ zeroinitializer, %bb.do ]
  %i.auc = phi <2 x float> [ zeroinitializer, %bb.dj ], [ %i.atf, %bb.dp ], [ %i.atf, %bb.do ] ; 3 uses
  %i.aud = phi <2 x float> [ zeroinitializer, %bb.dj ], [ %i.atq, %bb.dp ], [ %i.atq, %bb.do ] ; 3 uses
  %i.aue = phi <2 x float> [ zeroinitializer, %bb.dj ], [ %i.asu, %bb.dp ], [ %i.asu, %bb.do ]
  %.idx840 = shl nuw nsw i64 %indvars.iv759, 3
  %i.auf = getelementptr inbounds nuw i8, ptr %i.alz, i64 %.idx840 ; 5 uses
  %i.aug = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %i.aky ; 2 uses
  %i.auh = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %i.ala ; 2 uses
  %i.aui = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %i.alc ; 2 uses
  %i.auj = fadd fast <2 x float> %i.aoj, %i.asg
  %i.auk = fsub fast <2 x float> %i.aok, %i.auj
  store <2 x float> %i.auk, ptr %i.auf, align 4, !tbaa !74
  %i.aul = fadd fast <2 x float> %i.asg, %i.aqh
  store <2 x float> %i.aul, ptr %i.aug, align 4, !tbaa !74
  %i.aum = fsub fast <2 x float> %i.asg, %i.aqh
  store <2 x float> %i.aum, ptr %i.auh, align 4, !tbaa !74
  %i.aun = fadd fast <2 x float> %i.aud, %i.aqh
  %i.auo = fsub fast <2 x float> %i.aue, %i.aun
  store <2 x float> %i.auo, ptr %i.aui, align 4, !tbaa !74
  %i.aup = getelementptr inbounds nuw [4 x i8], ptr %i.auf, i64 %i.ale ; 2 uses
  %i.auq = getelementptr inbounds nuw [4 x i8], ptr %i.aug, i64 %i.ale ; 2 uses
  %i.aur = getelementptr inbounds nuw [4 x i8], ptr %i.auh, i64 %i.ale ; 2 uses
  %i.aus = getelementptr inbounds nuw [4 x i8], ptr %i.aui, i64 %i.ale ; 2 uses
  %i.aut = fsub fast <2 x float> %i.aol, %i.ash
  store <2 x float> %i.aut, ptr %i.aup, align 4, !tbaa !74
  %i.auu = fadd fast <2 x float> %i.ash, %i.aqi
  store <2 x float> %i.auu, ptr %i.auq, align 4, !tbaa !74
  %i.auv = fsub fast <2 x float> %i.ash, %i.aqi
  store <2 x float> %i.auv, ptr %i.aur, align 4, !tbaa !74
  %i.auw = fadd fast <2 x float> %i.aud, %i.auc
  %i.aux = fsub fast <2 x float> %i.auw, %i.aqi
  store <2 x float> %i.aux, ptr %i.aus, align 4, !tbaa !74
  %i.auy = getelementptr inbounds nuw [4 x i8], ptr %i.aup, i64 %i.ale ; 2 uses
  %i.auz = getelementptr inbounds nuw [4 x i8], ptr %i.auq, i64 %i.ale ; 2 uses
  %i.ava = getelementptr inbounds nuw [4 x i8], ptr %i.aur, i64 %i.ale ; 2 uses
  %i.avb = getelementptr inbounds nuw [4 x i8], ptr %i.aus, i64 %i.ale ; 2 uses
  %i.avc = fadd fast <2 x float> %i.aoi, %i.asi
  %i.avd = fsub fast <2 x float> %i.aoj, %i.avc
  store <2 x float> %i.avd, ptr %i.auy, align 4, !tbaa !74
  %i.ave = fadd fast <2 x float> %i.asi, %i.aqj
  store <2 x float> %i.ave, ptr %i.auz, align 4, !tbaa !74
  %i.avf = fsub fast <2 x float> %i.asi, %i.aqj
  store <2 x float> %i.avf, ptr %i.ava, align 4, !tbaa !74
  %i.avg = fadd fast <2 x float> %i.auc, %i.aqj
  %i.avh = fsub fast <2 x float> %i.aud, %i.avg
  store <2 x float> %i.avh, ptr %i.avb, align 4, !tbaa !74
  %i.avi = getelementptr inbounds nuw [4 x i8], ptr %i.auy, i64 %i.ale
  %i.avj = getelementptr inbounds nuw [4 x i8], ptr %i.auz, i64 %i.ale
  %i.avk = getelementptr inbounds nuw [4 x i8], ptr %i.ava, i64 %i.ale
  %i.avl = getelementptr inbounds nuw [4 x i8], ptr %i.avb, i64 %i.ale
  %i.avm = fadd fast <2 x float> %i.aoi, %i.asj
  %i.avn = fsub fast <2 x float> %i.aoh, %i.avm
  store <2 x float> %i.avn, ptr %i.avi, align 4, !tbaa !74
  %i.avo = fadd fast <2 x float> %i.asj, %i.aqk
  store <2 x float> %i.avo, ptr %i.avj, align 4, !tbaa !74
  %i.avp = fsub fast <2 x float> %i.asj, %i.aqk
  store <2 x float> %i.avp, ptr %i.avk, align 4, !tbaa !74
  %i.avq = fadd fast <2 x float> %i.auc, %i.aqk
  %i.avr = fsub fast <2 x float> %i.aub, %i.avq
  store <2 x float> %i.avr, ptr %i.avl, align 4, !tbaa !74
  %indvars.iv.next760 = add nuw nsw i64 %indvars.iv759, 1 ; 2 uses
  %exitcond763.not = icmp eq i64 %indvars.iv.next760, %wide.trip.count762
  br i1 %exitcond763.not, label %._crit_edge.us699, label %_ZN4ncnn3MatD2Ev.exit491.us, !llvm.loop !640

._crit_edge.us699:                                ; preds = %bb.dq
  %indvars.iv.next765 = add nuw nsw i64 %indvars.iv764, 1 ; 2 uses
  %exitcond768.not = icmp eq i64 %indvars.iv.next765, %wide.trip.count767
  br i1 %exitcond768.not, label %._crit_edge694, label %_ZN4ncnn3MatD2Ev.exit491.lr.ph.us, !llvm.loop !641

._crit_edge694:                                   ; preds = %._crit_edge.us699, %.lr.ph693, %._crit_edge676
  %i.avs = shl nsw i32 %i.akq, 1
  %i.avt = add nsw i32 %i.avs, %i.ako             ; 2 uses
  %i.avu = icmp slt i32 %i.avt, %5
  br i1 %i.avu, label %.lr.ph714, label %._crit_edge715

.lr.ph714:                                        ; preds = %._crit_edge694
  %i.avv = load i32, ptr %i.b, align 4, !tbaa !113 ; 7 uses
  %i.avw = icmp sgt i32 %i.avv, 0
  %i.avx = load i32, ptr %i.h, align 4            ; 2 uses
  %i.avy = load i32, ptr %i.d, align 4
  %i.avz = sext i32 %i.avy to i64                 ; 3 uses
  %factor.op.mul716 = shl i32 %i.avv, 4
  %i.awa = sext i32 %i.avv to i64
  %i.awb = shl nsw i32 %i.avv, 1
  %i.awc = sext i32 %i.awb to i64
  %i.awd = mul nsw i32 %i.avv, 3
  %i.awe = sext i32 %i.awd to i64
  %i.awf = shl nsw i32 %i.avv, 2
  %i.awg = sext i32 %i.awf to i64                 ; 12 uses
  br i1 %i.avw, label %.lr.ph714.split.us, label %._crit_edge715

.lr.ph714.split.us:                               ; preds = %.lr.ph714
  %i.awh = load i32, ptr %i.e, align 4            ; 2 uses
  %i.awi = load i32, ptr %i.c, align 4
  %i.awj = load i32, ptr %i.a, align 4
  %i.awk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.awl = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !642
  %i.awm = load ptr, ptr %0, align 8, !tbaa !9, !noalias !642
  %i.awn = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !642
  %i.awo = load i64, ptr %i.awk, align 8, !tbaa !19, !noalias !642 ; 2 uses
  %factor.op.mul719 = mul i64 %i.awn, %i.awo
  %i.awp = sext i32 %i.awl to i64
  %factor.op.mul710.us = mul i64 %i.awo, %i.awp
  %i.awq = load ptr, ptr %1, align 8, !tbaa !9
  %i.awr = sext i32 %i.awh to i64                 ; 3 uses
  %i.aws = sext i32 %i.avt to i64
  %i.awt = sext i32 %i.awi to i64
  %i.awu = sext i32 %5 to i64
  %wide.trip.count780 = zext nneg i32 %i.avv to i64
  %invariant.op849 = add nsw i64 %i.awr, -1
  %invariant.op850 = add nsw i64 %i.awr, -2
  %invariant.op851 = add nsw i64 %i.awr, -3
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us718, %.lr.ph714.split.us
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %._crit_edge.us718 ], [ %i.aws, %.lr.ph714.split.us ] ; 3 uses
  %i.awv = add nsw i64 %indvars.iv782, %i.awt
  %.reass720 = mul i64 %factor.op.mul719, %i.awv
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awm, i64 %.reass720
  %i.awx = trunc nsw i64 %indvars.iv782 to i32
  %.reass717.us = mul i32 %factor.op.mul716, %i.awx
  %i.awy = sext i32 %.reass717.us to i64
  %i.awz = getelementptr inbounds [4 x i8], ptr %i.awq, i64 %i.awy
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.es
  %indvars.iv777 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next778, %bb.es ] ; 3 uses
  %i.axa = trunc i64 %indvars.iv777 to i32
  %i.axb = add i32 %i.awj, %i.axa                 ; 2 uses
  %i.axc = sdiv i32 %i.axb, %i.avx
  %i.axd = srem i32 %i.axb, %i.avx
  %i.axe = shl nsw i32 %i.axc, 1                  ; 2 uses
  %i.axf = sext i32 %i.axe to i64                 ; 4 uses
  %.reass711.us = mul i64 %factor.op.mul710.us, %i.axf
  %i.axg = getelementptr inbounds nuw i8, ptr %i.aww, i64 %.reass711.us
  %i.axh = shl nsw i32 %i.axd, 1                  ; 4 uses
  %i.axi = sext i32 %i.axh to i64
  %i.axj = getelementptr inbounds [2 x i8], ptr %i.axg, i64 %i.axi ; 5 uses
  %i.axk = or disjoint i32 %i.axh, 1
  %i.axl = load i32, ptr %i.d, align 4            ; 3 uses
  %i.axm = icmp slt i32 %i.axk, %i.axl            ; 4 uses
  %i.axn = add nsw i32 %i.axh, 2
  %i.axo = icmp slt i32 %i.axn, %i.axl            ; 4 uses
  %i.axp = add nsw i32 %i.axh, 3
  %i.axq = icmp slt i32 %i.axp, %i.axl            ; 4 uses
  %i.axr = icmp slt i32 %i.axe, %i.awh
  br i1 %i.axr, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.axs = load i16, ptr %i.axj, align 2, !tbaa !76
  %i.axt = zext i16 %i.axs to i32
  %i.axu = shl nuw i32 %i.axt, 16
  %i.axv = bitcast i32 %i.axu to float            ; 2 uses
  br i1 %i.axm, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axj, i64 2
  %i.axx = load i16, ptr %i.axw, align 2, !tbaa !76
  %i.axy = zext i16 %i.axx to i32
  %i.axz = shl nuw i32 %i.axy, 16
  %i.aya = bitcast i32 %i.axz to float
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.0405.us = phi nsz float [ %i.aya, %bb.ds ], [ 0.000000e+00, %bb.dr ] ; 2 uses
  br i1 %i.axo, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.axj, i64 4
  %i.ayc = load i16, ptr %i.ayb, align 2, !tbaa !76
  %i.ayd = zext i16 %i.ayc to i32
  %i.aye = shl nuw i32 %i.ayd, 16
  %i.ayf = bitcast i32 %i.aye to float
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.0404.us = phi nsz float [ %i.ayf, %bb.du ], [ 0.000000e+00, %bb.dt ] ; 2 uses
  br i1 %i.axq, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axj, i64 6
  %i.ayh = load i16, ptr %i.ayg, align 2, !tbaa !76
  %i.ayi = zext i16 %i.ayh to i32
  %i.ayj = shl nuw i32 %i.ayi, 16
  %i.ayk = bitcast i32 %i.ayj to float
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %_ZN4ncnn3MatD2Ev.exit.us
  %.0407.us = phi nsz float [ %i.axv, %bb.dw ], [ %i.axv, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1406.us = phi nsz float [ %.0405.us, %bb.dw ], [ %.0405.us, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1.us = phi nsz float [ %.0404.us, %bb.dw ], [ %.0404.us, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0403.us = phi nsz float [ %i.ayk, %bb.dw ], [ 0.000000e+00, %bb.dv ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.ayl = fadd fast float %.1.us, %.1406.us
  %i.aym = getelementptr inbounds [2 x i8], ptr %i.axj, i64 %i.avz ; 5 uses
  %i.ayn = icmp sgt i64 %invariant.op849, %i.axf
  br i1 %i.ayn, label %bb.dy, label %bb.ee

bb.dy:                                            ; preds = %bb.dx
  %i.ayo = load i16, ptr %i.aym, align 2, !tbaa !76
  %i.ayp = zext i16 %i.ayo to i32
  %i.ayq = shl nuw i32 %i.ayp, 16
  %i.ayr = bitcast i32 %i.ayq to float            ; 2 uses
  br i1 %i.axm, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ays = getelementptr inbounds nuw i8, ptr %i.aym, i64 2
  %i.ayt = load i16, ptr %i.ays, align 2, !tbaa !76
  %i.ayu = zext i16 %i.ayt to i32
  %i.ayv = shl nuw i32 %i.ayu, 16
  %i.ayw = bitcast i32 %i.ayv to float
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %.0405.us.1 = phi nsz float [ %i.ayw, %bb.dz ], [ 0.000000e+00, %bb.dy ] ; 2 uses
  br i1 %i.axo, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.ayx = getelementptr inbounds nuw i8, ptr %i.aym, i64 4
  %i.ayy = load i16, ptr %i.ayx, align 2, !tbaa !76
  %i.ayz = zext i16 %i.ayy to i32
  %i.aza = shl nuw i32 %i.ayz, 16
  %i.azb = bitcast i32 %i.aza to float
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %.0404.us.1 = phi nsz float [ %i.azb, %bb.eb ], [ 0.000000e+00, %bb.ea ] ; 2 uses
  br i1 %i.axq, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.azc = getelementptr inbounds nuw i8, ptr %i.aym, i64 6
  %i.azd = load i16, ptr %i.azc, align 2, !tbaa !76
  %i.aze = zext i16 %i.azd to i32
  %i.azf = shl nuw i32 %i.aze, 16
  %i.azg = bitcast i32 %i.azf to float
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec, %bb.dx
  %.0407.us.1 = phi nsz float [ %i.ayr, %bb.ed ], [ %i.ayr, %bb.ec ], [ 0.000000e+00, %bb.dx ]
  %.1406.us.1 = phi nsz float [ %.0405.us.1, %bb.ed ], [ %.0405.us.1, %bb.ec ], [ 0.000000e+00, %bb.dx ] ; 3 uses
  %.1.us.1 = phi nsz float [ %.0404.us.1, %bb.ed ], [ %.0404.us.1, %bb.ec ], [ 0.000000e+00, %bb.dx ] ; 3 uses
  %.0403.us.1 = phi nsz float [ %i.azg, %bb.ed ], [ 0.000000e+00, %bb.ec ], [ 0.000000e+00, %bb.dx ]
  %i.azh = fsub fast float %.0407.us.1, %.1.us.1  ; 3 uses
  %i.azi = fadd fast float %.1.us.1, %.1406.us.1  ; 3 uses
  %i.azj = fsub fast float %.1.us.1, %.1406.us.1  ; 3 uses
  %i.azk = fsub fast float %.0403.us.1, %.1406.us.1 ; 3 uses
  %i.azl = getelementptr inbounds [2 x i8], ptr %i.aym, i64 %i.avz ; 5 uses
  %i.azm = icmp sgt i64 %invariant.op850, %i.axf
  br i1 %i.azm, label %bb.ef, label %bb.el

bb.ef:                                            ; preds = %bb.ee
  %i.azn = load i16, ptr %i.azl, align 2, !tbaa !76
  %i.azo = zext i16 %i.azn to i32
  %i.azp = shl nuw i32 %i.azo, 16
  %i.azq = bitcast i32 %i.azp to float            ; 2 uses
  br i1 %i.axm, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azl, i64 2
  %i.azs = load i16, ptr %i.azr, align 2, !tbaa !76
  %i.azt = zext i16 %i.azs to i32
  %i.azu = shl nuw i32 %i.azt, 16
  %i.azv = bitcast i32 %i.azu to float
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %.0405.us.2 = phi nsz float [ %i.azv, %bb.eg ], [ 0.000000e+00, %bb.ef ] ; 2 uses
  br i1 %i.axo, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azl, i64 4
  %i.azx = load i16, ptr %i.azw, align 2, !tbaa !76
  %i.azy = zext i16 %i.azx to i32
  %i.azz = shl nuw i32 %i.azy, 16
  %i.baa = bitcast i32 %i.azz to float
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.0404.us.2 = phi nsz float [ %i.baa, %bb.ei ], [ 0.000000e+00, %bb.eh ] ; 2 uses
  br i1 %i.axq, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azl, i64 6
  %i.bac = load i16, ptr %i.bab, align 2, !tbaa !76
  %i.bad = zext i16 %i.bac to i32
  %i.bae = shl nuw i32 %i.bad, 16
  %i.baf = bitcast i32 %i.bae to float
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ee
  %.0407.us.2 = phi nsz float [ %i.azq, %bb.ek ], [ %i.azq, %bb.ej ], [ 0.000000e+00, %bb.ee ]
  %.1406.us.2 = phi nsz float [ %.0405.us.2, %bb.ek ], [ %.0405.us.2, %bb.ej ], [ 0.000000e+00, %bb.ee ] ; 3 uses
  %.1.us.2 = phi nsz float [ %.0404.us.2, %bb.ek ], [ %.0404.us.2, %bb.ej ], [ 0.000000e+00, %bb.ee ] ; 3 uses
  %.0403.us.2 = phi nsz float [ %i.baf, %bb.ek ], [ 0.000000e+00, %bb.ej ], [ 0.000000e+00, %bb.ee ]
  %i.bag = fsub fast float %.0407.us.2, %.1.us.2  ; 3 uses
  %i.bah = fadd fast float %.1.us.2, %.1406.us.2  ; 3 uses
  %i.bai = fsub fast float %.1.us.2, %.1406.us.2  ; 3 uses
  %i.baj = fsub fast float %.0403.us.2, %.1406.us.2 ; 3 uses
  %i.bak = getelementptr inbounds [2 x i8], ptr %i.azl, i64 %i.avz ; 4 uses
  %i.bal = icmp sgt i64 %invariant.op851, %i.axf
  br i1 %i.bal, label %bb.em, label %bb.es

bb.em:                                            ; preds = %bb.el
  %i.bam = load i16, ptr %i.bak, align 2, !tbaa !76
  %i.ban = zext i16 %i.bam to i32
  %i.bao = shl nuw i32 %i.ban, 16
  %i.bap = bitcast i32 %i.bao to float            ; 2 uses
  br i1 %i.axm, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.baq = getelementptr inbounds nuw i8, ptr %i.bak, i64 2
  %i.bar = load i16, ptr %i.baq, align 2, !tbaa !76
  %i.bas = zext i16 %i.bar to i32
  %i.bat = shl nuw i32 %i.bas, 16
  %i.bau = bitcast i32 %i.bat to float
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.0405.us.3 = phi nsz float [ %i.bau, %bb.en ], [ 0.000000e+00, %bb.em ] ; 2 uses
  br i1 %i.axo, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bak, i64 4
  %i.baw = load i16, ptr %i.bav, align 2, !tbaa !76
  %i.bax = zext i16 %i.baw to i32
  %i.bay = shl nuw i32 %i.bax, 16
  %i.baz = bitcast i32 %i.bay to float
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.0404.us.3 = phi nsz float [ %i.baz, %bb.ep ], [ 0.000000e+00, %bb.eo ] ; 2 uses
  br i1 %i.axq, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.bba = getelementptr inbounds nuw i8, ptr %i.bak, i64 6
  %i.bbb = load i16, ptr %i.bba, align 2, !tbaa !76
  %i.bbc = zext i16 %i.bbb to i32
  %i.bbd = shl nuw i32 %i.bbc, 16
  %i.bbe = bitcast i32 %i.bbd to float
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.eq, %bb.el
  %.0407.us.3 = phi nsz float [ %i.bap, %bb.er ], [ %i.bap, %bb.eq ], [ 0.000000e+00, %bb.el ]
  %.1406.us.3 = phi nsz float [ %.0405.us.3, %bb.er ], [ %.0405.us.3, %bb.eq ], [ 0.000000e+00, %bb.el ] ; 3 uses
  %.1.us.3 = phi nsz float [ %.0404.us.3, %bb.er ], [ %.0404.us.3, %bb.eq ], [ 0.000000e+00, %bb.el ] ; 3 uses
  %.0403.us.3 = phi nsz float [ %i.bbe, %bb.er ], [ 0.000000e+00, %bb.eq ], [ 0.000000e+00, %bb.el ]
  %i.bbf = fadd fast float %.1.us.3, %.1406.us.3
  %i.bbg = getelementptr inbounds nuw [4 x i8], ptr %i.awz, i64 %indvars.iv777 ; 5 uses
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.awa ; 2 uses
  %i.bbi = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.awc ; 2 uses
  %i.bbj = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.awe ; 2 uses
  %i.bbk = fadd fast float %.1.us, %i.bag
  %i.bbl = fsub fast float %.0407.us, %i.bbk
  store float %i.bbl, ptr %i.bbg, align 4, !tbaa !74
  %i.bbm = fadd fast float %i.bag, %i.azh
  store float %i.bbm, ptr %i.bbh, align 4, !tbaa !74
  %i.bbn = fsub fast float %i.bag, %i.azh
  store float %i.bbn, ptr %i.bbi, align 4, !tbaa !74
  %i.bbo = fadd fast float %.1.us.3, %i.azh
  %i.bbp = fsub fast float %.0407.us.3, %i.bbo
  store float %i.bbp, ptr %i.bbj, align 4, !tbaa !74
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.bbg, i64 %i.awg ; 2 uses
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bbh, i64 %i.awg ; 2 uses
  %i.bbs = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %i.awg ; 2 uses
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %i.bbj, i64 %i.awg ; 2 uses
  %i.bbu = fsub fast float %i.ayl, %i.bah
  store float %i.bbu, ptr %i.bbq, align 4, !tbaa !74
  %i.bbv = fadd fast float %i.bah, %i.azi
  store float %i.bbv, ptr %i.bbr, align 4, !tbaa !74
  %i.bbw = fsub fast float %i.bah, %i.azi
  store float %i.bbw, ptr %i.bbs, align 4, !tbaa !74
  %i.bbx = fsub fast float %i.bbf, %i.azi
  store float %i.bbx, ptr %i.bbt, align 4, !tbaa !74
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.bbq, i64 %i.awg ; 2 uses
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %i.awg ; 2 uses
  %i.bca = getelementptr inbounds nuw [4 x i8], ptr %i.bbs, i64 %i.awg ; 2 uses
  %i.bcb = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %i.awg ; 2 uses
  %i.bcc = fadd fast float %.1406.us, %i.bai
  %i.bcd = fsub fast float %.1.us, %i.bcc
  store float %i.bcd, ptr %i.bby, align 4, !tbaa !74
  %i.bce = fadd fast float %i.bai, %i.azj
  store float %i.bce, ptr %i.bbz, align 4, !tbaa !74
  %i.bcf = fsub fast float %i.bai, %i.azj
  store float %i.bcf, ptr %i.bca, align 4, !tbaa !74
  %i.bcg = fadd fast float %.1406.us.3, %i.azj
  %i.bch = fsub fast float %.1.us.3, %i.bcg
  store float %i.bch, ptr %i.bcb, align 4, !tbaa !74
  %i.bci = getelementptr inbounds nuw [4 x i8], ptr %i.bby, i64 %i.awg
  %i.bcj = getelementptr inbounds nuw [4 x i8], ptr %i.bbz, i64 %i.awg
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %i.awg
  %i.bcl = getelementptr inbounds nuw [4 x i8], ptr %i.bcb, i64 %i.awg
  %i.bcm = fadd fast float %.1406.us, %i.baj
  %i.bcn = fsub fast float %.0403.us, %i.bcm
  store float %i.bcn, ptr %i.bci, align 4, !tbaa !74
  %i.bco = fadd fast float %i.baj, %i.azk
  store float %i.bco, ptr %i.bcj, align 4, !tbaa !74
  %i.bcp = fsub fast float %i.baj, %i.azk
  store float %i.bcp, ptr %i.bck, align 4, !tbaa !74
  %i.bcq = fadd fast float %.1406.us.3, %i.azk
  %i.bcr = fsub fast float %.0403.us.3, %i.bcq
  store float %i.bcr, ptr %i.bcl, align 4, !tbaa !74
  %indvars.iv.next778 = add nuw nsw i64 %indvars.iv777, 1 ; 2 uses
  %exitcond781.not = icmp eq i64 %indvars.iv.next778, %wide.trip.count780
  br i1 %exitcond781.not, label %._crit_edge.us718, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !645

._crit_edge.us718:                                ; preds = %bb.es
  %indvars.iv.next783 = add nsw i64 %indvars.iv782, 1 ; 2 uses
  %exitcond786.not = icmp eq i64 %indvars.iv.next783, %i.awu
  br i1 %exitcond786.not, label %._crit_edge715, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, !llvm.loop !646

._crit_edge715:                                   ; preds = %._crit_edge.us718, %.lr.ph714, %._crit_edge694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd23_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ch

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !113
  %i.k = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not418 = icmp sgt i32 %i.k, %i.j
  br i1 %.not418, label %._crit_edge421, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load i32, ptr %3, align 4, !tbaa !113    ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge421

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.azd, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0419 = phi i32 [ %i.aze, %._crit_edge ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.r = shl nsw i32 %.0419, 4
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.lr.ph.split
  %i.t = shl i32 %.0419, 8
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph, %.thread405.3
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %indvars.iv.next, %.thread405.3 ] ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !113
  %i.v = load i32, ptr %5, align 4, !tbaa !113    ; 2 uses
  %i.w = load i32, ptr %7, align 4, !tbaa !113
  %i.x = add nsw i32 %i.w, %i.r
  %i.y = load i32, ptr %8, align 4, !tbaa !113    ; 5 uses
  %i.z = sdiv i32 %i.x, %i.y
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !114, !noalias !647
  %i.ab = load ptr, ptr %6, align 8, !tbaa !9, !noalias !647
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !647
  %i.ad = sext i32 %i.z to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !647 ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = sext i32 %i.aa to i64
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = add nsw i32 %i.u, %i.aj                 ; 2 uses
  %i.al = srem i32 %i.ak, %i.v
  %i.am = sdiv i32 %i.ak, %i.v
  %i.an = shl nsw i32 %i.am, 1                    ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 4 uses
  %i.ap = mul i64 %i.af, %i.ai
  %i.aq = mul i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = shl nsw i32 %i.al, 1                    ; 4 uses
  %i.at = mul nsw i32 %i.as, %i.y
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.au ; 33 uses
  %i.aw = load i32, ptr %9, align 4, !tbaa !113   ; 2 uses
  %i.ax = load i32, ptr %10, align 4, !tbaa !113  ; 18 uses
  %i.ay = mul nsw i32 %i.y, %i.ax
  %i.az = sext i32 %i.ay to i64                   ; 3 uses
  %i.ba = or disjoint i32 %i.as, 1                ; 16 uses
  %i.bb = add nsw i32 %i.as, 2                    ; 16 uses
  %i.bc = add nsw i32 %i.as, 3                    ; 16 uses
  %i.bd = sext i32 %i.aw to i64                   ; 3 uses
  %i.be = icmp slt i32 %i.an, %i.aw
  %i.bf = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.y)
  %i.bg = icmp eq i32 %i.bf, 1
  %or.cond = select i1 %i.be, i1 %i.bg, i1 false
  br i1 %or.cond, label %.split, label %.thread405

.split:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.y, i1 true)
  switch i32 %i.bh, label %.thread405 [
    i32 4, label %bb.c
    i32 3, label %bb.i
    i32 2, label %bb.o
    i32 0, label %bb.u
  ]

bb.c:                                             ; preds = %.split
  %i.bi = load <16 x bfloat>, ptr %i.av, align 32, !tbaa !20
  %i.bj = fpext fast <16 x bfloat> %i.bi to <16 x float> ; 2 uses
  %i.bk = icmp slt i32 %i.ba, %i.ax
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bm = load <16 x bfloat>, ptr %i.bl, align 32, !tbaa !20
  %i.bn = fpext fast <16 x bfloat> %i.bm to <16 x float>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0198 = phi nsz <16 x float> [ %i.bn, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.bo = icmp slt i32 %i.bb, %i.ax
  br i1 %i.bo, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.bq = load <16 x bfloat>, ptr %i.bp, align 32, !tbaa !20
  %i.br = fpext fast <16 x bfloat> %i.bq to <16 x float>
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0202 = phi nsz <16 x float> [ %i.br, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %i.bs = icmp slt i32 %i.bc, %i.ax
  br i1 %i.bs, label %bb.h, label %.thread405

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bu = load <16 x bfloat>, ptr %i.bt, align 32, !tbaa !20
  %i.bv = fpext fast <16 x bfloat> %i.bu to <16 x float>
  br label %.thread405

bb.i:                                             ; preds = %.split
  %i.bw = load i64, ptr %11, align 8, !tbaa !117
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.bw ; 4 uses
  %i.by = load <8 x bfloat>, ptr %i.av, align 16, !tbaa !20
  %i.bz = fpext fast <8 x bfloat> %i.by to <8 x float>
  %i.ca = load <8 x bfloat>, ptr %i.bx, align 16, !tbaa !20
  %i.cb = fpext fast <8 x bfloat> %i.ca to <8 x float>
  %i.cc = shufflevector <8 x float> %i.bz, <8 x float> %i.cb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cd = icmp slt i32 %i.ba, %i.ax
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cf = load <8 x bfloat>, ptr %i.ce, align 16, !tbaa !20
  %i.cg = fpext fast <8 x bfloat> %i.cf to <8 x float>
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.ci = load <8 x bfloat>, ptr %i.ch, align 16, !tbaa !20
  %i.cj = fpext fast <8 x bfloat> %i.ci to <8 x float>
  %i.ck = shufflevector <8 x float> %i.cg, <8 x float> %i.cj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2200 = phi nsz <16 x float> [ %i.ck, %bb.j ], [ zeroinitializer, %bb.i ] ; 2 uses
  %i.cl = icmp slt i32 %i.bb, %i.ax
  br i1 %i.cl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.cn = load <8 x bfloat>, ptr %i.cm, align 16, !tbaa !20
  %i.co = fpext fast <8 x bfloat> %i.cn to <8 x float>
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.cq = load <8 x bfloat>, ptr %i.cp, align 16, !tbaa !20
  %i.cr = fpext fast <8 x bfloat> %i.cq to <8 x float>
  %i.cs = shufflevector <8 x float> %i.co, <8 x float> %i.cr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2204 = phi nsz <16 x float> [ %i.cs, %bb.l ], [ zeroinitializer, %bb.k ] ; 2 uses
  %i.ct = icmp slt i32 %i.bc, %i.ax
  br i1 %i.ct, label %bb.n, label %.thread405

bb.n:                                             ; preds = %bb.m
  %i.cu = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.cv = load <8 x bfloat>, ptr %i.cu, align 16, !tbaa !20
  %i.cw = fpext fast <8 x bfloat> %i.cv to <8 x float>
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  %i.cy = load <8 x bfloat>, ptr %i.cx, align 16, !tbaa !20
  %i.cz = fpext fast <8 x bfloat> %i.cy to <8 x float>
  %i.da = shufflevector <8 x float> %i.cw, <8 x float> %i.cz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %.thread405

bb.o:                                             ; preds = %.split
  %i.db = load i64, ptr %11, align 8, !tbaa !117  ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.dow = fmul fast <2 x float> %i.dga, splat (float f0x3F3504F3)
  %i.dox = fsub fast <2 x float> %i.dov, %i.dow   ; 2 uses
  %i.doy = fmul fast <2 x float> %i.dcm, splat (float 2.000000e+00)
  %i.doz = fsub fast <2 x float> %i.djo, %i.doy   ; 2 uses
  %i.dpa = fsub fast <2 x float> %i.doz, %i.dox
  %i.dpb = fadd fast <2 x float> %i.doz, %i.dox
  %i.dpc = fmul fast <2 x float> %i.dcm, splat (float 5.000000e-01)
  %i.dpd = fsub fast <2 x float> %i.djo, %i.dpc   ; 2 uses
  %i.dpe = fmul fast <2 x float> %i.dga, splat (float f0x3FB504F3)
  %i.dpf = fmul fast <2 x float> %i.cyy, splat (float f0x3F3504F3)
  %i.dpg = fsub fast <2 x float> %i.dpe, %i.dpf   ; 2 uses
  %i.dph = fadd fast <2 x float> %i.dpd, %i.dpg
  %i.dpi = fsub fast <2 x float> %i.dpd, %i.dpg
  store <2 x float> %i.dou, ptr %i.dom, align 4, !tbaa !74
  store <2 x float> %i.dpa, ptr %i.don, align 4, !tbaa !74
  store <2 x float> %i.dpb, ptr %i.doo, align 4, !tbaa !74
  store <2 x float> %i.dph, ptr %i.dop, align 4, !tbaa !74
  store <2 x float> %i.dpi, ptr %i.doq, align 4, !tbaa !74
  %i.dpj = fmul fast <2 x float> %i.dga, splat (float -2.500000e+00)
  %i.dpk = fadd fast <2 x float> %i.cyy, %i.dpj
  %i.dpl = fadd fast <2 x float> %i.dnp, %i.dpk
  store <2 x float> %i.dpl, ptr %i.dor, align 4, !tbaa !74
  %i.dpm = getelementptr inbounds nuw [4 x i8], ptr %i.dom, i64 %i.cqq ; 2 uses
  %i.dpn = getelementptr inbounds nuw [4 x i8], ptr %i.don, i64 %i.cqq ; 2 uses
  %i.dpo = getelementptr inbounds nuw [4 x i8], ptr %i.doo, i64 %i.cqq ; 2 uses
  %i.dpp = getelementptr inbounds nuw [4 x i8], ptr %i.dop, i64 %i.cqq ; 2 uses
  %i.dpq = getelementptr inbounds nuw [4 x i8], ptr %i.doq, i64 %i.cqq ; 2 uses
  %i.dpr = getelementptr inbounds nuw [4 x i8], ptr %i.dor, i64 %i.cqq ; 2 uses
  %i.dps = fmul fast <2 x float> %i.dcn, splat (float -2.500000e+00)
  %i.dpt = fadd fast <2 x float> %i.cvl, %i.dps
  %i.dpu = fadd fast <2 x float> %i.djp, %i.dpt
  %i.dpv = fmul fast <2 x float> %i.cyz, splat (float f0x3FB504F3)
  %i.dpw = fmul fast <2 x float> %i.dgb, splat (float f0x3F3504F3)
  %i.dpx = fsub fast <2 x float> %i.dpv, %i.dpw   ; 2 uses
  %i.dpy = fmul fast <2 x float> %i.dcn, splat (float 2.000000e+00)
  %i.dpz = fsub fast <2 x float> %i.djp, %i.dpy   ; 2 uses
  %i.dqa = fsub fast <2 x float> %i.dpz, %i.dpx
  %i.dqb = fadd fast <2 x float> %i.dpz, %i.dpx
  %i.dqc = fmul fast <2 x float> %i.dcn, splat (float 5.000000e-01)
  %i.dqd = fsub fast <2 x float> %i.djp, %i.dqc   ; 2 uses
  %i.dqe = fmul fast <2 x float> %i.dgb, splat (float f0x3FB504F3)
  %i.dqf = fmul fast <2 x float> %i.cyz, splat (float f0x3F3504F3)
  %i.dqg = fsub fast <2 x float> %i.dqe, %i.dqf   ; 2 uses
  %i.dqh = fadd fast <2 x float> %i.dqd, %i.dqg
  %i.dqi = fsub fast <2 x float> %i.dqd, %i.dqg
  store <2 x float> %i.dpu, ptr %i.dpm, align 4, !tbaa !74
  store <2 x float> %i.dqa, ptr %i.dpn, align 4, !tbaa !74
  store <2 x float> %i.dqb, ptr %i.dpo, align 4, !tbaa !74
  store <2 x float> %i.dqh, ptr %i.dpp, align 4, !tbaa !74
  store <2 x float> %i.dqi, ptr %i.dpq, align 4, !tbaa !74
  %i.dqj = fmul fast <2 x float> %i.dgb, splat (float -2.500000e+00)
  %i.dqk = fadd fast <2 x float> %i.cyz, %i.dqj
  %i.dql = fadd fast <2 x float> %i.dno, %i.dqk
  store <2 x float> %i.dql, ptr %i.dpr, align 4, !tbaa !74
  %i.dqm = getelementptr inbounds nuw [4 x i8], ptr %i.dpm, i64 %i.cqq ; 2 uses
  %i.dqn = getelementptr inbounds nuw [4 x i8], ptr %i.dpn, i64 %i.cqq ; 2 uses
  %i.dqo = getelementptr inbounds nuw [4 x i8], ptr %i.dpo, i64 %i.cqq ; 2 uses
  %i.dqp = getelementptr inbounds nuw [4 x i8], ptr %i.dpp, i64 %i.cqq ; 2 uses
  %i.dqq = getelementptr inbounds nuw [4 x i8], ptr %i.dpq, i64 %i.cqq ; 2 uses
  %i.dqr = getelementptr inbounds nuw [4 x i8], ptr %i.dpr, i64 %i.cqq ; 2 uses
  %i.dqs = fmul fast <2 x float> %i.dcs, splat (float -2.500000e+00)
  %i.dqt = fadd fast <2 x float> %i.cvq, %i.dqs
  %i.dqu = fadd fast <2 x float> %i.dju, %i.dqt
  %i.dqv = fmul fast <2 x float> %i.cze, splat (float f0x3FB504F3)
  %i.dqw = fmul fast <2 x float> %i.dgg, splat (float f0x3F3504F3)
  %i.dqx = fsub fast <2 x float> %i.dqv, %i.dqw   ; 2 uses
  %i.dqy = fmul fast <2 x float> %i.dcs, splat (float 2.000000e+00)
  %i.dqz = fsub fast <2 x float> %i.dju, %i.dqy   ; 2 uses
  %i.dra = fsub fast <2 x float> %i.dqz, %i.dqx
  %i.drb = fadd fast <2 x float> %i.dqz, %i.dqx
  %i.drc = fmul fast <2 x float> %i.dcs, splat (float 5.000000e-01)
  %i.drd = fsub fast <2 x float> %i.dju, %i.drc   ; 2 uses
  %i.dre = fmul fast <2 x float> %i.dgg, splat (float f0x3FB504F3)
  %i.drf = fmul fast <2 x float> %i.cze, splat (float f0x3F3504F3)
  %i.drg = fsub fast <2 x float> %i.dre, %i.drf   ; 2 uses
  %i.drh = fadd fast <2 x float> %i.drd, %i.drg
  %i.dri = fsub fast <2 x float> %i.drd, %i.drg
  store <2 x float> %i.dqu, ptr %i.dqm, align 4, !tbaa !74
  store <2 x float> %i.dra, ptr %i.dqn, align 4, !tbaa !74
  store <2 x float> %i.drb, ptr %i.dqo, align 4, !tbaa !74
  store <2 x float> %i.drh, ptr %i.dqp, align 4, !tbaa !74
  store <2 x float> %i.dri, ptr %i.dqq, align 4, !tbaa !74
  %i.drj = fmul fast <2 x float> %i.dgg, splat (float -2.500000e+00)
  %i.drk = fadd fast <2 x float> %i.cze, %i.drj
  %i.drl = fadd fast <2 x float> %i.dni, %i.drk
  store <2 x float> %i.drl, ptr %i.dqr, align 4, !tbaa !74
  %i.drm = getelementptr inbounds nuw [4 x i8], ptr %i.dqm, i64 %i.cqq ; 2 uses
  %i.drn = getelementptr inbounds nuw [4 x i8], ptr %i.dqn, i64 %i.cqq ; 2 uses
  %i.dro = getelementptr inbounds nuw [4 x i8], ptr %i.dqo, i64 %i.cqq ; 2 uses
  %i.drp = getelementptr inbounds nuw [4 x i8], ptr %i.dqp, i64 %i.cqq ; 2 uses
  %i.drq = getelementptr inbounds nuw [4 x i8], ptr %i.dqq, i64 %i.cqq ; 2 uses
  %i.drr = getelementptr inbounds nuw [4 x i8], ptr %i.dqr, i64 %i.cqq ; 2 uses
  %i.drs = fmul fast <2 x float> %i.dct, splat (float -2.500000e+00)
  %i.drt = fadd fast <2 x float> %i.cvr, %i.drs
  %i.dru = fadd fast <2 x float> %i.djv, %i.drt
  %i.drv = fmul fast <2 x float> %i.czf, splat (float f0x3FB504F3)
  %i.drw = fmul fast <2 x float> %i.dgh, splat (float f0x3F3504F3)
  %i.drx = fsub fast <2 x float> %i.drv, %i.drw   ; 2 uses
  %i.dry = fmul fast <2 x float> %i.dct, splat (float 2.000000e+00)
  %i.drz = fsub fast <2 x float> %i.djv, %i.dry   ; 2 uses
  %i.dsa = fsub fast <2 x float> %i.drz, %i.drx
  %i.dsb = fadd fast <2 x float> %i.drz, %i.drx
  %i.dsc = fmul fast <2 x float> %i.dct, splat (float 5.000000e-01)
  %i.dsd = fsub fast <2 x float> %i.djv, %i.dsc   ; 2 uses
  %i.dse = fmul fast <2 x float> %i.dgh, splat (float f0x3FB504F3)
  %i.dsf = fmul fast <2 x float> %i.czf, splat (float f0x3F3504F3)
  %i.dsg = fsub fast <2 x float> %i.dse, %i.dsf   ; 2 uses
  %i.dsh = fadd fast <2 x float> %i.dsd, %i.dsg
  %i.dsi = fsub fast <2 x float> %i.dsd, %i.dsg
  store <2 x float> %i.dru, ptr %i.drm, align 4, !tbaa !74
  store <2 x float> %i.dsa, ptr %i.drn, align 4, !tbaa !74
  store <2 x float> %i.dsb, ptr %i.dro, align 4, !tbaa !74
  store <2 x float> %i.dsh, ptr %i.drp, align 4, !tbaa !74
  store <2 x float> %i.dsi, ptr %i.drq, align 4, !tbaa !74
  %i.dsj = fmul fast <2 x float> %i.dgh, splat (float -2.500000e+00)
  %i.dsk = fadd fast <2 x float> %i.czf, %i.dsj
  %i.dsl = fadd fast <2 x float> %i.dnh, %i.dsk
  store <2 x float> %i.dsl, ptr %i.drr, align 4, !tbaa !74
  %i.dsm = getelementptr inbounds nuw [4 x i8], ptr %i.drm, i64 %i.cqq
  %i.dsn = getelementptr inbounds nuw [4 x i8], ptr %i.drn, i64 %i.cqq
  %i.dso = getelementptr inbounds nuw [4 x i8], ptr %i.dro, i64 %i.cqq
  %i.dsp = getelementptr inbounds nuw [4 x i8], ptr %i.drp, i64 %i.cqq
  %i.dsq = getelementptr inbounds nuw [4 x i8], ptr %i.drq, i64 %i.cqq
  %i.dsr = getelementptr inbounds nuw [4 x i8], ptr %i.drr, i64 %i.cqq
  %i.dss = fmul fast <2 x float> %i.dcv, splat (float -2.500000e+00)
  %i.dst = fadd fast <2 x float> %i.cvt, %i.dss
  %i.dsu = fadd fast <2 x float> %i.djx, %i.dst
  %i.dsv = fmul fast <2 x float> %i.czh, splat (float f0x3FB504F3)
  %i.dsw = fmul fast <2 x float> %i.dgj, splat (float f0x3F3504F3)
  %i.dsx = fsub fast <2 x float> %i.dsv, %i.dsw   ; 2 uses
  %i.dsy = fmul fast <2 x float> %i.dcv, splat (float 2.000000e+00)
  %i.dsz = fsub fast <2 x float> %i.djx, %i.dsy   ; 2 uses
  %i.dta = fsub fast <2 x float> %i.dsz, %i.dsx
  %i.dtb = fadd fast <2 x float> %i.dsz, %i.dsx
  %i.dtc = fmul fast <2 x float> %i.dcv, splat (float 5.000000e-01)
  %i.dtd = fsub fast <2 x float> %i.djx, %i.dtc   ; 2 uses
  %i.dte = fmul fast <2 x float> %i.dgj, splat (float f0x3FB504F3)
  %i.dtf = fmul fast <2 x float> %i.czh, splat (float f0x3F3504F3)
  %i.dtg = fsub fast <2 x float> %i.dte, %i.dtf   ; 2 uses
  %i.dth = fadd fast <2 x float> %i.dtd, %i.dtg
  %i.dti = fsub fast <2 x float> %i.dtd, %i.dtg
  store <2 x float> %i.dsu, ptr %i.dsm, align 4, !tbaa !74
  store <2 x float> %i.dta, ptr %i.dsn, align 4, !tbaa !74
  store <2 x float> %i.dtb, ptr %i.dso, align 4, !tbaa !74
  store <2 x float> %i.dth, ptr %i.dsp, align 4, !tbaa !74
  store <2 x float> %i.dti, ptr %i.dsq, align 4, !tbaa !74
  %i.dtj = fmul fast <2 x float> %i.dgj, splat (float -2.500000e+00)
  %i.dtk = fadd fast <2 x float> %i.czh, %i.dtj
  %i.dtl = fadd fast <2 x float> %i.dnb, %i.dtk
  store <2 x float> %i.dtl, ptr %i.dsr, align 4, !tbaa !74
  %indvars.iv.next1127 = add nuw nsw i64 %indvars.iv1126, 1 ; 2 uses
  %exitcond1130.not = icmp eq i64 %indvars.iv.next1127, %wide.trip.count1129
  br i1 %exitcond1130.not, label %._crit_edge.us1064, label %_ZN4ncnn3MatD2Ev.exit698.us, !llvm.loop !826

._crit_edge.us1064:                               ; preds = %bb.la
  %indvars.iv.next1132 = add nuw nsw i64 %indvars.iv1131, 1 ; 2 uses
  %exitcond1135.not = icmp eq i64 %indvars.iv.next1132, %wide.trip.count1134
  br i1 %exitcond1135.not, label %._crit_edge1059, label %_ZN4ncnn3MatD2Ev.exit698.lr.ph.us, !llvm.loop !827

._crit_edge1059:                                  ; preds = %._crit_edge.us1064, %.lr.ph1058, %._crit_edge1038
  %i.dtm = shl nsw i32 %i.cpy, 1
  %i.dtn = add nsw i32 %i.dtm, %i.cpw             ; 2 uses
  %i.dto = icmp slt i32 %i.dtn, %5
  br i1 %i.dto, label %.lr.ph1081, label %._crit_edge1082

.lr.ph1081:                                       ; preds = %._crit_edge1059
  %i.dtp = load i32, ptr %i.b, align 4, !tbaa !113 ; 9 uses
  %i.dtq = icmp sgt i32 %i.dtp, 0
  %i.dtr = load i32, ptr %i.j, align 4            ; 2 uses
  %i.dts = load i32, ptr %i.f, align 4
  %i.dtt = sext i32 %i.dts to i64                 ; 5 uses
  %factor.op.mul1083 = mul i32 %i.dtp, 36
  %i.dtu = sext i32 %i.dtp to i64
  %i.dtv = shl nsw i32 %i.dtp, 1
  %i.dtw = sext i32 %i.dtv to i64
  %i.dtx = mul nsw i32 %i.dtp, 3
  %i.dty = sext i32 %i.dtx to i64
  %i.dtz = shl nsw i32 %i.dtp, 2
  %i.dua = sext i32 %i.dtz to i64
  %i.dub = mul nsw i32 %i.dtp, 5
  %i.duc = sext i32 %i.dub to i64
  %i.dud = mul nsw i32 %i.dtp, 6
  %i.due = sext i32 %i.dud to i64                 ; 30 uses
  br i1 %i.dtq, label %.lr.ph1081.split.us, label %._crit_edge1082

.lr.ph1081.split.us:                              ; preds = %.lr.ph1081
  %i.duf = load i32, ptr %i.g, align 4            ; 2 uses
  %i.dug = load i32, ptr %i.c, align 4
  %i.duh = load i32, ptr %i.a, align 4
  %i.dui = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.duj = load i32, ptr %i.m, align 4, !tbaa !114, !noalias !828
  %i.duk = load ptr, ptr %0, align 8, !tbaa !9, !noalias !828
  %i.dul = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !828
  %i.dum = load i64, ptr %i.dui, align 8, !tbaa !19, !noalias !828 ; 2 uses
  %factor.op.mul1086 = mul i64 %i.dul, %i.dum
  %i.dun = sext i32 %i.duj to i64
  %factor.op.mul1077.us = mul i64 %i.dum, %i.dun
  %i.duo = load ptr, ptr %1, align 8, !tbaa !9
  %i.dup = sext i32 %i.duf to i64                 ; 5 uses
  %i.duq = sext i32 %i.dtn to i64
  %i.dur = sext i32 %i.dug to i64
  %i.dus = sext i32 %5 to i64
  %wide.trip.count1147 = zext nneg i32 %i.dtp to i64
  %invariant.op1246 = add nsw i64 %i.dup, -1
  %invariant.op1247 = add nsw i64 %i.dup, -2
  %invariant.op1248 = add nsw i64 %i.dup, -3
  %invariant.op1249 = add nsw i64 %i.dup, -4
  %invariant.op1250 = add nsw i64 %i.dup, -5
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1085, %.lr.ph1081.split.us
  %indvars.iv1149 = phi i64 [ %indvars.iv.next1150, %._crit_edge.us1085 ], [ %i.duq, %.lr.ph1081.split.us ] ; 3 uses
  %i.dut = add nsw i64 %indvars.iv1149, %i.dur
  %.reass1087 = mul i64 %factor.op.mul1086, %i.dut
  %i.duu = getelementptr inbounds nuw i8, ptr %i.duk, i64 %.reass1087
  %i.duv = trunc nsw i64 %indvars.iv1149 to i32
  %.reass1084.us = mul i32 %factor.op.mul1083, %i.duv
  %i.duw = sext i32 %.reass1084.us to i64
  %i.dux = getelementptr inbounds [4 x i8], ptr %i.duo, i64 %i.duw
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.no
  %indvars.iv1144 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1145, %bb.no ] ; 3 uses
  %i.duy = trunc i64 %indvars.iv1144 to i32
  %i.duz = add i32 %i.duh, %i.duy                 ; 2 uses
  %i.dva = sdiv i32 %i.duz, %i.dtr
  %i.dvb = srem i32 %i.duz, %i.dtr
  %i.dvc = shl nsw i32 %i.dva, 2                  ; 2 uses
  %i.dvd = sext i32 %i.dvc to i64                 ; 6 uses
  %.reass1078.us = mul i64 %factor.op.mul1077.us, %i.dvd
  %i.dve = getelementptr inbounds nuw i8, ptr %i.duu, i64 %.reass1078.us
  %i.dvf = shl nsw i32 %i.dvb, 2                  ; 6 uses
  %i.dvg = sext i32 %i.dvf to i64
  %i.dvh = getelementptr inbounds [2 x i8], ptr %i.dve, i64 %i.dvg ; 7 uses
  %i.dvi = or disjoint i32 %i.dvf, 1
  %i.dvj = load i32, ptr %i.f, align 4            ; 5 uses
  %i.dvk = icmp slt i32 %i.dvi, %i.dvj            ; 6 uses
  %i.dvl = or disjoint i32 %i.dvf, 2
  %i.dvm = icmp slt i32 %i.dvl, %i.dvj            ; 6 uses
  %i.dvn = or disjoint i32 %i.dvf, 3
  %i.dvo = icmp slt i32 %i.dvn, %i.dvj            ; 6 uses
  %i.dvp = add nsw i32 %i.dvf, 4
  %i.dvq = icmp slt i32 %i.dvp, %i.dvj            ; 6 uses
  %i.dvr = add nsw i32 %i.dvf, 5
  %i.dvs = icmp slt i32 %i.dvr, %i.dvj            ; 6 uses
  %i.dvt = icmp slt i32 %i.dvc, %i.duf
  br i1 %i.dvt, label %bb.lb, label %bb.ll

bb.lb:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.dvu = load i16, ptr %i.dvh, align 2, !tbaa !76
  %i.dvv = zext i16 %i.dvu to i32
  %i.dvw = shl nuw i32 %i.dvv, 16
  %i.dvx = bitcast i32 %i.dvw to float            ; 2 uses
  br i1 %i.dvk, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvh, i64 2
  %i.dvz = load i16, ptr %i.dvy, align 2, !tbaa !76
  %i.dwa = zext i16 %i.dvz to i32
  %i.dwb = shl nuw i32 %i.dwa, 16
  %i.dwc = bitcast i32 %i.dwb to float
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %bb.lb
  %.0625.us = phi nsz float [ %i.dwc, %bb.lc ], [ 0.000000e+00, %bb.lb ] ; 4 uses
  br i1 %i.dvm, label %bb.le, label %bb.lf

bb.le:                                            ; preds = %bb.ld
  %i.dwd = getelementptr inbounds nuw i8, ptr %i.dvh, i64 4
  %i.dwe = load i16, ptr %i.dwd, align 2, !tbaa !76
  %i.dwf = zext i16 %i.dwe to i32
  %i.dwg = shl nuw i32 %i.dwf, 16
  %i.dwh = bitcast i32 %i.dwg to float
  br label %bb.lf

bb.lf:                                            ; preds = %bb.le, %bb.ld
  %.0623.us = phi nsz float [ %i.dwh, %bb.le ], [ 0.000000e+00, %bb.ld ] ; 2 uses
  br i1 %i.dvo, label %bb.lg, label %bb.lh

bb.lg:                                            ; preds = %bb.lf
  %i.dwi = getelementptr inbounds nuw i8, ptr %i.dvh, i64 6
  %i.dwj = load i16, ptr %i.dwi, align 2, !tbaa !76
  %i.dwk = zext i16 %i.dwj to i32
  %i.dwl = shl nuw i32 %i.dwk, 16
  %i.dwm = bitcast i32 %i.dwl to float
  br label %bb.lh

bb.lh:                                            ; preds = %bb.lg, %bb.lf
  %.0621.us = phi nsz float [ %i.dwm, %bb.lg ], [ 0.000000e+00, %bb.lf ] ; 2 uses
  br i1 %i.dvq, label %bb.li, label %bb.lj

bb.li:                                            ; preds = %bb.lh
  %i.dwn = getelementptr inbounds nuw i8, ptr %i.dvh, i64 8
  %i.dwo = load i16, ptr %i.dwn, align 2, !tbaa !76
  %i.dwp = zext i16 %i.dwo to i32
  %i.dwq = shl nuw i32 %i.dwp, 16
  %i.dwr = bitcast i32 %i.dwq to float
  br label %bb.lj

bb.lj:                                            ; preds = %bb.li, %bb.lh
  %.0619.us = phi nsz float [ %i.dwr, %bb.li ], [ 0.000000e+00, %bb.lh ] ; 2 uses
  br i1 %i.dvs, label %bb.lk, label %bb.ll

bb.lk:                                            ; preds = %bb.lj
  %i.dws = getelementptr inbounds nuw i8, ptr %i.dvh, i64 10
  %i.dwt = load i16, ptr %i.dws, align 2, !tbaa !76
  %i.dwu = zext i16 %i.dwt to i32
  %i.dwv = shl nuw i32 %i.dwu, 16
  %i.dww = bitcast i32 %i.dwv to float
  %i.dwx = fadd fast float %.0625.us, %i.dww
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lk, %bb.lj, %_ZN4ncnn3MatD2Ev.exit.us
  %.0627.us = phi nsz float [ %i.dvx, %bb.lk ], [ %i.dvx, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1626.us = phi nsz float [ %.0625.us, %bb.lk ], [ %.0625.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 2 uses
  %.1624.us = phi nsz float [ %.0623.us, %bb.lk ], [ %.0623.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1622.us = phi nsz float [ %.0621.us, %bb.lk ], [ %.0621.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.1620.us = phi nsz float [ %.0619.us, %bb.lk ], [ %.0619.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %.0618.us = phi float [ %i.dwx, %bb.lk ], [ %.0625.us, %bb.lj ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.dwy = fmul fast float %.1626.us, f0x3FB504F3
  %i.dwz = fmul fast float %.1622.us, f0x3F3504F3
  %i.dxa = fsub fast float %i.dwy, %i.dwz         ; 2 uses
  %i.dxb = fmul fast float %.1624.us, 2.000000e+00
  %i.dxc = fsub fast float %.1620.us, %i.dxb      ; 2 uses
  %i.dxd = fmul fast float %.1622.us, f0x3FB504F3
  %i.dxe = fmul fast float %.1626.us, f0x3F3504F3
  %i.dxf = fsub fast float %i.dxd, %i.dxe         ; 2 uses
  %i.dxg = fmul fast float %.1624.us, 5.000000e-01
  %i.dxh = fsub fast float %.1620.us, %i.dxg      ; 2 uses
  %.neg1005.us = fmul fast float %.1624.us, -2.500000e+00
  %i.dxi = fadd fast float %.0627.us, %.neg1005.us
  %i.dxj = fadd fast float %i.dxi, %.1620.us
  %i.dxk = fsub fast float %i.dxc, %i.dxa
  %i.dxl = fadd fast float %i.dxc, %i.dxa
  %i.dxm = fadd fast float %i.dxh, %i.dxf
  %i.dxn = fsub fast float %i.dxh, %i.dxf
  %i.dxo = fmul fast float %.1622.us, 2.500000e+00
  %i.dxp = fsub fast float %.0618.us, %i.dxo
  %i.dxq = getelementptr inbounds [2 x i8], ptr %i.dvh, i64 %i.dtt ; 7 uses
  %i.dxr = icmp sgt i64 %invariant.op1246, %i.dvd
  br i1 %i.dxr, label %bb.lm, label %bb.lw

bb.lm:                                            ; preds = %bb.ll
  %i.dxs = load i16, ptr %i.dxq, align 2, !tbaa !76
  %i.dxt = zext i16 %i.dxs to i32
  %i.dxu = shl nuw i32 %i.dxt, 16
  %i.dxv = bitcast i32 %i.dxu to float            ; 2 uses
  br i1 %i.dvk, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.dxw = getelementptr inbounds nuw i8, ptr %i.dxq, i64 2
  %i.dxx = load i16, ptr %i.dxw, align 2, !tbaa !76
  %i.dxy = zext i16 %i.dxx to i32
  %i.dxz = shl nuw i32 %i.dxy, 16
  %i.dya = bitcast i32 %i.dxz to float
  br label %bb.lo

bb.lo:                                            ; preds = %bb.ln, %bb.lm
  %.0625.us.1 = phi nsz float [ %i.dya, %bb.ln ], [ 0.000000e+00, %bb.lm ] ; 4 uses
  br i1 %i.dvm, label %bb.lp, label %bb.lq

bb.lp:                                            ; preds = %bb.lo
  %i.dyb = getelementptr inbounds nuw i8, ptr %i.dxq, i64 4
  %i.dyc = load i16, ptr %i.dyb, align 2, !tbaa !76
  %i.dyd = zext i16 %i.dyc to i32
  %i.dye = shl nuw i32 %i.dyd, 16
  %i.dyf = bitcast i32 %i.dye to float
  br label %bb.lq

bb.lq:                                            ; preds = %bb.lp, %bb.lo
  %.0623.us.1 = phi nsz float [ %i.dyf, %bb.lp ], [ 0.000000e+00, %bb.lo ] ; 2 uses
  br i1 %i.dvo, label %bb.lr, label %bb.ls

bb.lr:                                            ; preds = %bb.lq
  %i.dyg = getelementptr inbounds nuw i8, ptr %i.dxq, i64 6
  %i.dyh = load i16, ptr %i.dyg, align 2, !tbaa !76
  %i.dyi = zext i16 %i.dyh to i32
  %i.dyj = shl nuw i32 %i.dyi, 16
  %i.dyk = bitcast i32 %i.dyj to float
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lr, %bb.lq
  %.0621.us.1 = phi nsz float [ %i.dyk, %bb.lr ], [ 0.000000e+00, %bb.lq ] ; 2 uses
  br i1 %i.dvq, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.dyl = getelementptr inbounds nuw i8, ptr %i.dxq, i64 8
  %i.dym = load i16, ptr %i.dyl, align 2, !tbaa !76
  %i.dyn = zext i16 %i.dym to i32
  %i.dyo = shl nuw i32 %i.dyn, 16
  %i.dyp = bitcast i32 %i.dyo to float
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls
  %.0619.us.1 = phi nsz float [ %i.dyp, %bb.lt ], [ 0.000000e+00, %bb.ls ] ; 2 uses
  br i1 %i.dvs, label %bb.lv, label %bb.lw

bb.lv:                                            ; preds = %bb.lu
  %i.dyq = getelementptr inbounds nuw i8, ptr %i.dxq, i64 10
  %i.dyr = load i16, ptr %i.dyq, align 2, !tbaa !76
  %i.dys = zext i16 %i.dyr to i32
  %i.dyt = shl nuw i32 %i.dys, 16
  %i.dyu = bitcast i32 %i.dyt to float
  %i.dyv = fadd fast float %.0625.us.1, %i.dyu
  br label %bb.lw

bb.lw:                                            ; preds = %bb.lv, %bb.lu, %bb.ll
  %.0627.us.1 = phi nsz float [ %i.dxv, %bb.lv ], [ %i.dxv, %bb.lu ], [ 0.000000e+00, %bb.ll ]
  %.1626.us.1 = phi nsz float [ %.0625.us.1, %bb.lv ], [ %.0625.us.1, %bb.lu ], [ 0.000000e+00, %bb.ll ] ; 2 uses
  %.1624.us.1 = phi nsz float [ %.0623.us.1, %bb.lv ], [ %.0623.us.1, %bb.lu ], [ 0.000000e+00, %bb.ll ] ; 3 uses
  %.1622.us.1 = phi nsz float [ %.0621.us.1, %bb.lv ], [ %.0621.us.1, %bb.lu ], [ 0.000000e+00, %bb.ll ] ; 3 uses
  %.1620.us.1 = phi nsz float [ %.0619.us.1, %bb.lv ], [ %.0619.us.1, %bb.lu ], [ 0.000000e+00, %bb.ll ] ; 3 uses
  %.0618.us.1 = phi float [ %i.dyv, %bb.lv ], [ %.0625.us.1, %bb.lu ], [ 0.000000e+00, %bb.ll ]
end_hunk_3
begin_hunk_4_@_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.ehe = fmul fast float %.1622.us.5, 2.500000e+00
  %i.ehf = fsub fast float %.0618.us.5, %i.ehe
  %i.ehg = getelementptr inbounds nuw [4 x i8], ptr %i.dux, i64 %indvars.iv1144 ; 7 uses
  %i.ehh = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.dtu ; 2 uses
  %i.ehi = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.dtw ; 2 uses
  %i.ehj = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.dty ; 2 uses
  %i.ehk = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.dua ; 2 uses
  %i.ehl = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.duc ; 2 uses
  %i.ehm = fmul fast float %i.dzh, f0x3FB504F3
  %i.ehn = fmul fast float %i.edd, f0x3F3504F3
  %i.eho = fsub fast float %i.ehm, %i.ehn         ; 2 uses
  %i.ehp = fmul fast float %i.ebf, 2.000000e+00
  %i.ehq = fsub fast float %i.efb, %i.ehp         ; 2 uses
  %i.ehr = fmul fast float %i.edd, f0x3FB504F3
  %i.ehs = fmul fast float %i.dzh, f0x3F3504F3
  %i.eht = fsub fast float %i.ehr, %i.ehs         ; 2 uses
  %i.ehu = fmul fast float %i.ebf, 5.000000e-01
  %i.ehv = fsub fast float %i.efb, %i.ehu         ; 2 uses
  %.neg.us = fmul fast float %i.ebf, -2.500000e+00
  %i.ehw = fadd fast float %i.dxj, %.neg.us
  %i.ehx = fadd fast float %i.ehw, %i.efb
  store float %i.ehx, ptr %i.ehg, align 4, !tbaa !74
  %i.ehy = fsub fast float %i.ehq, %i.eho
  store float %i.ehy, ptr %i.ehh, align 4, !tbaa !74
  %i.ehz = fadd fast float %i.ehq, %i.eho
  store float %i.ehz, ptr %i.ehi, align 4, !tbaa !74
  %i.eia = fadd fast float %i.ehv, %i.eht
  store float %i.eia, ptr %i.ehj, align 4, !tbaa !74
  %i.eib = fsub fast float %i.ehv, %i.eht
  store float %i.eib, ptr %i.ehk, align 4, !tbaa !74
  %.neg1004.us = fmul fast float %i.edd, -2.500000e+00
  %i.eic = fadd fast float %i.dzh, %.neg1004.us
  %i.eid = fadd fast float %i.eic, %i.egz
  store float %i.eid, ptr %i.ehl, align 4, !tbaa !74
  %i.eie = getelementptr inbounds nuw [4 x i8], ptr %i.ehg, i64 %i.due ; 2 uses
  %i.eif = getelementptr inbounds nuw [4 x i8], ptr %i.ehh, i64 %i.due ; 2 uses
  %i.eig = getelementptr inbounds nuw [4 x i8], ptr %i.ehi, i64 %i.due ; 2 uses
  %i.eih = getelementptr inbounds nuw [4 x i8], ptr %i.ehj, i64 %i.due ; 2 uses
  %i.eii = getelementptr inbounds nuw [4 x i8], ptr %i.ehk, i64 %i.due ; 2 uses
  %i.eij = getelementptr inbounds nuw [4 x i8], ptr %i.ehl, i64 %i.due ; 2 uses
  %i.eik = fmul fast float %i.dzi, f0x3FB504F3
  %i.eil = fmul fast float %i.ede, f0x3F3504F3
  %i.eim = fsub fast float %i.eik, %i.eil         ; 2 uses
  %i.ein = fmul fast float %i.ebg, 2.000000e+00
  %i.eio = fsub fast float %i.efc, %i.ein         ; 2 uses
  %i.eip = fmul fast float %i.ede, f0x3FB504F3
  %i.eiq = fmul fast float %i.dzi, f0x3F3504F3
  %i.eir = fsub fast float %i.eip, %i.eiq         ; 2 uses
  %i.eis = fmul fast float %i.ebg, 5.000000e-01
  %i.eit = fsub fast float %i.efc, %i.eis         ; 2 uses
  %.neg.us.1 = fmul fast float %i.ebg, -2.500000e+00
  %i.eiu = fadd fast float %i.dxk, %.neg.us.1
  %i.eiv = fadd fast float %i.eiu, %i.efc
  store float %i.eiv, ptr %i.eie, align 4, !tbaa !74
  %i.eiw = fsub fast float %i.eio, %i.eim
  store float %i.eiw, ptr %i.eif, align 4, !tbaa !74
  %i.eix = fadd fast float %i.eio, %i.eim
  store float %i.eix, ptr %i.eig, align 4, !tbaa !74
  %i.eiy = fadd fast float %i.eit, %i.eir
  store float %i.eiy, ptr %i.eih, align 4, !tbaa !74
  %i.eiz = fsub fast float %i.eit, %i.eir
  store float %i.eiz, ptr %i.eii, align 4, !tbaa !74
  %.neg1004.us.1 = fmul fast float %i.ede, -2.500000e+00
  %i.eja = fadd fast float %i.dzi, %.neg1004.us.1
  %i.ejb = fadd fast float %i.eja, %i.eha
  store float %i.ejb, ptr %i.eij, align 4, !tbaa !74
  %i.ejc = getelementptr inbounds nuw [4 x i8], ptr %i.eie, i64 %i.due ; 2 uses
  %i.ejd = getelementptr inbounds nuw [4 x i8], ptr %i.eif, i64 %i.due ; 2 uses
  %i.eje = getelementptr inbounds nuw [4 x i8], ptr %i.eig, i64 %i.due ; 2 uses
  %i.ejf = getelementptr inbounds nuw [4 x i8], ptr %i.eih, i64 %i.due ; 2 uses
  %i.ejg = getelementptr inbounds nuw [4 x i8], ptr %i.eii, i64 %i.due ; 2 uses
  %i.ejh = getelementptr inbounds nuw [4 x i8], ptr %i.eij, i64 %i.due ; 2 uses
  %i.eji = fmul fast float %i.dzj, f0x3FB504F3
  %i.ejj = fmul fast float %i.edf, f0x3F3504F3
  %i.ejk = fsub fast float %i.eji, %i.ejj         ; 2 uses
  %i.ejl = fmul fast float %i.ebh, 2.000000e+00
  %i.ejm = fsub fast float %i.efd, %i.ejl         ; 2 uses
  %i.ejn = fmul fast float %i.edf, f0x3FB504F3
  %i.ejo = fmul fast float %i.dzj, f0x3F3504F3
  %i.ejp = fsub fast float %i.ejn, %i.ejo         ; 2 uses
  %i.ejq = fmul fast float %i.ebh, 5.000000e-01
  %i.ejr = fsub fast float %i.efd, %i.ejq         ; 2 uses
  %.neg.us.2 = fmul fast float %i.ebh, -2.500000e+00
  %i.ejs = fadd fast float %i.dxl, %.neg.us.2
  %i.ejt = fadd fast float %i.ejs, %i.efd
  store float %i.ejt, ptr %i.ejc, align 4, !tbaa !74
  %i.eju = fsub fast float %i.ejm, %i.ejk
  store float %i.eju, ptr %i.ejd, align 4, !tbaa !74
  %i.ejv = fadd fast float %i.ejm, %i.ejk
  store float %i.ejv, ptr %i.eje, align 4, !tbaa !74
  %i.ejw = fadd fast float %i.ejr, %i.ejp
  store float %i.ejw, ptr %i.ejf, align 4, !tbaa !74
  %i.ejx = fsub fast float %i.ejr, %i.ejp
  store float %i.ejx, ptr %i.ejg, align 4, !tbaa !74
  %.neg1004.us.2 = fmul fast float %i.edf, -2.500000e+00
  %i.ejy = fadd fast float %i.dzj, %.neg1004.us.2
  %i.ejz = fadd fast float %i.ejy, %i.ehb
  store float %i.ejz, ptr %i.ejh, align 4, !tbaa !74
  %i.eka = getelementptr inbounds nuw [4 x i8], ptr %i.ejc, i64 %i.due ; 2 uses
  %i.ekb = getelementptr inbounds nuw [4 x i8], ptr %i.ejd, i64 %i.due ; 2 uses
  %i.ekc = getelementptr inbounds nuw [4 x i8], ptr %i.eje, i64 %i.due ; 2 uses
  %i.ekd = getelementptr inbounds nuw [4 x i8], ptr %i.ejf, i64 %i.due ; 2 uses
  %i.eke = getelementptr inbounds nuw [4 x i8], ptr %i.ejg, i64 %i.due ; 2 uses
  %i.ekf = getelementptr inbounds nuw [4 x i8], ptr %i.ejh, i64 %i.due ; 2 uses
  %i.ekg = fmul fast float %i.dzk, f0x3FB504F3
  %i.ekh = fmul fast float %i.edg, f0x3F3504F3
  %i.eki = fsub fast float %i.ekg, %i.ekh         ; 2 uses
  %i.ekj = fmul fast float %i.ebi, 2.000000e+00
  %i.ekk = fsub fast float %i.efe, %i.ekj         ; 2 uses
  %i.ekl = fmul fast float %i.edg, f0x3FB504F3
  %i.ekm = fmul fast float %i.dzk, f0x3F3504F3
  %i.ekn = fsub fast float %i.ekl, %i.ekm         ; 2 uses
  %i.eko = fmul fast float %i.ebi, 5.000000e-01
  %i.ekp = fsub fast float %i.efe, %i.eko         ; 2 uses
  %.neg.us.3 = fmul fast float %i.ebi, -2.500000e+00
  %i.ekq = fadd fast float %i.dxm, %.neg.us.3
  %i.ekr = fadd fast float %i.ekq, %i.efe
  store float %i.ekr, ptr %i.eka, align 4, !tbaa !74
  %i.eks = fsub fast float %i.ekk, %i.eki
  store float %i.eks, ptr %i.ekb, align 4, !tbaa !74
  %i.ekt = fadd fast float %i.ekk, %i.eki
  store float %i.ekt, ptr %i.ekc, align 4, !tbaa !74
  %i.eku = fadd fast float %i.ekp, %i.ekn
  store float %i.eku, ptr %i.ekd, align 4, !tbaa !74
  %i.ekv = fsub fast float %i.ekp, %i.ekn
  store float %i.ekv, ptr %i.eke, align 4, !tbaa !74
  %.neg1004.us.3 = fmul fast float %i.edg, -2.500000e+00
  %i.ekw = fadd fast float %i.dzk, %.neg1004.us.3
  %i.ekx = fadd fast float %i.ekw, %i.ehc
  store float %i.ekx, ptr %i.ekf, align 4, !tbaa !74
  %i.eky = getelementptr inbounds nuw [4 x i8], ptr %i.eka, i64 %i.due ; 2 uses
  %i.ekz = getelementptr inbounds nuw [4 x i8], ptr %i.ekb, i64 %i.due ; 2 uses
  %i.ela = getelementptr inbounds nuw [4 x i8], ptr %i.ekc, i64 %i.due ; 2 uses
  %i.elb = getelementptr inbounds nuw [4 x i8], ptr %i.ekd, i64 %i.due ; 2 uses
  %i.elc = getelementptr inbounds nuw [4 x i8], ptr %i.eke, i64 %i.due ; 2 uses
  %i.eld = getelementptr inbounds nuw [4 x i8], ptr %i.ekf, i64 %i.due ; 2 uses
  %i.ele = fmul fast float %i.dzl, f0x3FB504F3
  %i.elf = fmul fast float %i.edh, f0x3F3504F3
  %i.elg = fsub fast float %i.ele, %i.elf         ; 2 uses
  %i.elh = fmul fast float %i.ebj, 2.000000e+00
  %i.eli = fsub fast float %i.eff, %i.elh         ; 2 uses
  %i.elj = fmul fast float %i.edh, f0x3FB504F3
  %i.elk = fmul fast float %i.dzl, f0x3F3504F3
  %i.ell = fsub fast float %i.elj, %i.elk         ; 2 uses
  %i.elm = fmul fast float %i.ebj, 5.000000e-01
  %i.eln = fsub fast float %i.eff, %i.elm         ; 2 uses
  %.neg.us.4 = fmul fast float %i.ebj, -2.500000e+00
  %i.elo = fadd fast float %i.dxn, %.neg.us.4
  %i.elp = fadd fast float %i.elo, %i.eff
  store float %i.elp, ptr %i.eky, align 4, !tbaa !74
  %i.elq = fsub fast float %i.eli, %i.elg
  store float %i.elq, ptr %i.ekz, align 4, !tbaa !74
  %i.elr = fadd fast float %i.eli, %i.elg
  store float %i.elr, ptr %i.ela, align 4, !tbaa !74
  %i.els = fadd fast float %i.eln, %i.ell
  store float %i.els, ptr %i.elb, align 4, !tbaa !74
  %i.elt = fsub fast float %i.eln, %i.ell
  store float %i.elt, ptr %i.elc, align 4, !tbaa !74
  %.neg1004.us.4 = fmul fast float %i.edh, -2.500000e+00
  %i.elu = fadd fast float %i.dzl, %.neg1004.us.4
  %i.elv = fadd fast float %i.elu, %i.ehd
  store float %i.elv, ptr %i.eld, align 4, !tbaa !74
  %i.elw = getelementptr inbounds nuw [4 x i8], ptr %i.eky, i64 %i.due
  %i.elx = getelementptr inbounds nuw [4 x i8], ptr %i.ekz, i64 %i.due
  %i.ely = getelementptr inbounds nuw [4 x i8], ptr %i.ela, i64 %i.due
  %i.elz = getelementptr inbounds nuw [4 x i8], ptr %i.elb, i64 %i.due
  %i.ema = getelementptr inbounds nuw [4 x i8], ptr %i.elc, i64 %i.due
  %i.emb = getelementptr inbounds nuw [4 x i8], ptr %i.eld, i64 %i.due
  %i.emc = fmul fast float %i.dzn, f0x3FB504F3
  %i.emd = fmul fast float %i.edj, f0x3F3504F3
  %i.eme = fsub fast float %i.emc, %i.emd         ; 2 uses
  %i.emf = fmul fast float %i.ebl, 2.000000e+00
  %i.emg = fsub fast float %i.efh, %i.emf         ; 2 uses
  %i.emh = fmul fast float %i.edj, f0x3FB504F3
  %i.emi = fmul fast float %i.dzn, f0x3F3504F3
  %i.emj = fsub fast float %i.emh, %i.emi         ; 2 uses
  %i.emk = fmul fast float %i.ebl, 5.000000e-01
  %i.eml = fsub fast float %i.efh, %i.emk         ; 2 uses
  %.neg.us.5 = fmul fast float %i.ebl, -2.500000e+00
  %i.emm = fadd fast float %i.dxp, %.neg.us.5
  %i.emn = fadd fast float %i.emm, %i.efh
  store float %i.emn, ptr %i.elw, align 4, !tbaa !74
  %i.emo = fsub fast float %i.emg, %i.eme
  store float %i.emo, ptr %i.elx, align 4, !tbaa !74
  %i.emp = fadd fast float %i.emg, %i.eme
  store float %i.emp, ptr %i.ely, align 4, !tbaa !74
  %i.emq = fadd fast float %i.eml, %i.emj
  store float %i.emq, ptr %i.elz, align 4, !tbaa !74
  %i.emr = fsub fast float %i.eml, %i.emj
  store float %i.emr, ptr %i.ema, align 4, !tbaa !74
  %.neg1004.us.5 = fmul fast float %i.edj, -2.500000e+00
  %i.ems = fadd fast float %i.dzn, %.neg1004.us.5
  %i.emt = fadd fast float %i.ems, %i.ehf
  store float %i.emt, ptr %i.emb, align 4, !tbaa !74
  %indvars.iv.next1145 = add nuw nsw i64 %indvars.iv1144, 1 ; 2 uses
  %exitcond1148.not = icmp eq i64 %indvars.iv.next1145, %wide.trip.count1147
  br i1 %exitcond1148.not, label %._crit_edge.us1085, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !831

._crit_edge.us1085:                               ; preds = %bb.no
  %indvars.iv.next1150 = add nsw i64 %indvars.iv1149, 1 ; 2 uses
  %exitcond1153.not = icmp eq i64 %indvars.iv.next1150, %i.dus
  br i1 %exitcond1153.not, label %._crit_edge1082, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, !llvm.loop !832

._crit_edge1082:                                  ; preds = %._crit_edge.us1085, %.lr.ph1081, %._crit_edge1059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd43_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree nonnull readnone align 4 captures(none) %9, ptr nofree nonnull readnone align 4 captures(none) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %14) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.hj

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !113
  %i.k = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not592 = icmp sgt i32 %i.k, %i.j
  br i1 %.not592, label %._crit_edge595, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load i32, ptr %3, align 4, !tbaa !113    ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge595

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.dtt, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0593 = phi i32 [ %i.dtu, %._crit_edge ], [ %i.k, %.lr.ph ] ; 4 uses
  %i.r = shl nsw i32 %.0593, 4
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.lr.ph.split
  %i.t = mul i32 %.0593, 576
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph, %.thread575.5
  %indvars.iv = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %indvars.iv.next, %.thread575.5 ] ; 3 uses
  %i.u = load i32, ptr %4, align 4, !tbaa !113
  %i.v = load i32, ptr %5, align 4, !tbaa !113    ; 2 uses
  %i.w = load i32, ptr %7, align 4, !tbaa !113
  %i.x = add nsw i32 %i.w, %i.r
  %i.y = load i32, ptr %8, align 4, !tbaa !113    ; 5 uses
  %i.z = sdiv i32 %i.x, %i.y
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !114, !noalias !833
  %i.ab = load ptr, ptr %6, align 8, !tbaa !9, !noalias !833
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !18, !noalias !833
  %i.ad = sext i32 %i.z to i64
  %i.ae = mul i64 %i.ac, %i.ad
  %i.af = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !833 ; 2 uses
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ag
  %i.ai = sext i32 %i.aa to i64
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = add nsw i32 %i.u, %i.aj                 ; 2 uses
  %i.al = srem i32 %i.ak, %i.v
  %i.am = sdiv i32 %i.ak, %i.v
  %i.an = shl nsw i32 %i.am, 2                    ; 2 uses
  %i.ao = sext i32 %i.an to i64                   ; 6 uses
  %i.ap = mul i64 %i.af, %i.ai
  %i.aq = mul i64 %i.ap, %i.ao
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  %i.as = shl nsw i32 %i.al, 2                    ; 6 uses
  %i.at = mul nsw i32 %i.as, %i.y
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.au ; 41 uses
  %i.aw = load i32, ptr %11, align 4, !tbaa !113  ; 2 uses
  %i.ax = load i32, ptr %12, align 4, !tbaa !113  ; 24 uses
  %i.ay = mul nsw i32 %i.y, %i.ax
  %i.az = sext i32 %i.ay to i64                   ; 5 uses
  %i.ba = or disjoint i32 %i.as, 1                ; 24 uses
  %i.bb = or disjoint i32 %i.as, 2                ; 24 uses
  %i.bc = or disjoint i32 %i.as, 3                ; 24 uses
  %i.bd = add nsw i32 %i.as, 4                    ; 24 uses
  %i.be = add nsw i32 %i.as, 5                    ; 24 uses
  %i.bf = sext i32 %i.aw to i64                   ; 5 uses
  %i.bg = icmp slt i32 %i.an, %i.aw
  %i.bh = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.y)
  %i.bi = icmp eq i32 %i.bh, 1
  %or.cond = select i1 %i.bg, i1 %i.bi, i1 false
  br i1 %or.cond, label %.split, label %.thread575

.split:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.bj = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.y, i1 true)
  switch i32 %i.bj, label %.thread575 [
    i32 4, label %bb.c
    i32 3, label %bb.m
    i32 2, label %bb.w
    i32 0, label %bb.ag
  ]

bb.c:                                             ; preds = %.split
  %i.bk = load <16 x bfloat>, ptr %i.av, align 32, !tbaa !20
  %i.bl = fpext fast <16 x bfloat> %i.bk to <16 x float> ; 2 uses
  %i.bm = icmp slt i32 %i.ba, %i.ax
  br i1 %i.bm, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.bo = load <16 x bfloat>, ptr %i.bn, align 32, !tbaa !20
  %i.bp = fpext fast <16 x bfloat> %i.bo to <16 x float>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0312 = phi nsz <16 x float> [ %i.bp, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.bq = icmp slt i32 %i.bb, %i.ax
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.bs = load <16 x bfloat>, ptr %i.br, align 32, !tbaa !20
  %i.bt = fpext fast <16 x bfloat> %i.bs to <16 x float>
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0316 = phi nsz <16 x float> [ %i.bt, %bb.f ], [ zeroinitializer, %bb.e ] ; 2 uses
  %i.bu = icmp slt i32 %i.bc, %i.ax
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 96
  %i.bw = load <16 x bfloat>, ptr %i.bv, align 32, !tbaa !20
  %i.bx = fpext fast <16 x bfloat> %i.bw to <16 x float>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0324 = phi nsz <16 x float> [ %i.bx, %bb.h ], [ zeroinitializer, %bb.g ] ; 2 uses
  %i.by = icmp slt i32 %i.bd, %i.ax
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ca = load <16 x bfloat>, ptr %i.bz, align 32, !tbaa !20
  %i.cb = fpext fast <16 x bfloat> %i.ca to <16 x float>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0332 = phi nsz <16 x float> [ %i.cb, %bb.j ], [ zeroinitializer, %bb.i ] ; 2 uses
  %i.cc = icmp slt i32 %i.be, %i.ax
  br i1 %i.cc, label %bb.l, label %.thread575

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 160
  %i.ce = load <16 x bfloat>, ptr %i.cd, align 32, !tbaa !20
  %i.cf = fpext fast <16 x bfloat> %i.ce to <16 x float>
  br label %.thread575

bb.m:                                             ; preds = %.split
  %i.cg = load i64, ptr %13, align 8, !tbaa !117
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.cg ; 6 uses
  %i.ci = load <8 x bfloat>, ptr %i.av, align 16, !tbaa !20
  %i.cj = fpext fast <8 x bfloat> %i.ci to <8 x float>
  %i.ck = load <8 x bfloat>, ptr %i.ch, align 16, !tbaa !20
  %i.cl = fpext fast <8 x bfloat> %i.ck to <8 x float>
  %i.cm = shufflevector <8 x float> %i.cj, <8 x float> %i.cl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.cn = icmp slt i32 %i.ba, %i.ax
  br i1 %i.cn, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cp = load <8 x bfloat>, ptr %i.co, align 16, !tbaa !20
  %i.cq = fpext fast <8 x bfloat> %i.cp to <8 x float>
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cs = load <8 x bfloat>, ptr %i.cr, align 16, !tbaa !20
  %i.ct = fpext fast <8 x bfloat> %i.cs to <8 x float>
  %i.cu = shufflevector <8 x float> %i.cq, <8 x float> %i.ct, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2314 = phi nsz <16 x float> [ %i.cu, %bb.n ], [ zeroinitializer, %bb.m ] ; 2 uses
  %i.cv = icmp slt i32 %i.bb, %i.ax
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
end_hunk_4
begin_hunk_5_@_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii:bb.a
  %i.evn = fsub fast <2 x float> %i.evi, %i.evk
  store <2 x float> %i.evn, ptr %i.evm, align 8, !tbaa !74
  %i.evo = getelementptr inbounds nuw [8 x i8], ptr %i.eos, i64 %indvars.iv1564
  %i.evp = fmul fast <2 x float> %i.eus, splat (float 2.500000e-01)
  %i.evq = fadd fast <2 x float> %i.evp, %i.euu
  %i.evr = fmul fast <2 x float> %i.eur, splat (float -1.250000e+00)
  %i.evs = fadd fast <2 x float> %i.evq, %i.evr   ; 2 uses
  %i.evt = fmul fast <2 x float> %i.euv, splat (float 5.000000e-01)
  %i.evu = fmul fast <2 x float> %i.euw, splat (float 2.500000e+00) ; 2 uses
  %i.evv = fsub fast <2 x float> %i.evt, %i.evu
  %i.evw = fmul fast <2 x float> %i.eux, splat (float 2.000000e+00)
  %i.evx = fadd fast <2 x float> %i.evw, %i.evv   ; 2 uses
  %i.evy = fadd fast <2 x float> %i.evs, %i.evx
  store <2 x float> %i.evy, ptr %i.evo, align 8, !tbaa !74
  %i.evz = getelementptr inbounds nuw [8 x i8], ptr %i.eot, i64 %indvars.iv1564
  %i.ewa = fsub fast <2 x float> %i.evs, %i.evx
  store <2 x float> %i.ewa, ptr %i.evz, align 8, !tbaa !74
  %i.ewb = getelementptr inbounds nuw [8 x i8], ptr %i.eou, i64 %indvars.iv1564
  %i.ewc = fmul fast <2 x float> %i.eus, splat (float 4.000000e+00)
  %i.ewd = fmul fast <2 x float> %i.eur, splat (float 5.000000e+00)
  %i.ewe = fsub fast <2 x float> %i.ewc, %i.ewd
  %i.ewf = fadd fast <2 x float> %i.euu, %i.ewe   ; 2 uses
  %i.ewg = fmul fast <2 x float> %i.euv, splat (float 2.000000e+00)
  %i.ewh = fmul fast <2 x float> %i.eux, splat (float 5.000000e-01)
  %i.ewi = fsub fast <2 x float> %i.ewg, %i.evu
  %i.ewj = fadd fast <2 x float> %i.ewh, %i.ewi   ; 2 uses
  %i.ewk = fadd fast <2 x float> %i.ewf, %i.ewj
  store <2 x float> %i.ewk, ptr %i.ewb, align 8, !tbaa !74
  %i.ewl = getelementptr inbounds nuw [8 x i8], ptr %i.eov, i64 %indvars.iv1564
  %i.ewm = fsub fast <2 x float> %i.ewf, %i.ewj
  store <2 x float> %i.ewm, ptr %i.ewl, align 8, !tbaa !74
  %i.ewn = getelementptr inbounds nuw [8 x i8], ptr %i.eow, i64 %indvars.iv1564
  %i.ewo = fsub fast <2 x float> %i.euw, %i.eux
  %i.ewp = fmul fast <2 x float> %i.ewo, splat (float 5.250000e+00)
  %i.ewq = fsub fast <2 x float> %i.ewp, %i.euv
  %i.ewr = fadd fast <2 x float> %i.ewq, %i.euy
  store <2 x float> %i.ewr, ptr %i.ewn, align 8, !tbaa !74
  %i.ews = getelementptr inbounds [2 x i8], ptr %.09421484.us, i64 %i.eoy
  %indvars.iv.next1565 = add nuw nsw i64 %indvars.iv1564, 1 ; 2 uses
  %exitcond1567.not = icmp eq i64 %indvars.iv.next1565, 8
  br i1 %exitcond1567.not, label %bb.ox, label %bb.oh, !llvm.loop !909

bb.ox:                                            ; preds = %bb.ow
  %.idx1605 = shl nuw nsw i64 %indvars.iv1572, 3
  %i.ewt = getelementptr inbounds nuw i8, ptr %i.eqj, i64 %.idx1605 ; 8 uses
  %i.ewu = getelementptr inbounds nuw [4 x i8], ptr %i.ewt, i64 %i.epa
  %i.ewv = getelementptr inbounds nuw [4 x i8], ptr %i.ewt, i64 %i.epc
  %i.eww = getelementptr inbounds nuw [4 x i8], ptr %i.ewt, i64 %i.epe
  %i.ewx = getelementptr inbounds nuw [4 x i8], ptr %i.ewt, i64 %i.epg
  %i.ewy = getelementptr inbounds nuw [4 x i8], ptr %i.ewt, i64 %i.epi
  %i.ewz = getelementptr inbounds nuw [4 x i8], ptr %i.ewt, i64 %i.epk
  %i.exa = getelementptr inbounds nuw [4 x i8], ptr %i.ewt, i64 %i.epm
  br label %bb.oy

bb.oy:                                            ; preds = %bb.oy, %bb.ox
  %indvars.iv1568 = phi i64 [ %indvars.iv.next1569, %bb.oy ], [ 0, %bb.ox ] ; 2 uses
  %.08941493.us = phi ptr [ %i.ezj, %bb.oy ], [ %i.exa, %bb.ox ] ; 2 uses
  %.08951492.us = phi ptr [ %i.ezi, %bb.oy ], [ %i.ewz, %bb.ox ] ; 2 uses
  %.08961491.us = phi ptr [ %i.ezh, %bb.oy ], [ %i.ewy, %bb.ox ] ; 2 uses
  %.08971490.us = phi ptr [ %i.ezg, %bb.oy ], [ %i.ewx, %bb.ox ] ; 2 uses
  %.08981489.us = phi ptr [ %i.ezf, %bb.oy ], [ %i.eww, %bb.ox ] ; 2 uses
  %.08991488.us = phi ptr [ %i.eze, %bb.oy ], [ %i.ewv, %bb.ox ] ; 2 uses
  %.09001487.us = phi ptr [ %i.ezd, %bb.oy ], [ %i.ewu, %bb.ox ] ; 2 uses
  %.09011486.us = phi ptr [ %i.ezc, %bb.oy ], [ %i.ewt, %bb.ox ] ; 2 uses
  %i.exb = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %indvars.iv1568 ; 8 uses
  %i.exc = getelementptr inbounds nuw i8, ptr %i.exb, i64 8
  %i.exd = getelementptr inbounds nuw i8, ptr %i.exb, i64 16
  %i.exe = getelementptr inbounds nuw i8, ptr %i.exb, i64 24
  %i.exf = getelementptr inbounds nuw i8, ptr %i.exb, i64 32
  %i.exg = getelementptr inbounds nuw i8, ptr %i.exb, i64 40
  %i.exh = getelementptr inbounds nuw i8, ptr %i.exb, i64 48
  %i.exi = getelementptr inbounds nuw i8, ptr %i.exb, i64 56
  %i.exj = load <2 x float>, ptr %i.exb, align 16, !tbaa !74
  %i.exk = load <2 x float>, ptr %i.exd, align 16, !tbaa !74 ; 4 uses
  %i.exl = load <2 x float>, ptr %i.exf, align 16, !tbaa !74 ; 4 uses
  %i.exm = load <2 x float>, ptr %i.exh, align 16, !tbaa !74 ; 4 uses
  %i.exn = fsub fast <2 x float> %i.exl, %i.exk
  %i.exo = fmul fast <2 x float> %i.exn, splat (float 5.250000e+00)
  %i.exp = fadd fast <2 x float> %i.exo, %i.exj
  %i.exq = fsub fast <2 x float> %i.exp, %i.exm
  store <2 x float> %i.exq, ptr %.09011486.us, align 4, !tbaa !74
  %i.exr = load <2 x float>, ptr %i.exc, align 8, !tbaa !74 ; 4 uses
  %i.exs = load <2 x float>, ptr %i.exe, align 8, !tbaa !74 ; 3 uses
  %i.ext = load <2 x float>, ptr %i.exg, align 8, !tbaa !74 ; 4 uses
  %i.exu = fmul fast <2 x float> %i.exs, splat (float 4.250000e+00)
  %i.exv = fsub fast <2 x float> %i.exr, %i.exu
  %i.exw = fadd fast <2 x float> %i.exv, %i.ext   ; 2 uses
  %i.exx = fmul fast <2 x float> %i.exl, splat (float 4.250000e+00)
  %i.exy = fsub fast <2 x float> %i.exk, %i.exx
  %i.exz = fadd fast <2 x float> %i.exy, %i.exm   ; 2 uses
  %i.eya = fadd fast <2 x float> %i.exz, %i.exw
  store <2 x float> %i.eya, ptr %.09001487.us, align 4, !tbaa !74
  %i.eyb = fsub fast <2 x float> %i.exz, %i.exw
  store <2 x float> %i.eyb, ptr %.08991488.us, align 4, !tbaa !74
  %i.eyc = fmul fast <2 x float> %i.exk, splat (float 2.500000e-01)
  %i.eyd = fadd fast <2 x float> %i.eyc, %i.exm
  %i.eye = fmul fast <2 x float> %i.exl, splat (float -1.250000e+00)
  %i.eyf = fadd fast <2 x float> %i.eyd, %i.eye   ; 2 uses
  %i.eyg = fmul fast <2 x float> %i.exr, splat (float 5.000000e-01)
  %i.eyh = fmul fast <2 x float> %i.exs, splat (float 2.500000e+00) ; 2 uses
  %i.eyi = fsub fast <2 x float> %i.eyg, %i.eyh
  %i.eyj = fmul fast <2 x float> %i.ext, splat (float 2.000000e+00)
  %i.eyk = fadd fast <2 x float> %i.eyj, %i.eyi   ; 2 uses
  %i.eyl = fadd fast <2 x float> %i.eyf, %i.eyk
  store <2 x float> %i.eyl, ptr %.08981489.us, align 4, !tbaa !74
  %i.eym = fsub fast <2 x float> %i.eyf, %i.eyk
  store <2 x float> %i.eym, ptr %.08971490.us, align 4, !tbaa !74
  %i.eyn = fmul fast <2 x float> %i.exk, splat (float 4.000000e+00)
  %i.eyo = fmul fast <2 x float> %i.exl, splat (float 5.000000e+00)
  %i.eyp = fsub fast <2 x float> %i.eyn, %i.eyo
  %i.eyq = fadd fast <2 x float> %i.exm, %i.eyp   ; 2 uses
  %i.eyr = fmul fast <2 x float> %i.exr, splat (float 2.000000e+00)
  %i.eys = fmul fast <2 x float> %i.ext, splat (float 5.000000e-01)
  %i.eyt = fsub fast <2 x float> %i.eyr, %i.eyh
  %i.eyu = fadd fast <2 x float> %i.eys, %i.eyt   ; 2 uses
  %i.eyv = fadd fast <2 x float> %i.eyq, %i.eyu
  store <2 x float> %i.eyv, ptr %.08961491.us, align 4, !tbaa !74
  %i.eyw = fsub fast <2 x float> %i.eyq, %i.eyu
  store <2 x float> %i.eyw, ptr %.08951492.us, align 4, !tbaa !74
  %i.eyx = load <2 x float>, ptr %i.exi, align 8, !tbaa !74
  %i.eyy = fsub fast <2 x float> %i.exs, %i.ext
  %i.eyz = fmul fast <2 x float> %i.eyy, splat (float 5.250000e+00)
  %i.eza = fsub fast <2 x float> %i.eyz, %i.exr
  %i.ezb = fadd fast <2 x float> %i.eza, %i.eyx
  store <2 x float> %i.ezb, ptr %.08941493.us, align 4, !tbaa !74
  %i.ezc = getelementptr inbounds nuw [4 x i8], ptr %.09011486.us, i64 %i.epo
  %i.ezd = getelementptr inbounds nuw [4 x i8], ptr %.09001487.us, i64 %i.epo
  %i.eze = getelementptr inbounds nuw [4 x i8], ptr %.08991488.us, i64 %i.epo
  %i.ezf = getelementptr inbounds nuw [4 x i8], ptr %.08981489.us, i64 %i.epo
  %i.ezg = getelementptr inbounds nuw [4 x i8], ptr %.08971490.us, i64 %i.epo
  %i.ezh = getelementptr inbounds nuw [4 x i8], ptr %.08961491.us, i64 %i.epo
  %i.ezi = getelementptr inbounds nuw [4 x i8], ptr %.08951492.us, i64 %i.epo
  %i.ezj = getelementptr inbounds nuw [4 x i8], ptr %.08941493.us, i64 %i.epo
  %indvars.iv.next1569 = add nuw nsw i64 %indvars.iv1568, 1 ; 2 uses
  %exitcond1571.not = icmp eq i64 %indvars.iv.next1569, 8
  br i1 %exitcond1571.not, label %bb.oz, label %bb.oy, !llvm.loop !910

bb.oz:                                            ; preds = %bb.oy
  %indvars.iv.next1573 = add nuw nsw i64 %indvars.iv1572, 1 ; 2 uses
  %exitcond1576.not = icmp eq i64 %indvars.iv.next1573, %wide.trip.count1575
  br i1 %exitcond1576.not, label %._crit_edge.us1505, label %_ZN4ncnn3MatD2Ev.exit954.us, !llvm.loop !911

._crit_edge.us1505:                               ; preds = %bb.oz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  %indvars.iv.next1578 = add nuw nsw i64 %indvars.iv1577, 1 ; 2 uses
  %exitcond1581.not = icmp eq i64 %indvars.iv.next1578, %wide.trip.count1580
  br i1 %exitcond1581.not, label %._crit_edge1500, label %_ZN4ncnn3MatD2Ev.exit954.lr.ph.us, !llvm.loop !912

._crit_edge1500:                                  ; preds = %._crit_edge.us1505, %.lr.ph1499, %._crit_edge1478
  %i.ezk = shl nsw i32 %i.eol, 1
  %i.ezl = add nsw i32 %i.ezk, %i.eoj             ; 2 uses
  %i.ezm = icmp slt i32 %i.ezl, %5
  br i1 %i.ezm, label %.lr.ph1524, label %._crit_edge1525

.lr.ph1524:                                       ; preds = %._crit_edge1500
  %i.ezn = load i32, ptr %i.b, align 4, !tbaa !113 ; 11 uses
  %i.ezo = icmp sgt i32 %i.ezn, 0
  %i.ezp = load i32, ptr %i.h, align 4            ; 2 uses
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ezr = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.ezs = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ezt = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.ezu = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.ezv = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.ezw = getelementptr inbounds nuw i8, ptr %i.m, i64 224
  %i.ezx = load i32, ptr %i.d, align 4
  %i.ezy = sext i32 %i.ezx to i64
  %factor.op.mul1526 = shl i32 %i.ezn, 6
  %i.ezz = sext i32 %i.ezn to i64
  %i.faa = shl nsw i32 %i.ezn, 1
  %i.fab = sext i32 %i.faa to i64
  %i.fac = mul nsw i32 %i.ezn, 3
  %i.fad = sext i32 %i.fac to i64
  %i.fae = shl nsw i32 %i.ezn, 2
  %i.faf = sext i32 %i.fae to i64
  %i.fag = mul nsw i32 %i.ezn, 5
  %i.fah = sext i32 %i.fag to i64
  %i.fai = mul nsw i32 %i.ezn, 6
  %i.faj = sext i32 %i.fai to i64
  %i.fak = mul nsw i32 %i.ezn, 7
  %i.fal = sext i32 %i.fak to i64
  %i.fam = shl nsw i32 %i.ezn, 3
  %i.fan = sext i32 %i.fam to i64                 ; 8 uses
  br i1 %i.ezo, label %.lr.ph1524.split.us, label %._crit_edge1525

.lr.ph1524.split.us:                              ; preds = %.lr.ph1524
  %i.fao = load i32, ptr %i.e, align 4
  %i.fap = load i32, ptr %i.c, align 4
  %i.faq = load i32, ptr %i.a, align 4
  %i.far = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fas = load i32, ptr %i.o, align 4, !tbaa !114, !noalias !913
  %i.fat = load ptr, ptr %0, align 8, !tbaa !9, !noalias !913
  %i.fau = load i64, ptr %i.u, align 8, !tbaa !18, !noalias !913
  %i.fav = load i64, ptr %i.far, align 8, !tbaa !19, !noalias !913 ; 2 uses
  %factor.op.mul1529 = mul i64 %i.fau, %i.fav
  %i.faw = sext i32 %i.fas to i64
  %factor.op.mul1520.us = mul i64 %i.fav, %i.faw
  %i.fax = load ptr, ptr %1, align 8, !tbaa !9
  %i.fay = sext i32 %i.fao to i64
  %i.faz = sext i32 %i.ezl to i64
  %i.fba = sext i32 %i.fap to i64
  %i.fbb = sext i32 %5 to i64
  %wide.trip.count1593 = zext nneg i32 %i.ezn to i64
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us1528, %.lr.ph1524.split.us
  %indvars.iv1595 = phi i64 [ %indvars.iv.next1596, %._crit_edge.us1528 ], [ %i.faz, %.lr.ph1524.split.us ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #10
  %i.fbc = add nsw i64 %indvars.iv1595, %i.fba
  %.reass1530 = mul i64 %factor.op.mul1529, %i.fbc
  %i.fbd = getelementptr inbounds nuw i8, ptr %i.fat, i64 %.reass1530
  %i.fbe = trunc nsw i64 %indvars.iv1595 to i32
  %.reass1527.us = mul i32 %factor.op.mul1526, %i.fbe
  %i.fbf = sext i32 %.reass1527.us to i64
  %i.fbg = getelementptr inbounds [4 x i8], ptr %i.fax, i64 %i.fbf
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.ps
  %indvars.iv1590 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next1591, %bb.ps ] ; 3 uses
  %i.fbh = trunc i64 %indvars.iv1590 to i32
  %i.fbi = add i32 %i.faq, %i.fbh                 ; 2 uses
  %i.fbj = sdiv i32 %i.fbi, %i.ezp
  %i.fbk = srem i32 %i.fbi, %i.ezp
  %i.fbl = mul nsw i32 %i.fbj, 6
  %i.fbm = sext i32 %i.fbl to i64                 ; 2 uses
  %.reass1521.us = mul i64 %factor.op.mul1520.us, %i.fbm
  %i.fbn = getelementptr inbounds nuw i8, ptr %i.fbd, i64 %.reass1521.us
  %i.fbo = mul nsw i32 %i.fbk, 6                  ; 8 uses
  %i.fbp = sext i32 %i.fbo to i64
  %i.fbq = getelementptr inbounds [2 x i8], ptr %i.fbn, i64 %i.fbp
  %i.fbr = or disjoint i32 %i.fbo, 1
  %i.fbs = load i32, ptr %i.d, align 4            ; 7 uses
  %i.fbt = icmp slt i32 %i.fbr, %i.fbs
  %i.fbu = add nsw i32 %i.fbo, 2
  %i.fbv = icmp slt i32 %i.fbu, %i.fbs
  %i.fbw = add nsw i32 %i.fbo, 3
  %i.fbx = icmp slt i32 %i.fbw, %i.fbs
  %i.fby = add nsw i32 %i.fbo, 4
  %i.fbz = icmp slt i32 %i.fby, %i.fbs
  %i.fca = add nsw i32 %i.fbo, 5
  %i.fcb = icmp slt i32 %i.fca, %i.fbs
  %i.fcc = add nsw i32 %i.fbo, 6
  %i.fcd = icmp slt i32 %i.fcc, %i.fbs
  %i.fce = add nsw i32 %i.fbo, 7
  %i.fcf = icmp slt i32 %i.fce, %i.fbs
  %invariant.op1620 = sub nsw i64 %i.fay, %i.fbm
  br label %bb.pa

bb.pa:                                            ; preds = %bb.pp, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv1582 = phi i64 [ %indvars.iv.next1583, %bb.pp ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ] ; 10 uses
  %.08661508.us = phi ptr [ %i.ffk, %bb.pp ], [ %i.fbq, %_ZN4ncnn3MatD2Ev.exit.us ] ; 9 uses
  %i.fcg = icmp slt i64 %indvars.iv1582, %invariant.op1620
  br i1 %i.fcg, label %bb.pb, label %bb.pp

bb.pb:                                            ; preds = %bb.pa
  %i.fch = load i16, ptr %.08661508.us, align 2, !tbaa !76
  %i.fci = zext i16 %i.fch to i32
  %i.fcj = shl nuw i32 %i.fci, 16
  %i.fck = bitcast i32 %i.fcj to float            ; 2 uses
  br i1 %i.fbt, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %bb.pb
  %i.fcl = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 2
  %i.fcm = load i16, ptr %i.fcl, align 2, !tbaa !76
  %i.fcn = zext i16 %i.fcm to i32
  %i.fco = shl nuw i32 %i.fcn, 16
  %i.fcp = bitcast i32 %i.fco to float
  br label %bb.pd

bb.pd:                                            ; preds = %bb.pc, %bb.pb
  %.0862.us = phi nsz float [ %i.fcp, %bb.pc ], [ 0.000000e+00, %bb.pb ] ; 2 uses
  br i1 %i.fbv, label %bb.pe, label %bb.pf

bb.pe:                                            ; preds = %bb.pd
  %i.fcq = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 4
  %i.fcr = load i16, ptr %i.fcq, align 2, !tbaa !76
  %i.fcs = zext i16 %i.fcr to i32
  %i.fct = shl nuw i32 %i.fcs, 16
  %i.fcu = bitcast i32 %i.fct to float
  br label %bb.pf

bb.pf:                                            ; preds = %bb.pe, %bb.pd
  %.0860.us = phi nsz float [ %i.fcu, %bb.pe ], [ 0.000000e+00, %bb.pd ] ; 2 uses
  br i1 %i.fbx, label %bb.pg, label %bb.ph

bb.pg:                                            ; preds = %bb.pf
  %i.fcv = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 6
  %i.fcw = load i16, ptr %i.fcv, align 2, !tbaa !76
  %i.fcx = zext i16 %i.fcw to i32
  %i.fcy = shl nuw i32 %i.fcx, 16
  %i.fcz = bitcast i32 %i.fcy to float
  br label %bb.ph

bb.ph:                                            ; preds = %bb.pg, %bb.pf
  %.0858.us = phi nsz float [ %i.fcz, %bb.pg ], [ 0.000000e+00, %bb.pf ] ; 2 uses
  br i1 %i.fbz, label %bb.pi, label %bb.pj

bb.pi:                                            ; preds = %bb.ph
  %i.fda = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 8
  %i.fdb = load i16, ptr %i.fda, align 2, !tbaa !76
  %i.fdc = zext i16 %i.fdb to i32
  %i.fdd = shl nuw i32 %i.fdc, 16
  %i.fde = bitcast i32 %i.fdd to float
  br label %bb.pj

bb.pj:                                            ; preds = %bb.pi, %bb.ph
  %.0856.us = phi nsz float [ %i.fde, %bb.pi ], [ 0.000000e+00, %bb.ph ] ; 2 uses
  br i1 %i.fcb, label %bb.pk, label %bb.pl

bb.pk:                                            ; preds = %bb.pj
  %i.fdf = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 10
  %i.fdg = load i16, ptr %i.fdf, align 2, !tbaa !76
  %i.fdh = zext i16 %i.fdg to i32
  %i.fdi = shl nuw i32 %i.fdh, 16
  %i.fdj = bitcast i32 %i.fdi to float
  br label %bb.pl

bb.pl:                                            ; preds = %bb.pk, %bb.pj
  %.0854.us = phi nsz float [ %i.fdj, %bb.pk ], [ 0.000000e+00, %bb.pj ] ; 2 uses
  br i1 %i.fcd, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.fdk = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 12
  %i.fdl = load i16, ptr %i.fdk, align 2, !tbaa !76
  %i.fdm = zext i16 %i.fdl to i32
  %i.fdn = shl nuw i32 %i.fdm, 16
  %i.fdo = bitcast i32 %i.fdn to float
  br label %bb.pn

bb.pn:                                            ; preds = %bb.pm, %bb.pl
  %.0852.us = phi nsz float [ %i.fdo, %bb.pm ], [ 0.000000e+00, %bb.pl ] ; 2 uses
  br i1 %i.fcf, label %bb.po, label %bb.pp

bb.po:                                            ; preds = %bb.pn
  %i.fdp = getelementptr inbounds nuw i8, ptr %.08661508.us, i64 14
  %i.fdq = load i16, ptr %i.fdp, align 2, !tbaa !76
  %i.fdr = zext i16 %i.fdq to i32
  %i.fds = shl nuw i32 %i.fdr, 16
  %i.fdt = bitcast i32 %i.fds to float
  br label %bb.pp

bb.pp:                                            ; preds = %bb.po, %bb.pn, %bb.pa
  %.0864.us = phi nsz float [ %i.fck, %bb.po ], [ %i.fck, %bb.pn ], [ 0.000000e+00, %bb.pa ]
  %.1863.us = phi nsz float [ %.0862.us, %bb.po ], [ %.0862.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1861.us = phi nsz float [ %.0860.us, %bb.po ], [ %.0860.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1859.us = phi nsz float [ %.0858.us, %bb.po ], [ %.0858.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 3 uses
  %.1857.us = phi nsz float [ %.0856.us, %bb.po ], [ %.0856.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1855.us = phi nsz float [ %.0854.us, %bb.po ], [ %.0854.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.1853.us = phi nsz float [ %.0852.us, %bb.po ], [ %.0852.us, %bb.pn ], [ 0.000000e+00, %bb.pa ] ; 4 uses
  %.0851.us = phi nsz float [ %i.fdt, %bb.po ], [ 0.000000e+00, %bb.pn ], [ 0.000000e+00, %bb.pa ]
  %.neg1427.us = fmul fast float %.1857.us, 4.250000e+00
  %i.fdu = fsub fast float %.1861.us, %.neg1427.us
  %i.fdv = fadd fast float %i.fdu, %.1853.us      ; 2 uses
  %.neg1428.us = fmul fast float %.1859.us, 4.250000e+00
  %i.fdw = fsub fast float %.1863.us, %.neg1428.us
  %i.fdx = fadd fast float %i.fdw, %.1855.us      ; 2 uses
  %i.fdy = fmul fast float %.1861.us, 2.500000e-01
  %i.fdz = fadd fast float %i.fdy, %.1853.us
  %.neg1429.us = fmul fast float %.1857.us, -1.250000e+00
  %i.fea = fadd fast float %i.fdz, %.neg1429.us   ; 2 uses
  %i.feb = fmul fast float %.1863.us, 5.000000e-01
  %i.fec = fmul fast float %.1859.us, 2.500000e+00 ; 2 uses
  %i.fed = fsub fast float %i.feb, %i.fec
  %i.fee = fmul fast float %.1855.us, 2.000000e+00
  %i.fef = fadd fast float %i.fee, %i.fed         ; 2 uses
  %i.feg = fmul fast float %.1861.us, 4.000000e+00
  %i.feh = fmul fast float %.1857.us, 5.000000e+00
  %i.fei = fsub fast float %i.feg, %i.feh
  %i.fej = fadd fast float %i.fei, %.1853.us      ; 2 uses
  %i.fek = fmul fast float %.1863.us, 2.000000e+00
  %i.fel = fsub fast float %i.fek, %i.fec
  %i.fem = fmul fast float %.1855.us, 5.000000e-01
  %i.fen = fadd fast float %i.fem, %i.fel         ; 2 uses
  %i.feo = fsub fast float %.0864.us, %.1853.us
  %i.fep = fsub fast float %.1857.us, %.1861.us
  %i.feq = fmul fast float %i.fep, 5.250000e+00
  %i.fer = fadd fast float %i.feo, %i.feq
  %i.fes = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv1582
  store float %i.fer, ptr %i.fes, align 4, !tbaa !74
  %i.fet = fadd fast float %i.fdv, %i.fdx
  %i.feu = getelementptr inbounds nuw [4 x i8], ptr %i.ezq, i64 %indvars.iv1582
  store float %i.fet, ptr %i.feu, align 4, !tbaa !74
  %i.fev = fsub fast float %i.fdv, %i.fdx
  %i.few = getelementptr inbounds nuw [4 x i8], ptr %i.ezr, i64 %indvars.iv1582
  store float %i.fev, ptr %i.few, align 4, !tbaa !74
  %i.fex = fadd fast float %i.fea, %i.fef
  %i.fey = getelementptr inbounds nuw [4 x i8], ptr %i.ezs, i64 %indvars.iv1582
  store float %i.fex, ptr %i.fey, align 4, !tbaa !74
  %i.fez = fsub fast float %i.fea, %i.fef
  %i.ffa = getelementptr inbounds nuw [4 x i8], ptr %i.ezt, i64 %indvars.iv1582
  store float %i.fez, ptr %i.ffa, align 4, !tbaa !74
  %i.ffb = fadd fast float %i.fej, %i.fen
  %i.ffc = getelementptr inbounds nuw [4 x i8], ptr %i.ezu, i64 %indvars.iv1582
  store float %i.ffb, ptr %i.ffc, align 4, !tbaa !74
  %i.ffd = fsub fast float %i.fej, %i.fen
  %i.ffe = getelementptr inbounds nuw [4 x i8], ptr %i.ezv, i64 %indvars.iv1582
  store float %i.ffd, ptr %i.ffe, align 4, !tbaa !74
  %i.fff = fsub fast float %.0851.us, %.1863.us
  %i.ffg = fsub fast float %.1859.us, %.1855.us
  %i.ffh = fmul fast float %i.ffg, 5.250000e+00
  %i.ffi = fadd fast float %i.fff, %i.ffh
  %i.ffj = getelementptr inbounds nuw [4 x i8], ptr %i.ezw, i64 %indvars.iv1582
  store float %i.ffi, ptr %i.ffj, align 4, !tbaa !74
  %i.ffk = getelementptr inbounds [2 x i8], ptr %.08661508.us, i64 %i.ezy
  %indvars.iv.next1583 = add nuw nsw i64 %indvars.iv1582, 1 ; 2 uses
  %exitcond1585.not = icmp eq i64 %indvars.iv.next1583, 8
  br i1 %exitcond1585.not, label %bb.pq, label %bb.pa, !llvm.loop !916

bb.pq:                                            ; preds = %bb.pp
  %i.ffl = getelementptr inbounds nuw [4 x i8], ptr %i.fbg, i64 %indvars.iv1590 ; 8 uses
  %i.ffm = getelementptr inbounds nuw [4 x i8], ptr %i.ffl, i64 %i.ezz
  %i.ffn = getelementptr inbounds nuw [4 x i8], ptr %i.ffl, i64 %i.fab
  %i.ffo = getelementptr inbounds nuw [4 x i8], ptr %i.ffl, i64 %i.fad
  %i.ffp = getelementptr inbounds nuw [4 x i8], ptr %i.ffl, i64 %i.faf
  %i.ffq = getelementptr inbounds nuw [4 x i8], ptr %i.ffl, i64 %i.fah
  %i.ffr = getelementptr inbounds nuw [4 x i8], ptr %i.ffl, i64 %i.faj
  %i.ffs = getelementptr inbounds nuw [4 x i8], ptr %i.ffl, i64 %i.fal
  br label %bb.pr

bb.pr:                                            ; preds = %bb.pr, %bb.pq
  %indvars.iv1586 = phi i64 [ %indvars.iv.next1587, %bb.pr ], [ 0, %bb.pq ] ; 2 uses
  %.08431517.us = phi ptr [ %i.fhx, %bb.pr ], [ %i.ffs, %bb.pq ] ; 2 uses
  %.08441516.us = phi ptr [ %i.fhw, %bb.pr ], [ %i.ffr, %bb.pq ] ; 2 uses
  %.08451515.us = phi ptr [ %i.fhv, %bb.pr ], [ %i.ffq, %bb.pq ] ; 2 uses
  %.08461514.us = phi ptr [ %i.fhu, %bb.pr ], [ %i.ffp, %bb.pq ] ; 2 uses
  %.08471513.us = phi ptr [ %i.fht, %bb.pr ], [ %i.ffo, %bb.pq ] ; 2 uses
  %.08481512.us = phi ptr [ %i.fhs, %bb.pr ], [ %i.ffn, %bb.pq ] ; 2 uses
  %.08491511.us = phi ptr [ %i.fhr, %bb.pr ], [ %i.ffm, %bb.pq ] ; 2 uses
  %.08501510.us = phi ptr [ %i.fhq, %bb.pr ], [ %i.ffl, %bb.pq ] ; 2 uses
  %i.fft = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %indvars.iv1586 ; 5 uses
  %i.ffu = load float, ptr %i.fft, align 16, !tbaa !74
  %i.ffv = getelementptr inbounds nuw i8, ptr %i.fft, i64 4
  %i.ffw = getelementptr inbounds nuw i8, ptr %i.fft, i64 12
  %i.ffx = getelementptr inbounds nuw i8, ptr %i.fft, i64 20
  %i.ffy = getelementptr inbounds nuw i8, ptr %i.fft, i64 28
  %i.ffz = load float, ptr %i.ffy, align 4, !tbaa !74
  %i.fga = load <2 x float>, ptr %i.ffv, align 4, !tbaa !74 ; 4 uses
  %i.fgb = load <2 x float>, ptr %i.ffw, align 4, !tbaa !74 ; 4 uses
  %i.fgc = load <2 x float>, ptr %i.ffx, align 4, !tbaa !74 ; 5 uses
  %i.fgd = fmul fast <2 x float> %i.fgb, splat (float 4.250000e+00)
  %i.fge = fsub fast <2 x float> %i.fga, %i.fgd
  %i.fgf = fadd fast <2 x float> %i.fge, %i.fgc   ; 2 uses
  %i.fgg = extractelement <2 x float> %i.fga, i64 1 ; 2 uses
  %i.fgh = fmul fast float %i.fgg, 2.500000e-01
  %i.fgi = extractelement <2 x float> %i.fgb, i64 1 ; 2 uses
  %.neg1424.us = fmul fast float %i.fgi, -1.250000e+00
  %i.fgj = extractelement <2 x float> %i.fga, i64 0 ; 2 uses
  %i.fgk = fmul fast float %i.fgj, 5.000000e-01
  %i.fgl = extractelement <2 x float> %i.fgc, i64 0
  %i.fgm = fmul fast float %i.fgl, 2.000000e+00
  %i.fgn = extractelement <2 x float> %i.fgc, i64 1 ; 2 uses
  %i.fgo = fadd fast float %i.fgh, %i.fgn
  %i.fgp = fadd fast float %i.fgo, %.neg1424.us   ; 2 uses
  %i.fgq = fmul fast <2 x float> %i.fgb, <float 2.500000e+00, float 5.000000e+00> ; 2 uses
  %i.fgr = extractelement <2 x float> %i.fgq, i64 0
  %i.fgs = fsub fast float %i.fgk, %i.fgr
  %i.fgt = fadd fast float %i.fgm, %i.fgs         ; 2 uses
  %i.fgu = fmul fast <2 x float> %i.fga, <float 2.000000e+00, float 4.000000e+00>
  %i.fgv = fmul reassoc nsz arcp contract afn <2 x float> %i.fgc, <float 5.000000e-01, float 1.000000e+00>
  %i.fgw = fadd reassoc nsz arcp contract afn <2 x float> %i.fgu, %i.fgv
  %i.fgx = fsub reassoc nsz arcp contract afn <2 x float> %i.fgw, %i.fgq ; 2 uses
  %i.fgy = fsub fast float %i.ffu, %i.fgn
  %i.fgz = fsub fast float %i.fgi, %i.fgg
  %i.fha = fmul fast float %i.fgz, 5.250000e+00
  %i.fhb = fadd fast float %i.fgy, %i.fha
  store float %i.fhb, ptr %.08501510.us, align 4, !tbaa !74
  %i.fhc = extractelement <2 x float> %i.fgf, i64 0 ; 2 uses
  %i.fhd = extractelement <2 x float> %i.fgf, i64 1 ; 2 uses
  %i.fhe = fadd fast float %i.fhd, %i.fhc
  store float %i.fhe, ptr %.08491511.us, align 4, !tbaa !74
  %i.fhf = fsub fast float %i.fhd, %i.fhc
  store float %i.fhf, ptr %.08481512.us, align 4, !tbaa !74
  %i.fhg = fadd fast float %i.fgp, %i.fgt
  store float %i.fhg, ptr %.08471513.us, align 4, !tbaa !74
  %i.fhh = fsub fast float %i.fgp, %i.fgt
  store float %i.fhh, ptr %.08461514.us, align 4, !tbaa !74
  %i.fhi = extractelement <2 x float> %i.fgx, i64 0 ; 2 uses
  %i.fhj = extractelement <2 x float> %i.fgx, i64 1 ; 2 uses
  %i.fhk = fadd fast float %i.fhj, %i.fhi
  store float %i.fhk, ptr %.08451515.us, align 4, !tbaa !74
  %i.fhl = fsub fast float %i.fhj, %i.fhi
  store float %i.fhl, ptr %.08441516.us, align 4, !tbaa !74
  %i.fhm = fsub fast float %i.ffz, %i.fgj
  %foldExtExtBinop = fsub fast <2 x float> %i.fgb, %i.fgc
  %i.fhn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fho = fmul fast float %i.fhn, 5.250000e+00
  %i.fhp = fadd fast float %i.fhm, %i.fho
  store float %i.fhp, ptr %.08431517.us, align 4, !tbaa !74
  %i.fhq = getelementptr inbounds nuw [4 x i8], ptr %.08501510.us, i64 %i.fan
  %i.fhr = getelementptr inbounds nuw [4 x i8], ptr %.08491511.us, i64 %i.fan
  %i.fhs = getelementptr inbounds nuw [4 x i8], ptr %.08481512.us, i64 %i.fan
  %i.fht = getelementptr inbounds nuw [4 x i8], ptr %.08471513.us, i64 %i.fan
  %i.fhu = getelementptr inbounds nuw [4 x i8], ptr %.08461514.us, i64 %i.fan
  %i.fhv = getelementptr inbounds nuw [4 x i8], ptr %.08451515.us, i64 %i.fan
  %i.fhw = getelementptr inbounds nuw [4 x i8], ptr %.08441516.us, i64 %i.fan
  %i.fhx = getelementptr inbounds nuw [4 x i8], ptr %.08431517.us, i64 %i.fan
  %indvars.iv.next1587 = add nuw nsw i64 %indvars.iv1586, 1 ; 2 uses
  %exitcond1589.not = icmp eq i64 %indvars.iv.next1587, 8
  br i1 %exitcond1589.not, label %bb.ps, label %bb.pr, !llvm.loop !917

bb.ps:                                            ; preds = %bb.pr
  %indvars.iv.next1591 = add nuw nsw i64 %indvars.iv1590, 1 ; 2 uses
  %exitcond1594.not = icmp eq i64 %indvars.iv.next1591, %wide.trip.count1593
  br i1 %exitcond1594.not, label %._crit_edge.us1528, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !918

._crit_edge.us1528:                               ; preds = %bb.ps
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #10
  %indvars.iv.next1596 = add nsw i64 %indvars.iv1595, 1 ; 2 uses
  %exitcond1599.not = icmp eq i64 %indvars.iv.next1596, %i.fbb
  br i1 %exitcond1599.not, label %._crit_edge1525, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, !llvm.loop !919

._crit_edge1525:                                  ; preds = %._crit_edge.us1528, %.lr.ph1524, %._crit_edge1500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL47conv3x3s1_winograd63_transform_input_tile_bf16sERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [8 x [8 x [16 x float]]], align 64 ; 67 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !113    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.np

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.h, ptr %i.b, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !113
  %i.i = load i32, ptr %0, align 4, !tbaa !113    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !113
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !113
  %i.l = load i32, ptr %i.a, align 4, !tbaa !113  ; 2 uses
  %.not835 = icmp sgt i32 %i.l, %i.k
  br i1 %.not835, label %._crit_edge838, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1536
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 2560
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 3072
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 3584
  %i.w = load i32, ptr %3, align 4, !tbaa !113    ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.split.preheader, label %._crit_edge838

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 1600
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 2112
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 2624
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 3136
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 3648
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 640
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 1664
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 2176
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 2688
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 3200
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 3712
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 1216
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 1728
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 2240
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 2752
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 3264
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 3776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 768
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 1280
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1792
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 2304
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 2816
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 3328
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 3840
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 832
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 1344
  %i.bh = getelementptr inbounds nuw i8, ptr %i.e, i64 1856
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 2368
  %i.bj = getelementptr inbounds nuw i8, ptr %i.e, i64 2880
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 3392
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 3904
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %i.e, i64 896
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 1408
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 1920
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 2432
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 2944
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 3456
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 3968
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 960
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 1472
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 1984
  %i.by = getelementptr inbounds nuw i8, ptr %i.e, i64 2496
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 3008
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 3520
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 4032
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %._crit_edge
  %i.cc = phi i32 [ %i.gvq, %._crit_edge ], [ %i.w, %.lr.ph.split.preheader ] ; 2 uses
  %.0836 = phi i32 [ %i.gvr, %._crit_edge ], [ %i.l, %.lr.ph.split.preheader ] ; 4 uses
  %i.cd = shl nsw i32 %.0836, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.ce = icmp sgt i32 %i.cc, 0
  br i1 %i.ce, label %_ZN4ncnn3MatD2Ev.exit.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit.lr.ph:                      ; preds = %.lr.ph.split
  %i.cf = shl i32 %.0836, 10
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph, %bb.nn
  %indvars.iv842 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph ], [ %indvars.iv.next843, %bb.nn ] ; 3 uses
  %i.cg = load i32, ptr %4, align 4, !tbaa !113
  %i.ch = load i32, ptr %5, align 4, !tbaa !113   ; 2 uses
  %i.ci = load i32, ptr %7, align 4, !tbaa !113
  %i.cj = add nsw i32 %i.ci, %i.cd
  %i.ck = load i32, ptr %8, align 4, !tbaa !113   ; 5 uses
  %i.cl = sdiv i32 %i.cj, %i.ck
  %i.cm = load i32, ptr %i.m, align 4, !tbaa !114, !noalias !920
  %i.cn = load ptr, ptr %6, align 8, !tbaa !9, !noalias !920
  %i.co = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !920
  %i.cp = sext i32 %i.cl to i64
  %i.cq = mul i64 %i.co, %i.cp
  %i.cr = load i64, ptr %i.o, align 8, !tbaa !19, !noalias !920 ; 2 uses
  %i.cs = mul i64 %i.cq, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cs
  %i.cu = sext i32 %i.cm to i64
  %i.cv = trunc nuw nsw i64 %indvars.iv842 to i32
  %i.cw = add nsw i32 %i.cg, %i.cv                ; 2 uses
  %i.cx = srem i32 %i.cw, %i.ch
  %i.cy = sdiv i32 %i.cw, %i.ch
  %i.cz = mul nsw i32 %i.cy, 6                    ; 2 uses
  %i.da = sext i32 %i.cz to i64                   ; 8 uses
  %i.db = mul i64 %i.cr, %i.cu
  %i.dc = mul i64 %i.db, %i.da
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.dc
  %i.de = mul nsw i32 %i.cx, 6                    ; 8 uses
  %i.df = mul nsw i32 %i.de, %i.ck
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %i.dg ; 46 uses
  %i.di = load i32, ptr %9, align 4, !tbaa !113   ; 2 uses
  %i.dj = load i32, ptr %10, align 4, !tbaa !113  ; 22 uses
  %i.dk = mul nsw i32 %i.ck, %i.dj
  %i.dl = sext i32 %i.dk to i64                   ; 7 uses
  %i.dm = or disjoint i32 %i.de, 1                ; 32 uses
  %i.dn = add nsw i32 %i.de, 2                    ; 32 uses
  %i.do = add nsw i32 %i.de, 3                    ; 32 uses
  %i.dp = add nsw i32 %i.de, 4                    ; 32 uses
  %i.dq = add nsw i32 %i.de, 5                    ; 32 uses
  %i.dr = add nsw i32 %i.de, 6                    ; 32 uses
  %i.ds = add nsw i32 %i.de, 7                    ; 32 uses
  %i.dt = sext i32 %i.di to i64                   ; 7 uses
  %i.du = icmp slt i32 %i.cz, %i.di
  %i.dv = call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.ck)
  %i.dw = icmp eq i32 %i.dv, 1
  %or.cond = select i1 %i.du, i1 %i.dw, i1 false
  br i1 %or.cond, label %.split, label %.thread814

.split:                                           ; preds = %_ZN4ncnn3MatD2Ev.exit
  %i.dx = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ck, i1 true)
  switch i32 %i.dx, label %.thread814 [
    i32 4, label %bb.c
    i32 3, label %bb.q
    i32 2, label %bb.ae
    i32 0, label %bb.as
  ]

bb.c:                                             ; preds = %.split
  %i.dy = load <16 x bfloat>, ptr %i.dh, align 32, !tbaa !20
  %i.dz = fpext fast <16 x bfloat> %i.dy to <16 x float> ; 2 uses
  %i.ea = icmp slt i32 %i.dm, %i.dj
  br i1 %i.ea, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.ec = load <16 x bfloat>, ptr %i.eb, align 32, !tbaa !20
  %i.ed = fpext fast <16 x bfloat> %i.ec to <16 x float>
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0401 = phi nsz <16 x float> [ %i.ed, %bb.d ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.ee = icmp slt i32 %i.dn, %i.dj
end_hunk_5
