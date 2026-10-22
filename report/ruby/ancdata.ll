Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ancdata?download=true
inline.NumInlined: 213
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@bsock_sendmsg_internal:bb.a
rb_array_const_ptr.exit:                          ; preds = %bb.g, %bb.h
  %.0.i78 = phi ptr [ %i.af, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = call i64 @rb_str_tmp_new(i64 noundef 0) #9 ; 3 uses
  store i64 %i.ai, ptr %i.d, align 8, !tbaa !13
  %i.aj = icmp sgt i64 %.0.i.i, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %rb_array_const_ptr.exit
  %i.ak = inttoptr i64 %i.ai to ptr               ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ruby_nonempty_memcpy.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %ruby_nonempty_memcpy.exit ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.0.i78, i64 %indvars.iv
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  %i.ap = call i64 @rb_check_convert_type(i64 noundef %i.ao, i32 noundef 7, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9 ; 5 uses
  %i.aq = icmp eq i64 %i.ap, 4
  br i1 %i.aq, label %bb.n, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ar = inttoptr i64 %i.ap to ptr               ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !19 ; 2 uses
  %i.at = and i64 %i.as, 8192
  %.not.i79 = icmp eq i64 %i.at, 0
  br i1 %.not.i79, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = lshr i64 %i.as, 15
  %i.av = and i64 %i.au, 127
  br label %rb_array_len.exit

bb.k:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !20
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.j, %bb.k
  %.0.i80 = phi i64 [ %i.av, %bb.j ], [ %i.ax, %bb.k ]
  %.not77 = icmp eq i64 %.0.i80, 3
  br i1 %.not77, label %bb.m, label %bb.l

bb.l:                                             ; preds = %rb_array_len.exit
  %i.ay = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ay, ptr noundef nonnull @.str.19) #11
  unreachable

bb.m:                                             ; preds = %rb_array_len.exit
  %i.az = call i64 @rb_ary_entry(i64 noundef %i.ap, i64 noundef 0) #12
  %i.ba = call i64 @rb_ary_entry(i64 noundef %i.ap, i64 noundef 1) #12
  %i.bb = call i64 @rb_ary_entry(i64 noundef %i.ap, i64 noundef 2) #12
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %.pr.i = load i64, ptr @bsock_sendmsg_internal.rbimpl_id, align 8, !tbaa !13 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.bc = call i64 @rb_intern2(ptr noundef nonnull @.str.4, i64 noundef 5) #9 ; 3 uses
  store i64 %i.bc, ptr @bsock_sendmsg_internal.rbimpl_id, align 8, !tbaa !13
  %.not.i81 = icmp eq i64 %i.bc, 0
  br i1 %.not.i81, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !0

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %bb.n
  %.lcssa.i = phi i64 [ %.pr.i, %bb.n ], [ %i.bc, %.lr.ph.i ]
  %i.bd = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ao, i64 noundef %.lcssa.i, i32 noundef 0) #9
  %.pr.i82 = load i64, ptr @bsock_sendmsg_internal.rbimpl_id.20, align 8, !tbaa !13 ; 2 uses
  %.not4.i83 = icmp eq i64 %.pr.i82, 0
  br i1 %.not4.i83, label %.lr.ph.i85, label %rbimpl_intern_const.exit87

.lr.ph.i85:                                       ; preds = %rbimpl_intern_const.exit, %.lr.ph.i85
  %i.be = call i64 @rb_intern2(ptr noundef nonnull @.str.5, i64 noundef 4) #9 ; 3 uses
  store i64 %i.be, ptr @bsock_sendmsg_internal.rbimpl_id.20, align 8, !tbaa !13
  %.not.i86 = icmp eq i64 %i.be, 0
  br i1 %.not.i86, label %.lr.ph.i85, label %rbimpl_intern_const.exit87, !llvm.loop !0

rbimpl_intern_const.exit87:                       ; preds = %.lr.ph.i85, %rbimpl_intern_const.exit
  %.lcssa.i84 = phi i64 [ %.pr.i82, %rbimpl_intern_const.exit ], [ %i.be, %.lr.ph.i85 ]
  %i.bf = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ao, i64 noundef %.lcssa.i84, i32 noundef 0) #9
  %.pr.i88 = load i64, ptr @bsock_sendmsg_internal.rbimpl_id.21, align 8, !tbaa !13 ; 2 uses
  %.not4.i89 = icmp eq i64 %.pr.i88, 0
  br i1 %.not4.i89, label %.lr.ph.i91, label %rbimpl_intern_const.exit93

.lr.ph.i91:                                       ; preds = %rbimpl_intern_const.exit87, %.lr.ph.i91
  %i.bg = call i64 @rb_intern2(ptr noundef nonnull @.str.6, i64 noundef 4) #9 ; 3 uses
  store i64 %i.bg, ptr @bsock_sendmsg_internal.rbimpl_id.21, align 8, !tbaa !13
  %.not.i92 = icmp eq i64 %i.bg, 0
  br i1 %.not.i92, label %.lr.ph.i91, label %rbimpl_intern_const.exit93, !llvm.loop !0

rbimpl_intern_const.exit93:                       ; preds = %.lr.ph.i91, %rbimpl_intern_const.exit87
  %.lcssa.i90 = phi i64 [ %.pr.i88, %rbimpl_intern_const.exit87 ], [ %i.bg, %.lr.ph.i91 ]
  %i.bh = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.ao, i64 noundef %.lcssa.i90, i32 noundef 0) #9
  br label %bb.o

bb.o:                                             ; preds = %rbimpl_intern_const.exit93, %bb.m
  %storemerge = phi i64 [ %i.bb, %bb.m ], [ %i.bh, %rbimpl_intern_const.exit93 ]
  %.066 = phi i64 [ %i.az, %bb.m ], [ %i.bd, %rbimpl_intern_const.exit93 ]
  %.065 = phi i64 [ %i.ba, %bb.m ], [ %i.bf, %rbimpl_intern_const.exit93 ]
  store i64 %storemerge, ptr %i.e, align 8, !tbaa !13
  %i.bi = call i32 @rsock_level_arg(i32 noundef %i.l, i64 noundef %.066) #9 ; 2 uses
  %i.bj = call i32 @rsock_cmsg_type_arg(i32 noundef %i.l, i32 noundef %i.bi, i64 noundef %.065) #9
  %i.bk = call i64 @rb_string_value(ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.bl = load i64, ptr %i.al, align 8, !tbaa !23 ; 2 uses
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !13
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !23
  %i.bq = add i64 %i.bp, 7
  %i.br = and i64 %i.bq, -8
  %i.bs = add i64 %i.br, 16                       ; 2 uses
  %i.bt = add i64 %i.bs, %i.bl
  %i.bu = call i64 @rb_str_resize(i64 noundef %i.ai, i64 noundef %i.bt) #9 ; 0 uses
  %i.bv = load i64, ptr %i.ak, align 8, !tbaa !19
  %i.bw = and i64 %i.bv, 8192
  %.not.i94 = icmp eq i64 %i.bw, 0
  br i1 %.not.i94, label %RSTRING_PTR.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.am, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.o, %bb.p
  %i.by = phi ptr [ %i.bx, %bb.p ], [ %i.am, %bb.o ]
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %i.bl ; 5 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.bz, i8 0, i64 %i.bs, i1 false)
  %i.ca = load i64, ptr %i.e, align 8, !tbaa !13
  %i.cb = inttoptr i64 %i.ca to ptr
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !23
  %i.ce = add i64 %i.cd, 16
  %i.cf = and i64 %i.ce, 4294967295
  store i64 %i.cf, ptr %i.bz, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  store i32 %i.bi, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 %i.bj, ptr %.sroa.6.0..sroa_idx, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !13
  %i.ci = inttoptr i64 %i.ch to ptr               ; 3 uses
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !19
  %i.ck = and i64 %i.cj, 8192
  %.not.i95 = icmp eq i64 %i.ck, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 24 ; 2 uses
  br i1 %.not.i95, label %RSTRING_PTR.exit96, label %bb.q

bb.q:                                             ; preds = %RSTRING_PTR.exit
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !20
  br label %RSTRING_PTR.exit96

RSTRING_PTR.exit96:                               ; preds = %RSTRING_PTR.exit, %bb.q
  %i.cn = phi ptr [ %i.cm, %bb.q ], [ %i.cl, %RSTRING_PTR.exit ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !23 ; 2 uses
  %.not.i97 = icmp eq i64 %i.cp, 0
  br i1 %.not.i97, label %ruby_nonempty_memcpy.exit, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit96
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cg, ptr readonly align 1 %i.cn, i64 %i.cp, i1 false)
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit96, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.0.i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %ruby_nonempty_memcpy.exit, %rb_array_const_ptr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr %i.c, ptr %i.f, align 8, !tbaa !25
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.f) #9, !srcloc !69
  %i.cq = load ptr, ptr %i.f, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.cr = load volatile i64, ptr %i.cq, align 8, !tbaa !13 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %RARRAY_LENINT.exit
  %i.cs = icmp eq i64 %2, 4
  br i1 %i.cs, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ct = trunc i64 %2 to i1
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = call i64 @rb_fix2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

bb.v:                                             ; preds = %bb.t
  %i.cv = call i64 @rb_num2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.u, %bb.v
  %.0.i98 = phi i64 [ %i.cu, %bb.u ], [ %i.cv, %bb.v ]
  %i.cw = trunc i64 %.0.i98 to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %rb_num2int_inline.exit
  %i.cx = phi i32 [ %i.cw, %rb_num2int_inline.exit ], [ 0, %bb.s ]
  %.not74 = trunc nuw i32 %6 to i1                ; 2 uses
  %10 = shl nuw nsw i32 %6, 6
  %spec.select = or i32 %i.cx, %10
  %i.cy = load i64, ptr %i.b, align 8, !tbaa !13
  %i.cz = icmp eq i64 %i.cy, 4
  br i1 %i.cz, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = call i64 @rsock_sockaddr_string_value(ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @rb_io_check_closed(ptr noundef %i.k) #9
  %i.db = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.de = inttoptr i64 %i.o to ptr                ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dk = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.ap, %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !13  ; 2 uses
  %i.do = icmp eq i64 %i.dn, 4
  br i1 %i.do, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dp = inttoptr i64 %i.dn to ptr               ; 3 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !19
  %i.dr = and i64 %i.dq, 8192
  %.not.i99 = icmp eq i64 %i.dr, 0
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  br i1 %.not.i99, label %RSTRING_PTR.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !20
  br label %RSTRING_PTR.exit100

RSTRING_PTR.exit100:                              ; preds = %bb.aa, %bb.ab
  %i.du = phi ptr [ %i.dt, %bb.ab ], [ %i.ds, %bb.aa ]
  store ptr %i.du, ptr %8, align 8, !tbaa !28
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !23 ; 3 uses
  %i.dx = add i64 %i.dw, 2147483648
  %.not.i.i101 = icmp ult i64 %i.dx, 4294967296
  br i1 %.not.i.i101, label %RSTRING_LENINT.exit, label %bb.ac

bb.ac:                                            ; preds = %RSTRING_PTR.exit100
  call void @rb_out_of_int(i64 noundef %i.dw) #10
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit100
  %i.dy = trunc nsw i64 %i.dw to i32
  store i32 %i.dy, ptr %i.db, align 8, !tbaa !29
  br label %bb.ad

bb.ad:                                            ; preds = %RSTRING_LENINT.exit, %bb.z
  store i64 1, ptr %i.dc, align 8, !tbaa !30
  store ptr %9, ptr %i.dd, align 8, !tbaa !31
  %i.dz = load i64, ptr %i.de, align 8, !tbaa !19
  %i.ea = and i64 %i.dz, 8192
  %.not.i102 = icmp eq i64 %i.ea, 0
  br i1 %.not.i102, label %RSTRING_PTR.exit103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eb = load ptr, ptr %i.df, align 8, !tbaa !20
  br label %RSTRING_PTR.exit103

RSTRING_PTR.exit103:                              ; preds = %bb.ad, %bb.ae
  %i.ec = phi ptr [ %i.eb, %bb.ae ], [ %i.df, %bb.ad ]
  store ptr %i.ec, ptr %9, align 8, !tbaa !33
  %i.ed = load i64, ptr %i.dg, align 8, !tbaa !23
  store i64 %i.ed, ptr %i.dh, align 8, !tbaa !34
  %i.ee = load i64, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %.not75 = icmp eq i64 %i.ee, 0
  br i1 %.not75, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %RSTRING_PTR.exit103
  %i.ef = inttoptr i64 %i.ee to ptr               ; 3 uses
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !19
  %i.eh = and i64 %i.eg, 8192
  %.not.i104 = icmp eq i64 %i.eh, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 24 ; 2 uses
  br i1 %.not.i104, label %RSTRING_PTR.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20
  br label %RSTRING_PTR.exit105

RSTRING_PTR.exit105:                              ; preds = %bb.af, %bb.ag
  %i.ek = phi ptr [ %i.ej, %bb.ag ], [ %i.ei, %bb.af ]
  store ptr %i.ek, ptr %i.di, align 8, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !23 ; 3 uses
  %i.en = add i64 %i.em, 2147483648
  %.not.i.i106 = icmp ult i64 %i.en, 4294967296
  br i1 %.not.i.i106, label %RSTRING_LENINT.exit107, label %bb.ah

bb.ah:                                            ; preds = %RSTRING_PTR.exit105
  call void @rb_out_of_int(i64 noundef %i.em) #10
  unreachable

RSTRING_LENINT.exit107:                           ; preds = %RSTRING_PTR.exit105
  %i.eo = and i64 %i.em, 4294967295
  store i64 %i.eo, ptr %i.dj, align 8, !tbaa !36
  br label %bb.ai

bb.ai:                                            ; preds = %RSTRING_LENINT.exit107, %RSTRING_PTR.exit103
  call void @rb_io_check_closed(ptr noundef %i.k) #9
  %i.ep = load i32, ptr %i.dk, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  store i32 %i.ep, ptr %7, align 8, !tbaa !52
  store ptr %8, ptr %i.dl, align 8, !tbaa !53
  store i32 %spec.select, ptr %i.dm, align 4, !tbaa !54
  %i.eq = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_sendmsg_func, ptr noundef nonnull %7, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.er = icmp eq ptr %i.eq, inttoptr (i64 -1 to ptr)
  br i1 %i.er, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not74, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = call ptr @rb_errno_ptr() #9
  %i.et = load i32, ptr %i.es, align 4, !tbaa !11
  %i.eu = load i64, ptr %i.k, align 8, !tbaa !55
  %i.ev = call i32 @rb_io_maybe_wait_writable(i32 noundef %i.et, i64 noundef %i.eu, i64 noundef 4) #9
  %.not76 = icmp eq i32 %i.ev, 0
  br i1 %.not76, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ew = call ptr @rb_errno_ptr() #9
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !11 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, 11
  %or.cond = select i1 %.not74, i1 %i.ey, i1 false
  br i1 %or.cond, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ez = icmp eq i64 %5, 0
  br i1 %i.ez, label %.thread, label %bb.an

.thread:                                          ; preds = %bb.am
  %i.fa = load i64, ptr @sym_wait_writable, align 8, !tbaa !13
  br label %rb_ll2num_inline.exit

bb.an:                                            ; preds = %bb.am
  call void @rb_readwrite_syserr_fail(i32 noundef 1, i32 noundef 11, ptr noundef nonnull @.str.22) #11
  unreachable

bb.ao:                                            ; preds = %bb.al
  call void @rb_syserr_fail(i32 noundef %i.ex, ptr noundef nonnull @.str.23) #11
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @rb_io_check_closed(ptr noundef nonnull %i.k) #9
  br label %bb.z

bb.aq:                                            ; preds = %bb.ai
  %i.fb = ptrtoint ptr %i.eq to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store ptr %i.d, ptr %i.g, align 8, !tbaa !25
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #9, !srcloc !70
  %i.fc = load ptr, ptr %i.g, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  %i.fd = load volatile i64, ptr %i.fc, align 8, !tbaa !13 ; 0 uses
  %i.fe = load i64, ptr %i.a, align 8, !tbaa !13
  call void @rb_str_tmp_frozen_release(i64 noundef %i.fe, i64 noundef %i.o) #9
  %i.ff = add i64 %i.fb, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.ff, -1
  br i1 %or.cond.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fg = shl nsw i64 %i.fb, 1
  %i.fh = or disjoint i64 %i.fg, 1
  br label %rb_ll2num_inline.exit

bb.as:                                            ; preds = %bb.aq
  %i.fi = call i64 @rb_ll2inum(i64 noundef range(i64 0, -1) %i.fb) #9
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.as, %bb.ar, %.thread
  %.2 = phi i64 [ %i.fa, %.thread ], [ %i.fh, %bb.ar ], [ %i.fi, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  ret i64 %.2
}

; Function Attrs: nounwind uwtable
define i64 @rsock_bsock_sendmsg_nonblock(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @bsock_sendmsg_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef 1)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define i64 @rsock_recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = or i32 %2, 1073741824
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.d = tail call i64 @recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %i.a) #9 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !29
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.b, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i64 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @recvmsg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @rsock_discard_cmsg_resource(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b ; 2 uses
  %i.g = icmp ult i64 %i.b, 16
  %.not1116 = icmp eq ptr %i.e, null
  %.not11 = select i1 %i.g, i1 true, i1 %.not1116
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %__cmsg_nxthdr.exit
  %.012 = phi ptr [ %i.as, %__cmsg_nxthdr.exit ], [ %i.e, %bb.b ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %discard_cmsg.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.012, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !11
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %discard_cmsg.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %.012, align 8, !tbaa !13  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.012, i64 20 ; 2 uses
  %i.q = icmp samesign ugt i64 %i.n, 19
  %i.r = icmp ule ptr %i.p, %i.f
  %i.s = and i1 %i.r, %i.q
  br i1 %i.s, label %.lr.ph.preheader.i, label %discard_cmsg.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.012, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.u = phi ptr [ %i.y, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %.013.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %i.v = load i32, ptr %.013.i, align 4, !tbaa !11
  tail call void @rb_update_max_fd(i32 noundef %i.v) #9
  %i.w = load i32, ptr %.013.i, align 4, !tbaa !11
  %i.x = tail call i32 @close(i32 noundef %i.w) #9 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %i.z = icmp ule ptr %i.y, %i.o
  %i.aa = icmp ule ptr %i.y, %i.f
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %discard_cmsg.exit, !llvm.loop !1

discard_cmsg.exit:                                ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %bb.d
  %i.ac = load i64, ptr %.012, align 8, !tbaa !13 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 16
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %discard_cmsg.exit
  %i.ae = sub i64 0, %i.ac
  %i.af = and i64 %i.ae, 7
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !36
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ai
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.012 to i64
  %i.am = sub i64 %i.ak, %i.al                    ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.ag
  %i.ao = sub nuw i64 %i.am, %i.ag
  %i.ap = icmp ult i64 %i.ao, %i.ac
  %or.cond.i = select i1 %i.an, i1 true, i1 %i.ap
  br i1 %or.cond.i, label %.loopexit, label %__cmsg_nxthdr.exit

__cmsg_nxthdr.exit:                               ; preds = %bb.e
  %i.aq = add nuw i64 %i.ac, 7
  %i.ar = and i64 %i.aq, -8
  %i.as = getelementptr inbounds nuw i8, ptr %.012, i64 %i.ar
  br label %.lr.ph, !llvm.loop !71

.loopexit:                                        ; preds = %bb.e, %discard_cmsg.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @rsock_bsock_recvmsg(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i64 @bsock_recvmsg_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 20, i32 noundef 0)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @bsock_recvmsg_internal(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %8 = alloca %struct.recvmsg_args_struct, align 8 ; 6 uses
  %9 = alloca %struct.msghdr, align 8             ; 12 uses
  %10 = alloca %struct.iovec, align 8             ; 5 uses
  %11 = alloca %union.union_sockaddr, align 8     ; 4 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i64 4, ptr %i.b, align 8, !tbaa !13
  %i.d = icmp eq i64 %1, 4                        ; 3 uses
  br i1 %i.d, label %rb_num2ull_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i64 %1, 1
  br label %rb_num2ull_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_num2ull(i64 noundef %1) #9
  br label %rb_num2ull_inline.exit

rb_num2ull_inline.exit:                           ; preds = %bb.d, %bb.c, %bb.a
  %i.h = phi i64 [ 4096, %bb.a ], [ %i.f, %bb.c ], [ %i.g, %bb.d ]
  %i.i = icmp eq i64 %3, 4                        ; 3 uses
  br i1 %i.i, label %rb_num2ull_inline.exit148, label %bb.e

bb.e:                                             ; preds = %rb_num2ull_inline.exit
  %i.j = trunc i64 %3 to i1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = ashr i64 %3, 1
  br label %rb_num2ull_inline.exit148

bb.g:                                             ; preds = %bb.e
  %i.l = tail call i64 @rb_num2ull(i64 noundef %3) #9
  br label %rb_num2ull_inline.exit148

rb_num2ull_inline.exit148:                        ; preds = %bb.g, %bb.f, %rb_num2ull_inline.exit
  %i.m = phi i64 [ 4096, %rb_num2ull_inline.exit ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.n = trunc i64 %2 to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2ull_inline.exit148
  %i.o = tail call i64 @rb_fix2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %rb_num2ull_inline.exit148
  %i.p = tail call i64 @rb_num2int(i64 noundef %2) #9
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i149 = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  %i.q = trunc i64 %.0.i149 to i32
  %.not = trunc nuw i32 %6 to i1                  ; 2 uses
  %12 = shl nuw nsw i32 %6, 6
  %spec.select = or i32 %12, %i.q                 ; 3 uses
  %i.r = and i64 %4, -5
  %.not193 = icmp eq i64 %i.r, 0
  %i.s = tail call i64 @rb_io_taint_check(i64 noundef %0) #9
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 8 uses
  tail call void @rb_io_check_closed(ptr noundef %i.v) #9
  %i.w = tail call i32 @rb_io_read_pending(ptr noundef %i.v) #12
  %.not129 = icmp eq i32 %i.w, 0
  br i1 %.not129, label %.preheader, label %bb.j

.preheader:                                       ; preds = %rb_num2int_inline.exit
  %narrow = or i1 %i.d, %i.i
  %i.x = zext i1 %narrow to i32
  %i.y = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 9 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 9 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %.outer.outer.outer

bb.j:                                             ; preds = %rb_num2int_inline.exit
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.24) #11
  unreachable

bb.k:                                             ; preds = %.outer, %bb.w
  %.1119 = phi i32 [ %spec.select144, %bb.w ], [ %.1119.ph, %.outer ] ; 2 uses
  %.0115 = phi i64 [ %.1116, %bb.w ], [ %.0115.ph, %.outer ] ; 3 uses
  %i.ak = icmp eq i64 %.0115, 4
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = call i64 @rb_str_tmp_new(i64 noundef %.0122.ph) #9
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = call i64 @rb_str_resize(i64 noundef %.0115, i64 noundef %.0122.ph) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1116 = phi i64 [ %i.al, %bb.l ], [ %.0115, %bb.m ] ; 9 uses
  %i.an = inttoptr i64 %.1116 to ptr              ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !19
  %i.ap = and i64 %i.ao, 8192
  %.not.i = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !20
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.n, %bb.o
  %i.as = phi ptr [ %i.ar, %bb.o ], [ %i.aq, %bb.n ] ; 2 uses
  %i.at = load i64, ptr %i.b, align 8, !tbaa !13  ; 3 uses
  %i.au = icmp eq i64 %i.at, 4
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %RSTRING_PTR.exit
  %i.av = call i64 @rb_str_tmp_new(i64 noundef %.0111.ph.ph.ph) #9 ; 2 uses
  store i64 %i.av, ptr %i.b, align 8, !tbaa !13
  br label %bb.r

bb.q:                                             ; preds = %RSTRING_PTR.exit
  %i.aw = call i64 @rb_str_resize(i64 noundef %i.at, i64 noundef %.0111.ph.ph.ph) #9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = phi i64 [ %i.at, %bb.q ], [ %i.av, %bb.p ]
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !19
  %i.ba = and i64 %i.az, 8192
  %.not.i150 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  br i1 %.not.i150, label %RSTRING_PTR.exit151, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !20
  br label %RSTRING_PTR.exit151

RSTRING_PTR.exit151:                              ; preds = %bb.r, %bb.s
  %i.bd = phi ptr [ %i.bc, %bb.s ], [ %i.bb, %bb.r ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %11, i8 0, i64 2048, i1 false)
  store ptr %11, ptr %9, align 8, !tbaa !28
  store i32 2048, ptr %i.y, align 8, !tbaa !29
  store ptr %10, ptr %i.z, align 8, !tbaa !31
  store i64 1, ptr %i.aa, align 8, !tbaa !30
  store ptr %i.as, ptr %10, align 8, !tbaa !33
  store i64 %.0122.ph, ptr %i.ab, align 8, !tbaa !34
  store ptr %i.bd, ptr %i.ac, align 8, !tbaa !35
  store i64 %i.hd, ptr %i.ad, align 8, !tbaa !36
  %i.be = or i32 %.1119, 2                        ; 4 uses
  %spec.select144 = select i1 %.not130, i32 %.1119, i32 %i.be ; 5 uses
  call void @rb_io_check_closed(ptr noundef %i.v) #9
  %i.bf = load i32, ptr %i.ae, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store i32 %i.bf, ptr %8, align 8, !tbaa !57
  store ptr %9, ptr %i.af, align 8, !tbaa !58
  store i32 %spec.select144, ptr %i.ag, align 4, !tbaa !59
  %i.bg = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_recvmsg_func, ptr noundef nonnull %8, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #9
  %i.bh = ptrtoint ptr %i.bg to i64               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  switch i64 %i.bh, label %.loopexit195 [
    i64 0, label %bb.t
    i64 -1, label %bb.u
  ]

bb.t:                                             ; preds = %RSTRING_PTR.exit151
  %i.bi = call i32 @rsock_is_dgram(ptr noundef nonnull %i.v) #9
  %.not131 = icmp eq i32 %i.bi, 0
  br i1 %.not131, label %.loopexit, label %.loopexit195

bb.u:                                             ; preds = %RSTRING_PTR.exit151
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = call ptr @rb_errno_ptr() #9
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !11
  %i.bl = load i64, ptr %i.v, align 8, !tbaa !55
  %i.bm = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.bk, i64 noundef %i.bl, i64 noundef 4) #9
  %.not142 = icmp eq i32 %i.bm, 0
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @rb_io_check_closed(ptr noundef nonnull %i.v) #9
  br label %bb.k

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bn = call ptr @rb_errno_ptr() #9
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !11 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 11
  %or.cond = select i1 %.not, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bq = icmp eq i64 %5, 0
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = load i64, ptr @sym_wait_readable, align 8, !tbaa !13
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.25) #11
  unreachable

bb.ab:                                            ; preds = %bb.x
  %.not143 = trunc nuw i32 %.0110.ph to i1
  br i1 %.not143, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.bo, label %bb.ad [
    i32 90, label %rsock_discard_cmsg_resource.exit.thread
    i32 24, label %rsock_discard_cmsg_resource.exit.thread
  ]

rsock_discard_cmsg_resource.exit.thread:          ; preds = %discard_cmsg.exit.i, %bb.ar, %bb.ao, %bb.an, %bb.ac, %bb.ac
  %.1123 = phi i64 [ %.0122.ph, %bb.ac ], [ %.0122.ph, %bb.ac ], [ %.2124, %bb.ao ], [ %.2124, %bb.an ], [ %.2124, %bb.ar ], [ %.2124, %discard_cmsg.exit.i ]
  %.1108 = phi i32 [ %.0107.ph, %bb.ac ], [ %.0107.ph, %bb.ac ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ar ], [ 1, %discard_cmsg.exit.i ]
  call void @rb_gc() #9
  br label %.outer

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @rb_syserr_fail(i32 noundef %i.bo, ptr noundef nonnull @.str.26) #11
  unreachable

.loopexit195:                                     ; preds = %RSTRING_PTR.exit151, %bb.t
  br i1 %.not130, label %rsock_discard_cmsg_resource.exit.thread187, label %bb.ae

bb.ae:                                            ; preds = %.loopexit195
  %i.bs = load i64, ptr %i.ab, align 8
  %i.bt = icmp eq i64 %i.bs, %i.bh
  %or.cond146 = select i1 %i.d, i1 %i.bt, i1 false ; 2 uses
  br i1 %or.cond146, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bu = icmp slt i64 %.0122.ph, 0
  br i1 %i.bu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bv = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bv, ptr noundef nonnull @.str.27) #11
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.bw = shl nuw i64 %.0122.ph, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.2124 = phi i64 [ %i.bw, %bb.ah ], [ %.0122.ph, %bb.ae ] ; 6 uses
  br i1 %i.i, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.bx = load i32, ptr %i.ah, align 8, !tbaa !74
  %i.by = and i32 %i.bx, 8
  %.not132 = icmp eq i32 %i.by, 0
  br i1 %.not132, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.he, label %bb.al, label %.thread178

bb.al:                                            ; preds = %bb.ak
  %i.bz = load i64, ptr %i.ad, align 8, !tbaa !36 ; 4 uses
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = icmp ugt i32 %i.hg, %i.ca
  br i1 %i.cb, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %.not133 = trunc nuw i32 %.0110.ph to i1
  br i1 %.not133, label %bb.au, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %rsock_discard_cmsg_resource.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cd = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bz ; 2 uses
  %i.cf = icmp ult i64 %i.bz, 16
  %.not1116.i = icmp eq ptr %i.cd, null
  %.not11.i = select i1 %i.cf, i1 true, i1 %.not1116.i
  br i1 %.not11.i, label %rsock_discard_cmsg_resource.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %__cmsg_nxthdr.exit.i
  %.012.i = phi ptr [ %i.dr, %__cmsg_nxthdr.exit.i ], [ %i.cd, %bb.ao ] ; 9 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i, i64 8
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !11
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.ap, label %discard_cmsg.exit.i

bb.ap:                                            ; preds = %.lr.ph.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.012.i, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !11
  %i.cl = icmp eq i32 %i.ck, 1
  br i1 %i.cl, label %bb.aq, label %discard_cmsg.exit.i

bb.aq:                                            ; preds = %bb.ap
  %i.cm = load i64, ptr %.012.i, align 8, !tbaa !13 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i, i64 20 ; 2 uses
  %i.cp = icmp samesign ugt i64 %i.cm, 19
  %i.cq = icmp ule ptr %i.co, %i.ce
  %i.cr = and i1 %i.cq, %i.cp
  br i1 %i.cr, label %.lr.ph.preheader.i.i, label %discard_cmsg.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.aq
  %i.cs = getelementptr inbounds nuw i8, ptr %.012.i, i64 16
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.ct = phi ptr [ %i.cx, %.lr.ph.i.i ], [ %i.co, %.lr.ph.preheader.i.i ] ; 2 uses
  %.013.i.i = phi ptr [ %i.ct, %.lr.ph.i.i ], [ %i.cs, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cu = load i32, ptr %.013.i.i, align 4, !tbaa !11
  call void @rb_update_max_fd(i32 noundef %i.cu) #9
  %i.cv = load i32, ptr %.013.i.i, align 4, !tbaa !11
  %i.cw = call i32 @close(i32 noundef %i.cv) #9   ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4 ; 3 uses
  %i.cy = icmp ule ptr %i.cx, %i.cn
  %i.cz = icmp ule ptr %i.cx, %i.ce
  %i.da = and i1 %i.cy, %i.cz
  br i1 %i.da, label %.lr.ph.i.i, label %discard_cmsg.exit.i, !llvm.loop !1

discard_cmsg.exit.i:                              ; preds = %.lr.ph.i.i, %bb.aq, %bb.ap, %.lr.ph.i
  %i.db = load i64, ptr %.012.i, align 8, !tbaa !13 ; 4 uses
  %i.dc = icmp ult i64 %i.db, 16
  br i1 %i.dc, label %rsock_discard_cmsg_resource.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %discard_cmsg.exit.i
  %i.dd = sub i64 0, %i.db
  %i.de = and i64 %i.dd, 7
  %i.df = or disjoint i64 %i.de, 16               ; 2 uses
  %i.dg = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.dh = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dh
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %.012.i to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.df
  %i.dn = sub nuw i64 %i.dl, %i.df
  %i.do = icmp ult i64 %i.dn, %i.db
  %or.cond.i.i = select i1 %i.dm, i1 true, i1 %i.do
  br i1 %or.cond.i.i, label %rsock_discard_cmsg_resource.exit.thread, label %__cmsg_nxthdr.exit.i

__cmsg_nxthdr.exit.i:                             ; preds = %bb.ar
  %i.dp = add nuw i64 %i.db, 7
  %i.dq = and i64 %i.dp, -8
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i, i64 %i.dq
  br label %.lr.ph.i

bb.as:                                            ; preds = %bb.al
  %i.ds = icmp slt i64 %.0111.ph.ph.ph, 0
  br i1 %i.ds, label %bb.at, label %.thread178

bb.at:                                            ; preds = %bb.as
  %i.dt = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dt, ptr noundef nonnull @.str.28) #11
  unreachable

.thread178:                                       ; preds = %bb.ak, %bb.as
  %i.du = shl nuw i64 %.0111.ph.ph.ph, 1
  br label %.loopexit559

bb.au:                                            ; preds = %bb.am, %bb.aj, %bb.ai
  %.0110.ph.lcssa354 = phi i32 [ 1, %bb.am ], [ %.0110.ph, %bb.aj ], [ %.0110.ph, %bb.ai ] ; 2 uses
  br i1 %or.cond146, label %.loopexit559, label %bb.az

.loopexit559:                                     ; preds = %bb.au, %.thread178
  %.0110.ph358 = phi i32 [ %.0110.ph, %.thread178 ], [ %.0110.ph.lcssa354, %bb.au ]
  %.2113182 = phi i64 [ %i.du, %.thread178 ], [ %.0111.ph.ph.ph, %bb.au ]
  %i.dv = load i64, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.outer.outer.outer.backedge, label %bb.av

bb.av:                                            ; preds = %.loopexit559
  %i.dx = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.dv ; 2 uses
  %i.dz = icmp ult i64 %i.dv, 16
  %.not1116.i152 = icmp eq ptr %i.dx, null
  %.not11.i153 = select i1 %i.dz, i1 true, i1 %.not1116.i152
  br i1 %.not11.i153, label %.outer.outer.outer.backedge, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %bb.av, %__cmsg_nxthdr.exit.i158
  %.012.i155 = phi ptr [ %i.fl, %__cmsg_nxthdr.exit.i158 ], [ %i.dx, %bb.av ] ; 9 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.012.i155, i64 8
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !11
  %i.ec = icmp eq i32 %i.eb, 1
  br i1 %i.ec, label %bb.aw, label %discard_cmsg.exit.i156

bb.aw:                                            ; preds = %.lr.ph.i154
  %i.ed = getelementptr inbounds nuw i8, ptr %.012.i155, i64 12
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !11
  %i.ef = icmp eq i32 %i.ee, 1
  br i1 %i.ef, label %bb.ax, label %discard_cmsg.exit.i156

bb.ax:                                            ; preds = %bb.aw
  %i.eg = load i64, ptr %.012.i155, align 8, !tbaa !13 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.012.i155, i64 %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i155, i64 20 ; 2 uses
  %i.ej = icmp samesign ugt i64 %i.eg, 19
  %i.ek = icmp ule ptr %i.ei, %i.dy
  %i.el = and i1 %i.ek, %i.ej
  br i1 %i.el, label %.lr.ph.preheader.i.i159, label %discard_cmsg.exit.i156

.lr.ph.preheader.i.i159:                          ; preds = %bb.ax
  %i.em = getelementptr inbounds nuw i8, ptr %.012.i155, i64 16
  br label %.lr.ph.i.i160

.lr.ph.i.i160:                                    ; preds = %.lr.ph.i.i160, %.lr.ph.preheader.i.i159
  %i.en = phi ptr [ %i.er, %.lr.ph.i.i160 ], [ %i.ei, %.lr.ph.preheader.i.i159 ] ; 2 uses
  %.013.i.i161 = phi ptr [ %i.en, %.lr.ph.i.i160 ], [ %i.em, %.lr.ph.preheader.i.i159 ] ; 2 uses
  %i.eo = load i32, ptr %.013.i.i161, align 4, !tbaa !11
  call void @rb_update_max_fd(i32 noundef %i.eo) #9
  %i.ep = load i32, ptr %.013.i.i161, align 4, !tbaa !11
  %i.eq = call i32 @close(i32 noundef %i.ep) #9   ; 0 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 4 ; 3 uses
  %i.es = icmp ule ptr %i.er, %i.eh
  %i.et = icmp ule ptr %i.er, %i.dy
  %i.eu = and i1 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph.i.i160, label %discard_cmsg.exit.i156, !llvm.loop !1

discard_cmsg.exit.i156:                           ; preds = %.lr.ph.i.i160, %bb.ax, %bb.aw, %.lr.ph.i154
  %i.ev = load i64, ptr %.012.i155, align 8, !tbaa !13 ; 4 uses
  %i.ew = icmp ult i64 %i.ev, 16
  br i1 %i.ew, label %.outer.outer.outer.backedge, label %bb.ay

bb.ay:                                            ; preds = %discard_cmsg.exit.i156
  %i.ex = sub i64 0, %i.ev
  %i.ey = and i64 %i.ex, 7
  %i.ez = or disjoint i64 %i.ey, 16               ; 2 uses
  %i.fa = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.fb = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %.012.i155 to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.ez
  %i.fh = sub nuw i64 %i.ff, %i.ez
  %i.fi = icmp ult i64 %i.fh, %i.ev
  %or.cond.i.i157 = select i1 %i.fg, i1 true, i1 %i.fi
  br i1 %or.cond.i.i157, label %.outer.outer.outer.backedge, label %__cmsg_nxthdr.exit.i158

__cmsg_nxthdr.exit.i158:                          ; preds = %bb.ay
  %i.fj = add nuw i64 %i.ev, 7
  %i.fk = and i64 %i.fj, -8
  %i.fl = getelementptr inbounds nuw i8, ptr %.012.i155, i64 %i.fk
  br label %.lr.ph.i154

bb.az:                                            ; preds = %bb.au
  %.not135 = icmp eq i32 %i.be, %spec.select
  br i1 %.not135, label %rsock_discard_cmsg_resource.exit.thread187, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fm = load i64, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %.outer.outer.backedge, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fo = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fm ; 2 uses
  %i.fq = icmp ult i64 %i.fm, 16
  %.not1116.i163 = icmp eq ptr %i.fo, null
  %.not11.i164 = select i1 %i.fq, i1 true, i1 %.not1116.i163
  br i1 %.not11.i164, label %.outer.outer.backedge, label %.lr.ph.i165

.outer.outer.backedge:                            ; preds = %discard_cmsg.exit.i167, %bb.be, %bb.bb, %bb.ba
  br label %.outer.outer

.lr.ph.i165:                                      ; preds = %bb.bb, %__cmsg_nxthdr.exit.i169
  %.012.i166 = phi ptr [ %i.hc, %__cmsg_nxthdr.exit.i169 ], [ %i.fo, %bb.bb ] ; 9 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.012.i166, i64 8
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !11
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.bc, label %discard_cmsg.exit.i167

bb.bc:                                            ; preds = %.lr.ph.i165
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i166, i64 12
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !11
  %i.fw = icmp eq i32 %i.fv, 1
  br i1 %i.fw, label %bb.bd, label %discard_cmsg.exit.i167

bb.bd:                                            ; preds = %bb.bc
  %i.fx = load i64, ptr %.012.i166, align 8, !tbaa !13 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.012.i166, i64 %i.fx
  %i.fz = getelementptr inbounds nuw i8, ptr %.012.i166, i64 20 ; 2 uses
  %i.ga = icmp samesign ugt i64 %i.fx, 19
  %i.gb = icmp ule ptr %i.fz, %i.fp
  %i.gc = and i1 %i.gb, %i.ga
  br i1 %i.gc, label %.lr.ph.preheader.i.i170, label %discard_cmsg.exit.i167

.lr.ph.preheader.i.i170:                          ; preds = %bb.bd
  %i.gd = getelementptr inbounds nuw i8, ptr %.012.i166, i64 16
  br label %.lr.ph.i.i171

.lr.ph.i.i171:                                    ; preds = %.lr.ph.i.i171, %.lr.ph.preheader.i.i170
  %i.ge = phi ptr [ %i.gi, %.lr.ph.i.i171 ], [ %i.fz, %.lr.ph.preheader.i.i170 ] ; 2 uses
  %.013.i.i172 = phi ptr [ %i.ge, %.lr.ph.i.i171 ], [ %i.gd, %.lr.ph.preheader.i.i170 ] ; 2 uses
  %i.gf = load i32, ptr %.013.i.i172, align 4, !tbaa !11
  call void @rb_update_max_fd(i32 noundef %i.gf) #9
  %i.gg = load i32, ptr %.013.i.i172, align 4, !tbaa !11
  %i.gh = call i32 @close(i32 noundef %i.gg) #9   ; 0 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 3 uses
  %i.gj = icmp ule ptr %i.gi, %i.fy
  %i.gk = icmp ule ptr %i.gi, %i.fp
  %i.gl = and i1 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i.i171, label %discard_cmsg.exit.i167, !llvm.loop !1

discard_cmsg.exit.i167:                           ; preds = %.lr.ph.i.i171, %bb.bd, %bb.bc, %.lr.ph.i165
  %i.gm = load i64, ptr %.012.i166, align 8, !tbaa !13 ; 4 uses
  %i.gn = icmp ult i64 %i.gm, 16
  br i1 %i.gn, label %.outer.outer.backedge, label %bb.be

bb.be:                                            ; preds = %discard_cmsg.exit.i167
  %i.go = sub i64 0, %i.gm
  %i.gp = and i64 %i.go, 7
  %i.gq = or disjoint i64 %i.gp, 16               ; 2 uses
  %i.gr = load ptr, ptr %i.ac, align 8, !tbaa !35
  %i.gs = load i64, ptr %i.ad, align 8, !tbaa !36
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = ptrtoint ptr %.012.i166 to i64
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gq
  %i.gy = sub nuw i64 %i.gw, %i.gq
  %i.gz = icmp ult i64 %i.gy, %i.gm
  %or.cond.i.i168 = select i1 %i.gx, i1 true, i1 %i.gz
  br i1 %or.cond.i.i168, label %.outer.outer.backedge, label %__cmsg_nxthdr.exit.i169

__cmsg_nxthdr.exit.i169:                          ; preds = %bb.be
  %i.ha = add nuw i64 %i.gm, 7
  %i.hb = and i64 %i.ha, -8
  %i.hc = getelementptr inbounds nuw i8, ptr %.012.i166, i64 %i.hb
  br label %.lr.ph.i165

.outer.outer.outer.backedge:                      ; preds = %discard_cmsg.exit.i156, %bb.ay, %bb.av, %.loopexit559
  %.1119.ph.ph.ph.be = phi i32 [ %i.be, %.loopexit559 ], [ %i.be, %bb.av ], [ %spec.select144, %bb.ay ], [ %spec.select144, %discard_cmsg.exit.i156 ]
  br label %.outer.outer.outer

.outer.outer.outer:                               ; preds = %.outer.outer.outer.backedge, %.preheader
  %.0122.ph.ph.ph = phi i64 [ %i.h, %.preheader ], [ %.2124, %.outer.outer.outer.backedge ]
  %.1119.ph.ph.ph = phi i32 [ %spec.select, %.preheader ], [ %.1119.ph.ph.ph.be, %.outer.outer.outer.backedge ]
  %.0115.ph.ph.ph = phi i64 [ 4, %.preheader ], [ %.1116, %.outer.outer.outer.backedge ]
  %.0111.ph.ph.ph = phi i64 [ %i.m, %.preheader ], [ %.2113182, %.outer.outer.outer.backedge ] ; 8 uses
  %.0110.ph.ph.ph = phi i32 [ 0, %.preheader ], [ %.0110.ph358, %.outer.outer.outer.backedge ]
  %.0107.ph.ph.ph = phi i32 [ %i.x, %.preheader ], [ 1, %.outer.outer.outer.backedge ]
  %i.hd = and i64 %.0111.ph.ph.ph, 4294967295
  %i.he = icmp ugt i64 %.0111.ph.ph.ph, 65536
  %i.hf = trunc i64 %.0111.ph.ph.ph to i32
  %i.hg = add i32 %i.hf, -65536
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.outer.outer.outer
  %.0122.ph.ph = phi i64 [ %.0122.ph.ph.ph, %.outer.outer.outer ], [ %.2124, %.outer.outer.backedge ]
  %.1119.ph.ph = phi i32 [ %.1119.ph.ph.ph, %.outer.outer.outer ], [ %spec.select, %.outer.outer.backedge ]
  %.0115.ph.ph = phi i64 [ %.0115.ph.ph.ph, %.outer.outer.outer ], [ %.1116, %.outer.outer.backedge ]
  %.0110.ph.ph = phi i32 [ %.0110.ph.ph.ph, %.outer.outer.outer ], [ %.0110.ph.lcssa354, %.outer.outer.backedge ]
  %.0107.ph.ph = phi i32 [ %.0107.ph.ph.ph, %.outer.outer.outer ], [ 0, %.outer.outer.backedge ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %rsock_discard_cmsg_resource.exit.thread
  %.0122.ph = phi i64 [ %.1123, %rsock_discard_cmsg_resource.exit.thread ], [ %.0122.ph.ph, %.outer.outer ] ; 8 uses
  %.1119.ph = phi i32 [ %spec.select144, %rsock_discard_cmsg_resource.exit.thread ], [ %.1119.ph.ph, %.outer.outer ]
  %.0115.ph = phi i64 [ %.1116, %rsock_discard_cmsg_resource.exit.thread ], [ %.0115.ph.ph, %.outer.outer ]
  %.0110.ph = phi i32 [ 1, %rsock_discard_cmsg_resource.exit.thread ], [ %.0110.ph.ph, %.outer.outer ] ; 5 uses
  %.0107.ph = phi i32 [ %.1108, %rsock_discard_cmsg_resource.exit.thread ], [ %.0107.ph.ph, %.outer.outer ] ; 3 uses
  %.not130 = icmp eq i32 %.0107.ph, 0             ; 2 uses
  br label %bb.k

rsock_discard_cmsg_resource.exit.thread187:       ; preds = %bb.az, %.loopexit195
  %i.hh = icmp eq i64 %.1116, 4
  br i1 %i.hh, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread187
  %i.hi = call i64 @rb_str_new(ptr noundef %i.as, i64 noundef %i.bh) #9
  br label %bb.bh

bb.bg:                                            ; preds = %rsock_discard_cmsg_resource.exit.thread187
  %i.hj = call i64 @rb_str_resize(i64 noundef %.1116, i64 noundef %i.bh) #9 ; 0 uses
  %i.hk = load i64, ptr @rb_cString, align 8, !tbaa !13
  %i.hl = call i64 @rb_obj_reveal(i64 noundef %.1116, i64 noundef %i.hk) #9 ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.2117 = phi i64 [ %i.hi, %bb.bf ], [ %.1116, %bb.bg ]
  %i.hm = load i32, ptr %i.ah, align 8, !tbaa !74
  %i.hn = sext i32 %i.hm to i64
  %i.ho = shl nsw i64 %i.hn, 1
  %i.hp = or disjoint i64 %i.ho, 1
  %i.hq = load ptr, ptr %9, align 8, !tbaa !28
  %i.hr = load i32, ptr %i.y, align 8, !tbaa !29
  %i.hs = call i64 @rsock_io_socket_addrinfo(i64 noundef %0, ptr noundef %i.hq, i32 noundef %i.hr) #9
  %i.ht = call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %.2117, i64 noundef %i.hs, i64 noundef %i.hp) #9 ; 3 uses
  %i.hu = call i32 @rsock_getfamily(ptr noundef nonnull %i.v) #9
  %i.hv = load i64, ptr %i.ad, align 8, !tbaa !36 ; 3 uses
  %.not138 = icmp eq i64 %i.hv, 0
  br i1 %.not138, label %.loopexit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hw = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 4 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %i.hv ; 6 uses
  %i.hy = icmp ult i64 %i.hv, 16
  %.not139295297 = icmp eq ptr %i.hw, null
  %.not139295 = select i1 %i.hy, i1 true, i1 %.not139295297
  br i1 %.not139295, label %select.unfold._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bi
  %i.hz = sext i32 %i.hu to i64
  %i.ia = shl nsw i64 %i.hz, 1
  %i.ib = or disjoint i64 %i.ia, 1
  %i.ic = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.id = load i64, ptr %i.hw, align 8, !tbaa !13 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %._crit_edge, label %.lr.ph554

._crit_edge:                                      ; preds = %__cmsg_nxthdr.exit, %.lr.ph
  %i.if = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.if, ptr noundef nonnull @.str.29) #11
  unreachable

.lr.ph554:                                        ; preds = %.lr.ph, %__cmsg_nxthdr.exit
  %i.ig = phi i64 [ %i.lr, %__cmsg_nxthdr.exit ], [ %i.id, %.lr.ph ]
  %.0114296553 = phi ptr [ %i.lq, %__cmsg_nxthdr.exit ], [ %i.hw, %.lr.ph ] ; 13 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0114296553, i64 %i.ig ; 2 uses
  %.not140 = icmp ugt ptr %i.ih, %i.hx
  %i.ii = select i1 %.not140, ptr %i.hx, ptr %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %.0114296553, i64 16 ; 4 uses
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %.0114296553, i64 8 ; 2 uses
  %i.io = load i32, ptr %i.in, align 8, !tbaa !11
  %i.ip = getelementptr inbounds nuw i8, ptr %.0114296553, i64 12 ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !11
  %i.ir = call i64 @rb_str_new(ptr noundef nonnull %i.ij, i64 noundef %i.im) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ir, ptr %i.a, align 8, !tbaa !13
  %i.is = load i64, ptr @rb_cAncillaryData, align 8, !tbaa !13
  %i.it = call i64 @rb_obj_alloc(i64 noundef %i.is) #9 ; 4 uses
  %i.iu = call i64 @rb_string_value(ptr noundef nonnull %i.a) #9 ; 0 uses
  %i.iv = sext i32 %i.io to i64
  %i.iw = shl nsw i64 %i.iv, 1
  %i.ix = or disjoint i64 %i.iw, 1
  %i.iy = sext i32 %i.iq to i64
  %i.iz = shl nsw i64 %i.iy, 1
  %i.ja = or disjoint i64 %i.iz, 1
  %i.jb = load i64, ptr %i.a, align 8, !tbaa !13
  %i.jc = call i64 @ancillary_initialize(i64 noundef %i.it, i64 noundef %i.ib, i64 noundef %i.ix, i64 noundef %i.ja, i64 noundef %i.jb) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jd = load i32, ptr %i.in, align 8, !tbaa !11
  %i.je = icmp eq i32 %i.jd, 1                    ; 2 uses
  br i1 %.not193, label %bb.br, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph554
  br i1 %i.je, label %bb.bk, label %make_io_for_unix_rights.exit

bb.bk:                                            ; preds = %bb.bj
  %i.jf = load i32, ptr %i.ip, align 4, !tbaa !11
  %i.jg = icmp eq i32 %i.jf, 1
  br i1 %i.jg, label %bb.bl, label %make_io_for_unix_rights.exit

bb.bl:                                            ; preds = %bb.bk
  %i.jh = call i64 @rb_ary_new() #9               ; 2 uses
  %.pr.i.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !13 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i175, label %rbimpl_intern_const.exit.i

.lr.ph.i.i175:                                    ; preds = %bb.bl, %.lr.ph.i.i175
  %i.ji = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #9 ; 3 uses
  store i64 %i.ji, ptr @make_io_for_unix_rights.rbimpl_id, align 8, !tbaa !13
  %.not.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not.i.i, label %.lr.ph.i.i175, label %rbimpl_intern_const.exit.i, !llvm.loop !0

rbimpl_intern_const.exit.i:                       ; preds = %.lr.ph.i.i175, %bb.bl
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %bb.bl ], [ %i.ji, %.lr.ph.i.i175 ]
  %i.jj = call i64 @rb_ivar_set(i64 noundef %i.it, i64 noundef %.lcssa.i.i, i64 noundef %i.jh) #9 ; 0 uses
  %i.jk = load i64, ptr %.0114296553, align 8, !tbaa !13 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.0114296553, i64 %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.0114296553, i64 20 ; 2 uses
  %i.jn = icmp samesign ugt i64 %i.jk, 19
  %i.jo = icmp ule ptr %i.jm, %i.hx
  %i.jp = and i1 %i.jo, %i.jn
  br i1 %i.jp, label %.lr.ph.i174, label %._crit_edge.i

.lr.ph.i174:                                      ; preds = %rbimpl_intern_const.exit.i, %rbimpl_intern_const.exit31.i
  %i.jq = phi ptr [ %i.kf, %rbimpl_intern_const.exit31.i ], [ %i.jm, %rbimpl_intern_const.exit.i ] ; 2 uses
  %.034.i = phi ptr [ %i.jq, %rbimpl_intern_const.exit31.i ], [ %i.ij, %rbimpl_intern_const.exit.i ]
  %i.jr = load i32, ptr %.034.i, align 4, !tbaa !11 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.js = call i32 @fstat(i32 noundef %i.jr, ptr noundef nonnull %7) #9
  %i.jt = icmp eq i32 %i.js, -1
  br i1 %i.jt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph.i174
  %i.ju = load i64, ptr @rb_eSocket, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ju, ptr noundef nonnull @.str.30) #11
  unreachable

bb.bn:                                            ; preds = %.lr.ph.i174
  call void @rb_update_max_fd(i32 noundef %i.jr) #9
  call void @rb_maygvl_fd_fix_cloexec(i32 noundef %i.jr) #9
  %i.jv = load i32, ptr %i.ic, align 8, !tbaa !76
  %i.jw = and i32 %i.jv, 61440
  %i.jx = icmp eq i32 %i.jw, 49152
  br i1 %i.jx, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.jy = load i64, ptr @rb_cSocket, align 8, !tbaa !13
  %i.jz = call i64 @rb_obj_alloc(i64 noundef %i.jy) #9
  %i.ka = call i64 @rsock_init_sock(i64 noundef %i.jz, i32 noundef %i.jr) #9
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kb = call i64 @rb_io_fdopen(i32 noundef %i.jr, i32 noundef 2, ptr noundef null) #9
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.023.i = phi i64 [ %i.ka, %bb.bo ], [ %i.kb, %bb.bp ]
  %.pr.i26.i = load i64, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !13 ; 2 uses
  %.not4.i27.i = icmp eq i64 %.pr.i26.i, 0
  br i1 %.not4.i27.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i

.lr.ph.i29.i:                                     ; preds = %bb.bq, %.lr.ph.i29.i
  %i.kc = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 11) #9 ; 3 uses
  store i64 %i.kc, ptr @make_io_for_unix_rights.rbimpl_id.31, align 8, !tbaa !13
  %.not.i30.i = icmp eq i64 %i.kc, 0
  br i1 %.not.i30.i, label %.lr.ph.i29.i, label %rbimpl_intern_const.exit31.i, !llvm.loop !0

rbimpl_intern_const.exit31.i:                     ; preds = %.lr.ph.i29.i, %bb.bq
  %.lcssa.i28.i = phi i64 [ %.pr.i26.i, %bb.bq ], [ %i.kc, %.lr.ph.i29.i ]
  %i.kd = call i64 @rb_attr_get(i64 noundef %i.it, i64 noundef %.lcssa.i28.i) #9 ; 2 uses
  %i.ke = call i64 @rb_ary_push(i64 noundef %i.kd, i64 noundef %.023.i) #9 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jq, i64 4 ; 3 uses
  %i.kg = icmp ule ptr %i.kf, %i.jl
  %i.kh = icmp ule ptr %i.kf, %i.hx
  %i.ki = and i1 %i.kg, %i.kh
  br i1 %i.ki, label %.lr.ph.i174, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %rbimpl_intern_const.exit31.i, %rbimpl_intern_const.exit.i
  %.024.lcssa.i = phi i64 [ %i.jh, %rbimpl_intern_const.exit.i ], [ %i.kd, %rbimpl_intern_const.exit31.i ]
  call void @rb_obj_freeze_inline(i64 noundef %.024.lcssa.i) #9
  br label %make_io_for_unix_rights.exit

bb.br:                                            ; preds = %.lr.ph554
  br i1 %i.je, label %bb.bs, label %make_io_for_unix_rights.exit

bb.bs:                                            ; preds = %bb.br
  %i.kj = load i32, ptr %i.ip, align 4, !tbaa !11
  %i.kk = icmp eq i32 %i.kj, 1
  br i1 %i.kk, label %bb.bt, label %make_io_for_unix_rights.exit

bb.bt:                                            ; preds = %bb.bs
  %i.kl = load i64, ptr %.0114296553, align 8, !tbaa !13 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.0114296553, i64 %i.kl
  %i.kn = getelementptr inbounds nuw i8, ptr %.0114296553, i64 20 ; 2 uses
  %i.ko = icmp samesign ugt i64 %i.kl, 19
  %i.kp = icmp ule ptr %i.kn, %i.hx
  %i.kq = and i1 %i.kp, %i.ko
  br i1 %i.kq, label %.lr.ph.i176, label %make_io_for_unix_rights.exit

.lr.ph.i176:                                      ; preds = %bb.bt, %.lr.ph.i176
  %i.kr = phi ptr [ %i.kv, %.lr.ph.i176 ], [ %i.kn, %bb.bt ] ; 2 uses
  %.013.i = phi ptr [ %i.kr, %.lr.ph.i176 ], [ %i.ij, %bb.bt ] ; 2 uses
  %i.ks = load i32, ptr %.013.i, align 4, !tbaa !11
end_hunk_0
