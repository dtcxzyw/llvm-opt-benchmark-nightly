inline.NumInlined: 312
inline.NumDeleted: 57
begin_hunk_0_@addrinfo_initialize:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  %i.h = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @addrinfo_type) #17
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.i, ptr noundef nonnull @.str.106) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 21 uses
  store i64 4, ptr %i.j, align 8, !tbaa !92
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store i64 4, ptr %i.k, align 8, !tbaa !94
  %i.l = inttoptr i64 %2 to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.j, ptr %i.m, align 8, !tbaa !95
  %i.n = icmp slt i32 %0, 1
  br i1 %i.n, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = load i64, ptr %1, align 8, !tbaa !38     ; 2 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !38
  %.not68 = icmp eq i32 %0, 1
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.r = phi i64 [ %i.q, %bb.d ], [ 4, %.preheader ] ; 2 uses
  %.286.i = phi i32 [ 2, %bb.d ], [ 1, %.preheader ] ; 4 uses
  %i.s = icmp samesign ult i32 %.286.i, %0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = zext nneg i32 %.286.i to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8, !tbaa !38
  %i.w = add nuw nsw i32 %.286.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.v, %bb.f ], [ 4, %bb.e ]    ; 2 uses
  %.286.i.1 = phi i32 [ %i.w, %bb.f ], [ %.286.i, %bb.e ] ; 4 uses
  %i.y = icmp samesign ult i32 %.286.i.1, %0
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = zext nneg i32 %.286.i.1 to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.ac = add nuw nsw i32 %.286.i.1, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ad = phi i64 [ %i.ab, %bb.h ], [ 4, %bb.g ]  ; 4 uses
  %.286.i.2 = phi i32 [ %i.ac, %bb.h ], [ %.286.i.1, %bb.g ]
  %i.ae = icmp eq i32 %.286.i.2, %0
  br i1 %i.ae, label %rb_scan_args_set.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 4) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.i
  %i.af = icmp eq i64 %i.r, 4
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %rb_scan_args_set.exit
  %i.ag = tail call i32 @rsock_family_arg(i64 noundef %i.r) #17
  br label %bb.l

bb.l:                                             ; preds = %rb_scan_args_set.exit, %bb.k
  %i.ah = phi i32 [ %i.ag, %bb.k ], [ 0, %rb_scan_args_set.exit ] ; 3 uses
  %i.ai = icmp eq i64 %i.x, 4
  br i1 %i.ai, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = tail call i32 @rsock_socktype_arg(i64 noundef %i.x) #17
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ak = phi i32 [ %i.aj, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %i.al = icmp eq i64 %i.ad, 4
  br i1 %i.al, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = trunc i64 %i.ad to i1
  br i1 %i.am, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.an = tail call i64 @rb_fix2int(i64 noundef %i.ad) #17
  br label %rb_num2int_inline.exit

bb.q:                                             ; preds = %bb.o
  %i.ao = tail call i64 @rb_num2int(i64 noundef %i.ad) #17
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.p, %bb.q
  %.0.i = phi i64 [ %i.an, %bb.p ], [ %i.ao, %bb.q ]
  %i.ap = trunc i64 %.0.i to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %rb_num2int_inline.exit
  %i.aq = phi i32 [ %i.ap, %rb_num2int_inline.exit ], [ 0, %bb.n ] ; 2 uses
  %i.ar = tail call i64 @rb_check_array_type(i64 noundef %i.o) #17 ; 6 uses
  %i.as = icmp eq i64 %i.ar, 4
  br i1 %i.as, label %bb.aq, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.at = tail call i64 @rb_ary_entry(i64 noundef %i.ar, i64 noundef 0) #20
  store i64 %i.at, ptr %i.c, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  %i.au = call i64 @rb_string_value(ptr noundef nonnull %i.c) #17 ; 0 uses
  %i.av = load i64, ptr %i.c, align 8, !tbaa !38
  %i.aw = inttoptr i64 %i.av to ptr               ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !44
  %i.ay = and i64 %i.ax, 8192
  %.not.i33 = icmp eq i64 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  br i1 %.not.i33, label %RSTRING_PTR.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.s, %bb.t
  %i.bb = phi ptr [ %i.ba, %bb.t ], [ %i.az, %bb.s ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !47
  %i.be = call i32 @rsock_family_to_int(ptr noundef %i.bb, i64 noundef %i.bd, ptr noundef nonnull %i.d) #17
  %i.bf = icmp eq i32 %i.be, -1
  br i1 %i.bf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %RSTRING_PTR.exit
  %i.bg = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  %i.bh = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.c) #17
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bg, ptr noundef nonnull @.str.108, ptr noundef %i.bh) #19
  unreachable

bb.v:                                             ; preds = %RSTRING_PTR.exit
  %i.bi = load i32, ptr %i.d, align 4, !tbaa !6
  switch i32 %i.bi, label %bb.ao [
    i32 2, label %bb.w
    i32 10, label %bb.w
    i32 1, label %bb.ak
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.bj = call i64 @rb_ary_entry(i64 noundef %i.ar, i64 noundef 1) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  %i.bk = call i64 @rb_ary_entry(i64 noundef %i.ar, i64 noundef 2) #20 ; 2 uses
  store i64 %i.bk, ptr %i.e, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.bl = call i64 @rb_ary_entry(i64 noundef %i.ar, i64 noundef 3) #20
  store i64 %i.bl, ptr %i.f, align 8, !tbaa !38
  %i.bm = trunc i64 %i.bj to i1
  br i1 %i.bm, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bn = call i64 @rb_fix2int(i64 noundef %i.bj) #17
  br label %rb_num2int_inline.exit35

bb.y:                                             ; preds = %bb.w
  %i.bo = call i64 @rb_num2int(i64 noundef %i.bj) #17
  br label %rb_num2int_inline.exit35

rb_num2int_inline.exit35:                         ; preds = %bb.x, %bb.y
  %.0.i34 = phi i64 [ %i.bn, %bb.x ], [ %i.bo, %bb.y ]
  %sext = shl i64 %.0.i34, 32
  %i.bp = ashr exact i64 %sext, 31
  %i.bq = or disjoint i64 %i.bp, 1                ; 2 uses
  %i.br = icmp eq i64 %i.bk, 4
  br i1 %i.br, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %rb_num2int_inline.exit35
  %i.bs = call i64 @rb_string_value(ptr noundef nonnull %i.e) #17 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %rb_num2int_inline.exit35
  %i.bt = call i64 @rb_string_value(ptr noundef nonnull %i.f) #17 ; 0 uses
  %i.bu = load i64, ptr %i.f, align 8, !tbaa !38  ; 2 uses
  %.not32 = icmp eq i32 %i.ah, 0
  %i.bv = load i32, ptr %i.d, align 4
  %i.bw = select i1 %.not32, i32 %i.bv, i32 %i.ah
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 1
  %i.bz = or disjoint i64 %i.by, 1                ; 2 uses
  %i.ca = sext i32 %i.ak to i64
  %i.cb = shl nsw i64 %i.ca, 1
  %i.cc = or disjoint i64 %i.cb, 1                ; 2 uses
  %i.cd = sext i32 %i.aq to i64
  %i.ce = shl nsw i64 %i.cd, 1
  %i.cf = or disjoint i64 %i.ce, 1                ; 2 uses
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !38  ; 2 uses
  %i.ch = call fastcc ptr @call_getaddrinfo(i64 noundef %i.bu, i64 noundef range(i64 1, 0) %i.bq, i64 noundef range(i64 1, 0) %i.bz, i64 noundef range(i64 1, 0) %i.cc, i64 noundef range(i64 1, 0) %i.cf, i64 noundef 2057, i32 noundef 1, i64 noundef 4) ; 3 uses
  %i.ci = call i64 @rb_str_equal(i64 noundef %i.bu, i64 noundef %i.cg) #17
  %.not.i36 = icmp eq i64 %i.ci, 0
  %.pre.i = load ptr, ptr %i.ch, align 8, !tbaa !14 ; 6 uses
  br i1 %.not.i36, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = call fastcc i64 @make_inspectname(i64 noundef %i.cg, i64 noundef range(i64 1, 0) %i.bq, ptr noundef %.pre.i)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ck = phi i64 [ %i.cj, %bb.ab ], [ 4, %bb.aa ] ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !75 ; 2 uses
  %.not24.i = icmp eq ptr %i.cm, null
  br i1 %.not24.i, label %rb_num2int_inline.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cn = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.cm) #17 ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.cn) #17
  br label %rb_num2int_inline.exit.i

rb_num2int_inline.exit.i:                         ; preds = %bb.ad, %bb.ac
  %.0.i37 = phi i64 [ %i.cn, %bb.ad ], [ 4, %bb.ac ] ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre.i, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre.i, i64 16
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !74 ; 4 uses
  %i.cs = call i64 @rb_fix2int(i64 noundef range(i64 1, 0) %i.bz) #17
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = call i64 @rb_fix2int(i64 noundef range(i64 1, 0) %i.cc) #17
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = call i64 @rb_fix2int(i64 noundef range(i64 1, 0) %i.cf) #17
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = icmp ugt i32 %i.cr, 2048
  br i1 %i.cy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %rb_num2int_inline.exit.i
  %i.cz = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cz, ptr noundef nonnull @.str.102) #19
  unreachable

bb.af:                                            ; preds = %rb_num2int_inline.exit.i
  %.not.i.i.i = icmp eq i32 %i.cr, 0
  br i1 %.not.i.i.i, label %ruby_nonempty_memcpy.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = zext nneg i32 %i.cr to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.db, ptr readonly align 1 %i.cp, i64 %i.da, i1 false)
  br label %ruby_nonempty_memcpy.exit.i.i

ruby_nonempty_memcpy.exit.i.i:                    ; preds = %bb.ag, %bb.af
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %i.cr, ptr %i.dc, align 4, !tbaa !97
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.ct, ptr %i.dd, align 8, !tbaa !98
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %i.cv, ptr %i.de, align 4, !tbaa !99
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.cx, ptr %i.df, align 8, !tbaa !100
  store i64 %.0.i37, ptr %i.k, align 8, !tbaa !38
  %i.dg = icmp eq i64 %.0.i37, 0
  %i.dh = and i64 %.0.i37, 7
  %i.di = icmp ne i64 %i.dh, 0
  %i.dj = or i1 %i.dg, %i.di
  br i1 %i.dj, label %rb_obj_write.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %ruby_nonempty_memcpy.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %.0.i37) #17
  br label %rb_obj_write.exit.i.i

rb_obj_write.exit.i.i:                            ; preds = %bb.ah, %ruby_nonempty_memcpy.exit.i.i
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !38
  %i.dk = icmp eq i64 %i.ck, 0
  %i.dl = and i64 %i.ck, 7
  %i.dm = icmp ne i64 %i.dl, 0
  %i.dn = or i1 %i.dk, %i.dm
  br i1 %i.dn, label %init_addrinfo.exit.i, label %bb.ai

bb.ai:                                            ; preds = %rb_obj_write.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.ck) #17
  br label %init_addrinfo.exit.i

init_addrinfo.exit.i:                             ; preds = %bb.ai, %rb_obj_write.exit.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !10
  %.not.i.i.a = icmp eq i32 %i.dp, 0
  br i1 %.not.i.i.a, label %bb.aj, label %.lr.ph.i.i

bb.aj:                                            ; preds = %init_addrinfo.exit.i
  call void @freeaddrinfo(ptr noundef nonnull %.pre.i) #17
  br label %init_addrinfo_getaddrinfo.exit

.lr.ph.i.i:                                       ; preds = %init_addrinfo.exit.i, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.dr, %.lr.ph.i.i ], [ %.pre.i, %init_addrinfo.exit.i ] ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 40
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !15 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !19
  call void @ruby_xfree(ptr noundef %i.dt) #17
  call void @ruby_xfree(ptr noundef nonnull %.014.i.i) #17
  %.not12.i.i = icmp eq ptr %i.dr, null
  br i1 %.not12.i.i, label %init_addrinfo_getaddrinfo.exit, label %.lr.ph.i.i, !llvm.loop !20

init_addrinfo_getaddrinfo.exit:                   ; preds = %.lr.ph.i.i, %bb.aj
  call void @ruby_xfree(ptr noundef nonnull %i.ch) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.ap

bb.ak:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.du = call i64 @rb_ary_entry(i64 noundef %i.ar, i64 noundef 1) #20
  store i64 %i.du, ptr %i.g, align 8, !tbaa !38
  %i.dv = call i64 @rb_string_value(ptr noundef nonnull %i.g) #17 ; 0 uses
  %i.dw = load i64, ptr %i.g, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.dw, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.dx = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.dy = load i64, ptr %i.a, align 8, !tbaa !38
  %i.dz = inttoptr i64 %i.dy to ptr               ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !47 ; 5 uses
  %i.ec = icmp ugt i64 %i.eb, 108
  br i1 %i.ec, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ed = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ed, ptr noundef nonnull @.str.112, i64 noundef %i.eb, i64 noundef 108) #19
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.2..2..2..sroa_idx69 = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %.2..2..2..sroa_idx69, i8 0, i64 108, i1 false)
  store i16 1, ptr %3, align 2, !tbaa !141
  %i.ee = load i64, ptr %i.dz, align 8, !tbaa !44
  %i.ef = and i64 %i.ee, 8192
  %.not.i.i38 = icmp eq i64 %i.ef, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dz, i64 24 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.eb, 0               ; 2 uses
  br i1 %.not.i.i38, label %RSTRING_PTR.exit.i, label %RSTRING_PTR.exit.thread.i

RSTRING_PTR.exit.i:                               ; preds = %bb.am
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.thread.i:                        ; preds = %bb.am
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %bb.an

bb.an:                                            ; preds = %RSTRING_PTR.exit.thread.i
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.an, %RSTRING_PTR.exit.i
  %.sink.i = phi ptr [ %i.eh, %bb.an ], [ %i.eg, %RSTRING_PTR.exit.i ] ; 2 uses
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.2..2..2..sroa_idx, ptr readonly align 1 %.sink.i, i64 %i.eb, i1 false)
  %i.ei = load i8, ptr %.sink.i, align 1, !tbaa !46
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %RSTRING_LENINT.exit.i.i, label %init_unix_addrinfo.exit

RSTRING_LENINT.exit.i.i:                          ; preds = %RSTRING_PTR.exit.i.i
  %i.ek = trunc nuw nsw i64 %i.eb to i32
  %i.el = add nuw nsw i32 %i.ek, 2
  br label %init_unix_addrinfo.exit

init_unix_addrinfo.exit:                          ; preds = %RSTRING_PTR.exit.i, %RSTRING_PTR.exit.thread.i, %RSTRING_PTR.exit.i.i, %RSTRING_LENINT.exit.i.i
  %.0.i.i40 = phi i32 [ 110, %RSTRING_PTR.exit.i.i ], [ %i.el, %RSTRING_LENINT.exit.i.i ], [ 2, %RSTRING_PTR.exit.thread.i ], [ 2, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.em = zext nneg i32 %.0.i.i40 to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.en, ptr noundef nonnull readonly align 2 dereferenceable(1) %3, i64 %i.em, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %.0.i.i40, ptr %i.eo, align 4, !tbaa !97
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 1, ptr %i.ep, align 8, !tbaa !98
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 1, ptr %i.eq, align 4, !tbaa !99
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 0, ptr %i.er, align 8, !tbaa !100
  store i64 4, ptr %i.k, align 8, !tbaa !38
  store i64 4, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.ap

bb.ao:                                            ; preds = %bb.v
  %i.es = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.es, ptr noundef nonnull @.str.109) #19
  unreachable

bb.ap:                                            ; preds = %init_unix_addrinfo.exit, %init_addrinfo_getaddrinfo.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.aw

bb.aq:                                            ; preds = %bb.r
  %i.et = call i64 @rb_string_value(ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.eu = load i64, ptr %i.b, align 8, !tbaa !38
  %i.ev = inttoptr i64 %i.eu to ptr               ; 3 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !44
  %i.ex = and i64 %i.ew, 8192
  %.not.i41 = icmp eq i64 %i.ex, 0
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  br i1 %.not.i41, label %RSTRING_PTR.exit42, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !46
  br label %RSTRING_PTR.exit42

RSTRING_PTR.exit42:                               ; preds = %bb.aq, %bb.ar
  %i.fa = phi ptr [ %i.ez, %bb.ar ], [ %i.ey, %bb.aq ]
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !47 ; 6 uses
  %i.fd = add i64 %i.fc, 2147483648
  %.not.i.i43 = icmp ult i64 %i.fd, 4294967296
  br i1 %.not.i.i43, label %RSTRING_LENINT.exit, label %bb.as

bb.as:                                            ; preds = %RSTRING_PTR.exit42
  call void @rb_out_of_int(i64 noundef %i.fc) #22
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit42
  %i.fe = trunc nsw i64 %i.fc to i32
  %i.ff = icmp ugt i64 %i.fc, 2048
  br i1 %i.ff, label %bb.at, label %bb.au

bb.at:                                            ; preds = %RSTRING_LENINT.exit
  %i.fg = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fg, ptr noundef nonnull @.str.102) #19
  unreachable

bb.au:                                            ; preds = %RSTRING_LENINT.exit
  %.not.i.i44 = icmp eq i64 %i.fc, 0
  br i1 %.not.i.i44, label %init_addrinfo.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fh = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fh, ptr readonly align 1 %i.fa, i64 %i.fc, i1 false)
  br label %init_addrinfo.exit

init_addrinfo.exit:                               ; preds = %bb.au, %bb.av
  %i.fi = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %i.fe, ptr %i.fi, align 4, !tbaa !97
  %i.fj = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.ah, ptr %i.fj, align 8, !tbaa !98
  %i.fk = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %i.ak, ptr %i.fk, align 4, !tbaa !99
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.aq, ptr %i.fl, align 8, !tbaa !100
  store i64 4, ptr %i.k, align 8, !tbaa !38
  store i64 4, ptr %i.j, align 8, !tbaa !38
  br label %bb.aw

bb.aw:                                            ; preds = %init_addrinfo.exit, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_inspect(i64 noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 11 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.e = tail call ptr @rb_obj_classname(i64 noundef %0) #17
  %i.f = tail call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.113, ptr noundef %i.e) #17 ; 13 uses
  %i.g = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %inspect_sockaddr.exit

bb.c:                                             ; preds = %get_addrinfo.exit
  %i.h = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.h, ptr noundef nonnull @.str.104) #19
  unreachable

inspect_sockaddr.exit:                            ; preds = %get_addrinfo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 28
  %i.k = load i32, ptr %i.j, align 4, !tbaa !97
  %i.l = tail call i64 @rsock_inspect_sockaddr(ptr noundef nonnull %i.i, i32 noundef %i.k, i64 noundef %i.f) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !98   ; 3 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %inspect_sockaddr.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !97
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %ai_get_afamily.exit, label %.critedge

ai_get_afamily.exit:                              ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.s = load i16, ptr %i.r, align 8, !tbaa !77
  %i.t = zext i16 %i.s to i32
end_hunk_0
begin_hunk_1_@addrinfo_inspect:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !100
  switch i32 %i.ai, label %.thread [
    i32 0, label %bb.n
    i32 17, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.aj = tail call i64 @rb_str_cat(i64 noundef %i.f, ptr noundef nonnull @.str.117, i64 noundef 4) #17 ; 0 uses
  br label %bb.v

.thread:                                          ; preds = %inspect_sockaddr.exit, %bb.g, %bb.m, %bb.k, %bb.l
  %i.ak = phi i32 [ %.pr, %bb.l ], [ %.pr, %bb.g ], [ %.pr, %bb.m ], [ %.pr, %bb.k ], [ 0, %inspect_sockaddr.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !99 ; 2 uses
  %.not62 = icmp eq i32 %i.am, 0
  br i1 %.not62, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.an = tail call i64 @rsock_intern_socktype(i32 noundef %i.am) #17 ; 2 uses
  %.not63 = icmp eq i64 %i.an, 0
  br i1 %.not63, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = tail call ptr @rb_id2name(i64 noundef %i.an) #17
  %i.ap = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.ao) #17 ; 0 uses
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.aq = load i32, ptr %i.al, align 4, !tbaa !99
  %i.ar = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.118, i32 noundef %i.aq) #17 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %.thread
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !100 ; 3 uses
  %.not64 = icmp eq i32 %i.at, 0
  br i1 %.not64, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  switch i32 %i.ak, label %bb.u [
    i32 10, label %bb.t
    i32 2, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.au = tail call i64 @rsock_intern_ipproto(i32 noundef %i.at) #17 ; 2 uses
  %.not65 = icmp eq i64 %i.au, 0
  br i1 %.not65, label %._crit_edge, label %.thread67

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.as, align 8, !tbaa !100
  br label %bb.u

.thread67:                                        ; preds = %bb.t
  %i.av = tail call ptr @rb_id2name(i64 noundef %i.au) #17
  %i.aw = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.av) #17 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.ax = phi i32 [ %.pre, %._crit_edge ], [ %i.at, %bb.s ]
  %i.ay = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.119, i32 noundef %i.ax) #17 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread67, %bb.n, %bb.u, %bb.r, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !94 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4
  br i1 %i.bb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.ba, ptr %i.a, align 8, !tbaa !38
  %i.bc = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #17
  %i.bd = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.bc) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.be = load i64, ptr %i.c, align 8, !tbaa !92  ; 2 uses
  %i.bf = icmp eq i64 %i.be, 4
  br i1 %i.bf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i64 %i.be, ptr %i.b, align 8, !tbaa !38
  %i.bg = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #17
  %i.bh = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.120, ptr noundef %i.bg) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bi = call i64 @rb_str_cat(i64 noundef %i.f, ptr noundef nonnull @.str.121, i64 noundef 1) #17 ; 0 uses
  ret i64 %i.f
}

declare extern_weak void @rb_define_singleton_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_getaddrinfo(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
rb_scan_args_n_opt.exit:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %bb.a, label %.thread

bb.a:                                             ; preds = %rb_scan_args_n_opt.exit
  %i.c = zext nneg i32 %0 to i64
  %i.d = getelementptr [8 x i8], ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 @rb_keyword_given_p() #17
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @rb_hash_dup(i64 noundef %i.f) #17
  %i.i = add nsw i32 %0, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.188.i = phi i64 [ 4, %bb.a ], [ %i.h, %bb.b ]
  %.1.i = phi i32 [ %0, %bb.a ], [ %i.i, %bb.b ]  ; 8 uses
  %i.j = icmp samesign ult i32 %.1.i, 2
  br i1 %i.j, label %.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %i.k = load i64, ptr %1, align 8, !tbaa !38     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %.not29 = icmp eq i32 %.1.i, 2
  br i1 %.not29, label %.preheader.1, label %bb.d

bb.d:                                             ; preds = %.preheader.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38
  br label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader, %bb.d
  %i.p = phi i64 [ %i.o, %bb.d ], [ 4, %.preheader.preheader ]
  %.286.i = phi i32 [ 3, %bb.d ], [ 2, %.preheader.preheader ] ; 4 uses
  %i.q = icmp samesign ult i32 %.286.i, %.1.i
  br i1 %i.q, label %bb.e, label %.preheader.2

bb.e:                                             ; preds = %.preheader.1
  %i.r = zext nneg i32 %.286.i to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  %i.u = add nuw nsw i32 %.286.i, 1
  br label %.preheader.2

.preheader.2:                                     ; preds = %.preheader.1, %bb.e
  %i.v = phi i64 [ %i.t, %bb.e ], [ 4, %.preheader.1 ]
  %.286.i.1 = phi i32 [ %i.u, %bb.e ], [ %.286.i, %.preheader.1 ] ; 4 uses
  %i.w = icmp samesign ult i32 %.286.i.1, %.1.i
  br i1 %i.w, label %bb.f, label %.preheader.3

bb.f:                                             ; preds = %.preheader.2
  %i.x = zext nneg i32 %.286.i.1 to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !38
  %i.aa = add nuw nsw i32 %.286.i.1, 1
  br label %.preheader.3

.preheader.3:                                     ; preds = %.preheader.2, %bb.f
  %i.ab = phi i64 [ %i.z, %bb.f ], [ 4, %.preheader.2 ]
  %.286.i.2 = phi i32 [ %i.aa, %bb.f ], [ %.286.i.1, %.preheader.2 ] ; 4 uses
  %i.ac = icmp samesign ult i32 %.286.i.2, %.1.i
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.3
  %i.ad = zext nneg i32 %.286.i.2 to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !38
  %i.ag = add nuw nsw i32 %.286.i.2, 1
  br label %bb.h

bb.h:                                             ; preds = %.preheader.3, %bb.g
  %i.ah = phi i64 [ %i.af, %bb.g ], [ 4, %.preheader.3 ]
  %.286.i.3 = phi i32 [ %i.ag, %bb.g ], [ %.286.i.2, %.preheader.3 ]
  %i.ai = icmp eq i32 %.286.i.3, %.1.i
  br i1 %i.ai, label %rb_scan_args_set.exit, label %.thread

.thread:                                          ; preds = %rb_scan_args_n_opt.exit, %bb.h, %bb.c
  %.1.i4 = phi i32 [ %.1.i, %bb.c ], [ %.1.i, %bb.h ], [ %0, %rb_scan_args_n_opt.exit ]
  tail call void @rb_error_arity(i32 noundef %.1.i4, i32 noundef 2, i32 noundef 6) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.h
  %i.aj = call i32 @rb_get_kwargs(i64 noundef %.188.i, ptr noundef nonnull @id_timeout, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !38  ; 2 uses
  %i.al = icmp eq i64 %i.ak, 36
  br i1 %i.al, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rb_scan_args_set.exit
  store i64 4, ptr %i.a, align 8, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %rb_scan_args_set.exit
  %i.am = phi i64 [ 4, %bb.i ], [ %i.ak, %rb_scan_args_set.exit ]
  %i.an = call fastcc ptr @call_getaddrinfo(i64 noundef %i.k, i64 noundef %i.m, i64 noundef %i.p, i64 noundef %i.v, i64 noundef %i.ab, i64 noundef %i.ah, i32 noundef 0, i64 noundef %i.am) ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14 ; 5 uses
  %i.ap = call fastcc i64 @make_inspectname(i64 noundef %i.k, i64 noundef %i.m, ptr noundef %i.ao)
  %i.aq = call i64 @rb_ary_new() #17              ; 2 uses
  %.not30.i = icmp eq ptr %i.ao, null
  br i1 %.not30.i, label %addrinfo_list_new.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.02631.i = phi ptr [ %.026.i, %bb.l ], [ %i.ao, %bb.j ] ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02631.i, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !75 ; 2 uses
  %.not28.i = icmp eq ptr %i.as, null
  br i1 %.not28.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.at = call i64 @rb_str_new_cstr(ptr noundef nonnull %i.as) #17 ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %i.at) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.0.i = phi i64 [ %i.at, %bb.k ], [ 4, %.lr.ph.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %.02631.i, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %.02631.i, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !74
  %i.ay = getelementptr inbounds nuw i8, ptr %.02631.i, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !68
  %i.ba = getelementptr inbounds nuw i8, ptr %.02631.i, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %.02631.i, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !69
  %i.be = call i64 @rsock_addrinfo_new(ptr noundef %i.av, i32 noundef %i.ax, i32 noundef %i.az, i32 noundef %i.bb, i32 noundef %i.bd, i64 noundef %.0.i, i64 noundef %i.ap)
  %i.bf = call i64 @rb_ary_push(i64 noundef %i.aq, i64 noundef %i.be) #17 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02631.i, i64 40
  %.026.i = load ptr, ptr %i.bg, align 8, !tbaa !52 ; 2 uses
  %.not.i1 = icmp eq ptr %.026.i, null
  br i1 %.not.i1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !143

._crit_edge.i:                                    ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !10
  %.not.i.i.a = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.a, label %bb.m, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i
  call void @freeaddrinfo(ptr noundef nonnull %i.ao) #17
  br label %addrinfo_list_new.exit

.lr.ph.i.i:                                       ; preds = %._crit_edge.i, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.bk, %.lr.ph.i.i ], [ %i.ao, %._crit_edge.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !19
  call void @ruby_xfree(ptr noundef %i.bm) #17
  call void @ruby_xfree(ptr noundef nonnull %.014.i.i) #17
  %.not12.i.i = icmp eq ptr %i.bk, null
  br i1 %.not12.i.i, label %addrinfo_list_new.exit, label %.lr.ph.i.i, !llvm.loop !20

addrinfo_list_new.exit:                           ; preds = %.lr.ph.i.i, %bb.j, %bb.m
  call void @ruby_xfree(ptr noundef nonnull %i.an) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %i.aq
}

; Function Attrs: nounwind uwtable
define internal noundef i64 @addrinfo_s_ip(i64 %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call fastcc i64 @addrinfo_firstonly_new(i64 noundef %1, i64 noundef 4, i64 noundef 1, i64 noundef 1, i64 noundef 1) ; 2 uses
  %i.b = tail call ptr @rb_check_typeddata(i64 noundef %i.a, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.c, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 0, ptr %i.d, align 4, !tbaa !99
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.e, align 8, !tbaa !100
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_tcp(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @addrinfo_firstonly_new(i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 3, i64 noundef 13)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_udp(i64 %0, i64 noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call fastcc i64 @addrinfo_firstonly_new(i64 noundef %1, i64 noundef %2, i64 noundef 1, i64 noundef 5, i64 noundef 35)
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i64 @addrinfo_s_unix(i32 noundef %0, ptr noundef readonly captures(none) %1, i64 %2) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.sockaddr_un, align 2        ; 6 uses
  %i.b = icmp slt i32 %0, 1
  br i1 %i.b, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !38
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %rb_scan_args_set.exit.thread, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !38   ; 2 uses
  %i.f = icmp eq i32 %0, 2
  br i1 %i.f, label %rb_scan_args_set.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 4
  br i1 %i.g, label %rb_scan_args_set.exit.thread, label %bb.d

bb.d:                                             ; preds = %rb_scan_args_set.exit
  %i.h = tail call i32 @rsock_socktype_arg(i64 noundef %i.e) #17
  br label %rb_scan_args_set.exit.thread

rb_scan_args_set.exit.thread:                     ; preds = %.preheader, %rb_scan_args_set.exit, %bb.d
  %.0 = phi i32 [ %i.h, %bb.d ], [ 1, %rb_scan_args_set.exit ], [ 1, %.preheader ]
  %i.i = load i64, ptr @rb_cAddrinfo, align 8, !tbaa !38
  %i.j = tail call i64 @rb_data_typed_object_wrap(i64 noundef %i.i, ptr noundef null, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %i.k = tail call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 9 uses
  store i64 4, ptr %i.k, align 8, !tbaa !92
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i64 4, ptr %i.l, align 8, !tbaa !94
  %i.m = inttoptr i64 %i.j to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.k, ptr %i.n, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.o = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !38
  %i.q = inttoptr i64 %i.p to ptr                 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47   ; 5 uses
  %i.t = icmp ugt i64 %i.s, 108
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rb_scan_args_set.exit.thread
  %i.u = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.112, i64 noundef %i.s, i64 noundef 108) #19
  unreachable

bb.f:                                             ; preds = %rb_scan_args_set.exit.thread
  %.2..2..2..sroa_idx17 = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %.2..2..2..sroa_idx17, i8 0, i64 108, i1 false)
  store i16 1, ptr %3, align 2, !tbaa !141
  %i.v = load i64, ptr %i.q, align 8, !tbaa !44
  %i.w = and i64 %i.v, 8192
  %.not.i.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.s, 0                ; 2 uses
  br i1 %.not.i.i, label %RSTRING_PTR.exit.i, label %RSTRING_PTR.exit.thread.i

RSTRING_PTR.exit.i:                               ; preds = %bb.f
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.thread.i:                        ; preds = %bb.f
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %bb.g

bb.g:                                             ; preds = %RSTRING_PTR.exit.thread.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.g, %RSTRING_PTR.exit.i
  %.sink.i = phi ptr [ %i.y, %bb.g ], [ %i.x, %RSTRING_PTR.exit.i ] ; 2 uses
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.2..2..2..sroa_idx, ptr readonly align 1 %.sink.i, i64 %i.s, i1 false)
  %i.z = load i8, ptr %.sink.i, align 1, !tbaa !46
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %RSTRING_LENINT.exit.i.i, label %init_unix_addrinfo.exit

RSTRING_LENINT.exit.i.i:                          ; preds = %RSTRING_PTR.exit.i.i
  %i.ab = trunc nuw nsw i64 %i.s to i32
  %i.ac = add nuw nsw i32 %i.ab, 2
  br label %init_unix_addrinfo.exit

init_unix_addrinfo.exit:                          ; preds = %RSTRING_PTR.exit.i, %RSTRING_PTR.exit.thread.i, %RSTRING_PTR.exit.i.i, %RSTRING_LENINT.exit.i.i
  %.0.i.i = phi i32 [ 110, %RSTRING_PTR.exit.i.i ], [ %i.ac, %RSTRING_LENINT.exit.i.i ], [ 2, %RSTRING_PTR.exit.thread.i ], [ 2, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.ad = zext nneg i32 %.0.i.i to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ae, ptr noundef nonnull readonly align 2 dereferenceable(1) %3, i64 %i.ad, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 28
  store i32 %.0.i.i, ptr %i.af, align 4, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i32 1, ptr %i.ag, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  store i32 %.0, ptr %i.ah, align 4, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i32 0, ptr %i.ai, align 8, !tbaa !100
  store i64 4, ptr %i.l, align 8, !tbaa !38
  store i64 4, ptr %i.k, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.j
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 131072) i64 @addrinfo_afamily(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !97
  %i.e = icmp ugt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %ai_get_afamily.exit

bb.c:                                             ; preds = %get_addrinfo.exit
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load i16, ptr %i.f, align 4, !tbaa !77
  %i.h = zext i16 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, 1
  br label %ai_get_afamily.exit

ai_get_afamily.exit:                              ; preds = %get_addrinfo.exit, %bb.c
  %.0.i.i = phi i64 [ %i.j, %bb.c ], [ 1, %get_addrinfo.exit ]
  ret i64 %.0.i.i
}

; Function Attrs: nounwind uwtable
define internal range(i64 1, 0) i64 @addrinfo_pfamily(i64 noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_check_typeddata(i64 noundef %0, ptr noundef nonnull @addrinfo_type) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.b, label %get_addrinfo.exit

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr @rb_eTypeError, align 8, !tbaa !38
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.b, ptr noundef nonnull @.str.104) #19
  unreachable

get_addrinfo.exit:                                ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !98
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
end_hunk_1
begin_hunk_2_@wait_getaddrinfo:bb.a
  %i.j = sext i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  br i1 %i.k, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @rb_native_cond_timedwait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i64 noundef %i.j) #17
  %i.m = load i32, ptr %i.c, align 4, !tbaa !62
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %bb.e, label %.critedge

bb.d:                                             ; preds = %bb.b
  tail call void @rb_native_cond_wait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #17
  %.pre = load i32, ptr %i.c, align 4, !tbaa !62
  %i.n = icmp eq i32 %.pre, 0
  br i1 %i.n, label %.backedge, label %.critedge

.backedge:                                        ; preds = %bb.d, %bb.e
  %i.o = load i32, ptr %i.b, align 8, !tbaa !65
  %.not17 = icmp eq i32 %i.o, 0
  br i1 %.not17, label %.lr.ph24, label %.critedge, !llvm.loop !144

bb.e:                                             ; preds = %bb.c, %.lr.ph24
  store i32 1, ptr %i.b, align 8, !tbaa !65
  store i32 1, ptr %i.g, align 4, !tbaa !66
  br label %.backedge

.critedge:                                        ; preds = %bb.d, %.backedge, %bb.c, %.lr.ph, %bb.a
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.a) #17
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal void @cancel_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 1, ptr %i.b, align 8, !tbaa !65
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @rb_native_cond_signal(ptr noundef nonnull %i.c) #17
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.a) #17
  ret void
}

; Function Attrs: noreturn
declare void @rsock_raise_user_specified_timeout(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @do_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.f = tail call i32 @getaddrinfo(ptr noundef %i.a, ptr noundef %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #17 ; 2 uses
  %i.g = tail call ptr @rb_errno_ptr() #17
  %i.h = load i32, ptr %i.g, align 4, !tbaa !6
  %i.i = icmp eq i32 %i.f, -11
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @rb_errno_ptr() #17
  %i.k = load i32, ptr %i.j, align 4, !tbaa !6
  %i.l = icmp eq i32 %i.k, 2
  %spec.select = select i1 %i.l, i32 -2, i32 -11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.019 = phi i32 [ %i.f, %bb.a ], [ %spec.select, %bb.b ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.m) #17
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.019, ptr %i.n, align 8, !tbaa !63
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.h, ptr %i.o, align 4, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load i32, ptr %i.p, align 8, !tbaa !65
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !60   ; 2 uses
  %.not22 = icmp eq ptr %i.r, null
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @freeaddrinfo(ptr noundef nonnull %i.r) #17
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 1, ptr %i.s, align 4, !tbaa !62
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @rb_native_cond_signal(ptr noundef nonnull %i.t) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !67
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !67
  %.not24 = icmp eq i32 %i.w, 0
  tail call void @rb_nativethread_lock_unlock(ptr noundef nonnull %i.m) #17
  br i1 %.not24, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @rb_native_cond_destroy(ptr noundef nonnull %i.x) #17
  tail call void @rb_nativethread_lock_destroy(ptr noundef nonnull %i.m) #17
  tail call void @free(ptr noundef nonnull %0) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret ptr null
}

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_timedwait(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #12

declare i64 @rb_ary_new() local_unnamed_addr #3

declare i64 @rb_ary_push(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @gethostbyname(ptr noundef) local_unnamed_addr #3

declare i64 @rb_ary_new_capa(i64 noundef) local_unnamed_addr #3

declare i64 @rb_data_typed_object_wrap(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @addrinfo_mark(ptr noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !92
  tail call void @rb_gc_mark(i64 noundef %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94
  tail call void @rb_gc_mark(i64 noundef %i.c) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @addrinfo_memsize(ptr readnone captures(none) %0) #13 {
bb.a:
  ret i64 2080
}

declare void @rb_gc_mark(i64 noundef) local_unnamed_addr #3

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @sigaddset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #14

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @rsock_family_arg(i64 noundef) local_unnamed_addr #3

declare i32 @rsock_socktype_arg(i64 noundef) local_unnamed_addr #3

declare i64 @rb_check_array_type(i64 noundef) local_unnamed_addr #3

declare i32 @rsock_family_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @rb_hash_dup(i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @rb_keyword_given_p() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noalias nonnull ptr @call_getaddrinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6, i64 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.addrinfo, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %i.a = icmp eq i64 %2, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @rsock_family_arg(i64 noundef %2) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 %i.c, ptr %i.d, align 4, !tbaa !68
  %i.e = icmp eq i64 %3, 4
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @rsock_socktype_arg(i64 noundef %3) #17
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !49
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = icmp eq i64 %4, 4
  br i1 %i.h, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = trunc i64 %4 to i1
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i64 @rb_fix2int(i64 noundef %4) #17
  br label %rb_num2int_inline.exit

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i64 @rb_num2int(i64 noundef %4) #17
  br label %rb_num2int_inline.exit

rb_num2int_inline.exit:                           ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.j, %bb.g ], [ %i.k, %bb.h ]
  %i.l = trunc i64 %.0.i to i32
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.l, ptr %i.m, align 4, !tbaa !69
  br label %bb.i

bb.i:                                             ; preds = %rb_num2int_inline.exit, %bb.e
  %i.n = icmp eq i64 %5, 4
  br i1 %i.n, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = trunc i64 %5 to i1
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.p = tail call i64 @rb_fix2int(i64 noundef %5) #17
  br label %rb_num2int_inline.exit14

bb.l:                                             ; preds = %bb.j
  %i.q = tail call i64 @rb_num2int(i64 noundef %5) #17
  br label %rb_num2int_inline.exit14

rb_num2int_inline.exit14:                         ; preds = %bb.k, %bb.l
  %.0.i13 = phi i64 [ %i.p, %bb.k ], [ %i.q, %bb.l ]
  %i.r = trunc i64 %.0.i13 to i32
  store i32 %i.r, ptr %8, align 8, !tbaa !51
  br label %bb.m

bb.m:                                             ; preds = %rb_num2int_inline.exit14, %bb.i
  %i.s = call ptr @rsock_getaddrinfo(i64 noundef %0, i64 noundef %1, ptr noundef nonnull %8, i32 noundef %6, i64 noundef %7) ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.u = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.u, ptr noundef nonnull @.str.110) #19
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret ptr %i.s
}

declare i64 @rb_str_equal(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef i64 @make_inspectname(i64 noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca [1025 x i8], align 16             ; 4 uses
  %i.c = alloca [32 x i8], align 16               ; 5 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !38
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !74
  %i.h = call i32 @getnameinfo(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.b, i32 noundef 1025, ptr noundef nonnull %i.c, i32 noundef 32, i32 noundef 3) #17
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp eq i64 %0, 0
  %i.k = and i64 %0, 7
  %i.l = icmp ne i64 %i.k, 0
  %i.m = or i1 %i.j, %i.l
  br i1 %i.m, label %rbimpl_RB_TYPE_P_fastpath.exit24.thread, label %rbimpl_RB_TYPE_P_fastpath.exit24

rbimpl_RB_TYPE_P_fastpath.exit24:                 ; preds = %bb.c
  %i.n = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !44   ; 2 uses
  %i.p = and i64 %i.o, 31
  %i.q = icmp eq i64 %i.p, 5
  br i1 %i.q, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit24.thread

bb.d:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit24
  %i.r = and i64 %i.o, 8192
  %.not.i = icmp eq i64 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !46
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.u = phi ptr [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  %i.v = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.u) #20
  %i.w = icmp eq i32 %i.v, 0
  %spec.select = select i1 %i.w, i64 4, i64 %0
  br label %rbimpl_RB_TYPE_P_fastpath.exit24.thread

rbimpl_RB_TYPE_P_fastpath.exit24.thread:          ; preds = %bb.c, %RSTRING_PTR.exit, %rbimpl_RB_TYPE_P_fastpath.exit24
  %.0 = phi i64 [ %0, %rbimpl_RB_TYPE_P_fastpath.exit24 ], [ %spec.select, %RSTRING_PTR.exit ], [ %0, %bb.c ] ; 3 uses
  %i.x = icmp eq i64 %1, 0
  %i.y = and i64 %1, 7
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = or i1 %i.x, %i.z
  br i1 %i.aa, label %rbimpl_RB_TYPE_P_fastpath.exit22.thread, label %rbimpl_RB_TYPE_P_fastpath.exit22

rbimpl_RB_TYPE_P_fastpath.exit22:                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit24.thread
  %i.ab = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !44 ; 2 uses
  %i.ad = and i64 %i.ac, 31
  %i.ae = icmp eq i64 %i.ad, 5
  br i1 %i.ae, label %bb.f, label %rbimpl_RB_TYPE_P_fastpath.exit22.thread

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit22
  %i.af = and i64 %i.ac, 8192
  %.not.i25 = icmp eq i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  br i1 %.not.i25, label %RSTRING_PTR.exit26, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !46
  br label %RSTRING_PTR.exit26

RSTRING_PTR.exit26:                               ; preds = %bb.f, %bb.g
  %i.ai = phi ptr [ %i.ah, %bb.g ], [ %i.ag, %bb.f ]
  %i.aj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(1) %i.ai) #20
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.sink.split, label %rbimpl_RB_TYPE_P_fastpath.exit22.thread

rbimpl_RB_TYPE_P_fastpath.exit22.thread:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit24.thread, %rbimpl_RB_TYPE_P_fastpath.exit22, %RSTRING_PTR.exit26
  %i.al = trunc i64 %1 to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit22.thread
  %i.am = call i64 @__isoc23_strtol(ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 10) #17, !inline_history !79
  %i.an = trunc i64 %i.am to i32
  %i.ao = call i64 @rb_fix2int(i64 noundef %1) #17
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = icmp eq i32 %i.an, %i.ap
  br i1 %i.aq, label %.sink.split, label %bb.i

.sink.split:                                      ; preds = %bb.h, %RSTRING_PTR.exit26
  store i64 4, ptr %i.a, align 8, !tbaa !38
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit22.thread, %bb.b
  %i.ar = phi i64 [ %1, %rbimpl_RB_TYPE_P_fastpath.exit22.thread ], [ %1, %bb.b ], [ %1, %bb.h ], [ 4, %.sink.split ]
  %.1 = phi i64 [ %.0, %rbimpl_RB_TYPE_P_fastpath.exit22.thread ], [ %0, %bb.b ], [ %.0, %bb.h ], [ %.0, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  %i.as = phi i64 [ %i.ar, %bb.i ], [ %1, %bb.a ] ; 6 uses
  %.2 = phi i64 [ %.1, %bb.i ], [ %0, %bb.a ]     ; 4 uses
  %i.at = icmp eq i64 %.2, 0
  %i.au = and i64 %.2, 7
  %i.av = icmp ne i64 %i.au, 0
  %i.aw = or i1 %i.at, %i.av
  br i1 %i.aw, label %rbimpl_RB_TYPE_P_fastpath.exit19.thread, label %rbimpl_RB_TYPE_P_fastpath.exit19

rbimpl_RB_TYPE_P_fastpath.exit19:                 ; preds = %bb.j
  %i.ax = inttoptr i64 %.2 to ptr
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !44
  %i.az = and i64 %i.ay, 31
  %i.ba = icmp eq i64 %i.az, 5
  br i1 %i.ba, label %bb.k, label %rbimpl_RB_TYPE_P_fastpath.exit19.thread

bb.k:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19
  %i.bb = call i64 @rb_str_dup(i64 noundef %.2) #17
  br label %rbimpl_RB_TYPE_P_fastpath.exit19.thread

rbimpl_RB_TYPE_P_fastpath.exit19.thread:          ; preds = %bb.j, %rbimpl_RB_TYPE_P_fastpath.exit19, %bb.k
  %.014 = phi i64 [ %i.bb, %bb.k ], [ 4, %rbimpl_RB_TYPE_P_fastpath.exit19 ], [ 4, %bb.j ] ; 8 uses
  %i.bc = icmp eq i64 %i.as, 0
  %i.bd = and i64 %i.as, 7
  %i.be = icmp ne i64 %i.bd, 0
  %i.bf = or i1 %i.bc, %i.be
  br i1 %i.bf, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19.thread
  %i.bg = inttoptr i64 %i.as to ptr
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !44
  %i.bi = and i64 %i.bh, 31
  %i.bj = icmp eq i64 %i.bi, 5
  br i1 %i.bj, label %bb.l, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.l:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bk = icmp eq i64 %.014, 4
  %i.bl = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.a) #17 ; 2 uses
  br i1 %i.bk, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.111, ptr noundef %i.bl) #17
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bn = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.014, ptr noundef nonnull @.str.111, ptr noundef %i.bl) #17 ; 0 uses
  br label %.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit19.thread, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.bo = trunc i64 %i.as to i1
  br i1 %i.bo, label %bb.o, label %bb.s

bb.o:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.bp = call i64 @rb_fix2int(i64 noundef %i.as) #17
  %i.bq = and i64 %i.bp, 4294967295
  %.not17 = icmp eq i64 %i.bq, 0
  br i1 %.not17, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = icmp eq i64 %.014, 4
  %i.bs = call i64 @rb_fix2int(i64 noundef %i.as) #17
  %i.bt = trunc i64 %i.bs to i32                  ; 2 uses
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bu = call i64 (ptr, ...) @rb_sprintf(ptr noundef nonnull @.str.19, i32 noundef %i.bt) #17
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bv = call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %.014, ptr noundef nonnull @.str.19, i32 noundef %i.bt) #17 ; 0 uses
  br label %.thread

bb.s:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %bb.o, %bb.q, %bb.m
  %.115 = phi i64 [ %i.bm, %bb.m ], [ %.014, %bb.o ], [ %i.bu, %bb.q ], [ %.014, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  %i.bw = icmp eq i64 %.115, 4
  br i1 %i.bw, label %bb.t, label %.thread

.thread:                                          ; preds = %bb.r, %bb.n, %bb.s
  %.11532 = phi i64 [ %.115, %bb.s ], [ %.014, %bb.n ], [ %.014, %bb.r ] ; 2 uses
  call void @rb_obj_freeze_inline(i64 noundef %.11532) #17
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.11533 = phi i64 [ %.11532, %.thread ], [ 4, %bb.s ]
  ret i64 %.11533
}

declare void @rb_obj_freeze_inline(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_protocol_family(i32 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_socktype(i32 noundef) local_unnamed_addr #3

declare i64 @rsock_intern_ipproto(i32 noundef) local_unnamed_addr #3

declare i32 @rb_get_kwargs(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i64 @addrinfo_firstonly_new(i64 noundef %0, i64 noundef %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3, i64 noundef range(i64 1, 0) %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @call_getaddrinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef 1, i32 noundef 0, i64 noundef 4) ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 9 uses
  %i.c = tail call fastcc i64 @make_inspectname(i64 noundef %0, i64 noundef %1, ptr noundef %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @rb_str_new_cstr(ptr noundef nonnull %i.e) #17 ; 2 uses
  tail call void @rb_obj_freeze_inline(i64 noundef %i.f) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ %i.f, %bb.b ], [ 4, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !74
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !49
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !69
  %i.q = tail call i64 @rsock_addrinfo_new(ptr noundef %i.h, i32 noundef %i.j, i32 noundef %i.l, i32 noundef %i.n, i32 noundef %i.p, i64 noundef %.0, i64 noundef %i.c)
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !10
  %.not.i.a = icmp eq i32 %i.s, 0
  br i1 %.not.i.a, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  tail call void @freeaddrinfo(ptr noundef nonnull %i.b) #17
  br label %rb_freeaddrinfo.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.014.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.b, %bb.c ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19
  tail call void @ruby_xfree(ptr noundef %i.w) #17
  tail call void @ruby_xfree(ptr noundef nonnull %.014.i) #17
  %.not12.i = icmp eq ptr %i.u, null
  br i1 %.not12.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i, !llvm.loop !20

rb_freeaddrinfo.exit:                             ; preds = %.lr.ph.i, %bb.d
  tail call void @ruby_xfree(ptr noundef nonnull %i.a) #17
  ret i64 %i.q
}

declare void @rb_ary_store(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_convert_type(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rsock_socktype_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @rsock_ipproto_to_int(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 8}
!11 = !{!"rb_addrinfo", !12, i64 0, !7, i64 8}
!12 = !{!"p1 _ZTS8addrinfo", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!11, !12, i64 0}
!15 = !{!16, !12, i64 40}
!16 = !{!"addrinfo", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !17, i64 24, !18, i64 32, !12, i64 40}
!17 = !{!"p1 _ZTS8sockaddr", !13, i64 0}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!16, !17, i64 24}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !17, i64 0}
!24 = !{!"getnameinfo_arg", !17, i64 0, !7, i64 8, !7, i64 12, !18, i64 16, !25, i64 24, !18, i64 32, !25, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !8, i64 72, !8, i64 112}
!25 = !{!"long", !8, i64 0}
!26 = !{!24, !7, i64 8}
!27 = !{!24, !18, i64 16}
!28 = !{!24, !25, i64 24}
!29 = !{!24, !18, i64 32}
!30 = !{!24, !25, i64 40}
!31 = !{!24, !7, i64 12}
!32 = !{!24, !7, i64 56}
!33 = !{!24, !7, i64 64}
!34 = !{!24, !7, i64 60}
!35 = !{!24, !7, i64 48}
!36 = !{!24, !7, i64 52}
!37 = distinct !{!37, !21}
!38 = !{!25, !25, i64 0}
!39 = !{!40, !41, i64 0}
!40 = !{!"sockaddr_in", !41, i64 0, !41, i64 2, !42, i64 4, !8, i64 8}
!41 = !{!"short", !8, i64 0}
!42 = !{!"in_addr", !7, i64 0}
!43 = !{!40, !7, i64 4}
!44 = !{!45, !25, i64 0}
!45 = !{!"RBasic", !25, i64 0, !25, i64 8}
!46 = !{!8, !8, i64 0}
!47 = !{!48, !25, i64 16}
!48 = !{!"RString", !45, i64 0, !25, i64 16, !8, i64 24}
!49 = !{!16, !7, i64 8}
!50 = !{!18, !18, i64 0}
!51 = !{!16, !7, i64 0}
!52 = !{!12, !12, i64 0}
!53 = distinct !{!53, !21}
!54 = distinct !{!54, !21}
!55 = !{!56, !18, i64 0}
!56 = !{!"getaddrinfo_arg", !18, i64 0, !18, i64 8, !16, i64 16, !12, i64 64, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !8, i64 96, !8, i64 136, !7, i64 184}
!57 = !{!56, !18, i64 8}
!58 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 4, !6, i64 12, i64 4, !6, i64 16, i64 4, !6, i64 24, i64 8, !59, i64 32, i64 8, !50, i64 40, i64 8, !52}
!59 = !{!17, !17, i64 0}
!60 = !{!56, !12, i64 64}
!61 = !{!56, !7, i64 184}
!62 = !{!56, !7, i64 84}
!63 = !{!56, !7, i64 72}
!64 = !{!56, !7, i64 76}
!65 = !{!56, !7, i64 88}
!66 = !{!56, !7, i64 92}
!67 = !{!56, !7, i64 80}
!68 = !{!16, !7, i64 4}
!69 = !{!16, !7, i64 12}
!70 = !{!71, !41, i64 0}
!71 = !{!"sockaddr_in6", !41, i64 0, !41, i64 2, !7, i64 4, !72, i64 8, !7, i64 24}
!72 = !{!"in6_addr", !8, i64 0}
!73 = !{!71, !41, i64 2}
!74 = !{!16, !7, i64 16}
!75 = !{!16, !18, i64 32}
!76 = !{!40, !41, i64 2}
!77 = !{!78, !41, i64 0}
!78 = !{!"sockaddr", !41, i64 0, !8, i64 2}
!79 = distinct !{null}
!80 = distinct !{!80, !21}
!81 = !{!82, !25, i64 0}
!82 = !{!"hostent_arg", !25, i64 0, !83, i64 8, !13, i64 16}
!83 = !{!"p1 _ZTS11rb_addrinfo", !13, i64 0}
!84 = !{!82, !83, i64 8}
!85 = !{!82, !13, i64 16}
!86 = !{!87, !88, i64 8}
!87 = !{!"hostent", !18, i64 0, !88, i64 8, !7, i64 16, !7, i64 20, !88, i64 24}
!88 = !{!"p2 omnipotent char", !89, i64 0}
!89 = !{!"any p2 pointer", !13, i64 0}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21}
!92 = !{!93, !25, i64 0}
!93 = !{!"", !25, i64 0, !25, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !8, i64 32}
!94 = !{!93, !25, i64 8}
!95 = !{!96, !13, i64 32}
!96 = !{!"RData", !45, i64 0, !13, i64 16, !13, i64 24, !13, i64 32}
!97 = !{!93, !7, i64 28}
!98 = !{!93, !7, i64 16}
!99 = !{!93, !7, i64 20}
!100 = !{!93, !7, i64 24}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = !{!104, !41, i64 2}
!104 = !{!"sockaddr_ll", !41, i64 0, !41, i64 2, !7, i64 4, !41, i64 8, !8, i64 10, !8, i64 11, !8, i64 12}
!105 = !{!104, !7, i64 4}
!106 = !{!104, !41, i64 8}
!107 = !{!104, !8, i64 10}
!108 = !{!104, !8, i64 11}
!109 = distinct !{!109, !21, !110}
!110 = !{!"llvm.loop.peeled.count", i32 1}
!111 = !{!112, !113, i64 16}
!112 = !{!"RFile", !45, i64 0, !113, i64 16}
!113 = !{!"p1 _ZTS5rb_io", !13, i64 0}
!114 = !{!115, !7, i64 16}
!115 = !{!"rb_io", !25, i64 0, !116, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !25, i64 32, !13, i64 40, !117, i64 48, !117, i64 68, !25, i64 88, !118, i64 96, !120, i64 128, !117, i64 136, !120, i64 160, !25, i64 168, !7, i64 176, !7, i64 180, !25, i64 184, !25, i64 192, !25, i64 200, !121, i64 208, !124, i64 224, !25, i64 232, !125, i64 240}
!116 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!117 = !{!"rb_io_internal_buffer", !18, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!118 = !{!"rb_io_encoding", !119, i64 0, !119, i64 8, !7, i64 16, !25, i64 24}
!119 = !{!"p1 _ZTS18OnigEncodingTypeST", !13, i64 0}
!120 = !{!"p1 _ZTS10rb_econv_t", !13, i64 0}
!121 = !{!"ccan_list_head", !122, i64 0}
!122 = !{!"ccan_list_node", !123, i64 0, !123, i64 8}
!123 = !{!"p1 _ZTS14ccan_list_node", !13, i64 0}
!124 = !{!"p1 _ZTS27rb_execution_context_struct", !13, i64 0}
!125 = !{!"long long", !8, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"p1 _ZTS32fast_fallback_getaddrinfo_shared", !13, i64 0}
!128 = !{!129, !127, i64 72}
!129 = !{!"fast_fallback_getaddrinfo_entry", !7, i64 0, !7, i64 4, !7, i64 8, !16, i64 16, !12, i64 64, !127, i64 72, !7, i64 80, !25, i64 88, !7, i64 96}
!130 = !{!129, !25, i64 88}
!131 = !{!132, !25, i64 0}
!132 = !{!"timespec", !25, i64 0, !25, i64 8}
!133 = !{!132, !25, i64 8}
!134 = !{!129, !7, i64 96}
!135 = !{!129, !12, i64 64}
!136 = !{!129, !7, i64 4}
!137 = !{!129, !7, i64 0}
!138 = !{!129, !7, i64 80}
!139 = !{!129, !7, i64 8}
!140 = distinct !{!140, !21}
!141 = !{!142, !41, i64 0}
!142 = !{!"sockaddr_un", !41, i64 0, !8, i64 2}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
end_hunk_2
