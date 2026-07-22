inline.NumInlined: 1500
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 21
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@rb_reset_argf_lineno:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = getelementptr i8, ptr %i.i, i64 16
  store i64 %0, ptr %i.j, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_gets() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = load i64, ptr @rb_rs, align 8, !tbaa !13
  %i.c = load i64, ptr @rb_default_rs, align 8, !tbaa !13
  %.not = icmp eq i64 %i.b, %i.c
  %i.d = load i64, ptr @argf, align 8, !tbaa !13  ; 2 uses
  br i1 %.not, label %.preheader, label %rb_f_gets.exit

.preheader:                                       ; preds = %bb.a
  %i.e = tail call fastcc i32 @argf_next_argv(i64 noundef %i.d)
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %.loopexit, label %.lr.ph

rb_f_gets.exit:                                   ; preds = %bb.a
  %i.f = tail call i64 @argf_gets(i32 noundef 0, ptr noundef null, i64 noundef %i.d)
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %rb_io_close.exit
  %i.g = load i64, ptr @argf, align 8, !tbaa !13
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77
  %i.m = load i64, ptr @rb_default_rs, align 8, !tbaa !13
  %i.n = call fastcc i64 @rb_io_getline_1(i64 noundef %i.m, i64 noundef -1, i32 noundef 0, i64 noundef %i.l) ; 3 uses
  %i.o = icmp eq i64 %i.n, 4
  br i1 %i.o, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph
  %i.p = load i64, ptr @argf, align 8, !tbaa !13
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !75   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 81
  %i.u = load i8, ptr %i.t, align 1, !tbaa !174
  %.not6 = icmp eq i8 %i.u, -1
  br i1 %.not6, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !77
  %i.x = call fastcc ptr @io_close_fptr(i64 noundef %i.w) ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %rb_io_close.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.y = getelementptr i8, ptr %i.x, i64 24       ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !125
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %fptr_waitpid.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @rb_last_status_clear() #28
  %i.aa = load i32, ptr %i.y, align 8, !tbaa !125
  %i.ab = call i32 @rb_waitpid(i32 noundef %i.aa, ptr noundef nonnull %i.a, i32 noundef 0) #28 ; 0 uses
  store i32 0, ptr %i.y, align 8, !tbaa !125
  br label %fptr_waitpid.exit.i

fptr_waitpid.exit.i:                              ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %rb_io_close.exit

rb_io_close.exit:                                 ; preds = %bb.c, %fptr_waitpid.exit.i
  %i.ac = load i64, ptr @argf, align 8, !tbaa !13 ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75
  %i.ag = getelementptr i8, ptr %i.af, i64 81
  store i8 1, ptr %i.ag, align 1, !tbaa !174
  %i.ah = call fastcc i32 @argf_next_argv(i64 noundef %i.ac)
  %.not5 = icmp eq i32 %i.ah, 0
  br i1 %.not5, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.b
  call void @rb_lastline_set(i64 noundef 4) #28
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  call void @rb_lastline_set(i64 noundef %i.n) #28
  %i.ai = load i64, ptr @argf, align 8, !tbaa !13
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = getelementptr i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = getelementptr i8, ptr %i.al, i64 24     ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !79
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !79
  %i.ap = load i64, ptr @argf, align 8, !tbaa !13
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr i8, ptr %i.aq, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !79
  %i.av = getelementptr i8, ptr %i.as, i64 16
  store i64 %i.au, ptr %i.av, align 8, !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %rb_io_close.exit, %.preheader, %bb.f, %bb.g, %rb_f_gets.exit
  %.0 = phi i64 [ %i.f, %rb_f_gets.exit ], [ 4, %bb.f ], [ %i.n, %bb.g ], [ 4, %.preheader ], [ 4, %rb_io_close.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_f_gets(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load i64, ptr @argf, align 8, !tbaa !13  ; 2 uses
  %i.b = icmp eq i64 %2, %i.a
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @argf_gets(i32 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_keyword_given_p() #28
  %i.e = icmp ne i32 %i.d, 0
  %i.f = zext i1 %i.e to i32
  %i.g = tail call i64 @rb_funcallv_kw(i64 noundef %i.a, i64 noundef 3057, i32 noundef %0, ptr noundef %1, i32 noundef %i.f) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @argf_next_argv(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 15 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %1 = alloca %struct.stat, align 8               ; 7 uses
  %2 = alloca %struct.stat, align 8               ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = tail call i64 @rb_ractor_stdout() #28    ; 7 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = and i64 %i.e, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h                         ; 2 uses
  br i1 %i.i, label %rbimpl_RB_TYPE_P_fastpath.exit118.thread, label %rbimpl_RB_TYPE_P_fastpath.exit118

rbimpl_RB_TYPE_P_fastpath.exit118:                ; preds = %bb.a
  %i.j = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = and i64 %i.k, 31
  %i.m = icmp eq i64 %i.l, 11
  br i1 %i.m, label %RB_OBJ_FROZEN.exit.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit118.thread

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %rbimpl_RB_TYPE_P_fastpath.exit118
  %i.n = and i64 %i.k, 2048
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %rb_io_taint_check.exit, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !18

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i
  tail call void @rb_error_frozen_object(i64 noundef %i.e) #30
  unreachable

rb_io_taint_check.exit:                           ; preds = %RB_OBJ_FROZEN.exit.i.i
  %.phi.trans.insert = getelementptr i8, ptr %i.j, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !34 ; 3 uses
  %.not.i.i119 = icmp eq ptr %.pre, null
  br i1 %.not.i.i119, label %bb.b, label %rb_io_check_initialized.exit.i

bb.b:                                             ; preds = %rb_io_taint_check.exit
  %i.o = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.4) #30
  unreachable

rb_io_check_initialized.exit.i:                   ; preds = %rb_io_taint_check.exit
  %i.p = getelementptr i8, ptr %.pre, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !20
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %rb_io_check_closed.exit

bb.c:                                             ; preds = %rb_io_check_initialized.exit.i
  tail call void @rb_thread_check_ints() #28
  %i.s = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @closed_stream) #30
  unreachable

rb_io_check_closed.exit:                          ; preds = %rb_io_check_initialized.exit.i
  %i.t = getelementptr i8, ptr %.pre, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  %i.v = and i32 %i.u, 4
  %.not = icmp eq i32 %i.v, 0
  br label %rbimpl_RB_TYPE_P_fastpath.exit118.thread

rbimpl_RB_TYPE_P_fastpath.exit118.thread:         ; preds = %bb.a, %rb_io_check_closed.exit, %rbimpl_RB_TYPE_P_fastpath.exit118
  %.not109 = phi i1 [ true, %rbimpl_RB_TYPE_P_fastpath.exit118 ], [ %.not, %rb_io_check_closed.exit ], [ true, %bb.a ]
  %i.w = inttoptr i64 %0 to ptr
  %i.x = getelementptr i8, ptr %i.w, i64 32       ; 14 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 5 uses
  %i.z = getelementptr i8, ptr %i.y, i64 80       ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !175  ; 3 uses
  %i.ab = icmp eq i8 %i.aa, 0
  %i.ac = getelementptr i8, ptr %i.y, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !176 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 4                    ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.j

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit118.thread
  br i1 %i.ae, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  %i.ah = and i64 %i.ag, 8192
  %.not.i = icmp eq i64 %i.ah, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = lshr i64 %i.ag, 15
  %i.aj = and i64 %i.ai, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.ak = getelementptr i8, ptr %i.af, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !86
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i120 = phi i64 [ %i.aj, %bb.f ], [ %i.al, %bb.g ]
  %i.am = icmp sgt i64 %.0.i120, 0
  br i1 %i.am, label %bb.i, label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit, %bb.d
  br label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit, %bb.h
  %.sink = phi i8 [ -1, %bb.h ], [ 1, %rb_array_len.exit ] ; 2 uses
  %i.an = getelementptr i8, ptr %i.y, i64 81
  store i8 %.sink, ptr %i.an, align 1, !tbaa !174
  store i8 1, ptr %i.z, align 8, !tbaa !175
  br label %bb.p

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit118.thread
  %i.ao = getelementptr i8, ptr %i.y, i64 81      ; 3 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 -1, ptr %i.ao, align 1, !tbaa !174
  br label %.thread204

bb.l:                                             ; preds = %bb.j
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !174 ; 2 uses
  %i.aq = icmp eq i8 %i.ap, -1
  br i1 %i.aq, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ar = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !16 ; 2 uses
  %i.at = and i64 %i.as, 8192
  %.not.i121 = icmp eq i64 %i.at, 0
  br i1 %.not.i121, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = lshr i64 %i.as, 15
  %i.av = and i64 %i.au, 127
  br label %rb_array_len.exit123

bb.o:                                             ; preds = %bb.m
  %i.aw = getelementptr i8, ptr %i.ar, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !86
  br label %rb_array_len.exit123

rb_array_len.exit123:                             ; preds = %bb.n, %bb.o
  %.0.i122 = phi i64 [ %i.av, %bb.n ], [ %i.ax, %bb.o ]
  %i.ay = icmp sgt i64 %.0.i122, 0
  br i1 %i.ay, label %.thread205, label %.thread204

.thread205:                                       ; preds = %rb_array_len.exit123
  store i8 1, ptr %i.ao, align 1, !tbaa !174
  br label %bb.q

bb.p:                                             ; preds = %bb.l, %bb.i
  %i.az = phi i8 [ %i.aa, %bb.l ], [ 1, %bb.i ]
  %i.ba = phi i8 [ %i.ap, %bb.l ], [ %.sink, %bb.i ]
  switch i8 %i.ba, label %bb.bn [
    i8 1, label %bb.q
    i8 -1, label %.thread204
  ]

bb.q:                                             ; preds = %.thread205, %bb.p
  %i.bb = phi i8 [ %i.aa, %.thread205 ], [ %i.az, %bb.p ]
  %i.bc = icmp eq i8 %i.bb, 1
  br i1 %i.bc, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @argf_close(i64 noundef %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = inttoptr i64 %i.e to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.t

bb.t:                                             ; preds = %bb.bk, %bb.s
  %i.bj = load ptr, ptr %i.x, align 8, !tbaa !75  ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 32
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !176
  %i.bm = inttoptr i64 %i.bl to ptr               ; 2 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !16 ; 2 uses
  %i.bo = and i64 %i.bn, 8192
  %.not.i124 = icmp eq i64 %i.bo, 0
  br i1 %.not.i124, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = lshr i64 %i.bn, 15
  %i.bq = and i64 %i.bp, 127
  br label %rb_array_len.exit126

bb.v:                                             ; preds = %bb.t
  %i.br = getelementptr i8, ptr %i.bm, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !86
  br label %rb_array_len.exit126

rb_array_len.exit126:                             ; preds = %bb.u, %bb.v
  %.0.i125 = phi i64 [ %i.bq, %bb.u ], [ %i.bs, %bb.v ]
  %i.bt = icmp sgt i64 %.0.i125, 0
  br i1 %i.bt, label %bb.w, label %bb.bl

bb.w:                                             ; preds = %rb_array_len.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %3 = load ptr, ptr %i.x, align 8, !tbaa !75
  %4 = getelementptr i8, ptr %3, i64 32
  %5 = load i64, ptr %4, align 8, !tbaa !176
  %i.bu = call i64 @rb_ary_shift(i64 noundef %5) #28 ; 2 uses
  store i64 %i.bu, ptr %i.b, align 8, !tbaa !13
  %i.bv = call i64 @rb_get_path(i64 noundef %i.bu) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr %i.b, ptr %i.c, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.c) #28, !srcloc !177
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  store volatile i64 %i.bv, ptr %i.bw, align 8, !tbaa !13
  %i.bx = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.by = load ptr, ptr %i.x, align 8, !tbaa !75
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !178
  %i.bz = call i64 @rb_str_encode_ospath(i64 noundef %i.bx) #28
  store i64 %i.bz, ptr %i.b, align 8, !tbaa !13
  %i.ca = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #28 ; 5 uses
  %i.cb = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !81
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !86
  %i.ch = icmp eq i8 %i.cg, 45
  br i1 %i.ch, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ci = load i64, ptr @rb_stdin, align 8, !tbaa !13
  %i.cj = load ptr, ptr %i.x, align 8, !tbaa !75  ; 3 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !77
  %i.cl = getelementptr i8, ptr %i.cj, i64 40
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !179
  %.not111 = icmp eq i64 %i.cm, 0
  br i1 %.not111, label %.loopexit168, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.221) #34
  br label %bb.bk

bb.aa:                                            ; preds = %bb.x, %bb.w
  %i.cn = call fastcc i32 @rb_sysopen(i64 noundef %i.cb, i32 noundef 0, i32 noundef 0) ; 5 uses
  %i.co = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.cp = getelementptr i8, ptr %i.co, i64 40
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !179
  %.not104 = icmp eq i64 %i.cq, 0
  br i1 %.not104, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  br i1 %i.i, label %rb_io_close.exit, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.ab
  %i.cr = load i64, ptr %i.bd, align 8, !tbaa !16
  %i.cs = and i64 %i.cr, 31
  %i.ct = icmp ne i64 %i.cs, 11
  %i.cu = load i64, ptr @orig_stdout, align 8
  %.not105 = icmp eq i64 %i.e, %i.cu
  %or.cond116 = select i1 %i.ct, i1 true, i1 %.not105
  br i1 %or.cond116, label %rb_io_close.exit, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cv = call fastcc ptr @io_close_fptr(i64 noundef %i.e) ; 2 uses
  %.not.i127 = icmp eq ptr %i.cv, null
  br i1 %.not.i127, label %rb_io_close.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.cw = getelementptr i8, ptr %i.cv, i64 24     ; 3 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !125
  %.not.i.i128 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i128, label %fptr_waitpid.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @rb_last_status_clear() #28
  %i.cy = load i32, ptr %i.cw, align 8, !tbaa !125
  %i.cz = call i32 @rb_waitpid(i32 noundef %i.cy, ptr noundef nonnull %i.a, i32 noundef 0) #28 ; 0 uses
  store i32 0, ptr %i.cw, align 8, !tbaa !125
  br label %fptr_waitpid.exit.i

fptr_waitpid.exit.i:                              ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %rb_io_close.exit

rb_io_close.exit:                                 ; preds = %bb.ab, %fptr_waitpid.exit.i, %bb.ac, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.da = call i32 @fstat(i32 noundef %i.cn, ptr noundef nonnull %1) #28 ; 0 uses
  %i.db = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.dc = load ptr, ptr %i.x, align 8, !tbaa !75
  %i.dd = getelementptr i8, ptr %i.dc, i64 40
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !179 ; 4 uses
  %i.df = icmp eq i64 %i.de, 4
  br i1 %i.df, label %bb.al, label %bb.af

bb.af:                                            ; preds = %rb_io_close.exit
  %i.dg = call i64 @rb_str_dup(i64 noundef %i.db) #28 ; 5 uses
  %i.dh = inttoptr i64 %i.dg to ptr               ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !81
  %i.dk = inttoptr i64 %i.de to ptr               ; 3 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !16
  %i.dm = and i64 %i.dl, 8192
  %.not.i129 = icmp eq i64 %i.dm, 0
  %i.dn = getelementptr i8, ptr %i.dk, i64 24     ; 2 uses
  br i1 %.not.i129, label %RSTRING_PTR.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !86
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.af, %bb.ag
  %i.dp = phi ptr [ %i.do, %bb.ag ], [ %i.dn, %bb.af ]
  %i.dq = getelementptr i8, ptr %i.dk, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !81
  %i.ds = call ptr @rb_enc_get(i64 noundef %i.de) #28
  %i.dt = call i64 @rb_str_cat_conv_enc_opts(i64 noundef %i.dg, i64 noundef %i.dj, ptr noundef %i.dp, i64 noundef %i.dr, ptr noundef %i.ds, i32 noundef 0, i64 noundef 4) #28
  %i.du = icmp eq i64 %i.dt, 4
  br i1 %i.du, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %RSTRING_PTR.exit
  %i.dv = call i64 @rb_str_append(i64 noundef %i.dg, i64 noundef %i.de) #28 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %RSTRING_PTR.exit
  %i.dw = load i64, ptr %i.dh, align 8, !tbaa !16
  %i.dx = and i64 %i.dw, 8192
  %.not.i130 = icmp eq i64 %i.dx, 0
  %i.dy = getelementptr i8, ptr %i.dh, i64 24     ; 2 uses
  br i1 %.not.i130, label %RSTRING_PTR.exit131, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !86
  br label %RSTRING_PTR.exit131

RSTRING_PTR.exit131:                              ; preds = %bb.ai, %bb.aj
  %i.ea = phi ptr [ %i.dz, %bb.aj ], [ %i.dy, %bb.ai ]
  %i.eb = call i32 @rename(ptr noundef %i.ca, ptr noundef %i.ea) #28
  %i.ec = icmp sgt i32 %i.eb, -1
  br i1 %i.ec, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %RSTRING_PTR.exit131
  %i.ed = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ee = call ptr @rb_errno_ptr() #28
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = call ptr @strerror(i32 noundef %i.ef) #28
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.222, i64 noundef %i.ed, i64 noundef %i.dg, ptr noundef %i.eg) #34
  %i.eh = call i32 @close(i32 noundef %i.cn) #28  ; 0 uses
  br label %bb.ay

bb.al:                                            ; preds = %rb_io_close.exit
  %i.ei = call i32 @unlink(ptr noundef %i.ca) #28
  %i.ej = icmp slt i32 %i.ei, 0
  br i1 %i.ej, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.ek = load i64, ptr %i.b, align 8, !tbaa !13
  %i.el = call ptr @rb_errno_ptr() #28
  %i.em = load i32, ptr %i.el, align 4, !tbaa !7
  %i.en = call ptr @strerror(i32 noundef %i.em) #28
  call void (ptr, ...) @rb_warn(ptr noundef nonnull @.str.223, i64 noundef %i.ek, ptr noundef %i.en) #34
  %i.eo = call i32 @close(i32 noundef %i.cn) #28  ; 0 uses
  br label %bb.ay

.thread:                                          ; preds = %RSTRING_PTR.exit131, %bb.al
  %.098 = phi i64 [ %i.db, %bb.al ], [ %i.dg, %RSTRING_PTR.exit131 ]
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !13
  %i.eq = call fastcc i32 @rb_sysopen(i64 noundef %i.ep, i32 noundef 577, i32 noundef 438) ; 5 uses
  %i.er = call i32 @fstat(i32 noundef %i.eq, ptr noundef nonnull %2) #28 ; 0 uses
  %i.es = load i32, ptr %i.be, align 8, !tbaa !180
  %i.et = call i32 @fchmod(i32 noundef %i.eq, i32 noundef %i.es) #28 ; 0 uses
  %i.eu = load i32, ptr %i.bf, align 4, !tbaa !183 ; 2 uses
  %i.ev = load i32, ptr %i.bg, align 4, !tbaa !183 ; 2 uses
  %.not106 = icmp eq i32 %i.eu, %i.ev
  %.pre187 = load i32, ptr %i.bh, align 8, !tbaa !184 ; 2 uses
  %i.ew = load i32, ptr %i.bi, align 8
  %.not107 = icmp eq i32 %.pre187, %i.ew
  %or.cond217 = select i1 %.not106, i1 %.not107, i1 false
  br i1 %or.cond217, label %.thread155, label %bb.an

bb.an:                                            ; preds = %.thread
  %i.ex = call i32 @fchown(i32 noundef %i.eq, i32 noundef %i.eu, i32 noundef %.pre187) #28
  %.not108 = icmp eq i32 %i.ex, 0
  br i1 %.not108, label %.thread155, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ey = call i32 @getuid() #28
  %i.ez = or i32 %i.ey, %i.ev
  %or.cond = icmp eq i32 %i.ez, 0
  br i1 %or.cond, label %bb.ap, label %.thread155

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.fb = inttoptr i64 %i.fa to ptr               ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !16
  %i.fd = and i64 %i.fc, 8192
  %.not.i132 = icmp eq i64 %i.fd, 0
  %i.fe = getelementptr i8, ptr %i.fb, i64 24     ; 2 uses
  br i1 %.not.i132, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@rb_io_s_popen:bb.a
  %i.w = tail call i64 @rb_ractor_stderr() #28
  %i.x = tail call i64 @rb_io_flush(i64 noundef %i.w) ; 0 uses
  tail call void @_exit(i32 noundef 0) #30
  unreachable

bb.h:                                             ; preds = %.thread34
  %i.y = inttoptr i64 %i.q to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 8
  store i64 %2, ptr %i.z, align 8, !tbaa !13
  %i.aa = icmp eq i64 %2, 0
  %i.ab = and i64 %2, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %RBASIC_SET_CLASS.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @rb_gc_writebarrier(i64 noundef %i.q, i64 noundef %2) #28
  br label %RBASIC_SET_CLASS.exit.i

RBASIC_SET_CLASS.exit.i:                          ; preds = %bb.i, %bb.h
  %i.ae = tail call i32 @rb_block_given_p() #28
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %popen_finish.exit, label %bb.j

bb.j:                                             ; preds = %RBASIC_SET_CLASS.exit.i
  %i.af = tail call i64 @rb_ensure(ptr noundef nonnull @rb_yield, i64 noundef %i.q, ptr noundef nonnull @pipe_close, i64 noundef %i.q) #28
  br label %popen_finish.exit

popen_finish.exit:                                ; preds = %bb.f, %RBASIC_SET_CLASS.exit.i, %bb.j
  %.0.i = phi i64 [ 4, %bb.f ], [ %i.af, %bb.j ], [ %i.q, %RBASIC_SET_CLASS.exit.i ]
  ret i64 %.0.i

bb.k:                                             ; preds = %.thread31
  %i.ag = icmp ne i64 %.02128, 4                  ; 3 uses
  %i.ah = zext i1 %i.ag to i32
  %i.ai = add i32 %.1, %i.ah
  %i.aj = select i1 %i.ag, i32 2, i32 1
  %i.ak = select i1 %i.ag, i32 3, i32 2
  tail call void @rb_error_arity(i32 noundef %i.ai, i32 noundef %i.aj, i32 noundef %i.ak) #30
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_foreach(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.foreach_arg, align 8        ; 4 uses
  %4 = alloca %struct.getline_arg, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i32 @rb_keyword_given_p() #28
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %i.g) #28
  %i.j = add nsw i32 %0, -1                       ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i34 = phi i32 [ %i.j, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %.188.i33 = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %i.l = icmp samesign ugt i32 %.1.i34, 1
  %spec.select = select i1 %i.l, i32 2, i32 1     ; 2 uses
  %i.m = icmp samesign ult i32 %spec.select, %.1.i34
  %i.n = zext i1 %i.m to i32
  %.286.i.1 = add nuw nsw i32 %spec.select, %i.n
  %i.o = icmp eq i32 %.286.i.1, %.1.i34
  br i1 %i.o, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.preheader, %bb.b
  %.1.i15 = phi i32 [ 0, %bb.b ], [ %.1.i34, %.preheader ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i15, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.p = tail call i32 @rb_block_given_p() #28
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.q = tail call i64 @rb_frame_this_func() #28
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.q) #28
  %i.s = tail call i64 @rb_enumeratorize_with_size(i64 noundef %2, i64 noundef %i.r, i32 noundef %0, ptr noundef nonnull %1, ptr noundef null) #28
  br label %bb.s

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.t = getelementptr i8, ptr %1, i64 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.u = load i64, ptr @rb_rs, align 8, !tbaa !13 ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !tbaa !13
  %i.v = icmp eq i32 %.1.i34, 2
  br i1 %i.v, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.t, align 8, !tbaa !13   ; 2 uses
  %i.x = icmp eq i64 %i.w, 4
  br i1 %i.x, label %.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = tail call i64 @rb_check_string_type(i64 noundef %i.w) #28 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4
  br i1 %i.z, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !13
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.ab = icmp samesign ugt i32 %.1.i34, 2
  br i1 %i.ab, label %bb.i, label %.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !13  ; 2 uses
  store i64 %i.ac, ptr %i.b, align 8, !tbaa !13
  %i.ad = getelementptr i8, ptr %1, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = icmp eq i64 %i.ac, 4
  br i1 %i.af, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.k

.thread.i:                                        ; preds = %bb.h, %bb.f, %bb.e
  %i.ah = phi i64 [ %i.u, %bb.h ], [ 4, %bb.e ], [ %i.y, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !201
  br label %extract_getline_args.exit

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.aj = phi i64 [ %i.u, %bb.g ], [ 4, %bb.i ], [ %.pre.i, %bb.j ]
  %.1.i11 = phi i64 [ %i.aa, %bb.g ], [ %i.ae, %bb.i ], [ %i.ae, %bb.j ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !201
  %i.al = icmp eq i64 %.1.i11, 4
  br i1 %i.al, label %extract_getline_args.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = trunc i64 %.1.i11 to i1
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = ashr i64 %.1.i11, 1
  br label %extract_getline_args.exit

bb.n:                                             ; preds = %bb.l
  %i.ao = call i64 @rb_num2long(i64 noundef %.1.i11) #28
  br label %extract_getline_args.exit

extract_getline_args.exit:                        ; preds = %.thread.i, %bb.k, %bb.m, %bb.n
  %i.ap = phi i64 [ -1, %.thread.i ], [ -1, %bb.k ], [ %i.an, %bb.m ], [ %i.ao, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call fastcc void @open_key_args(i64 noundef %2, i32 noundef %.1.i34, ptr noundef nonnull %1, i64 noundef %.188.i33, ptr noundef %3)
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !204 ; 4 uses
  %i.at = icmp eq i64 %i.as, 4
  br i1 %i.at, label %bb.s, label %bb.o

bb.o:                                             ; preds = %extract_getline_args.exit
  %i.au = icmp eq i64 %.188.i33, 4
  br i1 %i.au, label %extract_getline_opts.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.av = load i64, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
  %.not.i12 = icmp eq i64 %i.av, 0
  br i1 %.not.i12, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aw = call i64 @rb_intern2(ptr noundef nonnull @.str.238, i64 noundef 5) #28
  store i64 %i.aw, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = call i32 @rb_get_kwargs(i64 noundef %.188.i33, ptr noundef nonnull @extract_getline_opts.kwds, i32 noundef 0, i32 noundef -2, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.az = icmp ne i64 %i.ay, 36
  %i.ba = and i64 %i.ay, -5
  %i.bb = icmp ne i64 %i.ba, 0
  %narrow.i = and i1 %i.az, %i.bb
  %i.bc = zext i1 %narrow.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %extract_getline_opts.exit

extract_getline_opts.exit:                        ; preds = %bb.o, %bb.r
  %.0.i = phi i8 [ 0, %bb.o ], [ %i.bc, %bb.r ]
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %5 = load i8, ptr %i.bd, align 8
  %6 = and i8 %5, -2
  %7 = or disjoint i8 %6, %.0.i
  store i8 %7, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.as, ptr %4, align 8, !tbaa !206
  call fastcc void @check_getline_args(ptr noundef nonnull %i.be, i64 noundef %i.as)
  %i.bf = ptrtoint ptr %4 to i64
  %i.bg = call i64 @rb_ensure(ptr noundef nonnull @io_s_foreach, i64 noundef %i.bf, ptr noundef nonnull @rb_io_close, i64 noundef %i.as) #28
  br label %bb.s

bb.s:                                             ; preds = %extract_getline_args.exit, %extract_getline_opts.exit, %bb.c
  %.0 = phi i64 [ %i.s, %bb.c ], [ %i.bg, %extract_getline_opts.exit ], [ 4, %extract_getline_args.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_readlines(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %3 = alloca %struct.foreach_arg, align 8        ; 4 uses
  %4 = alloca %struct.getline_arg, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.c = icmp sgt i32 %0, 0
  br i1 %i.c, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.d = zext nneg i32 %0 to i64
  %i.e = getelementptr [8 x i8], ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = tail call i32 @rb_keyword_given_p() #28
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call i64 @rb_hash_dup(i64 noundef %i.g) #28
  %i.j = add nsw i32 %0, -1                       ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i29 = phi i32 [ %i.j, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %.188.i28 = phi i64 [ %i.i, %bb.b ], [ 4, %bb.a ] ; 3 uses
  %i.l = icmp samesign ugt i32 %.1.i29, 1
  %spec.select = select i1 %i.l, i32 2, i32 1     ; 2 uses
  %i.m = icmp samesign ult i32 %spec.select, %.1.i29
  %i.n = zext i1 %i.m to i32
  %.286.i.1 = add nuw nsw i32 %spec.select, %i.n
  %i.o = icmp eq i32 %.286.i.1, %.1.i29
  br i1 %i.o, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %.preheader, %bb.b
  %.1.i11 = phi i32 [ 0, %bb.b ], [ %.1.i29, %.preheader ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i11, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %.preheader
  %i.p = getelementptr i8, ptr %1, i64 8          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.q = load i64, ptr @rb_rs, align 8, !tbaa !13 ; 3 uses
  store i64 %i.q, ptr %i.b, align 8, !tbaa !13
  %i.r = icmp eq i32 %.1.i29, 2
  br i1 %i.r, label %bb.c, label %bb.f

bb.c:                                             ; preds = %rb_scan_args_set.exit
  %i.s = load i64, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = tail call i64 @rb_check_string_type(i64 noundef %i.s) #28 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4
  br i1 %i.v, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.p, align 8, !tbaa !13
  br label %bb.i

bb.f:                                             ; preds = %rb_scan_args_set.exit
  %i.x = icmp samesign ugt i32 %.1.i29, 2
  br i1 %i.x, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.y = load i64, ptr %i.p, align 8, !tbaa !13   ; 2 uses
  store i64 %i.y, ptr %i.b, align 8, !tbaa !13
  %i.z = getelementptr i8, ptr %1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !13  ; 2 uses
  %i.ab = icmp eq i64 %i.y, 4
  br i1 %i.ab, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = call i64 @rb_string_value(ptr noundef nonnull %i.b) #28 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !13
  br label %bb.i

.thread.i:                                        ; preds = %bb.f, %bb.d, %bb.c
  %i.ad = phi i64 [ %i.q, %bb.f ], [ 4, %bb.c ], [ %i.u, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !201
  br label %extract_getline_args.exit

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.af = phi i64 [ %i.q, %bb.e ], [ 4, %bb.g ], [ %.pre.i, %bb.h ]
  %.1.i7 = phi i64 [ %i.w, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !201
  %i.ah = icmp eq i64 %.1.i7, 4
  br i1 %i.ah, label %extract_getline_args.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = trunc i64 %.1.i7 to i1
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = ashr i64 %.1.i7, 1
  br label %extract_getline_args.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = call i64 @rb_num2long(i64 noundef %.1.i7) #28
  br label %extract_getline_args.exit

extract_getline_args.exit:                        ; preds = %.thread.i, %bb.i, %bb.k, %bb.l
  %i.al = phi i64 [ -1, %.thread.i ], [ -1, %bb.i ], [ %i.aj, %bb.k ], [ %i.ak, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.al, ptr %i.am, align 8, !tbaa !203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call fastcc void @open_key_args(i64 noundef %2, i32 noundef %.1.i29, ptr noundef nonnull %1, i64 noundef %.188.i28, ptr noundef %3)
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !204 ; 4 uses
  %i.ap = icmp eq i64 %i.ao, 4
  br i1 %i.ap, label %bb.q, label %bb.m

bb.m:                                             ; preds = %extract_getline_args.exit
  %i.aq = icmp eq i64 %.188.i28, 4
  br i1 %i.aq, label %extract_getline_opts.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ar = load i64, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
  %.not.i8 = icmp eq i64 %i.ar, 0
  br i1 %.not.i8, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.as = call i64 @rb_intern2(ptr noundef nonnull @.str.238, i64 noundef 5) #28
  store i64 %i.as, ptr @extract_getline_opts.kwds, align 8, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.at = call i32 @rb_get_kwargs(i64 noundef %.188.i28, ptr noundef nonnull @extract_getline_opts.kwds, i32 noundef 0, i32 noundef -2, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.au = load i64, ptr %i.a, align 8, !tbaa !13  ; 2 uses
  %i.av = icmp ne i64 %i.au, 36
  %i.aw = and i64 %i.au, -5
  %i.ax = icmp ne i64 %i.aw, 0
  %narrow.i = and i1 %i.av, %i.ax
  %i.ay = zext i1 %narrow.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %extract_getline_opts.exit

extract_getline_opts.exit:                        ; preds = %bb.m, %bb.p
  %.0.i = phi i8 [ 0, %bb.m ], [ %i.ay, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %5 = load i8, ptr %i.az, align 8
  %6 = and i8 %5, -2
  %7 = or disjoint i8 %6, %.0.i
  store i8 %7, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ao, ptr %4, align 8, !tbaa !206
  call fastcc void @check_getline_args(ptr noundef nonnull %i.ba, i64 noundef %i.ao)
  %i.bb = ptrtoint ptr %4 to i64
  %i.bc = call i64 @rb_ensure(ptr noundef nonnull @io_s_readlines, i64 noundef %i.bb, ptr noundef nonnull @rb_io_close, i64 noundef %i.ao) #28
  br label %bb.q

bb.q:                                             ; preds = %extract_getline_args.exit, %extract_getline_opts.exit
  %.0 = phi i64 [ %i.bc, %extract_getline_opts.exit ], [ 4, %extract_getline_args.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_read(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
rb_scan_args_n_opt.exit:
  %3 = alloca %struct.foreach_arg, align 8        ; 9 uses
  %4 = alloca %struct.seek_arg, align 8           ; 6 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !13
  %i.g = tail call i32 @rb_keyword_given_p() #28
  %.not10 = icmp eq i32 %i.g, 0
  br i1 %.not10, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #28
  %i.i = add nsw i32 %0, -1                       ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.1.i29 = phi i32 [ %i.i, %bb.b ], [ %0, %bb.a ] ; 7 uses
  %.188.i28 = phi i64 [ %i.h, %bb.b ], [ 4, %bb.a ] ; 2 uses
  %i.k = icmp samesign ugt i32 %.1.i29, 1
  %spec.select = select i1 %i.k, i32 2, i32 1     ; 4 uses
  %i.l = icmp samesign ult i32 %spec.select, %.1.i29
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader
  %i.m = zext nneg i32 %spec.select to i64
  %i.n = getelementptr [8 x i8], ptr %1, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !13
  %i.p = add nuw nsw i32 %spec.select, 1
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.c
  %i.q = phi i64 [ %i.o, %bb.c ], [ 4, %.preheader ] ; 5 uses
  %.286.i.1 = phi i32 [ %i.p, %bb.c ], [ %spec.select, %.preheader ] ; 2 uses
  %i.r = icmp samesign ult i32 %.286.i.1, %.1.i29
  %i.s = zext i1 %i.r to i32
  %spec.select32 = add nuw nsw i32 %.286.i.1, %i.s
  %i.t = icmp eq i32 %spec.select32, %.1.i29
  br i1 %i.t, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.d, %bb.b
  %.1.i9 = phi i32 [ 0, %bb.b ], [ %.1.i29, %bb.d ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i9, i32 noundef 1, i32 noundef 4) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.d
  %i.u = icmp eq i64 %i.q, 4
  br i1 %i.u, label %bb.i, label %bb.e

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.v = trunc i64 %i.q to i1
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = ashr i64 %i.q, 1
  br label %rb_num2long_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.x = tail call i64 @rb_num2long(i64 noundef %i.q) #28
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %i.y = icmp slt i64 %.0.i, 0
  br i1 %i.y, label %bb.h, label %.thread30

bb.h:                                             ; preds = %rb_num2long_inline.exit
  %i.z = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.z, ptr noundef nonnull @.str.243, i64 noundef %.0.i) #30
  unreachable

bb.i:                                             ; preds = %rb_scan_args_set.exit
  call fastcc void @open_key_args(i64 noundef %2, i32 noundef %.1.i29, ptr noundef nonnull %1, i64 noundef %.188.i28, ptr noundef %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !204 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4
  br i1 %i.ac, label %bb.p, label %bb.o

.thread30:                                        ; preds = %rb_num2long_inline.exit
  call fastcc void @open_key_args(i64 noundef %2, i32 noundef %.1.i29, ptr noundef nonnull %1, i64 noundef %.188.i28, ptr noundef %3)
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !204 ; 4 uses
  %i.af = icmp eq i64 %i.ae, 4
  br i1 %i.af, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.thread30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !7
  store i64 %i.ae, ptr %4, align 8, !tbaa !207
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.q, ptr %i.ag, align 8, !tbaa !209
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.ah, align 8, !tbaa !210
  %i.ai = ptrtoint ptr %4 to i64
  %i.aj = call i64 @rb_protect(ptr noundef nonnull @seek_before_access, i64 noundef %i.ai, ptr noundef nonnull %i.a) #28 ; 0 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !7
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = call i64 @rb_io_close(i64 noundef %i.ae) ; 0 uses
  %i.am = load i32, ptr %i.a, align 4, !tbaa !7
  call void @rb_jump_tag(i32 noundef %i.am) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.an = load i32, ptr %3, align 8, !tbaa !211
  %i.ao = icmp eq i32 %i.an, 2
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %3, align 8, !tbaa !211
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.n
  %i.ap = phi i64 [ %i.ae, %bb.n ], [ %i.ab, %bb.i ]
  %i.aq = ptrtoint ptr %3 to i64
  %i.ar = call i64 @rb_ensure(ptr noundef nonnull @io_s_read, i64 noundef %i.aq, ptr noundef nonnull @rb_io_close, i64 noundef %i.ap) #28
  br label %bb.p

bb.p:                                             ; preds = %.thread30, %bb.i, %bb.o
  %.0 = phi i64 [ %i.ar, %bb.o ], [ 4, %bb.i ], [ 4, %.thread30 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_io_s_binread(i32 noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.foreach_arg, align 8        ; 6 uses
  %4 = alloca %struct.rb_io_encoding, align 8     ; 5 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %struct.seek_arg, align 8           ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) @__const.rb_io_s_binread.convconfig, i64 32, i1 false)
  %i.c = icmp slt i32 %0, 1
  br i1 %i.c, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not22 = icmp eq i32 %0, 1
  %spec.select = select i1 %.not22, i32 1, i32 2  ; 4 uses
  %i.d = icmp samesign ult i32 %spec.select, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.preheader
  %i.e = zext nneg i32 %spec.select to i64
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %i.h = add nuw nsw i32 %spec.select, 1
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.i = phi i64 [ %i.g, %bb.b ], [ 4, %.preheader ] ; 2 uses
  %.286.i.1 = phi i32 [ %i.h, %bb.b ], [ %spec.select, %.preheader ]
  %i.j = icmp eq i32 %.286.i.1, %0
  br i1 %i.j, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 3) #30
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.k = load i64, ptr %1, align 8, !tbaa !13
  %i.l = tail call i64 @rb_get_path(i64 noundef %i.k) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr %1, ptr %i.a, align 8, !tbaa !137
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.a) #28, !srcloc !212
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
end_hunk_1
