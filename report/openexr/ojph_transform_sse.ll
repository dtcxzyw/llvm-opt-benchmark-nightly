Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ojph_transform_sse?download=true
inline.NumInlined: 13
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local17sse_irv_vert_stepEPKNS0_12lifting_stepEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !9    ; 2 uses
  %i.b = fneg float %i.a
  %.0 = select i1 %5, float %i.b, float %i.a
  %i.c = insertelement <4 x float> poison, float %.0, i64 0
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.e = icmp sgt i32 %4, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !9    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9    ; 4 uses
  %i.l = add nuw i32 %4, 7
  %i.m = and i32 %i.l, 4
  %lcmp.mod.not.not = icmp eq i32 %i.m, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.n = load <4 x float>, ptr %i.i, align 16, !tbaa !9
  %i.o = load <4 x float>, ptr %i.g, align 16, !tbaa !9
  %i.p = load <4 x float>, ptr %i.k, align 16, !tbaa !9
  %i.q = fadd <4 x float> %i.n, %i.o
  %i.r = fmul <4 x float> %i.d, %i.q
  %i.s = fadd <4 x float> %i.p, %i.r
  store <4 x float> %i.s, ptr %i.k, align 16, !tbaa !9
  %i.t = add nsw i32 %4, -4
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.02128.unr = phi ptr [ %i.k, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %.02227.unr = phi i32 [ %4, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.02326.unr = phi ptr [ %i.g, %.lr.ph.preheader ], [ %i.w, %.lr.ph.prol ]
  %.02425.unr = phi ptr [ %i.i, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %i.x = icmp ult i32 %4, 5
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.02128 = phi ptr [ %i.ao, %.lr.ph ], [ %.02128.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.02227 = phi i32 [ %i.an, %.lr.ph ], [ %.02227.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.02326 = phi ptr [ %i.aq, %.lr.ph ], [ %.02326.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.02425 = phi ptr [ %i.ap, %.lr.ph ], [ %.02425.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.y = load <4 x float>, ptr %.02425, align 16, !tbaa !9
  %i.z = load <4 x float>, ptr %.02326, align 16, !tbaa !9
  %i.aa = load <4 x float>, ptr %.02128, align 16, !tbaa !9
  %i.ab = fadd <4 x float> %i.y, %i.z
  %i.ac = fmul <4 x float> %i.d, %i.ab
  %i.ad = fadd <4 x float> %i.aa, %i.ac
  store <4 x float> %i.ad, ptr %.02128, align 16, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %.02128, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.02425, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %.02326, i64 16
  %i.ah = load <4 x float>, ptr %i.af, align 16, !tbaa !9
  %i.ai = load <4 x float>, ptr %i.ag, align 16, !tbaa !9
  %i.aj = load <4 x float>, ptr %i.ae, align 16, !tbaa !9
  %i.ak = fadd <4 x float> %i.ah, %i.ai
  %i.al = fmul <4 x float> %i.d, %i.ak
  %i.am = fadd <4 x float> %i.aj, %i.al
  store <4 x float> %i.am, ptr %i.ae, align 16, !tbaa !9
  %i.an = add nsw i32 %.02227, -8
  %i.ao = getelementptr inbounds nuw i8, ptr %.02128, i64 32
  %i.ap = getelementptr inbounds nuw i8, ptr %.02425, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %.02326, i64 32
  %i.ar = icmp sgt i32 %.02227, 8
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local20sse_irv_vert_times_KEfPKNS_8line_bufEj(float noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = insertelement <4 x float> poison, float %0, i64 0
  %i.b = shufflevector <4 x float> %i.a, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.i.preheader, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.f = add nsw i32 %2, -1
  %i.g = lshr i32 %i.f, 2
  %i.h = add nuw nsw i32 %i.g, 1
  %xtraiter = and i32 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.l, %.lr.ph.i.prol ], [ %i.e, %.lr.ph.i.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.k, %.lr.ph.i.prol ], [ %2, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = load <4 x float>, ptr %.09.i.prol, align 16, !tbaa !9
  %i.j = fmul <4 x float> %i.b, %i.i
  store <4 x float> %i.j, ptr %.09.i.prol, align 16, !tbaa !9
  %i.k = add nsw i32 %.078.i.prol, -4             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !23

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.078.i.unr = phi i32 [ %2, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.m = icmp ult i32 %2, 13
  br i1 %i.m, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.y, %.lr.ph.i ], [ %.078.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %i.n = load <4 x float>, ptr %.09.i, align 16, !tbaa !9
  %i.o = fmul <4 x float> %i.b, %i.n
  store <4 x float> %i.o, ptr %.09.i, align 16, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %i.q = load <4 x float>, ptr %i.p, align 16, !tbaa !9
  %i.r = fmul <4 x float> %i.b, %i.q
  store <4 x float> %i.r, ptr %i.p, align 16, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.t = load <4 x float>, ptr %i.s, align 16, !tbaa !9
  %i.u = fmul <4 x float> %i.b, %i.t
  store <4 x float> %i.u, ptr %i.s, align 16, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %.09.i, i64 48 ; 2 uses
  %i.w = load <4 x float>, ptr %i.v, align 16, !tbaa !9
  %i.x = fmul <4 x float> %i.b, %i.w
  store <4 x float> %i.x, ptr %i.v, align 16, !tbaa !9
  %i.y = add nsw i32 %.078.i, -16
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i, i64 64
  %i.aa = icmp sgt i32 %.078.i, 16
  br i1 %i.aa, label %.lr.ph.i, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, !llvm.loop !0

_ZN4ojph5localL18sse_multiply_constEPffi.exit:    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16sse_irv_horz_anaEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.lr.ph.i.preheader, label %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9    ; 4 uses
  %.pn94 = select i1 %5, ptr %2, ptr %1
  %.in93 = getelementptr inbounds nuw i8, ptr %.pn94, i64 16
  %i.e = load ptr, ptr %.in93, align 8, !tbaa !9  ; 3 uses
  %. = select i1 %5, ptr %1, ptr %2
  %.in = getelementptr inbounds nuw i8, ptr %., i64 16
  %i.f = load ptr, ptr %.in, align 8, !tbaa !9    ; 3 uses
  %i.g = add nuw i32 %4, 15
  %i.h = and i32 %i.g, 8
  %lcmp.mod.not.not = icmp eq i32 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %6 = load <4 x float>, ptr %i.d, align 16, !tbaa !9 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !9 ; 2 uses
  %i.i = shufflevector <4 x float> %6, <4 x float> %8, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.j = shufflevector <4 x float> %6, <4 x float> %8, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %i.i, ptr %i.f, align 16, !tbaa !9
  store <4 x float> %i.j, ptr %i.e, align 16, !tbaa !9
  %i.k = add nsw i32 %4, -8
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.020.i.unr = phi ptr [ %i.f, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %.01419.i.unr = phi ptr [ %i.e, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.01518.i.unr = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.l, %.lr.ph.i.prol ]
  %.01617.i.unr = phi i32 [ %4, %.lr.ph.i.preheader ], [ %i.k, %.lr.ph.i.prol ]
  %i.o = icmp ult i32 %4, 9
  br i1 %i.o, label %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.020.i = phi ptr [ %i.aa, %.lr.ph.i ], [ %.020.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01419.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.01419.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.01518.i = phi ptr [ %i.z, %.lr.ph.i ], [ %.01518.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.01617.i = phi i32 [ %i.y, %.lr.ph.i ], [ %.01617.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %9 = load <4 x float>, ptr %.01518.i, align 16, !tbaa !9 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01518.i, i64 16
  %10 = load <4 x float>, ptr %i.p, align 16, !tbaa !9 ; 2 uses
  %i.q = shufflevector <4 x float> %9, <4 x float> %10, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.r = shufflevector <4 x float> %9, <4 x float> %10, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %i.q, ptr %.020.i, align 16, !tbaa !9
  store <4 x float> %i.r, ptr %.01419.i, align 16, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %.01518.i, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %.01419.i, i64 16
  %11 = load <4 x float>, ptr %i.s, align 16, !tbaa !9 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01518.i, i64 48
  %12 = load <4 x float>, ptr %i.v, align 16, !tbaa !9 ; 2 uses
  %i.w = shufflevector <4 x float> %11, <4 x float> %12, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.x = shufflevector <4 x float> %11, <4 x float> %12, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  store <4 x float> %i.w, ptr %i.t, align 16, !tbaa !9
  store <4 x float> %i.x, ptr %i.u, align 16, !tbaa !9
  %i.y = add nsw i32 %.01617.i, -16
  %i.z = getelementptr inbounds nuw i8, ptr %.01518.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %.020.i, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %.01419.i, i64 32
  %i.ac = icmp sgt i32 %.01617.i, 16
  br i1 %i.ac, label %.lr.ph.i, label %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit, !llvm.loop !24

_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !9  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !9  ; 2 uses
  %i.ah = zext i1 %5 to i32
  %i.ai = add i32 %4, %i.ah
  %i.aj = lshr i32 %i.ai, 1                       ; 2 uses
  %not. = xor i1 %5, true
  %i.ak = zext i1 %not. to i32
  %i.al = add i32 %4, %i.ak
  %i.am = lshr i32 %i.al, 1                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !18  ; 2 uses
  %.not111 = icmp eq i8 %i.ao, 0
  br i1 %.not111, label %._crit_edge, label %.lr.ph118

.lr.ph118:                                        ; preds = %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = zext i8 %i.ao to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit
  %.085.lcssa = phi i32 [ %i.am, %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit ], [ %.084114, %.loopexit ] ; 5 uses
  %.084.lcssa = phi i32 [ %i.aj, %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit ], [ %.085113, %.loopexit ] ; 5 uses
  %.083.lcssa = phi ptr [ %i.ag, %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit ], [ %.082116, %.loopexit ] ; 2 uses
  %.082.lcssa = phi ptr [ %i.ae, %_ZN4ojph5localL18sse_deinterleave32EPfS1_S1_i.exit ], [ %.083115, %.loopexit ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !19 ; 2 uses
  %i.at = fdiv float 1.000000e+00, %i.as
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.not100 = icmp eq i32 %.084.lcssa, 0
  br i1 %.not100, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, label %.lr.ph.i95.preheader

.lr.ph.i95.preheader:                             ; preds = %._crit_edge
  %i.aw = add nsw i32 %.084.lcssa, -1
  %i.ax = lshr i32 %i.aw, 2
  %i.ay = add nuw nsw i32 %i.ax, 1
  %xtraiter133 = and i32 %i.ay, 3                 ; 2 uses
  %lcmp.mod134.not = icmp eq i32 %xtraiter133, 0
  br i1 %lcmp.mod134.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.i95.preheader, %.lr.ph.i95.prol
  %.09.i.prol = phi ptr [ %i.bc, %.lr.ph.i95.prol ], [ %.083.lcssa, %.lr.ph.i95.preheader ] ; 3 uses
  %.078.i.prol = phi i32 [ %i.bb, %.lr.ph.i95.prol ], [ %.084.lcssa, %.lr.ph.i95.preheader ]
  %prol.iter.a = phi i32 [ %prol.iter.next.a, %.lr.ph.i95.prol ], [ 0, %.lr.ph.i95.preheader ]
  %i.az = load <4 x float>, ptr %.09.i.prol, align 16, !tbaa !9
  %i.ba = fmul <4 x float> %i.av, %i.az
  store <4 x float> %i.ba, ptr %.09.i.prol, align 16, !tbaa !9
  %i.bb = add nsw i32 %.078.i.prol, -4            ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 16 ; 2 uses
  %prol.iter.next.a = add i32 %prol.iter.a, 1     ; 2 uses
  %prol.iter.cmp.not.a = icmp eq i32 %prol.iter.next.a, %xtraiter133
  br i1 %prol.iter.cmp.not.a, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !25

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.i95.preheader
  %.09.i.unr = phi ptr [ %.083.lcssa, %.lr.ph.i95.preheader ], [ %i.bc, %.lr.ph.i95.prol ]
  %.078.i.unr = phi i32 [ %.084.lcssa, %.lr.ph.i95.preheader ], [ %i.bb, %.lr.ph.i95.prol ]
  %i.bd = icmp ult i32 %.084.lcssa, 13
  br i1 %i.bd, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.09.i = phi ptr [ %i.bq, %.lr.ph.i95 ], [ %.09.i.unr, %.lr.ph.i95.prol.loopexit ] ; 6 uses
  %.078.i = phi i32 [ %i.bp, %.lr.ph.i95 ], [ %.078.i.unr, %.lr.ph.i95.prol.loopexit ] ; 2 uses
  %i.be = load <4 x float>, ptr %.09.i, align 16, !tbaa !9
  %i.bf = fmul <4 x float> %i.av, %i.be
  store <4 x float> %i.bf, ptr %.09.i, align 16, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i, i64 16 ; 2 uses
  %i.bh = load <4 x float>, ptr %i.bg, align 16, !tbaa !9
  %i.bi = fmul <4 x float> %i.av, %i.bh
  store <4 x float> %i.bi, ptr %i.bg, align 16, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %i.bk = load <4 x float>, ptr %i.bj, align 16, !tbaa !9
  %i.bl = fmul <4 x float> %i.av, %i.bk
  store <4 x float> %i.bl, ptr %i.bj, align 16, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i, i64 48 ; 2 uses
  %i.bn = load <4 x float>, ptr %i.bm, align 16, !tbaa !9
  %i.bo = fmul <4 x float> %i.av, %i.bn
  store <4 x float> %i.bo, ptr %i.bm, align 16, !tbaa !9
  %i.bp = add nsw i32 %.078.i, -16
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i, i64 64
  %i.br = icmp sgt i32 %.078.i, 16
  br i1 %i.br, label %.lr.ph.i95, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, !llvm.loop !0

_ZN4ojph5localL18sse_multiply_constEPffi.exit:    ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %._crit_edge
  %i.bs = insertelement <4 x float> poison, float %i.as, i64 0
  %i.bt = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %.not101 = icmp eq i32 %.085.lcssa, 0
  br i1 %.not101, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99, label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %_ZN4ojph5localL18sse_multiply_constEPffi.exit
  %i.bu = add nsw i32 %.085.lcssa, -1
  %i.bv = lshr i32 %i.bu, 2
  %i.bw = add nuw nsw i32 %i.bv, 1
  %xtraiter135 = and i32 %i.bw, 3                 ; 2 uses
  %lcmp.mod136.not = icmp eq i32 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol

.lr.ph.i96.prol:                                  ; preds = %.lr.ph.i96.preheader, %.lr.ph.i96.prol
  %.09.i97.prol = phi ptr [ %i.ca, %.lr.ph.i96.prol ], [ %.082.lcssa, %.lr.ph.i96.preheader ] ; 3 uses
  %.078.i98.prol = phi i32 [ %i.bz, %.lr.ph.i96.prol ], [ %.085.lcssa, %.lr.ph.i96.preheader ]
  %prol.iter137 = phi i32 [ %prol.iter137.next, %.lr.ph.i96.prol ], [ 0, %.lr.ph.i96.preheader ]
  %i.bx = load <4 x float>, ptr %.09.i97.prol, align 16, !tbaa !9
  %i.by = fmul <4 x float> %i.bt, %i.bx
  store <4 x float> %i.by, ptr %.09.i97.prol, align 16, !tbaa !9
  %i.bz = add nsw i32 %.078.i98.prol, -4          ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.09.i97.prol, i64 16 ; 2 uses
  %prol.iter137.next = add i32 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i32 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol, !llvm.loop !26

.lr.ph.i96.prol.loopexit:                         ; preds = %.lr.ph.i96.prol, %.lr.ph.i96.preheader
  %.09.i97.unr = phi ptr [ %.082.lcssa, %.lr.ph.i96.preheader ], [ %i.ca, %.lr.ph.i96.prol ]
  %.078.i98.unr = phi i32 [ %.085.lcssa, %.lr.ph.i96.preheader ], [ %i.bz, %.lr.ph.i96.prol ]
  %i.cb = icmp ult i32 %.085.lcssa, 13
  br i1 %i.cb, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96
  %.09.i97 = phi ptr [ %i.co, %.lr.ph.i96 ], [ %.09.i97.unr, %.lr.ph.i96.prol.loopexit ] ; 6 uses
  %.078.i98 = phi i32 [ %i.cn, %.lr.ph.i96 ], [ %.078.i98.unr, %.lr.ph.i96.prol.loopexit ] ; 2 uses
  %i.cc = load <4 x float>, ptr %.09.i97, align 16, !tbaa !9
  %i.cd = fmul <4 x float> %i.bt, %i.cc
  store <4 x float> %i.cd, ptr %.09.i97, align 16, !tbaa !9
  %i.ce = getelementptr inbounds nuw i8, ptr %.09.i97, i64 16 ; 2 uses
  %i.cf = load <4 x float>, ptr %i.ce, align 16, !tbaa !9
  %i.cg = fmul <4 x float> %i.bt, %i.cf
  store <4 x float> %i.cg, ptr %i.ce, align 16, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %.09.i97, i64 32 ; 2 uses
  %i.ci = load <4 x float>, ptr %i.ch, align 16, !tbaa !9
  %i.cj = fmul <4 x float> %i.bt, %i.ci
  store <4 x float> %i.cj, ptr %i.ch, align 16, !tbaa !9
  %i.ck = getelementptr inbounds nuw i8, ptr %.09.i97, i64 48 ; 2 uses
  %i.cl = load <4 x float>, ptr %i.ck, align 16, !tbaa !9
  %i.cm = fmul <4 x float> %i.bt, %i.cl
  store <4 x float> %i.cm, ptr %i.ck, align 16, !tbaa !9
  %i.cn = add nsw i32 %.078.i98, -16
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i97, i64 64
  %i.cp = icmp sgt i32 %.078.i98, 16
  br i1 %i.cp, label %.lr.ph.i96, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph118, %.loopexit
  %indvars.iv = phi i64 [ %i.aq, %.lr.ph118 ], [ %i.cq, %.loopexit ]
  %.0.in117 = phi i1 [ %5, %.lr.ph118 ], [ %i.ea, %.loopexit ] ; 2 uses
  %.082116 = phi ptr [ %i.ae, %.lr.ph118 ], [ %.083115, %.loopexit ] ; 4 uses
  %.083115 = phi ptr [ %i.ag, %.lr.ph118 ], [ %.082116, %.loopexit ] ; 8 uses
  %.084114 = phi i32 [ %i.aj, %.lr.ph118 ], [ %.085113, %.loopexit ] ; 4 uses
  %.085113 = phi i32 [ %i.am, %.lr.ph118 ], [ %.084114, %.loopexit ] ; 5 uses
  %i.cq = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.cr = load ptr, ptr %i.ap, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.cq
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !9
  %i.cu = load float, ptr %.083115, align 4, !tbaa !21
  %i.cv = getelementptr inbounds i8, ptr %.083115, i64 -4
  store float %i.cu, ptr %i.cv, align 4, !tbaa !21
  %i.cw = add nsw i32 %.084114, -1
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.cx
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !21
  %i.da = zext nneg i32 %.084114 to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %.083115, i64 %i.da
  store float %i.cz, ptr %i.db, align 4, !tbaa !21
  %i.dc = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.dd = shufflevector <4 x float> %i.dc, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.not123 = icmp eq i32 %.085113, 0              ; 2 uses
  br i1 %.0.in117, label %.preheader, label %.preheader102

.preheader102:                                    ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not123, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %.lr.ph110
  %.087109 = phi i32 [ %i.dl, %.lr.ph110 ], [ %.085113, %.preheader ] ; 2 uses
  %.088108 = phi ptr [ %i.dn, %.lr.ph110 ], [ %.082116, %.preheader ] ; 3 uses
  %.090107 = phi ptr [ %i.dm, %.lr.ph110 ], [ %.083115, %.preheader ] ; 3 uses
  %i.de = load <4 x float>, ptr %.090107, align 16, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %.090107, i64 4
  %i.dg = load <4 x float>, ptr %i.df, align 4, !tbaa !9
  %i.dh = load <4 x float>, ptr %.088108, align 16, !tbaa !9
  %i.di = fadd <4 x float> %i.de, %i.dg
  %i.dj = fmul <4 x float> %i.dd, %i.di
  %i.dk = fadd <4 x float> %i.dh, %i.dj
  store <4 x float> %i.dk, ptr %.088108, align 16, !tbaa !9
  %i.dl = add nsw i32 %.087109, -4
  %i.dm = getelementptr inbounds nuw i8, ptr %.090107, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %.088108, i64 16
  %i.do = icmp sgt i32 %.087109, 4
  br i1 %i.do, label %.lr.ph110, label %.loopexit, !llvm.loop !27

.lr.ph:                                           ; preds = %.preheader102, %.lr.ph
  %.1106 = phi i32 [ %i.dw, %.lr.ph ], [ %.085113, %.preheader102 ] ; 2 uses
  %.189105 = phi ptr [ %i.dy, %.lr.ph ], [ %.082116, %.preheader102 ] ; 3 uses
  %.191104 = phi ptr [ %i.dx, %.lr.ph ], [ %.083115, %.preheader102 ] ; 3 uses
  %i.dp = load <4 x float>, ptr %.191104, align 16, !tbaa !9
  %i.dq = getelementptr inbounds i8, ptr %.191104, i64 -4
  %i.dr = load <4 x float>, ptr %i.dq, align 4, !tbaa !9
  %i.ds = load <4 x float>, ptr %.189105, align 16, !tbaa !9
  %i.dt = fadd <4 x float> %i.dp, %i.dr
  %i.du = fmul <4 x float> %i.dd, %i.dt
  %i.dv = fadd <4 x float> %i.ds, %i.du
  store <4 x float> %i.dv, ptr %.189105, align 16, !tbaa !9
  %i.dw = add nsw i32 %.1106, -4
  %i.dx = getelementptr inbounds nuw i8, ptr %.191104, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %.189105, i64 16
  %i.dz = icmp sgt i32 %.1106, 4
  br i1 %i.dz, label %.lr.ph, label %.loopexit, !llvm.loop !28

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph110, %.preheader102, %.preheader
  %i.ea = xor i1 %.0.in117, true
  %.not.wide = icmp eq i64 %i.cq, 0
  br i1 %.not.wide, label %._crit_edge, label %bb.c, !llvm.loop !29

_ZN4ojph5localL18sse_multiply_constEPffi.exit99.sink.split: ; preds = %bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !9
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !21 ; 2 uses
  %i.ee = fmul float %i.ed, 2.000000e+00
  %.sink130 = select i1 %5, ptr %1, ptr %2
  %.sink = select i1 %5, float %i.ed, float %i.ee
  %i.ef = getelementptr inbounds nuw i8, ptr %.sink130, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !9
  store float %.sink, ptr %i.eg, align 4, !tbaa !21
  br label %_ZN4ojph5localL18sse_multiply_constEPffi.exit99

_ZN4ojph5localL18sse_multiply_constEPffi.exit99:  ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96, %_ZN4ojph5localL18sse_multiply_constEPffi.exit99.sink.split, %_ZN4ojph5localL18sse_multiply_constEPffi.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN4ojph5local16sse_irv_horz_synEPKNS0_9param_atkEPKNS_8line_bufES6_S6_jb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %4, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.f = zext i1 %5 to i32
  %i.g = add i32 %4, %i.f
  %i.h = lshr i32 %i.g, 1                         ; 3 uses
  %not. = xor i1 %5, true
  %i.i = zext i1 %not. to i32
  %i.j = add i32 %4, %i.i
  %i.k = lshr i32 %i.j, 1                         ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = load float, ptr %i.l, align 4, !tbaa !19 ; 2 uses
  %i.n = fdiv float 1.000000e+00, %i.m
  %i.o = insertelement <4 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <4 x float> %i.o, <4 x float> poison, <4 x i32> zeroinitializer
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.09.i = phi ptr [ %i.t, %.lr.ph.i ], [ %i.e, %bb.b ] ; 3 uses
  %.078.i = phi i32 [ %i.s, %.lr.ph.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.q = load <4 x float>, ptr %.09.i, align 16, !tbaa !9
  %i.r = fmul <4 x float> %i.p, %i.q
  store <4 x float> %i.r, ptr %.09.i, align 16, !tbaa !9
  %i.s = add nsw i32 %.078.i, -4
  %i.t = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.u = icmp samesign ugt i32 %.078.i, 4
  br i1 %i.u, label %.lr.ph.i, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit, !llvm.loop !0

_ZN4ojph5localL18sse_multiply_constEPffi.exit:    ; preds = %.lr.ph.i, %bb.b
  %i.v = insertelement <4 x float> poison, float %i.n, i64 0
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> zeroinitializer
  %.not100 = icmp eq i32 %i.k, 0
  br i1 %.not100, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit98, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %_ZN4ojph5localL18sse_multiply_constEPffi.exit, %.lr.ph.i95
  %.09.i96 = phi ptr [ %i.aa, %.lr.ph.i95 ], [ %i.c, %_ZN4ojph5localL18sse_multiply_constEPffi.exit ] ; 3 uses
  %.078.i97 = phi i32 [ %i.z, %.lr.ph.i95 ], [ %i.k, %_ZN4ojph5localL18sse_multiply_constEPffi.exit ] ; 2 uses
  %i.x = load <4 x float>, ptr %.09.i96, align 16, !tbaa !9
  %i.y = fmul <4 x float> %i.w, %i.x
  store <4 x float> %i.y, ptr %.09.i96, align 16, !tbaa !9
  %i.z = add nsw i32 %.078.i97, -4
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i96, i64 16
  %i.ab = icmp samesign ugt i32 %.078.i97, 4
  br i1 %i.ab, label %.lr.ph.i95, label %_ZN4ojph5localL18sse_multiply_constEPffi.exit98, !llvm.loop !0

_ZN4ojph5localL18sse_multiply_constEPffi.exit98:  ; preds = %.lr.ph.i95, %_ZN4ojph5localL18sse_multiply_constEPffi.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !18  ; 2 uses
  %.not117 = icmp eq i8 %i.ad, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph116

.lr.ph116:                                        ; preds = %_ZN4ojph5localL18sse_multiply_constEPffi.exit98
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext i8 %i.ad to i64
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit, %_ZN4ojph5localL18sse_multiply_constEPffi.exit98
  %i.af = icmp sgt i32 %4, 0
  br i1 %i.af, label %.lr.ph.i99.preheader, label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit

.lr.ph.i99.preheader:                             ; preds = %._crit_edge
  %.in94 = select i1 %5, ptr %i.b, ptr %i.d
  %i.ag = load ptr, ptr %.in94, align 8, !tbaa !9 ; 3 uses
  %. = select i1 %5, ptr %i.d, ptr %i.b
  %i.ah = load ptr, ptr %., align 8, !tbaa !9     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !9  ; 4 uses
  %i.ak = add nuw i32 %4, 15
  %i.al = and i32 %i.ak, 8
  %lcmp.mod.not.not = icmp eq i32 %i.al, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i99.prol, label %.lr.ph.i99.prol.loopexit

.lr.ph.i99.prol:                                  ; preds = %.lr.ph.i99.preheader
  %i.am = load <4 x float>, ptr %i.ah, align 16, !tbaa !9 ; 2 uses
  %i.an = load <4 x float>, ptr %i.ag, align 16, !tbaa !9 ; 2 uses
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ap = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ao, ptr %i.aj, align 16, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <4 x float> %i.ap, ptr %i.aq, align 16, !tbaa !9
  %i.ar = add nsw i32 %4, -8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  br label %.lr.ph.i99.prol.loopexit

.lr.ph.i99.prol.loopexit:                         ; preds = %.lr.ph.i99.prol, %.lr.ph.i99.preheader
  %.020.i.unr = phi ptr [ %i.aj, %.lr.ph.i99.preheader ], [ %i.as, %.lr.ph.i99.prol ]
  %.01419.i.unr = phi ptr [ %i.ah, %.lr.ph.i99.preheader ], [ %i.at, %.lr.ph.i99.prol ]
  %.01518.i.unr = phi ptr [ %i.ag, %.lr.ph.i99.preheader ], [ %i.au, %.lr.ph.i99.prol ]
  %.01617.i.unr = phi i32 [ %4, %.lr.ph.i99.preheader ], [ %i.ar, %.lr.ph.i99.prol ]
  %i.av = icmp ult i32 %4, 9
  br i1 %i.av, label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit, label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99
  %.020.i = phi ptr [ %i.bk, %.lr.ph.i99 ], [ %.020.i.unr, %.lr.ph.i99.prol.loopexit ] ; 5 uses
  %.01419.i = phi ptr [ %i.bl, %.lr.ph.i99 ], [ %.01419.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.01518.i = phi ptr [ %i.bm, %.lr.ph.i99 ], [ %.01518.i.unr, %.lr.ph.i99.prol.loopexit ] ; 3 uses
  %.01617.i = phi i32 [ %i.bj, %.lr.ph.i99 ], [ %.01617.i.unr, %.lr.ph.i99.prol.loopexit ] ; 2 uses
  %i.aw = load <4 x float>, ptr %.01419.i, align 16, !tbaa !9 ; 2 uses
  %i.ax = load <4 x float>, ptr %.01518.i, align 16, !tbaa !9 ; 2 uses
  %i.ay = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.az = shufflevector <4 x float> %i.aw, <4 x float> %i.ax, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ay, ptr %.020.i, align 16, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  store <4 x float> %i.az, ptr %i.ba, align 16, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %.020.i, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.01419.i, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %.01518.i, i64 16
  %i.be = load <4 x float>, ptr %i.bc, align 16, !tbaa !9 ; 2 uses
  %i.bf = load <4 x float>, ptr %i.bd, align 16, !tbaa !9 ; 2 uses
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.bh = shufflevector <4 x float> %i.be, <4 x float> %i.bf, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.bg, ptr %i.bb, align 16, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %.020.i, i64 48
  store <4 x float> %i.bh, ptr %i.bi, align 16, !tbaa !9
  %i.bj = add nsw i32 %.01617.i, -16
  %i.bk = getelementptr inbounds nuw i8, ptr %.020.i, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %.01419.i, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.01518.i, i64 32
  %i.bn = icmp sgt i32 %.01617.i, 16
  br i1 %i.bn, label %.lr.ph.i99, label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit, !llvm.loop !30

bb.c:                                             ; preds = %.lr.ph116, %.loopexit
  %indvars.iv = phi i64 [ 0, %.lr.ph116 ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %.0.in115 = phi i1 [ %5, %.lr.ph116 ], [ %i.cx, %.loopexit ] ; 2 uses
  %.083114 = phi ptr [ %i.c, %.lr.ph116 ], [ %.084113, %.loopexit ] ; 7 uses
  %.084113 = phi ptr [ %i.e, %.lr.ph116 ], [ %.083114, %.loopexit ] ; 3 uses
  %.085112 = phi i32 [ %i.h, %.lr.ph116 ], [ %.086111, %.loopexit ] ; 4 uses
  %.086111 = phi i32 [ %i.k, %.lr.ph116 ], [ %.085112, %.loopexit ] ; 3 uses
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !9
  %i.br = load float, ptr %.083114, align 4, !tbaa !21
  %i.bs = getelementptr inbounds i8, ptr %.083114, i64 -4
  store float %i.br, ptr %i.bs, align 4, !tbaa !21
  %i.bt = add nsw i32 %.086111, -1
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.083114, i64 %i.bu
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !21
  %i.bx = zext nneg i32 %.086111 to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.083114, i64 %i.bx
  store float %i.bw, ptr %i.by, align 4, !tbaa !21
  %i.bz = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %.not119 = icmp eq i32 %.085112, 0              ; 2 uses
  br i1 %.0.in115, label %.preheader, label %.preheader101

.preheader101:                                    ; preds = %bb.c
  br i1 %.not119, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.c
  br i1 %.not119, label %.loopexit, label %.lr.ph109

.lr.ph109:                                        ; preds = %.preheader, %.lr.ph109
  %.088108 = phi i32 [ %i.ci, %.lr.ph109 ], [ %.085112, %.preheader ] ; 2 uses
  %.089107 = phi ptr [ %i.ck, %.lr.ph109 ], [ %.084113, %.preheader ] ; 3 uses
  %.091106 = phi ptr [ %i.cj, %.lr.ph109 ], [ %.083114, %.preheader ] ; 3 uses
  %i.cb = load <4 x float>, ptr %.091106, align 16, !tbaa !9
  %i.cc = getelementptr inbounds i8, ptr %.091106, i64 -4
  %i.cd = load <4 x float>, ptr %i.cc, align 4, !tbaa !9
  %i.ce = load <4 x float>, ptr %.089107, align 16, !tbaa !9
  %i.cf = fadd <4 x float> %i.cb, %i.cd
  %i.cg = fmul <4 x float> %i.ca, %i.cf
  %i.ch = fsub <4 x float> %i.ce, %i.cg
  store <4 x float> %i.ch, ptr %.089107, align 16, !tbaa !9
  %i.ci = add nsw i32 %.088108, -4
  %i.cj = getelementptr inbounds nuw i8, ptr %.091106, i64 16
  %i.ck = getelementptr inbounds nuw i8, ptr %.089107, i64 16
  %i.cl = icmp sgt i32 %.088108, 4
  br i1 %i.cl, label %.lr.ph109, label %.loopexit, !llvm.loop !31

.lr.ph:                                           ; preds = %.preheader101, %.lr.ph
  %.1105 = phi i32 [ %i.ct, %.lr.ph ], [ %.085112, %.preheader101 ] ; 2 uses
  %.190104 = phi ptr [ %i.cv, %.lr.ph ], [ %.084113, %.preheader101 ] ; 3 uses
  %.192103 = phi ptr [ %i.cu, %.lr.ph ], [ %.083114, %.preheader101 ] ; 3 uses
  %i.cm = load <4 x float>, ptr %.192103, align 16, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %.192103, i64 4
  %i.co = load <4 x float>, ptr %i.cn, align 4, !tbaa !9
  %i.cp = load <4 x float>, ptr %.190104, align 16, !tbaa !9
  %i.cq = fadd <4 x float> %i.cm, %i.co
  %i.cr = fmul <4 x float> %i.ca, %i.cq
  %i.cs = fsub <4 x float> %i.cp, %i.cr
  store <4 x float> %i.cs, ptr %.190104, align 16, !tbaa !9
  %i.ct = add nsw i32 %.1105, -4
  %i.cu = getelementptr inbounds nuw i8, ptr %.192103, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %.190104, i64 16
  %i.cw = icmp sgt i32 %.1105, 4
  br i1 %i.cw, label %.lr.ph, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph109, %.preheader101, %.preheader
  %i.cx = xor i1 %.0.in115, true
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !33

bb.d:                                             ; preds = %bb.a
  br i1 %5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !9
  %i.da = load float, ptr %i.cz, align 4, !tbaa !21
  br label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split

bb.f:                                             ; preds = %bb.d
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !9
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !21
  %i.de = fmul float %i.dd, 5.000000e-01
  br label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split

_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split: ; preds = %bb.f, %bb.e
  %.sink = phi float [ %i.da, %bb.e ], [ %i.de, %bb.f ]
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !9
  store float %.sink, ptr %i.dg, align 4, !tbaa !21
  br label %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit

_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit: ; preds = %.lr.ph.i99.prol.loopexit, %.lr.ph.i99, %_ZN4ojph5localL16sse_interleave32EPfS1_S1_i.exit.sink.split, %._crit_edge
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"short", !5, i64 0}
!13 = !{!"float", !5, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTSN4ojph5local12lifting_stepE", !14, i64 0}
!16 = !{!"p1 _ZTSN4ojph5local9param_atkE", !14, i64 0}
!17 = !{!"_ZTSN4ojph5local9param_atkE", !12, i64 0, !12, i64 2, !13, i64 4, !5, i64 8, !15, i64 16, !6, i64 24, !5, i64 28, !16, i64 80, !16, i64 88, !16, i64 96}
!18 = !{!17, !5, i64 8}
!19 = !{!17, !13, i64 4}
!20 = !{!17, !15, i64 16}
!21 = !{!13, !13, i64 0}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
end_hunk_0
