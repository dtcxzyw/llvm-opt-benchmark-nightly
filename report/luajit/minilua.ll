Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@main:bb.a
  tail call fastcc void @lua_pushcclosure(ptr noundef %.053.i5.i, ptr noundef nonnull @luaopen_string, i32 noundef 0)
  tail call fastcc void @lua_pushstring(ptr noundef %.053.i5.i, ptr noundef nonnull @.str.26)
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !95
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  tail call fastcc void @luaD_call(ptr noundef %.053.i5.i, ptr noundef nonnull %i.bb, i32 noundef 0)
  tail call fastcc void @luaL_register(ptr noundef %.053.i5.i, ptr noundef nonnull @.str, ptr noundef nonnull @bitlib)
  %i.bc = icmp slt i32 %0, 2
  br i1 %i.bc, label %bb.u, label %bb.d

bb.d:                                             ; preds = %luaL_newstate.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %.053.i5.i, i64 32 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !68 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 120 ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !89 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 112 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !96 ; 2 uses
  %.not.i = icmp ult i64 %i.bg, %i.bi
  br i1 %.not.i, label %lua_createtable.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 148
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !91
  %i.bl = mul i32 %i.bk, 10                       ; 2 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp eq i32 %i.bl, 0
  %spec.store.select.i.i = select i1 %i.bn, i64 9223372036854775806, i64 %i.bm
  %i.bo = sub nuw i64 %i.bg, %i.bi
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 136 ; 4 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !92
  %i.br = add i64 %i.bo, %i.bq
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !92
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 33
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %bb.e ], [ %i.bu, %bb.f ]
  %i.bt = tail call fastcc i64 @singlestep(ptr noundef nonnull %.053.i5.i), !inline_history !0
  %i.bu = sub nsw i64 %.0.i.i, %i.bt              ; 2 uses
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !85
  %i.bw = icmp ne i8 %i.bv, 0                     ; 2 uses
  %i.bx = icmp sgt i64 %i.bu, 0
  %or.cond.i.i = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %bb.g, !llvm.loop !1

bb.g:                                             ; preds = %bb.f
  br i1 %i.bw, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.by = load i64, ptr %i.bp, align 8, !tbaa !92 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 1024
  br i1 %i.bz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ca = load i64, ptr %i.bf, align 8, !tbaa !89
  %i.cb = add i64 %i.ca, 1024
  br label %luaC_step.exit.i

bb.j:                                             ; preds = %bb.h
  %i.cc = add i64 %i.by, -1024
  store i64 %i.cc, ptr %i.bp, align 8, !tbaa !92
  %i.cd = load i64, ptr %i.bf, align 8, !tbaa !89
  br label %luaC_step.exit.i

bb.k:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !98
  %i.cg = udiv i64 %i.cf, 100
  %i.ch = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !90
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul i64 %i.cg, %i.cj
  br label %luaC_step.exit.i

luaC_step.exit.i:                                 ; preds = %bb.k, %bb.j, %bb.i
  %.sink.i.i = phi i64 [ %i.cb, %bb.i ], [ %i.cd, %bb.j ], [ %i.ck, %bb.k ]
  store i64 %.sink.i.i, ptr %i.bh, align 8, !tbaa !96
  br label %lua_createtable.exit

lua_createtable.exit:                             ; preds = %bb.d, %luaC_step.exit.i
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 2 uses
  %i.cm = tail call fastcc ptr @luaH_new(ptr noundef nonnull %.053.i5.i, i32 noundef 0, i32 noundef 1)
  store ptr %i.cm, ptr %i.cl, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 5, ptr %i.cn, align 8, !tbaa !99
  %i.co = load ptr, ptr %i.ar, align 8, !tbaa !95
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store ptr %i.cp, ptr %i.ar, align 8, !tbaa !95
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !100
  tail call fastcc void @lua_pushstring(ptr noundef nonnull %.053.i5.i, ptr noundef %i.cr)
  %i.cs = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -32 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 -16
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !81 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !103
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %lua_createtable.exit
  %.0.i.i.i = phi ptr [ %i.cx, %lua_createtable.exit ], [ %i.df, %bb.n ] ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !81
  %i.da = icmp eq i32 %i.cz, 3
  br i1 %i.da, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.dc = load double, ptr %i.db, align 8, !tbaa !81
  %i.dd = fcmp oeq double %i.dc, 0.000000e+00
  br i1 %i.dd, label %luaH_getnum.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !81 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i, label %luaH_getnum.exit.thread.i.i, label %bb.l, !llvm.loop !2

luaH_getnum.exit.i.i:                             ; preds = %bb.m
  %.not.i16.i = icmp eq ptr %.0.i.i.i, @luaO_nilobject_
  br i1 %.not.i16.i, label %luaH_getnum.exit.thread.i.i, label %luaH_setnum.exit.i

luaH_getnum.exit.thread.i.i:                      ; preds = %bb.n, %luaH_getnum.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store double 0.000000e+00, ptr %4, align 8, !tbaa !81
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 3, ptr %i.dg, align 8, !tbaa !99
  %i.dh = call fastcc ptr @newkey(ptr noundef nonnull %.053.i5.i, ptr noundef %i.cv, ptr noundef nonnull %4), !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %luaH_setnum.exit.i

luaH_setnum.exit.i:                               ; preds = %luaH_getnum.exit.thread.i.i, %luaH_getnum.exit.i.i
  %.0.i.i23 = phi ptr [ %i.dh, %luaH_getnum.exit.thread.i.i ], [ %.0.i.i.i, %luaH_getnum.exit.i.i ] ; 2 uses
  %i.di = load i64, ptr %i.cu, align 8, !tbaa !81
  store i64 %i.di, ptr %.0.i.i23, align 8, !tbaa !81
  %i.dj = getelementptr inbounds i8, ptr %i.cs, i64 -8
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !99
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i23, i64 8
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !99
  %i.dm = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 5 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !99
  %i.dp = icmp sgt i32 %i.do, 3
  br i1 %i.dp, label %bb.o, label %lua_rawseti.exit

bb.o:                                             ; preds = %luaH_setnum.exit.i
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 -16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !81
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 9
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !81
  %i.du = and i8 %i.dt, 3
  %.not.i24 = icmp eq i8 %i.du, 0
  br i1 %.not.i24, label %lua_rawseti.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dv = load ptr, ptr %i.ct, align 8, !tbaa !81 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 9 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !81  ; 2 uses
  %i.dy = and i8 %i.dx, 4
  %.not15.i = icmp eq i8 %i.dy, 0
  br i1 %.not15.i, label %lua_rawseti.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i25 = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.dz = and i8 %i.dx, -5
  store i8 %i.dz, ptr %i.dw, align 1, !tbaa !81
  %i.ea = getelementptr inbounds nuw i8, ptr %.val.i25, i64 64 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !104
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dv, i64 48
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !105
  store ptr %i.dv, ptr %i.ea, align 8, !tbaa !104
  %.pre.i = load ptr, ptr %i.ar, align 8, !tbaa !95
  br label %lua_rawseti.exit

lua_rawseti.exit:                                 ; preds = %luaH_setnum.exit.i, %bb.o, %bb.p, %bb.q
  %i.ed = phi ptr [ %.pre.i, %bb.q ], [ %i.dm, %bb.p ], [ %i.dm, %bb.o ], [ %i.dm, %luaH_setnum.exit.i ]
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 -16
  store ptr %i.ee, ptr %i.ar, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.ef = getelementptr inbounds nuw i8, ptr %.053.i5.i, i64 120
  %i.eg = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %.053.i5.i, ptr noundef nonnull @.str.1, i64 noundef 3)
  store ptr %i.eg, ptr %3, align 8, !tbaa !81
  %i.eh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %i.eh, align 8, !tbaa !99
  %i.ei = load ptr, ptr %i.ar, align 8, !tbaa !95
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 -16
  call fastcc void @luaV_settable(ptr noundef nonnull %.053.i5.i, ptr noundef nonnull %i.ef, ptr noundef nonnull %3, ptr noundef nonnull %i.ej)
  %i.ek = load ptr, ptr %i.ar, align 8, !tbaa !95
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 -16
  store ptr %i.el, ptr %i.ar, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.em = load ptr, ptr %i.cq, align 8, !tbaa !100
  %i.en = tail call fastcc i32 @luaL_loadfile(ptr noundef nonnull %.053.i5.i, ptr noundef %i.em)
  %.not = icmp eq i32 %i.en, 0
  br i1 %.not, label %.preheader, label %bb.r

.preheader:                                       ; preds = %lua_rawseti.exit
  %.not29 = icmp eq i32 %0, 2
  br i1 %.not29, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 3)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !100
  tail call fastcc void @lua_pushstring(ptr noundef nonnull %.053.i5.i, ptr noundef %i.ep)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !287

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.eq = load ptr, ptr %i.ar, align 8, !tbaa !95
  %narrow.i = sub nsw i32 1, %0
  %i.er = sext i32 %narrow.i to i64
  %i.es = getelementptr inbounds [16 x i8], ptr %i.eq, i64 %i.er ; 2 uses
  store ptr %i.es, ptr %2, align 8, !tbaa !107
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.et, align 8, !tbaa !108
  %i.eu = getelementptr inbounds nuw i8, ptr %.053.i5.i, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !69
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = call fastcc i32 @luaD_pcall(ptr noundef nonnull %.053.i5.i, ptr noundef nonnull @f_call, ptr noundef %2, i64 noundef %i.ey, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %.not22 = icmp eq i32 %i.ez, 0
  br i1 %.not22, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge, %lua_rawseti.exit
  %i.fa = load ptr, ptr @stderr, align 8, !tbaa !110
  %i.fb = call fastcc ptr @lua_tolstring(ptr noundef nonnull %.053.i5.i, i32 noundef -1, ptr noundef null)
  %i.fc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.2, ptr noundef %i.fb) #34 ; 0 uses
  br label %bb.u

bb.s:                                             ; preds = %._crit_edge
  %.val = load ptr, ptr %i.bd, align 8, !tbaa !68
  %i.fd = getelementptr i8, ptr %.val, i64 176
  %.val.val = load ptr, ptr %i.fd, align 8, !tbaa !80 ; 12 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val.val, i64 64
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !69
  call fastcc void @luaF_close(ptr noundef %.val.val, ptr noundef %i.ff)
  %i.fg = call fastcc i64 @luaC_separateudata(ptr noundef %.val.val, i32 noundef 1) ; 0 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.val.val, i64 176
  store i64 0, ptr %i.fh, align 8, !tbaa !76
  %i.fi = getelementptr inbounds nuw i8, ptr %.val.val, i64 80
  %i.fj = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.fk = getelementptr inbounds nuw i8, ptr %.val.val, i64 16
  %i.fl = getelementptr inbounds nuw i8, ptr %.val.val, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %.val.val, i64 98
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.val, i64 96
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %i.fo = load ptr, ptr %i.fi, align 8, !tbaa !75 ; 2 uses
  store ptr %i.fo, ptr %i.fj, align 8, !tbaa !111
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !113 ; 2 uses
  store ptr %i.fp, ptr %i.fk, align 8, !tbaa !95
  store ptr %i.fp, ptr %i.fl, align 8, !tbaa !114
  store i16 0, ptr %i.fm, align 2, !tbaa !115
  store i16 0, ptr %i.fn, align 8, !tbaa !116
  %i.fq = call fastcc i32 @luaD_rawrunprotected(ptr noundef nonnull %.val.val, ptr noundef nonnull @callallgcTM, ptr noundef null)
  %.not.i26 = icmp eq i32 %i.fq, 0
  br i1 %.not.i26, label %lua_close.exit, label %bb.t, !llvm.loop !288

lua_close.exit:                                   ; preds = %bb.t
  call fastcc void @close_state(ptr noundef nonnull %.val.val)
  br label %bb.u

bb.u:                                             ; preds = %luaL_newstate.exit, %lua_close.exit, %bb.r
  %.020 = phi i32 [ 0, %lua_close.exit ], [ 1, %bb.r ], [ 8, %luaL_newstate.exit ]
  ret i32 %.020
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @luaL_register(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %5 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !298
  %.not4.i.i = icmp eq ptr %i.a, null
  br i1 %.not4.i.i, label %libsize.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.06.i.i = phi i32 [ %i.b, %.lr.ph.i.i ], [ 0, %bb.b ]
  %.035.i.i = phi ptr [ %i.c, %.lr.ph.i.i ], [ %2, %bb.b ]
  %i.b = add nuw nsw i32 %.06.i.i, 1              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.035.i.i, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !298
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %libsize.exit.i, label %.lr.ph.i.i, !llvm.loop !295

libsize.exit.i:                                   ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %i.b, %.lr.ph.i.i ]
  %i.e = tail call fastcc ptr @luaL_findtable(ptr noundef %0, i32 noundef -10000, ptr noundef nonnull @.str.257, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = getelementptr inbounds i8, ptr %i.g, i64 -16
  %i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #35
  %i.j = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.i)
  store ptr %i.j, ptr %5, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 4, ptr %i.k, align 8, !tbaa !99
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !95
  call fastcc void @luaV_gettable(ptr noundef nonnull %0, ptr noundef nonnull %i.h, ptr noundef nonnull %5, ptr noundef %i.l)
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !95   ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.f, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.o = icmp eq ptr %i.m, @luaO_nilobject_
  br i1 %i.o, label %lua_type.exit.thread.i, label %lua_type.exit.i

lua_type.exit.i:                                  ; preds = %libsize.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !99
  %i.r = icmp eq i32 %i.q, 5
  br i1 %i.r, label %bb.e, label %lua_type.exit.thread.i

lua_type.exit.thread.i:                           ; preds = %lua_type.exit.i, %libsize.exit.i
  store ptr %i.m, ptr %i.f, align 8, !tbaa !95
  %i.s = tail call fastcc ptr @luaL_findtable(ptr noundef nonnull %0, i32 noundef -10002, ptr noundef nonnull %1, i32 noundef %.0.lcssa.i.i)
  %.not35.i = icmp eq ptr %i.s, null
  br i1 %.not35.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %lua_type.exit.thread.i
  tail call void (ptr, ptr, ...) @luaL_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.258, ptr noundef nonnull %1)
  unreachable

bb.d:                                             ; preds = %lua_type.exit.thread.i
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !95   ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !81
  store i64 %i.v, ptr %i.t, align 8, !tbaa !81
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 -8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !99
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i32 %i.x, ptr %i.y, align 8, !tbaa !99
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !95   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -32
  %i.ac = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #35
  %i.ad = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull readonly %1, i64 noundef %i.ac)
  store ptr %i.ad, ptr %4, align 8, !tbaa !81
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 4, ptr %i.ae, align 8, !tbaa !99
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 -16
  call fastcc void @luaV_settable(ptr noundef nonnull %0, ptr noundef nonnull %i.ab, ptr noundef nonnull %4, ptr noundef nonnull %i.ag)
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -16 ; 2 uses
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %lua_type.exit.i
  %i.aj = phi ptr [ %i.ai, %bb.d ], [ %i.n, %lua_type.exit.i ] ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -32
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 -16
  br label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %.lr.ph.i37.i, %bb.e
  %i.am = phi ptr [ %i.ar, %.lr.ph.i37.i ], [ %i.al, %bb.e ] ; 3 uses
  %.013.i.i = phi ptr [ %i.am, %.lr.ph.i37.i ], [ %i.ak, %bb.e ] ; 3 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !81
  store i64 %i.an, ptr %.013.i.i, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !99
  %i.aq = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 8
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !99
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !95  ; 5 uses
  %i.at = icmp ult ptr %i.ar, %i.as
  br i1 %i.at, label %.lr.ph.i37.i, label %lua_remove.exit.i, !llvm.loop !4

lua_remove.exit.i:                                ; preds = %.lr.ph.i37.i
  %.ptr39.i = getelementptr inbounds i8, ptr %i.as, i64 -16 ; 2 uses
  store ptr %.ptr39.i, ptr %i.f, align 8, !tbaa !95
  %i.au = getelementptr i8, ptr %i.as, i64 -32    ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !81
  store i64 %i.av, ptr %.ptr39.i, align 8, !tbaa !81
  %i.aw = getelementptr inbounds i8, ptr %i.as, i64 -24 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !99
  %i.ay = getelementptr inbounds i8, ptr %i.as, i64 -8
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !99
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !95 ; 2 uses
  %i.az = load i64, ptr %.pre.i.i, align 8, !tbaa !81
  store i64 %i.az, ptr %i.au, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 8
end_hunk_0
