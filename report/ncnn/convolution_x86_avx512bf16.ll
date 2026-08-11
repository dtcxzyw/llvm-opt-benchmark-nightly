inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnn52convolution_transform_kernel_packed_bf16s_avx512bf16ERKNS_3MatERS0_iiii:bb.a
  %vec.epilog.resume.val385 = phi i64 [ %n.vec374, %vec.epilog.iter.check388 ], [ 0, %vector.main.loop.iter.check371 ]
  %i.bpb = getelementptr i8, ptr %.91992.i, i64 %i.bai ; 2 uses
  br label %vec.epilog.vector.body392

vec.epilog.vector.body392:                        ; preds = %vec.epilog.vector.body392, %vec.epilog.ph390
  %index393 = phi i64 [ %vec.epilog.resume.val385, %vec.epilog.ph390 ], [ %index.next396, %vec.epilog.vector.body392 ] ; 3 uses
  %i.bpc = shl i64 %index393, 1
  %next.gep394 = getelementptr i8, ptr %.91992.i, i64 %i.bpc
  %i.bpd = getelementptr inbounds nuw [4 x i8], ptr %.31115.lcssa.i, i64 %index393
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
  %i.bph = add nuw nsw i32 %.411061993.i, 1       ; 2 uses
  %exitcond2399.not.i = icmp eq i32 %i.bph, %2
  br i1 %exitcond2399.not.i, label %._crit_edge1994.split.i, label %iter.check386, !llvm.loop !110

vec.epilog.scalar.ph387:                          ; preds = %vec.epilog.scalar.ph387.preheader, %vec.epilog.scalar.ph387
  %indvars.iv2394.i = phi i64 [ %indvars.iv.next2395.i, %vec.epilog.scalar.ph387 ], [ %indvars.iv2394.i.ph, %vec.epilog.scalar.ph387.preheader ] ; 2 uses
  %.101988.i = phi ptr [ %i.bpm, %vec.epilog.scalar.ph387 ], [ %.101988.i.ph, %vec.epilog.scalar.ph387.preheader ] ; 2 uses
  %i.bpi = getelementptr inbounds nuw [4 x i8], ptr %.31115.lcssa.i, i64 %indvars.iv2394.i
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
  br i1 %or.cond, label %.preheader4375.preheader, label %._crit_edge4385.split

.preheader4375.preheader:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.aw = zext nneg i32 %4 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  %min.iters.check6207 = icmp ult i32 %4, 64
  %i.ax = and i64 %i.aw, 56
  %n.vec = and i64 %i.aw, 2147483584              ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.ay = trunc nuw nsw i64 %n.vec to i32
  %i.az = mul i32 %6, %i.ay
  %i.ba = shl <16 x i32> %broadcast.splat, splat (i32 4) ; 5 uses
  %broadcast.splatinsert6208 = insertelement <16 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat6209 = shufflevector <16 x i32> %broadcast.splatinsert6208, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.bb = mul nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.op = add <16 x i32> %i.ba, %i.ba     ; 2 uses
  %invariant.op6841 = add <16 x i32> %invariant.op, %i.ba ; 2 uses
  %invariant.op6843 = add <16 x i32> %invariant.op6841, %i.ba
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  %min.epilog.iters.check = icmp eq i64 %i.ax, 0
  %n.vec6213 = and i64 %i.aw, 2147483640          ; 4 uses
  %i.bc = trunc nuw nsw i64 %n.vec6213 to i32
  %i.bd = mul i32 %6, %i.bc
  %broadcast.splatinsert6214 = insertelement <8 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat6215 = shufflevector <8 x i32> %broadcast.splatinsert6214, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert6218.a = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat6219.a = shufflevector <8 x i32> %broadcast.splatinsert6218.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.be = mul nsw <8 x i32> %broadcast.splat6219.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bf = shl nsw i32 %6, 3
  %broadcast.splatinsert6221 = insertelement <8 x i32> poison, i32 %i.bf, i64 0
  %broadcast.splat6222 = shufflevector <8 x i32> %broadcast.splatinsert6221, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n6227 = icmp eq i64 %n.vec6213, %i.aw
  br label %iter.check

iter.check:                                       ; preds = %.preheader4375.preheader, %._crit_edge
  %.017034384 = phi i32 [ %13, %._crit_edge ], [ 0, %.preheader4375.preheader ] ; 2 uses
  %.017064383 = phi i32 [ %i.cj, %._crit_edge ], [ 0, %.preheader4375.preheader ] ; 5 uses
  %.017084382 = phi i32 [ %i.ck, %._crit_edge ], [ 0, %.preheader4375.preheader ]
  %i.bg = sext i32 %.017034384 to i64             ; 5 uses
  %13 = add i32 %4, %.017034384                   ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check6207, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = add nsw i64 %n.vec, %i.bg
  %i.bi = add i32 %.017064383, %i.az              ; 3 uses
  %broadcast.splatinsert6210 = insertelement <16 x i32> poison, i32 %.017064383, i64 0
  %broadcast.splat6211 = shufflevector <16 x i32> %broadcast.splatinsert6210, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat6211, %i.bb
  %invariant.gep6842 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.ba
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op6841
  %i.bj = mul nsw <16 x i32> %vec.ind, %broadcast.splat6209
  %i.bk = mul nsw <16 x i32> %step.add, %broadcast.splat6209
  %i.bl = mul nsw <16 x i32> %step.add.2.reass, %broadcast.splat6209
  %i.bm = mul nsw <16 x i32> %step.add.3.reass, %broadcast.splat6209
  %gep = getelementptr [4 x i8], ptr %invariant.gep6842, i64 %index ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bp = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %i.bj, ptr %gep, align 4, !tbaa !113
  store <16 x i32> %i.bk, ptr %i.bn, align 4, !tbaa !113
  store <16 x i32> %i.bl, ptr %i.bo, align 4, !tbaa !113
  store <16 x i32> %i.bm, ptr %i.bp, align 4, !tbaa !113
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op6843
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !120

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !108

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val6212 = phi i32 [ %i.bi, %vec.epilog.iter.check ], [ %.017064383, %vector.main.loop.iter.check ]
  %i.br = add nsw i64 %n.vec6213, %i.bg
  %i.bs = add i32 %.017064383, %i.bd              ; 2 uses
  %broadcast.splatinsert6216 = insertelement <8 x i32> poison, i32 %bc.resume.val6212, i64 0
  %broadcast.splat6217 = shufflevector <8 x i32> %broadcast.splatinsert6216, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction6220 = add nsw <8 x i32> %broadcast.splat6217, %i.be
  %invariant.gep6844 = getelementptr [4 x i8], ptr %.sroa.03778.0, i64 %i.bg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index6223 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next6225, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind6224 = phi <8 x i32> [ %induction6220, %vec.epilog.ph ], [ %vec.ind.next6226, %vec.epilog.vector.body ] ; 2 uses
  %i.bt = mul nsw <8 x i32> %vec.ind6224, %broadcast.splat6215
  %gep6845 = getelementptr [4 x i8], ptr %invariant.gep6844, i64 %index6223
  store <8 x i32> %i.bt, ptr %gep6845, align 4, !tbaa !113
  %index.next6225 = add nuw i64 %index6223, 8     ; 2 uses
  %vec.ind.next6226 = add nsw <8 x i32> %vec.ind6224, %broadcast.splat6222
  %i.bu = icmp eq i64 %index.next6225, %n.vec6213
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !121

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n6227, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bg, %iter.check ], [ %i.bh, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.117074379.ph = phi i32 [ %.017064383, %iter.check ], [ %i.bi, %vec.epilog.iter.check ], [ %i.bs, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge4385.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  %i.bv = load ptr, ptr %3, align 8, !tbaa !9
  store ptr %i.bv, ptr %i.h, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  %i.bw = sdiv i32 %i.ad, 16
  store i32 %i.bw, ptr %i.i, align 4, !tbaa !113
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !124
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.by)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 13, ptr nonnull @_ZN4ncnnL24convolution_packed_bf16sERKNS_3MatERS0_S2_S2_iiiiiiiS2_RKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %0, ptr nonnull %1, ptr nonnull %i.h, ptr nonnull %2, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %11, ptr nonnull %i.e)
  %i.bz = load i32, ptr %i.i, align 4, !tbaa !113
  %i.ca = shl nsw i32 %i.bz, 4                    ; 3 uses
  %i.cb = sub nsw i32 %i.ad, %i.ca                ; 2 uses
  %i.cc = sdiv i32 %i.cb, 8                       ; 3 uses
  store i32 %i.cc, ptr %i.i, align 4, !tbaa !113
  %i.cd = icmp sgt i32 %i.cb, 7
  br i1 %i.cd, label %.noexc2330.lr.ph, label %._crit_edge4602

.noexc2330.lr.ph:                                 ; preds = %._crit_edge4385.split
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ci = sext i32 %i.ca to i64
  %wide.trip.count5494 = zext nneg i32 %i.cc to i64
  br label %.noexc2330

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa6206 = phi i32 [ %i.bs, %vec.epilog.middle.block ], [ %i.bi, %middle.block ], [ %i.cn, %vec.epilog.scalar.ph ]
  %i.cj = add nsw i32 %i.at, %.lcssa6206
  %i.ck = add nuw nsw i32 %.017084382, 1          ; 2 uses
  %exitcond5403.not = icmp eq i32 %i.ck, %5
  br i1 %exitcond5403.not, label %._crit_edge4385.split, label %iter.check, !llvm.loop !127

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.117074379.a = phi i32 [ %i.cn, %vec.epilog.scalar.ph ], [ %.117074379.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cl = mul nsw i32 %.117074379.a, %i.n
  %i.cm = getelementptr inbounds [4 x i8], ptr %.sroa.03778.0, i64 %indvars.iv
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !113
  %indvars.iv.next.a = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cn = add nsw i32 %.117074379.a, %6           ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.a to i32
  %exitcond.not = icmp eq i32 %13, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !128

._crit_edge4602:                                  ; preds = %._crit_edge4600.split, %._crit_edge4385.split
  %i.co = shl nsw i32 %i.cc, 3
  %i.cp = add nsw i32 %i.co, %i.ca                ; 3 uses
  %i.cq = sub nsw i32 %i.ad, %i.cp                ; 2 uses
  %i.cr = sdiv i32 %i.cq, 4                       ; 3 uses
  store i32 %i.cr, ptr %i.i, align 4, !tbaa !113
  %i.cs = icmp sgt i32 %i.cq, 3
  br i1 %i.cs, label %.noexc2328.lr.ph, label %._crit_edge4825

.noexc2328.lr.ph:                                 ; preds = %._crit_edge4602
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.cx = sext i32 %i.cp to i64
  %wide.trip.count5589 = zext nneg i32 %i.cr to i64
  br label %.noexc2328

.noexc2330:                                       ; preds = %.noexc2330.lr.ph, %._crit_edge4600.split
  %indvars.iv5491 = phi i64 [ 0, %.noexc2330.lr.ph ], [ %indvars.iv.next5492, %._crit_edge4600.split ] ; 2 uses
  %i.cy = load i32, ptr %i.m, align 8, !tbaa !115 ; 9 uses
  %i.cz = load i32, ptr %i.o, align 8, !tbaa !116
  %i.da = mul i32 %i.cz, %i.cy                    ; 12 uses
  %i.db = load i32, ptr %i.v, align 4, !tbaa !114 ; 2 uses
  %i.dc = load i32, ptr %i.x, align 8, !tbaa !118 ; 2 uses
  %i.dd = load i32, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  %i.de = icmp sgt i32 %i.dc, 0
  br i1 %i.de, label %.preheader4374.lr.ph, label %._crit_edge4600.split

.preheader4374.lr.ph:                             ; preds = %.noexc2330
  %i.df = shl nuw nsw i64 %indvars.iv5491, 3
  %i.dg = add nsw i64 %i.df, %i.ci                ; 2 uses
  %i.dh = trunc nsw i64 %i.dg to i32              ; 3 uses
  %i.di = icmp sgt i32 %i.db, 0
  %i.dj = sdiv i32 %i.dh, 16
  %i.dk = srem i32 %i.dh, 16
  %i.dl = ashr exact i32 %i.dk, 3
  %i.dm = add nsw i32 %i.dl, %i.dj
  %i.dn = sext i32 %i.dm to i64
  %i.do = icmp sgt i32 %i.da, 15
  %i.dp = icmp eq i32 %i.cy, 16
  %i.dq = icmp eq i32 %i.cy, 8                    ; 2 uses
  %i.dr = icmp eq i32 %i.cy, 4                    ; 3 uses
  %i.ds = icmp eq i32 %i.cy, 1                    ; 3 uses
  %i.dt = load i32, ptr %i.c, align 4
  br i1 %i.di, label %.preheader4374.preheader, label %._crit_edge4600.split

.preheader4374.preheader:                         ; preds = %.preheader4374.lr.ph
  %i.du = load ptr, ptr %1, align 8, !tbaa !9, !noalias !129
  %i.dv = load i64, ptr %i.ae, align 8, !tbaa !18, !noalias !129
  %i.dw = sdiv i32 %i.dh, %i.dd
  %i.dx = sext i32 %i.dw to i64
  %i.dy = mul i64 %i.dv, %i.dx
  %i.dz = load i64, ptr %i.ce, align 8, !tbaa !19, !noalias !129
  %i.ea = mul i64 %i.dy, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ea
  %i.ec = and i32 %i.da, -16
  %wide.trip.count5488 = zext nneg i32 %i.db to i64
  br label %.preheader4374

.preheader4374:                                   ; preds = %.preheader4374.preheader, %._crit_edge4590
  %.017154599 = phi ptr [ %.41719, %._crit_edge4590 ], [ %i.eb, %.preheader4374.preheader ]
  %.017204598 = phi i32 [ %i.ep, %._crit_edge4590 ], [ 0, %.preheader4374.preheader ] ; 2 uses
  %i.ed = load i32, ptr %i.b, align 4
  %i.ee = mul nsw i32 %i.ed, %.017204598
  %i.ef = sext i32 %i.ee to i64                   ; 5 uses
  %i.eg = load i32, ptr %i.a, align 4             ; 2 uses
  %factor.op.mul4592 = mul i32 %i.cy, %i.eg       ; 3 uses
  %i.eh = load i32, ptr %i.f, align 4             ; 5 uses
  %i.ei = icmp sgt i32 %i.eh, 0                   ; 2 uses
  %i.ej = add i32 %i.eh, -1
  %i.ek = zext i32 %i.ej to i64                   ; 2 uses
  %i.el = shl nuw nsw i64 %i.ek, 5
  %i.em = shl nuw nsw i64 %i.ek, 4
  %i.en = sext i32 %i.eg to i64                   ; 2 uses
  %wide.trip.count5470 = zext i32 %i.eh to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count5470, 1
  %i.eo = icmp eq i32 %i.eh, 1
  %unroll_iter = and i64 %wide.trip.count5470, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod6615 = trunc i32 %i.eh to i1
  br label %bb.b

._crit_edge4600.split:                            ; preds = %._crit_edge4590, %.preheader4374.lr.ph, %.noexc2330
  %indvars.iv.next5492 = add nuw nsw i64 %indvars.iv5491, 1 ; 2 uses
  %exitcond5495.not = icmp eq i64 %indvars.iv.next5492, %wide.trip.count5494
  br i1 %exitcond5495.not, label %._crit_edge4602, label %.noexc2330, !llvm.loop !132

._crit_edge4590:                                  ; preds = %.thread4267
  %i.ep = add nuw nsw i32 %.017204598, 1          ; 2 uses
  %exitcond5490.not = icmp eq i32 %i.ep, %i.dc
  br i1 %exitcond5490.not, label %._crit_edge4600.split, label %.preheader4374, !llvm.loop !133

bb.b:                                             ; preds = %.preheader4374, %.thread4267
  %indvars.iv5485 = phi i64 [ 0, %.preheader4374 ], [ %indvars.iv.next5486, %.thread4267 ] ; 6 uses
  %.117164588 = phi ptr [ %.017154599, %.preheader4374 ], [ %.41719, %.thread4267 ] ; 15 uses
  %i.eq = load ptr, ptr %i.h, align 8, !tbaa !122 ; 2 uses
  %.not2173 = icmp eq ptr %i.eq, null
  br i1 %.not2173, label %_ZN4ncnn3MatD2Ev.exit2358, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.dg
  %i.es = load <8 x float>, ptr %i.er, align 1, !tbaa !20
  br label %_ZN4ncnn3MatD2Ev.exit2358

_ZN4ncnn3MatD2Ev.exit2358:                        ; preds = %bb.c, %bb.b
  %.04052 = phi nsz <8 x float> [ zeroinitializer, %bb.b ], [ %i.es, %bb.c ] ; 2 uses
  %i.et = load ptr, ptr %2, align 8, !tbaa !9, !noalias !134
  %i.eu = load i64, ptr %i.cf, align 8, !tbaa !18, !noalias !134
  %i.ev = mul i64 %i.eu, %i.dn
  %i.ew = load i64, ptr %i.cg, align 8, !tbaa !19, !noalias !134
  %i.ex = mul i64 %i.ev, %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ex ; 2 uses
  br i1 %i.do, label %_ZN4ncnn3MatD2Ev.exit2357.lr.ph, label %.preheader4373

_ZN4ncnn3MatD2Ev.exit2357.lr.ph:                  ; preds = %_ZN4ncnn3MatD2Ev.exit2358
  %i.ez = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !137
  %i.fa = load ptr, ptr %0, align 8, !tbaa !9, !noalias !137
  %i.fb = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !137
  %i.fc = load i64, ptr %i.ch, align 8, !tbaa !19, !noalias !137 ; 2 uses
  %factor.op.mul = mul i64 %i.fb, %i.fc
  %i.fd = sext i32 %i.ez to i64
  %i.fe = mul i64 %i.fc, %i.fd
  %i.ff = mul i64 %i.fe, %i.ef
  %invariant.gep = getelementptr i8, ptr %i.fa, i64 %i.ff
  %i.fg = trunc nuw nsw i64 %indvars.iv5485 to i32
  %.reass4593 = mul i32 %factor.op.mul4592, %i.fg
  %i.fh = sext i32 %.reass4593 to i64
  %invariant.gep4447 = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.fh
  %i.fi = load i32, ptr %i.f, align 4             ; 6 uses
  %i.fj = icmp sgt i32 %i.fi, 0                   ; 4 uses
  %i.fk = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.fl = load i64, ptr %i.d, align 8             ; 17 uses
  %.idx2234 = shl i64 %i.fl, 2                    ; 2 uses
  %.idx2235 = mul i64 %i.fl, 6                    ; 2 uses
  %.idx2238 = shl i64 %i.fl, 3
  %.idx2239 = mul i64 %i.fl, 10
  %.idx2240 = mul i64 %i.fl, 12
  %.idx2241 = mul i64 %i.fl, 14
  %.idx2242 = shl i64 %i.fl, 4
  %.idx2243 = mul i64 %i.fl, 18
  %.idx2244 = mul i64 %i.fl, 20
  %.idx2245 = mul i64 %i.fl, 22
  %.idx2246 = mul i64 %i.fl, 24
  %.idx2247 = mul i64 %i.fl, 26
  %.idx2248 = mul i64 %i.fl, 28
  %.idx2249 = mul i64 %i.fl, 30
  %i.fm = add i32 %i.fi, -1
  %i.fn = zext i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 8                ; 4 uses
  %wide.trip.count5428 = zext nneg i32 %i.fi to i64
  %wide.trip.count5421 = zext nneg i32 %i.fi to i64
  %wide.trip.count5414 = zext nneg i32 %i.fi to i64
  %wide.trip.count = zext nneg i32 %i.fi to i64
  br label %_ZN4ncnn3MatD2Ev.exit2357

.preheader4373:                                   ; preds = %.loopexit4365, %_ZN4ncnn3MatD2Ev.exit2358
  %.04103.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.84111, %.loopexit4365 ] ; 2 uses
  %.04082.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.84090, %.loopexit4365 ] ; 2 uses
  %.04059.lcssa = phi <8 x float> [ zeroinitializer, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.84067, %.loopexit4365 ] ; 2 uses
  %.14053.lcssa = phi <8 x float> [ %.04052, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.9, %.loopexit4365 ] ; 2 uses
  %.01748.lcssa = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %i.ec, %.loopexit4365 ] ; 3 uses
  %.01723.lcssa = phi ptr [ %i.ey, %_ZN4ncnn3MatD2Ev.exit2358 ], [ %.81731, %.loopexit4365 ] ; 2 uses
  %i.fp = or disjoint i32 %.01748.lcssa, 7
  %i.fq = icmp slt i32 %i.fp, %i.da
  br i1 %i.fq, label %_ZN4ncnn3MatD2Ev.exit2356.lr.ph, label %.preheader4372

_ZN4ncnn3MatD2Ev.exit2356.lr.ph:                  ; preds = %.preheader4373
  %i.fr = load i32, ptr %i.k, align 4, !tbaa !114, !noalias !140
  %i.fs = load ptr, ptr %0, align 8, !tbaa !9, !noalias !140
  %i.ft = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !140
  %i.fu = load i64, ptr %i.ch, align 8, !tbaa !19, !noalias !140 ; 2 uses
  %factor.op.mul4498 = mul i64 %i.ft, %i.fu
  %i.fv = sext i32 %i.fr to i64
  %i.fw = mul i64 %i.fu, %i.fv
  %i.fx = mul i64 %i.fw, %i.ef
  %invariant.gep4500 = getelementptr i8, ptr %i.fs, i64 %i.fx
  %i.fy = trunc nuw nsw i64 %indvars.iv5485 to i32
  %.reass4595 = mul i32 %factor.op.mul4592, %i.fy
  %i.fz = sext i32 %.reass4595 to i64
  %invariant.gep4501 = getelementptr [2 x i8], ptr %invariant.gep4500, i64 %i.fz
  %i.ga = load i32, ptr %i.f, align 4             ; 5 uses
  %i.gb = icmp sgt i32 %i.ga, 0                   ; 3 uses
  %i.gc = load ptr, ptr %i.g, align 8             ; 3 uses
  %i.gd = load i64, ptr %i.d, align 8             ; 8 uses
  %.idx2200 = shl i64 %i.gd, 2
  %.idx2201 = mul i64 %i.gd, 6
  %.idx2202 = shl i64 %i.gd, 3
  %.idx2203 = mul i64 %i.gd, 10
  %.idx2204 = mul i64 %i.gd, 12
  %.idx2205 = mul i64 %i.gd, 14
  %i.ge = add i32 %i.ga, -1
  %i.gf = zext i32 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 7                ; 3 uses
  %wide.trip.count5449 = zext nneg i32 %i.ga to i64
  %wide.trip.count5442 = zext nneg i32 %i.ga to i64
  %wide.trip.count5435 = zext nneg i32 %i.ga to i64
  br label %_ZN4ncnn3MatD2Ev.exit2356
end_hunk_0
