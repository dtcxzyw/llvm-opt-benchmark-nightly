Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512vnni?download=true
inline.NumInlined: 75
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 98
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"class.ncnn::Mat" = type { ptr, ptr, i64, i32, ptr, i32, i32, i32, i32, i32, i64 }

$__clang_call_terminate = comdat any

@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn34convolution_packed_int8_avx512vnniERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %9) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %9) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 44 uses
  %i.b = alloca i32, align 4                      ; 44 uses
  %i.c = alloca i32, align 4                      ; 28 uses
  %i.d = alloca i32, align 4                      ; 24 uses
  %i.e = alloca i32, align 4                      ; 12 uses
  %i.f = alloca i32, align 4                      ; 46 uses
  %i.g = alloca ptr, align 8                      ; 46 uses
  %i.h = alloca i32, align 4                      ; 11 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %7, ptr %i.a, align 4, !tbaa !9
  store i32 %8, ptr %i.b, align 4, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 49 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !16   ; 6 uses
  store i32 %i.m, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17
  %i.p = mul nsw i32 %i.o, %i.m
  store i32 %i.p, ptr %i.d, align 4, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 52 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !18
  %i.s = sext i32 %i.m to i64
  %i.t = mul i64 %i.r, %i.s                       ; 153 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !10   ; 15 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !16   ; 2 uses
  store i32 %i.z, ptr %i.e, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17
  %i.ac = mul nsw i32 %i.ab, %i.z                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.ad = mul nsw i32 %4, %3                      ; 4 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !9
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = icmp slt i32 %i.ad, 0
  br i1 %i.af, label %.noexc4419, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc4419:                                       ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #24
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc4420

.noexc4420:                                       ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = shl nuw nsw i64 %i.ae, 2
  %i.ah = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #25 ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !9
  %i.aj = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc4420
  %i.al = getelementptr i8, ptr %i.ah, i64 4
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.al, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc4420, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.10.0 = phi ptr [ %i.ai, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ai, %.noexc4420 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ]
  %.sroa.07417.0 = phi ptr [ %i.ah, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ah, %.noexc4420 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store ptr %.sroa.07417.0, ptr %i.g, align 8, !tbaa !20
  %i.am = mul nsw i32 %i.k, %6
  %i.an = mul nsw i32 %5, %3
  %i.ao = sub i32 %i.am, %i.an
  %i.ap = icmp sgt i32 %4, 0
  %i.aq = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.ap, %i.aq
  br i1 %or.cond, label %.preheader7721.preheader, label %._crit_edge7839.split

.preheader7721.preheader:                         ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.ar = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %min.iters.check11149 = icmp ult i32 %3, 64
  %i.as = and i64 %i.ar, 56
  %n.vec = and i64 %i.ar, 2147483584              ; 5 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer ; 2 uses
  %i.at = trunc nuw nsw i64 %n.vec to i32
  %i.au = mul i32 %5, %i.at
  %i.av = shl <16 x i32> %broadcast.splat, splat (i32 4) ; 5 uses
  %broadcast.splatinsert11150 = insertelement <16 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat11151 = shufflevector <16 x i32> %broadcast.splatinsert11150, <16 x i32> poison, <16 x i32> zeroinitializer ; 4 uses
  %i.aw = mul nsw <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %invariant.op = add <16 x i32> %i.av, %i.av     ; 2 uses
  %invariant.op12446 = add <16 x i32> %invariant.op, %i.av ; 2 uses
  %invariant.op12448 = add <16 x i32> %invariant.op12446, %i.av
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  %n.vec11155 = and i64 %i.ar, 2147483640         ; 4 uses
  %i.ax = trunc nuw nsw i64 %n.vec11155 to i32
  %i.ay = mul i32 %5, %i.ax
  %broadcast.splatinsert11156 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat11157 = shufflevector <8 x i32> %broadcast.splatinsert11156, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert11160.a = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat11161.a = shufflevector <8 x i32> %broadcast.splatinsert11160.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.az = mul nsw <8 x i32> %broadcast.splat11161.a, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ba = shl nsw i32 %5, 3
  %broadcast.splatinsert11163 = insertelement <8 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat11164 = shufflevector <8 x i32> %broadcast.splatinsert11163, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n11169 = icmp eq i64 %n.vec11155, %i.ar
  br label %iter.check

iter.check:                                       ; preds = %.preheader7721.preheader, %._crit_edge
  %.027187838 = phi i32 [ %i.bc, %._crit_edge ], [ 0, %.preheader7721.preheader ] ; 2 uses
  %.027227837 = phi i32 [ %i.ce, %._crit_edge ], [ 0, %.preheader7721.preheader ] ; 5 uses
  %.027247836 = phi i32 [ %i.cf, %._crit_edge ], [ 0, %.preheader7721.preheader ]
  %i.bb = sext i32 %.027187838 to i64             ; 5 uses
  %i.bc = add i32 %3, %.027187838                 ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check11149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bd = add nsw i64 %n.vec, %i.bb
  %i.be = add i32 %.027227837, %i.au              ; 3 uses
  %broadcast.splatinsert11152 = insertelement <16 x i32> poison, i32 %.027227837, i64 0
  %broadcast.splat11153 = shufflevector <16 x i32> %broadcast.splatinsert11152, <16 x i32> poison, <16 x i32> zeroinitializer
  %induction = add nsw <16 x i32> %broadcast.splat11153, %i.aw
  %invariant.gep12447 = getelementptr [4 x i8], ptr %.sroa.07417.0, i64 %i.bb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <16 x i32> %vec.ind, %i.av
  %step.add.2.reass = add <16 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <16 x i32> %vec.ind, %invariant.op12446
  %i.bf = mul nsw <16 x i32> %broadcast.splat11151, %vec.ind
  %i.bg = mul nsw <16 x i32> %broadcast.splat11151, %step.add
  %i.bh = mul nsw <16 x i32> %broadcast.splat11151, %step.add.2.reass
  %i.bi = mul nsw <16 x i32> %broadcast.splat11151, %step.add.3.reass
  %gep = getelementptr [4 x i8], ptr %invariant.gep12447, i64 %index ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bk = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 192
  store <16 x i32> %i.bf, ptr %gep, align 4, !tbaa !9
  store <16 x i32> %i.bg, ptr %i.bj, align 4, !tbaa !9
  store <16 x i32> %i.bh, ptr %i.bk, align 4, !tbaa !9
  store <16 x i32> %i.bi, ptr %i.bl, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %vec.ind.next.reass = add <16 x i32> %vec.ind, %invariant.op12448
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val11154 = phi i32 [ %i.be, %vec.epilog.iter.check ], [ %.027227837, %vector.main.loop.iter.check ]
  %i.bn = add nsw i64 %n.vec11155, %i.bb
  %i.bo = add i32 %.027227837, %i.ay              ; 2 uses
  %broadcast.splatinsert11158 = insertelement <8 x i32> poison, i32 %bc.resume.val11154, i64 0
  %broadcast.splat11159 = shufflevector <8 x i32> %broadcast.splatinsert11158, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction11162 = add nsw <8 x i32> %broadcast.splat11159, %i.az
  %invariant.gep12449 = getelementptr [4 x i8], ptr %.sroa.07417.0, i64 %i.bb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11167, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind11166 = phi <8 x i32> [ %induction11162, %vec.epilog.ph ], [ %vec.ind.next11168, %vec.epilog.vector.body ] ; 2 uses
  %i.bp = mul nsw <8 x i32> %broadcast.splat11157, %vec.ind11166
  %gep12450 = getelementptr [4 x i8], ptr %invariant.gep12449, i64 %index11165
  store <8 x i32> %i.bp, ptr %gep12450, align 4, !tbaa !9
  %index.next11167 = add nuw i64 %index11165, 8   ; 2 uses
  %vec.ind.next11168 = add nsw <8 x i32> %vec.ind11166, %broadcast.splat11164
  %i.bq = icmp eq i64 %index.next11167, %n.vec11155
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n11169, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.bb, %iter.check ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bn, %vec.epilog.middle.block ]
  %.127237833.ph = phi i32 [ %.027227837, %iter.check ], [ %i.be, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge7839.split:                            ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.br = sdiv i32 %i.ac, 16
  store i32 %i.br, ptr %i.h, align 4, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !27
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.i, i32 %i.bt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %1, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull %2, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.bu = load i32, ptr %i.h, align 4, !tbaa !9
  %i.bv = shl nsw i32 %i.bu, 4                    ; 3 uses
  %i.bw = sub nsw i32 %i.ac, %i.bv                ; 2 uses
  %i.bx = sdiv i32 %i.bw, 8                       ; 2 uses
  store i32 %i.bx, ptr %i.h, align 4, !tbaa !9
  %i.by = icmp sgt i32 %i.bw, 7
  br i1 %i.by, label %.noexc3272.lr.ph, label %._crit_edge8247

.noexc3272.lr.ph:                                 ; preds = %._crit_edge7839.split
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  br label %.noexc3272

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa11148 = phi i32 [ %i.bo, %vec.epilog.middle.block ], [ %i.be, %middle.block ], [ %i.ci, %vec.epilog.scalar.ph ]
  %i.ce = add nsw i32 %i.ao, %.lcssa11148
  %i.cf = add nuw nsw i32 %.027247836, 1          ; 2 uses
  %exitcond9964.not = icmp eq i32 %i.cf, %4
  br i1 %exitcond9964.not, label %._crit_edge7839.split, label %iter.check, !llvm.loop !30

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.127237833 = phi i32 [ %i.ci, %vec.epilog.scalar.ph ], [ %.127237833.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cg = mul nsw i32 %i.m, %.127237833
  %i.ch = getelementptr inbounds [4 x i8], ptr %.sroa.07417.0, i64 %indvars.iv
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !9
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ci = add nsw i32 %.127237833, %5             ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.bc, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !31

._crit_edge8247:                                  ; preds = %._crit_edge8245, %._crit_edge7839.split
  %.lcssa7831 = phi i32 [ %i.bx, %._crit_edge7839.split ], [ %i.beq, %._crit_edge8245 ]
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.mfd = load i8, ptr %i.maj, align 1, !tbaa !44
  %i.mfe = load i8, ptr %i.mal, align 1, !tbaa !44
  %i.mff = load i8, ptr %i.man, align 1, !tbaa !44
  %i.mfg = load i8, ptr %i.map, align 1, !tbaa !44
  %i.mfh = load i8, ptr %i.mar, align 1, !tbaa !44
  %i.mfi = load i8, ptr %i.mat, align 1, !tbaa !44
  %i.mfj = load i8, ptr %i.mav, align 1, !tbaa !44
  %i.mfk = load i8, ptr %i.max, align 1, !tbaa !44
  %i.mfl = load i8, ptr %i.maz, align 1, !tbaa !44
  %i.mfm = load i8, ptr %i.mbb, align 1, !tbaa !44
  %i.mfn = load i8, ptr %i.mbd, align 1, !tbaa !44
  %i.mfo = load i8, ptr %i.mbf, align 1, !tbaa !44
  %i.mfp = load i8, ptr %i.mbh, align 1, !tbaa !44
  %i.mfq = insertelement <16 x i8> poison, i8 %i.mfa, i64 0
  %i.mfr = insertelement <16 x i8> %i.mfq, i8 %i.mfb, i64 1
  %i.mfs = insertelement <16 x i8> %i.mfr, i8 %i.mfc, i64 2
  %i.mft = insertelement <16 x i8> %i.mfs, i8 %i.mfd, i64 3
  %i.mfu = insertelement <16 x i8> %i.mft, i8 %i.mfe, i64 4
  %i.mfv = insertelement <16 x i8> %i.mfu, i8 %i.mff, i64 5
  %i.mfw = insertelement <16 x i8> %i.mfv, i8 %i.mfg, i64 6
  %i.mfx = insertelement <16 x i8> %i.mfw, i8 %i.mfh, i64 7
  %i.mfy = insertelement <16 x i8> %i.mfx, i8 %i.mfi, i64 8
  %i.mfz = insertelement <16 x i8> %i.mfy, i8 %i.mfj, i64 9
  %i.mga = insertelement <16 x i8> %i.mfz, i8 %i.mfk, i64 10
  %i.mgb = insertelement <16 x i8> %i.mga, i8 %i.mfl, i64 11
  %i.mgc = insertelement <16 x i8> %i.mgb, i8 %i.mfm, i64 12
  %i.mgd = insertelement <16 x i8> %i.mgc, i8 %i.mfn, i64 13
  %i.mge = insertelement <16 x i8> %i.mgd, i8 %i.mfo, i64 14
  %i.mgf = insertelement <16 x i8> %i.mge, i8 %i.mfp, i64 15
  %i.mgg = sext <16 x i8> %i.mcn to <16 x i32>
  %i.mgh = sext <16 x i8> %i.mdt to <16 x i32>
  %i.mgi = sext <16 x i8> %i.mez to <16 x i32>
  %i.mgj = sext <16 x i8> %i.mgf to <16 x i32>
  %i.mgk = getelementptr i8, ptr %next.gep11434, i64 16
  %i.mgl = getelementptr i8, ptr %next.gep11434, i64 32
  %i.mgm = getelementptr i8, ptr %next.gep11434, i64 48
  %wide.load11439 = load <16 x i8>, ptr %next.gep11434, align 1, !tbaa !44
  %wide.load11440 = load <16 x i8>, ptr %i.mgk, align 1, !tbaa !44
  %wide.load11441 = load <16 x i8>, ptr %i.mgl, align 1, !tbaa !44
  %wide.load11442 = load <16 x i8>, ptr %i.mgm, align 1, !tbaa !44
  %i.mgn = sext <16 x i8> %wide.load11439 to <16 x i32>
  %i.mgo = sext <16 x i8> %wide.load11440 to <16 x i32>
  %i.mgp = sext <16 x i8> %wide.load11441 to <16 x i32>
  %i.mgq = sext <16 x i8> %wide.load11442 to <16 x i32>
  %i.mgr = mul nsw <16 x i32> %i.mgn, %i.mgg
  %i.mgs = mul nsw <16 x i32> %i.mgo, %i.mgh
  %i.mgt = mul nsw <16 x i32> %i.mgp, %i.mgi
  %i.mgu = mul nsw <16 x i32> %i.mgq, %i.mgj
  %i.mgv = add <16 x i32> %i.mgr, %vec.phi11430   ; 2 uses
  %i.mgw = add <16 x i32> %i.mgs, %vec.phi11431   ; 2 uses
  %i.mgx = add <16 x i32> %i.mgt, %vec.phi11432   ; 2 uses
  %i.mgy = add <16 x i32> %i.mgu, %vec.phi11433   ; 2 uses
  %index.next11443 = add nuw i64 %index11429, 64  ; 2 uses
  %i.mgz = icmp eq i64 %index.next11443, %n.vec11427
  br i1 %i.mgz, label %middle.block11444, label %vector.body11428, !llvm.loop !351

middle.block11444:                                ; preds = %vector.body11428
  %bin.rdx11445 = add <16 x i32> %i.mgw, %i.mgv
  %bin.rdx11446 = add <16 x i32> %i.mgx, %bin.rdx11445
  %bin.rdx11447 = add <16 x i32> %i.mgy, %bin.rdx11446
  %i.mha = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %bin.rdx11447) ; 3 uses
  br i1 %cmp.n11448, label %._crit_edge9561.us, label %vec.epilog.iter.check11453

vec.epilog.iter.check11453:                       ; preds = %middle.block11444
  br i1 %min.epilog.iters.check11454, label %vec.epilog.scalar.ph11452.preheader, label %vec.epilog.ph11455, !prof !352

vec.epilog.ph11455:                               ; preds = %vector.main.loop.iter.check11424, %vec.epilog.iter.check11453
  %vec.epilog.resume.val11449 = phi i64 [ %n.vec11427, %vec.epilog.iter.check11453 ], [ 0, %vector.main.loop.iter.check11424 ]
  %bc.merge.rdx11450 = phi i32 [ %i.mha, %vec.epilog.iter.check11453 ], [ %.225209564.us, %vector.main.loop.iter.check11424 ]
  %i.mhb = getelementptr i8, ptr %.69565.us, i64 %n.vec11456
  %i.mhc = insertelement <16 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx11450, i64 0
  br label %vec.epilog.vector.body11457

vec.epilog.vector.body11457:                      ; preds = %vec.epilog.vector.body11457, %vec.epilog.ph11455
  %index11458 = phi i64 [ %vec.epilog.resume.val11449, %vec.epilog.ph11455 ], [ %index.next11463, %vec.epilog.vector.body11457 ] ; 3 uses
  %vec.phi11459 = phi <16 x i32> [ %i.mhc, %vec.epilog.ph11455 ], [ %i.mju, %vec.epilog.vector.body11457 ]
  %next.gep11460 = getelementptr i8, ptr %.69565.us, i64 %index11458
  %i.mhd = getelementptr inbounds nuw [4 x i8], ptr %i.lvw, i64 %index11458
  %wide.load11461 = load <16 x i32>, ptr %i.mhd, align 4, !tbaa !9
  %i.mhe = sext <16 x i32> %wide.load11461 to <16 x i64> ; 16 uses
  %i.mhf = extractelement <16 x i64> %i.mhe, i64 0
  %i.mhg = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhf
  %i.mhh = extractelement <16 x i64> %i.mhe, i64 1
  %i.mhi = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhh
  %i.mhj = extractelement <16 x i64> %i.mhe, i64 2
  %i.mhk = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhj
  %i.mhl = extractelement <16 x i64> %i.mhe, i64 3
  %i.mhm = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhl
  %i.mhn = extractelement <16 x i64> %i.mhe, i64 4
  %i.mho = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhn
  %i.mhp = extractelement <16 x i64> %i.mhe, i64 5
  %i.mhq = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhp
  %i.mhr = extractelement <16 x i64> %i.mhe, i64 6
  %i.mhs = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhr
  %i.mht = extractelement <16 x i64> %i.mhe, i64 7
  %i.mhu = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mht
  %i.mhv = extractelement <16 x i64> %i.mhe, i64 8
  %i.mhw = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhv
  %i.mhx = extractelement <16 x i64> %i.mhe, i64 9
  %i.mhy = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhx
  %i.mhz = extractelement <16 x i64> %i.mhe, i64 10
  %i.mia = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mhz
  %i.mib = extractelement <16 x i64> %i.mhe, i64 11
  %i.mic = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mib
  %i.mid = extractelement <16 x i64> %i.mhe, i64 12
  %i.mie = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mid
  %i.mif = extractelement <16 x i64> %i.mhe, i64 13
  %i.mig = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mif
  %i.mih = extractelement <16 x i64> %i.mhe, i64 14
  %i.mii = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mih
  %i.mij = extractelement <16 x i64> %i.mhe, i64 15
  %i.mik = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mij
  %i.mil = load i8, ptr %i.mhg, align 1, !tbaa !44
  %i.mim = load i8, ptr %i.mhi, align 1, !tbaa !44
  %i.min = load i8, ptr %i.mhk, align 1, !tbaa !44
  %i.mio = load i8, ptr %i.mhm, align 1, !tbaa !44
  %i.mip = load i8, ptr %i.mho, align 1, !tbaa !44
  %i.miq = load i8, ptr %i.mhq, align 1, !tbaa !44
  %i.mir = load i8, ptr %i.mhs, align 1, !tbaa !44
  %i.mis = load i8, ptr %i.mhu, align 1, !tbaa !44
  %i.mit = load i8, ptr %i.mhw, align 1, !tbaa !44
  %i.miu = load i8, ptr %i.mhy, align 1, !tbaa !44
  %i.miv = load i8, ptr %i.mia, align 1, !tbaa !44
  %i.miw = load i8, ptr %i.mic, align 1, !tbaa !44
  %i.mix = load i8, ptr %i.mie, align 1, !tbaa !44
  %i.miy = load i8, ptr %i.mig, align 1, !tbaa !44
  %i.miz = load i8, ptr %i.mii, align 1, !tbaa !44
  %i.mja = load i8, ptr %i.mik, align 1, !tbaa !44
  %i.mjb = insertelement <16 x i8> poison, i8 %i.mil, i64 0
  %i.mjc = insertelement <16 x i8> %i.mjb, i8 %i.mim, i64 1
  %i.mjd = insertelement <16 x i8> %i.mjc, i8 %i.min, i64 2
  %i.mje = insertelement <16 x i8> %i.mjd, i8 %i.mio, i64 3
  %i.mjf = insertelement <16 x i8> %i.mje, i8 %i.mip, i64 4
  %i.mjg = insertelement <16 x i8> %i.mjf, i8 %i.miq, i64 5
  %i.mjh = insertelement <16 x i8> %i.mjg, i8 %i.mir, i64 6
  %i.mji = insertelement <16 x i8> %i.mjh, i8 %i.mis, i64 7
  %i.mjj = insertelement <16 x i8> %i.mji, i8 %i.mit, i64 8
  %i.mjk = insertelement <16 x i8> %i.mjj, i8 %i.miu, i64 9
  %i.mjl = insertelement <16 x i8> %i.mjk, i8 %i.miv, i64 10
  %i.mjm = insertelement <16 x i8> %i.mjl, i8 %i.miw, i64 11
  %i.mjn = insertelement <16 x i8> %i.mjm, i8 %i.mix, i64 12
  %i.mjo = insertelement <16 x i8> %i.mjn, i8 %i.miy, i64 13
  %i.mjp = insertelement <16 x i8> %i.mjo, i8 %i.miz, i64 14
  %i.mjq = insertelement <16 x i8> %i.mjp, i8 %i.mja, i64 15
  %i.mjr = sext <16 x i8> %i.mjq to <16 x i32>
  %wide.load11462 = load <16 x i8>, ptr %next.gep11460, align 1, !tbaa !44
  %i.mjs = sext <16 x i8> %wide.load11462 to <16 x i32>
  %i.mjt = mul nsw <16 x i32> %i.mjs, %i.mjr
  %i.mju = add <16 x i32> %i.mjt, %vec.phi11459   ; 2 uses
  %index.next11463 = add nuw i64 %index11458, 16  ; 2 uses
  %i.mjv = icmp eq i64 %index.next11463, %n.vec11456
  br i1 %i.mjv, label %vec.epilog.middle.block11464, label %vec.epilog.vector.body11457, !llvm.loop !353

vec.epilog.middle.block11464:                     ; preds = %vec.epilog.vector.body11457
  %i.mjw = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.mju) ; 2 uses
  br i1 %cmp.n11465, label %._crit_edge9561.us, label %vec.epilog.scalar.ph11452.preheader

vec.epilog.scalar.ph11452.preheader:              ; preds = %iter.check11451, %vec.epilog.iter.check11453, %vec.epilog.middle.block11464
  %indvars.iv10549.ph = phi i64 [ 0, %iter.check11451 ], [ %n.vec11427, %vec.epilog.iter.check11453 ], [ %n.vec11456, %vec.epilog.middle.block11464 ]
  %.79558.us.ph = phi ptr [ %.69565.us, %iter.check11451 ], [ %i.lwa, %vec.epilog.iter.check11453 ], [ %i.mhb, %vec.epilog.middle.block11464 ]
  %.325219557.us.ph = phi i32 [ %.225209564.us, %iter.check11451 ], [ %i.mha, %vec.epilog.iter.check11453 ], [ %i.mjw, %vec.epilog.middle.block11464 ]
  br label %vec.epilog.scalar.ph11452

vec.epilog.scalar.ph11452:                        ; preds = %vec.epilog.scalar.ph11452.preheader, %vec.epilog.scalar.ph11452
  %indvars.iv10549 = phi i64 [ %indvars.iv.next10550, %vec.epilog.scalar.ph11452 ], [ %indvars.iv10549.ph, %vec.epilog.scalar.ph11452.preheader ] ; 2 uses
  %.79558.us = phi ptr [ %i.mkh, %vec.epilog.scalar.ph11452 ], [ %.79558.us.ph, %vec.epilog.scalar.ph11452.preheader ] ; 2 uses
  %.325219557.us = phi i32 [ %i.mkg, %vec.epilog.scalar.ph11452 ], [ %.325219557.us.ph, %vec.epilog.scalar.ph11452.preheader ]
  %i.mjx = getelementptr inbounds nuw [4 x i8], ptr %i.lvw, i64 %indvars.iv10549
  %i.mjy = load i32, ptr %i.mjx, align 4, !tbaa !9
  %i.mjz = sext i32 %i.mjy to i64
  %i.mka = getelementptr inbounds i8, ptr %gep9573.us, i64 %i.mjz
  %i.mkb = load i8, ptr %i.mka, align 1, !tbaa !44
  %i.mkc = sext i8 %i.mkb to i32
  %i.mkd = load i8, ptr %.79558.us, align 1, !tbaa !44
  %i.mke = sext i8 %i.mkd to i32
  %i.mkf = mul nsw i32 %i.mke, %i.mkc
  %i.mkg = add nsw i32 %i.mkf, %.325219557.us     ; 2 uses
  %i.mkh = getelementptr inbounds nuw i8, ptr %.79558.us, i64 1
  %indvars.iv.next10550 = add nuw nsw i64 %indvars.iv10549, 1 ; 2 uses
  %exitcond10555.not = icmp eq i64 %indvars.iv.next10550, %wide.trip.count10554
  br i1 %exitcond10555.not, label %._crit_edge9561.us, label %vec.epilog.scalar.ph11452, !llvm.loop !354

._crit_edge9561.us:                               ; preds = %vec.epilog.scalar.ph11452, %vec.epilog.middle.block11464, %middle.block11444
  %.lcssa10980 = phi i32 [ %i.mjw, %vec.epilog.middle.block11464 ], [ %i.mha, %middle.block11444 ], [ %i.mkg, %vec.epilog.scalar.ph11452 ] ; 2 uses
  %i.mki = getelementptr i8, ptr %.69565.us, i64 %i.lvy
  %indvars.iv.next10557 = add nuw nsw i64 %indvars.iv10556, 1 ; 2 uses
  %i.mkj = trunc nuw i64 %indvars.iv.next10557 to i32
  %i.mkk = icmp sgt i32 %i.kxk, %i.mkj
  br i1 %i.mkk, label %iter.check11451, label %._crit_edge9567, !llvm.loop !355

._crit_edge9567:                                  ; preds = %._crit_edge9561.us, %.noexc3402.lr.ph, %.preheader
  %.22520.lcssa = phi i32 [ %.02518.lcssa, %.preheader ], [ %.02518.lcssa, %.noexc3402.lr.ph ], [ %.lcssa10980, %._crit_edge9561.us ]
  store i32 %.22520.lcssa, ptr %.227909575, align 4, !tbaa !9
  %i.mkl = getelementptr inbounds nuw i8, ptr %.227909575, i64 4
  %i.mkm = add nuw nsw i32 %.227879576, 1         ; 2 uses
  %exitcond10559.not = icmp eq i32 %i.mkm, %i.dny
  br i1 %exitcond10559.not, label %._crit_edge9577, label %.noexc3409, !llvm.loop !356

._crit_edge9577:                                  ; preds = %._crit_edge9567, %.preheader7702
  %indvars.iv.next10561 = add nsw i64 %indvars.iv10560, 1 ; 2 uses
  %10 = icmp slt i64 %indvars.iv.next10561, %i.dol
  br i1 %10, label %.noexc, label %._crit_edge9579, !llvm.loop !357
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.at

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  %i.h = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !9
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !9
  %i.k = load i32, ptr %i.a, align 4, !tbaa !9    ; 2 uses
  %.not2585 = icmp sgt i32 %i.k, %i.j
  br i1 %.not2585, label %._crit_edge2587, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  %i.u = sext i32 %i.k to i64
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge2584
  %indvars.iv2796 = phi i64 [ %i.u, %.noexc.lr.ph ], [ %indvars.iv.next2797, %._crit_edge2584 ] ; 6 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !10   ; 15 uses
  %i.w = load i32, ptr %i.m, align 8, !tbaa !19
  %i.x = load i64, ptr %i.n, align 8, !tbaa !18
  %i.y = load i32, ptr %5, align 4, !tbaa !9
  %i.z = sext i32 %i.y to i64
  %i.aa = mul i64 %i.x, %i.z                      ; 19 uses
  %i.ab = load i64, ptr %i.o, align 8, !tbaa !18  ; 2 uses
  %i.ac = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = mul i64 %i.ab, %i.ad                    ; 15 uses
  %indvars.iv2796.tr = trunc i64 %indvars.iv2796 to i32
  %i.af = shl i32 %indvars.iv2796.tr, 4
  %i.ag = sdiv i32 %i.af, %i.ac
  %i.ah = load ptr, ptr %3, align 8, !tbaa !32, !noalias !358
  %i.ai = sext i32 %i.ag to i64
  %i.aj = mul i64 %i.ab, %i.ai
  %i.ak = load i64, ptr %i.p, align 8, !tbaa !36, !noalias !358
  %i.al = mul i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.al ; 2 uses
  %i.an = mul nsw i32 %i.w, %i.v                  ; 6 uses
  %i.ao = icmp sgt i32 %i.an, 3
  br i1 %i.ao, label %.noexc889.lr.ph, label %.preheader2147

.noexc889.lr.ph:                                  ; preds = %.noexc
  %i.ap = trunc i64 %i.aa to i32                  ; 2 uses
  %i.aq = insertelement <16 x i32> poison, i32 %i.ap, i64 0
  %i.ar = shufflevector <16 x i32> %i.aq, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.as = mul <16 x i32> %i.ar, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  %i.at = insertelement <8 x i32> poison, i32 %i.ap, i64 0
  %i.au = shufflevector <8 x i32> %i.at, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.av = mul <8 x i32> %i.au, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 4 uses
  %.idx797 = shl i64 %i.ae, 3
  %.idx798 = mul i64 %i.ae, 12
  %i.aw = trunc i64 %i.ae to i32
  %i.ax = insertelement <16 x i32> poison, i32 %i.aw, i64 0
  %i.ay = shufflevector <16 x i32> %i.ax, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.az = mul <16 x i32> %i.ay, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 4 uses
  br label %.noexc889

.preheader2147:                                   ; preds = %bb.q, %.noexc
  %.0769.lcssa = phi i32 [ 0, %.noexc ], [ %i.ace, %bb.q ] ; 3 uses
  %.0761.lcssa = phi ptr [ %i.am, %.noexc ], [ %.4765, %bb.q ] ; 2 uses
  %i.ba = or disjoint i32 %.0769.lcssa, 1         ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.an
  br i1 %i.bb, label %.noexc855.lr.ph, label %.preheader2146

.noexc855.lr.ph:                                  ; preds = %.preheader2147
  %i.bc = trunc i64 %i.aa to i32                  ; 2 uses
  %i.bd = insertelement <16 x i32> poison, i32 %i.bc, i64 0
  %i.be = shufflevector <16 x i32> %i.bd, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bf = mul <16 x i32> %i.be, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bg = insertelement <8 x i32> poison, i32 %i.bc, i64 0
  %i.bh = shufflevector <8 x i32> %i.bg, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.bi = mul <8 x i32> %i.bh, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %.idx795 = shl i64 %i.ae, 3
  %.idx796 = mul i64 %i.ae, 12
  %i.bj = trunc i64 %i.ae to i32
  %i.bk = insertelement <16 x i32> poison, i32 %i.bj, i64 0
  %i.bl = shufflevector <16 x i32> %i.bk, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.bm = mul <16 x i32> %i.bl, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  br label %.noexc855

.noexc889:                                        ; preds = %.noexc889.lr.ph, %bb.q
  %.07612374 = phi ptr [ %i.am, %.noexc889.lr.ph ], [ %.4765, %bb.q ] ; 6 uses
  %.07692373 = phi i32 [ 0, %.noexc889.lr.ph ], [ %i.ace, %bb.q ] ; 6 uses
  %i.bn = or disjoint i32 %.07692373, 3           ; 2 uses
  %i.bo = sdiv i32 %.07692373, %i.v               ; 4 uses
  %i.bp = or disjoint i32 %.07692373, 1           ; 2 uses
  %i.bq = sdiv i32 %i.bp, %i.v                    ; 4 uses
  %i.br = or disjoint i32 %.07692373, 2           ; 2 uses
  %i.bs = sdiv i32 %i.br, %i.v                    ; 4 uses
  %i.bt = sdiv i32 %i.bn, %i.v                    ; 4 uses
  %i.bu = srem i32 %.07692373, %i.v               ; 4 uses
  %i.bv = srem i32 %i.bp, %i.v                    ; 4 uses
  %i.bw = srem i32 %i.br, %i.v                    ; 4 uses
  %i.bx = srem i32 %i.bn, %i.v                    ; 4 uses
  %i.by = load ptr, ptr %7, align 8, !tbaa !32, !noalias !361
  %i.bz = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !361
  %i.ca = mul i64 %i.bz, %indvars.iv2796
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !361
  %i.cc = mul i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %8, align 4, !tbaa !9     ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, 15
  br i1 %i.cf, label %.noexc887.lr.ph, label %.preheader2145

.noexc887.lr.ph:                                  ; preds = %.noexc889
  %i.cg = load i32, ptr %5, align 4, !tbaa !9     ; 5 uses
  %i.ch = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !364
  %i.ci = load ptr, ptr %4, align 8, !tbaa !32, !noalias !364 ; 4 uses
  %i.cj = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !364
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !364 ; 2 uses
  %factor.op.mul = mul i64 %i.cj, %i.ck
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i32, ptr %9, align 4, !tbaa !9     ; 4 uses
  %i.cn = mul nsw i32 %i.cm, %i.bo
  %i.co = sext i32 %i.cn to i64
  %i.cp = mul i64 %i.ck, %i.cl                    ; 4 uses
  %i.cq = mul i64 %i.cp, %i.co
  %invariant.gep = getelementptr i8, ptr %i.ci, i64 %i.cq
  %i.cr = load i32, ptr %10, align 4, !tbaa !9    ; 4 uses
  %i.cs = mul i32 %i.cg, %i.bu
  %i.ct = mul i32 %i.cs, %i.cr
  %i.cu = sext i32 %i.ct to i64
  %invariant.gep2238 = getelementptr i8, ptr %invariant.gep, i64 %i.cu
  %i.cv = mul nsw i32 %i.cm, %i.bq
  %i.cw = sext i32 %i.cv to i64
  %i.cx = mul i64 %i.cp, %i.cw
  %invariant.gep2242 = getelementptr i8, ptr %i.ci, i64 %i.cx
  %i.cy = mul i32 %i.cg, %i.bv
  %i.cz = mul i32 %i.cy, %i.cr
  %i.da = sext i32 %i.cz to i64
  %invariant.gep2243 = getelementptr i8, ptr %invariant.gep2242, i64 %i.da
  %i.db = mul nsw i32 %i.cm, %i.bs
  %i.dc = sext i32 %i.db to i64
  %i.dd = mul i64 %i.cp, %i.dc
  %invariant.gep2247 = getelementptr i8, ptr %i.ci, i64 %i.dd
  %i.de = mul i32 %i.cg, %i.bw
  %i.df = mul i32 %i.de, %i.cr
  %i.dg = sext i32 %i.df to i64
  %invariant.gep2248 = getelementptr i8, ptr %invariant.gep2247, i64 %i.dg
  %i.dh = mul nsw i32 %i.cm, %i.bt
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul i64 %i.cp, %i.di
  %invariant.gep2252 = getelementptr i8, ptr %i.ci, i64 %i.dj
  %i.dk = mul i32 %i.cg, %i.bx
  %i.dl = mul i32 %i.dk, %i.cr
  %i.dm = sext i32 %i.dl to i64
  %invariant.gep2253 = getelementptr i8, ptr %invariant.gep2252, i64 %i.dm
  %i.dn = load i32, ptr %11, align 4, !tbaa !9    ; 3 uses
  %i.do = icmp sgt i32 %i.dn, 0
  %i.dp = add i32 %i.dn, -1
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 8
  %wide.trip.count = zext nneg i32 %i.dn to i64
  br label %.noexc887

.preheader2145.loopexit:                          ; preds = %._crit_edge
  %i.ds = and i32 %i.ce, 2147483632
  %.pre = load i32, ptr %8, align 4, !tbaa !9
  br label %.preheader2145

.preheader2145:                                   ; preds = %.preheader2145.loopexit, %.noexc889
  %i.dt = phi i32 [ %i.ce, %.noexc889 ], [ %.pre, %.preheader2145.loopexit ] ; 6 uses
  %.lcssa2154 = phi <16 x i32> [ zeroinitializer, %.noexc889 ], [ %.lcssa2150, %.preheader2145.loopexit ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  br i1 %i.nk, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sf, i64 2
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !44
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sh, i64 2
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !44
  %i.su = sext i8 %i.sr to i32
  %i.sv = sext i8 %i.st to i32
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.0303.us.3 = phi i32 [ %i.su, %bb.cc ], [ 0, %bb.cb ]
  %.0301.us.3 = phi i32 [ %i.sv, %bb.cc ], [ 0, %bb.cb ]
  br i1 %i.nm, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sf, i64 3
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !44
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sh, i64 3
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !44
  %i.ta = sext i8 %i.sx to i32
  %i.tb = sext i8 %i.sz to i32
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.0299.us.3 = phi i32 [ %i.ta, %bb.ce ], [ 0, %bb.cd ]
  %.0297.us.3 = phi i32 [ %i.tb, %bb.ce ], [ 0, %bb.cd ]
  %i.tc = sext i8 %i.si to i32
  %i.td = sext i8 %i.sj to i32
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.by
  %.0310.us.3 = phi i32 [ %i.tc, %bb.cf ], [ 0, %bb.by ]
  %.0309.us.3 = phi i32 [ %i.td, %bb.cf ], [ 0, %bb.by ]
  %.1308.us.3 = phi i32 [ %.0307.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1306.us.3 = phi i32 [ %.0305.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1304.us.3 = phi i32 [ %.0303.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1302.us.3 = phi i32 [ %.0301.us.3, %bb.cf ], [ 0, %bb.by ] ; 3 uses
  %.1300.us.3 = phi i32 [ %.0299.us.3, %bb.cf ], [ 0, %bb.by ]
  %.1298.us.3 = phi i32 [ %.0297.us.3, %bb.cf ], [ 0, %bb.by ]
  %i.te = sub nsw i32 %.0310.us.3, %.1304.us.3
  %i.tf = trunc nsw i32 %i.te to i16
  %i.tg = sub nsw i32 %.0309.us.3, %.1302.us.3
  %i.th = trunc nsw i32 %i.tg to i16
  %i.ti = add nsw i32 %.1304.us.3, %.1308.us.3
  %i.tj = trunc nsw i32 %i.ti to i16
  %i.tk = add nsw i32 %.1302.us.3, %.1306.us.3
  %i.tl = trunc nsw i32 %i.tk to i16
  %i.tm = sub nsw i32 %.1304.us.3, %.1308.us.3
  %i.tn = trunc nsw i32 %i.tm to i16
  %i.to = sub nsw i32 %.1302.us.3, %.1306.us.3
  %i.tp = trunc nsw i32 %i.to to i16
  %i.tq = sub nsw i32 %.1300.us.3, %.1308.us.3
  %i.tr = trunc nsw i32 %i.tq to i16
  %i.ts = sub nsw i32 %.1298.us.3, %.1306.us.3
  %i.tt = trunc nsw i32 %i.ts to i16
  %.idx524 = shl nuw nsw i64 %indvars.iv462, 2
  %i.tu = getelementptr inbounds nuw i8, ptr %i.mu, i64 %.idx524 ; 6 uses
  %i.tv = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.lu ; 3 uses
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.lw ; 3 uses
  %i.tx = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.ly ; 3 uses
  %i.ty = sub nsw i16 %i.om, %i.rq
  store i16 %i.ty, ptr %i.tu, align 2, !tbaa !559
  %i.tz = sub nsw i16 %i.oo, %i.rs
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 2
  store i16 %i.tz, ptr %i.ua, align 2, !tbaa !559
  %i.ub = add nsw i16 %i.rq, %i.qb
  store i16 %i.ub, ptr %i.tv, align 2, !tbaa !559
  %i.uc = add nsw i16 %i.rs, %i.qd
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tv, i64 2
  store i16 %i.uc, ptr %i.ud, align 2, !tbaa !559
  %i.ue = sub nsw i16 %i.rq, %i.qb
  store i16 %i.ue, ptr %i.tw, align 2, !tbaa !559
  %i.uf = sub nsw i16 %i.rs, %i.qd
  %i.ug = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  store i16 %i.uf, ptr %i.ug, align 2, !tbaa !559
  %i.uh = sub nsw i16 %i.tf, %i.qb
  store i16 %i.uh, ptr %i.tx, align 2, !tbaa !559
  %i.ui = sub nsw i16 %i.th, %i.qd
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tx, i64 2
  store i16 %i.ui, ptr %i.uj, align 2, !tbaa !559
  %i.uk = getelementptr inbounds nuw [2 x i8], ptr %i.tu, i64 %i.ma ; 3 uses
  %i.ul = getelementptr inbounds nuw [2 x i8], ptr %i.tv, i64 %i.ma ; 3 uses
  %i.um = getelementptr inbounds nuw [2 x i8], ptr %i.tw, i64 %i.ma ; 3 uses
  %i.un = getelementptr inbounds nuw [2 x i8], ptr %i.tx, i64 %i.ma ; 3 uses
  %i.uo = sub nsw i16 %i.oq, %i.ru
  store i16 %i.uo, ptr %i.uk, align 2, !tbaa !559
  %i.up = sub nsw i16 %i.os, %i.rw
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uk, i64 2
  store i16 %i.up, ptr %i.uq, align 2, !tbaa !559
  %i.ur = add nsw i16 %i.ru, %i.qf
  store i16 %i.ur, ptr %i.ul, align 2, !tbaa !559
  %i.us = add nsw i16 %i.rw, %i.qh
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ul, i64 2
  store i16 %i.us, ptr %i.ut, align 2, !tbaa !559
  %i.uu = sub nsw i16 %i.ru, %i.qf
  store i16 %i.uu, ptr %i.um, align 2, !tbaa !559
  %i.uv = sub nsw i16 %i.rw, %i.qh
  %i.uw = getelementptr inbounds nuw i8, ptr %i.um, i64 2
  store i16 %i.uv, ptr %i.uw, align 2, !tbaa !559
  %i.ux = sub nsw i16 %i.tj, %i.qf
  store i16 %i.ux, ptr %i.un, align 2, !tbaa !559
  %i.uy = sub nsw i16 %i.tl, %i.qh
  %i.uz = getelementptr inbounds nuw i8, ptr %i.un, i64 2
  store i16 %i.uy, ptr %i.uz, align 2, !tbaa !559
  %i.va = getelementptr inbounds nuw [2 x i8], ptr %i.uk, i64 %i.ma ; 3 uses
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.ul, i64 %i.ma ; 3 uses
  %i.vc = getelementptr inbounds nuw [2 x i8], ptr %i.um, i64 %i.ma ; 3 uses
  %i.vd = getelementptr inbounds nuw [2 x i8], ptr %i.un, i64 %i.ma ; 3 uses
  %i.ve = sub nsw i16 %i.ou, %i.ry
  store i16 %i.ve, ptr %i.va, align 2, !tbaa !559
  %i.vf = sub nsw i16 %i.ow, %i.sa
  %i.vg = getelementptr inbounds nuw i8, ptr %i.va, i64 2
  store i16 %i.vf, ptr %i.vg, align 2, !tbaa !559
  %i.vh = add nsw i16 %i.ry, %i.qj
  store i16 %i.vh, ptr %i.vb, align 2, !tbaa !559
  %i.vi = add nsw i16 %i.sa, %i.ql
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vb, i64 2
  store i16 %i.vi, ptr %i.vj, align 2, !tbaa !559
  %i.vk = sub nsw i16 %i.ry, %i.qj
  store i16 %i.vk, ptr %i.vc, align 2, !tbaa !559
  %i.vl = sub nsw i16 %i.sa, %i.ql
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vc, i64 2
  store i16 %i.vl, ptr %i.vm, align 2, !tbaa !559
  %i.vn = sub nsw i16 %i.tn, %i.qj
  store i16 %i.vn, ptr %i.vd, align 2, !tbaa !559
  %i.vo = sub nsw i16 %i.tp, %i.ql
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vd, i64 2
  store i16 %i.vo, ptr %i.vp, align 2, !tbaa !559
  %i.vq = getelementptr inbounds nuw [2 x i8], ptr %i.va, i64 %i.ma ; 2 uses
  %i.vr = getelementptr inbounds nuw [2 x i8], ptr %i.vb, i64 %i.ma ; 2 uses
  %i.vs = getelementptr inbounds nuw [2 x i8], ptr %i.vc, i64 %i.ma ; 2 uses
  %i.vt = getelementptr inbounds nuw [2 x i8], ptr %i.vd, i64 %i.ma ; 2 uses
  %i.vu = sub nsw i16 %i.oy, %i.sc
  store i16 %i.vu, ptr %i.vq, align 2, !tbaa !559
  %i.vv = sub nsw i16 %i.pa, %i.se
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vq, i64 2
  store i16 %i.vv, ptr %i.vw, align 2, !tbaa !559
  %i.vx = add nsw i16 %i.sc, %i.qn
  store i16 %i.vx, ptr %i.vr, align 2, !tbaa !559
  %i.vy = add nsw i16 %i.se, %i.qp
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vr, i64 2
  store i16 %i.vy, ptr %i.vz, align 2, !tbaa !559
  %i.wa = sub nsw i16 %i.sc, %i.qn
  store i16 %i.wa, ptr %i.vs, align 2, !tbaa !559
  %i.wb = sub nsw i16 %i.se, %i.qp
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vs, i64 2
  store i16 %i.wb, ptr %i.wc, align 2, !tbaa !559
  %i.wd = sub nsw i16 %i.tr, %i.qn
  store i16 %i.wd, ptr %i.vt, align 2, !tbaa !559
  %i.we = sub nsw i16 %i.tt, %i.qp
  %i.wf = getelementptr inbounds nuw i8, ptr %i.vt, i64 2
  store i16 %i.we, ptr %i.wf, align 2, !tbaa !559
  %indvars.iv.next463 = add nuw nsw i64 %indvars.iv462, 1 ; 2 uses
  %exitcond466.not = icmp eq i64 %indvars.iv.next463, %wide.trip.count465
  br i1 %exitcond466.not, label %._crit_edge.us421, label %_ZN4ncnn3MatD2Ev.exit325.us, !llvm.loop !561

._crit_edge.us421:                                ; preds = %bb.cg
  %indvars.iv.next468 = add nuw nsw i64 %indvars.iv467, 1 ; 2 uses
  %exitcond471.not = icmp eq i64 %indvars.iv.next468, %wide.trip.count470
  br i1 %exitcond471.not, label %._crit_edge416, label %_ZN4ncnn3MatD2Ev.exit325.lr.ph.us, !llvm.loop !562

._crit_edge416:                                   ; preds = %._crit_edge.us421, %.lr.ph415, %._crit_edge403
  %i.wg = shl nsw i32 %i.lm, 1
  %i.wh = add nsw i32 %i.wg, %i.lk                ; 2 uses
  %i.wi = icmp slt i32 %i.wh, %5
  br i1 %i.wi, label %.lr.ph436, label %._crit_edge437

.lr.ph436:                                        ; preds = %._crit_edge416
  %i.wj = load i32, ptr %i.b, align 4, !tbaa !9   ; 7 uses
  %i.wk = icmp sgt i32 %i.wj, 0
  %i.wl = load i32, ptr %i.h, align 4             ; 2 uses
  %i.wm = load i32, ptr %i.d, align 4
  %i.wn = sext i32 %i.wm to i64                   ; 3 uses
  %factor.op.mul438 = shl i32 %i.wj, 4
  %i.wo = sext i32 %i.wj to i64
  %i.wp = shl nsw i32 %i.wj, 1
  %i.wq = sext i32 %i.wp to i64
  %i.wr = mul nsw i32 %i.wj, 3
  %i.ws = sext i32 %i.wr to i64
  %i.wt = shl nsw i32 %i.wj, 2
  %i.wu = sext i32 %i.wt to i64                   ; 12 uses
  br i1 %i.wk, label %.lr.ph436.split.us, label %._crit_edge437

.lr.ph436.split.us:                               ; preds = %.lr.ph436
  %i.wv = load i32, ptr %i.e, align 4             ; 2 uses
  %i.ww = load i32, ptr %i.c, align 4
  %i.wx = load i32, ptr %i.a, align 4
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.wz = load i32, ptr %i.k, align 4, !tbaa !10, !noalias !563
  %i.xa = load ptr, ptr %0, align 8, !tbaa !32, !noalias !563
  %i.xb = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !563
  %i.xc = load i64, ptr %i.wy, align 8, !tbaa !36, !noalias !563 ; 2 uses
  %factor.op.mul441 = mul i64 %i.xb, %i.xc
  %i.xd = sext i32 %i.wz to i64
  %factor.op.mul432.us = mul i64 %i.xc, %i.xd
  %i.xe = load ptr, ptr %1, align 8, !tbaa !32
  %i.xf = sext i32 %i.wv to i64                   ; 3 uses
  %i.xg = sext i32 %i.wh to i64
  %i.xh = sext i32 %5 to i64
  %i.xi = sext i32 %i.ww to i64
  %wide.trip.count483 = zext nneg i32 %i.wj to i64
  %invariant.op530 = add nsw i64 %i.xf, -1
  %invariant.op531 = add nsw i64 %i.xf, -2
  %invariant.op532 = add nsw i64 %i.xf, -3
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us440, %.lr.ph436.split.us
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %._crit_edge.us440 ], [ %i.xg, %.lr.ph436.split.us ] ; 3 uses
  %i.xj = add nsw i64 %indvars.iv485, %i.xi
  %.reass442 = mul i64 %factor.op.mul441, %i.xj
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xa, i64 %.reass442
  %i.xl = trunc nsw i64 %indvars.iv485 to i32
  %.reass439.us = mul i32 %factor.op.mul438, %i.xl
  %i.xm = sext i32 %.reass439.us to i64
  %i.xn = getelementptr inbounds [2 x i8], ptr %i.xe, i64 %i.xm
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.di
  %indvars.iv480 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next481, %bb.di ] ; 3 uses
  %i.xo = trunc i64 %indvars.iv480 to i32
  %i.xp = add i32 %i.wx, %i.xo                    ; 2 uses
  %i.xq = sdiv i32 %i.xp, %i.wl
  %i.xr = srem i32 %i.xp, %i.wl
  %i.xs = shl nsw i32 %i.xq, 1                    ; 2 uses
  %i.xt = sext i32 %i.xs to i64                   ; 4 uses
  %.reass433.us = mul i64 %factor.op.mul432.us, %i.xt
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xk, i64 %.reass433.us
  %i.xv = shl nsw i32 %i.xr, 1                    ; 4 uses
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds i8, ptr %i.xu, i64 %i.xw ; 5 uses
  %i.xy = or disjoint i32 %i.xv, 1
  %i.xz = load i32, ptr %i.d, align 4             ; 3 uses
  %i.ya = icmp slt i32 %i.xy, %i.xz               ; 4 uses
  %i.yb = add nsw i32 %i.xv, 2
  %i.yc = icmp slt i32 %i.yb, %i.xz               ; 4 uses
  %i.yd = add nsw i32 %i.xv, 3
  %i.ye = icmp slt i32 %i.yd, %i.xz               ; 4 uses
  %i.yf = icmp slt i32 %i.xs, %i.wv
  br i1 %i.yf, label %bb.ch, label %bb.cn

bb.ch:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.yg = load i8, ptr %i.xx, align 1, !tbaa !44  ; 2 uses
  br i1 %i.ya, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xx, i64 1
  %i.yi = load i8, ptr %i.yh, align 1, !tbaa !44
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.0274.us = phi i8 [ %i.yi, %bb.ci ], [ 0, %bb.ch ] ; 2 uses
  br i1 %i.yc, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xx, i64 2
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !44
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0273.us = phi i8 [ %i.yk, %bb.ck ], [ 0, %bb.cj ] ; 2 uses
  br i1 %i.ye, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xx, i64 3
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !44
  %i.yn = sext i8 %i.ym to i32
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %_ZN4ncnn3MatD2Ev.exit.us
  %.0276.us = phi i8 [ %i.yg, %bb.cm ], [ %i.yg, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1275.us = phi i8 [ %.0274.us, %bb.cm ], [ %.0274.us, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1.us = phi i8 [ %.0273.us, %bb.cm ], [ %.0273.us, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.0272.us = phi i32 [ %i.yn, %bb.cm ], [ 0, %bb.cl ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.yo = sext i8 %.0276.us to i32
  %i.yp = sext i8 %.1.us to i32                   ; 3 uses
  %i.yq = sub nsw i32 %i.yo, %i.yp
  %i.yr = trunc nsw i32 %i.yq to i16
  %i.ys = sext i8 %.1275.us to i32                ; 3 uses
  %i.yt = add nsw i32 %i.yp, %i.ys
  %i.yu = trunc nsw i32 %i.yt to i16
  %i.yv = sub nsw i32 %i.yp, %i.ys
  %i.yw = trunc nsw i32 %i.yv to i16
  %i.yx = sub nsw i32 %.0272.us, %i.ys
  %i.yy = trunc nsw i32 %i.yx to i16
  %i.yz = getelementptr inbounds i8, ptr %i.xx, i64 %i.wn ; 5 uses
  %i.za = icmp sgt i64 %invariant.op530, %i.xt
  br i1 %i.za, label %bb.co, label %bb.cu

bb.co:                                            ; preds = %bb.cn
  %i.zb = load i8, ptr %i.yz, align 1, !tbaa !44  ; 2 uses
  br i1 %i.ya, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.zc = getelementptr inbounds nuw i8, ptr %i.yz, i64 1
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !44
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.0274.us.1 = phi i8 [ %i.zd, %bb.cp ], [ 0, %bb.co ] ; 2 uses
  br i1 %i.yc, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yz, i64 2
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !44
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.0273.us.1 = phi i8 [ %i.zf, %bb.cr ], [ 0, %bb.cq ] ; 2 uses
  br i1 %i.ye, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yz, i64 3
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !44
  %i.zi = sext i8 %i.zh to i32
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cn
  %.0276.us.1 = phi i8 [ %i.zb, %bb.ct ], [ %i.zb, %bb.cs ], [ 0, %bb.cn ]
  %.1275.us.1 = phi i8 [ %.0274.us.1, %bb.ct ], [ %.0274.us.1, %bb.cs ], [ 0, %bb.cn ]
  %.1.us.1 = phi i8 [ %.0273.us.1, %bb.ct ], [ %.0273.us.1, %bb.cs ], [ 0, %bb.cn ]
  %.0272.us.1 = phi i32 [ %i.zi, %bb.ct ], [ 0, %bb.cs ], [ 0, %bb.cn ]
  %i.zj = sext i8 %.0276.us.1 to i32
  %i.zk = sext i8 %.1.us.1 to i32                 ; 3 uses
  %i.zl = sub nsw i32 %i.zj, %i.zk
  %i.zm = trunc nsw i32 %i.zl to i16              ; 3 uses
  %i.zn = sext i8 %.1275.us.1 to i32              ; 3 uses
  %i.zo = add nsw i32 %i.zk, %i.zn
  %i.zp = trunc nsw i32 %i.zo to i16              ; 3 uses
  %i.zq = sub nsw i32 %i.zk, %i.zn
  %i.zr = trunc nsw i32 %i.zq to i16              ; 3 uses
  %i.zs = sub nsw i32 %.0272.us.1, %i.zn
  %i.zt = trunc nsw i32 %i.zs to i16              ; 3 uses
  %i.zu = getelementptr inbounds i8, ptr %i.yz, i64 %i.wn ; 5 uses
  %i.zv = icmp sgt i64 %invariant.op531, %i.xt
  br i1 %i.zv, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.zw = load i8, ptr %i.zu, align 1, !tbaa !44  ; 2 uses
  br i1 %i.ya, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 1
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !44
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.0274.us.2 = phi i8 [ %i.zy, %bb.cw ], [ 0, %bb.cv ] ; 2 uses
  br i1 %i.yc, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zu, i64 2
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !44
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0273.us.2 = phi i8 [ %i.aaa, %bb.cy ], [ 0, %bb.cx ] ; 2 uses
  br i1 %i.ye, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zu, i64 3
  %i.aac = load i8, ptr %i.aab, align 1, !tbaa !44
  %i.aad = sext i8 %i.aac to i32
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cu
  %.0276.us.2 = phi i8 [ %i.zw, %bb.da ], [ %i.zw, %bb.cz ], [ 0, %bb.cu ]
  %.1275.us.2 = phi i8 [ %.0274.us.2, %bb.da ], [ %.0274.us.2, %bb.cz ], [ 0, %bb.cu ]
  %.1.us.2 = phi i8 [ %.0273.us.2, %bb.da ], [ %.0273.us.2, %bb.cz ], [ 0, %bb.cu ]
  %.0272.us.2 = phi i32 [ %i.aad, %bb.da ], [ 0, %bb.cz ], [ 0, %bb.cu ]
  %i.aae = sext i8 %.0276.us.2 to i32
  %i.aaf = sext i8 %.1.us.2 to i32                ; 3 uses
  %i.aag = sub nsw i32 %i.aae, %i.aaf
  %i.aah = trunc nsw i32 %i.aag to i16            ; 3 uses
  %i.aai = sext i8 %.1275.us.2 to i32             ; 3 uses
  %i.aaj = add nsw i32 %i.aaf, %i.aai
  %i.aak = trunc nsw i32 %i.aaj to i16            ; 3 uses
  %i.aal = sub nsw i32 %i.aaf, %i.aai
  %i.aam = trunc nsw i32 %i.aal to i16            ; 3 uses
  %i.aan = sub nsw i32 %.0272.us.2, %i.aai
  %i.aao = trunc nsw i32 %i.aan to i16            ; 3 uses
  %i.aap = getelementptr inbounds i8, ptr %i.zu, i64 %i.wn ; 4 uses
  %i.aaq = icmp sgt i64 %invariant.op532, %i.xt
  br i1 %i.aaq, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  %i.aar = load i8, ptr %i.aap, align 1, !tbaa !44 ; 2 uses
  br i1 %i.ya, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aap, i64 1
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !44
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0274.us.3 = phi i8 [ %i.aat, %bb.dd ], [ 0, %bb.dc ] ; 2 uses
  br i1 %i.yc, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !44
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0273.us.3 = phi i8 [ %i.aav, %bb.df ], [ 0, %bb.de ] ; 2 uses
  br i1 %i.ye, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aap, i64 3
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !44
  %i.aay = sext i8 %i.aax to i32
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.db
  %.0276.us.3 = phi i8 [ %i.aar, %bb.dh ], [ %i.aar, %bb.dg ], [ 0, %bb.db ]
  %.1275.us.3 = phi i8 [ %.0274.us.3, %bb.dh ], [ %.0274.us.3, %bb.dg ], [ 0, %bb.db ]
  %.1.us.3 = phi i8 [ %.0273.us.3, %bb.dh ], [ %.0273.us.3, %bb.dg ], [ 0, %bb.db ]
  %.0272.us.3 = phi i32 [ %i.aay, %bb.dh ], [ 0, %bb.dg ], [ 0, %bb.db ]
  %i.aaz = sext i8 %.0276.us.3 to i32
  %i.aba = sext i8 %.1.us.3 to i32                ; 3 uses
  %i.abb = sub nsw i32 %i.aaz, %i.aba
  %i.abc = trunc nsw i32 %i.abb to i16
  %i.abd = sext i8 %.1275.us.3 to i32             ; 3 uses
  %i.abe = add nsw i32 %i.aba, %i.abd
  %i.abf = trunc nsw i32 %i.abe to i16
  %i.abg = sub nsw i32 %i.aba, %i.abd
  %i.abh = trunc nsw i32 %i.abg to i16
  %i.abi = sub nsw i32 %.0272.us.3, %i.abd
  %i.abj = trunc nsw i32 %i.abi to i16
  %i.abk = getelementptr inbounds nuw [2 x i8], ptr %i.xn, i64 %indvars.iv480 ; 5 uses
  %i.abl = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.wo ; 2 uses
  %i.abm = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.wq ; 2 uses
  %i.abn = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.ws ; 2 uses
  %i.abo = sub nsw i16 %i.yr, %i.aah
  store i16 %i.abo, ptr %i.abk, align 2, !tbaa !559
  %i.abp = add nsw i16 %i.aah, %i.zm
  store i16 %i.abp, ptr %i.abl, align 2, !tbaa !559
  %i.abq = sub nsw i16 %i.aah, %i.zm
  store i16 %i.abq, ptr %i.abm, align 2, !tbaa !559
  %i.abr = sub nsw i16 %i.abc, %i.zm
  store i16 %i.abr, ptr %i.abn, align 2, !tbaa !559
  %i.abs = getelementptr inbounds nuw [2 x i8], ptr %i.abk, i64 %i.wu ; 2 uses
  %i.abt = getelementptr inbounds nuw [2 x i8], ptr %i.abl, i64 %i.wu ; 2 uses
  %i.abu = getelementptr inbounds nuw [2 x i8], ptr %i.abm, i64 %i.wu ; 2 uses
  %i.abv = getelementptr inbounds nuw [2 x i8], ptr %i.abn, i64 %i.wu ; 2 uses
  %i.abw = sub nsw i16 %i.yu, %i.aak
  store i16 %i.abw, ptr %i.abs, align 2, !tbaa !559
  %i.abx = add nsw i16 %i.aak, %i.zp
  store i16 %i.abx, ptr %i.abt, align 2, !tbaa !559
  %i.aby = sub nsw i16 %i.aak, %i.zp
  store i16 %i.aby, ptr %i.abu, align 2, !tbaa !559
  %i.abz = sub nsw i16 %i.abf, %i.zp
  store i16 %i.abz, ptr %i.abv, align 2, !tbaa !559
  %i.aca = getelementptr inbounds nuw [2 x i8], ptr %i.abs, i64 %i.wu ; 2 uses
  %i.acb = getelementptr inbounds nuw [2 x i8], ptr %i.abt, i64 %i.wu ; 2 uses
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.abu, i64 %i.wu ; 2 uses
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.abv, i64 %i.wu ; 2 uses
  %i.ace = sub nsw i16 %i.yw, %i.aam
  store i16 %i.ace, ptr %i.aca, align 2, !tbaa !559
  %i.acf = add nsw i16 %i.aam, %i.zr
  store i16 %i.acf, ptr %i.acb, align 2, !tbaa !559
  %i.acg = sub nsw i16 %i.aam, %i.zr
  store i16 %i.acg, ptr %i.acc, align 2, !tbaa !559
  %i.ach = sub nsw i16 %i.abh, %i.zr
  store i16 %i.ach, ptr %i.acd, align 2, !tbaa !559
  %i.aci = getelementptr inbounds nuw [2 x i8], ptr %i.aca, i64 %i.wu
  %i.acj = getelementptr inbounds nuw [2 x i8], ptr %i.acb, i64 %i.wu
  %i.ack = getelementptr inbounds nuw [2 x i8], ptr %i.acc, i64 %i.wu
  %i.acl = getelementptr inbounds nuw [2 x i8], ptr %i.acd, i64 %i.wu
  %i.acm = sub nsw i16 %i.yy, %i.aao
  store i16 %i.acm, ptr %i.aci, align 2, !tbaa !559
  %i.acn = add nsw i16 %i.aao, %i.zt
  store i16 %i.acn, ptr %i.acj, align 2, !tbaa !559
  %i.aco = sub nsw i16 %i.aao, %i.zt
  store i16 %i.aco, ptr %i.ack, align 2, !tbaa !559
  %i.acp = sub nsw i16 %i.abj, %i.zt
  store i16 %i.acp, ptr %i.acl, align 2, !tbaa !559
  %indvars.iv.next481 = add nuw nsw i64 %indvars.iv480, 1 ; 2 uses
  %exitcond484.not = icmp eq i64 %indvars.iv.next481, %wide.trip.count483
  br i1 %exitcond484.not, label %._crit_edge.us440, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !566

._crit_edge.us440:                                ; preds = %bb.di
  %indvars.iv.next486 = add nsw i64 %indvars.iv485, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next486, %i.xh
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge437, !llvm.loop !567

._crit_edge437:                                   ; preds = %._crit_edge.us440, %.lr.ph436, %._crit_edge416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.j, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 1, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !9
  %i.k = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !9
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !9
  %i.n = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %.not68 = icmp sgt i32 %i.n, %i.m
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !9     ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !9     ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !9
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !568)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !10, !noalias !568 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !19, !noalias !568 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !571, !noalias !568
  %i.bi = load ptr, ptr %8, align 8, !tbaa !32, !noalias !568
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !568
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !568 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !16, !noalias !568
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !541, !noalias !568
  store ptr %i.bo, ptr %11, align 8, !tbaa !32
  store ptr null, ptr %i.v, align 8, !tbaa !542
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !36
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !16
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !541
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !10
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !19
  store i32 1, ptr %i.ac, align 4, !tbaa !571
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !17
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !18
  %i.by = load i32, ptr %i.af, align 8, !tbaa !572, !noalias !568 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !572, !alias.scope !568
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !18, !alias.scope !568
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.cb = load i32, ptr %4, align 4, !tbaa !9
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !32, !noalias !573
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !18, !noalias !573
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !36, !noalias !573 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !16, !noalias !573
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !541, !noalias !573
  %i.cm = load i32, ptr %5, align 4, !tbaa !9
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !542
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !36
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !16
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !541
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !9, !noalias !573
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !19, !noalias !573
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !10, !noalias !573
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !32
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !9
  store i32 1, ptr %i.ar, align 8, !tbaa !17
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !18, !alias.scope !576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !9
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !9
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !9
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !542 ; 2 uses
  %.not.i38 = icmp eq ptr %i.db, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !541 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.de, null
end_hunk_2
begin_hunk_3_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  %i.agw = trunc nsw i32 %i.agv to i16
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 2
  store i16 %i.agw, ptr %i.agx, align 2, !tbaa !559
  %i.agy = sub nsw i32 %i.agb, %i.afx
  %i.agz = trunc nsw i32 %i.agy to i16
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.acc, i64 %indvars.iv697 ; 2 uses
  store i16 %i.agz, ptr %i.aha, align 4, !tbaa !559
  %i.ahb = sub nsw i32 %i.agd, %i.afz
  %i.ahc = trunc nsw i32 %i.ahb to i16
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.aha, i64 2
  store i16 %i.ahc, ptr %i.ahd, align 2, !tbaa !559
  %i.ahe = trunc nsw i32 %i.agi to i16            ; 2 uses
  %i.ahf = add nsw i16 %i.agf, %i.ahe
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.acd, i64 %indvars.iv697 ; 2 uses
  store i16 %i.ahf, ptr %i.ahg, align 4, !tbaa !559
  %i.ahh = trunc nsw i32 %i.agj to i16            ; 2 uses
  %i.ahi = add nsw i16 %i.agh, %i.ahh
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahg, i64 2
  store i16 %i.ahi, ptr %i.ahj, align 2, !tbaa !559
  %i.ahk = sub nsw i16 %i.ahe, %i.agf
  %i.ahl = getelementptr inbounds nuw [4 x i8], ptr %i.ace, i64 %indvars.iv697 ; 2 uses
  store i16 %i.ahk, ptr %i.ahl, align 4, !tbaa !559
  %i.ahm = sub nsw i16 %i.ahh, %i.agh
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahl, i64 2
  store i16 %i.ahm, ptr %i.ahn, align 2, !tbaa !559
  %.neg552.us = mul nsw i32 %.1528.us, 65531
  %i.aho = add nsw i32 %.neg552.us, %.1536.us
  %i.ahp = add nsw i32 %i.aho, %i.afw
  %i.ahq = trunc i32 %i.ahp to i16
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.acf, i64 %indvars.iv697 ; 2 uses
  store i16 %i.ahq, ptr %i.ahr, align 4, !tbaa !559
  %.neg553.us = mul nsw i32 %.1530.us, 65531
  %i.ahs = add nsw i32 %.neg553.us, %.1534.us
  %i.aht = add nsw i32 %i.ahs, %i.afy
  %i.ahu = trunc i32 %i.aht to i16
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahr, i64 2
  store i16 %i.ahu, ptr %i.ahv, align 2, !tbaa !559
  %i.ahw = getelementptr inbounds i8, ptr %.0508644.us, i64 %i.ach
  %indvars.iv.next698 = add nuw nsw i64 %indvars.iv697, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next698, 6
  br i1 %exitcond700.not, label %bb.ek, label %bb.dx, !llvm.loop !772

bb.ek:                                            ; preds = %bb.ej
  %.idx771 = shl nuw nsw i64 %indvars.iv705, 2
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.adn, i64 %.idx771 ; 6 uses
  %i.ahy = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acj
  %i.ahz = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acl
  %i.aia = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acn
  %i.aib = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acp
  %i.aic = getelementptr inbounds nuw [2 x i8], ptr %i.ahx, i64 %i.acr
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %indvars.iv701 = phi i64 [ %indvars.iv.next702, %bb.el ], [ 0, %bb.ek ] ; 2 uses
  %.0512650.us = phi ptr [ %i.akv, %bb.el ], [ %i.aic, %bb.ek ] ; 3 uses
  %.0513649.us = phi ptr [ %i.aku, %bb.el ], [ %i.aib, %bb.ek ] ; 3 uses
  %.0514648.us = phi ptr [ %i.akt, %bb.el ], [ %i.aia, %bb.ek ] ; 3 uses
  %.0515647.us = phi ptr [ %i.aks, %bb.el ], [ %i.ahz, %bb.ek ] ; 3 uses
  %.0516646.us = phi ptr [ %i.akr, %bb.el ], [ %i.ahy, %bb.ek ] ; 3 uses
  %.0517645.us = phi ptr [ %i.akq, %bb.el ], [ %i.ahx, %bb.ek ] ; 2 uses
  %i.aid = getelementptr inbounds nuw [24 x i8], ptr %i.j, i64 %indvars.iv701 ; 9 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aif = load i16, ptr %i.aie, align 4, !tbaa !559 ; 2 uses
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 6
  %i.aih = load i16, ptr %i.aig, align 2, !tbaa !559 ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aid, i64 12
  %i.aik = load i16, ptr %i.aij, align 4, !tbaa !559 ; 3 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aid, i64 14
  %i.aim = load i16, ptr %i.ail, align 2, !tbaa !559 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aid, i64 16
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aid, i64 20
  %i.aip = load i16, ptr %i.aio, align 4, !tbaa !559
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.aid, i64 22
  %i.air = load i16, ptr %i.aiq, align 2, !tbaa !559
  %i.ais = zext i16 %i.aik to i32
  %i.ait = sext i16 %i.aif to i32
  %i.aiu = shl nsw i32 %i.ait, 2                  ; 2 uses
  %i.aiv = trunc i32 %i.aiu to i16
  %i.aiw = sub i16 %i.aik, %i.aiv                 ; 2 uses
  %i.aix = zext i16 %i.aim to i32
  %i.aiy = sext i16 %i.aih to i32
  %i.aiz = shl nsw i32 %i.aiy, 2                  ; 2 uses
  %i.aja = trunc i32 %i.aiz to i16
  %i.ajb = sub i16 %i.aim, %i.aja                 ; 2 uses
  %i.ajc = sub i16 %i.aik, %i.aif
  %i.ajd = shl i16 %i.ajc, 1                      ; 2 uses
  %i.aje = sub i16 %i.aim, %i.aih
  %i.ajf = shl i16 %i.aje, 1                      ; 2 uses
  %i.ajg = load <2 x i16>, ptr %i.aid, align 8, !tbaa !559
  %i.ajh = load <2 x i16>, ptr %i.aii, align 8, !tbaa !559 ; 3 uses
  %i.aji = load <2 x i16>, ptr %i.ain, align 8, !tbaa !559 ; 3 uses
  %i.ajj = extractelement <2 x i16> %i.ajh, i64 0 ; 2 uses
  %i.ajk = shl i16 %i.ajj, 2
  %i.ajl = extractelement <2 x i16> %i.aji, i64 0 ; 2 uses
  %i.ajm = sub i16 %i.ajl, %i.ajk                 ; 2 uses
  %i.ajn = extractelement <2 x i16> %i.ajh, i64 1 ; 2 uses
  %i.ajo = shl i16 %i.ajn, 2
  %i.ajp = extractelement <2 x i16> %i.aji, i64 1 ; 2 uses
  %i.ajq = sub i16 %i.ajp, %i.ajo                 ; 2 uses
  %i.ajr = sub i16 %i.ajl, %i.ajj                 ; 2 uses
  %i.ajs = sub i16 %i.ajp, %i.ajn                 ; 2 uses
  %i.ajt = shl <2 x i16> %i.ajg, splat (i16 2)
  %i.aju = mul <2 x i16> %i.ajh, splat (i16 -5)
  %i.ajv = add <2 x i16> %i.aju, %i.ajt
  %i.ajw = add <2 x i16> %i.ajv, %i.aji
  store <2 x i16> %i.ajw, ptr %.0517645.us, align 2, !tbaa !559
  %i.ajx = add i16 %i.ajm, %i.aiw
  store i16 %i.ajx, ptr %.0516646.us, align 2, !tbaa !559
  %i.ajy = add i16 %i.ajq, %i.ajb
  %i.ajz = getelementptr inbounds nuw i8, ptr %.0516646.us, i64 2
  store i16 %i.ajy, ptr %i.ajz, align 2, !tbaa !559
  %i.aka = sub i16 %i.ajm, %i.aiw
  store i16 %i.aka, ptr %.0515647.us, align 2, !tbaa !559
  %i.akb = sub i16 %i.ajq, %i.ajb
  %i.akc = getelementptr inbounds nuw i8, ptr %.0515647.us, i64 2
  store i16 %i.akb, ptr %i.akc, align 2, !tbaa !559
  %i.akd = add i16 %i.ajr, %i.ajd
  store i16 %i.akd, ptr %.0514648.us, align 2, !tbaa !559
  %i.ake = add i16 %i.ajs, %i.ajf
  %i.akf = getelementptr inbounds nuw i8, ptr %.0514648.us, i64 2
  store i16 %i.ake, ptr %i.akf, align 2, !tbaa !559
  %i.akg = sub i16 %i.ajr, %i.ajd
  store i16 %i.akg, ptr %.0513649.us, align 2, !tbaa !559
  %i.akh = sub i16 %i.ajs, %i.ajf
  %i.aki = getelementptr inbounds nuw i8, ptr %.0513649.us, i64 2
  store i16 %i.akh, ptr %i.aki, align 2, !tbaa !559
  %.neg546.us = mul nuw i32 %i.ais, 65531
  %i.akj = add i32 %.neg546.us, %i.aiu
  %i.akk = trunc i32 %i.akj to i16
  %i.akl = add i16 %i.aip, %i.akk
  store i16 %i.akl, ptr %.0512650.us, align 2, !tbaa !559
  %.neg547.us = mul nuw i32 %i.aix, 65531
  %i.akm = add i32 %.neg547.us, %i.aiz
  %i.akn = trunc i32 %i.akm to i16
  %i.ako = add i16 %i.air, %i.akn
  %i.akp = getelementptr inbounds nuw i8, ptr %.0512650.us, i64 2
  store i16 %i.ako, ptr %i.akp, align 2, !tbaa !559
  %i.akq = getelementptr inbounds nuw [2 x i8], ptr %.0517645.us, i64 %i.act
  %i.akr = getelementptr inbounds nuw [2 x i8], ptr %.0516646.us, i64 %i.act
  %i.aks = getelementptr inbounds nuw [2 x i8], ptr %.0515647.us, i64 %i.act
  %i.akt = getelementptr inbounds nuw [2 x i8], ptr %.0514648.us, i64 %i.act
  %i.aku = getelementptr inbounds nuw [2 x i8], ptr %.0513649.us, i64 %i.act
  %i.akv = getelementptr inbounds nuw [2 x i8], ptr %.0512650.us, i64 %i.act
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %exitcond704.not = icmp eq i64 %indvars.iv.next702, 6
  br i1 %exitcond704.not, label %bb.em, label %bb.el, !llvm.loop !773

bb.em:                                            ; preds = %bb.el
  %indvars.iv.next706 = add nuw nsw i64 %indvars.iv705, 1 ; 2 uses
  %exitcond709.not = icmp eq i64 %indvars.iv.next706, %wide.trip.count708
  br i1 %exitcond709.not, label %._crit_edge.us662, label %_ZN4ncnn3MatD2Ev.exit554.us, !llvm.loop !774

._crit_edge.us662:                                ; preds = %bb.em
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  %indvars.iv.next711 = add nuw nsw i64 %indvars.iv710, 1 ; 2 uses
  %exitcond714.not = icmp eq i64 %indvars.iv.next711, %wide.trip.count713
  br i1 %exitcond714.not, label %._crit_edge657, label %_ZN4ncnn3MatD2Ev.exit554.lr.ph.us, !llvm.loop !775

._crit_edge657:                                   ; preds = %._crit_edge.us662, %.lr.ph656, %._crit_edge642
  %i.akw = shl nsw i32 %i.abw, 1
  %i.akx = add nsw i32 %i.akw, %i.abu             ; 2 uses
  %i.aky = icmp slt i32 %i.akx, %5
  br i1 %i.aky, label %.lr.ph679, label %._crit_edge680

.lr.ph679:                                        ; preds = %._crit_edge657
  %i.akz = load i32, ptr %i.b, align 4, !tbaa !9  ; 9 uses
  %i.ala = icmp sgt i32 %i.akz, 0
  %i.alb = load i32, ptr %i.h, align 4            ; 2 uses
  %i.alc = load i32, ptr %i.d, align 4
  %i.ald = sext i32 %i.alc to i64                 ; 5 uses
  %factor.op.mul681 = mul i32 %i.akz, 36
  %i.ale = sext i32 %i.akz to i64
  %i.alf = shl nsw i32 %i.akz, 1
  %i.alg = sext i32 %i.alf to i64
  %i.alh = mul nsw i32 %i.akz, 3
  %i.ali = sext i32 %i.alh to i64
  %i.alj = shl nsw i32 %i.akz, 2
  %i.alk = sext i32 %i.alj to i64
  %i.all = mul nsw i32 %i.akz, 5
  %i.alm = sext i32 %i.all to i64
  %i.aln = mul nsw i32 %i.akz, 6
  %i.alo = sext i32 %i.aln to i64                 ; 30 uses
  br i1 %i.ala, label %.lr.ph679.split.us, label %._crit_edge680

.lr.ph679.split.us:                               ; preds = %.lr.ph679
  %i.alp = load i32, ptr %i.e, align 4            ; 2 uses
  %i.alq = load i32, ptr %i.c, align 4
  %i.alr = load i32, ptr %i.a, align 4
  %i.als = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.alt = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !776
  %i.alu = load ptr, ptr %0, align 8, !tbaa !32, !noalias !776
  %i.alv = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !776
  %i.alw = load i64, ptr %i.als, align 8, !tbaa !36, !noalias !776 ; 2 uses
  %factor.op.mul684 = mul i64 %i.alv, %i.alw
  %i.alx = sext i32 %i.alt to i64
  %factor.op.mul675.us = mul i64 %i.alw, %i.alx
  %i.aly = load ptr, ptr %1, align 8, !tbaa !32
  %i.alz = sext i32 %i.alp to i64                 ; 5 uses
  %i.ama = sext i32 %i.akx to i64
  %i.amb = sext i32 %5 to i64
  %i.amc = sext i32 %i.alq to i64
  %wide.trip.count726 = zext nneg i32 %i.akz to i64
  %invariant.op778 = add nsw i64 %i.alz, -1
  %invariant.op779 = add nsw i64 %i.alz, -2
  %invariant.op780 = add nsw i64 %i.alz, -3
  %invariant.op781 = add nsw i64 %i.alz, -4
  %invariant.op782 = add nsw i64 %i.alz, -5
  br label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us

_ZN4ncnn3MatD2Ev.exit.lr.ph.us:                   ; preds = %._crit_edge.us683, %.lr.ph679.split.us
  %indvars.iv728 = phi i64 [ %indvars.iv.next729, %._crit_edge.us683 ], [ %i.ama, %.lr.ph679.split.us ] ; 3 uses
  %i.amd = add nsw i64 %indvars.iv728, %i.amc
  %.reass685 = mul i64 %factor.op.mul684, %i.amd
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alu, i64 %.reass685
  %i.amf = trunc nsw i64 %indvars.iv728 to i32
  %.reass682.us = mul i32 %factor.op.mul681, %i.amf
  %i.amg = sext i32 %.reass682.us to i64
  %i.amh = getelementptr inbounds [2 x i8], ptr %i.aly, i64 %i.amg
  br label %_ZN4ncnn3MatD2Ev.exit.us

_ZN4ncnn3MatD2Ev.exit.us:                         ; preds = %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, %bb.ha
  %indvars.iv723 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit.lr.ph.us ], [ %indvars.iv.next724, %bb.ha ] ; 3 uses
  %i.ami = trunc i64 %indvars.iv723 to i32
  %i.amj = add i32 %i.alr, %i.ami                 ; 2 uses
  %i.amk = sdiv i32 %i.amj, %i.alb
  %i.aml = srem i32 %i.amj, %i.alb
  %i.amm = shl nsw i32 %i.amk, 2                  ; 2 uses
  %i.amn = sext i32 %i.amm to i64                 ; 6 uses
  %.reass676.us = mul i64 %factor.op.mul675.us, %i.amn
  %i.amo = getelementptr inbounds nuw i8, ptr %i.ame, i64 %.reass676.us
  %i.amp = shl nsw i32 %i.aml, 2                  ; 6 uses
  %i.amq = sext i32 %i.amp to i64
  %i.amr = getelementptr inbounds i8, ptr %i.amo, i64 %i.amq ; 7 uses
  %i.ams = or disjoint i32 %i.amp, 1
  %i.amt = load i32, ptr %i.d, align 4            ; 5 uses
  %i.amu = icmp slt i32 %i.ams, %i.amt            ; 6 uses
  %i.amv = or disjoint i32 %i.amp, 2
  %i.amw = icmp slt i32 %i.amv, %i.amt            ; 6 uses
  %i.amx = or disjoint i32 %i.amp, 3
  %i.amy = icmp slt i32 %i.amx, %i.amt            ; 6 uses
  %i.amz = add nsw i32 %i.amp, 4
  %i.ana = icmp slt i32 %i.amz, %i.amt            ; 6 uses
  %i.anb = add nsw i32 %i.amp, 5
  %i.anc = icmp slt i32 %i.anb, %i.amt            ; 6 uses
  %i.and = icmp slt i32 %i.amm, %i.alp
  br i1 %i.and, label %bb.en, label %bb.ex

bb.en:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.us
  %i.ane = load i8, ptr %i.amr, align 1, !tbaa !44 ; 2 uses
  br i1 %i.amu, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amr, i64 1
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !44
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  %.0477.us = phi i8 [ %i.ang, %bb.eo ], [ 0, %bb.en ] ; 2 uses
  br i1 %i.amw, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amr, i64 2
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !44
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  %.0475.us = phi i8 [ %i.ani, %bb.eq ], [ 0, %bb.ep ] ; 2 uses
  br i1 %i.amy, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.anj = getelementptr inbounds nuw i8, ptr %i.amr, i64 3
  %i.ank = load i8, ptr %i.anj, align 1, !tbaa !44
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %.0473.us = phi i8 [ %i.ank, %bb.es ], [ 0, %bb.er ] ; 2 uses
  br i1 %i.ana, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amr, i64 4
  %i.anm = load i8, ptr %i.anl, align 1, !tbaa !44
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.0471.us = phi i8 [ %i.anm, %bb.eu ], [ 0, %bb.et ] ; 2 uses
  br i1 %i.anc, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.ann = getelementptr inbounds nuw i8, ptr %i.amr, i64 5
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !44
  %i.anp = sext i8 %i.ano to i32
  br label %bb.ex

bb.ex:                                            ; preds = %bb.ew, %bb.ev, %_ZN4ncnn3MatD2Ev.exit.us
  %.0479.us = phi i8 [ %i.ane, %bb.ew ], [ %i.ane, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1478.us = phi i8 [ %.0477.us, %bb.ew ], [ %.0477.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1476.us = phi i8 [ %.0475.us, %bb.ew ], [ %.0475.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1474.us = phi i8 [ %.0473.us, %bb.ew ], [ %.0473.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.1472.us = phi i8 [ %.0471.us, %bb.ew ], [ %.0471.us, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %.0470.us = phi i32 [ %i.anp, %bb.ew ], [ 0, %bb.ev ], [ 0, %_ZN4ncnn3MatD2Ev.exit.us ]
  %i.anq = sext i8 %.1474.us to i32               ; 3 uses
  %i.anr = sext i8 %.1478.us to i32               ; 2 uses
  %i.ans = shl nsw i32 %i.anr, 2                  ; 2 uses
  %i.ant = sub nsw i32 %i.anq, %i.ans             ; 2 uses
  %i.anu = sext i8 %.1472.us to i32               ; 3 uses
  %i.anv = sext i8 %.1476.us to i32               ; 3 uses
  %i.anw = shl nsw i32 %i.anv, 2
  %i.anx = sub nsw i32 %i.anu, %i.anw             ; 2 uses
  %i.any = sub nsw i32 %i.anq, %i.anr
  %.tr.us = trunc nsw i32 %i.any to i16
  %i.anz = shl nsw i16 %.tr.us, 1                 ; 2 uses
  %i.aoa = sub nsw i32 %i.anu, %i.anv
  %i.aob = sext i8 %.0479.us to i32
  %i.aoc = shl nsw i32 %i.aob, 2
  %.neg542.us = mul nsw i32 %i.anv, 16379
  %i.aod = add nsw i32 %.neg542.us, %i.aoc
  %i.aoe = add nsw i32 %i.aod, %i.anu
  %i.aof = trunc i32 %i.aoe to i16
  %i.aog = add nsw i32 %i.anx, %i.ant
  %i.aoh = trunc nsw i32 %i.aog to i16
  %i.aoi = sub nsw i32 %i.anx, %i.ant
  %i.aoj = trunc nsw i32 %i.aoi to i16
  %i.aok = trunc nsw i32 %i.aoa to i16            ; 2 uses
  %i.aol = add nsw i16 %i.anz, %i.aok
  %i.aom = sub nsw i16 %i.aok, %i.anz
  %i.aon = add nsw i32 %.0470.us, %i.ans
  %.neg543.us = mul nsw i32 %i.anq, 16379
  %i.aoo = add nsw i32 %i.aon, %.neg543.us
  %i.aop = trunc i32 %i.aoo to i16
  %i.aoq = getelementptr inbounds i8, ptr %i.amr, i64 %i.ald ; 7 uses
  %i.aor = icmp sgt i64 %invariant.op778, %i.amn
  br i1 %i.aor, label %bb.ey, label %bb.fi

bb.ey:                                            ; preds = %bb.ex
  %i.aos = load i8, ptr %i.aoq, align 1, !tbaa !44 ; 2 uses
  br i1 %i.amu, label %bb.ez, label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aoq, i64 1
  %i.aou = load i8, ptr %i.aot, align 1, !tbaa !44
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  %.0477.us.1 = phi i8 [ %i.aou, %bb.ez ], [ 0, %bb.ey ] ; 2 uses
  br i1 %i.amw, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aoq, i64 2
  %i.aow = load i8, ptr %i.aov, align 1, !tbaa !44
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fb, %bb.fa
  %.0475.us.1 = phi i8 [ %i.aow, %bb.fb ], [ 0, %bb.fa ] ; 2 uses
  br i1 %i.amy, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.aox = getelementptr inbounds nuw i8, ptr %i.aoq, i64 3
  %i.aoy = load i8, ptr %i.aox, align 1, !tbaa !44
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  %.0473.us.1 = phi i8 [ %i.aoy, %bb.fd ], [ 0, %bb.fc ] ; 2 uses
  br i1 %i.ana, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoq, i64 4
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !44
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.0471.us.1 = phi i8 [ %i.apa, %bb.ff ], [ 0, %bb.fe ] ; 2 uses
  br i1 %i.anc, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aoq, i64 5
  %i.apc = load i8, ptr %i.apb, align 1, !tbaa !44
  %i.apd = sext i8 %i.apc to i32
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg, %bb.ex
  %.0479.us.1 = phi i8 [ %i.aos, %bb.fh ], [ %i.aos, %bb.fg ], [ 0, %bb.ex ]
  %.1478.us.1 = phi i8 [ %.0477.us.1, %bb.fh ], [ %.0477.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.1476.us.1 = phi i8 [ %.0475.us.1, %bb.fh ], [ %.0475.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.1474.us.1 = phi i8 [ %.0473.us.1, %bb.fh ], [ %.0473.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.1472.us.1 = phi i8 [ %.0471.us.1, %bb.fh ], [ %.0471.us.1, %bb.fg ], [ 0, %bb.ex ]
  %.0470.us.1 = phi i32 [ %i.apd, %bb.fh ], [ 0, %bb.fg ], [ 0, %bb.ex ]
  %i.ape = sext i8 %.1474.us.1 to i32             ; 3 uses
  %i.apf = sext i8 %.1478.us.1 to i32             ; 2 uses
  %i.apg = shl nsw i32 %i.apf, 2                  ; 2 uses
  %i.aph = sub nsw i32 %i.ape, %i.apg             ; 2 uses
  %i.api = sext i8 %.1472.us.1 to i32             ; 3 uses
  %i.apj = sext i8 %.1476.us.1 to i32             ; 3 uses
  %i.apk = shl nsw i32 %i.apj, 2
  %i.apl = sub nsw i32 %i.api, %i.apk             ; 2 uses
  %i.apm = sub nsw i32 %i.ape, %i.apf
  %.tr.us.1 = trunc nsw i32 %i.apm to i16
  %i.apn = shl nsw i16 %.tr.us.1, 1               ; 2 uses
  %i.apo = sub nsw i32 %i.api, %i.apj
  %i.app = sext i8 %.0479.us.1 to i32
  %i.apq = shl nsw i32 %i.app, 2
  %.neg542.us.1 = mul nsw i32 %i.apj, 65531
  %i.apr = add nsw i32 %.neg542.us.1, %i.apq
  %i.aps = add nsw i32 %i.apr, %i.api             ; 2 uses
  %i.apt = trunc i32 %i.aps to i16
  %i.apu = add nsw i32 %i.apl, %i.aph             ; 2 uses
  %i.apv = trunc nsw i32 %i.apu to i16
  %i.apw = sub nsw i32 %i.apl, %i.aph             ; 2 uses
  %i.apx = trunc nsw i32 %i.apw to i16
  %i.apy = trunc nsw i32 %i.apo to i16            ; 2 uses
  %i.apz = add nsw i16 %i.apn, %i.apy             ; 2 uses
  %i.aqa = sub nsw i16 %i.apy, %i.apn             ; 2 uses
  %i.aqb = add nsw i32 %.0470.us.1, %i.apg
end_hunk_3
begin_hunk_4_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii:bb.a
  %i.awm = getelementptr inbounds nuw [2 x i8], ptr %i.awi, i64 %i.alk ; 2 uses
  %i.awn = getelementptr inbounds nuw [2 x i8], ptr %i.awi, i64 %i.alm ; 2 uses
  %sext = shl i32 %i.aps, 16
  %i.awo = ashr exact i32 %sext, 14               ; 2 uses
  %i.awp = trunc i32 %i.awo to i16
  %i.awq = sub i16 %i.asv, %i.awp                 ; 2 uses
  %i.awr = shl i16 %i.arh, 2
  %i.aws = sub i16 %i.auj, %i.awr                 ; 2 uses
  %i.awt = sub i16 %i.asv, %i.apt
  %i.awu = shl i16 %i.awt, 1                      ; 2 uses
  %i.awv = sub i16 %i.auj, %i.arh                 ; 2 uses
  %i.aww = shl i16 %i.aof, 2
  %.neg.us = mul i16 %i.arh, -5
  %i.awx = add i16 %.neg.us, %i.aww
  %i.awy = add i16 %i.awx, %i.auj
  store i16 %i.awy, ptr %i.awi, align 2, !tbaa !559
  %i.awz = add i16 %i.aws, %i.awq
  store i16 %i.awz, ptr %i.awj, align 2, !tbaa !559
  %i.axa = sub i16 %i.aws, %i.awq
  store i16 %i.axa, ptr %i.awk, align 2, !tbaa !559
  %i.axb = add i16 %i.awv, %i.awu
  store i16 %i.axb, ptr %i.awl, align 2, !tbaa !559
  %i.axc = sub i16 %i.awv, %i.awu
  store i16 %i.axc, ptr %i.awm, align 2, !tbaa !559
  %.neg541.us = mul i32 %i.asu, 65531
  %i.axd = add i32 %.neg541.us, %i.awo
  %i.axe = trunc i32 %i.axd to i16
  %i.axf = add i16 %i.avx, %i.axe
  store i16 %i.axf, ptr %i.awn, align 2, !tbaa !559
  %i.axg = getelementptr inbounds nuw [2 x i8], ptr %i.awi, i64 %i.alo ; 2 uses
  %i.axh = getelementptr inbounds nuw [2 x i8], ptr %i.awj, i64 %i.alo ; 2 uses
  %i.axi = getelementptr inbounds nuw [2 x i8], ptr %i.awk, i64 %i.alo ; 2 uses
  %i.axj = getelementptr inbounds nuw [2 x i8], ptr %i.awl, i64 %i.alo ; 2 uses
  %i.axk = getelementptr inbounds nuw [2 x i8], ptr %i.awm, i64 %i.alo ; 2 uses
  %i.axl = getelementptr inbounds nuw [2 x i8], ptr %i.awn, i64 %i.alo ; 2 uses
  %i.axm = shl nsw i32 %i.apu, 2                  ; 2 uses
  %i.axn = trunc nsw i32 %i.axm to i16
  %i.axo = sub nsw i16 %i.asx, %i.axn             ; 2 uses
  %i.axp = shl nsw i16 %i.arj, 2
  %i.axq = sub nsw i16 %i.aul, %i.axp             ; 2 uses
  %i.axr = sub nsw i16 %i.asx, %i.apv
  %i.axs = shl nsw i16 %i.axr, 1                  ; 2 uses
  %i.axt = sub nsw i16 %i.aul, %i.arj             ; 2 uses
  %i.axu = shl nsw i16 %i.aoh, 2
  %.neg.us.1 = mul nsw i16 %i.arj, -5
  %i.axv = add nsw i16 %.neg.us.1, %i.axu
  %i.axw = add nsw i16 %i.axv, %i.aul
  store i16 %i.axw, ptr %i.axg, align 2, !tbaa !559
  %i.axx = add nsw i16 %i.axq, %i.axo
  store i16 %i.axx, ptr %i.axh, align 2, !tbaa !559
  %i.axy = sub nsw i16 %i.axq, %i.axo
  store i16 %i.axy, ptr %i.axi, align 2, !tbaa !559
  %i.axz = add nsw i16 %i.axt, %i.axs
  store i16 %i.axz, ptr %i.axj, align 2, !tbaa !559
  %i.aya = sub nsw i16 %i.axt, %i.axs
  store i16 %i.aya, ptr %i.axk, align 2, !tbaa !559
  %.neg541.us.1 = mul nsw i32 %i.asw, 65531
  %i.ayb = add nsw i32 %.neg541.us.1, %i.axm
  %i.ayc = trunc i32 %i.ayb to i16
  %i.ayd = add i16 %i.avz, %i.ayc
  store i16 %i.ayd, ptr %i.axl, align 2, !tbaa !559
  %i.aye = getelementptr inbounds nuw [2 x i8], ptr %i.axg, i64 %i.alo ; 2 uses
  %i.ayf = getelementptr inbounds nuw [2 x i8], ptr %i.axh, i64 %i.alo ; 2 uses
  %i.ayg = getelementptr inbounds nuw [2 x i8], ptr %i.axi, i64 %i.alo ; 2 uses
  %i.ayh = getelementptr inbounds nuw [2 x i8], ptr %i.axj, i64 %i.alo ; 2 uses
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.axk, i64 %i.alo ; 2 uses
  %i.ayj = getelementptr inbounds nuw [2 x i8], ptr %i.axl, i64 %i.alo ; 2 uses
  %i.ayk = shl nsw i32 %i.apw, 2                  ; 2 uses
  %i.ayl = trunc nsw i32 %i.ayk to i16
  %i.aym = sub nsw i16 %i.asz, %i.ayl             ; 2 uses
  %i.ayn = shl nsw i16 %i.arl, 2
  %i.ayo = sub nsw i16 %i.aun, %i.ayn             ; 2 uses
  %i.ayp = sub nsw i16 %i.asz, %i.apx
  %i.ayq = shl nsw i16 %i.ayp, 1                  ; 2 uses
  %i.ayr = sub nsw i16 %i.aun, %i.arl             ; 2 uses
  %i.ays = shl nsw i16 %i.aoj, 2
  %.neg.us.2 = mul nsw i16 %i.arl, -5
  %i.ayt = add nsw i16 %.neg.us.2, %i.ays
  %i.ayu = add nsw i16 %i.ayt, %i.aun
  store i16 %i.ayu, ptr %i.aye, align 2, !tbaa !559
  %i.ayv = add nsw i16 %i.ayo, %i.aym
  store i16 %i.ayv, ptr %i.ayf, align 2, !tbaa !559
  %i.ayw = sub nsw i16 %i.ayo, %i.aym
  store i16 %i.ayw, ptr %i.ayg, align 2, !tbaa !559
  %i.ayx = add nsw i16 %i.ayr, %i.ayq
  store i16 %i.ayx, ptr %i.ayh, align 2, !tbaa !559
  %i.ayy = sub nsw i16 %i.ayr, %i.ayq
  store i16 %i.ayy, ptr %i.ayi, align 2, !tbaa !559
  %.neg541.us.2 = mul nsw i32 %i.asy, 65531
  %i.ayz = add nsw i32 %.neg541.us.2, %i.ayk
  %i.aza = trunc i32 %i.ayz to i16
  %i.azb = add i16 %i.awb, %i.aza
  store i16 %i.azb, ptr %i.ayj, align 2, !tbaa !559
  %i.azc = getelementptr inbounds nuw [2 x i8], ptr %i.aye, i64 %i.alo ; 2 uses
  %i.azd = getelementptr inbounds nuw [2 x i8], ptr %i.ayf, i64 %i.alo ; 2 uses
  %i.aze = getelementptr inbounds nuw [2 x i8], ptr %i.ayg, i64 %i.alo ; 2 uses
  %i.azf = getelementptr inbounds nuw [2 x i8], ptr %i.ayh, i64 %i.alo ; 2 uses
  %i.azg = getelementptr inbounds nuw [2 x i8], ptr %i.ayi, i64 %i.alo ; 2 uses
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %i.ayj, i64 %i.alo ; 2 uses
  %i.azi = zext i16 %i.atb to i32
  %i.azj = sext i16 %i.apz to i32
  %i.azk = shl nsw i32 %i.azj, 2                  ; 2 uses
  %i.azl = trunc nsw i32 %i.azk to i16
  %i.azm = sub nsw i16 %i.atb, %i.azl             ; 2 uses
  %i.azn = shl nsw i16 %i.arn, 2
  %i.azo = sub nsw i16 %i.aup, %i.azn             ; 2 uses
  %i.azp = sub nsw i16 %i.atb, %i.apz
  %i.azq = shl nsw i16 %i.azp, 1                  ; 2 uses
  %i.azr = sub nsw i16 %i.aup, %i.arn             ; 2 uses
  %i.azs = shl nsw i16 %i.aol, 2
  %.neg.us.3 = mul nsw i16 %i.arn, -5
  %i.azt = add nsw i16 %.neg.us.3, %i.azs
  %i.azu = add nsw i16 %i.azt, %i.aup
  store i16 %i.azu, ptr %i.azc, align 2, !tbaa !559
  %i.azv = add nsw i16 %i.azo, %i.azm
  store i16 %i.azv, ptr %i.azd, align 2, !tbaa !559
  %i.azw = sub nsw i16 %i.azo, %i.azm
  store i16 %i.azw, ptr %i.aze, align 2, !tbaa !559
  %i.azx = add nsw i16 %i.azr, %i.azq
  store i16 %i.azx, ptr %i.azf, align 2, !tbaa !559
  %i.azy = sub nsw i16 %i.azr, %i.azq
  store i16 %i.azy, ptr %i.azg, align 2, !tbaa !559
  %.neg541.us.3 = mul nuw i32 %i.azi, 65531
  %i.azz = add i32 %.neg541.us.3, %i.azk
  %i.baa = trunc i32 %i.azz to i16
  %i.bab = add i16 %i.awd, %i.baa
  store i16 %i.bab, ptr %i.azh, align 2, !tbaa !559
  %i.bac = getelementptr inbounds nuw [2 x i8], ptr %i.azc, i64 %i.alo ; 2 uses
  %i.bad = getelementptr inbounds nuw [2 x i8], ptr %i.azd, i64 %i.alo ; 2 uses
  %i.bae = getelementptr inbounds nuw [2 x i8], ptr %i.aze, i64 %i.alo ; 2 uses
  %i.baf = getelementptr inbounds nuw [2 x i8], ptr %i.azf, i64 %i.alo ; 2 uses
  %i.bag = getelementptr inbounds nuw [2 x i8], ptr %i.azg, i64 %i.alo ; 2 uses
  %i.bah = getelementptr inbounds nuw [2 x i8], ptr %i.azh, i64 %i.alo ; 2 uses
  %i.bai = zext i16 %i.atc to i32
  %i.baj = sext i16 %i.aqa to i32
  %i.bak = shl nsw i32 %i.baj, 2                  ; 2 uses
  %i.bal = trunc nsw i32 %i.bak to i16
  %i.bam = sub nsw i16 %i.atc, %i.bal             ; 2 uses
  %i.ban = shl nsw i16 %i.aro, 2
  %i.bao = sub nsw i16 %i.auq, %i.ban             ; 2 uses
  %i.bap = sub nsw i16 %i.atc, %i.aqa
  %i.baq = shl nsw i16 %i.bap, 1                  ; 2 uses
  %i.bar = sub nsw i16 %i.auq, %i.aro             ; 2 uses
  %i.bas = shl nsw i16 %i.aom, 2
  %.neg.us.4 = mul nsw i16 %i.aro, -5
  %i.bat = add nsw i16 %.neg.us.4, %i.bas
  %i.bau = add nsw i16 %i.bat, %i.auq
  store i16 %i.bau, ptr %i.bac, align 2, !tbaa !559
  %i.bav = add nsw i16 %i.bao, %i.bam
  store i16 %i.bav, ptr %i.bad, align 2, !tbaa !559
  %i.baw = sub nsw i16 %i.bao, %i.bam
  store i16 %i.baw, ptr %i.bae, align 2, !tbaa !559
  %i.bax = add nsw i16 %i.bar, %i.baq
  store i16 %i.bax, ptr %i.baf, align 2, !tbaa !559
  %i.bay = sub nsw i16 %i.bar, %i.baq
  store i16 %i.bay, ptr %i.bag, align 2, !tbaa !559
  %.neg541.us.4 = mul nuw i32 %i.bai, 65531
  %i.baz = add i32 %.neg541.us.4, %i.bak
  %i.bba = trunc i32 %i.baz to i16
  %i.bbb = add i16 %i.awe, %i.bba
  store i16 %i.bbb, ptr %i.bah, align 2, !tbaa !559
  %i.bbc = getelementptr inbounds nuw [2 x i8], ptr %i.bac, i64 %i.alo
  %i.bbd = getelementptr inbounds nuw [2 x i8], ptr %i.bad, i64 %i.alo
  %i.bbe = getelementptr inbounds nuw [2 x i8], ptr %i.bae, i64 %i.alo
  %i.bbf = getelementptr inbounds nuw [2 x i8], ptr %i.baf, i64 %i.alo
  %i.bbg = getelementptr inbounds nuw [2 x i8], ptr %i.bag, i64 %i.alo
  %i.bbh = getelementptr inbounds nuw [2 x i8], ptr %i.bah, i64 %i.alo
  %sext772 = shl i32 %i.aqc, 16
  %i.bbi = ashr exact i32 %sext772, 14            ; 2 uses
  %i.bbj = trunc i32 %i.bbi to i16
  %i.bbk = sub i16 %i.atf, %i.bbj                 ; 2 uses
  %i.bbl = shl i16 %i.arr, 2
  %i.bbm = sub i16 %i.aut, %i.bbl                 ; 2 uses
  %i.bbn = sub i16 %i.atf, %i.aqd
  %i.bbo = shl i16 %i.bbn, 1                      ; 2 uses
  %i.bbp = sub i16 %i.aut, %i.arr                 ; 2 uses
  %i.bbq = shl i16 %i.aop, 2
  %.neg.us.5 = mul i16 %i.arr, -5
  %i.bbr = add i16 %.neg.us.5, %i.bbq
  %i.bbs = add i16 %i.bbr, %i.aut
  store i16 %i.bbs, ptr %i.bbc, align 2, !tbaa !559
  %i.bbt = add i16 %i.bbm, %i.bbk
  store i16 %i.bbt, ptr %i.bbd, align 2, !tbaa !559
  %i.bbu = sub i16 %i.bbm, %i.bbk
  store i16 %i.bbu, ptr %i.bbe, align 2, !tbaa !559
  %i.bbv = add i16 %i.bbp, %i.bbo
  store i16 %i.bbv, ptr %i.bbf, align 2, !tbaa !559
  %i.bbw = sub i16 %i.bbp, %i.bbo
  store i16 %i.bbw, ptr %i.bbg, align 2, !tbaa !559
  %.neg541.us.5 = mul i32 %i.ate, 65531
  %i.bbx = add i32 %.neg541.us.5, %i.bbi
  %i.bby = trunc i32 %i.bbx to i16
  %i.bbz = add i16 %i.awh, %i.bby
  store i16 %i.bbz, ptr %i.bbh, align 2, !tbaa !559
  %indvars.iv.next724 = add nuw nsw i64 %indvars.iv723, 1 ; 2 uses
  %exitcond727.not = icmp eq i64 %indvars.iv.next724, %wide.trip.count726
  br i1 %exitcond727.not, label %._crit_edge.us683, label %_ZN4ncnn3MatD2Ev.exit.us, !llvm.loop !779

._crit_edge.us683:                                ; preds = %bb.ha
  %indvars.iv.next729 = add nsw i64 %indvars.iv728, 1 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next729, %i.amb
  br i1 %7, label %_ZN4ncnn3MatD2Ev.exit.lr.ph.us, label %._crit_edge680, !llvm.loop !780

._crit_edge680:                                   ; preds = %._crit_edge.us683, %.lr.ph679, %._crit_edge657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr noundef nonnull align 8 dereferenceable(72) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.j, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 1, ptr %i.f, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !9
  %i.k = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !9
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !9
  %i.n = load i32, ptr %i.d, align 4, !tbaa !9    ; 2 uses
  %.not68 = icmp sgt i32 %i.n, %i.m
  br i1 %.not68, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 52
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.dv, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !9     ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !9     ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !9     ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !9
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !781)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !10, !noalias !781 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !19, !noalias !781 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !571, !noalias !781
  %i.bi = load ptr, ptr %8, align 8, !tbaa !32, !noalias !781
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !18, !noalias !781
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !781 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !16, !noalias !781
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !541, !noalias !781
  store ptr %i.bo, ptr %11, align 8, !tbaa !32
  store ptr null, ptr %i.v, align 8, !tbaa !542
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !36
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !16
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !541
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !10
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !19
  store i32 1, ptr %i.ac, align 4, !tbaa !571
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !17
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !18
  %i.by = load i32, ptr %i.af, align 8, !tbaa !572, !noalias !781 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !572, !alias.scope !781
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !18, !alias.scope !781
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.cb = load i32, ptr %4, align 4, !tbaa !9
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !32, !noalias !784
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !18, !noalias !784
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !36, !noalias !784 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !16, !noalias !784
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !541, !noalias !784
  %i.cm = load i32, ptr %5, align 4, !tbaa !9
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !542
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !36
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !16
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !541
  %i.cp = load <2 x i32>, ptr %i.ag, align 4, !tbaa !9, !noalias !784
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !19, !noalias !784
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !10, !noalias !784
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !32
  %i.cy = shufflevector <2 x i32> %i.cp, <2 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.cz = shufflevector <4 x i32> <i32 2, i32 poison, i32 poison, i32 1>, <4 x i32> %i.cy, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  store <4 x i32> %i.cz, ptr %i.aq, align 8, !tbaa !9
  store i32 1, ptr %i.ar, align 8, !tbaa !17
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !18, !alias.scope !787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.da = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !9
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !9
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !9
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.da, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !542 ; 2 uses
  %.not.i38 = icmp eq ptr %i.db, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !541 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.de, null
end_hunk_4
