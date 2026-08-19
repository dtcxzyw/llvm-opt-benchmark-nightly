inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN4ojph5local13gen_mem_clearEPvm(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %2 = add i64 %1, -1
  %3 = and i64 %2, -8
  %i.a = add i64 %3, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.a, i1 false), !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN4ojph5local18gen_find_max_val32EPj(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_ZN4ojph5local18gen_find_max_val64EPm(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !8
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local18gen_rev_tx_to_cb32EPKvPjjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = sub i32 31, %2                           ; 4 uses
  %i.b = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %.not22 = icmp eq i32 %4, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %i.f = sub i64 %i.d, %i.c
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader32, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.e, 4294967288               ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 %i.g
  %i.i = trunc nuw i64 %n.vec to i32
  %i.j = sub i32 %4, %i.i
  %i.k = getelementptr i8, ptr %0, i64 %i.g
  %i.l = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.b, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.l, %vector.ph ], [ %i.x, %vector.body ]
  %vec.phi27 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %i.m = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.m  ; 2 uses
  %next.gep28 = getelementptr i8, ptr %0, i64 %i.m ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep28, align 4, !tbaa !10 ; 2 uses
  %wide.load29 = load <4 x i32>, ptr %i.n, align 4, !tbaa !10 ; 2 uses
  %i.o = and <4 x i32> %wide.load, splat (i32 -2147483648)
  %i.p = and <4 x i32> %wide.load29, splat (i32 -2147483648)
  %i.q = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load, i1 true)
  %i.r = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %wide.load29, i1 true)
  %i.s = shl <4 x i32> %i.q, %broadcast.splat     ; 2 uses
  %i.t = shl <4 x i32> %i.r, %broadcast.splat     ; 2 uses
  %i.u = or <4 x i32> %i.s, %i.o
  %i.v = or <4 x i32> %i.t, %i.p
  %i.w = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.u, ptr %next.gep, align 4, !tbaa !10
  store <4 x i32> %i.v, ptr %i.w, align 4, !tbaa !10
  %i.x = or <4 x i32> %i.s, %vec.phi              ; 2 uses
  %i.y = or <4 x i32> %i.t, %vec.phi27            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.y, %i.x
  %i.aa = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader32

.lr.ph.preheader32:                               ; preds = %.lr.ph.preheader, %middle.block
  %.026.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.h, %middle.block ] ; 3 uses
  %.01925.ph = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.aa, %middle.block ] ; 2 uses
  %.02024.ph = phi i32 [ %4, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 4 uses
  %.02123.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.k, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.02024.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader32
  %i.ab = getelementptr inbounds nuw i8, ptr %.02123.ph, i64 4
  %i.ac = load i32, ptr %.02123.ph, align 4, !tbaa !10 ; 2 uses
  %i.ad = and i32 %i.ac, -2147483648
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.af = shl i32 %i.ae, %i.a                     ; 2 uses
  %i.ag = or i32 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw i8, ptr %.026.ph, i64 4
  store i32 %i.ag, ptr %.026.ph, align 4, !tbaa !10
  %i.ai = or i32 %i.af, %.01925.ph                ; 2 uses
  %i.aj = add nsw i32 %.02024.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader32
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader32 ], [ %i.ai, %.lr.ph.prol ]
  %.026.unr = phi ptr [ %.026.ph, %.lr.ph.preheader32 ], [ %i.ah, %.lr.ph.prol ]
  %.01925.unr = phi i32 [ %.01925.ph, %.lr.ph.preheader32 ], [ %i.ai, %.lr.ph.prol ]
  %.02024.unr = phi i32 [ %.02024.ph, %.lr.ph.preheader32 ], [ %i.aj, %.lr.ph.prol ]
  %.02123.unr = phi ptr [ %.02123.ph, %.lr.ph.preheader32 ], [ %i.ab, %.lr.ph.prol ]
  %i.ak = icmp eq i32 %.02024.ph, 1
  br i1 %i.ak, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.019.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.aa, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ba, %.lr.ph ]
  store i32 %.019.lcssa, ptr %5, align 4, !tbaa !10
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.026 = phi ptr [ %i.az, %.lr.ph ], [ %.026.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01925 = phi i32 [ %i.ba, %.lr.ph ], [ %.01925.unr, %.lr.ph.prol.loopexit ]
  %.02024 = phi i32 [ %i.bb, %.lr.ph ], [ %.02024.unr, %.lr.ph.prol.loopexit ]
  %.02123 = phi ptr [ %i.at, %.lr.ph ], [ %.02123.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02123, i64 4
  %i.am = load i32, ptr %.02123, align 4, !tbaa !10 ; 2 uses
  %i.an = and i32 %i.am, -2147483648
  %i.ao = tail call i32 @llvm.abs.i32(i32 %i.am, i1 true)
  %i.ap = shl i32 %i.ao, %i.a                     ; 2 uses
  %i.aq = or i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.026, i64 4
  store i32 %i.aq, ptr %.026, align 4, !tbaa !10
  %i.as = or i32 %i.ap, %.01925
  %i.at = getelementptr inbounds nuw i8, ptr %.02123, i64 8
  %i.au = load i32, ptr %i.al, align 4, !tbaa !10 ; 2 uses
  %i.av = and i32 %i.au, -2147483648
  %i.aw = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.ax = shl i32 %i.aw, %i.a                     ; 2 uses
  %i.ay = or i32 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %.026, i64 8
  store i32 %i.ay, ptr %i.ar, align 4, !tbaa !10
  %i.ba = or i32 %i.ax, %i.as                     ; 2 uses
  %i.bb = add i32 %.02024, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.bb, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local18gen_rev_tx_to_cb64EPKvPmjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %5, align 8, !tbaa !8      ; 3 uses
  %.not22 = icmp eq i32 %4, 0
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = sub i32 63, %2
  %i.e = zext nneg i32 %i.d to i64                ; 4 uses
  %i.f = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 4
  %i.g = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.g, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.f, 4294967292               ; 4 uses
  %i.h = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 %i.h
  %i.j = trunc nuw i64 %n.vec to i32
  %i.k = sub i32 %4, %i.j
  %i.l = getelementptr i8, ptr %0, i64 %i.h
  %i.m = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.a, i64 0
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.e, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.m, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi27 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.n = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.n  ; 2 uses
  %next.gep28 = getelementptr i8, ptr %0, i64 %i.n ; 2 uses
  %i.o = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !8 ; 2 uses
  %wide.load29 = load <2 x i64>, ptr %i.o, align 8, !tbaa !8 ; 2 uses
  %i.p = and <2 x i64> %wide.load, splat (i64 -9223372036854775808)
  %i.q = and <2 x i64> %wide.load29, splat (i64 -9223372036854775808)
  %i.r = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load, i1 true)
  %i.s = tail call <2 x i64> @llvm.abs.v2i64(<2 x i64> %wide.load29, i1 true)
  %i.t = shl <2 x i64> %i.r, %broadcast.splat     ; 2 uses
  %i.u = shl <2 x i64> %i.s, %broadcast.splat     ; 2 uses
  %i.v = or <2 x i64> %i.t, %i.p
  %i.w = or <2 x i64> %i.u, %i.q
  %i.x = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %i.v, ptr %next.gep, align 8, !tbaa !8
  store <2 x i64> %i.w, ptr %i.x, align 8, !tbaa !8
  %i.y = or <2 x i64> %i.t, %vec.phi              ; 2 uses
  %i.z = or <2 x i64> %i.u, %vec.phi27            ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.z, %i.y
  %i.ab = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.f
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.026.ph = phi ptr [ %1, %.lr.ph ], [ %i.i, %middle.block ] ; 3 uses
  %.01925.ph = phi i64 [ %i.a, %.lr.ph ], [ %i.ab, %middle.block ] ; 2 uses
  %.02024.ph = phi i32 [ %4, %.lr.ph ], [ %i.k, %middle.block ] ; 4 uses
  %.02123.ph = phi ptr [ %0, %.lr.ph ], [ %i.l, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.02024.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %.02123.ph, i64 8
  %i.ad = load i64, ptr %.02123.ph, align 8, !tbaa !8 ; 2 uses
  %i.ae = and i64 %i.ad, -9223372036854775808
  %i.af = tail call i64 @llvm.abs.i64(i64 %i.ad, i1 true)
  %i.ag = shl i64 %i.af, %i.e                     ; 2 uses
  %i.ah = or i64 %i.ag, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %.026.ph, i64 8
  store i64 %i.ah, ptr %.026.ph, align 8, !tbaa !8
  %i.aj = or i64 %i.ag, %.01925.ph                ; 2 uses
  %i.ak = add nsw i32 %.02024.ph, -1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %.026.unr = phi ptr [ %.026.ph, %scalar.ph.preheader ], [ %i.ai, %scalar.ph.prol ]
  %.01925.unr = phi i64 [ %.01925.ph, %scalar.ph.preheader ], [ %i.aj, %scalar.ph.prol ]
  %.02024.unr = phi i32 [ %.02024.ph, %scalar.ph.preheader ], [ %i.ak, %scalar.ph.prol ]
  %.02123.unr = phi ptr [ %.02123.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.al = icmp eq i32 %.02024.ph, 1
  br i1 %i.al, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.019.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.ab, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.bb, %scalar.ph ]
  store i64 %.019.lcssa, ptr %5, align 8, !tbaa !8
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.026 = phi ptr [ %i.ba, %scalar.ph ], [ %.026.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.01925 = phi i64 [ %i.bb, %scalar.ph ], [ %.01925.unr, %scalar.ph.prol.loopexit ]
  %.02024 = phi i32 [ %i.bc, %scalar.ph ], [ %.02024.unr, %scalar.ph.prol.loopexit ]
  %.02123 = phi ptr [ %i.au, %scalar.ph ], [ %.02123.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02123, i64 8
  %i.an = load i64, ptr %.02123, align 8, !tbaa !8 ; 2 uses
  %i.ao = and i64 %i.an, -9223372036854775808
  %i.ap = tail call i64 @llvm.abs.i64(i64 %i.an, i1 true)
  %i.aq = shl i64 %i.ap, %i.e                     ; 2 uses
  %i.ar = or i64 %i.aq, %i.ao
  %i.as = getelementptr inbounds nuw i8, ptr %.026, i64 8
  store i64 %i.ar, ptr %.026, align 8, !tbaa !8
  %i.at = or i64 %i.aq, %.01925
  %i.au = getelementptr inbounds nuw i8, ptr %.02123, i64 16
  %i.av = load i64, ptr %i.am, align 8, !tbaa !8  ; 2 uses
  %i.aw = and i64 %i.av, -9223372036854775808
  %i.ax = tail call i64 @llvm.abs.i64(i64 %i.av, i1 true)
  %i.ay = shl i64 %i.ax, %i.e                     ; 2 uses
  %i.az = or i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.026, i64 16
  store i64 %i.az, ptr %i.as, align 8, !tbaa !8
  %i.bb = or i64 %i.ay, %i.at                     ; 2 uses
  %i.bc = add i32 %.02024, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local18gen_irv_tx_to_cb32EPKvPjjfjS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !10     ; 3 uses
  %.not21 = icmp eq i32 %4, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader31, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.b, 4294967288               ; 4 uses
  %i.c = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %0, i64 %i.c
  %i.f = trunc nuw i64 %n.vec to i32
  %i.g = sub i32 %4, %i.f
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.a, i64 0
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.h, %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi26 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.w, %vector.body ]
  %i.i = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.i  ; 2 uses
  %next.gep27 = getelementptr i8, ptr %0, i64 %i.i ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep27, i64 16
  %wide.load = load <4 x float>, ptr %next.gep27, align 4, !tbaa !18
  %wide.load28 = load <4 x float>, ptr %i.j, align 4, !tbaa !18
  %i.k = fmul <4 x float> %broadcast.splat, %wide.load
  %i.l = fmul <4 x float> %broadcast.splat, %wide.load28
  %i.m = fptosi <4 x float> %i.k to <4 x i32>     ; 2 uses
  %i.n = fptosi <4 x float> %i.l to <4 x i32>     ; 2 uses
  %i.o = and <4 x i32> %i.m, splat (i32 -2147483648)
  %i.p = and <4 x i32> %i.n, splat (i32 -2147483648)
  %i.q = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.m, i1 true) ; 2 uses
  %i.r = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.n, i1 true) ; 2 uses
  %i.s = or disjoint <4 x i32> %i.o, %i.q
  %i.t = or disjoint <4 x i32> %i.p, %i.r
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.s, ptr %next.gep, align 4, !tbaa !10
  store <4 x i32> %i.t, ptr %i.u, align 4, !tbaa !10
  %i.v = or <4 x i32> %i.q, %vec.phi              ; 2 uses
  %i.w = or <4 x i32> %i.r, %vec.phi26            ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.w, %i.v
  %i.y = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.b
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader31

.lr.ph.preheader31:                               ; preds = %.lr.ph.preheader, %middle.block
  %.025.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01824.ph = phi i32 [ %i.a, %.lr.ph.preheader ], [ %i.y, %middle.block ]
  %.01923.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.02022.ph = phi i32 [ %4, %.lr.ph.preheader ], [ %i.g, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.018.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.y, %middle.block ], [ %i.ah, %.lr.ph ]
  store i32 %.018.lcssa, ptr %5, align 4, !tbaa !10
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader31, %.lr.ph
  %.025 = phi ptr [ %i.ag, %.lr.ph ], [ %.025.ph, %.lr.ph.preheader31 ] ; 2 uses
  %.01824 = phi i32 [ %i.ah, %.lr.ph ], [ %.01824.ph, %.lr.ph.preheader31 ]
  %.01923 = phi ptr [ %i.z, %.lr.ph ], [ %.01923.ph, %.lr.ph.preheader31 ] ; 2 uses
  %.02022 = phi i32 [ %i.ai, %.lr.ph ], [ %.02022.ph, %.lr.ph.preheader31 ]
  %i.z = getelementptr inbounds nuw i8, ptr %.01923, i64 4
  %i.aa = load float, ptr %.01923, align 4, !tbaa !18
  %i.ab = fmul float %3, %i.aa
  %i.ac = fptosi float %i.ab to i32               ; 2 uses
  %i.ad = and i32 %i.ac, -2147483648
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.ac, i1 true) ; 2 uses
  %i.af = or disjoint i32 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.025, i64 4
  store i32 %i.af, ptr %.025, align 4, !tbaa !10
  %i.ah = or i32 %i.ae, %.01824                   ; 2 uses
  %i.ai = add i32 %.02022, -1                     ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local20gen_rev_tx_from_cb32EPKjPvjfj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = sub i32 31, %2                           ; 4 uses
  %.not15 = icmp eq i32 %4, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %i.e = sub i64 %i.c, %i.b
  %diff.check = icmp ugt i64 %i.e, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.d, 4294967288               ; 4 uses
  %i.f = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 %i.f
  %i.h = trunc nuw i64 %n.vec to i32
  %i.i = sub i32 %4, %i.h
  %i.j = getelementptr i8, ptr %1, i64 %i.f
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %i.k ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !10 ; 2 uses
  %wide.load20 = load <4 x i32>, ptr %i.l, align 4, !tbaa !10 ; 2 uses
  %i.m = and <4 x i32> %wide.load, splat (i32 2147483647)
  %i.n = and <4 x i32> %wide.load20, splat (i32 2147483647)
  %i.o = lshr <4 x i32> %i.m, %broadcast.splat    ; 2 uses
  %i.p = lshr <4 x i32> %i.n, %broadcast.splat    ; 2 uses
  %i.q = sub nsw <4 x i32> zeroinitializer, %i.o
  %i.r = sub nsw <4 x i32> zeroinitializer, %i.p
  %i.s = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.t = icmp slt <4 x i32> %wide.load20, zeroinitializer
  %i.u = select <4 x i1> %i.s, <4 x i32> %i.q, <4 x i32> %i.o
  %i.v = select <4 x i1> %i.t, <4 x i32> %i.r, <4 x i32> %i.p
  %i.w = getelementptr i8, ptr %next.gep19, i64 16
  store <4 x i32> %i.u, ptr %next.gep19, align 4, !tbaa !10
  store <4 x i32> %i.v, ptr %i.w, align 4, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader23

.lr.ph.preheader23:                               ; preds = %.lr.ph.preheader, %middle.block
  %.018.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.g, %middle.block ] ; 3 uses
  %.01117.ph = phi i32 [ %4, %.lr.ph.preheader ], [ %i.i, %middle.block ] ; 4 uses
  %.01216.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.j, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.01117.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader23
  %i.y = getelementptr inbounds nuw i8, ptr %.018.ph, i64 4
  %i.z = load i32, ptr %.018.ph, align 4, !tbaa !10 ; 2 uses
  %i.aa = and i32 %i.z, 2147483647
  %i.ab = lshr i32 %i.aa, %i.a                    ; 2 uses
  %i.ac = sub nsw i32 0, %i.ab
  %.not1314.prol = icmp slt i32 %i.z, 0
  %i.ad = select i1 %.not1314.prol, i32 %i.ac, i32 %i.ab
  %i.ae = getelementptr inbounds nuw i8, ptr %.01216.ph, i64 4
  store i32 %i.ad, ptr %.01216.ph, align 4, !tbaa !10
  %i.af = add nsw i32 %.01117.ph, -1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader23
  %.018.unr = phi ptr [ %.018.ph, %.lr.ph.preheader23 ], [ %i.y, %.lr.ph.prol ]
  %.01117.unr = phi i32 [ %.01117.ph, %.lr.ph.preheader23 ], [ %i.af, %.lr.ph.prol ]
  %.01216.unr = phi ptr [ %.01216.ph, %.lr.ph.preheader23 ], [ %i.ae, %.lr.ph.prol ]
  %i.ag = icmp eq i32 %.01117.ph, 1
  br i1 %i.ag, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.018 = phi ptr [ %i.ao, %.lr.ph ], [ %.018.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.01117 = phi i32 [ %i.av, %.lr.ph ], [ %.01117.unr, %.lr.ph.prol.loopexit ]
  %.01216 = phi ptr [ %i.au, %.lr.ph ], [ %.01216.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.018, i64 4
  %i.ai = load i32, ptr %.018, align 4, !tbaa !10 ; 2 uses
  %i.aj = and i32 %i.ai, 2147483647
  %i.ak = lshr i32 %i.aj, %i.a                    ; 2 uses
  %i.al = sub nsw i32 0, %i.ak
  %.not1314 = icmp slt i32 %i.ai, 0
  %i.am = select i1 %.not1314, i32 %i.al, i32 %i.ak
  %i.an = getelementptr inbounds nuw i8, ptr %.01216, i64 4
  store i32 %i.am, ptr %.01216, align 4, !tbaa !10
  %i.ao = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.ap = load i32, ptr %i.ah, align 4, !tbaa !10 ; 2 uses
  %i.aq = and i32 %i.ap, 2147483647
  %i.ar = lshr i32 %i.aq, %i.a                    ; 2 uses
  %i.as = sub nsw i32 0, %i.ar
  %.not1314.1 = icmp slt i32 %i.ap, 0
  %i.at = select i1 %.not1314.1, i32 %i.as, i32 %i.ar
  %i.au = getelementptr inbounds nuw i8, ptr %.01216, i64 8
  store i32 %i.at, ptr %i.an, align 4, !tbaa !10
  %i.av = add i32 %.01117, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.av, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local20gen_rev_tx_from_cb64EPKmPvjfj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %.not15 = icmp eq i32 %4, 0
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = ptrtoaddr ptr %1 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = sub i32 63, %2
  %i.d = zext nneg i32 %i.c to i64                ; 4 uses
  %i.e = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %i.f = sub i64 %i.b, %i.a
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.e, 4294967292               ; 4 uses
  %i.g = shl nuw nsw i64 %n.vec, 3                ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 %i.g
  %i.i = trunc nuw i64 %n.vec to i32
  %i.j = sub i32 %4, %i.i
  %i.k = getelementptr i8, ptr %1, i64 %i.g
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.d, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.l = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.l  ; 2 uses
  %next.gep19 = getelementptr i8, ptr %1, i64 %i.l ; 2 uses
  %i.m = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !8 ; 2 uses
  %wide.load20 = load <2 x i64>, ptr %i.m, align 8, !tbaa !8 ; 2 uses
  %i.n = and <2 x i64> %wide.load, splat (i64 9223372036854775807)
  %i.o = and <2 x i64> %wide.load20, splat (i64 9223372036854775807)
  %i.p = lshr <2 x i64> %i.n, %broadcast.splat    ; 2 uses
  %i.q = lshr <2 x i64> %i.o, %broadcast.splat    ; 2 uses
  %i.r = sub nsw <2 x i64> zeroinitializer, %i.p
  %i.s = sub nsw <2 x i64> zeroinitializer, %i.q
  %i.t = icmp slt <2 x i64> %wide.load, zeroinitializer
  %i.u = icmp slt <2 x i64> %wide.load20, zeroinitializer
  %i.v = select <2 x i1> %i.t, <2 x i64> %i.r, <2 x i64> %i.p
  %i.w = select <2 x i1> %i.u, <2 x i64> %i.s, <2 x i64> %i.q
  %i.x = getelementptr i8, ptr %next.gep19, i64 16
  store <2 x i64> %i.v, ptr %next.gep19, align 8, !tbaa !8
  store <2 x i64> %i.w, ptr %i.x, align 8, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.018.ph = phi ptr [ %0, %.lr.ph ], [ %i.h, %middle.block ] ; 3 uses
  %.01117.ph = phi i32 [ %4, %.lr.ph ], [ %i.j, %middle.block ] ; 4 uses
  %.01216.ph = phi ptr [ %1, %.lr.ph ], [ %i.k, %middle.block ] ; 3 uses
  %xtraiter = and i32 %.01117.ph, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %.018.ph, i64 8
  %i.aa = load i64, ptr %.018.ph, align 8, !tbaa !8 ; 2 uses
  %i.ab = and i64 %i.aa, 9223372036854775807
  %i.ac = lshr i64 %i.ab, %i.d                    ; 2 uses
  %i.ad = sub nsw i64 0, %i.ac
  %.not1314.prol = icmp slt i64 %i.aa, 0
  %i.ae = select i1 %.not1314.prol, i64 %i.ad, i64 %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %.01216.ph, i64 8
  store i64 %i.ae, ptr %.01216.ph, align 8, !tbaa !8
  %i.ag = add nsw i32 %.01117.ph, -1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.018.unr = phi ptr [ %.018.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %.01117.unr = phi i32 [ %.01117.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %.01216.unr = phi ptr [ %.01216.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %i.ah = icmp eq i32 %.01117.ph, 1
  br i1 %i.ah, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.018 = phi ptr [ %i.ap, %scalar.ph ], [ %.018.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.01117 = phi i32 [ %i.aw, %scalar.ph ], [ %.01117.unr, %scalar.ph.prol.loopexit ]
  %.01216 = phi ptr [ %i.av, %scalar.ph ], [ %.01216.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.018, i64 8
  %i.aj = load i64, ptr %.018, align 8, !tbaa !8  ; 2 uses
  %i.ak = and i64 %i.aj, 9223372036854775807
  %i.al = lshr i64 %i.ak, %i.d                    ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.not1314 = icmp slt i64 %i.aj, 0
  %i.an = select i1 %.not1314, i64 %i.am, i64 %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %.01216, i64 8
  store i64 %i.an, ptr %.01216, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %.018, i64 16
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !8  ; 2 uses
  %i.ar = and i64 %i.aq, 9223372036854775807
  %i.as = lshr i64 %i.ar, %i.d                    ; 2 uses
  %i.at = sub nsw i64 0, %i.as
  %.not1314.1 = icmp slt i64 %i.aq, 0
  %i.au = select i1 %.not1314.1, i64 %i.at, i64 %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %.01216, i64 16
  store i64 %i.au, ptr %i.ao, align 8, !tbaa !8
  %i.aw = add i32 %.01117, -2                     ; 2 uses
  %.not.1 = icmp eq i32 %i.aw, 0
  br i1 %.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZN4ojph5local20gen_irv_tx_from_cb32EPKjPvjfj(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %.not14 = icmp eq i32 %4, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %4 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, 4294967288               ; 4 uses
  %i.b = shl nuw nsw i64 %n.vec, 2                ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 %i.b
  %i.d = getelementptr i8, ptr %1, i64 %i.b
  %i.e = trunc nuw i64 %n.vec to i32
  %i.f = sub i32 %4, %i.e
  %broadcast.splatinsert = insertelement <4 x float> poison, float %3, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 2                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.g  ; 2 uses
  %next.gep18 = getelementptr i8, ptr %1, i64 %i.g ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !10 ; 2 uses
  %wide.load19 = load <4 x i32>, ptr %i.h, align 4, !tbaa !10 ; 2 uses
  %i.i = and <4 x i32> %wide.load, splat (i32 2147483647)
  %i.j = and <4 x i32> %wide.load19, splat (i32 2147483647)
  %i.k = uitofp nneg <4 x i32> %i.i to <4 x float>
  %i.l = uitofp nneg <4 x i32> %i.j to <4 x float>
  %i.m = fmul <4 x float> %broadcast.splat, %i.k  ; 2 uses
  %i.n = fmul <4 x float> %broadcast.splat, %i.l  ; 2 uses
  %i.o = fneg <4 x float> %i.m
  %i.p = fneg <4 x float> %i.n
  %i.q = icmp slt <4 x i32> %wide.load, zeroinitializer
  %i.r = icmp slt <4 x i32> %wide.load19, zeroinitializer
  %i.s = select <4 x i1> %i.q, <4 x float> %i.o, <4 x float> %i.m
  %i.t = select <4 x i1> %i.r, <4 x float> %i.p, <4 x float> %i.n
  %i.u = getelementptr i8, ptr %next.gep18, i64 16
  store <4 x float> %i.s, ptr %next.gep18, align 4, !tbaa !18
  store <4 x float> %i.t, ptr %i.u, align 4, !tbaa !18
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader22

.lr.ph.preheader22:                               ; preds = %.lr.ph.preheader, %middle.block
  %.017.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  %.01016.ph = phi ptr [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.01115.ph = phi i32 [ %4, %.lr.ph.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader22, %.lr.ph
  %.017 = phi ptr [ %i.w, %.lr.ph ], [ %.017.ph, %.lr.ph.preheader22 ] ; 2 uses
  %.01016 = phi ptr [ %i.ad, %.lr.ph ], [ %.01016.ph, %.lr.ph.preheader22 ] ; 2 uses
  %.01115 = phi i32 [ %i.ae, %.lr.ph ], [ %.01115.ph, %.lr.ph.preheader22 ]
  %i.w = getelementptr inbounds nuw i8, ptr %.017, i64 4
  %i.x = load i32, ptr %.017, align 4, !tbaa !10  ; 2 uses
  %i.y = and i32 %i.x, 2147483647
  %i.z = uitofp nneg i32 %i.y to float
  %i.aa = fmul float %3, %i.z                     ; 2 uses
  %i.ab = fneg float %i.aa
  %.not1213 = icmp slt i32 %i.x, 0
  %i.ac = select i1 %.not1213, float %i.ab, float %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %.01016, i64 4
  store float %i.ac, ptr %.01016, align 4, !tbaa !18
  %i.ae = add i32 %.01115, -1                     ; 2 uses
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !27
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.abs.v2i64(<2 x i64>, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"long", !6, i64 0}
!10 = !{!5, !5, i64 0}
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13, !14}
!17 = distinct !{!17, !12, !13}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = distinct !{!20, !12, !13, !14}
!21 = distinct !{!21, !12, !14, !13}
!22 = distinct !{!22, !12, !13, !14}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !12, !13, !14}
!25 = distinct !{!25, !12, !13}
!26 = distinct !{!26, !12, !13, !14}
!27 = distinct !{!27, !12, !14, !13}
end_hunk_0
