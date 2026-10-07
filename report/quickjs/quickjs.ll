Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 89
loop-unroll.NumRuntimeUnrolled: 87
loop-unroll.NumUnrolled: 180
begin_hunk_0_@js_date_constructor:bb.a
  br i1 %i.fr, label %bb.bc, label %.thread

bb.bc:                                            ; preds = %bb.bb
  %i.fs = inttoptr i64 %i.fl to ptr
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -4 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !191 ; 2 uses
  %i.fv = add nsw i32 %i.fu, -1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !191
  %i.fw = icmp slt i32 %i.fu, 2
  br i1 %i.fw, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fp, i64 %i.fl, i64 %i.fn), !inline_history !699
  br label %.thread

bb.be:                                            ; preds = %bb.ba, %bb.az
  %i.fx = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.241), !inline_history !529 ; 0 uses
  br i1 %i.c, label %bb.bf, label %JS_SetObjectData.exit

.thread:                                          ; preds = %bb.bb, %bb.bc, %bb.bd
  store double %.4, ptr %i.fk, align 8, !tbaa !218
  store i64 8, ptr %i.fm, align 8, !tbaa !240
  br i1 %i.c, label %.thread150, label %JS_SetObjectData.exit

.thread150:                                       ; preds = %.thread
  %i.fy = tail call { i64, i64 } @get_date_string(ptr noundef nonnull %0, i64 %i.ff, i64 %i.fg, i32 poison, ptr poison, i32 noundef 19) ; 2 uses
  %i.fz = extractvalue { i64, i64 } %i.fy, 0
  %i.ga = extractvalue { i64, i64 } %i.fy, 1
  br label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.gb = tail call { i64, i64 } @get_date_string(ptr noundef nonnull %0, i64 %i.ff, i64 %i.fg, i32 poison, ptr poison, i32 noundef 19) ; 2 uses
  %i.gc = extractvalue { i64, i64 } %i.gb, 0      ; 2 uses
  %i.gd = extractvalue { i64, i64 } %i.gb, 1      ; 2 uses
  %i.ge = icmp ugt i32 %trunc, -10
  br i1 %i.ge, label %bb.bg, label %JS_SetObjectData.exit

bb.bg:                                            ; preds = %.thread150, %bb.bf
  %i.gf = phi i64 [ %i.ga, %.thread150 ], [ %i.gd, %bb.bf ] ; 2 uses
  %i.gg = phi i64 [ %i.fz, %.thread150 ], [ %i.gc, %bb.bf ] ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gh = load ptr, ptr %.in, align 8, !tbaa !232
  %i.gi = inttoptr i64 %i.ff to ptr
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -4 ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !191 ; 2 uses
  %i.gl = add nsw i32 %i.gk, -1
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !191
  %i.gm = icmp slt i32 %i.gk, 2
  br i1 %i.gm, label %bb.bh, label %JS_SetObjectData.exit

bb.bh:                                            ; preds = %bb.bg
  tail call fastcc void @js_free_value_rt(ptr noundef %i.gh, i64 %i.ff, i64 %i.fg), !inline_history !291
  br label %JS_SetObjectData.exit

JS_SetObjectData.exit:                            ; preds = %.thread, %bb.az, %bb.bh, %bb.bg, %bb.bf, %JS_ToFloat64Free.exit, %JS_ToFloat64Free.exit.thread122, %bb.be, %JS_ToFloat64.exit98
  %.sroa.7.4 = phi i64 [ 0, %JS_ToFloat64.exit98 ], [ 0, %JS_ToFloat64Free.exit ], [ 0, %JS_ToFloat64Free.exit.thread122 ], [ %i.ff, %bb.az ], [ %i.ff, %bb.be ], [ %i.gc, %bb.bf ], [ %i.gg, %bb.bg ], [ %i.gg, %bb.bh ], [ %i.ff, %.thread ]
  %.sroa.12.4 = phi i64 [ 6, %JS_ToFloat64.exit98 ], [ 6, %JS_ToFloat64Free.exit ], [ 6, %JS_ToFloat64Free.exit.thread122 ], [ %i.fg, %bb.az ], [ %i.fg, %bb.be ], [ %i.gd, %bb.bf ], [ %i.gf, %bb.bg ], [ %i.gf, %bb.bh ], [ %i.fg, %.thread ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.7.4, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.12.4, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @__JS_EvalInternal(ptr noundef %0, i64 %1, i64 %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2 {
bb.a:
  %9 = alloca %struct.BlockEnv, align 8           ; 10 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %10 = alloca %struct.JSParseState, align 8      ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #49
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.b, i8 0, i64 168, i1 false)
  store ptr %0, ptr %10, align 8, !tbaa !553
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %5, ptr %i.c, align 8, !tbaa !558
  %i.d = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i32 %6, ptr %i.d, align 8, !tbaa !653
  %i.e = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 1, ptr %i.e, align 4, !tbaa !654
  %i.f = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 2 uses
  store ptr %3, ptr %i.f, align 8, !tbaa !655
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %3, ptr %i.g, align 8, !tbaa !656
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 %4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr %i.h, ptr %i.i, align 8, !tbaa !657
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr %3, ptr %i.j, align 8, !tbaa !658
  %i.k = trunc i64 %4 to i32
  %..i.i = tail call noundef i32 @llvm.smin.i32(i32 %i.k, i32 1)
  %i.l = sext i32 %..i.i to i64
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr %i.m, ptr %i.n, align 8, !tbaa !659
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr %3, ptr %i.o, align 8, !tbaa !660
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 5 uses
  store i32 32, ptr %i.p, align 8, !tbaa !661
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 1, ptr %i.q, align 4, !tbaa !559
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 1, ptr %i.r, align 8, !tbaa !555
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.s = load i8, ptr %3, align 1, !tbaa !218
  %i.t = icmp eq i8 %i.s, 35
  br i1 %i.t, label %bb.b, label %skip_shebang.exit

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !218
  %i.w = icmp eq i8 %i.v, 33
  br i1 %i.w, label %bb.c, label %skip_shebang.exit

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !364
  %i.y = icmp samesign ugt i64 %4, 2
  br i1 %i.y, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i.backedge
  %i.z = phi ptr [ %.be, %.lr.ph.i.backedge ], [ %i.x, %bb.c ] ; 5 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !218  ; 2 uses
  switch i8 %i.aa, label %bb.d [
    i8 10, label %._crit_edge.i
    i8 13, label %._crit_edge.i
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = icmp slt i8 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = call fastcc i32 @utf8_decode(ptr noundef nonnull %i.z, ptr noundef %i.a)
  %i.ad = and i32 %i.ac, -2
  %or.cond.i = icmp ne i32 %i.ad, 8232
  %i.ae = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.h
  %or.cond10.i = select i1 %or.cond.i, i1 %i.af, i1 false
  br i1 %or.cond10.i, label %.lr.ph.i.backedge, label %._crit_edge.i

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 4 uses
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !364
  %.old9.i = icmp ult ptr %i.ag, %i.h
  br i1 %.old9.i, label %.lr.ph.i.backedge, label %._crit_edge.i

.lr.ph.i.backedge:                                ; preds = %bb.f, %bb.e
  %.be = phi ptr [ %i.ae, %bb.e ], [ %i.ag, %bb.f ]
  br label %.lr.ph.i, !llvm.loop !1502

._crit_edge.i:                                    ; preds = %bb.f, %bb.e, %.lr.ph.i, %.lr.ph.i, %bb.c
  %i.ah = phi ptr [ %i.x, %bb.c ], [ %i.z, %.lr.ph.i ], [ %i.z, %.lr.ph.i ], [ %i.ae, %bb.e ], [ %i.ag, %bb.f ]
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !364
  br label %skip_shebang.exit

skip_shebang.exit:                                ; preds = %bb.a, %bb.b, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.ai = and i32 %7, 3                           ; 3 uses
  %i.aj = icmp eq i32 %i.ai, 2                    ; 3 uses
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %skip_shebang.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !232
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1264
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !264 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !218 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !218 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !218
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.av = load i16, ptr %i.au, align 8
  %i.aw = and i16 %i.av, 1
  %i.ax = zext nneg i16 %i.aw to i64
  br label %bb.k

bb.h:                                             ; preds = %skip_shebang.exit
  %i.ay = lshr i32 %7, 3
  %i.az = and i32 %i.ay, 1
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = icmp eq i32 %i.ai, 1
  br i1 %i.bb, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #52, !inline_history !385
  %i.bd = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %5, i64 noundef %i.bc), !inline_history !385 ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call fastcc ptr @js_new_module_def(ptr noundef %0, i32 noundef %i.bd) ; 2 uses
  %.not.not = icmp eq ptr %i.bf, null
  br i1 %.not.not, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j, %bb.g
  %.0115 = phi ptr [ %i.an, %bb.g ], [ null, %bb.j ], [ null, %bb.h ]
  %.0114 = phi ptr [ %i.at, %bb.g ], [ null, %bb.j ], [ null, %bb.h ]
  %.0113 = phi ptr [ %i.ar, %bb.g ], [ null, %bb.j ], [ null, %bb.h ] ; 10 uses
  %.1112 = phi ptr [ null, %bb.g ], [ %i.bf, %bb.j ], [ null, %bb.h ] ; 10 uses
  %.1 = phi i64 [ %i.ax, %bb.g ], [ 1, %bb.j ], [ %i.ba, %bb.h ] ; 2 uses
  %i.bg = tail call fastcc ptr @js_new_function_def(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %5, i32 noundef %6, i32 noundef 1) ; 15 uses
  %.not121 = icmp eq ptr %i.bg, null
  br i1 %.not121, label %bb.cc, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 160 ; 27 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !554
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 56
  store i32 %i.ai, ptr %i.bi, align 8, !tbaa !707
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 60 ; 10 uses
  %i.bk = load i64, ptr %i.bj, align 4
  %i.bl = select i1 %i.aj, i64 0, i64 1024
  %i.bm = and i64 %i.bk, -132097
  %i.bn = shl i32 %7, 11
  %i.bo = and i32 %i.bn, 131072
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = or disjoint i64 %i.bl, %i.bp
  %i.br = or disjoint i64 %i.bq, %i.bm            ; 3 uses
  store i64 %i.br, ptr %i.bj, align 4
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %.0113, i64 16 ; 4 uses
  %i.bt = load i16, ptr %i.bs, align 8
  %i.bu = shl i16 %i.bt, 4
  %i.bv = and i16 %i.bu, 2048
  %i.bw = zext nneg i16 %i.bv to i64
  %i.bx = and i64 %i.br, -2049
  %i.by = or disjoint i64 %i.bx, %i.bw            ; 2 uses
  store i64 %i.by, ptr %i.bj, align 4
  %i.bz = load i16, ptr %i.bs, align 8
  %i.ca = shl i16 %i.bz, 4
  %i.cb = and i16 %i.ca, 4096
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = and i64 %i.by, -4097
  %i.ce = or disjoint i64 %i.cd, %i.cc            ; 2 uses
  store i64 %i.ce, ptr %i.bj, align 4
  %i.cf = load i16, ptr %i.bs, align 8
  %i.cg = shl i16 %i.cf, 4
  %i.ch = and i16 %i.cg, 8192
  %i.ci = zext nneg i16 %i.ch to i64
  %i.cj = and i64 %i.ce, -8193
  %i.ck = or disjoint i64 %i.cj, %i.ci            ; 2 uses
  store i64 %i.ck, ptr %i.bj, align 4
  %i.cl = load i16, ptr %i.bs, align 8
  %i.cm = shl i16 %i.cl, 4
  %i.cn = and i16 %i.cm, 16384
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = and i64 %i.ck, -549755830273
  %11 = or disjoint i64 %i.cp, %i.co
  %12 = shl nuw nsw i64 %.1, 39
  %i.cq = or i64 %11, %12
  store i64 %i.cq, ptr %i.bj, align 4
  %13 = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  store i32 84, ptr %13, align 4, !tbaa !708
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %14 = and i64 %i.br, -549755844609
  %i.cr = shl nuw nsw i64 %.1, 39
  %15 = or i64 %14, %i.cr
  %i.cs = or disjoint i64 %15, 16384
  store i64 %i.cs, ptr %i.bj, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 68
  store i32 84, ptr %i.ct, align 4, !tbaa !708
  %.not123 = icmp eq ptr %.0113, null
  br i1 %.not123, label %add_closure_variables.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cu = getelementptr inbounds nuw i8, ptr %.0113, i64 56 ; 6 uses
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !428
  %i.cw = zext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %.0113, i64 58 ; 5 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !429
  %i.cz = zext i16 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cz, %i.cw
  %i.db = getelementptr inbounds nuw i8, ptr %.0113, i64 66 ; 3 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !431
  %i.dd = zext i16 %i.dc to i32
  %i.de = add nuw nsw i32 %i.da, %i.dd            ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 392 ; 8 uses
  store ptr null, ptr %i.df, align 8, !tbaa !709
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 384 ; 11 uses
  store i32 0, ptr %i.dg, align 8, !tbaa !710
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bg, i64 388
  store i32 %i.de, ptr %i.dh, align 4, !tbaa !1510
  %i.di = icmp eq i32 %i.de, 0
  br i1 %i.di, label %add_closure_variables.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = shl nuw nsw i32 %i.de, 3
  %i.dk = zext nneg i32 %i.dj to i64              ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !232 ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 48 ; 3 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !196
  %i.dq = add i64 %i.dp, %i.dk
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 56
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !197
  %i.dt = add i64 %i.ds, -1
  %i.du = icmp ugt i64 %i.dq, %i.dt
  br i1 %i.du, label %bb.v, label %bb.q, !prof !192

bb.q:                                             ; preds = %bb.p
  %i.dv = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.dm, i64 noundef %i.dk), !inline_history !237 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.r

._crit_edge.i.i:                                  ; preds = %bb.q
  %.pre.i.i = load ptr, ptr %i.dl, align 8, !tbaa !232
  br label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.dw = load i64, ptr %i.dn, align 8, !tbaa !217
  %i.dx = add i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dn, align 8, !tbaa !217
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 -8 ; 3 uses
  %i.dz = load i16, ptr %i.dy, align 8, !tbaa !218
  %i.ea = icmp eq i16 %i.dz, -1
  br i1 %i.ea, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 1064
  %i.ec = icmp eq ptr %i.dy, %i.eb
  br i1 %i.ec, label %js_malloc.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dm, i64 32
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !219
  %i.ef = tail call i64 %i.ee(ptr noundef nonnull %i.dy) #49, !inline_history !1503 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ef, 0
  %i.eg = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ef
  br label %js_malloc.exit.i

bb.u:                                             ; preds = %bb.r
  %i.eh = getelementptr inbounds i8, ptr %i.dv, i64 -6
  %i.ei = load i8, ptr %i.eh, align 2, !tbaa !218
  %i.ej = zext i8 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !221
  %i.em = zext i16 %i.el to i64
  br label %js_malloc.exit.i

bb.v:                                             ; preds = %._crit_edge.i.i, %bb.p
  %i.en = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.dm, %bb.p ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 1256 ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 8, !tbaa !233, !range !234, !noundef !235
  %i.eq = trunc nuw i8 %i.ep to i1
  br i1 %i.eq, label %add_closure_variables.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.eo, align 8, !tbaa !233
  %i.er = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.eo, align 8, !tbaa !233
  br label %add_closure_variables.exit

js_malloc.exit.i:                                 ; preds = %bb.u, %bb.t, %bb.s
  %.011.i.i.i.i = phi i64 [ 8, %bb.s ], [ %i.eg, %bb.t ], [ %i.em, %bb.u ]
  %i.es = load i64, ptr %i.do, align 8, !tbaa !196
  %i.et = add i64 %i.es, %.011.i.i.i.i
  store i64 %i.et, ptr %i.do, align 8, !tbaa !196
  store ptr %i.dv, ptr %i.df, align 8, !tbaa !709
  %i.eu = icmp sgt i32 %8, -1
  br i1 %i.eu, label %.lr.ph.i133, label %._crit_edge.i132

.lr.ph.i133:                                      ; preds = %js_malloc.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.0113, i64 40
  br label %bb.x

bb.x:                                             ; preds = %bb.aa, %.lr.ph.i133
  %.090102.i = phi i32 [ %8, %.lr.ph.i133 ], [ %i.gu, %bb.aa ] ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !427
  %i.ex = load i16, ptr %i.cu, align 8, !tbaa !428
  %i.ey = zext i16 %i.ex to i32
  %i.ez = add nuw nsw i32 %.090102.i, %i.ey
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [20 x i8], ptr %i.ew, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !711
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ff = load ptr, ptr %i.df, align 8, !tbaa !709
  %i.fg = load i32, ptr %i.dg, align 8, !tbaa !710 ; 2 uses
  %i.fh = add nsw i32 %i.fg, 1
  store i32 %i.fh, ptr %i.dg, align 8, !tbaa !710
  %i.fi = sext i32 %i.fg to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fi ; 7 uses
  %i.fk = load i16, ptr %i.fj, align 4            ; 2 uses
  %i.fl = and i16 %i.fk, -8
  store i16 %i.fl, ptr %i.fj, align 4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 12 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 4
  %i.fo = shl i8 %i.fn, 4
  %i.fp = and i8 %i.fo, 16
  %i.fq = zext nneg i8 %i.fp to i16
  %i.fr = and i16 %i.fk, -24
  %i.fs = or disjoint i16 %i.fr, %i.fq            ; 2 uses
  store i16 %i.fs, ptr %i.fj, align 4
  %i.ft = load i8, ptr %i.fm, align 4
  %i.fu = shl i8 %i.ft, 2
  %i.fv = and i8 %i.fu, 8
  %i.fw = zext nneg i8 %i.fv to i16
  %i.fx = and i16 %i.fs, -16
  %i.fy = or disjoint i16 %i.fx, %i.fw            ; 2 uses
  store i16 %i.fy, ptr %i.fj, align 4
  %i.fz = load i8, ptr %i.fm, align 4
  %i.ga = lshr i8 %i.fz, 4
  %i.gb = zext nneg i8 %i.ga to i16
  %i.gc = shl nuw nsw i16 %i.gb, 8
  %i.gd = and i16 %i.fy, -3848
  %i.ge = or disjoint i16 %i.gd, %i.gc
  store i16 %i.ge, ptr %i.fj, align 4
  %i.gf = trunc i32 %.090102.i to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fj, i64 2
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !712
  %i.gh = load i32, ptr %i.fb, align 4, !tbaa !547 ; 3 uses
  %i.gi = icmp slt i32 %i.gh, 242
  br i1 %i.gi, label %set_closure_from_var.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gj = load ptr, ptr %i.dl, align 8, !tbaa !232
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1104
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !297
  %i.gm = zext nneg i32 %i.gh to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gl, i64 %i.gm
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !299
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -4 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !191
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !191
  br label %set_closure_from_var.exit.i

set_closure_from_var.exit.i:                      ; preds = %bb.z, %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 %i.gh, ptr %i.gs, align 4, !tbaa !545
  br label %bb.aa

bb.aa:                                            ; preds = %set_closure_from_var.exit.i, %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !713 ; 3 uses
  %i.gv = icmp sgt i32 %i.gu, -1
  br i1 %i.gv, label %bb.x, label %._crit_edge.i132, !llvm.loop !1504

._crit_edge.i132:                                 ; preds = %bb.aa, %js_malloc.exit.i
  %.090.lcssa.i = phi i32 [ %8, %js_malloc.exit.i ], [ %i.gu, %bb.aa ]
  %i.gw = icmp eq i32 %.090.lcssa.i, -2
  br i1 %i.gw, label %.preheader.i, label %.preheader101.i

.preheader101.i:                                  ; preds = %._crit_edge.i132
  %i.gx = load i16, ptr %i.cu, align 8, !tbaa !428
  %.not.i = icmp eq i16 %i.gx, 0
  br i1 %.not.i, label %.preheader99.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %.preheader101.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.0113, i64 40
  br label %bb.ab

.preheader.i:                                     ; preds = %._crit_edge.i132
  %i.gz = load i16, ptr %i.cx, align 2, !tbaa !429 ; 2 uses
  %.not113.i = icmp eq i16 %i.gz, 0
  br i1 %.not113.i, label %.loopexit98.i, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %.preheader.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.0113, i64 40
  br label %bb.ai

end_hunk_0
begin_hunk_1_@js_regexp_Symbol_replace:bb.a
  %.not.i36.i = icmp eq ptr %i.gk, null           ; 2 uses
  %i.gl = icmp ne i32 %i.et, 0
  %i.gm = and i1 %i.gl, %.not.i36.i
  br i1 %i.gm, label %bb.ao, label %js_realloc.exit37.i, !prof !192

bb.ao:                                            ; preds = %bb.an
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !232
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 1256 ; 3 uses
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !233, !range !234, !noundef !235
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %js_realloc.exit37.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.gp, align 8, !tbaa !233
  %i.gs = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %i.ew, ptr noundef nonnull @.str.46) #51, !inline_history !795 ; 0 uses
  store i8 0, ptr %i.gp, align 8, !tbaa !233
  br label %js_realloc.exit37.thread.i

js_realloc.exit37.i:                              ; preds = %bb.an
  br i1 %.not.i36.i, label %js_realloc.exit37.thread.i, label %.critedge.i

js_realloc.exit37.thread.i:                       ; preds = %js_realloc.exit37.i, %bb.ag, %bb.ap, %bb.ao, %.split.i, %js_realloc_rt.exit.i
  %i.gt = load i32, ptr %i.bq, align 8, !tbaa !1892 ; 2 uses
  %i.gu = icmp sgt i32 %i.gt, 0
  %.pre56.i.pre = load ptr, ptr %12, align 8, !tbaa !1891 ; 2 uses
  br i1 %i.gu, label %.lr.ph.i.i, label %._crit_edge.i.i421

.lr.ph.i.i:                                       ; preds = %js_realloc.exit37.thread.i, %JS_FreeValue.exit.i.i
  %i.gv = phi ptr [ %i.hn, %JS_FreeValue.exit.i.i ], [ %.pre56.i.pre, %js_realloc.exit37.thread.i ] ; 3 uses
  %i.gw = phi i32 [ %i.ho, %JS_FreeValue.exit.i.i ], [ %i.gt, %js_realloc.exit37.thread.i ]
  %i.gx = load ptr, ptr %i.bu, align 8, !tbaa !1895
  %i.gy = add nsw i32 %i.gw, -1                   ; 2 uses
  store i32 %i.gy, ptr %i.bq, align 8, !tbaa !1892
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gx, i64 %i.gz ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8            ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hd = load i64, ptr %i.hc, align 8            ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !232
  %i.hg = trunc i64 %i.hd to i32
  %i.hh = icmp ugt i32 %i.hg, -10
  br i1 %i.hh, label %bb.aq, label %JS_FreeValue.exit.i.i

bb.aq:                                            ; preds = %.lr.ph.i.i
  %i.hi = inttoptr i64 %i.hb to ptr
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -4 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !191 ; 2 uses
  %i.hl = add nsw i32 %i.hk, -1
  store i32 %i.hl, ptr %i.hj, align 4, !tbaa !191
  %i.hm = icmp slt i32 %i.hk, 2
  br i1 %i.hm, label %bb.ar, label %JS_FreeValue.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  call fastcc void @js_free_value_rt(ptr noundef %i.hf, i64 %i.hb, i64 %i.hd), !inline_history !291
  %.pre = load ptr, ptr %12, align 8, !tbaa !1891
  br label %JS_FreeValue.exit.i.i

JS_FreeValue.exit.i.i:                            ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i
  %i.hn = phi ptr [ %.pre, %bb.ar ], [ %i.gv, %bb.aq ], [ %i.gv, %.lr.ph.i.i ] ; 2 uses
  %i.ho = load i32, ptr %i.bq, align 8, !tbaa !1892 ; 2 uses
  %i.hp = icmp sgt i32 %i.ho, 0
  br i1 %i.hp, label %.lr.ph.i.i, label %._crit_edge.i.i421, !llvm.loop !1887

._crit_edge.i.i421:                               ; preds = %JS_FreeValue.exit.i.i, %js_realloc.exit37.thread.i
  %.pre56.i = phi ptr [ %.pre56.i.pre, %js_realloc.exit37.thread.i ], [ %i.hn, %JS_FreeValue.exit.i.i ] ; 2 uses
  %i.hq = load ptr, ptr %i.bu, align 8, !tbaa !1895 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.hq, %i.bt
  br i1 %.not.i38.i, label %value_buffer_free.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i421
  %i.hr = getelementptr inbounds nuw i8, ptr %.pre56.i, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.hs, ptr noundef %i.hq)
  %.pre55.i = load ptr, ptr %12, align 8, !tbaa !1891
  br label %value_buffer_free.exit.i

value_buffer_free.exit.i:                         ; preds = %bb.as, %._crit_edge.i.i421
  %i.ht = phi ptr [ %.pre56.i, %._crit_edge.i.i421 ], [ %.pre55.i, %bb.as ]
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !1895
  store i32 4, ptr %i.br, align 4, !tbaa !1893
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !232
  %i.hw = icmp ugt i32 %trunc558, -10
  br i1 %i.hw, label %bb.at, label %JS_FreeValue.exit.i

bb.at:                                            ; preds = %value_buffer_free.exit.i
  %i.hx = inttoptr i64 %i.ek to ptr
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -4 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !191 ; 2 uses
  %i.ia = add nsw i32 %i.hz, -1
  store i32 %i.ia, ptr %i.hy, align 4, !tbaa !191
  %i.ib = icmp slt i32 %i.hz, 2
  br i1 %i.ib, label %bb.au, label %JS_FreeValue.exit.i

bb.au:                                            ; preds = %bb.at
  call fastcc void @js_free_value_rt(ptr noundef %i.hv, i64 %i.ek, i64 %i.el), !inline_history !291
  br label %JS_FreeValue.exit.i

JS_FreeValue.exit.i:                              ; preds = %bb.au, %bb.at, %value_buffer_free.exit.i
  store i32 -1, ptr %i.bs, align 8, !tbaa !1894
  br label %.thread500

.critedge.i:                                      ; preds = %js_realloc.exit37.i, %js_realloc_rt.exit.thread.i
  %.02651.i = phi ptr [ %i.fk, %js_realloc_rt.exit.thread.i ], [ %i.gk, %js_realloc.exit37.i ] ; 2 uses
  store ptr %.02651.i, ptr %i.bu, align 8, !tbaa !1895
  store i32 %i.et, ptr %i.br, align 4, !tbaa !1893
  %.pre58.i = load i32, ptr %i.bq, align 8, !tbaa !1892
  br label %value_buffer_append.exit

value_buffer_append.exit:                         ; preds = %._crit_edge.i, %.critedge.i
  %i.ic = phi i32 [ %i.eo, %._crit_edge.i ], [ %.pre58.i, %.critedge.i ] ; 2 uses
  %i.id = phi ptr [ %.pre57.i, %._crit_edge.i ], [ %.02651.i, %.critedge.i ]
  %i.ie = add nsw i32 %i.ic, 1
  store i32 %i.ie, ptr %i.bq, align 8, !tbaa !1892
  %i.if = sext i32 %i.ic to i64
  %i.ig = getelementptr inbounds [16 x i8], ptr %i.id, i64 %i.if ; 2 uses
  store i64 %i.ek, ptr %i.ig, align 8, !tbaa !218
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i64 %i.el, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !240
  br i1 %i.dq, label %bb.av, label %.preheader563

bb.av:                                            ; preds = %value_buffer_append.exit
  %i.ih = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.ii = trunc i64 %.sroa.15284.0 to i32
  %i.ij = icmp ugt i32 %i.ii, -10
  br i1 %i.ij, label %bb.aw, label %JS_FreeValue.exit

bb.aw:                                            ; preds = %bb.av
  %i.ik = inttoptr i64 %.sroa.0276.sroa.0.0 to ptr
  %i.il = getelementptr inbounds i8, ptr %i.ik, i64 -4 ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !191 ; 2 uses
  %i.in = add nsw i32 %i.im, -1
  store i32 %i.in, ptr %i.il, align 4, !tbaa !191
  %i.io = icmp slt i32 %i.im, 2
  br i1 %i.io, label %bb.ax, label %JS_FreeValue.exit

bb.ax:                                            ; preds = %bb.aw
  call fastcc void @js_free_value_rt(ptr noundef %i.ih, i64 %.sroa.0276.sroa.0.0, i64 %.sroa.15284.0), !inline_history !291
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.av, %bb.aw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.ip = icmp eq i64 %i.em, 4294967295
  br i1 %i.ip, label %bb.ay, label %.thread.i, !prof !325

bb.ay:                                            ; preds = %JS_FreeValue.exit
  %i.iq = inttoptr i64 %i.ek to ptr
  %i.ir = call fastcc zeroext i1 @js_get_fast_array_element(ptr noundef nonnull %0, ptr noundef %i.iq, i32 noundef 0, ptr noundef nonnull %8) #51, !inline_history !825
  %.sroa.013.0.copyload.i = load i64, ptr %8, align 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  br i1 %i.ir, label %JS_GetPropertyInt64.exit, label %.thread.i

.thread.i:                                        ; preds = %JS_FreeValue.exit, %bb.ay
  %i.is = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.ek, i64 %i.el, i32 noundef -2147483648, i64 %i.ek, i64 %i.el, i1 noundef zeroext false) #51, !inline_history !826 ; 2 uses
  %i.it = extractvalue { i64, i64 } %i.is, 0
  %i.iu = extractvalue { i64, i64 } %i.is, 1
  br label %JS_GetPropertyInt64.exit

JS_GetPropertyInt64.exit:                         ; preds = %bb.ay, %.thread.i
  %.sroa.5.1.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.ay ], [ %i.iu, %.thread.i ] ; 5 uses
  %.sroa.013.sroa.0.1.i = phi i64 [ %.sroa.013.0.copyload.i, %bb.ay ], [ %i.it, %.thread.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.013.sroa.0.1.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.5.1.i, 1
  %i.iv = and i64 %.sroa.5.1.i, 4294967295
  %i.iw = icmp eq i64 %i.iv, 4294967289
  br i1 %i.iw, label %JS_ToStringFree.exit423, label %bb.az

bb.az:                                            ; preds = %JS_GetPropertyInt64.exit
  %i.ix = call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %.sroa.013.sroa.0.1.i, i64 %.sroa.5.1.i, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.iy = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.iz = trunc i64 %.sroa.5.1.i to i32
  %i.ja = icmp ugt i32 %i.iz, -10
  br i1 %i.ja, label %bb.ba, label %JS_ToStringFree.exit423

bb.ba:                                            ; preds = %bb.az
  %i.jb = inttoptr i64 %.sroa.013.sroa.0.1.i to ptr
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -4 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !191 ; 2 uses
  %i.je = add nsw i32 %i.jd, -1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !191
  %i.jf = icmp slt i32 %i.jd, 2
  br i1 %i.jf, label %bb.bb, label %JS_ToStringFree.exit423

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @js_free_value_rt(ptr noundef %i.iy, i64 %.sroa.013.sroa.0.1.i, i64 %.sroa.5.1.i) #51, !inline_history !666
  br label %JS_ToStringFree.exit423

JS_ToStringFree.exit423:                          ; preds = %JS_GetPropertyInt64.exit, %bb.az, %bb.ba, %bb.bb
  %.fca.1.insert.merged.i422 = phi { i64, i64 } [ %i.ix, %bb.bb ], [ %i.ix, %bb.az ], [ %i.ix, %bb.ba ], [ %.fca.1.insert.i, %JS_GetPropertyInt64.exit ] ; 2 uses
  %i.jg = extractvalue { i64, i64 } %.fca.1.insert.merged.i422, 0 ; 5 uses
  %i.jh = extractvalue { i64, i64 } %.fca.1.insert.merged.i422, 1 ; 5 uses
  %trunc559 = trunc i64 %i.jh to i32
  switch i32 %trunc559, label %JS_IsEmptyString.exit.thread.backedge [
    i32 6, label %.thread500
    i32 -7, label %JS_IsEmptyString.exit
  ]

JS_IsEmptyString.exit:                            ; preds = %JS_ToStringFree.exit423
  %i.ji = inttoptr i64 %i.jg to ptr
  %i.jj = load i64, ptr %i.ji, align 8
  %i.jk = and i64 %i.jj, 2147483647
  %i.jl = icmp eq i64 %i.jk, 0
  br i1 %i.jl, label %bb.bc, label %JS_IsEmptyString.exit.thread.backedge

JS_IsEmptyString.exit.thread.backedge:            ; preds = %JS_IsEmptyString.exit, %bb.bd, %JS_ToStringFree.exit423
  br label %JS_IsEmptyString.exit.thread

bb.bc:                                            ; preds = %JS_IsEmptyString.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.jm = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 93, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.jn = extractvalue { i64, i64 } %i.jm, 0
  %i.jo = extractvalue { i64, i64 } %i.jm, 1
  %i.jp = call fastcc i32 @JS_ToLengthFree(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 %i.jn, i64 %i.jo)
  %i.jq = icmp slt i32 %i.jp, 0
  br i1 %i.jq, label %.thread, label %bb.bd

.thread:                                          ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %.thread500

bb.bd:                                            ; preds = %bb.bc
  %i.jr = load i64, ptr %i.a, align 8, !tbaa !240
  %i.js = call fastcc i64 @string_advance_index(ptr noundef %i.cd, i64 noundef %i.jr, i1 noundef zeroext %i.eh) ; 3 uses
  %i.jt = add i64 %i.js, 2147483648
  %or.cond.i = icmp ult i64 %i.jt, 4294967296     ; 2 uses
  %.sroa.0.0.insert.ext.i.i = and i64 %i.js, 4294967295
  %i.ju = sitofp i64 %i.js to double
  %i.jv = bitcast double %i.ju to i64
  %.sroa.0.0.insert.ext.i.pn.i = select i1 %or.cond.i, i64 %.sroa.0.0.insert.ext.i.i, i64 %i.jv
  %.sroa.3.0.i = select i1 %or.cond.i, i64 0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store i64 %1, ptr %7, align 8
  store i64 %2, ptr %i.ei, align 8
  %i.jw = call fastcc i32 @JS_SetPropertyInternal2(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 93, i64 %.sroa.0.0.insert.ext.i.pn.i, i64 %.sroa.3.0.i, ptr noundef nonnull byval(%struct.JSValue) align 8 %7, i32 noundef 16384), !inline_history !48
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.jx = icmp sgt i32 %i.jw, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br i1 %i.jx, label %JS_IsEmptyString.exit.thread.backedge, label %.thread500

.preheader563:                                    ; preds = %JS_IsEmptyString.exit.thread, %value_buffer_append.exit
  %i.jy = load i32, ptr %i.bq, align 8, !tbaa !1892
  %i.jz = icmp sgt i32 %i.jy, 0
  br i1 %i.jz, label %.lr.ph669, label %._crit_edge670

.lr.ph669:                                        ; preds = %.preheader563
  %.sroa.5.0..sroa_idx.i439 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.15284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %10, i64 32
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.ke = getelementptr inbounds nuw i8, ptr %10, i64 48
  %.sroa.15.0..sroa_idx204 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.kf = getelementptr inbounds nuw i8, ptr %10, i64 64
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.kg = getelementptr inbounds nuw i8, ptr %10, i64 80
  %.sroa.9295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 88
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 4
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph669, %js_get_length32.exit.thread532
  %indvars.iv774 = phi i64 [ 0, %.lr.ph669 ], [ %indvars.iv.next775, %js_get_length32.exit.thread532 ] ; 2 uses
  %.sroa.15284.2668 = phi i64 [ %.sroa.15284.0, %.lr.ph669 ], [ %i.mj, %js_get_length32.exit.thread532 ] ; 4 uses
  %.sroa.0195.sroa.14.0667 = phi i32 [ 0, %.lr.ph669 ], [ %.sroa.0195.sroa.14.0.extract.trunc, %js_get_length32.exit.thread532 ] ; 5 uses
  %.sroa.0195.sroa.0.0666 = phi i32 [ 0, %.lr.ph669 ], [ %.sroa.0195.sroa.0.0.extract.trunc, %js_get_length32.exit.thread532 ] ; 5 uses
  %.sroa.15.0665 = phi i64 [ 3, %.lr.ph669 ], [ %i.od, %js_get_length32.exit.thread532 ] ; 6 uses
  %.sroa.11.0664 = phi i64 [ 3, %.lr.ph669 ], [ %.sroa.11.2, %js_get_length32.exit.thread532 ] ; 18 uses
  %.sroa.0186.0663 = phi i64 [ 0, %.lr.ph669 ], [ %.sroa.0186.2, %js_get_length32.exit.thread532 ] ; 18 uses
  %.sroa.12.0662 = phi i64 [ 3, %.lr.ph669 ], [ %i.pk, %js_get_length32.exit.thread532 ] ; 11 uses
  %.sroa.0173.0661 = phi i64 [ 0, %.lr.ph669 ], [ %i.pj, %js_get_length32.exit.thread532 ] ; 11 uses
  %.0392660 = phi i32 [ 0, %.lr.ph669 ], [ %.2545, %js_get_length32.exit.thread532 ] ; 3 uses
  %.sroa.0276.sroa.0.2658 = phi i64 [ %.sroa.0276.sroa.0.0, %.lr.ph669 ], [ %i.mi, %js_get_length32.exit.thread532 ] ; 4 uses
  %i.kh = load ptr, ptr %i.bu, align 8, !tbaa !1895
  %i.ki = getelementptr inbounds nuw [16 x i8], ptr %i.kh, i64 %indvars.iv774 ; 2 uses
  %.sroa.066.0.copyload = load i64, ptr %i.ki, align 8, !tbaa !218 ; 10 uses
  %.sroa.871.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.871.0.copyload = load i64, ptr %.sroa.871.0..sroa_idx, align 8, !tbaa !240 ; 10 uses
  %i.kj = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef 51, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false) #51, !inline_history !805 ; 2 uses
  %i.kk = extractvalue { i64, i64 } %i.kj, 1      ; 2 uses
  %i.kl = and i64 %i.kk, 4294967295
  %i.km = icmp eq i64 %i.kl, 6
  br i1 %i.km, label %.thread500, label %.preheader.i

.preheader.i:                                     ; preds = %bb.be, %bb.bk
  %.pn.i = phi { i64, i64 } [ %i.le, %bb.bk ], [ %i.kj, %bb.be ]
  %.sroa.6.0.i.i = phi i64 [ %i.lf, %bb.bk ], [ %i.kk, %bb.be ] ; 2 uses
  %.sroa.017.0.in.i.i = extractvalue { i64, i64 } %.pn.i, 0 ; 6 uses
  %i.kn = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.kn, label %bb.bk [
    i32 0, label %bb.bf
    i32 1, label %bb.bf
    i32 2, label %bb.bf
    i32 3, label %bb.bf
    i32 8, label %bb.bg
  ]

bb.bf:                                            ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %.sroa.017.0.extract.trunc.i.i = trunc i64 %.sroa.017.0.in.i.i to i32
  br label %bb.bl

bb.bg:                                            ; preds = %.preheader.i
  %i.ko = lshr i64 %.sroa.017.0.in.i.i, 52
  %i.kp = trunc nuw nsw i64 %i.ko to i32
  %i.kq = and i32 %i.kp, 2047                     ; 3 uses
  %i.kr = icmp samesign ult i32 %i.kq, 1054
  br i1 %i.kr, label %bb.bh, label %bb.bi, !prof !325

bb.bh:                                            ; preds = %bb.bg
  %.sroa.017.0.i.le.i = bitcast i64 %.sroa.017.0.in.i.i to double
  %i.ks = fptosi double %.sroa.017.0.i.le.i to i32
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.kt = icmp samesign ult i32 %i.kq, 1107
  br i1 %i.kt, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.ku = and i64 %.sroa.017.0.in.i.i, 4503599627370495
  %i.kv = or disjoint i64 %i.ku, 4503599627370496
  %i.kw = add nsw i32 %i.kq, -1043
  %i.kx = zext nneg i32 %i.kw to i64
  %i.ky = shl i64 %i.kv, %i.kx
  %i.kz = lshr i64 %i.ky, 32                      ; 2 uses
  %i.la = trunc nuw i64 %i.kz to i32              ; 2 uses
  %i.lb = icmp slt i64 %.sroa.017.0.in.i.i, 0
  %i.lc = icmp ne i64 %i.kz, 2147483648
  %or.cond.i.i = select i1 %i.lb, i1 %i.lc, i1 false
  %i.ld = sub nsw i32 0, %i.la
  %spec.select.i.i = select i1 %or.cond.i.i, i32 %i.ld, i32 %i.la
  br label %bb.bl

bb.bk:                                            ; preds = %.preheader.i
  %i.le = call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef nonnull %0, i64 %.sroa.017.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0) #51, !inline_history !153 ; 2 uses
  %i.lf = extractvalue { i64, i64 } %i.le, 1      ; 2 uses
  %i.lg = and i64 %i.lf, 4294967295
  %i.lh = icmp eq i64 %i.lg, 6
  br i1 %i.lh, label %.thread500, label %.preheader.i

bb.bl:                                            ; preds = %bb.bi, %bb.bf, %bb.bh, %bb.bj
  %storemerge.i.ph = phi i32 [ %spec.select.i.i, %bb.bj ], [ %i.ks, %bb.bh ], [ %.sroa.017.0.extract.trunc.i.i, %bb.bf ], [ 0, %bb.bi ] ; 3 uses
  %i.li = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.lj = trunc i64 %.sroa.15284.2668 to i32
  %i.lk = icmp ugt i32 %i.lj, -10
  br i1 %i.lk, label %bb.bm, label %JS_FreeValue.exit426

bb.bm:                                            ; preds = %bb.bl
  %i.ll = inttoptr i64 %.sroa.0276.sroa.0.2658 to ptr
  %i.lm = getelementptr inbounds i8, ptr %i.ll, i64 -4 ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !191 ; 2 uses
  %i.lo = add nsw i32 %i.ln, -1
  store i32 %i.lo, ptr %i.lm, align 4, !tbaa !191
  %i.lp = icmp slt i32 %i.ln, 2
  br i1 %i.lp, label %bb.bn, label %JS_FreeValue.exit426

bb.bn:                                            ; preds = %bb.bm
  call fastcc void @js_free_value_rt(ptr noundef %i.li, i64 %.sroa.0276.sroa.0.2658, i64 %.sroa.15284.2668), !inline_history !291
  br label %JS_FreeValue.exit426

JS_FreeValue.exit426:                             ; preds = %bb.bl, %bb.bm, %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.lq = and i64 %.sroa.871.0.copyload, 4294967295
  %i.lr = icmp eq i64 %i.lq, 4294967295
  br i1 %i.lr, label %bb.bo, label %.thread.i427, !prof !325

bb.bo:                                            ; preds = %JS_FreeValue.exit426
  %i.ls = inttoptr i64 %.sroa.066.0.copyload to ptr
  %i.lt = call fastcc zeroext i1 @js_get_fast_array_element(ptr noundef nonnull %0, ptr noundef %i.ls, i32 noundef 0, ptr noundef nonnull %6) #51, !inline_history !825
  %.sroa.013.0.copyload.i437 = load i64, ptr %6, align 8
  %.sroa.5.0.copyload.i440 = load i64, ptr %.sroa.5.0..sroa_idx.i439, align 8
  br i1 %i.lt, label %JS_GetPropertyInt64.exit441, label %.thread.i427

.thread.i427:                                     ; preds = %JS_FreeValue.exit426, %bb.bo
  %i.lu = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef -2147483648, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false) #51, !inline_history !826 ; 2 uses
  %i.lv = extractvalue { i64, i64 } %i.lu, 0
  %i.lw = extractvalue { i64, i64 } %i.lu, 1
  br label %JS_GetPropertyInt64.exit441

JS_GetPropertyInt64.exit441:                      ; preds = %bb.bo, %.thread.i427
  %.sroa.5.1.i430 = phi i64 [ %.sroa.5.0.copyload.i440, %bb.bo ], [ %i.lw, %.thread.i427 ] ; 5 uses
  %.sroa.013.sroa.0.1.i431 = phi i64 [ %.sroa.013.0.copyload.i437, %bb.bo ], [ %i.lv, %.thread.i427 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert.i435 = insertvalue { i64, i64 } poison, i64 %.sroa.013.sroa.0.1.i431, 0
  %.fca.1.insert.i436 = insertvalue { i64, i64 } %.fca.0.insert.i435, i64 %.sroa.5.1.i430, 1
  %i.lx = and i64 %.sroa.5.1.i430, 4294967295
  %i.ly = icmp eq i64 %i.lx, 4294967289
  br i1 %i.ly, label %JS_ToStringFree.exit443, label %bb.bp

bb.bp:                                            ; preds = %JS_GetPropertyInt64.exit441
  %i.lz = call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef nonnull %0, i64 %.sroa.013.sroa.0.1.i431, i64 %.sroa.5.1.i430, i32 noundef 0) #51, !inline_history !665 ; 3 uses
  %i.ma = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.mb = trunc i64 %.sroa.5.1.i430 to i32
  %i.mc = icmp ugt i32 %i.mb, -10
  br i1 %i.mc, label %bb.bq, label %JS_ToStringFree.exit443

bb.bq:                                            ; preds = %bb.bp
  %i.md = inttoptr i64 %.sroa.013.sroa.0.1.i431 to ptr
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -4 ; 2 uses
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !191 ; 2 uses
  %i.mg = add nsw i32 %i.mf, -1
  store i32 %i.mg, ptr %i.me, align 4, !tbaa !191
  %i.mh = icmp slt i32 %i.mf, 2
  br i1 %i.mh, label %bb.br, label %JS_ToStringFree.exit443

bb.br:                                            ; preds = %bb.bq
  call fastcc void @js_free_value_rt(ptr noundef %i.ma, i64 %.sroa.013.sroa.0.1.i431, i64 %.sroa.5.1.i430) #51, !inline_history !666
  br label %JS_ToStringFree.exit443

JS_ToStringFree.exit443:                          ; preds = %JS_GetPropertyInt64.exit441, %bb.bp, %bb.bq, %bb.br
  %.fca.1.insert.merged.i442 = phi { i64, i64 } [ %i.lz, %bb.br ], [ %i.lz, %bb.bp ], [ %i.lz, %bb.bq ], [ %.fca.1.insert.i436, %JS_GetPropertyInt64.exit441 ] ; 2 uses
  %i.mi = extractvalue { i64, i64 } %.fca.1.insert.merged.i442, 0 ; 18 uses
  %i.mj = extractvalue { i64, i64 } %.fca.1.insert.merged.i442, 1 ; 18 uses
  %i.mk = and i64 %i.mj, 4294967295
  %i.ml = icmp eq i64 %i.mk, 6
  br i1 %i.ml, label %.thread500, label %bb.bs

bb.bs:                                            ; preds = %JS_ToStringFree.exit443
  %i.mm = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef 95, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.mn = extractvalue { i64, i64 } %i.mm, 0      ; 4 uses
  %i.mo = extractvalue { i64, i64 } %i.mm, 1      ; 3 uses
  %i.mp = trunc i64 %i.mo to i32
  %i.mq = icmp ugt i32 %i.mp, -10                 ; 2 uses
  br i1 %i.mq, label %bb.bt, label %js_dup.exit.i.i.preheader

bb.bt:                                            ; preds = %bb.bs
  %i.mr = inttoptr i64 %i.mn to ptr
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -4 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !191
  %i.mu = add nsw i32 %i.mt, 1
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !191
  br label %js_dup.exit.i.i.preheader

js_dup.exit.i.i.preheader:                        ; preds = %bb.bt, %bb.bs
  br label %js_dup.exit.i.i

js_dup.exit.i.i:                                  ; preds = %js_dup.exit.i.i.preheader, %bb.bx
  %.sroa.012.0.in.i.i.i = phi i64 [ %i.nc, %bb.bx ], [ %i.mn, %js_dup.exit.i.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i.i = phi i64 [ %i.nd, %bb.bx ], [ %i.mo, %js_dup.exit.i.i.preheader ] ; 2 uses
  %i.mv = trunc i64 %.sroa.6.0.i.i.i to i32
end_hunk_1
begin_hunk_2_@js_regexp_Symbol_replace:bb.a
  %i.pe = getelementptr inbounds i8, ptr %i.pd, i64 -4 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !191 ; 2 uses
  %i.pg = add nsw i32 %i.pf, -1
  store i32 %i.pg, ptr %i.pe, align 4, !tbaa !191
  %i.ph = icmp slt i32 %i.pf, 2
  br i1 %i.ph, label %bb.ck, label %JS_FreeValue.exit450

bb.ck:                                            ; preds = %bb.cj
  call fastcc void @js_free_value_rt(ptr noundef %i.pa, i64 %.sroa.0173.0661, i64 %.sroa.12.0662), !inline_history !291
  br label %JS_FreeValue.exit450

JS_FreeValue.exit450:                             ; preds = %._crit_edge, %bb.cj, %bb.ck
  %i.pi = call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i32 noundef 145, i64 %.sroa.066.0.copyload, i64 %.sroa.871.0.copyload, i1 noundef zeroext false), !inline_history !373 ; 2 uses
  %i.pj = extractvalue { i64, i64 } %i.pi, 0      ; 10 uses
  %i.pk = extractvalue { i64, i64 } %i.pi, 1      ; 11 uses
  %i.pl = and i64 %i.pk, 4294967295               ; 3 uses
  %i.pm = icmp eq i64 %i.pl, 6
  br i1 %i.pm, label %.thread500, label %bb.cl

bb.cl:                                            ; preds = %JS_FreeValue.exit450
  br i1 %.0.i490, label %bb.cm, label %bb.ct

bb.cm:                                            ; preds = %bb.cl
  %i.pn = zext nneg i32 %.0393.lcssa to i64
  %i.po = call i32 @JS_DefinePropertyValueInt64(ptr noundef nonnull %0, i64 %i.oc, i64 %i.od, i64 noundef %i.pn, i64 %spec.select555, i64 0, i32 noundef 16391)
  %i.pp = icmp slt i32 %i.po, 0
  br i1 %i.pp, label %.thread500, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pq = add nuw nsw i32 %.0393.lcssa, 1
  %i.pr = add nuw nsw i32 %.0393.lcssa, 2
  %i.ps = zext nneg i32 %i.pq to i64
  %i.pt = call fastcc i32 @JS_DefinePropertyValueInt64Const(ptr noundef nonnull %0, i64 %i.oc, i64 %i.od, i64 noundef %i.ps, i64 %i.bz, i64 %i.ca)
  %i.pu = icmp slt i32 %i.pt, 0
  br i1 %i.pu, label %.thread500, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.pv = icmp eq i64 %i.pl, 3
  br i1 %i.pv, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pw = zext nneg i32 %i.pr to i64
  %i.px = call fastcc i32 @JS_DefinePropertyValueInt64Const(ptr noundef nonnull %0, i64 %i.oc, i64 %i.od, i64 noundef %i.pw, i64 %i.pj, i64 %i.pk)
  %i.py = icmp slt i32 %i.px, 0
  br i1 %i.py, label %.thread500, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  store i32 0, ptr %10, align 16
  store i32 0, ptr %.sroa.239.0..sroa_idx, align 4, !tbaa !218
  store i64 3, ptr %.sroa.15284.0..sroa_idx, align 8, !tbaa !240
  store i64 %i.oc, ptr %i.kc, align 16, !tbaa !218
  store i64 %i.od, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240
  %i.pz = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.qa = trunc i64 %.sroa.11.0664 to i32
  %i.qb = icmp ugt i32 %i.qa, -10
  br i1 %i.qb, label %bb.cr, label %JS_FreeValue.exit453

bb.cr:                                            ; preds = %bb.cq
  %i.qc = inttoptr i64 %.sroa.0186.0663 to ptr
  %i.qd = getelementptr inbounds i8, ptr %i.qc, i64 -4 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !191 ; 2 uses
  %i.qf = add nsw i32 %i.qe, -1
  store i32 %i.qf, ptr %i.qd, align 4, !tbaa !191
  %i.qg = icmp slt i32 %i.qe, 2
  br i1 %i.qg, label %bb.cs, label %JS_FreeValue.exit453

bb.cs:                                            ; preds = %bb.cr
  call fastcc void @js_free_value_rt(ptr noundef %i.pz, i64 %.sroa.0186.0663, i64 %.sroa.11.0664), !inline_history !291
  br label %JS_FreeValue.exit453

JS_FreeValue.exit453:                             ; preds = %bb.cq, %bb.cr, %bb.cs
  %i.qh = call { i64, i64 } @js_function_apply(ptr noundef nonnull %0, i64 %.sroa.0316.0.copyload, i64 %.sroa.6.0.copyload, i32 poison, ptr noundef nonnull %10, i32 noundef 0) ; 2 uses
  %i.qi = extractvalue { i64, i64 } %i.qh, 0
  %i.qj = extractvalue { i64, i64 } %i.qh, 1
  %i.qk = call fastcc { i64, i64 } @JS_ToStringFree(ptr noundef nonnull %0, i64 %i.qi, i64 %i.qj)
  br label %JS_FreeValue.exit458.thread

bb.ct:                                            ; preds = %bb.cl
  %i.ql = icmp eq i64 %i.pl, 3
  br i1 %i.ql, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.qm = call { i64, i64 } @JS_ToObject(ptr noundef nonnull %0, i64 %i.pj, i64 %i.pk) ; 2 uses
  %i.qn = extractvalue { i64, i64 } %i.qm, 0      ; 2 uses
  %i.qo = extractvalue { i64, i64 } %i.qm, 1      ; 2 uses
  %.sroa.017.sroa.7.0.extract.shift = and i64 %i.qn, -4294967296
  %i.qp = and i64 %i.qo, 4294967295
  %i.qq = icmp eq i64 %i.qp, 6
  br i1 %i.qq, label %.thread500, label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %.sroa.017.sroa.7.0 = phi i64 [ %.sroa.017.sroa.7.0.extract.shift, %bb.cu ], [ 0, %bb.ct ]
  %.sroa.017.sroa.0.0 = phi i64 [ %i.qn, %bb.cu ], [ 0, %bb.ct ]
  %.sroa.8.0 = phi i64 [ %i.qo, %bb.cu ], [ 3, %bb.ct ] ; 3 uses
  store i64 %i.mi, ptr %10, align 16, !tbaa !218
  store i64 %i.mj, ptr %.sroa.15284.0..sroa_idx, align 8, !tbaa !240
  store i64 %i.bz, ptr %i.kc, align 16, !tbaa !218
  store i64 %i.ca, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !240
  store i64 %spec.select555, ptr %i.kd, align 16, !tbaa !218
  store i64 0, ptr %.sroa.411.0..sroa_idx, align 8, !tbaa !240
  store i64 %i.oc, ptr %i.ke, align 16, !tbaa !218
  store i64 %i.od, ptr %.sroa.15.0..sroa_idx204, align 8, !tbaa !240
  %.sroa.017.sroa.0.0.insert.ext23 = and i64 %.sroa.017.sroa.0.0, 4294967295
  %.sroa.017.sroa.0.0.insert.insert25 = or disjoint i64 %.sroa.017.sroa.0.0.insert.ext23, %.sroa.017.sroa.7.0 ; 3 uses
  store i64 %.sroa.017.sroa.0.0.insert.insert25, ptr %i.kf, align 16, !tbaa !218
  store i64 %.sroa.8.0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !240
  store i64 %.sroa.0292.sroa.0.0, ptr %i.kg, align 16, !tbaa !218
  store i64 %.sroa.9295.0, ptr %.sroa.9295.0..sroa_idx, align 8, !tbaa !240
  %i.qr = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.qs = trunc i64 %.sroa.11.0664 to i32
  %i.qt = icmp ugt i32 %i.qs, -10
  br i1 %i.qt, label %bb.cw, label %JS_FreeValue.exit457

bb.cw:                                            ; preds = %bb.cv
  %i.qu = inttoptr i64 %.sroa.0186.0663 to ptr
  %i.qv = getelementptr inbounds i8, ptr %i.qu, i64 -4 ; 2 uses
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !191 ; 2 uses
  %i.qx = add nsw i32 %i.qw, -1
  store i32 %i.qx, ptr %i.qv, align 4, !tbaa !191
  %i.qy = icmp slt i32 %i.qw, 2
  br i1 %i.qy, label %bb.cx, label %JS_FreeValue.exit457

bb.cx:                                            ; preds = %bb.cw
  call fastcc void @js_free_value_rt(ptr noundef %i.qr, i64 %.sroa.0186.0663, i64 %.sroa.11.0664), !inline_history !291
  br label %JS_FreeValue.exit457

JS_FreeValue.exit457:                             ; preds = %bb.cv, %bb.cw, %bb.cx
  %i.qz = call fastcc { i64, i64 } @js_string___GetSubstitution(ptr noundef nonnull %0, ptr noundef %10) ; 3 uses
  %i.ra = load ptr, ptr %i.i, align 8, !tbaa !232
  %i.rb = trunc i64 %.sroa.8.0 to i32
  %i.rc = icmp ugt i32 %i.rb, -10
  br i1 %i.rc, label %bb.cy, label %JS_FreeValue.exit458.thread

bb.cy:                                            ; preds = %JS_FreeValue.exit457
  %i.rd = inttoptr i64 %.sroa.017.sroa.0.0.insert.insert25 to ptr
  %i.re = getelementptr inbounds i8, ptr %i.rd, i64 -4 ; 2 uses
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !191 ; 2 uses
  %i.rg = add nsw i32 %i.rf, -1
  store i32 %i.rg, ptr %i.re, align 4, !tbaa !191
  %i.rh = icmp slt i32 %i.rf, 2
  br i1 %i.rh, label %bb.cz, label %JS_FreeValue.exit458.thread

bb.cz:                                            ; preds = %bb.cy
  call fastcc void @js_free_value_rt(ptr noundef %i.ra, i64 %.sroa.017.sroa.0.0.insert.insert25, i64 %.sroa.8.0), !inline_history !291
  br label %JS_FreeValue.exit458.thread

JS_FreeValue.exit458.thread:                      ; preds = %bb.cz, %bb.cy, %JS_FreeValue.exit457, %JS_FreeValue.exit453
  %.pn = phi { i64, i64 } [ %i.qk, %JS_FreeValue.exit453 ], [ %i.qz, %JS_FreeValue.exit457 ], [ %i.qz, %bb.cy ], [ %i.qz, %bb.cz ] ; 2 uses
  %.sroa.11.2 = extractvalue { i64, i64 } %.pn, 1 ; 5 uses
  %.sroa.0186.2 = extractvalue { i64, i64 } %.pn, 0 ; 4 uses
  %i.ri = and i64 %.sroa.11.2, 4294967295
  %i.rj = icmp eq i64 %i.ri, 6
  br i1 %i.rj, label %.thread500, label %bb.da

bb.da:                                            ; preds = %JS_FreeValue.exit458.thread
  %i.rk = sext i32 %.0392660 to i64
  %.not410 = icmp slt i64 %spec.select555, %i.rk
  br i1 %.not410, label %js_get_length32.exit.thread532, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.rl = trunc nuw nsw i64 %spec.select555 to i32
  %i.rm = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %11, ptr noundef nonnull %i.cd, i32 noundef %.0392660, i32 noundef %i.rl) ; 0 uses
  %i.rn = call fastcc i32 @string_buffer_concat_value(ptr noundef nonnull %11, i64 %.sroa.0186.2, i64 %.sroa.11.2) ; 0 uses
  %i.ro = inttoptr i64 %i.mi to ptr
  %i.rp = load i64, ptr %i.ro, align 8
  %i.rq = and i64 %i.rp, 2147483647
  %i.rr = add nuw nsw i64 %i.rq, %spec.select555
  %i.rs = trunc nuw i64 %i.rr to i32
  br label %js_get_length32.exit.thread532

js_get_length32.exit.thread532:                   ; preds = %bb.db, %bb.da
  %.2545 = phi i32 [ %i.rs, %bb.db ], [ %.0392660, %bb.da ] ; 2 uses
  %indvars.iv.next775 = add nuw nsw i64 %indvars.iv774, 1 ; 2 uses
  %i.rt = load i32, ptr %i.bq, align 8, !tbaa !1892
  %i.ru = sext i32 %i.rt to i64
  %i.rv = icmp slt i64 %indvars.iv.next775, %i.ru
  br i1 %i.rv, label %bb.be, label %._crit_edge670, !llvm.loop !1889

._crit_edge670:                                   ; preds = %js_get_length32.exit.thread532, %.preheader563
  %.sroa.0276.sroa.0.2.lcssa = phi i64 [ %.sroa.0276.sroa.0.0, %.preheader563 ], [ %i.mi, %js_get_length32.exit.thread532 ]
  %.0392.lcssa = phi i32 [ 0, %.preheader563 ], [ %.2545, %js_get_length32.exit.thread532 ]
  %.sroa.0173.0.lcssa = phi i64 [ 0, %.preheader563 ], [ %i.pj, %js_get_length32.exit.thread532 ]
  %.sroa.12.0.lcssa = phi i64 [ 3, %.preheader563 ], [ %i.pk, %js_get_length32.exit.thread532 ]
  %.sroa.0186.0.lcssa = phi i64 [ 0, %.preheader563 ], [ %.sroa.0186.2, %js_get_length32.exit.thread532 ]
  %.sroa.11.0.lcssa = phi i64 [ 3, %.preheader563 ], [ %.sroa.11.2, %js_get_length32.exit.thread532 ]
  %.sroa.15.0.lcssa = phi i64 [ 3, %.preheader563 ], [ %i.od, %js_get_length32.exit.thread532 ]
  %.sroa.0195.sroa.0.0.lcssa = phi i32 [ 0, %.preheader563 ], [ %.sroa.0195.sroa.0.0.extract.trunc, %js_get_length32.exit.thread532 ]
  %.sroa.0195.sroa.14.0.lcssa = phi i32 [ 0, %.preheader563 ], [ %.sroa.0195.sroa.14.0.extract.trunc, %js_get_length32.exit.thread532 ]
  %.sroa.15284.2.lcssa = phi i64 [ %.sroa.15284.0, %.preheader563 ], [ %i.mj, %js_get_length32.exit.thread532 ]
  %i.rw = load i64, ptr %i.cd, align 8
  %i.rx = trunc i64 %i.rw to i32
  %i.ry = and i32 %i.rx, 2147483647
  %i.rz = call fastcc i32 @string_buffer_concat(ptr noundef nonnull %11, ptr noundef nonnull %i.cd, i32 noundef %.0392.lcssa, i32 noundef %i.ry) ; 0 uses
  %i.sa = call fastcc { i64, i64 } @string_buffer_end(ptr noundef nonnull %11) ; 2 uses
  %i.sb = extractvalue { i64, i64 } %i.sa, 0      ; 2 uses
  %i.sc = extractvalue { i64, i64 } %i.sa, 1
  %.sroa.0168.sroa.6.0.extract.shift = and i64 %i.sb, -4294967296
  br label %bb.dc

.thread500:                                       ; preds = %JS_ToStringFree.exit423, %JS_IsEmptyString.exit.thread, %bb.ad, %bb.bd, %bb.cu, %bb.be, %bb.cn, %JS_FreeValue.exit458.thread, %bb.cp, %bb.cm, %JS_FreeValue.exit450, %bb.cd, %JS_FreeValue.exit446, %JS_ToLengthFree.exit, %JS_ToStringFree.exit443, %bb.bk, %bb.ch, %.lr.ph, %JS_ToStringFree.exit448, %JS_IsFunction.exit.thread, %JS_FreeValue.exit.i, %.thread, %string_buffer_init.exit, %JS_IsFunction.exit.thread491, %JS_ToStringFree.exit, %bb.x, %bb.ab
  %.sroa.0292.sroa.0.1 = phi i64 [ 0, %string_buffer_init.exit ], [ %.sroa.0292.sroa.0.0, %JS_IsFunction.exit.thread ], [ %.sroa.0292.sroa.0.0, %JS_ToStringFree.exit ], [ %.sroa.0292.sroa.0.0, %bb.x ], [ %.sroa.0292.sroa.0.0, %bb.cu ], [ %.sroa.0292.sroa.0.0, %.thread ], [ %.sroa.0292.sroa.0.0, %bb.ab ], [ %i.cu, %JS_IsFunction.exit.thread491 ], [ %.sroa.0292.sroa.0.0, %JS_FreeValue.exit.i ], [ %.sroa.0292.sroa.0.0, %bb.ch ], [ %.sroa.0292.sroa.0.0, %bb.bk ], [ %.sroa.0292.sroa.0.0, %JS_ToStringFree.exit448 ], [ %.sroa.0292.sroa.0.0, %.lr.ph ], [ %.sroa.0292.sroa.0.0, %JS_ToStringFree.exit443 ], [ %.sroa.0292.sroa.0.0, %JS_ToLengthFree.exit ], [ %.sroa.0292.sroa.0.0, %JS_FreeValue.exit446 ], [ %.sroa.0292.sroa.0.0, %bb.cd ], [ %.sroa.0292.sroa.0.0, %JS_FreeValue.exit450 ], [ %.sroa.0292.sroa.0.0, %bb.cm ], [ %.sroa.0292.sroa.0.0, %bb.cp ], [ %.sroa.0292.sroa.0.0, %JS_FreeValue.exit458.thread ], [ %.sroa.0292.sroa.0.0, %bb.cn ], [ %.sroa.0292.sroa.0.0, %bb.be ], [ %.sroa.0292.sroa.0.0, %bb.bd ], [ %.sroa.0292.sroa.0.0, %bb.ad ], [ %.sroa.0292.sroa.0.0, %JS_IsEmptyString.exit.thread ], [ %.sroa.0292.sroa.0.0, %JS_ToStringFree.exit423 ]
  %.sroa.0276.sroa.0.4 = phi i64 [ 0, %string_buffer_init.exit ], [ 0, %JS_IsFunction.exit.thread ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.x ], [ %i.mi, %bb.cu ], [ %i.jg, %.thread ], [ 0, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ %.sroa.0276.sroa.0.0, %JS_FreeValue.exit.i ], [ %i.mi, %bb.ch ], [ %.sroa.0276.sroa.0.2658, %bb.bk ], [ %i.mi, %JS_ToStringFree.exit448 ], [ %i.mi, %.lr.ph ], [ %.sroa.0276.sroa.0.2658, %bb.be ], [ %i.mi, %bb.cn ], [ %i.mi, %JS_FreeValue.exit458.thread ], [ %i.mi, %bb.cp ], [ %i.mi, %bb.cm ], [ %i.mi, %JS_FreeValue.exit450 ], [ %i.mi, %bb.cd ], [ %i.mi, %JS_FreeValue.exit446 ], [ %i.mi, %JS_ToLengthFree.exit ], [ %i.mi, %JS_ToStringFree.exit443 ], [ %i.jg, %bb.bd ], [ %i.jg, %JS_ToStringFree.exit423 ], [ %.sroa.0276.sroa.0.0, %JS_IsEmptyString.exit.thread ], [ %.sroa.0276.sroa.0.0, %bb.ad ]
  %.sroa.7169.0 = phi i64 [ 6, %string_buffer_init.exit ], [ 6, %JS_IsFunction.exit.thread ], [ 6, %JS_ToStringFree.exit ], [ 6, %bb.x ], [ 6, %bb.cu ], [ 6, %.thread ], [ %i.eg, %bb.ab ], [ 6, %JS_IsFunction.exit.thread491 ], [ 6, %JS_FreeValue.exit.i ], [ 6, %bb.ch ], [ 6, %bb.bk ], [ 6, %JS_ToStringFree.exit448 ], [ 6, %.lr.ph ], [ 6, %JS_ToStringFree.exit443 ], [ 6, %JS_ToLengthFree.exit ], [ 6, %JS_FreeValue.exit446 ], [ 6, %bb.cd ], [ 6, %JS_FreeValue.exit450 ], [ 6, %bb.cm ], [ 6, %bb.cp ], [ 6, %JS_FreeValue.exit458.thread ], [ 6, %bb.cn ], [ 6, %bb.be ], [ 6, %bb.bd ], [ 6, %bb.ad ], [ 6, %JS_IsEmptyString.exit.thread ], [ 6, %JS_ToStringFree.exit423 ]
  %.sroa.0168.sroa.0.0 = phi i64 [ 0, %string_buffer_init.exit ], [ 0, %JS_IsFunction.exit.thread ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.x ], [ 0, %bb.cu ], [ 0, %.thread ], [ %i.ef, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ 0, %JS_FreeValue.exit.i ], [ 0, %bb.ch ], [ 0, %bb.bk ], [ 0, %JS_ToStringFree.exit448 ], [ 0, %.lr.ph ], [ 0, %JS_ToStringFree.exit443 ], [ 0, %JS_ToLengthFree.exit ], [ 0, %JS_FreeValue.exit446 ], [ 0, %bb.cd ], [ 0, %JS_FreeValue.exit450 ], [ 0, %bb.cm ], [ 0, %bb.cp ], [ 0, %JS_FreeValue.exit458.thread ], [ 0, %bb.cn ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 0, %JS_IsEmptyString.exit.thread ], [ 0, %JS_ToStringFree.exit423 ]
  %.sroa.0168.sroa.6.0 = phi i64 [ 0, %string_buffer_init.exit ], [ 0, %JS_IsFunction.exit.thread ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.x ], [ 0, %bb.cu ], [ 0, %.thread ], [ %.sroa.0168.sroa.6.0.extract.shift171, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ 0, %JS_FreeValue.exit.i ], [ 0, %bb.ch ], [ 0, %bb.bk ], [ 0, %JS_ToStringFree.exit448 ], [ 0, %.lr.ph ], [ 0, %JS_ToStringFree.exit443 ], [ 0, %JS_ToLengthFree.exit ], [ 0, %JS_FreeValue.exit446 ], [ 0, %bb.cd ], [ 0, %JS_FreeValue.exit450 ], [ 0, %bb.cm ], [ 0, %bb.cp ], [ 0, %JS_FreeValue.exit458.thread ], [ 0, %bb.cn ], [ 0, %bb.be ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 0, %JS_IsEmptyString.exit.thread ], [ 0, %JS_ToStringFree.exit423 ]
  %.sroa.0173.3 = phi i64 [ 0, %string_buffer_init.exit ], [ 0, %JS_IsFunction.exit.thread ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.x ], [ %i.pj, %bb.cu ], [ 0, %.thread ], [ 0, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ 0, %JS_FreeValue.exit.i ], [ %.sroa.0173.0661, %bb.ch ], [ %.sroa.0173.0661, %bb.bk ], [ %.sroa.0173.0661, %JS_ToStringFree.exit448 ], [ %.sroa.0173.0661, %.lr.ph ], [ %.sroa.0173.0661, %bb.be ], [ %i.pj, %bb.cn ], [ %i.pj, %JS_FreeValue.exit458.thread ], [ %i.pj, %bb.cp ], [ %i.pj, %bb.cm ], [ %i.pj, %JS_FreeValue.exit450 ], [ %.sroa.0173.0661, %bb.cd ], [ %.sroa.0173.0661, %JS_FreeValue.exit446 ], [ %.sroa.0173.0661, %JS_ToLengthFree.exit ], [ %.sroa.0173.0661, %JS_ToStringFree.exit443 ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 0, %JS_IsEmptyString.exit.thread ], [ 0, %JS_ToStringFree.exit423 ]
  %.sroa.12.3 = phi i64 [ 3, %string_buffer_init.exit ], [ 3, %JS_IsFunction.exit.thread ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.x ], [ %i.pk, %bb.cu ], [ 3, %.thread ], [ 3, %bb.ab ], [ 3, %JS_IsFunction.exit.thread491 ], [ 3, %JS_FreeValue.exit.i ], [ %.sroa.12.0662, %bb.ch ], [ %.sroa.12.0662, %bb.bk ], [ %.sroa.12.0662, %JS_ToStringFree.exit448 ], [ %.sroa.12.0662, %.lr.ph ], [ %.sroa.12.0662, %bb.be ], [ %i.pk, %bb.cn ], [ %i.pk, %JS_FreeValue.exit458.thread ], [ %i.pk, %bb.cp ], [ %i.pk, %bb.cm ], [ %i.pk, %JS_FreeValue.exit450 ], [ %.sroa.12.0662, %bb.cd ], [ %.sroa.12.0662, %JS_FreeValue.exit446 ], [ %.sroa.12.0662, %JS_ToLengthFree.exit ], [ %.sroa.12.0662, %JS_ToStringFree.exit443 ], [ 3, %bb.bd ], [ 3, %bb.ad ], [ 3, %JS_IsEmptyString.exit.thread ], [ 3, %JS_ToStringFree.exit423 ]
  %.sroa.0186.5 = phi i64 [ 0, %string_buffer_init.exit ], [ 0, %JS_IsFunction.exit.thread ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.x ], [ %.sroa.0186.0663, %bb.cu ], [ 0, %.thread ], [ 0, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ 0, %JS_FreeValue.exit.i ], [ %.sroa.0186.0663, %bb.ch ], [ %.sroa.0186.0663, %bb.bk ], [ %.sroa.0186.0663, %JS_ToStringFree.exit448 ], [ %.sroa.0186.0663, %.lr.ph ], [ %.sroa.0186.0663, %bb.be ], [ %.sroa.0186.0663, %bb.cn ], [ %.sroa.0186.2, %JS_FreeValue.exit458.thread ], [ %.sroa.0186.0663, %bb.cp ], [ %.sroa.0186.0663, %bb.cm ], [ %.sroa.0186.0663, %JS_FreeValue.exit450 ], [ %.sroa.0186.0663, %bb.cd ], [ %.sroa.0186.0663, %JS_FreeValue.exit446 ], [ %.sroa.0186.0663, %JS_ToLengthFree.exit ], [ %.sroa.0186.0663, %JS_ToStringFree.exit443 ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 0, %JS_IsEmptyString.exit.thread ], [ 0, %JS_ToStringFree.exit423 ]
  %.sroa.11.5 = phi i64 [ 3, %string_buffer_init.exit ], [ 3, %JS_IsFunction.exit.thread ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.x ], [ %.sroa.11.0664, %bb.cu ], [ 3, %.thread ], [ 3, %bb.ab ], [ 3, %JS_IsFunction.exit.thread491 ], [ 3, %JS_FreeValue.exit.i ], [ %.sroa.11.0664, %bb.ch ], [ %.sroa.11.0664, %bb.bk ], [ %.sroa.11.0664, %JS_ToStringFree.exit448 ], [ %.sroa.11.0664, %.lr.ph ], [ %.sroa.11.0664, %bb.be ], [ %.sroa.11.0664, %bb.cn ], [ %.sroa.11.2, %JS_FreeValue.exit458.thread ], [ %.sroa.11.0664, %bb.cp ], [ %.sroa.11.0664, %bb.cm ], [ %.sroa.11.0664, %JS_FreeValue.exit450 ], [ %.sroa.11.0664, %bb.cd ], [ %.sroa.11.0664, %JS_FreeValue.exit446 ], [ %.sroa.11.0664, %JS_ToLengthFree.exit ], [ %.sroa.11.0664, %JS_ToStringFree.exit443 ], [ 3, %bb.bd ], [ 3, %bb.ad ], [ 3, %JS_IsEmptyString.exit.thread ], [ 3, %JS_ToStringFree.exit423 ]
  %.sroa.15.3 = phi i64 [ 3, %string_buffer_init.exit ], [ 3, %JS_IsFunction.exit.thread ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.x ], [ %i.od, %bb.cu ], [ 3, %.thread ], [ 3, %bb.ab ], [ 3, %JS_IsFunction.exit.thread491 ], [ 3, %JS_FreeValue.exit.i ], [ %i.od, %bb.ch ], [ %.sroa.15.0665, %bb.bk ], [ %i.od, %JS_ToStringFree.exit448 ], [ %i.od, %.lr.ph ], [ %.sroa.15.0665, %bb.be ], [ %i.od, %bb.cn ], [ %i.od, %JS_FreeValue.exit458.thread ], [ %i.od, %bb.cp ], [ %i.od, %bb.cm ], [ %i.od, %JS_FreeValue.exit450 ], [ %i.od, %bb.cd ], [ %i.od, %JS_FreeValue.exit446 ], [ %.sroa.15.0665, %JS_ToLengthFree.exit ], [ %.sroa.15.0665, %JS_ToStringFree.exit443 ], [ 3, %bb.bd ], [ 3, %bb.ad ], [ 3, %JS_IsEmptyString.exit.thread ], [ 3, %JS_ToStringFree.exit423 ]
  %.sroa.0195.sroa.0.3 = phi i32 [ 0, %string_buffer_init.exit ], [ 0, %JS_IsFunction.exit.thread ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.x ], [ %.sroa.0195.sroa.0.0.extract.trunc, %bb.cu ], [ 0, %.thread ], [ 0, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ 0, %JS_FreeValue.exit.i ], [ %.sroa.0195.sroa.0.0.extract.trunc, %bb.ch ], [ %.sroa.0195.sroa.0.0666, %bb.bk ], [ %.sroa.0195.sroa.0.0.extract.trunc, %JS_ToStringFree.exit448 ], [ %.sroa.0195.sroa.0.0.extract.trunc, %.lr.ph ], [ %.sroa.0195.sroa.0.0666, %bb.be ], [ %.sroa.0195.sroa.0.0.extract.trunc, %bb.cn ], [ %.sroa.0195.sroa.0.0.extract.trunc, %JS_FreeValue.exit458.thread ], [ %.sroa.0195.sroa.0.0.extract.trunc, %bb.cp ], [ %.sroa.0195.sroa.0.0.extract.trunc, %bb.cm ], [ %.sroa.0195.sroa.0.0.extract.trunc, %JS_FreeValue.exit450 ], [ %.sroa.0195.sroa.0.0.extract.trunc, %bb.cd ], [ %.sroa.0195.sroa.0.0.extract.trunc, %JS_FreeValue.exit446 ], [ %.sroa.0195.sroa.0.0666, %JS_ToLengthFree.exit ], [ %.sroa.0195.sroa.0.0666, %JS_ToStringFree.exit443 ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 0, %JS_IsEmptyString.exit.thread ], [ 0, %JS_ToStringFree.exit423 ]
  %.sroa.0195.sroa.14.3 = phi i32 [ 0, %string_buffer_init.exit ], [ 0, %JS_IsFunction.exit.thread ], [ 0, %JS_ToStringFree.exit ], [ 0, %bb.x ], [ %.sroa.0195.sroa.14.0.extract.trunc, %bb.cu ], [ 0, %.thread ], [ 0, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ 0, %JS_FreeValue.exit.i ], [ %.sroa.0195.sroa.14.0.extract.trunc, %bb.ch ], [ %.sroa.0195.sroa.14.0667, %bb.bk ], [ %.sroa.0195.sroa.14.0.extract.trunc, %JS_ToStringFree.exit448 ], [ %.sroa.0195.sroa.14.0.extract.trunc, %.lr.ph ], [ %.sroa.0195.sroa.14.0667, %bb.be ], [ %.sroa.0195.sroa.14.0.extract.trunc, %bb.cn ], [ %.sroa.0195.sroa.14.0.extract.trunc, %JS_FreeValue.exit458.thread ], [ %.sroa.0195.sroa.14.0.extract.trunc, %bb.cp ], [ %.sroa.0195.sroa.14.0.extract.trunc, %bb.cm ], [ %.sroa.0195.sroa.14.0.extract.trunc, %JS_FreeValue.exit450 ], [ %.sroa.0195.sroa.14.0.extract.trunc, %bb.cd ], [ %.sroa.0195.sroa.14.0.extract.trunc, %JS_FreeValue.exit446 ], [ %.sroa.0195.sroa.14.0667, %JS_ToLengthFree.exit ], [ %.sroa.0195.sroa.14.0667, %JS_ToStringFree.exit443 ], [ 0, %bb.bd ], [ 0, %bb.ad ], [ 0, %JS_IsEmptyString.exit.thread ], [ 0, %JS_ToStringFree.exit423 ]
  %.sroa.15284.5 = phi i64 [ 3, %string_buffer_init.exit ], [ 3, %JS_IsFunction.exit.thread ], [ 3, %JS_ToStringFree.exit ], [ 3, %bb.x ], [ %i.mj, %bb.cu ], [ %i.jh, %.thread ], [ 3, %bb.ab ], [ 3, %JS_IsFunction.exit.thread491 ], [ %.sroa.15284.0, %JS_FreeValue.exit.i ], [ %i.mj, %bb.ch ], [ %.sroa.15284.2668, %bb.bk ], [ %i.mj, %JS_ToStringFree.exit448 ], [ %i.mj, %.lr.ph ], [ %.sroa.15284.2668, %bb.be ], [ %i.mj, %bb.cn ], [ %i.mj, %JS_FreeValue.exit458.thread ], [ %i.mj, %bb.cp ], [ %i.mj, %bb.cm ], [ %i.mj, %JS_FreeValue.exit450 ], [ %i.mj, %bb.cd ], [ %i.mj, %JS_FreeValue.exit446 ], [ %i.mj, %JS_ToLengthFree.exit ], [ %i.mj, %JS_ToStringFree.exit443 ], [ %i.jh, %bb.bd ], [ %i.jh, %JS_ToStringFree.exit423 ], [ %.sroa.15284.0, %JS_IsEmptyString.exit.thread ], [ %.sroa.15284.0, %bb.ad ]
  %.sroa.9295.2 = phi i64 [ 3, %string_buffer_init.exit ], [ %.sroa.9295.0, %JS_IsFunction.exit.thread ], [ %.sroa.9295.0, %JS_ToStringFree.exit ], [ %.sroa.9295.0, %bb.x ], [ %.sroa.9295.0, %bb.cu ], [ %.sroa.9295.0, %.thread ], [ %.sroa.9295.0, %bb.ab ], [ %i.cv, %JS_IsFunction.exit.thread491 ], [ %.sroa.9295.0, %JS_FreeValue.exit.i ], [ %.sroa.9295.0, %bb.ch ], [ %.sroa.9295.0, %bb.bk ], [ %.sroa.9295.0, %JS_ToStringFree.exit448 ], [ %.sroa.9295.0, %.lr.ph ], [ %.sroa.9295.0, %JS_ToStringFree.exit443 ], [ %.sroa.9295.0, %JS_ToLengthFree.exit ], [ %.sroa.9295.0, %JS_FreeValue.exit446 ], [ %.sroa.9295.0, %bb.cd ], [ %.sroa.9295.0, %JS_FreeValue.exit450 ], [ %.sroa.9295.0, %bb.cm ], [ %.sroa.9295.0, %bb.cp ], [ %.sroa.9295.0, %JS_FreeValue.exit458.thread ], [ %.sroa.9295.0, %bb.cn ], [ %.sroa.9295.0, %bb.be ], [ %.sroa.9295.0, %bb.bd ], [ %.sroa.9295.0, %bb.ad ], [ %.sroa.9295.0, %JS_IsEmptyString.exit.thread ], [ %.sroa.9295.0, %JS_ToStringFree.exit423 ]
  %.sroa.0308.1 = phi i64 [ 0, %string_buffer_init.exit ], [ %i.da, %JS_IsFunction.exit.thread ], [ %i.dk, %JS_ToStringFree.exit ], [ %i.dk, %bb.x ], [ %i.dk, %bb.cu ], [ %i.dk, %.thread ], [ %i.dk, %bb.ab ], [ 0, %JS_IsFunction.exit.thread491 ], [ %i.dk, %JS_FreeValue.exit.i ], [ %i.dk, %bb.ch ], [ %i.dk, %bb.bk ], [ %i.dk, %JS_ToStringFree.exit448 ], [ %i.dk, %.lr.ph ], [ %i.dk, %JS_ToStringFree.exit443 ], [ %i.dk, %JS_ToLengthFree.exit ], [ %i.dk, %JS_FreeValue.exit446 ], [ %i.dk, %bb.cd ], [ %i.dk, %JS_FreeValue.exit450 ], [ %i.dk, %bb.cm ], [ %i.dk, %bb.cp ], [ %i.dk, %JS_FreeValue.exit458.thread ], [ %i.dk, %bb.cn ], [ %i.dk, %bb.be ], [ %i.dk, %bb.bd ], [ %i.dk, %bb.ad ], [ %i.dk, %JS_IsEmptyString.exit.thread ], [ %i.dk, %JS_ToStringFree.exit423 ]
  %.sroa.11312.1 = phi i64 [ 3, %string_buffer_init.exit ], [ %i.db, %JS_IsFunction.exit.thread ], [ %i.dl, %JS_ToStringFree.exit ], [ %i.dl, %bb.x ], [ %i.dl, %bb.cu ], [ %i.dl, %.thread ], [ %i.dl, %bb.ab ], [ 3, %JS_IsFunction.exit.thread491 ], [ %i.dl, %JS_FreeValue.exit.i ], [ %i.dl, %bb.ch ], [ %i.dl, %bb.bk ], [ %i.dl, %JS_ToStringFree.exit448 ], [ %i.dl, %.lr.ph ], [ %i.dl, %JS_ToStringFree.exit443 ], [ %i.dl, %JS_ToLengthFree.exit ], [ %i.dl, %JS_FreeValue.exit446 ], [ %i.dl, %bb.cd ], [ %i.dl, %JS_FreeValue.exit450 ], [ %i.dl, %bb.cm ], [ %i.dl, %bb.cp ], [ %i.dl, %JS_FreeValue.exit458.thread ], [ %i.dl, %bb.cn ], [ %i.dl, %bb.be ], [ %i.dl, %bb.bd ], [ %i.dl, %bb.ad ], [ %i.dl, %JS_IsEmptyString.exit.thread ], [ %i.dl, %JS_ToStringFree.exit423 ]
  %i.sd = load ptr, ptr %11, align 8, !tbaa !644
  %i.se = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !649
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.sh, ptr noundef %i.sf)
  store ptr null, ptr %i.se, align 8, !tbaa !649
  br label %bb.dc

bb.dc:                                            ; preds = %.thread500, %._crit_edge670
  %.sroa.0292.sroa.0.2 = phi i64 [ %.sroa.0292.sroa.0.1, %.thread500 ], [ %.sroa.0292.sroa.0.0, %._crit_edge670 ] ; 2 uses
  %.sroa.0276.sroa.0.5 = phi i64 [ %.sroa.0276.sroa.0.4, %.thread500 ], [ %.sroa.0276.sroa.0.2.lcssa, %._crit_edge670 ] ; 2 uses
  %.sroa.7169.1 = phi i64 [ %.sroa.7169.0, %.thread500 ], [ %i.sc, %._crit_edge670 ]
  %.sroa.0168.sroa.0.1 = phi i64 [ %.sroa.0168.sroa.0.0, %.thread500 ], [ %i.sb, %._crit_edge670 ]
  %.sroa.0168.sroa.6.1 = phi i64 [ %.sroa.0168.sroa.6.0, %.thread500 ], [ %.sroa.0168.sroa.6.0.extract.shift, %._crit_edge670 ]
  %.sroa.0173.4 = phi i64 [ %.sroa.0173.3, %.thread500 ], [ %.sroa.0173.0.lcssa, %._crit_edge670 ] ; 2 uses
  %.sroa.12.4 = phi i64 [ %.sroa.12.3, %.thread500 ], [ %.sroa.12.0.lcssa, %._crit_edge670 ] ; 2 uses
  %.sroa.0186.6 = phi i64 [ %.sroa.0186.5, %.thread500 ], [ %.sroa.0186.0.lcssa, %._crit_edge670 ] ; 2 uses
  %.sroa.11.6 = phi i64 [ %.sroa.11.5, %.thread500 ], [ %.sroa.11.0.lcssa, %._crit_edge670 ] ; 2 uses
  %.sroa.15.4 = phi i64 [ %.sroa.15.3, %.thread500 ], [ %.sroa.15.0.lcssa, %._crit_edge670 ] ; 2 uses
  %.sroa.0195.sroa.0.4 = phi i32 [ %.sroa.0195.sroa.0.3, %.thread500 ], [ %.sroa.0195.sroa.0.0.lcssa, %._crit_edge670 ]
  %.sroa.0195.sroa.14.4 = phi i32 [ %.sroa.0195.sroa.14.3, %.thread500 ], [ %.sroa.0195.sroa.14.0.lcssa, %._crit_edge670 ]
  %.sroa.15284.6 = phi i64 [ %.sroa.15284.5, %.thread500 ], [ %.sroa.15284.2.lcssa, %._crit_edge670 ] ; 2 uses
  %.sroa.9295.3 = phi i64 [ %.sroa.9295.2, %.thread500 ], [ %.sroa.9295.0, %._crit_edge670 ] ; 2 uses
  %.sroa.0308.2 = phi i64 [ %.sroa.0308.1, %.thread500 ], [ %i.dk, %._crit_edge670 ] ; 2 uses
  %.sroa.11312.2 = phi i64 [ %.sroa.11312.1, %.thread500 ], [ %i.dl, %._crit_edge670 ] ; 2 uses
  %i.si = load i32, ptr %i.bq, align 8, !tbaa !1892 ; 2 uses
  %i.sj = icmp sgt i32 %i.si, 0
  br i1 %i.sj, label %.lr.ph.i.preheader, label %._crit_edge.i459

.lr.ph.i.preheader:                               ; preds = %bb.dc
  %.pre780 = load ptr, ptr %12, align 8, !tbaa !1891
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %JS_FreeValue.exit.i461
  %i.sk = phi ptr [ %i.tc, %JS_FreeValue.exit.i461 ], [ %.pre780, %.lr.ph.i.preheader ] ; 3 uses
  %i.sl = phi i32 [ %i.td, %JS_FreeValue.exit.i461 ], [ %i.si, %.lr.ph.i.preheader ]
  %i.sm = load ptr, ptr %i.bu, align 8, !tbaa !1895
  %i.sn = add nsw i32 %i.sl, -1                   ; 2 uses
  store i32 %i.sn, ptr %i.bq, align 8, !tbaa !1892
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.sm, i64 %i.so ; 2 uses
  %i.sq = load i64, ptr %i.sp, align 8            ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.ss = load i64, ptr %i.sr, align 8            ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !232
  %i.sv = trunc i64 %i.ss to i32
  %i.sw = icmp ugt i32 %i.sv, -10
  br i1 %i.sw, label %bb.dd, label %JS_FreeValue.exit.i461

bb.dd:                                            ; preds = %.lr.ph.i
  %i.sx = inttoptr i64 %i.sq to ptr
  %i.sy = getelementptr inbounds i8, ptr %i.sx, i64 -4 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !191 ; 2 uses
  %i.ta = add nsw i32 %i.sz, -1
  store i32 %i.ta, ptr %i.sy, align 4, !tbaa !191
  %i.tb = icmp slt i32 %i.sz, 2
  br i1 %i.tb, label %bb.de, label %JS_FreeValue.exit.i461

bb.de:                                            ; preds = %bb.dd
  call fastcc void @js_free_value_rt(ptr noundef %i.su, i64 %i.sq, i64 %i.ss), !inline_history !291
  %.pre779 = load ptr, ptr %12, align 8, !tbaa !1891
  br label %JS_FreeValue.exit.i461

JS_FreeValue.exit.i461:                           ; preds = %bb.de, %bb.dd, %.lr.ph.i
  %i.tc = phi ptr [ %.pre779, %bb.de ], [ %i.sk, %bb.dd ], [ %i.sk, %.lr.ph.i ]
  %i.td = load i32, ptr %i.bq, align 8, !tbaa !1892 ; 2 uses
  %i.te = icmp sgt i32 %i.td, 0
  br i1 %i.te, label %.lr.ph.i, label %._crit_edge.i459, !llvm.loop !1887

._crit_edge.i459:                                 ; preds = %JS_FreeValue.exit.i461, %bb.dc
  %i.tf = load ptr, ptr %i.bu, align 8, !tbaa !1895 ; 2 uses
  %.not.i460 = icmp eq ptr %i.tf, %i.bt
  br i1 %.not.i460, label %value_buffer_free.exit, label %bb.df

bb.df:                                            ; preds = %._crit_edge.i459
  %i.tg = load ptr, ptr %12, align 8, !tbaa !1891
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 16
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !232
  call void @js_free_rt(ptr noundef %i.ti, ptr noundef %i.tf)
  br label %value_buffer_free.exit

value_buffer_free.exit:                           ; preds = %._crit_edge.i459, %bb.df
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !1895
  store i32 4, ptr %i.br, align 4, !tbaa !1893
  %i.tj = load ptr, ptr %i.i, align 8, !tbaa !232 ; 3 uses
  %i.tk = trunc i64 %.sroa.9295.3 to i32
  %i.tl = icmp ugt i32 %i.tk, -10
  br i1 %i.tl, label %bb.dg, label %JS_FreeValue.exit462

bb.dg:                                            ; preds = %value_buffer_free.exit
  %i.tm = inttoptr i64 %.sroa.0292.sroa.0.2 to ptr
  %i.tn = getelementptr inbounds i8, ptr %i.tm, i64 -4 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 4, !tbaa !191 ; 2 uses
  %i.tp = add nsw i32 %i.to, -1
  store i32 %i.tp, ptr %i.tn, align 4, !tbaa !191
  %i.tq = icmp slt i32 %i.to, 2
  br i1 %i.tq, label %bb.dh, label %JS_FreeValue.exit462

bb.dh:                                            ; preds = %bb.dg
  call fastcc void @js_free_value_rt(ptr noundef %i.tj, i64 %.sroa.0292.sroa.0.2, i64 %.sroa.9295.3), !inline_history !291
  %.pre781 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %JS_FreeValue.exit462

JS_FreeValue.exit462:                             ; preds = %value_buffer_free.exit, %bb.dg, %bb.dh
  %i.tr = phi ptr [ %i.tj, %value_buffer_free.exit ], [ %i.tj, %bb.dg ], [ %.pre781, %bb.dh ] ; 3 uses
  %i.ts = trunc i64 %.sroa.15284.6 to i32
  %i.tt = icmp ugt i32 %i.ts, -10
  br i1 %i.tt, label %bb.di, label %JS_FreeValue.exit463

bb.di:                                            ; preds = %JS_FreeValue.exit462
  %i.tu = inttoptr i64 %.sroa.0276.sroa.0.5 to ptr
  %i.tv = getelementptr inbounds i8, ptr %i.tu, i64 -4 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !191 ; 2 uses
  %i.tx = add nsw i32 %i.tw, -1
  store i32 %i.tx, ptr %i.tv, align 4, !tbaa !191
  %i.ty = icmp slt i32 %i.tw, 2
  br i1 %i.ty, label %bb.dj, label %JS_FreeValue.exit463

bb.dj:                                            ; preds = %bb.di
  call fastcc void @js_free_value_rt(ptr noundef %i.tr, i64 %.sroa.0276.sroa.0.5, i64 %.sroa.15284.6), !inline_history !291
  %.pre782 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %JS_FreeValue.exit463

JS_FreeValue.exit463:                             ; preds = %JS_FreeValue.exit462, %bb.di, %bb.dj
  %i.tz = phi ptr [ %i.tr, %JS_FreeValue.exit462 ], [ %i.tr, %bb.di ], [ %.pre782, %bb.dj ] ; 3 uses
  %i.ua = trunc i64 %.sroa.11312.2 to i32
  %i.ub = icmp ugt i32 %i.ua, -10
  br i1 %i.ub, label %bb.dk, label %JS_FreeValue.exit464

bb.dk:                                            ; preds = %JS_FreeValue.exit463
  %i.uc = inttoptr i64 %.sroa.0308.2 to ptr
  %i.ud = getelementptr inbounds i8, ptr %i.uc, i64 -4 ; 2 uses
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !191 ; 2 uses
  %i.uf = add nsw i32 %i.ue, -1
  store i32 %i.uf, ptr %i.ud, align 4, !tbaa !191
  %i.ug = icmp slt i32 %i.ue, 2
  br i1 %i.ug, label %bb.dl, label %JS_FreeValue.exit464

bb.dl:                                            ; preds = %bb.dk
  call fastcc void @js_free_value_rt(ptr noundef %i.tz, i64 %.sroa.0308.2, i64 %.sroa.11312.2), !inline_history !291
  %.pre783 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %JS_FreeValue.exit464

JS_FreeValue.exit464:                             ; preds = %JS_FreeValue.exit463, %bb.dk, %bb.dl
  %i.uh = phi ptr [ %i.tz, %JS_FreeValue.exit463 ], [ %i.tz, %bb.dk ], [ %.pre783, %bb.dl ] ; 3 uses
  %.sroa.0195.sroa.14.0.insert.ext264 = zext i32 %.sroa.0195.sroa.14.4 to i64
  %.sroa.0195.sroa.14.0.insert.shift265 = shl nuw i64 %.sroa.0195.sroa.14.0.insert.ext264, 32
  %.sroa.0195.sroa.0.0.insert.ext231 = zext i32 %.sroa.0195.sroa.0.4 to i64
  %.sroa.0195.sroa.0.0.insert.insert233 = or disjoint i64 %.sroa.0195.sroa.14.0.insert.shift265, %.sroa.0195.sroa.0.0.insert.ext231 ; 2 uses
  %i.ui = trunc i64 %.sroa.15.4 to i32
  %i.uj = icmp ugt i32 %i.ui, -10
  br i1 %i.uj, label %bb.dm, label %JS_FreeValue.exit465

bb.dm:                                            ; preds = %JS_FreeValue.exit464
  %i.uk = inttoptr i64 %.sroa.0195.sroa.0.0.insert.insert233 to ptr
  %i.ul = getelementptr inbounds i8, ptr %i.uk, i64 -4 ; 2 uses
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !191 ; 2 uses
  %i.un = add nsw i32 %i.um, -1
  store i32 %i.un, ptr %i.ul, align 4, !tbaa !191
  %i.uo = icmp slt i32 %i.um, 2
  br i1 %i.uo, label %bb.dn, label %JS_FreeValue.exit465

bb.dn:                                            ; preds = %bb.dm
  call fastcc void @js_free_value_rt(ptr noundef %i.uh, i64 %.sroa.0195.sroa.0.0.insert.insert233, i64 %.sroa.15.4), !inline_history !291
  %.pre784 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %JS_FreeValue.exit465

JS_FreeValue.exit465:                             ; preds = %JS_FreeValue.exit464, %bb.dm, %bb.dn
  %i.up = phi ptr [ %i.uh, %JS_FreeValue.exit464 ], [ %i.uh, %bb.dm ], [ %.pre784, %bb.dn ] ; 3 uses
  %i.uq = trunc i64 %.sroa.11.6 to i32
  %i.ur = icmp ugt i32 %i.uq, -10
  br i1 %i.ur, label %bb.do, label %JS_FreeValue.exit466

bb.do:                                            ; preds = %JS_FreeValue.exit465
  %i.us = inttoptr i64 %.sroa.0186.6 to ptr
  %i.ut = getelementptr inbounds i8, ptr %i.us, i64 -4 ; 2 uses
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !191 ; 2 uses
  %i.uv = add nsw i32 %i.uu, -1
  store i32 %i.uv, ptr %i.ut, align 4, !tbaa !191
  %i.uw = icmp slt i32 %i.uu, 2
  br i1 %i.uw, label %bb.dp, label %JS_FreeValue.exit466

bb.dp:                                            ; preds = %bb.do
  call fastcc void @js_free_value_rt(ptr noundef %i.up, i64 %.sroa.0186.6, i64 %.sroa.11.6), !inline_history !291
  %.pre785 = load ptr, ptr %i.i, align 8, !tbaa !232
  br label %JS_FreeValue.exit466

JS_FreeValue.exit466:                             ; preds = %JS_FreeValue.exit465, %bb.do, %bb.dp
  %i.ux = phi ptr [ %i.up, %JS_FreeValue.exit465 ], [ %i.up, %bb.do ], [ %.pre785, %bb.dp ] ; 3 uses
  %i.uy = trunc i64 %.sroa.12.4 to i32
  %i.uz = icmp ugt i32 %i.uy, -10
  br i1 %i.uz, label %bb.dq, label %JS_FreeValue.exit467

bb.dq:                                            ; preds = %JS_FreeValue.exit466
  %i.va = inttoptr i64 %.sroa.0173.4 to ptr
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 -4 ; 2 uses
  %i.vc = load i32, ptr %i.vb, align 4, !tbaa !191 ; 2 uses
  %i.vd = add nsw i32 %i.vc, -1
end_hunk_2
begin_hunk_3_@js_parse_assign_expr2:bb.a
  %i.lh = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not247 = icmp eq i32 %i.lh, 0
  br i1 %.not247, label %.thread357, label %bb.cl

.thread352:                                       ; preds = %bb.cj
  %i.li = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not247353 = icmp eq i32 %i.li, 0
  br i1 %.not247353, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %.thread352, %bb.ck
  %i.lj = load ptr, ptr %0, align 8, !tbaa !553
  %i.lk = load i32, ptr %i.c, align 4, !tbaa !191
  tail call void @JS_FreeAtom(ptr noundef %i.lj, i32 noundef %i.lk)
  br label %.thread359

.thread357:                                       ; preds = %bb.ck
  %.val270 = load ptr, ptr %i.la, align 8, !tbaa !554
  tail call fastcc void @emit_op(ptr %.val270, i8 noundef zeroext 27)
  %.val269 = load ptr, ptr %i.la, align 8, !tbaa !554
  tail call fastcc void @emit_op(ptr %.val269, i8 noundef zeroext 113)
  %.val268 = load ptr, ptr %i.la, align 8, !tbaa !554
  tail call fastcc void @emit_op(ptr %.val268, i8 noundef zeroext 27)
  br label %bb.cr

bb.cm:                                            ; preds = %.thread352
  br i1 %i.kt, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  switch i32 %i.ky, label %bb.cr [
    i32 189, label %bb.co
    i32 59, label %bb.co
  ]

bb.co:                                            ; preds = %bb.cn, %bb.cn
  %i.ll = load i32, ptr %i.c, align 4, !tbaa !191
  %i.lm = icmp eq i32 %i.ll, %.0234
  br i1 %i.lm, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  tail call fastcc void @set_object_name(ptr noundef %0, i32 noundef %.0234)
  br label %bb.cr

bb.cq:                                            ; preds = %bb.cm
  %i.ln = trunc nsw i32 %i.ks to i8
  %i.lo = add nuw nsw i8 %i.ln, 20
  %i.lp = getelementptr i8, ptr %0, i64 160
  %.val267 = load ptr, ptr %i.lp, align 8, !tbaa !554
  tail call fastcc void @emit_op(ptr %.val267, i8 noundef zeroext %i.lo)
  br label %bb.cr

.thread359:                                       ; preds = %bb.ch, %bb.cl, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  br label %.thread

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co, %bb.cn, %.thread357
  %i.lq = load i32, ptr %i.b, align 4, !tbaa !191
  %i.lr = load i32, ptr %i.c, align 4, !tbaa !191
  %i.ls = load i32, ptr %i.d, align 4, !tbaa !191
  tail call fastcc void @put_lvalue(ptr noundef %0, i32 noundef %i.ky, i32 noundef %i.lq, i32 noundef %i.lr, i32 noundef %i.ls, i32 noundef 2, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #49
  br label %.thread

bb.cs:                                            ; preds = %js_parse_cond_expr.exit
  %i.lt = add i32 %i.ks, 111
  %or.cond12 = icmp ult i32 %i.lt, 3
  br i1 %or.cond12, label %bb.ct, label %.thread

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #49
  %i.lu = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not243 = icmp eq i32 %i.lu, 0
  br i1 %.not243, label %bb.cu, label %.thread364

bb.cu:                                            ; preds = %bb.ct
  %i.lv = call fastcc i32 @get_lvalue(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.f, i1 noundef zeroext true, i32 noundef %i.ks)
  %i.lw = icmp slt i32 %i.lv, 0
  br i1 %i.lw, label %.thread364, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lx = getelementptr i8, ptr %0, i64 160       ; 5 uses
  %.val266 = load ptr, ptr %i.lx, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val266, i8 noundef zeroext 17)
  %i.ly = icmp eq i32 %i.ks, -109
  br i1 %i.ly, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %.val265 = load ptr, ptr %i.lx, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val265, i8 noundef zeroext -81)
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.lz = icmp eq i32 %i.ks, -110
  %i.ma = select i1 %i.lz, i32 105, i32 104
  %i.mb = call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef %i.ma, i32 noundef -1)
  %.val264 = load ptr, ptr %i.lx, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val264, i8 noundef zeroext 14)
  %i.mc = call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not244 = icmp eq i32 %i.mc, 0
  br i1 %.not244, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.md = load ptr, ptr %0, align 8, !tbaa !553
  %i.me = load i32, ptr %i.c, align 4, !tbaa !191
  call void @JS_FreeAtom(ptr noundef %i.md, i32 noundef %i.me)
  br label %.thread364

bb.cz:                                            ; preds = %bb.cx
  %i.mf = load i32, ptr %i.a, align 4, !tbaa !191 ; 2 uses
  switch i32 %i.mf, label %bb.dc [
    i32 189, label %bb.da
    i32 59, label %bb.da
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz
  %i.mg = load i32, ptr %i.c, align 4, !tbaa !191
  %i.mh = icmp eq i32 %i.mg, %.0234
  br i1 %i.mh, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call fastcc void @set_object_name(ptr noundef %0, i32 noundef %.0234)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.cz, %bb.db, %bb.da
  %i.mi = load i32, ptr %i.f, align 4, !tbaa !191 ; 4 uses
  %i.mj = icmp ult i32 %i.mi, 4
  br i1 %i.mj, label %switch.lookup, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @abort() #50
  unreachable

switch.lookup:                                    ; preds = %bb.dc
  %switch.shiftamt = shl nuw nsw i32 %i.mi, 3
  %switch.downshift = lshr i32 387323153, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.val260 = load ptr, ptr %i.lx, align 8, !tbaa !554
  call fastcc void @emit_op(ptr %.val260, i8 noundef zeroext %switch.masked)
  %i.mk = load i32, ptr %i.b, align 4, !tbaa !191
  %i.ml = load i32, ptr %i.c, align 4, !tbaa !191
  %i.mm = load i32, ptr %i.e, align 4, !tbaa !191
  call fastcc void @put_lvalue(ptr noundef %0, i32 noundef %i.mf, i32 noundef %i.mk, i32 noundef %i.ml, i32 noundef %i.mm, i32 noundef 1, i1 noundef zeroext false)
  %i.mn = call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef 106, i32 noundef -1)
  call fastcc void @emit_label(ptr noundef %0, i32 noundef %i.mb)
  %.not245368 = icmp eq i32 %i.mi, 0
  br i1 %.not245368, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup, %emit_op.exit327
  %i.mo = phi i32 [ %i.na, %emit_op.exit327 ], [ %i.mi, %switch.lookup ]
  %.val = load ptr, ptr %i.lx, align 8, !tbaa !554 ; 4 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !466 ; 4 uses
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i32 %i.ms, ptr %i.mt, align 8, !tbaa !730
  %i.mu = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !465
  %i.mw = icmp eq i64 %i.mv, %i.mr
  br i1 %i.mw, label %bb.de, label %bb.df, !prof !192

bb.de:                                            ; preds = %.lr.ph
  call fastcc void @__dbuf_putc(ptr noundef nonnull %i.mp, i8 noundef zeroext 15)
  br label %emit_op.exit327

bb.df:                                            ; preds = %.lr.ph
  %i.mx = load ptr, ptr %i.mp, align 8, !tbaa !467
  %i.my = add i64 %i.mr, 1
  store i64 %i.my, ptr %i.mq, align 8, !tbaa !466
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mr
  store i8 15, ptr %i.mz, align 1, !tbaa !218
  br label %emit_op.exit327

emit_op.exit327:                                  ; preds = %bb.de, %bb.df
  %i.na = add nsw i32 %i.mo, -1                   ; 2 uses
  %.not245 = icmp eq i32 %i.na, 0
  br i1 %.not245, label %._crit_edge, label %.lr.ph, !llvm.loop !2073

.thread364:                                       ; preds = %bb.ct, %bb.cy, %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  br label %.thread

._crit_edge:                                      ; preds = %emit_op.exit327, %switch.lookup
  call fastcc void @emit_label(ptr noundef %0, i32 noundef %i.mn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  br label %.thread

.thread:                                          ; preds = %emit_op.exit21.i, %bb.bm, %emit_u32.exit.i, %emit_op.exit392, %bb.bj, %bb.ce, %bb.cd, %bb.cc, %bb.cf, %bb.bg, %bb.bf, %bb.az, %bb.cs, %bb.cr, %._crit_edge, %.thread364, %.thread359, %bb.c, %bb.e, %bb.f, %bb.j, %bb.k, %emit_u8.exit326, %bb.bh, %bb.av
  %.5 = phi i32 [ %i.gq, %bb.bh ], [ %i.es, %bb.av ], [ 0, %bb.cs ], [ 0, %emit_u8.exit326 ], [ -1, %bb.az ], [ -1, %.thread359 ], [ -1, %.thread364 ], [ -1, %bb.c ], [ -1, %bb.k ], [ -1, %bb.f ], [ -1, %bb.j ], [ -1, %bb.e ], [ 0, %emit_op.exit392 ], [ 0, %._crit_edge ], [ 0, %bb.cr ], [ -1, %bb.bg ], [ %i.gd, %bb.bf ], [ -1, %bb.cf ], [ -1, %bb.cc ], [ -1, %bb.cd ], [ -1, %bb.ce ], [ -1, %bb.bj ], [ 0, %emit_u32.exit.i ], [ -1, %bb.bm ], [ -1, %emit_op.exit21.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_logical_and_or(ptr noundef nonnull %0, i32 noundef range(i32 -95, -93) %1, i32 noundef range(i32 0, 18) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %1, -95                      ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @js_parse_expr_binary(ptr noundef %0, i32 noundef 8, i32 noundef %2)
  %.not27 = icmp eq i32 %i.b, 0
  br i1 %.not27, label %bb.d, label %emit_label.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i32 @js_parse_logical_and_or(ptr noundef %0, i32 noundef -95, i32 noundef %2)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %emit_label.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !661
  %i.f = icmp eq i32 %i.e, %1
  br i1 %i.f, label %bb.e, label %emit_label.exit

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !554  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 344 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 356 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !913  ; 3 uses
  %i.m = load i32, ptr %i.j, align 4, !tbaa !191
  %.not15.i.i = icmp slt i32 %i.l, %i.m
  br i1 %.not15.i.i, label %new_label_fd.exit.i, label %js_resize_array.exit.i.i, !prof !325

js_resize_array.exit.i.i:                         ; preds = %bb.e
  %i.n = add nsw i32 %i.l, 1
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !859
  %i.p = tail call fastcc i32 @js_realloc_array(ptr noundef %i.o, ptr noundef nonnull %i.i, i32 noundef 24, ptr noundef nonnull %i.j, i32 noundef %i.n), !inline_history !90
  %.not.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i, label %new_label_fd.exit.thread.i

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i: ; preds = %js_resize_array.exit.i.i
  %.pre.i.i = load i32, ptr %i.k, align 4, !tbaa !913
  br label %new_label_fd.exit.i

new_label_fd.exit.i:                              ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i, %bb.e
  %i.q = phi i32 [ %.pre.i.i, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i ], [ %i.l, %bb.e ] ; 5 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.k, align 4, !tbaa !913
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !733
  %i.t = sext i32 %i.q to i64
  %i.u = getelementptr inbounds [24 x i8], ptr %i.s, i64 %i.t ; 2 uses
  store <4 x i32> <i32 0, i32 -1, i32 -1, i32 -1>, ptr %i.u, align 8, !tbaa !191
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !914
  %i.w = icmp slt i32 %i.q, 0
  br i1 %i.w, label %new_label_fd.exit.thread.i, label %new_label.exit, !prof !543

new_label_fd.exit.thread.i:                       ; preds = %new_label_fd.exit.i, %js_resize_array.exit.i.i
  %.0.i5.i = phi i32 [ %i.q, %new_label_fd.exit.i ], [ -1, %js_resize_array.exit.i.i ]
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !554
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  store i8 1, ptr %i.y, align 8, !tbaa !470
  br label %new_label.exit

new_label.exit:                                   ; preds = %new_label_fd.exit.i, %new_label_fd.exit.thread.i
  %.0.i4.i = phi i32 [ %.0.i5.i, %new_label_fd.exit.thread.i ], [ %i.q, %new_label_fd.exit.i ] ; 6 uses
  br i1 %i.a, label %new_label.exit.split.us, label %new_label.exit.split

new_label.exit.split.us:                          ; preds = %new_label.exit, %bb.k
  %i.z = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not28.us = icmp eq i32 %i.z, 0
  br i1 %.not28.us, label %bb.f, label %emit_label.exit

bb.f:                                             ; preds = %new_label.exit.split.us
  %.val32.us = load ptr, ptr %i.g, align 8, !tbaa !554 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val32.us, i64 288 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val32.us, i64 296 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !466 ; 4 uses
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.val32.us, i64 336
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !730
  %i.af = getelementptr inbounds nuw i8, ptr %.val32.us, i64 304
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !465
  %i.ah = icmp eq i64 %i.ag, %i.ac
  br i1 %i.ah, label %bb.h, label %bb.g, !prof !192

bb.g:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.aa, align 8, !tbaa !467
  %i.aj = add i64 %i.ac, 1
  store i64 %i.aj, ptr %i.ab, align 8, !tbaa !466
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ac
  store i8 17, ptr %i.ak, align 1, !tbaa !218
  br label %emit_op.exit.us

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.aa, i8 noundef zeroext 17)
  br label %emit_op.exit.us

emit_op.exit.us:                                  ; preds = %bb.h, %bb.g
  %i.al = tail call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef 104, i32 noundef %.0.i4.i) ; 0 uses
  %.val.us = load ptr, ptr %i.g, align 8, !tbaa !554 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.us, i64 288 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val.us, i64 296 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !466 ; 4 uses
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.us, i64 336
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !730
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.us, i64 304
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !465
  %i.at = icmp eq i64 %i.as, %i.ao
  br i1 %i.at, label %bb.j, label %bb.i, !prof !192

bb.i:                                             ; preds = %emit_op.exit.us
  %i.au = load ptr, ptr %i.am, align 8, !tbaa !467
  %i.av = add i64 %i.ao, 1
  store i64 %i.av, ptr %i.an, align 8, !tbaa !466
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ao
  store i8 14, ptr %i.aw, align 1, !tbaa !218
  br label %emit_op.exit33.us

bb.j:                                             ; preds = %emit_op.exit.us
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.am, i8 noundef zeroext 14)
  br label %emit_op.exit33.us

emit_op.exit33.us:                                ; preds = %bb.j, %bb.i
  %i.ax = tail call fastcc i32 @js_parse_expr_binary(ptr noundef %0, i32 noundef 8, i32 noundef %2)
  %.not30.us = icmp eq i32 %i.ax, 0
  br i1 %.not30.us, label %bb.k, label %emit_label.exit

bb.k:                                             ; preds = %emit_op.exit33.us
  %i.ay = load i32, ptr %i.d, align 8, !tbaa !661 ; 2 uses
  %.not31.us = icmp eq i32 %i.ay, -95
  br i1 %.not31.us, label %new_label.exit.split.us, label %.split.us

new_label.exit.split:                             ; preds = %new_label.exit, %bb.q
  %i.az = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not28 = icmp eq i32 %i.az, 0
  br i1 %.not28, label %bb.l, label %emit_label.exit

bb.l:                                             ; preds = %new_label.exit.split
  %.val32 = load ptr, ptr %i.g, align 8, !tbaa !554 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val32, i64 288 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val32, i64 296 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !466 ; 4 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %.val32, i64 336
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !730
  %i.bf = getelementptr inbounds nuw i8, ptr %.val32, i64 304
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !465
  %i.bh = icmp eq i64 %i.bg, %i.bc
  br i1 %i.bh, label %bb.m, label %bb.n, !prof !192

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.ba, i8 noundef zeroext 17)
  br label %emit_op.exit

bb.n:                                             ; preds = %bb.l
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !467
  %i.bj = add i64 %i.bc, 1
  store i64 %i.bj, ptr %i.bb, align 8, !tbaa !466
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bc
  store i8 17, ptr %i.bk, align 1, !tbaa !218
  br label %emit_op.exit

emit_op.exit:                                     ; preds = %bb.m, %bb.n
  %i.bl = tail call fastcc i32 @emit_goto(ptr noundef %0, i32 noundef 105, i32 noundef %.0.i4.i) ; 0 uses
  %.val = load ptr, ptr %i.g, align 8, !tbaa !554 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !466 ; 4 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i32 %i.bp, ptr %i.bq, align 8, !tbaa !730
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !465
  %i.bt = icmp eq i64 %i.bs, %i.bo
  br i1 %i.bt, label %bb.o, label %bb.p, !prof !192

bb.o:                                             ; preds = %emit_op.exit
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.bm, i8 noundef zeroext 14)
  br label %emit_op.exit33

bb.p:                                             ; preds = %emit_op.exit
  %i.bu = load ptr, ptr %i.bm, align 8, !tbaa !467
  %i.bv = add i64 %i.bo, 1
  store i64 %i.bv, ptr %i.bn, align 8, !tbaa !466
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bo
  store i8 14, ptr %i.bw, align 1, !tbaa !218
  br label %emit_op.exit33

emit_op.exit33:                                   ; preds = %bb.o, %bb.p
  %i.bx = tail call fastcc i32 @js_parse_logical_and_or(ptr noundef %0, i32 noundef -95, i32 noundef %2)
  %.not29 = icmp eq i32 %i.bx, 0
  br i1 %.not29, label %bb.q, label %emit_label.exit

bb.q:                                             ; preds = %emit_op.exit33
  %i.by = load i32, ptr %i.d, align 8, !tbaa !661 ; 2 uses
  %.not31 = icmp eq i32 %i.by, -94
  br i1 %.not31, label %new_label.exit.split, label %.split.us

.split.us:                                        ; preds = %bb.q, %bb.k
  %.us-phi = phi i32 [ %i.ay, %bb.k ], [ %i.by, %bb.q ]
  %i.bz = icmp eq i32 %.us-phi, -90
  br i1 %i.bz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.split.us
  %i.ca = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.566) ; 0 uses
  br label %emit_label.exit

bb.s:                                             ; preds = %.split.us
  %i.cb = icmp sgt i32 %.0.i4.i, -1
  br i1 %i.cb, label %bb.t, label %emit_label.exit

bb.t:                                             ; preds = %bb.s
  %.val.i = load ptr, ptr %i.g, align 8, !tbaa !554 ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.val.i, i64 288 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i, i64 296 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !466 ; 4 uses
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %.val.i, i64 336
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !730
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 304
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !465
  %i.cj = icmp eq i64 %i.ci, %i.ce
  br i1 %i.cj, label %bb.u, label %bb.v, !prof !192

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.cc, i8 noundef zeroext -69)
  br label %emit_op.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ck = load ptr, ptr %i.cc, align 8, !tbaa !467
  %i.cl = add i64 %i.ce, 1
  store i64 %i.cl, ptr %i.cd, align 8, !tbaa !466
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.ce
  store i8 -69, ptr %i.cm, align 1, !tbaa !218
  br label %emit_op.exit.i

emit_op.exit.i:                                   ; preds = %bb.v, %bb.u
  %.val9.i = load ptr, ptr %i.g, align 8, !tbaa !554 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val9.i, i64 288 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.val9.i, i64 304
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !465
  %i.cq = getelementptr inbounds nuw i8, ptr %.val9.i, i64 296 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !466 ; 2 uses
  %i.cs = sub i64 %i.cp, %i.cr
  %i.ct = icmp ult i64 %i.cs, 4
  br i1 %i.ct, label %bb.w, label %bb.x, !prof !192

bb.w:                                             ; preds = %emit_op.exit.i
  %i.cu = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.cn, i32 noundef %.0.i4.i) ; 0 uses
  br label %emit_u32.exit.i

bb.x:                                             ; preds = %emit_op.exit.i
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !467
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cr
  store i32 %.0.i4.i, ptr %i.cw, align 1
  %i.cx = load i64, ptr %i.cq, align 8, !tbaa !466
  %i.cy = add i64 %i.cx, 4
  store i64 %i.cy, ptr %i.cq, align 8, !tbaa !466
  br label %emit_u32.exit.i

emit_u32.exit.i:                                  ; preds = %bb.x, %bb.w
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !554 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 296
  %i.db = load i64, ptr %i.da, align 8, !tbaa !732
  %i.dc = trunc i64 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 344
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !733
  %i.df = zext nneg i32 %.0.i4.i to i64
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.de, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 %i.dc, ptr %i.dh, align 4, !tbaa !736
  br label %emit_label.exit

emit_label.exit:                                  ; preds = %new_label.exit.split, %emit_op.exit33, %emit_op.exit33.us, %new_label.exit.split.us, %emit_u32.exit.i, %bb.s, %bb.d, %bb.c, %bb.b, %bb.r
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.c ], [ 0, %bb.d ], [ -1, %bb.r ], [ 0, %bb.s ], [ 0, %emit_u32.exit.i ], [ -1, %emit_op.exit33.us ], [ -1, %new_label.exit.split.us ], [ -1, %emit_op.exit33 ], [ -1, %new_label.exit.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_expr_binary(ptr noundef nonnull %0, i32 noundef range(i32 0, 9) %1, i32 noundef range(i32 0, 18) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc i32 @js_parse_unary(ptr noundef %0, i32 noundef 4)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !661
  %i.e = icmp eq i32 %i.d, -87
  %i.f = trunc i32 %2 to i1
  %i.g = icmp eq i32 %1, 4
  %or.cond = and i1 %i.g, %i.f
  %or.cond57 = and i1 %or.cond, %i.e
  br i1 %or.cond57, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 120
  %.val60 = load ptr, ptr %i.h, align 8, !tbaa !655
  %i.i = tail call fastcc i32 @peek_token(ptr %.val60, i1 noundef zeroext false)
  %i.j = icmp eq i32 %i.i, -73
  br i1 %i.j, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.l = load i32, ptr %i.k, align 8, !tbaa !218  ; 5 uses
  %i.m = icmp slt i32 %i.l, 242
  br i1 %i.m, label %JS_DupAtom.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %0, align 8, !tbaa !553
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !232
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1104
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !297
  %i.s = zext nneg i32 %i.l to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !299
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !191
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.v, align 4, !tbaa !191
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %bb.e, %bb.f
  %i.y = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not52 = icmp eq i32 %i.y, 0
  br i1 %.not52, label %bb.g, label %bb.j

bb.g:                                             ; preds = %JS_DupAtom.exit
  %i.z = load i32, ptr %i.c, align 8, !tbaa !661
  %.not53 = icmp eq i32 %i.z, -73
  br i1 %.not53, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not54 = icmp eq i32 %i.aa, 0
  br i1 %.not54, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = tail call fastcc i32 @js_parse_expr_binary(ptr noundef %0, i32 noundef 3, i32 noundef %2)
  %.not55 = icmp eq i32 %i.ab, 0
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %JS_DupAtom.exit
  %i.ac = load ptr, ptr %0, align 8, !tbaa !553
  tail call void @JS_FreeAtom(ptr noundef %i.ac, i32 noundef %i.l)
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %0, i64 160       ; 2 uses
  %.val58 = load ptr, ptr %i.ad, align 8, !tbaa !554
  tail call fastcc void @emit_op(ptr %.val58, i8 noundef zeroext -58)
  tail call fastcc void @emit_atom(ptr noundef %0, i32 noundef %i.l)
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !554 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 160
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !717
  %i.ah = trunc i32 %i.ag to i16
  tail call fastcc void @emit_u16(ptr %i.ae, i16 noundef zeroext %i.ah)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !553
  tail call void @JS_FreeAtom(ptr noundef %i.ai, i32 noundef %i.l)
  br label %.loopexit
end_hunk_3
