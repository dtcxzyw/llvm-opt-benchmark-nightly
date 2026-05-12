inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@rb_file_s_link:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !14
end_hunk_0
begin_hunk_1_@rb_file_s_link:bb.a
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  store volatile i64 %i.s, ptr %i.t, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.u = icmp eq i64 %2, 0
  %i.v = and i64 %2, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i2

rbimpl_RB_TYPE_P_fastpath.exit.i.i2:              ; preds = %rb_get_path.exit
  %i.y = inttoptr i64 %2 to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 31
  %i.ab = icmp eq i64 %i.aa, 5
end_hunk_1
begin_hunk_2_@rb_file_s_link:bb.a

rbimpl_intern_const.exit.i.i6:                    ; preds = %.lr.ph.i.i.i9, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3
  %.lcssa.i.i.i7 = phi i64 [ %.pr.i.i.i4, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3 ], [ %i.ac, %.lr.ph.i.i.i9 ]
  %i.ad = call i64 @rb_check_funcall_default(i64 noundef %2, i64 noundef %.lcssa.i.i.i7, i32 noundef 0, ptr noundef null, i64 noundef %2) #22
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !14
  %i.ae = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit11

rb_get_path.exit11:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rbimpl_intern_const.exit.i.i6
  %.0.i.i8 = phi i64 [ %i.af, %rbimpl_intern_const.exit.i.i6 ], [ %2, %rbimpl_RB_TYPE_P_fastpath.exit.i.i2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ag = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
end_hunk_2
begin_hunk_3_@rb_file_s_symlink:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !14
end_hunk_3
begin_hunk_4_@rb_file_s_symlink:bb.a
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  store volatile i64 %i.s, ptr %i.t, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.u = icmp eq i64 %2, 0
  %i.v = and i64 %2, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i2

rbimpl_RB_TYPE_P_fastpath.exit.i.i2:              ; preds = %rb_get_path.exit
  %i.y = inttoptr i64 %2 to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = and i64 %i.z, 31
  %i.ab = icmp eq i64 %i.aa, 5
end_hunk_4
begin_hunk_5_@rb_file_s_symlink:bb.a

rbimpl_intern_const.exit.i.i6:                    ; preds = %.lr.ph.i.i.i9, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3
  %.lcssa.i.i.i7 = phi i64 [ %.pr.i.i.i4, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3 ], [ %i.ac, %.lr.ph.i.i.i9 ]
  %i.ad = call i64 @rb_check_funcall_default(i64 noundef %2, i64 noundef %.lcssa.i.i.i7, i32 noundef 0, ptr noundef null, i64 noundef %2) #22
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !14
  %i.ae = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.af = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit11

rb_get_path.exit11:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rbimpl_intern_const.exit.i.i6
  %.0.i.i8 = phi i64 [ %i.af, %rbimpl_intern_const.exit.i.i6 ], [ %2, %rbimpl_RB_TYPE_P_fastpath.exit.i.i2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ag = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
end_hunk_5
begin_hunk_6_@rb_file_s_rename:bb.a
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.rename_args, align 8        ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
end_hunk_6
begin_hunk_7_@rb_file_s_rename:bb.a
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  store volatile i64 %i.u, ptr %i.v, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.w = icmp eq i64 %2, 0
  %i.x = and i64 %2, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i2

rbimpl_RB_TYPE_P_fastpath.exit.i.i2:              ; preds = %rb_get_path.exit
  %i.aa = inttoptr i64 %2 to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 5
end_hunk_7
begin_hunk_8_@rb_file_s_rename:bb.a

rbimpl_intern_const.exit.i.i6:                    ; preds = %.lr.ph.i.i.i9, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3
  %.lcssa.i.i.i7 = phi i64 [ %.pr.i.i.i4, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3 ], [ %i.ae, %.lr.ph.i.i.i9 ]
  %i.af = call i64 @rb_check_funcall_default(i64 noundef %2, i64 noundef %.lcssa.i.i.i7, i32 noundef 0, ptr noundef null, i64 noundef %2) #22
  store i64 %i.af, ptr %i.a, align 8, !tbaa !14
  %i.ag = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit11

rb_get_path.exit11:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rbimpl_intern_const.exit.i.i6
  %.0.i.i8 = phi i64 [ %i.ah, %rbimpl_intern_const.exit.i.i6 ], [ %2, %rbimpl_RB_TYPE_P_fastpath.exit.i.i2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ai = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
end_hunk_8
begin_hunk_9_@rb_check_realpath_emulate:bb.a
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 9 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
end_hunk_9
begin_hunk_10_@rb_check_realpath_emulate:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 4, ptr %i.f, align 8, !tbaa !14
  %i.j = tail call i64 @rb_str_new_frozen(i64 noundef %1) #22 ; 5 uses
  store i64 %i.j, ptr %i.e, align 8, !tbaa !14
  %i.k = icmp eq i64 %0, 4
  br i1 %i.k, label %bb.c, label %bb.b
end_hunk_10
begin_hunk_11_@rb_check_realpath_emulate:bb.a
  %i.z = load i64, ptr %i.b, align 8, !tbaa !14
  %i.aa = call i64 @rb_str_new_frozen(i64 noundef %i.z) #22
  store i64 %i.aa, ptr %i.b, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %rb_get_path.exit, %bb.a
  %i.ab = call ptr @rb_enc_get(i64 noundef %i.j) #22 ; 2 uses
  %i.ac = inttoptr i64 %i.j to ptr                ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = and i64 %i.ad, 8192
  %.not.i = icmp eq i64 %i.ae, 0
end_hunk_11
begin_hunk_12_@rb_check_realpath_emulate:bb.a
  %i.ai = getelementptr i8, ptr %i.ac, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !90
  %i.ak = getelementptr i8, ptr %i.ah, i64 %i.aj  ; 3 uses
  %i.al = call ptr @rb_enc_get(i64 noundef %i.j) #22 ; 0 uses
  %i.am = icmp ult ptr %i.ah, %i.ak
  br i1 %i.am, label %.lr.ph.i.i, label %skipprefixroot.exit

end_hunk_12
begin_hunk_13_@rb_check_realpath_emulate:bb.a
skipprefixroot.exit80:                            ; preds = %bb.m, %.lr.ph.i.i77, %RSTRING_PTR.exit74, %skipprefixroot.exit, %bb.j
  %.0.lcssa.i.i75.sink = phi ptr [ %.0.lcssa.i.i, %skipprefixroot.exit ], [ %.0.lcssa.i.i67, %bb.j ], [ %i.bn, %RSTRING_PTR.exit74 ], [ %i.bq, %bb.m ], [ %.01.i.i78, %.lr.ph.i.i77 ]
  %.sink115 = phi ptr [ %i.ah, %skipprefixroot.exit ], [ %i.ax, %bb.j ], [ %i.bn, %RSTRING_PTR.exit74 ], [ %i.bn, %.lr.ph.i.i77 ], [ %i.bn, %bb.m ]
  %.sink112 = phi i64 [ %i.j, %skipprefixroot.exit ], [ %i.bg, %bb.j ], [ %i.bh, %RSTRING_PTR.exit74 ], [ %i.bh, %.lr.ph.i.i77 ], [ %i.bh, %bb.m ]
  %.048 = phi ptr [ null, %skipprefixroot.exit ], [ null, %bb.j ], [ %i.bn, %RSTRING_PTR.exit74 ], [ %i.bq, %bb.m ], [ %.01.i.i78, %.lr.ph.i.i77 ] ; 2 uses
  %.1 = phi ptr [ null, %skipprefixroot.exit ], [ %.0.lcssa.i.i67, %bb.j ], [ %.047, %RSTRING_PTR.exit74 ], [ %.047, %.lr.ph.i.i77 ], [ %.047, %bb.m ] ; 2 uses
  %i.bw = ptrtoint ptr %.0.lcssa.i.i75.sink to i64
end_hunk_13
