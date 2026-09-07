Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/file?download=true
inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@rb_file_s_ftype:bb.a
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.h = inttoptr i64 %1 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 5
  br i1 %i.k, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.l, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !0

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.l, %.lr.ph.i.i.i ]
  %i.m = tail call i64 @rb_check_funcall_default(i64 noundef %1, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %1) #22
  store i64 %i.m, ptr %i.a, align 8, !tbaa !25
  %i.n = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.o, %rbimpl_intern_const.exit.i.i ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.p = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %i.b, ptr %i.c, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #22, !srcloc !189
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  store volatile i64 %i.p, ptr %i.q, align 8, !tbaa !25
  %i.r = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !44
  store ptr %3, ptr %2, align 8, !tbaa !67
  %i.t = call ptr @rb_nogvl(ptr noundef nonnull @no_gvl_lstat, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #22
  %i.u = ptrtoint ptr %i.t to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 4294967295
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_get_path.exit
  %i.x = call ptr @rb_errno_ptr() #22
  %i.y = load i32, ptr %i.x, align 4, !tbaa !21
  %i.z = load i64, ptr %i.b, align 8, !tbaa !25
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_ftype, i32 noundef %i.y, i64 noundef %i.z) #24
  unreachable

bb.c:                                             ; preds = %rb_get_path.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !37
  %i.ac = lshr i32 %i.ab, 12
  %i.ad = and i32 %i.ac, 15
  %switch.tableidx = add nsw i32 %i.ad, -1        ; 2 uses
  %i.ae = icmp ult i32 %switch.tableidx, 12
  br i1 %i.ae, label %switch.lookup, label %rb_file_ftype.exit

switch.lookup:                                    ; preds = %bb.c
  %i.af = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_stat_ftype, i64 %i.af
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %rb_file_ftype.exit

rb_file_ftype.exit:                               ; preds = %bb.c, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.135, %bb.c ]
  %i.ag = call i64 @rb_usascii_str_new_cstr(ptr noundef nonnull %.0.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.ag
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_file_s_atime(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = call fastcc i32 @rb_stat(i64 noundef %1, ptr noundef %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @rb_errno_ptr() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = call i64 @rb_get_path(i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.a, ptr %i.b, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !190
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.g, ptr %i.h, align 8, !tbaa !25
  %i.i = load i64, ptr %i.a, align 8, !tbaa !25
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_atime, i32 noundef %i.f, i64 noundef %i.i) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val = load i64, ptr %i.j, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.val1 = load i64, ptr %i.k, align 8, !tbaa !93
  %.sroa.2.8.insert.ext.i = and i64 %.val1, 4294967295
  %i.l = call i64 @rb_time_nano_new(i64 noundef %.val, i64 noundef %.sroa.2.8.insert.ext.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_file_s_mtime(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = call fastcc i32 @rb_stat(i64 noundef %1, ptr noundef %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @rb_errno_ptr() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = call i64 @rb_get_path(i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.a, ptr %i.b, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !191
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.g, ptr %i.h, align 8, !tbaa !25
  %i.i = load i64, ptr %i.a, align 8, !tbaa !25
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_mtime, i32 noundef %i.f, i64 noundef %i.i) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val = load i64, ptr %i.j, align 8, !tbaa !94
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.val1 = load i64, ptr %i.k, align 8, !tbaa !95
  %.sroa.2.8.insert.ext.i = and i64 %.val1, 4294967295
  %i.l = call i64 @rb_time_nano_new(i64 noundef %.val, i64 noundef %.sroa.2.8.insert.ext.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_file_s_ctime(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = call fastcc i32 @rb_stat(i64 noundef %1, ptr noundef %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @rb_errno_ptr() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = call i64 @rb_get_path(i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.a, ptr %i.b, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !192
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.g, ptr %i.h, align 8, !tbaa !25
  %i.i = load i64, ptr %i.a, align 8, !tbaa !25
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_ctime, i32 noundef %i.f, i64 noundef %i.i) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.val = load i64, ptr %i.j, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val1 = load i64, ptr %i.k, align 8, !tbaa !97
  %.sroa.2.8.insert.ext.i = and i64 %.val1, 4294967295
  %i.l = call i64 @rb_time_nano_new(i64 noundef %.val, i64 noundef %.sroa.2.8.insert.ext.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_file_s_utime(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %3 = alloca %struct.utime_args, align 8         ; 7 uses
  %4 = alloca [2 x %struct.timespec], align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %bb.b, label %rb_check_arity.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #24
  unreachable

rb_check_arity.exit.i:                            ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !25     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !100
  %i.e = load i64, ptr %i.b, align 8, !tbaa !25   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.e, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !102
  %i.h = icmp eq i64 %i.c, 4
  %i.i = icmp eq i64 %i.e, 4
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %utime_internal_i.exit, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit.i
  %i.j = tail call { i64, i64 } @rb_time_timespec(i64 noundef %i.c) #22 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  store i64 %i.k, ptr %4, align 16, !tbaa !25
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !25
  %i.m = icmp eq i64 %i.c, %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !103
  br label %utime_internal_i.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call { i64, i64 } @rb_time_timespec(i64 noundef %i.e) #22 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 16, !tbaa !25
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !25
  br label %utime_internal_i.exit

utime_internal_i.exit:                            ; preds = %rb_check_arity.exit.i, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %rb_check_arity.exit.i ], [ %4, %bb.d ], [ %4, %bb.e ]
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = add nsw i32 %0, -2
  store ptr %.0.i, ptr %3, align 8, !tbaa !104
  %i.t = call fastcc range(i64 -4294967295, 4294967296) i64 @apply2files(ptr noundef nonnull @utime_internal, i32 noundef %i.s, ptr noundef readonly %i.r, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_file_s_chmod(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef -1) #24
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = add nsw i32 %0, -1
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %1, align 8, !tbaa !25
  %i.f = tail call i64 @rb_num2uint(i64 noundef %i.e) #22
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %i.a, align 4, !tbaa !21
  %i.h = call fastcc i64 @apply2files(ptr noundef nonnull @chmod_internal, i32 noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_file_s_chown(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %3 = alloca %struct.chown_args, align 4         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #24
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %to_uid.exit, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.e = tail call i64 @rb_num2uint(i64 noundef %i.c) #22
  %i.f = trunc i64 %i.e to i32
  br label %to_uid.exit

to_uid.exit:                                      ; preds = %rb_check_arity.exit, %bb.c
  %.0.i = phi i32 [ %i.f, %bb.c ], [ -1, %rb_check_arity.exit ]
  store i32 %.0.i, ptr %3, align 4, !tbaa !106
  %i.g = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %to_gid.exit, label %bb.d

bb.d:                                             ; preds = %to_uid.exit
  %i.i = tail call i64 @rb_num2uint(i64 noundef %i.g) #22
  %i.j = trunc i64 %i.i to i32
  br label %to_gid.exit

to_gid.exit:                                      ; preds = %to_uid.exit, %bb.d
  %.0.i5 = phi i32 [ %i.j, %bb.d ], [ -1, %to_uid.exit ]
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = add nsw i32 %0, -2
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i5, ptr %i.m, align 4, !tbaa !107
  %i.n = call fastcc i64 @apply2files(ptr noundef nonnull @chown_internal, i32 noundef %i.l, ptr noundef %i.k, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_file_s_lchmod(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef -1) #24
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = add nsw i32 %0, -1
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %1, align 8, !tbaa !25
  %i.f = tail call i64 @rb_num2uint(i64 noundef %i.e) #22
  %i.g = trunc i64 %i.f to i32
  store i32 %i.g, ptr %i.a, align 4, !tbaa !21
  %i.h = call fastcc i64 @apply2files(ptr noundef nonnull @lchmod_internal, i32 noundef %i.c, ptr noundef %i.d, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i64 %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_file_s_lchown(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %3 = alloca %struct.chown_args, align 4         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #24
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.d = icmp eq i64 %i.c, 4
  br i1 %i.d, label %to_uid.exit, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.e = tail call i64 @rb_num2uint(i64 noundef %i.c) #22
  %i.f = trunc i64 %i.e to i32
  br label %to_uid.exit

to_uid.exit:                                      ; preds = %rb_check_arity.exit, %bb.c
  %.0.i = phi i32 [ %i.f, %bb.c ], [ -1, %rb_check_arity.exit ]
  store i32 %.0.i, ptr %3, align 4, !tbaa !106
  %i.g = load i64, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.h = icmp eq i64 %i.g, 4
  br i1 %i.h, label %to_gid.exit, label %bb.d

bb.d:                                             ; preds = %to_uid.exit
  %i.i = tail call i64 @rb_num2uint(i64 noundef %i.g) #22
  %i.j = trunc i64 %i.i to i32
  br label %to_gid.exit

to_gid.exit:                                      ; preds = %to_uid.exit, %bb.d
  %.0.i5 = phi i32 [ %i.j, %bb.d ], [ -1, %to_uid.exit ]
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = add nsw i32 %0, -2
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %.0.i5, ptr %i.m, align 4, !tbaa !107
  %i.n = call fastcc i64 @apply2files(ptr noundef nonnull @lchown_internal, i32 noundef %i.l, ptr noundef %i.k, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_file_s_lutime(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %3 = alloca %struct.utime_args, align 8         ; 7 uses
  %4 = alloca [2 x %struct.timespec], align 16    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %bb.b, label %rb_check_arity.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 2, i32 noundef -1) #24
  unreachable

rb_check_arity.exit.i:                            ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i64, ptr %1, align 8, !tbaa !25     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !100
  %i.e = load i64, ptr %i.b, align 8, !tbaa !25   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.e, ptr %i.f, align 8, !tbaa !101
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 1, ptr %i.g, align 8, !tbaa !102
  %i.h = icmp eq i64 %i.c, 4
  %i.i = icmp eq i64 %i.e, 4
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %utime_internal_i.exit, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit.i
  %i.j = tail call { i64, i64 } @rb_time_timespec(i64 noundef %i.c) #22 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  store i64 %i.k, ptr %4, align 16, !tbaa !25
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !25
  %i.m = icmp eq i64 %i.c, %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !103
  br label %utime_internal_i.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call { i64, i64 } @rb_time_timespec(i64 noundef %i.e) #22 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 16, !tbaa !25
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !25
  br label %utime_internal_i.exit

utime_internal_i.exit:                            ; preds = %rb_check_arity.exit.i, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %rb_check_arity.exit.i ], [ %4, %bb.d ], [ %4, %bb.e ]
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = add nsw i32 %0, -2
  store ptr %.0.i, ptr %3, align 8, !tbaa !104
  %i.t = call fastcc range(i64 -4294967295, 4294967296) i64 @apply2files(ptr noundef nonnull @utime_internal, i32 noundef %i.s, ptr noundef readonly %i.r, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_file_s_link(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !25
  store i64 %2, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = icmp eq i64 %1, 0
  %i.h = and i64 %1, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.k = inttoptr i64 %1 to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 5
  br i1 %i.n, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.o = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.o, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !0

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.o, %.lr.ph.i.i.i ]
  %i.p = tail call i64 @rb_check_funcall_default(i64 noundef %1, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %1) #22
  store i64 %i.p, ptr %i.b, align 8, !tbaa !25
  %i.q = call i64 @rb_string_value(ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !25
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.r, %rbimpl_intern_const.exit.i.i ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.s = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr %i.c, ptr %i.e, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #22, !srcloc !193
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  store volatile i64 %i.s, ptr %i.t, align 8, !tbaa !25
  %i.u = load i64, ptr %i.d, align 8, !tbaa !25   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.v = icmp eq i64 %i.u, 0
  %i.w = and i64 %i.u, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i2

rbimpl_RB_TYPE_P_fastpath.exit.i.i2:              ; preds = %rb_get_path.exit
  %i.z = inttoptr i64 %i.u to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %rb_get_path.exit11, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rb_get_path.exit
  %.pr.i.i.i4 = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i5 = icmp eq i64 %.pr.i.i.i4, 0
  br i1 %.not4.i.i.i5, label %.lr.ph.i.i.i9, label %rbimpl_intern_const.exit.i.i6

.lr.ph.i.i.i9:                                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, %.lr.ph.i.i.i9
  %i.ad = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.ad, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i10 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i10, label %.lr.ph.i.i.i9, label %rbimpl_intern_const.exit.i.i6, !llvm.loop !0

rbimpl_intern_const.exit.i.i6:                    ; preds = %.lr.ph.i.i.i9, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3
  %.lcssa.i.i.i7 = phi i64 [ %.pr.i.i.i4, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3 ], [ %i.ad, %.lr.ph.i.i.i9 ]
  %i.ae = call i64 @rb_check_funcall_default(i64 noundef %i.u, i64 noundef %.lcssa.i.i.i7, i32 noundef 0, ptr noundef null, i64 noundef %i.u) #22
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !25
  %i.af = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !25
  br label %rb_get_path.exit11

rb_get_path.exit11:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rbimpl_intern_const.exit.i.i6
  %.0.i.i8 = phi i64 [ %i.ag, %rbimpl_intern_const.exit.i.i6 ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit.i.i2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ah = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store ptr %i.d, ptr %i.f, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #22, !srcloc !194
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  store volatile i64 %i.ah, ptr %i.ai, align 8, !tbaa !25
  %i.aj = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.c) #22
  %i.ak = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.d) #22
  %i.al = call i32 @link(ptr noundef %i.aj, ptr noundef %i.ak) #22
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_get_path.exit11
  %i.an = call ptr @rb_errno_ptr() #22
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !25
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !25
  call fastcc void @syserr_fail2_in(ptr noundef nonnull @__func__.rb_file_s_link, i32 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq) #25
  unreachable

bb.c:                                             ; preds = %rb_get_path.exit11
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_file_s_symlink(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !25
  store i64 %2, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.g = icmp eq i64 %1, 0
  %i.h = and i64 %1, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.k = inttoptr i64 %1 to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !24
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 5
  br i1 %i.n, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.o = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.o, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !0

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.o, %.lr.ph.i.i.i ]
  %i.p = tail call i64 @rb_check_funcall_default(i64 noundef %1, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %1) #22
  store i64 %i.p, ptr %i.b, align 8, !tbaa !25
  %i.q = call i64 @rb_string_value(ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !25
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.r, %rbimpl_intern_const.exit.i.i ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.s = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store ptr %i.c, ptr %i.e, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #22, !srcloc !195
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  store volatile i64 %i.s, ptr %i.t, align 8, !tbaa !25
  %i.u = load i64, ptr %i.d, align 8, !tbaa !25   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.v = icmp eq i64 %i.u, 0
  %i.w = and i64 %i.u, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i2

rbimpl_RB_TYPE_P_fastpath.exit.i.i2:              ; preds = %rb_get_path.exit
  %i.z = inttoptr i64 %i.u to ptr
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !24
  %i.ab = and i64 %i.aa, 31
  %i.ac = icmp eq i64 %i.ab, 5
  br i1 %i.ac, label %rb_get_path.exit11, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rb_get_path.exit
  %.pr.i.i.i4 = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i5 = icmp eq i64 %.pr.i.i.i4, 0
  br i1 %.not4.i.i.i5, label %.lr.ph.i.i.i9, label %rbimpl_intern_const.exit.i.i6

.lr.ph.i.i.i9:                                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, %.lr.ph.i.i.i9
  %i.ad = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.ad, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i10 = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i10, label %.lr.ph.i.i.i9, label %rbimpl_intern_const.exit.i.i6, !llvm.loop !0

rbimpl_intern_const.exit.i.i6:                    ; preds = %.lr.ph.i.i.i9, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3
  %.lcssa.i.i.i7 = phi i64 [ %.pr.i.i.i4, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3 ], [ %i.ad, %.lr.ph.i.i.i9 ]
  %i.ae = call i64 @rb_check_funcall_default(i64 noundef %i.u, i64 noundef %.lcssa.i.i.i7, i32 noundef 0, ptr noundef null, i64 noundef %i.u) #22
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !25
  %i.af = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.ag = load i64, ptr %i.a, align 8, !tbaa !25
  br label %rb_get_path.exit11

rb_get_path.exit11:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rbimpl_intern_const.exit.i.i6
  %.0.i.i8 = phi i64 [ %i.ag, %rbimpl_intern_const.exit.i.i6 ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit.i.i2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.ah = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store ptr %i.d, ptr %i.f, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #22, !srcloc !196
  %i.ai = load ptr, ptr %i.f, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  store volatile i64 %i.ah, ptr %i.ai, align 8, !tbaa !25
  %i.aj = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.c) #22
  %i.ak = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.d) #22
  %i.al = call i32 @symlink(ptr noundef %i.aj, ptr noundef %i.ak) #22
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_get_path.exit11
  %i.an = call ptr @rb_errno_ptr() #22
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !21
  %i.ap = load i64, ptr %i.c, align 8, !tbaa !25
  %i.aq = load i64, ptr %i.d, align 8, !tbaa !25
  call fastcc void @syserr_fail2_in(ptr noundef nonnull @__func__.rb_file_s_symlink, i32 noundef %i.ao, i64 noundef %i.ap, i64 noundef %i.aq) #25
  unreachable

bb.c:                                             ; preds = %rb_get_path.exit11
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_file_s_readlink(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call ptr @rb_filesystem_encoding() #22
  %i.b = tail call i64 @rb_readlink(i64 noundef %1, ptr noundef %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -4294967295, 4294967296) i64 @rb_file_s_unlink(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @apply2files(ptr noundef nonnull @unlink_internal, i32 noundef %0, ptr noundef %1, ptr noundef null)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_file_s_rename(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.rename_args, align 8        ; 5 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !25
  store i64 %2, ptr %i.d, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.i = icmp eq i64 %1, 0
  %i.j = and i64 %1, 7
  %i.k = icmp ne i64 %i.j, 0
  %i.l = or i1 %i.i, %i.k
  br i1 %i.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.m = inttoptr i64 %1 to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !24
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.q = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.q, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !0

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.q, %.lr.ph.i.i.i ]
  %i.r = tail call i64 @rb_check_funcall_default(i64 noundef %1, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %1) #22
  store i64 %i.r, ptr %i.b, align 8, !tbaa !25
  %i.s = call i64 @rb_string_value(ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.t = load i64, ptr %i.b, align 8, !tbaa !25
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.t, %rbimpl_intern_const.exit.i.i ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.u = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store ptr %i.c, ptr %i.g, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #22, !srcloc !197
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  store volatile i64 %i.u, ptr %i.v, align 8, !tbaa !25
  %i.w = load i64, ptr %i.d, align 8, !tbaa !25   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i64 %i.w, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i2

rbimpl_RB_TYPE_P_fastpath.exit.i.i2:              ; preds = %rb_get_path.exit
  %i.ab = inttoptr i64 %i.w to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %rb_get_path.exit11, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rb_get_path.exit
  %.pr.i.i.i4 = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i5 = icmp eq i64 %.pr.i.i.i4, 0
  br i1 %.not4.i.i.i5, label %.lr.ph.i.i.i9, label %rbimpl_intern_const.exit.i.i6

.lr.ph.i.i.i9:                                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3, %.lr.ph.i.i.i9
  %i.af = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.af, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i10 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i10, label %.lr.ph.i.i.i9, label %rbimpl_intern_const.exit.i.i6, !llvm.loop !0

rbimpl_intern_const.exit.i.i6:                    ; preds = %.lr.ph.i.i.i9, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3
  %.lcssa.i.i.i7 = phi i64 [ %.pr.i.i.i4, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i3 ], [ %i.af, %.lr.ph.i.i.i9 ]
  %i.ag = call i64 @rb_check_funcall_default(i64 noundef %i.w, i64 noundef %.lcssa.i.i.i7, i32 noundef 0, ptr noundef null, i64 noundef %i.w) #22
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !25
  %i.ah = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !25
  br label %rb_get_path.exit11

rb_get_path.exit11:                               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i2, %rbimpl_intern_const.exit.i.i6
  %.0.i.i8 = phi i64 [ %i.ai, %rbimpl_intern_const.exit.i.i6 ], [ %i.w, %rbimpl_RB_TYPE_P_fastpath.exit.i.i2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aj = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store ptr %i.d, ptr %i.h, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #22, !srcloc !198
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  store volatile i64 %i.aj, ptr %i.ak, align 8, !tbaa !25
  %i.al = load i64, ptr %i.c, align 8, !tbaa !25
  store i64 %i.al, ptr %i.e, align 8, !tbaa !25
  %i.am = load i64, ptr %i.d, align 8, !tbaa !25
  store i64 %i.am, ptr %i.f, align 8, !tbaa !25
  %i.an = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.e) #22
  store ptr %i.an, ptr %3, align 8, !tbaa !109
  %i.ao = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.f) #22
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !110
  %i.aq = call ptr @rb_nogvl(ptr noundef nonnull @no_gvl_rename, ptr noundef nonnull %3, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #22
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = and i64 %i.ar, 2147483648
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rb_get_path.exit11
  %i.at = call ptr @rb_errno_ptr() #22
  %i.au = load i32, ptr %i.at, align 4, !tbaa !21
  %i.av = load i64, ptr %i.c, align 8, !tbaa !25
  %i.aw = load i64, ptr %i.d, align 8, !tbaa !25
  call fastcc void @syserr_fail2_in(ptr noundef nonnull @__func__.rb_file_s_rename, i32 noundef %i.au, i64 noundef %i.av, i64 noundef %i.aw) #25
  unreachable

bb.c:                                             ; preds = %rb_get_path.exit11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 1
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 8589934592) i64 @rb_file_s_umask(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  switch i32 %0, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @umask(i32 noundef 0) #22  ; 2 uses
  %i.b = tail call i32 @umask(i32 noundef %i.a) #22 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !25
  %i.d = tail call i64 @rb_num2uint(i64 noundef %i.c) #22
  %i.e = trunc i64 %i.d to i32
  %i.f = tail call i32 @umask(i32 noundef %i.e) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #24
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.a, %bb.b ], [ %i.f, %bb.c ]
  %i.g = zext i32 %.0 to i64
  %i.h = shl nuw nsw i64 %i.g, 1
  %i.i = or disjoint i64 %i.h, 1
  ret i64 %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @rb_file_s_truncate(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.truncate_arg, align 8       ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.d = trunc i64 %2 to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = ashr i64 %2, 1
  br label %rb_num2long_inline.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_num2long(i64 noundef %2) #22
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i, ptr %i.g, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.h = icmp eq i64 %1, 0
  %i.i = and i64 %1, 7
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
end_hunk_0
begin_hunk_1_@rb_eaccess:bb.a
  store i32 %1, ptr %i.s, align 8, !tbaa !143
  %i.t = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_eaccess, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #22
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = trunc i64 %i.u to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.v
}

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_eaccess(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !143
  %i.d = tail call i32 @eaccess(ptr noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nounwind
declare i32 @eaccess(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rb_access(i64 noundef %0, i32 noundef range(i32 1, 5) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %2 = alloca %struct.access_arg, align 8         ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !24
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 5
  br i1 %i.k, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.l, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !0

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.l, %.lr.ph.i.i.i ]
  %i.m = tail call i64 @rb_check_funcall_default(i64 noundef %0, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %0) #22
  store i64 %i.m, ptr %i.a, align 8, !tbaa !25
  %i.n = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !25
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.o, %rbimpl_intern_const.exit.i.i ], [ %0, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.p = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %i.b, ptr %i.c, align 8, !tbaa !69
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #22, !srcloc !228
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  store volatile i64 %i.p, ptr %i.q, align 8, !tbaa !25
  %i.r = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #22
  store ptr %i.r, ptr %2, align 8, !tbaa !142
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %1, ptr %i.s, align 8, !tbaa !143
  %i.t = call ptr @rb_nogvl(ptr noundef nonnull @nogvl_access, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #22
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = trunc i64 %i.u to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i32 %i.v
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef ptr @nogvl_access(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !142
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !143
  %i.d = tail call i32 @access(ptr noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #6

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #2

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @rb_group_member(i32 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 0, ptr %i.a, align 8, !tbaa !25
  %i.b = tail call i32 @getgid() #22
  %i.c = icmp eq i32 %i.b, %0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @getegid() #22
  %i.e = icmp eq i32 %i.d, %0
  br i1 %i.e, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @getgroups(i32 noundef 0, ptr noundef null) #22 ; 4 uses
  %i.g = sext i32 %i.f to i64                     ; 3 uses
  %i.h = icmp ult i32 %i.f, 256
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %i.a, align 8, !tbaa !25
  %i.i = shl nuw nsw i64 %i.g, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.f, 0
  br i1 %i.k, label %bb.f, label %rb_alloc_tmp_buffer2.exit, !prof !230

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_malloc_size_overflow(i64 noundef range(i64 -2147483648, 2147483648) %i.g, i64 noundef range(i64 4, 9) 4) #24
  unreachable

rb_alloc_tmp_buffer2.exit:                        ; preds = %bb.e
  %i.l = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.m = add nuw nsw i64 %i.l, 4
  %i.n = lshr i64 %i.m, 3
  %i.o = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef %i.l, i64 noundef %i.n) #27
  br label %bb.g

bb.g:                                             ; preds = %rb_alloc_tmp_buffer2.exit, %bb.d
  %i.p = phi ptr [ %i.j, %bb.d ], [ %i.o, %rb_alloc_tmp_buffer2.exit ] ; 2 uses
  %i.q = call i32 @getgroups(i32 noundef %i.f, ptr noundef nonnull %i.p) #22
  %i.r = zext i32 %i.q to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.r, %bb.g ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.s = and i64 %indvars.iv.next, 2147483648
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = and i64 %indvars.iv.next, 2147483647
  %i.v = getelementptr [4 x i8], ptr %i.p, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !21
  %i.x = icmp eq i32 %i.w, %0
  br i1 %i.x, label %bb.j, label %bb.h, !llvm.loop !229

bb.j:                                             ; preds = %bb.i, %bb.h
  %.012 = phi i32 [ 0, %bb.h ], [ 1, %bb.i ]      ; 2 uses
  %i.y = load i64, ptr %i.a, align 8, !tbaa !25
  %.not = icmp eq i64 %i.y, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.a, %bb.b
  %.013 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ %.012, %bb.k ], [ %.012, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.013
}

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getegid() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #8

declare i64 @rb_usascii_str_new_cstr(ptr noundef) local_unnamed_addr #2

declare { i64, i64 } @rb_time_timespec(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -4294967295, 4294967296) i64 @apply2files(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  %i.c = sext i32 %1 to i64                       ; 2 uses
  %i.d = shl nsw i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 32                     ; 2 uses
  %i.f = icmp slt i32 %1, 62
  br i1 %i.f, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.g = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.b, i64 noundef %i.e) #28 ; 6 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8        ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr i8, ptr %i.g, i64 4
  store i32 %1, ptr %i.i, align 4, !tbaa !21
  %i.j = getelementptr i8, ptr %i.g, i64 24
  store ptr %3, ptr %i.j, align 8, !tbaa !144
  %i.k = getelementptr i8, ptr %i.g, i64 16
  store ptr %0, ptr %i.k, align 8, !tbaa !144
  store i32 0, ptr %i.g, align 8, !tbaa !21
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !25
  %i.l = alloca i8, i64 %i.e, align 16            ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  store i32 0, ptr %i.m, align 8, !tbaa !21
  %i.n = getelementptr i8, ptr %i.l, i64 4
  store i32 %1, ptr %i.n, align 4, !tbaa !21
  %i.o = getelementptr i8, ptr %i.l, i64 24
  store ptr %3, ptr %i.o, align 8, !tbaa !144
  %i.p = getelementptr i8, ptr %i.l, i64 16
  store ptr %0, ptr %i.p, align 16, !tbaa !144
  store i32 0, ptr %i.l, align 16, !tbaa !21
  %i.q = icmp sgt i32 %1, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread, %bb.b
  %i.r = phi ptr [ %i.h, %.thread ], [ %i.m, %bb.b ]
  %i.s = phi ptr [ %i.g, %.thread ], [ %i.l, %bb.b ] ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %RSTRING_PTR.exit
  %storemerge32 = phi i32 [ 0, %.lr.ph ], [ %i.au, %RSTRING_PTR.exit ]
  %i.u = sext i32 %storemerge32 to i64
  %i.v = getelementptr [8 x i8], ptr %2, i64 %i.u
  %i.w = load i64, ptr %i.v, align 8, !tbaa !25   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.x = icmp eq i64 %i.w, 0
  %i.y = and i64 %i.w, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.c
  %i.ab = inttoptr i64 %i.w to ptr
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.c
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.af = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.af, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !25
  %.not.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !0

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.af, %.lr.ph.i.i.i ]
  %i.ag = call i64 @rb_check_funcall_default(i64 noundef %i.w, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %i.w) #22
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !25
  %i.ah = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !25
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.ai, %rbimpl_intern_const.exit.i.i ], [ %i.w, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.aj = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i) ; 2 uses
  %i.ak = inttoptr i64 %i.aj to ptr               ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = and i64 %i.al, 8192
  %.not.i = icmp eq i64 %i.am, 0
  %i.an = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.d

bb.d:                                             ; preds = %rb_get_path.exit
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !44
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %rb_get_path.exit, %bb.d
  %i.ap = phi ptr [ %i.ao, %bb.d ], [ %i.an, %rb_get_path.exit ]
  %i.aq = load i32, ptr %i.s, align 8, !tbaa !21  ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [16 x i8], ptr %i.t, i64 %i.ar ; 2 uses
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !146
  %i.at = getelementptr i8, ptr %i.as, i64 8
  store i64 %i.aj, ptr %i.at, align 8, !tbaa !232
  %i.au = add i32 %i.aq, 1                        ; 3 uses
  store i32 %i.au, ptr %i.s, align 8, !tbaa !21
  %i.av = icmp slt i32 %i.au, %1
  br i1 %i.av, label %bb.c, label %._crit_edge, !llvm.loop !231

._crit_edge:                                      ; preds = %RSTRING_PTR.exit, %bb.b
  %i.aw = phi ptr [ %i.m, %bb.b ], [ %i.r, %RSTRING_PTR.exit ]
  %i.ax = phi ptr [ %i.l, %bb.b ], [ %i.s, %RSTRING_PTR.exit ] ; 3 uses
  %i.ay = call ptr @rb_nogvl(ptr noundef nonnull @no_gvl_apply2files, ptr noundef nonnull %i.ax, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #22 ; 0 uses
  %i.az = load i32, ptr %i.aw, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq i32 %i.az, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !21
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr [16 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = getelementptr i8, ptr %i.bc, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !232
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.apply2files, i32 noundef %i.az, i64 noundef %i.be) #24
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !25
  %.not31 = icmp eq i64 %i.bf, 0
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bg = shl nsw i64 %i.c, 1
  %i.bh = or disjoint i64 %i.bg, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret i64 %i.bh
}

; Function Attrs: nounwind sspstrong uwtable
define internal i32 @utime_internal(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %2 = alloca [2 x %struct.timeval], align 16     ; 7 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !104    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.b = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !102
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.b25 = load i1, ptr @utime_internal.try_utimensat_follow, align 4
  br i1 %.b25, label %bb.h, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.b = load i1, ptr @utime_internal.try_utimensat, align 4
  br i1 %.b, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %spec.select = phi i32 [ 0, %bb.c ], [ 256, %bb.b ]
  %i.d = tail call i32 @utimensat(i32 noundef -100, ptr noundef %0, ptr noundef %i.a, i32 noundef %spec.select) #22 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.f = tail call ptr @rb_errno_ptr() #22
  %i.g = load i32, ptr %i.f, align 4, !tbaa !21
  %i.h = icmp eq i32 %i.g, 38
  br i1 %i.h, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  store i1 true, ptr @utime_internal.try_utimensat_follow, align 4
  %i.i = load i32, ptr %i.b, align 8, !tbaa !102
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i1 true, ptr @utime_internal.try_utimensat, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b
  %.not30 = phi i1 [ false, %bb.f ], [ true, %bb.g ], [ true, %bb.c ], [ false, %bb.b ]
  %.not28 = icmp eq ptr %i.a, null
  br i1 %.not28, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load i64, ptr %i.a, align 8, !tbaa !233
  store i64 %i.j, ptr %2, align 16, !tbaa !235
  %i.k = getelementptr i8, ptr %i.a, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !236
  %i.m = sdiv i64 %i.l, 1000
  %sext = shl i64 %i.m, 32
  %i.n = ashr exact i64 %sext, 32
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !237
  %i.p = getelementptr i8, ptr %i.a, i64 16
end_hunk_1
