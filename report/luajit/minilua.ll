Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@luaC_separateudata:bb.a
  store ptr %i.g, ptr %i.bd, align 8, !tbaa !81
  store ptr %i.g, ptr %i.f, align 8, !tbaa !190
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %.critedge, %bb.j, %bb.i
  %.130 = phi i64 [ %i.ax, %bb.j ], [ %.02938, %.critedge ], [ %i.ax, %bb.i ], [ %.02938, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.039, %bb.j ], [ %i.g, %.critedge ], [ %.039, %bb.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.be = load ptr, ptr %.1, align 8, !tbaa !148  ; 2 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !425

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.029.lcssa = phi i64 [ 0, %bb.a ], [ %.130, %bb.k ]
  ret i64 %.029.lcssa
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define internal fastcc void @lua_pushcclosure(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 4) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !89   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !96   ; 2 uses
  %.not = icmp ult i64 %i.d, %i.f
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.h = load i32, ptr %i.g, align 4, !tbaa !91
  %i.i = mul i32 %i.h, 10                         ; 2 uses
  %i.j = zext i32 %i.i to i64
  %i.k = icmp eq i32 %i.i, 0
  %spec.store.select.i = select i1 %i.k, i64 9223372036854775806, i64 %i.j
  %i.l = sub nuw i64 %i.d, %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !92
  %i.o = add i64 %i.l, %i.n
  store i64 %i.o, ptr %i.m, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 33
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ %spec.store.select.i, %bb.b ], [ %i.r, %bb.c ]
  %i.q = tail call fastcc i64 @singlestep(ptr noundef nonnull %0), !inline_history !0
  %i.r = sub nsw i64 %.0.i, %i.q                  ; 2 uses
  %i.s = load i8, ptr %i.p, align 1, !tbaa !85
  %i.t = icmp ne i8 %i.s, 0                       ; 2 uses
  %i.u = icmp sgt i64 %i.r, 0
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.v = load i64, ptr %i.m, align 8, !tbaa !92   ; 2 uses
  %i.w = icmp ult i64 %i.v, 1024
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i64, ptr %i.c, align 8, !tbaa !89
  %i.y = add i64 %i.x, 1024
  br label %luaC_step.exit

bb.g:                                             ; preds = %bb.e
  %i.z = add i64 %i.v, -1024
  store i64 %i.z, ptr %i.m, align 8, !tbaa !92
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !89
  br label %luaC_step.exit

bb.h:                                             ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !98
  %i.ad = udiv i64 %i.ac, 100
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !90
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul i64 %i.ad, %i.ag
  br label %luaC_step.exit

luaC_step.exit:                                   ; preds = %bb.f, %bb.g, %bb.h
  %.sink.i = phi i64 [ %i.y, %bb.f ], [ %i.aa, %bb.g ], [ %i.ah, %bb.h ]
  store i64 %.sink.i, ptr %i.e, align 8, !tbaa !96
  br label %bb.i

bb.i:                                             ; preds = %luaC_step.exit, %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !111 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !75
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %getcurrenv.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !117
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !81
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  br label %getcurrenv.exit

getcurrenv.exit:                                  ; preds = %bb.j, %bb.k
  %.0.in.i = phi ptr [ %i.an, %bb.j ], [ %i.ar, %bb.k ]
  %.0.i24 = load ptr, ptr %.0.in.i, align 8, !tbaa !81
  %i.as = shl nuw nsw i32 %2, 4
  %i.at = add nuw nsw i32 %i.as, 40
  %i.au = zext nneg i32 %i.at to i64              ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !68  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !78
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !79
  %i.ba = tail call ptr %i.ax(ptr noundef %i.az, ptr noundef null, i64 noundef 0, i64 noundef %i.au) #33, !inline_history !426 ; 11 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.l, label %luaF_newCclosure.exit

bb.l:                                             ; preds = %getcurrenv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !71 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 208
  store volatile i32 4, ptr %i.be, align 8, !tbaa !136
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  tail call void @longjmp(ptr noundef nonnull %i.bf, i32 noundef 1) #38, !inline_history !7
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 4, ptr %i.bg, align 2, !tbaa !74
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !84
  %.not10.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not10.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @resetstack(ptr noundef nonnull %0, i32 noundef 4), !inline_history !7
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 152
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !84
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %0) #33, !inline_history !427 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void @exit(i32 noundef 1) #39, !inline_history !7
  unreachable

luaF_newCclosure.exit:                            ; preds = %getcurrenv.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 120 ; 2 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !89
  %i.bq = add i64 %i.bp, %i.au
  store i64 %i.bq, ptr %i.bo, align 8, !tbaa !89
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !68 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i, i64 40 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !86
  store ptr %i.bs, ptr %i.ba, align 8, !tbaa !81
  store ptr %i.ba, ptr %i.br, align 8, !tbaa !86
  %i.bt = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.bu = load i8, ptr %i.bt, align 8, !tbaa !67
  %i.bv = and i8 %i.bu, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ba, i64 9
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !81
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i8 6, ptr %i.bx, align 8, !tbaa !81
  %i.by = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  store i8 1, ptr %i.by, align 2, !tbaa !81
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  store ptr %.0.i24, ptr %i.bz, align 8, !tbaa !81
  %i.ca = trunc nuw nsw i32 %2 to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 11
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !81
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  store ptr %1, ptr %i.cc, align 8, !tbaa !81
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !95
  %i.cf = zext nneg i32 %2 to i64                 ; 4 uses
  %i.cg = sub nsw i64 0, %i.cf
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.ce, i64 %i.cg ; 2 uses
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !95
  %.not2325 = icmp eq i32 %2, 0
  br i1 %.not2325, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %luaF_newCclosure.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ba, i64 40 ; 3 uses
  %indvars.iv.next = add nsw i64 %i.cf, -1        ; 3 uses
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !95
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.cj, i64 %indvars.iv.next ; 2 uses
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %indvars.iv.next ; 2 uses
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !81
  store i64 %i.cm, ptr %i.cl, align 8, !tbaa !81
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !99
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !99
  %i.cq = icmp eq i64 %indvars.iv.next, 0
  br i1 %i.cq, label %._crit_edge.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph
  %indvars.iv.next.1 = add nsw i64 %i.cf, -2      ; 3 uses
  %i.cr = load ptr, ptr %i.cd, align 8, !tbaa !95
  %i.cs = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %indvars.iv.next.1 ; 2 uses
  %i.ct = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %indvars.iv.next.1 ; 2 uses
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !81
  store i64 %i.cu, ptr %i.ct, align 8, !tbaa !81
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !99
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 %i.cw, ptr %i.cx, align 8, !tbaa !99
  %i.cy = icmp eq i64 %indvars.iv.next.1, 0
  br i1 %i.cy, label %._crit_edge.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %indvars.iv.next.2 = add nsw i64 %i.cf, -3      ; 2 uses
  %i.cz = load ptr, ptr %i.cd, align 8, !tbaa !95
  %i.da = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %indvars.iv.next.2 ; 2 uses
  %i.db = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %indvars.iv.next.2 ; 2 uses
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !81
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !81
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !99
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  store i32 %i.de, ptr %i.df, align 8, !tbaa !99
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.r, %bb.q, %.lr.ph
  %.pre = load ptr, ptr %i.cd, align 8, !tbaa !95
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %luaF_newCclosure.exit
  %i.dg = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ch, %luaF_newCclosure.exit ] ; 2 uses
  store ptr %i.ba, ptr %i.dg, align 8, !tbaa !81
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 6, ptr %i.dh, align 8, !tbaa !99
  %i.di = load ptr, ptr %i.cd, align 8, !tbaa !95
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store ptr %i.dj, ptr %i.cd, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @luaopen_base(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %2 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %3 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %5 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %6 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 34 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !95   ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.d, ptr %i.c, align 8, !tbaa !81
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load i32, ptr %i.e, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !99
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.i, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.j = tail call fastcc ptr @luaS_newlstr(ptr noundef %0, ptr noundef nonnull @.str.96, i64 noundef 2)
  store ptr %i.j, ptr %6, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 4, ptr %i.k, align 8, !tbaa !99
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -16
  call fastcc void @luaV_settable(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %6, ptr noundef nonnull %i.m)
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -16
  store ptr %i.o, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  tail call fastcc void @luaL_register(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef nonnull @base_funcs)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !89   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 112 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96   ; 2 uses
  %.not.i.i = icmp ult i64 %i.s, %i.u
  br i1 %.not.i.i, label %lua_pushlstring.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 148
  %i.w = load i32, ptr %i.v, align 4, !tbaa !91
  %i.x = mul i32 %i.w, 10                         ; 2 uses
  %i.y = zext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %spec.store.select.i.i.i = select i1 %i.z, i64 9223372036854775806, i64 %i.y
  %i.aa = sub nuw i64 %i.s, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 136 ; 4 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !92
  %i.ad = add i64 %i.aa, %i.ac
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !92
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %spec.store.select.i.i.i, %bb.b ], [ %i.ag, %bb.c ]
  %i.af = tail call fastcc i64 @singlestep(ptr noundef nonnull %0), !inline_history !0
  %i.ag = sub nsw i64 %.0.i.i.i, %i.af            ; 2 uses
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !85
  %i.ai = icmp ne i8 %i.ah, 0                     ; 2 uses
  %i.aj = icmp sgt i64 %i.ag, 0
  %or.cond.i.i.i = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.c, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.c
  br i1 %i.ai, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !92 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 1024
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.r, align 8, !tbaa !89
  %i.an = add i64 %i.am, 1024
  br label %luaC_step.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ao = add i64 %i.ak, -1024
  store i64 %i.ao, ptr %i.ab, align 8, !tbaa !92
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !89
  br label %luaC_step.exit.i.i

bb.h:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 128
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !98
  %i.as = udiv i64 %i.ar, 100
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.au = load i32, ptr %i.at, align 8, !tbaa !90
  %i.av = sext i32 %i.au to i64
  %i.aw = mul i64 %i.as, %i.av
  br label %luaC_step.exit.i.i

luaC_step.exit.i.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %.sink.i.i.i = phi i64 [ %i.an, %bb.f ], [ %i.ap, %bb.g ], [ %i.aw, %bb.h ]
  store i64 %.sink.i.i.i, ptr %i.t, align 8, !tbaa !96
  br label %lua_pushlstring.exit.i

lua_pushlstring.exit.i:                           ; preds = %luaC_step.exit.i.i, %bb.a
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.ay = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.97, i64 noundef 7)
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !81
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 4, ptr %i.az, align 8, !tbaa !99
  %i.ba = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.bc = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.98, i64 noundef 8)
  store ptr %i.bc, ptr %5, align 8, !tbaa !81
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 4, ptr %i.bd, align 8, !tbaa !99
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -16
  call fastcc void @luaV_settable(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %5, ptr noundef nonnull %i.bf)
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  tail call fastcc void @lua_pushcclosure(ptr noundef nonnull %0, ptr noundef nonnull @ipairsaux, i32 noundef 0)
  tail call fastcc void @lua_pushcclosure(ptr noundef nonnull %0, ptr noundef nonnull @luaB_ipairs, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -32
  %i.bk = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull readonly @.str.99, i64 noundef 6)
  store ptr %i.bk, ptr %4, align 8, !tbaa !81
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 4, ptr %i.bl, align 8, !tbaa !99
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -16
  call fastcc void @luaV_settable(ptr noundef nonnull %0, ptr noundef nonnull %i.bj, ptr noundef nonnull %4, ptr noundef nonnull %i.bn)
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 -16
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  tail call fastcc void @lua_pushcclosure(ptr noundef nonnull %0, ptr noundef nonnull @luaB_next, i32 noundef 0)
  tail call fastcc void @lua_pushcclosure(ptr noundef nonnull %0, ptr noundef nonnull @luaB_pairs, i32 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.bq = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -32
  %i.bs = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull readonly @.str.100, i64 noundef 5)
  store ptr %i.bs, ptr %3, align 8, !tbaa !81
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 4, ptr %i.bt, align 8, !tbaa !99
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !95
end_hunk_0
