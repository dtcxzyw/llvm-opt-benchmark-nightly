inline.NumInlined: 8
begin_hunk_0_@zsetlinecap:bb.a
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  store ptr %i.h, ptr @osp, align 8, !tbaa !27
  %i.i = load ptr, ptr @igs, align 8, !tbaa !8
  %i.j = tail call i32 @gs_setlinecap(ptr noundef %i.i, i32 noundef %i.f) #6
  br label %line_param.exit.thread

line_param.exit.thread:                           ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -15, %bb.b ], [ -20, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @line_param(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !29
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 20
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %or.cond = icmp ugt i64 %i.e, 2
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i64 %i.e to i32
  store i32 %i.f, ptr %1, align 4, !tbaa !4
  %i.g = load ptr, ptr @osp, align 8, !tbaa !27
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  store ptr %i.h, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ -20, %bb.a ], [ 0, %bb.c ], [ -15, %bb.b ]
  ret i32 %.0
}

declare i32 @gs_setlinecap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrentlinecap(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr @osp, align 8, !tbaa !27
  %i.b = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @igs, align 8, !tbaa !8
  %i.e = tail call i32 @gs_currentlinecap(ptr noundef %i.d) #6
  %i.f = sext i32 %i.e to i64
  store i64 %i.f, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 20, ptr %i.g, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @gs_currentlinecap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetlinejoin(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !29
  %i.c = and i16 %i.b, 252
  %i.d = icmp eq i16 %i.c, 20
  br i1 %i.d, label %bb.b, label %line_param.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !16     ; 2 uses
  %or.cond.i = icmp ugt i64 %i.e, 2
  br i1 %or.cond.i, label %line_param.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = trunc nuw nsw i64 %i.e to i32
  %i.g = load ptr, ptr @osp, align 8, !tbaa !27
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  store ptr %i.h, ptr @osp, align 8, !tbaa !27
  %i.i = load ptr, ptr @igs, align 8, !tbaa !8
  %i.j = tail call i32 @gs_setlinejoin(ptr noundef %i.i, i32 noundef %i.f) #6
  br label %line_param.exit.thread

line_param.exit.thread:                           ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.j, %bb.c ], [ -15, %bb.b ], [ -20, %bb.a ]
  ret i32 %.0
}

declare i32 @gs_setlinejoin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrentlinejoin(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr @osp, align 8, !tbaa !27
  %i.b = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @igs, align 8, !tbaa !8
  %i.e = tail call i32 @gs_currentlinejoin(ptr noundef %i.d) #6
  %i.f = sext i32 %i.e to i64
  store i64 %i.f, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 20, ptr %i.g, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @gs_currentlinejoin(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetmiterlimit(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %num_param.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @igs, align 8, !tbaa !8
  %i.d = load float, ptr %i.a, align 4, !tbaa !24
  %i.e = fpext float %i.d to double
  %i.f = call i32 @gs_setmiterlimit(ptr noundef %i.c, double noundef %i.e) #6, !inline_history !26 ; 2 uses
  %.not5.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i, label %bb.c, label %num_param.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @osp, align 8, !tbaa !27
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  store ptr %i.h, ptr @osp, align 8, !tbaa !27
  br label %num_param.exit

num_param.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.08.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.c ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.08.i
}

declare i32 @gs_setmiterlimit(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrentmiterlimit(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr @osp, align 8, !tbaa !27
  %i.b = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @igs, align 8, !tbaa !8
  %i.e = tail call float @gs_currentmiterlimit(ptr noundef %i.d) #6
  store float %i.e, ptr %i.a, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.f, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare float @gs_currentmiterlimit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetdash(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) #6 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -16
  %i.d = getelementptr inbounds i8, ptr %0, i64 -8
  %i.e = load i16, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %1 = trunc i16 %i.e to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %bb.j [
    i8 0, label %bb.c
    i8 40, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = and i16 %i.e, 512
  %.not25.not = icmp eq i16 %i.f, 0
  br i1 %.not25.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.h = getelementptr inbounds i8, ptr %0, i64 -6
  %i.i = load i16, ptr %i.h, align 2, !tbaa !30   ; 2 uses
  %i.j = zext i16 %i.i to i32                     ; 4 uses
  %i.k = call ptr @alloc(i32 noundef %i.j, i32 noundef 4, ptr noundef nonnull @.str.3) #6 ; 2 uses
  %.not2629 = icmp eq i16 %i.i, 0
  br i1 %.not2629, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %.in = phi i32 [ %i.l, %bb.h ], [ %i.j, %bb.d ]
  %.031 = phi ptr [ %.1, %bb.h ], [ %i.k, %bb.d ] ; 3 uses
  %.02230 = phi ptr [ %i.r, %bb.h ], [ %i.g, %bb.d ] ; 4 uses
  %i.l = add nsw i32 %.in, -1                     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02230, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !29
  %2 = trunc i16 %i.n to i8
  %trunc28 = and i8 %2, -4
  switch i8 %trunc28, label %bb.g [
    i8 20, label %bb.e
    i8 44, label %bb.f
  ]

bb.e:                                             ; preds = %.lr.ph
  %i.o = load i64, ptr %.02230, align 8, !tbaa !16
  %i.p = sitofp i64 %i.o to float
  br label %bb.h

bb.f:                                             ; preds = %.lr.ph
  %i.q = load float, ptr %.02230, align 8, !tbaa !16
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  call void @alloc_free(ptr noundef %.031, i32 noundef %i.j, i32 noundef 4, ptr noundef nonnull @.str.3) #6
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi float [ %i.q, %bb.f ], [ %i.p, %bb.e ]
  %.1 = getelementptr inbounds nuw i8, ptr %.031, i64 4
  store float %storemerge, ptr %.031, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %.02230, i64 16
  %.not26 = icmp eq i32 %i.l, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %i.s = load ptr, ptr @igs, align 8, !tbaa !8
  %i.t = load float, ptr %i.a, align 4, !tbaa !24
  %i.u = fpext float %i.t to double
  %i.v = call i32 @gs_setdash(ptr noundef %i.s, ptr noundef %i.k, i32 noundef %i.j, double noundef %i.u) #6 ; 2 uses
  %.not27 = icmp eq i32 %i.v, 0
  br i1 %.not27, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr @osp, align 8, !tbaa !27
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -32
  store ptr %i.x, ptr @osp, align 8, !tbaa !27
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i, %bb.c, %bb.b, %bb.a, %bb.g
  %.021 = phi i32 [ -7, %bb.c ], [ %i.b, %bb.a ], [ -20, %bb.b ], [ -20, %bb.g ], [ 0, %bb.i ], [ %i.v, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.021
}

declare i32 @real_param(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gs_setdash(ptr noundef, ptr noundef, i32 noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrentdash(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr @igs, align 8, !tbaa !8
  %i.b = tail call i32 @gs_currentdash_length(ptr noundef %i.a) #6 ; 8 uses
  %i.c = tail call ptr @alloc(i32 noundef %i.b, i32 noundef 16, ptr noundef nonnull @.str.4) #6 ; 4 uses
  %i.d = sext i32 %i.b to i64
  %i.e = mul nsw i64 %i.d, 12
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 3 uses
  %i.g = load ptr, ptr @igs, align 8, !tbaa !8
  %i.h = tail call i32 @gs_currentdash_pattern(ptr noundef %i.g, ptr noundef %i.f) #6 ; 0 uses
  %.not24 = icmp eq i32 %i.b, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i32 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.027.prol = phi ptr [ %i.m, %.lr.ph.prol ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.02026.prol = phi ptr [ %i.l, %.lr.ph.prol ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %.02225.prol = phi i32 [ %i.i, %.lr.ph.prol ], [ %i.b, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.i = add nsw i32 %.02225.prol, -1             ; 2 uses
  %i.j = load float, ptr %.027.prol, align 4, !tbaa !24
  store float %i.j, ptr %.02026.prol, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %.02026.prol, i64 8
  store i16 44, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %.02026.prol, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.027.prol, i64 4 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !32

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.027.unr = phi ptr [ %i.f, %.lr.ph.preheader ], [ %i.m, %.lr.ph.prol ]
  %.02026.unr = phi ptr [ %i.c, %.lr.ph.preheader ], [ %i.l, %.lr.ph.prol ]
  %.02225.unr = phi i32 [ %i.b, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.n = icmp ult i32 %i.b, 4
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.027 = phi ptr [ %i.ae, %.lr.ph ], [ %.027.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02026 = phi ptr [ %i.ad, %.lr.ph ], [ %.02026.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.02225 = phi i32 [ %i.aa, %.lr.ph ], [ %.02225.unr, %.lr.ph.prol.loopexit ]
  %i.o = load float, ptr %.027, align 4, !tbaa !24
  store float %i.o, ptr %.02026, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %.02026, i64 8
  store i16 44, ptr %i.p, align 8, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %.02026, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.027, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !24
  store float %i.s, ptr %i.q, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %.02026, i64 24
  store i16 44, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %.02026, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.027, i64 8
  %i.w = load float, ptr %i.v, align 4, !tbaa !24
  store float %i.w, ptr %i.u, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.02026, i64 40
  store i16 44, ptr %i.x, align 8, !tbaa !29
  %i.y = getelementptr inbounds nuw i8, ptr %.02026, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %.027, i64 12
  %i.aa = add nsw i32 %.02225, -4                 ; 2 uses
  %i.ab = load float, ptr %i.z, align 4, !tbaa !24
  store float %i.ab, ptr %i.y, align 8, !tbaa !16
  %i.ac = getelementptr inbounds nuw i8, ptr %.02026, i64 56
  store i16 44, ptr %i.ac, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %.02026, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %.027, i64 16
  %.not.3 = icmp eq i32 %i.aa, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %i.af, ptr @osp, align 8, !tbaa !27
  %i.ag = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.ah = icmp ugt ptr %i.af, %i.ag
  br i1 %i.ah, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 770, ptr %i.aj, align 8, !tbaa !29
  %i.ak = trunc i32 %i.b to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !30
  %i.am = load ptr, ptr @igs, align 8, !tbaa !8
  %i.an = tail call float @gs_currentdash_offset(ptr noundef %i.am) #6
  store float %i.an, ptr %i.af, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.ao, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.021 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.021
}

declare i32 @gs_currentdash_length(ptr noundef) local_unnamed_addr #1

declare i32 @gs_currentdash_pattern(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @gs_currentdash_offset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetflat(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @real_param(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 0) #6 ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %num_param.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @igs, align 8, !tbaa !8
  %i.d = load float, ptr %i.a, align 4, !tbaa !24
  %i.e = fpext float %i.d to double
  %i.f = call i32 @gs_setflat(ptr noundef %i.c, double noundef %i.e) #6, !inline_history !26 ; 2 uses
  %.not5.i = icmp eq i32 %i.f, 0
  br i1 %.not5.i, label %bb.c, label %num_param.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @osp, align 8, !tbaa !27
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  store ptr %i.h, ptr @osp, align 8, !tbaa !27
  br label %num_param.exit

num_param.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.08.i = phi i32 [ %i.f, %bb.b ], [ 0, %bb.c ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.08.i
}

declare i32 @gs_setflat(ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrentflat(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr @osp, align 8, !tbaa !27
  %i.b = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
end_hunk_0
begin_hunk_1_@zcurrentgray:bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare float @gs_currentgray(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zsethsbcolor(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @num_params(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @igs, align 8, !tbaa !8
  %i.e = load float, ptr %i.a, align 4, !tbaa !24
  %i.f = fpext float %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !24
  %i.i = fpext float %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !24
  %i.l = fpext float %i.k to double
  %i.m = call i32 @gs_sethsbcolor(ptr noundef %i.d, double noundef %i.f, double noundef %i.i, double noundef %i.l) #6 ; 3 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @osp, align 8, !tbaa !27
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -48
  store ptr %i.p, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @num_params(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_sethsbcolor(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrenthsbcolor(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load ptr, ptr @igs, align 8, !tbaa !8
  %i.c = call i32 @gs_currenthsbcolor(ptr noundef %i.b, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.d, ptr @osp, align 8, !tbaa !27
  %i.e = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load float, ptr %i.a, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.g, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !24
  store float %i.o, ptr %i.d, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 44, ptr %i.p, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @gs_currenthsbcolor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @tri_put(ptr noundef writeonly captures(none) initializes((-32, -28), (-24, -22), (-16, -12), (-8, -6), (0, 4), (8, 10)) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !24
  %i.b = getelementptr inbounds i8, ptr %0, i64 -32
  store float %i.a, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds i8, ptr %0, i64 -24
  store i16 44, ptr %i.c, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !24
  %i.f = getelementptr inbounds i8, ptr %0, i64 -16
  store float %i.e, ptr %i.f, align 8, !tbaa !16
  %i.g = getelementptr inbounds i8, ptr %0, i64 -8
  store i16 44, ptr %i.g, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !24
  store float %i.i, ptr %0, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 44, ptr %i.j, align 8, !tbaa !29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @zsetrgbcolor(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = call i32 @num_params(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @igs, align 8, !tbaa !8
  %i.e = load float, ptr %i.a, align 4, !tbaa !24
  %i.f = fpext float %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !24
  %i.i = fpext float %i.h to double
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !24
  %i.l = fpext float %i.k to double
  %i.m = call i32 @gs_setrgbcolor(ptr noundef %i.d, double noundef %i.f, double noundef %i.i, double noundef %i.l) #6 ; 3 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr @osp, align 8, !tbaa !27
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -48
  store ptr %i.p, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ %i.m, %bb.c ], [ %i.m, %bb.b ], [ %i.b, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @gs_setrgbcolor(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrentrgbcolor(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = load ptr, ptr @igs, align 8, !tbaa !8
  %i.c = call i32 @gs_currentrgbcolor(ptr noundef %i.b, ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.d, ptr @osp, align 8, !tbaa !27
  %i.e = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.f = icmp ugt ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = load float, ptr %i.a, align 4, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.g, ptr %i.h, align 8, !tbaa !16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.i, align 8, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.k, ptr %i.l, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.m, align 8, !tbaa !29
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !24
  store float %i.o, ptr %i.d, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i16 44, ptr %i.p, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @gs_currentrgbcolor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -20, 1) i32 @zsettransfer(ptr noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %1 = trunc i16 %i.b to i8
  %trunc = and i8 %1, -4
  switch i8 %trunc, label %bb.d [
    i8 0, label %bb.b
    i8 40, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = and i16 %i.b, 3
  %.not = icmp eq i16 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @istate, i64 24), ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !35
  %i.d = load ptr, ptr @osp, align 8, !tbaa !27
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -16
  store ptr %i.e, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ -20, %bb.a ], [ -7, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -16, 1) i32 @zcurrenttransfer(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr @osp, align 8, !tbaa !27
  %i.b = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.c = icmp ugt ptr %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @istate, i64 24), i64 16, i1 false), !tbaa.struct !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -16, 1) i32 @zcurrentscreen(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.d = load ptr, ptr @igs, align 8, !tbaa !8
  %i.e = call i32 @gs_currentscreen(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.f, ptr @osp, align 8, !tbaa !27
  %i.g = load ptr, ptr @ostop, align 8, !tbaa !27
  %i.h = icmp ugt ptr %i.f, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr @osp, align 8, !tbaa !27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load float, ptr %i.a, align 4, !tbaa !24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.i, ptr %i.j, align 8, !tbaa !16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 44, ptr %i.k, align 8, !tbaa !29
  %i.l = load float, ptr %i.b, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.l, ptr %i.m, align 8, !tbaa !16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i16 44, ptr %i.n, align 8, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @istate, i64 8), i64 16, i1 false), !tbaa.struct !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -16, %bb.b ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @gs_currentscreen(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @zgstate_op_init() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zgstate_op_init.my_defs) #6 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS10gs_state_s", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !15, i64 16}
!12 = !{!"int_state_s", !13, i64 0, !14, i64 8, !14, i64 24, !14, i64 40, !14, i64 56}
!13 = !{!"p1 _ZTS11int_state_s", !10, i64 0}
!14 = !{!"ref_s", !6, i64 0, !15, i64 8, !15, i64 10}
!15 = !{!"short", !6, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!12, !15, i64 32}
!18 = !{i64 0, i64 8, !19, i64 8, i64 8, !16, i64 16, i64 2, !20, i64 18, i64 2, !20, i64 24, i64 8, !16, i64 32, i64 2, !20, i64 34, i64 2, !20, i64 40, i64 8, !16, i64 48, i64 2, !20, i64 50, i64 2, !20, i64 56, i64 8, !16, i64 64, i64 2, !20, i64 66, i64 2, !20}
!19 = !{!13, !13, i64 0}
!20 = !{!15, !15, i64 0}
!21 = !{!12, !13, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{ptr @num_param}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS5ref_s", !10, i64 0}
!29 = !{!14, !15, i64 8}
!30 = !{!14, !15, i64 10}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = distinct !{!34, !23}
!35 = !{i64 0, i64 8, !16, i64 8, i64 2, !20, i64 10, i64 2, !20}
end_hunk_1
