inline.NumInlined: 4
begin_hunk_0_@alloc_shrink:bb.a

bb.f:                                             ; preds = %bb.e
  %i.k = zext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 6 uses
  %.not50 = icmp eq i32 %i.c, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %bb.f
  %i.m = zext i32 %i.c to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 5 uses
  %i.o = add i64 %i.a, %i.m                       ; 2 uses
  %i.p = add i64 %i.o, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.p)
  %i.q = sub i64 %i.o, %umin                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.q, 16
  %i.r = sub nsw i64 %i.m, %i.k
  %diff.check = icmp ult i64 %i.r, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader63, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.lr.ph.preheader.a
  %min.iters.check56 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check56, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.q, 16
  %n.vec = and i64 %i.q, -32                      ; 5 uses
  %i.s = sub i64 0, %n.vec
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s     ; 2 uses
  %i.u = sub i64 0, %n.vec
end_hunk_0
begin_hunk_1_@alloc_shrink:bb.a
  store <16 x i8> %wide.load58, ptr %i.z, align 1, !tbaa !58
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.preheader63, label %vec.epilog.ph, !prof !62

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.q, -16                    ; 4 uses
  %5 = sub i64 0, %n.vec65
  %6 = getelementptr i8, ptr %i.l, i64 %5         ; 2 uses
  %7 = sub i64 0, %n.vec65
  %8 = getelementptr i8, ptr %i.n, i64 %7
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next72, %vec.epilog.vector.body ] ; 3 uses
  %9 = sub i64 0, %index66
  %next.gep67 = getelementptr i8, ptr %i.l, i64 %9
  %10 = sub i64 0, %index66
  %next.gep68 = getelementptr i8, ptr %i.n, i64 %10
  %11 = getelementptr inbounds i8, ptr %next.gep68, i64 -16
  %wide.load69 = load <16 x i8>, ptr %11, align 1, !tbaa !58
  %12 = getelementptr inbounds i8, ptr %next.gep67, i64 -16
  store <16 x i8> %wide.load69, ptr %12, align 1, !tbaa !58
  %index.next72 = add nuw i64 %index66, 16        ; 2 uses
  %13 = icmp eq i64 %index.next72, %n.vec65
  br i1 %13, label %middle.block.a, label %vec.epilog.vector.body, !llvm.loop !63

middle.block.a:                                   ; preds = %vec.epilog.vector.body
  %cmp.n.a = icmp eq i64 %i.q, %n.vec65
  br i1 %cmp.n.a, label %._crit_edge, label %.lr.ph.preheader63

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader.a, %vec.epilog.iter.check, %middle.block.a
  %.04049.ph = phi ptr [ %i.l, %.lr.ph.preheader.a ], [ %i.t, %vec.epilog.iter.check ], [ %6, %middle.block.a ]
  %.04148.ph = phi ptr [ %i.n, %.lr.ph.preheader.a ], [ %i.v, %vec.epilog.iter.check ], [ %8, %middle.block.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
end_hunk_1
begin_hunk_2_@alloc_shrink:bb.a
  %i.ad = getelementptr inbounds i8, ptr %.04049, i64 -1 ; 3 uses
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !58
  %i.ae = icmp ugt ptr %i.ab, %0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %middle.block.a, %bb.f
  %.040.lcssa = phi ptr [ %i.l, %bb.f ], [ %6, %middle.block.a ], [ %i.t, %middle.block ], [ %i.ad, %.lr.ph ] ; 2 uses
  store ptr %.040.lcssa, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 16), align 8, !tbaa !24
  br label %bb.h

end_hunk_2
begin_hunk_3_@alloc_save_state:bb.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) @as_current, i64 392, i1 false), !tbaa.struct !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) getelementptr inbounds nuw (i8, ptr @as_current, i64 104), i8 0, i64 264, i1 false)
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 368), align 8, !tbaa !49
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 376), align 8, !tbaa !34
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 376), align 8, !tbaa !34
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 384), align 8, !tbaa !69
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_3
begin_hunk_4_@alloc_save_change:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %1 to i64
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 384), align 8, !tbaa !69
  store ptr %i.g, ptr %i.d, align 8, !tbaa !70
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %1, ptr %i.i, align 8, !tbaa !73
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %0, i64 %i.f, i1 false)
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 384), align 8, !tbaa !69
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
end_hunk_4
begin_hunk_5_@alloc_is_since_save
define dso_local range(i32 0, 2) i32 @alloc_is_since_save(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !75
  %.not = icmp ugt ptr %i.c, %0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = icmp ult ptr %0, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

end_hunk_5
begin_hunk_6_@alloc_is_since_save:bb.a

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.n = load i32, ptr %i.m, align 8, !tbaa !77   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54
  %.not4049 = icmp sgt i32 %i.p, %i.n
end_hunk_6
begin_hunk_7_@alloc_is_since_save:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not40 = icmp sgt i32 %i.x, %i.n
  br i1 %.not40, label %.lr.ph, label %.critedge.preheader, !llvm.loop !78

.lr.ph54:                                         ; preds = %.critedge.preheader, %.critedge45
  %.03152 = phi ptr [ %i.ac, %.critedge45 ], [ %i.b, %.critedge.preheader ] ; 2 uses
end_hunk_7
begin_hunk_8_@alloc_is_since_save:bb.a
bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.aa = icmp eq ptr %i.z, %0
  br i1 %i.aa, label %.loopexit, label %bb.h, !llvm.loop !79

.critedge45:                                      ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.03152, i64 368
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %.not41.not = icmp eq ptr %i.ac, %1
  br i1 %.not41.not, label %.loopexit, label %.lr.ph54, !llvm.loop !80

.loopexit:                                        ; preds = %bb.f, %.critedge45, %bb.i, %.critedge.preheader, %bb.c, %bb.d
  %.4.shrunk = phi i32 [ 0, %bb.c ], [ %i.l, %bb.d ], [ 1, %bb.i ], [ 0, %.critedge45 ], [ 0, %.critedge.preheader ], [ 1, %bb.f ]
end_hunk_8
begin_hunk_9_@alloc_restore_state_check
define dso_local range(i32 -1, 1) i32 @alloc_restore_state_check(ptr noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
end_hunk_9
begin_hunk_10_@alloc_restore_state_check:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %.0, null
  br i1 %i.c, label %bb.d, label %bb.b, !llvm.loop !81

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ]
end_hunk_10
begin_hunk_11_@alloc_restore_state
define dso_local void @alloc_restore_state(ptr noundef readonly captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 3 uses
end_hunk_11
begin_hunk_12_@alloc_restore_state:bb.a
  tail call void %i.m(ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef %i.p, ptr noundef nonnull @.str.3) #8
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !82

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.027 = load ptr, ptr %i.g, align 8, !tbaa !68  ; 2 uses
  %.not2428 = icmp eq ptr %.027, null
  br i1 %.not2428, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %._crit_edge, %.lr.ph31
  %.029 = phi ptr [ %.0, %.lr.ph31 ], [ %.027, %._crit_edge ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.t = getelementptr inbounds nuw i8, ptr %.029, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !73
  %i.w = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  %.0 = load ptr, ptr %.029, align 8, !tbaa !68   ; 2 uses
  %.not24 = icmp eq ptr %.0, null
  br i1 %.not24, label %._crit_edge32, label %.lr.ph31, !llvm.loop !83

._crit_edge32:                                    ; preds = %.lr.ph31, %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %i.h, i64 392, i1 false), !tbaa.struct !65
  tail call void @alloc_free(ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 400, ptr nonnull poison)
  %.not25 = icmp eq ptr %i.h, %0
  br i1 %.not25, label %bb.c, label %bb.b, !llvm.loop !84

bb.c:                                             ; preds = %._crit_edge32
  ret void
end_hunk_12
begin_hunk_13_@llvm.umin.i64
!59 = distinct !{!59, !47, !60, !61}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = !{!"branch_weights", i32 16, i32 16}
!63 = distinct !{!63, !47, !60, !61}
!64 = distinct !{!64, !47, !60}
!65 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !37, i64 32, i64 4, !4, i64 40, i64 8, !42, i64 48, i64 8, !42, i64 56, i64 4, !4, i64 60, i64 4, !4, i64 64, i64 8, !66, i64 72, i64 8, !66, i64 80, i64 8, !26, i64 88, i64 8, !26, i64 96, i64 4, !4, i64 104, i64 256, !58, i64 360, i64 8, !45, i64 368, i64 8, !67, i64 376, i64 4, !4, i64 384, i64 8, !68}
!66 = !{!12, !12, i64 0}
!67 = !{!16, !16, i64 0}
!68 = !{!17, !17, i64 0}
!69 = !{!9, !17, i64 384}
!70 = !{!71, !17, i64 0}
!71 = !{!"alloc_change_s", !17, i64 0, !11, i64 8, !5, i64 16}
!72 = !{!71, !11, i64 8}
!73 = !{!71, !5, i64 16}
!74 = !{!51, !32, i64 392}
!75 = !{!51, !11, i64 0}
!76 = !{!51, !11, i64 24}
!77 = !{!51, !5, i64 376}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = distinct !{!81, !47}
!82 = distinct !{!82, !47}
!83 = distinct !{!83, !47}
!84 = distinct !{!84, !47}
end_hunk_13
