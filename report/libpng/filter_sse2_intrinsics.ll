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
  %i.d = add i64 %i.b, -4                         ; 2 uses
  %i.e = udiv i64 %i.d, 3
  %3 = and i64 %i.e, 1
  %lcmp.mod.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.019.val.prol = load i32, ptr %1, align 1      ; 2 uses
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.019.val.prol, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>      ; 2 uses
  %.0.extract.trunc.i.prol = trunc i32 %.019.val.prol to i24
  store i24 %.0.extract.trunc.i.prol, ptr %1, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  %i.i = add i64 %i.b, -3
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.01823.unr = phi i64 [ %i.b, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %.01922.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.lcssa38.unr = phi <16 x i8> [ poison, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %i.j = icmp ult i64 %i.d, 3
  br i1 %i.j, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.k = phi <16 x i8> [ %i.t, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.01823 = phi i64 [ %i.x, %.lr.ph ], [ %.01823.unr, %.lr.ph.prol.loopexit ]
  %.01922 = phi ptr [ %i.w, %.lr.ph ], [ %.01922.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.019.val = load i32, ptr %.01922, align 1
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.019.val, i64 0
  %i.m = bitcast <4 x i32> %i.l to <16 x i8>
  %i.n = add <16 x i8> %i.k, %i.m                 ; 2 uses
  %i.o = bitcast <16 x i8> %i.n to <4 x i32>
  %i.p = extractelement <4 x i32> %i.o, i64 0
  %.0.extract.trunc.i = trunc i32 %i.p to i24
  store i24 %.0.extract.trunc.i, ptr %.01922, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.01922, i64 3 ; 2 uses
  %.019.val.1 = load i32, ptr %i.q, align 1
  %i.r = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.019.val.1, i64 0
  %i.s = bitcast <4 x i32> %i.r to <16 x i8>
  %i.t = add <16 x i8> %i.n, %i.s                 ; 3 uses
  %i.u = bitcast <16 x i8> %i.t to <4 x i32>
  %i.v = extractelement <4 x i32> %i.u, i64 0
  %.0.extract.trunc.i.1 = trunc i32 %i.v to i24
  store i24 %.0.extract.trunc.i.1, ptr %i.q, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %.01922, i64 6 ; 2 uses
  %i.x = add i64 %.01823, -6                      ; 2 uses
  %i.y = icmp ugt i64 %i.x, 3
  br i1 %i.y, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %._crit_edge
  %.lcssa35 = phi <16 x i8> [ zeroinitializer, %._crit_edge ], [ %.lcssa38.unr, %.lr.ph.prol.loopexit ], [ %i.t, %.lr.ph ]
  %.019.lcssa34 = phi ptr [ %1, %._crit_edge ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.w, %.lr.ph ] ; 2 uses
  %.019.val20 = load i24, ptr %.019.lcssa34, align 1
  %.0.insert.ext.i = zext i24 %.019.val20 to i32
  %i.z = insertelement <4 x i32> poison, i32 %.0.insert.ext.i, i64 0
  %i.aa = bitcast <4 x i32> %i.z to <16 x i8>
  %i.ab = add <16 x i8> %.lcssa35, %i.aa
  %i.ac = bitcast <16 x i8> %i.ab to <4 x i32>
  %i.ad = extractelement <4 x i32> %i.ac, i64 0
  %.0.extract.trunc.i21 = trunc i32 %i.ad to i24
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
  %3 = and i64 %i.e, 4
  %lcmp.mod.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %.010.val.prol = load i32, ptr %1, align 1
  %i.f = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.010.val.prol, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.unr = phi <16 x i8> [ zeroinitializer, %.lr.ph.preheader ], [ %i.g, %.lr.ph.prol ]
  %.0912.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.b, %.lr.ph.prol ]
  %.01011.unr = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %4 = icmp ult i64 %i.e, 4
  br i1 %4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.i = phi <16 x i8> [ %i.r, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ]
  %.0912 = phi i64 [ %i.v, %.lr.ph ], [ %.0912.unr, %.lr.ph.prol.loopexit ]
  %.01011 = phi ptr [ %i.u, %.lr.ph ], [ %.01011.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.010.val = load i32, ptr %.01011, align 1
  %i.j = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.010.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %i.l = add <16 x i8> %i.i, %i.k                 ; 2 uses
  %i.m = bitcast <16 x i8> %i.l to <4 x i32>
  %i.n = extractelement <4 x i32> %i.m, i64 0
  store i32 %i.n, ptr %.01011, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %.01011, i64 4 ; 2 uses
  %.010.val.1 = load i32, ptr %i.o, align 1
  %i.p = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.010.val.1, i64 0
  %i.q = bitcast <4 x i32> %i.p to <16 x i8>
  %i.r = add <16 x i8> %i.l, %i.q                 ; 2 uses
  %i.s = bitcast <16 x i8> %i.r to <4 x i32>
  %i.t = extractelement <4 x i32> %i.s, i64 0
  store i32 %i.t, ptr %i.o, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %.01011, i64 8
  %i.v = add i64 %.0912, -8                       ; 2 uses
  %i.w = icmp ugt i64 %i.v, 4
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !13

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
  %.070.val = load i32, ptr %.07081, align 1
  %i.d = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.070.val, i64 0
  %i.e = bitcast <4 x i32> %i.d to <16 x i8>
  %i.f = shufflevector <16 x i8> %i.e, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23> ; 3 uses
  %i.g = bitcast <16 x i8> %i.f to <2 x i64>
  %.0.val = load i32, ptr %.082, align 1
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>, i32 %.0.val, i64 0
  %i.i = bitcast <4 x i32> %i.h to <16 x i8>
  %i.j = shufflevector <16 x i8> %i.i, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.k = bitcast <16 x i8> %i.f to <8 x i16>      ; 2 uses
  %i.l = bitcast <2 x i64> %.07279 to <8 x i16>   ; 3 uses
  %i.m = sub <8 x i16> %i.k, %i.l                 ; 2 uses
  %i.n = bitcast <2 x i64> %.07378 to <8 x i16>   ; 2 uses
  %i.o = sub <8 x i16> %i.n, %i.l                 ; 2 uses
  %i.p = add <8 x i16> %i.m, %i.o
  %i.q = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.m, i1 false) ; 2 uses
  %i.r = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.o, i1 false) ; 2 uses
  %i.s = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.p, i1 false)
  %i.t = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.q, <8 x i16> %i.r)
  %i.u = tail call <8 x i16> @llvm.smin.v8i16(<8 x i16> %i.s, <8 x i16> %i.t) ; 2 uses
  %i.v = icmp eq <8 x i16> %i.u, %i.q
  %i.w = icmp eq <8 x i16> %i.u, %i.r
  %i.x = select <8 x i1> %i.w, <8 x i16> %i.k, <8 x i16> %i.l
  %i.y = select <8 x i1> %i.v, <8 x i16> %i.n, <8 x i16> %i.x
  %i.z = bitcast <8 x i16> %i.y to <16 x i8>
  %i.aa = add <16 x i8> %i.j, %i.z                ; 3 uses
  %i.ab = bitcast <16 x i8> %i.aa to <2 x i64>
  %i.ac = bitcast <16 x i8> %i.aa to <8 x i16>
  %i.ad = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ac, <8 x i16> poison)
  %i.ae = bitcast <16 x i8> %i.ad to <4 x i32>
  %i.af = extractelement <4 x i32> %i.ae, i64 0
  %.0.extract.trunc.i = trunc i32 %i.af to i24
  store i24 %.0.extract.trunc.i, ptr %.082, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.07081, i64 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.082, i64 3 ; 2 uses
  %i.ai = add i64 %.07180, -3                     ; 2 uses
  %i.aj = icmp ugt i64 %i.ai, 3
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !16

._crit_edge.thread:                               ; preds = %.lr.ph
  %i.ak = bitcast <16 x i8> %i.f to <8 x i16>
  %i.al = bitcast <16 x i8> %i.aa to <8 x i16>
  br label %bb.b
end_hunk_0
