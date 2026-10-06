Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_avx?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local17avx_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !9    ; 2 uses
  %i.b = fneg float %i.a
  %spec.select = select i1 %5, float %i.b, float %i.a
  %i.c = insertelement <8 x float> poison, float %spec.select, i64 0
  %i.d = shufflevector <8 x float> %i.c, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 4 uses
  %i.l = add nuw i32 %4, 15
  %i.m = and i32 %i.l, 8
  %lcmp.mod.not.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = load <8 x float>, ptr %i.i, align 32, !tbaa !9
  %i.o = load <8 x float>, ptr %i.g, align 32, !tbaa !9
  %i.p = load <8 x float>, ptr %i.k, align 32, !tbaa !9
  %i.q = fadd <8 x float> %i.n, %i.o
  %i.r = fmul <8 x float> %i.d, %i.q
  %i.s = fadd <8 x float> %i.p, %i.r
  store <8 x float> %i.s, ptr %i.k, align 32, !tbaa !9
  %i.t = add nsw i32 %4, -8
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.02128.unr = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.02227.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.02326.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.02425.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.x = icmp ult i32 %4, 9
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02128 = phi ptr [ %i.ao, %.lr.ph ], [ %.02128.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02227 = phi i32 [ %i.an, %.lr.ph ], [ %.02227.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.02326 = phi ptr [ %i.aq, %.lr.ph ], [ %.02326.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02425 = phi ptr [ %i.ap, %.lr.ph ], [ %.02425.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.y = load <8 x float>, ptr %.02425, align 32, !tbaa !9
  %i.z = load <8 x float>, ptr %.02326, align 32, !tbaa !9
  %i.aa = load <8 x float>, ptr %.02128, align 32, !tbaa !9
  %i.ab = fadd <8 x float> %i.y, %i.z
  %i.ac = fmul <8 x float> %i.d, %i.ab
  %i.ad = fadd <8 x float> %i.aa, %i.ac
  store <8 x float> %i.ad, ptr %.02128, align 32, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.02128, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02425, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %.02326, i64 32
  %i.ah = load <8 x float>, ptr %i.af, align 32, !tbaa !9
  %i.ai = load <8 x float>, ptr %i.ag, align 32, !tbaa !9
  %i.aj = load <8 x float>, ptr %i.ae, align 32, !tbaa !9
  %i.ak = fadd <8 x float> %i.ah, %i.ai
  %i.al = fmul <8 x float> %i.d, %i.ak
  %i.am = fadd <8 x float> %i.aj, %i.al
  store <8 x float> %i.am, ptr %i.ae, align 32, !tbaa !9
  %i.an = add nsw i32 %.02227, -16
  %i.ao = getelementptr inbounds nuw i8, ptr %.02128, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.02425, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.02326, i64 64
  %i.ar = icmp sgt i32 %.02227, 16
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local20avx_irv_vert_times_KEfPKNS_8line_bufEj(float noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <8 x float> poison, float %0, i64 0
  %i.b = shufflevector <8 x float> %i.a, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.i.preheader, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.f = add nsw i32 %2, -1
  %i.g = lshr i32 %i.f, 3
  %i.h = add nuw nsw i32 %i.g, 1
  %xtraiter = and i32 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.k, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = load <8 x float>, ptr %.09.i.prol, align 32, !tbaa !9
  %i.j = fmul <8 x float> %i.b, %i.i
  store <8 x float> %i.j, ptr %.09.i.prol, align 32, !tbaa !9
  %i.k = add nsw i32 %.078.i.prol, -8             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !23

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.078.i.unr = phi i32 [ %2, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.m = icmp ult i32 %2, 25
  br i1 %i.m, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.y, %.lr.ph.i ], [ %.078.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.n = load <8 x float>, ptr %.09.i, align 32, !tbaa !9
  %i.o = fmul <8 x float> %i.b, %i.n
  store <8 x float> %i.o, ptr %.09.i, align 32, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.q = load <8 x float>, ptr %i.p, align 32, !tbaa !9
  %i.r = fmul <8 x float> %i.b, %i.q
  store <8 x float> %i.r, ptr %i.p, align 32, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %i.t = load <8 x float>, ptr %i.s, align 32, !tbaa !9
  %i.u = fmul <8 x float> %i.b, %i.t
  store <8 x float> %i.u, ptr %i.s, align 32, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i, i64 96 ; 2 uses
  %i.w = load <8 x float>, ptr %i.v, align 32, !tbaa !9
  %i.x = fmul <8 x float> %i.b, %i.w
  store <8 x float> %i.x, ptr %i.v, align 32, !tbaa !9
  %i.y = add nsw i32 %.078.i, -32
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i, i64 128
  %i.aa = icmp sgt i32 %.078.i, 32
  br i1 %i.aa, label %.lr.ph.i, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, !llvm.loop !0

_ZN4ojph5localL18avx_multiply_constEPffi.exit:    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16avx_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph.i.preheader, label %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 3 uses
  %.pn94 = select i1 %5, ptr %2, ptr %1
  %.in93 = getelementptr inbounds nuw i8, ptr %.pn94, i64 16
  %i.e = load ptr, ptr %.in93, align 8, !tbaa !9  ; 3 uses
  %. = select i1 %5, ptr %1, ptr %2
  %.in = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.f = load ptr, ptr %.in, align 8, !tbaa !9    ; 3 uses
  %6 = add nuw i32 %4, 31
  %7 = and i32 %6, 16
  %lcmp.mod.not.not = icmp eq i32 %7, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %8 = load <16 x float>, ptr %i.d, align 32, !tbaa !9 ; 2 uses
  %9 = shufflevector <16 x float> %8, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %10 = shufflevector <16 x float> %8, <16 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %11 = shufflevector <8 x float> %9, <8 x float> %10, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %12 = shufflevector <8 x float> %9, <8 x float> %10, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %11, ptr %i.f, align 32, !tbaa !9
  store <8 x float> %12, ptr %i.e, align 32, !tbaa !9
  %13 = add nsw i32 %4, -16
  %14 = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %15 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %16 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.024.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %15, %.lr.ph.i.prol ]
  %.01823.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %16, %.lr.ph.i.prol ]
  %.01922.i.unr = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %14, %.lr.ph.i.prol ]
  %.02021.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %13, %.lr.ph.i.prol ]
  %17 = icmp ult i32 %4, 17
  br i1 %17, label %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.024.i = phi ptr [ %i.n, %.lr.ph.i ], [ %.024.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01823.i = phi ptr [ %i.o, %.lr.ph.i ], [ %.01823.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01922.i = phi ptr [ %i.m, %.lr.ph.i ], [ %.01922.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.02021.i = phi i32 [ %i.l, %.lr.ph.i ], [ %.02021.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %18 = load <16 x float>, ptr %.01922.i, align 32, !tbaa !9 ; 2 uses
  %19 = shufflevector <16 x float> %18, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %20 = shufflevector <16 x float> %18, <16 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %21 = shufflevector <8 x float> %19, <8 x float> %20, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %22 = shufflevector <8 x float> %19, <8 x float> %20, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %21, ptr %.024.i, align 32, !tbaa !9
  store <8 x float> %22, ptr %.01823.i, align 32, !tbaa !9
  %23 = getelementptr inbounds nuw i8, ptr %.01922.i, i64 64
  %24 = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %.01823.i, i64 32
  %25 = load <16 x float>, ptr %23, align 32, !tbaa !9 ; 2 uses
  %i.h = shufflevector <16 x float> %25, <16 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %i.i = shufflevector <16 x float> %25, <16 x float> poison, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.j = shufflevector <8 x float> %i.h, <8 x float> %i.i, <8 x i32> <i32 0, i32 2, i32 8, i32 10, i32 4, i32 6, i32 12, i32 14>
  %i.k = shufflevector <8 x float> %i.h, <8 x float> %i.i, <8 x i32> <i32 1, i32 3, i32 9, i32 11, i32 5, i32 7, i32 13, i32 15>
  store <8 x float> %i.j, ptr %24, align 32, !tbaa !9
  store <8 x float> %i.k, ptr %i.g, align 32, !tbaa !9
  %i.l = add nsw i32 %.02021.i, -32
  %i.m = getelementptr inbounds nuw i8, ptr %.01922.i, i64 128
  %i.n = getelementptr inbounds nuw i8, ptr %.024.i, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %.01823.i, i64 64
  %26 = icmp sgt i32 %.02021.i, 32
  br i1 %26, label %.lr.ph.i, label %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit, !llvm.loop !24

_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !9    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = zext i1 %5 to i32
  %i.u = add i32 %4, %i.t
  %i.v = lshr i32 %i.u, 1                         ; 2 uses
  %not. = xor i1 %5, true
  %i.w = zext i1 %not. to i32
  %i.x = add i32 %4, %i.w
  %i.y = lshr i32 %i.x, 1                         ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !18   ; 2 uses
  %.not111 = icmp eq i8 %i.aa, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = zext i8 %i.aa to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit
  %.085.lcssa = phi i32 [ %i.y, %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit ], [ %.084114, %.loopexit ] ; 5 uses
  %.084.lcssa = phi i32 [ %i.v, %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit ], [ %.085113, %.loopexit ] ; 5 uses
  %.083.lcssa = phi ptr [ %i.s, %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit ], [ %.082116, %.loopexit ] ; 2 uses
  %.082.lcssa = phi ptr [ %i.q, %_ZN4ojph5localL18avx_deinterleave32EPfS1_S1_i.exit ], [ %.083115, %.loopexit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !19 ; 2 uses
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = insertelement <8 x float> poison, float %i.af, i64 0
  %i.ah = shufflevector <8 x float> %i.ag, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %.not100 = icmp eq i32 %.084.lcssa, 0
  br i1 %.not100, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %._crit_edge
  %i.ai = add nsw i32 %.084.lcssa, -1
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = add nuw nsw i32 %i.aj, 1
  %xtraiter133.a = and i32 %i.ak, 3               ; 2 uses
  %lcmp.mod134.not.a = icmp eq i32 %xtraiter133.a, 0
  br i1 %lcmp.mod134.not.a, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95.prol
  %.09.i.prol = phi ptr [ %i.ao, %.lr.ph.i95.prol ], [ %.083.lcssa, %.lr.ph.i95.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.an, %.lr.ph.i95.prol ], [ %.084.lcssa, %.lr.ph.i95.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.i95.preheader ]
  %i.al = load <8 x float>, ptr %.09.i.prol, align 32, !tbaa !9
  %i.am = fmul <8 x float> %i.ah, %i.al
  store <8 x float> %i.am, ptr %.09.i.prol, align 32, !tbaa !9
  %i.an = add nsw i32 %.078.i.prol, -8            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 32 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter133.a
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !25

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.i95.preheader
  %.09.i.unr = phi ptr [ %.083.lcssa, %.lr.ph.i95.preheader ], [ %i.ao, %.lr.ph.i95.prol ]
  %.078.i.unr = phi i32 [ %.084.lcssa, %.lr.ph.i95.preheader ], [ %i.an, %.lr.ph.i95.prol ]
  %i.ap = icmp ult i32 %.084.lcssa, 25
  br i1 %i.ap, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.09.i = phi ptr [ %i.bc, %.lr.ph.i95 ], [ %.09.i.unr, %.lr.ph.i95.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.bb, %.lr.ph.i95 ], [ %.078.i.unr, %.lr.ph.i95.prol.loopexit ] ; 2 uses
  %i.aq = load <8 x float>, ptr %.09.i, align 32, !tbaa !9
  %i.ar = fmul <8 x float> %i.ah, %i.aq
  store <8 x float> %i.ar, ptr %.09.i, align 32, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.at = load <8 x float>, ptr %i.as, align 32, !tbaa !9
  %i.au = fmul <8 x float> %i.ah, %i.at
  store <8 x float> %i.au, ptr %i.as, align 32, !tbaa !9
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i, i64 64 ; 2 uses
  %i.aw = load <8 x float>, ptr %i.av, align 32, !tbaa !9
  %i.ax = fmul <8 x float> %i.ah, %i.aw
  store <8 x float> %i.ax, ptr %i.av, align 32, !tbaa !9
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i, i64 96 ; 2 uses
  %i.az = load <8 x float>, ptr %i.ay, align 32, !tbaa !9
  %i.ba = fmul <8 x float> %i.ah, %i.az
  store <8 x float> %i.ba, ptr %i.ay, align 32, !tbaa !9
  %i.bb = add nsw i32 %.078.i, -32
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i, i64 128
  %i.bd = icmp sgt i32 %.078.i, 32
  br i1 %i.bd, label %.lr.ph.i95, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit, !llvm.loop !0

_ZN4ojph5localL18avx_multiply_constEPffi.exit:    ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %._crit_edge
  %i.be = insertelement <8 x float> poison, float %i.ae, i64 0
  %i.bf = shufflevector <8 x float> %i.be, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %.not101 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not101, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99, label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %_ZN4ojph5localL18avx_multiply_constEPffi.exit
  %i.bg = add nsw i32 %.085.lcssa, -1
  %i.bh = lshr i32 %i.bg, 3
  %i.bi = add nuw nsw i32 %i.bh, 1
  %xtraiter135 = and i32 %i.bi, 3                 ; 2 uses
  %lcmp.mod136.not = icmp eq i32 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol

.lr.ph.i96.prol:                                  ; preds = %.lr.ph.i96.preheader, %.lr.ph.i96.prol
  %.09.i97.prol = phi ptr [ %i.bm, %.lr.ph.i96.prol ], [ %.082.lcssa, %.lr.ph.i96.preheader ] ; 3 uses
  %.078.i98.prol = phi i32 [ %i.bl, %.lr.ph.i96.prol ], [ %.085.lcssa, %.lr.ph.i96.preheader ]
  %prol.iter137 = phi i32 [ %prol.iter137.next, %.lr.ph.i96.prol ], [ 0, %.lr.ph.i96.preheader ]
  %i.bj = load <8 x float>, ptr %.09.i97.prol, align 32, !tbaa !9
  %i.bk = fmul <8 x float> %i.bf, %i.bj
  store <8 x float> %i.bk, ptr %.09.i97.prol, align 32, !tbaa !9
  %i.bl = add nsw i32 %.078.i98.prol, -8          ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i97.prol, i64 32 ; 2 uses
  %prol.iter137.next = add i32 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i32 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol, !llvm.loop !26

.lr.ph.i96.prol.loopexit:                         ; preds = %.lr.ph.i96.prol, %.lr.ph.i96.preheader
  %.09.i97.unr = phi ptr [ %.082.lcssa, %.lr.ph.i96.preheader ], [ %i.bm, %.lr.ph.i96.prol ]
  %.078.i98.unr = phi i32 [ %.085.lcssa, %.lr.ph.i96.preheader ], [ %i.bl, %.lr.ph.i96.prol ]
  %i.bn = icmp ult i32 %.085.lcssa, 25
  br i1 %i.bn, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96
  %.09.i97 = phi ptr [ %i.ca, %.lr.ph.i96 ], [ %.09.i97.unr, %.lr.ph.i96.prol.loopexit ] ; 6 uses
  %.078.i98 = phi i32 [ %i.bz, %.lr.ph.i96 ], [ %.078.i98.unr, %.lr.ph.i96.prol.loopexit ] ; 2 uses
  %i.bo = load <8 x float>, ptr %.09.i97, align 32, !tbaa !9
  %i.bp = fmul <8 x float> %i.bf, %i.bo
  store <8 x float> %i.bp, ptr %.09.i97, align 32, !tbaa !9
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i97, i64 32 ; 2 uses
  %i.br = load <8 x float>, ptr %i.bq, align 32, !tbaa !9
  %i.bs = fmul <8 x float> %i.bf, %i.br
  store <8 x float> %i.bs, ptr %i.bq, align 32, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %.09.i97, i64 64 ; 2 uses
  %i.bu = load <8 x float>, ptr %i.bt, align 32, !tbaa !9
  %i.bv = fmul <8 x float> %i.bf, %i.bu
  store <8 x float> %i.bv, ptr %i.bt, align 32, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %.09.i97, i64 96 ; 2 uses
  %i.bx = load <8 x float>, ptr %i.bw, align 32, !tbaa !9
  %i.by = fmul <8 x float> %i.bf, %i.bx
  store <8 x float> %i.by, ptr %i.bw, align 32, !tbaa !9
  %i.bz = add nsw i32 %.078.i98, -32
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i97, i64 128
  %i.cb = icmp sgt i32 %.078.i98, 32
  br i1 %i.cb, label %.lr.ph.i96, label %_ZN4ojph5localL18avx_multiply_constEPffi.exit99, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph118, %.loopexit
  %indvars.iv = phi i64 [ %i.ac, %.lr.ph118 ], [ %i.cc, %.loopexit ]
  %.0.in117 = phi i1 [ %5, %.lr.ph118 ], [ %i.dm, %.loopexit ] ; 2 uses
  %.082116 = phi ptr [ %i.q, %.lr.ph118 ], [ %.083115, %.loopexit ] ; 4 uses
  %.083115 = phi ptr [ %i.s, %.lr.ph118 ], [ %.082116, %.loopexit ] ; 8 uses
  %.084114 = phi i32 [ %i.v, %.lr.ph118 ], [ %.085113, %.loopexit ] ; 4 uses
  %.085113 = phi i32 [ %i.y, %.lr.ph118 ], [ %.084114, %.loopexit ] ; 5 uses
  %i.cc = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !9
  %i.cg = load float, ptr %.083115, align 4, !tbaa !21
  %i.ch = getelementptr inbounds i8, ptr %.083115, i64 -4
  store float %i.cg, ptr %i.ch, align 4, !tbaa !21
  %i.ci = add nsw i32 %.084114, -1
  %i.cj = zext i32 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !21
  %i.cm = zext nneg i32 %.084114 to i64
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.cm
  store float %i.cl, ptr %i.cn, align 4, !tbaa !21
  %i.co = insertelement <8 x float> poison, float %i.cf, i64 0
  %i.cp = shufflevector <8 x float> %i.co, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %.not123 = icmp eq i32 %.085113, 0              ; 2 uses
  br i1 %.0.in117, label %.preheader, label %.preheader102

.preheader102:                                    ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %.lr.ph110
  %.087109 = phi i32 [ %i.cx, %.lr.ph110 ], [ %.085113, %.preheader ] ; 2 uses
  %.088108 = phi ptr [ %i.cz, %.lr.ph110 ], [ %.082116, %.preheader ] ; 3 uses
  %.090107 = phi ptr [ %i.cy, %.lr.ph110 ], [ %.083115, %.preheader ] ; 3 uses
  %i.cq = load <8 x float>, ptr %.090107, align 32, !tbaa !9
  %i.cr = getelementptr inbounds nuw i8, ptr %.090107, i64 4
  %i.cs = load <8 x float>, ptr %i.cr, align 4, !tbaa !9
  %i.ct = load <8 x float>, ptr %.088108, align 32, !tbaa !9
  %i.cu = fadd <8 x float> %i.cq, %i.cs
  %i.cv = fmul <8 x float> %i.cp, %i.cu
  %i.cw = fadd <8 x float> %i.ct, %i.cv
  store <8 x float> %i.cw, ptr %.088108, align 32, !tbaa !9
  %i.cx = add nsw i32 %.087109, -8
  %i.cy = getelementptr inbounds nuw i8, ptr %.090107, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %.088108, i64 32
  %i.da = icmp sgt i32 %.087109, 8
  br i1 %i.da, label %.lr.ph110, label %.loopexit, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader102, %.lr.ph
  %.1106 = phi i32 [ %i.di, %.lr.ph ], [ %.085113, %.preheader102 ] ; 2 uses
  %.189105 = phi ptr [ %i.dk, %.lr.ph ], [ %.082116, %.preheader102 ] ; 3 uses
  %.191104 = phi ptr [ %i.dj, %.lr.ph ], [ %.083115, %.preheader102 ] ; 3 uses
  %i.db = load <8 x float>, ptr %.191104, align 32, !tbaa !9
  %i.dc = getelementptr inbounds i8, ptr %.191104, i64 -4
  %i.dd = load <8 x float>, ptr %i.dc, align 4, !tbaa !9
  %i.de = load <8 x float>, ptr %.189105, align 32, !tbaa !9
  %i.df = fadd <8 x float> %i.db, %i.dd
  %i.dg = fmul <8 x float> %i.cp, %i.df
end_hunk_0
