Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/link?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @upb_MiniTable_SetSubMessage(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !7
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.e = load i8, ptr %i.d, align 2, !tbaa !10
  switch i8 %i.e, label %.critedge [
    i8 11, label %bb.b
    i8 10, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i8, ptr %i.f, align 4, !tbaa !7
  %i.h = and i8 %i.g, 4
  %.not14 = icmp eq i8 %i.h, 0
  br i1 %.not14, label %bb.d, label %.critedge, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  %i.k = and i8 %i.j, -4
  store i8 %i.k, ptr %i.i, align 1, !tbaa !12
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br i1 %.not, label %bb.f, label %.critedge, !prof !11

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i16, ptr %i.l, align 4, !tbaa !13
  %i.n = zext i16 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o
  store ptr %2, ptr %i.p, align 8, !tbaa !7
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.a, %bb.e, %bb.f
  %.1 = phi i1 [ false, %bb.e ], [ true, %bb.f ], [ false, %bb.c ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @upb_MiniTable_SetSubEnum(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.b = load i8, ptr %i.a, align 2, !tbaa !10
  %.not = icmp eq i8 %i.b, 14
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !7
  %i.e = and i8 %i.d, 4
  %.not8 = icmp eq i8 %i.e, 0
  br i1 %.not8, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %2, i64 8
  %.val = load i32, ptr %i.f, align 4, !tbaa !6
  %i.g = trunc i32 %.val to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i16, ptr %i.h, align 4, !tbaa !13
  %i.j = zext i16 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store ptr %2, ptr %i.l, align 8, !tbaa !7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @upb_MiniTable_GetSubList(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10
  %.val27 = load i16, ptr %i.a, align 2, !tbaa !14 ; 4 uses
  %.not = icmp eq i16 %.val27, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i16 %.val27 to i64      ; 3 uses
  %.val29.pre50 = load ptr, ptr %0, align 8, !tbaa !17
  br label %.lr.ph

.preheader:                                       ; preds = %.critedge
  %i.b = shl i32 %.124, 16
  %.val28.pre53 = load ptr, ptr %0, align 8, !tbaa !17 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i16 %.val27, 1
  br i1 %i.c, label %.lr.ph41.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader
  %unroll_iter = and i64 %wide.trip.count, 65534
  br label %.lr.ph41

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %.val29 = phi ptr [ %.val29.pre50, %.lr.ph.preheader ], [ %.val2951, %.critedge ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.02334 = phi i32 [ 0, %.lr.ph.preheader ], [ %.124, %.critedge ] ; 4 uses
  %.02533 = phi ptr [ %1, %.lr.ph.preheader ], [ %.126, %.critedge ] ; 5 uses
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %.val29, i64 %indvars.iv ; 3 uses
  %i.e = getelementptr i8, ptr %i.d, i64 10
  %.val30 = load i8, ptr %i.e, align 2, !tbaa !10 ; 2 uses
  %i.f = getelementptr i8, ptr %i.d, i64 11
  %.val31 = load i8, ptr %i.f, align 1, !tbaa !12
  %i.g = zext i8 %.val30 to i64
  %i.h = and i8 %.val31, 16
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %upb_MiniTableField_CType.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  switch i8 %.val30, label %upb_MiniTableField_CType.exit [
    i8 5, label %.critedge
    i8 12, label %.critedge
  ]

upb_MiniTableField_CType.exit:                    ; preds = %bb.b, %.lr.ph
  %i.i = add nuw nsw i64 %i.g, 4294967295
  %i.j = and i64 %i.i, 4294967295
  %i.k = add nsw i64 %i.j, -9
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.c, label %.critedge

bb.c:                                             ; preds = %upb_MiniTableField_CType.exit
  store ptr %i.d, ptr %.02533, align 8, !tbaa !17
  %i.m = getelementptr inbounds nuw i8, ptr %.02533, i64 8
  %i.n = add i32 %.02334, 1
  %.val29.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.b, %bb.c, %upb_MiniTableField_CType.exit
  %.val2951 = phi ptr [ %.val29.pre, %bb.c ], [ %.val29, %upb_MiniTableField_CType.exit ], [ %.val29, %bb.b ], [ %.val29, %bb.b ]
  %.126 = phi ptr [ %i.m, %bb.c ], [ %.02533, %upb_MiniTableField_CType.exit ], [ %.02533, %bb.b ], [ %.02533, %bb.b ] ; 3 uses
  %.124 = phi i32 [ %i.n, %bb.c ], [ %.02334, %upb_MiniTableField_CType.exit ], [ %.02334, %bb.b ], [ %.02334, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !19

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph41.epil.preheader

.lr.ph41.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.val28.epil.init = phi ptr [ %.val28.pre53, %.preheader ], [ %.val2854.1, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv45.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next46.1, %._crit_edge.loopexit.unr-lcssa ]
  %.02239.epil.init = phi i32 [ 0, %.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.238.epil.init = phi ptr [ %.126, %.preheader ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod53 = trunc i16 %.val27 to i1
  tail call void @llvm.assume(i1 %lcmp.mod53)
  %i.o = getelementptr inbounds nuw [12 x i8], ptr %.val28.epil.init, i64 %indvars.iv45.epil.init ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 10
  %.val32.epil = load i8, ptr %i.p, align 2, !tbaa !10
  %i.q = icmp eq i8 %.val32.epil, 14
  br i1 %i.q, label %bb.d, label %._crit_edge.loopexit

bb.d:                                             ; preds = %.lr.ph41.epil.preheader
  store ptr %i.o, ptr %.238.epil.init, align 8, !tbaa !17
  %i.r = add i32 %.02239.epil.init, 1
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph41.epil.preheader, %bb.d, %._crit_edge.loopexit.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.r, %bb.d ], [ %.02239.epil.init, %.lr.ph41.epil.preheader ]
  %i.s = or i32 %.1.lcssa, %i.b
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit
  %.022.lcssa = phi i32 [ 0, %bb.a ], [ %i.s, %._crit_edge.loopexit ]
  ret i32 %.022.lcssa

.lr.ph41:                                         ; preds = %bb.g, %.preheader.new
  %.val28 = phi ptr [ %.val28.pre53, %.preheader.new ], [ %.val2854.1, %bb.g ] ; 2 uses
  %indvars.iv45 = phi i64 [ 0, %.preheader.new ], [ %indvars.iv.next46.1, %bb.g ] ; 3 uses
  %.02239 = phi i32 [ 0, %.preheader.new ], [ %.1.1, %bb.g ] ; 2 uses
  %.238 = phi ptr [ %.126, %.preheader.new ], [ %.3.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %.val28, i64 %indvars.iv45 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 10
  %.val32 = load i8, ptr %i.u, align 2, !tbaa !10
  %i.v = icmp eq i8 %.val32, 14
  br i1 %i.v, label %bb.e, label %.lr.ph41.1

bb.e:                                             ; preds = %.lr.ph41
  store ptr %i.t, ptr %.238, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %.238, i64 8
  %i.x = add i32 %.02239, 1
  %.val28.pre = load ptr, ptr %0, align 8, !tbaa !17
  br label %.lr.ph41.1

.lr.ph41.1:                                       ; preds = %bb.e, %.lr.ph41
  %.val2854 = phi ptr [ %.val28.pre, %bb.e ], [ %.val28, %.lr.ph41 ] ; 2 uses
  %.3 = phi ptr [ %i.w, %bb.e ], [ %.238, %.lr.ph41 ] ; 3 uses
  %.1 = phi i32 [ %i.x, %bb.e ], [ %.02239, %.lr.ph41 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %.val2854, i64 %indvars.iv45 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 22
  %.val32.1 = load i8, ptr %i.z, align 2, !tbaa !10
  %i.aa = icmp eq i8 %.val32.1, 14
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph41.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store ptr %i.ab, ptr %.3, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ad = add i32 %.1, 1
  %.val28.pre.1 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph41.1
  %.val2854.1 = phi ptr [ %.val28.pre.1, %bb.f ], [ %.val2854, %.lr.ph41.1 ] ; 2 uses
  %.3.1 = phi ptr [ %i.ac, %bb.f ], [ %.3, %.lr.ph41.1 ] ; 2 uses
  %.1.1 = phi i32 [ %i.ad, %bb.f ], [ %.1, %.lr.ph41.1 ] ; 3 uses
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph41, !llvm.loop !20
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @upb_MiniTable_Link(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 10         ; 3 uses
  %.val6692 = load i16, ptr %i.a, align 2, !tbaa !14 ; 2 uses
  %.not6193.not = icmp eq i16 %.val6692, 0
  br i1 %.not6193.not, label %.critedge65, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %bb.b

.critedge.preheader:                              ; preds = %.critedge87
  %.not6397.not = icmp eq i16 %.val66, 0
  br i1 %.not6397.not, label %.critedge65, label %.lr.ph100

.lr.ph100:                                        ; preds = %.critedge.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.val67.pre110 = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %.critedge87
  %.val66107 = phi i16 [ %.val6692, %.lr.ph ], [ %.val66, %.critedge87 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge87 ] ; 2 uses
  %.04994 = phi i32 [ 0, %.lr.ph ], [ %.251.ph, %.critedge87 ] ; 5 uses
  %.val68 = load ptr, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw [12 x i8], ptr %.val68, i64 %indvars.iv ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 10
  %.val69 = load i8, ptr %i.e, align 2, !tbaa !10 ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 11       ; 2 uses
  %.val70 = load i8, ptr %i.f, align 1, !tbaa !12 ; 2 uses
  %i.g = zext i8 %.val69 to i64
  %i.h = and i8 %.val70, 16
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %upb_MiniTableField_CType.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i8 %.val69, label %upb_MiniTableField_CType.exit [
    i8 5, label %.critedge87
    i8 12, label %.critedge87
  ]

upb_MiniTableField_CType.exit:                    ; preds = %bb.c, %bb.b
  %i.i = add nuw nsw i64 %i.g, 4294967295
  %i.j = and i64 %i.i, 4294967295
  %i.k = add nsw i64 %i.j, -9
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %bb.d, label %.critedge87

bb.d:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.m = add i32 %.04994, 1                       ; 3 uses
  %i.n = zext i32 %.04994 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !24   ; 3 uses
  %i.q = zext i32 %i.m to i64
  %i.r = icmp ult i64 %2, %i.q
  br i1 %i.r, label %.critedge.thread78, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.critedge87, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.t = load i8, ptr %i.s, align 4, !tbaa !7
  %i.u = and i8 %i.t, 4
  %.not.i = icmp eq i8 %i.u, 0                    ; 2 uses
  switch i8 %.val69, label %.critedge.thread78 [
    i8 11, label %bb.g
    i8 10, label %bb.j
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %.not.i, label %upb_MiniTable_SetSubMessage.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load i8, ptr %i.b, align 4, !tbaa !7
  %i.w = and i8 %i.v, 4
  %.not14.i = icmp eq i8 %i.w, 0
  br i1 %.not14.i, label %bb.i, label %.critedge.thread78, !prof !11

bb.i:                                             ; preds = %bb.h
  %i.x = and i8 %.val70, -4
  store i8 %i.x, ptr %i.f, align 1, !tbaa !12
  br label %upb_MiniTable_SetSubMessage.exit

bb.j:                                             ; preds = %bb.f
  br i1 %.not.i, label %upb_MiniTable_SetSubMessage.exit, label %.critedge.thread78, !prof !11

upb_MiniTable_SetSubMessage.exit:                 ; preds = %bb.g, %bb.i, %bb.j
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.z = load i16, ptr %i.y, align 4, !tbaa !13
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 2
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ab
  store ptr %i.p, ptr %i.ac, align 8, !tbaa !7
  %.val66.pre = load i16, ptr %i.a, align 2, !tbaa !14
  br label %.critedge87

.critedge87:                                      ; preds = %bb.c, %bb.c, %upb_MiniTableField_CType.exit, %upb_MiniTable_SetSubMessage.exit, %bb.e
  %.val66 = phi i16 [ %.val66107, %bb.e ], [ %.val66.pre, %upb_MiniTable_SetSubMessage.exit ], [ %.val66107, %upb_MiniTableField_CType.exit ], [ %.val66107, %bb.c ], [ %.val66107, %bb.c ] ; 4 uses
  %.251.ph = phi i32 [ %i.m, %bb.e ], [ %i.m, %upb_MiniTable_SetSubMessage.exit ], [ %.04994, %upb_MiniTableField_CType.exit ], [ %.04994, %bb.c ], [ %.04994, %bb.c ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = zext i16 %.val66 to i64
  %.not61 = icmp samesign ult i64 %indvars.iv.next, %i.ad
  br i1 %.not61, label %bb.b, label %.critedge.preheader, !llvm.loop !21

bb.k:                                             ; preds = %.lr.ph100, %.critedge
  %.val110 = phi i16 [ %.val66, %.lr.ph100 ], [ %.val, %.critedge ] ; 2 uses
  %.val67 = phi ptr [ %.val67.pre110, %.lr.ph100 ], [ %.val67111, %.critedge ] ; 3 uses
  %indvars.iv104 = phi i64 [ 0, %.lr.ph100 ], [ %indvars.iv.next105, %.critedge ] ; 2 uses
  %.04598 = phi i32 [ 0, %.lr.ph100 ], [ %.247.ph, %.critedge ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %.val67, i64 %indvars.iv104 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 10
  %.val71 = load i8, ptr %i.af, align 2, !tbaa !10
  %i.ag = icmp eq i8 %.val71, 14
  br i1 %i.ag, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.ah = add i32 %.04598, 1                      ; 3 uses
  %i.ai = zext i32 %.04598 to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26 ; 3 uses
  %i.al = zext i32 %i.ah to i64
  %i.am = icmp ult i64 %4, %i.al
  br i1 %i.am, label %.critedge.thread78, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not62 = icmp eq ptr %i.ak, null
  br i1 %.not62, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load i8, ptr %i.c, align 4, !tbaa !7
  %i.ao = and i8 %i.an, 4
  %.not8.i = icmp eq i8 %i.ao, 0
  br i1 %.not8.i, label %upb_MiniTable_SetSubEnum.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr i8, ptr %i.ak, i64 8
  %.val.i = load i32, ptr %i.ap, align 4, !tbaa !6
  %i.aq = trunc i32 %.val.i to i1
  br i1 %i.aq, label %upb_MiniTable_SetSubEnum.exit.thread, label %.critedge.thread78

upb_MiniTable_SetSubEnum.exit.thread:             ; preds = %bb.n, %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.as = load i16, ptr %i.ar, align 4, !tbaa !13
  %i.at = zext i16 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.au
  store ptr %i.ak, ptr %i.av, align 8, !tbaa !7
  %.val67.pre = load ptr, ptr %0, align 8, !tbaa !17
  %.val.pre = load i16, ptr %i.a, align 2, !tbaa !14
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %upb_MiniTable_SetSubEnum.exit.thread, %bb.m
  %.val = phi i16 [ %.val110, %bb.m ], [ %.val.pre, %upb_MiniTable_SetSubEnum.exit.thread ], [ %.val110, %bb.k ] ; 2 uses
  %.val67111 = phi ptr [ %.val67, %bb.m ], [ %.val67.pre, %upb_MiniTable_SetSubEnum.exit.thread ], [ %.val67, %bb.k ]
  %.247.ph = phi i32 [ %i.ah, %bb.m ], [ %i.ah, %upb_MiniTable_SetSubEnum.exit.thread ], [ %.04598, %bb.k ] ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %i.aw = zext i16 %.val to i64
  %.not63 = icmp samesign ult i64 %indvars.iv.next105, %i.aw
  br i1 %.not63, label %bb.k, label %.critedge65.loopexit, !llvm.loop !22

.critedge65.loopexit:                             ; preds = %.critedge
  %i.ax = zext i32 %.247.ph to i64
  br label %.critedge65

.critedge65:                                      ; preds = %bb.a, %.critedge65.loopexit, %.critedge.preheader
  %.049.lcssa116.shrunk = phi i32 [ %.251.ph, %.critedge.preheader ], [ %.251.ph, %.critedge65.loopexit ], [ 0, %bb.a ]
  %.045.lcssa = phi i64 [ 0, %.critedge.preheader ], [ %i.ax, %.critedge65.loopexit ], [ 0, %bb.a ]
  %.049.lcssa116 = zext i32 %.049.lcssa116.shrunk to i64
  %i.ay = icmp eq i64 %2, %.049.lcssa116
  %i.az = icmp eq i64 %4, %.045.lcssa
  %i.ba = select i1 %i.ay, i1 %i.az, i1 false
  br label %.critedge.thread78

.critedge.thread78:                               ; preds = %bb.f, %bb.h, %bb.j, %bb.d, %bb.o, %bb.l, %.critedge65
  %.10 = phi i1 [ %i.ba, %.critedge65 ], [ false, %bb.o ], [ false, %bb.l ], [ false, %bb.d ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ]
  ret i1 %.10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!4, !4, i64 0}
!8 = !{!"short", !4, i64 0}
!9 = !{!"upb_MiniTableField", !5, i64 0, !8, i64 4, !8, i64 6, !8, i64 8, !4, i64 10, !4, i64 11}
!10 = !{!9, !4, i64 10}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!9, !4, i64 11}
!13 = !{!9, !8, i64 8}
!14 = !{!8, !8, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = !{!"p1 _ZTS18upb_MiniTableField", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"llvm.loop.mustprogress"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !18}
!23 = !{!"p1 _ZTS13upb_MiniTable", !15, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"p1 _ZTS17upb_MiniTableEnum", !15, i64 0}
!26 = !{!25, !25, i64 0}
end_hunk_0
