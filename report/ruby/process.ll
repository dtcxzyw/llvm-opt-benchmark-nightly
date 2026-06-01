inline.NumInlined: 701
inline.NumDeleted: 154
begin_hunk_0_@rb_detach_process:bb.a
  %i.e = shl nsw i64 %i.a, 1
  %i.f = or disjoint i64 %i.e, 1
  %i.g = tail call i64 @rb_thread_local_aset(i64 noundef %i.c, i64 noundef %i.d, i64 noundef %i.f) #26 ; 0 uses
  %i.h = load i64, ptr @rb_cWaiter, align 8, !tbaa !47 ; 4 uses
  %i.i = inttoptr i64 %i.c to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !47
  %i.k = icmp eq i64 %i.h, 0
  %i.l = and i64 %i.h, 7
  %i.m = icmp ne i64 %i.l, 0
  %i.n = or i1 %i.k, %i.m
  br i1 %i.n, label %RBASIC_SET_CLASS.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %i.c, i64 noundef %i.h) #26
  br label %RBASIC_SET_CLASS.exit

RBASIC_SET_CLASS.exit:                            ; preds = %bb.a, %bb.b
  ret i64 %i.c
}

declare i64 @rb_thread_create(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @detach_process_watcher(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.f = tail call i64 @rb_process_status_wait(i32 noundef %i.d, i32 noundef 0) ; 3 uses
  %i.g = icmp eq i64 %i.f, 4
  br i1 %i.g, label %.critedge.backedge, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.h = tail call ptr @rb_check_typeddata(i64 noundef %i.f, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !52   ; 2 uses
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %rb_waitpid.exit.thread, label %rb_waitpid.exit

rb_waitpid.exit.thread:                           ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !55
  %i.m = tail call ptr @rb_errno_ptr() #26
  store i32 %i.l, ptr %i.m, align 4, !tbaa !7
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !11
  br label %.loopexit

rb_waitpid.exit:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  store volatile ptr %i.n, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.o = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.o, align 8, !tbaa !14
  %i.p = getelementptr i8, ptr %.val.i.i, i64 216
  store i64 %i.f, ptr %i.p, align 8, !tbaa !27
  %i.q = icmp eq i32 %i.i, 0
  br i1 %i.q, label %.critedge.backedge, label %.loopexit

.critedge.backedge:                               ; preds = %rb_waitpid.exit, %.critedge
  br label %.critedge, !llvm.loop !67

.loopexit:                                        ; preds = %rb_waitpid.exit, %rb_waitpid.exit.thread
  %i.r = phi ptr [ %.pre, %rb_waitpid.exit.thread ], [ %i.n, %rb_waitpid.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile ptr %i.r, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i1 = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.s = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i1, i64 48
  %.val.i.i2 = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.t = getelementptr i8, ptr %.val.i.i2, i64 216
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27
  ret i64 %i.u
}

declare i64 @rb_thread_local_aset(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef i32 @rb_proc_exec(ptr noundef nonnull %0) local_unnamed_addr #1 {
bb.a:
  tail call void @rb_thread_stop_timer_thread() #26
  br label %bb.b

bb.b:                                             ; preds = %.critedge.i, %bb.a
  %.0.i = phi ptr [ %0, %bb.a ], [ %i.b, %.critedge.i ] ; 2 uses
  %i.a = load i8, ptr %.0.i, align 1, !tbaa !68
  switch i8 %i.a, label %bb.c [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %proc_exec_sh.exit
  ]

.critedge.i:                                      ; preds = %bb.b, %bb.b, %bb.b
  %i.b = getelementptr i8, ptr %.0.i, i64 1
  br label %bb.b, !llvm.loop !69

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 (ptr, ptr, ...) @execl(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.178, ptr noundef nonnull %0, ptr noundef null) #26 ; 0 uses
  %i.d = tail call ptr @rb_errno_ptr() #26
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  br label %proc_exec_sh.exit

proc_exec_sh.exit:                                ; preds = %bb.b, %bb.c
  %.010.i = phi i32 [ %i.e, %bb.c ], [ 2, %bb.b ]
  tail call void @rb_thread_reset_timer_thread() #26
  tail call void @rb_thread_start_timer_thread() #26
  %i.f = tail call ptr @rb_errno_ptr() #26
  store i32 %.010.i, ptr %i.f, align 4, !tbaa !7
  ret i32 -1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @after_exec() unnamed_addr #1 {
bb.a:
  tail call void @rb_thread_reset_timer_thread() #26
  tail call void @rb_thread_start_timer_thread() #26
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_execarg_addopt(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 3 uses
  %i.i = alloca i64, align 8                      ; 3 uses
  %i.j = alloca i64, align 8                      ; 15 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  store i64 %0, ptr %i.h, align 8, !tbaa !47
  store i64 %1, ptr %i.i, align 8, !tbaa !47
  store i64 %2, ptr %i.j, align 8, !tbaa !47
  %i.n = icmp eq i64 %0, 0
  %i.o = and i64 %0, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !70

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.a
  %i.r = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !71
  %i.t = and i64 %i.s, 95
  %or.cond.not.i.i = icmp eq i64 %i.t, 76
  br i1 %or.cond.not.i.i, label %bb.b, label %.critedge.i.i, !prof !72

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.u = getelementptr i8, ptr %i.r, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  %i.w = and i64 %i.v, -2                         ; 2 uses
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = trunc i64 %i.v to i1
  %i.z = getelementptr i8, ptr %i.r, i64 32       ; 2 uses
  br i1 %i.y, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !51
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.c, %bb.b
  %i.ab = phi ptr [ %i.aa, %bb.c ], [ %i.z, %bb.b ] ; 2 uses
  %i.ac = icmp eq i64 %i.w, ptrtoint (ptr @exec_arg_data_type to i64)
  br i1 %i.ac, label %rb_execarg_get.exit, label %.preheader.i.i, !prof !64

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.d
  %.016.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.x, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.ad = getelementptr i8, ptr %.016.i.i, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73 ; 2 uses
  %i.af = icmp eq ptr %i.ae, @exec_arg_data_type
  br i1 %i.af, label %rb_execarg_get.exit, label %.preheader.i.i, !llvm.loop !78

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.a
  %i.ag = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @exec_arg_data_type) #26
  br label %rb_execarg_get.exit

rb_execarg_get.exit:                              ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i.i, %.critedge.i.i
  %.1.i.i = phi ptr [ %i.ag, %.critedge.i.i ], [ %i.ab, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.ab, %bb.d ] ; 22 uses
  %i.ah = icmp eq i64 %1, 0
  %i.ai = and i64 %1, 7
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = or i1 %i.ah, %i.aj
  br i1 %i.ak, label %bb.e, label %rb_type.exit

bb.e:                                             ; preds = %rb_execarg_get.exit
  %3 = tail call i64 @llvm.fshl.i64(i64 %1, i64 %1, i64 62) ; 2 uses
  %i.al = icmp ult i64 %3, 10
  %switch.maskindex = trunc i64 %3 to i16
  %switch.shifted = lshr i16 547, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.al, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %rb_type.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = trunc i64 %1 to i1
  br i1 %i.am, label %rb_type.exit.thread74, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = and i64 %1, 254
  %i.ao = icmp eq i64 %i.an, 12
  br i1 %i.ao, label %rb_type.exit.thread72, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %rb_execarg_get.exit
  %i.ap = inttoptr i64 %1 to ptr
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !71
  %i.ar = trunc i64 %i.aq to i32
  %i.as = and i32 %i.ar, 31
  switch i32 %i.as, label %rb_type.exit.thread [
    i32 20, label %rb_type.exit.thread72
    i32 21, label %rb_type.exit.thread74
    i32 11, label %rb_type.exit.thread74
    i32 7, label %rb_type.exit.thread74
  ]

rb_type.exit.thread72:                            ; preds = %bb.g, %rb_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %1, ptr %i.f, align 8, !tbaa !47
  %i.at = tail call i64 @rb_sym2str(i64 noundef %1) #26
  %i.au = inttoptr i64 %i.at to ptr               ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !71
  %i.aw = and i64 %i.av, 8192
  %.not.i.i62 = icmp eq i64 %i.aw, 0
  %i.ax = getelementptr i8, ptr %i.au, i64 24     ; 2 uses
  br i1 %.not.i.i62, label %RSTRING_PTR.exit.i, label %bb.h

bb.h:                                             ; preds = %rb_type.exit.thread72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !68
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.h, %rb_type.exit.thread72
  %i.az = phi ptr [ %i.ay, %bb.h ], [ %i.ax, %rb_type.exit.thread72 ] ; 2 uses
  %i.ba = getelementptr i8, ptr %i.au, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !79 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 7
  br i1 %i.bc, label %bb.i, label %rlimit_type_by_sym.exit

bb.i:                                             ; preds = %RSTRING_PTR.exit.i
  %i.bd = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(8) @rlimit_type_by_sym.prefix, ptr noundef nonnull dereferenceable(1) %i.az, i64 noundef 7) #27
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.j, label %rlimit_type_by_sym.exit

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr i8, ptr %i.az, i64 7
  %i.bg = add nsw i64 %i.bb, -7
  %i.bh = tail call fastcc range(i32 -1, 16) i32 @rlimit_resource_name2int(ptr noundef readonly %i.bf, i64 noundef range(i64 1, 9223372036854775801) %i.bg, i32 noundef 1)
  br label %rlimit_type_by_sym.exit

rlimit_type_by_sym.exit:                          ; preds = %RSTRING_PTR.exit.i, %bb.i, %bb.j
  %.0.i63 = phi i32 [ %i.bh, %bb.j ], [ -1, %bb.i ], [ -1, %RSTRING_PTR.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #26
  store ptr %i.f, ptr %i.g, align 8, !tbaa !81
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #26, !srcloc !82
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26
  %i.bj = load volatile i64, ptr %i.bi, align 8, !tbaa !47 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not = icmp eq i32 %.0.i63, -1
  br i1 %.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %rlimit_type_by_sym.exit
  %i.bk = load i64, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.bl = getelementptr i8, ptr %.1.i.i, i64 96   ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !83 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bo = call i64 @rb_ary_new() #26              ; 3 uses
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !47
  store i64 %i.bo, ptr %i.bl, align 8, !tbaa !83
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.017.i = phi i64 [ %i.bo, %bb.l ], [ %i.bm, %bb.k ]
  %i.br = call i64 @rb_check_array_type(i64 noundef %i.bk) #26 ; 5 uses
  %i.bs = icmp eq i64 %i.br, 4
  br i1 %i.bs, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = inttoptr i64 %i.br to ptr               ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.bv = and i64 %i.bu, 8192
  %.not.i.i64 = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = lshr i64 %i.bu, 15
  %i.bx = and i64 %i.bw, 127
  br label %rb_array_len.exit.i

bb.p:                                             ; preds = %bb.n
  %i.by = getelementptr i8, ptr %i.bt, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !68
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.p, %bb.o
  %.0.i.i = phi i64 [ %i.bx, %bb.o ], [ %i.bz, %bb.p ]
  switch i64 %.0.i.i, label %bb.s [
    i64 1, label %bb.q
    i64 2, label %bb.r
  ]

bb.q:                                             ; preds = %rb_array_len.exit.i
  %i.ca = call i64 @rb_ary_entry(i64 noundef %i.br, i64 noundef 0) #27
  %i.cb = call i64 @rb_to_int(i64 noundef %i.ca) #26 ; 2 uses
  br label %rb_execarg_addopt_rlimit.exit

bb.r:                                             ; preds = %rb_array_len.exit.i
  %i.cc = call i64 @rb_ary_entry(i64 noundef %i.br, i64 noundef 0) #27
  %i.cd = call i64 @rb_to_int(i64 noundef %i.cc) #26
  %i.ce = call i64 @rb_ary_entry(i64 noundef %i.br, i64 noundef 1) #27
  %i.cf = call i64 @rb_to_int(i64 noundef %i.ce) #26
  br label %rb_execarg_addopt_rlimit.exit

bb.s:                                             ; preds = %rb_array_len.exit.i
  %i.cg = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cg, ptr noundef nonnull @.str.179) #28
  unreachable

bb.t:                                             ; preds = %bb.m
  %i.ch = call i64 @rb_to_int(i64 noundef %i.bk) #26 ; 2 uses
  br label %rb_execarg_addopt_rlimit.exit

rb_execarg_addopt_rlimit.exit:                    ; preds = %bb.q, %bb.r, %bb.t
  %.016.i = phi i64 [ %i.ch, %bb.t ], [ %i.cb, %bb.q ], [ %i.cd, %bb.r ]
  %.0.i65 = phi i64 [ %i.ch, %bb.t ], [ %i.cb, %bb.q ], [ %i.cf, %bb.r ]
  %i.ci = zext nneg i32 %.0.i63 to i64
  %i.cj = shl nuw nsw i64 %i.ci, 1
  %i.ck = or disjoint i64 %i.cj, 1
  %i.cl = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.ck, i64 noundef %.016.i, i64 noundef %.0.i65) #26 ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = getelementptr i8, ptr %i.cm, i64 8
  store i64 0, ptr %i.cn, align 8, !tbaa !47
  %i.co = call i64 @rb_ary_push(i64 noundef %.017.i, i64 noundef %i.cl) #26 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #26
  store ptr %i.h, ptr %i.k, align 8, !tbaa !81
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.k) #26, !srcloc !87
  %i.cp = load ptr, ptr %i.k, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #26
  br label %rb_type.exit.thread.sink.split

.critedge:                                        ; preds = %rlimit_type_by_sym.exit
  %i.cq = call i64 @rb_check_id(ptr noundef nonnull %i.i) #26 ; 12 uses
  %.not53 = icmp eq i64 %i.cq, 0
  br i1 %.not53, label %rb_type.exit.thread, label %bb.u

bb.u:                                             ; preds = %.critedge
  %i.cr = load i64, ptr @id_pgroup, align 8, !tbaa !47
  %i.cs = icmp eq i64 %i.cq, %i.cr
  br i1 %i.cs, label %bb.v, label %bb.ae

bb.v:                                             ; preds = %bb.u
  %i.ct = getelementptr i8, ptr %.1.i.i, i64 64   ; 3 uses
  %i.cu = load i16, ptr %i.ct, align 8            ; 3 uses
  %i.cv = and i16 %i.cu, 2
  %.not61 = icmp eq i16 %i.cv, 0
  br i1 %.not61, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cw, ptr noundef nonnull @.str) #28
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.cx = load i64, ptr %i.j, align 8, !tbaa !47  ; 5 uses
  %i.cy = and i64 %i.cx, -5
  %.not76 = icmp eq i64 %i.cy, 0
  br i1 %.not76, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = icmp eq i64 %i.cx, 20
  br i1 %i.cz, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.da = trunc i64 %i.cx to i1
  br i1 %i.da, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = call i64 @rb_fix2int(i64 noundef %i.cx) #26
  br label %rb_num2int_inline.exit

bb.ab:                                            ; preds = %bb.z
  %i.dc = call i64 @rb_num2int(i64 noundef %i.cx) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.aa, %bb.ab
  %.0.i66 = phi i64 [ %i.db, %bb.aa ], [ %i.dc, %bb.ab ] ; 2 uses
  %i.dd = trunc i64 %.0.i66 to i32                ; 2 uses
end_hunk_0
begin_hunk_1_@rb_execarg_addopt:bb.a

bb.ao:                                            ; preds = %bb.ak
  %i.et = load i64, ptr @id_umask, align 8, !tbaa !47
  %i.eu = icmp eq i64 %i.cq, %i.et
  br i1 %i.eu, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ev = load i64, ptr %i.j, align 8, !tbaa !47
  %i.ew = call i64 @rb_num2uint(i64 noundef %i.ev) #26
  %i.ex = getelementptr i8, ptr %.1.i.i, i64 64   ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 8            ; 2 uses
  %i.ez = and i16 %i.ey, 4
  %.not58 = icmp eq i16 %i.ez, 0
  br i1 %.not58, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fa = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fa, ptr noundef nonnull @.str.5) #28
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.fb = trunc i64 %i.ew to i32
  %i.fc = or disjoint i16 %i.ey, 4
  store i16 %i.fc, ptr %i.ex, align 8
  %i.fd = getelementptr i8, ptr %.1.i.i, i64 104
  store i32 %i.fb, ptr %i.fd, align 8, !tbaa !91
  br label %bb.da

bb.as:                                            ; preds = %bb.ao
  %i.fe = load i64, ptr @id_close_others, align 8, !tbaa !47
  %i.ff = icmp eq i64 %i.cq, %i.fe
  br i1 %i.ff, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %bb.as
  %i.fg = getelementptr i8, ptr %.1.i.i, i64 64   ; 4 uses
  %i.fh = load i16, ptr %i.fg, align 8            ; 2 uses
  %i.fi = and i16 %i.fh, 32
  %.not57 = icmp eq i16 %i.fi, 0
  br i1 %.not57, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fj = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fj, ptr noundef nonnull @.str.6) #28
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.fk = or disjoint i16 %i.fh, 32               ; 2 uses
  store i16 %i.fk, ptr %i.fg, align 8
  %i.fl = load i64, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.fm = icmp eq i64 %i.fl, 4
  br i1 %i.fm, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fn = call i32 @rb_bool_expected(i64 noundef %i.fl, ptr noundef nonnull @.str.7, i32 noundef 1) #26
  %i.fo = trunc i32 %i.fn to i16
  %i.fp = shl i16 %i.fo, 6
  %i.fq = and i16 %i.fp, 64
  %.pre83 = load i16, ptr %i.fg, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %i.fr = phi i16 [ %.pre83, %bb.aw ], [ %i.fk, %bb.av ]
  %i.fs = phi i16 [ %i.fq, %bb.aw ], [ 0, %bb.av ]
  %i.ft = and i16 %i.fr, -65
  %i.fu = or disjoint i16 %i.ft, %i.fs
  store i16 %i.fu, ptr %i.fg, align 8
  br label %bb.da

bb.ay:                                            ; preds = %bb.as
  %i.fv = load i64, ptr @id_in, align 8, !tbaa !47
  %i.fw = icmp eq i64 %i.cq, %i.fv
  br i1 %i.fw, label %rb_type.exit.thread74.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fx = load i64, ptr @id_out, align 8, !tbaa !47
  %i.fy = icmp eq i64 %i.cq, %i.fx
  br i1 %i.fy, label %rb_type.exit.thread74.sink.split, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fz = load i64, ptr @id_err, align 8, !tbaa !47
  %i.ga = icmp eq i64 %i.cq, %i.fz
  br i1 %i.ga, label %rb_type.exit.thread74.sink.split, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gb = load i64, ptr @id_uid, align 8, !tbaa !47
  %i.gc = icmp eq i64 %i.cq, %i.gb
  br i1 %i.gc, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.gd = getelementptr i8, ptr %.1.i.i, i64 64   ; 3 uses
  %i.ge = load i16, ptr %i.gd, align 8
  %i.gf = and i16 %i.ge, 1024
  %.not56 = icmp eq i16 %i.gf, 0
  br i1 %.not56, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gg = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gg, ptr noundef nonnull @.str.8) #28
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.b.i = load i1, ptr @under_uid_switch, align 4
  br i1 %.b.i, label %bb.bf, label %check_uid_switch.exit

bb.bf:                                            ; preds = %bb.be
  %i.gh = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gh, ptr noundef nonnull @.str.229) #28
  unreachable

check_uid_switch.exit:                            ; preds = %bb.be
  %i.gi = load i64, ptr %i.j, align 8, !tbaa !47
  %i.gj = call fastcc i32 @obj2uid0(i64 noundef %i.gi)
  %i.gk = getelementptr i8, ptr %.1.i.i, i64 108
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !92
  %i.gl = load i16, ptr %i.gd, align 8
  %i.gm = or i16 %i.gl, 1024
  store i16 %i.gm, ptr %i.gd, align 8
  br label %bb.da

bb.bg:                                            ; preds = %bb.bb
  %i.gn = load i64, ptr @id_gid, align 8, !tbaa !47
  %i.go = icmp eq i64 %i.cq, %i.gn
  br i1 %i.go, label %bb.bh, label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.gp = getelementptr i8, ptr %.1.i.i, i64 64   ; 3 uses
  %i.gq = load i16, ptr %i.gp, align 8
  %i.gr = and i16 %i.gq, 2048
  %.not55 = icmp eq i16 %i.gr, 0
  br i1 %.not55, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gs, ptr noundef nonnull @.str.9) #28
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %.b.i67 = load i1, ptr @under_gid_switch, align 4
  br i1 %.b.i67, label %bb.bk, label %check_gid_switch.exit

bb.bk:                                            ; preds = %bb.bj
  %i.gt = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.gt, ptr noundef nonnull @.str.230) #28
  unreachable

check_gid_switch.exit:                            ; preds = %bb.bj
  %i.gu = load i64, ptr %i.j, align 8, !tbaa !47
  %i.gv = call fastcc i32 @obj2gid0(i64 noundef %i.gu)
  %i.gw = getelementptr i8, ptr %.1.i.i, i64 112
  store i32 %i.gv, ptr %i.gw, align 8, !tbaa !93
  %i.gx = load i16, ptr %i.gp, align 8
  %i.gy = or i16 %i.gx, 2048
  store i16 %i.gy, ptr %i.gp, align 8
  br label %bb.da

bb.bl:                                            ; preds = %bb.bg
  %i.gz = icmp eq i64 %i.cq, 3505
  br i1 %i.gz, label %bb.bm, label %rb_type.exit.thread

bb.bm:                                            ; preds = %bb.bl
  %i.ha = getelementptr i8, ptr %.1.i.i, i64 64   ; 4 uses
  %i.hb = load i16, ptr %i.ha, align 8            ; 2 uses
  %i.hc = and i16 %i.hb, 8192
  %.not54 = icmp eq i16 %i.hc, 0
  br i1 %.not54, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hd = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.hd, ptr noundef nonnull @.str.10) #28
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.he = or disjoint i16 %i.hb, 8192             ; 2 uses
  store i16 %i.he, ptr %i.ha, align 8
  %i.hf = load i64, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 4
  br i1 %i.hg, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hh = call i32 @rb_bool_expected(i64 noundef %i.hf, ptr noundef nonnull @.str.11, i32 noundef 1) #26
  %i.hi = trunc i32 %i.hh to i16
  %i.hj = shl i16 %i.hi, 12
  %i.hk = and i16 %i.hj, 4096
  %.pre = load i16, ptr %i.ha, align 8
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.hl = phi i16 [ %.pre, %bb.bp ], [ %i.he, %bb.bo ]
  %i.hm = phi i16 [ %i.hk, %bb.bp ], [ 0, %bb.bo ]
  %i.hn = and i16 %i.hl, -4097
  %i.ho = or disjoint i16 %i.hn, %i.hm
  store i16 %i.ho, ptr %i.ha, align 8
  br label %bb.da

rb_type.exit.thread74.sink.split:                 ; preds = %bb.ba, %bb.az, %bb.ay
  %.sink = phi i64 [ 3, %bb.az ], [ 1, %bb.ay ], [ 5, %bb.ba ] ; 2 uses
  store i64 %.sink, ptr %i.i, align 8, !tbaa !47
  br label %rb_type.exit.thread74

rb_type.exit.thread74:                            ; preds = %rb_type.exit.thread74.sink.split, %bb.f, %rb_type.exit, %rb_type.exit, %rb_type.exit
  %i.hp = phi i64 [ %1, %bb.f ], [ %1, %rb_type.exit ], [ %1, %rb_type.exit ], [ %1, %rb_type.exit ], [ %.sink, %rb_type.exit.thread74.sink.split ] ; 12 uses
  %i.hq = load i64, ptr %i.j, align 8, !tbaa !47  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.hq, ptr %i.a, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #26
  %i.hr = icmp eq i64 %i.hq, 0
  %i.hs = and i64 %i.hq, 7
  %i.ht = icmp ne i64 %i.hs, 0
  %i.hu = or i1 %i.hr, %i.ht
  br i1 %i.hu, label %bb.br, label %rb_type.exit.i

bb.br:                                            ; preds = %rb_type.exit.thread74
  %4 = call i64 @llvm.fshl.i64(i64 %i.hq, i64 %i.hq, i64 62)
  switch i64 %4, label %bb.bs [
    i64 0, label %rb_type.exit.thread.i
    i64 1, label %rb_type.exit.thread.i
    i64 5, label %rb_type.exit.thread.i
    i64 9, label %rb_type.exit.thread.i
  ]

bb.bs:                                            ; preds = %bb.br
  %i.hv = trunc i64 %i.hq to i1
  br i1 %i.hv, label %rb_type.exit.thread79.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.hw = and i64 %i.hq, 254
  %i.hx = icmp eq i64 %i.hw, 12
  br i1 %i.hx, label %rb_type.exit.thread77.i, label %rb_type.exit.thread.i

rb_type.exit.i:                                   ; preds = %rb_type.exit.thread74
  %i.hy = inttoptr i64 %i.hq to ptr               ; 3 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !71
  %i.ia = trunc i64 %i.hz to i32
  %i.ib = and i32 %i.ia, 31
  switch i32 %i.ib, label %rb_type.exit.thread.i [
    i32 20, label %rb_type.exit.thread77.i
    i32 11, label %bb.cc
    i32 21, label %rb_type.exit.thread79.i
    i32 7, label %bb.cd
    i32 5, label %bb.co
  ]

rb_type.exit.thread77.i:                          ; preds = %rb_type.exit.i, %bb.bt
  %i.ic = call i64 @rb_check_id(ptr noundef nonnull %i.a) #26 ; 4 uses
  %i.id = load i64, ptr @id_close, align 8, !tbaa !47
  %i.ie = icmp eq i64 %i.ic, %i.id
  br i1 %i.ie, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %rb_type.exit.thread77.i
  %i.if = getelementptr i8, ptr %.1.i.i, i64 128  ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !94
  %i.ih = call fastcc i64 @check_exec_redirect1(i64 noundef %i.ig, i64 noundef %i.hp, i64 noundef 4)
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !94
  br label %check_exec_redirect.exit

bb.bv:                                            ; preds = %rb_type.exit.thread77.i
  %i.ii = load i64, ptr @id_in, align 8, !tbaa !47
  %i.ij = icmp eq i64 %i.ic, %i.ii
  br i1 %i.ij, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ik = getelementptr i8, ptr %.1.i.i, i64 120  ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !95
  %i.im = call fastcc i64 @check_exec_redirect1(i64 noundef %i.il, i64 noundef %i.hp, i64 noundef 1)
  store i64 %i.im, ptr %i.ik, align 8, !tbaa !95
  br label %check_exec_redirect.exit

bb.bx:                                            ; preds = %bb.bv
  %i.in = load i64, ptr @id_out, align 8, !tbaa !47
  %i.io = icmp eq i64 %i.ic, %i.in
  br i1 %i.io, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.ip = getelementptr i8, ptr %.1.i.i, i64 120  ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !95
  %i.ir = call fastcc i64 @check_exec_redirect1(i64 noundef %i.iq, i64 noundef %i.hp, i64 noundef 3)
  store i64 %i.ir, ptr %i.ip, align 8, !tbaa !95
  br label %check_exec_redirect.exit

bb.bz:                                            ; preds = %bb.bx
  %i.is = load i64, ptr @id_err, align 8, !tbaa !47
  %i.it = icmp eq i64 %i.ic, %i.is
  br i1 %i.it, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.iu = getelementptr i8, ptr %.1.i.i, i64 120  ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !95
  %i.iw = call fastcc i64 @check_exec_redirect1(i64 noundef %i.iv, i64 noundef %i.hp, i64 noundef 5)
  store i64 %i.iw, ptr %i.iu, align 8, !tbaa !95
  br label %check_exec_redirect.exit

bb.cb:                                            ; preds = %bb.bz
  %i.ix = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  %i.iy = load i64, ptr %i.a, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ix, ptr noundef nonnull @.str.183, i64 noundef %i.iy) #28
  unreachable

bb.cc:                                            ; preds = %rb_type.exit.thread.i, %rb_type.exit.i
  %i.iz = phi i64 [ %i.nr, %rb_type.exit.thread.i ], [ %i.hq, %rb_type.exit.i ]
  %i.ja = call fastcc i64 @check_exec_redirect_fd(i64 noundef %i.iz)
  br label %rb_type.exit.thread79.i

rb_type.exit.thread79.i:                          ; preds = %bb.cc, %rb_type.exit.i, %bb.bs
  %i.jb = phi i64 [ %i.hq, %bb.bs ], [ %i.ja, %bb.cc ], [ %i.hq, %rb_type.exit.i ]
  %i.jc = getelementptr i8, ptr %.1.i.i, i64 120  ; 2 uses
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !95
  %i.je = call fastcc i64 @check_exec_redirect1(i64 noundef %i.jd, i64 noundef %i.hp, i64 noundef %i.jb)
  store i64 %i.je, ptr %i.jc, align 8, !tbaa !95
  br label %check_exec_redirect.exit

bb.cd:                                            ; preds = %rb_type.exit.i
  %i.jf = call i64 @rb_ary_entry(i64 noundef %i.hq, i64 noundef 0) #27 ; 7 uses
  store i64 %i.jf, ptr %i.b, align 8, !tbaa !47
  %i.jg = load i64, ptr %i.hy, align 8, !tbaa !71 ; 2 uses
  %i.jh = and i64 %i.jg, 8192
  %.not.i.i69 = icmp eq i64 %i.jh, 0
  br i1 %.not.i.i69, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ji = lshr i64 %i.jg, 15
  %i.jj = and i64 %i.ji, 127
  br label %rb_array_len.exit.i70

bb.cf:                                            ; preds = %bb.cd
  %i.jk = getelementptr i8, ptr %i.hy, i64 16
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !68
  br label %rb_array_len.exit.i70

rb_array_len.exit.i70:                            ; preds = %bb.cf, %bb.ce
  %.0.i69.i = phi i64 [ %i.jj, %bb.ce ], [ %i.jl, %bb.cf ]
  %i.jm = icmp eq i64 %.0.i69.i, 2
  br i1 %i.jm, label %bb.cg, label %RB_SYMBOL_P.exit.thread81.i

bb.cg:                                            ; preds = %rb_array_len.exit.i70
  %i.jn = and i64 %i.jf, 255
  %i.jo = icmp eq i64 %i.jn, 12
  br i1 %i.jo, label %RB_SYMBOL_P.exit.thread.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.jp = icmp eq i64 %i.jf, 0
  %i.jq = and i64 %i.jf, 7
  %i.jr = icmp ne i64 %i.jq, 0
  %i.js = or i1 %i.jp, %i.jr
  br i1 %i.js, label %RB_SYMBOL_P.exit.thread81.i, label %RB_SYMBOL_P.exit.i

RB_SYMBOL_P.exit.i:                               ; preds = %bb.ch
  %i.jt = inttoptr i64 %i.jf to ptr
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !71
  %i.jv = and i64 %i.ju, 31
  %i.jw = icmp eq i64 %i.jv, 20
  br i1 %i.jw, label %RB_SYMBOL_P.exit.thread.i, label %RB_SYMBOL_P.exit.thread81.i

RB_SYMBOL_P.exit.thread.i:                        ; preds = %RB_SYMBOL_P.exit.i, %bb.cg
  %i.jx = load i64, ptr @id_child, align 8, !tbaa !47
  %i.jy = call i64 @rb_id2sym(i64 noundef %i.jx) #26
  %i.jz = icmp eq i64 %i.jf, %i.jy
  br i1 %i.jz, label %bb.ci, label %RB_SYMBOL_P.exit.thread81.i

bb.ci:                                            ; preds = %RB_SYMBOL_P.exit.thread.i
  %i.ka = call i64 @rb_ary_entry(i64 noundef %i.hq, i64 noundef 1) #27
  %i.kb = call fastcc i64 @check_exec_redirect_fd(i64 noundef %i.ka)
  %i.kc = getelementptr i8, ptr %.1.i.i, i64 144  ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !96
  %i.ke = call fastcc i64 @check_exec_redirect1(i64 noundef %i.kd, i64 noundef %i.hp, i64 noundef %i.kb)
  store i64 %i.ke, ptr %i.kc, align 8, !tbaa !96
  br label %check_exec_redirect.exit

RB_SYMBOL_P.exit.thread81.i:                      ; preds = %RB_SYMBOL_P.exit.thread.i, %RB_SYMBOL_P.exit.i, %bb.ch, %rb_array_len.exit.i70
  %i.kf = call i64 @rb_get_path(i64 noundef %i.jf) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  store ptr %i.b, ptr %i.d, align 8, !tbaa !81
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.d) #26, !srcloc !97
  %i.kg = load ptr, ptr %i.d, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  store volatile i64 %i.kf, ptr %i.kg, align 8, !tbaa !47
  %i.kh = load i64, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  %i.ki = call i64 @rb_ary_entry(i64 noundef %i.kh, i64 noundef 1) #27 ; 6 uses
  store i64 %i.ki, ptr %i.c, align 8, !tbaa !47
  %i.kj = icmp eq i64 %i.ki, 4
  br i1 %i.kj, label %bb.cl, label %bb.cj

bb.cj:                                            ; preds = %RB_SYMBOL_P.exit.thread81.i
  %i.kk = icmp eq i64 %i.ki, 0
  %i.kl = and i64 %i.ki, 7
  %i.km = icmp ne i64 %i.kl, 0
  %i.kn = or i1 %i.kk, %i.km
  br i1 %i.kn, label %rbimpl_RB_TYPE_P_fastpath.exit67.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit67.i

rbimpl_RB_TYPE_P_fastpath.exit67.i:               ; preds = %bb.cj
  %i.ko = inttoptr i64 %i.ki to ptr
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !71
  %i.kq = and i64 %i.kp, 31
  %i.kr = icmp eq i64 %i.kq, 5
  br i1 %i.kr, label %bb.ck, label %rbimpl_RB_TYPE_P_fastpath.exit67.thread.i

bb.ck:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit67.i
  %i.ks = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.c) #26
  %i.kt = call i32 @rb_io_modestr_oflags(ptr noundef %i.ks) #26
  %i.ku = sext i32 %i.kt to i64
  %i.kv = shl nsw i64 %i.ku, 1
  %i.kw = or disjoint i64 %i.kv, 1
  br label %bb.cl

rbimpl_RB_TYPE_P_fastpath.exit67.thread.i:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit67.i, %bb.cj
  %i.kx = call i64 @rb_to_int(i64 noundef %i.ki) #26
  br label %bb.cl

bb.cl:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit67.thread.i, %bb.ck, %RB_SYMBOL_P.exit.thread81.i
  %.sink.i = phi i64 [ %i.kw, %bb.ck ], [ %i.kx, %rbimpl_RB_TYPE_P_fastpath.exit67.thread.i ], [ 1, %RB_SYMBOL_P.exit.thread81.i ]
  store i64 %.sink.i, ptr %i.c, align 8, !tbaa !47
  %i.ky = call i64 @rb_ary_entry(i64 noundef %i.kh, i64 noundef 2) #27 ; 2 uses
  %i.kz = icmp eq i64 %i.ky, 4
  br i1 %i.kz, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.la = call i64 @rb_to_int(i64 noundef %i.ky) #26
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.lb = phi i64 [ %i.la, %bb.cm ], [ 841, %bb.cl ]
  %i.lc = load i64, ptr %i.b, align 8, !tbaa !47
  %i.ld = call i64 @rb_str_dup(i64 noundef %i.lc) #26 ; 2 uses
  %i.le = inttoptr i64 %i.ld to ptr
  %i.lf = getelementptr i8, ptr %i.le, i64 8
  store i64 0, ptr %i.lf, align 8, !tbaa !47
  %i.lg = load i64, ptr %i.c, align 8, !tbaa !47
  %i.lh = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 4, i64 noundef %i.ld, i64 noundef %i.lg, i64 noundef %i.lb, i64 noundef 4) #26 ; 2 uses
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr i8, ptr %i.li, i64 8
  store i64 0, ptr %i.lj, align 8, !tbaa !47
  %i.lk = getelementptr i8, ptr %.1.i.i, i64 136  ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !98
  %i.lm = call fastcc i64 @check_exec_redirect1(i64 noundef %i.ll, i64 noundef %i.hp, i64 noundef %i.lh)
  store i64 %i.lm, ptr %i.lk, align 8, !tbaa !98
  br label %check_exec_redirect.exit

bb.co:                                            ; preds = %rb_type.exit.i
  store i64 %i.hq, ptr %i.b, align 8, !tbaa !47
  %i.ln = call i64 @rb_get_path(i64 noundef %i.hq) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  store ptr %i.b, ptr %i.e, align 8, !tbaa !81
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.e) #26, !srcloc !99
  %i.lo = load ptr, ptr %i.e, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  store volatile i64 %i.ln, ptr %i.lo, align 8, !tbaa !47
  %i.lp = and i64 %i.hp, 7
  %.not108 = icmp eq i64 %i.lp, 0
  br i1 %.not108, label %rbimpl_RB_TYPE_P_fastpath.exit65.i, label %rbimpl_RB_TYPE_P_fastpath.exit65.thread.i

rbimpl_RB_TYPE_P_fastpath.exit65.i:               ; preds = %bb.co
  %i.lq = inttoptr i64 %i.hp to ptr
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !71
  %i.ls = and i64 %i.lr, 31
  %i.lt = icmp eq i64 %i.ls, 11
  br i1 %i.lt, label %bb.cp, label %rbimpl_RB_TYPE_P_fastpath.exit65.thread.i

bb.cp:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit65.i
  %i.lu = call fastcc i64 @check_exec_redirect_fd(i64 noundef %i.hp)
  br label %rbimpl_RB_TYPE_P_fastpath.exit65.thread.i

rbimpl_RB_TYPE_P_fastpath.exit65.thread.i:        ; preds = %bb.cp, %rbimpl_RB_TYPE_P_fastpath.exit65.i, %bb.co
  %.059.i = phi i64 [ %i.lu, %bb.cp ], [ %i.hp, %rbimpl_RB_TYPE_P_fastpath.exit65.i ], [ %i.hp, %bb.co ] ; 6 uses
  %i.lv = trunc i64 %.059.i to i1
  br i1 %i.lv, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit65.thread.i
  %i.lw = call i64 @rb_fix2int(i64 noundef %.059.i) #26
  %i.lx = and i64 %i.lw, 4294967295
  %i.ly = icmp eq i64 %i.lx, 1
  br i1 %i.ly, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lz = call i64 @rb_fix2int(i64 noundef %.059.i) #26
  %i.ma = and i64 %i.lz, 4294967295
  %i.mb = icmp eq i64 %i.ma, 2
  br i1 %i.mb, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %rbimpl_RB_TYPE_P_fastpath.exit65.thread.i
  %i.mc = and i64 %.059.i, 7
  %.not109 = icmp eq i64 %i.mc, 0
  br i1 %.not109, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.cs
  %i.md = inttoptr i64 %.059.i to ptr             ; 5 uses
  %i.me = load i64, ptr %i.md, align 8, !tbaa !71 ; 2 uses
  %i.mf = and i64 %i.me, 31
  %i.mg = icmp eq i64 %i.mf, 7
  br i1 %i.mg, label %.preheader.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

.preheader.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.mh = getelementptr i8, ptr %i.md, i64 16     ; 3 uses
  %i.mi = getelementptr i8, ptr %i.md, i64 32
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cw, %.preheader.i
  %i.mj = phi i64 [ %.pre.i, %bb.cw ], [ %i.me, %.preheader.i ] ; 4 uses
  %.060.i = phi i32 [ %i.mz, %bb.cw ], [ 0, %.preheader.i ] ; 2 uses
  %i.mk = sext i32 %.060.i to i64                 ; 4 uses
  %i.ml = and i64 %i.mj, 8192
  %.not.i70.i = icmp eq i64 %i.ml, 0
  br i1 %.not.i70.i, label %rb_array_len.exit72.i, label %rb_array_len.exit72.thread.i

rb_array_len.exit72.i:                            ; preds = %bb.ct
  %i.mm = load i64, ptr %i.mh, align 8, !tbaa !68
  %i.mn = icmp sgt i64 %i.mm, %i.mk
  br i1 %i.mn, label %bb.cu, label %split.i

rb_array_len.exit72.thread.i:                     ; preds = %bb.ct
  %i.mo = lshr i64 %i.mj, 15
  %i.mp = and i64 %i.mo, 127
  %i.mq = icmp sgt i64 %i.mp, %i.mk
  br i1 %i.mq, label %RARRAY_AREF.exit.i, label %split.i

bb.cu:                                            ; preds = %rb_array_len.exit72.i
  %i.mr = load ptr, ptr %i.mi, align 8, !tbaa !68
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.cu, %rb_array_len.exit72.thread.i
  %.0.i.i.i = phi ptr [ %i.mr, %bb.cu ], [ %i.mh, %rb_array_len.exit72.thread.i ]
  %i.ms = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.mk
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !47
  %i.mu = call fastcc i64 @check_exec_redirect_fd(i64 noundef %i.mt) ; 2 uses
  %i.mv = call i64 @rb_fix2int(i64 noundef %i.mu) #26
  %i.mw = and i64 %i.mv, 4294967295
  %.not.i = icmp eq i64 %i.mw, 1
  br i1 %.not.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %RARRAY_AREF.exit.i
  %i.mx = call i64 @rb_fix2int(i64 noundef %i.mu) #26
  %i.my = and i64 %i.mx, 4294967295
  %.not63.i = icmp eq i64 %i.my, 2
  br i1 %.not63.i, label %bb.cw, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.cv
  %.pre88.i = load i64, ptr %i.md, align 8, !tbaa !71
  br label %split.i

bb.cw:                                            ; preds = %bb.cv, %RARRAY_AREF.exit.i
  %i.mz = add i32 %.060.i, 1
  %.pre.i = load i64, ptr %i.md, align 8, !tbaa !71
  br label %bb.ct, !llvm.loop !100

split.i:                                          ; preds = %rb_array_len.exit72.thread.i, %rb_array_len.exit72.i, %._crit_edge.i
  %i.na = phi i64 [ %.pre88.i, %._crit_edge.i ], [ %i.mj, %rb_array_len.exit72.i ], [ %i.mj, %rb_array_len.exit72.thread.i ] ; 2 uses
  %i.nb = and i64 %i.na, 8192
  %.not.i73.i = icmp eq i64 %i.nb, 0
  br i1 %.not.i73.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %split.i
  %i.nc = lshr i64 %i.na, 15
  %i.nd = and i64 %i.nc, 127
  br label %rb_array_len.exit75.i

bb.cy:                                            ; preds = %split.i
  %i.ne = load i64, ptr %i.mh, align 8, !tbaa !68
  br label %rb_array_len.exit75.i

rb_array_len.exit75.i:                            ; preds = %bb.cy, %bb.cx
  %.0.i74.i = phi i64 [ %i.nd, %bb.cx ], [ %i.ne, %bb.cy ]
  %i.nf = icmp eq i64 %.0.i74.i, %i.mk
  %spec.select.i68 = select i1 %i.nf, i64 1155, i64 1
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rb_array_len.exit75.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.cs, %bb.cr, %bb.cq
  %i.ng = phi i64 [ %spec.select.i68, %rb_array_len.exit75.i ], [ 1155, %bb.cq ], [ 1155, %bb.cr ], [ 1, %bb.cs ], [ 1, %rbimpl_RB_TYPE_P_fastpath.exit.i ]
  %i.nh = load i64, ptr %i.b, align 8, !tbaa !47
  %i.ni = call i64 @rb_str_dup(i64 noundef %i.nh) #26 ; 2 uses
  %i.nj = inttoptr i64 %i.ni to ptr
  %i.nk = getelementptr i8, ptr %i.nj, i64 8
  store i64 0, ptr %i.nk, align 8, !tbaa !47
  %i.nl = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 4, i64 noundef %i.ni, i64 noundef %i.ng, i64 noundef 841, i64 noundef 4) #26 ; 2 uses
  %i.nm = inttoptr i64 %i.nl to ptr
  %i.nn = getelementptr i8, ptr %i.nm, i64 8
  store i64 0, ptr %i.nn, align 8, !tbaa !47
  %i.no = getelementptr i8, ptr %.1.i.i, i64 136  ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !98
  %i.nq = call fastcc i64 @check_exec_redirect1(i64 noundef %i.np, i64 noundef %.059.i, i64 noundef %i.nl)
  store i64 %i.nq, ptr %i.no, align 8, !tbaa !98
  br label %check_exec_redirect.exit

rb_type.exit.thread.i:                            ; preds = %rb_type.exit.i, %bb.bt, %bb.br, %bb.br, %bb.br, %bb.br
  %i.nr = call i64 @rb_io_check_io(i64 noundef %i.hq) #26 ; 2 uses
  %i.ns = icmp eq i64 %i.nr, 4
  br i1 %i.ns, label %bb.cz, label %bb.cc

bb.cz:                                            ; preds = %rb_type.exit.thread.i
  %i.nt = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.nt, ptr noundef nonnull @.str.184) #28
  unreachable

check_exec_redirect.exit:                         ; preds = %bb.bu, %bb.bw, %bb.by, %bb.ca, %rb_type.exit.thread79.i, %bb.ci, %bb.cn, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.da

bb.da:                                            ; preds = %bb.ad, %bb.an, %bb.ax, %check_uid_switch.exit, %bb.bq, %check_gid_switch.exit, %bb.ar, %bb.aj, %check_exec_redirect.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #26
  store ptr %i.h, ptr %i.m, align 8, !tbaa !81
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.m) #26, !srcloc !101
  %i.nu = load ptr, ptr %i.m, align 8, !tbaa !81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #26
  br label %rb_type.exit.thread.sink.split

rb_type.exit.thread.sink.split:                   ; preds = %bb.da, %rb_execarg_addopt_rlimit.exit
  %.sink107 = phi ptr [ %i.cp, %rb_execarg_addopt_rlimit.exit ], [ %i.nu, %bb.da ]
  %i.nv = load volatile i64, ptr %.sink107, align 8, !tbaa !47 ; 0 uses
  br label %rb_type.exit.thread

rb_type.exit.thread:                              ; preds = %bb.e, %rb_type.exit.thread.sink.split, %bb.g, %rb_type.exit, %bb.bl, %.critedge
  %.1 = phi i32 [ 1, %bb.bl ], [ 1, %bb.g ], [ 1, %.critedge ], [ 0, %rb_type.exit.thread.sink.split ], [ 1, %rb_type.exit ], [ 1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @rb_execarg_get(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %.critedge.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, !prof !70

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !71
  %i.g = and i64 %i.f, 95
  %or.cond.not.i = icmp eq i64 %i.g, 76
  br i1 %or.cond.not.i, label %bb.b, label %.critedge.i, !prof !72

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48   ; 2 uses
  %i.j = and i64 %i.i, -2                         ; 2 uses
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = trunc i64 %i.i to i1
  %i.m = getelementptr i8, ptr %i.e, i64 32       ; 2 uses
  br i1 %i.l, label %RTYPEDDATA_GET_DATA.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  br label %RTYPEDDATA_GET_DATA.exit.i

RTYPEDDATA_GET_DATA.exit.i:                       ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %i.n, %bb.c ], [ %i.m, %bb.b ] ; 2 uses
  %i.p = icmp eq i64 %i.j, ptrtoint (ptr @exec_arg_data_type to i64)
  br i1 %i.p, label %rbimpl_check_typeddata.exit, label %.preheader.i, !prof !64

.preheader.i:                                     ; preds = %RTYPEDDATA_GET_DATA.exit.i, %bb.d
  %.016.i = phi ptr [ %i.r, %bb.d ], [ %i.k, %RTYPEDDATA_GET_DATA.exit.i ] ; 2 uses
  %.not.i = icmp eq ptr %.016.i, null
  br i1 %.not.i, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.q = getelementptr i8, ptr %.016.i, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 2 uses
  %i.s = icmp eq ptr %i.r, @exec_arg_data_type
  br i1 %i.s, label %rbimpl_check_typeddata.exit, label %.preheader.i, !llvm.loop !78

.critedge.i:                                      ; preds = %.preheader.i, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.a
  %i.t = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @exec_arg_data_type) #26
  br label %rbimpl_check_typeddata.exit

rbimpl_check_typeddata.exit:                      ; preds = %bb.d, %RTYPEDDATA_GET_DATA.exit.i, %.critedge.i
  %.1.i = phi ptr [ %i.t, %.critedge.i ], [ %i.o, %RTYPEDDATA_GET_DATA.exit.i ], [ %i.o, %bb.d ]
  ret ptr %.1.i
}

declare i64 @rb_check_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #5

declare i32 @rb_bool_expected(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @rb_get_path(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_encode_ospath(i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_dup(i64 noundef) local_unnamed_addr #3

end_hunk_1
begin_hunk_2_@pst_message_status:bb.a
  %i.q = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %0, ptr noundef nonnull @.str.237, i32 noundef %i.p) #26 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = and i32 %1, 128
  %.not25 = icmp eq i32 %i.r, 0
  br i1 %.not25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call i64 @rb_str_cat(i64 noundef %0, ptr noundef nonnull @.str.238, i64 noundef 14) #26 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret i64 %0
}

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_exc_new_str(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @ruby_signal_name(i32 noundef) local_unnamed_addr #12

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #9

declare i64 @rb_fiber_scheduler_kernel_sleepv(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_thread_sleep_forever() local_unnamed_addr #3

declare void @rb_thread_wait_for(i64, i64) local_unnamed_addr #3

declare { i64, i64 } @rb_time_interval(i64 noundef) local_unnamed_addr #3

declare i64 @rb_f_kill(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 2, 4294967296) i64 @proc_wait(i32 noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %or.cond = icmp ugt i32 %0, 2
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 2) #28
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.c = icmp eq i32 %0, 0
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.d = load i64, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.e = trunc i64 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i64 @rb_fix2int(i64 noundef %i.d) #26
  br label %rb_num2int_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.g = tail call i64 @rb_num2int(i64 noundef %i.d) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.g, %bb.e ]
  %i.h = trunc i64 %.0.i to i32                   ; 3 uses
  %i.i = icmp eq i32 %0, 2
  br i1 %i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %rb_num2int_inline.exit
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i64 @rb_num2uint(i64 noundef %i.k) #26
  %i.n = trunc i64 %i.m to i32
  br label %bb.h

bb.h:                                             ; preds = %rb_num2int_inline.exit, %bb.f, %bb.g, %rb_check_arity.exit
  %.1 = phi i32 [ 0, %rb_check_arity.exit ], [ 0, %bb.f ], [ %i.n, %bb.g ], [ 0, %rb_num2int_inline.exit ]
  %.010 = phi i32 [ -1, %rb_check_arity.exit ], [ %i.h, %bb.f ], [ %i.h, %bb.g ], [ %i.h, %rb_num2int_inline.exit ]
  %i.o = tail call i64 @rb_process_status_wait(i32 noundef %.010, i32 noundef %.1) ; 3 uses
  %i.p = icmp eq i64 %i.o, 4
  br i1 %i.p, label %..thread_crit_edge, label %bb.i

..thread_crit_edge:                               ; preds = %bb.h
  %.pre = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  br label %.thread

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @rb_check_typeddata(i64 noundef %i.o, ptr noundef nonnull @rb_process_status_type) #26 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !52   ; 4 uses
  %i.s = icmp eq i32 %i.r, -1
  br i1 %i.s, label %rb_waitpid.exit.thread, label %rb_waitpid.exit

rb_waitpid.exit.thread:                           ; preds = %bb.i
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !55
  %i.v = tail call ptr @rb_errno_ptr() #26
  store i32 %i.u, ptr %i.v, align 4, !tbaa !7
  br label %bb.j

rb_waitpid.exit:                                  ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec) ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !11
  store volatile ptr %i.x, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i = load volatile ptr, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i, i64 48
  %.val.i.i = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.z = getelementptr i8, ptr %.val.i.i, i64 216
  store i64 %i.o, ptr %i.z, align 8, !tbaa !27
  %i.aa = icmp slt i32 %i.r, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %rb_waitpid.exit.thread, %rb_waitpid.exit
  %i.ab = tail call ptr @rb_errno_ptr() #26
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  tail call void @rb_syserr_fail(i32 noundef %i.ac, ptr noundef null) #28
  unreachable

bb.k:                                             ; preds = %rb_waitpid.exit
  %i.ad = icmp eq i32 %i.r, 0
  br i1 %i.ad, label %.thread, label %bb.l

.thread:                                          ; preds = %..thread_crit_edge, %bb.k
  %.pre-phi = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.w, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %.pre-phi, align 8, !tbaa !11
  store volatile ptr %i.ae, ptr %i.a, align 8, !tbaa !11
  %.0..0..0..0..0..0..0..0..0..0..i.i.i14 = load volatile ptr, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..0..0..i.i.i14, i64 48
  %.val.i.i15 = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.ag = getelementptr i8, ptr %.val.i.i15, i64 216
  store i64 4, ptr %i.ag, align 8, !tbaa !27
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = shl nuw i32 %i.r, 1
  %i.ai = or disjoint i32 %i.ah, 1
  %i.aj = zext i32 %i.ai to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %.0 = phi i64 [ 4, %.thread ], [ %i.aj, %bb.l ]
  ret i64 %.0
}

declare i64 @rb_thread_local_aref(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_attr_get(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_equal(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #3

declare ptr @rb_class2name(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getppid() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getpgid(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getsid(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @setsid() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getpriority(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare void @rb_gc_prepare_heap() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @rlimit_resource_type(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !47
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  %1 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62)
  switch i64 %1, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i1
  br i1 %i.f, label %rb_type.exit.thread15, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %0, 254
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %rb_type.exit.thread13, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %bb.a
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 31
  switch i32 %i.l, label %rb_type.exit.thread [
    i32 20, label %rb_type.exit.thread13
    i32 5, label %bb.g
    i32 21, label %rb_type.exit.thread15
    i32 10, label %rb_type.exit.thread15
  ]

rb_type.exit.thread13:                            ; preds = %bb.d, %rb_type.exit
  %i.m = tail call i64 @rb_sym2str(i64 noundef %0) #26
  %i.n = inttoptr i64 %i.m to ptr                 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !71
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %rb_type.exit.thread13
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  br label %RSTRING_PTR.exit

rb_type.exit.thread:                              ; preds = %bb.b, %bb.b, %bb.b, %bb.d, %bb.b, %rb_type.exit
  %i.s = tail call i64 @rb_check_string_type(i64 noundef %0) #26 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %rb_type.exit.thread15, label %bb.f

bb.f:                                             ; preds = %rb_type.exit.thread
  store i64 %i.s, ptr %i.a, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_type.exit
  %i.u = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #26
  %i.v = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.w = inttoptr i64 %i.v to ptr
  br label %RSTRING_PTR.exit

rb_type.exit.thread15:                            ; preds = %bb.c, %rb_type.exit.thread, %rb_type.exit, %rb_type.exit
  %i.x = trunc i64 %0 to i1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_type.exit.thread15
  %i.y = tail call i64 @rb_fix2int(i64 noundef %0) #26
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %rb_type.exit.thread15
  %i.z = tail call i64 @rb_num2int(i64 noundef %0) #26
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i11 = phi i64 [ %i.y, %bb.h ], [ %i.z, %bb.i ]
  %i.aa = trunc i64 %.0.i11 to i32
  br label %bb.k

RSTRING_PTR.exit:                                 ; preds = %bb.e, %rb_type.exit.thread13, %bb.g
  %i.ab = phi i64 [ %i.v, %bb.g ], [ %0, %bb.e ], [ %0, %rb_type.exit.thread13 ]
  %.09 = phi ptr [ %i.u, %bb.g ], [ %i.r, %bb.e ], [ %i.q, %rb_type.exit.thread13 ]
  %.pn = phi ptr [ %i.w, %bb.g ], [ %i.n, %bb.e ], [ %i.n, %rb_type.exit.thread13 ]
  %.08.in = getelementptr i8, ptr %.pn, i64 16
  %.08 = load i64, ptr %.08.in, align 8, !tbaa !79
  %i.ac = call fastcc range(i32 -1, 16) i32 @rlimit_resource_name2int(ptr noundef readonly %.09, i64 noundef %.08, i32 noundef 0) ; 2 uses
  %.not = icmp eq i32 %i.ac, -1
  br i1 %.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.243, i64 noundef %i.ab) #28
  unreachable

bb.k:                                             ; preds = %RSTRING_PTR.exit, %rb_num2int_inline.exit
  %.0 = phi i32 [ %i.aa, %rb_num2int_inline.exit ], [ %i.ac, %RSTRING_PTR.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @rlimit_resource_value(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !47
  %i.b = icmp eq i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %rb_type.exit

bb.b:                                             ; preds = %bb.a
  %1 = tail call i64 @llvm.fshl.i64(i64 %0, i64 %0, i64 62)
  switch i64 %1, label %bb.c [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i1
  br i1 %i.f, label %rb_type.exit.thread11, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = and i64 %0, 254
  %i.h = icmp eq i64 %i.g, 12
  br i1 %i.h, label %rb_type.exit.thread9, label %rb_type.exit.thread

rb_type.exit:                                     ; preds = %bb.a
  %i.i = inttoptr i64 %0 to ptr
  %i.j = load i64, ptr %i.i, align 8, !tbaa !71
  %i.k = trunc i64 %i.j to i32
  %i.l = and i32 %i.k, 31
  switch i32 %i.l, label %rb_type.exit.thread [
    i32 20, label %rb_type.exit.thread9
    i32 5, label %bb.g
    i32 21, label %rb_type.exit.thread11
    i32 10, label %rb_type.exit.thread11
  ]

rb_type.exit.thread9:                             ; preds = %bb.d, %rb_type.exit
  %i.m = tail call i64 @rb_sym2str(i64 noundef %0) #26
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !71
  %i.p = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.p, 0
  %i.q = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %rb_type.exit.thread9
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68
  br label %RSTRING_PTR.exit

rb_type.exit.thread:                              ; preds = %bb.b, %bb.b, %bb.b, %bb.d, %bb.b, %rb_type.exit
  %i.s = tail call i64 @rb_check_string_type(i64 noundef %0) #26 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4
  br i1 %i.t, label %rb_type.exit.thread11, label %bb.f

bb.f:                                             ; preds = %rb_type.exit.thread
  store i64 %i.s, ptr %i.a, align 8, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %rb_type.exit
  %i.u = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #26
  br label %RSTRING_PTR.exit

rb_type.exit.thread11:                            ; preds = %bb.c, %rb_type.exit.thread, %rb_type.exit, %rb_type.exit
  %i.v = trunc i64 %0 to i1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_type.exit.thread11
  %i.w = ashr i64 %0, 1
  br label %rb_num2ulong_inline.exit

bb.i:                                             ; preds = %rb_type.exit.thread11
  %i.x = tail call i64 @rb_num2ulong(i64 noundef %0) #26
  br label %rb_num2ulong_inline.exit

RSTRING_PTR.exit:                                 ; preds = %bb.e, %rb_type.exit.thread9, %bb.g
  %.0 = phi ptr [ %i.u, %bb.g ], [ %i.r, %bb.e ], [ %i.q, %rb_type.exit.thread9 ] ; 3 uses
  %i.y = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(9) @.str.244) #27
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %rb_num2ulong_inline.exit, label %bb.j

bb.j:                                             ; preds = %RSTRING_PTR.exit
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(10) @.str.245) #27
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %rb_num2ulong_inline.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.0, ptr noundef nonnull dereferenceable(10) @.str.246) #27
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %rb_num2ulong_inline.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = load i64, ptr @rb_eArgError, align 8, !tbaa !47
  %i.af = load i64, ptr %i.a, align 8, !tbaa !47
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ae, ptr noundef nonnull @.str.247, i64 noundef %i.af) #28
  unreachable

rb_num2ulong_inline.exit:                         ; preds = %bb.i, %bb.h, %bb.k, %bb.j, %RSTRING_PTR.exit
  %.06 = phi i64 [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %RSTRING_PTR.exit ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  ret i64 %.06
}

declare i64 @rb_uint2big(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @setresuid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @getgid() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @setresgid(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

declare i32 @initgroups(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @getgroups(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @maxgroups() unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @_maxgroups, align 4, !tbaa !7 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @sysconf(i32 noundef 3) #26
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  %spec.store.select = select i1 %i.e, i32 65536, i32 %i.d ; 2 uses
  store i32 %spec.store.select, ptr @_maxgroups, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ %spec.store.select, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %i.f
}

; Function Attrs: nounwind
declare i32 @setgroups(i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #24

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @times(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @make_clock_result(ptr noundef nonnull readonly captures(none) %0, ptr noundef nonnull captures(none) %1, ptr noundef nonnull captures(none) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr @id_nanosecond, align 8, !tbaa !47
  %i.b = tail call i64 @rb_id2sym(i64 noundef %i.a) #26
  %i.c = icmp eq i64 %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 1000000000, ptr %1, align 8, !tbaa !211
  %i.d = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i64, ptr @id_microsecond, align 8, !tbaa !47
  %i.f = tail call i64 @rb_id2sym(i64 noundef %i.e) #26
  %i.g = icmp eq i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 1000000, ptr %1, align 8, !tbaa !211
  %i.h = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr @id_millisecond, align 8, !tbaa !47
  %i.j = tail call i64 @rb_id2sym(i64 noundef %i.i) #26
  %i.k = icmp eq i64 %3, %i.j
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i64 1000, ptr %1, align 8, !tbaa !211
  %i.l = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.g:                                             ; preds = %bb.e
  %i.m = load i64, ptr @id_second, align 8, !tbaa !47
  %i.n = tail call i64 @rb_id2sym(i64 noundef %i.m) #26
  %i.o = icmp eq i64 %3, %i.n
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = tail call fastcc i64 @timetick2integer(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef %2)
  br label %timetick2dblnum.exit

bb.i:                                             ; preds = %bb.g
  %i.q = load i64, ptr @id_float_microsecond, align 8, !tbaa !47
  %i.r = tail call i64 @rb_id2sym(i64 noundef %i.q) #26
  %i.s = icmp eq i64 %3, %i.r
  br i1 %i.s, label %.preheader.i.i, label %bb.p

.preheader.i.i:                                   ; preds = %bb.i
  store i64 1000000, ptr %1, align 8, !tbaa !211
  %i.t = load i64, ptr %2, align 8, !tbaa !211    ; 4 uses
  %i.u = icmp eq i64 %i.t, 1
end_hunk_2
