inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6Assimp14CommentRemover18RemoveLineCommentsEPKcPcc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i8 noundef signext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #3
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #3 ; 10 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.b) ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.critedge._crit_edge, label %.lr.ph53

.lr.ph53:                                         ; preds = %bb.a, %.critedge2
  %.052 = phi i64 [ %i.u, %.critedge2 ], [ 0, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.052
  %i.d = load i8, ptr %i.c, align 1
  switch i8 %i.d, label %.critedge [
    i8 34, label %bb.b
    i8 39, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph53, %.lr.ph53
  %i.e = add nuw i64 %.052, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %i.e) ; 2 uses
  %i.f = add nuw i64 %.052, 1                     ; 2 uses
  %i.g = icmp ult i64 %i.f, %i.b
  br i1 %i.g, label %.lr.ph57, label %.critedge

bb.c:                                             ; preds = %.lr.ph57
  %i.h = add nuw i64 %i.j, 1                      ; 2 uses
  %i.i = icmp ult i64 %i.h, %i.b
  br i1 %i.i, label %.lr.ph57, label %.critedge

.lr.ph57:                                         ; preds = %bb.b, %bb.c
  %i.j = phi i64 [ %i.h, %bb.c ], [ %i.f, %bb.b ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  switch i8 %i.l, label %bb.c [
    i8 34, label %.critedge
    i8 39, label %.critedge
  ]

.critedge:                                        ; preds = %bb.c, %.lr.ph57, %.lr.ph57, %bb.b, %.lr.ph53
  %.2 = phi i64 [ %.052, %.lr.ph53 ], [ %umax, %bb.b ], [ %i.j, %.lr.ph57 ], [ %i.j, %.lr.ph57 ], [ %umax, %bb.c ] ; 5 uses
  %i.m = sub i64 %i.b, %.2
  %i.n = icmp ult i64 %i.m, %spec.select
  br i1 %i.n, label %.critedge._crit_edge, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.2
  %i.p = tail call i32 @strncmp(ptr noundef nonnull %i.o, ptr noundef nonnull %0, i64 noundef %spec.select) #3
  %.not42 = icmp eq i32 %i.p, 0
  %i.q = icmp ult i64 %.2, %i.b
  %or.cond = and i1 %.not42, %i.q
  br i1 %or.cond, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.d, %_ZN6Assimp9IsLineEndIcEEbT_.exit
  %.343 = phi i64 [ %i.t, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.2, %bb.d ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.343 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  switch i8 %i.s, label %_ZN6Assimp9IsLineEndIcEEbT_.exit [
    i8 13, label %.critedge2
    i8 10, label %.critedge2
    i8 0, label %.critedge2
    i8 12, label %.critedge2
  ]

_ZN6Assimp9IsLineEndIcEEbT_.exit:                 ; preds = %.lr.ph
  %i.t = add i64 %.343, 1                         ; 2 uses
  store i8 %2, ptr %i.r, align 1
  %exitcond.not = icmp eq i64 %i.t, %i.b
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph, !llvm.loop !3

.critedge2:                                       ; preds = %_ZN6Assimp9IsLineEndIcEEbT_.exit, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.d
  %.4 = phi i64 [ %.2, %bb.d ], [ %.343, %.lr.ph ], [ %i.b, %_ZN6Assimp9IsLineEndIcEEbT_.exit ], [ %.343, %.lr.ph ], [ %.343, %.lr.ph ], [ %.343, %.lr.ph ]
  %i.u = add i64 %.4, 1                           ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.b
  br i1 %i.v, label %.lr.ph53, label %.critedge._crit_edge, !llvm.loop !5

.critedge._crit_edge:                             ; preds = %.critedge2, %.critedge, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @_ZN6Assimp14CommentRemover23RemoveMultiLineCommentsEPKcS2_Pcc(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #3
  %.fr43 = freeze i64 %i.a                        ; 11 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #3
  %.not = icmp eq i64 %.fr43, 0
  br i1 %.not, label %.split42.us, label %.split.us.preheader

.split.us.preheader:                              ; preds = %bb.a
  %i.c = add i64 %.fr43, -1                       ; 2 uses
  %min.iters.check = icmp ult i64 %.fr43, 4
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 4294967295
  %i.f = icmp ugt i64 %i.c, 4294967295
  %i.g = or i1 %i.e, %i.f
  %min.iters.check62 = icmp ult i64 %.fr43, 32
  %i.h = and i64 %.fr43, 28
  %n.vec = and i64 %.fr43, 8589934560             ; 5 uses
  %i.i = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %.fr43, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.h, 0
  %n.vec64 = and i64 %.fr43, 8589934588           ; 4 uses
  %i.j = trunc i64 %n.vec64 to i32
  %broadcast.splatinsert65 = insertelement <4 x i8> poison, i8 %3, i64 0
  %broadcast.splat66 = shufflevector <4 x i8> %broadcast.splatinsert65, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n70 = icmp eq i64 %.fr43, %n.vec64
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.backedge.us
  %.022.us = phi ptr [ %.022.be.us, %.backedge.us ], [ %2, %.split.us.preheader ] ; 3 uses
  %i.k = load i8, ptr %.022.us, align 1           ; 2 uses
  switch i8 %i.k, label %.critedge.us [
    i8 0, label %.split42.us
    i8 34, label %.preheader
    i8 39, label %.preheader
  ]

.preheader:                                       ; preds = %.split.us, %.split.us
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %i.l = phi i8 [ %i.n, %bb.c ], [ %i.k, %.preheader ]
  %.1.us = phi ptr [ %i.m, %bb.c ], [ %.022.us, %.preheader ]
  %i.m = getelementptr inbounds nuw i8, ptr %.1.us, i64 1 ; 5 uses
  %.not26.us = icmp eq i8 %i.l, 0
  br i1 %.not26.us, label %.critedge.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %i.m, align 1               ; 2 uses
  switch i8 %i.n, label %bb.b [
    i8 34, label %.critedge.us
    i8 39, label %.critedge.us
  ]

.critedge.us:                                     ; preds = %bb.b, %bb.c, %bb.c, %.split.us
  %.2.us = phi ptr [ %.022.us, %.split.us ], [ %i.m, %bb.c ], [ %i.m, %bb.c ], [ %i.m, %bb.b ] ; 5 uses
  %i.o = tail call i32 @strncmp(ptr noundef nonnull %.2.us, ptr noundef nonnull %0, i64 noundef %i.b) #3
  %.not29.us = icmp eq i32 %i.o, 0
  br i1 %.not29.us, label %.preheader32.us, label %bb.d

bb.d:                                             ; preds = %.critedge.us
  %i.p = getelementptr inbounds nuw i8, ptr %.2.us, i64 1
  br label %.backedge.us

.lr.ph.us:                                        ; preds = %.preheader32.us, %bb.e
  %.336.us = phi ptr [ %i.w, %bb.e ], [ %.2.us, %.preheader32.us ] ; 8 uses
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %.336.us, ptr noundef nonnull %1, i64 noundef %.fr43) #3
  %.not31.us = icmp eq i32 %i.q, 0
  br i1 %.not31.us, label %iter.check, label %bb.e

iter.check:                                       ; preds = %.lr.ph.us
  %brmerge = or i1 %min.iters.check, %i.g
  br i1 %brmerge, label %.preheader.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = getelementptr i8, ptr %.336.us, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %.336.us, i64 %index ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %broadcast.splat, ptr %next.gep, align 1
  store <16 x i8> %broadcast.splat, ptr %i.s, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.backedge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader.us.preheader, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.u = getelementptr i8, ptr %.336.us, i64 %n.vec64 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index67 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next69, %vec.epilog.vector.body ] ; 2 uses
  %next.gep68 = getelementptr i8, ptr %.336.us, i64 %index67
  store <4 x i8> %broadcast.splat66, ptr %next.gep68, align 1
  %index.next69 = add nuw i64 %index67, 4         ; 2 uses
  %i.v = icmp eq i64 %index.next69, %n.vec64
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n70, label %.backedge.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.038.us.ph = phi i32 [ 0, %iter.check ], [ %i.j, %vec.epilog.middle.block ], [ %i.i, %vec.epilog.iter.check ]
  %.437.us.ph = phi ptr [ %.336.us, %iter.check ], [ %i.u, %vec.epilog.middle.block ], [ %i.r, %vec.epilog.iter.check ]
  br label %.preheader.us

bb.e:                                             ; preds = %.lr.ph.us
  %i.w = getelementptr inbounds nuw i8, ptr %.336.us, i64 1 ; 3 uses
  store i8 %3, ptr %.336.us, align 1
  %i.x = load i8, ptr %i.w, align 1
  %.not30.us = icmp eq i8 %i.x, 0
  br i1 %.not30.us, label %.backedge.us, label %.lr.ph.us, !llvm.loop !11

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %.038.us = phi i32 [ %i.z, %.preheader.us ], [ %.038.us.ph, %.preheader.us.preheader ]
  %.437.us = phi ptr [ %i.y, %.preheader.us ], [ %.437.us.ph, %.preheader.us.preheader ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.437.us, i64 1 ; 2 uses
  store i8 %3, ptr %.437.us, align 1
  %i.z = add i32 %.038.us, 1                      ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %i.ab = icmp ugt i64 %.fr43, %i.aa
  br i1 %i.ab, label %.preheader.us, label %.backedge.us, !llvm.loop !12

.preheader32.us:                                  ; preds = %.critedge.us
  %i.ac = load i8, ptr %.2.us, align 1
  %.not3035.us = icmp eq i8 %i.ac, 0
  br i1 %.not3035.us, label %.backedge.us, label %.lr.ph.us

.backedge.us:                                     ; preds = %bb.e, %.preheader.us, %middle.block, %vec.epilog.middle.block, %.preheader32.us, %bb.d
  %.022.be.us = phi ptr [ %i.p, %bb.d ], [ %i.y, %.preheader.us ], [ %.2.us, %.preheader32.us ], [ %i.u, %vec.epilog.middle.block ], [ %i.r, %middle.block ], [ %i.w, %bb.e ]
  br label %.split.us, !llvm.loop !13

end_hunk_0
