inline.NumInlined: 217
inline.NumDeleted: 89
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@nogvl_dir_empty_p:bb.a
to_be_skipped.exit:                               ; preds = %bb.h
  %i.aa = getelementptr i8, ptr %i.v, i64 21
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !20
  %.not8.i.not = icmp eq i8 %i.ab, 0
  br i1 %.not8.i.not, label %.critedge.backedge, label %nogvl_readdir.exit.thread

.critedge.backedge:                               ; preds = %to_be_skipped.exit, %bb.h
  call void @rb_errno_set(i32 noundef 0) #20
  %i.ac = call ptr @readdir(ptr noundef nonnull %.2) #20 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.critedge._crit_edge, label %nogvl_readdir.exit, !llvm.loop !171

nogvl_readdir.exit.thread:                        ; preds = %bb.h, %nogvl_readdir.exit, %to_be_skipped.exit, %bb.g, %.critedge._crit_edge
  %.015 = phi i64 [ 20, %bb.g ], [ 20, %.critedge._crit_edge ], [ 0, %to_be_skipped.exit ], [ 0, %nogvl_readdir.exit ], [ 0, %bb.h ]
  %i.ae = call i32 @closedir(ptr noundef nonnull %.2)
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %check_closedir.exit

bb.i:                                             ; preds = %nogvl_readdir.exit.thread
  %i.ag = call ptr @rb_errno_ptr() #20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !7
  call void @rb_syserr_fail(i32 noundef %i.ah, ptr noundef nonnull @.str.50) #24
  unreachable

check_closedir.exit:                              ; preds = %nogvl_readdir.exit.thread
  %i.ai = inttoptr i64 %.015 to ptr
  br label %.thread

.thread:                                          ; preds = %bb.e, %gc_for_fd_with_gvl.exit.thread, %check_closedir.exit
  %.1 = phi ptr [ %i.ai, %check_closedir.exit ], [ %i.q, %bb.e ], [ null, %gc_for_fd_with_gvl.exit.thread ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 0, 2) i32 @fnmatch_brace(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = tail call ptr @rb_enc_get(i64 noundef %i.d) #20 ; 3 uses
  %.not = icmp eq ptr %2, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %2, i64 20
  %.val.i = load i32, ptr %i.f, align 4, !tbaa !172
  %.not.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i, label %rb_enc_asciicompat.exit, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit:                          ; preds = %bb.b
  %i.g = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %2) #21
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %bb.c, label %rb_enc_asciicompat.exit.thread

bb.c:                                             ; preds = %rb_enc_asciicompat.exit
  %i.h = getelementptr i8, ptr %i.e, i64 20
  %.val.i25 = load i32, ptr %i.h, align 4, !tbaa !172
  %.not.i26 = icmp eq i32 %.val.i25, 1
  br i1 %.not.i26, label %rb_enc_asciicompat.exit29, label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit29:                        ; preds = %bb.c
  %i.i = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.e) #21
  %.not3.i28 = icmp eq i32 %i.i, 0
  br i1 %.not3.i28, label %bb.d, label %rb_enc_asciicompat.exit.thread

bb.d:                                             ; preds = %rb_enc_asciicompat.exit29
  %i.j = tail call i32 @rb_enc_str_asciionly_p(i64 noundef %i.d) #20
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 1048576, ptr %i.a, align 4, !tbaa !7
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21 ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 %i.k
  %i.m = call i64 @rb_str_coderange_scan_restartable(ptr noundef nonnull %0, ptr noundef %i.l, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #20
  %.not23 = icmp eq i64 %i.m, %i.k
  %i.n = load i32, ptr %i.a, align 4
  %.not24 = icmp eq i32 %i.n, 1048576
  %cond = select i1 %.not23, i1 %.not24, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br i1 %cond, label %bb.f, label %rb_enc_asciicompat.exit.thread

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %i.o = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !59
  %i.q = and i64 %i.p, 8192
  %.not.i30 = icmp eq i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.o, i64 24       ; 2 uses
  br i1 %.not.i30, label %RSTRING_PTR.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.f, %bb.g
  %i.t = phi ptr [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !44
  %i.w = call fastcc i32 @fnmatch(ptr noundef %0, ptr noundef %2, ptr noundef %i.t, i32 noundef %i.v)
  %i.x = xor i32 %i.w, 1
  br label %rb_enc_asciicompat.exit.thread

rb_enc_asciicompat.exit.thread:                   ; preds = %bb.c, %bb.b, %rb_enc_asciicompat.exit29, %rb_enc_asciicompat.exit, %bb.e, %RSTRING_PTR.exit
  %.1 = phi i32 [ %i.x, %RSTRING_PTR.exit ], [ 1, %bb.e ], [ 1, %rb_enc_asciicompat.exit ], [ 1, %rb_enc_asciicompat.exit29 ], [ 1, %bb.b ], [ 1, %bb.c ]
  ret i32 %.1
}

declare ptr @rb_enc_compatible(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @rb_enc_str_asciionly_p(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_coderange_scan_restartable(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @rb_enc_dummy_p(ptr noundef) local_unnamed_addr #3

declare ptr @rb_to_encoding(i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noalias noundef ptr @nogvl_opendir(ptr nofree noundef readonly captures(none) %0) #16 {
bb.a:
  %i.a = tail call noalias ptr @opendir(ptr noundef %0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef i64 @rb_push_glob(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, -8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 5
  br i1 %i.j, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.k = tail call i64 @rb_get_path(i64 noundef %0) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr %i.a, ptr %i.b, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #20, !srcloc !174
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  store volatile i64 %i.k, ptr %i.l, align 8, !tbaa !11
  br label %bb.e

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.m = tail call ptr @rb_str_to_cstr(i64 noundef %0) #20
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.70) #24
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.o = tail call nonnull ptr @rb_usascii_encoding() #20
  %i.p = tail call i64 @rb_enc_from_encoding(ptr noundef nonnull %i.o) #20
  %i.q = tail call ptr @rb_enc_check(i64 noundef %0, i64 noundef %i.p) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.r = call i64 @rb_ary_new() #20               ; 2 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !11
  %i.t = call fastcc i32 @push_glob(i64 noundef %i.r, i64 noundef %i.s, i64 noundef %1, i32 noundef %2) ; 2 uses
  switch i32 %i.t, label %bb.g [
    i32 0, label %bb.h
    i32 -1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  call void @rb_memerror() #22
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @rb_jump_tag(i32 noundef %i.t) #24
  unreachable

bb.h:                                             ; preds = %bb.e
  ret i64 %i.r
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @dir_globs(i64 noundef %0, i64 noundef %1, i32 noundef range(i32 0, -8) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !11
  %i.e = tail call i64 @rb_ary_new() #20          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %i.f = phi i64 [ %0, %bb.a ], [ %.pre, %bb.g ]
  %.0 = phi i64 [ 0, %bb.a ], [ %i.u, %bb.g ]     ; 3 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 5 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %6, label %3

3:                                                ; preds = %bb.b
  %4 = lshr i64 %i.h, 15
  %5 = and i64 %4, 127
  br label %rb_array_len.exit

6:                                                ; preds = %bb.b
  %7 = getelementptr i8, ptr %i.g, i64 16
  %8 = load i64, ptr %7, align 8, !tbaa !20
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %3, %6
  %.0.i = phi i64 [ %5, %3 ], [ %8, %6 ]
  %i.j = icmp slt i64 %.0, %.0.i
  br i1 %i.j, label %rb_array_len.exit.thread, label %bb.h

rb_array_len.exit.thread:                         ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %9 = load i64, ptr %i.g, align 8, !tbaa !59
  %i.k = and i64 %9, 8192
  %.not.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %rb_array_len.exit.thread
  %i.l = getelementptr i8, ptr %i.g, i64 16
  br label %RARRAY_AREF.exit

bb.d:                                             ; preds = %rb_array_len.exit.thread
  %i.m = getelementptr i8, ptr %i.g, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %i.o = getelementptr [8 x i8], ptr %.0.i.i, i64 %.0
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !11
  %i.q = call i64 @rb_get_path(i64 noundef %i.p) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store ptr %i.b, ptr %i.c, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #20, !srcloc !175
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  store volatile i64 %i.q, ptr %i.r, align 8, !tbaa !11
  %i.s = load i64, ptr %i.b, align 8, !tbaa !11
  %i.t = call fastcc i32 @push_glob(i64 noundef %i.e, i64 noundef %i.s, i64 noundef %1, i32 noundef %2) ; 2 uses
  switch i32 %i.t, label %bb.f [
    i32 0, label %bb.g
    i32 -1, label %bb.e
  ]

bb.e:                                             ; preds = %RARRAY_AREF.exit
  call void @rb_memerror() #22
  unreachable

bb.f:                                             ; preds = %RARRAY_AREF.exit
  call void @rb_jump_tag(i32 noundef %i.t) #24
  unreachable

bb.g:                                             ; preds = %RARRAY_AREF.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.u = add nuw nsw i64 %.0, 1
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
  br label %bb.b, !llvm.loop !176

bb.h:                                             ; preds = %rb_array_len.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store ptr %i.a, ptr %i.d, align 8, !tbaa !47
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #20, !srcloc !177
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.w = load volatile i64, ptr %i.v, align 8, !tbaa !11 ; 0 uses
  ret i64 %i.e
}

declare i32 @rb_bool_expected(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @rb_typeddata_is_kind_of(i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @rb_str_to_cstr(i64 noundef) local_unnamed_addr #2

declare ptr @rb_enc_check(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_enc_from_encoding(ptr noundef) local_unnamed_addr #2

declare nonnull ptr @rb_usascii_encoding() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @push_glob(i64 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef range(i32 0, -8) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.glob_args, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = tail call ptr @rb_enc_get(i64 noundef %1) #20 ; 2 uses
  %i.b = tail call i32 @rb_enc_to_index(ptr noundef %i.a) #21
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @rb_filesystem_encoding() #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.020 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = tail call i32 @rb_enc_to_index(ptr noundef %.020) #21
  %i.f = icmp eq i32 %i.e, 2
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call nonnull ptr @rb_ascii8bit_encoding() #20
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi ptr [ %i.g, %bb.d ], [ %.020, %bb.c ] ; 2 uses
  store ptr @push_pattern, ptr %4, align 8, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %0, ptr %i.h, align 8, !tbaa !38
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %.1, ptr %i.i, align 8, !tbaa !39
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !178
  %i.k = icmp eq i64 %2, 4
  br i1 %i.k, label %bb.o, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i64 %2, 0
  %i.m = and i64 %2, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = or i1 %i.l, %i.n
  %.pre29 = inttoptr i64 %2 to ptr                ; 4 uses
  br i1 %i.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.f
  %i.p = load i64, ptr %.pre29, align 8, !tbaa !59
  %i.q = and i64 %i.p, 31
  %i.r = icmp eq i64 %i.q, 5
  br i1 %i.r, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.s = tail call ptr @rb_enc_check(i64 noundef %1, i64 noundef %2) #20
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.m

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.f, %bb.g, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.t = getelementptr i8, ptr %.pre29, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = trunc i64 %i.u to i1
  %i.w = getelementptr i8, ptr %.pre29, i64 32    ; 2 uses
  br i1 %i.v, label %RTYPEDDATA_GET_DATA.exit, label %bb.h

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !52
  br label %RTYPEDDATA_GET_DATA.exit

RTYPEDDATA_GET_DATA.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.h
  %i.y = phi ptr [ %i.x, %bb.h ], [ %i.w, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53   ; 2 uses
  %.not25 = icmp eq ptr %i.z, null
  br i1 %.not25, label %bb.i, label %bb.j

bb.i:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  tail call fastcc void @dir_closed() #25
  unreachable

bb.j:                                             ; preds = %RTYPEDDATA_GET_DATA.exit
  %i.aa = tail call i32 @dirfd(ptr noundef nonnull %i.z) #20 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @rb_errno_ptr() #20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !7
  %i.ae = tail call i64 @dir_inspect(i64 noundef %2)
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.push_glob, i32 noundef %i.ad, i64 noundef %i.ae) #24
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr i8, ptr %i.y, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !70
  %.pre = inttoptr i64 %i.ag to ptr
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.pre-phi = phi ptr [ %.pre, %bb.l ], [ %.pre29, %bb.g ] ; 2 uses
  %.021 = phi i32 [ %i.aa, %bb.l ], [ -100, %bb.g ]
  %i.ah = load i64, ptr %.pre-phi, align 8, !tbaa !59
  %i.ai = and i64 %i.ah, 8192
  %.not.i = icmp eq i64 %i.ai, 0
  %i.aj = getelementptr i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.m, %bb.n
  %i.al = phi ptr [ %i.ak, %bb.n ], [ %i.aj, %bb.m ] ; 2 uses
  store ptr %i.al, ptr %i.j, align 8, !tbaa !178
  br label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit, %bb.e
  %i.am = phi ptr [ null, %bb.e ], [ %i.al, %RSTRING_PTR.exit ]
  %.122 = phi i32 [ -100, %bb.e ], [ %.021, %RSTRING_PTR.exit ]
  %i.an = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !59
  %i.ap = and i64 %i.ao, 8192
  %.not.i26 = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr i8, ptr %i.an, i64 24     ; 2 uses
  br i1 %.not.i26, label %RSTRING_PTR.exit27, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %RSTRING_PTR.exit27

RSTRING_PTR.exit27:                               ; preds = %bb.o, %bb.p
  %i.as = phi ptr [ %i.ar, %bb.p ], [ %i.aq, %bb.o ]
  %i.at = or i32 %3, -2147483648
  %i.au = ptrtoint ptr %4 to i64
  %i.av = call fastcc i32 @ruby_glob0(ptr noundef %i.as, i32 noundef %.122, ptr noundef %i.am, i32 noundef %i.at, ptr noundef nonnull @rb_glob_funcs, i64 noundef %i.au, ptr noundef %.1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret i32 %i.av
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @push_pattern(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.b = tail call i64 @rb_external_str_new_with_enc(ptr noundef nonnull %0, i64 noundef %i.a, ptr noundef %2) #20
  %i.c = tail call i64 @rb_ary_push(i64 noundef %1, i64 noundef %i.b) #20 ; 0 uses
  ret void
}

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #2

declare i64 @rb_ary_each(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
end_hunk_0
