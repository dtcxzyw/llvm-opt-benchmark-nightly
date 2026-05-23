inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@time_arg:bb.a

.preheader:                                       ; preds = %bb.c
  %i.ab = load i64, ptr %1, align 8, !tbaa !13
  %.not130 = icmp eq i32 %0, 1
  br i1 %.not130, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.d
  %i.ae = phi i64 [ %i.ad, %bb.d ], [ 4, %.preheader ]
  %.286.i = phi i32 [ 2, %bb.d ], [ 1, %.preheader ] ; 4 uses
  %i.af = icmp samesign ult i32 %.286.i, %0
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i32 %.286.i to i64
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !13
  %i.aj = add nuw nsw i32 %.286.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ak = phi i64 [ %i.ai, %bb.f ], [ 4, %bb.e ]
  %.286.i.1 = phi i32 [ %i.aj, %bb.f ], [ %.286.i, %bb.e ] ; 4 uses
  %i.al = icmp samesign ult i32 %.286.i.1, %0
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = zext nneg i32 %.286.i.1 to i64
  %i.an = getelementptr [8 x i8], ptr %1, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !13
  %i.ap = add nuw nsw i32 %.286.i.1, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aq = phi i64 [ %i.ao, %bb.h ], [ 4, %bb.g ]
  %.286.i.2 = phi i32 [ %i.ap, %bb.h ], [ %.286.i.1, %bb.g ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.286.i.2, %0
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = zext nneg i32 %.286.i.2 to i64
  %i.at = getelementptr [8 x i8], ptr %1, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !13
  %i.av = add nuw nsw i32 %.286.i.2, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aw = phi i64 [ %i.au, %bb.j ], [ 4, %bb.i ]
  %.286.i.3 = phi i32 [ %i.av, %bb.j ], [ %.286.i.2, %bb.i ] ; 4 uses
  %i.ax = icmp samesign ult i32 %.286.i.3, %0
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = zext nneg i32 %.286.i.3 to i64
  %i.az = getelementptr [8 x i8], ptr %1, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !13
  %i.bb = add nuw nsw i32 %.286.i.3, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.bc = phi i64 [ %i.ba, %bb.l ], [ 4, %bb.k ]
  %.286.i.4 = phi i32 [ %i.bb, %bb.l ], [ %.286.i.3, %bb.k ] ; 4 uses
  %i.bd = icmp samesign ult i32 %.286.i.4, %0
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = zext nneg i32 %.286.i.4 to i64
  %i.bf = getelementptr [8 x i8], ptr %1, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !13
  %i.bh = add nuw nsw i32 %.286.i.4, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bi = phi i64 [ %i.bg, %bb.n ], [ 4, %bb.m ]
  %.286.i.5 = phi i32 [ %i.bh, %bb.n ], [ %.286.i.4, %bb.m ] ; 2 uses
  %i.bj = icmp samesign ult i32 %.286.i.5, %0
  %i.bk = zext i1 %i.bj to i32
  %spec.select = add nuw nsw i32 %.286.i.5, %i.bk
  %i.bl = icmp eq i32 %spec.select, %0
  br i1 %i.bl, label %rb_scan_args_set.exit, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.c
  tail call void @rb_error_arity(i32 noundef range(i32 11, 10) %0, i32 noundef 1, i32 noundef 8) #19
  unreachable

rb_scan_args_set.exit:                            ; preds = %bb.o
  %i.bm = or disjoint i64 %i.g, 8521215115264
  br label %bb.q

bb.q:                                             ; preds = %rb_scan_args_set.exit, %bb.b
  %i.bn = phi i64 [ %i.bc, %rb_scan_args_set.exit ], [ %i.u, %bb.b ] ; 8 uses
  %i.bo = phi i64 [ %i.bi, %rb_scan_args_set.exit ], [ 4, %bb.b ] ; 7 uses
  %i.bp = phi i64 [ %i.aw, %rb_scan_args_set.exit ], [ %i.t, %bb.b ] ; 7 uses
  %i.bq = phi i64 [ %i.aq, %rb_scan_args_set.exit ], [ %i.r, %bb.b ] ; 7 uses
  %i.br = phi i64 [ %i.ak, %rb_scan_args_set.exit ], [ %i.p, %bb.b ] ; 7 uses
  %i.bs = phi i64 [ %i.ae, %rb_scan_args_set.exit ], [ %i.n, %bb.b ] ; 2 uses
  %i.bt = phi i64 [ %i.ab, %rb_scan_args_set.exit ], [ %i.l, %bb.b ] ; 5 uses
  %storemerge = phi i64 [ %i.bm, %rb_scan_args_set.exit ], [ %i.z, %bb.b ]
  store i64 %storemerge, ptr %i.c, align 8
  %i.bu = icmp eq i64 %i.bt, 0
  %i.bv = and i64 %i.bt, 7
  %i.bw = icmp ne i64 %i.bv, 0
  %i.bx = or i1 %i.bu, %i.bw
  br i1 %i.bx, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.q
  %i.by = inttoptr i64 %i.bt to ptr
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !30
  %i.ca = and i64 %i.bz, 31
  %i.cb = icmp eq i64 %i.ca, 5
  br i1 %i.cb, label %bb.r, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.r:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.cc = tail call i64 @rb_str_to_inum(i64 noundef %i.bt, i32 noundef 10, i32 noundef 1) #18
  br label %obj2vint.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.q
  %i.cd = tail call i64 @rb_to_int(i64 noundef %i.bt) #18
  br label %obj2vint.exit

obj2vint.exit:                                    ; preds = %bb.r, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i = phi i64 [ %i.cc, %bb.r ], [ %i.cd, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ]
  store i64 %.0.i, ptr %2, align 8, !tbaa !65
  %i.ce = icmp eq i64 %i.bs, 4
  br i1 %i.ce, label %bb.t, label %bb.s

bb.s:                                             ; preds = %obj2vint.exit
  %i.cf = tail call fastcc i32 @month_arg(i64 noundef %i.bs)
  %i.cg = shl nuw nsw i32 %i.cf, 9
  %i.ch = zext nneg i32 %i.cg to i64
  br label %bb.t

bb.t:                                             ; preds = %obj2vint.exit, %bb.s
  %.sink131 = phi i64 [ %i.ch, %bb.s ], [ 512, %obj2vint.exit ]
  %.sink132 = load i64, ptr %i.c, align 8
  %i.ci = and i64 %.sink132, -7681
  %i.cj = or disjoint i64 %i.ci, %.sink131        ; 2 uses
  store i64 %i.cj, ptr %i.c, align 8
  %i.ck = icmp eq i64 %i.br, 4
  br i1 %i.ck, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = icmp eq i64 %i.br, 0
  %i.cm = and i64 %i.br, 7
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = or i1 %i.cl, %i.cn
  br i1 %i.co, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.u
  %i.cp = inttoptr i64 %i.br to ptr
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !30
  %i.cr = and i64 %i.cq, 31
  %i.cs = icmp eq i64 %i.cr, 5
  br i1 %i.cs, label %bb.v, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.v:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.ct = tail call i64 @rb_str_to_inum(i64 noundef %i.br, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.v, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.u
  %.0.i.i = phi i64 [ %i.ct, %bb.v ], [ %i.br, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %i.br, %bb.u ] ; 3 uses
  %i.cu = trunc i64 %.0.i.i to i1
  br i1 %i.cu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.cv = tail call i64 @rb_fix2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

bb.x:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.cw = tail call i64 @rb_num2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

obj2int.exit.i:                                   ; preds = %bb.x, %bb.w
  %.0.i3.i.i = phi i64 [ %i.cv, %bb.w ], [ %i.cw, %bb.x ] ; 2 uses
  %i.cx = and i64 %.0.i3.i.i, 4294967264
  %.not.i55 = icmp eq i64 %i.cx, 0
  br i1 %.not.i55, label %obj2ubits.exit, label %bb.y

bb.y:                                             ; preds = %obj2int.exit.i
  %i.cy = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.cy, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit:                                   ; preds = %obj2int.exit.i
  %i.cz = load i64, ptr %i.c, align 8
  %i.da = shl i64 %.0.i3.i.i, 13
  %i.db = and i64 %i.da, 253952
  br label %bb.z

bb.z:                                             ; preds = %bb.t, %obj2ubits.exit
  %.sink134 = phi i64 [ %i.cz, %obj2ubits.exit ], [ %i.cj, %bb.t ] ; 3 uses
  %.sink133 = phi i64 [ %i.db, %obj2ubits.exit ], [ 8192, %bb.t ] ; 2 uses
  %i.dc = and i64 %.sink134, -253953
  %i.dd = or disjoint i64 %i.dc, %.sink133        ; 4 uses
  store i64 %i.dd, ptr %i.c, align 8
  %i.de = trunc i64 %.sink134 to i32
  %3 = lshr i32 %i.de, 9
  %4 = and i32 %3, 15
  switch i32 %4, label %bb.am [
    i32 2, label %bb.aa
    i32 4, label %bb.ak
    i32 6, label %bb.ak
    i32 9, label %bb.ak
    i32 11, label %bb.ak
  ]

bb.aa:                                            ; preds = %bb.z
  %i.df = load i64, ptr %2, align 8, !tbaa !65    ; 7 uses
  %i.dg = trunc i64 %i.df to i1
  br i1 %i.dg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dh = ashr i64 %i.df, 1
  %i.di = srem i64 %i.dh, 400                     ; 2 uses
  %i.dj = icmp slt i64 %i.di, 0
  %i.dk = shl nsw i64 %i.di, 1                    ; 2 uses
  %i.dl = add nsw i64 %i.dk, 800
  %i.dm = select i1 %i.dj, i64 %i.dl, i64 %i.dk
  %i.dn = or disjoint i64 %i.dm, 1
  br label %modv.exit

bb.ac:                                            ; preds = %bb.aa
  %i.do = icmp eq i64 %i.df, 0
  %i.dp = and i64 %i.df, 6
  %i.dq = icmp ne i64 %i.dp, 0
  %i.dr = or i1 %i.do, %i.dq
  br i1 %i.dr, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57, label %rbimpl_RB_TYPE_P_fastpath.exit.i56

rbimpl_RB_TYPE_P_fastpath.exit.i56:               ; preds = %bb.ac
  %i.ds = inttoptr i64 %i.df to ptr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !30
  %i.du = and i64 %i.dt, 31
  %i.dv = icmp eq i64 %i.du, 10
  br i1 %i.dv, label %bb.ad, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57

bb.ad:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i56
  %i.dw = tail call i64 @rb_big_modulo(i64 noundef %i.df, i64 noundef 801) #18
  br label %modv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i57:        ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i56, %bb.ac
  %i.dx = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.df, i64 noundef 37, i32 noundef 1, i64 noundef 801) #18
  br label %modv.exit

modv.exit:                                        ; preds = %bb.ab, %bb.ad, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57
  %.0.i58 = phi i64 [ %i.dx, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i57 ], [ %i.dw, %bb.ad ], [ %i.dn, %bb.ab ] ; 3 uses
  %i.dy = trunc i64 %.0.i58 to i1
  br i1 %i.dy, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %modv.exit
  %i.dz = ashr i64 %.0.i58, 1
  br label %rb_num2long_inline.exit

bb.af:                                            ; preds = %modv.exit
  %i.ea = tail call i64 @rb_num2long(i64 noundef %.0.i58) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.ae, %bb.af
  %.0.i59 = phi i64 [ %i.dz, %bb.ae ], [ %i.ea, %bb.af ] ; 3 uses
  %i.eb = icmp sgt i64 %.0.i59, -1
  br i1 %i.eb, label %bb.ah, label %bb.ag, !prof !15

bb.ag:                                            ; preds = %rb_num2long_inline.exit
  %i.ec = sub i64 0, %.0.i59
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %rb_num2long_inline.exit
  %i.ed = phi i64 [ %i.ec, %bb.ag ], [ %.0.i59, %rb_num2long_inline.exit ]
  %.fr = freeze i64 %i.ed                         ; 3 uses
  %i.ee = and i64 %.fr, 3
  %.not.i60 = icmp eq i64 %i.ee, 0
  br i1 %.not.i60, label %bb.ai, label %leap_year_p.exit.thread, !prof !16

bb.ai:                                            ; preds = %bb.ah
  %i.ef = udiv i64 %.fr, 100                      ; 2 uses
  %i.eg = mul nuw nsw i64 %i.ef, 100
  %.not11.i = icmp eq i64 %.fr, %i.eg
  br i1 %.not11.i, label %leap_year_p.exit, label %leap_year_p.exit.thread90, !prof !16

leap_year_p.exit:                                 ; preds = %bb.ai
  %i.eh = and i64 %i.ef, 3
  %.not95 = icmp eq i64 %i.eh, 0
  br i1 %.not95, label %leap_year_p.exit.thread90, label %leap_year_p.exit.thread

leap_year_p.exit.thread:                          ; preds = %bb.ah, %leap_year_p.exit
  br label %leap_year_p.exit.thread90

leap_year_p.exit.thread90:                        ; preds = %bb.ai, %leap_year_p.exit, %leap_year_p.exit.thread
  %i.ei = phi i32 [ 28, %leap_year_p.exit.thread ], [ 29, %leap_year_p.exit ], [ 29, %bb.ai ] ; 2 uses
  %i.ej = load i64, ptr %i.c, align 8             ; 4 uses
  %i.ek = trunc i64 %i.ej to i32
  %i.el = lshr i32 %i.ek, 13                      ; 2 uses
  %i.em = and i32 %i.el, 31
  %i.en = icmp samesign ugt i32 %i.em, %i.ei
  br i1 %i.en, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %leap_year_p.exit.thread90
  %i.eo = sub nuw nsw i32 %i.el, %i.ei
  %i.ep = shl nuw i32 %i.eo, 13
  %i.eq = and i32 %i.ep, 253952
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = and i64 %i.ej, -261633
  %i.et = add i64 %i.ej, 512
  %i.eu = and i64 %i.et, 7680
  %i.ev = or disjoint i64 %i.eu, %i.es
  %i.ew = or disjoint i64 %i.ev, %i.er
  br label %.sink.split

bb.ak:                                            ; preds = %bb.z, %bb.z, %bb.z, %bb.z
  %i.ex = icmp eq i64 %.sink133, 253952
  br i1 %i.ex, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ey = add i64 %.sink134, 512
  %i.ez = and i64 %i.ey, 7680
  %i.fa = and i64 %i.dd, -253441
  %i.fb = or disjoint i64 %i.fa, %i.ez
  br label %.sink.split

.sink.split:                                      ; preds = %bb.al, %bb.aj
  %.sink = phi i64 [ %i.ew, %bb.aj ], [ %i.fb, %bb.al ] ; 2 uses
  store i64 %.sink, ptr %i.c, align 8
  br label %bb.am

bb.am:                                            ; preds = %.sink.split, %leap_year_p.exit.thread90, %bb.ak, %bb.z
  %i.fc = phi i64 [ %i.ej, %leap_year_p.exit.thread90 ], [ %i.dd, %bb.z ], [ %i.dd, %bb.ak ], [ %.sink, %.sink.split ]
  %i.fd = icmp eq i64 %i.bq, 4
  br i1 %i.fd, label %bb.as, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fe = icmp eq i64 %i.bq, 0
  %i.ff = and i64 %i.bq, 7
  %i.fg = icmp ne i64 %i.ff, 0
  %i.fh = or i1 %i.fe, %i.fg
  br i1 %i.fh, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i61

rbimpl_RB_TYPE_P_fastpath.exit.i.i61:             ; preds = %bb.an
  %i.fi = inttoptr i64 %i.bq to ptr
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !30
  %i.fk = and i64 %i.fj, 31
  %i.fl = icmp eq i64 %i.fk, 5
  br i1 %i.fl, label %bb.ao, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62

bb.ao:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i61
  %i.fm = tail call i64 @rb_str_to_inum(i64 noundef %i.bq, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62:      ; preds = %bb.ao, %rbimpl_RB_TYPE_P_fastpath.exit.i.i61, %bb.an
  %.0.i.i63 = phi i64 [ %i.fm, %bb.ao ], [ %i.bq, %rbimpl_RB_TYPE_P_fastpath.exit.i.i61 ], [ %i.bq, %bb.an ] ; 3 uses
  %i.fn = trunc i64 %.0.i.i63 to i1
  br i1 %i.fn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62
  %i.fo = tail call i64 @rb_fix2int(i64 noundef %.0.i.i63) #18
  br label %obj2int.exit.i64

bb.aq:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i62
  %i.fp = tail call i64 @rb_num2int(i64 noundef %.0.i.i63) #18
  br label %obj2int.exit.i64

obj2int.exit.i64:                                 ; preds = %bb.aq, %bb.ap
  %.0.i3.i.i65 = phi i64 [ %i.fo, %bb.ap ], [ %i.fp, %bb.aq ] ; 2 uses
  %i.fq = and i64 %.0.i3.i.i65, 4294967264
  %.not.i66 = icmp eq i64 %i.fq, 0
  br i1 %.not.i66, label %obj2ubits.exit67, label %bb.ar

bb.ar:                                            ; preds = %obj2int.exit.i64
  %i.fr = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.fr, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit67:                                 ; preds = %obj2int.exit.i64
  %i.fs = shl i64 %.0.i3.i.i65, 18
  %i.ft = and i64 %i.fs, 8126464
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.am, %obj2ubits.exit67
  %i.fu = phi i64 [ %.pre, %obj2ubits.exit67 ], [ %i.fc, %bb.am ]
  %i.fv = phi i64 [ %i.ft, %obj2ubits.exit67 ], [ 0, %bb.am ]
  %i.fw = and i64 %i.fu, -8126465
  %i.fx = or disjoint i64 %i.fw, %i.fv            ; 2 uses
  store i64 %i.fx, ptr %i.c, align 8
  %i.fy = icmp eq i64 %i.bp, 4
  br i1 %i.fy, label %bb.ay, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fz = icmp eq i64 %i.bp, 0
  %i.ga = and i64 %i.bp, 7
  %i.gb = icmp ne i64 %i.ga, 0
  %i.gc = or i1 %i.fz, %i.gb
  br i1 %i.gc, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i68

rbimpl_RB_TYPE_P_fastpath.exit.i.i68:             ; preds = %bb.at
  %i.gd = inttoptr i64 %i.bp to ptr
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !30
  %i.gf = and i64 %i.ge, 31
  %i.gg = icmp eq i64 %i.gf, 5
  br i1 %i.gg, label %bb.au, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69

bb.au:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i68
  %i.gh = tail call i64 @rb_str_to_inum(i64 noundef %i.bp, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i69:      ; preds = %bb.au, %rbimpl_RB_TYPE_P_fastpath.exit.i.i68, %bb.at
end_hunk_0
