inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0_@_ZN6Assimp14CommentRemover23RemoveMultiLineCommentsEPKcS2_Pcc
define void @_ZN6Assimp14CommentRemover23RemoveMultiLineCommentsEPKcS2_Pcc(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef captures(none) %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
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
  %n.mod.vf = and i64 %.fr43, 28
  %n.vec = and i64 %.fr43, 8589934560             ; 5 uses
  %i.h = trunc i64 %n.vec to i32
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %3, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %.fr43, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec65 = and i64 %.fr43, 8589934588           ; 4 uses
  %4 = trunc i64 %n.vec65 to i32
  %broadcast.splatinsert66 = insertelement <4 x i8> poison, i8 %3, i64 0
  %broadcast.splat67 = shufflevector <4 x i8> %broadcast.splatinsert66, <4 x i8> poison, <4 x i32> zeroinitializer
  %cmp.n.a = icmp eq i64 %.fr43, %n.vec65
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.backedge.us
end_hunk_0
begin_hunk_1_@_ZN6Assimp14CommentRemover23RemoveMultiLineCommentsEPKcS2_Pcc:bb.a
  br label %.backedge.us

.lr.ph.us:                                        ; preds = %.preheader32.us, %bb.e
  %.336.us = phi ptr [ %i.s, %bb.e ], [ %.2.us, %.preheader32.us ] ; 8 uses
  %i.o = tail call i32 @strncmp(ptr noundef nonnull %.336.us, ptr noundef nonnull %1, i64 noundef %.fr43) #3
  %.not31.us = icmp eq i32 %i.o, 0
  br i1 %.not31.us, label %.preheader.us.preheader.a, label %bb.e

.preheader.us.preheader.a:                        ; preds = %.lr.ph.us
  %brmerge = or i1 %min.iters.check, %i.g
  br i1 %brmerge, label %.preheader.us.preheader63, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.preheader.us.preheader.a
  br i1 %min.iters.check62, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = getelementptr i8, ptr %.336.us, i64 %n.vec ; 2 uses
  br label %vector.body

end_hunk_1
begin_hunk_2_@_ZN6Assimp14CommentRemover23RemoveMultiLineCommentsEPKcS2_Pcc:bb.a
  store <16 x i8> %broadcast.splat, ptr %i.q, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.backedge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader.us.preheader63, label %vec.epilog.ph, !prof !9

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %5 = getelementptr i8, ptr %.336.us, i64 %n.vec65 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 2 uses
  %next.gep69 = getelementptr i8, ptr %.336.us, i64 %index68
  store <4 x i8> %broadcast.splat67, ptr %next.gep69, align 1
  %index.next70 = add nuw i64 %index68, 4         ; 2 uses
  %6 = icmp eq i64 %index.next70, %n.vec65
  br i1 %6, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !10

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  br i1 %cmp.n.a, label %.backedge.us, label %.preheader.us.preheader63

.preheader.us.preheader63:                        ; preds = %.preheader.us.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.038.us.ph = phi i32 [ 0, %.preheader.us.preheader.a ], [ %4, %middle.block.a ], [ %i.h, %vec.epilog.iter.check ]
  %.437.us.ph = phi ptr [ %.336.us, %.preheader.us.preheader.a ], [ %5, %middle.block.a ], [ %i.p, %vec.epilog.iter.check ]
  br label %.preheader.us

bb.e:                                             ; preds = %.lr.ph.us
end_hunk_2
begin_hunk_3_@_ZN6Assimp14CommentRemover23RemoveMultiLineCommentsEPKcS2_Pcc:bb.a
  store i8 %3, ptr %.336.us, align 1
  %i.t = load i8, ptr %i.s, align 1
  %.not30.us = icmp eq i8 %i.t, 0
  br i1 %.not30.us, label %.backedge.us, label %.lr.ph.us, !llvm.loop !11

.preheader.us:                                    ; preds = %.preheader.us.preheader63, %.preheader.us
  %.038.us = phi i32 [ %i.v, %.preheader.us ], [ %.038.us.ph, %.preheader.us.preheader63 ]
end_hunk_3
begin_hunk_4_@_ZN6Assimp14CommentRemover23RemoveMultiLineCommentsEPKcS2_Pcc:bb.a
  %i.v = add i32 %.038.us, 1                      ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = icmp ugt i64 %.fr43, %i.w
  br i1 %i.x, label %.preheader.us, label %.backedge.us, !llvm.loop !12

.preheader32.us:                                  ; preds = %.critedge.us
  %i.y = load i8, ptr %.2.us, align 1
  %.not3035.us = icmp eq i8 %i.y, 0
  br i1 %.not3035.us, label %.backedge.us, label %.lr.ph.us

.backedge.us:                                     ; preds = %bb.e, %.preheader.us, %middle.block, %middle.block.a, %.preheader32.us, %bb.d
  %.022.be.us = phi ptr [ %i.n, %bb.d ], [ %i.u, %.preheader.us ], [ %.2.us, %.preheader32.us ], [ %5, %middle.block.a ], [ %i.p, %middle.block ], [ %i.s, %bb.e ]
  br label %.split.us, !llvm.loop !13

.split42.us:                                      ; preds = %.split.us, %bb.a
  ret void
end_hunk_4
begin_hunk_5_@llvm.umax.i64
!6 = distinct !{!6, !4, !7, !8}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = !{!"llvm.loop.unroll.runtime.disable"}
!9 = !{!"branch_weights", i32 4, i32 28}
!10 = distinct !{!10, !4, !7, !8}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4, !7}
!13 = distinct !{!13, !4}
end_hunk_5
