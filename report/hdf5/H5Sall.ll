loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5S__all_deserialize:bb.a
bb.v:                                             ; preds = %bb.t
  %i.bn = load ptr, ptr %0, align 8, !tbaa !30
  %.not57 = icmp eq ptr %i.bn, null
  br i1 %.not57, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  store ptr %.048, ptr %0, align 8, !tbaa !30
  br label %.thread

bb.x:                                             ; preds = %bb.u, %bb.s, %bb.o, %bb.m
  %.pr = load ptr, ptr %0, align 8, !tbaa !30
  %i.bo = icmp eq ptr %.pr, null
  br i1 %i.bo, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.bp = tail call i32 @H5S_close(ptr noundef nonnull %.048) #12
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.br = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !29
  %i.bs = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !29
  %i.bt = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__all_deserialize, i32 noundef 682, i64 noundef %i.br, i64 noundef %i.bs, ptr noundef nonnull @.str.14) #12 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.w, %bb.v, %bb.e, %bb.i, %bb.x, %bb.z, %bb.y, %bb.a
  %.1 = phi i32 [ -1, %bb.z ], [ -1, %bb.y ], [ -1, %bb.x ], [ 0, %bb.a ], [ -1, %bb.i ], [ -1, %bb.e ], [ 0, %bb.v ], [ 0, %bb.w ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__all_bounds(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) #5 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.c = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = xor i1 %i.f, true
  %i.h = select i1 %i.d, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32   ; 3 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !33   ; 5 uses
  %wide.trip.count = zext i32 %i.j to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.j, 20
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.m = ptrtoaddr ptr %i.l to i64                ; 2 uses
  %i.n = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.n, -32
  %i.o = sub i64 %i.a, %i.m
  %diff.check11 = icmp ugt i64 %i.o, -32
  %conflict.rdx = or i1 %diff.check, %diff.check11
  %i.p = sub i64 %i.m, %i.b
  %diff.check12 = icmp ugt i64 %i.p, -32
  %conflict.rdx13 = or i1 %conflict.rdx, %diff.check12
  br i1 %conflict.rdx13, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i64> zeroinitializer, ptr %i.q, align 8, !tbaa !29
  store <2 x i64> zeroinitializer, ptr %i.r, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x i64>, ptr %i.s, align 8, !tbaa !29
  %wide.load14 = load <2 x i64>, ptr %i.t, align 8, !tbaa !29
  %i.u = add <2 x i64> %wide.load, splat (i64 -1)
  %i.v = add <2 x i64> %wide.load14, splat (i64 -1)
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.u, ptr %i.w, align 8, !tbaa !29
  store <2 x i64> %i.v, ptr %i.x, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.ph
  store i64 0, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.ph
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !29
  %i.ac = add i64 %i.ab, -1
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.ph
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !29
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ae = add nsw i64 %wide.trip.count, -1
  %i.af = icmp eq i64 %indvars.iv.ph, %i.ae
  br i1 %i.af, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store i64 0, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !29
  %i.aj = add i64 %i.ai, -1
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next
  store i64 0, ptr %i.al, align 8, !tbaa !29
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.an = load i64, ptr %i.am, align 8, !tbaa !29
  %i.ao = add i64 %i.an, -1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !38

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__all_offset(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__all_unlim_dim(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__all_is_contiguous(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__all_is_single(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__all_is_regular(ptr nofree readnone captures(none) %0) #2 {
bb.a:
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @H5S__all_shape_same(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #6 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %.loopexit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i32, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = sext i32 %i.h to i64                     ; 2 uses
  %indvars.iv.next36 = add nsw i64 %i.m, -1       ; 2 uses
  %i.n = icmp sgt i32 %i.j, 0
  br i1 %i.n, label %.lr.ph39, label %.preheader

.lr.ph39:                                         ; preds = %bb.b
  %i.o = zext nneg i32 %i.j to i64
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.q = load ptr, ptr %i.l, align 8, !tbaa !33
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv.next38, -1 ; 2 uses
  %i.r = trunc nuw i64 %i.u to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.d, label %.preheader, !llvm.loop !39

.preheader:                                       ; preds = %bb.c, %bb.b
  %indvars.iv.lcssa = phi i64 [ %i.m, %bb.b ], [ %indvars.iv.next38, %bb.c ]
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next36, %bb.b ], [ %indvars.iv.next, %bb.c ]
  %i.t = icmp sgt i64 %indvars.iv.lcssa, 0
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %2 = trunc nsw i64 %indvars.iv.next.lcssa to i32
  %3 = load ptr, ptr %i.k, align 8, !tbaa !33
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph39, %bb.c
  %indvars.iv.next38 = phi i64 [ %indvars.iv.next36, %.lr.ph39 ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %indvars.iv2437 = phi i64 [ %i.o, %.lr.ph39 ], [ %i.u, %bb.c ]
  %i.u = add nsw i64 %indvars.iv2437, -1          ; 3 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next38
  %i.w = load i64, ptr %i.v, align 8, !tbaa !29
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.u
  %i.y = load i64, ptr %i.x, align 8, !tbaa !29
  %.not15 = icmp eq i64 %i.w, %i.y
  br i1 %.not15, label %bb.c, label %.loopexit, !llvm.loop !39

bb.e:                                             ; preds = %bb.f
  %4 = add nsw i32 %.118, -1
  %i.z = icmp sgt i32 %.118, 0
  br i1 %i.z, label %bb.f, label %.loopexit, !llvm.loop !40

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.118 = phi i32 [ %2, %.lr.ph ], [ %4, %bb.e ]  ; 3 uses
  %5 = zext nneg i32 %.118 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %5
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !29
  %.not = icmp eq i64 %i.ab, 1
  br i1 %.not, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.e, %bb.f, %.preheader, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ 1, %.preheader ], [ 0, %bb.f ], [ 1, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__all_intersect_block(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__all_adjust_u(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @H5S__all_adjust_s(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__all_project_scalar(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %1, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @H5S__all_project_simple(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree readnone captures(none) %2) #4 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.d, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @H5S_select_all(ptr noundef %1, i1 noundef zeroext true)
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !29
  %i.j = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !29
  %i.k = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S__all_project_simple, i32 noundef 1092, i64 noundef %i.i, i64 noundef %i.j, ptr noundef nonnull @.str.15) #12 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @H5S__all_iter_init(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store ptr @H5S_sel_iter_all, ptr %1, align 8, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5S_select_all(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @H5S_init_g, align 1, !tbaa !8
  %i.f = tail call i32 @H5S__init_package() #12
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5S_init_g, align 1, !tbaa !8, !range !10
  %.pre7 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre8 = trunc nuw i8 %.pre to i1
  %.pre9 = trunc nuw i8 %.pre7 to i1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @H5S_init_g, align 1, !tbaa !8
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !29
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !29
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_select_all, i32 noundef 1121, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.1) #12 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %.pre-phi10 = phi i1 [ %.pre9, %._crit_edge ], [ %i.d, %bb.a ]
  %.pre-phi = phi i1 [ %.pre8, %._crit_edge ], [ %i.b, %bb.a ]
  %i.k = xor i1 %.pre-phi10, true
  %i.l = select i1 %.pre-phi, i1 true, i1 %i.k
  br i1 %i.l, label %bb.e, label %bb.i, !prof !12

bb.e:                                             ; preds = %bb.d
  br i1 %1, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = tail call i32 @H5S_select_release(ptr noundef %0) #12
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr @H5E_DATASPACE_g, align 8, !tbaa !29
  %i.p = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !29
  %i.q = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5S_select_all, i32 noundef 1129, i64 noundef %i.o, i64 noundef %i.p, ptr noundef nonnull @.str.2) #12 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i64 %i.s, ptr %i.u, align 8, !tbaa !22
  store ptr @H5S_sel_all, ptr %i.t, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.g, %bb.h, %bb.d
  %.0 = phi i32 [ -1, %bb.c ], [ -1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare i32 @H5S__init_package() local_unnamed_addr #8

declare i32 @H5E_printf_stack(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #8

declare i32 @H5S_select_release(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5Sselect_all(i64 noundef %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.H5CX_node_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %1, i8 0, i64 480, i1 false)
  %i.a = load i8, ptr @H5_libinit_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.d, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @H5_init_library() #12
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %._crit_edge, !prof !44

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i8, ptr @H5_libterm_g, align 1, !range !10
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i64, ptr @H5E_FUNC_g, align 8, !tbaa !29
  %i.i = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !29
  %i.j = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5Sselect_all, i32 noundef 1164, i64 noundef %i.h, i64 noundef %i.i, ptr noundef nonnull @.str.3) #12 ; 0 uses
  br label %.thread20

bb.d:                                             ; preds = %._crit_edge, %bb.a
end_hunk_0
