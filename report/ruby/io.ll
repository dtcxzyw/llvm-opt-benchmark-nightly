inline.NumInlined: 1500
inline.NumDeleted: 204
begin_hunk_0_@rb_io_getbyte:bb.a
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.e

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.s = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.t = getelementptr i8, ptr %i.k, i64 68
  %i.u = getelementptr i8, ptr %i.k, i64 80
  %i.v = load i32, ptr %i.u, align 8, !tbaa !46
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %rb_io_check_initialized.exit.i20, label %rb_io_check_closed.exit21

rb_io_check_initialized.exit.i20:                 ; preds = %rb_io_check_byte_readable.exit
  %i.w = load i32, ptr %i.m, align 8, !tbaa !20
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.f, label %rb_io_check_closed.exit21

bb.f:                                             ; preds = %rb_io_check_initialized.exit.i20
  tail call void @rb_thread_check_ints() #28
  %i.y = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.y, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit21:                        ; preds = %rb_io_check_initialized.exit.i20, %rb_io_check_byte_readable.exit
  %i.z = tail call i64 @rb_ractor_stdout() #28    ; 5 uses
  %i.aa = load i32, ptr %i.m, align 8, !tbaa !20
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.g:                                             ; preds = %rb_io_check_closed.exit21
  %i.ac = getelementptr i8, ptr %i.k, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39
  %i.ae = and i32 %i.ad, 16
  %.not16 = icmp eq i32 %i.ae, 0
  br i1 %.not16, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = icmp eq i64 %i.z, 0
  %i.ag = and i64 %i.z, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.h
  %i.aj = inttoptr i64 %i.z to ptr                ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !16 ; 2 uses
  %i.al = and i64 %i.ak, 31
  %i.am = icmp eq i64 %i.al, 11
  br i1 %i.am, label %RB_OBJ_FROZEN.exit.i.i24, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

RB_OBJ_FROZEN.exit.i.i24:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.an = and i64 %i.ak, 2048
  %.not.i.i25 = icmp eq i64 %i.an, 0
  br i1 %.not.i.i25, label %rb_io_taint_check.exit29, label %RB_OBJ_FROZEN.exit.thread.i.i23, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i23:                  ; preds = %RB_OBJ_FROZEN.exit.i.i24
  tail call void @rb_error_frozen_object(i64 noundef %i.z) #30
  unreachable

rb_io_taint_check.exit29:                         ; preds = %RB_OBJ_FROZEN.exit.i.i24
  %.phi.trans.insert = getelementptr i8, ptr %i.aj, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34 ; 3 uses
  %.not.i.i30 = icmp eq ptr %.pre, null
  br i1 %.not.i.i30, label %bb.i, label %rb_io_check_initialized.exit.i31

bb.i:                                             ; preds = %rb_io_taint_check.exit29
  %i.ao = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ao, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i31:                 ; preds = %rb_io_taint_check.exit29
  %i.ap = getelementptr i8, ptr %.pre, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !20
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %rb_io_check_closed.exit32

bb.j:                                             ; preds = %rb_io_check_initialized.exit.i31
  tail call void @rb_thread_check_ints() #28
  %i.as = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit32:                        ; preds = %rb_io_check_initialized.exit.i31
  %i.at = getelementptr i8, ptr %.pre, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !39
  %i.av = and i32 %i.au, 16
  %.not17 = icmp eq i32 %i.av, 0
  br i1 %.not17, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %bb.k

bb.k:                                             ; preds = %rb_io_check_closed.exit32
  %i.aw = tail call i64 @rb_io_flush_raw(i64 noundef %i.z, i32 poison) ; 0 uses
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.h, %rb_io_check_closed.exit32, %bb.k, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.g, %rb_io_check_closed.exit21
  %i.ax = tail call fastcc i32 @io_fillbuf(ptr noundef nonnull %i.k)
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.az = getelementptr i8, ptr %i.k, i64 76      ; 3 uses
  %i.ba = load <2 x i32>, ptr %i.az, align 4, !tbaa !7
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !47
  %i.bc = add <2 x i32> %i.ba, <i32 1, i32 -1>
  store <2 x i32> %i.bc, ptr %i.az, align 4, !tbaa !7
  %i.bd = load ptr, ptr %i.t, align 4, !tbaa !71
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr i8, ptr %i.bd, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !86
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 1
  %i.bj = or disjoint i64 %i.bi, 1
  br label %bb.m

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.l
  %.0 = phi i64 [ %i.bj, %bb.l ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  ret i64 %.0
}

declare i64 @rb_ractor_stdout() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_io_ungetbyte(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 2 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.c = icmp ne i64 %0, 0
  %i.d = and i64 %0, 7
  %i.e = icmp eq i64 %i.d, 0
  %.not3.i.i.i = and i1 %i.c, %i.e
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.f = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 3 uses
  %i.h = and i64 %i.g, 2048
  %.not.i.i = icmp eq i64 %i.h, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.i = and i64 %i.g, 31
  %i.j = icmp ne i64 %i.i, 5
  %i.k = and i64 %i.g, 49152
  %.not8.i.i = icmp eq i64 %i.k, 0
  %or.cond.i.i = or i1 %i.j, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_io_taint_check.exit, label %bb.b, !prof !19

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  tail call void @rb_str_modify(i64 noundef %0) #28
  br label %rb_io_taint_check.exit

rb_io_taint_check.exit:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.b
  %i.l = getelementptr i8, ptr %i.f, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 5 uses
  %.not.i.i4 = icmp eq ptr %i.m, null
  br i1 %.not.i.i4, label %bb.c, label %rb_io_check_initialized.exit.i

bb.c:                                             ; preds = %rb_io_taint_check.exit
  %i.n = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.n, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.o = getelementptr i8, ptr %i.m, i64 16
  %i.p = load i32, ptr %i.o, align 8, !tbaa !20
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %rb_io_check_closed.exit

bb.d:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.r = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_io_check_char_readable(ptr noundef nonnull %i.m)
  %i.s = getelementptr i8, ptr %i.m, i64 148
  %i.t = load i32, ptr %i.s, align 4, !tbaa !45
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %rb_io_check_byte_readable.exit, label %bb.e

bb.e:                                             ; preds = %rb_io_check_closed.exit
  %i.u = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.7) #30
  unreachable

rb_io_check_byte_readable.exit:                   ; preds = %rb_io_check_closed.exit
  %i.v = icmp eq i64 %1, 0
  %i.w = and i64 %1, 7
  %i.x = icmp ne i64 %i.w, 0
  %i.y = or i1 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %rb_type.exit

bb.f:                                             ; preds = %rb_io_check_byte_readable.exit
  switch i64 %1, label %bb.g [
    i64 0, label %rb_type.exit.thread
    i64 4, label %rb_type.exit.thread7
    i64 20, label %rb_type.exit.thread
    i64 36, label %rb_type.exit.thread
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = trunc i64 %1 to i1
  br i1 %i.z, label %rb_type.exit.thread9, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %rb_io_check_byte_readable.exit
  %i.aa = inttoptr i64 %1 to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 31
  switch i32 %i.ad, label %rb_type.exit.thread [
    i32 17, label %rb_type.exit.thread7
    i32 21, label %rb_type.exit.thread9
    i32 10, label %rb_type.exit.thread9
  ]

rb_type.exit.thread9:                             ; preds = %bb.g, %rb_type.exit, %rb_type.exit
  %i.ae = tail call i64 @rb_int_modulo(i64 noundef %1, i64 noundef 513) #28 ; 3 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_type.exit.thread9
  %i.ag = tail call i64 @rb_fix2int(i64 noundef %i.ae) #28
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %rb_type.exit.thread9
  %i.ah = tail call i64 @rb_num2int(i64 noundef %i.ae) #28
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i5 = phi i64 [ %i.ag, %bb.h ], [ %i.ah, %bb.i ]
  %i.ai = trunc i64 %.0.i5 to i8
  store i8 %i.ai, ptr %i.b, align 1, !tbaa !86
  %i.aj = call i64 @rb_str_new(ptr noundef nonnull %i.b, i64 noundef 1) #28 ; 2 uses
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

rb_type.exit.thread:                              ; preds = %bb.g, %bb.f, %bb.f, %bb.f, %rb_type.exit
  %i.ak = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %rb_type.exit.thread, %rb_num2int_inline.exit
  %i.al = phi i64 [ %.pre, %rb_type.exit.thread ], [ %i.aj, %rb_num2int_inline.exit ]
  call fastcc void @io_ungetbyte(i64 noundef %i.al, ptr noundef nonnull %i.m)
  br label %rb_type.exit.thread7

rb_type.exit.thread7:                             ; preds = %bb.f, %rb_type.exit, %bb.j
  ret i64 4
}

declare i64 @rb_int_modulo(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_string_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @io_ungetbyte(i64 noundef %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !81   ; 6 uses
  %i.d = getelementptr i8, ptr %1, i64 68         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 4, !tbaa !71   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %1, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %i.k = and i32 %i.j, 4096
  %.not38 = icmp eq i32 %i.k, 0
  %i.l = select i1 %.not38, i64 8192, i64 131072
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi i64 [ 131072, %bb.b ], [ %i.l, %bb.c ]
  %i.n = getelementptr i8, ptr %1, i64 76
  store i32 0, ptr %i.n, align 4, !tbaa !47
  %i.o = getelementptr i8, ptr %1, i64 80
  store i32 0, ptr %i.o, align 8, !tbaa !46
  %i.p = icmp sgt i64 %i.c, 2147483647
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.q, ptr noundef nonnull @.str.198) #30
  unreachable

bb.f:                                             ; preds = %bb.d
  %spec.select42 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 %i.m) ; 2 uses
  %spec.select = trunc i64 %spec.select42 to i32
  %i.r = getelementptr i8, ptr %1, i64 84
  store i32 %spec.select, ptr %i.r, align 4, !tbaa !73
  %i.s = and i64 %spec.select42, 4294967295
  %i.t = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.s, i64 noundef 1) #32 ; 2 uses
  store ptr %i.t, ptr %i.d, align 4, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  %i.u = phi ptr [ %i.t, %bb.f ], [ %i.e, %bb.a ] ; 3 uses
  %i.v = getelementptr i8, ptr %1, i64 84         ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 80         ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !46   ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %i.ab = add i64 %i.c, %i.aa
  %i.ac = icmp sgt i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.198) #30
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ae = getelementptr i8, ptr %1, i64 76        ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !47 ; 2 uses
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = icmp sgt i64 %i.c, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr i8, ptr %i.u, i64 %i.x
  %i.aj = sub nsw i64 0, %i.aa
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.u, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.al, i64 noundef %i.aa, i1 noundef false) #28
  %i.am = load i32, ptr %i.v, align 4, !tbaa !73
  %i.an = load i32, ptr %i.y, align 4, !tbaa !46  ; 2 uses
  %i.ao = sub i32 %i.am, %i.an
  %.pre = load ptr, ptr %i.d, align 4, !tbaa !71
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = phi ptr [ %.pre, %bb.j ], [ %i.u, %bb.i ]
  %i.aq = phi i32 [ %i.an, %bb.j ], [ %i.z, %bb.i ]
  %i.ar = phi i32 [ %i.ao, %bb.j ], [ %i.af, %bb.i ]
  %i.as = trunc i64 %i.c to i32                   ; 2 uses
  %i.at = sub i32 %i.ar, %i.as                    ; 2 uses
  store i32 %i.at, ptr %i.ae, align 4, !tbaa !47
  %i.au = add i32 %i.aq, %i.as
  store i32 %i.au, ptr %i.y, align 4, !tbaa !46
  %i.av = load i64, ptr %i.a, align 8, !tbaa !16
  %i.aw = and i64 %i.av, 8192
  %.not.i = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr i8, ptr %i.a, i64 24      ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.k, %bb.l
  %i.az = phi ptr [ %i.ay, %bb.l ], [ %i.ax, %bb.k ]
  %i.ba = sext i32 %i.at to i64
  %i.bb = getelementptr i8, ptr %i.ap, i64 %i.ba
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.bb, ptr noundef nonnull align 1 %i.az, i64 noundef %i.c, i1 noundef false) #28
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i64 @rb_io_ungetc(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !13
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !15

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16   ; 3 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #30
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
  %i.i = icmp ne i64 %i.h, 5
  %i.j = and i64 %i.f, 49152
  %.not8.i.i = icmp eq i64 %i.j, 0
  %or.cond.i.i = or i1 %i.i, %.not8.i.i
end_hunk_0
begin_hunk_1_@argf_getpartial:bb.a

.preheader:                                       ; preds = %bb.a
  %.not38 = icmp eq i32 %0, 1
  br i1 %.not38, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  store i64 %i.d, ptr %i.a, align 8, !tbaa !13
  %i.e = icmp eq i32 %0, 2
  br i1 %i.e, label %rb_scan_args_set.exit, label %bb.c

rb_scan_args_set.exit.thread:                     ; preds = %.preheader
  store i64 4, ptr %i.a, align 8, !tbaa !13
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.f = icmp eq i64 %i.d, 4
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.g = call i64 @rb_string_value(ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.h = load i64, ptr %i.a, align 8, !tbaa !13
  %i.i = getelementptr i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %rb_scan_args_set.exit.thread, %bb.d, %rb_scan_args_set.exit
  %i.j = call i32 @rb_opts_exception_p(i64 noundef %3, i32 noundef 1) #28
  %.not = icmp eq i32 %i.j, 0                     ; 3 uses
  %i.k = zext i1 %.not to i32
  %i.l = call fastcc i32 @argf_next_argv(i64 noundef %2)
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = call i64 @rb_str_resize(i64 noundef %i.m, i64 noundef 0) #28 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @rb_eof_error() #31
  unreachable

bb.i:                                             ; preds = %bb.e
  %i.p = inttoptr i64 %2 to ptr
  %i.q = getelementptr i8, ptr %i.p, i64 32       ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !77   ; 5 uses
  %i.u = load i64, ptr @rb_stdin, align 8, !tbaa !13
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i64 %i.t, 0
  %i.x = and i64 %i.t, 7
  %i.y = icmp ne i64 %i.x, 0
  %i.z = or i1 %i.w, %i.y
  br i1 %i.z, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.j
  %i.aa = inttoptr i64 %i.t to ptr
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !16
  %i.ac = and i64 %i.ab, 31
  %i.ad = icmp eq i64 %i.ac, 11
  br i1 %i.ad, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store i32 %0, ptr %5, align 8, !tbaa !389
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %1, ptr %i.ae, align 8, !tbaa !391
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %2, ptr %i.af, align 8, !tbaa !392
  %i.ag = ptrtoint ptr %5 to i64
  %i.ah = load i64, ptr @rb_eEOFError, align 8, !tbaa !13
  %i.ai = call i64 (ptr, i64, ptr, i64, ...) @rb_rescue2(ptr noundef nonnull @argf_forward_call, i64 noundef %i.ag, ptr noundef null, i64 noundef 4, i64 noundef %i.ah, i64 noundef 0) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.l

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %bb.i
  %i.aj = call fastcc i64 @io_getpartial(i32 noundef %0, ptr noundef %1, i64 noundef %i.t, i32 noundef %i.k, i32 noundef %4)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.023 = phi i64 [ %i.aj, %bb.k ], [ %i.ai, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  %i.ak = icmp eq i64 %.023, 4
  br i1 %i.ak, label %bb.m, label %io_nonblock_eof.exit

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.q, align 8, !tbaa !75
  %i.am = getelementptr i8, ptr %i.al, i64 81
  %i.an = load i8, ptr %i.am, align 1, !tbaa !174
  %i.ao = icmp eq i8 %i.an, -1
  br i1 %i.ao, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %.not, label %io_nonblock_eof.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @rb_eof_error() #31
  unreachable

bb.p:                                             ; preds = %bb.m
  call fastcc void @argf_close(i64 noundef %2)
  %i.ap = load ptr, ptr %i.q, align 8, !tbaa !75  ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 81
  store i8 1, ptr %i.aq, align 1, !tbaa !174
  %i.ar = getelementptr i8, ptr %i.ap, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !176
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !16 ; 2 uses
  %i.av = and i64 %i.au, 8192
  %.not.i28 = icmp eq i64 %i.av, 0
  br i1 %.not.i28, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = lshr i64 %i.au, 15
  %i.ax = and i64 %i.aw, 127
  br label %rb_array_len.exit

bb.r:                                             ; preds = %bb.p
  %i.ay = getelementptr i8, ptr %i.at, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !86
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.q, %bb.r
  %.0.i29 = phi i64 [ %i.ax, %bb.q ], [ %i.az, %bb.r ]
  %i.ba = icmp eq i64 %.0.i29, 0
  br i1 %i.ba, label %bb.s, label %bb.u

bb.s:                                             ; preds = %rb_array_len.exit
  br i1 %.not, label %io_nonblock_eof.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @rb_eof_error() #31
  unreachable

bb.u:                                             ; preds = %rb_array_len.exit
  %i.bb = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4
  br i1 %i.bc, label %bb.v, label %io_nonblock_eof.exit

bb.v:                                             ; preds = %bb.u
  %i.bd = call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #28
  br label %io_nonblock_eof.exit

io_nonblock_eof.exit:                             ; preds = %bb.u, %bb.v, %bb.s, %bb.n, %bb.l
  %.0 = phi i64 [ %.023, %bb.l ], [ 4, %bb.n ], [ 4, %bb.s ], [ %i.bd, %bb.v ], [ %i.bb, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

declare i32 @rb_opts_exception_p(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @argf_forward_call(i64 noundef %0) #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !389
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !391
  %i.e = getelementptr i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !392
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !77
  %i.l = tail call i64 @rb_frame_this_func() #28
  %i.m = tail call i32 @rb_keyword_given_p() #28
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = tail call i64 @rb_funcallv_public_kw(i64 noundef %i.k, i64 noundef %i.l, i32 noundef %i.b, ptr noundef %i.d, i32 noundef %i.o) #28 ; 0 uses
  ret i64 4
}

declare i64 @rb_ary_concat(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @rb_enc_default_external() local_unnamed_addr #1

declare i64 @rb_check_to_int(i64 noundef) local_unnamed_addr #1

declare i32 @rb_bool_expected(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @rb_lastline_set_up(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { cold noreturn nounwind }
attributes #30 = { noreturn nounwind }
attributes #31 = { noreturn }
attributes #32 = { nounwind allocsize(0,1) }
attributes #33 = { nounwind willreturn memory(read) }
attributes #34 = { cold nounwind }
attributes #35 = { cold }
attributes #36 = { nounwind allocsize(0) }
attributes #37 = { nounwind allocsize(1,2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"long", !9, i64 0}
!15 = !{!"branch_weights", i32 2146410443, i32 1073205}
!16 = !{!17, !14, i64 0}
!17 = !{!"RBasic", !14, i64 0, !14, i64 8}
!18 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!19 = !{!"branch_weights", i32 4001, i32 1}
!20 = !{!21, !8, i64 16}
!21 = !{!"rb_io", !14, i64 0, !22, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !14, i64 32, !23, i64 40, !24, i64 48, !24, i64 68, !14, i64 88, !26, i64 96, !28, i64 128, !24, i64 136, !28, i64 160, !14, i64 168, !8, i64 176, !8, i64 180, !14, i64 184, !14, i64 192, !14, i64 200, !29, i64 208, !32, i64 224, !14, i64 232, !33, i64 240}
!22 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!23 = !{!"any pointer", !9, i64 0}
!24 = !{!"rb_io_internal_buffer", !25, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!25 = !{!"p1 omnipotent char", !23, i64 0}
!26 = !{!"rb_io_encoding", !27, i64 0, !27, i64 8, !8, i64 16, !14, i64 24}
!27 = !{!"p1 _ZTS18OnigEncodingTypeST", !23, i64 0}
!28 = !{!"p1 _ZTS10rb_econv_t", !23, i64 0}
!29 = !{!"ccan_list_head", !30, i64 0}
!30 = !{!"ccan_list_node", !31, i64 0, !31, i64 8}
!31 = !{!"p1 _ZTS14ccan_list_node", !23, i64 0}
!32 = !{!"p1 _ZTS27rb_execution_context_struct", !23, i64 0}
!33 = !{!"long long", !9, i64 0}
!34 = !{!35, !36, i64 16}
!35 = !{!"RFile", !17, i64 0, !36, i64 16}
!36 = !{!"p1 _ZTS5rb_io", !23, i64 0}
!37 = !{!21, !14, i64 88}
!38 = !{!21, !14, i64 200}
!39 = !{!21, !8, i64 20}
!40 = !{!21, !8, i64 60}
!41 = !{!21, !14, i64 192}
!42 = !{!21, !14, i64 0}
!43 = distinct !{!43, !12}
!44 = !{!21, !14, i64 32}
!45 = !{!21, !8, i64 148}
!46 = !{!21, !8, i64 80}
!47 = !{!21, !8, i64 76}
!48 = !{!21, !28, i64 128}
!49 = !{!24, !25, i64 0}
!50 = !{!21, !28, i64 160}
!51 = !{!21, !8, i64 176}
!52 = !{!32, !32, i64 0}
!53 = !{!54, !59, i64 48}
!54 = !{!"rb_execution_context_struct", !55, i64 0, !14, i64 8, !56, i64 16, !57, i64 24, !8, i64 32, !8, i64 36, !58, i64 40, !59, i64 48, !33, i64 56, !33, i64 64, !60, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !55, i64 104, !14, i64 112, !61, i64 120, !14, i64 128, !14, i64 136, !9, i64 144, !8, i64 145, !14, i64 152, !62, i64 160, !63, i64 176}
!55 = !{!"p1 long", !23, i64 0}
!56 = !{!"p1 _ZTS23rb_control_frame_struct", !23, i64 0}
!57 = !{!"p1 _ZTS9rb_vm_tag", !23, i64 0}
!58 = !{!"p1 _ZTS15rb_fiber_struct", !23, i64 0}
!59 = !{!"p1 _ZTS16rb_thread_struct", !23, i64 0}
!60 = !{!"p1 _ZTS11rb_id_table", !23, i64 0}
!61 = !{!"p1 _ZTS19rb_trace_arg_struct", !23, i64 0}
!62 = !{!"", !14, i64 0, !14, i64 8}
!63 = !{!"", !55, i64 0, !55, i64 8, !14, i64 16, !9, i64 24}
!64 = !{!21, !25, i64 48}
!65 = !{!21, !8, i64 56}
!66 = !{!21, !8, i64 64}
!67 = !{!68, !36, i64 0}
!68 = !{!"binwrite_arg", !36, i64 0, !25, i64 8, !14, i64 16}
!69 = !{!68, !25, i64 8}
!70 = !{!68, !14, i64 16}
!71 = !{!21, !25, i64 68}
!72 = !{!21, !27, i64 104}
!73 = !{!21, !8, i64 84}
!74 = !{!21, !8, i64 28}
!75 = !{!76, !23, i64 32}
!76 = !{!"RData", !17, i64 0, !23, i64 16, !23, i64 24, !23, i64 32}
!77 = !{!78, !14, i64 8}
!78 = !{!"argf", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !26, i64 48, !9, i64 80, !9, i64 81, !9, i64 82}
!79 = !{!78, !14, i64 24}
!80 = !{!78, !14, i64 16}
!81 = !{!82, !14, i64 16}
!82 = !{!"RString", !17, i64 0, !14, i64 16, !9, i64 24}
!83 = !{!21, !27, i64 96}
!84 = !{!85, !8, i64 20}
!85 = !{!"OnigEncodingTypeST", !23, i64 0, !25, i64 8, !8, i64 16, !8, i64 20, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80, !23, i64 88, !23, i64 96, !23, i64 104, !23, i64 112, !23, i64 120, !8, i64 128, !8, i64 132}
!86 = !{!9, !9, i64 0}
!87 = !{!21, !25, i64 136}
!88 = !{!21, !8, i64 144}
!89 = distinct !{!89, !12}
!90 = !{!85, !23, i64 32}
!91 = distinct !{null, null, null}
!92 = distinct !{!92, !12}
!93 = distinct !{!93, !12}
!94 = distinct !{!94, !12}
!95 = !{!21, !8, i64 152}
!96 = !{!21, !8, i64 112}
!97 = !{!21, !14, i64 120}
!98 = !{!85, !25, i64 8}
!99 = !{!100, !100, i64 0}
!100 = !{!"p1 _ZTS12rb_vm_struct", !23, i64 0}
!101 = !{!102, !33, i64 496}
!102 = !{!"rb_vm_struct", !14, i64 0, !103, i64 8, !23, i64 488, !33, i64 496, !8, i64 504, !8, i64 508, !8, i64 508, !8, i64 508, !8, i64 508, !14, i64 512, !108, i64 520, !9, i64 528, !109, i64 568, !109, i64 576, !110, i64 584, !111, i64 592, !112, i64 1112, !114, i64 1136, !8, i64 1144, !29, i64 1152, !9, i64 1168, !14, i64 1208, !14, i64 1216, !14, i64 1224, !14, i64 1232, !8, i64 1240, !115, i64 1248, !118, i64 1264, !119, i64 1272, !110, i64 1280, !60, i64 1288, !110, i64 1296, !120, i64 1304, !120, i64 1312, !60, i64 1320, !14, i64 1328, !9, i64 1336, !121, i64 9520}
!103 = !{!"", !29, i64 0, !8, i64 16, !8, i64 20, !104, i64 24, !59, i64 32, !105, i64 40, !107, i64 152}
!104 = !{!"p1 _ZTS16rb_ractor_struct", !23, i64 0}
!105 = !{!"", !9, i64 0, !104, i64 40, !8, i64 48, !9, i64 56, !106, i64 104}
!106 = !{!"_Bool", !9, i64 0}
!107 = !{!"", !9, i64 0, !104, i64 40, !106, i64 48, !9, i64 56, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !29, i64 120, !8, i64 136, !29, i64 144, !29, i64 160, !29, i64 176, !106, i64 192, !9, i64 200, !9, i64 248, !106, i64 296, !8, i64 300, !8, i64 304, !104, i64 312, !8, i64 320}
!108 = !{!"p1 _ZTS18global_object_list", !23, i64 0}
!109 = !{!"p1 _ZTS13rb_box_struct", !23, i64 0}
!110 = !{!"p1 _ZTS8st_table", !23, i64 0}
!111 = !{!"", !9, i64 0}
!112 = !{!"rb_hook_list_struct", !113, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !106, i64 20}
!113 = !{!"p1 _ZTS20rb_event_hook_struct", !23, i64 0}
!114 = !{!"p1 _ZTS22rb_postponed_job_queue", !23, i64 0}
!115 = !{!"", !116, i64 0, !117, i64 8}
!116 = !{!"p1 _ZTS11rb_objspace", !23, i64 0}
!117 = !{!"p1 _ZTS24gc_mark_func_data_struct", !23, i64 0}
!118 = !{!"p1 _ZTS15rb_at_exit_list", !23, i64 0}
!119 = !{!"p1 _ZTS19rb_builtin_function", !23, i64 0}
!120 = !{!"p1 _ZTS9set_table", !23, i64 0}
!121 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!122 = !{!21, !33, i64 240}
!123 = !{!30, !31, i64 0}
!124 = distinct !{!124, !12}
!125 = !{!21, !8, i64 24}
!126 = !{!21, !8, i64 180}
!127 = distinct !{!127, !12}
!128 = !{!27, !27, i64 0}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"memcpy.inline: argument 0"}
!131 = distinct !{!131, !"memcpy.inline"}
!132 = distinct !{!132, !131, !"memcpy.inline: argument 1"}
!133 = !{!26, !27, i64 0}
!134 = !{!26, !27, i64 8}
!135 = !{!26, !8, i64 16}
!136 = !{!26, !14, i64 24}
!137 = !{!55, !55, i64 0}
!138 = !{i64 2156588926}
!139 = distinct !{!139, !12}
end_hunk_1
