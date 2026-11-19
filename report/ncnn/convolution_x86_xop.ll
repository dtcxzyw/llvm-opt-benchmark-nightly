Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_xop?download=true
inline.NumInlined: 70
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 45
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
  store i32 %7, ptr %i.a, align 4, !tbaa !10
  store i32 %8, ptr %i.b, align 4, !tbaa !10
  %i.k = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4ncnn28convolution_packed_int8_avx2ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %9)
  br label %_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 19 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !17   ; 6 uses
  store i32 %i.o, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i32, ptr %i.p, align 8, !tbaa !18
  %i.r = mul nsw i32 %i.q, %i.o
  store i32 %i.r, ptr %i.d, align 4, !tbaa !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 20 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19
  %i.u = sext i32 %i.o to i64
  %i.v = mul i64 %i.t, %i.u                       ; 22 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16   ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17 ; 2 uses
  store i32 %i.ab, ptr %i.e, align 4, !tbaa !10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !18
  %i.ae = mul i32 %i.ad, %i.ab                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.af = mul nsw i32 %4, %3                      ; 4 uses
  store i32 %i.af, ptr %i.f, align 4, !tbaa !10
  %i.ag = sext i32 %i.af to i64                   ; 3 uses
  %i.ah = icmp slt i32 %i.af, 0
  br i1 %i.ah, label %.noexc1713.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc1713.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #22
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %.noexc1714.i

.noexc1714.i:                                     ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.ai = shl nuw nsw i64 %i.ag, 2
  %i.aj = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #23 ; 5 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ag ; 2 uses
  store i32 0, ptr %i.aj, align 4, !tbaa !10
  %i.al = add nsw i64 %i.ag, -1                   ; 2 uses
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc1714.i
  %i.an = getelementptr i8, ptr %i.aj, i64 4
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.an, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !10
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i:             ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc1714.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.10.0.i = phi ptr [ %i.ak, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.ak, %.noexc1714.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ]
  %.sroa.02743.0.i = phi ptr [ %i.aj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.aj, %.noexc1714.i ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store ptr %.sroa.02743.0.i, ptr %i.g, align 8, !tbaa !21
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
  %min.iters.check465 = icmp ult i32 %3, 32
  %i.au = and i64 %i.at, 28
  %n.vec = and i64 %i.at, 2147483616              ; 5 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.av = trunc nuw nsw i64 %n.vec to i32
  %i.aw = mul i32 %5, %i.av
  %i.ax = shl <8 x i32> %broadcast.splat, splat (i32 3) ; 5 uses
  %broadcast.splatinsert466 = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat467 = shufflevector <8 x i32> %broadcast.splatinsert466, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.ay = mul nsw <8 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %invariant.op = add <8 x i32> %i.ax, %i.ax      ; 2 uses
  %invariant.op710 = add <8 x i32> %invariant.op, %i.ax ; 2 uses
  %invariant.op711 = add <8 x i32> %invariant.op710, %i.ax
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec470 = and i64 %i.at, 2147483644           ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec470 to i32
  %i.ba = mul i32 %5, %i.az
  %broadcast.splatinsert471 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat472 = shufflevector <4 x i32> %broadcast.splatinsert471, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert475 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat476 = shufflevector <4 x i32> %broadcast.splatinsert475, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bb = mul nsw <4 x i32> %broadcast.splat476, <i32 0, i32 1, i32 2, i32 3>
  %i.bc = shl nsw i32 %5, 2
  %broadcast.splatinsert478 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat479 = shufflevector <4 x i32> %broadcast.splatinsert478, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n484 = icmp eq i64 %n.vec470, %i.at
  br label %iter.check

iter.check:                                       ; preds = %.preheader2828.i.preheader, %._crit_edge.i
  %.010942873.i = phi i32 [ %i.be, %._crit_edge.i ], [ 0, %.preheader2828.i.preheader ] ; 2 uses
  %.010972872.i = phi i32 [ %i.ci, %._crit_edge.i ], [ 0, %.preheader2828.i.preheader ] ; 5 uses
  %.011182871.i = phi i32 [ %i.cj, %._crit_edge.i ], [ 0, %.preheader2828.i.preheader ]
  %i.bd = sext i32 %.010942873.i to i64           ; 5 uses
  %i.be = add i32 %.010942873.i, %3               ; 2 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check465, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = add nsw i64 %n.vec, %i.bd
  %i.bg = add i32 %.010972872.i, %i.aw            ; 3 uses
  %broadcast.splatinsert468 = insertelement <8 x i32> poison, i32 %.010972872.i, i64 0
  %broadcast.splat469 = shufflevector <8 x i32> %broadcast.splatinsert468, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add nsw <8 x i32> %broadcast.splat469, %i.ay
  %invariant.gep = getelementptr [4 x i8], ptr %.sroa.02743.0.i, i64 %i.bd
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 5 uses
  %step.add = add nsw <8 x i32> %vec.ind, %i.ax
  %step.add.2.reass = add <8 x i32> %vec.ind, %invariant.op
  %step.add.3.reass = add <8 x i32> %vec.ind, %invariant.op710
  %i.bh = mul nsw <8 x i32> %vec.ind, %broadcast.splat467
  %i.bi = mul nsw <8 x i32> %step.add, %broadcast.splat467
  %i.bj = mul nsw <8 x i32> %step.add.2.reass, %broadcast.splat467
  %i.bk = mul nsw <8 x i32> %step.add.3.reass, %broadcast.splat467
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %gep, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %gep, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %gep, i64 96
  store <8 x i32> %i.bh, ptr %gep, align 4, !tbaa !10
  store <8 x i32> %i.bi, ptr %i.bl, align 4, !tbaa !10
  store <8 x i32> %i.bj, ptr %i.bm, align 4, !tbaa !10
  store <8 x i32> %i.bk, ptr %i.bn, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <8 x i32> %vec.ind, %invariant.op711
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !145

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ %.010972872.i, %vector.main.loop.iter.check ]
  %i.bp = add nsw i64 %n.vec470, %i.bd
  %i.bq = add i32 %.010972872.i, %i.ba            ; 2 uses
  %broadcast.splatinsert473 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat474 = shufflevector <4 x i32> %broadcast.splatinsert473, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction477 = add nsw <4 x i32> %broadcast.splat474, %i.bb
  %invariant.gep712 = getelementptr [4 x i8], ptr %.sroa.02743.0.i, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index480 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next482, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind481 = phi <4 x i32> [ %induction477, %vec.epilog.ph ], [ %vec.ind.next483, %vec.epilog.vector.body ] ; 2 uses
  %i.br = mul nsw <4 x i32> %vec.ind481, %broadcast.splat472
  %gep713 = getelementptr [4 x i8], ptr %invariant.gep712, i64 %index480
  store <4 x i32> %i.br, ptr %gep713, align 4, !tbaa !10
  %index.next482 = add nuw i64 %index480, 4       ; 2 uses
  %vec.ind.next483 = add nsw <4 x i32> %vec.ind481, %broadcast.splat479
  %i.bs = icmp eq i64 %index.next482, %n.vec470
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !45

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n484, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bd, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bp, %vec.epilog.middle.block ]
  %.110982868.i.ph = phi i32 [ %.010972872.i, %iter.check ], [ %i.bg, %vec.epilog.iter.check ], [ %i.bq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge2874.split.i:                          ; preds = %._crit_edge.i, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  store i32 0, ptr %i.i, align 4, !tbaa !10
  %i.bt = sdiv i32 %i.ae, 4
  store i32 %i.bt, ptr %i.h, align 4, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !146
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.j, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %i.c, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.f, ptr nonnull %i.g)
  %i.bw = load i32, ptr %i.h, align 4, !tbaa !10
  %i.bx = shl nsw i32 %i.bw, 2
  %i.by = load i32, ptr %i.i, align 4, !tbaa !10
  %i.bz = add nsw i32 %i.by, %i.bx                ; 3 uses
  store i32 %i.bz, ptr %i.i, align 4, !tbaa !10
  %i.ca = sub nsw i32 %i.ae, %i.bz                ; 2 uses
  %i.cb = sdiv i32 %i.ca, 2                       ; 2 uses
  store i32 %i.cb, ptr %i.h, align 4, !tbaa !10
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
  %.lcssa464 = phi i32 [ %i.bq, %vec.epilog.middle.block ], [ %i.bg, %middle.block ], [ %i.cm, %vec.epilog.scalar.ph ]
  %i.ci = add nsw i32 %i.aq, %.lcssa464
  %i.cj = add nuw nsw i32 %.011182871.i, 1        ; 2 uses
  %exitcond3682.not.i = icmp eq i32 %i.cj, %4
  br i1 %exitcond3682.not.i, label %._crit_edge2874.split.i, label %iter.check, !llvm.loop !46

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.110982868.i = phi i32 [ %i.cm, %vec.epilog.scalar.ph ], [ %.110982868.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ck = mul nsw i32 %.110982868.i, %i.o
  %i.cl = getelementptr inbounds [4 x i8], ptr %.sroa.02743.0.i, i64 %indvars.iv.i
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !10
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cm = add nsw i32 %.110982868.i, %5           ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.be, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !47

._crit_edge3235.loopexit.i:                       ; preds = %._crit_edge3233.i
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !10
  br label %._crit_edge3235.i

._crit_edge3235.i:                                ; preds = %._crit_edge3235.loopexit.i, %._crit_edge2874.split.i
  %i.cn = phi i32 [ %i.bz, %._crit_edge2874.split.i ], [ %.pre.i, %._crit_edge3235.loopexit.i ] ; 2 uses
  %.lcssa2866.i = phi i32 [ %i.cb, %._crit_edge2874.split.i ], [ %i.ata, %._crit_edge3235.loopexit.i ]
  %i.co = shl nsw i32 %.lcssa2866.i, 1            ; 2 uses
  %i.cp = add nsw i32 %i.co, %i.cn                ; 2 uses
  store i32 %i.cp, ptr %i.i, align 4, !tbaa !10
  %i.cq = icmp slt i32 %i.cp, %i.ae
  br i1 %i.cq, label %.noexc.lr.ph.i, label %._crit_edge3529.i

.noexc.lr.ph.i:                                   ; preds = %._crit_edge3235.i
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_0
begin_hunk_1_@_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds i8, ptr %gep3202.us.i, i64 %i.aoy ; 2 uses
  %i.apa = load i8, ptr %i.aoz, align 1, !tbaa !29
  %i.apb = sext i8 %i.apa to i32                  ; 2 uses
  %i.apc = load i8, ptr %.311073183.us.i, align 1, !tbaa !29
  %i.apd = sext i8 %i.apc to i32
  %i.ape = mul nsw i32 %i.apd, %i.apb
  %i.apf = add nsw i32 %i.ape, %.111153181.us.i
  %i.apg = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 1
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !29
  %i.api = sext i8 %i.aph to i32
  %i.apj = mul nsw i32 %i.api, %i.apb
  %i.apk = add nsw i32 %i.apj, %.111113182.us.i
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aoz, i64 %i.du
  %i.apm = load i8, ptr %i.apl, align 1, !tbaa !29
  %i.apn = sext i8 %i.apm to i32                  ; 2 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 2
  %i.app = load i8, ptr %i.apo, align 1, !tbaa !29
  %i.apq = sext i8 %i.app to i32
  %i.apr = mul nsw i32 %i.apq, %i.apn
  %i.aps = add nsw i32 %i.apf, %i.apr             ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 3
  %i.apu = load i8, ptr %i.apt, align 1, !tbaa !29
  %i.apv = sext i8 %i.apu to i32
  %i.apw = mul nsw i32 %i.apv, %i.apn
  %i.apx = add nsw i32 %i.apk, %i.apw             ; 3 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %.311073183.us.i, i64 4
  %indvars.iv.next3764.i = add nuw nsw i64 %indvars.iv3763.i, 1 ; 2 uses
  %exitcond3769.not.i = icmp eq i64 %indvars.iv.next3764.i, %wide.trip.count3768.i
  br i1 %exitcond3769.not.i, label %._crit_edge3186.us.i, label %bb.i, !llvm.loop !88

._crit_edge3186.us.i:                             ; preds = %bb.i
  %scevgep3765.i = getelementptr i8, ptr %.211063192.us.i, i64 4
  %scevgep3766.i = getelementptr i8, ptr %scevgep3765.i, i64 %i.aou ; 2 uses
  %indvars.iv.next3771.i = add nuw nsw i64 %indvars.iv3770.i, 2 ; 2 uses
  %i.apz = trunc i64 %indvars.iv.next3771.i to i32 ; 2 uses
  %i.aqa = or i32 %i.apz, 1
  %i.aqb = icmp slt i32 %i.aqa, %i.ajb
  br i1 %i.aqb, label %.noexc1363.us.i, label %.preheader2823.i, !llvm.loop !89

.preheader2823.i:                                 ; preds = %._crit_edge3186.us.i, %.noexc1363.preheader.i, %._crit_edge3153.i
  %.01114.lcssa.i = phi i32 [ %i.ant, %._crit_edge3153.i ], [ %i.ant, %.noexc1363.preheader.i ], [ %i.aps, %._crit_edge3186.us.i ] ; 3 uses
  %.01110.lcssa.i = phi i32 [ %i.anu, %._crit_edge3153.i ], [ %i.anu, %.noexc1363.preheader.i ], [ %i.apx, %._crit_edge3186.us.i ] ; 3 uses
  %.21106.lcssa.i = phi ptr [ %.01104.lcssa.i, %._crit_edge3153.i ], [ %.01104.lcssa.i, %.noexc1363.preheader.i ], [ %scevgep3766.i, %._crit_edge3186.us.i ]
  %.11102.lcssa.i = phi i32 [ %.01101.lcssa.i, %._crit_edge3153.i ], [ %i.aor, %.noexc1363.preheader.i ], [ %i.apz, %._crit_edge3186.us.i ] ; 2 uses
  %i.aqc = icmp slt i32 %.11102.lcssa.i, %i.ajb
  br i1 %i.aqc, label %.noexc1361.lr.ph.i, label %._crit_edge3220.i

.noexc1361.lr.ph.i:                               ; preds = %.preheader2823.i
  %i.aqd = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !159
  %i.aqe = load ptr, ptr %0, align 8, !tbaa !27, !noalias !159
  %i.aqf = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !159
  %i.aqg = load i64, ptr %i.ch, align 8, !tbaa !28, !noalias !159 ; 2 uses
  %factor.op.mul3223.i = mul i64 %i.aqg, %i.aqf
  %i.aqh = sext i32 %i.aqd to i64
  %i.aqi = load i32, ptr %i.b, align 4, !tbaa !10
  %i.aqj = mul nsw i32 %i.aqi, %i.aiz
  %i.aqk = sext i32 %i.aqj to i64
  %i.aql = mul i64 %i.aqg, %i.aqh
  %i.aqm = mul i64 %i.aql, %i.aqk
  %invariant.gep3225.i = getelementptr i8, ptr %i.aqe, i64 %i.aqm
  %i.aqn = load i32, ptr %i.a, align 4, !tbaa !10
  %i.aqo = mul nsw i32 %i.aqn, %i.aja
  %i.aqp = sext i32 %i.aqo to i64
  %invariant.gep3226.i = getelementptr i8, ptr %invariant.gep3225.i, i64 %i.aqp
  %i.aqq = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.aqr = icmp sgt i32 %i.aqq, 0
  %i.aqs = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.aqr, label %.noexc1361.us.preheader.i, label %._crit_edge3220.i

.noexc1361.us.preheader.i:                        ; preds = %.noexc1361.lr.ph.i
  %i.aqt = add nsw i32 %i.aqq, -1
  %i.aqu = zext nneg i32 %i.aqt to i64
  %i.aqv = shl nuw nsw i64 %i.aqu, 1
  %i.aqw = zext i32 %.11102.lcssa.i to i64
  %wide.trip.count3778.i = zext nneg i32 %i.aqq to i64 ; 2 uses
  %xtraiter576 = and i64 %wide.trip.count3778.i, 1
  %i.aqx = icmp eq i32 %i.aqq, 1
  %unroll_iter581 = and i64 %wide.trip.count3778.i, 2147483646
  %lcmp.mod577.not = icmp eq i64 %xtraiter576, 0
  %lcmp.mod580 = trunc i32 %i.aqq to i1
  br label %.noexc1361.us.i

.noexc1361.us.i:                                  ; preds = %._crit_edge3212.us.i, %.noexc1361.us.preheader.i
  %indvars.iv3780.i = phi i64 [ %i.aqw, %.noexc1361.us.preheader.i ], [ %indvars.iv.next3781.i, %._crit_edge3212.us.i ] ; 2 uses
  %.411083218.us.i = phi ptr [ %.21106.lcssa.i, %.noexc1361.us.preheader.i ], [ %scevgep3776.i, %._crit_edge3212.us.i ] ; 3 uses
  %.211123217.us.i = phi i32 [ %.01110.lcssa.i, %.noexc1361.us.preheader.i ], [ %.lcssa568, %._crit_edge3212.us.i ] ; 2 uses
  %.211163216.us.i = phi i32 [ %.01114.lcssa.i, %.noexc1361.us.preheader.i ], [ %.lcssa569, %._crit_edge3212.us.i ] ; 2 uses
  %.reass3224.us.i = mul i64 %factor.op.mul3223.i, %indvars.iv3780.i
  %gep3227.us.i = getelementptr i8, ptr %invariant.gep3226.i, i64 %.reass3224.us.i ; 3 uses
  br i1 %i.aqx, label %.epil.preheader575, label %.noexc1361.us.i.new

.noexc1361.us.i.new:                              ; preds = %.noexc1361.us.i, %.noexc1361.us.i.new
  %indvars.iv3773.i = phi i64 [ %indvars.iv.next3774.i.1, %.noexc1361.us.i.new ], [ 0, %.noexc1361.us.i ] ; 3 uses
  %.511093209.us.i = phi ptr [ %i.ase, %.noexc1361.us.i.new ], [ %.411083218.us.i, %.noexc1361.us.i ] ; 5 uses
  %.311133208.us.i = phi i32 [ %i.asd, %.noexc1361.us.i.new ], [ %.211123217.us.i, %.noexc1361.us.i ]
  %.311173207.us.i = phi i32 [ %i.ary, %.noexc1361.us.i.new ], [ %.211163216.us.i, %.noexc1361.us.i ]
  %niter582 = phi i64 [ %niter582.next.1, %.noexc1361.us.i.new ], [ 0, %.noexc1361.us.i ]
  %i.aqy = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv3773.i
  %i.aqz = load i32, ptr %i.aqy, align 4, !tbaa !10
  %i.ara = sext i32 %i.aqz to i64
  %i.arb = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.ara
  %i.arc = load i8, ptr %i.arb, align 1, !tbaa !29
  %i.ard = sext i8 %i.arc to i32                  ; 2 uses
  %i.are = load i8, ptr %.511093209.us.i, align 1, !tbaa !29
  %i.arf = sext i8 %i.are to i32
  %i.arg = mul nsw i32 %i.arf, %i.ard
  %i.arh = add nsw i32 %i.arg, %.311173207.us.i
  %i.ari = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 1
  %i.arj = load i8, ptr %i.ari, align 1, !tbaa !29
  %i.ark = sext i8 %i.arj to i32
  %i.arl = mul nsw i32 %i.ark, %i.ard
  %i.arm = add nsw i32 %i.arl, %.311133208.us.i
  %i.arn = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 2
  %i.aro = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv3773.i
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.arq = load i32, ptr %i.arp, align 4, !tbaa !10
  %i.arr = sext i32 %i.arq to i64
  %i.ars = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.arr
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !29
  %i.aru = sext i8 %i.art to i32                  ; 2 uses
  %i.arv = load i8, ptr %i.arn, align 1, !tbaa !29
  %i.arw = sext i8 %i.arv to i32
  %i.arx = mul nsw i32 %i.arw, %i.aru
  %i.ary = add nsw i32 %i.arx, %i.arh             ; 3 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 3
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !29
  %i.asb = sext i8 %i.asa to i32
  %i.asc = mul nsw i32 %i.asb, %i.aru
  %i.asd = add nsw i32 %i.asc, %i.arm             ; 3 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %.511093209.us.i, i64 4 ; 2 uses
  %indvars.iv.next3774.i.1 = add nuw nsw i64 %indvars.iv3773.i, 2 ; 2 uses
  %niter582.next.1 = add i64 %niter582, 2         ; 2 uses
  %niter582.ncmp.1 = icmp eq i64 %niter582.next.1, %unroll_iter581
  br i1 %niter582.ncmp.1, label %._crit_edge3212.us.i.unr-lcssa, label %.noexc1361.us.i.new, !llvm.loop !92

._crit_edge3212.us.i.unr-lcssa:                   ; preds = %.noexc1361.us.i.new
  br i1 %lcmp.mod577.not, label %._crit_edge3212.us.i, label %.epil.preheader575

.epil.preheader575:                               ; preds = %._crit_edge3212.us.i.unr-lcssa, %.noexc1361.us.i
  %indvars.iv3773.i.epil.init = phi i64 [ 0, %.noexc1361.us.i ], [ %indvars.iv.next3774.i.1, %._crit_edge3212.us.i.unr-lcssa ]
  %.511093209.us.i.epil.init = phi ptr [ %.411083218.us.i, %.noexc1361.us.i ], [ %i.ase, %._crit_edge3212.us.i.unr-lcssa ] ; 2 uses
  %.311133208.us.i.epil.init = phi i32 [ %.211123217.us.i, %.noexc1361.us.i ], [ %i.asd, %._crit_edge3212.us.i.unr-lcssa ]
  %.311173207.us.i.epil.init = phi i32 [ %.211163216.us.i, %.noexc1361.us.i ], [ %i.ary, %._crit_edge3212.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod580)
  %i.asf = getelementptr inbounds nuw [4 x i8], ptr %i.aqs, i64 %indvars.iv3773.i.epil.init
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !10
  %i.ash = sext i32 %i.asg to i64
  %i.asi = getelementptr inbounds i8, ptr %gep3227.us.i, i64 %i.ash
  %i.asj = load i8, ptr %i.asi, align 1, !tbaa !29
  %i.ask = sext i8 %i.asj to i32                  ; 2 uses
  %i.asl = load i8, ptr %.511093209.us.i.epil.init, align 1, !tbaa !29
  %i.asm = sext i8 %i.asl to i32
  %i.asn = mul nsw i32 %i.asm, %i.ask
  %i.aso = add nsw i32 %i.asn, %.311173207.us.i.epil.init
  %i.asp = getelementptr inbounds nuw i8, ptr %.511093209.us.i.epil.init, i64 1
  %i.asq = load i8, ptr %i.asp, align 1, !tbaa !29
  %i.asr = sext i8 %i.asq to i32
  %i.ass = mul nsw i32 %i.asr, %i.ask
  %i.ast = add nsw i32 %i.ass, %.311133208.us.i.epil.init
  br label %._crit_edge3212.us.i

._crit_edge3212.us.i:                             ; preds = %._crit_edge3212.us.i.unr-lcssa, %.epil.preheader575
  %.lcssa569 = phi i32 [ %i.ary, %._crit_edge3212.us.i.unr-lcssa ], [ %i.aso, %.epil.preheader575 ] ; 2 uses
  %.lcssa568 = phi i32 [ %i.asd, %._crit_edge3212.us.i.unr-lcssa ], [ %i.ast, %.epil.preheader575 ] ; 2 uses
  %scevgep3775.i = getelementptr i8, ptr %.411083218.us.i, i64 2
  %scevgep3776.i = getelementptr i8, ptr %scevgep3775.i, i64 %i.aqv
  %indvars.iv.next3781.i = add nuw nsw i64 %indvars.iv3780.i, 1 ; 2 uses
  %i.asu = trunc nuw i64 %indvars.iv.next3781.i to i32
  %i.asv = icmp sgt i32 %i.ajb, %i.asu
  br i1 %i.asv, label %.noexc1361.us.i, label %._crit_edge3220.i, !llvm.loop !93

._crit_edge3220.i:                                ; preds = %._crit_edge3212.us.i, %.noexc1361.lr.ph.i, %.preheader2823.i
  %.21116.lcssa.i = phi i32 [ %.01114.lcssa.i, %.preheader2823.i ], [ %.01114.lcssa.i, %.noexc1361.lr.ph.i ], [ %.lcssa569, %._crit_edge3212.us.i ]
  %.21112.lcssa.i = phi i32 [ %.01110.lcssa.i, %.preheader2823.i ], [ %.01110.lcssa.i, %.noexc1361.lr.ph.i ], [ %.lcssa568, %._crit_edge3212.us.i ]
  store i32 %.21116.lcssa.i, ptr %.211533232.i, align 4, !tbaa !10
  store i32 %.21112.lcssa.i, ptr %.211563231.i, align 4, !tbaa !10
  %i.asw = getelementptr inbounds nuw i8, ptr %.211533232.i, i64 4
  %i.asx = getelementptr inbounds nuw i8, ptr %.211563231.i, i64 4
  %i.asy = add nuw nsw i32 %.211593230.i, 1       ; 2 uses
  %exitcond3783.not.i = icmp eq i32 %i.asy, %i.eg
  br i1 %exitcond3783.not.i, label %._crit_edge3233.i, label %.noexc1367.i, !llvm.loop !94

._crit_edge3233.i:                                ; preds = %._crit_edge3220.i, %.preheader2826.i
  %i.asz = add nuw nsw i32 %.011483234.i, 1       ; 2 uses
  %i.ata = load i32, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.atb = icmp slt i32 %i.asz, %i.ata
  br i1 %i.atb, label %.noexc1262.i, label %._crit_edge3235.loopexit.i, !llvm.loop !95

._crit_edge3529.i:                                ; preds = %._crit_edge3527.i, %._crit_edge3235.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  %.not.i.i.i.i = icmp eq ptr %.sroa.02743.0.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge3529.i
  %i.atc = ptrtoint ptr %.sroa.10.0.i to i64
  %i.atd = ptrtoint ptr %.sroa.02743.0.i to i64
  %i.ate = sub i64 %i.atc, %i.atd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02743.0.i, i64 noundef %i.ate) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit.i

_ZNSt6vectorIiSaIiEED2Ev.exit.i:                  ; preds = %bb.j, %._crit_edge3529.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  br label %_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.exit

.noexc.i:                                         ; preds = %._crit_edge3527.i, %.noexc.lr.ph.i
  %indvars.iv3887.i = phi i64 [ %i.dg, %.noexc.lr.ph.i ], [ %indvars.iv.next3888.i, %._crit_edge3527.i ] ; 5 uses
  %i.atf = load ptr, ptr %1, align 8, !tbaa !27, !noalias !160
  %i.atg = load i64, ptr %i.cr, align 8, !tbaa !19, !noalias !160
  %i.ath = mul i64 %i.atg, %indvars.iv3887.i
  %i.ati = load i64, ptr %i.cs, align 8, !tbaa !28, !noalias !160
  %i.atj = mul i64 %i.ath, %i.ati
  %i.atk = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atj ; 2 uses
  br i1 %i.cu, label %.noexc1359.lr.ph.i, label %.preheader2822.i

.noexc1359.lr.ph.i:                               ; preds = %.noexc.i
  %i.atl = trunc nsw i64 %indvars.iv3887.i to i32 ; 2 uses
  %i.atm = sdiv i32 %i.atl, 4
  %i.atn = insertelement <2 x i32> poison, i32 %i.atl, i64 0
  %i.ato = shufflevector <2 x i32> %i.atn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.atp = srem <2 x i32> %i.ato, <i32 4, i32 2>  ; 2 uses
  %i.atq = bitcast <2 x i32> %i.atp to <8 x i8>
  %.lhs.trunc2813.i = extractelement <8 x i8> %i.atq, i64 0
  %i.atr = sdiv i8 %.lhs.trunc2813.i, 2
  %.sext2814.i = sext i8 %i.atr to i32
  %i.ats = extractelement <2 x i32> %i.atp, i64 1
  %i.att = add nsw i32 %i.ats, %i.atm
  %i.atu = add nsw i32 %i.att, %.sext2814.i
  %i.atv = sext i32 %i.atu to i64
  %i.atw = load i32, ptr %i.d, align 4, !tbaa !10 ; 9 uses
  %i.atx = icmp sgt i32 %i.atw, 7
  %i.aty = load i32, ptr %i.c, align 4            ; 3 uses
  %i.atz = load i32, ptr %i.b, align 4            ; 9 uses
  %i.aua = load i32, ptr %i.a, align 4            ; 9 uses
  %factor.op.mul3350.i = mul i32 %i.aua, %i.aty   ; 4 uses
  %i.aub = load i32, ptr %i.f, align 4            ; 3 uses
  %i.auc = icmp sgt i32 %i.aub, 0                 ; 3 uses
  %i.aud = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.aue = icmp eq i32 %i.aty, 8
  %i.auf = add i32 %i.aub, -1
  %i.aug = zext i32 %i.auf to i64                 ; 3 uses
  %i.auh = shl nuw nsw i64 %i.aug, 3              ; 2 uses
  %i.aui = and i32 %i.atw, -8                     ; 3 uses
  %i.auj = add nsw i32 %i.atw, -2
  %i.auk = shl nuw nsw i64 %i.aug, 1
  %wide.trip.count3789.i = zext nneg i32 %i.aub to i64 ; 4 uses
  %i.aul = insertelement <4 x i32> poison, i32 %i.atz, i64 0
  %i.aum = shufflevector <4 x i32> %i.aul, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.noexc1359.i

.preheader2822.i:                                 ; preds = %._crit_edge3322.i, %.noexc.i
  %.01090.lcssa.i = phi ptr [ %i.atk, %.noexc.i ], [ %i.bin, %._crit_edge3322.i ] ; 2 uses
  %.01087.lcssa.i = phi i32 [ 0, %.noexc.i ], [ %i.bio, %._crit_edge3322.i ] ; 3 uses
  %i.aun = or disjoint i32 %.01087.lcssa.i, 1     ; 2 uses
  %i.auo = icmp slt i32 %i.aun, %i.ct
  br i1 %i.auo, label %.noexc1333.lr.ph.i, label %.preheader2821.i

.noexc1333.lr.ph.i:                               ; preds = %.preheader2822.i
  %i.aup = trunc nsw i64 %indvars.iv3887.i to i32 ; 2 uses
  %i.auq = sdiv i32 %i.aup, 4
  %i.aur = insertelement <2 x i32> poison, i32 %i.aup, i64 0
  %i.aus = shufflevector <2 x i32> %i.aur, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.aut = srem <2 x i32> %i.aus, <i32 4, i32 2>  ; 2 uses
  %i.auu = bitcast <2 x i32> %i.aut to <8 x i8>
  %.lhs.trunc2815.i = extractelement <8 x i8> %i.auu, i64 0
  %i.auv = sdiv i8 %.lhs.trunc2815.i, 2
  %.sext2816.i = sext i8 %i.auv to i32
  %i.auw = extractelement <2 x i32> %i.aut, i64 1
  %i.aux = add nsw i32 %i.auw, %i.auq
  %i.auy = add nsw i32 %i.aux, %.sext2816.i
  %i.auz = load ptr, ptr %2, align 8, !tbaa !27, !noalias !161
  %i.ava = load i64, ptr %i.cv, align 8, !tbaa !19, !noalias !161
  %i.avb = sext i32 %i.auy to i64
  %i.avc = mul i64 %i.ava, %i.avb
  %i.avd = load i64, ptr %i.cw, align 8, !tbaa !28, !noalias !161
  %i.ave = mul i64 %i.avc, %i.avd
  %i.avf = getelementptr inbounds nuw i8, ptr %i.auz, i64 %i.ave ; 4 uses
  br label %.noexc1333.i

.noexc1359.i:                                     ; preds = %._crit_edge3322.i, %.noexc1359.lr.ph.i
  %.010873346.i = phi i32 [ 0, %.noexc1359.lr.ph.i ], [ %i.bio, %._crit_edge3322.i ] ; 6 uses
  %.010903345.i = phi ptr [ %i.atk, %.noexc1359.lr.ph.i ], [ %i.bin, %._crit_edge3322.i ] ; 2 uses
  %i.avg = or disjoint i32 %.010873346.i, 3       ; 2 uses
  %i.avh = or disjoint i32 %.010873346.i, 1       ; 2 uses
  %i.avi = or disjoint i32 %.010873346.i, 2       ; 2 uses
  %i.avj = insertelement <4 x i32> poison, i32 %.010873346.i, i64 0
  %i.avk = insertelement <4 x i32> %i.avj, i32 %i.avh, i64 1
  %i.avl = insertelement <4 x i32> %i.avk, i32 %i.avi, i64 2
  %i.avm = insertelement <4 x i32> %i.avl, i32 %i.avg, i64 3
  %i.avn = sdiv <4 x i32> %i.avm, %i.dj           ; 9 uses
  %i.avo = srem i32 %.010873346.i, %i.x           ; 3 uses
  %i.avp = srem i32 %i.avh, %i.x                  ; 3 uses
  %i.avq = srem i32 %i.avi, %i.x                  ; 3 uses
  %i.avr = srem i32 %i.avg, %i.x                  ; 3 uses
  %i.avs = load ptr, ptr %2, align 8, !tbaa !27, !noalias !162
  %i.avt = load i64, ptr %i.cv, align 8, !tbaa !19, !noalias !162
  %i.avu = mul i64 %i.avt, %i.atv
  %i.avv = load i64, ptr %i.cw, align 8, !tbaa !28, !noalias !162
  %i.avw = mul i64 %i.avu, %i.avv
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avs, i64 %i.avw ; 4 uses
  br i1 %i.atx, label %.noexc1357.lr.ph.i, label %._crit_edge3253.i

.noexc1357.lr.ph.i:                               ; preds = %.noexc1359.i
  %i.avy = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !163
  %i.avz = load ptr, ptr %0, align 8, !tbaa !27, !noalias !163 ; 4 uses
  %i.awa = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !163
  %i.awb = load i64, ptr %i.cx, align 8, !tbaa !28, !noalias !163 ; 2 uses
  %factor.op.mul3260.i = mul i64 %i.awb, %i.awa   ; 2 uses
  %i.awc = sext i32 %i.avy to i64
  %i.awd = extractelement <4 x i32> %i.avn, i64 0
  %i.awe = mul nsw i32 %i.awd, %i.atz
  %i.awf = sext i32 %i.awe to i64
  %i.awg = mul i64 %i.awb, %i.awc                 ; 4 uses
  %i.awh = mul i64 %i.awg, %i.awf
  %invariant.gep3262.i = getelementptr i8, ptr %i.avz, i64 %i.awh
  %.reass3351.i = mul i32 %i.avo, %factor.op.mul3350.i
  %i.awi = sext i32 %.reass3351.i to i64
  %invariant.gep3263.i = getelementptr i8, ptr %invariant.gep3262.i, i64 %i.awi ; 2 uses
  %i.awj = extractelement <4 x i32> %i.avn, i64 1
  %i.awk = mul nsw i32 %i.awj, %i.atz
  %i.awl = sext i32 %i.awk to i64
  %i.awm = mul i64 %i.awg, %i.awl
  %invariant.gep3267.i = getelementptr i8, ptr %i.avz, i64 %i.awm
  %.reass3353.i = mul i32 %i.avp, %factor.op.mul3350.i
  %i.awn = sext i32 %.reass3353.i to i64
  %invariant.gep3268.i = getelementptr i8, ptr %invariant.gep3267.i, i64 %i.awn ; 2 uses
  %i.awo = extractelement <4 x i32> %i.avn, i64 2
  %i.awp = mul nsw i32 %i.awo, %i.atz
  %i.awq = sext i32 %i.awp to i64
  %i.awr = mul i64 %i.awg, %i.awq
  %invariant.gep3272.i = getelementptr i8, ptr %i.avz, i64 %i.awr
  %.reass3355.i = mul i32 %i.avq, %factor.op.mul3350.i
  %i.aws = sext i32 %.reass3355.i to i64
  %invariant.gep3273.i = getelementptr i8, ptr %invariant.gep3272.i, i64 %i.aws ; 2 uses
  %i.awt = extractelement <4 x i32> %i.avn, i64 3
  %i.awu = mul nsw i32 %i.awt, %i.atz
  %i.awv = sext i32 %i.awu to i64
  %i.aww = mul i64 %i.awg, %i.awv
  %invariant.gep3277.i = getelementptr i8, ptr %i.avz, i64 %i.aww
  %.reass3357.i = mul i32 %i.avr, %factor.op.mul3350.i
  %i.awx = sext i32 %.reass3357.i to i64
  %invariant.gep3278.i = getelementptr i8, ptr %invariant.gep3277.i, i64 %i.awx ; 2 uses
  br i1 %i.auc, label %.noexc1357.lr.ph.i.split.us, label %._crit_edge3253.i

.noexc1357.lr.ph.i.split.us:                      ; preds = %.noexc1357.lr.ph.i
  br i1 %i.aue, label %.noexc1357.i.us.us, label %.noexc1357.i.us

.noexc1357.i.us.us:                               ; preds = %.noexc1357.lr.ph.i.split.us, %._crit_edge3240.loopexit.i.us.us
  %.010783252.i.us.us = phi i32 [ %i.aye, %._crit_edge3240.loopexit.i.us.us ], [ 0, %.noexc1357.lr.ph.i.split.us ] ; 2 uses
  %.010813251.i.us.us = phi ptr [ %scevgep3794.i.us.us, %._crit_edge3240.loopexit.i.us.us ], [ %i.avx, %.noexc1357.lr.ph.i.split.us ] ; 2 uses
  %i.awy = phi <4 x i32> [ %i.ayc, %._crit_edge3240.loopexit.i.us.us ], [ zeroinitializer, %.noexc1357.lr.ph.i.split.us ]
  %i.awz = phi <4 x i32> [ %i.ayb, %._crit_edge3240.loopexit.i.us.us ], [ zeroinitializer, %.noexc1357.lr.ph.i.split.us ]
  %i.axa = phi <4 x i32> [ %i.aya, %._crit_edge3240.loopexit.i.us.us ], [ zeroinitializer, %.noexc1357.lr.ph.i.split.us ]
  %i.axb = phi <4 x i32> [ %i.axz, %._crit_edge3240.loopexit.i.us.us ], [ zeroinitializer, %.noexc1357.lr.ph.i.split.us ]
  %i.axc = lshr exact i32 %.010783252.i.us.us, 3
  %i.axd = zext nneg i32 %i.axc to i64
  %.reass3261.i.us.us = mul i64 %factor.op.mul3260.i, %i.axd ; 4 uses
  %gep3264.i.us.us = getelementptr i8, ptr %invariant.gep3263.i, i64 %.reass3261.i.us.us
  %gep3269.i.us.us = getelementptr i8, ptr %invariant.gep3268.i, i64 %.reass3261.i.us.us
  %gep3274.i.us.us = getelementptr i8, ptr %invariant.gep3273.i, i64 %.reass3261.i.us.us
  %gep3279.i.us.us = getelementptr i8, ptr %invariant.gep3278.i, i64 %.reass3261.i.us.us
  br label %.lr.ph3239.split.us.i.us.us

.lr.ph3239.split.us.i.us.us:                      ; preds = %.lr.ph3239.split.us.i.us.us, %.noexc1357.i.us.us
  %indvars.iv3791.i.us.us = phi i64 [ %indvars.iv.next3792.i.us.us, %.lr.ph3239.split.us.i.us.us ], [ 0, %.noexc1357.i.us.us ] ; 2 uses
  %.110823237.us.i.us.us = phi ptr [ %i.ayd, %.lr.ph3239.split.us.i.us.us ], [ %.010813251.i.us.us, %.noexc1357.i.us.us ] ; 2 uses
  %i.axe = phi <4 x i32> [ %i.ayc, %.lr.ph3239.split.us.i.us.us ], [ %i.awy, %.noexc1357.i.us.us ]
  %i.axf = phi <4 x i32> [ %i.ayb, %.lr.ph3239.split.us.i.us.us ], [ %i.awz, %.noexc1357.i.us.us ]
  %i.axg = phi <4 x i32> [ %i.aya, %.lr.ph3239.split.us.i.us.us ], [ %i.axa, %.noexc1357.i.us.us ]
  %i.axh = phi <4 x i32> [ %i.axz, %.lr.ph3239.split.us.i.us.us ], [ %i.axb, %.noexc1357.i.us.us ]
  %i.axi = getelementptr inbounds nuw [4 x i8], ptr %i.aud, i64 %indvars.iv3791.i.us.us
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !10
  %i.axk = sext i32 %i.axj to i64                 ; 4 uses
  %i.axl = getelementptr inbounds i8, ptr %gep3264.i.us.us, i64 %i.axk
  %i.axm = getelementptr inbounds i8, ptr %gep3269.i.us.us, i64 %i.axk
  %i.axn = getelementptr inbounds i8, ptr %gep3274.i.us.us, i64 %i.axk
  %i.axo = getelementptr inbounds i8, ptr %gep3279.i.us.us, i64 %i.axk
  %i.axp = load <8 x i8>, ptr %i.axl, align 1, !tbaa !29
  %i.axq = load <8 x i8>, ptr %i.axm, align 1, !tbaa !29
  %i.axr = load <8 x i8>, ptr %i.axn, align 1, !tbaa !29
  %i.axs = load <8 x i8>, ptr %i.axo, align 1, !tbaa !29
  %i.axt = sext <8 x i8> %i.axp to <8 x i16>
  %i.axu = sext <8 x i8> %i.axq to <8 x i16>
  %i.axv = sext <8 x i8> %i.axr to <8 x i16>
  %i.axw = sext <8 x i8> %i.axs to <8 x i16>
  %i.axx = load <8 x i8>, ptr %.110823237.us.i.us.us, align 1, !tbaa !29
  %i.axy = sext <8 x i8> %i.axx to <8 x i16>      ; 4 uses
  %i.axz = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.axt, <8 x i16> %i.axy, <4 x i32> %i.axh) ; 3 uses
  %i.aya = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.axu, <8 x i16> %i.axy, <4 x i32> %i.axg) ; 3 uses
  %i.ayb = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.axv, <8 x i16> %i.axy, <4 x i32> %i.axf) ; 3 uses
  %i.ayc = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.axw, <8 x i16> %i.axy, <4 x i32> %i.axe) ; 3 uses
  %i.ayd = getelementptr inbounds nuw i8, ptr %.110823237.us.i.us.us, i64 8
  %indvars.iv.next3792.i.us.us = add nuw nsw i64 %indvars.iv3791.i.us.us, 1 ; 2 uses
  %exitcond3797.not.i.us.us = icmp eq i64 %indvars.iv.next3792.i.us.us, %wide.trip.count3789.i
  br i1 %exitcond3797.not.i.us.us, label %._crit_edge3240.loopexit.i.us.us, label %.lr.ph3239.split.us.i.us.us, !llvm.loop !104

end_hunk_1
begin_hunk_2_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %i.apm = sext <8 x i8> %i.apl to <8 x i16>
  %i.apn = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.apk, <8 x i16> %i.apm, <4 x i32> %.epil.init)
  br label %._crit_edge1889.us

._crit_edge1889.us:                               ; preds = %._crit_edge1889.us.unr-lcssa, %.epil.preheader
  %.lcssa2244 = phi <4 x i32> [ %i.aoy, %._crit_edge1889.us.unr-lcssa ], [ %i.apn, %.epil.preheader ] ; 2 uses
  %scevgep2079 = getelementptr i8, ptr %.26441892.us, i64 8
  %scevgep2080 = getelementptr i8, ptr %scevgep2079, i64 %i.anq ; 2 uses
  %indvars.iv.next2085 = add nuw nsw i64 %indvars.iv2084, 2 ; 3 uses
  %i.apo = trunc i64 %indvars.iv.next2085 to i32
  %i.app = or i32 %i.apo, 1
  %i.apq = icmp slt i32 %i.app, %i.ahq
  br i1 %i.apq, label %.noexc712.us, label %.preheader.loopexit, !llvm.loop !214

.preheader.loopexit:                              ; preds = %._crit_edge1889.us
  %i.apr = trunc nuw i64 %indvars.iv.next2085 to i32
  br label %.preheader

.preheader:                                       ; preds = %.noexc712.preheader, %.preheader.loopexit, %._crit_edge1851
  %.lcssa1622 = phi <4 x i32> [ %i.amq, %._crit_edge1851 ], [ %.lcssa2244, %.preheader.loopexit ], [ %i.amq, %.noexc712.preheader ] ; 3 uses
  %.2644.lcssa = phi ptr [ %.0642.lcssa, %._crit_edge1851 ], [ %scevgep2080, %.preheader.loopexit ], [ %.0642.lcssa, %.noexc712.preheader ]
  %.1.lcssa = phi i32 [ %.0641.lcssa, %._crit_edge1851 ], [ %i.apr, %.preheader.loopexit ], [ %i.anm, %.noexc712.preheader ] ; 2 uses
  %i.aps = icmp slt i32 %.1.lcssa, %i.ahq
  br i1 %i.aps, label %.noexc711.lr.ph, label %._crit_edge1913

.noexc711.lr.ph:                                  ; preds = %.preheader
  %i.apt = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !232
  %i.apu = load ptr, ptr %5, align 8, !tbaa !27, !noalias !232
  %i.apv = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !232
  %i.apw = load i64, ptr %i.t, align 8, !tbaa !28, !noalias !232 ; 2 uses
  %factor.op.mul1915 = mul i64 %i.apv, %i.apw
  %i.apx = sext i32 %i.apt to i64
  %i.apy = load i32, ptr %10, align 4, !tbaa !10
  %i.apz = mul nsw i32 %i.apy, %i.ahi
  %i.aqa = sext i32 %i.apz to i64
  %i.aqb = mul i64 %i.apw, %i.apx
  %i.aqc = mul i64 %i.aqb, %i.aqa
  %invariant.gep1917 = getelementptr i8, ptr %i.apu, i64 %i.aqc
  %i.aqd = load i32, ptr %11, align 4, !tbaa !10
  %i.aqe = mul nsw i32 %i.aqd, %i.ahj
  %i.aqf = sext i32 %i.aqe to i64
  %invariant.gep1918 = getelementptr i8, ptr %invariant.gep1917, i64 %i.aqf
  %i.aqg = load i32, ptr %12, align 4, !tbaa !10  ; 5 uses
  %i.aqh = icmp sgt i32 %i.aqg, 0
  br i1 %i.aqh, label %.noexc711.lr.ph.split.us, label %._crit_edge1913

.noexc711.lr.ph.split.us:                         ; preds = %.noexc711.lr.ph
  %i.aqi = load ptr, ptr %13, align 8, !tbaa !21  ; 3 uses
  %i.aqj = add nsw i32 %i.aqg, -1
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = shl nuw nsw i64 %i.aqk, 2
  %i.aqm = zext i32 %.1.lcssa to i64
  %wide.trip.count2092 = zext nneg i32 %i.aqg to i64 ; 2 uses
  %xtraiter2249 = and i64 %wide.trip.count2092, 1
  %i.aqn = icmp eq i32 %i.aqg, 1
  %unroll_iter2255 = and i64 %wide.trip.count2092, 2147483646
  %lcmp.mod2252.not = icmp eq i64 %xtraiter2249, 0
  %lcmp.mod2254 = trunc i32 %i.aqg to i1
  br label %.noexc711.us

.noexc711.us:                                     ; preds = %._crit_edge1908.us, %.noexc711.lr.ph.split.us
  %indvars.iv2094 = phi i64 [ %indvars.iv.next2095, %._crit_edge1908.us ], [ %i.aqm, %.noexc711.lr.ph.split.us ] ; 2 uses
  %.41911.us = phi ptr [ %scevgep2090, %._crit_edge1908.us ], [ %.2644.lcssa, %.noexc711.lr.ph.split.us ] ; 3 uses
  %i.aqo = phi <4 x i32> [ %.lcssa2245, %._crit_edge1908.us ], [ %.lcssa1622, %.noexc711.lr.ph.split.us ] ; 2 uses
  %.reass1916.us = mul i64 %factor.op.mul1915, %indvars.iv2094
  %gep1919.us = getelementptr i8, ptr %invariant.gep1918, i64 %.reass1916.us ; 3 uses
  br i1 %i.aqn, label %.epil.preheader2248, label %.noexc711.us.new

.noexc711.us.new:                                 ; preds = %.noexc711.us, %.noexc711.us.new
  %indvars.iv2087 = phi i64 [ %indvars.iv.next2088.1, %.noexc711.us.new ], [ 0, %.noexc711.us ] ; 3 uses
  %.51905.us = phi ptr [ %i.arq, %.noexc711.us.new ], [ %.41911.us, %.noexc711.us ] ; 3 uses
  %i.aqp = phi <4 x i32> [ %i.arp, %.noexc711.us.new ], [ %i.aqo, %.noexc711.us ]
  %niter2256 = phi i64 [ %niter2256.next.1, %.noexc711.us.new ], [ 0, %.noexc711.us ]
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %i.aqi, i64 %indvars.iv2087
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !10
  %i.aqs = sext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds i8, ptr %gep1919.us, i64 %i.aqs
  %i.aqu = load i8, ptr %i.aqt, align 1, !tbaa !29
  %i.aqv = sext i8 %i.aqu to i16
  %i.aqw = insertelement <8 x i16> poison, i16 %i.aqv, i64 0
  %i.aqx = shufflevector <8 x i16> %i.aqw, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.aqy = load <8 x i8>, ptr %.51905.us, align 1, !tbaa !29
  %i.aqz = sext <8 x i8> %i.aqy to <8 x i16>
  %i.ara = shufflevector <8 x i16> %i.aqz, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arb = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.aqx, <8 x i16> %i.ara, <4 x i32> %i.aqp)
  %i.arc = getelementptr inbounds nuw i8, ptr %.51905.us, i64 4
  %i.ard = getelementptr inbounds nuw [4 x i8], ptr %i.aqi, i64 %indvars.iv2087
  %i.are = getelementptr inbounds nuw i8, ptr %i.ard, i64 4
  %i.arf = load i32, ptr %i.are, align 4, !tbaa !10
  %i.arg = sext i32 %i.arf to i64
  %i.arh = getelementptr inbounds i8, ptr %gep1919.us, i64 %i.arg
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !29
  %i.arj = sext i8 %i.ari to i16
  %i.ark = insertelement <8 x i16> poison, i16 %i.arj, i64 0
  %i.arl = shufflevector <8 x i16> %i.ark, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.arm = load <8 x i8>, ptr %i.arc, align 1, !tbaa !29
  %i.arn = sext <8 x i8> %i.arm to <8 x i16>
  %i.aro = shufflevector <8 x i16> %i.arn, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.arp = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.arl, <8 x i16> %i.aro, <4 x i32> %i.arb) ; 3 uses
  %i.arq = getelementptr inbounds nuw i8, ptr %.51905.us, i64 8 ; 2 uses
  %indvars.iv.next2088.1 = add nuw nsw i64 %indvars.iv2087, 2 ; 2 uses
  %niter2256.next.1 = add i64 %niter2256, 2       ; 2 uses
  %niter2256.ncmp.1 = icmp eq i64 %niter2256.next.1, %unroll_iter2255
  br i1 %niter2256.ncmp.1, label %._crit_edge1908.us.unr-lcssa, label %.noexc711.us.new, !llvm.loop !217

._crit_edge1908.us.unr-lcssa:                     ; preds = %.noexc711.us.new
  br i1 %lcmp.mod2252.not, label %._crit_edge1908.us, label %.epil.preheader2248

.epil.preheader2248:                              ; preds = %._crit_edge1908.us.unr-lcssa, %.noexc711.us
  %indvars.iv2087.epil.init = phi i64 [ 0, %.noexc711.us ], [ %indvars.iv.next2088.1, %._crit_edge1908.us.unr-lcssa ]
  %.51905.us.epil.init = phi ptr [ %.41911.us, %.noexc711.us ], [ %i.arq, %._crit_edge1908.us.unr-lcssa ]
  %.epil.init2251 = phi <4 x i32> [ %i.aqo, %.noexc711.us ], [ %i.arp, %._crit_edge1908.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod2254)
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr %i.aqi, i64 %indvars.iv2087.epil.init
  %i.ars = load i32, ptr %i.arr, align 4, !tbaa !10
  %i.art = sext i32 %i.ars to i64
  %i.aru = getelementptr inbounds i8, ptr %gep1919.us, i64 %i.art
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !29
  %i.arw = sext i8 %i.arv to i16
  %i.arx = insertelement <8 x i16> poison, i16 %i.arw, i64 0
  %i.ary = shufflevector <8 x i16> %i.arx, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.arz = load <8 x i8>, ptr %.51905.us.epil.init, align 1, !tbaa !29
  %i.asa = sext <8 x i8> %i.arz to <8 x i16>
  %i.asb = shufflevector <8 x i16> %i.asa, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.asc = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.ary, <8 x i16> %i.asb, <4 x i32> %.epil.init2251)
  br label %._crit_edge1908.us

._crit_edge1908.us:                               ; preds = %._crit_edge1908.us.unr-lcssa, %.epil.preheader2248
  %.lcssa2245 = phi <4 x i32> [ %i.arp, %._crit_edge1908.us.unr-lcssa ], [ %i.asc, %.epil.preheader2248 ] ; 2 uses
  %scevgep2089 = getelementptr i8, ptr %.41911.us, i64 4
  %scevgep2090 = getelementptr i8, ptr %scevgep2089, i64 %i.aql
  %indvars.iv.next2095 = add nuw nsw i64 %indvars.iv2094, 1 ; 2 uses
  %i.asd = trunc nuw i64 %indvars.iv.next2095 to i32
  %i.ase = icmp sgt i32 %i.ahq, %i.asd
  br i1 %i.ase, label %.noexc711.us, label %._crit_edge1913, !llvm.loop !218

._crit_edge1913:                                  ; preds = %._crit_edge1908.us, %.noexc711.lr.ph, %.preheader
  %.lcssa1624 = phi <4 x i32> [ %.lcssa1622, %.preheader ], [ %.lcssa1622, %.noexc711.lr.ph ], [ %.lcssa2245, %._crit_edge1908.us ] ; 5 uses
  %i.asf = load i32, ptr %7, align 4, !tbaa !10   ; 2 uses
  %i.asg = icmp eq i32 %i.asf, 4
  br i1 %i.asg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge1913
  store <4 x i32> %.lcssa1624, ptr %.61922, align 16, !tbaa !29
  %i.ash = getelementptr inbounds nuw i8, ptr %.61922, i64 16
  %.pr1562 = load i32, ptr %7, align 4, !tbaa !10
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge1913
  %i.asi = phi i32 [ %.pr1562, %bb.q ], [ %i.asf, %._crit_edge1913 ]
  %.7 = phi ptr [ %i.ash, %bb.q ], [ %.61922, %._crit_edge1913 ] ; 6 uses
  %i.asj = icmp eq i32 %i.asi, 1
  br i1 %i.asj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.0.0.vec.extract = extractelement <4 x i32> %.lcssa1624, i64 0
  store i32 %.sroa.0.0.vec.extract, ptr %.7, align 4, !tbaa !10
  %.sroa.0.4.vec.extract = extractelement <4 x i32> %.lcssa1624, i64 1
  %i.ask = getelementptr inbounds nuw [4 x i8], ptr %.7, i64 %i.ag
  store i32 %.sroa.0.4.vec.extract, ptr %i.ask, align 4, !tbaa !10
  %.sroa.0.8.vec.extract = extractelement <4 x i32> %.lcssa1624, i64 2
  %i.asl = getelementptr inbounds nuw i8, ptr %.7, i64 %.idx
  store i32 %.sroa.0.8.vec.extract, ptr %i.asl, align 4, !tbaa !10
  %.sroa.0.12.vec.extract = extractelement <4 x i32> %.lcssa1624, i64 3
  %i.asm = getelementptr inbounds nuw i8, ptr %.7, i64 %.idx686
  store i32 %.sroa.0.12.vec.extract, ptr %i.asm, align 4, !tbaa !10
  %i.asn = getelementptr inbounds nuw i8, ptr %.7, i64 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.8 = phi ptr [ %i.asn, %bb.s ], [ %.7, %bb.r ]
  %i.aso = add nuw nsw i32 %.26671921, 1          ; 2 uses
  %exitcond2097.not = icmp eq i32 %i.aso, %i.ao
  br i1 %exitcond2097.not, label %._crit_edge1923, label %.noexc716, !llvm.loop !219

._crit_edge1923:                                  ; preds = %bb.t, %.preheader1571
  %i.asp = add nsw i32 %.01925, 1
  %i.asq = load i32, ptr %i.b, align 4, !tbaa !10
  %.not.not = icmp slt i32 %.01925, %i.asq
  br i1 %.not.not, label %.noexc, label %._crit_edge1926

._crit_edge1926:                                  ; preds = %._crit_edge1923, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge1926, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #4 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare !callback !32 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16>, <8 x i16>, <4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16>, <8 x i16>, <4 x i32>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.ssse3.phadd.d.128(<4 x i32>, <4 x i32>) #11

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4ncnn29conv3x3s1_winograd23_int8_xopERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4) local_unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  %i.h = alloca i32, align 4                      ; 12 uses
  %i.i = alloca i32, align 4                      ; 11 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 7 uses
  %5 = alloca %"class.ncnn::Mat", align 8         ; 19 uses
  %i.l = alloca i32, align 4                      ; 7 uses
  %6 = alloca %"class.ncnn::Mat", align 8         ; 15 uses
  %7 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %8 = alloca %"class.ncnn::Mat", align 8         ; 14 uses
  %9 = alloca %"class.ncnn::Mat", align 8         ; 12 uses
  %i.m = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  %i.n = tail call noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv()
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef i32 @_ZN4ncnn33conv3x3s1_winograd23_int8_avxvnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  br label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.c:                                             ; preds = %bb.a
  %i.p = tail call noundef i32 @_ZN4ncnn20cpu_support_x86_avx2Ev()
  %.not78.i = icmp eq i32 %i.p, 0
  br i1 %.not78.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noundef i32 @_ZN4ncnn30conv3x3s1_winograd23_int8_avx2ERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %4)
  br label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = load <2 x i32>, ptr %i.r, align 4, !tbaa !10
  %i.t = add nsw <2 x i32> %i.s, splat (i32 1)
  %i.u = sdiv <2 x i32> %i.t, splat (i32 2)       ; 2 uses
  %i.v = extractelement <2 x i32> %i.u, i64 0
  %i.w = extractelement <2 x i32> %i.u, i64 1
  %i.x = mul nsw i32 %i.w, %i.v                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.z = load i32, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !17
  %i.ac = mul nsw i32 %i.ab, %i.z                 ; 3 uses
  store i32 %i.ac, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.x, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !17
  %i.ah = mul nsw i32 %i.ag, %i.ae                ; 2 uses
  store i32 %i.ah, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %i.ac, i32 noundef %i.x, i32 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !10  ; 2 uses
  %i.aj = add i32 %i.ac, -1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.j, align 4, !tbaa !10
  %i.am = load i32, ptr %i.e, align 4, !tbaa !10
  %i.an = load i32, ptr %i.h, align 4, !tbaa !10  ; 3 uses
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = sdiv i32 %i.ap, %i.an                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.ar = load i32, ptr %i.f, align 4, !tbaa !10
  %i.as = load i32, ptr %i.i, align 4, !tbaa !10  ; 3 uses
  %i.at = add i32 %i.ar, -1
  %i.au = add i32 %i.at, %i.as
  %i.av = sdiv i32 %i.au, %i.as                   ; 2 uses
  store i32 %i.av, ptr %i.k, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.aw = mul nsw i32 %i.as, %i.an
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.aw, i32 noundef 16, i32 noundef %i.av, i32 noundef %i.aq, i64 noundef 2, ptr noundef %i.ay)
  %i.bg = load ptr, ptr %5, align 8, !tbaa !27
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit179.i

_ZNK4ncnn3Mat5emptyEv.exit179.i:                  ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !19
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !18
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %i.bj, %i.bl
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit179.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.bo = load i32, ptr %i.k, align 4, !tbaa !10
  %i.bp = mul nsw i32 %i.bo, %i.aq                ; 2 uses
  store i32 %i.bp, ptr %i.l, align 4, !tbaa !10
  %i.bq = icmp sgt i32 %3, 1
  %i.br = icmp slt i32 %i.bp, %3
  %or.cond.i = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !10
  %i.bt = shl nsw i32 %i.bs, 4
  %i.bu = load i32, ptr %i.i, align 4, !tbaa !10
  %i.bv = mul nsw i32 %i.bt, %i.bu
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.ca, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.by, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.bv, i64 noundef 2, ptr noundef %i.bw)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.h

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %bb.g
  %i.cb = load ptr, ptr %6, align 8, !tbaa !27
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit178.i

_ZNK4ncnn3Mat5emptyEv.exit178.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !19
  %i.ce = load i32, ptr %i.bz, align 8, !tbaa !18
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cd, %i.cf
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4ncnn3Mat5emptyEv.exit178.i
  %i.ci = load i32, ptr %i.l, align 4, !tbaa !10
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.noexc.lr.ph.i, label %._crit_edge.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %.noexc.i

bb.h:                                             ; preds = %bb.g
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.az

.noexc.i:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit101.i, %.noexc.lr.ph.i
  %.0205.i = phi i32 [ 0, %.noexc.lr.ph.i ], [ %i.el, %_ZN4ncnn3MatD2Ev.exit101.i ] ; 3 uses
  %i.cs = load i32, ptr %i.k, align 4, !tbaa !10  ; 2 uses
  %i.ct = sdiv i32 %.0205.i, %i.cs
  %i.cu = srem i32 %.0205.i, %i.cs
  %i.cv = load i32, ptr %i.h, align 4, !tbaa !10  ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.ct                ; 3 uses
  %i.cx = load i32, ptr %i.i, align 4, !tbaa !10  ; 2 uses
  %i.cy = mul nsw i32 %i.cx, %i.cu                ; 3 uses
  %i.cz = load i32, ptr %i.e, align 4, !tbaa !10
  %i.da = sub nsw i32 %i.cz, %i.cw
  %.sroa.speculated202.i = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.da) ; 2 uses
  %i.db = load i32, ptr %i.f, align 4, !tbaa !10
  %i.dc = sub nsw i32 %i.db, %i.cy
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.cx, i32 %i.dc) ; 2 uses
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.cw, i32 noundef %.sroa.speculated202.i, i32 noundef %i.cy, i32 noundef %.sroa.speculated.i, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !10
  %i.de = sdiv i32 %i.cw, %i.dd
  %i.df = load ptr, ptr %5, align 8, !tbaa !27, !noalias !238
  %i.dg = load i64, ptr %i.bf, align 8, !tbaa !19, !noalias !238
  %i.dh = sext i32 %i.de to i64
  %i.di = mul i64 %i.dg, %i.dh
  %i.dj = load i64, ptr %i.ba, align 8, !tbaa !28, !noalias !238 ; 3 uses
  %i.dk = mul i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dk
  %i.dm = load i32, ptr %i.bb, align 8, !tbaa !17, !noalias !238
  %i.dn = load ptr, ptr %i.bc, align 8, !tbaa !34, !noalias !238
  %i.do = load i32, ptr %i.i, align 4, !tbaa !10
  %i.dp = sdiv i32 %i.cy, %i.do
  %i.dq = sext i32 %i.dp to i64
  store ptr null, ptr %i.ck, align 8, !tbaa !35
  store i64 %i.dj, ptr %i.cl, align 8, !tbaa !28
  store i32 %i.dm, ptr %i.cm, align 8, !tbaa !17
  store ptr %i.dn, ptr %i.cn, align 8, !tbaa !34
  store i32 2, ptr %i.co, align 8, !tbaa !36
  %i.dr = load <4 x i32>, ptr %i.bd, align 4
  %i.ds = load i32, ptr %i.be, align 8, !tbaa !20, !noalias !238
  %i.dt = load i32, ptr %i.bd, align 4, !tbaa !16, !noalias !238
  %i.du = sext i32 %i.dt to i64
  %i.dv = sext i32 %i.ds to i64
  %i.dw = mul nsw i64 %i.dv, %i.du                ; 2 uses
  %i.dx = mul i64 %i.dj, %i.dw
  %i.dy = mul i64 %i.dx, %i.dq
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dy
  store ptr %i.dz, ptr %7, align 8, !tbaa !27
  %i.ea = shufflevector <4 x i32> %i.dr, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ea, ptr %i.cp, align 4, !tbaa !10
  store i64 %i.dw, ptr %i.cq, align 8, !tbaa !19, !alias.scope !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 16, ptr %i.a, align 4, !tbaa !10
  store i32 %.sroa.speculated202.i, ptr %i.b, align 4, !tbaa !10
  store i32 %.sroa.speculated.i, ptr %i.c, align 4, !tbaa !10
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 range(i32 1, -2147483648) %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %7, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %6, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 2 uses
  %.not.i104.i = icmp eq ptr %i.eb, null
  br i1 %.not.i104.i, label %_ZN4ncnn3MatD2Ev.exit101.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit101.i

bb.j:                                             ; preds = %bb.i
  %i.ee = load ptr, ptr %i.cn, align 8, !tbaa !34 ; 3 uses
  %.not3.i105.i = icmp eq ptr %i.ee, null
  %i.ef = load ptr, ptr %7, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i105.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ef)
          to label %_ZN4ncnn3MatD2Ev.exit101.i unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i173.i = icmp eq ptr %i.ef, null
  br i1 %.not.i173.i, label %_ZN4ncnn3MatD2Ev.exit101.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ef) #4
  br label %_ZN4ncnn3MatD2Ev.exit101.i

bb.n:                                             ; preds = %bb.k
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit101.i:                       ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  %i.el = add nuw nsw i32 %.0205.i, 1             ; 2 uses
  %i.em = load i32, ptr %i.l, align 4, !tbaa !10
  %i.en = icmp slt i32 %i.el, %i.em
  br i1 %i.en, label %.noexc.i, label %._crit_edge.i, !llvm.loop !237

._crit_edge.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit101.i, %.preheader.i
  %i.eo = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %.not.i112.i = icmp eq ptr %i.eo, null
  br i1 %.not.i112.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit99.i

bb.p:                                             ; preds = %bb.o
  %i.er = load ptr, ptr %i.by, align 8, !tbaa !34 ; 3 uses
  %.not3.i113.i = icmp eq ptr %i.er, null
  %i.es = load ptr, ptr %6, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i113.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.es)
          to label %_ZN4ncnn3MatD2Ev.exit99.i unwind label %bb.t, !inline_history !0

bb.r:                                             ; preds = %bb.p
  %.not.i169.i = icmp eq ptr %i.es, null
  br i1 %.not.i169.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.es) #4
  br label %_ZN4ncnn3MatD2Ev.exit99.i

bb.t:                                             ; preds = %bb.q
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit99.i:                        ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.ad

bb.u:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.ey = load i32, ptr %i.h, align 4, !tbaa !10
  %i.ez = shl nsw i32 %i.ey, 4
  %i.fa = load i32, ptr %i.i, align 4, !tbaa !10
  %i.fb = mul nsw i32 %i.ez, %i.fa
  %i.fc = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i64 0, ptr %i.fg, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fe, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.fb, i32 noundef 1, i32 noundef %3, i64 noundef 2, ptr noundef %i.fc)
          to label %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i unwind label %bb.v

_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i:     ; preds = %bb.u
  %i.fh = load ptr, ptr %8, align 8, !tbaa !27
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.critedge90.i, label %_ZNK4ncnn3Mat5emptyEv.exit177.i

_ZNK4ncnn3Mat5emptyEv.exit177.i:                  ; preds = %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i
  %i.fj = load i64, ptr %i.fg, align 8, !tbaa !19
  %i.fk = load i32, ptr %i.ff, align 8, !tbaa !18
  %i.fl = sext i32 %i.fk to i64
  %i.fm = mul i64 %i.fj, %i.fl
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %.critedge90.i, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.az

bb.w:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit177.i
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.l, ptr nonnull %i.k, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %8, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %5)
  %i.fp = load ptr, ptr %i.fd, align 8, !tbaa !35 ; 2 uses
  %.not.i124.i = icmp eq ptr %i.fp, null
  br i1 %.not.i124.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fq = atomicrmw add ptr %i.fp, i32 -1 acq_rel, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit96.i

bb.y:                                             ; preds = %bb.x
  %i.fs = load ptr, ptr %i.fe, align 8, !tbaa !34 ; 3 uses
  %.not3.i125.i = icmp eq ptr %i.fs, null
  %i.ft = load ptr, ptr %8, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i125.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !38
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef %i.ft)
          to label %_ZN4ncnn3MatD2Ev.exit96.i unwind label %bb.ac, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i163.i = icmp eq ptr %i.ft, null
  br i1 %.not.i163.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.ft) #4
  br label %_ZN4ncnn3MatD2Ev.exit96.i

bb.ac:                                            ; preds = %bb.z
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit96.i:                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit96.i, %_ZN4ncnn3MatD2Ev.exit99.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  %i.fz = load i32, ptr %i.h, align 4, !tbaa !10
  %i.ga = shl nsw i32 %i.fz, 4
  %i.gb = load i32, ptr %i.g, align 4, !tbaa !10
  %i.gc = mul nsw i32 %i.ga, %i.gb
  %i.gd = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gf, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.gc, i32 noundef 1, i32 noundef %3, i64 noundef 4, ptr noundef %i.gd)
          to label %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i unwind label %bb.ae

_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i:        ; preds = %bb.ad
  %i.gi = load ptr, ptr %9, align 8, !tbaa !27
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i
  %i.gk = load i64, ptr %i.gh, align 8, !tbaa !19
  %i.gl = load i32, ptr %i.gg, align 8, !tbaa !18
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul i64 %i.gk, %i.gm
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %bb.az

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1, ptr nonnull %i.j, ptr nonnull %i.g, ptr nonnull %9, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.h, ptr nonnull %i.f, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %5, ptr nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i

_ZNK4ncnn3Mat5emptyEv.exit.thread.i:              ; preds = %bb.af, %_ZNK4ncnn3Mat5emptyEv.exit.i, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i
  %.273.i = phi i32 [ 0, %bb.af ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.i ], [ -100, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i ]
  %i.gq = load ptr, ptr %i.ge, align 8, !tbaa !35 ; 2 uses
  %.not.i132.i = icmp eq ptr %i.gq, null
  br i1 %.not.i132.i, label %_ZN4ncnn3MatD2Ev.exit94.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  %i.gr = atomicrmw add ptr %i.gq, i32 -1 acq_rel, align 4
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit94.i

bb.ah:                                            ; preds = %bb.ag
  %i.gt = load ptr, ptr %i.gf, align 8, !tbaa !34 ; 3 uses
  %.not3.i133.i = icmp eq ptr %i.gt, null
  %i.gu = load ptr, ptr %9, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i133.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !38
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gu)
          to label %_ZN4ncnn3MatD2Ev.exit94.i unwind label %bb.al, !inline_history !0

bb.aj:                                            ; preds = %bb.ah
  %.not.i159.i = icmp eq ptr %i.gu, null
  br i1 %.not.i159.i, label %_ZN4ncnn3MatD2Ev.exit94.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.gu) #4
  br label %_ZN4ncnn3MatD2Ev.exit94.i

bb.al:                                            ; preds = %bb.ai
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit94.i:                        ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %bb.ay

.critedge.i:                                      ; preds = %_ZNK4ncnn3Mat5emptyEv.exit178.i, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.ha = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %.not.i144.i = icmp eq ptr %i.ha, null
  br i1 %.not.i144.i, label %_ZN4ncnn3MatD2Ev.exit91.i, label %bb.am

bb.am:                                            ; preds = %.critedge.i
  %i.hb = atomicrmw add ptr %i.ha, i32 -1 acq_rel, align 4
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit91.i

bb.an:                                            ; preds = %bb.am
  %i.hd = load ptr, ptr %i.by, align 8, !tbaa !34 ; 3 uses
  %.not3.i145.i = icmp eq ptr %i.hd, null
  %i.he = load ptr, ptr %6, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i145.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !38
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef %i.he)
          to label %_ZN4ncnn3MatD2Ev.exit91.i unwind label %bb.ar, !inline_history !0

bb.ap:                                            ; preds = %bb.an
  %.not.i153.i = icmp eq ptr %i.he, null
  br i1 %.not.i153.i, label %_ZN4ncnn3MatD2Ev.exit91.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.he) #4
  br label %_ZN4ncnn3MatD2Ev.exit91.i

bb.ar:                                            ; preds = %bb.ao
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit91.i:                        ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.ay

.critedge90.i:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit177.i, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i
  %i.hk = load ptr, ptr %i.fd, align 8, !tbaa !35 ; 2 uses
  %.not.i148.i = icmp eq ptr %i.hk, null
  br i1 %.not.i148.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %.critedge90.i
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit.i

bb.at:                                            ; preds = %bb.as
  %i.hn = load ptr, ptr %i.fe, align 8, !tbaa !34 ; 3 uses
  %.not3.i149.i = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %8, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i149.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !38
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.ax, !inline_history !0

bb.av:                                            ; preds = %bb.at
  %.not.i152.i = icmp eq ptr %i.ho, null
  br i1 %.not.i152.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.ho) #4
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.ax:                                            ; preds = %bb.au
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %.critedge90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit91.i, %_ZN4ncnn3MatD2Ev.exit94.i
  %.374.i = phi i32 [ %.273.i, %_ZN4ncnn3MatD2Ev.exit94.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit91.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  br label %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i

bb.az:                                            ; preds = %bb.ae, %bb.v, %bb.h
  %.pn85.pn.i = phi { ptr, i32 } [ %i.gp, %bb.ae ], [ %i.cr, %bb.h ], [ %i.fo, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %i.hu = load ptr, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %.not.i140.i = icmp eq ptr %i.hu, null
  br i1 %.not.i140.i, label %_ZN4ncnn3MatD2Ev.exit92.i, label %bb.bg

_ZNK4ncnn3Mat5emptyEv.exit179.thread.i:           ; preds = %bb.ay, %_ZNK4ncnn3Mat5emptyEv.exit179.i, %bb.e
  %.475.i = phi i32 [ %.374.i, %bb.ay ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit179.i ], [ -100, %bb.e ]
  %i.hv = load ptr, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.hv, null
  br i1 %.not.i136.i, label %_ZN4ncnn3MatD2Ev.exit93.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i
  %i.hw = atomicrmw add ptr %i.hv, i32 -1 acq_rel, align 4
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit93.i

bb.bb:                                            ; preds = %bb.ba
  %i.hy = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 3 uses
  %.not3.i137.i = icmp eq ptr %i.hy, null
  %i.hz = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i137.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !38
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.hz)
          to label %_ZN4ncnn3MatD2Ev.exit93.i unwind label %bb.bf, !inline_history !0

bb.bd:                                            ; preds = %bb.bb
  %.not.i157.i = icmp eq ptr %i.hz, null
  br i1 %.not.i157.i, label %_ZN4ncnn3MatD2Ev.exit93.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.hz) #4
  br label %_ZN4ncnn3MatD2Ev.exit93.i

bb.bf:                                            ; preds = %bb.bc
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit93.i:                        ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.bg:                                            ; preds = %bb.az
  %i.if = atomicrmw add ptr %i.hu, i32 -1 acq_rel, align 4
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit92.i

bb.bh:                                            ; preds = %bb.bg
  %i.ih = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 3 uses
  %.not3.i141.i = icmp eq ptr %i.ih, null
  %i.ii = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i141.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !38
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef %i.ii)
          to label %_ZN4ncnn3MatD2Ev.exit92.i unwind label %bb.bl, !inline_history !0

bb.bj:                                            ; preds = %bb.bh
  %.not.i155.i = icmp eq ptr %i.ii, null
  br i1 %.not.i155.i, label %_ZN4ncnn3MatD2Ev.exit92.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ii) #4
  br label %_ZN4ncnn3MatD2Ev.exit92.i

bb.bl:                                            ; preds = %bb.bi
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit92.i:                        ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  resume { ptr, i32 } %.pn85.pn.i

_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit: ; preds = %bb.b, %bb.d, %_ZN4ncnn3MatD2Ev.exit93.i
  %.576.i = phi i32 [ %i.o, %bb.b ], [ %i.q, %bb.d ], [ %.475.i, %_ZN4ncnn3MatD2Ev.exit93.i ]
  ret i32 %.576.i
}

declare noundef i32 @_ZN4ncnn24cpu_support_x86_avx_vnniEv() local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn33conv3x3s1_winograd23_int8_avxvnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn30conv3x3s1_winograd23_int8_avx2ERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4ncnnL25get_optimal_tile_mnk_int8EiiiRiS0_S0_i(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5, i32 noundef %6) unnamed_addr #12 {
bb.a:
  %i.a = tail call noundef i32 @_ZN4ncnn25get_cpu_level2_cache_sizeEv()
  %i.b = ashr i32 %i.a, 1
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = icmp eq i32 %6, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i32 @_ZN4ncnn26get_physical_big_cpu_countEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.e, %bb.b ], [ %6, %bb.a ]    ; 3 uses
  %i.f = uitofp fast i64 %i.c to float            ; 2 uses
  %i.g = fmul fast float %i.f, f0x3EAAAAAB
  %i.h = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.g)
  %i.i = fptosi float %i.h to i32
  %i.j = and i32 %i.i, 2147483644
  %.sroa.speculated86 = tail call i32 @llvm.umax.i32(i32 %i.j, i32 4)
  store i32 %.sroa.speculated86, ptr %3, align 4, !tbaa !10
  %i.k = tail call noundef i32 @_ZN4ncnn22get_physical_cpu_countEv()
  %.sroa.speculated82 = tail call i32 @llvm.smin.i32(i32 %i.k, i32 %.0)
  %i.l = load i32, ptr %3, align 4, !tbaa !10
  %i.m = mul nsw i32 %i.l, %.sroa.speculated82    ; 3 uses
  %i.n = add i32 %0, -1                           ; 2 uses
  %i.o = add i32 %i.n, %i.m
  %i.p = sdiv i32 %i.o, %i.m                      ; 2 uses
  %i.q = add i32 %i.n, %i.p
  %i.r = sdiv i32 %i.q, %i.p
  %i.s = add nsw i32 %i.r, 3
  %i.t = sdiv i32 %i.s, 4
  %i.u = shl nsw i32 %i.t, 2
  %.sroa.speculated78 = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.m) ; 3 uses
  %i.v = icmp sgt i32 %.0, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = sdiv i32 %.sroa.speculated78, %.0
  %.sroa.speculated68 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 1)
  %i.x = add nuw nsw i32 %.sroa.speculated68, 3
  %i.y = and i32 %i.x, 2147483644
  %.sroa.speculated74 = tail call i32 @llvm.smin.i32(i32 %i.y, i32 %.sroa.speculated78)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %.sroa.speculated74, %bb.d ], [ %.sroa.speculated78, %bb.c ] ; 2 uses
  store i32 %storemerge, ptr %3, align 4, !tbaa !10
  %i.z = tail call fast noundef nofpclass(nan inf) float @llvm.sqrt.f32(float nofpclass(nan inf) %i.f)
  %i.aa = sitofp fast i32 %storemerge to float
  %i.ab = fsub fast float %i.z, %i.aa
  %i.ac = fptosi float %i.ab to i32
  %i.ad = sdiv i32 %i.ac, 4
  %i.ae = shl nsw i32 %i.ad, 2
  %.sroa.speculated62 = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 4) ; 3 uses
  %i.af = add i32 %2, -1                          ; 2 uses
  %i.ag = add i32 %i.af, %.sroa.speculated62
  %i.ah = sdiv i32 %i.ag, %.sroa.speculated62     ; 2 uses
  %i.ai = add i32 %i.af, %i.ah
  %i.aj = sdiv i32 %i.ai, %i.ah
  %i.ak = add nsw i32 %i.aj, 3
  %i.al = sdiv i32 %i.ak, 4
  %i.am = shl nsw i32 %i.al, 2
  %.sroa.speculated58 = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %.sroa.speculated62) ; 3 uses
  store i32 %.sroa.speculated58, ptr %5, align 4, !tbaa !10
  %i.an = icmp sgt i32 %1, 0
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.ap = mul nsw i32 %i.ao, %.sroa.speculated58
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sub nsw i64 %i.c, %i.aq
  %i.as = shl nsw i32 %i.ao, 1
  %i.at = add nsw i32 %i.as, %.sroa.speculated58
  %i.au = sext i32 %i.at to i64
  %i.av = udiv i64 %i.ar, %i.au
  %i.aw = trunc i64 %i.av to i32
  %i.ax = sdiv i32 %i.aw, 4
  %i.ay = shl nsw i32 %i.ax, 2
  %.sroa.speculated52 = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 4) ; 3 uses
  %i.az = add nsw i32 %1, -1                      ; 2 uses
  %i.ba = add nuw i32 %i.az, %.sroa.speculated52
  %i.bb = udiv i32 %i.ba, %.sroa.speculated52     ; 2 uses
  %i.bc = add nuw i32 %i.az, %i.bb
  %i.bd = udiv i32 %i.bc, %i.bb
  %i.be = add nuw nsw i32 %i.bd, 3
  %i.bf = and i32 %i.be, -4
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.bf, i32 %.sroa.speculated52)
  store i32 %.sroa.speculated, ptr %4, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 1, -2147483648) %6) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %i.a, align 4, !tbaa !10
  store i32 %3, ptr %i.b, align 4, !tbaa !10
  store i32 %4, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !16   ; 2 uses
  store i32 %i.m, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !20
  store i32 %i.o, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !17   ; 2 uses
  store i32 %i.q, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !19
  %i.t = sext i32 %i.q to i64
  %i.u = mul i64 %i.s, %i.t
  store i64 %i.u, ptr %i.g, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.v = add nsw i32 %i.m, -1
  %i.w = sdiv i32 %i.v, 2
  store i32 %i.w, ptr %i.h, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  store i32 0, ptr %i.j, align 4, !tbaa !10
  %i.x = sdiv i32 %5, 8
  store i32 %i.x, ptr %i.i, align 4, !tbaa !10
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.g, ptr nonnull %1)
  %i.y = load i32, ptr %i.i, align 4, !tbaa !10
  %i.z = shl nsw i32 %i.y, 3
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !10
  %i.ab = add nsw i32 %i.aa, %i.z                 ; 5 uses
  store i32 %i.ab, ptr %i.j, align 4, !tbaa !10
  %i.ac = sub nsw i32 %5, %i.ab                   ; 2 uses
  %i.ad = sdiv i32 %i.ac, 2                       ; 3 uses
  store i32 %i.ad, ptr %i.i, align 4, !tbaa !10
  %i.ae = icmp sgt i32 %i.ac, 1
  br i1 %i.ae, label %.lr.ph, label %._crit_edge248

.lr.ph:                                           ; preds = %bb.a
  %i.af = load i32, ptr %i.b, align 4, !tbaa !10  ; 7 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %i.ah = load i32, ptr %i.h, align 4             ; 2 uses
  %i.ai = load i32, ptr %i.d, align 4
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %factor.op.mul249 = shl i32 %i.af, 4
  %i.ak = shl nsw i32 %i.af, 1
  %i.al = sext i32 %i.ak to i64
  %i.am = shl nsw i32 %i.af, 2
  %i.an = sext i32 %i.am to i64
  %i.ao = mul nsw i32 %i.af, 6
  %i.ap = sext i32 %i.ao to i64
  %i.aq = shl nsw i32 %i.af, 3
  %i.ar = sext i32 %i.aq to i64                   ; 12 uses
  br i1 %i.ag, label %.lr.ph.split.us, label %._crit_edge248

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.as = load i32, ptr %i.e, align 4             ; 2 uses
  %i.at = load i32, ptr %i.c, align 4
  %i.au = load i32, ptr %i.a, align 4
end_hunk_2
begin_hunk_3_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.j, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 1, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !10
  %i.k = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !10
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !10
  %i.n = load i32, ptr %i.d, align 4, !tbaa !10   ; 2 uses
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
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !10
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !10
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !256)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !16, !noalias !256 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !20, !noalias !256 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !42, !noalias !256
  %i.bi = load ptr, ptr %8, align 8, !tbaa !27, !noalias !256
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !256
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !28, !noalias !256 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !17, !noalias !256
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !34, !noalias !256
  store ptr %i.bo, ptr %11, align 8, !tbaa !27
  store ptr null, ptr %i.v, align 8, !tbaa !35
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !28
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !17
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !34
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !16
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !20
  store i32 1, ptr %i.ac, align 4, !tbaa !42
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !18
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !19
  %i.by = load i32, ptr %i.af, align 8, !tbaa !36, !noalias !256 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !36, !alias.scope !256
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !19, !alias.scope !256
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd23_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.cb = load i32, ptr %4, align 4, !tbaa !10
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !27, !noalias !257
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !19, !noalias !257
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !28, !noalias !257 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !17, !noalias !257
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !34, !noalias !257
  %i.cm = load i32, ptr %5, align 4, !tbaa !10
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !35
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !28
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !17
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !34
  store i32 2, ptr %i.aq, align 8, !tbaa !36
  %i.cp = load <4 x i32>, ptr %i.ag, align 4
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !20, !noalias !257
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !16, !noalias !257
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !27
  %i.cy = shufflevector <4 x i32> %i.cp, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cy, ptr %i.ar, align 4, !tbaa !10
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !19, !alias.scope !258
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cz = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 16, ptr %i.a, align 4, !tbaa !10
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !10
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !10
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cz, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.da = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i38 = icmp eq ptr %i.da, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.db = atomicrmw add ptr %i.da, i32 -1 acq_rel, align 4
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.dd = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.dd, null
  %i.de = load ptr, ptr %12, align 8, !tbaa !27   ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.de)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.de, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.de) #4
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.dk = load ptr, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %.not.i42 = icmp eq ptr %i.dk, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dn = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %.not3.i43 = icmp eq ptr %i.dn, null
  %i.do = load ptr, ptr %11, align 8, !tbaa !27   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef %i.do)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !0

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.do, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.do) #4
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.du = add nsw i32 %.069, 1
  %i.dv = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.not = icmp slt i32 %.069, %i.dv
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
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #25
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
  %i.e = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.ac

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.h = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !10
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 2 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !10
  %i.k = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
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
  %.045152 = phi i32 [ %i.k, %.lr.ph154 ], [ %i.bn, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.as = load i32, ptr %3, align 4, !tbaa !10
  %i.at = mul nsw i32 %i.as, %.045152             ; 4 uses
  %i.au = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.ad

.noexc46:                                         ; preds = %bb.c
  %i.av = load ptr, ptr %4, align 8, !tbaa !27, !noalias !283
  %i.aw = load i64, ptr %i.l, align 8, !tbaa !19, !noalias !283
  %i.ax = sext i32 %i.au to i64
  %i.ay = mul i64 %i.aw, %i.ax
  %i.az = load i64, ptr %i.m, align 8, !tbaa !28, !noalias !283
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %5, align 4, !tbaa !10
  %i.bd = sub nsw i32 %i.bc, %i.at
  %i.be = load i32, ptr %3, align 4, !tbaa !10
  %.sroa.speculated120 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bd) ; 8 uses
  %i.bf = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.bh = icmp sgt i32 %.sroa.speculated120, 3
  %i.bi = and i32 %.sroa.speculated120, 2147483644
  %i.bj = zext nneg i32 %.sroa.speculated120 to i64
  %i.bk = add nsw i32 %.sroa.speculated120, -2
  %i.bl = sext i32 %.sroa.speculated120 to i64    ; 2 uses
  %i.bm = sext i32 %i.at to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.bl, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !10
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.bn = add nsw i32 %.045152, 1
  %i.bo = load i32, ptr %i.b, align 4, !tbaa !10
  %.not.not = icmp slt i32 %.045152, %i.bo
  br i1 %.not.not, label %bb.c, label %._crit_edge155

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.bp = phi i32 [ %.pre, %.lr.ph ], [ %i.tl, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.bq = phi i32 [ %i.bf, %.lr.ph ], [ %i.tn, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044150 = phi i32 [ 0, %.lr.ph ], [ %i.tm, %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.br = sub nsw i32 %i.bq, %.044150
  %.sroa.speculated116 = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.br) ; 19 uses
  %i.bs = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre156 = load i32, ptr %9, align 4, !tbaa !10
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.bu = load i32, ptr %i.an, align 4, !tbaa !16 ; 7 uses
  %i.bv = load i32, ptr %i.ao, align 8, !tbaa !20 ; 7 uses
  %i.bw = load i32, ptr %i.ap, align 8, !tbaa !17 ; 6 uses
  %i.bx = load i64, ptr %i.aq, align 8, !tbaa !19
  %i.by = sext i32 %i.bw to i64
  %i.bz = mul i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = add nsw i32 %i.bu, 1
  %i.cb = sdiv i32 %i.ca, 2                       ; 6 uses
  %factor.op.mul381.i = shl i32 %.sroa.speculated116, 4 ; 4 uses
  br i1 %i.bh, label %.lr.ph384.i, label %.preheader372.i

.lr.ph384.i:                                      ; preds = %._crit_edge
  %i.cc = icmp sgt i32 %.sroa.speculated116, 0
  %i.cd = shl nuw nsw i32 %.sroa.speculated116, 2
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = shl nuw nsw i32 %.sroa.speculated116, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = mul nuw nsw i32 %.sroa.speculated116, 12
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = zext nneg i32 %factor.op.mul381.i to i64 ; 12 uses
  %.idx.i = shl i64 %i.bz, 3                      ; 2 uses
  %.idx300.i = mul i64 %i.bz, 12                  ; 2 uses
  %i.ck = mul nsw i32 %i.bw, %i.bu
  %i.cl = sext i32 %i.ck to i64
  br i1 %i.cc, label %.lr.ph.us.preheader.i, label %.preheader372.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph384.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated116 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv435.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next436.i, %._crit_edge.us.i ] ; 2 uses
  %i.cm = trunc nuw nsw i64 %indvars.iv435.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul381.i, %i.cm
  %i.cn = sext i32 %factor.op.mul.reass.us.i to i64
  %i.co = add i32 %i.at, %i.cm
  %i.cp = sdiv i32 %i.co, %i.bw
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.cn
  br label %_ZN4ncnn3MatD2Ev.exit304.us.i

_ZN4ncnn3MatD2Ev.exit304.us.i:                    ; preds = %bb.q, %.lr.ph.us.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %.idx494.i = shl nuw nsw i64 %indvars.iv.i, 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.idx494.i ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ce ; 2 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.cg ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ci ; 2 uses
  %i.cw = load <4 x i32>, ptr %i.ct, align 16, !tbaa !29 ; 2 uses
  %i.cx = load <4 x i32>, ptr %i.cu, align 16, !tbaa !29 ; 2 uses
  %i.cy = load <4 x i32>, ptr %i.cv, align 16, !tbaa !29
  %i.cz = sub <4 x i32> %i.cw, %i.cx
  %i.da = add <4 x i32> %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %i.cj ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.cj ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %i.cj ; 2 uses
  %i.de = load <4 x i32>, ptr %i.db, align 16, !tbaa !29 ; 2 uses
  %i.df = load <4 x i32>, ptr %i.dc, align 16, !tbaa !29 ; 2 uses
  %i.dg = load <4 x i32>, ptr %i.dd, align 16, !tbaa !29
  %i.dh = sub <4 x i32> %i.de, %i.df
  %i.di = add <4 x i32> %i.dh, %i.dg              ; 2 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.cj ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.cj ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.cj ; 2 uses
  %i.dm = load <4 x i32>, ptr %i.dj, align 16, !tbaa !29 ; 2 uses
  %i.dn = load <4 x i32>, ptr %i.dk, align 16, !tbaa !29 ; 2 uses
  %i.do = load <4 x i32>, ptr %i.dl, align 16, !tbaa !29
  %i.dp = sub <4 x i32> %i.dm, %i.dn
  %i.dq = add <4 x i32> %i.dp, %i.do              ; 2 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.cj
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %i.cj
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.cj
end_hunk_3
begin_hunk_4_@_ZN4ncnnL25conv3x3s1_winograd23_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.1:bb.a
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %i.np
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %i.np
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.pb, i64 %i.np
  %i.po = load i32, ptr %i.pk, align 4, !tbaa !10
  %i.pp = load i32, ptr %i.pl, align 4, !tbaa !10 ; 2 uses
  %i.pq = load i32, ptr %i.pm, align 4, !tbaa !10 ; 2 uses
  %i.pr = load i32, ptr %i.pn, align 4, !tbaa !10
  %i.ps = trunc i64 %indvars.iv463.i to i32
  %i.pt = add i32 %.044150, %i.ps                 ; 2 uses
  %i.pu = sdiv i32 %i.pt, %i.cb
  %i.pv = srem i32 %i.pt, %i.cb
  %i.pw = load i32, ptr %i.an, align 4, !tbaa !16, !noalias !286
  %i.px = sext i32 %i.pw to i64
  %i.py = shl nsw i32 %i.pu, 1                    ; 4 uses
  %i.pz = sext i32 %i.py to i64
  %i.qa = mul i64 %i.nt, %i.pz
  %i.qb = mul i64 %i.qa, %i.px
  %i.qc = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.qb
  %i.qd = shl nsw i32 %i.pv, 1                    ; 2 uses
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds [4 x i8], ptr %i.qc, i64 %i.qe ; 7 uses
  %i.qg = or disjoint i32 %i.qd, 1
  %i.qh = icmp slt i32 %i.qg, %i.bu
  %.fr.us.i = freeze i1 %i.qh
  %.not.us.us.i = icmp slt i32 %i.py, %i.bv       ; 2 uses
  br i1 %.fr.us.i, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i, label %_ZN4ncnn3MatD2Ev.exit.split.us415.preheader.i

_ZN4ncnn3MatD2Ev.exit.split.us415.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit.split.us415.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i:    ; preds = %_ZN4ncnn3MatD2Ev.exit.us.i
  br i1 %.not.us.us.i, label %bb.aa, label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

bb.y:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us415.preheader.i
  %i.qi = add nsw i32 %i.ou, %i.oi
  %i.qj = add nsw i32 %i.qi, %i.pg
  %i.qk = ashr i32 %i.qj, 2
  store i32 %i.qk, ptr %i.qf, align 4, !tbaa !10
  %i.ql = getelementptr inbounds [4 x i8], ptr %i.qf, i64 %i.nq
  br label %_ZN4ncnn3MatD2Ev.exit.split.us415.1.i

_ZN4ncnn3MatD2Ev.exit.split.us415.1.i:            ; preds = %bb.y, %_ZN4ncnn3MatD2Ev.exit.split.us415.preheader.i
  %.1.us419.i = phi ptr [ %i.qf, %_ZN4ncnn3MatD2Ev.exit.split.us415.preheader.i ], [ %i.ql, %bb.y ]
  %i.qm = or disjoint i32 %i.py, 1
  %.not.us418.1.i = icmp slt i32 %i.qm, %i.bv
  br i1 %.not.us418.1.i, label %bb.z, label %.split.us420.i

bb.z:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us415.1.i
  %i.qn = add nsw i32 %i.ox, %i.ol
  %i.qo = add nsw i32 %i.qn, %i.pj
  %i.qp = ashr i32 %i.qo, 2
  store i32 %i.qp, ptr %.1.us419.i, align 4, !tbaa !10
  br label %.split.us420.i

bb.aa:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %i.qq = add nsw i32 %i.ou, %i.oi
  %i.qr = add nsw i32 %i.qq, %i.pg
  %i.qs = ashr i32 %i.qr, 2
  store i32 %i.qs, ptr %i.qf, align 4, !tbaa !10
  %i.qt = sub i32 %i.ou, %i.pg
  %i.qu = add i32 %i.qt, %i.po
  %i.qv = add i32 %i.qu, %i.pp
  %i.qw = add i32 %i.qv, %i.pq
  %i.qx = ashr i32 %i.qw, 2
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qf, i64 4
  store i32 %i.qx, ptr %i.qy, align 4, !tbaa !10
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qf, i64 %i.nq
  br label %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i

_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i:            ; preds = %bb.aa, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i
  %.1.us.us.i = phi ptr [ %i.qf, %_ZN4ncnn3MatD2Ev.exit.split.us.us.preheader.i ], [ %i.qz, %bb.aa ] ; 2 uses
  %i.ra = or disjoint i32 %i.py, 1
  %.not.us.us.1.i = icmp slt i32 %i.ra, %i.bv
  br i1 %.not.us.us.1.i, label %bb.ab, label %.split.us420.i

bb.ab:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i
  %i.rb = add nsw i32 %i.ox, %i.ol
  %i.rc = add nsw i32 %i.rb, %i.pj
  %i.rd = ashr i32 %i.rc, 2
  store i32 %i.rd, ptr %.1.us.us.i, align 4, !tbaa !10
  %i.re = add i32 %i.ox, %i.pp
  %i.rf = add i32 %i.pj, %i.pq
  %i.rg = sub i32 %i.re, %i.rf
  %i.rh = add i32 %i.rg, %i.pr
  %i.ri = ashr i32 %i.rh, 2
  %i.rj = getelementptr inbounds nuw i8, ptr %.1.us.us.i, i64 4
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !10
  br label %.split.us420.i

.split.us420.i:                                   ; preds = %bb.ab, %_ZN4ncnn3MatD2Ev.exit.split.us.us.1.i, %bb.z, %_ZN4ncnn3MatD2Ev.exit.split.us415.1.i
  %indvars.iv.next464.i = add nuw nsw i64 %indvars.iv463.i, 1 ; 2 uses
  %exitcond467.not.i = icmp eq i64 %indvars.iv.next464.i, %wide.trip.count466.i
  br i1 %exitcond467.not.i, label %._crit_edge.us422.i, label %_ZN4ncnn3MatD2Ev.exit.us.i, !llvm.loop !271

._crit_edge.us422.i:                              ; preds = %.split.us420.i
  %indvars.iv.next469.i = add nuw nsw i64 %indvars.iv468.i, 1 ; 2 uses
  %exitcond472.not.i = icmp eq i64 %indvars.iv.next469.i, %i.bl
  br i1 %exitcond472.not.i, label %_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us421.i, !llvm.loop !272

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.rk = phi i32 [ %i.th, %.noexc52 ], [ %.pre156, %.noexc52.preheader ] ; 3 uses
  %i.rl = phi i32 [ %i.tj, %.noexc52 ], [ %i.bs, %.noexc52.preheader ] ; 2 uses
  %.0149 = phi i32 [ %i.ti, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.rm = sub nsw i32 %i.rl, %.0149
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.rk, i32 %i.rm)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.rn = load i32, ptr %3, align 4, !tbaa !10
  %i.ro = sdiv i32 %i.at, %i.rn
  %i.rp = load ptr, ptr %10, align 8, !tbaa !27, !noalias !287
  %i.rq = load i64, ptr %i.p, align 8, !tbaa !19, !noalias !287
  %i.rr = sext i32 %i.ro to i64
  %i.rs = mul i64 %i.rq, %i.rr
  %i.rt = load i64, ptr %i.q, align 8, !tbaa !28, !noalias !287 ; 3 uses
  %i.ru = mul i64 %i.rs, %i.rt
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.ru
  %i.rw = load i32, ptr %i.r, align 8, !tbaa !17, !noalias !287
  %i.rx = load ptr, ptr %i.s, align 8, !tbaa !34, !noalias !287
  %i.ry = sdiv i32 %.0149, %i.rk
  %i.rz = sext i32 %i.ry to i64                   ; 2 uses
  store ptr null, ptr %i.t, align 8, !tbaa !35
  store i64 %i.rt, ptr %i.u, align 8, !tbaa !28
  store i32 %i.rw, ptr %i.v, align 8, !tbaa !17
  store ptr %i.rx, ptr %i.w, align 8, !tbaa !34
  store i32 2, ptr %i.x, align 8, !tbaa !36
  %i.sa = load <4 x i32>, ptr %i.n, align 4
  %i.sb = load i32, ptr %i.o, align 8, !tbaa !20, !noalias !287
  %i.sc = load i32, ptr %i.n, align 4, !tbaa !16, !noalias !287
  %i.sd = sext i32 %i.sc to i64
  %i.se = sext i32 %i.sb to i64
  %i.sf = mul nsw i64 %i.se, %i.sd                ; 2 uses
  %i.sg = mul i64 %i.rt, %i.sf
  %i.sh = mul i64 %i.sg, %i.rz
  %i.si = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.sh
  store ptr %i.si, ptr %13, align 8, !tbaa !27
  %i.sj = shufflevector <4 x i32> %i.sa, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.sj, ptr %i.y, align 4, !tbaa !10
  store i64 %i.sf, ptr %i.z, align 8, !tbaa !19, !alias.scope !288
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.sk = load i32, ptr %7, align 4, !tbaa !10
  %i.sl = sdiv i32 %.044150, %i.sk
  %i.sm = load ptr, ptr %11, align 8, !tbaa !27, !noalias !289
  %i.sn = load i64, ptr %i.ac, align 8, !tbaa !19, !noalias !289
  %i.so = sext i32 %i.sl to i64
  %i.sp = mul i64 %i.sn, %i.so
  %i.sq = load i64, ptr %i.ad, align 8, !tbaa !28, !noalias !289 ; 3 uses
  %i.sr = mul i64 %i.sp, %i.sq
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sr
  %i.st = load i32, ptr %i.ae, align 8, !tbaa !17, !noalias !289
  %i.su = load ptr, ptr %i.af, align 8, !tbaa !34, !noalias !289
  store ptr null, ptr %i.ag, align 8, !tbaa !35
  store i64 %i.sq, ptr %i.ah, align 8, !tbaa !28
  store i32 %i.st, ptr %i.ai, align 8, !tbaa !17
  store ptr %i.su, ptr %i.aj, align 8, !tbaa !34
  store i32 2, ptr %i.ak, align 8, !tbaa !36
  %i.sv = load <4 x i32>, ptr %i.aa, align 4
  %i.sw = load i32, ptr %i.ab, align 8, !tbaa !20, !noalias !289
  %i.sx = load i32, ptr %i.aa, align 4, !tbaa !16, !noalias !289
  %i.sy = sext i32 %i.sx to i64
  %i.sz = sext i32 %i.sw to i64
  %i.ta = mul nsw i64 %i.sz, %i.sy                ; 2 uses
  %i.tb = mul i64 %i.sq, %i.ta
  %i.tc = mul i64 %i.tb, %i.rz
  %i.td = getelementptr inbounds nuw i8, ptr %i.ss, i64 %i.tc
  store ptr %i.td, ptr %14, align 8, !tbaa !27
  %i.te = shufflevector <4 x i32> %i.sv, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.te, ptr %i.al, align 4, !tbaa !10
  store i64 %i.ta, ptr %i.am, align 8, !tbaa !19, !alias.scope !290
  %i.tf = add nsw i32 %i.rk, %.0149
  %i.tg = icmp sge i32 %i.tf, %i.rl
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bb, i32 noundef 16, i32 noundef %.sroa.speculated120, i32 noundef %.sroa.speculated116, i32 noundef %.0149, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.tg)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  %i.th = load i32, ptr %9, align 4, !tbaa !10    ; 2 uses
  %i.ti = add nsw i32 %i.th, %.0149               ; 2 uses
  %i.tj = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  %i.tk = icmp slt i32 %i.ti, %i.tj
  br i1 %i.tk, label %.noexc52, label %._crit_edge, !llvm.loop !281

_ZN4ncnnL47conv3x3s1_winograd23_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us422.i, %.lr.ph413.i, %.preheader.i
  %i.tl = load i32, ptr %7, align 4, !tbaa !10    ; 2 uses
  %i.tm = add nsw i32 %i.tl, %.044150             ; 2 uses
  %i.tn = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.to = icmp slt i32 %i.tm, %i.tn
  br i1 %i.to, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !282

._crit_edge155:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge155, %bb.a
  ret void

bb.ad:                                            ; preds = %bb.c
  %i.tp = landingpad { ptr, i32 }
          catch ptr null
  %i.tq = extractvalue { ptr, i32 } %i.tp, 0
  call void @__clang_call_terminate(ptr %i.tq) #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr nofree %.0.val, i32 noundef range(i32 16, 37) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7) unnamed_addr #15 {
bb.a:
  %i.a = icmp sgt i32 %3, 3
  br i1 %i.a, label %.preheader211.lr.ph, label %.preheader203

.preheader211.lr.ph:                              ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = icmp sgt i32 %4, 7
  %i.g = icmp eq i32 %5, 0                        ; 4 uses
  %i.h = icmp sgt i32 %6, 1                       ; 4 uses
  %i.i = add i32 %6, -2                           ; 6 uses
  %i.j = and i32 %i.i, -2
  %i.k = add i32 %i.j, 2                          ; 4 uses
  %i.l = and i32 %4, -8
  %i.m = lshr i32 %i.i, 1                         ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = shl nuw nsw i64 %i.n, 2
  %i.r = zext nneg i32 %3 to i64
  %i.s = sext i32 %6 to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %i.t = lshr i32 %i.i, 1                         ; 2 uses
  %i.u = add nuw i32 %i.t, 1                      ; 6 uses
  %i.v = icmp eq i32 %i.t, 0
  %unroll_iter = and i32 %i.u, -2
  %i.w = and i32 %i.i, 2
  %lcmp.mod.not.not = icmp eq i32 %i.w, 0
  %lcmp.mod1386 = trunc i32 %i.u to i1
  %i.x = icmp eq i32 %i.m, 0
  %unroll_iter1395 = and i32 %i.u, -2
  %i.y = and i32 %i.i, 2
  %lcmp.mod1390.not.not = icmp eq i32 %i.y, 0
  %lcmp.mod1394 = trunc i32 %i.u to i1
  %xtraiter1399 = and i32 %i.u, 3                 ; 3 uses
  %i.z = icmp ult i32 %i.i, 6
  %unroll_iter1404 = and i32 %i.u, -4
  %lcmp.mod1400.not = icmp eq i32 %xtraiter1399, 0
  %lcmp.mod1403 = icmp ne i32 %xtraiter1399, 0
  br label %.preheader211

.preheader211:                                    ; preds = %.preheader211.lr.ph, %bb.b
  %indvars.iv749 = phi i64 [ 0, %.preheader211.lr.ph ], [ %indvars.iv.next750, %bb.b ] ; 2 uses
  %.0622360 = phi ptr [ %.0.val, %.preheader211.lr.ph ], [ %.5.lcssa, %bb.b ]
  %i.aa = mul nsw i64 %indvars.iv749, %i.s
  br label %bb.c

.preheader203.loopexit:                           ; preds = %bb.b
  %i.ab = trunc nuw nsw i64 %indvars.iv.next750 to i32
  br label %.preheader203

.preheader203:                                    ; preds = %.preheader203.loopexit, %bb.a
  %.0625.lcssa = phi i32 [ 0, %bb.a ], [ %i.ab, %.preheader203.loopexit ] ; 3 uses
  %.0622.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.5.lcssa, %.preheader203.loopexit ] ; 2 uses
  %i.ac = or disjoint i32 %.0625.lcssa, 1
  %i.ad = icmp slt i32 %i.ac, %3
  br i1 %i.ad, label %.preheader202.lr.ph, label %.preheader194

.preheader202.lr.ph:                              ; preds = %.preheader203
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = icmp sgt i32 %4, 7
  %i.aj = icmp eq i32 %5, 0                       ; 4 uses
  %i.ak = icmp sgt i32 %6, 1                      ; 4 uses
  %i.al = add i32 %6, -2                          ; 6 uses
  %i.am = and i32 %i.al, -2
  %i.an = add i32 %i.am, 2                        ; 4 uses
  %i.ao = and i32 %4, -8
  %i.ap = lshr i32 %i.al, 1
  %i.aq = zext nneg i32 %i.ap to i64              ; 5 uses
  %i.ar = shl nuw nsw i64 %i.aq, 4
  %i.as = shl nuw nsw i64 %i.aq, 3
  %i.at = shl nuw nsw i64 %i.aq, 2
  %i.au = zext nneg i32 %.0625.lcssa to i64
  %i.av = sext i32 %3 to i64
  %i.aw = sext i32 %6 to i64
  %wide.trip.count763 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %i.av, -1
  %i.ax = lshr i32 %i.al, 1                       ; 2 uses
  %i.ay = add nuw i32 %i.ax, 1                    ; 2 uses
  %i.az = icmp eq i32 %i.ax, 0
  %unroll_iter1416 = and i32 %i.ay, -2
  %i.ba = and i32 %i.al, 2
  %lcmp.mod1411.not.not = icmp eq i32 %i.ba, 0
  %lcmp.mod1415 = trunc i32 %i.ay to i1
  %i.bb = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check1103 = icmp ult i32 %i.al, 14
  %n.vec1105 = and i64 %i.bb, 4294967288          ; 4 uses
  %i.bc = trunc nuw i64 %n.vec1105 to i32
  %i.bd = shl i32 %i.bc, 1
  %i.be = shl nuw nsw i64 %n.vec1105, 3           ; 2 uses
  %cmp.n1122 = icmp eq i64 %i.bb, %n.vec1105
  %i.bf = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check1039 = icmp ult i32 %i.al, 14
  %n.vec1041 = and i64 %i.bf, 4294967288          ; 5 uses
  %i.bg = trunc nuw i64 %n.vec1041 to i32
  %i.bh = shl i32 %i.bg, 1
  %i.bi = shl nuw nsw i64 %n.vec1041, 3
  %i.bj = shl nuw nsw i64 %n.vec1041, 2
  %cmp.n1068 = icmp eq i64 %i.bf, %n.vec1041
  br label %.preheader202

bb.b:                                             ; preds = %._crit_edge355
  %indvars.iv.next750 = add nuw nsw i64 %indvars.iv749, 4 ; 3 uses
  %i.bk = or disjoint i64 %indvars.iv.next750, 3
  %i.bl = icmp samesign ult i64 %i.bk, %i.r
  br i1 %i.bl, label %.preheader211, label %.preheader203.loopexit, !llvm.loop !291

bb.c:                                             ; preds = %.preheader211, %._crit_edge355
  %indvars.iv = phi i64 [ 0, %.preheader211 ], [ %indvars.iv.next, %._crit_edge355 ] ; 3 uses
  %.1623358 = phi ptr [ %.0622360, %.preheader211 ], [ %.5.lcssa, %._crit_edge355 ] ; 2 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !27
  %i.bn = load i32, ptr %i.b, align 4, !tbaa !16
  %i.bo = sext i32 %i.bn to i64
  %i.bp = mul nsw i64 %indvars.iv, %i.bo
  %i.bq = load i64, ptr %i.c, align 8, !tbaa !28
  %i.br = mul i64 %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.aa ; 11 uses
  %i.bu = load ptr, ptr %1, align 8, !tbaa !27
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !16
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul nsw i64 %indvars.iv, %i.bw
  %i.by = load i64, ptr %i.e, align 8, !tbaa !28
  %i.bz = mul i64 %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bz ; 2 uses
  br i1 %i.f, label %.lr.ph265, label %.preheader210

.preheader210:                                    ; preds = %bb.g, %bb.c
  %.0641.lcssa = phi i32 [ 0, %bb.c ], [ %i.l, %bb.g ] ; 3 uses
  %.0629.lcssa = phi ptr [ %i.ca, %bb.c ], [ %.2631.lcssa, %bb.g ] ; 2 uses
  %.2624.lcssa = phi ptr [ %.1623358, %bb.c ], [ %i.ht, %bb.g ] ; 2 uses
  %i.cb = or disjoint i32 %.0641.lcssa, 3
  %i.cc = icmp slt i32 %i.cb, %4
  br i1 %i.cc, label %.lr.ph302, label %.preheader209

.lr.ph265:                                        ; preds = %bb.c, %bb.g
  %.2624263 = phi ptr [ %i.ht, %bb.g ], [ %.1623358, %bb.c ] ; 17 uses
  %.0629262 = phi ptr [ %.2631.lcssa, %bb.g ], [ %i.ca, %bb.c ] ; 2 uses
  %.0641261 = phi i32 [ %i.hu, %bb.g ], [ 0, %bb.c ]
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph265
  %i.cd = load <2 x i64>, ptr %.2624263, align 16, !tbaa !29
  %i.ce = getelementptr inbounds nuw i8, ptr %.2624263, i64 16
  %i.cf = load <2 x i64>, ptr %i.ce, align 16, !tbaa !29
  %i.cg = getelementptr inbounds nuw i8, ptr %.2624263, i64 32
  %i.ch = load <2 x i64>, ptr %i.cg, align 16, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %.2624263, i64 48
  %i.cj = load <2 x i64>, ptr %i.ci, align 16, !tbaa !29
  %i.ck = getelementptr inbounds nuw i8, ptr %.2624263, i64 64
  %i.cl = load <2 x i64>, ptr %i.ck, align 16, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %.2624263, i64 80
  %i.cn = load <2 x i64>, ptr %i.cm, align 16, !tbaa !29
  %i.co = getelementptr inbounds nuw i8, ptr %.2624263, i64 96
  %i.cp = load <2 x i64>, ptr %i.co, align 16, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %.2624263, i64 112
  %i.cr = load <2 x i64>, ptr %i.cq, align 16, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph265, %bb.d
  %.0166 = phi <2 x i64> [ %i.cp, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0162 = phi <2 x i64> [ %i.cn, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0151 = phi <2 x i64> [ %i.cl, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0147 = phi <2 x i64> [ %i.cj, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0143 = phi <2 x i64> [ %i.ch, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0137 = phi <2 x i64> [ %i.cf, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %.0133 = phi <2 x i64> [ %i.cd, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  %storemerge773 = phi <2 x i64> [ %i.cr, %bb.d ], [ zeroinitializer, %.lr.ph265 ] ; 2 uses
  br i1 %i.h, label %.lr.ph.preheader, label %.preheader207

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.cs = bitcast <2 x i64> %.0133 to <4 x i32>
  %i.ct = bitcast <2 x i64> %.0137 to <4 x i32>
  %i.cu = bitcast <2 x i64> %.0143 to <4 x i32>
  %i.cv = bitcast <2 x i64> %.0147 to <4 x i32>
  %i.cw = bitcast <2 x i64> %.0151 to <4 x i32>
  %i.cx = bitcast <2 x i64> %.0162 to <4 x i32>
  %i.cy = bitcast <2 x i64> %.0166 to <4 x i32>
  %i.cz = bitcast <2 x i64> %storemerge773 to <4 x i32>
  br label %.lr.ph

.preheader207.loopexit:                           ; preds = %.lr.ph
  %i.da = bitcast <4 x i32> %i.el to <2 x i64>
  %i.db = bitcast <4 x i32> %i.ek to <2 x i64>
  %i.dc = bitcast <4 x i32> %i.ej to <2 x i64>
  %i.dd = bitcast <4 x i32> %i.ei to <2 x i64>
  %i.de = bitcast <4 x i32> %i.ef to <2 x i64>
  %i.df = bitcast <4 x i32> %i.ec to <2 x i64>
  %i.dg = bitcast <4 x i32> %i.dz to <2 x i64>
  %i.dh = bitcast <4 x i32> %i.dx to <2 x i64>
  br label %.preheader207

.preheader207:                                    ; preds = %.preheader207.loopexit, %bb.e
  %.0170.lcssa = phi <2 x i64> [ %storemerge773, %bb.e ], [ %i.da, %.preheader207.loopexit ] ; 2 uses
  %.1167.lcssa = phi <2 x i64> [ %.0166, %bb.e ], [ %i.db, %.preheader207.loopexit ] ; 2 uses
  %.1163.lcssa = phi <2 x i64> [ %.0162, %bb.e ], [ %i.dc, %.preheader207.loopexit ] ; 2 uses
  %.1152.lcssa = phi <2 x i64> [ %.0151, %bb.e ], [ %i.dd, %.preheader207.loopexit ] ; 2 uses
  %.1148.lcssa = phi <2 x i64> [ %.0147, %bb.e ], [ %i.de, %.preheader207.loopexit ] ; 2 uses
  %.1144.lcssa = phi <2 x i64> [ %.0143, %bb.e ], [ %i.df, %.preheader207.loopexit ] ; 2 uses
  %.1138.lcssa = phi <2 x i64> [ %.0137, %bb.e ], [ %i.dg, %.preheader207.loopexit ] ; 2 uses
  %.1134.lcssa = phi <2 x i64> [ %.0133, %bb.e ], [ %i.dh, %.preheader207.loopexit ] ; 2 uses
  %.0654.lcssa = phi i32 [ 0, %bb.e ], [ %i.k, %.preheader207.loopexit ] ; 2 uses
  %.0645.lcssa = phi ptr [ %i.bt, %bb.e ], [ %i.em, %.preheader207.loopexit ]
  %.1630.lcssa = phi ptr [ %.0629262, %bb.e ], [ %i.en, %.preheader207.loopexit ] ; 2 uses
  %i.di = icmp slt i32 %.0654.lcssa, %6
  br i1 %i.di, label %.lr.ph251.preheader, label %._crit_edge

.lr.ph251.preheader:                              ; preds = %.preheader207
  %i.dj = bitcast <2 x i64> %.1134.lcssa to <4 x i32>
  %i.dk = bitcast <2 x i64> %.1138.lcssa to <4 x i32>
  %i.dl = bitcast <2 x i64> %.1144.lcssa to <4 x i32>
  %i.dm = bitcast <2 x i64> %.1148.lcssa to <4 x i32>
  %i.dn = bitcast <2 x i64> %.1152.lcssa to <4 x i32>
  %i.do = bitcast <2 x i64> %.1163.lcssa to <4 x i32>
  %i.dp = bitcast <2 x i64> %.1167.lcssa to <4 x i32>
  %i.dq = bitcast <2 x i64> %.0170.lcssa to <4 x i32>
  br label %.lr.ph251

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1630229 = phi ptr [ %i.en, %.lr.ph ], [ %.0629262, %.lr.ph.preheader ] ; 3 uses
  %.0645228 = phi ptr [ %i.em, %.lr.ph ], [ %i.bt, %.lr.ph.preheader ] ; 2 uses
  %.0654227 = phi i32 [ %i.eo, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.1134226 = phi <4 x i32> [ %i.dx, %.lr.ph ], [ %i.cs, %.lr.ph.preheader ]
  %.1138225 = phi <4 x i32> [ %i.dz, %.lr.ph ], [ %i.ct, %.lr.ph.preheader ]
  %.1144224 = phi <4 x i32> [ %i.ec, %.lr.ph ], [ %i.cu, %.lr.ph.preheader ]
  %.1148223 = phi <4 x i32> [ %i.ef, %.lr.ph ], [ %i.cv, %.lr.ph.preheader ]
  %.1152222 = phi <4 x i32> [ %i.ei, %.lr.ph ], [ %i.cw, %.lr.ph.preheader ]
  %.1163221 = phi <4 x i32> [ %i.ej, %.lr.ph ], [ %i.cx, %.lr.ph.preheader ]
  %.1167220 = phi <4 x i32> [ %i.ek, %.lr.ph ], [ %i.cy, %.lr.ph.preheader ]
  %.0170219 = phi <4 x i32> [ %i.el, %.lr.ph ], [ %i.cz, %.lr.ph.preheader ]
  %i.dr = load <2 x i64>, ptr %.0645228, align 1, !tbaa !29 ; 2 uses
  %i.ds = load <2 x i64>, ptr %.1630229, align 1, !tbaa !29 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.1630229, i64 16
  %i.du = load <2 x i64>, ptr %i.dt, align 1, !tbaa !29 ; 2 uses
  %i.dv = bitcast <2 x i64> %i.dr to <8 x i16>    ; 4 uses
  %i.dw = bitcast <2 x i64> %i.ds to <8 x i16>    ; 2 uses
  %i.dx = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.dv, <8 x i16> %i.dw, <4 x i32> %.1134226) ; 2 uses
  %i.dy = bitcast <2 x i64> %i.du to <8 x i16>    ; 2 uses
  %i.dz = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.dv, <8 x i16> %i.dy, <4 x i32> %.1138225) ; 2 uses
  %i.ea = bitcast <2 x i64> %i.ds to <8 x i16>
  %i.eb = shufflevector <8 x i16> %i.ea, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.ec = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.dv, <8 x i16> %i.eb, <4 x i32> %.1144224) ; 2 uses
  %i.ed = bitcast <2 x i64> %i.du to <8 x i16>
  %i.ee = shufflevector <8 x i16> %i.ed, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1> ; 2 uses
  %i.ef = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.dv, <8 x i16> %i.ee, <4 x i32> %.1148223) ; 2 uses
  %i.eg = bitcast <2 x i64> %i.dr to <8 x i16>
  %i.eh = shufflevector <8 x i16> %i.eg, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3> ; 4 uses
  %i.ei = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.eh, <8 x i16> %i.dw, <4 x i32> %.1152222) ; 2 uses
  %i.ej = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.eh, <8 x i16> %i.dy, <4 x i32> %.1163221) ; 2 uses
  %i.ek = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.eh, <8 x i16> %i.eb, <4 x i32> %.1167220) ; 2 uses
  %i.el = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.eh, <8 x i16> %i.ee, <4 x i32> %.0170219) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.0645228, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.1630229, i64 32 ; 2 uses
  %i.eo = add nuw nsw i32 %.0654227, 2            ; 2 uses
  %i.ep = or disjoint i32 %i.eo, 1
  %i.eq = icmp slt i32 %i.ep, %6
  br i1 %i.eq, label %.lr.ph, label %.preheader207.loopexit, !llvm.loop !292

.lr.ph251:                                        ; preds = %.lr.ph251.preheader, %.lr.ph251
  %.2631250 = phi ptr [ %i.fk, %.lr.ph251 ], [ %.1630.lcssa, %.lr.ph251.preheader ] ; 2 uses
  %.1646249 = phi ptr [ %i.fj, %.lr.ph251 ], [ %.0645.lcssa, %.lr.ph251.preheader ] ; 2 uses
  %.1655248 = phi i32 [ %i.fl, %.lr.ph251 ], [ %.0654.lcssa, %.lr.ph251.preheader ]
  %.2135247 = phi <4 x i32> [ %i.ey, %.lr.ph251 ], [ %i.dj, %.lr.ph251.preheader ]
  %.2139246 = phi <4 x i32> [ %i.ez, %.lr.ph251 ], [ %i.dk, %.lr.ph251.preheader ]
  %.2145245 = phi <4 x i32> [ %i.fb, %.lr.ph251 ], [ %i.dl, %.lr.ph251.preheader ]
  %.2149244 = phi <4 x i32> [ %i.fd, %.lr.ph251 ], [ %i.dm, %.lr.ph251.preheader ]
  %.2153243 = phi <4 x i32> [ %i.ff, %.lr.ph251 ], [ %i.dn, %.lr.ph251.preheader ]
  %.2164242 = phi <4 x i32> [ %i.fg, %.lr.ph251 ], [ %i.do, %.lr.ph251.preheader ]
  %.2168241 = phi <4 x i32> [ %i.fh, %.lr.ph251 ], [ %i.dp, %.lr.ph251.preheader ]
  %.1171240 = phi <4 x i32> [ %i.fi, %.lr.ph251 ], [ %i.dq, %.lr.ph251.preheader ]
  %i.er = load double, ptr %.1646249, align 1, !tbaa !29
  %i.es = insertelement <2 x double> poison, double %i.er, i64 0
  %i.et = load <8 x i16>, ptr %.2631250, align 1, !tbaa !29 ; 4 uses
  %i.eu = bitcast <2 x double> %i.es to <8 x i16> ; 2 uses
  %i.ev = shufflevector <8 x i16> %i.eu, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 4 uses
  %i.ew = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ex = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7> ; 2 uses
  %i.ey = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.ev, <8 x i16> %i.ew, <4 x i32> %.2135247) ; 2 uses
  %i.ez = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.ev, <8 x i16> %i.ex, <4 x i32> %.2139246) ; 2 uses
  %i.fa = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0, i32 0> ; 2 uses
  %i.fb = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.ev, <8 x i16> %i.fa, <4 x i32> %.2145245) ; 2 uses
  %i.fc = shufflevector <8 x i16> %i.et, <8 x i16> poison, <8 x i32> <i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 4, i32 4> ; 2 uses
  %i.fd = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.ev, <8 x i16> %i.fc, <4 x i32> %.2149244) ; 2 uses
  %i.fe = shufflevector <8 x i16> %i.eu, <8 x i16> poison, <8 x i32> <i32 2, i32 2, i32 3, i32 3, i32 0, i32 0, i32 1, i32 1> ; 4 uses
  %i.ff = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.fe, <8 x i16> %i.ew, <4 x i32> %.2153243) ; 2 uses
  %i.fg = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.fe, <8 x i16> %i.ex, <4 x i32> %.2164242) ; 2 uses
  %i.fh = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.fe, <8 x i16> %i.fa, <4 x i32> %.2168241) ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a
  %i.rx = getelementptr inbounds nuw i8, ptr %.0664336.epil, i64 16 ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %.10639337.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter1399
  br i1 %epil.iter.cmp.not, label %.preheader204.loopexit, label %.lr.ph339.epil, !llvm.loop !301

.preheader204.loopexit:                           ; preds = %.lr.ph339.epil, %.preheader204.loopexit.unr-lcssa
  %.lcssa1377 = phi <4 x i32> [ %i.ts, %.preheader204.loopexit.unr-lcssa ], [ %i.rw, %.lr.ph339.epil ]
  %.lcssa1376 = phi ptr [ %i.tt, %.preheader204.loopexit.unr-lcssa ], [ %i.rx, %.lr.ph339.epil ]
  %i.rz = getelementptr i8, ptr %.9638352, i64 %i.q
  %scevgep744 = getelementptr i8, ptr %i.rz, i64 4
  br label %.preheader204

.preheader204:                                    ; preds = %.preheader204.loopexit, %bb.o
  %.lcssa217 = phi <4 x i32> [ %i.rp, %bb.o ], [ %.lcssa1377, %.preheader204.loopexit ] ; 3 uses
  %.0666.lcssa = phi i32 [ 0, %bb.o ], [ %i.k, %.preheader204.loopexit ] ; 5 uses
  %.0664.lcssa = phi ptr [ %i.bt, %bb.o ], [ %.lcssa1376, %.preheader204.loopexit ] ; 3 uses
  %.10639.lcssa = phi ptr [ %.9638352, %bb.o ], [ %scevgep744, %.preheader204.loopexit ] ; 4 uses
  %i.sa = icmp slt i32 %.0666.lcssa, %6
  br i1 %i.sa, label %.lr.ph347.preheader, label %._crit_edge348

.lr.ph347.preheader:                              ; preds = %.preheader204
  %i.sb = sub i32 %6, %.0666.lcssa
  %.neg1450 = add i32 %.0666.lcssa, 1
  %xtraiter1406 = and i32 %i.sb, 1
  %lcmp.mod1407.not = icmp eq i32 %xtraiter1406, 0
  br i1 %lcmp.mod1407.not, label %.lr.ph347.prol.loopexit, label %.lr.ph347.prol

.lr.ph347.prol:                                   ; preds = %.lr.ph347.preheader
  %i.sc = load i64, ptr %.0664.lcssa, align 1, !tbaa !29
  %i.sd = insertelement <2 x i64> poison, i64 %i.sc, i64 0
  %i.se = load i16, ptr %.10639.lcssa, align 2, !tbaa !41
  %i.sf = insertelement <8 x i16> poison, i16 %i.se, i64 0
  %i.sg = shufflevector <8 x i16> %i.sf, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sh = bitcast <2 x i64> %i.sd to <8 x i16>
  %i.si = shufflevector <8 x i16> %i.sh, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.sj = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.si, <8 x i16> %i.sg, <4 x i32> %.lcssa217) ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0664.lcssa, i64 8
  %i.sl = getelementptr inbounds nuw i8, ptr %.10639.lcssa, i64 2 ; 2 uses
  %i.sm = add nuw nsw i32 %.0666.lcssa, 1
  br label %.lr.ph347.prol.loopexit

.lr.ph347.prol.loopexit:                          ; preds = %.lr.ph347.prol, %.lr.ph347.preheader
  %.lcssa1379.unr = phi <4 x i32> [ poison, %.lr.ph347.preheader ], [ %i.sj, %.lr.ph347.prol ]
  %.lcssa1378.unr = phi ptr [ poison, %.lr.ph347.preheader ], [ %i.sl, %.lr.ph347.prol ]
  %.11640346.unr = phi ptr [ %.10639.lcssa, %.lr.ph347.preheader ], [ %i.sl, %.lr.ph347.prol ]
  %.1665345.unr = phi ptr [ %.0664.lcssa, %.lr.ph347.preheader ], [ %i.sk, %.lr.ph347.prol ]
  %.1667344.unr = phi i32 [ %.0666.lcssa, %.lr.ph347.preheader ], [ %i.sm, %.lr.ph347.prol ]
  %.unr1408 = phi <4 x i32> [ %.lcssa217, %.lr.ph347.preheader ], [ %i.sj, %.lr.ph347.prol ]
  %i.sn = icmp eq i32 %6, %.neg1450
  br i1 %i.sn, label %._crit_edge348, label %.lr.ph347

.lr.ph339:                                        ; preds = %.lr.ph339.preheader, %.lr.ph339
  %.10639337 = phi ptr [ %i.tu, %.lr.ph339 ], [ %.9638352, %.lr.ph339.preheader ] ; 5 uses
  %.0664336 = phi ptr [ %i.tt, %.lr.ph339 ], [ %i.bt, %.lr.ph339.preheader ] ; 5 uses
  %i.so = phi <4 x i32> [ %i.ts, %.lr.ph339 ], [ %i.rp, %.lr.ph339.preheader ]
  %niter1405 = phi i32 [ %niter1405.next.3, %.lr.ph339 ], [ 0, %.lr.ph339.preheader ]
  %i.sp = load <8 x i16>, ptr %.0664336, align 1, !tbaa !29
  %i.sq = load float, ptr %.10639337, align 1, !tbaa !29
  %i.sr = insertelement <4 x float> poison, float %i.sq, i64 0
  %i.ss = bitcast <4 x float> %i.sr to <8 x i16>
  %i.st = shufflevector <8 x i16> %i.ss, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.su = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.sp, <8 x i16> %i.st, <4 x i32> %i.so)
  %i.sv = getelementptr inbounds nuw i8, ptr %.0664336, i64 16
  %i.sw = getelementptr inbounds nuw i8, ptr %.10639337, i64 4
  %i.sx = load <8 x i16>, ptr %i.sv, align 1, !tbaa !29
  %i.sy = load float, ptr %i.sw, align 1, !tbaa !29
  %i.sz = insertelement <4 x float> poison, float %i.sy, i64 0
  %i.ta = bitcast <4 x float> %i.sz to <8 x i16>
  %i.tb = shufflevector <8 x i16> %i.ta, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.tc = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.sx, <8 x i16> %i.tb, <4 x i32> %i.su)
  %i.td = getelementptr inbounds nuw i8, ptr %.0664336, i64 32
  %i.te = getelementptr inbounds nuw i8, ptr %.10639337, i64 8
  %i.tf = load <8 x i16>, ptr %i.td, align 1, !tbaa !29
  %i.tg = load float, ptr %i.te, align 1, !tbaa !29
  %i.th = insertelement <4 x float> poison, float %i.tg, i64 0
  %i.ti = bitcast <4 x float> %i.th to <8 x i16>
  %i.tj = shufflevector <8 x i16> %i.ti, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.tk = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.tf, <8 x i16> %i.tj, <4 x i32> %i.tc)
  %i.tl = getelementptr inbounds nuw i8, ptr %.0664336, i64 48
  %i.tm = getelementptr inbounds nuw i8, ptr %.10639337, i64 12
  %i.tn = load <8 x i16>, ptr %i.tl, align 1, !tbaa !29
  %i.to = load float, ptr %i.tm, align 1, !tbaa !29
  %i.tp = insertelement <4 x float> poison, float %i.to, i64 0
  %i.tq = bitcast <4 x float> %i.tp to <8 x i16>
  %i.tr = shufflevector <8 x i16> %i.tq, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ts = tail call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.tn, <8 x i16> %i.tr, <4 x i32> %i.tk) ; 3 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.0664336, i64 64 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.10639337, i64 16 ; 2 uses
  %niter1405.next.3 = add i32 %niter1405, 4       ; 2 uses
  %niter1405.ncmp.3.not = icmp eq i32 %niter1405.next.3, %unroll_iter1404
  br i1 %niter1405.ncmp.3.not, label %.preheader204.loopexit.unr-lcssa, label %.lr.ph339, !llvm.loop !302

.lr.ph347:                                        ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347
  %.11640346 = phi ptr [ %i.up, %.lr.ph347 ], [ %.11640346.unr, %.lr.ph347.prol.loopexit ] ; 3 uses
  %.1665345 = phi ptr [ %i.uo, %.lr.ph347 ], [ %.1665345.unr, %.lr.ph347.prol.loopexit ] ; 3 uses
  %.1667344 = phi i32 [ %i.uq, %.lr.ph347 ], [ %.1667344.unr, %.lr.ph347.prol.loopexit ]
  %i.tv = phi <4 x i32> [ %i.un, %.lr.ph347 ], [ %.unr1408, %.lr.ph347.prol.loopexit ]
  %i.tw = load i64, ptr %.1665345, align 1, !tbaa !29
  %i.tx = insertelement <2 x i64> poison, i64 %i.tw, i64 0
  %i.ty = load i16, ptr %.11640346, align 2, !tbaa !41
  %i.tz = insertelement <8 x i16> poison, i16 %i.ty, i64 0
  %i.ua = shufflevector <8 x i16> %i.tz, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ub = bitcast <2 x i64> %i.tx to <8 x i16>
  %i.uc = shufflevector <8 x i16> %i.ub, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.ud = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.uc, <8 x i16> %i.ua, <4 x i32> %i.tv)
  %i.ue = getelementptr inbounds nuw i8, ptr %.1665345, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %.11640346, i64 2
  %i.ug = load i64, ptr %i.ue, align 1, !tbaa !29
  %i.uh = insertelement <2 x i64> poison, i64 %i.ug, i64 0
  %i.ui = load i16, ptr %i.uf, align 2, !tbaa !41
  %i.uj = insertelement <8 x i16> poison, i16 %i.ui, i64 0
  %i.uk = shufflevector <8 x i16> %i.uj, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ul = bitcast <2 x i64> %i.uh to <8 x i16>
  %i.um = shufflevector <8 x i16> %i.ul, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  %i.un = tail call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.um, <8 x i16> %i.uk, <4 x i32> %i.ud) ; 2 uses
  %i.uo = getelementptr inbounds nuw i8, ptr %.1665345, i64 16
  %i.up = getelementptr inbounds nuw i8, ptr %.11640346, i64 4 ; 2 uses
  %i.uq = add nuw nsw i32 %.1667344, 2            ; 2 uses
  %exitcond745.not.1 = icmp eq i32 %i.uq, %6
  br i1 %exitcond745.not.1, label %._crit_edge348, label %.lr.ph347, !llvm.loop !303

._crit_edge348:                                   ; preds = %.lr.ph347.prol.loopexit, %.lr.ph347, %.preheader204
  %.lcssa218 = phi <4 x i32> [ %.lcssa217, %.preheader204 ], [ %.lcssa1379.unr, %.lr.ph347.prol.loopexit ], [ %i.un, %.lr.ph347 ]
  %.11640.lcssa = phi ptr [ %.10639.lcssa, %.preheader204 ], [ %.lcssa1378.unr, %.lr.ph347.prol.loopexit ], [ %i.up, %.lr.ph347 ]
  store <4 x i32> %.lcssa218, ptr %.5353, align 16, !tbaa !29
  %i.ur = getelementptr inbounds nuw i8, ptr %.5353, i64 16 ; 2 uses
  %i.us = add nuw nsw i32 %.3644351, 1            ; 2 uses
  %exitcond746.not = icmp eq i32 %i.us, %4
  br i1 %exitcond746.not, label %._crit_edge355, label %.lr.ph354, !llvm.loop !304

._crit_edge355:                                   ; preds = %._crit_edge348, %.preheader208
  %.5.lcssa = phi ptr [ %.4.lcssa, %.preheader208 ], [ %i.ur, %._crit_edge348 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond748.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond748.not, label %bb.b, label %bb.c, !llvm.loop !305

.preheader202:                                    ; preds = %.preheader202.lr.ph, %bb.p
  %indvars.iv765 = phi i64 [ %i.au, %.preheader202.lr.ph ], [ %indvars.iv.next766, %bb.p ] ; 2 uses
  %.6498 = phi ptr [ %.0622.lcssa, %.preheader202.lr.ph ], [ %.11.lcssa, %bb.p ]
  %i.ut = mul nsw i64 %indvars.iv765, %i.aw
  br label %bb.q

.preheader194.loopexit:                           ; preds = %bb.p
  %i.uu = trunc nuw nsw i64 %indvars.iv.next766 to i32
  br label %.preheader194

.preheader194:                                    ; preds = %.preheader194.loopexit, %.preheader203
  %.1626.lcssa = phi i32 [ %.0625.lcssa, %.preheader203 ], [ %i.uu, %.preheader194.loopexit ] ; 2 uses
  %.6.lcssa = phi ptr [ %.0622.lcssa, %.preheader203 ], [ %.11.lcssa, %.preheader194.loopexit ]
  %i.uv = icmp slt i32 %.1626.lcssa, %3
  br i1 %i.uv, label %.preheader193.lr.ph, label %._crit_edge603

.preheader193.lr.ph:                              ; preds = %.preheader194
  %i.uw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ux = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.uz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.va = icmp sgt i32 %4, 7
  %i.vb = icmp eq i32 %5, 0                       ; 5 uses
  %i.vc = icmp sgt i32 %6, 1                      ; 3 uses
  %i.vd = icmp sgt i32 %6, 0
  %i.ve = add i32 %6, -2                          ; 3 uses
  %i.vf = and i32 %i.ve, -2
  %i.vg = add i32 %i.vf, 2                        ; 4 uses
  %i.vh = and i32 %4, -8
  %i.vi = lshr i32 %i.ve, 1
  %i.vj = zext nneg i32 %i.vi to i64              ; 3 uses
  %i.vk = shl nuw nsw i64 %i.vj, 4
  %i.vl = shl nuw nsw i64 %i.vj, 3
  %i.vm = add nsw i32 %4, -1                      ; 2 uses
  %i.vn = add i32 %6, -1
  %i.vo = zext i32 %i.vn to i64
  %i.vp = shl nuw nsw i64 %i.vo, 1
  %i.vq = zext nneg i32 %.1626.lcssa to i64
  %i.vr = sext i32 %6 to i64
  %wide.trip.count788 = zext i32 %3 to i64
  %wide.trip.count783 = zext nneg i32 %2 to i64
  %i.vs = zext i32 %6 to i64                      ; 5 uses
  %i.vt = add i32 %6, -2                          ; 3 uses
  %i.vu = lshr i32 %i.vt, 1                       ; 3 uses
  %i.vv = add nuw i32 %i.vu, 1                    ; 4 uses
  %i.vw = icmp eq i32 %i.vu, 0
  %unroll_iter1430 = and i32 %i.vv, -2
  %i.vx = and i32 %i.vt, 2
  %lcmp.mod1424.not.not = icmp eq i32 %i.vx, 0
  %lcmp.mod1429 = trunc i32 %i.vv to i1
  %i.vy = icmp eq i32 %i.vu, 0
  %unroll_iter1444 = and i32 %i.vv, -2
  %i.vz = and i32 %i.vt, 2
  %lcmp.mod1440.not.not = icmp eq i32 %i.vz, 0
  %lcmp.mod1443 = trunc i32 %i.vv to i1
  %i.wa = add nuw nsw i64 %i.vj, 1                ; 2 uses
  %min.iters.check1203 = icmp ult i32 %i.ve, 14
  %n.vec1205 = and i64 %i.wa, 4294967288          ; 5 uses
  %i.wb = trunc nuw i64 %n.vec1205 to i32
  %i.wc = shl i32 %i.wb, 1
  %i.wd = shl nuw nsw i64 %n.vec1205, 2
  %i.we = shl nuw nsw i64 %n.vec1205, 3
  %cmp.n1232 = icmp eq i64 %i.wa, %n.vec1205
  %min.iters.check1131 = icmp ult i32 %6, 8
  %min.iters.check1132 = icmp ult i32 %6, 32
  %i.wf = and i64 %i.vs, 24
  %n.vec1134 = and i64 %i.vs, 2147483616          ; 5 uses
  %i.wg = trunc nuw nsw i64 %n.vec1134 to i32
  %i.wh = shl nuw nsw i64 %n.vec1134, 1           ; 2 uses
  %cmp.n1156 = icmp eq i64 %n.vec1134, %i.vs
  %min.epilog.iters.check = icmp eq i64 %i.wf, 0
  %n.vec1158 = and i64 %i.vs, 2147483640          ; 4 uses
  %i.wi = trunc nuw nsw i64 %n.vec1158 to i32
  %i.wj = shl nuw nsw i64 %n.vec1158, 1           ; 2 uses
  %cmp.n1166 = icmp eq i64 %n.vec1158, %i.vs
  br label %.preheader193

bb.p:                                             ; preds = %._crit_edge493
  %indvars.iv.next766 = add nuw nsw i64 %indvars.iv765, 2 ; 3 uses
  %i.wk = icmp slt i64 %indvars.iv.next766, %invariant.op
  br i1 %i.wk, label %.preheader202, label %.preheader194.loopexit, !llvm.loop !306

bb.q:                                             ; preds = %.preheader202, %._crit_edge493
  %indvars.iv760 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next761, %._crit_edge493 ] ; 3 uses
  %.7496 = phi ptr [ %.6498, %.preheader202 ], [ %.11.lcssa, %._crit_edge493 ] ; 2 uses
  %i.wl = load ptr, ptr %0, align 8, !tbaa !27
  %i.wm = load i32, ptr %i.ae, align 4, !tbaa !16
  %i.wn = sext i32 %i.wm to i64
  %i.wo = mul nsw i64 %indvars.iv760, %i.wn
  %i.wp = load i64, ptr %i.af, align 8, !tbaa !28
  %i.wq = mul i64 %i.wo, %i.wp
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.wq
  %i.ws = getelementptr inbounds [2 x i8], ptr %i.wr, i64 %i.ut ; 27 uses
  %i.wt = load ptr, ptr %1, align 8, !tbaa !27
  %i.wu = load i32, ptr %i.ag, align 4, !tbaa !16
  %i.wv = sext i32 %i.wu to i64
  %i.ww = mul nsw i64 %indvars.iv760, %i.wv
  %i.wx = load i64, ptr %i.ah, align 8, !tbaa !28
  %i.wy = mul i64 %i.ww, %i.wx
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wt, i64 %i.wy ; 2 uses
  br i1 %i.ai, label %.lr.ph397, label %.preheader201

.preheader201:                                    ; preds = %bb.u, %bb.q
  %.0733.lcssa = phi i32 [ 0, %bb.q ], [ %i.ao, %bb.u ] ; 3 uses
  %.0721.lcssa = phi ptr [ %i.wz, %bb.q ], [ %.2723.lcssa, %bb.u ] ; 2 uses
  %.8.lcssa = phi ptr [ %.7496, %bb.q ], [ %i.aap, %bb.u ] ; 2 uses
  %i.xa = or disjoint i32 %.0733.lcssa, 3
  %i.xb = icmp slt i32 %i.xa, %4
  br i1 %i.xb, label %.lr.ph426, label %.preheader200

.lr.ph397:                                        ; preds = %bb.q, %bb.u
  %.8395 = phi ptr [ %i.aap, %bb.u ], [ %.7496, %bb.q ] ; 9 uses
  %.0721394 = phi ptr [ %.2723.lcssa, %bb.u ], [ %i.wz, %bb.q ] ; 2 uses
  %.0733393 = phi i32 [ %i.aaq, %bb.u ], [ 0, %bb.q ]
  br i1 %i.aj, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph397
  %i.xc = load <2 x i64>, ptr %.8395, align 1, !tbaa !29
  %i.xd = getelementptr inbounds nuw i8, ptr %.8395, i64 16
  %i.xe = load <2 x i64>, ptr %i.xd, align 1, !tbaa !29
  %i.xf = getelementptr inbounds nuw i8, ptr %.8395, i64 32
  %i.xg = load <2 x i64>, ptr %i.xf, align 1, !tbaa !29
  %i.xh = getelementptr inbounds nuw i8, ptr %.8395, i64 48
  %i.xi = load <2 x i64>, ptr %i.xh, align 1, !tbaa !29
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph397, %bb.r
  %.0751 = phi <2 x i64> [ %i.xi, %bb.r ], [ zeroinitializer, %.lr.ph397 ] ; 2 uses
  %.0747 = phi <2 x i64> [ %i.xg, %bb.r ], [ zeroinitializer, %.lr.ph397 ] ; 2 uses
  %.0743 = phi <2 x i64> [ %i.xe, %bb.r ], [ zeroinitializer, %.lr.ph397 ] ; 2 uses
  %.0739 = phi <2 x i64> [ %i.xc, %bb.r ], [ zeroinitializer, %.lr.ph397 ] ; 2 uses
  br i1 %i.ak, label %.lr.ph371.preheader, label %.preheader198

.lr.ph371.preheader:                              ; preds = %bb.s
  %i.xj = bitcast <2 x i64> %.0739 to <4 x i32>
  %i.xk = bitcast <2 x i64> %.0743 to <4 x i32>
  %i.xl = bitcast <2 x i64> %.0747 to <4 x i32>
  %i.xm = bitcast <2 x i64> %.0751 to <4 x i32>
  br label %.lr.ph371

.preheader198.loopexit:                           ; preds = %.lr.ph371
  %i.xn = bitcast <4 x i32> %i.yp to <2 x i64>
  %i.xo = bitcast <4 x i32> %i.yn to <2 x i64>
  %i.xp = bitcast <4 x i32> %i.yj to <2 x i64>
  %i.xq = bitcast <4 x i32> %i.yh to <2 x i64>
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.loopexit, %bb.s
  %.0755.lcssa = phi i32 [ 0, %bb.s ], [ %i.an, %.preheader198.loopexit ] ; 2 uses
  %.1752.lcssa = phi <2 x i64> [ %.0751, %bb.s ], [ %i.xn, %.preheader198.loopexit ] ; 2 uses
  %.1748.lcssa = phi <2 x i64> [ %.0747, %bb.s ], [ %i.xo, %.preheader198.loopexit ] ; 2 uses
  %.1744.lcssa = phi <2 x i64> [ %.0743, %bb.s ], [ %i.xp, %.preheader198.loopexit ] ; 2 uses
  %.1740.lcssa = phi <2 x i64> [ %.0739, %bb.s ], [ %i.xq, %.preheader198.loopexit ] ; 2 uses
  %.0737.lcssa = phi ptr [ %i.ws, %bb.s ], [ %i.yq, %.preheader198.loopexit ]
  %.1722.lcssa = phi ptr [ %.0721394, %bb.s ], [ %i.yr, %.preheader198.loopexit ] ; 2 uses
  %i.xr = icmp slt i32 %.0755.lcssa, %6
  br i1 %i.xr, label %.lr.ph386.preheader, label %._crit_edge387

.lr.ph386.preheader:                              ; preds = %.preheader198
  %i.xs = bitcast <2 x i64> %.1740.lcssa to <4 x i32>
  %i.xt = bitcast <2 x i64> %.1744.lcssa to <4 x i32>
  %i.xu = bitcast <2 x i64> %.1748.lcssa to <4 x i32>
  %i.xv = bitcast <2 x i64> %.1752.lcssa to <4 x i32>
  br label %.lr.ph386

.lr.ph371:                                        ; preds = %.lr.ph371.preheader, %.lr.ph371
  %.1722369 = phi ptr [ %i.yr, %.lr.ph371 ], [ %.0721394, %.lr.ph371.preheader ] ; 3 uses
  %.0737368 = phi ptr [ %i.yq, %.lr.ph371 ], [ %i.ws, %.lr.ph371.preheader ] ; 3 uses
  %.1740367 = phi <4 x i32> [ %i.yh, %.lr.ph371 ], [ %i.xj, %.lr.ph371.preheader ]
  %.1744366 = phi <4 x i32> [ %i.yj, %.lr.ph371 ], [ %i.xk, %.lr.ph371.preheader ]
  %.1748365 = phi <4 x i32> [ %i.yn, %.lr.ph371 ], [ %i.xl, %.lr.ph371.preheader ]
  %.1752364 = phi <4 x i32> [ %i.yp, %.lr.ph371 ], [ %i.xm, %.lr.ph371.preheader ]
  %.0755363 = phi i32 [ %i.ys, %.lr.ph371 ], [ 0, %.lr.ph371.preheader ]
  %i.xw = load float, ptr %.0737368, align 1, !tbaa !29
  %i.xx = insertelement <4 x float> poison, float %i.xw, i64 0
  %i.xy = getelementptr inbounds nuw i8, ptr %.0737368, i64 4
  %i.xz = load float, ptr %i.xy, align 1, !tbaa !29
  %i.ya = insertelement <4 x float> poison, float %i.xz, i64 0
  %i.yb = load <8 x i16>, ptr %.1722369, align 1, !tbaa !29 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.1722369, i64 16
  %i.yd = load <8 x i16>, ptr %i.yc, align 1, !tbaa !29 ; 2 uses
  %i.ye = bitcast <4 x float> %i.xx to <8 x i16>
  %i.yf = shufflevector <8 x i16> %i.ye, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.yg = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yf, <8 x i16> %i.yb)
  %i.yh = add <4 x i32> %i.yg, %.1740367          ; 2 uses
  %i.yi = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yf, <8 x i16> %i.yd)
  %i.yj = add <4 x i32> %i.yi, %.1744366          ; 2 uses
  %i.yk = bitcast <4 x float> %i.ya to <8 x i16>
  %i.yl = shufflevector <8 x i16> %i.yk, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.ym = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yl, <8 x i16> %i.yb)
  %i.yn = add <4 x i32> %i.ym, %.1748365          ; 2 uses
  %i.yo = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.yl, <8 x i16> %i.yd)
  %i.yp = add <4 x i32> %i.yo, %.1752364          ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.0737368, i64 8 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.1722369, i64 32 ; 2 uses
  %i.ys = add nuw nsw i32 %.0755363, 2            ; 2 uses
  %i.yt = or disjoint i32 %i.ys, 1
  %i.yu = icmp slt i32 %i.yt, %6
  br i1 %i.yu, label %.lr.ph371, label %.preheader198.loopexit, !llvm.loop !307

.lr.ph386:                                        ; preds = %.lr.ph386.preheader, %.lr.ph386
  %.2723385 = phi ptr [ %i.zu, %.lr.ph386 ], [ %.1722.lcssa, %.lr.ph386.preheader ] ; 2 uses
  %.1738384 = phi ptr [ %i.zt, %.lr.ph386 ], [ %.0737.lcssa, %.lr.ph386.preheader ] ; 3 uses
  %.2741383 = phi <4 x i32> [ %i.zm, %.lr.ph386 ], [ %i.xs, %.lr.ph386.preheader ]
  %.2745382 = phi <4 x i32> [ %i.zo, %.lr.ph386 ], [ %i.xt, %.lr.ph386.preheader ]
  %.2749381 = phi <4 x i32> [ %i.zq, %.lr.ph386 ], [ %i.xu, %.lr.ph386.preheader ]
  %.2753380 = phi <4 x i32> [ %i.zs, %.lr.ph386 ], [ %i.xv, %.lr.ph386.preheader ]
  %.1756379 = phi i32 [ %i.zv, %.lr.ph386 ], [ %.0755.lcssa, %.lr.ph386.preheader ]
  %i.yv = load <8 x i16>, ptr %.2723385, align 16, !tbaa !29 ; 4 uses
  %i.yw = load i16, ptr %.1738384, align 2, !tbaa !41
  %i.yx = insertelement <8 x i16> poison, i16 %i.yw, i64 0
  %i.yy = shufflevector <8 x i16> %i.yx, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %.1738384, i64 2
  %i.za = load i16, ptr %i.yz, align 2, !tbaa !41
  %i.zb = insertelement <8 x i16> poison, i16 %i.za, i64 0
  %i.zc = shufflevector <8 x i16> %i.zb, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.zd = mul <8 x i16> %i.yy, %i.yv              ; 2 uses
  %i.ze = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.yy, <8 x i16> %i.yv) ; 2 uses
  %i.zf = mul <8 x i16> %i.zc, %i.yv              ; 2 uses
  %i.zg = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.zc, <8 x i16> %i.yv) ; 2 uses
  %i.zh = shufflevector <8 x i16> %i.zd, <8 x i16> %i.ze, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zi = shufflevector <8 x i16> %i.zd, <8 x i16> %i.ze, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.zj = shufflevector <8 x i16> %i.zf, <8 x i16> %i.zg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.zk = shufflevector <8 x i16> %i.zf, <8 x i16> %i.zg, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.zl = bitcast <8 x i16> %i.zh to <4 x i32>
  %i.zm = add <4 x i32> %.2741383, %i.zl          ; 2 uses
  %i.zn = bitcast <8 x i16> %i.zi to <4 x i32>
  %i.zo = add <4 x i32> %.2745382, %i.zn          ; 2 uses
  %i.zp = bitcast <8 x i16> %i.zj to <4 x i32>
  %i.zq = add <4 x i32> %.2749381, %i.zp          ; 2 uses
  %i.zr = bitcast <8 x i16> %i.zk to <4 x i32>
  %i.zs = add <4 x i32> %.2753380, %i.zr          ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %.1738384, i64 4
  %i.zu = getelementptr inbounds nuw i8, ptr %.2723385, i64 16 ; 2 uses
  %i.zv = add nuw nsw i32 %.1756379, 1            ; 2 uses
  %exitcond752.not = icmp eq i32 %i.zv, %6
  br i1 %exitcond752.not, label %._crit_edge387.loopexit, label %.lr.ph386, !llvm.loop !308

._crit_edge387.loopexit:                          ; preds = %.lr.ph386
  %i.zw = bitcast <4 x i32> %i.zs to <2 x i64>
  %i.zx = bitcast <4 x i32> %i.zq to <2 x i64>
  %i.zy = bitcast <4 x i32> %i.zo to <2 x i64>
  %i.zz = bitcast <4 x i32> %i.zm to <2 x i64>
  br label %._crit_edge387

._crit_edge387:                                   ; preds = %._crit_edge387.loopexit, %.preheader198
  %.2753.lcssa = phi <2 x i64> [ %.1752.lcssa, %.preheader198 ], [ %i.zw, %._crit_edge387.loopexit ] ; 2 uses
  %.2749.lcssa = phi <2 x i64> [ %.1748.lcssa, %.preheader198 ], [ %i.zx, %._crit_edge387.loopexit ] ; 2 uses
  %.2745.lcssa = phi <2 x i64> [ %.1744.lcssa, %.preheader198 ], [ %i.zy, %._crit_edge387.loopexit ] ; 2 uses
  %.2741.lcssa = phi <2 x i64> [ %.1740.lcssa, %.preheader198 ], [ %i.zz, %._crit_edge387.loopexit ] ; 2 uses
  %.2723.lcssa = phi ptr [ %.1722.lcssa, %.preheader198 ], [ %i.zu, %._crit_edge387.loopexit ] ; 2 uses
  br i1 %7, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge387
  %i.aaa = bitcast <2 x i64> %.2741.lcssa to <4 x i32> ; 2 uses
  %i.aab = bitcast <2 x i64> %.2749.lcssa to <4 x i32> ; 2 uses
  %i.aac = shufflevector <4 x i32> %i.aaa, <4 x i32> %i.aab, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aad = bitcast <4 x i32> %i.aac to <2 x i64>
  %i.aae = shufflevector <4 x i32> %i.aaa, <4 x i32> %i.aab, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aaf = bitcast <4 x i32> %i.aae to <2 x i64>
  %i.aag = bitcast <2 x i64> %.2745.lcssa to <4 x i32> ; 2 uses
  %i.aah = bitcast <2 x i64> %.2753.lcssa to <4 x i32> ; 2 uses
  %i.aai = shufflevector <4 x i32> %i.aag, <4 x i32> %i.aah, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aaj = bitcast <4 x i32> %i.aai to <2 x i64>
  %i.aak = shufflevector <4 x i32> %i.aag, <4 x i32> %i.aah, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aal = bitcast <4 x i32> %i.aak to <2 x i64>
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge387
  %.3754 = phi <2 x i64> [ %i.aal, %bb.t ], [ %.2753.lcssa, %._crit_edge387 ]
  %.3750 = phi <2 x i64> [ %i.aaj, %bb.t ], [ %.2749.lcssa, %._crit_edge387 ]
  %.3746 = phi <2 x i64> [ %i.aaf, %bb.t ], [ %.2745.lcssa, %._crit_edge387 ]
  %.3742 = phi <2 x i64> [ %i.aad, %bb.t ], [ %.2741.lcssa, %._crit_edge387 ]
  store <2 x i64> %.3742, ptr %.8395, align 1, !tbaa !29
  %i.aam = getelementptr inbounds nuw i8, ptr %.8395, i64 16
  store <2 x i64> %.3746, ptr %i.aam, align 1, !tbaa !29
  %i.aan = getelementptr inbounds nuw i8, ptr %.8395, i64 32
  store <2 x i64> %.3750, ptr %i.aan, align 1, !tbaa !29
  %i.aao = getelementptr inbounds nuw i8, ptr %.8395, i64 48
  store <2 x i64> %.3754, ptr %i.aao, align 1, !tbaa !29
  %i.aap = getelementptr inbounds nuw i8, ptr %.8395, i64 64 ; 2 uses
  %i.aaq = add nuw nsw i32 %.0733393, 8           ; 2 uses
  %i.aar = or disjoint i32 %i.aaq, 7
  %i.aas = icmp slt i32 %i.aar, %4
  br i1 %i.aas, label %.lr.ph397, label %.preheader201, !llvm.loop !309

.preheader200:                                    ; preds = %._crit_edge419, %.preheader201
  %.1734.lcssa = phi i32 [ %.0733.lcssa, %.preheader201 ], [ %i.aej, %._crit_edge419 ] ; 3 uses
  %.3724.lcssa = phi ptr [ %.0721.lcssa, %.preheader201 ], [ %.5726.lcssa, %._crit_edge419 ] ; 2 uses
  %.9.lcssa = phi ptr [ %.8.lcssa, %.preheader201 ], [ %i.aei, %._crit_edge419 ] ; 2 uses
  %i.aat = or disjoint i32 %.1734.lcssa, 1
  %i.aau = icmp slt i32 %i.aat, %4
  br i1 %i.aau, label %.lr.ph463.preheader, label %.preheader199

.lr.ph463.preheader:                              ; preds = %.preheader200
  %i.aav = getelementptr i8, ptr %i.ws, i64 %i.be ; 2 uses
  br label %.lr.ph463

.lr.ph426:                                        ; preds = %.preheader201, %._crit_edge419
  %.9425 = phi ptr [ %i.aei, %._crit_edge419 ], [ %.8.lcssa, %.preheader201 ] ; 5 uses
  %.3724424 = phi ptr [ %.5726.lcssa, %._crit_edge419 ], [ %.0721.lcssa, %.preheader201 ] ; 4 uses
  %.1734423 = phi i32 [ %i.aej, %._crit_edge419 ], [ %.0733.lcssa, %.preheader201 ]
  br i1 %i.aj, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph426
  %i.aaw = load <2 x i64>, ptr %.9425, align 1, !tbaa !29
  %i.aax = getelementptr inbounds nuw i8, ptr %.9425, i64 16
  %i.aay = load <2 x i64>, ptr %i.aax, align 1, !tbaa !29
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph426, %bb.v
  %.0763 = phi <2 x i64> [ %i.aay, %bb.v ], [ zeroinitializer, %.lr.ph426 ] ; 2 uses
  %.0759 = phi <2 x i64> [ %i.aaw, %bb.v ], [ zeroinitializer, %.lr.ph426 ] ; 2 uses
  br i1 %i.ak, label %.lr.ph407.preheader, label %.preheader197

.lr.ph407.preheader:                              ; preds = %bb.w
  %i.aaz = bitcast <2 x i64> %.0759 to <4 x i32>  ; 2 uses
  %i.aba = bitcast <2 x i64> %.0763 to <4 x i32>  ; 2 uses
  br i1 %i.az, label %.lr.ph407.epil.preheader, label %.lr.ph407

.preheader197.loopexit.unr-lcssa:                 ; preds = %.lr.ph407
  br i1 %lcmp.mod1411.not.not, label %.lr.ph407.epil.preheader, label %.preheader197.loopexit

.lr.ph407.epil.preheader:                         ; preds = %.preheader197.loopexit.unr-lcssa, %.lr.ph407.preheader
  %.4725405.epil.init = phi ptr [ %.3724424, %.lr.ph407.preheader ], [ %i.adb, %.preheader197.loopexit.unr-lcssa ]
  %.0757404.epil.init = phi ptr [ %i.ws, %.lr.ph407.preheader ], [ %i.ada, %.preheader197.loopexit.unr-lcssa ] ; 3 uses
  %.1760403.epil.init = phi <4 x i32> [ %i.aaz, %.lr.ph407.preheader ], [ %i.acv, %.preheader197.loopexit.unr-lcssa ]
  %.1764402.epil.init = phi <4 x i32> [ %i.aba, %.lr.ph407.preheader ], [ %i.acz, %.preheader197.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1415)
  %i.abb = load float, ptr %.0757404.epil.init, align 1, !tbaa !29
  %i.abc = insertelement <4 x float> poison, float %i.abb, i64 0
  %i.abd = getelementptr inbounds nuw i8, ptr %.0757404.epil.init, i64 4
  %i.abe = load float, ptr %i.abd, align 1, !tbaa !29
  %i.abf = insertelement <4 x float> poison, float %i.abe, i64 0
  %i.abg = load <8 x i16>, ptr %.4725405.epil.init, align 1, !tbaa !29 ; 2 uses
  %i.abh = bitcast <4 x float> %i.abc to <8 x i16>
  %i.abi = shufflevector <8 x i16> %i.abh, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.abj = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.abi, <8 x i16> %i.abg)
  %i.abk = add <4 x i32> %i.abj, %.1760403.epil.init
  %i.abl = bitcast <4 x float> %i.abf to <8 x i16>
  %i.abm = shufflevector <8 x i16> %i.abl, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.abn = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.abm, <8 x i16> %i.abg)
  %i.abo = add <4 x i32> %i.abn, %.1764402.epil.init
  %i.abp = getelementptr inbounds nuw i8, ptr %.0757404.epil.init, i64 8
  br label %.preheader197.loopexit

.preheader197.loopexit:                           ; preds = %.preheader197.loopexit.unr-lcssa, %.lr.ph407.epil.preheader
  %.lcssa1295 = phi <4 x i32> [ %i.acv, %.preheader197.loopexit.unr-lcssa ], [ %i.abk, %.lr.ph407.epil.preheader ]
  %.lcssa1294 = phi <4 x i32> [ %i.acz, %.preheader197.loopexit.unr-lcssa ], [ %i.abo, %.lr.ph407.epil.preheader ]
  %.lcssa1293 = phi ptr [ %i.ada, %.preheader197.loopexit.unr-lcssa ], [ %i.abp, %.lr.ph407.epil.preheader ]
  %i.abq = bitcast <4 x i32> %.lcssa1294 to <2 x i64>
  %i.abr = bitcast <4 x i32> %.lcssa1295 to <2 x i64>
  %i.abs = getelementptr i8, ptr %.3724424, i64 %i.ar
  %scevgep753 = getelementptr i8, ptr %i.abs, i64 16
  br label %.preheader197

.preheader197:                                    ; preds = %.preheader197.loopexit, %bb.w
  %.0767.lcssa = phi i32 [ 0, %bb.w ], [ %i.an, %.preheader197.loopexit ] ; 2 uses
  %.1764.lcssa = phi <2 x i64> [ %.0763, %bb.w ], [ %i.abq, %.preheader197.loopexit ] ; 2 uses
  %.1760.lcssa = phi <2 x i64> [ %.0759, %bb.w ], [ %i.abr, %.preheader197.loopexit ] ; 2 uses
  %.0757.lcssa = phi ptr [ %i.ws, %bb.w ], [ %.lcssa1293, %.preheader197.loopexit ]
  %.4725.lcssa = phi ptr [ %.3724424, %bb.w ], [ %scevgep753, %.preheader197.loopexit ] ; 2 uses
  %i.abt = icmp slt i32 %.0767.lcssa, %6
  br i1 %i.abt, label %.lr.ph418.preheader, label %._crit_edge419

.lr.ph418.preheader:                              ; preds = %.preheader197
  %i.abu = bitcast <2 x i64> %.1760.lcssa to <4 x i32>
  %i.abv = bitcast <2 x i64> %.1764.lcssa to <4 x i32>
  br label %.lr.ph418

.lr.ph407:                                        ; preds = %.lr.ph407.preheader, %.lr.ph407
  %.4725405 = phi ptr [ %i.adb, %.lr.ph407 ], [ %.3724424, %.lr.ph407.preheader ] ; 3 uses
  %.0757404 = phi ptr [ %i.ada, %.lr.ph407 ], [ %i.ws, %.lr.ph407.preheader ] ; 5 uses
  %.1760403 = phi <4 x i32> [ %i.acv, %.lr.ph407 ], [ %i.aaz, %.lr.ph407.preheader ]
  %.1764402 = phi <4 x i32> [ %i.acz, %.lr.ph407 ], [ %i.aba, %.lr.ph407.preheader ]
  %niter1417 = phi i32 [ %niter1417.next.1, %.lr.ph407 ], [ 0, %.lr.ph407.preheader ]
  %i.abw = load float, ptr %.0757404, align 1, !tbaa !29
  %i.abx = insertelement <4 x float> poison, float %i.abw, i64 0
  %i.aby = getelementptr inbounds nuw i8, ptr %.0757404, i64 4
  %i.abz = load float, ptr %i.aby, align 1, !tbaa !29
  %i.aca = insertelement <4 x float> poison, float %i.abz, i64 0
  %i.acb = load <8 x i16>, ptr %.4725405, align 1, !tbaa !29 ; 2 uses
  %i.acc = bitcast <4 x float> %i.abx to <8 x i16>
  %i.acd = shufflevector <8 x i16> %i.acc, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ace = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.acd, <8 x i16> %i.acb)
  %i.acf = add <4 x i32> %i.ace, %.1760403
  %i.acg = bitcast <4 x float> %i.aca to <8 x i16>
  %i.ach = shufflevector <8 x i16> %i.acg, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aci = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ach, <8 x i16> %i.acb)
  %i.acj = add <4 x i32> %i.aci, %.1764402
  %i.ack = getelementptr inbounds nuw i8, ptr %.0757404, i64 8
  %i.acl = getelementptr inbounds nuw i8, ptr %.4725405, i64 16
  %i.acm = load float, ptr %i.ack, align 1, !tbaa !29
  %i.acn = insertelement <4 x float> poison, float %i.acm, i64 0
  %i.aco = getelementptr inbounds nuw i8, ptr %.0757404, i64 12
  %i.acp = load float, ptr %i.aco, align 1, !tbaa !29
  %i.acq = insertelement <4 x float> poison, float %i.acp, i64 0
  %i.acr = load <8 x i16>, ptr %i.acl, align 1, !tbaa !29 ; 2 uses
  %i.acs = bitcast <4 x float> %i.acn to <8 x i16>
  %i.act = shufflevector <8 x i16> %i.acs, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.acu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.act, <8 x i16> %i.acr)
  %i.acv = add <4 x i32> %i.acu, %i.acf           ; 3 uses
  %i.acw = bitcast <4 x float> %i.acq to <8 x i16>
  %i.acx = shufflevector <8 x i16> %i.acw, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.acy = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.acx, <8 x i16> %i.acr)
  %i.acz = add <4 x i32> %i.acy, %i.acj           ; 3 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %.0757404, i64 16 ; 3 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %.4725405, i64 32 ; 2 uses
  %niter1417.next.1 = add nuw nsw i32 %niter1417, 2 ; 2 uses
  %niter1417.ncmp.1.not = icmp eq i32 %niter1417.next.1, %unroll_iter1416
  br i1 %niter1417.ncmp.1.not, label %.preheader197.loopexit.unr-lcssa, label %.lr.ph407, !llvm.loop !310

.lr.ph418:                                        ; preds = %.lr.ph418.preheader, %.lr.ph418
  %.5726417 = phi ptr [ %i.adx, %.lr.ph418 ], [ %.4725.lcssa, %.lr.ph418.preheader ] ; 2 uses
  %.1758416 = phi ptr [ %i.adw, %.lr.ph418 ], [ %.0757.lcssa, %.lr.ph418.preheader ] ; 3 uses
  %.2761415 = phi <4 x i32> [ %i.adt, %.lr.ph418 ], [ %i.abu, %.lr.ph418.preheader ]
  %.2765414 = phi <4 x i32> [ %i.adv, %.lr.ph418 ], [ %i.abv, %.lr.ph418.preheader ]
  %.1768413 = phi i32 [ %i.ady, %.lr.ph418 ], [ %.0767.lcssa, %.lr.ph418.preheader ]
  %i.adc = load i16, ptr %.1758416, align 2, !tbaa !41
  %i.add = insertelement <8 x i16> poison, i16 %i.adc, i64 0
  %i.ade = shufflevector <8 x i16> %i.add, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.1758416, i64 2
  %i.adg = load i16, ptr %i.adf, align 2, !tbaa !41
  %i.adh = insertelement <8 x i16> poison, i16 %i.adg, i64 0
  %i.adi = shufflevector <8 x i16> %i.adh, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.adj = load i64, ptr %.5726417, align 1, !tbaa !29
  %i.adk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.adj, i64 0
  %i.adl = bitcast <2 x i64> %i.adk to <8 x i16>  ; 4 uses
  %i.adm = mul <8 x i16> %i.ade, %i.adl
  %i.adn = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.ade, <8 x i16> %i.adl)
  %i.ado = mul <8 x i16> %i.adi, %i.adl
  %i.adp = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.adi, <8 x i16> %i.adl)
  %i.adq = shufflevector <8 x i16> %i.adm, <8 x i16> %i.adn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.adr = shufflevector <8 x i16> %i.ado, <8 x i16> %i.adp, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ads = bitcast <8 x i16> %i.adq to <4 x i32>
  %i.adt = add <4 x i32> %.2761415, %i.ads        ; 2 uses
  %i.adu = bitcast <8 x i16> %i.adr to <4 x i32>
  %i.adv = add <4 x i32> %.2765414, %i.adu        ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %.1758416, i64 4
  %i.adx = getelementptr inbounds nuw i8, ptr %.5726417, i64 8 ; 2 uses
  %i.ady = add nuw nsw i32 %.1768413, 1           ; 2 uses
  %exitcond754.not = icmp eq i32 %i.ady, %6
  br i1 %exitcond754.not, label %._crit_edge419.loopexit, label %.lr.ph418, !llvm.loop !311

._crit_edge419.loopexit:                          ; preds = %.lr.ph418
  %i.adz = bitcast <4 x i32> %i.adv to <2 x i64>
  %i.aea = bitcast <4 x i32> %i.adt to <2 x i64>
  br label %._crit_edge419

._crit_edge419:                                   ; preds = %._crit_edge419.loopexit, %.preheader197
  %.2765.lcssa = phi <2 x i64> [ %.1764.lcssa, %.preheader197 ], [ %i.adz, %._crit_edge419.loopexit ] ; 2 uses
  %.2761.lcssa = phi <2 x i64> [ %.1760.lcssa, %.preheader197 ], [ %i.aea, %._crit_edge419.loopexit ] ; 2 uses
  %.5726.lcssa = phi ptr [ %.4725.lcssa, %.preheader197 ], [ %i.adx, %._crit_edge419.loopexit ] ; 2 uses
  %i.aeb = bitcast <2 x i64> %.2761.lcssa to <4 x i32> ; 2 uses
  %i.aec = bitcast <2 x i64> %.2765.lcssa to <4 x i32> ; 2 uses
  %i.aed = shufflevector <4 x i32> %i.aeb, <4 x i32> %i.aec, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.aee = bitcast <4 x i32> %i.aed to <2 x i64>
  %i.aef = shufflevector <4 x i32> %i.aeb, <4 x i32> %i.aec, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.aeg = bitcast <4 x i32> %i.aef to <2 x i64>
  %.3766 = select i1 %7, <2 x i64> %i.aeg, <2 x i64> %.2765.lcssa
  %.3762 = select i1 %7, <2 x i64> %i.aee, <2 x i64> %.2761.lcssa
  store <2 x i64> %.3762, ptr %.9425, align 1, !tbaa !29
  %i.aeh = getelementptr inbounds nuw i8, ptr %.9425, i64 16
  store <2 x i64> %.3766, ptr %i.aeh, align 1, !tbaa !29
  %i.aei = getelementptr inbounds nuw i8, ptr %.9425, i64 32 ; 2 uses
  %i.aej = add nuw nsw i32 %.1734423, 4           ; 3 uses
  %i.aek = or disjoint i32 %i.aej, 3
  %i.ael = icmp slt i32 %i.aek, %4
  br i1 %i.ael, label %.lr.ph426, label %.preheader200, !llvm.loop !312

.preheader199:                                    ; preds = %._crit_edge454, %.preheader200
  %.2735.lcssa = phi i32 [ %.1734.lcssa, %.preheader200 ], [ %i.alk, %._crit_edge454 ] ; 2 uses
  %.6727.lcssa = phi ptr [ %.3724.lcssa, %.preheader200 ], [ %.8729.lcssa, %._crit_edge454 ]
  %.10.lcssa = phi ptr [ %.9.lcssa, %.preheader200 ], [ %i.alj, %._crit_edge454 ] ; 2 uses
  %i.aem = icmp slt i32 %.2735.lcssa, %4
  br i1 %i.aem, label %.lr.ph492.preheader, label %._crit_edge493

.lr.ph492.preheader:                              ; preds = %.preheader199
  %i.aen = getelementptr i8, ptr %i.ws, i64 %i.bi ; 2 uses
  br label %.lr.ph492

.lr.ph463:                                        ; preds = %.lr.ph463.preheader, %._crit_edge454
  %.10462 = phi ptr [ %i.alj, %._crit_edge454 ], [ %.9.lcssa, %.lr.ph463.preheader ] ; 9 uses
  %.6727461 = phi ptr [ %.8729.lcssa, %._crit_edge454 ], [ %.3724.lcssa, %.lr.ph463.preheader ] ; 12 uses
  %.2735460 = phi i32 [ %i.alk, %._crit_edge454 ], [ %.1734.lcssa, %.lr.ph463.preheader ]
  br i1 %i.aj, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph463
  %i.aeo = load i32, ptr %.10462, align 4, !tbaa !10
  %i.aep = getelementptr inbounds nuw i8, ptr %.10462, i64 4
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !10
  %i.aer = getelementptr inbounds nuw i8, ptr %.10462, i64 8
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !10
  %i.aet = getelementptr inbounds nuw i8, ptr %.10462, i64 12
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph463, %bb.x
  %.0716 = phi i32 [ %i.aeo, %bb.x ], [ 0, %.lr.ph463 ] ; 3 uses
  %.0713 = phi i32 [ %i.aeq, %bb.x ], [ 0, %.lr.ph463 ] ; 3 uses
  %.0710 = phi i32 [ %i.aes, %bb.x ], [ 0, %.lr.ph463 ] ; 3 uses
  %.0707 = phi i32 [ %i.aeu, %bb.x ], [ 0, %.lr.ph463 ] ; 3 uses
  br i1 %i.ak, label %.lr.ph438.preheader, label %.preheader196

.lr.ph438.preheader:                              ; preds = %bb.y
  br i1 %min.iters.check1103, label %.lr.ph438.preheader1280, label %vector.ph1104

vector.ph1104:                                    ; preds = %.lr.ph438.preheader
  %i.aev = getelementptr i8, ptr %.6727461, i64 %i.be
  %i.aew = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0707, i64 0
  %i.aex = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0710, i64 0
  %i.aey = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0713, i64 0
  %i.aez = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0716, i64 0
  br label %vector.body1106

vector.body1106:                                  ; preds = %vector.body1106, %vector.ph1104
  %index1107 = phi i64 [ 0, %vector.ph1104 ], [ %index.next1120, %vector.body1106 ] ; 2 uses
  %vec.phi1108 = phi <4 x i32> [ %i.aew, %vector.ph1104 ], [ %partial.reduce1134, %vector.body1106 ]
  %vec.phi1109 = phi <4 x i32> [ %i.aex, %vector.ph1104 ], [ %partial.reduce1132, %vector.body1106 ]
  %vec.phi1110 = phi <4 x i32> [ %i.aey, %vector.ph1104 ], [ %partial.reduce1130, %vector.body1106 ]
  %vec.phi1111 = phi <4 x i32> [ %i.aez, %vector.ph1104 ], [ %partial.reduce1128, %vector.body1106 ]
  %i.afa = shl i64 %index1107, 3                  ; 9 uses
  %8 = or disjoint i64 %i.afa, 8                  ; 2 uses
  %9 = or disjoint i64 %i.afa, 16                 ; 2 uses
  %10 = or disjoint i64 %i.afa, 24                ; 2 uses
  %11 = or disjoint i64 %i.afa, 32                ; 2 uses
  %i.afb = or disjoint i64 %i.afa, 40             ; 2 uses
  %i.afc = or disjoint i64 %i.afa, 48             ; 2 uses
  %i.afd = or disjoint i64 %i.afa, 56             ; 2 uses
  %next.gep1112 = getelementptr i8, ptr %i.ws, i64 %i.afa ; 4 uses
  %next.gep1113 = getelementptr i8, ptr %i.ws, i64 %8 ; 4 uses
  %next.gep1114 = getelementptr i8, ptr %i.ws, i64 %9 ; 4 uses
  %next.gep1115 = getelementptr i8, ptr %i.ws, i64 %10 ; 4 uses
  %next.gep1116 = getelementptr i8, ptr %i.ws, i64 %11 ; 4 uses
  %next.gep1117 = getelementptr i8, ptr %i.ws, i64 %i.afb ; 4 uses
  %next.gep1118 = getelementptr i8, ptr %i.ws, i64 %i.afc ; 4 uses
  %next.gep1119 = getelementptr i8, ptr %i.ws, i64 %i.afd ; 4 uses
  %next.gep1112.a = getelementptr i8, ptr %.6727461, i64 %i.afa ; 4 uses
  %next.gep1113.a = getelementptr i8, ptr %.6727461, i64 %8 ; 4 uses
  %next.gep1114.a = getelementptr i8, ptr %.6727461, i64 %9 ; 4 uses
  %next.gep1115.a = getelementptr i8, ptr %.6727461, i64 %10 ; 4 uses
  %next.gep1116.a = getelementptr i8, ptr %.6727461, i64 %11 ; 4 uses
  %next.gep1117.a = getelementptr i8, ptr %.6727461, i64 %i.afb ; 4 uses
  %next.gep1118.a = getelementptr i8, ptr %.6727461, i64 %i.afc ; 4 uses
  %next.gep1119.a = getelementptr i8, ptr %.6727461, i64 %i.afd ; 4 uses
  %12 = load i16, ptr %next.gep1112, align 2, !tbaa !41
  %13 = load i16, ptr %next.gep1113, align 2, !tbaa !41
  %14 = load i16, ptr %next.gep1114, align 2, !tbaa !41
  %15 = load i16, ptr %next.gep1115, align 2, !tbaa !41
  %i.afe = load i16, ptr %next.gep1116, align 2, !tbaa !41
  %i.aff = load i16, ptr %next.gep1117, align 2, !tbaa !41
  %i.afg = load i16, ptr %next.gep1118, align 2, !tbaa !41
  %i.afh = load i16, ptr %next.gep1119, align 2, !tbaa !41
  %16 = insertelement <8 x i16> poison, i16 %12, i64 0
  %17 = insertelement <8 x i16> %16, i16 %13, i64 1
  %18 = insertelement <8 x i16> %17, i16 %14, i64 2
  %19 = insertelement <8 x i16> %18, i16 %15, i64 3
  %20 = insertelement <8 x i16> %19, i16 %i.afe, i64 4
  %21 = insertelement <8 x i16> %20, i16 %i.aff, i64 5
  %22 = insertelement <8 x i16> %21, i16 %i.afg, i64 6
  %23 = insertelement <8 x i16> %22, i16 %i.afh, i64 7
  %24 = load i16, ptr %next.gep1112.a, align 2, !tbaa !41
  %25 = load i16, ptr %next.gep1113.a, align 2, !tbaa !41
  %26 = load i16, ptr %next.gep1114.a, align 2, !tbaa !41
  %27 = load i16, ptr %next.gep1115.a, align 2, !tbaa !41
  %i.afi = load i16, ptr %next.gep1116.a, align 2, !tbaa !41
  %i.afj = load i16, ptr %next.gep1117.a, align 2, !tbaa !41
  %i.afk = load i16, ptr %next.gep1118.a, align 2, !tbaa !41
  %i.afl = load i16, ptr %next.gep1119.a, align 2, !tbaa !41
  %28 = insertelement <8 x i16> poison, i16 %24, i64 0
  %29 = insertelement <8 x i16> %28, i16 %25, i64 1
  %30 = insertelement <8 x i16> %29, i16 %26, i64 2
  %31 = insertelement <8 x i16> %30, i16 %27, i64 3
  %32 = insertelement <8 x i16> %31, i16 %i.afi, i64 4
  %33 = insertelement <8 x i16> %32, i16 %i.afj, i64 5
  %34 = insertelement <8 x i16> %33, i16 %i.afk, i64 6
  %35 = insertelement <8 x i16> %34, i16 %i.afl, i64 7
  %36 = sext <8 x i16> %35 to <8 x i32>           ; 2 uses
  %37 = sext <8 x i16> %23 to <8 x i32>           ; 2 uses
  %38 = mul nsw <8 x i32> %36, %37
  %partial.reduce = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1111, <8 x i32> %38)
  %39 = getelementptr inbounds nuw i8, ptr %next.gep1112, i64 2
  %40 = getelementptr inbounds nuw i8, ptr %next.gep1113, i64 2
  %41 = getelementptr inbounds nuw i8, ptr %next.gep1114, i64 2
  %42 = getelementptr inbounds nuw i8, ptr %next.gep1115, i64 2
  %i.afm = getelementptr inbounds nuw i8, ptr %next.gep1116, i64 2
  %i.afn = getelementptr inbounds nuw i8, ptr %next.gep1117, i64 2
  %i.afo = getelementptr inbounds nuw i8, ptr %next.gep1118, i64 2
  %i.afp = getelementptr inbounds nuw i8, ptr %next.gep1119, i64 2
  %43 = load i16, ptr %39, align 2, !tbaa !41
  %44 = load i16, ptr %40, align 2, !tbaa !41
  %45 = load i16, ptr %41, align 2, !tbaa !41
  %46 = load i16, ptr %42, align 2, !tbaa !41
  %i.afq = load i16, ptr %i.afm, align 2, !tbaa !41
  %i.afr = load i16, ptr %i.afn, align 2, !tbaa !41
  %i.afs = load i16, ptr %i.afo, align 2, !tbaa !41
  %i.aft = load i16, ptr %i.afp, align 2, !tbaa !41
  %47 = insertelement <8 x i16> poison, i16 %43, i64 0
  %48 = insertelement <8 x i16> %47, i16 %44, i64 1
  %49 = insertelement <8 x i16> %48, i16 %45, i64 2
  %50 = insertelement <8 x i16> %49, i16 %46, i64 3
  %51 = insertelement <8 x i16> %50, i16 %i.afq, i64 4
  %52 = insertelement <8 x i16> %51, i16 %i.afr, i64 5
  %53 = insertelement <8 x i16> %52, i16 %i.afs, i64 6
  %54 = insertelement <8 x i16> %53, i16 %i.aft, i64 7
  %55 = getelementptr inbounds nuw i8, ptr %next.gep1112.a, i64 2
  %56 = getelementptr inbounds nuw i8, ptr %next.gep1113.a, i64 2
  %57 = getelementptr inbounds nuw i8, ptr %next.gep1114.a, i64 2
  %58 = getelementptr inbounds nuw i8, ptr %next.gep1115.a, i64 2
  %i.afu = getelementptr inbounds nuw i8, ptr %next.gep1116.a, i64 2
  %i.afv = getelementptr inbounds nuw i8, ptr %next.gep1117.a, i64 2
  %i.afw = getelementptr inbounds nuw i8, ptr %next.gep1118.a, i64 2
  %i.afx = getelementptr inbounds nuw i8, ptr %next.gep1119.a, i64 2
  %59 = load i16, ptr %55, align 2, !tbaa !41
  %60 = load i16, ptr %56, align 2, !tbaa !41
  %61 = load i16, ptr %57, align 2, !tbaa !41
  %62 = load i16, ptr %58, align 2, !tbaa !41
  %i.afy = load i16, ptr %i.afu, align 2, !tbaa !41
  %i.afz = load i16, ptr %i.afv, align 2, !tbaa !41
  %i.aga = load i16, ptr %i.afw, align 2, !tbaa !41
  %i.agb = load i16, ptr %i.afx, align 2, !tbaa !41
  %63 = insertelement <8 x i16> poison, i16 %59, i64 0
  %64 = insertelement <8 x i16> %63, i16 %60, i64 1
  %65 = insertelement <8 x i16> %64, i16 %61, i64 2
  %66 = insertelement <8 x i16> %65, i16 %62, i64 3
  %67 = insertelement <8 x i16> %66, i16 %i.afy, i64 4
  %68 = insertelement <8 x i16> %67, i16 %i.afz, i64 5
  %69 = insertelement <8 x i16> %68, i16 %i.aga, i64 6
  %70 = insertelement <8 x i16> %69, i16 %i.agb, i64 7
  %71 = sext <8 x i16> %70 to <8 x i32>           ; 2 uses
  %72 = sext <8 x i16> %54 to <8 x i32>           ; 2 uses
  %73 = mul nsw <8 x i32> %71, %72
  %partial.reduce1128 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %partial.reduce, <8 x i32> %73) ; 2 uses
  %74 = getelementptr inbounds nuw i8, ptr %next.gep1112, i64 4
  %75 = getelementptr inbounds nuw i8, ptr %next.gep1113, i64 4
  %76 = getelementptr inbounds nuw i8, ptr %next.gep1114, i64 4
  %77 = getelementptr inbounds nuw i8, ptr %next.gep1115, i64 4
  %i.agc = getelementptr inbounds nuw i8, ptr %next.gep1116, i64 4
  %i.agd = getelementptr inbounds nuw i8, ptr %next.gep1117, i64 4
  %i.age = getelementptr inbounds nuw i8, ptr %next.gep1118, i64 4
  %i.agf = getelementptr inbounds nuw i8, ptr %next.gep1119, i64 4
  %78 = load i16, ptr %74, align 2, !tbaa !41
  %79 = load i16, ptr %75, align 2, !tbaa !41
  %80 = load i16, ptr %76, align 2, !tbaa !41
  %81 = load i16, ptr %77, align 2, !tbaa !41
  %i.agg = load i16, ptr %i.agc, align 2, !tbaa !41
  %i.agh = load i16, ptr %i.agd, align 2, !tbaa !41
  %i.agi = load i16, ptr %i.age, align 2, !tbaa !41
  %i.agj = load i16, ptr %i.agf, align 2, !tbaa !41
  %82 = insertelement <8 x i16> poison, i16 %78, i64 0
  %83 = insertelement <8 x i16> %82, i16 %79, i64 1
  %84 = insertelement <8 x i16> %83, i16 %80, i64 2
  %85 = insertelement <8 x i16> %84, i16 %81, i64 3
  %86 = insertelement <8 x i16> %85, i16 %i.agg, i64 4
  %87 = insertelement <8 x i16> %86, i16 %i.agh, i64 5
  %88 = insertelement <8 x i16> %87, i16 %i.agi, i64 6
  %89 = insertelement <8 x i16> %88, i16 %i.agj, i64 7
  %90 = sext <8 x i16> %89 to <8 x i32>           ; 2 uses
  %91 = mul nsw <8 x i32> %90, %36
  %partial.reduce1129 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1110, <8 x i32> %91)
  %92 = getelementptr inbounds nuw i8, ptr %next.gep1112, i64 6
  %93 = getelementptr inbounds nuw i8, ptr %next.gep1113, i64 6
  %94 = getelementptr inbounds nuw i8, ptr %next.gep1114, i64 6
  %95 = getelementptr inbounds nuw i8, ptr %next.gep1115, i64 6
  %i.agk = getelementptr inbounds nuw i8, ptr %next.gep1116, i64 6
  %i.agl = getelementptr inbounds nuw i8, ptr %next.gep1117, i64 6
  %i.agm = getelementptr inbounds nuw i8, ptr %next.gep1118, i64 6
  %i.agn = getelementptr inbounds nuw i8, ptr %next.gep1119, i64 6
  %96 = load i16, ptr %92, align 2, !tbaa !41
  %97 = load i16, ptr %93, align 2, !tbaa !41
  %98 = load i16, ptr %94, align 2, !tbaa !41
  %99 = load i16, ptr %95, align 2, !tbaa !41
  %i.ago = load i16, ptr %i.agk, align 2, !tbaa !41
  %i.agp = load i16, ptr %i.agl, align 2, !tbaa !41
  %i.agq = load i16, ptr %i.agm, align 2, !tbaa !41
  %i.agr = load i16, ptr %i.agn, align 2, !tbaa !41
  %100 = insertelement <8 x i16> poison, i16 %96, i64 0
  %101 = insertelement <8 x i16> %100, i16 %97, i64 1
  %102 = insertelement <8 x i16> %101, i16 %98, i64 2
  %103 = insertelement <8 x i16> %102, i16 %99, i64 3
  %104 = insertelement <8 x i16> %103, i16 %i.ago, i64 4
  %105 = insertelement <8 x i16> %104, i16 %i.agp, i64 5
  %106 = insertelement <8 x i16> %105, i16 %i.agq, i64 6
  %107 = insertelement <8 x i16> %106, i16 %i.agr, i64 7
  %108 = sext <8 x i16> %107 to <8 x i32>         ; 2 uses
  %109 = mul nsw <8 x i32> %108, %71
  %partial.reduce1130 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %partial.reduce1129, <8 x i32> %109) ; 2 uses
  %110 = getelementptr inbounds nuw i8, ptr %next.gep1112.a, i64 4
  %111 = getelementptr inbounds nuw i8, ptr %next.gep1113.a, i64 4
  %112 = getelementptr inbounds nuw i8, ptr %next.gep1114.a, i64 4
  %113 = getelementptr inbounds nuw i8, ptr %next.gep1115.a, i64 4
  %i.ags = getelementptr inbounds nuw i8, ptr %next.gep1116.a, i64 4
  %i.agt = getelementptr inbounds nuw i8, ptr %next.gep1117.a, i64 4
  %i.agu = getelementptr inbounds nuw i8, ptr %next.gep1118.a, i64 4
  %i.agv = getelementptr inbounds nuw i8, ptr %next.gep1119.a, i64 4
  %114 = load i16, ptr %110, align 2, !tbaa !41
  %115 = load i16, ptr %111, align 2, !tbaa !41
  %116 = load i16, ptr %112, align 2, !tbaa !41
  %117 = load i16, ptr %113, align 2, !tbaa !41
  %i.agw = load i16, ptr %i.ags, align 2, !tbaa !41
  %i.agx = load i16, ptr %i.agt, align 2, !tbaa !41
  %i.agy = load i16, ptr %i.agu, align 2, !tbaa !41
  %i.agz = load i16, ptr %i.agv, align 2, !tbaa !41
  %118 = insertelement <8 x i16> poison, i16 %114, i64 0
  %119 = insertelement <8 x i16> %118, i16 %115, i64 1
  %120 = insertelement <8 x i16> %119, i16 %116, i64 2
  %121 = insertelement <8 x i16> %120, i16 %117, i64 3
  %122 = insertelement <8 x i16> %121, i16 %i.agw, i64 4
  %123 = insertelement <8 x i16> %122, i16 %i.agx, i64 5
  %124 = insertelement <8 x i16> %123, i16 %i.agy, i64 6
  %125 = insertelement <8 x i16> %124, i16 %i.agz, i64 7
  %126 = sext <8 x i16> %125 to <8 x i32>         ; 2 uses
  %127 = mul nsw <8 x i32> %126, %37
  %partial.reduce1131 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1109, <8 x i32> %127)
  %128 = getelementptr inbounds nuw i8, ptr %next.gep1112.a, i64 6
  %129 = getelementptr inbounds nuw i8, ptr %next.gep1113.a, i64 6
  %130 = getelementptr inbounds nuw i8, ptr %next.gep1114.a, i64 6
  %131 = getelementptr inbounds nuw i8, ptr %next.gep1115.a, i64 6
  %i.aha = getelementptr inbounds nuw i8, ptr %next.gep1116.a, i64 6
  %i.ahb = getelementptr inbounds nuw i8, ptr %next.gep1117.a, i64 6
  %i.ahc = getelementptr inbounds nuw i8, ptr %next.gep1118.a, i64 6
  %i.ahd = getelementptr inbounds nuw i8, ptr %next.gep1119.a, i64 6
  %132 = load i16, ptr %128, align 2, !tbaa !41
  %133 = load i16, ptr %129, align 2, !tbaa !41
  %134 = load i16, ptr %130, align 2, !tbaa !41
  %135 = load i16, ptr %131, align 2, !tbaa !41
  %i.ahe = load i16, ptr %i.aha, align 2, !tbaa !41
  %i.ahf = load i16, ptr %i.ahb, align 2, !tbaa !41
  %i.ahg = load i16, ptr %i.ahc, align 2, !tbaa !41
  %i.ahh = load i16, ptr %i.ahd, align 2, !tbaa !41
  %136 = insertelement <8 x i16> poison, i16 %132, i64 0
  %137 = insertelement <8 x i16> %136, i16 %133, i64 1
  %138 = insertelement <8 x i16> %137, i16 %134, i64 2
  %139 = insertelement <8 x i16> %138, i16 %135, i64 3
  %140 = insertelement <8 x i16> %139, i16 %i.ahe, i64 4
  %141 = insertelement <8 x i16> %140, i16 %i.ahf, i64 5
  %142 = insertelement <8 x i16> %141, i16 %i.ahg, i64 6
  %143 = insertelement <8 x i16> %142, i16 %i.ahh, i64 7
  %144 = sext <8 x i16> %143 to <8 x i32>         ; 2 uses
  %145 = mul nsw <8 x i32> %144, %72
  %partial.reduce1132 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %partial.reduce1131, <8 x i32> %145) ; 2 uses
  %146 = mul nsw <8 x i32> %126, %90
  %partial.reduce1133 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1108, <8 x i32> %146)
  %147 = mul nsw <8 x i32> %144, %108
  %partial.reduce1134 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %partial.reduce1133, <8 x i32> %147) ; 2 uses
  %index.next1120 = add nuw i64 %index1107, 8     ; 2 uses
  %i.ahi = icmp eq i64 %index.next1120, %n.vec1105
  br i1 %i.ahi, label %middle.block1121, label %vector.body1106, !llvm.loop !313

middle.block1121:                                 ; preds = %vector.body1106
  %i.ahj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %partial.reduce1134) ; 2 uses
  %i.ahk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %partial.reduce1132) ; 2 uses
  %i.ahl = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %partial.reduce1130) ; 2 uses
  %i.ahm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %partial.reduce1128) ; 2 uses
  br i1 %cmp.n1122, label %.preheader196.loopexit, label %.lr.ph438.preheader1280

.lr.ph438.preheader1280:                          ; preds = %.lr.ph438.preheader, %middle.block1121
  %.0705436.ph = phi i32 [ 0, %.lr.ph438.preheader ], [ %i.bd, %middle.block1121 ]
  %.1708435.ph = phi i32 [ %.0707, %.lr.ph438.preheader ], [ %i.ahj, %middle.block1121 ]
  %.1711434.ph = phi i32 [ %.0710, %.lr.ph438.preheader ], [ %i.ahk, %middle.block1121 ]
  %.1714433.ph = phi i32 [ %.0713, %.lr.ph438.preheader ], [ %i.ahl, %middle.block1121 ]
  %.1717432.ph = phi i32 [ %.0716, %.lr.ph438.preheader ], [ %i.ahm, %middle.block1121 ]
  %.0719431.ph = phi ptr [ %i.ws, %.lr.ph438.preheader ], [ %i.aav, %middle.block1121 ]
  %.7728430.ph = phi ptr [ %.6727461, %.lr.ph438.preheader ], [ %i.aev, %middle.block1121 ]
  br label %.lr.ph438

.preheader196.loopexit:                           ; preds = %.lr.ph438, %middle.block1121
  %.lcssa964 = phi i32 [ %i.ahm, %middle.block1121 ], [ %i.ajh, %.lr.ph438 ]
  %.lcssa963 = phi i32 [ %i.ahl, %middle.block1121 ], [ %i.ajr, %.lr.ph438 ]
  %.lcssa962 = phi i32 [ %i.ahk, %middle.block1121 ], [ %i.akb, %.lr.ph438 ]
  %.lcssa961 = phi i32 [ %i.ahj, %middle.block1121 ], [ %i.akf, %.lr.ph438 ]
  %.lcssa960 = phi ptr [ %i.aav, %middle.block1121 ], [ %i.akg, %.lr.ph438 ]
  %i.ahn = getelementptr i8, ptr %.6727461, i64 %i.as
  %scevgep755 = getelementptr i8, ptr %i.ahn, i64 8
  br label %.preheader196

.preheader196:                                    ; preds = %.preheader196.loopexit, %bb.y
  %.7728.lcssa = phi ptr [ %.6727461, %bb.y ], [ %scevgep755, %.preheader196.loopexit ] ; 4 uses
  %.0719.lcssa = phi ptr [ %i.ws, %bb.y ], [ %.lcssa960, %.preheader196.loopexit ] ; 3 uses
  %.1717.lcssa = phi i32 [ %.0716, %bb.y ], [ %.lcssa964, %.preheader196.loopexit ] ; 3 uses
  %.1714.lcssa = phi i32 [ %.0713, %bb.y ], [ %.lcssa963, %.preheader196.loopexit ] ; 3 uses
  %.1711.lcssa = phi i32 [ %.0710, %bb.y ], [ %.lcssa962, %.preheader196.loopexit ] ; 3 uses
  %.1708.lcssa = phi i32 [ %.0707, %bb.y ], [ %.lcssa961, %.preheader196.loopexit ] ; 3 uses
  %.0705.lcssa = phi i32 [ 0, %bb.y ], [ %i.an, %.preheader196.loopexit ] ; 4 uses
  %i.aho = icmp slt i32 %.0705.lcssa, %6
  br i1 %i.aho, label %.lr.ph453.preheader, label %._crit_edge454

.lr.ph453.preheader:                              ; preds = %.preheader196
  %i.ahp = xor i32 %.0705.lcssa, -1
  %i.ahq = add i32 %6, %i.ahp                     ; 2 uses
  %i.ahr = zext i32 %i.ahq to i64
  %i.ahs = add nuw nsw i64 %i.ahr, 1              ; 2 uses
  %min.iters.check1075 = icmp ult i32 %i.ahq, 3
  br i1 %min.iters.check1075, label %.lr.ph453.preheader1279, label %vector.ph1076

vector.ph1076:                                    ; preds = %.lr.ph453.preheader
  %n.vec1077 = and i64 %i.ahs, 8589934588         ; 4 uses
  %i.aht = trunc i64 %n.vec1077 to i32
  %i.ahu = add i32 %.0705.lcssa, %i.aht
  %i.ahv = shl nuw nsw i64 %n.vec1077, 2          ; 2 uses
  %i.ahw = getelementptr i8, ptr %.0719.lcssa, i64 %i.ahv
  %i.ahx = getelementptr i8, ptr %.7728.lcssa, i64 %i.ahv ; 2 uses
  %i.ahy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1708.lcssa, i64 0
  %i.ahz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1711.lcssa, i64 0
  %i.aia = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1714.lcssa, i64 0
  %i.aib = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.1717.lcssa, i64 0
  br label %vector.body1078

vector.body1078:                                  ; preds = %vector.body1078, %vector.ph1076
  %index1079 = phi i64 [ 0, %vector.ph1076 ], [ %index.next1092, %vector.body1078 ] ; 2 uses
  %vec.phi1080 = phi <4 x i32> [ %i.ahy, %vector.ph1076 ], [ %i.aio, %vector.body1078 ]
  %vec.phi1081 = phi <4 x i32> [ %i.ahz, %vector.ph1076 ], [ %i.aim, %vector.body1078 ]
  %vec.phi1082 = phi <4 x i32> [ %i.aia, %vector.ph1076 ], [ %i.aij, %vector.body1078 ]
  %vec.phi1083 = phi <4 x i32> [ %i.aib, %vector.ph1076 ], [ %i.aig, %vector.body1078 ]
  %i.aic = shl i64 %index1079, 2                  ; 2 uses
  %next.gep1084 = getelementptr i8, ptr %.0719.lcssa, i64 %i.aic
  %next.gep1085 = getelementptr i8, ptr %.7728.lcssa, i64 %i.aic
  %wide.vec1086 = load <8 x i16>, ptr %next.gep1084, align 2, !tbaa !41 ; 2 uses
  %strided.vec1087 = shufflevector <8 x i16> %wide.vec1086, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1088 = shufflevector <8 x i16> %wide.vec1086, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aid = sext <4 x i16> %strided.vec1087 to <4 x i32> ; 2 uses
  %wide.vec1089 = load <8 x i16>, ptr %next.gep1085, align 2, !tbaa !41 ; 2 uses
  %strided.vec1090 = shufflevector <8 x i16> %wide.vec1089, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1091 = shufflevector <8 x i16> %wide.vec1089, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aie = sext <4 x i16> %strided.vec1090 to <4 x i32> ; 2 uses
  %i.aif = mul nsw <4 x i32> %i.aie, %i.aid
  %i.aig = add <4 x i32> %i.aif, %vec.phi1083     ; 2 uses
  %i.aih = sext <4 x i16> %strided.vec1088 to <4 x i32> ; 2 uses
  %i.aii = mul nsw <4 x i32> %i.aih, %i.aie
  %i.aij = add <4 x i32> %i.aii, %vec.phi1082     ; 2 uses
  %i.aik = sext <4 x i16> %strided.vec1091 to <4 x i32> ; 2 uses
  %i.ail = mul nsw <4 x i32> %i.aik, %i.aid
  %i.aim = add <4 x i32> %i.ail, %vec.phi1081     ; 2 uses
  %i.ain = mul nsw <4 x i32> %i.aik, %i.aih
  %i.aio = add <4 x i32> %i.ain, %vec.phi1080     ; 2 uses
  %index.next1092 = add nuw i64 %index1079, 4     ; 2 uses
  %i.aip = icmp eq i64 %index.next1092, %n.vec1077
  br i1 %i.aip, label %middle.block1093, label %vector.body1078, !llvm.loop !314

middle.block1093:                                 ; preds = %vector.body1078
  %i.aiq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aio) ; 2 uses
  %i.air = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aim) ; 2 uses
  %i.ais = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aij) ; 2 uses
  %i.ait = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aig) ; 2 uses
  %cmp.n1094 = icmp eq i64 %i.ahs, %n.vec1077
  br i1 %cmp.n1094, label %._crit_edge454, label %.lr.ph453.preheader1279

.lr.ph453.preheader1279:                          ; preds = %.lr.ph453.preheader, %middle.block1093
  %.1706452.ph = phi i32 [ %.0705.lcssa, %.lr.ph453.preheader ], [ %i.ahu, %middle.block1093 ]
  %.2709451.ph = phi i32 [ %.1708.lcssa, %.lr.ph453.preheader ], [ %i.aiq, %middle.block1093 ]
  %.2712450.ph = phi i32 [ %.1711.lcssa, %.lr.ph453.preheader ], [ %i.air, %middle.block1093 ]
  %.2715449.ph = phi i32 [ %.1714.lcssa, %.lr.ph453.preheader ], [ %i.ais, %middle.block1093 ]
  %.2718448.ph = phi i32 [ %.1717.lcssa, %.lr.ph453.preheader ], [ %i.ait, %middle.block1093 ]
  %.1720447.ph = phi ptr [ %.0719.lcssa, %.lr.ph453.preheader ], [ %i.ahw, %middle.block1093 ]
  %.8729446.ph = phi ptr [ %.7728.lcssa, %.lr.ph453.preheader ], [ %i.ahx, %middle.block1093 ]
  br label %.lr.ph453

.lr.ph438:                                        ; preds = %.lr.ph438.preheader1280, %.lr.ph438
  %.0705436 = phi i32 [ %i.aki, %.lr.ph438 ], [ %.0705436.ph, %.lr.ph438.preheader1280 ]
  %.1708435 = phi i32 [ %i.akf, %.lr.ph438 ], [ %.1708435.ph, %.lr.ph438.preheader1280 ]
  %.1711434 = phi i32 [ %i.akb, %.lr.ph438 ], [ %.1711434.ph, %.lr.ph438.preheader1280 ]
  %.1714433 = phi i32 [ %i.ajr, %.lr.ph438 ], [ %.1714433.ph, %.lr.ph438.preheader1280 ]
  %.1717432 = phi i32 [ %i.ajh, %.lr.ph438 ], [ %.1717432.ph, %.lr.ph438.preheader1280 ]
  %.0719431 = phi ptr [ %i.akg, %.lr.ph438 ], [ %.0719431.ph, %.lr.ph438.preheader1280 ] ; 5 uses
  %.7728430 = phi ptr [ %i.akh, %.lr.ph438 ], [ %.7728430.ph, %.lr.ph438.preheader1280 ] ; 5 uses
  %i.aiu = load i16, ptr %.0719431, align 2, !tbaa !41
  %i.aiv = sext i16 %i.aiu to i32                 ; 2 uses
  %i.aiw = load i16, ptr %.7728430, align 2, !tbaa !41
  %i.aix = sext i16 %i.aiw to i32                 ; 2 uses
  %i.aiy = mul nsw i32 %i.aix, %i.aiv
  %i.aiz = add nsw i32 %i.aiy, %.1717432
  %i.aja = getelementptr inbounds nuw i8, ptr %.0719431, i64 2
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !41
  %i.ajc = sext i16 %i.ajb to i32                 ; 2 uses
  %i.ajd = getelementptr inbounds nuw i8, ptr %.7728430, i64 2
  %i.aje = load i16, ptr %i.ajd, align 2, !tbaa !41
  %i.ajf = sext i16 %i.aje to i32                 ; 2 uses
  %i.ajg = mul nsw i32 %i.ajf, %i.ajc
  %i.ajh = add nsw i32 %i.aiz, %i.ajg             ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %.0719431, i64 4
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !41
  %i.ajk = sext i16 %i.ajj to i32                 ; 2 uses
  %i.ajl = mul nsw i32 %i.ajk, %i.aix
  %i.ajm = add nsw i32 %i.ajl, %.1714433
  %i.ajn = getelementptr inbounds nuw i8, ptr %.0719431, i64 6
  %i.ajo = load i16, ptr %i.ajn, align 2, !tbaa !41
  %i.ajp = sext i16 %i.ajo to i32                 ; 2 uses
  %i.ajq = mul nsw i32 %i.ajp, %i.ajf
  %i.ajr = add nsw i32 %i.ajm, %i.ajq             ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.7728430, i64 4
  %i.ajt = load i16, ptr %i.ajs, align 2, !tbaa !41
  %i.aju = sext i16 %i.ajt to i32                 ; 2 uses
  %i.ajv = mul nsw i32 %i.aju, %i.aiv
  %i.ajw = add nsw i32 %i.ajv, %.1711434
  %i.ajx = getelementptr inbounds nuw i8, ptr %.7728430, i64 6
  %i.ajy = load i16, ptr %i.ajx, align 2, !tbaa !41
  %i.ajz = sext i16 %i.ajy to i32                 ; 2 uses
  %i.aka = mul nsw i32 %i.ajz, %i.ajc
  %i.akb = add nsw i32 %i.ajw, %i.aka             ; 2 uses
  %i.akc = mul nsw i32 %i.aju, %i.ajk
  %i.akd = add nsw i32 %i.akc, %.1708435
  %i.ake = mul nsw i32 %i.ajz, %i.ajp
  %i.akf = add nsw i32 %i.akd, %i.ake             ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %.0719431, i64 8 ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %.7728430, i64 8
  %i.aki = add nuw nsw i32 %.0705436, 2           ; 2 uses
  %i.akj = or disjoint i32 %i.aki, 1
  %i.akk = icmp slt i32 %i.akj, %6
  br i1 %i.akk, label %.lr.ph438, label %.preheader196.loopexit, !llvm.loop !315

.lr.ph453:                                        ; preds = %.lr.ph453.preheader1279, %.lr.ph453
  %.1706452 = phi i32 [ %i.alf, %.lr.ph453 ], [ %.1706452.ph, %.lr.ph453.preheader1279 ]
  %.2709451 = phi i32 [ %i.alc, %.lr.ph453 ], [ %.2709451.ph, %.lr.ph453.preheader1279 ]
  %.2712450 = phi i32 [ %i.ala, %.lr.ph453 ], [ %.2712450.ph, %.lr.ph453.preheader1279 ]
  %.2715449 = phi i32 [ %i.akv, %.lr.ph453 ], [ %.2715449.ph, %.lr.ph453.preheader1279 ]
  %.2718448 = phi i32 [ %i.akq, %.lr.ph453 ], [ %.2718448.ph, %.lr.ph453.preheader1279 ]
  %.1720447 = phi ptr [ %i.ald, %.lr.ph453 ], [ %.1720447.ph, %.lr.ph453.preheader1279 ] ; 3 uses
  %.8729446 = phi ptr [ %i.ale, %.lr.ph453 ], [ %.8729446.ph, %.lr.ph453.preheader1279 ] ; 3 uses
  %i.akl = load i16, ptr %.1720447, align 2, !tbaa !41
  %i.akm = sext i16 %i.akl to i32                 ; 2 uses
  %i.akn = load i16, ptr %.8729446, align 2, !tbaa !41
  %i.ako = sext i16 %i.akn to i32                 ; 2 uses
  %i.akp = mul nsw i32 %i.ako, %i.akm
  %i.akq = add nsw i32 %i.akp, %.2718448          ; 2 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %.1720447, i64 2
  %i.aks = load i16, ptr %i.akr, align 2, !tbaa !41
  %i.akt = sext i16 %i.aks to i32                 ; 2 uses
  %i.aku = mul nsw i32 %i.akt, %i.ako
  %i.akv = add nsw i32 %i.aku, %.2715449          ; 2 uses
  %i.akw = getelementptr inbounds nuw i8, ptr %.8729446, i64 2
  %i.akx = load i16, ptr %i.akw, align 2, !tbaa !41
  %i.aky = sext i16 %i.akx to i32                 ; 2 uses
  %i.akz = mul nsw i32 %i.aky, %i.akm
  %i.ala = add nsw i32 %i.akz, %.2712450          ; 2 uses
  %i.alb = mul nsw i32 %i.aky, %i.akt
  %i.alc = add nsw i32 %i.alb, %.2709451          ; 2 uses
  %i.ald = getelementptr inbounds nuw i8, ptr %.1720447, i64 4
  %i.ale = getelementptr inbounds nuw i8, ptr %.8729446, i64 4 ; 2 uses
  %i.alf = add nuw nsw i32 %.1706452, 1           ; 2 uses
  %exitcond756.not = icmp eq i32 %i.alf, %6
  br i1 %exitcond756.not, label %._crit_edge454, label %.lr.ph453, !llvm.loop !316

._crit_edge454:                                   ; preds = %.lr.ph453, %middle.block1093, %.preheader196
  %.8729.lcssa = phi ptr [ %.7728.lcssa, %.preheader196 ], [ %i.ahx, %middle.block1093 ], [ %i.ale, %.lr.ph453 ] ; 2 uses
  %.2718.lcssa = phi i32 [ %.1717.lcssa, %.preheader196 ], [ %i.ait, %middle.block1093 ], [ %i.akq, %.lr.ph453 ]
  %.2715.lcssa = phi i32 [ %.1714.lcssa, %.preheader196 ], [ %i.ais, %middle.block1093 ], [ %i.akv, %.lr.ph453 ]
  %.2712.lcssa = phi i32 [ %.1711.lcssa, %.preheader196 ], [ %i.air, %middle.block1093 ], [ %i.ala, %.lr.ph453 ]
  %.2709.lcssa = phi i32 [ %.1708.lcssa, %.preheader196 ], [ %i.aiq, %middle.block1093 ], [ %i.alc, %.lr.ph453 ]
  store i32 %.2718.lcssa, ptr %.10462, align 4, !tbaa !10
  %i.alg = getelementptr inbounds nuw i8, ptr %.10462, i64 4
  store i32 %.2715.lcssa, ptr %i.alg, align 4, !tbaa !10
  %i.alh = getelementptr inbounds nuw i8, ptr %.10462, i64 8
  store i32 %.2712.lcssa, ptr %i.alh, align 4, !tbaa !10
  %i.ali = getelementptr inbounds nuw i8, ptr %.10462, i64 12
end_hunk_5
begin_hunk_6_@_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib:bb.a

.lr.ph575.preheader:                              ; preds = %.preheader191
  %i.ayl = getelementptr i8, ptr %i.aud, i64 %i.wd ; 2 uses
  br label %.lr.ph575

.lr.ph546:                                        ; preds = %.preheader192, %._crit_edge540
  %.15545 = phi ptr [ %i.bbj, %._crit_edge540 ], [ %.14.lcssa, %.preheader192 ] ; 3 uses
  %.1680544 = phi i32 [ %i.bbk, %._crit_edge540 ], [ %.0679.lcssa, %.preheader192 ]
  %.3686543 = phi ptr [ %.5688.lcssa, %._crit_edge540 ], [ %.0683.lcssa, %.preheader192 ] ; 4 uses
  br i1 %i.vb, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph546
  %i.aym = load <4 x i32>, ptr %.15545, align 1, !tbaa !29
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph546, %bb.af
  %i.ayn = phi <4 x i32> [ %i.aym, %bb.af ], [ zeroinitializer, %.lr.ph546 ] ; 3 uses
  br i1 %i.vc, label %.lr.ph531.preheader, label %.preheader188

.lr.ph531.preheader:                              ; preds = %bb.ag
  br i1 %i.vy, label %.lr.ph531.epil.preheader, label %.lr.ph531

.preheader188.loopexit.unr-lcssa:                 ; preds = %.lr.ph531
  br i1 %lcmp.mod1440.not.not, label %.lr.ph531.epil.preheader, label %.preheader188.loopexit

.lr.ph531.epil.preheader:                         ; preds = %.preheader188.loopexit.unr-lcssa, %.lr.ph531.preheader
  %.epil.init1439 = phi <4 x i32> [ %i.ayn, %.lr.ph531.preheader ], [ %i.bae, %.preheader188.loopexit.unr-lcssa ]
  %.0652528.epil.init = phi ptr [ %i.aud, %.lr.ph531.preheader ], [ %i.baf, %.preheader188.loopexit.unr-lcssa ] ; 2 uses
  %.4687527.epil.init = phi ptr [ %.3686543, %.lr.ph531.preheader ], [ %i.bag, %.preheader188.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod1443)
  %i.ayo = load float, ptr %.0652528.epil.init, align 1, !tbaa !29
  %i.ayp = insertelement <4 x float> poison, float %i.ayo, i64 0
  %i.ayq = load <8 x i16>, ptr %.4687527.epil.init, align 1, !tbaa !29
  %i.ayr = bitcast <4 x float> %i.ayp to <8 x i16>
  %i.ays = shufflevector <8 x i16> %i.ayr, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ayt = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.ays, <8 x i16> %i.ayq)
  %i.ayu = add <4 x i32> %i.ayt, %.epil.init1439
  %i.ayv = getelementptr inbounds nuw i8, ptr %.0652528.epil.init, i64 4
  br label %.preheader188.loopexit

.preheader188.loopexit:                           ; preds = %.preheader188.loopexit.unr-lcssa, %.lr.ph531.epil.preheader
  %.lcssa1249 = phi <4 x i32> [ %i.bae, %.preheader188.loopexit.unr-lcssa ], [ %i.ayu, %.lr.ph531.epil.preheader ]
  %.lcssa1248 = phi ptr [ %i.baf, %.preheader188.loopexit.unr-lcssa ], [ %i.ayv, %.lr.ph531.epil.preheader ]
  %i.ayw = getelementptr i8, ptr %.3686543, i64 %i.vk
  %scevgep769 = getelementptr i8, ptr %i.ayw, i64 16
  br label %.preheader188

.preheader188:                                    ; preds = %.preheader188.loopexit, %bb.ag
  %.4687.lcssa = phi ptr [ %.3686543, %bb.ag ], [ %scevgep769, %.preheader188.loopexit ] ; 4 uses
  %.0652.lcssa = phi ptr [ %i.aud, %bb.ag ], [ %.lcssa1248, %.preheader188.loopexit ] ; 3 uses
  %.lcssa215 = phi <4 x i32> [ %i.ayn, %bb.ag ], [ %.lcssa1249, %.preheader188.loopexit ] ; 3 uses
  %.0647.lcssa = phi i32 [ 0, %bb.ag ], [ %i.vg, %.preheader188.loopexit ] ; 5 uses
  %i.ayx = icmp slt i32 %.0647.lcssa, %6
  br i1 %i.ayx, label %.lr.ph539.preheader, label %._crit_edge540

.lr.ph539.preheader:                              ; preds = %.preheader188
  %i.ayy = sub i32 %6, %.0647.lcssa
  %.neg1452 = add i32 %.0647.lcssa, 1
  %xtraiter1446 = and i32 %i.ayy, 1
  %lcmp.mod1447.not = icmp eq i32 %xtraiter1446, 0
  br i1 %lcmp.mod1447.not, label %.lr.ph539.prol.loopexit, label %.lr.ph539.prol

.lr.ph539.prol:                                   ; preds = %.lr.ph539.preheader
  %i.ayz = load i16, ptr %.0652.lcssa, align 2, !tbaa !41
  %i.aza = insertelement <8 x i16> poison, i16 %i.ayz, i64 0
  %i.azb = shufflevector <8 x i16> %i.aza, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.azc = load i64, ptr %.4687.lcssa, align 1, !tbaa !29
  %i.azd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.azc, i64 0
  %i.aze = bitcast <2 x i64> %i.azd to <8 x i16>  ; 2 uses
  %i.azf = mul <8 x i16> %i.azb, %i.aze
  %i.azg = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.azb, <8 x i16> %i.aze)
  %i.azh = shufflevector <8 x i16> %i.azf, <8 x i16> %i.azg, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.azi = bitcast <8 x i16> %i.azh to <4 x i32>
  %i.azj = add <4 x i32> %.lcssa215, %i.azi       ; 2 uses
  %i.azk = getelementptr inbounds nuw i8, ptr %.0652.lcssa, i64 2
  %i.azl = getelementptr inbounds nuw i8, ptr %.4687.lcssa, i64 8 ; 2 uses
  %i.azm = add nuw nsw i32 %.0647.lcssa, 1
  br label %.lr.ph539.prol.loopexit

.lr.ph539.prol.loopexit:                          ; preds = %.lr.ph539.prol, %.lr.ph539.preheader
  %.lcssa1251.unr = phi <4 x i32> [ poison, %.lr.ph539.preheader ], [ %i.azj, %.lr.ph539.prol ]
  %.lcssa1250.unr = phi ptr [ poison, %.lr.ph539.preheader ], [ %i.azl, %.lr.ph539.prol ]
  %.1648538.unr = phi i32 [ %.0647.lcssa, %.lr.ph539.preheader ], [ %i.azm, %.lr.ph539.prol ]
  %.unr1448 = phi <4 x i32> [ %.lcssa215, %.lr.ph539.preheader ], [ %i.azj, %.lr.ph539.prol ]
  %.1653537.unr = phi ptr [ %.0652.lcssa, %.lr.ph539.preheader ], [ %i.azk, %.lr.ph539.prol ]
  %.5688536.unr = phi ptr [ %.4687.lcssa, %.lr.ph539.preheader ], [ %i.azl, %.lr.ph539.prol ]
  %i.azn = icmp eq i32 %6, %.neg1452
  br i1 %i.azn, label %._crit_edge540, label %.lr.ph539

.lr.ph531:                                        ; preds = %.lr.ph531.preheader, %.lr.ph531
  %i.azo = phi <4 x i32> [ %i.bae, %.lr.ph531 ], [ %i.ayn, %.lr.ph531.preheader ]
  %.0652528 = phi ptr [ %i.baf, %.lr.ph531 ], [ %i.aud, %.lr.ph531.preheader ] ; 3 uses
  %.4687527 = phi ptr [ %i.bag, %.lr.ph531 ], [ %.3686543, %.lr.ph531.preheader ] ; 3 uses
  %niter1445 = phi i32 [ %niter1445.next.1, %.lr.ph531 ], [ 0, %.lr.ph531.preheader ]
  %i.azp = load float, ptr %.0652528, align 1, !tbaa !29
  %i.azq = insertelement <4 x float> poison, float %i.azp, i64 0
  %i.azr = load <8 x i16>, ptr %.4687527, align 1, !tbaa !29
  %i.azs = bitcast <4 x float> %i.azq to <8 x i16>
  %i.azt = shufflevector <8 x i16> %i.azs, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.azu = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.azt, <8 x i16> %i.azr)
  %i.azv = add <4 x i32> %i.azu, %i.azo
  %i.azw = getelementptr inbounds nuw i8, ptr %.0652528, i64 4
  %i.azx = getelementptr inbounds nuw i8, ptr %.4687527, i64 16
  %i.azy = load float, ptr %i.azw, align 1, !tbaa !29
  %i.azz = insertelement <4 x float> poison, float %i.azy, i64 0
  %i.baa = load <8 x i16>, ptr %i.azx, align 1, !tbaa !29
  %i.bab = bitcast <4 x float> %i.azz to <8 x i16>
  %i.bac = shufflevector <8 x i16> %i.bab, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bad = tail call <4 x i32> @llvm.x86.sse2.pmadd.wd(<8 x i16> %i.bac, <8 x i16> %i.baa)
  %i.bae = add <4 x i32> %i.bad, %i.azv           ; 3 uses
  %i.baf = getelementptr inbounds nuw i8, ptr %.0652528, i64 8 ; 3 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.4687527, i64 32 ; 2 uses
  %niter1445.next.1 = add nuw nsw i32 %niter1445, 2 ; 2 uses
  %niter1445.ncmp.1.not = icmp eq i32 %niter1445.next.1, %unroll_iter1444
  br i1 %niter1445.ncmp.1.not, label %.preheader188.loopexit.unr-lcssa, label %.lr.ph531, !llvm.loop !328

.lr.ph539:                                        ; preds = %.lr.ph539.prol.loopexit, %.lr.ph539
  %.1648538 = phi i32 [ %i.bbi, %.lr.ph539 ], [ %.1648538.unr, %.lr.ph539.prol.loopexit ]
  %i.bah = phi <4 x i32> [ %i.bbf, %.lr.ph539 ], [ %.unr1448, %.lr.ph539.prol.loopexit ]
  %.1653537 = phi ptr [ %i.bbg, %.lr.ph539 ], [ %.1653537.unr, %.lr.ph539.prol.loopexit ] ; 3 uses
  %.5688536 = phi ptr [ %i.bbh, %.lr.ph539 ], [ %.5688536.unr, %.lr.ph539.prol.loopexit ] ; 3 uses
  %i.bai = load i16, ptr %.1653537, align 2, !tbaa !41
  %i.baj = insertelement <8 x i16> poison, i16 %i.bai, i64 0
  %i.bak = shufflevector <8 x i16> %i.baj, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bal = load i64, ptr %.5688536, align 1, !tbaa !29
  %i.bam = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bal, i64 0
  %i.ban = bitcast <2 x i64> %i.bam to <8 x i16>  ; 2 uses
  %i.bao = mul <8 x i16> %i.bak, %i.ban
  %i.bap = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.bak, <8 x i16> %i.ban)
  %i.baq = shufflevector <8 x i16> %i.bao, <8 x i16> %i.bap, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bar = bitcast <8 x i16> %i.baq to <4 x i32>
  %i.bas = add <4 x i32> %i.bah, %i.bar
  %i.bat = getelementptr inbounds nuw i8, ptr %.1653537, i64 2
  %i.bau = getelementptr inbounds nuw i8, ptr %.5688536, i64 8
  %i.bav = load i16, ptr %i.bat, align 2, !tbaa !41
  %i.baw = insertelement <8 x i16> poison, i16 %i.bav, i64 0
  %i.bax = shufflevector <8 x i16> %i.baw, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bay = load i64, ptr %i.bau, align 1, !tbaa !29
  %i.baz = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bay, i64 0
  %i.bba = bitcast <2 x i64> %i.baz to <8 x i16>  ; 2 uses
  %i.bbb = mul <8 x i16> %i.bax, %i.bba
  %i.bbc = tail call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.bax, <8 x i16> %i.bba)
  %i.bbd = shufflevector <8 x i16> %i.bbb, <8 x i16> %i.bbc, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bbe = bitcast <8 x i16> %i.bbd to <4 x i32>
  %i.bbf = add <4 x i32> %i.bas, %i.bbe           ; 2 uses
  %i.bbg = getelementptr inbounds nuw i8, ptr %.1653537, i64 4
  %i.bbh = getelementptr inbounds nuw i8, ptr %.5688536, i64 16 ; 2 uses
  %i.bbi = add nuw nsw i32 %.1648538, 2           ; 2 uses
  %exitcond770.not.1 = icmp eq i32 %i.bbi, %6
  br i1 %exitcond770.not.1, label %._crit_edge540, label %.lr.ph539, !llvm.loop !329

._crit_edge540:                                   ; preds = %.lr.ph539.prol.loopexit, %.lr.ph539, %.preheader188
  %.5688.lcssa = phi ptr [ %.4687.lcssa, %.preheader188 ], [ %.lcssa1250.unr, %.lr.ph539.prol.loopexit ], [ %i.bbh, %.lr.ph539 ] ; 2 uses
  %.lcssa216 = phi <4 x i32> [ %.lcssa215, %.preheader188 ], [ %.lcssa1251.unr, %.lr.ph539.prol.loopexit ], [ %i.bbf, %.lr.ph539 ]
  store <4 x i32> %.lcssa216, ptr %.15545, align 1, !tbaa !29
  %i.bbj = getelementptr inbounds nuw i8, ptr %.15545, i64 16 ; 2 uses
  %i.bbk = add nuw nsw i32 %.1680544, 4           ; 3 uses
  %i.bbl = or disjoint i32 %i.bbk, 3
  %i.bbm = icmp slt i32 %i.bbl, %4
  br i1 %i.bbm, label %.lr.ph546, label %.preheader191, !llvm.loop !330

.preheader190:                                    ; preds = %._crit_edge568, %.preheader191
  %.6689.lcssa = phi ptr [ %.3686.lcssa, %.preheader191 ], [ %.8691.lcssa, %._crit_edge568 ]
  %.2681.lcssa = phi i32 [ %.1680.lcssa, %.preheader191 ], [ %i.ble, %._crit_edge568 ] ; 4 uses
  %.16.lcssa = phi ptr [ %.15.lcssa, %.preheader191 ], [ %i.bld, %._crit_edge568 ] ; 5 uses
  %i.bbn = icmp slt i32 %.2681.lcssa, %4
  br i1 %i.bbn, label %.lr.ph591, label %._crit_edge592

.lr.ph591:                                        ; preds = %.preheader190
  br i1 %i.vd, label %.lr.ph591.split.us.preheader, label %.lr.ph591.split

.lr.ph591.split.us.preheader:                     ; preds = %.lr.ph591
  %i.bbo = getelementptr i8, ptr %i.aud, i64 %i.wh
  %i.bbp = getelementptr i8, ptr %i.aud, i64 %i.wj
  br label %.lr.ph591.split.us

.lr.ph591.split.us:                               ; preds = %.lr.ph591.split.us.preheader, %._crit_edge585.us
  %.17590.us = phi ptr [ %i.bco, %._crit_edge585.us ], [ %.16.lcssa, %.lr.ph591.split.us.preheader ] ; 3 uses
  %.3682589.us = phi i32 [ %i.bcp, %._crit_edge585.us ], [ %.2681.lcssa, %.lr.ph591.split.us.preheader ]
  %.9692588.us = phi ptr [ %scevgep777, %._crit_edge585.us ], [ %.6689.lcssa, %.lr.ph591.split.us.preheader ] ; 6 uses
  br i1 %i.vb, label %iter.check, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph591.split.us
  %i.bbq = load i32, ptr %.17590.us, align 4, !tbaa !10
  br label %iter.check

iter.check:                                       ; preds = %bb.ah, %.lr.ph591.split.us
  %.0611.us = phi i32 [ %i.bbq, %bb.ah ], [ 0, %.lr.ph591.split.us ] ; 3 uses
  br i1 %min.iters.check1131, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check1132, label %vec.epilog.ph, label %vector.ph1133

vector.ph1133:                                    ; preds = %vector.main.loop.iter.check
  %i.bbr = getelementptr i8, ptr %.9692588.us, i64 %i.wh
  %i.bbs = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0611.us, i64 0
  br label %vector.body1135

vector.body1135:                                  ; preds = %vector.ph1133, %vector.body1135
  %index1136 = phi i64 [ 0, %vector.ph1133 ], [ %index.next1151, %vector.body1135 ] ; 2 uses
  %vec.phi1137 = phi <4 x i32> [ %i.bbs, %vector.ph1133 ], [ %partial.reduce1166, %vector.body1135 ]
  %vec.phi1138 = phi <4 x i32> [ zeroinitializer, %vector.ph1133 ], [ %partial.reduce1167, %vector.body1135 ]
  %vec.phi1139 = phi <4 x i32> [ zeroinitializer, %vector.ph1133 ], [ %partial.reduce1168, %vector.body1135 ]
  %vec.phi1140 = phi <4 x i32> [ zeroinitializer, %vector.ph1133 ], [ %partial.reduce1169, %vector.body1135 ]
  %i.bbt = shl i64 %index1136, 1                  ; 2 uses
  %next.gep1141 = getelementptr i8, ptr %i.aud, i64 %i.bbt ; 4 uses
  %next.gep1142 = getelementptr i8, ptr %.9692588.us, i64 %i.bbt ; 4 uses
  %i.bbu = getelementptr i8, ptr %next.gep1141, i64 16
  %i.bbv = getelementptr i8, ptr %next.gep1141, i64 32
  %i.bbw = getelementptr i8, ptr %next.gep1141, i64 48
  %wide.load1158 = load <8 x i16>, ptr %next.gep1141, align 2, !tbaa !41
  %wide.load1159 = load <8 x i16>, ptr %i.bbu, align 2, !tbaa !41
  %wide.load1160 = load <8 x i16>, ptr %i.bbv, align 2, !tbaa !41
  %wide.load1161 = load <8 x i16>, ptr %i.bbw, align 2, !tbaa !41
  %148 = getelementptr i8, ptr %next.gep1142, i64 16
  %149 = getelementptr i8, ptr %next.gep1142, i64 32
  %150 = getelementptr i8, ptr %next.gep1142, i64 48
  %wide.load1162 = load <8 x i16>, ptr %next.gep1142, align 2, !tbaa !41
  %wide.load1163 = load <8 x i16>, ptr %148, align 2, !tbaa !41
  %wide.load1164 = load <8 x i16>, ptr %149, align 2, !tbaa !41
  %wide.load1165 = load <8 x i16>, ptr %150, align 2, !tbaa !41
  %151 = sext <8 x i16> %wide.load1162 to <8 x i32>
  %152 = sext <8 x i16> %wide.load1158 to <8 x i32>
  %153 = mul nsw <8 x i32> %151, %152
  %partial.reduce1166 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1137, <8 x i32> %153) ; 2 uses
  %154 = sext <8 x i16> %wide.load1163 to <8 x i32>
  %155 = sext <8 x i16> %wide.load1159 to <8 x i32>
  %156 = mul nsw <8 x i32> %154, %155
  %partial.reduce1167 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1138, <8 x i32> %156) ; 2 uses
  %157 = sext <8 x i16> %wide.load1164 to <8 x i32>
  %158 = sext <8 x i16> %wide.load1160 to <8 x i32>
  %159 = mul nsw <8 x i32> %157, %158
  %partial.reduce1168 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1139, <8 x i32> %159) ; 2 uses
  %160 = sext <8 x i16> %wide.load1165 to <8 x i32>
  %161 = sext <8 x i16> %wide.load1161 to <8 x i32>
  %162 = mul nsw <8 x i32> %160, %161
  %partial.reduce1169 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1140, <8 x i32> %162) ; 2 uses
  %index.next1151 = add nuw i64 %index1136, 32    ; 2 uses
  %i.bbx = icmp eq i64 %index.next1151, %n.vec1134
  br i1 %i.bbx, label %middle.block1152, label %vector.body1135, !llvm.loop !331

middle.block1152:                                 ; preds = %vector.body1135
  %bin.rdx1153 = add <4 x i32> %partial.reduce1167, %partial.reduce1166
  %bin.rdx1154 = add <4 x i32> %partial.reduce1168, %bin.rdx1153
  %bin.rdx1155 = add <4 x i32> %partial.reduce1169, %bin.rdx1154
  %i.bby = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1155) ; 3 uses
  br i1 %cmp.n1156, label %._crit_edge585.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1152
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !341

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1134, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx1157 = phi i32 [ %i.bby, %vec.epilog.iter.check ], [ %.0611.us, %vector.main.loop.iter.check ]
  %i.bbz = getelementptr i8, ptr %.9692588.us, i64 %i.wj
  %i.bca = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx1157, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1159 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1165, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1160 = phi <4 x i32> [ %i.bca, %vec.epilog.ph ], [ %partial.reduce1184, %vec.epilog.vector.body ]
  %i.bcb = shl i64 %index1159, 1                  ; 2 uses
  %next.gep1161 = getelementptr i8, ptr %i.aud, i64 %i.bcb
  %next.gep1162 = getelementptr i8, ptr %.9692588.us, i64 %i.bcb
  %wide.load1182 = load <8 x i16>, ptr %next.gep1161, align 2, !tbaa !41
  %wide.load1183 = load <8 x i16>, ptr %next.gep1162, align 2, !tbaa !41
  %163 = sext <8 x i16> %wide.load1183 to <8 x i32>
  %164 = sext <8 x i16> %wide.load1182 to <8 x i32>
  %165 = mul nsw <8 x i32> %163, %164
  %partial.reduce1184 = tail call <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32> %vec.phi1160, <8 x i32> %165) ; 2 uses
  %index.next1165 = add nuw i64 %index1159, 8     ; 2 uses
  %i.bcc = icmp eq i64 %index.next1165, %n.vec1158
  br i1 %i.bcc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !332

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bcd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %partial.reduce1184) ; 2 uses
  br i1 %cmp.n1166, label %._crit_edge585.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0582.us.ph = phi i32 [ 0, %iter.check ], [ %i.wg, %vec.epilog.iter.check ], [ %i.wi, %vec.epilog.middle.block ]
  %.1581.us.ph = phi i32 [ %.0611.us, %iter.check ], [ %i.bby, %vec.epilog.iter.check ], [ %i.bcd, %vec.epilog.middle.block ]
  %.0612580.us.ph = phi ptr [ %i.aud, %iter.check ], [ %i.bbo, %vec.epilog.iter.check ], [ %i.bbp, %vec.epilog.middle.block ]
  %.10693579.us.ph = phi ptr [ %.9692588.us, %iter.check ], [ %i.bbr, %vec.epilog.iter.check ], [ %i.bbz, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.0582.us = phi i32 [ %i.bcm, %vec.epilog.scalar.ph ], [ %.0582.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.1581.us = phi i32 [ %i.bcj, %vec.epilog.scalar.ph ], [ %.1581.us.ph, %vec.epilog.scalar.ph.preheader ]
  %.0612580.us = phi ptr [ %i.bck, %vec.epilog.scalar.ph ], [ %.0612580.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.10693579.us = phi ptr [ %i.bcl, %vec.epilog.scalar.ph ], [ %.10693579.us.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bce = load i16, ptr %.0612580.us, align 2, !tbaa !41
  %i.bcf = sext i16 %i.bce to i32
  %i.bcg = load i16, ptr %.10693579.us, align 2, !tbaa !41
  %i.bch = sext i16 %i.bcg to i32
  %i.bci = mul nsw i32 %i.bch, %i.bcf
  %i.bcj = add nsw i32 %i.bci, %.1581.us          ; 2 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.0612580.us, i64 2
  %i.bcl = getelementptr inbounds nuw i8, ptr %.10693579.us, i64 2
  %i.bcm = add nuw nsw i32 %.0582.us, 1           ; 2 uses
  %exitcond778.not = icmp eq i32 %i.bcm, %6
  br i1 %exitcond778.not, label %._crit_edge585.us, label %vec.epilog.scalar.ph, !llvm.loop !333

._crit_edge585.us:                                ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block1152
  %.lcssa938 = phi i32 [ %i.bcd, %vec.epilog.middle.block ], [ %i.bby, %middle.block1152 ], [ %i.bcj, %vec.epilog.scalar.ph ]
  %i.bcn = getelementptr i8, ptr %.9692588.us, i64 %i.vp
  %scevgep777 = getelementptr i8, ptr %i.bcn, i64 2
  store i32 %.lcssa938, ptr %.17590.us, align 4, !tbaa !10
  %i.bco = getelementptr inbounds nuw i8, ptr %.17590.us, i64 4 ; 2 uses
  %i.bcp = add nuw nsw i32 %.3682589.us, 1        ; 2 uses
  %exitcond779.not = icmp eq i32 %i.bcp, %4
  br i1 %exitcond779.not, label %._crit_edge592, label %.lr.ph591.split.us, !llvm.loop !334

.lr.ph591.split:                                  ; preds = %.lr.ph591
  br i1 %i.vb, label %.lr.ph591.split.split.us.preheader, label %.lr.ph591.split.split.preheader

.lr.ph591.split.split.preheader:                  ; preds = %.lr.ph591.split
  %scevgep773 = getelementptr i8, ptr %.16.lcssa, i64 4
  %i.bcq = sub i32 %i.vm, %.2681.lcssa
  %i.bcr = zext i32 %i.bcq to i64
  %i.bcs = shl nuw nsw i64 %i.bcr, 2
  %scevgep774 = getelementptr i8, ptr %scevgep773, i64 %i.bcs
  br label %._crit_edge592

.lr.ph591.split.split.us.preheader:               ; preds = %.lr.ph591.split
  %i.bct = sub i32 %i.vm, %.2681.lcssa
  %i.bcu = zext i32 %i.bct to i64
  %i.bcv = shl nuw nsw i64 %i.bcu, 2              ; 2 uses
  %i.bcw = add nuw nsw i64 %i.bcv, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.16.lcssa, i8 0, i64 %i.bcw, i1 false), !tbaa !10
  %scevgep775 = getelementptr i8, ptr %.16.lcssa, i64 4
  %scevgep776 = getelementptr i8, ptr %scevgep775, i64 %i.bcv
  br label %._crit_edge592

.lr.ph575:                                        ; preds = %.lr.ph575.preheader, %._crit_edge568
  %.16574 = phi ptr [ %i.bld, %._crit_edge568 ], [ %.15.lcssa, %.lr.ph575.preheader ] ; 5 uses
  %.2681573 = phi i32 [ %i.ble, %._crit_edge568 ], [ %.1680.lcssa, %.lr.ph575.preheader ]
  %.6689572 = phi ptr [ %.8691.lcssa, %._crit_edge568 ], [ %.3686.lcssa, %.lr.ph575.preheader ] ; 12 uses
  br i1 %i.vb, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph575
  %i.bcx = load i32, ptr %.16574, align 4, !tbaa !10
  %i.bcy = getelementptr inbounds nuw i8, ptr %.16574, i64 4
  %i.bcz = load i32, ptr %i.bcy, align 4, !tbaa !10
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph575, %bb.ai
  %.0617 = phi i32 [ %i.bcx, %bb.ai ], [ 0, %.lr.ph575 ] ; 3 uses
  %.0615 = phi i32 [ %i.bcz, %bb.ai ], [ 0, %.lr.ph575 ] ; 3 uses
  br i1 %i.vc, label %.lr.ph556.preheader, label %.preheader

.lr.ph556.preheader:                              ; preds = %bb.aj
  br i1 %min.iters.check1203, label %.lr.ph556.preheader1239, label %vector.ph1204

vector.ph1204:                                    ; preds = %.lr.ph556.preheader
  %i.bda = getelementptr i8, ptr %.6689572, i64 %i.we
  %i.bdb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0615, i64 0
  %i.bdc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0617, i64 0
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1228, %vector.body1206 ] ; 3 uses
  %vec.phi1208 = phi <4 x i32> [ %i.bdb, %vector.ph1204 ], [ %i.bhx, %vector.body1206 ]
  %vec.phi1209 = phi <4 x i32> [ zeroinitializer, %vector.ph1204 ], [ %i.bhy, %vector.body1206 ]
  %vec.phi1210 = phi <4 x i32> [ %i.bdc, %vector.ph1204 ], [ %i.bfp, %vector.body1206 ]
  %vec.phi1211 = phi <4 x i32> [ zeroinitializer, %vector.ph1204 ], [ %i.bfq, %vector.body1206 ]
  %i.bdd = shl i64 %index1207, 2                  ; 2 uses
  %next.gep1212 = getelementptr i8, ptr %i.aud, i64 %i.bdd
  %i.bde = getelementptr i8, ptr %i.aud, i64 %i.bdd
  %next.gep1213 = getelementptr i8, ptr %i.bde, i64 16
  %i.bdf = shl i64 %index1207, 3                  ; 8 uses
  %next.gep1214 = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %i.bdg = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %next.gep1215 = getelementptr i8, ptr %i.bdg, i64 8
  %i.bdh = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %next.gep1216 = getelementptr i8, ptr %i.bdh, i64 16
  %i.bdi = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %next.gep1217 = getelementptr i8, ptr %i.bdi, i64 24
  %i.bdj = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %next.gep1218 = getelementptr i8, ptr %i.bdj, i64 32
  %i.bdk = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %next.gep1219 = getelementptr i8, ptr %i.bdk, i64 40
  %i.bdl = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %next.gep1220 = getelementptr i8, ptr %i.bdl, i64 48
  %i.bdm = getelementptr i8, ptr %.6689572, i64 %i.bdf ; 4 uses
  %next.gep1221 = getelementptr i8, ptr %i.bdm, i64 56
  %wide.vec1222 = load <8 x i16>, ptr %next.gep1212, align 2, !tbaa !41 ; 2 uses
  %strided.vec1223 = shufflevector <8 x i16> %wide.vec1222, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1224 = shufflevector <8 x i16> %wide.vec1222, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec1225 = load <8 x i16>, ptr %next.gep1213, align 2, !tbaa !41 ; 2 uses
  %strided.vec1226 = shufflevector <8 x i16> %wide.vec1225, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec1227 = shufflevector <8 x i16> %wide.vec1225, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bdn = sext <4 x i16> %strided.vec1223 to <4 x i32> ; 2 uses
  %i.bdo = sext <4 x i16> %strided.vec1226 to <4 x i32> ; 2 uses
  %i.bdp = load i16, ptr %next.gep1214, align 2, !tbaa !41
  %i.bdq = load i16, ptr %next.gep1215, align 2, !tbaa !41
  %i.bdr = load i16, ptr %next.gep1216, align 2, !tbaa !41
  %i.bds = load i16, ptr %next.gep1217, align 2, !tbaa !41
  %i.bdt = insertelement <4 x i16> poison, i16 %i.bdp, i64 0
  %i.bdu = insertelement <4 x i16> %i.bdt, i16 %i.bdq, i64 1
  %i.bdv = insertelement <4 x i16> %i.bdu, i16 %i.bdr, i64 2
  %i.bdw = insertelement <4 x i16> %i.bdv, i16 %i.bds, i64 3
  %i.bdx = load i16, ptr %next.gep1218, align 2, !tbaa !41
  %i.bdy = load i16, ptr %next.gep1219, align 2, !tbaa !41
  %i.bdz = load i16, ptr %next.gep1220, align 2, !tbaa !41
  %i.bea = load i16, ptr %next.gep1221, align 2, !tbaa !41
  %i.beb = insertelement <4 x i16> poison, i16 %i.bdx, i64 0
  %i.bec = insertelement <4 x i16> %i.beb, i16 %i.bdy, i64 1
  %i.bed = insertelement <4 x i16> %i.bec, i16 %i.bdz, i64 2
  %i.bee = insertelement <4 x i16> %i.bed, i16 %i.bea, i64 3
  %i.bef = sext <4 x i16> %i.bdw to <4 x i32>
  %i.beg = sext <4 x i16> %i.bee to <4 x i32>
  %i.beh = mul nsw <4 x i32> %i.bef, %i.bdn
  %i.bei = mul nsw <4 x i32> %i.beg, %i.bdo
  %i.bej = add <4 x i32> %i.beh, %vec.phi1210
  %i.bek = add <4 x i32> %i.bei, %vec.phi1211
  %i.bel = sext <4 x i16> %strided.vec1224 to <4 x i32> ; 2 uses
  %i.bem = sext <4 x i16> %strided.vec1227 to <4 x i32> ; 2 uses
  %i.ben = getelementptr inbounds nuw i8, ptr %next.gep1214, i64 2
  %i.beo = getelementptr i8, ptr %i.bdg, i64 10
  %i.bep = getelementptr i8, ptr %i.bdh, i64 18
  %i.beq = getelementptr i8, ptr %i.bdi, i64 26
  %i.ber = getelementptr i8, ptr %i.bdj, i64 34
  %i.bes = getelementptr i8, ptr %i.bdk, i64 42
  %i.bet = getelementptr i8, ptr %i.bdl, i64 50
  %i.beu = getelementptr i8, ptr %i.bdm, i64 58
  %i.bev = load i16, ptr %i.ben, align 2, !tbaa !41
  %i.bew = load i16, ptr %i.beo, align 2, !tbaa !41
  %i.bex = load i16, ptr %i.bep, align 2, !tbaa !41
  %i.bey = load i16, ptr %i.beq, align 2, !tbaa !41
  %i.bez = insertelement <4 x i16> poison, i16 %i.bev, i64 0
  %i.bfa = insertelement <4 x i16> %i.bez, i16 %i.bew, i64 1
  %i.bfb = insertelement <4 x i16> %i.bfa, i16 %i.bex, i64 2
  %i.bfc = insertelement <4 x i16> %i.bfb, i16 %i.bey, i64 3
  %i.bfd = load i16, ptr %i.ber, align 2, !tbaa !41
  %i.bfe = load i16, ptr %i.bes, align 2, !tbaa !41
  %i.bff = load i16, ptr %i.bet, align 2, !tbaa !41
  %i.bfg = load i16, ptr %i.beu, align 2, !tbaa !41
  %i.bfh = insertelement <4 x i16> poison, i16 %i.bfd, i64 0
  %i.bfi = insertelement <4 x i16> %i.bfh, i16 %i.bfe, i64 1
  %i.bfj = insertelement <4 x i16> %i.bfi, i16 %i.bff, i64 2
  %i.bfk = insertelement <4 x i16> %i.bfj, i16 %i.bfg, i64 3
  %i.bfl = sext <4 x i16> %i.bfc to <4 x i32>
  %i.bfm = sext <4 x i16> %i.bfk to <4 x i32>
  %i.bfn = mul nsw <4 x i32> %i.bfl, %i.bel
  %i.bfo = mul nsw <4 x i32> %i.bfm, %i.bem
  %i.bfp = add <4 x i32> %i.bej, %i.bfn           ; 2 uses
  %i.bfq = add <4 x i32> %i.bek, %i.bfo           ; 2 uses
  %i.bfr = getelementptr inbounds nuw i8, ptr %next.gep1214, i64 4
  %i.bfs = getelementptr i8, ptr %i.bdg, i64 12
  %i.bft = getelementptr i8, ptr %i.bdh, i64 20
  %i.bfu = getelementptr i8, ptr %i.bdi, i64 28
  %i.bfv = getelementptr i8, ptr %i.bdj, i64 36
  %i.bfw = getelementptr i8, ptr %i.bdk, i64 44
  %i.bfx = getelementptr i8, ptr %i.bdl, i64 52
  %i.bfy = getelementptr i8, ptr %i.bdm, i64 60
  %i.bfz = load i16, ptr %i.bfr, align 2, !tbaa !41
  %i.bga = load i16, ptr %i.bfs, align 2, !tbaa !41
  %i.bgb = load i16, ptr %i.bft, align 2, !tbaa !41
  %i.bgc = load i16, ptr %i.bfu, align 2, !tbaa !41
  %i.bgd = insertelement <4 x i16> poison, i16 %i.bfz, i64 0
  %i.bge = insertelement <4 x i16> %i.bgd, i16 %i.bga, i64 1
  %i.bgf = insertelement <4 x i16> %i.bge, i16 %i.bgb, i64 2
  %i.bgg = insertelement <4 x i16> %i.bgf, i16 %i.bgc, i64 3
  %i.bgh = load i16, ptr %i.bfv, align 2, !tbaa !41
  %i.bgi = load i16, ptr %i.bfw, align 2, !tbaa !41
  %i.bgj = load i16, ptr %i.bfx, align 2, !tbaa !41
  %i.bgk = load i16, ptr %i.bfy, align 2, !tbaa !41
  %i.bgl = insertelement <4 x i16> poison, i16 %i.bgh, i64 0
  %i.bgm = insertelement <4 x i16> %i.bgl, i16 %i.bgi, i64 1
  %i.bgn = insertelement <4 x i16> %i.bgm, i16 %i.bgj, i64 2
  %i.bgo = insertelement <4 x i16> %i.bgn, i16 %i.bgk, i64 3
  %i.bgp = sext <4 x i16> %i.bgg to <4 x i32>
  %i.bgq = sext <4 x i16> %i.bgo to <4 x i32>
  %i.bgr = mul nsw <4 x i32> %i.bgp, %i.bdn
  %i.bgs = mul nsw <4 x i32> %i.bgq, %i.bdo
  %i.bgt = add <4 x i32> %i.bgr, %vec.phi1208
end_hunk_6
begin_hunk_7_@_ZN4ncnn29conv3x3s1_winograd43_int8_xopERKNS_3MatERS0_S2_iRKNS_6OptionE:bb.a
  %i.ai = load i32, ptr %i.g, align 4, !tbaa !10  ; 2 uses
  %i.aj = add i32 %i.ac, -1
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = sdiv i32 %i.ak, %i.ai
  store i32 %i.al, ptr %i.j, align 4, !tbaa !10
  %i.am = load i32, ptr %i.e, align 4, !tbaa !10
  %i.an = load i32, ptr %i.h, align 4, !tbaa !10  ; 3 uses
  %i.ao = add i32 %i.am, -1
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = sdiv i32 %i.ap, %i.an                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.ar = load i32, ptr %i.f, align 4, !tbaa !10
  %i.as = load i32, ptr %i.i, align 4, !tbaa !10  ; 3 uses
  %i.at = add i32 %i.ar, -1
  %i.au = add i32 %i.at, %i.as
  %i.av = sdiv i32 %i.au, %i.as                   ; 2 uses
  store i32 %i.av, ptr %i.k, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  %i.aw = mul nsw i32 %i.as, %i.an
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  store i64 0, ptr %i.bf, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bc, i8 0, i64 28, i1 false)
  call void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %5, i32 noundef %i.aw, i32 noundef 36, i32 noundef %i.av, i32 noundef %i.aq, i64 noundef 4, ptr noundef %i.ay)
  %i.bg = load ptr, ptr %5, align 8, !tbaa !27
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit179.i

_ZNK4ncnn3Mat5emptyEv.exit179.i:                  ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !19
  %i.bk = load i32, ptr %i.bi, align 8, !tbaa !18
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul i64 %i.bj, %i.bl
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i, label %bb.f

bb.f:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit179.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #4
  %i.bo = load i32, ptr %i.k, align 4, !tbaa !10
  %i.bp = mul nsw i32 %i.bo, %i.aq                ; 2 uses
  store i32 %i.bp, ptr %i.l, align 4, !tbaa !10
  %i.bq = icmp sgt i32 %3, 1
  %i.br = icmp slt i32 %i.bp, %3
  %or.cond.i = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond.i, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !10
  %i.bt = mul nsw i32 %i.bs, 36
  %i.bu = load i32, ptr %i.i, align 4, !tbaa !10
  %i.bv = mul nsw i32 %i.bt, %i.bu
  %i.bw = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  store i64 0, ptr %i.ca, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %6, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.by, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.bv, i64 noundef 4, ptr noundef %i.bw)
          to label %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i unwind label %bb.h

_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i:          ; preds = %bb.g
  %i.cb = load ptr, ptr %6, align 8, !tbaa !27
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %.critedge.i, label %_ZNK4ncnn3Mat5emptyEv.exit178.i

_ZNK4ncnn3Mat5emptyEv.exit178.i:                  ; preds = %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.cd = load i64, ptr %i.ca, align 8, !tbaa !19
  %i.ce = load i32, ptr %i.bz, align 8, !tbaa !18
  %i.cf = sext i32 %i.ce to i64
  %i.cg = mul i64 %i.cd, %i.cf
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.critedge.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNK4ncnn3Mat5emptyEv.exit178.i
  %i.ci = load i32, ptr %i.l, align 4, !tbaa !10
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.noexc.lr.ph.i, label %._crit_edge.i

.noexc.lr.ph.i:                                   ; preds = %.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 64
  br label %.noexc.i

bb.h:                                             ; preds = %bb.g
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.az

.noexc.i:                                         ; preds = %_ZN4ncnn3MatD2Ev.exit101.i, %.noexc.lr.ph.i
  %.0205.i = phi i32 [ 0, %.noexc.lr.ph.i ], [ %i.el, %_ZN4ncnn3MatD2Ev.exit101.i ] ; 3 uses
  %i.cs = load i32, ptr %i.k, align 4, !tbaa !10  ; 2 uses
  %i.ct = sdiv i32 %.0205.i, %i.cs
  %i.cu = srem i32 %.0205.i, %i.cs
  %i.cv = load i32, ptr %i.h, align 4, !tbaa !10  ; 2 uses
  %i.cw = mul nsw i32 %i.cv, %i.ct                ; 3 uses
  %i.cx = load i32, ptr %i.i, align 4, !tbaa !10  ; 2 uses
  %i.cy = mul nsw i32 %i.cx, %i.cu                ; 3 uses
  %i.cz = load i32, ptr %i.e, align 4, !tbaa !10
  %i.da = sub nsw i32 %i.cz, %i.cw
  %.sroa.speculated202.i = call i32 @llvm.smin.i32(i32 %i.cv, i32 %i.da) ; 2 uses
  %i.db = load i32, ptr %i.f, align 4, !tbaa !10
  %i.dc = sub nsw i32 %i.db, %i.cy
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %i.cx, i32 %i.dc) ; 2 uses
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %6, i32 noundef %i.cw, i32 noundef %.sroa.speculated202.i, i32 noundef %i.cy, i32 noundef %.sroa.speculated.i, i32 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !10
  %i.de = sdiv i32 %i.cw, %i.dd
  %i.df = load ptr, ptr %5, align 8, !tbaa !27, !noalias !370
  %i.dg = load i64, ptr %i.bf, align 8, !tbaa !19, !noalias !370
  %i.dh = sext i32 %i.de to i64
  %i.di = mul i64 %i.dg, %i.dh
  %i.dj = load i64, ptr %i.ba, align 8, !tbaa !28, !noalias !370 ; 3 uses
  %i.dk = mul i64 %i.di, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dk
  %i.dm = load i32, ptr %i.bb, align 8, !tbaa !17, !noalias !370
  %i.dn = load ptr, ptr %i.bc, align 8, !tbaa !34, !noalias !370
  %i.do = load i32, ptr %i.i, align 4, !tbaa !10
  %i.dp = sdiv i32 %i.cy, %i.do
  %i.dq = sext i32 %i.dp to i64
  store ptr null, ptr %i.ck, align 8, !tbaa !35
  store i64 %i.dj, ptr %i.cl, align 8, !tbaa !28
  store i32 %i.dm, ptr %i.cm, align 8, !tbaa !17
  store ptr %i.dn, ptr %i.cn, align 8, !tbaa !34
  store i32 2, ptr %i.co, align 8, !tbaa !36
  %i.dr = load <4 x i32>, ptr %i.bd, align 4
  %i.ds = load i32, ptr %i.be, align 8, !tbaa !20, !noalias !370
  %i.dt = load i32, ptr %i.bd, align 4, !tbaa !16, !noalias !370
  %i.du = sext i32 %i.dt to i64
  %i.dv = sext i32 %i.ds to i64
  %i.dw = mul nsw i64 %i.dv, %i.du                ; 2 uses
  %i.dx = mul i64 %i.dj, %i.dw
  %i.dy = mul i64 %i.dx, %i.dq
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dy
  store ptr %i.dz, ptr %7, align 8, !tbaa !27
  %i.ea = shufflevector <4 x i32> %i.dr, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ea, ptr %i.cp, align 4, !tbaa !10
  store i64 %i.dw, ptr %i.cq, align 8, !tbaa !19, !alias.scope !371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 36, ptr %i.a, align 4, !tbaa !10
  store i32 %.sroa.speculated202.i, ptr %i.b, align 4, !tbaa !10
  store i32 %.sroa.speculated.i, ptr %i.c, align 4, !tbaa !10
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 range(i32 1, -2147483648) %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %7, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %6, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.eb = load ptr, ptr %i.ck, align 8, !tbaa !35 ; 2 uses
  %.not.i104.i = icmp eq ptr %i.eb, null
  br i1 %.not.i104.i, label %_ZN4ncnn3MatD2Ev.exit101.i, label %bb.i

bb.i:                                             ; preds = %.noexc.i
  %i.ec = atomicrmw add ptr %i.eb, i32 -1 acq_rel, align 4
  %i.ed = icmp eq i32 %i.ec, 1
  br i1 %i.ed, label %bb.j, label %_ZN4ncnn3MatD2Ev.exit101.i

bb.j:                                             ; preds = %bb.i
  %i.ee = load ptr, ptr %i.cn, align 8, !tbaa !34 ; 3 uses
  %.not3.i105.i = icmp eq ptr %i.ee, null
  %i.ef = load ptr, ptr %7, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i105.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eg = load ptr, ptr %i.ee, align 8, !tbaa !38
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  invoke void %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef %i.ef)
          to label %_ZN4ncnn3MatD2Ev.exit101.i unwind label %bb.n, !inline_history !0

bb.l:                                             ; preds = %bb.j
  %.not.i173.i = icmp eq ptr %i.ef, null
  br i1 %.not.i173.i, label %_ZN4ncnn3MatD2Ev.exit101.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ef) #4
  br label %_ZN4ncnn3MatD2Ev.exit101.i

bb.n:                                             ; preds = %bb.k
  %i.ej = landingpad { ptr, i32 }
          catch ptr null
  %i.ek = extractvalue { ptr, i32 } %i.ej, 0
  call void @__clang_call_terminate(ptr %i.ek) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit101.i:                       ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  %i.el = add nuw nsw i32 %.0205.i, 1             ; 2 uses
  %i.em = load i32, ptr %i.l, align 4, !tbaa !10
  %i.en = icmp slt i32 %i.el, %i.em
  br i1 %i.en, label %.noexc.i, label %._crit_edge.i, !llvm.loop !369

._crit_edge.i:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit101.i, %.preheader.i
  %i.eo = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %.not.i112.i = icmp eq ptr %i.eo, null
  br i1 %.not.i112.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %i.ep = atomicrmw add ptr %i.eo, i32 -1 acq_rel, align 4
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.p, label %_ZN4ncnn3MatD2Ev.exit99.i

bb.p:                                             ; preds = %bb.o
  %i.er = load ptr, ptr %i.by, align 8, !tbaa !34 ; 3 uses
  %.not3.i113.i = icmp eq ptr %i.er, null
  %i.es = load ptr, ptr %6, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i113.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = load ptr, ptr %i.er, align 8, !tbaa !38
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8
  invoke void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef %i.es)
          to label %_ZN4ncnn3MatD2Ev.exit99.i unwind label %bb.t, !inline_history !0

bb.r:                                             ; preds = %bb.p
  %.not.i169.i = icmp eq ptr %i.es, null
  br i1 %.not.i169.i, label %_ZN4ncnn3MatD2Ev.exit99.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.es) #4
  br label %_ZN4ncnn3MatD2Ev.exit99.i

bb.t:                                             ; preds = %bb.q
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  call void @__clang_call_terminate(ptr %i.ex) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit99.i:                        ; preds = %bb.s, %bb.r, %bb.q, %bb.o, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.ad

bb.u:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.ey = load i32, ptr %i.h, align 4, !tbaa !10
  %i.ez = mul nsw i32 %i.ey, 36
  %i.fa = load i32, ptr %i.i, align 4, !tbaa !10
  %i.fb = mul nsw i32 %i.ez, %i.fa
  %i.fc = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  store i64 0, ptr %i.fg, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %8, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fe, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %8, i32 noundef %i.fb, i32 noundef 1, i32 noundef %3, i64 noundef 4, ptr noundef %i.fc)
          to label %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i unwind label %bb.v

_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i:     ; preds = %bb.u
  %i.fh = load ptr, ptr %8, align 8, !tbaa !27
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.critedge90.i, label %_ZNK4ncnn3Mat5emptyEv.exit177.i

_ZNK4ncnn3Mat5emptyEv.exit177.i:                  ; preds = %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i
  %i.fj = load i64, ptr %i.fg, align 8, !tbaa !19
  %i.fk = load i32, ptr %i.ff, align 8, !tbaa !18
  %i.fl = sext i32 %i.fk to i64
  %i.fm = mul i64 %i.fj, %i.fl
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %.critedge90.i, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.az

bb.w:                                             ; preds = %_ZNK4ncnn3Mat5emptyEv.exit177.i
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined, ptr nonnull %i.l, ptr nonnull %i.k, ptr nonnull %i.h, ptr nonnull %i.i, ptr nonnull %i.e, ptr nonnull %i.f, ptr nonnull %8, ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull %5)
  %i.fp = load ptr, ptr %i.fd, align 8, !tbaa !35 ; 2 uses
  %.not.i124.i = icmp eq ptr %i.fp, null
  br i1 %.not.i124.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fq = atomicrmw add ptr %i.fp, i32 -1 acq_rel, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.y, label %_ZN4ncnn3MatD2Ev.exit96.i

bb.y:                                             ; preds = %bb.x
  %i.fs = load ptr, ptr %i.fe, align 8, !tbaa !34 ; 3 uses
  %.not3.i125.i = icmp eq ptr %i.fs, null
  %i.ft = load ptr, ptr %8, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i125.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !38
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8
  invoke void %i.fw(ptr noundef nonnull align 8 dereferenceable(8) %i.fs, ptr noundef %i.ft)
          to label %_ZN4ncnn3MatD2Ev.exit96.i unwind label %bb.ac, !inline_history !0

bb.aa:                                            ; preds = %bb.y
  %.not.i163.i = icmp eq ptr %i.ft, null
  br i1 %.not.i163.i, label %_ZN4ncnn3MatD2Ev.exit96.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.ft) #4
  br label %_ZN4ncnn3MatD2Ev.exit96.i

bb.ac:                                            ; preds = %bb.z
  %i.fx = landingpad { ptr, i32 }
          catch ptr null
  %i.fy = extractvalue { ptr, i32 } %i.fx, 0
  call void @__clang_call_terminate(ptr %i.fy) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit96.i:                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit96.i, %_ZN4ncnn3MatD2Ev.exit99.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #4
  %i.fz = load i32, ptr %i.h, align 4, !tbaa !10
  %i.ga = mul nsw i32 %i.fz, 36
  %i.gb = load i32, ptr %i.g, align 4, !tbaa !10
  %i.gc = mul nsw i32 %i.ga, %i.gb
  %i.gd = load ptr, ptr %i.ax, align 8, !tbaa !33
  %i.ge = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.gh = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  store i64 0, ptr %i.gh, align 8, !tbaa !19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %9, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gf, i8 0, i64 28, i1 false)
  invoke void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %9, i32 noundef %i.gc, i32 noundef 1, i32 noundef %3, i64 noundef 4, ptr noundef %i.gd)
          to label %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i unwind label %bb.ae

_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i:        ; preds = %bb.ad
  %i.gi = load ptr, ptr %9, align 8, !tbaa !27
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i, label %_ZNK4ncnn3Mat5emptyEv.exit.i

_ZNK4ncnn3Mat5emptyEv.exit.i:                     ; preds = %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i
  %i.gk = load i64, ptr %i.gh, align 8, !tbaa !19
  %i.gl = load i32, ptr %i.gg, align 8, !tbaa !18
  %i.gm = sext i32 %i.gl to i64
  %i.gn = mul i64 %i.gk, %i.gm
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %bb.az

bb.af:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.i
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.m, i32 %3)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 11, ptr nonnull @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2, ptr nonnull %i.j, ptr nonnull %i.g, ptr nonnull %9, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.h, ptr nonnull %i.f, ptr nonnull %i.i, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %5, ptr nonnull align 8 dereferenceable(72) %1)
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread.i

_ZNK4ncnn3Mat5emptyEv.exit.thread.i:              ; preds = %bb.af, %_ZNK4ncnn3Mat5emptyEv.exit.i, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i
  %.273.i = phi i32 [ 0, %bb.af ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit.i ], [ -100, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit.i ]
  %i.gq = load ptr, ptr %i.ge, align 8, !tbaa !35 ; 2 uses
  %.not.i132.i = icmp eq ptr %i.gq, null
  br i1 %.not.i132.i, label %_ZN4ncnn3MatD2Ev.exit94.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  %i.gr = atomicrmw add ptr %i.gq, i32 -1 acq_rel, align 4
  %i.gs = icmp eq i32 %i.gr, 1
  br i1 %i.gs, label %bb.ah, label %_ZN4ncnn3MatD2Ev.exit94.i

bb.ah:                                            ; preds = %bb.ag
  %i.gt = load ptr, ptr %i.gf, align 8, !tbaa !34 ; 3 uses
  %.not3.i133.i = icmp eq ptr %i.gt, null
  %i.gu = load ptr, ptr %9, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i133.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load ptr, ptr %i.gt, align 8, !tbaa !38
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 24
  %i.gx = load ptr, ptr %i.gw, align 8
  invoke void %i.gx(ptr noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gu)
          to label %_ZN4ncnn3MatD2Ev.exit94.i unwind label %bb.al, !inline_history !0

bb.aj:                                            ; preds = %bb.ah
  %.not.i159.i = icmp eq ptr %i.gu, null
  br i1 %.not.i159.i, label %_ZN4ncnn3MatD2Ev.exit94.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.gu) #4
  br label %_ZN4ncnn3MatD2Ev.exit94.i

bb.al:                                            ; preds = %bb.ai
  %i.gy = landingpad { ptr, i32 }
          catch ptr null
  %i.gz = extractvalue { ptr, i32 } %i.gy, 0
  call void @__clang_call_terminate(ptr %i.gz) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit94.i:                        ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ag, %_ZNK4ncnn3Mat5emptyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  br label %bb.ay

.critedge.i:                                      ; preds = %_ZNK4ncnn3Mat5emptyEv.exit178.i, %_ZN4ncnn3MatC2EimPNS_9AllocatorE.exit.i
  %i.ha = load ptr, ptr %i.bx, align 8, !tbaa !35 ; 2 uses
  %.not.i144.i = icmp eq ptr %i.ha, null
  br i1 %.not.i144.i, label %_ZN4ncnn3MatD2Ev.exit91.i, label %bb.am

bb.am:                                            ; preds = %.critedge.i
  %i.hb = atomicrmw add ptr %i.ha, i32 -1 acq_rel, align 4
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.an, label %_ZN4ncnn3MatD2Ev.exit91.i

bb.an:                                            ; preds = %bb.am
  %i.hd = load ptr, ptr %i.by, align 8, !tbaa !34 ; 3 uses
  %.not3.i145.i = icmp eq ptr %i.hd, null
  %i.he = load ptr, ptr %6, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i145.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !38
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8
  invoke void %i.hh(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, ptr noundef %i.he)
          to label %_ZN4ncnn3MatD2Ev.exit91.i unwind label %bb.ar, !inline_history !0

bb.ap:                                            ; preds = %bb.an
  %.not.i153.i = icmp eq ptr %i.he, null
  br i1 %.not.i153.i, label %_ZN4ncnn3MatD2Ev.exit91.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef nonnull %i.he) #4
  br label %_ZN4ncnn3MatD2Ev.exit91.i

bb.ar:                                            ; preds = %bb.ao
  %i.hi = landingpad { ptr, i32 }
          catch ptr null
  %i.hj = extractvalue { ptr, i32 } %i.hi, 0
  call void @__clang_call_terminate(ptr %i.hj) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit91.i:                        ; preds = %bb.aq, %bb.ap, %bb.ao, %bb.am, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  br label %bb.ay

.critedge90.i:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit177.i, %_ZN4ncnn3MatC2EiiimPNS_9AllocatorE.exit183.i
  %i.hk = load ptr, ptr %i.fd, align 8, !tbaa !35 ; 2 uses
  %.not.i148.i = icmp eq ptr %i.hk, null
  br i1 %.not.i148.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.as

bb.as:                                            ; preds = %.critedge90.i
  %i.hl = atomicrmw add ptr %i.hk, i32 -1 acq_rel, align 4
  %i.hm = icmp eq i32 %i.hl, 1
  br i1 %i.hm, label %bb.at, label %_ZN4ncnn3MatD2Ev.exit.i

bb.at:                                            ; preds = %bb.as
  %i.hn = load ptr, ptr %i.fe, align 8, !tbaa !34 ; 3 uses
  %.not3.i149.i = icmp eq ptr %i.hn, null
  %i.ho = load ptr, ptr %8, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i149.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !38
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.hr = load ptr, ptr %i.hq, align 8
  invoke void %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef %i.ho)
          to label %_ZN4ncnn3MatD2Ev.exit.i unwind label %bb.ax, !inline_history !0

bb.av:                                            ; preds = %bb.at
  %.not.i152.i = icmp eq ptr %i.ho, null
  br i1 %.not.i152.i, label %_ZN4ncnn3MatD2Ev.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef nonnull %i.ho) #4
  br label %_ZN4ncnn3MatD2Ev.exit.i

bb.ax:                                            ; preds = %bb.au
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit.i:                          ; preds = %bb.aw, %bb.av, %bb.au, %bb.as, %.critedge90.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  br label %bb.ay

bb.ay:                                            ; preds = %_ZN4ncnn3MatD2Ev.exit.i, %_ZN4ncnn3MatD2Ev.exit91.i, %_ZN4ncnn3MatD2Ev.exit94.i
  %.374.i = phi i32 [ %.273.i, %_ZN4ncnn3MatD2Ev.exit94.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit91.i ], [ -100, %_ZN4ncnn3MatD2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  br label %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i

bb.az:                                            ; preds = %bb.ae, %bb.v, %bb.h
  %.pn85.pn.i = phi { ptr, i32 } [ %i.gp, %bb.ae ], [ %i.cr, %bb.h ], [ %i.fo, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  %i.hu = load ptr, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %.not.i140.i = icmp eq ptr %i.hu, null
  br i1 %.not.i140.i, label %_ZN4ncnn3MatD2Ev.exit92.i, label %bb.bg

_ZNK4ncnn3Mat5emptyEv.exit179.thread.i:           ; preds = %bb.ay, %_ZNK4ncnn3Mat5emptyEv.exit179.i, %bb.e
  %.475.i = phi i32 [ %.374.i, %bb.ay ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit179.i ], [ -100, %bb.e ]
  %i.hv = load ptr, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.hv, null
  br i1 %.not.i136.i, label %_ZN4ncnn3MatD2Ev.exit93.i, label %bb.ba

bb.ba:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i
  %i.hw = atomicrmw add ptr %i.hv, i32 -1 acq_rel, align 4
  %i.hx = icmp eq i32 %i.hw, 1
  br i1 %i.hx, label %bb.bb, label %_ZN4ncnn3MatD2Ev.exit93.i

bb.bb:                                            ; preds = %bb.ba
  %i.hy = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 3 uses
  %.not3.i137.i = icmp eq ptr %i.hy, null
  %i.hz = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i137.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !38
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = load ptr, ptr %i.ib, align 8
  invoke void %i.ic(ptr noundef nonnull align 8 dereferenceable(8) %i.hy, ptr noundef %i.hz)
          to label %_ZN4ncnn3MatD2Ev.exit93.i unwind label %bb.bf, !inline_history !0

bb.bd:                                            ; preds = %bb.bb
  %.not.i157.i = icmp eq ptr %i.hz, null
  br i1 %.not.i157.i, label %_ZN4ncnn3MatD2Ev.exit93.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @free(ptr noundef nonnull %i.hz) #4
  br label %_ZN4ncnn3MatD2Ev.exit93.i

bb.bf:                                            ; preds = %bb.bc
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit93.i:                        ; preds = %bb.be, %bb.bd, %bb.bc, %bb.ba, %_ZNK4ncnn3Mat5emptyEv.exit179.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit

bb.bg:                                            ; preds = %bb.az
  %i.if = atomicrmw add ptr %i.hu, i32 -1 acq_rel, align 4
  %i.ig = icmp eq i32 %i.if, 1
  br i1 %i.ig, label %bb.bh, label %_ZN4ncnn3MatD2Ev.exit92.i

bb.bh:                                            ; preds = %bb.bg
  %i.ih = load ptr, ptr %i.bc, align 8, !tbaa !34 ; 3 uses
  %.not3.i141.i = icmp eq ptr %i.ih, null
  %i.ii = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  br i1 %.not3.i141.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !38
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8
  invoke void %i.il(ptr noundef nonnull align 8 dereferenceable(8) %i.ih, ptr noundef %i.ii)
          to label %_ZN4ncnn3MatD2Ev.exit92.i unwind label %bb.bl, !inline_history !0

bb.bj:                                            ; preds = %bb.bh
  %.not.i155.i = icmp eq ptr %i.ii, null
  br i1 %.not.i155.i, label %_ZN4ncnn3MatD2Ev.exit92.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @free(ptr noundef nonnull %i.ii) #4
  br label %_ZN4ncnn3MatD2Ev.exit92.i

bb.bl:                                            ; preds = %bb.bi
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  call void @__clang_call_terminate(ptr %i.in) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit92.i:                        ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bg, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  resume { ptr, i32 } %.pn85.pn.i

_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.exit: ; preds = %bb.b, %bb.d, %_ZN4ncnn3MatD2Ev.exit93.i
  %.576.i = phi i32 [ %i.o, %bb.b ], [ %i.q, %bb.d ], [ %.475.i, %_ZN4ncnn3MatD2Ev.exit93.i ]
  ret i32 %.576.i
}

declare noundef i32 @_ZN4ncnn33conv3x3s1_winograd43_int8_avxvnniERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

declare noundef i32 @_ZN4ncnn30conv3x3s1_winograd43_int8_avx2ERKNS_3MatERS0_S2_iRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 1, -2147483648) %6) unnamed_addr #13 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %i.j = alloca i32, align 4                      ; 8 uses
  %i.k = alloca [6 x [6 x [2 x i16]]], align 16   ; 9 uses
  %i.l = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %2, ptr %i.a, align 4, !tbaa !10
  store i32 %3, ptr %i.b, align 4, !tbaa !10
  store i32 %4, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !16   ; 2 uses
  store i32 %i.n, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  store i32 %i.p, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8, !tbaa !17   ; 2 uses
  store i32 %i.r, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !19
  %i.u = sext i32 %i.r to i64
  %i.v = mul i64 %i.t, %i.u
  store i64 %i.v, ptr %i.g, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #4
  %i.w = add nsw i32 %i.n, 1
  %i.x = sdiv i32 %i.w, 4
  store i32 %i.x, ptr %i.h, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #4
  store i32 0, ptr %i.j, align 4, !tbaa !10
  %i.y = sdiv i32 %5, 8
  store i32 %i.y, ptr %i.i, align 4, !tbaa !10
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.l, i32 %6)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 12, ptr nonnull @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined, ptr nonnull %i.i, ptr nonnull %i.j, ptr nonnull %i.b, ptr nonnull %i.a, ptr nonnull %i.h, ptr nonnull %0, ptr nonnull %i.c, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.d, ptr nonnull %i.g, ptr nonnull %1)
  %i.z = load i32, ptr %i.i, align 4, !tbaa !10
  %i.aa = shl nsw i32 %i.z, 3
  %i.ab = load i32, ptr %i.j, align 4, !tbaa !10
  %i.ac = add nsw i32 %i.ab, %i.aa                ; 5 uses
  store i32 %i.ac, ptr %i.j, align 4, !tbaa !10
  %i.ad = sub nsw i32 %5, %i.ac                   ; 2 uses
  %i.ae = sdiv i32 %i.ad, 2                       ; 3 uses
  store i32 %i.ae, ptr %i.i, align 4, !tbaa !10
  %i.af = icmp sgt i32 %i.ad, 1
  br i1 %i.af, label %.lr.ph, label %._crit_edge399

.lr.ph:                                           ; preds = %bb.a
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !10  ; 9 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = load i32, ptr %i.h, align 4             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.ao = load i32, ptr %i.d, align 4
  %i.ap = sext i32 %i.ao to i64
  %factor.op.mul400 = mul i32 %i.ag, 36
  %i.aq = shl nsw i32 %i.ag, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = shl nsw i32 %i.ag, 2
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i32 %i.ag, 6
  %i.av = sext i32 %i.au to i64
  %i.aw = shl nsw i32 %i.ag, 3
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i32 %i.ag, 10
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i32 %i.ag, 12
  %i.bb = sext i32 %i.ba to i64                   ; 6 uses
  br i1 %i.ah, label %.lr.ph.split.us, label %._crit_edge399

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bc = load i32, ptr %i.e, align 4
  %i.bd = load i32, ptr %i.c, align 4
  %i.be = load i32, ptr %i.a, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load i32, ptr %i.m, align 4, !tbaa !16, !noalias !382
  %i.bh = load ptr, ptr %0, align 8, !tbaa !27, !noalias !382
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !382
  %i.bj = load i64, ptr %i.bf, align 8, !tbaa !28, !noalias !382 ; 2 uses
  %factor.op.mul = mul i64 %i.bi, %i.bj
  %i.bk = sext i32 %i.bg to i64
  %factor.op.mul.us = mul i64 %i.bj, %i.bk
  %i.bl = load ptr, ptr %1, align 8, !tbaa !27
  %i.bm = sext i32 %i.bc to i64
  %i.bn = sext i32 %i.ac to i64
  %i.bo = sext i32 %i.bd to i64
  %wide.trip.count437 = zext nneg i32 %i.ae to i64
  %wide.trip.count = zext nneg i32 %i.ag to i64
  br label %_ZN4ncnn3MatD2Ev.exit353.lr.ph.us

_ZN4ncnn3MatD2Ev.exit353.lr.ph.us:                ; preds = %._crit_edge.us, %.lr.ph.split.us
  %indvars.iv434 = phi i64 [ %indvars.iv.next435, %._crit_edge.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.bp = shl nuw nsw i64 %indvars.iv434, 1
  %i.bq = add nsw i64 %i.bp, %i.bn                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #4
  %i.br = add nsw i64 %i.bq, %i.bo
  %.reass = mul i64 %factor.op.mul, %i.br
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.reass
  %i.bt = trunc nsw i64 %i.bq to i32
  %.reass401.us = mul i32 %factor.op.mul400, %i.bt
  %i.bu = sext i32 %.reass401.us to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.bl, i64 %i.bu
  br label %_ZN4ncnn3MatD2Ev.exit353.us

_ZN4ncnn3MatD2Ev.exit353.us:                      ; preds = %_ZN4ncnn3MatD2Ev.exit353.lr.ph.us, %bb.q
  %indvars.iv430 = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit353.lr.ph.us ], [ %indvars.iv.next431, %bb.q ] ; 3 uses
  %i.bw = trunc i64 %indvars.iv430 to i32
  %i.bx = add i32 %i.be, %i.bw                    ; 2 uses
  %i.by = sdiv i32 %i.bx, %i.ai
  %i.bz = srem i32 %i.bx, %i.ai
  %i.ca = shl nsw i32 %i.by, 2
  %i.cb = sext i32 %i.ca to i64                   ; 2 uses
  %.reass.us = mul i64 %factor.op.mul.us, %i.cb
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.reass.us
  %i.cd = shl nsw i32 %i.bz, 2                    ; 6 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cc, i64 %i.ce
  %i.cg = load i64, ptr %i.g, align 8
  %i.ch = or disjoint i32 %i.cd, 1
  %i.ci = load i32, ptr %i.d, align 4             ; 5 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  %i.ck = or disjoint i32 %i.cd, 2
  %i.cl = icmp slt i32 %i.ck, %i.ci
  %i.cm = or disjoint i32 %i.cd, 3
  %i.cn = icmp slt i32 %i.cm, %i.ci
  %i.co = add nsw i32 %i.cd, 4
  %i.cp = icmp slt i32 %i.co, %i.ci
  %i.cq = add nsw i32 %i.cd, 5
  %i.cr = icmp slt i32 %i.cq, %i.ci
  %invariant.op = sub nsw i64 %i.bm, %i.cb
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %_ZN4ncnn3MatD2Ev.exit353.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %_ZN4ncnn3MatD2Ev.exit353.us ] ; 8 uses
  %.0288388.us = phi ptr [ %i.ge, %bb.n ], [ %i.cf, %_ZN4ncnn3MatD2Ev.exit353.us ] ; 8 uses
  %i.cs = icmp slt i64 %indvars.iv, %invariant.op
  br i1 %i.cs, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.ct = getelementptr inbounds nuw i8, ptr %.0288388.us, i64 %i.cg ; 6 uses
  %i.cu = load i8, ptr %.0288388.us, align 1, !tbaa !29
  %i.cv = load i8, ptr %i.ct, align 1, !tbaa !29
  br i1 %i.cj, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.cw = getelementptr inbounds nuw i8, ptr %.0288388.us, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29
  %i.da = sext i8 %i.cx to i32
  %i.db = sext i8 %i.cz to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0300.us = phi i32 [ %i.db, %bb.d ], [ 0, %bb.c ]
  %.0299.us = phi i32 [ %i.da, %bb.d ], [ 0, %bb.c ]
  br i1 %i.cl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dc = getelementptr inbounds nuw i8, ptr %.0288388.us, i64 2
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  %i.df = load i8, ptr %i.de, align 1, !tbaa !29
end_hunk_7
begin_hunk_8_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined:bb.a
  %11 = alloca %"class.ncnn::Mat", align 8        ; 16 uses
  %12 = alloca %"class.ncnn::Mat", align 8        ; 12 uses
  %i.h = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.j = add nsw i32 %i.h, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 %i.j, ptr %i.e, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  store i32 1, ptr %i.f, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  store i32 0, ptr %i.g, align 4, !tbaa !10
  %i.k = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.k, i32 34, ptr nonnull %i.g, ptr nonnull %i.d, ptr nonnull %i.e, ptr nonnull %i.f, i32 1, i32 1)
  %i.l = load i32, ptr %i.e, align 4, !tbaa !10
  %i.m = call i32 @llvm.smin.i32(i32 %i.l, i32 %i.j) ; 2 uses
  store i32 %i.m, ptr %i.e, align 4, !tbaa !10
  %i.n = load i32, ptr %i.d, align 4, !tbaa !10   ; 2 uses
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
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 44
  %i.as = getelementptr inbounds nuw i8, ptr %12, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %.069 = phi i32 [ %i.n, %.lr.ph ], [ %i.du, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.at = load i32, ptr %3, align 4, !tbaa !10    ; 2 uses
  %i.au = sdiv i32 %.069, %i.at
  %i.av = srem i32 %.069, %i.at
  %i.aw = load i32, ptr %4, align 4, !tbaa !10    ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %i.au                ; 3 uses
  %i.ay = load i32, ptr %5, align 4, !tbaa !10    ; 2 uses
  %i.az = mul nsw i32 %i.ay, %i.av                ; 3 uses
  %i.ba = load i32, ptr %6, align 4, !tbaa !10
  %i.bb = sub nsw i32 %i.ba, %i.ax
  %.sroa.speculated65 = call i32 @llvm.smin.i32(i32 %i.aw, i32 %i.bb) ; 2 uses
  %i.bc = load i32, ptr %7, align 4, !tbaa !10
  %i.bd = sub nsw i32 %i.bc, %i.az
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ay, i32 %i.bd) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #4
  %i.be = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc33 unwind label %bb.r

.noexc33:                                         ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.bf = load i32, ptr %i.o, align 4, !tbaa !16, !noalias !390 ; 2 uses
  %i.bg = load i32, ptr %i.p, align 8, !tbaa !20, !noalias !390 ; 2 uses
  %i.bh = load i32, ptr %i.q, align 4, !tbaa !42, !noalias !390
  %i.bi = load ptr, ptr %8, align 8, !tbaa !27, !noalias !390
  %i.bj = load i64, ptr %i.r, align 8, !tbaa !19, !noalias !390
  %i.bk = sext i32 %i.be to i64
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = load i64, ptr %i.s, align 8, !tbaa !28, !noalias !390 ; 4 uses
  %i.bn = mul i64 %i.bl, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bn
  %i.bp = load i32, ptr %i.t, align 8, !tbaa !17, !noalias !390
  %i.bq = load ptr, ptr %i.u, align 8, !tbaa !34, !noalias !390
  store ptr %i.bo, ptr %11, align 8, !tbaa !27
  store ptr null, ptr %i.v, align 8, !tbaa !35
  store i64 %i.bm, ptr %i.w, align 8, !tbaa !28
  store i32 %i.bp, ptr %i.x, align 8, !tbaa !17
  store ptr %i.bq, ptr %i.y, align 8, !tbaa !34
  store i32 %i.bf, ptr %i.aa, align 4, !tbaa !16
  store i32 %i.bg, ptr %i.ab, align 8, !tbaa !20
  store i32 1, ptr %i.ac, align 4, !tbaa !42
  store i32 %i.bh, ptr %i.ad, align 8, !tbaa !18
  %i.br = sext i32 %i.bf to i64
  %i.bs = sext i32 %i.bg to i64
  %i.bt = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.bu = mul i64 %i.bm, %i.bt
  %i.bv = add i64 %i.bu, 15
  %i.bw = and i64 %i.bv, -16
  %i.bx = udiv i64 %i.bw, %i.bm
  store i64 %i.bx, ptr %i.ae, align 8, !tbaa !19
  %i.by = load i32, ptr %i.af, align 8, !tbaa !36, !noalias !390 ; 2 uses
  %i.bz = add nsw i32 %i.by, -1
  store i32 %i.bz, ptr %i.z, align 8, !tbaa !36, !alias.scope !390
  %i.ca = icmp eq i32 %i.by, 4
  br i1 %i.ca, label %bb.d, label %_ZN4ncnn3Mat7channelEi.exit34

bb.d:                                             ; preds = %.noexc33
  store i64 %i.bt, ptr %i.ae, align 8, !tbaa !19, !alias.scope !390
  br label %_ZN4ncnn3Mat7channelEi.exit34

_ZN4ncnn3Mat7channelEi.exit34:                    ; preds = %bb.d, %.noexc33
  call fastcc void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii(ptr noundef nonnull align 8 dereferenceable(72) %9, ptr noundef nonnull align 8 dereferenceable(72) %11, i32 noundef %i.ax, i32 noundef %.sroa.speculated65, i32 noundef %i.az, i32 noundef %.sroa.speculated, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #4
  %i.cb = load i32, ptr %4, align 4, !tbaa !10
  %i.cc = sdiv i32 %i.ax, %i.cb
  %i.cd = load ptr, ptr %10, align 8, !tbaa !27, !noalias !391
  %i.ce = load i64, ptr %i.ai, align 8, !tbaa !19, !noalias !391
  %i.cf = sext i32 %i.cc to i64
  %i.cg = mul i64 %i.ce, %i.cf
  %i.ch = load i64, ptr %i.aj, align 8, !tbaa !28, !noalias !391 ; 3 uses
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.ci
  %i.ck = load i32, ptr %i.ak, align 8, !tbaa !17, !noalias !391
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !34, !noalias !391
  %i.cm = load i32, ptr %5, align 4, !tbaa !10
  %i.cn = sdiv i32 %i.az, %i.cm
  %i.co = sext i32 %i.cn to i64
  store ptr null, ptr %i.am, align 8, !tbaa !35
  store i64 %i.ch, ptr %i.an, align 8, !tbaa !28
  store i32 %i.ck, ptr %i.ao, align 8, !tbaa !17
  store ptr %i.cl, ptr %i.ap, align 8, !tbaa !34
  store i32 2, ptr %i.aq, align 8, !tbaa !36
  %i.cp = load <4 x i32>, ptr %i.ag, align 4
  %i.cq = load i32, ptr %i.ah, align 8, !tbaa !20, !noalias !391
  %i.cr = load i32, ptr %i.ag, align 4, !tbaa !16, !noalias !391
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cq to i64
  %i.cu = mul nsw i64 %i.ct, %i.cs                ; 2 uses
  %i.cv = mul i64 %i.ch, %i.cu
  %i.cw = mul i64 %i.cv, %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cw
  store ptr %i.cx, ptr %12, align 8, !tbaa !27
  %i.cy = shufflevector <4 x i32> %i.cp, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.cy, ptr %i.ar, align 4, !tbaa !10
  store i64 %i.cu, ptr %i.as, align 8, !tbaa !19, !alias.scope !392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cz = call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 36, ptr %i.a, align 4, !tbaa !10
  store i32 %.sroa.speculated65, ptr %i.b, align 4, !tbaa !10
  store i32 %.sroa.speculated, ptr %i.c, align 4, !tbaa !10
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.cz, i32 1)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN4ncnnL26transpose_pack_B_tile_int8ERKNS_3MatERS0_iiii.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %12, ptr nonnull %i.b, ptr nonnull align 8 dereferenceable(72) %11, ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.da = load ptr, ptr %i.am, align 8, !tbaa !35 ; 2 uses
  %.not.i38 = icmp eq ptr %i.da, null
  br i1 %.not.i38, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.e

bb.e:                                             ; preds = %_ZN4ncnn3Mat7channelEi.exit34
  %i.db = atomicrmw add ptr %i.da, i32 -1 acq_rel, align 4
  %i.dc = icmp eq i32 %i.db, 1
  br i1 %i.dc, label %bb.f, label %_ZN4ncnn3MatD2Ev.exit35

bb.f:                                             ; preds = %bb.e
  %i.dd = load ptr, ptr %i.ap, align 8, !tbaa !34 ; 3 uses
  %.not3.i39 = icmp eq ptr %i.dd, null
  %i.de = load ptr, ptr %12, align 8, !tbaa !27   ; 3 uses
  br i1 %.not3.i39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.df = load ptr, ptr %i.dd, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.de)
          to label %_ZN4ncnn3MatD2Ev.exit35 unwind label %bb.j, !inline_history !0

bb.h:                                             ; preds = %bb.f
  %.not.i47 = icmp eq ptr %i.de, null
  br i1 %.not.i47, label %_ZN4ncnn3MatD2Ev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef nonnull %i.de) #4
  br label %_ZN4ncnn3MatD2Ev.exit35

bb.j:                                             ; preds = %bb.g
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit35:                          ; preds = %bb.e, %_ZN4ncnn3Mat7channelEi.exit34, %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #4
  %i.dk = load ptr, ptr %i.v, align 8, !tbaa !35  ; 2 uses
  %.not.i42 = icmp eq ptr %i.dk, null
  br i1 %.not.i42, label %_ZN4ncnn3MatD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit35
  %i.dl = atomicrmw add ptr %i.dk, i32 -1 acq_rel, align 4
  %i.dm = icmp eq i32 %i.dl, 1
  br i1 %i.dm, label %bb.l, label %_ZN4ncnn3MatD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.dn = load ptr, ptr %i.y, align 8, !tbaa !34  ; 3 uses
  %.not3.i43 = icmp eq ptr %i.dn, null
  %i.do = load ptr, ptr %11, align 8, !tbaa !27   ; 3 uses
  br i1 %.not3.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dp = load ptr, ptr %i.dn, align 8, !tbaa !38
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  invoke void %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.dn, ptr noundef %i.do)
          to label %_ZN4ncnn3MatD2Ev.exit unwind label %bb.p, !inline_history !0

bb.n:                                             ; preds = %bb.l
  %.not.i46 = icmp eq ptr %i.do, null
  br i1 %.not.i46, label %_ZN4ncnn3MatD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.do) #4
  br label %_ZN4ncnn3MatD2Ev.exit

bb.p:                                             ; preds = %bb.m
  %i.ds = landingpad { ptr, i32 }
          catch ptr null
  %i.dt = extractvalue { ptr, i32 } %i.ds, 0
  call void @__clang_call_terminate(ptr %i.dt) #25
  unreachable

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.k, %_ZN4ncnn3MatD2Ev.exit35, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #4
  %i.du = add nsw i32 %.069, 1
  %i.dv = load i32, ptr %i.e, align 4, !tbaa !10
  %.not.not = icmp slt i32 %.069, %i.dv
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
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #25
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %12) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x [6 x [4 x i32]]], align 16   ; 27 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %14 = alloca %"class.ncnn::Mat", align 8        ; 11 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.cf

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 0, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 %i.h, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 1, ptr %i.d, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  store i32 0, ptr %i.e, align 4, !tbaa !10
  %i.i = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i32 1, i32 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !10
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !10
  %i.l = load i32, ptr %i.b, align 4, !tbaa !10   ; 2 uses
  %.not132 = icmp sgt i32 %i.l, %i.k
  br i1 %.not132, label %._crit_edge136, label %.lr.ph135

.lr.ph135:                                        ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 44
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 320
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph135, %_ZN4ncnn3MatD2Ev.exit
  %.045133 = phi i32 [ %i.l, %.lr.ph135 ], [ %i.cl, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.bq = load i32, ptr %3, align 4, !tbaa !10
  %i.br = mul nsw i32 %i.bq, %.045133             ; 4 uses
  %i.bs = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc46 unwind label %bb.cg

.noexc46:                                         ; preds = %bb.c
  %i.bt = load ptr, ptr %4, align 8, !tbaa !27, !noalias !418
  %i.bu = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !418
  %i.bv = sext i32 %i.bs to i64
  %i.bw = mul i64 %i.bu, %i.bv
  %i.bx = load i64, ptr %i.n, align 8, !tbaa !28, !noalias !418
  %i.by = mul i64 %i.bw, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.by ; 4 uses
  %i.ca = load i32, ptr %5, align 4, !tbaa !10
  %i.cb = sub nsw i32 %i.ca, %i.br
  %i.cc = load i32, ptr %3, align 4, !tbaa !10
  %.sroa.speculated121 = call i32 @llvm.smin.i32(i32 %i.cc, i32 %i.cb) ; 8 uses
  %i.cd = load i32, ptr %6, align 4, !tbaa !10    ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph:                                           ; preds = %.noexc46
  %i.cf = icmp sgt i32 %.sroa.speculated121, 3
  %i.cg = and i32 %.sroa.speculated121, 2147483644
  %i.ch = zext nneg i32 %.sroa.speculated121 to i64
  %i.ci = add nsw i32 %.sroa.speculated121, -2
  %i.cj = sext i32 %.sroa.speculated121 to i64    ; 2 uses
  %i.ck = sext i32 %i.br to i64                   ; 2 uses
  %invariant.op.i = add nsw i64 %i.cj, -1
  %.pre = load i32, ptr %7, align 4, !tbaa !10
  br label %bb.d

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, %.noexc46
  %i.cl = add nsw i32 %.045133, 1
  %i.cm = load i32, ptr %i.c, align 4, !tbaa !10
  %.not.not = icmp slt i32 %.045133, %i.cm
  br i1 %.not.not, label %bb.c, label %._crit_edge136

bb.d:                                             ; preds = %.lr.ph, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit
  %i.cn = phi i32 [ %.pre, %.lr.ph ], [ %i.auk, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %i.co = phi i32 [ %i.cd, %.lr.ph ], [ %i.aum, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ]
  %.044131 = phi i32 [ 0, %.lr.ph ], [ %i.aul, %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit ] ; 6 uses
  %i.cp = sub nsw i32 %i.co, %.044131
  %.sroa.speculated117 = call i32 @llvm.smin.i32(i32 %i.cn, i32 %i.cp) ; 26 uses
  %i.cq = load i32, ptr %8, align 4, !tbaa !10    ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.noexc52.preheader, label %._crit_edge

.noexc52.preheader:                               ; preds = %bb.d
  %.pre137 = load i32, ptr %9, align 4, !tbaa !10
  br label %.noexc52

._crit_edge:                                      ; preds = %.noexc52, %bb.d
  %i.cs = load i32, ptr %i.ao, align 4, !tbaa !16 ; 13 uses
  %i.ct = load i32, ptr %i.ap, align 8, !tbaa !20 ; 9 uses
  %i.cu = load i32, ptr %i.aq, align 8, !tbaa !17 ; 5 uses
  %i.cv = load i64, ptr %i.ar, align 8, !tbaa !19
  %i.cw = sext i32 %i.cu to i64
  %i.cx = mul i64 %i.cv, %i.cw                    ; 7 uses
  %i.cy = add nsw i32 %i.cs, 3
  %i.cz = sdiv i32 %i.cy, 4                       ; 6 uses
  %factor.op.mul62.i = mul i32 %.sroa.speculated117, 36 ; 3 uses
  br i1 %i.cf, label %.lr.ph65.i, label %.preheader51.i

.lr.ph65.i:                                       ; preds = %._crit_edge
  %i.da = icmp sgt i32 %.sroa.speculated117, 0
  %i.db = shl nuw nsw i32 %.sroa.speculated117, 2
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl nuw nsw i32 %.sroa.speculated117, 3
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = mul nuw nsw i32 %.sroa.speculated117, 12
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = shl nuw nsw i32 %.sroa.speculated117, 4
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = mul nuw nsw i32 %.sroa.speculated117, 20
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = mul nuw nsw i32 %.sroa.speculated117, 24
  %i.dm = zext nneg i32 %i.dl to i64              ; 30 uses
  %.idx.i = shl i64 %i.cx, 3
  %.idx705.i = mul i64 %i.cx, 12
  %i.dn = mul nsw i32 %i.cu, %i.cs
  %i.do = sext i32 %i.dn to i64
  br i1 %i.da, label %.lr.ph.us.preheader.i, label %.preheader51.i

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph65.i
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated117 to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv134.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next135.i, %._crit_edge.us.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.dp = trunc nuw nsw i64 %indvars.iv134.i to i32 ; 2 uses
  %factor.op.mul.reass.us.i = mul i32 %factor.op.mul62.i, %i.dp
  %i.dq = sext i32 %factor.op.mul.reass.us.i to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.dq
  %i.ds = add i32 %i.br, %i.dp
  %i.dt = sdiv i32 %i.ds, %i.cu
  %i.du = sext i32 %i.dt to i64
  br label %.critedge.us.i

.critedge.us.i:                                   ; preds = %bb.u, %.lr.ph.us.i
  %indvars.iv130.i = phi i64 [ 0, %.lr.ph.us.i ], [ %indvars.iv.next131.i, %bb.u ] ; 3 uses
  %.idx174.i = shl nuw nsw i64 %indvars.iv130.i, 4
end_hunk_8
begin_hunk_9_@_ZN4ncnnL25conv3x3s1_winograd43_int8ERKNS_3MatERS0_S2_iRKNS_6OptionE.omp_outlined.2:bb.a
  %i.aqx = add i32 %i.aqw, %i.aqp
  %i.aqy = add i32 %i.aqx, %i.ane
  %i.aqz = add i32 %i.aqy, %i.and
  %i.ara = sdiv i32 %i.aqt, 576
  %i.arb = sdiv i32 %i.aqv, 576
  %i.arc = sdiv i32 %i.aqz, 576
  store i32 %i.ara, ptr %.1.us.1.i, align 4, !tbaa !10
  br i1 %i.ans, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ard = shl nsw i32 %i.aqq, 1
  %i.are = add nsw i32 %i.ard, %i.aqp
  %i.arf = sdiv i32 %i.are, 576
  %i.arg = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 4
  store i32 %i.arf, ptr %i.arg, align 4, !tbaa !10
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  br i1 %i.anu, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.arh = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 8
  store i32 %i.arb, ptr %i.arh, align 4, !tbaa !10
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  br i1 %i.anw, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ari = getelementptr inbounds nuw i8, ptr %.1.us.1.i, i64 12
  store i32 %i.arc, ptr %i.ari, align 4, !tbaa !10
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.arj = getelementptr inbounds [4 x i8], ptr %.1.us.1.i, i64 %i.ahx
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bp
  %.1.us.2.i = phi ptr [ %.1.us.1.i, %bb.bp ], [ %i.arj, %bb.bw ] ; 4 uses
  %i.ark = or disjoint i32 %i.anj, 3
  %.not.us.3.i = icmp slt i32 %i.ark, %i.ct
  br i1 %.not.us.3.i, label %bb.by, label %bb.ce

bb.by:                                            ; preds = %bb.bx
  %i.arl = add nsw i32 %i.akr, %i.ajv             ; 2 uses
  %i.arm = add nsw i32 %i.amj, %i.aln             ; 2 uses
  %i.arn = sub nsw i32 %i.ajv, %i.akr             ; 2 uses
  %i.aro = sub nsw i32 %i.aln, %i.amj             ; 2 uses
  %i.arp = add i32 %i.aix, %i.ait
  %i.arq = add i32 %i.arp, %i.aiz
  %i.arr = add i32 %i.arq, %i.arl
  %i.ars = add i32 %i.arr, %i.arm
  %i.art = shl nsw i32 %i.arm, 2
  %i.aru = add nsw i32 %i.art, %i.arl
  %i.arv = shl nsw i32 %i.aro, 3
  %i.arw = add i32 %i.arv, %i.arn
  %i.arx = add i32 %i.arw, %i.anc
  %i.ary = add i32 %i.arx, %i.ang
  %i.arz = add i32 %i.ary, %i.anf
  %i.asa = sdiv i32 %i.ars, 576
  %i.asb = sdiv i32 %i.aru, 576
  %i.asc = sdiv i32 %i.arz, 576
  store i32 %i.asa, ptr %.1.us.2.i, align 4, !tbaa !10
  br i1 %i.ans, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.asd = shl nsw i32 %i.aro, 1
  %i.ase = add nsw i32 %i.asd, %i.arn
  %i.asf = sdiv i32 %i.ase, 576
  %i.asg = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 4
  store i32 %i.asf, ptr %i.asg, align 4, !tbaa !10
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  br i1 %i.anu, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ash = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 8
  store i32 %i.asb, ptr %i.ash, align 4, !tbaa !10
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %i.anw, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.asi = getelementptr inbounds nuw i8, ptr %.1.us.2.i, i64 12
  store i32 %i.asc, ptr %i.asi, align 4, !tbaa !10
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.bx
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %exitcond165.not.i = icmp eq i64 %indvars.iv.next162.i, %wide.trip.count164.i
  br i1 %exitcond165.not.i, label %._crit_edge.us101.i, label %.critedge709.us.i, !llvm.loop !406

._crit_edge.us101.i:                              ; preds = %bb.ce
  %indvars.iv.next167.i = add nuw nsw i64 %indvars.iv166.i, 1 ; 2 uses
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next167.i, %i.cj
  br i1 %exitcond170.not.i, label %_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit, label %.lr.ph.us100.i, !llvm.loop !407

.noexc52:                                         ; preds = %.noexc52.preheader, %.noexc52
  %i.asj = phi i32 [ %i.aug, %.noexc52 ], [ %.pre137, %.noexc52.preheader ] ; 3 uses
  %i.ask = phi i32 [ %i.aui, %.noexc52 ], [ %i.cq, %.noexc52.preheader ] ; 2 uses
  %.0130 = phi i32 [ %i.auh, %.noexc52 ], [ 0, %.noexc52.preheader ] ; 5 uses
  %i.asl = sub nsw i32 %i.ask, %.0130
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.asj, i32 %i.asl)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #4
  %i.asm = load i32, ptr %3, align 4, !tbaa !10
  %i.asn = sdiv i32 %i.br, %i.asm
  %i.aso = load ptr, ptr %10, align 8, !tbaa !27, !noalias !422
  %i.asp = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !422
  %i.asq = sext i32 %i.asn to i64
  %i.asr = mul i64 %i.asp, %i.asq
  %i.ass = load i64, ptr %i.r, align 8, !tbaa !28, !noalias !422 ; 3 uses
  %i.ast = mul i64 %i.asr, %i.ass
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aso, i64 %i.ast
  %i.asv = load i32, ptr %i.s, align 8, !tbaa !17, !noalias !422
  %i.asw = load ptr, ptr %i.t, align 8, !tbaa !34, !noalias !422
  %i.asx = sdiv i32 %.0130, %i.asj
  %i.asy = sext i32 %i.asx to i64                 ; 2 uses
  store ptr null, ptr %i.u, align 8, !tbaa !35
  store i64 %i.ass, ptr %i.v, align 8, !tbaa !28
  store i32 %i.asv, ptr %i.w, align 8, !tbaa !17
  store ptr %i.asw, ptr %i.x, align 8, !tbaa !34
  store i32 2, ptr %i.y, align 8, !tbaa !36
  %i.asz = load <4 x i32>, ptr %i.o, align 4
  %i.ata = load i32, ptr %i.p, align 8, !tbaa !20, !noalias !422
  %i.atb = load i32, ptr %i.o, align 4, !tbaa !16, !noalias !422
  %i.atc = sext i32 %i.atb to i64
  %i.atd = sext i32 %i.ata to i64
  %i.ate = mul nsw i64 %i.atd, %i.atc             ; 2 uses
  %i.atf = mul i64 %i.ass, %i.ate
  %i.atg = mul i64 %i.atf, %i.asy
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asu, i64 %i.atg
  store ptr %i.ath, ptr %13, align 8, !tbaa !27
  %i.ati = shufflevector <4 x i32> %i.asz, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.ati, ptr %i.z, align 4, !tbaa !10
  store i64 %i.ate, ptr %i.aa, align 8, !tbaa !19, !alias.scope !423
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #4
  %i.atj = load i32, ptr %7, align 4, !tbaa !10
  %i.atk = sdiv i32 %.044131, %i.atj
  %i.atl = load ptr, ptr %11, align 8, !tbaa !27, !noalias !424
  %i.atm = load i64, ptr %i.ad, align 8, !tbaa !19, !noalias !424
  %i.atn = sext i32 %i.atk to i64
  %i.ato = mul i64 %i.atm, %i.atn
  %i.atp = load i64, ptr %i.ae, align 8, !tbaa !28, !noalias !424 ; 3 uses
  %i.atq = mul i64 %i.ato, %i.atp
  %i.atr = getelementptr inbounds nuw i8, ptr %i.atl, i64 %i.atq
  %i.ats = load i32, ptr %i.af, align 8, !tbaa !17, !noalias !424
  %i.att = load ptr, ptr %i.ag, align 8, !tbaa !34, !noalias !424
  store ptr null, ptr %i.ah, align 8, !tbaa !35
  store i64 %i.atp, ptr %i.ai, align 8, !tbaa !28
  store i32 %i.ats, ptr %i.aj, align 8, !tbaa !17
  store ptr %i.att, ptr %i.ak, align 8, !tbaa !34
  store i32 2, ptr %i.al, align 8, !tbaa !36
  %i.atu = load <4 x i32>, ptr %i.ab, align 4
  %i.atv = load i32, ptr %i.ac, align 8, !tbaa !20, !noalias !424
  %i.atw = load i32, ptr %i.ab, align 4, !tbaa !16, !noalias !424
  %i.atx = sext i32 %i.atw to i64
  %i.aty = sext i32 %i.atv to i64
  %i.atz = mul nsw i64 %i.aty, %i.atx             ; 2 uses
  %i.aua = mul i64 %i.atp, %i.atz
  %i.aub = mul i64 %i.aua, %i.asy
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atr, i64 %i.aub
  store ptr %i.auc, ptr %14, align 8, !tbaa !27
  %i.aud = shufflevector <4 x i32> %i.atu, <4 x i32> <i32 poison, i32 poison, i32 1, i32 1>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x i32> %i.aud, ptr %i.am, align 4, !tbaa !10
  store i64 %i.atz, ptr %i.an, align 8, !tbaa !19, !alias.scope !425
  %i.aue = add nsw i32 %i.asj, %.0130
  %i.auf = icmp sge i32 %i.aue, %i.ask
  call fastcc void @_ZN4ncnnL28gemm_transB_packed_tile_int8ERKNS_3MatES2_RS0_iiiiib(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(72) %14, ptr %i.bz, i32 noundef 36, i32 noundef %.sroa.speculated121, i32 noundef %.sroa.speculated117, i32 noundef %.0130, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.auf)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #4
  %i.aug = load i32, ptr %9, align 4, !tbaa !10   ; 2 uses
  %i.auh = add nsw i32 %i.aug, %.0130             ; 2 uses
  %i.aui = load i32, ptr %8, align 4, !tbaa !10   ; 2 uses
  %i.auj = icmp slt i32 %i.auh, %i.aui
  br i1 %i.auj, label %.noexc52, label %._crit_edge, !llvm.loop !416

_ZN4ncnnL47conv3x3s1_winograd43_transform_output_tile_int8ERKNS_3MatERS0_iiii.exit: ; preds = %._crit_edge.us101.i, %.lr.ph98.i, %.preheader.i
  %i.auk = load i32, ptr %7, align 4, !tbaa !10   ; 2 uses
  %i.aul = add nsw i32 %i.auk, %.044131           ; 2 uses
  %i.aum = load i32, ptr %6, align 4, !tbaa !10   ; 2 uses
  %i.aun = icmp slt i32 %i.aul, %i.aum
  br i1 %i.aun, label %bb.d, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !417

._crit_edge136:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %bb.cf

bb.cf:                                            ; preds = %._crit_edge136, %bb.a
  ret void

bb.cg:                                            ; preds = %bb.c
  %i.auo = landingpad { ptr, i32 }
          catch ptr null
  %i.aup = extractvalue { ptr, i32 } %i.auo, 0
  call void @__clang_call_terminate(ptr %i.aup) #25
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %13) #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.co

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i32 0, ptr %i.a, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i32 %i.g, ptr %i.b, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i32 1, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !10
  %i.h = load i32, ptr %0, align 4, !tbaa !10     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !10
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !10
  %i.k = load i32, ptr %i.a, align 4, !tbaa !10   ; 2 uses
  %.not287 = icmp sgt i32 %i.k, %i.j
  br i1 %.not287, label %._crit_edge290, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.o = load i32, ptr %4, align 4, !tbaa !10     ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.split, label %._crit_edge290

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge
  %i.q = phi i32 [ %i.awi, %._crit_edge ], [ %i.o, %.lr.ph ] ; 2 uses
  %.0288 = phi i32 [ %i.awj, %._crit_edge ], [ %i.k, %.lr.ph ] ; 3 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !10
  %i.s = shl nsw i32 %.0288, 3
  %i.t = add nsw i32 %i.r, %i.s                   ; 2 uses
  %i.u = icmp sgt i32 %i.q, 0
  br i1 %i.u, label %.noexc.lr.ph, label %._crit_edge

.noexc.lr.ph:                                     ; preds = %.lr.ph.split
  %i.v = mul i32 %i.t, 36
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %.thread.5
  %indvars.iv = phi i64 [ 0, %.noexc.lr.ph ], [ %indvars.iv.next, %.thread.5 ] ; 3 uses
  %i.w = load i32, ptr %5, align 4, !tbaa !10
  %i.x = load i32, ptr %6, align 4, !tbaa !10     ; 2 uses
  %i.y = load i32, ptr %8, align 4, !tbaa !10
  %i.z = add nsw i32 %i.y, %i.t
  %i.aa = load i32, ptr %9, align 4, !tbaa !10    ; 4 uses
  %i.ab = sdiv i32 %i.z, %i.aa
  %i.ac = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !430
  %i.ad = load ptr, ptr %7, align 8, !tbaa !27, !noalias !430
  %i.ae = load i64, ptr %i.m, align 8, !tbaa !19, !noalias !430
  %i.af = sext i32 %i.ab to i64
  %i.ag = mul i64 %i.ae, %i.af
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !28, !noalias !430 ; 2 uses
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai
  %i.ak = sext i32 %i.ac to i64
  %i.al = trunc nuw nsw i64 %indvars.iv to i32
  %i.am = add nsw i32 %i.w, %i.al                 ; 2 uses
  %i.an = srem i32 %i.am, %i.x
  %i.ao = sdiv i32 %i.am, %i.x
  %i.ap = shl nsw i32 %i.ao, 2                    ; 2 uses
  %i.aq = sext i32 %i.ap to i64                   ; 6 uses
  %i.ar = mul i64 %i.ah, %i.ak
  %i.as = mul i64 %i.ar, %i.aq
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.as
  %i.au = shl nsw i32 %i.an, 2                    ; 6 uses
  %i.av = mul nsw i32 %i.au, %i.aa
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw ; 15 uses
  %i.ay = load i32, ptr %10, align 4, !tbaa !10   ; 2 uses
  %i.az = load i32, ptr %11, align 4, !tbaa !10   ; 11 uses
  %i.ba = mul nsw i32 %i.aa, %i.az
  %i.bb = sext i32 %i.ba to i64                   ; 5 uses
  %i.bc = or disjoint i32 %i.au, 1                ; 12 uses
  %i.bd = or disjoint i32 %i.au, 2                ; 12 uses
  %i.be = or disjoint i32 %i.au, 3                ; 12 uses
  %i.bf = add nsw i32 %i.au, 4                    ; 12 uses
  %i.bg = add nsw i32 %i.au, 5                    ; 12 uses
  %i.bh = sext i32 %i.ay to i64                   ; 5 uses
  %i.bi = icmp slt i32 %i.ap, %i.ay
  br i1 %i.bi, label %bb.c, label %.thread

bb.c:                                             ; preds = %.noexc
  switch i32 %i.aa, label %.thread [
    i32 8, label %bb.d
    i32 1, label %bb.n
  ]

bb.d:                                             ; preds = %bb.c
  %i.bj = load i64, ptr %i.ax, align 1, !tbaa !29
  %i.bk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bk to <16 x i8>    ; 2 uses
  %.lobit.i258 = ashr <16 x i8> %i.bl, splat (i8 7)
  %i.bm = shufflevector <16 x i8> %i.bl, <16 x i8> %.lobit.i258, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bn = bitcast <16 x i8> %i.bm to <2 x i64>    ; 2 uses
  %i.bo = icmp slt i32 %i.bc, %i.az
  br i1 %i.bo, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bq = load i64, ptr %i.bp, align 1, !tbaa !29
  %i.br = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bq, i64 0
  %i.bs = bitcast <2 x i64> %i.br to <16 x i8>    ; 2 uses
  %.lobit.i257 = ashr <16 x i8> %i.bs, splat (i8 7)
  %i.bt = shufflevector <16 x i8> %i.bs, <16 x i8> %.lobit.i257, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bu = bitcast <16 x i8> %i.bt to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0228 = phi <2 x i64> [ %i.bu, %bb.e ], [ zeroinitializer, %bb.d ] ; 2 uses
  %i.bv = icmp slt i32 %i.bd, %i.az
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bx = load i64, ptr %i.bw, align 1, !tbaa !29
  %i.by = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.bx, i64 0
  %i.bz = bitcast <2 x i64> %i.by to <16 x i8>    ; 2 uses
  %.lobit.i256 = ashr <16 x i8> %i.bz, splat (i8 7)
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> %.lobit.i256, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cb = bitcast <16 x i8> %i.ca to <2 x i64>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0230 = phi <2 x i64> [ %i.cb, %bb.g ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.cc = icmp slt i32 %i.be, %i.az
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.ce = load i64, ptr %i.cd, align 1, !tbaa !29
  %i.cf = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.ce, i64 0
  %i.cg = bitcast <2 x i64> %i.cf to <16 x i8>    ; 2 uses
  %.lobit.i255 = ashr <16 x i8> %i.cg, splat (i8 7)
  %i.ch = shufflevector <16 x i8> %i.cg, <16 x i8> %.lobit.i255, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ci = bitcast <16 x i8> %i.ch to <2 x i64>
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0241 = phi <2 x i64> [ %i.ci, %bb.i ], [ zeroinitializer, %bb.h ] ; 2 uses
  %i.cj = icmp slt i32 %i.bf, %i.az
  br i1 %i.cj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.cl = load i64, ptr %i.ck, align 1, !tbaa !29
  %i.cm = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cl, i64 0
  %i.cn = bitcast <2 x i64> %i.cm to <16 x i8>    ; 2 uses
  %.lobit.i254 = ashr <16 x i8> %i.cn, splat (i8 7)
  %i.co = shufflevector <16 x i8> %i.cn, <16 x i8> %.lobit.i254, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cp = bitcast <16 x i8> %i.co to <2 x i64>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0245 = phi <2 x i64> [ %i.cp, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.cq = icmp slt i32 %i.bg, %i.az
  br i1 %i.cq, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.cs = load i64, ptr %i.cr, align 1, !tbaa !29
  %i.ct = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cs, i64 0
  %i.cu = bitcast <2 x i64> %i.ct to <16 x i8>    ; 2 uses
  %.lobit.i253 = ashr <16 x i8> %i.cu, splat (i8 7)
  %i.cv = shufflevector <16 x i8> %i.cu, <16 x i8> %.lobit.i253, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cw = bitcast <16 x i8> %i.cv to <8 x i16>
  br label %.thread

bb.n:                                             ; preds = %bb.c
  %i.cx = load i64, ptr %12, align 8, !tbaa !39   ; 7 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cx
  %i.cz = shl i64 %i.cx, 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.cz
  %i.db = mul i64 %i.cx, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.db
  %i.dd = shl i64 %i.cx, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dd
  %i.df = mul i64 %i.cx, 5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.df
  %i.dh = mul i64 %i.cx, 6
  %i.di = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dh
  %i.dj = mul i64 %i.cx, 7
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.dj
  %i.dl = load i64, ptr %i.ax, align 1            ; 3 uses
  %i.dm = insertelement <2 x i64> poison, i64 %i.dl, i64 0
end_hunk_9
begin_hunk_10_@_ZN4ncnnL46conv3x3s1_winograd43_transform_input_tile_int8ERKNS_3MatERS0_iiiii.omp_outlined:bb.a
  %i.asc = add <8 x i16> %i.asb, %i.aiw
  %i.asd = add <8 x i16> %i.arw, %i.aru
  %i.ase = sub <8 x i16> %i.arw, %i.aru
  %i.asf = add <8 x i16> %i.arz, %i.ary
  %i.asg = sub <8 x i16> %i.arz, %i.ary
  %.neg274.1 = mul <8 x i16> %i.acb, splat (i16 -5)
  %i.ash = add <8 x i16> %.neg274.1, %i.art
  %i.asi = add <8 x i16> %i.ash, %i.apr
  store <8 x i16> %i.asc, ptr %i.arn, align 16, !tbaa !29
  store <8 x i16> %i.asd, ptr %i.aro, align 16, !tbaa !29
  store <8 x i16> %i.ase, ptr %i.arp, align 16, !tbaa !29
  store <8 x i16> %i.asf, ptr %i.arq, align 16, !tbaa !29
  store <8 x i16> %i.asg, ptr %i.arr, align 16, !tbaa !29
  store <8 x i16> %i.asi, ptr %i.ars, align 16, !tbaa !29
  %i.asj = load i32, ptr %4, align 4, !tbaa !10
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
  store <8 x i16> %i.atb, ptr %i.asm, align 16, !tbaa !29
  store <8 x i16> %i.atc, ptr %i.asn, align 16, !tbaa !29
  store <8 x i16> %i.atd, ptr %i.aso, align 16, !tbaa !29
  store <8 x i16> %i.ate, ptr %i.asp, align 16, !tbaa !29
  store <8 x i16> %i.atf, ptr %i.asq, align 16, !tbaa !29
  store <8 x i16> %i.ath, ptr %i.asr, align 16, !tbaa !29
  %i.ati = load i32, ptr %4, align 4, !tbaa !10
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
  store <8 x i16> %i.aua, ptr %i.atl, align 16, !tbaa !29
  store <8 x i16> %i.aub, ptr %i.atm, align 16, !tbaa !29
  store <8 x i16> %i.auc, ptr %i.atn, align 16, !tbaa !29
  store <8 x i16> %i.aud, ptr %i.ato, align 16, !tbaa !29
  store <8 x i16> %i.aue, ptr %i.atp, align 16, !tbaa !29
  store <8 x i16> %i.aug, ptr %i.atq, align 16, !tbaa !29
  %i.auh = load i32, ptr %4, align 4, !tbaa !10
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
  store <8 x i16> %i.auz, ptr %i.auk, align 16, !tbaa !29
  store <8 x i16> %i.ava, ptr %i.aul, align 16, !tbaa !29
  store <8 x i16> %i.avb, ptr %i.aum, align 16, !tbaa !29
  store <8 x i16> %i.avc, ptr %i.aun, align 16, !tbaa !29
  store <8 x i16> %i.avd, ptr %i.auo, align 16, !tbaa !29
  store <8 x i16> %i.avf, ptr %i.aup, align 16, !tbaa !29
  %i.avg = load i32, ptr %4, align 4, !tbaa !10
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
  store <8 x i16> %i.avy, ptr %i.avj, align 16, !tbaa !29
  store <8 x i16> %i.avz, ptr %i.avk, align 16, !tbaa !29
  store <8 x i16> %i.awa, ptr %i.avl, align 16, !tbaa !29
  store <8 x i16> %i.awb, ptr %i.avm, align 16, !tbaa !29
  store <8 x i16> %i.awc, ptr %i.avn, align 16, !tbaa !29
  store <8 x i16> %i.awe, ptr %i.avo, align 16, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.awf = load i32, ptr %4, align 4, !tbaa !10   ; 2 uses
  %i.awg = sext i32 %i.awf to i64
  %i.awh = icmp slt i64 %indvars.iv.next, %i.awg
  br i1 %i.awh, label %.noexc, label %._crit_edge, !llvm.loop !428

._crit_edge:                                      ; preds = %.thread.5, %.lr.ph.split
  %i.awi = phi i32 [ %i.q, %.lr.ph.split ], [ %i.awf, %.thread.5 ]
  %i.awj = add i32 %.0288, 1
  %exitcond.not = icmp eq i32 %.0288, %i.j
  br i1 %exitcond.not, label %._crit_edge290, label %.lr.ph.split, !llvm.loop !429

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
declare <8 x i16> @llvm.smulh.v8i16(<8 x i16>, <8 x i16>) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.vector.partial.reduce.add.v4i32.v8i32(<4 x i32>, <8 x i32>) #21

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
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!7, !7, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 _ZTSN4ncnn9AllocatorE", !11, i64 0}
!15 = !{!"_ZTSN4ncnn3MatE", !11, i64 0, !12, i64 8, !13, i64 16, !7, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !13, i64 64}
!16 = !{!15, !7, i64 44}
!17 = !{!15, !7, i64 24}
!18 = !{!15, !7, i64 56}
!19 = !{!15, !13, i64 64}
!20 = !{!15, !7, i64 48}
!21 = !{!12, !12, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"bool", !6, i64 0}
!26 = !{!"_ZTSN4ncnn6OptionE", !25, i64 0, !25, i64 1, !25, i64 2, !25, i64 3, !7, i64 4, !14, i64 8, !14, i64 16, !7, i64 24, !25, i64 28, !25, i64 29, !25, i64 30, !25, i64 31, !25, i64 32, !25, i64 33, !25, i64 34, !25, i64 35, !25, i64 36, !25, i64 37, !25, i64 38, !25, i64 39, !7, i64 40, !25, i64 44, !25, i64 45, !25, i64 46, !25, i64 47, !6, i64 48, !25, i64 49, !25, i64 50, !25, i64 51, !25, i64 52, !25, i64 53, !25, i64 54, !25, i64 55, !25, i64 56, !25, i64 57, !25, i64 58, !25, i64 59, !25, i64 60, !25, i64 61, !25, i64 62, !25, i64 63}
!27 = !{!15, !11, i64 0}
!28 = !{!15, !13, i64 16}
!29 = !{!6, !6, i64 0}
!30 = !{!"llvm.loop.unroll.disable"}
!31 = !{i64 2, i64 -1, i64 -1, i1 true}
!32 = !{!31}
!33 = !{!26, !14, i64 16}
!34 = !{!15, !14, i64 32}
!35 = !{!15, !12, i64 8}
!36 = !{!15, !7, i64 40}
!37 = !{!"vtable pointer", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!13, !13, i64 0}
!40 = !{!"short", !6, i64 0}
!41 = !{!40, !40, i64 0}
!42 = !{!15, !7, i64 52}
!43 = !{!"llvm.loop.unswitch.partial.disable"}
!44 = distinct !{!44, !22, !23, !24}
!45 = distinct !{!45, !22, !23, !24}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22, !24, !23}
!48 = distinct !{!48, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!49 = distinct !{!49, !48, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!51 = distinct !{!51, !50, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!53 = distinct !{!53, !52, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!55 = distinct !{!55, !54, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!56 = distinct !{!56, !22}
!57 = distinct !{!57, !22}
!58 = distinct !{!58, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!59 = distinct !{!59, !58, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!60 = distinct !{!60, !22}
!61 = distinct !{!61, !22}
!62 = distinct !{!62, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!63 = distinct !{!63, !62, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!64 = distinct !{!64, !22}
!65 = distinct !{!65, !22}
!66 = distinct !{!66, !22}
!67 = distinct !{!67, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!68 = distinct !{!68, !67, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!70 = distinct !{!70, !69, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!71 = distinct !{!71, !22}
!72 = distinct !{!72, !22}
!73 = distinct !{!73, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!74 = distinct !{!74, !73, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!75 = distinct !{!75, !22}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!78 = distinct !{!78, !77, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!79 = distinct !{!79, !22}
!80 = distinct !{!80, !22}
!81 = distinct !{!81, !22}
!82 = distinct !{!82, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!83 = distinct !{!83, !82, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!84 = distinct !{!84, !22}
!85 = distinct !{!85, !22}
!86 = distinct !{!86, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!87 = distinct !{!87, !86, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!88 = distinct !{!88, !22}
!89 = distinct !{!89, !22}
!90 = distinct !{!90, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!91 = distinct !{!91, !90, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!92 = distinct !{!92, !22}
!93 = distinct !{!93, !22}
!94 = distinct !{!94, !22}
!95 = distinct !{!95, !22}
!96 = distinct !{!96, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!97 = distinct !{!97, !96, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!98 = distinct !{!98, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!99 = distinct !{!99, !98, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!100 = distinct !{!100, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!101 = distinct !{!101, !100, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!102 = distinct !{!102, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!103 = distinct !{!103, !102, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!104 = distinct !{!104, !22}
!105 = distinct !{!105, !22}
!106 = distinct !{!106, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!107 = distinct !{!107, !106, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!111 = distinct !{!111, !110, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!112 = distinct !{!112, !22}
!113 = distinct !{!113, !22}
!114 = distinct !{!114, !22}
!115 = distinct !{!115, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!116 = distinct !{!116, !115, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!117 = distinct !{!117, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!118 = distinct !{!118, !117, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!119 = distinct !{!119, !22}
!120 = distinct !{!120, !22}
!121 = distinct !{!121, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!122 = distinct !{!122, !121, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!123 = distinct !{!123, !22}
!124 = distinct !{!124, !22}
!125 = distinct !{!125, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!126 = distinct !{!126, !125, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !22}
!129 = distinct !{!129, !22}
!130 = distinct !{!130, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!131 = distinct !{!131, !130, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!132 = distinct !{!132, !22}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!135 = distinct !{!135, !134, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!136 = distinct !{!136, !22}
!137 = distinct !{!137, !22}
!138 = distinct !{!138, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!139 = distinct !{!139, !138, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!140 = distinct !{!140, !22}
!141 = distinct !{!141, !30}
!142 = distinct !{!142, !22}
!143 = distinct !{!143, !22}
!144 = distinct !{!144, !22}
!145 = !{!"branch_weights", i32 4, i32 28}
!146 = !{!26, !7, i64 4}
!147 = !{!49}
!148 = !{!51}
!149 = !{!53}
!150 = !{!55}
!151 = !{!59}
!152 = !{!63}
!153 = !{!68}
!154 = !{!70}
!155 = !{!74}
!156 = !{!78}
!157 = !{!83}
!158 = !{!87}
!159 = !{!91}
!160 = !{!97}
!161 = !{!99}
!162 = !{!101}
!163 = !{!103}
!164 = !{!107}
!165 = !{!111}
!166 = !{!116}
!167 = !{!118}
!168 = !{!122}
!169 = !{!126}
!170 = !{!131}
!171 = !{!135}
!172 = !{!139}
!173 = distinct !{!173, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!174 = distinct !{!174, !173, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!175 = distinct !{!175, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!176 = distinct !{!176, !175, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!177 = distinct !{!177, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!178 = distinct !{!178, !177, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!179 = distinct !{!179, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!180 = distinct !{!180, !179, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!181 = distinct !{!181, !22}
!182 = distinct !{!182, !22}
!183 = distinct !{!183, !22}
!184 = distinct !{!184, !22}
!185 = distinct !{!185, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!186 = distinct !{!186, !185, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!187 = distinct !{!187, !22}
!188 = distinct !{!188, !22}
!189 = distinct !{!189, !22}
!190 = distinct !{!190, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!191 = distinct !{!191, !190, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!192 = distinct !{!192, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!193 = distinct !{!193, !192, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!194 = distinct !{!194, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!195 = distinct !{!195, !194, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!196 = distinct !{!196, !22}
!197 = distinct !{!197, !22}
!198 = distinct !{!198, !22}
!199 = distinct !{!199, !22}
!200 = distinct !{!200, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!201 = distinct !{!201, !200, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!202 = distinct !{!202, !22}
!203 = distinct !{!203, !22}
!204 = distinct !{!204, !22}
!205 = distinct !{!205, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!206 = distinct !{!206, !205, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!207 = distinct !{!207, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!208 = distinct !{!208, !207, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!209 = distinct !{!209, !22}
!210 = distinct !{!210, !22}
!211 = distinct !{!211, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!212 = distinct !{!212, !211, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!213 = distinct !{!213, !22}
!214 = distinct !{!214, !22}
!215 = distinct !{!215, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!216 = distinct !{!216, !215, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!217 = distinct !{!217, !22}
!218 = distinct !{!218, !22}
!219 = distinct !{!219, !22}
!220 = !{!174}
!221 = !{!176}
!222 = !{!178}
!223 = !{!180}
!224 = !{!186}
!225 = !{!191}
!226 = !{!193}
!227 = !{!195}
!228 = !{!201}
!229 = !{!206}
!230 = !{!208}
!231 = !{!212}
!232 = !{!216}
!233 = distinct !{!233, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!234 = distinct !{!234, !233, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!235 = distinct !{!235, i1 true, !"_ZN4ncnn3Mat5depthEi"}
!236 = distinct !{!236, !235, !"_ZN4ncnn3Mat5depthEi: argument 0"}
!237 = distinct !{!237, !22}
!238 = !{!234}
!239 = !{!236}
!240 = distinct !{!240, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!241 = distinct !{!241, !240, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!242 = distinct !{!242, !22}
!243 = distinct !{!243, !22}
!244 = distinct !{!244, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!245 = distinct !{!245, !244, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!246 = distinct !{!246, !22}
!247 = distinct !{!247, !22}
!248 = !{!241}
!249 = !{!245}
!250 = distinct !{!250, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!251 = distinct !{!251, !250, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!252 = distinct !{!252, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!253 = distinct !{!253, !252, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!254 = distinct !{!254, i1 true, !"_ZN4ncnn3Mat5depthEi"}
!255 = distinct !{!255, !254, !"_ZN4ncnn3Mat5depthEi: argument 0"}
!256 = !{!251}
!257 = !{!253}
!258 = !{!255}
!259 = distinct !{!259, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!260 = distinct !{!260, !259, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!261 = distinct !{!261, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!262 = distinct !{!262, !261, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!263 = distinct !{!263, !22}
!264 = distinct !{!264, !22}
!265 = distinct !{!265, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!266 = distinct !{!266, !265, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!267 = distinct !{!267, !22}
!268 = distinct !{!268, !22}
!269 = distinct !{!269, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!270 = distinct !{!270, !269, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!271 = distinct !{!271, !22}
!272 = distinct !{!272, !22}
!273 = distinct !{!273, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!274 = distinct !{!274, !273, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!275 = distinct !{!275, i1 true, !"_ZNK4ncnn3Mat5depthEi"}
!276 = distinct !{!276, !275, !"_ZNK4ncnn3Mat5depthEi: argument 0"}
!277 = distinct !{!277, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!278 = distinct !{!278, !277, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!279 = distinct !{!279, i1 true, !"_ZN4ncnn3Mat5depthEi"}
!280 = distinct !{!280, !279, !"_ZN4ncnn3Mat5depthEi: argument 0"}
!281 = distinct !{!281, !22}
!282 = distinct !{!282, !22}
!283 = !{!260}
!284 = !{!262}
!285 = !{!266}
!286 = !{!270}
!287 = !{!274}
!288 = !{!276}
!289 = !{!278}
!290 = !{!280}
!291 = distinct !{!291, !22}
!292 = distinct !{!292, !22}
!293 = distinct !{!293, !22}
!294 = distinct !{!294, !22}
!295 = distinct !{!295, !22}
!296 = distinct !{!296, !22}
!297 = distinct !{!297, !22}
!298 = distinct !{!298, !22}
!299 = distinct !{!299, !22}
!300 = distinct !{!300, !22}
!301 = distinct !{!301, !30}
!302 = distinct !{!302, !22}
!303 = distinct !{!303, !22}
!304 = distinct !{!304, !22}
!305 = distinct !{!305, !22}
!306 = distinct !{!306, !22}
!307 = distinct !{!307, !22}
!308 = distinct !{!308, !22}
!309 = distinct !{!309, !22}
!310 = distinct !{!310, !22}
!311 = distinct !{!311, !22}
!312 = distinct !{!312, !22}
!313 = distinct !{!313, !22, !23, !24}
!314 = distinct !{!314, !22, !23, !24}
!315 = distinct !{!315, !22, !24, !23}
!316 = distinct !{!316, !22, !24, !23}
!317 = distinct !{!317, !22}
!318 = distinct !{!318, !22, !23, !24}
!319 = distinct !{!319, !22, !23, !24}
!320 = distinct !{!320, !22, !24, !23}
!321 = distinct !{!321, !22, !24, !23}
!322 = distinct !{!322, !22}
!323 = distinct !{!323, !22}
!324 = distinct !{!324, !22}
!325 = distinct !{!325, !22}
!326 = distinct !{!326, !22}
!327 = distinct !{!327, !22}
!328 = distinct !{!328, !22}
!329 = distinct !{!329, !22}
!330 = distinct !{!330, !22}
!331 = distinct !{!331, !22, !23, !24}
!332 = distinct !{!332, !22, !23, !24}
!333 = distinct !{!333, !22, !24, !23}
!334 = distinct !{!334, !22}
!335 = distinct !{!335, !22, !23, !24}
!336 = distinct !{!336, !22, !23, !24}
!337 = distinct !{!337, !22, !24, !23}
!338 = distinct !{!338, !22, !24, !23}
!339 = distinct !{!339, !22}
!340 = distinct !{!340, !22}
!341 = !{!"branch_weights", i32 8, i32 24}
!342 = distinct !{!342, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!343 = distinct !{!343, !342, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!344 = distinct !{!344, !22}
!345 = distinct !{!345, !43}
!346 = !{!343}
!347 = distinct !{!347, !22}
!348 = distinct !{!348, !22}
!349 = distinct !{!349, !22}
!350 = distinct !{!350, !22}
!351 = distinct !{!351, !22}
!352 = distinct !{!352, !22}
!353 = distinct !{!353, !22}
!354 = distinct !{!354, !22}
!355 = distinct !{!355, !22}
!356 = distinct !{!356, !22}
!357 = distinct !{!357, !30}
!358 = distinct !{!358, !22}
!359 = distinct !{!359, !22}
!360 = distinct !{!360, !22}
!361 = distinct !{!361, !22}
!362 = distinct !{!362, !30}
!363 = distinct !{!363, !22}
!364 = distinct !{!364, !22}
!365 = distinct !{!365, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!366 = distinct !{!366, !365, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!367 = distinct !{!367, i1 true, !"_ZN4ncnn3Mat5depthEi"}
!368 = distinct !{!368, !367, !"_ZN4ncnn3Mat5depthEi: argument 0"}
!369 = distinct !{!369, !22}
!370 = !{!366}
!371 = !{!368}
!372 = distinct !{!372, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!373 = distinct !{!373, !372, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!374 = distinct !{!374, !22}
!375 = distinct !{!375, !22}
!376 = distinct !{!376, !22}
!377 = distinct !{!377, !22}
!378 = distinct !{!378, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!379 = distinct !{!379, !378, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!380 = distinct !{!380, !22}
!381 = distinct !{!381, !22}
!382 = !{!373}
!383 = !{!379}
!384 = distinct !{!384, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!385 = distinct !{!385, !384, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!386 = distinct !{!386, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!387 = distinct !{!387, !386, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!388 = distinct !{!388, i1 true, !"_ZN4ncnn3Mat5depthEi"}
!389 = distinct !{!389, !388, !"_ZN4ncnn3Mat5depthEi: argument 0"}
!390 = !{!385}
!391 = !{!387}
!392 = !{!389}
!393 = distinct !{!393, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!394 = distinct !{!394, !393, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!395 = distinct !{!395, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!396 = distinct !{!396, !395, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!397 = distinct !{!397, !22}
!398 = distinct !{!398, !22}
!399 = distinct !{!399, !22}
!400 = distinct !{!400, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!401 = distinct !{!401, !400, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!402 = distinct !{!402, !22}
!403 = distinct !{!403, !22}
!404 = distinct !{!404, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!405 = distinct !{!405, !404, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!406 = distinct !{!406, !22}
!407 = distinct !{!407, !22}
!408 = distinct !{!408, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!409 = distinct !{!409, !408, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!410 = distinct !{!410, i1 true, !"_ZNK4ncnn3Mat5depthEi"}
!411 = distinct !{!411, !410, !"_ZNK4ncnn3Mat5depthEi: argument 0"}
!412 = distinct !{!412, i1 true, !"_ZN4ncnn3Mat7channelEi"}
!413 = distinct !{!413, !412, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!414 = distinct !{!414, i1 true, !"_ZN4ncnn3Mat5depthEi"}
!415 = distinct !{!415, !414, !"_ZN4ncnn3Mat5depthEi: argument 0"}
!416 = distinct !{!416, !22}
!417 = distinct !{!417, !22}
!418 = !{!394}
!419 = !{!396}
!420 = !{!401}
!421 = !{!405}
!422 = !{!409}
!423 = !{!411}
!424 = !{!413}
!425 = !{!415}
!426 = distinct !{!426, i1 true, !"_ZNK4ncnn3Mat7channelEi"}
!427 = distinct !{!427, !426, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!428 = distinct !{!428, !22}
!429 = distinct !{!429, !43}
!430 = !{!427}
end_hunk_10
