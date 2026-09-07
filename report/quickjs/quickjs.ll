Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 175
begin_hunk_0_@js_new_string8_len:bb.a
  %i.u = icmp eq ptr %i.q, %i.t
  br i1 %i.u, label %str8.exit10, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !219
  %i.x = tail call i64 %i.w(ptr noundef nonnull %i.q) #49, !inline_history !24 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not15.i.i.i, i64 8, i64 %i.x
  br label %str8.exit10

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 -6
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !218
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !221
  %i.ae = zext i16 %i.ad to i64
  br label %str8.exit10

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.af = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1256 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !233, !range !234, !noundef !235
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %js_alloc_string.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ag, align 8, !tbaa !233
  %i.aj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !393 ; 0 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !233
  br label %js_alloc_string.exit.thread

str8.exit10:                                      ; preds = %bb.e, %bb.f, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.e ], [ %i.y, %bb.f ], [ %i.ae, %bb.g ]
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !196
  %i.al = add i64 %i.ak, %.011.i.i.i
  store i64 %i.al, ptr %i.g, align 8, !tbaa !196
  %i.am = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 1, ptr %i.am, align 4, !tbaa !191
  %i.an = and i32 %2, 2147483647
  %i.ao = zext nneg i32 %i.an to i64
  store i64 %i.ao, ptr %i.n, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !249
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aq, ptr align 1 %1, i64 %i.c, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.c
  store i8 0, ptr %i.ar, align 1, !tbaa !218
  %i.as = ptrtoint ptr %i.n to i64
  br label %js_alloc_string.exit.thread

js_alloc_string.exit.thread:                      ; preds = %bb.i, %bb.h, %str8.exit10
  %.sroa.0.0 = phi i64 [ %i.as, %str8.exit10 ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.sroa.4.0 = phi i64 [ -7, %str8.exit10 ], [ 6, %bb.h ], [ 6, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @__JS_NewAtom(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #2 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 3
  br i1 %i.a, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8                ; 4 uses
  %i.c = lshr i64 %i.b, 62
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = icmp eq i32 %2, %i.d
  br i1 %i.e, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !249
  %.not.i = icmp ugt i64 %i.b, -4611686018427387905
  br i1 %.not.i, label %js_get_atom_index.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !243
  %i.j = lshr i64 %i.b, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = and i32 %i.k, 268435455
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.n = load i32, ptr %i.m, align 8, !tbaa !242
  %i.o = add nsw i32 %i.n, -1
  %i.p = and i32 %i.l, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !297
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.012.in.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.e ]
  %.012.i = load i32, ptr %.012.in.i, align 4, !tbaa !191 ; 2 uses
  %.pn.i = zext i32 %.012.i to i64
  %.0.in.i = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.pn.i
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !299 ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, %1
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br i1 %.not13.i, label %js_get_atom_index.exit, label %bb.e, !llvm.loop !26

js_get_atom_index.exit:                           ; preds = %bb.e, %bb.c
  %.1.i = phi i32 [ %i.g, %bb.c ], [ %.012.i, %bb.e ] ; 3 uses
  %i.v = icmp slt i32 %.1.i, 242
  br i1 %i.v, label %bb.f, label %js_free_string.exit170

bb.f:                                             ; preds = %js_get_atom_index.exit
  %i.w = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !191
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !191
  br label %js_free_string.exit170

bb.g:                                             ; preds = %bb.b
  %i.z = trunc i64 %i.b to i32
  %i.aa = and i32 %i.z, 2147483647                ; 2 uses
  %i.ab = tail call fastcc i32 @hash_string(ptr noundef nonnull %1, i32 noundef %2)
  %i.ac = and i32 %i.ab, 268435455                ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !242
  %i.af = add i32 %i.ae, 268435455
  %i.ag = and i32 %i.af, %i.ac                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !243
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %.0130198 = load i32, ptr %i.ak, align 4, !tbaa !191 ; 2 uses
  %.not199 = icmp eq i32 %.0130198, 0
  br i1 %.not199, label %.loopexit196, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1104
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.0130200 = phi i32 [ %.0130198, %.lr.ph ], [ %.0130, %bb.l ] ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !297
  %i.an = zext i32 %.0130200 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !299 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 3 uses
  %i.ar = lshr i64 %i.aq, 32
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = and i32 %i.as, 268435455
  %i.au = icmp eq i32 %i.at, %i.ac
  %i.av = lshr i64 %i.aq, 62
  %i.aw = trunc nuw nsw i64 %i.av to i32
  %i.ax = icmp eq i32 %2, %i.aw
  %or.cond = select i1 %i.au, i1 %i.ax, i1 false
  %i.ay = trunc i64 %i.aq to i32
  %i.az = and i32 %i.ay, 2147483647
  %i.ba = icmp eq i32 %i.az, %i.aa
  %or.cond157 = and i1 %i.ba, %or.cond
  br i1 %or.cond157, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bb = tail call fastcc i32 @js_string_memcmp(ptr noundef nonnull %i.ap, ptr noundef nonnull %1, i32 noundef %i.aa)
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bd = icmp slt i32 %.0130200, 242
  br i1 %i.bd, label %.thread192, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds i8, ptr %i.ap, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !191
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !191
  br label %.thread192

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0130 = load i32, ptr %i.bh, align 8, !tbaa !191 ; 2 uses
  %.not = icmp eq i32 %.0130, 0
  br i1 %.not, label %.loopexit196, label %bb.h, !llvm.loop !1043

bb.m:                                             ; preds = %bb.a
  %i.bi = icmp ne i32 %2, 3
  %. = zext i1 %i.bi to i32
  br label %.loopexit196

.loopexit196:                                     ; preds = %bb.l, %bb.g, %bb.m
  %.0133 = phi i32 [ 3, %bb.m ], [ %2, %bb.g ], [ %2, %bb.l ] ; 3 uses
  %.0132 = phi i32 [ %., %bb.m ], [ %i.ac, %bb.g ], [ %i.ac, %bb.l ]
  %.0131 = phi i32 [ 0, %bb.m ], [ %i.ag, %bb.g ], [ %i.ag, %bb.l ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !246
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.loopexit196
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !245
  %i.bo = mul nsw i32 %i.bn, 3
  %i.bp = sdiv i32 %i.bo, 2
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.bp, i32 711) ; 8 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !297
  %i.bs = zext nneg i32 %..i to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call ptr @js_realloc_rt(ptr noundef nonnull %0, ptr noundef %i.br, i64 noundef %i.bt) ; 8 uses
  %.not145 = icmp eq ptr %i.bu, null
  br i1 %.not145, label %bb.ay, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !245 ; 5 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !196
  %i.ca = add i64 %i.bz, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !197
  %i.cd = add i64 %i.cc, -1
  %i.ce = icmp ugt i64 %i.ca, %i.cd
  br i1 %i.ce, label %js_arena_malloc.exit.thread, label %bb.q, !prof !192

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !222 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.cf
  br i1 %i.ci, label %bb.r, label %bb.s, !prof !192

bb.r:                                             ; preds = %bb.q
  %i.cj = tail call fastcc ptr @arena_new(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not.i174 = icmp eq ptr %i.cj, null
  br i1 %.not.i174, label %js_arena_malloc.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i172 = phi ptr [ %i.cj, %bb.r ], [ %i.ch, %bb.q ] ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i172, i64 38 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !221 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i172, i64 40
  %i.cn = zext i16 %i.cl to i64
  %i.co = shl nuw nsw i64 %i.cn, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co ; 8 uses
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !218
  store i16 %i.cq, ptr %i.ck, align 2, !tbaa !221
  store i16 %i.cl, ptr %i.cp, align 8, !tbaa !218
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i172, i64 34 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !221
  %i.ct = add i16 %i.cs, 1                        ; 2 uses
  store i16 %i.ct, ptr %i.cr, align 2, !tbaa !221
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i172, i64 36
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !221
  %i.cw = icmp eq i16 %i.ct, %i.cv
  br i1 %i.cw, label %bb.t, label %js_arena_calloc.exit.thread26.i.i, !prof !192

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %.0.i172, align 8, !tbaa !223 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i172, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !222 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !222
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i172, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i

js_arena_calloc.exit.thread26.i.i:                ; preds = %bb.t, %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.dc = load i64, ptr %i.bx, align 8, !tbaa !217
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.bx, align 8, !tbaa !217
  %i.de = load i16, ptr %i.cp, align 8, !tbaa !218
  %i.df = icmp eq i16 %i.de, -1
  br i1 %i.df, label %bb.u, label %bb.w

bb.u:                                             ; preds = %js_arena_calloc.exit.thread26.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dh = icmp eq ptr %i.cp, %i.dg
  br i1 %i.dh, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !219
  %i.dk = tail call i64 %i.dj(ptr noundef nonnull %i.cp) #49, !inline_history !3 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.dk, 0
  %i.dl = select i1 %.not15.i.i.i, i64 8, i64 %i.dk
  br label %.thread

bb.w:                                             ; preds = %js_arena_calloc.exit.thread26.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !218
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !221
  %i.dr = zext i16 %i.dq to i64
  br label %.thread

js_arena_malloc.exit.thread:                      ; preds = %bb.r, %bb.p
  tail call void @js_free_rt(ptr noundef nonnull %0, ptr noundef nonnull %i.bu)
  br label %bb.ay

.thread:                                          ; preds = %bb.u, %bb.v, %bb.w
  %.011.i.i.i = phi i64 [ 8, %bb.u ], [ %i.dl, %bb.v ], [ %i.dr, %bb.w ]
  %i.ds = load i64, ptr %i.by, align 8, !tbaa !196
  %i.dt = add i64 %i.ds, %.011.i.i.i
  store i64 %i.dt, ptr %i.by, align 8, !tbaa !196
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 1, ptr %i.du, align 4, !tbaa !191
  %i.dv = load i64, ptr %i.db, align 8
  %i.dw = or i64 %i.dv, -4611686018427387904
  store i64 %i.dw, ptr %i.db, align 8
  store ptr %i.db, ptr %i.bu, align 8, !tbaa !299
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1084 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !244
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !244
  store i32 %..i, ptr %i.bm, align 8, !tbaa !245
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !297
  store i32 1, ptr %i.bj, align 8, !tbaa !246
  br label %.lr.ph202

bb.x:                                             ; preds = %bb.o
  store i32 %..i, ptr %i.bm, align 8, !tbaa !245
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !297
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !246
  %i.ea = icmp ult i32 %i.bv, %..i
  br i1 %i.ea, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %.thread, %bb.x
  %.0127222 = phi i32 [ 1, %.thread ], [ %i.bv, %bb.x ]
  %i.eb = add nsw i32 %..i, -1                    ; 2 uses
  %i.ec = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 1) ; 5 uses
  %umax = zext i32 %i.ec to i64                   ; 3 uses
  %i.ed = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ee = add i32 %..i, %i.ec
  %i.ef = sub i32 %i.ee, %.0127222
  %i.eg = sub i32 %..i, %i.ec
  %.neg = add i32 %i.ec, 1
  %xtraiter = and i32 %i.eg, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph202
  %i.eh = icmp eq i32 %i.ec, %i.eb
  %indvars.iv.next.prol = add nuw nsw i64 %umax, 1 ; 2 uses
  %i.ei = shl nuw nsw i64 %indvars.iv.next.prol, 1
  %i.ej = and i64 %i.ei, 8589934590
  %i.ek = or disjoint i64 %i.ej, 1
  %i.el = inttoptr i64 %i.ek to ptr
  %i.em = select i1 %i.eh, ptr inttoptr (i64 1 to ptr), ptr %i.el
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %umax
  store ptr %i.em, ptr %i.en, align 8, !tbaa !299
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph202
  %indvars.iv.unr = phi i64 [ %umax, %.lr.ph202 ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.eo = icmp eq i32 %..i, %.neg
  br i1 %i.eo, label %.loopexit, label %.lr.ph202.new

.lr.ph202.new:                                    ; preds = %.prol.loopexit, %.lr.ph202.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph202.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ep = icmp eq i64 %indvars.iv, %i.ed
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.eq = shl nuw nsw i64 %indvars.iv.next, 1
  %i.er = and i64 %i.eq, 8589934590
  %i.es = or disjoint i64 %i.er, 1
  %i.et = select i1 %i.ep, i64 1, i64 %i.es
  %i.eu = inttoptr i64 %i.et to ptr
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !299
  %i.ew = icmp eq i64 %indvars.iv.next, %i.ed
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ex = trunc i64 %indvars.iv.next.1 to i32
  %i.ey = shl nuw nsw i64 %indvars.iv.next.1, 1
  %i.ez = and i64 %i.ey, 8589934590
  %i.fa = or disjoint i64 %i.ez, 1
  %i.fb = select i1 %i.ew, i64 1, i64 %i.fa
  %i.fc = inttoptr i64 %i.fb to ptr
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv.next
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !299
  %exitcond.not.1 = icmp eq i32 %i.ef, %i.ex
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph202.new, !llvm.loop !1044

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph202.new, %bb.x, %.loopexit196
  %.not147 = icmp eq ptr %1, null
  br i1 %.not147, label %bb.am, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.fe = load i64, ptr %1, align 8               ; 3 uses
  %i.ff = icmp ult i64 %i.fe, 4611686018427387904
  br i1 %i.ff, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fg = zext nneg i32 %.0133 to i64
  %i.fh = shl nuw i64 %i.fg, 62
  %i.fi = or disjoint i64 %i.fe, %i.fh
  store i64 %i.fi, ptr %1, align 8
  br label %js_free_string.exit

bb.aa:                                            ; preds = %bb.y
  %i.fj = trunc i64 %i.fe to i32                  ; 2 uses
  %i.fk = and i32 %i.fj, 2147483647
  %i.fl = lshr i32 %i.fj, 31                      ; 2 uses
  %i.fm = shl nuw i32 %i.fk, %i.fl
  %i.fn = sext i32 %i.fm to i64
  %i.fo = add nsw i64 %i.fn, 25                   ; 2 uses
  %i.fp = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fq = sub nsw i64 %i.fo, %i.fp                ; 2 uses
  %i.fr = icmp eq i64 %i.fo, %i.fp
  br i1 %i.fr, label %.thread192, label %bb.ab, !prof !192

bb.ab:                                            ; preds = %bb.aa
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !196
  %i.fv = add i64 %i.fu, %i.fq
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !197
  %i.fy = add i64 %i.fx, -1
  %i.fz = icmp ugt i64 %i.fv, %i.fy
  br i1 %i.fz, label %.thread192, label %bb.ac, !prof !192

bb.ac:                                            ; preds = %bb.ab
  %i.ga = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef %i.fq) ; 10 uses
  %.not.i158 = icmp eq ptr %i.ga, null
  br i1 %.not.i158, label %.thread192, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gb = load i64, ptr %i.fs, align 8, !tbaa !217
  %i.gc = add i64 %i.gb, 1
  store i64 %i.gc, ptr %i.fs, align 8, !tbaa !217
  %i.gd = getelementptr inbounds i8, ptr %i.ga, i64 -8 ; 3 uses
  %i.ge = load i16, ptr %i.gd, align 8, !tbaa !218
  %i.gf = icmp eq i16 %i.ge, -1
  br i1 %i.gf, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.gh = icmp eq ptr %i.gd, %i.gg
  br i1 %i.gh, label %str8.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !219
  %i.gk = tail call i64 %i.gj(ptr noundef nonnull %i.gd) #49, !inline_history !1 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.gk, 0
  %i.gl = select i1 %.not15.i.i, i64 8, i64 %i.gk
  br label %str8.exit

bb.ag:                                            ; preds = %bb.ad
  %i.gm = getelementptr inbounds i8, ptr %i.ga, i64 -6
  %i.gn = load i8, ptr %i.gm, align 2, !tbaa !218
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !221
  %i.gr = zext i16 %i.gq to i64
  br label %str8.exit

str8.exit:                                        ; preds = %bb.ag, %bb.af, %bb.ae
  %.011.i.i = phi i64 [ 8, %bb.ae ], [ %i.gl, %bb.af ], [ %i.gr, %bb.ag ]
  %i.gs = load i64, ptr %i.ft, align 8, !tbaa !196
  %i.gt = add i64 %i.gs, %.011.i.i
  store i64 %i.gt, ptr %i.ft, align 8, !tbaa !196
  %i.gu = getelementptr inbounds i8, ptr %i.ga, i64 -4
  store i32 1, ptr %i.gu, align 4, !tbaa !191
  %i.gv = load i64, ptr %1, align 8
  %i.gw = and i64 %i.gv, 2147483648
  %i.gx = load i64, ptr %i.ga, align 8
  %i.gy = and i64 %i.gx, -2147483649
  %i.gz = or disjoint i64 %i.gy, %i.gw            ; 2 uses
  store i64 %i.gz, ptr %i.ga, align 8
  %i.ha = load i64, ptr %1, align 8
  %i.hb = and i64 %i.ha, 2147483647
  %i.hc = and i64 %i.gz, -3458764515968024576
  %i.hd = or disjoint i64 %i.hc, %i.hb
  store i64 %i.hd, ptr %i.ga, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.hf = load i64, ptr %1, align 8               ; 2 uses
  %i.hg = lshr i64 %i.hf, 60
  %i.hh = trunc nuw nsw i64 %i.hg to i32
  %i.hi = and i32 %i.hh, 3
  switch i32 %i.hi, label %default.unreachable [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.ah:                                            ; preds = %str8.exit
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str8.exit163

bb.ai:                                            ; preds = %str8.exit
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !389
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ho = load i32, ptr %i.hn, align 8, !tbaa !390
  %i.hp = zext i32 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hp
  br label %str8.exit163

bb.aj:                                            ; preds = %str8.exit
  %i.hr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !239
  br label %str8.exit163

default.unreachable:                              ; preds = %str8.exit
  unreachable

bb.ak:                                            ; preds = %str8.exit
  tail call void @abort() #50
  unreachable

str8.exit163:                                     ; preds = %bb.ah, %bb.ai, %bb.aj
  %.0.i.i161 = phi ptr [ %i.hj, %bb.ah ], [ %i.hq, %bb.ai ], [ %i.hs, %bb.aj ]
  %i.ht = trunc i64 %i.hf to i32                  ; 3 uses
  %i.hu = and i32 %i.ht, 2147483647
  %i.hv = lshr i32 %i.ht, 31
  %i.hw = shl nuw i32 %i.hu, %i.hv
  %isnotneg = icmp sgt i32 %i.ht, -1
  %i.hx = zext i1 %isnotneg to i32
  %i.hy = add nuw i32 %i.hw, %i.hx
  %i.hz = sext i32 %i.hy to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.he, ptr align 1 %.0.i.i161, i64 %i.hz, i1 false)
  %i.ia = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !191 ; 2 uses
  %i.ic = add nsw i32 %i.ib, -1
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !191
  %i.id = icmp slt i32 %i.ib, 2
  br i1 %i.id, label %bb.al, label %js_free_string.exit

bb.al:                                            ; preds = %str8.exit163
  tail call fastcc void @js_free_string0(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !27
  br label %js_free_string.exit

bb.am:                                            ; preds = %.loopexit
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !196
  %i.ih = add i64 %i.ig, 24
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !197
  %i.ik = add i64 %i.ij, -1
  %i.il = icmp ugt i64 %i.ih, %i.ik
  br i1 %i.il, label %js_free_string.exit170, label %bb.an, !prof !192

bb.an:                                            ; preds = %bb.am
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !222 ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.im
  br i1 %i.ip, label %bb.ao, label %bb.ap, !prof !192

bb.ao:                                            ; preds = %bb.an
  %i.iq = tail call fastcc ptr @arena_new(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not.i178 = icmp eq ptr %i.iq, null
end_hunk_0
begin_hunk_1_@async_func_init:bb.a
  %i.w = add nuw nsw i32 %i.s, %i.v
  %i.x = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1)
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 8, !tbaa !534
  %i.ac = zext i16 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.z, %i.ad             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !232 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 3 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !196
  %i.ak = add i64 %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 56
  %i.am = load i64, ptr %i.al, align 8, !tbaa !197
  %i.an = add i64 %i.am, -1
  %i.ao = icmp ugt i64 %i.ak, %i.an
  br i1 %i.ao, label %bb.g, label %bb.b, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.ap = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ag, i64 noundef %i.ae), !inline_history !237 ; 5 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.af, align 8, !tbaa !232
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aq = load i64, ptr %i.ah, align 8, !tbaa !217
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ah, align 8, !tbaa !217
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -8 ; 3 uses
  %i.at = load i16, ptr %i.as, align 8, !tbaa !218
  %i.au = icmp eq i16 %i.at, -1
  br i1 %i.au, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 1064
  %i.aw = icmp eq ptr %i.as, %i.av
  br i1 %i.aw, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !219
  %i.az = tail call i64 %i.ay(ptr noundef nonnull %i.as) #49, !inline_history !5 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.az, 0
  %i.ba = select i1 %.not15.i.i.i, i64 8, i64 %i.az
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  %i.bb = getelementptr inbounds i8, ptr %i.ap, i64 -6
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !218
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !221
  %i.bg = zext i16 %i.bf to i64
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i, %bb.a
  %i.bh = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ag, %bb.a ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1256 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !233, !range !234, !noundef !235
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %js_malloc.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.bi, align 8, !tbaa !233
  %i.bl = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !238 ; 0 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !233
  br label %js_malloc.exit.thread

js_malloc.exit.thread:                            ; preds = %bb.g, %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr null, ptr %i.bm, align 8, !tbaa !273
  br label %.loopexit

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.011.i.i.i = phi i64 [ 8, %bb.d ], [ %i.ba, %bb.e ], [ %i.bg, %bb.f ]
  %i.bn = load i64, ptr %i.ai, align 8, !tbaa !196
  %i.bo = add i64 %i.bn, %.011.i.i.i
  store i64 %i.bo, ptr %i.ai, align 8, !tbaa !196
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  store ptr %i.ap, ptr %i.bp, align 8, !tbaa !273
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.br = trunc i64 %3 to i32
  %i.bs = icmp ugt i32 %i.br, -10
  br i1 %i.bs, label %bb.j, label %js_dup.exit

bb.j:                                             ; preds = %bb.i
  %i.bt = getelementptr inbounds i8, ptr %i.a, i64 -4 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !191
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !191
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.i, %bb.j
  store i64 %2, ptr %i.bq, align 8, !tbaa !218
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %3, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !240
  %i.bw = trunc i64 %5 to i32
  %i.bx = icmp ugt i32 %i.bw, -10
  br i1 %i.bx, label %bb.k, label %js_dup.exit70

bb.k:                                             ; preds = %js_dup.exit
  %i.by = inttoptr i64 %4 to ptr
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !191
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !191
  br label %js_dup.exit70

js_dup.exit70:                                    ; preds = %js_dup.exit, %bb.k
  store i64 %4, ptr %1, align 8, !tbaa !218
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %5, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !240
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 %6, ptr %i.cc, align 8, !tbaa !289
  %i.cd = trunc i32 %..i to i16
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 82
  store i16 %i.cd, ptr %i.ce, align 2, !tbaa !271
  %i.cf = zext nneg i32 %..i to i64
  %i.cg = getelementptr [16 x i8], ptr %i.ap, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !532
  %i.ci = load i16, ptr %i.p, align 2, !tbaa !429 ; 2 uses
  %i.cj = zext i16 %i.ci to i64
  %i.ck = getelementptr [16 x i8], ptr %i.cg, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !334
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr null, ptr %i.cm, align 8, !tbaa !331
  %i.cn = load i16, ptr %i.t, align 2, !tbaa !533
  %i.co = zext i16 %i.cn to i64
  %i.cp = getelementptr [16 x i8], ptr %i.ck, i64 %i.co ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !521
  %i.cr = load i16, ptr %i.aa, align 8, !tbaa !534 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i16 %i.cr, ptr %i.cs, align 8, !tbaa !535
  %.not = icmp eq i16 %i.cr, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %js_dup.exit70
  %i.ct = zext i16 %i.cr to i64
  %i.cu = shl nuw nsw i64 %i.ct, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cp, i8 0, i64 %i.cu, i1 false), !tbaa !445
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %js_dup.exit70
  %i.cv = icmp sgt i32 %6, 0
  br i1 %i.cv, label %.lr.ph78.preheader, label %._crit_edge

.lr.ph78.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %6 to i64
  br label %.lr.ph78

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %js_dup.exit73
  %indvars.iv = phi i64 [ 0, %.lr.ph78.preheader ], [ %indvars.iv.next, %js_dup.exit73 ] ; 3 uses
  %i.cw = load ptr, ptr %i.bp, align 8, !tbaa !273
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %indvars.iv ; 2 uses
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8            ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  %i.dd = icmp ugt i32 %i.dc, -10
  br i1 %i.dd, label %bb.l, label %js_dup.exit73

bb.l:                                             ; preds = %.lr.ph78
  %i.de = inttoptr i64 %i.cz to ptr
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 -4 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !191
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !191
  br label %js_dup.exit73

js_dup.exit73:                                    ; preds = %.lr.ph78, %bb.l
  store i64 %i.cz, ptr %i.cx, align 8, !tbaa !218
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store i64 %i.db, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !240
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph78, !llvm.loop !1795

._crit_edge.loopexit:                             ; preds = %js_dup.exit73
  %.pre = load i16, ptr %i.p, align 2, !tbaa !429
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.di = phi i16 [ %.pre, %._crit_edge.loopexit ], [ %i.ci, %.preheader ] ; 2 uses
  %i.dj = zext i16 %i.di to i32
  %i.dk = add nuw nsw i32 %..i, %i.dj             ; 2 uses
  %i.dl = icmp slt i32 %6, %i.dk
  br i1 %i.dl, label %.lr.ph81.preheader, label %.loopexit

.lr.ph81.preheader:                               ; preds = %._crit_edge
  %i.dm = sext i32 %6 to i64                      ; 5 uses
  %wide.trip.count87 = zext nneg i32 %i.dk to i64
  %i.dn = zext i16 %i.di to i64
  %i.do = zext nneg i32 %..i to i64
  %i.dp = add nuw nsw i64 %i.dn, %i.do            ; 2 uses
  %8 = sub nsw i64 %i.dp, %i.dm
  %.neg = add nsw i64 %i.dm, 1
  %xtraiter = and i64 %8, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph81.prol.loopexit, label %.lr.ph81.prol

.lr.ph81.prol:                                    ; preds = %.lr.ph81.preheader
  %i.dq = load ptr, ptr %i.bp, align 8, !tbaa !273
  %i.dr = getelementptr inbounds [16 x i8], ptr %i.dq, i64 %i.dm ; 3 uses
  store i32 0, ptr %i.dr, align 8
  %.sroa.2.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.prol, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store i64 3, ptr %.sroa.3.0..sroa_idx.prol, align 8, !tbaa !240
  %indvars.iv.next85.prol = add nsw i64 %i.dm, 1
  br label %.lr.ph81.prol.loopexit

.lr.ph81.prol.loopexit:                           ; preds = %.lr.ph81.prol, %.lr.ph81.preheader
  %indvars.iv84.unr = phi i64 [ %i.dm, %.lr.ph81.preheader ], [ %indvars.iv.next85.prol, %.lr.ph81.prol ]
  %i.ds = icmp eq i64 %i.dp, %.neg
  br i1 %i.ds, label %.loopexit, label %.lr.ph81

.lr.ph81:                                         ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81
  %indvars.iv84 = phi i64 [ %indvars.iv.next85.1, %.lr.ph81 ], [ %indvars.iv84.unr, %.lr.ph81.prol.loopexit ] ; 3 uses
  %i.dt = load ptr, ptr %i.bp, align 8, !tbaa !273
  %i.du = getelementptr inbounds [16 x i8], ptr %i.dt, i64 %indvars.iv84 ; 3 uses
  store i32 0, ptr %i.du, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !240
  %i.dv = load ptr, ptr %i.bp, align 8, !tbaa !273
  %i.dw = getelementptr [16 x i8], ptr %i.dv, i64 %indvars.iv84 ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 16
  store i32 0, ptr %i.dx, align 8
  %.sroa.2.0..sroa_idx.1 = getelementptr i8, ptr %i.dw, i64 20
  store i32 0, ptr %.sroa.2.0..sroa_idx.1, align 4, !tbaa !218
  %.sroa.3.0..sroa_idx.1 = getelementptr i8, ptr %i.dw, i64 24
  store i64 3, ptr %.sroa.3.0..sroa_idx.1, align 8, !tbaa !240
  %indvars.iv.next85.1 = add nsw i64 %indvars.iv84, 2 ; 2 uses
  %exitcond88.not.1 = icmp eq i64 %indvars.iv.next85.1, %wide.trip.count87
  br i1 %exitcond88.not.1, label %.loopexit, label %.lr.ph81, !llvm.loop !1796

.loopexit:                                        ; preds = %.lr.ph81.prol.loopexit, %.lr.ph81, %._crit_edge, %js_malloc.exit.thread
  %.0 = phi i32 [ -1, %js_malloc.exit.thread ], [ 0, %._crit_edge ], [ 0, %.lr.ph81 ], [ 0, %.lr.ph81.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_realloc_array(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 4, 49) %2, ptr nofree noundef captures(none) %3, i32 noundef %4) unnamed_addr #16 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !191
  %i.b = mul nsw i32 %i.a, 3
  %i.c = sdiv i32 %i.b, 2
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %4, i32 %i.c) ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !239
  %i.e = sext i32 %..i to i64
  %i.f = zext nneg i32 %2 to i64
  %i.g = mul nsw i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.j = tail call ptr @js_realloc_rt(ptr noundef %i.i, ptr noundef %i.d, i64 noundef %i.g), !inline_history !402 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null                ; 2 uses
  %i.k = icmp ne i32 %..i, 0
  %i.l = and i1 %i.k, %.not.i
  br i1 %i.l, label %bb.b, label %js_realloc.exit, !prof !192

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !232
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1256 ; 3 uses
  %i.o = load i8, ptr %i.n, align 8, !tbaa !233, !range !234, !noundef !235
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %js_realloc.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.n, align 8, !tbaa !233
  %i.q = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !795 ; 0 uses
  store i8 0, ptr %i.n, align 8, !tbaa !233
  br label %js_realloc.exit.thread

js_realloc.exit:                                  ; preds = %bb.a
  br i1 %.not.i, label %js_realloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %js_realloc.exit
  store i32 %..i, ptr %3, align 4, !tbaa !191
  store ptr %i.j, ptr %1, align 8, !tbaa !239
  br label %js_realloc.exit.thread

js_realloc.exit.thread:                           ; preds = %bb.c, %bb.b, %js_realloc.exit, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %js_realloc.exit ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @js_module_ns_has(ptr nofree readnone captures(none) %0, i64 %1, i64 %2, i32 noundef %3) #41 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr
  %i.b = getelementptr i8, ptr %i.a, i64 24
  %.val = load ptr, ptr %i.b, align 8, !tbaa !316 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !191  ; 2 uses
  %i.e = and i32 %i.d, %3
  %i.f = zext i32 %i.e to i64
  %i.g = zext i32 %i.d to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60 ; 2 uses
  %i.j = xor i64 %i.f, -1
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !191  ; 2 uses
  %.not1.i = icmp eq i32 %i.l, 0
  br i1 %.not1.i, label %find_own_property1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.0.in2.i = phi i32 [ %i.s, %bb.b ], [ %i.l, %bb.a ]
  %.0.i = zext i32 %.0.in2.i to i64
  %i.m = getelementptr [8 x i8], ptr %i.i, i64 %.0.i ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 -8       ; 2 uses
  %i.o = getelementptr i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !319
  %i.q = icmp eq i32 %i.p, %3
  br i1 %i.q, label %find_own_property1.exit.loopexit, label %bb.b, !prof !324

bb.b:                                             ; preds = %.lr.ph.i
  %i.r = load i32, ptr %i.n, align 4
  %i.s = and i32 %i.r, 67108863                   ; 2 uses
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %find_own_property1.exit.loopexit, label %.lr.ph.i, !llvm.loop !39

find_own_property1.exit.loopexit:                 ; preds = %bb.b, %.lr.ph.i
  %.013.i.ph = phi ptr [ null, %bb.b ], [ %i.n, %.lr.ph.i ]
  %i.t = icmp ne ptr %.013.i.ph, null
  %i.u = zext i1 %i.t to i32
  br label %find_own_property1.exit

find_own_property1.exit:                          ; preds = %find_own_property1.exit.loopexit, %bb.a
  %.013.i = phi i32 [ 0, %bb.a ], [ %i.u, %find_own_property1.exit.loopexit ]
  ret i32 %.013.i
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef range(i32 -1, 1) i32 @get_exported_names(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !1801 ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !566
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !1797

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !570
  %i.g = icmp eq ptr %i.f, %2
  br i1 %i.g, label %.loopexit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !191
  %.not69 = icmp slt i32 %i.b, %i.i
  br i1 %.not69, label %js_resize_array.exit.thread, label %js_resize_array.exit, !prof !324

js_resize_array.exit:                             ; preds = %._crit_edge
  %i.j = add nsw i32 %i.b, 1
  %i.k = tail call fastcc i32 @js_realloc_array(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 8, ptr noundef nonnull %i.h, i32 noundef %i.j), !inline_history !90
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, label %.loopexit

js_resize_array.exit.js_resize_array.exit.thread_crit_edge: ; preds = %js_resize_array.exit
  %.pre = load i32, ptr %i.a, align 4, !tbaa !1801
  br label %js_resize_array.exit.thread

js_resize_array.exit.thread:                      ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge, %._crit_edge
  %i.l = phi i32 [ %.pre, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge ], [ %i.b, %._crit_edge ] ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !566
  %i.n = add nsw i32 %i.l, 1
  store i32 %i.n, ptr %i.a, align 4, !tbaa !1801
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  store ptr %2, ptr %i.p, align 8, !tbaa !570
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !345
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph79, label %.preheader

.lr.ph79:                                         ; preds = %js_resize_array.exit.thread
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.h, %js_resize_array.exit.thread
end_hunk_1
