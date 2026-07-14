inline.NumInlined: 958
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@time_strftime:bb.a
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !13
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ca, ptr noundef nonnull @.str.134, i64 noundef %i.cb) #19
  unreachable

bb.u:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i64 [ %i.bs, %bb.r ], [ %i.by, %bb.s ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @time_xmlschema(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #1 {
bb.a:
  %or.cond.i = icmp ugt i32 %0, 1
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 0, i32 noundef 1) #19
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.a = icmp eq i32 %0, 1
  br i1 %i.a, label %bb.c, label %bb.f

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.b = load i64, ptr %1, align 8, !tbaa !13     ; 3 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = ashr i64 %i.b, 1
  br label %rb_num2long_inline.exit

bb.e:                                             ; preds = %bb.c
  %i.e = tail call i64 @rb_num2long(i64 noundef %i.b) #18
  br label %rb_num2long_inline.exit

rb_num2long_inline.exit:                          ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.d, %bb.d ], [ %i.e, %bb.e ]
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %.0.i, i64 0)
  br label %bb.f

bb.f:                                             ; preds = %rb_num2long_inline.exit, %rb_check_arity.exit
  %.0 = phi i64 [ %spec.store.select, %rb_num2long_inline.exit ], [ 0, %rb_check_arity.exit ] ; 12 uses
  %i.f = icmp eq i64 %2, 0
  %i.g = and i64 %2, 7
  %i.h = icmp ne i64 %i.g, 0
  %i.i = or i1 %i.f, %i.h
  br i1 %i.i, label %.critedge.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, !prof !29

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.f
  %i.j = inttoptr i64 %2 to ptr                   ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !30
  %i.l = and i64 %i.k, 95
  %or.cond.not.i.i = icmp eq i64 %i.l, 76
  br i1 %or.cond.not.i.i, label %bb.g, label %.critedge.i.i, !prof !31

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.m = getelementptr i8, ptr %i.j, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !17   ; 2 uses
  %i.o = and i64 %i.n, -2                         ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = trunc i64 %i.n to i1
  %i.r = getelementptr i8, ptr %i.j, i64 32       ; 2 uses
  br i1 %i.q, label %RTYPEDDATA_GET_DATA.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %RTYPEDDATA_GET_DATA.exit.i.i

RTYPEDDATA_GET_DATA.exit.i.i:                     ; preds = %bb.h, %bb.g
  %i.t = phi ptr [ %i.s, %bb.h ], [ %i.r, %bb.g ] ; 2 uses
  %i.u = icmp eq i64 %i.o, ptrtoint (ptr @time_data_type to i64)
  br i1 %i.u, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !prof !15

.preheader.i.i:                                   ; preds = %RTYPEDDATA_GET_DATA.exit.i.i, %bb.i
  %.016.i.i = phi ptr [ %i.w, %bb.i ], [ %i.p, %RTYPEDDATA_GET_DATA.exit.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader.i.i
  %i.v = getelementptr i8, ptr %.016.i.i, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !32   ; 2 uses
  %i.x = icmp eq ptr %i.w, @time_data_type
  br i1 %i.x, label %rbimpl_check_typeddata.exit.i, label %.preheader.i.i, !llvm.loop !37

.critedge.i.i:                                    ; preds = %.preheader.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.f
  %i.y = tail call ptr @rb_check_typeddata(i64 noundef %2, ptr noundef nonnull @time_data_type) #18
  br label %rbimpl_check_typeddata.exit.i

rbimpl_check_typeddata.exit.i:                    ; preds = %bb.i, %.critedge.i.i, %RTYPEDDATA_GET_DATA.exit.i.i
  %.1.i.i = phi ptr [ %i.y, %.critedge.i.i ], [ %i.t, %RTYPEDDATA_GET_DATA.exit.i.i ], [ %i.t, %bb.i ] ; 3 uses
  %i.z = getelementptr i8, ptr %.1.i.i, i64 40    ; 12 uses
  %i.aa = load i64, ptr %i.z, align 8             ; 3 uses
  %i.ab = and i64 %i.aa, 61572651155456
  %.not.i = icmp eq i64 %i.ab, 26388279066624
  br i1 %.not.i, label %bb.j, label %get_timeval.exit

bb.j:                                             ; preds = %rbimpl_check_typeddata.exit.i
  %i.ac = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.ad = tail call i64 @rb_obj_class(i64 noundef %2) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ac, ptr noundef nonnull @.str.92, i64 noundef %i.ad) #19
  unreachable

get_timeval.exit:                                 ; preds = %rbimpl_check_typeddata.exit.i
  %i.ae = getelementptr i8, ptr %.1.i.i, i64 8
  %i.af = and i64 %i.aa, 70368744177664
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.k, label %time_get_tm.exit

bb.k:                                             ; preds = %get_timeval.exit
  %i.ah = lshr i64 %i.aa, 43
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 7
  switch i32 %i.aj, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = tail call i64 @time_gmtime(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.m:                                             ; preds = %bb.k
  %i.al = tail call fastcc i64 @time_fixoff(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

bb.n:                                             ; preds = %bb.k
  %i.am = tail call fastcc i64 @time_localtime(i64 noundef %2), !inline_history !61 ; 0 uses
  br label %time_get_tm.exit

time_get_tm.exit:                                 ; preds = %bb.n, %bb.m, %bb.l, %get_timeval.exit
  %i.an = add nuw i64 %.0, 22
  %i.ao = icmp ne i64 %.0, 0                      ; 2 uses
  %i.ap = zext i1 %i.ao to i64
  %i.aq = add nuw i64 %i.an, %i.ap                ; 2 uses
  %i.ar = load i64, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %bb.o, label %bb.q

bb.o:                                             ; preds = %time_get_tm.exit
  %i.at = ashr i64 %i.ar, 1                       ; 3 uses
  %.lobit = lshr i64 %i.at, 63
  %i.au = trunc nuw nsw i64 %.lobit to i32        ; 2 uses
  %i.av = or disjoint i32 %i.au, 4                ; 2 uses
  %i.aw = add nsw i64 %i.at, 9999
  %or.cond = icmp ult i64 %i.aw, 19999
  %i.ax = or disjoint i32 %i.au, 20
  %i.ay = select i1 %or.cond, i32 %i.av, i32 %i.ax ; 2 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = add nuw i64 %i.aq, %i.az
  %i.bb = tail call i64 @rb_usascii_str_new(ptr noundef null, i64 noundef %i.ba) #18, !callees !64 ; 2 uses
  %i.bc = inttoptr i64 %i.bb to ptr               ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !30
  %i.be = and i64 %i.bd, 8192
  %.not.i142 = icmp eq i64 %i.be, 0
  %i.bf = getelementptr i8, ptr %i.bc, i64 24     ; 2 uses
  br i1 %.not.i142, label %RSTRING_PTR.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !53
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.o, %bb.p
  %i.bh = phi ptr [ %i.bg, %bb.p ], [ %i.bf, %bb.o ] ; 2 uses
  %i.bi = add nuw nsw i32 %i.ay, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = tail call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %i.bh, i64 noundef %i.bj, ptr noundef nonnull @.str.135, i32 noundef %i.av, i64 noundef %i.at) #18
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr i8, ptr %i.bh, i64 %i.bl
  br label %bb.s

bb.q:                                             ; preds = %time_get_tm.exit
  %i.bn = tail call i64 @rb_int2str(i64 noundef %i.ar, i32 noundef 10) #18 ; 3 uses
  tail call void @rb_str_modify_expand(i64 noundef %i.bn, i64 noundef %i.aq) #18
  %i.bo = inttoptr i64 %i.bn to ptr               ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !30
  %i.bq = and i64 %i.bp, 8192
  %.not.i143 = icmp eq i64 %i.bq, 0
  %i.br = getelementptr i8, ptr %i.bo, i64 24     ; 2 uses
  br i1 %.not.i143, label %RSTRING_END.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !53
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %bb.q, %bb.r
  %i.bt = phi ptr [ %i.bs, %bb.r ], [ %i.br, %bb.q ]
  %i.bu = getelementptr i8, ptr %i.bo, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !56
  %i.bw = getelementptr i8, ptr %i.bt, i64 %i.bv
  br label %bb.s

bb.s:                                             ; preds = %RSTRING_PTR.exit, %RSTRING_END.exit
  %.1 = phi ptr [ %i.bw, %RSTRING_END.exit ], [ %i.bm, %RSTRING_PTR.exit ] ; 17 uses
  %.0126 = phi i64 [ %i.bn, %RSTRING_END.exit ], [ %i.bb, %RSTRING_PTR.exit ] ; 3 uses
  %i.bx = getelementptr i8, ptr %.1, i64 1
  store i8 45, ptr %.1, align 1, !tbaa !53
  %i.by = load i64, ptr %i.z, align 8
  %i.bz = and i64 %i.by, 7168
  %.cmp.a = icmp samesign ugt i64 %i.bz, 4608
  %3 = zext i1 %.cmp.a to i8
  %4 = or disjoint i8 %3, 48
  %i.ca = getelementptr i8, ptr %.1, i64 2
  store i8 %4, ptr %i.bx, align 1, !tbaa !53
  %i.cb = load i64, ptr %i.z, align 8
  %.fr = freeze i64 %i.cb
  %i.cc = trunc i64 %.fr to i32
  %i.cd = lshr i32 %i.cc, 9
  %i.ce = and i32 %i.cd, 15                       ; 3 uses
  %.urem = add nuw nsw i32 %i.ce, 246
  %.cmp159 = icmp samesign ult i32 %i.ce, 10
  %i.cf = select i1 %.cmp159, i32 %i.ce, i32 %.urem
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = or disjoint i8 %i.cg, 48
  %i.ci = getelementptr i8, ptr %.1, i64 3
  store i8 %i.ch, ptr %i.ca, align 1, !tbaa !53
  %i.cj = getelementptr i8, ptr %.1, i64 4
  store i8 45, ptr %i.ci, align 1, !tbaa !53
  %i.ck = load i64, ptr %i.z, align 8
  %i.cl = lshr i64 %i.ck, 13
  %i.cm = trunc i64 %i.cl to i8
  %.lhs.trunc = and i8 %i.cm, 30
  %i.cn = udiv i8 %.lhs.trunc, 10
  %i.co = or disjoint i8 %i.cn, 48
  %i.cp = getelementptr i8, ptr %.1, i64 5
  store i8 %i.co, ptr %i.cj, align 1, !tbaa !53
  %i.cq = load i64, ptr %i.z, align 8
  %i.cr = lshr i64 %i.cq, 13
  %i.cs = trunc i64 %i.cr to i8
  %.lhs.trunc160 = and i8 %i.cs, 31
  %i.ct = urem i8 %.lhs.trunc160, 10
  %i.cu = or disjoint i8 %i.ct, 48
  %i.cv = getelementptr i8, ptr %.1, i64 6
  store i8 %i.cu, ptr %i.cp, align 1, !tbaa !53
  %i.cw = getelementptr i8, ptr %.1, i64 7
  store i8 84, ptr %i.cv, align 1, !tbaa !53
  %i.cx = load i64, ptr %i.z, align 8
  %i.cy = lshr i64 %i.cx, 18
  %i.cz = trunc i64 %i.cy to i8
  %.lhs.trunc162 = and i8 %i.cz, 30
  %i.da = udiv i8 %.lhs.trunc162, 10
  %i.db = or disjoint i8 %i.da, 48
  %i.dc = getelementptr i8, ptr %.1, i64 8
  store i8 %i.db, ptr %i.cw, align 1, !tbaa !53
  %i.dd = load i64, ptr %i.z, align 8
  %i.de = lshr i64 %i.dd, 18
  %i.df = trunc i64 %i.de to i8
  %.lhs.trunc164 = and i8 %i.df, 31
  %i.dg = urem i8 %.lhs.trunc164, 10
  %i.dh = or disjoint i8 %i.dg, 48
  %i.di = getelementptr i8, ptr %.1, i64 9
  store i8 %i.dh, ptr %i.dc, align 1, !tbaa !53
  %i.dj = getelementptr i8, ptr %.1, i64 10
  store i8 58, ptr %i.di, align 1, !tbaa !53
  %i.dk = load i64, ptr %i.z, align 8
  %i.dl = lshr i64 %i.dk, 23
  %i.dm = trunc i64 %i.dl to i8
  %.lhs.trunc166 = and i8 %i.dm, 62
  %i.dn = udiv i8 %.lhs.trunc166, 10
  %i.do = or disjoint i8 %i.dn, 48
  %i.dp = getelementptr i8, ptr %.1, i64 11
  store i8 %i.do, ptr %i.dj, align 1, !tbaa !53
  %i.dq = load i64, ptr %i.z, align 8
  %i.dr = lshr i64 %i.dq, 23
  %i.ds = trunc i64 %i.dr to i8
  %.lhs.trunc168 = and i8 %i.ds, 63
  %i.dt = urem i8 %.lhs.trunc168, 10
  %i.du = or disjoint i8 %i.dt, 48
  %i.dv = getelementptr i8, ptr %.1, i64 12
  store i8 %i.du, ptr %i.dp, align 1, !tbaa !53
  %i.dw = getelementptr i8, ptr %.1, i64 13
  store i8 58, ptr %i.dv, align 1, !tbaa !53
  %i.dx = load i64, ptr %i.z, align 8
  %i.dy = lshr i64 %i.dx, 32
  %i.dz = trunc i64 %i.dy to i8
  %i.ea = and i8 %i.dz, 62
  %i.eb = udiv i8 %i.ea, 10
  %i.ec = or disjoint i8 %i.eb, 48
  %i.ed = getelementptr i8, ptr %.1, i64 14
  store i8 %i.ec, ptr %i.dw, align 1, !tbaa !53
  %i.ee = load i64, ptr %i.z, align 8
  %i.ef = lshr i64 %i.ee, 32
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = and i8 %i.eg, 63
  %i.ei = urem i8 %i.eh, 10
  %i.ej = or disjoint i8 %i.ei, 48
  %i.ek = getelementptr i8, ptr %.1, i64 15       ; 2 uses
  store i8 %i.ej, ptr %i.ed, align 1, !tbaa !53
  br i1 %i.ao, label %bb.t, label %ruby_nonempty_memcpy.exit

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr i8, ptr %.1.i.i, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !46 ; 8 uses
  %i.en = getelementptr i8, ptr %.1, i64 16       ; 4 uses
  store i8 46, ptr %i.ek, align 1, !tbaa !53
  %i.eo = icmp samesign ult i64 %.0, 10
  br i1 %i.eo, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ep = trunc nuw nsw i64 %.0 to i32
  %i.eq = sub nuw nsw i32 9, %i.ep
  br label %bb.ac

bb.v:                                             ; preds = %bb.t
  %i.er = add nsw i64 %.0, -9
  %i.es = tail call i64 @rb_int_positive_pow(i64 noundef 10, i64 noundef %i.er) #18 ; 4 uses
  %i.et = and i64 %i.em, 1
  %i.eu = and i64 %i.et, %i.es
  %or.cond.not.i = icmp eq i64 %i.eu, 0
  br i1 %or.cond.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = ashr i64 %i.em, 1
  %i.ew = ashr i64 %i.es, 1
  %i.ex = sext i64 %i.ev to i128
  %i.ey = sext i64 %i.ew to i128
  %i.ez = mul nsw i128 %i.ey, %i.ex               ; 3 uses
  %i.fa = add nsw i128 %i.ez, 4611686018427387904
  %or.cond.i.i = icmp ult i128 %i.fa, 9223372036854775808
  br i1 %or.cond.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fb = trunc nsw i128 %i.ez to i64
  %i.fc = shl nsw i64 %i.fb, 1
  %i.fd = or disjoint i64 %i.fc, 1
  br label %mulv.exit

bb.y:                                             ; preds = %bb.w
  %i.fe = tail call i64 @rb_int128t2big(i128 noundef %i.ez) #18
  br label %mulv.exit

bb.z:                                             ; preds = %bb.v
  %i.ff = icmp eq i64 %i.em, 0
  %i.fg = and i64 %i.em, 7
  %i.fh = icmp ne i64 %i.fg, 0
  %i.fi = or i1 %i.ff, %i.fh
  br i1 %i.fi, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.z
  %i.fj = inttoptr i64 %i.em to ptr
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !30
  %i.fl = and i64 %i.fk, 31
  %i.fm = icmp eq i64 %i.fl, 10
  br i1 %i.fm, label %bb.aa, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i

bb.aa:                                            ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.fn = tail call i64 @rb_big_mul(i64 noundef %i.em, i64 noundef %i.es) #18
  br label %mulv.exit

rbimpl_RB_TYPE_P_fastpath.exit.thread.i:          ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.z
  %i.fo = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.em, i64 noundef 42, i32 noundef 1, i64 noundef %i.es) #18
  br label %mulv.exit

mulv.exit:                                        ; preds = %bb.x, %bb.y, %bb.aa, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i
  %.0.i144 = phi i64 [ %i.fo, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i ], [ %i.fn, %bb.aa ], [ %i.fd, %bb.x ], [ %i.fe, %bb.y ] ; 7 uses
  %i.fp = trunc i64 %.0.i144 to i1
  br i1 %i.fp, label %rb_integer_type_p.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %mulv.exit
  %i.fq = icmp eq i64 %.0.i144, 0
  %i.fr = and i64 %.0.i144, 6
  %i.fs = icmp ne i64 %i.fr, 0
  %i.ft = or i1 %i.fq, %i.fs
  br i1 %i.ft, label %rb_integer_type_p.exit.thread157, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.ab
  %i.fu = inttoptr i64 %.0.i144 to ptr
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !30
  %i.fw = and i64 %i.fv, 31
  %i.fx = icmp eq i64 %i.fw, 10
  br i1 %i.fx, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread157

rb_integer_type_p.exit.thread157:                 ; preds = %bb.ab, %rb_integer_type_p.exit
  %i.fy = tail call i64 @rb_Integer(i64 noundef %.0.i144) #18
  br label %rb_integer_type_p.exit.thread

rb_integer_type_p.exit.thread:                    ; preds = %mulv.exit, %rb_integer_type_p.exit.thread157, %rb_integer_type_p.exit
  %.0135 = phi i64 [ %.0.i144, %rb_integer_type_p.exit ], [ %i.fy, %rb_integer_type_p.exit.thread157 ], [ %.0.i144, %mulv.exit ] ; 2 uses
  %i.fz = trunc i64 %.0135 to i32
  %i.ga = or i32 %i.fz, -2
  %.neg = add nsw i32 %i.ga, 1
  br label %bb.ac

bb.ac:                                            ; preds = %rb_integer_type_p.exit.thread, %bb.u
  %.1136 = phi i64 [ %i.em, %bb.u ], [ %.0135, %rb_integer_type_p.exit.thread ] ; 4 uses
  %.1133 = phi i32 [ %i.eq, %bb.u ], [ %.neg, %rb_integer_type_p.exit.thread ] ; 3 uses
  %i.gb = icmp sgt i32 %.1133, -1
  %i.gc = icmp samesign ult i64 %.0, 2147483647
  %or.cond5 = select i1 %i.gb, i1 %i.gc, i1 false
  br i1 %or.cond5, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.gd = trunc i64 %.1136 to i1
  br i1 %i.gd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ge = ashr i64 %.1136, 1
  br label %rb_num2long_inline.exit147

bb.af:                                            ; preds = %bb.ad
  %i.gf = tail call i64 @rb_num2long(i64 noundef %.1136) #18
  br label %rb_num2long_inline.exit147

rb_num2long_inline.exit147:                       ; preds = %bb.ae, %bb.af
end_hunk_0
