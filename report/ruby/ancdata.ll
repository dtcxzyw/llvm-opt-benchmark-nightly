inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@bsock_sendmsg_internal:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 7 uses
  tail call void @rb_io_check_closed(ptr noundef %i.k) #10
  %i.l = tail call i32 @rsock_getfamily(ptr noundef %i.k) #10 ; 2 uses
  %i.m = call i64 @rb_string_value(ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.n = load i64, ptr %i.a, align 8, !tbaa !10
  %i.o = call i64 @rb_str_tmp_frozen_acquire(i64 noundef %i.n) #10 ; 2 uses
  %i.p = icmp eq i64 %4, 0
  %i.q = and i64 %4, 7
  %i.r = icmp ne i64 %i.q, 0
  %i.s = or i1 %i.p, %i.r
  br i1 %i.s, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.t = inttoptr i64 %4 to ptr                   ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !17   ; 2 uses
  %i.v = and i64 %i.u, 31
  %i.w = icmp eq i64 %i.v, 7
  br i1 %i.w, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.x = call i64 @rb_ary_new() #10               ; 2 uses
  store i64 %i.x, ptr %i.c, align 8, !tbaa !10
  %.phi.trans.insert = inttoptr i64 %i.x to ptr   ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %.pre-phi = phi ptr [ %.phi.trans.insert, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.t, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 3 uses
  %i.y = phi i64 [ %.pre, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.u, %rbimpl_RB_TYPE_P_fastpath.exit ] ; 2 uses
  %i.z = and i64 %i.y, 8192
  %.not.i.i = icmp eq i64 %i.z, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = lshr i64 %i.y, 15
  %i.ab = and i64 %i.aa, 127
  br label %rb_array_len.exit.i

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !18
  br label %rb_array_len.exit.i

rb_array_len.exit.i:                              ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.ab, %bb.c ], [ %i.ad, %bb.d ] ; 5 uses
  %i.ae = add i64 %.0.i.i, 2147483648
  %.not.i1.i = icmp ult i64 %i.ae, 4294967296
  br i1 %.not.i1.i, label %RARRAY_LENINT.exit, label %bb.e

bb.e:                                             ; preds = %rb_array_len.exit.i
  call void @rb_out_of_int(i64 noundef %.0.i.i) #11
  unreachable

RARRAY_LENINT.exit:                               ; preds = %rb_array_len.exit.i
  %i.af = trunc nsw i64 %.0.i.i to i32
  %.not = icmp eq i64 %.0.i.i, 0
  br i1 %.not, label %bb.s, label %bb.f

bb.f:                                             ; preds = %RARRAY_LENINT.exit
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  br label %rb_array_const_ptr.exit

bb.h:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18
  br label %rb_array_const_ptr.exit

rb_array_const_ptr.exit:                          ; preds = %bb.g, %bb.h
  %.0.i78 = phi ptr [ %i.ag, %bb.g ], [ %i.ai, %bb.h ]
  %i.aj = call i64 @rb_str_tmp_new(i64 noundef 0) #10 ; 3 uses
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !10
  %i.ak = icmp sgt i64 %.0.i.i, 0
  br i1 %i.ak, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %rb_array_const_ptr.exit
  %smax = call i32 @llvm.smax.i32(i32 %i.af, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  %i.al = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %ruby_nonempty_memcpy.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i78, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.aq = call i64 @rb_check_convert_type(i64 noundef %i.ap, i32 noundef 7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #10 ; 5 uses
  %i.ar = icmp eq i64 %i.aq, 4
  br i1 %i.ar, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.as = inttoptr i64 %i.aq to ptr               ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !17 ; 2 uses
  %i.au = and i64 %i.at, 8192
  %.not.i79 = icmp eq i64 %i.au, 0
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = lshr i64 %i.at, 15
  %i.aw = and i64 %i.av, 127
  br label %rb_array_len.exit

bb.k:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !18
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.j, %bb.k
  %.0.i80 = phi i64 [ %i.aw, %bb.j ], [ %i.ay, %bb.k ]
  %.not77 = icmp eq i64 %.0.i80, 3
  br i1 %.not77, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rb_array_len.exit
  %i.az = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.az, ptr noundef nonnull @.str.19) #12
  unreachable

bb.m:                                             ; preds = %rb_array_len.exit
  %i.ba = call i64 @rb_ary_entry(i64 noundef %i.aq, i64 noundef 0) #13
  %i.bb = call i64 @rb_ary_entry(i64 noundef %i.aq, i64 noundef 1) #13
  %i.bc = call i64 @rb_ary_entry(i64 noundef %i.aq, i64 noundef 2) #13
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %.pr.i = load i64, ptr @bsock_sendmsg_internal.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.bd = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #10 ; 3 uses
  store i64 %i.bd, ptr @bsock_sendmsg_internal.rbimpl_id, align 8, !tbaa !10
  %.not.i81 = icmp eq i64 %i.bd, 0
  br i1 %.not.i81, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !19

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.n
  %.lcssa.i = phi i64 [ %.pr.i, %bb.n ], [ %i.bd, %.lr.ph.i ]
  %i.be = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ap, i64 noundef %.lcssa.i, i32 noundef 0) #10
  %.pr.i82 = load i64, ptr @bsock_sendmsg_internal.rbimpl_id.20, align 8, !tbaa !10 ; 2 uses
  %.not4.i83 = icmp eq i64 %.pr.i82, 0
  br i1 %.not4.i83, label %.lr.ph.i85, label %rbimpl_intern_const.exit87

.lr.ph.i85:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i85
  %i.bf = call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #10 ; 3 uses
  store i64 %i.bf, ptr @bsock_sendmsg_internal.rbimpl_id.20, align 8, !tbaa !10
  %.not.i86 = icmp eq i64 %i.bf, 0
  br i1 %.not.i86, label %.lr.ph.i85, label %rbimpl_intern_const.exit87, !llvm.loop !19

rbimpl_intern_const.exit87:                       ; preds = %.lr.ph.i85, %rbimpl_intern_const.exit
  %.lcssa.i84 = phi i64 [ %.pr.i82, %rbimpl_intern_const.exit ], [ %i.bf, %.lr.ph.i85 ]
  %i.bg = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ap, i64 noundef %.lcssa.i84, i32 noundef 0) #10
  %.pr.i88 = load i64, ptr @bsock_sendmsg_internal.rbimpl_id.21, align 8, !tbaa !10 ; 2 uses
  %.not4.i89 = icmp eq i64 %.pr.i88, 0
  br i1 %.not4.i89, label %.lr.ph.i91, label %rbimpl_intern_const.exit93

.lr.ph.i91:                                       ; preds = %rbimpl_intern_const.exit87, %.lr.ph.i91
  %i.bh = call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 4) #10 ; 3 uses
  store i64 %i.bh, ptr @bsock_sendmsg_internal.rbimpl_id.21, align 8, !tbaa !10
  %.not.i92 = icmp eq i64 %i.bh, 0
  br i1 %.not.i92, label %.lr.ph.i91, label %rbimpl_intern_const.exit93, !llvm.loop !19

rbimpl_intern_const.exit93:                       ; preds = %.lr.ph.i91, %rbimpl_intern_const.exit87
  %.lcssa.i90 = phi i64 [ %.pr.i88, %rbimpl_intern_const.exit87 ], [ %i.bh, %.lr.ph.i91 ]
  %i.bi = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ap, i64 noundef %.lcssa.i90, i32 noundef 0) #10
  br label %bb.o

bb.o:                                             ; preds = %rbimpl_intern_const.exit93, %bb.m
  %storemerge = phi i64 [ %i.bc, %bb.m ], [ %i.bi, %rbimpl_intern_const.exit93 ]
  %.069 = phi i64 [ %i.bb, %bb.m ], [ %i.bg, %rbimpl_intern_const.exit93 ]
  %.068 = phi i64 [ %i.ba, %bb.m ], [ %i.be, %rbimpl_intern_const.exit93 ]
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !10
  %i.bj = call i32 @rsock_level_arg(i32 noundef %i.l, i64 noundef %.068) #10 ; 2 uses
  %i.bk = call i32 @rsock_cmsg_type_arg(i32 noundef %i.l, i32 noundef %i.bj, i64 noundef %.069) #10
  %i.bl = call i64 @rb_string_value(ptr noundef nonnull %i.e) #10 ; 0 uses
  %i.bm = load i64, ptr %i.am, align 8, !tbaa !21 ; 2 uses
  %i.bn = load i64, ptr %i.e, align 8, !tbaa !10
  %i.bo = inttoptr i64 %i.bn to ptr
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !21
  %i.br = add i64 %i.bq, 7
  %i.bs = and i64 %i.br, -8
  %i.bt = add i64 %i.bs, 16                       ; 2 uses
  %i.bu = add i64 %i.bt, %i.bm
  %i.bv = call i64 @rb_str_resize(i64 noundef %i.aj, i64 noundef %i.bu) #10 ; 0 uses
  %i.bw = load i64, ptr %i.al, align 8, !tbaa !17
  %i.bx = and i64 %i.bw, 8192
  %.not.i94 = icmp eq i64 %i.bx, 0
  br i1 %.not.i94, label %RSTRING_PTR.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = load ptr, ptr %i.an, align 8, !tbaa !18
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.o, %bb.p
  %i.bz = phi ptr [ %i.by, %bb.p ], [ %i.an, %bb.o ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 %i.bm ; 5 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ca, i8 0, i64 %i.bt, i1 false)
  %i.cb = load i64, ptr %i.e, align 8, !tbaa !10
  %i.cc = inttoptr i64 %i.cb to ptr
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !21
  %i.cf = add i64 %i.ce, 16
  %i.cg = and i64 %i.cf, 4294967295
  store i64 %i.cg, ptr %i.ca, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.bj, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 %i.bk, ptr %.sroa.6.0..sroa_idx, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.ci = load i64, ptr %i.e, align 8, !tbaa !10
  %i.cj = inttoptr i64 %i.ci to ptr               ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !17
  %i.cl = and i64 %i.ck, 8192
  %.not.i95 = icmp eq i64 %i.cl, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  br i1 %.not.i95, label %RSTRING_PTR.exit96, label %bb.q

bb.q:                                             ; preds = %RSTRING_PTR.exit
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !18
  br label %RSTRING_PTR.exit96

RSTRING_PTR.exit96:                               ; preds = %RSTRING_PTR.exit, %bb.q
  %i.co = phi ptr [ %i.cn, %bb.q ], [ %i.cm, %RSTRING_PTR.exit ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !21 ; 2 uses
  %.not.i97 = icmp eq i64 %i.cq, 0
  br i1 %.not.i97, label %ruby_nonempty_memcpy.exit, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr readonly align 1 %i.co, i64 %i.cq, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit96, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %ruby_nonempty_memcpy.exit, %rb_array_const_ptr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store ptr %i.c, ptr %i.f, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #10, !srcloc !26
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  %i.cs = load volatile i64, ptr %i.cr, align 8, !tbaa !10 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %RARRAY_LENINT.exit
  %i.ct = icmp eq i64 %2, 4
  br i1 %i.ct, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cu = trunc i64 %2 to i1
  br i1 %i.cu, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cv = call i64 @rb_fix2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

bb.v:                                             ; preds = %bb.t
  %i.cw = call i64 @rb_num2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.u, %bb.v
  %.0.i98 = phi i64 [ %i.cv, %bb.u ], [ %i.cw, %bb.v ]
  %i.cx = trunc i64 %.0.i98 to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %rb_num2int_inline.exit
  %i.cy = phi i32 [ %i.cx, %rb_num2int_inline.exit ], [ 0, %bb.s ] ; 2 uses
  %.not74 = icmp ne i32 %6, 0                     ; 3 uses
  %i.cz = or i32 %i.cy, 64
  %spec.select = select i1 %.not74, i32 %i.cz, i32 %i.cy
  %i.da = load i64, ptr %i.b, align 8, !tbaa !10
  %i.db = icmp eq i64 %i.da, 4
  br i1 %i.db, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dc = call i64 @rsock_sockaddr_string_value(ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @rb_io_check_closed(ptr noundef %i.k) #10
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dg = inttoptr i64 %i.o to ptr                ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dm = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.ap, %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  %i.dp = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.dq = icmp eq i64 %i.dp, 4
  br i1 %i.dq, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = inttoptr i64 %i.dp to ptr               ; 3 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !17
  %i.dt = and i64 %i.ds, 8192
  %.not.i99 = icmp eq i64 %i.dt, 0
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 24 ; 2 uses
  br i1 %.not.i99, label %RSTRING_PTR.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18
  br label %RSTRING_PTR.exit100

RSTRING_PTR.exit100:                              ; preds = %bb.aa, %bb.ab
  %i.dw = phi ptr [ %i.dv, %bb.ab ], [ %i.du, %bb.aa ]
  store ptr %i.dw, ptr %8, align 8, !tbaa !27
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !21 ; 3 uses
  %i.dz = add i64 %i.dy, 2147483648
  %.not.i.i101 = icmp ult i64 %i.dz, 4294967296
  br i1 %.not.i.i101, label %RSTRING_LENINT.exit, label %bb.ac

bb.ac:                                            ; preds = %RSTRING_PTR.exit100
  call void @rb_out_of_int(i64 noundef %i.dy) #11
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit100
  %i.ea = trunc nsw i64 %i.dy to i32
  store i32 %i.ea, ptr %i.dd, align 8, !tbaa !30
  br label %bb.ad

bb.ad:                                            ; preds = %RSTRING_LENINT.exit, %bb.z
  store i64 1, ptr %i.de, align 8, !tbaa !31
  store ptr %9, ptr %i.df, align 8, !tbaa !32
  %i.eb = load i64, ptr %i.dg, align 8, !tbaa !17
  %i.ec = and i64 %i.eb, 8192
  %.not.i102 = icmp eq i64 %i.ec, 0
  br i1 %.not.i102, label %RSTRING_PTR.exit103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ed = load ptr, ptr %i.dh, align 8, !tbaa !18
  br label %RSTRING_PTR.exit103

RSTRING_PTR.exit103:                              ; preds = %bb.ad, %bb.ae
  %i.ee = phi ptr [ %i.ed, %bb.ae ], [ %i.dh, %bb.ad ]
  store ptr %i.ee, ptr %9, align 8, !tbaa !33
  %i.ef = load i64, ptr %i.di, align 8, !tbaa !21
  store i64 %i.ef, ptr %i.dj, align 8, !tbaa !35
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %.not75 = icmp eq i64 %i.eg, 0
  br i1 %.not75, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %RSTRING_PTR.exit103
  %i.eh = inttoptr i64 %i.eg to ptr               ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !17
  %i.ej = and i64 %i.ei, 8192
  %.not.i104 = icmp eq i64 %i.ej, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 24 ; 2 uses
  br i1 %.not.i104, label %RSTRING_PTR.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !18
  br label %RSTRING_PTR.exit105

RSTRING_PTR.exit105:                              ; preds = %bb.af, %bb.ag
  %i.em = phi ptr [ %i.el, %bb.ag ], [ %i.ek, %bb.af ]
  store ptr %i.em, ptr %i.dk, align 8, !tbaa !36
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !21 ; 3 uses
  %i.ep = add i64 %i.eo, 2147483648
  %.not.i.i106 = icmp ult i64 %i.ep, 4294967296
  br i1 %.not.i.i106, label %RSTRING_LENINT.exit107, label %bb.ah

bb.ah:                                            ; preds = %RSTRING_PTR.exit105
  call void @rb_out_of_int(i64 noundef %i.eo) #11
  unreachable

RSTRING_LENINT.exit107:                           ; preds = %RSTRING_PTR.exit105
  %i.eq = and i64 %i.eo, 4294967295
  store i64 %i.eq, ptr %i.dl, align 8, !tbaa !37
  br label %bb.ai

bb.ai:                                            ; preds = %RSTRING_LENINT.exit107, %RSTRING_PTR.exit103
  call void @rb_io_check_closed(ptr noundef %i.k) #10
  %i.er = load i32, ptr %i.dm, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i32 %i.er, ptr %7, align 8, !tbaa !51
  store ptr %8, ptr %i.dn, align 8, !tbaa !54
  store i32 %spec.select, ptr %i.do, align 4, !tbaa !55
  %i.es = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_sendmsg_func, ptr noundef nonnull %7, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.et = icmp eq ptr %i.es, inttoptr (i64 -1 to ptr)
  br i1 %i.et, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
