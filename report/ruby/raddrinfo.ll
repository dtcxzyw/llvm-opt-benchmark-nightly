inline.NumInlined: 312
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@addrinfo_initialize:bb.a
  %i.cz = call i64 @rb_fix2int(i64 noundef range(i64 1, 0) %i.cf) #17
  %i.da = trunc i64 %i.cz to i32
  %i.db = icmp ugt i32 %i.cu, 2048
  br i1 %i.db, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %rb_num2int_inline.exit.i
  %i.dc = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dc, ptr noundef nonnull @.str.102) #19
  unreachable

bb.af:                                            ; preds = %rb_num2int_inline.exit.i
  %.not.i.i.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i.i.i, label %ruby_nonempty_memcpy.exit.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dd = zext nneg i32 %i.cu to i64
  %i.de = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr readonly align 1 %i.cs, i64 %i.dd, i1 false)
  br label %ruby_nonempty_memcpy.exit.i.i

ruby_nonempty_memcpy.exit.i.i:                    ; preds = %bb.ag, %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %i.cu, ptr %i.df, align 4, !tbaa !97
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.cw, ptr %i.dg, align 8, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %i.cy, ptr %i.dh, align 4, !tbaa !99
  %i.di = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.da, ptr %i.di, align 8, !tbaa !100
  store i64 %.0.i37, ptr %i.k, align 8, !tbaa !38
  %i.dj = icmp eq i64 %.0.i37, 0
  %i.dk = and i64 %.0.i37, 7
  %i.dl = icmp ne i64 %i.dk, 0
  %i.dm = or i1 %i.dj, %i.dl
  br i1 %i.dm, label %rb_obj_write.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %ruby_nonempty_memcpy.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %.0.i37) #17
  br label %rb_obj_write.exit.i.i

rb_obj_write.exit.i.i:                            ; preds = %bb.ah, %ruby_nonempty_memcpy.exit.i.i
  store i64 %i.cl, ptr %i.j, align 8, !tbaa !38
  %i.dn = icmp eq i64 %i.cl, 0
  %i.do = and i64 %i.cl, 7
  %i.dp = icmp ne i64 %i.do, 0
  %i.dq = or i1 %i.dn, %i.dp
  br i1 %i.dq, label %init_addrinfo.exit.i, label %bb.ai

bb.ai:                                            ; preds = %rb_obj_write.exit.i.i
  call void @rb_gc_writebarrier(i64 noundef %2, i64 noundef %i.cl) #17
  br label %init_addrinfo.exit.i

init_addrinfo.exit.i:                             ; preds = %bb.ai, %rb_obj_write.exit.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !10
  %.not.i.i = icmp eq i32 %i.ds, 0
  %i.dt = load ptr, ptr %i.ch, align 8, !tbaa !14 ; 3 uses
  %.not11.i.i = icmp eq ptr %i.dt, null           ; 2 uses
  br i1 %.not.i.i, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %init_addrinfo.exit.i
  br i1 %.not11.i.i, label %init_addrinfo_getaddrinfo.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @freeaddrinfo(ptr noundef nonnull %i.dt) #17
  br label %init_addrinfo_getaddrinfo.exit

bb.al:                                            ; preds = %init_addrinfo.exit.i
  br i1 %.not11.i.i, label %init_addrinfo_getaddrinfo.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.al, %.lr.ph.i.i
  %.014.i.i = phi ptr [ %i.dv, %.lr.ph.i.i ], [ %i.dt, %bb.al ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !15 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !19
  call void @ruby_xfree(ptr noundef %i.dx) #17
  call void @ruby_xfree(ptr noundef nonnull %.014.i.i) #17
  %.not12.i.i = icmp eq ptr %i.dv, null
  br i1 %.not12.i.i, label %init_addrinfo_getaddrinfo.exit, label %.lr.ph.i.i, !llvm.loop !20

init_addrinfo_getaddrinfo.exit:                   ; preds = %.lr.ph.i.i, %bb.aj, %bb.ak, %bb.al
  call void @ruby_xfree(ptr noundef nonnull %i.ch) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.ar

bb.am:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  %i.dy = call i64 @rb_ary_entry(i64 noundef %i.ar, i64 noundef 1) #20
  store i64 %i.dy, ptr %i.g, align 8, !tbaa !38
  %i.dz = call i64 @rb_string_value(ptr noundef nonnull %i.g) #17 ; 0 uses
  %i.ea = load i64, ptr %i.g, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ea, ptr %i.a, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.eb = call i64 @rb_string_value(ptr noundef nonnull %i.a) #17 ; 0 uses
  %i.ec = load i64, ptr %i.a, align 8, !tbaa !38
  %i.ed = inttoptr i64 %i.ec to ptr               ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !47 ; 5 uses
  %i.eg = icmp ugt i64 %i.ef, 108
  br i1 %i.eg, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eh = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.eh, ptr noundef nonnull @.str.112, i64 noundef %i.ef, i64 noundef 108) #19
  unreachable

bb.ao:                                            ; preds = %bb.am
  %.2..2..2..sroa_idx71 = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %.2..2..2..sroa_idx71, i8 0, i64 108, i1 false)
  store i16 1, ptr %3, align 2, !tbaa !141
  %i.ei = load i64, ptr %i.ed, align 8, !tbaa !44
  %i.ej = and i64 %i.ei, 8192
  %.not.i.i38 = icmp eq i64 %i.ej, 0
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %.not.i6.i = icmp eq i64 %i.ef, 0               ; 2 uses
  br i1 %.not.i.i38, label %RSTRING_PTR.exit.i, label %RSTRING_PTR.exit.thread.i

RSTRING_PTR.exit.i:                               ; preds = %bb.ao
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.thread.i:                        ; preds = %bb.ao
  br i1 %.not.i6.i, label %init_unix_addrinfo.exit, label %bb.ap

bb.ap:                                            ; preds = %RSTRING_PTR.exit.thread.i
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !46
  br label %RSTRING_PTR.exit.i.i

RSTRING_PTR.exit.i.i:                             ; preds = %bb.ap, %RSTRING_PTR.exit.i
  %.sink.i = phi ptr [ %i.el, %bb.ap ], [ %i.ek, %RSTRING_PTR.exit.i ] ; 2 uses
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.2..2..2..sroa_idx, ptr readonly align 1 %.sink.i, i64 %i.ef, i1 false)
  %i.em = load i8, ptr %.sink.i, align 1, !tbaa !46
  %i.en = icmp eq i8 %i.em, 0
  br i1 %i.en, label %RSTRING_LENINT.exit.i.i, label %init_unix_addrinfo.exit

RSTRING_LENINT.exit.i.i:                          ; preds = %RSTRING_PTR.exit.i.i
  %i.eo = trunc nuw nsw i64 %i.ef to i32
  %i.ep = add nuw nsw i32 %i.eo, 2
  br label %init_unix_addrinfo.exit

init_unix_addrinfo.exit:                          ; preds = %RSTRING_PTR.exit.i, %RSTRING_PTR.exit.thread.i, %RSTRING_PTR.exit.i.i, %RSTRING_LENINT.exit.i.i
  %.0.i.i40 = phi i32 [ 110, %RSTRING_PTR.exit.i.i ], [ %i.ep, %RSTRING_LENINT.exit.i.i ], [ 2, %RSTRING_PTR.exit.thread.i ], [ 2, %RSTRING_PTR.exit.i ] ; 2 uses
  %i.eq = zext nneg i32 %.0.i.i40 to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.er, ptr noundef nonnull readonly align 2 dereferenceable(1) %3, i64 %i.eq, i1 false)
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %.0.i.i40, ptr %i.es, align 4, !tbaa !97
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 1, ptr %i.et, align 8, !tbaa !98
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 1, ptr %i.eu, align 4, !tbaa !99
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 0, ptr %i.ev, align 8, !tbaa !100
  store i64 4, ptr %i.k, align 8, !tbaa !38
  store i64 4, ptr %i.j, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  br label %bb.ar

bb.aq:                                            ; preds = %bb.v
  %i.ew = load i64, ptr @rb_eSocket, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ew, ptr noundef nonnull @.str.109) #19
  unreachable

bb.ar:                                            ; preds = %init_unix_addrinfo.exit, %init_addrinfo_getaddrinfo.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  br label %bb.ay

bb.as:                                            ; preds = %bb.r
  %i.ex = call i64 @rb_string_value(ptr noundef nonnull %i.b) #17 ; 0 uses
  %i.ey = load i64, ptr %i.b, align 8, !tbaa !38
  %i.ez = inttoptr i64 %i.ey to ptr               ; 3 uses
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !44
  %i.fb = and i64 %i.fa, 8192
  %.not.i41 = icmp eq i64 %i.fb, 0
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 24 ; 2 uses
  br i1 %.not.i41, label %RSTRING_PTR.exit42, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !46
  br label %RSTRING_PTR.exit42

RSTRING_PTR.exit42:                               ; preds = %bb.as, %bb.at
  %i.fe = phi ptr [ %i.fd, %bb.at ], [ %i.fc, %bb.as ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !47 ; 6 uses
  %i.fh = add i64 %i.fg, 2147483648
  %.not.i.i43 = icmp ult i64 %i.fh, 4294967296
  br i1 %.not.i.i43, label %RSTRING_LENINT.exit, label %bb.au

bb.au:                                            ; preds = %RSTRING_PTR.exit42
  call void @rb_out_of_int(i64 noundef %i.fg) #22
  unreachable

RSTRING_LENINT.exit:                              ; preds = %RSTRING_PTR.exit42
  %i.fi = trunc nsw i64 %i.fg to i32
  %i.fj = icmp ugt i64 %i.fg, 2048
  br i1 %i.fj, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %RSTRING_LENINT.exit
  %i.fk = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fk, ptr noundef nonnull @.str.102) #19
  unreachable

bb.aw:                                            ; preds = %RSTRING_LENINT.exit
  %.not.i.i44 = icmp eq i64 %i.fg, 0
  br i1 %.not.i.i44, label %init_addrinfo.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fl = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr readonly align 1 %i.fe, i64 %i.fg, i1 false)
  br label %init_addrinfo.exit

init_addrinfo.exit:                               ; preds = %bb.aw, %bb.ax
  %i.fm = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 %i.fi, ptr %i.fm, align 4, !tbaa !97
  %i.fn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.ah, ptr %i.fn, align 8, !tbaa !98
  %i.fo = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 %i.ak, ptr %i.fo, align 4, !tbaa !99
  %i.fp = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 %i.aq, ptr %i.fp, align 8, !tbaa !100
  store i64 4, ptr %i.k, align 8, !tbaa !38
  store i64 4, ptr %i.j, align 8, !tbaa !38
  br label %bb.ay

bb.ay:                                            ; preds = %init_addrinfo.exit, %bb.ar
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
  %i.u = icmp eq i32 %i.n, %i.t
  br i1 %i.u, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.d, %ai_get_afamily.exit
  %i.v = tail call i64 @rsock_intern_protocol_family(i32 noundef %i.n) #17 ; 2 uses
  %.not61 = icmp eq i64 %i.v, 0
  br i1 %.not61, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.w = tail call ptr @rb_id2name(i64 noundef %i.v) #17
  %i.x = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.w) #17 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.y = load i32, ptr %i.m, align 8, !tbaa !98
  %i.z = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.115, i32 noundef %i.y) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %ai_get_afamily.exit
  %.pr = load i32, ptr %i.m, align 8, !tbaa !98   ; 6 uses
  switch i32 %.pr, label %.thread [
    i32 10, label %bb.h
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !99 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !100
  switch i32 %i.ae, label %bb.k [
    i32 0, label %bb.j
    i32 6, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.af = tail call i64 @rb_str_cat(i64 noundef %i.f, ptr noundef nonnull @.str.116, i64 noundef 4) #17 ; 0 uses
  br label %bb.v

bb.k:                                             ; preds = %bb.i, %bb.h
  switch i32 %.pr, label %.thread [
    i32 10, label %bb.l
    i32 2, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.ag = icmp eq i32 %i.ab, 2
  br i1 %i.ag, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
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
  br i1 %.not65, label %._crit_edge, label %.thread66

._crit_edge:                                      ; preds = %bb.t
  %.pre = load i32, ptr %i.as, align 8, !tbaa !100
  br label %bb.u

.thread66:                                        ; preds = %bb.t
  %i.av = tail call ptr @rb_id2name(i64 noundef %i.au) #17
  %i.aw = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.114, ptr noundef %i.av) #17 ; 0 uses
  br label %bb.v

bb.u:                                             ; preds = %._crit_edge, %bb.s
  %i.ax = phi i32 [ %.pre, %._crit_edge ], [ %i.at, %bb.s ]
  %i.ay = tail call i64 (i64, ptr, ...) @rb_str_catf(i64 noundef %i.f, ptr noundef nonnull @.str.119, i32 noundef %i.ax) #17 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread66, %bb.n, %bb.u, %bb.r, %bb.j
end_hunk_0
begin_hunk_1_@addrinfo_mload:bb.a
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %RSTRING_PTR.exit38, %bb.ad
  store i16 1, ptr %2, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(108) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(108) %.sroa.5, i64 108, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.ah

bb.ae:                                            ; preds = %bb.y
  %i.cn = call i64 @rb_convert_type(i64 noundef %i.bz, i32 noundef 7, ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.137) #17 ; 2 uses
  %i.co = call i64 @rb_ary_entry(i64 noundef %i.cn, i64 noundef 0) #20
  %i.cp = call i64 @rb_ary_entry(i64 noundef %i.cn, i64 noundef 1) #20
  %i.cq = load i32, ptr %i.c, align 4, !tbaa !6
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 1
  %i.ct = or disjoint i64 %i.cs, 1
  %i.cu = load i32, ptr %i.d, align 4, !tbaa !6
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 1
  %i.cx = or disjoint i64 %i.cw, 1
  %i.cy = load i32, ptr %i.e, align 4, !tbaa !6
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 1
  %i.db = or disjoint i64 %i.da, 1
  %i.dc = call fastcc ptr @call_getaddrinfo(i64 noundef %i.co, i64 noundef %i.cp, i64 noundef %i.ct, i64 noundef %i.cx, i64 noundef %i.db, i64 noundef 2057, i32 noundef 1, i64 noundef 4) ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !14 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.df = load i32, ptr %i.de, align 8, !tbaa !74 ; 3 uses
  %.not.i40 = icmp eq i32 %i.df, 0
  br i1 %.not.i40, label %ruby_nonempty_memcpy.exit41, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr readonly align 1 %i.di, i64 %i.dg, i1 false)
  br label %ruby_nonempty_memcpy.exit41

ruby_nonempty_memcpy.exit41:                      ; preds = %bb.ae, %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !10
  %.not.i42 = icmp eq i32 %i.dk, 0
  br i1 %.not.i42, label %bb.ag, label %.lr.ph.i

bb.ag:                                            ; preds = %ruby_nonempty_memcpy.exit41
  call void @freeaddrinfo(ptr noundef nonnull %i.dd) #17
  br label %rb_freeaddrinfo.exit

.lr.ph.i:                                         ; preds = %ruby_nonempty_memcpy.exit41, %.lr.ph.i
  %.014.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %i.dd, %ruby_nonempty_memcpy.exit41 ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.014.i, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !15 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.014.i, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19
  call void @ruby_xfree(ptr noundef %i.do) #17
  call void @ruby_xfree(ptr noundef nonnull %.014.i) #17
  %.not12.i = icmp eq ptr %i.dm, null
  br i1 %.not12.i, label %rb_freeaddrinfo.exit, label %.lr.ph.i, !llvm.loop !20

rb_freeaddrinfo.exit:                             ; preds = %.lr.ph.i, %bb.ag
  call void @ruby_xfree(ptr noundef nonnull %i.dc) #17
  br label %bb.ah

bb.ah:                                            ; preds = %rb_freeaddrinfo.exit, %ruby_nonempty_memcpy.exit
  %.029 = phi i32 [ 110, %ruby_nonempty_memcpy.exit ], [ %i.df, %rb_freeaddrinfo.exit ] ; 4 uses
  %i.dp = call noalias noundef nonnull dereferenceable(2080) ptr @ruby_xcalloc(i64 noundef 1, i64 noundef 2080) #21 ; 9 uses
  store i64 4, ptr %i.dp, align 8, !tbaa !92
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  store i64 4, ptr %i.dq, align 8, !tbaa !94
  %i.dr = inttoptr i64 %0 to ptr
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !95
  %i.dt = load i32, ptr %i.c, align 4, !tbaa !6
  %i.du = load i32, ptr %i.d, align 4, !tbaa !6
  %i.dv = load i32, ptr %i.e, align 4, !tbaa !6
  %i.dw = icmp ugt i32 %.029, 2048
  br i1 %i.dw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dx = load i64, ptr @rb_eArgError, align 8, !tbaa !38
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.dx, ptr noundef nonnull @.str.102) #19
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %.not.i.i = icmp eq i32 %.029, 0
  br i1 %.not.i.i, label %ruby_nonempty_memcpy.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dy = zext nneg i32 %.029 to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull readonly align 8 %2, i64 %i.dy, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.ak, %bb.aj
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  store i32 %.029, ptr %i.ea, align 4, !tbaa !97
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store i32 %i.dt, ptr %i.eb, align 8, !tbaa !98
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  store i32 %i.du, ptr %i.ec, align 4, !tbaa !99
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 %i.dv, ptr %i.ed, align 8, !tbaa !100
  store i64 %.0, ptr %i.dq, align 8, !tbaa !38
  %i.ee = icmp eq i64 %.0, 0
  %i.ef = and i64 %.0, 7
  %i.eg = icmp ne i64 %i.ef, 0
  %i.eh = or i1 %i.ee, %i.eg
  br i1 %i.eh, label %rb_obj_write.exit.i, label %bb.al

bb.al:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.0) #17
  br label %rb_obj_write.exit.i

rb_obj_write.exit.i:                              ; preds = %bb.al, %ruby_nonempty_memcpy.exit.i
  store i64 %.028, ptr %i.dp, align 8, !tbaa !38
  %i.ei = icmp eq i64 %.028, 0
  %i.ej = and i64 %.028, 7
  %i.ek = icmp ne i64 %i.ej, 0
  %i.el = or i1 %i.ei, %i.ek
  br i1 %i.el, label %init_addrinfo.exit, label %bb.am

bb.am:                                            ; preds = %rb_obj_write.exit.i
  call void @rb_gc_writebarrier(i64 noundef %0, i64 noundef %.028) #17
  br label %init_addrinfo.exit

init_addrinfo.exit:                               ; preds = %rb_obj_write.exit.i, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

declare void @rb_nativethread_lock_initialize(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_initialize(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_signal(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_destroy(ptr noundef) local_unnamed_addr #3

declare void @rb_native_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i64 @rb_num2uint(i64 noundef) local_unnamed_addr #3

declare i64 @ruby_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @inet_pton(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #10

declare i64 @rb_fiber_scheduler_address_resolve(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @rb_ary_entry(i64 noundef, i64 noundef) local_unnamed_addr #11

declare double @rb_num2dbl(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal ptr @fork_safe_do_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @rb_thread_prevent_fork(ptr noundef nonnull @do_getaddrinfo, ptr noundef %0) #17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @wait_getaddrinfo(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  tail call void @rb_nativethread_lock_lock(ptr noundef nonnull %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !62
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = load i32, ptr %i.b, align 8, !tbaa !65
  %.not1723 = icmp eq i32 %i.h, 0
  br i1 %.not1723, label %.lr.ph24, label %.critedge

.lr.ph24:                                         ; preds = %.lr.ph, %.backedge
  %i.i = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %1 = sext i32 %i.i to i64
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph24
  %i.k = icmp sgt i32 %i.i, 0
  br i1 %i.k, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  tail call void @rb_native_cond_timedwait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i64 noundef %1) #17
  %i.l = load i32, ptr %i.c, align 4, !tbaa !62
  %.not18 = icmp eq i32 %i.l, 0
  br i1 %.not18, label %bb.d, label %.critedge

.split:                                           ; preds = %bb.b
  tail call void @rb_native_cond_wait(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a) #17
  %.pre = load i32, ptr %i.c, align 4, !tbaa !62
  %i.m = icmp eq i32 %.pre, 0
  br i1 %i.m, label %.backedge, label %.critedge

.backedge:                                        ; preds = %.split, %bb.d
  %i.n = load i32, ptr %i.b, align 8, !tbaa !65
  %.not17 = icmp eq i32 %i.n, 0
  br i1 %.not17, label %.lr.ph24, label %.critedge, !llvm.loop !144

bb.d:                                             ; preds = %bb.c, %.lr.ph24
  store i32 1, ptr %i.b, align 8, !tbaa !65
  store i32 1, ptr %i.g, align 4, !tbaa !66
  br label %.backedge

.critedge:                                        ; preds = %.split, %.backedge, %bb.c, %.lr.ph, %bb.a
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
define internal void @addrinfo_mark(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !92
  tail call void @rb_gc_mark(i64 noundef %i.a) #17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !94
  tail call void @rb_gc_mark(i64 noundef %i.c) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @addrinfo_memsize(ptr nofree readnone captures(none) %0) #13 {
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
define internal fastcc nonnull ptr @call_getaddrinfo(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef range(i32 0, 2) %6, i64 noundef %7) unnamed_addr #0 {
end_hunk_1
