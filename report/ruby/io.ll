inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_advise:bb.a
  tail call void @rb_str_modify(i64 noundef %..i) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.j
  %i.at = getelementptr i8, ptr %i.an, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !34 ; 4 uses
  %.not.i.i9 = icmp eq ptr %i.au, null
  br i1 %.not.i.i9, label %bb.k, label %rb_io_check_initialized.exit.i

bb.k:                                             ; preds = %rb_io_taint_check.exit
  %i.av = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.av, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.aw = getelementptr i8, ptr %i.au, i64 16     ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !20
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.l, label %rb_io_check_closed.exit

bb.l:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.az = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.ba = icmp eq i64 %i.e, 4
  br i1 %i.ba, label %rb_num2long_inline.exit, label %bb.m

bb.m:                                             ; preds = %rb_io_check_closed.exit
  %i.bb = trunc i64 %i.e to i1
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = ashr i64 %i.e, 1
  br label %rb_num2long_inline.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = tail call i64 @rb_num2long(i64 noundef %i.e) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.o, %bb.n, %rb_io_check_closed.exit
  %i.be = phi i64 [ 0, %rb_io_check_closed.exit ], [ %i.bc, %bb.n ], [ %i.bd, %bb.o ] ; 2 uses
  %i.bf = icmp eq i64 %i.k, 4
  br i1 %i.bf, label %rb_num2long_inline.exit11, label %bb.p

bb.p:                                             ; preds = %rb_num2long_inline.exit
  %i.bg = trunc i64 %i.k to i1
  br i1 %i.bg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bh = ashr i64 %i.k, 1
  br label %rb_num2long_inline.exit11

bb.r:                                             ; preds = %bb.p
  %i.bi = tail call i64 @rb_num2long(i64 noundef %i.k) #28
  br label %rb_num2long_inline.exit11

rb_num2long_inline.exit11:                        ; preds = %bb.r, %bb.q, %rb_num2long_inline.exit
  %i.bj = phi i64 [ 0, %rb_num2long_inline.exit ], [ %i.bh, %bb.q ], [ %i.bi, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.bk = load i64, ptr @sym_normal, align 8, !tbaa !13
  %i.bl = icmp eq i64 %i.b, %i.bk
  br i1 %i.bl, label %rb_num2int_inline.exit.i, label %bb.s

bb.s:                                             ; preds = %rb_num2long_inline.exit11
  %i.bm = load i64, ptr @sym_random, align 8, !tbaa !13
  %i.bn = icmp eq i64 %i.b, %i.bm
  br i1 %i.bn, label %rb_num2int_inline.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = load i64, ptr @sym_sequential, align 8, !tbaa !13
  %i.bp = icmp eq i64 %i.b, %i.bo
  br i1 %i.bp, label %rb_num2int_inline.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = load i64, ptr @sym_willneed, align 8, !tbaa !13
  %i.br = icmp eq i64 %i.b, %i.bq
  br i1 %i.br, label %rb_num2int_inline.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = load i64, ptr @sym_dontneed, align 8, !tbaa !13
  %i.bt = icmp eq i64 %i.b, %i.bs
  br i1 %i.bt, label %rb_num2int_inline.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bu = load i64, ptr @sym_noreuse, align 8, !tbaa !13
  %i.bv = icmp eq i64 %i.b, %i.bu
  br i1 %i.bv, label %rb_num2int_inline.exit.i, label %do_io_advise.exit

rb_num2int_inline.exit.i:                         ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %rb_num2long_inline.exit11
  %.0.i.ph.i = phi i64 [ 1, %rb_num2long_inline.exit11 ], [ 9, %bb.v ], [ 7, %bb.u ], [ 5, %bb.t ], [ 3, %bb.s ], [ 11, %bb.w ]
  %i.bw = load i32, ptr %i.aw, align 8, !tbaa !20
  store i32 %i.bw, ptr %3, align 8, !tbaa !254
  %i.bx = tail call i64 @rb_fix2int(i64 noundef %.0.i.ph.i) #28
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !256
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.be, ptr %i.ca, align 8, !tbaa !257
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.bj, ptr %i.cb, align 8, !tbaa !258
  %i.cc = call i64 @rb_thread_io_blocking_call(ptr noundef nonnull %i.au, ptr noundef nonnull @io_advise_internal, ptr noundef nonnull %3, i32 noundef 0) #28
  %i.cd = trunc i64 %i.cc to i32                  ; 2 uses
  switch i32 %i.cd, label %bb.x [
    i32 38, label %do_io_advise.exit
    i32 0, label %do_io_advise.exit
  ]

bb.x:                                             ; preds = %rb_num2int_inline.exit.i
  %i.ce = getelementptr i8, ptr %i.au, i64 32
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !44
  %i.cg = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.292, i64 noundef %i.cf, i64 noundef %i.be, i64 noundef %i.bj, i64 noundef %i.b) #28
  call void @rb_syserr_fail_str(i32 noundef %i.cd, i64 noundef %i.cg) #30
  unreachable

do_io_advise.exit:                                ; preds = %bb.w, %rb_num2int_inline.exit.i, %rb_num2int_inline.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 4
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @rb_io_ioctl(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.ioctl_arg, align 8          ; 6 uses
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %i.e = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.f = phi i64 [ %i.d, %bb.b ], [ 4, %.preheader ] ; 9 uses
  %.185.i.lcssa = phi i1 [ %i.e, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.g = trunc i64 %i.b to i1
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.h = ashr i64 %i.b, 1
  br label %rb_num2ulong_inline.exit.i

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.i = tail call i64 @rb_num2ulong(i64 noundef %i.b) #28
  br label %rb_num2ulong_inline.exit.i

rb_num2ulong_inline.exit.i:                       ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %i.h, %bb.e ], [ %i.i, %bb.f ] ; 3 uses
  %i.j = and i64 %i.f, -5
  %.not.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i, label %setup_narg.exit.i, label %bb.g

bb.g:                                             ; preds = %rb_num2ulong_inline.exit.i
  %i.k = trunc i64 %i.f to i1
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = ashr i64 %i.f, 1
  br label %setup_narg.exit.i

bb.i:                                             ; preds = %bb.g
  %i.m = icmp eq i64 %i.f, 20
  br i1 %i.m, label %setup_narg.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i64 @rb_check_string_type(i64 noundef %i.f) #28 ; 5 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %rb_num2long_inline.exit.i.i, label %bb.k

rb_num2long_inline.exit.i.i:                      ; preds = %bb.j
  %i.p = tail call i64 @rb_num2long(i64 noundef %i.f) #28
  br label %setup_narg.exit.i

bb.k:                                             ; preds = %bb.j
  %i.q = and i64 %.0.i.i, 4294901760
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %ioctl_narg_len.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = lshr i64 %.0.i.i, 16
  %i.t = and i64 %i.s, 16383
  %spec.store.select.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 256)
  br label %ioctl_narg_len.exit.i

ioctl_narg_len.exit.i:                            ; preds = %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %spec.store.select.i.i.i, %bb.l ], [ 256, %bb.k ] ; 2 uses
  tail call void @rb_str_modify(i64 noundef %i.n) #28
  %i.u = inttoptr i64 %i.n to ptr                 ; 5 uses
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !81   ; 4 uses
  %i.x = add nuw nsw i64 %.0.i.i.i, 1             ; 3 uses
  %4 = icmp slt i64 %i.w, %i.x
  br i1 %4, label %bb.m, label %bb.o

bb.m:                                             ; preds = %ioctl_narg_len.exit.i
  %i.y = tail call i64 @rb_str_resize(i64 noundef %i.n, i64 noundef %i.x) #28 ; 0 uses
  %i.z = load i64, ptr %i.u, align 8, !tbaa !16
  %i.aa = and i64 %i.z, 8192
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  br i1 %.not.i.i.i, label %RSTRING_PTR.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.n, %bb.m
  %i.ad = phi ptr [ %i.ac, %bb.n ], [ %i.ab, %bb.m ]
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.w
  %i.af = sub i64 %.0.i.i.i, %i.w
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.ae, i8 noundef 0, i64 noundef %i.af, i1 noundef false) #28
  br label %bb.o

bb.o:                                             ; preds = %RSTRING_PTR.exit.i.i, %ioctl_narg_len.exit.i
  %.0.i7.i = phi i64 [ %i.x, %RSTRING_PTR.exit.i.i ], [ %i.w, %ioctl_narg_len.exit.i ]
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !16
  %i.ah = and i64 %i.ag, 8192
  %.not.i32.i.i = icmp eq i64 %i.ah, 0
  %i.ai = getelementptr i8, ptr %i.u, i64 24      ; 2 uses
  br i1 %.not.i32.i.i, label %RSTRING_PTR.exit33.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !86
  br label %RSTRING_PTR.exit33.i.i

RSTRING_PTR.exit33.i.i:                           ; preds = %bb.p, %bb.o
  %i.ak = phi ptr [ %i.aj, %bb.p ], [ %i.ai, %bb.o ] ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 %.0.i7.i
  %i.am = getelementptr i8, ptr %i.al, i64 -1
  store i8 17, ptr %i.am, align 1, !tbaa !86
  %i.an = ptrtoint ptr %i.ak to i64
  br label %setup_narg.exit.i

setup_narg.exit.i:                                ; preds = %RSTRING_PTR.exit33.i.i, %rb_num2long_inline.exit.i.i, %bb.i, %bb.h, %rb_num2ulong_inline.exit.i
  %.0.i = phi i64 [ %i.f, %rb_num2ulong_inline.exit.i ], [ %i.f, %bb.h ], [ 20, %bb.i ], [ %i.f, %rb_num2long_inline.exit.i.i ], [ %i.n, %RSTRING_PTR.exit33.i.i ] ; 3 uses
  %.1.i.i = phi i64 [ 0, %rb_num2ulong_inline.exit.i ], [ %i.l, %bb.h ], [ 1, %bb.i ], [ %i.p, %rb_num2long_inline.exit.i.i ], [ %i.an, %RSTRING_PTR.exit33.i.i ]
  %i.ao = icmp ne i64 %2, 0
  %i.ap = and i64 %2, 7
  %i.aq = icmp eq i64 %i.ap, 0
  %.not3.i.i.i.i = and i1 %i.ao, %i.aq
  br i1 %.not3.i.i.i.i, label %RB_OBJ_FROZEN.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i.i:                         ; preds = %setup_narg.exit.i
  %i.ar = inttoptr i64 %2 to ptr                  ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16 ; 3 uses
  %i.at = and i64 %i.as, 2048
  %.not.i.i8.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i8.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i.i:                  ; preds = %RB_OBJ_FROZEN.exit.i.i.i, %setup_narg.exit.i
  tail call void @rb_error_frozen_object(i64 noundef %2) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i.i:             ; preds = %RB_OBJ_FROZEN.exit.i.i.i
  %i.au = and i64 %i.as, 31
  %i.av = icmp ne i64 %i.au, 5
  %i.aw = and i64 %i.as, 49152
  %.not8.i.i.i = icmp eq i64 %i.aw, 0
  %or.cond.i.i.i = or i1 %i.av, %.not8.i.i.i
  br i1 %or.cond.i.i.i, label %rb_io_taint_check.exit.i, label %bb.q, !prof !19

bb.q:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  tail call void @rb_str_modify(i64 noundef %2) #28
  br label %rb_io_taint_check.exit.i

rb_io_taint_check.exit.i:                         ; preds = %bb.q, %rbimpl_RB_TYPE_P_fastpath.exit.i.i.i
  %i.ax = getelementptr i8, ptr %i.ar, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 4 uses
  %.not.i.i9.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i9.i, label %bb.r, label %rb_io_check_initialized.exit.i.i

bb.r:                                             ; preds = %rb_io_taint_check.exit.i
  %i.az = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i.i:                 ; preds = %rb_io_taint_check.exit.i
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !20 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %bb.s, label %rb_io_check_closed.exit.i

bb.s:                                             ; preds = %rb_io_check_initialized.exit.i.i
  tail call void @rb_thread_check_ints() #28
  %i.bd = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bd, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit.i:                        ; preds = %rb_io_check_initialized.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  store i32 %i.bb, ptr %3, align 8, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.0.i.i, ptr %i.be, align 8, !tbaa !261
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %.1.i.i, ptr %i.bf, align 8, !tbaa !262
  %i.bg = call i64 @rb_thread_io_blocking_call(ptr noundef nonnull %i.ay, ptr noundef nonnull @nogvl_ioctl, ptr noundef nonnull %3, i32 noundef 0) #28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.bh = and i64 %i.bg, 2147483648
  %.not14.i = icmp eq i64 %i.bh, 0
  br i1 %.not14.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %rb_io_check_closed.exit.i
  %i.bi = call ptr @rb_errno_ptr() #28
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = getelementptr i8, ptr %i.ay, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !44
  call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.finish_narg, i32 noundef %i.bj, i64 noundef %i.bl) #30
  unreachable

bb.u:                                             ; preds = %rb_io_check_closed.exit.i
  %i.bm = icmp eq i64 %.0.i, 0
  %i.bn = and i64 %.0.i, 7
  %i.bo = icmp ne i64 %i.bn, 0
  %i.bp = or i1 %i.bm, %i.bo
  br i1 %i.bp, label %rb_ioctl.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.u
  %i.bq = inttoptr i64 %.0.i to ptr               ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !16 ; 2 uses
  %i.bs = and i64 %i.br, 31
  %i.bt = icmp eq i64 %i.bs, 5
  br i1 %i.bt, label %bb.v, label %rb_ioctl.exit

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.bu = and i64 %i.br, 8192
  %.not.i.i10.i = icmp eq i64 %i.bu, 0
  %i.bv = getelementptr i8, ptr %i.bq, i64 24     ; 2 uses
  br i1 %.not.i.i10.i, label %RSTRING_PTR.exit.i11.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !86
  br label %RSTRING_PTR.exit.i11.i

RSTRING_PTR.exit.i11.i:                           ; preds = %bb.w, %bb.v
  %i.bx = phi ptr [ %i.bw, %bb.w ], [ %i.bv, %bb.v ]
  %i.by = getelementptr i8, ptr %i.bq, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !81
  %i.ca = getelementptr i8, ptr %i.bx, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 -1     ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !86
  %.not.i12.i = icmp eq i8 %i.cc, 17
  br i1 %.not.i12.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %RSTRING_PTR.exit.i11.i
  %i.cd = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cd, ptr noundef nonnull @.str.293) #30
  unreachable

bb.y:                                             ; preds = %RSTRING_PTR.exit.i11.i
  store i8 0, ptr %i.cb, align 1, !tbaa !86
  br label %rb_ioctl.exit

rb_ioctl.exit:                                    ; preds = %bb.u, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.y
  %i.ce = shl i64 %i.bg, 1
  %i.cf = and i64 %i.ce, 4294967294
  %i.cg = or disjoint i64 %i.cf, 1
  ret i64 %i.cg
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 1, 4294967296) i64 @rb_io_fcntl(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.fcntl_arg, align 8          ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  %i.f = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.g = phi i64 [ %i.e, %bb.b ], [ 4, %.preheader ]
  %.185.i.lcssa = phi i1 [ %i.f, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.a, align 8, !tbaa !13
  %i.h = trunc i64 %i.c to i1
  br i1 %i.h, label %bb.e, label %bb.f

end_hunk_0
