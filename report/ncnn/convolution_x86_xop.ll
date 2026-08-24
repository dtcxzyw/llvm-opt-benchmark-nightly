Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_xop?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 44
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
define hidden void @_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 18 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 18 uses
  %i.g = alloca ptr, align 8                      ; 18 uses
  %i.h = alloca i32, align 4                      ; 7 uses
  %i.i = alloca i32, align 4                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %7, ptr %i.a, align 4, !tbaa !9
  store i32 %8, ptr %i.b, align 4, !tbaa !9
  %i.k = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  br label %_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 19 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !16   ; 6 uses
  store i32 %i.o, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !17
  %i.r = mul nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.d, align 4, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 20 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !18
  %i.u = sext i32 %i.o to i64
  %i.v = mul i64 %i.t, %i.u                       ; 22 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10   ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !16 ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !17
  %i.ae = mul i32 %i.ad, %i.ab                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.af = mul nsw i32 %4, %3                      ; 4 uses
  store i32 %i.af, ptr %i.f, align 4, !tbaa !9
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp slt i32 %i.af, 0
  br i1 %i.ah, label %.noexc1713.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc1713.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %.noexc1714.i

.noexc1714.i:                                     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #22 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !9
  %i.al = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc1714.i
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !9
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc1714.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10.0.i = phi ptr [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ak, %.noexc1714.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.02743.0.i = phi ptr [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.aj, %.noexc1714.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store ptr %.sroa.02743.0.i, ptr %i.g, align 8, !tbaa !20
  %i.ao = mul nsw i32 %i.m, %6
  %i.ap = mul nsw i32 %5, %3
  %i.aq = sub i32 %i.ao, %i.ap
  %i.ar = icmp sgt i32 %4, 0
  %i.as = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i, label %.preheader2828.i.preheader, label %._crit_edge2874.split.i

.preheader2828.i.preheader:                       ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  %i.at = zext nneg i32 %3 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %3, 4
  %min.iters.check466 = icmp ult i32 %3, 32
  %i.au = and i64 %i.at, 28
  %n.vec = and i64 %i.at, 2147483616              ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = mul i32 %5, %i.av
  %i.ax = shl <8 x i32> %broadcast.splat, splat (i32 3) ; 5 uses
  %broadcast.splatinsert467 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat468 = shufflevector <8 x i32> %broadcast.splatinsert467, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ay = mul nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.op = add <8 x i32> %i.ax, %i.ax      ; 2 uses
  %invariant.op712.a = add <8 x i32> %invariant.op, %i.ax ; 2 uses
  %invariant.op713 = add <8 x i32> %invariant.op712.a, %i.ax
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec472 = and i64 %i.at, 2147483644           ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec472 to i32
  %i.ba = mul i32 %5, %i.az
  %broadcast.splatinsert473 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat474 = shufflevector <4 x i32> %broadcast.splatinsert473, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert477 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat478 = shufflevector <4 x i32> %broadcast.splatinsert477, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bb = mul nsw <4 x i32> %broadcast.splat478, <i32 0, i32 1, i32 2, i32 3>
  %i.bc = shl nsw i32 %5, 2
  %broadcast.splatinsert480 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat481 = shufflevector <4 x i32> %broadcast.splatinsert480, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n486 = icmp eq i64 %n.vec472, %i.at
  br label %iter.check

iter.check:                                       ; preds = %.preheader2828.i.preheader, %._crit_edge.i
  %.010942873.i = phi i32 [ %i.be, %._crit_edge.i ], [ 0, %.preheader2828.i.preheader ] ; 2 uses
  %.010972872.i = phi i32 [ %i.ci, %._crit_edge.i ], [ 0, %.preheader2828.i.preheader ] ; 5 uses
  %.011182871.i = phi i32 [ %i.cj, %._crit_edge.i ], [ 0, %.preheader2828.i.preheader ]
  %i.bd = sext i32 %.010942873.i to i64           ; 5 uses
  %i.be = add i32 %.010942873.i, %3               ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check466, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = add nsw i64 %n.vec, %i.bd
  %i.bg = add i32 %.010972872.i, %i.aw            ; 3 uses
  %broadcast.splatinsert469 = insertelement <8 x i32> poison, i32 %.010972872.i, i64 0
  %broadcast.splat470 = shufflevector <8 x i32> %broadcast.splatinsert469, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat470, %i.ay
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.02743.0.i, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, %i.ax
  %step.add.2.reass = add <8 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <8 x i32> %vec.ind, %invariant.op712.a
  %i.bh = mul nsw <8 x i32> %vec.ind, %broadcast.splat468
  %i.bi = mul nsw <8 x i32> %step.add, %broadcast.splat468
  %i.bj = mul nsw <8 x i32> %step.add.2.reass, %broadcast.splat468
  %i.bk = mul nsw <8 x i32> %step.add.3.reass, %broadcast.splat468
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %i.bh, ptr %gep, align 4, !tbaa !9
  store <8 x i32> %i.bi, ptr %i.bl, align 4, !tbaa !9
  store <8 x i32> %i.bj, ptr %i.bm, align 4, !tbaa !9
  store <8 x i32> %i.bk, ptr %i.bn, align 4, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <8 x i32> %vec.ind, %invariant.op713
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val471 = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ %.010972872.i, %vector.main.loop.iter.check ]
  %i.bp = add nsw i64 %n.vec472, %i.bd
  %i.bq = add i32 %.010972872.i, %i.ba            ; 2 uses
  %broadcast.splatinsert475 = insertelement <4 x i32> poison, i32 %bc.resume.val471, i64 0
  %broadcast.splat476 = shufflevector <4 x i32> %broadcast.splatinsert475, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction479 = add nsw <4 x i32> %broadcast.splat476, %i.bb
  %invariant.gep714 = getelementptr [4 x i8], ptr %.sroa.02743.0.i, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index482 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next484, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind483 = phi <4 x i32> [ %induction479, %vec.epilog.ph ], [ %vec.ind.next485, %vec.epilog.vector.body ] ; 2 uses
  %i.br = mul nsw <4 x i32> %vec.ind483, %broadcast.splat474
  %gep715 = getelementptr [4 x i8], ptr %invariant.gep714, i64 %index482
  store <4 x i32> %i.br, ptr %gep715, align 4, !tbaa !9
  %index.next484 = add nuw i64 %index482, 4       ; 2 uses
  %vec.ind.next485 = add nsw <4 x i32> %vec.ind483, %broadcast.splat481
  %i.bs = icmp eq i64 %index.next484, %n.vec472
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n486, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.110982868.i.ph = phi i32 [ %.010972872.i, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge2874.split.i:                          ; preds = %._crit_edge.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  store i32 0, ptr %i.i, align 4, !tbaa !9
  %i.bt = sdiv i32 %i.ae, 4
  store i32 %i.bt, ptr %i.h, align 4, !tbaa !9
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !27
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !9
  %i.bx = shl nsw i32 %i.bw, 2
  %i.by = load i32, ptr %i.i, align 4, !tbaa !9
  %i.bz = add nsw i32 %i.by, %i.bx                ; 3 uses
  store i32 %i.bz, ptr %i.i, align 4, !tbaa !9
  %i.ca = sub nsw i32 %i.ae, %i.bz                ; 2 uses
  %i.cb = sdiv i32 %i.ca, 2                       ; 2 uses
  store i32 %i.cb, ptr %i.h, align 4, !tbaa !9
  %i.cc = icmp sgt i32 %i.ca, 1
  br i1 %i.cc, label %.noexc1262.lr.ph.i, label %._crit_edge3235.i

.noexc1262.lr.ph.i:                               ; preds = %._crit_edge2874.split.i
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  br label %.noexc1262.i

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa465 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.cm, %vec.epilog.scalar.ph ]
  %i.ci = add nsw i32 %i.aq, %.lcssa465
  %i.cj = add nuw nsw i32 %.011182871.i, 1        ; 2 uses
  %exitcond3682.not.i = icmp eq i32 %i.cj, %4
  br i1 %exitcond3682.not.i, label %._crit_edge2874.split.i, label %iter.check, !llvm.loop !30

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.110982868.i = phi i32 [ %i.cm, %vec.epilog.scalar.ph ], [ %.110982868.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ck = mul nsw i32 %.110982868.i, %i.o
  %i.cl = getelementptr inbounds [4 x i8], ptr %.sroa.02743.0.i, i64 %indvars.iv.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !9
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cm = add nsw i32 %.110982868.i, %5           ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
end_hunk_0
begin_hunk_1_@_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.aio = sext i32 %i.ain to i64
  %i.aip = mul i64 %i.aik, %i.ail
  %i.aiq = mul i64 %i.aip, %i.aio
  %invariant.gep3160.i = getelementptr i8, ptr %i.aii, i64 %i.aiq
  %i.air = load i32, ptr %i.a, align 4, !tbaa !9
  %i.ais = mul i32 %i.aig, %i.aid
  %i.ait = mul i32 %i.ais, %i.air
  %i.aiu = sext i32 %i.ait to i64
  %invariant.gep3161.i = getelementptr i8, ptr %invariant.gep3160.i, i64 %i.aiu ; 2 uses
  %i.aiv = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.aiw = icmp sgt i32 %i.aiv, 0
  %i.aix = load ptr, ptr %i.g, align 8            ; 4 uses
  br i1 %i.aiw, label %.noexc1365.lr.ph.split.us.i, label %.noexc1365.preheader.i

.noexc1365.preheader.i:                           ; preds = %.noexc1365.lr.ph.i
  %i.aiy = and i32 %i.aie, 2147483640
  br label %._crit_edge3153.i

.noexc1365.lr.ph.split.us.i:                      ; preds = %.noexc1365.lr.ph.i
  %i.aiz = icmp eq i32 %i.aig, 8
  %i.aja = add nsw i32 %i.aiv, -1
  %i.ajb = zext nneg i32 %i.aja to i64
  %i.ajc = shl nuw nsw i64 %i.ajb, 4              ; 2 uses
  %wide.trip.count3761.i = zext nneg i32 %i.aiv to i64 ; 3 uses
  br i1 %i.aiz, label %.noexc1365.us.us.i.preheader, label %.noexc1365.us.i

.noexc1365.us.us.i.preheader:                     ; preds = %.noexc1365.lr.ph.split.us.i
  %i.ajd = zext nneg i32 %i.aie to i64
  %xtraiter = and i64 %wide.trip.count3761.i, 1
  %i.aje = icmp eq i32 %i.aiv, 1
  %unroll_iter = and i64 %wide.trip.count3761.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod576 = trunc i32 %i.aiv to i1
  br label %.noexc1365.us.us.i

.noexc1365.us.us.i:                               ; preds = %.noexc1365.us.us.i.preheader, %._crit_edge3142.split.us.us.us.i
  %indvars.iv = phi i64 [ 0, %.noexc1365.us.us.i.preheader ], [ %indvars.iv.next, %._crit_edge3142.split.us.us.us.i ] ; 2 uses
  %.011043151.us.us.i = phi ptr [ %i.ww, %.noexc1365.us.us.i.preheader ], [ %scevgep3759.i, %._crit_edge3142.split.us.us.us.i ] ; 3 uses
  %i.ajf = phi <4 x i32> [ zeroinitializer, %.noexc1365.us.us.i.preheader ], [ %.lcssa565, %._crit_edge3142.split.us.us.us.i ] ; 2 uses
  %i.ajg = phi <4 x i32> [ zeroinitializer, %.noexc1365.us.us.i.preheader ], [ %.lcssa566, %._crit_edge3142.split.us.us.us.i ] ; 2 uses
  %i.ajh = lshr exact i64 %indvars.iv, 3
  %.reass3159.us.us.i = mul i64 %factor.op.mul3158.i, %i.ajh
  %gep3162.us.us.i = getelementptr i8, ptr %invariant.gep3161.i, i64 %.reass3159.us.us.i ; 3 uses
  br i1 %i.aje, label %.epil.preheader, label %.noexc1365.us.us.i.new

.noexc1365.us.us.i.new:                           ; preds = %.noexc1365.us.us.i, %.noexc1365.us.us.i.new
  %indvars.iv3756.i = phi i64 [ %indvars.iv.next3757.i.1, %.noexc1365.us.us.i.new ], [ 0, %.noexc1365.us.us.i ] ; 3 uses
  %.111053139.us.us.us.i = phi ptr [ %i.akk, %.noexc1365.us.us.i.new ], [ %.011043151.us.us.i, %.noexc1365.us.us.i ] ; 3 uses
  %.127943138.us.us.us.i = phi <4 x i32> [ %i.akj, %.noexc1365.us.us.i.new ], [ %i.ajf, %.noexc1365.us.us.i ]
  %.127963137.us.us.us.i = phi <4 x i32> [ %i.akh, %.noexc1365.us.us.i.new ], [ %i.ajg, %.noexc1365.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %.noexc1365.us.us.i.new ], [ 0, %.noexc1365.us.us.i ]
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv3756.i
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !9
  %i.ajk = sext i32 %i.ajj to i64
  %i.ajl = getelementptr inbounds i8, ptr %gep3162.us.us.i, i64 %i.ajk
  %i.ajm = load <8 x i8>, ptr %i.ajl, align 1, !tbaa !46
  %i.ajn = sext <8 x i8> %i.ajm to <8 x i16>      ; 2 uses
  %i.ajo = load <16 x i8>, ptr %.111053139.us.us.us.i, align 16, !tbaa !46 ; 3 uses
  %.lobit.i1410.us.us.us.i = ashr <16 x i8> %i.ajo, splat (i8 7) ; 2 uses
  %i.ajp = shufflevector <16 x i8> %i.ajo, <16 x i8> %.lobit.i1410.us.us.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ajq = shufflevector <16 x i8> %i.ajo, <16 x i8> %.lobit.i1410.us.us.us.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ajr = bitcast <16 x i8> %i.ajp to <8 x i16>
  %i.ajs = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ajn, <8 x i16> %i.ajr, <4 x i32> %.127963137.us.us.us.i)
  %i.ajt = bitcast <16 x i8> %i.ajq to <8 x i16>
  %i.aju = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ajn, <8 x i16> %i.ajt, <4 x i32> %.127943138.us.us.us.i)
  %i.ajv = getelementptr inbounds nuw i8, ptr %.111053139.us.us.us.i, i64 16
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv3756.i
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajw, i64 4
  %i.ajy = load i32, ptr %i.ajx, align 4, !tbaa !9
  %i.ajz = sext i32 %i.ajy to i64
  %i.aka = getelementptr inbounds i8, ptr %gep3162.us.us.i, i64 %i.ajz
  %i.akb = load <8 x i8>, ptr %i.aka, align 1, !tbaa !46
  %i.akc = sext <8 x i8> %i.akb to <8 x i16>      ; 2 uses
  %i.akd = load <16 x i8>, ptr %i.ajv, align 16, !tbaa !46 ; 3 uses
  %.lobit.i1410.us.us.us.i.1 = ashr <16 x i8> %i.akd, splat (i8 7) ; 2 uses
  %i.ake = shufflevector <16 x i8> %i.akd, <16 x i8> %.lobit.i1410.us.us.us.i.1, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.akf = shufflevector <16 x i8> %i.akd, <16 x i8> %.lobit.i1410.us.us.us.i.1, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.akg = bitcast <16 x i8> %i.ake to <8 x i16>
  %i.akh = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.akc, <8 x i16> %i.akg, <4 x i32> %i.ajs) ; 3 uses
  %i.aki = bitcast <16 x i8> %i.akf to <8 x i16>
  %i.akj = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.akc, <8 x i16> %i.aki, <4 x i32> %i.aju) ; 3 uses
  %i.akk = getelementptr inbounds nuw i8, ptr %.111053139.us.us.us.i, i64 32 ; 2 uses
  %indvars.iv.next3757.i.1 = add nuw nsw i64 %indvars.iv3756.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3142.split.us.us.us.i.unr-lcssa, label %.noexc1365.us.us.i.new, !llvm.loop !82

._crit_edge3142.split.us.us.us.i.unr-lcssa:       ; preds = %.noexc1365.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge3142.split.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3142.split.us.us.us.i.unr-lcssa, %.noexc1365.us.us.i
  %indvars.iv3756.i.epil.init = phi i64 [ 0, %.noexc1365.us.us.i ], [ %indvars.iv.next3757.i.1, %._crit_edge3142.split.us.us.us.i.unr-lcssa ]
  %.111053139.us.us.us.i.epil.init = phi ptr [ %.011043151.us.us.i, %.noexc1365.us.us.i ], [ %i.akk, %._crit_edge3142.split.us.us.us.i.unr-lcssa ]
  %.127943138.us.us.us.i.epil.init = phi <4 x i32> [ %i.ajf, %.noexc1365.us.us.i ], [ %i.akj, %._crit_edge3142.split.us.us.us.i.unr-lcssa ]
  %.127963137.us.us.us.i.epil.init = phi <4 x i32> [ %i.ajg, %.noexc1365.us.us.i ], [ %i.akh, %._crit_edge3142.split.us.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod576)
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv3756.i.epil.init
  %i.akm = load i32, ptr %i.akl, align 4, !tbaa !9
  %i.akn = sext i32 %i.akm to i64
  %i.ako = getelementptr inbounds i8, ptr %gep3162.us.us.i, i64 %i.akn
  %i.akp = load <8 x i8>, ptr %i.ako, align 1, !tbaa !46
  %i.akq = sext <8 x i8> %i.akp to <8 x i16>      ; 2 uses
  %i.akr = load <16 x i8>, ptr %.111053139.us.us.us.i.epil.init, align 16, !tbaa !46 ; 3 uses
  %.lobit.i1410.us.us.us.i.epil = ashr <16 x i8> %i.akr, splat (i8 7) ; 2 uses
  %i.aks = shufflevector <16 x i8> %i.akr, <16 x i8> %.lobit.i1410.us.us.us.i.epil, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.akt = shufflevector <16 x i8> %i.akr, <16 x i8> %.lobit.i1410.us.us.us.i.epil, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aku = bitcast <16 x i8> %i.aks to <8 x i16>
  %i.akv = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.akq, <8 x i16> %i.aku, <4 x i32> %.127963137.us.us.us.i.epil.init)
  %i.akw = bitcast <16 x i8> %i.akt to <8 x i16>
  %i.akx = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.akq, <8 x i16> %i.akw, <4 x i32> %.127943138.us.us.us.i.epil.init)
  br label %._crit_edge3142.split.us.us.us.i

._crit_edge3142.split.us.us.us.i:                 ; preds = %._crit_edge3142.split.us.us.us.i.unr-lcssa, %.epil.preheader
  %.lcssa566 = phi <4 x i32> [ %i.akh, %._crit_edge3142.split.us.us.us.i.unr-lcssa ], [ %i.akv, %.epil.preheader ] ; 2 uses
  %.lcssa565 = phi <4 x i32> [ %i.akj, %._crit_edge3142.split.us.us.us.i.unr-lcssa ], [ %i.akx, %.epil.preheader ] ; 2 uses
  %scevgep3758.i = getelementptr i8, ptr %.011043151.us.us.i, i64 16
  %scevgep3759.i = getelementptr i8, ptr %scevgep3758.i, i64 %i.ajc ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %i.aky = or disjoint i64 %indvars.iv.next, 7
  %i.akz = icmp samesign ult i64 %i.aky, %i.ajd
  br i1 %i.akz, label %.noexc1365.us.us.i, label %._crit_edge3153.loopexit.i, !llvm.loop !83

.noexc1365.us.i:                                  ; preds = %.noexc1365.lr.ph.split.us.i, %._crit_edge3142.split.us3168.i
  %.011013152.us.i = phi i32 [ %i.amp, %._crit_edge3142.split.us3168.i ], [ 0, %.noexc1365.lr.ph.split.us.i ] ; 2 uses
  %.011043151.us.i = phi ptr [ %scevgep3752.i, %._crit_edge3142.split.us3168.i ], [ %i.ww, %.noexc1365.lr.ph.split.us.i ] ; 2 uses
  %i.ala = phi <4 x i32> [ %i.amn, %._crit_edge3142.split.us3168.i ], [ zeroinitializer, %.noexc1365.lr.ph.split.us.i ]
  %i.alb = phi <4 x i32> [ %i.aml, %._crit_edge3142.split.us3168.i ], [ zeroinitializer, %.noexc1365.lr.ph.split.us.i ]
  %i.alc = sdiv i32 %.011013152.us.i, %i.aig
  %i.ald = sext i32 %i.alc to i64
  %.reass3159.us.i = mul i64 %factor.op.mul3158.i, %i.ald
  %gep3162.us.i = getelementptr i8, ptr %invariant.gep3161.i, i64 %.reass3159.us.i
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.noexc1365.us.i
  %indvars.iv3749.i = phi i64 [ 0, %.noexc1365.us.i ], [ %indvars.iv.next3750.i, %bb.h ] ; 2 uses
  %.111053139.us3164.i = phi ptr [ %.011043151.us.i, %.noexc1365.us.i ], [ %i.amo, %bb.h ] ; 2 uses
  %.127943138.us3165.i = phi <4 x i32> [ %i.ala, %.noexc1365.us.i ], [ %i.amn, %bb.h ]
  %.127963137.us3166.i = phi <4 x i32> [ %i.alb, %.noexc1365.us.i ], [ %i.aml, %bb.h ]
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.aix, i64 %indvars.iv3749.i
  %i.alf = load i32, ptr %i.ale, align 4, !tbaa !9
  %i.alg = sext i32 %i.alf to i64
  %i.alh = getelementptr inbounds i8, ptr %gep3162.us.i, i64 %i.alg ; 8 uses
  %i.ali = load i8, ptr %i.alh, align 1, !tbaa !46
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.dq
  %i.alk = load i8, ptr %i.alj, align 1, !tbaa !46
  %i.all = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.wx
  %i.alm = load i8, ptr %i.all, align 1, !tbaa !46
  %i.aln = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.wy
  %i.alo = load i8, ptr %i.aln, align 1, !tbaa !46
  %i.alp = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.wz
  %i.alq = load i8, ptr %i.alp, align 1, !tbaa !46
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.xa
  %i.als = load i8, ptr %i.alr, align 1, !tbaa !46
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.xb
  %i.alu = load i8, ptr %i.alt, align 1, !tbaa !46
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alh, i64 %i.xc
  %i.alw = load i8, ptr %i.alv, align 1, !tbaa !46
  %i.alx = insertelement <16 x i8> poison, i8 %i.ali, i64 0
  %i.aly = insertelement <16 x i8> %i.alx, i8 %i.alk, i64 1
  %i.alz = insertelement <16 x i8> %i.aly, i8 %i.alm, i64 2
  %i.ama = insertelement <16 x i8> %i.alz, i8 %i.alo, i64 3
  %i.amb = insertelement <16 x i8> %i.ama, i8 %i.alq, i64 4
  %i.amc = insertelement <16 x i8> %i.amb, i8 %i.als, i64 5
  %i.amd = insertelement <16 x i8> %i.amc, i8 %i.alu, i64 6
  %i.ame = insertelement <16 x i8> %i.amd, i8 %i.alw, i64 7
  %i.amf = shufflevector <16 x i8> %i.ame, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.amg = sext <8 x i8> %i.amf to <8 x i16>      ; 2 uses
  %i.amh = load <16 x i8>, ptr %.111053139.us3164.i, align 16, !tbaa !46 ; 3 uses
  %.lobit.i1410.us3167.i = ashr <16 x i8> %i.amh, splat (i8 7) ; 2 uses
  %i.ami = shufflevector <16 x i8> %i.amh, <16 x i8> %.lobit.i1410.us3167.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.amj = shufflevector <16 x i8> %i.amh, <16 x i8> %.lobit.i1410.us3167.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.amk = bitcast <16 x i8> %i.ami to <8 x i16>
  %i.aml = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.amg, <8 x i16> %i.amk, <4 x i32> %.127963137.us3166.i) ; 3 uses
  %i.amm = bitcast <16 x i8> %i.amj to <8 x i16>
  %i.amn = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.amg, <8 x i16> %i.amm, <4 x i32> %.127943138.us3165.i) ; 3 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %.111053139.us3164.i, i64 16
  %indvars.iv.next3750.i = add nuw nsw i64 %indvars.iv3749.i, 1 ; 2 uses
  %exitcond3755.not.i = icmp eq i64 %indvars.iv.next3750.i, %wide.trip.count3761.i
  br i1 %exitcond3755.not.i, label %._crit_edge3142.split.us3168.i, label %bb.h, !llvm.loop !82

._crit_edge3142.split.us3168.i:                   ; preds = %bb.h
  %scevgep3751.i = getelementptr i8, ptr %.011043151.us.i, i64 16
  %scevgep3752.i = getelementptr i8, ptr %scevgep3751.i, i64 %i.ajc ; 2 uses
  %i.amp = add nuw nsw i32 %.011013152.us.i, 8    ; 2 uses
  %i.amq = or disjoint i32 %i.amp, 7
  %i.amr = icmp slt i32 %i.amq, %i.aie
  br i1 %i.amr, label %.noexc1365.us.i, label %._crit_edge3153.loopexit3544.i, !llvm.loop !83

._crit_edge3153.loopexit.i:                       ; preds = %._crit_edge3142.split.us.us.us.i
  %i.ams = and i32 %i.aie, 2147483640
  br label %._crit_edge3153.i

._crit_edge3153.loopexit3544.i:                   ; preds = %._crit_edge3142.split.us3168.i
  %i.amt = and i32 %i.aie, 2147483640
  br label %._crit_edge3153.i

._crit_edge3153.i:                                ; preds = %._crit_edge3153.loopexit3544.i, %._crit_edge3153.loopexit.i, %.noexc1365.preheader.i, %.noexc1367.i
  %i.amu = phi <4 x i32> [ zeroinitializer, %.noexc1367.i ], [ %.lcssa566, %._crit_edge3153.loopexit.i ], [ %i.aml, %._crit_edge3153.loopexit3544.i ], [ zeroinitializer, %.noexc1365.preheader.i ]
  %i.amv = phi <4 x i32> [ zeroinitializer, %.noexc1367.i ], [ %.lcssa565, %._crit_edge3153.loopexit.i ], [ %i.amn, %._crit_edge3153.loopexit3544.i ], [ zeroinitializer, %.noexc1365.preheader.i ]
  %.01104.lcssa.i = phi ptr [ %i.ww, %.noexc1367.i ], [ %scevgep3759.i, %._crit_edge3153.loopexit.i ], [ %scevgep3752.i, %._crit_edge3153.loopexit3544.i ], [ %i.ww, %.noexc1365.preheader.i ] ; 3 uses
  %.01101.lcssa.i = phi i32 [ 0, %.noexc1367.i ], [ %i.ams, %._crit_edge3153.loopexit.i ], [ %i.amt, %._crit_edge3153.loopexit3544.i ], [ %i.aiy, %.noexc1365.preheader.i ] ; 5 uses
  %i.amw = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.amu) ; 3 uses
  %i.amx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.amv) ; 3 uses
  %i.amy = or disjoint i32 %.01101.lcssa.i, 1
  %i.amz = icmp slt i32 %i.amy, %i.aie
  br i1 %i.amz, label %.noexc1363.lr.ph.i, label %.preheader2823.i

.noexc1363.lr.ph.i:                               ; preds = %._crit_edge3153.i
  %i.ana = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !84
  %i.anb = load ptr, ptr %0, align 8, !tbaa !32, !noalias !84
  %i.anc = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !84
  %i.and = load i64, ptr %i.ch, align 8, !tbaa !36, !noalias !84 ; 2 uses
  %factor.op.mul3198.i = mul i64 %i.and, %i.anc
  %i.ane = sext i32 %i.ana to i64
  %i.anf = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ang = mul nsw i32 %i.anf, %i.aic
  %i.anh = sext i32 %i.ang to i64
  %i.ani = mul i64 %i.and, %i.ane
  %i.anj = mul i64 %i.ani, %i.anh
  %invariant.gep3200.i = getelementptr i8, ptr %i.anb, i64 %i.anj
  %i.ank = load i32, ptr %i.a, align 4, !tbaa !9
  %i.anl = mul nsw i32 %i.ank, %i.aid
  %i.anm = sext i32 %i.anl to i64
  %invariant.gep3201.i = getelementptr i8, ptr %invariant.gep3200.i, i64 %i.anm
  %i.ann = load i32, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.ano = icmp sgt i32 %i.ann, 0
  %i.anp = load ptr, ptr %i.g, align 8
  br i1 %i.ano, label %.noexc1363.us.preheader.i, label %.noexc1363.preheader.i

.noexc1363.preheader.i:                           ; preds = %.noexc1363.lr.ph.i
  %i.anq = or disjoint i32 %.01101.lcssa.i, 2
  %10 = add nsw i32 %i.aie, -2
  %reass.sub = sub nsw i32 %10, %.01101.lcssa.i
  %i.anr = and i32 %reass.sub, -2
  %i.ans = add i32 %i.anq, %i.anr
  br label %.preheader2823.i

.noexc1363.us.preheader.i:                        ; preds = %.noexc1363.lr.ph.i
  %i.ant = add nsw i32 %i.ann, -1
  %i.anu = zext nneg i32 %i.ant to i64
  %i.anv = shl nuw nsw i64 %i.anu, 2
  %i.anw = zext nneg i32 %.01101.lcssa.i to i64
  %wide.trip.count3768.i = zext nneg i32 %i.ann to i64
  br label %.noexc1363.us.i

.noexc1363.us.i:                                  ; preds = %._crit_edge3186.us.i, %.noexc1363.us.preheader.i
  %indvars.iv3770.i = phi i64 [ %i.anw, %.noexc1363.us.preheader.i ], [ %indvars.iv.next3771.i, %._crit_edge3186.us.i ] ; 2 uses
  %.211063192.us.i = phi ptr [ %.01104.lcssa.i, %.noexc1363.us.preheader.i ], [ %scevgep3766.i, %._crit_edge3186.us.i ] ; 2 uses
  %.011103191.us.i = phi i32 [ %i.amx, %.noexc1363.us.preheader.i ], [ %i.aoy, %._crit_edge3186.us.i ]
  %.011143190.us.i = phi i32 [ %i.amw, %.noexc1363.us.preheader.i ], [ %i.aot, %._crit_edge3186.us.i ]
  %.reass3199.us.i = mul i64 %factor.op.mul3198.i, %indvars.iv3770.i
  %gep3202.us.i = getelementptr i8, ptr %invariant.gep3201.i, i64 %.reass3199.us.i
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.noexc1363.us.i
  %indvars.iv3763.i = phi i64 [ 0, %.noexc1363.us.i ], [ %indvars.iv.next3764.i, %bb.i ] ; 2 uses
  %.311073183.us.i = phi ptr [ %.211063192.us.i, %.noexc1363.us.i ], [ %i.aoz, %bb.i ] ; 5 uses
  %.111113182.us.i = phi i32 [ %.011103191.us.i, %.noexc1363.us.i ], [ %i.aoy, %bb.i ]
  %.111153181.us.i = phi i32 [ %.011143190.us.i, %.noexc1363.us.i ], [ %i.aot, %bb.i ]
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %i.anp, i64 %indvars.iv3763.i
  %i.any = load i32, ptr %i.anx, align 4, !tbaa !9
  %i.anz = sext i32 %i.any to i64
  %i.aoa = getelementptr inbounds i8, ptr %gep3202.us.i, i64 %i.anz ; 2 uses
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !46
  %i.aoc = sext i8 %i.aob to i32                  ; 2 uses
  %i.aod = load i8, ptr %.311073183.us.i, align 1, !tbaa !46
  %i.aoe = sext i8 %i.aod to i32
  %i.aof = mul nsw i32 %i.aoe, %i.aoc
  %i.aog = add nsw i32 %i.aof, %.111153181.us.i
  %i.aoh = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 1
  %i.aoi = load i8, ptr %i.aoh, align 1, !tbaa !46
  %i.aoj = sext i8 %i.aoi to i32
  %i.aok = mul nsw i32 %i.aoj, %i.aoc
  %i.aol = add nsw i32 %i.aok, %.111113182.us.i
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoa, i64 %i.dq
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !46
  %i.aoo = sext i8 %i.aon to i32                  ; 2 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 2
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !46
  %i.aor = sext i8 %i.aoq to i32
  %i.aos = mul nsw i32 %i.aor, %i.aoo
  %i.aot = add nsw i32 %i.aog, %i.aos             ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 3
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !46
  %i.aow = sext i8 %i.aov to i32
  %i.aox = mul nsw i32 %i.aow, %i.aoo
  %i.aoy = add nsw i32 %i.aol, %i.aox             ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 4
  %indvars.iv.next3764.i = add nuw nsw i64 %indvars.iv3763.i, 1 ; 2 uses
  %exitcond3769.not.i = icmp eq i64 %indvars.iv.next3764.i, %wide.trip.count3768.i
  br i1 %exitcond3769.not.i, label %._crit_edge3186.us.i, label %bb.i, !llvm.loop !87

._crit_edge3186.us.i:                             ; preds = %bb.i
  %scevgep3765.i = getelementptr i8, ptr %.211063192.us.i, i64 4
  %scevgep3766.i = getelementptr i8, ptr %scevgep3765.i, i64 %i.anv ; 2 uses
  %indvars.iv.next3771.i = add nuw nsw i64 %indvars.iv3770.i, 2 ; 2 uses
  %i.apa = trunc i64 %indvars.iv.next3771.i to i32 ; 2 uses
  %i.apb = or i32 %i.apa, 1
  %i.apc = icmp slt i32 %i.apb, %i.aie
  br i1 %i.apc, label %.noexc1363.us.i, label %.preheader2823.i, !llvm.loop !88

.preheader2823.i:                                 ; preds = %._crit_edge3186.us.i, %.noexc1363.preheader.i, %._crit_edge3153.i
  %.01114.lcssa.i = phi i32 [ %i.amw, %._crit_edge3153.i ], [ %i.amw, %.noexc1363.preheader.i ], [ %i.aot, %._crit_edge3186.us.i ] ; 3 uses
  %.01110.lcssa.i = phi i32 [ %i.amx, %._crit_edge3153.i ], [ %i.amx, %.noexc1363.preheader.i ], [ %i.aoy, %._crit_edge3186.us.i ] ; 3 uses
  %.21106.lcssa.i = phi ptr [ %.01104.lcssa.i, %._crit_edge3153.i ], [ %.01104.lcssa.i, %.noexc1363.preheader.i ], [ %scevgep3766.i, %._crit_edge3186.us.i ]
  %.11102.lcssa.i = phi i32 [ %.01101.lcssa.i, %._crit_edge3153.i ], [ %i.ans, %.noexc1363.preheader.i ], [ %i.apa, %._crit_edge3186.us.i ] ; 2 uses
  %i.apd = icmp slt i32 %.11102.lcssa.i, %i.aie
  br i1 %i.apd, label %.noexc1361.lr.ph.i, label %._crit_edge3220.i

.noexc1361.lr.ph.i:                               ; preds = %.preheader2823.i
  %i.ape = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !89
  %i.apf = load ptr, ptr %0, align 8, !tbaa !32, !noalias !89
  %i.apg = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !89
  %i.aph = load i64, ptr %i.ch, align 8, !tbaa !36, !noalias !89 ; 2 uses
  %factor.op.mul3223.i = mul i64 %i.aph, %i.apg
  %i.api = sext i32 %i.ape to i64
  %i.apj = load i32, ptr %i.b, align 4, !tbaa !9
  %i.apk = mul nsw i32 %i.apj, %i.aic
  %i.apl = sext i32 %i.apk to i64
  %i.apm = mul i64 %i.aph, %i.api
  %i.apn = mul i64 %i.apm, %i.apl
  %invariant.gep3225.i = getelementptr i8, ptr %i.apf, i64 %i.apn
  %i.apo = load i32, ptr %i.a, align 4, !tbaa !9
  %i.app = mul nsw i32 %i.apo, %i.aid
  %i.apq = sext i32 %i.app to i64
  %invariant.gep3226.i = getelementptr i8, ptr %invariant.gep3225.i, i64 %i.apq
  %i.apr = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.aps = icmp sgt i32 %i.apr, 0
  %i.apt = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.aps, label %.noexc1361.us.preheader.i, label %._crit_edge3220.i

.noexc1361.us.preheader.i:                        ; preds = %.noexc1361.lr.ph.i
  %i.apu = add nsw i32 %i.apr, -1
  %i.apv = zext nneg i32 %i.apu to i64
  %i.apw = shl nuw nsw i64 %i.apv, 1
  %i.apx = zext i32 %.11102.lcssa.i to i64
  %wide.trip.count3778.i = zext nneg i32 %i.apr to i64 ; 2 uses
  %xtraiter578 = and i64 %wide.trip.count3778.i, 1
  %i.apy = icmp eq i32 %i.apr, 1
  %unroll_iter583 = and i64 %wide.trip.count3778.i, 2147483646
  %lcmp.mod579.not = icmp eq i64 %xtraiter578, 0
  %lcmp.mod582 = trunc i32 %i.apr to i1
  br label %.noexc1361.us.i

.noexc1361.us.i:                                  ; preds = %._crit_edge3212.us.i, %.noexc1361.us.preheader.i
  %indvars.iv3780.i = phi i64 [ %i.apx, %.noexc1361.us.preheader.i ], [ %indvars.iv.next3781.i, %._crit_edge3212.us.i ] ; 2 uses
  %.411083218.us.i = phi ptr [ %.21106.lcssa.i, %.noexc1361.us.preheader.i ], [ %scevgep3776.i, %._crit_edge3212.us.i ] ; 3 uses
  %.211123217.us.i = phi i32 [ %.01110.lcssa.i, %.noexc1361.us.preheader.i ], [ %.lcssa570, %._crit_edge3212.us.i ] ; 2 uses
  %.211163216.us.i = phi i32 [ %.01114.lcssa.i, %.noexc1361.us.preheader.i ], [ %.lcssa571, %._crit_edge3212.us.i ] ; 2 uses
  %.reass3224.us.i = mul i64 %factor.op.mul3223.i, %indvars.iv3780.i
  %gep3227.us.i = getelementptr i8, ptr %invariant.gep3226.i, i64 %.reass3224.us.i ; 3 uses
  br i1 %i.apy, label %.epil.preheader577, label %.noexc1361.us.i.new

.noexc1361.us.i.new:                              ; preds = %.noexc1361.us.i, %.noexc1361.us.i.new
  %indvars.iv3773.i = phi i64 [ %indvars.iv.next3774.i.1, %.noexc1361.us.i.new ], [ 0, %.noexc1361.us.i ] ; 3 uses
  %.511093209.us.i = phi ptr [ %i.arf, %.noexc1361.us.i.new ], [ %.411083218.us.i, %.noexc1361.us.i ] ; 5 uses
  %.311133208.us.i = phi i32 [ %i.are, %.noexc1361.us.i.new ], [ %.211123217.us.i, %.noexc1361.us.i ]
  %.311173207.us.i = phi i32 [ %i.aqz, %.noexc1361.us.i.new ], [ %.211163216.us.i, %.noexc1361.us.i ]
  %niter584 = phi i64 [ %niter584.next.1, %.noexc1361.us.i.new ], [ 0, %.noexc1361.us.i ]
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %indvars.iv3773.i
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !9
  %i.aqb = sext i32 %i.aqa to i64
  %i.aqc = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.aqb
  %i.aqd = load i8, ptr %i.aqc, align 1, !tbaa !46
  %i.aqe = sext i8 %i.aqd to i32                  ; 2 uses
  %i.aqf = load i8, ptr %.511093209.us.i, align 1, !tbaa !46
  %i.aqg = sext i8 %i.aqf to i32
  %i.aqh = mul nsw i32 %i.aqg, %i.aqe
  %i.aqi = add nsw i32 %i.aqh, %.311173207.us.i
  %i.aqj = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 1
  %i.aqk = load i8, ptr %i.aqj, align 1, !tbaa !46
  %i.aql = sext i8 %i.aqk to i32
  %i.aqm = mul nsw i32 %i.aql, %i.aqe
  %i.aqn = add nsw i32 %i.aqm, %.311133208.us.i
  %i.aqo = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 2
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %indvars.iv3773.i
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aqp, i64 4
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !9
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.aqs
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !46
  %i.aqv = sext i8 %i.aqu to i32                  ; 2 uses
  %i.aqw = load i8, ptr %i.aqo, align 1, !tbaa !46
  %i.aqx = sext i8 %i.aqw to i32
  %i.aqy = mul nsw i32 %i.aqx, %i.aqv
  %i.aqz = add nsw i32 %i.aqy, %i.aqi             ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 3
  %i.arb = load i8, ptr %i.ara, align 1, !tbaa !46
  %i.arc = sext i8 %i.arb to i32
  %i.ard = mul nsw i32 %i.arc, %i.aqv
  %i.are = add nsw i32 %i.ard, %i.aqn             ; 3 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 4 ; 2 uses
  %indvars.iv.next3774.i.1 = add nuw nsw i64 %indvars.iv3773.i, 2 ; 2 uses
  %niter584.next.1 = add i64 %niter584, 2         ; 2 uses
  %niter584.ncmp.1 = icmp eq i64 %niter584.next.1, %unroll_iter583
  br i1 %niter584.ncmp.1, label %._crit_edge3212.us.i.unr-lcssa, label %.noexc1361.us.i.new, !llvm.loop !92

._crit_edge3212.us.i.unr-lcssa:                   ; preds = %.noexc1361.us.i.new
  br i1 %lcmp.mod579.not, label %._crit_edge3212.us.i, label %.epil.preheader577

.epil.preheader577:                               ; preds = %._crit_edge3212.us.i.unr-lcssa, %.noexc1361.us.i
  %indvars.iv3773.i.epil.init = phi i64 [ 0, %.noexc1361.us.i ], [ %indvars.iv.next3774.i.1, %._crit_edge3212.us.i.unr-lcssa ]
  %.511093209.us.i.epil.init = phi ptr [ %.411083218.us.i, %.noexc1361.us.i ], [ %i.arf, %._crit_edge3212.us.i.unr-lcssa ] ; 2 uses
  %.311133208.us.i.epil.init = phi i32 [ %.211123217.us.i, %.noexc1361.us.i ], [ %i.are, %._crit_edge3212.us.i.unr-lcssa ]
  %.311173207.us.i.epil.init = phi i32 [ %.211163216.us.i, %.noexc1361.us.i ], [ %i.aqz, %._crit_edge3212.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod582)
  %i.arg = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %indvars.iv3773.i.epil.init
  %i.arh = load i32, ptr %i.arg, align 4, !tbaa !9
  %i.ari = sext i32 %i.arh to i64
  %i.arj = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.ari
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !46
  %i.arl = sext i8 %i.ark to i32                  ; 2 uses
  %i.arm = load i8, ptr %.511093209.us.i.epil.init, align 1, !tbaa !46
  %i.arn = sext i8 %i.arm to i32
  %i.aro = mul nsw i32 %i.arn, %i.arl
  %i.arp = add nsw i32 %i.aro, %.311173207.us.i.epil.init
  %i.arq = getelementptr inbounds nuw i8, ptr %.511093209.us.i.epil.init, i64 1
  %i.arr = load i8, ptr %i.arq, align 1, !tbaa !46
  %i.ars = sext i8 %i.arr to i32
  %i.art = mul nsw i32 %i.ars, %i.arl
  %i.aru = add nsw i32 %i.art, %.311133208.us.i.epil.init
  br label %._crit_edge3212.us.i

._crit_edge3212.us.i:                             ; preds = %._crit_edge3212.us.i.unr-lcssa, %.epil.preheader577
  %.lcssa571 = phi i32 [ %i.aqz, %._crit_edge3212.us.i.unr-lcssa ], [ %i.arp, %.epil.preheader577 ] ; 2 uses
  %.lcssa570 = phi i32 [ %i.are, %._crit_edge3212.us.i.unr-lcssa ], [ %i.aru, %.epil.preheader577 ] ; 2 uses
  %scevgep3775.i = getelementptr i8, ptr %.411083218.us.i, i64 2
  %scevgep3776.i = getelementptr i8, ptr %scevgep3775.i, i64 %i.apw
  %indvars.iv.next3781.i = add nuw nsw i64 %indvars.iv3780.i, 1 ; 2 uses
  %i.arv = trunc nuw i64 %indvars.iv.next3781.i to i32
  %i.arw = icmp sgt i32 %i.aie, %i.arv
  br i1 %i.arw, label %.noexc1361.us.i, label %._crit_edge3220.i, !llvm.loop !93

._crit_edge3220.i:                                ; preds = %._crit_edge3212.us.i, %.noexc1361.lr.ph.i, %.preheader2823.i
  %.21116.lcssa.i = phi i32 [ %.01114.lcssa.i, %.preheader2823.i ], [ %.01114.lcssa.i, %.noexc1361.lr.ph.i ], [ %.lcssa571, %._crit_edge3212.us.i ]
end_hunk_1
begin_hunk_2_@_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.bto = getelementptr inbounds nuw i8, ptr %.110913448.i, i64 4
  store i32 %.21002.lcssa.i, ptr %i.bto, align 4, !tbaa !9
  %i.btp = getelementptr inbounds nuw i8, ptr %.110913448.i, i64 8 ; 2 uses
  %i.btq = add nuw nsw i32 %.110883449.i, 2       ; 3 uses
  %i.btr = or disjoint i32 %i.btq, 1              ; 2 uses
  %i.bts = icmp slt i32 %i.btr, %i.ct
  br i1 %i.bts, label %.noexc1333.i, label %.preheader2821.i, !llvm.loop !139

.noexc1319.i:                                     ; preds = %._crit_edge3517.i, %.noexc1319.lr.ph.i
  %.210893526.i = phi i32 [ %.11088.lcssa.i, %.noexc1319.lr.ph.i ], [ %i.ceh, %._crit_edge3517.i ] ; 3 uses
  %.210923525.i = phi ptr [ %.11091.lcssa.i, %.noexc1319.lr.ph.i ], [ %i.ceg, %._crit_edge3517.i ] ; 2 uses
  %i.btt = sdiv i32 %.210893526.i, %i.x           ; 3 uses
  %i.btu = srem i32 %.210893526.i, %i.x           ; 3 uses
  %i.btv = load i32, ptr %i.d, align 4, !tbaa !9  ; 11 uses
  %i.btw = icmp sgt i32 %i.btv, 7
  br i1 %i.btw, label %.noexc1317.lr.ph.i, label %._crit_edge3464.i

.noexc1317.lr.ph.i:                               ; preds = %.noexc1319.i
  %i.btx = load i32, ptr %i.c, align 4, !tbaa !9  ; 3 uses
  %i.bty = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !140
  %i.btz = load ptr, ptr %0, align 8, !tbaa !32, !noalias !140
  %i.bua = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !140
  %i.bub = load i64, ptr %i.cx, align 8, !tbaa !36, !noalias !140 ; 2 uses
  %factor.op.mul3468.i = mul i64 %i.bub, %i.bua   ; 2 uses
  %i.buc = sext i32 %i.bty to i64
  %i.bud = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bue = mul nsw i32 %i.bud, %i.btt
  %i.buf = sext i32 %i.bue to i64
  %i.bug = mul i64 %i.bub, %i.buc
  %i.buh = mul i64 %i.bug, %i.buf
  %invariant.gep3470.i = getelementptr i8, ptr %i.btz, i64 %i.buh
  %i.bui = load i32, ptr %i.a, align 4, !tbaa !9
  %i.buj = mul i32 %i.btx, %i.btu
  %i.buk = mul i32 %i.buj, %i.bui
  %i.bul = sext i32 %i.buk to i64
  %invariant.gep3471.i = getelementptr i8, ptr %invariant.gep3470.i, i64 %i.bul ; 2 uses
  %i.bum = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.bun = icmp sgt i32 %i.bum, 0
  %i.buo = load ptr, ptr %i.g, align 8            ; 4 uses
  br i1 %i.bun, label %.noexc1317.lr.ph.split.us.i, label %.noexc1317.preheader.i

.noexc1317.preheader.i:                           ; preds = %.noexc1317.lr.ph.i
  %i.bup = and i32 %i.btv, 2147483640
  br label %._crit_edge3464.i

.noexc1317.lr.ph.split.us.i:                      ; preds = %.noexc1317.lr.ph.i
  %i.buq = icmp eq i32 %i.btx, 8
  %i.bur = add nsw i32 %i.bum, -1
  %i.bus = zext nneg i32 %i.bur to i64
  %i.but = shl nuw nsw i64 %i.bus, 3              ; 2 uses
  %wide.trip.count3864.i = zext nneg i32 %i.bum to i64 ; 3 uses
  br i1 %i.buq, label %.noexc1317.us.us.i.preheader, label %.noexc1317.us.i

.noexc1317.us.us.i.preheader:                     ; preds = %.noexc1317.lr.ph.split.us.i
  %i.buu = zext nneg i32 %i.btv to i64
  %xtraiter601 = and i64 %wide.trip.count3864.i, 1
  %i.buv = icmp eq i32 %i.bum, 1
  %unroll_iter605 = and i64 %wide.trip.count3864.i, 2147483646
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  %lcmp.mod604 = trunc i32 %i.bum to i1
  br label %.noexc1317.us.us.i

.noexc1317.us.us.i:                               ; preds = %.noexc1317.us.us.i.preheader, %._crit_edge3456.split.us.us.us.i
  %indvars.iv240 = phi i64 [ 0, %.noexc1317.us.us.i.preheader ], [ %indvars.iv.next241, %._crit_edge3456.split.us.us.us.i ] ; 2 uses
  %.09753462.us.us.i = phi ptr [ %i.bib, %.noexc1317.us.us.i.preheader ], [ %scevgep3862.i, %._crit_edge3456.split.us.us.us.i ] ; 3 uses
  %i.buw = phi <4 x i32> [ zeroinitializer, %.noexc1317.us.us.i.preheader ], [ %.lcssa514.a, %._crit_edge3456.split.us.us.us.i ] ; 2 uses
  %i.bux = lshr exact i64 %indvars.iv240, 3
  %.reass3469.us.us.i = mul i64 %factor.op.mul3468.i, %i.bux
  %gep3472.us.us.i = getelementptr i8, ptr %invariant.gep3471.i, i64 %.reass3469.us.us.i ; 3 uses
  br i1 %i.buv, label %.epil.preheader600, label %.noexc1317.us.us.i.new

.noexc1317.us.us.i.new:                           ; preds = %.noexc1317.us.us.i, %.noexc1317.us.us.i.new
  %indvars.iv3859.i = phi i64 [ %indvars.iv.next3860.i.1, %.noexc1317.us.us.i.new ], [ 0, %.noexc1317.us.us.i ] ; 3 uses
  %.19763453.us.us.us.i = phi ptr [ %i.bvs, %.noexc1317.us.us.i.new ], [ %.09753462.us.us.i, %.noexc1317.us.us.i ] ; 3 uses
  %.127483452.us.us.us.i = phi <4 x i32> [ %i.bvr, %.noexc1317.us.us.i.new ], [ %i.buw, %.noexc1317.us.us.i ]
  %niter606 = phi i64 [ %niter606.next.1, %.noexc1317.us.us.i.new ], [ 0, %.noexc1317.us.us.i ]
  %i.buy = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %indvars.iv3859.i
  %i.buz = load i32, ptr %i.buy, align 4, !tbaa !9
  %i.bva = sext i32 %i.buz to i64
  %i.bvb = getelementptr inbounds i8, ptr %gep3472.us.us.i, i64 %i.bva
  %i.bvc = load <8 x i8>, ptr %i.bvb, align 1, !tbaa !46
  %i.bvd = sext <8 x i8> %i.bvc to <8 x i16>
  %i.bve = load <8 x i8>, ptr %.19763453.us.us.us.i, align 1, !tbaa !46
  %i.bvf = sext <8 x i8> %i.bve to <8 x i16>
  %i.bvg = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bvd, <8 x i16> %i.bvf, <4 x i32> %.127483452.us.us.us.i)
  %i.bvh = getelementptr inbounds nuw i8, ptr %.19763453.us.us.us.i, i64 8
  %i.bvi = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %indvars.iv3859.i
  %i.bvj = getelementptr inbounds nuw i8, ptr %i.bvi, i64 4
  %i.bvk = load i32, ptr %i.bvj, align 4, !tbaa !9
  %i.bvl = sext i32 %i.bvk to i64
  %i.bvm = getelementptr inbounds i8, ptr %gep3472.us.us.i, i64 %i.bvl
  %i.bvn = load <8 x i8>, ptr %i.bvm, align 1, !tbaa !46
  %i.bvo = sext <8 x i8> %i.bvn to <8 x i16>
  %i.bvp = load <8 x i8>, ptr %i.bvh, align 1, !tbaa !46
  %i.bvq = sext <8 x i8> %i.bvp to <8 x i16>
  %i.bvr = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bvo, <8 x i16> %i.bvq, <4 x i32> %i.bvg) ; 3 uses
  %i.bvs = getelementptr inbounds nuw i8, ptr %.19763453.us.us.us.i, i64 16 ; 2 uses
  %indvars.iv.next3860.i.1 = add nuw nsw i64 %indvars.iv3859.i, 2 ; 2 uses
  %niter606.next.1 = add i64 %niter606, 2         ; 2 uses
  %niter606.ncmp.1 = icmp eq i64 %niter606.next.1, %unroll_iter605
  br i1 %niter606.ncmp.1, label %._crit_edge3456.split.us.us.us.i.unr-lcssa, label %.noexc1317.us.us.i.new, !llvm.loop !143

._crit_edge3456.split.us.us.us.i.unr-lcssa:       ; preds = %.noexc1317.us.us.i.new
  br i1 %lcmp.mod602.not, label %._crit_edge3456.split.us.us.us.i, label %.epil.preheader600

.epil.preheader600:                               ; preds = %._crit_edge3456.split.us.us.us.i.unr-lcssa, %.noexc1317.us.us.i
  %indvars.iv3859.i.epil.init = phi i64 [ 0, %.noexc1317.us.us.i ], [ %indvars.iv.next3860.i.1, %._crit_edge3456.split.us.us.us.i.unr-lcssa ]
  %.19763453.us.us.us.i.epil.init = phi ptr [ %.09753462.us.us.i, %.noexc1317.us.us.i ], [ %i.bvs, %._crit_edge3456.split.us.us.us.i.unr-lcssa ]
  %.127483452.us.us.us.i.epil.init = phi <4 x i32> [ %i.buw, %.noexc1317.us.us.i ], [ %i.bvr, %._crit_edge3456.split.us.us.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod604)
  %i.bvt = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %indvars.iv3859.i.epil.init
  %i.bvu = load i32, ptr %i.bvt, align 4, !tbaa !9
  %i.bvv = sext i32 %i.bvu to i64
  %i.bvw = getelementptr inbounds i8, ptr %gep3472.us.us.i, i64 %i.bvv
  %i.bvx = load <8 x i8>, ptr %i.bvw, align 1, !tbaa !46
  %i.bvy = sext <8 x i8> %i.bvx to <8 x i16>
  %i.bvz = load <8 x i8>, ptr %.19763453.us.us.us.i.epil.init, align 1, !tbaa !46
  %i.bwa = sext <8 x i8> %i.bvz to <8 x i16>
  %i.bwb = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bvy, <8 x i16> %i.bwa, <4 x i32> %.127483452.us.us.us.i.epil.init)
  br label %._crit_edge3456.split.us.us.us.i

._crit_edge3456.split.us.us.us.i:                 ; preds = %._crit_edge3456.split.us.us.us.i.unr-lcssa, %.epil.preheader600
  %.lcssa514.a = phi <4 x i32> [ %i.bvr, %._crit_edge3456.split.us.us.us.i.unr-lcssa ], [ %i.bwb, %.epil.preheader600 ] ; 2 uses
  %scevgep3861.i = getelementptr i8, ptr %.09753462.us.us.i, i64 8
  %scevgep3862.i = getelementptr i8, ptr %scevgep3861.i, i64 %i.but ; 2 uses
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 8 ; 2 uses
  %i.bwc = or disjoint i64 %indvars.iv.next241, 7
  %i.bwd = icmp samesign ult i64 %i.bwc, %i.buu
  br i1 %i.bwd, label %.noexc1317.us.us.i, label %._crit_edge3464.loopexit.i, !llvm.loop !144

.noexc1317.us.i:                                  ; preds = %.noexc1317.lr.ph.split.us.i, %._crit_edge3456.split.us3476.i
  %.09743463.us.i = phi i32 [ %i.bxo, %._crit_edge3456.split.us3476.i ], [ 0, %.noexc1317.lr.ph.split.us.i ] ; 2 uses
  %.09753462.us.i = phi ptr [ %scevgep3855.i, %._crit_edge3456.split.us3476.i ], [ %i.bib, %.noexc1317.lr.ph.split.us.i ] ; 2 uses
  %i.bwe = phi <4 x i32> [ %i.bxm, %._crit_edge3456.split.us3476.i ], [ zeroinitializer, %.noexc1317.lr.ph.split.us.i ]
  %i.bwf = sdiv i32 %.09743463.us.i, %i.btx
  %i.bwg = sext i32 %i.bwf to i64
  %.reass3469.us.i = mul i64 %factor.op.mul3468.i, %i.bwg
  %gep3472.us.i = getelementptr i8, ptr %invariant.gep3471.i, i64 %.reass3469.us.i
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.noexc1317.us.i
  %indvars.iv3852.i = phi i64 [ 0, %.noexc1317.us.i ], [ %indvars.iv.next3853.i, %bb.n ] ; 2 uses
  %.19763453.us3474.i = phi ptr [ %.09753462.us.i, %.noexc1317.us.i ], [ %i.bxn, %bb.n ] ; 2 uses
  %.127483452.us3475.i = phi <4 x i32> [ %i.bwe, %.noexc1317.us.i ], [ %i.bxm, %bb.n ]
  %i.bwh = getelementptr inbounds nuw [4 x i8], ptr %i.buo, i64 %indvars.iv3852.i
  %i.bwi = load i32, ptr %i.bwh, align 4, !tbaa !9
  %i.bwj = sext i32 %i.bwi to i64
  %i.bwk = getelementptr inbounds i8, ptr %gep3472.us.i, i64 %i.bwj ; 8 uses
  %i.bwl = load i8, ptr %i.bwk, align 1, !tbaa !46
  %i.bwm = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %i.v
  %i.bwn = load i8, ptr %i.bwm, align 1, !tbaa !46
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %i.cy
  %i.bwp = load i8, ptr %i.bwo, align 1, !tbaa !46
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %i.cz
  %i.bwr = load i8, ptr %i.bwq, align 1, !tbaa !46
  %i.bws = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %i.da
  %i.bwt = load i8, ptr %i.bws, align 1, !tbaa !46
  %i.bwu = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %i.db
  %i.bwv = load i8, ptr %i.bwu, align 1, !tbaa !46
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %i.dc
  %i.bwx = load i8, ptr %i.bww, align 1, !tbaa !46
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.bwk, i64 %i.dd
  %i.bwz = load i8, ptr %i.bwy, align 1, !tbaa !46
  %i.bxa = insertelement <16 x i8> poison, i8 %i.bwl, i64 0
  %i.bxb = insertelement <16 x i8> %i.bxa, i8 %i.bwn, i64 1
  %i.bxc = insertelement <16 x i8> %i.bxb, i8 %i.bwp, i64 2
  %i.bxd = insertelement <16 x i8> %i.bxc, i8 %i.bwr, i64 3
  %i.bxe = insertelement <16 x i8> %i.bxd, i8 %i.bwt, i64 4
  %i.bxf = insertelement <16 x i8> %i.bxe, i8 %i.bwv, i64 5
  %i.bxg = insertelement <16 x i8> %i.bxf, i8 %i.bwx, i64 6
  %i.bxh = insertelement <16 x i8> %i.bxg, i8 %i.bwz, i64 7
  %i.bxi = shufflevector <16 x i8> %i.bxh, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bxj = sext <8 x i8> %i.bxi to <8 x i16>
  %i.bxk = load <8 x i8>, ptr %.19763453.us3474.i, align 1, !tbaa !46
  %i.bxl = sext <8 x i8> %i.bxk to <8 x i16>
  %i.bxm = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bxj, <8 x i16> %i.bxl, <4 x i32> %.127483452.us3475.i) ; 3 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %.19763453.us3474.i, i64 8
  %indvars.iv.next3853.i = add nuw nsw i64 %indvars.iv3852.i, 1 ; 2 uses
  %exitcond3858.not.i = icmp eq i64 %indvars.iv.next3853.i, %wide.trip.count3864.i
  br i1 %exitcond3858.not.i, label %._crit_edge3456.split.us3476.i, label %bb.n, !llvm.loop !143

._crit_edge3456.split.us3476.i:                   ; preds = %bb.n
  %scevgep3854.i = getelementptr i8, ptr %.09753462.us.i, i64 8
  %scevgep3855.i = getelementptr i8, ptr %scevgep3854.i, i64 %i.but ; 2 uses
  %i.bxo = add nuw nsw i32 %.09743463.us.i, 8     ; 2 uses
  %i.bxp = or disjoint i32 %i.bxo, 7
  %i.bxq = icmp slt i32 %i.bxp, %i.btv
  br i1 %i.bxq, label %.noexc1317.us.i, label %._crit_edge3464.loopexit3534.i, !llvm.loop !144

._crit_edge3464.loopexit.i:                       ; preds = %._crit_edge3456.split.us.us.us.i
  %i.bxr = and i32 %i.btv, 2147483640
  br label %._crit_edge3464.i

._crit_edge3464.loopexit3534.i:                   ; preds = %._crit_edge3456.split.us3476.i
  %i.bxs = and i32 %i.btv, 2147483640
  br label %._crit_edge3464.i

._crit_edge3464.i:                                ; preds = %._crit_edge3464.loopexit3534.i, %._crit_edge3464.loopexit.i, %.noexc1317.preheader.i, %.noexc1319.i
  %i.bxt = phi <4 x i32> [ zeroinitializer, %.noexc1319.i ], [ %.lcssa514.a, %._crit_edge3464.loopexit.i ], [ %i.bxm, %._crit_edge3464.loopexit3534.i ], [ zeroinitializer, %.noexc1317.preheader.i ]
  %.0975.lcssa.i = phi ptr [ %i.bib, %.noexc1319.i ], [ %scevgep3862.i, %._crit_edge3464.loopexit.i ], [ %scevgep3855.i, %._crit_edge3464.loopexit3534.i ], [ %i.bib, %.noexc1317.preheader.i ] ; 3 uses
  %.0974.lcssa.i = phi i32 [ 0, %.noexc1319.i ], [ %i.bxr, %._crit_edge3464.loopexit.i ], [ %i.bxs, %._crit_edge3464.loopexit3534.i ], [ %i.bup, %.noexc1317.preheader.i ] ; 5 uses
  %i.bxu = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bxt) ; 3 uses
  %i.bxv = or disjoint i32 %.0974.lcssa.i, 1
  %i.bxw = icmp slt i32 %i.bxv, %i.btv
  br i1 %i.bxw, label %.noexc1315.lr.ph.i, label %.preheader.i

.noexc1315.lr.ph.i:                               ; preds = %._crit_edge3464.i
  %i.bxx = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !145
  %i.bxy = load ptr, ptr %0, align 8, !tbaa !32, !noalias !145
  %i.bxz = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !145
  %i.bya = load i64, ptr %i.cx, align 8, !tbaa !36, !noalias !145 ; 2 uses
  %factor.op.mul3499.i = mul i64 %i.bya, %i.bxz
  %i.byb = sext i32 %i.bxx to i64
  %i.byc = load i32, ptr %i.b, align 4, !tbaa !9
  %i.byd = mul nsw i32 %i.byc, %i.btt
  %i.bye = sext i32 %i.byd to i64
  %i.byf = mul i64 %i.bya, %i.byb
  %i.byg = mul i64 %i.byf, %i.bye
  %invariant.gep3501.i = getelementptr i8, ptr %i.bxy, i64 %i.byg
  %i.byh = load i32, ptr %i.a, align 4, !tbaa !9
  %i.byi = mul nsw i32 %i.byh, %i.btu
  %i.byj = sext i32 %i.byi to i64
  %invariant.gep3502.i = getelementptr i8, ptr %invariant.gep3501.i, i64 %i.byj
  %i.byk = load i32, ptr %i.f, align 4, !tbaa !9  ; 5 uses
  %i.byl = icmp sgt i32 %i.byk, 0
  %i.bym = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.byl, label %.noexc1315.us.preheader.i, label %.noexc1315.preheader.i

.noexc1315.preheader.i:                           ; preds = %.noexc1315.lr.ph.i
  %i.byn = or disjoint i32 %.0974.lcssa.i, 2
  %11 = add nsw i32 %i.btv, -2
  %reass.sub135 = sub nsw i32 %11, %.0974.lcssa.i
  %i.byo = and i32 %reass.sub135, -2
  %i.byp = add i32 %i.byn, %i.byo
  br label %.preheader.i

.noexc1315.us.preheader.i:                        ; preds = %.noexc1315.lr.ph.i
  %i.byq = add nsw i32 %i.byk, -1
  %i.byr = zext nneg i32 %i.byq to i64
  %i.bys = shl nuw nsw i64 %i.byr, 1
  %i.byt = zext nneg i32 %.0974.lcssa.i to i64
  %wide.trip.count3872.i = zext nneg i32 %i.byk to i64 ; 2 uses
  %xtraiter608 = and i64 %wide.trip.count3872.i, 1
  %i.byu = icmp eq i32 %i.byk, 1
  %unroll_iter612 = and i64 %wide.trip.count3872.i, 2147483646
  %lcmp.mod609.not = icmp eq i64 %xtraiter608, 0
  %lcmp.mod611 = trunc i32 %i.byk to i1
  br label %.noexc1315.us.i

.noexc1315.us.i:                                  ; preds = %._crit_edge3490.us.i, %.noexc1315.us.preheader.i
  %indvars.iv3874.i = phi i64 [ %i.byt, %.noexc1315.us.preheader.i ], [ %indvars.iv.next3875.i, %._crit_edge3490.us.i ] ; 2 uses
  %.29773494.us.i = phi ptr [ %.0975.lcssa.i, %.noexc1315.us.preheader.i ], [ %scevgep3870.i, %._crit_edge3490.us.i ] ; 3 uses
  %.09783493.us.i = phi i32 [ %i.bxu, %.noexc1315.us.preheader.i ], [ %.lcssa515, %._crit_edge3490.us.i ] ; 2 uses
  %.reass3500.us.i = mul i64 %factor.op.mul3499.i, %indvars.iv3874.i
  %gep3503.us.i = getelementptr i8, ptr %invariant.gep3502.i, i64 %.reass3500.us.i ; 3 uses
  br i1 %i.byu, label %.epil.preheader607, label %.noexc1315.us.i.new

.noexc1315.us.i.new:                              ; preds = %.noexc1315.us.i, %.noexc1315.us.i.new
  %indvars.iv3867.i = phi i64 [ %indvars.iv.next3868.i.1, %.noexc1315.us.i.new ], [ 0, %.noexc1315.us.i ] ; 3 uses
  %.33487.us.i = phi ptr [ %i.cah, %.noexc1315.us.i.new ], [ %.29773494.us.i, %.noexc1315.us.i ] ; 5 uses
  %.19793486.us.i = phi i32 [ %i.cag, %.noexc1315.us.i.new ], [ %.09783493.us.i, %.noexc1315.us.i ]
  %niter613 = phi i64 [ %niter613.next.1, %.noexc1315.us.i.new ], [ 0, %.noexc1315.us.i ]
  %i.byv = getelementptr inbounds nuw [4 x i8], ptr %i.bym, i64 %indvars.iv3867.i
  %i.byw = load i32, ptr %i.byv, align 4, !tbaa !9
  %i.byx = sext i32 %i.byw to i64
  %i.byy = getelementptr inbounds i8, ptr %gep3503.us.i, i64 %i.byx ; 2 uses
  %i.byz = load i8, ptr %i.byy, align 1, !tbaa !46
  %i.bza = sext i8 %i.byz to i32
  %i.bzb = load i8, ptr %.33487.us.i, align 1, !tbaa !46
  %i.bzc = sext i8 %i.bzb to i32
  %i.bzd = mul nsw i32 %i.bzc, %i.bza
  %i.bze = add nsw i32 %i.bzd, %.19793486.us.i
  %i.bzf = getelementptr inbounds nuw i8, ptr %i.byy, i64 %i.v
  %i.bzg = load i8, ptr %i.bzf, align 1, !tbaa !46
  %i.bzh = sext i8 %i.bzg to i32
  %i.bzi = getelementptr inbounds nuw i8, ptr %.33487.us.i, i64 1
  %i.bzj = load i8, ptr %i.bzi, align 1, !tbaa !46
  %i.bzk = sext i8 %i.bzj to i32
  %i.bzl = mul nsw i32 %i.bzk, %i.bzh
  %i.bzm = add nsw i32 %i.bze, %i.bzl
  %i.bzn = getelementptr inbounds nuw i8, ptr %.33487.us.i, i64 2
  %i.bzo = getelementptr inbounds nuw [4 x i8], ptr %i.bym, i64 %indvars.iv3867.i
  %i.bzp = getelementptr inbounds nuw i8, ptr %i.bzo, i64 4
  %i.bzq = load i32, ptr %i.bzp, align 4, !tbaa !9
  %i.bzr = sext i32 %i.bzq to i64
  %i.bzs = getelementptr inbounds i8, ptr %gep3503.us.i, i64 %i.bzr ; 2 uses
  %i.bzt = load i8, ptr %i.bzs, align 1, !tbaa !46
  %i.bzu = sext i8 %i.bzt to i32
  %i.bzv = load i8, ptr %i.bzn, align 1, !tbaa !46
  %i.bzw = sext i8 %i.bzv to i32
  %i.bzx = mul nsw i32 %i.bzw, %i.bzu
  %i.bzy = add nsw i32 %i.bzx, %i.bzm
  %i.bzz = getelementptr inbounds nuw i8, ptr %i.bzs, i64 %i.v
  %i.caa = load i8, ptr %i.bzz, align 1, !tbaa !46
  %i.cab = sext i8 %i.caa to i32
  %i.cac = getelementptr inbounds nuw i8, ptr %.33487.us.i, i64 3
  %i.cad = load i8, ptr %i.cac, align 1, !tbaa !46
  %i.cae = sext i8 %i.cad to i32
  %i.caf = mul nsw i32 %i.cae, %i.cab
  %i.cag = add nsw i32 %i.bzy, %i.caf             ; 3 uses
  %i.cah = getelementptr inbounds nuw i8, ptr %.33487.us.i, i64 4 ; 2 uses
  %indvars.iv.next3868.i.1 = add nuw nsw i64 %indvars.iv3867.i, 2 ; 2 uses
  %niter613.next.1 = add i64 %niter613, 2         ; 2 uses
  %niter613.ncmp.1 = icmp eq i64 %niter613.next.1, %unroll_iter612
  br i1 %niter613.ncmp.1, label %._crit_edge3490.us.i.unr-lcssa, label %.noexc1315.us.i.new, !llvm.loop !148

._crit_edge3490.us.i.unr-lcssa:                   ; preds = %.noexc1315.us.i.new
  br i1 %lcmp.mod609.not, label %._crit_edge3490.us.i, label %.epil.preheader607

.epil.preheader607:                               ; preds = %._crit_edge3490.us.i.unr-lcssa, %.noexc1315.us.i
  %indvars.iv3867.i.epil.init = phi i64 [ 0, %.noexc1315.us.i ], [ %indvars.iv.next3868.i.1, %._crit_edge3490.us.i.unr-lcssa ]
  %.33487.us.i.epil.init = phi ptr [ %.29773494.us.i, %.noexc1315.us.i ], [ %i.cah, %._crit_edge3490.us.i.unr-lcssa ] ; 2 uses
  %.19793486.us.i.epil.init = phi i32 [ %.09783493.us.i, %.noexc1315.us.i ], [ %i.cag, %._crit_edge3490.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod611)
  %i.cai = getelementptr inbounds nuw [4 x i8], ptr %i.bym, i64 %indvars.iv3867.i.epil.init
  %i.caj = load i32, ptr %i.cai, align 4, !tbaa !9
  %i.cak = sext i32 %i.caj to i64
  %i.cal = getelementptr inbounds i8, ptr %gep3503.us.i, i64 %i.cak ; 2 uses
  %i.cam = load i8, ptr %i.cal, align 1, !tbaa !46
  %i.can = sext i8 %i.cam to i32
  %i.cao = load i8, ptr %.33487.us.i.epil.init, align 1, !tbaa !46
  %i.cap = sext i8 %i.cao to i32
  %i.caq = mul nsw i32 %i.cap, %i.can
  %i.car = add nsw i32 %i.caq, %.19793486.us.i.epil.init
  %i.cas = getelementptr inbounds nuw i8, ptr %i.cal, i64 %i.v
  %i.cat = load i8, ptr %i.cas, align 1, !tbaa !46
  %i.cau = sext i8 %i.cat to i32
  %i.cav = getelementptr inbounds nuw i8, ptr %.33487.us.i.epil.init, i64 1
  %i.caw = load i8, ptr %i.cav, align 1, !tbaa !46
  %i.cax = sext i8 %i.caw to i32
  %i.cay = mul nsw i32 %i.cax, %i.cau
  %i.caz = add nsw i32 %i.car, %i.cay
  br label %._crit_edge3490.us.i

._crit_edge3490.us.i:                             ; preds = %._crit_edge3490.us.i.unr-lcssa, %.epil.preheader607
  %.lcssa515 = phi i32 [ %i.cag, %._crit_edge3490.us.i.unr-lcssa ], [ %i.caz, %.epil.preheader607 ] ; 2 uses
  %scevgep3869.i.a = getelementptr i8, ptr %.29773494.us.i, i64 2
  %scevgep3870.i = getelementptr i8, ptr %scevgep3869.i.a, i64 %i.bys ; 2 uses
  %indvars.iv.next3875.i = add nuw nsw i64 %indvars.iv3874.i, 2 ; 2 uses
  %i.cba = trunc i64 %indvars.iv.next3875.i to i32 ; 2 uses
  %i.cbb = or i32 %i.cba, 1
  %i.cbc = icmp slt i32 %i.cbb, %i.btv
  br i1 %i.cbc, label %.noexc1315.us.i, label %.preheader.i, !llvm.loop !149

.preheader.i:                                     ; preds = %._crit_edge3490.us.i, %.noexc1315.preheader.i, %._crit_edge3464.i
  %.0978.lcssa.i = phi i32 [ %i.bxu, %._crit_edge3464.i ], [ %i.bxu, %.noexc1315.preheader.i ], [ %.lcssa515, %._crit_edge3490.us.i ] ; 3 uses
  %.2977.lcssa.i = phi ptr [ %.0975.lcssa.i, %._crit_edge3464.i ], [ %.0975.lcssa.i, %.noexc1315.preheader.i ], [ %scevgep3870.i, %._crit_edge3490.us.i ]
  %.1.lcssa.i = phi i32 [ %.0974.lcssa.i, %._crit_edge3464.i ], [ %i.byp, %.noexc1315.preheader.i ], [ %i.cba, %._crit_edge3490.us.i ] ; 2 uses
  %i.cbd = icmp slt i32 %.1.lcssa.i, %i.btv
  br i1 %i.cbd, label %.noexc1314.lr.ph.i, label %._crit_edge3517.i

.noexc1314.lr.ph.i:                               ; preds = %.preheader.i
  %i.cbe = load i32, ptr %i.l, align 4, !tbaa !10, !noalias !150
  %i.cbf = load ptr, ptr %0, align 8, !tbaa !32, !noalias !150
  %i.cbg = load i64, ptr %i.s, align 8, !tbaa !18, !noalias !150
  %i.cbh = load i64, ptr %i.cx, align 8, !tbaa !36, !noalias !150 ; 2 uses
  %factor.op.mul3519.i = mul i64 %i.cbh, %i.cbg
  %i.cbi = sext i32 %i.cbe to i64
  %i.cbj = load i32, ptr %i.b, align 4, !tbaa !9
  %i.cbk = mul nsw i32 %i.cbj, %i.btt
  %i.cbl = sext i32 %i.cbk to i64
  %i.cbm = mul i64 %i.cbh, %i.cbi
  %i.cbn = mul i64 %i.cbm, %i.cbl
  %invariant.gep3521.i = getelementptr i8, ptr %i.cbf, i64 %i.cbn
  %i.cbo = load i32, ptr %i.a, align 4, !tbaa !9
  %i.cbp = mul nsw i32 %i.cbo, %i.btu
  %i.cbq = sext i32 %i.cbp to i64
  %invariant.gep3522.i = getelementptr i8, ptr %invariant.gep3521.i, i64 %i.cbq
  %i.cbr = load i32, ptr %i.f, align 4, !tbaa !9  ; 3 uses
  %i.cbs = icmp sgt i32 %i.cbr, 0
  %i.cbt = load ptr, ptr %i.g, align 8            ; 5 uses
  br i1 %i.cbs, label %.noexc1314.us.preheader.i, label %._crit_edge3517.i

.noexc1314.us.preheader.i:                        ; preds = %.noexc1314.lr.ph.i
  %i.cbu = zext i32 %.1.lcssa.i to i64
  %i.cbv = zext nneg i32 %i.cbr to i64            ; 3 uses
  %xtraiter615 = and i64 %i.cbv, 3                ; 3 uses
  %i.cbw = icmp ult i32 %i.cbr, 4
  %unroll_iter619 = and i64 %i.cbv, 2147483644
  %lcmp.mod616.not = icmp eq i64 %xtraiter615, 0
  %lcmp.mod618 = icmp ne i64 %xtraiter615, 0
  br label %.noexc1314.us.i

.noexc1314.us.i:                                  ; preds = %._crit_edge3511.us.i, %.noexc1314.us.preheader.i
  %indvars.iv3884.i = phi i64 [ %i.cbu, %.noexc1314.us.preheader.i ], [ %indvars.iv.next3885.i, %._crit_edge3511.us.i ] ; 2 uses
  %.43515.us.i = phi ptr [ %.2977.lcssa.i, %.noexc1314.us.preheader.i ], [ %i.ced, %._crit_edge3511.us.i ] ; 3 uses
  %.29803514.us.i = phi i32 [ %.0978.lcssa.i, %.noexc1314.us.preheader.i ], [ %.lcssa517, %._crit_edge3511.us.i ] ; 2 uses
  %.reass3520.us.i = mul i64 %factor.op.mul3519.i, %indvars.iv3884.i
  %gep3523.us.i = getelementptr i8, ptr %invariant.gep3522.i, i64 %.reass3520.us.i ; 5 uses
  br i1 %i.cbw, label %.epil.preheader614, label %.noexc1314.us.i.new

.noexc1314.us.i.new:                              ; preds = %.noexc1314.us.i, %.noexc1314.us.i.new
  %indvars.iv3877.i = phi i64 [ %indvars.iv.next3878.i.3, %.noexc1314.us.i.new ], [ 0, %.noexc1314.us.i ] ; 5 uses
  %.53508.us.i = phi ptr [ %i.cdr, %.noexc1314.us.i.new ], [ %.43515.us.i, %.noexc1314.us.i ] ; 5 uses
  %.39813507.us.i = phi i32 [ %i.cdq, %.noexc1314.us.i.new ], [ %.29803514.us.i, %.noexc1314.us.i ]
  %niter620 = phi i64 [ %niter620.next.3, %.noexc1314.us.i.new ], [ 0, %.noexc1314.us.i ]
  %i.cbx = getelementptr inbounds nuw [4 x i8], ptr %i.cbt, i64 %indvars.iv3877.i
  %i.cby = load i32, ptr %i.cbx, align 4, !tbaa !9
  %i.cbz = sext i32 %i.cby to i64
  %i.cca = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cbz
  %i.ccb = load i8, ptr %i.cca, align 1, !tbaa !46
  %i.ccc = sext i8 %i.ccb to i32
  %i.ccd = load i8, ptr %.53508.us.i, align 1, !tbaa !46
  %i.cce = sext i8 %i.ccd to i32
  %i.ccf = mul nsw i32 %i.cce, %i.ccc
  %i.ccg = add nsw i32 %i.ccf, %.39813507.us.i
  %i.cch = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 1
  %i.cci = getelementptr inbounds nuw [4 x i8], ptr %i.cbt, i64 %indvars.iv3877.i
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cci, i64 4
  %i.cck = load i32, ptr %i.ccj, align 4, !tbaa !9
  %i.ccl = sext i32 %i.cck to i64
  %i.ccm = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.ccl
  %i.ccn = load i8, ptr %i.ccm, align 1, !tbaa !46
  %i.cco = sext i8 %i.ccn to i32
  %i.ccp = load i8, ptr %i.cch, align 1, !tbaa !46
  %i.ccq = sext i8 %i.ccp to i32
  %i.ccr = mul nsw i32 %i.ccq, %i.cco
  %i.ccs = add nsw i32 %i.ccr, %i.ccg
  %i.cct = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 2
  %i.ccu = getelementptr inbounds nuw [4 x i8], ptr %i.cbt, i64 %indvars.iv3877.i
  %i.ccv = getelementptr inbounds nuw i8, ptr %i.ccu, i64 8
  %i.ccw = load i32, ptr %i.ccv, align 4, !tbaa !9
  %i.ccx = sext i32 %i.ccw to i64
  %i.ccy = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.ccx
  %i.ccz = load i8, ptr %i.ccy, align 1, !tbaa !46
  %i.cda = sext i8 %i.ccz to i32
  %i.cdb = load i8, ptr %i.cct, align 1, !tbaa !46
  %i.cdc = sext i8 %i.cdb to i32
  %i.cdd = mul nsw i32 %i.cdc, %i.cda
  %i.cde = add nsw i32 %i.cdd, %i.ccs
  %i.cdf = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 3
  %i.cdg = getelementptr inbounds nuw [4 x i8], ptr %i.cbt, i64 %indvars.iv3877.i
  %i.cdh = getelementptr inbounds nuw i8, ptr %i.cdg, i64 12
  %i.cdi = load i32, ptr %i.cdh, align 4, !tbaa !9
  %i.cdj = sext i32 %i.cdi to i64
  %i.cdk = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cdj
  %i.cdl = load i8, ptr %i.cdk, align 1, !tbaa !46
  %i.cdm = sext i8 %i.cdl to i32
  %i.cdn = load i8, ptr %i.cdf, align 1, !tbaa !46
  %i.cdo = sext i8 %i.cdn to i32
  %i.cdp = mul nsw i32 %i.cdo, %i.cdm
  %i.cdq = add nsw i32 %i.cdp, %i.cde             ; 3 uses
  %i.cdr = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 4 ; 2 uses
  %indvars.iv.next3878.i.3 = add nuw nsw i64 %indvars.iv3877.i, 4 ; 2 uses
  %niter620.next.3 = add i64 %niter620, 4         ; 2 uses
  %niter620.ncmp.3 = icmp eq i64 %niter620.next.3, %unroll_iter619
  br i1 %niter620.ncmp.3, label %._crit_edge3511.us.i.unr-lcssa, label %.noexc1314.us.i.new, !llvm.loop !153

._crit_edge3511.us.i.unr-lcssa:                   ; preds = %.noexc1314.us.i.new
  br i1 %lcmp.mod616.not, label %._crit_edge3511.us.i, label %.epil.preheader614

.epil.preheader614:                               ; preds = %._crit_edge3511.us.i.unr-lcssa, %.noexc1314.us.i
  %indvars.iv3877.i.epil.init = phi i64 [ 0, %.noexc1314.us.i ], [ %indvars.iv.next3878.i.3, %._crit_edge3511.us.i.unr-lcssa ]
  %.53508.us.i.epil.init = phi ptr [ %.43515.us.i, %.noexc1314.us.i ], [ %i.cdr, %._crit_edge3511.us.i.unr-lcssa ]
  %.39813507.us.i.epil.init = phi i32 [ %.29803514.us.i, %.noexc1314.us.i ], [ %i.cdq, %._crit_edge3511.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod618)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader614
  %indvars.iv3877.i.epil = phi i64 [ %indvars.iv3877.i.epil.init, %.epil.preheader614 ], [ %indvars.iv.next3878.i.epil, %bb.o ] ; 2 uses
  %.53508.us.i.epil = phi ptr [ %.53508.us.i.epil.init, %.epil.preheader614 ], [ %i.cec, %bb.o ] ; 2 uses
  %.39813507.us.i.epil = phi i32 [ %.39813507.us.i.epil.init, %.epil.preheader614 ], [ %i.ceb, %bb.o ]
  %epil.iter = phi i64 [ 0, %.epil.preheader614 ], [ %epil.iter.next, %bb.o ]
  %i.cds = getelementptr inbounds nuw [4 x i8], ptr %i.cbt, i64 %indvars.iv3877.i.epil
  %i.cdt = load i32, ptr %i.cds, align 4, !tbaa !9
  %i.cdu = sext i32 %i.cdt to i64
  %i.cdv = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cdu
  %i.cdw = load i8, ptr %i.cdv, align 1, !tbaa !46
  %i.cdx = sext i8 %i.cdw to i32
  %i.cdy = load i8, ptr %.53508.us.i.epil, align 1, !tbaa !46
  %i.cdz = sext i8 %i.cdy to i32
  %i.cea = mul nsw i32 %i.cdz, %i.cdx
  %i.ceb = add nsw i32 %i.cea, %.39813507.us.i.epil ; 2 uses
  %i.cec = getelementptr inbounds nuw i8, ptr %.53508.us.i.epil, i64 1
  %indvars.iv.next3878.i.epil = add nuw nsw i64 %indvars.iv3877.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter615
  br i1 %epil.iter.cmp.not, label %._crit_edge3511.us.i, label %bb.o, !llvm.loop !154

._crit_edge3511.us.i:                             ; preds = %bb.o, %._crit_edge3511.us.i.unr-lcssa
  %.lcssa517 = phi i32 [ %i.cdq, %._crit_edge3511.us.i.unr-lcssa ], [ %i.ceb, %bb.o ] ; 2 uses
  %i.ced = getelementptr i8, ptr %.43515.us.i, i64 %i.cbv
  %indvars.iv.next3885.i = add nuw nsw i64 %indvars.iv3884.i, 1 ; 2 uses
  %i.cee = trunc nuw i64 %indvars.iv.next3885.i to i32
  %i.cef = icmp sgt i32 %i.btv, %i.cee
  br i1 %i.cef, label %.noexc1314.us.i, label %._crit_edge3517.i, !llvm.loop !156

._crit_edge3517.i:                                ; preds = %._crit_edge3511.us.i, %.noexc1314.lr.ph.i, %.preheader.i
  %.2980.lcssa.i = phi i32 [ %.0978.lcssa.i, %.preheader.i ], [ %.0978.lcssa.i, %.noexc1314.lr.ph.i ], [ %.lcssa517, %._crit_edge3511.us.i ]
  store i32 %.2980.lcssa.i, ptr %.210923525.i, align 4, !tbaa !9
  %i.ceg = getelementptr inbounds nuw i8, ptr %.210923525.i, i64 4
  %i.ceh = add nuw nsw i32 %.210893526.i, 1       ; 2 uses
  %exitcond3887.not.i = icmp eq i32 %i.ceh, %i.ct
  br i1 %exitcond3887.not.i, label %._crit_edge3527.i, label %.noexc1319.i, !llvm.loop !157

._crit_edge3527.i:                                ; preds = %._crit_edge3517.i, %.preheader2821.i
  %indvars.iv.next3889.i = add nsw i64 %indvars.iv3888.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next3889.i, %i.dh
  br i1 %exitcond.not, label %._crit_edge3529.i, label %.noexc.i, !llvm.loop !158

_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.exit: ; preds = %bb.b, %_ZNSt6vectorIiSaIiEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

declare noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev() local_unnamed_addr #1

declare void @_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %13) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.u

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
  %.not1924 = icmp sgt i32 %i.k, %i.j
  br i1 %.not1924, label %._crit_edge1926, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 9 uses
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge1923
  %.01925 = phi i32 [ %i.k, %.noexc.lr.ph ], [ %i.arw, %._crit_edge1923 ] ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !9
  %i.v = shl nsw i32 %.01925, 2
  %i.w = add nsw i32 %i.u, %i.v                   ; 4 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !10   ; 15 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !19
  %i.z = load i64, ptr %i.n, align 8, !tbaa !18
  %i.aa = load i32, ptr %6, align 4, !tbaa !9
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.z, %i.ab                     ; 34 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !18  ; 2 uses
  %i.ae = load i32, ptr %7, align 4, !tbaa !9     ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af                    ; 9 uses
  %i.ah = sdiv i32 %i.w, %i.ae
  %i.ai = load ptr, ptr %4, align 8, !tbaa !32, !noalias !159
  %i.aj = sext i32 %i.ah to i64
  %i.ak = mul i64 %i.ad, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !36, !noalias !159
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am ; 2 uses
  %i.ao = mul nsw i32 %i.y, %i.x                  ; 6 uses
  %i.ap = icmp sgt i32 %i.ao, 3
  br i1 %i.ap, label %.noexc756.lr.ph, label %.preheader1572

.noexc756.lr.ph:                                  ; preds = %.noexc
  %i.aq = sdiv i32 %i.w, 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl i64 %i.ac, 1                        ; 4 uses
  %i.at = mul i64 %i.ac, 3                        ; 4 uses
  %i.au = shl i64 %i.ac, 2                        ; 4 uses
  %i.av = mul i64 %i.ac, 5                        ; 4 uses
  %i.aw = mul i64 %i.ac, 6                        ; 4 uses
  %i.ax = mul i64 %i.ac, 7                        ; 4 uses
  %.idx1565 = shl i64 %i.ag, 3
  %.idx1566 = mul i64 %i.ag, 12
  br label %.noexc756

.preheader1572:                                   ; preds = %bb.h, %.noexc
  %.0665.lcssa = phi i32 [ 0, %.noexc ], [ %i.ua, %bb.h ] ; 3 uses
  %.0645.lcssa = phi ptr [ %i.an, %.noexc ], [ %.2647, %bb.h ] ; 2 uses
  %i.ay = or disjoint i32 %.0665.lcssa, 1         ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.ao
  br i1 %i.az, label %.noexc730.lr.ph, label %.preheader1571

.noexc730.lr.ph:                                  ; preds = %.preheader1572
  %i.ba = sdiv i32 %i.w, 4
  %i.bb = sext i32 %i.ba to i64
  %i.bc = shl i64 %i.ac, 1                        ; 2 uses
  %i.bd = mul i64 %i.ac, 3                        ; 2 uses
  %i.be = shl i64 %i.ac, 2                        ; 2 uses
  %i.bf = mul i64 %i.ac, 5                        ; 2 uses
  %i.bg = mul i64 %i.ac, 6                        ; 2 uses
  %i.bh = mul i64 %i.ac, 7                        ; 2 uses
  %.idx1563 = shl i64 %i.ag, 3
  %.idx1564 = mul i64 %i.ag, 12
  br label %.noexc730

.noexc756:                                        ; preds = %.noexc756.lr.ph, %bb.h
  %.06451744 = phi ptr [ %i.an, %.noexc756.lr.ph ], [ %.2647, %bb.h ] ; 6 uses
  %.06651743 = phi i32 [ 0, %.noexc756.lr.ph ], [ %i.ua, %bb.h ] ; 6 uses
  %i.bi = or disjoint i32 %.06651743, 3           ; 2 uses
  %i.bj = sdiv i32 %.06651743, %i.x               ; 3 uses
  %i.bk = or disjoint i32 %.06651743, 1           ; 2 uses
  %i.bl = sdiv i32 %i.bk, %i.x                    ; 3 uses
  %i.bm = or disjoint i32 %.06651743, 2           ; 2 uses
  %i.bn = sdiv i32 %i.bm, %i.x                    ; 3 uses
  %i.bo = sdiv i32 %i.bi, %i.x                    ; 3 uses
  %i.bp = srem i32 %.06651743, %i.x               ; 3 uses
  %i.bq = srem i32 %i.bk, %i.x                    ; 3 uses
  %i.br = srem i32 %i.bm, %i.x                    ; 3 uses
  %i.bs = srem i32 %i.bi, %i.x                    ; 3 uses
  %i.bt = load ptr, ptr %8, align 8, !tbaa !32, !noalias !162
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !18, !noalias !162
  %i.bv = mul i64 %i.bu, %i.ar
  %i.bw = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !162
  %i.bx = mul i64 %i.bv, %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bx ; 2 uses
  %i.bz = load i32, ptr %9, align 4, !tbaa !9     ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 7
  br i1 %i.ca, label %.noexc754.lr.ph, label %.preheader1570

.noexc754.lr.ph:                                  ; preds = %.noexc756
  %i.cb = load i32, ptr %6, align 4, !tbaa !9     ; 5 uses
  %i.cc = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !165
  %i.cd = load ptr, ptr %5, align 8, !tbaa !32, !noalias !165 ; 4 uses
  %i.ce = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !165
  %i.cf = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !165 ; 2 uses
  %factor.op.mul = mul i64 %i.ce, %i.cf
  %i.cg = sext i32 %i.cc to i64
  %i.ch = load i32, ptr %10, align 4, !tbaa !9    ; 4 uses
  %i.ci = mul nsw i32 %i.ch, %i.bj
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cf, %i.cg                    ; 4 uses
  %i.cl = mul i64 %i.ck, %i.cj
  %invariant.gep = getelementptr i8, ptr %i.cd, i64 %i.cl
  %i.cm = load i32, ptr %11, align 4, !tbaa !9    ; 4 uses
  %i.cn = mul i32 %i.cb, %i.bp
  %i.co = mul i32 %i.cn, %i.cm
  %i.cp = sext i32 %i.co to i64
  %invariant.gep1643 = getelementptr i8, ptr %invariant.gep, i64 %i.cp
  %i.cq = mul nsw i32 %i.ch, %i.bl
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul i64 %i.ck, %i.cr
  %invariant.gep1647 = getelementptr i8, ptr %i.cd, i64 %i.cs
  %i.ct = mul i32 %i.cb, %i.bq
  %i.cu = mul i32 %i.ct, %i.cm
  %i.cv = sext i32 %i.cu to i64
  %invariant.gep1648 = getelementptr i8, ptr %invariant.gep1647, i64 %i.cv
  %i.cw = mul nsw i32 %i.ch, %i.bn
  %i.cx = sext i32 %i.cw to i64
  %i.cy = mul i64 %i.ck, %i.cx
  %invariant.gep1652 = getelementptr i8, ptr %i.cd, i64 %i.cy
  %i.cz = mul i32 %i.cb, %i.br
  %i.da = mul i32 %i.cz, %i.cm
  %i.db = sext i32 %i.da to i64
  %invariant.gep1653 = getelementptr i8, ptr %invariant.gep1652, i64 %i.db
  %i.dc = mul nsw i32 %i.ch, %i.bo
  %i.dd = sext i32 %i.dc to i64
  %i.de = mul i64 %i.ck, %i.dd
  %invariant.gep1657 = getelementptr i8, ptr %i.cd, i64 %i.de
  %i.df = mul i32 %i.cb, %i.bs
  %i.dg = mul i32 %i.df, %i.cm
  %i.dh = sext i32 %i.dg to i64
  %invariant.gep1658 = getelementptr i8, ptr %invariant.gep1657, i64 %i.dh
  %i.di = load i32, ptr %12, align 4, !tbaa !9    ; 4 uses
  %i.dj = icmp sgt i32 %i.di, 0
  %i.dk = add i32 %i.di, -1
  %i.dl = zext i32 %i.dk to i64
  %i.dm = shl nuw nsw i64 %i.dl, 5                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.di to i64
  %wide.trip.count2007 = zext nneg i32 %i.di to i64
  br label %.noexc754

.preheader1570.loopexit:                          ; preds = %._crit_edge
  %i.dn = and i32 %i.bz, 2147483640
  %.pre = load i32, ptr %9, align 4, !tbaa !9
  br label %.preheader1570
end_hunk_2
begin_hunk_3_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.agu = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !200
  %i.agv = mul i64 %i.agt, %i.agu
  %i.agw = getelementptr inbounds nuw i8, ptr %i.agr, i64 %i.agv ; 4 uses
  %i.agx = load i32, ptr %9, align 4, !tbaa !9    ; 11 uses
  %i.agy = icmp sgt i32 %i.agx, 7
  br i1 %i.agy, label %.noexc714.lr.ph, label %._crit_edge1851

.noexc714.lr.ph:                                  ; preds = %.noexc716
  %i.agz = load i32, ptr %6, align 4, !tbaa !9    ; 3 uses
  %i.aha = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !203
  %i.ahb = load ptr, ptr %5, align 8, !tbaa !32, !noalias !203
  %i.ahc = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !203
  %i.ahd = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !203 ; 2 uses
  %factor.op.mul1858 = mul i64 %i.ahc, %i.ahd     ; 2 uses
  %i.ahe = sext i32 %i.aha to i64
  %i.ahf = load i32, ptr %10, align 4, !tbaa !9
  %i.ahg = mul nsw i32 %i.ahf, %i.agp
  %i.ahh = sext i32 %i.ahg to i64
  %i.ahi = mul i64 %i.ahd, %i.ahe
  %i.ahj = mul i64 %i.ahi, %i.ahh
  %invariant.gep1860 = getelementptr i8, ptr %i.ahb, i64 %i.ahj
  %i.ahk = load i32, ptr %11, align 4, !tbaa !9
  %i.ahl = mul i32 %i.agz, %i.agq
  %i.ahm = mul i32 %i.ahl, %i.ahk
  %i.ahn = sext i32 %i.ahm to i64
  %invariant.gep1861 = getelementptr i8, ptr %invariant.gep1860, i64 %i.ahn ; 2 uses
  %i.aho = load i32, ptr %12, align 4, !tbaa !9   ; 3 uses
  %i.ahp = icmp sgt i32 %i.aho, 0
  br i1 %i.ahp, label %.noexc714.lr.ph.split.us, label %.noexc714.preheader

.noexc714.preheader:                              ; preds = %.noexc714.lr.ph
  %i.ahq = and i32 %i.agx, 2147483640
  br label %._crit_edge1851

.noexc714.lr.ph.split.us:                         ; preds = %.noexc714.lr.ph
  %i.ahr = load ptr, ptr %13, align 8, !tbaa !20  ; 2 uses
  %i.ahs = icmp eq i32 %i.agz, 8
  %i.aht = add nsw i32 %i.aho, -1
  %i.ahu = zext nneg i32 %i.aht to i64
  %i.ahv = shl nuw nsw i64 %i.ahu, 5              ; 2 uses
  %wide.trip.count2075 = zext nneg i32 %i.aho to i64 ; 2 uses
  br i1 %i.ahs, label %.noexc714.us.us, label %.noexc714.us

.noexc714.us.us:                                  ; preds = %.noexc714.lr.ph.split.us, %._crit_edge1838.split.us.us.us
  %.06411850.us.us = phi i32 [ %i.ajg, %._crit_edge1838.split.us.us.us ], [ 0, %.noexc714.lr.ph.split.us ] ; 2 uses
  %.06421849.us.us = phi ptr [ %scevgep2073, %._crit_edge1838.split.us.us.us ], [ %i.agw, %.noexc714.lr.ph.split.us ] ; 2 uses
  %i.ahw = phi <4 x i32> [ %i.aje, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.ahx = phi <4 x i32> [ %i.ajb, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.ahy = phi <4 x i32> [ %i.aiy, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.ahz = phi <4 x i32> [ %i.aiv, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.aia = lshr exact i32 %.06411850.us.us, 3
  %i.aib = zext nneg i32 %i.aia to i64
  %.reass1859.us.us = mul i64 %factor.op.mul1858, %i.aib
  %gep1862.us.us = getelementptr i8, ptr %invariant.gep1861, i64 %.reass1859.us.us
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.noexc714.us.us
  %indvars.iv2070 = phi i64 [ %indvars.iv.next2071, %bb.o ], [ 0, %.noexc714.us.us ] ; 2 uses
  %.16431835.us.us.us = phi ptr [ %i.ajf, %bb.o ], [ %.06421849.us.us, %.noexc714.us.us ] ; 3 uses
  %i.aic = phi <4 x i32> [ %i.aje, %bb.o ], [ %i.ahw, %.noexc714.us.us ]
  %i.aid = phi <4 x i32> [ %i.ajb, %bb.o ], [ %i.ahx, %.noexc714.us.us ]
  %i.aie = phi <4 x i32> [ %i.aiy, %bb.o ], [ %i.ahy, %.noexc714.us.us ]
  %i.aif = phi <4 x i32> [ %i.aiv, %bb.o ], [ %i.ahz, %.noexc714.us.us ]
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv2070
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !9
  %i.aii = sext i32 %i.aih to i64
  %i.aij = getelementptr inbounds i8, ptr %gep1862.us.us, i64 %i.aii
  %i.aik = load <8 x i8>, ptr %i.aij, align 1, !tbaa !46
  %i.ail = sext <8 x i8> %i.aik to <8 x i16>      ; 4 uses
  %i.aim = load <16 x i8>, ptr %.16431835.us.us.us, align 16, !tbaa !46 ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.16431835.us.us.us, i64 16
  %i.aio = load <16 x i8>, ptr %i.ain, align 16, !tbaa !46 ; 3 uses
  %.lobit.i762.us.us.us = ashr <16 x i8> %i.aim, splat (i8 7) ; 2 uses
  %.lobit.i761.us.us.us = ashr <16 x i8> %i.aio, splat (i8 7) ; 2 uses
  %i.aip = shufflevector <16 x i8> %i.aim, <16 x i8> %.lobit.i762.us.us.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aiq = shufflevector <16 x i8> %i.aim, <16 x i8> %.lobit.i762.us.us.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.air = shufflevector <16 x i8> %i.aio, <16 x i8> %.lobit.i761.us.us.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ais = shufflevector <16 x i8> %i.aio, <16 x i8> %.lobit.i761.us.us.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ait = shufflevector <8 x i16> %i.ail, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aiu = bitcast <16 x i8> %i.aip to <8 x i16>
  %i.aiv = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ait, <8 x i16> %i.aiu, <4 x i32> %i.aif) ; 3 uses
  %i.aiw = shufflevector <8 x i16> %i.ail, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aix = bitcast <16 x i8> %i.aiq to <8 x i16>
  %i.aiy = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aiw, <8 x i16> %i.aix, <4 x i32> %i.aie) ; 3 uses
  %i.aiz = shufflevector <8 x i16> %i.ail, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aja = bitcast <16 x i8> %i.air to <8 x i16>
  %i.ajb = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aiz, <8 x i16> %i.aja, <4 x i32> %i.aid) ; 3 uses
  %i.ajc = shufflevector <8 x i16> %i.ail, <8 x i16> poison, <8 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.ajd = bitcast <16 x i8> %i.ais to <8 x i16>
  %i.aje = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ajc, <8 x i16> %i.ajd, <4 x i32> %i.aic) ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %.16431835.us.us.us, i64 32
  %indvars.iv.next2071 = add nuw nsw i64 %indvars.iv2070, 1 ; 2 uses
  %exitcond2076.not = icmp eq i64 %indvars.iv.next2071, %wide.trip.count2075
  br i1 %exitcond2076.not, label %._crit_edge1838.split.us.us.us, label %bb.o, !llvm.loop !206

._crit_edge1838.split.us.us.us:                   ; preds = %bb.o
  %scevgep2072 = getelementptr i8, ptr %.06421849.us.us, i64 32
  %scevgep2073 = getelementptr i8, ptr %scevgep2072, i64 %i.ahv ; 2 uses
  %i.ajg = add nuw nsw i32 %.06411850.us.us, 8    ; 2 uses
  %i.ajh = or disjoint i32 %i.ajg, 7
  %i.aji = icmp slt i32 %i.ajh, %i.agx
  br i1 %i.aji, label %.noexc714.us.us, label %._crit_edge1851.loopexit, !llvm.loop !207

.noexc714.us:                                     ; preds = %.noexc714.lr.ph.split.us, %._crit_edge1838.split.us1867
  %.06411850.us = phi i32 [ %i.alq, %._crit_edge1838.split.us1867 ], [ 0, %.noexc714.lr.ph.split.us ] ; 2 uses
  %.06421849.us = phi ptr [ %scevgep2066, %._crit_edge1838.split.us1867 ], [ %i.agw, %.noexc714.lr.ph.split.us ] ; 2 uses
  %i.ajj = phi <4 x i32> [ %i.alo, %._crit_edge1838.split.us1867 ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.ajk = phi <4 x i32> [ %i.all, %._crit_edge1838.split.us1867 ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.ajl = phi <4 x i32> [ %i.ali, %._crit_edge1838.split.us1867 ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.ajm = phi <4 x i32> [ %i.alf, %._crit_edge1838.split.us1867 ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.ajn = sdiv i32 %.06411850.us, %i.agz
  %i.ajo = sext i32 %i.ajn to i64
  %.reass1859.us = mul i64 %factor.op.mul1858, %i.ajo
  %gep1862.us = getelementptr i8, ptr %invariant.gep1861, i64 %.reass1859.us
  br label %bb.p

bb.p:                                             ; preds = %.noexc714.us, %bb.p
  %indvars.iv2063 = phi i64 [ 0, %.noexc714.us ], [ %indvars.iv.next2064, %bb.p ] ; 2 uses
  %.16431835.us1864 = phi ptr [ %.06421849.us, %.noexc714.us ], [ %i.alp, %bb.p ] ; 3 uses
  %i.ajp = phi <4 x i32> [ %i.ajj, %.noexc714.us ], [ %i.alo, %bb.p ]
  %i.ajq = phi <4 x i32> [ %i.ajk, %.noexc714.us ], [ %i.all, %bb.p ]
  %i.ajr = phi <4 x i32> [ %i.ajl, %.noexc714.us ], [ %i.ali, %bb.p ]
  %i.ajs = phi <4 x i32> [ %i.ajm, %.noexc714.us ], [ %i.alf, %bb.p ]
  %i.ajt = getelementptr inbounds nuw [4 x i8], ptr %i.ahr, i64 %indvars.iv2063
  %i.aju = load i32, ptr %i.ajt, align 4, !tbaa !9
  %i.ajv = sext i32 %i.aju to i64
  %i.ajw = getelementptr inbounds i8, ptr %gep1862.us, i64 %i.ajv ; 8 uses
  %i.ajx = load i8, ptr %i.ajw, align 1, !tbaa !46
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ac
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !46
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ug
  %i.akb = load i8, ptr %i.aka, align 1, !tbaa !46
  %i.akc = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.uh
  %i.akd = load i8, ptr %i.akc, align 1, !tbaa !46
  %i.ake = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ui
  %i.akf = load i8, ptr %i.ake, align 1, !tbaa !46
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.uj
  %i.akh = load i8, ptr %i.akg, align 1, !tbaa !46
  %i.aki = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.uk
  %i.akj = load i8, ptr %i.aki, align 1, !tbaa !46
  %i.akk = getelementptr inbounds nuw i8, ptr %i.ajw, i64 %i.ul
  %i.akl = load i8, ptr %i.akk, align 1, !tbaa !46
  %i.akm = insertelement <16 x i8> poison, i8 %i.ajx, i64 0
  %i.akn = insertelement <16 x i8> %i.akm, i8 %i.ajz, i64 1
  %i.ako = insertelement <16 x i8> %i.akn, i8 %i.akb, i64 2
  %i.akp = insertelement <16 x i8> %i.ako, i8 %i.akd, i64 3
  %i.akq = insertelement <16 x i8> %i.akp, i8 %i.akf, i64 4
  %i.akr = insertelement <16 x i8> %i.akq, i8 %i.akh, i64 5
  %i.aks = insertelement <16 x i8> %i.akr, i8 %i.akj, i64 6
  %i.akt = insertelement <16 x i8> %i.aks, i8 %i.akl, i64 7
  %i.aku = shufflevector <16 x i8> %i.akt, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.akv = sext <8 x i8> %i.aku to <8 x i16>      ; 4 uses
  %i.akw = load <16 x i8>, ptr %.16431835.us1864, align 16, !tbaa !46 ; 3 uses
  %i.akx = getelementptr inbounds nuw i8, ptr %.16431835.us1864, i64 16
  %i.aky = load <16 x i8>, ptr %i.akx, align 16, !tbaa !46 ; 3 uses
  %.lobit.i762.us1865 = ashr <16 x i8> %i.akw, splat (i8 7) ; 2 uses
  %.lobit.i761.us1866 = ashr <16 x i8> %i.aky, splat (i8 7) ; 2 uses
  %i.akz = shufflevector <16 x i8> %i.akw, <16 x i8> %.lobit.i762.us1865, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ala = shufflevector <16 x i8> %i.akw, <16 x i8> %.lobit.i762.us1865, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.alb = shufflevector <16 x i8> %i.aky, <16 x i8> %.lobit.i761.us1866, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.alc = shufflevector <16 x i8> %i.aky, <16 x i8> %.lobit.i761.us1866, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ald = shufflevector <8 x i16> %i.akv, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ale = bitcast <16 x i8> %i.akz to <8 x i16>
  %i.alf = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ald, <8 x i16> %i.ale, <4 x i32> %i.ajs) ; 3 uses
  %i.alg = shufflevector <8 x i16> %i.akv, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.alh = bitcast <16 x i8> %i.ala to <8 x i16>
  %i.ali = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.alg, <8 x i16> %i.alh, <4 x i32> %i.ajr) ; 3 uses
  %i.alj = shufflevector <8 x i16> %i.akv, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.alk = bitcast <16 x i8> %i.alb to <8 x i16>
  %i.all = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.alj, <8 x i16> %i.alk, <4 x i32> %i.ajq) ; 3 uses
  %i.alm = shufflevector <8 x i16> %i.akv, <8 x i16> poison, <8 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aln = bitcast <16 x i8> %i.alc to <8 x i16>
  %i.alo = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.alm, <8 x i16> %i.aln, <4 x i32> %i.ajp) ; 3 uses
  %i.alp = getelementptr inbounds nuw i8, ptr %.16431835.us1864, i64 32
  %indvars.iv.next2064 = add nuw nsw i64 %indvars.iv2063, 1 ; 2 uses
  %exitcond2069.not = icmp eq i64 %indvars.iv.next2064, %wide.trip.count2075
  br i1 %exitcond2069.not, label %._crit_edge1838.split.us1867, label %bb.p, !llvm.loop !206

._crit_edge1838.split.us1867:                     ; preds = %bb.p
  %scevgep2065 = getelementptr i8, ptr %.06421849.us, i64 32
  %scevgep2066 = getelementptr i8, ptr %scevgep2065, i64 %i.ahv ; 2 uses
  %i.alq = add nuw nsw i32 %.06411850.us, 8       ; 2 uses
  %i.alr = or disjoint i32 %i.alq, 7
  %i.als = icmp slt i32 %i.alr, %i.agx
  br i1 %i.als, label %.noexc714.us, label %._crit_edge1851.loopexit1931, !llvm.loop !207

._crit_edge1851.loopexit:                         ; preds = %._crit_edge1838.split.us.us.us
  %i.alt = and i32 %i.agx, 2147483640
  br label %._crit_edge1851

._crit_edge1851.loopexit1931:                     ; preds = %._crit_edge1838.split.us1867
  %i.alu = and i32 %i.agx, 2147483640
  br label %._crit_edge1851

._crit_edge1851:                                  ; preds = %.noexc714.preheader, %._crit_edge1851.loopexit1931, %._crit_edge1851.loopexit, %.noexc716
  %.lcssa1620 = phi <4 x i32> [ zeroinitializer, %.noexc716 ], [ %i.aiv, %._crit_edge1851.loopexit ], [ %i.alf, %._crit_edge1851.loopexit1931 ], [ zeroinitializer, %.noexc714.preheader ]
  %.lcssa1619 = phi <4 x i32> [ zeroinitializer, %.noexc716 ], [ %i.aiy, %._crit_edge1851.loopexit ], [ %i.ali, %._crit_edge1851.loopexit1931 ], [ zeroinitializer, %.noexc714.preheader ]
  %.lcssa1618 = phi <4 x i32> [ zeroinitializer, %.noexc716 ], [ %i.ajb, %._crit_edge1851.loopexit ], [ %i.all, %._crit_edge1851.loopexit1931 ], [ zeroinitializer, %.noexc714.preheader ]
  %.lcssa1617 = phi <4 x i32> [ zeroinitializer, %.noexc716 ], [ %i.aje, %._crit_edge1851.loopexit ], [ %i.alo, %._crit_edge1851.loopexit1931 ], [ zeroinitializer, %.noexc714.preheader ]
  %.0642.lcssa = phi ptr [ %i.agw, %.noexc716 ], [ %scevgep2073, %._crit_edge1851.loopexit ], [ %scevgep2066, %._crit_edge1851.loopexit1931 ], [ %i.agw, %.noexc714.preheader ] ; 3 uses
  %.0641.lcssa = phi i32 [ 0, %.noexc716 ], [ %i.alt, %._crit_edge1851.loopexit ], [ %i.alu, %._crit_edge1851.loopexit1931 ], [ %i.ahq, %.noexc714.preheader ] ; 5 uses
  %i.alv = add <4 x i32> %.lcssa1619, %.lcssa1620
  %i.alw = add <4 x i32> %i.alv, %.lcssa1618
  %i.alx = add <4 x i32> %i.alw, %.lcssa1617      ; 3 uses
  %i.aly = or disjoint i32 %.0641.lcssa, 1
  %i.alz = icmp slt i32 %i.aly, %i.agx
  br i1 %i.alz, label %.noexc712.lr.ph, label %.preheader

.noexc712.lr.ph:                                  ; preds = %._crit_edge1851
  %i.ama = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !208
  %i.amb = load ptr, ptr %5, align 8, !tbaa !32, !noalias !208
  %i.amc = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !208
  %i.amd = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !208 ; 2 uses
  %factor.op.mul1897 = mul i64 %i.amc, %i.amd
  %i.ame = sext i32 %i.ama to i64
  %i.amf = load i32, ptr %10, align 4, !tbaa !9
  %i.amg = mul nsw i32 %i.amf, %i.agp
  %i.amh = sext i32 %i.amg to i64
  %i.ami = mul i64 %i.amd, %i.ame
  %i.amj = mul i64 %i.ami, %i.amh
  %invariant.gep1899 = getelementptr i8, ptr %i.amb, i64 %i.amj
  %i.amk = load i32, ptr %11, align 4, !tbaa !9
  %i.aml = mul nsw i32 %i.amk, %i.agq
  %i.amm = sext i32 %i.aml to i64
  %invariant.gep1900 = getelementptr i8, ptr %invariant.gep1899, i64 %i.amm
  %i.amn = load i32, ptr %12, align 4, !tbaa !9   ; 5 uses
  %i.amo = icmp sgt i32 %i.amn, 0
  br i1 %i.amo, label %.noexc712.lr.ph.split.us, label %.noexc712.preheader

.noexc712.preheader:                              ; preds = %.noexc712.lr.ph
  %i.amp = or disjoint i32 %.0641.lcssa, 2
  %i.amq = add nsw i32 %i.agx, -2
  %i.amr = sub nsw i32 %i.amq, %.0641.lcssa
  %i.ams = and i32 %i.amr, -2
  %i.amt = add i32 %i.amp, %i.ams
  br label %.preheader

.noexc712.lr.ph.split.us:                         ; preds = %.noexc712.lr.ph
  %i.amu = load ptr, ptr %13, align 8, !tbaa !20  ; 3 uses
  %i.amv = add nsw i32 %i.amn, -1
  %i.amw = zext nneg i32 %i.amv to i64
  %i.amx = shl nuw nsw i64 %i.amw, 3
  %i.amy = zext nneg i32 %.0641.lcssa to i64
  %wide.trip.count2082 = zext nneg i32 %i.amn to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count2082, 1
  %i.amz = icmp eq i32 %i.amn, 1
  %unroll_iter = and i64 %wide.trip.count2082, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod2247 = trunc i32 %i.amn to i1
  br label %.noexc712.us

.noexc712.us:                                     ; preds = %._crit_edge1889.us, %.noexc712.lr.ph.split.us
  %indvars.iv2084 = phi i64 [ %indvars.iv.next2085, %._crit_edge1889.us ], [ %i.amy, %.noexc712.lr.ph.split.us ] ; 2 uses
  %.26441892.us = phi ptr [ %scevgep2080, %._crit_edge1889.us ], [ %.0642.lcssa, %.noexc712.lr.ph.split.us ] ; 3 uses
  %i.ana = phi <4 x i32> [ %.lcssa2244, %._crit_edge1889.us ], [ %i.alx, %.noexc712.lr.ph.split.us ] ; 2 uses
  %.reass1898.us = mul i64 %factor.op.mul1897, %indvars.iv2084
  %gep1901.us = getelementptr i8, ptr %invariant.gep1900, i64 %.reass1898.us ; 3 uses
  br i1 %i.amz, label %.epil.preheader, label %.noexc712.us.new

.noexc712.us.new:                                 ; preds = %.noexc712.us, %.noexc712.us.new
  %indvars.iv2077 = phi i64 [ %indvars.iv.next2078.1, %.noexc712.us.new ], [ 0, %.noexc712.us ] ; 3 uses
  %.31886.us = phi ptr [ %i.aog, %.noexc712.us.new ], [ %.26441892.us, %.noexc712.us ] ; 3 uses
  %i.anb = phi <4 x i32> [ %i.aof, %.noexc712.us.new ], [ %i.ana, %.noexc712.us ]
  %niter = phi i64 [ %niter.next.1, %.noexc712.us.new ], [ 0, %.noexc712.us ]
  %i.anc = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %indvars.iv2077
  %i.and = load i32, ptr %i.anc, align 4, !tbaa !9
  %i.ane = sext i32 %i.and to i64
  %i.anf = getelementptr inbounds i8, ptr %gep1901.us, i64 %i.ane ; 2 uses
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !46
  %i.anh = getelementptr inbounds nuw i8, ptr %i.anf, i64 %i.ac
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !46
  %i.anj = insertelement <2 x i8> poison, i8 %i.ang, i64 0
  %i.ank = insertelement <2 x i8> %i.anj, i8 %i.ani, i64 1
  %i.anl = shufflevector <2 x i8> %i.ank, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.anm = sext <8 x i8> %i.anl to <8 x i16>
  %i.ann = load <8 x i8>, ptr %.31886.us, align 1, !tbaa !46
  %i.ano = sext <8 x i8> %i.ann to <8 x i16>
  %i.anp = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.anm, <8 x i16> %i.ano, <4 x i32> %i.anb)
  %i.anq = getelementptr inbounds nuw i8, ptr %.31886.us, i64 8
  %i.anr = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %indvars.iv2077
  %i.ans = getelementptr inbounds nuw i8, ptr %i.anr, i64 4
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !9
  %i.anu = sext i32 %i.ant to i64
  %i.anv = getelementptr inbounds i8, ptr %gep1901.us, i64 %i.anu ; 2 uses
  %i.anw = load i8, ptr %i.anv, align 1, !tbaa !46
  %i.anx = getelementptr inbounds nuw i8, ptr %i.anv, i64 %i.ac
  %i.any = load i8, ptr %i.anx, align 1, !tbaa !46
  %i.anz = insertelement <2 x i8> poison, i8 %i.anw, i64 0
  %i.aoa = insertelement <2 x i8> %i.anz, i8 %i.any, i64 1
  %i.aob = shufflevector <2 x i8> %i.aoa, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aoc = sext <8 x i8> %i.aob to <8 x i16>
  %i.aod = load <8 x i8>, ptr %i.anq, align 1, !tbaa !46
  %i.aoe = sext <8 x i8> %i.aod to <8 x i16>
  %i.aof = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aoc, <8 x i16> %i.aoe, <4 x i32> %i.anp) ; 3 uses
  %i.aog = getelementptr inbounds nuw i8, ptr %.31886.us, i64 16 ; 2 uses
  %indvars.iv.next2078.1 = add nuw nsw i64 %indvars.iv2077, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge1889.us.unr-lcssa, label %.noexc712.us.new, !llvm.loop !211

._crit_edge1889.us.unr-lcssa:                     ; preds = %.noexc712.us.new
  br i1 %lcmp.mod.not, label %._crit_edge1889.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge1889.us.unr-lcssa, %.noexc712.us
  %indvars.iv2077.epil.init = phi i64 [ 0, %.noexc712.us ], [ %indvars.iv.next2078.1, %._crit_edge1889.us.unr-lcssa ]
  %.31886.us.epil.init = phi ptr [ %.26441892.us, %.noexc712.us ], [ %i.aog, %._crit_edge1889.us.unr-lcssa ]
  %.epil.init = phi <4 x i32> [ %i.ana, %.noexc712.us ], [ %i.aof, %._crit_edge1889.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2247)
  %i.aoh = getelementptr inbounds nuw [4 x i8], ptr %i.amu, i64 %indvars.iv2077.epil.init
  %i.aoi = load i32, ptr %i.aoh, align 4, !tbaa !9
  %i.aoj = sext i32 %i.aoi to i64
  %i.aok = getelementptr inbounds i8, ptr %gep1901.us, i64 %i.aoj ; 2 uses
  %i.aol = load i8, ptr %i.aok, align 1, !tbaa !46
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aok, i64 %i.ac
  %i.aon = load i8, ptr %i.aom, align 1, !tbaa !46
  %i.aoo = insertelement <2 x i8> poison, i8 %i.aol, i64 0
  %i.aop = insertelement <2 x i8> %i.aoo, i8 %i.aon, i64 1
  %i.aoq = shufflevector <2 x i8> %i.aop, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aor = sext <8 x i8> %i.aoq to <8 x i16>
  %i.aos = load <8 x i8>, ptr %.31886.us.epil.init, align 1, !tbaa !46
  %i.aot = sext <8 x i8> %i.aos to <8 x i16>
  %i.aou = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aor, <8 x i16> %i.aot, <4 x i32> %.epil.init)
  br label %._crit_edge1889.us

._crit_edge1889.us:                               ; preds = %._crit_edge1889.us.unr-lcssa, %.epil.preheader
  %.lcssa2244 = phi <4 x i32> [ %i.aof, %._crit_edge1889.us.unr-lcssa ], [ %i.aou, %.epil.preheader ] ; 2 uses
  %scevgep2079 = getelementptr i8, ptr %.26441892.us, i64 8
  %scevgep2080 = getelementptr i8, ptr %scevgep2079, i64 %i.amx ; 2 uses
  %indvars.iv.next2085 = add nuw nsw i64 %indvars.iv2084, 2 ; 3 uses
  %i.aov = trunc i64 %indvars.iv.next2085 to i32
  %i.aow = or i32 %i.aov, 1
  %i.aox = icmp slt i32 %i.aow, %i.agx
  br i1 %i.aox, label %.noexc712.us, label %.preheader.loopexit, !llvm.loop !212

.preheader.loopexit:                              ; preds = %._crit_edge1889.us
  %i.aoy = trunc nuw i64 %indvars.iv.next2085 to i32
  br label %.preheader

.preheader:                                       ; preds = %.noexc712.preheader, %.preheader.loopexit, %._crit_edge1851
  %.lcssa1622 = phi <4 x i32> [ %i.alx, %._crit_edge1851 ], [ %.lcssa2244, %.preheader.loopexit ], [ %i.alx, %.noexc712.preheader ] ; 3 uses
  %.2644.lcssa = phi ptr [ %.0642.lcssa, %._crit_edge1851 ], [ %scevgep2080, %.preheader.loopexit ], [ %.0642.lcssa, %.noexc712.preheader ]
  %.1.lcssa = phi i32 [ %.0641.lcssa, %._crit_edge1851 ], [ %i.aoy, %.preheader.loopexit ], [ %i.amt, %.noexc712.preheader ] ; 2 uses
  %i.aoz = icmp slt i32 %.1.lcssa, %i.agx
  br i1 %i.aoz, label %.noexc711.lr.ph, label %._crit_edge1913

.noexc711.lr.ph:                                  ; preds = %.preheader
  %i.apa = load i32, ptr %i.s, align 4, !tbaa !10, !noalias !213
  %i.apb = load ptr, ptr %5, align 8, !tbaa !32, !noalias !213
  %i.apc = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !213
  %i.apd = load i64, ptr %i.t, align 8, !tbaa !36, !noalias !213 ; 2 uses
  %factor.op.mul1915 = mul i64 %i.apc, %i.apd
  %i.ape = sext i32 %i.apa to i64
  %i.apf = load i32, ptr %10, align 4, !tbaa !9
  %i.apg = mul nsw i32 %i.apf, %i.agp
  %i.aph = sext i32 %i.apg to i64
  %i.api = mul i64 %i.apd, %i.ape
  %i.apj = mul i64 %i.api, %i.aph
  %invariant.gep1917 = getelementptr i8, ptr %i.apb, i64 %i.apj
  %i.apk = load i32, ptr %11, align 4, !tbaa !9
  %i.apl = mul nsw i32 %i.apk, %i.agq
  %i.apm = sext i32 %i.apl to i64
  %invariant.gep1918 = getelementptr i8, ptr %invariant.gep1917, i64 %i.apm
  %i.apn = load i32, ptr %12, align 4, !tbaa !9   ; 5 uses
  %i.apo = icmp sgt i32 %i.apn, 0
  br i1 %i.apo, label %.noexc711.lr.ph.split.us, label %._crit_edge1913

.noexc711.lr.ph.split.us:                         ; preds = %.noexc711.lr.ph
  %i.app = load ptr, ptr %13, align 8, !tbaa !20  ; 3 uses
  %i.apq = add nsw i32 %i.apn, -1
  %i.apr = zext nneg i32 %i.apq to i64
  %i.aps = shl nuw nsw i64 %i.apr, 2
  %i.apt = zext i32 %.1.lcssa to i64
  %wide.trip.count2092 = zext nneg i32 %i.apn to i64 ; 2 uses
  %xtraiter2249 = and i64 %wide.trip.count2092, 1
  %i.apu = icmp eq i32 %i.apn, 1
  %unroll_iter2255 = and i64 %wide.trip.count2092, 2147483646
  %lcmp.mod2252.not = icmp eq i64 %xtraiter2249, 0
  %lcmp.mod2254 = trunc i32 %i.apn to i1
  br label %.noexc711.us

.noexc711.us:                                     ; preds = %._crit_edge1908.us, %.noexc711.lr.ph.split.us
  %indvars.iv2094 = phi i64 [ %indvars.iv.next2095, %._crit_edge1908.us ], [ %i.apt, %.noexc711.lr.ph.split.us ] ; 2 uses
  %.41911.us = phi ptr [ %scevgep2090, %._crit_edge1908.us ], [ %.2644.lcssa, %.noexc711.lr.ph.split.us ] ; 3 uses
  %i.apv = phi <4 x i32> [ %.lcssa2245, %._crit_edge1908.us ], [ %.lcssa1622, %.noexc711.lr.ph.split.us ] ; 2 uses
  %.reass1916.us = mul i64 %factor.op.mul1915, %indvars.iv2094
  %gep1919.us = getelementptr i8, ptr %invariant.gep1918, i64 %.reass1916.us ; 3 uses
  br i1 %i.apu, label %.epil.preheader2248, label %.noexc711.us.new

.noexc711.us.new:                                 ; preds = %.noexc711.us, %.noexc711.us.new
  %indvars.iv2087 = phi i64 [ %indvars.iv.next2088.1, %.noexc711.us.new ], [ 0, %.noexc711.us ] ; 3 uses
  %.51905.us = phi ptr [ %i.aqx, %.noexc711.us.new ], [ %.41911.us, %.noexc711.us ] ; 3 uses
  %i.apw = phi <4 x i32> [ %i.aqw, %.noexc711.us.new ], [ %i.apv, %.noexc711.us ]
  %niter2256 = phi i64 [ %niter2256.next.1, %.noexc711.us.new ], [ 0, %.noexc711.us ]
  %i.apx = getelementptr inbounds nuw [4 x i8], ptr %i.app, i64 %indvars.iv2087
  %i.apy = load i32, ptr %i.apx, align 4, !tbaa !9
  %i.apz = sext i32 %i.apy to i64
  %i.aqa = getelementptr inbounds i8, ptr %gep1919.us, i64 %i.apz
  %i.aqb = load i8, ptr %i.aqa, align 1, !tbaa !46
  %i.aqc = sext i8 %i.aqb to i16
  %i.aqd = insertelement <8 x i16> poison, i16 %i.aqc, i64 0
  %i.aqe = shufflevector <8 x i16> %i.aqd, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aqf = load <8 x i8>, ptr %.51905.us, align 1, !tbaa !46
  %i.aqg = sext <8 x i8> %i.aqf to <8 x i16>
  %i.aqh = shufflevector <8 x i16> %i.aqg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aqi = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.aqe, <8 x i16> %i.aqh, <4 x i32> %i.apw)
  %i.aqj = getelementptr inbounds nuw i8, ptr %.51905.us, i64 4
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.app, i64 %indvars.iv2087
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 4
  %i.aqm = load i32, ptr %i.aql, align 4, !tbaa !9
  %i.aqn = sext i32 %i.aqm to i64
  %i.aqo = getelementptr inbounds i8, ptr %gep1919.us, i64 %i.aqn
  %i.aqp = load i8, ptr %i.aqo, align 1, !tbaa !46
  %i.aqq = sext i8 %i.aqp to i16
  %i.aqr = insertelement <8 x i16> poison, i16 %i.aqq, i64 0
  %i.aqs = shufflevector <8 x i16> %i.aqr, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aqt = load <8 x i8>, ptr %i.aqj, align 1, !tbaa !46
  %i.aqu = sext <8 x i8> %i.aqt to <8 x i16>
  %i.aqv = shufflevector <8 x i16> %i.aqu, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aqw = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.aqs, <8 x i16> %i.aqv, <4 x i32> %i.aqi) ; 3 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %.51905.us, i64 8 ; 2 uses
  %indvars.iv.next2088.1 = add nuw nsw i64 %indvars.iv2087, 2 ; 2 uses
  %niter2256.next.1 = add i64 %niter2256, 2       ; 2 uses
  %niter2256.ncmp.1 = icmp eq i64 %niter2256.next.1, %unroll_iter2255
  br i1 %niter2256.ncmp.1, label %._crit_edge1908.us.unr-lcssa, label %.noexc711.us.new, !llvm.loop !216

._crit_edge1908.us.unr-lcssa:                     ; preds = %.noexc711.us.new
  br i1 %lcmp.mod2252.not, label %._crit_edge1908.us, label %.epil.preheader2248

.epil.preheader2248:                              ; preds = %._crit_edge1908.us.unr-lcssa, %.noexc711.us
  %indvars.iv2087.epil.init = phi i64 [ 0, %.noexc711.us ], [ %indvars.iv.next2088.1, %._crit_edge1908.us.unr-lcssa ]
  %.51905.us.epil.init = phi ptr [ %.41911.us, %.noexc711.us ], [ %i.aqx, %._crit_edge1908.us.unr-lcssa ]
  %.epil.init2251 = phi <4 x i32> [ %i.apv, %.noexc711.us ], [ %i.aqw, %._crit_edge1908.us.unr-lcssa ]
end_hunk_3
begin_hunk_4_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.db = load ptr, ptr %i.am, align 8, !tbaa !226 ; 2 uses
  %.not.i38 = icmp eq ptr %i.db, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.de = load ptr, ptr %i.ap, align 8, !tbaa !225 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.de, null
  %i.df = load ptr, ptr %12, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !231
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(8) %i.de, ptr noundef %i.df)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !233

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.df, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.df) #4
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  %i.dk = extractvalue { ptr, i32 } %i.dj, 0
  call void @__clang_call_terminate(ptr %i.dk) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.dl = load ptr, ptr %i.v, align 8, !tbaa !226 ; 2 uses
  %.not.i42 = icmp eq ptr %i.dl, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dm = atomicrmw add ptr %i.dl, i32 -1 acq_rel, align 4
  %i.dn = icmp eq i32 %i.dm, 1
  br i1 %i.dn, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.do = load ptr, ptr %i.y, align 8, !tbaa !225 ; 3 uses
  %.not3.i43 = icmp eq ptr %i.do, null
  %i.dp = load ptr, ptr %11, align 8, !tbaa !32   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr %i.do, align 8, !tbaa !231
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  invoke void %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.dp)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !233

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.dp, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.dp) #4
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #24
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ac

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
  %.not151 = icmp sgt i32 %i.k, %i.j
  br i1 %.not151, label %._crit_edge155, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph154, %_ZN4ncnn3MatD2Ev.exit
  %.045152 = phi i32 [ %i.k, %.lr.ph154 ], [ %i.bm, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !9
  %i.at = mul nsw i32 %i.as, %.045152             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.ad

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !32, !noalias !258
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !18, !noalias !258
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !258
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !9
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 8 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.bh = icmp sgt i32 %.sroa.speculated120, 3
  %i.bi = and i32 %.sroa.speculated120, 2147483644
  %i.bj = zext nneg i32 %.sroa.speculated120 to i64
  %15 = add i32 %.sroa.speculated120, -2
  %i.bk = sext i32 %.sroa.speculated120 to i64    ; 2 uses
  %i.bl = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.bk, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.bm = add nsw i32 %.045152, 1
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045152, %i.bn
  br i1 %.not.not, label %bb.c, label %._crit_edge155

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bo = phi i32 [ %.pre, %.lr.ph ], [ %i.tj, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bp = phi i32 [ %i.bf, %.lr.ph ], [ %i.tl, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044150 = phi i32 [ 0, %.lr.ph ], [ %i.tk, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.bq = sub nsw i32 %i.bp, %.044150
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.bo, i32 %i.bq) ; 19 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre156 = load i32, ptr %9, align 4, !tbaa !9
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.bt = load i32, ptr %i.an, align 4, !tbaa !10 ; 7 uses
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !19 ; 7 uses
  %i.bv = load i32, ptr %i.ap, align 8, !tbaa !16 ; 6 uses
  %i.bw = load i64, ptr %i.aq, align 8, !tbaa !18
  %i.bx = sext i32 %i.bv to i64
  %i.by = mul i64 %i.bw, %i.bx                    ; 6 uses
  %i.bz = add nsw i32 %i.bt, 1
  %i.ca = sdiv i32 %i.bz, 2                       ; 6 uses
  %factor.op.mul381.i = shl i32 %.sroa.speculated116, 4 ; 4 uses
  br i1 %i.bh, label %.lr.ph384.i, label %.preheader372.i

.lr.ph384.i:                                      ; preds = %._crit_edge
  %i.cb = icmp sgt i32 %.sroa.speculated116, 0
  %i.cc = shl nsw i32 %.sroa.speculated116, 2
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i32 %.sroa.speculated116, 3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul nsw i32 %.sroa.speculated116, 12
  %i.ch = sext i32 %i.cg to i64
  %i.ci = sext i32 %factor.op.mul381.i to i64     ; 12 uses
  %.idx.i = shl i64 %i.by, 3                      ; 2 uses
  %.idx300.i = mul i64 %i.by, 12                  ; 2 uses
  %i.cj = mul nsw i32 %i.bv, %i.bt
  %i.ck = sext i32 %i.cj to i64
  br i1 %i.cb, label %.lr.ph.us.preheader.i, label %.preheader372.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph384.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv435.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next436.i, %._crit_edge.us.i ] ; 2 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv435.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul381.i, %i.cl
  %i.cm = sext i32 %factor.op.mul.reass.us.i to i64
  %i.cn = add i32 %i.at, %i.cl
  %i.co = sdiv i32 %i.cn, %i.bv
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cm
  br label %_ZN4ncnn3MatD2Ev.exit304.us.i

_ZN4ncnn3MatD2Ev.exit304.us.i:                    ; preds = %bb.q, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %.idx494.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx494.i ; 5 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cd ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.cf ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ch ; 2 uses
  %i.cv = load <4 x i32>, ptr %i.cs, align 16, !tbaa !46 ; 2 uses
  %i.cw = load <4 x i32>, ptr %i.ct, align 16, !tbaa !46 ; 2 uses
  %i.cx = load <4 x i32>, ptr %i.cu, align 16, !tbaa !46
  %i.cy = sub <4 x i32> %i.cv, %i.cw
  %i.cz = add <4 x i32> %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ci ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.ci ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.ci ; 2 uses
  %i.dd = load <4 x i32>, ptr %i.da, align 16, !tbaa !46 ; 2 uses
  %i.de = load <4 x i32>, ptr %i.db, align 16, !tbaa !46 ; 2 uses
  %i.df = load <4 x i32>, ptr %i.dc, align 16, !tbaa !46
  %i.dg = sub <4 x i32> %i.dd, %i.de
  %i.dh = add <4 x i32> %i.dg, %i.df              ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ci ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.ci ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.ci ; 2 uses
  %i.dl = load <4 x i32>, ptr %i.di, align 16, !tbaa !46 ; 2 uses
  %i.dm = load <4 x i32>, ptr %i.dj, align 16, !tbaa !46 ; 2 uses
  %i.dn = load <4 x i32>, ptr %i.dk, align 16, !tbaa !46
  %i.do = sub <4 x i32> %i.dl, %i.dm
  %i.dp = add <4 x i32> %i.do, %i.dn              ; 2 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.ci
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.ci
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.ci
  %i.dt = load <4 x i32>, ptr %i.dq, align 16, !tbaa !46 ; 2 uses
  %i.du = load <4 x i32>, ptr %i.dr, align 16, !tbaa !46 ; 2 uses
  %i.dv = load <4 x i32>, ptr %i.ds, align 16, !tbaa !46
  %i.dw = trunc i64 %indvars.iv.i to i32
  %i.dx = add i32 %.044150, %i.dw                 ; 2 uses
  %i.dy = sdiv i32 %i.dx, %i.ca
  %i.dz = srem i32 %i.dx, %i.ca
  %i.ea = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !261
  %i.eb = load ptr, ptr %12, align 8, !tbaa !32, !noalias !261
  %i.ec = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !261
  %i.ed = mul i64 %i.ec, %i.cp
  %i.ee = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !261 ; 2 uses
  %i.ef = mul i64 %i.ed, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.ef
  %i.eh = sext i32 %i.ea to i64
  %i.ei = shl nsw i32 %i.dy, 1                    ; 3 uses
  %i.ej = sext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.eh, %i.ej
  %i.el = mul i64 %i.ek, %i.ee
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.el
  %i.en = shl nsw i32 %i.dz, 1                    ; 2 uses
  %i.eo = mul nsw i32 %i.en, %i.bv
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.em, i64 %i.ep ; 9 uses
  %i.er = or disjoint i32 %i.en, 1
  %i.es = icmp slt i32 %i.er, %i.bt               ; 4 uses
  %.not299.us.i = icmp slt i32 %i.ei, %i.bu
  br i1 %.not299.us.i, label %bb.e, label %bb.k

bb.e:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit304.us.i
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.ci ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %i.ci ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.ci
  %i.ew = load <4 x i32>, ptr %i.ev, align 16, !tbaa !46
  %i.ex = load <4 x i32>, ptr %i.eu, align 16, !tbaa !46
  %i.ey = add <4 x i32> %i.dm, %i.dl
  %i.ez = add <4 x i32> %i.ey, %i.ex              ; 2 uses
  %i.fa = load <4 x i32>, ptr %i.et, align 16, !tbaa !46
  %i.fb = add <4 x i32> %i.de, %i.dd
  %i.fc = add <4 x i32> %i.fb, %i.fa              ; 2 uses
  %i.fd = load <4 x i32>, ptr %i.cr, align 16, !tbaa !46
  %i.fe = add <4 x i32> %i.cw, %i.cv
  %i.ff = add <4 x i32> %i.fe, %i.fd
  %i.fg = add <4 x i32> %i.ff, %i.ez
  %i.fh = add <4 x i32> %i.fg, %i.fc
  %i.fi = add <4 x i32> %i.du, %i.dt
  %i.fj = add <4 x i32> %i.fi, %i.ew
  %i.fk = sub <4 x i32> %i.fj, %i.ez
  %i.fl = add <4 x i32> %i.fk, %i.fc
  %i.fm = ashr <4 x i32> %i.fh, splat (i32 2)     ; 5 uses
  %i.fn = ashr <4 x i32> %i.fl, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.j [
    i32 4, label %bb.h
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %i.by ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx.i ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eq, i64 %.idx300.i ; 2 uses
  %.sroa.0343.0.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 0
  store i32 %.sroa.0343.0.vec.extract.us.i, ptr %i.eq, align 4, !tbaa !9
  %.sroa.0343.4.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 1
  store i32 %.sroa.0343.4.vec.extract.us.i, ptr %i.fo, align 4, !tbaa !9
  %.sroa.0343.8.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 2
  store i32 %.sroa.0343.8.vec.extract.us.i, ptr %i.fp, align 4, !tbaa !9
  %.sroa.0343.12.vec.extract.us.i = extractelement <4 x i32> %i.fm, i64 3
  store i32 %.sroa.0343.12.vec.extract.us.i, ptr %i.fq, align 4, !tbaa !9
  br i1 %i.es, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.sroa.7345.16.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 0
  %i.fr = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %.sroa.7345.16.vec.extract.us.i, ptr %i.fr, align 4, !tbaa !9
  %.sroa.7345.20.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %.sroa.7345.20.vec.extract.us.i, ptr %i.fs, align 4, !tbaa !9
  %.sroa.7345.24.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 2
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store i32 %.sroa.7345.24.vec.extract.us.i, ptr %i.ft, align 4, !tbaa !9
  %.sroa.7345.28.vec.extract.us.i = extractelement <4 x i32> %i.fn, i64 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  store i32 %.sroa.7345.28.vec.extract.us.i, ptr %i.fu, align 4, !tbaa !9
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  store <4 x i32> %i.fm, ptr %i.eq, align 16, !tbaa !46
  br i1 %i.es, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.fv = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <4 x i32> %i.fn, ptr %i.fv, align 16, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ck
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN4ncnn3MatD2Ev.exit304.us.i
  %.1286.us.i = phi ptr [ %i.eq, %_ZN4ncnn3MatD2Ev.exit304.us.i ], [ %i.fw, %bb.j ] ; 7 uses
  %i.fx = or disjoint i32 %i.ei, 1
  %.not299.us.1.i = icmp slt i32 %i.fx, %i.bu
  br i1 %.not299.us.1.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.fy = add <4 x i32> %i.cz, %i.dh
  %i.fz = add <4 x i32> %i.fy, %i.dp
  %i.ga = add <4 x i32> %i.dh, %i.dt
  %i.gb = add <4 x i32> %i.dp, %i.du
  %i.gc = sub <4 x i32> %i.ga, %i.gb
  %i.gd = add <4 x i32> %i.gc, %i.dv
  %i.ge = ashr <4 x i32> %i.fz, splat (i32 2)     ; 5 uses
  %i.gf = ashr <4 x i32> %i.gd, splat (i32 2)     ; 5 uses
  switch i32 %i.bv, label %bb.q [
    i32 4, label %bb.o
    i32 1, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %.1286.us.i, i64 %i.by ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 %.idx300.i ; 2 uses
  %.sroa.0343.0.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 0
  store i32 %.sroa.0343.0.vec.extract.us.1.i, ptr %.1286.us.i, align 4, !tbaa !9
  %.sroa.0343.4.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 1
  store i32 %.sroa.0343.4.vec.extract.us.1.i, ptr %i.gg, align 4, !tbaa !9
  %.sroa.0343.8.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 2
  store i32 %.sroa.0343.8.vec.extract.us.1.i, ptr %i.gh, align 4, !tbaa !9
  %.sroa.0343.12.vec.extract.us.1.i = extractelement <4 x i32> %i.ge, i64 3
  store i32 %.sroa.0343.12.vec.extract.us.1.i, ptr %i.gi, align 4, !tbaa !9
  br i1 %i.es, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.sroa.7345.16.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 0
  %i.gj = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 4
  store i32 %.sroa.7345.16.vec.extract.us.1.i, ptr %i.gj, align 4, !tbaa !9
  %.sroa.7345.20.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 %.sroa.7345.20.vec.extract.us.1.i, ptr %i.gk, align 4, !tbaa !9
  %.sroa.7345.24.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 4
  store i32 %.sroa.7345.24.vec.extract.us.1.i, ptr %i.gl, align 4, !tbaa !9
  %.sroa.7345.28.vec.extract.us.1.i = extractelement <4 x i32> %i.gf, i64 3
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %.sroa.7345.28.vec.extract.us.1.i, ptr %i.gm, align 4, !tbaa !9
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  store <4 x i32> %i.ge, ptr %.1286.us.i, align 16, !tbaa !46
  br i1 %i.es, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.gn = getelementptr inbounds nuw i8, ptr %.1286.us.i, i64 16
  store <4 x i32> %i.gf, ptr %i.gn, align 16, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %_ZN4ncnn3MatD2Ev.exit304.us.i, !llvm.loop !264

._crit_edge.us.i:                                 ; preds = %bb.q
  %indvars.iv.next436.i = add nuw nsw i64 %indvars.iv435.i, 4 ; 3 uses
  %i.go = or disjoint i64 %indvars.iv.next436.i, 3
  %i.gp = icmp samesign ult i64 %i.go, %i.bj
  br i1 %i.gp, label %.lr.ph.us.i, label %.preheader372.loopexit.i, !llvm.loop !265

.preheader372.loopexit.i:                         ; preds = %._crit_edge.us.i
  %i.gq = trunc nuw nsw i64 %indvars.iv.next436.i to i32
  br label %.preheader372.i

.preheader372.i:                                  ; preds = %.lr.ph384.i, %.preheader372.loopexit.i, %._crit_edge
  %.0287.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.gq, %.preheader372.loopexit.i ], [ %i.bi, %.lr.ph384.i ] ; 5 uses
  %i.gr = or disjoint i32 %.0287.lcssa.i, 1
  %i.gs = icmp slt i32 %i.gr, %.sroa.speculated120
  br i1 %i.gs, label %.lr.ph395.i, label %.preheader.i

.lr.ph395.i:                                      ; preds = %.preheader372.i
  %i.gt = icmp sgt i32 %.sroa.speculated116, 0
  %i.gu = shl nsw i32 %.sroa.speculated116, 1
  %i.gv = sext i32 %i.gu to i64
  %i.gw = shl nsw i32 %.sroa.speculated116, 2
  %i.gx = sext i32 %i.gw to i64
  %i.gy = mul nsw i32 %.sroa.speculated116, 6
  %i.gz = sext i32 %i.gy to i64
  %i.ha = shl nsw i32 %.sroa.speculated116, 3
  %i.hb = sext i32 %i.ha to i64                   ; 12 uses
  %i.hc = sext i32 %i.bt to i64
  br i1 %i.gt, label %.lr.ph395.split.us.i, label %.lr.ph395.split.preheader.i

.lr.ph395.split.preheader.i:                      ; preds = %.lr.ph395.i
  %16 = sub i32 %15, %.0287.lcssa.i
  %17 = and i32 %16, -2
  %18 = add i32 %.0287.lcssa.i, 2
  %i.hd = add i32 %18, %17
  br label %.preheader.i

.lr.ph395.split.us.i:                             ; preds = %.lr.ph395.i
  %i.he = load ptr, ptr %12, align 8, !tbaa !32, !noalias !266
  %i.hf = load i64, ptr %i.aq, align 8, !tbaa !18, !noalias !266
  %i.hg = load i64, ptr %i.ar, align 8, !tbaa !36, !noalias !266 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hg, %i.hf
  %i.hh = sext i32 %.0287.lcssa.i to i64
  %wide.trip.count448.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us398.i

.lr.ph.us398.i:                                   ; preds = %._crit_edge.us399.i, %.lr.ph395.split.us.i
  %indvars.iv450.i = phi i64 [ %indvars.iv.next451.i, %._crit_edge.us399.i ], [ %i.hh, %.lr.ph395.split.us.i ] ; 3 uses
  %i.hi = trunc nsw i64 %indvars.iv450.i to i32
  %factor.op.mul.reass.us397.i = mul i32 %factor.op.mul381.i, %i.hi
  %i.hj = sext i32 %factor.op.mul.reass.us397.i to i64
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.hj
  %i.hl = add nsw i64 %indvars.iv450.i, %i.bl
  %.reass.i = mul i64 %factor.op.mul.i, %i.hl
  %i.hm = getelementptr inbounds nuw i8, ptr %i.he, i64 %.reass.i
  br label %_ZN4ncnn3MatD2Ev.exit303.us.i

_ZN4ncnn3MatD2Ev.exit303.us.i:                    ; preds = %bb.x, %.lr.ph.us398.i
  %indvars.iv445.i = phi i64 [ 0, %.lr.ph.us398.i ], [ %indvars.iv.next446.i, %bb.x ] ; 3 uses
  %.idx495.i = shl nuw nsw i64 %indvars.iv445.i, 3
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 %.idx495.i ; 6 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.gv ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.gx ; 3 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.gz ; 3 uses
  %i.hr = load i32, ptr %i.ho, align 4, !tbaa !9  ; 2 uses
  %i.hs = load i32, ptr %i.hp, align 4, !tbaa !9  ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 4
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !9  ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !9  ; 2 uses
  %i.hx = sub i32 %i.hr, %i.hs
  %i.hy = load i32, ptr %i.hq, align 4, !tbaa !9
  %i.hz = add nsw i32 %i.hx, %i.hy
  %i.ia = sub i32 %i.hu, %i.hw
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !9
  %i.id = add nsw i32 %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.hb ; 3 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ho, i64 %i.hb ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.hb ; 3 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.hb ; 3 uses
  %i.ii = load i32, ptr %i.ie, align 4, !tbaa !9
  %i.ij = load i32, ptr %i.if, align 4, !tbaa !9  ; 2 uses
  %i.ik = add nsw i32 %i.ij, %i.ii
  %i.il = load i32, ptr %i.ig, align 4, !tbaa !9  ; 2 uses
  %i.im = add nsw i32 %i.ik, %i.il                ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ie, i64 4
  %i.io = load i32, ptr %i.in, align 4, !tbaa !9
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !9  ; 2 uses
  %i.ir = add nsw i32 %i.iq, %i.io
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  %i.it = load i32, ptr %i.is, align 4, !tbaa !9  ; 2 uses
  %i.iu = add nsw i32 %i.ir, %i.it                ; 2 uses
  %i.iv = sub i32 %i.ij, %i.il
  %i.iw = load i32, ptr %i.ih, align 4, !tbaa !9
  %i.ix = add nsw i32 %i.iw, %i.iv                ; 2 uses
  %i.iy = sub i32 %i.iq, %i.it
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ih, i64 4
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !9
  %i.jb = add nsw i32 %i.ja, %i.iy                ; 2 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.hb ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %i.hb ; 3 uses
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.ig, i64 %i.hb ; 3 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %i.hb ; 3 uses
  %i.jg = load i32, ptr %i.jc, align 4, !tbaa !9
  %i.jh = load i32, ptr %i.jd, align 4, !tbaa !9  ; 2 uses
  %i.ji = add nsw i32 %i.jh, %i.jg
  %i.jj = load i32, ptr %i.je, align 4, !tbaa !9  ; 2 uses
  %i.jk = add nsw i32 %i.ji, %i.jj                ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !9
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !9  ; 2 uses
  %i.jp = add nsw i32 %i.jo, %i.jm
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !9  ; 2 uses
  %i.js = add nsw i32 %i.jp, %i.jr                ; 2 uses
  %i.jt = sub i32 %i.jh, %i.jj
  %i.ju = load i32, ptr %i.jf, align 4, !tbaa !9
  %i.jv = add nsw i32 %i.ju, %i.jt                ; 2 uses
  %i.jw = sub i32 %i.jo, %i.jr
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jf, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9
  %i.jz = add nsw i32 %i.jy, %i.jw                ; 2 uses
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.hb ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.hb ; 2 uses
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.hb ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.hb ; 2 uses
  %i.ke = load i32, ptr %i.ka, align 4, !tbaa !9
  %i.kf = load i32, ptr %i.kb, align 4, !tbaa !9  ; 2 uses
  %i.kg = load i32, ptr %i.kc, align 4, !tbaa !9  ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !9
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !9  ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kc, i64 4
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !9  ; 2 uses
  %i.kn = load i32, ptr %i.kd, align 4, !tbaa !9
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !9
  %i.kq = trunc i64 %indvars.iv445.i to i32
  %i.kr = add i32 %.044150, %i.kq                 ; 2 uses
  %i.ks = sdiv i32 %i.kr, %i.ca
  %i.kt = srem i32 %i.kr, %i.ca
  %i.ku = load i32, ptr %i.an, align 4, !tbaa !10, !noalias !266
  %i.kv = sext i32 %i.ku to i64
  %i.kw = shl nsw i32 %i.ks, 1                    ; 3 uses
  %i.kx = sext i32 %i.kw to i64
  %i.ky = mul i64 %i.hg, %i.kx
  %i.kz = mul i64 %i.ky, %i.kv
  %i.la = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.kz
  %i.lb = shl nsw i32 %i.kt, 1                    ; 2 uses
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.la, i64 %i.lc ; 5 uses
  %i.le = or disjoint i32 %i.lb, 1
  %i.lf = icmp slt i32 %i.le, %i.bt               ; 2 uses
  %.not298.us.i = icmp slt i32 %i.kw, %i.bu
  br i1 %.not298.us.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit303.us.i
  %i.lg = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !9
  %i.li = load i32, ptr %i.hn, align 4, !tbaa !9
  %i.lj = add i32 %i.hs, %i.hr
  %i.lk = add i32 %i.lj, %i.im
  %i.ll = add i32 %i.lk, %i.jk
  %i.lm = add i32 %i.ll, %i.li
  %i.ln = add i32 %i.hw, %i.hu
  %i.lo = add i32 %i.ln, %i.iu
  %i.lp = add i32 %i.lo, %i.js
  %i.lq = add i32 %i.lp, %i.lh
  %i.lr = ashr i32 %i.lm, 2
  %i.ls = ashr i32 %i.lq, 2
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.by ; 2 uses
  store i32 %i.lr, ptr %i.ld, align 4, !tbaa !9
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !9
  br i1 %i.lf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.lu = sub i32 %i.iu, %i.js
  %i.lv = add i32 %i.lu, %i.ki
  %i.lw = add i32 %i.lv, %i.kk
  %i.lx = add i32 %i.lw, %i.km
  %i.ly = ashr i32 %i.lx, 2
  %i.lz = sub i32 %i.im, %i.jk
  %i.ma = add i32 %i.lz, %i.ke
  %i.mb = add i32 %i.ma, %i.kf
  %i.mc = add i32 %i.mb, %i.kg
  %i.md = ashr i32 %i.mc, 2
  %i.me = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  store i32 %i.md, ptr %i.me, align 4, !tbaa !9
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  store i32 %i.ly, ptr %i.mf, align 4, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.ld, i64 %i.hc
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZN4ncnn3MatD2Ev.exit303.us.i
  %.1277.us.i = phi ptr [ %i.ld, %_ZN4ncnn3MatD2Ev.exit303.us.i ], [ %i.mg, %bb.t ] ; 3 uses
  %i.mh = or disjoint i32 %i.kw, 1
  %.not298.us.1.i = icmp slt i32 %i.mh, %i.bu
  br i1 %.not298.us.1.i, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.mi = add nsw i32 %i.hz, %i.ix
  %i.mj = add nsw i32 %i.mi, %i.jv
  %i.mk = add nsw i32 %i.id, %i.jb
  %i.ml = add nsw i32 %i.mk, %i.jz
  %i.mm = ashr i32 %i.mj, 2
  %i.mn = ashr i32 %i.ml, 2
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.1277.us.i, i64 %i.by ; 2 uses
  store i32 %i.mm, ptr %.1277.us.i, align 4, !tbaa !9
  store i32 %i.mn, ptr %i.mo, align 4, !tbaa !9
  br i1 %i.lf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mp = add i32 %i.jb, %i.kk
  %i.mq = add i32 %i.jz, %i.km
  %i.mr = sub i32 %i.mp, %i.mq
  %i.ms = add i32 %i.mr, %i.kp
  %i.mt = ashr i32 %i.ms, 2
  %i.mu = add i32 %i.ix, %i.kf
  %i.mv = add i32 %i.jv, %i.kg
  %i.mw = sub i32 %i.mu, %i.mv
  %i.mx = add i32 %i.mw, %i.kn
  %i.my = ashr i32 %i.mx, 2
  %i.mz = getelementptr inbounds nuw i8, ptr %.1277.us.i, i64 4
  store i32 %i.my, ptr %i.mz, align 4, !tbaa !9
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  store i32 %i.mt, ptr %i.na, align 4, !tbaa !9
  br label %bb.x

end_hunk_4
begin_hunk_5_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a

bb.p:                                             ; preds = %bb.m
  %i.dt = landingpad { ptr, i32 }
          catch ptr null
  %i.du = extractvalue { ptr, i32 } %i.dt, 0
  call void @__clang_call_terminate(ptr %i.du) #24
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.dv = add nsw i32 %.069, 1
  %i.dw = load i32, ptr %i.e, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.069, %i.dw
  br i1 %.not.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.r:                                             ; preds = %bb.c
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #24
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.b = alloca [4 x [6 x [2 x i32]]], align 16   ; 50 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.g = load i32, ptr %2, align 4, !tbaa !9      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.bk

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 0, ptr %i.c, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 %i.i, ptr %i.d, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 1, ptr %i.e, align 4, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 0, ptr %i.f, align 4, !tbaa !9
  %i.j = load i32, ptr %0, align 4, !tbaa !9      ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.f, ptr nonnull %i.c, ptr nonnull %i.d, ptr nonnull %i.e, i32 1, i32 1)
  %i.k = load i32, ptr %i.d, align 4, !tbaa !9
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 2 uses
  store i32 %i.l, ptr %i.d, align 4, !tbaa !9
  %i.m = load i32, ptr %i.c, align 4, !tbaa !9    ; 2 uses
  %.not132 = icmp sgt i32 %i.m, %i.l
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.ba = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.045133 = phi i32 [ %i.m, %.lr.ph135 ], [ %i.ef, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.dl = load i32, ptr %3, align 4, !tbaa !9
  %i.dm = mul nsw i32 %i.dl, %.045133             ; 4 uses
  %i.dn = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.bl

.noexc46:                                         ; preds = %bb.c
  %i.do = load ptr, ptr %4, align 8, !tbaa !32, !noalias !393
  %i.dp = load i64, ptr %i.n, align 8, !tbaa !18, !noalias !393
  %i.dq = sext i32 %i.dn to i64
  %i.dr = mul i64 %i.dp, %i.dq
  %i.ds = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !393
  %i.dt = mul i64 %i.dr, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dt ; 4 uses
  %i.dv = load i32, ptr %5, align 4, !tbaa !9
  %i.dw = sub nsw i32 %i.dv, %i.dm
  %i.dx = load i32, ptr %3, align 4, !tbaa !9
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.dx, i32 %i.dw) ; 8 uses
  %i.dy = load i32, ptr %6, align 4, !tbaa !9     ; 2 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.ea = icmp sgt i32 %.sroa.speculated121, 3
  %i.eb = and i32 %.sroa.speculated121, 2147483644
  %i.ec = zext nneg i32 %.sroa.speculated121 to i64
  %15 = add i32 %.sroa.speculated121, -2
  %i.ed = sext i32 %.sroa.speculated121 to i64    ; 2 uses
  %i.ee = sext i32 %i.dm to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.ed, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.ef = add nsw i32 %.045133, 1
  %i.eg = load i32, ptr %i.d, align 4, !tbaa !9
  %.not.not = icmp slt i32 %.045133, %i.eg
  br i1 %.not.not, label %bb.c, label %._crit_edge136

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.eh = phi i32 [ %.pre, %.lr.ph ], [ %i.asn, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.ei = phi i32 [ %i.dy, %.lr.ph ], [ %i.asp, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.aso, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.ej = sub nsw i32 %i.ei, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.eh, i32 %i.ej) ; 26 uses
  %i.ek = load i32, ptr %8, align 4, !tbaa !9     ; 2 uses
  %i.el = icmp sgt i32 %i.ek, 0
  br i1 %i.el, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre137 = load i32, ptr %9, align 4, !tbaa !9
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.em = load i32, ptr %i.ap, align 4, !tbaa !10 ; 13 uses
  %i.en = load i32, ptr %i.aq, align 8, !tbaa !19 ; 6 uses
  %i.eo = load i32, ptr %i.ar, align 8, !tbaa !16 ; 5 uses
  %i.ep = load i64, ptr %i.as, align 8, !tbaa !18
  %i.eq = sext i32 %i.eo to i64
  %i.er = mul i64 %i.ep, %i.eq                    ; 4 uses
  %i.es = add nsw i32 %i.em, 3
  %i.et = sdiv i32 %i.es, 4                       ; 6 uses
  %factor.op.mul74.i = mul i32 %.sroa.speculated117, 36 ; 3 uses
  br i1 %i.ea, label %.lr.ph77.i, label %.preheader53.i

.lr.ph77.i:                                       ; preds = %._crit_edge
  %i.eu = icmp sgt i32 %.sroa.speculated117, 0
  %i.ev = shl nsw i32 %.sroa.speculated117, 2
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i32 %.sroa.speculated117, 3
  %i.ey = sext i32 %i.ex to i64
  %i.ez = mul nsw i32 %.sroa.speculated117, 12
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i32 %.sroa.speculated117, 4
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul nsw i32 %.sroa.speculated117, 20
  %i.fe = sext i32 %i.fd to i64
  %i.ff = mul nsw i32 %.sroa.speculated117, 24
  %i.fg = sext i32 %i.ff to i64                   ; 30 uses
  %.idx.i = shl i64 %i.er, 3
  %.idx705.i = mul i64 %i.er, 12
  %i.fh = mul nsw i32 %i.eo, %i.em
  %i.fi = sext i32 %i.fh to i64
  br i1 %i.eu, label %.lr.ph.us.preheader.i, label %.preheader53.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph77.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv277.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next278.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.fj = trunc nuw nsw i64 %indvars.iv277.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul74.i, %i.fj
  %i.fk = sext i32 %factor.op.mul.reass.us.i to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.fk
  %i.fm = add i32 %i.dm, %i.fj
  %i.fn = sdiv i32 %i.fm, %i.eo
  %i.fo = sext i32 %i.fn to i64
  br label %.preheader54.us.i

.preheader54.us.i:                                ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv273.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next274.i, %bb.u ] ; 3 uses
  %.idx317.i = shl nuw nsw i64 %indvars.iv273.i, 4
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 %.idx317.i ; 7 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.ew ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.ey ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fa ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fc ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fe ; 2 uses
  %i.fv = load <4 x i32>, ptr %i.fp, align 16, !tbaa !46
  %i.fw = load <4 x i32>, ptr %i.fq, align 16, !tbaa !46 ; 2 uses
  %i.fx = load <4 x i32>, ptr %i.fr, align 16, !tbaa !46 ; 2 uses
  %i.fy = load <4 x i32>, ptr %i.fs, align 16, !tbaa !46 ; 2 uses
  %i.fz = load <4 x i32>, ptr %i.ft, align 16, !tbaa !46 ; 2 uses
  %i.ga = load <4 x i32>, ptr %i.fu, align 16, !tbaa !46
  %i.gb = add <4 x i32> %i.fx, %i.fw              ; 2 uses
  %i.gc = add <4 x i32> %i.fz, %i.fy              ; 2 uses
  %i.gd = sub <4 x i32> %i.fw, %i.fx              ; 2 uses
  %i.ge = sub <4 x i32> %i.fy, %i.fz              ; 2 uses
  %i.gf = add <4 x i32> %i.gb, %i.fv
  %i.gg = add <4 x i32> %i.gf, %i.gc
  %i.gh = shl <4 x i32> %i.ge, splat (i32 1)
  %i.gi = add <4 x i32> %i.gh, %i.gd
  %i.gj = shl <4 x i32> %i.gc, splat (i32 2)
  %i.gk = add <4 x i32> %i.gj, %i.gb
  %i.gl = shl <4 x i32> %i.ge, splat (i32 3)
  %i.gm = add <4 x i32> %i.gl, %i.gd
  %i.gn = shl <4 x i32> %i.ga, splat (i32 2)
  %i.go = add <4 x i32> %i.gm, %i.gn
  store <4 x i32> %i.gg, ptr %i.a, align 16, !tbaa !46
  store <4 x i32> %i.gi, ptr %i.at, align 16, !tbaa !46
  store <4 x i32> %i.gk, ptr %i.au, align 16, !tbaa !46
  store <4 x i32> %i.go, ptr %i.av, align 16, !tbaa !46
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fg ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %i.fg ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.fg ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fg ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fg ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fg ; 2 uses
  %i.gv = load <4 x i32>, ptr %i.gp, align 16, !tbaa !46
  %i.gw = load <4 x i32>, ptr %i.gq, align 16, !tbaa !46 ; 2 uses
  %i.gx = load <4 x i32>, ptr %i.gr, align 16, !tbaa !46 ; 2 uses
  %i.gy = load <4 x i32>, ptr %i.gs, align 16, !tbaa !46 ; 2 uses
  %i.gz = load <4 x i32>, ptr %i.gt, align 16, !tbaa !46 ; 2 uses
  %i.ha = load <4 x i32>, ptr %i.gu, align 16, !tbaa !46
  %i.hb = add <4 x i32> %i.gx, %i.gw              ; 2 uses
  %i.hc = add <4 x i32> %i.gz, %i.gy              ; 2 uses
  %i.hd = sub <4 x i32> %i.gw, %i.gx              ; 2 uses
  %i.he = sub <4 x i32> %i.gy, %i.gz              ; 2 uses
  %i.hf = add <4 x i32> %i.hb, %i.gv
  %i.hg = add <4 x i32> %i.hf, %i.hc
  %i.hh = shl <4 x i32> %i.he, splat (i32 1)
  %i.hi = add <4 x i32> %i.hh, %i.hd
  %i.hj = shl <4 x i32> %i.hc, splat (i32 2)
  %i.hk = add <4 x i32> %i.hj, %i.hb
  %i.hl = shl <4 x i32> %i.he, splat (i32 3)
  %i.hm = add <4 x i32> %i.hl, %i.hd
  %i.hn = shl <4 x i32> %i.ha, splat (i32 2)
  %i.ho = add <4 x i32> %i.hm, %i.hn
  store <4 x i32> %i.hg, ptr %i.bb, align 16, !tbaa !46
  store <4 x i32> %i.hi, ptr %i.bc, align 16, !tbaa !46
  store <4 x i32> %i.hk, ptr %i.bd, align 16, !tbaa !46
  store <4 x i32> %i.ho, ptr %i.be, align 16, !tbaa !46
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.fg ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.fg ; 2 uses
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.fg ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.fg ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.fg ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.fg ; 2 uses
  %i.hv = load <4 x i32>, ptr %i.hp, align 16, !tbaa !46
  %i.hw = load <4 x i32>, ptr %i.hq, align 16, !tbaa !46 ; 2 uses
  %i.hx = load <4 x i32>, ptr %i.hr, align 16, !tbaa !46 ; 2 uses
  %i.hy = load <4 x i32>, ptr %i.hs, align 16, !tbaa !46 ; 2 uses
  %i.hz = load <4 x i32>, ptr %i.ht, align 16, !tbaa !46 ; 2 uses
  %i.ia = load <4 x i32>, ptr %i.hu, align 16, !tbaa !46
  %i.ib = add <4 x i32> %i.hx, %i.hw              ; 2 uses
  %i.ic = add <4 x i32> %i.hz, %i.hy              ; 2 uses
  %i.id = sub <4 x i32> %i.hw, %i.hx              ; 2 uses
  %i.ie = sub <4 x i32> %i.hy, %i.hz              ; 2 uses
  %i.if = add <4 x i32> %i.ib, %i.hv
  %i.ig = add <4 x i32> %i.if, %i.ic
  %i.ih = shl <4 x i32> %i.ie, splat (i32 1)
  %i.ii = add <4 x i32> %i.ih, %i.id
  %i.ij = shl <4 x i32> %i.ic, splat (i32 2)
  %i.ik = add <4 x i32> %i.ij, %i.ib
  %i.il = shl <4 x i32> %i.ie, splat (i32 3)
  %i.im = add <4 x i32> %i.il, %i.id
  %i.in = shl <4 x i32> %i.ia, splat (i32 2)
  %i.io = add <4 x i32> %i.im, %i.in
  store <4 x i32> %i.ig, ptr %i.bf, align 16, !tbaa !46
  store <4 x i32> %i.ii, ptr %i.bg, align 16, !tbaa !46
  store <4 x i32> %i.ik, ptr %i.bh, align 16, !tbaa !46
  store <4 x i32> %i.io, ptr %i.bi, align 16, !tbaa !46
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %i.fg ; 2 uses
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.fg ; 2 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.fg ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.fg ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %i.fg ; 2 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %i.fg ; 2 uses
  %i.iv = load <4 x i32>, ptr %i.ip, align 16, !tbaa !46
  %i.iw = load <4 x i32>, ptr %i.iq, align 16, !tbaa !46 ; 2 uses
  %i.ix = load <4 x i32>, ptr %i.ir, align 16, !tbaa !46 ; 2 uses
  %i.iy = load <4 x i32>, ptr %i.is, align 16, !tbaa !46 ; 2 uses
  %i.iz = load <4 x i32>, ptr %i.it, align 16, !tbaa !46 ; 2 uses
  %i.ja = load <4 x i32>, ptr %i.iu, align 16, !tbaa !46
  %i.jb = add <4 x i32> %i.ix, %i.iw              ; 2 uses
  %i.jc = add <4 x i32> %i.iz, %i.iy              ; 2 uses
  %i.jd = sub <4 x i32> %i.iw, %i.ix              ; 2 uses
  %i.je = sub <4 x i32> %i.iy, %i.iz              ; 2 uses
  %i.jf = add <4 x i32> %i.jb, %i.iv
  %i.jg = add <4 x i32> %i.jf, %i.jc
  %i.jh = shl <4 x i32> %i.je, splat (i32 1)
  %i.ji = add <4 x i32> %i.jh, %i.jd
  %i.jj = shl <4 x i32> %i.jc, splat (i32 2)
  %i.jk = add <4 x i32> %i.jj, %i.jb
  %i.jl = shl <4 x i32> %i.je, splat (i32 3)
  %i.jm = add <4 x i32> %i.jl, %i.jd
  %i.jn = shl <4 x i32> %i.ja, splat (i32 2)
  %i.jo = add <4 x i32> %i.jm, %i.jn
  store <4 x i32> %i.jg, ptr %i.bj, align 16, !tbaa !46
  store <4 x i32> %i.ji, ptr %i.bk, align 16, !tbaa !46
  store <4 x i32> %i.jk, ptr %i.bl, align 16, !tbaa !46
  store <4 x i32> %i.jo, ptr %i.bm, align 16, !tbaa !46
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %i.fg ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.fg ; 2 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.fg ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.lt = shl <4 x i32> %i.li, splat (i32 5)
  %i.lu = add <4 x i32> %i.lt, %i.ln
  %i.lv = add <4 x i32> %i.lu, %i.ls
  store <4 x i32> %i.ll, ptr %i.aw, align 16, !tbaa !46
  store <4 x i32> %i.lo, ptr %i.ax, align 16, !tbaa !46
  store <4 x i32> %i.lr, ptr %i.ay, align 16, !tbaa !46
  store <4 x i32> %i.lv, ptr %i.az, align 16, !tbaa !46
  %i.lw = load i32, ptr %i.ap, align 4, !tbaa !10, !noalias !396
  %i.lx = load ptr, ptr %12, align 8, !tbaa !32, !noalias !396
  %i.ly = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !396
  %i.lz = mul i64 %i.ly, %i.fo
  %i.ma = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !396 ; 2 uses
  %i.mb = mul i64 %i.lz, %i.ma
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 %i.mb
  %i.md = sext i32 %i.lw to i64
  %i.me = shl nsw i32 %i.kx, 2                    ; 2 uses
  %i.mf = sext i32 %i.me to i64
  %i.mg = mul nsw i64 %i.md, %i.mf
  %i.mh = mul i64 %i.mg, %i.ma
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mh
  %i.mj = shl nsw i32 %i.ky, 2                    ; 4 uses
  %i.mk = mul nsw i32 %i.mj, %i.eo
  %i.ml = sext i32 %i.mk to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.ml
  %i.mn = or disjoint i32 %i.mj, 1
  %i.mo = icmp slt i32 %i.mn, %i.em               ; 2 uses
  %i.mp = or disjoint i32 %i.mj, 2
  %i.mq = icmp slt i32 %i.mp, %i.em               ; 2 uses
  %i.mr = or disjoint i32 %i.mj, 3
  %i.ms = icmp slt i32 %i.mr, %i.em               ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %.preheader54.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.t ], [ 0, %.preheader54.us.i ] ; 3 uses
  %.068272.us.i = phi ptr [ %.1683.us.i, %bb.t ], [ %i.mm, %.preheader54.us.i ] ; 13 uses
  %i.mt = trunc i64 %indvars.iv.i to i32
  %i.mu = or i32 %i.me, %i.mt
  %.not704.us.i = icmp slt i32 %i.mu, %i.en
  br i1 %.not704.us.i, label %bb.f, label %bb.t

bb.f:                                             ; preds = %bb.e
  %i.mv = getelementptr inbounds nuw [96 x i8], ptr %i.a, i64 %indvars.iv.i ; 6 uses
  %i.mw = load <4 x i32>, ptr %i.mv, align 16, !tbaa !46
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.my = load <4 x i32>, ptr %i.mx, align 16, !tbaa !46 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.na = load <4 x i32>, ptr %i.mz, align 16, !tbaa !46 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 48
  %i.nc = load <4 x i32>, ptr %i.nb, align 16, !tbaa !46 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mv, i64 64
  %i.ne = load <4 x i32>, ptr %i.nd, align 16, !tbaa !46 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 80
  %i.ng = load <4 x i32>, ptr %i.nf, align 16, !tbaa !46
  %i.nh = add <4 x i32> %i.na, %i.my              ; 2 uses
  %i.ni = add <4 x i32> %i.ne, %i.nc              ; 2 uses
  %i.nj = sub <4 x i32> %i.my, %i.na              ; 2 uses
  %i.nk = sub <4 x i32> %i.nc, %i.ne              ; 2 uses
  %i.nl = add <4 x i32> %i.nh, %i.mw
  %i.nm = add <4 x i32> %i.nl, %i.ni
  %i.nn = shl <4 x i32> %i.nk, splat (i32 1)
  %i.no = add <4 x i32> %i.nn, %i.nj
  %i.np = shl <4 x i32> %i.ni, splat (i32 2)
  %i.nq = add <4 x i32> %i.np, %i.nh
  %i.nr = shl <4 x i32> %i.nk, splat (i32 3)
  %i.ns = add <4 x i32> %i.ng, %i.nj
  %i.nt = add <4 x i32> %i.ns, %i.nr
  %i.nu = sitofp fast <4 x i32> %i.nm to <4 x float>
  %i.nv = fmul fast <4 x float> %i.nu, splat (float f0x3AE38E39)
  %i.nw = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.nv) ; 5 uses
  %i.nx = sitofp fast <4 x i32> %i.no to <4 x float>
  %i.ny = fmul fast <4 x float> %i.nx, splat (float f0x3AE38E39)
  %i.nz = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ny) ; 5 uses
  %i.oa = sitofp fast <4 x i32> %i.nq to <4 x float>
  %i.ob = fmul fast <4 x float> %i.oa, splat (float f0x3AE38E39)
  %i.oc = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.ob) ; 5 uses
  %i.od = sitofp fast <4 x i32> %i.nt to <4 x float>
  %i.oe = fmul fast <4 x float> %i.od, splat (float f0x3AE38E39)
  %i.of = call <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float> nofpclass(nan inf) %i.oe) ; 5 uses
  switch i32 %i.eo, label %bb.s [
    i32 4, label %bb.m
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %.068272.us.i, i64 %i.er ; 4 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 %.idx.i ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 %.idx705.i ; 4 uses
  %.sroa.026.0.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 0
  store i32 %.sroa.026.0.vec.extract.us.i, ptr %.068272.us.i, align 4, !tbaa !9
  %.sroa.026.4.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 1
  store i32 %.sroa.026.4.vec.extract.us.i, ptr %i.og, align 4, !tbaa !9
  %.sroa.026.8.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 2
  store i32 %.sroa.026.8.vec.extract.us.i, ptr %i.oh, align 4, !tbaa !9
  %.sroa.026.12.vec.extract.us.i = extractelement <4 x i32> %i.nw, i64 3
  store i32 %.sroa.026.12.vec.extract.us.i, ptr %i.oi, align 4, !tbaa !9
  br i1 %i.mo, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.728.16.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 0
  %i.oj = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 4
  store i32 %.sroa.728.16.vec.extract.us.i, ptr %i.oj, align 4, !tbaa !9
  %.sroa.728.20.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 4
  store i32 %.sroa.728.20.vec.extract.us.i, ptr %i.ok, align 4, !tbaa !9
  %.sroa.728.24.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 2
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 4
  store i32 %.sroa.728.24.vec.extract.us.i, ptr %i.ol, align 4, !tbaa !9
  %.sroa.728.28.vec.extract.us.i = extractelement <4 x i32> %i.nz, i64 3
  %i.om = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  store i32 %.sroa.728.28.vec.extract.us.i, ptr %i.om, align 4, !tbaa !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.mq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.12.32.vec.extract.us.i = extractelement <4 x i32> %i.oc, i64 0
  %i.on = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 8
  store i32 %.sroa.12.32.vec.extract.us.i, ptr %i.on, align 4, !tbaa !9
  %.sroa.12.36.vec.extract.us.i = extractelement <4 x i32> %i.oc, i64 1
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  store i32 %.sroa.12.36.vec.extract.us.i, ptr %i.oo, align 4, !tbaa !9
  %.sroa.12.40.vec.extract.us.i = extractelement <4 x i32> %i.oc, i64 2
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 %.sroa.12.40.vec.extract.us.i, ptr %i.op, align 4, !tbaa !9
  %.sroa.12.44.vec.extract.us.i = extractelement <4 x i32> %i.oc, i64 3
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oi, i64 8
  store i32 %.sroa.12.44.vec.extract.us.i, ptr %i.oq, align 4, !tbaa !9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %i.ms, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.sroa.1731.48.vec.extract.us.i = extractelement <4 x i32> %i.of, i64 0
  %i.or = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 12
  store i32 %.sroa.1731.48.vec.extract.us.i, ptr %i.or, align 4, !tbaa !9
  %.sroa.1731.52.vec.extract.us.i = extractelement <4 x i32> %i.of, i64 1
  %i.os = getelementptr inbounds nuw i8, ptr %i.og, i64 12
  store i32 %.sroa.1731.52.vec.extract.us.i, ptr %i.os, align 4, !tbaa !9
  %.sroa.1731.56.vec.extract.us.i = extractelement <4 x i32> %i.of, i64 2
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  store i32 %.sroa.1731.56.vec.extract.us.i, ptr %i.ot, align 4, !tbaa !9
  %.sroa.1731.60.vec.extract.us.i = extractelement <4 x i32> %i.of, i64 3
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 12
  store i32 %.sroa.1731.60.vec.extract.us.i, ptr %i.ou, align 4, !tbaa !9
  br label %bb.s

bb.m:                                             ; preds = %bb.f
  store <4 x i32> %i.nw, ptr %.068272.us.i, align 16, !tbaa !46
  br i1 %i.mo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ov = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 16
  store <4 x i32> %i.nz, ptr %i.ov, align 16, !tbaa !46
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.mq, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ow = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 32
  store <4 x i32> %i.oc, ptr %i.ow, align 16, !tbaa !46
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %i.ms, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ox = getelementptr inbounds nuw i8, ptr %.068272.us.i, i64 48
  store <4 x i32> %i.of, ptr %i.ox, align 16, !tbaa !46
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.l, %bb.k, %bb.f
  %i.oy = getelementptr inbounds [4 x i8], ptr %.068272.us.i, i64 %i.fi
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.e
  %.1683.us.i = phi ptr [ %.068272.us.i, %bb.e ], [ %i.oy, %bb.s ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.not.i, label %bb.u, label %bb.e, !llvm.loop !399

bb.u:                                             ; preds = %bb.t
  %indvars.iv.next274.i = add nuw nsw i64 %indvars.iv273.i, 1 ; 2 uses
  %exitcond276.not.i = icmp eq i64 %indvars.iv.next274.i, %wide.trip.count.i
  br i1 %exitcond276.not.i, label %._crit_edge.us.i, label %.preheader54.us.i, !llvm.loop !400

._crit_edge.us.i:                                 ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %indvars.iv.next278.i = add nuw nsw i64 %indvars.iv277.i, 4 ; 3 uses
  %i.oz = or disjoint i64 %indvars.iv.next278.i, 3
  %i.pa = icmp samesign ult i64 %i.oz, %i.ec
  br i1 %i.pa, label %.lr.ph.us.i, label %.preheader53.loopexit.i, !llvm.loop !401

.preheader53.loopexit.i:                          ; preds = %._crit_edge.us.i
  %i.pb = trunc nuw nsw i64 %indvars.iv.next278.i to i32
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %.lr.ph77.i, %.preheader53.loopexit.i, %._crit_edge
  %.0647.lcssa.i = phi i32 [ 0, %._crit_edge ], [ %i.pb, %.preheader53.loopexit.i ], [ %i.eb, %.lr.ph77.i ] ; 5 uses
  %i.pc = or disjoint i32 %.0647.lcssa.i, 1
  %i.pd = icmp slt i32 %i.pc, %.sroa.speculated121
  br i1 %i.pd, label %.lr.ph128.i, label %.preheader51.i

.lr.ph128.i:                                      ; preds = %.preheader53.i
  %i.pe = icmp sgt i32 %.sroa.speculated117, 0
  %i.pf = shl nsw i32 %.sroa.speculated117, 1
  %i.pg = sext i32 %i.pf to i64
  %i.ph = shl nsw i32 %.sroa.speculated117, 2
  %i.pi = sext i32 %i.ph to i64
  %i.pj = mul nsw i32 %.sroa.speculated117, 6
  %i.pk = sext i32 %i.pj to i64
  %i.pl = shl nsw i32 %.sroa.speculated117, 3
  %i.pm = sext i32 %i.pl to i64
  %i.pn = mul nsw i32 %.sroa.speculated117, 10
  %i.po = sext i32 %i.pn to i64
  %i.pp = mul nsw i32 %.sroa.speculated117, 12
  %i.pq = sext i32 %i.pp to i64                   ; 30 uses
  %i.pr = sext i32 %i.em to i64
  br i1 %i.pe, label %.lr.ph128.split.us.i, label %.lr.ph128.split.preheader.i

.lr.ph128.split.preheader.i:                      ; preds = %.lr.ph128.i
  %16 = sub i32 %15, %.0647.lcssa.i
  %17 = and i32 %16, -2
  %18 = add i32 %.0647.lcssa.i, 2
  %i.ps = add i32 %18, %17
  br label %.preheader51.i

.lr.ph128.split.us.i:                             ; preds = %.lr.ph128.i
  %i.pt = load ptr, ptr %12, align 8, !tbaa !32, !noalias !402
  %i.pu = load i64, ptr %i.as, align 8, !tbaa !18, !noalias !402
  %i.pv = load i64, ptr %i.ba, align 8, !tbaa !36, !noalias !402 ; 2 uses
  %factor.op.mul.i = mul i64 %i.pv, %i.pu
  %i.pw = sext i32 %.0647.lcssa.i to i64
  %wide.trip.count291.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us131.i

.lr.ph.us131.i:                                   ; preds = %._crit_edge.us132.i, %.lr.ph128.split.us.i
  %indvars.iv293.i = phi i64 [ %indvars.iv.next294.i, %._crit_edge.us132.i ], [ %i.pw, %.lr.ph128.split.us.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  %i.px = trunc nsw i64 %indvars.iv293.i to i32
  %factor.op.mul.reass.us130.i = mul i32 %factor.op.mul74.i, %i.px
  %i.py = sext i32 %factor.op.mul.reass.us130.i to i64
  %i.pz = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.py
  %i.qa = add nsw i64 %indvars.iv293.i, %i.ee
  %.reass.i = mul i64 %factor.op.mul.i, %i.qa
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pt, i64 %.reass.i
  br label %.preheader52.us.i

.preheader52.us.i:                                ; preds = %bb.ae, %.lr.ph.us131.i
  %indvars.iv288.i = phi i64 [ 0, %.lr.ph.us131.i ], [ %indvars.iv.next289.i, %bb.ae ] ; 3 uses
  %.idx318.i = shl nuw nsw i64 %indvars.iv288.i, 3
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 %.idx318.i ; 8 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.pg ; 3 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.pi ; 3 uses
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.pk ; 3 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.pm ; 3 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.po ; 3 uses
  %i.qi = load i32, ptr %i.qd, align 4, !tbaa !9  ; 2 uses
  %i.qj = load i32, ptr %i.qe, align 4, !tbaa !9  ; 2 uses
  %i.qk = add nsw i32 %i.qj, %i.qi                ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !9  ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !9  ; 2 uses
  %i.qp = add nsw i32 %i.qo, %i.qm                ; 2 uses
  %i.qq = load i32, ptr %i.qf, align 4, !tbaa !9  ; 2 uses
  %i.qr = load i32, ptr %i.qg, align 4, !tbaa !9  ; 2 uses
  %i.qs = add nsw i32 %i.qr, %i.qq                ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !9  ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qg, i64 4
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !9  ; 2 uses
  %i.qx = add nsw i32 %i.qw, %i.qu                ; 2 uses
  %i.qy = sub nsw i32 %i.qi, %i.qj                ; 2 uses
  %i.qz = sub nsw i32 %i.qm, %i.qo                ; 2 uses
  %i.ra = sub nsw i32 %i.qq, %i.qr                ; 2 uses
  %i.rb = sub nsw i32 %i.qu, %i.qw                ; 2 uses
  %i.rc = add nsw i32 %i.qs, %i.qk
  %i.rd = load i32, ptr %i.qc, align 4, !tbaa !9
  %i.re = add nsw i32 %i.rc, %i.rd
  %i.rf = add nsw i32 %i.qx, %i.qp
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !9
  %i.ri = add nsw i32 %i.rf, %i.rh
  %i.rj = shl nsw i32 %i.ra, 1
  %i.rk = add nsw i32 %i.rj, %i.qy
  %i.rl = shl nsw i32 %i.rb, 1
  %i.rm = add nsw i32 %i.rl, %i.qz
  %i.rn = shl nsw i32 %i.qs, 2
  %i.ro = add nsw i32 %i.rn, %i.qk
  %i.rp = shl nsw i32 %i.qx, 2
  %i.rq = add nsw i32 %i.rp, %i.qp
  %i.rr = shl nsw i32 %i.ra, 3
  %i.rs = add nsw i32 %i.rr, %i.qy
  %i.rt = load i32, ptr %i.qh, align 4, !tbaa !9
  %i.ru = shl nsw i32 %i.rt, 2
  %i.rv = add nsw i32 %i.rs, %i.ru
  %i.rw = shl nsw i32 %i.rb, 3
  %i.rx = add nsw i32 %i.rw, %i.qz
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qh, i64 4
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !9
  %i.sa = shl nsw i32 %i.rz, 2
  %i.sb = add nsw i32 %i.rx, %i.sa
  store i32 %i.re, ptr %i.b, align 16, !tbaa !9
  store i32 %i.ri, ptr %i.cb, align 4, !tbaa !9
  store i32 %i.rk, ptr %i.br, align 16, !tbaa !9
  store i32 %i.rm, ptr %i.cc, align 4, !tbaa !9
  store i32 %i.ro, ptr %i.bs, align 16, !tbaa !9
  store i32 %i.rq, ptr %i.cd, align 4, !tbaa !9
  store i32 %i.rv, ptr %i.bt, align 16, !tbaa !9
  store i32 %i.sb, ptr %i.ce, align 4, !tbaa !9
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %i.qc, i64 %i.pq ; 3 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.qd, i64 %i.pq ; 3 uses
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %i.pq ; 3 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.qf, i64 %i.pq ; 3 uses
  %i.sg = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %i.pq ; 3 uses
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.qh, i64 %i.pq ; 3 uses
  %i.si = load i32, ptr %i.sd, align 4, !tbaa !9  ; 2 uses
  %i.sj = load i32, ptr %i.se, align 4, !tbaa !9  ; 2 uses
  %i.sk = add nsw i32 %i.sj, %i.si                ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !9  ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.se, i64 4
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !9  ; 2 uses
  %i.sp = add nsw i32 %i.so, %i.sm                ; 2 uses
  %i.sq = load i32, ptr %i.sf, align 4, !tbaa !9  ; 2 uses
  %i.sr = load i32, ptr %i.sg, align 4, !tbaa !9  ; 2 uses
  %i.ss = add nsw i32 %i.sr, %i.sq                ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sf, i64 4
  %i.su = load i32, ptr %i.st, align 4, !tbaa !9  ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !9  ; 2 uses
  %i.sx = add nsw i32 %i.sw, %i.su                ; 2 uses
  %i.sy = sub nsw i32 %i.si, %i.sj                ; 2 uses
  %i.sz = sub nsw i32 %i.sm, %i.so                ; 2 uses
  %i.ta = sub nsw i32 %i.sq, %i.sr                ; 2 uses
  %i.tb = sub nsw i32 %i.su, %i.sw                ; 2 uses
  %i.tc = add nsw i32 %i.ss, %i.sk
  %i.td = load i32, ptr %i.sc, align 4, !tbaa !9
  %i.te = add nsw i32 %i.tc, %i.td
  %i.tf = add nsw i32 %i.sx, %i.sp
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !9
  %i.ti = add nsw i32 %i.tf, %i.th
  %i.tj = shl nsw i32 %i.ta, 1
  %i.tk = add nsw i32 %i.tj, %i.sy
  %i.tl = shl nsw i32 %i.tb, 1
  %i.tm = add nsw i32 %i.tl, %i.sz
  %i.tn = shl nsw i32 %i.ss, 2
  %i.to = add nsw i32 %i.tn, %i.sk
  %i.tp = shl nsw i32 %i.sx, 2
  %i.tq = add nsw i32 %i.tp, %i.sp
  %i.tr = shl nsw i32 %i.ta, 3
  %i.ts = add nsw i32 %i.tr, %i.sy
  %i.tt = load i32, ptr %i.sh, align 4, !tbaa !9
  %i.tu = shl nsw i32 %i.tt, 2
  %i.tv = add nsw i32 %i.ts, %i.tu
  %i.tw = shl nsw i32 %i.tb, 3
  %i.tx = add nsw i32 %i.tw, %i.sz
  %i.ty = getelementptr inbounds nuw i8, ptr %i.sh, i64 4
  %i.tz = load i32, ptr %i.ty, align 4, !tbaa !9
  %i.ua = shl nsw i32 %i.tz, 2
  %i.ub = add nsw i32 %i.tx, %i.ua
  store i32 %i.te, ptr %i.cf, align 8, !tbaa !9
  store i32 %i.ti, ptr %i.cg, align 4, !tbaa !9
  store i32 %i.tk, ptr %i.ch, align 8, !tbaa !9
  store i32 %i.tm, ptr %i.ci, align 4, !tbaa !9
  store i32 %i.to, ptr %i.cj, align 8, !tbaa !9
  store i32 %i.tq, ptr %i.ck, align 4, !tbaa !9
  store i32 %i.tv, ptr %i.cl, align 8, !tbaa !9
  store i32 %i.ub, ptr %i.cm, align 4, !tbaa !9
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %i.pq ; 3 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %i.pq ; 3 uses
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.se, i64 %i.pq ; 3 uses
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %i.pq ; 3 uses
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sg, i64 %i.pq ; 3 uses
  %i.uh = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %i.pq ; 3 uses
  %i.ui = load i32, ptr %i.ud, align 4, !tbaa !9  ; 2 uses
  %i.uj = load i32, ptr %i.ue, align 4, !tbaa !9  ; 2 uses
  %i.uk = add nsw i32 %i.uj, %i.ui                ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ud, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !9  ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %i.ue, i64 4
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !9  ; 2 uses
  %i.up = add nsw i32 %i.uo, %i.um                ; 2 uses
  %i.uq = load i32, ptr %i.uf, align 4, !tbaa !9  ; 2 uses
  %i.ur = load i32, ptr %i.ug, align 4, !tbaa !9  ; 2 uses
  %i.us = add nsw i32 %i.ur, %i.uq                ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.uf, i64 4
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !9  ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ug, i64 4
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !9  ; 2 uses
  %i.ux = add nsw i32 %i.uw, %i.uu                ; 2 uses
  %i.uy = sub nsw i32 %i.ui, %i.uj                ; 2 uses
  %i.uz = sub nsw i32 %i.um, %i.uo                ; 2 uses
  %i.va = sub nsw i32 %i.uq, %i.ur                ; 2 uses
  %i.vb = sub nsw i32 %i.uu, %i.uw                ; 2 uses
  %i.vc = add nsw i32 %i.us, %i.uk
  %i.vd = load i32, ptr %i.uc, align 4, !tbaa !9
  %i.ve = add nsw i32 %i.vc, %i.vd
  %i.vf = add nsw i32 %i.ux, %i.up
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uc, i64 4
  %i.vh = load i32, ptr %i.vg, align 4, !tbaa !9
  %i.vi = add nsw i32 %i.vf, %i.vh
  %i.vj = shl nsw i32 %i.va, 1
  %i.vk = add nsw i32 %i.vj, %i.uy
  %i.vl = shl nsw i32 %i.vb, 1
  %i.vm = add nsw i32 %i.vl, %i.uz
  %i.vn = shl nsw i32 %i.us, 2
  %i.vo = add nsw i32 %i.vn, %i.uk
  %i.vp = shl nsw i32 %i.ux, 2
  %i.vq = add nsw i32 %i.vp, %i.up
  %i.vr = shl nsw i32 %i.va, 3
  %i.vs = add nsw i32 %i.vr, %i.uy
  %i.vt = load i32, ptr %i.uh, align 4, !tbaa !9
  %i.vu = shl nsw i32 %i.vt, 2
  %i.vv = add nsw i32 %i.vs, %i.vu
  %i.vw = shl nsw i32 %i.vb, 3
  %i.vx = add nsw i32 %i.vw, %i.uz
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uh, i64 4
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !9
  %i.wa = shl nsw i32 %i.vz, 2
  %i.wb = add nsw i32 %i.vx, %i.wa
  store i32 %i.ve, ptr %i.cn, align 16, !tbaa !9
  store i32 %i.vi, ptr %i.co, align 4, !tbaa !9
end_hunk_6
begin_hunk_7_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.arp = getelementptr inbounds [2 x i8], ptr %i.aqi, i64 %i.arm ; 2 uses
  %i.arq = getelementptr inbounds [2 x i8], ptr %i.aql, i64 %i.arm ; 2 uses
  %i.arr = getelementptr inbounds [2 x i8], ptr %i.aqo, i64 %i.arm ; 2 uses
  %i.ars = getelementptr inbounds [2 x i8], ptr %i.aqr, i64 %i.arm ; 2 uses
  %i.art = shl <8 x i16> %i.ol, splat (i16 2)     ; 2 uses
  %i.aru = sub <8 x i16> %i.acb, %i.art           ; 2 uses
  %i.arv = shl <8 x i16> %i.vg, splat (i16 2)
  %i.arw = sub <8 x i16> %i.aiw, %i.arv           ; 2 uses
  %i.arx = sub <8 x i16> %i.acb, %i.ol
  %i.ary = shl <8 x i16> %i.arx, splat (i16 1)    ; 2 uses
  %i.arz = sub <8 x i16> %i.aiw, %i.vg            ; 2 uses
  %i.asa = shl <8 x i16> %i.hq, splat (i16 2)
  %.neg.1 = mul <8 x i16> %i.vg, splat (i16 -5)
  %i.asb = add <8 x i16> %.neg.1, %i.asa
  %i.asc = add <8 x i16> %i.asb, %i.aiw
  %i.asd = add <8 x i16> %i.arw, %i.aru
  %i.ase = sub <8 x i16> %i.arw, %i.aru
  %i.asf = add <8 x i16> %i.arz, %i.ary
  %i.asg = sub <8 x i16> %i.arz, %i.ary
  %.neg274.1 = mul <8 x i16> %i.acb, splat (i16 -5)
  %i.ash = add <8 x i16> %.neg274.1, %i.art
  %i.asi = add <8 x i16> %i.ash, %i.apr
  store <8 x i16> %i.asc, ptr %i.arn, align 16, !tbaa !46
  store <8 x i16> %i.asd, ptr %i.aro, align 16, !tbaa !46
  store <8 x i16> %i.ase, ptr %i.arp, align 16, !tbaa !46
  store <8 x i16> %i.asf, ptr %i.arq, align 16, !tbaa !46
  store <8 x i16> %i.asg, ptr %i.arr, align 16, !tbaa !46
  store <8 x i16> %i.asi, ptr %i.ars, align 16, !tbaa !46
  %i.asj = load i32, ptr %4, align 4, !tbaa !9
  %i.ask = mul nsw i32 %i.asj, 48
  %i.asl = sext i32 %i.ask to i64                 ; 6 uses
  %i.asm = getelementptr inbounds [2 x i8], ptr %i.arn, i64 %i.asl ; 2 uses
  %i.asn = getelementptr inbounds [2 x i8], ptr %i.aro, i64 %i.asl ; 2 uses
  %i.aso = getelementptr inbounds [2 x i8], ptr %i.arp, i64 %i.asl ; 2 uses
  %i.asp = getelementptr inbounds [2 x i8], ptr %i.arq, i64 %i.asl ; 2 uses
  %i.asq = getelementptr inbounds [2 x i8], ptr %i.arr, i64 %i.asl ; 2 uses
  %i.asr = getelementptr inbounds [2 x i8], ptr %i.ars, i64 %i.asl ; 2 uses
  %i.ass = shl <8 x i16> %i.om, splat (i16 2)     ; 2 uses
  %i.ast = sub <8 x i16> %i.acc, %i.ass           ; 2 uses
  %i.asu = shl <8 x i16> %i.vh, splat (i16 2)
  %i.asv = sub <8 x i16> %i.aix, %i.asu           ; 2 uses
  %i.asw = sub <8 x i16> %i.acc, %i.om
  %i.asx = shl <8 x i16> %i.asw, splat (i16 1)    ; 2 uses
  %i.asy = sub <8 x i16> %i.aix, %i.vh            ; 2 uses
  %i.asz = shl <8 x i16> %i.hr, splat (i16 2)
  %.neg.2 = mul <8 x i16> %i.vh, splat (i16 -5)
  %i.ata = add <8 x i16> %.neg.2, %i.asz
  %i.atb = add <8 x i16> %i.ata, %i.aix
  %i.atc = add <8 x i16> %i.asv, %i.ast
  %i.atd = sub <8 x i16> %i.asv, %i.ast
  %i.ate = add <8 x i16> %i.asy, %i.asx
  %i.atf = sub <8 x i16> %i.asy, %i.asx
  %.neg274.2 = mul <8 x i16> %i.acc, splat (i16 -5)
  %i.atg = add <8 x i16> %.neg274.2, %i.ass
  %i.ath = add <8 x i16> %i.atg, %i.aps
  store <8 x i16> %i.atb, ptr %i.asm, align 16, !tbaa !46
  store <8 x i16> %i.atc, ptr %i.asn, align 16, !tbaa !46
  store <8 x i16> %i.atd, ptr %i.aso, align 16, !tbaa !46
  store <8 x i16> %i.ate, ptr %i.asp, align 16, !tbaa !46
  store <8 x i16> %i.atf, ptr %i.asq, align 16, !tbaa !46
  store <8 x i16> %i.ath, ptr %i.asr, align 16, !tbaa !46
  %i.ati = load i32, ptr %4, align 4, !tbaa !9
  %i.atj = mul nsw i32 %i.ati, 48
  %i.atk = sext i32 %i.atj to i64                 ; 6 uses
  %i.atl = getelementptr inbounds [2 x i8], ptr %i.asm, i64 %i.atk ; 2 uses
  %i.atm = getelementptr inbounds [2 x i8], ptr %i.asn, i64 %i.atk ; 2 uses
  %i.atn = getelementptr inbounds [2 x i8], ptr %i.aso, i64 %i.atk ; 2 uses
  %i.ato = getelementptr inbounds [2 x i8], ptr %i.asp, i64 %i.atk ; 2 uses
  %i.atp = getelementptr inbounds [2 x i8], ptr %i.asq, i64 %i.atk ; 2 uses
  %i.atq = getelementptr inbounds [2 x i8], ptr %i.asr, i64 %i.atk ; 2 uses
  %i.atr = shl <8 x i16> %i.on, splat (i16 2)     ; 2 uses
  %i.ats = sub <8 x i16> %i.acd, %i.atr           ; 2 uses
  %i.att = shl <8 x i16> %i.vi, splat (i16 2)
  %i.atu = sub <8 x i16> %i.aiy, %i.att           ; 2 uses
  %i.atv = sub <8 x i16> %i.acd, %i.on
  %i.atw = shl <8 x i16> %i.atv, splat (i16 1)    ; 2 uses
  %i.atx = sub <8 x i16> %i.aiy, %i.vi            ; 2 uses
  %i.aty = shl <8 x i16> %i.hs, splat (i16 2)
  %.neg.3 = mul <8 x i16> %i.vi, splat (i16 -5)
  %i.atz = add <8 x i16> %.neg.3, %i.aty
  %i.aua = add <8 x i16> %i.atz, %i.aiy
  %i.aub = add <8 x i16> %i.atu, %i.ats
  %i.auc = sub <8 x i16> %i.atu, %i.ats
  %i.aud = add <8 x i16> %i.atx, %i.atw
  %i.aue = sub <8 x i16> %i.atx, %i.atw
  %.neg274.3 = mul <8 x i16> %i.acd, splat (i16 -5)
  %i.auf = add <8 x i16> %.neg274.3, %i.atr
  %i.aug = add <8 x i16> %i.auf, %i.apt
  store <8 x i16> %i.aua, ptr %i.atl, align 16, !tbaa !46
  store <8 x i16> %i.aub, ptr %i.atm, align 16, !tbaa !46
  store <8 x i16> %i.auc, ptr %i.atn, align 16, !tbaa !46
  store <8 x i16> %i.aud, ptr %i.ato, align 16, !tbaa !46
  store <8 x i16> %i.aue, ptr %i.atp, align 16, !tbaa !46
  store <8 x i16> %i.aug, ptr %i.atq, align 16, !tbaa !46
  %i.auh = load i32, ptr %4, align 4, !tbaa !9
  %i.aui = mul nsw i32 %i.auh, 48
  %i.auj = sext i32 %i.aui to i64                 ; 6 uses
  %i.auk = getelementptr inbounds [2 x i8], ptr %i.atl, i64 %i.auj ; 2 uses
  %i.aul = getelementptr inbounds [2 x i8], ptr %i.atm, i64 %i.auj ; 2 uses
  %i.aum = getelementptr inbounds [2 x i8], ptr %i.atn, i64 %i.auj ; 2 uses
  %i.aun = getelementptr inbounds [2 x i8], ptr %i.ato, i64 %i.auj ; 2 uses
  %i.auo = getelementptr inbounds [2 x i8], ptr %i.atp, i64 %i.auj ; 2 uses
  %i.aup = getelementptr inbounds [2 x i8], ptr %i.atq, i64 %i.auj ; 2 uses
  %i.auq = shl <8 x i16> %i.oo, splat (i16 2)     ; 2 uses
  %i.aur = sub <8 x i16> %i.ace, %i.auq           ; 2 uses
  %i.aus = shl <8 x i16> %i.vj, splat (i16 2)
  %i.aut = sub <8 x i16> %i.aiz, %i.aus           ; 2 uses
  %i.auu = sub <8 x i16> %i.ace, %i.oo
  %i.auv = shl <8 x i16> %i.auu, splat (i16 1)    ; 2 uses
  %i.auw = sub <8 x i16> %i.aiz, %i.vj            ; 2 uses
  %i.aux = shl <8 x i16> %i.ht, splat (i16 2)
  %.neg.4 = mul <8 x i16> %i.vj, splat (i16 -5)
  %i.auy = add <8 x i16> %.neg.4, %i.aux
  %i.auz = add <8 x i16> %i.auy, %i.aiz
  %i.ava = add <8 x i16> %i.aut, %i.aur
  %i.avb = sub <8 x i16> %i.aut, %i.aur
  %i.avc = add <8 x i16> %i.auw, %i.auv
  %i.avd = sub <8 x i16> %i.auw, %i.auv
  %.neg274.4 = mul <8 x i16> %i.ace, splat (i16 -5)
  %i.ave = add <8 x i16> %.neg274.4, %i.auq
  %i.avf = add <8 x i16> %i.ave, %i.apu
  store <8 x i16> %i.auz, ptr %i.auk, align 16, !tbaa !46
  store <8 x i16> %i.ava, ptr %i.aul, align 16, !tbaa !46
  store <8 x i16> %i.avb, ptr %i.aum, align 16, !tbaa !46
  store <8 x i16> %i.avc, ptr %i.aun, align 16, !tbaa !46
  store <8 x i16> %i.avd, ptr %i.auo, align 16, !tbaa !46
  store <8 x i16> %i.avf, ptr %i.aup, align 16, !tbaa !46
  %i.avg = load i32, ptr %4, align 4, !tbaa !9
  %i.avh = mul nsw i32 %i.avg, 48
  %i.avi = sext i32 %i.avh to i64                 ; 6 uses
  %i.avj = getelementptr inbounds [2 x i8], ptr %i.auk, i64 %i.avi
  %i.avk = getelementptr inbounds [2 x i8], ptr %i.aul, i64 %i.avi
  %i.avl = getelementptr inbounds [2 x i8], ptr %i.aum, i64 %i.avi
  %i.avm = getelementptr inbounds [2 x i8], ptr %i.aun, i64 %i.avi
  %i.avn = getelementptr inbounds [2 x i8], ptr %i.auo, i64 %i.avi
  %i.avo = getelementptr inbounds [2 x i8], ptr %i.aup, i64 %i.avi
  %i.avp = shl <8 x i16> %i.oq, splat (i16 2)     ; 2 uses
  %i.avq = sub <8 x i16> %i.acg, %i.avp           ; 2 uses
  %i.avr = shl <8 x i16> %i.vl, splat (i16 2)
  %i.avs = sub <8 x i16> %i.ajb, %i.avr           ; 2 uses
  %i.avt = sub <8 x i16> %i.acg, %i.oq
  %i.avu = shl <8 x i16> %i.avt, splat (i16 1)    ; 2 uses
  %i.avv = sub <8 x i16> %i.ajb, %i.vl            ; 2 uses
  %i.avw = shl <8 x i16> %i.hv, splat (i16 2)
  %.neg.5 = mul <8 x i16> %i.vl, splat (i16 -5)
  %i.avx = add <8 x i16> %.neg.5, %i.avw
  %i.avy = add <8 x i16> %i.avx, %i.ajb
  %i.avz = add <8 x i16> %i.avs, %i.avq
  %i.awa = sub <8 x i16> %i.avs, %i.avq
  %i.awb = add <8 x i16> %i.avv, %i.avu
  %i.awc = sub <8 x i16> %i.avv, %i.avu
  %.neg274.5 = mul <8 x i16> %i.acg, splat (i16 -5)
  %i.awd = add <8 x i16> %.neg274.5, %i.avp
  %i.awe = add <8 x i16> %i.awd, %i.apw
  store <8 x i16> %i.avy, ptr %i.avj, align 16, !tbaa !46
  store <8 x i16> %i.avz, ptr %i.avk, align 16, !tbaa !46
  store <8 x i16> %i.awa, ptr %i.avl, align 16, !tbaa !46
  store <8 x i16> %i.awb, ptr %i.avm, align 16, !tbaa !46
  store <8 x i16> %i.awc, ptr %i.avn, align 16, !tbaa !46
  store <8 x i16> %i.awe, ptr %i.avo, align 16, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.awf = load i32, ptr %4, align 4, !tbaa !9    ; 2 uses
  %i.awg = sext i32 %i.awf to i64
  %i.awh = icmp slt i64 %indvars.iv.next, %i.awg
  br i1 %i.awh, label %.noexc, label %._crit_edge, !llvm.loop !430

._crit_edge:                                      ; preds = %.thread.5, %.lr.ph.split
  %i.awi = phi i32 [ %i.q, %.lr.ph.split ], [ %i.awf, %.thread.5 ]
  %i.awj = add i32 %.0288, 1
  %exitcond.not = icmp eq i32 %.0288, %i.j
  br i1 %exitcond.not, label %._crit_edge290, label %.lr.ph.split, !llvm.loop !431

._crit_edge290:                                   ; preds = %._crit_edge, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.co

bb.co:                                            ; preds = %._crit_edge290, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvttps2dq(<4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #16 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+cmov,+crc32,+cx8,+fma4,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+sse4a,+ssse3,+x87,+xop,+xsave" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { noreturn }
attributes #22 = { builtin allocsize(0) }
attributes #23 = { builtin nounwind }
attributes #24 = { noreturn nounwind }

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
!10 = !{!11, !6, i64 44}
!11 = !{!"_ZTSN4ncnn3MatE", !12, i64 0, !13, i64 8, !14, i64 16, !6, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !14, i64 64}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 int", !12, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"p1 _ZTSN4ncnn9AllocatorE", !12, i64 0}
!16 = !{!11, !6, i64 24}
!17 = !{!11, !6, i64 56}
!18 = !{!11, !14, i64 64}
!19 = !{!11, !6, i64 48}
!20 = !{!13, !13, i64 0}
!21 = distinct !{!21, !22, !23, !24}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 28}
!26 = distinct !{!26, !22, !23, !24}
!27 = !{!28, !6, i64 4}
!28 = !{!"_ZTSN4ncnn6OptionE", !29, i64 0, !29, i64 1, !29, i64 2, !29, i64 3, !6, i64 4, !15, i64 8, !15, i64 16, !6, i64 24, !29, i64 28, !29, i64 29, !29, i64 30, !29, i64 31, !29, i64 32, !29, i64 33, !29, i64 34, !29, i64 35, !29, i64 36, !29, i64 37, !29, i64 38, !29, i64 39, !6, i64 40, !29, i64 44, !29, i64 45, !29, i64 46, !29, i64 47, !7, i64 48, !29, i64 49, !29, i64 50, !29, i64 51, !29, i64 52, !29, i64 53, !29, i64 54, !29, i64 55, !29, i64 56, !29, i64 57, !29, i64 58, !29, i64 59, !29, i64 60, !29, i64 61, !29, i64 62, !29, i64 63}
!29 = !{!"bool", !7, i64 0}
!30 = distinct !{!30, !22}
!31 = distinct !{!31, !22, !24, !23}
!32 = !{!11, !12, i64 0}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!35 = distinct !{!35, !"_ZN4ncnn3Mat7channelEi"}
!36 = !{!11, !14, i64 16}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!39 = distinct !{!39, !"_ZNK4ncnn3Mat7channelEi"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!42 = distinct !{!42, !"_ZNK4ncnn3Mat7channelEi"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!45 = distinct !{!45, !"_ZNK4ncnn3Mat7channelEi"}
!46 = !{!7, !7, i64 0}
!47 = distinct !{!47, !22}
!48 = distinct !{!48, !22}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!51 = distinct !{!51, !"_ZNK4ncnn3Mat7channelEi"}
!52 = distinct !{!52, !22}
!53 = distinct !{!53, !22}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!56 = distinct !{!56, !"_ZNK4ncnn3Mat7channelEi"}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, !22}
!59 = distinct !{!59, !22}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!62 = distinct !{!62, !"_ZNK4ncnn3Mat7channelEi"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!65 = distinct !{!65, !"_ZNK4ncnn3Mat7channelEi"}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, !22}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!70 = distinct !{!70, !"_ZNK4ncnn3Mat7channelEi"}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!75 = distinct !{!75, !"_ZNK4ncnn3Mat7channelEi"}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = distinct !{!78, !22}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!81 = distinct !{!81, !"_ZNK4ncnn3Mat7channelEi"}
!82 = distinct !{!82, !22}
!83 = distinct !{!83, !22}
!84 = !{!85}
!85 = distinct !{!85, !86, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!86 = distinct !{!86, !"_ZNK4ncnn3Mat7channelEi"}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!91 = distinct !{!91, !"_ZNK4ncnn3Mat7channelEi"}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!98 = distinct !{!98, !"_ZN4ncnn3Mat7channelEi"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!101 = distinct !{!101, !"_ZNK4ncnn3Mat7channelEi"}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!104 = distinct !{!104, !"_ZNK4ncnn3Mat7channelEi"}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!107 = distinct !{!107, !"_ZNK4ncnn3Mat7channelEi"}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!112 = distinct !{!112, !"_ZNK4ncnn3Mat7channelEi"}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!117 = distinct !{!117, !"_ZNK4ncnn3Mat7channelEi"}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, !22}
!120 = distinct !{!120, !22}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!123 = distinct !{!123, !"_ZNK4ncnn3Mat7channelEi"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!126 = distinct !{!126, !"_ZNK4ncnn3Mat7channelEi"}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!131 = distinct !{!131, !"_ZNK4ncnn3Mat7channelEi"}
!132 = distinct !{!132, !22}
!133 = distinct !{!133, !22}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!136 = distinct !{!136, !"_ZNK4ncnn3Mat7channelEi"}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, !22}
!139 = distinct !{!139, !22}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!142 = distinct !{!142, !"_ZNK4ncnn3Mat7channelEi"}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!147 = distinct !{!147, !"_ZNK4ncnn3Mat7channelEi"}
!148 = distinct !{!148, !22}
!149 = distinct !{!149, !22}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!152 = distinct !{!152, !"_ZNK4ncnn3Mat7channelEi"}
!153 = distinct !{!153, !22}
!154 = distinct !{!154, !155}
!155 = !{!"llvm.loop.unroll.disable"}
!156 = distinct !{!156, !22}
!157 = distinct !{!157, !22}
!158 = distinct !{!158, !22}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!161 = distinct !{!161, !"_ZN4ncnn3Mat7channelEi"}
end_hunk_7
