inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@rb_file_s_stat:bb.a
  %i.aj = load i64, ptr @rb_cStat, align 8, !tbaa !14
  %i.ak = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.aj, i64 noundef 264, ptr noundef nonnull @stat_data_type) #22 ; 2 uses
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !22
  %i.ao = trunc i64 %i.an to i1
  %i.ap = getelementptr i8, ptr %i.al, i64 32     ; 2 uses
  br i1 %i.ao, label %rb_statx_new.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !24
  br label %rb_statx_new.exit

rb_statx_new.exit:                                ; preds = %bb.d, %bb.e
  %i.ar = phi ptr [ %i.aq, %bb.e ], [ %i.ap, %bb.d ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.ar, ptr noundef nonnull readonly align 8 dereferenceable(256) %3, i64 256, i1 false), !tbaa.struct !42
  %i.as = getelementptr i8, ptr %i.ar, i64 256
  store i8 1, ptr %i.as, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.ak
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_file_s_lstat(i64 %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.no_gvl_rb_io_stat_data, align 8 ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.statx, align 8              ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.h = inttoptr i64 %1 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 5
  br i1 %i.k, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.l, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.l, %.lr.ph.i.i.i ]
  %i.m = tail call i64 @rb_check_funcall_default(i64 noundef %1, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %1) #22
  store i64 %i.m, ptr %i.a, align 8, !tbaa !14
  %i.n = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.o, %rbimpl_intern_const.exit.i.i ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.p = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #22, !srcloc !132
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  store volatile i64 %i.p, ptr %i.q, align 8, !tbaa !14
  %i.r = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 -100, ptr %i.s, align 8, !tbaa !67
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.r, ptr %i.u, align 8, !tbaa !68
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 256, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 4095, ptr %i.w, align 4, !tbaa !70
  %i.x = call ptr @rb_nogvl(ptr noundef nonnull @no_gvl_statx, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #22
  %i.y = ptrtoint ptr %i.x to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 4294967295
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_get_path.exit
  %i.ab = call ptr @rb_errno_ptr() #22
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !14
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_lstat, i32 noundef %i.ac, i64 noundef %i.ad) #24
  unreachable

bb.c:                                             ; preds = %rb_get_path.exit
  %i.ae = load i64, ptr @rb_cStat, align 8, !tbaa !14
  %i.af = call i64 @rb_data_typed_object_zalloc(i64 noundef %i.ae, i64 noundef 264, ptr noundef nonnull @stat_data_type) #22 ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr               ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !22
  %i.aj = trunc i64 %i.ai to i1
  %i.ak = getelementptr i8, ptr %i.ag, i64 32     ; 2 uses
  br i1 %i.aj, label %rb_statx_new.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !24
  br label %rb_statx_new.exit

rb_statx_new.exit:                                ; preds = %bb.c, %bb.d
  %i.am = phi ptr [ %i.al, %bb.d ], [ %i.ak, %bb.c ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(256) %3, i64 256, i1 false), !tbaa.struct !42
  %i.an = getelementptr i8, ptr %i.am, i64 256
  store i8 1, ptr %i.an, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.af
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_file_s_ftype(i64 %0, i64 noundef %1) #0 {
bb.a:
  %2 = alloca %struct.no_gvl_stat_data, align 8   ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.d = icmp eq i64 %1, 0
  %i.e = and i64 %1, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.h = inttoptr i64 %1 to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 5
  br i1 %i.k, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.l = tail call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.l, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.l, %.lr.ph.i.i.i ]
  %i.m = tail call i64 @rb_check_funcall_default(i64 noundef %1, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %1) #22
  store i64 %i.m, ptr %i.a, align 8, !tbaa !14
  %i.n = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.o = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.o, %rbimpl_intern_const.exit.i.i ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.p = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store ptr %i.b, ptr %i.c, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #22, !srcloc !133
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  store volatile i64 %i.p, ptr %i.q, align 8, !tbaa !14
  %i.r = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !36
  store ptr %3, ptr %2, align 8, !tbaa !57
  %i.t = call ptr @rb_nogvl(ptr noundef nonnull @no_gvl_lstat, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null, i32 noundef 4) #22
  %i.u = ptrtoint ptr %i.t to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.v = and i64 %i.u, 4294967295
  %i.w = icmp eq i64 %i.v, 4294967295
  br i1 %i.w, label %bb.b, label %bb.c

bb.b:                                             ; preds = %rb_get_path.exit
  %i.x = call ptr @rb_errno_ptr() #22
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %i.z = load i64, ptr %i.b, align 8, !tbaa !14
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_ftype, i32 noundef %i.y, i64 noundef %i.z) #24
  unreachable

bb.c:                                             ; preds = %rb_get_path.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !28
  %4 = lshr i32 %i.ab, 12
  %i.ac = and i32 %4, 15
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  %i.ae = icmp ult i32 %i.ad, 12
  br i1 %i.ae, label %switch.lookup, label %rb_file_ftype.exit

switch.lookup:                                    ; preds = %bb.c
  %i.af = zext nneg i32 %i.ad to i64
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
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = call fastcc i32 @rb_stat(i64 noundef %1, ptr noundef %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @rb_errno_ptr() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = call i64 @rb_get_path(i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.a, ptr %i.b, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !134
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_atime, i32 noundef %i.f, i64 noundef %i.i) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.val = load i64, ptr %i.j, align 8, !tbaa !135
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.val1 = load i64, ptr %i.k, align 8, !tbaa !136
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
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = call fastcc i32 @rb_stat(i64 noundef %1, ptr noundef %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @rb_errno_ptr() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = call i64 @rb_get_path(i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.a, ptr %i.b, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !137
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_mtime, i32 noundef %i.f, i64 noundef %i.i) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val = load i64, ptr %i.j, align 8, !tbaa !138
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.val1 = load i64, ptr %i.k, align 8, !tbaa !139
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
  store i64 %1, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.c = call fastcc i32 @rb_stat(i64 noundef %1, ptr noundef %2)
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @rb_errno_ptr() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = call i64 @rb_get_path(i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.a, ptr %i.b, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !140
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.g, ptr %i.h, align 8, !tbaa !14
  %i.i = load i64, ptr %i.a, align 8, !tbaa !14
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.rb_file_s_ctime, i32 noundef %i.f, i64 noundef %i.i) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  %.val = load i64, ptr %i.j, align 8, !tbaa !141
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 112
  %.val1 = load i64, ptr %i.k, align 8, !tbaa !142
  %.sroa.2.8.insert.ext.i = and i64 %.val1, 4294967295
  %i.l = call i64 @rb_time_nano_new(i64 noundef %.val, i64 noundef %.sroa.2.8.insert.ext.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret i64 %i.l
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @rb_file_s_utime(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
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
  %i.c = load i64, ptr %1, align 8, !tbaa !14     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !143
  %i.e = load i64, ptr %i.b, align 8, !tbaa !14   ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.e, ptr %i.f, align 8, !tbaa !146
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !147
  %i.h = icmp eq i64 %i.c, 4
  %i.i = icmp eq i64 %i.e, 4
  %or.cond.i = select i1 %i.h, i1 %i.i, i1 false
  br i1 %or.cond.i, label %utime_internal_i.exit, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit.i
  %i.j = tail call { i64, i64 } @rb_time_timespec(i64 noundef %i.c) #22 ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  store i64 %i.k, ptr %4, align 16, !tbaa !14
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.l, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !14
  %i.m = icmp eq i64 %i.c, %i.e
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !148
  br label %utime_internal_i.exit

bb.e:                                             ; preds = %bb.c
  %i.o = tail call { i64, i64 } @rb_time_timespec(i64 noundef %i.e) #22 ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.p, ptr %i.n, align 16, !tbaa !14
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  br label %utime_internal_i.exit

utime_internal_i.exit:                            ; preds = %rb_check_arity.exit.i, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %rb_check_arity.exit.i ], [ %4, %bb.d ], [ %4, %bb.e ]
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = add nsw i32 %0, -2
  store ptr %.0.i, ptr %3, align 8, !tbaa !149
  %i.t = call fastcc range(i64 1, 0) i64 @apply2files(ptr noundef nonnull @utime_internal, i32 noundef %i.s, ptr noundef readonly %i.r, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i64 %i.t
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 0) i64 @rb_file_s_chmod(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
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
end_hunk_0
begin_hunk_1_@rb_stat_inspect:bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @stat_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !185

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !186  ; 2 uses
  %i.s = icmp eq ptr %i.r, @stat_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !190

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @stat_data_type) #22
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ]
  %i.u = getelementptr i8, ptr %.1.i, i64 256
  %i.v = load i8, ptr %i.u, align 8, !tbaa !37, !range !193, !noundef !194
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.x = tail call ptr @rb_obj_classname(i64 noundef %0) #22
  %i.y = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.147, ptr noundef %i.x) #22
  br label %bb.r

bb.f:                                             ; preds = %rbimpl_check_typeddata.exit
  %i.z = tail call i64 @rb_str_buf_new(i64 noundef 2) #22
  %i.aa = tail call i64 @rb_str_buf_cat(i64 noundef %i.z, ptr noundef nonnull @.str.148, i64 noundef 2) #22 ; 13 uses
  %i.ab = tail call ptr @rb_obj_classname(i64 noundef %0) #22
  %i.ac = tail call i64 @rb_str_cat_cstr(i64 noundef %i.aa, ptr noundef %i.ab) #22 ; 0 uses
  %i.ad = tail call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull @.str.149, i64 noundef 1) #22 ; 0 uses
  %i.ae = tail call i64 @rb_str_cat_cstr(i64 noundef %i.aa, ptr noundef nonnull @.str.105) #22 ; 0 uses
  %i.af = tail call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull @.str.150, i64 noundef 1) #22 ; 0 uses
  %i.ag = tail call i64 @rb_stat_dev(i64 noundef %0) #22 ; 3 uses
  %i.ah = trunc i64 %i.ag to i1
  br i1 %i.ah, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = tail call i64 @rb_num2ulong(i64 noundef %i.ag) #22
  br label %.peel.next

bb.h:                                             ; preds = %bb.f
  %i.aj = ashr i64 %i.ag, 1
  br label %.peel.next

.peel.next:                                       ; preds = %bb.h, %bb.g
  %.0.i28.peel = phi i64 [ %i.aj, %bb.h ], [ %i.ai, %bb.g ]
  %i.ak = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.aa, ptr noundef nonnull @.str.152, i64 noundef %.0.i28.peel) #22 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.peel.next, %bb.q
  %.02730 = phi i64 [ 1, %.peel.next ], [ %i.bd, %bb.q ] ; 3 uses
  %i.al = tail call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull @.str.137, i64 noundef 2) #22 ; 0 uses
  %i.am = getelementptr [16 x i8], ptr @rb_stat_inspect.member, i64 %.02730 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 16, !tbaa !208
  %i.ao = tail call i64 @rb_str_cat_cstr(i64 noundef %i.aa, ptr noundef %i.an) #22 ; 0 uses
  %i.ap = tail call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull @.str.150, i64 noundef 1) #22 ; 0 uses
  %i.aq = getelementptr i8, ptr %i.am, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !210
  %i.as = tail call i64 %i.ar(i64 noundef %0) #22 ; 7 uses
  switch i64 %.02730, label %bb.p [
    i64 2, label %bb.j
    i64 6, label %bb.m
  ]

bb.j:                                             ; preds = %bb.i
  %i.at = trunc i64 %i.as to i1
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = ashr i64 %i.as, 1
  br label %rb_num2ulong_inline.exit

bb.l:                                             ; preds = %bb.j
  %i.av = tail call i64 @rb_num2ulong(i64 noundef %i.as) #22
  br label %rb_num2ulong_inline.exit

rb_num2ulong_inline.exit:                         ; preds = %bb.k, %bb.l
  %.0.i = phi i64 [ %i.au, %bb.k ], [ %i.av, %bb.l ]
  %i.aw = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.aa, ptr noundef nonnull @.str.151, i64 noundef %.0.i) #22 ; 0 uses
  br label %bb.q

bb.m:                                             ; preds = %bb.i
  %i.ax = trunc i64 %i.as to i1
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = ashr i64 %i.as, 1
  br label %rb_num2ulong_inline.exit29

bb.o:                                             ; preds = %bb.m
  %i.az = tail call i64 @rb_num2ulong(i64 noundef %i.as) #22
  br label %rb_num2ulong_inline.exit29

rb_num2ulong_inline.exit29:                       ; preds = %bb.n, %bb.o
  %.0.i28 = phi i64 [ %i.ay, %bb.n ], [ %i.az, %bb.o ]
  %i.ba = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.aa, ptr noundef nonnull @.str.152, i64 noundef %.0.i28) #22 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.i
  %i.bb = tail call i64 @rb_inspect(i64 noundef %i.as) #22
  %i.bc = tail call i64 @rb_str_append(i64 noundef %i.aa, i64 noundef %i.bb) #22 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %rb_num2ulong_inline.exit29, %bb.p, %rb_num2ulong_inline.exit
  %i.bd = add nuw nsw i64 %.02730, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bd, 13
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !211

.loopexit:                                        ; preds = %bb.q
  %i.be = tail call i64 @rb_str_cat(i64 noundef %i.aa, ptr noundef nonnull @.str.153, i64 noundef 1) #22 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %.loopexit, %bb.e
  %.0 = phi i64 [ %i.aa, %.loopexit ], [ %i.y, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_stat_ftype(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !183

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !184

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @stat_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !185

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !186  ; 2 uses
  %i.s = icmp eq ptr %i.r, @stat_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !190

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @stat_data_type) #22
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 256
  %i.v = load i8, ptr %i.u, align 8, !tbaa !37, !range !193, !noundef !194
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %get_stat.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.146) #24
  unreachable

get_stat.exit:                                    ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = getelementptr i8, ptr %.1.i.i, i64 28
  %i.z = load i16, ptr %i.y, align 4, !tbaa !199
  %1 = lshr i16 %i.z, 12
  %switch.tableidx = add nsw i16 %1, -1           ; 2 uses
  %i.aa = icmp ult i16 %switch.tableidx, 12
  br i1 %i.aa, label %switch.lookup, label %rb_file_ftype.exit

switch.lookup:                                    ; preds = %get_stat.exit
  %i.ab = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.rb_stat_ftype, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %rb_file_ftype.exit

rb_file_ftype.exit:                               ; preds = %get_stat.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.135, %get_stat.exit ]
  %i.ac = tail call i64 @rb_usascii_str_new_cstr(ptr noundef nonnull %.0.i) #22
  ret i64 %i.ac
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_stat_d(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !183

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !184

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @stat_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !185

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !186  ; 2 uses
  %i.s = icmp eq ptr %i.r, @stat_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !190

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @stat_data_type) #22
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 256
  %i.v = load i8, ptr %i.u, align 8, !tbaa !37, !range !193, !noundef !194
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %get_stat.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.146) #24
  unreachable

get_stat.exit:                                    ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = getelementptr i8, ptr %.1.i.i, i64 28
  %i.z = load i16, ptr %i.y, align 4, !tbaa !199
  %i.aa = and i16 %i.z, -4096
  %i.ab = icmp eq i16 %i.aa, 16384
  %. = select i1 %i.ab, i64 20, i64 0
  ret i64 %.
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 21) i64 @rb_stat_r(i64 noundef %0) #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c                         ; 3 uses
  br i1 %i.d, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !183

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !11
  %i.g = and i64 %i.f, 95
  %or.cond.not.i.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !184

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !22   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @stat_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !185

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.q = getelementptr i8, ptr %.016.i.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !186  ; 2 uses
  %i.s = icmp eq ptr %i.r, @stat_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !190

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @stat_data_type) #22
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.d, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.t, %.critedge.i.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.u = getelementptr i8, ptr %.1.i.i, i64 256
  %i.v = load i8, ptr %i.u, align 8, !tbaa !37, !range !193, !noundef !194
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %get_stat.exit, label %bb.e

bb.e:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.x = load i64, ptr @rb_eTypeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.x, ptr noundef nonnull @.str.146) #24
  unreachable

get_stat.exit:                                    ; preds = %rbimpl_check_typeddata.exit.i
  %i.y = tail call i32 @geteuid() #22
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.s, label %bb.f

bb.f:                                             ; preds = %get_stat.exit
  br i1 %i.d, label %.critedge.i.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, !prof !183

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %bb.f
  %i.aa = inttoptr i64 %0 to ptr                  ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !11
  %i.ac = and i64 %i.ab, 95
  %or.cond.not.i.i.i = icmp eq i64 %i.ac, 76
  br i1 %or.cond.not.i.i.i, label %bb.g, label %.critedge.i.i.i, !prof !184

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ad = getelementptr i8, ptr %i.aa, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !22 ; 2 uses
  %i.af = and i64 %i.ae, -2                       ; 2 uses
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = trunc i64 %i.ae to i1
  %i.ai = getelementptr i8, ptr %i.aa, i64 32     ; 2 uses
  br i1 %i.ah, label %RTYPEDDATA_GET_DATA.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  br label %RTYPEDDATA_GET_DATA.exit.i.i.i

RTYPEDDATA_GET_DATA.exit.i.i.i:                   ; preds = %bb.h, %bb.g
  %i.ak = phi ptr [ %i.aj, %bb.h ], [ %i.ai, %bb.g ] ; 2 uses
  %i.al = icmp eq i64 %i.af, ptrtoint (ptr @stat_data_type to i64)
  br i1 %i.al, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !prof !185

.preheader.i.i.i:                                 ; preds = %RTYPEDDATA_GET_DATA.exit.i.i.i, %bb.i
  %.016.i.i.i = phi ptr [ %i.an, %bb.i ], [ %i.ag, %RTYPEDDATA_GET_DATA.exit.i.i.i ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.016.i.i.i, null
  br i1 %.not.i.i.i, label %.critedge.i.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i.i
  %i.am = getelementptr i8, ptr %.016.i.i.i, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !186 ; 2 uses
  %i.ao = icmp eq ptr %i.an, @stat_data_type
  br i1 %i.ao, label %rbimpl_check_typeddata.exit.i.i, label %.preheader.i.i.i, !llvm.loop !190

.critedge.i.i.i:                                  ; preds = %.preheader.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, %bb.f
  %i.ap = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @stat_data_type) #22
  br label %rbimpl_check_typeddata.exit.i.i

rbimpl_check_typeddata.exit.i.i:                  ; preds = %bb.i, %.critedge.i.i.i, %RTYPEDDATA_GET_DATA.exit.i.i.i
  %.1.i.i.i = phi ptr [ %i.ap, %.critedge.i.i.i ], [ %i.ak, %RTYPEDDATA_GET_DATA.exit.i.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %i.aq = getelementptr i8, ptr %.1.i.i.i, i64 256
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !37, !range !193, !noundef !194
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %rb_stat_owned.exit, label %bb.j

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit.i.i
  %i.at = load i64, ptr @rb_eTypeError, align 8, !tbaa !14
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.at, ptr noundef nonnull @.str.146) #24
  unreachable
end_hunk_1
