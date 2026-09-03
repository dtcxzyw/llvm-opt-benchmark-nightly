Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/filter_sse2_intrinsics?download=true
inline.NumInlined: 39
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_read_filter_row_sub3_sse2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %3 = add i64 %i.b, -4                           ; 2 uses
  %4 = udiv i64 %3, 3
  %5 = and i64 %4, 1
  %lcmp.mod.not.not = icmp eq i64 %5, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.019.val.prol = load i32, ptr %1, align 1      ; 2 uses
  %6 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.019.val.prol, i64 0
  %7 = bitcast <4 x i32> %6 to <16 x i8>          ; 2 uses
  %.0.extract.trunc.i.prol = trunc i32 %.019.val.prol to i24
  store i24 %.0.extract.trunc.i.prol, ptr %1, align 1
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %9 = add i64 %i.b, -3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph.preheader ], [ %7, %.lr.ph.prol ]
  %.01823.unr = phi i64 [ %i.b, %.lr.ph.preheader ], [ %9, %.lr.ph.prol ]
  %.01922.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %8, %.lr.ph.prol ]
  %.lcssa38.unr = phi <16 x i8> [ poison, %.lr.ph.preheader ], [ %7, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %8, %.lr.ph.prol ]
  %10 = icmp ult i64 %3, 3
  br i1 %10, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.d = phi <16 x i8> [ %i.g, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.01823 = phi i64 [ %i.k, %.lr.ph ], [ %.01823.unr, %.lr.ph.prol.loopexit ]
  %.01922 = phi ptr [ %i.j, %.lr.ph ], [ %.01922.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.019.val = load i32, ptr %.01922, align 1
  %11 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.019.val, i64 0
  %12 = bitcast <4 x i32> %11 to <16 x i8>
  %13 = add <16 x i8> %i.d, %12                   ; 2 uses
  %14 = bitcast <16 x i8> %13 to <4 x i32>
  %15 = extractelement <4 x i32> %14, i64 0
  %.0.extract.trunc.i = trunc i32 %15 to i24
  store i24 %.0.extract.trunc.i, ptr %.01922, align 1
  %16 = getelementptr inbounds nuw i8, ptr %.01922, i64 3 ; 2 uses
  %.019.val.1 = load i32, ptr %16, align 1
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.019.val.1, i64 0
  %i.f = bitcast <4 x i32> %i.e to <16 x i8>
  %i.g = add <16 x i8> %13, %i.f                  ; 3 uses
  %i.h = bitcast <16 x i8> %i.g to <4 x i32>
  %i.i = extractelement <4 x i32> %i.h, i64 0
  %.0.extract.trunc.i.1 = trunc i32 %i.i to i24
  store i24 %.0.extract.trunc.i.1, ptr %16, align 1
  %i.j = getelementptr inbounds nuw i8, ptr %.01922, i64 6 ; 2 uses
  %i.k = add i64 %.01823, -6                      ; 2 uses
  %i.l = icmp ugt i64 %i.k, 3
  br i1 %i.l, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %._crit_edge
  %.lcssa35 = phi <16 x i8> [ zeroinitializer, %._crit_edge ], [ %.lcssa38.unr, %.lr.ph.prol.loopexit ], [ %i.g, %.lr.ph ]
  %.019.lcssa34 = phi ptr [ %1, %._crit_edge ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.j, %.lr.ph ] ; 2 uses
  %.019.val20 = load i24, ptr %.019.lcssa34, align 1
  %.0.insert.ext.i = zext i24 %.019.val20 to i32
  %i.m = insertelement <4 x i32> poison, i32 %.0.insert.ext.i, i64 0
  %i.n = bitcast <4 x i32> %i.m to <16 x i8>
  %i.o = add <16 x i8> %.lcssa35, %i.n
  %i.p = bitcast <16 x i8> %i.o to <4 x i32>
  %i.q = extractelement <4 x i32> %i.p, i64 0
  %.0.extract.trunc.i21 = trunc i32 %i.q to i24
  store i24 %.0.extract.trunc.i21, ptr %.019.lcssa34, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_read_filter_row_sub4_sse2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = add i64 %i.b, -1                         ; 2 uses
  %i.f = and i64 %i.e, 4
  %lcmp.mod.not.not = icmp eq i64 %i.f, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.010.val.prol = load i32, ptr %1, align 1
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.010.val.prol, i64 0
  %i.h = bitcast <4 x i32> %i.g to <16 x i8>
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.0912.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.b, %.lr.ph.prol ]
  %.01011.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.j = icmp ult i64 %i.e, 4
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.k = phi <16 x i8> [ %i.t, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.0912 = phi i64 [ %i.x, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ]
  %.01011 = phi ptr [ %i.w, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.010.val = load i32, ptr %.01011, align 1
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.010.val, i64 0
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = add <16 x i8> %i.k, %i.m                 ; 2 uses
  %i.o = bitcast <16 x i8> %i.n to <4 x i32>
  %i.p = extractelement <4 x i32> %i.o, i64 0
  store i32 %i.p, ptr %.01011, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.01011, i64 4 ; 2 uses
  %.010.val.1 = load i32, ptr %i.q, align 1
  %i.r = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.010.val.1, i64 0
  %i.s = bitcast <4 x i32> %i.r to <16 x i8>
  %i.t = add <16 x i8> %i.n, %i.s                 ; 2 uses
  %i.u = bitcast <16 x i8> %i.t to <4 x i32>
  %i.v = extractelement <4 x i32> %i.u, i64 0
  store i32 %i.v, ptr %i.q, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.01011, i64 8
  %i.x = add i64 %.0912, -8                       ; 2 uses
  %i.y = icmp ugt i64 %i.x, 4
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_read_filter_row_avg3_sse2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.043 = phi ptr [ %i.t, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.03342 = phi ptr [ %i.s, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.03441 = phi <2 x i64> [ %i.p, %.lr.ph ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.03540 = phi i64 [ %i.u, %.lr.ph ], [ %i.b, %bb.a ]
  %.033.val = load i32, ptr %.03342, align 1
  %i.d = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.033.val, i64 0 ; 2 uses
  %i.e = bitcast <4 x i32> %i.d to <2 x i64>
  %.0.val = load i32, ptr %.043, align 1
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.val, i64 0
  %i.g = bitcast <2 x i64> %.03441 to <16 x i8>
  %i.h = bitcast <4 x i32> %i.d to <16 x i8>
  %i.i = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.g, <16 x i8> %i.h)
  %i.j = xor <2 x i64> %.03441, %i.e
  %i.k = bitcast <2 x i64> %i.j to <16 x i8>
  %i.l = and <16 x i8> %i.k, splat (i8 1)
  %i.m = sub <16 x i8> %i.i, %i.l
  %i.n = bitcast <4 x i32> %i.f to <16 x i8>
  %i.o = add <16 x i8> %i.m, %i.n                 ; 2 uses
  %i.p = bitcast <16 x i8> %i.o to <2 x i64>      ; 2 uses
  %i.q = bitcast <16 x i8> %i.o to <4 x i32>
  %i.r = extractelement <4 x i32> %i.q, i64 0
  %.0.extract.trunc.i = trunc i32 %i.r to i24
  store i24 %.0.extract.trunc.i, ptr %.043, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.03342, i64 3 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.043, i64 3 ; 2 uses
  %i.u = add i64 %.03540, -3                      ; 2 uses
  %i.v = icmp ugt i64 %i.u, 3
  br i1 %i.v, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph, %._crit_edge
  %.0.lcssa58 = phi ptr [ %1, %._crit_edge ], [ %i.t, %.lr.ph ] ; 2 uses
  %.033.lcssa57 = phi ptr [ %2, %._crit_edge ], [ %i.s, %.lr.ph ]
  %.034.lcssa56 = phi <2 x i64> [ zeroinitializer, %._crit_edge ], [ %i.p, %.lr.ph ] ; 2 uses
  %.033.val37 = load i24, ptr %.033.lcssa57, align 1
  %.0.insert.ext.i = zext i24 %.033.val37 to i32
  %i.w = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.insert.ext.i, i64 0 ; 2 uses
  %i.x = bitcast <4 x i32> %i.w to <2 x i64>
  %.0.val36 = load i24, ptr %.0.lcssa58, align 1
  %.0.insert.ext.i38 = zext i24 %.0.val36 to i32
  %i.y = insertelement <4 x i32> poison, i32 %.0.insert.ext.i38, i64 0
  %i.z = bitcast <2 x i64> %.034.lcssa56 to <16 x i8>
  %i.aa = bitcast <4 x i32> %i.w to <16 x i8>
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.z, <16 x i8> %i.aa)
  %i.ac = xor <2 x i64> %.034.lcssa56, %i.x
  %i.ad = bitcast <2 x i64> %i.ac to <16 x i8>
  %i.ae = and <16 x i8> %i.ad, <i8 1, i8 1, i8 1, i8 1, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>
  %i.af = bitcast <4 x i32> %i.y to <16 x i8>
  %i.ag = add <16 x i8> %i.ab, %i.af
  %i.ah = sub <16 x i8> %i.ag, %i.ae
  %i.ai = bitcast <16 x i8> %i.ah to <4 x i32>
  %i.aj = extractelement <4 x i32> %i.ai, i64 0
  %.0.extract.trunc.i39 = trunc i32 %i.aj to i24
  store i24 %.0.extract.trunc.i39, ptr %.0.lcssa58, align 1
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_read_filter_row_avg4_sse2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10
  %i.c = add i64 %i.b, 4                          ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.023 = phi ptr [ %i.u, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.01722 = phi <2 x i64> [ %i.q, %.lr.ph ], [ zeroinitializer, %bb.a ] ; 2 uses
  %.01821 = phi i64 [ %i.v, %.lr.ph ], [ %i.c, %bb.a ]
  %.01920 = phi ptr [ %i.t, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.019.val = load i32, ptr %.01920, align 1
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.019.val, i64 0 ; 2 uses
  %i.f = bitcast <4 x i32> %i.e to <2 x i64>
  %.0.val = load i32, ptr %.023, align 1
  %i.g = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0.val, i64 0
  %i.h = bitcast <2 x i64> %.01722 to <16 x i8>
  %i.i = bitcast <4 x i32> %i.e to <16 x i8>
  %i.j = tail call <16 x i8> @llvm.x86.sse2.pavg.b(<16 x i8> %i.h, <16 x i8> %i.i)
  %i.k = xor <2 x i64> %.01722, %i.f
  %i.l = bitcast <2 x i64> %i.k to <16 x i8>
  %i.m = and <16 x i8> %i.l, splat (i8 1)
  %i.n = sub <16 x i8> %i.j, %i.m
  %i.o = bitcast <4 x i32> %i.g to <16 x i8>
  %i.p = add <16 x i8> %i.n, %i.o                 ; 2 uses
  %i.q = bitcast <16 x i8> %i.p to <2 x i64>
  %i.r = bitcast <16 x i8> %i.p to <4 x i32>
  %i.s = extractelement <4 x i32> %i.r, i64 0
  store i32 %i.s, ptr %.023, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.01920, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %.023, i64 4
  %i.v = add i64 %.01821, -4                      ; 2 uses
  %i.w = icmp ugt i64 %i.v, 4
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @png_read_filter_row_paeth3_sse2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.c = icmp ugt i64 %i.b, 3
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.082 = phi ptr [ %i.ah, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %.07081 = phi ptr [ %i.ag, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.07180 = phi i64 [ %i.ai, %.lr.ph ], [ %i.b, %bb.a ]
  %.07279 = phi <2 x i64> [ %i.g, %.lr.ph ], [ zeroinitializer, %bb.a ]
  %.07378 = phi <2 x i64> [ %i.ab, %.lr.ph ], [ zeroinitializer, %bb.a ]
end_hunk_0
