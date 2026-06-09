inline.NumInlined: 3274
inline.NumDeleted: 574
begin_hunk_0_@vm_caller_setup_fwd_args:bb.a
bb.e:                                             ; preds = %vm_ci_kwarg.exit
  %i.ah = getelementptr i8, ptr %i.c, i64 -16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !11 ; 2 uses
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !77 ; 2 uses
  %i.al = and i64 %i.ak, 8192
  %.not.i = icmp eq i64 %i.al, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = lshr i64 %i.ak, 15
  %i.an = and i64 %i.am, 127
  br label %rb_array_len.exit

bb.g:                                             ; preds = %bb.e
  %i.ao = getelementptr i8, ptr %i.aj, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.f, %bb.g
  %.0.i54 = phi i64 [ %i.an, %bb.f ], [ %i.ap, %bb.g ]
  %i.aq = trunc i64 %.0.i54 to i32
  %i.ar = add i32 %.0.i6165, -1
  %i.as = add i32 %i.ar, %i.aq
  br label %bb.h

bb.h:                                             ; preds = %rb_array_len.exit, %vm_ci_kwarg.exit
  %.039 = phi i64 [ %i.ai, %rb_array_len.exit ], [ 0, %vm_ci_kwarg.exit ] ; 2 uses
  %.038 = phi i32 [ %i.as, %rb_array_len.exit ], [ %.0.i6165, %vm_ci_kwarg.exit ]
  %i.at = icmp ne i32 %4, 0
  %i.au = icmp ne ptr %3, null
  %or.cond = and i1 %i.au, %i.at
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.av = tail call fastcc i64 @vm_caller_setup_arg_block(ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef nonnull %3, i32 noundef 1)
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 32
  %.val35.i.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15 ; 2 uses
  %.0.val4.i.i.i.pre = load i64, ptr %.val35.i.pre, align 8, !tbaa !11
  br label %VM_ENV_BLOCK_HANDLER.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = getelementptr i8, ptr %1, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15 ; 6 uses
  %.0.val4.i = load i64, ptr %i.ax, align 8, !tbaa !11 ; 5 uses
  %i.ay = and i64 %.0.val4.i, 2
  %.not5.i = icmp eq i64 %i.ay, 0
  br i1 %.not5.i, label %.lr.ph.i, label %VM_EP_LEP.exit

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.06.i = phi ptr [ %i.bb, %.lr.ph.i ], [ %i.ax, %bb.j ]
  %i.az = getelementptr i8, ptr %.06.i, i64 -8
  %.0.val3.i = load i64, ptr %i.az, align 8, !tbaa !11
  %i.ba = and i64 %.0.val3.i, -4
  %i.bb = inttoptr i64 %i.ba to ptr               ; 3 uses
  %.0.val.i = load i64, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bc = and i64 %.0.val.i, 2
  %.not.i55 = icmp eq i64 %i.bc, 0
  br i1 %.not.i55, label %.lr.ph.i, label %VM_EP_LEP.exit, !llvm.loop !13

VM_EP_LEP.exit:                                   ; preds = %.lr.ph.i, %bb.j
  %.val.i = phi i64 [ %.0.val4.i, %bb.j ], [ %.0.val.i, %.lr.ph.i ]
  %.0.lcssa.i = phi ptr [ %i.ax, %bb.j ], [ %i.bb, %.lr.ph.i ]
  %i.bd = and i64 %.val.i, 2147418113
  switch i64 %i.bd, label %bb.k [
    i64 1145307137, label %VM_ENV_BLOCK_HANDLER.exit
    i64 858980353, label %VM_ENV_BLOCK_HANDLER.exit
  ]

bb.k:                                             ; preds = %VM_EP_LEP.exit
  %i.be = getelementptr i8, ptr %.0.lcssa.i, i64 -8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  br label %VM_ENV_BLOCK_HANDLER.exit

VM_ENV_BLOCK_HANDLER.exit:                        ; preds = %bb.k, %VM_EP_LEP.exit, %VM_EP_LEP.exit, %bb.i
  %.0.val4.i.i.i = phi i64 [ %.0.val4.i.i.i.pre, %bb.i ], [ %.0.val4.i, %bb.k ], [ %.0.val4.i, %VM_EP_LEP.exit ], [ %.0.val4.i, %VM_EP_LEP.exit ] ; 2 uses
  %.val35.i = phi ptr [ %.val35.i.pre, %bb.i ], [ %i.ax, %bb.k ], [ %i.ax, %VM_EP_LEP.exit ], [ %i.ax, %VM_EP_LEP.exit ] ; 2 uses
  %.0 = phi i64 [ %i.av, %bb.i ], [ %i.bf, %bb.k ], [ 0, %VM_EP_LEP.exit ], [ 0, %VM_EP_LEP.exit ]
  %i.bg = and i64 %.0.val4.i.i.i, 2
  %.not5.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not5.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i

.lr.ph.i.i.i:                                     ; preds = %VM_ENV_BLOCK_HANDLER.exit, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i ], [ %.val35.i, %VM_ENV_BLOCK_HANDLER.exit ]
  %i.bh = getelementptr i8, ptr %.06.i.i.i, i64 -8
  %.0.val3.i.i.i = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.bi = and i64 %.0.val3.i.i.i, -4
  %i.bj = inttoptr i64 %i.bi to ptr               ; 3 uses
  %.0.val.i.i.i = load i64, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bk = and i64 %.0.val.i.i.i, 2
  %.not.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %VM_CF_LEP.exit.i, !llvm.loop !13

VM_CF_LEP.exit.i:                                 ; preds = %.lr.ph.i.i.i, %VM_ENV_BLOCK_HANDLER.exit
  %.val.i57 = phi i64 [ %.0.val4.i.i.i, %VM_ENV_BLOCK_HANDLER.exit ], [ %.0.val.i.i.i, %.lr.ph.i.i.i ]
  %.0.lcssa.i.i.i = phi ptr [ %.val35.i, %VM_ENV_BLOCK_HANDLER.exit ], [ %i.bj, %.lr.ph.i.i.i ] ; 3 uses
  %i.bl = and i64 %.val.i57, 4
  %.not.i58 = icmp eq i64 %i.bl, 0
  br i1 %.not.i58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %VM_CF_LEP.exit.i
  %i.bm = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  br label %bb.o

bb.m:                                             ; preds = %VM_CF_LEP.exit.i
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.bq = getelementptr i8, ptr %0, i64 8
  %.val11.i.i = load i64, ptr %i.bq, align 8, !tbaa !122
  %i.br = getelementptr [8 x i8], ptr %.val.i.i, i64 %.val11.i.i ; 2 uses
  %i.bs = icmp ult ptr %1, %i.br
  br i1 %i.bs, label %.lr.ph.i.i, label %rb_vm_search_cf_from_ep.exit.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.0912.i.i = phi ptr [ %i.bw, %bb.n ], [ %1, %bb.m ] ; 3 uses
  %i.bt = getelementptr i8, ptr %.0912.i.i, i64 32
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15
  %i.bv = icmp eq ptr %i.bu, %.0.lcssa.i.i.i
  br i1 %i.bv, label %rb_vm_search_cf_from_ep.exit.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.bw = getelementptr i8, ptr %.0912.i.i, i64 56 ; 2 uses
  %i.bx = icmp ult ptr %i.bw, %i.br
  br i1 %i.bx, label %.lr.ph.i.i, label %rb_vm_search_cf_from_ep.exit.i, !llvm.loop !144

rb_vm_search_cf_from_ep.exit.i:                   ; preds = %bb.n, %.lr.ph.i.i, %bb.m
  %.1.i.i = phi ptr [ null, %bb.m ], [ %.0912.i.i, %.lr.ph.i.i ], [ null, %bb.n ]
  %i.by = getelementptr i8, ptr %.1.i.i, i64 16
  br label %bb.o

bb.o:                                             ; preds = %rb_vm_search_cf_from_ep.exit.i, %bb.l
  %.0.in.i = phi ptr [ %i.bp, %bb.l ], [ %i.by, %rb_vm_search_cf_from_ep.exit.i ]
  %.0.i59 = load ptr, ptr %.0.in.i, align 8, !tbaa !76
  %i.bz = getelementptr i8, ptr %.0.i59, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !124
  %i.cb = getelementptr i8, ptr %i.ca, i64 240
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !190
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !73  ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = and i64 %.039, -5
  %.not54.i = icmp eq i64 %i.cf, 0
  br i1 %.not54.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr i8, ptr %i.cd, i64 -16    ; 4 uses
  %i.ch = inttoptr i64 %.039 to ptr               ; 6 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !77 ; 3 uses
  %i.cj = and i64 %i.ci, 8192
  %.not.i36.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i36.i, label %rb_array_len.exit.i, label %rb_array_len.exit.thread.i

rb_array_len.exit.i:                              ; preds = %bb.p
  %i.ck = getelementptr i8, ptr %i.ch, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !27 ; 4 uses
  %i.cm = getelementptr [8 x i8], ptr %i.cg, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.cm, i64 56
  %.not33.i = icmp ugt ptr %1, %i.cn
  br i1 %.not33.i, label %rb_array_const_ptr.exit.i, label %bb.q, !prof !72

rb_array_len.exit.thread.i:                       ; preds = %bb.p
  %i.co = lshr i64 %i.ci, 15
  %i.cp = and i64 %i.co, 127                      ; 2 uses
  %i.cq = getelementptr [8 x i8], ptr %i.cg, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 56
  %.not3349.i = icmp ugt ptr %1, %i.cr
  br i1 %.not3349.i, label %rb_array_const_ptr.exit.thread.i, label %bb.q, !prof !72

bb.q:                                             ; preds = %rb_array_len.exit.thread.i, %rb_array_len.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

rb_array_const_ptr.exit.thread.i:                 ; preds = %rb_array_len.exit.thread.i
  %i.cs = getelementptr i8, ptr %i.ch, i64 16
  br label %rbimpl_size_mul_or_raise.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %rb_array_len.exit.i
  %i.ct = getelementptr i8, ptr %i.ch, i64 32
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !27
  %i.cv = icmp ugt i64 %i.cl, 2305843009213693951
  br i1 %i.cv, label %bb.r, label %rbimpl_size_mul_or_raise.exit.i, !prof !281

bb.r:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.cl) #42
  unreachable

rbimpl_size_mul_or_raise.exit.i:                  ; preds = %rb_array_const_ptr.exit.i, %rb_array_const_ptr.exit.thread.i
  %.0.i3863.i = phi ptr [ %i.cs, %rb_array_const_ptr.exit.thread.i ], [ %i.cu, %rb_array_const_ptr.exit.i ]
  %.0.i505262.i = phi i64 [ %i.cp, %rb_array_const_ptr.exit.thread.i ], [ %i.cl, %rb_array_const_ptr.exit.i ] ; 2 uses
  %.not.i39.i = icmp eq i64 %.0.i505262.i, 0
  br i1 %.not.i39.i, label %ruby_nonempty_memcpy.exit.i, label %bb.s

bb.s:                                             ; preds = %rbimpl_size_mul_or_raise.exit.i
  %i.cw = shl nuw i64 %.0.i505262.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.cg, ptr noundef nonnull readonly align 1 %.0.i3863.i, i64 noundef %i.cw, i1 noundef false) #23
  %.pre.i = load i64, ptr %i.ch, align 8, !tbaa !77
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.s, %rbimpl_size_mul_or_raise.exit.i
  %i.cx = phi i64 [ %i.ci, %rbimpl_size_mul_or_raise.exit.i ], [ %.pre.i, %bb.s ] ; 2 uses
  %i.cy = and i64 %i.cx, 8192
  %.not.i41.i = icmp eq i64 %i.cy, 0
  br i1 %.not.i41.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  %i.cz = lshr i64 %i.cx, 15
  %i.da = and i64 %i.cz, 127
  br label %rb_array_len.exit43.i

bb.u:                                             ; preds = %ruby_nonempty_memcpy.exit.i
  %i.db = getelementptr i8, ptr %i.ch, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !27
  br label %rb_array_len.exit43.i

rb_array_len.exit43.i:                            ; preds = %bb.u, %bb.t
  %.0.i42.i = phi i64 [ %i.da, %bb.t ], [ %i.dc, %bb.u ]
  %i.dd = getelementptr [8 x i8], ptr %i.cg, i64 %.0.i42.i
  br label %bb.v

bb.v:                                             ; preds = %rb_array_len.exit43.i, %bb.o
  %.032.i = phi ptr [ %i.dd, %rb_array_len.exit43.i ], [ %i.ce, %bb.o ] ; 2 uses
  %i.de = sext i32 %.0.i477074 to i64             ; 3 uses
  %i.df = getelementptr [8 x i8], ptr %.032.i, i64 %i.de ; 2 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 56
  %.not34.i = icmp ugt ptr %1, %i.dg
  br i1 %.not34.i, label %bb.x, label %bb.w, !prof !72

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.dh = add i32 %.0.i477074, 2
  %i.di = add i32 %i.dh, %i.cc
  %i.dj = sext i32 %i.di to i64
  %i.dk = sub nsw i64 0, %i.dj
  %i.dl = getelementptr [8 x i8], ptr %.0.lcssa.i.i.i, i64 %i.dk
  %i.dm = icmp slt i32 %.0.i477074, 0
  br i1 %i.dm, label %bb.y, label %rbimpl_size_mul_or_raise.exit44.i, !prof !177

bb.y:                                             ; preds = %bb.x
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.de) #42
  unreachable

rbimpl_size_mul_or_raise.exit44.i:                ; preds = %bb.x
  %.not.i45.i = icmp eq i32 %.0.i477074, 0
  br i1 %.not.i45.i, label %vm_adjust_stack_forwarding.exit, label %bb.z

bb.z:                                             ; preds = %rbimpl_size_mul_or_raise.exit44.i
  %i.dn = shl nuw nsw i64 %i.de, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.032.i, ptr noundef nonnull readonly align 1 %i.dl, i64 noundef %i.dn, i1 noundef false) #23
  br label %vm_adjust_stack_forwarding.exit

vm_adjust_stack_forwarding.exit:                  ; preds = %rbimpl_size_mul_or_raise.exit44.i, %bb.z
  store ptr %i.df, ptr %i.b, align 8, !tbaa !73
  %i.do = and i32 %.0.i5075, -21
  %i.dp = and i32 %.0.i4367, 8196
  %i.dq = or i32 %i.do, %i.dp
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add i32 %.038, %.0.i477074
  %i.dt = zext i32 %i.ds to i64
  store i64 106522, ptr %6, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i53, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !282
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %.0.i45, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.dr, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.dt, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !11
  store ptr %6, ptr %5, align 8, !tbaa !283
  %i.du = getelementptr i8, ptr %2, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !182
  %i.dw = getelementptr i8, ptr %5, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !279
  %i.dx = getelementptr i8, ptr %5, i64 16
  store ptr %i.f, ptr %i.dx, align 8, !tbaa !284
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_opt_send_without_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %i.a = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !63
  %i.c = and i8 %i.b, 2
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %stack_check.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.d, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.a, align 8, !tbaa !63
  %i.f = or i8 %i.e, 2
  store i8 %i.f, ptr %i.a, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.a, %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !225    ; 3 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 3 uses
  %.not.i.i.i = trunc i64 %i.h to i1              ; 2 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stack_check.exit
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %i.i, 1
  %i.k = and i32 %i.j, 32767
  br label %vm_ci_argc.exit.i

bb.e:                                             ; preds = %stack_check.exit
  %i.l = getelementptr i8, ptr %i.g, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !174
  %i.n = trunc i64 %i.m to i32
  br label %vm_ci_argc.exit.i

vm_ci_argc.exit.i:                                ; preds = %bb.e, %bb.d
  %.0.i26.i = phi i32 [ %i.k, %bb.d ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.q = sext i32 %.0.i26.i to i64
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %2, ptr %3, align 8, !tbaa !226
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.x, align 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !229
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %.0.i26.i, ptr %i.y, align 8, !tbaa !230
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 36
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %vm_ci_argc.exit.i
  %i.aa = trunc i64 %i.h to i32
  %i.ab = lshr i32 %i.aa, 16
  br label %vm_ci_flag.exit.i

bb.g:                                             ; preds = %vm_ci_argc.exit.i
  %i.ac = getelementptr i8, ptr %i.g, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !173
  %i.ae = trunc i64 %i.ad to i32
  br label %vm_ci_flag.exit.i

vm_ci_flag.exit.i:                                ; preds = %bb.g, %bb.f
  %.0.i28.i = phi i32 [ %i.ab, %bb.f ], [ %i.ae, %bb.g ]
  %i.af = trunc i32 %.0.i28.i to i8
  %i.ag = lshr i8 %i.af, 6
  %i.ah = and i8 %i.ag, 1
  store i8 %i.ah, ptr %i.z, align 4, !tbaa !231
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.ai, i8 0, i64 11, i1 false)
  %i.aj = getelementptr i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !123
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = icmp eq i64 %i.u, 0
  %i.an = and i64 %i.u, 7
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.h

bb.h:                                             ; preds = %vm_ci_flag.exit.i
  %i.aq = inttoptr i64 %i.u to ptr
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %vm_ci_flag.exit.i
  switch i64 %i.u, label %bb.l [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.j
    i64 20, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.k:                                             ; preds = %bb.i
  br label %rb_class_of.exit.i

bb.l:                                             ; preds = %bb.i
  %i.as = trunc i64 %i.u to i1
  br i1 %i.as, label %rb_class_of.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = and i64 %i.u, 254
  %i.au = icmp eq i64 %i.at, 12
  %spec.select.i.i = select i1 %i.au, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.0.in.i.i = phi ptr [ %i.ar, %bb.h ], [ @rb_cNilClass, %bb.j ], [ @rb_cTrueClass, %bb.k ], [ @rb_cFalseClass, %bb.i ], [ @rb_cInteger, %bb.l ], [ %spec.select.i.i, %bb.m ]
  %.0.i29.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11 ; 2 uses
end_hunk_0
begin_hunk_1_@vm_exec_core:bb.a
  %i.ww = load i64, ptr %i.wv, align 8, !tbaa !11
  %i.wx = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !73
  %i.wz = getelementptr i8, ptr %i.wy, i64 -8
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !11
  %i.xb = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.xb, ptr %.02257, align 8, !tbaa !146
  %i.xc = call i64 @rb_gvar_set(i64 noundef %i.ww, i64 noundef %i.xa) #23 ; 0 uses
  %i.xd = load ptr, ptr %i.wx, align 8, !tbaa !73
  %i.xe = getelementptr i8, ptr %i.xd, i64 -8
  store ptr %i.xe, ptr %i.wx, align 8, !tbaa !73
  br label %.backedge.backedge

bb.cf:                                            ; preds = %.backedge, %bb.afy
  %i.xf = getelementptr i8, ptr %.6, i64 8        ; 2 uses
  store ptr %i.xf, ptr %.02257, align 8, !tbaa !146
  %i.xg = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !73 ; 2 uses
  %i.xi = getelementptr i8, ptr %i.xh, i64 8
  store ptr %i.xi, ptr %i.xg, align 8, !tbaa !73
  store i64 4, ptr %i.xh, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cg:                                            ; preds = %.backedge, %bb.afz
  %i.xj = getelementptr i8, ptr %.6, i64 8        ; 2 uses
  store ptr %i.xj, ptr %.02257, align 8, !tbaa !146
  %i.xk = getelementptr i8, ptr %.02257, i64 24
  %i.xl = load i64, ptr %i.xk, align 8, !tbaa !74
  %i.xm = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !73 ; 2 uses
  %i.xo = getelementptr i8, ptr %i.xn, i64 8
  store ptr %i.xo, ptr %i.xm, align 8, !tbaa !73
  store i64 %i.xl, ptr %i.xn, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ch:                                            ; preds = %.backedge, %bb.aga
  %i.xp = getelementptr i8, ptr %.6, i64 8
  %i.xq = load i64, ptr %i.xp, align 8, !tbaa !11
  %i.xr = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.xr, ptr %.02257, align 8, !tbaa !146
  %i.xs = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !73 ; 2 uses
  %i.xu = getelementptr i8, ptr %i.xt, i64 8
  store ptr %i.xu, ptr %i.xs, align 8, !tbaa !73
  store i64 %i.xq, ptr %i.xt, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ci:                                            ; preds = %.backedge, %bb.agb
  %i.xv = getelementptr i8, ptr %.6, i64 8
  %i.xw = load i64, ptr %i.xv, align 8, !tbaa !11
  %i.xx = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.xx, ptr %.02257, align 8, !tbaa !146
  %i.xy = trunc i64 %i.xw to i32
  %i.xz = getelementptr i8, ptr %.02257, i64 32
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !15
  %i.yb = call fastcc i64 @vm_get_special_object(ptr noundef %i.ya, i32 noundef %i.xy)
  %i.yc = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !73 ; 2 uses
  %i.ye = getelementptr i8, ptr %i.yd, i64 8
  store ptr %i.ye, ptr %i.yc, align 8, !tbaa !73
  store i64 %i.yb, ptr %i.yd, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cj:                                            ; preds = %.backedge, %bb.agc
  %i.yf = getelementptr i8, ptr %.6, i64 8
  %i.yg = load i64, ptr %i.yf, align 8, !tbaa !11
  %i.yh = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.yh, ptr %.02257, align 8, !tbaa !146
  %i.yi = call i64 @rb_ec_str_resurrect(ptr noundef %0, i64 noundef %i.yg, i1 noundef zeroext false) #23
  %i.yj = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !73 ; 2 uses
  %i.yl = getelementptr i8, ptr %i.yk, i64 8
  store ptr %i.yl, ptr %i.yj, align 8, !tbaa !73
  store i64 %i.yi, ptr %i.yk, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ck:                                            ; preds = %.backedge, %bb.agd
  %i.ym = getelementptr i8, ptr %.6, i64 8
  %i.yn = load i64, ptr %i.ym, align 8, !tbaa !11
  %i.yo = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.yo, ptr %.02257, align 8, !tbaa !146
  %i.yp = call i64 @rb_ec_str_resurrect(ptr noundef %0, i64 noundef %i.yn, i1 noundef zeroext true) #23
  %i.yq = getelementptr i8, ptr %.02257, i64 8    ; 2 uses
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !73 ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yr, i64 8
  store ptr %i.ys, ptr %i.yq, align 8, !tbaa !73
  store i64 %i.yp, ptr %i.yr, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cl:                                            ; preds = %.backedge, %bb.age
  %i.yt = getelementptr i8, ptr %.6, i64 8
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !11 ; 3 uses
  %i.yv = getelementptr i8, ptr %.6, i64 16       ; 2 uses
  store ptr %i.yv, ptr %.02257, align 8, !tbaa !146
  %i.yw = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !73
  %i.yy = sub i64 0, %i.yu
  %i.yz = getelementptr [8 x i8], ptr %i.yx, i64 %i.yy
  %i.za = call i64 @rb_str_concat_literals(i64 noundef %i.yu, ptr noundef %i.yz) #23
  %i.zb = sub i64 1, %i.yu
  %i.zc = load ptr, ptr %i.yw, align 8, !tbaa !73
  %i.zd = getelementptr [8 x i8], ptr %i.zc, i64 %i.zb ; 2 uses
  store ptr %i.zd, ptr %i.yw, align 8, !tbaa !73
  %i.ze = getelementptr i8, ptr %i.zd, i64 -8
  store i64 %i.za, ptr %i.ze, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cm:                                            ; preds = %.backedge, %bb.agf
  %i.zf = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !73 ; 2 uses
  %i.zh = getelementptr i8, ptr %i.zg, i64 -8
  %i.zi = getelementptr i8, ptr %i.zg, i64 -16
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !11
  %i.zk = load i64, ptr %i.zh, align 8, !tbaa !11
  %i.zl = getelementptr i8, ptr %.6, i64 8        ; 2 uses
  store ptr %i.zl, ptr %.02257, align 8, !tbaa !146
  %i.zm = call i64 @rb_obj_as_string_result(i64 noundef %i.zk, i64 noundef %i.zj) #23
  %i.zn = load ptr, ptr %i.zf, align 8, !tbaa !73 ; 2 uses
  %i.zo = getelementptr i8, ptr %i.zn, i64 -8
  store ptr %i.zo, ptr %i.zf, align 8, !tbaa !73
  %i.zp = getelementptr i8, ptr %i.zn, i64 -16
  store i64 %i.zm, ptr %i.zp, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cn:                                            ; preds = %.backedge, %bb.agg
  %i.zq = getelementptr i8, ptr %.6, i64 8
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !11
  %i.zs = getelementptr i8, ptr %.6, i64 16
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !11 ; 3 uses
  %i.zu = getelementptr i8, ptr %.6, i64 24       ; 2 uses
  store ptr %i.zu, ptr %.02257, align 8, !tbaa !146
  %i.zv = getelementptr i8, ptr %.02257, i64 8    ; 3 uses
  %i.zw = load ptr, ptr %i.zv, align 8, !tbaa !73
  %i.zx = sub i64 0, %i.zt
  %i.zy = getelementptr [8 x i8], ptr %i.zw, i64 %i.zx
  %i.zz = call i64 @rb_ary_tmp_new_from_values(i64 noundef 0, i64 noundef %i.zt, ptr noundef %i.zy) #23 ; 2 uses
  %i.aaa = trunc i64 %i.zr to i32
  %i.aab = call i64 @rb_reg_new_ary(i64 noundef %i.zz, i32 noundef %i.aaa) #23
  %i.aac = call i64 @rb_ary_clear(i64 noundef %i.zz) #23 ; 0 uses
  %i.aad = sub i64 1, %i.zt
  %i.aae = load ptr, ptr %i.zv, align 8, !tbaa !73
  %i.aaf = getelementptr [8 x i8], ptr %i.aae, i64 %i.aad ; 2 uses
  store ptr %i.aaf, ptr %i.zv, align 8, !tbaa !73
  %i.aag = getelementptr i8, ptr %i.aaf, i64 -8
  store i64 %i.aab, ptr %i.aag, align 8, !tbaa !11
  br label %.backedge.backedge

bb.co:                                            ; preds = %.backedge, %bb.agh
  %i.aah = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !73
  %i.aaj = getelementptr i8, ptr %i.aai, i64 -8
  %i.aak = load i64, ptr %i.aaj, align 8, !tbaa !11
  %i.aal = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.aal, ptr %.02257, align 8, !tbaa !146
  %i.aam = call i64 @rb_str_intern(i64 noundef %i.aak) #23
  %i.aan = load ptr, ptr %i.aah, align 8, !tbaa !73
  %i.aao = getelementptr i8, ptr %i.aan, i64 -8
  store i64 %i.aam, ptr %i.aao, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cp:                                            ; preds = %.backedge, %bb.agi
  %i.aap = getelementptr i8, ptr %.6, i64 8
  %i.aaq = load i64, ptr %i.aap, align 8, !tbaa !11 ; 3 uses
  %i.aar = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aar, ptr %.02257, align 8, !tbaa !146
  %i.aas = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !73
  %i.aau = sub i64 0, %i.aaq
  %i.aav = getelementptr [8 x i8], ptr %i.aat, i64 %i.aau
  %i.aaw = call i64 @rb_ec_ary_new_from_values(ptr noundef %0, i64 noundef %i.aaq, ptr noundef %i.aav) #23
  %i.aax = sub i64 1, %i.aaq
  %i.aay = load ptr, ptr %i.aas, align 8, !tbaa !73
  %i.aaz = getelementptr [8 x i8], ptr %i.aay, i64 %i.aax ; 2 uses
  store ptr %i.aaz, ptr %i.aas, align 8, !tbaa !73
  %i.aba = getelementptr i8, ptr %i.aaz, i64 -8
  store i64 %i.aaw, ptr %i.aba, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cq:                                            ; preds = %.backedge, %bb.agj
  %i.abb = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.abc = load ptr, ptr %i.abb, align 8, !tbaa !73 ; 3 uses
  %i.abd = getelementptr i8, ptr %i.abc, i64 -8
  %i.abe = getelementptr i8, ptr %i.abc, i64 -16
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !11 ; 2 uses
  %i.abg = load i64, ptr %i.abd, align 8, !tbaa !11 ; 3 uses
  %i.abh = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.abh, ptr %.02257, align 8, !tbaa !146
  %i.abi = inttoptr i64 %i.abg to ptr
  %i.abj = load i64, ptr %i.abi, align 8, !tbaa !77 ; 2 uses
  %i.abk = and i64 %i.abj, 32768
  %.not.i.i.i2435 = icmp eq i64 %i.abk, 0
  br i1 %.not.i.i.i2435, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.abl = lshr i64 %i.abj, 16
  %i.abm = and i64 %i.abl, 15
  br label %RHASH_EMPTY_P.exit

bb.cs:                                            ; preds = %bb.cq
  %i.abn = add i64 %i.abg, 24
  %i.abo = inttoptr i64 %i.abn to ptr
  %i.abp = getelementptr i8, ptr %i.abo, i64 16
  %i.abq = load i64, ptr %i.abp, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.cr, %bb.cs
  %.0.i.i2436 = phi i64 [ %i.abm, %bb.cr ], [ %i.abq, %bb.cs ]
  %i.abr = icmp eq i64 %.0.i.i2436, 0
  br i1 %i.abr, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %RHASH_EMPTY_P.exit
  %i.abs = call i64 @rb_ary_push(i64 noundef %i.abf, i64 noundef %i.abg) #23 ; 0 uses
  %.pre3204 = load ptr, ptr %i.abb, align 8, !tbaa !73
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %RHASH_EMPTY_P.exit
  %i.abt = phi ptr [ %.pre3204, %bb.ct ], [ %i.abc, %RHASH_EMPTY_P.exit ] ; 2 uses
  %i.abu = getelementptr i8, ptr %i.abt, i64 -8
  store ptr %i.abu, ptr %i.abb, align 8, !tbaa !73
  %i.abv = getelementptr i8, ptr %i.abt, i64 -16
  store i64 %i.abf, ptr %i.abv, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cv:                                            ; preds = %.backedge, %bb.agk
  %i.abw = getelementptr i8, ptr %.6, i64 8
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !11
  %i.aby = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aby, ptr %.02257, align 8, !tbaa !146
  %i.abz = call i64 @rb_ary_resurrect(i64 noundef %i.abx) #23
  %i.aca = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !73 ; 2 uses
  %i.acc = getelementptr i8, ptr %i.acb, i64 8
  store ptr %i.acc, ptr %i.aca, align 8, !tbaa !73
  store i64 %i.abz, ptr %i.acb, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cw:                                            ; preds = %.backedge, %bb.agl
  %i.acd = getelementptr i8, ptr %.6, i64 8
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !11
  %i.acf = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.acf, ptr %.02257, align 8, !tbaa !146
  %i.acg = call i64 @rb_hash_resurrect(i64 noundef %i.ace) #23
  %i.ach = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aci = load ptr, ptr %i.ach, align 8, !tbaa !73 ; 2 uses
  %i.acj = getelementptr i8, ptr %i.aci, i64 8
  store ptr %i.acj, ptr %i.ach, align 8, !tbaa !73
  store i64 %i.acg, ptr %i.aci, align 8, !tbaa !11
  br label %.backedge.backedge

bb.cx:                                            ; preds = %.backedge, %bb.agm
  %i.ack = getelementptr i8, ptr %.6, i64 8
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !11 ; 21 uses
  %i.acm = getelementptr i8, ptr %.6, i64 16
  %i.acn = load i64, ptr %i.acm, align 8, !tbaa !11 ; 2 uses
  %i.aco = getelementptr i8, ptr %.02257, i64 8   ; 15 uses
  %i.acp = load ptr, ptr %i.aco, align 8, !tbaa !73
  %i.acq = getelementptr i8, ptr %i.acp, i64 -8   ; 2 uses
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !11 ; 6 uses
  %i.acs = getelementptr i8, ptr %.6, i64 24      ; 2 uses
  store ptr %i.acs, ptr %.02257, align 8, !tbaa !146
  store ptr %i.acq, ptr %i.aco, align 8, !tbaa !73
  %i.act = trunc i64 %i.acn to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.acr, ptr %i.g, align 8, !tbaa !11
  %i.acu = and i32 %i.act, 1                      ; 2 uses
  %i.acv = icmp eq i64 %i.acr, 0
  %i.acw = and i64 %i.acr, 7
  %i.acx = icmp ne i64 %i.acw, 0
  %i.acy = or i1 %i.acv, %i.acx
  br i1 %i.acy, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2438, label %rbimpl_RB_TYPE_P_fastpath.exit.i2437

rbimpl_RB_TYPE_P_fastpath.exit.i2437:             ; preds = %bb.cx
  %i.acz = inttoptr i64 %i.acr to ptr             ; 2 uses
  %i.ada = load i64, ptr %i.acz, align 8, !tbaa !77 ; 2 uses
  %i.adb = and i64 %i.ada, 31
  %i.adc = icmp eq i64 %i.adb, 7
  br i1 %i.adc, label %bb.cz, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2438

rbimpl_RB_TYPE_P_fastpath.exit.thread.i2438:      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i2437, %bb.cx
  %i.add = call i64 @rb_check_array_type(i64 noundef %i.acr) #23 ; 3 uses
  store i64 %i.add, ptr %i.g, align 8, !tbaa !11
  %i.ade = icmp eq i64 %i.add, 4
  br i1 %i.ade, label %bb.cy, label %rbimpl_RB_TYPE_P_fastpath.exit.thread._crit_edge.i

rbimpl_RB_TYPE_P_fastpath.exit.thread._crit_edge.i: ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2438
  %.phi.trans.insert.i = inttoptr i64 %i.add to ptr ; 2 uses
  %.pre.i2439 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  br label %bb.cz

bb.cy:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i2438
  store i64 %i.acr, ptr %i.g, align 8, !tbaa !11
  br label %rb_array_len.exit.i

bb.cz:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread._crit_edge.i, %rbimpl_RB_TYPE_P_fastpath.exit.i2437
  %.pre-phi.i = phi ptr [ %.phi.trans.insert.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread._crit_edge.i ], [ %i.acz, %rbimpl_RB_TYPE_P_fastpath.exit.i2437 ] ; 3 uses
  %i.adf = phi i64 [ %.pre.i2439, %rbimpl_RB_TYPE_P_fastpath.exit.thread._crit_edge.i ], [ %i.ada, %rbimpl_RB_TYPE_P_fastpath.exit.i2437 ] ; 2 uses
  %i.adg = and i64 %i.adf, 8192
  %.not.i.i2440 = icmp eq i64 %i.adg, 0
  br i1 %.not.i.i2440, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.adh = getelementptr i8, ptr %.pre-phi.i, i64 16
  %i.adi = lshr i64 %i.adf, 15
  %i.adj = and i64 %i.adi, 127
  br label %rb_array_len.exit.i

bb.db:                                            ; preds = %bb.cz
  %i.adk = getelementptr i8, ptr %.pre-phi.i, i64 32
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !27
  %i.adm = getelementptr i8, ptr %.pre-phi.i, i64 16
  %i.adn = load i64, ptr %i.adm, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.db, %bb.da, %bb.cy
  %.060.i = phi i64 [ 1, %bb.cy ], [ %i.adj, %bb.da ], [ %i.adn, %bb.db ] ; 19 uses
  %.0.i2441 = phi ptr [ %i.g, %bb.cy ], [ %i.adh, %bb.da ], [ %i.adl, %bb.db ] ; 8 uses
  %i.ado = and i64 %i.acn, 1
  %i.adp = sub nsw i64 0, %i.ado
  %i.adq = icmp eq i64 %i.acl, %i.adp
  br i1 %i.adq, label %vm_expandarray.exit, label %bb.dc

bb.dc:                                            ; preds = %rb_array_len.exit.i
  %i.adr = and i32 %i.act, 2
  %.not.i2442 = icmp eq i32 %i.adr, 0
  br i1 %.not.i2442, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ads = icmp ult i64 %.060.i, %i.acl
  br i1 %i.ads, label %.lr.ph.i2443, label %.loopexit80.i

.lr.ph.i2443:                                     ; preds = %bb.dd
  %i.adt = sub nuw i64 %i.acl, %.060.i            ; 5 uses
  %.promoted.i = load ptr, ptr %i.aco, align 8, !tbaa !73 ; 3 uses
  %min.iters.check3694 = icmp ult i64 %i.adt, 4
  br i1 %min.iters.check3694, label %scalar.ph3693.preheader, label %vector.ph3695

vector.ph3695:                                    ; preds = %.lr.ph.i2443
  %n.vec3697 = and i64 %i.adt, -4                 ; 4 uses
  %i.adu = shl i64 %n.vec3697, 3
  %i.adv = getelementptr i8, ptr %.promoted.i, i64 %i.adu ; 2 uses
  br label %vector.body3698

vector.body3698:                                  ; preds = %vector.body3698, %vector.ph3695
  %index3699 = phi i64 [ 0, %vector.ph3695 ], [ %index.next3701, %vector.body3698 ] ; 2 uses
  %i.adw = shl i64 %index3699, 3
  %next.gep3700 = getelementptr i8, ptr %.promoted.i, i64 %i.adw ; 2 uses
  %i.adx = getelementptr i8, ptr %next.gep3700, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep3700, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.adx, align 8, !tbaa !11
  %index.next3701 = add nuw i64 %index3699, 4     ; 2 uses
  %i.ady = icmp eq i64 %index.next3701, %n.vec3697
  br i1 %i.ady, label %middle.block3702, label %vector.body3698, !llvm.loop !319

middle.block3702:                                 ; preds = %vector.body3698
  %cmp.n3703 = icmp eq i64 %i.adt, %n.vec3697
  br i1 %cmp.n3703, label %..loopexit80_crit_edge.i, label %scalar.ph3693.preheader

scalar.ph3693.preheader:                          ; preds = %.lr.ph.i2443, %middle.block3702
  %.ph3724 = phi ptr [ %.promoted.i, %.lr.ph.i2443 ], [ %i.adv, %middle.block3702 ]
  %.06281.i.ph = phi i64 [ 0, %.lr.ph.i2443 ], [ %n.vec3697, %middle.block3702 ]
  br label %scalar.ph3693

scalar.ph3693:                                    ; preds = %scalar.ph3693.preheader, %scalar.ph3693
  %i.adz = phi ptr [ %i.aea, %scalar.ph3693 ], [ %.ph3724, %scalar.ph3693.preheader ] ; 2 uses
  %.06281.i = phi i64 [ %i.aeb, %scalar.ph3693 ], [ %.06281.i.ph, %scalar.ph3693.preheader ]
  %i.aea = getelementptr i8, ptr %i.adz, i64 8    ; 2 uses
  store i64 4, ptr %i.adz, align 8, !tbaa !11
  %i.aeb = add nuw i64 %.06281.i, 1               ; 2 uses
  %exitcond.not.i2444 = icmp eq i64 %i.aeb, %i.adt
  br i1 %exitcond.not.i2444, label %..loopexit80_crit_edge.i, label %scalar.ph3693, !llvm.loop !322

..loopexit80_crit_edge.i:                         ; preds = %scalar.ph3693, %middle.block3702
  %.lcssa3534 = phi ptr [ %i.adv, %middle.block3702 ], [ %i.aea, %scalar.ph3693 ]
  store ptr %.lcssa3534, ptr %i.aco, align 8, !tbaa !73
  br label %.loopexit80.i

.loopexit80.i:                                    ; preds = %..loopexit80_crit_edge.i, %bb.dd
  %.163.i = phi i64 [ 0, %bb.dd ], [ %i.adt, %..loopexit80_crit_edge.i ] ; 2 uses
  %i.aec = icmp ult i64 %.163.i, %i.acl
  br i1 %i.aec, label %.lr.ph84.i, label %bb.de

.lr.ph84.i:                                       ; preds = %.loopexit80.i
  %i.aed = getelementptr [8 x i8], ptr %.0.i2441, i64 %.060.i ; 3 uses
  %.promoted86.i = load ptr, ptr %i.aco, align 8, !tbaa !73 ; 6 uses
  %i.aee = sub nuw i64 %i.acl, %.163.i            ; 5 uses
  %min.iters.check3677 = icmp ult i64 %i.aee, 10
  br i1 %min.iters.check3677, label %scalar.ph3676.preheader, label %vector.memcheck3670

vector.memcheck3670:                              ; preds = %.lr.ph84.i
  %i.aef = call i64 @llvm.umin.i64(i64 %.060.i, i64 %i.acl)
  %i.aeg = shl i64 %i.aef, 3
  %scevgep3671 = getelementptr i8, ptr %.promoted86.i, i64 %i.aeg
  %i.aeh = call i64 @llvm.usub.sat.i64(i64 %.060.i, i64 %i.acl)
  %i.aei = shl i64 %i.aeh, 3
  %scevgep3672 = getelementptr i8, ptr %.0.i2441, i64 %i.aei
  %bound03673 = icmp ult ptr %.promoted86.i, %i.aed
  %bound13674 = icmp ult ptr %scevgep3672, %scevgep3671
  %found.conflict3675 = and i1 %bound03673, %bound13674
  br i1 %found.conflict3675, label %scalar.ph3676.preheader, label %vector.ph3678

vector.ph3678:                                    ; preds = %vector.memcheck3670
end_hunk_1
begin_hunk_2_@vm_exec_core:bb.a
  store i64 %.1.i2447, ptr %i.aka, align 8, !tbaa !11
  br label %.backedge.backedge

bb.dw:                                            ; preds = %.backedge, %bb.agp
  %i.akb = getelementptr i8, ptr %.6, i64 8
  %i.akc = load i64, ptr %i.akb, align 8, !tbaa !11 ; 2 uses
  %i.akd = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.akd, ptr %.02257, align 8, !tbaa !146
  %i.ake = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !73
  %i.akg = sub i64 0, %i.akc                      ; 2 uses
  %i.akh = getelementptr [8 x i8], ptr %i.akf, i64 %i.akg ; 2 uses
  %i.aki = getelementptr i8, ptr %i.akh, i64 -8
  %i.akj = load i64, ptr %i.aki, align 8, !tbaa !11
  %i.akk = call i64 @rb_ary_cat(i64 noundef %i.akj, ptr noundef %i.akh, i64 noundef %i.akc) #23
  %i.akl = load ptr, ptr %i.ake, align 8, !tbaa !73
  %i.akm = getelementptr [8 x i8], ptr %i.akl, i64 %i.akg ; 2 uses
  store ptr %i.akm, ptr %i.ake, align 8, !tbaa !73
  %i.akn = getelementptr i8, ptr %i.akm, i64 -8
  store i64 %i.akk, ptr %i.akn, align 8, !tbaa !11
  br label %.backedge.backedge

bb.dx:                                            ; preds = %.backedge, %bb.agq
  %i.ako = getelementptr i8, ptr %.6, i64 8
  %i.akp = load i64, ptr %i.ako, align 8, !tbaa !11 ; 2 uses
  %i.akq = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !73
  %i.aks = getelementptr i8, ptr %i.akr, i64 -8
  %i.akt = load i64, ptr %i.aks, align 8, !tbaa !11 ; 3 uses
  %i.aku = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aku, ptr %.02257, align 8, !tbaa !146
  %i.akv = icmp eq i64 %i.akt, 4
  br i1 %i.akv, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  %i.akw = and i64 %i.akp, -5
  %.not9.i = icmp eq i64 %i.akw, 0
  br i1 %.not9.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.akx = call i64 @rb_ary_new() #23
  br label %vm_splat_array.exit

bb.ea:                                            ; preds = %bb.dy
  %i.aky = load i64, ptr @rb_cArray_empty_frozen, align 8, !tbaa !11
  br label %vm_splat_array.exit

bb.eb:                                            ; preds = %bb.dx
  %i.akz = call i64 @rb_check_to_array(i64 noundef %i.akt) #23 ; 3 uses
  %i.ala = icmp eq i64 %i.akz, 4
  br i1 %i.ala, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.alb = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 1, i64 noundef %i.akt) #23
  br label %vm_splat_array.exit

bb.ed:                                            ; preds = %bb.eb
  %i.alc = and i64 %i.akp, -5
  %.not.i2448 = icmp eq i64 %i.alc, 0
  br i1 %.not.i2448, label %vm_splat_array.exit, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ald = call i64 @rb_ary_dup(i64 noundef %i.akz) #23
  br label %vm_splat_array.exit

vm_splat_array.exit:                              ; preds = %bb.dz, %bb.ea, %bb.ec, %bb.ed, %bb.ee
  %.1.i2449 = phi i64 [ %i.aky, %bb.ea ], [ %i.akx, %bb.dz ], [ %i.alb, %bb.ec ], [ %i.ald, %bb.ee ], [ %i.akz, %bb.ed ]
  %i.ale = load ptr, ptr %i.akq, align 8, !tbaa !73
  %i.alf = getelementptr i8, ptr %i.ale, i64 -8
  store i64 %.1.i2449, ptr %i.alf, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ef:                                            ; preds = %.backedge, %bb.agr
  %i.alg = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.alh = load ptr, ptr %i.alg, align 8, !tbaa !73 ; 3 uses
  %i.ali = getelementptr i8, ptr %i.alh, i64 -8
  %i.alj = getelementptr i8, ptr %i.alh, i64 -16
  %i.alk = load i64, ptr %i.alj, align 8, !tbaa !11 ; 2 uses
  %i.all = load i64, ptr %i.ali, align 8, !tbaa !11
  %i.alm = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.alm, ptr %.02257, align 8, !tbaa !146
  %i.aln = icmp eq i64 %i.alk, 4
  br i1 %i.aln, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.alo = call i64 @rb_to_hash_type(i64 noundef %i.alk) #23
  %.pre3203 = load ptr, ptr %i.alg, align 8, !tbaa !73
  br label %bb.eh

bb.eh:                                            ; preds = %bb.ef, %bb.eg
  %i.alp = phi ptr [ %.pre3203, %bb.eg ], [ %i.alh, %bb.ef ] ; 2 uses
  %.02261 = phi i64 [ %i.alo, %bb.eg ], [ 4, %bb.ef ]
  %i.alq = getelementptr i8, ptr %i.alp, i64 -8
  store i64 %i.all, ptr %i.alq, align 8, !tbaa !11
  %i.alr = getelementptr i8, ptr %i.alp, i64 -16
  store i64 %.02261, ptr %i.alr, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ei:                                            ; preds = %.backedge, %bb.ags
  %i.als = getelementptr i8, ptr %.6, i64 8
  %i.alt = load i64, ptr %i.als, align 8, !tbaa !11 ; 5 uses
  %i.alu = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.alu, ptr %.02257, align 8, !tbaa !146
  %.not2339 = icmp eq i64 %i.alt, 0
  br i1 %.not2339, label %.split2274, label %.split

.split:                                           ; preds = %bb.ei
  %i.alv = lshr i64 %i.alt, 1
  %i.alw = call i64 @rb_hash_new_with_size(i64 noundef %i.alv) #23 ; 2 uses
  %i.alx = getelementptr i8, ptr %.02257, i64 8
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !73
  %i.alz = sub i64 0, %i.alt
  %i.ama = getelementptr [8 x i8], ptr %i.aly, i64 %i.alz
  call void @rb_hash_bulk_insert(i64 noundef %i.alt, ptr noundef %i.ama, i64 noundef %i.alw) #23
  %i.amb = sub i64 1, %i.alt
  br label %bb.ej

.split2274:                                       ; preds = %bb.ei
  %i.amc = call i64 @rb_hash_new() #23
  br label %bb.ej

bb.ej:                                            ; preds = %.split2274, %.split
  %phi.call = phi i64 [ %i.amb, %.split ], [ 1, %.split2274 ]
  %.02262 = phi i64 [ %i.alw, %.split ], [ %i.amc, %.split2274 ]
  %i.amd = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !73
  %i.amf = getelementptr [8 x i8], ptr %i.ame, i64 %phi.call ; 2 uses
  store ptr %i.amf, ptr %i.amd, align 8, !tbaa !73
  %i.amg = getelementptr i8, ptr %i.amf, i64 -8
  store i64 %.02262, ptr %i.amg, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ek:                                            ; preds = %.backedge, %bb.agt
  %i.amh = getelementptr i8, ptr %.6, i64 8
  %i.ami = load i64, ptr %i.amh, align 8, !tbaa !11
  %i.amj = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !73 ; 2 uses
  %i.aml = getelementptr i8, ptr %i.amk, i64 -8
  %i.amm = getelementptr i8, ptr %i.amk, i64 -16
  %i.amn = load i64, ptr %i.amm, align 8, !tbaa !11
  %i.amo = load i64, ptr %i.aml, align 8, !tbaa !11
  %i.amp = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.amp, ptr %.02257, align 8, !tbaa !146
  %i.amq = trunc i64 %i.ami to i32
  %i.amr = call i64 @rb_range_new(i64 noundef %i.amn, i64 noundef %i.amo, i32 noundef %i.amq) #23
  %i.ams = load ptr, ptr %i.amj, align 8, !tbaa !73 ; 2 uses
  %i.amt = getelementptr i8, ptr %i.ams, i64 -8
  store ptr %i.amt, ptr %i.amj, align 8, !tbaa !73
  %i.amu = getelementptr i8, ptr %i.ams, i64 -16
  store i64 %i.amr, ptr %i.amu, align 8, !tbaa !11
  br label %.backedge.backedge

bb.el:                                            ; preds = %.backedge, %bb.agu
  %i.amv = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.amw = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.amw, ptr %.02257, align 8, !tbaa !146
  %i.amx = load ptr, ptr %i.amv, align 8, !tbaa !73
  %i.amy = getelementptr i8, ptr %i.amx, i64 -8
  store ptr %i.amy, ptr %i.amv, align 8, !tbaa !73
  br label %.backedge.backedge

bb.em:                                            ; preds = %.backedge, %bb.agv
  %i.amz = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.ana = load ptr, ptr %i.amz, align 8, !tbaa !73 ; 3 uses
  %i.anb = getelementptr i8, ptr %i.ana, i64 -8
  %i.anc = load i64, ptr %i.anb, align 8, !tbaa !11
  %i.and = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.and, ptr %.02257, align 8, !tbaa !146
  %i.ane = getelementptr i8, ptr %i.ana, i64 8
  store ptr %i.ane, ptr %i.amz, align 8, !tbaa !73
  store i64 %i.anc, ptr %i.ana, align 8, !tbaa !11
  br label %.backedge.backedge

bb.en:                                            ; preds = %.backedge, %bb.agw
  %i.anf = getelementptr i8, ptr %.6, i64 8
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !11 ; 6 uses
  %i.anh = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.anh, ptr %.02257, align 8, !tbaa !146
  %i.ani = getelementptr i8, ptr %.02257, i64 8   ; 3 uses
  %i.anj = load ptr, ptr %i.ani, align 8, !tbaa !73 ; 3 uses
  %i.ank = sub i64 0, %i.ang
  %i.anl = getelementptr [8 x i8], ptr %i.anj, i64 %i.ank
  %i.anm = icmp ugt i64 %i.ang, 2305843009213693951
  br i1 %i.anm, label %bb.eo, label %rbimpl_size_mul_or_raise.exit, !prof !177

bb.eo:                                            ; preds = %bb.en
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ang) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.en
  %.not.i2450 = icmp eq i64 %i.ang, 0
  br i1 %.not.i2450, label %ruby_nonempty_memcpy.exit, label %bb.ep

bb.ep:                                            ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ann = shl nuw i64 %i.ang, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.anj, ptr noundef nonnull readonly align 1 %i.anl, i64 noundef %i.ann, i1 noundef false) #23
  %.pre3202 = load ptr, ptr %i.ani, align 8, !tbaa !73
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.ep
  %i.ano = phi ptr [ %i.anj, %rbimpl_size_mul_or_raise.exit ], [ %.pre3202, %bb.ep ]
  %i.anp = getelementptr [8 x i8], ptr %i.ano, i64 %i.ang
  store ptr %i.anp, ptr %i.ani, align 8, !tbaa !73
  br label %.backedge.backedge

bb.eq:                                            ; preds = %.backedge, %bb.agx
  %i.anq = getelementptr i8, ptr %.02257, i64 8
  %i.anr = load ptr, ptr %i.anq, align 8, !tbaa !73
  %i.ans = getelementptr i8, ptr %i.anr, i64 -16  ; 2 uses
  %i.ant = getelementptr i8, ptr %.6, i64 8       ; 2 uses
  store ptr %i.ant, ptr %.02257, align 8, !tbaa !146
  %i.anu = load <2 x i64>, ptr %i.ans, align 8, !tbaa !11
  %i.anv = shufflevector <2 x i64> %i.anu, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %i.anv, ptr %i.ans, align 8, !tbaa !11
  br label %.backedge.backedge

bb.er:                                            ; preds = %.backedge, %bb.agy
  %i.anw = getelementptr i8, ptr %.6, i64 8
  %i.anx = load i64, ptr %i.anw, align 8, !tbaa !11 ; 3 uses
  %i.any = getelementptr i8, ptr %.6, i64 16      ; 4 uses
  store ptr %i.any, ptr %.02257, align 8, !tbaa !146
  %i.anz = getelementptr i8, ptr %.02257, i64 8
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !73 ; 4 uses
  %i.aob = sub i64 0, %i.anx
  %i.aoc = getelementptr [8 x i8], ptr %i.aoa, i64 %i.aob ; 3 uses
  %i.aod = lshr i64 %i.anx, 1                     ; 3 uses
  switch i64 %i.aod, label %.lr.ph3058.preheader.new [
    i64 0, label %.backedge.backedge
    i64 1, label %.lr.ph3058.epil.preheader
  ]

.backedge.backedge:                               ; preds = %.lr.ph3058.epil.preheader, %.backedge.loopexit.unr-lcssa, %bb.er, %bb.lr, %vm_method_cfunc_is.exit.thread, %bb.c, %vm_get_ep.exit, %vm_env_write.exit, %bb.p, %vm_env_write.exit2389, %bb.ab, %vm_getspecial.exit, %VM_EP_LEP.exit2414, %vm_getivar.exit, %bb.bn, %vm_getclassvariable.exit, %vm_setclassvariable.exit, %bb.bz, %bb.ca, %vm_ensure_not_refinement_module.exit2434, %bb.cd, %bb.ce, %bb.cf, %bb.cg, %bb.ch, %bb.ci, %bb.cj, %bb.ck, %bb.cl, %bb.cm, %bb.cn, %bb.co, %bb.cp, %bb.cu, %bb.cv, %bb.cw, %vm_expandarray.exit, %vm_concat_array.exit, %vm_concat_to_array.exit, %bb.dw, %vm_splat_array.exit, %bb.eh, %bb.ej, %bb.ek, %bb.el, %bb.em, %ruby_nonempty_memcpy.exit, %bb.eq, %bb.es, %bb.et, %bb.eu, %bb.ev, %bb.fr, %vm_check_match.exit, %vm_check_keyword.exit, %rb_type.exit, %vm_push_frame.exit, %bb.ho, %bb.hp, %.thread2842, %.thread2844, %bb.ka, %bb.kb, %.thread2856, %.thread2858, %bb.lt, %bb.lw, %bb.lz, %bb.mc, %bb.mm, %bb.mp, %vm_opt_duparray_include_p.exit, %vm_opt_newarray_hash.exit, %.thread2870, %.thread2872, %bb.ov, %bb.ow, %.thread2884, %.thread2886, %bb.pz, %rb_vm_check_ints.exit, %bb.qg, %bb.qk, %bb.qo, %vm_once_dispatch.exit, %vm_case_dispatch.exit.thread, %vm_opt_plus.exit.thread2893, %vm_opt_minus.exit.thread2898, %vm_opt_mult.exit.thread2903, %bb.vm, %vm_opt_mod.exit.thread2912, %opt_equality.exit, %vm_opt_neq.exit, %vm_opt_lt.exit, %vm_opt_le.exit, %vm_opt_gt.exit, %vm_opt_ge.exit, %bb.aar, %bb.aat, %bb.aaw, %vm_opt_aref.exit.thread2927, %bb.abw, %bb.abz, %bb.acc, %bb.acf, %vm_opt_succ.exit.thread2932, %vm_opt_not.exit, %bb.adl, %bb.adm, %vm_invoke_builtin_delegate.exit, %bb.adu, %bb.adv, %.lr.ph.i2774, %vm_env_write.exit2783, %vm_env_write.exit2791, %bb.aeb, %bb.aec
  %.02257.be = phi ptr [ %.02257, %bb.c ], [ %.02257, %vm_get_ep.exit ], [ %.02257, %vm_env_write.exit ], [ %.02257, %bb.p ], [ %.02257, %vm_env_write.exit2389 ], [ %.02257, %bb.ab ], [ %.02257, %vm_getspecial.exit ], [ %.02257, %VM_EP_LEP.exit2414 ], [ %.02257, %vm_getivar.exit ], [ %.02257, %bb.bn ], [ %.02257, %vm_getclassvariable.exit ], [ %.02257, %vm_setclassvariable.exit ], [ %.02257, %bb.bz ], [ %.02257, %bb.ca ], [ %.02257, %vm_ensure_not_refinement_module.exit2434 ], [ %.02257, %bb.cd ], [ %.02257, %bb.ce ], [ %.02257, %bb.cf ], [ %.02257, %bb.cg ], [ %.02257, %bb.ch ], [ %.02257, %bb.ci ], [ %.02257, %bb.cj ], [ %.02257, %bb.ck ], [ %.02257, %bb.cl ], [ %.02257, %bb.cm ], [ %.02257, %bb.cn ], [ %.02257, %bb.co ], [ %.02257, %bb.cp ], [ %.02257, %bb.cu ], [ %.02257, %bb.cv ], [ %.02257, %bb.cw ], [ %.02257, %vm_expandarray.exit ], [ %.02257, %vm_concat_array.exit ], [ %.02257, %vm_concat_to_array.exit ], [ %.02257, %bb.dw ], [ %.02257, %vm_splat_array.exit ], [ %.02257, %bb.eh ], [ %.02257, %bb.ej ], [ %.02257, %bb.ek ], [ %.02257, %bb.el ], [ %.02257, %bb.em ], [ %.02257, %ruby_nonempty_memcpy.exit ], [ %.02257, %bb.eq ], [ %.02257, %bb.aec ], [ %.02257, %bb.es ], [ %.02257, %bb.et ], [ %.02257, %bb.eu ], [ %.02257, %bb.ev ], [ %.02257, %bb.fr ], [ %.02257, %vm_check_match.exit ], [ %.02257, %vm_check_keyword.exit ], [ %.02257, %rb_type.exit ], [ %i.bbb, %vm_push_frame.exit ], [ %.02257, %bb.ho ], [ %.02257, %bb.hp ], [ %i.bgk, %.thread2842 ], [ %.02257, %.thread2844 ], [ %i.bkw, %bb.ka ], [ %.02257, %bb.kb ], [ %i.bpd, %.thread2856 ], [ %.02257, %.thread2858 ], [ %.02257, %bb.lr ], [ %.02257, %bb.lt ], [ %.02257, %bb.lw ], [ %.02257, %bb.lz ], [ %.02257, %bb.mc ], [ %.02257, %bb.mm ], [ %.02257, %bb.mp ], [ %.02257, %vm_opt_duparray_include_p.exit ], [ %.02257, %vm_opt_newarray_hash.exit ], [ %i.cbo, %.thread2870 ], [ %.02257, %.thread2872 ], [ %i.cel, %bb.ov ], [ %.02257, %bb.ow ], [ %i.cgv, %.thread2884 ], [ %.02257, %.thread2886 ], [ %i.ciu, %bb.pz ], [ %.02257, %rb_vm_check_ints.exit ], [ %.02257, %bb.qg ], [ %.02257, %bb.qk ], [ %.02257, %bb.qo ], [ %.02257, %vm_once_dispatch.exit ], [ %.02257, %vm_case_dispatch.exit.thread ], [ %.02257, %vm_opt_plus.exit.thread2893 ], [ %.02257, %vm_opt_minus.exit.thread2898 ], [ %.02257, %vm_opt_mult.exit.thread2903 ], [ %.02257, %bb.vm ], [ %.02257, %vm_opt_mod.exit.thread2912 ], [ %.02257, %opt_equality.exit ], [ %.02257, %vm_opt_neq.exit ], [ %.02257, %vm_opt_lt.exit ], [ %.02257, %vm_opt_le.exit ], [ %.02257, %vm_opt_gt.exit ], [ %.02257, %vm_opt_ge.exit ], [ %.02257, %bb.aar ], [ %.02257, %bb.aat ], [ %.02257, %bb.aaw ], [ %.02257, %vm_opt_aref.exit.thread2927 ], [ %.02257, %bb.abw ], [ %.02257, %bb.abz ], [ %.02257, %bb.acc ], [ %.02257, %bb.acf ], [ %.02257, %vm_opt_succ.exit.thread2932 ], [ %.02257, %vm_opt_not.exit ], [ %.02257, %bb.adl ], [ %.02257, %bb.adm ], [ %.02257, %vm_invoke_builtin_delegate.exit ], [ %i.ekl, %bb.adu ], [ %.02257, %bb.adv ], [ %.02257, %.lr.ph.i2774 ], [ %.02257, %vm_env_write.exit2783 ], [ %.02257, %vm_env_write.exit2791 ], [ %.02257, %bb.aeb ], [ %.02257, %vm_method_cfunc_is.exit.thread ], [ %.02257, %bb.er ], [ %.02257, %.backedge.loopexit.unr-lcssa ], [ %.02257, %.lr.ph3058.epil.preheader ]
  %.6.be = phi ptr [ %i.as, %bb.c ], [ %i.ax, %vm_get_ep.exit ], [ %i.cz, %vm_env_write.exit ], [ %i.fa, %bb.p ], [ %i.id, %vm_env_write.exit2389 ], [ %i.kg, %bb.ab ], [ %i.nb, %vm_getspecial.exit ], [ %i.ou, %VM_EP_LEP.exit2414 ], [ %i.pj, %vm_getivar.exit ], [ %i.rt, %bb.bn ], [ %i.sd, %vm_getclassvariable.exit ], [ %i.tk, %vm_setclassvariable.exit ], [ %i.ut, %bb.bz ], [ %i.vg, %bb.ca ], [ %i.vu, %vm_ensure_not_refinement_module.exit2434 ], [ %i.wq, %bb.cd ], [ %i.xb, %bb.ce ], [ %i.xf, %bb.cf ], [ %i.xj, %bb.cg ], [ %i.xr, %bb.ch ], [ %i.xx, %bb.ci ], [ %i.yh, %bb.cj ], [ %i.yo, %bb.ck ], [ %i.yv, %bb.cl ], [ %i.zl, %bb.cm ], [ %i.zu, %bb.cn ], [ %i.aal, %bb.co ], [ %i.aar, %bb.cp ], [ %i.abh, %bb.cu ], [ %i.aby, %bb.cv ], [ %i.acf, %bb.cw ], [ %i.acs, %vm_expandarray.exit ], [ %i.aiz, %vm_concat_array.exit ], [ %i.ajs, %vm_concat_to_array.exit ], [ %i.akd, %bb.dw ], [ %i.aku, %vm_splat_array.exit ], [ %i.alm, %bb.eh ], [ %i.alu, %bb.ej ], [ %i.amp, %bb.ek ], [ %i.amw, %bb.el ], [ %i.and, %bb.em ], [ %i.anh, %ruby_nonempty_memcpy.exit ], [ %i.ant, %bb.eq ], [ %i.enj, %bb.aec ], [ %i.aou, %bb.es ], [ %i.api, %bb.et ], [ %i.apo, %bb.eu ], [ %i.aqd, %bb.ev ], [ %i.aqo, %bb.fr ], [ %i.asy, %vm_check_match.exit ], [ %i.auc, %vm_check_keyword.exit ], [ %i.avb, %rb_type.exit ], [ %i.bbt, %vm_push_frame.exit ], [ %i.bby, %bb.ho ], [ %i.bch, %bb.hp ], [ %i.bgl, %.thread2842 ], [ %i.bco, %.thread2844 ], [ %i.bkx, %bb.ka ], [ %i.bgu, %bb.kb ], [ %i.bpe, %.thread2856 ], [ %i.bld, %.thread2858 ], [ %i.bpm, %bb.lr ], [ %i.brp, %bb.lt ], [ %i.bry, %bb.lw ], [ %i.bsn, %bb.lz ], [ %i.btc, %bb.mc ], [ %i.btw, %bb.mm ], [ %i.bvf, %bb.mp ], [ %i.bvy, %vm_opt_duparray_include_p.exit ], [ %i.bwr, %vm_opt_newarray_hash.exit ], [ %i.cbp, %.thread2870 ], [ %i.bzj, %.thread2872 ], [ %i.cem, %bb.ov ], [ %i.cby, %bb.ow ], [ %i.cgw, %.thread2884 ], [ %i.ces, %.thread2886 ], [ %i.ciw, %bb.pz ], [ %i.cjq, %rb_vm_check_ints.exit ], [ %.2, %bb.qg ], [ %.3, %bb.qk ], [ %.4, %bb.qo ], [ %i.clt, %vm_once_dispatch.exit ], [ %.5, %vm_case_dispatch.exit.thread ], [ %i.cpj, %vm_opt_plus.exit.thread2893 ], [ %i.ctx, %vm_opt_minus.exit.thread2898 ], [ %i.cxr, %vm_opt_mult.exit.thread2903 ], [ %i.dbo, %bb.vm ], [ %i.ddv, %vm_opt_mod.exit.thread2912 ], [ %i.dhw, %opt_equality.exit ], [ %i.djq, %vm_opt_neq.exit ], [ %i.dlz, %vm_opt_lt.exit ], [ %i.doo, %vm_opt_le.exit ], [ %i.dre, %vm_opt_gt.exit ], [ %i.dtt, %vm_opt_ge.exit ], [ %i.dwj, %bb.aar ], [ %i.dxw, %bb.aat ], [ %i.dyh, %bb.aaw ], [ %i.dyu, %vm_opt_aref.exit.thread2927 ], [ %i.eax, %bb.abw ], [ %i.eca, %bb.abz ], [ %i.ecj, %bb.acc ], [ %i.ecs, %bb.acf ], [ %i.eda, %vm_opt_succ.exit.thread2932 ], [ %i.eee, %vm_opt_not.exit ], [ %i.efp, %bb.adl ], [ %i.ehb, %bb.adm ], [ %i.ehx, %vm_invoke_builtin_delegate.exit ], [ %i.ekn, %bb.adu ], [ %i.ekt, %bb.adv ], [ %i.ele, %.lr.ph.i2774 ], [ %i.elx, %vm_env_write.exit2783 ], [ %i.emp, %vm_env_write.exit2791 ], [ %i.enf, %bb.aeb ], [ %i.brh, %vm_method_cfunc_is.exit.thread ], [ %i.any, %bb.er ], [ %i.any, %.backedge.loopexit.unr-lcssa ], [ %i.any, %.lr.ph3058.epil.preheader ]
  br label %.backedge

.lr.ph3058.preheader.new:                         ; preds = %bb.er
  %unroll_iter = and i64 %i.aod, 9223372036854775806
  br label %.lr.ph3058

.lr.ph3058:                                       ; preds = %.lr.ph3058, %.lr.ph3058.preheader.new
  %.022633057 = phi i64 [ 0, %.lr.ph3058.preheader.new ], [ %i.aor, %.lr.ph3058 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph3058.preheader.new ], [ %niter.next.1, %.lr.ph3058 ]
  %i.aoe = getelementptr [8 x i8], ptr %i.aoc, i64 %.022633057 ; 2 uses
  %i.aof = load i64, ptr %i.aoe, align 8, !tbaa !11
  %i.aog = sub nsw i64 0, %.022633057
  %i.aoh = getelementptr [8 x i8], ptr %i.aoa, i64 %i.aog
  %i.aoi = getelementptr i8, ptr %i.aoh, i64 -8   ; 2 uses
  %i.aoj = load i64, ptr %i.aoi, align 8, !tbaa !11
  store i64 %i.aoj, ptr %i.aoe, align 8, !tbaa !11
  store i64 %i.aof, ptr %i.aoi, align 8, !tbaa !11
  %i.aok = getelementptr [8 x i8], ptr %i.aoc, i64 %.022633057
  %i.aol = getelementptr i8, ptr %i.aok, i64 8    ; 2 uses
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !11
  %i.aon = xor i64 %.022633057, -1
  %i.aoo = getelementptr [8 x i8], ptr %i.aoa, i64 %i.aon
  %i.aop = getelementptr i8, ptr %i.aoo, i64 -8   ; 2 uses
  %i.aoq = load i64, ptr %i.aop, align 8, !tbaa !11
  store i64 %i.aoq, ptr %i.aol, align 8, !tbaa !11
  store i64 %i.aom, ptr %i.aop, align 8, !tbaa !11
  %i.aor = add nuw nsw i64 %.022633057, 2         ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.backedge.loopexit.unr-lcssa, label %.lr.ph3058, !llvm.loop !349

bb.es:                                            ; preds = %.backedge, %bb.agz
  %i.aos = getelementptr i8, ptr %.6, i64 8
  %i.aot = load i64, ptr %i.aos, align 8, !tbaa !11
  %i.aou = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.aou, ptr %.02257, align 8, !tbaa !146
  %i.aov = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aow = load ptr, ptr %i.aov, align 8, !tbaa !73 ; 3 uses
  %i.aox = sub i64 0, %i.aot
  %i.aoy = getelementptr [8 x i8], ptr %i.aow, i64 %i.aox
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 -8
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !11
  %i.apb = getelementptr i8, ptr %i.aow, i64 8
  store ptr %i.apb, ptr %i.aov, align 8, !tbaa !73
  store i64 %i.apa, ptr %i.aow, align 8, !tbaa !11
  br label %.backedge.backedge

bb.et:                                            ; preds = %.backedge, %bb.aha
  %i.apc = getelementptr i8, ptr %.6, i64 8
  %i.apd = load i64, ptr %i.apc, align 8, !tbaa !11
  %i.ape = getelementptr i8, ptr %.02257, i64 8
  %i.apf = load ptr, ptr %i.ape, align 8, !tbaa !73 ; 2 uses
  %i.apg = getelementptr i8, ptr %i.apf, i64 -8   ; 2 uses
  %i.aph = load i64, ptr %i.apg, align 8, !tbaa !11 ; 2 uses
  %i.api = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.api, ptr %.02257, align 8, !tbaa !146
  %i.apj = sub i64 0, %i.apd
  %i.apk = getelementptr [8 x i8], ptr %i.apf, i64 %i.apj
  %i.apl = getelementptr i8, ptr %i.apk, i64 -8
  store i64 %i.aph, ptr %i.apl, align 8, !tbaa !11
  store i64 %i.aph, ptr %i.apg, align 8, !tbaa !11
  br label %.backedge.backedge

bb.eu:                                            ; preds = %.backedge, %bb.ahb
  %i.apm = getelementptr i8, ptr %.6, i64 8
  %i.apn = load i64, ptr %i.apm, align 8, !tbaa !11
  %i.apo = getelementptr i8, ptr %.6, i64 16      ; 2 uses
  store ptr %i.apo, ptr %.02257, align 8, !tbaa !146
  %i.app = sub i64 0, %i.apn
  %i.apq = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !73
  %i.aps = getelementptr [8 x i8], ptr %i.apr, i64 %i.app
  store ptr %i.aps, ptr %i.apq, align 8, !tbaa !73
  br label %.backedge.backedge

bb.ev:                                            ; preds = %.backedge, %bb.ahc
  %i.apt = getelementptr i8, ptr %.6, i64 8
  %i.apu = load i64, ptr %i.apt, align 8, !tbaa !11
  %i.apv = getelementptr i8, ptr %.6, i64 16
  %i.apw = load i64, ptr %i.apv, align 8, !tbaa !11
  %i.apx = getelementptr i8, ptr %.6, i64 24
  %i.apy = load i64, ptr %i.apx, align 8, !tbaa !11
  %i.apz = getelementptr i8, ptr %.02257, i64 8   ; 2 uses
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !73
  %i.aqb = getelementptr i8, ptr %i.aqa, i64 -8
  %i.aqc = load i64, ptr %i.aqb, align 8, !tbaa !11
  %i.aqd = getelementptr i8, ptr %.6, i64 32      ; 2 uses
  store ptr %i.aqd, ptr %.02257, align 8, !tbaa !146
  %i.aqe = call fastcc zeroext i1 @vm_defined(ptr noundef %0, ptr noundef nonnull %.02257, i64 noundef %i.apu, i64 noundef %i.apw, i64 noundef %i.aqc)
  %spec.select = select i1 %i.aqe, i64 %i.apy, i64 4
  %i.aqf = load ptr, ptr %i.apz, align 8, !tbaa !73
  %i.aqg = getelementptr i8, ptr %i.aqf, i64 -8
  store i64 %spec.select, ptr %i.aqg, align 8, !tbaa !11
  br label %.backedge.backedge

bb.ew:                                            ; preds = %.backedge, %bb.ahd, %bb.aef
  %i.aqh = getelementptr i8, ptr %.6, i64 8
  %i.aqi = load i64, ptr %i.aqh, align 8, !tbaa !11 ; 4 uses
  %i.aqj = getelementptr i8, ptr %.6, i64 16
  %i.aqk = load i64, ptr %i.aqj, align 8, !tbaa !11
  %i.aql = inttoptr i64 %i.aqk to ptr             ; 3 uses
  %i.aqm = getelementptr i8, ptr %.6, i64 24
  %i.aqn = load i64, ptr %i.aqm, align 8, !tbaa !11 ; 2 uses
  %i.aqo = getelementptr i8, ptr %.6, i64 32      ; 2 uses
  store ptr %i.aqo, ptr %.02257, align 8, !tbaa !146
  %i.aqp = getelementptr i8, ptr %.02257, i64 24
  %i.aqq = load i64, ptr %i.aqp, align 8, !tbaa !74 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.aqr = icmp eq i64 %i.aqq, 0
  %i.aqs = and i64 %i.aqq, 7
  %i.aqt = icmp ne i64 %i.aqs, 0
  %i.aqu = or i1 %i.aqr, %i.aqt
  br i1 %i.aqu, label %.sink.split, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.aqv = inttoptr i64 %i.aqq to ptr             ; 5 uses
  %i.aqw = load i64, ptr %i.aqv, align 8, !tbaa !77 ; 2 uses
  %i.aqx = trunc i64 %i.aqw to i32
  %i.aqy = and i32 %i.aqx, 31
  switch i32 %i.aqy, label %bb.fd [
    i32 1, label %.thread2826
    i32 2, label %bb.ey
    i32 3, label %bb.ey
  ]

bb.ey:                                            ; preds = %bb.ex, %bb.ex
  %i.aqz = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !90
  %.not.i2452 = icmp eq ptr %i.aqz, null
  br i1 %.not.i2452, label %rb_ractor_main_p.exit2454, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461

rb_ractor_main_p.exit2454:                        ; preds = %bb.ey
  %i.ara = call zeroext i1 @rb_ractor_main_p_() #23
  br i1 %i.ara, label %rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge, label %bb.ez, !prof !91

rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge: ; preds = %rb_ractor_main_p.exit2454
  %.pre3200 = load i64, ptr %i.aqv, align 8, !tbaa !77
  br label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461

bb.ez:                                            ; preds = %rb_ractor_main_p.exit2454
  %i.arb = call i64 @rb_ivar_defined(i64 noundef %i.aqq, i64 noundef %i.aqi) #23
  %.not49.i = icmp eq i64 %i.arb, 0
  br i1 %.not49.i, label %.sink.split, label %vm_getivar.exit2349.thread2832

vm_getivar.exit2349.thread2832:                   ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.fr

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461:    ; preds = %rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge, %bb.ey
  %i.arc = phi i64 [ %.pre3200, %rb_ractor_main_p.exit2454.RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461_crit_edge ], [ %i.aqw, %bb.ey ]
  %i.ard = and i64 %i.arc, 16384
  %.not10.i.i2462 = icmp eq i64 %i.ard, 0
  br i1 %.not10.i.i2462, label %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i2456, label %bb.fa, !prof !110

bb.fa:                                            ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461
  %i.are = getelementptr i8, ptr %i.aqv, i64 24
  br label %RCLASS_WRITABLE_FIELDS_OBJ.exit2463

RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i2456: ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.i.i2461
  %i.arf = call ptr @rb_current_box() #23         ; 3 uses
  %.not.i.i2457 = icmp eq ptr %i.arf, null
  br i1 %.not.i.i2457, label %.split.i.i2460, label %bb.fb

.split.i.i2460:                                   ; preds = %RCLASS_PRIME_CLASSEXT_WRITABLE_P.exit.thread.i.i2456
end_hunk_2
begin_hunk_3_@basic_obj_respond_to:bb.a
  %.not7.i = icmp eq ptr %i.r, null
  br i1 %.not7.i, label %basic_obj_respond_to_missing.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 15
  %i.u = icmp eq i8 %i.t, 7
  br i1 %i.u, label %basic_obj_respond_to_missing.exit.thread, label %callable_method_entry.exit

callable_method_entry.exit:                       ; preds = %bb.j
  %i.v = load i64, ptr %i.p, align 8, !tbaa !170
  %i.w = and i64 %i.v, 262144
  %.not9.i = icmp eq i64 %i.w, 0
  br i1 %.not9.i, label %basic_obj_respond_to_missing.exit, label %basic_obj_respond_to_missing.exit.thread

basic_obj_respond_to_missing.exit.thread:         ; preds = %callable_method_entry.exit, %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.k

basic_obj_respond_to_missing.exit:                ; preds = %callable_method_entry.exit
  store i64 %i.n, ptr %i.b, align 16, !tbaa !11
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.o, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr i8, ptr %0, i64 136        ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store i64 3190810, ptr %7, align 8, !tbaa !442
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 36, ptr %i.aa, align 8, !tbaa !185
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.p, ptr %i.ab, align 8, !tbaa !187
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @vm_call_general, ptr %i.ac, align 8, !tbaa !234
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %i.ad, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i64 106522, ptr %6, align 8, !tbaa !445
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !238
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 158, ptr %i.af, align 8, !tbaa !163
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 0, ptr %i.ag, align 8, !tbaa !173
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 2, ptr %i.ah, align 8, !tbaa !174
  store ptr %6, ptr %5, align 8, !tbaa !225
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !182
  store ptr %5, ptr %4, align 8, !tbaa !226
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %7, ptr %i.aj, align 8, !tbaa !233
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 0, ptr %i.y, align 8, !tbaa !441
  store i64 0, ptr %i.ak, align 8, !tbaa !228
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %1, ptr %i.al, align 8, !tbaa !229
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 2, ptr %i.am, align 8, !tbaa !230
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.an, i8 0, i64 12, i1 false)
  %i.ao = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %i.b), !inline_history !447 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store i64 %i.z, ptr %i.y, align 8, !tbaa !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ap = and i64 %i.ao, -5
  %.not23 = icmp eq i64 %i.ap, 0
  br i1 %.not23, label %bb.m, label %bb.k

bb.k:                                             ; preds = %basic_obj_respond_to_missing.exit.thread, %basic_obj_respond_to_missing.exit
  %.0.i1722 = phi i64 [ 36, %basic_obj_respond_to_missing.exit.thread ], [ %i.ao, %basic_obj_respond_to_missing.exit ]
  %i.aq = icmp ne i64 %.0.i1722, 36
  %i.ar = zext i1 %i.aq to i32
  br label %bb.m

bb.l:                                             ; preds = %rb_class_of.exit
  br label %bb.m

bb.m:                                             ; preds = %basic_obj_respond_to_missing.exit, %bb.k, %rb_class_of.exit, %bb.l
  %.0 = phi i32 [ 1, %bb.l ], [ 0, %rb_class_of.exit ], [ 0, %basic_obj_respond_to_missing.exit ], [ %i.ar, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @rb_respond_to(i64 noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = icmp eq i64 %0, 0
  %i.e = and i64 %0, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %0 to ptr
  %i.i = getelementptr i8, ptr %i.h, i64 8
  br label %rb_class_of.exit.i.i

bb.c:                                             ; preds = %bb.a
  switch i64 %0, label %bb.f [
    i64 0, label %rb_class_of.exit.i.i
    i64 4, label %bb.d
    i64 20, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  br label %rb_class_of.exit.i.i

bb.e:                                             ; preds = %bb.c
  br label %rb_class_of.exit.i.i

bb.f:                                             ; preds = %bb.c
  %i.j = trunc i64 %0 to i1
  br i1 %i.j, label %rb_class_of.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = and i64 %0, 254
  %i.l = icmp eq i64 %i.k, 12
  %spec.select.i.i.i = select i1 %i.l, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i.i

rb_class_of.exit.i.i:                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0.in.i.i.i = phi ptr [ %i.i, %bb.b ], [ @rb_cNilClass, %bb.d ], [ @rb_cTrueClass, %bb.e ], [ @rb_cFalseClass, %bb.c ], [ @rb_cInteger, %bb.f ], [ %spec.select.i.i.i, %bb.g ]
  %.0.i.i.i = load i64, ptr %.0.in.i.i.i, align 8, !tbaa !11
  %i.m = tail call fastcc i32 @vm_respond_to(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %.0.i.i.i, i64 noundef %0, i64 noundef %1, i32 noundef 0), !inline_history !216 ; 2 uses
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.h, label %rb_obj_respond_to.exit

bb.h:                                             ; preds = %rb_class_of.exit.i.i
  %i.o = tail call fastcc i32 @basic_obj_respond_to(ptr noundef %.0..0..0..0..0..0..0..0..i.i, i64 noundef %0, i64 noundef %1, i32 noundef 1), !inline_history !216
  br label %rb_obj_respond_to.exit

rb_obj_respond_to.exit:                           ; preds = %rb_class_of.exit.i.i, %bb.h
  %.0.i.i = phi i32 [ %i.o, %bb.h ], [ %i.m, %rb_class_of.exit.i.i ]
  ret i32 %.0.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_eval_method() local_unnamed_addr #2 {
rb_method_entry.exit:
  %i.a = load i64, ptr @rb_mKernel, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.a, ptr noundef nonnull @.str.13, ptr noundef nonnull @obj_respond_to, i32 noundef -1) #23
  %i.b = load i64, ptr @rb_mKernel, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.b, ptr noundef nonnull @.str.14, ptr noundef nonnull @obj_respond_to_missing, i32 noundef 2) #23
  %i.c = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.c, ptr noundef nonnull @.str.15, ptr noundef nonnull @rb_mod_remove_method, i32 noundef -1) #23
  %i.d = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.d, ptr noundef nonnull @.str.16, ptr noundef nonnull @rb_mod_undef_method, i32 noundef -1) #23
  %i.e = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.e, ptr noundef nonnull @.str.17, ptr noundef nonnull @rb_mod_alias_method, i32 noundef 2) #23
  %i.f = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.f, ptr noundef nonnull @.str.18, ptr noundef nonnull @rb_mod_public, i32 noundef -1) #23
  %i.g = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.g, ptr noundef nonnull @.str.19, ptr noundef nonnull @rb_mod_protected, i32 noundef -1) #23
  %i.h = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.h, ptr noundef nonnull @.str.20, ptr noundef nonnull @rb_mod_private, i32 noundef -1) #23
  %i.i = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @rb_mod_modfunc, i32 noundef -1) #23
  %i.j = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_private_method(i64 noundef %i.j, ptr noundef nonnull @.str.22, ptr noundef nonnull @rb_mod_ruby2_keywords, i32 noundef -1) #23
  %i.k = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.k, ptr noundef nonnull @.str.23, ptr noundef nonnull @rb_mod_method_defined, i32 noundef -1) #23
  %i.l = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.l, ptr noundef nonnull @.str.24, ptr noundef nonnull @rb_mod_public_method_defined, i32 noundef -1) #23
  %i.m = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.m, ptr noundef nonnull @.str.25, ptr noundef nonnull @rb_mod_private_method_defined, i32 noundef -1) #23
  %i.n = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.n, ptr noundef nonnull @.str.26, ptr noundef nonnull @rb_mod_protected_method_defined, i32 noundef -1) #23
  %i.o = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.o, ptr noundef nonnull @.str.27, ptr noundef nonnull @rb_mod_public_method, i32 noundef -1) #23
  %i.p = load i64, ptr @rb_cModule, align 8, !tbaa !11
  tail call void @rb_define_method(i64 noundef %i.p, ptr noundef nonnull @.str.28, ptr noundef nonnull @rb_mod_private_method, i32 noundef -1) #23
  %i.q = tail call ptr @rb_current_box() #23
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !448
  %i.t = tail call i64 @rb_singleton_class(i64 noundef %i.s) #23
  tail call void @rb_define_private_method(i64 noundef %i.t, ptr noundef nonnull @.str.18, ptr noundef nonnull @top_public, i32 noundef -1) #23
  %i.u = tail call ptr @rb_current_box() #23
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !448
  %i.x = tail call i64 @rb_singleton_class(i64 noundef %i.w) #23
  tail call void @rb_define_private_method(i64 noundef %i.x, ptr noundef nonnull @.str.20, ptr noundef nonnull @top_private, i32 noundef -1) #23
  %i.y = tail call ptr @rb_current_box() #23
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !448
  %i.ab = tail call i64 @rb_singleton_class(i64 noundef %i.aa) #23
  tail call void @rb_define_private_method(i64 noundef %i.ab, ptr noundef nonnull @.str.22, ptr noundef nonnull @top_ruby2_keywords, i32 noundef -1) #23
  %i.ac = load i64, ptr @rb_eException, align 8, !tbaa !11
  %i.ad = tail call fastcc ptr @search_method0(i64 noundef %i.ac, i64 noundef 2913, ptr noundef null, i1 noundef zeroext false) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = load i64, ptr @rb_eException, align 8, !tbaa !11 ; 2 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !217
  %i.ag = trunc i64 %i.af to i32
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = and i32 %i.ah, 3
  %i.aj = tail call fastcc ptr @method_entry_set(i64 noundef %i.ae, i64 noundef 2913, ptr noundef nonnull readonly %i.ad, i32 noundef %i.ai, i64 noundef %i.ae) ; 0 uses
  %i.ak = load i64, ptr @rb_eException, align 8, !tbaa !11
  %i.al = tail call fastcc ptr @search_method0(i64 noundef %i.ak, i64 noundef 157, ptr noundef null, i1 noundef zeroext false) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = load i64, ptr @rb_eException, align 8, !tbaa !11 ; 2 uses
  %i.an = load i64, ptr %i.al, align 8, !tbaa !217
  %i.ao = trunc i64 %i.an to i32
  %i.ap = lshr i32 %i.ao, 16
  %i.aq = and i32 %i.ap, 3
  %i.ar = tail call fastcc ptr @method_entry_set(i64 noundef %i.am, i64 noundef 157, ptr noundef nonnull readonly %i.al, i32 noundef %i.aq, i64 noundef %i.am) ; 0 uses
  %i.as = load i64, ptr @rb_eException, align 8, !tbaa !11
  %i.at = tail call fastcc ptr @search_method0(i64 noundef %i.as, i64 noundef 158, ptr noundef null, i1 noundef zeroext false) ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.at) ]
  %i.au = load i64, ptr @rb_eException, align 8, !tbaa !11 ; 2 uses
  %i.av = load i64, ptr %i.at, align 8, !tbaa !217
  %i.aw = trunc i64 %i.av to i32
  %i.ax = lshr i32 %i.aw, 16
  %i.ay = and i32 %i.ax, 3
  %i.az = tail call fastcc ptr @method_entry_set(i64 noundef %i.au, i64 noundef 158, ptr noundef nonnull readonly %i.at, i32 noundef %i.ay, i64 noundef %i.au) ; 0 uses
  ret void
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 37, 36) i64 @obj_respond_to(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #2 {
bb.a:
  %3 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %4 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %5 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %6 = alloca %struct.rb_callcache, align 8       ; 8 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca [2 x i64], align 16               ; 6 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  store volatile ptr %i.f, ptr %i.c, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.c, align 8, !tbaa !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = icmp slt i32 %0, 1
  br i1 %i.g, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.h, ptr %i.d, align 8, !tbaa !11
  %.not22 = icmp eq i32 %0, 1
  br i1 %.not22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = icmp eq i32 %0, 2
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.b
  %i.l = phi i64 [ %i.j, %bb.b ], [ 4, %.preheader ] ; 2 uses
  %.185.i.lcssa = phi i1 [ %i.k, %bb.b ], [ true, %.preheader ]
  br i1 %.185.i.lcssa, label %rb_scan_args_set.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #58
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.c
  %i.m = call i64 @rb_check_id(ptr noundef nonnull %i.d) #23 ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.e, label %bb.o

bb.e:                                             ; preds = %rb_scan_args_set.exit
  %i.n = icmp eq i64 %2, 0
  %i.o = and i64 %2, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = inttoptr i64 %2 to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 8
  br label %rb_class_of.exit

bb.g:                                             ; preds = %bb.e
  switch i64 %2, label %bb.j [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.h
    i64 20, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  br label %rb_class_of.exit

bb.i:                                             ; preds = %bb.g
  br label %rb_class_of.exit

bb.j:                                             ; preds = %bb.g
  %i.t = trunc i64 %2 to i1
  br i1 %i.t, label %rb_class_of.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = and i64 %2, 254
  %i.v = icmp eq i64 %i.u, 12
  %spec.select.i12 = select i1 %i.v, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.0.in.i = phi ptr [ %i.s, %bb.f ], [ @rb_cNilClass, %bb.h ], [ @rb_cTrueClass, %bb.i ], [ @rb_cFalseClass, %bb.g ], [ @rb_cInteger, %bb.j ], [ %spec.select.i12, %bb.k ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11
  %i.w = load i64, ptr %i.d, align 8, !tbaa !11
  %i.x = call i64 @rb_to_symbol(i64 noundef %i.w) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.y = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i, i64 noundef 158, ptr noundef nonnull %i.a), !inline_history !449 ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %basic_obj_respond_to_missing.exit.thread, label %bb.l

bb.l:                                             ; preds = %rb_class_of.exit
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !83  ; 2 uses
  %.not7.i.i = icmp eq ptr %i.aa, null
  br i1 %.not7.i.i, label %basic_obj_respond_to_missing.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = load i8, ptr %i.aa, align 8
  %i.ac = and i8 %i.ab, 15
  %i.ad = icmp eq i8 %i.ac, 7
  br i1 %i.ad, label %basic_obj_respond_to_missing.exit.thread, label %callable_method_entry.exit.i

callable_method_entry.exit.i:                     ; preds = %bb.m
  %i.ae = load i64, ptr %i.y, align 8, !tbaa !170
  %i.af = and i64 %i.ae, 262144
  %.not9.i = icmp eq i64 %i.af, 0
  br i1 %.not9.i, label %basic_obj_respond_to_missing.exit, label %basic_obj_respond_to_missing.exit.thread

basic_obj_respond_to_missing.exit.thread:         ; preds = %callable_method_entry.exit.i, %rb_class_of.exit, %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.n

basic_obj_respond_to_missing.exit:                ; preds = %callable_method_entry.exit.i
  store i64 %i.x, ptr %i.b, align 16, !tbaa !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.l, ptr %i.ag, align 8, !tbaa !11
  %i.ah = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 136 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !441
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i64 3190810, ptr %6, align 8, !tbaa !442
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 36, ptr %i.aj, align 8, !tbaa !185
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.y, ptr %i.ak, align 8, !tbaa !187
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @vm_call_general, ptr %i.al, align 8, !tbaa !234
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 0, ptr %i.am, align 8, !tbaa !443
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i64 106522, ptr %5, align 8, !tbaa !445
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr null, ptr %i.an, align 8, !tbaa !238
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 158, ptr %i.ao, align 8, !tbaa !163
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.ap, align 8, !tbaa !173
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 2, ptr %i.aq, align 8, !tbaa !174
  store ptr %5, ptr %4, align 8, !tbaa !225
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.ar, align 8, !tbaa !182
  store ptr %4, ptr %3, align 8, !tbaa !226
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %6, ptr %i.as, align 8, !tbaa !233
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 0, ptr %i.ah, align 8, !tbaa !441
  store i64 0, ptr %i.at, align 8, !tbaa !228
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %2, ptr %i.au, align 8, !tbaa !229
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 2, ptr %i.av, align 8, !tbaa !230
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.aw, i8 0, i64 12, i1 false)
  %i.ax = call fastcc i64 @vm_call0_body(ptr noundef %.0..0..0..0..0..0..i, ptr noundef %3, ptr noundef nonnull %i.b) #62, !inline_history !450
  %.fr = freeze i64 %i.ax                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store i64 %i.ai, ptr %i.ah, align 8, !tbaa !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ay = icmp eq i64 %.fr, 36
  br i1 %i.ay, label %bb.n, label %bb.p

bb.n:                                             ; preds = %basic_obj_respond_to_missing.exit.thread, %basic_obj_respond_to_missing.exit
  br label %bb.p

bb.o:                                             ; preds = %rb_scan_args_set.exit
  %i.az = and i64 %i.l, -5
  %.not16 = icmp eq i64 %i.az, 0
  %i.ba = zext i1 %.not16 to i32
  %i.bb = call fastcc i32 @basic_obj_respond_to(ptr noundef %.0..0..0..0..0..0..i, i64 noundef %2, i64 noundef %i.m, i32 noundef %i.ba)
  %.not11 = icmp eq i32 %i.bb, 0
  %i.bc = select i1 %.not11, i64 0, i64 20
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %basic_obj_respond_to_missing.exit, %bb.o
  %.0 = phi i64 [ %i.bc, %bb.o ], [ 0, %bb.n ], [ %.fr, %basic_obj_respond_to_missing.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret i64 %.0
}

end_hunk_3
begin_hunk_4_@rb_vm_make_binding:bb.a
  %i.ab = and i64 %i.z, 7
  %i.ac = icmp ne i64 %i.ab, 0
  %i.ad = or i1 %i.aa, %i.ac
  br i1 %i.ad, label %rb_obj_write.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @rb_gc_writebarrier(i64 noundef %i.r, i64 noundef %i.z) #23
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.h, %bb.g
  %i.ae = getelementptr i8, ptr %i.v, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !499 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !27
  %i.ah = getelementptr i8, ptr %i.af, i64 8
  %.val.i.i = load i64, ptr %i.ah, align 8, !tbaa !11 ; 3 uses
  %i.ai = icmp eq i64 %.val.i.i, 0
  %i.aj = and i64 %.val.i.i, 7
  %i.ak = icmp ne i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %vm_bind_update_env.exit, label %bb.i

bb.i:                                             ; preds = %rb_obj_write.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %i.r, i64 noundef %.val.i.i) #23
  br label %vm_bind_update_env.exit

vm_bind_update_env.exit:                          ; preds = %rb_obj_write.exit.i, %bb.i
  %i.am = getelementptr i8, ptr %.06.i, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !74 ; 4 uses
  store i64 %i.an, ptr %i.u, align 8, !tbaa !11
  %i.ao = icmp eq i64 %i.an, 0
  %i.ap = and i64 %i.an, 7
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = or i1 %i.ao, %i.aq
  br i1 %i.ar, label %rb_obj_write.exit, label %bb.j

bb.j:                                             ; preds = %vm_bind_update_env.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.r, i64 noundef %i.an) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %vm_bind_update_env.exit, %bb.j
  %i.as = getelementptr i8, ptr %.06.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !123 ; 2 uses
  %i.au = ptrtoint ptr %i.at to i64               ; 3 uses
  store i64 %i.au, ptr %i.w, align 8, !tbaa !11
  %i.av = icmp eq ptr %i.at, null
  %i.aw = and i64 %i.au, 7
  %i.ax = icmp ne i64 %i.aw, 0
  %i.ay = or i1 %i.av, %i.ax
  br i1 %i.ay, label %rb_obj_write.exit36, label %bb.k

bb.k:                                             ; preds = %rb_obj_write.exit
  tail call void @rb_gc_writebarrier(i64 noundef %i.r, i64 noundef %i.au) #23
  br label %rb_obj_write.exit36

rb_obj_write.exit36:                              ; preds = %rb_obj_write.exit, %bb.k
  %i.az = getelementptr i8, ptr %i.u, i64 32
  %i.ba = getelementptr i8, ptr %.011.i34, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !123
  %i.bc = getelementptr i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !124
  %i.be = getelementptr i8, ptr %i.bd, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !559 ; 4 uses
  store i64 %i.bf, ptr %i.az, align 8, !tbaa !11
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = and i64 %i.bf, 7
  %i.bi = icmp ne i64 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  br i1 %i.bj, label %rb_obj_write.exit37, label %bb.l

bb.l:                                             ; preds = %rb_obj_write.exit36
  tail call void @rb_gc_writebarrier(i64 noundef %i.r, i64 noundef %i.bf) #23
  br label %rb_obj_write.exit37

rb_obj_write.exit37:                              ; preds = %rb_obj_write.exit36, %bb.l
  %i.bk = tail call i32 @rb_vm_get_sourceline(ptr noundef nonnull %.011.i34) #23
  %i.bl = getelementptr i8, ptr %i.u, i64 40
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !560
  ret i64 %i.r
}

declare i64 @rb_binding_alloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_binding_add_dynavars(i64 noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.RNode_SCOPE, align 8        ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = getelementptr i8, ptr %1, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !562  ; 6 uses
  %i.e = icmp ne i64 %i.d, 0
  %i.f = and i64 %i.d, 7
  %i.g = icmp eq i64 %i.f, 0
  %.not87 = and i1 %i.e, %i.g                     ; 2 uses
  %.pre.i = inttoptr i64 %i.d to ptr              ; 5 uses
  %.pre = load i64, ptr %.pre.i, align 8, !tbaa !77 ; 4 uses
  %i.h = and i64 %.pre, 31
  %i.i = icmp eq i64 %i.h, 5
  %or.cond = select i1 %.not87, i1 %i.i, i1 false
  br i1 %or.cond, label %pathobj_realpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.a
  %i.j = and i64 %.pre, 8192                      ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.j, 0
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.k = getelementptr i8, ptr %.pre.i, i64 16
  br label %pathobj_path.exit

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.l = getelementptr i8, ptr %.pre.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  br label %pathobj_path.exit

pathobj_path.exit:                                ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ]
  %i.n = load i64, ptr %.0.i.i.i, align 8, !tbaa !11 ; 2 uses
  br i1 %.not87, label %rbimpl_RB_TYPE_P_fastpath.exit.i40, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i41

rbimpl_RB_TYPE_P_fastpath.exit.i40:               ; preds = %pathobj_path.exit
  %.pre67 = and i64 %.pre, 31
  %i.o = icmp eq i64 %.pre67, 5
  br i1 %i.o, label %pathobj_realpath.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i40.rbimpl_RB_TYPE_P_fastpath.exit.thread.i41_crit_edge

rbimpl_RB_TYPE_P_fastpath.exit.i40.rbimpl_RB_TYPE_P_fastpath.exit.thread.i41_crit_edge: ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i40
  %.pre66 = and i64 %.pre, 8192
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i41

rbimpl_RB_TYPE_P_fastpath.exit.thread.i41:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i40.rbimpl_RB_TYPE_P_fastpath.exit.thread.i41_crit_edge, %pathobj_path.exit
  %.pre-phi = phi i64 [ %.pre66, %rbimpl_RB_TYPE_P_fastpath.exit.i40.rbimpl_RB_TYPE_P_fastpath.exit.thread.i41_crit_edge ], [ %i.j, %pathobj_path.exit ]
  %.not.i.i.i42 = icmp eq i64 %.pre-phi, 0
  br i1 %.not.i.i.i42, label %bb.e, label %bb.d

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i41
  %i.p = getelementptr i8, ptr %.pre.i, i64 16
  br label %RARRAY_AREF.exit.i43

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i41
  %i.q = getelementptr i8, ptr %.pre.i, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !27
  br label %RARRAY_AREF.exit.i43

RARRAY_AREF.exit.i43:                             ; preds = %bb.e, %bb.d
  %.0.i.i.i44 = phi ptr [ %i.p, %bb.d ], [ %i.r, %bb.e ]
  %i.s = getelementptr i8, ptr %.0.i.i.i44, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  br label %pathobj_realpath.exit

pathobj_realpath.exit:                            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit.i40, %RARRAY_AREF.exit.i43
  %.0.i52 = phi i64 [ %i.n, %RARRAY_AREF.exit.i43 ], [ %i.n, %rbimpl_RB_TYPE_P_fastpath.exit.i40 ], [ %i.d, %bb.a ]
  %.0.i45 = phi i64 [ %i.t, %RARRAY_AREF.exit.i43 ], [ %i.d, %rbimpl_RB_TYPE_P_fastpath.exit.i40 ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !28
  store volatile ptr %i.v, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.w = icmp slt i32 %2, 0
  br i1 %i.w, label %bb.w, label %tailrecurse.i

tailrecurse.i:                                    ; preds = %pathobj_realpath.exit, %bb.g
  %.tr.i = phi ptr [ %i.ad, %bb.g ], [ %1, %pathobj_realpath.exit ] ; 3 uses
  %i.x = getelementptr i8, ptr %.tr.i, i64 24
  %.val.i = load i32, ptr %i.x, align 8, !tbaa !458
  switch i32 %.val.i, label %bb.h [
    i32 0, label %bb.f
    i32 3, label %bb.g
    i32 1, label %vm_block_iseq.exit
    i32 2, label %vm_block_iseq.exit
  ]

bb.f:                                             ; preds = %tailrecurse.i
  %i.y = getelementptr i8, ptr %.tr.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  br label %vm_block_iseq.exit

bb.g:                                             ; preds = %tailrecurse.i
  %i.aa = load i64, ptr %.tr.i, align 8, !tbaa !27
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !456
  br label %tailrecurse.i

bb.h:                                             ; preds = %tailrecurse.i
  unreachable

vm_block_iseq.exit:                               ; preds = %tailrecurse.i, %tailrecurse.i, %bb.f
  %.0.i46 = phi ptr [ %i.z, %bb.f ], [ null, %tailrecurse.i ], [ null, %tailrecurse.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !11
  %i.ae = zext nneg i32 %2 to i64
  %i.af = shl nuw nsw i64 %i.ae, 3                ; 2 uses
  %i.ag = add nuw nsw i64 %i.af, 8                ; 2 uses
  %i.ah = icmp ult i32 %2, 127
  br i1 %i.ah, label %rbimpl_size_mul_or_raise.exit, label %rbimpl_size_mul_or_raise.exit.thread

rbimpl_size_mul_or_raise.exit.thread:             ; preds = %vm_block_iseq.exit
  %i.ai = call noalias nonnull ptr @rb_alloc_tmp_buffer(ptr noundef nonnull %i.b, i64 noundef %i.ag) #60 ; 2 uses
  store i32 %2, ptr %i.ai, align 8, !tbaa !7
  br label %bb.i

rbimpl_size_mul_or_raise.exit:                    ; preds = %vm_block_iseq.exit
  %i.aj = alloca i8, i64 %i.ag, align 16          ; 3 uses
  store i32 %2, ptr %i.aj, align 16, !tbaa !7
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.i

bb.i:                                             ; preds = %rbimpl_size_mul_or_raise.exit.thread, %rbimpl_size_mul_or_raise.exit
  %i.ak = phi ptr [ %i.ai, %rbimpl_size_mul_or_raise.exit.thread ], [ %i.aj, %rbimpl_size_mul_or_raise.exit ] ; 2 uses
  %5 = getelementptr i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %5, ptr noundef nonnull readonly align 1 %3, i64 noundef %i.af, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.i
  %i.al = phi ptr [ %i.aj, %rbimpl_size_mul_or_raise.exit ], [ %i.ak, %bb.i ]
  call void @rb_node_init(ptr noundef nonnull %4, i32 noundef 0) #23
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !563
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  %i.ao = call i64 @rb_ruby_ast_new(ptr noundef nonnull %4) #23 ; 2 uses
  %.not = icmp eq ptr %.0.i46, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.ap = getelementptr i8, ptr %.0.i46, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !124
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !569
  %i.at = call ptr @rb_iseq_new(i64 noundef %i.ao, i64 noundef %i.as, i64 noundef %.0.i52, i64 noundef %.0.i45, ptr noundef nonnull %.0.i46, i32 noundef 6) #23
  br label %bb.l

bb.k:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.au = call i64 @rb_fstring_new(ptr noundef nonnull @.str.93, i64 noundef 6) #23 ; 3 uses
  %i.av = call ptr @rb_iseq_new_top(i64 noundef %i.ao, i64 noundef %i.au, i64 noundef %i.au, i64 noundef %i.au, ptr noundef null) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.035 = phi ptr [ %i.at, %bb.j ], [ %i.av, %bb.k ] ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !563
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.b) #23
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %bb.n, %bb.l
  %.tr.i.i = phi ptr [ %1, %bb.l ], [ %i.bb, %bb.n ] ; 3 uses
  %i.aw = getelementptr i8, ptr %.tr.i.i, i64 24
  %.val.i.i = load i32, ptr %i.aw, align 8, !tbaa !458
  switch i32 %.val.i.i, label %bb.o [
    i32 0, label %bb.m
    i32 1, label %bb.m
    i32 3, label %bb.n
    i32 2, label %vm_block_self.exit.i
  ]

bb.m:                                             ; preds = %tailrecurse.i.i, %tailrecurse.i.i
  %i.ax = load i64, ptr %.tr.i.i, align 8, !tbaa !27
  br label %vm_block_self.exit.i

bb.n:                                             ; preds = %tailrecurse.i.i
  %i.ay = load i64, ptr %.tr.i.i, align 8, !tbaa !27
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr i8, ptr %i.az, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !456
  br label %tailrecurse.i.i

bb.o:                                             ; preds = %tailrecurse.i.i
  unreachable

vm_block_self.exit.i:                             ; preds = %tailrecurse.i.i, %bb.m
  %.0.i.i = phi i64 [ %i.ax, %bb.m ], [ 36, %tailrecurse.i.i ]
  br label %tailrecurse.i9.i

tailrecurse.i9.i:                                 ; preds = %bb.q, %vm_block_self.exit.i
  %.tr.i10.i = phi ptr [ %1, %vm_block_self.exit.i ], [ %i.bk, %bb.q ] ; 3 uses
  %i.bc = getelementptr i8, ptr %.tr.i10.i, i64 24
  %.val.i11.i = load i32, ptr %i.bc, align 8, !tbaa !458
  switch i32 %.val.i11.i, label %bb.r [
    i32 0, label %bb.p
    i32 1, label %bb.p
    i32 3, label %bb.q
    i32 2, label %vm_block_ep.exit.i
  ]

bb.p:                                             ; preds = %tailrecurse.i9.i, %tailrecurse.i9.i
  %i.bd = getelementptr i8, ptr %.tr.i10.i, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !27
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = or i64 %i.bf, 1
  br label %vm_block_ep.exit.i

bb.q:                                             ; preds = %tailrecurse.i9.i
  %i.bh = load i64, ptr %.tr.i10.i, align 8, !tbaa !27
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !456
  br label %tailrecurse.i9.i

bb.r:                                             ; preds = %tailrecurse.i9.i
  unreachable

vm_block_ep.exit.i:                               ; preds = %tailrecurse.i9.i, %bb.p
  %.0.i12.i = phi i64 [ %i.bg, %bb.p ], [ 1, %tailrecurse.i9.i ]
  %i.bl = getelementptr i8, ptr %.035, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !124 ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !147
  %i.bp = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16 ; 4 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !70 ; 7 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !73 ; 5 uses
  %i.bt = getelementptr i8, ptr %i.bm, i64 240
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !190 ; 5 uses
  %i.bv = getelementptr i8, ptr %i.bm, i64 264
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !355
  %i.bx = getelementptr i8, ptr %i.bq, i64 -56    ; 4 uses
  %i.by = add i32 %i.bw, %i.bu
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr [8 x i8], ptr %i.bs, i64 %i.bz
  %i.cb = getelementptr i8, ptr %i.ca, i64 56
  %.not.i.i = icmp ugt ptr %i.bx, %i.cb
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.s, !prof !72

.preheader.i.i:                                   ; preds = %vm_block_ep.exit.i
  %i.cc = icmp sgt i32 %i.bu, 0
  br i1 %i.cc, label %.lr.ph.i.i.preheader, label %vm_set_eval_stack.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.cd = zext nneg i32 %i.bu to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bu, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader95, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.cd, 2147483644              ; 4 uses
  %i.ce = shl nuw nsw i64 %n.vec, 3
  %i.cf = getelementptr i8, ptr %i.bs, i64 %i.ce  ; 2 uses
  %i.cg = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ch = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.ch ; 2 uses
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.ci, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !570

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cd
  br i1 %cmp.n, label %vm_set_eval_stack.exit, label %.lr.ph.i.i.preheader95

.lr.ph.i.i.preheader95:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.026.i.i.ph = phi ptr [ %i.bs, %.lr.ph.i.i.preheader ], [ %i.cf, %middle.block ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph.i.i

bb.s:                                             ; preds = %vm_block_ep.exit.i
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader95, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader95 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.cl, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader95 ]
  %i.ck = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !11
  %i.cl = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cl, %i.bu
  br i1 %exitcond.not.i.i, label %vm_set_eval_stack.exit, label %.lr.ph.i.i, !llvm.loop !571

vm_set_eval_stack.exit:                           ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.bs, %.preheader.i.i ], [ %i.cf, %middle.block ], [ %i.ck, %.lr.ph.i.i ] ; 4 uses
  %i.cm = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i, align 8, !tbaa !11
  %i.cn = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %.0.i12.i, ptr %i.cm, align 8, !tbaa !11
  %i.co = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 2004287521, ptr %i.cn, align 8, !tbaa !11
  store ptr %i.bo, ptr %i.bx, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bq, i64 -48
  store ptr %i.co, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.bq, i64 -40
  store ptr %.035, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.bq, i64 -32
  store i64 %.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.bq, i64 -24
  store ptr %i.cn, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.bq, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bx, ptr %i.bp, align 8, !tbaa !70
  %i.cp = call fastcc i64 @vm_make_env_each(ptr noundef nonnull readnone %.0..0..0..0..0..0..i, ptr noundef nonnull %i.bx), !inline_history !496
  %i.cq = inttoptr i64 %i.cp to ptr               ; 3 uses
  %i.cr = getelementptr i8, ptr %1, i64 16
  %i.cs = getelementptr i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !497 ; 2 uses
  %i.cu = ptrtoint ptr %i.ct to i64               ; 3 uses
  store i64 %i.cu, ptr %i.cr, align 8, !tbaa !11
  %i.cv = icmp eq ptr %i.ct, null
  %i.cw = and i64 %i.cu, 7
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = or i1 %i.cv, %i.cx
  br i1 %i.cy, label %rb_obj_write.exit.i, label %bb.t

bb.t:                                             ; preds = %vm_set_eval_stack.exit
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %i.cu) #23
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.t, %vm_set_eval_stack.exit
  %i.cz = getelementptr i8, ptr %i.cq, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !499 ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 8
  store ptr %i.da, ptr %i.db, align 8, !tbaa !27
  %i.dc = getelementptr i8, ptr %i.da, i64 8
end_hunk_4
begin_hunk_5_@vm_invoke_bmethod:bb.a
  br i1 %cmp.n82, label %invoke_block.exit, label %.lr.ph.i.i.preheader85

.lr.ph.i.i.preheader85:                           ; preds = %.lr.ph.i.i.preheader, %middle.block81
  %.026.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block81 ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bv, %middle.block81 ]
  br label %.lr.ph.i.i

bb.o:                                             ; preds = %bb.n
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader85, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader85 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.ca, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader85 ]
  %i.bz = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !11
  %i.ca = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.ca, %i.bj
  br i1 %exitcond.not.i.i, label %invoke_block.exit, label %.lr.ph.i.i, !llvm.loop !575

invoke_block.exit:                                ; preds = %.lr.ph.i.i, %middle.block81, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.bg, %.preheader.i.i ], [ %i.bu, %middle.block81 ], [ %i.bz, %.lr.ph.i.i ] ; 4 uses
  %i.cb = sext i32 %i.au to i64
  %i.cc = getelementptr [8 x i8], ptr %i.bb, i64 %i.cb
  %i.cd = ptrtoint ptr %.037.i.val7 to i64
  %i.ce = or i64 %i.cd, 1
  %i.cf = or disjoint i64 %i.g, 32
  %i.cg = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i, align 8, !tbaa !11
  %i.ch = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 %i.cf, ptr %i.ch, align 8, !tbaa !11
  store ptr %i.cc, ptr %i.bm, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bc, i64 -48
  store ptr %i.ci, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.bc, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.bc, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.bc, i64 -24
  store ptr %i.ch, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.bc, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bm, ptr %i.h, align 8, !tbaa !70
  br label %invoke_iseq_block_from_c.exit.i

bb.p:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.cj = getelementptr i8, ptr %i.be, i64 8
  %i.ck = sext i32 %i.az to i64
  %i.cl = getelementptr [8 x i8], ptr %i.cj, i64 %i.ck ; 5 uses
  %i.cm = getelementptr i8, ptr %i.ax, i64 240
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !190
  %i.co = sub i32 %i.cn, %i.az                    ; 5 uses
  %i.cp = getelementptr i8, ptr %i.ax, i64 264
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !355
  %i.cr = getelementptr i8, ptr %i.bc, i64 -56    ; 3 uses
  %i.cs = add i32 %i.cq, %i.co
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr [8 x i8], ptr %i.cl, i64 %i.ct
  %i.cv = getelementptr i8, ptr %i.cu, i64 56
  %.not.i.i12 = icmp ugt ptr %i.cr, %i.cv
  br i1 %.not.i.i12, label %.preheader.i.i13, label %bb.q, !prof !72

.preheader.i.i13:                                 ; preds = %bb.p
  %i.cw = icmp sgt i32 %i.co, 0
  br i1 %i.cw, label %.lr.ph.i.i20.preheader, label %invoke_bmethod.exit

.lr.ph.i.i20.preheader:                           ; preds = %.preheader.i.i13
  %i.cx = zext nneg i32 %i.co to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.co, 4
  br i1 %min.iters.check, label %.lr.ph.i.i20.preheader86, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i20.preheader
  %n.vec = and i64 %i.cx, 2147483644              ; 4 uses
  %i.cy = shl nuw nsw i64 %n.vec, 3
  %i.cz = getelementptr i8, ptr %i.cl, i64 %i.cy  ; 2 uses
  %i.da = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.db = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.cl, i64 %i.db ; 2 uses
  %i.dc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.dc, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !576

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  br i1 %cmp.n, label %invoke_bmethod.exit, label %.lr.ph.i.i20.preheader86

.lr.ph.i.i20.preheader86:                         ; preds = %.lr.ph.i.i20.preheader, %middle.block
  %.026.i.i21.ph = phi ptr [ %i.cl, %.lr.ph.i.i20.preheader ], [ %i.cz, %middle.block ]
  %.02325.i.i22.ph = phi i32 [ 0, %.lr.ph.i.i20.preheader ], [ %i.da, %middle.block ]
  br label %.lr.ph.i.i20

bb.q:                                             ; preds = %bb.p
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i20:                                     ; preds = %.lr.ph.i.i20.preheader86, %.lr.ph.i.i20
  %.026.i.i21 = phi ptr [ %i.de, %.lr.ph.i.i20 ], [ %.026.i.i21.ph, %.lr.ph.i.i20.preheader86 ] ; 2 uses
  %.02325.i.i22 = phi i32 [ %i.df, %.lr.ph.i.i20 ], [ %.02325.i.i22.ph, %.lr.ph.i.i20.preheader86 ]
  %i.de = getelementptr i8, ptr %.026.i.i21, i64 8 ; 2 uses
  store i64 4, ptr %.026.i.i21, align 8, !tbaa !11
  %i.df = add nuw nsw i32 %.02325.i.i22, 1        ; 2 uses
  %exitcond.not.i.i23 = icmp eq i32 %i.df, %i.co
  br i1 %exitcond.not.i.i23, label %invoke_bmethod.exit, label %.lr.ph.i.i20, !llvm.loop !577

invoke_bmethod.exit:                              ; preds = %.lr.ph.i.i20, %middle.block, %.preheader.i.i13
  %.0.lcssa.i.i14 = phi ptr [ %i.cl, %.preheader.i.i13 ], [ %i.cz, %middle.block ], [ %i.de, %.lr.ph.i.i20 ] ; 4 uses
  %i.dg = sext i32 %i.au to i64
  %i.dh = getelementptr [8 x i8], ptr %i.bb, i64 %i.dg
  %i.di = ptrtoint ptr %7 to i64
  %i.dj = ptrtoint ptr %.037.i.val7 to i64
  %i.dk = or i64 %i.dj, 1
  %i.dl = or disjoint i64 %i.g, 64
  %i.dm = getelementptr i8, ptr %.0.lcssa.i.i14, i64 8
  store i64 %i.di, ptr %.0.lcssa.i.i14, align 8, !tbaa !11
  %i.dn = getelementptr i8, ptr %.0.lcssa.i.i14, i64 16 ; 2 uses
  store i64 %i.dk, ptr %i.dm, align 8, !tbaa !11
  %i.do = getelementptr i8, ptr %.0.lcssa.i.i14, i64 24
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !11
  store ptr %i.dh, ptr %i.cr, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i15 = getelementptr i8, ptr %i.bc, i64 -48
  store ptr %i.do, ptr %.sroa.2.0..sroa_idx.i.i15, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i16 = getelementptr i8, ptr %i.bc, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i.i16, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i17 = getelementptr i8, ptr %i.bc, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i.i17, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i18 = getelementptr i8, ptr %i.bc, i64 -24 ; 2 uses
  store ptr %i.dn, ptr %.sroa.5.0..sroa_idx.i.i18, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i19 = getelementptr i8, ptr %i.bc, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i19, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.cr, ptr %i.h, align 8, !tbaa !70
  %i.dp = load ptr, ptr %.sroa.5.0..sroa_idx.i.i18, align 8, !tbaa !15 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.dr = or i64 %i.dq, 32
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !11
  br label %invoke_iseq_block_from_c.exit.i

invoke_iseq_block_from_c.exit.i:                  ; preds = %invoke_bmethod.exit, %invoke_block.exit
  %i.ds = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %invoke_block_from_c_proc.exit

bb.r:                                             ; preds = %bb.b
  %i.dt = icmp eq i32 %5, 1
  br i1 %i.dt, label %bb.s, label %.split.i

.split.i:                                         ; preds = %bb.r
  %i.du = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.037.i, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7)
  br label %invoke_block_from_c_proc.exit

bb.s:                                             ; preds = %bb.r
  %i.dv = add i32 %3, -1                          ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr [8 x i8], ptr %4, i64 %i.dw ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !11 ; 5 uses
  %i.dz = icmp eq i64 %i.dy, 0
  %i.ea = and i64 %i.dy, 7
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = or i1 %i.dz, %i.eb
  br i1 %i.ec, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.s
  %i.ed = inttoptr i64 %i.dy to ptr
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !77 ; 2 uses
  %i.ef = and i64 %i.ee, 31
  %i.eg = icmp eq i64 %i.ef, 8
  br i1 %i.eg, label %bb.t, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread

rbimpl_RB_TYPE_P_fastpath.exit.i.thread:          ; preds = %bb.s, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.eh = tail call i64 @rb_to_hash_type(i64 noundef %i.dy) #23 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.eh to ptr
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %bb.t

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ei = phi i64 [ %i.ee, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %.0.i = phi i64 [ %i.dy, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.eh, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %i.ej = and i64 %i.ei, 32768
  %.not.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ek = lshr i64 %i.ei, 16
  %i.el = and i64 %i.ek, 15
  br label %RHASH_EMPTY_P.exit

bb.v:                                             ; preds = %bb.t
  %i.em = add i64 %.0.i, 24
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.u, %bb.v
  %.0.i.i24 = phi i64 [ %i.el, %bb.u ], [ %i.ep, %bb.v ]
  %i.eq = icmp eq i64 %.0.i.i24, 0
  br i1 %i.eq, label %.split42.i, label %bb.w

bb.w:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.er = tail call i64 @rb_hash_dup(i64 noundef %.0.i) #23
  store i64 %i.er, ptr %i.dx, align 8, !tbaa !11
  br label %.split42.i

.split42.i:                                       ; preds = %RHASH_EMPTY_P.exit, %bb.w
  %.040.i = phi i32 [ %3, %bb.w ], [ %i.dv, %RHASH_EMPTY_P.exit ]
  %i.es = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.037.i, i64 noundef %2, i32 noundef %.040.i, ptr noundef nonnull %4, i32 noundef 1, i64 noundef %6, ptr noundef %7)
  br label %invoke_block_from_c_proc.exit

bb.x:                                             ; preds = %bb.b
  %i.et = load i64, ptr %.037.i, align 8, !tbaa !27
  %i.eu = tail call i64 @rb_sym2id(i64 noundef %i.et) #23
  %i.ev = icmp eq i64 %6, 0
  br i1 %i.ev, label %vm_yield_with_symbol.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ew = and i64 %6, 3
  switch i64 %i.ew, label %bb.z [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.z:                                             ; preds = %bb.y
  %i.ex = and i64 %6, 255
  %i.ey = icmp eq i64 %i.ex, 12
  br i1 %i.ey, label %vm_block_handler_type.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ez = and i64 %6, 7
  %.not.i.i26 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i26, label %RB_SYMBOL_P.exit.i.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.aa
  %i.fa = inttoptr i64 %6 to ptr
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.fb
  %i.fc = and i64 %.fr10.i.i.i, 31
  %i.fd = icmp eq i64 %i.fc, 20
  br i1 %i.fd, label %vm_block_handler_type.exit.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.y, %bb.y
  %i.fe = and i64 %6, -4
  %i.ff = inttoptr i64 %i.fe to ptr
  %i.fg = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.fh = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.ff, i64 noundef %i.fg, i8 noundef signext 0), !inline_history !78
  br label %vm_yield_with_symbol.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.z
  %i.fi = tail call i64 @rb_sym_to_proc(i64 noundef %6) #23
  br label %vm_yield_with_symbol.exit

vm_yield_with_symbol.exit:                        ; preds = %bb.x, %bb.aa, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i25 = phi i64 [ 4, %bb.x ], [ %i.fh, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.fi, %vm_block_handler_type.exit.i.i ], [ %6, %bb.aa ], [ %6, %RB_SYMBOL_P.exit.i.i.i ]
  %i.fj = tail call i64 @rb_sym_proc_call(i64 noundef %i.eu, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %.0.i.i25) #23
  br label %invoke_block_from_c_proc.exit

block_proc_is_lambda.exit:                        ; preds = %bb.b
  %i.fk = load i64, ptr %.037.i, align 8, !tbaa !27 ; 2 uses
  %.not.i27 = icmp ne i64 %i.fk, 0
  tail call void @llvm.assume(i1 %.not.i27)
  %i.fl = inttoptr i64 %i.fk to ptr               ; 2 uses
  %i.fm = getelementptr i8, ptr %i.fl, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !546
  %i.fo = getelementptr i8, ptr %i.fn, i64 32
  %i.fp = load i8, ptr %i.fo, align 8
  %i.fq = lshr i8 %i.fp, 1
  %i.fr = and i8 %i.fq, 1
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = getelementptr i8, ptr %i.fl, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !456
  br label %bb.b

bb.ab:                                            ; preds = %bb.b
  unreachable

invoke_block_from_c_proc.exit:                    ; preds = %invoke_iseq_block_from_c.exit.i, %.split.i, %.split42.i, %vm_yield_with_symbol.exit
  %.038.i = phi i64 [ %i.ds, %invoke_iseq_block_from_c.exit.i ], [ %i.fj, %vm_yield_with_symbol.exit ], [ %i.du, %.split.i ], [ %i.es, %.split42.i ]
  ret i64 %.038.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_invoke_proc(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6) unnamed_addr #2 {
bb.a:
  %7 = alloca %struct.rb_calling_info, align 8    ; 9 uses
  %8 = alloca %struct.rb_callinfo, align 8        ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %block_proc_is_lambda.exit, %bb.a
  %.pn = phi ptr [ %1, %bb.a ], [ %i.ed, %block_proc_is_lambda.exit ] ; 8 uses
  %i.d = getelementptr i8, ptr %.pn, i64 24
  %.037.i.val = load i32, ptr %i.d, align 8, !tbaa !458
  switch i32 %.037.i.val, label %bb.w [
    i32 0, label %bb.c
    i32 1, label %bb.m
    i32 2, label %bb.s
    i32 3, label %block_proc_is_lambda.exit
  ]

bb.c:                                             ; preds = %bb.b
  %.039.i.in.in.in.in.le = getelementptr i8, ptr %.pn, i64 32
  %.039.i.in.in.in.le = load i8, ptr %.039.i.in.in.in.in.le, align 8
  %.039.i.in.in.le = lshr i8 %.039.i.in.in.in.le, 1
  %.039.i.in.le = and i8 %.039.i.in.in.le, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %3, ptr %i.a, align 4, !tbaa !7
  %i.e = getelementptr i8, ptr %.pn, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 3 uses
  %.not.i.i = icmp eq i8 %.039.i.in.le, 0
  %i.g = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !70   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8        ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !73   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %.not45.i.i = icmp eq i32 %5, 0
  %i.k = select i1 %.not45.i.i, i32 0, i32 64
  store i32 %i.k, ptr %i.b, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.l = getelementptr i8, ptr %0, i64 144        ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !63
  %i.n = and i8 %i.m, 2
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.d, label %stack_check.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i32 @rb_ec_stack_check(ptr noundef nonnull %0) #23
  %.not4.i = icmp eq i32 %i.o, 0
  br i1 %.not4.i, label %stack_check.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i8, ptr %i.l, align 8, !tbaa !63
  %i.q = or i8 %i.p, 2
  store i8 %i.q, ptr %i.l, align 8, !tbaa !63
  tail call void @rb_ec_stack_overflow(ptr noundef nonnull %0, i32 noundef 0) #58
  unreachable

stack_check.exit:                                 ; preds = %bb.c, %bb.d
  %i.r = icmp sgt i32 %3, 128
  br i1 %i.r, label %bb.f, label %bb.g, !prof !177

bb.f:                                             ; preds = %stack_check.exit
  %i.s = call fastcc ptr @vm_argv_ruby_array(ptr noundef %i.c, ptr noundef %4, ptr noundef %i.b, ptr noundef %i.a, i32 noundef %5) ; 0 uses
  %.pre29 = load i32, ptr %i.a, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %stack_check.exit
  %i.t = phi i32 [ %.pre29, %bb.f ], [ %3, %stack_check.exit ] ; 5 uses
  %.043.i.i = phi ptr [ %i.c, %bb.f ], [ %4, %stack_check.exit ]
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !73
  %i.v = add i32 %i.t, 1
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr %i.u, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 56
  %.not46.i.i = icmp ugt ptr %i.h, %i.y
  br i1 %.not46.i.i, label %bb.i, label %bb.h, !prof !72

bb.h:                                             ; preds = %bb.g
  call fastcc void @vm_stackoverflow() #58
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.z = sext i32 %i.t to i64                     ; 3 uses
  %i.aa = getelementptr [8 x i8], ptr %i.j, i64 %i.z
  store ptr %i.aa, ptr %i.i, align 8, !tbaa !73
  %i.ab = icmp slt i32 %i.t, 0
  br i1 %i.ab, label %bb.j, label %rbimpl_size_mul_or_raise.exit, !prof !177

bb.j:                                             ; preds = %bb.i
  call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.z) #42
  unreachable

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.i
  %.not.i8 = icmp eq i32 %i.t, 0
  br i1 %.not.i8, label %ruby_nonempty_memcpy.exit, label %bb.k

bb.k:                                             ; preds = %rbimpl_size_mul_or_raise.exit
  %i.ac = shl nuw nsw i64 %i.z, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.j, ptr noundef nonnull readonly align 1 %.043.i.i, i64 noundef %i.ac, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rbimpl_size_mul_or_raise.exit, %bb.k
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !7   ; 2 uses
  %i.ae = xor i8 %.039.i.in.le, 1
  %i.af = zext nneg i8 %i.ae to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %i.t, ptr %i.ag, align 8, !tbaa !230
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %6, ptr %i.ah, align 8, !tbaa !228
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 36
  %i.aj = trunc i32 %i.ad to i8
  %i.ak = lshr i8 %i.aj, 6
  %i.al = and i8 %i.ak, 1
  store i8 %i.al, ptr %i.ai, align 4, !tbaa !231
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 36, ptr %i.am, align 8, !tbaa !229
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 0, ptr %i.an, align 8, !tbaa !573
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr null, ptr %i.ao, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store i64 106522, ptr %8, align 8, !tbaa !445
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.ar = sext i32 %i.ad to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  store i64 %i.ar, ptr %i.aq, align 8, !tbaa !173
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.as, align 8, !tbaa !174
  %i.at = call fastcc i32 @vm_callee_setup_block_arg(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %i.f, ptr noundef nonnull %i.j, i32 noundef range(i32 0, 2) %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  store ptr %i.j, ptr %i.i, align 8, !tbaa !73
  %i.au = getelementptr i8, ptr %.pn, i64 8
  %.037.i.val7 = load ptr, ptr %i.au, align 8, !tbaa !210
  %i.av = getelementptr i8, ptr %i.f, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !124 ; 4 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 20
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !191 ; 2 uses
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !147
  %i.bb = load ptr, ptr %i.g, align 8, !tbaa !70  ; 7 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !73
  %i.be = sext i32 %i.ay to i64
  %i.bf = getelementptr [8 x i8], ptr %i.bd, i64 %i.be ; 5 uses
  %i.bg = getelementptr i8, ptr %i.aw, i64 240
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !190
  %i.bi = sub i32 %i.bh, %i.ay                    ; 5 uses
  %i.bj = getelementptr i8, ptr %i.aw, i64 264
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !355
  %i.bl = getelementptr i8, ptr %i.bb, i64 -56    ; 3 uses
  %i.bm = add i32 %i.bk, %i.bi
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr [8 x i8], ptr %i.bf, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 56
  %.not.i.i10 = icmp ugt ptr %i.bl, %i.bp
  br i1 %.not.i.i10, label %.preheader.i.i, label %bb.l, !prof !72

.preheader.i.i:                                   ; preds = %ruby_nonempty_memcpy.exit
  %i.bq = icmp sgt i32 %i.bi, 0
  br i1 %i.bq, label %.lr.ph.i.i.preheader, label %invoke_block.exit

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  %i.br = zext nneg i32 %i.bi to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.bi, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i64 %i.br, 2147483644              ; 4 uses
  %i.bs = shl nuw nsw i64 %n.vec, 3
  %i.bt = getelementptr i8, ptr %i.bf, i64 %i.bs  ; 2 uses
  %i.bu = trunc nuw nsw i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bv = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> splat (i64 4), ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.bw, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !578

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.br
  br i1 %cmp.n, label %invoke_block.exit, label %.lr.ph.i.i.preheader52

.lr.ph.i.i.preheader52:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.026.i.i.ph = phi ptr [ %i.bf, %.lr.ph.i.i.preheader ], [ %i.bt, %middle.block ]
  %.02325.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i.i

bb.l:                                             ; preds = %ruby_nonempty_memcpy.exit
  call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader52, %.lr.ph.i.i
  %.026.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.026.i.i.ph, %.lr.ph.i.i.preheader52 ] ; 2 uses
  %.02325.i.i = phi i32 [ %i.bz, %.lr.ph.i.i ], [ %.02325.i.i.ph, %.lr.ph.i.i.preheader52 ]
  %i.by = getelementptr i8, ptr %.026.i.i, i64 8  ; 2 uses
  store i64 4, ptr %.026.i.i, align 8, !tbaa !11
  %i.bz = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bz, %i.bi
  br i1 %exitcond.not.i.i, label %invoke_block.exit, label %.lr.ph.i.i, !llvm.loop !579

invoke_block.exit:                                ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.bf, %.preheader.i.i ], [ %i.bt, %middle.block ], [ %i.by, %.lr.ph.i.i ] ; 4 uses
  %i.ca = sext i32 %i.at to i64
  %i.cb = getelementptr [8 x i8], ptr %i.ba, i64 %i.ca
  %i.cc = ptrtoint ptr %.037.i.val7 to i64
  %i.cd = or i64 %i.cc, 1
  %i.ce = select i1 %.not.i.i, i64 572653601, i64 572653857
  %i.cf = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 0, ptr %.0.lcssa.i.i, align 8, !tbaa !11
  %i.cg = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.cd, ptr %i.cf, align 8, !tbaa !11
  %i.ch = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 %i.ce, ptr %i.cg, align 8, !tbaa !11
  store ptr %i.cb, ptr %i.bl, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -48
  store ptr %i.ch, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -40
  store ptr %i.f, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -32
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -24
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.bb, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bl, ptr %i.g, align 8, !tbaa !70
  %i.ci = call i64 @rb_vm_exec(ptr noundef nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %invoke_block_from_c_proc.exit

bb.m:                                             ; preds = %bb.b
  %i.cj = icmp eq i32 %5, 1
  br i1 %i.cj, label %bb.n, label %.split.i

.split.i:                                         ; preds = %bb.m
  %i.ck = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.pn, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef null)
  br label %invoke_block_from_c_proc.exit

bb.n:                                             ; preds = %bb.m
  %i.cl = add i32 %3, -1                          ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr [8 x i8], ptr %4, i64 %i.cm ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !11 ; 5 uses
  %i.cp = icmp eq i64 %i.co, 0
  %i.cq = and i64 %i.co, 7
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = or i1 %i.cp, %i.cr
  br i1 %i.cs, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.n
  %i.ct = inttoptr i64 %i.co to ptr
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !77 ; 2 uses
  %i.cv = and i64 %i.cu, 31
  %i.cw = icmp eq i64 %i.cv, 8
  br i1 %i.cw, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.i.thread

rbimpl_RB_TYPE_P_fastpath.exit.i.thread:          ; preds = %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cx = tail call i64 @rb_to_hash_type(i64 noundef %i.co) #23 ; 2 uses
  %.phi.trans.insert = inttoptr i64 %i.cx to ptr
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !77
  br label %bb.o

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.thread, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cy = phi i64 [ %i.cu, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %.0.i = phi i64 [ %i.co, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.cx, %rbimpl_RB_TYPE_P_fastpath.exit.i.thread ] ; 2 uses
  %i.cz = and i64 %i.cy, 32768
  %.not.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.da = lshr i64 %i.cy, 16
  %i.db = and i64 %i.da, 15
  br label %RHASH_EMPTY_P.exit

bb.q:                                             ; preds = %bb.o
  %i.dc = add i64 %.0.i, 24
  %i.dd = inttoptr i64 %i.dc to ptr
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %i.df = load i64, ptr %i.de, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.p, %bb.q
  %.0.i.i11 = phi i64 [ %i.db, %bb.p ], [ %i.df, %bb.q ]
  %i.dg = icmp eq i64 %.0.i.i11, 0
  br i1 %i.dg, label %.split42.i, label %bb.r

bb.r:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.dh = tail call i64 @rb_hash_dup(i64 noundef %.0.i) #23
  store i64 %i.dh, ptr %i.cn, align 8, !tbaa !11
  br label %.split42.i

.split42.i:                                       ; preds = %RHASH_EMPTY_P.exit, %bb.r
  %.040.i = phi i32 [ %3, %bb.r ], [ %i.cl, %RHASH_EMPTY_P.exit ]
  %i.di = tail call fastcc i64 @vm_yield_with_cfunc(ptr noundef %0, ptr noundef nonnull %.pn, i64 noundef %2, i32 noundef %.040.i, ptr noundef nonnull %4, i32 noundef 1, i64 noundef %6, ptr noundef null)
  br label %invoke_block_from_c_proc.exit

bb.s:                                             ; preds = %bb.b
  %i.dj = load i64, ptr %.pn, align 8, !tbaa !27
  %i.dk = tail call i64 @rb_sym2id(i64 noundef %i.dj) #23
  %i.dl = icmp eq i64 %6, 0
  br i1 %i.dl, label %vm_yield_with_symbol.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dm = and i64 %6, 3
  switch i64 %i.dm, label %bb.u [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.u:                                             ; preds = %bb.t
  %i.dn = and i64 %6, 255
  %i.do = icmp eq i64 %i.dn, 12
  br i1 %i.do, label %vm_block_handler_type.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dp = and i64 %6, 7
  %.not.i.i13 = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i13, label %RB_SYMBOL_P.exit.i.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.v
  %i.dq = inttoptr i64 %6 to ptr
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.dr
  %i.ds = and i64 %.fr10.i.i.i, 31
  %i.dt = icmp eq i64 %i.ds, 20
  br i1 %i.dt, label %vm_block_handler_type.exit.i.i, label %vm_yield_with_symbol.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.t, %bb.t
  %i.du = and i64 %6, -4
  %i.dv = inttoptr i64 %i.du to ptr
  %i.dw = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.dx = tail call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.dv, i64 noundef %i.dw, i8 noundef signext 0), !inline_history !78
  br label %vm_yield_with_symbol.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.u
  %i.dy = tail call i64 @rb_sym_to_proc(i64 noundef %6) #23
  br label %vm_yield_with_symbol.exit

vm_yield_with_symbol.exit:                        ; preds = %bb.s, %bb.v, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i12 = phi i64 [ 4, %bb.s ], [ %i.dx, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.dy, %vm_block_handler_type.exit.i.i ], [ %6, %bb.v ], [ %6, %RB_SYMBOL_P.exit.i.i.i ]
  %i.dz = tail call i64 @rb_sym_proc_call(i64 noundef %i.dk, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %.0.i.i12) #23
  br label %invoke_block_from_c_proc.exit

block_proc_is_lambda.exit:                        ; preds = %bb.b
  %i.ea = load i64, ptr %.pn, align 8, !tbaa !27  ; 2 uses
  %.not.i14 = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i14)
  %i.eb = inttoptr i64 %i.ea to ptr
  %i.ec = getelementptr i8, ptr %i.eb, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !546
  br label %bb.b

bb.w:                                             ; preds = %bb.b
  unreachable

invoke_block_from_c_proc.exit:                    ; preds = %invoke_block.exit, %.split.i, %.split42.i, %vm_yield_with_symbol.exit
  %.038.i = phi i64 [ %i.ci, %invoke_block.exit ], [ %i.dz, %vm_yield_with_symbol.exit ], [ %i.ck, %.split.i ], [ %i.di, %.split42.i ]
  ret i64 %.038.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_vm_invoke_proc_with_self(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i64 @vm_invoke_bmethod(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call fastcc i64 @vm_invoke_proc(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @rb_vm_svar_lep(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.010 = phi ptr [ %1, %bb.a ], [ %i.n, %bb.e ]  ; 6 uses
  %i.b = load ptr, ptr %.010, align 8, !tbaa !146
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.010, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %bb.f

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.g = getelementptr i8, ptr %.010, i64 32
  %.010.val12 = load ptr, ptr %i.g, align 8, !tbaa !15
  %.010.val12.val = load i64, ptr %.010.val12, align 8, !tbaa !11
  %i.h = and i64 %.010.val12.val, 2147418113
  %i.i = icmp eq i64 %i.h, 1717960705
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr i8, ptr %.010, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !123
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !558
  br label %VM_CF_LEP.exit

bb.e:                                             ; preds = %.critedge
  %i.n = getelementptr i8, ptr %.010, i64 56      ; 2 uses
  %.val = load ptr, ptr %0, align 8, !tbaa !121
  %.val11 = load i64, ptr %i.a, align 8, !tbaa !122
  %i.o = getelementptr [8 x i8], ptr %.val, i64 %.val11
  %.not13 = icmp ugt ptr %i.o, %i.n
  br i1 %.not13, label %bb.b, label %VM_CF_LEP.exit, !llvm.loop !580

bb.f:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %.010, i64 32
  %.010.val = load ptr, ptr %i.p, align 8, !tbaa !15 ; 3 uses
  %.0.val4.i.i = load i64, ptr %.010.val, align 8, !tbaa !11
  %i.q = and i64 %.0.val4.i.i, 2
  %.not5.i.i = icmp eq i64 %i.q, 0
  br i1 %.not5.i.i, label %.lr.ph.i.i, label %VM_CF_LEP.exit

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.t, %.lr.ph.i.i ], [ %.010.val, %bb.f ]
  %i.r = getelementptr i8, ptr %.06.i.i, i64 -8
  %.0.val3.i.i = load i64, ptr %i.r, align 8, !tbaa !11
  %i.s = and i64 %.0.val3.i.i, -4
  %i.t = inttoptr i64 %i.s to ptr                 ; 3 uses
  %.0.val.i.i = load i64, ptr %i.t, align 8, !tbaa !11
  %i.u = and i64 %.0.val.i.i, 2
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i.i, label %VM_CF_LEP.exit, !llvm.loop !13

VM_CF_LEP.exit:                                   ; preds = %bb.e, %.lr.ph.i.i, %bb.f, %bb.d
  %.0 = phi ptr [ %i.m, %bb.d ], [ %i.t, %.lr.ph.i.i ], [ %.010.val, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @rb_backref_get() local_unnamed_addr #25 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28
  store volatile ptr %i.c, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.d = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.010.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.o, %bb.d ] ; 6 uses
  %i.g = load ptr, ptr %.010.i.i.i, align 8, !tbaa !146
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.010.i.i.i, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge.i.i.i, label %bb.e

.critedge.i.i.i:                                  ; preds = %bb.c, %bb.b
  %i.l = getelementptr i8, ptr %.010.i.i.i, i64 32
  %.010.val12.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !15
end_hunk_5
begin_hunk_6_@vm_call_iseq_setup:bb.a
  store i64 4, ptr %.026.i.i, align 8, !tbaa !11
  %i.bu = add nuw nsw i32 %.02325.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.bu, %i.bb
  br i1 %exitcond.not.i.i, label %vm_push_frame.exit.i, label %.lr.ph.i.i, !llvm.loop !707

vm_push_frame.exit.i:                             ; preds = %.lr.ph.i.i, %middle.block, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.ao, %.preheader.i.i ], [ %i.bo, %middle.block ], [ %i.bt, %.lr.ph.i.i ] ; 4 uses
  %i.bv = getelementptr i8, ptr %.0.lcssa.i.i, i64 8
  store i64 %i.au, ptr %.0.lcssa.i.i, align 8, !tbaa !11
  %i.bw = getelementptr i8, ptr %.0.lcssa.i.i, i64 16 ; 2 uses
  store i64 %i.at, ptr %i.bv, align 8, !tbaa !11
  %i.bx = getelementptr i8, ptr %.0.lcssa.i.i, i64 24
  store i64 286326787, ptr %i.bw, align 8, !tbaa !11
  store ptr %i.ba, ptr %i.bg, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.bf, i64 -48
  store ptr %i.bx, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i = getelementptr i8, ptr %i.bf, i64 -40
  store ptr %.val14.i, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i = getelementptr i8, ptr %i.bf, i64 -32
  store i64 %i.ar, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i = getelementptr i8, ptr %i.bf, i64 -24
  store ptr %i.bw, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i = getelementptr i8, ptr %i.bf, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !70
  br label %vm_call_iseq_setup_2.exit

bb.f:                                             ; preds = %vm_ci_flag.exit.i
  tail call fastcc void @vm_call_iseq_setup_tailcall(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.t)
  br label %vm_call_iseq_setup_2.exit

vm_call_iseq_setup_2.exit:                        ; preds = %vm_push_frame.exit.i, %bb.f
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !226
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !225  ; 5 uses
  %i.c = ptrtoint ptr %i.b to i64                 ; 5 uses
  %.not.i.i = trunc i64 %i.c to i1
  br i1 %.not.i.i, label %vm_ci_flag.exit, label %vm_ci_flag.exit.thread

vm_ci_flag.exit:                                  ; preds = %bb.a
  %i.d = and i64 %i.c, 536936448
  %or.cond = icmp eq i64 %i.d, 65536
  br i1 %or.cond, label %vm_ci_flag.exit27, label %bb.e

vm_ci_flag.exit.thread:                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173  ; 2 uses
  %i.g = and i64 %i.f, 8193
  %or.cond53 = icmp eq i64 %i.g, 1
  br i1 %or.cond53, label %vm_ci_flag.exit27.thread, label %bb.e

vm_ci_flag.exit27:                                ; preds = %vm_ci_flag.exit
  %i.h = and i64 %i.c, 4259838
  %or.cond55 = icmp eq i64 %i.h, 2
  br i1 %or.cond55, label %bb.b, label %vm_ci_flag.exit32

vm_ci_flag.exit27.thread:                         ; preds = %vm_ci_flag.exit.thread
  %i.i = and i64 %i.f, 64
  %.not2042 = icmp eq i64 %i.i, 0
  br i1 %.not2042, label %vm_ci_argc.exit.thread, label %.thread47

vm_ci_argc.exit.thread:                           ; preds = %vm_ci_flag.exit27.thread
  %i.j = getelementptr i8, ptr %i.b, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !174
  %i.l = and i64 %i.k, 4294967295
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.b, label %vm_ci_flag.exit32.thread

bb.b:                                             ; preds = %vm_ci_flag.exit27, %vm_ci_argc.exit.thread
  %i.n = getelementptr i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !233
  %i.p = getelementptr i8, ptr %i.o, i64 24
  store ptr @vm_call_cfunc_only_splat, ptr %i.p, align 8, !tbaa !176
  %i.q = tail call i64 @vm_call_cfunc_only_splat(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.f

vm_ci_flag.exit32:                                ; preds = %vm_ci_flag.exit27
  %i.r = and i64 %i.c, 4194304
  %.not21 = icmp eq i64 %i.r, 0
  br i1 %.not21, label %bb.e, label %bb.c

vm_ci_flag.exit32.thread:                         ; preds = %vm_ci_argc.exit.thread
  %.phi.trans.insert = getelementptr i8, ptr %i.b, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !173
  %.pre48 = and i64 %.pre, 64
  %i.s = icmp eq i64 %.pre48, 0
  br i1 %i.s, label %bb.e, label %.thread47

bb.c:                                             ; preds = %vm_ci_flag.exit32
  %i.t = trunc i64 %i.c to i32
  %i.u = lshr i32 %i.t, 1
  %i.v = and i32 %i.u, 32767
  br label %vm_ci_argc.exit35

.thread47:                                        ; preds = %vm_ci_flag.exit27.thread, %vm_ci_flag.exit32.thread
  %i.w = getelementptr i8, ptr %i.b, i64 32
  %i.x = load i64, ptr %i.w, align 8, !tbaa !174
  %i.y = trunc i64 %i.x to i32
  br label %vm_ci_argc.exit35

vm_ci_argc.exit35:                                ; preds = %bb.c, %.thread47
  %.0.i34 = phi i32 [ %i.v, %bb.c ], [ %i.y, %.thread47 ]
  %i.z = icmp eq i32 %.0.i34, 2
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %vm_ci_argc.exit35
  %i.aa = getelementptr i8, ptr %2, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !233
  %i.ac = getelementptr i8, ptr %i.ab, i64 24
  store ptr @vm_call_cfunc_only_splat_kw, ptr %i.ac, align 8, !tbaa !176
  %i.ad = tail call i64 @vm_call_cfunc_only_splat_kw(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.f

bb.e:                                             ; preds = %vm_ci_flag.exit32.thread, %vm_ci_flag.exit.thread, %vm_ci_flag.exit32, %vm_ci_argc.exit35, %vm_ci_flag.exit
  %i.ae = getelementptr i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !233
  %i.ag = getelementptr i8, ptr %i.af, i64 24
  store ptr @vm_call_cfunc_other, ptr %i.ag, align 8, !tbaa !176
  %i.ah = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.ah, %bb.e ], [ %i.ad, %bb.d ], [ %i.q, %bb.b ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @CALLER_SETUP_ARG(ptr noalias nofree noundef captures(address) %0, ptr noalias nofree noundef captures(none) %1, ptr noalias noundef %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 7 uses
  %.not.i.i = trunc i64 %i.a to i1                ; 3 uses
  br i1 %.not.i.i, label %vm_ci_flag.exit, label %vm_ci_flag.exit.thread

vm_ci_flag.exit:                                  ; preds = %bb.a
  %i.b = and i64 %i.a, 65536
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %vm_ci_flag.exit99, label %bb.b, !prof !72

vm_ci_flag.exit.thread:                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !173  ; 4 uses
  %i.e = and i64 %i.d, 1
  %.not107 = icmp eq i64 %i.e, 0
  br i1 %.not107, label %vm_ci_flag.exit99.thread, label %.thread, !prof !72

bb.b:                                             ; preds = %vm_ci_flag.exit
  %i.f = trunc i64 %i.a to i32
  %i.g = lshr i32 %i.f, 16
  br label %vm_ci_flag.exit83

.thread:                                          ; preds = %vm_ci_flag.exit.thread
  %i.h = trunc i64 %i.d to i32
  br label %vm_ci_flag.exit83

vm_ci_flag.exit83:                                ; preds = %bb.b, %.thread
  %.0.i82 = phi i32 [ %i.g, %bb.b ], [ %i.h, %.thread ]
  %i.i = and i32 %.0.i82, 64
  %.not69 = icmp eq i32 %i.i, 0
  %i.j = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !73   ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 32         ; 8 uses
  br i1 %.not69, label %bb.m, label %bb.c

bb.c:                                             ; preds = %vm_ci_flag.exit83
  %i.m = getelementptr i8, ptr %i.k, i64 -16      ; 2 uses
  store ptr %i.m, ptr %i.j, align 8, !tbaa !73
  %i.n = load i32, ptr %i.l, align 8, !tbaa !230
  %i.o = add i32 %i.n, -2
  store i32 %i.o, ptr %i.l, align 8, !tbaa !230
  %i.p = load i64, ptr %i.m, align 8, !tbaa !11
  %i.q = getelementptr i8, ptr %i.k, i64 -8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call fastcc i64 @vm_caller_setup_keyword_hash(ptr noundef %2, i64 noundef %i.r) ; 5 uses
  %i.t = tail call fastcc zeroext i1 @vm_caller_setup_arg_splat(ptr noundef %0, ptr noundef %1, i64 noundef %i.p, i32 noundef %3)
  br i1 %i.t, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not75 = icmp eq i64 %i.s, 4
  br i1 %.not75, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = inttoptr i64 %i.s to ptr                 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !77   ; 2 uses
  %i.w = and i64 %i.v, 32768
  %.not.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = lshr i64 %i.v, 16
  %i.y = and i64 %i.x, 15
  br label %RHASH_EMPTY_P.exit

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %i.s, 24
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.f, %bb.g
  %.0.i.i = phi i64 [ %i.y, %bb.f ], [ %i.ac, %bb.g ]
  %i.ad = icmp eq i64 %.0.i.i, 0
  br i1 %i.ad, label %bb.l, label %bb.h

bb.h:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.ae = getelementptr i8, ptr %1, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !573 ; 2 uses
  %.not76 = icmp eq i64 %i.af, 0
  br i1 %.not76, label %bb.k, label %bb.i, !prof !72

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call i64 @rb_ary_push(i64 noundef %i.af, i64 noundef %i.s) #23 ; 0 uses
  %i.ah = load i64, ptr %i.u, align 8, !tbaa !708
  %i.ai = or i64 %i.ah, 8192
  store i64 %i.ai, ptr %i.u, align 8, !tbaa !708
  %.not77 = icmp eq i32 %3, -3
  br i1 %.not77, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %1, i64 36
  store i8 0, ptr %i.aj, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.k:                                             ; preds = %bb.h
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !73  ; 2 uses
  store i64 %i.s, ptr %i.ak, align 8, !tbaa !11
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  store ptr %i.al, ptr %i.j, align 8, !tbaa !73
  %i.am = load i32, ptr %i.l, align 8, !tbaa !230
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.l, align 8, !tbaa !230
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.l:                                             ; preds = %RHASH_EMPTY_P.exit, %bb.d
  %i.ao = getelementptr i8, ptr %1, i64 36
  store i8 0, ptr %i.ao, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.m:                                             ; preds = %vm_ci_flag.exit83
  %i.ap = getelementptr i8, ptr %i.k, i64 -8      ; 2 uses
  store ptr %i.ap, ptr %i.j, align 8, !tbaa !73
  %i.aq = load i32, ptr %i.l, align 8, !tbaa !230
  %i.ar = add i32 %i.aq, -1
  store i32 %i.ar, ptr %i.l, align 8, !tbaa !230
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.at = tail call fastcc zeroext i1 @vm_caller_setup_arg_splat(ptr noundef %0, ptr noundef %1, i64 noundef %i.as, i32 noundef %3)
  br i1 %i.at, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !tbaa !573 ; 5 uses
  %.not70 = icmp eq i64 %i.av, 0
  br i1 %.not70, label %bb.z, label %bb.o, !prof !72

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = trunc i64 %i.a to i32
  %i.ax = lshr i32 %i.aw, 16
  br label %vm_ci_flag.exit86

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %2, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !173
  %i.ba = trunc i64 %i.az to i32
  br label %vm_ci_flag.exit86

vm_ci_flag.exit86:                                ; preds = %bb.p, %bb.q
  %.0.i85 = phi i32 [ %i.ax, %bb.p ], [ %i.ba, %bb.q ]
  %i.bb = and i32 %.0.i85, 32
  %.not71 = icmp eq i32 %i.bb, 0
  br i1 %.not71, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.r:                                             ; preds = %vm_ci_flag.exit86
  %i.bc = inttoptr i64 %i.av to ptr               ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !77 ; 2 uses
  %i.be = and i64 %i.bd, 8192
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = lshr i64 %i.bd, 15
  %i.bg = and i64 %i.bf, 127
  br label %rb_array_len.exit

bb.t:                                             ; preds = %bb.r
  %i.bh = getelementptr i8, ptr %i.bc, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.s, %bb.t
  %.0.i87 = phi i64 [ %i.bg, %bb.s ], [ %i.bi, %bb.t ]
  %i.bj = icmp sgt i64 %.0.i87, 0
  br i1 %i.bj, label %bb.u, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.u:                                             ; preds = %rb_array_len.exit
  %i.bk = tail call i64 @rb_ary_last(i32 noundef 0, ptr noundef null, i64 noundef %i.av) #23 ; 5 uses
  %i.bl = icmp eq i64 %i.bk, 0
  %i.bm = and i64 %i.bk, 7
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %rbimpl_RB_TYPE_P_fastpath.exit79

rbimpl_RB_TYPE_P_fastpath.exit79:                 ; preds = %bb.u
  %i.bp = inttoptr i64 %i.bk to ptr               ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !77
  %i.br = and i64 %i.bq, 8223
  %or.cond.not = icmp eq i64 %i.br, 8200
  br i1 %or.cond.not, label %bb.v, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit79
  %i.bs = tail call i64 @rb_ary_pop(i64 noundef %i.av) #23 ; 0 uses
  %i.bt = load i64, ptr %i.bp, align 8, !tbaa !77 ; 2 uses
  %i.bu = and i64 %i.bt, 32768
  %.not.i.i.i88 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i88, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bv = lshr i64 %i.bt, 16
  %i.bw = and i64 %i.bv, 15
  br label %RHASH_EMPTY_P.exit90

bb.x:                                             ; preds = %bb.v
  %i.bx = add i64 %i.bk, 24
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit90

RHASH_EMPTY_P.exit90:                             ; preds = %bb.w, %bb.x
  %.0.i.i89 = phi i64 [ %i.bw, %bb.w ], [ %i.ca, %bb.x ]
  %i.cb = icmp eq i64 %.0.i.i89, 0
  br i1 %i.cb, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %bb.y

bb.y:                                             ; preds = %RHASH_EMPTY_P.exit90
  %i.cc = tail call i64 @rb_hash_dup(i64 noundef %i.bk) #23
  %i.cd = tail call i64 @rb_ary_push(i64 noundef %i.av, i64 noundef %i.cc) #23 ; 0 uses
  %i.ce = getelementptr i8, ptr %1, i64 36
  store i8 1, ptr %i.ce, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.z:                                             ; preds = %bb.n, %bb.m
  br i1 %.not.i.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cf = trunc i64 %i.a to i32
  %i.cg = lshr i32 %i.cf, 16
  br label %vm_ci_flag.exit93

bb.ab:                                            ; preds = %bb.z
  %i.ch = getelementptr i8, ptr %2, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !173
  %i.cj = trunc i64 %i.ci to i32
  br label %vm_ci_flag.exit93

vm_ci_flag.exit93:                                ; preds = %bb.aa, %bb.ab
  %.0.i92 = phi i32 [ %i.cg, %bb.aa ], [ %i.cj, %bb.ab ]
  %i.ck = and i32 %.0.i92, 32
  %.not73 = icmp eq i32 %i.ck, 0
  br i1 %.not73, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ac:                                            ; preds = %vm_ci_flag.exit93
  %i.cl = load i32, ptr %i.l, align 8, !tbaa !230 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !73
  %i.co = getelementptr i8, ptr %i.cn, i64 -8     ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11 ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = and i64 %i.cp, 7
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = or i1 %i.cq, %i.cs
  br i1 %i.ct, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.ad
  %i.cu = inttoptr i64 %i.cp to ptr
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !77 ; 3 uses
  %i.cw = and i64 %i.cv, 8223
  %or.cond120.not = icmp eq i64 %i.cw, 8200
  br i1 %or.cond120.not, label %bb.ae, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ae:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cx = and i64 %i.cv, 32768
  %.not.i.i.i94 = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i94, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.cy = lshr i64 %i.cv, 16
  %i.cz = and i64 %i.cy, 15
  br label %RHASH_EMPTY_P.exit96

bb.ag:                                            ; preds = %bb.ae
  %i.da = add i64 %i.cp, 24
  %i.db = inttoptr i64 %i.da to ptr
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit96

RHASH_EMPTY_P.exit96:                             ; preds = %bb.af, %bb.ag
  %.0.i.i95 = phi i64 [ %i.cz, %bb.af ], [ %i.dd, %bb.ag ]
  %i.de = icmp eq i64 %.0.i.i95, 0
  br i1 %i.de, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %RHASH_EMPTY_P.exit96
  %i.df = add nsw i32 %i.cl, -1
  store i32 %i.df, ptr %i.l, align 8, !tbaa !230
  store ptr %i.co, ptr %i.j, align 8, !tbaa !73
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ai:                                            ; preds = %RHASH_EMPTY_P.exit96
  %i.dg = tail call i64 @rb_hash_dup(i64 noundef %i.cp) #23
  store i64 %i.dg, ptr %i.co, align 8, !tbaa !11
  %i.dh = getelementptr i8, ptr %1, i64 36
  store i8 1, ptr %i.dh, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

vm_ci_flag.exit99:                                ; preds = %vm_ci_flag.exit
  %i.di = and i64 %i.a, 4194304
  %.not67 = icmp eq i64 %i.di, 0
  br i1 %.not67, label %bb.ap, label %bb.aj, !prof !72

vm_ci_flag.exit99.thread:                         ; preds = %vm_ci_flag.exit.thread
  %i.dj = and i64 %i.d, 64
  %.not67112 = icmp eq i64 %i.dj, 0
  br i1 %.not67112, label %.thread113, label %bb.aj, !prof !72

bb.aj:                                            ; preds = %vm_ci_flag.exit99.thread, %vm_ci_flag.exit99
  %i.dk = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !73
  %i.dm = getelementptr i8, ptr %i.dl, i64 -8     ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !11
  %i.do = tail call fastcc i64 @vm_caller_setup_keyword_hash(ptr noundef %2, i64 noundef %i.dn) ; 4 uses
  %i.dp = icmp eq i64 %i.do, 4
  br i1 %i.dp, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = inttoptr i64 %i.do to ptr
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !77 ; 2 uses
  %i.ds = and i64 %i.dr, 32768
  %.not.i.i.i100 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.i100, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dt = lshr i64 %i.dr, 16
  %i.du = and i64 %i.dt, 15
  br label %RHASH_EMPTY_P.exit102

bb.am:                                            ; preds = %bb.ak
  %i.dv = add i64 %i.do, 24
  %i.dw = inttoptr i64 %i.dv to ptr
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit102

RHASH_EMPTY_P.exit102:                            ; preds = %bb.al, %bb.am
  %.0.i.i101 = phi i64 [ %i.du, %bb.al ], [ %i.dy, %bb.am ]
  %i.dz = icmp eq i64 %.0.i.i101, 0
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %RHASH_EMPTY_P.exit102, %bb.aj
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !73
  %i.ea = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !230
  %i.ec = add i32 %i.eb, -1
  store i32 %i.ec, ptr %i.ea, align 8, !tbaa !230
  %i.ed = getelementptr i8, ptr %1, i64 36
  store i8 0, ptr %i.ed, align 4, !tbaa !231
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ao:                                            ; preds = %RHASH_EMPTY_P.exit102
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !11
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

bb.ap:                                            ; preds = %vm_ci_flag.exit99
  %i.ee = trunc i64 %i.a to i32
  %i.ef = lshr i32 %i.ee, 16
  br label %vm_ci_flag.exit105

.thread113:                                       ; preds = %vm_ci_flag.exit99.thread
  %i.eg = trunc i64 %i.d to i32
  br label %vm_ci_flag.exit105

vm_ci_flag.exit105:                               ; preds = %bb.ap, %.thread113
  %.0.i104 = phi i32 [ %i.ef, %bb.ap ], [ %i.eg, %.thread113 ]
  %i.eh = and i32 %.0.i104, 32
  %.not68 = icmp eq i32 %i.eh, 0
  br i1 %.not68, label %rbimpl_RB_TYPE_P_fastpath.exit79.thread, label %bb.aq, !prof !72

bb.aq:                                            ; preds = %vm_ci_flag.exit105
  tail call fastcc void @vm_caller_setup_arg_kw(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  br label %rbimpl_RB_TYPE_P_fastpath.exit79.thread

rbimpl_RB_TYPE_P_fastpath.exit79.thread:          ; preds = %bb.ad, %bb.u, %bb.an, %bb.ao, %RHASH_EMPTY_P.exit90, %bb.y, %rbimpl_RB_TYPE_P_fastpath.exit79, %rb_array_len.exit, %vm_ci_flag.exit86, %bb.ah, %bb.ai, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.ac, %vm_ci_flag.exit93, %bb.c, %bb.k, %bb.j, %bb.i, %bb.l, %bb.aq, %vm_ci_flag.exit105
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_call_attrset_direct(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 -8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11   ; 10 uses
  %i.e = getelementptr i8, ptr %i.b, i64 -16
  store ptr %i.e, ptr %i.a, align 8, !tbaa !73
  %i.f = getelementptr i8, ptr %1, i64 32
  %i.g = load atomic volatile i64, ptr %i.f monotonic, align 8 ; 4 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.g to i32 ; 6 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.g, 32
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16
  %i.h = add i16 %.sroa.4.0.extract.trunc.i.i, -1 ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.i, align 8, !tbaa !187
  %i.j = getelementptr i8, ptr %.val, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !83
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 4 uses
  %i.n = icmp ne i64 %2, 0
  %i.o = and i64 %2, 7
  %i.p = icmp eq i64 %i.o, 0
  %.not3.i.i = and i1 %i.n, %i.p
  br i1 %.not3.i.i, label %RB_OBJ_FROZEN.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !168

RB_OBJ_FROZEN.exit.i:                             ; preds = %bb.a
  %i.q = inttoptr i64 %2 to ptr                   ; 5 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !77   ; 4 uses
  %i.s = and i64 %i.r, 2048
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i, label %RB_OBJ_FROZEN.exit.thread.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i:                      ; preds = %RB_OBJ_FROZEN.exit.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %2) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %RB_OBJ_FROZEN.exit.i
  %i.t = and i64 %i.r, 31
  %i.u = icmp ne i64 %i.t, 5
  %i.v = and i64 %i.r, 49152
  %.not8.i = icmp eq i64 %i.v, 0
  %or.cond.i = or i1 %i.u, %.not8.i
  br i1 %or.cond.i, label %rb_check_frozen_inline.exit, label %bb.b, !prof !455

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  tail call void @rb_str_modify(i64 noundef %2) #23
  %.pre = load i64, ptr %i.q, align 8, !tbaa !77
  br label %rb_check_frozen_inline.exit

rb_check_frozen_inline.exit:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.b
  %i.w = phi i64 [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.pre, %bb.b ] ; 10 uses
  %i.x = and i64 %i.w, 31
  %cond.i = icmp eq i64 %i.x, 1
  br i1 %cond.i, label %bb.c, label %vm_setivar.exit.thread

bb.c:                                             ; preds = %rb_check_frozen_inline.exit
  %i.y = lshr i64 %i.w, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 4 uses
  %i.aa = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, %i.z
  br i1 %i.aa, label %bb.i, label %bb.d, !prof !72

bb.d:                                             ; preds = %bb.c
  %.not.i26 = icmp eq i32 %.sroa.0.0.extract.trunc.i.i, -1
  br i1 %.not.i26, label %vm_setivar.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = xor i32 %i.z, %.sroa.0.0.extract.trunc.i.i
  %i.ac = and i32 %i.ab, 264241152
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %RSHAPE_DIRECT_CHILD_P.exit.i, label %vm_setivar.exit.thread

RSHAPE_DIRECT_CHILD_P.exit.i:                     ; preds = %bb.e
  %i.ae = and i64 %i.g, 524287
  %i.af = load ptr, ptr @rb_shape_tree, align 8, !tbaa !101
  %i.ag = getelementptr [40 x i8], ptr %i.af, i64 %i.ae ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !106
  %i.aj = and i32 %i.z, 524287
  %i.ak = icmp eq i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %vm_setivar.exit.thread

bb.f:                                             ; preds = %RSHAPE_DIRECT_CHILD_P.exit.i
  %i.al = getelementptr i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !109
  %i.an = icmp eq i64 %i.am, %i.m
  br i1 %i.an, label %bb.g, label %vm_setivar.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ao = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %i.z)
  %i.ap = tail call fastcc zeroext i16 @RSHAPE_CAPACITY(i32 noundef %.sroa.0.0.extract.trunc.i.i)
  %i.aq = icmp eq i16 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %vm_setivar.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ar = and i64 %i.w, 4294967265
  %i.as = shl i64 %i.g, 32
  %i.at = or disjoint i64 %i.ar, %i.as            ; 2 uses
  store i64 %i.at, ptr %i.q, align 8, !tbaa !77
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.au = phi i64 [ %i.w, %bb.c ], [ %i.at, %bb.h ]
  %i.av = and i64 %i.au, 65536
  %.not.i.i = icmp eq i64 %i.av, 0
  %i.aw = getelementptr i8, ptr %i.q, i64 16      ; 2 uses
  br i1 %.not.i.i, label %ROBJECT_FIELDS.exit.i, label %bb.j, !prof !72

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27
  br label %ROBJECT_FIELDS.exit.i

ROBJECT_FIELDS.exit.i:                            ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %i.ax, %bb.j ], [ %i.aw, %bb.i ]
  %i.ay = zext i16 %i.h to i64
  %i.az = getelementptr [8 x i8], ptr %.0.i.i, i64 %i.ay
  store i64 %i.d, ptr %i.az, align 8, !tbaa !11
  %i.ba = icmp eq i64 %i.d, 0
  %i.bb = and i64 %i.d, 7
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = or i1 %i.ba, %i.bc
  br i1 %i.bd, label %vm_setivar.exit, label %bb.k

bb.k:                                             ; preds = %ROBJECT_FIELDS.exit.i
  tail call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.d) #23
  br label %vm_setivar.exit

vm_setivar.exit:                                  ; preds = %ROBJECT_FIELDS.exit.i, %bb.k
  %i.be = icmp eq i64 %i.d, 36
  br i1 %i.be, label %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, label %bb.o

vm_setivar.exit.vm_setivar.exit.thread_crit_edge: ; preds = %vm_setivar.exit
  %.pre7 = load i64, ptr %i.q, align 8, !tbaa !77
  br label %vm_setivar.exit.thread

vm_setivar.exit.thread:                           ; preds = %vm_setivar.exit.vm_setivar.exit.thread_crit_edge, %bb.e, %bb.d, %bb.f, %bb.g, %RSHAPE_DIRECT_CHILD_P.exit.i, %rb_check_frozen_inline.exit
  %i.bf = phi i64 [ %.pre7, %vm_setivar.exit.vm_setivar.exit.thread_crit_edge ], [ %i.w, %bb.e ], [ %i.w, %bb.d ], [ %i.w, %bb.f ], [ %i.w, %bb.g ], [ %i.w, %RSHAPE_DIRECT_CHILD_P.exit.i ], [ %i.w, %rb_check_frozen_inline.exit ]
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = and i32 %i.bg, 31
  switch i32 %i.bh, label %bb.m [
    i32 1, label %bb.n
    i32 2, label %bb.l
    i32 3, label %bb.l
  ]

bb.l:                                             ; preds = %vm_setivar.exit.thread, %vm_setivar.exit.thread
  %i.bi = tail call fastcc i64 @vm_setivar_class(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.h) ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 36
  br i1 %i.bj, label %bb.n, label %bb.o

bb.m:                                             ; preds = %vm_setivar.exit.thread
  %i.bk = tail call fastcc i64 @vm_setivar_default(i64 noundef %2, i64 noundef %i.m, i64 noundef %i.d, i32 noundef %.sroa.0.0.extract.trunc.i.i, i16 noundef zeroext %i.h) ; 2 uses
  %i.bl = icmp eq i64 %i.bk, 36
end_hunk_6
begin_hunk_7_@vm_call_iseq_forwardable:bb.a
  store ptr %.val16, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -32
  store i64 %i.ah, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -24
  store ptr %i.bk, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.as, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !70
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @setup_parameters_complex(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = ptrtoaddr ptr %4 to i64                  ; 3 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %struct.args_info, align 8          ; 44 uses
  %i.c = getelementptr i8, ptr %1, i64 16         ; 22 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !124  ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16       ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !175  ; 3 uses
  %i.h = getelementptr i8, ptr %i.d, i64 40
  %i.i = load i32, ptr %i.h, align 8, !tbaa !746  ; 2 uses
  %i.j = add i32 %i.i, %i.g                       ; 16 uses
  %i.k = load i16, ptr %i.e, align 8
  %i.l = and i16 %i.k, 4
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.d, i64 28
  %i.o = load i32, ptr %i.n, align 4, !tbaa !714
  %i.p = add i32 %i.o, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %i.p, %bb.b ], [ -1, %bb.a ]   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.r = ptrtoint ptr %3 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.r to i1                ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = trunc i64 %i.r to i32
  %i.t = lshr i32 %i.s, 16
  br label %vm_ci_flag.exit

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %3, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !173
  %i.w = trunc i64 %i.v to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i468 = phi i32 [ %i.t, %bb.d ], [ %i.w, %bb.e ] ; 9 uses
  store i32 %.0.i468, ptr %i.b, align 4, !tbaa !7
  %i.x = and i32 %.0.i468, 2144                   ; 5 uses
  %.not = icmp ne i32 %i.x, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.y = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr i8, ptr %i.z, i64 8       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !73
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !233 ; 2 uses
  %.not372 = icmp eq ptr %i.ad, null
  br i1 %.not372, label %bb.g, label %bb.f

bb.f:                                             ; preds = %vm_ci_flag.exit
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %.val = load ptr, ptr %i.ae, align 8, !tbaa !187
  br label %bb.g

bb.g:                                             ; preds = %vm_ci_flag.exit, %bb.f
  %i.af = phi ptr [ %.val, %bb.f ], [ null, %vm_ci_flag.exit ] ; 6 uses
  %i.ag = getelementptr i8, ptr %2, i64 32
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !230 ; 8 uses
  %i.ai = getelementptr i8, ptr %i.d, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !191 ; 2 uses
  %i.ak = icmp ult i32 %i.ah, %i.aj
  %i.al = zext i32 %i.ah to i64                   ; 5 uses
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.g
  %wide.trip.count = zext i32 %i.aj to i64        ; 4 uses
  %i.am = sub nsw i64 %wide.trip.count, %i.al     ; 3 uses
  %min.iters.check = icmp ult i64 %i.am, 4
  br i1 %min.iters.check, label %.lr.ph.preheader943, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.am, -4                      ; 3 uses
  %i.an = add nsw i64 %n.vec, %i.al
  %invariant.gep = getelementptr [8 x i8], ptr %4, i64 %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %gep, i64 16
  store <2 x i64> splat (i64 4), ptr %gep, align 8, !tbaa !11
  store <2 x i64> splat (i64 4), ptr %i.ao, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !747

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader943

.lr.ph.preheader943:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.al, %.lr.ph.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader943, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader943 ] ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store i64 4, ptr %i.aq, align 8, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !748

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.g
  %.pre-phi = phi i64 [ %i.al, %bb.g ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %.lr.ph ]
  %i.ar = getelementptr [8 x i8], ptr %4, i64 %.pre-phi
  store ptr %i.ar, ptr %i.aa, align 8, !tbaa !73
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 32 uses
  store i32 %i.ah, ptr %i.as, align 8, !tbaa !749
  store ptr %4, ptr %6, align 8, !tbaa !751
  %i.at = and i32 %.0.i468, 4096
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 21 uses
  store i32 %i.at, ptr %i.au, align 8, !tbaa !752
  %i.av = load i16, ptr %i.e, align 8             ; 4 uses
  %i.aw = and i16 %i.av, 1024
  %.not373 = icmp eq i16 %i.aw, 0
  br i1 %.not373, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %bb.h, !prof !72

bb.h:                                             ; preds = %._crit_edge
  %i.ax = and i32 %.0.i468, 1
  %.not374 = icmp eq i32 %i.ax, 0
  br i1 %.not374, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not375 = icmp eq i32 %i.x, 0                  ; 2 uses
  %i.ay = select i1 %.not375, i32 1, i32 2
  %i.az = add i32 %i.g, %i.ay
  %i.ba = icmp eq i32 %i.ah, %i.az
  %i.bb = and i16 %i.av, 522
  %i.bc = icmp eq i16 %i.bb, 0
  %or.cond447 = and i1 %i.bc, %i.ba
  br i1 %or.cond447, label %bb.j, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

bb.j:                                             ; preds = %bb.i
  br i1 %.not375, label %bb.r, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bd = and i16 %i.av, 48
  %or.cond448 = icmp eq i16 %i.bd, 0
  br i1 %or.cond448, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split

bb.l:                                             ; preds = %bb.k
  %i.be = and i32 %.0.i468, 64
  %.not384 = icmp eq i32 %i.be, 0
  br i1 %.not384, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = add i32 %i.ah, -1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [8 x i8], ptr %4, i64 %i.bg
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11 ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 4
  br i1 %i.bj, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = icmp eq i64 %i.bi, 0
  %i.bl = and i64 %i.bi, 7
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = or i1 %i.bk, %i.bm
  br i1 %i.bn, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread, label %rbimpl_RB_TYPE_P_fastpath.exit466

rbimpl_RB_TYPE_P_fastpath.exit466:                ; preds = %bb.n
  %i.bo = inttoptr i64 %i.bi to ptr
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !77 ; 3 uses
  %i.bq = and i64 %i.bp, 31
  %i.br = icmp eq i64 %i.bq, 8
  br i1 %i.br, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit466
  %i.bs = and i64 %i.bp, 32768
  %.not.i.i.i = icmp eq i64 %i.bs, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bt = lshr i64 %i.bp, 16
  %i.bu = and i64 %i.bt, 15
  br label %RHASH_EMPTY_P.exit

bb.q:                                             ; preds = %bb.o
  %i.bv = add i64 %i.bi, 24
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = getelementptr i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.p, %bb.q
  %.0.i.i = phi i64 [ %i.bu, %bb.p ], [ %i.by, %bb.q ]
  %i.bz = icmp eq i64 %.0.i.i, 0
  br i1 %i.bz, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split, label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

bb.r:                                             ; preds = %bb.j
  %i.ca = and i16 %i.av, 304
  %or.cond450 = icmp eq i16 %i.ca, 0
  br i1 %or.cond450, label %bb.s, label %.thread

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %.thread

rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split: ; preds = %bb.m, %RHASH_EMPTY_P.exit, %bb.k
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %rbimpl_RB_TYPE_P_fastpath.exit466.thread

rbimpl_RB_TYPE_P_fastpath.exit466.thread:         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit466.thread.sink.split, %bb.n, %rbimpl_RB_TYPE_P_fastpath.exit466, %RHASH_EMPTY_P.exit, %bb.h, %bb.i, %bb.l, %._crit_edge
  %i.cb = and i32 %.0.i468, 32
  %.not385 = icmp eq i32 %i.cb, 0
  br i1 %.not385, label %.thread, label %bb.t

bb.t:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit466.thread
  br i1 %.not.i.i, label %vm_ci_kwarg.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr i8, ptr %3, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !238
  br label %vm_ci_kwarg.exit

vm_ci_kwarg.exit:                                 ; preds = %bb.t, %bb.u
  %.0.i470 = phi ptr [ %i.cd, %bb.u ], [ null, %bb.t ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %.0.i470, ptr %i.ce, align 8, !tbaa !753
  %i.cf = load i16, ptr %i.e, align 8
  %i.cg = and i16 %i.cf, 16
  %.not386 = icmp eq i16 %i.cg, 0
  br i1 %.not386, label %bb.y, label %bb.v

bb.v:                                             ; preds = %vm_ci_kwarg.exit
  %i.ch = load i32, ptr %.0.i470, align 8, !tbaa !7 ; 4 uses
  %i.ci = sext i32 %i.ch to i64                   ; 2 uses
  %i.cj = icmp slt i32 %i.ch, 0
  br i1 %i.cj, label %bb.w, label %rbimpl_size_mul_or_raise.exit471, !prof !177

bb.w:                                             ; preds = %bb.v
  tail call void @ruby_malloc_size_overflow(i64 noundef 8, i64 noundef %i.ci) #42
  unreachable

rbimpl_size_mul_or_raise.exit471:                 ; preds = %bb.v
  %i.ck = shl nuw nsw i64 %i.ci, 3                ; 2 uses
  %i.cl = alloca i8, i64 %i.ck, align 16          ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !754
  %i.cn = sub i32 %i.ah, %i.ch                    ; 4 uses
  store i32 %i.cn, ptr %i.as, align 8, !tbaa !749
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %ruby_nonempty_memcpy.exit, label %bb.x

bb.x:                                             ; preds = %rbimpl_size_mul_or_raise.exit471
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [8 x i8], ptr %4, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 %i.cl, ptr noundef nonnull readonly align 1 %i.cp, i64 noundef %i.ck, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

bb.y:                                             ; preds = %vm_ci_kwarg.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr null, ptr %i.cq, align 8, !tbaa !754
  %i.cr = getelementptr i8, ptr %.0.i470, i64 8
  %i.cs = load i32, ptr %.0.i470, align 8, !tbaa !7 ; 4 uses
  %i.ct = sext i32 %i.cs to i64
  %i.cu = tail call i64 @rb_hash_new_with_size(i64 noundef %i.ct) #23 ; 2 uses
  %i.cv = sub i32 %i.ah, %i.cs                    ; 2 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %4, i64 %i.cw ; 2 uses
  %i.cy = add i32 %i.cv, 1                        ; 2 uses
  store i32 %i.cy, ptr %i.as, align 8, !tbaa !749
  %i.cz = icmp sgt i32 %i.cs, 0
  br i1 %i.cz, label %.lr.ph.preheader.i, label %args_kw_argv_to_hash.exit

.lr.ph.preheader.i:                               ; preds = %bb.y
  %wide.trip.count.i = zext nneg i32 %i.cs to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.da = getelementptr [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !11
  %i.dc = getelementptr [8 x i8], ptr %i.cx, i64 %indvars.iv.i
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !11
  %i.de = tail call i64 @rb_hash_aset(i64 noundef %i.cu, i64 noundef %i.db, i64 noundef %i.dd) #23 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %args_kw_argv_to_hash.exit, label %.lr.ph.i, !llvm.loop !755

args_kw_argv_to_hash.exit:                        ; preds = %.lr.ph.i, %bb.y
  store i64 %i.cu, ptr %i.cx, align 8, !tbaa !11
  br label %ruby_nonempty_memcpy.exit

.thread:                                          ; preds = %bb.s, %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit466.thread
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.x, %rbimpl_size_mul_or_raise.exit471, %args_kw_argv_to_hash.exit, %.thread
  %.0653 = phi i32 [ %i.x, %.thread ], [ 2144, %args_kw_argv_to_hash.exit ], [ %i.x, %rbimpl_size_mul_or_raise.exit471 ], [ %i.x, %bb.x ] ; 14 uses
  %i.dg = phi i32 [ %i.ah, %.thread ], [ %i.cy, %args_kw_argv_to_hash.exit ], [ %i.cn, %rbimpl_size_mul_or_raise.exit471 ], [ %i.cn, %bb.x ] ; 13 uses
  %i.dh = and i32 %.0.i468, 65
  %or.cond451.not = icmp eq i32 %i.dh, 65
  br i1 %or.cond451.not, label %bb.z, label %bb.bg

bb.z:                                             ; preds = %ruby_nonempty_memcpy.exit
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.di, align 4, !tbaa !756
  %i.dj = add i32 %i.dg, -1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr [8 x i8], ptr %4, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !11 ; 7 uses
  %i.dn = add i32 %i.dg, -2                       ; 3 uses
  store i32 %i.dn, ptr %i.as, align 8, !tbaa !749
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr [8 x i8], ptr %4, i64 %i.do
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !11
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 8 uses
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !757
  %i.ds = icmp eq i64 %i.dm, 4
  br i1 %i.ds, label %ignore_keyword_hash_p.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dt = icmp eq i64 %i.dm, 0
  %i.du = and i64 %i.dm, 7
  %i.dv = icmp ne i64 %i.du, 0
  %i.dw = or i1 %i.dt, %i.dv
  br i1 %i.dw, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.aa
  %i.dx = inttoptr i64 %i.dm to ptr
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !77 ; 3 uses
  %i.dz = and i64 %i.dy, 31
  %i.ea = icmp eq i64 %i.dz, 8
  br i1 %i.ea, label %bb.ab, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.aa
  %i.eb = call i64 @rb_to_hash_type(i64 noundef %i.dm) #23 ; 2 uses
  %.phi.trans.insert.i = inttoptr i64 %i.eb to ptr
  %.pre.i473 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !77
  br label %bb.ad

bb.ab:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.ec = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.ed = getelementptr i8, ptr %i.ec, i64 16
  %i.ee = load i16, ptr %i.ed, align 8            ; 2 uses
  %i.ef = and i16 %i.ee, 2048
  %.not.i475 = icmp eq i16 %i.ef, 0
  br i1 %.not.i475, label %bb.ad, label %bb.ac, !prof !72

bb.ac:                                            ; preds = %bb.ab
  %i.eg = and i16 %i.ee, 16
  %.not21.i = icmp eq i16 %i.eg, 0
  %i.eh = or i32 %.0653, 2048
  %spec.select = select i1 %.not21.i, i32 %i.eh, i32 %.0653
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.6659 = phi i32 [ %.0653, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %.0653, %bb.ab ], [ %spec.select, %bb.ac ] ; 5 uses
  %i.ei = phi i64 [ %.pre.i473, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.dy, %bb.ab ], [ %i.dy, %bb.ac ] ; 2 uses
  %.019.i = phi i64 [ %i.eb, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.dm, %bb.ab ], [ %i.dm, %bb.ac ] ; 4 uses
  %i.ej = and i64 %i.ei, 32768
  %.not.i.i.i.i = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ek = lshr i64 %i.ei, 16
  %i.el = and i64 %i.ek, 15
  br label %RHASH_EMPTY_P.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.em = add i64 %.019.i, 24
  %i.en = inttoptr i64 %i.em to ptr
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.af, %bb.ae
  %.0.i.i.i = phi i64 [ %i.el, %bb.ae ], [ %i.ep, %bb.af ]
  %i.eq = icmp eq i64 %.0.i.i.i, 0
  %.pre793.pre = load ptr, ptr %i.c, align 8, !tbaa !124 ; 4 uses
  br i1 %i.eq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %RHASH_EMPTY_P.exit.i
  %i.er = getelementptr i8, ptr %.pre793.pre, i64 16
  %i.es = load i16, ptr %i.er, align 8
  %i.et = and i16 %i.es, 32
  %.not22.i = icmp eq i16 %i.et, 0
  br i1 %.not22.i, label %ignore_keyword_hash_p.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %RHASH_EMPTY_P.exit.i
  %i.eu = and i32 %.6659, 2048
  %.not23.i = icmp eq i32 %i.eu, 0
  br i1 %.not23.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ev = getelementptr i8, ptr %.pre793.pre, i64 16
  %i.ew = load i16, ptr %i.ev, align 8
  %i.ex = and i16 %i.ew, 544
  %or.cond.i = icmp eq i16 %i.ex, 0
  br i1 %or.cond.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ey = or disjoint i32 %.6659, 2048
  %i.ez = call i64 @rb_hash_dup(i64 noundef %.019.i) #23
  %.pre792 = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.fa = phi ptr [ %.pre793.pre, %bb.ai ], [ %.pre792, %bb.aj ], [ %.pre793.pre, %bb.ah ]
  %.7660 = phi i32 [ %.6659, %bb.ai ], [ %i.ey, %bb.aj ], [ %.6659, %bb.ah ] ; 8 uses
  %.1.i = phi i64 [ %.019.i, %bb.ai ], [ %i.ez, %bb.aj ], [ %.019.i, %bb.ah ] ; 7 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %i.fc = load i16, ptr %i.fb, align 8            ; 4 uses
  %i.fd = and i16 %i.fc, 48
  %or.cond28.i = icmp eq i16 %i.fd, 0
  br i1 %or.cond28.i, label %bb.al, label %.thread846

bb.al:                                            ; preds = %bb.ak
  %i.fe = inttoptr i64 %.1.i to ptr
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !77 ; 2 uses
  %i.fg = and i64 %i.ff, 32768
  %.not.i.i.i29.i = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i.i29.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fh = lshr i64 %i.ff, 16
  %i.fi = and i64 %i.fh, 15
  br label %RHASH_EMPTY_P.exit31.i

bb.an:                                            ; preds = %bb.al
  %i.fj = add i64 %.1.i, 24
  %i.fk = inttoptr i64 %i.fj to ptr
  %i.fl = getelementptr i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i

RHASH_EMPTY_P.exit31.i:                           ; preds = %bb.an, %bb.am
  %.0.i.i30.i = phi i64 [ %i.fi, %bb.am ], [ %i.fm, %bb.an ]
  %i.fn = icmp eq i64 %.0.i.i30.i, 0
  br i1 %i.fn, label %ignore_keyword_hash_p.exit, label %bb.ao

ignore_keyword_hash_p.exit:                       ; preds = %bb.z, %bb.ag, %RHASH_EMPTY_P.exit31.i
  %.8 = phi i32 [ %.0653, %bb.z ], [ %.6659, %bb.ag ], [ %.7660, %RHASH_EMPTY_P.exit31.i ]
  %i.fo = and i32 %.8, -2113
  br label %.thread848

bb.ao:                                            ; preds = %RHASH_EMPTY_P.exit31.i
  %i.fp = and i16 %i.fc, 512
  %.not412 = icmp eq i16 %i.fp, 0
  br i1 %.not412, label %bb.as, label %bb.ap, !prof !72

.thread846:                                       ; preds = %bb.ak
  %i.fq = and i16 %i.fc, 512
  %.not412847 = icmp eq i16 %i.fq, 0
  br i1 %.not412847, label %.thread848, label %bb.ap, !prof !72

bb.ap:                                            ; preds = %.thread846, %bb.ao
  %i.fr = and i32 %.7660, 2048
  %.not.i476 = icmp eq i32 %i.fr, 0
  br i1 %.not.i476, label %bb.aq, label %check_kwrestarg.exit

bb.aq:                                            ; preds = %bb.ap
  %i.fs = or disjoint i32 %.7660, 2048
  %i.ft = call i64 @rb_hash_dup(i64 noundef %.1.i) #23
  br label %check_kwrestarg.exit

check_kwrestarg.exit:                             ; preds = %bb.ap, %bb.aq
  %.10 = phi i32 [ %i.fs, %bb.aq ], [ %.7660, %bb.ap ]
  %.0.i477 = phi i64 [ %i.ft, %bb.aq ], [ %.1.i, %bb.ap ] ; 2 uses
  %i.fu = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i478 = icmp eq i32 %i.fu, 0
  %.pre794 = load i64, ptr %i.dr, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i478, label %bb.ar, label %arg_rest_dup.exit

bb.ar:                                            ; preds = %check_kwrestarg.exit
  %i.fv = call i64 @rb_ary_dup(i64 noundef %.pre794) #23 ; 2 uses
  store i64 %i.fv, ptr %i.dr, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit

arg_rest_dup.exit:                                ; preds = %check_kwrestarg.exit, %bb.ar
  %i.fw = phi i64 [ %.pre794, %check_kwrestarg.exit ], [ %i.fv, %bb.ar ]
  %i.fx = call i64 @rb_ary_push(i64 noundef %i.fw, i64 noundef %.0.i477) #23 ; 0 uses
  br label %.thread848

bb.as:                                            ; preds = %bb.ao
  %i.fy = and i32 %.7660, 2048
  %.not.i479 = icmp eq i32 %i.fy, 0
  br i1 %.not.i479, label %bb.at, label %check_kwrestarg.exit481

bb.at:                                            ; preds = %bb.as
  %i.fz = or disjoint i32 %.7660, 2048
  %i.ga = call i64 @rb_hash_dup(i64 noundef %.1.i) #23
  %.pre795 = load ptr, ptr %i.c, align 8, !tbaa !124
  %.phi.trans.insert796 = getelementptr i8, ptr %.pre795, i64 16
  %.pre797 = load i16, ptr %.phi.trans.insert796, align 8
  br label %check_kwrestarg.exit481

check_kwrestarg.exit481:                          ; preds = %bb.as, %bb.at
  %i.gb = phi i16 [ %.pre797, %bb.at ], [ %i.fc, %bb.as ]
  %.11 = phi i32 [ %i.fz, %bb.at ], [ %.7660, %bb.as ] ; 2 uses
  %.0.i480 = phi i64 [ %i.ga, %bb.at ], [ %.1.i, %bb.as ] ; 2 uses
  %i.gc = and i16 %i.gb, 4
  %.not415 = icmp eq i16 %i.gc, 0
  br i1 %.not415, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %check_kwrestarg.exit481
  %i.gd = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i482 = icmp eq i32 %i.gd, 0
  %.pre798 = load i64, ptr %i.dr, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i482, label %bb.av, label %arg_rest_dup.exit483

bb.av:                                            ; preds = %bb.au
  %i.ge = call i64 @rb_ary_dup(i64 noundef %.pre798) #23 ; 2 uses
  store i64 %i.ge, ptr %i.dr, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit483

arg_rest_dup.exit483:                             ; preds = %bb.au, %bb.av
  %i.gf = phi i64 [ %.pre798, %bb.au ], [ %i.ge, %bb.av ]
  %i.gg = call i64 @rb_ary_push(i64 noundef %i.gf, i64 noundef %.0.i480) #23 ; 0 uses
  br label %.thread848

bb.aw:                                            ; preds = %check_kwrestarg.exit481
  %i.gh = load i64, ptr %i.dr, align 8, !tbaa !757
  %i.gi = inttoptr i64 %i.gh to ptr               ; 4 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !77 ; 2 uses
  %i.gk = and i64 %i.gj, 8192
  %.not.i484 = icmp eq i64 %i.gk, 0
  br i1 %.not.i484, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gl = getelementptr i8, ptr %i.gi, i64 16
  %i.gm = load i32, ptr %i.as, align 8, !tbaa !749
  %i.gn = lshr i64 %i.gj, 15
  %i.go = and i64 %i.gn, 127
  br label %rb_array_len.exit.i

bb.ay:                                            ; preds = %bb.aw
  %i.gp = getelementptr i8, ptr %i.gi, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !27
  %i.gr = load i32, ptr %i.as, align 8, !tbaa !749
  %i.gs = getelementptr i8, ptr %i.gi, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.ay, %bb.ax
  %i.gu = phi i32 [ %i.gm, %bb.ax ], [ %i.gr, %bb.ay ] ; 12 uses
  %.0.i485670 = phi ptr [ %i.gl, %bb.ax ], [ %i.gq, %bb.ay ] ; 7 uses
  %.0.i.i487 = phi i64 [ %i.go, %bb.ax ], [ %i.gt, %bb.ay ] ; 7 uses
  %.0.i485670867 = ptrtoaddr ptr %.0.i485670 to i64
  %i.gv = add i64 %.0.i.i487, 2147483648
  %.not.i1.i = icmp ult i64 %i.gv, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.az

bb.az:                                            ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i487) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.gw = trunc i64 %.0.i.i487 to i32             ; 3 uses
  %.not416 = icmp eq i64 %.0.i.i487, 0
  br i1 %.not416, label %.thread686.thread849, label %bb.ba

bb.ba:                                            ; preds = %RARRAY_LENINT.exit
  %i.gx = load ptr, ptr %i.y, align 8, !tbaa !70  ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !73
  %i.ha = shl nsw i64 %.0.i.i487, 32
  %sext = add i64 %i.ha, 4294967296
  %i.hb = ashr exact i64 %sext, 29
  %i.hc = getelementptr i8, ptr %i.gz, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 56
  %.not417 = icmp ugt ptr %i.gx, %i.hd
  br i1 %.not417, label %bb.bc, label %bb.bb, !prof !72

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @vm_stackoverflow() #58
  unreachable

bb.bc:                                            ; preds = %bb.ba
  %i.he = add i32 %i.dg, %i.gw                    ; 4 uses
  %i.hf = add i32 %i.gu, %i.gw                    ; 4 uses
  %i.hg = icmp sgt i64 %.0.i.i487, 0
  br i1 %i.hg, label %.lr.ph761.preheader, label %.thread686.thread849

.lr.ph761.preheader:                              ; preds = %bb.bc
  %i.hh = call i32 @llvm.smax.i32(i32 %i.gw, i32 1)
  %wide.trip.count771 = zext nneg i32 %i.hh to i64 ; 6 uses
  %min.iters.check869 = icmp slt i64 %.0.i.i487, 18
  br i1 %min.iters.check869, label %.lr.ph761.preheader942, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph761.preheader
  %i.hi = add nsw i64 %wide.trip.count771, -1     ; 2 uses
  %i.hj = trunc nsw i64 %i.hi to i32
  %i.hk = add i32 %i.gu, %i.hj
  %i.hl = icmp slt i32 %i.hk, %i.gu
  %i.hm = icmp ugt i64 %i.hi, 4294967295
  %i.hn = or i1 %i.hl, %i.hm
  br i1 %i.hn, label %.lr.ph761.preheader942, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ho = sext i32 %i.gu to i64
  %i.hp = shl nsw i64 %i.ho, 3
  %i.hq = add i64 %i.hp, %i.a
  %i.hr = sub i64 %i.hq, %.0.i485670867
  %diff.check = icmp ult i64 %i.hr, 32
  br i1 %diff.check, label %.lr.ph761.preheader942, label %vector.ph870

vector.ph870:                                     ; preds = %vector.memcheck
  %n.vec872 = and i64 %wide.trip.count771, 2147483644 ; 4 uses
  %i.hs = trunc nuw nsw i64 %n.vec872 to i32
  %i.ht = add i32 %i.gu, %i.hs                    ; 2 uses
  br label %vector.body873

vector.body873:                                   ; preds = %vector.body873, %vector.ph870
  %index874 = phi i64 [ 0, %vector.ph870 ], [ %index.next876, %vector.body873 ] ; 3 uses
  %i.hu = trunc i64 %index874 to i32
  %i.hv = add i32 %i.gu, %i.hu
  %i.hw = getelementptr [8 x i8], ptr %.0.i485670, i64 %index874 ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 16
  %wide.load = load <2 x i64>, ptr %i.hw, align 8, !tbaa !11
  %wide.load875 = load <2 x i64>, ptr %i.hx, align 8, !tbaa !11
  %i.hy = sext i32 %i.hv to i64
  %i.hz = getelementptr [8 x i8], ptr %4, i64 %i.hy ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 16
  store <2 x i64> %wide.load, ptr %i.hz, align 8, !tbaa !11
  store <2 x i64> %wide.load875, ptr %i.ia, align 8, !tbaa !11
  %index.next876 = add nuw i64 %index874, 4       ; 2 uses
  %i.ib = icmp eq i64 %index.next876, %n.vec872
  br i1 %i.ib, label %middle.block877, label %vector.body873, !llvm.loop !758

end_hunk_7
begin_hunk_8_@setup_parameters_complex:bb.a
.lr.ph761.prol:                                   ; preds = %.lr.ph761.preheader942, %.lr.ph761.prol
  %indvars.iv768.prol = phi i64 [ %indvars.iv.next769.prol, %.lr.ph761.prol ], [ %indvars.iv768.ph, %.lr.ph761.preheader942 ] ; 2 uses
  %.0359757.prol = phi i32 [ %i.ig, %.lr.ph761.prol ], [ %.0359757.ph, %.lr.ph761.preheader942 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph761.prol ], [ 0, %.lr.ph761.preheader942 ]
  %i.ic = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768.prol
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !11
  %i.ie = sext i32 %.0359757.prol to i64
  %i.if = getelementptr [8 x i8], ptr %4, i64 %i.ie
  store i64 %i.id, ptr %i.if, align 8, !tbaa !11
  %i.ig = add i32 %.0359757.prol, 1               ; 3 uses
  %indvars.iv.next769.prol = add nuw nsw i64 %indvars.iv768.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph761.prol.loopexit, label %.lr.ph761.prol, !llvm.loop !759

.lr.ph761.prol.loopexit:                          ; preds = %.lr.ph761.prol, %.lr.ph761.preheader942
  %.lcssa.unr = phi i32 [ poison, %.lr.ph761.preheader942 ], [ %i.ig, %.lr.ph761.prol ]
  %indvars.iv768.unr = phi i64 [ %indvars.iv768.ph, %.lr.ph761.preheader942 ], [ %indvars.iv.next769.prol, %.lr.ph761.prol ]
  %.0359757.unr = phi i32 [ %.0359757.ph, %.lr.ph761.preheader942 ], [ %i.ig, %.lr.ph761.prol ]
  %i.ih = sub nsw i64 %indvars.iv768.ph, %wide.trip.count771
  %i.ii = icmp ugt i64 %i.ih, -4
  br i1 %i.ii, label %.thread686.thread849, label %.lr.ph761

.lr.ph761:                                        ; preds = %.lr.ph761.prol.loopexit, %.lr.ph761
  %indvars.iv768 = phi i64 [ %indvars.iv.next769.3, %.lr.ph761 ], [ %indvars.iv768.unr, %.lr.ph761.prol.loopexit ] ; 5 uses
  %.0359757 = phi i32 [ %i.jf, %.lr.ph761 ], [ %.0359757.unr, %.lr.ph761.prol.loopexit ] ; 5 uses
  %i.ij = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !11
  %i.il = sext i32 %.0359757 to i64
  %i.im = getelementptr [8 x i8], ptr %4, i64 %i.il
  store i64 %i.ik, ptr %i.im, align 8, !tbaa !11
  %i.in = add i32 %.0359757, 1
  %i.io = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.ip = getelementptr i8, ptr %i.io, i64 8
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !11
  %i.ir = sext i32 %i.in to i64
  %i.is = getelementptr [8 x i8], ptr %4, i64 %i.ir
  store i64 %i.iq, ptr %i.is, align 8, !tbaa !11
  %i.it = add i32 %.0359757, 2
  %i.iu = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.iv = getelementptr i8, ptr %i.iu, i64 16
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !11
  %i.ix = sext i32 %i.it to i64
  %i.iy = getelementptr [8 x i8], ptr %4, i64 %i.ix
  store i64 %i.iw, ptr %i.iy, align 8, !tbaa !11
  %i.iz = add i32 %.0359757, 3
  %i.ja = getelementptr [8 x i8], ptr %.0.i485670, i64 %indvars.iv768
  %i.jb = getelementptr i8, ptr %i.ja, i64 24
  %i.jc = load i64, ptr %i.jb, align 8, !tbaa !11
  %i.jd = sext i32 %i.iz to i64
  %i.je = getelementptr [8 x i8], ptr %4, i64 %i.jd
  store i64 %i.jc, ptr %i.je, align 8, !tbaa !11
  %i.jf = add i32 %.0359757, 4                    ; 2 uses
  %indvars.iv.next769.3 = add nuw nsw i64 %indvars.iv768, 4 ; 2 uses
  %exitcond772.not.3 = icmp eq i64 %indvars.iv.next769.3, %wide.trip.count771
  br i1 %exitcond772.not.3, label %.thread686.thread849, label %.lr.ph761, !llvm.loop !760

.thread686.thread849:                             ; preds = %.lr.ph761.prol.loopexit, %.lr.ph761, %middle.block877, %RARRAY_LENINT.exit, %bb.bc
  %i.jg = phi i32 [ %i.gu, %RARRAY_LENINT.exit ], [ %i.hf, %bb.bc ], [ %i.hf, %middle.block877 ], [ %i.hf, %.lr.ph761 ], [ %i.hf, %.lr.ph761.prol.loopexit ]
  %.1360 = phi i32 [ %i.gu, %RARRAY_LENINT.exit ], [ %i.gu, %bb.bc ], [ %i.ht, %middle.block877 ], [ %.lcssa.unr, %.lr.ph761.prol.loopexit ], [ %i.jf, %.lr.ph761 ]
  %.1 = phi i32 [ %i.dg, %RARRAY_LENINT.exit ], [ %i.he, %bb.bc ], [ %i.he, %middle.block877 ], [ %i.he, %.lr.ph761 ], [ %i.he, %.lr.ph761.prol.loopexit ]
  %i.jh = sext i32 %.1360 to i64
  %i.ji = getelementptr [8 x i8], ptr %4, i64 %i.jh
  store i64 %.0.i480, ptr %i.ji, align 8, !tbaa !11
  %i.jj = add i32 %.1, -1
  %i.jk = add i32 %i.jg, 1
  store i32 %i.jk, ptr %i.as, align 8, !tbaa !749
  store i64 0, ptr %i.dr, align 8, !tbaa !757
  %i.jl = and i32 %.0.i468, -66
  store i32 %i.jl, ptr %i.b, align 4, !tbaa !7
  br label %.thread686.thread738

.thread848:                                       ; preds = %.thread846, %ignore_keyword_hash_p.exit, %arg_rest_dup.exit, %arg_rest_dup.exit483
  %.1654 = phi i32 [ %.11, %arg_rest_dup.exit483 ], [ %i.fo, %ignore_keyword_hash_p.exit ], [ %.10, %arg_rest_dup.exit ], [ %.7660, %.thread846 ]
  %.0344 = phi i64 [ 0, %arg_rest_dup.exit483 ], [ 0, %ignore_keyword_hash_p.exit ], [ %.0.i477, %arg_rest_dup.exit ], [ 0, %.thread846 ]
  %.0336 = phi i64 [ 4, %arg_rest_dup.exit483 ], [ 4, %ignore_keyword_hash_p.exit ], [ 4, %arg_rest_dup.exit ], [ %.1.i, %.thread846 ]
  %i.jm = load i64, ptr %i.dr, align 8, !tbaa !757
  %i.jn = inttoptr i64 %i.jm to ptr               ; 2 uses
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !77 ; 2 uses
  %i.jp = and i64 %i.jo, 8192
  %.not.i.i488 = icmp eq i64 %i.jp, 0
  br i1 %.not.i.i488, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.thread848
  %i.jq = lshr i64 %i.jo, 15
  %i.jr = and i64 %i.jq, 127
  br label %rb_array_len.exit.i489

bb.be:                                            ; preds = %.thread848
  %i.js = getelementptr i8, ptr %i.jn, i64 16
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !27
  br label %rb_array_len.exit.i489

rb_array_len.exit.i489:                           ; preds = %bb.be, %bb.bd
  %.0.i.i490 = phi i64 [ %i.jr, %bb.bd ], [ %i.jt, %bb.be ] ; 3 uses
  %i.ju = add i64 %.0.i.i490, 2147483648
  %.not.i1.i491 = icmp ult i64 %i.ju, 4294967296
  br i1 %.not.i1.i491, label %RARRAY_LENINT.exit492, label %bb.bf

bb.bf:                                            ; preds = %rb_array_len.exit.i489
  call void @rb_out_of_int(i64 noundef %.0.i.i490) #57
  unreachable

RARRAY_LENINT.exit492:                            ; preds = %rb_array_len.exit.i489
  %i.jv = trunc nsw i64 %.0.i.i490 to i32
  %i.jw = add i32 %i.dn, %i.jv
  br label %bb.dp

bb.bg:                                            ; preds = %ruby_nonempty_memcpy.exit
  %i.jx = and i32 %.0.i468, 1
  %.not387 = icmp eq i32 %i.jx, 0
  br i1 %.not387, label %bb.cr, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jy = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 0, ptr %i.jy, align 4, !tbaa !756
  %i.jz = add i32 %i.dg, -1                       ; 2 uses
  store i32 %i.jz, ptr %i.as, align 8, !tbaa !749
  %i.ka = sext i32 %i.jz to i64
  %i.kb = getelementptr [8 x i8], ptr %4, i64 %i.ka
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !11 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 7 uses
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !757
  %i.ke = inttoptr i64 %i.kc to ptr               ; 4 uses
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !77 ; 2 uses
  %i.kg = and i64 %i.kf, 8192
  %.not.i.i493 = icmp eq i64 %i.kg, 0             ; 2 uses
  br i1 %.not.i.i493, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kh = lshr i64 %i.kf, 15
  %i.ki = and i64 %i.kh, 127
  br label %rb_array_len.exit.i494

bb.bj:                                            ; preds = %bb.bh
  %i.kj = getelementptr i8, ptr %i.ke, i64 16
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !27
  br label %rb_array_len.exit.i494

rb_array_len.exit.i494:                           ; preds = %bb.bj, %bb.bi
  %.0.i.i495 = phi i64 [ %i.ki, %bb.bi ], [ %i.kk, %bb.bj ] ; 4 uses
  %i.kl = add i64 %.0.i.i495, 2147483648
  %.not.i1.i496 = icmp ult i64 %i.kl, 4294967296
  br i1 %.not.i1.i496, label %RARRAY_LENINT.exit497, label %bb.bk

bb.bk:                                            ; preds = %rb_array_len.exit.i494
  call void @rb_out_of_int(i64 noundef %.0.i.i495) #57
  unreachable

RARRAY_LENINT.exit497:                            ; preds = %rb_array_len.exit.i494
  %i.km = trunc nsw i64 %.0.i.i495 to i32
  %i.kn = add i32 %i.km, -1                       ; 2 uses
  %i.ko = add i32 %i.kn, %i.dg                    ; 9 uses
  %i.kp = icmp eq i32 %.0653, 0
  %i.kq = icmp sgt i64 %.0.i.i495, 0
  %or.cond = and i1 %i.kp, %i.kq
  br i1 %or.cond, label %bb.bl, label %.thread686

bb.bl:                                            ; preds = %RARRAY_LENINT.exit497
  %i.kr = zext nneg i32 %i.kn to i64              ; 2 uses
  br i1 %.not.i.i493, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ks = getelementptr i8, ptr %i.ke, i64 16
  br label %RARRAY_AREF.exit

bb.bn:                                            ; preds = %bb.bl
  %i.kt = getelementptr i8, ptr %i.ke, i64 32
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !27
  br label %RARRAY_AREF.exit

RARRAY_AREF.exit:                                 ; preds = %bb.bm, %bb.bn
  %.0.i.i499 = phi ptr [ %i.ks, %bb.bm ], [ %i.ku, %bb.bn ]
  %i.kv = getelementptr [8 x i8], ptr %.0.i.i499, i64 %i.kr
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !11 ; 14 uses
  %i.kx = icmp eq i64 %i.kw, 0
  %i.ky = and i64 %i.kw, 7
  %i.kz = icmp ne i64 %i.ky, 0
  %i.la = or i1 %i.kx, %i.kz
  br i1 %i.la, label %.thread686.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RARRAY_AREF.exit
  %i.lb = inttoptr i64 %i.kw to ptr
  %i.lc = load i64, ptr %i.lb, align 8, !tbaa !77 ; 3 uses
  %i.ld = and i64 %i.lc, 8223
  %or.cond858.not = icmp eq i64 %i.ld, 8200
  br i1 %or.cond858.not, label %bb.bo, label %.thread686.thread

bb.bo:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.le = and i64 %i.lc, 32768
  %.not.i.i.i500 = icmp eq i64 %i.le, 0
  br i1 %.not.i.i.i500, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.lf = lshr i64 %i.lc, 16
  %i.lg = and i64 %i.lf, 15
  br label %RHASH_EMPTY_P.exit502

bb.bq:                                            ; preds = %bb.bo
  %i.lh = add i64 %i.kw, 24
  %i.li = inttoptr i64 %i.lh to ptr
  %i.lj = getelementptr i8, ptr %i.li, i64 16
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit502

RHASH_EMPTY_P.exit502:                            ; preds = %bb.bp, %bb.bq
  %.0.i.i501 = phi i64 [ %i.lg, %bb.bp ], [ %i.lk, %bb.bq ]
  %i.ll = icmp eq i64 %.0.i.i501, 0
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !124
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 16
  %.pre778 = load i16, ptr %.phi.trans.insert, align 8 ; 2 uses
  %i.lm = and i16 %.pre778, 16
  %.not399 = icmp ne i16 %i.lm, 0
  %or.cond859.not864 = select i1 %i.ll, i1 true, i1 %.not399
  %i.ln = and i16 %.pre778, 32
  %.not400 = icmp eq i16 %i.ln, 0
  %or.cond860 = select i1 %or.cond859.not864, i1 %.not400, i1 false
  br i1 %or.cond860, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %RHASH_EMPTY_P.exit502
  %i.lo = call i64 @rb_hash_dup(i64 noundef %i.kw) #23
  br label %bb.bs

bb.bs:                                            ; preds = %RHASH_EMPTY_P.exit502, %bb.br
  %.0352 = phi i64 [ %i.lo, %bb.br ], [ %i.kw, %RHASH_EMPTY_P.exit502 ] ; 11 uses
  store i32 0, ptr %i.au, align 8, !tbaa !752
  %i.lp = icmp eq i64 %.0352, 4
  br i1 %i.lp, label %._crit_edge787, label %bb.bt

._crit_edge787:                                   ; preds = %bb.bs
  %.pre788 = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %bb.ca

bb.bt:                                            ; preds = %bb.bs
  %i.lq = icmp eq i64 %.0352, 0
  %i.lr = and i64 %.0352, 7
  %i.ls = icmp ne i64 %i.lr, 0
  %i.lt = or i1 %i.lq, %i.ls
  br i1 %i.lt, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504, label %rbimpl_RB_TYPE_P_fastpath.exit.i503

rbimpl_RB_TYPE_P_fastpath.exit.i503:              ; preds = %bb.bt
  %i.lu = inttoptr i64 %.0352 to ptr
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !77 ; 2 uses
  %i.lw = and i64 %i.lv, 31
  %i.lx = icmp eq i64 %i.lw, 8
  br i1 %i.lx, label %bb.bu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504

rbimpl_RB_TYPE_P_fastpath.exit.thread.i504:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i503, %bb.bt
  %i.ly = call i64 @rb_to_hash_type(i64 noundef %.0352) #23 ; 2 uses
  %.phi.trans.insert.i505 = inttoptr i64 %i.ly to ptr
  %.pre.i506 = load i64, ptr %.phi.trans.insert.i505, align 8, !tbaa !77
  br label %bb.bu

bb.bu:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i503, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504
  %i.lz = phi i64 [ %.pre.i506, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504 ], [ %i.lv, %rbimpl_RB_TYPE_P_fastpath.exit.i503 ] ; 3 uses
  %.019.i507 = phi i64 [ %i.ly, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i504 ], [ %.0352, %rbimpl_RB_TYPE_P_fastpath.exit.i503 ] ; 7 uses
  %i.ma = and i64 %i.lz, 32768
  %.not.i.i.i.i508 = icmp eq i64 %i.ma, 0         ; 2 uses
  br i1 %.not.i.i.i.i508, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.mb = lshr i64 %i.lz, 16
  %i.mc = and i64 %i.mb, 15
  br label %RHASH_EMPTY_P.exit.i509

bb.bw:                                            ; preds = %bb.bu
  %i.md = add i64 %.019.i507, 24
  %i.me = inttoptr i64 %i.md to ptr
  %i.mf = getelementptr i8, ptr %i.me, i64 16
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i509

RHASH_EMPTY_P.exit.i509:                          ; preds = %bb.bw, %bb.bv
  %.0.i.i.i510 = phi i64 [ %i.mc, %bb.bv ], [ %i.mg, %bb.bw ]
  %i.mh = icmp eq i64 %.0.i.i.i510, 0
  %.pre779 = load ptr, ptr %i.c, align 8, !tbaa !124 ; 3 uses
  %i.mi = getelementptr i8, ptr %.pre779, i64 16
  %i.mj = load i16, ptr %i.mi, align 8            ; 4 uses
  %i.mk = and i16 %i.mj, 32
  %.not22.i519 = icmp eq i16 %i.mk, 0
  %or.cond861 = select i1 %i.mh, i1 %.not22.i519, i1 false
  br i1 %or.cond861, label %bb.ca, label %RHASH_EMPTY_P.exit.i509._crit_edge

RHASH_EMPTY_P.exit.i509._crit_edge:               ; preds = %RHASH_EMPTY_P.exit.i509
  %i.ml = and i16 %i.mj, 48
  %or.cond28.i513 = icmp eq i16 %i.ml, 0
  br i1 %or.cond28.i513, label %bb.bx, label %bb.cg

bb.bx:                                            ; preds = %RHASH_EMPTY_P.exit.i509._crit_edge
  br i1 %.not.i.i.i.i508, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.mm = lshr i64 %i.lz, 16
  %i.mn = and i64 %i.mm, 15
  br label %RHASH_EMPTY_P.exit31.i516

bb.bz:                                            ; preds = %bb.bx
  %i.mo = add i64 %.019.i507, 24
  %i.mp = inttoptr i64 %i.mo to ptr
  %i.mq = getelementptr i8, ptr %i.mp, i64 16
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i516

RHASH_EMPTY_P.exit31.i516:                        ; preds = %bb.bz, %bb.by
  %.0.i.i30.i517 = phi i64 [ %i.mn, %bb.by ], [ %i.mr, %bb.bz ]
  %i.ms = icmp eq i64 %.0.i.i30.i517, 0
  br i1 %i.ms, label %bb.ca, label %bb.cg

bb.ca:                                            ; preds = %RHASH_EMPTY_P.exit.i509, %._crit_edge787, %RHASH_EMPTY_P.exit31.i516
  %i.mt = phi ptr [ %.pre788, %._crit_edge787 ], [ %.pre779, %RHASH_EMPTY_P.exit31.i516 ], [ %.pre779, %RHASH_EMPTY_P.exit.i509 ]
  %i.mu = getelementptr i8, ptr %i.mt, i64 16
  %i.mv = load i16, ptr %i.mu, align 8            ; 2 uses
  %i.mw = and i16 %i.mv, 4
  %.not408 = icmp eq i16 %i.mw, 0
  br i1 %.not408, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mx = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i523 = icmp eq i32 %i.mx, 0
  %.pre789 = load i64, ptr %i.kd, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i523, label %bb.cc, label %arg_rest_dup.exit524

bb.cc:                                            ; preds = %bb.cb
  %i.my = call i64 @rb_ary_dup(i64 noundef %.pre789) #23 ; 2 uses
  store i64 %i.my, ptr %i.kd, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit524

arg_rest_dup.exit524:                             ; preds = %bb.cb, %bb.cc
  %i.mz = phi i64 [ %.pre789, %bb.cb ], [ %i.my, %bb.cc ]
  %i.na = call i64 @rb_ary_pop(i64 noundef %i.mz) #23 ; 0 uses
  br label %bb.cf

bb.cd:                                            ; preds = %bb.ca
  %.not409 = icmp ne i32 %5, 0
  %i.nb = and i16 %i.mv, 32
  %.not410 = icmp eq i16 %i.nb, 0
  %or.cond453 = and i1 %.not409, %.not410
  br i1 %or.cond453, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  call fastcc void @flatten_rest_args(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %4, ptr noundef %i.b)
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cd, %bb.ce, %arg_rest_dup.exit524
  %i.nc = add i32 %i.ko, -1
  br label %.thread686.thread

bb.cg:                                            ; preds = %RHASH_EMPTY_P.exit31.i516, %RHASH_EMPTY_P.exit.i509._crit_edge
  %i.nd = and i16 %i.mj, 4
  %.not402 = icmp eq i16 %i.nd, 0
  br i1 %.not402, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %bb.cg
  call fastcc void @flatten_rest_args(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %4, ptr noundef %i.b)
  %i.ne = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.nf = getelementptr i8, ptr %i.ne, i64 16
  %i.ng = load i16, ptr %i.nf, align 8
  %i.nh = and i16 %i.ng, 48
  %or.cond454 = icmp eq i16 %i.nh, 0
  br i1 %or.cond454, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ni = add i32 %i.ko, -1
  br label %.thread686.thread738

bb.cj:                                            ; preds = %bb.ch
  %i.nj = load i32, ptr %i.as, align 8, !tbaa !749 ; 2 uses
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr [8 x i8], ptr %4, i64 %i.nk
  store i64 %.019.i507, ptr %i.nl, align 8, !tbaa !11
  %i.nm = add i32 %i.nj, 1
  store i32 %i.nm, ptr %i.as, align 8, !tbaa !749
  br label %.thread686.thread

bb.ck:                                            ; preds = %bb.cg
  %.not405 = icmp eq i64 %.0352, %.019.i507
  br i1 %.not405, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nn = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i525 = icmp eq i32 %i.nn, 0
  %.pre782 = load i64, ptr %i.kd, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i525, label %bb.cm, label %arg_rest_dup.exit526

bb.cm:                                            ; preds = %bb.cl
  %i.no = call i64 @rb_ary_dup(i64 noundef %.pre782) #23 ; 2 uses
  store i64 %i.no, ptr %i.kd, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit526

arg_rest_dup.exit526:                             ; preds = %bb.cl, %bb.cm
  %i.np = phi i64 [ %.pre782, %bb.cl ], [ %i.no, %bb.cm ]
  call fastcc void @RARRAY_ASET(i64 noundef %i.np, i64 noundef %i.kr, i64 noundef %.019.i507)
  %.pre783 = load ptr, ptr %i.c, align 8, !tbaa !124
  %.phi.trans.insert784 = getelementptr i8, ptr %.pre783, i64 16
  %.pre785 = load i16, ptr %.phi.trans.insert784, align 8
  br label %bb.cn

bb.cn:                                            ; preds = %arg_rest_dup.exit526, %bb.ck
  %i.nq = phi i16 [ %.pre785, %arg_rest_dup.exit526 ], [ %i.mj, %bb.ck ] ; 2 uses
  %.1353 = phi i64 [ %.019.i507, %arg_rest_dup.exit526 ], [ %.0352, %bb.ck ] ; 6 uses
  %i.nr = and i16 %i.nq, 512
  %i.ns = icmp ne i16 %i.nr, 0
  %i.nt = icmp ne i64 %.1353, 0
  %or.cond4 = and i1 %i.nt, %i.ns
  br i1 %or.cond4, label %.thread694, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nu = and i16 %i.nq, 48
  %or.cond455 = icmp eq i16 %i.nu, 0
  br i1 %or.cond455, label %.thread686.thread738, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.nv = load i32, ptr %i.au, align 8, !tbaa !752
  %.not.i527 = icmp eq i32 %i.nv, 0
  %.pre786 = load i64, ptr %i.kd, align 8, !tbaa !757 ; 2 uses
  br i1 %.not.i527, label %bb.cq, label %arg_rest_dup.exit528

bb.cq:                                            ; preds = %bb.cp
  %i.nw = call i64 @rb_ary_dup(i64 noundef %.pre786) #23 ; 2 uses
  store i64 %i.nw, ptr %i.kd, align 8, !tbaa !757
  store i32 1, ptr %i.au, align 8, !tbaa !752
  br label %arg_rest_dup.exit528

arg_rest_dup.exit528:                             ; preds = %bb.cp, %bb.cq
  %i.nx = phi i64 [ %.pre786, %bb.cp ], [ %i.nw, %bb.cq ]
  %i.ny = call i64 @rb_ary_pop(i64 noundef %i.nx) #23 ; 0 uses
  %i.nz = add i32 %i.ko, -1
  br label %.thread686.thread738

bb.cr:                                            ; preds = %bb.bg
  %i.oa = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 0, ptr %i.oa, align 8, !tbaa !757
  %i.ob = icmp slt i32 %i.dg, 1
  %i.oc = and i32 %.0653, 64
  %.not390 = icmp eq i32 %i.oc, 0
  %or.cond750 = select i1 %i.ob, i1 true, i1 %.not390
  br i1 %or.cond750, label %.thread686, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.od = zext nneg i32 %i.dg to i64
  %i.oe = getelementptr [8 x i8], ptr %4, i64 %i.od
  %i.of = getelementptr i8, ptr %i.oe, i64 -8
  %i.og = load i64, ptr %i.of, align 8, !tbaa !11 ; 9 uses
  %i.oh = icmp eq i64 %i.og, 4
  br i1 %i.oh, label %bb.dh, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.oi = icmp eq i64 %i.og, 0
  %i.oj = and i64 %i.og, 7
  %i.ok = icmp ne i64 %i.oj, 0
  %i.ol = or i1 %i.oi, %i.ok
  br i1 %i.ol, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530, label %rbimpl_RB_TYPE_P_fastpath.exit.i529

rbimpl_RB_TYPE_P_fastpath.exit.i529:              ; preds = %bb.ct
  %i.om = inttoptr i64 %i.og to ptr
  %i.on = load i64, ptr %i.om, align 8, !tbaa !77 ; 3 uses
  %i.oo = and i64 %i.on, 31
  %i.op = icmp eq i64 %i.oo, 8
  br i1 %i.op, label %bb.cu, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530

rbimpl_RB_TYPE_P_fastpath.exit.thread.i530:       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i529, %bb.ct
  %i.oq = call i64 @rb_to_hash_type(i64 noundef %i.og) #23 ; 2 uses
  %.phi.trans.insert.i531 = inttoptr i64 %i.oq to ptr
  %.pre.i532 = load i64, ptr %.phi.trans.insert.i531, align 8, !tbaa !77
  br label %bb.cw

bb.cu:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i529
  %i.or = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.os = getelementptr i8, ptr %i.or, i64 16
  %i.ot = load i16, ptr %i.os, align 8            ; 2 uses
  %i.ou = and i16 %i.ot, 2048
  %.not.i546 = icmp eq i16 %i.ou, 0
  br i1 %.not.i546, label %bb.cw, label %bb.cv, !prof !72

bb.cv:                                            ; preds = %bb.cu
  %i.ov = and i16 %i.ot, 16
  %.not21.i547 = icmp eq i16 %i.ov, 0
  %i.ow = or i32 %.0653, 2048
  %spec.select751 = select i1 %.not21.i547, i32 %i.ow, i32 %.0653
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530
  %.16 = phi i32 [ %.0653, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530 ], [ %.0653, %bb.cu ], [ %spec.select751, %bb.cv ] ; 5 uses
  %i.ox = phi i64 [ %.pre.i532, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530 ], [ %i.on, %bb.cu ], [ %i.on, %bb.cv ] ; 2 uses
  %.019.i533 = phi i64 [ %i.oq, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i530 ], [ %i.og, %bb.cu ], [ %i.og, %bb.cv ] ; 4 uses
  %i.oy = and i64 %i.ox, 32768
  %.not.i.i.i.i534 = icmp eq i64 %i.oy, 0
  br i1 %.not.i.i.i.i534, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.oz = lshr i64 %i.ox, 16
  %i.pa = and i64 %i.oz, 15
  br label %RHASH_EMPTY_P.exit.i535

bb.cy:                                            ; preds = %bb.cw
  %i.pb = add i64 %.019.i533, 24
  %i.pc = inttoptr i64 %i.pb to ptr
  %i.pd = getelementptr i8, ptr %i.pc, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i535

RHASH_EMPTY_P.exit.i535:                          ; preds = %bb.cy, %bb.cx
  %.0.i.i.i536 = phi i64 [ %i.pa, %bb.cx ], [ %i.pe, %bb.cy ]
  %i.pf = icmp eq i64 %.0.i.i.i536, 0
  %.pre791.pre = load ptr, ptr %i.c, align 8, !tbaa !124 ; 4 uses
  br i1 %i.pf, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %RHASH_EMPTY_P.exit.i535
  %i.pg = getelementptr i8, ptr %.pre791.pre, i64 16
  %i.ph = load i16, ptr %i.pg, align 8
  %i.pi = and i16 %i.ph, 32
  %.not22.i545 = icmp eq i16 %i.pi, 0
  br i1 %.not22.i545, label %bb.dh, label %bb.da

bb.da:                                            ; preds = %bb.cz, %RHASH_EMPTY_P.exit.i535
  %i.pj = and i32 %.16, 2048
  %.not23.i537 = icmp eq i32 %i.pj, 0
  br i1 %.not23.i537, label %bb.db, label %bb.dd

bb.db:                                            ; preds = %bb.da
  %i.pk = getelementptr i8, ptr %.pre791.pre, i64 16
  %i.pl = load i16, ptr %i.pk, align 8
  %i.pm = and i16 %i.pl, 544
  %or.cond.i544 = icmp eq i16 %i.pm, 0
  br i1 %or.cond.i544, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pn = or disjoint i32 %.16, 2048
  %i.po = call i64 @rb_hash_dup(i64 noundef %.019.i533) #23
  %.pre790 = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db, %bb.da
  %i.pp = phi ptr [ %.pre791.pre, %bb.db ], [ %.pre790, %bb.dc ], [ %.pre791.pre, %bb.da ]
  %.17 = phi i32 [ %.16, %bb.db ], [ %i.pn, %bb.dc ], [ %.16, %bb.da ] ; 4 uses
  %.1.i538 = phi i64 [ %.019.i533, %bb.db ], [ %i.po, %bb.dc ], [ %.019.i533, %bb.da ] ; 4 uses
  %i.pq = getelementptr i8, ptr %i.pp, i64 16
  %i.pr = load i16, ptr %i.pq, align 8            ; 2 uses
  %i.ps = and i16 %i.pr, 48
  %or.cond28.i539 = icmp eq i16 %i.ps, 0
  br i1 %or.cond28.i539, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  %i.pt = inttoptr i64 %.1.i538 to ptr
  %i.pu = load i64, ptr %i.pt, align 8, !tbaa !77 ; 2 uses
  %i.pv = and i64 %i.pu, 32768
  %.not.i.i.i29.i541 = icmp eq i64 %i.pv, 0
  br i1 %.not.i.i.i29.i541, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.pw = lshr i64 %i.pu, 16
  %i.px = and i64 %i.pw, 15
  br label %RHASH_EMPTY_P.exit31.i542

bb.dg:                                            ; preds = %bb.de
  %i.py = add i64 %.1.i538, 24
  %i.pz = inttoptr i64 %i.py to ptr
  %i.qa = getelementptr i8, ptr %i.pz, i64 16
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit31.i542

RHASH_EMPTY_P.exit31.i542:                        ; preds = %bb.dg, %bb.df
  %.0.i.i30.i543 = phi i64 [ %i.px, %bb.df ], [ %i.qb, %bb.dg ]
  %i.qc = icmp eq i64 %.0.i.i30.i543, 0
  br i1 %i.qc, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %RHASH_EMPTY_P.exit31.i542, %bb.cz, %bb.cs
  %.18 = phi i32 [ %.0653, %bb.cs ], [ %.16, %bb.cz ], [ %.17, %RHASH_EMPTY_P.exit31.i542 ]
  %i.qd = and i32 %.18, -2113
  %i.qe = load i32, ptr %i.as, align 8, !tbaa !749
  %i.qf = add i32 %i.qe, -1
  store i32 %i.qf, ptr %i.as, align 8, !tbaa !749
  %i.qg = add nsw i32 %i.dg, -1
  br label %.thread686

bb.di:                                            ; preds = %RHASH_EMPTY_P.exit31.i542, %bb.dd
  %i.qh = and i32 %.17, 2048
  %.not392 = icmp eq i32 %i.qh, 0
  %i.qi = and i16 %i.pr, 16
  %.not393 = icmp eq i16 %i.qi, 0
  %or.cond862 = and i1 %.not392, %.not393
  br i1 %or.cond862, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.qj = call i64 @rb_hash_dup(i64 noundef %.1.i538) #23
  %i.qk = or disjoint i32 %.17, 2048
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.3656 = phi i32 [ %i.qk, %bb.dj ], [ %.17, %bb.di ] ; 3 uses
  %.0 = phi i64 [ %i.qj, %bb.dj ], [ %.1.i538, %bb.di ] ; 3 uses
  %.not394 = icmp eq i64 %i.og, %.0
  br i1 %.not394, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ql = load ptr, ptr %6, align 8, !tbaa !751
  %i.qm = load i32, ptr %i.as, align 8, !tbaa !749
  %i.qn = add i32 %i.qm, -1
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr [8 x i8], ptr %i.ql, i64 %i.qo
  store i64 %.0, ptr %i.qp, align 8, !tbaa !11
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %.0348 = phi i64 [ %.0, %bb.dl ], [ %i.og, %bb.dk ] ; 2 uses
  %i.qq = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.qr = getelementptr i8, ptr %i.qq, i64 16
  %i.qs = load i16, ptr %i.qr, align 8            ; 2 uses
  %i.qt = and i16 %i.qs, 512
  %.not395 = icmp eq i16 %i.qt, 0
  br i1 %.not395, label %bb.dn, label %bb.dp

bb.dn:                                            ; preds = %bb.dm
  %i.qu = and i16 %i.qs, 48
  %or.cond456 = icmp eq i16 %i.qu, 0
  br i1 %or.cond456, label %.thread686.thread738, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.qv = load i32, ptr %i.as, align 8, !tbaa !749
  %i.qw = add i32 %i.qv, -1
  store i32 %i.qw, ptr %i.as, align 8, !tbaa !749
  %i.qx = add nsw i32 %i.dg, -1
  br label %.thread686.thread738

bb.dp:                                            ; preds = %bb.dm, %RARRAY_LENINT.exit492
  %.4657 = phi i32 [ %.3656, %bb.dm ], [ %.1654, %RARRAY_LENINT.exit492 ] ; 2 uses
  %.3347 = phi i64 [ %.0348, %bb.dm ], [ %.0344, %RARRAY_LENINT.exit492 ] ; 2 uses
  %.4340 = phi i64 [ 4, %bb.dm ], [ %.0336, %RARRAY_LENINT.exit492 ] ; 2 uses
  %.4 = phi i32 [ %i.dg, %bb.dm ], [ %i.jw, %RARRAY_LENINT.exit492 ] ; 2 uses
  %.not418 = icmp eq i64 %.3347, 0
  br i1 %.not418, label %.thread686, label %.thread694

.thread694:                                       ; preds = %bb.cn, %bb.dp
  %.4707 = phi i32 [ %.4, %bb.dp ], [ %i.ko, %bb.cn ]
  %.4340706 = phi i64 [ %.4340, %bb.dp ], [ 4, %bb.cn ]
  %.3347705 = phi i64 [ %.3347, %bb.dp ], [ %.1353, %bb.cn ]
  %.1350704 = phi i64 [ 0, %bb.dp ], [ %i.kw, %bb.cn ]
  %.3355703 = phi i64 [ 0, %bb.dp ], [ %.1353, %bb.cn ]
  %.4657702 = phi i32 [ %.4657, %bb.dp ], [ 2112, %bb.cn ]
  %i.qy = inttoptr i64 %.3347705 to ptr           ; 2 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !77
  %i.ra = or i64 %i.qz, 8192
  store i64 %i.ra, ptr %i.qy, align 8, !tbaa !77
  br label %.thread686

.thread686:                                       ; preds = %bb.dh, %RARRAY_LENINT.exit497, %bb.cr, %bb.dp, %.thread694
  %.5658 = phi i32 [ %.4657, %bb.dp ], [ %.4657702, %.thread694 ], [ %.0653, %bb.cr ], [ %i.qd, %bb.dh ], [ %.0653, %RARRAY_LENINT.exit497 ] ; 2 uses
  %.4356 = phi i64 [ 0, %bb.dp ], [ %.3355703, %.thread694 ], [ 0, %bb.cr ], [ 0, %bb.dh ], [ 0, %RARRAY_LENINT.exit497 ] ; 2 uses
  %.2351 = phi i64 [ 0, %bb.dp ], [ %.1350704, %.thread694 ], [ 0, %bb.cr ], [ 0, %bb.dh ], [ 0, %RARRAY_LENINT.exit497 ] ; 2 uses
  %.5341 = phi i64 [ %.4340, %bb.dp ], [ %.4340706, %.thread694 ], [ 4, %bb.cr ], [ 4, %bb.dh ], [ 4, %RARRAY_LENINT.exit497 ] ; 2 uses
  %.5 = phi i32 [ %.4, %bb.dp ], [ %.4707, %.thread694 ], [ %i.dg, %bb.cr ], [ %i.qg, %bb.dh ], [ %i.ko, %RARRAY_LENINT.exit497 ] ; 2 uses
  %.not419 = icmp eq i32 %.5658, 0
  br i1 %.not419, label %.thread686.thread, label %.thread686.thread738

.thread686.thread738:                             ; preds = %.thread686.thread849, %bb.dn, %bb.do, %bb.ci, %bb.co, %arg_rest_dup.exit528, %.thread686
  %.5749 = phi i32 [ %.5, %.thread686 ], [ %i.ko, %bb.co ], [ %i.ni, %bb.ci ], [ %i.nz, %arg_rest_dup.exit528 ], [ %i.dg, %bb.dn ], [ %i.qx, %bb.do ], [ %i.jj, %.thread686.thread849 ]
  %.5341748 = phi i64 [ %.5341, %.thread686 ], [ 4, %bb.co ], [ %.019.i507, %bb.ci ], [ %.1353, %arg_rest_dup.exit528 ], [ 4, %bb.dn ], [ %.0348, %bb.do ], [ 4, %.thread686.thread849 ]
  %.2351747 = phi i64 [ %.2351, %.thread686 ], [ %i.kw, %bb.co ], [ %i.kw, %bb.ci ], [ %i.kw, %arg_rest_dup.exit528 ], [ 0, %bb.dn ], [ 0, %bb.do ], [ 0, %.thread686.thread849 ]
  %.4356746 = phi i64 [ %.4356, %.thread686 ], [ %.1353, %bb.co ], [ %.0352, %bb.ci ], [ %.1353, %arg_rest_dup.exit528 ], [ 0, %bb.dn ], [ 0, %bb.do ], [ 0, %.thread686.thread849 ]
  %.5658745 = phi i32 [ %.5658, %.thread686 ], [ 2112, %bb.co ], [ 2112, %bb.ci ], [ 2112, %arg_rest_dup.exit528 ], [ %.3656, %bb.dn ], [ %.3656, %bb.do ], [ %.11, %.thread686.thread849 ]
  %i.rb = load ptr, ptr %i.c, align 8, !tbaa !124
  %i.rc = getelementptr i8, ptr %i.rb, i64 16
  %i.rd = load i16, ptr %i.rc, align 8
  %i.re = and i16 %i.rd, 256
  %.not420 = icmp eq i16 %i.re, 0
  br i1 %.not420, label %.thread686.thread, label %bb.dq

bb.dq:                                            ; preds = %.thread686.thread738
  %i.rf = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.rf, ptr noundef nonnull @.str.156) #42
  unreachable

.thread686.thread:                                ; preds = %RARRAY_AREF.exit, %bb.cj, %bb.cf, %rbimpl_RB_TYPE_P_fastpath.exit, %.thread686.thread738, %.thread686
  %.5732 = phi i32 [ %.5, %.thread686 ], [ %.5749, %.thread686.thread738 ], [ %i.ko, %RARRAY_AREF.exit ], [ %i.nc, %bb.cf ], [ %i.ko, %bb.cj ], [ %i.ko, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 6 uses
  %.5341731 = phi i64 [ %.5341, %.thread686 ], [ %.5341748, %.thread686.thread738 ], [ 4, %RARRAY_AREF.exit ], [ 4, %bb.cf ], [ 4, %bb.cj ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 10 uses
  %.2351730 = phi i64 [ %.2351, %.thread686 ], [ %.2351747, %.thread686.thread738 ], [ 0, %RARRAY_AREF.exit ], [ %i.kw, %bb.cf ], [ %i.kw, %bb.cj ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 3 uses
  %.4356729 = phi i64 [ %.4356, %.thread686 ], [ %.4356746, %.thread686.thread738 ], [ %i.kw, %RARRAY_AREF.exit ], [ %.0352, %bb.cf ], [ %.0352, %bb.cj ], [ %i.kw, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 5 uses
  %.5658728 = phi i32 [ 0, %.thread686 ], [ %.5658745, %.thread686.thread738 ], [ 0, %RARRAY_AREF.exit ], [ 0, %bb.cf ], [ 0, %bb.cj ], [ 0, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 2 uses
  %cond.not = icmp eq i32 %5, 0                   ; 2 uses
  br i1 %cond.not, label %.thread710, label %bb.dr

bb.dr:                                            ; preds = %.thread686.thread
  %i.rg = icmp ne i32 %.5732, 1
  %or.cond6.not422 = select i1 %i.rg, i1 true, i1 %.not
  %i.rh = icmp ne i64 %.2351730, 0
  %or.cond8 = or i1 %or.cond6.not422, %i.rh
  br i1 %or.cond8, label %args_check_block_arg0.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.ri = icmp sgt i32 %i.j, 0
  %.pre799 = load ptr, ptr %i.c, align 8, !tbaa !124 ; 2 uses
  br i1 %i.ri, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.rj = getelementptr i8, ptr %.pre799, i64 28
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !714
  %i.rl = icmp sgt i32 %i.rk, 1
  br i1 %i.rl, label %bb.du, label %args_check_block_arg0.exit.thread

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.rm = getelementptr i8, ptr %.pre799, i64 16
  %i.rn = load i16, ptr %i.rm, align 8            ; 3 uses
  %i.ro = and i16 %i.rn, 128
  %.not423 = icmp eq i16 %i.ro, 0
  br i1 %.not423, label %bb.dv, label %args_check_block_arg0.exit.thread

bb.dv:                                            ; preds = %bb.du
  %i.rp = and i16 %i.rn, 16
  %.not424 = icmp eq i16 %i.rp, 0
  br i1 %.not424, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.rq = and i16 %i.rn, 32
  %i.rr = icmp ne i16 %i.rq, 0
  %i.rs = icmp eq i32 %i.q, 1
  %or.cond10 = select i1 %i.rr, i1 %i.rs, i1 false
  br i1 %or.cond10, label %args_check_block_arg0.exit.thread, label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %.old9 = icmp eq i32 %i.q, 1
  br i1 %.old9, label %args_check_block_arg0.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %i.rt = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.ru = load i64, ptr %i.rt, align 8, !tbaa !757 ; 2 uses
  %.not.i549 = icmp eq i64 %i.ru, 0
  br i1 %.not.i549, label %bb.eb, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.rv = inttoptr i64 %i.ru to ptr               ; 4 uses
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !77 ; 2 uses
  %i.rx = and i64 %i.rw, 8192
  %.not.i.i550 = icmp eq i64 %i.rx, 0
  br i1 %.not.i.i550, label %rb_array_len.exit.i553, label %rb_array_len.exit.thread.i

rb_array_len.exit.i553:                           ; preds = %bb.dz
  %i.ry = getelementptr i8, ptr %i.rv, i64 16
  %i.rz = load i64, ptr %i.ry, align 8, !tbaa !27
  %i.sa = icmp eq i64 %i.rz, 1
  br i1 %i.sa, label %bb.ea, label %bb.eb

rb_array_len.exit.thread.i:                       ; preds = %bb.dz
  %i.sb = and i64 %i.rw, 4161536
  %i.sc = icmp eq i64 %i.sb, 32768
  br i1 %i.sc, label %.thread.i, label %bb.eb

.thread.i:                                        ; preds = %rb_array_len.exit.thread.i
  %i.sd = getelementptr i8, ptr %i.rv, i64 16
  br label %RARRAY_AREF.exit.i

bb.ea:                                            ; preds = %rb_array_len.exit.i553
  %i.se = getelementptr i8, ptr %i.rv, i64 32
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !27
  br label %RARRAY_AREF.exit.i

RARRAY_AREF.exit.i:                               ; preds = %bb.ea, %.thread.i
  %.0.i.i.i552 = phi ptr [ %i.sd, %.thread.i ], [ %i.sf, %bb.ea ]
end_hunk_8
begin_hunk_9_@setup_parameters_complex:bb.a
  store i64 0, ptr %i.aej, align 8, !tbaa !757
  br label %args_setup_rest_parameter.exit

bb.gb:                                            ; preds = %.critedge
  %i.afa = call i64 @rb_ary_new() #23
  br label %args_setup_rest_parameter.exit

args_setup_rest_parameter.exit:                   ; preds = %bb.ga, %bb.gb
  %.0.i.i601 = phi i64 [ %i.aez, %bb.ga ], [ %i.afa, %bb.gb ]
  store i64 %.0.i.i601, ptr %i.aev, align 8, !tbaa !11
  %i.afb = load ptr, ptr %i.c, align 8, !tbaa !124 ; 5 uses
  %i.afc = getelementptr i8, ptr %i.afb, i64 32
  %i.afd = load i32, ptr %i.afc, align 8, !tbaa !775
  %i.afe = sext i32 %i.afd to i64
  %i.aff = getelementptr [8 x i8], ptr %4, i64 %i.afe
  %i.afg = load i64, ptr %i.aff, align 8, !tbaa !11 ; 4 uses
  %i.afh = inttoptr i64 %i.afg to ptr             ; 4 uses
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !77 ; 2 uses
  %i.afj = and i64 %i.afi, 8192
  %.not.i602 = icmp eq i64 %i.afj, 0              ; 2 uses
  br i1 %.not.i602, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %args_setup_rest_parameter.exit
  %i.afk = lshr i64 %i.afi, 15
  %i.afl = and i64 %i.afk, 127
  br label %rb_array_len.exit

bb.gd:                                            ; preds = %args_setup_rest_parameter.exit
  %i.afm = getelementptr i8, ptr %i.afh, i64 16
  %i.afn = load i64, ptr %i.afm, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.gc, %bb.gd
  %.0.i603 = phi i64 [ %i.afl, %bb.gc ], [ %i.afn, %bb.gd ]
  %i.afo = add i64 %.0.i603, -1                   ; 2 uses
  %.not436 = icmp eq i64 %.2351730, 0
  br i1 %.not436, label %bb.gk, label %bb.ge

bb.ge:                                            ; preds = %rb_array_len.exit
  %i.afp = getelementptr i8, ptr %i.afb, i64 16
  %i.afq = load i16, ptr %i.afp, align 8
  %i.afr = and i16 %i.afq, 560
  %or.cond463 = icmp eq i16 %i.afr, 0
  br i1 %or.cond463, label %bb.gf, label %bb.gk

bb.gf:                                            ; preds = %bb.ge
  br i1 %.not.i602, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.afs = getelementptr i8, ptr %i.afh, i64 16
  br label %RARRAY_AREF.exit607

bb.gh:                                            ; preds = %bb.gf
  %i.aft = getelementptr i8, ptr %i.afh, i64 32
  %i.afu = load ptr, ptr %i.aft, align 8, !tbaa !27
  br label %RARRAY_AREF.exit607

RARRAY_AREF.exit607:                              ; preds = %bb.gg, %bb.gh
  %.0.i.i606 = phi ptr [ %i.afs, %bb.gg ], [ %i.afu, %bb.gh ]
  %i.afv = getelementptr [8 x i8], ptr %.0.i.i606, i64 %i.afo
  %i.afw = load i64, ptr %i.afv, align 8, !tbaa !11
  %i.afx = icmp eq i64 %i.afw, %.2351730
  br i1 %i.afx, label %bb.gi, label %bb.gk

bb.gi:                                            ; preds = %RARRAY_AREF.exit607
  %i.afy = inttoptr i64 %.4356729 to ptr          ; 2 uses
  %i.afz = load i64, ptr %i.afy, align 8, !tbaa !708
  %i.aga = and i64 %i.afz, -8193
  store i64 %i.aga, ptr %i.afy, align 8, !tbaa !708
  %i.agb = call ptr @rb_ary_ptr_use_start(i64 noundef %i.afg) #23
  %i.agc = getelementptr [8 x i8], ptr %i.agb, i64 %i.afo
  store i64 %.4356729, ptr %i.agc, align 8, !tbaa !11
  %i.agd = icmp eq i64 %.4356729, 0
  %i.age = and i64 %.4356729, 7
  %i.agf = icmp ne i64 %i.age, 0
  %i.agg = or i1 %i.agd, %i.agf
  br i1 %i.agg, label %RARRAY_ASET.exit, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  call void @rb_gc_writebarrier(i64 noundef %i.afg, i64 noundef %.4356729) #23
  br label %RARRAY_ASET.exit

RARRAY_ASET.exit:                                 ; preds = %bb.gi, %bb.gj
  call void @rb_ary_ptr_use_end(i64 noundef %i.afg) #23
  %.pre804 = load ptr, ptr %i.c, align 8, !tbaa !124
  br label %bb.gk

bb.gk:                                            ; preds = %rb_array_len.exit, %bb.ge, %RARRAY_AREF.exit607, %RARRAY_ASET.exit, %bb.fz, %bb.fx
  %i.agh = phi ptr [ %i.afb, %rb_array_len.exit ], [ %i.afb, %bb.ge ], [ %i.afb, %RARRAY_AREF.exit607 ], [ %.pre804, %RARRAY_ASET.exit ], [ %i.abk, %bb.fz ], [ %i.abk, %bb.fx ] ; 3 uses
  %i.agi = getelementptr i8, ptr %i.agh, i64 16
  %i.agj = load i16, ptr %i.agi, align 8          ; 4 uses
  %i.agk = and i16 %i.agj, 16
  %.not440 = icmp eq i16 %i.agk, 0
  br i1 %.not440, label %bb.gr, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  %i.agl = getelementptr i8, ptr %i.agh, i64 56
  %i.agm = load ptr, ptr %i.agl, align 8, !tbaa !720 ; 2 uses
  %i.agn = getelementptr i8, ptr %i.agm, i64 8
  %i.ago = load i32, ptr %i.agn, align 8, !tbaa !721
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr [8 x i8], ptr %4, i64 %i.agp
  %i.agr = load i32, ptr %i.agm, align 8, !tbaa !723
  %i.ags = sext i32 %i.agr to i64
  %i.agt = sub nsw i64 0, %i.ags
  %i.agu = getelementptr [8 x i8], ptr %i.agq, i64 %i.agt ; 3 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !754 ; 2 uses
  %.not442 = icmp eq ptr %i.agw, null
  br i1 %.not442, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.agx = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.agy = load ptr, ptr %i.agx, align 8, !tbaa !753 ; 2 uses
  %i.agz = load i32, ptr %i.agy, align 8, !tbaa !7
  %i.aha = getelementptr i8, ptr %i.agy, i64 8
  call fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef nonnull %i.agw, i32 noundef %i.agz, ptr noundef %i.aha, ptr noundef %i.agu)
  br label %bb.hc

bb.gn:                                            ; preds = %bb.gl
  %i.ahb = icmp eq i64 %.5341731, 4
  br i1 %i.ahb, label %bb.gq, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.ahc = and i16 %i.agj, 32
  %.not443 = icmp ne i16 %i.ahc, 0                ; 2 uses
  %i.ahd = and i32 %.5658728, 2048
  %.not.i608 = icmp eq i32 %i.ahd, 0
  %or.cond752 = select i1 %.not443, i1 %.not.i608, i1 false
  br i1 %or.cond752, label %bb.gp, label %check_kwrestarg.exit610

bb.gp:                                            ; preds = %bb.go
  %i.ahe = call i64 @rb_hash_dup(i64 noundef %.5341731) #23
  br label %check_kwrestarg.exit610

check_kwrestarg.exit610:                          ; preds = %bb.gp, %bb.go
  %.6342 = phi i64 [ %.5341731, %bb.go ], [ %i.ahe, %bb.gp ]
  call fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.af, i64 noundef %.6342, ptr noundef %i.agu, i1 noundef zeroext %.not443)
  br label %bb.hc

bb.gq:                                            ; preds = %bb.gn
  call fastcc void @args_setup_kw_parameters(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %i.agu)
  br label %bb.hc

bb.gr:                                            ; preds = %bb.gk
  %i.ahf = and i16 %i.agj, 32
  %.not441 = icmp eq i16 %i.ahf, 0
  br i1 %.not441, label %bb.gx, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ahg = getelementptr i8, ptr %i.agh, i64 56
  %i.ahh = load ptr, ptr %i.ahg, align 8, !tbaa !720
  %i.ahi = getelementptr i8, ptr %i.ahh, i64 12
  %i.ahj = load i32, ptr %i.ahi, align 4, !tbaa !776
  %i.ahk = sext i32 %i.ahj to i64
  %i.ahl = getelementptr [8 x i8], ptr %4, i64 %i.ahk
  %i.ahm = icmp eq i64 %.5341731, 4
  br i1 %i.ahm, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  %i.ahn = and i16 %i.agj, 2048
  %.not753 = icmp eq i16 %i.ahn, 0
  br i1 %.not753, label %bb.gu, label %args_setup_kw_rest_parameter.exit

bb.gu:                                            ; preds = %bb.gt
  %i.aho = call i64 @rb_hash_new() #23
  br label %args_setup_kw_rest_parameter.exit

bb.gv:                                            ; preds = %bb.gs
  %i.ahp = and i32 %.5658728, 2048
  %.not.i611 = icmp eq i32 %i.ahp, 0
  br i1 %.not.i611, label %bb.gw, label %args_setup_kw_rest_parameter.exit

bb.gw:                                            ; preds = %bb.gv
  %i.ahq = call i64 @rb_hash_dup(i64 noundef %.5341731) #23
  br label %args_setup_kw_rest_parameter.exit

args_setup_kw_rest_parameter.exit:                ; preds = %bb.gt, %bb.gu, %bb.gv, %bb.gw
  %.0.i612 = phi i64 [ 4, %bb.gt ], [ %i.aho, %bb.gu ], [ %.5341731, %bb.gv ], [ %i.ahq, %bb.gw ]
  store i64 %.0.i612, ptr %i.ahl, align 8, !tbaa !11
  br label %bb.hc

bb.gx:                                            ; preds = %bb.gr
  %i.ahr = icmp eq i64 %.5341731, 4
  br i1 %i.ahr, label %bb.hc, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.ahs = inttoptr i64 %.5341731 to ptr
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !77 ; 2 uses
  %i.ahu = and i64 %i.aht, 32768
  %.not.i.i613 = icmp eq i64 %i.ahu, 0
  br i1 %.not.i.i613, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  %i.ahv = lshr i64 %i.aht, 16
  %i.ahw = and i64 %i.ahv, 15
  br label %RHASH_SIZE.exit

bb.ha:                                            ; preds = %bb.gy
  %i.ahx = add i64 %.5341731, 24
  %i.ahy = inttoptr i64 %i.ahx to ptr
  %i.ahz = getelementptr i8, ptr %i.ahy, i64 16
  %i.aia = load i64, ptr %i.ahz, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.gz, %bb.ha
  %.0.i614 = phi i64 [ %i.ahw, %bb.gz ], [ %i.aia, %bb.ha ]
  %i.aib = icmp ne i64 %.0.i614, 0
  %or.cond16 = and i1 %cond.not, %i.aib
  br i1 %or.cond16, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %RHASH_SIZE.exit
  %i.aic = call i64 @rb_hash_keys(i64 noundef %.5341731) #23
  call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.af, ptr noundef nonnull @.str.155, i64 noundef %i.aic) #58
  unreachable

bb.hc:                                            ; preds = %bb.gm, %bb.gq, %check_kwrestarg.exit610, %args_setup_kw_rest_parameter.exit, %RHASH_SIZE.exit, %bb.gx
  %i.aid = load ptr, ptr %i.c, align 8, !tbaa !124 ; 3 uses
  %i.aie = getelementptr i8, ptr %i.aid, i64 16
  %i.aif = load i16, ptr %i.aie, align 8
  %i.aig = and i16 %i.aif, 64
  %.not444 = icmp eq i16 %i.aig, 0
  br i1 %.not444, label %bb.hi, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.aih = getelementptr i8, ptr %i.aid, i64 176
  %i.aii = load ptr, ptr %i.aih, align 8, !tbaa !700
  %i.aij = icmp eq ptr %i.aii, %1
  br i1 %i.aij, label %bb.hi, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.aik = getelementptr i8, ptr %i.aid, i64 44
  %i.ail = load i32, ptr %i.aik, align 4, !tbaa !777
  %i.aim = sext i32 %i.ail to i64
  %i.ain = getelementptr [8 x i8], ptr %4, i64 %i.aim
  %i.aio = getelementptr i8, ptr %2, i64 16
  %.val467 = load i64, ptr %i.aio, align 8, !tbaa !228 ; 9 uses
  %i.aip = icmp eq i64 %.val467, 0
  br i1 %i.aip, label %args_setup_block_parameter.exit, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aiq = and i64 %.val467, 3
  switch i64 %i.aiq, label %bb.hg [
    i64 1, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
    i64 3, label %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i
  ]

bb.hg:                                            ; preds = %bb.hf
  %i.air = and i64 %.val467, 255
  %i.ais = icmp eq i64 %i.air, 12
  br i1 %i.ais, label %vm_block_handler_type.exit.i.i, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  %i.ait = and i64 %.val467, 7
  %.not.i.i616 = icmp eq i64 %i.ait, 0
  br i1 %.not.i.i616, label %RB_SYMBOL_P.exit.i.i.i, label %args_setup_block_parameter.exit

RB_SYMBOL_P.exit.i.i.i:                           ; preds = %bb.hh
  %i.aiu = inttoptr i64 %.val467 to ptr
  %i.aiv = load i64, ptr %i.aiu, align 8, !tbaa !77
  %.fr10.i.i.i = freeze i64 %i.aiv
  %i.aiw = and i64 %.fr10.i.i.i, 31
  %i.aix = icmp eq i64 %i.aiw, 20
  br i1 %i.aix, label %vm_block_handler_type.exit.i.i, label %args_setup_block_parameter.exit

RB_SYMBOL_P.exit.thread7.fold.split.i.i.i:        ; preds = %bb.hf, %bb.hf
  %i.aiy = and i64 %.val467, -4
  %i.aiz = inttoptr i64 %i.aiy to ptr
  %i.aja = load i64, ptr @rb_cProc, align 8, !tbaa !11
  %i.ajb = call i64 @rb_vm_make_proc_lambda(ptr noundef readnone %0, ptr noundef %i.aiz, i64 noundef %i.aja, i8 noundef signext 0), !inline_history !78
  br label %args_setup_block_parameter.exit

vm_block_handler_type.exit.i.i:                   ; preds = %RB_SYMBOL_P.exit.i.i.i, %bb.hg
  %i.ajc = call i64 @rb_sym_to_proc(i64 noundef %.val467) #23
  br label %args_setup_block_parameter.exit

args_setup_block_parameter.exit:                  ; preds = %bb.he, %bb.hh, %RB_SYMBOL_P.exit.i.i.i, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i, %vm_block_handler_type.exit.i.i
  %.0.i.i615 = phi i64 [ 4, %bb.he ], [ %i.ajb, %RB_SYMBOL_P.exit.thread7.fold.split.i.i.i ], [ %i.ajc, %vm_block_handler_type.exit.i.i ], [ %.val467, %bb.hh ], [ %.val467, %RB_SYMBOL_P.exit.i.i.i ]
  store i64 %.0.i.i615, ptr %i.ain, align 8, !tbaa !11
  br label %bb.hi

bb.hi:                                            ; preds = %args_setup_block_parameter.exit, %bb.hd, %bb.hc
  %i.ajd = load ptr, ptr %i.y, align 8, !tbaa !70
  %i.aje = getelementptr i8, ptr %i.ajd, i64 8
  store ptr %i.ab, ptr %i.aje, align 8, !tbaa !73
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %.0335
}

declare zeroext i1 @rb_warning_category_enabled_p(i32 noundef) local_unnamed_addr #4

declare i32 @rb_set_table_lookup(ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_method_entry_location(ptr noundef) local_unnamed_addr #4

declare i64 @rb_gen_method_name(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @raise_argument_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #6 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 7 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73   ; 5 uses
  %i.e = getelementptr i8, ptr %i.b, i64 -56      ; 3 uses
  %i.f = getelementptr i8, ptr %i.d, i64 56
  %.not.i = icmp ugt ptr %i.e, %i.f
  br i1 %.not.i, label %vm_push_frame.exit, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit:                               ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !147
  %i.k = ptrtoint ptr %2 to i64
  %i.l = getelementptr i8, ptr %i.d, i64 8
  store i64 %i.k, ptr %i.d, align 8, !tbaa !11
  %i.m = getelementptr i8, ptr %i.d, i64 16       ; 2 uses
  store i64 0, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr i8, ptr %i.d, i64 24
  store i64 2040070147, ptr %i.m, align 8, !tbaa !11
  store ptr %i.j, ptr %i.e, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -48
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -40
  store ptr %1, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -32
  store i64 4, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -24
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i = getelementptr i8, ptr %i.b, i64 -16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.e, ptr %i.a, align 8, !tbaa !70
  %i.o = tail call i64 @rb_ec_backtrace_object(ptr noundef nonnull %0) #23
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load atomic volatile i32, ptr %i.q monotonic, align 8
  %i.s = getelementptr i8, ptr %0, i64 36
  %i.t = load i32, ptr %i.s, align 4, !tbaa !71
  %i.u = xor i32 %i.t, -1
  %i.v = and i32 %i.r, %i.u
  %.not.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i, label %rb_vm_pop_frame.exit, label %bb.d, !prof !72

bb.d:                                             ; preds = %vm_push_frame.exit
  %i.w = getelementptr i8, ptr %0, i64 48
  %.val.i.i.i = load ptr, ptr %i.w, align 8, !tbaa !30
  %i.x = tail call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %vm_push_frame.exit, %bb.d
  %i.y = getelementptr i8, ptr %i.p, i64 56
  store ptr %i.y, ptr %i.a, align 8, !tbaa !70
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.z = tail call i64 @rb_ec_backtrace_object(ptr noundef %0) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %rb_vm_pop_frame.exit
  %.0 = phi i64 [ %i.o, %rb_vm_pop_frame.exit ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = tail call i64 @rb_ivar_set(i64 noundef %3, i64 noundef 3457, i64 noundef %.0) #23 ; 0 uses
  %i.ab = tail call i64 @rb_exc_set_backtrace(i64 noundef %3, i64 noundef %.0) #23 ; 0 uses
  tail call void @rb_exc_raise(i64 noundef %3) #42
  unreachable
}

declare i64 @rb_exc_set_backtrace(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @builtin_invoker0(ptr noundef %0, i64 noundef %1, ptr nofree readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) #2 {
bb.a:
  %i.a = tail call i64 %3(ptr noundef %0, i64 noundef %1) #23
  ret i64 %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_tailcall_0start(ptr nofree noundef captures(address) %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #2 {
bb.a:
  tail call fastcc void @vm_call_iseq_setup_tailcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 0)
  ret i64 36
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @vm_call_iseq_setup_normal_0start(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
end_hunk_9
begin_hunk_10_@flatten_rest_args:bb.a

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.q = trunc nsw i64 %.0.i.i to i32
  %i.r = add i32 %i.q, -1                         ; 5 uses
  %i.s = add i32 %i.r, %i.o
  store i32 %i.s, ptr %i.n, align 8, !tbaa !749
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = shl nsw i64 %.0.i.i, 3
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 56
  %.not22 = icmp ugt ptr %i.u, %i.z
  br i1 %.not22, label %.preheader, label %bb.f, !prof !72

.preheader:                                       ; preds = %bb.e
  %i.aa = icmp sgt i32 %i.r, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.r, 16
  br i1 %min.iters.check, label %.lr.ph.preheader33, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.ab = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.ac = trunc nsw i64 %i.ab to i32
  %i.ad = add i32 %i.o, %i.ac
  %i.ae = icmp slt i32 %i.ad, %i.o
  %i.af = icmp ugt i64 %i.ab, 4294967295
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.preheader33, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ah = sext i32 %i.o to i64
  %i.ai = shl nsw i64 %i.ah, 3
  %i.aj = add i64 %i.ai, %i.a
  %i.ak = sub i64 %i.aj, %.0.i2430
  %diff.check = icmp ult i64 %i.ak, 32
  br i1 %diff.check, label %.lr.ph.preheader33, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 4 uses
  %i.al = trunc nuw nsw i64 %n.vec to i32
  %i.am = add i32 %i.o, %i.al
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = trunc i64 %index to i32
  %i.ao = add i32 %i.o, %i.an
  %i.ap = getelementptr [8 x i8], ptr %.0.i24, i64 %index ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 16
  %wide.load = load <2 x i64>, ptr %i.ap, align 8, !tbaa !11
  %wide.load31 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !11
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr [8 x i8], ptr %2, i64 %i.ar ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  store <2 x i64> %wide.load, ptr %i.as, align 8, !tbaa !11
  store <2 x i64> %wide.load31, ptr %i.at, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !786

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.02026.ph = phi i32 [ %i.o, %vector.memcheck ], [ %i.o, %vector.scevcheck ], [ %i.o, %.lr.ph.preheader ], [ %i.am, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader33, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader33 ] ; 2 uses
  %.02026.prol = phi i32 [ %i.az, %.lr.ph.prol ], [ %.02026.ph, %.lr.ph.preheader33 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader33 ]
  %i.av = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv.prol
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = sext i32 %.02026.prol to i64
  %i.ay = getelementptr [8 x i8], ptr %2, i64 %i.ax
  store i64 %i.aw, ptr %i.ay, align 8, !tbaa !11
  %i.az = add i32 %.02026.prol, 1                 ; 2 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !787

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader33
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader33 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.02026.unr = phi i32 [ %.02026.ph, %.lr.ph.preheader33 ], [ %i.az, %.lr.ph.prol ]
  %i.ba = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bb = icmp ugt i64 %i.ba, -4
  br i1 %i.bb, label %.loopexit, label %.lr.ph

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.02026 = phi i32 [ %i.by, %.lr.ph ], [ %.02026.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.bc = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !11
  %i.be = sext i32 %.02026 to i64
  %i.bf = getelementptr [8 x i8], ptr %2, i64 %i.be
  store i64 %i.bd, ptr %i.bf, align 8, !tbaa !11
  %i.bg = add i32 %.02026, 1
  %i.bh = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = sext i32 %i.bg to i64
  %i.bl = getelementptr [8 x i8], ptr %2, i64 %i.bk
  store i64 %i.bj, ptr %i.bl, align 8, !tbaa !11
  %i.bm = add i32 %.02026, 2
  %i.bn = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !11
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr [8 x i8], ptr %2, i64 %i.bq
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !11
  %i.bs = add i32 %.02026, 3
  %i.bt = getelementptr [8 x i8], ptr %.0.i24, i64 %indvars.iv
  %i.bu = getelementptr i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = sext i32 %i.bs to i64
  %i.bx = getelementptr [8 x i8], ptr %2, i64 %i.bw
  store i64 %i.bv, ptr %i.bx, align 8, !tbaa !11
  %i.by = add i32 %.02026, 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph, !llvm.loop !788

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %.preheader, %RARRAY_LENINT.exit
  store i64 0, ptr %i.b, align 8, !tbaa !757
  %i.bz = load i32, ptr %3, align 4, !tbaa !7
  %i.ca = and i32 %i.bz, -2
  store i32 %i.ca, ptr %3, align 4, !tbaa !7
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @RARRAY_ASET(i64 noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #11 {
bb.a:
  %i.a = tail call ptr @rb_ary_ptr_use_start(i64 noundef %0) #23
  %i.b = getelementptr [8 x i8], ptr %i.a, i64 %1
  store i64 %2, ptr %i.b, align 8, !tbaa !11
  %i.c = icmp eq i64 %2, 0
  %i.d = and i64 %2, 7
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e
  br i1 %i.f, label %rb_obj_write.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %2) #23
  br label %rb_obj_write.exit

rb_obj_write.exit:                                ; preds = %bb.a, %bb.b
  tail call void @rb_ary_ptr_use_end(i64 noundef %0) #23
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr nofree noundef writeonly captures(none) %4, i1 noundef zeroext %5) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !720  ; 4 uses
  %i.e = getelementptr i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !726  ; 2 uses
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !725  ; 3 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !723  ; 4 uses
  %i.j = getelementptr i8, ptr %i.d, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !731
  %i.l = inttoptr i64 %3 to ptr                   ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77   ; 2 uses
  %i.n = and i64 %i.m, 32768
  %.not.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = lshr i64 %i.m, 16
  %i.p = and i64 %i.o, 15
  br label %RHASH_SIZE.exit

bb.c:                                             ; preds = %bb.a
  %i.q = add i64 %3, 24
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.p, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.u = icmp sgt i32 %i.h, 0
  br i1 %i.u, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %RHASH_SIZE.exit
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %.0128 = phi i64 [ 0, %.lr.ph.preheader ], [ %.2, %bb.k ] ; 3 uses
  %.0111126 = phi i64 [ %.0.i, %.lr.ph.preheader ], [ %.1112, %bb.k ] ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.w = load i64, ptr %i.v, align 8, !tbaa !11
  %i.x = tail call i64 @rb_id2sym(i64 noundef %i.w) #23 ; 3 uses
  br i1 %5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.y = tail call i64 @rb_hash_delete_entry(i64 noundef %3, i64 noundef %i.x) #23
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.z = tail call i64 @rb_hash_lookup2(i64 noundef %3, i64 noundef %i.x, i64 noundef 36) #23
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0108 = phi i64 [ %i.y, %bb.d ], [ %i.z, %bb.e ] ; 2 uses
  %i.aa = icmp eq i64 %.0108, 36
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add i64 %.0111126, -1
  %i.ac = getelementptr [8 x i8], ptr %4, i64 %indvars.iv
  store i64 %.0108, ptr %i.ac, align 8, !tbaa !11
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %.not124 = icmp eq i64 %.0128, 0
  br i1 %.not124, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ad = tail call i64 @rb_ary_hidden_new(i64 noundef 1) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1 = phi i64 [ %.0128, %bb.h ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ae = tail call i64 @rb_ary_push(i64 noundef %.1, i64 noundef %i.x) #23 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.1112 = phi i64 [ %.0111126, %bb.j ], [ %i.ab, %bb.g ] ; 2 uses
  %.2 = phi i64 [ %.1, %bb.j ], [ %.0128, %bb.g ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !789

._crit_edge:                                      ; preds = %bb.k
  %.not = icmp eq i64 %.2, 0
  br i1 %.not, label %.preheader, label %bb.l

.preheader:                                       ; preds = %RHASH_SIZE.exit, %._crit_edge
  %.0105.lcssa159 = phi i32 [ %i.h, %._crit_edge ], [ 0, %RHASH_SIZE.exit ] ; 3 uses
  %.0111.lcssa158 = phi i64 [ %.1112, %._crit_edge ], [ %.0.i, %RHASH_SIZE.exit ] ; 2 uses
  %i.af = icmp slt i32 %.0105.lcssa159, %i.i
  br i1 %i.af, label %.lr.ph137.preheader, label %._crit_edge138

.lr.ph137.preheader:                              ; preds = %.preheader
  %i.ag = zext nneg i32 %.0105.lcssa159 to i64
  %i.ah = sub nsw i32 %i.i, %.0105.lcssa159
  br label %.lr.ph137

bb.l:                                             ; preds = %._crit_edge
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.154, i64 noundef %.2) #58
  unreachable

.lr.ph137:                                        ; preds = %bb.z, %.lr.ph137.preheader
  %indvars.iv147 = phi i64 [ %i.ag, %.lr.ph137.preheader ], [ %indvars.iv.next148, %bb.z ] ; 5 uses
  %.0107135 = phi i32 [ 0, %.lr.ph137.preheader ], [ %i.bj, %bb.z ] ; 3 uses
  %.0109134 = phi i32 [ 0, %.lr.ph137.preheader ], [ %.1110, %bb.z ] ; 5 uses
  %.2113133 = phi i64 [ %.0111.lcssa158, %.lr.ph137.preheader ], [ %.3, %bb.z ] ; 4 uses
  %.0114132 = phi i64 [ 4, %.lr.ph137.preheader ], [ %.2116, %bb.z ] ; 5 uses
  %i.ai = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv147
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = tail call i64 @rb_id2sym(i64 noundef %i.aj) #23 ; 2 uses
  br i1 %5, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph137
  %i.al = tail call i64 @rb_hash_delete_entry(i64 noundef %3, i64 noundef %i.ak) #23
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph137
  %i.am = tail call i64 @rb_hash_lookup2(i64 noundef %3, i64 noundef %i.ak, i64 noundef 36) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0104 = phi i64 [ %i.al, %bb.m ], [ %i.am, %bb.n ] ; 2 uses
  %i.an = icmp eq i64 %.0104, 36
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = add i64 %.2113133, -1
  %i.ap = getelementptr [8 x i8], ptr %4, i64 %indvars.iv147
  store i64 %.0104, ptr %i.ap, align 8, !tbaa !11
  br label %bb.z

bb.q:                                             ; preds = %bb.o
  %i.aq = sext i32 %.0107135 to i64               ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.k, i64 %i.aq
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11 ; 2 uses
  %i.at = icmp eq i64 %i.as, 36
  %i.au = getelementptr [8 x i8], ptr %4, i64 %indvars.iv147 ; 2 uses
  br i1 %i.at, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  store i64 4, ptr %i.au, align 8, !tbaa !11
  %i.av = icmp samesign ult i64 %indvars.iv147, 31
  br i1 %i.av, label %bb.s, label %bb.t, !prof !72

bb.s:                                             ; preds = %bb.r
  %i.aw = shl nuw i32 1, %.0107135
  %i.ax = or i32 %i.aw, %.0109134
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.ay = icmp eq i64 %.0114132, 4
  br i1 %i.ay, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.az = tail call i64 @rb_hash_new() #23        ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.x
  %indvars.iv143 = phi i64 [ 0, %bb.u ], [ %indvars.iv.next144, %bb.x ] ; 3 uses
  %i.ba = trunc nuw nsw i64 %indvars.iv143 to i32
  %i.bb = shl nuw nsw i32 1, %i.ba
  %i.bc = and i32 %i.bb, %.0109134
  %.not122 = icmp eq i32 %i.bc, 0
  br i1 %.not122, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = shl nuw nsw i64 %indvars.iv143, 1
  %i.be = or disjoint i64 %i.bd, 1
  %i.bf = tail call i64 @rb_hash_aset(i64 noundef %i.az, i64 noundef %i.be, i64 noundef 20) #23 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, 31
  br i1 %exitcond146.not, label %.loopexit, label %bb.v, !llvm.loop !790

.loopexit:                                        ; preds = %bb.x, %bb.t
  %.1115 = phi i64 [ %.0114132, %bb.t ], [ %i.az, %bb.x ] ; 2 uses
  %i.bg = shl nsw i64 %i.aq, 1
  %i.bh = or disjoint i64 %i.bg, 1
  %i.bi = tail call i64 @rb_hash_aset(i64 noundef %.1115, i64 noundef %i.bh, i64 noundef 20) #23 ; 0 uses
  br label %bb.z

bb.y:                                             ; preds = %bb.q
  store i64 %i.as, ptr %i.au, align 8, !tbaa !11
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit, %bb.s, %bb.p
  %.2116 = phi i64 [ %.0114132, %bb.s ], [ %.1115, %.loopexit ], [ %.0114132, %bb.y ], [ %.0114132, %bb.p ] ; 2 uses
  %.3 = phi i64 [ %.2113133, %bb.s ], [ %.2113133, %.loopexit ], [ %.2113133, %bb.y ], [ %i.ao, %bb.p ] ; 2 uses
  %.1110 = phi i32 [ %i.ax, %bb.s ], [ %.0109134, %.loopexit ], [ %.0109134, %bb.y ], [ %.0109134, %bb.p ] ; 2 uses
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1
  %i.bj = add i32 %.0107135, 1                    ; 2 uses
  %exitcond150.not = icmp eq i32 %i.bj, %i.ah
  br i1 %exitcond150.not, label %._crit_edge138.loopexit, label %.lr.ph137, !llvm.loop !791

._crit_edge138.loopexit:                          ; preds = %bb.z
  %i.bk = sext i32 %.1110 to i64
  %i.bl = shl nsw i64 %i.bk, 1
  %i.bm = or disjoint i64 %i.bl, 1
  br label %._crit_edge138

._crit_edge138:                                   ; preds = %._crit_edge138.loopexit, %.preheader
  %.0114.lcssa = phi i64 [ 4, %.preheader ], [ %.2116, %._crit_edge138.loopexit ] ; 2 uses
  %.2113.lcssa = phi i64 [ %.0111.lcssa158, %.preheader ], [ %.3, %._crit_edge138.loopexit ]
  %.0109.lcssa = phi i64 [ 1, %.preheader ], [ %i.bm, %._crit_edge138.loopexit ]
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.bo = getelementptr i8, ptr %i.bn, i64 16
  %i.bp = load i16, ptr %i.bo, align 8
  %i.bq = and i16 %i.bp, 32
  %.not119 = icmp eq i16 %i.bq, 0
  br i1 %.not119, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge138
  %i.br = add i32 %i.i, 1
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [8 x i8], ptr %4, i64 %i.bs
  store i64 %3, ptr %i.bt, align 8, !tbaa !11
  br label %bb.ai

bb.ab:                                            ; preds = %._crit_edge138
  br i1 %5, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not120 = icmp eq i64 %.2113.lcssa, 0
  br i1 %.not120, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bu = tail call i64 @rb_hash_dup(i64 noundef %3) #23
  tail call fastcc void @args_setup_kw_parameters_from_kwsplat(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.bu, ptr noundef %4, i1 noundef zeroext true)
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.bv = load i64, ptr %i.l, align 8, !tbaa !77  ; 2 uses
  %i.bw = and i64 %i.bv, 32768
  %.not.i.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bx = lshr i64 %i.bv, 16
  %i.by = and i64 %i.bx, 15
  br label %RHASH_EMPTY_P.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bz = add i64 %3, 24
  %i.ca = inttoptr i64 %i.bz to ptr
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.af, %bb.ag
  %.0.i.i = phi i64 [ %i.by, %bb.af ], [ %i.cc, %bb.ag ]
  %i.cd = icmp eq i64 %.0.i.i, 0
  br i1 %i.cd, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %RHASH_EMPTY_P.exit
  %i.ce = tail call i64 @rb_hash_keys(i64 noundef %3) #23
  tail call fastcc void @argument_kw_error(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull @.str.155, i64 noundef %i.ce) #58
  unreachable

bb.ai:                                            ; preds = %bb.ad, %bb.ac, %RHASH_EMPTY_P.exit, %bb.aa
  %i.cf = icmp eq i64 %.0114.lcssa, 4
  %.3117 = select i1 %i.cf, i64 %.0109.lcssa, i64 %.0114.lcssa
  %i.cg = sext i32 %i.i to i64
  %i.ch = getelementptr [8 x i8], ptr %4, i64 %i.cg
  store i64 %.3117, ptr %i.ch, align 8, !tbaa !11
  ret void
}

declare i64 @rb_hash_keys(i64 noundef) local_unnamed_addr #4

declare i64 @rb_to_hash_type(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_dup(i64 noundef) local_unnamed_addr #4

declare ptr @rb_ary_ptr_use_start(i64 noundef) local_unnamed_addr #4

declare void @rb_ary_ptr_use_end(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_resize(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_unshift(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_behead(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_delete_entry(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_hash_lookup2(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_only_splat(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 4 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = inttoptr i64 %i.e to ptr                 ; 7 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !77   ; 3 uses
  %i.h = and i64 %i.g, 8192
  %.not.i.i = icmp eq i64 %i.h, 0                 ; 4 uses
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = lshr i64 %i.g, 15
  %i.j = and i64 %i.i, 127
  br label %rb_array_len.exit.i

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !27
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.c, %bb.b
  %.0.i.i = phi i64 [ %i.j, %bb.b ], [ %i.l, %bb.c ] ; 4 uses
  %i.m = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.m, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_len.exit.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i) #57
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.n = icmp sgt i64 %.0.i.i, 0
  br i1 %i.n, label %bb.e, label %.split18

bb.e:                                             ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.f, %bb.g
  %.0.i19 = phi ptr [ %i.o, %bb.f ], [ %i.q, %bb.g ]
  %i.r = getelementptr [8 x i8], ptr %.0.i19, i64 %.0.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 -8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11   ; 4 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = and i64 %i.t, 7
  %i.w = icmp ne i64 %i.v, 0
  %i.x = or i1 %i.u, %i.w
  br i1 %i.x, label %.split18, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_array_const_ptr.exit
  %i.y = inttoptr i64 %i.t to ptr
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 3 uses
  %i.aa = and i64 %i.z, 8223
  %or.cond.not = icmp eq i64 %i.aa, 8200
  br i1 %or.cond.not, label %bb.p, label %.split18, !prof !774

.split18:                                         ; preds = %rb_array_const_ptr.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.split18
  %i.ab = lshr i64 %i.g, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit.i.i

bb.i:                                             ; preds = %.split18
  %i.ad = getelementptr i8, ptr %i.f, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.ac, %bb.h ], [ %i.ae, %bb.i ] ; 12 uses
  %i.af = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.j

bb.j:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.ag = trunc nsw i64 %.0.i.i.i to i32
  %i.ah = icmp sgt i64 %.0.i.i.i, 128
  br i1 %i.ah, label %bb.k, label %bb.l, !prof !177

bb.k:                                             ; preds = %RARRAY_LENINT.exit.i
  %i.ai = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

bb.l:                                             ; preds = %RARRAY_LENINT.exit.i
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.f, i64 16
  br label %rb_array_const_ptr.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ak = getelementptr i8, ptr %i.f, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.n, %bb.m
  %.0.i.i20 = phi ptr [ %i.aj, %bb.m ], [ %i.al, %bb.n ] ; 11 uses
  %.0.i.i2027 = ptrtoaddr ptr %.0.i.i20 to i64
  %i.am = getelementptr i8, ptr %2, i64 36
  store i8 0, ptr %i.am, align 4, !tbaa !231
  %i.an = getelementptr i8, ptr %i.b, i64 -16     ; 6 uses
  %i.ao = shl nsw i64 %.0.i.i.i, 3
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 56
  %.not.i21 = icmp ugt ptr %1, %i.aq
  br i1 %.not.i21, label %.preheader.i, label %bb.o, !prof !72

.preheader.i:                                     ; preds = %rb_array_const_ptr.exit.i
  %i.ar = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %.0.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader30, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.as = add i64 %i.c, -8
  %i.at = sub i64 %i.as, %.0.i.i2027
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %.lr.ph.i.preheader30, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i, 9223372036854775804 ; 4 uses
  %i.au = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.0.i.i20, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !11
  %wide.load28 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !11
  %i.az = getelementptr i8, ptr %next.gep, i64 8
  %i.ba = getelementptr i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.az, align 8, !tbaa !11
  store <2 x i64> %wide.load28, ptr %i.ba, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !792

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader30

.lr.ph.i.preheader30:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.03136.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %i.bc = sub nsw i64 %.0.i.i.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.bc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader30, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader30 ] ; 2 uses
  %.03136.i.prol = phi ptr [ %i.bf, %.lr.ph.i.prol ], [ %.03136.i.ph, %.lr.ph.i.preheader30 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader30 ]
  %i.bd = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i.prol
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr i8, ptr %.03136.i.prol, i64 8 ; 4 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !793

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader30
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader30 ], [ %i.bf, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader30 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.03136.i.unr = phi ptr [ %.03136.i.ph, %.lr.ph.i.preheader30 ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %.0.i.i.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

bb.o:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03136.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %.03136.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.bi = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %.03136.i, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !11
  %i.bl = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %.03136.i, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !11
  %i.bp = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr i8, ptr %.03136.i, i64 24
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr i8, ptr %.03136.i, i64 32
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr i8, ptr %.03136.i, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !11
  %i.cb = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr i8, ptr %.03136.i, i64 48
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %.03136.i, i64 56
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !11
  %i.cj = getelementptr [8 x i8], ptr %.0.i.i20, i64 %indvars.iv.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr i8, ptr %.03136.i, i64 64 ; 3 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !11
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %.0.i.i.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !794

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader.i
  %.031.lcssa.i = phi ptr [ %i.an, %.preheader.i ], [ %i.av, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cm, %.lr.ph.i ]
  %i.cn = getelementptr i8, ptr %.031.lcssa.i, i64 8
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !73
  %i.co = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef nonnull %i.d, ptr noundef %i.an)
  br label %vm_call_cfunc_array_argv.exit

bb.p:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cp = and i64 %i.z, 32768
  %.not.i.i.i23 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i23, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cq = lshr i64 %i.z, 16
  %i.cr = and i64 %i.cq, 15
  br label %RHASH_EMPTY_P.exit

bb.r:                                             ; preds = %bb.p
  %i.cs = add i64 %i.t, 24
  %i.ct = inttoptr i64 %i.cs to ptr
  %i.cu = getelementptr i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.q, %bb.r
  %.0.i.i24 = phi i64 [ %i.cr, %bb.q ], [ %i.cv, %bb.r ]
  %i.cw = icmp eq i64 %.0.i.i24, 0
  br i1 %i.cw, label %.split, label %bb.s

bb.s:                                             ; preds = %RHASH_EMPTY_P.exit
  %i.cx = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

.split:                                           ; preds = %RHASH_EMPTY_P.exit
  %i.cy = tail call fastcc i64 @vm_call_cfunc_array_argv(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0, i32 noundef 1)
  br label %vm_call_cfunc_array_argv.exit

vm_call_cfunc_array_argv.exit:                    ; preds = %._crit_edge.i, %bb.k, %.split, %bb.s
  %.017 = phi i64 [ %i.cx, %bb.s ], [ %i.cy, %.split ], [ %i.ai, %bb.k ], [ %i.co, %._crit_edge.i ]
  ret i64 %.017
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_only_splat_kw(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 5 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = getelementptr i8, ptr %i.b, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.e, 0
  %i.h = and i64 %i.e, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.b
  %i.k = inttoptr i64 %i.e to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !77   ; 3 uses
  %i.m = and i64 %i.l, 31
  %i.n = icmp eq i64 %i.m, 8
  br i1 %i.n, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.o = and i64 %i.l, 32768
  %.not.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = lshr i64 %i.l, 16
  %i.q = and i64 %i.p, 15
  br label %RHASH_EMPTY_P.exit

bb.e:                                             ; preds = %bb.c
  %i.r = add i64 %i.e, 24
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.d, %bb.e
  %.0.i.i = phi i64 [ %i.q, %bb.d ], [ %i.u, %bb.e ]
  %i.v = icmp eq i64 %.0.i.i, 0
  br i1 %i.v, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.f:                                             ; preds = %RHASH_EMPTY_P.exit, %bb.a
  %i.w = getelementptr i8, ptr %i.b, i64 -16      ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = inttoptr i64 %i.x to ptr                 ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !77   ; 2 uses
  %i.aa = and i64 %i.z, 8192
  %.not.i.i.i11 = icmp eq i64 %i.aa, 0            ; 2 uses
  br i1 %.not.i.i.i11, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = lshr i64 %i.z, 15
  %i.ac = and i64 %i.ab, 127
  br label %rb_array_len.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.y, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27
  br label %rb_array_len.exit.i.i

rb_array_len.exit.i.i:                            ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i64 [ %i.ac, %bb.g ], [ %i.ae, %bb.h ] ; 12 uses
  %i.af = add i64 %.0.i.i.i, 2147483648
  %.not.i1.i.i = icmp ult i64 %i.af, 4294967296
  br i1 %.not.i1.i.i, label %RARRAY_LENINT.exit.i, label %bb.i

bb.i:                                             ; preds = %rb_array_len.exit.i.i
  tail call void @rb_out_of_int(i64 noundef %.0.i.i.i) #57
  unreachable

RARRAY_LENINT.exit.i:                             ; preds = %rb_array_len.exit.i.i
  %i.ag = trunc nsw i64 %.0.i.i.i to i32
  %i.ah = icmp sgt i64 %.0.i.i.i, 128
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !177

bb.j:                                             ; preds = %RARRAY_LENINT.exit.i
  %i.ai = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit

bb.k:                                             ; preds = %RARRAY_LENINT.exit.i
  br i1 %.not.i.i.i11, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr i8, ptr %i.y, i64 16
  br label %rb_array_const_ptr.exit.i

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.y, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.m, %bb.l
  %.0.i.i12 = phi ptr [ %i.aj, %bb.l ], [ %i.al, %bb.m ] ; 11 uses
  %.0.i.i1217 = ptrtoaddr ptr %.0.i.i12 to i64
  %i.am = getelementptr i8, ptr %2, i64 36
  store i8 0, ptr %i.am, align 4, !tbaa !231
  %i.an = getelementptr i8, ptr %i.b, i64 -24     ; 6 uses
  %i.ao = shl nsw i64 %.0.i.i.i, 3
  %i.ap = getelementptr i8, ptr %i.b, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 56
  %.not.i = icmp ugt ptr %1, %i.aq
  br i1 %.not.i, label %.preheader.i, label %bb.n, !prof !72

.preheader.i:                                     ; preds = %rb_array_const_ptr.exit.i
  %i.ar = icmp sgt i64 %.0.i.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %.preheader.i
  %min.iters.check = icmp ult i64 %.0.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.as = add i64 %i.c, -16
  %i.at = sub i64 %i.as, %.0.i.i1217
  %diff.check = icmp ult i64 %i.at, 32
  br i1 %diff.check, label %.lr.ph.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i, 9223372036854775804 ; 4 uses
  %i.au = shl i64 %n.vec, 3
  %i.av = getelementptr i8, ptr %i.an, i64 %i.au  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.an, i64 %i.aw ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %.0.i.i12, i64 %index ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %wide.load = load <2 x i64>, ptr %i.ax, align 8, !tbaa !11
  %wide.load18 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !11
  %i.az = getelementptr i8, ptr %next.gep, i64 8
  %i.ba = getelementptr i8, ptr %next.gep, i64 24
  store <2 x i64> %wide.load, ptr %i.az, align 8, !tbaa !11
  store <2 x i64> %wide.load18, ptr %i.ba, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !795

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader20

.lr.ph.i.preheader20:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.03136.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %i.bc = sub nsw i64 %.0.i.i.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.bc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader20, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader20 ] ; 2 uses
  %.03136.i.prol = phi ptr [ %i.bf, %.lr.ph.i.prol ], [ %.03136.i.ph, %.lr.ph.i.preheader20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader20 ]
  %i.bd = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i.prol
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr i8, ptr %.03136.i.prol, i64 8 ; 4 uses
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !11
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !796

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader20
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader20 ], [ %i.bf, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader20 ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %.03136.i.unr = phi ptr [ %.03136.i.ph, %.lr.ph.i.preheader20 ], [ %i.bf, %.lr.ph.i.prol ]
  %i.bg = sub nsw i64 %indvars.iv.i.ph, %.0.i.i.i
  %i.bh = icmp ugt i64 %i.bg, -8
  br i1 %i.bh, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %rb_array_const_ptr.exit.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.03136.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %.03136.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.bi = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !11
  %i.bk = getelementptr i8, ptr %.03136.i, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !11
  %i.bl = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %.03136.i, i64 16
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !11
  %i.bp = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr i8, ptr %.03136.i, i64 24
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !11
  %i.bt = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr i8, ptr %.03136.i, i64 32
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !11
  %i.bx = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr i8, ptr %.03136.i, i64 40
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !11
  %i.cb = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !11
  %i.ce = getelementptr i8, ptr %.03136.i, i64 48
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !11
  %i.cf = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = getelementptr i8, ptr %.03136.i, i64 56
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !11
  %i.cj = getelementptr [8 x i8], ptr %.0.i.i12, i64 %indvars.iv.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !11
  %i.cm = getelementptr i8, ptr %.03136.i, i64 64 ; 3 uses
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !11
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %.0.i.i.i
  br i1 %exitcond.not.i.7, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !797

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %.preheader.i
  %.031.lcssa.i = phi ptr [ %i.an, %.preheader.i ], [ %i.av, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.cm, %.lr.ph.i ]
  %i.cn = getelementptr i8, ptr %.031.lcssa.i, i64 8
  store ptr %i.cn, ptr %i.a, align 8, !tbaa !73
  %i.co = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %i.ag, ptr noundef nonnull %i.w, ptr noundef %i.an)
  br label %vm_call_cfunc_array_argv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %RHASH_EMPTY_P.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.cp = tail call i64 @vm_call_cfunc_other(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %vm_call_cfunc_array_argv.exit
end_hunk_10
begin_hunk_11_@vm_call_cfunc_with_frame_:bb.a
  fence syncscope("singlethread") seq_cst
  store ptr %i.as, ptr %i.ao, align 8, !tbaa !70
  %i.ay = getelementptr i8, ptr %.val51, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !411 ; 7 uses
  %i.ba = icmp sgt i32 %i.az, -1
  br i1 %i.ba, label %bb.h, label %rb_check_arity.exit

bb.h:                                             ; preds = %vm_push_frame.exit
  %i.bb = icmp slt i32 %3, %i.az
  br i1 %i.bb, label %.split.i, label %bb.i

.split.i:                                         ; preds = %bb.h
  call void @rb_error_arity(i32 noundef %3, i32 noundef range(i32 0, -2147483648) %i.az, i32 noundef range(i32 -1, -2147483648) %i.az) #58
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bc = icmp samesign ugt i32 %3, %i.az
  br i1 %i.bc, label %.split9.i, label %rb_check_arity.exit

.split9.i:                                        ; preds = %bb.i
  call void @rb_error_arity(i32 noundef %3, i32 noundef range(i32 0, -2147483648) %i.az, i32 noundef range(i32 -1, -2147483648) %i.az) #58
  unreachable

rb_check_arity.exit:                              ; preds = %bb.i, %vm_push_frame.exit
  %i.bd = getelementptr i8, ptr %1, i64 8
  store ptr %5, ptr %i.bd, align 8, !tbaa !73
  %i.be = getelementptr i8, ptr %.val51, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !429
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !409
  %i.bh = call i64 %i.bf(i64 noundef %i.i, i32 noundef %3, ptr noundef %4, ptr noundef %i.bg) #23 ; 2 uses
  %i.bi = load ptr, ptr %i.ao, align 8, !tbaa !70
  %i.bj = getelementptr i8, ptr %i.bi, i64 56     ; 4 uses
  %i.bk = icmp eq ptr %1, %i.bj
  br i1 %i.bk, label %bb.l, label %bb.j, !prof !72

bb.j:                                             ; preds = %rb_check_arity.exit
  %i.bl = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !63  ; 2 uses
  %i.bn = and i8 %i.bm, 2
  %.not.i55 = icmp eq i8 %i.bn, 0
  br i1 %.not.i55, label %vm_cfp_consistent_p.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = and i8 %i.bm, -3
  store i8 %i.bo, ptr %i.bl, align 8, !tbaa !63
  br label %bb.l

vm_cfp_consistent_p.exit:                         ; preds = %bb.j
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.158, ptr noundef nonnull %1, ptr noundef %i.bj) #57
  unreachable

bb.l:                                             ; preds = %rb_check_arity.exit, %bb.k
  %i.bp = getelementptr i8, ptr %0, i64 32
  %i.bq = load atomic volatile i32, ptr %i.bp monotonic, align 8
  %i.br = getelementptr i8, ptr %0, i64 36
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !71
  %i.bt = xor i32 %i.bs, -1
  %i.bu = and i32 %i.bq, %i.bt
  %.not.i.i.i57 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i.i57, label %rb_vm_pop_frame.exit, label %bb.m, !prof !72

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !30
  %i.bv = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit

rb_vm_pop_frame.exit:                             ; preds = %bb.l, %bb.m
  store ptr %i.bj, ptr %i.ao, align 8, !tbaa !70
  %.val52 = load ptr, ptr %i.o, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.bw = getelementptr i8, ptr %.val52, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !264 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %i.bz = getelementptr i8, ptr %i.bx, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !527
  %i.cb = and i32 %i.ca, 64
  %.not50 = icmp eq i32 %i.cb, 0
  br i1 %.not50, label %bb.q, label %bb.n, !prof !72

bb.n:                                             ; preds = %rb_vm_pop_frame.exit
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.cd = getelementptr i8, ptr %i.cc, i64 32
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !205
  %i.cf = ptrtoint ptr %i.b to i64                ; 2 uses
  %.not.i.i61 = trunc i64 %i.cf to i1
  br i1 %.not.i.i61, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cg = lshr i64 %i.cf, 32
  br label %vm_ci_mid.exit63

bb.p:                                             ; preds = %bb.n
  %i.ch = getelementptr i8, ptr %i.b, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !163
  br label %vm_ci_mid.exit63

vm_ci_mid.exit63:                                 ; preds = %bb.o, %bb.p
  %.0.i62 = phi i64 [ %i.cg, %bb.o ], [ %i.ci, %bb.p ]
  %i.cj = getelementptr i8, ptr %.val, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 64, ptr %6, align 8, !tbaa !528
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.cl, align 8, !tbaa !530
  %i.cm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.bj, ptr %i.cm, align 8, !tbaa !531
  %i.cn = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.i, ptr %i.cn, align 8, !tbaa !532
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.ce, ptr %i.co, align 8, !tbaa !533
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %.0.i62, ptr %i.cp, align 8, !tbaa !693
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.ck, ptr %i.cq, align 8, !tbaa !694
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 %i.bh, ptr %i.cr, align 8, !tbaa !534
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 36, ptr %i.cs, align 8, !tbaa !535
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.ct, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %6, ptr noundef %i.by, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.q

bb.q:                                             ; preds = %vm_ci_mid.exit63, %rb_vm_pop_frame.exit
  ret i64 %i.bh
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @vm_call_cfunc_with_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #2 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !230  ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = sext i32 %i.b to i64
  %i.f = sub nsw i64 0, %i.e
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.f ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = tail call fastcc i64 @vm_call_cfunc_with_frame_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.b, ptr noundef %i.g, ptr noundef %i.h)
  ret i64 %i.i
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @vm_caller_setup_keyword_hash(ptr noundef %0, i64 noundef %1) unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = and i64 %1, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit, !prof !353

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %1 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 8
  br i1 %i.h, label %bb.c, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, !prof !369

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %.not7 = icmp eq i64 %1, 4
  br i1 %.not7, label %bb.i, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.i = tail call i64 @rb_to_hash_type(i64 noundef %1) #23
  br label %.sink.split

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = ptrtoint ptr %0 to i64                   ; 2 uses
  %.not.i.i = trunc i64 %i.j to i1
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = trunc i64 %i.j to i32
  %i.l = lshr i32 %i.k, 16
  br label %vm_ci_flag.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !173
  %i.o = trunc i64 %i.n to i32
  br label %vm_ci_flag.exit

vm_ci_flag.exit:                                  ; preds = %bb.d, %bb.e
  %.0.i8 = phi i32 [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  %i.p = and i32 %.0.i8, 2048
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.f, label %bb.i

bb.f:                                             ; preds = %vm_ci_flag.exit
  %i.q = and i64 %i.f, 32768
  %.not.i.i.i = icmp eq i64 %i.q, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = lshr i64 %i.f, 16
  %i.s = and i64 %i.r, 15
  br label %RHASH_EMPTY_P.exit

bb.h:                                             ; preds = %bb.f
  %i.t = add i64 %1, 24
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit

RHASH_EMPTY_P.exit:                               ; preds = %bb.g, %bb.h
  %.0.i.i = phi i64 [ %i.s, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i64 %.0.i.i, 0
  br i1 %i.x, label %bb.i, label %.sink.split

.sink.split:                                      ; preds = %RHASH_EMPTY_P.exit, %bb.b
  %.sink = phi i64 [ %i.i, %bb.b ], [ %1, %RHASH_EMPTY_P.exit ]
  %i.y = tail call i64 @rb_hash_dup(i64 noundef %.sink) #23
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %vm_ci_flag.exit, %RHASH_EMPTY_P.exit, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.0 = phi i64 [ %1, %RHASH_EMPTY_P.exit ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %1, %vm_ci_flag.exit ], [ %i.y, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vm_caller_setup_arg_splat(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #11 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq i64 %2, 4
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %2 to ptr                   ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !77   ; 2 uses
  %i.f = and i64 %i.e, 8192
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %i.d, i64 16
  %i.h = lshr i64 %i.e, 15
  %i.i = and i64 %i.h, 127
  br label %rb_array_len.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %i.d, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.c, %bb.d
  %.0.i53 = phi ptr [ %i.g, %bb.c ], [ %i.k, %bb.d ] ; 12 uses
  %.0.i51 = phi i64 [ %i.i, %bb.c ], [ %i.m, %bb.d ] ; 4 uses
  %.0.i5359 = ptrtoaddr ptr %.0.i53 to i64
  %i.n = getelementptr i8, ptr %1, i64 32         ; 4 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !230  ; 5 uses
  %i.p = icmp slt i32 %3, -1
  %i.q = sext i32 %i.o to i64                     ; 3 uses
  %i.r = add i64 %.0.i51, %i.q                    ; 3 uses
  %i.s = icmp sgt i64 %i.r, 128
  %i.t = select i1 %i.p, i1 %i.s, i1 false
  br i1 %i.t, label %bb.e, label %bb.f, !prof !177

bb.e:                                             ; preds = %rb_array_len.exit
  %i.u = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.w = sub nsw i64 0, %i.q
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = add nuw i64 %i.r, 1
  %i.z = tail call i64 @rb_ary_hidden_new(i64 noundef %i.y) #23 ; 4 uses
  %i.aa = tail call i64 @rb_ary_cat(i64 noundef %i.z, ptr noundef %i.x, i64 noundef %i.q) #23 ; 0 uses
  %i.ab = tail call i64 @rb_ary_cat(i64 noundef %i.z, ptr noundef %.0.i53, i64 noundef %.0.i51) #23 ; 0 uses
  %i.ac = add i32 %i.o, -1
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.ae = sext i32 %i.ac to i64
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  store ptr %i.ag, ptr %i.u, align 8, !tbaa !73
  %i.ah = getelementptr i8, ptr %i.ag, i64 -8
  store i64 %i.z, ptr %i.ah, align 8, !tbaa !11
  store i32 1, ptr %i.n, align 8, !tbaa !230
  %i.ai = getelementptr i8, ptr %1, i64 40
  store i64 %i.z, ptr %i.ai, align 8, !tbaa !573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr %i.a, ptr %i.b, align 8, !tbaa !75
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #23, !srcloc !804
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.ak = load volatile i64, ptr %i.aj, align 8, !tbaa !11 ; 0 uses
  br label %bb.l

bb.f:                                             ; preds = %rb_array_len.exit
  %i.al = icmp sgt i32 %3, -1
  %i.am = zext nneg i32 %3 to i64
  %i.an = icmp sgt i64 %i.r, %i.am
  %or.cond = select i1 %i.al, i1 %i.an, i1 false  ; 2 uses
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = sub i32 %3, %i.o                        ; 2 uses
  %i.ap = add i32 %i.ao, 1
  %i.aq = sext i32 %i.ap to i64
  %i.ar = trunc i64 %.0.i51 to i32
  %.neg = xor i32 %i.ao, -1
  %i.as = add i32 %i.o, %i.ar
  %i.at = add i32 %i.as, %.neg                    ; 2 uses
  store i32 %i.at, ptr %i.n, align 8, !tbaa !230
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.au = getelementptr i8, ptr %1, i64 40
  store i64 0, ptr %i.au, align 8, !tbaa !573
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.av = phi i32 [ %i.at, %bb.g ], [ %i.o, %bb.h ]
  %.046 = phi i64 [ %i.aq, %bb.g ], [ %.0.i51, %bb.h ] ; 9 uses
  %i.aw = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !73 ; 5 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %.046
  %i.ba = getelementptr i8, ptr %i.az, i64 56
  %.not = icmp ugt ptr %0, %i.ba
  br i1 %.not, label %.preheader, label %bb.j, !prof !72

.preheader:                                       ; preds = %bb.i
  %i.bb = icmp sgt i64 %.046, 0
  br i1 %i.bb, label %.lr.ph.preheader, label %bb.k

.lr.ph.preheader:                                 ; preds = %.preheader
  %min.iters.check = icmp ult i64 %.046, 6
  %i.bc = sub i64 %i.ay, %.0.i5359
  %diff.check = icmp ult i64 %i.bc, 32
  %or.cond62 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond62, label %.lr.ph.preheader63, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.046, 9223372036854775804     ; 4 uses
  %i.bd = shl i64 %n.vec, 3
  %i.be = getelementptr i8, ptr %i.ax, i64 %i.bd  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bg = getelementptr [8 x i8], ptr %.0.i53, i64 %index ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %wide.load = load <2 x i64>, ptr %i.bg, align 8, !tbaa !11
  %wide.load60 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !11
  %i.bi = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> %wide.load60, ptr %i.bi, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !805

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.046, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader63

.lr.ph.preheader63:                               ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi ptr [ %i.ax, %.lr.ph.preheader ], [ %i.be, %middle.block ] ; 2 uses
  %.04555.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.bk = sub nsw i64 %.046, %.04555.ph
  %xtraiter = and i64 %i.bk, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader63, %.lr.ph.prol
  %i.bl = phi ptr [ %i.bo, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader63 ] ; 2 uses
  %.04555.prol = phi i64 [ %i.bp, %.lr.ph.prol ], [ %.04555.ph, %.lr.ph.preheader63 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader63 ]
  %i.bm = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555.prol
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr i8, ptr %i.bl, i64 8      ; 3 uses
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !11
  %i.bp = add nuw nsw i64 %.04555.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !806

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader63
  %.lcssa64.unr = phi ptr [ poison, %.lr.ph.preheader63 ], [ %i.bo, %.lr.ph.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.preheader63 ], [ %i.bo, %.lr.ph.prol ]
  %.04555.unr = phi i64 [ %.04555.ph, %.lr.ph.preheader63 ], [ %i.bp, %.lr.ph.prol ]
  %i.bq = sub nsw i64 %.04555.ph, %.046
  %i.br = icmp ugt i64 %i.bq, -8
  br i1 %i.br, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @vm_stackoverflow() #58
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %i.bs = phi ptr [ %i.cx, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.04555 = phi i64 [ %i.cy, %.lr.ph ], [ %.04555.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.bt = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.bs, i64 8
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !11
  %i.bw = getelementptr [8 x i8], ptr %.0.i53, i64 %.04555
end_hunk_11
begin_hunk_12_@vm_define_method:bb.a
  %i.ao = and i64 %i.am, 7
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = or i1 %i.an, %i.ap
  %.pre.i23.i = inttoptr i64 %i.am to ptr         ; 2 uses
  br i1 %i.aq, label %RCLASS_SINGLETON_P.exit.thread.i26.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i24.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i24.i:           ; preds = %.lr.ph.i
  %i.ar = load i64, ptr %.pre.i23.i, align 8, !tbaa !77
  %i.as = and i64 %i.ar, 8223
  %or.cond.i25.i = icmp eq i64 %i.as, 8194
  br i1 %or.cond.i25.i, label %RCLASS_ALLOCATOR.exit28.i, label %RCLASS_SINGLETON_P.exit.thread.i26.i

RCLASS_SINGLETON_P.exit.thread.i26.i:             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i24.i, %.lr.ph.i
  %i.at = getelementptr i8, ptr %.pre.i23.i, i64 136
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  br label %RCLASS_ALLOCATOR.exit28.i

RCLASS_ALLOCATOR.exit28.i:                        ; preds = %RCLASS_SINGLETON_P.exit.thread.i26.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i24.i
  %.0.i27.i = phi ptr [ %i.au, %RCLASS_SINGLETON_P.exit.thread.i26.i ], [ null, %rbimpl_RB_TYPE_P_fastpath.exit.i.i24.i ] ; 2 uses
  %magicptr22.i = ptrtoint ptr %.0.i27.i to i64
  switch i64 %magicptr22.i, label %rb_get_alloc_func.exit [
    i64 -1, label %rbimpl_RB_TYPE_P_fastpath.exit.thread
    i64 0, label %bb.k
  ]

bb.k:                                             ; preds = %RCLASS_ALLOCATOR.exit28.i
  %i.av = add nsw i64 %.032.i, -1                 ; 2 uses
  %.not20.i = icmp eq i64 %i.av, 0
  br i1 %.not20.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %.lr.ph.i, !llvm.loop !352

rb_get_alloc_func.exit:                           ; preds = %RCLASS_ALLOCATOR.exit28.i, %RCLASS_ALLOCATOR.exit.i
  %.2.i = phi ptr [ %.0.i.i, %RCLASS_ALLOCATOR.exit.i ], [ %.0.i27.i, %RCLASS_ALLOCATOR.exit28.i ]
  %i.aw = icmp eq ptr %.2.i, @rb_class_allocate_instance
  br i1 %i.aw, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.l:                                             ; preds = %rb_get_alloc_func.exit
  %i.ax = call zeroext i16 @rb_estimate_iv_count(i64 noundef %.0, ptr noundef %i.q) #23
  %i.ay = getelementptr i8, ptr %i.y, i64 144
  store i16 %i.ax, ptr %i.ay, align 8, !tbaa !829
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.k, %RCLASS_ALLOCATOR.exit28.i, %bb.j, %RCLASS_ALLOCATOR.exit.i, %bb.i, %bb.l, %rb_get_alloc_func.exit, %rbimpl_RB_TYPE_P_fastpath.exit, %bb.h
  br i1 %.not, label %bb.m, label %bb.o

bb.m:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.az = call fastcc i32 @vm_scope_module_func_check(ptr noundef nonnull %0)
  %.not26 = icmp eq i32 %i.az, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = call i64 @rb_singleton_class(i64 noundef %.0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.q, ptr %5, align 8, !tbaa !434
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %.0.i27, ptr %i.bb, align 8, !tbaa !436
  call void @rb_add_method(i64 noundef %i.ba, i64 noundef %2, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 1), !inline_history !828
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  ret void
}

declare i64 @rb_class_new_instance_pass_kw(i32 noundef, ptr noundef, i64 noundef) #4

declare i64 @rb_str_resurrect(i64 noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind sspstrong uwtable
define internal fastcc void @vm_stack_consistency_error(ptr %.0.val, ptr %.8.val, ptr noundef %0) unnamed_addr #47 {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.e, %i.b
  %i.g = ashr exact i64 %i.f, 3
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @vm_stack_consistency_error.stack_consistency_error, i64 noundef %i.d, i64 noundef %i.g) #57
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @vm_opt_length(i64 noundef %0, i32 noundef range(i32 12, 15) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rb_long2num_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61   ; 3 uses
  %i.h = load i64, ptr @rb_cString, align 8, !tbaa !11
  %i.i = icmp eq i64 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !120
  %i.m = and i16 %i.l, 4
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.i, !prof !72

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %1, 14
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.e, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !513  ; 3 uses
  %i.r = add i64 %i.q, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.r, -1
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = shl nsw i64 %i.q, 1
  %i.t = or disjoint i64 %i.s, 1
  br label %rb_long2num_inline.exit

bb.g:                                             ; preds = %bb.e
  %i.u = tail call i64 @rb_int2big(i64 noundef %i.q) #23
  br label %rb_long2num_inline.exit

bb.h:                                             ; preds = %bb.d
  %i.v = tail call i64 @rb_str_length(i64 noundef %0) #23
  br label %rb_long2num_inline.exit

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.w = load i64, ptr @rb_cArray, align 8, !tbaa !11
  %i.x = icmp eq i64 %i.g, %i.w
  br i1 %i.x, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.y = zext nneg i32 %1 to i64
  %i.z = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !120
  %i.ab = and i16 %i.aa, 8
  %i.ac = icmp eq i16 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.p, !prof !72

bb.k:                                             ; preds = %bb.j
  %i.ad = load i64, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.ae = and i64 %i.ad, 8192
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = lshr i64 %i.ad, 15
  %i.ag = and i64 %i.af, 127
  br label %rb_array_len.exit

bb.m:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %i.e, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.l, %bb.m
  %.0.i13 = phi i64 [ %i.ag, %bb.l ], [ %i.ai, %bb.m ] ; 3 uses
  %i.aj = add i64 %.0.i13, 4611686018427387904
  %or.cond.i14 = icmp sgt i64 %i.aj, -1
  br i1 %or.cond.i14, label %bb.n, label %bb.o

bb.n:                                             ; preds = %rb_array_len.exit
  %i.ak = shl nsw i64 %.0.i13, 1
  %i.al = or disjoint i64 %i.ak, 1
  br label %rb_long2num_inline.exit

bb.o:                                             ; preds = %rb_array_len.exit
  %i.am = tail call i64 @rb_int2big(i64 noundef %.0.i13) #23
  br label %rb_long2num_inline.exit

bb.p:                                             ; preds = %bb.j, %bb.i
  %i.an = load i64, ptr @rb_cHash, align 8, !tbaa !11
  %i.ao = icmp eq i64 %i.g, %i.an
  br i1 %i.ao, label %bb.q, label %rb_long2num_inline.exit

bb.q:                                             ; preds = %bb.p
  %i.ap = zext nneg i32 %1 to i64
  %i.aq = getelementptr [2 x i8], ptr @ruby_vm_redefined_flag, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !120
  %i.as = and i16 %i.ar, 16
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.r, label %rb_long2num_inline.exit, !prof !72

bb.r:                                             ; preds = %bb.q
  %i.au = load i64, ptr %i.e, align 8, !tbaa !77  ; 2 uses
  %i.av = and i64 %i.au, 32768
  %.not.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = lshr i64 %i.au, 16
  %i.ax = and i64 %i.aw, 15
  br label %RHASH_SIZE.exit

bb.t:                                             ; preds = %bb.r
  %i.ay = add i64 %0, 24
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !315
  br label %RHASH_SIZE.exit

RHASH_SIZE.exit:                                  ; preds = %bb.s, %bb.t
  %.0.i17 = phi i64 [ %i.ax, %bb.s ], [ %i.bb, %bb.t ]
  %i.bc = shl i64 %.0.i17, 1
  %i.bd = or disjoint i64 %i.bc, 1
  br label %rb_long2num_inline.exit

rb_long2num_inline.exit:                          ; preds = %bb.o, %bb.n, %bb.g, %bb.f, %bb.p, %bb.q, %bb.a, %RHASH_SIZE.exit, %bb.h
  %.0 = phi i64 [ 36, %bb.a ], [ 36, %bb.p ], [ %i.v, %bb.h ], [ %i.u, %bb.g ], [ %i.bd, %RHASH_SIZE.exit ], [ 36, %bb.q ], [ %i.t, %bb.f ], [ %i.al, %bb.n ], [ %i.am, %bb.o ]
  ret i64 %.0
}

declare void @rb_zjit_profile_insn(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind sspstrong uwtable
define internal fastcc void @vm_trace(ptr noundef nonnull %0, ptr nofree noundef captures(none) %1) unnamed_addr #30 {
rb_ec_ractor_ptr.exit:
  %2 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %3 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %4 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %5 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %6 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %7 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %8 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %9 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %10 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %11 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %12 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %13 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %14 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %15 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %16 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %17 = alloca %struct.rb_trace_arg_struct, align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !146
  %i.d = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.e = getelementptr i8, ptr %.val, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !264  ; 4 uses
  %i.g = getelementptr i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !830
  %i.i = and i32 %i.h, 213887                     ; 8 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.a, label %bb.b

bb.a:                                             ; preds = %rb_ec_ractor_ptr.exit
  %i.k = getelementptr i8, ptr %i.f, i64 48
  %.val131 = load i32, ptr %i.k, align 8, !tbaa !831
  %i.l = icmp eq i32 %.val131, 0
  br i1 %i.l, label %vm_trace_hook.exit163, label %bb.b

bb.b:                                             ; preds = %bb.a, %rb_ec_ractor_ptr.exit
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !123  ; 4 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !124
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !147
  %i.s = ptrtoint ptr %i.c to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 3
  %i.w = tail call i32 @rb_iseq_event_flags(ptr noundef %i.n, i64 noundef %i.v) #23 ; 12 uses
  %i.x = getelementptr i8, ptr %i.n, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !27
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %.thread, label %bb.c, !prof !72

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.z = tail call ptr @rb_ractor_targeted_hooks(ptr noundef nonnull %i.f) #23
  %i.aa = ptrtoint ptr %i.n to i64
  %i.ab = call i32 @rb_st_lookup(ptr noundef %i.z, i64 noundef %i.aa, ptr noundef nonnull %i.a) #23
  %.not114 = icmp eq i32 %i.ab, 0
  %i.ac = load i64, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not115 = icmp eq i64 %i.ac, 0
  %or.cond184 = select i1 %.not114, i1 true, i1 %.not115
  br i1 %or.cond184, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !527
  %i.ag = or i32 %i.af, %i.i
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  %.not115172 = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.b ] ; 12 uses
  %.1166 = phi ptr [ %i.ad, %bb.d ], [ null, %bb.c ], [ null, %bb.b ] ; 24 uses
  %i.ah = phi i32 [ %i.ag, %bb.d ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 10 uses
  %i.ai = getelementptr i8, ptr %1, i64 32        ; 3 uses
  %.val130 = load ptr, ptr %i.ai, align 8, !tbaa !15 ; 3 uses
  %.val130.val = load i64, ptr %.val130, align 8, !tbaa !11 ; 2 uses
  %i.aj = trunc i64 %.val130.val to i32
  %i.ak = lshr i32 %i.aj, 6                       ; 2 uses
  %i.al = and i32 %i.ak, 1
  %i.am = trunc i32 %i.ak to i1                   ; 3 uses
  br i1 %i.am, label %bb.e, label %bb.l

bb.e:                                             ; preds = %.thread
  %i.an = and i64 %.val130.val, 2
  %.not17.i = icmp eq i64 %i.an, 0
  br i1 %.not17.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.g
  %.0718.i = phi ptr [ %i.aw, %bb.g ], [ %.val130, %bb.e ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.0718.i, i64 -16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.ar = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !77
  %i.at = and i64 %i.as, 61440
  %cond.i = icmp eq i64 %i.at, 24576
  br i1 %cond.i, label %rb_vm_frame_method_entry.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %i.au = getelementptr i8, ptr %.0718.i, i64 -8
  %.07.val10.i = load i64, ptr %i.au, align 8, !tbaa !11
  %i.av = and i64 %.07.val10.i, -4
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  %.07.val.i = load i64, ptr %i.aw, align 8, !tbaa !11
  %i.ax = and i64 %.07.val.i, 2
  %.not.i134 = icmp eq i64 %i.ax, 0
  br i1 %.not.i134, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !79

._crit_edge.i:                                    ; preds = %bb.g, %bb.e
  %.07.lcssa.i = phi ptr [ %.val130, %bb.e ], [ %i.aw, %bb.g ]
  %i.ay = getelementptr i8, ptr %.07.lcssa.i, i64 -16
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !11 ; 2 uses
  %i.ba = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = inttoptr i64 %i.az to ptr               ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.bd = and i64 %i.bc, 61440
  %i.be = icmp eq i64 %i.bd, 24576
  br i1 %i.be, label %rb_vm_frame_method_entry.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bf = getelementptr i8, ptr %i.bb, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !80 ; 2 uses
  %i.bh = icmp ne i64 %i.bg, 0
  call void @llvm.assume(i1 %i.bh)
  %i.bi = inttoptr i64 %i.bg to ptr               ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !77
  %i.bk = and i64 %i.bj, 61440
  %cond.i.i = icmp eq i64 %i.bk, 24576
  %spec.select.i.i = select i1 %cond.i.i, ptr %i.bi, ptr null
  br label %rb_vm_frame_method_entry.exit

rb_vm_frame_method_entry.exit:                    ; preds = %bb.f, %._crit_edge.i, %bb.h
  %.0.i133 = phi ptr [ %spec.select.i.i, %bb.h ], [ %i.bb, %._crit_edge.i ], [ %i.ar, %bb.f ]
  %i.bl = getelementptr i8, ptr %.0.i133, i64 16  ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !83
  %i.bn = getelementptr i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !27
  %.not116 = icmp eq i32 %i.bo, 0
  br i1 %.not116, label %bb.l, label %bb.i, !prof !72

bb.i:                                             ; preds = %rb_vm_frame_method_entry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bp = call ptr @rb_ractor_targeted_hooks(ptr noundef %i.f) #23
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !83
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = call i32 @rb_st_lookup(ptr noundef %i.bp, i64 noundef %i.br, ptr noundef nonnull %i.b) #23
  %.not117 = icmp eq i32 %i.bs, 0
  %i.bt = load i64, ptr %i.b, align 8
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %.0109 = select i1 %.not117, ptr null, ptr %i.bu ; 2 uses
  %.not118 = icmp eq ptr %.0109, null
  br i1 %.not118, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !527
  %i.bx = or i32 %i.bw, %i.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0111 = phi i32 [ %i.bx, %bb.j ], [ %i.i, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.l

bb.l:                                             ; preds = %rb_vm_frame_method_entry.exit, %bb.k, %.thread
  %.2113 = phi i32 [ %i.i, %.thread ], [ %.0111, %bb.k ], [ %i.i, %rb_vm_frame_method_entry.exit ] ; 2 uses
  %.2 = phi ptr [ null, %.thread ], [ %.0109, %bb.k ], [ null, %rb_vm_frame_method_entry.exit ] ; 10 uses
  %i.by = and i32 %i.ah, %i.w
  %i.bz = or i32 %i.al, %i.by
  %or.cond.not = icmp eq i32 %i.bz, 0
  br i1 %or.cond.not, label %vm_trace_hook.exit163, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = getelementptr i8, ptr %0, i64 120
end_hunk_12
begin_hunk_13_@vm_call0_body:bb.a

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ae = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ae ; 2 uses
  %i.af = getelementptr [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %wide.load = load <2 x i64>, ptr %i.af, align 8, !tbaa !11
  %wide.load557 = load <2 x i64>, ptr %i.ag, align 8, !tbaa !11
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !11
  store <2 x i64> %wide.load557, ptr %i.ah, align 8, !tbaa !11
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !848

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 4 uses
  %.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph ], [ %i.ad, %middle.block ] ; 2 uses
  %i.aj = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ak = phi ptr [ %i.an, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.al = getelementptr [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.am = load i64, ptr %i.al, align 8, !tbaa !11
  %i.an = getelementptr i8, ptr %i.ak, i64 8      ; 3 uses
  store i64 %i.am, ptr %i.ak, align 8, !tbaa !11
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !849

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa559.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.an, %scalar.ph.prol ]
  %i.ao = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.aq = phi ptr [ %i.bv, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ar = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !11
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !11
  %i.au = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !11
  %i.ax = getelementptr i8, ptr %i.aq, i64 16
  store i64 %i.aw, ptr %i.at, align 8, !tbaa !11
  %i.ay = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.az = getelementptr i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !11
  %i.bb = getelementptr i8, ptr %i.aq, i64 24
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !11
  %i.bc = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !11
  %i.bf = getelementptr i8, ptr %i.aq, i64 32
  store i64 %i.be, ptr %i.bb, align 8, !tbaa !11
  %i.bg = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bh = getelementptr i8, ptr %i.bg, i64 32
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !11
  %i.bj = getelementptr i8, ptr %i.aq, i64 40
  store i64 %i.bi, ptr %i.bf, align 8, !tbaa !11
  %i.bk = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bl = getelementptr i8, ptr %i.bk, i64 40
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !11
  %i.bn = getelementptr i8, ptr %i.aq, i64 48
  store i64 %i.bm, ptr %i.bj, align 8, !tbaa !11
  %i.bo = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bp = getelementptr i8, ptr %i.bo, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !11
  %i.br = getelementptr i8, ptr %i.aq, i64 56
  store i64 %i.bq, ptr %i.bn, align 8, !tbaa !11
  %i.bs = getelementptr [8 x i8], ptr %2, i64 %indvars.iv
  %i.bt = getelementptr i8, ptr %i.bs, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !11
  %i.bv = getelementptr i8, ptr %i.aq, i64 64     ; 2 uses
  store i64 %i.bu, ptr %i.br, align 8, !tbaa !11
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %scalar.ph, !llvm.loop !850

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.ad, %middle.block ], [ %.lcssa559.unr, %scalar.ph.prol.loopexit ], [ %i.bv, %scalar.ph ]
  store ptr %.lcssa, ptr %i.n, align 8, !tbaa !73
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.bw = getelementptr i8, ptr %i.i, i64 8
  %.val229 = load ptr, ptr %i.bw, align 8, !tbaa !27
  %i.bx = getelementptr i8, ptr %.val229, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !124
  %i.bz = getelementptr i8, ptr %i.by, i64 16
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = and i16 %i.ca, 8192
  %.not201 = icmp eq i16 %i.cb, 0
  br i1 %.not201, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = tail call i64 @vm_call_iseq_fwd_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %1) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cd = tail call i64 @vm_call_iseq_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef nonnull %1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !70
  %i.cf = getelementptr i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !11
  %i.ci = or i64 %i.ch, 32
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !11
  %i.cj = tail call i64 @rb_vm_exec(ptr noundef nonnull %0)
  br label %rb_vm_check_ints.exit

bb.j:                                             ; preds = %bb.b, %bb.b
  %i.ck = load ptr, ptr %1, align 8, !tbaa !226
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !225 ; 2 uses
  %i.cm = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.cn = getelementptr i8, ptr %i.cm, i64 16
  %.val.i.i = load ptr, ptr %i.cn, align 8, !tbaa !187 ; 4 uses
  %i.co = getelementptr i8, ptr %.val.i.i, i64 16 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !83 ; 4 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = getelementptr i8, ptr %i.cp, i64 24
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !411 ; 7 uses
  %i.ct = getelementptr i8, ptr %1, i64 24
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !229 ; 4 uses
  %i.cv = getelementptr i8, ptr %1, i64 32
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !230 ; 7 uses
  %i.cx = ptrtoint ptr %i.cl to i64               ; 2 uses
  %.not.i.i.i.i = trunc i64 %i.cx to i1
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cy = lshr i64 %i.cx, 32
  br label %vm_ci_mid.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.cz = getelementptr i8, ptr %i.cl, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !163
  br label %vm_ci_mid.exit.i.i

vm_ci_mid.exit.i.i:                               ; preds = %bb.l, %bb.k
  %.0.i64.i.i = phi i64 [ %i.cy, %bb.k ], [ %i.da, %bb.l ] ; 2 uses
  %i.db = getelementptr i8, ptr %1, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !228
  %i.dd = getelementptr i8, ptr %1, i64 36
  %i.de = load i8, ptr %i.dd, align 4, !tbaa !231, !range !114, !noundef !64
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.m, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.m:                                             ; preds = %vm_ci_mid.exit.i.i
  %i.dg = icmp sgt i32 %i.cw, 0
  br i1 %i.dg, label %bb.n, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.n:                                             ; preds = %bb.m
  %i.dh = zext nneg i32 %i.cw to i64
  %i.di = getelementptr [8 x i8], ptr %2, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 -8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !11 ; 4 uses
  %i.dl = icmp eq i64 %i.dk, 0
  %i.dm = and i64 %i.dk, 7
  %i.dn = icmp ne i64 %i.dm, 0
  %i.do = or i1 %i.dl, %i.dn
  br i1 %i.do, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.n
  %i.dp = inttoptr i64 %i.dk to ptr
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !77 ; 3 uses
  %i.dr = and i64 %i.dq, 31
  %i.ds = icmp eq i64 %i.dr, 8
  br i1 %i.ds, label %bb.o, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.dt = and i64 %i.dq, 32768
  %.not.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.du = lshr i64 %i.dq, 16
  %i.dv = and i64 %i.du, 15
  br label %RHASH_EMPTY_P.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.dw = add i64 %i.dk, 24
  %i.dx = inttoptr i64 %i.dw to ptr
  %i.dy = getelementptr i8, ptr %i.dx, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i.i

RHASH_EMPTY_P.exit.i.i:                           ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i64 [ %i.dv, %bb.p ], [ %i.dz, %bb.q ]
  %i.ea = icmp eq i64 %.0.i.i.i.i, 0              ; 2 uses
  %spec.select.i.i = select i1 %i.ea, i64 1431634051, i64 1431635075
  %i.eb = sext i1 %i.ea to i32
  %spec.select61.i.i = add nsw i32 %i.cw, %i.eb
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %RHASH_EMPTY_P.exit.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.n, %bb.m, %vm_ci_mid.exit.i.i
  %.056.i.i = phi i64 [ 1431635075, %bb.m ], [ 1431634051, %vm_ci_mid.exit.i.i ], [ %spec.select.i.i, %RHASH_EMPTY_P.exit.i.i ], [ 1431635075, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ 1431635075, %bb.n ]
  %.0.i.i = phi i32 [ %i.cw, %bb.m ], [ %i.cw, %vm_ci_mid.exit.i.i ], [ %spec.select61.i.i, %RHASH_EMPTY_P.exit.i.i ], [ %i.cw, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.cw, %bb.n ] ; 5 uses
  %i.ec = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.val63.i.i = load ptr, ptr %i.ec, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ed = getelementptr i8, ptr %.val63.i.i, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !264 ; 2 uses
  %i.ef = getelementptr i8, ptr %i.ee, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !527
  %i.eh = and i32 %i.eg, 32
  %.not.i.i = icmp eq i32 %i.eh, 0
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !72

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ei = getelementptr i8, ptr %i.ee, i64 16
  %i.ej = getelementptr i8, ptr %i.cp, i64 32
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !205
  %i.el = getelementptr i8, ptr %.val.i.i, i64 32
  %i.em = load i64, ptr %i.el, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store i32 32, ptr %14, align 8, !tbaa !528
  %i.en = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %0, ptr %i.en, align 8, !tbaa !530
  %i.eo = getelementptr i8, ptr %0, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !70
  %i.eq = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !531
  %i.er = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i64 %i.cu, ptr %i.er, align 8, !tbaa !532
  %i.es = getelementptr inbounds nuw i8, ptr %14, i64 32
  store i64 %i.ek, ptr %i.es, align 8, !tbaa !533
  %i.et = getelementptr inbounds nuw i8, ptr %14, i64 40
  store i64 %.0.i64.i.i, ptr %i.et, align 8, !tbaa !693
  %i.eu = getelementptr inbounds nuw i8, ptr %14, i64 48
  store i64 %i.em, ptr %i.eu, align 8, !tbaa !694
  %i.ev = getelementptr inbounds nuw i8, ptr %14, i64 56
  store i64 4, ptr %i.ev, align 8, !tbaa !534
  %i.ew = getelementptr inbounds nuw i8, ptr %14, i64 72
  store i64 36, ptr %i.ew, align 8, !tbaa !535
  %i.ex = getelementptr inbounds nuw i8, ptr %14, i64 64
  store i32 0, ptr %i.ex, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %14, ptr noundef %i.ei, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ey = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !70 ; 9 uses
  %i.fa = getelementptr i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !73 ; 5 uses
  %i.fc = getelementptr i8, ptr %i.ez, i64 -56    ; 3 uses
  %i.fd = getelementptr i8, ptr %i.fb, i64 56
  %.not.i.i.i = icmp ugt ptr %i.fc, %i.fd
  br i1 %.not.i.i.i, label %vm_push_frame.exit.i.i, label %bb.t, !prof !72

bb.t:                                             ; preds = %bb.s
  call fastcc void @vm_stackoverflow() #58
  unreachable

vm_push_frame.exit.i.i:                           ; preds = %bb.s
  %i.fe = ptrtoint ptr %.val.i.i to i64
  %i.ff = getelementptr i8, ptr %i.fb, i64 8
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !11
  %i.fg = getelementptr i8, ptr %i.fb, i64 16     ; 2 uses
  store i64 %i.dc, ptr %i.ff, align 8, !tbaa !11
  %i.fh = getelementptr i8, ptr %i.fb, i64 24
  store i64 %.056.i.i, ptr %i.fg, align 8, !tbaa !11
  store ptr null, ptr %i.fc, align 8, !tbaa !75
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -48
  store ptr %i.fh, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !75
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -40
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !76
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -32
  store i64 %i.cu, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -24
  store ptr %i.fg, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !75
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ez, i64 -16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false)
  fence syncscope("singlethread") seq_cst
  store ptr %i.fc, ptr %i.ey, align 8, !tbaa !70
  %i.fi = icmp sgt i32 %i.cs, -1
  br i1 %i.fi, label %bb.u, label %rb_check_arity.exit.i.i

bb.u:                                             ; preds = %vm_push_frame.exit.i.i
  %i.fj = icmp slt i32 %.0.i.i, %i.cs
  br i1 %i.fj, label %.split.i.i.i, label %bb.v

.split.i.i.i:                                     ; preds = %bb.u
  call void @rb_error_arity(i32 noundef %.0.i.i, i32 noundef range(i32 0, -2147483648) %i.cs, i32 noundef range(i32 -1, -2147483648) %i.cs) #58
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.fk = icmp samesign ugt i32 %.0.i.i, %i.cs
  br i1 %i.fk, label %.split9.i.i.i, label %rb_check_arity.exit.i.i

.split9.i.i.i:                                    ; preds = %bb.v
  call void @rb_error_arity(i32 noundef %.0.i.i, i32 noundef range(i32 0, -2147483648) %i.cs, i32 noundef range(i32 -1, -2147483648) %i.cs) #58
  unreachable

rb_check_arity.exit.i.i:                          ; preds = %bb.v, %vm_push_frame.exit.i.i
  %i.fl = getelementptr i8, ptr %i.cp, i64 16
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !429
  %i.fn = load ptr, ptr %i.cq, align 8, !tbaa !409
  %i.fo = call i64 %i.fm(i64 noundef %i.cu, i32 noundef %.0.i.i, ptr noundef %2, ptr noundef %i.fn) #23, !inline_history !851 ; 3 uses
  %i.fp = load ptr, ptr %i.ey, align 8, !tbaa !70
  %i.fq = getelementptr i8, ptr %i.fp, i64 56     ; 4 uses
  %i.fr = icmp eq ptr %i.ez, %i.fq
  br i1 %i.fr, label %bb.y, label %bb.w, !prof !72

bb.w:                                             ; preds = %rb_check_arity.exit.i.i
  %i.fs = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 8, !tbaa !63  ; 2 uses
  %i.fu = and i8 %i.ft, 2
  %.not.i67.i.i = icmp eq i8 %i.fu, 0
  br i1 %.not.i67.i.i, label %vm_cfp_consistent_p.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fv = and i8 %i.ft, -3
  store i8 %i.fv, ptr %i.fs, align 8, !tbaa !63
  br label %bb.y

vm_cfp_consistent_p.exit.i.i:                     ; preds = %bb.w
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.234, ptr noundef nonnull %i.ez, ptr noundef %i.fq) #57
  unreachable

bb.y:                                             ; preds = %bb.x, %rb_check_arity.exit.i.i
  %i.fw = getelementptr i8, ptr %0, i64 32
  %i.fx = load atomic volatile i32, ptr %i.fw monotonic, align 8
  %i.fy = getelementptr i8, ptr %0, i64 36
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !71
  %i.ga = xor i32 %i.fz, -1
  %i.gb = and i32 %i.fx, %i.ga
  %.not.i.i.i69.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i.i.i69.i.i, label %rb_vm_pop_frame.exit.i.i, label %bb.z, !prof !72

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i = load ptr, ptr %i.ec, align 8, !tbaa !30
  %i.gc = call i32 @rb_threadptr_execute_interrupts(ptr noundef %.val.i.i.i.i.i, i32 noundef 0) #23 ; 0 uses
  br label %rb_vm_pop_frame.exit.i.i

rb_vm_pop_frame.exit.i.i:                         ; preds = %bb.z, %bb.y
  store ptr %i.fq, ptr %i.ey, align 8, !tbaa !70
  %.val62.i.i = load ptr, ptr %i.ec, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.gd = getelementptr i8, ptr %.val62.i.i, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !264 ; 2 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 24
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !527
  %i.gh = and i32 %i.gg, 64
  %.not60.i.i = icmp eq i32 %i.gh, 0
  br i1 %.not60.i.i, label %vm_call0_cfunc.exit, label %bb.aa, !prof !72

bb.aa:                                            ; preds = %rb_vm_pop_frame.exit.i.i
  %i.gi = getelementptr i8, ptr %i.ge, i64 16
  %i.gj = load ptr, ptr %i.co, align 8, !tbaa !83
  %i.gk = getelementptr i8, ptr %i.gj, i64 32
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !205
  %i.gm = getelementptr i8, ptr %.val.i.i, i64 32
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store i32 64, ptr %13, align 8, !tbaa !528
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %0, ptr %i.go, align 8, !tbaa !530
  %i.gp = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.fq, ptr %i.gp, align 8, !tbaa !531
  %i.gq = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i64 %i.cu, ptr %i.gq, align 8, !tbaa !532
  %i.gr = getelementptr inbounds nuw i8, ptr %13, i64 32
  store i64 %i.gl, ptr %i.gr, align 8, !tbaa !533
  %i.gs = getelementptr inbounds nuw i8, ptr %13, i64 40
  store i64 %.0.i64.i.i, ptr %i.gs, align 8, !tbaa !693
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 48
  store i64 %i.gn, ptr %i.gt, align 8, !tbaa !694
  %i.gu = getelementptr inbounds nuw i8, ptr %13, i64 56
  store i64 %i.fo, ptr %i.gu, align 8, !tbaa !534
  %i.gv = getelementptr inbounds nuw i8, ptr %13, i64 72
  store i64 36, ptr %i.gv, align 8, !tbaa !535
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 64
  store i32 0, ptr %i.gw, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %13, ptr noundef %i.gi, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %vm_call0_cfunc.exit

bb.ab:                                            ; preds = %bb.b
  %i.gx = getelementptr i8, ptr %1, i64 36
  %i.gy = load i8, ptr %i.gx, align 4, !tbaa !231, !range !114, !noundef !64
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !230 ; 7 uses
  %i.hc = icmp sgt i32 %i.hb, 0
  %or.cond.i = select i1 %i.gz, i1 %i.hc, i1 false
  br i1 %or.cond.i, label %bb.ac, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %i.hd = zext nneg i32 %i.hb to i64
  %i.he = getelementptr [8 x i8], ptr %2, i64 %i.hd
  %i.hf = getelementptr i8, ptr %i.he, i64 -8
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !11 ; 4 uses
  %i.hh = icmp eq i64 %i.hg, 0
  %i.hi = and i64 %i.hg, 7
  %i.hj = icmp ne i64 %i.hi, 0
  %i.hk = or i1 %i.hh, %i.hj
  br i1 %i.hk, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.ac
  %i.hl = inttoptr i64 %i.hg to ptr
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !77 ; 3 uses
  %i.hn = and i64 %i.hm, 31
  %i.ho = icmp eq i64 %i.hn, 8
  br i1 %i.ho, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread

bb.ad:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.hp = and i64 %i.hm, 32768
  %.not.i.i.i.i243 = icmp eq i64 %i.hp, 0
  br i1 %.not.i.i.i.i243, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.hq = lshr i64 %i.hm, 16
  %i.hr = and i64 %i.hq, 15
  br label %RHASH_EMPTY_P.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.hs = add i64 %i.hg, 24
  %i.ht = inttoptr i64 %i.hs to ptr
  %i.hu = getelementptr i8, ptr %i.ht, i64 16
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i

RHASH_EMPTY_P.exit.i:                             ; preds = %bb.af, %bb.ae
  %.0.i.i.i = phi i64 [ %i.hr, %bb.ae ], [ %i.hv, %bb.af ]
  %i.hw = icmp eq i64 %.0.i.i.i, 0
  br i1 %i.hw, label %bb.ag, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread

bb.ag:                                            ; preds = %RHASH_EMPTY_P.exit.i
  %i.hx = add nsw i32 %i.hb, -1                   ; 2 uses
  store i32 %i.hx, ptr %i.ha, align 8, !tbaa !230
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %bb.ag, %bb.ab
  %i.hy = phi i32 [ %i.hb, %bb.ab ], [ %i.hx, %bb.ag ] ; 3 uses
  %i.hz = icmp slt i32 %i.hy, 1
  br i1 %i.hz, label %.split.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread

.split.i.i:                                       ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  tail call void @rb_error_arity(i32 noundef %i.hy, i32 noundef range(i32 0, -2147483648) 1, i32 noundef range(i32 -1, -2147483648) 1) #58
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread:   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %RHASH_EMPTY_P.exit.i, %bb.ac, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %i.ia = phi i32 [ %i.hy, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.hb, %bb.ac ], [ %i.hb, %RHASH_EMPTY_P.exit.i ], [ %i.hb, %rbimpl_RB_TYPE_P_fastpath.exit.i ] ; 2 uses
  %i.ib = icmp samesign ugt i32 %i.ia, 1
  br i1 %i.ib, label %.split9.i.i, label %vm_call_check_arity.exit

.split9.i.i:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread
  tail call void @rb_error_arity(i32 noundef %i.ia, i32 noundef range(i32 0, -2147483648) 1, i32 noundef range(i32 -1, -2147483648) 1) #58
  unreachable

vm_call_check_arity.exit:                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.thread
  %i.ic = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %.not197 = icmp eq i32 %i.ic, 0
  br i1 %.not197, label %bb.an, label %rb_ec_hooks.exit, !prof !72

rb_ec_hooks.exit:                                 ; preds = %vm_call_check_arity.exit
  %i.id = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val237 = load ptr, ptr %i.id, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ie = getelementptr i8, ptr %.val237, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !264 ; 2 uses
  %i.ig = getelementptr i8, ptr %i.if, i64 16
  %i.ih = getelementptr i8, ptr %i.if, i64 24
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !527
  %i.ij = and i32 %i.ii, 32
  %.not198 = icmp eq i32 %i.ij, 0
  br i1 %.not198, label %rb_ec_hooks.exit249, label %bb.ah, !prof !72

bb.ah:                                            ; preds = %rb_ec_hooks.exit
  %i.ik = getelementptr i8, ptr %1, i64 24
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !229
  %i.im = getelementptr i8, ptr %i.i, i64 32
  %i.in = load i64, ptr %i.im, align 8, !tbaa !205
  %i.io = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i246 = trunc i64 %i.io to i1
  br i1 %.not.i.i246, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ip = lshr i64 %i.io, 32
  br label %vm_ci_mid.exit

bb.aj:                                            ; preds = %bb.ah
  %i.iq = getelementptr i8, ptr %i.d, i64 16
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !163
  br label %vm_ci_mid.exit

vm_ci_mid.exit:                                   ; preds = %bb.ai, %bb.aj
  %.0.i = phi i64 [ %i.ip, %bb.ai ], [ %i.ir, %bb.aj ]
  %i.is = getelementptr i8, ptr %.val228, i64 32
  %i.it = load i64, ptr %i.is, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store i32 32, ptr %12, align 8, !tbaa !528
  %i.iu = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %0, ptr %i.iu, align 8, !tbaa !530
  %i.iv = getelementptr i8, ptr %0, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !70
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !531
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.il, ptr %i.iy, align 8, !tbaa !532
  %i.iz = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.in, ptr %i.iz, align 8, !tbaa !533
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 %.0.i, ptr %i.ja, align 8, !tbaa !693
  %i.jb = getelementptr inbounds nuw i8, ptr %12, i64 48
  store i64 %i.it, ptr %i.jb, align 8, !tbaa !694
  %i.jc = getelementptr inbounds nuw i8, ptr %12, i64 56
  store i64 36, ptr %i.jc, align 8, !tbaa !534
  %i.jd = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 36, ptr %i.jd, align 8, !tbaa !535
  %i.je = getelementptr inbounds nuw i8, ptr %12, i64 64
  store i32 0, ptr %i.je, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %12, ptr noundef %i.ig, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.val224.pre = load ptr, ptr %i.g, align 8, !tbaa !187
  %.phi.trans.insert443 = getelementptr i8, ptr %.val224.pre, i64 16
  %.pre444 = load ptr, ptr %.phi.trans.insert443, align 8, !tbaa !83
  br label %rb_ec_hooks.exit249

rb_ec_hooks.exit249:                              ; preds = %vm_ci_mid.exit, %rb_ec_hooks.exit
  %i.jf = phi ptr [ %.pre444, %vm_ci_mid.exit ], [ %i.i, %rb_ec_hooks.exit ]
  %i.jg = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !229
  %i.ji = getelementptr i8, ptr %i.jf, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !27
  %i.jk = load i64, ptr %2, align 8, !tbaa !11
  %i.jl = call i64 @rb_ivar_set(i64 noundef %i.jh, i64 noundef %i.jj, i64 noundef %i.jk) #23 ; 3 uses
  %.val236 = load ptr, ptr %i.id, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.jm = getelementptr i8, ptr %.val236, i64 24
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !264 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jn, i64 16
  %i.jp = getelementptr i8, ptr %i.jn, i64 24
  %i.jq = load i32, ptr %i.jp, align 8, !tbaa !527
  %i.jr = and i32 %i.jq, 64
  %.not199 = icmp eq i32 %i.jr, 0
  br i1 %.not199, label %vm_call0_cfunc.exit, label %bb.ak, !prof !72

bb.ak:                                            ; preds = %rb_ec_hooks.exit249
  %i.js = load i64, ptr %i.jg, align 8, !tbaa !229
  %.val223 = load ptr, ptr %i.g, align 8, !tbaa !187 ; 2 uses
  %i.jt = getelementptr i8, ptr %.val223, i64 16
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !83
  %i.jv = getelementptr i8, ptr %i.ju, i64 32
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !205
  %i.jx = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i250 = trunc i64 %i.jx to i1
  br i1 %.not.i.i250, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jy = lshr i64 %i.jx, 32
  br label %vm_ci_mid.exit252

bb.am:                                            ; preds = %bb.ak
  %i.jz = getelementptr i8, ptr %i.d, i64 16
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !163
  br label %vm_ci_mid.exit252

vm_ci_mid.exit252:                                ; preds = %bb.al, %bb.am
  %.0.i251 = phi i64 [ %i.jy, %bb.al ], [ %i.ka, %bb.am ]
  %i.kb = getelementptr i8, ptr %.val223, i64 32
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store i32 64, ptr %11, align 8, !tbaa !528
  %i.kd = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %0, ptr %i.kd, align 8, !tbaa !530
  %i.ke = getelementptr i8, ptr %0, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !70
  %i.kg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.kf, ptr %i.kg, align 8, !tbaa !531
  %i.kh = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.js, ptr %i.kh, align 8, !tbaa !532
  %i.ki = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.jw, ptr %i.ki, align 8, !tbaa !533
  %i.kj = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 %.0.i251, ptr %i.kj, align 8, !tbaa !693
  %i.kk = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i64 %i.kc, ptr %i.kk, align 8, !tbaa !694
  %i.kl = getelementptr inbounds nuw i8, ptr %11, i64 56
  store i64 %i.jl, ptr %i.kl, align 8, !tbaa !534
  %i.km = getelementptr inbounds nuw i8, ptr %11, i64 72
  store i64 36, ptr %i.km, align 8, !tbaa !535
  %i.kn = getelementptr inbounds nuw i8, ptr %11, i64 64
  store i32 0, ptr %i.kn, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %11, ptr noundef %i.jo, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %vm_call0_cfunc.exit

bb.an:                                            ; preds = %vm_call_check_arity.exit
  %i.ko = getelementptr i8, ptr %1, i64 24
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !229
  %i.kq = getelementptr i8, ptr %i.i, i64 8
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !27
  %i.ks = load i64, ptr %2, align 8, !tbaa !11
  %i.kt = tail call i64 @rb_ivar_set(i64 noundef %i.kp, i64 noundef %i.kr, i64 noundef %i.ks) #23
  br label %vm_call0_cfunc.exit

bb.ao:                                            ; preds = %bb.b
  %i.ku = getelementptr i8, ptr %1, i64 36
  %i.kv = load i8, ptr %i.ku, align 4, !tbaa !231, !range !114, !noundef !64
  %i.kw = trunc nuw i8 %i.kv to i1
  %i.kx = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !230 ; 9 uses
  %i.kz = icmp sgt i32 %i.ky, 0
  %or.cond.i253 = select i1 %i.kw, i1 %i.kz, i1 false
  br i1 %or.cond.i253, label %bb.ap, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254

bb.ap:                                            ; preds = %bb.ao
  %i.la = zext nneg i32 %i.ky to i64
  %i.lb = getelementptr [8 x i8], ptr %2, i64 %i.la
  %i.lc = getelementptr i8, ptr %i.lb, i64 -8
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !11 ; 4 uses
  %i.le = icmp eq i64 %i.ld, 0
  %i.lf = and i64 %i.ld, 7
  %i.lg = icmp ne i64 %i.lf, 0
  %i.lh = or i1 %i.le, %i.lg
  br i1 %i.lh, label %.split9.i.i255, label %rbimpl_RB_TYPE_P_fastpath.exit.i257

rbimpl_RB_TYPE_P_fastpath.exit.i257:              ; preds = %bb.ap
  %i.li = inttoptr i64 %i.ld to ptr
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !77 ; 3 uses
  %i.lk = and i64 %i.lj, 31
  %i.ll = icmp eq i64 %i.lk, 8
  br i1 %i.ll, label %bb.aq, label %.split9.i.i255

bb.aq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i257
  %i.lm = and i64 %i.lj, 32768
  %.not.i.i.i.i258 = icmp eq i64 %i.lm, 0
  br i1 %.not.i.i.i.i258, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.ln = lshr i64 %i.lj, 16
  %i.lo = and i64 %i.ln, 15
  br label %RHASH_EMPTY_P.exit.i259

bb.as:                                            ; preds = %bb.aq
  %i.lp = add i64 %i.ld, 24
  %i.lq = inttoptr i64 %i.lp to ptr
  %i.lr = getelementptr i8, ptr %i.lq, i64 16
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i259

RHASH_EMPTY_P.exit.i259:                          ; preds = %bb.as, %bb.ar
  %.0.i.i.i260 = phi i64 [ %i.lo, %bb.ar ], [ %i.ls, %bb.as ]
  %i.lt = icmp eq i64 %.0.i.i.i260, 0
  br i1 %i.lt, label %bb.at, label %.split9.i.i255

bb.at:                                            ; preds = %RHASH_EMPTY_P.exit.i259
  %i.lu = add nsw i32 %i.ky, -1                   ; 2 uses
  store i32 %i.lu, ptr %i.kx, align 8, !tbaa !230
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i254:       ; preds = %bb.ao
  %i.lv = icmp slt i32 %i.ky, 0
  br i1 %i.lv, label %.split.i.i256, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254.thread

.split.i.i256:                                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254
  tail call void @rb_error_arity(i32 noundef %i.ky, i32 noundef range(i32 0, -2147483648) 0, i32 noundef range(i32 -1, -2147483648) 0) #58
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread.i254.thread: ; preds = %bb.at, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254
  %i.lw = phi i32 [ %i.ky, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254 ], [ %i.lu, %bb.at ] ; 2 uses
  %.not347 = icmp eq i32 %i.lw, 0
  br i1 %.not347, label %vm_call_check_arity.exit261, label %.split9.i.i255

.split9.i.i255:                                   ; preds = %bb.ap, %RHASH_EMPTY_P.exit.i259, %rbimpl_RB_TYPE_P_fastpath.exit.i257, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254.thread
  %i.lx = phi i32 [ %i.lw, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254.thread ], [ %i.ky, %rbimpl_RB_TYPE_P_fastpath.exit.i257 ], [ %i.ky, %RHASH_EMPTY_P.exit.i259 ], [ %i.ky, %bb.ap ]
  tail call void @rb_error_arity(i32 noundef %i.lx, i32 noundef range(i32 0, -2147483648) 0, i32 noundef range(i32 -1, -2147483648) 0) #58
  unreachable

vm_call_check_arity.exit261:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i254.thread
  %i.ly = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %.not194 = icmp eq i32 %i.ly, 0
  br i1 %.not194, label %bb.ba, label %rb_ec_hooks.exit264, !prof !72

rb_ec_hooks.exit264:                              ; preds = %vm_call_check_arity.exit261
  %i.lz = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val235 = load ptr, ptr %i.lz, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ma = getelementptr i8, ptr %.val235, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !264 ; 2 uses
  %i.mc = getelementptr i8, ptr %i.mb, i64 16
  %i.md = getelementptr i8, ptr %i.mb, i64 24
  %i.me = load i32, ptr %i.md, align 8, !tbaa !527
  %i.mf = and i32 %i.me, 32
  %.not195 = icmp eq i32 %i.mf, 0
  br i1 %.not195, label %rb_ec_hooks.exit270, label %bb.au, !prof !72

bb.au:                                            ; preds = %rb_ec_hooks.exit264
  %i.mg = getelementptr i8, ptr %1, i64 24
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !229
  %i.mi = getelementptr i8, ptr %i.i, i64 32
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !205
  %i.mk = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i265 = trunc i64 %i.mk to i1
  br i1 %.not.i.i265, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ml = lshr i64 %i.mk, 32
  br label %vm_ci_mid.exit267

bb.aw:                                            ; preds = %bb.au
  %i.mm = getelementptr i8, ptr %i.d, i64 16
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !163
  br label %vm_ci_mid.exit267

vm_ci_mid.exit267:                                ; preds = %bb.av, %bb.aw
  %.0.i266 = phi i64 [ %i.ml, %bb.av ], [ %i.mn, %bb.aw ]
  %i.mo = getelementptr i8, ptr %.val228, i64 32
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store i32 32, ptr %10, align 8, !tbaa !528
  %i.mq = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %0, ptr %i.mq, align 8, !tbaa !530
  %i.mr = getelementptr i8, ptr %0, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !70
  %i.mt = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ms, ptr %i.mt, align 8, !tbaa !531
  %i.mu = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %i.mh, ptr %i.mu, align 8, !tbaa !532
  %i.mv = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.mj, ptr %i.mv, align 8, !tbaa !533
  %i.mw = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %.0.i266, ptr %i.mw, align 8, !tbaa !693
  %i.mx = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.mp, ptr %i.mx, align 8, !tbaa !694
  %i.my = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i64 36, ptr %i.my, align 8, !tbaa !534
  %i.mz = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i64 36, ptr %i.mz, align 8, !tbaa !535
  %i.na = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i32 0, ptr %i.na, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %10, ptr noundef %i.mc, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.val218.pre = load ptr, ptr %i.g, align 8, !tbaa !187
  %.phi.trans.insert = getelementptr i8, ptr %.val218.pre, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !83
  br label %rb_ec_hooks.exit270

rb_ec_hooks.exit270:                              ; preds = %vm_ci_mid.exit267, %rb_ec_hooks.exit264
  %i.nb = phi ptr [ %.pre, %vm_ci_mid.exit267 ], [ %i.i, %rb_ec_hooks.exit264 ]
  %i.nc = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !229
  %i.ne = getelementptr i8, ptr %i.nb, i64 8
  %i.nf = load i64, ptr %i.ne, align 8, !tbaa !27
  %i.ng = call i64 @rb_attr_get(i64 noundef %i.nd, i64 noundef %i.nf) #23 ; 3 uses
  %.val234 = load ptr, ptr %i.lz, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.nh = getelementptr i8, ptr %.val234, i64 24
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !264 ; 2 uses
  %i.nj = getelementptr i8, ptr %i.ni, i64 16
  %i.nk = getelementptr i8, ptr %i.ni, i64 24
  %i.nl = load i32, ptr %i.nk, align 8, !tbaa !527
  %i.nm = and i32 %i.nl, 64
  %.not196 = icmp eq i32 %i.nm, 0
  br i1 %.not196, label %vm_call0_cfunc.exit, label %bb.ax, !prof !72

bb.ax:                                            ; preds = %rb_ec_hooks.exit270
  %i.nn = load i64, ptr %i.nc, align 8, !tbaa !229
  %.val217 = load ptr, ptr %i.g, align 8, !tbaa !187 ; 2 uses
  %i.no = getelementptr i8, ptr %.val217, i64 16
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !83
  %i.nq = getelementptr i8, ptr %i.np, i64 32
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !205
  %i.ns = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i271 = trunc i64 %i.ns to i1
  br i1 %.not.i.i271, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.nt = lshr i64 %i.ns, 32
  br label %vm_ci_mid.exit273

bb.az:                                            ; preds = %bb.ax
  %i.nu = getelementptr i8, ptr %i.d, i64 16
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !163
  br label %vm_ci_mid.exit273

vm_ci_mid.exit273:                                ; preds = %bb.ay, %bb.az
  %.0.i272 = phi i64 [ %i.nt, %bb.ay ], [ %i.nv, %bb.az ]
  %i.nw = getelementptr i8, ptr %.val217, i64 32
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store i32 64, ptr %9, align 8, !tbaa !528
  %i.ny = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %0, ptr %i.ny, align 8, !tbaa !530
  %i.nz = getelementptr i8, ptr %0, i64 16
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !70
  %i.ob = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !531
  %i.oc = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i64 %i.nn, ptr %i.oc, align 8, !tbaa !532
  %i.od = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 %i.nr, ptr %i.od, align 8, !tbaa !533
  %i.oe = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i64 %.0.i272, ptr %i.oe, align 8, !tbaa !693
  %i.of = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i64 %i.nx, ptr %i.of, align 8, !tbaa !694
  %i.og = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i64 %i.ng, ptr %i.og, align 8, !tbaa !534
  %i.oh = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i64 36, ptr %i.oh, align 8, !tbaa !535
  %i.oi = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 0, ptr %i.oi, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %9, ptr noundef %i.nj, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %vm_call0_cfunc.exit

bb.ba:                                            ; preds = %vm_call_check_arity.exit261
  %i.oj = getelementptr i8, ptr %1, i64 24
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !229
  %i.ol = getelementptr i8, ptr %i.i, i64 8
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !27
  %i.on = tail call i64 @rb_attr_get(i64 noundef %i.ok, i64 noundef %i.om) #23
  br label %vm_call0_cfunc.exit

bb.bb:                                            ; preds = %bb.b
  %i.oo = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.op = getelementptr i8, ptr %i.oo, i64 16
  %.val20.i = load ptr, ptr %i.op, align 8, !tbaa !187 ; 2 uses
  %i.oq = getelementptr i8, ptr %.val20.i, i64 16
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !83 ; 2 uses
  %i.os = getelementptr i8, ptr %i.or, i64 8
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !27
  %i.ou = inttoptr i64 %i.ot to ptr               ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !77
  %i.ow = and i64 %i.ov, 256
  %.not.i = icmp eq i64 %i.ow, 0
  br i1 %.not.i, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ox = getelementptr i8, ptr %i.or, i64 16
  %i.oy = load i64, ptr %i.ox, align 8, !tbaa !27
  %i.oz = getelementptr i8, ptr %0, i64 64
  %.val.i = load i64, ptr %i.oz, align 8, !tbaa !427
  %.not17.i = icmp eq i64 %i.oy, %.val.i
  br i1 %.not17.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.pa = load i64, ptr @rb_eRuntimeError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.pa, ptr noundef nonnull @.str.159) #42, !inline_history !812
end_hunk_13
begin_hunk_14_@vm_call0_body:bb.a
  %i.rk = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.0.i281, ptr %i.rk, align 8, !tbaa !187
  %i.rl = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @vm_call_general, ptr %i.rl, align 8, !tbaa !234
  %i.rm = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.rm, align 8, !tbaa !443
  store ptr %8, ptr %i.e, align 8, !tbaa !233
  %i.rn = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2), !inline_history !852
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %rb_vm_check_ints.exit

bb.bw:                                            ; preds = %bb.bq
  %i.ro = getelementptr i8, ptr %.val228, i64 8
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !200
  %i.rq = tail call fastcc i64 @vm_call0_super(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %i.rp, i32 noundef 0)
  br label %rb_vm_check_ints.exit

bb.bx:                                            ; preds = %bb.b
  %i.rr = tail call fastcc ptr @aliased_callable_method_entry(ptr noundef nonnull %.val228) ; 4 uses
  %i.rs = icmp eq ptr %.val228, %i.rr
  br i1 %i.rs, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.231) #57
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.rt = load i64, ptr %i.f, align 8, !tbaa !77
  %i.ru = and i64 %i.rt, 1048576
  %.not346 = icmp eq i64 %i.ru, 0
  br i1 %.not346, label %.thread, label %bb.ca

.thread:                                          ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 3190810, ptr %7, align 8, !tbaa !442
  %i.rv = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 36, ptr %i.rv, align 8, !tbaa !185
  %i.rw = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.rr, ptr %i.rw, align 8, !tbaa !187
  %i.rx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr @vm_call_general, ptr %i.rx, align 8, !tbaa !234
  %i.ry = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 0, ptr %i.ry, align 8, !tbaa !443
  store ptr %7, ptr %i.e, align 8, !tbaa !233
  %i.rz = call fastcc i64 @vm_call0_body(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2), !inline_history !852
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %rb_vm_check_ints.exit

bb.ca:                                            ; preds = %bb.bz
  store ptr %i.rr, ptr %i.g, align 8, !tbaa !171
  br label %bb.b

bb.cb:                                            ; preds = %bb.b
  %i.sa = getelementptr i8, ptr %1, i64 16
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !228
  %i.sc = getelementptr i8, ptr %0, i64 136
  store i64 %i.sb, ptr %i.sc, align 8, !tbaa !441
  %i.sd = getelementptr i8, ptr %1, i64 24
  %i.se = load i64, ptr %i.sd, align 8, !tbaa !229
  %i.sf = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i282 = trunc i64 %i.sf to i1
  br i1 %.not.i.i282, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.sg = lshr i64 %i.sf, 32
  br label %vm_ci_mid.exit284

bb.cd:                                            ; preds = %bb.cb
  %i.sh = getelementptr i8, ptr %i.d, i64 16
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !163
  br label %vm_ci_mid.exit284

vm_ci_mid.exit284:                                ; preds = %bb.cc, %bb.cd
  %.0.i283 = phi i64 [ %i.sg, %bb.cc ], [ %i.si, %bb.cd ]
  %i.sj = getelementptr i8, ptr %1, i64 32
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !230
  %i.sl = getelementptr i8, ptr %1, i64 36
  %i.sm = load i8, ptr %i.sl, align 4, !tbaa !231, !range !114, !noundef !64
  %i.sn = zext nneg i8 %i.sm to i32
  %i.so = tail call fastcc i64 @method_missing(ptr noundef nonnull %0, i64 noundef %i.se, i64 noundef %.0.i283, i32 noundef %i.sk, ptr noundef %2, i32 noundef 0, i32 noundef %i.sn)
  br label %rb_vm_check_ints.exit

bb.ce:                                            ; preds = %bb.b
  %i.sp = getelementptr i8, ptr %i.i, i64 8
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.sq, label %bb.dv [
    i32 0, label %bb.cf
    i32 1, label %bb.cg
    i32 3, label %bb.cm
    i32 4, label %bb.de
  ]

bb.cf:                                            ; preds = %bb.ce
  %i.sr = getelementptr i8, ptr %1, i64 32
  %i.ss = load i32, ptr %i.sr, align 8, !tbaa !230
  %i.st = getelementptr i8, ptr %1, i64 24
  %i.su = load i64, ptr %i.st, align 8, !tbaa !229
  %i.sv = getelementptr i8, ptr %1, i64 36
  %i.sw = load i8, ptr %i.sv, align 4, !tbaa !231, !range !114, !noundef !64
  %i.sx = trunc nuw i8 %i.sw to i1
  %i.sy = select i1 %i.sx, i32 4, i32 1
  %i.sz = tail call fastcc i64 @send_internal(i32 noundef %i.ss, ptr noundef %2, i64 noundef %i.su, i32 noundef %i.sy)
  br label %vm_call0_cfunc.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ta = getelementptr i8, ptr %1, i64 24
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !229
  %i.tc = inttoptr i64 %i.tb to ptr
  %i.td = getelementptr i8, ptr %i.tc, i64 32
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !546 ; 4 uses
  %i.tf = getelementptr i8, ptr %1, i64 32
  %i.tg = load i32, ptr %i.tf, align 8, !tbaa !230 ; 2 uses
  %i.th = getelementptr i8, ptr %1, i64 36
  %i.ti = load i8, ptr %i.th, align 4, !tbaa !231, !range !114, !noundef !64
  %i.tj = zext nneg i8 %i.ti to i32               ; 2 uses
  %i.tk = getelementptr i8, ptr %1, i64 16
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !228 ; 2 uses
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %bb.ci, %bb.cg
  %.tr.i = phi ptr [ %i.te, %bb.cg ], [ %i.tr, %bb.ci ] ; 3 uses
  %i.tm = getelementptr i8, ptr %.tr.i, i64 24
  %.val.i341 = load i32, ptr %i.tm, align 8, !tbaa !458
  switch i32 %.val.i341, label %bb.cj [
    i32 0, label %bb.ch
    i32 1, label %bb.ch
    i32 3, label %bb.ci
    i32 2, label %vm_block_self.exit
  ]

bb.ch:                                            ; preds = %tailrecurse.i, %tailrecurse.i
  %i.tn = load i64, ptr %.tr.i, align 8, !tbaa !27
  br label %vm_block_self.exit

bb.ci:                                            ; preds = %tailrecurse.i
  %i.to = load i64, ptr %.tr.i, align 8, !tbaa !27
  %i.tp = inttoptr i64 %i.to to ptr
  %i.tq = getelementptr i8, ptr %i.tp, i64 32
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !456
  br label %tailrecurse.i

bb.cj:                                            ; preds = %tailrecurse.i
  unreachable

vm_block_self.exit:                               ; preds = %tailrecurse.i, %bb.ch
  %.0.i342 = phi i64 [ %i.tn, %bb.ch ], [ 36, %tailrecurse.i ] ; 2 uses
  %i.ts = getelementptr i8, ptr %i.te, i64 32
  %i.tt = load i8, ptr %i.ts, align 8
  %i.tu = and i8 %i.tt, 1
  %.not.i285 = icmp eq i8 %i.tu, 0
  br i1 %.not.i285, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %vm_block_self.exit
  %i.tv = tail call fastcc i64 @vm_invoke_bmethod(ptr noundef %0, ptr noundef nonnull %i.te, i64 noundef %.0.i342, i32 noundef %i.tg, ptr noundef %2, i32 noundef %i.tj, i64 noundef %i.tl, ptr noundef null), !inline_history !853
  br label %vm_call0_cfunc.exit

bb.cl:                                            ; preds = %vm_block_self.exit
  %i.tw = tail call fastcc i64 @vm_invoke_proc(ptr noundef %0, ptr noundef nonnull %i.te, i64 noundef %.0.i342, i32 noundef %i.tg, ptr noundef %2, i32 noundef %i.tj, i64 noundef %i.tl), !inline_history !853
  br label %vm_call0_cfunc.exit

bb.cm:                                            ; preds = %bb.ce
  %i.tx = getelementptr i8, ptr %1, i64 36
  %i.ty = load i8, ptr %i.tx, align 4, !tbaa !231, !range !114, !noundef !64
  %i.tz = trunc nuw i8 %i.ty to i1
  %i.ua = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.ub = load i32, ptr %i.ua, align 8, !tbaa !230 ; 9 uses
  %i.uc = icmp sgt i32 %i.ub, 0
  %or.cond.i287 = select i1 %i.tz, i1 %i.uc, i1 false
  br i1 %or.cond.i287, label %bb.cn, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288

bb.cn:                                            ; preds = %bb.cm
  %i.ud = zext nneg i32 %i.ub to i64
  %i.ue = getelementptr [8 x i8], ptr %2, i64 %i.ud
  %i.uf = getelementptr i8, ptr %i.ue, i64 -8
  %i.ug = load i64, ptr %i.uf, align 8, !tbaa !11 ; 4 uses
  %i.uh = icmp eq i64 %i.ug, 0
  %i.ui = and i64 %i.ug, 7
  %i.uj = icmp ne i64 %i.ui, 0
  %i.uk = or i1 %i.uh, %i.uj
  br i1 %i.uk, label %.split9.i.i289, label %rbimpl_RB_TYPE_P_fastpath.exit.i291

rbimpl_RB_TYPE_P_fastpath.exit.i291:              ; preds = %bb.cn
  %i.ul = inttoptr i64 %i.ug to ptr
  %i.um = load i64, ptr %i.ul, align 8, !tbaa !77 ; 3 uses
  %i.un = and i64 %i.um, 31
  %i.uo = icmp eq i64 %i.un, 8
  br i1 %i.uo, label %bb.co, label %.split9.i.i289

bb.co:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i291
  %i.up = and i64 %i.um, 32768
  %.not.i.i.i.i292 = icmp eq i64 %i.up, 0
  br i1 %.not.i.i.i.i292, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.uq = lshr i64 %i.um, 16
  %i.ur = and i64 %i.uq, 15
  br label %RHASH_EMPTY_P.exit.i293

bb.cq:                                            ; preds = %bb.co
  %i.us = add i64 %i.ug, 24
  %i.ut = inttoptr i64 %i.us to ptr
  %i.uu = getelementptr i8, ptr %i.ut, i64 16
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i293

RHASH_EMPTY_P.exit.i293:                          ; preds = %bb.cq, %bb.cp
  %.0.i.i.i294 = phi i64 [ %i.ur, %bb.cp ], [ %i.uv, %bb.cq ]
  %i.uw = icmp eq i64 %.0.i.i.i294, 0
  br i1 %i.uw, label %bb.cr, label %.split9.i.i289

bb.cr:                                            ; preds = %RHASH_EMPTY_P.exit.i293
  %i.ux = add nsw i32 %i.ub, -1                   ; 2 uses
  store i32 %i.ux, ptr %i.ua, align 8, !tbaa !230
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread.i288:       ; preds = %bb.cm
  %i.uy = icmp slt i32 %i.ub, 0
  br i1 %i.uy, label %.split.i.i290, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288.thread

.split.i.i290:                                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288
  tail call void @rb_error_arity(i32 noundef %i.ub, i32 noundef range(i32 0, -2147483648) 0, i32 noundef range(i32 -1, -2147483648) 0) #58
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread.i288.thread: ; preds = %bb.cr, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288
  %i.uz = phi i32 [ %i.ub, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288 ], [ %i.ux, %bb.cr ] ; 2 uses
  %.not345 = icmp eq i32 %i.uz, 0
  br i1 %.not345, label %vm_call_check_arity.exit295, label %.split9.i.i289

.split9.i.i289:                                   ; preds = %bb.cn, %RHASH_EMPTY_P.exit.i293, %rbimpl_RB_TYPE_P_fastpath.exit.i291, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288.thread
  %i.va = phi i32 [ %i.uz, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288.thread ], [ %i.ub, %rbimpl_RB_TYPE_P_fastpath.exit.i291 ], [ %i.ub, %RHASH_EMPTY_P.exit.i293 ], [ %i.ub, %bb.cn ]
  tail call void @rb_error_arity(i32 noundef %i.va, i32 noundef range(i32 0, -2147483648) 0, i32 noundef range(i32 -1, -2147483648) 0) #58
  unreachable

vm_call_check_arity.exit295:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i288.thread
  %i.vb = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %.not189 = icmp eq i32 %i.vb, 0
  br i1 %.not189, label %bb.db, label %rb_ec_hooks.exit298, !prof !72

rb_ec_hooks.exit298:                              ; preds = %vm_call_check_arity.exit295
  %i.vc = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val233 = load ptr, ptr %i.vc, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.vd = getelementptr i8, ptr %.val233, i64 24
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !264 ; 2 uses
  %i.vf = getelementptr i8, ptr %i.ve, i64 16
  %i.vg = getelementptr i8, ptr %i.ve, i64 24
  %i.vh = load i32, ptr %i.vg, align 8, !tbaa !527
  %i.vi = and i32 %i.vh, 32
  %.not190 = icmp eq i32 %i.vi, 0
  br i1 %.not190, label %bb.cv, label %bb.cs, !prof !72

bb.cs:                                            ; preds = %rb_ec_hooks.exit298
  %i.vj = getelementptr i8, ptr %1, i64 24
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !229
  %i.vl = getelementptr i8, ptr %i.i, i64 32
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !205
  %i.vn = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i299 = trunc i64 %i.vn to i1
  br i1 %.not.i.i299, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.vo = lshr i64 %i.vn, 32
  br label %vm_ci_mid.exit301

bb.cu:                                            ; preds = %bb.cs
  %i.vp = getelementptr i8, ptr %i.d, i64 16
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !163
  br label %vm_ci_mid.exit301

vm_ci_mid.exit301:                                ; preds = %bb.ct, %bb.cu
  %.0.i300 = phi i64 [ %i.vo, %bb.ct ], [ %i.vq, %bb.cu ]
  %i.vr = getelementptr i8, ptr %.val228, i64 32
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store i32 32, ptr %6, align 8, !tbaa !528
  %i.vt = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.vt, align 8, !tbaa !530
  %i.vu = getelementptr i8, ptr %0, i64 16
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !70
  %i.vw = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.vv, ptr %i.vw, align 8, !tbaa !531
  %i.vx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.vk, ptr %i.vx, align 8, !tbaa !532
  %i.vy = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 %i.vm, ptr %i.vy, align 8, !tbaa !533
  %i.vz = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %.0.i300, ptr %i.vz, align 8, !tbaa !693
  %i.wa = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 %i.vs, ptr %i.wa, align 8, !tbaa !694
  %i.wb = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i64 36, ptr %i.wb, align 8, !tbaa !534
  %i.wc = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 36, ptr %i.wc, align 8, !tbaa !535
  %i.wd = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.wd, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %6, ptr noundef %i.vf, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.cv

bb.cv:                                            ; preds = %vm_ci_mid.exit301, %rb_ec_hooks.exit298
  %.val241 = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.we = getelementptr i8, ptr %1, i64 24
  %.val242 = load i64, ptr %i.we, align 8, !tbaa !229 ; 2 uses
  %i.wf = getelementptr i8, ptr %.val241, i64 16
  %.val241.val = load ptr, ptr %i.wf, align 8, !tbaa !187
  %i.wg = getelementptr i8, ptr %.val241.val, i64 16
  %.val241.val.val = load ptr, ptr %i.wg, align 8, !tbaa !83
  %i.wh = getelementptr i8, ptr %.val241.val.val, i64 12
  %.val241.val.val.val = load i32, ptr %i.wh, align 4, !tbaa !27
  %i.wi = inttoptr i64 %.val242 to ptr            ; 3 uses
  %i.wj = load i64, ptr %i.wi, align 8, !tbaa !77
  %i.wk = and i64 %i.wj, 1040384
  %.not.i.i.i302 = icmp eq i64 %i.wk, 0
  br i1 %.not.i.i.i302, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.wl = getelementptr i8, ptr %i.wi, i64 16
  br label %vm_call_opt_struct_aref0.exit

bb.cx:                                            ; preds = %bb.cv
  %i.wm = getelementptr i8, ptr %i.wi, i64 24
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !27
  br label %vm_call_opt_struct_aref0.exit

vm_call_opt_struct_aref0.exit:                    ; preds = %bb.cw, %bb.cx
  %.0.i.i.i303 = phi ptr [ %i.wl, %bb.cw ], [ %i.wn, %bb.cx ]
  %i.wo = zext i32 %.val241.val.val.val to i64
  %i.wp = getelementptr [8 x i8], ptr %.0.i.i.i303, i64 %i.wo
  %i.wq = load i64, ptr %i.wp, align 8, !tbaa !11 ; 3 uses
  %.val232 = load ptr, ptr %i.vc, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.wr = getelementptr i8, ptr %.val232, i64 24
  %i.ws = load ptr, ptr %i.wr, align 8, !tbaa !264 ; 2 uses
  %i.wt = getelementptr i8, ptr %i.ws, i64 16
  %i.wu = getelementptr i8, ptr %i.ws, i64 24
  %i.wv = load i32, ptr %i.wu, align 8, !tbaa !527
  %i.ww = and i32 %i.wv, 64
  %.not191 = icmp eq i32 %i.ww, 0
  br i1 %.not191, label %vm_call0_cfunc.exit, label %bb.cy, !prof !72

bb.cy:                                            ; preds = %vm_call_opt_struct_aref0.exit
  %.val208 = load ptr, ptr %i.g, align 8, !tbaa !187 ; 2 uses
  %i.wx = getelementptr i8, ptr %.val208, i64 16
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !83
  %i.wz = getelementptr i8, ptr %i.wy, i64 32
  %i.xa = load i64, ptr %i.wz, align 8, !tbaa !205
  %i.xb = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i307 = trunc i64 %i.xb to i1
  br i1 %.not.i.i307, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.xc = lshr i64 %i.xb, 32
  br label %vm_ci_mid.exit309

bb.da:                                            ; preds = %bb.cy
  %i.xd = getelementptr i8, ptr %i.d, i64 16
  %i.xe = load i64, ptr %i.xd, align 8, !tbaa !163
  br label %vm_ci_mid.exit309

vm_ci_mid.exit309:                                ; preds = %bb.cz, %bb.da
  %.0.i308 = phi i64 [ %i.xc, %bb.cz ], [ %i.xe, %bb.da ]
  %i.xf = getelementptr i8, ptr %.val208, i64 32
  %i.xg = load i64, ptr %i.xf, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store i32 64, ptr %5, align 8, !tbaa !528
  %i.xh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %0, ptr %i.xh, align 8, !tbaa !530
  %i.xi = getelementptr i8, ptr %0, i64 16
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !70
  %i.xk = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.xj, ptr %i.xk, align 8, !tbaa !531
  %i.xl = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %.val242, ptr %i.xl, align 8, !tbaa !532
  %i.xm = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %i.xa, ptr %i.xm, align 8, !tbaa !533
  %i.xn = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 %.0.i308, ptr %i.xn, align 8, !tbaa !693
  %i.xo = getelementptr inbounds nuw i8, ptr %5, i64 48
  store i64 %i.xg, ptr %i.xo, align 8, !tbaa !694
  %i.xp = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i64 %i.wq, ptr %i.xp, align 8, !tbaa !534
  %i.xq = getelementptr inbounds nuw i8, ptr %5, i64 72
  store i64 36, ptr %i.xq, align 8, !tbaa !535
  %i.xr = getelementptr inbounds nuw i8, ptr %5, i64 64
  store i32 0, ptr %i.xr, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %5, ptr noundef %i.wt, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %vm_call0_cfunc.exit

bb.db:                                            ; preds = %vm_call_check_arity.exit295
  %.val239 = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.xs = getelementptr i8, ptr %1, i64 24
  %.val240 = load i64, ptr %i.xs, align 8, !tbaa !229
  %i.xt = getelementptr i8, ptr %.val239, i64 16
  %.val239.val = load ptr, ptr %i.xt, align 8, !tbaa !187
  %i.xu = getelementptr i8, ptr %.val239.val, i64 16
  %.val239.val.val = load ptr, ptr %i.xu, align 8, !tbaa !83
  %i.xv = getelementptr i8, ptr %.val239.val.val, i64 12
  %.val239.val.val.val = load i32, ptr %i.xv, align 4, !tbaa !27
  %i.xw = inttoptr i64 %.val240 to ptr            ; 3 uses
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !77
  %i.xy = and i64 %i.xx, 1040384
  %.not.i.i.i310 = icmp eq i64 %i.xy, 0
  br i1 %.not.i.i.i310, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xz = getelementptr i8, ptr %i.xw, i64 16
  br label %vm_call_opt_struct_aref0.exit312

bb.dd:                                            ; preds = %bb.db
  %i.ya = getelementptr i8, ptr %i.xw, i64 24
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !27
  br label %vm_call_opt_struct_aref0.exit312

vm_call_opt_struct_aref0.exit312:                 ; preds = %bb.dc, %bb.dd
  %.0.i.i.i311 = phi ptr [ %i.xz, %bb.dc ], [ %i.yb, %bb.dd ]
  %i.yc = zext i32 %.val239.val.val.val to i64
  %i.yd = getelementptr [8 x i8], ptr %.0.i.i.i311, i64 %i.yc
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !11
  br label %vm_call0_cfunc.exit

bb.de:                                            ; preds = %bb.ce
  %i.yf = getelementptr i8, ptr %1, i64 36
  %i.yg = load i8, ptr %i.yf, align 4, !tbaa !231, !range !114, !noundef !64
  %i.yh = trunc nuw i8 %i.yg to i1
  %i.yi = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.yj = load i32, ptr %i.yi, align 8, !tbaa !230 ; 7 uses
  %i.yk = icmp sgt i32 %i.yj, 0
  %or.cond.i313 = select i1 %i.yh, i1 %i.yk, i1 false
  br i1 %or.cond.i313, label %bb.df, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314

bb.df:                                            ; preds = %bb.de
  %i.yl = zext nneg i32 %i.yj to i64
  %i.ym = getelementptr [8 x i8], ptr %2, i64 %i.yl
  %i.yn = getelementptr i8, ptr %i.ym, i64 -8
  %i.yo = load i64, ptr %i.yn, align 8, !tbaa !11 ; 4 uses
  %i.yp = icmp eq i64 %i.yo, 0
  %i.yq = and i64 %i.yo, 7
  %i.yr = icmp ne i64 %i.yq, 0
  %i.ys = or i1 %i.yp, %i.yr
  br i1 %i.ys, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i317

rbimpl_RB_TYPE_P_fastpath.exit.i317:              ; preds = %bb.df
  %i.yt = inttoptr i64 %i.yo to ptr
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !77 ; 3 uses
  %i.yv = and i64 %i.yu, 31
  %i.yw = icmp eq i64 %i.yv, 8
  br i1 %i.yw, label %bb.dg, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314.thread

bb.dg:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i317
  %i.yx = and i64 %i.yu, 32768
  %.not.i.i.i.i318 = icmp eq i64 %i.yx, 0
  br i1 %.not.i.i.i.i318, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.yy = lshr i64 %i.yu, 16
  %i.yz = and i64 %i.yy, 15
  br label %RHASH_EMPTY_P.exit.i319

bb.di:                                            ; preds = %bb.dg
  %i.za = add i64 %i.yo, 24
  %i.zb = inttoptr i64 %i.za to ptr
  %i.zc = getelementptr i8, ptr %i.zb, i64 16
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !315
  br label %RHASH_EMPTY_P.exit.i319

RHASH_EMPTY_P.exit.i319:                          ; preds = %bb.di, %bb.dh
  %.0.i.i.i320 = phi i64 [ %i.yz, %bb.dh ], [ %i.zd, %bb.di ]
  %i.ze = icmp eq i64 %.0.i.i.i320, 0
  br i1 %i.ze, label %bb.dj, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314.thread

bb.dj:                                            ; preds = %RHASH_EMPTY_P.exit.i319
  %i.zf = add nsw i32 %i.yj, -1                   ; 2 uses
  store i32 %i.zf, ptr %i.yi, align 8, !tbaa !230
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314

rbimpl_RB_TYPE_P_fastpath.exit.thread.i314:       ; preds = %bb.dj, %bb.de
  %i.zg = phi i32 [ %i.yj, %bb.de ], [ %i.zf, %bb.dj ] ; 3 uses
  %i.zh = icmp slt i32 %i.zg, 1
  br i1 %i.zh, label %.split.i.i316, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314.thread

.split.i.i316:                                    ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314
  tail call void @rb_error_arity(i32 noundef %i.zg, i32 noundef range(i32 0, -2147483648) 1, i32 noundef range(i32 -1, -2147483648) 1) #58
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.thread.i314.thread: ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i317, %RHASH_EMPTY_P.exit.i319, %bb.df, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314
  %i.zi = phi i32 [ %i.zg, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314 ], [ %i.yj, %bb.df ], [ %i.yj, %RHASH_EMPTY_P.exit.i319 ], [ %i.yj, %rbimpl_RB_TYPE_P_fastpath.exit.i317 ] ; 2 uses
  %i.zj = icmp samesign ugt i32 %i.zi, 1
  br i1 %i.zj, label %.split9.i.i315, label %vm_call_check_arity.exit321

.split9.i.i315:                                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314.thread
  tail call void @rb_error_arity(i32 noundef %i.zi, i32 noundef range(i32 0, -2147483648) 1, i32 noundef range(i32 -1, -2147483648) 1) #58
  unreachable

vm_call_check_arity.exit321:                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i314.thread
  %i.zk = load i32, ptr @ruby_vm_c_events_enabled, align 4, !tbaa !7
  %.not = icmp eq i32 %i.zk, 0
  br i1 %.not, label %bb.dq, label %rb_ec_hooks.exit324, !prof !72

rb_ec_hooks.exit324:                              ; preds = %vm_call_check_arity.exit321
  %i.zl = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %.val231 = load ptr, ptr %i.zl, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.zm = getelementptr i8, ptr %.val231, i64 24
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !264 ; 2 uses
  %i.zo = getelementptr i8, ptr %i.zn, i64 16
  %i.zp = getelementptr i8, ptr %i.zn, i64 24
  %i.zq = load i32, ptr %i.zp, align 8, !tbaa !527
  %i.zr = and i32 %i.zq, 32
  %.not187 = icmp eq i32 %i.zr, 0
  br i1 %.not187, label %rb_ec_hooks.exit330, label %bb.dk, !prof !72

bb.dk:                                            ; preds = %rb_ec_hooks.exit324
  %i.zs = getelementptr i8, ptr %1, i64 24
  %i.zt = load i64, ptr %i.zs, align 8, !tbaa !229
  %i.zu = getelementptr i8, ptr %i.i, i64 32
  %i.zv = load i64, ptr %i.zu, align 8, !tbaa !205
  %i.zw = ptrtoint ptr %i.d to i64                ; 2 uses
  %.not.i.i325 = trunc i64 %i.zw to i1
  br i1 %.not.i.i325, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.zx = lshr i64 %i.zw, 32
  br label %vm_ci_mid.exit327

bb.dm:                                            ; preds = %bb.dk
  %i.zy = getelementptr i8, ptr %i.d, i64 16
  %i.zz = load i64, ptr %i.zy, align 8, !tbaa !163
  br label %vm_ci_mid.exit327

vm_ci_mid.exit327:                                ; preds = %bb.dl, %bb.dm
  %.0.i326 = phi i64 [ %i.zx, %bb.dl ], [ %i.zz, %bb.dm ]
  %i.aaa = getelementptr i8, ptr %.val228, i64 32
  %i.aab = load i64, ptr %i.aaa, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store i32 32, ptr %4, align 8, !tbaa !528
  %i.aac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.aac, align 8, !tbaa !530
  %i.aad = getelementptr i8, ptr %0, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !70
  %i.aaf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.aae, ptr %i.aaf, align 8, !tbaa !531
  %i.aag = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.zt, ptr %i.aag, align 8, !tbaa !532
  %i.aah = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.zv, ptr %i.aah, align 8, !tbaa !533
  %i.aai = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.0.i326, ptr %i.aai, align 8, !tbaa !693
  %i.aaj = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.aab, ptr %i.aaj, align 8, !tbaa !694
  %i.aak = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i64 36, ptr %i.aak, align 8, !tbaa !534
  %i.aal = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i64 36, ptr %i.aal, align 8, !tbaa !535
  %i.aam = getelementptr inbounds nuw i8, ptr %4, i64 64
  store i32 0, ptr %i.aam, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %4, ptr noundef %i.zo, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %rb_ec_hooks.exit330

rb_ec_hooks.exit330:                              ; preds = %vm_ci_mid.exit327, %rb_ec_hooks.exit324
  %i.aan = load i64, ptr %2, align 8, !tbaa !11   ; 4 uses
  %i.aao = call fastcc i64 @vm_call_opt_struct_aset0(ptr noundef nonnull %1, i64 noundef %i.aan) ; 0 uses
  %.val230 = load ptr, ptr %i.zl, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.aap = getelementptr i8, ptr %.val230, i64 24
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !264 ; 2 uses
  %i.aar = getelementptr i8, ptr %i.aaq, i64 16
  %i.aas = getelementptr i8, ptr %i.aaq, i64 24
  %i.aat = load i32, ptr %i.aas, align 8, !tbaa !527
  %i.aau = and i32 %i.aat, 64
  %.not188 = icmp eq i32 %i.aau, 0
  br i1 %.not188, label %vm_call0_cfunc.exit, label %bb.dn, !prof !72

bb.dn:                                            ; preds = %rb_ec_hooks.exit330
  %i.aav = getelementptr i8, ptr %1, i64 24
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !229
  %.val204 = load ptr, ptr %i.g, align 8, !tbaa !187 ; 2 uses
  %i.aax = getelementptr i8, ptr %.val204, i64 16
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !83
  %i.aaz = getelementptr i8, ptr %i.aay, i64 32
  %i.aba = load i64, ptr %i.aaz, align 8, !tbaa !205
  %i.abb = ptrtoint ptr %i.d to i64               ; 2 uses
  %.not.i.i331 = trunc i64 %i.abb to i1
  br i1 %.not.i.i331, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.abc = lshr i64 %i.abb, 32
  br label %vm_ci_mid.exit333

bb.dp:                                            ; preds = %bb.dn
  %i.abd = getelementptr i8, ptr %i.d, i64 16
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !163
  br label %vm_ci_mid.exit333

vm_ci_mid.exit333:                                ; preds = %bb.do, %bb.dp
  %.0.i332 = phi i64 [ %i.abc, %bb.do ], [ %i.abe, %bb.dp ]
  %i.abf = getelementptr i8, ptr %.val204, i64 32
  %i.abg = load i64, ptr %i.abf, align 8, !tbaa !405
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store i32 64, ptr %3, align 8, !tbaa !528
  %i.abh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.abh, align 8, !tbaa !530
  %i.abi = getelementptr i8, ptr %0, i64 16
  %i.abj = load ptr, ptr %i.abi, align 8, !tbaa !70
  %i.abk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.abj, ptr %i.abk, align 8, !tbaa !531
  %i.abl = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.aaw, ptr %i.abl, align 8, !tbaa !532
  %i.abm = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.aba, ptr %i.abm, align 8, !tbaa !533
  %i.abn = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %.0.i332, ptr %i.abn, align 8, !tbaa !693
  %i.abo = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.abg, ptr %i.abo, align 8, !tbaa !694
  %i.abp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.aan, ptr %i.abp, align 8, !tbaa !534
  %i.abq = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i64 36, ptr %i.abq, align 8, !tbaa !535
  %i.abr = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i32 0, ptr %i.abr, align 8, !tbaa !536
  call void @rb_exec_event_hooks(ptr noundef nonnull %3, ptr noundef %i.aar, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %vm_call0_cfunc.exit

bb.dq:                                            ; preds = %vm_call_check_arity.exit321
  %i.abs = load i64, ptr %2, align 8, !tbaa !11   ; 6 uses
  %i.abt = getelementptr i8, ptr %1, i64 24
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !229 ; 6 uses
  %i.abv = icmp ne i64 %i.abu, 0
  %i.abw = and i64 %i.abu, 7
  %i.abx = icmp eq i64 %i.abw, 0
  %.not3.i.i.i = and i1 %i.abv, %i.abx
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !168

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.dq
  %i.aby = inttoptr i64 %i.abu to ptr             ; 4 uses
  %i.abz = load i64, ptr %i.aby, align 8, !tbaa !77 ; 4 uses
  %i.aca = and i64 %i.abz, 2048
  %.not.i.i334 = icmp eq i64 %i.aca, 0
  br i1 %.not.i.i334, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i335, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !369

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.dq
  tail call void @rb_error_frozen_object(i64 noundef %i.abu) #42
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i335:            ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.acb = and i64 %i.abz, 31
  %i.acc = icmp ne i64 %i.acb, 5
  %i.acd = and i64 %i.abz, 49152
  %.not8.i.i = icmp eq i64 %i.acd, 0
  %or.cond.i.i = or i1 %i.acc, %.not8.i.i
  br i1 %or.cond.i.i, label %rb_check_frozen_inline.exit.i, label %bb.dr, !prof !455

bb.dr:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i335
  tail call void @rb_str_modify(i64 noundef %i.abu) #23
  %.pre.i = load i64, ptr %i.aby, align 8, !tbaa !77
  br label %rb_check_frozen_inline.exit.i

rb_check_frozen_inline.exit.i:                    ; preds = %bb.dr, %rbimpl_RB_TYPE_P_fastpath.exit.i.i335
  %i.ace = phi i64 [ %i.abz, %rbimpl_RB_TYPE_P_fastpath.exit.i.i335 ], [ %.pre.i, %bb.dr ]
  %i.acf = load ptr, ptr %i.e, align 8, !tbaa !233
  %i.acg = getelementptr i8, ptr %i.acf, i64 16
  %.val.i336 = load ptr, ptr %i.acg, align 8, !tbaa !187
end_hunk_14
begin_hunk_15_@send_internal
define internal fastcc i64 @send_internal(i32 noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef range(i32 0, 5) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 0, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28
  store volatile ptr %i.e, ptr %i.a, align 8, !tbaa !28
  %.0..0..0..0..0..0..i = load volatile ptr, ptr %i.a, align 8, !tbaa !28 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i32 %3, label %bb.b [
    i32 3, label %bb.c
    i32 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !70
  %i.h = getelementptr i8, ptr %i.g, i64 80
  %i.i = load i64, ptr %i.h, align 8, !tbaa !74
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.b
  %.040 = phi i64 [ %i.i, %bb.b ], [ 36, %bb.a ], [ 36, %bb.a ]
  %i.j = icmp eq i32 %0, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.k, ptr noundef nonnull @.str.161) #42
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.l = load i64, ptr %1, align 8, !tbaa !11
  store i64 %i.l, ptr %i.b, align 8, !tbaa !11
  %i.m = call i64 @rb_check_id(ptr noundef nonnull %i.b) #23 ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.w

bb.f:                                             ; preds = %bb.e
  %i.n = icmp eq i64 %2, 0
  %i.o = and i64 %2, 7
  %i.p = icmp ne i64 %i.o, 0
  %i.q = or i1 %i.n, %i.p
  br i1 %i.q, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = inttoptr i64 %2 to ptr
  %i.s = getelementptr i8, ptr %i.r, i64 8
  br label %rb_class_of.exit

bb.h:                                             ; preds = %bb.f
  switch i64 %2, label %bb.k [
    i64 0, label %rb_class_of.exit
    i64 4, label %bb.i
    i64 20, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  br label %rb_class_of.exit

bb.j:                                             ; preds = %bb.h
  br label %rb_class_of.exit

bb.k:                                             ; preds = %bb.h
  %i.t = trunc i64 %2 to i1
  br i1 %i.t, label %rb_class_of.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = and i64 %2, 254
  %i.v = icmp eq i64 %i.u, 12
  %spec.select.i = select i1 %i.v, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit

rb_class_of.exit:                                 ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.in.i = phi ptr [ %i.s, %bb.g ], [ @rb_cNilClass, %bb.i ], [ @rb_cTrueClass, %bb.j ], [ @rb_cFalseClass, %bb.h ], [ @rb_cInteger, %bb.k ], [ %spec.select.i, %bb.l ]
  %.0.i = load i64, ptr %.0.in.i, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq i64 %.0.i, 0
  br i1 %.not.i, label %rb_method_basic_definition_p.exit.thread57, label %bb.m

bb.m:                                             ; preds = %rb_class_of.exit
  %i.w = call fastcc ptr @callable_method_entry_or_negative(i64 noundef %.0.i, i64 noundef 2913, ptr noundef null) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %rb_method_basic_definition_p.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !83   ; 2 uses
  %.not7.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not7.i.i.i, label %rb_method_basic_definition_p.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 15
  %i.ab = icmp eq i8 %i.aa, 7
  br i1 %i.ab, label %rb_method_basic_definition_p.exit.thread, label %rb_method_basic_definition_p.exit

rb_method_basic_definition_p.exit:                ; preds = %bb.o
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !170
  %i.ad = and i64 %i.ac, 262144
  %.not46 = icmp eq i64 %i.ad, 0
  br i1 %.not46, label %rb_method_basic_definition_p.exit.thread, label %rb_method_basic_definition_p.exit.thread57

rb_method_basic_definition_p.exit.thread57:       ; preds = %rb_class_of.exit, %rb_method_basic_definition_p.exit
  %i.ae = icmp ne i32 %3, 0
  %i.af = icmp ne i32 %3, 3
  %.not50 = and i1 %i.ae, %i.af
  %i.ag = load i64, ptr @rb_eNoMethodError, align 8, !tbaa !11
  %i.ah = zext i1 %.not50 to i32
  %i.ai = call i64 @rb_make_no_method_exception(i64 noundef %i.ag, i64 noundef 0, i64 noundef %2, i32 noundef %0, ptr noundef nonnull %1, i32 noundef %i.ah)
  call void @rb_exc_raise(i64 noundef %i.ai) #42
  unreachable

rb_method_basic_definition_p.exit.thread:         ; preds = %bb.o, %bb.n, %bb.m, %rb_method_basic_definition_p.exit
  %i.aj = load i64, ptr %1, align 8, !tbaa !11    ; 4 uses
  %i.ak = and i64 %i.aj, 255
  %i.al = icmp eq i64 %i.ak, 12
  br i1 %i.al, label %ruby_nonempty_memcpy.exit, label %bb.p

bb.p:                                             ; preds = %rb_method_basic_definition_p.exit.thread
  %i.am = icmp eq i64 %i.aj, 0
  %i.an = and i64 %i.aj, 7
  %i.ao = icmp ne i64 %i.an, 0
  %i.ap = or i1 %i.am, %i.ao
  br i1 %i.ap, label %RB_SYMBOL_P.exit.thread60, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.p
  %i.aq = inttoptr i64 %i.aj to ptr
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !77
  %i.as = and i64 %i.ar, 31
  %i.at = icmp eq i64 %i.as, 20
  br i1 %i.at, label %ruby_nonempty_memcpy.exit, label %RB_SYMBOL_P.exit.thread60

RB_SYMBOL_P.exit.thread60:                        ; preds = %bb.p, %RB_SYMBOL_P.exit
  %i.au = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 56
  %.val.i = load ptr, ptr %.0..0..0..0..0..0..i, align 8, !tbaa !121
  %i.ax = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 8
  %.val9.i = load i64, ptr %i.ax, align 8, !tbaa !122
  %i.ay = getelementptr [8 x i8], ptr %.val.i, i64 %.val9.i
  %.not10.i = icmp ugt ptr %i.ay, %i.aw
  br i1 %.not10.i, label %bb.q, label %current_vm_stack_arg.exit

bb.q:                                             ; preds = %RB_SYMBOL_P.exit.thread60
  %i.az = getelementptr i8, ptr %i.av, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !73
  %i.bb = getelementptr i8, ptr %i.ba, i64 8      ; 2 uses
  %.not8.i = icmp eq ptr %i.bb, %1
  %spec.select = select i1 %.not8.i, ptr %i.bb, ptr null
  br label %current_vm_stack_arg.exit

current_vm_stack_arg.exit:                        ; preds = %bb.q, %RB_SYMBOL_P.exit.thread60
  %.0.i52 = phi ptr [ null, %RB_SYMBOL_P.exit.thread60 ], [ %spec.select, %bb.q ] ; 2 uses
  %i.bc = load i64, ptr %i.b, align 8, !tbaa !11
  %i.bd = call i64 @rb_str_intern(i64 noundef %i.bc) #23 ; 3 uses
  store i64 %i.bd, ptr %i.b, align 8, !tbaa !11
  %.not47 = icmp eq ptr %.0.i52, null
  br i1 %.not47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %current_vm_stack_arg.exit
  store i64 %i.bd, ptr %.0.i52, align 8, !tbaa !11
  br label %ruby_nonempty_memcpy.exit

bb.s:                                             ; preds = %current_vm_stack_arg.exit
  %i.be = icmp sgt i32 %0, 1
  br i1 %i.be, label %bb.t, label %ruby_nonempty_memcpy.exit

bb.t:                                             ; preds = %bb.s
  %i.bf = zext nneg i32 %0 to i64                 ; 2 uses
  %i.bg = icmp samesign ult i32 %0, 128
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 0, ptr %i.c, align 8, !tbaa !11
  %i.bh = shl nuw nsw i64 %i.bf, 3
  %i.bi = alloca i8, i64 %i.bh, align 16
  br label %rbimpl_size_mul_or_raise.exit

bb.v:                                             ; preds = %bb.t
  %i.bj = call fastcc ptr @rb_alloc_tmp_buffer2(ptr noundef %i.c, i64 noundef %i.bf)
  %.pre = load i64, ptr %i.b, align 8, !tbaa !11
  br label %rbimpl_size_mul_or_raise.exit

rbimpl_size_mul_or_raise.exit:                    ; preds = %bb.v, %bb.u
  %i.bk = phi i64 [ %i.bd, %bb.u ], [ %.pre, %bb.v ]
  %i.bl = phi ptr [ %i.bi, %bb.u ], [ %i.bj, %bb.v ] ; 3 uses
  store i64 %i.bk, ptr %i.bl, align 8, !tbaa !11
  %i.bm = add nsw i32 %0, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw nsw i64 %i.bn, 3
  %i.bp = getelementptr i8, ptr %1, i64 8
  %i.bq = getelementptr i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bq, ptr noundef nonnull readonly align 1 %i.bp, i64 noundef %i.bo, i1 noundef false) #23
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %rb_method_basic_definition_p.exit.thread, %rbimpl_size_mul_or_raise.exit, %bb.r, %bb.s, %RB_SYMBOL_P.exit
  %.1 = phi ptr [ %1, %RB_SYMBOL_P.exit ], [ %1, %bb.r ], [ %i.bl, %rbimpl_size_mul_or_raise.exit ], [ %i.b, %bb.s ], [ %1, %rb_method_basic_definition_p.exit.thread ]
  %i.br = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 145
  store i8 0, ptr %i.br, align 1
  br label %bb.x

bb.w:                                             ; preds = %bb.e
  %i.bs = getelementptr i8, ptr %1, i64 8
  %i.bt = add i32 %0, -1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %ruby_nonempty_memcpy.exit
  %.039 = phi i64 [ %i.m, %bb.w ], [ 2913, %ruby_nonempty_memcpy.exit ]
  %.2 = phi ptr [ %i.bs, %bb.w ], [ %.1, %ruby_nonempty_memcpy.exit ]
  %.0 = phi i32 [ %i.bt, %bb.w ], [ %0, %ruby_nonempty_memcpy.exit ]
  %i.bu = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !70
  %i.bw = getelementptr i8, ptr %i.bv, i64 32
  %.val.i.i = load ptr, ptr %i.bw, align 8, !tbaa !15 ; 5 uses
  %.val.i.i.i = load i64, ptr %.val.i.i, align 8, !tbaa !11 ; 2 uses
  %i.bx = and i64 %.val.i.i.i, 2147418113         ; 2 uses
  switch i64 %i.bx, label %bb.y [
    i64 1145307137, label %pass_passed_block_handler.exit
    i64 858980353, label %pass_passed_block_handler.exit
  ]

bb.y:                                             ; preds = %bb.x
  %i.by = and i64 %.val.i.i.i, 2
  %.not5.i.i.i.i.i = icmp eq i64 %i.by, 0
  br i1 %.not5.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.y, %.lr.ph.i.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i ], [ %.val.i.i, %bb.y ]
  %i.bz = getelementptr i8, ptr %.06.i.i.i.i.i, i64 -8
  %.0.val3.i.i.i.i.i = load i64, ptr %i.bz, align 8, !tbaa !11
  %i.ca = and i64 %.0.val3.i.i.i.i.i, -4
  %i.cb = inttoptr i64 %i.ca to ptr               ; 3 uses
  %.0.val.i.i.i.i.i = load i64, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cc = and i64 %.0.val.i.i.i.i.i, 2
  %.not.i.i.i.i.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %VM_CF_LEP.exit.loopexit.i.i.i, !llvm.loop !13

VM_CF_LEP.exit.loopexit.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i
  %.pre.i.i.i = and i64 %.0.val.i.i.i.i.i, 2147418113
  br label %VM_CF_LEP.exit.i.i.i

VM_CF_LEP.exit.i.i.i:                             ; preds = %VM_CF_LEP.exit.loopexit.i.i.i, %bb.y
  %.pre-phi.i.i.i = phi i64 [ %.pre.i.i.i, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %i.bx, %bb.y ]
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.cb, %VM_CF_LEP.exit.loopexit.i.i.i ], [ %.val.i.i, %bb.y ]
  switch i64 %.pre-phi.i.i.i, label %bb.z [
    i64 1145307137, label %pass_passed_block_handler.exit
    i64 858980353, label %pass_passed_block_handler.exit
  ]

bb.z:                                             ; preds = %VM_CF_LEP.exit.i.i.i
  %i.cd = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 -8
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11
  br label %pass_passed_block_handler.exit

pass_passed_block_handler.exit:                   ; preds = %bb.x, %bb.x, %VM_CF_LEP.exit.i.i.i, %VM_CF_LEP.exit.i.i.i, %bb.z
  %.0.i.i.i = phi i64 [ 0, %bb.x ], [ %i.ce, %bb.z ], [ 0, %VM_CF_LEP.exit.i.i.i ], [ 0, %VM_CF_LEP.exit.i.i.i ], [ 0, %bb.x ]
  %i.cf = getelementptr i8, ptr %.0..0..0..0..0..0..i, i64 136
  store i64 %.0.i.i.i, ptr %i.cf, align 8, !tbaa !441
  %i.cg = load i64, ptr %.val.i.i, align 8, !tbaa !11
  %i.ch = or i64 %i.cg, 2048
  store i64 %i.ch, ptr %.val.i.i, align 8, !tbaa !11
  %i.ci = call fastcc i64 @rb_call0(ptr noundef nonnull %.0..0..0..0..0..0..i, i64 noundef %2, i64 noundef %.039, i32 noundef %.0, ptr noundef %.2, i32 noundef %3, i64 noundef %.040)
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i64 %i.ci
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rb_call0(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef range(i32 0, 5) %5, i64 noundef %6) unnamed_addr #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i64], align 16               ; 4 uses
  %7 = alloca %struct.rb_calling_info, align 8    ; 10 uses
  %8 = alloca %struct.rb_call_data, align 8       ; 5 uses
  %9 = alloca %struct.rb_callinfo, align 8        ; 8 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %10 = alloca %struct.rb_callinfo, align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  switch i32 %5, label %scope_to_ci.exit.fold.split [
    i32 3, label %scope_to_ci.exit
    i32 4, label %.thread100
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

.thread100:                                       ; preds = %bb.a
  br label %scope_to_ci.exit

bb.b:                                             ; preds = %bb.a
  br label %scope_to_ci.exit

bb.c:                                             ; preds = %bb.a
  br label %scope_to_ci.exit

scope_to_ci.exit.fold.split:                      ; preds = %bb.a
  br label %scope_to_ci.exit

scope_to_ci.exit:                                 ; preds = %bb.a, %scope_to_ci.exit.fold.split, %.thread100, %bb.b, %bb.c
  %i.e = phi i1 [ true, %bb.a ], [ false, %.thread100 ], [ false, %bb.b ], [ false, %bb.c ], [ true, %scope_to_ci.exit.fold.split ]
  %i.f = phi i32 [ 0, %bb.a ], [ 0, %.thread100 ], [ 0, %bb.b ], [ 8, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ]
  %i.g = phi i1 [ true, %bb.a ], [ true, %.thread100 ], [ false, %bb.b ], [ false, %bb.c ], [ false, %scope_to_ci.exit.fold.split ] ; 2 uses
  %.06097 = phi i32 [ 1, %bb.a ], [ 1, %.thread100 ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ] ; 4 uses
  %.0.i = phi i64 [ 0, %bb.a ], [ 4, %.thread100 ], [ 4, %bb.b ], [ 8, %bb.c ], [ 0, %scope_to_ci.exit.fold.split ]
  %i.h = sext i32 %3 to i64                       ; 2 uses
  store i64 106522, ptr %10, align 8, !tbaa !11
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !282
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 %.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !11
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !11
  %i.i = tail call ptr @rb_current_box() #23, !inline_history !474 ; 3 uses
  %i.j = icmp eq i64 %1, 0
  %i.k = and i64 %1, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l                         ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.d

bb.d:                                             ; preds = %scope_to_ci.exit
  %i.n = inttoptr i64 %1 to ptr
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61   ; 2 uses
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %bb.e, label %bb.k, !prof !177

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @uncallable_object(i64 noundef %1, i64 noundef %2) #58, !inline_history !474
  unreachable

bb.f:                                             ; preds = %scope_to_ci.exit
  switch i64 %1, label %bb.i [
    i64 0, label %rb_class_of.exit.i
    i64 4, label %bb.g
    i64 20, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  br label %rb_class_of.exit.i

bb.h:                                             ; preds = %bb.f
  br label %rb_class_of.exit.i

bb.i:                                             ; preds = %bb.f
  %i.q = trunc i64 %1 to i1
  br i1 %i.q, label %rb_class_of.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = and i64 %1, 254
  %i.s = icmp eq i64 %i.r, 12
  %spec.select.i.i = select i1 %i.s, ptr @rb_cSymbol, ptr @rb_cFloat
  br label %rb_class_of.exit.i

rb_class_of.exit.i:                               ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0.in.i.i = phi ptr [ %spec.select.i.i, %bb.j ], [ @rb_cNilClass, %bb.g ], [ @rb_cTrueClass, %bb.h ], [ @rb_cFalseClass, %bb.f ], [ @rb_cInteger, %bb.i ]
  %.0.i.i = load i64, ptr %.0.in.i.i, align 8, !tbaa !11
  br label %bb.k

bb.k:                                             ; preds = %rb_class_of.exit.i, %bb.d
  %.029.i = phi i64 [ %.0.i.i, %rb_class_of.exit.i ], [ %i.p, %bb.d ] ; 5 uses
  %.not33.i = icmp eq ptr %i.i, null
  br i1 %.not33.i, label %rb_ec_vm_ptr.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr i8, ptr %i.i, i64 128
  %i.u = load i8, ptr %i.t, align 8, !tbaa !111, !range !114, !noundef !64
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.m, label %rb_ec_vm_ptr.exit.i

bb.m:                                             ; preds = %bb.l
  %i.w = load i64, ptr %i.i, align 8, !tbaa !196
  %i.x = xor i64 %i.w, %.029.i
  br label %rb_ec_vm_ptr.exit.i

rb_ec_vm_ptr.exit.i:                              ; preds = %bb.m, %bb.l, %bb.k
  %.030.i = phi i64 [ %i.x, %bb.m ], [ %.029.i, %bb.l ], [ %.029.i, %bb.k ]
  %i.y = lshr i64 %.030.i, 3
  %i.z = xor i64 %i.y, %2
  %i.aa = urem i64 %i.z, 1023                     ; 2 uses
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = getelementptr i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.ac, align 8, !tbaa !30, !nonnull !64, !noundef !64
  %i.ad = getelementptr i8, ptr %.val.i, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !65 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 1336
  %i.ag = getelementptr [8 x i8], ptr %i.af, i64 %i.aa
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !408 ; 4 uses
  %.not34.i = icmp eq ptr %i.ah, null
  br i1 %.not34.i, label %.critedge.i, label %bb.n, !prof !177

bb.n:                                             ; preds = %rb_ec_vm_ptr.exit.i
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val37.i = load i64, ptr %i.ai, align 8, !tbaa !185
end_hunk_15
