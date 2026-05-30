inline.NumInlined: 213
inline.NumDeleted: 54
begin_hunk_0_@bsock_sendmsg_internal:bb.a
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
  call void @llvm.memset.p0.i64(ptr align 1 %i.ca, i8 0, i64 %i.bt, i1 false)
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
  %10 = or i32 %i.cy, 64
  %spec.select = select i1 %.not74, i32 %10, i32 %i.cy
  %i.cz = load i64, ptr %i.b, align 8, !tbaa !10
  %i.da = icmp eq i64 %i.cz, 4
  br i1 %i.da, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.db = call i64 @rsock_sockaddr_string_value(ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @rb_io_check_closed(ptr noundef %i.k) #10
  %i.dc = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.df = inttoptr i64 %i.o to ptr                ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dn = getelementptr inbounds nuw i8, ptr %7, i64 4
  br label %bb.z

bb.z:                                             ; preds = %bb.ap, %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i64 56, i1 false)
  %i.do = load i64, ptr %i.b, align 8, !tbaa !10  ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4
  br i1 %i.dp, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dq = inttoptr i64 %i.do to ptr               ; 3 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !17
  %i.ds = and i64 %i.dr, 8192
  %.not.i99 = icmp eq i64 %i.ds, 0
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  br i1 %.not.i99, label %RSTRING_PTR.exit100, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !18
  br label %RSTRING_PTR.exit100

RSTRING_PTR.exit100:                              ; preds = %bb.aa, %bb.ab
  %i.dv = phi ptr [ %i.du, %bb.ab ], [ %i.dt, %bb.aa ]
  store ptr %i.dv, ptr %8, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !21 ; 3 uses
  %i.dy = add i64 %i.dx, 2147483648
  %.not.i.i101 = icmp ult i64 %i.dy, 4294967296
  br i1 %.not.i.i101, label %RSTRING_LENINT.exit, label %bb.ac

bb.ac:                                            ; preds = %RSTRING_PTR.exit100
  call void @rb_out_of_int(i64 noundef %i.dx) #11
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit100
  %i.dz = trunc nsw i64 %i.dx to i32
  store i32 %i.dz, ptr %i.dc, align 8, !tbaa !30
  br label %bb.ad

bb.ad:                                            ; preds = %RSTRING_LENINT.exit, %bb.z
  store i64 1, ptr %i.dd, align 8, !tbaa !31
  store ptr %9, ptr %i.de, align 8, !tbaa !32
  %i.ea = load i64, ptr %i.df, align 8, !tbaa !17
  %i.eb = and i64 %i.ea, 8192
  %.not.i102 = icmp eq i64 %i.eb, 0
  br i1 %.not.i102, label %RSTRING_PTR.exit103, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ec = load ptr, ptr %i.dg, align 8, !tbaa !18
  br label %RSTRING_PTR.exit103

RSTRING_PTR.exit103:                              ; preds = %bb.ad, %bb.ae
  %i.ed = phi ptr [ %i.ec, %bb.ae ], [ %i.dg, %bb.ad ]
  store ptr %i.ed, ptr %9, align 8, !tbaa !33
  %i.ee = load i64, ptr %i.dh, align 8, !tbaa !21
  store i64 %i.ee, ptr %i.di, align 8, !tbaa !35
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !10  ; 2 uses
  %.not75 = icmp eq i64 %i.ef, 0
  br i1 %.not75, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %RSTRING_PTR.exit103
  %i.eg = inttoptr i64 %i.ef to ptr               ; 3 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !17
  %i.ei = and i64 %i.eh, 8192
  %.not.i104 = icmp eq i64 %i.ei, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  br i1 %.not.i104, label %RSTRING_PTR.exit105, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !18
  br label %RSTRING_PTR.exit105

RSTRING_PTR.exit105:                              ; preds = %bb.af, %bb.ag
  %i.el = phi ptr [ %i.ek, %bb.ag ], [ %i.ej, %bb.af ]
  store ptr %i.el, ptr %i.dj, align 8, !tbaa !36
  %i.em = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.en = load i64, ptr %i.em, align 8, !tbaa !21 ; 3 uses
  %i.eo = add i64 %i.en, 2147483648
  %.not.i.i106 = icmp ult i64 %i.eo, 4294967296
  br i1 %.not.i.i106, label %RSTRING_LENINT.exit107, label %bb.ah

bb.ah:                                            ; preds = %RSTRING_PTR.exit105
  call void @rb_out_of_int(i64 noundef %i.en) #11
  unreachable

RSTRING_LENINT.exit107:                           ; preds = %RSTRING_PTR.exit105
  %i.ep = and i64 %i.en, 4294967295
  store i64 %i.ep, ptr %i.dk, align 8, !tbaa !37
  br label %bb.ai

bb.ai:                                            ; preds = %RSTRING_LENINT.exit107, %RSTRING_PTR.exit103
  call void @rb_io_check_closed(ptr noundef %i.k) #10
  %i.eq = load i32, ptr %i.dl, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store i32 %i.eq, ptr %7, align 8, !tbaa !51
  store ptr %8, ptr %i.dm, align 8, !tbaa !54
  store i32 %spec.select, ptr %i.dn, align 4, !tbaa !55
  %i.er = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_sendmsg_func, ptr noundef nonnull %7, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.es = icmp eq ptr %i.er, inttoptr (i64 -1 to ptr)
  br i1 %i.es, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not74, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.et = call ptr @rb_errno_ptr() #10
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !6
  %i.ev = load i64, ptr %i.k, align 8, !tbaa !56
  %i.ew = call i32 @rb_io_maybe_wait_writable(i32 noundef %i.eu, i64 noundef %i.ev, i64 noundef 4) #10
  %.not76 = icmp eq i32 %i.ew, 0
  br i1 %.not76, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ex = call ptr @rb_errno_ptr() #10
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !6  ; 2 uses
  %i.ez = icmp eq i32 %i.ey, 11
  %or.cond = select i1 %.not74, i1 %i.ez, i1 false
  br i1 %or.cond, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.fa = icmp eq i64 %5, 0
  br i1 %i.fa, label %.thread, label %bb.an

.thread:                                          ; preds = %bb.am
  %i.fb = load i64, ptr @sym_wait_writable, align 8, !tbaa !10
  br label %rb_ll2num_inline.exit

bb.an:                                            ; preds = %bb.am
  call void @rb_readwrite_syserr_fail(i32 noundef 1, i32 noundef 11, ptr noundef nonnull @.str.22) #12
  unreachable

bb.ao:                                            ; preds = %bb.al
  call void @rb_syserr_fail(i32 noundef %i.ey, ptr noundef nonnull @.str.23) #12
  unreachable

bb.ap:                                            ; preds = %bb.ak
  call void @rb_io_check_closed(ptr noundef nonnull %i.k) #10
  br label %bb.z

bb.aq:                                            ; preds = %bb.ai
  %i.fc = ptrtoint ptr %i.er to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store ptr %i.d, ptr %i.g, align 8, !tbaa !24
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #10, !srcloc !57
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  %i.fe = load volatile i64, ptr %i.fd, align 8, !tbaa !10 ; 0 uses
  %i.ff = load i64, ptr %i.a, align 8, !tbaa !10
  call void @rb_str_tmp_frozen_release(i64 noundef %i.ff, i64 noundef %i.o) #10
  %i.fg = add i64 %i.fc, 4611686018427387904
  %or.cond.i = icmp sgt i64 %i.fg, -1
  br i1 %or.cond.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fh = shl nsw i64 %i.fc, 1
  %i.fi = or disjoint i64 %i.fh, 1
  br label %rb_ll2num_inline.exit

bb.as:                                            ; preds = %bb.aq
  %i.fj = call i64 @rb_ll2inum(i64 noundef range(i64 0, -1) %i.fc) #10
  br label %rb_ll2num_inline.exit

rb_ll2num_inline.exit:                            ; preds = %bb.as, %bb.ar, %.thread
  %.2 = phi i64 [ %i.fb, %.thread ], [ %i.fi, %bb.ar ], [ %i.fj, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
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
  %i.c = load i32, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = tail call i64 @recvmsg(i32 noundef %0, ptr noundef %1, i32 noundef %i.a) #10 ; 2 uses
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.b, align 8, !tbaa !30
  %i.f = icmp ult i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.c, ptr %i.b, align 8, !tbaa !30
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
define void @rsock_discard_cmsg_resource(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b ; 2 uses
  %i.g = icmp ult i64 %i.b, 16
  %.not1116 = icmp eq ptr %i.e, null
  %.not11 = select i1 %i.g, i1 true, i1 %.not1116
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %__cmsg_nxthdr.exit
  %.012 = phi ptr [ %i.as, %__cmsg_nxthdr.exit ], [ %i.e, %bb.b ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.012, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !6
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %discard_cmsg.exit

bb.c:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.012, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !6
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %discard_cmsg.exit

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %.012, align 8, !tbaa !10  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %.012, i64 20 ; 2 uses
  %i.q = icmp ugt i64 %i.n, 19
  %i.r = icmp ule ptr %i.p, %i.f
  %i.s = and i1 %i.r, %i.q
  br i1 %i.s, label %.lr.ph.preheader.i, label %discard_cmsg.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.012, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.u = phi ptr [ %i.y, %.lr.ph.i ], [ %i.p, %.lr.ph.preheader.i ] ; 2 uses
  %.013.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.t, %.lr.ph.preheader.i ] ; 2 uses
  %i.v = load i32, ptr %.013.i, align 4, !tbaa !6
  tail call void @rb_update_max_fd(i32 noundef %i.v) #10
  %i.w = load i32, ptr %.013.i, align 4, !tbaa !6
  %i.x = tail call i32 @close(i32 noundef %i.w) #10 ; 0 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %i.z = icmp ule ptr %i.y, %i.o
  %i.aa = icmp ule ptr %i.y, %i.f
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i, label %discard_cmsg.exit, !llvm.loop !58

discard_cmsg.exit:                                ; preds = %.lr.ph.i, %.lr.ph, %bb.c, %bb.d
  %i.ac = load i64, ptr %.012, align 8, !tbaa !10 ; 4 uses
  %i.ad = icmp ult i64 %i.ac, 16
  br i1 %i.ad, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %discard_cmsg.exit
  %i.ae = sub i64 0, %i.ac
  %i.af = and i64 %i.ae, 7
  %i.ag = or disjoint i64 %i.af, 16               ; 2 uses
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !37
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
  br label %.lr.ph, !llvm.loop !59

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
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 4, ptr %i.b, align 8, !tbaa !10
  %i.d = icmp eq i64 %1, 4                        ; 3 uses
  br i1 %i.d, label %rb_num2ull_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = trunc i64 %1 to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = ashr i64 %1, 1
  br label %rb_num2ull_inline.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i64 @rb_num2ull(i64 noundef %1) #10
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
  %i.l = tail call i64 @rb_num2ull(i64 noundef %3) #10
  br label %rb_num2ull_inline.exit148

rb_num2ull_inline.exit148:                        ; preds = %bb.g, %bb.f, %rb_num2ull_inline.exit
  %i.m = phi i64 [ 4096, %rb_num2ull_inline.exit ], [ %i.k, %bb.f ], [ %i.l, %bb.g ]
  %i.n = trunc i64 %2 to i1
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rb_num2ull_inline.exit148
  %i.o = tail call i64 @rb_fix2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

bb.i:                                             ; preds = %rb_num2ull_inline.exit148
  %i.p = tail call i64 @rb_num2int(i64 noundef %2) #10
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.h, %bb.i
  %.0.i149 = phi i64 [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  %i.q = trunc i64 %.0.i149 to i32                ; 2 uses
  %.not = icmp ne i32 %6, 0                       ; 3 uses
  %12 = or i32 %i.q, 64
  %spec.select = select i1 %.not, i32 %12, i32 %i.q ; 3 uses
  %i.r = and i64 %4, -5
  %.not193 = icmp eq i64 %i.r, 0
  %i.s = tail call i64 @rb_io_taint_check(i64 noundef %0) #10
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !12   ; 8 uses
  tail call void @rb_io_check_closed(ptr noundef %i.v) #10
  %i.w = tail call i32 @rb_io_read_pending(ptr noundef %i.v) #13
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
  br label %.outer.outer

bb.j:                                             ; preds = %rb_num2int_inline.exit
  %i.aj = load i64, ptr @rb_eIOError, align 8, !tbaa !10
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.aj, ptr noundef nonnull @.str.24) #12
  unreachable

bb.k:                                             ; preds = %.outer195, %bb.w
  %.0113 = phi i64 [ %.1114, %bb.w ], [ %.0113.ph197, %.outer195 ] ; 3 uses
  %.1111 = phi i32 [ %spec.select144, %bb.w ], [ %.1111.ph198, %.outer195 ] ; 2 uses
  %i.ak = icmp eq i64 %.0113, 4
  br i1 %i.ak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = call i64 @rb_str_tmp_new(i64 noundef %.0107.ph199) #10
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.am = call i64 @rb_str_resize(i64 noundef %.0113, i64 noundef %.0107.ph199) #10 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1114 = phi i64 [ %i.al, %bb.l ], [ %.0113, %bb.m ] ; 9 uses
  %i.an = inttoptr i64 %.1114 to ptr              ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !17
  %i.ap = and i64 %i.ao, 8192
  %.not.i = icmp eq i64 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !18
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.n, %bb.o
  %i.as = phi ptr [ %i.ar, %bb.o ], [ %i.aq, %bb.n ] ; 2 uses
  %i.at = load i64, ptr %i.b, align 8, !tbaa !10  ; 3 uses
  %i.au = icmp eq i64 %i.at, 4
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %RSTRING_PTR.exit
  %i.av = call i64 @rb_str_tmp_new(i64 noundef %.0121.ph.ph) #10 ; 2 uses
  store i64 %i.av, ptr %i.b, align 8, !tbaa !10
  br label %bb.r

bb.q:                                             ; preds = %RSTRING_PTR.exit
  %i.aw = call i64 @rb_str_resize(i64 noundef %i.at, i64 noundef %.0121.ph.ph) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ax = phi i64 [ %i.at, %bb.q ], [ %i.av, %bb.p ]
  %i.ay = inttoptr i64 %i.ax to ptr               ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !17
  %i.ba = and i64 %i.az, 8192
  %.not.i150 = icmp eq i64 %i.ba, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  br i1 %.not.i150, label %RSTRING_PTR.exit151, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18
  br label %RSTRING_PTR.exit151

RSTRING_PTR.exit151:                              ; preds = %bb.r, %bb.s
  %i.bd = phi ptr [ %i.bc, %bb.s ], [ %i.bb, %bb.r ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ai, i8 0, i64 48, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %11, i8 0, i64 2048, i1 false)
  store ptr %11, ptr %9, align 8, !tbaa !27
  store i32 2048, ptr %i.y, align 8, !tbaa !30
  store ptr %10, ptr %i.z, align 8, !tbaa !32
  store i64 1, ptr %i.aa, align 8, !tbaa !31
  store ptr %i.as, ptr %10, align 8, !tbaa !33
  store i64 %.0107.ph199, ptr %i.ab, align 8, !tbaa !35
  store ptr %i.bd, ptr %i.ac, align 8, !tbaa !36
  store i64 %i.dx, ptr %i.ad, align 8, !tbaa !37
  %i.be = or i32 %.1111, 2                        ; 4 uses
  %spec.select144 = select i1 %.not130, i32 %.1111, i32 %i.be ; 5 uses
  call void @rb_io_check_closed(ptr noundef %i.v) #10
  %i.bf = load i32, ptr %i.ae, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store i32 %i.bf, ptr %8, align 8, !tbaa !60
  store ptr %9, ptr %i.af, align 8, !tbaa !62
  store i32 %spec.select144, ptr %i.ag, align 4, !tbaa !63
  %i.bg = call ptr @rb_thread_call_without_gvl(ptr noundef nonnull @nogvl_recvmsg_func, ptr noundef nonnull %8, ptr noundef nonnull inttoptr (i64 -1 to ptr), ptr noundef null) #10
  %i.bh = ptrtoint ptr %i.bg to i64               ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  switch i64 %i.bh, label %.loopexit201 [
    i64 0, label %bb.t
    i64 -1, label %bb.u
  ]

bb.t:                                             ; preds = %RSTRING_PTR.exit151
  %i.bi = call i32 @rsock_is_dgram(ptr noundef nonnull %i.v) #10
  %.not131 = icmp eq i32 %i.bi, 0
  br i1 %.not131, label %.loopexit, label %.loopexit201

bb.u:                                             ; preds = %RSTRING_PTR.exit151
  br i1 %.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = call ptr @rb_errno_ptr() #10
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !6
  %i.bl = load i64, ptr %i.v, align 8, !tbaa !56
  %i.bm = call i32 @rb_io_maybe_wait_readable(i32 noundef %i.bk, i64 noundef %i.bl, i64 noundef 4) #10
  %.not142 = icmp eq i32 %i.bm, 0
  br i1 %.not142, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @rb_io_check_closed(ptr noundef nonnull %i.v) #10
  br label %bb.k

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.bn = call ptr @rb_errno_ptr() #10
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !6  ; 3 uses
  %i.bp = icmp eq i32 %i.bo, 11
  %or.cond = select i1 %.not, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.bq = icmp eq i64 %5, 0
  br i1 %i.bq, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.br = load i64, ptr @sym_wait_readable, align 8, !tbaa !10
  br label %.loopexit

bb.aa:                                            ; preds = %bb.y
  call void @rb_readwrite_syserr_fail(i32 noundef 0, i32 noundef 11, ptr noundef nonnull @.str.25) #12
  unreachable

bb.ab:                                            ; preds = %bb.x
  %.not143 = icmp eq i32 %.0120.ph196, 0
  br i1 %.not143, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  switch i32 %i.bo, label %bb.ad [
    i32 90, label %rsock_discard_cmsg_resource.exit.thread
    i32 24, label %rsock_discard_cmsg_resource.exit.thread
  ]

rsock_discard_cmsg_resource.exit.thread:          ; preds = %discard_cmsg.exit.i, %bb.ar, %bb.ao, %bb.an, %bb.ac, %bb.ac
  %.1108 = phi i64 [ %.0107.ph199, %bb.ac ], [ %.0107.ph199, %bb.ac ], [ %.2109, %bb.ao ], [ %.2109, %bb.an ], [ %.2109, %bb.ar ], [ %.2109, %discard_cmsg.exit.i ]
  %.1 = phi i32 [ %.0106.ph200, %bb.ac ], [ %.0106.ph200, %bb.ac ], [ 1, %bb.ao ], [ 1, %bb.an ], [ 1, %bb.ar ], [ 1, %discard_cmsg.exit.i ]
  call void @rb_gc() #10
  br label %.outer195

.outer195:                                        ; preds = %.outer, %rsock_discard_cmsg_resource.exit.thread
  %.0120.ph196 = phi i32 [ %.0120.ph, %.outer ], [ 1, %rsock_discard_cmsg_resource.exit.thread ] ; 4 uses
  %.0113.ph197 = phi i64 [ %.0113.ph, %.outer ], [ %.1114, %rsock_discard_cmsg_resource.exit.thread ]
  %.1111.ph198 = phi i32 [ %.1111.ph, %.outer ], [ %spec.select144, %rsock_discard_cmsg_resource.exit.thread ]
  %.0107.ph199 = phi i64 [ %.0107.ph, %.outer ], [ %.1108, %rsock_discard_cmsg_resource.exit.thread ] ; 8 uses
  %.0106.ph200 = phi i32 [ %.0106.ph, %.outer ], [ %.1, %rsock_discard_cmsg_resource.exit.thread ] ; 3 uses
  %.not130 = icmp eq i32 %.0106.ph200, 0          ; 2 uses
  br label %bb.k

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @rb_syserr_fail(i32 noundef %i.bo, ptr noundef nonnull @.str.26) #12
  unreachable

.loopexit201:                                     ; preds = %RSTRING_PTR.exit151, %bb.t
  br i1 %.not130, label %rsock_discard_cmsg_resource.exit.thread187, label %bb.ae

bb.ae:                                            ; preds = %.loopexit201
  %i.bs = load i64, ptr %i.ab, align 8
  %i.bt = icmp eq i64 %i.bs, %i.bh
  %or.cond146 = select i1 %i.d, i1 %i.bt, i1 false ; 2 uses
  br i1 %or.cond146, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.bu = icmp slt i64 %.0107.ph199, 0
  br i1 %i.bu, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bv = load i64, ptr @rb_eArgError, align 8, !tbaa !10
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bv, ptr noundef nonnull @.str.27) #12
  unreachable
end_hunk_0
