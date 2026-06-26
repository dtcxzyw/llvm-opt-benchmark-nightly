inline.NumInlined: 1399
inline.NumDeleted: 321
begin_hunk_0_@thread_do_start_proc:bb.a
  %.0.i.i.i = phi i64 [ %i.z, %bb.e ], [ %i.ab, %bb.f ]
  %.not.i41 = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not.i41, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.ac = getelementptr i8, ptr %i.q, i64 32
  %i.ad = load atomic volatile i32, ptr %i.ac monotonic, align 8
  %i.ae = getelementptr i8, ptr %i.q, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !50
  %i.ag = xor i32 %i.af, -1
  %i.ah = and i32 %i.ad, %i.ag
  %.not16.i = icmp eq i32 %i.ah, 0
  br i1 %.not16.i, label %vm_check_ints_blocking.exit, label %bb.i, !prof !49

bb.h:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i
  %i.ai = getelementptr i8, ptr %.val.i, i64 248  ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, -65
  store i8 %i.ak, ptr %i.ai, align 8
  %i.al = getelementptr i8, ptr %i.q, i64 32
  %i.am = atomicrmw volatile or ptr %i.al, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i, i32 noundef 1), !inline_history !51
  %.not13.i = icmp eq i32 %i.an, 0
  br i1 %.not13.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr i8, ptr %i.q, i64 32
  %i.ap = load atomic volatile i32, ptr %i.ao monotonic, align 8
  %i.aq = getelementptr i8, ptr %i.q, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !50
  %i.as = xor i32 %i.ar, -1
  %i.at = and i32 %i.ap, 10
  %i.au = and i32 %i.at, %i.as
  %.not17.i = icmp eq i32 %i.au, 0
  br i1 %.not17.i, label %vm_check_ints_blocking.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.av = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i) #17, !inline_history !51 ; 2 uses
  %.not14.i = icmp eq i64 %i.av, 4
  br i1 %.not14.i, label %vm_check_ints_blocking.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.av) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit

vm_check_ints_blocking.exit:                      ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  %i.ax = getelementptr i8, ptr %0, i64 416
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !254
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %bb.m, label %bb.w

bb.m:                                             ; preds = %vm_check_ints_blocking.exit
  %i.ba = getelementptr i8, ptr %0, i64 24        ; 3 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56
  %.val = load i64, ptr %i.bb, align 8, !tbaa !487
  %i.bc = load i64, ptr @cThGroup, align 8, !tbaa !144
  %i.bd = tail call i64 @rb_obj_alloc(i64 noundef %i.bc) #17 ; 2 uses
  %i.be = load ptr, ptr %i.ba, align 8, !tbaa !56
  %i.bf = getelementptr i8, ptr %i.be, i64 328
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !403
  %i.bg = getelementptr i8, ptr %0, i64 264
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !253
  %i.bh = tail call i64 @rb_fix2int(i64 noundef %i.c) #17 ; 2 uses
  %i.bi = trunc i64 %i.bh to i32                  ; 2 uses
  %sext75 = shl i64 %i.bh, 32                     ; 2 uses
  %i.bj = ashr exact i64 %sext75, 32              ; 2 uses
  %i.bk = icmp ugt i64 %i.bj, 2305843009213693951
  br i1 %i.bk, label %bb.n, label %rbimpl_size_mul_or_raise.exit, !prof !139

bb.n:                                             ; preds = %bb.m
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %i.bj) #41
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.m
  %i.bl = ashr exact i64 %sext75, 29
  %i.bm = alloca i8, i64 %i.bl, align 16          ; 2 uses
  %i.bn = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !56
  call void @rb_ractor_receive_parameters(ptr noundef %i.bn, ptr noundef %i.bo, i32 noundef %i.bi, ptr noundef nonnull %i.bm) #17
  %i.bp = load ptr, ptr %i.h, align 8, !tbaa !67  ; 6 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 48
  %.val.i43 = load ptr, ptr %i.bq, align 8, !tbaa !11 ; 4 uses
  %i.br = getelementptr i8, ptr %.val.i43, i64 280
  %.val15.i44 = load i64, ptr %i.br, align 8, !tbaa !25
  %i.bs = inttoptr i64 %.val15.i44 to ptr         ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !46 ; 2 uses
  %i.bu = and i64 %i.bt, 8192
  %.not.i.i.i45 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i45, label %bb.p, label %bb.o

bb.o:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bv = lshr i64 %i.bt, 15
  %i.bw = and i64 %i.bv, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i46

bb.p:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.bx = getelementptr i8, ptr %i.bs, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i46

rb_threadptr_pending_interrupt_empty_p.exit.i46:  ; preds = %bb.p, %bb.o
  %.0.i.i.i47 = phi i64 [ %i.bw, %bb.o ], [ %i.by, %bb.p ]
  %.not.i48 = icmp eq i64 %.0.i.i.i47, 0
  br i1 %.not.i48, label %bb.q, label %bb.r, !prof !49

bb.q:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i46
  %i.bz = getelementptr i8, ptr %i.bp, i64 32
  %i.ca = load atomic volatile i32, ptr %i.bz monotonic, align 8
  %i.cb = getelementptr i8, ptr %i.bp, i64 36
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !50
  %i.cd = xor i32 %i.cc, -1
  %i.ce = and i32 %i.ca, %i.cd
  %.not16.i53 = icmp eq i32 %i.ce, 0
  br i1 %.not16.i53, label %vm_check_ints_blocking.exit54, label %bb.s, !prof !49

bb.r:                                             ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i46
  %i.cf = getelementptr i8, ptr %.val.i43, i64 248 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 8
  %i.ch = and i8 %i.cg, -65
  store i8 %i.ch, ptr %i.cf, align 8
  %i.ci = getelementptr i8, ptr %i.bp, i64 32
  %i.cj = atomicrmw volatile or ptr %i.ci, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ck = call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i43, i32 noundef 1), !inline_history !51
  %.not13.i49 = icmp eq i32 %i.ck, 0
  br i1 %.not13.i49, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr i8, ptr %i.bp, i64 32
  %i.cm = load atomic volatile i32, ptr %i.cl monotonic, align 8
  %i.cn = getelementptr i8, ptr %i.bp, i64 36
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !50
  %i.cp = xor i32 %i.co, -1
  %i.cq = and i32 %i.cm, 10
  %i.cr = and i32 %i.cq, %i.cp
  %.not17.i52 = icmp eq i32 %i.cr, 0
  br i1 %.not17.i52, label %vm_check_ints_blocking.exit54, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cs = call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i43) #17, !inline_history !51 ; 2 uses
  %.not14.i50 = icmp eq i64 %i.cs, 4
  br i1 %.not14.i50, label %vm_check_ints_blocking.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = call i64 @rb_fiber_scheduler_yield(i64 noundef %i.cs) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit54

vm_check_ints_blocking.exit54:                    ; preds = %bb.q, %bb.t, %bb.u, %bb.v
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.cv = getelementptr i8, ptr %0, i64 408
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !48
  %i.cx = call i64 @rb_vm_invoke_proc_with_self(ptr noundef %i.cu, ptr noundef %i.g, i64 noundef %.val, i32 noundef %i.bi, ptr noundef nonnull %i.bm, i32 noundef %i.cw, i64 noundef 0) #17
  br label %bb.aq

bb.w:                                             ; preds = %vm_check_ints_blocking.exit
  %i.cy = inttoptr i64 %i.c to ptr                ; 6 uses
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !46 ; 2 uses
  %i.da = and i64 %i.cz, 8192
  %.not.i.i = icmp eq i64 %i.da, 0                ; 3 uses
  br i1 %.not.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = lshr i64 %i.cz, 15
  %i.dc = and i64 %i.db, 127
  br label %rb_array_len.exit.i

bb.y:                                             ; preds = %bb.w
  %i.dd = getelementptr i8, ptr %i.cy, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !48
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.y, %bb.x
  %.0.i.i = phi i64 [ %i.dc, %bb.x ], [ %i.de, %bb.y ] ; 8 uses
  %i.df = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.df, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.z

bb.z:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #48
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.dg = trunc nsw i64 %.0.i.i to i32
  %i.dh = icmp slt i64 %.0.i.i, 8
  br i1 %i.dh, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %RARRAY_LENINT.exit
  %i.di = icmp ugt i64 %.0.i.i, 2305843009213693951
  br i1 %i.di, label %bb.ab, label %rbimpl_size_mul_or_raise.exit55, !prof !139

bb.ab:                                            ; preds = %bb.aa
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef range(i64 -2147483648, 2147483648) %.0.i.i) #41
  unreachable

rbimpl_size_mul_or_raise.exit55:                  ; preds = %bb.aa
  %i.dj = shl nuw nsw i64 %.0.i.i, 3              ; 2 uses
  %i.dk = alloca i8, i64 %i.dj, align 16          ; 2 uses
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %rbimpl_size_mul_or_raise.exit55
  %i.dl = getelementptr i8, ptr %i.cy, i64 16
  br label %rbimpl_size_mul_or_raise.exit58

bb.ad:                                            ; preds = %rbimpl_size_mul_or_raise.exit55
  %i.dm = getelementptr i8, ptr %i.cy, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !48
  br label %rbimpl_size_mul_or_raise.exit58

rbimpl_size_mul_or_raise.exit58:                  ; preds = %bb.ad, %bb.ac
  %.0.i57 = phi ptr [ %i.dl, %bb.ac ], [ %i.dn, %bb.ad ]
  %.not.i59 = icmp eq i64 %.0.i.i, 0
  br i1 %.not.i59, label %ruby_nonempty_memcpy.exit, label %bb.ae

bb.ae:                                            ; preds = %rbimpl_size_mul_or_raise.exit58
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.dk, ptr readonly align 1 %.0.i57, i64 range(i64 -17179869184, 17179869177) %i.dj, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit58, %bb.ae
  store i64 4, ptr %i.b, align 8, !tbaa !48
  br label %rb_array_const_ptr.exit62

bb.af:                                            ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.do = getelementptr i8, ptr %i.cy, i64 16
  br label %rb_array_const_ptr.exit62

bb.ah:                                            ; preds = %bb.af
  %i.dp = getelementptr i8, ptr %i.cy, i64 32
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !48
  br label %rb_array_const_ptr.exit62

rb_array_const_ptr.exit62:                        ; preds = %bb.ah, %bb.ag, %ruby_nonempty_memcpy.exit
  %.039 = phi ptr [ %i.dk, %ruby_nonempty_memcpy.exit ], [ %i.do, %bb.ag ], [ %i.dq, %bb.ah ]
  %i.dr = load ptr, ptr %i.h, align 8, !tbaa !67  ; 6 uses
  %i.ds = getelementptr i8, ptr %i.dr, i64 48
  %.val.i63 = load ptr, ptr %i.ds, align 8, !tbaa !11 ; 4 uses
  %i.dt = getelementptr i8, ptr %.val.i63, i64 280
  %.val15.i64 = load i64, ptr %i.dt, align 8, !tbaa !25
  %i.du = inttoptr i64 %.val15.i64 to ptr         ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !46 ; 2 uses
  %i.dw = and i64 %i.dv, 8192
  %.not.i.i.i65 = icmp eq i64 %i.dw, 0
  br i1 %.not.i.i.i65, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %rb_array_const_ptr.exit62
  %i.dx = lshr i64 %i.dv, 15
  %i.dy = and i64 %i.dx, 127
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i66

bb.aj:                                            ; preds = %rb_array_const_ptr.exit62
  %i.dz = getelementptr i8, ptr %i.du, i64 16
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !48
  br label %rb_threadptr_pending_interrupt_empty_p.exit.i66

rb_threadptr_pending_interrupt_empty_p.exit.i66:  ; preds = %bb.aj, %bb.ai
  %.0.i.i.i67 = phi i64 [ %i.dy, %bb.ai ], [ %i.ea, %bb.aj ]
  %.not.i68 = icmp eq i64 %.0.i.i.i67, 0
  br i1 %.not.i68, label %bb.ak, label %bb.al, !prof !49

bb.ak:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i66
  %i.eb = getelementptr i8, ptr %i.dr, i64 32
  %i.ec = load atomic volatile i32, ptr %i.eb monotonic, align 8
  %i.ed = getelementptr i8, ptr %i.dr, i64 36
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !50
  %i.ef = xor i32 %i.ee, -1
  %i.eg = and i32 %i.ec, %i.ef
  %.not16.i73 = icmp eq i32 %i.eg, 0
  br i1 %.not16.i73, label %vm_check_ints_blocking.exit74, label %bb.am, !prof !49

bb.al:                                            ; preds = %rb_threadptr_pending_interrupt_empty_p.exit.i66
  %i.eh = getelementptr i8, ptr %.val.i63, i64 248 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 8
  %i.ej = and i8 %i.ei, -65
  store i8 %i.ej, ptr %i.eh, align 8
  %i.ek = getelementptr i8, ptr %i.dr, i64 32
  %i.el = atomicrmw volatile or ptr %i.ek, i32 2 seq_cst, align 4 ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.em = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef nonnull %.val.i63, i32 noundef 1), !inline_history !51
  %.not13.i69 = icmp eq i32 %i.em, 0
  br i1 %.not13.i69, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.en = getelementptr i8, ptr %i.dr, i64 32
  %i.eo = load atomic volatile i32, ptr %i.en monotonic, align 8
  %i.ep = getelementptr i8, ptr %i.dr, i64 36
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !50
  %i.er = xor i32 %i.eq, -1
  %i.es = and i32 %i.eo, 10
  %i.et = and i32 %i.es, %i.er
  %.not17.i72 = icmp eq i32 %i.et, 0
  br i1 %.not17.i72, label %vm_check_ints_blocking.exit74, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.eu = tail call i64 @rb_fiber_scheduler_current_for_threadptr(ptr noundef nonnull %.val.i63) #17, !inline_history !51 ; 2 uses
  %.not14.i70 = icmp eq i64 %i.eu, 4
  br i1 %.not14.i70, label %vm_check_ints_blocking.exit74, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ev = tail call i64 @rb_fiber_scheduler_yield(i64 noundef %i.eu) #17, !inline_history !51 ; 0 uses
  br label %vm_check_ints_blocking.exit74

vm_check_ints_blocking.exit74:                    ; preds = %bb.ak, %bb.an, %bb.ao, %bb.ap
  %i.ew = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.ex = getelementptr i8, ptr %0, i64 408
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !48
  %i.ez = call i64 @rb_vm_invoke_proc(ptr noundef %i.ew, ptr noundef %i.g, i32 noundef %i.dg, ptr noundef %.039, i32 noundef %i.ey, i64 noundef 0) #17
  br label %bb.aq

bb.aq:                                            ; preds = %vm_check_ints_blocking.exit74, %vm_check_ints_blocking.exit54
  %.0 = phi i64 [ %i.cx, %vm_check_ints_blocking.exit54 ], [ %i.ez, %vm_check_ints_blocking.exit74 ]
  ret i64 %.0
}

; Function Attrs: nounwind
declare i32 @pthread_setname_np(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #40

declare i64 @rb_proc_location(i64 noundef) local_unnamed_addr #4

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #4

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @RB_FIX2INT(i64 noundef %0) unnamed_addr #18 {
bb.a:
  %i.a = tail call i64 @rb_fix2int(i64 noundef %0) #17
  %i.b = trunc i64 %i.a to i32
  ret i32 %i.b
}

declare void @rb_ractor_receive_parameters(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @rb_vm_invoke_proc_with_self(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_vm_invoke_proc(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @thread_cleanup_func_before_exec(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 248        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = or i8 %i.b, 3
  store i8 %i.c, ptr %i.a, align 8
  %i.d = getelementptr i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = getelementptr i8, ptr %i.e, i64 176
  %i.g = getelementptr i8, ptr %0, i64 296        ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.h = tail call i32 @pthread_mutex_lock(ptr noundef %i.g) #17 ; 2 uses
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %rb_native_mutex_lock.exit.preheader.i, label %bb.b

rb_native_mutex_lock.exit.preheader.i:            ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 368        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %.not.i48.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i48.i, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.1, i32 noundef %i.h) #41
  unreachable

ccan_list_pop_.exit.i:                            ; preds = %rb_native_mutex_lock.exit.preheader.i, %ccan_list_pop_.exit.i
  %i.k = phi ptr [ %i.p, %ccan_list_pop_.exit.i ], [ %i.j, %rb_native_mutex_lock.exit.preheader.i ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !72   ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !73   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !72
  store ptr %i.n, ptr %i.m, align 8, !tbaa !73
  tail call void @ruby_xfree(ptr noundef nonnull %i.k) #17
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !58   ; 2 uses
  %.not.i4.i = icmp eq ptr %i.p, %i.i
  br i1 %.not.i4.i, label %ccan_list_pop_.exit.thread.i, label %ccan_list_pop_.exit.i, !llvm.loop !488

ccan_list_pop_.exit.thread.i:                     ; preds = %ccan_list_pop_.exit.i, %rb_native_mutex_lock.exit.preheader.i
  %i.q = tail call i32 @pthread_mutex_unlock(ptr noundef %i.g) #17 ; 2 uses
  %.not.i5.i = icmp eq i32 %i.q, 0
  br i1 %.not.i5.i, label %threadptr_interrupt_exec_cleanup.exit, label %bb.c

bb.c:                                             ; preds = %ccan_list_pop_.exit.thread.i
  tail call void @rb_bug_errno(ptr noundef nonnull @.str.3, i32 noundef %i.q) #41
  unreachable

threadptr_interrupt_exec_cleanup.exit:            ; preds = %ccan_list_pop_.exit.thread.i
  tail call void @rb_threadptr_root_fiber_terminate(ptr noundef nonnull %0) #17
  ret void
}

declare void @rb_threadptr_root_fiber_terminate(ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal void @co_start(ptr nofree readnone captures(none) %0, ptr noundef %1) #24 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !267  ; 12 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 216      ; 3 uses
  %i.g = getelementptr i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.i = getelementptr i8, ptr %i.e, i64 272      ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.j, %i.i
  %i.k = select i1 %.not.i, ptr null, ptr %i.c
end_hunk_0
