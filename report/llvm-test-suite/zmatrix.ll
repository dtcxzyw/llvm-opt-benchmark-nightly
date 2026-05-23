inline.NumInlined: 4
begin_hunk_0_@zscale:bb.a
  %i.a = alloca [2 x float], align 4              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call i32 (ptr, ...) @write_matrix(ptr noundef %0) #4
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @num_params(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @igs, align 8, !tbaa !11
  %i.g = load float, ptr %i.a, align 4, !tbaa !17
  %i.h = fpext float %i.g to double
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !17
  %i.k = fpext float %i.j to double
  %i.l = call i32 @gs_scale(ptr noundef %i.f, double noundef %i.h, double noundef %i.k) #4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %0, align 8, !tbaa !14
  %i.n = getelementptr inbounds i8, ptr %0, i64 -16
  %i.o = call i32 @num_params(ptr noundef nonnull %i.n, i32 noundef 2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = load float, ptr %i.a, align 4, !tbaa !17
  %i.r = fpext float %i.q to double
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !17
  %i.u = fpext float %i.t to double
  %i.v = call i32 @gs_make_scaling(double noundef %i.r, double noundef %i.u, ptr noundef %i.m) #4
  %i.w = getelementptr inbounds i8, ptr %0, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.115 = phi i32 [ %i.l, %bb.c ], [ %i.v, %bb.e ] ; 3 uses
  %i.x = icmp sgt i32 %.115, -1
  br i1 %i.x, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr @osp, align 8, !tbaa !15
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -32
  store ptr %i.z, ptr @osp, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ %i.o, %bb.d ], [ %.115, %bb.f ], [ %i.d, %bb.b ], [ %.115, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

declare i32 @gs_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_make_scaling(double noundef, double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zrotate(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = tail call i32 (ptr, ...) @write_matrix(ptr noundef %0) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @num_params(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @igs, align 8, !tbaa !11
  %i.g = load float, ptr %i.a, align 4, !tbaa !17
  %i.h = fpext float %i.g to double
  %i.i = call i32 @gs_rotate(ptr noundef %i.f, double noundef %i.h) #4
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !14
  %i.k = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.l = call i32 @num_params(ptr noundef nonnull %i.k, i32 noundef 1, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = load float, ptr %i.a, align 4, !tbaa !17
  %i.o = fpext float %i.n to double
  %i.p = call i32 @gs_make_rotation(double noundef %i.o, ptr noundef %i.j) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.115 = phi i32 [ %i.i, %bb.c ], [ %i.p, %bb.e ] ; 3 uses
  %i.q = icmp sgt i32 %.115, -1
  br i1 %i.q, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr @osp, align 8, !tbaa !15
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16
  store ptr %i.s, ptr @osp, align 8, !tbaa !15
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi i32 [ %i.l, %bb.d ], [ %.115, %bb.f ], [ %i.d, %bb.b ], [ %.115, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

declare i32 @gs_rotate(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @gs_make_rotation(double noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zconcat(ptr noundef %0) #2 {
bb.a:
  %1 = alloca %struct.gs_matrix_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.a = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef %0, ptr noundef nonnull %1) #4 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @igs, align 8, !tbaa !11
  %i.d = call i32 @gs_concat(ptr noundef %i.c, ptr noundef nonnull %1) #4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @osp, align 8, !tbaa !15
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16
  store ptr %i.g, ptr @osp, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.a, %bb.a ], [ %i.d, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret i32 %.0
}

declare i32 @gs_concat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zconcatmatrix(ptr noundef %0) #2 {
bb.a:
  %1 = alloca %struct.gs_matrix_s, align 8        ; 4 uses
  %2 = alloca %struct.gs_matrix_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.a = getelementptr inbounds i8, ptr %0, i64 -32 ; 2 uses
  %i.b = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #4 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %0, i64 -16
  %i.e = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %i.d, ptr noundef nonnull %2) #4 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = call i32 (ptr, ...) @write_matrix(ptr noundef nonnull %0) #4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = call i32 @gs_matrix_multiply(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %i.i) #4 ; 3 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  %i.l = load ptr, ptr @osp, align 8, !tbaa !15
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -32
  store ptr %i.m, ptr @osp, align 8, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %.08 = phi i32 [ %i.j, %bb.e ], [ %i.b, %bb.a ], [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret i32 %.08
}

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @ztransform(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %1 = alloca %struct.gs_point_s, align 4         ; 6 uses
  %2 = alloca %struct.gs_matrix_s, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %3 = trunc i16 %i.c to i8
  %trunc.i = and i8 %3, -4
  switch i8 %trunc.i, label %common_transform.exit [
    i8 44, label %bb.b
    i8 20, label %bb.c
    i8 0, label %bb.d
    i8 40, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to float
  br label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.g = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %0, ptr noundef nonnull %2) #4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.j = call i32 @num_params(ptr noundef nonnull %i.i, i32 noundef 2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load float, ptr %i.a, align 4, !tbaa !17
  %i.m = fpext float %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !17
  %i.p = fpext float %i.o to double
  %i.q = call i32 @gs_point_transform(double noundef %i.m, double noundef %i.p, ptr noundef nonnull %2, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.020.ph.i = phi i32 [ %i.q, %bb.f ], [ %i.j, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %common_transform.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @osp, align 8, !tbaa !15
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  store ptr %i.t, ptr @osp, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.u = phi float [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %4 = trunc i16 %i.x to i8
  %trunc28.i = and i8 %4, -4
  switch i8 %trunc28.i, label %common_transform.exit [
    i8 44, label %bb.i
    i8 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load float, ptr %i.v, align 8, !tbaa !14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.v, align 8, !tbaa !14
  %i.aa = sitofp i64 %i.z to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi float [ %i.aa, %bb.j ], [ %i.y, %bb.i ]
  %i.ab = load ptr, ptr @igs, align 8, !tbaa !11
  %i.ac = fpext float %storemerge.i to double
  %i.ad = fpext float %i.u to double
  %i.ae = call i32 @gs_transform(ptr noundef %i.ab, double noundef %i.ac, double noundef %i.ad, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %common_transform.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.123.i = phi ptr [ %0, %bb.k ], [ %i.i, %bb.g ] ; 4 uses
  %i.ag = load float, ptr %1, align 4, !tbaa !22
  %i.ah = getelementptr inbounds i8, ptr %.123.i, i64 -16
  store float %i.ag, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds i8, ptr %.123.i, i64 -8
  store i16 44, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !24
  store float %i.ak, ptr %.123.i, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.123.i, i64 8
  store i16 44, ptr %i.al, align 8, !tbaa !8
  br label %common_transform.exit

common_transform.exit:                            ; preds = %bb.a, %.thread.i, %bb.h, %bb.k, %bb.l
  %.1.i = phi i32 [ %.020.ph.i, %.thread.i ], [ -20, %bb.a ], [ -20, %bb.h ], [ 0, %bb.l ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @common_transform(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %3 = alloca %struct.gs_point_s, align 4         ; 6 uses
  %4 = alloca %struct.gs_matrix_s, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %5 = trunc i16 %i.c to i8
  %trunc = and i8 %5, -4
  switch i8 %trunc, label %bb.m [
    i8 44, label %bb.b
    i8 20, label %bb.c
    i8 0, label %bb.d
    i8 40, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to float
  br label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  %i.g = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %0, ptr noundef nonnull %4) #4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.j = call i32 @num_params(ptr noundef nonnull %i.i, i32 noundef 2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load float, ptr %i.a, align 4, !tbaa !17
  %i.m = fpext float %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !17
  %i.p = fpext float %i.o to double
  %i.q = call i32 %2(double noundef %i.m, double noundef %i.p, ptr noundef nonnull %4, ptr noundef nonnull %3) #4 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d
  %.020.ph = phi i32 [ %i.q, %bb.f ], [ %i.j, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @osp, align 8, !tbaa !15
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  store ptr %i.t, ptr @osp, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.u = phi float [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %6 = trunc i16 %i.x to i8
  %trunc28 = and i8 %6, -4
  switch i8 %trunc28, label %bb.m [
    i8 44, label %bb.i
    i8 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load float, ptr %i.v, align 8, !tbaa !14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.v, align 8, !tbaa !14
  %i.aa = sitofp i64 %i.z to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge = phi float [ %i.aa, %bb.j ], [ %i.y, %bb.i ]
  %i.ab = load ptr, ptr @igs, align 8, !tbaa !11
  %i.ac = fpext float %storemerge to double
  %i.ad = fpext float %i.u to double
  %i.ae = call i32 %1(ptr noundef %i.ab, double noundef %i.ac, double noundef %i.ad, ptr noundef nonnull %3) #4 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.k
  %.123 = phi ptr [ %0, %bb.k ], [ %i.i, %bb.g ]  ; 4 uses
  %i.ag = load float, ptr %3, align 4, !tbaa !22
  %i.ah = getelementptr inbounds i8, ptr %.123, i64 -16
  store float %i.ag, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds i8, ptr %.123, i64 -8
  store i16 44, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !24
  store float %i.ak, ptr %.123, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.123, i64 8
  store i16 44, ptr %i.al, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %.thread, %bb.k, %bb.h, %bb.a, %bb.l
  %.1 = phi i32 [ %.020.ph, %.thread ], [ -20, %bb.a ], [ -20, %bb.h ], [ 0, %bb.l ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1
}

declare i32 @gs_transform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_point_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zdtransform(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %1 = alloca %struct.gs_point_s, align 4         ; 6 uses
  %2 = alloca %struct.gs_matrix_s, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %3 = trunc i16 %i.c to i8
  %trunc.i = and i8 %3, -4
  switch i8 %trunc.i, label %common_transform.exit [
    i8 44, label %bb.b
    i8 20, label %bb.c
    i8 0, label %bb.d
    i8 40, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to float
  br label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.g = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %0, ptr noundef nonnull %2) #4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.j = call i32 @num_params(ptr noundef nonnull %i.i, i32 noundef 2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load float, ptr %i.a, align 4, !tbaa !17
  %i.m = fpext float %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !17
  %i.p = fpext float %i.o to double
  %i.q = call i32 @gs_distance_transform(double noundef %i.m, double noundef %i.p, ptr noundef nonnull %2, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.020.ph.i = phi i32 [ %i.q, %bb.f ], [ %i.j, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %common_transform.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @osp, align 8, !tbaa !15
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  store ptr %i.t, ptr @osp, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.u = phi float [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %4 = trunc i16 %i.x to i8
  %trunc28.i = and i8 %4, -4
  switch i8 %trunc28.i, label %common_transform.exit [
    i8 44, label %bb.i
    i8 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load float, ptr %i.v, align 8, !tbaa !14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.v, align 8, !tbaa !14
  %i.aa = sitofp i64 %i.z to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi float [ %i.aa, %bb.j ], [ %i.y, %bb.i ]
  %i.ab = load ptr, ptr @igs, align 8, !tbaa !11
  %i.ac = fpext float %storemerge.i to double
  %i.ad = fpext float %i.u to double
  %i.ae = call i32 @gs_dtransform(ptr noundef %i.ab, double noundef %i.ac, double noundef %i.ad, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %common_transform.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.123.i = phi ptr [ %0, %bb.k ], [ %i.i, %bb.g ] ; 4 uses
  %i.ag = load float, ptr %1, align 4, !tbaa !22
  %i.ah = getelementptr inbounds i8, ptr %.123.i, i64 -16
  store float %i.ag, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds i8, ptr %.123.i, i64 -8
  store i16 44, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !24
  store float %i.ak, ptr %.123.i, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.123.i, i64 8
  store i16 44, ptr %i.al, align 8, !tbaa !8
  br label %common_transform.exit

common_transform.exit:                            ; preds = %bb.a, %.thread.i, %bb.h, %bb.k, %bb.l
  %.1.i = phi i32 [ %.020.ph.i, %.thread.i ], [ -20, %bb.a ], [ -20, %bb.h ], [ 0, %bb.l ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1.i
}

declare i32 @gs_dtransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_distance_transform(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zitransform(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %1 = alloca %struct.gs_point_s, align 4         ; 6 uses
  %2 = alloca %struct.gs_matrix_s, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %3 = trunc i16 %i.c to i8
  %trunc.i = and i8 %3, -4
  switch i8 %trunc.i, label %common_transform.exit [
    i8 44, label %bb.b
    i8 20, label %bb.c
    i8 0, label %bb.d
    i8 40, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to float
  br label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.g = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %0, ptr noundef nonnull %2) #4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.j = call i32 @num_params(ptr noundef nonnull %i.i, i32 noundef 2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load float, ptr %i.a, align 4, !tbaa !17
  %i.m = fpext float %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !17
  %i.p = fpext float %i.o to double
  %i.q = call i32 @gs_point_transform_inverse(double noundef %i.m, double noundef %i.p, ptr noundef nonnull %2, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.020.ph.i = phi i32 [ %i.q, %bb.f ], [ %i.j, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %common_transform.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @osp, align 8, !tbaa !15
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  store ptr %i.t, ptr @osp, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.u = phi float [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %4 = trunc i16 %i.x to i8
  %trunc28.i = and i8 %4, -4
  switch i8 %trunc28.i, label %common_transform.exit [
    i8 44, label %bb.i
    i8 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load float, ptr %i.v, align 8, !tbaa !14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.v, align 8, !tbaa !14
  %i.aa = sitofp i64 %i.z to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi float [ %i.aa, %bb.j ], [ %i.y, %bb.i ]
  %i.ab = load ptr, ptr @igs, align 8, !tbaa !11
  %i.ac = fpext float %storemerge.i to double
  %i.ad = fpext float %i.u to double
  %i.ae = call i32 @gs_itransform(ptr noundef %i.ab, double noundef %i.ac, double noundef %i.ad, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %common_transform.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.123.i = phi ptr [ %0, %bb.k ], [ %i.i, %bb.g ] ; 4 uses
  %i.ag = load float, ptr %1, align 4, !tbaa !22
  %i.ah = getelementptr inbounds i8, ptr %.123.i, i64 -16
  store float %i.ag, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds i8, ptr %.123.i, i64 -8
  store i16 44, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !24
  store float %i.ak, ptr %.123.i, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.123.i, i64 8
  store i16 44, ptr %i.al, align 8, !tbaa !8
  br label %common_transform.exit

common_transform.exit:                            ; preds = %bb.a, %.thread.i, %bb.h, %bb.k, %bb.l
  %.1.i = phi i32 [ %.020.ph.i, %.thread.i ], [ -20, %bb.a ], [ -20, %bb.h ], [ 0, %bb.l ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1.i
}

declare i32 @gs_itransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_point_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483648, 1) i32 @zidtransform(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca [2 x float], align 4              ; 5 uses
  %1 = alloca %struct.gs_point_s, align 4         ; 6 uses
  %2 = alloca %struct.gs_matrix_s, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !8
  %3 = trunc i16 %i.c to i8
  %trunc.i = and i8 %3, -4
  switch i8 %trunc.i, label %common_transform.exit [
    i8 44, label %bb.b
    i8 20, label %bb.c
    i8 0, label %bb.d
    i8 40, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !tbaa !14
  %i.f = sitofp i64 %i.e to float
  br label %bb.h

bb.d:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  %i.g = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %0, ptr noundef nonnull %2) #4 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.j = call i32 @num_params(ptr noundef nonnull %i.i, i32 noundef 2, ptr noundef nonnull %i.a) #4 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load float, ptr %i.a, align 4, !tbaa !17
  %i.m = fpext float %i.l to double
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !17
  %i.p = fpext float %i.o to double
  %i.q = call i32 @gs_distance_transform_inverse(double noundef %i.m, double noundef %i.p, ptr noundef nonnull %2, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f, %bb.e, %bb.d
  %.020.ph.i = phi i32 [ %i.q, %bb.f ], [ %i.j, %bb.e ], [ %i.g, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %common_transform.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @osp, align 8, !tbaa !15
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -16
  store ptr %i.t, ptr @osp, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.l

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.u = phi float [ %i.f, %bb.c ], [ %i.d, %bb.b ]
  %i.v = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %0, i64 -8
  %i.x = load i16, ptr %i.w, align 8, !tbaa !8
  %4 = trunc i16 %i.x to i8
  %trunc28.i = and i8 %4, -4
  switch i8 %trunc28.i, label %common_transform.exit [
    i8 44, label %bb.i
    i8 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.y = load float, ptr %i.v, align 8, !tbaa !14
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.v, align 8, !tbaa !14
  %i.aa = sitofp i64 %i.z to float
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i = phi float [ %i.aa, %bb.j ], [ %i.y, %bb.i ]
  %i.ab = load ptr, ptr @igs, align 8, !tbaa !11
  %i.ac = fpext float %storemerge.i to double
  %i.ad = fpext float %i.u to double
  %i.ae = call i32 @gs_idtransform(ptr noundef %i.ab, double noundef %i.ac, double noundef %i.ad, ptr noundef nonnull %1) #4, !inline_history !21 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %common_transform.exit, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g
  %.123.i = phi ptr [ %0, %bb.k ], [ %i.i, %bb.g ] ; 4 uses
  %i.ag = load float, ptr %1, align 4, !tbaa !22
  %i.ah = getelementptr inbounds i8, ptr %.123.i, i64 -16
  store float %i.ag, ptr %i.ah, align 8, !tbaa !14
  %i.ai = getelementptr inbounds i8, ptr %.123.i, i64 -8
  store i16 44, ptr %i.ai, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !24
  store float %i.ak, ptr %.123.i, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %.123.i, i64 8
  store i16 44, ptr %i.al, align 8, !tbaa !8
  br label %common_transform.exit

common_transform.exit:                            ; preds = %bb.a, %.thread.i, %bb.h, %bb.k, %bb.l
  %.1.i = phi i32 [ %.020.ph.i, %.thread.i ], [ -20, %bb.a ], [ -20, %bb.h ], [ 0, %bb.l ], [ %i.ae, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.1.i
}

declare i32 @gs_idtransform(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare i32 @gs_distance_transform_inverse(double noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @zinvertmatrix(ptr noundef %0) #2 {
bb.a:
  %1 = alloca %struct.gs_matrix_s, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  %i.b = call i32 (ptr, ptr, ...) @read_matrix(ptr noundef nonnull %i.a, ptr noundef nonnull %1) #4 ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 (ptr, ...) @write_matrix(ptr noundef nonnull %0) #4 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !14
  %i.g = call i32 @gs_matrix_invert(ptr noundef nonnull %1, ptr noundef %i.f) #4 ; 3 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !19
  %i.i = load ptr, ptr @osp, align 8, !tbaa !15
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -16
  store ptr %i.j, ptr @osp, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.07 = phi i32 [ %i.g, %bb.d ], [ %i.b, %bb.a ], [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret i32 %.07
}

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @zmatrix_op_init() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @z_op_init(ptr noundef nonnull @zmatrix_op_init.my_defs) #4 ; 0 uses
  ret void
}

declare i32 @z_op_init(...) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"ref_s", !6, i64 0, !10, i64 8, !10, i64 10}
!10 = !{!"short", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS10gs_state_s", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!6, !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS5ref_s", !13, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !6, i64 0}
!19 = !{i64 0, i64 8, !14, i64 8, i64 2, !20, i64 10, i64 2, !20}
!20 = !{!10, !10, i64 0}
!21 = !{ptr @common_transform}
!22 = !{!23, !18, i64 0}
!23 = !{!"gs_point_s", !18, i64 0, !18, i64 4}
!24 = !{!23, !18, i64 4}
end_hunk_0
