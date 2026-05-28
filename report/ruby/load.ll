inline.NumInlined: 218
inline.NumDeleted: 78
begin_hunk_0_@rb_provide:bb.a
; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_provide_feature(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !27   ; 4 uses
  %i.c = icmp ne i64 %i.b, 0
  %i.d = and i64 %i.b, 7
  %i.e = icmp eq i64 %i.d, 0
  %.not3.i = and i1 %i.c, %i.e
  br i1 %.not3.i, label %RB_OBJ_FROZEN.exit, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit:                               ; preds = %bb.a
  %i.f = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = and i64 %i.g, 2048
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.b, label %RB_OBJ_FROZEN.exit.thread

RB_OBJ_FROZEN.exit.thread:                        ; preds = %bb.a, %RB_OBJ_FROZEN.exit
  %i.i = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !20
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.18) #20
  unreachable

bb.b:                                             ; preds = %RB_OBJ_FROZEN.exit
  %i.j = tail call i64 @rb_fstring(i64 noundef %1) #7 ; 2 uses
  %i.k = tail call fastcc ptr @get_loaded_features_index(ptr noundef nonnull %0) ; 0 uses
  %i.l = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !28
  %i.n = tail call i64 @rb_ary_clear(i64 noundef %i.m) #7 ; 0 uses
  %i.o = tail call i64 @rb_ary_push(i64 noundef %i.b, i64 noundef %i.j) #7 ; 0 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !22   ; 2 uses
  %i.q = and i64 %i.p, 8192
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = lshr i64 %i.p, 15
  %i.s = and i64 %i.r, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.f, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i11 = phi i64 [ %i.s, %bb.c ], [ %i.u, %bb.d ]
  %i.v = shl i64 %.0.i11, 1
  %i.w = add i64 %i.v, -1
  tail call fastcc void @features_index_add(ptr noundef nonnull %0, i64 noundef %i.j, i64 noundef %i.w)
  %.val = load i64, ptr %i.a, align 8, !tbaa !27
  %.val10 = load i64, ptr %i.l, align 8, !tbaa !28
  %i.x = tail call i64 @rb_ary_replace(i64 noundef %.val10, i64 noundef %.val) #7 ; 0 uses
  ret void
}

declare i64 @rb_fstring_new(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare i64 @rb_fstring_cstr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_load(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !20
  %i.c = tail call i64 @rb_get_path(i64 noundef %0) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !29
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store volatile i64 %i.c, ptr %i.d, align 8, !tbaa !20
  %i.e = call i64 @rb_find_file(i64 noundef %i.c) #7 ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !20
  call fastcc void @load_failed(i64 noundef %i.f) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not3 = icmp eq i32 %1, 0
  %i.g = select i1 %.not3, i64 0, i64 20
  call fastcc void @rb_load_internal(i64 noundef %i.e, i64 noundef %i.g)
  ret void
}

declare i64 @rb_find_file(i64 noundef) local_unnamed_addr #1

declare i64 @rb_get_path(i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @load_failed(i64 noundef %0) unnamed_addr #4 {
bb.a:
  tail call void @rb_load_fail(i64 noundef %0, ptr noundef nonnull @.str.20) #20
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @rb_load_internal(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call ptr @rb_loading_box() #7       ; 3 uses
  %i.e = and i64 %1, -5
  %.not19 = icmp eq i64 %i.e, 0
  br i1 %.not19, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %1, 7
  %.not20 = icmp eq i64 %i.f, 0
  br i1 %.not20, label %rbimpl_RB_TYPE_P_fastpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.g = inttoptr i64 %1 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 3
  br i1 %i.j, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_module_new() #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 129
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32, !range !33, !noundef !34
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.d, align 8, !tbaa !35
  br label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d
  tail call fastcc void @load_iseq_eval(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0)
  br label %bb.h

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.e
  %.sink = phi i64 [ %i.o, %bb.e ], [ %1, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.k, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.p = tail call fastcc i32 @load_wrapping(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i64 noundef %.sink) ; 2 uses
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @rb_vm_jump_tag_but_local_jump(i32 noundef range(i32 0, 9) %i.p) #20
  unreachable

bb.h:                                             ; preds = %.thread, %bb.f
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 128
  %i.r = load i64, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %raise_load_if_failed.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_exc_raise(i64 noundef %i.r) #20
  unreachable

raise_load_if_failed.exit:                        ; preds = %bb.h
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_load_protect(i64 noundef %0, i32 noundef %1, ptr noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  store volatile ptr %i.f, ptr %i.c, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %.0..0..0..0..0..0..i, ptr %i.d, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.g, align 8, !tbaa !47
  store i64 36, ptr %3, align 8, !tbaa !49
  %i.h = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !51
  %4 = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.1.val = load ptr, ptr %4, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %5 = getelementptr i8, ptr %.0.1.val, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !53       ; 2 uses
  %7 = getelementptr i8, ptr %.0.1.val, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %i.k = getelementptr i8, ptr %6, i64 88
  %.0.1.val.a = load ptr, ptr %i.k, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %.0.1.val.a, %8
  br i1 %.not.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %6, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.n, align 4, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.p, ptr %i.o, align 8
  %i.q = tail call ptr @llvm.stacksave.p0()
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.q, ptr %i.r, align 8
  %i.s = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.o)
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.e, !prof !93

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !20
  %i.t = call i64 @rb_get_path(i64 noundef %0) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !29
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store volatile i64 %i.t, ptr %i.u, align 8, !tbaa !20
  %i.v = call i64 @rb_find_file(i64 noundef %i.t) #7 ; 2 uses
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.d, label %.thread10

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.a, align 8, !tbaa !20
  call fastcc void @load_failed(i64 noundef %i.w) #23
  unreachable

.thread10:                                        ; preds = %bb.c
  %.not3.i = icmp eq i32 %1, 0
  %i.x = select i1 %.not3.i, i64 0, i64 20
  call fastcc void @rb_load_internal(i64 noundef %i.v, i64 noundef %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !51
  %.0..0..0..0.411 = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.z = getelementptr i8, ptr %.0..0..0..0.411, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !30
  %i.aa = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !51
  %.0..0..0..0.4 = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.ac = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.aa, ptr %2, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %.thread10, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #6

; Function Attrs: nounwind
declare i32 @llvm.eh.sjlj.setjmp(ptr) #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 1, 9) i32 @rb_ec_tag_state(ptr noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 64       ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !47   ; 3 uses
  store i32 0, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr i8, ptr %i.b, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !92   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %1 = getelementptr i8, ptr %.val.i, i64 32
  %2 = load ptr, ptr %1, align 8, !tbaa !53       ; 2 uses
  %3 = getelementptr i8, ptr %.val.i, i64 24
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr i8, ptr %2, i64 88
  %.val.i.a = load ptr, ptr %5, align 8, !tbaa !73
  %.not.i.i.i = icmp eq ptr %.val.i.a, %4
  br i1 %.not.i.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.b, %bb.a
  %.0.i.i = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.c

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #7
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.c
  %i.j = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.k)
  ret i32 %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define hidden noundef i64 @rb_load_entrypoint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !21
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.0.i, 2
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str, i64 noundef %.0.i) #24
  unreachable

bb.e:                                             ; preds = %rb_array_len.exit
  %i.h = tail call i64 @rb_ary_entry(i64 noundef %0, i64 noundef 0) #22
  %i.i = tail call i64 @rb_ary_entry(i64 noundef %0, i64 noundef 1) #22
  %i.j = tail call i64 @rb_get_path_check_to_string(i64 noundef %i.h) #7 ; 2 uses
  %i.k = tail call i64 @rb_str_encode_ospath(i64 noundef %i.j) #7 ; 3 uses
  %i.l = tail call i64 @rb_find_file(i64 noundef %i.k) #7 ; 2 uses
  %.not.i6 = icmp eq i64 %i.l, 0
  br i1 %.not.i6, label %bb.f, label %load_entrypoint_internal.exit

bb.f:                                             ; preds = %bb.e
  %i.m = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = and i64 %i.n, 8192
  %.not.i.i = icmp eq i64 %i.o, 0
  %i.p = getelementptr i8, ptr %i.m, i64 24       ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.g, %bb.f
  %i.r = phi ptr [ %i.q, %bb.g ], [ %i.p, %bb.f ]
  %i.s = tail call i32 @rb_file_load_ok(ptr noundef %i.r) #7
  %.not10.i = icmp eq i32 %i.s, 0
  br i1 %.not10.i, label %bb.h, label %load_entrypoint_internal.exit

bb.h:                                             ; preds = %RSTRING_PTR.exit.i
  tail call fastcc void @load_failed(i64 noundef %i.j) #23
  unreachable

load_entrypoint_internal.exit:                    ; preds = %bb.e, %RSTRING_PTR.exit.i
  %.0.i7 = phi i64 [ %i.l, %bb.e ], [ %i.k, %RSTRING_PTR.exit.i ]
  tail call fastcc void @rb_load_internal(i64 noundef %.0.i7, i64 noundef %i.i)
  ret i64 20
}

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_f_require(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_require_string(i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_require_string(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.b, align 8, !tbaa !20
  %i.d = tail call i64 @rb_get_path(i64 noundef %0) #7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr %i.b, ptr %i.c, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #7, !srcloc !94
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  store volatile i64 %i.d, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.a
  %i.i = call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.i, label %rb_ractor_main_p.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.j = call i64 @rb_ractor_require(i64 noundef %i.d, i1 noundef zeroext false) #7
  br label %rb_require_string_internal.exit

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.a
  %i.k = call ptr @rb_ruby_verbose_ptr() #7
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.d, i32 noundef 1, i1 noundef zeroext %i.n) ; 4 uses
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.o, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %.val.i, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable

bb.d:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.t = icmp slt i32 %i.o, 0
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call fastcc void @load_failed(i64 noundef %i.d) #23
  unreachable

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.o, 0
  %i.u = select i1 %.not.i, i64 0, i64 20
  br label %rb_require_string_internal.exit

rb_require_string_internal.exit:                  ; preds = %bb.b, %bb.f
  %.0.i = phi i64 [ %i.u, %bb.f ], [ %i.j, %bb.b ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_require_relative_entrypoint(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = tail call i64 @rb_current_realfilepath() #7 ; 2 uses
  %i.c = icmp eq i64 %i.b, 4
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_loaderror(ptr noundef nonnull @.str.1) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_file_dirname(i64 noundef %i.b) #7
  %i.e = tail call i64 @rb_file_absolute_path(i64 noundef %0, i64 noundef %i.d) #7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  store volatile ptr %i.g, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %rb_ractor_main_p.exit.i, label %rb_ractor_main_p.exit.thread.i

rb_ractor_main_p.exit.i:                          ; preds = %bb.c
  %i.i = tail call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.i, label %rb_ractor_main_p.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %rb_ractor_main_p.exit.i
  %i.j = tail call i64 @rb_ractor_require(i64 noundef %i.e, i1 noundef zeroext false) #7
  br label %rb_require_string_internal.exit

rb_ractor_main_p.exit.thread.i:                   ; preds = %rb_ractor_main_p.exit.i, %bb.c
  %i.k = tail call ptr @rb_ruby_verbose_ptr() #7
  %i.l = load i64, ptr %i.k, align 8, !tbaa !20
  %i.m = and i64 %i.l, -5
  %i.n = icmp ne i64 %i.m, 0
  %i.o = tail call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %i.e, i32 noundef 1, i1 noundef zeroext %i.n) ; 4 uses
end_hunk_0
begin_hunk_1_@search_required:bb.a
RSTRING_PTR.exit121:                              ; preds = %bb.ag, %bb.ah
  %i.cr = phi ptr [ %i.cq, %bb.ah ], [ %i.cp, %bb.ag ]
  %i.cs = call i32 %3(ptr noundef %0, ptr noundef %i.cr, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef null) #7, !callees !98
  br label %bb.ap

bb.ai:                                            ; preds = %.critedge111
  br i1 %i.bq, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai, %.critedge111
  %i.ct = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cu = inttoptr i64 %i.ct to ptr               ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !22
  %i.cw = and i64 %i.cv, 8192
  %.not.i122 = icmp eq i64 %i.cw, 0
  %i.cx = getelementptr i8, ptr %i.cu, i64 24     ; 2 uses
  br i1 %.not.i122, label %RSTRING_PTR.exit123, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !21
  br label %RSTRING_PTR.exit123

RSTRING_PTR.exit123:                              ; preds = %bb.aj, %bb.ak
  %i.cz = phi ptr [ %i.cy, %bb.ak ], [ %i.cx, %bb.aj ] ; 2 uses
  %i.da = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.cz, i32 noundef 46) #22
  %i.db = icmp eq i32 %i.bp, 1
  %i.dc = zext i1 %i.db to i32
  %i.dd = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.cz, ptr noundef %i.da, i32 noundef %i.dc, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = load ptr, ptr %i.b, align 8
  %i.dg = icmp ne ptr %i.df, null
  %or.cond10 = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond10, label %bb.al, label %bb.am

bb.al:                                            ; preds = %RSTRING_PTR.exit123
  %i.dh = load i64, ptr %i.a, align 8, !tbaa !20
  store volatile i64 %i.dh, ptr %2, align 8, !tbaa !20
  br label %bb.am

bb.am:                                            ; preds = %RSTRING_PTR.exit123, %bb.al
  %i.di = icmp ugt i32 %i.bp, 1
  %i.dj = select i1 %i.di, i32 115, i32 114
  br label %bb.ap

bb.an:                                            ; preds = %bb.ai, %bb.af
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not108 = icmp eq ptr %i.dk, null
  br i1 %.not108, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dl = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.dk) #7
  store volatile i64 %i.dl, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ae, %RSTRING_PTR.exit121, %bb.am, %bb.ao, %bb.an, %bb.v, %bb.w, %bb.t, %RSTRING_PTR.exit117, %bb.n, %bb.o, %bb.h, %bb.k, %RSTRING_PTR.exit113, %bb.f, %bb.g
  %.4 = phi i32 [ 115, %bb.t ], [ 114, %bb.v ], [ 115, %bb.n ], [ 114, %bb.f ], [ 114, %bb.k ], [ 0, %bb.h ], [ 114, %bb.g ], [ 114, %RSTRING_PTR.exit113 ], [ 115, %bb.o ], [ 115, %RSTRING_PTR.exit117 ], [ 114, %bb.w ], [ 115, %bb.ae ], [ %i.dj, %bb.am ], [ %i.cs, %RSTRING_PTR.exit121 ], [ %.087126, %bb.ao ], [ %.087126, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @no_feature_p(ptr readnone captures(none) %0, ptr readnone captures(none) %1, ptr readnone captures(none) %2, i32 %3, i32 %4, ptr readnone captures(none) %5) #12 {
bb.a:
  ret i32 0
}

declare i64 @rb_id2sym(i64 noundef) local_unnamed_addr #1

declare i64 @rb_ary_new_from_args(i64 noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local void @rb_ext_ractor_safe(i1 noundef zeroext %0) local_unnamed_addr #13 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = zext i1 %0 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  store volatile ptr %i.d, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.f = getelementptr i8, ptr %.val.i, i64 464
  store i8 %i.b, ptr %i.f, align 8, !tbaa !104
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_require_internal_silent(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !95
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %rb_ractor_main_p.exit, label %rb_ractor_main_p.exit.thread

rb_ractor_main_p.exit:                            ; preds = %bb.a
  %i.c = tail call zeroext i1 @rb_ractor_main_p_() #7
  br i1 %i.c, label %rb_ractor_main_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %rb_ractor_main_p.exit
  %i.d = tail call i64 @rb_ractor_require(i64 noundef %0, i1 noundef zeroext true) #7 ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @rb_fix2int(i64 noundef %i.d) #7
  br label %rb_num2int_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_num2int(i64 noundef %i.d) #7
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.c, %bb.d
  %.0.i3 = phi i64 [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.h = trunc i64 %.0.i3 to i32
  br label %bb.e

rb_ractor_main_p.exit.thread:                     ; preds = %bb.a, %rb_ractor_main_p.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30
  store volatile ptr %i.j, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = tail call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i32 noundef 1, i1 noundef zeroext false)
  br label %bb.e

bb.e:                                             ; preds = %rb_ractor_main_p.exit.thread, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.k, %rb_ractor_main_p.exit.thread ], [ %i.h, %rb_num2int_inline.exit ]
  ret i32 %.0
}

declare i64 @rb_ractor_require(i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @require_internal(ptr noundef %0, i64 noundef %1, i32 noundef range(i32 0, 2) %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %.sroa.4 = alloca i64, align 8                  ; 4 uses
  %.sroa.6 = alloca i64, align 8                  ; 4 uses
  %.sroa.8 = alloca ptr, align 8                  ; 5 uses
  %.sroa.11 = alloca ptr, align 8                 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 5 uses
  %.sroa.0103 = alloca i8, align 1                ; 4 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %4 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.i = alloca ptr, align 8                      ; 5 uses
  store i64 %1, ptr %i.b, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store volatile i32 -1, ptr %i.c, align 4, !tbaa !7
  %i.j = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !52  ; 4 uses
  %i.k = tail call ptr @rb_loading_box() #7       ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  %i.l = getelementptr i8, ptr %.val, i64 240     ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !105
  store i64 %i.m, ptr %.sroa.0, align 8, !tbaa !106
  %i.n = getelementptr i8, ptr %.val, i64 232
  %i.o = load i64, ptr %i.n, align 8, !tbaa !108
  store i64 %i.o, ptr %.sroa.4, align 8, !tbaa !109
  %i.p = getelementptr i8, ptr %0, i64 128        ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !36
  store i64 %i.q, ptr %.sroa.6, align 8, !tbaa !110
  store ptr %0, ptr %.sroa.8, align 8, !tbaa !111
  store ptr %i.k, ptr %.sroa.11, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store volatile ptr null, ptr %i.d, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store volatile i64 0, ptr %i.f, align 8, !tbaa !20
  %i.r = getelementptr i8, ptr %i.k, i64 72
  %i.s = load i64, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %i.t = getelementptr i8, ptr %i.k, i64 80
  %i.u = load i64, ptr %i.t, align 8, !tbaa !114  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store volatile i8 0, ptr %i.g, align 1, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0103)
  %i.v = tail call i64 @rb_str_encode_ospath(i64 noundef %1) #7 ; 2 uses
  store volatile i64 %i.v, ptr %i.e, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %0, ptr %i.h, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.w, align 8, !tbaa !47
  store i64 36, ptr %4, align 8, !tbaa !49
  %i.x = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  store ptr %i.y, ptr %i.z, align 8, !tbaa !51
  %.0.14.val = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %5 = getelementptr i8, ptr %.0.14.val, i64 32
  %6 = load ptr, ptr %5, align 8, !tbaa !53       ; 2 uses
  %7 = getelementptr i8, ptr %.0.14.val, i64 24
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr i8, ptr %6, i64 88
  %.0.14.val.a = load ptr, ptr %9, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %.0.14.val.a, %8
  br i1 %.not.i.i, label %bb.b, label %rb_ec_vm_lock_rec.exit

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %6, i64 96
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.ab, %bb.b ], [ 0, %bb.a ]
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i, ptr %i.ac, align 4, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 4, ptr %i.p, align 8, !tbaa !36
  store i64 0, ptr %i.l, align 8, !tbaa !105
  %i.ae = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ae, ptr %i.ad, align 8
  %i.af = tail call ptr @llvm.stacksave.p0()
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.af, ptr %i.ag, align 8
  %i.ah = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ad)
  %.not = icmp eq i32 %i.ah, 0                    ; 3 uses
  br i1 %.not, label %bb.d, label %bb.c, !prof !93

bb.c:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.15 = load volatile ptr, ptr %i.h, align 8, !tbaa !30
  %i.ai = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.15)
  %.0..0..0..0.17.pre = load ptr, ptr %i.h, align 8, !tbaa !30
  br label %bb.aa

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.x, align 8, !tbaa !50
  %i.aj = call fastcc i32 @search_required(ptr noundef nonnull %i.k, i64 noundef %i.v, ptr noundef %i.e, ptr noundef nonnull @rb_feature_p) ; 3 uses
  %i.ak = load volatile i64, ptr %i.e, align 8, !tbaa !20 ; 11 uses
  %.not83 = icmp eq i32 %i.aj, 0
  br i1 %.not83, label %bb.aa, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not84 = icmp eq i64 %i.ak, 0
  br i1 %.not84, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = inttoptr i64 %i.ak to ptr               ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !22
  %i.an = and i64 %i.am, 8192
  %.not.i = icmp eq i64 %i.an, 0
  %i.ao = getelementptr i8, ptr %i.al, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.aq = phi ptr [ %i.ap, %bb.g ], [ %i.ao, %bb.f ] ; 5 uses
  %i.ar = getelementptr i8, ptr %i.k, i64 96
  %.val93 = load ptr, ptr %i.ar, align 8, !tbaa !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = call i32 @rb_st_lookup(ptr noundef %.val93, i64 noundef %i.as, ptr noundef nonnull %i.a) #7
  %.not.i95 = icmp eq i32 %i.at, 0
  br i1 %.not.i95, label %load_lock.exit.thread107, label %bb.h

load_lock.exit.thread107:                         ; preds = %RSTRING_PTR.exit
  %i.au = call noalias nonnull ptr @ruby_strdup(ptr noundef %i.aq) #7 ; 2 uses
  %i.av = call i64 @rb_thread_shield_new() #7     ; 2 uses
  store i64 %i.av, ptr %i.a, align 8, !tbaa !20
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = call i32 @rb_st_insert(ptr noundef %.val93, i64 noundef %i.aw, i64 noundef %i.av) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store volatile ptr %i.au, ptr %i.d, align 8, !tbaa !99
  br label %bb.m

bb.h:                                             ; preds = %RSTRING_PTR.exit
  br i1 %3, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !20
  %i.az = call zeroext i1 @rb_thread_shield_owned(i64 noundef %i.ay) #7
  br i1 %i.az, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ba = call i64 (ptr, ...) @rb_warning_string(ptr noundef nonnull @.str.21, ptr noundef %i.aq) #7 ; 2 uses
  call void @rb_backtrace_each(ptr noundef nonnull @rb_str_append, i64 noundef %i.ba) #7
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.22, i64 noundef %i.ba) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bc = call i64 @rb_thread_shield_wait(i64 noundef %i.bb) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  switch i64 %i.bc, label %load_lock.exit [
    i64 0, label %load_lock.exit.thread
    i64 4, label %load_lock.exit.thread
  ]

load_lock.exit.thread:                            ; preds = %bb.k, %bb.k
  store volatile ptr null, ptr %i.d, align 8, !tbaa !99
  br label %bb.l

load_lock.exit:                                   ; preds = %bb.k
  store volatile ptr %i.aq, ptr %i.d, align 8, !tbaa !99
  %.not85 = icmp eq ptr %i.aq, null
  br i1 %.not85, label %bb.l, label %bb.m

bb.l:                                             ; preds = %load_lock.exit.thread, %load_lock.exit, %bb.e
  store volatile i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.m:                                             ; preds = %load_lock.exit.thread107, %load_lock.exit
  %.0..0..0..0.36 = load volatile ptr, ptr %i.d, align 8, !tbaa !99
  %i.bd = load i8, ptr %.0..0..0..0.36, align 1, !tbaa !21
  %.not86 = icmp eq i8 %i.bd, 0
  br i1 %.not86, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.o:                                             ; preds = %bb.m
  %i.be = icmp eq i32 %i.aj, 115
  br i1 %i.be, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bf = getelementptr i8, ptr %.val, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = call i64 @rb_vm_call_cfunc_in_box(i64 noundef 4, ptr noundef nonnull @run_static_ext_init, i64 noundef %i.bh, i64 noundef %i.ak, i64 noundef %i.ak, ptr noundef nonnull %i.k) #7
  %i.bj = and i64 %i.bi, -5
  %.not110 = icmp eq i64 %i.bj, 0
  br i1 %.not110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bk = call i64 @rb_hash_aref(i64 noundef %i.u, i64 noundef %i.ak) #7 ; 2 uses
  %i.bl = and i64 %i.bk, -5
  %.not.i97 = icmp eq i64 %i.bl, 0
  br i1 %.not.i97, label %bb.s, label %realpath_internal_cached.exit

bb.s:                                             ; preds = %bb.r
  %i.bm = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %i.ak, i32 noundef 1) #7 ; 2 uses
  %i.bn = call i64 @rb_fstring(i64 noundef %i.ak) #7
  %i.bo = call i64 @rb_fstring(i64 noundef %i.bm) #7
  %i.bp = call i64 @rb_hash_aset(i64 noundef %i.u, i64 noundef %i.bn, i64 noundef %i.bo) #7 ; 0 uses
  br label %realpath_internal_cached.exit

realpath_internal_cached.exit:                    ; preds = %bb.r, %bb.s
  %.0.i98 = phi i64 [ %i.bm, %bb.s ], [ %i.bk, %bb.r ] ; 2 uses
  store volatile i64 %.0.i98, ptr %i.f, align 8, !tbaa !20
  %i.bq = call i64 @rb_hash_aref(i64 noundef %i.s, i64 noundef %.0.i98) #7
  %i.br = and i64 %i.bq, -5
  %.not111 = icmp eq i64 %i.br, 0
  br i1 %.not111, label %bb.u, label %bb.t

bb.t:                                             ; preds = %realpath_internal_cached.exit
  store volatile i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.u:                                             ; preds = %realpath_internal_cached.exit
  switch i32 %i.aj, label %bb.z [
    i32 114, label %bb.v
    i32 115, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24. = load volatile ptr, ptr %.sroa.8, align 8, !tbaa !111
  call fastcc void @load_iseq_eval(ptr noundef %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24., i64 noundef %i.ak)
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  store volatile i8 1, ptr %i.g, align 1, !tbaa !115
  %i.bs = getelementptr i8, ptr %.val, i64 464    ; 2 uses
  %.sroa.0103.0.copyload = load volatile i8, ptr %i.bs, align 8, !tbaa !115
  store volatile i8 %.sroa.0103.0.copyload, ptr %.sroa.0103, align 1, !tbaa !115
  store i8 0, ptr %i.bs, align 8, !tbaa !115
  %i.bt = getelementptr i8, ptr %i.k, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !117
  %i.bv = call i64 @rb_vm_call_cfunc_in_box(i64 noundef %i.bu, ptr noundef nonnull @load_ext, i64 noundef %i.ak, i64 noundef %1, i64 noundef %i.ak, ptr noundef nonnull %i.k) #7 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.k, i64 104
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !118
  %i.by = add i64 %i.bv, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.by, -1
  br i1 %or.cond.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bz = shl nsw i64 %i.bv, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %rb_long2num_inline.exit

bb.y:                                             ; preds = %bb.w
  %i.cb = call i64 @rb_int2big(i64 noundef %i.bv) #7
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.x, %bb.y
  %.0.i99 = phi i64 [ %i.ca, %bb.x ], [ %i.cb, %bb.y ]
  %i.cc = call i64 @rb_hash_aset(i64 noundef %i.bx, i64 noundef %i.ak, i64 noundef %.0.i99) #7 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %rb_long2num_inline.exit, %bb.v, %bb.u
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.aa

bb.aa:                                            ; preds = %bb.c, %bb.d, %bb.n, %bb.t, %bb.z, %bb.q, %bb.l
  %.0..0..0.17 = phi ptr [ %0, %bb.d ], [ %0, %bb.n ], [ %0, %bb.t ], [ %0, %bb.z ], [ %0, %bb.q ], [ %0, %bb.l ], [ %.0..0..0..0.17.pre, %bb.c ]
  %i.cd = phi i32 [ 0, %bb.d ], [ 0, %bb.n ], [ 0, %bb.t ], [ 0, %bb.z ], [ 0, %bb.q ], [ 0, %bb.l ], [ %i.ai, %bb.c ] ; 5 uses
  %i.ce = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.cf = getelementptr i8, ptr %.0..0..0.17, i64 24
end_hunk_1
begin_hunk_2_@features_index_add_single_callback:bb.a
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.co
  %i.cv = getelementptr i8, ptr %i.cu, i64 -3
  %i.cw = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cv, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %rb_darray_size.exit, label %rb_darray_size.exit.i

rb_darray_size.exit:                              ; preds = %is_rbext_path.exit51
  %i.cy = add nuw i64 %.0427274, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.av
  br i1 %exitcond.not, label %.critedge, label %RARRAY_AREF.exit47

.critedge:                                        ; preds = %rb_darray_size.exit, %rb_darray_size.exit.us80, %bb.i
  %.not.i.i52 = icmp eq i64 %i.h, 0
  br i1 %.not.i.i52, label %rbimpl_size_mul_or_raise.exit.i.i.i, label %.critedge.rb_darray_size.exit.i_crit_edge

.critedge.rb_darray_size.exit.i_crit_edge:        ; preds = %rb_darray_size.exit.lr.ph, %.critedge
  %.pre = load i64, ptr %i.as, align 8, !tbaa !120
  br label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %is_rbext_path.exit51, %Check_Type.exit, %Check_Type.exit.us77, %is_rbext_path.exit51.us79, %.critedge.rb_darray_size.exit.i_crit_edge
  %i.cz = phi i64 [ %.pre, %.critedge.rb_darray_size.exit.i_crit_edge ], [ %i.av, %Check_Type.exit.us77 ], [ %i.av, %is_rbext_path.exit51.us79 ], [ %i.av, %Check_Type.exit ], [ %i.av, %is_rbext_path.exit51 ] ; 2 uses
  %.363 = phi i64 [ -1, %.critedge.rb_darray_size.exit.i_crit_edge ], [ %.0427274.us, %Check_Type.exit.us77 ], [ %.0427274.us, %is_rbext_path.exit51.us79 ], [ %.0427274, %Check_Type.exit ], [ %.0427274, %is_rbext_path.exit51 ] ; 3 uses
  %i.da = getelementptr i8, ptr %i.as, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !144
  %.fr.i = freeze i64 %i.db                       ; 3 uses
  %i.dc = icmp ult i64 %i.cz, %.fr.i
  br i1 %i.dc, label %rb_darray_ensure_space.exit, label %bb.q

bb.q:                                             ; preds = %rb_darray_size.exit.i
  %i.dd = icmp eq i64 %.fr.i, 0
  %i.de = shl i64 %.fr.i, 1                       ; 3 uses
  br i1 %i.dd, label %rbimpl_size_mul_or_raise.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = icmp ugt i64 %i.de, 2305843009213693951
  br i1 %i.df, label %bb.s, label %rbimpl_size_mul_or_raise.exit.i.i.i, !prof !146

bb.s:                                             ; preds = %bb.r
  tail call void @ruby_malloc_size_overflow(i64 noundef %i.de, i64 noundef 8) #20
  unreachable

rbimpl_size_mul_or_raise.exit.i.i.i:              ; preds = %.critedge, %bb.q, %bb.j, %bb.r
  %.not.i.i5265 = phi i1 [ false, %bb.r ], [ false, %bb.q ], [ true, %.critedge ], [ true, %bb.j ]
  %.361 = phi i64 [ %.363, %bb.r ], [ %.363, %bb.q ], [ -1, %.critedge ], [ -1, %bb.j ]
  %i.dg = phi i64 [ %i.de, %bb.r ], [ 1, %bb.q ], [ 1, %.critedge ], [ 1, %bb.j ] ; 2 uses
  %i.dh = shl nuw i64 %i.dg, 3                    ; 2 uses
  %i.di = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dh, i64 16) ; 2 uses
  %i.dj = extractvalue { i64, i1 } %i.di, 1
  br i1 %i.dj, label %bb.t, label %rb_darray_realloc_mul_add.exit.i.i, !prof !147

bb.t:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  tail call void @ruby_malloc_add_size_overflow(i64 noundef %i.dh, i64 noundef 16) #20
  unreachable

rb_darray_realloc_mul_add.exit.i.i:               ; preds = %rbimpl_size_mul_or_raise.exit.i.i.i
  %i.dk = extractvalue { i64, i1 } %i.di, 0
  %i.dl = tail call nonnull ptr @ruby_xrealloc(ptr noundef %i.as, i64 noundef %i.dk) #27 ; 5 uses
  br i1 %.not.i.i5265, label %bb.u, label %rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge

rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge: ; preds = %rb_darray_realloc_mul_add.exit.i.i
  %.pre100.pre = load i64, ptr %i.dl, align 8, !tbaa !120
  br label %rb_darray_resize_capa_impl.exit.i

bb.u:                                             ; preds = %rb_darray_realloc_mul_add.exit.i.i
  store i64 0, ptr %i.dl, align 8, !tbaa !120
  br label %rb_darray_resize_capa_impl.exit.i

rb_darray_resize_capa_impl.exit.i:                ; preds = %rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge, %bb.u
  %.pre100 = phi i64 [ %.pre100.pre, %rb_darray_realloc_mul_add.exit.i.i.rb_darray_resize_capa_impl.exit.i_crit_edge ], [ 0, %bb.u ]
  %i.dm = getelementptr i8, ptr %i.dl, i64 8
  store i64 %i.dg, ptr %i.dm, align 8, !tbaa !144
  %i.dn = ptrtoint ptr %i.dl to i64
  br label %rb_darray_ensure_space.exit

rb_darray_ensure_space.exit:                      ; preds = %rb_darray_size.exit.i, %rb_darray_resize_capa_impl.exit.i
  %.pre-phi = phi i64 [ %i.dn, %rb_darray_resize_capa_impl.exit.i ], [ %i.h, %rb_darray_size.exit.i ]
  %i.do = phi i64 [ %.pre100, %rb_darray_resize_capa_impl.exit.i ], [ %i.cz, %rb_darray_size.exit.i ]
  %.0 = phi ptr [ %i.dl, %rb_darray_resize_capa_impl.exit.i ], [ %i.as, %rb_darray_size.exit.i ] ; 4 uses
  %.362 = phi i64 [ %.361, %rb_darray_resize_capa_impl.exit.i ], [ %.363, %rb_darray_size.exit.i ] ; 3 uses
  %i.dp = ashr i64 %i.d, 1                        ; 2 uses
  %i.dq = getelementptr i8, ptr %.0, i64 16       ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %i.do
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !20
  %i.ds = load i64, ptr %.0, align 8, !tbaa !120
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %.0, align 8, !tbaa !120
  store i64 %.pre-phi, ptr %1, align 8, !tbaa !20
  %i.du = icmp sgt i64 %.362, -1
  br i1 %i.du, label %rb_darray_size.exit54, label %bb.x

rb_darray_size.exit54:                            ; preds = %rb_darray_ensure_space.exit
  %i.dv = load i64, ptr %.0, align 8, !tbaa !120
  %i.dw = xor i64 %.362, -1
  %i.dx = add i64 %i.dv, %i.dw                    ; 3 uses
  %i.dy = icmp ugt i64 %i.dx, 2305843009213693951
  br i1 %i.dy, label %bb.v, label %rbimpl_size_mul_or_raise.exit, !prof !147

bb.v:                                             ; preds = %rb_darray_size.exit54
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.dx) #20
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %rb_darray_size.exit54
  %i.dz = getelementptr [8 x i8], ptr %i.dq, i64 %.362 ; 3 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = shl nuw i64 %i.dx, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ea, ptr noundef nonnull align 1 %i.dz, i64 noundef %i.eb, i1 noundef false) #7
  store i64 %i.dp, ptr %i.dz, align 8, !tbaa !20
  br label %bb.x

bb.w:                                             ; preds = %bb.a
  store i64 %i.d, ptr %1, align 8, !tbaa !20
  br label %bb.x

bb.x:                                             ; preds = %rb_darray_ensure_space.exit, %rbimpl_size_mul_or_raise.exit, %is_rbext_path.exit, %bb.w
  ret i32 0
}

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_st_hash(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @ruby_malloc_add_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #17

; Function Attrs: allocsize(1)
declare nonnull ptr @ruby_xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: noreturn
declare void @ruby_malloc_size_overflow(i64 noundef, i64 noundef) local_unnamed_addr #11

declare i64 @rb_module_new() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc range(i32 0, 9) i32 @load_wrapping(ptr noundef initializes((128, 136)) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %3 = alloca %struct.rb_vm_tag, align 8          ; 9 uses
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr i8, ptr %.val, i64 240     ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !105
  store volatile i64 %i.f, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr i8, ptr %.val, i64 232     ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !108
  store volatile i64 %i.h, ptr %i.b, align 8, !tbaa !20
  %i.i = getelementptr i8, ptr %0, i64 128
  store i64 4, ptr %i.i, align 8, !tbaa !36
  %i.j = tail call i64 @rb_obj_class(i64 noundef %2) #7
  %i.k = load i64, ptr @rb_cBox, align 8, !tbaa !20
  %i.l = icmp eq i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @rb_get_box_t(i64 noundef %2) #7
  %i.n = getelementptr i8, ptr %i.m, i64 16       ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !117  ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i64 @rb_vm_top_self() #22
  %i.q = tail call i64 @rb_obj_clone(i64 noundef %i.p) #7 ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !tbaa !117
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = tail call i64 @rb_vm_top_self() #22
  %i.s = tail call i64 @rb_obj_clone(i64 noundef %i.r) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %storemerge = phi i64 [ %i.s, %bb.d ], [ %i.q, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  store i64 %storemerge, ptr %i.g, align 8, !tbaa !108
  store i64 %2, ptr %i.e, align 8, !tbaa !105
  tail call void @rb_extend_object(i64 noundef %storemerge, i64 noundef %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.t, align 8, !tbaa !47
  store i64 36, ptr %3, align 8, !tbaa !49
  %i.u = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !51
  %.0.1.val = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !34, !noundef !34 ; 2 uses
  %4 = getelementptr i8, ptr %.0.1.val, i64 32
  %5 = load ptr, ptr %4, align 8, !tbaa !53       ; 2 uses
  %6 = getelementptr i8, ptr %.0.1.val, i64 24
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr i8, ptr %5, i64 88
  %.val5.i = load ptr, ptr %8, align 8, !tbaa !73
  %.not.i.i = icmp eq ptr %.val5.i, %7
  br i1 %.not.i.i, label %bb.f, label %rb_ec_vm_lock_rec.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %5, i64 96
  %i.y = load i32, ptr %i.x, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.y, %bb.f ], [ 0, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.z, align 4, !tbaa !92
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ab, ptr %i.aa, align 8
  %i.ac = tail call ptr @llvm.stacksave.p0()
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.aa)
  %.not28 = icmp eq i32 %i.ae, 0
  br i1 %.not28, label %bb.h, label %bb.g, !prof !93

bb.g:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !30
  %i.af = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %.0..0..0..0.4.pre = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %bb.i

bb.h:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.u, align 8, !tbaa !50
  call fastcc void @load_iseq_eval(ptr noundef nonnull %0, i64 noundef %1)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.0..0..0.4 = phi ptr [ %0, %bb.h ], [ %.0..0..0..0.4.pre, %bb.g ]
  %i.ag = phi i32 [ 0, %bb.h ], [ %i.af, %bb.g ]
  %i.ah = load ptr, ptr %i.w, align 8, !tbaa !51
  %i.ai = getelementptr i8, ptr %.0..0..0.4, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.5 = load volatile i64, ptr %i.b, align 8, !tbaa !20
  store i64 %.0..0..0..0.5, ptr %i.g, align 8, !tbaa !108
  %.0..0..0..0.6 = load volatile i64, ptr %i.a, align 8, !tbaa !20
  store i64 %.0..0..0..0.6, ptr %i.e, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.ag
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @load_iseq_eval(ptr noundef %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.pm_parse_result_t, align 8  ; 9 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = tail call ptr @rb_loading_box() #7       ; 2 uses
  %i.g = tail call ptr @rb_iseq_load_iseq(i64 noundef %1) #7 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  store volatile ptr %i.i, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.j = tail call i64 @rb_vm_push_frame_fname(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %1) #7
  store i64 %i.j, ptr %i.b, align 8, !tbaa !20
  %i.k = getelementptr i8, ptr %i.f, i64 80
  %i.l = load i64, ptr %i.k, align 8, !tbaa !114  ; 4 uses
  %i.m = tail call i32 @rb_ruby_default_parser() #7
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1000) %3, i8 0, i64 1000, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 752
  store i32 1, ptr %i.o, align 8, !tbaa !148
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 976
  store i32 1, ptr %i.p, align 8, !tbaa !175
  %i.q = call i64 @pm_load_parse_file(ptr noundef nonnull %3, i64 noundef %1, ptr noundef null) #7 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 840
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.t = call i64 @rb_fstring_new(ptr noundef nonnull @.str.19, i64 noundef 16) #7
  %i.u = call i64 @rb_hash_aref(i64 noundef %i.l, i64 noundef %1) #7 ; 2 uses
  %i.v = and i64 %i.u, -5
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %bb.e, label %realpath_internal_cached.exit

bb.e:                                             ; preds = %bb.d
  %i.w = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %1, i32 noundef 1) #7 ; 2 uses
  %i.x = call i64 @rb_fstring(i64 noundef %1) #7
  %i.y = call i64 @rb_fstring(i64 noundef %i.w) #7
  %i.z = call i64 @rb_hash_aset(i64 noundef %i.l, i64 noundef %i.x, i64 noundef %i.y) #7 ; 0 uses
  br label %realpath_internal_cached.exit

realpath_internal_cached.exit:                    ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.w, %bb.e ], [ %i.u, %bb.d ]
  %i.aa = call ptr @pm_iseq_new_top(ptr noundef nonnull %i.s, i64 noundef %i.t, i64 noundef %1, i64 noundef %.0.i, ptr noundef null, ptr noundef nonnull %i.c) #7
  call void @pm_parse_result_free(ptr noundef nonnull %3) #7
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !7   ; 2 uses
  %.not30 = icmp eq i32 %i.ab, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %realpath_internal_cached.exit
  call void @rb_jump_tag(i32 noundef %i.ab) #20
  unreachable

bb.g:                                             ; preds = %realpath_internal_cached.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.k

bb.h:                                             ; preds = %bb.c
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.b, ptr %i.d, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !176
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ad = load volatile i64, ptr %i.ac, align 8, !tbaa !20 ; 0 uses
  call void @pm_parse_result_free(ptr noundef nonnull %3) #7
  call void @rb_exc_raise(i64 noundef %i.q) #20
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.ae = tail call i64 @rb_parser_new() #7       ; 2 uses
  %i.af = tail call i64 @rb_parser_set_context(i64 noundef %i.ae, ptr noundef null, i32 noundef 0) #7 ; 0 uses
  %i.ag = tail call i64 @rb_parser_load_file(i64 noundef %i.ae, i64 noundef %1) #7 ; 2 uses
  %i.ah = tail call ptr @rb_ruby_ast_data_get(i64 noundef %i.ag) #7
  %i.ai = tail call i64 @rb_fstring_new(ptr noundef nonnull @.str.19, i64 noundef 16) #7
  %i.aj = tail call i64 @rb_hash_aref(i64 noundef %i.l, i64 noundef %1) #7 ; 2 uses
  %i.ak = and i64 %i.aj, -5
  %.not.i31 = icmp eq i64 %i.ak, 0
  br i1 %.not.i31, label %bb.j, label %realpath_internal_cached.exit33

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %1, i32 noundef 1) #7 ; 2 uses
  %i.am = tail call i64 @rb_fstring(i64 noundef %1) #7
  %i.an = tail call i64 @rb_fstring(i64 noundef %i.al) #7
  %i.ao = tail call i64 @rb_hash_aset(i64 noundef %i.l, i64 noundef %i.am, i64 noundef %i.an) #7 ; 0 uses
  br label %realpath_internal_cached.exit33

realpath_internal_cached.exit33:                  ; preds = %bb.i, %bb.j
  %.0.i32 = phi i64 [ %i.al, %bb.j ], [ %i.aj, %bb.i ]
  %i.ap = tail call ptr @rb_iseq_new_top(i64 noundef %i.ag, i64 noundef %i.ai, i64 noundef %1, i64 noundef %.0.i32, ptr noundef null) #7
  tail call void @rb_ast_dispose(ptr noundef %i.ah) #7
  br label %bb.k

bb.k:                                             ; preds = %realpath_internal_cached.exit33, %bb.g
  %.0 = phi ptr [ %i.aa, %bb.g ], [ %i.ap, %realpath_internal_cached.exit33 ]
  call void @rb_vm_pop_frame(ptr noundef %.0..0..0..0..0..0..i) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store ptr %i.b, ptr %i.e, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #7, !srcloc !177
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  %i.ar = load volatile i64, ptr %i.aq, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  %.1 = phi ptr [ %i.g, %bb.a ], [ %.0, %bb.k ]   ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.as, align 8, !tbaa !52, !nonnull !34, !noundef !34
  %i.at = getelementptr i8, ptr %.val.i, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !72 ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !178
  %i.ax = and i32 %i.aw, 8192
  %.not.i34 = icmp eq i32 %i.ax, 0
  br i1 %.not.i34, label %rb_exec_event_hook_script_compiled.exit, label %bb.m, !prof !93

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr i8, ptr %i.au, i64 16
  %i.az = getelementptr i8, ptr %0, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !179 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 24
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !180
  %i.bd = ptrtoint ptr %.1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  store i32 8192, ptr %2, align 8, !tbaa !183
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.be, align 8, !tbaa !185
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ba, ptr %i.bf, align 8, !tbaa !186
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.bc, ptr %i.bg, align 8, !tbaa !187
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store i64 %i.bd, ptr %i.bi, align 8, !tbaa !188
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 72
  store i64 36, ptr %i.bj, align 8, !tbaa !189
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i32 0, ptr %i.bk, align 8, !tbaa !190
  call void @rb_exec_event_hooks(ptr noundef nonnull %2, ptr noundef %i.ay, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
end_hunk_2
