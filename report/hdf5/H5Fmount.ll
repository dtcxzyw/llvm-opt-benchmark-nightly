Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Fmount?download=true
begin_hunk_0_@H5F__mount_count_ids_recurse:bb.a
  %i.ag = tail call i32 @H5G_get_shared_count(ptr noundef %i.af) #5
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %2, align 4, !tbaa !74
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %2, align 4, !tbaa !74
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !43
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45
  tail call fastcc void @H5F__mount_count_ids_recurse(ptr noundef %i.ap, ptr noundef %1, ptr noundef nonnull %2)
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.aq = phi ptr [ %i.w, %.lr.ph ], [ %.pre, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !42
  %i.at = zext i32 %i.as to i64
  %i.au = icmp samesign ult i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %.lr.ph, label %.loopexit, !llvm.loop !72

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5F_flush_mounts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5F_init_g, align 1, !tbaa !9
  %i.f = tail call i32 @H5F__init_package() #5
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10
  %.pre7 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre8 = trunc nuw i8 %.pre to i1
  %.pre9 = trunc nuw i8 %.pre7 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5F_init_g, align 1, !tbaa !9
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !48
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !48
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5F_flush_mounts, i32 noundef 536, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi10 = phi i1 [ %.pre9, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre8, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi10, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %.preheader, label %bb.g, !prof !12

.preheader:                                       ; preds = %bb.d, %.preheader
  %.05 = phi ptr [ %i.n, %.preheader ], [ %0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !46   ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %.preheader, !llvm.loop !76

bb.e:                                             ; preds = %.preheader
  %i.o = tail call fastcc i32 @H5F__flush_mounts_recurse(ptr noundef nonnull %.05)
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr @H5E_FILE_g, align 8, !tbaa !48
  %i.r = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !48
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5F_flush_mounts, i32 noundef 547, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.22) #5 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5F__flush_mounts_recurse(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %.preheader, label %.thread, !prof !12

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !42
  %.not14 = icmp eq i32 %i.j, 0
  br i1 %.not14, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.k = phi ptr [ %i.s, %.lr.ph ], [ %i.h, %.preheader ]
  %.01112 = phi i32 [ %spec.select, %.lr.ph ], [ 0, %.preheader ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !45
  %i.q = tail call fastcc i32 @H5F__flush_mounts_recurse(ptr noundef %i.p)
  %i.r = lshr i32 %i.q, 31
  %spec.select = add i32 %i.r, %.01112            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !20   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42
  %i.v = zext i32 %i.u to i64
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !77

._crit_edge:                                      ; preds = %.lr.ph
  %i.x = tail call i32 @H5F__flush(ptr noundef nonnull %0) #5
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.b, label %bb.c

._crit_edge.thread:                               ; preds = %.preheader
  %i.z = tail call i32 @H5F__flush(ptr noundef nonnull %0) #5
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.b, label %.thread

bb.b:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ab = load i64, ptr @H5E_FILE_g, align 8, !tbaa !48
  %i.ac = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !48
  %i.ad = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5F__flush_mounts_recurse, i32 noundef 512, i64 noundef %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str.25) #5 ; 0 uses
  br label %.thread

bb.c:                                             ; preds = %._crit_edge
  %i.ae = icmp eq i32 %spec.select, 0
  br i1 %i.ae, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load i64, ptr @H5E_FILE_g, align 8, !tbaa !48
  %i.ag = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !48
  %i.ah = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5F__flush_mounts_recurse, i32 noundef 516, i64 noundef %i.af, i64 noundef %i.ag, ptr noundef nonnull @.str.26) #5 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %._crit_edge.thread, %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %._crit_edge.thread ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5F_traverse_mount(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59
  %i.b = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.c, i1 true, i1 %i.e
  br i1 %i.f, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5F_init_g, align 1, !tbaa !9
  %i.g = tail call i32 @H5F__init_package() #5
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %._crit_edge54

._crit_edge54:                                    ; preds = %bb.b
  %.pre = load i8, ptr @H5F_init_g, align 1, !tbaa !9, !range !10
  %.pre55 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre56 = trunc nuw i8 %.pre to i1
  %.pre57 = trunc nuw i8 %.pre55 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5F_init_g, align 1, !tbaa !9
  %i.i = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !48
  %i.j = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !48
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5F_traverse_mount, i32 noundef 573, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.3) #5 ; 0 uses
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge54, %bb.a
  %.pre-phi58 = phi i1 [ %.pre57, %._crit_edge54 ], [ %i.e, %bb.a ]
  %.pre-phi = phi i1 [ %.pre56, %._crit_edge54 ], [ %i.c, %bb.a ]
  %i.l = xor i1 %.pre-phi58, true
  %i.m = select i1 %.pre-phi, i1 true, i1 %i.l
  br i1 %i.m, label %.preheader, label %.loopexit, !prof !12

.preheader:                                       ; preds = %bb.d
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.outer

.outer:                                           ; preds = %.split, %.preheader
  %.039.ph = phi ptr [ %i.at, %.split ], [ %i.a, %.preheader ]
  %i.n = getelementptr inbounds nuw i8, ptr %.039.ph, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !42   ; 2 uses
  %.not50 = icmp eq i32 %i.q, 0
  br i1 %.not50, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %.thread
  %.03547 = phi i32 [ %.136, %.thread ], [ %i.q, %.outer ] ; 2 uses
  %.03746 = phi i32 [ %.138, %.thread ], [ 0, %.outer ] ; 2 uses
  %i.r = add i32 %.03547, %.03746
  %i.s = lshr i32 %i.r, 1                         ; 4 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !43
  %i.w = zext nneg i32 %i.s to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !47
  %i.z = tail call ptr @H5G_oloc(ptr noundef %i.y) #5
  %i.aa = load i64, ptr %1, align 8, !tbaa !57    ; 3 uses
  %.not = icmp eq i64 %i.aa, -1
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !57 ; 3 uses
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not45 = icmp eq i64 %i.ac, -1
  br i1 %.not45, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp ult i64 %i.aa, %i.ac
  %i.af = select i1 %i.ae, i32 -1, i32 1
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.f, %bb.g, %bb.e
  %i.ag = phi i32 [ 0, %bb.e ], [ 1, %bb.f ], [ %i.af, %bb.g ], [ 1, %.lr.ph ] ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0                   ; 2 uses
  %i.ai = add nuw i32 %i.s, 1
  %.138 = select i1 %i.ah, i32 %.03746, i32 %i.ai ; 2 uses
  %.136 = select i1 %i.ah, i32 %i.s, i32 %.03547  ; 2 uses
  %i.aj = icmp ult i32 %.138, %.136
  %i.ak = icmp ne i32 %i.ag, 0
  %i.al = and i1 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !78

._crit_edge:                                      ; preds = %.thread
  %i.am = icmp eq i32 %i.ag, 0
  br i1 %i.am, label %bb.h, label %.loopexit, !llvm.loop !79

bb.h:                                             ; preds = %._crit_edge
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !43
  %i.aq = zext nneg i32 %i.s to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !45 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1456
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !58
  %i.ay = tail call ptr @H5G_oloc(ptr noundef %i.ax) #5
  %i.az = tail call i32 @H5O_loc_free(ptr noundef nonnull %0) #5
  %i.ba = icmp slt i32 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load i64, ptr @H5E_FILE_g, align 8, !tbaa !48
  %i.bc = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !48
  %i.bd = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5F_traverse_mount, i32 noundef 610, i64 noundef %i.bb, i64 noundef %i.bc, ptr noundef nonnull @.str.23) #5 ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.be = tail call i32 @H5O_loc_copy_deep(ptr noundef nonnull %0, ptr noundef %i.ay) #5
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.k, label %.split

bb.k:                                             ; preds = %bb.j
  %i.bg = load i64, ptr @H5E_FILE_g, align 8, !tbaa !48
  %i.bh = load i64, ptr @H5E_CANTCOPY_g, align 8, !tbaa !48
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5F_traverse_mount, i32 noundef 614, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.24) #5 ; 0 uses
  br label %.loopexit

.split:                                           ; preds = %bb.j
  store ptr %i.at, ptr %0, align 8, !tbaa !59
  br label %.outer, !llvm.loop !79

.loopexit:                                        ; preds = %.outer, %._crit_edge, %bb.c, %bb.i, %bb.k, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.i ], [ -1, %bb.k ], [ 0, %bb.d ], [ 0, %._crit_edge ], [ 0, %.outer ]
  ret i32 %.0
}

declare i32 @H5O_loc_free(ptr noundef) local_unnamed_addr #2

declare i32 @H5O_loc_copy_deep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5G_get_shared_count(ptr noundef) local_unnamed_addr #2

declare i32 @H5F__flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "warn-stack-size"="16384" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_Bool", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{i8 0, i8 2}
!11 = !{}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"p1 _ZTS12H5F_shared_t", !13, i64 0}
!16 = !{!"p1 _ZTS13H5VL_object_t", !13, i64 0}
!17 = !{!"p1 _ZTS6H5SL_t", !13, i64 0}
!18 = !{!"p1 _ZTS5H5F_t", !13, i64 0}
!19 = !{!"H5F_t", !14, i64 0, !14, i64 8, !15, i64 16, !16, i64 24, !5, i64 32, !17, i64 40, !8, i64 48, !8, i64 49, !18, i64 56, !5, i64 64}
!20 = !{!19, !15, i64 16}
!21 = !{!"p1 _ZTS6H5FD_t", !13, i64 0}
!22 = !{!"p1 _ZTS11H5F_super_t", !13, i64 0}
!23 = !{!"p1 _ZTS13H5O_drvinfo_t", !13, i64 0}
!24 = !{!"p1 _ZTS11H5F_mount_t", !13, i64 0}
!25 = !{!"H5F_mtab_t", !5, i64 0, !5, i64 4, !24, i64 8}
!26 = !{!"p1 _ZTS9H5F_efc_t", !13, i64 0}
!27 = !{!"long", !4, i64 0}
!28 = !{!"p1 _ZTS6H5PB_t", !13, i64 0}
!29 = !{!"p1 _ZTS5H5C_t", !13, i64 0}
!30 = !{!"double", !4, i64 0}
!31 = !{!"H5AC_cache_config_t", !5, i64 0, !8, i64 4, !8, i64 5, !8, i64 6, !4, i64 7, !8, i64 1032, !8, i64 1033, !27, i64 1040, !30, i64 1048, !27, i64 1056, !27, i64 1064, !27, i64 1072, !5, i64 1080, !30, i64 1088, !30, i64 1096, !8, i64 1104, !27, i64 1112, !5, i64 1120, !30, i64 1128, !30, i64 1136, !5, i64 1144, !30, i64 1152, !30, i64 1160, !8, i64 1168, !27, i64 1176, !5, i64 1184, !8, i64 1188, !30, i64 1192, !27, i64 1200, !5, i64 1208}
!32 = !{!"H5AC_cache_image_config_t", !5, i64 0, !8, i64 4, !8, i64 5, !5, i64 8}
!33 = !{!"any p2 pointer", !13, i64 0}
!34 = !{!"p2 _ZTS11H5HG_heap_t", !33, i64 0}
!35 = !{!"p1 _ZTS5H5G_t", !13, i64 0}
!36 = !{!"p1 _ZTS6H5UC_t", !13, i64 0}
!37 = !{!"p1 _ZTS16H5VL_connector_t", !13, i64 0}
!38 = !{!"H5F_blk_aggr_t", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32}
!39 = !{!"H5F_meta_accum_t", !14, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !27, i64 32, !27, i64 40, !8, i64 48}
!40 = !{!"H5F_object_flush_t", !13, i64 0, !13, i64 8}
!41 = !{!"H5F_shared_t", !21, i64 0, !22, i64 8, !23, i64 16, !8, i64 24, !5, i64 28, !5, i64 32, !25, i64 40, !26, i64 56, !4, i64 64, !4, i64 65, !27, i64 72, !5, i64 80, !5, i64 84, !27, i64 88, !27, i64 96, !28, i64 104, !29, i64 112, !31, i64 120, !32, i64 1336, !8, i64 1348, !8, i64 1349, !14, i64 1352, !27, i64 1360, !5, i64 1368, !8, i64 1372, !27, i64 1376, !27, i64 1384, !30, i64 1392, !27, i64 1400, !27, i64 1408, !27, i64 1416, !5, i64 1424, !5, i64 1428, !5, i64 1432, !8, i64 1436, !5, i64 1440, !34, i64 1448, !35, i64 1456, !17, i64 1464, !36, i64 1472, !8, i64 1480, !8, i64 1481, !8, i64 1482, !27, i64 1488, !37, i64 1496, !13, i64 1504, !5, i64 1512, !27, i64 1520, !8, i64 1528, !5, i64 1532, !8, i64 1536, !27, i64 1544, !8, i64 1552, !4, i64 1556, !4, i64 1608, !4, i64 1712, !8, i64 1816, !27, i64 1824, !27, i64 1832, !4, i64 1840, !4, i64 1868, !38, i64 1896, !38, i64 1936, !27, i64 1976, !27, i64 1984, !39, i64 1992, !5, i64 2048, !5, i64 2052, !4, i64 2056, !40, i64 2296, !8, i64 2312, !14, i64 2320}
!42 = !{!41, !5, i64 40}
!43 = !{!41, !24, i64 48}
!44 = !{!"H5F_mount_t", !35, i64 0, !18, i64 8}
!45 = !{!44, !18, i64 8}
!46 = !{!19, !18, i64 56}
!47 = !{!44, !35, i64 0}
!48 = !{!27, !27, i64 0}
!49 = !{!19, !5, i64 64}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"p1 _ZTS9H5O_loc_t", !13, i64 0}
!52 = !{!"p1 _ZTS10H5G_name_t", !13, i64 0}
!53 = !{!"H5G_loc_t", !51, i64 0, !52, i64 8}
!54 = !{!53, !51, i64 0}
!55 = !{!53, !52, i64 8}
!56 = !{!"H5O_loc_t", !18, i64 0, !27, i64 8, !8, i64 16}
!57 = !{!56, !27, i64 8}
!58 = !{!41, !35, i64 1456}
!59 = !{!56, !18, i64 0}
!60 = !{!"p1 _ZTS10H5RS_str_t", !13, i64 0}
!61 = !{!"H5G_name_t", !60, i64 0, !60, i64 8, !5, i64 16}
!62 = !{!61, !60, i64 0}
!63 = distinct !{!63, !50}
!64 = distinct !{!64, !50}
!65 = distinct !{!65, !50}
!66 = !{!56, !8, i64 16}
!67 = !{!41, !5, i64 1368}
!68 = !{!41, !5, i64 44}
!69 = distinct !{!69, !50}
!70 = distinct !{!70, !50}
!71 = distinct !{!71, !50}
!72 = distinct !{!72, !50}
!73 = !{!19, !8, i64 48}
!74 = !{!5, !5, i64 0}
!75 = !{!19, !5, i64 32}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
!78 = distinct !{!78, !50}
!79 = distinct !{!79, !50}
end_hunk_0
