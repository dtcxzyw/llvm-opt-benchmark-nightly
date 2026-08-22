Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/quickjs?download=true
inline.NumInlined: 10959
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 84
loop-unroll.NumUnrolled: 174
begin_hunk_0_@js_free_rt:bb.a
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.h
  %.sink32.i = phi ptr [ %i.al, %bb.l ], [ %i.a, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !43
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33
  tail call void %i.bk(ptr noundef %i.bm, ptr noundef nonnull %.sink32.i) #49, !inline_history !44
  br label %js_arena_free.exit

js_arena_free.exit:                               ; preds = %.sink.split.i, %bb.k, %bb.h, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @js_realloc_rt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %js_malloc_rt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !10
  %i.e = add i64 %i.d, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i64, ptr %i.f, align 8, !tbaa !14
  %i.h = add i64 %i.g, -1
  %i.i = icmp ugt i64 %i.e, %i.h
  br i1 %i.i, label %js_malloc_rt.exit, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef %2) ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %js_malloc_rt.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i64, ptr %i.b, align 8, !tbaa !34
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.b, align 8, !tbaa !34
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -8 ; 3 uses
  %i.n = load i16, ptr %i.m, align 8, !tbaa !35
  %i.o = icmp eq i16 %i.n, -1
  br i1 %i.o, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.q = icmp eq ptr %i.m, %i.p
  br i1 %i.q, label %js_arena_usable_size.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !36
  %i.t = tail call i64 %i.s(ptr noundef nonnull %i.m) #49, !inline_history !45 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.t, 0
  %i.u = select i1 %.not15.i.i, i64 8, i64 %i.t
  br label %js_arena_usable_size.exit.i

bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds i8, ptr %i.j, i64 -6
  %i.w = load i8, ptr %i.v, align 2, !tbaa !35
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !38
  %i.aa = zext i16 %i.z to i64
  br label %js_arena_usable_size.exit.i

js_arena_usable_size.exit.i:                      ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i = phi i64 [ 8, %bb.f ], [ %i.u, %bb.g ], [ %i.aa, %bb.h ]
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !10
  %i.ac = add i64 %i.ab, %.011.i.i
  store i64 %i.ac, ptr %i.c, align 8, !tbaa !10
  br label %js_malloc_rt.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.j, label %bb.k, !prof !9

bb.j:                                             ; preds = %bb.i
  tail call void @js_free_rt(ptr noundef %0, ptr noundef nonnull %1)
  br label %js_malloc_rt.exit

bb.k:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -8 ; 11 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !35
  %i.af = icmp eq i16 %i.ae, -1
  br i1 %i.af, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ah = icmp eq ptr %i.ad, %i.ag
  br i1 %i.ah, label %js_arena_usable_size.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !36
  %i.ak = tail call i64 %i.aj(ptr noundef nonnull %i.ad) #49, !inline_history !37 ; 2 uses
  %.not15.i = icmp eq i64 %i.ak, 0
  %.neg = sub i64 8, %i.ak
  %spec.select.i.neg = select i1 %.not15.i, i64 0, i64 %.neg
  br label %js_arena_usable_size.exit

bb.n:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds i8, ptr %1, i64 -6
  %i.am = load i8, ptr %i.al, align 2, !tbaa !35
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !38
  %i.aq = zext i16 %i.ap to i64
  %.neg42 = sub nsw i64 8, %i.aq
  br label %js_arena_usable_size.exit

js_arena_usable_size.exit:                        ; preds = %bb.l, %bb.m, %bb.n
  %.011.i.neg43 = phi i64 [ 0, %bb.l ], [ %spec.select.i.neg, %bb.m ], [ %.neg42, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.at = add i64 %.011.i.neg43, %2
  %i.au = add i64 %i.at, %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !14
  %i.ax = add i64 %i.aw, -1
  %i.ay = icmp ugt i64 %i.au, %i.ax
  br i1 %i.ay, label %js_malloc_rt.exit, label %bb.o

bb.o:                                             ; preds = %js_arena_usable_size.exit
  %i.az = load i16, ptr %i.ad, align 8, !tbaa !35
  %i.ba = icmp eq i16 %i.az, -1
  br i1 %i.ba, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bc = icmp eq ptr %i.ad, %i.bb
  br i1 %i.bc, label %js_arena_realloc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !33
  %i.bh = add i64 %2, 8
  %i.bi = tail call ptr %i.be(ptr noundef %i.bg, ptr noundef nonnull %i.ad, i64 noundef %i.bh) #49, !inline_history !47 ; 4 uses
  %.not47.i = icmp eq ptr %i.bi, null
  br i1 %.not47.i, label %js_malloc_rt.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i16 -1, ptr %i.bi, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  store i8 -1, ptr %i.bj, align 2, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %js_arena_realloc.exit.thread

bb.s:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds i8, ptr %1, i64 -6 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 2, !tbaa !35
  %i.bn = zext i8 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bn
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !38
  %i.bq = add i64 %2, 7
  %i.br = and i64 %i.bq, -8
  %i.bs = add i64 %i.br, 8
  %i.bt = zext i16 %i.bp to i64                   ; 2 uses
  %.not.i28 = icmp ugt i64 %i.bs, %i.bt
  br i1 %.not.i28, label %bb.t, label %js_arena_realloc.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.bu = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %2) ; 7 uses
  %.not46.i = icmp eq ptr %i.bu, null
  br i1 %.not46.i, label %js_malloc_rt.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bv = getelementptr inbounds i8, ptr %1, i64 -5 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = and i8 %i.bw, 127                       ; 2 uses
  %i.by = getelementptr inbounds i8, ptr %i.bu, i64 -5 ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = and i8 %i.bz, -128
  %i.cb = or disjoint i8 %i.ca, %i.bx
  store i8 %i.cb, ptr %i.by, align 1
  %i.cc = load i8, ptr %i.bv, align 1
  %i.cd = and i8 %i.cc, -128
  %i.ce = or disjoint i8 %i.cd, %i.bx
  store i8 %i.ce, ptr %i.by, align 1
  %i.cf = getelementptr inbounds i8, ptr %1, i64 -4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = getelementptr inbounds i8, ptr %i.bu, i64 -4
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !8
  %i.ci = add nsw i64 %i.bt, -8
  %spec.select.i29 = tail call i64 @llvm.umin.i64(i64 range(i64 1, 0) %2, i64 %i.ci)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull align 1 %1, i64 %spec.select.i29, i1 false)
  %i.cj = load i16, ptr %i.ad, align 8, !tbaa !35 ; 3 uses
  %i.ck = icmp eq i16 %i.cj, -1
  br i1 %i.ck, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %bb.u
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.cm = icmp eq ptr %i.ad, %i.cl
  br i1 %i.cm, label %js_arena_realloc.exit.thread, label %.sink.split.i.i

bb.w:                                             ; preds = %bb.u
  %i.cn = load i8, ptr %i.bl, align 2, !tbaa !35
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !38
  %i.cr = zext i16 %i.cq to i64
  %i.cs = zext i16 %i.cj to i64
  %i.ct = mul nuw nsw i64 %i.cs, %i.cr
  %i.cu = sub nsw i64 0, %i.ct
  %i.cv = getelementptr inbounds i8, ptr %i.ad, i64 %i.cu ; 8 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -40 ; 6 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -2 ; 2 uses
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !38
  store i16 %i.cy, ptr %i.ad, align 8, !tbaa !35
  store i16 %i.cj, ptr %i.cx, align 2, !tbaa !38
  %i.cz = getelementptr inbounds i8, ptr %i.cv, i64 -6 ; 2 uses
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !38 ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.cv, i64 -4
  %i.dc = load i16, ptr %i.db, align 4, !tbaa !38
  %i.dd = icmp eq i16 %i.da, %i.dc
  br i1 %i.dd, label %bb.x, label %bb.y, !prof !9

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %i.co ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !40 ; 2 uses
  store ptr %i.cw, ptr %i.dg, align 8, !tbaa !40
  store ptr %i.df, ptr %i.cw, align 8, !tbaa !41
  %i.di = getelementptr inbounds i8, ptr %i.cv, i64 -32
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !40
  store ptr %i.cw, ptr %i.dh, align 8, !tbaa !41
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dj = add i16 %i.da, -1                       ; 2 uses
  store i16 %i.dj, ptr %i.cz, align 2, !tbaa !38
  %i.dk = icmp eq i16 %i.dj, 0
  br i1 %i.dk, label %bb.z, label %js_arena_realloc.exit.thread, !prof !9

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds i8, ptr %i.cv, i64 -24 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !41 ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.cv, i64 -16
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !40 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !40
  store ptr %i.dm, ptr %i.do, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dl, i8 0, i64 16, i1 false)
  %i.dq = load ptr, ptr %i.cw, align 8, !tbaa !41 ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %i.cv, i64 -32
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !40 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !40
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.z, %bb.v
  %.sink32.i.i = phi ptr [ %i.cw, %bb.z ], [ %i.ad, %bb.v ]
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !43
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !33
  tail call void %i.dv(ptr noundef %i.dx, ptr noundef nonnull %.sink32.i.i) #49, !inline_history !48
  br label %js_arena_realloc.exit.thread

js_arena_realloc.exit:                            ; preds = %bb.p
  %i.dy = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef range(i64 1, 0) %2) ; 2 uses
  %.not26 = icmp eq ptr %i.dy, null
  br i1 %.not26, label %js_malloc_rt.exit, label %js_arena_realloc.exit.thread

js_arena_realloc.exit.thread:                     ; preds = %.sink.split.i.i, %bb.y, %bb.v, %bb.s, %bb.r, %js_arena_realloc.exit
  %.2.i37 = phi ptr [ %i.dy, %js_arena_realloc.exit ], [ %i.bu, %.sink.split.i.i ], [ %i.bu, %bb.y ], [ %i.bu, %bb.v ], [ %1, %bb.s ], [ %i.bk, %bb.r ] ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %.2.i37, i64 -8 ; 3 uses
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !35
  %i.eb = icmp eq i16 %i.ea, -1
  br i1 %i.eb, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %js_arena_realloc.exit.thread
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.ed = icmp eq ptr %i.dz, %i.ec
  br i1 %i.ed, label %js_arena_usable_size.exit34, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !36
  %i.eg = tail call i64 %i.ef(ptr noundef nonnull %i.dz) #49, !inline_history !37 ; 2 uses
  %.not15.i32 = icmp eq i64 %i.eg, 0
  %i.eh = add i64 %i.eg, -8
  %spec.select.i33 = select i1 %.not15.i32, i64 0, i64 %i.eh
  br label %js_arena_usable_size.exit34

bb.ac:                                            ; preds = %js_arena_realloc.exit.thread
  %i.ei = getelementptr inbounds i8, ptr %.2.i37, i64 -6
  %i.ej = load i8, ptr %i.ei, align 2, !tbaa !35
  %i.ek = zext i8 %i.ej to i64
  %i.el = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !38
  %i.en = zext i16 %i.em to i64
  %i.eo = add nsw i64 %i.en, -8
  br label %js_arena_usable_size.exit34

js_arena_usable_size.exit34:                      ; preds = %bb.aa, %bb.ab, %bb.ac
  %.011.i31 = phi i64 [ 0, %bb.aa ], [ %spec.select.i33, %bb.ab ], [ %i.eo, %bb.ac ]
  %i.ep = add i64 %.011.i31, %.011.i.neg43
  %i.eq = load i64, ptr %i.ar, align 8, !tbaa !10
  %i.er = add i64 %i.ep, %i.eq
  store i64 %i.er, ptr %i.ar, align 8, !tbaa !10
  br label %js_malloc_rt.exit

js_malloc_rt.exit:                                ; preds = %bb.t, %bb.q, %js_arena_usable_size.exit.i, %bb.d, %bb.c, %js_arena_realloc.exit, %js_arena_usable_size.exit, %bb.b, %js_arena_usable_size.exit34, %bb.j
  %.0 = phi ptr [ null, %bb.j ], [ null, %bb.b ], [ %.2.i37, %js_arena_usable_size.exit34 ], [ null, %js_arena_usable_size.exit ], [ null, %js_arena_realloc.exit ], [ null, %bb.c ], [ null, %bb.d ], [ %i.j, %js_arena_usable_size.exit.i ], [ null, %bb.q ], [ null, %bb.t ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define i64 @js_malloc_usable_size_rt(ptr nofree noundef readonly captures(address) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %js_arena_usable_size.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !35
  %i.c = icmp eq i16 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.e = icmp eq ptr %i.a, %i.d
  br i1 %i.e, label %js_arena_usable_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.h = tail call i64 %i.g(ptr noundef nonnull %i.a) #49, !inline_history !37 ; 2 uses
  %.not15.i = icmp eq i64 %i.h, 0
  %i.i = add i64 %i.h, -8
  %spec.select.i = select i1 %.not15.i, i64 0, i64 %i.i
  br label %js_arena_usable_size.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %1, i64 -6
  %i.k = load i8, ptr %i.j, align 2, !tbaa !35
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !38
  %i.o = zext i16 %i.n to i64
  %i.p = add nsw i64 %i.o, -8
  br label %js_arena_usable_size.exit

js_arena_usable_size.exit:                        ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.011.i = phi i64 [ 0, %bb.a ], [ %spec.select.i, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.c ]
  ret i64 %.011.i
}

; Function Attrs: nounwind uwtable
define ptr @js_mallocz_rt(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !10
  %i.d = add i64 %i.c, %1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14
  %i.g = add i64 %i.f, -1
  %i.h = icmp ugt i64 %i.d, %i.g
  br i1 %i.h, label %js_calloc_rt.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.i = add i64 %1, 7
  %i.j = and i64 %i.i, -8
  %i.k = add i64 %i.j, 8
  %i.l = icmp ult i64 %i.k, 513
  br i1 %i.l, label %bb.c, label %js_arena_calloc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef %1) ; 3 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %js_calloc_rt.exit, label %js_arena_calloc.exit.thread26.i, !prof !9

js_arena_calloc.exit.thread26.i:                  ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %1, i1 false)
  br label %bb.d

js_arena_calloc.exit.i:                           ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !15
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val11.i.i = load ptr, ptr %i.n, align 8, !tbaa !33
  %i.o = tail call fastcc ptr @arena_calloc_large(ptr %.val.i.i, ptr %.val11.i.i, i64 noundef %1) ; 2 uses
end_hunk_0
begin_hunk_1_@js_mallocz:bb.a
bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = tail call i64 %i.z(ptr noundef nonnull %i.t) #49, !inline_history !61 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not15.i.i.i, i64 8, i64 %i.aa
  br label %js_mallocz_rt.exit

bb.g:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds i8, ptr %.1.i29.i.i, i64 -6
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !35
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !38
  %i.ah = zext i16 %i.ag to i64
  br label %js_mallocz_rt.exit

js_mallocz_rt.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.e ], [ %i.ab, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !10
  %i.aj = add i64 %i.ai, %.011.i.i.i
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !10
  br label %JS_ThrowOutOfMemory.exit

bb.h:                                             ; preds = %bb.a, %bb.c, %js_arena_calloc.exit.i.i
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1256 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !57, !range !58, !noundef !59
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %JS_ThrowOutOfMemory.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.al, align 8, !tbaa !57
  %i.ao = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !60 ; 0 uses
  store i8 0, ptr %i.al, align 8, !tbaa !57
  br label %JS_ThrowOutOfMemory.exit

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.i, %bb.h, %js_mallocz_rt.exit
  %.0 = phi ptr [ %.1.i29.i.i, %js_mallocz_rt.exit ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @js_free(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.b, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @js_realloc(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.c = tail call ptr @js_realloc_rt(ptr noundef %i.b, ptr noundef %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  %i.d = icmp ne i64 %2, 0
  %i.e = and i1 %i.d, %.not
  br i1 %i.e, label %bb.b, label %JS_ThrowOutOfMemory.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1256 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !57, !range !58, !noundef !59
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %JS_ThrowOutOfMemory.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.g, align 8, !tbaa !57
  %i.j = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !60 ; 0 uses
  store i8 0, ptr %i.g, align 8, !tbaa !57
  br label %JS_ThrowOutOfMemory.exit

JS_ThrowOutOfMemory.exit:                         ; preds = %bb.c, %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define i64 @js_malloc_usable_size(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %.not.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i, label %js_malloc_usable_size_rt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !35
  %i.e = icmp eq i16 %i.d, -1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.g = icmp eq ptr %i.c, %i.f
  br i1 %i.g, label %js_malloc_usable_size_rt.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = tail call i64 %i.i(ptr noundef nonnull %i.c) #49, !inline_history !62 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.j, 0
  %i.k = add i64 %i.j, -8
  %spec.select.i.i = select i1 %.not15.i.i, i64 0, i64 %i.k
  br label %js_malloc_usable_size_rt.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %1, i64 -6
  %i.m = load i8, ptr %i.l, align 2, !tbaa !35
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !38
  %i.q = zext i16 %i.p to i64
  %i.r = add nsw i64 %i.q, -8
  br label %js_malloc_usable_size_rt.exit

js_malloc_usable_size_rt.exit:                    ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %.011.i.i = phi i64 [ 0, %bb.a ], [ %spec.select.i.i, %bb.d ], [ %i.r, %bb.e ], [ 0, %bb.c ]
  ret i64 %.011.i.i
}

; Function Attrs: nounwind uwtable
define ptr @js_strndup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %2, 1                            ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 8 uses
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %bb.h, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !10
  %i.h = add i64 %i.g, %i.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = add i64 %i.j, -1
  %i.l = icmp ugt i64 %i.h, %i.k
  br i1 %i.l, label %bb.h, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.c, i64 noundef %i.a), !inline_history !63 ; 6 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.n = load i64, ptr %i.e, align 8, !tbaa !34
  %i.o = add i64 %i.n, 1
  store i64 %i.o, ptr %i.e, align 8, !tbaa !34
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 3 uses
  %i.q = load i16, ptr %i.p, align 8, !tbaa !35
  %i.r = icmp eq i16 %i.q, -1
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1064
  %i.t = icmp eq ptr %i.p, %i.s
  br i1 %i.t, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !36
  %i.w = tail call i64 %i.v(ptr noundef nonnull %i.p) #49, !inline_history !64 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.w, 0
  %i.x = select i1 %.not15.i.i.i, i64 8, i64 %i.w
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.m, i64 -6
  %i.z = load i8, ptr %i.y, align 2, !tbaa !35
  %i.aa = zext i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !38
  %i.ad = zext i16 %i.ac to i64
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i, %bb.b, %bb.a
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.c, %bb.b ], [ %i.c, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1256 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %js_malloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.af, align 8, !tbaa !57
  %i.ai = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.af, align 8, !tbaa !57
  br label %js_malloc.exit.thread

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.011.i.i.i = phi i64 [ 8, %bb.e ], [ %i.x, %bb.f ], [ %i.ad, %bb.g ]
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !10
  %i.ak = add i64 %i.aj, %.011.i.i.i
  store i64 %i.ak, ptr %i.f, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %1, i64 %2, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 %2
  store i8 0, ptr %i.al, align 1, !tbaa !35
  br label %js_malloc.exit.thread

js_malloc.exit.thread:                            ; preds = %bb.i, %bb.h, %bb.j
  %.0.i10 = phi ptr [ %i.m, %bb.j ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0.i10
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define ptr @js_strdup(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #52 ; 3 uses
  %i.b = add i64 %i.a, 1                          ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 8 uses
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.h, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = add i64 %i.h, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = add i64 %i.k, -1
  %i.m = icmp ugt i64 %i.i, %i.l
  br i1 %i.m, label %bb.h, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.n = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.d, i64 noundef %i.b), !inline_history !66 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.f, align 8, !tbaa !34
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.f, align 8, !tbaa !34
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 3 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !35
  %i.s = icmp eq i16 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1064
  %i.u = icmp eq ptr %i.q, %i.t
  br i1 %i.u, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = tail call i64 %i.w(ptr noundef nonnull %i.q) #49, !inline_history !67 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not15.i.i.i.i, i64 8, i64 %i.x
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 -6
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !35
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !38
  %i.ae = zext i16 %i.ad to i64
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge.i.i, %bb.b, %bb.a
  %i.af = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.d, %bb.b ], [ %i.d, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1256 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %js_strndup.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ag, align 8, !tbaa !57
  %i.aj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !68 ; 0 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !57
  br label %js_strndup.exit

bb.j:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.011.i.i.i.i = phi i64 [ 8, %bb.e ], [ %i.y, %bb.f ], [ %i.ae, %bb.g ]
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !10
  %i.al = add i64 %i.ak, %.011.i.i.i.i
  store i64 %i.al, ptr %i.g, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %1, i64 %i.a, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.a
  store i8 0, ptr %i.am, align 1, !tbaa !35
  br label %js_strndup.exit

js_strndup.exit:                                  ; preds = %bb.h, %bb.i, %bb.j
  %.0.i10.i = phi ptr [ %i.n, %bb.j ], [ null, %bb.h ], [ null, %bb.i ]
  ret ptr %.0.i10.i
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @JS_NewRuntime2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.JSClassDef, align 8         ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !69
  %i.b = tail call ptr %i.a(ptr noundef %1, i64 noundef 1, i64 noundef 1480) #49 ; 168 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.u, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false), !tbaa.struct !70
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %.not41 = icmp eq ptr %i.d, null
  br i1 %.not41, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store ptr @js_malloc_usable_size_unknown, ptr %i.c, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ @js_malloc_usable_size_unknown, %bb.c ], [ %i.d, %bb.b ]
  %i.f = tail call i64 %i.e(ptr noundef nonnull %i.b) #49
  %i.g = add i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  store i64 1, ptr %i.h, align 8, !tbaa !72
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store i64 0, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !72
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store ptr %1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1064 ; 3 uses
  store i16 -1, ptr %i.j, align 8, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 568 ; 3 uses
  store ptr %i.i, ptr %i.i, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.i, ptr %i.l, align 8, !tbaa !40
  store ptr %i.k, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  store ptr %i.k, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 3 uses
  store ptr %i.n, ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.n, ptr %i.o, align 8, !tbaa !40
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 584 ; 3 uses
  store ptr %i.p, ptr %i.p, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 592
  store ptr %i.p, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 3 uses
  store ptr %i.r, ptr %i.r, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.r, ptr %i.s, align 8, !tbaa !40
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 3 uses
  store ptr %i.t, ptr %i.t, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 608
  store ptr %i.t, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 3 uses
  store ptr %i.v, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.v, ptr %i.w, align 8, !tbaa !40
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 616 ; 3 uses
  store ptr %i.x, ptr %i.x, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  store ptr %i.x, ptr %i.y, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  store ptr %i.z, ptr %i.z, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 632 ; 3 uses
  store ptr %i.ab, ptr %i.ab, align 8, !tbaa !41
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !40
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 152 ; 3 uses
  store ptr %i.ad, ptr %i.ad, align 8, !tbaa !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !40
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 648 ; 3 uses
  store ptr %i.af, ptr %i.af, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 656
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 3 uses
  store ptr %i.ah, ptr %i.ah, align 8, !tbaa !41
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 664 ; 3 uses
  store ptr %i.aj, ptr %i.aj, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 672
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !40
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 3 uses
  store ptr %i.al, ptr %i.al, align 8, !tbaa !41
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.al, ptr %i.am, align 8, !tbaa !40
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 680 ; 3 uses
  store ptr %i.an, ptr %i.an, align 8, !tbaa !41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 688
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 3 uses
  store ptr %i.ap, ptr %i.ap, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 696 ; 3 uses
  store ptr %i.ar, ptr %i.ar, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 704
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !40
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 3 uses
  store ptr %i.at, ptr %i.at, align 8, !tbaa !41
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store ptr %i.at, ptr %i.au, align 8, !tbaa !40
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 712 ; 3 uses
  store ptr %i.av, ptr %i.av, align 8, !tbaa !41
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 3 uses
  store ptr %i.ax, ptr %i.ax, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !40
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 728 ; 3 uses
  store ptr %i.az, ptr %i.az, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !40
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 3 uses
  store ptr %i.bb, ptr %i.bb, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !40
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 744 ; 3 uses
  store ptr %i.bd, ptr %i.bd, align 8, !tbaa !41
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !40
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 3 uses
  store ptr %i.bf, ptr %i.bf, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 760 ; 3 uses
  store ptr %i.bh, ptr %i.bh, align 8, !tbaa !41
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !40
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 280 ; 3 uses
  store ptr %i.bj, ptr %i.bj, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 776 ; 3 uses
  store ptr %i.bl, ptr %i.bl, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 296 ; 3 uses
  store ptr %i.bn, ptr %i.bn, align 8, !tbaa !41
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !40
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 792 ; 3 uses
  store ptr %i.bp, ptr %i.bp, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 800
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !40
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 312 ; 3 uses
  store ptr %i.br, ptr %i.br, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 320
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 808 ; 3 uses
  store ptr %i.bt, ptr %i.bt, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 3 uses
  store ptr %i.bv, ptr %i.bv, align 8, !tbaa !41
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 824 ; 3 uses
  store ptr %i.bx, ptr %i.bx, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 832
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 3 uses
  store ptr %i.bz, ptr %i.bz, align 8, !tbaa !41
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !40
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 840 ; 3 uses
  store ptr %i.cb, ptr %i.cb, align 8, !tbaa !41
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 360 ; 3 uses
  store ptr %i.cd, ptr %i.cd, align 8, !tbaa !41
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 368
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 856 ; 3 uses
  store ptr %i.cf, ptr %i.cf, align 8, !tbaa !41
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 864
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !40
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 376 ; 3 uses
  store ptr %i.ch, ptr %i.ch, align 8, !tbaa !41
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 872 ; 3 uses
  store ptr %i.cj, ptr %i.cj, align 8, !tbaa !41
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 880
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !40
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 3 uses
  store ptr %i.cl, ptr %i.cl, align 8, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 888 ; 3 uses
  store ptr %i.cn, ptr %i.cn, align 8, !tbaa !41
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 896
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 408 ; 3 uses
  store ptr %i.cp, ptr %i.cp, align 8, !tbaa !41
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 904 ; 3 uses
  store ptr %i.cr, ptr %i.cr, align 8, !tbaa !41
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 912
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !40
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 424 ; 3 uses
  store ptr %i.ct, ptr %i.ct, align 8, !tbaa !41
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 920 ; 3 uses
  store ptr %i.cv, ptr %i.cv, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 928
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 440 ; 3 uses
  store ptr %i.cx, ptr %i.cx, align 8, !tbaa !41
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !40
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 936 ; 3 uses
  store ptr %i.cz, ptr %i.cz, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 944
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !40
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 456 ; 3 uses
  store ptr %i.db, ptr %i.db, align 8, !tbaa !41
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 464
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 952 ; 3 uses
  store ptr %i.dd, ptr %i.dd, align 8, !tbaa !41
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 472 ; 3 uses
  store ptr %i.df, ptr %i.df, align 8, !tbaa !41
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 968 ; 3 uses
  store ptr %i.dh, ptr %i.dh, align 8, !tbaa !41
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 976
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 3 uses
  store ptr %i.dj, ptr %i.dj, align 8, !tbaa !41
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 496
  store ptr %i.dj, ptr %i.dk, align 8, !tbaa !40
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 984 ; 3 uses
  store ptr %i.dl, ptr %i.dl, align 8, !tbaa !41
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 992
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !40
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 504 ; 3 uses
  store ptr %i.dn, ptr %i.dn, align 8, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store ptr %i.dn, ptr %i.do, align 8, !tbaa !40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 1000 ; 3 uses
  store ptr %i.dp, ptr %i.dp, align 8, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 1008
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !40
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 3 uses
  store ptr %i.dr, ptr %i.dr, align 8, !tbaa !41
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 528
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !40
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 1016 ; 3 uses
  store ptr %i.dt, ptr %i.dt, align 8, !tbaa !41
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !40
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 536 ; 3 uses
  store ptr %i.dv, ptr %i.dv, align 8, !tbaa !41
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 544
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 1032 ; 3 uses
  store ptr %i.dx, ptr %i.dx, align 8, !tbaa !41
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 1040
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !40
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 552 ; 3 uses
  store ptr %i.dz, ptr %i.dz, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 560
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 1048 ; 3 uses
  store ptr %i.eb, ptr %i.eb, align 8, !tbaa !41
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 1056
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !40
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 1208
  store i64 262144, ptr %i.ed, align 8, !tbaa !73
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 1136 ; 3 uses
  store ptr %i.ee, ptr %i.ee, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 1144
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !40
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 1152 ; 3 uses
  store ptr %i.eg, ptr %i.eg, align 8, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 1160
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !40
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 1168 ; 3 uses
  store ptr %i.ei, ptr %i.ei, align 8, !tbaa !41
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 1176
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 1200
  store i8 0, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 1328 ; 3 uses
  store ptr %i.el, ptr %i.el, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw i8, ptr %i.b, i64 1336
  store ptr %i.el, ptr %i.em, align 8, !tbaa !40
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 1080
  store i32 0, ptr %i.en, align 8, !tbaa !74
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 1096
  store ptr null, ptr %i.eo, align 8, !tbaa !75
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 1084
  store i32 0, ptr %i.ep, align 4, !tbaa !76
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 1088
  store i32 0, ptr %i.eq, align 8, !tbaa !77
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 1112
  store i32 0, ptr %i.er, align 8, !tbaa !78
  %i.es = tail call fastcc i32 @JS_ResizeAtomHash(ptr noundef nonnull %i.b, i32 noundef 512)
  %.not.i = icmp eq i32 %i.es, 0
  br i1 %.not.i, label %.preheader.i, label %JS_InitAtoms.exit.thread

.preheader.i:                                     ; preds = %bb.d, %bb.k
  %.023.i = phi ptr [ %i.ge, %bb.k ], [ @js_atom_init, %bb.d ] ; 3 uses
  %.01822.i = phi i32 [ %i.gf, %bb.k ], [ 1, %bb.d ] ; 3 uses
  %i.et = icmp eq i32 %.01822.i, 226
  %i.eu = icmp samesign ugt i32 %.01822.i, 226
  %..i = select i1 %i.eu, i32 3, i32 1
  %.017.i = select i1 %i.et, i32 4, i32 %..i
  %i.ev = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.023.i) #52 ; 2 uses
  %sext21.i = shl i64 %i.ev, 32
  %i.ew = ashr exact i64 %sext21.i, 32            ; 4 uses
  %i.ex = add nsw i64 %i.ew, 25                   ; 3 uses
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %JS_InitAtoms.exit.thread, label %bb.e, !prof !9

bb.e:                                             ; preds = %.preheader.i
  %i.ez = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %i.fa = add i64 %i.ez, %i.ex
  %i.fb = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %i.fc = add i64 %i.fb, -1
  %i.fd = icmp ugt i64 %i.fa, %i.fc
  br i1 %i.fd, label %JS_InitAtoms.exit.thread, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.fe = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %i.ex) ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i, label %JS_InitAtoms.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ff = load i64, ptr %i.h, align 8, !tbaa !34
  %i.fg = add i64 %i.ff, 1
  store i64 %i.fg, ptr %i.h, align 8, !tbaa !34
  %i.fh = getelementptr inbounds i8, ptr %i.fe, i64 -8 ; 3 uses
  %i.fi = load i16, ptr %i.fh, align 8, !tbaa !35
  %i.fj = icmp eq i16 %i.fi, -1
  br i1 %i.fj, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.fk = icmp eq ptr %i.fh, %i.j
  br i1 %i.fk, label %__JS_NewAtomInit.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.fm = tail call i64 %i.fl(ptr noundef nonnull %i.fh) #49, !inline_history !79 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.fm, 0
  %i.fn = select i1 %.not15.i.i.i.i.i, i64 8, i64 %i.fm
  br label %__JS_NewAtomInit.exit.i

bb.j:                                             ; preds = %bb.g
  %i.fo = getelementptr inbounds i8, ptr %i.fe, i64 -6
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !35
  %i.fq = zext i8 %i.fp to i64
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.fq
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !38
  %i.ft = zext i16 %i.fs to i64
  br label %__JS_NewAtomInit.exit.i

__JS_NewAtomInit.exit.i:                          ; preds = %bb.j, %bb.i, %bb.h
  %.011.i.i.i.i.i = phi i64 [ 8, %bb.h ], [ %i.fn, %bb.i ], [ %i.ft, %bb.j ]
  %i.fu = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %i.fv = add i64 %i.fu, %.011.i.i.i.i.i
  store i64 %i.fv, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %i.fw = getelementptr inbounds i8, ptr %i.fe, i64 -4
  store i32 1, ptr %i.fw, align 4, !tbaa !8
  %i.fx = and i64 %i.ev, 2147483647
  store i64 %i.fx, ptr %i.fe, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i32 0, ptr %i.fy, align 8, !tbaa !80
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fz, ptr nonnull readonly align 1 %.023.i, i64 %i.ew, i1 false)
  %i.ga = getelementptr inbounds i8, ptr %i.fz, i64 %i.ew
  store i8 0, ptr %i.ga, align 1, !tbaa !35
  %i.gb = tail call fastcc i32 @__JS_NewAtom(ptr noundef nonnull %i.b, ptr noundef nonnull %i.fe, i32 noundef range(i32 1, 5) %.017.i)
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %JS_InitAtoms.exit.thread, label %bb.k

bb.k:                                             ; preds = %__JS_NewAtomInit.exit.i
  %i.gd = getelementptr inbounds i8, ptr %.023.i, i64 %i.ew
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 1
  %i.gf = add nuw nsw i32 %.01822.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gf, 242
  br i1 %exitcond.not.i, label %JS_InitAtoms.exit, label %.preheader.i, !llvm.loop !83

JS_InitAtoms.exit:                                ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i, 50
  br i1 %exitcond.not.i44, label %bb.n, label %bb.m, !llvm.loop !85

bb.m:                                             ; preds = %bb.l, %JS_InitAtoms.exit
  %indvars.iv.i = phi i64 [ 0, %JS_InitAtoms.exit ], [ %indvars.iv.next.i, %bb.l ] ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr @js_std_class_def, i64 %indvars.iv.i ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load <2 x ptr>, ptr %i.gi, align 8, !tbaa !71
  store <2 x ptr> %i.gj, ptr %i.gg, align 8, !tbaa !71
  %i.gk = load i32, ptr %i.gh, align 8, !tbaa !86
  %i.gl = trunc i64 %indvars.iv.i to i32
  %i.gm = add i32 %i.gl, 1
  %i.gn = call fastcc i32 @JS_NewClass1(ptr noundef nonnull %i.b, i32 noundef %i.gm, ptr noundef nonnull %2, i32 noundef %i.gk)
  %i.go = icmp slt i32 %i.gn, 0
  br i1 %i.go, label %init_class_range.exit.thread, label %bb.l

init_class_range.exit.thread:                     ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  br label %JS_InitAtoms.exit.thread

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  %i.gp = getelementptr inbounds nuw i8, ptr %i.b, i64 1128
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !88 ; 9 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 352
  store ptr @js_arguments_exotic_methods, ptr %i.gr, align 8, !tbaa !89
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 392
  store ptr @js_arguments_exotic_methods, ptr %i.gs, align 8, !tbaa !89
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 232
  store ptr @js_string_exotic_methods, ptr %i.gt, align 8, !tbaa !89
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 472
  store ptr @js_module_ns_exotic_methods, ptr %i.gu, align 8, !tbaa !89
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 504
  store ptr @js_call_c_function, ptr %i.gv, align 8, !tbaa !92
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 624
  store ptr @js_call_c_function_data, ptr %i.gw, align 8, !tbaa !92
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gq, i64 664
  store ptr @js_call_c_closure, ptr %i.gx, align 8, !tbaa !92
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 584
  store ptr @js_call_bound_function, ptr %i.gy, align 8, !tbaa !92
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gq, i64 704
  store ptr @js_call_generator_function, ptr %i.gz, align 8, !tbaa !92
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 1436
  store i32 6, ptr %i.ha, align 4, !tbaa !93
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 1440
  store i32 64, ptr %i.hb, align 8, !tbaa !94
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 1444
  store i32 0, ptr %i.hc, align 4, !tbaa !95
  %i.hd = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %i.he = add i64 %i.hd, 512
  %i.hf = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %i.hg = add i64 %i.hf, -1
  %i.hh = icmp ugt i64 %i.he, %i.hg
  br i1 %i.hh, label %init_shape_hash.exit.thread, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !15
  %.val11.i.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !33
  %i.hi = tail call fastcc ptr @arena_calloc_large(ptr %.val.i.i.i.i, ptr %.val11.i.i.i.i, i64 noundef 512) ; 4 uses
  %.not22.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not22.i.i.i, label %init_shape_hash.exit.thread, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hj = load i64, ptr %i.h, align 8, !tbaa !34
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.h, align 8, !tbaa !34
  %i.hl = getelementptr inbounds i8, ptr %i.hi, i64 -8 ; 3 uses
  %i.hm = load i16, ptr %i.hl, align 8, !tbaa !35
  %i.hn = icmp eq i16 %i.hm, -1
  br i1 %i.hn, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ho = icmp eq ptr %i.hl, %i.j
  br i1 %i.ho, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hp = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.hq = tail call i64 %i.hp(ptr noundef nonnull %i.hl) #49, !inline_history !96 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.hq, 0
  %i.hr = select i1 %.not15.i.i.i.i, i64 8, i64 %i.hq
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.hs = getelementptr inbounds i8, ptr %i.hi, i64 -6
  %i.ht = load i8, ptr %i.hs, align 2, !tbaa !35
  %i.hu = zext i8 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.hu
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !38
  %i.hx = zext i16 %i.hw to i64
  br label %bb.t

init_shape_hash.exit.thread:                      ; preds = %bb.n, %bb.o
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 1448
  store ptr null, ptr %i.hy, align 8, !tbaa !97
  br label %JS_InitAtoms.exit.thread

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.011.i.i.i.i = phi i64 [ 8, %bb.q ], [ %i.hr, %bb.r ], [ %i.hx, %bb.s ]
  %i.hz = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %i.ia = add i64 %i.hz, %.011.i.i.i.i
  store i64 %i.ia, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 1448
  store ptr %i.hi, ptr %i.ib, align 8, !tbaa !97
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 1116
  store i32 67, ptr %i.ic, align 4, !tbaa !98
  %i.id = getelementptr inbounds nuw i8, ptr %i.b, i64 1216
  store i64 1048576, ptr %i.id, align 8, !tbaa !99
  %i.ie = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.if = ptrtoint ptr %i.ie to i64               ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 1224
  store i64 %i.if, ptr %i.ig, align 8, !tbaa !100
  %i.ih = add i64 %i.if, -1048576
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 1232
  store i64 %i.ih, ptr %i.ii, align 8, !tbaa !101
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 1240
  store i32 0, ptr %i.ij, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1248
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !72
  br label %bb.u

JS_InitAtoms.exit.thread:                         ; preds = %__JS_NewAtomInit.exit.i, %bb.e, %.preheader.i, %bb.f, %bb.d, %init_shape_hash.exit.thread, %init_class_range.exit.thread
  tail call void @JS_FreeRuntime(ptr noundef nonnull %i.b)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %JS_InitAtoms.exit.thread, %bb.t
  %.0 = phi ptr [ null, %JS_InitAtoms.exit.thread ], [ %i.b, %bb.t ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i64 @js_malloc_usable_size_unknown(ptr nofree readnone captures(none) %0) #0 {
bb.a:
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_call_c_function(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #2 {
bb.a:
  %8 = alloca %struct.JSStackFrame, align 8       ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %.sroa.10.0.extract.shift = lshr i64 %3, 32     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #49
  %i.d = inttoptr i64 %1 to ptr                   ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 65
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35    ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.h = load i8, ptr %i.g, align 8, !tbaa !35    ; 4 uses
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 4                  ; 2 uses
  %i.k = getelementptr i8, ptr %i.c, i64 1232
  %.val = load i64, ptr %i.k, align 8, !tbaa !101
  %i.l = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.j
  %i.o = icmp ult i64 %i.n, %.val
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.92), !inline_history !102 ; 0 uses
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.q = zext i8 %i.h to i32
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 1264 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !103
  store ptr %i.t, ptr %8, align 8, !tbaa !104
  store ptr %8, ptr %i.s, align 8, !tbaa !103
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !35   ; 12 uses
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 60
  store i8 0, ptr %i.v, align 4, !tbaa !108
  %i.w = trunc i32 %7 to i1                       ; 2 uses
end_hunk_1
begin_hunk_2_@js_call_bound_function:bb.a

bb.b:                                             ; preds = %bb.a
  %i.p = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.92), !inline_history !102 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.q = alloca i8, i64 %i.j, align 16            ; 8 uses
  %i.r = icmp sgt i32 %i.e, 0
  br i1 %i.r, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.t = zext nneg i32 %i.e to i64                ; 2 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = icmp eq i32 %i.e, 1
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.t, 2147483646
  br label %bb.d

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod51 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod51)
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.epil.init
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !129
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %i.x = icmp sgt i32 %5, 0
  br i1 %i.x, label %.lr.ph43.preheader, label %._crit_edge

.lr.ph43.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter52 = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %5, 1
  br i1 %i.y, label %.lr.ph43.epil.preheader, label %.lr.ph43.preheader.new

.lr.ph43.preheader.new:                           ; preds = %.lr.ph43.preheader
  %unroll_iter55 = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph43

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !129
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !129
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %bb.d, !llvm.loop !130

.lr.ph43:                                         ; preds = %.lr.ph43, %.lr.ph43.preheader.new
  %indvars.iv45 = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %indvars.iv.next46.1, %.lr.ph43 ] ; 4 uses
  %niter56 = phi i64 [ 0, %.lr.ph43.preheader.new ], [ %niter56.next.1, %.lr.ph43 ]
  %i.ad = trunc nuw nsw i64 %indvars.iv45 to i32
  %i.ae = add nsw i32 %i.e, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.af
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !129
  %indvars.iv.next46 = or disjoint i64 %indvars.iv45, 1 ; 2 uses
  %i.ai = trunc nuw nsw i64 %indvars.iv.next46 to i32
  %i.aj = add nsw i32 %i.e, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.ak
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv.next46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !129
  %indvars.iv.next46.1 = add nuw nsw i64 %indvars.iv45, 2 ; 2 uses
  %niter56.next.1 = add i64 %niter56, 2           ; 2 uses
  %niter56.ncmp.1 = icmp eq i64 %niter56.next.1, %unroll_iter55
  br i1 %niter56.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph43, !llvm.loop !131

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph43
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %._crit_edge, label %.lr.ph43.epil.preheader

.lr.ph43.epil.preheader:                          ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph43.preheader
  %indvars.iv45.epil.init = phi i64 [ 0, %.lr.ph43.preheader ], [ %indvars.iv.next46.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod54 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %i.an = trunc nuw nsw i64 %indvars.iv45.epil.init to i32
  %i.ao = add nsw i32 %i.e, %i.an
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.q, i64 %i.ap
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %indvars.iv45.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !129
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph43.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.as = and i32 %7, 1
  %.not = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.au = tail call fastcc zeroext i1 @js_strict_eq2(i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef 1) ; 2 uses
  %.pre = load i64, ptr %i.c, align 8             ; 2 uses
  %.sroa.6.0.copyload15 = load i64, ptr %i.at, align 8 ; 2 uses
  %.sroa.6.0.copyload15. = select i1 %i.au, i64 %.sroa.6.0.copyload15, i64 %4
  %.pre. = select i1 %i.au, i64 %.pre, i64 %3
  %i.av = call fastcc { i64, i64 } @JS_CallConstructorInternal(ptr noundef nonnull %0, i64 %.pre, i64 %.sroa.6.0.copyload15, i64 %.pre., i64 %.sroa.6.0.copyload15., i32 noundef %i.f, ptr noundef nonnull %i.q, i32 noundef 2), !inline_history !132 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  %i.ax = extractvalue { i64, i64 } %i.av, 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.az = load i64, ptr %i.c, align 8
  %i.ba = load i64, ptr %i.at, align 8
  %i.bb = load i64, ptr %i.ay, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef nonnull %0, i64 %i.az, i64 %i.ba, i64 %i.bb, i64 %i.bd, i64 0, i64 3, i32 noundef %i.f, ptr noundef nonnull %i.q, i32 noundef 2), !inline_history !133 ; 2 uses
  %i.bf = extractvalue { i64, i64 } %i.be, 0
  %i.bg = extractvalue { i64, i64 } %i.be, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %.sroa.040.0 = phi i64 [ 0, %bb.b ], [ %i.aw, %bb.e ], [ %i.bf, %bb.f ]
  %.sroa.4.0 = phi i64 [ 6, %bb.b ], [ %i.ax, %bb.e ], [ %i.bg, %bb.f ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.040.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_call_generator_function(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 %7) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = add i64 %i.e, 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = add i64 %i.h, -1
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %js_arena_malloc.exit.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 776
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.o = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.b, i32 noundef 13) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.d

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i39 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i39, i64 38 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i39, i64 40
  %i.s = zext i16 %i.q to i64
  %i.t = mul nuw nsw i64 %i.s, 120
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 12 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  store i16 %i.v, ptr %i.p, align 2, !tbaa !38
  store i16 %i.q, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i39, i64 34 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !38
  %i.y = add i16 %i.x, 1                          ; 2 uses
  store i16 %i.y, ptr %i.w, align 2, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i39, i64 36
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !38
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %.0.i39, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i39, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !40
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i39, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(112) %i.ag, i8 0, i64 112, i1 false)
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !34
  %i.aj = load i16, ptr %i.u, align 8, !tbaa !35
  %i.ak = icmp eq i16 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.am = icmp eq ptr %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull %i.u) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ap
  br label %bb.j

bb.h:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !35
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !38
  %i.aw = zext i16 %i.av to i64
  br label %bb.j

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.a
  %i.ax = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.b, %bb.a ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1256 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %js_mallocz.exit.thread, label %bb.i

bb.i:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.ay, align 8, !tbaa !57
  %i.bb = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !57
  br label %js_mallocz.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.aq, %bb.g ], [ %i.aw, %bb.h ]
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bd = add i64 %i.bc, %.011.i.i.i.i
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !10
  store i32 0, ptr %i.ag, align 8, !tbaa !136
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 4 uses
  %i.bf = tail call fastcc i32 @async_func_init(ptr noundef nonnull %0, ptr noundef %i.be, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr noundef %6)
  %.not37 = icmp eq i32 %i.bf, 0
  br i1 %.not37, label %bb.k, label %free_generator_stack_rt.exit.sink.split

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bh = getelementptr i8, ptr %i.bg, i64 1232
  %.val.i = load i64, ptr %i.bh, align 8, !tbaa !101
  %i.bi = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = icmp ugt i64 %.val.i, %i.bj
  br i1 %i.bk, label %async_func_resume.exit.thread, label %async_func_resume.exit

async_func_resume.exit.thread:                    ; preds = %bb.k
  %i.bl = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.92), !inline_history !139 ; 0 uses
  br label %bb.p

async_func_resume.exit:                           ; preds = %bb.k
  %i.bm = ptrtoint ptr %i.be to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !140
  %i.bp = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !141
  %i.br = load i64, ptr %i.be, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef nonnull %0, i64 %i.bm, i64 0, i64 %i.br, i64 %i.bt, i64 0, i64 3, i32 noundef %i.bo, ptr noundef %i.bq, i32 noundef 4), !inline_history !142 ; 2 uses
  %i.bv = extractvalue { i64, i64 } %i.bu, 0      ; 2 uses
  %i.bw = extractvalue { i64, i64 } %i.bu, 1      ; 3 uses
  %i.bx = and i64 %i.bw, 4294967295
  %i.by = icmp eq i64 %i.bx, 6
  br i1 %i.by, label %bb.p, label %bb.l

bb.l:                                             ; preds = %async_func_resume.exit
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.ca = trunc i64 %i.bw to i32
  %i.cb = icmp ugt i32 %i.ca, -10
  br i1 %i.cb, label %bb.m, label %JS_FreeValue.exit

bb.m:                                             ; preds = %bb.l
  %i.cc = inttoptr i64 %i.bv to ptr
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8  ; 2 uses
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !8
  %i.cg = icmp slt i32 %i.ce, 2
  br i1 %i.cg, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bz, i64 %i.bv, i64 %i.bw), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.l, %bb.m, %bb.n
  %i.ch = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 49) ; 2 uses
  %i.ci = extractvalue { i64, i64 } %i.ch, 1      ; 2 uses
  %i.cj = and i64 %i.ci, 4294967295
  %i.ck = icmp eq i64 %i.cj, 6
  br i1 %i.ck, label %bb.p, label %bb.o

bb.o:                                             ; preds = %JS_FreeValue.exit
  %i.cl = extractvalue { i64, i64 } %i.ch, 0      ; 2 uses
  %i.cm = inttoptr i64 %i.cl to ptr               ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  store ptr %i.ag, ptr %i.cn, align 8, !tbaa !35
  %i.co = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store ptr %i.cm, ptr %i.co, align 8, !tbaa !144
  br label %js_mallocz.exit.thread

bb.p:                                             ; preds = %async_func_resume.exit.thread, %JS_FreeValue.exit, %async_func_resume.exit
  %.pr = load i32, ptr %i.ag, align 8, !tbaa !136
  %i.cp = icmp eq i32 %.pr, 4
  br i1 %i.cp, label %free_generator_stack_rt.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call fastcc void @async_func_free(ptr noundef %i.cq, ptr noundef nonnull %i.be)
  br label %free_generator_stack_rt.exit.sink.split

free_generator_stack_rt.exit.sink.split:          ; preds = %bb.j, %bb.q
  store i32 4, ptr %i.ag, align 8, !tbaa !136
  br label %free_generator_stack_rt.exit

free_generator_stack_rt.exit:                     ; preds = %free_generator_stack_rt.exit.sink.split, %bb.p
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.cr, ptr noundef nonnull %i.ag)
  br label %js_mallocz.exit.thread

js_mallocz.exit.thread:                           ; preds = %bb.i, %js_arena_malloc.exit.thread, %free_generator_stack_rt.exit, %bb.o
  %i.cs = phi i64 [ 0, %free_generator_stack_rt.exit ], [ %i.cl, %bb.o ], [ 0, %js_arena_malloc.exit.thread ], [ 0, %bb.i ]
  %.sroa.6.0 = phi i64 [ 6, %free_generator_stack_rt.exit ], [ %i.ci, %bb.o ], [ 6, %js_arena_malloc.exit.thread ], [ 6, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.cs, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @JS_UpdateStackTop(ptr nofree noundef captures(none) initializes((1224, 1240)) %0) local_unnamed_addr #8 {
update_stack_limit.exit:
  %i.a = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store i64 %i.b, ptr %i.c, align 8, !tbaa !100
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.e = load i64, ptr %i.d, align 8, !tbaa !99   ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  %i.g = sub i64 %i.b, %i.e
  %spec.select = select i1 %i.f, i64 0, i64 %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i64 %spec.select, ptr %i.h, align 8, !tbaa !101
  ret void
}

; Function Attrs: nounwind uwtable
define void @JS_FreeRuntime(ptr noundef initializes((1258, 1259)) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1258
  store i8 1, ptr %i.a, align 2, !tbaa !145
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = icmp ugt i32 %i.f, -10
  br i1 %i.g, label %bb.b, label %JS_FreeValueRT.exit

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.c to ptr
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -4 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8    ; 2 uses
  %i.k = add nsw i32 %i.j, -1
  store i32 %i.k, ptr %i.i, align 4, !tbaa !8
  %i.l = icmp slt i32 %i.j, 2
  br i1 %i.l, label %bb.c, label %JS_FreeValueRT.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %0, i64 %i.c, i64 %i.e), !inline_history !146
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1328 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1336 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !147  ; 2 uses
  %.not70 = icmp eq ptr %i.o, %i.m
  br i1 %.not70, label %._crit_edge73, label %.preheader

.preheader:                                       ; preds = %JS_FreeValueRT.exit, %._crit_edge
  %.071 = phi ptr [ %.06072, %._crit_edge ], [ %i.o, %JS_FreeValueRT.exit ] ; 4 uses
  %.06072.in = getelementptr inbounds nuw i8, ptr %.071, i64 8
  %.06072 = load ptr, ptr %.06072.in, align 8, !tbaa !40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.071, i64 32 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !8
end_hunk_2
begin_hunk_3_@JS_NewStringLen:bb.a
  %i.n = zext <4 x i8> %wide.load to <4 x i32>
  %i.o = zext <4 x i8> %wide.load113 to <4 x i32>
  %i.p = or <4 x i32> %vec.phi, %i.n              ; 2 uses
  %i.q = or <4 x i32> %vec.phi112, %i.o           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !296

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.q, %i.p
  %i.s = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.c, %middle.block
  %.045.i.ph = phi i32 [ 0, %bb.c ], [ %i.s, %middle.block ]
  %.03244.i.ph = phi i64 [ 0, %bb.c ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.045.i = phi i32 [ %i.w, %scalar.ph ], [ %.045.i.ph, %scalar.ph.preheader ]
  %.03244.i = phi i64 [ %i.x, %scalar.ph ], [ %.03244.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %.03244.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !35
  %i.v = zext i8 %i.u to i32
  %i.w = or i32 %.045.i, %i.v                     ; 2 uses
  %i.x = add nuw i64 %.03244.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.x, %2
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !299

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa111 = phi i32 [ %i.s, %middle.block ], [ %i.w, %scalar.ph ]
  %i.y = icmp sgt i32 %.lcssa111, 127
  br i1 %i.y, label %.lr.ph.i, label %utf8_scan.exit

.lr.ph.i:                                         ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %.lr.ph.i
  %.02748.i = phi i32 [ 1, %.lr.ph.i ], [ %.3.i, %bb.k ] ; 4 uses
  %.02847.i = phi i64 [ 0, %.lr.ph.i ], [ %.230.i, %bb.k ] ; 2 uses
  %.03346.i = phi ptr [ %1, %.lr.ph.i ], [ %.134.i, %bb.k ] ; 5 uses
  %i.ab = add i64 %.02847.i, 1                    ; 4 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %.03346.i, i64 1 ; 2 uses
  %i.ac = load i8, ptr %.03346.i, align 1, !tbaa !35 ; 3 uses
  %i.ad = icmp slt i8 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.03346.i to i64
  %i.af = sub i64 %i.aa, %i.ae                    ; 2 uses
  switch i64 %i.af, label %utf8_decode_len.exit.i [
    i64 0, label %.thread.i
    i64 1, label %bb.h
    i64 2, label %bb.f
    i64 3, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp samesign ult i8 %i.ac, -32
  br i1 %i.ag, label %utf8_decode_len.exit.i, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ah = icmp samesign ult i8 %i.ac, -16
  br i1 %i.ah, label %utf8_decode_len.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.e
  %i.ai = phi i32 [ 10, %bb.h ], [ 2, %bb.e ]
  %storemerge.idx.i = phi i64 [ 1, %bb.h ], [ %i.af, %bb.e ]
  %storemerge.ptr.i = getelementptr inbounds nuw i8, ptr %.03346.i, i64 %storemerge.idx.i ; 2 uses
  store ptr %storemerge.ptr.i, ptr %i.b, align 8, !tbaa !255
  %i.aj = or i32 %i.ai, %.02748.i
  br label %bb.k

utf8_decode_len.exit.i:                           ; preds = %bb.g, %bb.f, %bb.e
  %i.ak = call fastcc i32 @utf8_decode(ptr noundef nonnull %.03346.i, ptr noundef nonnull %i.b) ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !255 ; 4 uses
  %i.am = icmp eq ptr %i.al, %.ptr.i
  %i.an = or i32 %.02748.i, 8
  %spec.select.i = select i1 %i.am, i32 %i.an, i32 %.02748.i ; 3 uses
  %i.ao = icmp ugt i32 %i.ak, 255
  br i1 %i.ao, label %bb.i, label %bb.k

bb.i:                                             ; preds = %utf8_decode_len.exit.i
  %i.ap = or i32 %spec.select.i, 2
  %i.aq = icmp ugt i32 %i.ak, 65535
  br i1 %i.aq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = add i64 %.02847.i, 2
  %i.as = or i32 %spec.select.i, 6
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %utf8_decode_len.exit.i, %.thread.i, %bb.d
  %.134.i = phi ptr [ %.ptr.i, %bb.d ], [ %i.al, %bb.i ], [ %i.al, %bb.j ], [ %i.al, %utf8_decode_len.exit.i ], [ %storemerge.ptr.i, %.thread.i ] ; 2 uses
  %.230.i = phi i64 [ %i.ab, %bb.d ], [ %i.ab, %bb.i ], [ %i.ar, %bb.j ], [ %i.ab, %utf8_decode_len.exit.i ], [ %i.ab, %.thread.i ] ; 2 uses
  %.3.i = phi i32 [ %.02748.i, %bb.d ], [ %i.ap, %bb.i ], [ %i.as, %bb.j ], [ %spec.select.i, %utf8_decode_len.exit.i ], [ %i.aj, %.thread.i ] ; 2 uses
  %i.at = icmp ult ptr %.134.i, %i.z
  br i1 %i.at, label %bb.d, label %utf8_scan.exit, !llvm.loop !300

utf8_scan.exit:                                   ; preds = %bb.k, %.loopexit
  %.331.i = phi i64 [ %2, %.loopexit ], [ %.230.i, %bb.k ] ; 14 uses
  %.4.i = phi i32 [ 0, %.loopexit ], [ %.3.i, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %i.au = icmp ugt i64 %.331.i, 1073741823
  br i1 %i.au, label %bb.l, label %bb.m, !prof !9

bb.l:                                             ; preds = %utf8_scan.exit
  %i.av = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.3) ; 0 uses
  br label %js_alloc_string.exit.thread

bb.m:                                             ; preds = %utf8_scan.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50 ; 21 uses
  switch i32 %.4.i, label %bb.aj [
    i32 0, label %bb.n
    i32 1, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.ay = add nuw nsw i64 %.331.i, 25             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = add i64 %i.bb, %i.ay
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = add i64 %i.be, -1
  %i.bg = icmp ugt i64 %i.bc, %i.bf
  br i1 %i.bg, label %bb.t, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.bh = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ax, i64 noundef %i.ay) ; 8 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %._crit_edge91, label %bb.p

._crit_edge91:                                    ; preds = %bb.o
  %.pre92 = load ptr, ptr %i.aw, align 8, !tbaa !50
  br label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.bi = load i64, ptr %i.az, align 8, !tbaa !34
  %i.bj = add i64 %i.bi, 1
  store i64 %i.bj, ptr %i.az, align 8, !tbaa !34
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 3 uses
  %i.bl = load i16, ptr %i.bk, align 8, !tbaa !35
  %i.bm = icmp eq i16 %i.bl, -1
  br i1 %i.bm, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ax, i64 1064
  %i.bo = icmp eq ptr %i.bk, %i.bn
  br i1 %i.bo, label %str8.exit39, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !36
  %i.br = tail call i64 %i.bq(ptr noundef nonnull %i.bk) #49, !inline_history !301 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.br, 0
  %i.bs = select i1 %.not15.i.i.i, i64 8, i64 %i.br
  br label %str8.exit39

bb.s:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds i8, ptr %i.bh, i64 -6
  %i.bu = load i8, ptr %i.bt, align 2, !tbaa !35
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bv
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !38
  %i.by = zext i16 %i.bx to i64
  br label %str8.exit39

bb.t:                                             ; preds = %._crit_edge91, %bb.n
  %i.bz = phi ptr [ %.pre92, %._crit_edge91 ], [ %i.ax, %bb.n ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1256 ; 3 uses
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !57, !range !58, !noundef !59
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %js_alloc_string.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.ca, align 8, !tbaa !57
  %i.cd = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !302 ; 0 uses
  store i8 0, ptr %i.ca, align 8, !tbaa !57
  br label %js_alloc_string.exit.thread

str8.exit39:                                      ; preds = %bb.q, %bb.r, %bb.s
  %.011.i.i.i = phi i64 [ 8, %bb.q ], [ %i.bs, %bb.r ], [ %i.by, %bb.s ]
  %i.ce = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.cf = add i64 %i.ce, %.011.i.i.i
  store i64 %i.cf, ptr %i.ba, align 8, !tbaa !10
  %i.cg = getelementptr inbounds i8, ptr %i.bh, i64 -4
  store i32 1, ptr %i.cg, align 4, !tbaa !8
  store i64 %.331.i, ptr %i.bh, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 0, ptr %i.ch, align 8, !tbaa !80
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ci, ptr align 1 %1, i64 %.331.i, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.331.i
  store i8 0, ptr %i.cj, align 1, !tbaa !35
  br label %utf8_decode_buf8.exit

bb.v:                                             ; preds = %bb.m
  %i.ck = add nuw nsw i64 %.331.i, 25             ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !10
  %i.co = add i64 %i.cn, %i.ck
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !14
  %i.cr = add i64 %i.cq, -1
  %i.cs = icmp ugt i64 %i.co, %i.cr
  br i1 %i.cs, label %bb.ab, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  %i.ct = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ax, i64 noundef %i.ck) ; 9 uses
  %.not.i.i61 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i61, label %._crit_edge, label %bb.x

._crit_edge:                                      ; preds = %bb.w
  %.pre = load ptr, ptr %i.aw, align 8, !tbaa !50
  br label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cu = load i64, ptr %i.cl, align 8, !tbaa !34
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.cl, align 8, !tbaa !34
  %i.cw = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 3 uses
  %i.cx = load i16, ptr %i.cw, align 8, !tbaa !35
  %i.cy = icmp eq i16 %i.cx, -1
  br i1 %i.cy, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ax, i64 1064
  %i.da = icmp eq ptr %i.cw, %i.cz
  br i1 %i.da, label %str8.exit45, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !36
  %i.dd = tail call i64 %i.dc(ptr noundef nonnull %i.cw) #49, !inline_history !301 ; 2 uses
  %.not15.i.i.i64 = icmp eq i64 %i.dd, 0
  %i.de = select i1 %.not15.i.i.i64, i64 8, i64 %i.dd
  br label %str8.exit45

bb.aa:                                            ; preds = %bb.x
  %i.df = getelementptr inbounds i8, ptr %i.ct, i64 -6
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !35
  %i.dh = zext i8 %i.dg to i64
  %i.di = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !38
  %i.dk = zext i16 %i.dj to i64
  br label %str8.exit45

bb.ab:                                            ; preds = %._crit_edge, %bb.v
  %i.dl = phi ptr [ %.pre, %._crit_edge ], [ %i.ax, %bb.v ]
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 1256 ; 3 uses
  %i.dn = load i8, ptr %i.dm, align 8, !tbaa !57, !range !58, !noundef !59
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %js_alloc_string.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.dm, align 8, !tbaa !57
  %i.dp = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !302 ; 0 uses
  store i8 0, ptr %i.dm, align 8, !tbaa !57
  br label %js_alloc_string.exit.thread

str8.exit45:                                      ; preds = %bb.y, %bb.z, %bb.aa
  %.011.i.i.i62 = phi i64 [ 8, %bb.y ], [ %i.de, %bb.z ], [ %i.dk, %bb.aa ]
  %i.dq = load i64, ptr %i.cm, align 8, !tbaa !10
  %i.dr = add i64 %i.dq, %.011.i.i.i62
  store i64 %i.dr, ptr %i.cm, align 8, !tbaa !10
  %i.ds = getelementptr inbounds i8, ptr %i.ct, i64 -4
  store i32 1, ptr %i.ds, align 4, !tbaa !8
  store i64 %.331.i, ptr %i.ct, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store i32 0, ptr %i.dt, align 8, !tbaa !80
  %i.du = getelementptr inbounds nuw i8, ptr %i.ct, i64 24 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %bb.ag, %str8.exit45
  %.02228.i = phi i64 [ %i.ef, %bb.ag ], [ 0, %str8.exit45 ] ; 3 uses
  %.02327.i = phi ptr [ %.1.i, %bb.ag ], [ %1, %str8.exit45 ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.02327.i, i64 1 ; 2 uses
  %i.dx = load i8, ptr %.02327.i, align 1, !tbaa !35 ; 3 uses
  %i.dy = icmp ugt i8 %i.dx, -65
  br i1 %i.dy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i46
  %i.dz = shl i8 %i.dx, 6
  %i.ea = getelementptr inbounds nuw i8, ptr %.02327.i, i64 2
  %i.eb = load i8, ptr %i.dw, align 1, !tbaa !35
  %i.ec = add i8 %i.eb, %i.dz
  %i.ed = xor i8 %i.ec, -128
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph.i46
  %.1.i = phi ptr [ %i.ea, %bb.ad ], [ %i.dw, %.lr.ph.i46 ] ; 2 uses
  %.0.i47 = phi i8 [ %i.ed, %bb.ad ], [ %i.dx, %.lr.ph.i46 ]
  %.not = icmp ugt i64 %.02228.i, %.331.i
  br i1 %.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 %.02228.i
  store i8 %.0.i47, ptr %i.ee, align 1, !tbaa !35
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ef = add i64 %.02228.i, 1                    ; 3 uses
  %i.eg = icmp ult ptr %.1.i, %i.dv
  br i1 %i.eg, label %.lr.ph.i46, label %._crit_edge.i, !llvm.loop !303

._crit_edge.i:                                    ; preds = %bb.ag
  %.not88 = icmp ugt i64 %i.ef, %.331.i
  br i1 %.not88, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ef
  store i8 0, ptr %i.eh, align 1, !tbaa !35
  br label %utf8_decode_buf8.exit

bb.ai:                                            ; preds = %._crit_edge.i
  %i.ei = getelementptr i8, ptr %i.du, i64 %.331.i
  store i8 0, ptr %i.ei, align 1, !tbaa !35
  br label %utf8_decode_buf8.exit

bb.aj:                                            ; preds = %bb.m
  %i.ej = shl nuw nsw i64 %.331.i, 1
  %i.ek = add nuw nsw i64 %i.ej, 24               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !10
  %i.eo = add i64 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !14
  %i.er = add i64 %i.eq, -1
  %i.es = icmp ugt i64 %i.eo, %i.er
  br i1 %i.es, label %bb.ap, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %bb.aj
  %i.et = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ax, i64 noundef %i.ek) ; 8 uses
  %.not.i.i67 = icmp eq ptr %i.et, null
  br i1 %.not.i.i67, label %._crit_edge93, label %bb.al

._crit_edge93:                                    ; preds = %bb.ak
  %.pre94 = load ptr, ptr %i.aw, align 8, !tbaa !50
  br label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.eu = load i64, ptr %i.el, align 8, !tbaa !34
  %i.ev = add i64 %i.eu, 1
  store i64 %i.ev, ptr %i.el, align 8, !tbaa !34
  %i.ew = getelementptr inbounds i8, ptr %i.et, i64 -8 ; 3 uses
  %i.ex = load i16, ptr %i.ew, align 8, !tbaa !35
  %i.ey = icmp eq i16 %i.ex, -1
  br i1 %i.ey, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ax, i64 1064
  %i.fa = icmp eq ptr %i.ew, %i.ez
  br i1 %i.fa, label %str16.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !36
  %i.fd = tail call i64 %i.fc(ptr noundef nonnull %i.ew) #49, !inline_history !301 ; 2 uses
  %.not15.i.i.i70 = icmp eq i64 %i.fd, 0
  %i.fe = select i1 %.not15.i.i.i70, i64 8, i64 %i.fd
  br label %str16.exit

bb.ao:                                            ; preds = %bb.al
  %i.ff = getelementptr inbounds i8, ptr %i.et, i64 -6
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !35
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !38
  %i.fk = zext i16 %i.fj to i64
  br label %str16.exit

bb.ap:                                            ; preds = %._crit_edge93, %bb.aj
  %i.fl = phi ptr [ %.pre94, %._crit_edge93 ], [ %i.ax, %bb.aj ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1256 ; 3 uses
  %i.fn = load i8, ptr %i.fm, align 8, !tbaa !57, !range !58, !noundef !59
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %js_alloc_string.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.fm, align 8, !tbaa !57
  %i.fp = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !302 ; 0 uses
  store i8 0, ptr %i.fm, align 8, !tbaa !57
  br label %js_alloc_string.exit.thread

str16.exit:                                       ; preds = %bb.am, %bb.an, %bb.ao
  %.011.i.i.i68 = phi i64 [ 8, %bb.am ], [ %i.fe, %bb.an ], [ %i.fk, %bb.ao ]
  %i.fq = load i64, ptr %i.em, align 8, !tbaa !10
  %i.fr = add i64 %i.fq, %.011.i.i.i68
  store i64 %i.fr, ptr %i.em, align 8, !tbaa !10
end_hunk_3
begin_hunk_4_@JS_NewStringLen:bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 2 uses
  %i.fx = ptrtoint ptr %i.fw to i64
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ba, %str16.exit
  %i.fy = phi ptr [ %1, %str16.exit ], [ %i.gv, %bb.ba ] ; 5 uses
  %.01926.i = phi i64 [ 0, %str16.exit ], [ %i.gu, %bb.ba ] ; 9 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  store ptr %i.fz, ptr %i.a, align 8, !tbaa !255
  %i.ga = load i8, ptr %i.fy, align 1, !tbaa !35  ; 4 uses
  %i.gb = zext nneg i8 %i.ga to i32
  %i.gc = icmp slt i8 %i.ga, 0
  br i1 %i.gc, label %bb.as, label %utf8_decode_len.exit.thread.i

bb.as:                                            ; preds = %bb.ar
  %i.gd = ptrtoint ptr %i.fy to i64
  %i.ge = sub i64 %i.fx, %i.gd
  switch i64 %i.ge, label %utf8_decode_len.exit.i58 [
    i64 0, label %bb.at
    i64 1, label %utf8_decode_len.exit.thread.i
    i64 2, label %bb.au
    i64 3, label %bb.av
  ]

bb.at:                                            ; preds = %bb.as
  store ptr %i.fy, ptr %i.a, align 8, !tbaa !255
  br label %utf8_decode_len.exit.thread.i

bb.au:                                            ; preds = %bb.as
  %i.gf = icmp samesign ult i8 %i.ga, -32
  br i1 %i.gf, label %utf8_decode_len.exit.i58, label %utf8_decode_len.exit.thread.i

bb.av:                                            ; preds = %bb.as
  %i.gg = icmp samesign ult i8 %i.ga, -16
  br i1 %i.gg, label %utf8_decode_len.exit.i58, label %utf8_decode_len.exit.thread.i

utf8_decode_len.exit.i58:                         ; preds = %bb.av, %bb.au, %bb.as
  %i.gh = call fastcc i32 @utf8_decode(ptr noundef nonnull %i.fy, ptr noundef nonnull %i.a) ; 4 uses
  %i.gi = icmp ugt i32 %i.gh, 65535
  br i1 %i.gi, label %bb.aw, label %utf8_decode_len.exit.thread.i

bb.aw:                                            ; preds = %utf8_decode_len.exit.i58
  %i.gj = icmp ult i64 %.01926.i, %.331.i
  br i1 %i.gj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.gk = lshr i32 %i.gh, 10
  %i.gl = trunc i32 %i.gk to i16
  %i.gm = add i16 %i.gl, -10304
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %.01926.i
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !38
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.go = add i64 %.01926.i, 1
  %i.gp = and i32 %i.gh, 1023
  %i.gq = or disjoint i32 %i.gp, 56320
  br label %utf8_decode_len.exit.thread.i

utf8_decode_len.exit.thread.i:                    ; preds = %bb.ay, %utf8_decode_len.exit.i58, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar
  %.1.i55 = phi i64 [ %i.go, %bb.ay ], [ %.01926.i, %utf8_decode_len.exit.i58 ], [ %.01926.i, %bb.ar ], [ %.01926.i, %bb.at ], [ %.01926.i, %bb.as ], [ %.01926.i, %bb.av ], [ %.01926.i, %bb.au ] ; 3 uses
  %.0.i56 = phi i32 [ %i.gq, %bb.ay ], [ %i.gh, %utf8_decode_len.exit.i58 ], [ %i.gb, %bb.ar ], [ 65533, %bb.at ], [ 65533, %bb.as ], [ 65533, %bb.av ], [ 65533, %bb.au ]
  %i.gr = icmp ult i64 %.1.i55, %.331.i
  br i1 %i.gr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %utf8_decode_len.exit.thread.i
  %i.gs = trunc nuw i32 %.0.i56 to i16
  %i.gt = getelementptr inbounds nuw [2 x i8], ptr %i.fv, i64 %.1.i55
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !38
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %utf8_decode_len.exit.thread.i
  %i.gu = add i64 %.1.i55, 1
  %i.gv = load ptr, ptr %i.a, align 8, !tbaa !255 ; 2 uses
  %i.gw = icmp ult ptr %i.gv, %i.fw
  br i1 %i.gw, label %bb.ar, label %utf8_decode_buf16.exit, !llvm.loop !304

utf8_decode_buf16.exit:                           ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %utf8_decode_buf8.exit

utf8_decode_buf8.exit:                            ; preds = %bb.ai, %bb.ah, %utf8_decode_buf16.exit, %str8.exit39
  %.0 = phi ptr [ %i.et, %utf8_decode_buf16.exit ], [ %i.bh, %str8.exit39 ], [ %i.ct, %bb.ah ], [ %i.ct, %bb.ai ]
  %i.gx = ptrtoint ptr %.0 to i64
  br label %js_alloc_string.exit.thread

js_alloc_string.exit.thread:                      ; preds = %bb.aq, %bb.ap, %bb.ac, %bb.ab, %bb.u, %bb.t, %utf8_decode_buf8.exit, %bb.l, %bb.b
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.l ], [ 0, %bb.u ], [ %i.gx, %utf8_decode_buf8.exit ], [ 0, %bb.ac ], [ 0, %bb.t ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 0, %bb.aq ]
  %.sroa.10.0 = phi i64 [ -7, %bb.b ], [ 6, %bb.l ], [ 6, %bb.u ], [ -7, %utf8_decode_buf8.exit ], [ 6, %bb.ac ], [ 6, %bb.t ], [ 6, %bb.ab ], [ 6, %bb.ap ], [ 6, %bb.aq ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.10.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define i32 @JS_NewAtom(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #52
  %i.b = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @JS_NewAtomUInt32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp sgt i32 %1, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = or disjoint i32 %1, -2147483648
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.d = call i64 @u32toa(ptr noundef nonnull %i.a, i32 noundef %1) #49 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 8 uses
  %sext = shl i64 %i.d, 32
  %i.g = ashr exact i64 %sext, 32                 ; 3 uses
  %i.h = add nsw i64 %i.g, 25                     ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.j, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  %i.m = add i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = add i64 %i.o, -1
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.j, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.r = call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.f, i64 noundef %i.h), !inline_history !305 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.e
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !50
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.j, align 8, !tbaa !34
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.j, align 8, !tbaa !34
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 1064
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = call i64 %i.aa(ptr noundef nonnull %i.u) #49, !inline_history !306 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ab
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 -6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !35
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !38
  %i.ai = zext i16 %i.ah to i64
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge, %bb.d, %bb.c
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.d ], [ %i.f, %bb.c ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1256 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !57, !range !58, !noundef !59
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %js_new_string8_len.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ak, align 8, !tbaa !57
  %i.an = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !307 ; 0 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !57
  br label %js_new_string8_len.exit.thread

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.011.i.i.i.i = phi i64 [ 8, %bb.g ], [ %i.ac, %bb.h ], [ %i.ai, %bb.i ]
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !10
  %i.ap = add i64 %i.ao, %.011.i.i.i.i
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !10
  %i.aq = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 1, ptr %i.aq, align 4, !tbaa !8
  %i.ar = and i64 %i.d, 2147483647
  store i64 %i.ar, ptr %i.r, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %i.as, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.g
  store i8 0, ptr %i.au, align 1, !tbaa !35
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.aw = call fastcc i32 @__JS_NewAtom(ptr noundef %i.av, ptr noundef nonnull %i.r, i32 noundef 1)
  br label %js_new_string8_len.exit.thread

js_new_string8_len.exit.thread:                   ; preds = %bb.k, %bb.j, %bb.l
  %.0 = phi i32 [ %i.aw, %bb.l ], [ 0, %bb.j ], [ 0, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.m

bb.m:                                             ; preds = %js_new_string8_len.exit.thread, %bb.b
  %.1 = phi i32 [ %i.c, %bb.b ], [ %.0, %js_new_string8_len.exit.thread ]
  ret i32 %.1
}

declare i64 @u32toa(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 8 uses
  %i.c = sext i32 %2 to i64                       ; 3 uses
  %i.d = add nsw i64 %i.c, 25                     ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !10
  %i.i = add i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  %i.l = add i64 %i.k, -1
  %i.m = icmp ugt i64 %i.i, %i.l
  br i1 %i.m, label %bb.h, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.n = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %i.d) ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.f, align 8, !tbaa !34
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.f, align 8, !tbaa !34
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 -8 ; 3 uses
  %i.r = load i16, ptr %i.q, align 8, !tbaa !35
  %i.s = icmp eq i16 %i.r, -1
  br i1 %i.s, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.u = icmp eq ptr %i.q, %i.t
  br i1 %i.u, label %str8.exit10, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.x = tail call i64 %i.w(ptr noundef nonnull %i.q) #49, !inline_history !301 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.x, 0
  %i.y = select i1 %.not15.i.i.i, i64 8, i64 %i.x
  br label %str8.exit10

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds i8, ptr %i.n, i64 -6
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !35
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !38
  %i.ae = zext i16 %i.ad to i64
  br label %str8.exit10

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.af = phi ptr [ %.pre, %._crit_edge ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1256 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %js_alloc_string.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ag, align 8, !tbaa !57
  %i.aj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !302 ; 0 uses
  store i8 0, ptr %i.ag, align 8, !tbaa !57
  br label %js_alloc_string.exit.thread

str8.exit10:                                      ; preds = %bb.e, %bb.f, %bb.g
  %.011.i.i.i = phi i64 [ 8, %bb.e ], [ %i.y, %bb.f ], [ %i.ae, %bb.g ]
  %i.ak = load i64, ptr %i.g, align 8, !tbaa !10
  %i.al = add i64 %i.ak, %.011.i.i.i
  store i64 %i.al, ptr %i.g, align 8, !tbaa !10
  %i.am = getelementptr inbounds i8, ptr %i.n, i64 -4
  store i32 1, ptr %i.am, align 4, !tbaa !8
  %i.an = and i32 %2, 2147483647
  %i.ao = zext nneg i32 %i.an to i64
  store i64 %i.ao, ptr %i.n, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.ap, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %1, i64 %i.c, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.c
  store i8 0, ptr %i.ar, align 1, !tbaa !35
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
  %i.g = load i32, ptr %i.f, align 8, !tbaa !80
  %.not.i = icmp ugt i64 %i.b, -4611686018427387905
  br i1 %.not.i, label %js_get_atom_index.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75
  %i.j = lshr i64 %i.b, 32
  %i.k = trunc nuw i64 %i.j to i32
  %i.l = and i32 %i.k, 268435455
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.n = load i32, ptr %i.m, align 8, !tbaa !74
  %i.o = add nsw i32 %i.n, -1
  %i.p = and i32 %i.l, %i.o
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !154
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.012.in.i = phi ptr [ %i.r, %bb.d ], [ %i.u, %bb.e ]
  %.012.i = load i32, ptr %.012.in.i, align 4, !tbaa !8 ; 2 uses
  %.pn.i = zext i32 %.012.i to i64
  %.0.in.i = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.pn.i
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !155 ; 2 uses
  %.not13.i = icmp eq ptr %.0.i, %1
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  br i1 %.not13.i, label %js_get_atom_index.exit, label %bb.e, !llvm.loop !308

js_get_atom_index.exit:                           ; preds = %bb.e, %bb.c
  %.1.i = phi i32 [ %i.g, %bb.c ], [ %.012.i, %bb.e ] ; 3 uses
  %i.v = icmp slt i32 %.1.i, 242
  br i1 %i.v, label %bb.f, label %js_free_string.exit170

bb.f:                                             ; preds = %js_get_atom_index.exit
  %i.w = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !8
  br label %js_free_string.exit170

bb.g:                                             ; preds = %bb.b
  %i.z = trunc i64 %i.b to i32
  %i.aa = and i32 %i.z, 2147483647                ; 2 uses
  %i.ab = tail call fastcc i32 @hash_string(ptr noundef nonnull %1, i32 noundef %2)
  %i.ac = and i32 %i.ab, 268435455                ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !74
  %i.af = add i32 %i.ae, 268435455
  %i.ag = and i32 %i.af, %i.ac                    ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !75
  %i.aj = zext nneg i32 %i.ag to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.aj
  %.0130198 = load i32, ptr %i.ak, align 4, !tbaa !8 ; 2 uses
  %.not199 = icmp eq i32 %.0130198, 0
  br i1 %.not199, label %.loopexit196, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1104
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.0130200 = phi i32 [ %.0130198, %.lr.ph ], [ %.0130, %bb.l ] ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !154
  %i.an = zext i32 %.0130200 to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !155 ; 4 uses
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
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !8
  br label %.thread192

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.0130 = load i32, ptr %i.bh, align 8, !tbaa !8 ; 2 uses
  %.not = icmp eq i32 %.0130, 0
  br i1 %.not, label %.loopexit196, label %bb.h, !llvm.loop !309

bb.m:                                             ; preds = %bb.a
  %i.bi = icmp ne i32 %2, 3
  %. = zext i1 %i.bi to i32
  br label %.loopexit196

.loopexit196:                                     ; preds = %bb.l, %bb.g, %bb.m
  %.0133 = phi i32 [ 3, %bb.m ], [ %2, %bb.g ], [ %2, %bb.l ] ; 3 uses
  %.0132 = phi i32 [ %., %bb.m ], [ %i.ac, %bb.g ], [ %i.ac, %bb.l ]
  %.0131 = phi i32 [ 0, %bb.m ], [ %i.ag, %bb.g ], [ %i.ag, %bb.l ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 5 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !78
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %.loopexit196
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !77
  %i.bo = mul nsw i32 %i.bn, 3
  %i.bp = sdiv i32 %i.bo, 2
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.bp, i32 711) ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 3 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !154
  %i.bs = zext nneg i32 %..i to i64
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = tail call ptr @js_realloc_rt(ptr noundef nonnull %0, ptr noundef %i.br, i64 noundef %i.bt) ; 7 uses
  %.not145 = icmp eq ptr %i.bu, null
  br i1 %.not145, label %bb.ay, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = load i32, ptr %i.bm, align 8, !tbaa !77 ; 5 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.p, label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = add i64 %i.bz, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !14
  %i.cd = add i64 %i.cc, -1
  %i.ce = icmp ugt i64 %i.ca, %i.cd
  br i1 %i.ce, label %js_arena_malloc.exit.thread, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, %i.cf
  br i1 %i.ci, label %bb.r, label %bb.s, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.cj = tail call fastcc ptr @arena_new(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not.i174 = icmp eq ptr %i.cj, null
  br i1 %.not.i174, label %js_arena_malloc.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i172 = phi ptr [ %i.cj, %bb.r ], [ %i.ch, %bb.q ] ; 7 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i172, i64 38 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !38 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i172, i64 40
  %i.cn = zext i16 %i.cl to i64
  %i.co = shl nuw nsw i64 %i.cn, 5
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.co ; 8 uses
  %i.cq = load i16, ptr %i.cp, align 8, !tbaa !35
  store i16 %i.cq, ptr %i.ck, align 2, !tbaa !38
  store i16 %i.cl, ptr %i.cp, align 8, !tbaa !35
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i172, i64 34 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !38
  %i.ct = add i16 %i.cs, 1                        ; 2 uses
  store i16 %i.ct, ptr %i.cr, align 2, !tbaa !38
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i172, i64 36
  %i.cv = load i16, ptr %i.cu, align 4, !tbaa !38
  %i.cw = icmp eq i16 %i.ct, %i.cv
  br i1 %i.cw, label %bb.t, label %js_arena_calloc.exit.thread26.i.i, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.cx = load ptr, ptr %.0.i172, align 8, !tbaa !41 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i172, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !40 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !40
  store ptr %i.cx, ptr %i.cz, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i172, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i

js_arena_calloc.exit.thread26.i.i:                ; preds = %bb.t, %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.db, i8 0, i64 24, i1 false)
  %i.dc = load i64, ptr %i.bx, align 8, !tbaa !34
  %i.dd = add i64 %i.dc, 1
  store i64 %i.dd, ptr %i.bx, align 8, !tbaa !34
  %i.de = load i16, ptr %i.cp, align 8, !tbaa !35
  %i.df = icmp eq i16 %i.de, -1
  br i1 %i.df, label %bb.u, label %bb.w

bb.u:                                             ; preds = %js_arena_calloc.exit.thread26.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.dh = icmp eq ptr %i.cp, %i.dg
  br i1 %i.dh, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.dk = tail call i64 %i.dj(ptr noundef nonnull %i.cp) #49, !inline_history !61 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.dk, 0
  %i.dl = select i1 %.not15.i.i.i, i64 8, i64 %i.dk
  br label %.thread

bb.w:                                             ; preds = %js_arena_calloc.exit.thread26.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !35
  %i.do = zext i8 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !38
  %i.dr = zext i16 %i.dq to i64
  br label %.thread

js_arena_malloc.exit.thread:                      ; preds = %bb.r, %bb.p
  tail call void @js_free_rt(ptr noundef nonnull %0, ptr noundef nonnull %i.bu)
  br label %bb.ay

.thread:                                          ; preds = %bb.u, %bb.v, %bb.w
  %.011.i.i.i = phi i64 [ 8, %bb.u ], [ %i.dl, %bb.v ], [ %i.dr, %bb.w ]
  %i.ds = load i64, ptr %i.by, align 8, !tbaa !10
  %i.dt = add i64 %i.ds, %.011.i.i.i
  store i64 %i.dt, ptr %i.by, align 8, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  store i32 1, ptr %i.du, align 4, !tbaa !8
  %i.dv = load i64, ptr %i.db, align 8
  %i.dw = or i64 %i.dv, -4611686018427387904
  store i64 %i.dw, ptr %i.db, align 8
  store ptr %i.db, ptr %i.bu, align 8, !tbaa !155
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1084 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !76
  %i.dz = add nsw i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !76
  store i32 %..i, ptr %i.bm, align 8, !tbaa !77
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !154
  store i32 1, ptr %i.bj, align 8, !tbaa !78
  br label %.lr.ph202

bb.x:                                             ; preds = %bb.o
  store i32 %..i, ptr %i.bm, align 8, !tbaa !77
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !154
  store i32 %i.bv, ptr %i.bj, align 8, !tbaa !78
  %i.ea = icmp ult i32 %i.bv, %..i
  br i1 %i.ea, label %.lr.ph202, label %.loopexit

.lr.ph202:                                        ; preds = %.thread, %bb.x
  %.0127222 = phi i32 [ 1, %.thread ], [ %i.bv, %bb.x ]
  %i.eb = add nsw i32 %..i, -1
  %i.ec = tail call i32 @llvm.umax.i32(i32 %i.bv, i32 1) ; 3 uses
  %umax = zext i32 %i.ec to i64                   ; 4 uses
  %i.ed = zext nneg i32 %i.eb to i64              ; 2 uses
  %i.ee = add i32 %..i, %i.ec
  %i.ef = sub i32 %i.ee, %.0127222
  %i.eg = xor i32 %i.ec, -1
  %i.eh = add i32 %..i, %i.eg                     ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = add nuw nsw i64 %i.ei, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.eh, 3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph202
  %n.vec = and i64 %i.ej, 8589934588              ; 3 uses
  %i.ek = add nuw nsw i64 %n.vec, %umax
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ed, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert227 = insertelement <2 x i64> poison, i64 %umax, i64 0
  %broadcast.splat228 = shufflevector <2 x i64> %broadcast.splatinsert227, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat228, <i64 0, i64 1>
  %invariant.gep = getelementptr [8 x i8], ptr %i.bu, i64 %umax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.el = icmp eq <2 x i64> %vec.ind, %broadcast.splat
  %i.em = icmp eq <2 x i64> %step.add, %broadcast.splat
  %i.en = shl nuw <2 x i64> %vec.ind, splat (i64 1)
  %i.eo = add <2 x i64> %i.en, splat (i64 2)
  %i.ep = shl nuw <2 x i64> %vec.ind, splat (i64 1)
  %i.eq = add <2 x i64> %i.ep, splat (i64 6)
  %i.er = and <2 x i64> %i.eo, splat (i64 8589934590)
  %i.es = and <2 x i64> %i.eq, splat (i64 8589934590)
  %i.et = or disjoint <2 x i64> %i.er, splat (i64 1)
  %i.eu = or disjoint <2 x i64> %i.es, splat (i64 1)
  %i.ev = select <2 x i1> %i.el, <2 x i64> splat (i64 1), <2 x i64> %i.et
  %i.ew = select <2 x i1> %i.em, <2 x i64> splat (i64 1), <2 x i64> %i.eu
  %i.ex = inttoptr <2 x i64> %i.ev to <2 x ptr>
  %i.ey = inttoptr <2 x i64> %i.ew to <2 x ptr>
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <2 x ptr> %i.ex, ptr %gep, align 8, !tbaa !155
  store <2 x ptr> %i.ey, ptr %i.ez, align 8, !tbaa !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 4)
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ej, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph202, %middle.block
  %indvars.iv.ph = phi i64 [ %umax, %.lr.ph202 ], [ %i.ek, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fb = icmp eq i64 %indvars.iv, %i.ed
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fc = trunc i64 %indvars.iv.next to i32
  %i.fd = shl nuw i64 %indvars.iv.next, 1
  %i.fe = and i64 %i.fd, 8589934590
  %i.ff = or disjoint i64 %i.fe, 1
  %i.fg = select i1 %i.fb, i64 1, i64 %i.ff
  %i.fh = inttoptr i64 %i.fg to ptr
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %indvars.iv
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !155
  %exitcond.not = icmp eq i32 %i.ef, %i.fc
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !311

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.x, %.loopexit196
  %.not147 = icmp eq ptr %1, null
  br i1 %.not147, label %bb.am, label %bb.y

bb.y:                                             ; preds = %.loopexit
  %i.fj = load i64, ptr %1, align 8               ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 4611686018427387904
  br i1 %i.fk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fl = zext nneg i32 %.0133 to i64
  %i.fm = shl nuw i64 %i.fl, 62
  %i.fn = or disjoint i64 %i.fj, %i.fm
  store i64 %i.fn, ptr %1, align 8
  br label %js_free_string.exit

bb.aa:                                            ; preds = %bb.y
  %i.fo = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fp = and i32 %i.fo, 2147483647
  %i.fq = lshr i32 %i.fo, 31                      ; 2 uses
  %i.fr = shl nuw i32 %i.fp, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = add nsw i64 %i.fs, 25                   ; 2 uses
  %i.fu = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.fv = sub nsw i64 %i.ft, %i.fu                ; 2 uses
  %i.fw = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fw, label %.thread192, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %bb.aa
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !10
  %i.ga = add i64 %i.fz, %i.fv
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !14
  %i.gd = add i64 %i.gc, -1
  %i.ge = icmp ugt i64 %i.ga, %i.gd
  br i1 %i.ge, label %.thread192, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %bb.ab
  %i.gf = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef %i.fv) ; 10 uses
  %.not.i158 = icmp eq ptr %i.gf, null
  br i1 %.not.i158, label %.thread192, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gg = load i64, ptr %i.fx, align 8, !tbaa !34
  %i.gh = add i64 %i.gg, 1
  store i64 %i.gh, ptr %i.fx, align 8, !tbaa !34
  %i.gi = getelementptr inbounds i8, ptr %i.gf, i64 -8 ; 3 uses
  %i.gj = load i16, ptr %i.gi, align 8, !tbaa !35
  %i.gk = icmp eq i16 %i.gj, -1
  br i1 %i.gk, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.gm = icmp eq ptr %i.gi, %i.gl
  br i1 %i.gm, label %str8.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !36
  %i.gp = tail call i64 %i.go(ptr noundef nonnull %i.gi) #49, !inline_history !45 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.gp, 0
  %i.gq = select i1 %.not15.i.i, i64 8, i64 %i.gp
  br label %str8.exit

bb.ag:                                            ; preds = %bb.ad
  %i.gr = getelementptr inbounds i8, ptr %i.gf, i64 -6
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !35
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !38
  %i.gw = zext i16 %i.gv to i64
  br label %str8.exit

str8.exit:                                        ; preds = %bb.ag, %bb.af, %bb.ae
  %.011.i.i = phi i64 [ 8, %bb.ae ], [ %i.gq, %bb.af ], [ %i.gw, %bb.ag ]
  %i.gx = load i64, ptr %i.fy, align 8, !tbaa !10
  %i.gy = add i64 %i.gx, %.011.i.i
  store i64 %i.gy, ptr %i.fy, align 8, !tbaa !10
  %i.gz = getelementptr inbounds i8, ptr %i.gf, i64 -4
  store i32 1, ptr %i.gz, align 4, !tbaa !8
  %i.ha = load i64, ptr %1, align 8
  %i.hb = and i64 %i.ha, 2147483648
  %i.hc = load i64, ptr %i.gf, align 8
  %i.hd = and i64 %i.hc, -2147483649
  %i.he = or disjoint i64 %i.hd, %i.hb            ; 2 uses
  store i64 %i.he, ptr %i.gf, align 8
  %i.hf = load i64, ptr %1, align 8
  %i.hg = and i64 %i.hf, 2147483647
  %i.hh = and i64 %i.he, -3458764515968024576
  %i.hi = or disjoint i64 %i.hh, %i.hg
  store i64 %i.hi, ptr %i.gf, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.hk = load i64, ptr %1, align 8               ; 2 uses
  %i.hl = lshr i64 %i.hk, 60
  %i.hm = trunc nuw nsw i64 %i.hl to i32
  %i.hn = and i32 %i.hm, 3
  switch i32 %i.hn, label %default.unreachable [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
    i32 2, label %bb.aj
    i32 3, label %bb.ak
  ]

bb.ah:                                            ; preds = %str8.exit
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %str8.exit163

bb.ai:                                            ; preds = %str8.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !292
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !294
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hu
  br label %str8.exit163

bb.aj:                                            ; preds = %str8.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !71
  br label %str8.exit163

default.unreachable:                              ; preds = %str8.exit
  unreachable

bb.ak:                                            ; preds = %str8.exit
  tail call void @abort() #50
  unreachable

str8.exit163:                                     ; preds = %bb.ah, %bb.ai, %bb.aj
  %.0.i.i161 = phi ptr [ %i.ho, %bb.ah ], [ %i.hv, %bb.ai ], [ %i.hx, %bb.aj ]
  %i.hy = trunc i64 %i.hk to i32                  ; 3 uses
  %i.hz = and i32 %i.hy, 2147483647
  %i.ia = lshr i32 %i.hy, 31
  %i.ib = shl nuw i32 %i.hz, %i.ia
  %isnotneg = icmp sgt i32 %i.hy, -1
  %i.ic = zext i1 %isnotneg to i32
  %i.id = add nuw i32 %i.ib, %i.ic
  %i.ie = sext i32 %i.id to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hj, ptr align 1 %.0.i.i161, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !8  ; 2 uses
  %i.ih = add nsw i32 %i.ig, -1
  store i32 %i.ih, ptr %i.if, align 4, !tbaa !8
  %i.ii = icmp slt i32 %i.ig, 2
  br i1 %i.ii, label %bb.al, label %js_free_string.exit

bb.al:                                            ; preds = %str8.exit163
  tail call fastcc void @js_free_string0(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !312
  br label %js_free_string.exit

bb.am:                                            ; preds = %.loopexit
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !10
  %i.im = add i64 %i.il, 24
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.io = load i64, ptr %i.in, align 8, !tbaa !14
  %i.ip = add i64 %i.io, -1
  %i.iq = icmp ugt i64 %i.im, %i.ip
  br i1 %i.iq, label %js_free_string.exit170, label %bb.an, !prof !9

bb.an:                                            ; preds = %bb.am
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !40 ; 2 uses
  %i.iu = icmp eq ptr %i.it, %i.ir
  br i1 %i.iu, label %bb.ao, label %bb.ap, !prof !9

bb.ao:                                            ; preds = %bb.an
  %i.iv = tail call fastcc ptr @arena_new(ptr noundef nonnull %0, i32 noundef 2) ; 2 uses
  %.not.i178 = icmp eq ptr %i.iv, null
  br i1 %.not.i178, label %js_free_string.exit170, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.0.i176 = phi ptr [ %i.iv, %bb.ao ], [ %i.it, %bb.an ] ; 7 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i176, i64 38 ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !38 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.0.i176, i64 40
  %i.iz = zext i16 %i.ix to i64
  %i.ja = shl nuw nsw i64 %i.iz, 5
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.ja ; 8 uses
  %i.jc = load i16, ptr %i.jb, align 8, !tbaa !35
  store i16 %i.jc, ptr %i.iw, align 2, !tbaa !38
  store i16 %i.ix, ptr %i.jb, align 8, !tbaa !35
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i176, i64 34 ; 2 uses
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !38
  %i.jf = add i16 %i.je, 1                        ; 2 uses
  store i16 %i.jf, ptr %i.jd, align 2, !tbaa !38
  %i.jg = getelementptr inbounds nuw i8, ptr %.0.i176, i64 36
  %i.jh = load i16, ptr %i.jg, align 4, !tbaa !38
  %i.ji = icmp eq i16 %i.jf, %i.jh
  br i1 %i.ji, label %bb.aq, label %bb.ar, !prof !9

bb.aq:                                            ; preds = %bb.ap
  %i.jj = load ptr, ptr %.0.i176, align 8, !tbaa !41 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i176, i64 8
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !40 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store ptr %i.jl, ptr %i.jm, align 8, !tbaa !40
  store ptr %i.jj, ptr %i.jl, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i176, i8 0, i64 16, i1 false)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 3 uses
  %i.jo = load i64, ptr %i.ij, align 8, !tbaa !34
  %i.jp = add i64 %i.jo, 1
  store i64 %i.jp, ptr %i.ij, align 8, !tbaa !34
  %i.jq = load i16, ptr %i.jb, align 8, !tbaa !35
  %i.jr = icmp eq i16 %i.jq, -1
  br i1 %i.jr, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.jt = icmp eq ptr %i.jb, %i.js
  br i1 %i.jt, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !36
  %i.jw = tail call i64 %i.jv(ptr noundef nonnull %i.jb) #49, !inline_history !45 ; 2 uses
  %.not15.i.i168 = icmp eq i64 %i.jw, 0
  %i.jx = select i1 %.not15.i.i168, i64 8, i64 %i.jw
  br label %bb.av

bb.au:                                            ; preds = %bb.ar
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  %i.jz = load i8, ptr %i.jy, align 2, !tbaa !35
  %i.ka = zext i8 %i.jz to i64
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !38
  %i.kd = zext i16 %i.kc to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as
  %.011.i.i166 = phi i64 [ 8, %bb.as ], [ %i.jx, %bb.at ], [ %i.kd, %bb.au ]
  %i.ke = load i64, ptr %i.ik, align 8, !tbaa !10
  %i.kf = add i64 %i.ke, %.011.i.i166
  store i64 %i.kf, ptr %i.ik, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jb, i64 4
  store i32 1, ptr %i.kg, align 4, !tbaa !8
  %i.kh = load i64, ptr %i.jn, align 8
  %i.ki = and i64 %i.kh, -3458764518115508224
  %i.kj = or disjoint i64 %i.ki, 2147483648
  store i64 %i.kj, ptr %i.jn, align 8
  br label %js_free_string.exit

js_free_string.exit:                              ; preds = %bb.al, %str8.exit163, %bb.z, %bb.av
  %.0129 = phi ptr [ %1, %bb.z ], [ %i.jn, %bb.av ], [ %i.gf, %str8.exit163 ], [ %i.gf, %bb.al ] ; 5 uses
  %i.kk = load i32, ptr %i.bj, align 8, !tbaa !78 ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !154
  %i.kn = zext i32 %i.kk to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kn ; 2 uses
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !155
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = lshr i64 %i.kq, 1
  %i.ks = trunc i64 %i.kr to i32
  store i32 %i.ks, ptr %i.bj, align 8, !tbaa !78
  store ptr %.0129, ptr %i.ko, align 8, !tbaa !155
  %i.kt = zext nneg i32 %.0132 to i64
  %i.ku = load i64, ptr %.0129, align 8
  %i.kv = shl nuw nsw i64 %i.kt, 32
  %i.kw = and i64 %i.ku, 3458764518115508223
  %i.kx = or disjoint i64 %i.kw, %i.kv
  %i.ky = getelementptr inbounds nuw i8, ptr %.0129, i64 8 ; 2 uses
  store i32 %i.kk, ptr %i.ky, align 8, !tbaa !80
  %i.kz = zext nneg i32 %.0133 to i64
  %i.la = shl nuw i64 %i.kz, 62
  %i.lb = or disjoint i64 %i.kx, %i.la
  store i64 %i.lb, ptr %.0129, align 8
  %i.lc = getelementptr inbounds nuw i8, ptr %.0129, i64 16
  store ptr null, ptr %i.lc, align 8, !tbaa !245
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 1084 ; 3 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !76
  %i.lf = add nsw i32 %i.le, 1
  store i32 %i.lf, ptr %i.ld, align 4, !tbaa !76
  %.not150 = icmp eq i32 %.0133, 3
  br i1 %.not150, label %js_free_string.exit170, label %bb.aw

bb.aw:                                            ; preds = %js_free_string.exit
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !75
  %i.li = zext nneg i32 %.0131 to i64
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.li ; 2 uses
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !8
  store i32 %i.lk, ptr %i.ky, align 8, !tbaa !80
  store i32 %i.kk, ptr %i.lj, align 4, !tbaa !8
  %i.ll = load i32, ptr %i.ld, align 4, !tbaa !76
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1092
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !313
  %.not151 = icmp slt i32 %i.ll, %i.ln
  br i1 %.not151, label %js_free_string.exit170, label %bb.ax, !prof !195

bb.ax:                                            ; preds = %bb.aw
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !74
  %i.lq = shl nsw i32 %i.lp, 1
  %i.lr = tail call fastcc i32 @JS_ResizeAtomHash(ptr noundef nonnull %0, i32 noundef %i.lq) ; 0 uses
  br label %js_free_string.exit170

bb.ay:                                            ; preds = %bb.n, %js_arena_malloc.exit.thread
  %.not152 = icmp eq ptr %1, null
  br i1 %.not152, label %js_free_string.exit170, label %.thread192

.thread192:                                       ; preds = %bb.ac, %bb.aa, %bb.ab, %bb.k, %bb.j, %bb.ay
  %.2195 = phi i32 [ 0, %bb.ay ], [ %.0130200, %bb.j ], [ %.0130200, %bb.k ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.ac ] ; 2 uses
  %i.ls = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !8  ; 2 uses
  %i.lu = add nsw i32 %i.lt, -1
  store i32 %i.lu, ptr %i.ls, align 4, !tbaa !8
  %i.lv = icmp slt i32 %i.lt, 2
  br i1 %i.lv, label %bb.az, label %js_free_string.exit170

bb.az:                                            ; preds = %.thread192
  tail call fastcc void @js_free_string0(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !312
  br label %js_free_string.exit170

js_free_string.exit170:                           ; preds = %bb.ao, %bb.am, %bb.az, %.thread192, %bb.ay, %js_free_string.exit, %bb.ax, %bb.aw, %js_get_atom_index.exit, %bb.f
  %.0134 = phi i32 [ %.1.i, %bb.f ], [ %i.kk, %js_free_string.exit ], [ %.1.i, %js_get_atom_index.exit ], [ %.2195, %bb.az ], [ %i.kk, %bb.aw ], [ %i.kk, %bb.ax ], [ 0, %bb.ay ], [ %.2195, %.thread192 ], [ 0, %bb.am ], [ 0, %bb.ao ]
  ret i32 %.0134
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewSymbol(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ne ptr %1, null                     ; 2 uses
  %brmerge = or i1 %i.a, %2
  br i1 %brmerge, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 2 uses
  %i.d = tail call fastcc i32 @__JS_NewAtom(ptr noundef %i.c, ptr noundef null, i32 noundef 3), !inline_history !314 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !50
end_hunk_4
begin_hunk_5_@JS_FreeAtom:bb.a

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !80
  store i32 %i.ag, ptr %i.z, align 4, !tbaa !8
  br label %bb.g

.preheader:                                       ; preds = %bb.d, %.preheader
  %.0.i = phi ptr [ %i.al, %.preheader ], [ %i.ad, %bb.d ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !80 ; 2 uses
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !155 ; 3 uses
  %i.am = icmp eq ptr %i.al, %i.h
  br i1 %i.am, label %bb.f, label %.preheader

bb.f:                                             ; preds = %.preheader
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !80
  store i32 %i.ap, ptr %i.an, align 8, !tbaa !80
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.e
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.aj, %bb.f ], [ %i.ab, %bb.e ]
  %.1.i = phi i32 [ %i.o, %._crit_edge ], [ %i.ai, %bb.f ], [ %i.aa, %bb.e ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 1112 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !78
  %i.as = zext i32 %i.ar to i64
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = or disjoint i64 %i.at, 1
  %i.av = inttoptr i64 %i.au to ptr
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.pre-phi
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !155
  store i32 %.1.i, ptr %i.aq, align 8, !tbaa !78
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !245
  %.not35.i = icmp eq ptr %i.ay, null
  br i1 %.not35.i, label %JS_FreeAtomStruct.exit, label %bb.h, !prof !195

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @reset_weak_ref(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ax), !inline_history !246
  br label %JS_FreeAtomStruct.exit

JS_FreeAtomStruct.exit:                           ; preds = %bb.g, %bb.h
  tail call void @js_free_rt(ptr noundef nonnull %i.c, ptr noundef nonnull %i.h), !inline_history !246
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 1084 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !76
  %i.bb = add nsw i32 %i.ba, -1
  store i32 %i.bb, ptr %i.az, align 4, !tbaa !76
  br label %__JS_FreeAtom.exit

__JS_FreeAtom.exit:                               ; preds = %JS_FreeAtomStruct.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_AtomToValue(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 2147483647
  %i.d = call i64 @u32toa(ptr noundef nonnull %i.a, i32 noundef %i.c) #49, !inline_history !319
  %i.e = trunc i64 %i.d to i32
  %i.f = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.e), !inline_history !319
  br label %__JS_AtomToValue.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155  ; 3 uses
  %i.n = load i64, ptr %i.m, align 8
  %.mask.i = and i64 %i.n, -4611686018427387904
  %i.o = icmp eq i64 %.mask.i, 4611686018427387904
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !8
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %i.p, 0 ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.fca.1.insert.i.i2 = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 -8, 1
  br label %__JS_AtomToValue.exit

bb.e:                                             ; preds = %bb.c
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 -7, 1
  br label %__JS_AtomToValue.exit

__JS_AtomToValue.exit:                            ; preds = %bb.b, %bb.e, %bb.d
  %.pn17.i = phi { i64, i64 } [ %i.f, %bb.b ], [ %.fca.1.insert.i.i, %bb.e ], [ %.fca.1.insert.i.i2, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret { i64, i64 } %.pn17.i
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @__JS_AtomToValue(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 2147483647
  %i.d = call i64 @u32toa(ptr noundef nonnull %i.a, i32 noundef %i.c) #49 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 8 uses
  %sext = shl i64 %i.d, 32
  %i.g = ashr exact i64 %sext, 32                 ; 3 uses
  %i.h = add nsw i64 %i.g, 25                     ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  %i.m = add i64 %i.l, %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = add i64 %i.o, -1
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.i, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.r = call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.f, i64 noundef %i.h), !inline_history !305 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.e

._crit_edge:                                      ; preds = %bb.d
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !50
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.j, align 8, !tbaa !34
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.j, align 8, !tbaa !34
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 1064
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %str8.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = call i64 %i.aa(ptr noundef nonnull %i.u) #49, !inline_history !306 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ab
  br label %str8.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 -6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !35
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !38
  %i.ai = zext i16 %i.ah to i64
  br label %str8.exit

bb.i:                                             ; preds = %._crit_edge, %bb.c, %bb.b
  %i.aj = phi ptr [ %.pre, %._crit_edge ], [ %i.f, %bb.c ], [ %i.f, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1256 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !57, !range !58, !noundef !59
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %js_new_string8_len.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ak, align 8, !tbaa !57
  %i.an = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !307 ; 0 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !57
  br label %js_new_string8_len.exit

str8.exit:                                        ; preds = %bb.f, %bb.g, %bb.h
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.ac, %bb.g ], [ %i.ai, %bb.h ]
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !10
  %i.ap = add i64 %i.ao, %.011.i.i.i.i
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !10
  %i.aq = getelementptr inbounds i8, ptr %i.r, i64 -4
  store i32 1, ptr %i.aq, align 4, !tbaa !8
  %i.ar = and i64 %i.d, 2147483647
  store i64 %i.ar, ptr %i.r, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i32 0, ptr %i.as, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.at, ptr nonnull align 16 %i.a, i64 %i.g, i1 false)
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.g
  store i8 0, ptr %i.au, align 1, !tbaa !35
  %i.av = ptrtoint ptr %i.r to i64
  br label %js_new_string8_len.exit

bb.k:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1104
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !154 ; 2 uses
  %i.ba = zext nneg i32 %1 to i64
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !155 ; 5 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %.mask = and i64 %i.bd, -4611686018427387904
  %i.be = icmp eq i64 %.mask, 4611686018427387904
  br i1 %i.be, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %2, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bf = and i64 %i.bd, 4294967295
  %or.cond.not = icmp eq i64 %i.bf, 2147483648
  br i1 %or.cond.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 384
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !155
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k
  %.0 = phi ptr [ %i.bc, %bb.k ], [ %i.bh, %bb.n ], [ %i.bc, %bb.m ] ; 2 uses
  %i.bi = ptrtoint ptr %.0 to i64
  %i.bj = getelementptr inbounds i8, ptr %.0, i64 -4 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !8
  %i.bl = add nsw i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !8
  br label %js_new_string8_len.exit

bb.p:                                             ; preds = %bb.l
  %i.bm = ptrtoint ptr %i.bc to i64
  %i.bn = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !8
  br label %js_new_string8_len.exit

js_new_string8_len.exit:                          ; preds = %str8.exit, %bb.j, %bb.i, %bb.o, %bb.p
  %.sroa.0.0.i.pn = phi i64 [ %i.bm, %bb.p ], [ %i.bi, %bb.o ], [ %i.av, %str8.exit ], [ 0, %bb.j ], [ 0, %bb.i ]
  %.sroa.4.0.i.pn = phi i64 [ -8, %bb.p ], [ -7, %bb.o ], [ -7, %str8.exit ], [ 6, %bb.j ], [ 6, %bb.i ]
  %.fca.0.insert.i.pn = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i.pn, 0
  %.pn17 = insertvalue { i64, i64 } %.fca.0.insert.i.pn, i64 %.sroa.4.0.i.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret { i64, i64 } %.pn17
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_AtomToString(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %1, 2147483647
  %i.d = call i64 @u32toa(ptr noundef nonnull %i.a, i32 noundef %i.c) #49, !inline_history !319
  %i.e = trunc i64 %i.d to i32
  %i.f = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.e), !inline_history !319
  br label %__JS_AtomToValue.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1104
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !154  ; 2 uses
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !155  ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %.mask.i = and i64 %i.n, -4611686018427387904
  %i.o = icmp ne i64 %.mask.i, 4611686018427387904
  %i.p = and i64 %i.n, 4294967295
  %or.cond.i.not = icmp eq i64 %i.p, 2147483648
  %or.cond = and i1 %i.o, %or.cond.i.not
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !155
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi ptr [ %i.m, %bb.c ], [ %i.r, %bb.d ] ; 2 uses
  %i.s = ptrtoint ptr %.0.i to i64
  %i.t = getelementptr inbounds i8, ptr %.0.i, i64 -4 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !8
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !8
  %.fca.0.insert.i.i = insertvalue { i64, i64 } poison, i64 %i.s, 0
  %.fca.1.insert.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i, i64 -7, 1
  br label %__JS_AtomToValue.exit

__JS_AtomToValue.exit:                            ; preds = %bb.b, %bb.e
  %.pn17.i = phi { i64, i64 } [ %i.f, %bb.b ], [ %.fca.1.insert.i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret { i64, i64 } %.pn17.i
}

; Function Attrs: nounwind uwtable
define ptr @JS_AtomToCStringLen(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @__JS_AtomToValue(ptr noundef %0, i32 noundef %2, i1 noundef zeroext true), !inline_history !320 ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 4 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %JS_FreeValueRT.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr %1, align 8, !tbaa !72
  br label %JS_FreeValueRT.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef %1, i64 %i.b, i64 %i.c, i1 noundef zeroext false), !inline_history !321 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = trunc i64 %i.c to i32
  %i.j = icmp ugt i32 %i.i, -10
  br i1 %i.j, label %bb.e, label %JS_FreeValueRT.exit

bb.e:                                             ; preds = %bb.d
  %i.k = inttoptr i64 %i.b to ptr
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !8    ; 2 uses
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !8
  %i.o = icmp slt i32 %i.m, 2
  br i1 %i.o, label %bb.f, label %JS_FreeValueRT.exit

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @js_free_value_rt(ptr noundef %i.h, i64 %i.b, i64 %i.c), !inline_history !265
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ %i.f, %bb.d ], [ %i.f, %bb.e ], [ %i.f, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define i32 @JS_NewClassID(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !8      ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1116 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !98   ; 3 uses
  %i.e = add i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !98
  store i32 %i.d, ptr %1, align 4, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.a, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 65536) i32 @JS_GetClassID(i64 %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %.not = icmp eq i64 %i.a, 4294967295
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %0 to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !117
  %i.e = zext i16 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @JS_IsRegisteredClass(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !150
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !151
  %i.i = icmp ne i32 %i.h, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.a ], [ %i.i, %bb.b ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @JS_GetClassName(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.b = load i32, ptr %i.a, align 8, !tbaa !150
  %i.c = icmp ult i32 %1, %i.b
  br i1 %i.c, label %JS_IsRegisteredClass.exit, label %JS_DupAtomRT.exit

JS_IsRegisteredClass.exit:                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !88
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.e, i64 %i.f
  %i.h = load i32, ptr %i.g, align 8, !tbaa !151  ; 5 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %JS_DupAtomRT.exit, label %bb.b

bb.b:                                             ; preds = %JS_IsRegisteredClass.exit
  %i.i = icmp slt i32 %i.h, 242
  br i1 %i.i, label %JS_DupAtomRT.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154
  %i.l = zext nneg i32 %i.h to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !155
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 4, !tbaa !8
  br label %JS_DupAtomRT.exit

JS_DupAtomRT.exit:                                ; preds = %bb.a, %bb.c, %bb.b, %JS_IsRegisteredClass.exit
  %.0 = phi i32 [ %i.h, %bb.c ], [ 0, %JS_IsRegisteredClass.exit ], [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_NewClass(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !322    ; 2 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #52 ; 2 uses
  %sext = shl i64 %i.b, 32
  %i.c = ashr exact i64 %sext, 32                 ; 4 uses
  %i.d = tail call fastcc i32 @__JS_FindAtom(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.c) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !322
  %i.g = add nsw i64 %i.c, 25                     ; 3 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %__JS_NewAtomInit.exit.thread, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !10
  %i.l = add i64 %i.k, %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i64, ptr %i.m, align 8, !tbaa !14
  %i.o = add i64 %i.n, -1
  %i.p = icmp ugt i64 %i.l, %i.o
  br i1 %i.p, label %__JS_NewAtomInit.exit.thread, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %0, i64 noundef %i.g) ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %__JS_NewAtomInit.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.i, align 8, !tbaa !34
  %i.s = add i64 %i.r, 1
  store i64 %i.s, ptr %i.i, align 8, !tbaa !34
  %i.t = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 3 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !35
  %i.v = icmp eq i16 %i.u, -1
  br i1 %i.v, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.x = icmp eq ptr %i.t, %i.w
  br i1 %i.x, label %__JS_NewAtomInit.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = tail call i64 %i.z(ptr noundef nonnull %i.t) #49, !inline_history !323 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.aa, 0
  %i.ab = select i1 %.not15.i.i.i.i, i64 8, i64 %i.aa
  br label %__JS_NewAtomInit.exit

bb.h:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds i8, ptr %i.q, i64 -6
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !35
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !38
  %i.ah = zext i16 %i.ag to i64
  br label %__JS_NewAtomInit.exit

__JS_NewAtomInit.exit:                            ; preds = %bb.f, %bb.g, %bb.h
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.ab, %bb.g ], [ %i.ah, %bb.h ]
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !10
  %i.aj = add i64 %i.ai, %.011.i.i.i.i
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !10
  %i.ak = getelementptr inbounds i8, ptr %i.q, i64 -4
  store i32 1, ptr %i.ak, align 4, !tbaa !8
  %i.al = and i64 %i.b, 2147483647
  store i64 %i.al, ptr %i.q, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 0, ptr %i.am, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %i.f, i64 %i.c, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.c
  store i8 0, ptr %i.ao, align 1, !tbaa !35
  %i.ap = tail call fastcc i32 @__JS_NewAtom(ptr noundef nonnull %0, ptr noundef nonnull %i.q, i32 noundef 1) ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %__JS_NewAtomInit.exit.thread, label %bb.i

bb.i:                                             ; preds = %__JS_NewAtomInit.exit, %bb.a
  %.0 = phi i32 [ %i.ap, %__JS_NewAtomInit.exit ], [ %i.d, %bb.a ] ; 2 uses
  %i.ar = tail call fastcc i32 @JS_NewClass1(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef %.0)
  tail call void @JS_FreeAtomRT(ptr noundef %0, i32 noundef %.0)
  br label %__JS_NewAtomInit.exit.thread

__JS_NewAtomInit.exit.thread:                     ; preds = %bb.d, %bb.b, %bb.c, %__JS_NewAtomInit.exit, %bb.i
  %.016 = phi i32 [ %i.ar, %bb.i ], [ -1, %__JS_NewAtomInit.exit ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.d ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @JS_NewClass1(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = icmp ugt i32 %1, 65535
  br i1 %i.a, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !150  ; 3 uses
  %i.d = icmp ult i32 %1, %i.c
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !88   ; 2 uses
  %i.g = zext nneg i32 %1 to i64                  ; 2 uses
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 8, !tbaa !151
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.thread, label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw nsw i32 %1, 1
  %i.k = lshr i32 %i.c, 1
  %i.l = add i32 %i.k, %i.c
  %i.m = tail call i32 @llvm.umax.i32(i32 %i.j, i32 %i.l)
  %i.n = tail call i32 @llvm.umax.i32(i32 %i.m, i32 67) ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %.05667 = load ptr, ptr %i.p, align 8, !tbaa !40 ; 2 uses
  %.not6268 = icmp eq ptr %.05667, %i.o
  %.pre74 = zext i32 %i.n to i64                  ; 5 uses
  br i1 %.not6268, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.d
  %i.q = shl nuw nsw i64 %.pre74, 4
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph71, %._crit_edge
  %.05669 = phi ptr [ %.05667, %.lr.ph71 ], [ %.056, %._crit_edge ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.05669, i64 64 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !230
  %i.t = tail call ptr @js_realloc_rt(ptr noundef nonnull %0, ptr noundef %i.s, i64 noundef %i.q) ; 7 uses
  %.not64.not = icmp eq ptr %i.t, null
  br i1 %.not64.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.b, align 8, !tbaa !150  ; 2 uses
  %i.v = icmp slt i32 %i.u, %i.n
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %i.w = sext i32 %i.u to i64                     ; 4 uses
  %i.x = sub nsw i64 %.pre74, %i.w
  %xtraiter = and i64 %i.x, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.w, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.y = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv.prol ; 3 uses
  store i32 0, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.prol, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx.prol = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 2, ptr %.sroa.3.0..sroa_idx.prol, align 8, !tbaa !72
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !324

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.z = sub nsw i64 %i.w, %.pre74
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %i.ab = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  store i32 0, ptr %i.ab, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !72
  %i.ac = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 16
  store i32 0, ptr %i.ad, align 8
  %.sroa.2.0..sroa_idx.1 = getelementptr i8, ptr %i.ac, i64 20
  store i32 0, ptr %.sroa.2.0..sroa_idx.1, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx.1 = getelementptr i8, ptr %i.ac, i64 24
  store i64 2, ptr %.sroa.3.0..sroa_idx.1, align 8, !tbaa !72
  %i.ae = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 32
  store i32 0, ptr %i.af, align 8
  %.sroa.2.0..sroa_idx.2 = getelementptr i8, ptr %i.ae, i64 36
  store i32 0, ptr %.sroa.2.0..sroa_idx.2, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx.2 = getelementptr i8, ptr %i.ae, i64 40
  store i64 2, ptr %.sroa.3.0..sroa_idx.2, align 8, !tbaa !72
  %i.ag = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv ; 3 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 48
  store i32 0, ptr %i.ah, align 8
  %.sroa.2.0..sroa_idx.3 = getelementptr i8, ptr %i.ag, i64 52
  store i32 0, ptr %.sroa.2.0..sroa_idx.3, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx.3 = getelementptr i8, ptr %i.ag, i64 56
  store i64 2, ptr %.sroa.3.0..sroa_idx.3, align 8, !tbaa !72
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %.pre74
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !325

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.f
  store ptr %i.t, ptr %i.r, align 8, !tbaa !230
  %i.ai = getelementptr inbounds nuw i8, ptr %.05669, i64 8
  %.056 = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %.not62 = icmp eq ptr %.056, %i.o
  br i1 %.not62, label %._crit_edge72, label %bb.e, !llvm.loop !326

._crit_edge72:                                    ; preds = %._crit_edge, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !88
  %i.al = mul nuw nsw i64 %.pre74, 40
  %i.am = tail call ptr @js_realloc_rt(ptr noundef nonnull %0, ptr noundef %i.ak, i64 noundef %i.al) ; 4 uses
  %.not63 = icmp eq ptr %i.am, null
  br i1 %.not63, label %.critedge, label %bb.g

bb.g:                                             ; preds = %._crit_edge72
  %i.an = load i32, ptr %i.b, align 8, !tbaa !150 ; 2 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [40 x i8], ptr %i.am, i64 %i.ao
  %i.aq = sub nsw i32 %i.n, %i.an
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, 40
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ap, i8 0, i64 %i.as, i1 false)
  store ptr %i.am, ptr %i.aj, align 8, !tbaa !88
  store i32 %i.n, ptr %i.b, align 8, !tbaa !150
  %.pre = zext nneg i32 %1 to i64
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.g
  %.pre-phi = phi i64 [ %i.g, %bb.c ], [ %.pre, %bb.g ]
  %i.at = phi ptr [ %i.f, %bb.c ], [ %i.am, %bb.g ]
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %.pre-phi ; 4 uses
  store i32 %1, ptr %i.au, align 8, !tbaa !151
  %i.av = icmp slt i32 %3, 242
  br i1 %i.av, label %JS_DupAtomRT.exit, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !154
  %i.ay = zext nneg i32 %3 to i64
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !155
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !8
  br label %JS_DupAtomRT.exit

JS_DupAtomRT.exit:                                ; preds = %.thread, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  store i32 %3, ptr %i.be, align 4, !tbaa !152
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bh = load <2 x ptr>, ptr %i.bf, align 8, !tbaa !71
  store <2 x ptr> %i.bh, ptr %i.bg, align 8, !tbaa !71
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.bk = load <2 x ptr>, ptr %i.bi, align 8, !tbaa !71
  store <2 x ptr> %i.bk, ptr %i.bj, align 8, !tbaa !71
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %._crit_edge72, %bb.c, %bb.a, %JS_DupAtomRT.exit
  %.2 = phi i32 [ -1, %._crit_edge72 ], [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %JS_DupAtomRT.exit ], [ -1, %bb.e ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_ThrowRangeError(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
end_hunk_5
begin_hunk_6_@JS_ToIndex:bb.a

js_dup.exit.i.preheader:                          ; preds = %bb.b, %bb.a
  br label %js_dup.exit.i

js_dup.exit.i:                                    ; preds = %js_dup.exit.i.preheader, %bb.g
  %.sroa.012.0.in.i.i = phi i64 [ %i.n, %bb.g ], [ %2, %js_dup.exit.i.preheader ] ; 3 uses
  %.sroa.6.0.i.i = phi i64 [ %i.o, %bb.g ], [ %3, %js_dup.exit.i.preheader ] ; 2 uses
  %i.g = trunc i64 %.sroa.6.0.i.i to i32
  switch i32 %i.g, label %bb.g [
    i32 0, label %bb.c
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.c
    i32 6, label %JS_ToInt64Sat.exit
    i32 8, label %bb.d
  ]

bb.c:                                             ; preds = %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i, %js_dup.exit.i
  %sext.i.i = shl i64 %.sroa.012.0.in.i.i, 32
  %i.h = ashr exact i64 %sext.i.i, 32
  br label %bb.h

bb.d:                                             ; preds = %js_dup.exit.i
  %.sroa.012.0.le.i.i = bitcast i64 %.sroa.012.0.in.i.i to double ; 4 uses
  %i.i = fcmp uno double %.sroa.012.0.le.i.i, 0.000000e+00
  br i1 %i.i, label %JS_ToInt64Sat.exit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = fcmp uge double %.sroa.012.0.le.i.i, f0xC3E0000000000000
  %i.k = fcmp ult double %.sroa.012.0.le.i.i, f0x43E0000000000000
  %or.cond17 = and i1 %i.j, %i.k
  br i1 %or.cond17, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.l = fptosi double %.sroa.012.0.le.i.i to i64
  br label %bb.h

bb.g:                                             ; preds = %js_dup.exit.i
  %i.m = tail call fastcc { i64, i64 } @JS_ToNumberHintFree(ptr noundef %0, i64 %.sroa.012.0.in.i.i, i64 %.sroa.6.0.i.i, i32 noundef 0), !inline_history !635 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1        ; 2 uses
  %i.p = and i64 %i.o, 4294967295
  %i.q = icmp eq i64 %i.p, 6
  br i1 %i.q, label %JS_ToInt64Sat.exit, label %js_dup.exit.i

bb.h:                                             ; preds = %bb.c, %bb.f
  %.sink.i.i.ph = phi i64 [ %i.h, %bb.c ], [ %i.l, %bb.f ] ; 2 uses
  %or.cond = icmp ugt i64 %.sink.i.i.ph, 9007199254740991
  br i1 %or.cond, label %.thread, label %JS_ToInt64Sat.exit.sink.split

.thread:                                          ; preds = %bb.e, %bb.h
  %i.r = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.54) ; 0 uses
  br label %JS_ToInt64Sat.exit.sink.split

JS_ToInt64Sat.exit.sink.split:                    ; preds = %bb.h, %bb.d, %.thread
  %.sink.i.i.ph16.sink = phi i64 [ 0, %.thread ], [ %.sink.i.i.ph, %bb.h ], [ 0, %bb.d ]
  %.0.ph = phi i32 [ -1, %.thread ], [ 0, %bb.h ], [ 0, %bb.d ]
  store i64 %.sink.i.i.ph16.sink, ptr %1, align 8, !tbaa !72
  br label %JS_ToInt64Sat.exit

JS_ToInt64Sat.exit:                               ; preds = %bb.g, %js_dup.exit.i, %JS_ToInt64Sat.exit.sink.split
  %.0 = phi i32 [ %.0.ph, %JS_ToInt64Sat.exit.sink.split ], [ -1, %js_dup.exit.i ], [ -1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_ToString(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0)
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef range(i32 0, 4) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  %4 = alloca %struct.JSDTOATempMem, align 8      ; 3 uses
  %i.b = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.c = trunc i64 %2 to i32
  switch i32 %i.c, label %bb.bp [
    i32 -7, label %js_dup.exit
    i32 -6, label %bb.b
    i32 0, label %bb.c
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.o
    i32 6, label %bb.ca
    i32 -1, label %bb.q
    i32 -2, label %bb.af
    i32 -8, label %bb.aq
    i32 8, label %bb.as
    i32 7, label %bb.bd
    i32 -9, label %bb.bd
    i32 4, label %bb.be
  ]

js_dup.exit:                                      ; preds = %bb.a
  %i.d = inttoptr i64 %1 to ptr
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !8
  %.sroa.18.0.extract.shift = and i64 %1, -4294967296
  br label %bb.ca

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc { i64, i64 } @js_linearize_string_rope(ptr noundef %0, i64 %1, i64 %2) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0        ; 2 uses
  %.sroa.18.0.extract.shift57 = and i64 %i.i, -4294967296
  %i.j = extractvalue { i64, i64 } %i.h, 1
  br label %bb.ca

bb.c:                                             ; preds = %bb.a
  %.sroa.028.0.extract.trunc = trunc i64 %1 to i32
  %i.k = call i64 @i32toa(ptr noundef nonnull %i.b, i32 noundef %.sroa.028.0.extract.trunc) #49 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 8 uses
  %sext = shl i64 %i.k, 32
  %i.n = ashr exact i64 %sext, 32                 ; 3 uses
  %i.o = add nsw i64 %i.n, 25                     ; 3 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.j, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !10
  %i.t = add i64 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = add i64 %i.v, -1
  %i.x = icmp ugt i64 %i.t, %i.w
  br i1 %i.x, label %bb.j, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.y = call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.m, i64 noundef %i.o), !inline_history !305 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %._crit_edge126, label %bb.f

._crit_edge126:                                   ; preds = %bb.e
  %.pre127 = load ptr, ptr %i.l, align 8, !tbaa !50
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.z = load i64, ptr %i.q, align 8, !tbaa !34
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.q, align 8, !tbaa !34
  %i.ab = getelementptr inbounds i8, ptr %i.y, i64 -8 ; 3 uses
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !35
  %i.ad = icmp eq i16 %i.ac, -1
  br i1 %i.ad, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 1064
  %i.af = icmp eq ptr %i.ab, %i.ae
  br i1 %i.af, label %str8.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !36
  %i.ai = call i64 %i.ah(ptr noundef nonnull %i.ab) #49, !inline_history !306 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ai, 0
  %i.aj = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ai
  br label %str8.exit

bb.i:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 -6
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !35
  %i.am = zext i8 %i.al to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !38
  %i.ap = zext i16 %i.ao to i64
  br label %str8.exit

bb.j:                                             ; preds = %._crit_edge126, %bb.d, %bb.c
  %i.aq = phi ptr [ %.pre127, %._crit_edge126 ], [ %i.m, %bb.d ], [ %i.m, %bb.c ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1256 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !57, !range !58, !noundef !59
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %js_new_string8_len.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.ar, align 8, !tbaa !57
  %i.au = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !307 ; 0 uses
  store i8 0, ptr %i.ar, align 8, !tbaa !57
  br label %js_new_string8_len.exit

str8.exit:                                        ; preds = %bb.g, %bb.h, %bb.i
  %.011.i.i.i.i = phi i64 [ 8, %bb.g ], [ %i.aj, %bb.h ], [ %i.ap, %bb.i ]
  %i.av = load i64, ptr %i.r, align 8, !tbaa !10
  %i.aw = add i64 %i.av, %.011.i.i.i.i
  store i64 %i.aw, ptr %i.r, align 8, !tbaa !10
  %i.ax = getelementptr inbounds i8, ptr %i.y, i64 -4
  store i32 1, ptr %i.ax, align 4, !tbaa !8
  %i.ay = and i64 %i.k, 2147483647
  store i64 %i.ay, ptr %i.y, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 0, ptr %i.az, align 8, !tbaa !80
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ba, ptr nonnull align 16 %i.b, i64 %i.n, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.n
  store i8 0, ptr %i.bb, align 1, !tbaa !35
  %i.bc = ptrtoint ptr %i.y to i64
  br label %js_new_string8_len.exit

js_new_string8_len.exit:                          ; preds = %bb.j, %bb.k, %str8.exit
  %.sroa.0.0.i = phi i64 [ %i.bc, %str8.exit ], [ 0, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ -7, %str8.exit ], [ 6, %bb.k ], [ 6, %bb.j ]
  %.sroa.18.0.extract.shift59 = and i64 %.sroa.0.0.i, -4294967296
  br label %bb.ca

bb.l:                                             ; preds = %bb.a
  %i.bd = and i64 %1, 4294967295
  %.not88 = icmp eq i64 %i.bd, 0
  %i.be = select i1 %.not88, i32 2, i32 3
  %i.bf = tail call fastcc { i64, i64 } @__JS_AtomToValue(ptr noundef %0, i32 noundef %i.be, i1 noundef zeroext true), !inline_history !320 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0      ; 2 uses
  %.sroa.18.0.extract.shift61 = and i64 %i.bg, -4294967296
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  br label %bb.ca

bb.m:                                             ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1104
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !154 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !155 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8            ; 2 uses
  %.mask.i = and i64 %i.bo, -4611686018427387904
  %i.bp = icmp ne i64 %.mask.i, 4611686018427387904
  %i.bq = and i64 %i.bo, 4294967295
  %or.cond.i.not = icmp eq i64 %i.bq, 2147483648
  %or.cond = and i1 %i.bp, %or.cond.i.not
  br i1 %or.cond, label %bb.n, label %__JS_AtomToValue.exit

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 384
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !155
  br label %__JS_AtomToValue.exit

__JS_AtomToValue.exit:                            ; preds = %bb.m, %bb.n
  %.0.i102 = phi ptr [ %i.bn, %bb.m ], [ %i.bs, %bb.n ] ; 2 uses
  %i.bt = ptrtoint ptr %.0.i102 to i64            ; 2 uses
  %i.bu = getelementptr inbounds i8, ptr %.0.i102, i64 -4 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !8
  %.sroa.18.0.extract.shift63 = and i64 %i.bt, -4294967296
  br label %bb.ca

bb.o:                                             ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !50
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 1104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !154 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 584
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !155 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %.mask.i103 = and i64 %i.cd, -4611686018427387904
  %i.ce = icmp ne i64 %.mask.i103, 4611686018427387904
  %i.cf = and i64 %i.cd, 4294967295
  %or.cond.i105.not = icmp eq i64 %i.cf, 2147483648
  %or.cond125 = and i1 %i.ce, %or.cond.i105.not
  br i1 %or.cond125, label %bb.p, label %__JS_AtomToValue.exit109

bb.p:                                             ; preds = %bb.o
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 384
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !155
  br label %__JS_AtomToValue.exit109

__JS_AtomToValue.exit109:                         ; preds = %bb.o, %bb.p
  %.0.i106 = phi ptr [ %i.cc, %bb.o ], [ %i.ch, %bb.p ] ; 2 uses
  %i.ci = ptrtoint ptr %.0.i106 to i64            ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.0.i106, i64 -4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8
  %i.cl = add nsw i32 %i.ck, 1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !8
  %.sroa.18.0.extract.shift65 = and i64 %i.ci, -4294967296
  br label %bb.ca

bb.q:                                             ; preds = %bb.a
  %.not87 = icmp samesign ult i32 %3, 2
  br i1 %.not87, label %js_dup.exit112, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !50 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.cr = add i64 %i.cq, 27
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !14
  %i.cu = add i64 %i.ct, -1
  %i.cv = icmp ugt i64 %i.cr, %i.cu
  br i1 %i.cv, label %bb.aa, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 616
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 624
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !40 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.cw
  br i1 %i.cz, label %bb.t, label %bb.u, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.da = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.cn, i32 noundef 3) ; 2 uses
  %.not.i = icmp eq ptr %i.da, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i173 = phi ptr [ %i.da, %bb.t ], [ %i.cy, %bb.s ] ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.0.i173, i64 38 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !38 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i173, i64 40
  %i.de = zext i16 %i.dc to i64
  %i.df = mul nuw nsw i64 %i.de, 40
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df ; 11 uses
  %i.dh = load i16, ptr %i.dg, align 8, !tbaa !35
  store i16 %i.dh, ptr %i.db, align 2, !tbaa !38
  store i16 %i.dc, ptr %i.dg, align 8, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i173, i64 34 ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !38
  %i.dk = add i16 %i.dj, 1                        ; 2 uses
  store i16 %i.dk, ptr %i.di, align 2, !tbaa !38
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i173, i64 36
  %i.dm = load i16, ptr %i.dl, align 4, !tbaa !38
  %i.dn = icmp eq i16 %i.dk, %i.dm
  br i1 %i.dn, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %bb.u
  %i.do = load ptr, ptr %.0.i173, align 8, !tbaa !41 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.0.i173, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !40
  store ptr %i.do, ptr %i.dq, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i173, i8 0, i64 16, i1 false)
  br label %bb.w

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = load ptr, ptr %i.cm, align 8, !tbaa !50
  br label %bb.aa

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.dt = load i64, ptr %i.co, align 8, !tbaa !34
  %i.du = add i64 %i.dt, 1
  store i64 %i.du, ptr %i.co, align 8, !tbaa !34
  %i.dv = load i16, ptr %i.dg, align 8, !tbaa !35
  %i.dw = icmp eq i16 %i.dv, -1
  br i1 %i.dw, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cn, i64 1064
  %i.dy = icmp eq ptr %i.dg, %i.dx
  br i1 %i.dy, label %str8.exit10.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36
  %i.eb = tail call i64 %i.ea(ptr noundef nonnull %i.dg) #49, !inline_history !636 ; 2 uses
  %.not15.i.i.i.i138 = icmp eq i64 %i.eb, 0
  %i.ec = select i1 %.not15.i.i.i.i138, i64 8, i64 %i.eb
  br label %str8.exit10.i

bb.z:                                             ; preds = %bb.w
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dg, i64 2
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !35
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !38
  %i.ei = zext i16 %i.eh to i64
  br label %str8.exit10.i

bb.aa:                                            ; preds = %._crit_edge.i, %bb.r
  %i.ej = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cn, %bb.r ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1256 ; 3 uses
  %i.el = load i8, ptr %i.ek, align 8, !tbaa !57, !range !58, !noundef !59
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %js_new_string8_len.exit139, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.ek, align 8, !tbaa !57
  %i.en = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !637 ; 0 uses
  store i8 0, ptr %i.ek, align 8, !tbaa !57
  br label %js_new_string8_len.exit139

str8.exit10.i:                                    ; preds = %bb.z, %bb.y, %bb.x
  %.011.i.i.i.i135 = phi i64 [ 8, %bb.x ], [ %i.ec, %bb.y ], [ %i.ei, %bb.z ]
  %i.eo = load i64, ptr %i.cp, align 8, !tbaa !10
  %i.ep = add i64 %i.eo, %.011.i.i.i.i135
  store i64 %i.ep, ptr %i.cp, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dg, i64 4
  store i32 1, ptr %i.eq, align 4, !tbaa !8
  store i64 2, ptr %i.ds, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 0, ptr %i.er, align 8, !tbaa !80
  %i.es = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  store i16 32123, ptr %i.es, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.dg, i64 34
  store i8 0, ptr %i.et, align 2, !tbaa !35
  %i.eu = ptrtoint ptr %i.ds to i64
  br label %js_new_string8_len.exit139

js_new_string8_len.exit139:                       ; preds = %bb.aa, %bb.ab, %str8.exit10.i
  %.sroa.0.0.i136 = phi i64 [ %i.eu, %str8.exit10.i ], [ 0, %bb.aa ], [ 0, %bb.ab ] ; 2 uses
  %.sroa.4.0.i137 = phi i64 [ -7, %str8.exit10.i ], [ 6, %bb.aa ], [ 6, %bb.ab ]
  %.sroa.18.0.extract.shift67 = and i64 %.sroa.0.0.i136, -4294967296
  br label %bb.ca

js_dup.exit112:                                   ; preds = %bb.q
  %i.ev = inttoptr i64 %1 to ptr
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 -4 ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !8
  %i.ey = add nsw i32 %i.ex, 1
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !8
  %i.ez = tail call fastcc { i64, i64 } @JS_ToPrimitiveFree(ptr noundef %0, i64 %1, i64 %2, i32 noundef 0), !inline_history !638 ; 2 uses
  %i.fa = extractvalue { i64, i64 } %i.ez, 0      ; 4 uses
  %i.fb = extractvalue { i64, i64 } %i.ez, 1      ; 5 uses
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = icmp eq i64 %i.fc, 6
  br i1 %i.fd, label %JS_FreeValueRT.exit, label %bb.ac

bb.ac:                                            ; preds = %js_dup.exit112
  %i.fe = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %i.fa, i64 %i.fb, i32 noundef %3) ; 2 uses
  %i.ff = extractvalue { i64, i64 } %i.fe, 0      ; 3 uses
  %i.fg = extractvalue { i64, i64 } %i.fe, 1      ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !50
  %i.fj = trunc i64 %i.fb to i32
  %i.fk = icmp ugt i32 %i.fj, -10
  br i1 %i.fk, label %bb.ad, label %JS_FreeValueRT.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fl = inttoptr i64 %i.fa to ptr
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -4 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !8  ; 2 uses
  %i.fo = add nsw i32 %i.fn, -1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !8
  %i.fp = icmp slt i32 %i.fn, 2
  br i1 %i.fp, label %bb.ae, label %JS_FreeValueRT.exit

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fi, i64 %i.fa, i64 %i.fb), !inline_history !265
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.ae, %bb.ad, %bb.ac, %js_dup.exit112
  %.sroa.041.0.in = phi i64 [ %i.fa, %js_dup.exit112 ], [ %i.ff, %bb.ac ], [ %i.ff, %bb.ad ], [ %i.ff, %bb.ae ] ; 2 uses
  %.sroa.19.0 = phi i64 [ %i.fb, %js_dup.exit112 ], [ %i.fg, %bb.ac ], [ %i.fg, %bb.ad ], [ %i.fg, %bb.ae ]
  %.sroa.18.0.in = and i64 %.sroa.041.0.in, -4294967296
  br label %bb.ca

bb.af:                                            ; preds = %bb.a
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !50 ; 9 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 40 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 48 ; 3 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !10
  %i.fv = add i64 %i.fu, 44
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fr, i64 56
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !14
  %i.fy = add i64 %i.fx, -1
  %i.fz = icmp ugt i64 %i.fv, %i.fy
  br i1 %i.fz, label %bb.ao, label %bb.ag, !prof !9

bb.ag:                                            ; preds = %bb.af
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fr, i64 648
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fr, i64 656
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !40 ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.ga
  br i1 %i.gd, label %bb.ah, label %bb.ai, !prof !9

bb.ah:                                            ; preds = %bb.ag
  %i.ge = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.fr, i32 noundef 5) ; 2 uses
  %.not.i176 = icmp eq ptr %i.ge, null
  br i1 %.not.i176, label %._crit_edge.i148, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i174 = phi ptr [ %i.ge, %bb.ah ], [ %i.gc, %bb.ag ] ; 7 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0.i174, i64 38 ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2, !tbaa !38 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.i174, i64 40
  %i.gi = zext i16 %i.gg to i64
  %i.gj = mul nuw nsw i64 %i.gi, 56
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gj ; 11 uses
  %i.gl = load i16, ptr %i.gk, align 8, !tbaa !35
  store i16 %i.gl, ptr %i.gf, align 2, !tbaa !38
  store i16 %i.gg, ptr %i.gk, align 8, !tbaa !35
  %i.gm = getelementptr inbounds nuw i8, ptr %.0.i174, i64 34 ; 2 uses
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !38
  %i.go = add i16 %i.gn, 1                        ; 2 uses
  store i16 %i.go, ptr %i.gm, align 2, !tbaa !38
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i174, i64 36
  %i.gq = load i16, ptr %i.gp, align 4, !tbaa !38
  %i.gr = icmp eq i16 %i.go, %i.gq
  br i1 %i.gr, label %bb.aj, label %bb.ak, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.gs = load ptr, ptr %.0.i174, align 8, !tbaa !41 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i174, i64 8
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !40 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store ptr %i.gu, ptr %i.gv, align 8, !tbaa !40
  store ptr %i.gs, ptr %i.gu, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i174, i8 0, i64 16, i1 false)
  br label %bb.ak

._crit_edge.i148:                                 ; preds = %bb.ah
  %.pre.i149 = load ptr, ptr %i.fq, align 8, !tbaa !50
  br label %bb.ao

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.gx = load i64, ptr %i.fs, align 8, !tbaa !34
  %i.gy = add i64 %i.gx, 1
  store i64 %i.gy, ptr %i.fs, align 8, !tbaa !34
  %i.gz = load i16, ptr %i.gk, align 8, !tbaa !35
  %i.ha = icmp eq i16 %i.gz, -1
  br i1 %i.ha, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fr, i64 1064
  %i.hc = icmp eq ptr %i.gk, %i.hb
  br i1 %i.hc, label %str8.exit10.i141, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fr, i64 32
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !36
  %i.hf = tail call i64 %i.he(ptr noundef nonnull %i.gk) #49, !inline_history !636 ; 2 uses
  %.not15.i.i.i.i147 = icmp eq i64 %i.hf, 0
  %i.hg = select i1 %.not15.i.i.i.i147, i64 8, i64 %i.hf
  br label %str8.exit10.i141

bb.an:                                            ; preds = %bb.ak
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gk, i64 2
  %i.hi = load i8, ptr %i.hh, align 2, !tbaa !35
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !38
  %i.hm = zext i16 %i.hl to i64
  br label %str8.exit10.i141

bb.ao:                                            ; preds = %._crit_edge.i148, %bb.af
  %i.hn = phi ptr [ %.pre.i149, %._crit_edge.i148 ], [ %i.fr, %bb.af ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 1256 ; 3 uses
  %i.hp = load i8, ptr %i.ho, align 8, !tbaa !57, !range !58, !noundef !59
  %i.hq = trunc nuw i8 %i.hp to i1
  br i1 %i.hq, label %js_new_string8_len.exit150, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.ho, align 8, !tbaa !57
  %i.hr = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !637 ; 0 uses
  store i8 0, ptr %i.ho, align 8, !tbaa !57
  br label %js_new_string8_len.exit150

str8.exit10.i141:                                 ; preds = %bb.an, %bb.am, %bb.al
  %.011.i.i.i.i142 = phi i64 [ 8, %bb.al ], [ %i.hg, %bb.am ], [ %i.hm, %bb.an ]
  %i.hs = load i64, ptr %i.ft, align 8, !tbaa !10
  %i.ht = add i64 %i.hs, %.011.i.i.i.i142
  store i64 %i.ht, ptr %i.ft, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gk, i64 4
  store i32 1, ptr %i.hu, align 4, !tbaa !8
  store i64 19, ptr %i.gw, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store i32 0, ptr %i.hv, align 8, !tbaa !80
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.hw, ptr noundef nonnull align 1 dereferenceable(19) @.str.146, i64 19, i1 false)
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gk, i64 51
  store i8 0, ptr %i.hx, align 1, !tbaa !35
  %i.hy = ptrtoint ptr %i.gw to i64
  br label %js_new_string8_len.exit150

js_new_string8_len.exit150:                       ; preds = %bb.ao, %bb.ap, %str8.exit10.i141
  %.sroa.0.0.i143 = phi i64 [ %i.hy, %str8.exit10.i141 ], [ 0, %bb.ao ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.4.0.i144 = phi i64 [ -7, %str8.exit10.i141 ], [ 6, %bb.ao ], [ 6, %bb.ap ]
  %.sroa.18.0.extract.shift69 = and i64 %.sroa.0.0.i143, -4294967296
  br label %bb.ca

bb.aq:                                            ; preds = %bb.a
  %i.hz = and i32 %3, 1
  %.not = icmp eq i32 %i.hz, 0
  br i1 %.not, label %bb.ar, label %js_dup.exit91

js_dup.exit91:                                    ; preds = %bb.aq
  %i.ia = inttoptr i64 %1 to ptr
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -4 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !8
  %i.id = add nsw i32 %i.ic, 1
  store i32 %i.id, ptr %i.ib, align 4, !tbaa !8
  %.sroa.18.0.extract.shift71 = and i64 %1, -4294967296
  br label %bb.ca

bb.ar:                                            ; preds = %bb.aq
  %i.ie = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.147) ; 0 uses
  br label %bb.ca

bb.as:                                            ; preds = %bb.a
  %i.if = bitcast i64 %1 to double                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  %i.ig = tail call i32 @js_dtoa_max_len(double noundef %i.if, i32 noundef 10, i32 noundef 0, i32 noundef 0) #49, !inline_history !639 ; 2 uses
  %i.ih = icmp ugt i32 %i.ig, 127
  br i1 %i.ih, label %bb.at, label %bb.bc

bb.at:                                            ; preds = %bb.as
  %i.ii = add nsw i32 %i.ig, 1                    ; 2 uses
  %i.ij = sext i32 %i.ii to i64                   ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !50 ; 8 uses
  %i.im = icmp eq i32 %i.ii, 0
  br i1 %i.im, label %bb.ba, label %bb.au, !prof !9

bb.au:                                            ; preds = %bb.at
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 40 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 48 ; 3 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !10
  %i.iq = add i64 %i.ip, %i.ij
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !14
  %i.it = add i64 %i.is, -1
  %i.iu = icmp ugt i64 %i.iq, %i.it
  br i1 %i.iu, label %bb.ba, label %bb.av, !prof !9

bb.av:                                            ; preds = %bb.au
  %i.iv = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.il, i64 noundef %i.ij), !inline_history !640 ; 5 uses
  %.not.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.aw

._crit_edge:                                      ; preds = %bb.av
  %.pre = load ptr, ptr %i.ik, align 8, !tbaa !50
  br label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.iw = load i64, ptr %i.in, align 8, !tbaa !34
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.in, align 8, !tbaa !34
  %i.iy = getelementptr inbounds i8, ptr %i.iv, i64 -8 ; 3 uses
  %i.iz = load i16, ptr %i.iy, align 8, !tbaa !35
  %i.ja = icmp eq i16 %i.iz, -1
  br i1 %i.ja, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 1064
  %i.jc = icmp eq ptr %i.iy, %i.jb
  br i1 %i.jc, label %js_malloc.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !36
  %i.jf = tail call i64 %i.je(ptr noundef nonnull %i.iy) #49, !inline_history !641 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.jf, 0
  %i.jg = select i1 %.not15.i.i.i, i64 8, i64 %i.jf
  br label %js_malloc.exit

bb.az:                                            ; preds = %bb.aw
  %i.jh = getelementptr inbounds i8, ptr %i.iv, i64 -6
  %i.ji = load i8, ptr %i.jh, align 2, !tbaa !35
  %i.jj = zext i8 %i.ji to i64
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !38
  %i.jm = zext i16 %i.jl to i64
  br label %js_malloc.exit

bb.ba:                                            ; preds = %._crit_edge, %bb.au, %bb.at
  %i.jn = phi ptr [ %.pre, %._crit_edge ], [ %i.il, %bb.au ], [ %i.il, %bb.at ]
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1256 ; 3 uses
  %i.jp = load i8, ptr %i.jo, align 8, !tbaa !57, !range !58, !noundef !59
  %i.jq = trunc nuw i8 %i.jp to i1
  br i1 %i.jq, label %js_dtoa2.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store i8 1, ptr %i.jo, align 8, !tbaa !57
  %i.jr = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !642 ; 0 uses
  store i8 0, ptr %i.jo, align 8, !tbaa !57
  br label %js_dtoa2.exit

js_malloc.exit:                                   ; preds = %bb.az, %bb.ay, %bb.ax
  %.011.i.i.i = phi i64 [ 8, %bb.ax ], [ %i.jg, %bb.ay ], [ %i.jm, %bb.az ]
  %i.js = load i64, ptr %i.io, align 8, !tbaa !10
  %i.jt = add i64 %i.js, %.011.i.i.i
  store i64 %i.jt, ptr %i.io, align 8, !tbaa !10
  br label %bb.bc

bb.bc:                                            ; preds = %js_malloc.exit, %bb.as
  %.022.i = phi ptr [ %i.iv, %js_malloc.exit ], [ %i.a, %bb.as ] ; 2 uses
  %.0.i = phi ptr [ %i.iv, %js_malloc.exit ], [ null, %bb.as ]
  %i.ju = call i32 @js_dtoa(ptr noundef nonnull %.022.i, double noundef %i.if, i32 noundef 10, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #49, !inline_history !639
  %i.jv = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %.022.i, i32 noundef %i.ju), !inline_history !639 ; 2 uses
  %i.jw = extractvalue { i64, i64 } %i.jv, 0
  %i.jx = extractvalue { i64, i64 } %i.jv, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.jz, ptr noundef %.0.i)
  br label %js_dtoa2.exit

js_dtoa2.exit:                                    ; preds = %bb.ba, %bb.bb, %bb.bc
  %.sroa.421.0.i = phi i64 [ %i.jx, %bb.bc ], [ 6, %bb.bb ], [ 6, %bb.ba ]
  %.sroa.020.0.insert.insert.i = phi i64 [ %i.jw, %bb.bc ], [ 0, %bb.bb ], [ 0, %bb.ba ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %.sroa.18.0.extract.shift75 = and i64 %.sroa.020.0.insert.insert.i, -4294967296
  br label %bb.ca

bb.bd:                                            ; preds = %bb.a, %bb.a
  %i.ka = tail call fastcc { i64, i64 } @js_bigint_to_string1(ptr noundef %0, i64 %1, i64 %2, i32 noundef 10), !inline_history !643 ; 2 uses
  %i.kb = extractvalue { i64, i64 } %i.ka, 0      ; 2 uses
  %.sroa.18.0.extract.shift77 = and i64 %i.kb, -4294967296
  %i.kc = extractvalue { i64, i64 } %i.ka, 1
  br label %bb.ca

bb.be:                                            ; preds = %bb.a
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !50 ; 9 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 40 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 48 ; 3 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !10
  %i.ki = add i64 %i.kh, 40
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !14
  %i.kl = add i64 %i.kk, -1
  %i.km = icmp ugt i64 %i.ki, %i.kl
  br i1 %i.km, label %bb.bn, label %bb.bf, !prof !9

bb.bf:                                            ; preds = %bb.be
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ke, i64 632
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 640
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !40 ; 2 uses
  %i.kq = icmp eq ptr %i.kp, %i.kn
  br i1 %i.kq, label %bb.bg, label %bb.bh, !prof !9

bb.bg:                                            ; preds = %bb.bf
  %i.kr = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.ke, i32 noundef 4) ; 2 uses
  %.not.i180 = icmp eq ptr %i.kr, null
  br i1 %.not.i180, label %._crit_edge.i159, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0.i178 = phi ptr [ %i.kr, %bb.bg ], [ %i.kp, %bb.bf ] ; 7 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.0.i178, i64 38 ; 2 uses
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !38 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i178, i64 40
  %i.kv = zext i16 %i.kt to i64
  %i.kw = mul nuw nsw i64 %i.kv, 48
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kw ; 11 uses
  %i.ky = load i16, ptr %i.kx, align 8, !tbaa !35
  store i16 %i.ky, ptr %i.ks, align 2, !tbaa !38
  store i16 %i.kt, ptr %i.kx, align 8, !tbaa !35
  %i.kz = getelementptr inbounds nuw i8, ptr %.0.i178, i64 34 ; 2 uses
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !38
  %i.lb = add i16 %i.la, 1                        ; 2 uses
  store i16 %i.lb, ptr %i.kz, align 2, !tbaa !38
  %i.lc = getelementptr inbounds nuw i8, ptr %.0.i178, i64 36
  %i.ld = load i16, ptr %i.lc, align 4, !tbaa !38
  %i.le = icmp eq i16 %i.lb, %i.ld
  br i1 %i.le, label %bb.bi, label %bb.bj, !prof !9

bb.bi:                                            ; preds = %bb.bh
  %i.lf = load ptr, ptr %.0.i178, align 8, !tbaa !41 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.0.i178, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !40 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !40
  store ptr %i.lf, ptr %i.lh, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i178, i8 0, i64 16, i1 false)
  br label %bb.bj

._crit_edge.i159:                                 ; preds = %bb.bg
  %.pre.i160 = load ptr, ptr %i.kd, align 8, !tbaa !50
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kx, i64 8 ; 2 uses
  %i.lk = load i64, ptr %i.kf, align 8, !tbaa !34
  %i.ll = add i64 %i.lk, 1
  store i64 %i.ll, ptr %i.kf, align 8, !tbaa !34
  %i.lm = load i16, ptr %i.kx, align 8, !tbaa !35
  %i.ln = icmp eq i16 %i.lm, -1
  br i1 %i.ln, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ke, i64 1064
  %i.lp = icmp eq ptr %i.kx, %i.lo
  br i1 %i.lp, label %str8.exit10.i152, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ke, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !36
  %i.ls = tail call i64 %i.lr(ptr noundef nonnull %i.kx) #49, !inline_history !636 ; 2 uses
  %.not15.i.i.i.i158 = icmp eq i64 %i.ls, 0
  %i.lt = select i1 %.not15.i.i.i.i158, i64 8, i64 %i.ls
  br label %str8.exit10.i152

bb.bm:                                            ; preds = %bb.bj
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %i.lv = load i8, ptr %i.lu, align 2, !tbaa !35
  %i.lw = zext i8 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !38
  %i.lz = zext i16 %i.ly to i64
  br label %str8.exit10.i152

bb.bn:                                            ; preds = %._crit_edge.i159, %bb.be
  %i.ma = phi ptr [ %.pre.i160, %._crit_edge.i159 ], [ %i.ke, %bb.be ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 1256 ; 3 uses
  %i.mc = load i8, ptr %i.mb, align 8, !tbaa !57, !range !58, !noundef !59
  %i.md = trunc nuw i8 %i.mc to i1
  br i1 %i.md, label %js_new_string8_len.exit161, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.mb, align 8, !tbaa !57
  %i.me = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !637 ; 0 uses
  store i8 0, ptr %i.mb, align 8, !tbaa !57
  br label %js_new_string8_len.exit161

str8.exit10.i152:                                 ; preds = %bb.bm, %bb.bl, %bb.bk
  %.011.i.i.i.i153 = phi i64 [ 8, %bb.bk ], [ %i.lt, %bb.bl ], [ %i.lz, %bb.bm ]
  %i.mf = load i64, ptr %i.kg, align 8, !tbaa !10
  %i.mg = add i64 %i.mf, %.011.i.i.i.i153
  store i64 %i.mg, ptr %i.kg, align 8, !tbaa !10
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kx, i64 4
  store i32 1, ptr %i.mh, align 4, !tbaa !8
  store i64 15, ptr %i.lj, align 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  store i32 0, ptr %i.mi, align 8, !tbaa !80
  %i.mj = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.mj, ptr noundef nonnull align 1 dereferenceable(15) @.str.148, i64 15, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kx, i64 47
  store i8 0, ptr %i.mk, align 1, !tbaa !35
  %i.ml = ptrtoint ptr %i.lj to i64
  br label %js_new_string8_len.exit161

js_new_string8_len.exit161:                       ; preds = %bb.bn, %bb.bo, %str8.exit10.i152
  %.sroa.0.0.i154 = phi i64 [ %i.ml, %str8.exit10.i152 ], [ 0, %bb.bn ], [ 0, %bb.bo ] ; 2 uses
  %.sroa.4.0.i155 = phi i64 [ -7, %str8.exit10.i152 ], [ 6, %bb.bn ], [ 6, %bb.bo ]
  %.sroa.18.0.extract.shift79 = and i64 %.sroa.0.0.i154, -4294967296
  br label %bb.ca

bb.bp:                                            ; preds = %bb.a
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !50 ; 9 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 40 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 48 ; 3 uses
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !10
  %i.mr = add i64 %i.mq, 43
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mn, i64 56
  %i.mt = load i64, ptr %i.ms, align 8, !tbaa !14
  %i.mu = add i64 %i.mt, -1
  %i.mv = icmp ugt i64 %i.mr, %i.mu
  br i1 %i.mv, label %bb.by, label %bb.bq, !prof !9

bb.bq:                                            ; preds = %bb.bp
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mn, i64 648
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mn, i64 656
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !40 ; 2 uses
  %i.mz = icmp eq ptr %i.my, %i.mw
  br i1 %i.mz, label %bb.br, label %bb.bs, !prof !9

bb.br:                                            ; preds = %bb.bq
  %i.na = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.mn, i32 noundef 5) ; 2 uses
  %.not.i184 = icmp eq ptr %i.na, null
  br i1 %.not.i184, label %._crit_edge.i170, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.0.i182 = phi ptr [ %i.na, %bb.br ], [ %i.my, %bb.bq ] ; 7 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0.i182, i64 38 ; 2 uses
  %i.nc = load i16, ptr %i.nb, align 2, !tbaa !38 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.0.i182, i64 40
  %i.ne = zext i16 %i.nc to i64
  %i.nf = mul nuw nsw i64 %i.ne, 56
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %i.nf ; 11 uses
  %i.nh = load i16, ptr %i.ng, align 8, !tbaa !35
  store i16 %i.nh, ptr %i.nb, align 2, !tbaa !38
  store i16 %i.nc, ptr %i.ng, align 8, !tbaa !35
  %i.ni = getelementptr inbounds nuw i8, ptr %.0.i182, i64 34 ; 2 uses
  %i.nj = load i16, ptr %i.ni, align 2, !tbaa !38
  %i.nk = add i16 %i.nj, 1                        ; 2 uses
  store i16 %i.nk, ptr %i.ni, align 2, !tbaa !38
  %i.nl = getelementptr inbounds nuw i8, ptr %.0.i182, i64 36
  %i.nm = load i16, ptr %i.nl, align 4, !tbaa !38
  %i.nn = icmp eq i16 %i.nk, %i.nm
  br i1 %i.nn, label %bb.bt, label %bb.bu, !prof !9

bb.bt:                                            ; preds = %bb.bs
  %i.no = load ptr, ptr %.0.i182, align 8, !tbaa !41 ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.0.i182, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !40 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !40
  store ptr %i.no, ptr %i.nq, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i182, i8 0, i64 16, i1 false)
  br label %bb.bu

._crit_edge.i170:                                 ; preds = %bb.br
  %.pre.i171 = load ptr, ptr %i.mm, align 8, !tbaa !50
  br label %bb.by

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.ns = getelementptr inbounds nuw i8, ptr %i.ng, i64 8 ; 2 uses
  %i.nt = load i64, ptr %i.mo, align 8, !tbaa !34
  %i.nu = add i64 %i.nt, 1
  store i64 %i.nu, ptr %i.mo, align 8, !tbaa !34
  %i.nv = load i16, ptr %i.ng, align 8, !tbaa !35
  %i.nw = icmp eq i16 %i.nv, -1
  br i1 %i.nw, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.nx = getelementptr inbounds nuw i8, ptr %i.mn, i64 1064
  %i.ny = icmp eq ptr %i.ng, %i.nx
  br i1 %i.ny, label %str8.exit10.i163, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.nz = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !36
  %i.ob = tail call i64 %i.oa(ptr noundef nonnull %i.ng) #49, !inline_history !636 ; 2 uses
  %.not15.i.i.i.i169 = icmp eq i64 %i.ob, 0
  %i.oc = select i1 %.not15.i.i.i.i169, i64 8, i64 %i.ob
  br label %str8.exit10.i163

bb.bx:                                            ; preds = %bb.bu
  %i.od = getelementptr inbounds nuw i8, ptr %i.ng, i64 2
  %i.oe = load i8, ptr %i.od, align 2, !tbaa !35
  %i.of = zext i8 %i.oe to i64
  %i.og = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.of
  %i.oh = load i16, ptr %i.og, align 2, !tbaa !38
  %i.oi = zext i16 %i.oh to i64
  br label %str8.exit10.i163

bb.by:                                            ; preds = %._crit_edge.i170, %bb.bp
  %i.oj = phi ptr [ %.pre.i171, %._crit_edge.i170 ], [ %i.mn, %bb.bp ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 1256 ; 3 uses
  %i.ol = load i8, ptr %i.ok, align 8, !tbaa !57, !range !58, !noundef !59
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %js_new_string8_len.exit172, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i8 1, ptr %i.ok, align 8, !tbaa !57
  %i.on = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !637 ; 0 uses
  store i8 0, ptr %i.ok, align 8, !tbaa !57
  br label %js_new_string8_len.exit172

str8.exit10.i163:                                 ; preds = %bb.bx, %bb.bw, %bb.bv
  %.011.i.i.i.i164 = phi i64 [ 8, %bb.bv ], [ %i.oc, %bb.bw ], [ %i.oi, %bb.bx ]
  %i.oo = load i64, ptr %i.mp, align 8, !tbaa !10
  %i.op = add i64 %i.oo, %.011.i.i.i.i164
  store i64 %i.op, ptr %i.mp, align 8, !tbaa !10
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  store i32 1, ptr %i.oq, align 4, !tbaa !8
  store i64 18, ptr %i.ns, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  store i32 0, ptr %i.or, align 8, !tbaa !80
  %i.os = getelementptr inbounds nuw i8, ptr %i.ng, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.os, ptr noundef nonnull align 1 dereferenceable(18) @.str.149, i64 18, i1 false)
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ng, i64 50
  store i8 0, ptr %i.ot, align 2, !tbaa !35
  %i.ou = ptrtoint ptr %i.ns to i64
  br label %js_new_string8_len.exit172

js_new_string8_len.exit172:                       ; preds = %bb.by, %bb.bz, %str8.exit10.i163
  %.sroa.0.0.i165 = phi i64 [ %i.ou, %str8.exit10.i163 ], [ 0, %bb.by ], [ 0, %bb.bz ] ; 2 uses
  %.sroa.4.0.i166 = phi i64 [ -7, %str8.exit10.i163 ], [ 6, %bb.by ], [ 6, %bb.bz ]
  %.sroa.18.0.extract.shift81 = and i64 %.sroa.0.0.i165, -4294967296
  br label %bb.ca

bb.ca:                                            ; preds = %bb.a, %js_new_string8_len.exit172, %js_new_string8_len.exit161, %bb.bd, %js_dtoa2.exit, %bb.ar, %js_dup.exit91, %js_new_string8_len.exit150, %JS_FreeValueRT.exit, %js_new_string8_len.exit139, %__JS_AtomToValue.exit109, %__JS_AtomToValue.exit, %bb.l, %js_new_string8_len.exit, %bb.b, %js_dup.exit
  %.sroa.041.1 = phi i64 [ %.sroa.0.0.i165, %js_new_string8_len.exit172 ], [ %1, %js_dup.exit ], [ %i.i, %bb.b ], [ %.sroa.0.0.i, %js_new_string8_len.exit ], [ %i.bg, %bb.l ], [ %i.bt, %__JS_AtomToValue.exit ], [ %i.ci, %__JS_AtomToValue.exit109 ], [ %.sroa.0.0.i154, %js_new_string8_len.exit161 ], [ %.sroa.0.0.i136, %js_new_string8_len.exit139 ], [ %.sroa.041.0.in, %JS_FreeValueRT.exit ], [ %.sroa.0.0.i143, %js_new_string8_len.exit150 ], [ %1, %js_dup.exit91 ], [ 0, %bb.ar ], [ %.sroa.020.0.insert.insert.i, %js_dtoa2.exit ], [ %i.kb, %bb.bd ], [ 0, %bb.a ]
  %.sroa.18.1 = phi i64 [ %.sroa.18.0.extract.shift81, %js_new_string8_len.exit172 ], [ %.sroa.18.0.extract.shift, %js_dup.exit ], [ %.sroa.18.0.extract.shift57, %bb.b ], [ %.sroa.18.0.extract.shift59, %js_new_string8_len.exit ], [ %.sroa.18.0.extract.shift61, %bb.l ], [ %.sroa.18.0.extract.shift63, %__JS_AtomToValue.exit ], [ %.sroa.18.0.extract.shift65, %__JS_AtomToValue.exit109 ], [ %.sroa.18.0.extract.shift79, %js_new_string8_len.exit161 ], [ %.sroa.18.0.extract.shift67, %js_new_string8_len.exit139 ], [ %.sroa.18.0.in, %JS_FreeValueRT.exit ], [ %.sroa.18.0.extract.shift69, %js_new_string8_len.exit150 ], [ %.sroa.18.0.extract.shift71, %js_dup.exit91 ], [ 0, %bb.ar ], [ %.sroa.18.0.extract.shift75, %js_dtoa2.exit ], [ %.sroa.18.0.extract.shift77, %bb.bd ], [ 0, %bb.a ]
  %.sroa.19.1 = phi i64 [ %.sroa.4.0.i166, %js_new_string8_len.exit172 ], [ %2, %js_dup.exit ], [ %i.j, %bb.b ], [ %.sroa.4.0.i, %js_new_string8_len.exit ], [ %i.bh, %bb.l ], [ -7, %__JS_AtomToValue.exit ], [ -7, %__JS_AtomToValue.exit109 ], [ %.sroa.4.0.i155, %js_new_string8_len.exit161 ], [ %.sroa.4.0.i137, %js_new_string8_len.exit139 ], [ %.sroa.19.0, %JS_FreeValueRT.exit ], [ %.sroa.4.0.i144, %js_new_string8_len.exit150 ], [ %2, %js_dup.exit91 ], [ 6, %bb.ar ], [ %.sroa.421.0.i, %js_dtoa2.exit ], [ %i.kc, %bb.bd ], [ 6, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %.sroa.041.0.insert.ext = and i64 %.sroa.041.1, 4294967295
  %.sroa.041.0.insert.insert = or disjoint i64 %.sroa.18.1, %.sroa.041.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.041.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.19.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_ToPropertyKey(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @JS_ToStringInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 1), !inline_history !557
  ret { i64, i64 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @JS_IsArray(i64 %0, i64 %1) local_unnamed_addr #11 {
bb.a:
  %i.a = and i64 %1, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %i.f = icmp eq i16 %i.e, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewBigInt64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %1, 2147483648
  %or.cond = icmp ult i64 %i.a, 4294967296
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext.i = and i64 %1, 4294967295
  br label %bb.o

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %i.g = add i64 %i.f, 12
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = add i64 %i.i, -1
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %bb.l, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.p = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !644 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.p, null
  br i1 %.not.i27.i, label %._crit_edge.i21.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i25.i = phi ptr [ %i.p, %bb.e ], [ %i.n, %bb.d ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 38 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !38   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 40
  %i.t = zext i16 %i.r to i64
  %i.u = mul nuw nsw i64 %i.t, 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 9 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !35
  store i16 %i.w, ptr %i.q, align 2, !tbaa !38
  store i16 %i.r, ptr %i.v, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 34 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !38
  %i.z = add i16 %i.y, 1                          ; 2 uses
  store i16 %i.z, ptr %i.x, align 2, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 36
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !38
  %i.ac = icmp eq i16 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %.0.i25.i, align 8, !tbaa !41 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i25.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !40
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i25.i, i8 0, i64 16, i1 false)
  br label %bb.h

._crit_edge.i21.i:                                ; preds = %bb.e
  %.pre.i22.i = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %bb.l

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !34
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.d, align 8, !tbaa !34
  %i.ak = load i16, ptr %i.v, align 8, !tbaa !35
  %i.al = icmp eq i16 %i.ak, -1
  br i1 %i.al, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 1064
  %i.an = icmp eq ptr %i.v, %i.am
  br i1 %i.an, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !36
  %i.aq = tail call i64 %i.ap(ptr noundef nonnull %i.v) #49, !inline_history !645 ; 2 uses
  %.not15.i.i.i20.i = icmp eq i64 %i.aq, 0
  %i.ar = select i1 %.not15.i.i.i20.i, i64 8, i64 %i.aq
  br label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %i.at = load i8, ptr %i.as, align 2, !tbaa !35
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !38
  %i.ax = zext i16 %i.aw to i64
  br label %bb.n

bb.l:                                             ; preds = %._crit_edge.i21.i, %bb.c
  %i.ay = phi ptr [ %.pre.i22.i, %._crit_edge.i21.i ], [ %i.c, %bb.c ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1256 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %js_bigint_new_si64.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.az, align 8, !tbaa !57
  %i.bc = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !646 ; 0 uses
  store i8 0, ptr %i.az, align 8, !tbaa !57
  br label %js_bigint_new_si64.exit

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.011.i.i.i18.i = phi i64 [ 8, %bb.i ], [ %i.ar, %bb.j ], [ %i.ax, %bb.k ]
  %i.bd = load i64, ptr %i.e, align 8, !tbaa !10
  %i.be = add i64 %i.bd, %.011.i.i.i18.i
  store i64 %i.be, ptr %i.e, align 8, !tbaa !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i32 1, ptr %i.bf, align 4, !tbaa !8
  store i32 2, ptr %i.ah, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  store i64 %1, ptr %i.bg, align 4
  br label %js_bigint_new_si64.exit

js_bigint_new_si64.exit:                          ; preds = %bb.l, %bb.m, %bb.n
  %.1.i = phi ptr [ null, %bb.l ], [ %i.ah, %bb.n ], [ null, %bb.m ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  %i.bh = ptrtoint ptr %.1.i to i64
  %.sroa.5.0 = select i1 %.not, i64 6, i64 -9
  br label %bb.o

bb.o:                                             ; preds = %js_bigint_new_si64.exit, %bb.b
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.insert.ext.i, %bb.b ], [ %i.bh, %js_bigint_new_si64.exit ]
  %.sroa.5.1 = phi i64 [ 7, %bb.b ], [ %.sroa.5.0, %js_bigint_new_si64.exit ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.5.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewBigUint64(ptr noundef %0, i64 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i64 %1, 2147483648
  br i1 %i.a, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp sgt i64 %1, -1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 15 uses
end_hunk_6
begin_hunk_7_@JS_Invoke:bb.a
  br i1 %i.o, label %bb.d, label %JS_CallFree.exit

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @js_free_value_rt(ptr noundef %i.h, i64 %i.b, i64 %i.c) #51, !inline_history !551
  br label %JS_CallFree.exit

JS_CallFree.exit:                                 ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.fca.1.insert.merged = phi { i64, i64 } [ %i.a, %bb.a ], [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @js_parse_error(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ...) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !838    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.c = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 256, ptr noundef readonly %1, ptr noundef nonnull %2) #49, !inline_history !842 ; 0 uses
  %i.d = call fastcc { i64, i64 } @JS_MakeError2(ptr noundef %i.b, i32 noundef range(i32 1, 10) 3, i1 noundef zeroext false, ptr noundef nonnull %i.a), !inline_history !842 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.e = extractvalue { i64, i64 } %i.d, 0
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.02.0.i = phi i64 [ 0, %bb.b ], [ %i.e, %bb.a ]
  %.sroa.7.0.i = phi i64 [ 2, %bb.b ], [ %i.f, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1240 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1248 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8              ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp ugt i32 %i.o, -10
  br i1 %i.p, label %bb.d, label %JS_ThrowError2.exit

bb.d:                                             ; preds = %bb.c
  %i.q = inttoptr i64 %i.l to ptr
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !8
  %i.u = icmp slt i32 %i.s, 2
  br i1 %i.u, label %bb.e, label %JS_ThrowError2.exit

bb.e:                                             ; preds = %bb.d
  call fastcc void @js_free_value_rt(ptr noundef nonnull %i.j, i64 %i.l, i64 %i.n), !inline_history !843
  br label %JS_ThrowError2.exit

JS_ThrowError2.exit:                              ; preds = %bb.c, %bb.d, %bb.e
  store i64 %.sroa.02.0.i, ptr %i.k, align 8, !tbaa !35
  store i64 %.sroa.7.0.i, ptr %i.m, align 8, !tbaa !72
  call void @llvm.va_end.p0(ptr nonnull %2)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !844  ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %JS_ThrowError2.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  %i.y = load i64, ptr %i.x, align 4
  %i.z = trunc i64 %i.y to i32
  %i.aa = lshr i32 %i.z, 16
  %spec.select = and i32 %i.aa, 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %JS_ThrowError2.exit
  %.0 = phi i32 [ 0, %JS_ThrowError2.exit ], [ %spec.select, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !845 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !846 ; 3 uses
  %.not22 = icmp eq ptr %i.ae, null
  br i1 %.not22, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !847 ; 2 uses
  %.not23 = icmp ult ptr %i.ae, %i.ag
  br i1 %.not23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  %i.al = add nsw i32 %i.ak, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.017 = phi i32 [ %i.al, %bb.i ], [ %i.ac, %bb.h ], [ %i.ac, %bb.g ]
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 1240
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !848
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !849
  %i.as = load i64, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 1248
  %i.au = load i64, ptr %i.at, align 8
  call fastcc void @build_backtrace(ptr noundef nonnull %i.b, i64 %i.as, i64 %i.au, i64 0, i64 3, ptr noundef %i.ap, i32 noundef %i.ar, i32 noundef %.017, i32 noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define noundef ptr @JS_NewCModule(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #52, !inline_history !285
  %i.b = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.a), !inline_history !285 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @js_new_module_def(ptr noundef %0, i32 noundef %i.b) ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  store ptr %2, ptr %i.e, align 8, !tbaa !850
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @js_new_module_def(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = add i64 %i.e, 312
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = add i64 %i.h, -1
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %js_arena_malloc.exit.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 952
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.o = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.b, i32 noundef 24) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.d

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i44 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i44, i64 38 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i44, i64 40
  %i.s = zext i16 %i.q to i64
  %i.t = mul nuw nsw i64 %i.s, 320
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 37 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  store i16 %i.v, ptr %i.p, align 2, !tbaa !38
  store i16 %i.q, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i44, i64 34 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !38
  %i.y = add i16 %i.x, 1                          ; 2 uses
  store i16 %i.y, ptr %i.w, align 2, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i44, i64 36
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !38
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %.0.i44, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i44, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !40
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i44, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(312) %i.ag, i8 0, i64 312, i1 false)
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !34
  %i.aj = load i16, ptr %i.u, align 8, !tbaa !35
  %i.ak = icmp eq i16 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.am = icmp eq ptr %i.u, %i.al
  br i1 %i.am, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull %i.u) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ap
  br label %bb.k

bb.h:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !35
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !38
  %i.aw = zext i16 %i.av to i64
  br label %bb.k

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.a
  %i.ax = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.b, %bb.a ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1256 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.ay, align 8, !tbaa !57
  %i.bb = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !57
  br label %bb.j

bb.j:                                             ; preds = %js_arena_malloc.exit.thread, %bb.i
  tail call void @JS_FreeAtom(ptr noundef nonnull %0, i32 noundef %1)
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.aq, %bb.g ], [ %i.aw, %bb.h ]
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bd = add i64 %i.bc, %.011.i.i.i.i
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !8
  store i32 %1, ptr %i.ag, align 8, !tbaa !678
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  store i32 0, ptr %i.bf, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 116
  store i32 0, ptr %.sroa.223.0..sroa_idx, align 4, !tbaa !35
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store i64 3, ptr %.sroa.324.0..sroa_idx, align 8, !tbaa !72
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  store i32 0, ptr %i.bg, align 8
  %.sroa.220.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 132
  store i32 0, ptr %.sroa.220.0..sroa_idx, align 4, !tbaa !35
  %.sroa.321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store i64 3, ptr %.sroa.321.0..sroa_idx, align 8, !tbaa !72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 272
  store i32 0, ptr %i.bh, align 8
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 276
  store i32 0, ptr %.sroa.217.0..sroa_idx, align 4, !tbaa !35
  %.sroa.318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 280
  store i64 3, ptr %.sroa.318.0..sroa_idx, align 8, !tbaa !72
  %i.bi = getelementptr inbounds nuw i8, ptr %i.u, i64 288
  store i32 0, ptr %i.bi, align 8
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 292
  store i32 0, ptr %.sroa.214.0..sroa_idx, align 4, !tbaa !35
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 296
  store i64 3, ptr %.sroa.315.0..sroa_idx, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 216
  store i32 0, ptr %i.bj, align 8
  %.sroa.211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 220
  store i32 0, ptr %.sroa.211.0..sroa_idx, align 4, !tbaa !35
  %.sroa.312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  store i64 3, ptr %.sroa.312.0..sroa_idx, align 8, !tbaa !72
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 232
  store i32 0, ptr %i.bk, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 236
  store i32 0, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !35
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 240
  store i64 3, ptr %.sroa.39.0..sroa_idx, align 8, !tbaa !72
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 248
  store i32 0, ptr %i.bl, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 252
  store i32 0, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !35
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 256
  store i64 3, ptr %.sroa.36.0..sroa_idx, align 8, !tbaa !72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 304
  store i32 0, ptr %i.bm, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 308
  store i32 0, ptr %.sroa.22.0..sroa_idx, align 4, !tbaa !35
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 312
  store i64 3, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  store i32 0, ptr %i.bn, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 100
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !72
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !41 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bo, ptr %i.br, align 8, !tbaa !40
  store ptr %i.bq, ptr %i.bo, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !40
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi ptr [ %i.ag, %bb.k ], [ null, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @JS_AddModuleExport(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #52, !inline_history !285
  %i.b = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.a), !inline_history !285 ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc ptr @add_export_entry2(ptr noundef %0, ptr noundef null, ptr noundef %1, i32 noundef 0, i32 noundef %i.b, i32 noundef 0)
  tail call void @JS_FreeAtom(ptr noundef %0, i32 noundef %i.b)
  %.not = icmp eq ptr %i.d, null
  %. = sext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @add_export_entry2(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef range(i32 0, 2) %5) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !222  ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !225
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.c, !llvm.loop !851

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !852
  %i.k = icmp eq i32 %i.j, %4
  br i1 %i.k, label %find_export_entry.exit, label %bb.b

find_export_entry.exit:                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %.not27 = icmp eq ptr %1, null
  br i1 %.not27, label %bb.e, label %bb.d

bb.d:                                             ; preds = %find_export_entry.exit
  %i.l = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.m = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val, ptr noundef nonnull %i.b, i32 noundef %4) ; 0 uses
  %i.n = call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.204, ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %find_export_entry.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.o = getelementptr i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.p = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i, ptr noundef nonnull %i.a, i32 noundef %4) ; 0 uses
  %i.q = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.204, ptr noundef nonnull %i.a) #51, !inline_history !853 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  br label %bb.i

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
end_hunk_7
begin_hunk_8_@JS_GetModuleNamespace:bb.a
  %.0177.i.i = phi ptr [ %i.mg, %med3.exit.i.i ], [ %.1178.lcssa.i.i, %bb.fp ] ; 2 uses
  %.0174.i.i = phi ptr [ %i.mi, %med3.exit.i.i ], [ %.1175238.i.i, %bb.fp ] ; 2 uses
  %.0172.i.i = phi i64 [ 1, %med3.exit.i.i ], [ %i.agi, %bb.fp ] ; 2 uses
  %.0169.i.i = phi i64 [ 1, %med3.exit.i.i ], [ %.1170.lcssa.i.i, %bb.fp ] ; 2 uses
  %.0167.i.i = phi i64 [ %.0191253.i.i218, %med3.exit.i.i ], [ %.1168239.i.i, %bb.fp ] ; 2 uses
  %i.mj = icmp ult ptr %.0183.i.i, %.0180.i.i
  br i1 %i.mj, label %.lr.ph.i127.i, label %.critedge.i.i

.lr.ph.i127.i:                                    ; preds = %bb.bq, %bb.dp
  %.1170229.i.i = phi i64 [ %.2171.i.i, %bb.dp ], [ %.0169.i.i, %bb.bq ] ; 3 uses
  %.1173228.i.i = phi i64 [ %i.wf, %bb.dp ], [ %.0172.i.i, %bb.bq ] ; 2 uses
  %.1178227.i.i = phi ptr [ %.2179.i.i, %bb.dp ], [ %.0177.i.i, %bb.bq ] ; 4 uses
  %.1184226.i.i = phi ptr [ %i.wg, %bb.dp ], [ %.0183.i.i, %bb.bq ] ; 4 uses
  %i.mk = load i32, ptr %.0186255.i.i216, align 8, !tbaa !866 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #49
  %i.ml = icmp slt i32 %i.mk, 0
  br i1 %i.ml, label %bb.br, label %bb.cj

bb.br:                                            ; preds = %.lr.ph.i127.i
  %i.mm = and i32 %i.mk, 2147483647
  %i.mn = call i64 @u32toa(ptr noundef nonnull %i.e, i32 noundef %i.mm) #49, !inline_history !887 ; 2 uses
  %i.mo = load ptr, ptr %i.af, align 8, !tbaa !50 ; 11 uses
  %sext.i = shl i64 %i.mn, 32
  %i.mp = ashr exact i64 %sext.i, 32              ; 7 uses
  %i.mq = add nsw i64 %i.mp, 25                   ; 3 uses
  %i.mr = icmp eq i64 %i.mq, 0
  br i1 %i.mr, label %bb.ch, label %bb.bs, !prof !9

bb.bs:                                            ; preds = %bb.br
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mo, i64 40 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mo, i64 48 ; 3 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !10
  %i.mv = add i64 %i.mu, %i.mq
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mo, i64 56
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !14
  %i.my = add i64 %i.mx, -1
  %i.mz = icmp ugt i64 %i.mv, %i.my
  br i1 %i.mz, label %bb.ch, label %bb.bt, !prof !9

bb.bt:                                            ; preds = %bb.bs
  %i.na = and i64 %i.mp, -8                       ; 4 uses
  %i.nb = add nsw i64 %i.na, 40
  %i.nc = icmp ult i64 %i.nb, 513
  br i1 %i.nc, label %bb.bu, label %js_arena_malloc.exit344.i

bb.bu:                                            ; preds = %bb.bt
  %i.nd = icmp slt i64 %i.na, -23
  br i1 %i.nd, label %arena_get_size_index.exit.i340.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ne = icmp slt i64 %i.na, 89
  br i1 %i.ne, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.nf = add nsw i64 %i.mp, 40
  %i.ng = lshr i64 %i.nf, 3
  %i.nh = trunc nuw nsw i64 %i.ng to i32
  %i.ni = add nsw i32 %i.nh, -2
  br label %arena_get_size_index.exit.i340.i

bb.bx:                                            ; preds = %bb.bv
  %i.nj = icmp samesign ult i64 %i.na, 217
  br i1 %i.nj, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.nk = add nsw i64 %i.mp, 48
  %i.nl = lshr i64 %i.nk, 4
  %i.nm = trunc nuw nsw i64 %i.nl to i32
  %i.nn = add nuw nsw i32 %i.nm, 6
  br label %arena_get_size_index.exit.i340.i

bb.bz:                                            ; preds = %bb.bx
  %i.no = add nsw i64 %i.mp, 64
  %i.np = lshr i64 %i.no, 5
  %i.nq = trunc nuw nsw i64 %i.np to i32
  %i.nr = add nuw nsw i32 %i.nq, 14
  br label %arena_get_size_index.exit.i340.i

arena_get_size_index.exit.i340.i:                 ; preds = %bb.bz, %bb.by, %bb.bw, %bb.bu
  %.0.i.i341.i = phi i32 [ %i.nr, %bb.bz ], [ %i.ni, %bb.bw ], [ %i.nn, %bb.by ], [ 0, %bb.bu ] ; 2 uses
  %i.ns = zext nneg i32 %.0.i.i341.i to i64       ; 2 uses
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !38
  %i.nv = getelementptr inbounds nuw i8, ptr %i.mo, i64 568
  %i.nw = getelementptr inbounds nuw [16 x i8], ptr %i.nv, i64 %i.ns ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !40 ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.nw
  br i1 %i.nz, label %bb.ca, label %bb.cb, !prof !9

bb.ca:                                            ; preds = %arena_get_size_index.exit.i340.i
  %i.oa = call fastcc ptr @arena_new(ptr noundef nonnull %i.mo, i32 noundef %.0.i.i341.i), !inline_history !858 ; 2 uses
  %.not.i343.i = icmp eq ptr %i.oa, null
  br i1 %.not.i343.i, label %._crit_edge.i297.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %arena_get_size_index.exit.i340.i
  %.0.i342.i = phi ptr [ %i.oa, %bb.ca ], [ %i.ny, %arena_get_size_index.exit.i340.i ] ; 7 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.0.i342.i, i64 38 ; 2 uses
  %i.oc = load i16, ptr %i.ob, align 2, !tbaa !38 ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.0.i342.i, i64 40
  %i.oe = zext i16 %i.oc to i64
  %i.of = zext i16 %i.nu to i64
  %i.og = mul nuw nsw i64 %i.oe, %i.of
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.og ; 3 uses
  %i.oi = load i16, ptr %i.oh, align 8, !tbaa !35
  store i16 %i.oi, ptr %i.ob, align 2, !tbaa !38
  store i16 %i.oc, ptr %i.oh, align 8, !tbaa !35
  %i.oj = getelementptr inbounds nuw i8, ptr %.0.i342.i, i64 34 ; 2 uses
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !38
  %i.ol = add i16 %i.ok, 1                        ; 2 uses
  store i16 %i.ol, ptr %i.oj, align 2, !tbaa !38
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i342.i, i64 36
  %i.on = load i16, ptr %i.om, align 4, !tbaa !38
  %i.oo = icmp eq i16 %i.ol, %i.on
  br i1 %i.oo, label %bb.cc, label %js_arena_malloc.exit344.thread355.i, !prof !9

bb.cc:                                            ; preds = %bb.cb
  %i.op = load ptr, ptr %.0.i342.i, align 8, !tbaa !41 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.0.i342.i, i64 8
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !40 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  store ptr %i.or, ptr %i.os, align 8, !tbaa !40
  store ptr %i.op, ptr %i.or, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i342.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit344.thread355.i

js_arena_malloc.exit344.thread355.i:              ; preds = %bb.cc, %bb.cb
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  br label %bb.cd

js_arena_malloc.exit344.i:                        ; preds = %bb.bt
  %i.ou = getelementptr i8, ptr %i.mo, i64 8
  %.val.i337.i = load ptr, ptr %i.ou, align 8, !tbaa !42
  %i.ov = getelementptr i8, ptr %i.mo, i64 64
  %.val35.i338.i = load ptr, ptr %i.ov, align 8, !tbaa !33
  %i.ow = call fastcc ptr @arena_malloc_large(ptr %.val.i337.i, ptr %.val35.i338.i, i64 noundef %i.mq), !inline_history !858 ; 2 uses
  %.not.i.i.i289.i = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i289.i, label %._crit_edge.i297.i, label %bb.cd

._crit_edge.i297.i:                               ; preds = %js_arena_malloc.exit344.i, %bb.ca
  %.pre.i298.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.ch

bb.cd:                                            ; preds = %js_arena_malloc.exit344.i, %js_arena_malloc.exit344.thread355.i
  %.1.i339358.i = phi ptr [ %i.ot, %js_arena_malloc.exit344.thread355.i ], [ %i.ow, %js_arena_malloc.exit344.i ] ; 7 uses
  %i.ox = load i64, ptr %i.ms, align 8, !tbaa !34
  %i.oy = add i64 %i.ox, 1
  store i64 %i.oy, ptr %i.ms, align 8, !tbaa !34
  %i.oz = getelementptr inbounds i8, ptr %.1.i339358.i, i64 -8 ; 3 uses
  %i.pa = load i16, ptr %i.oz, align 8, !tbaa !35
  %i.pb = icmp eq i16 %i.pa, -1
  br i1 %i.pb, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.pc = getelementptr inbounds nuw i8, ptr %i.mo, i64 1064
  %i.pd = icmp eq ptr %i.oz, %i.pc
  br i1 %i.pd, label %str8.exit10.i290.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pe = getelementptr inbounds nuw i8, ptr %i.mo, i64 32
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !36
  %i.pg = call i64 %i.pf(ptr noundef nonnull %i.oz) #49, !inline_history !888 ; 2 uses
  %.not15.i.i.i.i296.i = icmp eq i64 %i.pg, 0
  %i.ph = select i1 %.not15.i.i.i.i296.i, i64 8, i64 %i.pg
  br label %str8.exit10.i290.i

bb.cg:                                            ; preds = %bb.cd
  %i.pi = getelementptr inbounds i8, ptr %.1.i339358.i, i64 -6
  %i.pj = load i8, ptr %i.pi, align 2, !tbaa !35
  %i.pk = zext i8 %i.pj to i64
  %i.pl = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.pk
  %i.pm = load i16, ptr %i.pl, align 2, !tbaa !38
  %i.pn = zext i16 %i.pm to i64
  br label %str8.exit10.i290.i

bb.ch:                                            ; preds = %._crit_edge.i297.i, %bb.bs, %bb.br
  %i.po = phi ptr [ %.pre.i298.i, %._crit_edge.i297.i ], [ %i.mo, %bb.bs ], [ %i.mo, %bb.br ]
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 1256 ; 3 uses
  %i.pq = load i8, ptr %i.pp, align 8, !tbaa !57, !range !58, !noundef !59
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %JS_AtomToString.exit203.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  store i8 1, ptr %i.pp, align 8, !tbaa !57
  %i.ps = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !889 ; 0 uses
  store i8 0, ptr %i.pp, align 8, !tbaa !57
  br label %JS_AtomToString.exit203.i

str8.exit10.i290.i:                               ; preds = %bb.cg, %bb.cf, %bb.ce
  %.011.i.i.i.i291.i = phi i64 [ 8, %bb.ce ], [ %i.ph, %bb.cf ], [ %i.pn, %bb.cg ]
  %i.pt = load i64, ptr %i.mt, align 8, !tbaa !10
  %i.pu = add i64 %i.pt, %.011.i.i.i.i291.i
  store i64 %i.pu, ptr %i.mt, align 8, !tbaa !10
  %i.pv = getelementptr inbounds i8, ptr %.1.i339358.i, i64 -4
  store i32 1, ptr %i.pv, align 4, !tbaa !8
  %i.pw = and i64 %i.mn, 2147483647
  store i64 %i.pw, ptr %.1.i339358.i, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %.1.i339358.i, i64 8
  store i32 0, ptr %i.px, align 8, !tbaa !80
  %i.py = getelementptr inbounds nuw i8, ptr %.1.i339358.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.py, ptr nonnull readonly align 16 %i.e, i64 %i.mp, i1 false)
  %i.pz = getelementptr inbounds i8, ptr %i.py, i64 %i.mp
  store i8 0, ptr %i.pz, align 1, !tbaa !35
  %i.qa = ptrtoint ptr %.1.i339358.i to i64
  br label %JS_AtomToString.exit203.i

bb.cj:                                            ; preds = %.lr.ph.i127.i
  %i.qb = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 1104
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !154 ; 2 uses
  %i.qe = zext nneg i32 %i.mk to i64
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.qd, i64 %i.qe
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !155 ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8            ; 2 uses
  %.mask.i.i196.i = and i64 %i.qh, -4611686018427387904
  %i.qi = icmp ne i64 %.mask.i.i196.i, 4611686018427387904
  %i.qj = and i64 %i.qh, 4294967295
  %or.cond.i.not.i197.i = icmp eq i64 %i.qj, 2147483648
  %or.cond.i198.i = and i1 %i.qi, %or.cond.i.not.i197.i
  br i1 %or.cond.i198.i, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qd, i64 384
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !155
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.0.i.i199.i = phi ptr [ %i.qg, %bb.cj ], [ %i.ql, %bb.ck ] ; 2 uses
  %i.qm = ptrtoint ptr %.0.i.i199.i to i64
  %i.qn = getelementptr inbounds i8, ptr %.0.i.i199.i, i64 -4 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !8
  %i.qp = add nsw i32 %i.qo, 1
  store i32 %i.qp, ptr %i.qn, align 4, !tbaa !8
  br label %JS_AtomToString.exit203.i

JS_AtomToString.exit203.i:                        ; preds = %bb.cl, %str8.exit10.i290.i, %bb.ci, %bb.ch
  %.sroa.0.0.i292.pn.i = phi i64 [ %i.qm, %bb.cl ], [ %i.qa, %str8.exit10.i290.i ], [ 0, %bb.ch ], [ 0, %bb.ci ] ; 3 uses
  %i.qq = phi i1 [ true, %bb.cl ], [ true, %str8.exit10.i290.i ], [ false, %bb.ch ], [ false, %bb.ci ]
  %.sroa.4.0.i293.pn.i = phi i64 [ -7, %bb.cl ], [ -7, %str8.exit10.i290.i ], [ 6, %bb.ch ], [ 6, %bb.ci ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #49
  %i.qr = load i32, ptr %.1184226.i.i, align 8, !tbaa !866 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #49
  %i.qs = icmp slt i32 %i.qr, 0
  br i1 %i.qs, label %bb.cm, label %bb.de

bb.cm:                                            ; preds = %JS_AtomToString.exit203.i
  %i.qt = and i32 %i.qr, 2147483647
  %i.qu = call i64 @u32toa(ptr noundef nonnull %i.f, i32 noundef %i.qt) #49, !inline_history !887 ; 2 uses
  %i.qv = load ptr, ptr %i.af, align 8, !tbaa !50 ; 11 uses
  %sext406.i = shl i64 %i.qu, 32
  %i.qw = ashr exact i64 %sext406.i, 32           ; 7 uses
  %i.qx = add nsw i64 %i.qw, 25                   ; 3 uses
  %i.qy = icmp eq i64 %i.qx, 0
  br i1 %i.qy, label %bb.dc, label %bb.cn, !prof !9

bb.cn:                                            ; preds = %bb.cm
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 40 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qv, i64 48 ; 3 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !10
  %i.rc = add i64 %i.rb, %i.qx
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qv, i64 56
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !14
  %i.rf = add i64 %i.re, -1
  %i.rg = icmp ugt i64 %i.rc, %i.rf
  br i1 %i.rg, label %bb.dc, label %bb.co, !prof !9

bb.co:                                            ; preds = %bb.cn
  %i.rh = and i64 %i.qw, -8                       ; 4 uses
  %i.ri = add nsw i64 %i.rh, 40
  %i.rj = icmp ult i64 %i.ri, 513
  br i1 %i.rj, label %bb.cp, label %js_arena_malloc.exit336.i

bb.cp:                                            ; preds = %bb.co
  %i.rk = icmp slt i64 %i.rh, -23
  br i1 %i.rk, label %arena_get_size_index.exit.i332.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rl = icmp slt i64 %i.rh, 89
  br i1 %i.rl, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.rm = add nsw i64 %i.qw, 40
  %i.rn = lshr i64 %i.rm, 3
  %i.ro = trunc nuw nsw i64 %i.rn to i32
  %i.rp = add nsw i32 %i.ro, -2
  br label %arena_get_size_index.exit.i332.i

bb.cs:                                            ; preds = %bb.cq
  %i.rq = icmp samesign ult i64 %i.rh, 217
  br i1 %i.rq, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.rr = add nsw i64 %i.qw, 48
  %i.rs = lshr i64 %i.rr, 4
  %i.rt = trunc nuw nsw i64 %i.rs to i32
  %i.ru = add nuw nsw i32 %i.rt, 6
  br label %arena_get_size_index.exit.i332.i

bb.cu:                                            ; preds = %bb.cs
  %i.rv = add nsw i64 %i.qw, 64
  %i.rw = lshr i64 %i.rv, 5
  %i.rx = trunc nuw nsw i64 %i.rw to i32
  %i.ry = add nuw nsw i32 %i.rx, 14
  br label %arena_get_size_index.exit.i332.i

arena_get_size_index.exit.i332.i:                 ; preds = %bb.cu, %bb.ct, %bb.cr, %bb.cp
  %.0.i.i333.i = phi i32 [ %i.ry, %bb.cu ], [ %i.rp, %bb.cr ], [ %i.ru, %bb.ct ], [ 0, %bb.cp ] ; 2 uses
  %i.rz = zext nneg i32 %.0.i.i333.i to i64       ; 2 uses
  %i.sa = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.rz
  %i.sb = load i16, ptr %i.sa, align 2, !tbaa !38
  %i.sc = getelementptr inbounds nuw i8, ptr %i.qv, i64 568
  %i.sd = getelementptr inbounds nuw [16 x i8], ptr %i.sc, i64 %i.rz ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !40 ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.sd
  br i1 %i.sg, label %bb.cv, label %bb.cw, !prof !9

bb.cv:                                            ; preds = %arena_get_size_index.exit.i332.i
  %i.sh = call fastcc ptr @arena_new(ptr noundef nonnull %i.qv, i32 noundef %.0.i.i333.i), !inline_history !858 ; 2 uses
  %.not.i335.i = icmp eq ptr %i.sh, null
  br i1 %.not.i335.i, label %._crit_edge.i286.i, label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %arena_get_size_index.exit.i332.i
  %.0.i334.i = phi ptr [ %i.sh, %bb.cv ], [ %i.sf, %arena_get_size_index.exit.i332.i ] ; 7 uses
  %i.si = getelementptr inbounds nuw i8, ptr %.0.i334.i, i64 38 ; 2 uses
  %i.sj = load i16, ptr %i.si, align 2, !tbaa !38 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %.0.i334.i, i64 40
  %i.sl = zext i16 %i.sj to i64
  %i.sm = zext i16 %i.sb to i64
  %i.sn = mul nuw nsw i64 %i.sl, %i.sm
  %i.so = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sn ; 3 uses
  %i.sp = load i16, ptr %i.so, align 8, !tbaa !35
  store i16 %i.sp, ptr %i.si, align 2, !tbaa !38
  store i16 %i.sj, ptr %i.so, align 8, !tbaa !35
  %i.sq = getelementptr inbounds nuw i8, ptr %.0.i334.i, i64 34 ; 2 uses
  %i.sr = load i16, ptr %i.sq, align 2, !tbaa !38
  %i.ss = add i16 %i.sr, 1                        ; 2 uses
  store i16 %i.ss, ptr %i.sq, align 2, !tbaa !38
  %i.st = getelementptr inbounds nuw i8, ptr %.0.i334.i, i64 36
  %i.su = load i16, ptr %i.st, align 4, !tbaa !38
  %i.sv = icmp eq i16 %i.ss, %i.su
  br i1 %i.sv, label %bb.cx, label %js_arena_malloc.exit336.thread361.i, !prof !9

bb.cx:                                            ; preds = %bb.cw
  %i.sw = load ptr, ptr %.0.i334.i, align 8, !tbaa !41 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.0.i334.i, i64 8
  %i.sy = load ptr, ptr %i.sx, align 8, !tbaa !40 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 8
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !40
  store ptr %i.sw, ptr %i.sy, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i334.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit336.thread361.i

js_arena_malloc.exit336.thread361.i:              ; preds = %bb.cx, %bb.cw
  %i.ta = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  br label %bb.cy

js_arena_malloc.exit336.i:                        ; preds = %bb.co
  %i.tb = getelementptr i8, ptr %i.qv, i64 8
  %.val.i329.i = load ptr, ptr %i.tb, align 8, !tbaa !42
  %i.tc = getelementptr i8, ptr %i.qv, i64 64
  %.val35.i330.i = load ptr, ptr %i.tc, align 8, !tbaa !33
  %i.td = call fastcc ptr @arena_malloc_large(ptr %.val.i329.i, ptr %.val35.i330.i, i64 noundef %i.qx), !inline_history !858 ; 2 uses
  %.not.i.i.i278.i = icmp eq ptr %i.td, null
  br i1 %.not.i.i.i278.i, label %._crit_edge.i286.i, label %bb.cy

._crit_edge.i286.i:                               ; preds = %js_arena_malloc.exit336.i, %bb.cv
  %.pre.i287.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.dc

bb.cy:                                            ; preds = %js_arena_malloc.exit336.i, %js_arena_malloc.exit336.thread361.i
  %.1.i331364.i = phi ptr [ %i.ta, %js_arena_malloc.exit336.thread361.i ], [ %i.td, %js_arena_malloc.exit336.i ] ; 7 uses
  %i.te = load i64, ptr %i.qz, align 8, !tbaa !34
  %i.tf = add i64 %i.te, 1
  store i64 %i.tf, ptr %i.qz, align 8, !tbaa !34
  %i.tg = getelementptr inbounds i8, ptr %.1.i331364.i, i64 -8 ; 3 uses
  %i.th = load i16, ptr %i.tg, align 8, !tbaa !35
  %i.ti = icmp eq i16 %i.th, -1
  br i1 %i.ti, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.tj = getelementptr inbounds nuw i8, ptr %i.qv, i64 1064
  %i.tk = icmp eq ptr %i.tg, %i.tj
  br i1 %i.tk, label %str8.exit10.i279.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.tl = getelementptr inbounds nuw i8, ptr %i.qv, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !36
  %i.tn = call i64 %i.tm(ptr noundef nonnull %i.tg) #49, !inline_history !888 ; 2 uses
  %.not15.i.i.i.i285.i = icmp eq i64 %i.tn, 0
  %i.to = select i1 %.not15.i.i.i.i285.i, i64 8, i64 %i.tn
  br label %str8.exit10.i279.i

bb.db:                                            ; preds = %bb.cy
  %i.tp = getelementptr inbounds i8, ptr %.1.i331364.i, i64 -6
  %i.tq = load i8, ptr %i.tp, align 2, !tbaa !35
  %i.tr = zext i8 %i.tq to i64
  %i.ts = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.tr
  %i.tt = load i16, ptr %i.ts, align 2, !tbaa !38
  %i.tu = zext i16 %i.tt to i64
  br label %str8.exit10.i279.i

bb.dc:                                            ; preds = %._crit_edge.i286.i, %bb.cn, %bb.cm
  %i.tv = phi ptr [ %.pre.i287.i, %._crit_edge.i286.i ], [ %i.qv, %bb.cn ], [ %i.qv, %bb.cm ]
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 1256 ; 3 uses
  %i.tx = load i8, ptr %i.tw, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ty = trunc nuw i8 %i.tx to i1
  br i1 %i.ty, label %JS_AtomToString.exit195.thread.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i8 1, ptr %i.tw, align 8, !tbaa !57
  %i.tz = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !889 ; 0 uses
  store i8 0, ptr %i.tw, align 8, !tbaa !57
  br label %JS_AtomToString.exit195.thread.i

str8.exit10.i279.i:                               ; preds = %bb.db, %bb.da, %bb.cz
  %.011.i.i.i.i280.i = phi i64 [ 8, %bb.cz ], [ %i.to, %bb.da ], [ %i.tu, %bb.db ]
  %i.ua = load i64, ptr %i.ra, align 8, !tbaa !10
  %i.ub = add i64 %i.ua, %.011.i.i.i.i280.i
  store i64 %i.ub, ptr %i.ra, align 8, !tbaa !10
  %i.uc = getelementptr inbounds i8, ptr %.1.i331364.i, i64 -4
  store i32 1, ptr %i.uc, align 4, !tbaa !8
  %i.ud = and i64 %i.qu, 2147483647
  store i64 %i.ud, ptr %.1.i331364.i, align 8
  %i.ue = getelementptr inbounds nuw i8, ptr %.1.i331364.i, i64 8
  store i32 0, ptr %i.ue, align 8, !tbaa !80
  %i.uf = getelementptr inbounds nuw i8, ptr %.1.i331364.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.uf, ptr nonnull readonly align 16 %i.f, i64 %i.qw, i1 false)
  %i.ug = getelementptr inbounds i8, ptr %i.uf, i64 %i.qw
  store i8 0, ptr %i.ug, align 1, !tbaa !35
  br label %JS_AtomToString.exit195.i

bb.de:                                            ; preds = %JS_AtomToString.exit203.i
  %i.uh = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 1104
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !154 ; 2 uses
  %i.uk = zext nneg i32 %i.qr to i64
  %i.ul = getelementptr inbounds nuw [8 x i8], ptr %i.uj, i64 %i.uk
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !155 ; 2 uses
  %i.un = load i64, ptr %i.um, align 8            ; 2 uses
  %.mask.i.i188.i = and i64 %i.un, -4611686018427387904
  %i.uo = icmp ne i64 %.mask.i.i188.i, 4611686018427387904
  %i.up = and i64 %i.un, 4294967295
  %or.cond.i.not.i189.i = icmp eq i64 %i.up, 2147483648
  %or.cond.i190.i = and i1 %i.uo, %or.cond.i.not.i189.i
  br i1 %or.cond.i190.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uj, i64 384
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !155
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.0.i.i191.i = phi ptr [ %i.um, %bb.de ], [ %i.ur, %bb.df ] ; 2 uses
  %i.us = getelementptr inbounds i8, ptr %.0.i.i191.i, i64 -4 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 4, !tbaa !8
  %i.uu = add nsw i32 %i.ut, 1
  store i32 %i.uu, ptr %i.us, align 4, !tbaa !8
  br label %JS_AtomToString.exit195.i

JS_AtomToString.exit195.thread.i:                 ; preds = %bb.dd, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  br label %exported_names_cmp.exit141.i

JS_AtomToString.exit195.i:                        ; preds = %bb.dg, %str8.exit10.i279.i
  %.sroa.0.0.i281.pn.in.i = phi ptr [ %.0.i.i191.i, %bb.dg ], [ %.1.i331364.i, %str8.exit10.i279.i ] ; 4 uses
  %.sroa.0.0.i281.pn.i = ptrtoint ptr %.sroa.0.0.i281.pn.in.i to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #49
  %i.uv = and i64 %.sroa.4.0.i293.pn.i, 4294967295
  %i.uw = icmp eq i64 %i.uv, 6
  br i1 %i.uw, label %exported_names_cmp.exit141.i, label %bb.dh

bb.dh:                                            ; preds = %JS_AtomToString.exit195.i
  %i.ux = inttoptr i64 %.sroa.0.0.i292.pn.i to ptr ; 3 uses
  %i.uy = load i64, ptr %i.ux, align 8
  %i.uz = trunc i64 %i.uy to i32
  %i.va = and i32 %i.uz, 2147483647
  %i.vb = load i64, ptr %.sroa.0.0.i281.pn.in.i, align 8
  %i.vc = trunc i64 %i.vb to i32
  %i.vd = and i32 %i.vc, 2147483647
  %i.ve = call i32 @llvm.umin.i32(i32 %i.va, i32 %i.vd)
  %i.vf = call fastcc i32 @js_string_memcmp(ptr noundef nonnull readonly %i.ux, ptr noundef nonnull readonly %.sroa.0.0.i281.pn.in.i, i32 noundef %i.ve), !inline_history !858 ; 2 uses
  %i.vg = icmp eq i32 %i.vf, 0
  br i1 %i.vg, label %bb.di, label %exported_names_cmp.exit141.i

bb.di:                                            ; preds = %bb.dh
  %i.vh = load i64, ptr %i.ux, align 8
  %i.vi = trunc i64 %i.vh to i32
  %i.vj = and i32 %i.vi, 2147483647
  %i.vk = load i64, ptr %.sroa.0.0.i281.pn.in.i, align 8
  %i.vl = trunc i64 %i.vk to i32
  %i.vm = and i32 %i.vl, 2147483647
  %i.vn = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.vj, i32 %i.vm)
  br label %exported_names_cmp.exit141.i

exported_names_cmp.exit141.i:                     ; preds = %bb.di, %bb.dh, %JS_AtomToString.exit195.i, %JS_AtomToString.exit195.thread.i
  %.sroa.4.0.i282.pn587.i = phi i64 [ -7, %JS_AtomToString.exit195.i ], [ -7, %bb.dh ], [ -7, %bb.di ], [ 6, %JS_AtomToString.exit195.thread.i ]
  %i.vo = phi i1 [ true, %JS_AtomToString.exit195.i ], [ true, %bb.dh ], [ true, %bb.di ], [ false, %JS_AtomToString.exit195.thread.i ]
  %.sroa.0.0.i281.pn586.i = phi i64 [ %.sroa.0.0.i281.pn.i, %JS_AtomToString.exit195.i ], [ %.sroa.0.0.i281.pn.i, %bb.dh ], [ %.sroa.0.0.i281.pn.i, %bb.di ], [ 0, %JS_AtomToString.exit195.thread.i ] ; 2 uses
  %.0.i140.i = phi i32 [ 0, %JS_AtomToString.exit195.i ], [ %i.vf, %bb.dh ], [ %i.vn, %bb.di ], [ 0, %JS_AtomToString.exit195.thread.i ] ; 2 uses
  %i.vp = load ptr, ptr %i.af, align 8, !tbaa !50 ; 3 uses
  br i1 %i.qq, label %bb.dj, label %JS_FreeValue.exit185.i

bb.dj:                                            ; preds = %exported_names_cmp.exit141.i
  %i.vq = inttoptr i64 %.sroa.0.0.i292.pn.i to ptr
  %i.vr = getelementptr inbounds i8, ptr %i.vq, i64 -4 ; 2 uses
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !8  ; 2 uses
  %i.vt = add nsw i32 %i.vs, -1
  store i32 %i.vt, ptr %i.vr, align 4, !tbaa !8
  %i.vu = icmp slt i32 %i.vs, 2
  br i1 %i.vu, label %bb.dk, label %JS_FreeValue.exit185.i

bb.dk:                                            ; preds = %bb.dj
  call fastcc void @js_free_value_rt(ptr noundef %i.vp, i64 %.sroa.0.0.i292.pn.i, i64 %.sroa.4.0.i293.pn.i), !inline_history !890
  %.pre478.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %JS_FreeValue.exit185.i

JS_FreeValue.exit185.i:                           ; preds = %bb.dk, %bb.dj, %exported_names_cmp.exit141.i
  %i.vv = phi ptr [ %i.vp, %exported_names_cmp.exit141.i ], [ %i.vp, %bb.dj ], [ %.pre478.i, %bb.dk ]
  br i1 %i.vo, label %bb.dl, label %JS_FreeValue.exit184.i

bb.dl:                                            ; preds = %JS_FreeValue.exit185.i
  %i.vw = inttoptr i64 %.sroa.0.0.i281.pn586.i to ptr
  %i.vx = getelementptr inbounds i8, ptr %i.vw, i64 -4 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !8  ; 2 uses
  %i.vz = add nsw i32 %i.vy, -1
  store i32 %i.vz, ptr %i.vx, align 4, !tbaa !8
  %i.wa = icmp slt i32 %i.vy, 2
  br i1 %i.wa, label %bb.dm, label %JS_FreeValue.exit184.i

bb.dm:                                            ; preds = %bb.dl
  call fastcc void @js_free_value_rt(ptr noundef %i.vv, i64 %.sroa.0.0.i281.pn586.i, i64 %.sroa.4.0.i282.pn587.i), !inline_history !890
  br label %JS_FreeValue.exit184.i

JS_FreeValue.exit184.i:                           ; preds = %bb.dm, %bb.dl, %JS_FreeValue.exit185.i
  %i.wb = icmp sgt i32 %.0.i140.i, -1
  br i1 %i.wb, label %bb.dn, label %.critedge.i.i

bb.dn:                                            ; preds = %JS_FreeValue.exit184.i
  %i.wc = icmp eq i32 %.0.i140.i, 0
  br i1 %i.wc, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  call void %.0.i312.i.i(ptr noundef %.1178227.i.i, ptr noundef nonnull %.1184226.i.i, i64 noundef 16) #49, !inline_history !886
  %i.wd = add i64 %.1170229.i.i, 1
  %i.we = getelementptr inbounds nuw i8, ptr %.1178227.i.i, i64 16
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.2179.i.i = phi ptr [ %i.we, %bb.do ], [ %.1178227.i.i, %bb.dn ] ; 2 uses
  %.2171.i.i = phi i64 [ %i.wd, %bb.do ], [ %.1170229.i.i, %bb.dn ] ; 2 uses
  %i.wf = add i64 %.1173228.i.i, 1                ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.1184226.i.i, i64 16 ; 3 uses
  %i.wh = icmp ult ptr %i.wg, %.0180.i.i
  br i1 %i.wh, label %.lr.ph.i127.i, label %.critedge.i.i, !llvm.loop !545

.critedge.i.i:                                    ; preds = %bb.dp, %JS_FreeValue.exit184.i, %bb.bq
  %.1184.lcssa.i.i = phi ptr [ %.0183.i.i, %bb.bq ], [ %.1184226.i.i, %JS_FreeValue.exit184.i ], [ %i.wg, %bb.dp ] ; 7 uses
  %.1178.lcssa.i.i = phi ptr [ %.0177.i.i, %bb.bq ], [ %.1178227.i.i, %JS_FreeValue.exit184.i ], [ %.2179.i.i, %bb.dp ] ; 2 uses
  %.1173.lcssa.i.i = phi i64 [ %.0172.i.i, %bb.bq ], [ %.1173228.i.i, %JS_FreeValue.exit184.i ], [ %i.wf, %bb.dp ] ; 3 uses
  %.1170.lcssa.i.i = phi i64 [ %.0169.i.i, %bb.bq ], [ %.1170229.i.i, %JS_FreeValue.exit184.i ], [ %.2171.i.i, %bb.dp ] ; 2 uses
  %i.wi = getelementptr inbounds i8, ptr %.0180.i.i, i64 -16 ; 2 uses
  %i.wj = icmp ult ptr %.1184.lcssa.i.i, %i.wi
  br i1 %i.wj, label %.lr.ph240.i.i, label %.critedge3.i.i

.lr.ph240.i.i:                                    ; preds = %.critedge.i.i, %bb.fo
  %i.wk = phi ptr [ %i.agg, %bb.fo ], [ %i.wi, %.critedge.i.i ] ; 5 uses
  %.1168239.i.i = phi i64 [ %.2.i.i, %bb.fo ], [ %.0167.i.i, %.critedge.i.i ] ; 3 uses
  %.1175238.i.i = phi ptr [ %.2176.i.i, %bb.fo ], [ %.0174.i.i, %.critedge.i.i ] ; 3 uses
  %i.wl = load i32, ptr %.0186255.i.i216, align 8, !tbaa !866 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #49
  %i.wm = icmp slt i32 %i.wl, 0
  br i1 %i.wm, label %bb.dq, label %bb.ei

bb.dq:                                            ; preds = %.lr.ph240.i.i
  %i.wn = and i32 %i.wl, 2147483647
  %i.wo = call i64 @u32toa(ptr noundef nonnull %i.g, i32 noundef %i.wn) #49, !inline_history !887 ; 2 uses
  %i.wp = load ptr, ptr %i.af, align 8, !tbaa !50 ; 11 uses
  %sext407.i = shl i64 %i.wo, 32
  %i.wq = ashr exact i64 %sext407.i, 32           ; 7 uses
  %i.wr = add nsw i64 %i.wq, 25                   ; 3 uses
  %i.ws = icmp eq i64 %i.wr, 0
  br i1 %i.ws, label %bb.eg, label %bb.dr, !prof !9

bb.dr:                                            ; preds = %bb.dq
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wp, i64 40 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wp, i64 48 ; 3 uses
  %i.wv = load i64, ptr %i.wu, align 8, !tbaa !10
  %i.ww = add i64 %i.wv, %i.wr
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wp, i64 56
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !14
  %i.wz = add i64 %i.wy, -1
  %i.xa = icmp ugt i64 %i.ww, %i.wz
  br i1 %i.xa, label %bb.eg, label %bb.ds, !prof !9

bb.ds:                                            ; preds = %bb.dr
  %i.xb = and i64 %i.wq, -8                       ; 4 uses
  %i.xc = add nsw i64 %i.xb, 40
  %i.xd = icmp ult i64 %i.xc, 513
  br i1 %i.xd, label %bb.dt, label %js_arena_malloc.exit328.i

bb.dt:                                            ; preds = %bb.ds
  %i.xe = icmp slt i64 %i.xb, -23
  br i1 %i.xe, label %arena_get_size_index.exit.i324.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.xf = icmp slt i64 %i.xb, 89
  br i1 %i.xf, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.xg = add nsw i64 %i.wq, 40
  %i.xh = lshr i64 %i.xg, 3
  %i.xi = trunc nuw nsw i64 %i.xh to i32
  %i.xj = add nsw i32 %i.xi, -2
  br label %arena_get_size_index.exit.i324.i

bb.dw:                                            ; preds = %bb.du
  %i.xk = icmp samesign ult i64 %i.xb, 217
  br i1 %i.xk, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.xl = add nsw i64 %i.wq, 48
  %i.xm = lshr i64 %i.xl, 4
  %i.xn = trunc nuw nsw i64 %i.xm to i32
  %i.xo = add nuw nsw i32 %i.xn, 6
  br label %arena_get_size_index.exit.i324.i

bb.dy:                                            ; preds = %bb.dw
  %i.xp = add nsw i64 %i.wq, 64
  %i.xq = lshr i64 %i.xp, 5
  %i.xr = trunc nuw nsw i64 %i.xq to i32
  %i.xs = add nuw nsw i32 %i.xr, 14
  br label %arena_get_size_index.exit.i324.i

arena_get_size_index.exit.i324.i:                 ; preds = %bb.dy, %bb.dx, %bb.dv, %bb.dt
  %.0.i.i325.i = phi i32 [ %i.xs, %bb.dy ], [ %i.xj, %bb.dv ], [ %i.xo, %bb.dx ], [ 0, %bb.dt ] ; 2 uses
  %i.xt = zext nneg i32 %.0.i.i325.i to i64       ; 2 uses
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.xt
  %i.xv = load i16, ptr %i.xu, align 2, !tbaa !38
  %i.xw = getelementptr inbounds nuw i8, ptr %i.wp, i64 568
  %i.xx = getelementptr inbounds nuw [16 x i8], ptr %i.xw, i64 %i.xt ; 2 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !40 ; 2 uses
  %i.ya = icmp eq ptr %i.xz, %i.xx
  br i1 %i.ya, label %bb.dz, label %bb.ea, !prof !9

bb.dz:                                            ; preds = %arena_get_size_index.exit.i324.i
  %i.yb = call fastcc ptr @arena_new(ptr noundef nonnull %i.wp, i32 noundef %.0.i.i325.i), !inline_history !858 ; 2 uses
  %.not.i327.i = icmp eq ptr %i.yb, null
  br i1 %.not.i327.i, label %._crit_edge.i275.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %arena_get_size_index.exit.i324.i
  %.0.i326.i = phi ptr [ %i.yb, %bb.dz ], [ %i.xz, %arena_get_size_index.exit.i324.i ] ; 7 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %.0.i326.i, i64 38 ; 2 uses
  %i.yd = load i16, ptr %i.yc, align 2, !tbaa !38 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %.0.i326.i, i64 40
  %i.yf = zext i16 %i.yd to i64
  %i.yg = zext i16 %i.xv to i64
  %i.yh = mul nuw nsw i64 %i.yf, %i.yg
  %i.yi = getelementptr inbounds nuw i8, ptr %i.ye, i64 %i.yh ; 3 uses
  %i.yj = load i16, ptr %i.yi, align 8, !tbaa !35
  store i16 %i.yj, ptr %i.yc, align 2, !tbaa !38
  store i16 %i.yd, ptr %i.yi, align 8, !tbaa !35
  %i.yk = getelementptr inbounds nuw i8, ptr %.0.i326.i, i64 34 ; 2 uses
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !38
  %i.ym = add i16 %i.yl, 1                        ; 2 uses
  store i16 %i.ym, ptr %i.yk, align 2, !tbaa !38
  %i.yn = getelementptr inbounds nuw i8, ptr %.0.i326.i, i64 36
  %i.yo = load i16, ptr %i.yn, align 4, !tbaa !38
  %i.yp = icmp eq i16 %i.ym, %i.yo
  br i1 %i.yp, label %bb.eb, label %js_arena_malloc.exit328.thread367.i, !prof !9

bb.eb:                                            ; preds = %bb.ea
  %i.yq = load ptr, ptr %.0.i326.i, align 8, !tbaa !41 ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %.0.i326.i, i64 8
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !40 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yq, i64 8
  store ptr %i.ys, ptr %i.yt, align 8, !tbaa !40
  store ptr %i.yq, ptr %i.ys, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i326.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit328.thread367.i

js_arena_malloc.exit328.thread367.i:              ; preds = %bb.eb, %bb.ea
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yi, i64 8
  br label %bb.ec

js_arena_malloc.exit328.i:                        ; preds = %bb.ds
  %i.yv = getelementptr i8, ptr %i.wp, i64 8
  %.val.i321.i = load ptr, ptr %i.yv, align 8, !tbaa !42
  %i.yw = getelementptr i8, ptr %i.wp, i64 64
  %.val35.i322.i = load ptr, ptr %i.yw, align 8, !tbaa !33
  %i.yx = call fastcc ptr @arena_malloc_large(ptr %.val.i321.i, ptr %.val35.i322.i, i64 noundef %i.wr), !inline_history !858 ; 2 uses
  %.not.i.i.i267.i = icmp eq ptr %i.yx, null
  br i1 %.not.i.i.i267.i, label %._crit_edge.i275.i, label %bb.ec

._crit_edge.i275.i:                               ; preds = %js_arena_malloc.exit328.i, %bb.dz
  %.pre.i276.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.eg

bb.ec:                                            ; preds = %js_arena_malloc.exit328.i, %js_arena_malloc.exit328.thread367.i
  %.1.i323370.i = phi ptr [ %i.yu, %js_arena_malloc.exit328.thread367.i ], [ %i.yx, %js_arena_malloc.exit328.i ] ; 7 uses
  %i.yy = load i64, ptr %i.wt, align 8, !tbaa !34
  %i.yz = add i64 %i.yy, 1
  store i64 %i.yz, ptr %i.wt, align 8, !tbaa !34
  %i.za = getelementptr inbounds i8, ptr %.1.i323370.i, i64 -8 ; 3 uses
  %i.zb = load i16, ptr %i.za, align 8, !tbaa !35
  %i.zc = icmp eq i16 %i.zb, -1
  br i1 %i.zc, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.zd = getelementptr inbounds nuw i8, ptr %i.wp, i64 1064
  %i.ze = icmp eq ptr %i.za, %i.zd
  br i1 %i.ze, label %str8.exit10.i268.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.zf = getelementptr inbounds nuw i8, ptr %i.wp, i64 32
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !36
  %i.zh = call i64 %i.zg(ptr noundef nonnull %i.za) #49, !inline_history !888 ; 2 uses
  %.not15.i.i.i.i274.i = icmp eq i64 %i.zh, 0
  %i.zi = select i1 %.not15.i.i.i.i274.i, i64 8, i64 %i.zh
  br label %str8.exit10.i268.i

bb.ef:                                            ; preds = %bb.ec
  %i.zj = getelementptr inbounds i8, ptr %.1.i323370.i, i64 -6
  %i.zk = load i8, ptr %i.zj, align 2, !tbaa !35
  %i.zl = zext i8 %i.zk to i64
  %i.zm = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.zl
  %i.zn = load i16, ptr %i.zm, align 2, !tbaa !38
  %i.zo = zext i16 %i.zn to i64
  br label %str8.exit10.i268.i

bb.eg:                                            ; preds = %._crit_edge.i275.i, %bb.dr, %bb.dq
  %i.zp = phi ptr [ %.pre.i276.i, %._crit_edge.i275.i ], [ %i.wp, %bb.dr ], [ %i.wp, %bb.dq ]
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 1256 ; 3 uses
  %i.zr = load i8, ptr %i.zq, align 8, !tbaa !57, !range !58, !noundef !59
  %i.zs = trunc nuw i8 %i.zr to i1
  br i1 %i.zs, label %JS_AtomToString.exit183.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  store i8 1, ptr %i.zq, align 8, !tbaa !57
  %i.zt = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !889 ; 0 uses
  store i8 0, ptr %i.zq, align 8, !tbaa !57
  br label %JS_AtomToString.exit183.i

str8.exit10.i268.i:                               ; preds = %bb.ef, %bb.ee, %bb.ed
  %.011.i.i.i.i269.i = phi i64 [ 8, %bb.ed ], [ %i.zi, %bb.ee ], [ %i.zo, %bb.ef ]
  %i.zu = load i64, ptr %i.wu, align 8, !tbaa !10
  %i.zv = add i64 %i.zu, %.011.i.i.i.i269.i
  store i64 %i.zv, ptr %i.wu, align 8, !tbaa !10
  %i.zw = getelementptr inbounds i8, ptr %.1.i323370.i, i64 -4
  store i32 1, ptr %i.zw, align 4, !tbaa !8
  %i.zx = and i64 %i.wo, 2147483647
  store i64 %i.zx, ptr %.1.i323370.i, align 8
  %i.zy = getelementptr inbounds nuw i8, ptr %.1.i323370.i, i64 8
  store i32 0, ptr %i.zy, align 8, !tbaa !80
  %i.zz = getelementptr inbounds nuw i8, ptr %.1.i323370.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.zz, ptr nonnull readonly align 16 %i.g, i64 %i.wq, i1 false)
  %i.aaa = getelementptr inbounds i8, ptr %i.zz, i64 %i.wq
  store i8 0, ptr %i.aaa, align 1, !tbaa !35
  %i.aab = ptrtoint ptr %.1.i323370.i to i64
  br label %JS_AtomToString.exit183.i

bb.ei:                                            ; preds = %.lr.ph240.i.i
  %i.aac = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 1104
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !154 ; 2 uses
  %i.aaf = zext nneg i32 %i.wl to i64
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aae, i64 %i.aaf
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !155 ; 2 uses
  %i.aai = load i64, ptr %i.aah, align 8          ; 2 uses
  %.mask.i.i176.i = and i64 %i.aai, -4611686018427387904
  %i.aaj = icmp ne i64 %.mask.i.i176.i, 4611686018427387904
  %i.aak = and i64 %i.aai, 4294967295
  %or.cond.i.not.i177.i = icmp eq i64 %i.aak, 2147483648
  %or.cond.i178.i = and i1 %i.aaj, %or.cond.i.not.i177.i
  br i1 %or.cond.i178.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aae, i64 384
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !155
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.0.i.i179.i = phi ptr [ %i.aah, %bb.ei ], [ %i.aam, %bb.ej ] ; 2 uses
  %i.aan = ptrtoint ptr %.0.i.i179.i to i64
  %i.aao = getelementptr inbounds i8, ptr %.0.i.i179.i, i64 -4 ; 2 uses
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !8
  %i.aaq = add nsw i32 %i.aap, 1
  store i32 %i.aaq, ptr %i.aao, align 4, !tbaa !8
  br label %JS_AtomToString.exit183.i

JS_AtomToString.exit183.i:                        ; preds = %bb.ek, %str8.exit10.i268.i, %bb.eh, %bb.eg
  %.sroa.0.0.i270.pn.i = phi i64 [ %i.aan, %bb.ek ], [ %i.aab, %str8.exit10.i268.i ], [ 0, %bb.eg ], [ 0, %bb.eh ] ; 3 uses
  %i.aar = phi i1 [ true, %bb.ek ], [ true, %str8.exit10.i268.i ], [ false, %bb.eg ], [ false, %bb.eh ]
  %.sroa.4.0.i271.pn.i = phi i64 [ -7, %bb.ek ], [ -7, %str8.exit10.i268.i ], [ 6, %bb.eg ], [ 6, %bb.eh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #49
  %i.aas = load i32, ptr %i.wk, align 8, !tbaa !866 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #49
  %i.aat = icmp slt i32 %i.aas, 0
  br i1 %i.aat, label %bb.el, label %bb.fd

bb.el:                                            ; preds = %JS_AtomToString.exit183.i
  %i.aau = and i32 %i.aas, 2147483647
  %i.aav = call i64 @u32toa(ptr noundef nonnull %i.h, i32 noundef %i.aau) #49, !inline_history !887 ; 2 uses
  %i.aaw = load ptr, ptr %i.af, align 8, !tbaa !50 ; 11 uses
  %sext408.i = shl i64 %i.aav, 32
  %i.aax = ashr exact i64 %sext408.i, 32          ; 7 uses
  %i.aay = add nsw i64 %i.aax, 25                 ; 3 uses
  %i.aaz = icmp eq i64 %i.aay, 0
  br i1 %i.aaz, label %bb.fb, label %bb.em, !prof !9

bb.em:                                            ; preds = %bb.el
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 40 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aaw, i64 48 ; 3 uses
  %i.abc = load i64, ptr %i.abb, align 8, !tbaa !10
  %i.abd = add i64 %i.abc, %i.aay
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aaw, i64 56
  %i.abf = load i64, ptr %i.abe, align 8, !tbaa !14
  %i.abg = add i64 %i.abf, -1
  %i.abh = icmp ugt i64 %i.abd, %i.abg
  br i1 %i.abh, label %bb.fb, label %bb.en, !prof !9

bb.en:                                            ; preds = %bb.em
  %i.abi = and i64 %i.aax, -8                     ; 4 uses
  %i.abj = add nsw i64 %i.abi, 40
  %i.abk = icmp ult i64 %i.abj, 513
  br i1 %i.abk, label %bb.eo, label %js_arena_malloc.exit320.i

bb.eo:                                            ; preds = %bb.en
  %i.abl = icmp slt i64 %i.abi, -23
  br i1 %i.abl, label %arena_get_size_index.exit.i316.i, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.abm = icmp slt i64 %i.abi, 89
  br i1 %i.abm, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep
  %i.abn = add nsw i64 %i.aax, 40
  %i.abo = lshr i64 %i.abn, 3
  %i.abp = trunc nuw nsw i64 %i.abo to i32
  %i.abq = add nsw i32 %i.abp, -2
  br label %arena_get_size_index.exit.i316.i

bb.er:                                            ; preds = %bb.ep
  %i.abr = icmp samesign ult i64 %i.abi, 217
  br i1 %i.abr, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.abs = add nsw i64 %i.aax, 48
  %i.abt = lshr i64 %i.abs, 4
  %i.abu = trunc nuw nsw i64 %i.abt to i32
  %i.abv = add nuw nsw i32 %i.abu, 6
  br label %arena_get_size_index.exit.i316.i

bb.et:                                            ; preds = %bb.er
  %i.abw = add nsw i64 %i.aax, 64
  %i.abx = lshr i64 %i.abw, 5
  %i.aby = trunc nuw nsw i64 %i.abx to i32
  %i.abz = add nuw nsw i32 %i.aby, 14
  br label %arena_get_size_index.exit.i316.i

arena_get_size_index.exit.i316.i:                 ; preds = %bb.et, %bb.es, %bb.eq, %bb.eo
  %.0.i.i317.i = phi i32 [ %i.abz, %bb.et ], [ %i.abq, %bb.eq ], [ %i.abv, %bb.es ], [ 0, %bb.eo ] ; 2 uses
  %i.aca = zext nneg i32 %.0.i.i317.i to i64      ; 2 uses
  %i.acb = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.aca
  %i.acc = load i16, ptr %i.acb, align 2, !tbaa !38
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aaw, i64 568
  %i.ace = getelementptr inbounds nuw [16 x i8], ptr %i.acd, i64 %i.aca ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !40 ; 2 uses
  %i.ach = icmp eq ptr %i.acg, %i.ace
  br i1 %i.ach, label %bb.eu, label %bb.ev, !prof !9

bb.eu:                                            ; preds = %arena_get_size_index.exit.i316.i
  %i.aci = call fastcc ptr @arena_new(ptr noundef nonnull %i.aaw, i32 noundef %.0.i.i317.i), !inline_history !858 ; 2 uses
  %.not.i319.i = icmp eq ptr %i.aci, null
  br i1 %.not.i319.i, label %._crit_edge.i264.i, label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %arena_get_size_index.exit.i316.i
  %.0.i318.i = phi ptr [ %i.aci, %bb.eu ], [ %i.acg, %arena_get_size_index.exit.i316.i ] ; 7 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %.0.i318.i, i64 38 ; 2 uses
  %i.ack = load i16, ptr %i.acj, align 2, !tbaa !38 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %.0.i318.i, i64 40
  %i.acm = zext i16 %i.ack to i64
  %i.acn = zext i16 %i.acc to i64
  %i.aco = mul nuw nsw i64 %i.acm, %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acl, i64 %i.aco ; 3 uses
  %i.acq = load i16, ptr %i.acp, align 8, !tbaa !35
  store i16 %i.acq, ptr %i.acj, align 2, !tbaa !38
  store i16 %i.ack, ptr %i.acp, align 8, !tbaa !35
  %i.acr = getelementptr inbounds nuw i8, ptr %.0.i318.i, i64 34 ; 2 uses
  %i.acs = load i16, ptr %i.acr, align 2, !tbaa !38
  %i.act = add i16 %i.acs, 1                      ; 2 uses
  store i16 %i.act, ptr %i.acr, align 2, !tbaa !38
  %i.acu = getelementptr inbounds nuw i8, ptr %.0.i318.i, i64 36
  %i.acv = load i16, ptr %i.acu, align 4, !tbaa !38
  %i.acw = icmp eq i16 %i.act, %i.acv
  br i1 %i.acw, label %bb.ew, label %js_arena_malloc.exit320.thread373.i, !prof !9

bb.ew:                                            ; preds = %bb.ev
  %i.acx = load ptr, ptr %.0.i318.i, align 8, !tbaa !41 ; 2 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %.0.i318.i, i64 8
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !40 ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  store ptr %i.acz, ptr %i.ada, align 8, !tbaa !40
  store ptr %i.acx, ptr %i.acz, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i318.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit320.thread373.i

js_arena_malloc.exit320.thread373.i:              ; preds = %bb.ew, %bb.ev
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acp, i64 8
  br label %bb.ex

js_arena_malloc.exit320.i:                        ; preds = %bb.en
  %i.adc = getelementptr i8, ptr %i.aaw, i64 8
  %.val.i313.i = load ptr, ptr %i.adc, align 8, !tbaa !42
  %i.add = getelementptr i8, ptr %i.aaw, i64 64
  %.val35.i314.i = load ptr, ptr %i.add, align 8, !tbaa !33
  %i.ade = call fastcc ptr @arena_malloc_large(ptr %.val.i313.i, ptr %.val35.i314.i, i64 noundef %i.aay), !inline_history !858 ; 2 uses
  %.not.i.i.i256.i = icmp eq ptr %i.ade, null
  br i1 %.not.i.i.i256.i, label %._crit_edge.i264.i, label %bb.ex

._crit_edge.i264.i:                               ; preds = %js_arena_malloc.exit320.i, %bb.eu
  %.pre.i265.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.fb

bb.ex:                                            ; preds = %js_arena_malloc.exit320.i, %js_arena_malloc.exit320.thread373.i
  %.1.i315376.i = phi ptr [ %i.adb, %js_arena_malloc.exit320.thread373.i ], [ %i.ade, %js_arena_malloc.exit320.i ] ; 7 uses
  %i.adf = load i64, ptr %i.aba, align 8, !tbaa !34
  %i.adg = add i64 %i.adf, 1
  store i64 %i.adg, ptr %i.aba, align 8, !tbaa !34
  %i.adh = getelementptr inbounds i8, ptr %.1.i315376.i, i64 -8 ; 3 uses
  %i.adi = load i16, ptr %i.adh, align 8, !tbaa !35
  %i.adj = icmp eq i16 %i.adi, -1
  br i1 %i.adj, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.adk = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1064
  %i.adl = icmp eq ptr %i.adh, %i.adk
  br i1 %i.adl, label %str8.exit10.i257.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.adm = getelementptr inbounds nuw i8, ptr %i.aaw, i64 32
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !36
  %i.ado = call i64 %i.adn(ptr noundef nonnull %i.adh) #49, !inline_history !888 ; 2 uses
  %.not15.i.i.i.i263.i = icmp eq i64 %i.ado, 0
  %i.adp = select i1 %.not15.i.i.i.i263.i, i64 8, i64 %i.ado
  br label %str8.exit10.i257.i

bb.fa:                                            ; preds = %bb.ex
  %i.adq = getelementptr inbounds i8, ptr %.1.i315376.i, i64 -6
  %i.adr = load i8, ptr %i.adq, align 2, !tbaa !35
  %i.ads = zext i8 %i.adr to i64
  %i.adt = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ads
  %i.adu = load i16, ptr %i.adt, align 2, !tbaa !38
  %i.adv = zext i16 %i.adu to i64
  br label %str8.exit10.i257.i

bb.fb:                                            ; preds = %._crit_edge.i264.i, %bb.em, %bb.el
  %i.adw = phi ptr [ %.pre.i265.i, %._crit_edge.i264.i ], [ %i.aaw, %bb.em ], [ %i.aaw, %bb.el ]
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 1256 ; 3 uses
  %i.ady = load i8, ptr %i.adx, align 8, !tbaa !57, !range !58, !noundef !59
  %i.adz = trunc nuw i8 %i.ady to i1
  br i1 %i.adz, label %JS_AtomToString.exit175.thread.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  store i8 1, ptr %i.adx, align 8, !tbaa !57
  %i.aea = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !889 ; 0 uses
  store i8 0, ptr %i.adx, align 8, !tbaa !57
  br label %JS_AtomToString.exit175.thread.i

str8.exit10.i257.i:                               ; preds = %bb.fa, %bb.ez, %bb.ey
  %.011.i.i.i.i258.i = phi i64 [ 8, %bb.ey ], [ %i.adp, %bb.ez ], [ %i.adv, %bb.fa ]
  %i.aeb = load i64, ptr %i.abb, align 8, !tbaa !10
  %i.aec = add i64 %i.aeb, %.011.i.i.i.i258.i
  store i64 %i.aec, ptr %i.abb, align 8, !tbaa !10
  %i.aed = getelementptr inbounds i8, ptr %.1.i315376.i, i64 -4
  store i32 1, ptr %i.aed, align 4, !tbaa !8
  %i.aee = and i64 %i.aav, 2147483647
  store i64 %i.aee, ptr %.1.i315376.i, align 8
  %i.aef = getelementptr inbounds nuw i8, ptr %.1.i315376.i, i64 8
  store i32 0, ptr %i.aef, align 8, !tbaa !80
  %i.aeg = getelementptr inbounds nuw i8, ptr %.1.i315376.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aeg, ptr nonnull readonly align 16 %i.h, i64 %i.aax, i1 false)
  %i.aeh = getelementptr inbounds i8, ptr %i.aeg, i64 %i.aax
  store i8 0, ptr %i.aeh, align 1, !tbaa !35
  br label %JS_AtomToString.exit175.i

bb.fd:                                            ; preds = %JS_AtomToString.exit183.i
  %i.aei = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aei, i64 1104
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !154 ; 2 uses
  %i.ael = zext nneg i32 %i.aas to i64
  %i.aem = getelementptr inbounds nuw [8 x i8], ptr %i.aek, i64 %i.ael
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !155 ; 2 uses
  %i.aeo = load i64, ptr %i.aen, align 8          ; 2 uses
  %.mask.i.i168.i = and i64 %i.aeo, -4611686018427387904
  %i.aep = icmp ne i64 %.mask.i.i168.i, 4611686018427387904
  %i.aeq = and i64 %i.aeo, 4294967295
  %or.cond.i.not.i169.i = icmp eq i64 %i.aeq, 2147483648
  %or.cond.i170.i = and i1 %i.aep, %or.cond.i.not.i169.i
  br i1 %or.cond.i170.i, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aek, i64 384
  %i.aes = load ptr, ptr %i.aer, align 8, !tbaa !155
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %.0.i.i171.i = phi ptr [ %i.aen, %bb.fd ], [ %i.aes, %bb.fe ] ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %.0.i.i171.i, i64 -4 ; 2 uses
  %i.aeu = load i32, ptr %i.aet, align 4, !tbaa !8
  %i.aev = add nsw i32 %i.aeu, 1
  store i32 %i.aev, ptr %i.aet, align 4, !tbaa !8
  br label %JS_AtomToString.exit175.i

JS_AtomToString.exit175.thread.i:                 ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #49
  br label %exported_names_cmp.exit139.i

JS_AtomToString.exit175.i:                        ; preds = %bb.ff, %str8.exit10.i257.i
  %.sroa.0.0.i259.pn.in.i = phi ptr [ %.0.i.i171.i, %bb.ff ], [ %.1.i315376.i, %str8.exit10.i257.i ] ; 4 uses
  %.sroa.0.0.i259.pn.i = ptrtoint ptr %.sroa.0.0.i259.pn.in.i to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #49
  %i.aew = and i64 %.sroa.4.0.i271.pn.i, 4294967295
  %i.aex = icmp eq i64 %i.aew, 6
  br i1 %i.aex, label %exported_names_cmp.exit139.i, label %bb.fg

bb.fg:                                            ; preds = %JS_AtomToString.exit175.i
  %i.aey = inttoptr i64 %.sroa.0.0.i270.pn.i to ptr ; 3 uses
  %i.aez = load i64, ptr %i.aey, align 8
  %i.afa = trunc i64 %i.aez to i32
  %i.afb = and i32 %i.afa, 2147483647
  %i.afc = load i64, ptr %.sroa.0.0.i259.pn.in.i, align 8
  %i.afd = trunc i64 %i.afc to i32
  %i.afe = and i32 %i.afd, 2147483647
  %i.aff = call i32 @llvm.umin.i32(i32 %i.afb, i32 %i.afe)
  %i.afg = call fastcc i32 @js_string_memcmp(ptr noundef nonnull readonly %i.aey, ptr noundef nonnull readonly %.sroa.0.0.i259.pn.in.i, i32 noundef %i.aff), !inline_history !858 ; 2 uses
  %i.afh = icmp eq i32 %i.afg, 0
  br i1 %i.afh, label %bb.fh, label %exported_names_cmp.exit139.i

bb.fh:                                            ; preds = %bb.fg
  %i.afi = load i64, ptr %i.aey, align 8
  %i.afj = trunc i64 %i.afi to i32
  %i.afk = and i32 %i.afj, 2147483647
  %i.afl = load i64, ptr %.sroa.0.0.i259.pn.in.i, align 8
  %i.afm = trunc i64 %i.afl to i32
  %i.afn = and i32 %i.afm, 2147483647
  %i.afo = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.afk, i32 %i.afn)
  br label %exported_names_cmp.exit139.i

exported_names_cmp.exit139.i:                     ; preds = %bb.fh, %bb.fg, %JS_AtomToString.exit175.i, %JS_AtomToString.exit175.thread.i
  %.sroa.4.0.i260.pn592.i = phi i64 [ -7, %JS_AtomToString.exit175.i ], [ -7, %bb.fg ], [ -7, %bb.fh ], [ 6, %JS_AtomToString.exit175.thread.i ]
  %i.afp = phi i1 [ true, %JS_AtomToString.exit175.i ], [ true, %bb.fg ], [ true, %bb.fh ], [ false, %JS_AtomToString.exit175.thread.i ]
  %.sroa.0.0.i259.pn591.i = phi i64 [ %.sroa.0.0.i259.pn.i, %JS_AtomToString.exit175.i ], [ %.sroa.0.0.i259.pn.i, %bb.fg ], [ %.sroa.0.0.i259.pn.i, %bb.fh ], [ 0, %JS_AtomToString.exit175.thread.i ] ; 2 uses
  %.0.i138.i = phi i32 [ 0, %JS_AtomToString.exit175.i ], [ %i.afg, %bb.fg ], [ %i.afo, %bb.fh ], [ 0, %JS_AtomToString.exit175.thread.i ] ; 2 uses
  %i.afq = load ptr, ptr %i.af, align 8, !tbaa !50 ; 3 uses
  br i1 %i.aar, label %bb.fi, label %JS_FreeValue.exit165.i

bb.fi:                                            ; preds = %exported_names_cmp.exit139.i
  %i.afr = inttoptr i64 %.sroa.0.0.i270.pn.i to ptr
  %i.afs = getelementptr inbounds i8, ptr %i.afr, i64 -4 ; 2 uses
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !8 ; 2 uses
  %i.afu = add nsw i32 %i.aft, -1
  store i32 %i.afu, ptr %i.afs, align 4, !tbaa !8
  %i.afv = icmp slt i32 %i.aft, 2
  br i1 %i.afv, label %bb.fj, label %JS_FreeValue.exit165.i

bb.fj:                                            ; preds = %bb.fi
  call fastcc void @js_free_value_rt(ptr noundef %i.afq, i64 %.sroa.0.0.i270.pn.i, i64 %.sroa.4.0.i271.pn.i), !inline_history !890
  %.pre479.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %JS_FreeValue.exit165.i

JS_FreeValue.exit165.i:                           ; preds = %bb.fj, %bb.fi, %exported_names_cmp.exit139.i
  %i.afw = phi ptr [ %i.afq, %exported_names_cmp.exit139.i ], [ %i.afq, %bb.fi ], [ %.pre479.i, %bb.fj ]
  br i1 %i.afp, label %bb.fk, label %JS_FreeValue.exit164.i

bb.fk:                                            ; preds = %JS_FreeValue.exit165.i
  %i.afx = inttoptr i64 %.sroa.0.0.i259.pn591.i to ptr
  %i.afy = getelementptr inbounds i8, ptr %i.afx, i64 -4 ; 2 uses
  %i.afz = load i32, ptr %i.afy, align 4, !tbaa !8 ; 2 uses
  %i.aga = add nsw i32 %i.afz, -1
  store i32 %i.aga, ptr %i.afy, align 4, !tbaa !8
  %i.agb = icmp slt i32 %i.afz, 2
  br i1 %i.agb, label %bb.fl, label %JS_FreeValue.exit164.i

bb.fl:                                            ; preds = %bb.fk
  call fastcc void @js_free_value_rt(ptr noundef %i.afw, i64 %.sroa.0.0.i259.pn591.i, i64 %.sroa.4.0.i260.pn592.i), !inline_history !890
  br label %JS_FreeValue.exit164.i

JS_FreeValue.exit164.i:                           ; preds = %bb.fl, %bb.fk, %JS_FreeValue.exit165.i
  %i.agc = icmp slt i32 %.0.i138.i, 1
  br i1 %i.agc, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %JS_FreeValue.exit164.i
  %i.agd = icmp eq i32 %.0.i138.i, 0
  br i1 %i.agd, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.age = add i64 %.1168239.i.i, -1
  %i.agf = getelementptr inbounds i8, ptr %.1175238.i.i, i64 -16 ; 2 uses
  call void %.0.i312.i.i(ptr noundef nonnull %i.agf, ptr noundef nonnull %i.wk, i64 noundef 16) #49, !inline_history !886
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %.2176.i.i = phi ptr [ %i.agf, %bb.fn ], [ %.1175238.i.i, %bb.fm ] ; 2 uses
  %.2.i.i = phi i64 [ %i.age, %bb.fn ], [ %.1168239.i.i, %bb.fm ] ; 2 uses
  %i.agg = getelementptr inbounds i8, ptr %i.wk, i64 -16 ; 2 uses
  %i.agh = icmp ult ptr %.1184.lcssa.i.i, %i.agg
  br i1 %i.agh, label %.lr.ph240.i.i, label %.critedge3.i.i, !llvm.loop !546

bb.fp:                                            ; preds = %JS_FreeValue.exit164.i
  call void %.0.i312.i.i(ptr noundef %.1184.lcssa.i.i, ptr noundef nonnull %i.wk, i64 noundef 16) #49, !inline_history !886
  %i.agi = add i64 %.1173.lcssa.i.i, 1
  %i.agj = getelementptr inbounds nuw i8, ptr %.1184.lcssa.i.i, i64 16
  br label %bb.bq

.critedge3.i.i:                                   ; preds = %.critedge.i.i, %bb.fo
  %.1175.lcssa.i.i = phi ptr [ %.2176.i.i, %bb.fo ], [ %.0174.i.i, %.critedge.i.i ]
  %.1168.lcssa.i.i = phi i64 [ %.2.i.i, %bb.fo ], [ %.0167.i.i, %.critedge.i.i ]
  %i.agk = ptrtoint ptr %.1178.lcssa.i.i to i64   ; 2 uses
  %i.agl = ptrtoint ptr %.0186255.i.i216 to i64
  %i.agm = sub i64 %i.agk, %i.agl
  %i.agn = ptrtoint ptr %.1184.lcssa.i.i to i64   ; 2 uses
  %i.ago = sub i64 %i.agn, %i.agk
  %i.agp = sub i64 %.1173.lcssa.i.i, %.1170.lcssa.i.i ; 3 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.agm, i64 %i.ago) ; 2 uses
  %i.agq = sub i64 0, %spec.select.i.i
  %i.agr = getelementptr inbounds i8, ptr %.1184.lcssa.i.i, i64 %i.agq
  call void %.0.i210.i.i(ptr noundef nonnull %.0186255.i.i216, ptr noundef %i.agr, i64 noundef %spec.select.i.i) #49, !inline_history !886
  %i.ags = ptrtoint ptr %i.mi to i64
  %i.agt = ptrtoint ptr %.1175.lcssa.i.i to i64   ; 2 uses
  %i.agu = sub i64 %i.ags, %i.agt
  %i.agv = sub i64 %i.agt, %i.agn                 ; 2 uses
  %i.agw = sub i64 0, %i.agv
  %i.agx = getelementptr inbounds i8, ptr %i.mi, i64 %i.agw ; 2 uses
  %i.agy = sub i64 %.1168.lcssa.i.i, %.1173.lcssa.i.i ; 3 uses
  %.1.i.i = call i64 @llvm.umin.i64(i64 %i.agu, i64 %i.agv) ; 2 uses
  %i.agz = sub i64 0, %.1.i.i
  %i.aha = getelementptr inbounds i8, ptr %i.mi, i64 %i.agz
  call void %.0.i210.i.i(ptr noundef %.1184.lcssa.i.i, ptr noundef nonnull %i.aha, i64 noundef %.1.i.i) #49, !inline_history !886
  %i.ahb = icmp ugt i64 %i.agp, %i.agy
  br i1 %i.ahb, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %.critedge3.i.i
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %.critedge3.i.i
  %.sink285.i.i = phi ptr [ %i.agx, %bb.fq ], [ %.0186255.i.i216, %.critedge3.i.i ]
  %.sink.i.i = phi i64 [ %i.agy, %bb.fq ], [ %i.agp, %.critedge3.i.i ]
  %.1192.i.i = phi i64 [ %i.agp, %bb.fq ], [ %i.agy, %.critedge3.i.i ] ; 4 uses
  %.1187.i.i = phi ptr [ %.0186255.i.i216, %bb.fq ], [ %i.agx, %.critedge3.i.i ] ; 3 uses
  store ptr %.sink285.i.i, ptr %.1189254.i.i217, align 8, !tbaa !533
  %i.ahc = getelementptr inbounds nuw i8, ptr %.1189254.i.i217, i64 8
  store i64 %.sink.i.i, ptr %i.ahc, align 8, !tbaa !535
  %i.ahd = getelementptr inbounds nuw i8, ptr %.1189254.i.i217, i64 16
  store i32 %i.lm, ptr %i.ahd, align 8, !tbaa !536
  %.2190.i.i = getelementptr inbounds nuw i8, ptr %.1189254.i.i217, i64 24 ; 3 uses
  %i.ahe = icmp ugt i64 %.1192.i.i, 6
  br i1 %i.ahe, label %.lr.ph257.i.i, label %heapsortx.exit.i.i, !llvm.loop !538

heapsortx.exit.i.i:                               ; preds = %bb.fr, %bb.ad
  %.1189224.i.i = phi ptr [ %i.dh, %bb.ad ], [ %.2190.i.i, %bb.fr ] ; 2 uses
  %.0186222.i.i = phi ptr [ %i.di, %bb.ad ], [ %.1187.i.i, %bb.fr ] ; 3 uses
  %.2193.i.i = phi i64 [ %i.dk, %bb.ad ], [ %.1192.i.i, %bb.fr ] ; 2 uses
  %i.ahf = shl nuw nsw i64 %.2193.i.i, 4
  %i.ahg = getelementptr inbounds nuw i8, ptr %.0186222.i.i, i64 %i.ahf
  %i.ahh = icmp samesign ugt i64 %.2193.i.i, 1
  br i1 %i.ahh, label %.preheader.preheader.i.i, label %.loopexit.i.i

.preheader.preheader.i.i:                         ; preds = %heapsortx.exit.i.i
  %.2185264.i.i = getelementptr inbounds nuw i8, ptr %.0186222.i.i, i64 16
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge5.i.loopexit.i, %.preheader.preheader.i.i
  %.2185265.i.i = phi ptr [ %.2185.i.i, %.critedge5.i.loopexit.i ], [ %.2185264.i.i, %.preheader.preheader.i.i ] ; 2 uses
  br label %.lr.ph262.i.i

.lr.ph262.i.i:                                    ; preds = %bb.ho, %.preheader.i.i
  %.2182261.i.i = phi ptr [ %i.ahi, %bb.ho ], [ %.2185265.i.i, %.preheader.i.i ] ; 3 uses
  %i.ahi = getelementptr inbounds i8, ptr %.2182261.i.i, i64 -16 ; 4 uses
  %i.ahj = load i32, ptr %i.ahi, align 8, !tbaa !866 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #49
  %i.ahk = icmp slt i32 %i.ahj, 0
  br i1 %i.ahk, label %bb.fs, label %bb.gk

bb.fs:                                            ; preds = %.lr.ph262.i.i
  %i.ahl = and i32 %i.ahj, 2147483647
  %i.ahm = call i64 @u32toa(ptr noundef nonnull %i.i, i32 noundef %i.ahl) #49, !inline_history !887 ; 2 uses
  %i.ahn = load ptr, ptr %i.af, align 8, !tbaa !50 ; 11 uses
  %sext409.i = shl i64 %i.ahm, 32
  %i.aho = ashr exact i64 %sext409.i, 32          ; 7 uses
  %i.ahp = add nsw i64 %i.aho, 25                 ; 3 uses
  %i.ahq = icmp eq i64 %i.ahp, 0
  br i1 %i.ahq, label %bb.gi, label %bb.ft, !prof !9

bb.ft:                                            ; preds = %bb.fs
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahn, i64 40 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahn, i64 48 ; 3 uses
  %i.aht = load i64, ptr %i.ahs, align 8, !tbaa !10
  %i.ahu = add i64 %i.aht, %i.ahp
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 56
  %i.ahw = load i64, ptr %i.ahv, align 8, !tbaa !14
  %i.ahx = add i64 %i.ahw, -1
  %i.ahy = icmp ugt i64 %i.ahu, %i.ahx
  br i1 %i.ahy, label %bb.gi, label %bb.fu, !prof !9

bb.fu:                                            ; preds = %bb.ft
  %i.ahz = and i64 %i.aho, -8                     ; 4 uses
  %i.aia = add nsw i64 %i.ahz, 40
  %i.aib = icmp ult i64 %i.aia, 513
  br i1 %i.aib, label %bb.fv, label %js_arena_malloc.exit312.i

bb.fv:                                            ; preds = %bb.fu
  %i.aic = icmp slt i64 %i.ahz, -23
  br i1 %i.aic, label %arena_get_size_index.exit.i308.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.aid = icmp slt i64 %i.ahz, 89
  br i1 %i.aid, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.aie = add nsw i64 %i.aho, 40
  %i.aif = lshr i64 %i.aie, 3
  %i.aig = trunc nuw nsw i64 %i.aif to i32
  %i.aih = add nsw i32 %i.aig, -2
  br label %arena_get_size_index.exit.i308.i

bb.fy:                                            ; preds = %bb.fw
  %i.aii = icmp samesign ult i64 %i.ahz, 217
  br i1 %i.aii, label %bb.fz, label %bb.ga

bb.fz:                                            ; preds = %bb.fy
  %i.aij = add nsw i64 %i.aho, 48
  %i.aik = lshr i64 %i.aij, 4
  %i.ail = trunc nuw nsw i64 %i.aik to i32
  %i.aim = add nuw nsw i32 %i.ail, 6
  br label %arena_get_size_index.exit.i308.i

bb.ga:                                            ; preds = %bb.fy
  %i.ain = add nsw i64 %i.aho, 64
  %i.aio = lshr i64 %i.ain, 5
  %i.aip = trunc nuw nsw i64 %i.aio to i32
  %i.aiq = add nuw nsw i32 %i.aip, 14
  br label %arena_get_size_index.exit.i308.i

arena_get_size_index.exit.i308.i:                 ; preds = %bb.ga, %bb.fz, %bb.fx, %bb.fv
  %.0.i.i309.i = phi i32 [ %i.aiq, %bb.ga ], [ %i.aih, %bb.fx ], [ %i.aim, %bb.fz ], [ 0, %bb.fv ] ; 2 uses
  %i.air = zext nneg i32 %.0.i.i309.i to i64      ; 2 uses
  %i.ais = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.air
  %i.ait = load i16, ptr %i.ais, align 2, !tbaa !38
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ahn, i64 568
  %i.aiv = getelementptr inbounds nuw [16 x i8], ptr %i.aiu, i64 %i.air ; 2 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 8
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !40 ; 2 uses
  %i.aiy = icmp eq ptr %i.aix, %i.aiv
  br i1 %i.aiy, label %bb.gb, label %bb.gc, !prof !9

bb.gb:                                            ; preds = %arena_get_size_index.exit.i308.i
  %i.aiz = call fastcc ptr @arena_new(ptr noundef nonnull %i.ahn, i32 noundef %.0.i.i309.i), !inline_history !858 ; 2 uses
  %.not.i311.i = icmp eq ptr %i.aiz, null
  br i1 %.not.i311.i, label %._crit_edge.i253.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %arena_get_size_index.exit.i308.i
  %.0.i310.i = phi ptr [ %i.aiz, %bb.gb ], [ %i.aix, %arena_get_size_index.exit.i308.i ] ; 7 uses
  %i.aja = getelementptr inbounds nuw i8, ptr %.0.i310.i, i64 38 ; 2 uses
  %i.ajb = load i16, ptr %i.aja, align 2, !tbaa !38 ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %.0.i310.i, i64 40
  %i.ajd = zext i16 %i.ajb to i64
  %i.aje = zext i16 %i.ait to i64
  %i.ajf = mul nuw nsw i64 %i.ajd, %i.aje
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.ajc, i64 %i.ajf ; 3 uses
  %i.ajh = load i16, ptr %i.ajg, align 8, !tbaa !35
  store i16 %i.ajh, ptr %i.aja, align 2, !tbaa !38
  store i16 %i.ajb, ptr %i.ajg, align 8, !tbaa !35
  %i.aji = getelementptr inbounds nuw i8, ptr %.0.i310.i, i64 34 ; 2 uses
  %i.ajj = load i16, ptr %i.aji, align 2, !tbaa !38
  %i.ajk = add i16 %i.ajj, 1                      ; 2 uses
  store i16 %i.ajk, ptr %i.aji, align 2, !tbaa !38
  %i.ajl = getelementptr inbounds nuw i8, ptr %.0.i310.i, i64 36
  %i.ajm = load i16, ptr %i.ajl, align 4, !tbaa !38
  %i.ajn = icmp eq i16 %i.ajk, %i.ajm
  br i1 %i.ajn, label %bb.gd, label %js_arena_malloc.exit312.thread379.i, !prof !9

bb.gd:                                            ; preds = %bb.gc
  %i.ajo = load ptr, ptr %.0.i310.i, align 8, !tbaa !41 ; 2 uses
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0.i310.i, i64 8
  %i.ajq = load ptr, ptr %i.ajp, align 8, !tbaa !40 ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajo, i64 8
  store ptr %i.ajq, ptr %i.ajr, align 8, !tbaa !40
  store ptr %i.ajo, ptr %i.ajq, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i310.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit312.thread379.i

js_arena_malloc.exit312.thread379.i:              ; preds = %bb.gd, %bb.gc
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajg, i64 8
  br label %bb.ge

js_arena_malloc.exit312.i:                        ; preds = %bb.fu
  %i.ajt = getelementptr i8, ptr %i.ahn, i64 8
  %.val.i305.i = load ptr, ptr %i.ajt, align 8, !tbaa !42
  %i.aju = getelementptr i8, ptr %i.ahn, i64 64
  %.val35.i306.i = load ptr, ptr %i.aju, align 8, !tbaa !33
  %i.ajv = call fastcc ptr @arena_malloc_large(ptr %.val.i305.i, ptr %.val35.i306.i, i64 noundef %i.ahp), !inline_history !858 ; 2 uses
  %.not.i.i.i245.i = icmp eq ptr %i.ajv, null
  br i1 %.not.i.i.i245.i, label %._crit_edge.i253.i, label %bb.ge

._crit_edge.i253.i:                               ; preds = %js_arena_malloc.exit312.i, %bb.gb
  %.pre.i254.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.gi

bb.ge:                                            ; preds = %js_arena_malloc.exit312.i, %js_arena_malloc.exit312.thread379.i
  %.1.i307382.i = phi ptr [ %i.ajs, %js_arena_malloc.exit312.thread379.i ], [ %i.ajv, %js_arena_malloc.exit312.i ] ; 7 uses
  %i.ajw = load i64, ptr %i.ahr, align 8, !tbaa !34
  %i.ajx = add i64 %i.ajw, 1
  store i64 %i.ajx, ptr %i.ahr, align 8, !tbaa !34
  %i.ajy = getelementptr inbounds i8, ptr %.1.i307382.i, i64 -8 ; 3 uses
  %i.ajz = load i16, ptr %i.ajy, align 8, !tbaa !35
  %i.aka = icmp eq i16 %i.ajz, -1
  br i1 %i.aka, label %bb.gf, label %bb.gh

bb.gf:                                            ; preds = %bb.ge
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ahn, i64 1064
  %i.akc = icmp eq ptr %i.ajy, %i.akb
  br i1 %i.akc, label %str8.exit10.i246.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.akd = getelementptr inbounds nuw i8, ptr %i.ahn, i64 32
  %i.ake = load ptr, ptr %i.akd, align 8, !tbaa !36
  %i.akf = call i64 %i.ake(ptr noundef nonnull %i.ajy) #49, !inline_history !888 ; 2 uses
  %.not15.i.i.i.i252.i = icmp eq i64 %i.akf, 0
  %i.akg = select i1 %.not15.i.i.i.i252.i, i64 8, i64 %i.akf
  br label %str8.exit10.i246.i

bb.gh:                                            ; preds = %bb.ge
  %i.akh = getelementptr inbounds i8, ptr %.1.i307382.i, i64 -6
  %i.aki = load i8, ptr %i.akh, align 2, !tbaa !35
  %i.akj = zext i8 %i.aki to i64
  %i.akk = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.akj
  %i.akl = load i16, ptr %i.akk, align 2, !tbaa !38
  %i.akm = zext i16 %i.akl to i64
  br label %str8.exit10.i246.i

bb.gi:                                            ; preds = %._crit_edge.i253.i, %bb.ft, %bb.fs
  %i.akn = phi ptr [ %.pre.i254.i, %._crit_edge.i253.i ], [ %i.ahn, %bb.ft ], [ %i.ahn, %bb.fs ]
  %i.ako = getelementptr inbounds nuw i8, ptr %i.akn, i64 1256 ; 3 uses
  %i.akp = load i8, ptr %i.ako, align 8, !tbaa !57, !range !58, !noundef !59
  %i.akq = trunc nuw i8 %i.akp to i1
  br i1 %i.akq, label %JS_AtomToString.exit163.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  store i8 1, ptr %i.ako, align 8, !tbaa !57
  %i.akr = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !889 ; 0 uses
  store i8 0, ptr %i.ako, align 8, !tbaa !57
  br label %JS_AtomToString.exit163.i

str8.exit10.i246.i:                               ; preds = %bb.gh, %bb.gg, %bb.gf
  %.011.i.i.i.i247.i = phi i64 [ 8, %bb.gf ], [ %i.akg, %bb.gg ], [ %i.akm, %bb.gh ]
  %i.aks = load i64, ptr %i.ahs, align 8, !tbaa !10
  %i.akt = add i64 %i.aks, %.011.i.i.i.i247.i
  store i64 %i.akt, ptr %i.ahs, align 8, !tbaa !10
  %i.aku = getelementptr inbounds i8, ptr %.1.i307382.i, i64 -4
  store i32 1, ptr %i.aku, align 4, !tbaa !8
  %i.akv = and i64 %i.ahm, 2147483647
  store i64 %i.akv, ptr %.1.i307382.i, align 8
  %i.akw = getelementptr inbounds nuw i8, ptr %.1.i307382.i, i64 8
  store i32 0, ptr %i.akw, align 8, !tbaa !80
  %i.akx = getelementptr inbounds nuw i8, ptr %.1.i307382.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.akx, ptr nonnull readonly align 16 %i.i, i64 %i.aho, i1 false)
  %i.aky = getelementptr inbounds i8, ptr %i.akx, i64 %i.aho
  store i8 0, ptr %i.aky, align 1, !tbaa !35
  %i.akz = ptrtoint ptr %.1.i307382.i to i64
  br label %JS_AtomToString.exit163.i

bb.gk:                                            ; preds = %.lr.ph262.i.i
  %i.ala = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.alb = getelementptr inbounds nuw i8, ptr %i.ala, i64 1104
  %i.alc = load ptr, ptr %i.alb, align 8, !tbaa !154 ; 2 uses
  %i.ald = zext nneg i32 %i.ahj to i64
  %i.ale = getelementptr inbounds nuw [8 x i8], ptr %i.alc, i64 %i.ald
  %i.alf = load ptr, ptr %i.ale, align 8, !tbaa !155 ; 2 uses
  %i.alg = load i64, ptr %i.alf, align 8          ; 2 uses
  %.mask.i.i156.i = and i64 %i.alg, -4611686018427387904
  %i.alh = icmp ne i64 %.mask.i.i156.i, 4611686018427387904
  %i.ali = and i64 %i.alg, 4294967295
  %or.cond.i.not.i157.i = icmp eq i64 %i.ali, 2147483648
  %or.cond.i158.i = and i1 %i.alh, %or.cond.i.not.i157.i
  br i1 %or.cond.i158.i, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.alj = getelementptr inbounds nuw i8, ptr %i.alc, i64 384
  %i.alk = load ptr, ptr %i.alj, align 8, !tbaa !155
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.0.i.i159.i = phi ptr [ %i.alf, %bb.gk ], [ %i.alk, %bb.gl ] ; 2 uses
  %i.all = ptrtoint ptr %.0.i.i159.i to i64
  %i.alm = getelementptr inbounds i8, ptr %.0.i.i159.i, i64 -4 ; 2 uses
  %i.aln = load i32, ptr %i.alm, align 4, !tbaa !8
  %i.alo = add nsw i32 %i.aln, 1
  store i32 %i.alo, ptr %i.alm, align 4, !tbaa !8
  br label %JS_AtomToString.exit163.i

JS_AtomToString.exit163.i:                        ; preds = %bb.gm, %str8.exit10.i246.i, %bb.gj, %bb.gi
  %.sroa.0.0.i248.pn.i = phi i64 [ %i.all, %bb.gm ], [ %i.akz, %str8.exit10.i246.i ], [ 0, %bb.gi ], [ 0, %bb.gj ] ; 3 uses
  %i.alp = phi i1 [ true, %bb.gm ], [ true, %str8.exit10.i246.i ], [ false, %bb.gi ], [ false, %bb.gj ]
  %.sroa.4.0.i249.pn.i = phi i64 [ -7, %bb.gm ], [ -7, %str8.exit10.i246.i ], [ 6, %bb.gi ], [ 6, %bb.gj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #49
  %i.alq = load i32, ptr %.2182261.i.i, align 8, !tbaa !866 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #49
  %i.alr = icmp slt i32 %i.alq, 0
  br i1 %i.alr, label %bb.gn, label %bb.hf

bb.gn:                                            ; preds = %JS_AtomToString.exit163.i
  %i.als = and i32 %i.alq, 2147483647
  %i.alt = call i64 @u32toa(ptr noundef nonnull %i.j, i32 noundef %i.als) #49, !inline_history !887 ; 2 uses
  %i.alu = load ptr, ptr %i.af, align 8, !tbaa !50 ; 11 uses
  %sext410.i = shl i64 %i.alt, 32
  %i.alv = ashr exact i64 %sext410.i, 32          ; 7 uses
  %i.alw = add nsw i64 %i.alv, 25                 ; 3 uses
  %i.alx = icmp eq i64 %i.alw, 0
  br i1 %i.alx, label %bb.hd, label %bb.go, !prof !9

bb.go:                                            ; preds = %bb.gn
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alu, i64 40 ; 2 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alu, i64 48 ; 3 uses
  %i.ama = load i64, ptr %i.alz, align 8, !tbaa !10
  %i.amb = add i64 %i.ama, %i.alw
  %i.amc = getelementptr inbounds nuw i8, ptr %i.alu, i64 56
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !14
  %i.ame = add i64 %i.amd, -1
  %i.amf = icmp ugt i64 %i.amb, %i.ame
  br i1 %i.amf, label %bb.hd, label %bb.gp, !prof !9

bb.gp:                                            ; preds = %bb.go
  %i.amg = and i64 %i.alv, -8                     ; 4 uses
  %i.amh = add nsw i64 %i.amg, 40
  %i.ami = icmp ult i64 %i.amh, 513
  br i1 %i.ami, label %bb.gq, label %js_arena_malloc.exit.i

bb.gq:                                            ; preds = %bb.gp
  %i.amj = icmp slt i64 %i.amg, -23
  br i1 %i.amj, label %arena_get_size_index.exit.i.i, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.amk = icmp slt i64 %i.amg, 89
  br i1 %i.amk, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.aml = add nsw i64 %i.alv, 40
  %i.amm = lshr i64 %i.aml, 3
  %i.amn = trunc nuw nsw i64 %i.amm to i32
  %i.amo = add nsw i32 %i.amn, -2
  br label %arena_get_size_index.exit.i.i

bb.gt:                                            ; preds = %bb.gr
  %i.amp = icmp samesign ult i64 %i.amg, 217
  br i1 %i.amp, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.amq = add nsw i64 %i.alv, 48
  %i.amr = lshr i64 %i.amq, 4
  %i.ams = trunc nuw nsw i64 %i.amr to i32
  %i.amt = add nuw nsw i32 %i.ams, 6
  br label %arena_get_size_index.exit.i.i

bb.gv:                                            ; preds = %bb.gt
  %i.amu = add nsw i64 %i.alv, 64
  %i.amv = lshr i64 %i.amu, 5
  %i.amw = trunc nuw nsw i64 %i.amv to i32
  %i.amx = add nuw nsw i32 %i.amw, 14
  br label %arena_get_size_index.exit.i.i

arena_get_size_index.exit.i.i:                    ; preds = %bb.gv, %bb.gu, %bb.gs, %bb.gq
  %.0.i.i302.i = phi i32 [ %i.amx, %bb.gv ], [ %i.amo, %bb.gs ], [ %i.amt, %bb.gu ], [ 0, %bb.gq ] ; 2 uses
  %i.amy = zext nneg i32 %.0.i.i302.i to i64      ; 2 uses
  %i.amz = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.amy
  %i.ana = load i16, ptr %i.amz, align 2, !tbaa !38
  %i.anb = getelementptr inbounds nuw i8, ptr %i.alu, i64 568
  %i.anc = getelementptr inbounds nuw [16 x i8], ptr %i.anb, i64 %i.amy ; 2 uses
  %i.and = getelementptr inbounds nuw i8, ptr %i.anc, i64 8
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !40 ; 2 uses
  %i.anf = icmp eq ptr %i.ane, %i.anc
  br i1 %i.anf, label %bb.gw, label %bb.gx, !prof !9

bb.gw:                                            ; preds = %arena_get_size_index.exit.i.i
  %i.ang = call fastcc ptr @arena_new(ptr noundef nonnull %i.alu, i32 noundef %.0.i.i302.i), !inline_history !858 ; 2 uses
  %.not.i304.i = icmp eq ptr %i.ang, null
  br i1 %.not.i304.i, label %._crit_edge.i.i, label %bb.gx

bb.gx:                                            ; preds = %bb.gw, %arena_get_size_index.exit.i.i
  %.0.i303.i = phi ptr [ %i.ang, %bb.gw ], [ %i.ane, %arena_get_size_index.exit.i.i ] ; 7 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %.0.i303.i, i64 38 ; 2 uses
  %i.ani = load i16, ptr %i.anh, align 2, !tbaa !38 ; 2 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %.0.i303.i, i64 40
  %i.ank = zext i16 %i.ani to i64
  %i.anl = zext i16 %i.ana to i64
  %i.anm = mul nuw nsw i64 %i.ank, %i.anl
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anj, i64 %i.anm ; 3 uses
  %i.ano = load i16, ptr %i.ann, align 8, !tbaa !35
  store i16 %i.ano, ptr %i.anh, align 2, !tbaa !38
  store i16 %i.ani, ptr %i.ann, align 8, !tbaa !35
  %i.anp = getelementptr inbounds nuw i8, ptr %.0.i303.i, i64 34 ; 2 uses
  %i.anq = load i16, ptr %i.anp, align 2, !tbaa !38
  %i.anr = add i16 %i.anq, 1                      ; 2 uses
  store i16 %i.anr, ptr %i.anp, align 2, !tbaa !38
  %i.ans = getelementptr inbounds nuw i8, ptr %.0.i303.i, i64 36
  %i.ant = load i16, ptr %i.ans, align 4, !tbaa !38
  %i.anu = icmp eq i16 %i.anr, %i.ant
  br i1 %i.anu, label %bb.gy, label %js_arena_malloc.exit.thread385.i, !prof !9

bb.gy:                                            ; preds = %bb.gx
  %i.anv = load ptr, ptr %.0.i303.i, align 8, !tbaa !41 ; 2 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %.0.i303.i, i64 8
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !40 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anv, i64 8
  store ptr %i.anx, ptr %i.any, align 8, !tbaa !40
  store ptr %i.anv, ptr %i.anx, align 8, !tbaa !41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i303.i, i8 0, i64 16, i1 false)
  br label %js_arena_malloc.exit.thread385.i

js_arena_malloc.exit.thread385.i:                 ; preds = %bb.gy, %bb.gx
  %i.anz = getelementptr inbounds nuw i8, ptr %i.ann, i64 8
  br label %bb.gz

js_arena_malloc.exit.i:                           ; preds = %bb.gp
  %i.aoa = getelementptr i8, ptr %i.alu, i64 8
  %.val.i300.i = load ptr, ptr %i.aoa, align 8, !tbaa !42
  %i.aob = getelementptr i8, ptr %i.alu, i64 64
  %.val35.i.i = load ptr, ptr %i.aob, align 8, !tbaa !33
  %i.aoc = call fastcc ptr @arena_malloc_large(ptr %.val.i300.i, ptr %.val35.i.i, i64 noundef %i.alw), !inline_history !858 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aoc, null
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i, label %bb.gz

._crit_edge.i.i:                                  ; preds = %js_arena_malloc.exit.i, %bb.gw
  %.pre.i244.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.hd

bb.gz:                                            ; preds = %js_arena_malloc.exit.i, %js_arena_malloc.exit.thread385.i
  %.1.i301388.i = phi ptr [ %i.anz, %js_arena_malloc.exit.thread385.i ], [ %i.aoc, %js_arena_malloc.exit.i ] ; 7 uses
  %i.aod = load i64, ptr %i.aly, align 8, !tbaa !34
  %i.aoe = add i64 %i.aod, 1
  store i64 %i.aoe, ptr %i.aly, align 8, !tbaa !34
  %i.aof = getelementptr inbounds i8, ptr %.1.i301388.i, i64 -8 ; 3 uses
  %i.aog = load i16, ptr %i.aof, align 8, !tbaa !35
  %i.aoh = icmp eq i16 %i.aog, -1
  br i1 %i.aoh, label %bb.ha, label %bb.hc

bb.ha:                                            ; preds = %bb.gz
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.alu, i64 1064
  %i.aoj = icmp eq ptr %i.aof, %i.aoi
  br i1 %i.aoj, label %str8.exit10.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.aok = getelementptr inbounds nuw i8, ptr %i.alu, i64 32
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !36
  %i.aom = call i64 %i.aol(ptr noundef nonnull %i.aof) #49, !inline_history !888 ; 2 uses
  %.not15.i.i.i.i.i = icmp eq i64 %i.aom, 0
  %i.aon = select i1 %.not15.i.i.i.i.i, i64 8, i64 %i.aom
  br label %str8.exit10.i.i

bb.hc:                                            ; preds = %bb.gz
  %i.aoo = getelementptr inbounds i8, ptr %.1.i301388.i, i64 -6
  %i.aop = load i8, ptr %i.aoo, align 2, !tbaa !35
  %i.aoq = zext i8 %i.aop to i64
  %i.aor = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.aoq
  %i.aos = load i16, ptr %i.aor, align 2, !tbaa !38
  %i.aot = zext i16 %i.aos to i64
  br label %str8.exit10.i.i

bb.hd:                                            ; preds = %._crit_edge.i.i, %bb.go, %bb.gn
  %i.aou = phi ptr [ %.pre.i244.i, %._crit_edge.i.i ], [ %i.alu, %bb.go ], [ %i.alu, %bb.gn ]
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 1256 ; 3 uses
  %i.aow = load i8, ptr %i.aov, align 8, !tbaa !57, !range !58, !noundef !59
  %i.aox = trunc nuw i8 %i.aow to i1
  br i1 %i.aox, label %JS_AtomToString.exit155.thread.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  store i8 1, ptr %i.aov, align 8, !tbaa !57
  %i.aoy = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !889 ; 0 uses
  store i8 0, ptr %i.aov, align 8, !tbaa !57
  br label %JS_AtomToString.exit155.thread.i

str8.exit10.i.i:                                  ; preds = %bb.hc, %bb.hb, %bb.ha
  %.011.i.i.i.i.i = phi i64 [ 8, %bb.ha ], [ %i.aon, %bb.hb ], [ %i.aot, %bb.hc ]
  %i.aoz = load i64, ptr %i.alz, align 8, !tbaa !10
  %i.apa = add i64 %i.aoz, %.011.i.i.i.i.i
  store i64 %i.apa, ptr %i.alz, align 8, !tbaa !10
  %i.apb = getelementptr inbounds i8, ptr %.1.i301388.i, i64 -4
  store i32 1, ptr %i.apb, align 4, !tbaa !8
  %i.apc = and i64 %i.alt, 2147483647
  store i64 %i.apc, ptr %.1.i301388.i, align 8
  %i.apd = getelementptr inbounds nuw i8, ptr %.1.i301388.i, i64 8
  store i32 0, ptr %i.apd, align 8, !tbaa !80
  %i.ape = getelementptr inbounds nuw i8, ptr %.1.i301388.i, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ape, ptr nonnull readonly align 16 %i.j, i64 %i.alv, i1 false)
  %i.apf = getelementptr inbounds i8, ptr %i.ape, i64 %i.alv
  store i8 0, ptr %i.apf, align 1, !tbaa !35
  br label %JS_AtomToString.exit155.i

bb.hf:                                            ; preds = %JS_AtomToString.exit163.i
  %i.apg = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apg, i64 1104
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !154 ; 2 uses
  %i.apj = zext nneg i32 %i.alq to i64
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.api, i64 %i.apj
  %i.apl = load ptr, ptr %i.apk, align 8, !tbaa !155 ; 2 uses
  %i.apm = load i64, ptr %i.apl, align 8          ; 2 uses
  %.mask.i.i149.i = and i64 %i.apm, -4611686018427387904
  %i.apn = icmp ne i64 %.mask.i.i149.i, 4611686018427387904
  %i.apo = and i64 %i.apm, 4294967295
  %or.cond.i.not.i150.i = icmp eq i64 %i.apo, 2147483648
  %or.cond.i151.i = and i1 %i.apn, %or.cond.i.not.i150.i
  br i1 %or.cond.i151.i, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.app = getelementptr inbounds nuw i8, ptr %i.api, i64 384
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !155
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.0.i.i152.i = phi ptr [ %i.apl, %bb.hf ], [ %i.apq, %bb.hg ] ; 2 uses
  %i.apr = getelementptr inbounds i8, ptr %.0.i.i152.i, i64 -4 ; 2 uses
  %i.aps = load i32, ptr %i.apr, align 4, !tbaa !8
  %i.apt = add nsw i32 %i.aps, 1
  store i32 %i.apt, ptr %i.apr, align 4, !tbaa !8
  br label %JS_AtomToString.exit155.i

JS_AtomToString.exit155.thread.i:                 ; preds = %bb.he, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #49
  br label %exported_names_cmp.exit.i

JS_AtomToString.exit155.i:                        ; preds = %bb.hh, %str8.exit10.i.i
  %.sroa.0.0.i.pn.in.i = phi ptr [ %.0.i.i152.i, %bb.hh ], [ %.1.i301388.i, %str8.exit10.i.i ] ; 4 uses
  %.sroa.0.0.i.pn.i = ptrtoint ptr %.sroa.0.0.i.pn.in.i to i64 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #49
  %i.apu = and i64 %.sroa.4.0.i249.pn.i, 4294967295
  %i.apv = icmp eq i64 %i.apu, 6
  br i1 %i.apv, label %exported_names_cmp.exit.i, label %bb.hi

bb.hi:                                            ; preds = %JS_AtomToString.exit155.i
  %i.apw = inttoptr i64 %.sroa.0.0.i248.pn.i to ptr ; 3 uses
  %i.apx = load i64, ptr %i.apw, align 8
  %i.apy = trunc i64 %i.apx to i32
  %i.apz = and i32 %i.apy, 2147483647
  %i.aqa = load i64, ptr %.sroa.0.0.i.pn.in.i, align 8
  %i.aqb = trunc i64 %i.aqa to i32
  %i.aqc = and i32 %i.aqb, 2147483647
  %i.aqd = call i32 @llvm.umin.i32(i32 %i.apz, i32 %i.aqc)
  %i.aqe = call fastcc i32 @js_string_memcmp(ptr noundef nonnull readonly %i.apw, ptr noundef nonnull readonly %.sroa.0.0.i.pn.in.i, i32 noundef %i.aqd), !inline_history !858 ; 2 uses
  %i.aqf = icmp eq i32 %i.aqe, 0
  br i1 %i.aqf, label %bb.hj, label %exported_names_cmp.exit.i

bb.hj:                                            ; preds = %bb.hi
  %i.aqg = load i64, ptr %i.apw, align 8
  %i.aqh = trunc i64 %i.aqg to i32
  %i.aqi = and i32 %i.aqh, 2147483647
  %i.aqj = load i64, ptr %.sroa.0.0.i.pn.in.i, align 8
  %i.aqk = trunc i64 %i.aqj to i32
  %i.aql = and i32 %i.aqk, 2147483647
  %i.aqm = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %i.aqi, i32 %i.aql)
  br label %exported_names_cmp.exit.i

exported_names_cmp.exit.i:                        ; preds = %bb.hj, %bb.hi, %JS_AtomToString.exit155.i, %JS_AtomToString.exit155.thread.i
  %.sroa.4.0.i.pn601.i = phi i64 [ -7, %JS_AtomToString.exit155.i ], [ -7, %bb.hi ], [ -7, %bb.hj ], [ 6, %JS_AtomToString.exit155.thread.i ]
  %i.aqn = phi i1 [ true, %JS_AtomToString.exit155.i ], [ true, %bb.hi ], [ true, %bb.hj ], [ false, %JS_AtomToString.exit155.thread.i ]
  %.sroa.0.0.i.pn600.i = phi i64 [ %.sroa.0.0.i.pn.i, %JS_AtomToString.exit155.i ], [ %.sroa.0.0.i.pn.i, %bb.hi ], [ %.sroa.0.0.i.pn.i, %bb.hj ], [ 0, %JS_AtomToString.exit155.thread.i ] ; 2 uses
  %.0.i137.i = phi i32 [ 0, %JS_AtomToString.exit155.i ], [ %i.aqe, %bb.hi ], [ %i.aqm, %bb.hj ], [ 0, %JS_AtomToString.exit155.thread.i ]
  %i.aqo = load ptr, ptr %i.af, align 8, !tbaa !50 ; 3 uses
  br i1 %i.alp, label %bb.hk, label %JS_FreeValue.exit147.i

bb.hk:                                            ; preds = %exported_names_cmp.exit.i
  %i.aqp = inttoptr i64 %.sroa.0.0.i248.pn.i to ptr
  %i.aqq = getelementptr inbounds i8, ptr %i.aqp, i64 -4 ; 2 uses
  %i.aqr = load i32, ptr %i.aqq, align 4, !tbaa !8 ; 2 uses
  %i.aqs = add nsw i32 %i.aqr, -1
  store i32 %i.aqs, ptr %i.aqq, align 4, !tbaa !8
  %i.aqt = icmp slt i32 %i.aqr, 2
  br i1 %i.aqt, label %bb.hl, label %JS_FreeValue.exit147.i

bb.hl:                                            ; preds = %bb.hk
  call fastcc void @js_free_value_rt(ptr noundef %i.aqo, i64 %.sroa.0.0.i248.pn.i, i64 %.sroa.4.0.i249.pn.i), !inline_history !890
  %.pre482.i = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %JS_FreeValue.exit147.i

JS_FreeValue.exit147.i:                           ; preds = %bb.hl, %bb.hk, %exported_names_cmp.exit.i
  %i.aqu = phi ptr [ %i.aqo, %exported_names_cmp.exit.i ], [ %i.aqo, %bb.hk ], [ %.pre482.i, %bb.hl ]
  br i1 %i.aqn, label %bb.hm, label %JS_FreeValue.exit146.i

bb.hm:                                            ; preds = %JS_FreeValue.exit147.i
  %i.aqv = inttoptr i64 %.sroa.0.0.i.pn600.i to ptr
  %i.aqw = getelementptr inbounds i8, ptr %i.aqv, i64 -4 ; 2 uses
  %i.aqx = load i32, ptr %i.aqw, align 4, !tbaa !8 ; 2 uses
  %i.aqy = add nsw i32 %i.aqx, -1
  store i32 %i.aqy, ptr %i.aqw, align 4, !tbaa !8
  %i.aqz = icmp slt i32 %i.aqx, 2
  br i1 %i.aqz, label %bb.hn, label %JS_FreeValue.exit146.i

bb.hn:                                            ; preds = %bb.hm
  call fastcc void @js_free_value_rt(ptr noundef %i.aqu, i64 %.sroa.0.0.i.pn600.i, i64 %.sroa.4.0.i.pn601.i), !inline_history !890
  br label %JS_FreeValue.exit146.i

JS_FreeValue.exit146.i:                           ; preds = %bb.hn, %bb.hm, %JS_FreeValue.exit147.i
  %i.ara = icmp sgt i32 %.0.i137.i, 0
  br i1 %i.ara, label %bb.ho, label %.critedge5.i.loopexit.i

bb.ho:                                            ; preds = %JS_FreeValue.exit146.i
  call void %.0.i312.i.i(ptr noundef nonnull %.2182261.i.i, ptr noundef nonnull %i.ahi, i64 noundef 16) #49, !inline_history !886
  %i.arb = icmp ugt ptr %i.ahi, %.0186222.i.i
  br i1 %i.arb, label %.lr.ph262.i.i, label %.critedge5.i.loopexit.i, !llvm.loop !547

.critedge5.i.loopexit.i:                          ; preds = %bb.ho, %JS_FreeValue.exit146.i
  %.2185.i.i = getelementptr inbounds nuw i8, ptr %.2185265.i.i, i64 16 ; 2 uses
  %i.arc = icmp ult ptr %.2185.i.i, %i.ahg
  br i1 %i.arc, label %.preheader.i.i, label %.loopexit.i.i, !llvm.loop !548

rqsort.exit.loopexit.i:                           ; preds = %.loopexit.i.i
  %.pre483.i = load i32, ptr %i.ah, align 4, !tbaa !863
  %.pre484.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !862
  br label %rqsort.exit.i

rqsort.exit.i:                                    ; preds = %rqsort.exit.loopexit.i, %exchange_func.exit215.i.i
  %.pre484.i = phi ptr [ %.pre484.pre.i, %rqsort.exit.loopexit.i ], [ %i.al, %exchange_func.exit215.i.i ] ; 5 uses
  %i.ard = phi i32 [ %.pre483.i, %rqsort.exit.loopexit.i ], [ %i.ai, %exchange_func.exit215.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %i.are = icmp sgt i32 %i.ard, 0
  br i1 %i.are, label %.lr.ph442.i, label %._crit_edge443.i

.lr.ph442.i:                                      ; preds = %rqsort.exit.i
  %.not.i.i = icmp eq i64 %i.aa, 4294967295
  %i.arf = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.arg = getelementptr inbounds i8, ptr %0, i64 -4 ; 2 uses
  %i.arh = ptrtoint ptr %0 to i64
  %i.ari = or i64 %i.arh, 1
  %wide.trip.count475.i = zext nneg i32 %i.ard to i64
  br label %bb.hp

bb.hp:                                            ; preds = %JS_DefineAutoInitProperty.exit.thread.i, %.lr.ph442.i
  %indvars.iv472.i = phi i64 [ 0, %.lr.ph442.i ], [ %indvars.iv.next473.i, %JS_DefineAutoInitProperty.exit.thread.i ] ; 2 uses
  %i.arj = getelementptr inbounds nuw [16 x i8], ptr %.pre484.i, i64 %indvars.iv472.i ; 5 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 4
  %i.arl = load i32, ptr %i.ark, align 4, !tbaa !879
  switch i32 %i.arl, label %JS_DefineAutoInitProperty.exit.thread.i [
    i32 1, label %bb.hq
    i32 2, label %bb.hu
  ]

bb.hq:                                            ; preds = %bb.hp
  %i.arm = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !35 ; 3 uses
  %.not101.i = icmp eq ptr %i.arn, null
  %i.aro = load i32, ptr %i.arj, align 8, !tbaa !866 ; 2 uses
  br i1 %.not101.i, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #49
  %.val19.i130.i = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.arp = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val19.i130.i, ptr noundef nonnull %i.k, i32 noundef %i.aro) ; 0 uses
  %i.arq = load i32, ptr %1, align 8, !tbaa !678
  %.val.i131.i = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.arr = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i131.i, ptr noundef nonnull %i.l, i32 noundef %i.arq) ; 0 uses
  %i.ars = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.206, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l), !inline_history !878 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #49
  br label %JS_DefineAutoInitProperty.exit.i

bb.hs:                                            ; preds = %bb.hq
  %i.art = call fastcc ptr @add_property(ptr noundef %0, ptr noundef %i.ac, i32 noundef %i.aro, i32 noundef 38), !inline_history !858 ; 2 uses
  %.not102.i = icmp eq ptr %i.art, null
  br i1 %.not102.i, label %JS_DefineAutoInitProperty.exit.i, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.aru = getelementptr inbounds i8, ptr %i.arn, i64 -4 ; 2 uses
  %i.arv = load i32, ptr %i.aru, align 4, !tbaa !8
  %i.arw = add nsw i32 %i.arv, 1
  store i32 %i.arw, ptr %i.aru, align 4, !tbaa !8
  store ptr %i.arn, ptr %i.art, align 8, !tbaa !35
  br label %JS_DefineAutoInitProperty.exit.thread.i

bb.hu:                                            ; preds = %bb.hp
  %i.arx = load i32, ptr %i.arj, align 8, !tbaa !866 ; 3 uses
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  %i.arz = load ptr, ptr %i.ary, align 8, !tbaa !35
  br i1 %.not.i.i, label %bb.hv, label %JS_DefineAutoInitProperty.exit.thread.i

bb.hv:                                            ; preds = %bb.hu
  %i.asa = load ptr, ptr %i.arf, align 8, !tbaa !186 ; 2 uses
  %i.asb = getelementptr inbounds nuw i8, ptr %i.asa, i64 24
  %i.asc = load i32, ptr %i.asb, align 8, !tbaa !8 ; 2 uses
  %i.asd = and i32 %i.asc, %i.arx
  %i.ase = zext i32 %i.asd to i64
  %i.asf = zext i32 %i.asc to i64
  %i.asg = getelementptr inbounds nuw [4 x i8], ptr %i.asa, i64 %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.asg, i64 60 ; 2 uses
  %i.asi = xor i64 %i.ase, -1
end_hunk_8
begin_hunk_9_@JS_ReadObjectRec:bb.a
  br i1 %.not.i.i.i281, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284, label %BC_add_object_ref.exit.i282

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284: ; preds = %js_resize_array.exit.i.i.i280
  %.pre.i.i.i285 = load i32, ptr %i.aad, align 8, !tbaa !988
  br label %js_resize_array.exit.thread.i.i.i286

js_resize_array.exit.thread.i.i.i286:             ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284, %bb.ez
  %i.aaj = phi i32 [ %.pre.i.i.i285, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i.i.i284 ], [ %i.aae, %bb.ez ] ; 2 uses
  %i.aak = load ptr, ptr %i.aab, align 8, !tbaa !982
  %i.aal = add nsw i32 %i.aaj, 1
  store i32 %i.aal, ptr %i.aad, align 8, !tbaa !988
  %i.aam = sext i32 %i.aaj to i64
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aak, i64 %i.aam
  store ptr %i.zx, ptr %i.aan, align 8, !tbaa !212
  br label %bb.fa

bb.fa:                                            ; preds = %js_resize_array.exit.thread.i.i.i286, %bb.ey
  %i.aao = load ptr, ptr %i.f, align 8, !tbaa !50
  %i.aap = trunc i64 %i.zp to i32
  %i.aaq = icmp ugt i32 %i.aap, -10
  br i1 %i.aaq, label %bb.fb, label %.thread168

bb.fb:                                            ; preds = %bb.fa
  %i.aar = inttoptr i64 %i.zo to ptr
  %i.aas = getelementptr inbounds i8, ptr %i.aar, i64 -4 ; 2 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !8 ; 2 uses
  %i.aau = add nsw i32 %i.aat, -1
  store i32 %i.aau, ptr %i.aas, align 4, !tbaa !8
  %i.aav = icmp slt i32 %i.aat, 2
  br i1 %i.aav, label %bb.fc, label %.thread168

bb.fc:                                            ; preds = %bb.fb
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aao, i64 %i.zo, i64 %i.zp), !inline_history !1022
  br label %.thread168

BC_add_object_ref.exit.i282:                      ; preds = %js_resize_array.exit.i.i.i280, %bb.ex, %bb.ew
  %.sroa.8.0.i = phi i64 [ 3, %bb.ew ], [ %i.zu, %bb.ex ], [ %i.zu, %js_resize_array.exit.i.i.i280 ] ; 2 uses
  %.sroa.03.0.i = phi i64 [ 0, %bb.ew ], [ %i.zt, %bb.ex ], [ %i.zt, %js_resize_array.exit.i.i.i280 ] ; 2 uses
  %i.aaw = load ptr, ptr %i.f, align 8, !tbaa !50 ; 3 uses
  %i.aax = trunc i64 %i.zp to i32
  %i.aay = icmp ugt i32 %i.aax, -10
  br i1 %i.aay, label %bb.fd, label %JS_FreeValue.exit25.i

bb.fd:                                            ; preds = %BC_add_object_ref.exit.i282
  %i.aaz = inttoptr i64 %i.zo to ptr
  %i.aba = getelementptr inbounds i8, ptr %i.aaz, i64 -4 ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !8 ; 2 uses
  %i.abc = add nsw i32 %i.abb, -1
  store i32 %i.abc, ptr %i.aba, align 4, !tbaa !8
  %i.abd = icmp slt i32 %i.abb, 2
  br i1 %i.abd, label %bb.fe, label %JS_FreeValue.exit25.i

bb.fe:                                            ; preds = %bb.fd
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aaw, i64 %i.zo, i64 %i.zp), !inline_history !1022
  %.pre.i283 = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %JS_FreeValue.exit25.i

JS_FreeValue.exit25.i:                            ; preds = %bb.fe, %bb.fd, %BC_add_object_ref.exit.i282
  %i.abe = phi ptr [ %i.aaw, %BC_add_object_ref.exit.i282 ], [ %i.aaw, %bb.fd ], [ %.pre.i283, %bb.fe ]
  %i.abf = trunc i64 %.sroa.8.0.i to i32
  %i.abg = icmp ugt i32 %i.abf, -10
  br i1 %i.abg, label %bb.ff, label %.thread168

bb.ff:                                            ; preds = %JS_FreeValue.exit25.i
  %i.abh = inttoptr i64 %.sroa.03.0.i to ptr
  %i.abi = getelementptr inbounds i8, ptr %i.abh, i64 -4 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 4, !tbaa !8 ; 2 uses
  %i.abk = add nsw i32 %i.abj, -1
  store i32 %i.abk, ptr %i.abi, align 4, !tbaa !8
  %i.abl = icmp slt i32 %i.abj, 2
  br i1 %i.abl, label %bb.fg, label %.thread168

bb.fg:                                            ; preds = %bb.ff
  tail call fastcc void @js_free_value_rt(ptr noundef %i.abe, i64 %.sroa.03.0.i, i64 %.sroa.8.0.i), !inline_history !1022
  br label %.thread168

bb.fh:                                            ; preds = %bb.f
  %.not20.i.i.i287 = icmp ult ptr %i.x, %i.n
  br i1 %.not20.i.i.i287, label %.lr.ph.i.i.i294, label %get_leb128.exit.thread.i.i288, !prof !984

bb.fi:                                            ; preds = %.lr.ph.i.i.i294
  %.not.i.i.i299 = icmp ult ptr %i.acj, %i.n
  br i1 %.not.i.i.i299, label %.lr.ph.i.i.i294.1, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.1:                                ; preds = %bb.fi
  %i.abm = getelementptr inbounds nuw i8, ptr %i.p, i64 3 ; 3 uses
  %i.abn = load i8, ptr %i.acj, align 1, !tbaa !35
  %.fr575 = freeze i8 %i.abn                      ; 2 uses
  %i.abo = and i8 %.fr575, 127
  %i.abp = zext nneg i8 %i.abo to i32
  %i.abq = shl nuw nsw i32 %i.abp, 7
  %i.abr = or disjoint i32 %i.abq, %i.acm         ; 2 uses
  %.not18.i.i.i298.1 = icmp sgt i8 %.fr575, -1
  br i1 %.not18.i.i.i298.1, label %get_leb128.exit.i.i301, label %bb.fj

bb.fj:                                            ; preds = %.lr.ph.i.i.i294.1
  %.not.i.i.i299.1 = icmp ult ptr %i.abm, %i.n
  br i1 %.not.i.i.i299.1, label %.lr.ph.i.i.i294.2, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.2:                                ; preds = %bb.fj
  %i.abs = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 3 uses
  %i.abt = load i8, ptr %i.abm, align 1, !tbaa !35
  %.fr578 = freeze i8 %i.abt                      ; 2 uses
  %i.abu = and i8 %.fr578, 127
  %i.abv = zext nneg i8 %i.abu to i32
  %i.abw = shl nuw nsw i32 %i.abv, 14
  %i.abx = or disjoint i32 %i.abw, %i.abr         ; 2 uses
  %.not18.i.i.i298.2 = icmp sgt i8 %.fr578, -1
  br i1 %.not18.i.i.i298.2, label %get_leb128.exit.i.i301, label %bb.fk

bb.fk:                                            ; preds = %.lr.ph.i.i.i294.2
  %.not.i.i.i299.2 = icmp ult ptr %i.abs, %i.n
  br i1 %.not.i.i.i299.2, label %.lr.ph.i.i.i294.3, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.3:                                ; preds = %bb.fk
  %i.aby = getelementptr inbounds nuw i8, ptr %i.p, i64 5 ; 3 uses
  %i.abz = load i8, ptr %i.abs, align 1, !tbaa !35
  %.fr581.a = freeze i8 %i.abz                    ; 2 uses
  %i.aca = and i8 %.fr581.a, 127
  %i.acb = zext nneg i8 %i.aca to i32
  %i.acc = shl nuw nsw i32 %i.acb, 21
  %i.acd = or disjoint i32 %i.acc, %i.abx         ; 2 uses
  %.not18.i.i.i298.3 = icmp sgt i8 %.fr581.a, -1
  br i1 %.not18.i.i.i298.3, label %get_leb128.exit.i.i301, label %bb.fl

bb.fl:                                            ; preds = %.lr.ph.i.i.i294.3
  %.not.i.i.i299.3 = icmp ult ptr %i.aby, %i.n
  br i1 %.not.i.i.i299.3, label %.lr.ph.i.i.i294.4, label %get_leb128.exit.thread.i.i288, !prof !968

.lr.ph.i.i.i294.4:                                ; preds = %bb.fl
  %i.ace = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.acf = load i8, ptr %i.aby, align 1, !tbaa !35
  %.fr583 = freeze i8 %i.acf                      ; 2 uses
  %i.acg = zext i8 %.fr583 to i32
  %i.ach = shl i32 %i.acg, 28
  %i.aci = or disjoint i32 %i.ach, %i.acd
  %.not18.i.i.i298.4 = icmp sgt i8 %.fr583, -1
  br i1 %.not18.i.i.i298.4, label %get_leb128.exit.i.i301, label %get_leb128.exit.thread.i.i288

.lr.ph.i.i.i294:                                  ; preds = %bb.fh
  %i.acj = getelementptr inbounds nuw i8, ptr %i.p, i64 2 ; 3 uses
  %i.ack = load i8, ptr %i.x, align 1, !tbaa !35
  %.fr = freeze i8 %i.ack                         ; 2 uses
  %i.acl = and i8 %.fr, 127
  %i.acm = zext nneg i8 %i.acl to i32             ; 2 uses
  %.not18.i.i.i298 = icmp sgt i8 %.fr, -1
  br i1 %.not18.i.i.i298, label %get_leb128.exit.i.i301, label %bb.fi

get_leb128.exit.i.i301:                           ; preds = %.lr.ph.i.i.i294.4, %.lr.ph.i.i.i294.3, %.lr.ph.i.i.i294.2, %.lr.ph.i.i.i294.1, %.lr.ph.i.i.i294
  %.lcssa570 = phi ptr [ %i.acj, %.lr.ph.i.i.i294 ], [ %i.abm, %.lr.ph.i.i.i294.1 ], [ %i.abs, %.lr.ph.i.i.i294.2 ], [ %i.aby, %.lr.ph.i.i.i294.3 ], [ %i.ace, %.lr.ph.i.i.i294.4 ]
  %.lcssa568 = phi i32 [ %i.acm, %.lr.ph.i.i.i294 ], [ %i.abr, %.lr.ph.i.i.i294.1 ], [ %i.abx, %.lr.ph.i.i.i294.2 ], [ %i.acd, %.lr.ph.i.i.i294.3 ], [ %i.aci, %.lr.ph.i.i.i294.4 ] ; 4 uses
  %i.acn = ptrtoint ptr %.lcssa570 to i64
  %i.aco = ptrtoint ptr %i.x to i64
  %i.acp = sub i64 %i.acn, %i.aco                 ; 2 uses
  %i.acq = and i64 %i.acp, 2147483648
  %.not.i.i302 = icmp eq i64 %i.acq, 0
  br i1 %.not.i.i302, label %bb.fn, label %get_leb128.exit.thread.i.i288, !prof !970

get_leb128.exit.thread.i.i288:                    ; preds = %bb.fi, %bb.fj, %bb.fk, %bb.fl, %.lr.ph.i.i.i294.4, %get_leb128.exit.i.i301, %bb.fh
  %i.acr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.acs = load i32, ptr %i.acr, align 8, !tbaa !974
  %.not.i8.i.i289 = icmp eq i32 %i.acs, 0
  br i1 %.not.i8.i.i289, label %bb.fm, label %bc_get_leb128.exit.i290

bb.fm:                                            ; preds = %get_leb128.exit.thread.i.i288
  %i.act = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.e, ptr noundef nonnull @.str.226), !inline_history !1023 ; 0 uses
  br label %bc_get_leb128.exit.i290

bc_get_leb128.exit.i290:                          ; preds = %bb.fm, %get_leb128.exit.thread.i.i288
  store i32 -1, ptr %i.acr, align 8, !tbaa !974
  br label %.thread168

bb.fn:                                            ; preds = %get_leb128.exit.i.i301
  %i.acu = and i64 %i.acp, 2147483647
  %i.acv = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.acu
  store ptr %i.acv, ptr %i.o, align 8, !tbaa !972
  %i.acw = icmp eq i32 %.lcssa568, 0
  br i1 %i.acw, label %.thread168, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.acx = add i32 %.lcssa568, -1
  %i.acy = lshr i32 %i.acx, 2
  %i.acz = add nuw nsw i32 %i.acy, 1
  %i.ada = tail call fastcc ptr @js_bigint_new(ptr noundef %i.e, i32 noundef %i.acz), !inline_history !1024 ; 9 uses
  %.not33.i = icmp eq ptr %i.ada, null
  br i1 %.not33.i, label %.thread168, label %.preheader67.i

.preheader67.i:                                   ; preds = %bb.fo
  %i.adb = lshr i32 %.lcssa568, 2                 ; 2 uses
  %.not.i303 = icmp eq i32 %i.adb, 0
  br i1 %.not.i303, label %._crit_edge.i307, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.preheader67.i
  %i.adc = load ptr, ptr %i.m, align 8, !tbaa !958
  %i.add = ptrtoint ptr %i.adc to i64             ; 7 uses
  %i.ade = getelementptr i8, ptr %i.ada, i64 4    ; 6 uses
  %.promoted.i = load ptr, ptr %i.o, align 8, !tbaa !972 ; 9 uses
  %.promoted.i515 = ptrtoaddr ptr %.promoted.i to i64 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.adb to i64 ; 4 uses
  %i.adf = add nsw i64 %wide.trip.count.i, -1
  %5 = add i64 %i.add, 3
  %6 = sub i64 %i.add, %.promoted.i515
  %smin526 = tail call i64 @llvm.smin.i64(i64 %6, i64 3)
  %i.adg = add i64 %smin526, %.promoted.i515
  %i.adh = sub i64 %5, %i.adg
  %i.adi = lshr i64 %i.adh, 2
  %umin527 = tail call i64 @llvm.umin.i64(i64 %i.adf, i64 %i.adi) ; 2 uses
  %i.adj = add nuw nsw i64 %umin527, 1            ; 2 uses
  %min.iters.check = icmp samesign ult i64 %umin527, 30
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i304
  %scevgep = getelementptr i8, ptr %i.ada, i64 8
  %i.adk = add nsw i64 %wide.trip.count.i, -1
  %i.adl = add i64 %i.add, 3
  %i.adm = sub i64 %i.add, %.promoted.i515
  %smin = tail call i64 @llvm.smin.i64(i64 %i.adm, i64 3)
  %i.adn = add i64 %smin, %.promoted.i515
  %i.ado = sub i64 %i.adl, %i.adn
  %i.adp = lshr i64 %i.ado, 2
  %umin = tail call i64 @llvm.umin.i64(i64 %i.adk, i64 %i.adp)
  %i.adq = shl nuw i64 %umin, 2                   ; 2 uses
  %scevgep516 = getelementptr i8, ptr %scevgep, i64 %i.adq ; 2 uses
  %scevgep517 = getelementptr i8, ptr %.promoted.i, i64 4
  %scevgep518 = getelementptr i8, ptr %scevgep517, i64 %i.adq ; 2 uses
  %bound0 = icmp ult ptr %i.o, %scevgep516
  %bound1 = icmp ult ptr %i.ade, %i.m
  %found.conflict = and i1 %bound0, %bound1
  %bound0519 = icmp ult ptr %i.o, %scevgep518
  %bound1520 = icmp ult ptr %.promoted.i, %i.m
  %found.conflict521 = and i1 %bound0519, %bound1520
  %conflict.rdx = or i1 %found.conflict, %found.conflict521
  %bound0522 = icmp ult ptr %i.ade, %scevgep518
  %bound1523 = icmp ult ptr %.promoted.i, %scevgep516
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx525 = or i1 %conflict.rdx, %found.conflict524
  br i1 %conflict.rdx525, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.adr = and i64 %i.adj, 3                      ; 2 uses
  %i.ads = icmp eq i64 %i.adr, 0
  %i.adt = select i1 %i.ads, i64 4, i64 %i.adr
  %n.vec = sub nsw i64 %i.adj, %i.adt             ; 3 uses
  %i.adu = shl i64 %n.vec, 2
  %i.adv = getelementptr i8, ptr %.promoted.i, i64 %i.adu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.adw = shl i64 %index, 2                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.promoted.i, i64 %i.adw ; 2 uses
  %i.adx = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !alias.scope !1025
  %wide.load529 = load <2 x i32>, ptr %i.adx, align 1, !alias.scope !1025
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %index ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  store <2 x i32> %wide.load, ptr %i.ady, align 4, !tbaa !8, !alias.scope !1028, !noalias !1025
  store <2 x i32> %wide.load529, ptr %i.adz, align 4, !tbaa !8, !alias.scope !1028, !noalias !1025
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aea = icmp eq i64 %index.next, %n.vec
  br i1 %i.aea, label %middle.block, label %vector.body, !llvm.loop !1030

middle.block:                                     ; preds = %vector.body
  %i.aeb = getelementptr i8, ptr %.promoted.i, i64 %i.adw
  %i.aec = getelementptr i8, ptr %i.aeb, i64 16
  store ptr %i.aec, ptr %i.o, align 8, !tbaa !972, !alias.scope !1031, !noalias !1033
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i304, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i304 ], [ %n.vec, %middle.block ] ; 4 uses
  %.ph = phi ptr [ %.promoted.i, %vector.memcheck ], [ %.promoted.i, %.lr.ph.i304 ], [ %i.adv, %middle.block ] ; 4 uses
  %i.aed = sub i64 %wide.trip.count.i, %indvars.iv.i.ph
  %i.aee = freeze i64 %i.aed                      ; 2 uses
  %xtraiter = and i64 %i.aee, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aef = ptrtoint ptr %.ph to i64
  %i.aeg = sub i64 %i.add, %i.aef
  %i.aeh = icmp slt i64 %i.aeg, 4
  br i1 %i.aeh, label %.loopexit, label %scalar.ph.prol.loopexit.unr-lcssa, !prof !9

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %scalar.ph.prol
  %.val.i.i305.prol = load i32, ptr %.ph, align 1
  %i.aei = getelementptr inbounds nuw i8, ptr %.ph, i64 4 ; 2 uses
  store ptr %i.aei, ptr %i.o, align 8, !tbaa !972
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i.ph
  store i32 %.val.i.i305.prol, ptr %i.aej, align 4, !tbaa !8
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.aei, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.aek = icmp eq i64 %i.aee, 1
  br i1 %i.aek, label %._crit_edge.i307, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.fq
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %bb.fq ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ael = phi ptr [ %i.aey, %bb.fq ], [ %.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aem = ptrtoint ptr %i.ael to i64
  %i.aen = sub i64 %i.add, %i.aem
  %i.aeo = icmp slt i64 %i.aen, 4
  br i1 %i.aeo, label %.loopexit, label %scalar.ph.1, !prof !9

.loopexit:                                        ; preds = %scalar.ph, %scalar.ph.1, %scalar.ph.prol
  %i.aep = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !974
  %.not.i.i38.i = icmp eq i32 %i.aeq, 0
  br i1 %.not.i.i38.i, label %bb.fp, label %bc_get_u32.exit.i

bb.fp:                                            ; preds = %.loopexit
  %i.aer = load ptr, ptr %0, align 8, !tbaa !954
  %i.aes = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.aer, ptr noundef nonnull @.str.226), !inline_history !1034 ; 0 uses
  br label %bc_get_u32.exit.i

bc_get_u32.exit.i:                                ; preds = %bb.fp, %.loopexit
  store i32 -1, ptr %i.aep, align 8, !tbaa !974
  br label %.thread168

scalar.ph.1:                                      ; preds = %scalar.ph
  %.val.i.i305 = load i32, ptr %i.ael, align 1
  %i.aet = getelementptr inbounds nuw i8, ptr %i.ael, i64 4 ; 3 uses
  store ptr %i.aet, ptr %i.o, align 8, !tbaa !972
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i
  store i32 %.val.i.i305, ptr %i.aeu, align 4, !tbaa !8
  %i.aev = ptrtoint ptr %i.aet to i64
  %i.aew = sub i64 %i.add, %i.aev
  %i.aex = icmp slt i64 %i.aew, 4
  br i1 %i.aex, label %.loopexit, label %bb.fq, !prof !9

bb.fq:                                            ; preds = %scalar.ph.1
  %.val.i.i305.1 = load i32, ptr %i.aet, align 1
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ael, i64 8 ; 2 uses
  store ptr %i.aey, ptr %i.o, align 8, !tbaa !972
  %i.aez = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv.i
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 4
  store i32 %.val.i.i305.1, ptr %i.afa, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i306.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i306.1, label %._crit_edge.i307, label %scalar.ph, !llvm.loop !1035

._crit_edge.i307:                                 ; preds = %scalar.ph.prol.loopexit, %bb.fq, %.preheader67.i
  %i.afb = and i32 %.lcssa568, 3                  ; 4 uses
  %.not34.i = icmp eq i32 %i.afb, 0
  br i1 %.not34.i, label %thread-pre-split.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i307
  %i.afc = load ptr, ptr %i.m, align 8, !tbaa !958
  %i.afd = ptrtoint ptr %i.afc to i64             ; 3 uses
  %.promoted73.i = load ptr, ptr %i.o, align 8, !tbaa !972 ; 5 uses
  %i.afe = ptrtoint ptr %.promoted73.i to i64
  %i.aff = sub i64 %i.afd, %i.afe
  %i.afg = icmp slt i64 %i.aff, 1
  br i1 %i.afg, label %bb.fr, label %bb.ft, !prof !9

bb.fr:                                            ; preds = %bb.fw, %bb.fu, %.preheader.i
  %i.afh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.afi = load i32, ptr %i.afh, align 8, !tbaa !974
  %.not.i.i41.i = icmp eq i32 %i.afi, 0
  br i1 %.not.i.i41.i, label %bb.fs, label %bb.fy

bb.fs:                                            ; preds = %bb.fr
  %i.afj = load ptr, ptr %0, align 8, !tbaa !954
  %i.afk = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %i.afj, ptr noundef nonnull @.str.226), !inline_history !1036 ; 0 uses
  br label %bb.fy

bb.ft:                                            ; preds = %.preheader.i
  %i.afl = getelementptr inbounds nuw i8, ptr %.promoted73.i, i64 1 ; 3 uses
  store ptr %i.afl, ptr %i.o, align 8, !tbaa !972
  %i.afm = load i8, ptr %.promoted73.i, align 1, !tbaa !35
  %i.afn = zext i8 %i.afm to i32                  ; 2 uses
  %exitcond81.not.i = icmp eq i32 %i.afb, 1
  br i1 %exitcond81.not.i, label %.thread.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.afo = ptrtoint ptr %i.afl to i64
  %i.afp = sub i64 %i.afd, %i.afo
  %i.afq = icmp slt i64 %i.afp, 1
  br i1 %i.afq, label %bb.fr, label %bb.fv, !prof !9

bb.fv:                                            ; preds = %bb.fu
  %i.afr = getelementptr inbounds nuw i8, ptr %.promoted73.i, i64 2 ; 3 uses
  store ptr %i.afr, ptr %i.o, align 8, !tbaa !972
  %i.afs = load i8, ptr %i.afl, align 1, !tbaa !35
  %i.aft = zext i8 %i.afs to i32
  %i.afu = shl nuw nsw i32 %i.aft, 8
  %i.afv = or disjoint i32 %i.afu, %i.afn         ; 2 uses
  %exitcond81.not.i.1 = icmp eq i32 %i.afb, 2
  br i1 %exitcond81.not.i.1, label %.thread.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.afw = ptrtoint ptr %i.afr to i64
  %i.afx = sub i64 %i.afd, %i.afw
  %i.afy = icmp slt i64 %i.afx, 1
  br i1 %i.afy, label %bb.fr, label %bb.fx, !prof !9

bb.fx:                                            ; preds = %bb.fw
  %i.afz = getelementptr inbounds nuw i8, ptr %.promoted73.i, i64 3
  store ptr %i.afz, ptr %i.o, align 8, !tbaa !972
  %i.aga = load i8, ptr %i.afr, align 1, !tbaa !35
  %i.agb = zext i8 %i.aga to i32
  %i.agc = shl nuw nsw i32 %i.agb, 16
  %i.agd = or disjoint i32 %i.agc, %i.afv
end_hunk_9
begin_hunk_10_@JS_IsProxy:bb.a
  %i.c = inttoptr i64 %0 to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %i.f = icmp eq i16 %i.e, 51
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_GetProxyTarget(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %i.f = icmp eq i16 %i.e, 51
  br i1 %i.f, label %JS_GetOpaque.exit.i, label %bb.f

JS_GetOpaque.exit.i:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !497
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %JS_GetOpaque.exit.i
  %i.k = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.110), !inline_history !1121 ; 0 uses
  br label %js_get_proxy_field.exit

bb.d:                                             ; preds = %JS_GetOpaque.exit.i
  %i.l = load i64, ptr %i.h, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp ugt i32 %i.o, -10
  br i1 %i.p, label %bb.e, label %js_get_proxy_field.exit

bb.e:                                             ; preds = %bb.d
  %i.q = inttoptr i64 %i.l to ptr
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4, !tbaa !8
  br label %js_get_proxy_field.exit

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.u = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.339) ; 0 uses
  br label %js_get_proxy_field.exit

js_get_proxy_field.exit:                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.07.2.i = phi i64 [ 0, %bb.f ], [ 0, %bb.c ], [ %i.l, %bb.d ], [ %i.l, %bb.e ]
  %.sroa.4.2.i = phi i64 [ 6, %bb.f ], [ 6, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %bb.e ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.4.2.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_GetProxyHandler(ptr noundef %0, i64 %1, i64 %2) local_unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 4294967295
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %i.f = icmp eq i16 %i.e, 51
  br i1 %i.f, label %JS_GetOpaque.exit.i, label %bb.f

JS_GetOpaque.exit.i:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 33
  %i.j = load i8, ptr %i.i, align 1, !tbaa !497
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %JS_GetOpaque.exit.i
  %i.k = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.110), !inline_history !1121 ; 0 uses
  br label %js_get_proxy_field.exit

bb.d:                                             ; preds = %JS_GetOpaque.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load i64, ptr %i.n, align 8              ; 3 uses
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp ugt i32 %i.p, -10
  br i1 %i.q, label %bb.e, label %js_get_proxy_field.exit

bb.e:                                             ; preds = %bb.d
  %i.r = inttoptr i64 %i.m to ptr
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !8
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !8
  br label %js_get_proxy_field.exit

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.v = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.339) ; 0 uses
  br label %js_get_proxy_field.exit

js_get_proxy_field.exit:                          ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.07.2.i = phi i64 [ 0, %bb.f ], [ 0, %bb.c ], [ %i.m, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.4.2.i = phi i64 [ 6, %bb.f ], [ 6, %bb.c ], [ %i.o, %bb.d ], [ %i.o, %bb.e ]
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %.sroa.07.2.i, 0
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.4.2.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_map_constructor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %6 = alloca %struct.JSValue, align 8            ; 15 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %7 = alloca [2 x %struct.JSValue], align 16     ; 8 uses
  %i.b = and i32 %5, 1
  %.not = icmp eq i32 %i.b, 0                     ; 3 uses
  %i.c = trunc i32 %5 to i8
  %i.d = lshr i8 %i.c, 1
  %i.e = and i8 %i.d, 1
  %i.f = add nsw i32 %5, 36
  %i.g = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %i.f) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 10 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 10 uses
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %JS_FreeValue.exit221, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 22 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !10
  %i.q = add i64 %i.p, 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.s = load i64, ptr %i.r, align 8, !tbaa !14
  %i.t = add i64 %i.s, -1
  %i.u = icmp ugt i64 %i.q, %i.t
  br i1 %i.u, label %js_arena_malloc.exit.thread, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 648
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 656
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40   ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.v
  br i1 %i.y, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.m, i32 noundef 5) ; 2 uses
  %.not.i223 = icmp eq ptr %i.z, null
  br i1 %.not.i223, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.e

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.d
  %.pre370 = load ptr, ptr %i.l, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i222 = phi ptr [ %i.z, %bb.d ], [ %i.x, %bb.c ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i222, i64 38 ; 2 uses
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !38 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i222, i64 40
  %i.ad = zext i16 %i.ab to i64
  %i.ae = mul nuw nsw i64 %i.ad, 56
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ae ; 13 uses
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !35
  store i16 %i.ag, ptr %i.aa, align 2, !tbaa !38
  store i16 %i.ab, ptr %i.af, align 8, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i222, i64 34 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !38
  %i.aj = add i16 %i.ai, 1                        ; 2 uses
  store i16 %i.aj, ptr %i.ah, align 2, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i222, i64 36
  %i.al = load i16, ptr %i.ak, align 4, !tbaa !38
  %i.am = icmp eq i16 %i.aj, %i.al
  br i1 %i.am, label %bb.f, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.an = load ptr, ptr %.0.i222, align 8, !tbaa !41 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i222, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !40
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i222, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.f, %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.ar, i8 0, i64 48, i1 false)
  %i.as = load i64, ptr %i.n, align 8, !tbaa !34
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.n, align 8, !tbaa !34
  %i.au = load i16, ptr %i.af, align 8, !tbaa !35
  %i.av = icmp eq i16 %i.au, -1
  br i1 %i.av, label %bb.g, label %bb.i

bb.g:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.m, i64 1064
  %i.ax = icmp eq ptr %i.af, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !36
  %i.ba = tail call i64 %i.az(ptr noundef nonnull %i.af) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ba, 0
  %i.bb = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ba
  br label %bb.k

bb.i:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.bd = load i8, ptr %i.bc, align 2, !tbaa !35
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.be
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !38
  %i.bh = zext i16 %i.bg to i64
  br label %bb.k

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.b
  %i.bi = phi ptr [ %.pre370, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.m, %bb.b ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1256 ; 3 uses
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %JS_FreeValue.exit220, label %bb.j

bb.j:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.bj, align 8, !tbaa !57
  %i.bm = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.bj, align 8, !tbaa !57
  br label %JS_FreeValue.exit220

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.011.i.i.i.i = phi i64 [ 8, %bb.g ], [ %i.bb, %bb.h ], [ %i.bh, %bb.i ]
  %i.bn = load i64, ptr %i.o, align 8, !tbaa !10
  %i.bo = add i64 %i.bn, %.011.i.i.i.i
  store i64 %i.bo, ptr %i.o, align 8, !tbaa !10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %i.bp, ptr %i.bp, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !40
  store i8 %i.e, ptr %i.ar, align 8, !tbaa !1122
  %i.br = inttoptr i64 %i.h to ptr
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  store ptr %i.ar, ptr %i.bs, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i32 1, ptr %i.bt, align 8, !tbaa !1124
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !50  ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 48 ; 3 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = add i64 %i.bx, 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 56
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !14
  %i.cb = add i64 %i.ca, -1
  %i.cc = icmp ugt i64 %i.by, %i.cb
  br i1 %i.cc, label %bb.t, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 584
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 592
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !40 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.cd
  br i1 %i.cg, label %bb.m, label %bb.n, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.ch = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.bu, i32 noundef 1) ; 2 uses
  %.not.i226 = icmp eq ptr %i.ch, null
  br i1 %.not.i226, label %._crit_edge.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i224 = phi ptr [ %i.ch, %bb.m ], [ %i.cf, %bb.l ] ; 7 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i224, i64 38 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !38 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i224, i64 40
  %i.cl = zext i16 %i.cj to i64
  %i.cm = mul nuw nsw i64 %i.cl, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cm ; 8 uses
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !35
  store i16 %i.co, ptr %i.ci, align 2, !tbaa !38
  store i16 %i.cj, ptr %i.cn, align 8, !tbaa !35
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.i224, i64 34 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !38
  %i.cr = add i16 %i.cq, 1                        ; 2 uses
  store i16 %i.cr, ptr %i.cp, align 2, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i224, i64 36
  %i.ct = load i16, ptr %i.cs, align 4, !tbaa !38
  %i.cu = icmp eq i16 %i.cr, %i.ct
  br i1 %i.cu, label %bb.o, label %bb.p, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.cv = load ptr, ptr %.0.i224, align 8, !tbaa !41 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.0.i224, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !40 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !40
  store ptr %i.cv, ptr %i.cx, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i224, i8 0, i64 16, i1 false)
  br label %bb.p

._crit_edge.i:                                    ; preds = %bb.m
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !50
  br label %bb.t

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 4 uses
  %i.da = load i64, ptr %i.bv, align 8, !tbaa !34
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.bv, align 8, !tbaa !34
  %i.dc = load i16, ptr %i.cn, align 8, !tbaa !35
  %i.dd = icmp eq i16 %i.dc, -1
  br i1 %i.dd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.bu, i64 1064
  %i.df = icmp eq ptr %i.cn, %i.de
  br i1 %i.df, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !36
  %i.di = tail call i64 %i.dh(ptr noundef nonnull %i.cn) #49, !inline_history !64 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.di, 0
  %i.dj = select i1 %.not15.i.i.i, i64 8, i64 %i.di
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cn, i64 2
  %i.dl = load i8, ptr %i.dk, align 2, !tbaa !35
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !38
  %i.dp = zext i16 %i.do to i64
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge.i, %bb.k
  %i.dq = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bu, %bb.k ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1256 ; 3 uses
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !57, !range !58, !noundef !59
  %i.dt = trunc nuw i8 %i.ds to i1
  br i1 %i.dt, label %js_malloc.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i8 1, ptr %i.dr, align 8, !tbaa !57
  %i.du = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.dr, align 8, !tbaa !57
  br label %js_malloc.exit.thread

js_malloc.exit.thread:                            ; preds = %bb.t, %bb.u
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr null, ptr %i.dv, align 8, !tbaa !1125
  br label %JS_FreeValue.exit220

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.011.i.i.i = phi i64 [ 8, %bb.q ], [ %i.dj, %bb.r ], [ %i.dp, %bb.s ]
  %i.dw = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.dx = add i64 %i.dw, %.011.i.i.i
  store i64 %i.dx, ptr %i.bw, align 8, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %i.cz, ptr %i.dy, align 8, !tbaa !1125
  store ptr %i.cz, ptr %i.cz, align 8, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store ptr %i.cz, ptr %i.dz, align 8, !tbaa !40
  %i.ea = getelementptr inbounds nuw i8, ptr %i.af, i64 52
  store i32 4, ptr %i.ea, align 4, !tbaa !1126
  %i.eb = icmp sgt i32 %3, 0
  br i1 %i.eb, label %bb.w, label %JS_FreeValue.exit221

bb.w:                                             ; preds = %bb.v
  %.sroa.090.0.copyload = load i64, ptr %4, align 8, !tbaa !35
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !72 ; 2 uses
  %i.ec = and i64 %.sroa.8.0.copyload, 4294967294
  %switch = icmp eq i64 %i.ec, 2
  br i1 %switch, label %JS_FreeValue.exit221, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.ed = select i1 %.not, i32 70, i32 112
  %i.ee = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef nonnull %0, i64 %i.h, i64 %i.i, i32 noundef %i.ed, i64 %i.h, i64 %i.i, i1 noundef zeroext false), !inline_history !272 ; 2 uses
  %i.ef = extractvalue { i64, i64 } %i.ee, 0      ; 6 uses
  %i.eg = extractvalue { i64, i64 } %i.ee, 1      ; 5 uses
  %trunc = trunc i64 %i.eg to i32                 ; 2 uses
  switch i32 %trunc, label %JS_IsFunction.exit.thread239 [
    i32 6, label %.thread264
    i32 -1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x
end_hunk_10
begin_hunk_11_@JS_PromiseThen:bb.a
.thread:                                          ; preds = %JS_GetOpaque2.exit
  %i.s = call fastcc { i64, i64 } @js_promise_new(ptr noundef nonnull %0, i64 0, i64 3, ptr noundef nonnull %6), !inline_history !897
  br label %bb.d

bb.c:                                             ; preds = %JS_GetOpaque2.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1304 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1140
  store ptr %i.u, ptr %8, align 8, !tbaa !1141
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %1, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !35
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %2, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx, align 8, !tbaa !72
  store ptr %8, ptr %i.t, align 8, !tbaa !1140
  %i.v = call fastcc { i64, i64 } @js_promise_new(ptr noundef nonnull %0, i64 0, i64 3, ptr noundef nonnull %6), !inline_history !897
  %i.w = load ptr, ptr %8, align 8, !tbaa !1142
  store ptr %i.w, ptr %i.t, align 8, !tbaa !1140
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %.pn = phi { i64, i64 } [ %i.s, %.thread ], [ %i.v, %bb.c ] ; 2 uses
  %i.x = extractvalue { i64, i64 } %.pn, 0        ; 6 uses
  %i.y = extractvalue { i64, i64 } %.pn, 1        ; 5 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.5.0.extract.shift = and i64 %i.x, -4294967296
  br label %JS_FreeValue.exit35

bb.f:                                             ; preds = %bb.d
  %i.ab = call fastcc i32 @perform_promise_then(ptr noundef nonnull %0, i64 %1, i64 %2, ptr noundef nonnull %7, ptr noundef nonnull %6)
  %i.ac = load i64, ptr %6, align 16              ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = load i64, ptr %i.ad, align 8            ; 2 uses
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !50  ; 3 uses
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = icmp ugt i32 %i.ag, -10
  br i1 %i.ah, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  %i.ai = inttoptr i64 %i.ac to ptr
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -4 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8  ; 2 uses
  %i.al = add nsw i32 %i.ak, -1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !8
  %i.am = icmp slt i32 %i.ak, 2
  br i1 %i.am, label %bb.h, label %JS_FreeValue.exit

bb.h:                                             ; preds = %bb.g
  call fastcc void @js_free_value_rt(ptr noundef %i.af, i64 %i.ac, i64 %i.ae), !inline_history !143
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !50
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.f, %bb.g, %bb.h
  %i.an = phi ptr [ %i.af, %bb.f ], [ %i.af, %bb.g ], [ %.pre, %bb.h ]
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = load i64, ptr %i.ao, align 16           ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ar = load i64, ptr %i.aq, align 8            ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp ugt i32 %i.as, -10
  br i1 %i.at, label %bb.i, label %JS_FreeValue.exit.1

bb.i:                                             ; preds = %JS_FreeValue.exit
  %i.au = inttoptr i64 %i.ap to ptr
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -4 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8  ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !8
  %i.ay = icmp slt i32 %i.aw, 2
  br i1 %i.ay, label %bb.j, label %JS_FreeValue.exit.1

bb.j:                                             ; preds = %bb.i
  call fastcc void @js_free_value_rt(ptr noundef %i.an, i64 %i.ap, i64 %i.ar), !inline_history !143
  br label %JS_FreeValue.exit.1

JS_FreeValue.exit.1:                              ; preds = %bb.j, %bb.i, %JS_FreeValue.exit
  %.not34 = icmp eq i32 %i.ab, 0
  br i1 %.not34, label %bb.n, label %bb.k

bb.k:                                             ; preds = %JS_FreeValue.exit.1
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ba = trunc i64 %i.y to i32
  %i.bb = icmp ugt i32 %i.ba, -10
  br i1 %i.bb, label %bb.l, label %JS_FreeValue.exit35

bb.l:                                             ; preds = %bb.k
  %i.bc = inttoptr i64 %i.x to ptr
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 -4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !8  ; 2 uses
  %i.bf = add nsw i32 %i.be, -1
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !8
  %i.bg = icmp slt i32 %i.be, 2
  br i1 %i.bg, label %bb.m, label %JS_FreeValue.exit35

bb.m:                                             ; preds = %bb.l
  call fastcc void @js_free_value_rt(ptr noundef %i.az, i64 %i.x, i64 %i.y), !inline_history !143
  br label %JS_FreeValue.exit35

bb.n:                                             ; preds = %JS_FreeValue.exit.1
  %.sroa.5.0.extract.shift30 = and i64 %i.x, -4294967296
  br label %JS_FreeValue.exit35

JS_FreeValue.exit35:                              ; preds = %bb.m, %bb.l, %bb.k, %JS_GetOpaque2.exit.thread, %bb.n, %bb.e
  %.sroa.028.0 = phi i64 [ %i.x, %bb.e ], [ 0, %JS_GetOpaque2.exit.thread ], [ %i.x, %bb.n ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.extract.shift, %bb.e ], [ 0, %JS_GetOpaque2.exit.thread ], [ %.sroa.5.0.extract.shift30, %bb.n ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.m ]
  %.sroa.732.0 = phi i64 [ %i.y, %bb.e ], [ 6, %JS_GetOpaque2.exit.thread ], [ %i.y, %bb.n ], [ 6, %bb.k ], [ 6, %bb.l ], [ 6, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.sroa.028.0.insert.ext = and i64 %.sroa.028.0, 4294967295
  %.sroa.028.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.028.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.028.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.732.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @perform_promise_then(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %5 = alloca [5 x %struct.JSValue], align 16     ; 9 uses
  %i.b = and i64 %2, 4294967295
  %.not.i = icmp eq i64 %i.b, 4294967295          ; 2 uses
  br i1 %.not.i, label %bb.b, label %JS_GetOpaque.exit

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %.not3.i = icmp eq i16 %i.e, 52
  br i1 %.not3.i, label %bb.c, label %JS_GetOpaque.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  br label %JS_GetOpaque.exit

JS_GetOpaque.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.c ], [ null, %bb.a ], [ null, %bb.b ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10
  %i.n = add i64 %i.m, 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  %i.q = add i64 %i.p, -1
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %js_arena_malloc.exit.thread, label %bb.d, !prof !9

bb.d:                                             ; preds = %JS_GetOpaque.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 680
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 688
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.w = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.j, i32 noundef 7) ; 2 uses
  %.not.i72 = icmp eq ptr %i.w, null
  br i1 %.not.i72, label %js_arena_malloc.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i71 = phi ptr [ %i.w, %bb.e ], [ %i.u, %bb.d ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i71, i64 38 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i71, i64 40
  %i.aa = zext i16 %i.y to i64
  %i.ab = mul nuw nsw i64 %i.aa, 72
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 14 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !35
  store i16 %i.ad, ptr %i.x, align 2, !tbaa !38
  store i16 %i.y, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i71, i64 34 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !38
  %i.ag = add i16 %i.af, 1                        ; 2 uses
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i71, i64 36
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !38
  %i.aj = icmp eq i16 %i.ag, %i.ai
  br i1 %i.aj, label %bb.g, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %.0.i71, align 8, !tbaa !41 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i71, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !40
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i71, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.g, %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ao, i8 0, i64 64, i1 false)
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !34
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.k, align 8, !tbaa !34
  %i.ar = load i16, ptr %i.ac, align 8, !tbaa !35
  %i.as = icmp eq i16 %i.ar, -1
  br i1 %i.as, label %bb.h, label %bb.j

bb.h:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 1064
  %i.au = icmp eq ptr %i.ac, %i.at
  br i1 %i.au, label %js_mallocz.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = tail call i64 %i.aw(ptr noundef nonnull %i.ac) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ax
  br label %js_mallocz.exit

bb.j:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !35
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !38
  %i.be = zext i16 %i.bd to i64
  br label %js_mallocz.exit

js_arena_malloc.exit.thread:                      ; preds = %bb.s, %.thread101, %bb.e, %JS_GetOpaque.exit
  %i.bf = phi ptr [ null, %bb.e ], [ null, %JS_GetOpaque.exit ], [ %i.ao, %.thread101 ], [ %i.ao, %bb.s ]
  %i.bg = phi i1 [ false, %bb.e ], [ false, %JS_GetOpaque.exit ], [ true, %.thread101 ], [ true, %bb.s ]
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1256 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.l, label %bb.k

bb.k:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.bi, align 8, !tbaa !57
  %i.bl = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !57
  br label %bb.l

js_mallocz.exit:                                  ; preds = %bb.h, %bb.i, %bb.j
  %.011.i.i.i.i = phi i64 [ 8, %bb.h ], [ %i.ay, %bb.i ], [ %i.be, %bb.j ]
  %i.bm = load i64, ptr %i.l, align 8, !tbaa !10
  %i.bn = add i64 %i.bm, %.011.i.i.i.i
  store i64 %i.bn, ptr %i.l, align 8, !tbaa !10
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.bp = load i64, ptr %4, align 8               ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = icmp ugt i32 %i.bs, -10
  br i1 %i.bt, label %bb.n, label %js_dup.exit

bb.l:                                             ; preds = %js_arena_malloc.exit.thread, %bb.k
  br i1 %i.bg, label %bb.m, label %.thread105

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !50
  tail call fastcc void @promise_reaction_data_free(ptr noundef %i.bu, ptr noundef %i.bf)
  br label %.thread105

bb.n:                                             ; preds = %js_mallocz.exit
  %i.bv = inttoptr i64 %i.bp to ptr
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -4 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.by = add nsw i32 %i.bx, 1
  store i32 %i.by, ptr %i.bw, align 4, !tbaa !8
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %js_mallocz.exit, %bb.n
  store i64 %i.bp, ptr %i.bo, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store i64 %i.br, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !72
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = icmp ugt i32 %i.ce, -10
  br i1 %i.cf, label %bb.o, label %js_dup.exit.1

bb.o:                                             ; preds = %js_dup.exit
  %i.cg = inttoptr i64 %i.cb to ptr
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 -4 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.cj = add nsw i32 %i.ci, 1
  store i32 %i.cj, ptr %i.ch, align 4, !tbaa !8
  br label %js_dup.exit.1

js_dup.exit.1:                                    ; preds = %bb.o, %js_dup.exit
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store i64 %i.cd, ptr %.sroa.45.0..sroa_idx.1, align 8, !tbaa !72
  %.sroa.06.0.copyload = load i64, ptr %3, align 8, !tbaa !35 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !72 ; 2 uses
  %i.ck = and i64 %.sroa.7.0.copyload, 4294967295
  %.not.i65 = icmp eq i64 %i.ck, 4294967295
  br i1 %.not.i65, label %bb.p, label %.thread101

bb.p:                                             ; preds = %js_dup.exit.1
  %i.cl = inttoptr i64 %.sroa.06.0.copyload to ptr ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 18
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !117 ; 2 uses
  switch i16 %i.cn, label %JS_IsFunction.exit [
    i16 13, label %bb.q
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !35
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load i8, ptr %i.cq, align 8, !tbaa !444
  %.fr = freeze i8 %i.cr
  %.not = icmp eq i8 %.fr, 0
  br i1 %.not, label %.thread101, label %bb.q

JS_IsFunction.exit:                               ; preds = %bb.p
  %i.cs = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1128
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !88
  %i.cv = zext i16 %i.cn to i64
  %i.cw = getelementptr inbounds nuw [40 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !92
  %.fr111 = freeze ptr %i.cy
  %.not112 = icmp eq ptr %.fr111, null
  br i1 %.not112, label %.thread101, label %bb.q

bb.q:                                             ; preds = %.split, %JS_IsFunction.exit, %bb.p
  %i.cz = inttoptr i64 %.sroa.06.0.copyload to ptr
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !8
  br label %.thread101

.thread101:                                       ; preds = %.split, %JS_IsFunction.exit, %js_dup.exit.1, %bb.q
  %.sroa.06.sroa.0.0.insert.insert11104 = phi i64 [ %.sroa.06.0.copyload, %bb.q ], [ 0, %.split ], [ 0, %js_dup.exit.1 ], [ 0, %JS_IsFunction.exit ]
  %i.dd = phi i64 [ %.sroa.7.0.copyload, %bb.q ], [ 3, %.split ], [ 3, %js_dup.exit.1 ], [ 3, %JS_IsFunction.exit ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 %.sroa.06.sroa.0.0.insert.insert11104, ptr %i.de, align 8, !tbaa !35
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  store i64 %i.dd, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !72
  store ptr %i.ao, ptr %i.a, align 16, !tbaa !1144
  %i.df = load ptr, ptr %i.i, align 8, !tbaa !50  ; 8 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 40 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 48 ; 3 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !10
  %i.dj = add i64 %i.di, 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !14
  %i.dm = add i64 %i.dl, -1
  %i.dn = icmp ugt i64 %i.dj, %i.dm
  br i1 %i.dn, label %js_arena_malloc.exit.thread, label %bb.r, !prof !9

bb.r:                                             ; preds = %.thread101
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 680
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 688
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !40 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.do
  br i1 %i.dr, label %bb.s, label %bb.t, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.ds = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.df, i32 noundef 7) ; 2 uses
  %.not.i72.1 = icmp eq ptr %i.ds, null
  br i1 %.not.i72.1, label %js_arena_malloc.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0.i71.1 = phi ptr [ %i.ds, %bb.s ], [ %i.dq, %bb.r ] ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.i71.1, i64 38 ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !38 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i71.1, i64 40
  %i.dw = zext i16 %i.du to i64
  %i.dx = mul nuw nsw i64 %i.dw, 72
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx ; 14 uses
  %i.dz = load i16, ptr %i.dy, align 8, !tbaa !35
  store i16 %i.dz, ptr %i.dt, align 2, !tbaa !38
  store i16 %i.du, ptr %i.dy, align 8, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i71.1, i64 34 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !38
  %i.ec = add i16 %i.eb, 1                        ; 2 uses
  store i16 %i.ec, ptr %i.ea, align 2, !tbaa !38
  %i.ed = getelementptr inbounds nuw i8, ptr %.0.i71.1, i64 36
  %i.ee = load i16, ptr %i.ed, align 4, !tbaa !38
  %i.ef = icmp eq i16 %i.ec, %i.ee
  br i1 %i.ef, label %bb.u, label %js_arena_calloc.exit.thread26.i.i.i.1, !prof !9

bb.u:                                             ; preds = %bb.t
  %i.eg = load ptr, ptr %.0.i71.1, align 8, !tbaa !41 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i71.1, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !40 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !40
  store ptr %i.eg, ptr %i.ei, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i71.1, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i.1

js_arena_calloc.exit.thread26.i.i.i.1:            ; preds = %bb.u, %bb.t
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ek, i8 0, i64 64, i1 false)
  %i.el = load i64, ptr %i.dg, align 8, !tbaa !34
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.dg, align 8, !tbaa !34
  %i.en = load i16, ptr %i.dy, align 8, !tbaa !35
  %i.eo = icmp eq i16 %i.en, -1
  br i1 %i.eo, label %bb.w, label %bb.v

bb.v:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i.1
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.eq = load i8, ptr %i.ep, align 2, !tbaa !35
  %i.er = zext i8 %i.eq to i64
  %i.es = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !38
  %i.eu = zext i16 %i.et to i64
  br label %js_mallocz.exit.1

bb.w:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i.1
  %i.ev = getelementptr inbounds nuw i8, ptr %i.df, i64 1064
  %i.ew = icmp eq ptr %i.dy, %i.ev
  br i1 %i.ew, label %js_mallocz.exit.1, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !36
  %i.ez = tail call i64 %i.ey(ptr noundef nonnull %i.dy) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i.1 = icmp eq i64 %i.ez, 0
  %i.fa = select i1 %.not15.i.i.i.i.1, i64 8, i64 %i.ez
  br label %js_mallocz.exit.1

js_mallocz.exit.1:                                ; preds = %bb.x, %bb.w, %bb.v
  %.011.i.i.i.i.1 = phi i64 [ 8, %bb.w ], [ %i.fa, %bb.x ], [ %i.eu, %bb.v ]
  %i.fb = load i64, ptr %i.dh, align 8, !tbaa !10
  %i.fc = add i64 %i.fb, %.011.i.i.i.i.1
  store i64 %i.fc, ptr %i.dh, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.fe = load i64, ptr %4, align 8               ; 2 uses
  %i.ff = load i64, ptr %i.bq, align 8            ; 2 uses
  %i.fg = trunc i64 %i.ff to i32
  %i.fh = icmp ugt i32 %i.fg, -10
  br i1 %i.fh, label %bb.y, label %js_dup.exit.1122

bb.y:                                             ; preds = %js_mallocz.exit.1
  %i.fi = inttoptr i64 %i.fe to ptr
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -4 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !8
  %i.fl = add nsw i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fj, align 4, !tbaa !8
  br label %js_dup.exit.1122

js_dup.exit.1122:                                 ; preds = %bb.y, %js_mallocz.exit.1
  store i64 %i.fe, ptr %i.fd, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx.1121 = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  store i64 %i.ff, ptr %.sroa.45.0..sroa_idx.1121, align 8, !tbaa !72
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.fn = load i64, ptr %i.ca, align 8            ; 2 uses
  %i.fo = load i64, ptr %i.cc, align 8            ; 2 uses
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = icmp ugt i32 %i.fp, -10
  br i1 %i.fq, label %bb.z, label %js_dup.exit.1.1

bb.z:                                             ; preds = %js_dup.exit.1122
  %i.fr = inttoptr i64 %i.fn to ptr
  %i.fs = getelementptr inbounds i8, ptr %i.fr, i64 -4 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !8
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.fs, align 4, !tbaa !8
  br label %js_dup.exit.1.1

js_dup.exit.1.1:                                  ; preds = %bb.z, %js_dup.exit.1122
  store i64 %i.fn, ptr %i.fm, align 8, !tbaa !35
  %.sroa.45.0..sroa_idx.1.1 = getelementptr inbounds nuw i8, ptr %i.dy, i64 48
  store i64 %i.fo, ptr %.sroa.45.0..sroa_idx.1.1, align 8, !tbaa !72
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.06.0.copyload.1 = load i64, ptr %i.fv, align 8, !tbaa !35 ; 3 uses
  %.sroa.7.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.7.0.copyload.1 = load i64, ptr %.sroa.7.0..sroa_idx.1, align 8, !tbaa !72 ; 2 uses
  %i.fw = and i64 %.sroa.7.0.copyload.1, 4294967295
  %.not.i65.1 = icmp eq i64 %i.fw, 4294967295
  br i1 %.not.i65.1, label %bb.aa, label %.thread101.1

bb.aa:                                            ; preds = %js_dup.exit.1.1
  %i.fx = inttoptr i64 %.sroa.06.0.copyload.1 to ptr ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 18
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !117 ; 2 uses
  switch i16 %i.fz, label %JS_IsFunction.exit.1 [
    i16 13, label %bb.ab
    i16 51, label %.split.1
  ]

.split.1:                                         ; preds = %bb.aa
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 48
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !35
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !444
  %.fr.1 = freeze i8 %i.gd
  %.not.1 = icmp eq i8 %.fr.1, 0
  br i1 %.not.1, label %.thread101.1, label %bb.ab

JS_IsFunction.exit.1:                             ; preds = %bb.aa
  %i.ge = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 1128
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !88
  %i.gh = zext i16 %i.fz to i64
  %i.gi = getelementptr inbounds nuw [40 x i8], ptr %i.gg, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !92
  %.fr111.1 = freeze ptr %i.gk
  %.not112.1 = icmp eq ptr %.fr111.1, null
  br i1 %.not112.1, label %.thread101.1, label %bb.ab

bb.ab:                                            ; preds = %JS_IsFunction.exit.1, %.split.1, %bb.aa
  %i.gl = inttoptr i64 %.sroa.06.0.copyload.1 to ptr
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !8
  %i.go = add nsw i32 %i.gn, 1
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !8
  br label %.thread101.1

.thread101.1:                                     ; preds = %.split.1, %JS_IsFunction.exit.1, %bb.ab, %js_dup.exit.1.1
  %.sroa.06.sroa.0.0.insert.insert11104.1 = phi i64 [ %.sroa.06.0.copyload.1, %bb.ab ], [ 0, %.split.1 ], [ 0, %js_dup.exit.1.1 ], [ 0, %JS_IsFunction.exit.1 ]
  %i.gp = phi i64 [ %.sroa.7.0.copyload.1, %bb.ab ], [ 3, %.split.1 ], [ 3, %js_dup.exit.1.1 ], [ 3, %JS_IsFunction.exit.1 ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.dy, i64 56
  store i64 %.sroa.06.sroa.0.0.insert.insert11104.1, ptr %i.gq, align 8, !tbaa !35
  %.sroa.42.0..sroa_idx.1 = getelementptr inbounds nuw i8, ptr %i.dy, i64 64
  store i64 %i.gp, ptr %.sroa.42.0..sroa_idx.1, align 8, !tbaa !72
  store ptr %i.ek, ptr %i.h, align 8, !tbaa !1144
  %i.gr = load i32, ptr %.0.i, align 8, !tbaa !1127 ; 7 uses
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %.thread101.1
  %i.gt = getelementptr inbounds nuw i8, ptr %.0.i, i64 8 ; 3 uses
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !41 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %i.ao, ptr %i.gv, align 8, !tbaa !40
  store ptr %i.gu, ptr %i.ao, align 8, !tbaa !41
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.gt, ptr %i.gw, align 8, !tbaa !40
  store ptr %i.ao, ptr %i.gt, align 8, !tbaa !41
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 3 uses
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !41 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  store ptr %i.ek, ptr %i.gz, align 8, !tbaa !40
  store ptr %i.gy, ptr %i.ek, align 8, !tbaa !41
  %i.ha = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %i.gx, ptr %i.ha, align 8, !tbaa !40
  store ptr %i.ek, ptr %i.gx, align 8, !tbaa !41
  br label %.loopexit

bb.ac:                                            ; preds = %.thread101.1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  br i1 %.not.i, label %bb.ad, label %call_promise_rejection_tracker.exit

bb.ad:                                            ; preds = %bb.ac
  %i.hb = inttoptr i64 %1 to ptr                  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 18
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !117
  %.not3.i.i = icmp eq i16 %i.hd, 52
  br i1 %.not3.i.i, label %JS_GetOpaque.exit.i, label %call_promise_rejection_tracker.exit

JS_GetOpaque.exit.i:                              ; preds = %bb.ad
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 48
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !35 ; 5 uses
  %i.hg = load ptr, ptr %i.i, align 8, !tbaa !50  ; 2 uses
  %.not.i70 = icmp eq ptr %i.hf, null
  br i1 %.not.i70, label %call_promise_rejection_tracker.exit, label %bb.ae

bb.ae:                                            ; preds = %JS_GetOpaque.exit.i
  %i.hh = load i32, ptr %i.hf, align 8, !tbaa !1127
  %i.hi = icmp eq i32 %i.hh, 2
  br i1 %i.hi, label %bb.af, label %call_promise_rejection_tracker.exit

bb.af:                                            ; preds = %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 40
  %i.hk = load i8, ptr %i.hj, align 8, !tbaa !1129, !range !58, !noundef !59
  %i.hl = trunc nuw i8 %i.hk to i1
  br i1 %i.hl, label %call_promise_rejection_tracker.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 1312
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !1130 ; 2 uses
  %.not12.i = icmp eq ptr %i.hn, null
  br i1 %.not12.i, label %call_promise_rejection_tracker.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hf, i64 48
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 1320
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !1131
  %i.hr = load i64, ptr %i.ho, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.ht = load i64, ptr %i.hs, align 8
  tail call void %i.hn(ptr noundef nonnull %0, i64 %1, i64 %2, i64 %i.hr, i64 %i.ht, i1 noundef zeroext true, ptr noundef %i.hq) #49, !inline_history !1146
  %.pre = load i32, ptr %.0.i, align 8, !tbaa !1127
  br label %call_promise_rejection_tracker.exit

call_promise_rejection_tracker.exit:              ; preds = %bb.ac, %bb.ad, %JS_GetOpaque.exit.i, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %i.hu = phi i32 [ %i.gr, %bb.ac ], [ %i.gr, %bb.ad ], [ %i.gr, %JS_GetOpaque.exit.i ], [ %i.gr, %bb.ae ], [ %i.gr, %bb.af ], [ %i.gr, %bb.ag ], [ %.pre, %bb.ah ]
  %i.hv = add nsw i32 %i.hu, -1                   ; 2 uses
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.hw
end_hunk_11
begin_hunk_12_@js_promise_resolve_function_call:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8
  %i.r = tail call fastcc zeroext i1 @js_strict_eq2(i64 %.sroa.017.0.copyload, i64 %.sroa.10.0.copyload, i64 %i.o, i64 %i.q, i32 noundef 1)
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.382) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %.sroa.017.0.copyload, i64 %.sroa.10.0.copyload, i32 noundef 137, i64 %.sroa.017.0.copyload, i64 %.sroa.10.0.copyload, i1 noundef zeroext false), !inline_history !272 ; 2 uses
  %i.u = extractvalue { i64, i64 } %i.t, 0        ; 5 uses
  %i.v = extractvalue { i64, i64 } %i.t, 1        ; 4 uses
  %trunc = trunc i64 %i.v to i32                  ; 2 uses
  switch i32 %trunc, label %JS_IsFunction.exit.thread85 [
    i32 6, label %bb.h
    i32 -1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !50   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1240 ; 2 uses
  %.sroa.03.0.copyload.i = load i64, ptr %i.y, align 8, !tbaa !35 ; 3 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1248 ; 2 uses
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !72 ; 3 uses
  store i32 0, ptr %i.y, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 1244
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !35
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !72
  %i.z = load i64, ptr %i.c, align 8
  %i.aa = load i64, ptr %i.p, align 8
  tail call fastcc void @fulfill_or_reject_promise(ptr noundef %0, i64 %i.z, i64 %i.aa, i64 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i, i1 noundef zeroext true)
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !50
  %i.ac = trunc i64 %.sroa.24.0.copyload.i to i32
  %i.ad = icmp ugt i32 %i.ac, -10
  br i1 %i.ad, label %bb.i, label %JS_FreeValue.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = inttoptr i64 %.sroa.03.0.copyload.i to ptr
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -4 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8  ; 2 uses
  %i.ah = add nsw i32 %i.ag, -1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !8
  %i.ai = icmp slt i32 %i.ag, 2
  br i1 %i.ai, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ab, i64 %.sroa.03.0.copyload.i, i64 %.sroa.24.0.copyload.i), !inline_history !143
  br label %JS_FreeValue.exit

bb.k:                                             ; preds = %bb.g
  %i.aj = inttoptr i64 %i.u to ptr                ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !117 ; 2 uses
  switch i16 %i.al, label %JS_IsFunction.exit [
    i16 13, label %bb.m
    i16 51, label %.split
  ]

.split:                                           ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !35
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !444
  %.not90 = icmp eq i8 %i.ap, 0
  br i1 %.not90, label %JS_IsFunction.exit.thread85.thread, label %bb.m

JS_IsFunction.exit:                               ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1128
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !88
  %i.au = zext i16 %i.al to i64
  %i.av = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !92
  %.not91 = icmp eq ptr %i.ax, null
  br i1 %.not91, label %JS_IsFunction.exit.thread85.thread, label %bb.m

JS_IsFunction.exit.thread85:                      ; preds = %bb.g
  %i.ay = icmp ugt i32 %trunc, -10
  br i1 %i.ay, label %JS_IsFunction.exit.thread85.thread, label %JS_FreeValue.exit82

JS_IsFunction.exit.thread85.thread:               ; preds = %JS_IsFunction.exit, %.split, %JS_IsFunction.exit.thread85
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %.in, align 8, !tbaa !50
  %i.ba = inttoptr i64 %i.u to ptr
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8  ; 2 uses
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !8
  %i.be = icmp slt i32 %i.bc, 2
  br i1 %i.be, label %bb.l, label %JS_FreeValue.exit82

bb.l:                                             ; preds = %JS_IsFunction.exit.thread85.thread
  tail call fastcc void @js_free_value_rt(ptr noundef %i.az, i64 %i.u, i64 %i.v), !inline_history !143
  br label %JS_FreeValue.exit82

JS_FreeValue.exit82:                              ; preds = %bb.c, %bb.l, %JS_IsFunction.exit.thread85.thread, %JS_IsFunction.exit.thread85, %bb.d
  %.sroa.017.sroa.9.096 = phi i64 [ %.sroa.017.0.copyload, %bb.d ], [ %.sroa.017.0.copyload, %bb.l ], [ %.sroa.017.0.copyload, %JS_IsFunction.exit.thread85.thread ], [ %.sroa.017.0.copyload, %JS_IsFunction.exit.thread85 ], [ 0, %bb.c ]
  %.sroa.10.095 = phi i64 [ %.sroa.10.0.copyload, %bb.d ], [ %.sroa.10.0.copyload, %bb.l ], [ %.sroa.10.0.copyload, %JS_IsFunction.exit.thread85.thread ], [ %.sroa.10.0.copyload, %JS_IsFunction.exit.thread85 ], [ 3, %bb.c ]
  %i.bf = load i64, ptr %i.c, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bh = load i64, ptr %i.bg, align 8
  tail call fastcc void @fulfill_or_reject_promise(ptr noundef %0, i64 %i.bf, i64 %i.bh, i64 %.sroa.017.sroa.9.096, i64 %.sroa.10.095, i1 noundef zeroext %i.k)
  br label %JS_FreeValue.exit

bb.m:                                             ; preds = %JS_IsFunction.exit, %.split, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !129
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %.sroa.017.0.copyload, ptr %i.bi, align 16, !tbaa !35
  %.sroa.10.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i64 %.sroa.10.0.copyload, ptr %.sroa.10.0..sroa_idx22, align 8, !tbaa !72
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 %i.u, ptr %i.bj, align 16, !tbaa !35
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i64 %i.v, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !72
  %i.bk = call i32 @JS_EnqueueJob(ptr noundef %0, ptr noundef nonnull @js_promise_resolve_thenable_job, i32 noundef 3, ptr noundef nonnull %8) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !50
  %i.bn = getelementptr inbounds i8, ptr %i.aj, i64 -4 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8  ; 2 uses
  %i.bp = add nsw i32 %i.bo, -1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !8
  %i.bq = icmp slt i32 %i.bo, 2
  br i1 %i.bq, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bm, i64 %i.u, i64 %i.v), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %JS_FreeValue.exit82, %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #49
  ret { i64, i64 } { i64 0, i64 3 }
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_async_function_call(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 %7) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = add i64 %i.e, 160
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = add i64 %i.h, -1
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %js_arena_malloc.exit.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 840
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 848
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.o = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.b, i32 noundef 17) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.d

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre43 = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i38 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i38, i64 38 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i38, i64 40
  %i.s = zext i16 %i.q to i64
  %i.t = mul nuw nsw i64 %i.s, 176
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 19 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  store i16 %i.v, ptr %i.p, align 2, !tbaa !38
  store i16 %i.q, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i38, i64 34 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !38
  %i.y = add i16 %i.x, 1                          ; 2 uses
  store i16 %i.y, ptr %i.w, align 2, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i38, i64 36
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !38
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %.0.i38, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i38, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !40
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i38, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 8 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(160) %i.ag, i8 0, i64 160, i1 false)
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !34
  %i.aj = load i16, ptr %i.u, align 8, !tbaa !35
  %i.ak = icmp eq i16 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.am = icmp eq ptr %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull %i.u) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ap
  br label %bb.j

bb.h:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !35
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !38
  %i.aw = zext i16 %i.av to i64
  br label %bb.j

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.a
  %i.ax = phi ptr [ %.pre43, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.b, %bb.a ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1256 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %js_mallocz.exit.thread, label %bb.i

bb.i:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.ay, align 8, !tbaa !57
  %i.bb = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !57
  br label %js_mallocz.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.aq, %bb.g ], [ %i.aw, %bb.h ]
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bd = add i64 %i.bc, %.011.i.i.i.i
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !8
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 4, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1152 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.ag, ptr %i.bj, align 8, !tbaa !40
  store ptr %i.bi, ptr %i.ag, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.bh, ptr %i.bk, align 8, !tbaa !40
  store ptr %i.ag, ptr %i.bh, align 8, !tbaa !41
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store i8 0, ptr %i.bl, align 8, !tbaa !208
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store i32 0, ptr %i.bm, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 0, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !35
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 3, ptr %.sroa.34.0..sroa_idx, align 8, !tbaa !72
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 0, ptr %i.bn, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !72
  %i.bo = tail call fastcc { i64, i64 } @js_promise_new(ptr noundef nonnull %0, i64 0, i64 3, ptr noundef nonnull %i.bm), !inline_history !897 ; 2 uses
  %i.bp = extractvalue { i64, i64 } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { i64, i64 } %i.bo, 1      ; 4 uses
  %i.br = and i64 %i.bq, 4294967295
  %i.bs = icmp eq i64 %i.br, 6
  br i1 %i.bs, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.bu = tail call fastcc i32 @async_func_init(ptr noundef nonnull %0, ptr noundef %i.bt, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr noundef %6)
  %.not37 = icmp eq i32 %i.bu, 0
  br i1 %.not37, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k, %bb.j
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !50  ; 3 uses
  %i.bw = trunc i64 %i.bq to i32
  %i.bx = icmp ugt i32 %i.bw, -10
  br i1 %i.bx, label %bb.m, label %JS_FreeValue.exit

bb.m:                                             ; preds = %bb.l
  %i.by = inttoptr i64 %i.bp to ptr
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8  ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !8
  %i.cc = icmp slt i32 %i.ca, 2
  br i1 %i.cc, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bv, i64 %i.bp, i64 %i.bq), !inline_history !143
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.l, %bb.m, %bb.n
  %i.cd = phi ptr [ %i.bv, %bb.l ], [ %i.bv, %bb.m ], [ %.pre, %bb.n ]
  tail call fastcc void @js_async_function_free(ptr noundef %i.cd, ptr noundef nonnull %i.ag)
  br label %js_mallocz.exit.thread

bb.o:                                             ; preds = %bb.k
  store i8 1, ptr %i.bl, align 8, !tbaa !208
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 160
  store ptr %i.ag, ptr %i.ce, align 8, !tbaa !1152
  %i.cf = tail call fastcc zeroext i1 @js_async_function_resume(ptr noundef nonnull %0, ptr noundef nonnull %i.ag)
  br i1 %i.cf, label %bb.p, label %bb.l

bb.p:                                             ; preds = %bb.o
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call fastcc void @js_async_function_free(ptr noundef %i.cg, ptr noundef nonnull %i.ag)
  br label %js_mallocz.exit.thread

js_mallocz.exit.thread:                           ; preds = %bb.i, %js_arena_malloc.exit.thread, %bb.p, %JS_FreeValue.exit
  %.sroa.435.0 = phi i64 [ 0, %JS_FreeValue.exit ], [ %i.bp, %bb.p ], [ 0, %js_arena_malloc.exit.thread ], [ 0, %bb.i ]
  %.sroa.636.0 = phi i64 [ 6, %JS_FreeValue.exit ], [ %i.bq, %bb.p ], [ 6, %js_arena_malloc.exit.thread ], [ 6, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.435.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.636.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_async_function_resolve_call(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 %7) #2 {
bb.a:
  %i.a = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %i.f = icmp ne i16 %i.e, 56                     ; 2 uses
  %i.g = zext i1 %i.f to i8
  %i.h = icmp sgt i32 %5, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.05.0.copyload = load i64, ptr %6, align 8, !tbaa !35
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !72
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.b ], [ 3, %bb.a ] ; 4 uses
  %.sroa.05.sroa.6.0 = phi i64 [ %.sroa.05.0.copyload, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i8 %i.g, ptr %i.i, align 4, !tbaa !1153
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i64 %.sroa.7.0 to i32
  %i.k = icmp ugt i32 %i.j, -10
  br i1 %i.k, label %bb.e, label %js_dup.exit

bb.e:                                             ; preds = %bb.d
  %i.l = inttoptr i64 %.sroa.05.sroa.6.0 to ptr
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !8
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.d, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1240 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 1248 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp ugt i32 %i.v, -10
  br i1 %i.w, label %bb.f, label %JS_Throw.exit

bb.f:                                             ; preds = %js_dup.exit
  %i.x = inttoptr i64 %i.s to ptr
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -4 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8    ; 2 uses
  %i.aa = add nsw i32 %i.z, -1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !8
  %i.ab = icmp slt i32 %i.z, 2
  br i1 %i.ab, label %bb.g, label %JS_Throw.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef nonnull %i.q, i64 %i.s, i64 %i.u), !inline_history !1154
  br label %JS_Throw.exit

JS_Throw.exit:                                    ; preds = %js_dup.exit, %bb.f, %bb.g
  store i64 %.sroa.05.sroa.6.0, ptr %i.r, align 8, !tbaa !35
  store i64 %.sroa.7.0, ptr %i.t, align 8, !tbaa !72
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1155 ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -16
  %i.af = trunc i64 %.sroa.7.0 to i32
  %i.ag = icmp ugt i32 %i.af, -10
  br i1 %i.ag, label %bb.i, label %js_dup.exit32

bb.i:                                             ; preds = %bb.h
  %i.ah = inttoptr i64 %.sroa.05.sroa.6.0 to ptr
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !8
  br label %js_dup.exit32

js_dup.exit32:                                    ; preds = %bb.h, %bb.i
  store i64 %.sroa.05.sroa.6.0, ptr %i.ae, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.ad, i64 -8
  store i64 %.sroa.7.0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  br label %bb.j

bb.j:                                             ; preds = %js_dup.exit32, %JS_Throw.exit
  %i.al = tail call fastcc zeroext i1 @js_async_function_resume(ptr noundef %0, ptr noundef nonnull %i.c)
  %. = select i1 %i.al, i64 3, i64 6
  %.fca.1.insert = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %., 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_async_generator_function_call(ptr noundef %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 %7) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = add i64 %i.e, 136
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = add i64 %i.h, -1
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %js_arena_malloc.exit.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 808
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 816
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.o = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.b, i32 noundef 15) ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.d

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i41 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i41, i64 38 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i41, i64 40
  %i.s = zext i16 %i.q to i64
  %i.t = mul nuw nsw i64 %i.s, 144
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 15 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  store i16 %i.v, ptr %i.p, align 2, !tbaa !38
  store i16 %i.q, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i41, i64 34 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !38
  %i.y = add i16 %i.x, 1                          ; 2 uses
  store i16 %i.y, ptr %i.w, align 2, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i41, i64 36
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !38
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %.0.i41, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i41, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !40
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i41, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(136) %i.ag, i8 0, i64 136, i1 false)
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !34
  %i.aj = load i16, ptr %i.u, align 8, !tbaa !35
  %i.ak = icmp eq i16 %i.aj, -1
  br i1 %i.ak, label %bb.f, label %bb.h

bb.f:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.am = icmp eq ptr %i.u, %i.al
  br i1 %i.am, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull %i.u) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ap
  br label %bb.j

bb.h:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !35
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !38
  %i.aw = zext i16 %i.av to i64
  br label %bb.j

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.a
  %i.ax = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.b, %bb.a ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1256 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %js_mallocz.exit.thread, label %bb.i

bb.i:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.ay, align 8, !tbaa !57
  %i.bb = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !57
  br label %js_mallocz.exit.thread

bb.j:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.aq, %bb.g ], [ %i.aw, %bb.h ]
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bd = add i64 %i.bc, %.011.i.i.i.i
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store i32 0, ptr %i.be, align 8, !tbaa !1156
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 128 ; 3 uses
  store ptr %i.bf, ptr %i.bf, align 8, !tbaa !41
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !40
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  %i.bi = tail call fastcc i32 @async_func_init(ptr noundef nonnull %0, ptr noundef %i.bh, i64 %1, i64 %2, i64 %3, i64 %4, i32 noundef %5, ptr noundef %6)
  %.not38 = icmp eq i32 %i.bi, 0
  br i1 %.not38, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 5, ptr %i.be, align 8, !tbaa !1156
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.bk = getelementptr i8, ptr %i.bj, i64 1232
  %.val.i = load i64, ptr %i.bk, align 8, !tbaa !101
  %i.bl = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = icmp ugt i64 %.val.i, %i.bm
  br i1 %i.bn, label %async_func_resume.exit.thread, label %async_func_resume.exit

async_func_resume.exit.thread:                    ; preds = %bb.l
  %i.bo = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.92), !inline_history !139 ; 0 uses
  br label %bb.q

async_func_resume.exit:                           ; preds = %bb.l
  %i.bp = ptrtoint ptr %i.bh to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !140
  %i.bs = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !141
  %i.bu = load i64, ptr %i.bh, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = tail call fastcc { i64, i64 } @JS_CallInternal(ptr noundef nonnull %0, i64 %i.bp, i64 0, i64 %i.bu, i64 %i.bw, i64 0, i64 3, i32 noundef %i.br, ptr noundef %i.bt, i32 noundef 4), !inline_history !142 ; 2 uses
  %i.by = extractvalue { i64, i64 } %i.bx, 0      ; 2 uses
  %i.bz = extractvalue { i64, i64 } %i.bx, 1      ; 3 uses
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = icmp eq i64 %i.ca, 6
  br i1 %i.cb, label %bb.q, label %bb.m

bb.m:                                             ; preds = %async_func_resume.exit
  %i.cc = load ptr, ptr %i.a, align 8, !tbaa !50
  %i.cd = trunc i64 %i.bz to i32
  %i.ce = icmp ugt i32 %i.cd, -10
  br i1 %i.ce, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  %i.cf = inttoptr i64 %i.by to ptr
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -4 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8  ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  store i32 %i.ci, ptr %i.cg, align 4, !tbaa !8
  %i.cj = icmp slt i32 %i.ch, 2
  br i1 %i.cj, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @js_free_value_rt(ptr noundef %i.cc, i64 %i.by, i64 %i.bz), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.m, %bb.n, %bb.o
  %i.ck = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef nonnull %0, i64 %1, i64 %2, i32 noundef 60) ; 2 uses
  %i.cl = extractvalue { i64, i64 } %i.ck, 1      ; 2 uses
  %i.cm = and i64 %i.cl, 4294967295
  %i.cn = icmp eq i64 %i.cm, 6
  br i1 %i.cn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %JS_FreeValue.exit
  %i.co = extractvalue { i64, i64 } %i.ck, 0      ; 2 uses
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  store ptr %i.cp, ptr %i.ag, align 8, !tbaa !1158
  %i.cq = getelementptr inbounds nuw i8, ptr %i.u, i64 120
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !1159
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  store ptr %i.ag, ptr %i.cr, align 8, !tbaa !35
  br label %js_mallocz.exit.thread

bb.q:                                             ; preds = %async_func_resume.exit.thread, %JS_FreeValue.exit, %async_func_resume.exit, %bb.k
  %i.cs = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call fastcc void @js_async_generator_free(ptr noundef %i.cs, ptr noundef %i.ag)
  br label %js_mallocz.exit.thread

js_mallocz.exit.thread:                           ; preds = %bb.i, %js_arena_malloc.exit.thread, %bb.q, %bb.p
  %i.ct = phi i64 [ 0, %bb.q ], [ %i.co, %bb.p ], [ 0, %js_arena_malloc.exit.thread ], [ 0, %bb.i ]
  %.sroa.6.0 = phi i64 [ 6, %bb.q ], [ %i.cl, %bb.p ], [ 6, %js_arena_malloc.exit.thread ], [ 6, %bb.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %i.ct, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.6.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_promise_constructor(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4) #2 {
bb.a:
  %5 = alloca [2 x %struct.JSValue], align 16     ; 12 uses
  %6 = alloca %struct.JSValue, align 16           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  %.sroa.021.0.copyload = load i64, ptr %4, align 8, !tbaa !35 ; 2 uses
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.523.0.copyload = load i64, ptr %.sroa.523.0..sroa_idx, align 8, !tbaa !72 ; 2 uses
  %i.a = and i64 %.sroa.523.0.copyload, 4294967295
  %.not.i.i = icmp eq i64 %i.a, 4294967295
  br i1 %.not.i.i, label %bb.b, label %check_function.exit, !prof !1137

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %.sroa.021.0.copyload to ptr ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !117  ; 2 uses
  switch i16 %i.d, label %JS_IsFunction.exit.i [
    i16 13, label %bb.c
    i16 51, label %.split.i
  ]

.split.i:                                         ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.h = load i8, ptr %i.g, align 8, !tbaa !444
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %check_function.exit, label %bb.c, !prof !348

JS_IsFunction.exit.i:                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = zext i16 %i.d to i64
  %i.n = getelementptr inbounds nuw [40 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92
  %.not6.i = icmp eq ptr %i.p, null
  br i1 %.not6.i, label %check_function.exit, label %bb.c, !prof !348

check_function.exit:                              ; preds = %bb.a, %.split.i, %JS_IsFunction.exit.i
  %i.q = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.165), !inline_history !1160 ; 0 uses
  br label %JS_FreeValue.exit45

bb.c:                                             ; preds = %JS_IsFunction.exit.i, %.split.i, %bb.b
  %i.r = call fastcc { i64, i64 } @js_promise_new(ptr noundef %0, i64 %1, i64 %2, ptr noundef nonnull %5) ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0        ; 5 uses
  %i.t = extractvalue { i64, i64 } %i.r, 1        ; 6 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = icmp eq i64 %i.u, 6
  br i1 %i.v, label %JS_FreeValue.exit45, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %.sroa.021.0.copyload, i64 %.sroa.523.0.copyload, i64 0, i64 3, i64 0, i64 3, i32 noundef 2, ptr noundef nonnull %5, i32 noundef 2), !inline_history !133 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 3 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
end_hunk_12
begin_hunk_13_@js_function_constructor:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.dm = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.dn = icmp ugt i32 %trunc, -10
  br i1 %i.dn, label %bb.ab, label %JS_FreeValue.exit86

bb.ab:                                            ; preds = %bb.aa
  %i.do = inttoptr i64 %i.dk to ptr
  %i.dp = getelementptr inbounds i8, ptr %i.do, i64 -4 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !8  ; 2 uses
  %i.dr = add nsw i32 %i.dq, -1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !8
  %i.ds = icmp slt i32 %i.dq, 2
  br i1 %i.ds, label %bb.ac, label %JS_FreeValue.exit86

bb.ac:                                            ; preds = %bb.ab
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dm, i64 %i.dk, i64 %i.dl), !inline_history !143
  br label %JS_FreeValue.exit86

JS_FreeValue.exit86:                              ; preds = %bb.aa, %bb.ab, %bb.ac
  %i.dt = tail call fastcc ptr @JS_GetFunctionRealm(ptr noundef nonnull %0, i64 %1, i64 %2) ; 2 uses
  %.not83 = icmp eq ptr %i.dt, null
  br i1 %.not83, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %JS_FreeValue.exit86
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !230
  %i.dw = zext i32 %5 to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr @func_kind_to_class_id, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !38
  %i.dz = zext i16 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dv, i64 %i.dz ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ed = load i64, ptr %i.ec, align 8            ; 3 uses
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = icmp ugt i32 %i.ee, -10
  br i1 %i.ef, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.eg = inttoptr i64 %i.eb to ptr
  %i.eh = getelementptr inbounds i8, ptr %i.eg, i64 -4 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !8
  br label %bb.af

.thread:                                          ; preds = %bb.ad
  %i.ek = tail call fastcc i32 @JS_SetPrototypeInternal(ptr noundef nonnull %0, i64 %i.cv, i64 %i.cw, i64 %i.eb, i64 %i.ed, i1 noundef zeroext true)
  br label %JS_FreeValue.exit87

bb.af:                                            ; preds = %bb.ae, %bb.z
  %.sroa.9.1.ph = phi i64 [ %i.dl, %bb.z ], [ %i.ed, %bb.ae ] ; 2 uses
  %.sroa.031.1.ph = phi i64 [ %i.dk, %bb.z ], [ %i.eb, %bb.ae ] ; 3 uses
  %i.el = tail call fastcc i32 @JS_SetPrototypeInternal(ptr noundef nonnull %0, i64 %i.cv, i64 %i.cw, i64 %.sroa.031.1.ph, i64 %.sroa.9.1.ph, i1 noundef zeroext true) ; 2 uses
  %i.em = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.en = inttoptr i64 %.sroa.031.1.ph to ptr
  %i.eo = getelementptr inbounds i8, ptr %i.en, i64 -4 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !8  ; 2 uses
  %i.eq = add nsw i32 %i.ep, -1
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !8
  %i.er = icmp slt i32 %i.ep, 2
  br i1 %i.er, label %bb.ag, label %JS_FreeValue.exit87

bb.ag:                                            ; preds = %bb.af
  tail call fastcc void @js_free_value_rt(ptr noundef %i.em, i64 %.sroa.031.1.ph, i64 %.sroa.9.1.ph), !inline_history !143
  br label %JS_FreeValue.exit87

JS_FreeValue.exit87:                              ; preds = %.thread, %bb.af, %bb.ag
  %i.es = phi i32 [ %i.ek, %.thread ], [ %i.el, %bb.af ], [ %i.el, %bb.ag ]
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %bb.ah, label %JS_FreeValue.exit88

.loopexit:                                        ; preds = %.lr.ph.peel.next, %bb.q, %bb.t
  %i.eu = load ptr, ptr %6, align 8, !tbaa !1066
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !1073
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.ey, ptr noundef %i.ew)
  br label %JS_FreeValue.exit88

bb.ah:                                            ; preds = %bb.z, %JS_FreeValue.exit86, %JS_FreeValue.exit87, %JS_FreeValue.exit
  %i.ez = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.fa = trunc i64 %i.cw to i32
  %i.fb = icmp ugt i32 %i.fa, -10
  br i1 %i.fb, label %bb.ai, label %JS_FreeValue.exit88

bb.ai:                                            ; preds = %bb.ah
  %i.fc = inttoptr i64 %i.cv to ptr
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -4 ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8  ; 2 uses
  %i.ff = add nsw i32 %i.fe, -1
  store i32 %i.ff, ptr %i.fd, align 4, !tbaa !8
  %i.fg = icmp slt i32 %i.fe, 2
  br i1 %i.fg, label %bb.aj, label %JS_FreeValue.exit88

bb.aj:                                            ; preds = %bb.ai
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ez, i64 %i.cv, i64 %i.cw), !inline_history !143
  br label %JS_FreeValue.exit88

JS_FreeValue.exit88:                              ; preds = %bb.u, %.loopexit, %bb.aj, %bb.ai, %bb.ah, %bb.y, %JS_FreeValue.exit87
  %.sroa.3.0 = phi i64 [ %i.cv, %bb.y ], [ %i.cv, %JS_FreeValue.exit87 ], [ 0, %bb.aj ], [ 0, %bb.ah ], [ 0, %bb.ai ], [ 0, %.loopexit ], [ 0, %bb.u ]
  %.sroa.479.0 = phi i64 [ %i.cw, %bb.y ], [ %i.cw, %JS_FreeValue.exit87 ], [ 6, %bb.aj ], [ 6, %bb.ah ], [ 6, %bb.ai ], [ 6, %.loopexit ], [ 6, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.3.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.479.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc void @JS_NewGlobalCConstructorMagic(ptr noundef %0, ptr noundef %1, i64 %2, i64 %3, i32 noundef range(i32 50, 62) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call { i64, i64 } @JS_NewCFunction3(ptr noundef %0, ptr noundef nonnull @js_disposable_stack_constructor, ptr noundef %1, i32 noundef 0, i32 noundef 5, i32 noundef %4, ptr noundef nonnull byval(%struct.JSValue) align 8 %i.a, i32 noundef 0), !inline_history !273 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  tail call fastcc void @JS_NewGlobalCConstructor2(ptr noundef %0, i64 %i.c, i64 %i.d, ptr noundef %1, i64 %2, i64 %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_disposable_stack_constructor(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.425) ; 0 uses
  br label %JS_FreeValue.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %5) ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0        ; 4 uses
  %i.f = extractvalue { i64, i64 } %i.d, 1        ; 4 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = icmp eq i64 %i.g, 6
  br i1 %i.h, label %JS_FreeValue.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10
  %i.n = add i64 %i.m, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  %i.q = add i64 %i.p, -1
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %js_arena_malloc.exit.thread, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 600
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 608
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.s
  br i1 %i.v, label %bb.f, label %bb.g, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.w = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.j, i32 noundef 2) ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.g

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.f
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i19 = phi ptr [ %i.w, %bb.f ], [ %i.u, %bb.e ] ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i19, i64 38 ; 2 uses
  %i.y = load i16, ptr %i.x, align 2, !tbaa !38   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i19, i64 40
  %i.aa = zext i16 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab ; 7 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !35
  store i16 %i.ad, ptr %i.x, align 2, !tbaa !38
  store i16 %i.y, ptr %i.ac, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i19, i64 34 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !38
  %i.ag = add i16 %i.af, 1                        ; 2 uses
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i19, i64 36
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !38
  %i.aj = icmp eq i16 %i.ag, %i.ai
  br i1 %i.aj, label %bb.h, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %.0.i19, align 8, !tbaa !41 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i19, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !40
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i19, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.h, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !34
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.k, align 8, !tbaa !34
  %i.ar = load i16, ptr %i.ac, align 8, !tbaa !35
  %i.as = icmp eq i16 %i.ar, -1
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 1064
  %i.au = icmp eq ptr %i.ac, %i.at
  br i1 %i.au, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !36
  %i.ax = tail call i64 %i.aw(ptr noundef nonnull %i.ac) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ax, 0
  %i.ay = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ax
  br label %bb.p

bb.k:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ba = load i8, ptr %i.az, align 2, !tbaa !35
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !38
  %i.be = zext i16 %i.bd to i64
  br label %bb.p

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.d
  %i.bf = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.j, %bb.d ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1256 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.m, label %bb.l

bb.l:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.bg, align 8, !tbaa !57
  %i.bj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.bg, align 8, !tbaa !57
  %.pre24 = load ptr, ptr %i.i, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %js_arena_malloc.exit.thread, %bb.l
  %i.bk = phi ptr [ %i.bf, %js_arena_malloc.exit.thread ], [ %.pre24, %bb.l ]
  %i.bl = trunc i64 %i.f to i32
  %i.bm = icmp ugt i32 %i.bl, -10
  br i1 %i.bm, label %bb.n, label %JS_FreeValue.exit

bb.n:                                             ; preds = %bb.m
  %i.bn = inttoptr i64 %i.e to ptr
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -4 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8  ; 2 uses
  %i.bq = add nsw i32 %i.bp, -1
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !8
  %i.br = icmp slt i32 %i.bp, 2
  br i1 %i.br, label %bb.o, label %JS_FreeValue.exit

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bk, i64 %i.e, i64 %i.f), !inline_history !143
  br label %JS_FreeValue.exit

bb.p:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.011.i.i.i.i = phi i64 [ 8, %bb.i ], [ %i.ay, %bb.j ], [ %i.be, %bb.k ]
  %i.bs = load i64, ptr %i.l, align 8, !tbaa !10
  %i.bt = add i64 %i.bs, %.011.i.i.i.i
  store i64 %i.bt, ptr %i.l, align 8, !tbaa !10
  %i.bu = inttoptr i64 %i.e to ptr
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store ptr %i.ao, ptr %i.bv, align 8, !tbaa !35
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.o, %bb.n, %bb.m, %bb.c, %bb.p, %bb.b
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ %i.e, %bb.p ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.o ]
  %.sroa.718.0 = phi i64 [ 6, %bb.b ], [ 6, %bb.c ], [ %i.f, %bb.p ], [ 6, %bb.m ], [ 6, %bb.n ], [ 6, %bb.o ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.718.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { i64, i64 } @JS_NewDate(ptr noundef %0, double noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 0, i64 3, i32 noundef 10) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = and i64 %i.c, 4294967295                 ; 2 uses
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %JS_SetObjectData.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @llvm.fabs.f64(double %1)
  %or.cond.i = fcmp ugt double %i.f, 8.640000e+15
  br i1 %or.cond.i, label %time_clip.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call double @llvm.trunc.f64(double %1)
  %i.h = fadd double %i.g, 0.000000e+00
  %i.i = bitcast double %i.h to i64
  br label %time_clip.exit

time_clip.exit:                                   ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.i, %bb.c ], [ 9221120237041090560, %bb.b ]
  %i.j = icmp eq i64 %i.d, 4294967295
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %time_clip.exit
  %i.k = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %i.m = load i16, ptr %i.l, align 2, !tbaa !117
  switch i16 %i.m, label %bb.h [
    i16 4, label %bb.e
    i16 5, label %bb.e
    i16 6, label %bb.e
    i16 7, label %bb.e
    i16 10, label %bb.e
    i16 35, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = trunc i64 %i.q to i32
  %i.u = icmp ugt i32 %i.t, -10
  br i1 %i.u, label %bb.f, label %JS_FreeValue.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %i.o to ptr
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !8    ; 2 uses
  %i.y = add nsw i32 %i.x, -1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !8
  %i.z = icmp slt i32 %i.x, 2
  br i1 %i.z, label %bb.g, label %JS_FreeValue.exit.i

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @js_free_value_rt(ptr noundef %i.s, i64 %i.o, i64 %i.q), !inline_history !1162
  br label %JS_FreeValue.exit.i

JS_FreeValue.exit.i:                              ; preds = %bb.g, %bb.f, %bb.e
  store i64 %.0.i, ptr %i.n, align 8, !tbaa !35
  store i64 8, ptr %i.p, align 8, !tbaa !72
  br label %JS_SetObjectData.exit

bb.h:                                             ; preds = %time_clip.exit, %bb.d
  %i.aa = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.241), !inline_history !618 ; 0 uses
  br label %JS_SetObjectData.exit

JS_SetObjectData.exit:                            ; preds = %bb.h, %JS_FreeValue.exit.i, %bb.a
  %.sroa.4.0 = phi i64 [ 6, %bb.a ], [ %i.c, %JS_FreeValue.exit.i ], [ %i.c, %bb.h ]
  %.sroa.08.0.insert.insert = phi i64 [ 0, %bb.a ], [ %i.b, %JS_FreeValue.exit.i ], [ %i.b, %bb.h ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.08.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = and i64 %2, 4294967295
  %i.b = icmp eq i64 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !230
  %i.e = sext i32 %3 to i64
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = trunc i64 %i.i to i32
  %i.k = icmp ugt i32 %i.j, -10
  br i1 %i.k, label %js_dup.exit.sink.split, label %js_dup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = tail call fastcc { i64, i64 } @JS_GetPropertyInternal(ptr noundef %0, i64 %1, i64 %2, i32 noundef 63, i64 %1, i64 %2, i1 noundef zeroext false), !inline_history !272 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0        ; 5 uses
  %i.n = extractvalue { i64, i64 } %i.l, 1        ; 4 uses
  %trunc = trunc i64 %i.n to i32                  ; 2 uses
  switch i32 %trunc, label %bb.e [
    i32 6, label %bb.d
    i32 -1, label %js_dup.exit
  ]

bb.d:                                             ; preds = %bb.c
  %.sroa.435.0.extract.shift36 = and i64 %i.m, -4294967296
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.q = icmp ugt i32 %trunc, -10
  br i1 %i.q, label %bb.f, label %JS_FreeValueRT.exit

bb.f:                                             ; preds = %bb.e
end_hunk_13
begin_hunk_14_@js_new_shape2:bb.a
bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %i.o) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i, label %bb.j, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.z, i8 0, i64 %i.o, i1 false)
  br label %bb.e

js_arena_calloc.exit.i.i.i:                       ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.aa = getelementptr i8, ptr %i.b, i64 64
  %.val11.i.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ab = tail call fastcc ptr @arena_calloc_large(ptr %.val.i.i.i.i, ptr %.val11.i.i.i.i, i64 noundef %i.o) ; 2 uses
  %.not22.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not22.i.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %js_arena_calloc.exit.i.i.i, %js_arena_calloc.exit.thread26.i.i.i
  %.1.i29.i.i.i = phi ptr [ %i.z, %js_arena_calloc.exit.thread26.i.i.i ], [ %i.ab, %js_arena_calloc.exit.i.i.i ] ; 4 uses
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !34
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.p, align 8, !tbaa !34
  %i.ae = getelementptr inbounds i8, ptr %.1.i29.i.i.i, i64 -8 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !35
  %i.ag = icmp eq i16 %i.af, -1
  br i1 %i.ag, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.ai = icmp eq ptr %i.ae, %i.ah
  br i1 %i.ai, label %js_mallocz_rt.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = tail call i64 %i.ak(ptr noundef nonnull %i.ae) #49, !inline_history !1343 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.al, 0
  %i.am = select i1 %.not15.i.i.i.i, i64 8, i64 %i.al
  br label %js_mallocz_rt.exit.i

bb.h:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds i8, ptr %.1.i29.i.i.i, i64 -6
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !35
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !38
  %i.as = zext i16 %i.ar to i64
  br label %js_mallocz_rt.exit.i

js_mallocz_rt.exit.i:                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.am, %bb.g ], [ %i.as, %bb.h ]
  %i.at = load i64, ptr %i.q, align 8, !tbaa !10
  %i.au = add i64 %i.at, %.011.i.i.i.i
  store i64 %i.au, ptr %i.q, align 8, !tbaa !10
  %i.av = load i32, ptr %i.g, align 8, !tbaa !94  ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1448 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !97 ; 2 uses
  br i1 %i.aw, label %.lr.ph37.i, label %._crit_edge38.i

.lr.ph37.i:                                       ; preds = %js_mallocz_rt.exit.i
  %i.az = sub nsw i32 31, %i.k
  %wide.trip.count.i = zext nneg i32 %i.av to i64
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %.lr.ph37.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph37.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !252 ; 2 uses
  %.not3134.i = icmp eq ptr %i.bb, null
  br i1 %.not3134.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %.035.i = phi ptr [ %i.bd, %.lr.ph.i ], [ %i.bb, %bb.i ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.035.i, i64 40 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !252 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.035.i, i64 20
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %i.bg = lshr i32 %i.bf, %i.az
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.1.i29.i.i.i, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !252
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !252
  store ptr %.035.i, ptr %i.bi, align 8, !tbaa !252
  %.not31.i = icmp eq ptr %i.bd, null
  br i1 %.not31.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1344

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge38.i, label %bb.i, !llvm.loop !1345

._crit_edge38.i:                                  ; preds = %._crit_edge.i, %js_mallocz_rt.exit.i
  tail call void @js_free_rt(ptr noundef nonnull %i.b, ptr noundef %i.ay)
  store i32 %i.l, ptr %i.j, align 4, !tbaa !93
  store i32 %i.m, ptr %i.g, align 8, !tbaa !94
  store ptr %.1.i29.i.i.i, ptr %i.ax, align 8, !tbaa !97
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.b, %bb.d, %js_arena_calloc.exit.i.i.i, %._crit_edge38.i
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !50  ; 8 uses
  %i.bl = shl nuw nsw i32 %2, 3
  %narrow = add nuw nsw i32 %i.bl, 72
  %i.bm = zext nneg i32 %narrow to i64            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bq = add i64 %i.bp, %i.bm
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !14
  %i.bt = add i64 %i.bs, -1
  %i.bu = icmp ugt i64 %i.bq, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.bv = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.bk, i64 noundef %i.bm), !inline_history !1346 ; 20 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.k
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bw = load i64, ptr %i.bn, align 8, !tbaa !34
  %i.bx = add i64 %i.bw, 1
  store i64 %i.bx, ptr %i.bn, align 8, !tbaa !34
  %i.by = getelementptr inbounds i8, ptr %i.bv, i64 -8 ; 3 uses
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !35
  %i.ca = icmp eq i16 %i.bz, -1
  br i1 %i.ca, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bk, i64 1064
  %i.cc = icmp eq ptr %i.by, %i.cb
  br i1 %i.cc, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cf = tail call i64 %i.ce(ptr noundef nonnull %i.by) #49, !inline_history !1347 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.cf, 0
  %i.cg = select i1 %.not15.i.i.i, i64 8, i64 %i.cf
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds i8, ptr %i.bv, i64 -6
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !35
  %i.cj = zext i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cj
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !38
  %i.cm = zext i16 %i.cl to i64
  br label %bb.r

bb.p:                                             ; preds = %._crit_edge, %bb.j
  %i.cn = phi ptr [ %.pre, %._crit_edge ], [ %i.bk, %bb.j ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1256 ; 3 uses
  %i.cp = load i8, ptr %i.co, align 8, !tbaa !57, !range !58, !noundef !59
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %js_new_shape_nohash.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.co, align 8, !tbaa !57
  %i.cr = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1348 ; 0 uses
  store i8 0, ptr %i.co, align 8, !tbaa !57
  br label %js_new_shape_nohash.exit.thread

bb.r:                                             ; preds = %bb.m, %bb.n, %bb.o
  %.011.i.i.i = phi i64 [ 8, %bb.m ], [ %i.cg, %bb.n ], [ %i.cm, %bb.o ]
  %i.cs = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.ct = add i64 %i.cs, %.011.i.i.i
  store i64 %i.ct, ptr %i.bo, align 8, !tbaa !10
  %i.cu = getelementptr inbounds i8, ptr %i.bv, i64 -4
  store i32 1, ptr %i.cu, align 4, !tbaa !8
  %i.cv = getelementptr inbounds i8, ptr %i.bv, i64 -5
  store i8 2, ptr %i.cv, align 1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bk, i64 1152 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !41 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.bv, ptr %i.cy, align 8, !tbaa !40
  store ptr %i.cx, ptr %i.bv, align 8, !tbaa !41
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !40
  store ptr %i.bv, ptr %i.cw, align 8, !tbaa !41
  %.not28.i = icmp eq ptr %1, null
  br i1 %.not28.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds i8, ptr %1, i64 -4 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !8
  %i.dc = add nsw i32 %i.db, 1
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %1, ptr %i.dd, align 8, !tbaa !212
  %i.de = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store i32 3, ptr %i.de, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  store i32 %2, ptr %i.dg, align 4, !tbaa !8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store i32 0, ptr %i.dh, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 36
  store i32 0, ptr %i.di, align 4, !tbaa !8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.dk = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = mul i32 %i.dl, 1640531527
  %i.dn = add i32 %i.dm, 1640531527
  %i.do = lshr i64 %i.dk, 32
  %i.dp = trunc nuw i64 %i.do to i32
  %i.dq = add i32 %i.dn, %i.dp
  %i.dr = mul i32 %i.dq, 1640531527               ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bv, i64 20
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !8
  store i8 1, ptr %i.dj, align 8, !tbaa !35
  %i.dt = load ptr, ptr %i.a, align 8, !tbaa !50  ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 1436
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !93
  %i.dw = sub nsw i32 32, %i.dv
  %i.dx = lshr i32 %i.dr, %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 1448
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !97
  %i.ea = zext i32 %i.dx to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ea ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !252
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !252
  store ptr %i.bv, ptr %i.eb, align 8, !tbaa !252
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 1444 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !95
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !95
  br label %js_new_shape_nohash.exit.thread

js_new_shape_nohash.exit.thread:                  ; preds = %bb.q, %bb.p, %bb.t
  %.0 = phi ptr [ %i.bv, %bb.t ], [ null, %bb.p ], [ null, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @free_property(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 64) %2) unnamed_addr #2 {
bb.a:
  %i.a = lshr i32 %2, 4
  switch i32 %i.a, label %default.unreachable25 [
    i32 0, label %bb.i
    i32 1, label %bb.b
    i32 2, label %bb.g
    i32 3, label %bb.h
  ], !prof !511

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !35     ; 3 uses
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %JS_FreeValueRT.exit22, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !8    ; 2 uses
  %i.e = add nsw i32 %i.d, -1
  store i32 %i.e, ptr %i.c, align 4, !tbaa !8
  %i.f = icmp slt i32 %i.d, 2
  br i1 %i.f, label %bb.d, label %JS_FreeValueRT.exit22

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %i.b to i64
  tail call fastcc void @js_free_value_rt(ptr noundef %0, i64 %i.g, i64 -1), !inline_history !146
  br label %JS_FreeValueRT.exit22

JS_FreeValueRT.exit22:                            ; preds = %bb.d, %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 3 uses
  %.not20 = icmp eq ptr %i.i, null
  br i1 %.not20, label %JS_FreeValueRT.exit, label %bb.e

bb.e:                                             ; preds = %JS_FreeValueRT.exit22
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !8
  %i.m = icmp slt i32 %i.k, 2
  br i1 %i.m, label %bb.f, label %JS_FreeValueRT.exit

bb.f:                                             ; preds = %bb.e
  %i.n = ptrtoint ptr %i.i to i64
  tail call fastcc void @js_free_value_rt(ptr noundef %0, i64 %i.n, i64 -1), !inline_history !146
  br label %JS_FreeValueRT.exit

bb.g:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %1, align 8, !tbaa !35
  tail call fastcc void @free_var_ref(ptr noundef %0, ptr noundef %i.o)
  br label %JS_FreeValueRT.exit

bb.h:                                             ; preds = %bb.a
  %.val.i = load i64, ptr %1, align 8, !tbaa !35
  %i.p = and i64 %.val.i, -4
  %i.q = inttoptr i64 %i.p to ptr
  tail call void @JS_FreeContext(ptr noundef %i.q), !inline_history !594
  br label %JS_FreeValueRT.exit

bb.i:                                             ; preds = %bb.a
  %i.r = load i64, ptr %1, align 8                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = trunc i64 %i.t to i32
  %i.v = icmp ugt i32 %i.u, -10
  br i1 %i.v, label %bb.j, label %JS_FreeValueRT.exit

bb.j:                                             ; preds = %bb.i
  %i.w = inttoptr i64 %i.r to ptr
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 2 uses
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !8
  %i.aa = icmp slt i32 %i.y, 2
  br i1 %i.aa, label %bb.k, label %JS_FreeValueRT.exit

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @js_free_value_rt(ptr noundef %0, i64 %i.r, i64 %i.t), !inline_history !146
  br label %JS_FreeValueRT.exit

default.unreachable25:                            ; preds = %bb.a
  unreachable

JS_FreeValueRT.exit:                              ; preds = %bb.f, %bb.e, %bb.k, %bb.j, %bb.i, %JS_FreeValueRT.exit22, %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @add_property(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 0, 56) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 1
  %.not = icmp eq i16 %i.c, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !195

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !230  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.h = icmp eq ptr %1, %i.g
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.k = icmp eq ptr %1, %i.j
  %i.l = icmp slt i32 %2, 0
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %bb.e, label %.critedge, !prof !1349

bb.d:                                             ; preds = %bb.b
  %.old = icmp slt i32 %2, 0
  br i1 %.old, label %bb.e, label %.critedge, !prof !9

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 2147483647
  store i32 %i.o, ptr %i.m, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d, %bb.e, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !186  ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !35
  %.not53 = icmp eq i8 %i.s, 0
  br i1 %.not53, label %bb.w, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 4 uses
  %i.v = getelementptr i8, ptr %i.u, i64 1436
  %.val = load i32, ptr %i.v, align 4, !tbaa !93
  %i.w = getelementptr i8, ptr %i.u, i64 1448
  %.val62 = load ptr, ptr %i.w, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = add i32 %i.y, %2
  %i.aa = mul i32 %i.z, 1640531527
  %i.ab = add i32 %i.aa, %3
  %i.ac = mul i32 %i.ab, 1640531527               ; 2 uses
  %i.ad = sub nsw i32 32, %.val
  %i.ae = lshr i32 %i.ac, %i.ad
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val62, i64 %i.af
  %.0352.i = load ptr, ptr %i.ag, align 8, !tbaa !252 ; 2 uses
  %.not3.i = icmp eq ptr %.0352.i, null
  br i1 %.not3.i, label %.loopexit, label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  br label %bb.g
end_hunk_14
begin_hunk_15_@add_property:bb.a

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.cf, align 8, !tbaa !57
  %i.ci = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !347 ; 0 uses
  store i8 0, ptr %i.cf, align 8, !tbaa !57
  br label %.critedge61

js_realloc.exit:                                  ; preds = %bb.n
  br i1 %.not.i63, label %.critedge61, label %bb.q

bb.q:                                             ; preds = %js_realloc.exit
  store ptr %i.cb, ptr %i.bx, align 8, !tbaa !187
  %.pre = load ptr, ptr %i.t, align 8, !tbaa !50
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %find_hashed_shape_prop.exit
  %i.cj = phi ptr [ %.pre, %bb.q ], [ %i.u, %find_hashed_shape_prop.exit ]
  %i.ck = getelementptr inbounds i8, ptr %.0354.i, i64 -4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !8
  store ptr %.0354.i, ptr %i.p, align 8, !tbaa !186
  %i.cn = getelementptr inbounds i8, ptr %i.q, i64 -4 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !8  ; 2 uses
  %i.cp = add nsw i32 %i.co, -1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !8
  %i.cq = icmp slt i32 %i.co, 2
  br i1 %i.cq, label %bb.s, label %js_free_shape.exit, !prof !9

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @js_free_shape0(ptr noundef %i.cj, ptr noundef nonnull %i.q), !inline_history !261
  br label %js_free_shape.exit

js_free_shape.exit:                               ; preds = %bb.r, %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !187
  %i.ct = load i32, ptr %i.bs, align 8, !tbaa !8
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [16 x i8], ptr %i.cs, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -16
  br label %.critedge61

.loopexit:                                        ; preds = %.loopexit.i, %bb.f
  %i.cx = getelementptr inbounds i8, ptr %i.q, i64 -4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %.not55 = icmp eq i32 %i.cy, 1
  br i1 %.not55, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.loopexit
  %i.cz = tail call fastcc ptr @js_clone_shape(ptr noundef %0, ptr noundef nonnull %i.q) ; 6 uses
  %.not56 = icmp eq ptr %i.cz, null
  br i1 %.not56, label %.critedge61, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store i8 1, ptr %i.da, align 8, !tbaa !35
  %i.db = load ptr, ptr %i.t, align 8, !tbaa !50  ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 1436
  %i.df = load i32, ptr %i.de, align 4, !tbaa !93
  %i.dg = sub nsw i32 32, %i.df
  %i.dh = lshr i32 %i.dd, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 1448
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !97
  %i.dk = zext i32 %i.dh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dk ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !252
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !252
  store ptr %i.cz, ptr %i.dl, align 8, !tbaa !252
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 1444 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !95
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %i.do, align 4, !tbaa !95
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !186 ; 2 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 -4 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8  ; 2 uses
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !8
  %i.dv = icmp slt i32 %i.dt, 2
  br i1 %i.dv, label %bb.v, label %js_free_shape.exit64, !prof !9

bb.v:                                             ; preds = %bb.u
  tail call fastcc void @js_free_shape0(ptr noundef nonnull %i.db, ptr noundef nonnull %i.dr), !inline_history !261
  br label %js_free_shape.exit64

js_free_shape.exit64:                             ; preds = %bb.u, %bb.v
  store ptr %i.cz, ptr %i.p, align 8, !tbaa !186
  br label %bb.w

bb.w:                                             ; preds = %js_free_shape.exit64, %.loopexit, %.critedge
  %i.dw = tail call fastcc i32 @add_shape_property(ptr noundef %0, ptr noundef nonnull %i.p, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %.not57 = icmp eq i32 %i.dw, 0
  br i1 %.not57, label %bb.x, label %.critedge61

bb.x:                                             ; preds = %bb.w
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !187
  %i.dz = load ptr, ptr %i.p, align 8, !tbaa !186
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 32
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !8
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr [16 x i8], ptr %i.dy, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -16
  br label %.critedge61

.critedge61:                                      ; preds = %bb.p, %bb.o, %js_realloc.exit, %bb.w, %bb.t, %bb.x, %js_free_shape.exit
  %.1 = phi ptr [ %i.cw, %js_free_shape.exit ], [ null, %js_realloc.exit ], [ null, %bb.t ], [ %i.ee, %bb.x ], [ null, %bb.w ], [ null, %bb.o ], [ null, %bb.p ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_clone_shape(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = add i32 %i.b, 1
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = sext i32 %i.f to i64
  %i.h = shl nuw nsw i64 %i.d, 2
  %i.i = add nuw nsw i64 %i.h, 56
  %i.j = shl nsw i64 %i.g, 3
  %i.k = add nsw i64 %i.i, %i.j                   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !50   ; 8 uses
  %i.n = icmp eq i64 %i.k, 0
  br i1 %i.n, label %bb.h, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !10
  %i.r = add i64 %i.q, %i.k
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  %i.u = add i64 %i.t, -1
  %i.v = icmp ugt i64 %i.r, %i.u
  br i1 %i.v, label %bb.h, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.w = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.m, i64 noundef %i.k) ; 17 uses
  %.not.i32 = icmp eq ptr %i.w, null
  br i1 %.not.i32, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre40 = load ptr, ptr %i.l, align 8, !tbaa !50
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = load i64, ptr %i.o, align 8, !tbaa !34
  %i.y = add i64 %i.x, 1
  store i64 %i.y, ptr %i.o, align 8, !tbaa !34
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -8 ; 3 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !35
  %i.ab = icmp eq i16 %i.aa, -1
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 1064
  %i.ad = icmp eq ptr %i.z, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !36
  %i.ag = tail call i64 %i.af(ptr noundef nonnull %i.z) #49, !inline_history !174 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.ag, 0
  %i.ah = select i1 %.not15.i.i, i64 8, i64 %i.ag
  br label %bb.j

bb.g:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds i8, ptr %i.w, i64 -6
  %i.aj = load i8, ptr %i.ai, align 2, !tbaa !35
  %i.ak = zext i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !38
  %i.an = zext i16 %i.am to i64
  br label %bb.j

bb.h:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.ao = phi ptr [ %.pre40, %._crit_edge ], [ %i.m, %bb.b ], [ %i.m, %bb.a ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1256 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %js_malloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.ap, align 8, !tbaa !57
  %i.as = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !175 ; 0 uses
  store i8 0, ptr %i.ap, align 8, !tbaa !57
  br label %js_malloc.exit.thread

bb.j:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.011.i.i = phi i64 [ 8, %bb.e ], [ %i.ah, %bb.f ], [ %i.an, %bb.g ]
  %i.at = load i64, ptr %i.p, align 8, !tbaa !10
  %i.au = add i64 %i.at, %.011.i.i
  store i64 %i.au, ptr %i.p, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %1, i64 %i.k, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.w, i64 -4
  store i32 1, ptr %i.av, align 4, !tbaa !8
  %i.aw = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.ax = getelementptr inbounds i8, ptr %i.w, i64 -5
  store i8 2, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 1152 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !41 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.w, ptr %i.ba, align 8, !tbaa !40
  store ptr %i.az, ptr %i.w, align 8, !tbaa !41
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !40
  store ptr %i.w, ptr %i.ay, align 8, !tbaa !41
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i8 0, ptr %i.bc, align 8, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !212 ; 2 uses
  %.not31 = icmp eq ptr %i.be, null
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !8  ; 2 uses
  %.not = icmp eq i32 %i.bj, 0
  br i1 %.not, label %js_malloc.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !8
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %JS_DupAtom.exit
  %i.bp = phi i32 [ %i.cc, %JS_DupAtom.exit ], [ %i.bj, %.lr.ph.preheader ]
  %.02739 = phi i32 [ %i.cd, %JS_DupAtom.exit ], [ 0, %.lr.ph.preheader ]
  %.02838 = phi ptr [ %i.ce, %JS_DupAtom.exit ], [ %i.bo, %.lr.ph.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.02838, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !188 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 242
  br i1 %i.bs, label %JS_DupAtom.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1104
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !154
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !155
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 -4 ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !8
  %.pre = load i32, ptr %i.bi, align 8, !tbaa !8
  br label %JS_DupAtom.exit

JS_DupAtom.exit:                                  ; preds = %.lr.ph, %bb.m
  %i.cc = phi i32 [ %i.bp, %.lr.ph ], [ %.pre, %bb.m ] ; 2 uses
  %i.cd = add nuw i32 %.02739, 1                  ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02838, i64 8
  %i.cf = icmp ult i32 %i.cd, %i.cc
  br i1 %i.cf, label %.lr.ph, label %js_malloc.exit.thread, !llvm.loop !1352

js_malloc.exit.thread:                            ; preds = %JS_DupAtom.exit, %bb.l, %bb.i, %bb.h
  %.0 = phi ptr [ null, %bb.i ], [ null, %bb.h ], [ %i.w, %bb.l ], [ %i.w, %JS_DupAtom.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_shape_property(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 64) %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !252    ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !35
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1436
  %i.i = load i32, ptr %i.h, align 4, !tbaa !93
  %i.j = sub nsw i32 32, %i.i
  %i.k = lshr i32 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1448
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !97
  %i.n = zext i32 %i.k to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi ptr [ %i.o, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.0.i, align 8, !tbaa !252 ; 2 uses
  %.not.i = icmp eq ptr %i.p, %i.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  br i1 %.not.i, label %js_shape_hash_unlink.exit, label %bb.c, !llvm.loop !344

js_shape_hash_unlink.exit:                        ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !252
  store ptr %i.s, ptr %.0.i, align 8, !tbaa !252
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 1444 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !95
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !95
  %i.w = load i32, ptr %i.f, align 4, !tbaa !8
  %i.x = add i32 %i.w, %3
  %i.y = mul i32 %i.x, 1640531527
  %i.z = add i32 %i.y, %4
  %i.aa = mul i32 %i.z, 1640531527
  br label %bb.d

bb.d:                                             ; preds = %js_shape_hash_unlink.exit, %bb.a
  %.0 = phi i32 [ %i.aa, %js_shape_hash_unlink.exit ], [ 0, %bb.a ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !8  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8
  %.not43 = icmp slt i32 %i.ac, %i.ae
  br i1 %.not43, label %bb.i, label %bb.e, !prof !195

bb.e:                                             ; preds = %bb.d
  %i.af = add nsw i32 %i.ac, 1
  %i.ag = tail call fastcc i32 @resize_properties(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %i.af)
  %.not44 = icmp eq i32 %i.ag, 0
  br i1 %.not44, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %i.d, align 8, !tbaa !35
  %.not46 = icmp eq i8 %i.ah, 0
  br i1 %.not46, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 1436
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !93
  %i.am = sub nsw i32 32, %i.al
  %i.an = lshr i32 %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 1448
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !97
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !252
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %i.as, ptr %i.at, align 8, !tbaa !252
  store ptr %i.c, ptr %i.ar, align 8, !tbaa !252
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 1444 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !95
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !95
  br label %bb.m

bb.h:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %1, align 8, !tbaa !252
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.040 = phi ptr [ %i.ax, %bb.h ], [ %i.c, %bb.d ] ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.040, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !35
  %.not45 = icmp eq i8 %i.az, 0
  br i1 %.not45, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.040, i64 20
  store i32 %.0, ptr %i.ba, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1436
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !93
  %i.bd = sub nsw i32 32, %i.bc
  %i.be = lshr i32 %.0, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 1448
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !97
  %i.bh = zext i32 %i.be to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !252
  %i.bk = getelementptr inbounds nuw i8, ptr %.040, i64 40
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !252
  store ptr %.040, ptr %i.bi, align 8, !tbaa !252
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 1444 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !95
  %i.bn = add nsw i32 %i.bm, 1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !95
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.040, i64 24 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !8
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.040, i64 %i.bq
end_hunk_15
begin_hunk_16_@string_buffer_widen:bb.a
  %i.l = icmp ne i64 %i.h, 0
  %i.m = and i1 %i.l, %.not.i
  br i1 %i.m, label %bb.c, label %js_realloc.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1256 ; 3 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !57, !range !58, !noundef !59
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %js_realloc.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.o, align 8, !tbaa !57
  %i.r = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.46), !inline_history !347 ; 0 uses
  store i8 0, ptr %i.o, align 8, !tbaa !57
  br label %js_realloc.exit.thread

js_realloc.exit:                                  ; preds = %bb.b
  br i1 %.not.i, label %js_realloc.exit.thread, label %bb.e

js_realloc.exit.thread:                           ; preds = %bb.d, %bb.c, %js_realloc.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !1066
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !1073
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.v, ptr noundef %i.t)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i32 -1, ptr %i.a, align 4, !tbaa !1071
  br label %bb.j

bb.e:                                             ; preds = %js_realloc.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1069 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ab = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %str16.exit
  %indvars.iv = phi i64 [ %i.ab, %.lr.ph ], [ %indvars.iv.next, %str16.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.ac = load i64, ptr %i.k, align 8
  %i.ad = lshr i64 %i.ac, 60
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = and i32 %i.ae, 3
  switch i32 %i.af, label %default.unreachable [
    i32 0, label %str16.exit
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  tail call void @abort() #50
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !292
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i32, ptr %i.aa, align 8, !tbaa !294
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  br label %str16.exit

bb.i:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %i.z, align 8, !tbaa !71
  br label %str16.exit

str16.exit:                                       ; preds = %bb.f, %bb.h, %bb.i
  %.sink = phi ptr [ %i.al, %bb.i ], [ %i.ak, %bb.h ], [ %i.z, %bb.f ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sink, i64 %indvars.iv.next
  %.in = load i8, ptr %i.am, align 1, !tbaa !35
  %i.an = zext i8 %.in to i16
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.sink, i64 %indvars.iv.next
  store i16 %i.an, ptr %i.ao, align 2, !tbaa !38
  %i.ap = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ap, label %bb.f, label %._crit_edge, !llvm.loop !1476

._crit_edge:                                      ; preds = %str16.exit, %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 1, ptr %i.aq, align 8, !tbaa !1070
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %1, ptr %i.ar, align 4, !tbaa !1068
  store ptr %i.k, ptr %i.d, align 8, !tbaa !1073
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %._crit_edge, %js_realloc.exit.thread
  %.017 = phi i32 [ -1, %js_realloc.exit.thread ], [ 0, %._crit_edge ], [ -1, %bb.a ]
  ret i32 %.017
}

declare i32 @js_dtoa_max_len(double noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #14

declare i32 @js_dtoa(ptr noundef, double noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_bigint_to_string1(ptr noundef %0, i64 %1, i64 %2, i32 noundef range(i32 0, -2147483648) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.JSBigIntBuf, align 4        ; 5 uses
  %i.a = alloca [66 x i8], align 16               ; 4 uses
  %i.b = and i64 %2, 4294967295
  %i.c = icmp eq i64 %i.b, 7
  br i1 %i.c, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %sext = shl i64 %1, 32
  %i.d = ashr exact i64 %sext, 32
  %i.e = call i64 @i64toa_radix(ptr noundef nonnull %i.a, i64 noundef %i.d, i32 noundef %3) #49 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 8 uses
  %sext224 = shl i64 %i.e, 32
  %i.h = ashr exact i64 %sext224, 32              ; 3 uses
  %i.i = add nsw i64 %i.h, 25                     ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !10
  %i.n = add i64 %i.m, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !14
  %i.q = add i64 %i.p, -1
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.i, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.s = call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.g, i64 noundef %i.i), !inline_history !305 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %._crit_edge262, label %bb.e

._crit_edge262:                                   ; preds = %bb.d
  %.pre263 = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.k, align 8, !tbaa !34
  %i.u = add i64 %i.t, 1
  store i64 %i.u, ptr %i.k, align 8, !tbaa !34
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -8 ; 3 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !35
  %i.x = icmp eq i16 %i.w, -1
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 1064
  %i.z = icmp eq ptr %i.v, %i.y
  br i1 %i.z, label %str8.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = call i64 %i.ab(ptr noundef nonnull %i.v) #49, !inline_history !306 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.ac, 0
  %i.ad = select i1 %.not15.i.i.i.i, i64 8, i64 %i.ac
  br label %str8.exit

bb.h:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 -6
  %i.af = load i8, ptr %i.ae, align 2, !tbaa !35
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !38
  %i.aj = zext i16 %i.ai to i64
  br label %str8.exit

bb.i:                                             ; preds = %._crit_edge262, %bb.c, %bb.b
  %i.ak = phi ptr [ %.pre263, %._crit_edge262 ], [ %i.g, %bb.c ], [ %i.g, %bb.b ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1256 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !57, !range !58, !noundef !59
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %js_new_string8_len.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.al, align 8, !tbaa !57
  %i.ao = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !307 ; 0 uses
  store i8 0, ptr %i.al, align 8, !tbaa !57
  br label %js_new_string8_len.exit

str8.exit:                                        ; preds = %bb.f, %bb.g, %bb.h
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.ad, %bb.g ], [ %i.aj, %bb.h ]
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !10
  %i.aq = add i64 %i.ap, %.011.i.i.i.i
  store i64 %i.aq, ptr %i.l, align 8, !tbaa !10
  %i.ar = getelementptr inbounds i8, ptr %i.s, i64 -4
  store i32 1, ptr %i.ar, align 4, !tbaa !8
  %i.as = and i64 %i.e, 2147483647
  store i64 %i.as, ptr %i.s, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 0, ptr %i.at, align 8, !tbaa !80
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 16 %i.a, i64 %i.h, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.h
  store i8 0, ptr %i.av, align 1, !tbaa !35
  %i.aw = ptrtoint ptr %i.s to i64
  br label %js_new_string8_len.exit

js_new_string8_len.exit:                          ; preds = %bb.i, %bb.j, %str8.exit
  %.sroa.0.0.i = phi i64 [ %i.aw, %str8.exit ], [ 0, %bb.j ], [ 0, %bb.i ] ; 2 uses
  %.sroa.4.0.i = phi i64 [ -7, %str8.exit ], [ 6, %bb.j ], [ 6, %bb.i ]
  %.sroa.7.0.extract.shift = and i64 %.sroa.0.0.i, -4294967296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %js_bigint_new.exit.thread

bb.k:                                             ; preds = %bb.a
  %i.ax = inttoptr i64 %1 to ptr                  ; 6 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8  ; 7 uses
  %i.az = icmp eq i32 %i.ay, 1
  br i1 %i.az, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !50 ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 40 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 48 ; 3 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !10
  %i.bi = add i64 %i.bh, 26
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !14
  %i.bl = add i64 %i.bk, -1
  %i.bm = icmp ugt i64 %i.bi, %i.bl
  br i1 %i.bm, label %js_arena_malloc.exit.thread, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 616
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 624
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !40 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bn
  br i1 %i.bq, label %bb.o, label %bb.p, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.br = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.be, i32 noundef 3) ; 2 uses
  %.not.i196 = icmp eq ptr %i.br, null
  br i1 %.not.i196, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.p

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.o
  %.pre261 = load ptr, ptr %i.bd, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i194 = phi ptr [ %i.br, %bb.o ], [ %i.bp, %bb.n ] ; 7 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i194, i64 38 ; 2 uses
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !38 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i194, i64 40
  %i.bv = zext i16 %i.bt to i64
  %i.bw = mul nuw nsw i64 %i.bv, 40
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw ; 11 uses
  %i.by = load i16, ptr %i.bx, align 8, !tbaa !35
  store i16 %i.by, ptr %i.bs, align 2, !tbaa !38
  store i16 %i.bt, ptr %i.bx, align 8, !tbaa !35
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i194, i64 34 ; 2 uses
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !38
  %i.cb = add i16 %i.ca, 1                        ; 2 uses
  store i16 %i.cb, ptr %i.bz, align 2, !tbaa !38
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i194, i64 36
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !38
  %i.ce = icmp eq i16 %i.cb, %i.cd
  br i1 %i.ce, label %bb.q, label %bb.r, !prof !9

bb.q:                                             ; preds = %bb.p
  %i.cf = load ptr, ptr %.0.i194, align 8, !tbaa !41 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i194, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !40
  store ptr %i.cf, ptr %i.ch, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i194, i8 0, i64 16, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.ck = load i64, ptr %i.bf, align 8, !tbaa !34
  %i.cl = add i64 %i.ck, 1
  store i64 %i.cl, ptr %i.bf, align 8, !tbaa !34
  %i.cm = load i16, ptr %i.bx, align 8, !tbaa !35
  %i.cn = icmp eq i16 %i.cm, -1
  br i1 %i.cn, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.be, i64 1064
  %i.cp = icmp eq ptr %i.bx, %i.co
  br i1 %i.cp, label %str8.exit158, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !36
  %i.cs = tail call i64 %i.cr(ptr noundef nonnull %i.bx) #49, !inline_history !306 ; 2 uses
  %.not15.i.i.i.i169 = icmp eq i64 %i.cs, 0
  %i.ct = select i1 %.not15.i.i.i.i169, i64 8, i64 %i.cs
  br label %str8.exit158

bb.u:                                             ; preds = %bb.r
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bx, i64 2
  %i.cv = load i8, ptr %i.cu, align 2, !tbaa !35
  %i.cw = zext i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !38
  %i.cz = zext i16 %i.cy to i64
  br label %str8.exit158

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.m
  %i.da = phi ptr [ %.pre261, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.be, %bb.m ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 1256 ; 3 uses
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !57, !range !58, !noundef !59
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %js_new_string8_len.exit125, label %bb.v

bb.v:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.db, align 8, !tbaa !57
  %i.de = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !307 ; 0 uses
  store i8 0, ptr %i.db, align 8, !tbaa !57
  br label %js_new_string8_len.exit125

str8.exit158:                                     ; preds = %bb.s, %bb.t, %bb.u
  %.011.i.i.i.i163 = phi i64 [ 8, %bb.s ], [ %i.ct, %bb.t ], [ %i.cz, %bb.u ]
  %i.df = load i64, ptr %i.bg, align 8, !tbaa !10
  %i.dg = add i64 %i.df, %.011.i.i.i.i163
  store i64 %i.dg, ptr %i.bg, align 8, !tbaa !10
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 1, ptr %i.dh, align 4, !tbaa !8
  store i64 1, ptr %i.cj, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store i32 0, ptr %i.di, align 8, !tbaa !80
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i8 48, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bx, i64 33
  store i8 0, ptr %i.dk, align 1, !tbaa !35
  %i.dl = ptrtoint ptr %i.cj to i64
  br label %js_new_string8_len.exit125

js_new_string8_len.exit125:                       ; preds = %js_arena_malloc.exit.thread, %bb.v, %str8.exit158
  %.sroa.0.0.i121 = phi i64 [ %i.dl, %str8.exit158 ], [ 0, %bb.v ], [ 0, %js_arena_malloc.exit.thread ] ; 2 uses
  %.sroa.4.0.i122 = phi i64 [ -7, %str8.exit158 ], [ 6, %bb.v ], [ 6, %js_arena_malloc.exit.thread ]
  %.sroa.7.0.extract.shift100 = and i64 %.sroa.0.0.i121, -4294967296
  br label %js_bigint_new.exit.thread

bb.w:                                             ; preds = %bb.l, %bb.k
  %i.dm = add nsw i32 %3, -1
  %i.dn = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %3)
  %i.do = icmp samesign ult i32 %i.dn, 2          ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.dq = add i32 %i.ay, -1
  %i.dr = zext i32 %i.dq to i64                   ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8  ; 2 uses
  %i.du = lshr i32 %i.dt, 31                      ; 2 uses
  %.not = icmp sgt i32 %i.dt, -1                  ; 2 uses
  br i1 %.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  store i32 1, ptr %4, align 4, !tbaa !8
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %i.dv, align 4, !tbaa !8
  %i.dw = call fastcc ptr @js_bigint_add(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.ax, i32 noundef 1), !inline_history !1477 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  %.not117 = icmp eq ptr %i.dw, null
  br i1 %.not117, label %js_bigint_new.exit.thread, label %._crit_edge254

._crit_edge254:                                   ; preds = %bb.x
  %.pre255 = load i32, ptr %i.dw, align 4, !tbaa !8 ; 2 uses
  %.pre264 = add i32 %.pre255, -1
  %.pre265 = zext i32 %.pre264 to i64
  br label %bb.al

bb.y:                                             ; preds = %bb.w
  br i1 %i.do, label %bb.al, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = icmp sgt i32 %i.ay, 32768
  br i1 %i.dx, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dy = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !1453 ; 0 uses
  br label %js_bigint_new.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.dz = sext i32 %i.ay to i64
  %i.ea = shl nsw i64 %i.dz, 2
  %i.eb = add nsw i64 %i.ea, 4                    ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !50 ; 8 uses
  %i.ee = icmp eq i64 %i.eb, 0
  br i1 %i.ee, label %bb.ai, label %bb.ac, !prof !9

bb.ac:                                            ; preds = %bb.ab
end_hunk_16
begin_hunk_17_@js_bigint_to_string1:bb.a

bb.bb:                                            ; preds = %bb.bb, %.preheader16.i
  %.114.i = phi i64 [ %i.jn, %bb.bb ], [ %i.jf, %.preheader16.i ] ; 3 uses
  %.1.i = phi ptr [ %i.jq, %bb.bb ], [ %.0106, %.preheader16.i ]
  %i.jm = urem i64 %.114.i, %i.jg
  %i.jn = udiv i64 %.114.i, %i.jg
  %i.jo = getelementptr inbounds nuw i8, ptr @digits, i64 %i.jm
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !35
  %i.jq = getelementptr inbounds i8, ptr %.1.i, i64 -1 ; 3 uses
  store i8 %i.jp, ptr %i.jq, align 1, !tbaa !35
  %.not.i138 = icmp samesign ult i64 %.114.i, %i.jg
  br i1 %.not.i138, label %js_u64toa.exit, label %bb.bb, !llvm.loop !1481

js_mp_div1.exit:                                  ; preds = %.critedge, %._crit_edge.loopexit.i, %.split.preheader
  %.1230 = phi i32 [ 1, %.split.preheader ], [ %.0105, %.critedge ], [ %.1231, %._crit_edge.loopexit.i ]
  %phi.call = phi i32 [ %i.je, %.split.preheader ], [ 0, %.critedge ], [ %i.ja, %._crit_edge.loopexit.i ] ; 2 uses
  %i.jr = load i8, ptr %i.ic, align 1, !tbaa !35  ; 2 uses
  %i.js = zext i8 %i.jr to i32                    ; 3 uses
  br i1 %i.id, label %.lr.ph30.i, label %.lr.ph.i141.preheader

.lr.ph.i141.preheader:                            ; preds = %js_mp_div1.exit
  %xtraiter = and i32 %i.js, 1
  %unroll_iter = and i32 %i.js, 254
  br label %.lr.ph.i141

.lr.ph30.i:                                       ; preds = %js_mp_div1.exit, %.lr.ph30.i
  %.029.i = phi i32 [ %i.jy, %.lr.ph30.i ], [ 0, %js_mp_div1.exit ]
  %.01728.i = phi ptr [ %i.jx, %.lr.ph30.i ], [ %.0106, %js_mp_div1.exit ]
  %.01927.i = phi i32 [ %i.ju, %.lr.ph30.i ], [ %phi.call, %js_mp_div1.exit ] ; 2 uses
  %i.jt = urem i32 %.01927.i, 10
  %i.ju = udiv i32 %.01927.i, 10
  %i.jv = trunc nuw nsw i32 %i.jt to i8
  %i.jw = or disjoint i8 %i.jv, 48
  %i.jx = getelementptr inbounds i8, ptr %.01728.i, i64 -1 ; 3 uses
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !35
  %i.jy = add nuw nsw i32 %.029.i, 1              ; 2 uses
  %exitcond35.not.i = icmp eq i32 %i.jy, %i.js
  br i1 %exitcond35.not.i, label %js_limb_to_a.exit.backedge, label %.lr.ph30.i, !llvm.loop !1482

.lr.ph.i141:                                      ; preds = %.lr.ph.i141, %.lr.ph.i141.preheader
  %.11825.i = phi ptr [ %.0106, %.lr.ph.i141.preheader ], [ %i.kk, %.lr.ph.i141 ] ; 2 uses
  %.12024.i = phi i32 [ %phi.call, %.lr.ph.i141.preheader ], [ %i.kg, %.lr.ph.i141 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i141.preheader ], [ %niter.next.1, %.lr.ph.i141 ]
  %i.jz = urem i32 %.12024.i, %3
  %i.ka = udiv i32 %.12024.i, %3                  ; 2 uses
  %i.kb = zext nneg i32 %i.jz to i64
  %i.kc = getelementptr inbounds nuw i8, ptr @digits, i64 %i.kb
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !35
  %i.ke = getelementptr inbounds i8, ptr %.11825.i, i64 -1
  store i8 %i.kd, ptr %i.ke, align 1, !tbaa !35
  %i.kf = urem i32 %i.ka, %3
  %i.kg = udiv i32 %i.ka, %3                      ; 2 uses
  %i.kh = zext nneg i32 %i.kf to i64
  %i.ki = getelementptr inbounds nuw i8, ptr @digits, i64 %i.kh
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !35
  %i.kk = getelementptr inbounds i8, ptr %.11825.i, i64 -2 ; 4 uses
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !35
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %js_limb_to_a.exit.loopexit314.unr-lcssa, label %.lr.ph.i141, !llvm.loop !1483

.lr.ph240:                                        ; preds = %.preheader, %bb.be
  %.0104239 = phi i32 [ %i.lh, %bb.be ], [ 0, %.preheader ] ; 2 uses
  %.2238 = phi ptr [ %i.lg, %bb.be ], [ %i.hu, %.preheader ]
  %i.kl = mul nuw nsw i32 %.0104239, %i.ft        ; 2 uses
  %i.km = lshr i32 %i.kl, 5                       ; 2 uses
  %i.kn = and i32 %i.kl, 31                       ; 3 uses
  %i.ko = zext nneg i32 %i.km to i64
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.ko
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !8
  %i.kr = lshr i32 %i.kq, %i.kn                   ; 3 uses
  %i.ks = icmp samesign ugt i32 %i.kn, %invariant.op
  br i1 %i.ks, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.lr.ph240
  %i.kt = add nuw nsw i32 %i.km, 1                ; 2 uses
  %i.ku = load i32, ptr %.0109, align 4, !tbaa !8
  %i.kv = icmp ult i32 %i.kt, %i.ku
  br i1 %i.kv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.kw = zext nneg i32 %i.kt to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.fv, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !8
  %i.kz = sub nuw nsw i32 32, %i.kn
  %i.la = shl i32 %i.ky, %i.kz
  %i.lb = or disjoint i32 %i.la, %i.kr
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.lr.ph240
  %.0 = phi i32 [ %i.lb, %bb.bd ], [ %i.kr, %bb.bc ], [ %i.kr, %.lr.ph240 ]
  %i.lc = and i32 %.0, %i.dm
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw i8, ptr @digits, i64 %i.ld
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !35
  %i.lg = getelementptr inbounds i8, ptr %.2238, i64 -1 ; 3 uses
  store i8 %i.lf, ptr %i.lg, align 1, !tbaa !35
  %i.lh = add nuw nsw i32 %.0104239, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.lh, %i.gc
  br i1 %exitcond.not, label %js_u64toa.exit, label %.lr.ph240, !llvm.loop !1484

js_u64toa.exit:                                   ; preds = %bb.bb, %.preheader.i, %bb.be, %.preheader, %bb.az
  %.3 = phi ptr [ %.0106, %bb.az ], [ %i.lg, %bb.be ], [ %i.jl, %.preheader.i ], [ %i.hu, %.preheader ], [ %i.jq, %bb.bb ] ; 2 uses
  br i1 %.not, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %js_u64toa.exit
  %i.li = getelementptr inbounds i8, ptr %.3, i64 -1 ; 2 uses
  store i8 45, ptr %i.li, align 1, !tbaa !35
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %js_u64toa.exit
  %.4 = phi ptr [ %i.li, %bb.bf ], [ %.3, %js_u64toa.exit ] ; 2 uses
  %i.lj = load ptr, ptr %i.gg, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.lj, ptr noundef %.0108)
  %i.lk = ptrtoint ptr %i.hu to i64
  %i.ll = ptrtoint ptr %.4 to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = load ptr, ptr %i.gg, align 8, !tbaa !50 ; 8 uses
  %sext223 = shl i64 %i.lm, 32
  %i.lo = ashr exact i64 %sext223, 32             ; 3 uses
  %i.lp = add nsw i64 %i.lo, 25                   ; 3 uses
  %i.lq = icmp eq i64 %i.lp, 0
  br i1 %i.lq, label %bb.bn, label %bb.bh, !prof !9

bb.bh:                                            ; preds = %bb.bg
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ln, i64 40 ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 48 ; 3 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !10
  %i.lu = add i64 %i.lt, %i.lp
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ln, i64 56
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !14
  %i.lx = add i64 %i.lw, -1
  %i.ly = icmp ugt i64 %i.lu, %i.lx
  br i1 %i.ly, label %bb.bn, label %bb.bi, !prof !9

bb.bi:                                            ; preds = %bb.bh
  %i.lz = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ln, i64 noundef %i.lp), !inline_history !305 ; 8 uses
  %.not.i.i.i184 = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i184, label %._crit_edge256, label %bb.bj

._crit_edge256:                                   ; preds = %bb.bi
  %.pre257 = load ptr, ptr %i.gg, align 8, !tbaa !50
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.ma = load i64, ptr %i.lr, align 8, !tbaa !34
  %i.mb = add i64 %i.ma, 1
  store i64 %i.mb, ptr %i.lr, align 8, !tbaa !34
  %i.mc = getelementptr inbounds i8, ptr %i.lz, i64 -8 ; 3 uses
  %i.md = load i16, ptr %i.mc, align 8, !tbaa !35
  %i.me = icmp eq i16 %i.md, -1
  br i1 %i.me, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ln, i64 1064
  %i.mg = icmp eq ptr %i.mc, %i.mf
  br i1 %i.mg, label %str8.exit180, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.mh = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !36
  %i.mj = tail call i64 %i.mi(ptr noundef nonnull %i.mc) #49, !inline_history !306 ; 2 uses
  %.not15.i.i.i.i191 = icmp eq i64 %i.mj, 0
  %i.mk = select i1 %.not15.i.i.i.i191, i64 8, i64 %i.mj
  br label %str8.exit180

bb.bm:                                            ; preds = %bb.bj
  %i.ml = getelementptr inbounds i8, ptr %i.lz, i64 -6
  %i.mm = load i8, ptr %i.ml, align 2, !tbaa !35
  %i.mn = zext i8 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.mn
  %i.mp = load i16, ptr %i.mo, align 2, !tbaa !38
  %i.mq = zext i16 %i.mp to i64
  br label %str8.exit180

bb.bn:                                            ; preds = %._crit_edge256, %bb.bh, %bb.bg
  %i.mr = phi ptr [ %.pre257, %._crit_edge256 ], [ %i.ln, %bb.bh ], [ %i.ln, %bb.bg ]
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 1256 ; 3 uses
  %i.mt = load i8, ptr %i.ms, align 8, !tbaa !57, !range !58, !noundef !59
  %i.mu = trunc nuw i8 %i.mt to i1
  br i1 %i.mu, label %js_new_string8_len.exit149, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  store i8 1, ptr %i.ms, align 8, !tbaa !57
  %i.mv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !307 ; 0 uses
  store i8 0, ptr %i.ms, align 8, !tbaa !57
  br label %js_new_string8_len.exit149

str8.exit180:                                     ; preds = %bb.bk, %bb.bl, %bb.bm
  %.011.i.i.i.i185 = phi i64 [ 8, %bb.bk ], [ %i.mk, %bb.bl ], [ %i.mq, %bb.bm ]
  %i.mw = load i64, ptr %i.ls, align 8, !tbaa !10
  %i.mx = add i64 %i.mw, %.011.i.i.i.i185
  store i64 %i.mx, ptr %i.ls, align 8, !tbaa !10
  %i.my = getelementptr inbounds i8, ptr %i.lz, i64 -4
  store i32 1, ptr %i.my, align 4, !tbaa !8
  %i.mz = and i64 %i.lm, 2147483647
  store i64 %i.mz, ptr %i.lz, align 8
  %i.na = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store i32 0, ptr %i.na, align 8, !tbaa !80
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lz, i64 24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr align 1 %.4, i64 %i.lo, i1 false)
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 %i.lo
  store i8 0, ptr %i.nc, align 1, !tbaa !35
  %i.nd = ptrtoint ptr %i.lz to i64
  br label %js_new_string8_len.exit149

js_new_string8_len.exit149:                       ; preds = %bb.bn, %bb.bo, %str8.exit180
  %.sroa.0.0.i145 = phi i64 [ %i.nd, %str8.exit180 ], [ 0, %bb.bo ], [ 0, %bb.bn ] ; 2 uses
  %.sroa.4.0.i146 = phi i64 [ -7, %str8.exit180 ], [ 6, %bb.bo ], [ 6, %bb.bn ]
  %i.ne = load ptr, ptr %i.gg, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.ne, ptr noundef nonnull %i.gr)
  %.sroa.7.0.extract.shift102 = and i64 %.sroa.0.0.i145, -4294967296
  br label %js_bigint_new.exit.thread

js_bigint_new.exit.thread:                        ; preds = %bb.ai, %bb.aj, %bb.aa, %js_new_string8_len.exit125, %bb.au, %js_new_string8_len.exit149, %bb.x, %js_new_string8_len.exit
  %.sroa.097.1 = phi i64 [ %.sroa.0.0.i, %js_new_string8_len.exit ], [ %.sroa.0.0.i121, %js_new_string8_len.exit125 ], [ %.sroa.0.0.i145, %js_new_string8_len.exit149 ], [ 0, %bb.au ], [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %.sroa.7.1 = phi i64 [ %.sroa.7.0.extract.shift, %js_new_string8_len.exit ], [ %.sroa.7.0.extract.shift100, %js_new_string8_len.exit125 ], [ %.sroa.7.0.extract.shift102, %js_new_string8_len.exit149 ], [ 0, %bb.au ], [ 0, %bb.x ], [ 0, %bb.aa ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %.sroa.10.1 = phi i64 [ %.sroa.4.0.i, %js_new_string8_len.exit ], [ %.sroa.4.0.i122, %js_new_string8_len.exit125 ], [ %.sroa.4.0.i146, %js_new_string8_len.exit149 ], [ 6, %bb.au ], [ 6, %bb.x ], [ 6, %bb.aa ], [ 6, %bb.aj ], [ 6, %bb.ai ]
  %.sroa.097.0.insert.ext = and i64 %.sroa.097.1, 4294967295
  %.sroa.097.0.insert.insert = or disjoint i64 %.sroa.7.1, %.sroa.097.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.097.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.10.1, 1
  ret { i64, i64 } %.fca.1.insert
}

declare i64 @i64toa_radix(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_new_si(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !10
  %i.f = add i64 %i.e, 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !14
  %i.i = add i64 %i.h, -1
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %js_arena_malloc.exit.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 568
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 576
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.o = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.b, i32 noundef 0) ; 2 uses
  %.not.i10 = icmp eq ptr %i.o, null
  br i1 %.not.i10, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.d

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i9 = phi ptr [ %i.o, %bb.c ], [ %i.m, %bb.b ] ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i9, i64 38 ; 2 uses
  %i.q = load i16, ptr %i.p, align 2, !tbaa !38   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i9, i64 40
  %i.s = zext i16 %i.q to i64
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t ; 9 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  store i16 %i.v, ptr %i.p, align 2, !tbaa !38
  store i16 %i.q, ptr %i.u, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i9, i64 34 ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !38
  %i.y = add i16 %i.x, 1                          ; 2 uses
  store i16 %i.y, ptr %i.w, align 2, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i9, i64 36
  %i.aa = load i16, ptr %i.z, align 4, !tbaa !38
  %i.ab = icmp eq i16 %i.y, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %.0.i9, align 8, !tbaa !41 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i9, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !40 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !40
  store ptr %i.ac, ptr %i.ae, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i9, i8 0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.ah = load i64, ptr %i.c, align 8, !tbaa !34
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.c, align 8, !tbaa !34
  %i.aj = load i16, ptr %i.u, align 8, !tbaa !35
  %i.ak = icmp eq i16 %i.aj, -1
  br i1 %i.ak, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.am = icmp eq ptr %i.u, %i.al
  br i1 %i.am, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull %i.u) #49, !inline_history !1455 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ap, 0
  %i.aq = select i1 %.not15.i.i.i, i64 8, i64 %i.ap
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.as = load i8, ptr %i.ar, align 2, !tbaa !35
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !38
  %i.aw = zext i16 %i.av to i64
  br label %bb.k

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.a
  %i.ax = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.b, %bb.a ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 1256 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %js_bigint_new.exit.thread, label %bb.j

bb.j:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.ay, align 8, !tbaa !57
  %i.bb = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1456 ; 0 uses
  store i8 0, ptr %i.ay, align 8, !tbaa !57
  br label %js_bigint_new.exit.thread

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.aq, %bb.h ], [ %i.aw, %bb.i ]
  %i.bc = load i64, ptr %i.d, align 8, !tbaa !10
  %i.bd = add i64 %i.bc, %.011.i.i.i
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !10
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.be, align 4, !tbaa !8
  store i32 1, ptr %i.ag, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 %1, ptr %i.bf, align 4, !tbaa !8
  br label %js_bigint_new.exit.thread

js_bigint_new.exit.thread:                        ; preds = %bb.j, %js_arena_malloc.exit.thread, %bb.k
  %.0 = phi ptr [ %i.ag, %bb.k ], [ null, %js_arena_malloc.exit.thread ], [ null, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @JS_ToBigIntFree(ptr noundef %0, i64 %1, i64 %2) unnamed_addr #2 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.13.0 = phi i64 [ %2, %bb.a ], [ %.sroa.13.0.be, %.backedge.backedge ] ; 5 uses
  %.sroa.09.sroa.13.0.in.in = phi i64 [ %1, %bb.a ], [ %.sroa.09.sroa.13.0.in.in.be, %.backedge.backedge ] ; 6 uses
  %i.a = trunc i64 %.sroa.13.0 to i32             ; 2 uses
  switch i32 %i.a, label %bb.d [
    i32 7, label %.loopexit
    i32 -9, label %.loopexit
    i32 -1, label %bb.c
    i32 -6, label %bb.b
    i32 -7, label %bb.b
    i32 1, label %.loopexit122
  ]

bb.b:                                             ; preds = %.backedge, %.backedge
  %i.b = tail call fastcc { i64, i64 } @JS_StringToBigInt(ptr noundef %0, i64 %.sroa.09.sroa.13.0.in.in, i64 %.sroa.13.0), !inline_history !1213 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0        ; 3 uses
  %i.d = extractvalue { i64, i64 } %i.b, 1        ; 4 uses
  %.not.i = icmp eq i64 %i.d, 8
  %i.e = and i64 %i.c, 9223372036854775807
  %i.f = icmp samesign ugt i64 %i.e, 9218868437227405312
  %.0.i = select i1 %.not.i, i1 %i.f, i1 false
  br i1 %.0.i, label %JS_StringToBigIntErr.exit.thread, label %JS_StringToBigIntErr.exit

JS_StringToBigIntErr.exit.thread:                 ; preds = %bb.b
  %i.g = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.152), !inline_history !1213 ; 0 uses
  br label %.loopexit91

JS_StringToBigIntErr.exit:                        ; preds = %bb.b
  %i.h = and i64 %i.d, 4294967295
  %i.i = icmp eq i64 %i.h, 6
  br i1 %i.i, label %.loopexit91, label %.backedge.backedge

.backedge.backedge:                               ; preds = %JS_StringToBigIntErr.exit, %bb.c
  %.sroa.13.0.be = phi i64 [ %i.l, %bb.c ], [ %i.d, %JS_StringToBigIntErr.exit ]
  %.sroa.09.sroa.13.0.in.in.be = phi i64 [ %i.k, %bb.c ], [ %i.c, %JS_StringToBigIntErr.exit ]
  br label %.backedge

bb.c:                                             ; preds = %.backedge
  %i.j = tail call fastcc { i64, i64 } @JS_ToPrimitiveFree(ptr noundef %0, i64 %.sroa.09.sroa.13.0.in.in, i64 %.sroa.13.0, i32 noundef 1) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 3 uses
  %i.m = and i64 %i.l, 4294967295
  %i.n = icmp eq i64 %i.m, 6
  br i1 %i.n, label %.loopexit91, label %.backedge.backedge

bb.d:                                             ; preds = %.backedge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_17
begin_hunk_18_@js_math_pow:bb.a

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call double @pow(double noundef %0, double noundef %1) #49
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi double [ %i.e, %bb.c ], [ +qnan, %bb.b ]
  ret double %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_bigint_mul(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !8
  %i.b = load i32, ptr %2, align 4, !tbaa !8
  %i.c = add i32 %i.b, %i.a                       ; 6 uses
  %i.d = icmp sgt i32 %i.c, 32768
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef %0, ptr noundef nonnull @.str.143), !inline_history !1453 ; 0 uses
  br label %js_bigint_normalize1.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sext i32 %i.c to i64
  %i.g = shl nsw i64 %i.f, 2
  %i.h = add nsw i64 %i.g, 4                      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 8 uses
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %bb.j, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !10
  %i.o = add i64 %i.n, %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.q = load i64, ptr %i.p, align 8, !tbaa !14
  %i.r = add i64 %i.q, -1
  %i.s = icmp ugt i64 %i.o, %i.r
  br i1 %i.s, label %bb.j, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.t = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.j, i64 noundef %i.h), !inline_history !1454 ; 13 uses
  %.not.i.i42 = icmp eq ptr %i.t, null
  br i1 %.not.i.i42, label %._crit_edge63, label %bb.f

._crit_edge63:                                    ; preds = %bb.e
  %.pre64 = load ptr, ptr %i.i, align 8, !tbaa !50
  br label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.l, align 8, !tbaa !34
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.l, align 8, !tbaa !34
  %i.w = getelementptr inbounds i8, ptr %i.t, i64 -8 ; 3 uses
  %i.x = load i16, ptr %i.w, align 8, !tbaa !35
  %i.y = icmp eq i16 %i.x, -1
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 1064
  %i.aa = icmp eq ptr %i.w, %i.z
  br i1 %i.aa, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull %i.w) #49, !inline_history !1455 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ad, 0
  %i.ae = select i1 %.not15.i.i.i, i64 8, i64 %i.ad
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds i8, ptr %i.t, i64 -6
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !35
  %i.ah = zext i8 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !38
  %i.ak = zext i16 %i.aj to i64
  br label %bb.l

bb.j:                                             ; preds = %._crit_edge63, %bb.d, %bb.c
  %i.al = phi ptr [ %.pre64, %._crit_edge63 ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1256 ; 3 uses
  %i.an = load i8, ptr %i.am, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %js_bigint_normalize1.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.am, align 8, !tbaa !57
  %i.ap = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1456 ; 0 uses
  store i8 0, ptr %i.am, align 8, !tbaa !57
  br label %js_bigint_normalize1.exit

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.ae, %bb.h ], [ %i.ak, %bb.i ]
  %i.aq = load i64, ptr %i.m, align 8, !tbaa !10
  %i.ar = add i64 %i.aq, %.011.i.i.i
  store i64 %i.ar, ptr %i.m, align 8, !tbaa !10
  %i.as = getelementptr inbounds i8, ptr %i.t, i64 -4
  store i32 1, ptr %i.as, align 4, !tbaa !8
  store i32 %i.c, ptr %i.t, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 10 uses
  %i.av = load i32, ptr %1, align 4, !tbaa !8     ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.ax = load i32, ptr %2, align 4, !tbaa !8     ; 4 uses
  %.not.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.i.i, label %js_mp_mul1.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.az = zext i32 %i.ay to i64                   ; 3 uses
  %wide.trip.count.i.i = zext i32 %i.av to i64    ; 6 uses
  %i.ba = add nsw i64 %wide.trip.count.i.i, -1    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.m ] ; 4 uses
  %.01112.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.br, %bb.m ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.m ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !8
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul nuw i64 %i.be, %i.az
  %i.bg = add nuw i64 %i.bf, %.01112.i.i          ; 2 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !8
  %i.bj = lshr i64 %i.bg, 32
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i.i
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = zext i32 %i.bl to i64
  %i.bn = mul nuw i64 %i.bm, %i.az
  %i.bo = add nuw i64 %i.bn, %i.bj                ; 2 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next.i.i
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !8
  %i.br = lshr i64 %i.bo, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %js_mp_mul1.exit.thread.i.unr-lcssa, label %bb.m, !llvm.loop !1446

js_mp_mul1.exit.i:                                ; preds = %bb.l
  store i32 0, ptr %i.at, align 4, !tbaa !8
  %i.bs = icmp ugt i32 %i.ax, 1
  br i1 %i.bs, label %js_mp_add_mul1.exit.us.preheader.i, label %js_mp_mul_basecase.exit

js_mp_mul1.exit.thread.i.unr-lcssa:               ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %js_mp_mul1.exit.thread.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %js_mp_mul1.exit.thread.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %js_mp_mul1.exit.thread.i.unr-lcssa ] ; 2 uses
  %.01112.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.br, %js_mp_mul1.exit.thread.i.unr-lcssa ]
  %lcmp.mod78 = trunc i32 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod78)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i.i.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = mul nuw i64 %i.bv, %i.az
  %i.bx = add nuw i64 %i.bw, %.01112.i.i.epil.init ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.i.epil.init
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !8
  %i.ca = lshr i64 %i.bx, 32
  br label %js_mp_mul1.exit.thread.i

js_mp_mul1.exit.thread.i:                         ; preds = %js_mp_mul1.exit.thread.i.unr-lcssa, %.epil.preheader
  %.lcssa76 = phi i64 [ %i.br, %js_mp_mul1.exit.thread.i.unr-lcssa ], [ %i.ca, %.epil.preheader ]
  %i.cb = trunc nuw i64 %.lcssa76 to i32
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %wide.trip.count.i.i
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !8
  %i.cd = icmp ugt i32 %i.ax, 1
  br i1 %i.cd, label %.lr.ph.i19.preheader.i, label %js_mp_mul_basecase.exit

.lr.ph.i19.preheader.i:                           ; preds = %js_mp_mul1.exit.thread.i
  %wide.trip.count.i = zext i32 %i.ax to i64
  %xtraiter80 = and i64 %wide.trip.count.i.i, 1
  %i.ce = icmp eq i64 %i.ba, 0
  %unroll_iter84 = and i64 %wide.trip.count.i.i, 4294967294
  %lcmp.mod81.not = icmp eq i64 %xtraiter80, 0
  %lcmp.mod83 = trunc i32 %i.av to i1
  br label %.lr.ph.i19.i

js_mp_add_mul1.exit.us.preheader.i:               ; preds = %js_mp_mul1.exit.i
  %scevgep.i = getelementptr i8, ptr %i.t, i64 8
  %i.cf = add i32 %i.ax, -1
  %i.cg = zext i32 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i, i8 0, i64 %i.ch, i1 false), !tbaa !8
  br label %js_mp_mul_basecase.exit

.lr.ph.i19.i:                                     ; preds = %._crit_edge.loopexit.i24.i, %.lr.ph.i19.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i19.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.loopexit.i24.i ] ; 4 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  br i1 %i.ce, label %.epil.preheader79, label %.lr.ph.i19.i.new

.lr.ph.i19.i.new:                                 ; preds = %.lr.ph.i19.i, %.lr.ph.i19.i.new
  %indvars.iv.i21.i = phi i64 [ %indvars.iv.next.i22.i.1, %.lr.ph.i19.i.new ], [ 0, %.lr.ph.i19.i ] ; 4 uses
  %.015.i.i = phi i64 [ %i.dh, %.lr.ph.i19.i.new ], [ 0, %.lr.ph.i19.i ]
  %niter85 = phi i64 [ %niter85.next.1, %.lr.ph.i19.i.new ], [ 0, %.lr.ph.i19.i ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i21.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8
  %i.co = zext i32 %i.cn to i64
  %i.cp = mul nuw i64 %i.co, %i.cl
  %i.cq = add nuw i64 %i.cp, %.015.i.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i21.i ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !8
  %i.ct = zext i32 %i.cs to i64
  %i.cu = add nuw i64 %i.cq, %i.ct                ; 2 uses
  %i.cv = trunc i64 %i.cu to i32
  store i32 %i.cv, ptr %i.cr, align 4, !tbaa !8
  %i.cw = lshr i64 %i.cu, 32
  %indvars.iv.next.i22.i = or disjoint i64 %indvars.iv.i21.i, 1 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.next.i22.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !8
  %i.cz = zext i32 %i.cy to i64
  %i.da = mul nuw i64 %i.cz, %i.cl
  %i.db = add nuw i64 %i.da, %i.cw
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.next.i22.i ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !8
  %i.de = zext i32 %i.dd to i64
  %i.df = add nuw i64 %i.db, %i.de                ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  store i32 %i.dg, ptr %i.dc, align 4, !tbaa !8
  %i.dh = lshr i64 %i.df, 32                      ; 3 uses
  %indvars.iv.next.i22.i.1 = add nuw nsw i64 %indvars.iv.i21.i, 2 ; 2 uses
  %niter85.next.1 = add i64 %niter85, 2           ; 2 uses
  %niter85.ncmp.1 = icmp eq i64 %niter85.next.1, %unroll_iter84
  br i1 %niter85.ncmp.1, label %._crit_edge.loopexit.i24.i.unr-lcssa, label %.lr.ph.i19.i.new, !llvm.loop !1582

._crit_edge.loopexit.i24.i.unr-lcssa:             ; preds = %.lr.ph.i19.i.new
  br i1 %lcmp.mod81.not, label %._crit_edge.loopexit.i24.i, label %.epil.preheader79

.epil.preheader79:                                ; preds = %._crit_edge.loopexit.i24.i.unr-lcssa, %.lr.ph.i19.i
  %indvars.iv.i21.i.epil.init = phi i64 [ 0, %.lr.ph.i19.i ], [ %indvars.iv.next.i22.i.1, %._crit_edge.loopexit.i24.i.unr-lcssa ] ; 2 uses
  %.015.i.i.epil.init = phi i64 [ 0, %.lr.ph.i19.i ], [ %i.dh, %._crit_edge.loopexit.i24.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod83)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i21.i.epil.init
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !8
  %i.dk = zext i32 %i.dj to i64
  %i.dl = mul nuw i64 %i.dk, %i.cl
  %i.dm = add nuw i64 %i.dl, %.015.i.i.epil.init
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i21.i.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %i.dp = zext i32 %i.do to i64
  %i.dq = add nuw i64 %i.dm, %i.dp                ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  store i32 %i.dr, ptr %i.dn, align 4, !tbaa !8
  %i.ds = lshr i64 %i.dq, 32
  br label %._crit_edge.loopexit.i24.i

._crit_edge.loopexit.i24.i:                       ; preds = %._crit_edge.loopexit.i24.i.unr-lcssa, %.epil.preheader79
  %.lcssa = phi i64 [ %i.dh, %._crit_edge.loopexit.i24.i.unr-lcssa ], [ %i.ds, %.epil.preheader79 ]
  %i.dt = trunc nuw i64 %.lcssa to i32
  %i.du = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dv = add i32 %i.av, %i.du
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.dw
  store i32 %i.dt, ptr %i.dx, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %js_mp_mul_basecase.exit, label %.lr.ph.i19.i, !llvm.loop !1583

js_mp_mul_basecase.exit:                          ; preds = %._crit_edge.loopexit.i24.i, %js_mp_mul1.exit.i, %js_mp_mul1.exit.thread.i, %js_mp_add_mul1.exit.us.preheader.i
  %i.dy = load i32, ptr %1, align 4, !tbaa !8     ; 2 uses
  %i.dz = add i32 %i.dy, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %.not27 = icmp sgt i32 %i.ec, -1
  %.pre62 = load i32, ptr %2, align 4, !tbaa !8   ; 6 uses
  br i1 %.not27, label %js_mp_sub.exit, label %bb.n

bb.n:                                             ; preds = %js_mp_mul_basecase.exit
  %i.ed = zext i32 %i.dy to i64
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ed ; 3 uses
  %i.ef = icmp sgt i32 %.pre62, 0
  br i1 %i.ef, label %.lr.ph.preheader.i, label %js_mp_sub.exit

.lr.ph.preheader.i:                               ; preds = %bb.n
  %wide.trip.count.i29 = zext nneg i32 %.pre62 to i64 ; 2 uses
  %xtraiter86 = and i64 %wide.trip.count.i29, 1
  %i.eg = icmp eq i32 %.pre62, 1
  br i1 %i.eg, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter89 = and i64 %wide.trip.count.i29, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i31.1, %.lr.ph.i ] ; 4 uses
  %.021.i = phi i32 [ 0, %.lr.ph.preheader.i.new ], [ %i.fa, %.lr.ph.i ] ; 2 uses
  %niter90 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter90.next.1, %.lr.ph.i ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i30 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !8  ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i30
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8  ; 2 uses
  %i.el = sub i32 %i.ei, %i.ek                    ; 2 uses
  %i.em = icmp ugt i32 %i.ek, %i.ei
  %i.en = sub i32 %i.el, %.021.i
  %i.eo = icmp ugt i32 %.021.i, %i.el
  %i.ep = or i1 %i.em, %i.eo
  %i.eq = zext i1 %i.ep to i32                    ; 2 uses
  store i32 %i.en, ptr %i.eh, align 4, !tbaa !8
  %indvars.iv.next.i31 = or disjoint i64 %indvars.iv.i30, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.next.i31 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8  ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.next.i31
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !8  ; 2 uses
  %i.ev = sub i32 %i.es, %i.eu                    ; 2 uses
  %i.ew = icmp ugt i32 %i.eu, %i.es
  %i.ex = sub i32 %i.ev, %i.eq
  %i.ey = icmp ult i32 %i.ev, %i.eq
  %i.ez = or i1 %i.ew, %i.ey
  %i.fa = zext i1 %i.ez to i32                    ; 2 uses
  store i32 %i.ex, ptr %i.er, align 4, !tbaa !8
  %indvars.iv.next.i31.1 = add nuw nsw i64 %indvars.iv.i30, 2 ; 2 uses
  %niter90.next.1 = add i64 %niter90, 2           ; 2 uses
  %niter90.ncmp.1 = icmp eq i64 %niter90.next.1, %unroll_iter89
  br i1 %niter90.ncmp.1, label %js_mp_sub.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1584

js_mp_sub.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %js_mp_sub.exit.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %js_mp_sub.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i30.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i31.1, %js_mp_sub.exit.loopexit.unr-lcssa ] ; 2 uses
  %.021.i.epil.init = phi i32 [ 0, %.lr.ph.preheader.i ], [ %i.fa, %js_mp_sub.exit.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i32 %.pre62 to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv.i30.epil.init ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !8
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %indvars.iv.i30.epil.init
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !8
  %i.ff = add i32 %i.fe, %.021.i.epil.init
  %i.fg = sub i32 %i.fc, %i.ff
  store i32 %i.fg, ptr %i.fb, align 4, !tbaa !8
  br label %js_mp_sub.exit.loopexit

js_mp_sub.exit.loopexit:                          ; preds = %js_mp_sub.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %.pre = load i32, ptr %2, align 4, !tbaa !8
  br label %js_mp_sub.exit

js_mp_sub.exit:                                   ; preds = %js_mp_sub.exit.loopexit, %bb.n, %js_mp_mul_basecase.exit
  %i.fh = phi i32 [ %.pre, %js_mp_sub.exit.loopexit ], [ %.pre62, %bb.n ], [ %.pre62, %js_mp_mul_basecase.exit ] ; 2 uses
  %i.fi = add i32 %i.fh, -1
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !8
  %.not28 = icmp sgt i32 %i.fl, -1
  br i1 %.not28, label %js_mp_sub.exit41, label %bb.o

bb.o:                                             ; preds = %js_mp_sub.exit
  %i.fm = zext i32 %i.fh to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.fm ; 3 uses
  %i.fo = load i32, ptr %1, align 4, !tbaa !8     ; 4 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.preheader.i34, label %js_mp_sub.exit41

.lr.ph.preheader.i34:                             ; preds = %bb.o
  %wide.trip.count.i35 = zext nneg i32 %i.fo to i64 ; 2 uses
  %xtraiter91 = and i64 %wide.trip.count.i35, 1
  %i.fq = icmp eq i32 %i.fo, 1
  br i1 %i.fq, label %.lr.ph.i36.epil.preheader, label %.lr.ph.preheader.i34.new

.lr.ph.preheader.i34.new:                         ; preds = %.lr.ph.preheader.i34
  %unroll_iter94 = and i64 %wide.trip.count.i35, 2147483646
  br label %.lr.ph.i36

.lr.ph.i36:                                       ; preds = %.lr.ph.i36, %.lr.ph.preheader.i34.new
  %indvars.iv.i37 = phi i64 [ 0, %.lr.ph.preheader.i34.new ], [ %indvars.iv.next.i39.1, %.lr.ph.i36 ] ; 4 uses
  %.021.i38 = phi i32 [ 0, %.lr.ph.preheader.i34.new ], [ %i.gk, %.lr.ph.i36 ] ; 2 uses
  %niter95 = phi i64 [ 0, %.lr.ph.preheader.i34.new ], [ %niter95.next.1, %.lr.ph.i36 ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.i37 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !8  ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv.i37
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !8  ; 2 uses
  %i.fv = sub i32 %i.fs, %i.fu                    ; 2 uses
  %i.fw = icmp ugt i32 %i.fu, %i.fs
  %i.fx = sub i32 %i.fv, %.021.i38
  %i.fy = icmp ugt i32 %.021.i38, %i.fv
  %i.fz = or i1 %i.fw, %i.fy
  %i.ga = zext i1 %i.fz to i32                    ; 2 uses
  store i32 %i.fx, ptr %i.fr, align 4, !tbaa !8
  %indvars.iv.next.i39 = or disjoint i64 %indvars.iv.i37, 1 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv.next.i39 ; 2 uses
end_hunk_18
begin_hunk_19_@js_bigint_divrem:bb.a
  %i.bk = icmp eq i32 %i.h, 1
  br i1 %i.bk, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 4 uses
  %.013.i = phi i32 [ 1, %.lr.ph.preheader.i.new ], [ %i.bx, %.lr.ph.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %i.bn = xor i32 %i.bm, -1
  %i.bo = add i32 %.013.i, %i.bn                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, %.013.i
  %i.bq = zext i1 %i.bp to i32                    ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  store i32 %i.bo, ptr %i.br, align 4, !tbaa !8
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8
  %i.bu = xor i32 %i.bt, -1
  %i.bv = add i32 %i.bq, %i.bu                    ; 2 uses
  %i.bw = icmp ult i32 %i.bv, %i.bq
  %i.bx = zext i1 %i.bw to i32                    ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.i
  store i32 %i.bv, ptr %i.by, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %js_mp_neg.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1587

bb.q:                                             ; preds = %bb.o
  %i.bz = sext i32 %i.h to i64
  %i.ca = shl nsw i64 %i.bz, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bi, ptr nonnull align 4 %i.g, i64 %i.ca, i1 false)
  br label %js_mp_neg.exit

js_mp_neg.exit.loopexit.unr-lcssa:                ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %js_mp_neg.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %js_mp_neg.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %js_mp_neg.exit.loopexit.unr-lcssa ] ; 2 uses
  %.013.i.epil.init = phi i32 [ 1, %.lr.ph.preheader.i ], [ %i.bx, %js_mp_neg.exit.loopexit.unr-lcssa ]
  %lcmp.mod403 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod403)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.epil.init
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !8
  %i.cd = xor i32 %i.cc, -1
  %i.ce = add i32 %.013.i.epil.init, %i.cd
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i.epil.init
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !8
  br label %js_mp_neg.exit

js_mp_neg.exit:                                   ; preds = %.lr.ph.i.epil.preheader, %js_mp_neg.exit.loopexit.unr-lcssa, %bb.q
  %i.cg = icmp sgt i32 %i.h, 1
  br i1 %i.cg, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %js_mp_neg.exit, %bb.r
  %.0116296 = phi i32 [ %i.cl, %bb.r ], [ %i.h, %js_mp_neg.exit ] ; 4 uses
  %i.ch = zext nneg i32 %.0116296 to i64
  %i.ci = getelementptr [4 x i8], ptr %i.ai, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.r, label %.critedge

bb.r:                                             ; preds = %.lr.ph
  %i.cl = add nsw i32 %.0116296, -1
  %i.cm = icmp sgt i32 %.0116296, 2
  br i1 %i.cm, label %.lr.ph, label %.critedge, !llvm.loop !1588

.critedge:                                        ; preds = %.lr.ph, %bb.r, %bb.p, %js_mp_neg.exit
  %.0116.lcssa = phi i32 [ %i.h, %js_mp_neg.exit ], [ %i.h, %bb.p ], [ %.0116296, %.lr.ph ], [ 1, %bb.r ] ; 9 uses
  %i.cn = sext i32 %i.a to i64
  %i.co = shl nsw i64 %i.cn, 2                    ; 3 uses
  %i.cp = load ptr, ptr %i.x, align 8, !tbaa !50  ; 8 uses
  %i.cq = icmp eq i32 %i.a, 0
  br i1 %i.cq, label %bb.y, label %bb.s, !prof !9

bb.s:                                             ; preds = %.critedge
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 48 ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = add i64 %i.ct, %i.co
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.cx = add i64 %i.cw, -1
  %i.cy = icmp ugt i64 %i.cu, %i.cx
  br i1 %i.cy, label %bb.y, label %bb.t, !prof !9

bb.t:                                             ; preds = %bb.s
  %i.cz = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.cp, i64 noundef %i.co) ; 26 uses
  %.not.i198 = icmp eq ptr %i.cz, null
  br i1 %.not.i198, label %._crit_edge334, label %bb.u

._crit_edge334:                                   ; preds = %bb.t
  %.pre335 = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.da = load i64, ptr %i.cr, align 8, !tbaa !34
  %i.db = add i64 %i.da, 1
  store i64 %i.db, ptr %i.cr, align 8, !tbaa !34
  %i.dc = getelementptr inbounds i8, ptr %i.cz, i64 -8 ; 3 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !35
  %i.de = icmp eq i16 %i.dd, -1
  br i1 %i.de, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 1064
  %i.dg = icmp eq ptr %i.dc, %i.df
  br i1 %i.dg, label %bb.ab, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !36
  %i.dj = tail call i64 %i.di(ptr noundef nonnull %i.dc) #49, !inline_history !174 ; 2 uses
  %.not15.i.i = icmp eq i64 %i.dj, 0
  %i.dk = select i1 %.not15.i.i, i64 8, i64 %i.dj
  br label %bb.ab

bb.x:                                             ; preds = %bb.u
  %i.dl = getelementptr inbounds i8, ptr %i.cz, i64 -6
  %i.dm = load i8, ptr %i.dl, align 2, !tbaa !35
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.dn
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !38
  %i.dq = zext i16 %i.dp to i64
  br label %bb.ab

bb.y:                                             ; preds = %._crit_edge334, %bb.s, %.critedge
  %i.dr = phi ptr [ %.pre335, %._crit_edge334 ], [ %i.cp, %bb.s ], [ %i.cp, %.critedge ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 1256 ; 3 uses
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !57, !range !58, !noundef !59
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 1, ptr %i.ds, align 8, !tbaa !57
  %i.dv = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !175 ; 0 uses
  store i8 0, ptr %i.ds, align 8, !tbaa !57
  %.pre336 = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.dw = phi ptr [ %i.dr, %bb.y ], [ %.pre336, %bb.z ]
  tail call void @js_free_rt(ptr noundef %i.dw, ptr noundef nonnull %i.ai)
  br label %js_bigint_new_si.exit

bb.ab:                                            ; preds = %bb.v, %bb.w, %bb.x
  %.011.i.i = phi i64 [ 8, %bb.v ], [ %i.dk, %bb.w ], [ %i.dq, %bb.x ]
  %i.dx = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.dy = add i64 %i.dx, %.011.i.i
  store i64 %i.dy, ptr %i.cs, align 8, !tbaa !10
  %.not126 = icmp sgt i32 %i.q, -1
  br i1 %.not126, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dz = icmp sgt i32 %i.a, 0
  br i1 %i.dz, label %.lr.ph.preheader.i135, label %.critedge2

.lr.ph.preheader.i135:                            ; preds = %bb.ac
  %wide.trip.count.i136 = zext nneg i32 %i.a to i64 ; 2 uses
  %xtraiter404 = and i64 %wide.trip.count.i136, 1
  %i.ea = icmp eq i32 %i.a, 1
  br i1 %i.ea, label %.lr.ph.i137.epil.preheader, label %.lr.ph.preheader.i135.new

.lr.ph.preheader.i135.new:                        ; preds = %.lr.ph.preheader.i135
  %unroll_iter407 = and i64 %wide.trip.count.i136, 2147483646
  br label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %.lr.ph.i137, %.lr.ph.preheader.i135.new
  %indvars.iv.i138 = phi i64 [ 0, %.lr.ph.preheader.i135.new ], [ %indvars.iv.next.i140.1, %.lr.ph.i137 ] ; 4 uses
  %.013.i139 = phi i32 [ 1, %.lr.ph.preheader.i135.new ], [ %i.en, %.lr.ph.i137 ] ; 2 uses
  %niter408 = phi i64 [ 0, %.lr.ph.preheader.i135.new ], [ %niter408.next.1, %.lr.ph.i137 ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i138
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = xor i32 %i.ec, -1
  %i.ee = add i32 %.013.i139, %i.ed               ; 2 uses
  %i.ef = icmp ult i32 %i.ee, %.013.i139
  %i.eg = zext i1 %i.ef to i32                    ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i138
  store i32 %i.ee, ptr %i.eh, align 4, !tbaa !8
  %indvars.iv.next.i140 = or disjoint i64 %indvars.iv.i138, 1 ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.i140
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !8
  %i.ek = xor i32 %i.ej, -1
  %i.el = add i32 %i.eg, %i.ek                    ; 2 uses
  %i.em = icmp ult i32 %i.el, %i.eg
  %i.en = zext i1 %i.em to i32                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.next.i140
  store i32 %i.el, ptr %i.eo, align 4, !tbaa !8
  %indvars.iv.next.i140.1 = add nuw nsw i64 %indvars.iv.i138, 2 ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %js_mp_neg.exit142.loopexit.unr-lcssa, label %.lr.ph.i137, !llvm.loop !1587

bb.ad:                                            ; preds = %bb.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cz, ptr nonnull align 4 %i.m, i64 %i.co, i1 false)
  br label %js_mp_neg.exit142

js_mp_neg.exit142.loopexit.unr-lcssa:             ; preds = %.lr.ph.i137
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %js_mp_neg.exit142, label %.lr.ph.i137.epil.preheader

.lr.ph.i137.epil.preheader:                       ; preds = %js_mp_neg.exit142.loopexit.unr-lcssa, %.lr.ph.preheader.i135
  %indvars.iv.i138.epil.init = phi i64 [ 0, %.lr.ph.preheader.i135 ], [ %indvars.iv.next.i140.1, %js_mp_neg.exit142.loopexit.unr-lcssa ] ; 2 uses
  %.013.i139.epil.init = phi i32 [ 1, %.lr.ph.preheader.i135 ], [ %i.en, %js_mp_neg.exit142.loopexit.unr-lcssa ]
  %lcmp.mod406 = trunc i32 %i.a to i1
  tail call void @llvm.assume(i1 %lcmp.mod406)
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i138.epil.init
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !8
  %i.er = xor i32 %i.eq, -1
  %i.es = add i32 %.013.i139.epil.init, %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv.i138.epil.init
  store i32 %i.es, ptr %i.et, align 4, !tbaa !8
  br label %js_mp_neg.exit142

js_mp_neg.exit142:                                ; preds = %.lr.ph.i137.epil.preheader, %js_mp_neg.exit142.loopexit.unr-lcssa, %bb.ad
  %i.eu = icmp sgt i32 %i.a, 1
  br i1 %i.eu, label %.lr.ph300, label %.critedge2

.lr.ph300:                                        ; preds = %js_mp_neg.exit142, %bb.ae
  %.0115299 = phi i32 [ %i.fa, %bb.ae ], [ %i.a, %js_mp_neg.exit142 ] ; 4 uses
  %i.ev = zext nneg i32 %.0115299 to i64
  %i.ew = getelementptr [4 x i8], ptr %i.cz, i64 %i.ev
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !8
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %bb.ae, label %.critedge2

bb.ae:                                            ; preds = %.lr.ph300
  %i.fa = add nsw i32 %.0115299, -1
  %i.fb = icmp sgt i32 %.0115299, 2
  br i1 %i.fb, label %.lr.ph300, label %.critedge2, !llvm.loop !1589

.critedge2:                                       ; preds = %.lr.ph300, %bb.ae, %bb.ac, %js_mp_neg.exit142
  %.0115.lcssa = phi i32 [ %i.a, %js_mp_neg.exit142 ], [ %i.a, %bb.ac ], [ %.0115299, %.lr.ph300 ], [ 1, %bb.ae ] ; 23 uses
  %i.fc = icmp slt i32 %.0116.lcssa, %.0115.lcssa
  br i1 %i.fc, label %bb.af, label %bb.bd

bb.af:                                            ; preds = %.critedge2
  %i.fd = load ptr, ptr %i.x, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.fd, ptr noundef nonnull %i.ai)
  %i.fe = load ptr, ptr %i.x, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.fe, ptr noundef nonnull %i.cz)
  br i1 %3, label %bb.ag, label %bb.as

bb.ag:                                            ; preds = %bb.af
  %i.ff = load i32, ptr %1, align 4, !tbaa !8     ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 32768
  br i1 %i.fg, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fh = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowRangeError(ptr noundef nonnull %0, ptr noundef nonnull @.str.143), !inline_history !1453 ; 0 uses
  br label %js_bigint_new_si.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fi = sext i32 %i.ff to i64
  %i.fj = shl nsw i64 %i.fi, 2
  %i.fk = add nsw i64 %i.fj, 4                    ; 3 uses
  %i.fl = load ptr, ptr %i.x, align 8, !tbaa !50  ; 8 uses
  %i.fm = icmp eq i64 %i.fk, 0
  br i1 %i.fm, label %bb.ap, label %bb.aj, !prof !9

bb.aj:                                            ; preds = %bb.ai
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 40 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 48 ; 3 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !10
  %i.fq = add i64 %i.fp, %i.fk
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !14
  %i.ft = add i64 %i.fs, -1
  %i.fu = icmp ugt i64 %i.fq, %i.ft
  br i1 %i.fu, label %bb.ap, label %bb.ak, !prof !9

bb.ak:                                            ; preds = %bb.aj
  %i.fv = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.fl, i64 noundef %i.fk), !inline_history !1454 ; 7 uses
  %.not.i.i200 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i200, label %._crit_edge332, label %bb.al

._crit_edge332:                                   ; preds = %bb.ak
  %.pre333 = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %bb.ap

bb.al:                                            ; preds = %bb.ak
  %i.fw = load i64, ptr %i.fn, align 8, !tbaa !34
  %i.fx = add i64 %i.fw, 1
  store i64 %i.fx, ptr %i.fn, align 8, !tbaa !34
  %i.fy = getelementptr inbounds i8, ptr %i.fv, i64 -8 ; 3 uses
  %i.fz = load i16, ptr %i.fy, align 8, !tbaa !35
  %i.ga = icmp eq i16 %i.fz, -1
  br i1 %i.ga, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fl, i64 1064
  %i.gc = icmp eq ptr %i.fy, %i.gb
  br i1 %i.gc, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !36
  %i.gf = tail call i64 %i.ge(ptr noundef nonnull %i.fy) #49, !inline_history !1455 ; 2 uses
  %.not15.i.i.i208 = icmp eq i64 %i.gf, 0
  %i.gg = select i1 %.not15.i.i.i208, i64 8, i64 %i.gf
  br label %bb.ar

bb.ao:                                            ; preds = %bb.al
  %i.gh = getelementptr inbounds i8, ptr %i.fv, i64 -6
  %i.gi = load i8, ptr %i.gh, align 2, !tbaa !35
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.gj
  %i.gl = load i16, ptr %i.gk, align 2, !tbaa !38
  %i.gm = zext i16 %i.gl to i64
  br label %bb.ar

bb.ap:                                            ; preds = %._crit_edge332, %bb.aj, %bb.ai
  %i.gn = phi ptr [ %.pre333, %._crit_edge332 ], [ %i.fl, %bb.aj ], [ %i.fl, %bb.ai ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1256 ; 3 uses
  %i.gp = load i8, ptr %i.go, align 8, !tbaa !57, !range !58, !noundef !59
  %i.gq = trunc nuw i8 %i.gp to i1
  br i1 %i.gq, label %js_bigint_new_si.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.go, align 8, !tbaa !57
  %i.gr = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1456 ; 0 uses
  store i8 0, ptr %i.go, align 8, !tbaa !57
  br label %js_bigint_new_si.exit

bb.ar:                                            ; preds = %bb.am, %bb.an, %bb.ao
  %.011.i.i.i202 = phi i64 [ 8, %bb.am ], [ %i.gg, %bb.an ], [ %i.gm, %bb.ao ]
  %i.gs = load i64, ptr %i.fo, align 8, !tbaa !10
  %i.gt = add i64 %i.gs, %.011.i.i.i202
  store i64 %i.gt, ptr %i.fo, align 8, !tbaa !10
  %i.gu = getelementptr inbounds i8, ptr %i.fv, i64 -4
  store i32 1, ptr %i.gu, align 4, !tbaa !8
  store i32 %i.ff, ptr %i.fv, align 8, !tbaa !8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gw = load i32, ptr %1, align 4, !tbaa !8
  %i.gx = zext i32 %i.gw to i64
  %i.gy = shl nuw nsw i64 %i.gx, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gv, ptr nonnull align 4 %i.g, i64 %i.gy, i1 false)
  br label %js_bigint_new_si.exit

bb.as:                                            ; preds = %bb.af
  %i.gz = load ptr, ptr %i.x, align 8, !tbaa !50  ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 40 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 48 ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !10
  %i.hd = add i64 %i.hc, 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.gz, i64 56
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !14
  %i.hg = add i64 %i.hf, -1
  %i.hh = icmp ugt i64 %i.hd, %i.hg
  br i1 %i.hh, label %js_arena_malloc.exit.thread, label %bb.at, !prof !9

bb.at:                                            ; preds = %bb.as
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gz, i64 568
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gz, i64 576
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !40 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, %i.hi
  br i1 %i.hl, label %bb.au, label %bb.av, !prof !9

bb.au:                                            ; preds = %bb.at
  %i.hm = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.gz, i32 noundef 0) ; 2 uses
  %.not.i249 = icmp eq ptr %i.hm, null
  br i1 %.not.i249, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.av

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.au
  %.pre331 = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.av:                                            ; preds = %bb.au, %bb.at
  %.0.i247 = phi ptr [ %i.hm, %bb.au ], [ %i.hk, %bb.at ] ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i247, i64 38 ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !38 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.0.i247, i64 40
  %i.hq = zext i16 %i.ho to i64
  %i.hr = shl nuw nsw i64 %i.hq, 4
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hr ; 9 uses
  %i.ht = load i16, ptr %i.hs, align 8, !tbaa !35
  store i16 %i.ht, ptr %i.hn, align 2, !tbaa !38
  store i16 %i.ho, ptr %i.hs, align 8, !tbaa !35
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i247, i64 34 ; 2 uses
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !38
  %i.hw = add i16 %i.hv, 1                        ; 2 uses
  store i16 %i.hw, ptr %i.hu, align 2, !tbaa !38
  %i.hx = getelementptr inbounds nuw i8, ptr %.0.i247, i64 36
  %i.hy = load i16, ptr %i.hx, align 4, !tbaa !38
  %i.hz = icmp eq i16 %i.hw, %i.hy
  br i1 %i.hz, label %bb.aw, label %bb.ax, !prof !9

bb.aw:                                            ; preds = %bb.av
  %i.ia = load ptr, ptr %.0.i247, align 8, !tbaa !41 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0.i247, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !40 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !40
  store ptr %i.ia, ptr %i.ic, align 8, !tbaa !41
end_hunk_19
begin_hunk_20_@js_get_local_export_var_ref1:bb.a
  %i.ae = icmp eq i32 %i.ad, %i.u
  br i1 %i.ae, label %.thread.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %find_resolve_entry.exit.thread, label %bb.e, !llvm.loop !1615

find_resolve_entry.exit.thread:                   ; preds = %bb.g, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !8
  %.not13.i = icmp slt i32 %i.w, %i.ag
  br i1 %.not13.i, label %js_resize_array.exit.thread.i, label %js_resize_array.exit.i, !prof !195

js_resize_array.exit.i:                           ; preds = %find_resolve_entry.exit.thread
  %i.ah = add nsw i32 %i.w, 1
  %i.ai = tail call fastcc i32 @js_realloc_array(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull %i.af, i32 noundef %i.ah), !inline_history !1616
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i, label %.thread.sink.split

js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i: ; preds = %js_resize_array.exit.i
  %.pre.i = load i32, ptr %i.v, align 4, !tbaa !869
  br label %js_resize_array.exit.thread.i

js_resize_array.exit.thread.i:                    ; preds = %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i, %find_resolve_entry.exit.thread
  %i.aj = phi i32 [ %.pre.i, %js_resize_array.exit.js_resize_array.exit.thread_crit_edge.i ], [ %i.w, %find_resolve_entry.exit.thread ] ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !872
  %i.al = add nsw i32 %i.aj, 1
  store i32 %i.al, ptr %i.v, align 4, !tbaa !869
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.am ; 2 uses
  store ptr %1, ptr %i.an, align 8, !tbaa !1614
  %i.ao = icmp slt i32 %i.u, 242
  br i1 %i.ao, label %bb.i, label %bb.h

bb.h:                                             ; preds = %js_resize_array.exit.thread.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1104
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !154
  %i.at = zext nneg i32 %i.u to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !155
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %js_resize_array.exit.thread.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.u, ptr %i.az, align 8, !tbaa !873
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !223
  %i.bc = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !1619
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [32 x i8], ptr %i.bb, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !876
  %i.bi = load i32, ptr %i.t, align 4, !tbaa !1319
  %i.bj = call fastcc i32 @js_resolve_export1(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.bh, i32 noundef %i.bi, ptr noundef %3)
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.j, label %.thread.sink.split

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !864 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !855
  %.not36 = icmp eq i32 %i.bn, 135
  br i1 %.not36, label %.thread.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !865
  %i.bp = tail call fastcc ptr @js_get_local_export_var_ref1(ptr noundef %0, ptr noundef %i.bo, ptr noundef nonnull %i.bl, ptr noundef %3)
  br label %.thread.sink.split

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.c, !llvm.loop !1620

.thread.sink.split:                               ; preds = %bb.f, %bb.j, %bb.i, %js_resize_array.exit.i, %bb.k
  %.2.ph = phi ptr [ null, %bb.j ], [ %i.bp, %bb.k ], [ null, %js_resize_array.exit.i ], [ null, %bb.i ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %.thread

.thread:                                          ; preds = %bb.l, %.thread.sink.split, %.preheader, %bb.a, %bb.b
  %.2 = phi ptr [ %i.d, %bb.a ], [ null, %.preheader ], [ %i.l, %bb.b ], [ %.2.ph, %.thread.sink.split ], [ null, %bb.l ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @js_host_resolve_imported_module(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 %3, i64 %4) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1352
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1, !tbaa !35
  %.not.i = icmp eq i8 %i.e, 46
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @js_strdup(ptr noundef nonnull %0, ptr noundef nonnull readonly %2), !inline_history !1621
  br label %js_default_module_normalize_name.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #52, !inline_history !1621 ; 2 uses
  %.not50.i = icmp eq ptr %i.g, null
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub i64 %i.h, %i.i
  %sext.i = shl i64 %i.j, 32
  %i.k = ashr exact i64 %sext.i, 32
  %.0.i = select i1 %.not50.i, i64 0, i64 %i.k    ; 3 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %2) #52, !inline_history !1621
  %i.m = add i64 %.0.i, %i.l
  %i.n = trunc i64 %i.m to i32
  %i.o = add i32 %i.n, 2                          ; 6 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp eq i32 %i.o, 0
  br i1 %i.q, label %bb.k, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10
  %i.u = add i64 %i.t, %i.p
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = add i64 %i.w, -1
  %i.y = icmp ugt i64 %i.u, %i.x
  br i1 %i.y, label %bb.k, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.z = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.b, i64 noundef %i.p), !inline_history !1622 ; 16 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.g

._crit_edge.i.i:                                  ; preds = %bb.f
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !50
  br label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !34
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !34
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !35
  %i.ae = icmp eq i16 %i.ad, -1
  br i1 %i.ae, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1064
  %i.ag = icmp eq ptr %i.ac, %i.af
  br i1 %i.ag, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull %i.ac) #49, !inline_history !1623 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = select i1 %.not15.i.i.i.i, i64 8, i64 %i.aj
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds i8, ptr %i.z, i64 -6
  %i.am = load i8, ptr %i.al, align 2, !tbaa !35
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !38
  %i.aq = zext i16 %i.ap to i64
  br label %bb.m

bb.k:                                             ; preds = %._crit_edge.i.i, %bb.e, %bb.d
  %i.ar = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.b, %bb.e ], [ %i.b, %bb.d ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1256 ; 3 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !57, !range !58, !noundef !59
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %js_default_module_normalize_name.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.as, align 8, !tbaa !57
  %i.av = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1624 ; 0 uses
  store i8 0, ptr %i.as, align 8, !tbaa !57
  br label %js_default_module_normalize_name.exit.thread

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.011.i.i.i.i = phi i64 [ 8, %bb.h ], [ %i.ak, %bb.i ], [ %i.aq, %bb.j ]
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !10
  %i.ax = add i64 %i.aw, %.011.i.i.i.i
  store i64 %i.ax, ptr %i.s, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %1, i64 %.0.i, i1 false)
  %i.ay = getelementptr inbounds i8, ptr %i.z, i64 %.0.i
  store i8 0, ptr %i.ay, align 1, !tbaa !35
  %i.az = load i8, ptr %2, align 1, !tbaa !35
  %i.ba = icmp eq i8 %i.az, 46
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.p
  %.04380.i = phi ptr [ %i.br, %bb.p ], [ %2, %bb.m ] ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.04380.i, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !35
  switch i8 %i.bc, label %._crit_edge.i [
    i8 47, label %bb.p
    i8 46, label %bb.n
  ]

bb.n:                                             ; preds = %.lr.ph.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.04380.i, i64 2
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = icmp eq i8 %i.be, 47
  br i1 %i.bf, label %bb.o, label %._crit_edge.i

bb.o:                                             ; preds = %bb.n
  %i.bg = load i8, ptr %i.z, align 8, !tbaa !35
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %js__pstrcat.exit.i, label %sub_0.i

sub_0.i:                                          ; preds = %bb.o
  %i.bi = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.z, i32 noundef 47) #52, !inline_history !1621 ; 2 uses
  %.not52.i = icmp eq ptr %i.bi, null
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %.044.i = select i1 %.not52.i, ptr %i.z, ptr %i.bj ; 5 uses
  %i.bk = load i8, ptr %.044.i, align 1
  %.not87.i = icmp eq i8 %i.bk, 46
  br i1 %.not87.i, label %.tail.i, label %.tail73.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.044.i, i64 1
  %i.bm = load i8, ptr %i.bl, align 1
  switch i8 %i.bm, label %.tail73.thread.i [
    i8 0, label %._crit_edge.i
    i8 46, label %.tail73.i
  ]

.tail73.i:                                        ; preds = %.tail.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.044.i, i64 2
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %._crit_edge.i, label %.tail73.thread.i

.tail73.thread.i:                                 ; preds = %.tail.i, %.tail73.i, %sub_0.i
  %i.bq = icmp ugt ptr %.044.i, %i.z
  %spec.select.idx.i = sext i1 %i.bq to i64
  %spec.select.i = getelementptr inbounds i8, ptr %.044.i, i64 %spec.select.idx.i
  store i8 0, ptr %spec.select.i, align 1, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %.tail73.thread.i, %.lr.ph.i
  %.sink.i = phi i64 [ 3, %.tail73.thread.i ], [ 2, %.lr.ph.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %.04380.i, i64 %.sink.i ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !35
  %i.bt = icmp eq i8 %i.bs, 46
  br i1 %i.bt, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.tail.i, %bb.p, %.tail73.i, %bb.n, %.lr.ph.i, %bb.m
  %.043.lcssa.i = phi ptr [ %2, %bb.m ], [ %.04380.i, %.tail73.i ], [ %.04380.i, %.tail.i ], [ %.04380.i, %bb.n ], [ %.04380.i, %.lr.ph.i ], [ %i.br, %bb.p ] ; 3 uses
  %.pr.i = load i8, ptr %i.z, align 8, !tbaa !35
  %.not55.i = icmp eq i8 %.pr.i, 0
  br i1 %.not55.i, label %js__pstrcat.exit.i, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i
  %i.bu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #52, !inline_history !1621 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32                  ; 2 uses
  %i.bw = icmp sgt i32 %i.o, %i.bv
  br i1 %i.bw, label %.preheader.i.i.i, label %js__pstrcat.exit.i

.preheader.i.i.i:                                 ; preds = %bb.q
  %i.bx = sub nsw i32 %i.o, %i.bv
  %sext.i.i = shl i64 %i.bu, 32
  %i.by = ashr exact i64 %sext.i.i, 32
  %i.bz = getelementptr i8, ptr %i.z, i64 %i.by   ; 3 uses
  %.not12.i.i.not.i = icmp eq i32 %i.bx, 1
  br i1 %.not12.i.i.not.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %.preheader.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store i8 47, ptr %i.bz, align 1, !tbaa !35
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.preheader.i, %.preheader.i.i.i
  %.0.lcssa.i.i.i = phi ptr [ %i.bz, %.preheader.i.i.i ], [ %i.ca, %.lr.ph.i.i.preheader.i ]
  store i8 0, ptr %.0.lcssa.i.i.i, align 1, !tbaa !35
  br label %js__pstrcat.exit.i

js__pstrcat.exit.i:                               ; preds = %bb.o, %._crit_edge.i.i.i, %bb.q, %._crit_edge.i
  %.04379.i = phi ptr [ %.043.lcssa.i, %._crit_edge.i ], [ %.043.lcssa.i, %._crit_edge.i.i.i ], [ %.043.lcssa.i, %bb.q ], [ %.04380.i, %bb.o ] ; 2 uses
  %i.cb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.z) #52, !inline_history !1621 ; 2 uses
  %i.cc = trunc i64 %i.cb to i32                  ; 2 uses
  %i.cd = icmp sgt i32 %i.o, %i.cc
  br i1 %i.cd, label %.preheader.i.i57.i, label %js_default_module_normalize_name.exit.thread83

.preheader.i.i57.i:                               ; preds = %js__pstrcat.exit.i
  %i.ce = sub nsw i32 %i.o, %i.cc                 ; 2 uses
  %sext.i58.i = shl i64 %i.cb, 32
  %i.cf = ashr exact i64 %sext.i58.i, 32
  %i.cg = getelementptr inbounds i8, ptr %i.z, i64 %i.cf ; 3 uses
  %i.ch = zext nneg i32 %i.ce to i64
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  %i.ck = load i8, ptr %.04379.i, align 1, !tbaa !35 ; 2 uses
  %i.cl = icmp ne i8 %i.ck, 0
  %.not12.i.i59.i = icmp ne i32 %i.ce, 1
  %or.cond13.i.i.i = and i1 %.not12.i.i59.i, %i.cl
  br i1 %or.cond13.i.i.i, label %.lr.ph.i.i62.i, label %._crit_edge.i.i60.i

.lr.ph.i.i62.i:                                   ; preds = %.preheader.i.i57.i, %.lr.ph.i.i62.i
  %i.cm = phi i8 [ %i.cp, %.lr.ph.i.i62.i ], [ %i.ck, %.preheader.i.i57.i ]
  %.015.i.i63.i = phi ptr [ %i.co, %.lr.ph.i.i62.i ], [ %i.cg, %.preheader.i.i57.i ] ; 2 uses
  %.0914.i.i64.i = phi ptr [ %i.cn, %.lr.ph.i.i62.i ], [ %.04379.i, %.preheader.i.i57.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.0914.i.i64.i, i64 1 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.015.i.i63.i, i64 1 ; 3 uses
  store i8 %i.cm, ptr %.015.i.i63.i, align 1, !tbaa !35
  %i.cp = load i8, ptr %i.cn, align 1, !tbaa !35  ; 2 uses
  %i.cq = icmp ne i8 %i.cp, 0
  %.not.i.i65.i = icmp ult ptr %i.co, %i.cj
  %or.cond.i.i66.i = select i1 %i.cq, i1 %.not.i.i65.i, i1 false
  br i1 %or.cond.i.i66.i, label %.lr.ph.i.i62.i, label %._crit_edge.i.i60.i

._crit_edge.i.i60.i:                              ; preds = %.lr.ph.i.i62.i, %.preheader.i.i57.i
  %.0.lcssa.i.i61.i = phi ptr [ %i.cg, %.preheader.i.i57.i ], [ %i.co, %.lr.ph.i.i62.i ]
  store i8 0, ptr %.0.lcssa.i.i61.i, align 1, !tbaa !35
  br label %js_default_module_normalize_name.exit.thread83

bb.r:                                             ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 1344
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !856, !range !58, !noundef !59
  %i.ct = trunc nuw i8 %i.cs to i1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 1384
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !710 ; 2 uses
  br i1 %i.ct, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cw = tail call ptr %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 %3, i64 %4, ptr noundef %i.cv) #49
  br label %js_default_module_normalize_name.exit

bb.t:                                             ; preds = %bb.r
  %i.cx = tail call ptr %i.d(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %i.cv) #49
  br label %js_default_module_normalize_name.exit

js_default_module_normalize_name.exit:            ; preds = %bb.c, %bb.s, %bb.t
  %.069 = phi ptr [ %i.cw, %bb.s ], [ %i.cx, %bb.t ], [ %i.f, %bb.c ] ; 2 uses
  %.not73 = icmp eq ptr %.069, null
  br i1 %.not73, label %js_default_module_normalize_name.exit.thread, label %js_default_module_normalize_name.exit.thread83

js_default_module_normalize_name.exit.thread83:   ; preds = %js__pstrcat.exit.i, %._crit_edge.i.i60.i, %js_default_module_normalize_name.exit
  %.06986 = phi ptr [ %.069, %js_default_module_normalize_name.exit ], [ %i.z, %._crit_edge.i.i60.i ], [ %i.z, %js__pstrcat.exit.i ] ; 10 uses
  %i.cy = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.06986) #52, !inline_history !285
  %i.cz = tail call i32 @JS_NewAtomLen(ptr noundef %0, ptr noundef nonnull %.06986, i64 noundef %i.cy), !inline_history !285 ; 5 uses
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %js_default_module_normalize_name.exit.thread83
  %i.db = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.db, ptr noundef nonnull %.06986)
  br label %js_default_module_normalize_name.exit.thread

bb.v:                                             ; preds = %js_default_module_normalize_name.exit.thread83
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.019.i = load ptr, ptr %i.dd, align 8, !tbaa !40 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i, %i.dc
  br i1 %.not20.i, label %.loopexit, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.v, %bb.y
  %.021.i = phi ptr [ %.0.i78, %bb.y ], [ %.019.i, %bb.v ] ; 5 uses
  %i.de = getelementptr inbounds i8, ptr %.021.i, i64 -8
  %i.df = load i32, ptr %i.de, align 8, !tbaa !678
  %i.dg = icmp eq i32 %i.df, %i.cz
  br i1 %i.dg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.i77
  %i.dh = getelementptr inbounds nuw i8, ptr %.021.i, i64 80
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %.021.i, i64 88
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = tail call fastcc i32 @js_module_attributes_equal(ptr noundef %0, i64 %i.di, i64 %i.dk, i64 %3, i64 %4), !inline_history !1625 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not14.i = icmp eq i32 %i.dl, 0
  br i1 %.not14.i, label %bb.y, label %js_find_loaded_module.exit

bb.y:                                             ; preds = %bb.x, %.lr.ph.i77
  %i.dn = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  %.0.i78 = load ptr, ptr %i.dn, align 8, !tbaa !40 ; 2 uses
  %.not.i79 = icmp eq ptr %.0.i78, %i.dc
  br i1 %.not.i79, label %.loopexit, label %.lr.ph.i77, !llvm.loop !1626

js_find_loaded_module.exit:                       ; preds = %bb.x
  %i.do = getelementptr inbounds i8, ptr %.021.i, i64 -8
end_hunk_20
begin_hunk_21_@JS_WriteFunctionTag:bb.a
  %i.qs = trunc nuw i32 %.0.lcssa.i.i226 to i8    ; 2 uses
  %i.qt = load i64, ptr %i.h, align 8, !tbaa !456
  %i.qu = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.qv = icmp eq i64 %i.qt, %i.qu
  br i1 %i.qv, label %bb.cx, label %bb.cy, !prof !9

bb.cx:                                            ; preds = %._crit_edge.i.i225
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.qs)
  br label %bc_put_leb128.exit227

bb.cy:                                            ; preds = %._crit_edge.i.i225
  %i.qw = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.qx = add i64 %i.qu, 1
  store i64 %i.qx, ptr %i.j, align 8, !tbaa !457
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 %i.qu
  store i8 %i.qs, ptr %i.qy, align 1, !tbaa !35
  br label %bc_put_leb128.exit227

bc_put_leb128.exit227:                            ; preds = %bb.cx, %bb.cy
  %i.qz = load i16, ptr %i.or, align 4            ; 4 uses
  %i.ra = and i16 %i.qz, 7
  %i.rb = lshr i16 %i.qz, 1
  %i.rc = and i16 %i.rb, 8
  %i.rd = or disjoint i16 %i.rc, %i.ra
  %i.re = shl i16 %i.qz, 1
  %i.rf = and i16 %i.re, 16
  %i.rg = or disjoint i16 %i.rd, %i.rf
  %i.rh = lshr i16 %i.qz, 3
  %i.ri = and i16 %i.rh, 480
  %i.rj = or disjoint i16 %i.rg, %i.ri            ; 2 uses
  %i.rk = zext nneg i16 %i.rj to i32              ; 2 uses
  %i.rl = lshr i32 %i.rk, 7                       ; 4 uses
  %.not9.i.i228 = icmp eq i32 %i.rl, 0
  br i1 %.not9.i.i228, label %._crit_edge.i.i233, label %.lr.ph.i.i229

.lr.ph.i.i229:                                    ; preds = %bc_put_leb128.exit227
  %i.rm = trunc i16 %i.rj to i8
  %i.rn = or i8 %i.rm, -128                       ; 2 uses
  %i.ro = load i64, ptr %i.h, align 8, !tbaa !456 ; 2 uses
  %i.rp = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.rq = icmp eq i64 %i.ro, %i.rp
  br i1 %i.rq, label %bb.cz, label %bb.dc, !prof !9

bb.cz:                                            ; preds = %.lr.ph.i.i229
  %.not569 = icmp eq i64 %i.ro, -1
  br i1 %.not569, label %bb.db, label %bb.da, !prof !195

bb.da:                                            ; preds = %bb.cz
  %i.rr = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %i.g, i64 noundef 1)
  %.not.i.i326 = icmp eq i32 %i.rr, 0
  br i1 %.not.i.i326, label %._crit_edge.i327, label %._crit_edge.i.i233

._crit_edge.i327:                                 ; preds = %bb.da
  %.pre.i328 = load i64, ptr %i.j, align 8, !tbaa !457
  br label %bb.db

bb.db:                                            ; preds = %._crit_edge.i327, %bb.cz
  %i.rs = phi i64 [ %.pre.i328, %._crit_edge.i327 ], [ -1, %bb.cz ]
  %i.rt = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rs
  store i8 %i.rn, ptr %i.ru, align 1
  %i.rv = load i64, ptr %i.j, align 8, !tbaa !457
  %i.rw = add i64 %i.rv, 1
  store i64 %i.rw, ptr %i.j, align 8, !tbaa !457
  br label %._crit_edge.i.i233

bb.dc:                                            ; preds = %.lr.ph.i.i229
  %i.rx = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.ry = add i64 %i.rp, 1
  store i64 %i.ry, ptr %i.j, align 8, !tbaa !457
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rx, i64 %i.rp
  store i8 %i.rn, ptr %i.rz, align 1, !tbaa !35
  br label %._crit_edge.i.i233

._crit_edge.i.i233:                               ; preds = %bb.db, %bb.da, %bb.dc, %bc_put_leb128.exit227
  %.0.lcssa.i.i234 = phi i32 [ %i.rk, %bc_put_leb128.exit227 ], [ %i.rl, %bb.dc ], [ %i.rl, %bb.da ], [ %i.rl, %bb.db ]
  %i.sa = trunc nuw i32 %.0.lcssa.i.i234 to i8    ; 2 uses
  %i.sb = load i64, ptr %i.h, align 8, !tbaa !456
  %i.sc = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.sd = icmp eq i64 %i.sb, %i.sc
  br i1 %i.sd, label %bb.dd, label %bb.de, !prof !9

bb.dd:                                            ; preds = %._crit_edge.i.i233
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.sa)
  br label %bc_put_leb128.exit235

bb.de:                                            ; preds = %._crit_edge.i.i233
  %i.se = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.sf = add i64 %i.sc, 1
  store i64 %i.sf, ptr %i.j, align 8, !tbaa !457
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 %i.sc
  store i8 %i.sa, ptr %i.sg, align 1, !tbaa !35
  br label %bc_put_leb128.exit235

bc_put_leb128.exit235:                            ; preds = %bb.dd, %bb.de
  %indvars.iv.next443 = add nuw nsw i64 %indvars.iv442, 1 ; 2 uses
  %i.sh = load i16, ptr %i.fr, align 2, !tbaa !394
  %i.si = zext i16 %i.sh to i64
  %i.sj = icmp samesign ult i64 %indvars.iv.next443, %i.si
  br i1 %i.sj, label %bb.ci, label %.preheader, !llvm.loop !1665

bb.df:                                            ; preds = %bb.dg
  %indvars.iv.next446 = add nuw nsw i64 %indvars.iv445, 1 ; 2 uses
  %i.sk = load i32, ptr %i.gm, align 4, !tbaa !182
  %i.sl = sext i32 %i.sk to i64
  %i.sm = icmp slt i64 %indvars.iv.next446, %i.sl
  br i1 %i.sm, label %bb.dg, label %._crit_edge, !llvm.loop !1666

bb.dg:                                            ; preds = %.lr.ph417, %bb.df
  %indvars.iv445 = phi i64 [ 0, %.lr.ph417 ], [ %indvars.iv.next446, %bb.df ] ; 2 uses
  %i.sn = load ptr, ptr %i.op, align 8, !tbaa !203
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sn, i64 %indvars.iv445 ; 2 uses
  %i.sp = load i64, ptr %i.so, align 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sr = load i64, ptr %i.sq, align 8
  %i.ss = tail call fastcc i32 @JS_WriteObjectRec(ptr noundef %0, i64 %i.sp, i64 %i.sr)
  %.not103 = icmp eq i32 %i.ss, 0
  br i1 %.not103, label %bb.df, label %dbuf_put.exit286

._crit_edge:                                      ; preds = %bb.df, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  %i.st = load i32, ptr %i.hg, align 8, !tbaa !396 ; 4 uses
  %i.su = load ptr, ptr %0, align 8, !tbaa !921   ; 2 uses
  %i.sv = sext i32 %i.st to i64                   ; 7 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.su, i64 16 ; 2 uses
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !50 ; 8 uses
  %i.sy = icmp eq i32 %i.st, 0
  br i1 %i.sy, label %bb.dn, label %bb.dh, !prof !9

bb.dh:                                            ; preds = %._crit_edge
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 40 ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sx, i64 48 ; 3 uses
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !10
  %i.tc = add i64 %i.tb, %i.sv
  %i.td = getelementptr inbounds nuw i8, ptr %i.sx, i64 56
  %i.te = load i64, ptr %i.td, align 8, !tbaa !14
  %i.tf = add i64 %i.te, -1
  %i.tg = icmp ugt i64 %i.tc, %i.tf
  br i1 %i.tg, label %bb.dn, label %bb.di, !prof !9

bb.di:                                            ; preds = %bb.dh
  %i.th = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.sx, i64 noundef %i.sv), !inline_history !63 ; 8 uses
  %.not.i.i.i236 = icmp eq ptr %i.th, null
  br i1 %.not.i.i.i236, label %._crit_edge.i.i237, label %bb.dj

._crit_edge.i.i237:                               ; preds = %bb.di
  %.pre.i.i = load ptr, ptr %i.sw, align 8, !tbaa !50
  br label %bb.dn

bb.dj:                                            ; preds = %bb.di
  %i.ti = load i64, ptr %i.sz, align 8, !tbaa !34
  %i.tj = add i64 %i.ti, 1
  store i64 %i.tj, ptr %i.sz, align 8, !tbaa !34
  %i.tk = getelementptr inbounds i8, ptr %i.th, i64 -8 ; 3 uses
  %i.tl = load i16, ptr %i.tk, align 8, !tbaa !35
  %i.tm = icmp eq i16 %i.tl, -1
  br i1 %i.tm, label %bb.dk, label %bb.dm

bb.dk:                                            ; preds = %bb.dj
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 1064
  %i.to = icmp eq ptr %i.tk, %i.tn
  br i1 %i.to, label %bb.dp, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tp = getelementptr inbounds nuw i8, ptr %i.sx, i64 32
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !36
  %i.tr = tail call i64 %i.tq(ptr noundef nonnull %i.tk) #49, !inline_history !1667 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.tr, 0
  %i.ts = select i1 %.not15.i.i.i.i, i64 8, i64 %i.tr
  br label %bb.dp

bb.dm:                                            ; preds = %bb.dj
  %i.tt = getelementptr inbounds i8, ptr %i.th, i64 -6
  %i.tu = load i8, ptr %i.tt, align 2, !tbaa !35
  %i.tv = zext i8 %i.tu to i64
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.tv
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !38
  %i.ty = zext i16 %i.tx to i64
  br label %bb.dp

bb.dn:                                            ; preds = %._crit_edge.i.i237, %bb.dh, %._crit_edge
  %i.tz = phi ptr [ %.pre.i.i, %._crit_edge.i.i237 ], [ %i.sx, %bb.dh ], [ %i.sx, %._crit_edge ]
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 1256 ; 3 uses
  %i.ub = load i8, ptr %i.ua, align 8, !tbaa !57, !range !58, !noundef !59
  %i.uc = trunc nuw i8 %i.ub to i1
  br i1 %i.uc, label %JS_WriteFunctionBytecode.exit.thread, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.ua, align 8, !tbaa !57
  %i.ud = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %i.su, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.ua, align 8, !tbaa !57
  br label %JS_WriteFunctionBytecode.exit.thread

bb.dp:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  %.011.i.i.i.i = phi i64 [ 8, %bb.dk ], [ %i.ts, %bb.dl ], [ %i.ty, %bb.dm ]
  %i.ue = load i64, ptr %i.ta, align 8, !tbaa !10
  %i.uf = add i64 %i.ue, %.011.i.i.i.i
  store i64 %i.uf, ptr %i.ta, align 8, !tbaa !10
  %i.ug = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.uh = load ptr, ptr %i.ug, align 8, !tbaa !395
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.th, ptr align 1 %i.uh, i64 %i.sv, i1 false)
  %i.ui = icmp sgt i32 %i.st, 0
  br i1 %i.ui, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.dp, %bb.ds
  %.038.i = phi i32 [ %i.uz, %bb.ds ], [ 0, %bb.dp ] ; 2 uses
  %i.uj = zext nneg i32 %.038.i to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.uj ; 2 uses
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !35  ; 2 uses
  %i.um = zext i8 %i.ul to i32                    ; 2 uses
  %i.un = icmp ugt i8 %i.ul, -72
  %i.uo = add nuw nsw i32 %i.um, 19
  %i.up = select i1 %i.un, i32 %i.uo, i32 %i.um
  %i.uq = zext nneg i32 %i.up to i64
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.uq ; 2 uses
  %i.us = load i8, ptr %i.ur, align 4, !tbaa !1357
  %i.ut = zext i8 %i.us to i32
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ur, i64 3
  %i.uv = load i8, ptr %i.uu, align 1, !tbaa !1359
  %.off.i = add i8 %i.uv, -24
  %switch.i = icmp ult i8 %.off.i, 5
  br i1 %switch.i, label %bb.dq, label %bb.ds

bb.dq:                                            ; preds = %.lr.ph.i
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uk, i64 1 ; 2 uses
  %.val.i = load i32, ptr %i.uw, align 1
  %i.ux = call fastcc i32 @bc_atom_to_idx(ptr noundef nonnull %0, ptr noundef %i.b, i32 noundef %.val.i)
  %.not34.i = icmp eq i32 %i.ux, 0
  br i1 %.not34.i, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %bb.dq
  %i.uy = load i32, ptr %i.b, align 4, !tbaa !8
  store i32 %i.uy, ptr %i.uw, align 1
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %.lr.ph.i
  %i.uz = add nuw nsw i32 %.038.i, %i.ut          ; 2 uses
  %i.va = icmp slt i32 %i.uz, %i.st
  br i1 %i.va, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1668

._crit_edge.i:                                    ; preds = %bb.ds, %bb.dp
  %i.vb = load i64, ptr %i.j, align 8, !tbaa !457 ; 2 uses
  %i.vc = add i64 %i.vb, %i.sv
  %i.vd = load i64, ptr %i.h, align 8, !tbaa !456
  %i.ve = icmp ugt i64 %i.vc, %i.vd
  br i1 %i.ve, label %bb.dt, label %bb.du, !prof !9

bb.dt:                                            ; preds = %._crit_edge.i
  %i.vf = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %i.g, i64 noundef range(i64 -2147483648, 2147483648) %i.sv)
  %.not.i.not.i = icmp eq i32 %i.vf, 0
  br i1 %.not.i.not.i, label %._crit_edge39.i, label %bb.dw

._crit_edge39.i:                                  ; preds = %bb.dt
  %.pre.i = load i64, ptr %i.j, align 8, !tbaa !457
  br label %bb.du

bb.du:                                            ; preds = %._crit_edge39.i, %._crit_edge.i
  %i.vg = phi i64 [ %.pre.i, %._crit_edge39.i ], [ %i.vb, %._crit_edge.i ]
  %i.vh = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 %i.vg
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vi, ptr nonnull readonly align 1 %i.th, i64 range(i64 -2147483648, 2147483648) %i.sv, i1 false)
  %i.vj = load i64, ptr %i.j, align 8, !tbaa !457
  %i.vk = add i64 %i.vj, %i.sv
  store i64 %i.vk, ptr %i.j, align 8, !tbaa !457
  br label %bb.dw

bb.dv:                                            ; preds = %bb.dq
  %i.vl = load ptr, ptr %0, align 8, !tbaa !921
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.vn, ptr noundef nonnull %i.th)
  br label %JS_WriteFunctionBytecode.exit.thread

JS_WriteFunctionBytecode.exit.thread:             ; preds = %bb.dv, %bb.dn, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  br label %dbuf_put.exit286

bb.dw:                                            ; preds = %bb.du, %bb.dt
  %i.vo = load ptr, ptr %0, align 8, !tbaa !921
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.vq, ptr noundef nonnull %i.th)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  %i.vr = load i8, ptr %i.t, align 4, !tbaa !929, !range !58, !noundef !59
  %i.vs = trunc nuw i8 %i.vr to i1
  br i1 %i.vs, label %bb.dx, label %dbuf_put.exit286

bb.dx:                                            ; preds = %bb.dw
  %i.vt = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.vu = load i32, ptr %i.vt, align 8, !tbaa !466 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.vv = icmp slt i32 %i.vu, 0
  br i1 %i.vv, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.vw = shl i32 %i.vu, 1
  %i.vx = or disjoint i32 %i.vw, 1
  br label %bb.eb

bb.dz:                                            ; preds = %bb.dx
  %i.vy = call fastcc i32 @bc_atom_to_idx(ptr noundef nonnull %0, ptr noundef %i.a, i32 noundef %i.vu)
  %.not.i238 = icmp eq i32 %i.vy, 0
  br i1 %.not.i238, label %bb.ea, label %bc_put_atom.exit248

bb.ea:                                            ; preds = %bb.dz
  %i.vz = load i32, ptr %i.a, align 4, !tbaa !8
  %i.wa = shl i32 %i.vz, 1
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dy
  %storemerge.i240 = phi i32 [ %i.wa, %bb.ea ], [ %i.vx, %bb.dy ] ; 3 uses
  %i.wb = lshr i32 %storemerge.i240, 7            ; 2 uses
  %.not9.i.i.i241 = icmp eq i32 %i.wb, 0
  br i1 %.not9.i.i.i241, label %._crit_edge.i.i.i246, label %.lr.ph.i.i.i242

.lr.ph.i.i.i242:                                  ; preds = %bb.eb, %dbuf_putc.exit.i.i.i244
  %i.wc = phi i32 [ %i.wl, %dbuf_putc.exit.i.i.i244 ], [ %i.wb, %bb.eb ] ; 3 uses
  %.010.i.i.i243 = phi i32 [ %i.wc, %dbuf_putc.exit.i.i.i244 ], [ %storemerge.i240, %bb.eb ]
  %i.wd = trunc i32 %.010.i.i.i243 to i8
  %i.we = or i8 %i.wd, -128                       ; 2 uses
  %i.wf = load i64, ptr %i.h, align 8, !tbaa !456
  %i.wg = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.wh = icmp eq i64 %i.wf, %i.wg
  br i1 %i.wh, label %bb.ec, label %bb.ed, !prof !9

bb.ec:                                            ; preds = %.lr.ph.i.i.i242
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.we)
  br label %dbuf_putc.exit.i.i.i244

bb.ed:                                            ; preds = %.lr.ph.i.i.i242
  %i.wi = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.wj = add i64 %i.wg, 1
  store i64 %i.wj, ptr %i.j, align 8, !tbaa !457
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wi, i64 %i.wg
  store i8 %i.we, ptr %i.wk, align 1, !tbaa !35
  br label %dbuf_putc.exit.i.i.i244

dbuf_putc.exit.i.i.i244:                          ; preds = %bb.ed, %bb.ec
  %i.wl = lshr i32 %i.wc, 7                       ; 2 uses
  %.not.i.i.i245 = icmp eq i32 %i.wl, 0
  br i1 %.not.i.i.i245, label %._crit_edge.i.i.i246, label %.lr.ph.i.i.i242

._crit_edge.i.i.i246:                             ; preds = %dbuf_putc.exit.i.i.i244, %bb.eb
  %.0.lcssa.i.i.i247 = phi i32 [ %storemerge.i240, %bb.eb ], [ %i.wc, %dbuf_putc.exit.i.i.i244 ]
  %i.wm = trunc nuw i32 %.0.lcssa.i.i.i247 to i8  ; 2 uses
  %i.wn = load i64, ptr %i.h, align 8, !tbaa !456
  %i.wo = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.wp = icmp eq i64 %i.wn, %i.wo
  br i1 %i.wp, label %bb.ee, label %bb.ef, !prof !9

bb.ee:                                            ; preds = %._crit_edge.i.i.i246
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.wm)
  br label %bc_put_atom.exit248

bb.ef:                                            ; preds = %._crit_edge.i.i.i246
  %i.wq = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.wr = add i64 %i.wo, 1
  store i64 %i.wr, ptr %i.j, align 8, !tbaa !457
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 %i.wo
  store i8 %i.wm, ptr %i.ws, align 1, !tbaa !35
  br label %bc_put_atom.exit248

bc_put_atom.exit248:                              ; preds = %bb.dz, %bb.ee, %bb.ef
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.wt = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !1371 ; 3 uses
  %i.wv = lshr i32 %i.wu, 7                       ; 2 uses
  %.not9.i.i249 = icmp eq i32 %i.wv, 0
  br i1 %.not9.i.i249, label %._crit_edge.i.i254, label %.lr.ph.i.i250

.lr.ph.i.i250:                                    ; preds = %bc_put_atom.exit248, %dbuf_putc.exit.i.i252
  %i.ww = phi i32 [ %i.xf, %dbuf_putc.exit.i.i252 ], [ %i.wv, %bc_put_atom.exit248 ] ; 3 uses
  %.010.i.i251 = phi i32 [ %i.ww, %dbuf_putc.exit.i.i252 ], [ %i.wu, %bc_put_atom.exit248 ]
  %i.wx = trunc i32 %.010.i.i251 to i8
  %i.wy = or i8 %i.wx, -128                       ; 2 uses
  %i.wz = load i64, ptr %i.h, align 8, !tbaa !456
  %i.xa = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.xb = icmp eq i64 %i.wz, %i.xa
  br i1 %i.xb, label %bb.eg, label %bb.eh, !prof !9

bb.eg:                                            ; preds = %.lr.ph.i.i250
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.wy)
  br label %dbuf_putc.exit.i.i252

bb.eh:                                            ; preds = %.lr.ph.i.i250
  %i.xc = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.xd = add i64 %i.xa, 1
  store i64 %i.xd, ptr %i.j, align 8, !tbaa !457
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.xa
  store i8 %i.wy, ptr %i.xe, align 1, !tbaa !35
  br label %dbuf_putc.exit.i.i252

dbuf_putc.exit.i.i252:                            ; preds = %bb.eh, %bb.eg
  %i.xf = lshr i32 %i.ww, 7                       ; 2 uses
  %.not.i.i253 = icmp eq i32 %i.xf, 0
  br i1 %.not.i.i253, label %._crit_edge.i.i254, label %.lr.ph.i.i250

._crit_edge.i.i254:                               ; preds = %dbuf_putc.exit.i.i252, %bc_put_atom.exit248
  %.0.lcssa.i.i255 = phi i32 [ %i.wu, %bc_put_atom.exit248 ], [ %i.ww, %dbuf_putc.exit.i.i252 ]
  %i.xg = trunc nuw i32 %.0.lcssa.i.i255 to i8    ; 2 uses
  %i.xh = load i64, ptr %i.h, align 8, !tbaa !456
  %i.xi = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.xj = icmp eq i64 %i.xh, %i.xi
  br i1 %i.xj, label %bb.ei, label %bb.ej, !prof !9

bb.ei:                                            ; preds = %._crit_edge.i.i254
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.xg)
  br label %bc_put_leb128.exit256

bb.ej:                                            ; preds = %._crit_edge.i.i254
  %i.xk = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.xl = add i64 %i.xi, 1
  store i64 %i.xl, ptr %i.j, align 8, !tbaa !457
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xi
  store i8 %i.xg, ptr %i.xm, align 1, !tbaa !35
  br label %bc_put_leb128.exit256

bc_put_leb128.exit256:                            ; preds = %bb.ei, %bb.ej
  %i.xn = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.xo = load i32, ptr %i.xn, align 8, !tbaa !1372 ; 3 uses
  %i.xp = lshr i32 %i.xo, 7                       ; 2 uses
  %.not9.i.i257 = icmp eq i32 %i.xp, 0
  br i1 %.not9.i.i257, label %._crit_edge.i.i262, label %.lr.ph.i.i258

.lr.ph.i.i258:                                    ; preds = %bc_put_leb128.exit256, %dbuf_putc.exit.i.i260
  %i.xq = phi i32 [ %i.xz, %dbuf_putc.exit.i.i260 ], [ %i.xp, %bc_put_leb128.exit256 ] ; 3 uses
  %.010.i.i259 = phi i32 [ %i.xq, %dbuf_putc.exit.i.i260 ], [ %i.xo, %bc_put_leb128.exit256 ]
  %i.xr = trunc i32 %.010.i.i259 to i8
  %i.xs = or i8 %i.xr, -128                       ; 2 uses
  %i.xt = load i64, ptr %i.h, align 8, !tbaa !456
  %i.xu = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.xv = icmp eq i64 %i.xt, %i.xu
  br i1 %i.xv, label %bb.ek, label %bb.el, !prof !9

bb.ek:                                            ; preds = %.lr.ph.i.i258
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.xs)
  br label %dbuf_putc.exit.i.i260

bb.el:                                            ; preds = %.lr.ph.i.i258
  %i.xw = load ptr, ptr %i.g, align 8, !tbaa !458
  %i.xx = add i64 %i.xu, 1
  store i64 %i.xx, ptr %i.j, align 8, !tbaa !457
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 %i.xu
  store i8 %i.xs, ptr %i.xy, align 1, !tbaa !35
  br label %dbuf_putc.exit.i.i260

dbuf_putc.exit.i.i260:                            ; preds = %bb.el, %bb.ek
  %i.xz = lshr i32 %i.xq, 7                       ; 2 uses
  %.not.i.i261 = icmp eq i32 %i.xz, 0
  br i1 %.not.i.i261, label %._crit_edge.i.i262, label %.lr.ph.i.i258

._crit_edge.i.i262:                               ; preds = %dbuf_putc.exit.i.i260, %bc_put_leb128.exit256
  %.0.lcssa.i.i263 = phi i32 [ %i.xo, %bc_put_leb128.exit256 ], [ %i.xq, %dbuf_putc.exit.i.i260 ]
  %i.ya = trunc nuw i32 %.0.lcssa.i.i263 to i8    ; 2 uses
  %i.yb = load i64, ptr %i.h, align 8, !tbaa !456
  %i.yc = load i64, ptr %i.j, align 8, !tbaa !457 ; 3 uses
  %i.yd = icmp eq i64 %i.yb, %i.yc
  br i1 %i.yd, label %bb.em, label %bb.en, !prof !9

bb.em:                                            ; preds = %._crit_edge.i.i262
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.g, i8 noundef zeroext %i.ya)
end_hunk_21
begin_hunk_22_@json_parse_string:bb.a

bb.aw:                                            ; preds = %bb.x
  %i.fq = icmp slt i8 %i.ca, 0
  br i1 %i.fq, label %bb.ax, label %.loopexit

bb.ax:                                            ; preds = %bb.aw
  %i.fr = call fastcc i32 @utf8_decode(ptr noundef nonnull %.1.lcssa, ptr noundef %i.a)
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !255 ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.bz
  br i1 %i.ft, label %bb.ay, label %.loopexit

bb.ay:                                            ; preds = %bb.ax
  tail call fastcc void @json_parse_error(ptr noundef %0, ptr noundef nonnull %.1.lcssa, ptr noundef nonnull @.str.299)
  br label %.thread104

.loopexit:                                        ; preds = %.thread.3, %bb.at, %bb.ax, %bb.aw, %bb.y, %bb.y, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad
  %.263 = phi i32 [ 8, %bb.z ], [ 12, %bb.aa ], [ 10, %bb.ab ], [ 13, %bb.ac ], [ 9, %bb.ad ], [ %i.de, %bb.y ], [ %i.de, %bb.y ], [ %i.de, %bb.y ], [ %i.fr, %bb.ax ], [ %i.cb, %bb.aw ], [ %i.fl, %.thread.3 ], [ %i.fo, %bb.at ]
  %.3 = phi ptr [ %i.dc, %bb.z ], [ %i.dc, %bb.aa ], [ %i.dc, %bb.ab ], [ %i.dc, %bb.ac ], [ %i.dc, %bb.ad ], [ %i.dc, %bb.y ], [ %i.dc, %bb.y ], [ %i.dc, %bb.y ], [ %i.fs, %bb.ax ], [ %i.bz, %bb.aw ], [ %scevgep163, %.thread.3 ], [ %scevgep163, %bb.at ]
  %i.fu = call fastcc i32 @string_buffer_putc(ptr noundef %2, i32 noundef %.263)
  %.not78 = icmp eq i32 %i.fu, 0
  br i1 %.not78, label %bb.m, label %.thread104

bb.az:                                            ; preds = %bb.r
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 -127, ptr %i.fv, align 8, !tbaa !1092
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 34, ptr %i.fx, align 8, !tbaa !35
  %i.fy = call fastcc { i64, i64 } @string_buffer_end(ptr noundef nonnull %2) ; 2 uses
  %i.fz = extractvalue { i64, i64 } %i.fy, 0
  %i.ga = extractvalue { i64, i64 } %i.fy, 1
  store i64 %i.fz, ptr %i.fw, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.ga, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  store ptr %i.bz, ptr %1, align 8, !tbaa !255
  br label %bb.ba

.thread108:                                       ; preds = %bb.q, %bb.m, %bb.au
  %i.gb = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.300) ; 0 uses
  br label %.thread104

.thread104:                                       ; preds = %.loopexit, %bb.p, %json_parse_error.exit89, %bb.av, %json_parse_error.exit, %bb.ay, %string_buffer_init.exit, %.thread108
  %i.gc = load ptr, ptr %2, align 8, !tbaa !1066
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !1073
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.gg, ptr noundef %i.ge)
  br label %bb.ba

bb.ba:                                            ; preds = %.thread104, %bb.az
  %.0 = phi i32 [ -1, %.thread104 ], [ 0, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #49
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @json_parse_error(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1087 ; 6 uses
  %i.c = icmp ult ptr %i.b, %1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.025 = phi i32 [ %.1, %bb.d ], [ 1, %bb.a ]    ; 2 uses
  %.01824 = phi ptr [ %.119, %bb.d ], [ %i.b, %bb.a ]
  %.02023 = phi ptr [ %i.l, %bb.d ], [ %i.b, %bb.a ] ; 4 uses
  %i.d = load i8, ptr %.02023, align 1, !tbaa !35
  switch i8 %i.d, label %bb.d [
    i8 13, label %bb.b
    i8 10, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.02023, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !35
  %i.g = icmp eq i8 %i.f, 10
  %i.h = select i1 %i.g, i64 2, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i64 [ 1, %.lr.ph ], [ %i.h, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.02023, i64 %i.i ; 2 uses
  %i.k = add nsw i32 %.025, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.121 = phi ptr [ %i.j, %bb.c ], [ %.02023, %.lr.ph ]
  %.119 = phi ptr [ %i.j, %bb.c ], [ %.01824, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ %i.k, %bb.c ], [ %.025, %.lr.ph ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.121, i64 1 ; 3 uses
  %i.m = icmp ult ptr %i.l, %1
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !1746

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.020.lcssa = phi ptr [ %i.b, %bb.a ], [ %i.l, %bb.d ]
  %.018.lcssa = phi ptr [ %i.b, %bb.a ], [ %.119, %bb.d ]
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %.1, %bb.d ]
  %i.n = ptrtoint ptr %1 to i64
  %i.o = ptrtoint ptr %i.b to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = ptrtoint ptr %.020.lcssa to i64
  %i.s = ptrtoint ptr %.018.lcssa to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = add nsw i32 %i.u, 1
  %i.w = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.301, ptr noundef %2, i32 noundef %i.q, i32 noundef %.0.lcssa, i32 noundef %i.v) ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @ident_realloc(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull readnone captures(address) %3) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !255    ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !72     ; 4 uses
  %i.c = icmp ugt i64 %i.b, -6148914691236517207
  %i.d = lshr i64 %i.b, 1
  %i.e = add nuw i64 %i.d, %i.b
  %.0 = select i1 %i.c, i64 -1, i64 %i.e          ; 6 uses
  %i.f = icmp eq ptr %i.a, %3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50   ; 9 uses
  br i1 %i.f, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.0, 0
  br i1 %i.i, label %bb.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  %i.m = add i64 %i.l, %.0
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %i.p = add i64 %i.o, -1
  %i.q = icmp ugt i64 %i.m, %i.p
  br i1 %i.q, label %bb.i, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.r = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.h, i64 noundef %.0), !inline_history !63 ; 5 uses
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.g, align 8, !tbaa !50
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.j, align 8, !tbaa !34
  %i.t = add i64 %i.s, 1
  store i64 %i.t, ptr %i.j, align 8, !tbaa !34
  %i.u = getelementptr inbounds i8, ptr %i.r, i64 -8 ; 3 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !35
  %i.w = icmp eq i16 %i.v, -1
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 1064
  %i.y = icmp eq ptr %i.u, %i.x
  br i1 %i.y, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull %i.u) #49, !inline_history !64 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.ab, 0
  %i.ac = select i1 %.not15.i.i.i, i64 8, i64 %i.ab
  br label %bb.k

bb.h:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds i8, ptr %i.r, i64 -6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !35
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !38
  %i.ai = zext i16 %i.ah to i64
  br label %bb.k

bb.i:                                             ; preds = %._crit_edge.i, %bb.c, %bb.b
  %i.aj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1256 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !57, !range !58, !noundef !59
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %js_malloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ak, align 8, !tbaa !57
  %i.an = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.ak, align 8, !tbaa !57
  br label %js_malloc.exit.thread

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i = phi i64 [ 8, %bb.f ], [ %i.ac, %bb.g ], [ %i.ai, %bb.h ]
  %i.ao = load i64, ptr %i.k, align 8, !tbaa !10
  %i.ap = add i64 %i.ao, %.011.i.i.i
  store i64 %i.ap, ptr %i.k, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr align 1 %i.a, i64 %i.b, i1 false)
  br label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.aq = tail call ptr @js_realloc_rt(ptr noundef %i.h, ptr noundef %i.a, i64 noundef %.0), !inline_history !346 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null               ; 2 uses
  %i.ar = icmp ne i64 %.0, 0
  %i.as = and i1 %i.ar, %.not.i
  br i1 %i.as, label %bb.m, label %js_realloc.exit, !prof !9

bb.m:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1256 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !57, !range !58, !noundef !59
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %js_malloc.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 1, ptr %i.au, align 8, !tbaa !57
  %i.ax = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1464 ; 0 uses
  store i8 0, ptr %i.au, align 8, !tbaa !57
  br label %js_malloc.exit.thread

js_realloc.exit:                                  ; preds = %bb.l
  br i1 %.not.i, label %js_malloc.exit.thread, label %bb.o

bb.o:                                             ; preds = %js_realloc.exit, %bb.k
  %.021 = phi ptr [ %i.r, %bb.k ], [ %i.aq, %js_realloc.exit ]
  store ptr %.021, ptr %1, align 8, !tbaa !255
  store i64 %.0, ptr %2, align 8, !tbaa !72
  br label %js_malloc.exit.thread

js_malloc.exit.thread:                            ; preds = %bb.n, %bb.m, %bb.j, %bb.i, %js_realloc.exit, %bb.o
  %.022 = phi i32 [ 0, %bb.o ], [ -1, %bb.j ], [ -1, %js_realloc.exit ], [ -1, %bb.i ], [ -1, %bb.m ], [ -1, %bb.n ]
  ret i32 %.022
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #42

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @json_parse_record_add(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, i32 noundef range(i32 1, 0) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !1756 ; 3 uses
  %i.d = load i32, ptr %3, align 4, !tbaa !8
  %.not39 = icmp slt i32 %i.c, %i.d
  br i1 %.not39, label %js_resize_array.exit.thread, label %js_resize_array.exit, !prof !195

js_resize_array.exit:                             ; preds = %bb.a
  %i.e = add nsw i32 %i.c, 1
  %i.f = tail call fastcc i32 @js_realloc_array(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 48, ptr noundef nonnull %3, i32 noundef %i.e), !inline_history !854
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %thread-pre-split, label %json_parse_record_resize_hash.exit

thread-pre-split:                                 ; preds = %js_resize_array.exit
  %.pr = load i32, ptr %i.a, align 8, !tbaa !1756
  br label %js_resize_array.exit.thread

js_resize_array.exit.thread:                      ; preds = %bb.a, %thread-pre-split
  %i.g = phi i32 [ %.pr, %thread-pre-split ], [ %i.c, %bb.a ] ; 5 uses
  %i.h = icmp sgt i32 %i.g, 7
  br i1 %i.h, label %bb.b, label %json_parse_record_resize_hash.exit.thread

bb.b:                                             ; preds = %js_resize_array.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1759
  %.not32 = icmp ult i32 %i.g, %i.j
  br i1 %.not32, label %json_parse_record_resize_hash.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.l = sub nuw nsw i32 32, %i.k
  %i.m = shl nuw i32 1, %i.l                      ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !50   ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !10
  %i.u = add i64 %i.t, %i.o
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  %i.x = add i64 %i.w, -1
  %i.y = icmp ugt i64 %i.u, %i.x
  br i1 %i.y, label %bb.i, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.z = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.q, i64 noundef %i.o), !inline_history !63 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.e

._crit_edge.i.i:                                  ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %i.p, align 8, !tbaa !50
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !34
  %i.ab = add i64 %i.aa, 1
  store i64 %i.ab, ptr %i.r, align 8, !tbaa !34
  %i.ac = getelementptr inbounds i8, ptr %i.z, i64 -8 ; 3 uses
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !35
  %i.ae = icmp eq i16 %i.ad, -1
  br i1 %i.ae, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 1064
  %i.ag = icmp eq ptr %i.ac, %i.af
  br i1 %i.ag, label %.lr.ph.preheader.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !36
  %i.aj = tail call i64 %i.ai(ptr noundef nonnull %i.ac) #49, !inline_history !1760 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = select i1 %.not15.i.i.i.i, i64 8, i64 %i.aj
  br label %.lr.ph.preheader.i

bb.h:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds i8, ptr %i.z, i64 -6
  %i.am = load i8, ptr %i.al, align 2, !tbaa !35
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !38
  %i.aq = zext i16 %i.ap to i64
  br label %.lr.ph.preheader.i

bb.i:                                             ; preds = %._crit_edge.i.i, %bb.c
  %i.ar = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.q, %bb.c ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1256 ; 3 uses
  %i.at = load i8, ptr %i.as, align 8, !tbaa !57, !range !58, !noundef !59
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %json_parse_record_resize_hash.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.as, align 8, !tbaa !57
  %i.av = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.as, align 8, !tbaa !57
  br label %json_parse_record_resize_hash.exit

.lr.ph.preheader.i:                               ; preds = %bb.h, %bb.g, %bb.f
  %.011.i.i.i.i = phi i64 [ 8, %bb.f ], [ %i.ak, %bb.g ], [ %i.aq, %bb.h ]
  %i.aw = load i64, ptr %i.s, align 8, !tbaa !10
  %i.ax = add i64 %i.aw, %.011.i.i.i.i
  store i64 %i.ax, ptr %i.s, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1761
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !50
  tail call void @js_free_rt(ptr noundef %i.ba, ptr noundef %i.az)
  store ptr %i.z, ptr %i.ay, align 8, !tbaa !1761
  store i32 %i.m, ptr %i.i, align 4, !tbaa !1759
  br label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.bb = load i32, ptr %i.a, align 8, !tbaa !1756
  %.not.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i, label %json_parse_record_resize_hash.exit.thread, label %.lr.ph33.i

.lr.ph33.i:                                       ; preds = %.preheader.i
  %i.bc = load ptr, ptr %i.b, align 8, !tbaa !1762
  br label %bb.k

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv.i
  store i32 -1, ptr %i.bd, align 4, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.be = load i32, ptr %i.i, align 4, !tbaa !1759
  %i.bf = zext i32 %i.be to i64
  %i.bg = icmp samesign ult i64 %indvars.iv.next.i, %i.bf
  br i1 %i.bg, label %.lr.ph.i, label %.preheader.i, !llvm.loop !1763

bb.k:                                             ; preds = %bb.k, %.lr.ph33.i
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph33.i ], [ %indvars.iv.next36.i, %bb.k ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %indvars.iv35.i ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !1751
  %i.bj = load i32, ptr %i.i, align 4, !tbaa !1759
  %i.bk = add i32 %i.bj, -1
  %i.bl = and i32 %i.bk, %i.bi
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !1764
  %i.bq = trunc nuw i64 %indvars.iv35.i to i32
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !8
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %i.br = load i32, ptr %i.a, align 8, !tbaa !1756 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = icmp samesign ult i64 %indvars.iv.next36.i, %i.bs
  br i1 %i.bt, label %bb.k, label %json_parse_record_resize_hash.exit.thread, !llvm.loop !1765

json_parse_record_resize_hash.exit.thread:        ; preds = %bb.k, %.preheader.i, %bb.b, %js_resize_array.exit.thread
  %i.bu = phi i32 [ %i.g, %js_resize_array.exit.thread ], [ 0, %.preheader.i ], [ %i.g, %bb.b ], [ %i.br, %bb.k ] ; 2 uses
  %i.bv = load ptr, ptr %i.b, align 8, !tbaa !1762
  %i.bw = add nsw i32 %i.bu, 1
  store i32 %i.bw, ptr %i.a, align 8, !tbaa !1756
  %i.bx = sext i32 %i.bu to i64
  %i.by = getelementptr inbounds [48 x i8], ptr %i.bv, i64 %i.bx ; 5 uses
end_hunk_22
begin_hunk_23_@js_map_iterator_next:bb.a
  br i1 %i.ay, label %bb.i, label %JS_FreeValue.exit

bb.i:                                             ; preds = %._crit_edge
  %i.az = inttoptr i64 %i.at to ptr
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8  ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !8
  %i.bd = icmp slt i32 %i.bb, 2
  br i1 %i.bd, label %bb.j, label %JS_FreeValue.exit

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @js_free_value_rt(ptr noundef %i.aw, i64 %i.at, i64 %i.au), !inline_history !143
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %._crit_edge, %bb.i, %bb.j
  store i32 0, ptr %i.i, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  store i64 3, ptr %i.t, align 8, !tbaa !72
  br label %bb.k

bb.k:                                             ; preds = %JS_GetOpaque2.exit, %JS_FreeValue.exit
  store i32 1, ptr %5, align 4, !tbaa !8
  br label %bb.u

.lr.ph:                                           ; preds = %map_decref_record.exit, %bb.l
  %.155 = phi ptr [ %i.bi, %bb.l ], [ %.0, %map_decref_record.exit ] ; 7 uses
  %i.be = getelementptr inbounds i8, ptr %.155, i64 -12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !1286, !range !58, !noundef !59
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.155, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1790 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.ar
  br i1 %i.bj, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.bk = getelementptr inbounds i8, ptr %.155, i64 -16 ; 3 uses
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1301
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bk, align 8, !tbaa !1301
  store ptr %i.bk, ptr %i.ad, align 8, !tbaa !1298
  store i32 0, ptr %5, align 4, !tbaa !8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1785 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.155, i64 32
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.155, i64 40
  %i.bt = load i64, ptr %i.bs, align 8            ; 2 uses
  %i.bu = trunc i64 %i.bt to i32
  %i.bv = icmp ugt i32 %i.bu, -10
  br i1 %i.bv, label %bb.o, label %js_dup.exit

bb.o:                                             ; preds = %bb.n
  %i.bw = inttoptr i64 %i.br to ptr
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -4 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !8
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !8
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.n, %bb.o
  %.sroa.6.0.extract.shift = and i64 %i.br, -4294967296
  br label %bb.u

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.ca = getelementptr inbounds nuw i8, ptr %.155, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !129
  %.not46 = icmp eq i32 %6, 0
  %i.cb = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.155, i64 48
  %.sink = select i1 %.not46, ptr %i.cc, ptr %i.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %.sink, i64 16, i1 false)
  %i.cd = icmp eq i32 %i.bo, 1
  br i1 %i.cd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.cf = load i64, ptr %i.ce, align 16           ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = icmp ugt i32 %i.ci, -10
  br i1 %i.cj, label %bb.r, label %js_dup.exit51

bb.r:                                             ; preds = %bb.q
  %i.ck = inttoptr i64 %i.cf to ptr
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 -4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !8
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !8
  br label %js_dup.exit51

js_dup.exit51:                                    ; preds = %bb.q, %bb.r
  %.fca.0.insert.i.i49 = insertvalue { i64, i64 } poison, i64 %i.cf, 0
  %.fca.1.insert.i.i50 = insertvalue { i64, i64 } %.fca.0.insert.i.i49, i64 %i.ch, 1
  br label %bb.t

bb.s:                                             ; preds = %bb.p
  %i.co = call fastcc { i64, i64 } @js_create_array(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %7)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %js_dup.exit51
  %.pn = phi { i64, i64 } [ %.fca.1.insert.i.i50, %js_dup.exit51 ], [ %i.co, %bb.s ] ; 2 uses
  %.sroa.8.0 = extractvalue { i64, i64 } %.pn, 1
  %.sroa.036.0.in = extractvalue { i64, i64 } %.pn, 0 ; 2 uses
  %.sroa.6.0.in = and i64 %.sroa.036.0.in, -4294967296
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %js_dup.exit, %bb.k, %bb.c
  %.sroa.036.1 = phi i64 [ 0, %bb.k ], [ %i.br, %js_dup.exit ], [ %.sroa.036.0.in, %bb.t ], [ 0, %bb.c ]
  %.sroa.6.1 = phi i64 [ 0, %bb.k ], [ %.sroa.6.0.extract.shift, %js_dup.exit ], [ %.sroa.6.0.in, %bb.t ], [ 0, %bb.c ]
  %.sroa.8.1 = phi i64 [ 3, %bb.k ], [ %i.bt, %js_dup.exit ], [ %.sroa.8.0, %bb.t ], [ 6, %bb.c ]
  %.sroa.036.0.insert.ext = and i64 %.sroa.036.1, 4294967295
  %.sroa.036.0.insert.insert = or disjoint i64 %.sroa.6.1, %.sroa.036.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.036.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.1, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc { i64, i64 } @js_promise_new(ptr noundef %0, i64 %1, i64 %2, ptr nofree noundef captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc { i64, i64 } @js_create_from_ctor(ptr noundef %0, i64 %1, i64 %2, i32 noundef 52) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 8 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 9 uses
  %i.d = and i64 %i.c, 4294967295
  %i.e = icmp eq i64 %i.d, 6
  br i1 %i.e, label %JS_FreeValueRT.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !50   ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !10
  %i.k = add i64 %i.j, 64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  %i.n = add i64 %i.m, -1
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %js_arena_malloc.exit.thread, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 680
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 688
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40   ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.p
  br i1 %i.s, label %bb.d, label %bb.e, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.t = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.g, i32 noundef 7) ; 2 uses
  %.not.i46 = icmp eq ptr %i.t, null
  br i1 %.not.i46, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.e

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.d
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i45 = phi ptr [ %i.t, %bb.d ], [ %i.r, %bb.c ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i45, i64 38 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !38   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i45, i64 40
  %i.x = zext i16 %i.v to i64
  %i.y = mul nuw nsw i64 %i.x, 72
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.y ; 15 uses
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !35
  store i16 %i.aa, ptr %i.u, align 2, !tbaa !38
  store i16 %i.v, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i45, i64 34 ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !38
  %i.ad = add i16 %i.ac, 1                        ; 2 uses
  store i16 %i.ad, ptr %i.ab, align 2, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i45, i64 36
  %i.af = load i16, ptr %i.ae, align 4, !tbaa !38
  %i.ag = icmp eq i16 %i.ad, %i.af
  br i1 %i.ag, label %bb.f, label %js_arena_calloc.exit.thread26.i.i, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %.0.i45, align 8, !tbaa !41 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i45, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !40
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i45, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i

js_arena_calloc.exit.thread26.i.i:                ; preds = %bb.f, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.al, i8 0, i64 64, i1 false)
  %i.am = load i64, ptr %i.h, align 8, !tbaa !34
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.h, align 8, !tbaa !34
  %i.ao = load i16, ptr %i.z, align 8, !tbaa !35
  %i.ap = icmp eq i16 %i.ao, -1
  br i1 %i.ap, label %bb.g, label %bb.i

bb.g:                                             ; preds = %js_arena_calloc.exit.thread26.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 1064
  %i.ar = icmp eq ptr %i.z, %i.aq
  br i1 %i.ar, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !36
  %i.au = tail call i64 %i.at(ptr noundef nonnull %i.z) #49, !inline_history !1489 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.au, 0
  %i.av = select i1 %.not15.i.i.i, i64 8, i64 %i.au
  br label %bb.n

bb.i:                                             ; preds = %js_arena_calloc.exit.thread26.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ax = load i8, ptr %i.aw, align 2, !tbaa !35
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !38
  %i.bb = zext i16 %i.ba to i64
  br label %bb.n

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.b
  %i.bc = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.g, %bb.b ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1256 ; 3 uses
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.bd, align 8, !tbaa !57
  %i.bg = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46), !inline_history !1490 ; 0 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !57
  %.pre53 = load ptr, ptr %i.f, align 8, !tbaa !50
  br label %bb.k

bb.k:                                             ; preds = %js_arena_malloc.exit.thread, %bb.j
  %i.bh = phi ptr [ %i.bc, %js_arena_malloc.exit.thread ], [ %.pre53, %bb.j ]
  %i.bi = trunc i64 %i.c to i32
  %i.bj = icmp ugt i32 %i.bi, -10
  br i1 %i.bj, label %bb.l, label %JS_FreeValueRT.exit

bb.l:                                             ; preds = %bb.k
  %i.bk = inttoptr i64 %i.b to ptr
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8  ; 2 uses
  %i.bn = add nsw i32 %i.bm, -1
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !8
  %i.bo = icmp slt i32 %i.bm, 2
  br i1 %i.bo, label %bb.m, label %JS_FreeValueRT.exit

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @js_free_value_rt(ptr noundef %i.bh, i64 %i.b, i64 %i.c), !inline_history !265
  br label %JS_FreeValueRT.exit

bb.n:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.011.i.i.i = phi i64 [ 8, %bb.g ], [ %i.av, %bb.h ], [ %i.bb, %bb.i ]
  %i.bp = load i64, ptr %i.i, align 8, !tbaa !10
  %i.bq = add i64 %i.bp, %.011.i.i.i
  store i64 %i.bq, ptr %i.i, align 8, !tbaa !10
  store i32 0, ptr %i.al, align 8, !tbaa !1127
  %i.br = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i8 0, ptr %i.br, align 8, !tbaa !1129
  %i.bs = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 3 uses
  store ptr %i.bs, ptr %i.bs, align 8, !tbaa !41
  %i.bt = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 3 uses
  store ptr %i.bu, ptr %i.bu, align 8, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !40
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  store i32 0, ptr %i.bw, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 60
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !35
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  store i64 3, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !72
  %i.bx = inttoptr i64 %i.b to ptr                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store ptr %i.al, ptr %i.by, align 8, !tbaa !35
  %i.bz = tail call fastcc i32 @js_create_resolving_functions(ptr noundef nonnull %0, ptr noundef %3, i64 %i.b, i64 %i.c)
  %.not40 = icmp eq i32 %i.bz, 0
  %i.ca = load ptr, ptr %i.f, align 8, !tbaa !50  ; 4 uses
  br i1 %.not40, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = trunc i64 %i.c to i32
  %i.cc = icmp ugt i32 %i.cb, -10
  br i1 %i.cc, label %bb.p, label %JS_FreeValueRT.exit

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds i8, ptr %i.bx, i64 -4 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8  ; 2 uses
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !8
  %i.cg = icmp slt i32 %i.ce, 2
  br i1 %i.cg, label %bb.q, label %JS_FreeValueRT.exit

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ca, i64 %i.b, i64 %i.c), !inline_history !265
  br label %JS_FreeValueRT.exit

bb.r:                                             ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 1288
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !1133 ; 2 uses
  %.not41 = icmp eq ptr %i.ci, null
  br i1 %.not41, label %JS_FreeValueRT.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 1304
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !1140 ; 3 uses
  %.not42 = icmp eq ptr %i.ck, null
  br i1 %.not42, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %.sroa.0.0.copyload1 = load i64, ptr %i.cl, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %.sroa.5.0.copyload2 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !72
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.copyload2, %bb.t ], [ 3, %bb.s ]
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload1, %bb.t ], [ 0, %bb.s ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ca, i64 1296
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !1134
  tail call void %i.ci(ptr noundef nonnull %0, i32 noundef 0, i64 %i.b, i64 %i.c, i64 %.sroa.0.0, i64 %.sroa.5.0, ptr noundef %i.cn) #49
  br label %JS_FreeValueRT.exit

JS_FreeValueRT.exit:                              ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.l, %bb.k, %bb.r, %bb.u, %bb.a
  %.sroa.538.0 = phi i64 [ %i.b, %bb.r ], [ 0, %bb.m ], [ 0, %bb.a ], [ %i.b, %bb.u ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ]
  %.sroa.8.0 = phi i64 [ %i.c, %bb.r ], [ 6, %bb.m ], [ 6, %bb.a ], [ %i.c, %bb.u ], [ 6, %bb.k ], [ 6, %bb.l ], [ 6, %bb.o ], [ 6, %bb.p ], [ 6, %bb.q ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.538.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_create_resolving_functions(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 32)) %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.JSValue, align 8            ; 6 uses
  %5 = alloca %struct.JSValue, align 8            ; 6 uses
  %6 = alloca %struct.JSValue, align 8            ; 6 uses
  %7 = alloca %struct.JSValue, align 8            ; 6 uses
  store i32 0, ptr %1, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %.sroa.28.0..sroa_idx, align 4, !tbaa !35
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 3, ptr %.sroa.39.0..sroa_idx, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.a, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 0, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !35
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 3, ptr %.sroa.36.0..sroa_idx, align 8, !tbaa !72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !10
  %i.g = add i64 %i.f, 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  %i.j = add i64 %i.i, -1
  %i.k = icmp ugt i64 %i.g, %i.j
  br i1 %i.k, label %js_arena_malloc.exit.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 568
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !40   ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.l
  br i1 %i.o, label %bb.c, label %bb.d, !prof !9

bb.c:                                             ; preds = %bb.b
  %i.p = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.c, i32 noundef 0) ; 2 uses
  %.not.i71 = icmp eq ptr %i.p, null
  br i1 %.not.i71, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.d

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.c
  %.pre108 = load ptr, ptr %i.b, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i70 = phi ptr [ %i.p, %bb.c ], [ %i.n, %bb.b ] ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i70, i64 38 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2, !tbaa !38   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i70, i64 40
  %i.t = zext i16 %i.r to i64
  %i.u = shl nuw nsw i64 %i.t, 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u ; 8 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !35
  store i16 %i.w, ptr %i.q, align 2, !tbaa !38
end_hunk_23
begin_hunk_24_@js_async_generator_next:bb.a
  %i.a = and i64 %2, 4294967295
  %.not.i = icmp eq i64 %i.a, 4294967295
  br i1 %.not.i, label %bb.b, label %JS_GetOpaque.exit

bb.b:                                             ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 18
  %i.d = load i16, ptr %i.c, align 2, !tbaa !117
  %.not3.i = icmp eq i16 %i.d, 60
  br i1 %.not3.i, label %bb.c, label %JS_GetOpaque.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  br label %JS_GetOpaque.exit

JS_GetOpaque.exit:                                ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ null, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.g = call fastcc { i64, i64 } @js_promise_new(ptr noundef %0, i64 0, i64 3, ptr noundef nonnull %6), !inline_history !897 ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0        ; 8 uses
  %i.i = extractvalue { i64, i64 } %i.g, 1        ; 7 uses
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 6
  br i1 %i.k, label %JS_FreeValue.exit63, label %bb.d

bb.d:                                             ; preds = %JS_GetOpaque.exit
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #49
  %i.l = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.414) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1240 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1248
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 1244
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load <2 x i64>, ptr %i.o, align 8, !tbaa !35
  store i32 0, ptr %i.o, align 8
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4, !tbaa !35
  store i64 4, ptr %.sroa.24.0..sroa_idx.i, align 8, !tbaa !72
  store <2 x i64> %i.p, ptr %7, align 16, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = load i64, ptr %i.q, align 16             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = call fastcc { i64, i64 } @JS_CallInternal(ptr noundef %0, i64 %i.r, i64 %i.t, i64 0, i64 3, i64 0, i64 3, i32 noundef 1, ptr noundef nonnull %7, i32 noundef 2), !inline_history !133 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = load i64, ptr %7, align 16               ; 2 uses
  %i.y = load i64, ptr %.sroa.47.0..sroa_idx, align 8 ; 2 uses
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !50   ; 3 uses
  %i.aa = trunc i64 %i.y to i32
  %i.ab = icmp ugt i32 %i.aa, -10
  br i1 %i.ab, label %bb.f, label %JS_FreeValue.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = inttoptr i64 %i.x to ptr
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 -4 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !8
  %i.ag = icmp slt i32 %i.ae, 2
  br i1 %i.ag, label %bb.g, label %JS_FreeValue.exit

bb.g:                                             ; preds = %bb.f
  call fastcc void @js_free_value_rt(ptr noundef %i.z, i64 %i.x, i64 %i.y), !inline_history !143
  %.pre73 = load ptr, ptr %i.m, align 8, !tbaa !50
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %bb.e, %bb.f, %bb.g
  %i.ah = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %.pre73, %bb.g ] ; 3 uses
  %i.ai = trunc i64 %i.w to i32
  %i.aj = icmp ugt i32 %i.ai, -10
  br i1 %i.aj, label %bb.h, label %JS_FreeValue.exit54

bb.h:                                             ; preds = %JS_FreeValue.exit
  %i.ak = inttoptr i64 %i.v to ptr
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 -4 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !8  ; 2 uses
  %i.an = add nsw i32 %i.am, -1
  store i32 %i.an, ptr %i.al, align 4, !tbaa !8
  %i.ao = icmp slt i32 %i.am, 2
  br i1 %i.ao, label %bb.i, label %JS_FreeValue.exit54

bb.i:                                             ; preds = %bb.h
  call fastcc void @js_free_value_rt(ptr noundef %i.ah, i64 %i.v, i64 %i.w), !inline_history !143
  %.pre74 = load ptr, ptr %i.m, align 8, !tbaa !50
  br label %JS_FreeValue.exit54

JS_FreeValue.exit54:                              ; preds = %JS_FreeValue.exit, %bb.h, %bb.i
  %i.ap = phi ptr [ %i.ah, %JS_FreeValue.exit ], [ %i.ah, %bb.h ], [ %.pre74, %bb.i ] ; 3 uses
  %i.aq = load i64, ptr %6, align 16              ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = trunc i64 %i.as to i32
  %i.au = icmp ugt i32 %i.at, -10
  br i1 %i.au, label %bb.j, label %JS_FreeValue.exit55

bb.j:                                             ; preds = %JS_FreeValue.exit54
  %i.av = inttoptr i64 %i.aq to ptr
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -4 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !8  ; 2 uses
  %i.ay = add nsw i32 %i.ax, -1
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !8
  %i.az = icmp slt i32 %i.ax, 2
  br i1 %i.az, label %bb.k, label %JS_FreeValue.exit55

bb.k:                                             ; preds = %bb.j
  call fastcc void @js_free_value_rt(ptr noundef %i.ap, i64 %i.aq, i64 %i.as), !inline_history !143
  %.pre75 = load ptr, ptr %i.m, align 8, !tbaa !50
  br label %JS_FreeValue.exit55

JS_FreeValue.exit55:                              ; preds = %JS_FreeValue.exit54, %bb.j, %bb.k
  %i.ba = phi ptr [ %i.ap, %JS_FreeValue.exit54 ], [ %i.ap, %bb.j ], [ %.pre75, %bb.k ]
  %i.bb = trunc i64 %i.t to i32
  %i.bc = icmp ugt i32 %i.bb, -10
  br i1 %i.bc, label %bb.l, label %JS_FreeValue.exit56

bb.l:                                             ; preds = %JS_FreeValue.exit55
  %i.bd = inttoptr i64 %i.r to ptr
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8  ; 2 uses
  %i.bg = add nsw i32 %i.bf, -1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !8
  %i.bh = icmp slt i32 %i.bf, 2
  br i1 %i.bh, label %bb.m, label %JS_FreeValue.exit56

bb.m:                                             ; preds = %bb.l
  call fastcc void @js_free_value_rt(ptr noundef %i.ba, i64 %i.r, i64 %i.t), !inline_history !143
  br label %JS_FreeValue.exit56

JS_FreeValue.exit56:                              ; preds = %JS_FreeValue.exit55, %bb.l, %bb.m
  %.sroa.5.0.extract.shift = and i64 %i.h, -4294967296
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #49
  br label %JS_FreeValue.exit63

bb.n:                                             ; preds = %bb.d
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !50 ; 9 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.bn = add i64 %i.bm, 88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  %i.bq = add i64 %i.bp, -1
  %i.br = icmp ugt i64 %i.bn, %i.bq
  br i1 %i.br, label %js_arena_malloc.exit.thread, label %bb.o, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 728
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bj, i64 736
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.bs
  br i1 %i.bv, label %bb.p, label %bb.q, !prof !9

bb.p:                                             ; preds = %bb.o
  %i.bw = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.bj, i32 noundef 10) ; 2 uses
  %.not.i65 = icmp eq ptr %i.bw, null
  br i1 %.not.i65, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.q

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.p
  %.pre = load ptr, ptr %i.bi, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i64 = phi ptr [ %i.bw, %bb.p ], [ %i.bu, %bb.o ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i64, i64 38 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !38 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i64, i64 40
  %i.ca = zext i16 %i.by to i64
  %i.cb = mul nuw nsw i64 %i.ca, 96
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cb ; 15 uses
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !35
  store i16 %i.cd, ptr %i.bx, align 2, !tbaa !38
  store i16 %i.by, ptr %i.cc, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i64, i64 34 ; 2 uses
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !38
  %i.cg = add i16 %i.cf, 1                        ; 2 uses
  store i16 %i.cg, ptr %i.ce, align 2, !tbaa !38
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i64, i64 36
  %i.ci = load i16, ptr %i.ch, align 4, !tbaa !38
  %i.cj = icmp eq i16 %i.cg, %i.ci
  br i1 %i.cj, label %bb.r, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.ck = load ptr, ptr %.0.i64, align 8, !tbaa !41 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i64, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !40 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !40
  store ptr %i.ck, ptr %i.cm, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i64, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.r, %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(88) %i.co, i8 0, i64 88, i1 false)
  %i.cp = load i64, ptr %i.bk, align 8, !tbaa !34
  %i.cq = add i64 %i.cp, 1
  store i64 %i.cq, ptr %i.bk, align 8, !tbaa !34
  %i.cr = load i16, ptr %i.cc, align 8, !tbaa !35
  %i.cs = icmp eq i16 %i.cr, -1
  br i1 %i.cs, label %bb.s, label %bb.u

bb.s:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bj, i64 1064
  %i.cu = icmp eq ptr %i.cc, %i.ct
  br i1 %i.cu, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !36
  %i.cx = tail call i64 %i.cw(ptr noundef nonnull %i.cc) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.cx, 0
  %i.cy = select i1 %.not15.i.i.i.i, i64 8, i64 %i.cx
  br label %bb.w

bb.u:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.da = load i8, ptr %i.cz, align 2, !tbaa !35
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !38
  %i.de = zext i16 %i.dd to i64
  br label %bb.w

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.n
  %i.df = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.bj, %bb.n ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 1256 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !57, !range !58, !noundef !59
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.dg, align 8, !tbaa !57
  %i.dj = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.dg, align 8, !tbaa !57
  %.pre70 = load ptr, ptr %i.bi, align 8, !tbaa !50
  br label %bb.ab

bb.w:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.011.i.i.i.i = phi i64 [ 8, %bb.s ], [ %i.cy, %bb.t ], [ %i.de, %bb.u ]
  %i.dk = load i64, ptr %i.bl, align 8, !tbaa !10
  %i.dl = add i64 %i.dk, %.011.i.i.i.i
  store i64 %i.dl, ptr %i.bl, align 8, !tbaa !10
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %5, ptr %i.dm, align 8, !tbaa !1813
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.do = load i64, ptr %4, align 8               ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dq = load i64, ptr %i.dp, align 8            ; 2 uses
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = icmp ugt i32 %i.dr, -10
  br i1 %i.ds, label %bb.x, label %js_dup.exit

bb.x:                                             ; preds = %bb.w
  %i.dt = inttoptr i64 %i.do to ptr
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 -4 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !8
  br label %js_dup.exit

js_dup.exit:                                      ; preds = %bb.w, %bb.x
  store i64 %i.do, ptr %i.dn, align 8, !tbaa !35
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i64 %i.dq, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !72
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.dy = trunc i64 %i.i to i32
  %i.dz = icmp ugt i32 %i.dy, -10
  br i1 %i.dz, label %bb.y, label %js_dup.exit60

bb.y:                                             ; preds = %js_dup.exit
  %i.ea = inttoptr i64 %i.h to ptr
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 -4 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !8
  %i.ed = add nsw i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !8
  br label %js_dup.exit60

js_dup.exit60:                                    ; preds = %js_dup.exit, %bb.y
  store i64 %i.h, ptr %i.dx, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 56
  store i64 %i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !72
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !129
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ef, ptr noundef nonnull align 16 dereferenceable(16) %i.eg, i64 16, i1 false), !tbaa.struct !129
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i, i64 120 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !41 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.co, ptr %i.ej, align 8, !tbaa !40
  store ptr %i.ei, ptr %i.co, align 8, !tbaa !41
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store ptr %i.eh, ptr %i.ek, align 8, !tbaa !40
  store ptr %i.co, ptr %i.eh, align 8, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !1156
  %.not53 = icmp eq i32 %i.em, 3
  br i1 %.not53, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %js_dup.exit60
  tail call fastcc void @js_async_generator_resume_next(ptr noundef nonnull %0, ptr noundef nonnull %.0.i)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %js_dup.exit60
  %.sroa.5.0.extract.shift49 = and i64 %i.h, -4294967296
  br label %JS_FreeValue.exit63

bb.ab:                                            ; preds = %js_arena_malloc.exit.thread, %bb.v
  %i.en = phi ptr [ %i.df, %js_arena_malloc.exit.thread ], [ %.pre70, %bb.v ] ; 3 uses
  %i.eo = load i64, ptr %6, align 16              ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eq = load i64, ptr %i.ep, align 8            ; 2 uses
  %i.er = trunc i64 %i.eq to i32
  %i.es = icmp ugt i32 %i.er, -10
  br i1 %i.es, label %bb.ac, label %JS_FreeValue.exit61

bb.ac:                                            ; preds = %bb.ab
  %i.et = inttoptr i64 %i.eo to ptr
  %i.eu = getelementptr inbounds i8, ptr %i.et, i64 -4 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8  ; 2 uses
  %i.ew = add nsw i32 %i.ev, -1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !8
  %i.ex = icmp slt i32 %i.ev, 2
  br i1 %i.ex, label %bb.ad, label %JS_FreeValue.exit61

bb.ad:                                            ; preds = %bb.ac
  tail call fastcc void @js_free_value_rt(ptr noundef %i.en, i64 %i.eo, i64 %i.eq), !inline_history !143
  %.pre71 = load ptr, ptr %i.bi, align 8, !tbaa !50
  br label %JS_FreeValue.exit61

JS_FreeValue.exit61:                              ; preds = %bb.ab, %bb.ac, %bb.ad
  %i.ey = phi ptr [ %i.en, %bb.ab ], [ %i.en, %bb.ac ], [ %.pre71, %bb.ad ] ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fa = load i64, ptr %i.ez, align 16           ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  %i.fd = trunc i64 %i.fc to i32
  %i.fe = icmp ugt i32 %i.fd, -10
  br i1 %i.fe, label %bb.ae, label %JS_FreeValue.exit62

bb.ae:                                            ; preds = %JS_FreeValue.exit61
  %i.ff = inttoptr i64 %i.fa to ptr
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -4 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !8  ; 2 uses
  %i.fi = add nsw i32 %i.fh, -1
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !8
  %i.fj = icmp slt i32 %i.fh, 2
  br i1 %i.fj, label %bb.af, label %JS_FreeValue.exit62

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @js_free_value_rt(ptr noundef %i.ey, i64 %i.fa, i64 %i.fc), !inline_history !143
  %.pre72 = load ptr, ptr %i.bi, align 8, !tbaa !50
  br label %JS_FreeValue.exit62

JS_FreeValue.exit62:                              ; preds = %JS_FreeValue.exit61, %bb.ae, %bb.af
  %i.fk = phi ptr [ %i.ey, %JS_FreeValue.exit61 ], [ %i.ey, %bb.ae ], [ %.pre72, %bb.af ]
  %i.fl = trunc i64 %i.i to i32
  %i.fm = icmp ugt i32 %i.fl, -10
  br i1 %i.fm, label %bb.ag, label %JS_FreeValue.exit63

bb.ag:                                            ; preds = %JS_FreeValue.exit62
  %i.fn = inttoptr i64 %i.h to ptr
  %i.fo = getelementptr inbounds i8, ptr %i.fn, i64 -4 ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !8  ; 2 uses
  %i.fq = add nsw i32 %i.fp, -1
  store i32 %i.fq, ptr %i.fo, align 4, !tbaa !8
  %i.fr = icmp slt i32 %i.fp, 2
  br i1 %i.fr, label %bb.ah, label %JS_FreeValue.exit63

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @js_free_value_rt(ptr noundef %i.fk, i64 %i.h, i64 %i.i), !inline_history !143
  br label %JS_FreeValue.exit63

JS_FreeValue.exit63:                              ; preds = %bb.ah, %bb.ag, %JS_FreeValue.exit62, %JS_GetOpaque.exit, %bb.aa, %JS_FreeValue.exit56
  %.sroa.047.0 = phi i64 [ %i.h, %JS_FreeValue.exit56 ], [ %i.h, %bb.aa ], [ 0, %JS_GetOpaque.exit ], [ 0, %JS_FreeValue.exit62 ], [ 0, %bb.ag ], [ 0, %bb.ah ]
  %.sroa.5.0 = phi i64 [ %.sroa.5.0.extract.shift, %JS_FreeValue.exit56 ], [ %.sroa.5.0.extract.shift49, %bb.aa ], [ 0, %JS_GetOpaque.exit ], [ 0, %JS_FreeValue.exit62 ], [ 0, %bb.ag ], [ 0, %bb.ah ]
  %.sroa.7.0 = phi i64 [ %i.i, %JS_FreeValue.exit56 ], [ %i.i, %bb.aa ], [ 6, %JS_GetOpaque.exit ], [ 6, %JS_FreeValue.exit62 ], [ 6, %bb.ag ], [ 6, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %.sroa.047.0.insert.ext = and i64 %.sroa.047.0, 4294967295
  %.sroa.047.0.insert.insert = or disjoint i64 %.sroa.5.0, %.sroa.047.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.047.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal fastcc void @js_async_generator_resume_next(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.JSValue, align 8            ; 7 uses
  %3 = alloca %struct.JSValue, align 8            ; 5 uses
  %4 = alloca [2 x %struct.JSValue], align 16     ; 7 uses
  %5 = alloca [2 x %struct.JSValue], align 16     ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
end_hunk_24
begin_hunk_25_@js_disposable_stack_dispose:bb.a
  store i64 %.sroa.10.4.i, ptr %i.pb, align 8, !tbaa !72
  br label %js_dispose_resources.exit.thread

js_dispose_resources.exit.thread:                 ; preds = %._crit_edge.thread.i, %._crit_edge.i, %bb.cq, %bb.g, %bb.c, %bb.bo, %bb.h, %JS_FreeValue.exit
  %.sroa.0256.2 = phi i64 [ %i.aw, %bb.h ], [ 0, %bb.c ], [ %.sroa.0256.1, %bb.bo ], [ %i.ac, %JS_FreeValue.exit ], [ 0, %bb.g ], [ 0, %bb.cq ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.thread.i ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.0.extract.shift260, %bb.h ], [ 0, %bb.c ], [ %.sroa.11.1, %bb.bo ], [ %.sroa.11.0.extract.shift, %JS_FreeValue.exit ], [ 0, %bb.g ], [ 0, %bb.cq ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.thread.i ]
  %.sroa.17.2 = phi i64 [ %i.ax, %bb.h ], [ 6, %bb.c ], [ %.sroa.17.1, %bb.bo ], [ %i.ad, %JS_FreeValue.exit ], [ 3, %bb.g ], [ 6, %bb.cq ], [ 3, %._crit_edge.i ], [ 3, %._crit_edge.thread.i ]
  %.sroa.0256.0.insert.ext = and i64 %.sroa.0256.2, 4294967295
  %.sroa.0256.0.insert.insert = or disjoint i64 %.sroa.11.2, %.sroa.0256.0.insert.ext
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0256.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.17.2, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_disposable_stack_move(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree readnone captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = and i64 %2, 4294967295
  %.not.i.i.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i.i.i, label %bb.b, label %JS_GetOpaque2.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %i.f = zext i16 %i.e to i32
  %.not3.i.i.i = icmp eq i32 %5, %i.f
  br i1 %.not3.i.i.i, label %JS_GetOpaque.exit.i.i, label %JS_GetOpaque2.exit.thread.i

JS_GetOpaque.exit.i.i:                            ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 6 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %JS_GetOpaque2.exit.thread.i, label %JS_GetOpaque2.exit.i, !prof !348

JS_GetOpaque2.exit.thread.i:                      ; preds = %JS_GetOpaque.exit.i.i, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = sext i32 %5 to i64
  %i.n = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.q = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.j, ptr noundef nonnull %i.a, i32 noundef %i.p) ; 0 uses
  %i.r = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !1139 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %JS_FreeValue.exit

JS_GetOpaque2.exit.i:                             ; preds = %JS_GetOpaque.exit.i.i
  %i.s = load i8, ptr %i.h, align 8, !tbaa !1823, !range !58, !noundef !59
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %js_disposable_stack_get.exit

bb.c:                                             ; preds = %JS_GetOpaque2.exit.i
  %i.u = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.423) ; 0 uses
  br label %JS_FreeValue.exit

js_disposable_stack_get.exit:                     ; preds = %JS_GetOpaque2.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !230
  %i.x = zext nneg i32 %5 to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 4294967295
  %i.ad = icmp eq i64 %i.ac, 4294967295
  %i.ae = inttoptr i64 %i.z to ptr
  %.0.i.i = select i1 %i.ad, ptr %i.ae, ptr null  ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 1436
  %.val.i = load i32, ptr %i.ah, align 4, !tbaa !93
  %i.ai = getelementptr i8, ptr %i.ag, i64 1448
  %.val13.i = load ptr, ptr %i.ai, align 8, !tbaa !97
  %i.aj = ptrtoint ptr %.0.i.i to i64             ; 2 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = mul i32 %i.ak, 1640531527
  %i.am = add i32 %i.al, 1640531527
  %i.an = lshr i64 %i.aj, 32
  %i.ao = trunc nuw i64 %i.an to i32
  %i.ap = add i32 %i.am, %i.ao
  %i.aq = mul i32 %i.ap, 1640531527               ; 2 uses
  %i.ar = sub nsw i32 32, %.val.i
  %i.as = lshr i32 %i.aq, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val13.i, i64 %i.at
  %.01.i.i = load ptr, ptr %i.au, align 8, !tbaa !252 ; 2 uses
  %.not2.i.i = icmp eq ptr %.01.i.i, null
  br i1 %.not2.i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %js_disposable_stack_get.exit, %bb.f
  %.03.i.i = phi ptr [ %.0.i14.i, %bb.f ], [ %.01.i.i, %js_disposable_stack_get.exit ] ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !8
  %i.ax = icmp eq i32 %i.aw, %i.aq
  br i1 %i.ax, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 48
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !212
  %i.ba = icmp eq ptr %i.az, %.0.i.i
  br i1 %i.ba, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 32
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !8
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %find_hashed_shape_proto.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 40
  %.0.i14.i = load ptr, ptr %i.be, align 8, !tbaa !252 ; 2 uses
  %.not.i.i29 = icmp eq ptr %.0.i14.i, null
  br i1 %.not.i.i29, label %.loopexit.i, label %.lr.ph.i.i, !llvm.loop !253

find_hashed_shape_proto.exit.i:                   ; preds = %bb.e
  %i.bf = getelementptr inbounds i8, ptr %.03.i.i, i64 -4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = add nsw i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !8
  br label %JS_NewObjectProtoClass.exit

.loopexit.i:                                      ; preds = %bb.f, %js_disposable_stack_get.exit
  %i.bi = tail call fastcc ptr @js_new_shape2(ptr noundef %0, ptr noundef %.0.i.i, i32 noundef 2) ; 2 uses
  %.not12.i = icmp eq ptr %i.bi, null
  br i1 %.not12.i, label %JS_FreeValue.exit, label %JS_NewObjectProtoClass.exit

JS_NewObjectProtoClass.exit:                      ; preds = %find_hashed_shape_proto.exit.i, %.loopexit.i
  %.0.i30 = phi ptr [ %.03.i.i, %find_hashed_shape_proto.exit.i ], [ %i.bi, %.loopexit.i ]
  %i.bj = tail call fastcc { i64, i64 } @JS_NewObjectFromShape(ptr noundef %0, ptr noundef nonnull %.0.i30, i32 noundef %5, ptr noundef null), !inline_history !260 ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bj, 0      ; 4 uses
  %i.bl = extractvalue { i64, i64 } %i.bj, 1      ; 4 uses
  %i.bm = and i64 %i.bl, 4294967295
  %i.bn = icmp eq i64 %i.bm, 6
  br i1 %i.bn, label %JS_FreeValue.exit, label %bb.g

bb.g:                                             ; preds = %JS_NewObjectProtoClass.exit
  %i.bo = load ptr, ptr %i.af, align 8, !tbaa !50 ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = add i64 %i.br, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !14
  %i.bv = add i64 %i.bu, -1
  %i.bw = icmp ugt i64 %i.bs, %i.bv
  br i1 %i.bw, label %js_arena_malloc.exit.thread, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 600
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 608
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !40 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, %i.bx
  br i1 %i.ca, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.cb = tail call fastcc ptr @arena_new(ptr noundef nonnull %i.bo, i32 noundef 2) ; 2 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %.js_arena_malloc.exit.thread_crit_edge, label %bb.j

.js_arena_malloc.exit.thread_crit_edge:           ; preds = %bb.i
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %js_arena_malloc.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i33 = phi ptr [ %i.cb, %bb.i ], [ %i.bz, %bb.h ] ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i33, i64 38 ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !38 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.i33, i64 40
  %i.cf = zext i16 %i.cd to i64
  %i.cg = shl nuw nsw i64 %i.cf, 5
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 9 uses
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !35
  store i16 %i.ci, ptr %i.cc, align 2, !tbaa !38
  store i16 %i.cd, ptr %i.ch, align 8, !tbaa !35
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i33, i64 34 ; 2 uses
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !38
  %i.cl = add i16 %i.ck, 1                        ; 2 uses
  store i16 %i.cl, ptr %i.cj, align 2, !tbaa !38
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i33, i64 36
  %i.cn = load i16, ptr %i.cm, align 4, !tbaa !38
  %i.co = icmp eq i16 %i.cl, %i.cn
  br i1 %i.co, label %bb.k, label %js_arena_calloc.exit.thread26.i.i.i, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.cp = load ptr, ptr %.0.i33, align 8, !tbaa !41 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i33, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !40 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !40
  store ptr %i.cp, ptr %i.cr, align 8, !tbaa !41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i33, i8 0, i64 16, i1 false)
  br label %js_arena_calloc.exit.thread26.i.i.i

js_arena_calloc.exit.thread26.i.i.i:              ; preds = %bb.k, %bb.j
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  %i.cu = load i64, ptr %i.bp, align 8, !tbaa !34
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.bp, align 8, !tbaa !34
  %i.cw = load i16, ptr %i.ch, align 8, !tbaa !35
  %i.cx = icmp eq i16 %i.cw, -1
  br i1 %i.cx, label %bb.l, label %bb.n

bb.l:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 1064
  %i.cz = icmp eq ptr %i.ch, %i.cy
  br i1 %i.cz, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !36
  %i.dc = tail call i64 %i.db(ptr noundef nonnull %i.ch) #49, !inline_history !134 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.dc, 0
  %i.dd = select i1 %.not15.i.i.i.i, i64 8, i64 %i.dc
  br label %bb.s

bb.n:                                             ; preds = %js_arena_calloc.exit.thread26.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.df = load i8, ptr %i.de, align 2, !tbaa !35
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !38
  %i.dj = zext i16 %i.di to i64
  br label %bb.s

js_arena_malloc.exit.thread:                      ; preds = %.js_arena_malloc.exit.thread_crit_edge, %bb.g
  %i.dk = phi ptr [ %.pre, %.js_arena_malloc.exit.thread_crit_edge ], [ %i.bo, %bb.g ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1256 ; 3 uses
  %i.dm = load i8, ptr %i.dl, align 8, !tbaa !57, !range !58, !noundef !59
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.p, label %bb.o

bb.o:                                             ; preds = %js_arena_malloc.exit.thread
  store i8 1, ptr %i.dl, align 8, !tbaa !57
  %i.do = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !135 ; 0 uses
  store i8 0, ptr %i.dl, align 8, !tbaa !57
  %.pre46 = load ptr, ptr %i.af, align 8, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %js_arena_malloc.exit.thread, %bb.o
  %i.dp = phi ptr [ %i.dk, %js_arena_malloc.exit.thread ], [ %.pre46, %bb.o ]
  %i.dq = trunc i64 %i.bl to i32
  %i.dr = icmp ugt i32 %i.dq, -10
  br i1 %i.dr, label %bb.q, label %JS_FreeValue.exit

bb.q:                                             ; preds = %bb.p
  %i.ds = inttoptr i64 %i.bk to ptr
  %i.dt = getelementptr inbounds i8, ptr %i.ds, i64 -4 ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !8  ; 2 uses
  %i.dv = add nsw i32 %i.du, -1
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !8
  %i.dw = icmp slt i32 %i.du, 2
  br i1 %i.dw, label %bb.r, label %JS_FreeValue.exit

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @js_free_value_rt(ptr noundef %i.dp, i64 %i.bk, i64 %i.bl), !inline_history !143
  br label %JS_FreeValue.exit

bb.s:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.011.i.i.i.i = phi i64 [ 8, %bb.l ], [ %i.dd, %bb.m ], [ %i.dj, %bb.n ]
  %i.dx = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.dy = add i64 %i.dx, %.011.i.i.i.i
  store i64 %i.dy, ptr %i.bq, align 8, !tbaa !10
  %i.dz = inttoptr i64 %i.bk to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 48
  store ptr %i.ct, ptr %i.ea, align 8, !tbaa !35
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1306
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr %i.ec, ptr %i.ed, align 8, !tbaa !1306
  %i.ee = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  %i.eg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.eh = load <2 x i32>, ptr %i.ee, align 4, !tbaa !8
  store <2 x i32> %i.eh, ptr %i.ef, align 4, !tbaa !8
  store ptr null, ptr %i.eb, align 8, !tbaa !1306
  store i32 0, ptr %i.ee, align 4, !tbaa !1303
  store i32 0, ptr %i.eg, align 8, !tbaa !1824
  store i8 1, ptr %i.h, align 8, !tbaa !1823
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %.loopexit.i, %JS_GetOpaque2.exit.thread.i, %bb.c, %bb.r, %bb.q, %bb.p, %JS_NewObjectProtoClass.exit, %bb.s
  %.sroa.5.0 = phi i64 [ 0, %bb.r ], [ %i.bk, %bb.s ], [ 0, %JS_GetOpaque2.exit.thread.i ], [ 0, %JS_NewObjectProtoClass.exit ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.c ], [ 0, %.loopexit.i ]
  %.sroa.8.0 = phi i64 [ 6, %bb.r ], [ %i.bl, %bb.s ], [ 6, %JS_GetOpaque2.exit.thread.i ], [ 6, %JS_NewObjectProtoClass.exit ], [ 6, %bb.p ], [ 6, %bb.q ], [ 6, %bb.c ], [ 6, %.loopexit.i ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.5.0, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.8.0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define internal { i64, i64 } @js_disposable_stack_use(ptr noundef %0, i64 %1, i64 %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) #2 {
bb.a:
  %6 = alloca [1 x %struct.JSValue], align 16     ; 5 uses
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %.not = icmp eq i32 %5, 61                      ; 2 uses
  %i.b = and i64 %2, 4294967295
  %.not.i.i.i = icmp eq i64 %i.b, 4294967295
  br i1 %.not.i.i.i, label %bb.b, label %JS_GetOpaque2.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %1 to ptr                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 18
  %i.e = load i16, ptr %i.d, align 2, !tbaa !117
  %i.f = zext i16 %i.e to i32
  %.not3.i.i.i = icmp eq i32 %5, %i.f
  br i1 %.not3.i.i.i, label %JS_GetOpaque.exit.i.i, label %JS_GetOpaque2.exit.thread.i

JS_GetOpaque.exit.i.i:                            ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 12 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %JS_GetOpaque2.exit.thread.i, label %JS_GetOpaque2.exit.i, !prof !348

JS_GetOpaque2.exit.thread.i:                      ; preds = %JS_GetOpaque.exit.i.i, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 1128
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88
  %i.m = sext i32 %5 to i64
  %i.n = getelementptr inbounds [40 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.q = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %i.j, ptr noundef nonnull %i.a, i32 noundef %i.p) ; 0 uses
  %i.r = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowTypeError(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef nonnull %i.a) #51, !inline_history !1139 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %JS_FreeValue.exit

JS_GetOpaque2.exit.i:                             ; preds = %JS_GetOpaque.exit.i.i
  %i.s = load i8, ptr %i.h, align 8, !tbaa !1823, !range !58, !noundef !59
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %js_disposable_stack_get.exit

bb.c:                                             ; preds = %JS_GetOpaque2.exit.i
  %i.u = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowReferenceError(ptr noundef %0, ptr noundef nonnull @.str.423) ; 0 uses
  br label %JS_FreeValue.exit

js_disposable_stack_get.exit:                     ; preds = %JS_GetOpaque2.exit.i
  %.sroa.012.0.copyload = load i64, ptr %4, align 8, !tbaa !35 ; 13 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !72 ; 10 uses
  %trunc = trunc i64 %.sroa.10.0.copyload to i32
  switch i32 %trunc, label %bb.i [
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 -1, label %bb.j
  ]

bb.d:                                             ; preds = %js_disposable_stack_get.exit, %js_disposable_stack_get.exit
  br i1 %.not, label %bb.e, label %js_dup.exit

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 4 ; 5 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !1303 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !1824 ; 2 uses
  %.not.i = icmp slt i32 %i.w, %i.y
  br i1 %.not.i, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %bb.e
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !1306
  br label %js_disposable_stack_add.exit

bb.f:                                             ; preds = %bb.e
  %i.z = shl nsw i32 %i.y, 1
  %..i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.z, i32 4) ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1306
  %i.ac = zext nneg i32 %..i.i to i64
  %i.ad = mul nuw nsw i64 %i.ac, 40
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ag = tail call ptr @js_realloc_rt(ptr noundef %i.af, ptr noundef %i.ab, i64 noundef %i.ad), !inline_history !346 ; 3 uses
  %.not.i.i47 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i47, label %bb.g, label %.thread.i, !prof !9

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1256 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !57, !range !58, !noundef !59
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %JS_FreeValue.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.ai, align 8, !tbaa !57
  %i.al = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !1464 ; 0 uses
  store i8 0, ptr %i.ai, align 8, !tbaa !57
  br label %JS_FreeValue.exit

.thread.i:                                        ; preds = %bb.f
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !1306
  store i32 %..i.i, ptr %i.x, align 8, !tbaa !1824
  %.pre31.i = load i32, ptr %i.v, align 4, !tbaa !1303
  br label %js_disposable_stack_add.exit

end_hunk_25
begin_hunk_26_@js_new_function_def:bb.a
  store ptr %i.ak, ptr %i.ak, align 8, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %1, ptr %i.am, align 8, !tbaa !1851
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 -1, ptr %i.an, align 8, !tbaa !1852
  %.not58 = icmp eq ptr %1, null
  br i1 %.not58, label %._crit_edge, label %bb.j

._crit_edge:                                      ; preds = %bb.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %.pre = load i64, ptr %.phi.trans.insert, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.ao, ptr %i.ar, align 8, !tbaa !40
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.au = load i64, ptr %i.at, align 4
  %i.av = and i64 %i.au, 549755813888
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 4
  %i.ay = and i64 %i.ax, -549755813889
  %i.az = or disjoint i64 %i.ay, %i.av            ; 2 uses
  store i64 %i.az, ptr %i.aw, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !1191
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !1853
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %i.bd = phi i64 [ %.pre, %._crit_edge ], [ %i.az, %bb.j ]
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.bf = zext i1 %2 to i64
  %i.bg = and i64 %i.bd, -6
  %i.bh = select i1 %3, i64 4, i64 0
  %i.bi = or disjoint i64 %i.bh, %i.bf
  %i.bj = or disjoint i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.be, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bk, i8 0, i64 32, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  store ptr %0, ptr %i.bl, align 8, !tbaa !453
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  store ptr @js_dbuf_realloc, ptr %i.bm, align 8, !tbaa !455
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  store i32 -1, ptr %i.bn, align 8, !tbaa !1205
  %i.bo = getelementptr inbounds nuw i8, ptr %i.l, i64 68
  store i32 0, ptr %i.bo, align 4, !tbaa !1175
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i8 -1, i64 40, i1 false)
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !1194
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 188
  store i32 -1, ptr %i.bs, align 4, !tbaa !1854
  store i32 -1, ptr %i.bq, align 8, !tbaa !1855
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8
  %i.bv = and i8 %i.bu, -4
  store i8 %i.bv, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  store i32 -1, ptr %i.bw, align 4, !tbaa !1202
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  store i32 -1, ptr %i.bx, align 8, !tbaa !1204
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store <4 x i32> <i32 0, i32 -1, i32 4, i32 1>, ptr %i.by, align 8, !tbaa !8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store i32 -1, ptr %i.bz, align 8, !tbaa !1192
  %i.ca = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #52, !inline_history !285
  %i.cb = tail call i32 @JS_NewAtomLen(ptr noundef nonnull %0, ptr noundef nonnull %4, i64 noundef %i.ca), !inline_history !285
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 444
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !1856
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  store i32 %5, ptr %i.cd, align 8, !tbaa !1857
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 452
  store i32 %6, ptr %i.ce, align 4, !tbaa !1858
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 456
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, i8 0, i64 32, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 496
  store ptr %0, ptr %i.cg, align 8, !tbaa !453
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 488
  store ptr @js_dbuf_realloc, ptr %i.ch, align 8, !tbaa !455
  br label %js_mallocz.exit.thread

js_mallocz.exit.thread:                           ; preds = %bb.h, %bb.g, %bb.k
  %.0 = phi ptr [ %i.l, %bb.k ], [ null, %bb.g ], [ null, %bb.h ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @push_scope(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !844  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %js_realloc.exit57.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1859 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 168 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !1860 ; 2 uses
  %.not52 = icmp slt i32 %i.d, %i.f
  br i1 %.not52, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %.pre66 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1194
  br label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.g = add nsw i32 %i.d, 1
  %i.h = mul nsw i32 %i.f, 3
  %i.i = sdiv i32 %i.h, 2
  %..i = tail call noundef i32 @llvm.smax.i32(i32 %i.g, i32 %i.i) ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1194 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = load ptr, ptr %0, align 8, !tbaa !838    ; 3 uses
  %i.o = sext i32 %..i to i64
  %i.p = mul nsw i64 %i.o, 20                     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50   ; 8 uses
  br i1 %i.m, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %..i, 0
  br i1 %i.s, label %js_realloc.exit57.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !10
  %i.w = add i64 %i.v, %i.p
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = add i64 %i.y, -1
  %i.aa = icmp ugt i64 %i.w, %i.z
  br i1 %i.aa, label %js_realloc_rt.exit, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.ab = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.r, i64 noundef %i.p) ; 5 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %.js_realloc_rt.exit_crit_edge, label %bb.g

.js_realloc_rt.exit_crit_edge:                    ; preds = %bb.f
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !50
  br label %js_realloc_rt.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %i.t, align 8, !tbaa !34
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.t, align 8, !tbaa !34
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -8 ; 3 uses
  %i.af = load i16, ptr %i.ae, align 8, !tbaa !35
  %i.ag = icmp eq i16 %i.af, -1
  br i1 %i.ag, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 1064
  %i.ai = icmp eq ptr %i.ae, %i.ah
  br i1 %i.ai, label %js_realloc_rt.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = tail call i64 %i.ak(ptr noundef nonnull %i.ae) #49, !inline_history !1861 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.al, 0
  %i.am = select i1 %.not15.i.i.i, i64 8, i64 %i.al
  br label %js_realloc_rt.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds i8, ptr %i.ab, i64 -6
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !35
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !38
  %i.as = zext i16 %i.ar to i64
  br label %js_realloc_rt.exit.thread

js_realloc_rt.exit.thread:                        ; preds = %bb.h, %bb.i, %bb.j
  %.011.i.i.i = phi i64 [ 8, %bb.h ], [ %i.am, %bb.i ], [ %i.as, %bb.j ]
  %i.at = load i64, ptr %i.u, align 8, !tbaa !10
  %i.au = add i64 %i.at, %.011.i.i.i
  store i64 %i.au, ptr %i.u, align 8, !tbaa !10
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !1194
  %i.aw = load i32, ptr %i.c, align 4, !tbaa !1859
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %i.ax, 20
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ab, ptr align 4 %i.av, i64 %i.ay, i1 false)
  br label %.critedge

js_realloc_rt.exit:                               ; preds = %.js_realloc_rt.exit_crit_edge, %bb.e
  %i.az = phi ptr [ %.pre, %.js_realloc_rt.exit_crit_edge ], [ %i.r, %bb.e ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1256 ; 3 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %js_realloc.exit57.thread, label %.split

.split:                                           ; preds = %js_realloc_rt.exit
  store i8 1, ptr %i.ba, align 8, !tbaa !57
  %i.bd = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.46) #51, !inline_history !1464 ; 0 uses
  store i8 0, ptr %i.ba, align 8, !tbaa !57
  br label %js_realloc.exit57.thread

bb.k:                                             ; preds = %bb.c
  %i.be = tail call ptr @js_realloc_rt(ptr noundef %i.r, ptr noundef %i.k, i64 noundef %i.p), !inline_history !346 ; 2 uses
  %.not.i56 = icmp eq ptr %i.be, null             ; 2 uses
  %i.bf = icmp ne i32 %..i, 0
  %i.bg = and i1 %i.bf, %.not.i56
  br i1 %i.bg, label %bb.l, label %js_realloc.exit57, !prof !9

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1256 ; 3 uses
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %js_realloc.exit57.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.bi, align 8, !tbaa !57
  %i.bl = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.46) #51, !inline_history !1464 ; 0 uses
  store i8 0, ptr %i.bi, align 8, !tbaa !57
  br label %js_realloc.exit57.thread

js_realloc.exit57:                                ; preds = %bb.k
  br i1 %.not.i56, label %js_realloc.exit57.thread, label %.critedge

.critedge:                                        ; preds = %js_realloc.exit57, %js_realloc_rt.exit.thread
  %.044 = phi ptr [ %i.ab, %js_realloc_rt.exit.thread ], [ %i.be, %js_realloc.exit57 ] ; 2 uses
  store ptr %.044, ptr %i.j, align 8, !tbaa !1194
  store i32 %..i, ptr %i.e, align 8, !tbaa !1860
  %.pre65 = load i32, ptr %i.c, align 4, !tbaa !1859
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge, %.critedge
  %i.bm = phi ptr [ %.044, %.critedge ], [ %.pre66, %._crit_edge ]
  %i.bn = phi i32 [ %.pre65, %.critedge ], [ %i.d, %._crit_edge ]
  %i.bo = add nsw i32 %i.bn, 1
  store i32 %i.bo, ptr %i.c, align 4, !tbaa !1859
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.br = sext i32 %i.d to i64                    ; 3 uses
  %i.bs = getelementptr inbounds [20 x i8], ptr %i.bm, i64 %i.br ; 2 uses
  %i.bt = load <2 x i32>, ptr %i.bp, align 8, !tbaa !8
  store <2 x i32> %i.bt, ptr %i.bs, align 4, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 4
  %i.bw = and i8 %i.bv, -2
  store i8 %i.bw, ptr %i.bu, align 4
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !1194
  %i.by = getelementptr inbounds [20 x i8], ptr %i.bx, i64 %i.br
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = and i8 %i.ca, -3
  store i8 %i.cb, ptr %i.bz, align 4
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !1194
  %i.cd = getelementptr inbounds [20 x i8], ptr %i.cc, i64 %i.br ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 -1, ptr %i.ce, align 4, !tbaa !1202
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i32 -1, ptr %i.cf, align 4, !tbaa !1204
  %.val = load ptr, ptr %i.a, align 8, !tbaa !844 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !457 ; 4 uses
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !1205
  %i.cl = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !456
  %i.cn = icmp eq i64 %i.cm, %i.ci
  br i1 %i.cn, label %bb.o, label %bb.p, !prof !9

bb.o:                                             ; preds = %bb.n
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.cg, i8 noundef zeroext -71)
  br label %emit_op.exit

bb.p:                                             ; preds = %bb.n
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !458
  %i.cp = add i64 %i.ci, 1
  store i64 %i.cp, ptr %i.ch, align 8, !tbaa !457
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ci
  store i8 -71, ptr %i.cq, align 1, !tbaa !35
  br label %emit_op.exit

emit_op.exit:                                     ; preds = %bb.o, %bb.p
  %i.cr = trunc i32 %i.d to i16                   ; 2 uses
  %.val55 = load ptr, ptr %i.a, align 8, !tbaa !844 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val55, i64 288 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.val55, i64 304
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !456
  %i.cv = getelementptr inbounds nuw i8, ptr %.val55, i64 296 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !457 ; 2 uses
  %i.cx = sub i64 %i.cu, %i.cw
  %i.cy = icmp ult i64 %i.cx, 2
  br i1 %i.cy, label %bb.q, label %bb.r, !prof !9

bb.q:                                             ; preds = %emit_op.exit
  %i.cz = tail call fastcc i32 @__dbuf_put_u16(ptr noundef nonnull %i.cs, i16 noundef zeroext %i.cr) ; 0 uses
  br label %emit_u16.exit

bb.r:                                             ; preds = %emit_op.exit
  %i.da = load ptr, ptr %i.cs, align 8, !tbaa !458
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cw
  store i16 %i.cr, ptr %i.db, align 1
  %i.dc = load i64, ptr %i.cv, align 8, !tbaa !457
  %i.dd = add i64 %i.dc, 2
  store i64 %i.dd, ptr %i.cv, align 8, !tbaa !457
  br label %emit_u16.exit

emit_u16.exit:                                    ; preds = %bb.q, %bb.r
  store i32 %i.d, ptr %i.bp, align 8, !tbaa !1191
  br label %js_realloc.exit57.thread

js_realloc.exit57.thread:                         ; preds = %js_realloc_rt.exit, %bb.d, %bb.m, %bb.l, %.split, %bb.a, %emit_u16.exit, %js_realloc.exit57
  %.2 = phi i32 [ -1, %bb.d ], [ %i.d, %emit_u16.exit ], [ -1, %js_realloc.exit57 ], [ 0, %bb.a ], [ -1, %bb.m ], [ -1, %.split ], [ -1, %bb.l ], [ -1, %js_realloc_rt.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc void @js_free_function_def(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1862 ; 2 uses
  %.not88 = icmp eq ptr %i.c, %i.a
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07789 = phi ptr [ %.078, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %.078.in = getelementptr inbounds nuw i8, ptr %.07789, i64 8
  %.078 = load ptr, ptr %.078.in, align 8, !tbaa !40 ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %.07789, i64 -40
  tail call fastcc void @js_free_function_def(ptr noundef %0, ptr noundef nonnull %i.d)
  %.not = icmp eq ptr %.078, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1863

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1206 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.j = load i64, ptr %i.i, align 8, !tbaa !1207
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.m = load i64, ptr %i.l, align 4
  %i.n = and i64 %i.m, 524288
  %.not84 = icmp eq i64 %i.n, 0
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %.lr.ph.i, label %free_bytecode_atoms.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 1104
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 1080
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 1096
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 1112 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 1084 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %JS_FreeAtomRT.exit.i, %.lr.ph.i
  %.01824.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cg, %JS_FreeAtomRT.exit.i ] ; 3 uses
  %i.u = zext nneg i32 %.01824.i to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !35    ; 3 uses
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = icmp ugt i8 %i.w, -72
  %i.z = add nuw nsw i32 %i.x, 19
  %i.aa = select i1 %i.y, i32 %i.z, i32 %i.x
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = zext i8 %i.w to i64
  %.pn.i = select i1 %.not84, i64 %i.ac, i64 %i.ab
  %.0.i = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %.pn.i ; 2 uses
  %i.ad = load i8, ptr %.0.i, align 4, !tbaa !1357
  %i.ae = zext i8 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i, i64 3
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !1359
  %i.ah = add i8 %i.ag, -29
  %switch.i = icmp ult i8 %i.ah, -5
  %i.ai = add nuw nsw i32 %.01824.i, 5
  %i.aj = icmp sgt i32 %i.ai, %i.k
  %or.cond.i = select i1 %switch.i, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %JS_FreeAtomRT.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.val.i = load i32, ptr %i.ak, align 1          ; 2 uses
  %i.al = icmp slt i32 %.val.i, 242
  br i1 %i.al, label %JS_FreeAtomRT.exit.i, label %bb.d
end_hunk_26
begin_hunk_27_@js_create_function:bb.a
  %i.ti = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  store i32 %i.sc, ptr %i.ti, align 4, !tbaa !721
  %i.tj = load i32, ptr %i.rl, align 8, !tbaa !1177 ; 2 uses
  %i.tk = icmp slt i32 %i.tj, 1
  br i1 %i.tk, label %add_module_variables.exit.thread, label %bb.cn

bb.cs:                                            ; preds = %bb.cw, %.lr.ph38.i
  %i.tl = phi i32 [ %i.rt, %.lr.ph38.i ], [ %i.ud, %bb.cw ]
  %indvars.iv44.i = phi i64 [ 0, %.lr.ph38.i ], [ %indvars.iv.next45.i, %bb.cw ] ; 2 uses
  %i.tm = load ptr, ptr %i.rv, align 8, !tbaa !225
  %i.tn = getelementptr inbounds nuw [32 x i8], ptr %i.tm, i64 %indvars.iv44.i ; 3 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !226
  %i.tq = icmp eq i32 %i.tp, 0
  br i1 %i.tq, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 20
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !855 ; 2 uses
  %i.tt = load i32, ptr %i.rw, align 8, !tbaa !1177 ; 2 uses
  %i.tu = icmp sgt i32 %i.tt, 0
  br i1 %i.tu, label %.lr.ph.i.i, label %find_closure_var.exit.thread.i

.lr.ph.i.i:                                       ; preds = %bb.ct
  %i.tv = load ptr, ptr %i.rx, align 8, !tbaa !1176
  %wide.trip.count.i.i = zext nneg i32 %i.tt to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cv ] ; 3 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tv, i64 %indvars.iv.i.i
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !721
  %.not.i28.i = icmp eq i32 %i.ty, %i.ts
  br i1 %.not.i28.i, label %find_closure_var.exit.i, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %find_closure_var.exit.thread.i, label %bb.cu, !llvm.loop !1908

find_closure_var.exit.thread.i:                   ; preds = %bb.ct, %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.tz = getelementptr i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.tz, align 8, !tbaa !50
  %i.ua = call fastcc ptr @JS_AtomGetStrRT(ptr noundef readonly %.val.i.i, ptr noundef nonnull %i.a, i32 noundef %i.ts) ; 0 uses
  %i.ub = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowSyntaxError(ptr noundef %0, ptr noundef nonnull @.str.628, ptr noundef nonnull %i.a) #51, !inline_history !853 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %add_module_variables.exit.thread

find_closure_var.exit.i:                          ; preds = %bb.cu
  %i.uc = trunc nuw nsw i64 %indvars.iv.i.i to i32
  store i32 %i.uc, ptr %i.tn, align 8, !tbaa !35
  %.pre47.i = load i32, ptr %i.rs, align 8, !tbaa !222
  br label %bb.cw

bb.cw:                                            ; preds = %find_closure_var.exit.i, %bb.cs
  %i.ud = phi i32 [ %i.tl, %bb.cs ], [ %.pre47.i, %find_closure_var.exit.i ] ; 2 uses
  %indvars.iv.next45.i = add nuw nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.ue = sext i32 %i.ud to i64
  %i.uf = icmp slt i64 %indvars.iv.next45.i, %i.ue
  br i1 %i.uf, label %bb.cs, label %add_module_variables.exit, !llvm.loop !1909

add_module_variables.exit:                        ; preds = %bb.cw, %.preheader.i233, %add_eval_variables.exit
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !1862 ; 2 uses
  %.not219288 = icmp eq ptr %i.ui, %i.ug
  br i1 %.not219288, label %._crit_edge292, label %.lr.ph291

.lr.ph291:                                        ; preds = %add_module_variables.exit
  %i.uj = getelementptr inbounds nuw i8, ptr %1, i64 368
  br label %bb.cx

bb.cx:                                            ; preds = %.lr.ph291, %bb.cy
  %.0210289 = phi ptr [ %i.ui, %.lr.ph291 ], [ %.0209290, %bb.cy ] ; 3 uses
  %.0209290.in = getelementptr inbounds nuw i8, ptr %.0210289, i64 8
  %.0209290 = load ptr, ptr %.0209290.in, align 8, !tbaa !40 ; 2 uses
  %i.uk = getelementptr inbounds i8, ptr %.0210289, i64 -40
  %i.ul = getelementptr inbounds i8, ptr %.0210289, i64 -24
  %i.um = load i32, ptr %i.ul, align 8, !tbaa !1852
  %i.un = tail call fastcc { i64, i64 } @js_create_function(ptr noundef %0, ptr noundef nonnull %i.uk) ; 2 uses
  %i.uo = extractvalue { i64, i64 } %i.un, 1      ; 2 uses
  %i.up = and i64 %i.uo, 4294967295
  %i.uq = icmp eq i64 %i.up, 6
  br i1 %i.uq, label %add_module_variables.exit.thread, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.ur = extractvalue { i64, i64 } %i.un, 0
  %i.us = load ptr, ptr %i.uj, align 8, !tbaa !1868
  %i.ut = sext i32 %i.um to i64
  %i.uu = getelementptr inbounds [16 x i8], ptr %i.us, i64 %i.ut ; 2 uses
  store i64 %i.ur, ptr %i.uu, align 8, !tbaa !35
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  store i64 %i.uo, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !72
  %.not219 = icmp eq ptr %.0209290, %i.ug
  br i1 %.not219, label %._crit_edge292, label %bb.cx, !llvm.loop !1910

._crit_edge292:                                   ; preds = %bb.cy, %add_module_variables.exit
  %i.uv = tail call fastcc i32 @resolve_variables(ptr noundef %0, ptr noundef nonnull %1)
  %.not220 = icmp eq i32 %i.uv, 0
  br i1 %.not220, label %bb.cz, label %add_module_variables.exit.thread

bb.cz:                                            ; preds = %._crit_edge292
  %i.uw = tail call fastcc i32 @resolve_labels(ptr noundef %0, ptr noundef nonnull %1)
  %.not221 = icmp eq i32 %i.uw, 0
  br i1 %.not221, label %bb.da, label %add_module_variables.exit.thread

bb.da:                                            ; preds = %bb.cz
  %i.ux = getelementptr i8, ptr %1, i64 288       ; 4 uses
  %.val = load ptr, ptr %i.ux, align 8, !tbaa !1206 ; 5 uses
  %i.uy = getelementptr i8, ptr %1, i64 296       ; 3 uses
  %.val232 = load i64, ptr %i.uy, align 8, !tbaa !1207 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #49
  %i.uz = trunc i64 %.val232 to i32               ; 2 uses
  store i32 %i.uz, ptr %2, align 8, !tbaa !1911
  %sext.i = shl i64 %.val232, 32                  ; 3 uses
  %i.va = ashr exact i64 %sext.i, 31              ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 19 uses
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !50 ; 8 uses
  %i.vd = icmp eq i64 %sext.i, 0
  br i1 %i.vd, label %bb.dh, label %bb.db, !prof !9

bb.db:                                            ; preds = %bb.da
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vc, i64 40 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vc, i64 48 ; 3 uses
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !10
  %i.vh = add i64 %i.vg, %i.va
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vc, i64 56
  %i.vj = load i64, ptr %i.vi, align 8, !tbaa !14
  %i.vk = add i64 %i.vj, -1
  %i.vl = icmp ugt i64 %i.vh, %i.vk
  br i1 %i.vl, label %bb.dh, label %bb.dc, !prof !9

bb.dc:                                            ; preds = %bb.db
  %i.vm = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.vc, i64 noundef %i.va), !inline_history !63 ; 5 uses
  %.not.i.i.i239 = icmp eq ptr %i.vm, null
  br i1 %.not.i.i.i239, label %._crit_edge.i.i, label %bb.dd

._crit_edge.i.i:                                  ; preds = %bb.dc
  %.pre.i.i246 = load ptr, ptr %i.vb, align 8, !tbaa !50
  br label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.vn = load i64, ptr %i.ve, align 8, !tbaa !34
  %i.vo = add i64 %i.vn, 1
  store i64 %i.vo, ptr %i.ve, align 8, !tbaa !34
  %i.vp = getelementptr inbounds i8, ptr %i.vm, i64 -8 ; 3 uses
  %i.vq = load i16, ptr %i.vp, align 8, !tbaa !35
  %i.vr = icmp eq i16 %i.vq, -1
  br i1 %i.vr, label %bb.de, label %bb.dg

bb.de:                                            ; preds = %bb.dd
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vc, i64 1064
  %i.vt = icmp eq ptr %i.vp, %i.vs
  br i1 %i.vt, label %js_malloc.exit.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vc, i64 32
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !36
  %i.vw = tail call i64 %i.vv(ptr noundef nonnull %i.vp) #49, !inline_history !1914 ; 2 uses
  %.not15.i.i.i.i = icmp eq i64 %i.vw, 0
  %i.vx = select i1 %.not15.i.i.i.i, i64 8, i64 %i.vw
  br label %js_malloc.exit.i

bb.dg:                                            ; preds = %bb.dd
  %i.vy = getelementptr inbounds i8, ptr %i.vm, i64 -6
  %i.vz = load i8, ptr %i.vy, align 2, !tbaa !35
  %i.wa = zext i8 %i.vz to i64
  %i.wb = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.wa
  %i.wc = load i16, ptr %i.wb, align 2, !tbaa !38
  %i.wd = zext i16 %i.wc to i64
  br label %js_malloc.exit.i

bb.dh:                                            ; preds = %._crit_edge.i.i, %bb.db, %bb.da
  %i.we = phi ptr [ %.pre.i.i246, %._crit_edge.i.i ], [ %i.vc, %bb.db ], [ %i.vc, %bb.da ]
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 1256 ; 3 uses
  %i.wg = load i8, ptr %i.wf, align 8, !tbaa !57, !range !58, !noundef !59
  %i.wh = trunc nuw i8 %i.wg to i1
  br i1 %i.wh, label %compute_stack_size.exit.thread, label %bb.di

bb.di:                                            ; preds = %bb.dh
  store i8 1, ptr %i.wf, align 8, !tbaa !57
  %i.wi = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.wf, align 8, !tbaa !57
  br label %compute_stack_size.exit.thread

js_malloc.exit.i:                                 ; preds = %bb.dg, %bb.df, %bb.de
  %.011.i.i.i.i = phi i64 [ 8, %bb.de ], [ %i.vx, %bb.df ], [ %i.wd, %bb.dg ]
  %i.wj = load i64, ptr %i.vf, align 8, !tbaa !10
  %i.wk = add i64 %i.wj, %.011.i.i.i.i
  store i64 %i.wk, ptr %i.vf, align 8, !tbaa !10
  %i.wl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store ptr %i.vm, ptr %i.wl, align 8, !tbaa !1915
  %i.wm = icmp sgt i32 %i.uz, 0
  br i1 %i.wm, label %.lr.ph.preheader.i, label %bb.dj

.lr.ph.preheader.i:                               ; preds = %js_malloc.exit.i
  %i.wn = shl i64 %.val232, 1
  %i.wo = and i64 %i.wn, 4294967294
  tail call void @llvm.memset.p0.i64(ptr nonnull align 2 %i.vm, i8 -1, i64 %i.wo, i1 false), !tbaa !38
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph.preheader.i, %js_malloc.exit.i
  %i.wp = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr null, ptr %i.wp, align 8, !tbaa !1916
  %i.wq = ashr exact i64 %sext.i, 30              ; 2 uses
  %i.wr = load ptr, ptr %i.vb, align 8, !tbaa !50 ; 7 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 40 ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wr, i64 48 ; 3 uses
  %i.wu = load i64, ptr %i.wt, align 8, !tbaa !10
  %i.wv = add i64 %i.wu, %i.wq
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wr, i64 56
  %i.wx = load i64, ptr %i.ww, align 8, !tbaa !14
  %i.wy = add i64 %i.wx, -1
  %i.wz = icmp ugt i64 %i.wv, %i.wy
  br i1 %i.wz, label %bb.dp, label %bb.dk, !prof !9

bb.dk:                                            ; preds = %bb.dj
  %i.xa = tail call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.wr, i64 noundef %i.wq), !inline_history !63 ; 4 uses
  %.not.i.i243.i = icmp eq ptr %i.xa, null
  br i1 %.not.i.i243.i, label %._crit_edge.i248.i, label %bb.dl

._crit_edge.i248.i:                               ; preds = %bb.dk
  %.pre.i249.i = load ptr, ptr %i.vb, align 8, !tbaa !50
  br label %bb.dp

bb.dl:                                            ; preds = %bb.dk
  %i.xb = load i64, ptr %i.ws, align 8, !tbaa !34
  %i.xc = add i64 %i.xb, 1
  store i64 %i.xc, ptr %i.ws, align 8, !tbaa !34
  %i.xd = getelementptr inbounds i8, ptr %i.xa, i64 -8 ; 3 uses
  %i.xe = load i16, ptr %i.xd, align 8, !tbaa !35
  %i.xf = icmp eq i16 %i.xe, -1
  br i1 %i.xf, label %bb.dm, label %bb.do

bb.dm:                                            ; preds = %bb.dl
  %i.xg = getelementptr inbounds nuw i8, ptr %i.wr, i64 1064
  %i.xh = icmp eq ptr %i.xd, %i.xg
  br i1 %i.xh, label %bb.dr, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.xi = getelementptr inbounds nuw i8, ptr %i.wr, i64 32
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !36
  %i.xk = tail call i64 %i.xj(ptr noundef nonnull %i.xd) #49, !inline_history !1914 ; 2 uses
  %.not15.i.i.i247.i = icmp eq i64 %i.xk, 0
  %i.xl = select i1 %.not15.i.i.i247.i, i64 8, i64 %i.xk
  br label %bb.dr

bb.do:                                            ; preds = %bb.dl
  %i.xm = getelementptr inbounds i8, ptr %i.xa, i64 -6
  %i.xn = load i8, ptr %i.xm, align 2, !tbaa !35
  %i.xo = zext i8 %i.xn to i64
  %i.xp = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.xo
  %i.xq = load i16, ptr %i.xp, align 2, !tbaa !38
  %i.xr = zext i16 %i.xq to i64
  br label %bb.dr

bb.dp:                                            ; preds = %._crit_edge.i248.i, %bb.dj
  %i.xs = phi ptr [ %.pre.i249.i, %._crit_edge.i248.i ], [ %i.wr, %bb.dj ]
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 1256 ; 3 uses
  %i.xu = load i8, ptr %i.xt, align 8, !tbaa !57, !range !58, !noundef !59
  %i.xv = trunc nuw i8 %i.xu to i1
  br i1 %i.xv, label %js_malloc.exit250.thread.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i8 1, ptr %i.xt, align 8, !tbaa !57
  %i.xw = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.xt, align 8, !tbaa !57
  br label %js_malloc.exit250.thread.i

js_malloc.exit250.thread.i:                       ; preds = %bb.dq, %bb.dp
  %i.xx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.xx, align 8, !tbaa !1917
  br label %.loopexit.i240

bb.dr:                                            ; preds = %bb.do, %bb.dn, %bb.dm
  %.011.i.i.i245.i = phi i64 [ 8, %bb.dm ], [ %i.xl, %bb.dn ], [ %i.xr, %bb.do ]
  %i.xy = load i64, ptr %i.wt, align 8, !tbaa !10
  %i.xz = add i64 %i.xy, %.011.i.i.i245.i
  store i64 %i.xz, ptr %i.wt, align 8, !tbaa !10
  %i.ya = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 17 uses
  store ptr %i.xa, ptr %i.ya, align 8, !tbaa !1917
  %i.yb = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i32 0, ptr %i.yb, align 4, !tbaa !1918
  %i.yc = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store i32 0, ptr %i.yc, align 8, !tbaa !1919
  %i.yd = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 0, ptr %i.yd, align 4, !tbaa !1920
  %i.ye = call fastcc i32 @ss_check(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1)
  %.not221.i = icmp eq i32 %i.ye, 0
  br i1 %.not221.i, label %.preheader.i242, label %.loopexit.i240

.preheader.i242:                                  ; preds = %bb.dr
  %i.yf = load i32, ptr %i.yc, align 8, !tbaa !1919 ; 2 uses
  %i.yg = icmp sgt i32 %i.yf, 0
  br i1 %i.yg, label %.lr.ph18.i, label %.loopexit

.lr.ph18.i:                                       ; preds = %.preheader.i242, %bb.fa
  %i.yh = phi i32 [ %i.add, %bb.fa ], [ %i.yf, %.preheader.i242 ]
  %i.yi = load ptr, ptr %i.wp, align 8, !tbaa !1916
  %i.yj = add nsw i32 %i.yh, -1                   ; 10 uses
  store i32 %i.yj, ptr %i.yc, align 8, !tbaa !1919
  %i.yk = zext nneg i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %i.yi, i64 %i.yk
  %i.ym = load i32, ptr %i.yl, align 4, !tbaa !8  ; 19 uses
  %i.yn = load ptr, ptr %i.wl, align 8, !tbaa !1915 ; 3 uses
  %i.yo = sext i32 %i.ym to i64                   ; 3 uses
  %i.yp = getelementptr inbounds [2 x i8], ptr %i.yn, i64 %i.yo
  %i.yq = load i16, ptr %i.yp, align 2, !tbaa !38
  %i.yr = zext i16 %i.yq to i32                   ; 2 uses
  %i.ys = load ptr, ptr %i.ya, align 8, !tbaa !1917 ; 3 uses
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.ys, i64 %i.yo
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !8  ; 23 uses
  %i.yv = getelementptr inbounds i8, ptr %.val, i64 %i.yo ; 10 uses
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !35  ; 4 uses
  %i.yx = zext i8 %i.yw to i32                    ; 15 uses
  %i.yy = add i8 %i.yw, 4
  %or.cond.i243 = icmp ult i8 %i.yy, 5
  br i1 %or.cond.i243, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph18.i
  %i.yz = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.630, i32 noundef %i.yx, i32 noundef %i.ym) ; 0 uses
  br label %.loopexit.i240

bb.dt:                                            ; preds = %.lr.ph18.i
  %i.za = icmp ugt i8 %i.yw, -72
  %i.zb = add nuw nsw i32 %i.yx, 19
  %i.zc = select i1 %i.za, i32 %i.zb, i32 %i.yx   ; 3 uses
  %i.zd = zext nneg i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr @opcode_info, i64 %i.zd ; 3 uses
  %i.zf = load i8, ptr %i.ze, align 4, !tbaa !1357
  %i.zg = zext i8 %i.zf to i32
  %i.zh = add nsw i32 %i.ym, %i.zg                ; 14 uses
  %i.zi = load i32, ptr %2, align 8, !tbaa !1911
  %i.zj = icmp sgt i32 %i.zh, %i.zi
  br i1 %i.zj, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.zk = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.631, i32 noundef %i.yx, i32 noundef %i.ym) ; 0 uses
  br label %.loopexit.i240

bb.dv:                                            ; preds = %bb.dt
  %i.zl = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !1921
  %i.zn = zext i8 %i.zm to i32                    ; 3 uses
  switch i32 %i.zc, label %bb.dx [
    i32 50, label %bb.dw
    i32 38, label %bb.dw
    i32 37, label %bb.dw
    i32 36, label %bb.dw
    i32 35, label %bb.dw
    i32 34, label %bb.dw
    i32 33, label %bb.dw
  ]

bb.dw:                                            ; preds = %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv, %bb.dv
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yv, i64 1
  %.val242.i = load i16, ptr %i.zo, align 1
  %i.zp = zext i16 %.val242.i to i32
  %i.zq = add nuw nsw i32 %i.zp, %i.zn
  br label %bb.dz

bb.dx:                                            ; preds = %bb.dv
  %i.zr = add nsw i32 %i.zc, -263
  %i.zs = icmp ult i32 %i.zr, 4
  br i1 %i.zs, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.zt = add nsw i32 %i.yx, -244
  %i.zu = add nsw i32 %i.zt, %i.zn
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx, %bb.dw
  %.0206.i = phi i32 [ %i.zq, %bb.dw ], [ %i.zu, %bb.dy ], [ %i.zn, %bb.dx ] ; 2 uses
  %i.zv = icmp sgt i32 %.0206.i, %i.yr
  br i1 %i.zv, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.zw = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.632, i32 noundef %i.yx, i32 noundef %i.ym) ; 0 uses
  br label %.loopexit.i240

bb.eb:                                            ; preds = %bb.dz
  %i.zx = getelementptr inbounds nuw i8, ptr %i.ze, i64 2
  %i.zy = load i8, ptr %i.zx, align 2, !tbaa !1922
  %i.zz = zext i8 %i.zy to i32
  %i.aaa = sub nsw i32 %i.zz, %.0206.i
  %i.aab = add nsw i32 %i.aaa, %i.yr              ; 29 uses
  %i.aac = load i32, ptr %i.yb, align 4, !tbaa !1918
  %i.aad = icmp sgt i32 %i.aab, %i.aac
  br i1 %i.aad, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %bb.eb
  store i32 %i.aab, ptr %i.yb, align 4, !tbaa !1918
  %i.aae = icmp sgt i32 %i.aab, 65534
  br i1 %i.aae, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  %i.aaf = tail call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.633, i32 noundef %i.yx, i32 noundef %i.ym) ; 0 uses
  br label %.loopexit.i240

end_hunk_27
begin_hunk_28_@emit_class_init_end:bb.a
bb.f:                                             ; preds = %emit_op.exit16
  %i.aw = tail call fastcc i32 @__dbuf_put_u32(ptr noundef nonnull %i.ap, i32 noundef %.0.i) ; 0 uses
  br label %emit_u32.exit

bb.g:                                             ; preds = %emit_op.exit16
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !458
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.at
  store i32 %.0.i, ptr %i.ay, align 1
  %i.az = load i64, ptr %i.as, align 8, !tbaa !457
  %i.ba = add i64 %i.az, 4
  store i64 %i.ba, ptr %i.as, align 8, !tbaa !457
  br label %emit_u32.exit

emit_u32.exit:                                    ; preds = %bb.f, %bb.g
  %.val = load ptr, ptr %i.a, align 8, !tbaa !844 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !457 ; 4 uses
  %i.be = trunc i64 %i.bd to i32
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !1205
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !456
  %i.bi = icmp eq i64 %i.bh, %i.bd
  br i1 %i.bi, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %emit_u32.exit
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.bb, i8 noundef zeroext 79)
  br label %emit_op.exit17

bb.i:                                             ; preds = %emit_u32.exit
  %i.bj = load ptr, ptr %i.bb, align 8, !tbaa !458
  %i.bk = add i64 %i.bd, 1
  store i64 %i.bk, ptr %i.bc, align 8, !tbaa !457
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bd
  store i8 79, ptr %i.bl, align 1, !tbaa !35
  br label %emit_op.exit17

emit_op.exit17:                                   ; preds = %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @js_atom_concat_str(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  %i.c = icmp slt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 2147483647
  %i.e = call i64 @u32toa(ptr noundef nonnull %i.a, i32 noundef %i.d) #49, !inline_history !330
  %i.f = trunc i64 %i.e to i32
  %i.g = call fastcc { i64, i64 } @js_new_string8_len(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.f), !inline_history !330
  br label %JS_AtomToString.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 1104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !154  ; 2 uses
  %i.l = zext nneg i32 %1 to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !155  ; 2 uses
  %i.o = load i64, ptr %i.n, align 8              ; 2 uses
  %.mask.i.i = and i64 %i.o, -4611686018427387904
  %i.p = icmp ne i64 %.mask.i.i, 4611686018427387904
  %i.q = and i64 %i.o, 4294967295
  %or.cond.i.not.i = icmp eq i64 %i.q, 2147483648
  %or.cond.i = and i1 %i.p, %or.cond.i.not.i
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi ptr [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 2 uses
  %i.t = ptrtoint ptr %.0.i.i to i64
  %i.u = getelementptr inbounds i8, ptr %.0.i.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %i.u, align 4, !tbaa !8
  %.fca.0.insert.i.i.i = insertvalue { i64, i64 } poison, i64 %i.t, 0
  %.fca.1.insert.i.i.i = insertvalue { i64, i64 } %.fca.0.insert.i.i.i, i64 -7, 1
  br label %JS_AtomToString.exit

JS_AtomToString.exit:                             ; preds = %bb.b, %bb.e
  %.pn17.i.i = phi { i64, i64 } [ %i.g, %bb.b ], [ %.fca.1.insert.i.i.i, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  %i.x = extractvalue { i64, i64 } %.pn17.i.i, 0  ; 4 uses
  %i.y = extractvalue { i64, i64 } %.pn17.i.i, 1  ; 5 uses
  %i.z = and i64 %i.y, 4294967295
  %i.aa = icmp eq i64 %i.z, 6
  br i1 %i.aa, label %JS_FreeValue.exit, label %bb.f

bb.f:                                             ; preds = %JS_AtomToString.exit
  %i.ab = call ptr @JS_ToCStringLen2(ptr noundef %0, ptr noundef nonnull %i.b, i64 %i.x, i64 %i.y, i1 noundef zeroext false), !inline_history !321 ; 6 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %JS_FreeCString.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #52 ; 3 uses
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !72  ; 3 uses
  %i.ae = add i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = add i64 %i.ae, 1                        ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 8 uses
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %bb.n, label %bb.h, !prof !9

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = add i64 %i.al, %i.af
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !14
  %i.ap = add i64 %i.ao, -1
  %i.aq = icmp ugt i64 %i.am, %i.ap
  br i1 %i.aq, label %bb.n, label %bb.i, !prof !9

bb.i:                                             ; preds = %bb.h
  %i.ar = call fastcc ptr @js_arena_malloc(ptr noundef nonnull %i.ah, i64 noundef %i.af), !inline_history !63 ; 7 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %._crit_edge.i, label %bb.j

._crit_edge.i:                                    ; preds = %bb.i
  %.pre.i = load ptr, ptr %i.ag, align 8, !tbaa !50
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.aj, align 8, !tbaa !34
  %i.at = add i64 %i.as, 1
  store i64 %i.at, ptr %i.aj, align 8, !tbaa !34
  %i.au = getelementptr inbounds i8, ptr %i.ar, i64 -8 ; 3 uses
  %i.av = load i16, ptr %i.au, align 8, !tbaa !35
  %i.aw = icmp eq i16 %i.av, -1
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 1064
  %i.ay = icmp eq ptr %i.au, %i.ax
  br i1 %i.ay, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bb = call i64 %i.ba(ptr noundef nonnull %i.au) #49, !inline_history !64 ; 2 uses
  %.not15.i.i.i = icmp eq i64 %i.bb, 0
  %i.bc = select i1 %.not15.i.i.i, i64 8, i64 %i.bb
  br label %bb.r

bb.m:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds i8, ptr %i.ar, i64 -6
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !35
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr @arena_block_sizes, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !38
  %i.bi = zext i16 %i.bh to i64
  br label %bb.r

bb.n:                                             ; preds = %._crit_edge.i, %bb.h, %bb.g
  %i.bj = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ah, %bb.h ], [ %i.ah, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 1256 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !57, !range !58, !noundef !59
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.bk, align 8, !tbaa !57
  %i.bn = call { i64, i64 } (ptr, ptr, ...) @JS_ThrowInternalError(ptr noundef nonnull %0, ptr noundef nonnull @.str.46) #51, !inline_history !65 ; 0 uses
  store i8 0, ptr %i.bk, align 8, !tbaa !57
  %.pre44 = load ptr, ptr %i.ag, align 8, !tbaa !50
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bo = phi ptr [ %.pre44, %bb.o ], [ %i.bj, %bb.n ]
  %i.bp = getelementptr inbounds i8, ptr %i.ab, i64 -28 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !8  ; 2 uses
  %i.br = add nsw i32 %i.bq, -1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !8
  %i.bs = icmp slt i32 %i.bq, 2
  br i1 %i.bs, label %bb.q, label %JS_FreeCString.exit

bb.q:                                             ; preds = %bb.p
  %i.bt = getelementptr inbounds i8, ptr %i.ab, i64 -24
  %i.bu = ptrtoint ptr %i.bt to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.bo, i64 %i.bu, i64 -7), !inline_history !1076
  br label %JS_FreeCString.exit

bb.r:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.011.i.i.i = phi i64 [ 8, %bb.k ], [ %i.bc, %bb.l ], [ %i.bi, %bb.m ]
  %i.bv = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.bw = add i64 %i.bv, %.011.i.i.i
  store i64 %i.bw, ptr %i.ak, align 8, !tbaa !10
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull align 1 %i.ab, i64 %i.ad, i1 false)
  %i.bx = getelementptr i8, ptr %i.ar, i64 %i.ad  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull align 1 %2, i64 %i.ac, i1 false)
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.ac
  store i8 0, ptr %i.by, align 1, !tbaa !35
  %i.bz = call i32 @JS_NewAtomLen(ptr noundef nonnull %0, ptr noundef nonnull %i.ar, i64 noundef %i.ae) ; 3 uses
  %i.ca = load ptr, ptr %i.ag, align 8, !tbaa !50
  call void @js_free_rt(ptr noundef %i.ca, ptr noundef nonnull %i.ar)
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !50 ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.ab, i64 -28 ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8  ; 2 uses
  %i.ce = add nsw i32 %i.cd, -1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !8
  %i.cf = icmp slt i32 %i.cd, 2
  br i1 %i.cf, label %bb.s, label %JS_FreeCString.exit40

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds i8, ptr %i.ab, i64 -24
  %i.ch = ptrtoint ptr %i.cg to i64
  call fastcc void @js_free_value_rt(ptr noundef %i.cb, i64 %i.ch, i64 -7), !inline_history !1076
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !50
  br label %JS_FreeCString.exit40

JS_FreeCString.exit40:                            ; preds = %bb.r, %bb.s
  %i.ci = phi ptr [ %i.cb, %bb.r ], [ %.pre, %bb.s ]
  %i.cj = trunc i64 %i.y to i32
  %i.ck = icmp ugt i32 %i.cj, -10
  br i1 %i.ck, label %bb.t, label %JS_FreeValue.exit

bb.t:                                             ; preds = %JS_FreeCString.exit40
  %i.cl = inttoptr i64 %i.x to ptr
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 -4 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !8  ; 2 uses
  %i.co = add nsw i32 %i.cn, -1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !8
  %i.cp = icmp slt i32 %i.cn, 2
  br i1 %i.cp, label %JS_FreeValue.exit.sink.split, label %JS_FreeValue.exit

JS_FreeCString.exit:                              ; preds = %bb.f, %bb.q, %bb.p
  %i.cq = trunc i64 %i.y to i32
  %i.cr = icmp ugt i32 %i.cq, -10
  br i1 %i.cr, label %bb.u, label %JS_FreeValue.exit

bb.u:                                             ; preds = %JS_FreeCString.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.cu = inttoptr i64 %i.x to ptr
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !8  ; 2 uses
  %i.cx = add nsw i32 %i.cw, -1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !8
  %i.cy = icmp slt i32 %i.cw, 2
  br i1 %i.cy, label %JS_FreeValue.exit.sink.split, label %JS_FreeValue.exit

JS_FreeValue.exit.sink.split:                     ; preds = %bb.u, %bb.t
  %.sink = phi ptr [ %i.ci, %bb.t ], [ %i.ct, %bb.u ]
  %.0.ph = phi i32 [ %i.bz, %bb.t ], [ 0, %bb.u ]
  call fastcc void @js_free_value_rt(ptr noundef %.sink, i64 %i.x, i64 %i.y)
  br label %JS_FreeValue.exit

JS_FreeValue.exit:                                ; preds = %JS_FreeValue.exit.sink.split, %bb.u, %JS_FreeCString.exit, %bb.t, %JS_FreeCString.exit40, %JS_AtomToString.exit
  %.0 = phi i32 [ 0, %bb.u ], [ 0, %JS_AtomToString.exit ], [ %i.bz, %JS_FreeCString.exit40 ], [ %i.bz, %bb.t ], [ 0, %JS_FreeCString.exit ], [ %.0.ph, %JS_FreeValue.exit.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #49
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_expr2(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not10 = icmp eq i32 %i.a, 0
  br i1 %.not10, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 160        ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !1092
  %.not8.peel = icmp eq i32 %i.d, 44
  br i1 %.not8.peel, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not9.peel = icmp eq i32 %i.e, 0
  br i1 %.not9.peel, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %.val.peel = load ptr, ptr %i.b, align 8, !tbaa !844 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.peel, i64 288 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.peel, i64 296 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !457  ; 4 uses
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %.val.peel, i64 336
  store i32 %i.i, ptr %i.j, align 8, !tbaa !1205
  %i.k = getelementptr inbounds nuw i8, ptr %.val.peel, i64 304
  %i.l = load i64, ptr %i.k, align 8, !tbaa !456
  %i.m = icmp eq i64 %i.l, %i.h
  br i1 %i.m, label %bb.f, label %bb.e, !prof !9

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !458
  %i.o = add i64 %i.h, 1
  store i64 %i.o, ptr %i.g, align 8, !tbaa !457
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 14, ptr %i.p, align 1, !tbaa !35
  br label %emit_op.exit.peel

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.f, i8 noundef zeroext 14)
  br label %emit_op.exit.peel

emit_op.exit.peel:                                ; preds = %bb.f, %bb.e
  %i.q = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not.peel = icmp eq i32 %i.q, 0
  br i1 %.not.peel, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %emit_op.exit.peel, %emit_op.exit
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !844
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  store i32 -1, ptr %i.s, align 8, !tbaa !1205
  %i.t = load i32, ptr %i.c, align 8, !tbaa !1092
  %.not8 = icmp eq i32 %i.t, 44
  br i1 %.not8, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %.peel.next
  %i.u = tail call fastcc i32 @next_token(ptr noundef %0)
  %.not9 = icmp eq i32 %i.u, 0
  br i1 %.not9, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %bb.g
  %.val = load ptr, ptr %i.b, align 8, !tbaa !844 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 288 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 296 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !457  ; 4 uses
  %i.y = trunc i64 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 336
  store i32 %i.y, ptr %i.z, align 8, !tbaa !1205
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 304
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !456
  %i.ac = icmp eq i64 %i.ab, %i.x
  br i1 %i.ac, label %bb.i, label %bb.j, !prof !9

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @__dbuf_putc(ptr noundef nonnull %i.v, i8 noundef zeroext 14)
  br label %emit_op.exit

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.v, align 8, !tbaa !458
  %i.ae = add i64 %i.x, 1
  store i64 %i.ae, ptr %i.w, align 8, !tbaa !457
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  store i8 14, ptr %i.af, align 1, !tbaa !35
  br label %emit_op.exit

emit_op.exit:                                     ; preds = %bb.i, %bb.j
  %i.ag = tail call fastcc i32 @js_parse_assign_expr2(ptr noundef %0, i32 noundef %1)
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.peel.next, label %._crit_edge, !llvm.loop !2012

._crit_edge:                                      ; preds = %emit_op.exit, %bb.g, %.peel.next, %bb.b, %bb.c, %emit_op.exit.peel, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ -1, %bb.c ], [ -1, %emit_op.exit.peel ], [ -1, %emit_op.exit ], [ 0, %.peel.next ], [ -1, %bb.g ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @js_parse_assign_expr2(ptr noundef nonnull %0, i32 noundef range(i32 0, 18) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 10 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #49
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1092 ; 2 uses
  switch i32 %i.h, label %bb.aw [
    i32 -40, label %bb.b
    i32 40, label %bb.au
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 47 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !844
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  %i.l = load i64, ptr %i.k, align 4              ; 2 uses
  %i.m = and i64 %i.l, 2097152
  %.not248 = icmp eq i64 %i.m, 0
  br i1 %.not248, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call i32 (ptr, ptr, ...) @js_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.564) ; 0 uses
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.o = and i64 %i.l, 65536
  %.not249 = icmp eq i64 %i.o, 0
  br i1 %.not249, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
end_hunk_28
