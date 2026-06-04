inline.NumInlined: 218
inline.NumDeleted: 78
begin_hunk_0_@feature_provided:bb.a
  %.0.shrunk = phi i1 [ %.not26, %bb.i ], [ false, %bb.j ], [ %.not27, %bb.g ], [ true, %.tail30.thread ]
  %.0 = zext i1 %.0.shrunk to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @rb_provide(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_current_box() #7
  %i.b = tail call i64 @rb_fstring_cstr(ptr noundef nonnull %0) #7
  tail call fastcc void @rb_provide_feature(ptr noundef %i.a, i64 noundef %i.b)
  ret void
}

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
  %i.k = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 48
  %.0.1.val = load ptr, ptr %i.k, align 8, !tbaa !52 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %.0.1.val, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  %i.n = getelementptr i8, ptr %.0.1.val, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !72
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ]
  %i.p = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.p, align 8, !tbaa !73
  %i.q = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.q, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.r = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.s = load i32, ptr %i.r, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.s, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.t, align 4, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.v, ptr %i.u, align 8
  %i.w = tail call ptr @llvm.stacksave.p0()
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.w, ptr %i.x, align 8
  %i.y = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.u)
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %bb.f, !prof !93

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %0, ptr %i.a, align 8, !tbaa !20
  %i.z = call i64 @rb_get_path(i64 noundef %0) #7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr %i.a, ptr %i.b, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #7, !srcloc !29
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  store volatile i64 %i.z, ptr %i.aa, align 8, !tbaa !20
  %i.ab = call i64 @rb_find_file(i64 noundef %i.z) #7 ; 2 uses
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %bb.e, label %.thread10

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !20
  call fastcc void @load_failed(i64 noundef %i.ac) #23
  unreachable

.thread10:                                        ; preds = %bb.d
  %.not3.i = icmp eq i32 %1, 0
  %i.ad = select i1 %.not3.i, i64 0, i64 20
  call fastcc void @rb_load_internal(i64 noundef %i.ab, i64 noundef %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !51
  %.0..0..0..0.411 = load ptr, ptr %i.d, align 8, !tbaa !30
  %4 = getelementptr i8, ptr %.0..0..0..0.411, i64 24
  store ptr %i.ae, ptr %4, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.g

bb.f:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.d, align 8, !tbaa !30
  %i.af = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !51
  %.0..0..0..0.4 = load ptr, ptr %i.d, align 8, !tbaa !30
  %5 = getelementptr i8, ptr %.0..0..0..0.4, i64 24
  store ptr %i.ag, ptr %5, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i32 %i.af, ptr %2, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %.thread10, %bb.f
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
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !52 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %rb_ec_ractor_ptr.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %.val.i, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !72
  br label %rb_ec_ractor_ptr.exit.i.i

rb_ec_ractor_ptr.exit.i.i:                        ; preds = %bb.b, %bb.a
  %.0.i2.i.i = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i.i = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  %i.l = getelementptr i8, ptr %.0.i2.i.i, i64 88
  %.val5.i.i = load ptr, ptr %i.l, align 8, !tbaa !73
  %i.m = icmp eq ptr %.val5.i.i, %.0.i7.i.i
  br i1 %i.m, label %bb.c, label %rb_ec_vm_lock_rec.exit.i

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i.i
  %i.n = getelementptr i8, ptr %.0.i2.i.i, i64 96
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit.i

rb_ec_vm_lock_rec.exit.i:                         ; preds = %bb.c, %rb_ec_ractor_ptr.exit.i.i
  %.0.i.i = phi i32 [ %i.o, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i.i ] ; 2 uses
  %.not.i = icmp eq i32 %.0.i.i, %i.f
  br i1 %.not.i, label %rb_ec_vm_lock_rec_check.exit, label %bb.d

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit.i
  tail call void @rb_ec_vm_lock_rec_release(ptr noundef nonnull %0, i32 noundef %i.f, i32 noundef %.0.i.i) #7
  br label %rb_ec_vm_lock_rec_check.exit

rb_ec_vm_lock_rec_check.exit:                     ; preds = %rb_ec_vm_lock_rec.exit.i, %bb.d
  %i.p = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i32 %i.d, 9
  tail call void @llvm.assume(i1 %i.q)
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
  %i.p = icmp sgt i32 %i.o, 1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.q = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 24
  %.val.i = load ptr, ptr %i.q, align 8, !tbaa !50 ; 2 uses
  %i.r = getelementptr i8, ptr %.val.i, i64 64
  store i32 %i.o, ptr %i.r, align 8, !tbaa !47
  %i.s = getelementptr i8, ptr %.val.i, i64 16
  tail call void @llvm.eh.sjlj.longjmp(ptr %i.s)
  unreachable

bb.f:                                             ; preds = %rb_ractor_main_p.exit.thread.i
  %i.t = icmp slt i32 %i.o, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @load_failed(i64 noundef %i.e) #23
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.o, 0
  %i.u = select i1 %.not.i, i64 0, i64 20
  br label %rb_require_string_internal.exit

rb_require_string_internal.exit:                  ; preds = %bb.d, %bb.h
  %.0.i = phi i64 [ %i.u, %bb.h ], [ %i.j, %bb.d ]
  ret i64 %.0.i
}

declare i64 @rb_current_realfilepath() local_unnamed_addr #1

; Function Attrs: noreturn
declare void @rb_loaderror(ptr noundef, ...) local_unnamed_addr #11

declare i64 @rb_file_dirname(i64 noundef) local_unnamed_addr #1

declare i64 @rb_file_absolute_path(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_f_require_relative(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_require_relative_entrypoint(i64 noundef %1)
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_resolve_feature_path(i64 %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = tail call ptr @rb_loading_box() #7
  %i.c = tail call i64 @rb_get_path(i64 noundef %1) #7
  %i.d = tail call i64 @rb_str_encode_ospath(i64 noundef %i.c) #7 ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !20
  %i.e = call fastcc i32 @search_required(ptr noundef %i.b, i64 noundef %i.d, ptr noundef %i.a, ptr noundef nonnull @no_feature_p)
  switch i32 %i.e, label %bb.d [
    i32 114, label %bb.b
    i32 115, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %.pr.i = load i64, ptr @rb_resolve_feature_path.rbimpl_id, align 8, !tbaa !20 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.f = call i64 @rb_intern2(ptr noundef nonnull @.str.2, i64 noundef 2) #7 ; 3 uses
  store i64 %i.f, ptr @rb_resolve_feature_path.rbimpl_id, align 8, !tbaa !20
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !96

bb.c:                                             ; preds = %bb.a
  %.pr.i8 = load i64, ptr @rb_resolve_feature_path.rbimpl_id.3, align 8, !tbaa !20 ; 2 uses
  %.not4.i9 = icmp eq i64 %.pr.i8, 0
  br i1 %.not4.i9, label %.lr.ph.i11, label %rbimpl_intern_const.exit

.lr.ph.i11:                                       ; preds = %bb.c, %.lr.ph.i11
  %i.g = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 2) #7 ; 3 uses
  store i64 %i.g, ptr @rb_resolve_feature_path.rbimpl_id.3, align 8, !tbaa !20
  %.not.i12 = icmp eq i64 %i.g, 0
  br i1 %.not.i12, label %.lr.ph.i11, label %rbimpl_intern_const.exit, !llvm.loop !96

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i11, %.lr.ph.i, %bb.c, %bb.b
  %.lcssa.i10.sink = phi i64 [ %i.f, %.lr.ph.i ], [ %.pr.i, %bb.b ], [ %.pr.i8, %bb.c ], [ %i.g, %.lr.ph.i11 ]
  %i.h = call i64 @rb_id2sym(i64 noundef %.lcssa.i10.sink) #7
  %i.i = load i64, ptr %i.a, align 8, !tbaa !20
  %i.j = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 2, i64 noundef %i.h, i64 noundef %i.i) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %rbimpl_intern_const.exit
  %.0 = phi i64 [ %i.j, %rbimpl_intern_const.exit ], [ 4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i64 %.0
}

declare i64 @rb_str_encode_ospath(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @search_required(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %2, ptr noundef readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 15 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store volatile i64 0, ptr %2, align 8, !tbaa !20
  %i.e = inttoptr i64 %1 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr i8, ptr %i.e, i64 24       ; 4 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ] ; 4 uses
  %i.k = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.j, i32 noundef 46) #22 ; 10 uses
  %.not = icmp eq ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %bb.u, label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit
  %i.l = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.k, i32 noundef 47) #22
  %.not97 = icmp eq ptr %i.l, null
  br i1 %.not97, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.not101 = icmp eq i32 %i.o, 0
  br i1 %.not101, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !99   ; 2 uses
  %.not103 = icmp eq ptr %i.p, null
  br i1 %.not103, label %bb.ap, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.p) #7
  store volatile i64 %i.q, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.h:                                             ; preds = %bb.e
  %i.r = call i64 @rb_find_file(i64 noundef %1) #7 ; 3 uses
  %.not102 = icmp eq i64 %i.r, 0
  br i1 %.not102, label %bb.ap, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = and i64 %i.t, 8192
  %.not.i112 = icmp eq i64 %i.u, 0
  %i.v = getelementptr i8, ptr %i.s, i64 24       ; 2 uses
  br i1 %.not.i112, label %RSTRING_PTR.exit113, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  br label %RSTRING_PTR.exit113

RSTRING_PTR.exit113:                              ; preds = %bb.i, %bb.j
  %i.x = phi ptr [ %i.w, %bb.j ], [ %i.v, %bb.i ] ; 2 uses
  %i.y = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.x, i32 noundef 46) #22
  %i.z = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef %i.y, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.aa = icmp eq i32 %i.z, 0
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = icmp ne ptr %i.ab, null
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %bb.k, label %bb.ap

bb.k:                                             ; preds = %RSTRING_PTR.exit113
  store volatile i64 %i.r, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.l:                                             ; preds = %bb.d
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(4) @.str.5) #22
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %sub_0

sub_0:                                            ; preds = %bb.l
  %i.af = load i8, ptr %i.k, align 1
  %.not127 = icmp eq i8 %i.af, 46
  br i1 %.not127, label %sub_1, label %.thread

sub_1:                                            ; preds = %sub_0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ah = load i8, ptr %i.ag, align 1
  %.not128 = icmp eq i8 %i.ah, 111
  br i1 %.not128, label %.tail, label %.thread

.tail:                                            ; preds = %sub_1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %.thread

bb.m:                                             ; preds = %.tail, %bb.l
  %i.al = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.not98 = icmp eq i32 %i.al, 0
  br i1 %.not98, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not100 = icmp eq ptr %i.am, null
  br i1 %.not100, label %bb.ap, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.am) #7
  store volatile i64 %i.an, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.p:                                             ; preds = %bb.m
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ap = and i64 %i.ao, 8192
  %.not.i114 = icmp eq i64 %i.ap, 0
  br i1 %.not.i114, label %RSTRING_PTR.exit115, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %RSTRING_PTR.exit115

RSTRING_PTR.exit115:                              ; preds = %bb.p, %bb.q
  %i.ar = phi ptr [ %i.aq, %bb.q ], [ %i.h, %bb.p ]
  %i.as = ptrtoint ptr %i.k to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = call i64 @rb_str_subseq(i64 noundef %1, i64 noundef 0, i64 noundef %i.au) #7 ; 3 uses
  %i.aw = call i64 @rb_str_cat(i64 noundef %i.av, ptr noundef nonnull @.str.5, i64 noundef 3) #7 ; 0 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.av) #7
  %i.ax = call i64 @rb_find_file(i64 noundef %i.av) #7 ; 3 uses
  %.not99 = icmp eq i64 %i.ax, 0
  br i1 %.not99, label %.thread, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit115
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !22
  %i.ba = and i64 %i.az, 8192
  %.not.i116 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr i8, ptr %i.ay, i64 24     ; 2 uses
  br i1 %.not.i116, label %RSTRING_PTR.exit117, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !21
  br label %RSTRING_PTR.exit117

RSTRING_PTR.exit117:                              ; preds = %bb.r, %bb.s
  %i.bd = phi ptr [ %i.bc, %bb.s ], [ %i.bb, %bb.r ] ; 2 uses
  %i.be = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.bd, i32 noundef 46) #22
  %i.bf = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef %i.be, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.b) #7, !callees !98
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = load ptr, ptr %i.b, align 8
  %i.bi = icmp ne ptr %i.bh, null
  %or.cond4 = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond4, label %bb.t, label %bb.ap

bb.t:                                             ; preds = %RSTRING_PTR.exit117
  store volatile i64 %i.ax, ptr %2, align 8, !tbaa !20
  br label %bb.ap

bb.u:                                             ; preds = %bb.c, %RSTRING_PTR.exit
  %i.bj = call i32 %3(ptr noundef %0, ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b) #7, !callees !98
  %.fr = freeze i32 %i.bj                         ; 3 uses
  %i.bk = icmp eq i32 %.fr, 114
  br i1 %i.bk, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !99  ; 2 uses
  %.not109 = icmp eq ptr %i.bl, null
  br i1 %.not109, label %bb.ap, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = call i64 @rb_filesystem_str_new_cstr(ptr noundef nonnull %i.bl) #7
  store volatile i64 %i.bm, ptr %2, align 8, !tbaa !20
  br label %bb.ap

.thread:                                          ; preds = %sub_1, %sub_0, %RSTRING_PTR.exit115, %.tail
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  store i64 %1, ptr %i.a, align 8, !tbaa !20
  %i.bn = icmp eq i32 %.fr, 115
  %spec.select = select i1 %i.bn, ptr @ruby_ext, ptr @loadable_ext
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %.087126 = phi i32 [ 0, %.thread ], [ %.fr, %bb.x ] ; 3 uses
  %i.bo = phi ptr [ @loadable_ext, %.thread ], [ %spec.select, %bb.x ]
  %i.bp = call i32 @rb_find_file_ext(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bo) #7 ; 4 uses
  %i.bq = icmp eq i32 %.087126, 0                 ; 3 uses
  %i.br = icmp ne i32 %i.bp, 1
  %or.cond8 = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond8, label %bb.z, label %.critedge111
end_hunk_0
begin_hunk_1_@search_required:bb.a
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !21
  br label %RSTRING_PTR.exit119

RSTRING_PTR.exit119:                              ; preds = %bb.ac, %bb.ad
  %i.ce = phi ptr [ %i.cd, %bb.ad ], [ %i.cc, %bb.ac ] ; 2 uses
  %i.cf = load ptr, ptr %i.bt, align 8, !tbaa !102
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = call i32 @rb_st_lookup(ptr noundef %i.cf, i64 noundef %i.cg, ptr noundef null) #7
  %.not105 = icmp eq i32 %i.ch, 0
  br i1 %.not105, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %RSTRING_PTR.exit119
  %i.ci = call i64 @rb_filesystem_str_new_cstr(ptr noundef %i.ce) #7
  store volatile i64 %i.ci, ptr %2, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr %i.c, ptr %i.d, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #7, !srcloc !103
  %i.cj = load ptr, ptr %i.d, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  %i.ck = load volatile i64, ptr %i.cj, align 8, !tbaa !20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.ap

.critedge:                                        ; preds = %RSTRING_PTR.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.critedge111

.critedge111:                                     ; preds = %bb.z, %.critedge, %bb.y
  switch i32 %i.bp, label %bb.ai [
    i32 0, label %bb.af
    i32 1, label %bb.aj
  ]

bb.af:                                            ; preds = %.critedge111
  br i1 %i.bq, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.cl = load i64, ptr %i.a, align 8, !tbaa !20
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !22
  %i.co = and i64 %i.cn, 8192
  %.not.i120 = icmp eq i64 %i.co, 0
  %i.cp = getelementptr i8, ptr %i.cm, i64 24     ; 2 uses
  br i1 %.not.i120, label %RSTRING_PTR.exit121, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !21
  br label %RSTRING_PTR.exit121

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
  %.0.14.val = load ptr, ptr %i.j, align 8, !tbaa !52 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.14.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %.0.14.val, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !53
  %i.ac = getelementptr i8, ptr %.0.14.val, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !72
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.b, %bb.a
  %.0.i2.i = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.ad, %bb.b ], [ null, %bb.a ]
  %i.ae = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.af = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.af, label %bb.c, label %rb_ec_vm_lock_rec.exit

bb.c:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.ag = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.c
  %.0.i = phi i32 [ %i.ah, %bb.c ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 68
  store i32 %.0.i, ptr %i.ai, align 4, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i64 4, ptr %i.p, align 8, !tbaa !36
  store i64 0, ptr %i.l, align 8, !tbaa !105
  %i.ak = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ak, ptr %i.aj, align 8
  %i.al = tail call ptr @llvm.stacksave.p0()
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.al, ptr %i.am, align 8
  %i.an = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.aj)
  %.not = icmp eq i32 %i.an, 0                    ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d, !prof !93

bb.d:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.15 = load volatile ptr, ptr %i.h, align 8, !tbaa !30
  %i.ao = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.15)
  %.0..0..0..0.17.pre = load ptr, ptr %i.h, align 8, !tbaa !30
  br label %bb.ab

bb.e:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %4, ptr %i.x, align 8, !tbaa !50
  %i.ap = call fastcc i32 @search_required(ptr noundef nonnull %i.k, i64 noundef %i.v, ptr noundef %i.e, ptr noundef nonnull @rb_feature_p) ; 3 uses
  %i.aq = load volatile i64, ptr %i.e, align 8, !tbaa !20 ; 11 uses
  %.not83 = icmp eq i32 %i.ap, 0
  br i1 %.not83, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not84 = icmp eq i64 %i.aq, 0
  br i1 %.not84, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !22
  %i.at = and i64 %i.as, 8192
  %.not.i = icmp eq i64 %i.at, 0
  %i.au = getelementptr i8, ptr %i.ar, i64 24     ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !21
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.g, %bb.h
  %i.aw = phi ptr [ %i.av, %bb.h ], [ %i.au, %bb.g ] ; 5 uses
  %i.ax = getelementptr i8, ptr %i.k, i64 96
  %.val93 = load ptr, ptr %i.ax, align 8, !tbaa !116 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = call i32 @rb_st_lookup(ptr noundef %.val93, i64 noundef %i.ay, ptr noundef nonnull %i.a) #7
  %.not.i95 = icmp eq i32 %i.az, 0
  br i1 %.not.i95, label %load_lock.exit.thread107, label %bb.i

load_lock.exit.thread107:                         ; preds = %RSTRING_PTR.exit
  %i.ba = call noalias nonnull ptr @ruby_strdup(ptr noundef %i.aw) #7 ; 2 uses
  %i.bb = call i64 @rb_thread_shield_new() #7     ; 2 uses
  store i64 %i.bb, ptr %i.a, align 8, !tbaa !20
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = call i32 @rb_st_insert(ptr noundef %.val93, i64 noundef %i.bc, i64 noundef %i.bb) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  store volatile ptr %i.ba, ptr %i.d, align 8, !tbaa !99
  br label %bb.n

bb.i:                                             ; preds = %RSTRING_PTR.exit
  br i1 %3, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.be = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bf = call zeroext i1 @rb_thread_shield_owned(i64 noundef %i.be) #7
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bg = call i64 (ptr, ...) @rb_warning_string(ptr noundef nonnull @.str.21, ptr noundef %i.aw) #7 ; 2 uses
  call void @rb_backtrace_each(ptr noundef nonnull @rb_str_append, i64 noundef %i.bg) #7
  call void (ptr, ...) @rb_warning(ptr noundef nonnull @.str.22, i64 noundef %i.bg) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bi = call i64 @rb_thread_shield_wait(i64 noundef %i.bh) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  switch i64 %i.bi, label %load_lock.exit [
    i64 0, label %load_lock.exit.thread
    i64 4, label %load_lock.exit.thread
  ]

load_lock.exit.thread:                            ; preds = %bb.l, %bb.l
  store volatile ptr null, ptr %i.d, align 8, !tbaa !99
  br label %bb.m

load_lock.exit:                                   ; preds = %bb.l
  store volatile ptr %i.aw, ptr %i.d, align 8, !tbaa !99
  %.not85 = icmp eq ptr %i.aw, null
  br i1 %.not85, label %bb.m, label %bb.n

bb.m:                                             ; preds = %load_lock.exit.thread, %load_lock.exit, %bb.f
  store volatile i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.ab

bb.n:                                             ; preds = %load_lock.exit.thread107, %load_lock.exit
  %.0..0..0..0.36 = load volatile ptr, ptr %i.d, align 8, !tbaa !99
  %i.bj = load i8, ptr %.0..0..0..0.36, align 1, !tbaa !21
  %.not86 = icmp eq i8 %i.bj, 0
  br i1 %.not86, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  %i.bk = icmp eq i32 %i.ap, 115
  br i1 %i.bk, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bl = getelementptr i8, ptr %.val, i64 32
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !53
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = call i64 @rb_vm_call_cfunc_in_box(i64 noundef 4, ptr noundef nonnull @run_static_ext_init, i64 noundef %i.bn, i64 noundef %i.aq, i64 noundef %i.aq, ptr noundef nonnull %i.k) #7
  %i.bp = and i64 %i.bo, -5
  %.not110 = icmp eq i64 %i.bp, 0
  br i1 %.not110, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.ab

bb.s:                                             ; preds = %bb.q, %bb.p
  %i.bq = call i64 @rb_hash_aref(i64 noundef %i.u, i64 noundef %i.aq) #7 ; 2 uses
  %i.br = and i64 %i.bq, -5
  %.not.i97 = icmp eq i64 %i.br, 0
  br i1 %.not.i97, label %bb.t, label %realpath_internal_cached.exit

bb.t:                                             ; preds = %bb.s
  %i.bs = call i64 @rb_realpath_internal(i64 noundef 4, i64 noundef %i.aq, i32 noundef 1) #7 ; 2 uses
  %i.bt = call i64 @rb_fstring(i64 noundef %i.aq) #7
  %i.bu = call i64 @rb_fstring(i64 noundef %i.bs) #7
  %i.bv = call i64 @rb_hash_aset(i64 noundef %i.u, i64 noundef %i.bt, i64 noundef %i.bu) #7 ; 0 uses
  br label %realpath_internal_cached.exit

realpath_internal_cached.exit:                    ; preds = %bb.s, %bb.t
  %.0.i98 = phi i64 [ %i.bs, %bb.t ], [ %i.bq, %bb.s ] ; 2 uses
  store volatile i64 %.0.i98, ptr %i.f, align 8, !tbaa !20
  %i.bw = call i64 @rb_hash_aref(i64 noundef %i.s, i64 noundef %.0.i98) #7
  %i.bx = and i64 %i.bw, -5
  %.not111 = icmp eq i64 %i.bx, 0
  br i1 %.not111, label %bb.v, label %bb.u

bb.u:                                             ; preds = %realpath_internal_cached.exit
  store volatile i32 0, ptr %i.c, align 4, !tbaa !7
  br label %bb.ab

bb.v:                                             ; preds = %realpath_internal_cached.exit
  switch i32 %i.ap, label %bb.aa [
    i32 114, label %bb.w
    i32 115, label %bb.x
  ]

bb.w:                                             ; preds = %bb.v
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24. = load volatile ptr, ptr %.sroa.8, align 8, !tbaa !111
  call fastcc void @load_iseq_eval(ptr noundef %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24., i64 noundef %i.aq)
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  store volatile i8 1, ptr %i.g, align 1, !tbaa !115
  %i.by = getelementptr i8, ptr %.val, i64 464    ; 2 uses
  %.sroa.0103.0.copyload = load volatile i8, ptr %i.by, align 8, !tbaa !115
  store volatile i8 %.sroa.0103.0.copyload, ptr %.sroa.0103, align 1, !tbaa !115
  store i8 0, ptr %i.by, align 8, !tbaa !115
  %i.bz = getelementptr i8, ptr %i.k, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !117
  %i.cb = call i64 @rb_vm_call_cfunc_in_box(i64 noundef %i.ca, ptr noundef nonnull @load_ext, i64 noundef %i.aq, i64 noundef %1, i64 noundef %i.aq, ptr noundef nonnull %i.k) #7 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.k, i64 104
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !118
  %i.ce = add i64 %i.cb, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.ce, -1
  br i1 %or.cond.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cf = shl nsw i64 %i.cb, 1
  %i.cg = or disjoint i64 %i.cf, 1
  br label %rb_long2num_inline.exit

bb.z:                                             ; preds = %bb.x
  %i.ch = call i64 @rb_int2big(i64 noundef %i.cb) #7
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.y, %bb.z
  %.0.i99 = phi i64 [ %i.cg, %bb.y ], [ %i.ch, %bb.z ]
  %i.ci = call i64 @rb_hash_aset(i64 noundef %i.cd, i64 noundef %i.aq, i64 noundef %.0.i99) #7 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %rb_long2num_inline.exit, %bb.w, %bb.v
  store volatile i32 1, ptr %i.c, align 4, !tbaa !7
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %bb.e, %bb.o, %bb.u, %bb.aa, %bb.r, %bb.m
  %.0..0..0.17 = phi ptr [ %0, %bb.e ], [ %0, %bb.o ], [ %0, %bb.u ], [ %0, %bb.aa ], [ %0, %bb.r ], [ %0, %bb.m ], [ %.0..0..0..0.17.pre, %bb.d ]
  %i.cj = phi i32 [ 0, %bb.e ], [ 0, %bb.o ], [ 0, %bb.u ], [ 0, %bb.aa ], [ 0, %bb.r ], [ 0, %bb.m ], [ %i.ao, %bb.d ] ; 5 uses
  %i.ck = load ptr, ptr %i.z, align 8, !tbaa !51
  %i.cl = getelementptr i8, ptr %.0..0..0.17, i64 24
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24.46 = load volatile ptr, ptr %.sroa.8, align 8, !tbaa !111 ; 4 uses
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.32. = load volatile ptr, ptr %.sroa.11, align 8, !tbaa !112 ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24.46, i64 48
  %.sroa.8.0..sroa.8.24.46.val = load ptr, ptr %i.cm, align 8, !tbaa !52 ; 3 uses
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8. = load volatile i64, ptr %.sroa.4, align 8, !tbaa !109
  %i.cn = getelementptr i8, ptr %.sroa.8.0..sroa.8.24.46.val, i64 232
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.8., ptr %i.cn, align 8, !tbaa !108
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load volatile i64, ptr %.sroa.0, align 8, !tbaa !106
  %i.co = getelementptr i8, ptr %.sroa.8.0..sroa.8.24.46.val, i64 240
  store i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., ptr %i.co, align 8, !tbaa !105
  %.0..0..0..0.18 = load volatile i8, ptr %i.g, align 1, !tbaa !115, !range !33, !noundef !34
  %i.cp = trunc nuw i8 %.0..0..0..0.18 to i1
  br i1 %i.cp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cq = getelementptr i8, ptr %.sroa.8.0..sroa.8.24.46.val, i64 464
  %.sroa.0103.0..sroa.0103.0..sroa.0103.0..sroa.0103.0.copyload104 = load volatile i8, ptr %.sroa.0103, align 1, !tbaa !115
  store volatile i8 %.sroa.0103.0..sroa.0103.0..sroa.0103.0..sroa.0103.0.copyload104, ptr %i.cq, align 8, !tbaa !115
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cr = load volatile i64, ptr %i.e, align 8, !tbaa !20 ; 2 uses
  %.0..0..0..0.37 = load volatile ptr, ptr %i.d, align 8, !tbaa !99
  %.not87 = icmp eq ptr %.0..0..0..0.37, null
  br i1 %.not87, label %load_unlock.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = inttoptr i64 %i.cr to ptr               ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !22
  %i.cu = and i64 %i.ct, 8192
  %.not.i100 = icmp eq i64 %i.cu, 0
  %i.cv = getelementptr i8, ptr %i.cs, i64 24     ; 2 uses
  br i1 %.not.i100, label %RSTRING_PTR.exit101, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !21
  br label %RSTRING_PTR.exit101

RSTRING_PTR.exit101:                              ; preds = %bb.ae, %bb.af
  %i.cx = phi ptr [ %i.cw, %bb.af ], [ %i.cv, %bb.ae ] ; 2 uses
  %.not.i102 = icmp eq ptr %i.cx, null
  br i1 %.not.i102, label %load_unlock.exit, label %bb.ag

bb.ag:                                            ; preds = %RSTRING_PTR.exit101
  %i.cy = ptrtoint ptr %i.cx to i64
  %i.cz = getelementptr i8, ptr %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.32., i64 96
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !116
  %i.db = zext i1 %.not to i64
  %i.dc = call i32 @rb_st_update(ptr noundef %i.da, i64 noundef %i.cy, ptr noundef nonnull @release_thread_shield, i64 noundef %i.db) #7 ; 0 uses
  br label %load_unlock.exit

load_unlock.exit:                                 ; preds = %bb.ag, %RSTRING_PTR.exit101, %bb.ad
  br i1 %.not, label %bb.ao, label %bb.ah

bb.ah:                                            ; preds = %load_unlock.exit
  %i.dd = icmp samesign ugt i32 %i.cj, 6
  br i1 %i.dd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.de = getelementptr i8, ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24.46, i64 24
  %.sroa.8.0..sroa.8.24.46.val94 = load ptr, ptr %i.de, align 8, !tbaa !50 ; 2 uses
  %i.df = getelementptr i8, ptr %.sroa.8.0..sroa.8.24.46.val94, i64 64
  store i32 %i.cj, ptr %i.df, align 8, !tbaa !47
  %i.dg = getelementptr i8, ptr %.sroa.8.0..sroa.8.24.46.val94, i64 16
  call void @llvm.eh.sjlj.longjmp(ptr %i.dg)
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %.not92 = icmp eq i32 %2, 0
  br i1 %.not92, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dh = call i64 @rb_vm_make_jump_tag_but_local_jump(i32 noundef %i.cj, i64 noundef 36) #7 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 4
  br i1 %i.di, label %bb.av, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = getelementptr i8, ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24.46, i64 128
  store i64 %i.dh, ptr %i.dj, align 8, !tbaa !36
  br label %bb.av

bb.am:                                            ; preds = %bb.aj
  %i.dk = icmp eq i32 %i.cj, 1
  br i1 %i.dk, label %bb.av, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store ptr %i.b, ptr %i.i, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.i) #7, !srcloc !119
  %i.dl = load ptr, ptr %i.i, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  %i.dm = load volatile i64, ptr %i.dl, align 8, !tbaa !20 ; 0 uses
  br label %bb.av

bb.ao:                                            ; preds = %load_unlock.exit
  %i.dn = getelementptr i8, ptr %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.24.46, i64 128 ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !36 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4
  br i1 %i.dp, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not90 = icmp eq i32 %2, 0
  br i1 %.not90, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @rb_exc_raise(i64 noundef %i.do) #20
  unreachable

bb.ar:                                            ; preds = %bb.ao
  %.0..0..0..0.63 = load volatile i32, ptr %i.c, align 4, !tbaa !7
  %i.dq = icmp eq i32 %.0..0..0..0.63, 1
  br i1 %i.dq, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  call fastcc void @rb_provide_feature(ptr noundef %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.32., i64 noundef %i.cr)
  %.0..0..0..0.22 = load volatile i64, ptr %i.f, align 8, !tbaa !20 ; 2 uses
  %.not91 = icmp eq i64 %.0..0..0..0.22, 0
  br i1 %.not91, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dr = call i64 @rb_fstring(i64 noundef %.0..0..0..0.22) #7
  %i.ds = call i64 @rb_hash_aset(i64 noundef %i.s, i64 noundef %i.dr, i64 noundef 20) #7 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.16. = load volatile i64, ptr %.sroa.6, align 8, !tbaa !110
  store i64 %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.16., ptr %i.dn, align 8, !tbaa !36
  %.0..0..0..0.64 = load volatile i32, ptr %i.c, align 4, !tbaa !7
  br label %bb.av

bb.av:                                            ; preds = %bb.ap, %bb.am, %bb.ak, %bb.al, %bb.au, %bb.an
  %.0 = phi i32 [ 6, %bb.am ], [ 6, %bb.ak ], [ %i.cj, %bb.an ], [ %.0..0..0..0.64, %bb.au ], [ 6, %bb.al ], [ 6, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0103)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_require_internal(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = tail call ptr @rb_ruby_verbose_ptr() #7
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, -5
  %i.g = icmp ne i64 %i.f, 0
  %i.h = tail call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %0, i32 noundef 1, i1 noundef zeroext %i.g)
  ret i32 %i.h
}

declare ptr @rb_ruby_verbose_ptr() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 2) i32 @ruby_require_internal(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.RString, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.b = zext i32 %1 to i64
  %i.c = call i64 @rb_setup_fake_str(ptr noundef nonnull %2, ptr noundef %0, i64 noundef %i.b, ptr noundef null) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !30
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = call ptr @rb_ruby_verbose_ptr() #7
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  %i.h = and i64 %i.g, -5
  %i.i = icmp ne i64 %i.h, 0
  %i.j = call fastcc i32 @require_internal(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %i.c, i32 noundef 0, i1 noundef zeroext %i.i) ; 2 uses
  call void @rb_set_errinfo(i64 noundef 4) #7
  %i.k = icmp eq i32 %i.j, 1
  %.not = icmp ne i32 %i.j, 0
  %i.l = sext i1 %.not to i32
  %i.m = select i1 %i.k, i32 1, i32 %i.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %i.m
}
end_hunk_1
begin_hunk_2_@features_index_add_single_callback:bb.a
  %i.bx = getelementptr i8, ptr %i.bw, i64 -3
  %i.by = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(4) @.str.17) #22
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %rb_darray_size.exit.us80, label %rb_darray_size.exit.i

rb_darray_size.exit.us80:                         ; preds = %is_rbext_path.exit51.us79
  %i.ca = add nuw i64 %.0427274.us, 1             ; 2 uses
  %exitcond98.not = icmp eq i64 %i.ca, %i.av
  br i1 %exitcond98.not, label %.critedge, label %RARRAY_AREF.exit47.us75

RARRAY_AREF.exit47:                               ; preds = %.lr.ph, %rb_darray_size.exit
  %.0427274 = phi i64 [ %i.cy, %rb_darray_size.exit ], [ 0, %.lr.ph ] ; 4 uses
  %i.cb = getelementptr [8 x i8], ptr %i.aw, i64 %.0427274
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !20
  %i.cd = getelementptr [8 x i8], ptr %i.ay, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !20 ; 5 uses
  %i.cf = icmp eq i64 %i.ce, 0
  %i.cg = and i64 %i.ce, 7
  %i.ch = icmp ne i64 %i.cg, 0
  %i.ci = or i1 %i.cf, %i.ch
  br i1 %i.ci, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.n, !prof !145

bb.n:                                             ; preds = %RARRAY_AREF.exit47
  %i.cj = inttoptr i64 %i.ce to ptr               ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !22 ; 2 uses
  %i.cl = and i64 %i.ck, 31
  %i.cm = icmp eq i64 %i.cl, 5
  br i1 %i.cm, label %Check_Type.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, !prof !138

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.n, %RARRAY_AREF.exit47, %bb.k, %RARRAY_AREF.exit47.us75
  %.us-phi82 = phi i64 [ %i.bg, %bb.k ], [ %i.bg, %RARRAY_AREF.exit47.us75 ], [ %i.ce, %RARRAY_AREF.exit47 ], [ %i.ce, %bb.n ]
  tail call void @rb_unexpected_type(i64 noundef %.us-phi82, i32 noundef 5) #24
  unreachable

Check_Type.exit:                                  ; preds = %bb.n
  %i.cn = getelementptr i8, ptr %i.cj, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !122 ; 2 uses
  %i.cp = icmp slt i64 %i.co, 4
  br i1 %i.cp, label %rb_darray_size.exit.i, label %bb.o

bb.o:                                             ; preds = %Check_Type.exit
  %i.cq = and i64 %i.ck, 8192
  %.not.i.i48 = icmp eq i64 %i.cq, 0
  %i.cr = getelementptr i8, ptr %i.cj, i64 24     ; 2 uses
  br i1 %.not.i.i48, label %is_rbext_path.exit51, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !21
  br label %is_rbext_path.exit51

is_rbext_path.exit51:                             ; preds = %bb.o, %bb.p
  %i.ct = phi ptr [ %i.cs, %bb.p ], [ %i.cr, %bb.o ]
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
  %.0.1.val = load ptr, ptr %i.d, align 8, !tbaa !52 ; 3 uses
  %.not.i.i = icmp eq ptr %.0.1.val, null
  br i1 %.not.i.i, label %rb_ec_ractor_ptr.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %.0.1.val, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !53
  %i.z = getelementptr i8, ptr %.0.1.val, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !72
  br label %rb_ec_ractor_ptr.exit.i

rb_ec_ractor_ptr.exit.i:                          ; preds = %bb.f, %bb.e
  %.0.i2.i = phi ptr [ %i.y, %bb.f ], [ null, %bb.e ] ; 2 uses
  %.0.i7.i = phi ptr [ %i.aa, %bb.f ], [ null, %bb.e ]
  %i.ab = getelementptr i8, ptr %.0.i2.i, i64 88
  %.val5.i = load ptr, ptr %i.ab, align 8, !tbaa !73
  %i.ac = icmp eq ptr %.val5.i, %.0.i7.i
  br i1 %i.ac, label %bb.g, label %rb_ec_vm_lock_rec.exit

bb.g:                                             ; preds = %rb_ec_ractor_ptr.exit.i
  %i.ad = getelementptr i8, ptr %.0.i2.i, i64 96
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !91
  br label %rb_ec_vm_lock_rec.exit

rb_ec_vm_lock_rec.exit:                           ; preds = %rb_ec_ractor_ptr.exit.i, %bb.g
  %.0.i = phi i32 [ %i.ae, %bb.g ], [ 0, %rb_ec_ractor_ptr.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 68
  store i32 %.0.i, ptr %i.af, align 4, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = tail call ptr @llvm.frameaddress.p0(i32 0)
  store ptr %i.ah, ptr %i.ag, align 8
  %i.ai = tail call ptr @llvm.stacksave.p0()
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = call i32 @llvm.eh.sjlj.setjmp(ptr nonnull %i.ag)
  %.not28 = icmp eq i32 %i.ak, 0
  br i1 %.not28, label %bb.i, label %bb.h, !prof !93

bb.h:                                             ; preds = %rb_ec_vm_lock_rec.exit
  %.0..0..0..0.2 = load volatile ptr, ptr %i.c, align 8, !tbaa !30
  %i.al = call fastcc i32 @rb_ec_tag_state(ptr noundef %.0..0..0..0.2)
  %.0..0..0..0.4.pre = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %rb_ec_vm_lock_rec.exit
  store ptr %3, ptr %i.u, align 8, !tbaa !50
  call fastcc void @load_iseq_eval(ptr noundef nonnull %0, i64 noundef %1)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.0..0..0.4 = phi ptr [ %0, %bb.i ], [ %.0..0..0..0.4.pre, %bb.h ]
  %i.am = phi i32 [ 0, %bb.i ], [ %i.al, %bb.h ]
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !51
  %4 = getelementptr i8, ptr %.0..0..0.4, i64 24
  store ptr %i.an, ptr %4, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.0..0..0..0.5 = load volatile i64, ptr %i.b, align 8, !tbaa !20
  store i64 %.0..0..0..0.5, ptr %i.g, align 8, !tbaa !108
  %.0..0..0..0.6 = load volatile i64, ptr %i.a, align 8, !tbaa !20
  store i64 %.0..0..0..0.6, ptr %i.e, align 8, !tbaa !105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.am
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
  br label %rb_exec_event_hook_script_compiled.exit

rb_exec_event_hook_script_compiled.exit:          ; preds = %bb.l, %bb.m
  %i.bl = call i64 @rb_iseq_eval(ptr noundef %.1, ptr noundef %i.f) #7 ; 0 uses
  ret void
}

declare i64 @rb_obj_class(i64 noundef) local_unnamed_addr #1

declare ptr @rb_get_box_t(i64 noundef) local_unnamed_addr #1

declare i64 @rb_obj_clone(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_vm_top_self() local_unnamed_addr #10

declare void @rb_extend_object(i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @rb_iseq_load_iseq(i64 noundef) local_unnamed_addr #1

declare i64 @rb_vm_push_frame_fname(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @rb_ruby_default_parser() local_unnamed_addr #1

declare i64 @pm_load_parse_file(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @pm_iseq_new_top(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @pm_parse_result_free(ptr noundef) local_unnamed_addr #1
end_hunk_2
