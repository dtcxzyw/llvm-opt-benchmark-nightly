inline.NumInlined: 4
begin_hunk_0_@alloc_shrink:bb.a

bb.f:                                             ; preds = %bb.e
  %i.k = zext i32 %i.b to i64                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k ; 4 uses
  %.not50 = icmp eq i32 %i.c, 0
  br i1 %.not50, label %._crit_edge, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %bb.f
  %i.m = zext i32 %i.c to i64                     ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m ; 3 uses
  %i.o = add i64 %i.a, %i.m                       ; 2 uses
  %i.p = add i64 %i.o, -1
  %umin = tail call i64 @llvm.umin.i64(i64 %i.a, i64 %i.p)
  %i.q = sub i64 %i.o, %umin                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 32
  %i.r = sub nsw i64 %i.m, %i.k
  %diff.check = icmp ult i64 %i.r, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader63, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.a
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  %i.s = sub i64 0, %n.vec
  %i.t = getelementptr i8, ptr %i.l, i64 %i.s     ; 2 uses
  %i.u = sub i64 0, %n.vec
end_hunk_0
begin_hunk_1_@alloc_shrink:bb.a
  store <16 x i8> %wide.load58, ptr %i.z, align 1, !tbaa !58
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block.a, label %vector.body, !llvm.loop !59

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n.a, label %._crit_edge, label %.lr.ph.preheader63

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader.a, %middle.block.a
  %.04049.ph = phi ptr [ %i.l, %.lr.ph.preheader.a ], [ %i.t, %middle.block.a ]
  %.04148.ph = phi ptr [ %i.n, %.lr.ph.preheader.a ], [ %i.v, %middle.block.a ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader63, %.lr.ph
end_hunk_1
begin_hunk_2_@alloc_shrink:bb.a
  %i.ad = getelementptr inbounds i8, ptr %.04049, i64 -1 ; 3 uses
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !58
  %i.ae = icmp ugt ptr %i.ab, %0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph, %middle.block.a, %bb.f
  %.040.lcssa = phi ptr [ %i.l, %bb.f ], [ %i.t, %middle.block.a ], [ %i.ad, %.lr.ph ] ; 2 uses
  store ptr %.040.lcssa, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 16), align 8, !tbaa !24
  br label %bb.h

end_hunk_2
begin_hunk_3_@alloc_save_state:bb.a
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) @as_current, i64 392, i1 false), !tbaa.struct !63
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) getelementptr inbounds nuw (i8, ptr @as_current, i64 104), i8 0, i64 264, i1 false)
  store ptr %i.a, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 368), align 8, !tbaa !49
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 376), align 8, !tbaa !34
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 376), align 8, !tbaa !34
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 384), align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_3
begin_hunk_4_@alloc_save_change:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = zext i32 %1 to i64
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 384), align 8, !tbaa !67
  store ptr %i.g, ptr %i.d, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %0, ptr %i.h, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 %1, ptr %i.i, align 8, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %0, i64 %i.f, i1 false)
  store ptr %i.d, ptr getelementptr inbounds nuw (i8, ptr @as_current, i64 384), align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
end_hunk_4
begin_hunk_5_@alloc_is_since_save
define dso_local range(i32 0, 2) i32 @alloc_is_since_save(ptr noundef readnone captures(address) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !73
  %.not = icmp ugt ptr %i.c, %0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = icmp ult ptr %0, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

end_hunk_5
begin_hunk_6_@alloc_is_since_save:bb.a

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.n = load i32, ptr %i.m, align 8, !tbaa !75   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load i32, ptr %i.o, align 8, !tbaa !54
  %.not4049 = icmp sgt i32 %i.p, %i.n
end_hunk_6
begin_hunk_7_@alloc_is_since_save:bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = load i32, ptr %i.w, align 8, !tbaa !54
  %.not40 = icmp sgt i32 %i.x, %i.n
  br i1 %.not40, label %.lr.ph, label %.critedge.preheader, !llvm.loop !76

.lr.ph54:                                         ; preds = %.critedge.preheader, %.critedge45
  %.03152 = phi ptr [ %i.ac, %.critedge45 ], [ %i.b, %.critedge.preheader ] ; 2 uses
end_hunk_7
begin_hunk_8_@alloc_is_since_save:bb.a
bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.aa = icmp eq ptr %i.z, %0
  br i1 %i.aa, label %.loopexit, label %bb.h, !llvm.loop !77

.critedge45:                                      ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %.03152, i64 368
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %.not41.not = icmp eq ptr %i.ac, %1
  br i1 %.not41.not, label %.loopexit, label %.lr.ph54, !llvm.loop !78

.loopexit:                                        ; preds = %bb.f, %.critedge45, %bb.i, %.critedge.preheader, %bb.c, %bb.d
  %.4.shrunk = phi i32 [ 0, %bb.c ], [ %i.l, %bb.d ], [ 1, %bb.i ], [ 0, %.critedge45 ], [ 0, %.critedge.preheader ], [ 1, %bb.f ]
end_hunk_8
begin_hunk_9_@alloc_restore_state_check
define dso_local range(i32 -1, 1) i32 @alloc_restore_state_check(ptr noundef readonly captures(address) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
end_hunk_9
begin_hunk_10_@alloc_restore_state_check:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq ptr %.0, null
  br i1 %i.c, label %bb.d, label %bb.b, !llvm.loop !79

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ]
end_hunk_10
begin_hunk_11_@alloc_restore_state
define dso_local void @alloc_restore_state(ptr noundef readonly captures(address) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 3 uses
end_hunk_11
begin_hunk_12_@alloc_restore_state:bb.a
  tail call void %i.m(ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef %i.p, ptr noundef nonnull @.str.3) #8
  %i.q = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.027 = load ptr, ptr %i.g, align 8, !tbaa !66  ; 2 uses
  %.not2428 = icmp eq ptr %.027, null
  br i1 %.not2428, label %._crit_edge32, label %.lr.ph31

.lr.ph31:                                         ; preds = %._crit_edge, %.lr.ph31
  %.029 = phi ptr [ %.0, %.lr.ph31 ], [ %.027, %._crit_edge ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
  %i.t = getelementptr inbounds nuw i8, ptr %.029, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %.029, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !71
  %i.w = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr nonnull align 1 %i.t, i64 %i.w, i1 false)
  %.0 = load ptr, ptr %.029, align 8, !tbaa !66   ; 2 uses
  %.not24 = icmp eq ptr %.0, null
  br i1 %.not24, label %._crit_edge32, label %.lr.ph31, !llvm.loop !81

._crit_edge32:                                    ; preds = %.lr.ph31, %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %i.h, i64 392, i1 false), !tbaa.struct !63
  tail call void @alloc_free(ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef 400, ptr nonnull poison)
  %.not25 = icmp eq ptr %i.h, %0
  br i1 %.not25, label %bb.c, label %bb.b, !llvm.loop !82

bb.c:                                             ; preds = %._crit_edge32
  ret void
end_hunk_12
begin_hunk_13_@llvm.umin.i64
!59 = distinct !{!59, !47, !60, !61}
!60 = !{!"llvm.loop.isvectorized", i32 1}
!61 = !{!"llvm.loop.unroll.runtime.disable"}
!62 = distinct !{!62, !47, !60}
!63 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37, i64 24, i64 8, !37, i64 32, i64 4, !4, i64 40, i64 8, !42, i64 48, i64 8, !42, i64 56, i64 4, !4, i64 60, i64 4, !4, i64 64, i64 8, !64, i64 72, i64 8, !64, i64 80, i64 8, !26, i64 88, i64 8, !26, i64 96, i64 4, !4, i64 104, i64 256, !58, i64 360, i64 8, !45, i64 368, i64 8, !65, i64 376, i64 4, !4, i64 384, i64 8, !66}
!64 = !{!12, !12, i64 0}
!65 = !{!16, !16, i64 0}
!66 = !{!17, !17, i64 0}
!67 = !{!9, !17, i64 384}
!68 = !{!69, !17, i64 0}
!69 = !{!"alloc_change_s", !17, i64 0, !11, i64 8, !5, i64 16}
!70 = !{!69, !11, i64 8}
!71 = !{!69, !5, i64 16}
!72 = !{!51, !32, i64 392}
!73 = !{!51, !11, i64 0}
!74 = !{!51, !11, i64 24}
!75 = !{!51, !5, i64 376}
!76 = distinct !{!76, !47}
!77 = distinct !{!77, !47}
!78 = distinct !{!78, !47}
!79 = distinct !{!79, !47}
!80 = distinct !{!80, !47}
!81 = distinct !{!81, !47}
!82 = distinct !{!82, !47}
end_hunk_13
