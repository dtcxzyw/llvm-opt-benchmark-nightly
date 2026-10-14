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
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16   ; 9 uses
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
  %invariant.op711 = add <8 x i32> %invariant.op, %i.ax ; 2 uses
  %invariant.op712 = add <8 x i32> %invariant.op711, %i.ax
  %cmp.n = icmp eq i64 %n.vec, %i.at
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  %n.vec471 = and i64 %i.at, 2147483644           ; 4 uses
  %i.az = trunc nuw nsw i64 %n.vec471 to i32
  %i.ba = mul i32 %5, %i.az
  %broadcast.splatinsert472 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat473 = shufflevector <4 x i32> %broadcast.splatinsert472, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert476 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat477 = shufflevector <4 x i32> %broadcast.splatinsert476, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bb = mul nsw <4 x i32> %broadcast.splat477, <i32 0, i32 1, i32 2, i32 3>
  %i.bc = shl nsw i32 %5, 2
  %broadcast.splatinsert479 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %broadcast.splat480 = shufflevector <4 x i32> %broadcast.splatinsert479, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n485 = icmp eq i64 %n.vec471, %i.at
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
  %step.add.3.reass = add <8 x i32> %vec.ind, %invariant.op711
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
  %vec.ind.next.reass = add <8 x i32> %vec.ind, %invariant.op712
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val470 = phi i32 [ %i.bg, %vec.epilog.iter.check ], [ %.010972872.i, %vector.main.loop.iter.check ]
  %i.bp = add nsw i64 %n.vec471, %i.bd
  %i.bq = add i32 %.010972872.i, %i.ba            ; 2 uses
  %broadcast.splatinsert474 = insertelement <4 x i32> poison, i32 %bc.resume.val470, i64 0
  %broadcast.splat475 = shufflevector <4 x i32> %broadcast.splatinsert474, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction478 = add nsw <4 x i32> %broadcast.splat475, %i.bb
  %invariant.gep713 = getelementptr [4 x i8], ptr %.sroa.02743.0.i, i64 %i.bd
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index481 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next483, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind482 = phi <4 x i32> [ %induction478, %vec.epilog.ph ], [ %vec.ind.next484, %vec.epilog.vector.body ] ; 2 uses
  %i.br = mul nsw <4 x i32> %vec.ind482, %broadcast.splat473
  %gep714 = getelementptr [4 x i8], ptr %invariant.gep713, i64 %index481
  store <4 x i32> %i.br, ptr %gep714, align 4, !tbaa !10
  %index.next483 = add nuw i64 %index481, 4       ; 2 uses
  %vec.ind.next484 = add nsw <4 x i32> %vec.ind482, %broadcast.splat480
  %i.bs = icmp eq i64 %index.next483, %n.vec471
  br i1 %i.bs, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n485, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

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
  br i1 %exitcond3682.not.i, label %._crit_edge2874.split.i, label %iter.check, !llvm.loop !47

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
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !48

._crit_edge3235.loopexit.i:                       ; preds = %._crit_edge3233.i
  %.pre.i = load i32, ptr %i.i, align 4, !tbaa !10
  br label %._crit_edge3235.i

._crit_edge3235.i:                                ; preds = %._crit_edge3235.loopexit.i, %._crit_edge2874.split.i
  %i.cn = phi i32 [ %i.bz, %._crit_edge2874.split.i ], [ %.pre.i, %._crit_edge3235.loopexit.i ] ; 2 uses
  %.lcssa2866.i = phi i32 [ %i.cb, %._crit_edge2874.split.i ], [ %i.asy, %._crit_edge3235.loopexit.i ]
  %i.co = shl nsw i32 %.lcssa2866.i, 1            ; 2 uses
  %i.cp = add nsw i32 %i.co, %i.cn                ; 2 uses
  store i32 %i.cp, ptr %i.i, align 4, !tbaa !10
  %i.cq = icmp slt i32 %i.cp, %i.ae
  br i1 %i.cq, label %.noexc.lr.ph.i, label %._crit_edge3529.i

.noexc.lr.ph.i:                                   ; preds = %._crit_edge3235.i
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ct = mul i32 %i.z, %i.x                      ; 6 uses
  %i.cu = icmp sgt i32 %i.ct, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.cy = shl i64 %i.v, 1                         ; 7 uses
  %i.cz = mul i64 %i.v, 3                         ; 7 uses
  %i.da = shl i64 %i.v, 2                         ; 7 uses
  %i.db = mul i64 %i.v, 5                         ; 7 uses
  %i.dc = mul i64 %i.v, 6                         ; 7 uses
  %i.dd = mul i64 %i.v, 7                         ; 7 uses
  %i.de = sext i32 %i.cn to i64
  %i.df = sext i32 %i.co to i64
  %i.dg = add nsw i64 %i.df, %i.de
  %i.dh = sext i32 %i.ae to i64
  %i.di = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.dj = shufflevector <4 x i32> %i.di, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.dk = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.dl = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.noexc.i

.noexc1262.i:                                     ; preds = %._crit_edge3233.i, %.noexc1262.lr.ph.i
  %.011483234.i = phi i32 [ 0, %.noexc1262.lr.ph.i ], [ %i.asx, %._crit_edge3233.i ] ; 2 uses
  %i.dm = load i32, ptr %i.i, align 4, !tbaa !10
  %i.dn = shl nuw nsw i32 %.011483234.i, 1
  %i.do = add nsw i32 %i.dm, %i.dn                ; 8 uses
  %i.dp = load i32, ptr %i.w, align 4, !tbaa !16  ; 9 uses
  %i.dq = load i32, ptr %i.y, align 8, !tbaa !20
  %i.dr = load i64, ptr %i.s, align 8, !tbaa !19
  %i.ds = load i32, ptr %i.c, align 4, !tbaa !10  ; 4 uses
  %i.dt = sext i32 %i.ds to i64
  %i.du = mul i64 %i.dr, %i.dt                    ; 32 uses
  %i.dv = load ptr, ptr %1, align 8, !tbaa !28, !noalias !147 ; 2 uses
  %i.dw = load i64, ptr %i.cd, align 8, !tbaa !19, !noalias !147
  %i.dx = sext i32 %i.do to i64
  %i.dy = load i64, ptr %i.ce, align 8, !tbaa !29, !noalias !147
  %i.dz = mul i64 %i.dy, %i.dw                    ; 2 uses
  %i.ea = mul i64 %i.dz, %i.dx
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ea ; 2 uses
  %i.ec = add nsw i32 %i.do, 1
  %i.ed = sext i32 %i.ec to i64
  %i.ee = mul i64 %i.dz, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.ee ; 2 uses
  %i.eg = mul nsw i32 %i.dq, %i.dp                ; 6 uses
  %i.eh = icmp sgt i32 %i.eg, 3
  br i1 %i.eh, label %.noexc1407.lr.ph.i, label %.preheader2827.i

.noexc1407.lr.ph.i:                               ; preds = %.noexc1262.i
  %i.ei = sdiv i32 %i.do, 4
  %i.ej = srem i32 %i.do, 4
  %.lhs.trunc.i = trunc nsw i32 %i.ej to i8
  %i.ek = sdiv i8 %.lhs.trunc.i, 2
  %.sext.i = sext i8 %i.ek to i32
  %i.el = add nsw i32 %i.ei, %.sext.i
  %i.em = sext i32 %i.el to i64
  %i.en = load i32, ptr %i.d, align 4, !tbaa !10  ; 9 uses
  %i.eo = icmp sgt i32 %i.en, 7
  %i.ep = load i32, ptr %i.b, align 4             ; 9 uses
  %i.eq = load i32, ptr %i.a, align 4             ; 9 uses
  %factor.op.mul3003.i = mul i32 %i.eq, %i.ds     ; 4 uses
  %i.er = load i32, ptr %i.f, align 4             ; 3 uses
  %i.es = icmp sgt i32 %i.er, 0                   ; 3 uses
  %i.et = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.eu = icmp eq i32 %i.ds, 8
  %i.ev = shl i64 %i.du, 1                        ; 4 uses
  %i.ew = mul i64 %i.du, 3                        ; 4 uses
  %i.ex = shl i64 %i.du, 2                        ; 4 uses
  %i.ey = mul i64 %i.du, 5                        ; 4 uses
  %i.ez = mul i64 %i.du, 6                        ; 4 uses
  %i.fa = mul i64 %i.du, 7                        ; 4 uses
  %i.fb = add i32 %i.er, -1
  %i.fc = zext i32 %i.fb to i64                   ; 3 uses
  %i.fd = shl nuw nsw i64 %i.fc, 4                ; 2 uses
  %i.fe = and i32 %i.en, -8                       ; 3 uses
  %i.ff = add i32 %i.en, -2
  %i.fg = shl nuw nsw i64 %i.fc, 2
  %i.fh = shl nuw nsw i64 %i.fc, 1
  %wide.trip.count.i = zext nneg i32 %i.er to i64 ; 4 uses
  %i.fi = insertelement <4 x i32> poison, i32 %i.dp, i64 0
  %i.fj = shufflevector <4 x i32> %i.fi, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.fk = insertelement <4 x i32> poison, i32 %i.ep, i64 0
  %i.fl = shufflevector <4 x i32> %i.fk, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.noexc1407.i

.preheader2827.i:                                 ; preds = %._crit_edge2971.i, %.noexc1262.i
  %.01157.lcssa.i = phi i32 [ 0, %.noexc1262.i ], [ %i.wy, %._crit_edge2971.i ] ; 3 uses
  %.01154.lcssa.i = phi ptr [ %i.ef, %.noexc1262.i ], [ %i.wx, %._crit_edge2971.i ] ; 2 uses
  %.01151.lcssa.i = phi ptr [ %i.eb, %.noexc1262.i ], [ %i.ww, %._crit_edge2971.i ] ; 2 uses
  %i.fm = or disjoint i32 %.01157.lcssa.i, 1      ; 2 uses
  %i.fn = icmp slt i32 %i.fm, %i.eg
  br i1 %i.fn, label %.noexc1381.lr.ph.i, label %.preheader2826.i

.noexc1381.lr.ph.i:                               ; preds = %.preheader2827.i
  %i.fo = sdiv i32 %i.do, 4
  %i.fp = srem i32 %i.do, 4
  %.lhs.trunc2809.i = trunc nsw i32 %i.fp to i8
  %i.fq = sdiv i8 %.lhs.trunc2809.i, 2
  %.sext2810.i = sext i8 %i.fq to i32
  %i.fr = add nsw i32 %i.fo, %.sext2810.i
  %i.fs = load ptr, ptr %2, align 8, !tbaa !28, !noalias !148
  %i.ft = load i64, ptr %i.cf, align 8, !tbaa !19, !noalias !148
  %i.fu = sext i32 %i.fr to i64
  %i.fv = mul i64 %i.ft, %i.fu
  %i.fw = load i64, ptr %i.cg, align 8, !tbaa !29, !noalias !148
  %i.fx = mul i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fx ; 4 uses
  %i.fz = shl i64 %i.du, 1                        ; 2 uses
  %i.ga = mul i64 %i.du, 3                        ; 2 uses
  %i.gb = shl i64 %i.du, 2                        ; 2 uses
  %i.gc = mul i64 %i.du, 5                        ; 2 uses
  %i.gd = mul i64 %i.du, 6                        ; 2 uses
  %i.ge = mul i64 %i.du, 7                        ; 2 uses
  %i.gf = insertelement <2 x i32> poison, i32 %i.dp, i64 0
  %i.gg = shufflevector <2 x i32> %i.gf, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.noexc1381.i

.noexc1407.i:                                     ; preds = %._crit_edge2971.i, %.noexc1407.lr.ph.i
  %.011512998.i = phi ptr [ %i.eb, %.noexc1407.lr.ph.i ], [ %i.ww, %._crit_edge2971.i ] ; 2 uses
  %.011542997.i = phi ptr [ %i.ef, %.noexc1407.lr.ph.i ], [ %i.wx, %._crit_edge2971.i ] ; 2 uses
  %.011572996.i = phi i32 [ 0, %.noexc1407.lr.ph.i ], [ %i.wy, %._crit_edge2971.i ] ; 6 uses
  %i.gh = or disjoint i32 %.011572996.i, 3        ; 2 uses
  %i.gi = or disjoint i32 %.011572996.i, 1        ; 2 uses
  %i.gj = or disjoint i32 %.011572996.i, 2        ; 2 uses
  %i.gk = insertelement <4 x i32> poison, i32 %.011572996.i, i64 0
  %i.gl = insertelement <4 x i32> %i.gk, i32 %i.gi, i64 1
  %i.gm = insertelement <4 x i32> %i.gl, i32 %i.gj, i64 2
  %i.gn = insertelement <4 x i32> %i.gm, i32 %i.gh, i64 3
  %i.go = sdiv <4 x i32> %i.gn, %i.fj             ; 9 uses
  %i.gp = srem i32 %.011572996.i, %i.dp           ; 3 uses
  %i.gq = srem i32 %i.gi, %i.dp                   ; 3 uses
  %i.gr = srem i32 %i.gj, %i.dp                   ; 3 uses
  %i.gs = srem i32 %i.gh, %i.dp                   ; 3 uses
  %i.gt = load ptr, ptr %2, align 8, !tbaa !28, !noalias !149
  %i.gu = load i64, ptr %i.cf, align 8, !tbaa !19, !noalias !149
  %i.gv = mul i64 %i.gu, %i.em
  %i.gw = load i64, ptr %i.cg, align 8, !tbaa !29, !noalias !149
  %i.gx = mul i64 %i.gv, %i.gw
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.gx ; 4 uses
  br i1 %i.eo, label %.noexc1405.lr.ph.i, label %._crit_edge2897.i

.noexc1405.lr.ph.i:                               ; preds = %.noexc1407.i
  %i.gz = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !150
  %i.ha = load ptr, ptr %0, align 8, !tbaa !28, !noalias !150 ; 4 uses
  %i.hb = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !150
  %i.hc = load i64, ptr %i.ch, align 8, !tbaa !29, !noalias !150 ; 2 uses
  %factor.op.mul.i = mul i64 %i.hc, %i.hb         ; 2 uses
  %i.hd = sext i32 %i.gz to i64
  %i.he = extractelement <4 x i32> %i.go, i64 0
  %i.hf = mul nsw i32 %i.he, %i.ep
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.hc, %i.hd                    ; 4 uses
  %i.hi = mul i64 %i.hh, %i.hg
  %invariant.gep.i = getelementptr i8, ptr %i.ha, i64 %i.hi
  %.reass3004.i = mul i32 %i.gp, %factor.op.mul3003.i
  %i.hj = sext i32 %.reass3004.i to i64
  %invariant.gep2908.i = getelementptr i8, ptr %invariant.gep.i, i64 %i.hj ; 2 uses
  %i.hk = extractelement <4 x i32> %i.go, i64 1
  %i.hl = mul nsw i32 %i.hk, %i.ep
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul i64 %i.hh, %i.hm
  %invariant.gep2912.i = getelementptr i8, ptr %i.ha, i64 %i.hn
  %.reass3006.i = mul i32 %i.gq, %factor.op.mul3003.i
  %i.ho = sext i32 %.reass3006.i to i64
  %invariant.gep2913.i = getelementptr i8, ptr %invariant.gep2912.i, i64 %i.ho ; 2 uses
  %i.hp = extractelement <4 x i32> %i.go, i64 2
  %i.hq = mul nsw i32 %i.hp, %i.ep
  %i.hr = sext i32 %i.hq to i64
  %i.hs = mul i64 %i.hh, %i.hr
  %invariant.gep2917.i = getelementptr i8, ptr %i.ha, i64 %i.hs
  %.reass3008.i = mul i32 %i.gr, %factor.op.mul3003.i
  %i.ht = sext i32 %.reass3008.i to i64
  %invariant.gep2918.i = getelementptr i8, ptr %invariant.gep2917.i, i64 %i.ht ; 2 uses
  %i.hu = extractelement <4 x i32> %i.go, i64 3
  %i.hv = mul nsw i32 %i.hu, %i.ep
  %i.hw = sext i32 %i.hv to i64
  %i.hx = mul i64 %i.hh, %i.hw
  %invariant.gep2922.i = getelementptr i8, ptr %i.ha, i64 %i.hx
  %.reass3010.i = mul i32 %i.gs, %factor.op.mul3003.i
  %i.hy = sext i32 %.reass3010.i to i64
  %invariant.gep2923.i = getelementptr i8, ptr %invariant.gep2922.i, i64 %i.hy ; 2 uses
  br i1 %i.es, label %.noexc1405.lr.ph.i.split.us, label %._crit_edge2897.i

.noexc1405.lr.ph.i.split.us:                      ; preds = %.noexc1405.lr.ph.i
  br i1 %i.eu, label %.noexc1405.i.us.us, label %.noexc1405.i.us

.noexc1405.i.us.us:                               ; preds = %.noexc1405.lr.ph.i.split.us, %._crit_edge2877.loopexit.i.us.us
  %.011612896.i.us.us = phi i32 [ %i.ju, %._crit_edge2877.loopexit.i.us.us ], [ 0, %.noexc1405.lr.ph.i.split.us ] ; 2 uses
  %.011642895.i.us.us = phi ptr [ %scevgep3691.i.us.us, %._crit_edge2877.loopexit.i.us.us ], [ %i.gy, %.noexc1405.lr.ph.i.split.us ] ; 2 uses
  %i.hz = phi <4 x i32> [ %i.jk, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.ia = phi <4 x i32> [ %i.jm, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.ib = phi <4 x i32> [ %i.jn, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.ic = phi <4 x i32> [ %i.jo, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.id = phi <4 x i32> [ %i.jp, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.ie = phi <4 x i32> [ %i.jq, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.if = phi <4 x i32> [ %i.jr, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.ig = phi <4 x i32> [ %i.js, %._crit_edge2877.loopexit.i.us.us ], [ zeroinitializer, %.noexc1405.lr.ph.i.split.us ]
  %i.ih = lshr exact i32 %.011612896.i.us.us, 3
  %i.ii = zext nneg i32 %i.ih to i64
  %.reass.i.us.us = mul i64 %factor.op.mul.i, %i.ii ; 4 uses
  %gep2909.i.us.us = getelementptr i8, ptr %invariant.gep2908.i, i64 %.reass.i.us.us
  %gep2914.i.us.us = getelementptr i8, ptr %invariant.gep2913.i, i64 %.reass.i.us.us
  %gep2919.i.us.us = getelementptr i8, ptr %invariant.gep2918.i, i64 %.reass.i.us.us
  %gep2924.i.us.us = getelementptr i8, ptr %invariant.gep2923.i, i64 %.reass.i.us.us
  br label %.lr.ph.split.us.i.us.us

.lr.ph.split.us.i.us.us:                          ; preds = %.lr.ph.split.us.i.us.us, %.noexc1405.i.us.us
  %indvars.iv3688.i.us.us = phi i64 [ %indvars.iv.next3689.i.us.us, %.lr.ph.split.us.i.us.us ], [ 0, %.noexc1405.i.us.us ] ; 2 uses
  %.111652875.us.i.us.us = phi ptr [ %i.jt, %.lr.ph.split.us.i.us.us ], [ %.011642895.i.us.us, %.noexc1405.i.us.us ] ; 2 uses
  %i.ij = phi <4 x i32> [ %i.jk, %.lr.ph.split.us.i.us.us ], [ %i.hz, %.noexc1405.i.us.us ]
  %i.ik = phi <4 x i32> [ %i.jm, %.lr.ph.split.us.i.us.us ], [ %i.ia, %.noexc1405.i.us.us ]
  %i.il = phi <4 x i32> [ %i.jn, %.lr.ph.split.us.i.us.us ], [ %i.ib, %.noexc1405.i.us.us ]
  %i.im = phi <4 x i32> [ %i.jo, %.lr.ph.split.us.i.us.us ], [ %i.ic, %.noexc1405.i.us.us ]
  %i.in = phi <4 x i32> [ %i.jp, %.lr.ph.split.us.i.us.us ], [ %i.id, %.noexc1405.i.us.us ]
  %i.io = phi <4 x i32> [ %i.jq, %.lr.ph.split.us.i.us.us ], [ %i.ie, %.noexc1405.i.us.us ]
  %i.ip = phi <4 x i32> [ %i.jr, %.lr.ph.split.us.i.us.us ], [ %i.if, %.noexc1405.i.us.us ]
  %i.iq = phi <4 x i32> [ %i.js, %.lr.ph.split.us.i.us.us ], [ %i.ig, %.noexc1405.i.us.us ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv3688.i.us.us
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !10
  %i.it = sext i32 %i.is to i64                   ; 4 uses
  %i.iu = getelementptr inbounds i8, ptr %gep2909.i.us.us, i64 %i.it
  %i.iv = getelementptr inbounds i8, ptr %gep2914.i.us.us, i64 %i.it
  %i.iw = getelementptr inbounds i8, ptr %gep2919.i.us.us, i64 %i.it
  %i.ix = getelementptr inbounds i8, ptr %gep2924.i.us.us, i64 %i.it
  %i.iy = load <8 x i8>, ptr %i.iu, align 1, !tbaa !30
  %i.iz = load <8 x i8>, ptr %i.iv, align 1, !tbaa !30
  %i.ja = load <8 x i8>, ptr %i.iw, align 1, !tbaa !30
  %i.jb = load <8 x i8>, ptr %i.ix, align 1, !tbaa !30
end_hunk_0
begin_hunk_1_@_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.sx = sext i8 %i.sw to i16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.du
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !30
  %i.ta = sext i8 %i.sz to i16
  %i.tb = load i8, ptr %i.sp, align 1, !tbaa !30
  %i.tc = sext i8 %i.tb to i16
  %i.td = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.du
  %i.te = load i8, ptr %i.td, align 1, !tbaa !30
  %i.tf = sext i8 %i.te to i16
  %i.tg = load i8, ptr %i.sq, align 1, !tbaa !30
  %i.th = sext i8 %i.tg to i16
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sq, i64 %i.du
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !30
  %i.tk = sext i8 %i.tj to i16
  %i.tl = insertelement <8 x i16> poison, i16 %i.ss, i64 0
  %i.tm = insertelement <8 x i16> %i.tl, i16 %i.sv, i64 1
  %i.tn = insertelement <8 x i16> %i.tm, i16 %i.sx, i64 2
  %i.to = insertelement <8 x i16> %i.tn, i16 %i.ta, i64 3
  %i.tp = insertelement <8 x i16> %i.to, i16 %i.tc, i64 4
  %i.tq = insertelement <8 x i16> %i.tp, i16 %i.tf, i64 5
  %i.tr = insertelement <8 x i16> %i.tq, i16 %i.th, i64 6
  %i.ts = insertelement <8 x i16> %i.tr, i16 %i.tk, i64 7 ; 2 uses
  %i.tt = load i8, ptr %.311672925.us.i, align 1, !tbaa !30
  %i.tu = getelementptr inbounds nuw i8, ptr %.311672925.us.i, i64 2
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !30
  %i.tw = insertelement <2 x i8> poison, i8 %i.tt, i64 0
  %i.tx = insertelement <2 x i8> %i.tw, i8 %i.tv, i64 1
  %i.ty = shufflevector <2 x i8> %i.tx, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.tz = sext <8 x i8> %i.ty to <8 x i16>
  %i.ua = getelementptr inbounds nuw i8, ptr %.311672925.us.i, i64 1
  %i.ub = load i8, ptr %i.ua, align 1, !tbaa !30
  %i.uc = getelementptr inbounds nuw i8, ptr %.311672925.us.i, i64 3
  %i.ud = load i8, ptr %i.uc, align 1, !tbaa !30
  %i.ue = insertelement <2 x i8> poison, i8 %i.ub, i64 0
  %i.uf = insertelement <2 x i8> %i.ue, i8 %i.ud, i64 1
  %i.ug = shufflevector <2 x i8> %i.uf, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.uh = sext <8 x i8> %i.ug to <8 x i16>
  %i.ui = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ts, <8 x i16> %i.tz, <4 x i32> %i.si) ; 3 uses
  %i.uj = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ts, <8 x i16> %i.uh, <4 x i32> %i.sj) ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.311672925.us.i, i64 4
  %indvars.iv.next3696.i = add nuw nsw i64 %indvars.iv3695.i, 1 ; 2 uses
  %exitcond3701.not.i = icmp eq i64 %indvars.iv.next3696.i, %wide.trip.count.i
  br i1 %exitcond3701.not.i, label %._crit_edge2928.us.i, label %bb.d, !llvm.loop !61

._crit_edge2928.us.i:                             ; preds = %bb.d
  %scevgep3697.i = getelementptr i8, ptr %.211662932.us.i, i64 4
  %scevgep3698.i = getelementptr i8, ptr %scevgep3697.i, i64 %i.fg ; 2 uses
  %indvars.iv.next3703.i = add nuw nsw i64 %indvars.iv3702.i, 2 ; 2 uses
  %i.ul = trunc i64 %indvars.iv.next3703.i to i32 ; 2 uses
  %i.um = or i32 %i.ul, 1
  %i.un = icmp slt i32 %i.um, %i.en
  br i1 %i.un, label %.noexc1397.us.i, label %.preheader2825.i, !llvm.loop !62

.preheader2825.i:                                 ; preds = %._crit_edge2928.us.i, %.noexc1397.preheader.i, %._crit_edge2897.i
  %.lcssa2860.i = phi <4 x i32> [ %i.qu, %._crit_edge2897.i ], [ %i.qu, %.noexc1397.preheader.i ], [ %i.uj, %._crit_edge2928.us.i ] ; 3 uses
  %.lcssa2859.i = phi <4 x i32> [ %i.qr, %._crit_edge2897.i ], [ %i.qr, %.noexc1397.preheader.i ], [ %i.ui, %._crit_edge2928.us.i ] ; 3 uses
  %.21166.lcssa.i = phi ptr [ %.01164.lcssa.i, %._crit_edge2897.i ], [ %.01164.lcssa.i, %.noexc1397.preheader.i ], [ %scevgep3698.i, %._crit_edge2928.us.i ]
  %.11162.lcssa.i = phi i32 [ %.01161.lcssa.i, %._crit_edge2897.i ], [ %i.se, %.noexc1397.preheader.i ], [ %i.ul, %._crit_edge2928.us.i ] ; 2 uses
  %i.uo = icmp slt i32 %.11162.lcssa.i, %i.en
  br i1 %i.uo, label %.noexc1389.lr.ph.i, label %._crit_edge2971.i

.noexc1389.lr.ph.i:                               ; preds = %.preheader2825.i
  %i.up = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !152
  %i.uq = load ptr, ptr %0, align 8, !tbaa !28, !noalias !152 ; 4 uses
  %i.ur = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !152
  %i.us = load i64, ptr %i.ch, align 8, !tbaa !29, !noalias !152 ; 2 uses
  %factor.op.mul2974.i = mul i64 %i.us, %i.ur
  %i.ut = sext i32 %i.up to i64
  %i.uu = mul nsw <4 x i32> %i.go, %i.fl
  %i.uv = mul i64 %i.us, %i.ut
  %i.uw = mul nsw i32 %i.gp, %i.eq
  %i.ux = sext i32 %i.uw to i64
  %i.uy = mul nsw i32 %i.gq, %i.eq
  %i.uz = sext i32 %i.uy to i64
  %i.va = mul nsw i32 %i.gr, %i.eq
  %i.vb = sext i32 %i.va to i64
  %i.vc = sext <4 x i32> %i.uu to <4 x i64>
  %i.vd = insertelement <4 x i64> poison, i64 %i.uv, i64 0
  %i.ve = shufflevector <4 x i64> %i.vd, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.vf = mul <4 x i64> %i.ve, %i.vc              ; 4 uses
  %i.vg = extractelement <4 x i64> %i.vf, i64 0
  %invariant.gep2976.i = getelementptr i8, ptr %i.uq, i64 %i.vg
  %invariant.gep2977.i = getelementptr i8, ptr %invariant.gep2976.i, i64 %i.ux
  %i.vh = extractelement <4 x i64> %i.vf, i64 1
  %invariant.gep2981.i = getelementptr i8, ptr %i.uq, i64 %i.vh
  %invariant.gep2982.i = getelementptr i8, ptr %invariant.gep2981.i, i64 %i.uz
  %i.vi = extractelement <4 x i64> %i.vf, i64 2
  %invariant.gep2986.i = getelementptr i8, ptr %i.uq, i64 %i.vi
  %invariant.gep2987.i = getelementptr i8, ptr %invariant.gep2986.i, i64 %i.vb
  %i.vj = extractelement <4 x i64> %i.vf, i64 3
  %invariant.gep2991.i = getelementptr i8, ptr %i.uq, i64 %i.vj
  %i.vk = mul nsw i32 %i.gs, %i.eq
  %i.vl = sext i32 %i.vk to i64
  %invariant.gep2992.i = getelementptr i8, ptr %invariant.gep2991.i, i64 %i.vl
  br i1 %i.es, label %.noexc1389.us.preheader.i, label %._crit_edge2971.i

.noexc1389.us.preheader.i:                        ; preds = %.noexc1389.lr.ph.i
  %i.vm = zext i32 %.11162.lcssa.i to i64
  br label %.noexc1389.us.i

.noexc1389.us.i:                                  ; preds = %._crit_edge2965.us.i, %.noexc1389.us.preheader.i
  %indvars.iv3712.i = phi i64 [ %i.vm, %.noexc1389.us.preheader.i ], [ %indvars.iv.next3713.i, %._crit_edge2965.us.i ] ; 2 uses
  %.411682969.us.i = phi ptr [ %.21166.lcssa.i, %.noexc1389.us.preheader.i ], [ %scevgep3708.i, %._crit_edge2965.us.i ] ; 2 uses
  %i.vn = phi <4 x i32> [ %.lcssa2859.i, %.noexc1389.us.preheader.i ], [ %i.wq, %._crit_edge2965.us.i ]
  %i.vo = phi <4 x i32> [ %.lcssa2860.i, %.noexc1389.us.preheader.i ], [ %i.ws, %._crit_edge2965.us.i ]
  %.reass2975.us.i = mul i64 %factor.op.mul2974.i, %indvars.iv3712.i ; 4 uses
  %gep2978.us.i = getelementptr i8, ptr %invariant.gep2977.i, i64 %.reass2975.us.i
  %gep2983.us.i = getelementptr i8, ptr %invariant.gep2982.i, i64 %.reass2975.us.i
  %gep2988.us.i = getelementptr i8, ptr %invariant.gep2987.i, i64 %.reass2975.us.i
  %gep2993.us.i = getelementptr i8, ptr %invariant.gep2992.i, i64 %.reass2975.us.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.noexc1389.us.i
  %indvars.iv3705.i = phi i64 [ 0, %.noexc1389.us.i ], [ %indvars.iv.next3706.i, %bb.e ] ; 2 uses
  %.511692962.us.i = phi ptr [ %.411682969.us.i, %.noexc1389.us.i ], [ %i.wt, %bb.e ] ; 2 uses
  %i.vp = phi <4 x i32> [ %i.vn, %.noexc1389.us.i ], [ %i.wq, %bb.e ]
  %i.vq = phi <4 x i32> [ %i.vo, %.noexc1389.us.i ], [ %i.ws, %bb.e ]
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv3705.i
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !10
  %i.vt = sext i32 %i.vs to i64                   ; 4 uses
  %i.vu = getelementptr inbounds i8, ptr %gep2978.us.i, i64 %i.vt
  %i.vv = getelementptr inbounds i8, ptr %gep2983.us.i, i64 %i.vt
  %i.vw = getelementptr inbounds i8, ptr %gep2988.us.i, i64 %i.vt
  %i.vx = getelementptr inbounds i8, ptr %gep2993.us.i, i64 %i.vt
  %i.vy = load i8, ptr %i.vu, align 1, !tbaa !30
  %i.vz = load i8, ptr %i.vv, align 1, !tbaa !30
  %i.wa = load i8, ptr %i.vw, align 1, !tbaa !30
  %i.wb = load i8, ptr %i.vx, align 1, !tbaa !30
  %i.wc = insertelement <4 x i8> poison, i8 %i.vy, i64 0
  %i.wd = insertelement <4 x i8> %i.wc, i8 %i.vz, i64 1
  %i.we = insertelement <4 x i8> %i.wd, i8 %i.wa, i64 2
  %i.wf = insertelement <4 x i8> %i.we, i8 %i.wb, i64 3
  %i.wg = shufflevector <4 x i8> %i.wf, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.wh = sext <8 x i8> %i.wg to <8 x i16>        ; 2 uses
  %i.wi = load <2 x i8>, ptr %.511692962.us.i, align 1, !tbaa !30
  %i.wj = shufflevector <2 x i8> %i.wi, <2 x i8> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1>
  %i.wk = sext <8 x i8> %i.wj to <8 x i16>        ; 2 uses
  %i.wl = mul nsw <8 x i16> %i.wk, %i.wh          ; 2 uses
  %i.wm = call <8 x i16> @llvm.smulh.v8i16(<8 x i16> %i.wh, <8 x i16> %i.wk) ; 2 uses
  %i.wn = shufflevector <8 x i16> %i.wl, <8 x i16> %i.wm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.wo = shufflevector <8 x i16> %i.wl, <8 x i16> %i.wm, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.wp = bitcast <8 x i16> %i.wn to <4 x i32>
  %i.wq = add <4 x i32> %i.vp, %i.wp              ; 3 uses
  %i.wr = bitcast <8 x i16> %i.wo to <4 x i32>
  %i.ws = add <4 x i32> %i.vq, %i.wr              ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %.511692962.us.i, i64 2
  %indvars.iv.next3706.i = add nuw nsw i64 %indvars.iv3705.i, 1 ; 2 uses
  %exitcond3711.not.i = icmp eq i64 %indvars.iv.next3706.i, %wide.trip.count.i
  br i1 %exitcond3711.not.i, label %._crit_edge2965.us.i, label %bb.e, !llvm.loop !65

._crit_edge2965.us.i:                             ; preds = %bb.e
  %scevgep3707.i = getelementptr i8, ptr %.411682969.us.i, i64 2
  %scevgep3708.i = getelementptr i8, ptr %scevgep3707.i, i64 %i.fh
  %indvars.iv.next3713.i = add nuw nsw i64 %indvars.iv3712.i, 1 ; 2 uses
  %i.wu = trunc nuw i64 %indvars.iv.next3713.i to i32
  %i.wv = icmp sgt i32 %i.en, %i.wu
  br i1 %i.wv, label %.noexc1389.us.i, label %._crit_edge2971.i, !llvm.loop !66

._crit_edge2971.i:                                ; preds = %._crit_edge2965.us.i, %.noexc1389.lr.ph.i, %.preheader2825.i
  %.lcssa2864.i = phi <4 x i32> [ %.lcssa2860.i, %.preheader2825.i ], [ %.lcssa2860.i, %.noexc1389.lr.ph.i ], [ %i.ws, %._crit_edge2965.us.i ]
  %.lcssa2863.i = phi <4 x i32> [ %.lcssa2859.i, %.preheader2825.i ], [ %.lcssa2859.i, %.noexc1389.lr.ph.i ], [ %i.wq, %._crit_edge2965.us.i ]
  store <4 x i32> %.lcssa2863.i, ptr %.011512998.i, align 16, !tbaa !30
  store <4 x i32> %.lcssa2864.i, ptr %.011542997.i, align 16, !tbaa !30
  %i.ww = getelementptr inbounds nuw i8, ptr %.011512998.i, i64 16 ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %.011542997.i, i64 16 ; 2 uses
  %i.wy = add nuw nsw i32 %.011572996.i, 4        ; 3 uses
  %i.wz = or disjoint i32 %i.wy, 3
  %i.xa = icmp slt i32 %i.wz, %i.eg
  br i1 %i.xa, label %.noexc1407.i, label %.preheader2827.i, !llvm.loop !67

.preheader2826.i:                                 ; preds = %._crit_edge3112.i, %.preheader2827.i
  %.11158.lcssa.i = phi i32 [ %.01157.lcssa.i, %.preheader2827.i ], [ %i.aiu, %._crit_edge3112.i ] ; 2 uses
  %.11155.lcssa.i = phi ptr [ %.01154.lcssa.i, %.preheader2827.i ], [ %i.ait, %._crit_edge3112.i ]
  %.11152.lcssa.i = phi ptr [ %.01151.lcssa.i, %.preheader2827.i ], [ %i.ais, %._crit_edge3112.i ]
  %i.xb = icmp slt i32 %.11158.lcssa.i, %i.eg
  br i1 %i.xb, label %.noexc1367.lr.ph.i, label %._crit_edge3233.i

.noexc1367.lr.ph.i:                               ; preds = %.preheader2826.i
  %i.xc = sdiv i32 %i.do, 4
  %i.xd = srem i32 %i.do, 4
  %.lhs.trunc2811.i = trunc nsw i32 %i.xd to i8
  %i.xe = sdiv i8 %.lhs.trunc2811.i, 2
  %.sext2812.i = sext i8 %i.xe to i32
  %i.xf = add nsw i32 %i.xc, %.sext2812.i
  %i.xg = load ptr, ptr %2, align 8, !tbaa !28, !noalias !153
  %i.xh = load i64, ptr %i.cf, align 8, !tbaa !19, !noalias !153
  %i.xi = sext i32 %i.xf to i64
  %i.xj = mul i64 %i.xh, %i.xi
  %i.xk = load i64, ptr %i.cg, align 8, !tbaa !29, !noalias !153
  %i.xl = mul i64 %i.xj, %i.xk
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xg, i64 %i.xl ; 4 uses
  %i.xn = shl i64 %i.du, 1
  %i.xo = mul i64 %i.du, 3
  %i.xp = shl i64 %i.du, 2
  %i.xq = mul i64 %i.du, 5
  %i.xr = mul i64 %i.du, 6
  %i.xs = mul i64 %i.du, 7
  br label %.noexc1367.i

.noexc1381.i:                                     ; preds = %._crit_edge3112.i, %.noexc1381.lr.ph.i
  %i.xt = phi i32 [ %i.fm, %.noexc1381.lr.ph.i ], [ %i.aiv, %._crit_edge3112.i ]
  %.111523133.i = phi ptr [ %.01151.lcssa.i, %.noexc1381.lr.ph.i ], [ %i.ais, %._crit_edge3112.i ] ; 3 uses
  %.111553132.i = phi ptr [ %.01154.lcssa.i, %.noexc1381.lr.ph.i ], [ %i.ait, %._crit_edge3112.i ] ; 3 uses
  %.111583131.i = phi i32 [ %.01157.lcssa.i, %.noexc1381.lr.ph.i ], [ %i.aiu, %._crit_edge3112.i ] ; 2 uses
  %i.xu = insertelement <2 x i32> poison, i32 %i.xt, i64 0
  %i.xv = insertelement <2 x i32> %i.xu, i32 %.111583131.i, i64 1
  %.frozen = freeze <2 x i32> %i.xv               ; 2 uses
  %.frozen715 = freeze <2 x i32> %i.gg            ; 2 uses
  %i.xw = sdiv <2 x i32> %.frozen, %.frozen715    ; 7 uses
  %10 = mul <2 x i32> %i.xw, %.frozen715
  %.decomposed = sub <2 x i32> %.frozen, %10      ; 6 uses
  %i.xx = load i32, ptr %i.d, align 4, !tbaa !10  ; 9 uses
  %i.xy = icmp sgt i32 %i.xx, 7
  br i1 %i.xy, label %.noexc1379.lr.ph.i, label %._crit_edge3035.i

.noexc1379.lr.ph.i:                               ; preds = %.noexc1381.i
  %i.xz = load i32, ptr %i.c, align 4, !tbaa !10  ; 3 uses
  %i.ya = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !154
  %i.yb = load ptr, ptr %0, align 8, !tbaa !28, !noalias !154 ; 2 uses
  %i.yc = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !154
  %i.yd = load i64, ptr %i.ch, align 8, !tbaa !29, !noalias !154 ; 2 uses
  %factor.op.mul3042.i = mul i64 %i.yd, %i.yc     ; 2 uses
  %i.ye = sext i32 %i.ya to i64
  %i.yf = load i32, ptr %i.b, align 4, !tbaa !10  ; 2 uses
  %i.yg = extractelement <2 x i32> %i.xw, i64 1
  %i.yh = mul nsw i32 %i.yf, %i.yg
  %i.yi = sext i32 %i.yh to i64
  %i.yj = mul i64 %i.yd, %i.ye                    ; 2 uses
  %i.yk = mul i64 %i.yj, %i.yi
  %invariant.gep3044.i = getelementptr i8, ptr %i.yb, i64 %i.yk
  %i.yl = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ym = mul i32 %i.yl, %i.xz                    ; 2 uses
  %11 = extractelement <2 x i32> %.decomposed, i64 1
  %i.yn = mul i32 %i.ym, %11
  %i.yo = sext i32 %i.yn to i64
  %invariant.gep3045.i = getelementptr i8, ptr %invariant.gep3044.i, i64 %i.yo ; 2 uses
  %i.yp = extractelement <2 x i32> %i.xw, i64 0
  %i.yq = mul nsw i32 %i.yf, %i.yp
  %i.yr = sext i32 %i.yq to i64
  %i.ys = mul i64 %i.yj, %i.yr
  %invariant.gep3049.i = getelementptr i8, ptr %i.yb, i64 %i.ys
  %12 = extractelement <2 x i32> %.decomposed, i64 0
  %i.yt = mul i32 %i.ym, %12
  %i.yu = sext i32 %i.yt to i64
  %invariant.gep3050.i = getelementptr i8, ptr %invariant.gep3049.i, i64 %i.yu ; 2 uses
  %i.yv = load i32, ptr %i.f, align 4, !tbaa !10  ; 3 uses
  %i.yw = icmp sgt i32 %i.yv, 0
  %i.yx = load ptr, ptr %i.g, align 8             ; 2 uses
  %i.yy = add i32 %i.yv, -1
  %i.yz = zext i32 %i.yy to i64
  %i.za = shl nuw nsw i64 %i.yz, 4                ; 2 uses
  %wide.trip.count3720.i = zext nneg i32 %i.yv to i64 ; 2 uses
  br i1 %i.yw, label %.noexc1379.lr.ph.i.split.us, label %._crit_edge3035.loopexit.i

.noexc1379.lr.ph.i.split.us:                      ; preds = %.noexc1379.lr.ph.i
  %i.zb = icmp eq i32 %i.xz, 8
  br i1 %i.zb, label %.noexc1379.i.us.us, label %.noexc1379.i.us

.noexc1379.i.us.us:                               ; preds = %.noexc1379.lr.ph.i.split.us, %._crit_edge3018.loopexit.i.us.us
  %.011233034.i.us.us = phi i32 [ %i.aab, %._crit_edge3018.loopexit.i.us.us ], [ 0, %.noexc1379.lr.ph.i.split.us ] ; 2 uses
  %.011263033.i.us.us = phi ptr [ %scevgep3725.i.us.us, %._crit_edge3018.loopexit.i.us.us ], [ %i.fy, %.noexc1379.lr.ph.i.split.us ] ; 2 uses
  %i.zc = phi <4 x i32> [ %i.zz, %._crit_edge3018.loopexit.i.us.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.zd = phi <4 x i32> [ %i.zy, %._crit_edge3018.loopexit.i.us.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.ze = phi <4 x i32> [ %i.zx, %._crit_edge3018.loopexit.i.us.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.zf = phi <4 x i32> [ %i.zv, %._crit_edge3018.loopexit.i.us.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.zg = lshr exact i32 %.011233034.i.us.us, 3
  %i.zh = zext nneg i32 %i.zg to i64
  %.reass3043.i.us.us = mul i64 %factor.op.mul3042.i, %i.zh ; 2 uses
  %gep3046.i.us.us = getelementptr i8, ptr %invariant.gep3045.i, i64 %.reass3043.i.us.us
  %gep3051.i.us.us = getelementptr i8, ptr %invariant.gep3050.i, i64 %.reass3043.i.us.us
  br label %.lr.ph3017.split.us.i.us.us

.lr.ph3017.split.us.i.us.us:                      ; preds = %.lr.ph3017.split.us.i.us.us, %.noexc1379.i.us.us
  %indvars.iv3722.i.us.us = phi i64 [ %indvars.iv.next3723.i.us.us, %.lr.ph3017.split.us.i.us.us ], [ 0, %.noexc1379.i.us.us ] ; 2 uses
  %.111273015.us.i.us.us = phi ptr [ %i.aaa, %.lr.ph3017.split.us.i.us.us ], [ %.011263033.i.us.us, %.noexc1379.i.us.us ] ; 2 uses
  %.127993014.us.i.us.us = phi <4 x i32> [ %i.zz, %.lr.ph3017.split.us.i.us.us ], [ %i.zc, %.noexc1379.i.us.us ]
  %.128013013.us.i.us.us = phi <4 x i32> [ %i.zy, %.lr.ph3017.split.us.i.us.us ], [ %i.zd, %.noexc1379.i.us.us ]
  %.128033012.us.i.us.us = phi <4 x i32> [ %i.zx, %.lr.ph3017.split.us.i.us.us ], [ %i.ze, %.noexc1379.i.us.us ]
  %.128053011.us.i.us.us = phi <4 x i32> [ %i.zv, %.lr.ph3017.split.us.i.us.us ], [ %i.zf, %.noexc1379.i.us.us ]
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv3722.i.us.us
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !10
  %i.zk = sext i32 %i.zj to i64                   ; 2 uses
  %i.zl = getelementptr inbounds i8, ptr %gep3046.i.us.us, i64 %i.zk
  %i.zm = getelementptr inbounds i8, ptr %gep3051.i.us.us, i64 %i.zk
  %i.zn = load <8 x i8>, ptr %i.zl, align 1, !tbaa !30
  %i.zo = load <8 x i8>, ptr %i.zm, align 1, !tbaa !30
  %i.zp = sext <8 x i8> %i.zn to <8 x i16>        ; 2 uses
  %i.zq = sext <8 x i8> %i.zo to <8 x i16>        ; 2 uses
  %i.zr = load <16 x i8>, ptr %.111273015.us.i.us.us, align 16, !tbaa !30 ; 3 uses
  %.lobit.i1409.us.i.us.us = ashr <16 x i8> %i.zr, splat (i8 7) ; 2 uses
  %i.zs = shufflevector <16 x i8> %i.zr, <16 x i8> %.lobit.i1409.us.i.us.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.zt = shufflevector <16 x i8> %i.zr, <16 x i8> %.lobit.i1409.us.i.us.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.zu = bitcast <16 x i8> %i.zs to <8 x i16>    ; 2 uses
  %i.zv = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.zp, <8 x i16> %i.zu, <4 x i32> %.128053011.us.i.us.us) ; 3 uses
  %i.zw = bitcast <16 x i8> %i.zt to <8 x i16>    ; 2 uses
  %i.zx = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.zp, <8 x i16> %i.zw, <4 x i32> %.128033012.us.i.us.us) ; 3 uses
  %i.zy = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.zq, <8 x i16> %i.zu, <4 x i32> %.128013013.us.i.us.us) ; 3 uses
  %i.zz = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.zq, <8 x i16> %i.zw, <4 x i32> %.127993014.us.i.us.us) ; 3 uses
  %i.aaa = getelementptr inbounds nuw i8, ptr %.111273015.us.i.us.us, i64 16
  %indvars.iv.next3723.i.us.us = add nuw nsw i64 %indvars.iv3722.i.us.us, 1 ; 2 uses
  %exitcond3728.not.i.us.us = icmp eq i64 %indvars.iv.next3723.i.us.us, %wide.trip.count3720.i
  br i1 %exitcond3728.not.i.us.us, label %._crit_edge3018.loopexit.i.us.us, label %.lr.ph3017.split.us.i.us.us, !llvm.loop !72

._crit_edge3018.loopexit.i.us.us:                 ; preds = %.lr.ph3017.split.us.i.us.us
  %scevgep3724.i.us.us = getelementptr i8, ptr %.011263033.i.us.us, i64 16
  %scevgep3725.i.us.us = getelementptr i8, ptr %scevgep3724.i.us.us, i64 %i.za ; 2 uses
  %i.aab = add nuw nsw i32 %.011233034.i.us.us, 8 ; 2 uses
  %i.aac = or disjoint i32 %i.aab, 7
  %i.aad = icmp slt i32 %i.aac, %i.xx
  br i1 %i.aad, label %.noexc1379.i.us.us, label %._crit_edge3035.loopexit.i, !llvm.loop !73

.noexc1379.i.us:                                  ; preds = %.noexc1379.lr.ph.i.split.us, %._crit_edge3018.loopexit3540.i.us
  %.011233034.i.us = phi i32 [ %i.acx, %._crit_edge3018.loopexit3540.i.us ], [ 0, %.noexc1379.lr.ph.i.split.us ] ; 2 uses
  %.011263033.i.us = phi ptr [ %scevgep3718.i.us, %._crit_edge3018.loopexit3540.i.us ], [ %i.fy, %.noexc1379.lr.ph.i.split.us ] ; 2 uses
  %i.aae = phi <4 x i32> [ %i.acv, %._crit_edge3018.loopexit3540.i.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.aaf = phi <4 x i32> [ %i.acu, %._crit_edge3018.loopexit3540.i.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.aag = phi <4 x i32> [ %i.act, %._crit_edge3018.loopexit3540.i.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.aah = phi <4 x i32> [ %i.acr, %._crit_edge3018.loopexit3540.i.us ], [ zeroinitializer, %.noexc1379.lr.ph.i.split.us ]
  %i.aai = sdiv i32 %.011233034.i.us, %i.xz
  %i.aaj = sext i32 %i.aai to i64
  %.reass3043.i.us = mul i64 %factor.op.mul3042.i, %i.aaj ; 2 uses
  %gep3046.i.us = getelementptr i8, ptr %invariant.gep3045.i, i64 %.reass3043.i.us
  %gep3051.i.us = getelementptr i8, ptr %invariant.gep3050.i, i64 %.reass3043.i.us
  br label %.lr.ph3017.split.i.us

.lr.ph3017.split.i.us:                            ; preds = %.lr.ph3017.split.i.us, %.noexc1379.i.us
  %indvars.iv3715.i.us = phi i64 [ %indvars.iv.next3716.i.us, %.lr.ph3017.split.i.us ], [ 0, %.noexc1379.i.us ] ; 2 uses
  %.111273015.i.us = phi ptr [ %i.acw, %.lr.ph3017.split.i.us ], [ %.011263033.i.us, %.noexc1379.i.us ] ; 2 uses
  %.127993014.i.us = phi <4 x i32> [ %i.acv, %.lr.ph3017.split.i.us ], [ %i.aae, %.noexc1379.i.us ]
  %.128013013.i.us = phi <4 x i32> [ %i.acu, %.lr.ph3017.split.i.us ], [ %i.aaf, %.noexc1379.i.us ]
  %.128033012.i.us = phi <4 x i32> [ %i.act, %.lr.ph3017.split.i.us ], [ %i.aag, %.noexc1379.i.us ]
  %.128053011.i.us = phi <4 x i32> [ %i.acr, %.lr.ph3017.split.i.us ], [ %i.aah, %.noexc1379.i.us ]
  %i.aak = getelementptr inbounds nuw [4 x i8], ptr %i.yx, i64 %indvars.iv3715.i.us
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !10
  %i.aam = sext i32 %i.aal to i64                 ; 2 uses
  %i.aan = getelementptr inbounds i8, ptr %gep3046.i.us, i64 %i.aam ; 8 uses
  %i.aao = getelementptr inbounds i8, ptr %gep3051.i.us, i64 %i.aam ; 8 uses
  %i.aap = load i8, ptr %i.aan, align 1, !tbaa !30
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.du
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !30
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.fz
  %i.aat = load i8, ptr %i.aas, align 1, !tbaa !30
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.ga
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !30
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.gb
  %i.aax = load i8, ptr %i.aaw, align 1, !tbaa !30
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.gc
  %i.aaz = load i8, ptr %i.aay, align 1, !tbaa !30
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.gd
  %i.abb = load i8, ptr %i.aba, align 1, !tbaa !30
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aan, i64 %i.ge
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !30
  %i.abe = insertelement <16 x i8> poison, i8 %i.aap, i64 0
  %i.abf = insertelement <16 x i8> %i.abe, i8 %i.aar, i64 1
  %i.abg = insertelement <16 x i8> %i.abf, i8 %i.aat, i64 2
  %i.abh = insertelement <16 x i8> %i.abg, i8 %i.aav, i64 3
  %i.abi = insertelement <16 x i8> %i.abh, i8 %i.aax, i64 4
  %i.abj = insertelement <16 x i8> %i.abi, i8 %i.aaz, i64 5
  %i.abk = insertelement <16 x i8> %i.abj, i8 %i.abb, i64 6
  %i.abl = insertelement <16 x i8> %i.abk, i8 %i.abd, i64 7
  %i.abm = load i8, ptr %i.aao, align 1, !tbaa !30
  %i.abn = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.du
  %i.abo = load i8, ptr %i.abn, align 1, !tbaa !30
  %i.abp = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.fz
  %i.abq = load i8, ptr %i.abp, align 1, !tbaa !30
  %i.abr = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.ga
  %i.abs = load i8, ptr %i.abr, align 1, !tbaa !30
  %i.abt = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.gb
  %i.abu = load i8, ptr %i.abt, align 1, !tbaa !30
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.gc
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !30
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.gd
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !30
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aao, i64 %i.ge
  %i.aca = load i8, ptr %i.abz, align 1, !tbaa !30
  %i.acb = insertelement <16 x i8> poison, i8 %i.abm, i64 0
  %i.acc = insertelement <16 x i8> %i.acb, i8 %i.abo, i64 1
  %i.acd = insertelement <16 x i8> %i.acc, i8 %i.abq, i64 2
  %i.ace = insertelement <16 x i8> %i.acd, i8 %i.abs, i64 3
  %i.acf = insertelement <16 x i8> %i.ace, i8 %i.abu, i64 4
  %i.acg = insertelement <16 x i8> %i.acf, i8 %i.abw, i64 5
  %i.ach = insertelement <16 x i8> %i.acg, i8 %i.aby, i64 6
  %i.aci = insertelement <16 x i8> %i.ach, i8 %i.aca, i64 7
  %i.acj = shufflevector <16 x i8> %i.abl, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ack = sext <8 x i8> %i.acj to <8 x i16>      ; 2 uses
  %i.acl = shufflevector <16 x i8> %i.aci, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.acm = sext <8 x i8> %i.acl to <8 x i16>      ; 2 uses
  %i.acn = load <16 x i8>, ptr %.111273015.i.us, align 16, !tbaa !30 ; 3 uses
  %.lobit.i1409.i.us = ashr <16 x i8> %i.acn, splat (i8 7) ; 2 uses
  %i.aco = shufflevector <16 x i8> %i.acn, <16 x i8> %.lobit.i1409.i.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.acp = shufflevector <16 x i8> %i.acn, <16 x i8> %.lobit.i1409.i.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.acq = bitcast <16 x i8> %i.aco to <8 x i16>  ; 2 uses
  %i.acr = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ack, <8 x i16> %i.acq, <4 x i32> %.128053011.i.us) ; 3 uses
  %i.acs = bitcast <16 x i8> %i.acp to <8 x i16>  ; 2 uses
  %i.act = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ack, <8 x i16> %i.acs, <4 x i32> %.128033012.i.us) ; 3 uses
  %i.acu = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.acm, <8 x i16> %i.acq, <4 x i32> %.128013013.i.us) ; 3 uses
  %i.acv = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.acm, <8 x i16> %i.acs, <4 x i32> %.127993014.i.us) ; 3 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %.111273015.i.us, i64 16
  %indvars.iv.next3716.i.us = add nuw nsw i64 %indvars.iv3715.i.us, 1 ; 2 uses
  %exitcond3721.not.i.us = icmp eq i64 %indvars.iv.next3716.i.us, %wide.trip.count3720.i
  br i1 %exitcond3721.not.i.us, label %._crit_edge3018.loopexit3540.i.us, label %.lr.ph3017.split.i.us, !llvm.loop !72

._crit_edge3018.loopexit3540.i.us:                ; preds = %.lr.ph3017.split.i.us
  %scevgep3717.i.us = getelementptr i8, ptr %.011263033.i.us, i64 16
  %scevgep3718.i.us = getelementptr i8, ptr %scevgep3717.i.us, i64 %i.za ; 2 uses
  %i.acx = add nuw nsw i32 %.011233034.i.us, 8    ; 2 uses
  %i.acy = or disjoint i32 %i.acx, 7
  %i.acz = icmp slt i32 %i.acy, %i.xx
  br i1 %i.acz, label %.noexc1379.i.us, label %._crit_edge3035.loopexit.i, !llvm.loop !73

._crit_edge3035.loopexit.i:                       ; preds = %._crit_edge3018.loopexit3540.i.us, %._crit_edge3018.loopexit.i.us.us, %.noexc1379.lr.ph.i
  %i.ada = phi <4 x i32> [ zeroinitializer, %.noexc1379.lr.ph.i ], [ %i.zv, %._crit_edge3018.loopexit.i.us.us ], [ %i.acr, %._crit_edge3018.loopexit3540.i.us ]
  %i.adb = phi <4 x i32> [ zeroinitializer, %.noexc1379.lr.ph.i ], [ %i.zx, %._crit_edge3018.loopexit.i.us.us ], [ %i.act, %._crit_edge3018.loopexit3540.i.us ]
  %i.adc = phi <4 x i32> [ zeroinitializer, %.noexc1379.lr.ph.i ], [ %i.zy, %._crit_edge3018.loopexit.i.us.us ], [ %i.acu, %._crit_edge3018.loopexit3540.i.us ]
  %i.add = phi <4 x i32> [ zeroinitializer, %.noexc1379.lr.ph.i ], [ %i.zz, %._crit_edge3018.loopexit.i.us.us ], [ %i.acv, %._crit_edge3018.loopexit3540.i.us ]
  %.us-phi113 = phi ptr [ %i.fy, %.noexc1379.lr.ph.i ], [ %scevgep3725.i.us.us, %._crit_edge3018.loopexit.i.us.us ], [ %scevgep3718.i.us, %._crit_edge3018.loopexit3540.i.us ]
  %i.ade = and i32 %i.xx, 2147483640
  %i.adf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ada)
  %i.adg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.adb)
  %i.adh = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.adc)
  %i.adi = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.add)
  br label %._crit_edge3035.i

._crit_edge3035.i:                                ; preds = %._crit_edge3035.loopexit.i, %.noexc1381.i
  %i.adj = phi i32 [ 0, %.noexc1381.i ], [ %i.adf, %._crit_edge3035.loopexit.i ] ; 3 uses
  %i.adk = phi i32 [ 0, %.noexc1381.i ], [ %i.adg, %._crit_edge3035.loopexit.i ] ; 3 uses
  %i.adl = phi i32 [ 0, %.noexc1381.i ], [ %i.adh, %._crit_edge3035.loopexit.i ] ; 3 uses
  %i.adm = phi i32 [ 0, %.noexc1381.i ], [ %i.adi, %._crit_edge3035.loopexit.i ] ; 3 uses
  %.01126.lcssa.i = phi ptr [ %i.fy, %.noexc1381.i ], [ %.us-phi113, %._crit_edge3035.loopexit.i ] ; 3 uses
  %.01123.lcssa.i = phi i32 [ 0, %.noexc1381.i ], [ %i.ade, %._crit_edge3035.loopexit.i ] ; 5 uses
  %i.adn = or disjoint i32 %.01123.lcssa.i, 1
  %i.ado = icmp slt i32 %i.adn, %i.xx
  br i1 %i.ado, label %.noexc1375.lr.ph.i, label %.preheader2824.i

.noexc1375.lr.ph.i:                               ; preds = %._crit_edge3035.i
  %i.adp = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !155
  %i.adq = load ptr, ptr %0, align 8, !tbaa !28, !noalias !155 ; 2 uses
  %i.adr = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !155
  %i.ads = load i64, ptr %i.ch, align 8, !tbaa !29, !noalias !155 ; 2 uses
  %factor.op.mul3077.i = mul i64 %i.ads, %i.adr
  %i.adt = sext i32 %i.adp to i64
  %i.adu = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.adv = extractelement <2 x i32> %i.xw, i64 1
  %i.adw = mul nsw i32 %i.adu, %i.adv
  %i.adx = sext i32 %i.adw to i64
  %i.ady = mul i64 %i.ads, %i.adt                 ; 2 uses
  %i.adz = mul i64 %i.ady, %i.adx
  %invariant.gep3079.i = getelementptr i8, ptr %i.adq, i64 %i.adz
  %i.aea = load i32, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %13 = extractelement <2 x i32> %.decomposed, i64 1
  %i.aeb = mul nsw i32 %i.aea, %13
  %i.aec = sext i32 %i.aeb to i64
  %invariant.gep3080.i = getelementptr i8, ptr %invariant.gep3079.i, i64 %i.aec
  %i.aed = extractelement <2 x i32> %i.xw, i64 0
  %i.aee = mul nsw i32 %i.adu, %i.aed
  %i.aef = sext i32 %i.aee to i64
  %i.aeg = mul i64 %i.ady, %i.aef
  %invariant.gep3084.i = getelementptr i8, ptr %i.adq, i64 %i.aeg
  %14 = extractelement <2 x i32> %.decomposed, i64 0
  %i.aeh = mul nsw i32 %i.aea, %14
  %i.aei = sext i32 %i.aeh to i64
  %invariant.gep3085.i = getelementptr i8, ptr %invariant.gep3084.i, i64 %i.aei
  %i.aej = load i32, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.aek = icmp sgt i32 %i.aej, 0
  %i.ael = load ptr, ptr %i.g, align 8
  br i1 %i.aek, label %.noexc1375.us.preheader.i, label %.noexc1375.preheader.i

.noexc1375.preheader.i:                           ; preds = %.noexc1375.lr.ph.i
  %i.aem = or disjoint i32 %.01123.lcssa.i, 2
  %i.aen = add nsw i32 %i.xx, -2
  %i.aeo = sub nsw i32 %i.aen, %.01123.lcssa.i
  %i.aep = and i32 %i.aeo, -2
  %i.aeq = add i32 %i.aem, %i.aep
  br label %.preheader2824.i

.noexc1375.us.preheader.i:                        ; preds = %.noexc1375.lr.ph.i
  %i.aer = add nsw i32 %i.aej, -1
  %i.aes = zext nneg i32 %i.aer to i64
  %i.aet = shl nuw nsw i64 %i.aes, 2
  %i.aeu = zext nneg i32 %.01123.lcssa.i to i64
  %wide.trip.count3734.i = zext nneg i32 %i.aej to i64
  br label %.noexc1375.us.i

.noexc1375.us.i:                                  ; preds = %._crit_edge3059.us.i, %.noexc1375.us.preheader.i
  %indvars.iv3736.i = phi i64 [ %i.aeu, %.noexc1375.us.preheader.i ], [ %indvars.iv.next3737.i, %._crit_edge3059.us.i ] ; 2 uses
  %.211283069.us.i = phi ptr [ %.01126.lcssa.i, %.noexc1375.us.preheader.i ], [ %scevgep3732.i, %._crit_edge3059.us.i ] ; 2 uses
  %.011323068.us.i = phi i32 [ %i.adm, %.noexc1375.us.preheader.i ], [ %i.agk, %._crit_edge3059.us.i ]
  %.011363067.us.i = phi i32 [ %i.adk, %.noexc1375.us.preheader.i ], [ %i.afx, %._crit_edge3059.us.i ]
  %.011403066.us.i = phi i32 [ %i.adl, %.noexc1375.us.preheader.i ], [ %i.agi, %._crit_edge3059.us.i ]
  %.011443065.us.i = phi i32 [ %i.adj, %.noexc1375.us.preheader.i ], [ %i.afs, %._crit_edge3059.us.i ]
  %.reass3078.us.i = mul i64 %factor.op.mul3077.i, %indvars.iv3736.i ; 2 uses
  %gep3081.us.i = getelementptr i8, ptr %invariant.gep3080.i, i64 %.reass3078.us.i
  %gep3086.us.i = getelementptr i8, ptr %invariant.gep3085.i, i64 %.reass3078.us.i
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.noexc1375.us.i
  %indvars.iv3729.i = phi i64 [ 0, %.noexc1375.us.i ], [ %indvars.iv.next3730.i, %bb.f ] ; 2 uses
  %.311293056.us.i = phi ptr [ %.211283069.us.i, %.noexc1375.us.i ], [ %i.agl, %bb.f ] ; 5 uses
  %.111333055.us.i = phi i32 [ %.011323068.us.i, %.noexc1375.us.i ], [ %i.agk, %bb.f ]
  %.111373054.us.i = phi i32 [ %.011363067.us.i, %.noexc1375.us.i ], [ %i.afx, %bb.f ]
  %.111413053.us.i = phi i32 [ %.011403066.us.i, %.noexc1375.us.i ], [ %i.agi, %bb.f ]
  %.111453052.us.i = phi i32 [ %.011443065.us.i, %.noexc1375.us.i ], [ %i.afs, %bb.f ]
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.ael, i64 %indvars.iv3729.i
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !10
  %i.aex = sext i32 %i.aew to i64                 ; 2 uses
  %i.aey = getelementptr inbounds i8, ptr %gep3081.us.i, i64 %i.aex ; 2 uses
  %i.aez = getelementptr inbounds i8, ptr %gep3086.us.i, i64 %i.aex ; 2 uses
  %i.afa = load i8, ptr %i.aey, align 1, !tbaa !30
  %i.afb = sext i8 %i.afa to i32                  ; 2 uses
  %i.afc = load i8, ptr %.311293056.us.i, align 1, !tbaa !30
  %i.afd = sext i8 %i.afc to i32                  ; 2 uses
  %i.afe = mul nsw i32 %i.afd, %i.afb
  %i.aff = add nsw i32 %i.afe, %.111453052.us.i
  %i.afg = getelementptr inbounds nuw i8, ptr %.311293056.us.i, i64 1
  %i.afh = load i8, ptr %i.afg, align 1, !tbaa !30
  %i.afi = sext i8 %i.afh to i32                  ; 2 uses
  %i.afj = mul nsw i32 %i.afi, %i.afb
  %i.afk = add nsw i32 %i.afj, %.111373054.us.i
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aey, i64 %i.du
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !30
  %i.afn = sext i8 %i.afm to i32                  ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %.311293056.us.i, i64 2
  %i.afp = load i8, ptr %i.afo, align 1, !tbaa !30
  %i.afq = sext i8 %i.afp to i32                  ; 2 uses
  %i.afr = mul nsw i32 %i.afq, %i.afn
  %i.afs = add nsw i32 %i.aff, %i.afr             ; 3 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.311293056.us.i, i64 3
  %i.afu = load i8, ptr %i.aft, align 1, !tbaa !30
  %i.afv = sext i8 %i.afu to i32                  ; 2 uses
  %i.afw = mul nsw i32 %i.afv, %i.afn
  %i.afx = add nsw i32 %i.afk, %i.afw             ; 3 uses
  %i.afy = load i8, ptr %i.aez, align 1, !tbaa !30
  %i.afz = sext i8 %i.afy to i32                  ; 2 uses
  %i.aga = mul nsw i32 %i.afz, %i.afd
  %i.agb = add nsw i32 %i.aga, %.111413053.us.i
  %i.agc = mul nsw i32 %i.afz, %i.afi
  %i.agd = add nsw i32 %i.agc, %.111333055.us.i
  %i.age = getelementptr inbounds nuw i8, ptr %i.aez, i64 %i.du
  %i.agf = load i8, ptr %i.age, align 1, !tbaa !30
  %i.agg = sext i8 %i.agf to i32                  ; 2 uses
  %i.agh = mul nsw i32 %i.agg, %i.afq
  %i.agi = add nsw i32 %i.agb, %i.agh             ; 3 uses
  %i.agj = mul nsw i32 %i.agg, %i.afv
  %i.agk = add nsw i32 %i.agd, %i.agj             ; 3 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.311293056.us.i, i64 4
  %indvars.iv.next3730.i = add nuw nsw i64 %indvars.iv3729.i, 1 ; 2 uses
  %exitcond3735.not.i = icmp eq i64 %indvars.iv.next3730.i, %wide.trip.count3734.i
  br i1 %exitcond3735.not.i, label %._crit_edge3059.us.i, label %bb.f, !llvm.loop !76

._crit_edge3059.us.i:                             ; preds = %bb.f
  %scevgep3731.i = getelementptr i8, ptr %.211283069.us.i, i64 4
  %scevgep3732.i = getelementptr i8, ptr %scevgep3731.i, i64 %i.aet ; 2 uses
  %indvars.iv.next3737.i = add nuw nsw i64 %indvars.iv3736.i, 2 ; 2 uses
  %i.agm = trunc i64 %indvars.iv.next3737.i to i32 ; 2 uses
  %i.agn = or i32 %i.agm, 1
  %i.ago = icmp slt i32 %i.agn, %i.xx
  br i1 %i.ago, label %.noexc1375.us.i, label %.preheader2824.i, !llvm.loop !77

.preheader2824.i:                                 ; preds = %._crit_edge3059.us.i, %.noexc1375.preheader.i, %._crit_edge3035.i
  %.01144.lcssa.i = phi i32 [ %i.adj, %._crit_edge3035.i ], [ %i.adj, %.noexc1375.preheader.i ], [ %i.afs, %._crit_edge3059.us.i ] ; 3 uses
  %.01140.lcssa.i = phi i32 [ %i.adl, %._crit_edge3035.i ], [ %i.adl, %.noexc1375.preheader.i ], [ %i.agi, %._crit_edge3059.us.i ] ; 3 uses
  %.01136.lcssa.i = phi i32 [ %i.adk, %._crit_edge3035.i ], [ %i.adk, %.noexc1375.preheader.i ], [ %i.afx, %._crit_edge3059.us.i ] ; 3 uses
  %.01132.lcssa.i = phi i32 [ %i.adm, %._crit_edge3035.i ], [ %i.adm, %.noexc1375.preheader.i ], [ %i.agk, %._crit_edge3059.us.i ] ; 3 uses
  %.21128.lcssa.i = phi ptr [ %.01126.lcssa.i, %._crit_edge3035.i ], [ %.01126.lcssa.i, %.noexc1375.preheader.i ], [ %scevgep3732.i, %._crit_edge3059.us.i ]
  %.11124.lcssa.i = phi i32 [ %.01123.lcssa.i, %._crit_edge3035.i ], [ %i.aeq, %.noexc1375.preheader.i ], [ %i.agm, %._crit_edge3059.us.i ] ; 2 uses
  %i.agp = icmp slt i32 %.11124.lcssa.i, %i.xx
  br i1 %i.agp, label %.noexc1371.lr.ph.i, label %._crit_edge3112.i

.noexc1371.lr.ph.i:                               ; preds = %.preheader2824.i
  %i.agq = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !156
  %i.agr = load ptr, ptr %0, align 8, !tbaa !28, !noalias !156 ; 2 uses
  %i.ags = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !156
  %i.agt = load i64, ptr %i.ch, align 8, !tbaa !29, !noalias !156 ; 2 uses
  %factor.op.mul3117.i = mul i64 %i.agt, %i.ags
  %i.agu = sext i32 %i.agq to i64
  %i.agv = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.agw = extractelement <2 x i32> %i.xw, i64 1
  %i.agx = mul nsw i32 %i.agv, %i.agw
  %i.agy = sext i32 %i.agx to i64
  %i.agz = mul i64 %i.agt, %i.agu                 ; 2 uses
  %i.aha = mul i64 %i.agz, %i.agy
  %invariant.gep3119.i = getelementptr i8, ptr %i.agr, i64 %i.aha
  %i.ahb = load i32, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %15 = extractelement <2 x i32> %.decomposed, i64 1
  %i.ahc = mul nsw i32 %i.ahb, %15
  %i.ahd = sext i32 %i.ahc to i64
  %invariant.gep3120.i = getelementptr i8, ptr %invariant.gep3119.i, i64 %i.ahd
  %i.ahe = extractelement <2 x i32> %i.xw, i64 0
  %i.ahf = mul nsw i32 %i.agv, %i.ahe
  %i.ahg = sext i32 %i.ahf to i64
  %i.ahh = mul i64 %i.agz, %i.ahg
  %invariant.gep3124.i = getelementptr i8, ptr %i.agr, i64 %i.ahh
  %16 = extractelement <2 x i32> %.decomposed, i64 0
  %i.ahi = mul nsw i32 %i.ahb, %16
  %i.ahj = sext i32 %i.ahi to i64
  %invariant.gep3125.i = getelementptr i8, ptr %invariant.gep3124.i, i64 %i.ahj
  %i.ahk = load i32, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.ahl = icmp sgt i32 %i.ahk, 0
  %i.ahm = load ptr, ptr %i.g, align 8
  br i1 %i.ahl, label %.noexc1371.us.preheader.i, label %._crit_edge3112.i

.noexc1371.us.preheader.i:                        ; preds = %.noexc1371.lr.ph.i
  %i.ahn = add nsw i32 %i.ahk, -1
  %i.aho = zext nneg i32 %i.ahn to i64
  %i.ahp = shl nuw nsw i64 %i.aho, 1
  %i.ahq = zext i32 %.11124.lcssa.i to i64
  %wide.trip.count3744.i = zext nneg i32 %i.ahk to i64
  br label %.noexc1371.us.i

.noexc1371.us.i:                                  ; preds = %._crit_edge3100.us.i, %.noexc1371.us.preheader.i
  %indvars.iv3746.i = phi i64 [ %i.ahq, %.noexc1371.us.preheader.i ], [ %indvars.iv.next3747.i, %._crit_edge3100.us.i ] ; 2 uses
  %.411303110.us.i = phi ptr [ %.21128.lcssa.i, %.noexc1371.us.preheader.i ], [ %scevgep3742.i, %._crit_edge3100.us.i ] ; 2 uses
  %.211343109.us.i = phi i32 [ %.01132.lcssa.i, %.noexc1371.us.preheader.i ], [ %i.aim, %._crit_edge3100.us.i ]
  %.211383108.us.i = phi i32 [ %.01136.lcssa.i, %.noexc1371.us.preheader.i ], [ %i.aig, %._crit_edge3100.us.i ]
  %.211423107.us.i = phi i32 [ %.01140.lcssa.i, %.noexc1371.us.preheader.i ], [ %i.aik, %._crit_edge3100.us.i ]
  %.211463106.us.i = phi i32 [ %.01144.lcssa.i, %.noexc1371.us.preheader.i ], [ %i.aib, %._crit_edge3100.us.i ]
  %.reass3118.us.i = mul i64 %factor.op.mul3117.i, %indvars.iv3746.i ; 2 uses
  %gep3121.us.i = getelementptr i8, ptr %invariant.gep3120.i, i64 %.reass3118.us.i
  %gep3126.us.i = getelementptr i8, ptr %invariant.gep3125.i, i64 %.reass3118.us.i
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.noexc1371.us.i
  %indvars.iv3739.i = phi i64 [ 0, %.noexc1371.us.i ], [ %indvars.iv.next3740.i, %bb.g ] ; 2 uses
  %.511313097.us.i = phi ptr [ %.411303110.us.i, %.noexc1371.us.i ], [ %i.ain, %bb.g ] ; 3 uses
  %.311353096.us.i = phi i32 [ %.211343109.us.i, %.noexc1371.us.i ], [ %i.aim, %bb.g ]
  %.311393095.us.i = phi i32 [ %.211383108.us.i, %.noexc1371.us.i ], [ %i.aig, %bb.g ]
  %.311433094.us.i = phi i32 [ %.211423107.us.i, %.noexc1371.us.i ], [ %i.aik, %bb.g ]
  %.311473093.us.i = phi i32 [ %.211463106.us.i, %.noexc1371.us.i ], [ %i.aib, %bb.g ]
  %i.ahr = getelementptr inbounds nuw [4 x i8], ptr %i.ahm, i64 %indvars.iv3739.i
  %i.ahs = load i32, ptr %i.ahr, align 4, !tbaa !10
  %i.aht = sext i32 %i.ahs to i64                 ; 2 uses
  %i.ahu = getelementptr inbounds i8, ptr %gep3121.us.i, i64 %i.aht
  %i.ahv = getelementptr inbounds i8, ptr %gep3126.us.i, i64 %i.aht
  %i.ahw = load i8, ptr %i.ahu, align 1, !tbaa !30
  %i.ahx = sext i8 %i.ahw to i32                  ; 2 uses
  %i.ahy = load i8, ptr %.511313097.us.i, align 1, !tbaa !30
  %i.ahz = sext i8 %i.ahy to i32                  ; 2 uses
  %i.aia = mul nsw i32 %i.ahz, %i.ahx
  %i.aib = add nsw i32 %i.aia, %.311473093.us.i   ; 3 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.511313097.us.i, i64 1
  %i.aid = load i8, ptr %i.aic, align 1, !tbaa !30
  %i.aie = sext i8 %i.aid to i32                  ; 2 uses
  %i.aif = mul nsw i32 %i.aie, %i.ahx
  %i.aig = add nsw i32 %i.aif, %.311393095.us.i   ; 3 uses
  %i.aih = load i8, ptr %i.ahv, align 1, !tbaa !30
  %i.aii = sext i8 %i.aih to i32                  ; 2 uses
  %i.aij = mul nsw i32 %i.aii, %i.ahz
  %i.aik = add nsw i32 %i.aij, %.311433094.us.i   ; 3 uses
  %i.ail = mul nsw i32 %i.aii, %i.aie
  %i.aim = add nsw i32 %i.ail, %.311353096.us.i   ; 3 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %.511313097.us.i, i64 2
  %indvars.iv.next3740.i = add nuw nsw i64 %indvars.iv3739.i, 1 ; 2 uses
  %exitcond3745.not.i = icmp eq i64 %indvars.iv.next3740.i, %wide.trip.count3744.i
  br i1 %exitcond3745.not.i, label %._crit_edge3100.us.i, label %bb.g, !llvm.loop !80

._crit_edge3100.us.i:                             ; preds = %bb.g
  %scevgep3741.i = getelementptr i8, ptr %.411303110.us.i, i64 2
  %scevgep3742.i = getelementptr i8, ptr %scevgep3741.i, i64 %i.ahp
  %indvars.iv.next3747.i = add nuw nsw i64 %indvars.iv3746.i, 1 ; 2 uses
  %i.aio = trunc nuw i64 %indvars.iv.next3747.i to i32
  %i.aip = icmp sgt i32 %i.xx, %i.aio
  br i1 %i.aip, label %.noexc1371.us.i, label %._crit_edge3112.i, !llvm.loop !81

._crit_edge3112.i:                                ; preds = %._crit_edge3100.us.i, %.noexc1371.lr.ph.i, %.preheader2824.i
  %.21146.lcssa.i = phi i32 [ %.01144.lcssa.i, %.preheader2824.i ], [ %.01144.lcssa.i, %.noexc1371.lr.ph.i ], [ %i.aib, %._crit_edge3100.us.i ]
  %.21142.lcssa.i = phi i32 [ %.01140.lcssa.i, %.preheader2824.i ], [ %.01140.lcssa.i, %.noexc1371.lr.ph.i ], [ %i.aik, %._crit_edge3100.us.i ]
  %.21138.lcssa.i = phi i32 [ %.01136.lcssa.i, %.preheader2824.i ], [ %.01136.lcssa.i, %.noexc1371.lr.ph.i ], [ %i.aig, %._crit_edge3100.us.i ]
  %.21134.lcssa.i = phi i32 [ %.01132.lcssa.i, %.preheader2824.i ], [ %.01132.lcssa.i, %.noexc1371.lr.ph.i ], [ %i.aim, %._crit_edge3100.us.i ]
  store i32 %.21146.lcssa.i, ptr %.111523133.i, align 4, !tbaa !10
  %i.aiq = getelementptr inbounds nuw i8, ptr %.111523133.i, i64 4
  store i32 %.21142.lcssa.i, ptr %i.aiq, align 4, !tbaa !10
  store i32 %.21138.lcssa.i, ptr %.111553132.i, align 4, !tbaa !10
  %i.air = getelementptr inbounds nuw i8, ptr %.111553132.i, i64 4
  store i32 %.21134.lcssa.i, ptr %i.air, align 4, !tbaa !10
  %i.ais = getelementptr inbounds nuw i8, ptr %.111523133.i, i64 8 ; 2 uses
  %i.ait = getelementptr inbounds nuw i8, ptr %.111553132.i, i64 8 ; 2 uses
  %i.aiu = add nuw nsw i32 %.111583131.i, 2       ; 3 uses
  %i.aiv = or disjoint i32 %i.aiu, 1              ; 2 uses
  %i.aiw = icmp slt i32 %i.aiv, %i.eg
  br i1 %i.aiw, label %.noexc1381.i, label %.preheader2826.i, !llvm.loop !82

.noexc1367.i:                                     ; preds = %._crit_edge3220.i, %.noexc1367.lr.ph.i
  %.211533232.i = phi ptr [ %.11152.lcssa.i, %.noexc1367.lr.ph.i ], [ %i.asu, %._crit_edge3220.i ] ; 2 uses
  %.211563231.i = phi ptr [ %.11155.lcssa.i, %.noexc1367.lr.ph.i ], [ %i.asv, %._crit_edge3220.i ] ; 2 uses
  %.211593230.i = phi i32 [ %.11158.lcssa.i, %.noexc1367.lr.ph.i ], [ %i.asw, %._crit_edge3220.i ] ; 3 uses
  %i.aix = sdiv i32 %.211593230.i, %i.dp          ; 3 uses
  %i.aiy = srem i32 %.211593230.i, %i.dp          ; 3 uses
  %i.aiz = load i32, ptr %i.d, align 4, !tbaa !10 ; 11 uses
  %i.aja = icmp sgt i32 %i.aiz, 7
  br i1 %i.aja, label %.noexc1365.lr.ph.i, label %._crit_edge3153.i

.noexc1365.lr.ph.i:                               ; preds = %.noexc1367.i
  %i.ajb = load i32, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.ajc = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !157
  %i.ajd = load ptr, ptr %0, align 8, !tbaa !28, !noalias !157
  %i.aje = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !157
  %i.ajf = load i64, ptr %i.ch, align 8, !tbaa !29, !noalias !157 ; 2 uses
  %factor.op.mul3158.i = mul i64 %i.ajf, %i.aje   ; 2 uses
  %i.ajg = sext i32 %i.ajc to i64
  %i.ajh = load i32, ptr %i.b, align 4, !tbaa !10
  %i.aji = mul nsw i32 %i.ajh, %i.aix
  %i.ajj = sext i32 %i.aji to i64
  %i.ajk = mul i64 %i.ajf, %i.ajg
  %i.ajl = mul i64 %i.ajk, %i.ajj
  %invariant.gep3160.i = getelementptr i8, ptr %i.ajd, i64 %i.ajl
  %i.ajm = load i32, ptr %i.a, align 4, !tbaa !10
  %i.ajn = mul i32 %i.ajb, %i.aiy
  %i.ajo = mul i32 %i.ajn, %i.ajm
  %i.ajp = sext i32 %i.ajo to i64
  %invariant.gep3161.i = getelementptr i8, ptr %invariant.gep3160.i, i64 %i.ajp ; 2 uses
  %i.ajq = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.ajr = icmp sgt i32 %i.ajq, 0
  %i.ajs = load ptr, ptr %i.g, align 8            ; 4 uses
  br i1 %i.ajr, label %.noexc1365.lr.ph.split.us.i, label %.noexc1365.preheader.i

.noexc1365.preheader.i:                           ; preds = %.noexc1365.lr.ph.i
  %i.ajt = and i32 %i.aiz, 2147483640
  br label %._crit_edge3153.i

.noexc1365.lr.ph.split.us.i:                      ; preds = %.noexc1365.lr.ph.i
  %i.aju = icmp eq i32 %i.ajb, 8
  %i.ajv = add nsw i32 %i.ajq, -1
  %i.ajw = zext nneg i32 %i.ajv to i64
  %i.ajx = shl nuw nsw i64 %i.ajw, 4              ; 2 uses
  %wide.trip.count3761.i = zext nneg i32 %i.ajq to i64 ; 3 uses
  br i1 %i.aju, label %.noexc1365.us.us.i.preheader, label %.noexc1365.us.i

.noexc1365.us.us.i.preheader:                     ; preds = %.noexc1365.lr.ph.split.us.i
  %i.ajy = zext nneg i32 %i.aiz to i64
  %xtraiter = and i64 %wide.trip.count3761.i, 1
  %i.ajz = icmp eq i32 %i.ajq, 1
  %unroll_iter = and i64 %wide.trip.count3761.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod575 = trunc i32 %i.ajq to i1
  br label %.noexc1365.us.us.i

.noexc1365.us.us.i:                               ; preds = %.noexc1365.us.us.i.preheader, %._crit_edge3142.split.us.us.us.i
  %indvars.iv = phi i64 [ 0, %.noexc1365.us.us.i.preheader ], [ %indvars.iv.next, %._crit_edge3142.split.us.us.us.i ] ; 2 uses
  %.011043151.us.us.i = phi ptr [ %i.xm, %.noexc1365.us.us.i.preheader ], [ %scevgep3759.i, %._crit_edge3142.split.us.us.us.i ] ; 3 uses
  %i.aka = phi <4 x i32> [ zeroinitializer, %.noexc1365.us.us.i.preheader ], [ %.lcssa564, %._crit_edge3142.split.us.us.us.i ] ; 2 uses
  %i.akb = phi <4 x i32> [ zeroinitializer, %.noexc1365.us.us.i.preheader ], [ %.lcssa565, %._crit_edge3142.split.us.us.us.i ] ; 2 uses
  %i.akc = lshr exact i64 %indvars.iv, 3
  %.reass3159.us.us.i = mul i64 %factor.op.mul3158.i, %i.akc
  %gep3162.us.us.i = getelementptr i8, ptr %invariant.gep3161.i, i64 %.reass3159.us.us.i ; 3 uses
  br i1 %i.ajz, label %.epil.preheader, label %.noexc1365.us.us.i.new

.noexc1365.us.us.i.new:                           ; preds = %.noexc1365.us.us.i, %.noexc1365.us.us.i.new
  %indvars.iv3756.i = phi i64 [ %indvars.iv.next3757.i.1, %.noexc1365.us.us.i.new ], [ 0, %.noexc1365.us.us.i ] ; 3 uses
  %.111053139.us.us.us.i = phi ptr [ %i.alf, %.noexc1365.us.us.i.new ], [ %.011043151.us.us.i, %.noexc1365.us.us.i ] ; 3 uses
  %.127943138.us.us.us.i = phi <4 x i32> [ %i.ale, %.noexc1365.us.us.i.new ], [ %i.aka, %.noexc1365.us.us.i ]
  %.127963137.us.us.us.i = phi <4 x i32> [ %i.alc, %.noexc1365.us.us.i.new ], [ %i.akb, %.noexc1365.us.us.i ]
  %niter = phi i64 [ %niter.next.1, %.noexc1365.us.us.i.new ], [ 0, %.noexc1365.us.us.i ]
  %i.akd = getelementptr inbounds nuw [4 x i8], ptr %i.ajs, i64 %indvars.iv3756.i
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !10
  %i.akf = sext i32 %i.ake to i64
  %i.akg = getelementptr inbounds i8, ptr %gep3162.us.us.i, i64 %i.akf
  %i.akh = load <8 x i8>, ptr %i.akg, align 1, !tbaa !30
  %i.aki = sext <8 x i8> %i.akh to <8 x i16>      ; 2 uses
  %i.akj = load <16 x i8>, ptr %.111053139.us.us.us.i, align 16, !tbaa !30 ; 3 uses
  %.lobit.i1410.us.us.us.i = ashr <16 x i8> %i.akj, splat (i8 7) ; 2 uses
  %i.akk = shufflevector <16 x i8> %i.akj, <16 x i8> %.lobit.i1410.us.us.us.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.akl = shufflevector <16 x i8> %i.akj, <16 x i8> %.lobit.i1410.us.us.us.i, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.akm = bitcast <16 x i8> %i.akk to <8 x i16>
  %i.akn = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aki, <8 x i16> %i.akm, <4 x i32> %.127963137.us.us.us.i)
  %i.ako = bitcast <16 x i8> %i.akl to <8 x i16>
  %i.akp = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aki, <8 x i16> %i.ako, <4 x i32> %.127943138.us.us.us.i)
  %i.akq = getelementptr inbounds nuw i8, ptr %.111053139.us.us.us.i, i64 16
  %i.akr = getelementptr inbounds nuw [4 x i8], ptr %i.ajs, i64 %indvars.iv3756.i
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 4
  %i.akt = load i32, ptr %i.aks, align 4, !tbaa !10
  %i.aku = sext i32 %i.akt to i64
  %i.akv = getelementptr inbounds i8, ptr %gep3162.us.us.i, i64 %i.aku
  %i.akw = load <8 x i8>, ptr %i.akv, align 1, !tbaa !30
  %i.akx = sext <8 x i8> %i.akw to <8 x i16>      ; 2 uses
  %i.aky = load <16 x i8>, ptr %i.akq, align 16, !tbaa !30 ; 3 uses
  %.lobit.i1410.us.us.us.i.1 = ashr <16 x i8> %i.aky, splat (i8 7) ; 2 uses
  %i.akz = shufflevector <16 x i8> %i.aky, <16 x i8> %.lobit.i1410.us.us.us.i.1, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ala = shufflevector <16 x i8> %i.aky, <16 x i8> %.lobit.i1410.us.us.us.i.1, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.alb = bitcast <16 x i8> %i.akz to <8 x i16>
  %i.alc = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.akx, <8 x i16> %i.alb, <4 x i32> %i.akn) ; 3 uses
  %i.ald = bitcast <16 x i8> %i.ala to <8 x i16>
  %i.ale = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.akx, <8 x i16> %i.ald, <4 x i32> %i.akp) ; 3 uses
  %i.alf = getelementptr inbounds nuw i8, ptr %.111053139.us.us.us.i, i64 32 ; 2 uses
  %indvars.iv.next3757.i.1 = add nuw nsw i64 %indvars.iv3756.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge3142.split.us.us.us.i.unr-lcssa, label %.noexc1365.us.us.i.new, !llvm.loop !85

._crit_edge3142.split.us.us.us.i.unr-lcssa:       ; preds = %.noexc1365.us.us.i.new
  br i1 %lcmp.mod.not, label %._crit_edge3142.split.us.us.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge3142.split.us.us.us.i.unr-lcssa, %.noexc1365.us.us.i
  %indvars.iv3756.i.epil.init = phi i64 [ 0, %.noexc1365.us.us.i ], [ %indvars.iv.next3757.i.1, %._crit_edge3142.split.us.us.us.i.unr-lcssa ]
  %.111053139.us.us.us.i.epil.init = phi ptr [ %.011043151.us.us.i, %.noexc1365.us.us.i ], [ %i.alf, %._crit_edge3142.split.us.us.us.i.unr-lcssa ]
end_hunk_1
begin_hunk_2_@_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %.reass3292.us.i = mul i64 %factor.op.mul3291.i, %indvars.iv3805.i ; 4 uses
  %gep3295.us.i = getelementptr i8, ptr %invariant.gep3294.i, i64 %.reass3292.us.i
  %gep3300.us.i = getelementptr i8, ptr %invariant.gep3299.i, i64 %.reass3292.us.i
  %gep3305.us.i = getelementptr i8, ptr %invariant.gep3304.i, i64 %.reass3292.us.i
  %gep3310.us.i = getelementptr i8, ptr %invariant.gep3309.i, i64 %.reass3292.us.i
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.noexc1349.us.i
  %indvars.iv3798.i = phi i64 [ 0, %.noexc1349.us.i ], [ %indvars.iv.next3799.i, %bb.k ] ; 2 uses
  %.310843280.us.i = phi ptr [ %.210833286.us.i, %.noexc1349.us.i ], [ %i.bgf, %bb.k ] ; 2 uses
  %i.ber = phi <4 x i32> [ %i.beq, %.noexc1349.us.i ], [ %i.bge, %bb.k ]
  %i.bes = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv3798.i
  %i.bet = load i32, ptr %i.bes, align 4, !tbaa !10
  %i.beu = sext i32 %i.bet to i64                 ; 4 uses
  %i.bev = getelementptr inbounds i8, ptr %gep3295.us.i, i64 %i.beu ; 2 uses
  %i.bew = getelementptr inbounds i8, ptr %gep3300.us.i, i64 %i.beu ; 2 uses
  %i.bex = getelementptr inbounds i8, ptr %gep3305.us.i, i64 %i.beu ; 2 uses
  %i.bey = getelementptr inbounds i8, ptr %gep3310.us.i, i64 %i.beu ; 2 uses
  %i.bez = load i8, ptr %i.bev, align 1, !tbaa !30
  %i.bfa = sext i8 %i.bez to i16
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.bev, i64 %i.v
  %i.bfc = load i8, ptr %i.bfb, align 1, !tbaa !30
  %i.bfd = sext i8 %i.bfc to i16
  %i.bfe = load i8, ptr %i.bew, align 1, !tbaa !30
  %i.bff = sext i8 %i.bfe to i16
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bew, i64 %i.v
  %i.bfh = load i8, ptr %i.bfg, align 1, !tbaa !30
  %i.bfi = sext i8 %i.bfh to i16
  %i.bfj = load i8, ptr %i.bex, align 1, !tbaa !30
  %i.bfk = sext i8 %i.bfj to i16
  %i.bfl = getelementptr inbounds nuw i8, ptr %i.bex, i64 %i.v
  %i.bfm = load i8, ptr %i.bfl, align 1, !tbaa !30
  %i.bfn = sext i8 %i.bfm to i16
  %i.bfo = load i8, ptr %i.bey, align 1, !tbaa !30
  %i.bfp = sext i8 %i.bfo to i16
  %i.bfq = getelementptr inbounds nuw i8, ptr %i.bey, i64 %i.v
  %i.bfr = load i8, ptr %i.bfq, align 1, !tbaa !30
  %i.bfs = sext i8 %i.bfr to i16
  %i.bft = insertelement <8 x i16> poison, i16 %i.bfa, i64 0
  %i.bfu = insertelement <8 x i16> %i.bft, i16 %i.bfd, i64 1
  %i.bfv = insertelement <8 x i16> %i.bfu, i16 %i.bff, i64 2
  %i.bfw = insertelement <8 x i16> %i.bfv, i16 %i.bfi, i64 3
  %i.bfx = insertelement <8 x i16> %i.bfw, i16 %i.bfk, i64 4
  %i.bfy = insertelement <8 x i16> %i.bfx, i16 %i.bfn, i64 5
  %i.bfz = insertelement <8 x i16> %i.bfy, i16 %i.bfp, i64 6
  %i.bga = insertelement <8 x i16> %i.bfz, i16 %i.bfs, i64 7
  %i.bgb = load <2 x i8>, ptr %.310843280.us.i, align 1, !tbaa !30
  %i.bgc = shufflevector <2 x i8> %i.bgb, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.bgd = sext <8 x i8> %i.bgc to <8 x i16>
  %i.bge = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bga, <8 x i16> %i.bgd, <4 x i32> %i.ber) ; 3 uses
  %i.bgf = getelementptr inbounds nuw i8, ptr %.310843280.us.i, i64 2
  %indvars.iv.next3799.i = add nuw nsw i64 %indvars.iv3798.i, 1 ; 2 uses
  %exitcond3804.not.i = icmp eq i64 %indvars.iv.next3799.i, %wide.trip.count3789.i
  br i1 %exitcond3804.not.i, label %._crit_edge3283.us.i, label %bb.k, !llvm.loop !109

._crit_edge3283.us.i:                             ; preds = %bb.k
  %scevgep3800.i = getelementptr i8, ptr %.210833286.us.i, i64 2
  %scevgep3801.i = getelementptr i8, ptr %scevgep3800.i, i64 %i.aui ; 2 uses
  %indvars.iv.next3806.i = add nuw nsw i64 %indvars.iv3805.i, 2 ; 2 uses
  %i.bgg = trunc i64 %indvars.iv.next3806.i to i32 ; 2 uses
  %i.bgh = or i32 %i.bgg, 1
  %i.bgi = icmp slt i32 %i.bgh, %i.atu
  br i1 %i.bgi, label %.noexc1349.us.i, label %.preheader2820.i, !llvm.loop !110

.preheader2820.i:                                 ; preds = %._crit_edge3283.us.i, %.noexc1349.preheader.i, %._crit_edge3253.i
  %.lcssa2837.i = phi <4 x i32> [ %i.bde, %._crit_edge3253.i ], [ %i.bde, %.noexc1349.preheader.i ], [ %i.bge, %._crit_edge3283.us.i ] ; 3 uses
  %.21083.lcssa.i = phi ptr [ %.01081.lcssa.i, %._crit_edge3253.i ], [ %.01081.lcssa.i, %.noexc1349.preheader.i ], [ %scevgep3801.i, %._crit_edge3283.us.i ]
  %.11079.lcssa.i = phi i32 [ %.01078.lcssa.i, %._crit_edge3253.i ], [ %i.beo, %.noexc1349.preheader.i ], [ %i.bgg, %._crit_edge3283.us.i ] ; 2 uses
  %i.bgj = icmp slt i32 %.11079.lcssa.i, %i.atu
  br i1 %i.bgj, label %.noexc1341.lr.ph.i, label %._crit_edge3322.i

.noexc1341.lr.ph.i:                               ; preds = %.preheader2820.i
  %i.bgk = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !165
  %i.bgl = load ptr, ptr %0, align 8, !tbaa !28, !noalias !165 ; 4 uses
  %i.bgm = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !165
  %i.bgn = load i64, ptr %i.cx, align 8, !tbaa !29, !noalias !165 ; 2 uses
  %factor.op.mul3324.i = mul i64 %i.bgn, %i.bgm
  %i.bgo = sext i32 %i.bgk to i64
  %i.bgp = mul nsw <4 x i32> %i.avl, %i.auk
  %i.bgq = mul i64 %i.bgn, %i.bgo
  %i.bgr = mul nsw i32 %i.avm, %i.aty
  %i.bgs = sext i32 %i.bgr to i64
  %i.bgt = mul nsw i32 %i.avn, %i.aty
  %i.bgu = sext i32 %i.bgt to i64
  %i.bgv = mul nsw i32 %i.avo, %i.aty
  %i.bgw = sext i32 %i.bgv to i64
  %i.bgx = sext <4 x i32> %i.bgp to <4 x i64>
  %i.bgy = insertelement <4 x i64> poison, i64 %i.bgq, i64 0
  %i.bgz = shufflevector <4 x i64> %i.bgy, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.bha = mul <4 x i64> %i.bgz, %i.bgx           ; 4 uses
  %i.bhb = extractelement <4 x i64> %i.bha, i64 0
  %invariant.gep3326.i = getelementptr i8, ptr %i.bgl, i64 %i.bhb
  %invariant.gep3327.i = getelementptr i8, ptr %invariant.gep3326.i, i64 %i.bgs
  %i.bhc = extractelement <4 x i64> %i.bha, i64 1
  %invariant.gep3331.i = getelementptr i8, ptr %i.bgl, i64 %i.bhc
  %invariant.gep3332.i = getelementptr i8, ptr %invariant.gep3331.i, i64 %i.bgu
  %i.bhd = extractelement <4 x i64> %i.bha, i64 2
  %invariant.gep3336.i = getelementptr i8, ptr %i.bgl, i64 %i.bhd
  %invariant.gep3337.i = getelementptr i8, ptr %invariant.gep3336.i, i64 %i.bgw
  %i.bhe = extractelement <4 x i64> %i.bha, i64 3
  %invariant.gep3341.i = getelementptr i8, ptr %i.bgl, i64 %i.bhe
  %i.bhf = mul nsw i32 %i.avp, %i.aty
  %i.bhg = sext i32 %i.bhf to i64
  %invariant.gep3342.i = getelementptr i8, ptr %invariant.gep3341.i, i64 %i.bhg
  br i1 %i.aua, label %.noexc1341.us.preheader.i, label %._crit_edge3322.i

.noexc1341.us.preheader.i:                        ; preds = %.noexc1341.lr.ph.i
  %i.bhh = zext i32 %.11079.lcssa.i to i64
  br label %.noexc1341.us.i

.noexc1341.us.i:                                  ; preds = %._crit_edge3317.us.i, %.noexc1341.us.preheader.i
  %indvars.iv3815.i = phi i64 [ %i.bhh, %.noexc1341.us.preheader.i ], [ %indvars.iv.next3816.i, %._crit_edge3317.us.i ] ; 2 uses
  %.410853320.us.i = phi ptr [ %.21083.lcssa.i, %.noexc1341.us.preheader.i ], [ %scevgep3811.i, %._crit_edge3317.us.i ] ; 2 uses
  %i.bhi = phi <4 x i32> [ %.lcssa2837.i, %.noexc1341.us.preheader.i ], [ %i.bih, %._crit_edge3317.us.i ]
  %.reass3325.us.i = mul i64 %factor.op.mul3324.i, %indvars.iv3815.i ; 4 uses
  %gep3328.us.i = getelementptr i8, ptr %invariant.gep3327.i, i64 %.reass3325.us.i
  %gep3333.us.i = getelementptr i8, ptr %invariant.gep3332.i, i64 %.reass3325.us.i
  %gep3338.us.i = getelementptr i8, ptr %invariant.gep3337.i, i64 %.reass3325.us.i
  %gep3343.us.i = getelementptr i8, ptr %invariant.gep3342.i, i64 %.reass3325.us.i
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.noexc1341.us.i
  %indvars.iv3808.i = phi i64 [ 0, %.noexc1341.us.i ], [ %indvars.iv.next3809.i, %bb.l ] ; 2 uses
  %.510863314.us.i = phi ptr [ %.410853320.us.i, %.noexc1341.us.i ], [ %i.bii, %bb.l ] ; 2 uses
  %i.bhj = phi <4 x i32> [ %i.bhi, %.noexc1341.us.i ], [ %i.bih, %bb.l ]
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.aub, i64 %indvars.iv3808.i
  %i.bhl = load i32, ptr %i.bhk, align 4, !tbaa !10
  %i.bhm = sext i32 %i.bhl to i64                 ; 4 uses
  %i.bhn = getelementptr inbounds i8, ptr %gep3328.us.i, i64 %i.bhm
  %i.bho = getelementptr inbounds i8, ptr %gep3333.us.i, i64 %i.bhm
  %i.bhp = getelementptr inbounds i8, ptr %gep3338.us.i, i64 %i.bhm
  %i.bhq = getelementptr inbounds i8, ptr %gep3343.us.i, i64 %i.bhm
  %i.bhr = load i8, ptr %.510863314.us.i, align 1, !tbaa !30
  %i.bhs = sext i8 %i.bhr to i16
  %i.bht = insertelement <8 x i16> poison, i16 %i.bhs, i64 0
  %i.bhu = shufflevector <8 x i16> %i.bht, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bhv = load i8, ptr %i.bhn, align 1, !tbaa !30
  %i.bhw = sext i8 %i.bhv to i16
  %i.bhx = load i8, ptr %i.bho, align 1, !tbaa !30
  %i.bhy = sext i8 %i.bhx to i16
  %i.bhz = load i8, ptr %i.bhp, align 1, !tbaa !30
  %i.bia = sext i8 %i.bhz to i16
  %i.bib = load i8, ptr %i.bhq, align 1, !tbaa !30
  %i.bic = sext i8 %i.bib to i16
  %i.bid = insertelement <8 x i16> <i16 poison, i16 0, i16 poison, i16 0, i16 poison, i16 0, i16 poison, i16 0>, i16 %i.bhw, i64 0
  %i.bie = insertelement <8 x i16> %i.bid, i16 %i.bhy, i64 2
  %i.bif = insertelement <8 x i16> %i.bie, i16 %i.bia, i64 4
  %i.big = insertelement <8 x i16> %i.bif, i16 %i.bic, i64 6
  %i.bih = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.big, <8 x i16> %i.bhu, <4 x i32> %i.bhj) ; 3 uses
  %i.bii = getelementptr inbounds nuw i8, ptr %.510863314.us.i, i64 1
  %indvars.iv.next3809.i = add nuw nsw i64 %indvars.iv3808.i, 1 ; 2 uses
  %exitcond3814.not.i = icmp eq i64 %indvars.iv.next3809.i, %wide.trip.count3789.i
  br i1 %exitcond3814.not.i, label %._crit_edge3317.us.i, label %bb.l, !llvm.loop !113

._crit_edge3317.us.i:                             ; preds = %bb.l
  %scevgep3810.i = getelementptr i8, ptr %.410853320.us.i, i64 1
  %scevgep3811.i = getelementptr i8, ptr %scevgep3810.i, i64 %i.aue
  %indvars.iv.next3816.i = add nuw nsw i64 %indvars.iv3815.i, 1 ; 2 uses
  %i.bij = trunc nuw i64 %indvars.iv.next3816.i to i32
  %i.bik = icmp sgt i32 %i.atu, %i.bij
  br i1 %i.bik, label %.noexc1341.us.i, label %._crit_edge3322.i, !llvm.loop !114

._crit_edge3322.i:                                ; preds = %._crit_edge3317.us.i, %.noexc1341.lr.ph.i, %.preheader2820.i
  %.lcssa2839.i = phi <4 x i32> [ %.lcssa2837.i, %.preheader2820.i ], [ %.lcssa2837.i, %.noexc1341.lr.ph.i ], [ %i.bih, %._crit_edge3317.us.i ]
  store <4 x i32> %.lcssa2839.i, ptr %.010903345.i, align 16, !tbaa !30
  %i.bil = getelementptr inbounds nuw i8, ptr %.010903345.i, i64 16 ; 2 uses
  %i.bim = add nuw nsw i32 %.010873346.i, 4       ; 3 uses
  %i.bin = or disjoint i32 %i.bim, 3
  %i.bio = icmp slt i32 %i.bin, %i.ct
  br i1 %i.bio, label %.noexc1359.i, label %.preheader2822.i, !llvm.loop !115

.preheader2821.i:                                 ; preds = %._crit_edge3433.i, %.preheader2822.i
  %.11091.lcssa.i = phi ptr [ %.01090.lcssa.i, %.preheader2822.i ], [ %i.buz, %._crit_edge3433.i ]
  %.11088.lcssa.i = phi i32 [ %.01087.lcssa.i, %.preheader2822.i ], [ %i.bva, %._crit_edge3433.i ] ; 2 uses
  %i.bip = icmp slt i32 %.11088.lcssa.i, %i.ct
  br i1 %i.bip, label %.noexc1319.lr.ph.i, label %._crit_edge3527.i

.noexc1319.lr.ph.i:                               ; preds = %.preheader2821.i
  %i.biq = trunc nsw i64 %indvars.iv3887.i to i32 ; 2 uses
  %i.bir = sdiv i32 %i.biq, 4
  %i.bis = insertelement <2 x i32> poison, i32 %i.biq, i64 0
  %i.bit = shufflevector <2 x i32> %i.bis, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.biu = srem <2 x i32> %i.bit, <i32 4, i32 2>  ; 2 uses
  %i.biv = bitcast <2 x i32> %i.biu to <8 x i8>
  %.lhs.trunc2817.i = extractelement <8 x i8> %i.biv, i64 0
  %i.biw = sdiv i8 %.lhs.trunc2817.i, 2
  %.sext2818.i = sext i8 %i.biw to i32
  %i.bix = extractelement <2 x i32> %i.biu, i64 1
  %i.biy = add nsw i32 %i.bix, %i.bir
  %i.biz = add nsw i32 %i.biy, %.sext2818.i
  %i.bja = load ptr, ptr %2, align 8, !tbaa !28, !noalias !166
  %i.bjb = load i64, ptr %i.cv, align 8, !tbaa !19, !noalias !166
  %i.bjc = sext i32 %i.biz to i64
  %i.bjd = mul i64 %i.bjb, %i.bjc
  %i.bje = load i64, ptr %i.cw, align 8, !tbaa !29, !noalias !166
  %i.bjf = mul i64 %i.bjd, %i.bje
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bja, i64 %i.bjf ; 4 uses
  br label %.noexc1319.i

.noexc1333.i:                                     ; preds = %._crit_edge3433.i, %.noexc1333.lr.ph.i
  %i.bjh = phi i32 [ %i.aul, %.noexc1333.lr.ph.i ], [ %i.bvb, %._crit_edge3433.i ]
  %.110883449.i = phi i32 [ %.01087.lcssa.i, %.noexc1333.lr.ph.i ], [ %i.bva, %._crit_edge3433.i ] ; 2 uses
  %.110913448.i = phi ptr [ %.01090.lcssa.i, %.noexc1333.lr.ph.i ], [ %i.buz, %._crit_edge3433.i ] ; 3 uses
  %i.bji = insertelement <2 x i32> poison, i32 %i.bjh, i64 0
  %i.bjj = insertelement <2 x i32> %i.bji, i32 %.110883449.i, i64 1
  %.frozen716 = freeze <2 x i32> %i.bjj           ; 2 uses
  %.frozen717 = freeze <2 x i32> %i.dl            ; 2 uses
  %i.bjk = sdiv <2 x i32> %.frozen716, %.frozen717 ; 7 uses
  %17 = mul <2 x i32> %i.bjk, %.frozen717
  %.decomposed718 = sub <2 x i32> %.frozen716, %17 ; 6 uses
  %i.bjl = load i32, ptr %i.d, align 4, !tbaa !10 ; 9 uses
  %i.bjm = icmp sgt i32 %i.bjl, 7
  br i1 %i.bjm, label %.noexc1331.lr.ph.i, label %._crit_edge3374.i

.noexc1331.lr.ph.i:                               ; preds = %.noexc1333.i
  %i.bjn = load i32, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.bjo = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !167
  %i.bjp = load ptr, ptr %0, align 8, !tbaa !28, !noalias !167 ; 2 uses
  %i.bjq = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !167
  %i.bjr = load i64, ptr %i.cx, align 8, !tbaa !29, !noalias !167 ; 2 uses
  %factor.op.mul3379.i = mul i64 %i.bjr, %i.bjq   ; 2 uses
  %i.bjs = sext i32 %i.bjo to i64
  %i.bjt = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.bju = extractelement <2 x i32> %i.bjk, i64 1
  %i.bjv = mul nsw i32 %i.bjt, %i.bju
  %i.bjw = sext i32 %i.bjv to i64
  %i.bjx = mul i64 %i.bjr, %i.bjs                 ; 2 uses
  %i.bjy = mul i64 %i.bjx, %i.bjw
  %invariant.gep3381.i = getelementptr i8, ptr %i.bjp, i64 %i.bjy
  %i.bjz = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bka = mul i32 %i.bjz, %i.bjn                 ; 2 uses
  %18 = extractelement <2 x i32> %.decomposed718, i64 1
  %i.bkb = mul i32 %i.bka, %18
  %i.bkc = sext i32 %i.bkb to i64
  %invariant.gep3382.i = getelementptr i8, ptr %invariant.gep3381.i, i64 %i.bkc ; 2 uses
  %i.bkd = extractelement <2 x i32> %i.bjk, i64 0
  %i.bke = mul nsw i32 %i.bjt, %i.bkd
  %i.bkf = sext i32 %i.bke to i64
  %i.bkg = mul i64 %i.bjx, %i.bkf
  %invariant.gep3386.i = getelementptr i8, ptr %i.bjp, i64 %i.bkg
  %19 = extractelement <2 x i32> %.decomposed718, i64 0
  %i.bkh = mul i32 %i.bka, %19
  %i.bki = sext i32 %i.bkh to i64
  %invariant.gep3387.i = getelementptr i8, ptr %invariant.gep3386.i, i64 %i.bki ; 2 uses
  %i.bkj = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.bkk = icmp sgt i32 %i.bkj, 0
  %i.bkl = load ptr, ptr %i.g, align 8            ; 4 uses
  %i.bkm = add i32 %i.bkj, -1
  %i.bkn = zext i32 %i.bkm to i64
  %i.bko = shl nuw nsw i64 %i.bkn, 3              ; 2 uses
  %wide.trip.count3823.i = zext i32 %i.bkj to i64 ; 3 uses
  br i1 %i.bkk, label %.noexc1331.lr.ph.i.split.us, label %._crit_edge3374.loopexit.i

.noexc1331.lr.ph.i.split.us:                      ; preds = %.noexc1331.lr.ph.i
  %i.bkp = icmp eq i32 %i.bjn, 8
  br i1 %i.bkp, label %.noexc1331.i.us.us.preheader, label %.noexc1331.i.us

.noexc1331.i.us.us.preheader:                     ; preds = %.noexc1331.lr.ph.i.split.us
  %xtraiter584 = and i64 %wide.trip.count3823.i, 1
  %i.bkq = icmp eq i32 %i.bkj, 1
  %unroll_iter589 = and i64 %wide.trip.count3823.i, 2147483646
  %lcmp.mod585.not = icmp eq i64 %xtraiter584, 0
  %lcmp.mod588 = trunc i32 %i.bkj to i1
  br label %.noexc1331.i.us.us

.noexc1331.i.us.us:                               ; preds = %.noexc1331.i.us.us.preheader, %._crit_edge3363.loopexit.i.us.us
  %.09913373.i.us.us = phi i32 [ %i.bml, %._crit_edge3363.loopexit.i.us.us ], [ 0, %.noexc1331.i.us.us.preheader ] ; 2 uses
  %.09943372.i.us.us = phi ptr [ %scevgep3828.i.us.us, %._crit_edge3363.loopexit.i.us.us ], [ %i.avd, %.noexc1331.i.us.us.preheader ] ; 3 uses
  %i.bkr = phi <4 x i32> [ %.lcssa503, %._crit_edge3363.loopexit.i.us.us ], [ zeroinitializer, %.noexc1331.i.us.us.preheader ] ; 2 uses
  %i.bks = phi <4 x i32> [ %.lcssa504, %._crit_edge3363.loopexit.i.us.us ], [ zeroinitializer, %.noexc1331.i.us.us.preheader ] ; 2 uses
  %i.bkt = lshr exact i32 %.09913373.i.us.us, 3
  %i.bku = zext nneg i32 %i.bkt to i64
  %.reass3380.i.us.us = mul i64 %factor.op.mul3379.i, %i.bku ; 2 uses
  %gep3383.i.us.us = getelementptr i8, ptr %invariant.gep3382.i, i64 %.reass3380.i.us.us ; 3 uses
  %gep3388.i.us.us = getelementptr i8, ptr %invariant.gep3387.i, i64 %.reass3380.i.us.us ; 3 uses
  br i1 %i.bkq, label %.lr.ph3362.split.us.i.us.us.epil.preheader, label %.lr.ph3362.split.us.i.us.us

.lr.ph3362.split.us.i.us.us:                      ; preds = %.noexc1331.i.us.us, %.lr.ph3362.split.us.i.us.us
  %indvars.iv3825.i.us.us = phi i64 [ %indvars.iv.next3826.i.us.us.1, %.lr.ph3362.split.us.i.us.us ], [ 0, %.noexc1331.i.us.us ] ; 3 uses
  %.19953360.us.i.us.us = phi ptr [ %i.blx, %.lr.ph3362.split.us.i.us.us ], [ %.09943372.i.us.us, %.noexc1331.i.us.us ] ; 3 uses
  %.127513359.us.i.us.us = phi <4 x i32> [ %i.blw, %.lr.ph3362.split.us.i.us.us ], [ %i.bkr, %.noexc1331.i.us.us ]
  %.127533358.us.i.us.us = phi <4 x i32> [ %i.blv, %.lr.ph3362.split.us.i.us.us ], [ %i.bks, %.noexc1331.i.us.us ]
  %niter590 = phi i64 [ %niter590.next.1, %.lr.ph3362.split.us.i.us.us ], [ 0, %.noexc1331.i.us.us ]
  %i.bkv = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %indvars.iv3825.i.us.us
  %i.bkw = load i32, ptr %i.bkv, align 4, !tbaa !10
  %i.bkx = sext i32 %i.bkw to i64                 ; 2 uses
  %i.bky = getelementptr inbounds i8, ptr %gep3383.i.us.us, i64 %i.bkx
  %i.bkz = getelementptr inbounds i8, ptr %gep3388.i.us.us, i64 %i.bkx
  %i.bla = load <8 x i8>, ptr %i.bky, align 1, !tbaa !30
  %i.blb = load <8 x i8>, ptr %i.bkz, align 1, !tbaa !30
  %i.blc = sext <8 x i8> %i.bla to <8 x i16>
  %i.bld = sext <8 x i8> %i.blb to <8 x i16>
  %i.ble = load <8 x i8>, ptr %.19953360.us.i.us.us, align 1, !tbaa !30
  %i.blf = sext <8 x i8> %i.ble to <8 x i16>      ; 2 uses
  %i.blg = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.blc, <8 x i16> %i.blf, <4 x i32> %.127533358.us.i.us.us)
  %i.blh = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bld, <8 x i16> %i.blf, <4 x i32> %.127513359.us.i.us.us)
  %i.bli = getelementptr inbounds nuw i8, ptr %.19953360.us.i.us.us, i64 8
  %i.blj = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %indvars.iv3825.i.us.us
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blj, i64 4
  %i.bll = load i32, ptr %i.blk, align 4, !tbaa !10
  %i.blm = sext i32 %i.bll to i64                 ; 2 uses
  %i.bln = getelementptr inbounds i8, ptr %gep3383.i.us.us, i64 %i.blm
  %i.blo = getelementptr inbounds i8, ptr %gep3388.i.us.us, i64 %i.blm
  %i.blp = load <8 x i8>, ptr %i.bln, align 1, !tbaa !30
  %i.blq = load <8 x i8>, ptr %i.blo, align 1, !tbaa !30
  %i.blr = sext <8 x i8> %i.blp to <8 x i16>
  %i.bls = sext <8 x i8> %i.blq to <8 x i16>
  %i.blt = load <8 x i8>, ptr %i.bli, align 1, !tbaa !30
  %i.blu = sext <8 x i8> %i.blt to <8 x i16>      ; 2 uses
  %i.blv = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.blr, <8 x i16> %i.blu, <4 x i32> %i.blg) ; 3 uses
  %i.blw = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bls, <8 x i16> %i.blu, <4 x i32> %i.blh) ; 3 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %.19953360.us.i.us.us, i64 16 ; 2 uses
  %indvars.iv.next3826.i.us.us.1 = add nuw nsw i64 %indvars.iv3825.i.us.us, 2 ; 2 uses
  %niter590.next.1 = add i64 %niter590, 2         ; 2 uses
  %niter590.ncmp.1 = icmp eq i64 %niter590.next.1, %unroll_iter589
  br i1 %niter590.ncmp.1, label %._crit_edge3363.loopexit.i.us.us.unr-lcssa, label %.lr.ph3362.split.us.i.us.us, !llvm.loop !120

._crit_edge3363.loopexit.i.us.us.unr-lcssa:       ; preds = %.lr.ph3362.split.us.i.us.us
  br i1 %lcmp.mod585.not, label %._crit_edge3363.loopexit.i.us.us, label %.lr.ph3362.split.us.i.us.us.epil.preheader

.lr.ph3362.split.us.i.us.us.epil.preheader:       ; preds = %._crit_edge3363.loopexit.i.us.us.unr-lcssa, %.noexc1331.i.us.us
  %indvars.iv3825.i.us.us.epil.init = phi i64 [ 0, %.noexc1331.i.us.us ], [ %indvars.iv.next3826.i.us.us.1, %._crit_edge3363.loopexit.i.us.us.unr-lcssa ]
  %.19953360.us.i.us.us.epil.init = phi ptr [ %.09943372.i.us.us, %.noexc1331.i.us.us ], [ %i.blx, %._crit_edge3363.loopexit.i.us.us.unr-lcssa ]
  %.127513359.us.i.us.us.epil.init = phi <4 x i32> [ %i.bkr, %.noexc1331.i.us.us ], [ %i.blw, %._crit_edge3363.loopexit.i.us.us.unr-lcssa ]
  %.127533358.us.i.us.us.epil.init = phi <4 x i32> [ %i.bks, %.noexc1331.i.us.us ], [ %i.blv, %._crit_edge3363.loopexit.i.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod588)
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %indvars.iv3825.i.us.us.epil.init
  %i.blz = load i32, ptr %i.bly, align 4, !tbaa !10
  %i.bma = sext i32 %i.blz to i64                 ; 2 uses
  %i.bmb = getelementptr inbounds i8, ptr %gep3383.i.us.us, i64 %i.bma
  %i.bmc = getelementptr inbounds i8, ptr %gep3388.i.us.us, i64 %i.bma
  %i.bmd = load <8 x i8>, ptr %i.bmb, align 1, !tbaa !30
  %i.bme = load <8 x i8>, ptr %i.bmc, align 1, !tbaa !30
  %i.bmf = sext <8 x i8> %i.bmd to <8 x i16>
  %i.bmg = sext <8 x i8> %i.bme to <8 x i16>
  %i.bmh = load <8 x i8>, ptr %.19953360.us.i.us.us.epil.init, align 1, !tbaa !30
  %i.bmi = sext <8 x i8> %i.bmh to <8 x i16>      ; 2 uses
  %i.bmj = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bmf, <8 x i16> %i.bmi, <4 x i32> %.127533358.us.i.us.us.epil.init)
  %i.bmk = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bmg, <8 x i16> %i.bmi, <4 x i32> %.127513359.us.i.us.us.epil.init)
  br label %._crit_edge3363.loopexit.i.us.us

._crit_edge3363.loopexit.i.us.us:                 ; preds = %._crit_edge3363.loopexit.i.us.us.unr-lcssa, %.lr.ph3362.split.us.i.us.us.epil.preheader
  %.lcssa504 = phi <4 x i32> [ %i.blv, %._crit_edge3363.loopexit.i.us.us.unr-lcssa ], [ %i.bmj, %.lr.ph3362.split.us.i.us.us.epil.preheader ] ; 2 uses
  %.lcssa503 = phi <4 x i32> [ %i.blw, %._crit_edge3363.loopexit.i.us.us.unr-lcssa ], [ %i.bmk, %.lr.ph3362.split.us.i.us.us.epil.preheader ] ; 2 uses
  %scevgep3827.i.us.us = getelementptr i8, ptr %.09943372.i.us.us, i64 8
  %scevgep3828.i.us.us = getelementptr i8, ptr %scevgep3827.i.us.us, i64 %i.bko ; 2 uses
  %i.bml = add nuw nsw i32 %.09913373.i.us.us, 8  ; 2 uses
  %i.bmm = or disjoint i32 %i.bml, 7
  %i.bmn = icmp slt i32 %i.bmm, %i.bjl
  br i1 %i.bmn, label %.noexc1331.i.us.us, label %._crit_edge3374.loopexit.i, !llvm.loop !121

.noexc1331.i.us:                                  ; preds = %.noexc1331.lr.ph.i.split.us, %._crit_edge3363.loopexit3530.i.us
  %.09913373.i.us = phi i32 [ %i.bpa, %._crit_edge3363.loopexit3530.i.us ], [ 0, %.noexc1331.lr.ph.i.split.us ] ; 2 uses
  %.09943372.i.us = phi ptr [ %scevgep3821.i.us, %._crit_edge3363.loopexit3530.i.us ], [ %i.avd, %.noexc1331.lr.ph.i.split.us ] ; 2 uses
  %i.bmo = phi <4 x i32> [ %i.boy, %._crit_edge3363.loopexit3530.i.us ], [ zeroinitializer, %.noexc1331.lr.ph.i.split.us ]
  %i.bmp = phi <4 x i32> [ %i.box, %._crit_edge3363.loopexit3530.i.us ], [ zeroinitializer, %.noexc1331.lr.ph.i.split.us ]
  %i.bmq = sdiv i32 %.09913373.i.us, %i.bjn
  %i.bmr = sext i32 %i.bmq to i64
  %.reass3380.i.us = mul i64 %factor.op.mul3379.i, %i.bmr ; 2 uses
  %gep3383.i.us = getelementptr i8, ptr %invariant.gep3382.i, i64 %.reass3380.i.us
  %gep3388.i.us = getelementptr i8, ptr %invariant.gep3387.i, i64 %.reass3380.i.us
  br label %.lr.ph3362.split.i.us

.lr.ph3362.split.i.us:                            ; preds = %.lr.ph3362.split.i.us, %.noexc1331.i.us
  %indvars.iv3818.i.us = phi i64 [ %indvars.iv.next3819.i.us, %.lr.ph3362.split.i.us ], [ 0, %.noexc1331.i.us ] ; 2 uses
  %.19953360.i.us = phi ptr [ %i.boz, %.lr.ph3362.split.i.us ], [ %.09943372.i.us, %.noexc1331.i.us ] ; 2 uses
  %.127513359.i.us = phi <4 x i32> [ %i.boy, %.lr.ph3362.split.i.us ], [ %i.bmo, %.noexc1331.i.us ]
  %.127533358.i.us = phi <4 x i32> [ %i.box, %.lr.ph3362.split.i.us ], [ %i.bmp, %.noexc1331.i.us ]
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %i.bkl, i64 %indvars.iv3818.i.us
  %i.bmt = load i32, ptr %i.bms, align 4, !tbaa !10
  %i.bmu = sext i32 %i.bmt to i64                 ; 2 uses
  %i.bmv = getelementptr inbounds i8, ptr %gep3383.i.us, i64 %i.bmu ; 8 uses
  %i.bmw = getelementptr inbounds i8, ptr %gep3388.i.us, i64 %i.bmu ; 8 uses
  %i.bmx = load i8, ptr %i.bmv, align 1, !tbaa !30
  %i.bmy = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.v
  %i.bmz = load i8, ptr %i.bmy, align 1, !tbaa !30
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.cy
  %i.bnb = load i8, ptr %i.bna, align 1, !tbaa !30
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.cz
  %i.bnd = load i8, ptr %i.bnc, align 1, !tbaa !30
  %i.bne = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.da
  %i.bnf = load i8, ptr %i.bne, align 1, !tbaa !30
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.db
  %i.bnh = load i8, ptr %i.bng, align 1, !tbaa !30
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.dc
  %i.bnj = load i8, ptr %i.bni, align 1, !tbaa !30
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bmv, i64 %i.dd
  %i.bnl = load i8, ptr %i.bnk, align 1, !tbaa !30
  %i.bnm = insertelement <16 x i8> poison, i8 %i.bmx, i64 0
  %i.bnn = insertelement <16 x i8> %i.bnm, i8 %i.bmz, i64 1
  %i.bno = insertelement <16 x i8> %i.bnn, i8 %i.bnb, i64 2
  %i.bnp = insertelement <16 x i8> %i.bno, i8 %i.bnd, i64 3
  %i.bnq = insertelement <16 x i8> %i.bnp, i8 %i.bnf, i64 4
  %i.bnr = insertelement <16 x i8> %i.bnq, i8 %i.bnh, i64 5
  %i.bns = insertelement <16 x i8> %i.bnr, i8 %i.bnj, i64 6
  %i.bnt = insertelement <16 x i8> %i.bns, i8 %i.bnl, i64 7
  %i.bnu = load i8, ptr %i.bmw, align 1, !tbaa !30
  %i.bnv = getelementptr inbounds nuw i8, ptr %i.bmw, i64 %i.v
  %i.bnw = load i8, ptr %i.bnv, align 1, !tbaa !30
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bmw, i64 %i.cy
  %i.bny = load i8, ptr %i.bnx, align 1, !tbaa !30
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bmw, i64 %i.cz
  %i.boa = load i8, ptr %i.bnz, align 1, !tbaa !30
  %i.bob = getelementptr inbounds nuw i8, ptr %i.bmw, i64 %i.da
  %i.boc = load i8, ptr %i.bob, align 1, !tbaa !30
  %i.bod = getelementptr inbounds nuw i8, ptr %i.bmw, i64 %i.db
  %i.boe = load i8, ptr %i.bod, align 1, !tbaa !30
  %i.bof = getelementptr inbounds nuw i8, ptr %i.bmw, i64 %i.dc
  %i.bog = load i8, ptr %i.bof, align 1, !tbaa !30
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bmw, i64 %i.dd
  %i.boi = load i8, ptr %i.boh, align 1, !tbaa !30
  %i.boj = insertelement <16 x i8> poison, i8 %i.bnu, i64 0
  %i.bok = insertelement <16 x i8> %i.boj, i8 %i.bnw, i64 1
  %i.bol = insertelement <16 x i8> %i.bok, i8 %i.bny, i64 2
  %i.bom = insertelement <16 x i8> %i.bol, i8 %i.boa, i64 3
  %i.bon = insertelement <16 x i8> %i.bom, i8 %i.boc, i64 4
  %i.boo = insertelement <16 x i8> %i.bon, i8 %i.boe, i64 5
  %i.bop = insertelement <16 x i8> %i.boo, i8 %i.bog, i64 6
  %i.boq = insertelement <16 x i8> %i.bop, i8 %i.boi, i64 7
  %i.bor = shufflevector <16 x i8> %i.bnt, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bos = sext <8 x i8> %i.bor to <8 x i16>
  %i.bot = shufflevector <16 x i8> %i.boq, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bou = sext <8 x i8> %i.bot to <8 x i16>
  %i.bov = load <8 x i8>, ptr %.19953360.i.us, align 1, !tbaa !30
  %i.bow = sext <8 x i8> %i.bov to <8 x i16>      ; 2 uses
  %i.box = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bos, <8 x i16> %i.bow, <4 x i32> %.127533358.i.us) ; 3 uses
  %i.boy = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bou, <8 x i16> %i.bow, <4 x i32> %.127513359.i.us) ; 3 uses
  %i.boz = getelementptr inbounds nuw i8, ptr %.19953360.i.us, i64 8
  %indvars.iv.next3819.i.us = add nuw nsw i64 %indvars.iv3818.i.us, 1 ; 2 uses
  %exitcond3824.not.i.us = icmp eq i64 %indvars.iv.next3819.i.us, %wide.trip.count3823.i
  br i1 %exitcond3824.not.i.us, label %._crit_edge3363.loopexit3530.i.us, label %.lr.ph3362.split.i.us, !llvm.loop !120

._crit_edge3363.loopexit3530.i.us:                ; preds = %.lr.ph3362.split.i.us
  %scevgep3820.i.us = getelementptr i8, ptr %.09943372.i.us, i64 8
  %scevgep3821.i.us = getelementptr i8, ptr %scevgep3820.i.us, i64 %i.bko ; 2 uses
  %i.bpa = add nuw nsw i32 %.09913373.i.us, 8     ; 2 uses
  %i.bpb = or disjoint i32 %i.bpa, 7
  %i.bpc = icmp slt i32 %i.bpb, %i.bjl
  br i1 %i.bpc, label %.noexc1331.i.us, label %._crit_edge3374.loopexit.i, !llvm.loop !121

._crit_edge3374.loopexit.i:                       ; preds = %._crit_edge3363.loopexit3530.i.us, %._crit_edge3363.loopexit.i.us.us, %.noexc1331.lr.ph.i
  %i.bpd = phi <4 x i32> [ zeroinitializer, %.noexc1331.lr.ph.i ], [ %.lcssa504, %._crit_edge3363.loopexit.i.us.us ], [ %i.box, %._crit_edge3363.loopexit3530.i.us ]
  %i.bpe = phi <4 x i32> [ zeroinitializer, %.noexc1331.lr.ph.i ], [ %.lcssa503, %._crit_edge3363.loopexit.i.us.us ], [ %i.boy, %._crit_edge3363.loopexit3530.i.us ]
  %.us-phi131 = phi ptr [ %i.avd, %.noexc1331.lr.ph.i ], [ %scevgep3828.i.us.us, %._crit_edge3363.loopexit.i.us.us ], [ %scevgep3821.i.us, %._crit_edge3363.loopexit3530.i.us ]
  %i.bpf = and i32 %i.bjl, 2147483640
  %i.bpg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bpd)
  %i.bph = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bpe)
  br label %._crit_edge3374.i

._crit_edge3374.i:                                ; preds = %._crit_edge3374.loopexit.i, %.noexc1333.i
  %i.bpi = phi i32 [ 0, %.noexc1333.i ], [ %i.bpg, %._crit_edge3374.loopexit.i ] ; 3 uses
  %i.bpj = phi i32 [ 0, %.noexc1333.i ], [ %i.bph, %._crit_edge3374.loopexit.i ] ; 3 uses
  %.0994.lcssa.i = phi ptr [ %i.avd, %.noexc1333.i ], [ %.us-phi131, %._crit_edge3374.loopexit.i ] ; 3 uses
  %.0991.lcssa.i = phi i32 [ 0, %.noexc1333.i ], [ %i.bpf, %._crit_edge3374.loopexit.i ] ; 5 uses
  %i.bpk = or disjoint i32 %.0991.lcssa.i, 1
  %i.bpl = icmp slt i32 %i.bpk, %i.bjl
  br i1 %i.bpl, label %.noexc1327.lr.ph.i, label %.preheader2819.i

.noexc1327.lr.ph.i:                               ; preds = %._crit_edge3374.i
  %i.bpm = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !168
  %i.bpn = load ptr, ptr %0, align 8, !tbaa !28, !noalias !168 ; 2 uses
  %i.bpo = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !168
  %i.bpp = load i64, ptr %i.cx, align 8, !tbaa !29, !noalias !168 ; 2 uses
  %factor.op.mul3406.i = mul i64 %i.bpp, %i.bpo
  %i.bpq = sext i32 %i.bpm to i64
  %i.bpr = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.bps = extractelement <2 x i32> %i.bjk, i64 1
  %i.bpt = mul nsw i32 %i.bpr, %i.bps
  %i.bpu = sext i32 %i.bpt to i64
  %i.bpv = mul i64 %i.bpp, %i.bpq                 ; 2 uses
  %i.bpw = mul i64 %i.bpv, %i.bpu
  %invariant.gep3408.i = getelementptr i8, ptr %i.bpn, i64 %i.bpw
  %i.bpx = load i32, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %20 = extractelement <2 x i32> %.decomposed718, i64 1
  %i.bpy = mul nsw i32 %i.bpx, %20
  %i.bpz = sext i32 %i.bpy to i64
  %invariant.gep3409.i = getelementptr i8, ptr %invariant.gep3408.i, i64 %i.bpz
  %i.bqa = extractelement <2 x i32> %i.bjk, i64 0
  %i.bqb = mul nsw i32 %i.bpr, %i.bqa
  %i.bqc = sext i32 %i.bqb to i64
  %i.bqd = mul i64 %i.bpv, %i.bqc
  %invariant.gep3413.i = getelementptr i8, ptr %i.bpn, i64 %i.bqd
  %21 = extractelement <2 x i32> %.decomposed718, i64 0
  %i.bqe = mul nsw i32 %i.bpx, %21
  %i.bqf = sext i32 %i.bqe to i64
  %invariant.gep3414.i = getelementptr i8, ptr %invariant.gep3413.i, i64 %i.bqf
  %i.bqg = load i32, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.bqh = icmp sgt i32 %i.bqg, 0
  %i.bqi = load ptr, ptr %i.g, align 8
  br i1 %i.bqh, label %.noexc1327.us.preheader.i, label %.noexc1327.preheader.i

.noexc1327.preheader.i:                           ; preds = %.noexc1327.lr.ph.i
  %i.bqj = or disjoint i32 %.0991.lcssa.i, 2
  %i.bqk = add nsw i32 %i.bjl, -2
  %i.bql = sub nsw i32 %i.bqk, %.0991.lcssa.i
  %i.bqm = and i32 %i.bql, -2
  %i.bqn = add i32 %i.bqj, %i.bqm
  br label %.preheader2819.i

.noexc1327.us.preheader.i:                        ; preds = %.noexc1327.lr.ph.i
  %i.bqo = add nsw i32 %i.bqg, -1
  %i.bqp = zext nneg i32 %i.bqo to i64
  %i.bqq = shl nuw nsw i64 %i.bqp, 1
  %i.bqr = zext nneg i32 %.0991.lcssa.i to i64
  %wide.trip.count3837.i = zext nneg i32 %i.bqg to i64
  br label %.noexc1327.us.i

.noexc1327.us.i:                                  ; preds = %._crit_edge3394.us.i, %.noexc1327.us.preheader.i
  %indvars.iv3839.i = phi i64 [ %i.bqr, %.noexc1327.us.preheader.i ], [ %indvars.iv.next3840.i, %._crit_edge3394.us.i ] ; 2 uses
  %.29963400.us.i = phi ptr [ %.0994.lcssa.i, %.noexc1327.us.preheader.i ], [ %scevgep3835.i, %._crit_edge3394.us.i ] ; 2 uses
  %.010003399.us.i = phi i32 [ %i.bpj, %.noexc1327.us.preheader.i ], [ %i.brt, %._crit_edge3394.us.i ]
  %.010043398.us.i = phi i32 [ %i.bpi, %.noexc1327.us.preheader.i ], [ %i.brk, %._crit_edge3394.us.i ]
  %.reass3407.us.i = mul i64 %factor.op.mul3406.i, %indvars.iv3839.i ; 2 uses
  %gep3410.us.i = getelementptr i8, ptr %invariant.gep3409.i, i64 %.reass3407.us.i
  %gep3415.us.i = getelementptr i8, ptr %invariant.gep3414.i, i64 %.reass3407.us.i
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.noexc1327.us.i
  %indvars.iv3832.i = phi i64 [ 0, %.noexc1327.us.i ], [ %indvars.iv.next3833.i, %bb.m ] ; 2 uses
  %.39973391.us.i = phi ptr [ %.29963400.us.i, %.noexc1327.us.i ], [ %i.bru, %bb.m ] ; 3 uses
  %.110013390.us.i = phi i32 [ %.010003399.us.i, %.noexc1327.us.i ], [ %i.brt, %bb.m ]
  %.110053389.us.i = phi i32 [ %.010043398.us.i, %.noexc1327.us.i ], [ %i.brk, %bb.m ]
  %i.bqs = getelementptr inbounds nuw [4 x i8], ptr %i.bqi, i64 %indvars.iv3832.i
  %i.bqt = load i32, ptr %i.bqs, align 4, !tbaa !10
  %i.bqu = sext i32 %i.bqt to i64                 ; 2 uses
  %i.bqv = getelementptr inbounds i8, ptr %gep3410.us.i, i64 %i.bqu ; 2 uses
  %i.bqw = getelementptr inbounds i8, ptr %gep3415.us.i, i64 %i.bqu ; 2 uses
  %i.bqx = load i8, ptr %i.bqv, align 1, !tbaa !30
  %i.bqy = sext i8 %i.bqx to i32
  %i.bqz = load i8, ptr %.39973391.us.i, align 1, !tbaa !30
  %i.bra = sext i8 %i.bqz to i32                  ; 2 uses
  %i.brb = mul nsw i32 %i.bra, %i.bqy
  %i.brc = add nsw i32 %i.brb, %.110053389.us.i
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bqv, i64 %i.v
  %i.bre = load i8, ptr %i.brd, align 1, !tbaa !30
  %i.brf = sext i8 %i.bre to i32
  %i.brg = getelementptr inbounds nuw i8, ptr %.39973391.us.i, i64 1
  %i.brh = load i8, ptr %i.brg, align 1, !tbaa !30
  %i.bri = sext i8 %i.brh to i32                  ; 2 uses
  %i.brj = mul nsw i32 %i.bri, %i.brf
  %i.brk = add nsw i32 %i.brc, %i.brj             ; 3 uses
  %i.brl = load i8, ptr %i.bqw, align 1, !tbaa !30
  %i.brm = sext i8 %i.brl to i32
  %i.brn = mul nsw i32 %i.brm, %i.bra
  %i.bro = add nsw i32 %i.brn, %.110013390.us.i
  %i.brp = getelementptr inbounds nuw i8, ptr %i.bqw, i64 %i.v
  %i.brq = load i8, ptr %i.brp, align 1, !tbaa !30
  %i.brr = sext i8 %i.brq to i32
  %i.brs = mul nsw i32 %i.brr, %i.bri
  %i.brt = add nsw i32 %i.bro, %i.brs             ; 3 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %.39973391.us.i, i64 2
  %indvars.iv.next3833.i = add nuw nsw i64 %indvars.iv3832.i, 1 ; 2 uses
  %exitcond3838.not.i = icmp eq i64 %indvars.iv.next3833.i, %wide.trip.count3837.i
  br i1 %exitcond3838.not.i, label %._crit_edge3394.us.i, label %bb.m, !llvm.loop !124

._crit_edge3394.us.i:                             ; preds = %bb.m
  %scevgep3834.i = getelementptr i8, ptr %.29963400.us.i, i64 2
  %scevgep3835.i = getelementptr i8, ptr %scevgep3834.i, i64 %i.bqq ; 2 uses
  %indvars.iv.next3840.i = add nuw nsw i64 %indvars.iv3839.i, 2 ; 2 uses
  %i.brv = trunc i64 %indvars.iv.next3840.i to i32 ; 2 uses
  %i.brw = or i32 %i.brv, 1
  %i.brx = icmp slt i32 %i.brw, %i.bjl
  br i1 %i.brx, label %.noexc1327.us.i, label %.preheader2819.i, !llvm.loop !125

.preheader2819.i:                                 ; preds = %._crit_edge3394.us.i, %.noexc1327.preheader.i, %._crit_edge3374.i
  %.01004.lcssa.i = phi i32 [ %i.bpi, %._crit_edge3374.i ], [ %i.bpi, %.noexc1327.preheader.i ], [ %i.brk, %._crit_edge3394.us.i ] ; 3 uses
  %.01000.lcssa.i = phi i32 [ %i.bpj, %._crit_edge3374.i ], [ %i.bpj, %.noexc1327.preheader.i ], [ %i.brt, %._crit_edge3394.us.i ] ; 3 uses
  %.2996.lcssa.i = phi ptr [ %.0994.lcssa.i, %._crit_edge3374.i ], [ %.0994.lcssa.i, %.noexc1327.preheader.i ], [ %scevgep3835.i, %._crit_edge3394.us.i ]
  %.1992.lcssa.i = phi i32 [ %.0991.lcssa.i, %._crit_edge3374.i ], [ %i.bqn, %.noexc1327.preheader.i ], [ %i.brv, %._crit_edge3394.us.i ] ; 2 uses
  %i.bry = icmp slt i32 %.1992.lcssa.i, %i.bjl
  br i1 %i.bry, label %.noexc1323.lr.ph.i, label %._crit_edge3433.i

.noexc1323.lr.ph.i:                               ; preds = %.preheader2819.i
  %i.brz = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !169
  %i.bsa = load ptr, ptr %0, align 8, !tbaa !28, !noalias !169 ; 2 uses
  %i.bsb = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !169
  %i.bsc = load i64, ptr %i.cx, align 8, !tbaa !29, !noalias !169 ; 2 uses
  %factor.op.mul3436.i = mul i64 %i.bsc, %i.bsb
  %i.bsd = sext i32 %i.brz to i64
  %i.bse = load i32, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.bsf = extractelement <2 x i32> %i.bjk, i64 1
  %i.bsg = mul nsw i32 %i.bse, %i.bsf
  %i.bsh = sext i32 %i.bsg to i64
  %i.bsi = mul i64 %i.bsc, %i.bsd                 ; 2 uses
  %i.bsj = mul i64 %i.bsi, %i.bsh
  %invariant.gep3438.i = getelementptr i8, ptr %i.bsa, i64 %i.bsj
  %i.bsk = load i32, ptr %i.a, align 4, !tbaa !10 ; 2 uses
  %22 = extractelement <2 x i32> %.decomposed718, i64 1
  %i.bsl = mul nsw i32 %i.bsk, %22
  %i.bsm = sext i32 %i.bsl to i64
  %invariant.gep3439.i = getelementptr i8, ptr %invariant.gep3438.i, i64 %i.bsm
  %i.bsn = extractelement <2 x i32> %i.bjk, i64 0
  %i.bso = mul nsw i32 %i.bse, %i.bsn
  %i.bsp = sext i32 %i.bso to i64
  %i.bsq = mul i64 %i.bsi, %i.bsp
  %invariant.gep3443.i = getelementptr i8, ptr %i.bsa, i64 %i.bsq
  %23 = extractelement <2 x i32> %.decomposed718, i64 0
  %i.bsr = mul nsw i32 %i.bsk, %23
  %i.bss = sext i32 %i.bsr to i64
  %invariant.gep3444.i = getelementptr i8, ptr %invariant.gep3443.i, i64 %i.bss
  %i.bst = load i32, ptr %i.f, align 4, !tbaa !10 ; 4 uses
  %i.bsu = icmp sgt i32 %i.bst, 0
  %i.bsv = load ptr, ptr %i.g, align 8            ; 3 uses
  br i1 %i.bsu, label %.noexc1323.us.preheader.i, label %._crit_edge3433.i

.noexc1323.us.preheader.i:                        ; preds = %.noexc1323.lr.ph.i
  %i.bsw = zext i32 %.1992.lcssa.i to i64
  %i.bsx = zext nneg i32 %i.bst to i64            ; 3 uses
  %xtraiter592 = and i64 %i.bsx, 1
  %i.bsy = icmp eq i32 %i.bst, 1
  %unroll_iter597 = and i64 %i.bsx, 2147483646
  %lcmp.mod593.not = icmp eq i64 %xtraiter592, 0
  %lcmp.mod596 = trunc i32 %i.bst to i1
  br label %.noexc1323.us.i

.noexc1323.us.i:                                  ; preds = %._crit_edge3425.us.i, %.noexc1323.us.preheader.i
  %indvars.iv3849.i = phi i64 [ %i.bsw, %.noexc1323.us.preheader.i ], [ %indvars.iv.next3850.i, %._crit_edge3425.us.i ] ; 2 uses
  %.49983431.us.i = phi ptr [ %.2996.lcssa.i, %.noexc1323.us.preheader.i ], [ %i.buv, %._crit_edge3425.us.i ] ; 3 uses
  %.210023430.us.i = phi i32 [ %.01000.lcssa.i, %.noexc1323.us.preheader.i ], [ %.lcssa508, %._crit_edge3425.us.i ] ; 2 uses
  %.210063429.us.i = phi i32 [ %.01004.lcssa.i, %.noexc1323.us.preheader.i ], [ %.lcssa509, %._crit_edge3425.us.i ] ; 2 uses
  %.reass3437.us.i = mul i64 %factor.op.mul3436.i, %indvars.iv3849.i ; 2 uses
  %gep3440.us.i = getelementptr i8, ptr %invariant.gep3439.i, i64 %.reass3437.us.i ; 3 uses
  %gep3445.us.i = getelementptr i8, ptr %invariant.gep3444.i, i64 %.reass3437.us.i ; 3 uses
  br i1 %i.bsy, label %.epil.preheader591, label %.noexc1323.us.i.new

.noexc1323.us.i.new:                              ; preds = %.noexc1323.us.i, %.noexc1323.us.i.new
  %indvars.iv3842.i = phi i64 [ %indvars.iv.next3843.i.1, %.noexc1323.us.i.new ], [ 0, %.noexc1323.us.i ] ; 3 uses
  %.59993422.us.i = phi ptr [ %i.buf, %.noexc1323.us.i.new ], [ %.49983431.us.i, %.noexc1323.us.i ] ; 3 uses
  %.310033421.us.i = phi i32 [ %i.bue, %.noexc1323.us.i.new ], [ %.210023430.us.i, %.noexc1323.us.i ]
  %.310073420.us.i = phi i32 [ %i.bua, %.noexc1323.us.i.new ], [ %.210063429.us.i, %.noexc1323.us.i ]
  %niter598 = phi i64 [ %niter598.next.1, %.noexc1323.us.i.new ], [ 0, %.noexc1323.us.i ]
  %i.bsz = getelementptr inbounds nuw [4 x i8], ptr %i.bsv, i64 %indvars.iv3842.i
  %i.bta = load i32, ptr %i.bsz, align 4, !tbaa !10
  %i.btb = sext i32 %i.bta to i64                 ; 2 uses
  %i.btc = getelementptr inbounds i8, ptr %gep3440.us.i, i64 %i.btb
  %i.btd = getelementptr inbounds i8, ptr %gep3445.us.i, i64 %i.btb
  %i.bte = load i8, ptr %i.btc, align 1, !tbaa !30
  %i.btf = sext i8 %i.bte to i32
  %i.btg = load i8, ptr %.59993422.us.i, align 1, !tbaa !30
  %i.bth = sext i8 %i.btg to i32                  ; 2 uses
  %i.bti = mul nsw i32 %i.bth, %i.btf
  %i.btj = add nsw i32 %i.bti, %.310073420.us.i
  %i.btk = load i8, ptr %i.btd, align 1, !tbaa !30
  %i.btl = sext i8 %i.btk to i32
  %i.btm = mul nsw i32 %i.btl, %i.bth
  %i.btn = add nsw i32 %i.btm, %.310033421.us.i
  %i.bto = getelementptr inbounds nuw i8, ptr %.59993422.us.i, i64 1
  %i.btp = getelementptr inbounds nuw [4 x i8], ptr %i.bsv, i64 %indvars.iv3842.i
  %i.btq = getelementptr inbounds nuw i8, ptr %i.btp, i64 4
  %i.btr = load i32, ptr %i.btq, align 4, !tbaa !10
  %i.bts = sext i32 %i.btr to i64                 ; 2 uses
  %i.btt = getelementptr inbounds i8, ptr %gep3440.us.i, i64 %i.bts
  %i.btu = getelementptr inbounds i8, ptr %gep3445.us.i, i64 %i.bts
  %i.btv = load i8, ptr %i.btt, align 1, !tbaa !30
  %i.btw = sext i8 %i.btv to i32
  %i.btx = load i8, ptr %i.bto, align 1, !tbaa !30
  %i.bty = sext i8 %i.btx to i32                  ; 2 uses
  %i.btz = mul nsw i32 %i.bty, %i.btw
  %i.bua = add nsw i32 %i.btz, %i.btj             ; 3 uses
  %i.bub = load i8, ptr %i.btu, align 1, !tbaa !30
  %i.buc = sext i8 %i.bub to i32
  %i.bud = mul nsw i32 %i.buc, %i.bty
  %i.bue = add nsw i32 %i.bud, %i.btn             ; 3 uses
  %i.buf = getelementptr inbounds nuw i8, ptr %.59993422.us.i, i64 2 ; 2 uses
  %indvars.iv.next3843.i.1 = add nuw nsw i64 %indvars.iv3842.i, 2 ; 2 uses
  %niter598.next.1 = add i64 %niter598, 2         ; 2 uses
  %niter598.ncmp.1 = icmp eq i64 %niter598.next.1, %unroll_iter597
  br i1 %niter598.ncmp.1, label %._crit_edge3425.us.i.unr-lcssa, label %.noexc1323.us.i.new, !llvm.loop !128

._crit_edge3425.us.i.unr-lcssa:                   ; preds = %.noexc1323.us.i.new
  br i1 %lcmp.mod593.not, label %._crit_edge3425.us.i, label %.epil.preheader591

.epil.preheader591:                               ; preds = %._crit_edge3425.us.i.unr-lcssa, %.noexc1323.us.i
  %indvars.iv3842.i.epil.init = phi i64 [ 0, %.noexc1323.us.i ], [ %indvars.iv.next3843.i.1, %._crit_edge3425.us.i.unr-lcssa ]
  %.59993422.us.i.epil.init = phi ptr [ %.49983431.us.i, %.noexc1323.us.i ], [ %i.buf, %._crit_edge3425.us.i.unr-lcssa ]
  %.310033421.us.i.epil.init = phi i32 [ %.210023430.us.i, %.noexc1323.us.i ], [ %i.bue, %._crit_edge3425.us.i.unr-lcssa ]
  %.310073420.us.i.epil.init = phi i32 [ %.210063429.us.i, %.noexc1323.us.i ], [ %i.bua, %._crit_edge3425.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod596)
  %i.bug = getelementptr inbounds nuw [4 x i8], ptr %i.bsv, i64 %indvars.iv3842.i.epil.init
  %i.buh = load i32, ptr %i.bug, align 4, !tbaa !10
  %i.bui = sext i32 %i.buh to i64                 ; 2 uses
  %i.buj = getelementptr inbounds i8, ptr %gep3440.us.i, i64 %i.bui
  %i.buk = getelementptr inbounds i8, ptr %gep3445.us.i, i64 %i.bui
  %i.bul = load i8, ptr %i.buj, align 1, !tbaa !30
  %i.bum = sext i8 %i.bul to i32
  %i.bun = load i8, ptr %.59993422.us.i.epil.init, align 1, !tbaa !30
  %i.buo = sext i8 %i.bun to i32                  ; 2 uses
  %i.bup = mul nsw i32 %i.buo, %i.bum
  %i.buq = add nsw i32 %i.bup, %.310073420.us.i.epil.init
  %i.bur = load i8, ptr %i.buk, align 1, !tbaa !30
  %i.bus = sext i8 %i.bur to i32
  %i.but = mul nsw i32 %i.bus, %i.buo
  %i.buu = add nsw i32 %i.but, %.310033421.us.i.epil.init
  br label %._crit_edge3425.us.i

._crit_edge3425.us.i:                             ; preds = %._crit_edge3425.us.i.unr-lcssa, %.epil.preheader591
  %.lcssa509 = phi i32 [ %i.bua, %._crit_edge3425.us.i.unr-lcssa ], [ %i.buq, %.epil.preheader591 ] ; 2 uses
  %.lcssa508 = phi i32 [ %i.bue, %._crit_edge3425.us.i.unr-lcssa ], [ %i.buu, %.epil.preheader591 ] ; 2 uses
  %i.buv = getelementptr i8, ptr %.49983431.us.i, i64 %i.bsx
  %indvars.iv.next3850.i = add nuw nsw i64 %indvars.iv3849.i, 1 ; 2 uses
  %i.buw = trunc nuw i64 %indvars.iv.next3850.i to i32
  %i.bux = icmp sgt i32 %i.bjl, %i.buw
  br i1 %i.bux, label %.noexc1323.us.i, label %._crit_edge3433.i, !llvm.loop !129

._crit_edge3433.i:                                ; preds = %._crit_edge3425.us.i, %.noexc1323.lr.ph.i, %.preheader2819.i
  %.21006.lcssa.i = phi i32 [ %.01004.lcssa.i, %.preheader2819.i ], [ %.01004.lcssa.i, %.noexc1323.lr.ph.i ], [ %.lcssa509, %._crit_edge3425.us.i ]
  %.21002.lcssa.i = phi i32 [ %.01000.lcssa.i, %.preheader2819.i ], [ %.01000.lcssa.i, %.noexc1323.lr.ph.i ], [ %.lcssa508, %._crit_edge3425.us.i ]
  store i32 %.21006.lcssa.i, ptr %.110913448.i, align 4, !tbaa !10
  %i.buy = getelementptr inbounds nuw i8, ptr %.110913448.i, i64 4
  store i32 %.21002.lcssa.i, ptr %i.buy, align 4, !tbaa !10
  %i.buz = getelementptr inbounds nuw i8, ptr %.110913448.i, i64 8 ; 2 uses
  %i.bva = add nuw nsw i32 %.110883449.i, 2       ; 3 uses
  %i.bvb = or disjoint i32 %i.bva, 1              ; 2 uses
  %i.bvc = icmp slt i32 %i.bvb, %i.ct
  br i1 %i.bvc, label %.noexc1333.i, label %.preheader2821.i, !llvm.loop !130

.noexc1319.i:                                     ; preds = %._crit_edge3517.i, %.noexc1319.lr.ph.i
  %.210893526.i = phi i32 [ %.11088.lcssa.i, %.noexc1319.lr.ph.i ], [ %i.cft, %._crit_edge3517.i ] ; 3 uses
  %.210923525.i = phi ptr [ %.11091.lcssa.i, %.noexc1319.lr.ph.i ], [ %i.cfs, %._crit_edge3517.i ] ; 2 uses
  %i.bvd = sdiv i32 %.210893526.i, %i.x           ; 3 uses
  %i.bve = srem i32 %.210893526.i, %i.x           ; 3 uses
  %i.bvf = load i32, ptr %i.d, align 4, !tbaa !10 ; 11 uses
  %i.bvg = icmp sgt i32 %i.bvf, 7
  br i1 %i.bvg, label %.noexc1317.lr.ph.i, label %._crit_edge3464.i

.noexc1317.lr.ph.i:                               ; preds = %.noexc1319.i
  %i.bvh = load i32, ptr %i.c, align 4, !tbaa !10 ; 3 uses
  %i.bvi = load i32, ptr %i.l, align 4, !tbaa !16, !noalias !170
  %i.bvj = load ptr, ptr %0, align 8, !tbaa !28, !noalias !170
  %i.bvk = load i64, ptr %i.s, align 8, !tbaa !19, !noalias !170
  %i.bvl = load i64, ptr %i.cx, align 8, !tbaa !29, !noalias !170 ; 2 uses
  %factor.op.mul3468.i = mul i64 %i.bvl, %i.bvk   ; 2 uses
  %i.bvm = sext i32 %i.bvi to i64
  %i.bvn = load i32, ptr %i.b, align 4, !tbaa !10
  %i.bvo = mul nsw i32 %i.bvn, %i.bvd
  %i.bvp = sext i32 %i.bvo to i64
  %i.bvq = mul i64 %i.bvl, %i.bvm
  %i.bvr = mul i64 %i.bvq, %i.bvp
  %invariant.gep3470.i = getelementptr i8, ptr %i.bvj, i64 %i.bvr
  %i.bvs = load i32, ptr %i.a, align 4, !tbaa !10
  %i.bvt = mul i32 %i.bvh, %i.bve
  %i.bvu = mul i32 %i.bvt, %i.bvs
  %i.bvv = sext i32 %i.bvu to i64
  %invariant.gep3471.i = getelementptr i8, ptr %invariant.gep3470.i, i64 %i.bvv ; 2 uses
  %i.bvw = load i32, ptr %i.f, align 4, !tbaa !10 ; 5 uses
  %i.bvx = icmp sgt i32 %i.bvw, 0
  %i.bvy = load ptr, ptr %i.g, align 8            ; 4 uses
  br i1 %i.bvx, label %.noexc1317.lr.ph.split.us.i, label %.noexc1317.preheader.i

.noexc1317.preheader.i:                           ; preds = %.noexc1317.lr.ph.i
  %i.bvz = and i32 %i.bvf, 2147483640
  br label %._crit_edge3464.i

.noexc1317.lr.ph.split.us.i:                      ; preds = %.noexc1317.lr.ph.i
  %i.bwa = icmp eq i32 %i.bvh, 8
  %i.bwb = add nsw i32 %i.bvw, -1
  %i.bwc = zext nneg i32 %i.bwb to i64
  %i.bwd = shl nuw nsw i64 %i.bwc, 3              ; 2 uses
  %wide.trip.count3864.i = zext nneg i32 %i.bvw to i64 ; 3 uses
  br i1 %i.bwa, label %.noexc1317.us.us.i.preheader, label %.noexc1317.us.i

.noexc1317.us.us.i.preheader:                     ; preds = %.noexc1317.lr.ph.split.us.i
  %i.bwe = zext nneg i32 %i.bvf to i64
  %xtraiter600 = and i64 %wide.trip.count3864.i, 1
  %i.bwf = icmp eq i32 %i.bvw, 1
  %unroll_iter604 = and i64 %wide.trip.count3864.i, 2147483646
  %lcmp.mod601.not = icmp eq i64 %xtraiter600, 0
  %lcmp.mod603 = trunc i32 %i.bvw to i1
  br label %.noexc1317.us.us.i

.noexc1317.us.us.i:                               ; preds = %.noexc1317.us.us.i.preheader, %._crit_edge3456.split.us.us.us.i
  %indvars.iv239 = phi i64 [ 0, %.noexc1317.us.us.i.preheader ], [ %indvars.iv.next240, %._crit_edge3456.split.us.us.us.i ] ; 2 uses
  %.09753462.us.us.i = phi ptr [ %i.bjg, %.noexc1317.us.us.i.preheader ], [ %scevgep3862.i, %._crit_edge3456.split.us.us.us.i ] ; 3 uses
  %i.bwg = phi <4 x i32> [ zeroinitializer, %.noexc1317.us.us.i.preheader ], [ %.lcssa513, %._crit_edge3456.split.us.us.us.i ] ; 2 uses
  %i.bwh = lshr exact i64 %indvars.iv239, 3
  %.reass3469.us.us.i = mul i64 %factor.op.mul3468.i, %i.bwh
  %gep3472.us.us.i = getelementptr i8, ptr %invariant.gep3471.i, i64 %.reass3469.us.us.i ; 3 uses
  br i1 %i.bwf, label %.epil.preheader599, label %.noexc1317.us.us.i.new

.noexc1317.us.us.i.new:                           ; preds = %.noexc1317.us.us.i, %.noexc1317.us.us.i.new
  %indvars.iv3859.i = phi i64 [ %indvars.iv.next3860.i.1, %.noexc1317.us.us.i.new ], [ 0, %.noexc1317.us.us.i ] ; 3 uses
  %.19763453.us.us.us.i = phi ptr [ %i.bxc, %.noexc1317.us.us.i.new ], [ %.09753462.us.us.i, %.noexc1317.us.us.i ] ; 3 uses
  %.127483452.us.us.us.i = phi <4 x i32> [ %i.bxb, %.noexc1317.us.us.i.new ], [ %i.bwg, %.noexc1317.us.us.i ]
  %niter605 = phi i64 [ %niter605.next.1, %.noexc1317.us.us.i.new ], [ 0, %.noexc1317.us.us.i ]
  %i.bwi = getelementptr inbounds nuw [4 x i8], ptr %i.bvy, i64 %indvars.iv3859.i
  %i.bwj = load i32, ptr %i.bwi, align 4, !tbaa !10
  %i.bwk = sext i32 %i.bwj to i64
  %i.bwl = getelementptr inbounds i8, ptr %gep3472.us.us.i, i64 %i.bwk
  %i.bwm = load <8 x i8>, ptr %i.bwl, align 1, !tbaa !30
  %i.bwn = sext <8 x i8> %i.bwm to <8 x i16>
  %i.bwo = load <8 x i8>, ptr %.19763453.us.us.us.i, align 1, !tbaa !30
  %i.bwp = sext <8 x i8> %i.bwo to <8 x i16>
  %i.bwq = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.bwn, <8 x i16> %i.bwp, <4 x i32> %.127483452.us.us.us.i)
  %i.bwr = getelementptr inbounds nuw i8, ptr %.19763453.us.us.us.i, i64 8
  %i.bws = getelementptr inbounds nuw [4 x i8], ptr %i.bvy, i64 %indvars.iv3859.i
  %i.bwt = getelementptr inbounds nuw i8, ptr %i.bws, i64 4
  %i.bwu = load i32, ptr %i.bwt, align 4, !tbaa !10
  %i.bwv = sext i32 %i.bwu to i64
end_hunk_2
begin_hunk_3_@_ZN4ncnn27convolution_packed_int8_xopERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE:bb.a
  %i.cdb = mul nsw i32 %i.cda, %i.bve
  %i.cdc = sext i32 %i.cdb to i64
  %invariant.gep3522.i = getelementptr i8, ptr %invariant.gep3521.i, i64 %i.cdc
  %i.cdd = load i32, ptr %i.f, align 4, !tbaa !10 ; 3 uses
  %i.cde = icmp sgt i32 %i.cdd, 0
  %i.cdf = load ptr, ptr %i.g, align 8            ; 5 uses
  br i1 %i.cde, label %.noexc1314.us.preheader.i, label %._crit_edge3517.i

.noexc1314.us.preheader.i:                        ; preds = %.noexc1314.lr.ph.i
  %i.cdg = zext i32 %.1.lcssa.i to i64
  %i.cdh = zext nneg i32 %i.cdd to i64            ; 3 uses
  %xtraiter614 = and i64 %i.cdh, 3                ; 3 uses
  %i.cdi = icmp ult i32 %i.cdd, 4
  %unroll_iter618 = and i64 %i.cdh, 2147483644
  %lcmp.mod615.not = icmp eq i64 %xtraiter614, 0
  %lcmp.mod617 = icmp ne i64 %xtraiter614, 0
  br label %.noexc1314.us.i

.noexc1314.us.i:                                  ; preds = %._crit_edge3511.us.i, %.noexc1314.us.preheader.i
  %indvars.iv3883.i = phi i64 [ %i.cdg, %.noexc1314.us.preheader.i ], [ %indvars.iv.next3884.i, %._crit_edge3511.us.i ] ; 2 uses
  %.43515.us.i = phi ptr [ %.2977.lcssa.i, %.noexc1314.us.preheader.i ], [ %i.cfp, %._crit_edge3511.us.i ] ; 3 uses
  %.29803514.us.i = phi i32 [ %.0978.lcssa.i, %.noexc1314.us.preheader.i ], [ %.lcssa516, %._crit_edge3511.us.i ] ; 2 uses
  %.reass3520.us.i = mul i64 %factor.op.mul3519.i, %indvars.iv3883.i
  %gep3523.us.i = getelementptr i8, ptr %invariant.gep3522.i, i64 %.reass3520.us.i ; 5 uses
  br i1 %i.cdi, label %.epil.preheader613, label %.noexc1314.us.i.new

.noexc1314.us.i.new:                              ; preds = %.noexc1314.us.i, %.noexc1314.us.i.new
  %indvars.iv3876.i = phi i64 [ %indvars.iv.next3877.i.3, %.noexc1314.us.i.new ], [ 0, %.noexc1314.us.i ] ; 5 uses
  %.53508.us.i = phi ptr [ %i.cfd, %.noexc1314.us.i.new ], [ %.43515.us.i, %.noexc1314.us.i ] ; 5 uses
  %.39813507.us.i = phi i32 [ %i.cfc, %.noexc1314.us.i.new ], [ %.29803514.us.i, %.noexc1314.us.i ]
  %niter619 = phi i64 [ %niter619.next.3, %.noexc1314.us.i.new ], [ 0, %.noexc1314.us.i ]
  %i.cdj = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %indvars.iv3876.i
  %i.cdk = load i32, ptr %i.cdj, align 4, !tbaa !10
  %i.cdl = sext i32 %i.cdk to i64
  %i.cdm = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cdl
  %i.cdn = load i8, ptr %i.cdm, align 1, !tbaa !30
  %i.cdo = sext i8 %i.cdn to i32
  %i.cdp = load i8, ptr %.53508.us.i, align 1, !tbaa !30
  %i.cdq = sext i8 %i.cdp to i32
  %i.cdr = mul nsw i32 %i.cdq, %i.cdo
  %i.cds = add nsw i32 %i.cdr, %.39813507.us.i
  %i.cdt = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 1
  %i.cdu = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %indvars.iv3876.i
  %i.cdv = getelementptr inbounds nuw i8, ptr %i.cdu, i64 4
  %i.cdw = load i32, ptr %i.cdv, align 4, !tbaa !10
  %i.cdx = sext i32 %i.cdw to i64
  %i.cdy = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cdx
  %i.cdz = load i8, ptr %i.cdy, align 1, !tbaa !30
  %i.cea = sext i8 %i.cdz to i32
  %i.ceb = load i8, ptr %i.cdt, align 1, !tbaa !30
  %i.cec = sext i8 %i.ceb to i32
  %i.ced = mul nsw i32 %i.cec, %i.cea
  %i.cee = add nsw i32 %i.ced, %i.cds
  %i.cef = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 2
  %i.ceg = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %indvars.iv3876.i
  %i.ceh = getelementptr inbounds nuw i8, ptr %i.ceg, i64 8
  %i.cei = load i32, ptr %i.ceh, align 4, !tbaa !10
  %i.cej = sext i32 %i.cei to i64
  %i.cek = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cej
  %i.cel = load i8, ptr %i.cek, align 1, !tbaa !30
  %i.cem = sext i8 %i.cel to i32
  %i.cen = load i8, ptr %i.cef, align 1, !tbaa !30
  %i.ceo = sext i8 %i.cen to i32
  %i.cep = mul nsw i32 %i.ceo, %i.cem
  %i.ceq = add nsw i32 %i.cep, %i.cee
  %i.cer = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 3
  %i.ces = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %indvars.iv3876.i
  %i.cet = getelementptr inbounds nuw i8, ptr %i.ces, i64 12
  %i.ceu = load i32, ptr %i.cet, align 4, !tbaa !10
  %i.cev = sext i32 %i.ceu to i64
  %i.cew = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cev
  %i.cex = load i8, ptr %i.cew, align 1, !tbaa !30
  %i.cey = sext i8 %i.cex to i32
  %i.cez = load i8, ptr %i.cer, align 1, !tbaa !30
  %i.cfa = sext i8 %i.cez to i32
  %i.cfb = mul nsw i32 %i.cfa, %i.cey
  %i.cfc = add nsw i32 %i.cfb, %i.ceq             ; 3 uses
  %i.cfd = getelementptr inbounds nuw i8, ptr %.53508.us.i, i64 4 ; 2 uses
  %indvars.iv.next3877.i.3 = add nuw nsw i64 %indvars.iv3876.i, 4 ; 2 uses
  %niter619.next.3 = add i64 %niter619, 4         ; 2 uses
  %niter619.ncmp.3 = icmp eq i64 %niter619.next.3, %unroll_iter618
  br i1 %niter619.ncmp.3, label %._crit_edge3511.us.i.unr-lcssa, label %.noexc1314.us.i.new, !llvm.loop !141

._crit_edge3511.us.i.unr-lcssa:                   ; preds = %.noexc1314.us.i.new
  br i1 %lcmp.mod615.not, label %._crit_edge3511.us.i, label %.epil.preheader613

.epil.preheader613:                               ; preds = %._crit_edge3511.us.i.unr-lcssa, %.noexc1314.us.i
  %indvars.iv3876.i.epil.init = phi i64 [ 0, %.noexc1314.us.i ], [ %indvars.iv.next3877.i.3, %._crit_edge3511.us.i.unr-lcssa ]
  %.53508.us.i.epil.init = phi ptr [ %.43515.us.i, %.noexc1314.us.i ], [ %i.cfd, %._crit_edge3511.us.i.unr-lcssa ]
  %.39813507.us.i.epil.init = phi i32 [ %.29803514.us.i, %.noexc1314.us.i ], [ %i.cfc, %._crit_edge3511.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod617)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader613
  %indvars.iv3876.i.epil = phi i64 [ %indvars.iv3876.i.epil.init, %.epil.preheader613 ], [ %indvars.iv.next3877.i.epil, %bb.o ] ; 2 uses
  %.53508.us.i.epil = phi ptr [ %.53508.us.i.epil.init, %.epil.preheader613 ], [ %i.cfo, %bb.o ] ; 2 uses
  %.39813507.us.i.epil = phi i32 [ %.39813507.us.i.epil.init, %.epil.preheader613 ], [ %i.cfn, %bb.o ]
  %epil.iter = phi i64 [ 0, %.epil.preheader613 ], [ %epil.iter.next, %bb.o ]
  %i.cfe = getelementptr inbounds nuw [4 x i8], ptr %i.cdf, i64 %indvars.iv3876.i.epil
  %i.cff = load i32, ptr %i.cfe, align 4, !tbaa !10
  %i.cfg = sext i32 %i.cff to i64
  %i.cfh = getelementptr inbounds i8, ptr %gep3523.us.i, i64 %i.cfg
  %i.cfi = load i8, ptr %i.cfh, align 1, !tbaa !30
  %i.cfj = sext i8 %i.cfi to i32
  %i.cfk = load i8, ptr %.53508.us.i.epil, align 1, !tbaa !30
  %i.cfl = sext i8 %i.cfk to i32
  %i.cfm = mul nsw i32 %i.cfl, %i.cfj
  %i.cfn = add nsw i32 %i.cfm, %.39813507.us.i.epil ; 2 uses
  %i.cfo = getelementptr inbounds nuw i8, ptr %.53508.us.i.epil, i64 1
  %indvars.iv.next3877.i.epil = add nuw nsw i64 %indvars.iv3876.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter614
  br i1 %epil.iter.cmp.not, label %._crit_edge3511.us.i, label %bb.o, !llvm.loop !142

._crit_edge3511.us.i:                             ; preds = %bb.o, %._crit_edge3511.us.i.unr-lcssa
  %.lcssa516 = phi i32 [ %i.cfc, %._crit_edge3511.us.i.unr-lcssa ], [ %i.cfn, %bb.o ] ; 2 uses
  %i.cfp = getelementptr i8, ptr %.43515.us.i, i64 %i.cdh
  %indvars.iv.next3884.i = add nuw nsw i64 %indvars.iv3883.i, 1 ; 2 uses
  %i.cfq = trunc nuw i64 %indvars.iv.next3884.i to i32
  %i.cfr = icmp sgt i32 %i.bvf, %i.cfq
  br i1 %i.cfr, label %.noexc1314.us.i, label %._crit_edge3517.i, !llvm.loop !143

._crit_edge3517.i:                                ; preds = %._crit_edge3511.us.i, %.noexc1314.lr.ph.i, %.preheader.i
  %.2980.lcssa.i = phi i32 [ %.0978.lcssa.i, %.preheader.i ], [ %.0978.lcssa.i, %.noexc1314.lr.ph.i ], [ %.lcssa516, %._crit_edge3511.us.i ]
  store i32 %.2980.lcssa.i, ptr %.210923525.i, align 4, !tbaa !10
  %i.cfs = getelementptr inbounds nuw i8, ptr %.210923525.i, i64 4
  %i.cft = add nuw nsw i32 %.210893526.i, 1       ; 2 uses
  %exitcond3886.not.i = icmp eq i32 %i.cft, %i.ct
  br i1 %exitcond3886.not.i, label %._crit_edge3527.i, label %.noexc1319.i, !llvm.loop !144

._crit_edge3527.i:                                ; preds = %._crit_edge3517.i, %.preheader2821.i
  %indvars.iv.next3888.i = add nsw i64 %indvars.iv3887.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next3888.i, %i.dh
  br i1 %exitcond.not, label %._crit_edge3529.i, label %.noexc.i, !llvm.loop !145

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
  %i.e = load i32, ptr %2, align 4, !tbaa !10     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.u

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
  %.01925 = phi i32 [ %i.k, %.noexc.lr.ph ], [ %i.asn, %._crit_edge1923 ] ; 3 uses
  %i.u = load i32, ptr %3, align 4, !tbaa !10
  %i.v = shl nsw i32 %.01925, 2
  %i.w = add nsw i32 %i.u, %i.v                   ; 4 uses
  %i.x = load i32, ptr %i.l, align 4, !tbaa !16   ; 9 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !20
  %i.z = load i64, ptr %i.n, align 8, !tbaa !19
  %i.aa = load i32, ptr %6, align 4, !tbaa !10
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul i64 %i.z, %i.ab                     ; 34 uses
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !19  ; 2 uses
  %i.ae = load i32, ptr %7, align 4, !tbaa !10    ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul i64 %i.ad, %i.af                    ; 9 uses
  %i.ah = sdiv i32 %i.w, %i.ae
  %i.ai = load ptr, ptr %4, align 8, !tbaa !28, !noalias !220
  %i.aj = sext i32 %i.ah to i64
  %i.ak = mul i64 %i.ad, %i.aj
  %i.al = load i64, ptr %i.p, align 8, !tbaa !29, !noalias !220
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
  %i.ay = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %i.az = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %.noexc756

.preheader1572:                                   ; preds = %bb.h, %.noexc
  %.0665.lcssa = phi i32 [ 0, %.noexc ], [ %i.um, %bb.h ] ; 3 uses
  %.0645.lcssa = phi ptr [ %i.an, %.noexc ], [ %.2647, %bb.h ] ; 2 uses
  %i.ba = or disjoint i32 %.0665.lcssa, 1         ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.ao
  br i1 %i.bb, label %.noexc730.lr.ph, label %.preheader1571

.noexc730.lr.ph:                                  ; preds = %.preheader1572
  %i.bc = sdiv i32 %i.w, 4
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl i64 %i.ac, 1                        ; 2 uses
  %i.bf = mul i64 %i.ac, 3                        ; 2 uses
  %i.bg = shl i64 %i.ac, 2                        ; 2 uses
  %i.bh = mul i64 %i.ac, 5                        ; 2 uses
  %i.bi = mul i64 %i.ac, 6                        ; 2 uses
  %i.bj = mul i64 %i.ac, 7                        ; 2 uses
  %.idx1563 = shl i64 %i.ag, 3
  %.idx1564 = mul i64 %i.ag, 12
  %i.bk = insertelement <2 x i32> poison, i32 %i.x, i64 0
  %i.bl = shufflevector <2 x i32> %i.bk, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.noexc730

.noexc756:                                        ; preds = %.noexc756.lr.ph, %bb.h
  %.06451744 = phi ptr [ %i.an, %.noexc756.lr.ph ], [ %.2647, %bb.h ] ; 6 uses
  %.06651743 = phi i32 [ 0, %.noexc756.lr.ph ], [ %i.um, %bb.h ] ; 6 uses
  %i.bm = or disjoint i32 %.06651743, 3           ; 2 uses
  %i.bn = or disjoint i32 %.06651743, 1           ; 2 uses
  %i.bo = or disjoint i32 %.06651743, 2           ; 2 uses
  %i.bp = insertelement <4 x i32> poison, i32 %.06651743, i64 0
  %i.bq = insertelement <4 x i32> %i.bp, i32 %i.bn, i64 1
  %i.br = insertelement <4 x i32> %i.bq, i32 %i.bo, i64 2
  %i.bs = insertelement <4 x i32> %i.br, i32 %i.bm, i64 3
  %i.bt = sdiv <4 x i32> %i.bs, %i.az             ; 9 uses
  %i.bu = srem i32 %.06651743, %i.x               ; 3 uses
  %i.bv = srem i32 %i.bn, %i.x                    ; 3 uses
  %i.bw = srem i32 %i.bo, %i.x                    ; 3 uses
  %i.bx = srem i32 %i.bm, %i.x                    ; 3 uses
  %i.by = load ptr, ptr %8, align 8, !tbaa !28, !noalias !221
  %i.bz = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !221
  %i.ca = mul i64 %i.bz, %i.ar
  %i.cb = load i64, ptr %i.r, align 8, !tbaa !29, !noalias !221
  %i.cc = mul i64 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %9, align 4, !tbaa !10    ; 4 uses
  %i.cf = icmp sgt i32 %i.ce, 7
  br i1 %i.cf, label %.noexc754.lr.ph, label %.preheader1570

.noexc754.lr.ph:                                  ; preds = %.noexc756
  %i.cg = load i32, ptr %6, align 4, !tbaa !10    ; 5 uses
  %i.ch = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !222
  %i.ci = load ptr, ptr %5, align 8, !tbaa !28, !noalias !222 ; 4 uses
  %i.cj = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !222
  %i.ck = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !222 ; 2 uses
  %factor.op.mul = mul i64 %i.cj, %i.ck
  %i.cl = sext i32 %i.ch to i64
  %i.cm = load i32, ptr %10, align 4, !tbaa !10   ; 4 uses
  %i.cn = extractelement <4 x i32> %i.bt, i64 0
  %i.co = mul nsw i32 %i.cm, %i.cn
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul i64 %i.ck, %i.cl                    ; 4 uses
  %i.cr = mul i64 %i.cq, %i.cp
  %invariant.gep = getelementptr i8, ptr %i.ci, i64 %i.cr
  %i.cs = load i32, ptr %11, align 4, !tbaa !10   ; 4 uses
  %i.ct = mul i32 %i.cg, %i.bu
  %i.cu = mul i32 %i.ct, %i.cs
  %i.cv = sext i32 %i.cu to i64
  %invariant.gep1643 = getelementptr i8, ptr %invariant.gep, i64 %i.cv
  %i.cw = extractelement <4 x i32> %i.bt, i64 1
  %i.cx = mul nsw i32 %i.cm, %i.cw
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.cq, %i.cy
  %invariant.gep1647 = getelementptr i8, ptr %i.ci, i64 %i.cz
  %i.da = mul i32 %i.cg, %i.bv
  %i.db = mul i32 %i.da, %i.cs
  %i.dc = sext i32 %i.db to i64
  %invariant.gep1648 = getelementptr i8, ptr %invariant.gep1647, i64 %i.dc
  %i.dd = extractelement <4 x i32> %i.bt, i64 2
  %i.de = mul nsw i32 %i.cm, %i.dd
  %i.df = sext i32 %i.de to i64
  %i.dg = mul i64 %i.cq, %i.df
  %invariant.gep1652 = getelementptr i8, ptr %i.ci, i64 %i.dg
  %i.dh = mul i32 %i.cg, %i.bw
  %i.di = mul i32 %i.dh, %i.cs
  %i.dj = sext i32 %i.di to i64
  %invariant.gep1653 = getelementptr i8, ptr %invariant.gep1652, i64 %i.dj
  %i.dk = extractelement <4 x i32> %i.bt, i64 3
  %i.dl = mul nsw i32 %i.cm, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %i.dn = mul i64 %i.cq, %i.dm
  %invariant.gep1657 = getelementptr i8, ptr %i.ci, i64 %i.dn
  %i.do = mul i32 %i.cg, %i.bx
  %i.dp = mul i32 %i.do, %i.cs
  %i.dq = sext i32 %i.dp to i64
  %invariant.gep1658 = getelementptr i8, ptr %invariant.gep1657, i64 %i.dq
  %i.dr = load i32, ptr %12, align 4, !tbaa !10   ; 4 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  %i.dt = add i32 %i.dr, -1
  %i.du = zext i32 %i.dt to i64
  %i.dv = shl nuw nsw i64 %i.du, 5                ; 2 uses
  %wide.trip.count = zext nneg i32 %i.dr to i64
  %wide.trip.count2007 = zext nneg i32 %i.dr to i64
  br label %.noexc754

.preheader1570.loopexit:                          ; preds = %._crit_edge
  %i.dw = and i32 %i.ce, 2147483640
  %.pre = load i32, ptr %9, align 4, !tbaa !10
  br label %.preheader1570

.preheader1570:                                   ; preds = %.preheader1570.loopexit, %.noexc756
  %i.dx = phi i32 [ %i.ce, %.noexc756 ], [ %.pre, %.preheader1570.loopexit ] ; 5 uses
  %.lcssa1579 = phi <4 x i32> [ zeroinitializer, %.noexc756 ], [ %.lcssa1575, %.preheader1570.loopexit ] ; 3 uses
  %.lcssa1578 = phi <4 x i32> [ zeroinitializer, %.noexc756 ], [ %.lcssa1574, %.preheader1570.loopexit ] ; 3 uses
  %.lcssa1577 = phi <4 x i32> [ zeroinitializer, %.noexc756 ], [ %.lcssa1573, %.preheader1570.loopexit ] ; 3 uses
  %.lcssa1576 = phi <4 x i32> [ zeroinitializer, %.noexc756 ], [ %.lcssa, %.preheader1570.loopexit ] ; 3 uses
  %.0674.lcssa = phi i32 [ 0, %.noexc756 ], [ %i.dw, %.preheader1570.loopexit ] ; 5 uses
  %.0668.lcssa = phi ptr [ %i.cd, %.noexc756 ], [ %.1669.lcssa, %.preheader1570.loopexit ] ; 3 uses
  %i.dy = or disjoint i32 %.0674.lcssa, 1
  %i.dz = icmp slt i32 %i.dy, %i.dx
  br i1 %i.dz, label %.noexc746.lr.ph, label %.preheader1569

.noexc746.lr.ph:                                  ; preds = %.preheader1570
  %i.ea = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !223
  %i.eb = load ptr, ptr %5, align 8, !tbaa !28, !noalias !223 ; 4 uses
  %i.ec = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !223
  %i.ed = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !223 ; 2 uses
  %factor.op.mul1677 = mul i64 %i.ec, %i.ed
  %i.ee = sext i32 %i.ea to i64
  %i.ef = load i32, ptr %10, align 4, !tbaa !10   ; 4 uses
  %i.eg = extractelement <4 x i32> %i.bt, i64 0
  %i.eh = mul nsw i32 %i.ef, %i.eg
  %i.ei = sext i32 %i.eh to i64
  %i.ej = mul i64 %i.ed, %i.ee                    ; 4 uses
  %i.ek = mul i64 %i.ej, %i.ei
  %invariant.gep1679 = getelementptr i8, ptr %i.eb, i64 %i.ek
  %i.el = load i32, ptr %11, align 4, !tbaa !10   ; 4 uses
  %i.em = mul nsw i32 %i.el, %i.bu
  %i.en = sext i32 %i.em to i64
  %invariant.gep1680 = getelementptr i8, ptr %invariant.gep1679, i64 %i.en
  %i.eo = extractelement <4 x i32> %i.bt, i64 1
  %i.ep = mul nsw i32 %i.ef, %i.eo
  %i.eq = sext i32 %i.ep to i64
  %i.er = mul i64 %i.ej, %i.eq
  %invariant.gep1684 = getelementptr i8, ptr %i.eb, i64 %i.er
  %i.es = mul nsw i32 %i.el, %i.bv
  %i.et = sext i32 %i.es to i64
  %invariant.gep1685 = getelementptr i8, ptr %invariant.gep1684, i64 %i.et
  %i.eu = extractelement <4 x i32> %i.bt, i64 2
  %i.ev = mul nsw i32 %i.ef, %i.eu
  %i.ew = sext i32 %i.ev to i64
  %i.ex = mul i64 %i.ej, %i.ew
  %invariant.gep1689 = getelementptr i8, ptr %i.eb, i64 %i.ex
  %i.ey = mul nsw i32 %i.el, %i.bw
  %i.ez = sext i32 %i.ey to i64
  %invariant.gep1690 = getelementptr i8, ptr %invariant.gep1689, i64 %i.ez
  %i.fa = extractelement <4 x i32> %i.bt, i64 3
  %i.fb = mul nsw i32 %i.ef, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = mul i64 %i.ej, %i.fc
  %invariant.gep1694 = getelementptr i8, ptr %i.eb, i64 %i.fd
  %i.fe = mul nsw i32 %i.el, %i.bx
  %i.ff = sext i32 %i.fe to i64
  %invariant.gep1695 = getelementptr i8, ptr %invariant.gep1694, i64 %i.ff
  %i.fg = load i32, ptr %12, align 4, !tbaa !10   ; 3 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.noexc746.lr.ph.split.us, label %.noexc746.preheader
end_hunk_3
begin_hunk_4_@_ZN4ncnnL23convolution_packed_int8ERKNS_3MatERS0_S2_iiiiiiRKNS_6OptionE.omp_outlined:bb.a
  %.lcssa1587 = phi <4 x i32> [ %.lcssa1579, %.preheader1570 ], [ %i.ho, %.preheader1569.loopexit ], [ %.lcssa1579, %.noexc746.preheader ] ; 3 uses
  %.lcssa1586 = phi <4 x i32> [ %.lcssa1578, %.preheader1570 ], [ %i.hn, %.preheader1569.loopexit ], [ %.lcssa1578, %.noexc746.preheader ] ; 3 uses
  %.lcssa1585 = phi <4 x i32> [ %.lcssa1577, %.preheader1570 ], [ %i.hm, %.preheader1569.loopexit ], [ %.lcssa1577, %.noexc746.preheader ] ; 3 uses
  %.lcssa1584 = phi <4 x i32> [ %.lcssa1576, %.preheader1570 ], [ %i.hl, %.preheader1569.loopexit ], [ %.lcssa1576, %.noexc746.preheader ] ; 3 uses
  %.1675.lcssa = phi i32 [ %.0674.lcssa, %.preheader1570 ], [ %i.qp, %.preheader1569.loopexit ], [ %i.fm, %.noexc746.preheader ] ; 2 uses
  %.2670.lcssa = phi ptr [ %.0668.lcssa, %.preheader1570 ], [ %scevgep2012, %.preheader1569.loopexit ], [ %.0668.lcssa, %.noexc746.preheader ]
  %i.qq = icmp slt i32 %.1675.lcssa, %i.dx
  br i1 %i.qq, label %.noexc738.lr.ph, label %._crit_edge1714

.noexc738.lr.ph:                                  ; preds = %.preheader1569
  %i.qr = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !224
  %i.qs = load ptr, ptr %5, align 8, !tbaa !28, !noalias !224 ; 4 uses
  %i.qt = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !224
  %i.qu = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !224 ; 2 uses
  %factor.op.mul1719 = mul i64 %i.qt, %i.qu
  %i.qv = sext i32 %i.qr to i64
  %i.qw = load i32, ptr %10, align 4, !tbaa !10
  %i.qx = mul i64 %i.qu, %i.qv
  %i.qy = load i32, ptr %11, align 4, !tbaa !10   ; 4 uses
  %i.qz = mul nsw i32 %i.qy, %i.bu
  %i.ra = sext i32 %i.qz to i64
  %i.rb = mul nsw i32 %i.qy, %i.bv
  %i.rc = sext i32 %i.rb to i64
  %i.rd = mul nsw i32 %i.qy, %i.bw
  %i.re = sext i32 %i.rd to i64
  %i.rf = insertelement <4 x i32> poison, i32 %i.qw, i64 0
  %i.rg = shufflevector <4 x i32> %i.rf, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.rh = mul nsw <4 x i32> %i.rg, %i.bt
  %i.ri = sext <4 x i32> %i.rh to <4 x i64>
  %i.rj = insertelement <4 x i64> poison, i64 %i.qx, i64 0
  %i.rk = shufflevector <4 x i64> %i.rj, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.rl = mul <4 x i64> %i.rk, %i.ri              ; 4 uses
  %i.rm = extractelement <4 x i64> %i.rl, i64 0
  %invariant.gep1721 = getelementptr i8, ptr %i.qs, i64 %i.rm
  %invariant.gep1722 = getelementptr i8, ptr %invariant.gep1721, i64 %i.ra
  %i.rn = extractelement <4 x i64> %i.rl, i64 1
  %invariant.gep1726 = getelementptr i8, ptr %i.qs, i64 %i.rn
  %invariant.gep1727 = getelementptr i8, ptr %invariant.gep1726, i64 %i.rc
  %i.ro = extractelement <4 x i64> %i.rl, i64 2
  %invariant.gep1731 = getelementptr i8, ptr %i.qs, i64 %i.ro
  %invariant.gep1732 = getelementptr i8, ptr %invariant.gep1731, i64 %i.re
  %i.rp = extractelement <4 x i64> %i.rl, i64 3
  %invariant.gep1736 = getelementptr i8, ptr %i.qs, i64 %i.rp
  %i.rq = mul nsw i32 %i.qy, %i.bx
  %i.rr = sext i32 %i.rq to i64
  %invariant.gep1737 = getelementptr i8, ptr %invariant.gep1736, i64 %i.rr
  %i.rs = load i32, ptr %12, align 4, !tbaa !10   ; 3 uses
  %i.rt = icmp sgt i32 %i.rs, 0
  br i1 %i.rt, label %.noexc738.lr.ph.split.us, label %._crit_edge1714

.noexc738.lr.ph.split.us:                         ; preds = %.noexc738.lr.ph
  %i.ru = load ptr, ptr %13, align 8, !tbaa !21
  %i.rv = add nsw i32 %i.rs, -1
  %i.rw = zext nneg i32 %i.rv to i64
  %i.rx = shl nuw nsw i64 %i.rw, 2
  %i.ry = zext i32 %.1675.lcssa to i64
  %wide.trip.count2024 = zext nneg i32 %i.rs to i64
  br label %.noexc738.us

.noexc738.us:                                     ; preds = %._crit_edge1706.us, %.noexc738.lr.ph.split.us
  %indvars.iv2026 = phi i64 [ %indvars.iv.next2027, %._crit_edge1706.us ], [ %i.ry, %.noexc738.lr.ph.split.us ] ; 2 uses
  %.46721713.us = phi ptr [ %scevgep2022, %._crit_edge1706.us ], [ %.2670.lcssa, %.noexc738.lr.ph.split.us ] ; 2 uses
  %i.rz = phi <4 x i32> [ %i.th, %._crit_edge1706.us ], [ %.lcssa1584, %.noexc738.lr.ph.split.us ]
  %i.sa = phi <4 x i32> [ %i.ti, %._crit_edge1706.us ], [ %.lcssa1585, %.noexc738.lr.ph.split.us ]
  %i.sb = phi <4 x i32> [ %i.tj, %._crit_edge1706.us ], [ %.lcssa1586, %.noexc738.lr.ph.split.us ]
  %i.sc = phi <4 x i32> [ %i.tk, %._crit_edge1706.us ], [ %.lcssa1587, %.noexc738.lr.ph.split.us ]
  %.reass1720.us = mul i64 %factor.op.mul1719, %indvars.iv2026 ; 4 uses
  %gep1723.us = getelementptr i8, ptr %invariant.gep1722, i64 %.reass1720.us
  %gep1728.us = getelementptr i8, ptr %invariant.gep1727, i64 %.reass1720.us
  %gep1733.us = getelementptr i8, ptr %invariant.gep1732, i64 %.reass1720.us
  %gep1738.us = getelementptr i8, ptr %invariant.gep1737, i64 %.reass1720.us
  br label %bb.d

bb.d:                                             ; preds = %.noexc738.us, %bb.d
  %indvars.iv2019 = phi i64 [ 0, %.noexc738.us ], [ %indvars.iv.next2020, %bb.d ] ; 2 uses
  %.56731704.us = phi ptr [ %.46721713.us, %.noexc738.us ], [ %i.tl, %bb.d ] ; 2 uses
  %i.sd = phi <4 x i32> [ %i.rz, %.noexc738.us ], [ %i.th, %bb.d ]
  %i.se = phi <4 x i32> [ %i.sa, %.noexc738.us ], [ %i.ti, %bb.d ]
  %i.sf = phi <4 x i32> [ %i.sb, %.noexc738.us ], [ %i.tj, %bb.d ]
  %i.sg = phi <4 x i32> [ %i.sc, %.noexc738.us ], [ %i.tk, %bb.d ]
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %indvars.iv2019
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !10
  %i.sj = sext i32 %i.si to i64                   ; 4 uses
  %i.sk = getelementptr inbounds i8, ptr %gep1723.us, i64 %i.sj
  %i.sl = getelementptr inbounds i8, ptr %gep1728.us, i64 %i.sj
  %i.sm = getelementptr inbounds i8, ptr %gep1733.us, i64 %i.sj
  %i.sn = getelementptr inbounds i8, ptr %gep1738.us, i64 %i.sj
  %i.so = load i8, ptr %i.sk, align 1, !tbaa !30
  %i.sp = sext i8 %i.so to i16
  %i.sq = insertelement <8 x i16> poison, i16 %i.sp, i64 0
  %i.sr = shufflevector <8 x i16> %i.sq, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ss = load i8, ptr %i.sl, align 1, !tbaa !30
  %i.st = sext i8 %i.ss to i16
  %i.su = insertelement <8 x i16> poison, i16 %i.st, i64 0
  %i.sv = shufflevector <8 x i16> %i.su, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.sw = load i8, ptr %i.sm, align 1, !tbaa !30
  %i.sx = sext i8 %i.sw to i16
  %i.sy = insertelement <8 x i16> poison, i16 %i.sx, i64 0
  %i.sz = shufflevector <8 x i16> %i.sy, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.ta = load i8, ptr %i.sn, align 1, !tbaa !30
  %i.tb = sext i8 %i.ta to i16
  %i.tc = insertelement <8 x i16> poison, i16 %i.tb, i64 0
  %i.td = shufflevector <8 x i16> %i.tc, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.te = load <8 x i8>, ptr %.56731704.us, align 1, !tbaa !30
  %i.tf = sext <8 x i8> %i.te to <8 x i16>
  %i.tg = shufflevector <8 x i16> %i.tf, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 4 uses
  %i.th = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.sr, <8 x i16> %i.tg, <4 x i32> %i.sd) ; 3 uses
  %i.ti = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.sv, <8 x i16> %i.tg, <4 x i32> %i.se) ; 3 uses
  %i.tj = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.sz, <8 x i16> %i.tg, <4 x i32> %i.sf) ; 3 uses
  %i.tk = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.td, <8 x i16> %i.tg, <4 x i32> %i.sg) ; 3 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.56731704.us, i64 4
  %indvars.iv.next2020 = add nuw nsw i64 %indvars.iv2019, 1 ; 2 uses
  %exitcond2025.not = icmp eq i64 %indvars.iv.next2020, %wide.trip.count2024
  br i1 %exitcond2025.not, label %._crit_edge1706.us, label %bb.d, !llvm.loop !187

._crit_edge1706.us:                               ; preds = %bb.d
  %scevgep2021 = getelementptr i8, ptr %.46721713.us, i64 4
  %scevgep2022 = getelementptr i8, ptr %scevgep2021, i64 %i.rx
  %indvars.iv.next2027 = add nuw nsw i64 %indvars.iv2026, 1 ; 2 uses
  %i.tm = trunc nuw i64 %indvars.iv.next2027 to i32
  %i.tn = icmp sgt i32 %i.dx, %i.tm
  br i1 %i.tn, label %.noexc738.us, label %._crit_edge1714, !llvm.loop !188

._crit_edge1714:                                  ; preds = %._crit_edge1706.us, %.noexc738.lr.ph, %.preheader1569
  %.lcssa1595 = phi <4 x i32> [ %.lcssa1587, %.preheader1569 ], [ %.lcssa1587, %.noexc738.lr.ph ], [ %i.tk, %._crit_edge1706.us ] ; 5 uses
  %.lcssa1594 = phi <4 x i32> [ %.lcssa1586, %.preheader1569 ], [ %.lcssa1586, %.noexc738.lr.ph ], [ %i.tj, %._crit_edge1706.us ] ; 5 uses
  %.lcssa1593 = phi <4 x i32> [ %.lcssa1585, %.preheader1569 ], [ %.lcssa1585, %.noexc738.lr.ph ], [ %i.ti, %._crit_edge1706.us ] ; 5 uses
  %.lcssa1592 = phi <4 x i32> [ %.lcssa1584, %.preheader1569 ], [ %.lcssa1584, %.noexc738.lr.ph ], [ %i.th, %._crit_edge1706.us ] ; 5 uses
  %i.to = load i32, ptr %7, align 4, !tbaa !10    ; 2 uses
  %i.tp = icmp eq i32 %i.to, 4
  br i1 %i.tp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge1714
  store <4 x i32> %.lcssa1592, ptr %.06451744, align 16, !tbaa !30
  %i.tq = getelementptr inbounds nuw i8, ptr %.06451744, i64 16
  store <4 x i32> %.lcssa1593, ptr %i.tq, align 16, !tbaa !30
  %i.tr = getelementptr inbounds nuw i8, ptr %.06451744, i64 32
  store <4 x i32> %.lcssa1594, ptr %i.tr, align 16, !tbaa !30
  %i.ts = getelementptr inbounds nuw i8, ptr %.06451744, i64 48
  store <4 x i32> %.lcssa1595, ptr %i.ts, align 16, !tbaa !30
  %i.tt = getelementptr inbounds nuw i8, ptr %.06451744, i64 64
  %.pr = load i32, ptr %7, align 4, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge1714
  %i.tu = phi i32 [ %.pr, %bb.e ], [ %i.to, %._crit_edge1714 ]
  %.1646 = phi ptr [ %i.tt, %bb.e ], [ %.06451744, %._crit_edge1714 ] ; 6 uses
  %i.tv = icmp eq i32 %i.tu, 1
  br i1 %i.tv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.tw = shufflevector <4 x i32> %.lcssa1592, <4 x i32> %.lcssa1593, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.tx = shufflevector <4 x i32> %i.tw, <4 x i32> %.lcssa1594, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.ty = shufflevector <4 x i32> %i.tx, <4 x i32> %.lcssa1595, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  store <4 x i32> %i.ty, ptr %.1646, align 4, !tbaa !10
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %.1646, i64 %i.ag
  %i.ua = shufflevector <4 x i32> %.lcssa1592, <4 x i32> %.lcssa1593, <4 x i32> <i32 1, i32 5, i32 poison, i32 poison>
  %i.ub = shufflevector <4 x i32> %i.ua, <4 x i32> %.lcssa1594, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.uc = shufflevector <4 x i32> %i.ub, <4 x i32> %.lcssa1595, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x i32> %i.uc, ptr %i.tz, align 4, !tbaa !10
  %i.ud = getelementptr inbounds nuw i8, ptr %.1646, i64 %.idx1565
  %i.ue = shufflevector <4 x i32> %.lcssa1592, <4 x i32> %.lcssa1593, <4 x i32> <i32 2, i32 6, i32 poison, i32 poison>
  %i.uf = shufflevector <4 x i32> %i.ue, <4 x i32> %.lcssa1594, <4 x i32> <i32 0, i32 1, i32 6, i32 poison>
  %i.ug = shufflevector <4 x i32> %i.uf, <4 x i32> %.lcssa1595, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  store <4 x i32> %i.ug, ptr %i.ud, align 4, !tbaa !10
  %i.uh = getelementptr inbounds nuw i8, ptr %.1646, i64 %.idx1566
  %i.ui = shufflevector <4 x i32> %.lcssa1592, <4 x i32> %.lcssa1593, <4 x i32> <i32 3, i32 7, i32 poison, i32 poison>
  %i.uj = shufflevector <4 x i32> %i.ui, <4 x i32> %.lcssa1594, <4 x i32> <i32 0, i32 1, i32 7, i32 poison>
  %i.uk = shufflevector <4 x i32> %i.uj, <4 x i32> %.lcssa1595, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x i32> %i.uk, ptr %i.uh, align 4, !tbaa !10
  %i.ul = getelementptr inbounds nuw i8, ptr %.1646, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.2647 = phi ptr [ %i.ul, %bb.g ], [ %.1646, %bb.f ] ; 2 uses
  %i.um = add nuw nsw i32 %.06651743, 4           ; 3 uses
  %i.un = or disjoint i32 %i.um, 3
  %i.uo = icmp slt i32 %i.un, %i.ao
  br i1 %i.uo, label %.noexc756, label %.preheader1572, !llvm.loop !189

.preheader1571:                                   ; preds = %bb.n, %.preheader1572
  %.1666.lcssa = phi i32 [ %.0665.lcssa, %.preheader1572 ], [ %i.ahd, %bb.n ] ; 2 uses
  %.3648.lcssa = phi ptr [ %.0645.lcssa, %.preheader1572 ], [ %.5650, %bb.n ]
  %i.up = icmp slt i32 %.1666.lcssa, %i.ao
  br i1 %i.up, label %.noexc716.lr.ph, label %._crit_edge1923

.noexc716.lr.ph:                                  ; preds = %.preheader1571
  %i.uq = sdiv i32 %i.w, 4
  %i.ur = sext i32 %i.uq to i64
  %i.us = shl i64 %i.ac, 1
  %i.ut = mul i64 %i.ac, 3
  %i.uu = shl i64 %i.ac, 2
  %i.uv = mul i64 %i.ac, 5
  %i.uw = mul i64 %i.ac, 6
  %i.ux = mul i64 %i.ac, 7
  %.idx = shl i64 %i.ag, 3
  %.idx686 = mul i64 %i.ag, 12
  br label %.noexc716

.noexc730:                                        ; preds = %.noexc730.lr.ph, %bb.n
  %i.uy = phi i32 [ %i.ba, %.noexc730.lr.ph ], [ %i.ahe, %bb.n ]
  %.36481832 = phi ptr [ %.0645.lcssa, %.noexc730.lr.ph ], [ %.5650, %bb.n ] ; 4 uses
  %.16661831 = phi i32 [ %.0665.lcssa, %.noexc730.lr.ph ], [ %i.ahd, %bb.n ] ; 2 uses
  %i.uz = insertelement <2 x i32> poison, i32 %i.uy, i64 0
  %i.va = insertelement <2 x i32> %i.uz, i32 %.16661831, i64 1
  %.frozen = freeze <2 x i32> %i.va               ; 2 uses
  %.frozen2299 = freeze <2 x i32> %i.bl           ; 2 uses
  %i.vb = sdiv <2 x i32> %.frozen, %.frozen2299   ; 7 uses
  %14 = mul <2 x i32> %i.vb, %.frozen2299
  %.decomposed = sub <2 x i32> %.frozen, %14      ; 6 uses
  %i.vc = load ptr, ptr %8, align 8, !tbaa !28, !noalias !225
  %i.vd = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !225
  %i.ve = mul i64 %i.vd, %i.bd
  %i.vf = load i64, ptr %i.r, align 8, !tbaa !29, !noalias !225
  %i.vg = mul i64 %i.ve, %i.vf
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 %i.vg ; 2 uses
  %i.vi = load i32, ptr %9, align 4, !tbaa !10    ; 4 uses
  %i.vj = icmp sgt i32 %i.vi, 7
  br i1 %i.vj, label %.noexc728.lr.ph, label %.preheader1568

.noexc728.lr.ph:                                  ; preds = %.noexc730
  %i.vk = load i32, ptr %6, align 4, !tbaa !10    ; 3 uses
  %i.vl = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !226
  %i.vm = load ptr, ptr %5, align 8, !tbaa !28, !noalias !226 ; 2 uses
  %i.vn = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !226
  %i.vo = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !226 ; 2 uses
  %factor.op.mul1770 = mul i64 %i.vn, %i.vo
  %i.vp = sext i32 %i.vl to i64
  %i.vq = load i32, ptr %10, align 4, !tbaa !10   ; 2 uses
  %i.vr = extractelement <2 x i32> %i.vb, i64 1
  %i.vs = mul nsw i32 %i.vq, %i.vr
  %i.vt = sext i32 %i.vs to i64
  %i.vu = mul i64 %i.vo, %i.vp                    ; 2 uses
  %i.vv = mul i64 %i.vu, %i.vt
  %invariant.gep1772 = getelementptr i8, ptr %i.vm, i64 %i.vv
  %i.vw = load i32, ptr %11, align 4, !tbaa !10   ; 2 uses
  %15 = extractelement <2 x i32> %.decomposed, i64 1
  %i.vx = mul i32 %i.vk, %15
  %i.vy = mul i32 %i.vx, %i.vw
  %i.vz = sext i32 %i.vy to i64
  %invariant.gep1773 = getelementptr i8, ptr %invariant.gep1772, i64 %i.vz
  %i.wa = extractelement <2 x i32> %i.vb, i64 0
  %i.wb = mul nsw i32 %i.vq, %i.wa
  %i.wc = sext i32 %i.wb to i64
  %i.wd = mul i64 %i.vu, %i.wc
  %invariant.gep1777 = getelementptr i8, ptr %i.vm, i64 %i.wd
  %16 = extractelement <2 x i32> %.decomposed, i64 0
  %i.we = mul i32 %i.vk, %16
  %i.wf = mul i32 %i.we, %i.vw
  %i.wg = sext i32 %i.wf to i64
  %invariant.gep1778 = getelementptr i8, ptr %invariant.gep1777, i64 %i.wg
  %i.wh = load i32, ptr %12, align 4, !tbaa !10   ; 4 uses
  %i.wi = icmp sgt i32 %i.wh, 0
  %i.wj = add i32 %i.wh, -1
  %i.wk = zext i32 %i.wj to i64
  %i.wl = shl nuw nsw i64 %i.wk, 5                ; 2 uses
  %wide.trip.count2034 = zext nneg i32 %i.wh to i64
  %wide.trip.count2041 = zext nneg i32 %i.wh to i64
  br label %.noexc728

.preheader1568.loopexit:                          ; preds = %._crit_edge1751
  %i.wm = and i32 %i.vi, 2147483640
  %.pre2098 = load i32, ptr %9, align 4, !tbaa !10
  br label %.preheader1568

.preheader1568:                                   ; preds = %.preheader1568.loopexit, %.noexc730
  %i.wn = phi i32 [ %i.vi, %.noexc730 ], [ %.pre2098, %.preheader1568.loopexit ] ; 5 uses
  %.lcssa1604 = phi <4 x i32> [ zeroinitializer, %.noexc730 ], [ %.lcssa1600, %.preheader1568.loopexit ] ; 3 uses
  %.lcssa1603 = phi <4 x i32> [ zeroinitializer, %.noexc730 ], [ %.lcssa1599, %.preheader1568.loopexit ] ; 3 uses
  %.lcssa1602 = phi <4 x i32> [ zeroinitializer, %.noexc730 ], [ %.lcssa1598, %.preheader1568.loopexit ]
  %.lcssa1601 = phi <4 x i32> [ zeroinitializer, %.noexc730 ], [ %.lcssa1597, %.preheader1568.loopexit ]
  %.0659.lcssa = phi ptr [ %i.vh, %.noexc730 ], [ %.1660.lcssa, %.preheader1568.loopexit ] ; 3 uses
  %.0656.lcssa = phi i32 [ 0, %.noexc730 ], [ %i.wm, %.preheader1568.loopexit ] ; 5 uses
  %i.wo = or disjoint i32 %.0656.lcssa, 1
  %i.wp = icmp slt i32 %i.wo, %i.wn
  br i1 %i.wp, label %.noexc724.lr.ph, label %.preheader1567

.noexc724.lr.ph:                                  ; preds = %.preheader1568
  %i.wq = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !227
  %i.wr = load ptr, ptr %5, align 8, !tbaa !28, !noalias !227 ; 2 uses
  %i.ws = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !227
  %i.wt = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !227 ; 2 uses
  %factor.op.mul1793 = mul i64 %i.ws, %i.wt
  %i.wu = sext i32 %i.wq to i64
  %i.wv = load i32, ptr %10, align 4, !tbaa !10   ; 2 uses
  %i.ww = extractelement <2 x i32> %i.vb, i64 1
  %i.wx = mul nsw i32 %i.wv, %i.ww
  %i.wy = sext i32 %i.wx to i64
  %i.wz = mul i64 %i.wt, %i.wu                    ; 2 uses
  %i.xa = mul i64 %i.wz, %i.wy
  %invariant.gep1795 = getelementptr i8, ptr %i.wr, i64 %i.xa
  %i.xb = load i32, ptr %11, align 4, !tbaa !10   ; 2 uses
  %17 = extractelement <2 x i32> %.decomposed, i64 1
  %i.xc = mul nsw i32 %i.xb, %17
  %i.xd = sext i32 %i.xc to i64
  %invariant.gep1796 = getelementptr i8, ptr %invariant.gep1795, i64 %i.xd
  %i.xe = extractelement <2 x i32> %i.vb, i64 0
  %i.xf = mul nsw i32 %i.wv, %i.xe
  %i.xg = sext i32 %i.xf to i64
  %i.xh = mul i64 %i.wz, %i.xg
  %invariant.gep1800 = getelementptr i8, ptr %i.wr, i64 %i.xh
  %18 = extractelement <2 x i32> %.decomposed, i64 0
  %i.xi = mul nsw i32 %i.xb, %18
  %i.xj = sext i32 %i.xi to i64
  %invariant.gep1801 = getelementptr i8, ptr %invariant.gep1800, i64 %i.xj
  %i.xk = load i32, ptr %12, align 4, !tbaa !10   ; 3 uses
  %i.xl = icmp sgt i32 %i.xk, 0
  br i1 %i.xl, label %.noexc724.lr.ph.split.us, label %.noexc724.preheader

.noexc724.preheader:                              ; preds = %.noexc724.lr.ph
  %i.xm = or disjoint i32 %.0656.lcssa, 2
  %i.xn = add nsw i32 %i.wn, -2
  %i.xo = sub nsw i32 %i.xn, %.0656.lcssa
  %i.xp = and i32 %i.xo, -2
  %i.xq = add i32 %i.xm, %i.xp
  br label %.preheader1567

.noexc724.lr.ph.split.us:                         ; preds = %.noexc724.lr.ph
  %i.xr = load ptr, ptr %13, align 8, !tbaa !21
  %i.xs = add nsw i32 %i.xk, -1
  %i.xt = zext nneg i32 %i.xs to i64
  %i.xu = shl nuw nsw i64 %i.xt, 3
  %i.xv = zext nneg i32 %.0656.lcssa to i64
  %wide.trip.count2048 = zext nneg i32 %i.xk to i64
  br label %.noexc724.us

.noexc724.us:                                     ; preds = %._crit_edge1783.us, %.noexc724.lr.ph.split.us
  %indvars.iv2050 = phi i64 [ %indvars.iv.next2051, %._crit_edge1783.us ], [ %i.xv, %.noexc724.lr.ph.split.us ] ; 2 uses
  %.26611787.us = phi ptr [ %scevgep2046, %._crit_edge1783.us ], [ %.0659.lcssa, %.noexc724.lr.ph.split.us ] ; 2 uses
  %i.xw = phi <4 x i32> [ %i.yw, %._crit_edge1783.us ], [ %.lcssa1603, %.noexc724.lr.ph.split.us ]
  %i.xx = phi <4 x i32> [ %i.yv, %._crit_edge1783.us ], [ %.lcssa1604, %.noexc724.lr.ph.split.us ]
  %.reass1794.us = mul i64 %factor.op.mul1793, %indvars.iv2050 ; 2 uses
  %gep1797.us = getelementptr i8, ptr %invariant.gep1796, i64 %.reass1794.us
  %gep1802.us = getelementptr i8, ptr %invariant.gep1801, i64 %.reass1794.us
  br label %bb.i

bb.i:                                             ; preds = %.noexc724.us, %bb.i
  %indvars.iv2043 = phi i64 [ 0, %.noexc724.us ], [ %indvars.iv.next2044, %bb.i ] ; 2 uses
  %.36621780.us = phi ptr [ %.26611787.us, %.noexc724.us ], [ %i.yx, %bb.i ] ; 2 uses
  %i.xy = phi <4 x i32> [ %i.xw, %.noexc724.us ], [ %i.yw, %bb.i ]
  %i.xz = phi <4 x i32> [ %i.xx, %.noexc724.us ], [ %i.yv, %bb.i ]
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xr, i64 %indvars.iv2043
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !10
  %i.yc = sext i32 %i.yb to i64                   ; 2 uses
  %i.yd = getelementptr inbounds i8, ptr %gep1797.us, i64 %i.yc ; 2 uses
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !30
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 %i.ac
  %i.yg = load i8, ptr %i.yf, align 1, !tbaa !30
  %i.yh = insertelement <2 x i8> poison, i8 %i.ye, i64 0
  %i.yi = insertelement <2 x i8> %i.yh, i8 %i.yg, i64 1
  %i.yj = shufflevector <2 x i8> %i.yi, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.yk = sext <8 x i8> %i.yj to <8 x i16>
  %i.yl = getelementptr inbounds i8, ptr %gep1802.us, i64 %i.yc ; 2 uses
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !30
  %i.yn = getelementptr inbounds nuw i8, ptr %i.yl, i64 %i.ac
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !30
  %i.yp = insertelement <2 x i8> poison, i8 %i.ym, i64 0
  %i.yq = insertelement <2 x i8> %i.yp, i8 %i.yo, i64 1
  %i.yr = shufflevector <2 x i8> %i.yq, <2 x i8> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ys = sext <8 x i8> %i.yr to <8 x i16>
  %i.yt = load <8 x i8>, ptr %.36621780.us, align 1, !tbaa !30
  %i.yu = sext <8 x i8> %i.yt to <8 x i16>        ; 2 uses
  %i.yv = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.yk, <8 x i16> %i.yu, <4 x i32> %i.xz) ; 3 uses
  %i.yw = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ys, <8 x i16> %i.yu, <4 x i32> %i.xy) ; 3 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.36621780.us, i64 8
  %indvars.iv.next2044 = add nuw nsw i64 %indvars.iv2043, 1 ; 2 uses
  %exitcond2049.not = icmp eq i64 %indvars.iv.next2044, %wide.trip.count2048
  br i1 %exitcond2049.not, label %._crit_edge1783.us, label %bb.i, !llvm.loop !196

._crit_edge1783.us:                               ; preds = %bb.i
  %scevgep2045 = getelementptr i8, ptr %.26611787.us, i64 8
  %scevgep2046 = getelementptr i8, ptr %scevgep2045, i64 %i.xu ; 2 uses
  %indvars.iv.next2051 = add nuw nsw i64 %indvars.iv2050, 2 ; 3 uses
  %i.yy = trunc i64 %indvars.iv.next2051 to i32
  %i.yz = or i32 %i.yy, 1
  %i.za = icmp slt i32 %i.yz, %i.wn
  br i1 %i.za, label %.noexc724.us, label %.preheader1567.loopexit, !llvm.loop !197

.noexc728:                                        ; preds = %.noexc728.lr.ph, %._crit_edge1751
  %.06561763 = phi i32 [ 0, %.noexc728.lr.ph ], [ %i.aaz, %._crit_edge1751 ] ; 2 uses
  %.06591762 = phi ptr [ %i.vh, %.noexc728.lr.ph ], [ %.1660.lcssa, %._crit_edge1751 ] ; 5 uses
  %i.zb = phi <4 x i32> [ zeroinitializer, %.noexc728.lr.ph ], [ %.lcssa1597, %._crit_edge1751 ] ; 3 uses
  %i.zc = phi <4 x i32> [ zeroinitializer, %.noexc728.lr.ph ], [ %.lcssa1598, %._crit_edge1751 ] ; 3 uses
  %i.zd = phi <4 x i32> [ zeroinitializer, %.noexc728.lr.ph ], [ %.lcssa1599, %._crit_edge1751 ] ; 3 uses
  %i.ze = phi <4 x i32> [ zeroinitializer, %.noexc728.lr.ph ], [ %.lcssa1600, %._crit_edge1751 ] ; 3 uses
  %i.zf = sdiv i32 %.06561763, %i.vk
  %i.zg = sext i32 %i.zf to i64
  %.reass1771 = mul i64 %factor.op.mul1770, %i.zg ; 2 uses
  %gep1774 = getelementptr i8, ptr %invariant.gep1773, i64 %.reass1771 ; 2 uses
  %gep1779 = getelementptr i8, ptr %invariant.gep1778, i64 %.reass1771 ; 2 uses
  br i1 %i.wi, label %.lr.ph1750, label %._crit_edge1751

.lr.ph1750:                                       ; preds = %.noexc728
  %i.zh = load ptr, ptr %13, align 8, !tbaa !21   ; 2 uses
  %i.zi = load i32, ptr %6, align 4, !tbaa !10
  %i.zj = icmp eq i32 %i.zi, 8
  br i1 %i.zj, label %.lr.ph1750.split.us, label %.lr.ph1750.split

.lr.ph1750.split.us:                              ; preds = %.lr.ph1750, %.lr.ph1750.split.us
  %indvars.iv2036 = phi i64 [ %indvars.iv.next2037, %.lr.ph1750.split.us ], [ 0, %.lr.ph1750 ] ; 2 uses
  %.16601748.us = phi ptr [ %i.aay, %.lr.ph1750.split.us ], [ %.06591762, %.lr.ph1750 ] ; 3 uses
  %i.zk = phi <4 x i32> [ %i.aax, %.lr.ph1750.split.us ], [ %i.zb, %.lr.ph1750 ]
  %i.zl = phi <4 x i32> [ %i.aav, %.lr.ph1750.split.us ], [ %i.zc, %.lr.ph1750 ]
  %i.zm = phi <4 x i32> [ %i.aas, %.lr.ph1750.split.us ], [ %i.zd, %.lr.ph1750 ]
  %i.zn = phi <4 x i32> [ %i.aaq, %.lr.ph1750.split.us ], [ %i.ze, %.lr.ph1750 ]
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv2036
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !10
  %i.zq = sext i32 %i.zp to i64                   ; 2 uses
  %i.zr = getelementptr inbounds i8, ptr %gep1774, i64 %i.zq
  %i.zs = getelementptr inbounds i8, ptr %gep1779, i64 %i.zq
  %i.zt = load <8 x i8>, ptr %i.zr, align 1, !tbaa !30
  %i.zu = load <8 x i8>, ptr %i.zs, align 1, !tbaa !30
  %i.zv = sext <8 x i8> %i.zt to <8 x i16>        ; 4 uses
  %i.zw = sext <8 x i8> %i.zu to <8 x i16>        ; 4 uses
  %i.zx = load <16 x i8>, ptr %.16601748.us, align 16, !tbaa !30 ; 3 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %.16601748.us, i64 16
  %i.zz = load <16 x i8>, ptr %i.zy, align 16, !tbaa !30 ; 3 uses
  %.lobit.i760.us = ashr <16 x i8> %i.zx, splat (i8 7) ; 2 uses
  %.lobit.i759.us = ashr <16 x i8> %i.zz, splat (i8 7) ; 2 uses
  %i.aaa = shufflevector <16 x i8> %i.zx, <16 x i8> %.lobit.i760.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aab = shufflevector <16 x i8> %i.zx, <16 x i8> %.lobit.i760.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aac = shufflevector <16 x i8> %i.zz, <16 x i8> %.lobit.i759.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aad = shufflevector <16 x i8> %i.zz, <16 x i8> %.lobit.i759.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aae = shufflevector <8 x i16> %i.zv, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aaf = bitcast <16 x i8> %i.aaa to <8 x i16>  ; 2 uses
  %i.aag = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aae, <8 x i16> %i.aaf, <4 x i32> %i.zn)
  %i.aah = shufflevector <8 x i16> %i.zw, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.aai = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aah, <8 x i16> %i.aaf, <4 x i32> %i.zm)
  %i.aaj = shufflevector <8 x i16> %i.zv, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aak = bitcast <16 x i8> %i.aab to <8 x i16>  ; 2 uses
  %i.aal = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aaj, <8 x i16> %i.aak, <4 x i32> %i.zl)
  %i.aam = shufflevector <8 x i16> %i.zw, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.aan = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aam, <8 x i16> %i.aak, <4 x i32> %i.zk)
  %i.aao = shufflevector <8 x i16> %i.zv, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aap = bitcast <16 x i8> %i.aac to <8 x i16>  ; 2 uses
  %i.aaq = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aao, <8 x i16> %i.aap, <4 x i32> %i.aag) ; 2 uses
  %i.aar = shufflevector <8 x i16> %i.zw, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aas = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aar, <8 x i16> %i.aap, <4 x i32> %i.aai) ; 2 uses
  %i.aat = shufflevector <8 x i16> %i.zv, <8 x i16> poison, <8 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aau = bitcast <16 x i8> %i.aad to <8 x i16>  ; 2 uses
  %i.aav = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aat, <8 x i16> %i.aau, <4 x i32> %i.aal) ; 2 uses
  %i.aaw = shufflevector <8 x i16> %i.zw, <8 x i16> poison, <8 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aax = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aaw, <8 x i16> %i.aau, <4 x i32> %i.aan) ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %.16601748.us, i64 32
  %indvars.iv.next2037 = add nuw nsw i64 %indvars.iv2036, 1 ; 2 uses
  %exitcond2042.not = icmp eq i64 %indvars.iv.next2037, %wide.trip.count2041
  br i1 %exitcond2042.not, label %._crit_edge1751.loopexit, label %.lr.ph1750.split.us, !llvm.loop !198

._crit_edge1751.loopexit:                         ; preds = %.lr.ph1750.split.us
  %scevgep2038 = getelementptr i8, ptr %.06591762, i64 32
  %scevgep2039 = getelementptr i8, ptr %scevgep2038, i64 %i.wl
  br label %._crit_edge1751

._crit_edge1751.loopexit1927:                     ; preds = %.lr.ph1750.split
  %scevgep2031 = getelementptr i8, ptr %.06591762, i64 32
  %scevgep2032 = getelementptr i8, ptr %scevgep2031, i64 %i.wl
  br label %._crit_edge1751

._crit_edge1751:                                  ; preds = %._crit_edge1751.loopexit1927, %._crit_edge1751.loopexit, %.noexc728
  %.lcssa1600 = phi <4 x i32> [ %i.ze, %.noexc728 ], [ %i.aaq, %._crit_edge1751.loopexit ], [ %i.aec, %._crit_edge1751.loopexit1927 ] ; 2 uses
  %.lcssa1599 = phi <4 x i32> [ %i.zd, %.noexc728 ], [ %i.aas, %._crit_edge1751.loopexit ], [ %i.aee, %._crit_edge1751.loopexit1927 ] ; 2 uses
  %.lcssa1598 = phi <4 x i32> [ %i.zc, %.noexc728 ], [ %i.aav, %._crit_edge1751.loopexit ], [ %i.aeh, %._crit_edge1751.loopexit1927 ] ; 2 uses
  %.lcssa1597 = phi <4 x i32> [ %i.zb, %.noexc728 ], [ %i.aax, %._crit_edge1751.loopexit ], [ %i.aej, %._crit_edge1751.loopexit1927 ] ; 2 uses
  %.1660.lcssa = phi ptr [ %.06591762, %.noexc728 ], [ %scevgep2039, %._crit_edge1751.loopexit ], [ %scevgep2032, %._crit_edge1751.loopexit1927 ] ; 2 uses
  %i.aaz = add nuw nsw i32 %.06561763, 8          ; 2 uses
  %i.aba = or disjoint i32 %i.aaz, 7
  %i.abb = icmp slt i32 %i.aba, %i.vi
  br i1 %i.abb, label %.noexc728, label %.preheader1568.loopexit, !llvm.loop !199

.lr.ph1750.split:                                 ; preds = %.lr.ph1750, %.lr.ph1750.split
  %indvars.iv2029 = phi i64 [ %indvars.iv.next2030, %.lr.ph1750.split ], [ 0, %.lr.ph1750 ] ; 2 uses
  %.16601748 = phi ptr [ %i.aek, %.lr.ph1750.split ], [ %.06591762, %.lr.ph1750 ] ; 3 uses
  %i.abc = phi <4 x i32> [ %i.aej, %.lr.ph1750.split ], [ %i.zb, %.lr.ph1750 ]
  %i.abd = phi <4 x i32> [ %i.aeh, %.lr.ph1750.split ], [ %i.zc, %.lr.ph1750 ]
  %i.abe = phi <4 x i32> [ %i.aee, %.lr.ph1750.split ], [ %i.zd, %.lr.ph1750 ]
  %i.abf = phi <4 x i32> [ %i.aec, %.lr.ph1750.split ], [ %i.ze, %.lr.ph1750 ]
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv2029
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !10
  %i.abi = sext i32 %i.abh to i64                 ; 2 uses
  %i.abj = getelementptr inbounds i8, ptr %gep1774, i64 %i.abi ; 8 uses
  %i.abk = getelementptr inbounds i8, ptr %gep1779, i64 %i.abi ; 8 uses
  %i.abl = load i8, ptr %i.abj, align 1, !tbaa !30
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.ac
  %i.abn = load i8, ptr %i.abm, align 1, !tbaa !30
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.be
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !30
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.bf
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !30
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.bg
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !30
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.bh
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !30
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.bi
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !30
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abj, i64 %i.bj
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !30
  %i.aca = insertelement <16 x i8> poison, i8 %i.abl, i64 0
  %i.acb = insertelement <16 x i8> %i.aca, i8 %i.abn, i64 1
  %i.acc = insertelement <16 x i8> %i.acb, i8 %i.abp, i64 2
  %i.acd = insertelement <16 x i8> %i.acc, i8 %i.abr, i64 3
  %i.ace = insertelement <16 x i8> %i.acd, i8 %i.abt, i64 4
  %i.acf = insertelement <16 x i8> %i.ace, i8 %i.abv, i64 5
  %i.acg = insertelement <16 x i8> %i.acf, i8 %i.abx, i64 6
  %i.ach = insertelement <16 x i8> %i.acg, i8 %i.abz, i64 7
  %i.aci = load i8, ptr %i.abk, align 1, !tbaa !30
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.ac
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !30
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.be
  %i.acm = load i8, ptr %i.acl, align 1, !tbaa !30
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.bf
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !30
  %i.acp = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.bg
  %i.acq = load i8, ptr %i.acp, align 1, !tbaa !30
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.bh
  %i.acs = load i8, ptr %i.acr, align 1, !tbaa !30
  %i.act = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.bi
  %i.acu = load i8, ptr %i.act, align 1, !tbaa !30
  %i.acv = getelementptr inbounds nuw i8, ptr %i.abk, i64 %i.bj
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !30
  %i.acx = insertelement <16 x i8> poison, i8 %i.aci, i64 0
  %i.acy = insertelement <16 x i8> %i.acx, i8 %i.ack, i64 1
  %i.acz = insertelement <16 x i8> %i.acy, i8 %i.acm, i64 2
  %i.ada = insertelement <16 x i8> %i.acz, i8 %i.aco, i64 3
  %i.adb = insertelement <16 x i8> %i.ada, i8 %i.acq, i64 4
  %i.adc = insertelement <16 x i8> %i.adb, i8 %i.acs, i64 5
  %i.add = insertelement <16 x i8> %i.adc, i8 %i.acu, i64 6
  %i.ade = insertelement <16 x i8> %i.add, i8 %i.acw, i64 7
  %i.adf = shufflevector <16 x i8> %i.ach, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adg = sext <8 x i8> %i.adf to <8 x i16>      ; 4 uses
  %i.adh = shufflevector <16 x i8> %i.ade, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.adi = sext <8 x i8> %i.adh to <8 x i16>      ; 4 uses
  %i.adj = load <16 x i8>, ptr %.16601748, align 16, !tbaa !30 ; 3 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.16601748, i64 16
  %i.adl = load <16 x i8>, ptr %i.adk, align 16, !tbaa !30 ; 3 uses
  %.lobit.i760 = ashr <16 x i8> %i.adj, splat (i8 7) ; 2 uses
  %.lobit.i759 = ashr <16 x i8> %i.adl, splat (i8 7) ; 2 uses
  %i.adm = shufflevector <16 x i8> %i.adj, <16 x i8> %.lobit.i760, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.adn = shufflevector <16 x i8> %i.adj, <16 x i8> %.lobit.i760, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ado = shufflevector <16 x i8> %i.adl, <16 x i8> %.lobit.i759, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.adp = shufflevector <16 x i8> %i.adl, <16 x i8> %.lobit.i759, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.adq = shufflevector <8 x i16> %i.adg, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.adr = bitcast <16 x i8> %i.adm to <8 x i16>  ; 2 uses
  %i.ads = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.adq, <8 x i16> %i.adr, <4 x i32> %i.abf)
  %i.adt = shufflevector <8 x i16> %i.adi, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.adu = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.adt, <8 x i16> %i.adr, <4 x i32> %i.abe)
  %i.adv = shufflevector <8 x i16> %i.adg, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.adw = bitcast <16 x i8> %i.adn to <8 x i16>  ; 2 uses
  %i.adx = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.adv, <8 x i16> %i.adw, <4 x i32> %i.abd)
  %i.ady = shufflevector <8 x i16> %i.adi, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.adz = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ady, <8 x i16> %i.adw, <4 x i32> %i.abc)
  %i.aea = shufflevector <8 x i16> %i.adg, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aeb = bitcast <16 x i8> %i.ado to <8 x i16>  ; 2 uses
  %i.aec = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aea, <8 x i16> %i.aeb, <4 x i32> %i.ads) ; 2 uses
  %i.aed = shufflevector <8 x i16> %i.adi, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.aee = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aed, <8 x i16> %i.aeb, <4 x i32> %i.adu) ; 2 uses
  %i.aef = shufflevector <8 x i16> %i.adg, <8 x i16> poison, <8 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aeg = bitcast <16 x i8> %i.adp to <8 x i16>  ; 2 uses
  %i.aeh = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aef, <8 x i16> %i.aeg, <4 x i32> %i.adx) ; 2 uses
  %i.aei = shufflevector <8 x i16> %i.adi, <8 x i16> poison, <8 x i32> <i32 6, i32 7, i32 6, i32 7, i32 6, i32 7, i32 6, i32 7>
  %i.aej = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.aei, <8 x i16> %i.aeg, <4 x i32> %i.adz) ; 2 uses
  %i.aek = getelementptr inbounds nuw i8, ptr %.16601748, i64 32
  %indvars.iv.next2030 = add nuw nsw i64 %indvars.iv2029, 1 ; 2 uses
  %exitcond2035.not = icmp eq i64 %indvars.iv.next2030, %wide.trip.count2034
  br i1 %exitcond2035.not, label %._crit_edge1751.loopexit1927, label %.lr.ph1750.split, !llvm.loop !198

.preheader1567.loopexit:                          ; preds = %._crit_edge1783.us
  %i.ael = trunc nuw i64 %indvars.iv.next2051 to i32
  br label %.preheader1567

.preheader1567:                                   ; preds = %.noexc724.preheader, %.preheader1567.loopexit, %.preheader1568
  %.lcssa1608 = phi <4 x i32> [ %.lcssa1604, %.preheader1568 ], [ %i.yv, %.preheader1567.loopexit ], [ %.lcssa1604, %.noexc724.preheader ] ; 3 uses
  %.lcssa1607 = phi <4 x i32> [ %.lcssa1603, %.preheader1568 ], [ %i.yw, %.preheader1567.loopexit ], [ %.lcssa1603, %.noexc724.preheader ] ; 3 uses
  %.2661.lcssa = phi ptr [ %.0659.lcssa, %.preheader1568 ], [ %scevgep2046, %.preheader1567.loopexit ], [ %.0659.lcssa, %.noexc724.preheader ]
  %.1657.lcssa = phi i32 [ %.0656.lcssa, %.preheader1568 ], [ %i.ael, %.preheader1567.loopexit ], [ %i.xq, %.noexc724.preheader ] ; 2 uses
  %i.aem = icmp slt i32 %.1657.lcssa, %i.wn
  br i1 %i.aem, label %.noexc720.lr.ph, label %._crit_edge1816

.noexc720.lr.ph:                                  ; preds = %.preheader1567
  %i.aen = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !228
  %i.aeo = load ptr, ptr %5, align 8, !tbaa !28, !noalias !228 ; 2 uses
  %i.aep = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !228
  %i.aeq = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !228 ; 2 uses
  %factor.op.mul1819 = mul i64 %i.aep, %i.aeq
  %i.aer = sext i32 %i.aen to i64
  %i.aes = load i32, ptr %10, align 4, !tbaa !10  ; 2 uses
  %i.aet = extractelement <2 x i32> %i.vb, i64 1
  %i.aeu = mul nsw i32 %i.aes, %i.aet
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = mul i64 %i.aeq, %i.aer                 ; 2 uses
  %i.aex = mul i64 %i.aew, %i.aev
  %invariant.gep1821 = getelementptr i8, ptr %i.aeo, i64 %i.aex
  %i.aey = load i32, ptr %11, align 4, !tbaa !10  ; 2 uses
  %19 = extractelement <2 x i32> %.decomposed, i64 1
  %i.aez = mul nsw i32 %i.aey, %19
  %i.afa = sext i32 %i.aez to i64
  %invariant.gep1822 = getelementptr i8, ptr %invariant.gep1821, i64 %i.afa
  %i.afb = extractelement <2 x i32> %i.vb, i64 0
  %i.afc = mul nsw i32 %i.aes, %i.afb
  %i.afd = sext i32 %i.afc to i64
  %i.afe = mul i64 %i.aew, %i.afd
  %invariant.gep1826 = getelementptr i8, ptr %i.aeo, i64 %i.afe
  %20 = extractelement <2 x i32> %.decomposed, i64 0
  %i.aff = mul nsw i32 %i.aey, %20
  %i.afg = sext i32 %i.aff to i64
  %invariant.gep1827 = getelementptr i8, ptr %invariant.gep1826, i64 %i.afg
  %i.afh = load i32, ptr %12, align 4, !tbaa !10  ; 3 uses
  %i.afi = icmp sgt i32 %i.afh, 0
  br i1 %i.afi, label %.noexc720.lr.ph.split.us, label %._crit_edge1816

.noexc720.lr.ph.split.us:                         ; preds = %.noexc720.lr.ph
  %i.afj = load ptr, ptr %13, align 8, !tbaa !21
  %i.afk = add nsw i32 %i.afh, -1
  %i.afl = zext nneg i32 %i.afk to i64
  %i.afm = shl nuw nsw i64 %i.afl, 2
  %i.afn = zext i32 %.1657.lcssa to i64
  %wide.trip.count2058 = zext nneg i32 %i.afh to i64
  br label %.noexc720.us

.noexc720.us:                                     ; preds = %._crit_edge1810.us, %.noexc720.lr.ph.split.us
  %indvars.iv2060 = phi i64 [ %indvars.iv.next2061, %._crit_edge1810.us ], [ %i.afn, %.noexc720.lr.ph.split.us ] ; 2 uses
  %.46631814.us = phi ptr [ %scevgep2056, %._crit_edge1810.us ], [ %.2661.lcssa, %.noexc720.lr.ph.split.us ] ; 2 uses
  %i.afo = phi <4 x i32> [ %i.agj, %._crit_edge1810.us ], [ %.lcssa1607, %.noexc720.lr.ph.split.us ]
  %i.afp = phi <4 x i32> [ %i.agi, %._crit_edge1810.us ], [ %.lcssa1608, %.noexc720.lr.ph.split.us ]
  %.reass1820.us = mul i64 %factor.op.mul1819, %indvars.iv2060 ; 2 uses
  %gep1823.us = getelementptr i8, ptr %invariant.gep1822, i64 %.reass1820.us
  %gep1828.us = getelementptr i8, ptr %invariant.gep1827, i64 %.reass1820.us
  br label %bb.j

bb.j:                                             ; preds = %.noexc720.us, %bb.j
  %indvars.iv2053 = phi i64 [ 0, %.noexc720.us ], [ %indvars.iv.next2054, %bb.j ] ; 2 uses
  %.56641807.us = phi ptr [ %.46631814.us, %.noexc720.us ], [ %i.agk, %bb.j ] ; 2 uses
  %i.afq = phi <4 x i32> [ %i.afo, %.noexc720.us ], [ %i.agj, %bb.j ]
  %i.afr = phi <4 x i32> [ %i.afp, %.noexc720.us ], [ %i.agi, %bb.j ]
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %indvars.iv2053
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !10
  %i.afu = sext i32 %i.aft to i64                 ; 2 uses
  %i.afv = getelementptr inbounds i8, ptr %gep1823.us, i64 %i.afu
  %i.afw = getelementptr inbounds i8, ptr %gep1828.us, i64 %i.afu
  %i.afx = load i8, ptr %i.afv, align 1, !tbaa !30
  %i.afy = sext i8 %i.afx to i16
  %i.afz = insertelement <8 x i16> poison, i16 %i.afy, i64 0
  %i.aga = shufflevector <8 x i16> %i.afz, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agb = load i8, ptr %i.afw, align 1, !tbaa !30
  %i.agc = sext i8 %i.agb to i16
  %i.agd = insertelement <8 x i16> poison, i16 %i.agc, i64 0
  %i.age = shufflevector <8 x i16> %i.agd, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.agf = load <8 x i8>, ptr %.56641807.us, align 1, !tbaa !30
  %i.agg = sext <8 x i8> %i.agf to <8 x i16>
  %i.agh = shufflevector <8 x i16> %i.agg, <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.agi = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.aga, <8 x i16> %i.agh, <4 x i32> %i.afr) ; 3 uses
  %i.agj = call <4 x i32> @llvm.x86.xop.vpmacswd(<8 x i16> %i.age, <8 x i16> %i.agh, <4 x i32> %i.afq) ; 3 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %.56641807.us, i64 4
  %indvars.iv.next2054 = add nuw nsw i64 %indvars.iv2053, 1 ; 2 uses
  %exitcond2059.not = icmp eq i64 %indvars.iv.next2054, %wide.trip.count2058
  br i1 %exitcond2059.not, label %._crit_edge1810.us, label %bb.j, !llvm.loop !202

._crit_edge1810.us:                               ; preds = %bb.j
  %scevgep2055 = getelementptr i8, ptr %.46631814.us, i64 4
  %scevgep2056 = getelementptr i8, ptr %scevgep2055, i64 %i.afm
  %indvars.iv.next2061 = add nuw nsw i64 %indvars.iv2060, 1 ; 2 uses
  %i.agl = trunc nuw i64 %indvars.iv.next2061 to i32
  %i.agm = icmp sgt i32 %i.wn, %i.agl
  br i1 %i.agm, label %.noexc720.us, label %._crit_edge1816, !llvm.loop !203

._crit_edge1816:                                  ; preds = %._crit_edge1810.us, %.noexc720.lr.ph, %.preheader1567
  %.lcssa1612 = phi <4 x i32> [ %.lcssa1608, %.preheader1567 ], [ %.lcssa1608, %.noexc720.lr.ph ], [ %i.agi, %._crit_edge1810.us ]
  %.lcssa1611 = phi <4 x i32> [ %.lcssa1607, %.preheader1567 ], [ %.lcssa1607, %.noexc720.lr.ph ], [ %i.agj, %._crit_edge1810.us ]
  %i.agn = add <4 x i32> %.lcssa1612, %.lcssa1602 ; 5 uses
  %i.ago = add <4 x i32> %.lcssa1611, %.lcssa1601 ; 5 uses
  %i.agp = load i32, ptr %7, align 4, !tbaa !10   ; 2 uses
  %i.agq = icmp eq i32 %i.agp, 4
  br i1 %i.agq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge1816
  store <4 x i32> %i.agn, ptr %.36481832, align 16, !tbaa !30
  %i.agr = getelementptr inbounds nuw i8, ptr %.36481832, i64 16
  store <4 x i32> %i.ago, ptr %i.agr, align 16, !tbaa !30
  %i.ags = getelementptr inbounds nuw i8, ptr %.36481832, i64 32
  %.pr1561 = load i32, ptr %7, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge1816
  %i.agt = phi i32 [ %.pr1561, %bb.k ], [ %i.agp, %._crit_edge1816 ]
  %.4649 = phi ptr [ %i.ags, %bb.k ], [ %.36481832, %._crit_edge1816 ] ; 6 uses
  %i.agu = icmp eq i32 %i.agt, 1
  br i1 %i.agu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.agv = shufflevector <4 x i32> %i.agn, <4 x i32> %i.ago, <2 x i32> <i32 0, i32 4>
  store <2 x i32> %i.agv, ptr %.4649, align 4, !tbaa !10
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %.4649, i64 %i.ag
  %i.agx = shufflevector <4 x i32> %i.agn, <4 x i32> %i.ago, <2 x i32> <i32 1, i32 5>
  store <2 x i32> %i.agx, ptr %i.agw, align 4, !tbaa !10
  %i.agy = getelementptr inbounds nuw i8, ptr %.4649, i64 %.idx1563
  %i.agz = shufflevector <4 x i32> %i.agn, <4 x i32> %i.ago, <2 x i32> <i32 2, i32 6>
  store <2 x i32> %i.agz, ptr %i.agy, align 4, !tbaa !10
  %i.aha = getelementptr inbounds nuw i8, ptr %.4649, i64 %.idx1564
  %i.ahb = shufflevector <4 x i32> %i.agn, <4 x i32> %i.ago, <2 x i32> <i32 3, i32 7>
  store <2 x i32> %i.ahb, ptr %i.aha, align 4, !tbaa !10
  %i.ahc = getelementptr inbounds nuw i8, ptr %.4649, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.5650 = phi ptr [ %i.ahc, %bb.m ], [ %.4649, %bb.l ] ; 2 uses
  %i.ahd = add nuw nsw i32 %.16661831, 2          ; 3 uses
  %i.ahe = or disjoint i32 %i.ahd, 1              ; 2 uses
  %i.ahf = icmp slt i32 %i.ahe, %i.ao
  br i1 %i.ahf, label %.noexc730, label %.preheader1571, !llvm.loop !204

.noexc716:                                        ; preds = %.noexc716.lr.ph, %bb.t
  %.61922 = phi ptr [ %.3648.lcssa, %.noexc716.lr.ph ], [ %.8, %bb.t ] ; 3 uses
  %.26671921 = phi i32 [ %.1666.lcssa, %.noexc716.lr.ph ], [ %i.asm, %bb.t ] ; 3 uses
  %i.ahg = sdiv i32 %.26671921, %i.x              ; 3 uses
  %i.ahh = srem i32 %.26671921, %i.x              ; 3 uses
  %i.ahi = load ptr, ptr %8, align 8, !tbaa !28, !noalias !229
  %i.ahj = load i64, ptr %i.q, align 8, !tbaa !19, !noalias !229
  %i.ahk = mul i64 %i.ahj, %i.ur
  %i.ahl = load i64, ptr %i.r, align 8, !tbaa !29, !noalias !229
  %i.ahm = mul i64 %i.ahk, %i.ahl
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahi, i64 %i.ahm ; 4 uses
  %i.aho = load i32, ptr %9, align 4, !tbaa !10   ; 11 uses
  %i.ahp = icmp sgt i32 %i.aho, 7
  br i1 %i.ahp, label %.noexc714.lr.ph, label %._crit_edge1851

.noexc714.lr.ph:                                  ; preds = %.noexc716
  %i.ahq = load i32, ptr %6, align 4, !tbaa !10   ; 3 uses
  %i.ahr = load i32, ptr %i.s, align 4, !tbaa !16, !noalias !230
  %i.ahs = load ptr, ptr %5, align 8, !tbaa !28, !noalias !230
  %i.aht = load i64, ptr %i.n, align 8, !tbaa !19, !noalias !230
  %i.ahu = load i64, ptr %i.t, align 8, !tbaa !29, !noalias !230 ; 2 uses
  %factor.op.mul1858 = mul i64 %i.aht, %i.ahu     ; 2 uses
  %i.ahv = sext i32 %i.ahr to i64
  %i.ahw = load i32, ptr %10, align 4, !tbaa !10
  %i.ahx = mul nsw i32 %i.ahw, %i.ahg
  %i.ahy = sext i32 %i.ahx to i64
  %i.ahz = mul i64 %i.ahu, %i.ahv
  %i.aia = mul i64 %i.ahz, %i.ahy
  %invariant.gep1860 = getelementptr i8, ptr %i.ahs, i64 %i.aia
  %i.aib = load i32, ptr %11, align 4, !tbaa !10
  %i.aic = mul i32 %i.ahq, %i.ahh
  %i.aid = mul i32 %i.aic, %i.aib
  %i.aie = sext i32 %i.aid to i64
  %invariant.gep1861 = getelementptr i8, ptr %invariant.gep1860, i64 %i.aie ; 2 uses
  %i.aif = load i32, ptr %12, align 4, !tbaa !10  ; 3 uses
  %i.aig = icmp sgt i32 %i.aif, 0
  br i1 %i.aig, label %.noexc714.lr.ph.split.us, label %.noexc714.preheader

.noexc714.preheader:                              ; preds = %.noexc714.lr.ph
  %i.aih = and i32 %i.aho, 2147483640
  br label %._crit_edge1851

.noexc714.lr.ph.split.us:                         ; preds = %.noexc714.lr.ph
  %i.aii = load ptr, ptr %13, align 8, !tbaa !21  ; 2 uses
  %i.aij = icmp eq i32 %i.ahq, 8
  %i.aik = add nsw i32 %i.aif, -1
  %i.ail = zext nneg i32 %i.aik to i64
  %i.aim = shl nuw nsw i64 %i.ail, 5              ; 2 uses
  %wide.trip.count2075 = zext nneg i32 %i.aif to i64 ; 2 uses
  br i1 %i.aij, label %.noexc714.us.us, label %.noexc714.us

.noexc714.us.us:                                  ; preds = %.noexc714.lr.ph.split.us, %._crit_edge1838.split.us.us.us
  %.06411850.us.us = phi i32 [ %i.ajx, %._crit_edge1838.split.us.us.us ], [ 0, %.noexc714.lr.ph.split.us ] ; 2 uses
  %.06421849.us.us = phi ptr [ %scevgep2073, %._crit_edge1838.split.us.us.us ], [ %i.ahn, %.noexc714.lr.ph.split.us ] ; 2 uses
  %i.ain = phi <4 x i32> [ %i.ajv, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.aio = phi <4 x i32> [ %i.ajs, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.aip = phi <4 x i32> [ %i.ajp, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.aiq = phi <4 x i32> [ %i.ajm, %._crit_edge1838.split.us.us.us ], [ zeroinitializer, %.noexc714.lr.ph.split.us ]
  %i.air = lshr exact i32 %.06411850.us.us, 3
  %i.ais = zext nneg i32 %i.air to i64
  %.reass1859.us.us = mul i64 %factor.op.mul1858, %i.ais
  %gep1862.us.us = getelementptr i8, ptr %invariant.gep1861, i64 %.reass1859.us.us
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.noexc714.us.us
  %indvars.iv2070 = phi i64 [ %indvars.iv.next2071, %bb.o ], [ 0, %.noexc714.us.us ] ; 2 uses
  %.16431835.us.us.us = phi ptr [ %i.ajw, %bb.o ], [ %.06421849.us.us, %.noexc714.us.us ] ; 3 uses
  %i.ait = phi <4 x i32> [ %i.ajv, %bb.o ], [ %i.ain, %.noexc714.us.us ]
  %i.aiu = phi <4 x i32> [ %i.ajs, %bb.o ], [ %i.aio, %.noexc714.us.us ]
  %i.aiv = phi <4 x i32> [ %i.ajp, %bb.o ], [ %i.aip, %.noexc714.us.us ]
  %i.aiw = phi <4 x i32> [ %i.ajm, %bb.o ], [ %i.aiq, %.noexc714.us.us ]
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aii, i64 %indvars.iv2070
  %i.aiy = load i32, ptr %i.aix, align 4, !tbaa !10
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds i8, ptr %gep1862.us.us, i64 %i.aiz
  %i.ajb = load <8 x i8>, ptr %i.aja, align 1, !tbaa !30
  %i.ajc = sext <8 x i8> %i.ajb to <8 x i16>      ; 4 uses
  %i.ajd = load <16 x i8>, ptr %.16431835.us.us.us, align 16, !tbaa !30 ; 3 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %.16431835.us.us.us, i64 16
  %i.ajf = load <16 x i8>, ptr %i.aje, align 16, !tbaa !30 ; 3 uses
  %.lobit.i762.us.us.us = ashr <16 x i8> %i.ajd, splat (i8 7) ; 2 uses
  %.lobit.i761.us.us.us = ashr <16 x i8> %i.ajf, splat (i8 7) ; 2 uses
  %i.ajg = shufflevector <16 x i8> %i.ajd, <16 x i8> %.lobit.i762.us.us.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ajh = shufflevector <16 x i8> %i.ajd, <16 x i8> %.lobit.i762.us.us.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.aji = shufflevector <16 x i8> %i.ajf, <16 x i8> %.lobit.i761.us.us.us, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ajj = shufflevector <16 x i8> %i.ajf, <16 x i8> %.lobit.i761.us.us.us, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ajk = shufflevector <8 x i16> %i.ajc, <8 x i16> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 1>
  %i.ajl = bitcast <16 x i8> %i.ajg to <8 x i16>
  %i.ajm = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ajk, <8 x i16> %i.ajl, <4 x i32> %i.aiw) ; 3 uses
  %i.ajn = shufflevector <8 x i16> %i.ajc, <8 x i16> poison, <8 x i32> <i32 2, i32 3, i32 2, i32 3, i32 2, i32 3, i32 2, i32 3>
  %i.ajo = bitcast <16 x i8> %i.ajh to <8 x i16>
  %i.ajp = call <4 x i32> @llvm.x86.xop.vpmadcswd(<8 x i16> %i.ajn, <8 x i16> %i.ajo, <4 x i32> %i.aiv) ; 3 uses
  %i.ajq = shufflevector <8 x i16> %i.ajc, <8 x i16> poison, <8 x i32> <i32 4, i32 5, i32 4, i32 5, i32 4, i32 5, i32 4, i32 5>
  %i.ajr = bitcast <16 x i8> %i.aji to <8 x i16>
end_hunk_4
