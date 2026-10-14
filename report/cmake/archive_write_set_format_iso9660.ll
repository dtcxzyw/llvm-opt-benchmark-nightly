Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_iso9660?download=true
inline.NumInlined: 294
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@strncmp

; Function Attrs: nounwind uwtable
define internal fastcc i32 @set_directory_record(ptr noundef %0, i64 noundef range(i64 -9223372036854773759, -9223372036854775808) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 4) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %6 = alloca %struct.tm, align 8                 ; 10 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.tm, align 8                 ; 10 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %8 = alloca %struct.tm, align 8                 ; 10 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %9 = alloca %struct.tm, align 8                 ; 10 uses
  %10 = alloca %struct.ctl_extr_rec, align 8      ; 36 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %11 = alloca %struct.tm, align 8                ; 10 uses
  %.not = icmp eq ptr %0, null                    ; 3 uses
  br i1 %.not, label %bb.b, label %switch.lookup

default.unreachable160:                           ; preds = %bb.p
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %i.g = shl nuw nsw i32 %4, 2
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 140
  %.085.in = load i32, ptr %i.j, align 4, !tbaa !90
  %.085 = sext i32 %.085.in to i64
  %i.k = icmp ult i64 %1, %.085
  br i1 %i.k, label %bb.gl, label %bb.b

bb.b:                                             ; preds = %switch.lookup, %bb.a
  %i.l = icmp eq i32 %4, 3
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !140
  %.not94 = icmp eq ptr %i.n, null
  br i1 %.not94, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.p = load i32, ptr %i.o, align 8, !tbaa !141
  %i.q = sext i32 %i.p to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.084 = phi i64 [ %i.q, %bb.d ], [ 1, %bb.c ], [ 1, %bb.b ] ; 6 uses
  br i1 %.not, label %.thread106, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i32 %4, 2
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %.083 = phi ptr [ %i.t, %bb.g ], [ %2, %bb.f ]  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !137  ; 2 uses
  %.not95 = icmp eq ptr %i.x, null
  %spec.select = select i1 %.not95, ptr %i.v, ptr %i.x ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.083, i64 232 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8
  %i.aa = and i8 %i.z, 2
  %.not96 = icmp eq i8 %i.aa, 0
  br i1 %.not96, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select, i64 176
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78
  %.not97 = icmp eq ptr %i.ae, null
  %. = select i1 %.not97, i8 0, i8 -128
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i8 [ 2, %bb.h ], [ %., %bb.i ]
  %i.af = getelementptr inbounds i8, ptr %0, i64 -1 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ag, align 1, !tbaa !68
  %i.ah = load i8, ptr %i.y, align 8
  %i.ai = and i8 %i.ah, 2
  %.not98 = icmp eq i8 %i.ai, 0
  br i1 %.not98, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.083, i64 156
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %spec.select, i64 176
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !76
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sink126.in = phi ptr [ %i.am, %bb.l ], [ %i.aj, %bb.k ]
  %.sink126 = load i32, ptr %.sink126.in, align 4, !tbaa !90 ; 5 uses
  %.sink = trunc i32 %.sink126 to i8
  %.sink123.in = lshr i32 %.sink126, 8
  %.sink123 = trunc i32 %.sink123.in to i8
  %.sink124.in = lshr i32 %.sink126, 16
  %.sink124 = trunc i32 %.sink124.in to i8
  %.sink125.in = lshr i32 %.sink126, 24
  %.sink125 = trunc nuw i32 %.sink125.in to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i32 %.sink126, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %.sink125, ptr %i.ao, align 1, !tbaa !68
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %.sink124, ptr %i.ap, align 1, !tbaa !68
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sink123, ptr %i.aq, align 1, !tbaa !68
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %.sink, ptr %i.ar, align 1, !tbaa !68
  %i.as = load i8, ptr %i.y, align 8
  %i.at = and i8 %i.as, 2
  %.not99 = icmp eq i8 %i.at, 0
  br i1 %.not99, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.083, i64 160
  %i.av = load i32, ptr %i.au, align 8, !tbaa !170
  %i.aw = shl nsw i32 %i.av, 11                   ; 4 uses
  %i.ax = lshr i32 %i.aw, 24
  %i.ay = trunc nuw i32 %i.ax to i8
  %i.az = lshr i32 %i.aw, 16
  %i.ba = trunc i32 %i.az to i8
  %i.bb = lshr exact i32 %i.aw, 8
  %i.bc = trunc i32 %i.bb to i8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %spec.select, i64 176
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !105 ; 5 uses
  %i.bh = trunc i64 %i.bg to i32
  %i.bi = lshr i64 %i.bg, 24
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = lshr i64 %i.bg, 16
  %i.bl = trunc i64 %i.bk to i8
  %i.bm = lshr i64 %i.bg, 8
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = trunc i64 %i.bg to i8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink131 = phi i32 [ %i.bh, %bb.o ], [ %i.aw, %bb.n ]
  %.sink130 = phi i8 [ %i.bj, %bb.o ], [ %i.ay, %bb.n ]
  %.sink129 = phi i8 [ %i.bl, %bb.o ], [ %i.ba, %bb.n ]
  %.sink128 = phi i8 [ %i.bn, %bb.o ], [ %i.bc, %bb.n ]
  %.sink127 = phi i8 [ %i.bo, %bb.o ], [ 0, %bb.n ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i32 %.sink131, ptr %i.bp, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %.sink130, ptr %i.bq, align 1, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %.sink129, ptr %i.br, align 1, !tbaa !68
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink128, ptr %i.bs, align 1, !tbaa !68
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sink127, ptr %i.bt, align 1, !tbaa !68
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bv = getelementptr inbounds nuw i8, ptr %.083, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !82
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !75
  %i.bz = tail call i64 @archive_entry_mtime(ptr noundef %i.by) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.bz, ptr %i.f, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  tail call void @tzset() #23
  %i.ca = call ptr @localtime_r(ptr noundef nonnull %i.f, ptr noundef nonnull %11) #23 ; 0 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %11, i64 20
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !200
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %i.bu, align 1, !tbaa !68
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.cf = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !371
  %i.ch = trunc i32 %i.cg to i8
  %i.ci = add i8 %i.ch, 1
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !68
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !372
  %i.cm = trunc i32 %i.cl to i8
  store i8 %i.cm, ptr %i.cj, align 1, !tbaa !68
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.co = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !373
  %i.cq = trunc i32 %i.cp to i8
  store i8 %i.cq, ptr %i.cn, align 1, !tbaa !68
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.cs = getelementptr inbounds nuw i8, ptr %11, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !374
  %i.cu = trunc i32 %i.ct to i8
  store i8 %i.cu, ptr %i.cr, align 1, !tbaa !68
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.cw = load i32, ptr %11, align 8, !tbaa !201
  %i.cx = trunc i32 %i.cw to i8
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !68
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !202
  %i.db = sdiv i64 %i.da, 900
  %i.dc = trunc i64 %i.db to i8
  store i8 %i.dc, ptr %i.cy, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.0, ptr %i.dd, align 1, !tbaa !68
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 0, ptr %i.de, align 1, !tbaa !68
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 0, ptr %i.df, align 1, !tbaa !68
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 284
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !153 ; 3 uses
  %i.dj = trunc i32 %i.di to i16
  store i16 %i.dj, ptr %i.dg, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.dl = lshr i32 %i.di, 8
  %i.dm = trunc i32 %i.dl to i8
  store i8 %i.dm, ptr %i.dk, align 1, !tbaa !68
  %i.dn = trunc i32 %i.di to i8
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !68
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dq = trunc i64 %.084 to i8
  store i8 %i.dq, ptr %i.dp, align 1, !tbaa !68
  switch i32 %4, label %default.unreachable160 [
    i32 0, label %bb.q
    i32 1, label %bb.q
    i32 2, label %bb.r
    i32 3, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 0, ptr %i.dr, align 1, !tbaa !68
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 1, ptr %i.ds, align 1, !tbaa !68
  br label %bb.v

bb.s:                                             ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !140 ; 2 uses
  %.not100 = icmp eq ptr %i.du, null
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 33 ; 2 uses
  br i1 %.not100, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dv, ptr nonnull align 1 %i.du, i64 %.084, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store i8 0, ptr %i.dv, align 1, !tbaa !68
  br label %bb.v

default.unreachable:                              ; preds = %bb.gh
  unreachable

bb.v:                                             ; preds = %bb.q, %bb.r, %bb.u, %bb.t
  %i.dw = add nsw i64 %.084, 33                   ; 3 uses
  %i.dx = and i64 %i.dw, 1
  %.not101 = icmp eq i64 %i.dx, 0
  br i1 %.not101, label %.thread106.thread, label %.thread108

.thread106:                                       ; preds = %bb.e
  %i.dy = add nsw i64 %.084, 33                   ; 2 uses
  %i.dz = and i64 %i.dy, 1
  %.not101103 = icmp eq i64 %i.dz, 0
  %i.ea = add nsw i64 %.084, 34
  %spec.select118 = select i1 %.not101103, i64 %i.dy, i64 %i.ea ; 2 uses
  %i.eb = icmp eq i32 %4, 0
  br i1 %i.eb, label %bb.w, label %bb.x

.thread106.thread:                                ; preds = %bb.v
  %i.ec = icmp eq i32 %4, 0
  br i1 %i.ec, label %.thread114, label %bb.x

.thread108:                                       ; preds = %bb.v
  %i.ed = add nsw i64 %.084, 34                   ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ed
  store i8 0, ptr %i.ee, align 1, !tbaa !68
  %i.ef = icmp eq i32 %4, 0
  br i1 %i.ef, label %.thread114, label %bb.x

.thread114:                                       ; preds = %.thread106.thread, %.thread108
  %.1112116 = phi i64 [ %i.dw, %.thread106.thread ], [ %i.ed, %.thread108 ] ; 2 uses
  %i.eg = trunc i64 %.1112116 to i8
  store i8 %i.eg, ptr %0, align 1, !tbaa !68
  %.pre = trunc i64 %.1112116 to i32
  br label %bb.gl

bb.w:                                             ; preds = %.thread106
  %i.eh = trunc i64 %spec.select118 to i32        ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 140
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !375
  br label %bb.gl

bb.x:                                             ; preds = %.thread106.thread, %.thread108, %.thread106
  %.1113 = phi i64 [ %i.ed, %.thread108 ], [ %spec.select118, %.thread106 ], [ %i.dw, %.thread106.thread ] ; 3 uses
  %.086105111 = phi ptr [ %i.af, %.thread108 ], [ null, %.thread106 ], [ %i.af, %.thread106.thread ] ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %3, i64 66416 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8
  %i.el = and i32 %i.ek, 25165824
  %i.em = icmp ne i32 %i.el, 0
  %i.en = icmp ne i32 %5, 1
  %or.cond = and i1 %i.en, %i.em
  br i1 %or.cond, label %bb.y, label %bb.gf

bb.y:                                             ; preds = %bb.x
  %i.eo = trunc i64 %.1113 to i32                 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  store ptr %.086105111, ptr %i.ep, align 8, !tbaa !204
  %.not.i.i = icmp eq ptr %.086105111, null
  %sext = shl i64 %.1113, 32
  %i.eq = ashr exact i64 %sext, 32
  %i.er = getelementptr inbounds i8, ptr %.086105111, i64 %i.eq ; 4 uses
  %.0.i.i = select i1 %.not.i.i, ptr null, ptr %i.er ; 7 uses
  store i32 0, ptr %10, align 8, !tbaa !205
  %i.es = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 14 uses
  store ptr %2, ptr %i.es, align 8, !tbaa !206
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr null, ptr %i.et, align 8, !tbaa !207
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 36 ; 3 uses
  store i32 %i.eo, ptr %i.eu, align 4, !tbaa !208
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 30 uses
  store i32 %i.eo, ptr %i.ev, align 8, !tbaa !209
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 15 uses
  store i32 226, ptr %i.ew, align 8, !tbaa !210
  %i.ex = icmp eq i32 %4, 2
  br i1 %i.ex, label %.thread529.i, label %bb.z

.thread529.i:                                     ; preds = %bb.y
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !131 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !65 ; 2 uses
  %.not.i = icmp eq ptr %i.ez, null               ; 2 uses
  %..i = select i1 %.not.i, ptr %i.fb, ptr %i.ez  ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %..i, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !82
  %spec.select534.i = select i1 %.not.i, i8 -127, i8 -95
  br label %.thread520.i

bb.z:                                             ; preds = %bb.y
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !82 ; 6 uses
  switch i32 %4, label %.thread520.i [
    i32 3, label %bb.aa
    i32 1, label %bb.ad
  ]

bb.aa:                                            ; preds = %bb.z
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 32 ; 3 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !75
  %i.fi = call i32 @archive_entry_filetype(ptr noundef %i.fh) #23
  %i.fj = icmp eq i32 %i.fi, 40960
  %spec.select465.i = select i1 %i.fj, i8 -115, i8 -119 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !131
  %.not417.i = icmp eq ptr %i.fl, null
  %i.fm = or disjoint i8 %spec.select465.i, 64
  %.1402.i = select i1 %.not417.i, i8 %spec.select465.i, i8 %i.fm ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !132
  %.not418.i = icmp eq ptr %i.fo, null
  %i.fp = or disjoint i8 %.1402.i, 16
  %.2403.i = select i1 %.not418.i, i8 %.1402.i, i8 %i.fp ; 2 uses
  %i.fq = load ptr, ptr %i.fg, align 8, !tbaa !75
  %i.fr = call i32 @archive_entry_filetype(ptr noundef %i.fq) #23
  %i.fs = icmp eq i32 %i.fr, 8192
  br i1 %i.fs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ft = load ptr, ptr %i.fg, align 8, !tbaa !75
  %i.fu = call i32 @archive_entry_filetype(ptr noundef %i.ft) #23
  %i.fv = icmp eq i32 %i.fu, 24576
  br i1 %i.fv, label %bb.ac, label %.thread520.i

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.fw = or disjoint i8 %.2403.i, 2
  br label %.thread520.i

bb.ad:                                            ; preds = %bb.z
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !65
  %i.fz = icmp eq ptr %2, %i.fy
  br i1 %i.fz, label %bb.ae, label %.thread520.i

bb.ae:                                            ; preds = %bb.ad
  %.not420.i = icmp eq ptr %.0.i.i, null
  br i1 %.not420.i, label %extra_tell_used_size.exit.i, label %bb.af
end_hunk_0
begin_hunk_1_@set_directory_record:bb.a
  store i8 1, ptr %i.rs, align 1, !tbaa !68
  %i.rt = sext i32 %.0364.lcssa.i to i64
  %i.ru = getelementptr inbounds i8, ptr %.14.i, i64 %i.rt
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.15.i = phi ptr [ %i.ru, %bb.db ], [ null, %bb.da ]
  %i.rv = load i32, ptr %10, align 8, !tbaa !205
  %.not.i483.i = icmp eq i32 %i.rv, 0
  br i1 %.not.i483.i, label %extra_tell_used_size.exit485.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.rw = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !65
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 224
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !88 ; 2 uses
  %.not7.i484.i = icmp eq ptr %i.sa, null
  br i1 %.not7.i484.i, label %extra_tell_used_size.exit485.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 4 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !173
  %i.sd = add nsw i32 %i.sc, %.0364.lcssa.i
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !173
  br label %extra_tell_used_size.exit485.i

extra_tell_used_size.exit485.i:                   ; preds = %bb.de, %bb.dd, %bb.dc
  %i.se = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.sf = add nsw i32 %i.se, %.0364.lcssa.i       ; 2 uses
  store i32 %i.sf, ptr %i.ev, align 8, !tbaa !209
  %i.sg = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.sh = sub nsw i32 %i.sg, %i.sf
  %i.si = icmp slt i32 %i.sh, 11
  br i1 %i.si, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %extra_tell_used_size.exit485.i
  %i.sj = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef 11)
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %extra_tell_used_size.exit485.i
  %.16.i = phi ptr [ %i.sj, %bb.df ], [ %.15.i, %extra_tell_used_size.exit485.i ] ; 5 uses
  %.not434.i = icmp eq ptr %.16.i, null
  br i1 %.not434.i, label %bb.dn, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.sk = getelementptr inbounds nuw i8, ptr %.16.i, i64 1
  store i8 83, ptr %i.sk, align 1, !tbaa !68
  %i.sl = getelementptr inbounds nuw i8, ptr %.16.i, i64 2
  store i8 76, ptr %i.sl, align 1, !tbaa !68
  %i.sm = getelementptr inbounds nuw i8, ptr %.16.i, i64 4
  store i8 1, ptr %i.sm, align 1, !tbaa !68
  br label %bb.dn

bb.di:                                            ; preds = %._crit_edge561.i
  br i1 %.not432.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sn = trunc i32 %.0364.lcssa.i to i8
  %i.so = getelementptr inbounds nuw i8, ptr %.14.i, i64 3
  store i8 %i.sn, ptr %i.so, align 1, !tbaa !68
  %i.sp = getelementptr inbounds nuw i8, ptr %.14.i, i64 5
  store i8 0, ptr %i.sp, align 1, !tbaa !68
  %i.sq = sext i32 %.0364.lcssa.i to i64
  %i.sr = getelementptr inbounds i8, ptr %.14.i, i64 %i.sq
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.17.i = phi ptr [ %i.sr, %bb.dj ], [ null, %bb.di ]
  %i.ss = load i32, ptr %10, align 8, !tbaa !205
  %.not.i486.i = icmp eq i32 %i.ss, 0
  br i1 %.not.i486.i, label %.thread541.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.st = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 32
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !65
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 224
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !88 ; 2 uses
  %.not7.i487.i = icmp eq ptr %i.sx, null
  br i1 %.not7.i487.i, label %.thread541.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 4 ; 2 uses
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !173
  %i.ta = add nsw i32 %i.sz, %.0364.lcssa.i
  store i32 %i.ta, ptr %i.sy, align 4, !tbaa !173
  br label %.thread541.i

.thread541.i:                                     ; preds = %bb.dm, %bb.dl, %bb.dk
  %i.tb = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.tc = add nsw i32 %i.tb, %.0364.lcssa.i       ; 2 uses
  store i32 %i.tc, ptr %i.ev, align 8, !tbaa !209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.do

bb.dn:                                            ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.bx

bb.do:                                            ; preds = %.thread541.i, %bb.bs
  %i.td = phi i32 [ %i.op, %bb.bs ], [ %i.tc, %.thread541.i ]
  %.19.i = phi ptr [ %.12.i, %bb.bs ], [ %.17.i, %.thread541.i ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.gh, i64 32 ; 11 uses
  %i.tf = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tg = call i32 @archive_entry_birthtime_is_set(ptr noundef %i.tf) #23
  %.not435.i = icmp eq i32 %i.tg, 0
  br i1 %.not435.i, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.th = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.ti = call i64 @archive_entry_birthtime(ptr noundef %i.th) #23
  %i.tj = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tk = call i64 @archive_entry_mtime(ptr noundef %i.tj) #23
  %.not436.i = icmp sle i64 %i.ti, %i.tk          ; 2 uses
  %spec.select468.i = select i1 %.not436.i, i32 12, i32 5
  %spec.select469.i = zext i1 %.not436.i to i8
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.0397.i = phi i32 [ 5, %bb.do ], [ %spec.select468.i, %bb.dp ] ; 2 uses
  %.0359.i = phi i8 [ 0, %bb.do ], [ %spec.select469.i, %bb.dp ] ; 2 uses
  %i.tl = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tm = call i32 @archive_entry_mtime_is_set(ptr noundef %i.tl) #23
  %.not437.i = icmp eq i32 %i.tm, 0               ; 2 uses
  %i.tn = add nuw nsw i32 %.0397.i, 7
  %i.to = or disjoint i8 %.0359.i, 2
  %.1398.i = select i1 %.not437.i, i32 %.0397.i, i32 %i.tn ; 2 uses
  %.1360.i = select i1 %.not437.i, i8 %.0359.i, i8 %i.to ; 2 uses
  %i.tp = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tq = call i32 @archive_entry_atime_is_set(ptr noundef %i.tp) #23
  %.not438.i = icmp eq i32 %i.tq, 0               ; 2 uses
  %i.tr = add nuw nsw i32 %.1398.i, 7
  %i.ts = or disjoint i8 %.1360.i, 4
  %.2399.i = select i1 %.not438.i, i32 %.1398.i, i32 %i.tr ; 2 uses
  %.2361.i = select i1 %.not438.i, i8 %.1360.i, i8 %i.ts ; 2 uses
  %i.tt = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.tu = call i32 @archive_entry_ctime_is_set(ptr noundef %i.tt) #23
  %.not439.i = icmp eq i32 %i.tu, 0               ; 2 uses
  %i.tv = add nuw nsw i32 %.2399.i, 7
  %i.tw = or i8 %.2361.i, 8
  %.3400.i = select i1 %.not439.i, i32 %.2399.i, i32 %i.tv ; 5 uses
  %.3362.i = select i1 %.not439.i, i8 %.2361.i, i8 %i.tw ; 2 uses
  %i.tx = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.ty = sub nsw i32 %i.tx, %i.td
  %i.tz = icmp slt i32 %i.ty, %.3400.i
  br i1 %i.tz, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.ua = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef %.3400.i)
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.20.i = phi ptr [ %i.ua, %bb.dr ], [ %.19.i, %bb.dq ] ; 13 uses
  %.not440.i = icmp eq ptr %.20.i, null
  br i1 %.not440.i, label %bb.eb, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ub = getelementptr inbounds nuw i8, ptr %.20.i, i64 1
  store i8 84, ptr %i.ub, align 1, !tbaa !68
  %i.uc = getelementptr inbounds nuw i8, ptr %.20.i, i64 2
  store i8 70, ptr %i.uc, align 1, !tbaa !68
  %i.ud = trunc nuw nsw i32 %.3400.i to i8
  %i.ue = getelementptr inbounds nuw i8, ptr %.20.i, i64 3
  store i8 %i.ud, ptr %i.ue, align 1, !tbaa !68
  %i.uf = getelementptr inbounds nuw i8, ptr %.20.i, i64 4
  store i8 1, ptr %i.uf, align 1, !tbaa !68
  %i.ug = getelementptr inbounds nuw i8, ptr %.20.i, i64 5 ; 2 uses
  store i8 %.3362.i, ptr %i.ug, align 1, !tbaa !68
  %i.uh = zext nneg i8 %.3362.i to i32            ; 4 uses
  %i.ui = and i32 %i.uh, 1
  %.not441.i = icmp eq i32 %i.ui, 0
  br i1 %.not441.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.uj = getelementptr inbounds nuw i8, ptr %.20.i, i64 6
  %i.uk = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.ul = call i64 @archive_entry_birthtime(ptr noundef %i.uk) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.ul, ptr %i.d, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @tzset() #23
  %i.um = call ptr @localtime_r(ptr noundef nonnull %i.d, ptr noundef nonnull %9) #23 ; 0 uses
  %i.un = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !200
  %i.up = trunc i32 %i.uo to i8
  store i8 %i.up, ptr %i.uj, align 1, !tbaa !68
  %i.uq = getelementptr inbounds nuw i8, ptr %.20.i, i64 7
  %i.ur = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.us = load i32, ptr %i.ur, align 8, !tbaa !371
  %i.ut = trunc i32 %i.us to i8
  %i.uu = add i8 %i.ut, 1
  store i8 %i.uu, ptr %i.uq, align 1, !tbaa !68
  %i.uv = getelementptr inbounds nuw i8, ptr %.20.i, i64 8
  %i.uw = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !372
  %i.uy = trunc i32 %i.ux to i8
  store i8 %i.uy, ptr %i.uv, align 1, !tbaa !68
  %i.uz = getelementptr inbounds nuw i8, ptr %.20.i, i64 9
  %i.va = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.vb = load i32, ptr %i.va, align 8, !tbaa !373
  %i.vc = trunc i32 %i.vb to i8
  store i8 %i.vc, ptr %i.uz, align 1, !tbaa !68
  %i.vd = getelementptr inbounds nuw i8, ptr %.20.i, i64 10
  %i.ve = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !374
  %i.vg = trunc i32 %i.vf to i8
  store i8 %i.vg, ptr %i.vd, align 1, !tbaa !68
  %i.vh = getelementptr inbounds nuw i8, ptr %.20.i, i64 11
  %i.vi = load i32, ptr %9, align 8, !tbaa !201
  %i.vj = trunc i32 %i.vi to i8
  store i8 %i.vj, ptr %i.vh, align 1, !tbaa !68
  %i.vk = getelementptr inbounds nuw i8, ptr %.20.i, i64 12 ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.vm = load i64, ptr %i.vl, align 8, !tbaa !202
  %i.vn = sdiv i64 %i.vm, 900
  %i.vo = trunc i64 %i.vn to i8
  store i8 %i.vo, ptr %i.vk, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.21.i = phi ptr [ %i.vk, %bb.du ], [ %i.ug, %bb.dt ] ; 8 uses
  %i.vp = and i32 %i.uh, 2
  %.not442.i = icmp eq i32 %i.vp, 0
  br i1 %.not442.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.vq = getelementptr inbounds nuw i8, ptr %.21.i, i64 1
  %i.vr = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.vs = call i64 @archive_entry_mtime(ptr noundef %i.vr) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.vs, ptr %i.c, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @tzset() #23
  %i.vt = call ptr @localtime_r(ptr noundef nonnull %i.c, ptr noundef nonnull %8) #23 ; 0 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %8, i64 20
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !200
  %i.vw = trunc i32 %i.vv to i8
  store i8 %i.vw, ptr %i.vq, align 1, !tbaa !68
  %i.vx = getelementptr inbounds nuw i8, ptr %.21.i, i64 2
  %i.vy = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.vz = load i32, ptr %i.vy, align 8, !tbaa !371
  %i.wa = trunc i32 %i.vz to i8
  %i.wb = add i8 %i.wa, 1
  store i8 %i.wb, ptr %i.vx, align 1, !tbaa !68
  %i.wc = getelementptr inbounds nuw i8, ptr %.21.i, i64 3
  %i.wd = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !372
  %i.wf = trunc i32 %i.we to i8
  store i8 %i.wf, ptr %i.wc, align 1, !tbaa !68
  %i.wg = getelementptr inbounds nuw i8, ptr %.21.i, i64 4
  %i.wh = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !373
  %i.wj = trunc i32 %i.wi to i8
  store i8 %i.wj, ptr %i.wg, align 1, !tbaa !68
  %i.wk = getelementptr inbounds nuw i8, ptr %.21.i, i64 5
  %i.wl = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !374
  %i.wn = trunc i32 %i.wm to i8
  store i8 %i.wn, ptr %i.wk, align 1, !tbaa !68
  %i.wo = getelementptr inbounds nuw i8, ptr %.21.i, i64 6
  %i.wp = load i32, ptr %8, align 8, !tbaa !201
  %i.wq = trunc i32 %i.wp to i8
  store i8 %i.wq, ptr %i.wo, align 1, !tbaa !68
  %i.wr = getelementptr inbounds nuw i8, ptr %.21.i, i64 7 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.wt = load i64, ptr %i.ws, align 8, !tbaa !202
  %i.wu = sdiv i64 %i.wt, 900
  %i.wv = trunc i64 %i.wu to i8
  store i8 %i.wv, ptr %i.wr, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.22.i = phi ptr [ %i.wr, %bb.dw ], [ %.21.i, %bb.dv ] ; 8 uses
  %i.ww = and i32 %i.uh, 4
  %.not443.i = icmp eq i32 %i.ww, 0
  br i1 %.not443.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wx = getelementptr inbounds nuw i8, ptr %.22.i, i64 1
  %i.wy = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.wz = call i64 @archive_entry_atime(ptr noundef %i.wy) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.wz, ptr %i.b, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @tzset() #23
  %i.xa = call ptr @localtime_r(ptr noundef nonnull %i.b, ptr noundef nonnull %7) #23 ; 0 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.xc = load i32, ptr %i.xb, align 4, !tbaa !200
  %i.xd = trunc i32 %i.xc to i8
  store i8 %i.xd, ptr %i.wx, align 1, !tbaa !68
  %i.xe = getelementptr inbounds nuw i8, ptr %.22.i, i64 2
  %i.xf = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !371
  %i.xh = trunc i32 %i.xg to i8
  %i.xi = add i8 %i.xh, 1
  store i8 %i.xi, ptr %i.xe, align 1, !tbaa !68
  %i.xj = getelementptr inbounds nuw i8, ptr %.22.i, i64 3
  %i.xk = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.xl = load i32, ptr %i.xk, align 4, !tbaa !372
  %i.xm = trunc i32 %i.xl to i8
  store i8 %i.xm, ptr %i.xj, align 1, !tbaa !68
  %i.xn = getelementptr inbounds nuw i8, ptr %.22.i, i64 4
  %i.xo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.xp = load i32, ptr %i.xo, align 8, !tbaa !373
  %i.xq = trunc i32 %i.xp to i8
  store i8 %i.xq, ptr %i.xn, align 1, !tbaa !68
  %i.xr = getelementptr inbounds nuw i8, ptr %.22.i, i64 5
  %i.xs = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !374
  %i.xu = trunc i32 %i.xt to i8
  store i8 %i.xu, ptr %i.xr, align 1, !tbaa !68
  %i.xv = getelementptr inbounds nuw i8, ptr %.22.i, i64 6
  %i.xw = load i32, ptr %7, align 8, !tbaa !201
  %i.xx = trunc i32 %i.xw to i8
  store i8 %i.xx, ptr %i.xv, align 1, !tbaa !68
  %i.xy = getelementptr inbounds nuw i8, ptr %.22.i, i64 7 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ya = load i64, ptr %i.xz, align 8, !tbaa !202
  %i.yb = sdiv i64 %i.ya, 900
  %i.yc = trunc i64 %i.yb to i8
  store i8 %i.yc, ptr %i.xy, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %.23.i = phi ptr [ %i.xy, %bb.dy ], [ %.22.i, %bb.dx ] ; 8 uses
  %i.yd = and i32 %i.uh, 8
  %.not444.i = icmp eq i32 %i.yd, 0
  br i1 %.not444.i, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ye = getelementptr inbounds nuw i8, ptr %.23.i, i64 1
  %i.yf = load ptr, ptr %i.te, align 8, !tbaa !75
  %i.yg = call i64 @archive_entry_ctime(ptr noundef %i.yf) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.yg, ptr %i.a, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @tzset() #23
  %i.yh = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %6) #23 ; 0 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.yj = load i32, ptr %i.yi, align 4, !tbaa !200
  %i.yk = trunc i32 %i.yj to i8
  store i8 %i.yk, ptr %i.ye, align 1, !tbaa !68
  %i.yl = getelementptr inbounds nuw i8, ptr %.23.i, i64 2
  %i.ym = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !371
  %i.yo = trunc i32 %i.yn to i8
  %i.yp = add i8 %i.yo, 1
  store i8 %i.yp, ptr %i.yl, align 1, !tbaa !68
  %i.yq = getelementptr inbounds nuw i8, ptr %.23.i, i64 3
  %i.yr = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !372
  %i.yt = trunc i32 %i.ys to i8
  store i8 %i.yt, ptr %i.yq, align 1, !tbaa !68
  %i.yu = getelementptr inbounds nuw i8, ptr %.23.i, i64 4
  %i.yv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.yw = load i32, ptr %i.yv, align 8, !tbaa !373
  %i.yx = trunc i32 %i.yw to i8
  store i8 %i.yx, ptr %i.yu, align 1, !tbaa !68
  %i.yy = getelementptr inbounds nuw i8, ptr %.23.i, i64 5
  %i.yz = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.za = load i32, ptr %i.yz, align 4, !tbaa !374
  %i.zb = trunc i32 %i.za to i8
  store i8 %i.zb, ptr %i.yy, align 1, !tbaa !68
  %i.zc = getelementptr inbounds nuw i8, ptr %.23.i, i64 6
  %i.zd = load i32, ptr %6, align 8, !tbaa !201
  %i.ze = trunc i32 %i.zd to i8
  store i8 %i.ze, ptr %i.zc, align 1, !tbaa !68
  %i.zf = getelementptr inbounds nuw i8, ptr %.23.i, i64 7 ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.zh = load i64, ptr %i.zg, align 8, !tbaa !202
  %i.zi = sdiv i64 %i.zh, 900
  %i.zj = trunc i64 %i.zi to i8
  store i8 %i.zj, ptr %i.zf, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz, %bb.ds
  %.24.i = phi ptr [ %i.zf, %bb.ea ], [ %.23.i, %bb.dz ], [ null, %bb.ds ] ; 2 uses
  %i.zk = load i32, ptr %10, align 8, !tbaa !205  ; 2 uses
  %.not.i489.i = icmp eq i32 %i.zk, 0
  br i1 %.not.i489.i, label %extra_tell_used_size.exit491.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.zl = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 32
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !65
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 224
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !88 ; 2 uses
  %.not7.i490.i = icmp eq ptr %i.zp, null
  br i1 %.not7.i490.i, label %extra_tell_used_size.exit491.i, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 4 ; 2 uses
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !173
  %i.zs = add nsw i32 %i.zr, %.3400.i
  store i32 %i.zs, ptr %i.zq, align 4, !tbaa !173
  br label %extra_tell_used_size.exit491.i

extra_tell_used_size.exit491.i:                   ; preds = %bb.ed, %bb.ec, %bb.eb
  %i.zt = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.zu = add nsw i32 %i.zt, %.3400.i             ; 3 uses
  store i32 %i.zu, ptr %i.ev, align 8, !tbaa !209
  %i.zv = and i32 %i.gx, 64
  %.not445.i = icmp eq i32 %i.zv, 0
  br i1 %.not445.i, label %bb.el, label %bb.ee

bb.ee:                                            ; preds = %extra_tell_used_size.exit491.i
  %i.zw = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.zx = sub nsw i32 %i.zw, %i.zu
  %i.zy = icmp slt i32 %i.zx, 4
  br i1 %i.zy, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.zz = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef 4)
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %.26.i = phi ptr [ %i.zz, %bb.ef ], [ %.24.i, %bb.ee ] ; 3 uses
  %.not446.i = icmp eq ptr %.26.i, null
  br i1 %.not446.i, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aaa = getelementptr inbounds nuw i8, ptr %.26.i, i64 1
  %i.aab = getelementptr inbounds nuw i8, ptr %.26.i, i64 4
  store <4 x i8> <i8 82, i8 69, i8 4, i8 1>, ptr %i.aaa, align 1, !tbaa !68
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.27.i = phi ptr [ %i.aab, %bb.eh ], [ null, %bb.eg ]
  %i.aac = load i32, ptr %10, align 8, !tbaa !205 ; 2 uses
  %.not.i492.i = icmp eq i32 %i.aac, 0
  br i1 %.not.i492.i, label %extra_tell_used_size.exit494.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.aad = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 32
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !65
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 224
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !88 ; 2 uses
  %.not7.i493.i = icmp eq ptr %i.aah, null
  br i1 %.not7.i493.i, label %extra_tell_used_size.exit494.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 4 ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 4, !tbaa !173
  %i.aak = add nsw i32 %i.aaj, 4
  store i32 %i.aak, ptr %i.aai, align 4, !tbaa !173
  br label %extra_tell_used_size.exit494.i

extra_tell_used_size.exit494.i:                   ; preds = %bb.ek, %bb.ej, %bb.ei
  %i.aal = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.aam = add nsw i32 %i.aal, 4                  ; 2 uses
  store i32 %i.aam, ptr %i.ev, align 8, !tbaa !209
  br label %bb.el

bb.el:                                            ; preds = %extra_tell_used_size.exit494.i, %extra_tell_used_size.exit491.i
  %i.aan = phi i32 [ %i.aac, %extra_tell_used_size.exit494.i ], [ %i.zk, %extra_tell_used_size.exit491.i ]
  %i.aao = phi i32 [ %i.aam, %extra_tell_used_size.exit494.i ], [ %i.zu, %extra_tell_used_size.exit491.i ] ; 2 uses
  %.28.i = phi ptr [ %.27.i, %extra_tell_used_size.exit494.i ], [ %.24.i, %extra_tell_used_size.exit491.i ] ; 2 uses
  %i.aap = and i32 %i.gx, 32
  %.not447.i = icmp eq i32 %i.aap, 0
  br i1 %.not447.i, label %bb.et, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.aaq = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.aar = sub nsw i32 %i.aaq, %i.aao
  %i.aas = icmp slt i32 %i.aar, 12
  br i1 %i.aas, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.aat = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef 12)
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %.29.i = phi ptr [ %i.aat, %bb.en ], [ %.28.i, %bb.em ] ; 7 uses
  %.not448.i = icmp eq ptr %.29.i, null
  br i1 %.not448.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.aau = getelementptr inbounds nuw i8, ptr %.29.i, i64 1
  store <4 x i8> <i8 80, i8 76, i8 12, i8 1>, ptr %i.aau, align 1, !tbaa !68
  %i.aav = getelementptr inbounds nuw i8, ptr %.29.i, i64 5
  %i.aaw = getelementptr inbounds nuw i8, ptr %.0396517526.i, i64 156
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !171 ; 5 uses
  store i32 %i.aax, ptr %i.aav, align 1
  %i.aay = getelementptr inbounds nuw i8, ptr %.29.i, i64 9
  %i.aaz = lshr i32 %i.aax, 24
  %i.aba = trunc nuw i32 %i.aaz to i8
  store i8 %i.aba, ptr %i.aay, align 1, !tbaa !68
  %i.abb = lshr i32 %i.aax, 16
  %i.abc = trunc i32 %i.abb to i8
  %i.abd = getelementptr inbounds nuw i8, ptr %.29.i, i64 10
  store i8 %i.abc, ptr %i.abd, align 1, !tbaa !68
  %i.abe = lshr i32 %i.aax, 8
  %i.abf = trunc i32 %i.abe to i8
  %i.abg = getelementptr inbounds nuw i8, ptr %.29.i, i64 11
  store i8 %i.abf, ptr %i.abg, align 1, !tbaa !68
  %i.abh = trunc i32 %i.aax to i8
  %i.abi = getelementptr inbounds nuw i8, ptr %.29.i, i64 12 ; 2 uses
  store i8 %i.abh, ptr %i.abi, align 1, !tbaa !68
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %.30.i = phi ptr [ %i.abi, %bb.ep ], [ null, %bb.eo ]
  %i.abj = load i32, ptr %10, align 8, !tbaa !205 ; 2 uses
  %.not.i495.i = icmp eq i32 %i.abj, 0
  br i1 %.not.i495.i, label %extra_tell_used_size.exit497.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abk = load ptr, ptr %i.es, align 8, !tbaa !206
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 32
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !65
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 224
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !88 ; 2 uses
  %.not7.i496.i = icmp eq ptr %i.abo, null
  br i1 %.not7.i496.i, label %extra_tell_used_size.exit497.i, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 4 ; 2 uses
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !173
  %i.abr = add nsw i32 %i.abq, 12
  store i32 %i.abr, ptr %i.abp, align 4, !tbaa !173
  br label %extra_tell_used_size.exit497.i

extra_tell_used_size.exit497.i:                   ; preds = %bb.es, %bb.er, %bb.eq
  %i.abs = load i32, ptr %i.ev, align 8, !tbaa !209
  %i.abt = add nsw i32 %i.abs, 12                 ; 2 uses
  store i32 %i.abt, ptr %i.ev, align 8, !tbaa !209
  br label %bb.et

bb.et:                                            ; preds = %extra_tell_used_size.exit497.i, %bb.el
  %i.abu = phi i32 [ %i.abj, %extra_tell_used_size.exit497.i ], [ %i.aan, %bb.el ]
  %i.abv = phi i32 [ %i.abt, %extra_tell_used_size.exit497.i ], [ %i.aao, %bb.el ] ; 2 uses
  %.31.i = phi ptr [ %.30.i, %extra_tell_used_size.exit497.i ], [ %.28.i, %bb.el ] ; 2 uses
  %i.abw = and i32 %i.gx, 16
  %.not449.i = icmp eq i32 %i.abw, 0
  br i1 %.not449.i, label %bb.fb, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.abx = load i32, ptr %i.ew, align 8, !tbaa !210
  %i.aby = sub nsw i32 %i.abx, %i.abv
  %i.abz = icmp slt i32 %i.aby, 12
  br i1 %i.abz, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.aca = call fastcc ptr @extra_next_record(ptr noundef %10, i32 noundef 12)
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.32.i = phi ptr [ %i.aca, %bb.ev ], [ %.31.i, %bb.eu ] ; 7 uses
  %.not450.i = icmp eq ptr %.32.i, null
  br i1 %.not450.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.acb = getelementptr inbounds nuw i8, ptr %.32.i, i64 1
  store <4 x i8> <i8 67, i8 76, i8 12, i8 1>, ptr %i.acb, align 1, !tbaa !68
  %i.acc = getelementptr inbounds nuw i8, ptr %.32.i, i64 5
  %i.acd = getelementptr inbounds nuw i8, ptr %.0405514527.i, i64 200
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !132
  %i.acf = getelementptr inbounds nuw i8, ptr %i.ace, i64 156
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !171 ; 5 uses
  store i32 %i.acg, ptr %i.acc, align 1
  %i.ach = getelementptr inbounds nuw i8, ptr %.32.i, i64 9
  %i.aci = lshr i32 %i.acg, 24
end_hunk_1
begin_hunk_2_@set_str_d_characters_bp:bb.a
._crit_edge.i19:                                  ; preds = %bb.j, %bb.g
  %.019.lcssa.i20 = phi i64 [ %i.ad, %bb.g ], [ %i.at, %bb.j ]
  %.017.lcssa.i21 = phi ptr [ %i.aa, %bb.g ], [ %i.as, %bb.j ]
  %.lcssa.i22 = phi i1 [ %i.ah, %bb.g ], [ %i.aw, %bb.j ]
  br i1 %.lcssa.i22, label %bb.k, label %set_str.exit

bb.k:                                             ; preds = %._crit_edge.i19
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.017.lcssa.i21, i8 32, i64 %.019.lcssa.i20, i1 false)
  br label %set_str.exit

bb.l:                                             ; preds = %bb.a, %bb.a
  %i.ay = zext nneg i32 %2 to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %reass.sub = sub nsw i32 %3, %2
  %i.ba = add nsw i32 %reass.sub, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = tail call fastcc i32 @set_str_utf16be(ptr noundef %0, ptr noundef nonnull %i.az, ptr noundef %4, i64 noundef %i.bb, i32 noundef %5)
  br label %set_str.exit

set_str.exit:                                     ; preds = %bb.k, %._crit_edge.i19, %bb.f, %._crit_edge.i, %bb.a, %bb.l
  %.0 = phi i32 [ %i.bc, %bb.l ], [ -30, %bb.a ], [ 0, %bb.f ], [ 0, %._crit_edge.i ], [ 0, %._crit_edge.i19 ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @set_file_identifier(ptr nofree noundef captures(none) %0, i32 noundef range(i32 319, 778) %1, i32 noundef range(i32 446, 814) %2, i32 noundef range(i32 0, 3) %3, ptr noundef %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [256 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !89
  %i.e = icmp ne i64 %i.d, 0                      ; 2 uses
  %i.f = icmp ne i32 %8, 0
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %6, align 8, !tbaa !162    ; 4 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !68
  %.not = icmp eq i8 %i.h, 95
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %9, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.g, i32 noundef %3)
  br label %bb.w

bb.e:                                             ; preds = %bb.c
  %i.k = tail call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.g, i32 noundef %3)
  br label %bb.w

bb.f:                                             ; preds = %bb.a
  br i1 %i.e, label %..thread_crit_edge, label %bb.t

..thread_crit_edge:                               ; preds = %bb.f
  %.pre = load ptr, ptr %6, align 8, !tbaa !162
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.l = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.g, %bb.b ]
  %spec.select.idx = zext nneg i32 %8 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %i.l, i64 %spec.select.idx ; 2 uses
  %i.m = load ptr, ptr %5, align 8, !tbaa !129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.l, %.thread
  %.013.i = phi ptr [ %spec.select, %.thread ], [ %spec.select.i, %bb.l ] ; 5 uses
  %.012.i = phi ptr [ %i.m, %.thread ], [ %i.ab, %bb.l ]
  %i.n = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.013.i, i32 noundef 47) #25 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.013.i) #25 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.m, label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %.013.i to i64
  %i.t = sub i64 %i.r, %i.s
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i = phi i64 [ %i.p, %bb.h ], [ %i.t, %bb.i ] ; 5 uses
  %i.u = icmp ugt i64 %.0.i.i, 255
  br i1 %i.u, label %get_path_component.exit.thread18.i, label %get_path_component.exit.i

get_path_component.exit.i:                        ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr nonnull align 1 %.013.i, i64 %.0.i.i, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0.i.i
  store i8 0, ptr %i.v, align 1, !tbaa !68
  %i.w = icmp eq i64 %.0.i.i, 0
  br i1 %i.w, label %bb.m, label %get_path_component.exit.thread18.i

get_path_component.exit.thread18.i:               ; preds = %get_path_component.exit.i, %bb.j
  %.013.i20.i = phi i64 [ %.0.i.i, %get_path_component.exit.i ], [ -1, %bb.j ]
  %i.x = getelementptr inbounds i8, ptr %.013.i, i64 %.013.i20.i ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !68
  %i.z = icmp eq i8 %i.y, 47
  %spec.select.idx.i = zext i1 %i.z to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %i.x, i64 %spec.select.idx.i ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i, i64 64
  %i.ab = call ptr @__archive_rb_tree_find_node(ptr noundef nonnull %i.aa, ptr noundef nonnull %i.a) #23 ; 6 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.m, label %bb.k

bb.k:                                             ; preds = %get_path_component.exit.thread18.i
  %i.ad = load i8, ptr %spec.select.i, align 1, !tbaa !68
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 232
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = and i8 %i.ag, 2
  %.not.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i, label %bb.m, label %bb.g

bb.m:                                             ; preds = %get_path_component.exit.i, %get_path_component.exit.thread18.i, %bb.l, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %4, i32 noundef -1, ptr noundef nonnull @.str.88, ptr noundef %7, ptr noundef %spec.select) #23
  br label %bb.w

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !191
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 180
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !192
  %i.am = add nsw i32 %i.al, %i.aj
  %i.an = sext i32 %i.am to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !169
  %i.aq = icmp eq i32 %i.ap, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !140 ; 2 uses
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %spec.store.select2 = call i64 @llvm.umin.i64(i64 %i.an, i64 255) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.as, i64 %spec.store.select2, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.store.select2
  store i8 0, ptr %i.at, align 1, !tbaa !68
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.an, i64 254) ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 1 %i.as, i64 %spec.store.select, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.store.select ; 2 uses
  store i8 0, ptr %i.au, align 1, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store i8 0, ptr %i.av, align 1, !tbaa !68
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.064 = phi i32 [ 3, %bb.p ], [ %3, %bb.o ]     ; 2 uses
  %i.aw = icmp eq i32 %9, 0
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i32 noundef %.064)
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.ay = call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %i.b, i32 noundef %.064)
  br label %bb.w

bb.t:                                             ; preds = %bb.f
  %i.az = icmp eq i32 %9, 0
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ba = tail call fastcc i32 @set_str_a_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %3)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bb = tail call fastcc i32 @set_str_d_characters_bp(ptr noundef %4, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef null, i32 noundef %3)
  br label %bb.w

bb.w:                                             ; preds = %bb.e, %bb.d, %bb.u, %bb.v, %bb.r, %bb.s, %bb.m
  %.063 = phi i32 [ -30, %bb.m ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.ax, %bb.r ], [ %i.ay, %bb.s ], [ %i.ba, %bb.u ], [ %i.bb, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret i32 %.063
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_date_time(ptr nofree noundef writeonly captures(none) initializes((0, 17)) %0, i64 noundef %1) unnamed_addr #0 {
set_digit.exit:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %struct.tm, align 8                 ; 8 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  tail call void @tzset() #23
  %i.b = call ptr @localtime_r(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #23 ; 0 uses
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %4 = load i32, ptr %2, align 8, !tbaa !201      ; 2 uses
  %5 = sdiv i32 %4, 10
  %i.e = load i32, ptr %3, align 4, !tbaa !200
  %i.f = add nsw i32 %i.e, 1900
  %i.g = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %i.h = shufflevector <4 x i32> %i.g, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.i = sdiv <4 x i32> %i.h, <i32 1000, i32 100, i32 10, i32 1>
  %i.j = load <2 x i32>, ptr %i.c, align 4, !tbaa !90
  %i.k = shufflevector <2 x i32> %i.j, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 0>
  %i.l = add nsw <4 x i32> %i.k, <i32 1, i32 1, i32 0, i32 0>
  %i.m = sdiv <4 x i32> %i.l, <i32 10, i32 1, i32 10, i32 1>
  %i.n = shufflevector <4 x i32> %i.i, <4 x i32> %i.m, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.o = srem <8 x i32> %i.n, splat (i32 10)
  %i.p = load <2 x i32>, ptr %i.d, align 4, !tbaa !90 ; 2 uses
  %6 = sdiv <2 x i32> %i.p, splat (i32 10)
  %7 = shufflevector <2 x i32> %6, <2 x i32> %i.p, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %8 = srem <4 x i32> %7, splat (i32 10)
  %9 = trunc nsw <4 x i32> %8 to <4 x i8>
  %10 = insertelement <2 x i32> poison, i32 %5, i64 0
  %11 = insertelement <2 x i32> %10, i32 %4, i64 1
  %12 = srem <2 x i32> %11, splat (i32 10)
  %13 = trunc nsw <2 x i32> %12 to <2 x i8>
  %14 = shufflevector <8 x i32> %i.o, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = trunc <16 x i32> %14 to <16 x i8>
  %16 = shufflevector <16 x i8> %15, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 30, i32 31>
  %17 = shufflevector <4 x i8> %9, <4 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %18 = shufflevector <16 x i8> %16, <16 x i8> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 14, i32 15>
  %19 = shufflevector <2 x i8> %13, <2 x i8> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %20 = shufflevector <16 x i8> %18, <16 x i8> %19, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 14, i32 15>
  %21 = add nsw <16 x i8> %20, splat (i8 48)
  store <16 x i8> %21, ptr %0, align 1, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !202
  %i.t = sdiv i64 %i.s, 900
  %i.u = trunc i64 %i.t to i8
  store i8 %i.u, ptr %i.q, align 1, !tbaa !68
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @uname(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -30, 1) i32 @set_str_utf16be(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 -736, 806) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  %spec.store.select = select i1 %i.a, ptr @.str.87, ptr %2 ; 5 uses
  %i.b = and i64 %3, 1
  %.not = icmp eq i64 %i.b, 0
  %i.c = and i64 %3, -2                           ; 4 uses
  %i.d = icmp eq i32 %4, 2
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i16, ptr %spec.store.select, align 2, !tbaa !198
  %.not5462 = icmp eq i16 %i.e, 0
  br i1 %.not5462, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !69   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #25
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !122
  %i.l = tail call i32 @archive_strncpy_l(ptr noundef nonnull %i.h, ptr noundef nonnull %spec.store.select, i64 noundef %i.i, ptr noundef %i.k) #23
  %.not55 = icmp eq i32 %i.l, 0
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__errno_location() #26
  %i.n = load i32, ptr %i.m, align 4, !tbaa !90
  %i.o = icmp eq i32 %i.n, 12
  br i1 %i.o, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.48) #23
  br label %bb.m

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.q = load i64, ptr %i.p, align 8, !tbaa !385
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.c) ; 2 uses
  %i.r = load ptr, ptr %i.h, align 8, !tbaa !386
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %i.r, i64 %spec.select, i1 false)
  br label %bb.e

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.064 = phi ptr [ %i.s, %.lr.ph ], [ %spec.store.select, %.preheader ]
  %.263 = phi i64 [ %i.t, %.lr.ph ], [ 0, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 2 uses
  %i.t = add i64 %.263, 2                         ; 2 uses
  %i.u = load i16, ptr %i.s, align 2, !tbaa !198
  %.not54 = icmp eq i16 %i.u, 0
  br i1 %.not54, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !380

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.c)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.2.lcssa = phi i64 [ 0, %.preheader ], [ %i.v, %._crit_edge.loopexit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull align 2 %spec.store.select, i64 %.2.lcssa, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.4 = phi i64 [ %spec.select, %bb.d ], [ %.2.lcssa, %._crit_edge ] ; 4 uses
  %.not78 = icmp eq i64 %.4, 0
  br i1 %.not78, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %bb.e
  %i.w = add i64 %.4, -1                          ; 2 uses
  %i.x = lshr i64 %i.w, 1                         ; 2 uses
  %i.y = add nuw i64 %i.x, 1                      ; 2 uses
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %.lr.ph68.epil.preheader, label %.lr.ph68.preheader.new

.lr.ph68.preheader.new:                           ; preds = %.lr.ph68.preheader
  %unroll_iter = and i64 %i.y, -2
  br label %.lr.ph68

.lr.ph68:                                         ; preds = %joliet_allowed_char.exit.1, %.lr.ph68.preheader.new
  %.04965 = phi ptr [ %1, %.lr.ph68.preheader.new ], [ %i.ar, %joliet_allowed_char.exit.1 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph68.preheader.new ], [ %niter.next.1, %joliet_allowed_char.exit.1 ]
  %i.aa = load i8, ptr %.04965, align 1, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %.04965, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !68
  %i.ad = zext i8 %i.aa to i32
  %i.ae = shl nuw nsw i32 %i.ad, 8
  %i.af = zext i8 %i.ac to i32
  %i.ag = or disjoint i32 %i.ae, %i.af            ; 2 uses
  %i.ah = icmp samesign ult i32 %i.ag, 32
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph68
  %trunc.i = trunc nuw i32 %i.ag to i16
  switch i16 %trunc.i, label %joliet_allowed_char.exit [
    i16 42, label %bb.g
    i16 47, label %bb.g
    i16 58, label %bb.g
    i16 59, label %bb.g
    i16 63, label %bb.g
    i16 92, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph68, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  store i8 0, ptr %.04965, align 1, !tbaa !68
  store i8 95, ptr %i.ab, align 1, !tbaa !68
  br label %joliet_allowed_char.exit

joliet_allowed_char.exit:                         ; preds = %bb.f, %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.04965, i64 2 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !68
  %i.ak = getelementptr inbounds nuw i8, ptr %.04965, i64 3 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !68
  %i.am = zext i8 %i.aj to i32
  %i.an = shl nuw nsw i32 %i.am, 8
  %i.ao = zext i8 %i.al to i32
  %i.ap = or disjoint i32 %i.an, %i.ao            ; 2 uses
  %i.aq = icmp samesign ult i32 %i.ap, 32
  br i1 %i.aq, label %bb.i, label %bb.h

bb.h:                                             ; preds = %joliet_allowed_char.exit
  %trunc.i.1 = trunc nuw i32 %i.ap to i16
  switch i16 %trunc.i.1, label %joliet_allowed_char.exit.1 [
    i16 42, label %bb.i
    i16 47, label %bb.i
    i16 58, label %bb.i
    i16 59, label %bb.i
    i16 63, label %bb.i
    i16 92, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %bb.h, %joliet_allowed_char.exit
  store i8 0, ptr %i.ai, align 1, !tbaa !68
  store i8 95, ptr %i.ak, align 1, !tbaa !68
  br label %joliet_allowed_char.exit.1

joliet_allowed_char.exit.1:                       ; preds = %bb.i, %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.04965, i64 4 ; 3 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge69.loopexit.unr-lcssa, label %.lr.ph68, !llvm.loop !381

._crit_edge69.loopexit.unr-lcssa:                 ; preds = %joliet_allowed_char.exit.1
  %i.as = and i64 %i.w, 2
  %lcmp.mod.not.not = icmp eq i64 %i.as, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph68.epil.preheader, label %._crit_edge69

.lr.ph68.epil.preheader:                          ; preds = %._crit_edge69.loopexit.unr-lcssa, %.lr.ph68.preheader
  %.04965.epil.init = phi ptr [ %1, %.lr.ph68.preheader ], [ %i.ar, %._crit_edge69.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod16 = trunc i64 %i.y to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.at = load i8, ptr %.04965.epil.init, align 1, !tbaa !68
  %i.au = getelementptr inbounds nuw i8, ptr %.04965.epil.init, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !68
  %i.aw = zext i8 %i.at to i32
  %i.ax = shl nuw nsw i32 %i.aw, 8
  %i.ay = zext i8 %i.av to i32
  %i.az = or disjoint i32 %i.ax, %i.ay            ; 2 uses
  %i.ba = icmp samesign ult i32 %i.az, 32
  br i1 %i.ba, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph68.epil.preheader
  %trunc.i.epil = trunc nuw i32 %i.az to i16
  switch i16 %trunc.i.epil, label %joliet_allowed_char.exit.epil [
    i16 42, label %bb.k
    i16 47, label %bb.k
    i16 58, label %bb.k
    i16 59, label %bb.k
    i16 63, label %bb.k
    i16 92, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %.lr.ph68.epil.preheader
  store i8 0, ptr %.04965.epil.init, align 1, !tbaa !68
  store i8 95, ptr %i.au, align 1, !tbaa !68
  br label %joliet_allowed_char.exit.epil

joliet_allowed_char.exit.epil:                    ; preds = %bb.k, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.04965.epil.init, i64 2
  br label %._crit_edge69

._crit_edge69:                                    ; preds = %joliet_allowed_char.exit.epil, %._crit_edge69.loopexit.unr-lcssa, %bb.e
  %.049.lcssa = phi ptr [ %1, %bb.e ], [ %i.ar, %._crit_edge69.loopexit.unr-lcssa ], [ %i.bb, %joliet_allowed_char.exit.epil ] ; 7 uses
  %i.bc = sub i64 %i.c, %.4                       ; 4 uses
end_hunk_2
begin_hunk_3_@llvm.assume
!1 = distinct !{!1, !79}
!2 = distinct !{!2, !79}
!3 = distinct !{!3, !79}
!4 = distinct !{!4, !79}
!5 = distinct !{!5, !79}
!6 = distinct !{!6, !79}
!7 = distinct !{!7, !79}
!8 = distinct !{!8, !79}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!13 = !{!"Simple C/C++ TBAA"}
!14 = !{!"omnipotent char", !13, i64 0}
!15 = !{!"int", !14, i64 0}
!16 = !{!"__libc_errno", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"any pointer", !14, i64 0}
!19 = !{!"p1 _ZTS14archive_vtable", !18, i64 0}
!20 = !{!"p1 omnipotent char", !18, i64 0}
!21 = !{!"long", !14, i64 0}
!22 = !{!"archive_string", !20, i64 0, !21, i64 8, !21, i64 16}
!23 = !{!"p1 _ZTS19archive_string_conv", !18, i64 0}
!24 = !{!"archive", !15, i64 0, !15, i64 4, !19, i64 8, !15, i64 16, !20, i64 24, !15, i64 32, !15, i64 36, !20, i64 40, !22, i64 48, !20, i64 72, !15, i64 80, !15, i64 84, !23, i64 88, !20, i64 96, !21, i64 104, !21, i64 112, !21, i64 120, !14, i64 128, !21, i64 136}
!25 = !{!"p1 _ZTS20archive_write_filter", !18, i64 0}
!26 = !{!"archive_write", !24, i64 0, !15, i64 144, !21, i64 152, !21, i64 160, !20, i64 168, !21, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !18, i64 208, !18, i64 216, !15, i64 224, !15, i64 228, !25, i64 232, !25, i64 240, !18, i64 248, !20, i64 256, !18, i64 264, !18, i64 272, !18, i64 280, !18, i64 288, !18, i64 296, !18, i64 304, !18, i64 312, !20, i64 320, !18, i64 328, !18, i64 336}
!27 = !{!"p1 _ZTS7isofile", !18, i64 0}
!28 = !{!"p1 _ZTS6isoent", !18, i64 0}
!29 = !{!"any p2 pointer", !18, i64 0}
!30 = !{!"p2 _ZTS7isofile", !29, i64 0}
!31 = !{!"", !27, i64 0, !30, i64 8}
!32 = !{!"p1 _ZTS15archive_rb_node", !18, i64 0}
!33 = !{!"p1 _ZTS19archive_rb_tree_ops", !18, i64 0}
!34 = !{!"archive_rb_tree", !32, i64 0, !33, i64 8}
!35 = !{!"p1 _ZTS10path_table", !18, i64 0}
!36 = !{!"vdd", !28, i64 0, !15, i64 8, !35, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44}
!37 = !{!"p1 int", !18, i64 0}
!38 = !{!"p1 _ZTS14internal_state", !18, i64 0}
!39 = !{!"z_stream_s", !20, i64 0, !15, i64 8, !21, i64 16, !20, i64 24, !15, i64 32, !21, i64 40, !20, i64 48, !38, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !15, i64 88, !21, i64 96, !21, i64 104}
!40 = !{!"", !15, i64 0, !15, i64 0, !15, i64 0, !14, i64 1, !15, i64 68, !37, i64 72, !21, i64 80, !15, i64 88, !15, i64 92, !21, i64 96, !21, i64 104, !39, i64 112, !15, i64 224, !21, i64 232, !15, i64 240}
!41 = !{!"short", !14, i64 0}
!42 = !{!"", !22, i64 0, !28, i64 24, !22, i64 32, !28, i64 56, !14, i64 64, !22, i64 72, !14, i64 96, !14, i64 97, !41, i64 98, !41, i64 100}
!43 = !{!"iso_option", !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 1, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 2, !15, i64 3, !15, i64 3}
!44 = !{!"iso9660", !21, i64 0, !15, i64 8, !27, i64 16, !28, i64 24, !22, i64 32, !21, i64 56, !15, i64 64, !22, i64 72, !22, i64 96, !23, i64 120, !23, i64 128, !31, i64 136, !31, i64 152, !34, i64 168, !36, i64 184, !36, i64 232, !15, i64 280, !15, i64 284, !15, i64 288, !22, i64 296, !22, i64 320, !22, i64 344, !22, i64 368, !22, i64 392, !22, i64 416, !22, i64 440, !15, i64 464, !40, i64 472, !28, i64 720, !15, i64 728, !14, i64 732, !21, i64 66272, !15, i64 66280, !21, i64 66288, !21, i64 66296, !21, i64 66304, !42, i64 66312, !43, i64 66416}
!45 = !{!44, !15, i64 8}
!46 = !{!44, !30, i64 144}
!47 = !{!44, !30, i64 160}
!48 = !{!44, !28, i64 720}
!49 = !{!44, !15, i64 728}
!50 = !{!44, !21, i64 66272}
!51 = !{!44, !15, i64 66280}
!52 = !{!44, !41, i64 66410}
!53 = !{!44, !41, i64 66412}
!54 = !{!44, !15, i64 696}
!55 = !{!44, !15, i64 712}
!56 = !{!44, !28, i64 184}
!57 = !{!"archive_rb_node", !14, i64 0, !21, i64 16}
!58 = !{!"p2 _ZTS6isoent", !29, i64 0}
!59 = !{!"", !28, i64 0, !58, i64 8, !15, i64 16}
!60 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!61 = !{!"p1 _ZTS8extr_rec", !18, i64 0}
!62 = !{!"p2 _ZTS8extr_rec", !29, i64 0}
!63 = !{!"", !61, i64 0, !62, i64 8, !61, i64 16}
!64 = !{!"isoent", !57, i64 0, !27, i64 24, !28, i64 32, !59, i64 40, !34, i64 64, !59, i64 80, !58, i64 104, !28, i64 112, !28, i64 120, !28, i64 128, !15, i64 136, !60, i64 140, !15, i64 156, !15, i64 160, !20, i64 168, !15, i64 176, !15, i64 180, !15, i64 184, !15, i64 188, !28, i64 192, !28, i64 200, !63, i64 208, !15, i64 232, !15, i64 232}
!65 = !{!64, !28, i64 32}
!66 = !{!44, !28, i64 24}
!67 = !{!44, !20, i64 32}
!68 = !{!14, !14, i64 0}
!69 = !{!26, !18, i64 248}
!70 = !{!"p1 _ZTS13archive_entry", !18, i64 0}
!71 = !{!"p1 _ZTS7content", !18, i64 0}
!72 = !{!"content", !21, i64 0, !21, i64 8, !15, i64 16, !15, i64 20, !71, i64 24}
!73 = !{!"", !14, i64 0, !14, i64 1, !15, i64 4}
!74 = !{!"isofile", !27, i64 0, !27, i64 8, !27, i64 16, !27, i64 24, !70, i64 32, !22, i64 40, !22, i64 64, !22, i64 88, !22, i64 112, !15, i64 136, !72, i64 144, !71, i64 176, !15, i64 184, !15, i64 188, !73, i64 192}
!75 = !{!74, !70, i64 32}
!76 = !{!74, !71, i64 176}
!77 = !{!74, !71, i64 168}
!78 = !{!72, !71, i64 24}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!74, !27, i64 0}
!81 = !{!27, !27, i64 0}
!82 = !{!64, !27, i64 24}
!83 = !{!64, !58, i64 48}
!84 = !{!64, !28, i64 80}
!85 = !{!64, !58, i64 88}
!86 = !{!64, !61, i64 208}
!87 = !{!64, !62, i64 216}
!88 = !{!64, !61, i64 224}
!89 = !{!22, !21, i64 8}
!90 = !{!15, !15, i64 0}
!91 = !{!44, !27, i64 16}
!92 = !{!44, !21, i64 56}
!93 = !{!44, !15, i64 64}
!94 = !{!74, !21, i64 48}
!95 = !{!74, !21, i64 72}
!96 = !{!28, !28, i64 0}
!97 = !{!74, !15, i64 136}
!98 = !{!44, !21, i64 66288}
!99 = !{!74, !21, i64 144}
!100 = !{!74, !21, i64 152}
!101 = !{!44, !21, i64 568}
!102 = !{!74, !15, i64 196}
!103 = !{!44, !15, i64 560}
!104 = !{!44, !37, i64 544}
!105 = !{!72, !21, i64 8}
!106 = !{!72, !15, i64 16}
!107 = !{!44, !20, i64 66344}
!108 = !{!44, !28, i64 66368}
!109 = !{!74, !14, i64 192}
!110 = !{!74, !14, i64 193}
!111 = !{!44, !20, i64 66312}
!112 = !{!44, !21, i64 0}
!113 = !{!44, !28, i64 66336}
!114 = !{!44, !14, i64 66408}
!115 = !{!44, !14, i64 66409}
!116 = !{!44, !21, i64 66392}
!117 = !{!64, !28, i64 112}
!118 = !{!64, !15, i64 56}
!119 = !{!64, !28, i64 120}
!120 = !{!64, !15, i64 96}
!121 = !{!64, !28, i64 40}
!122 = !{!44, !23, i64 120}
!123 = !{!44, !23, i64 128}
!124 = !{!36, !15, i64 24}
!125 = !{!36, !35, i64 16}
!126 = !{!"path_table", !28, i64 0, !58, i64 8, !58, i64 16, !15, i64 24}
!127 = !{!126, !58, i64 16}
!128 = !{!126, !15, i64 24}
!129 = !{!36, !28, i64 0}
!130 = !{!44, !35, i64 200}
!131 = !{!64, !28, i64 192}
!132 = !{!64, !28, i64 200}
!133 = !{!"hardlink", !57, i64 0, !15, i64 24, !31, i64 32}
!134 = !{!133, !27, i64 32}
!135 = !{!133, !15, i64 24}
!136 = !{!74, !27, i64 16}
!137 = !{!74, !27, i64 24}
!138 = !{!44, !15, i64 208}
!139 = !{!44, !15, i64 256}
!140 = !{!64, !20, i64 168}
!141 = !{!64, !15, i64 184}
!142 = !{!36, !15, i64 32}
!143 = !{!36, !15, i64 28}
!144 = !{!44, !15, i64 464}
!145 = !{!74, !15, i64 164}
!146 = !{!74, !15, i64 160}
!147 = !{!64, !58, i64 104}
!148 = !{!74, !15, i64 184}
!149 = !{!72, !15, i64 20}
!150 = !{!"llvm.loop.isvectorized", i32 1}
!151 = !{!"llvm.loop.unroll.runtime.disable"}
!152 = !{!44, !15, i64 280}
!153 = !{!44, !15, i64 284}
!154 = !{!74, !21, i64 96}
!155 = !{!21, !21, i64 0}
!156 = !{!20, !20, i64 0}
!157 = !{!74, !20, i64 88}
!158 = !{!74, !20, i64 40}
!159 = !{!74, !20, i64 64}
!160 = !{!"extr_rec", !15, i64 0, !15, i64 4, !14, i64 8, !61, i64 2056}
!161 = !{!160, !61, i64 2056}
!162 = !{!22, !20, i64 0}
!163 = !{!44, !15, i64 540}
!164 = !{!44, !15, i64 564}
!165 = !{!44, !21, i64 704}
!166 = !{!44, !21, i64 576}
!167 = !{!44, !21, i64 66296}
!168 = !{!72, !21, i64 0}
!169 = !{!36, !15, i64 8}
!170 = !{!64, !15, i64 160}
!171 = !{!64, !15, i64 156}
!172 = !{!160, !15, i64 0}
!173 = !{!160, !15, i64 4}
!174 = !{!44, !20, i64 296}
!175 = !{!64, !15, i64 136}
!176 = !{!61, !61, i64 0}
!177 = !{!"p1 _ZTS6idrent", !18, i64 0}
!178 = !{!"p2 _ZTS6idrent", !29, i64 0}
!179 = !{!"", !177, i64 0, !178, i64 8}
!180 = !{!"idr", !177, i64 0, !34, i64 8, !179, i64 24, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !14, i64 56}
!181 = !{!180, !177, i64 0}
!182 = !{!180, !15, i64 40}
!183 = !{!"idrent", !57, i64 0, !177, i64 24, !177, i64 32, !28, i64 40, !15, i64 48, !15, i64 52, !15, i64 56}
!184 = !{!183, !28, i64 40}
!185 = !{!180, !177, i64 24}
!186 = !{!180, !178, i64 32}
!187 = !{!180, !15, i64 44}
!188 = !{!180, !15, i64 48}
!189 = !{!180, !15, i64 52}
!190 = !{!64, !15, i64 188}
!191 = !{!64, !15, i64 176}
!192 = !{!64, !15, i64 180}
!193 = !{!183, !15, i64 48}
!194 = !{!183, !15, i64 52}
!195 = !{!183, !15, i64 56}
!196 = !{!183, !177, i64 32}
!197 = !{!177, !177, i64 0}
!198 = !{!41, !41, i64 0}
!199 = !{!"tm", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !21, i64 40, !20, i64 48}
!200 = !{!199, !15, i64 20}
!201 = !{!199, !15, i64 0}
!202 = !{!199, !21, i64 40}
!203 = !{!"ctl_extr_rec", !15, i64 0, !20, i64 8, !28, i64 16, !20, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48}
!204 = !{!203, !20, i64 8}
!205 = !{!203, !15, i64 0}
!206 = !{!203, !28, i64 16}
!207 = !{!203, !20, i64 24}
!208 = !{!203, !15, i64 36}
!209 = !{!203, !15, i64 32}
!210 = !{!203, !15, i64 40}
!211 = !{!203, !15, i64 48}
!212 = !{!203, !15, i64 44}
!213 = !{!26, !18, i64 312}
!214 = !{!44, !15, i64 240}
!215 = !{!26, !20, i64 256}
!216 = !{!26, !18, i64 272}
!217 = !{!26, !18, i64 288}
!218 = !{!26, !18, i64 296}
!219 = !{!26, !18, i64 280}
!220 = !{!26, !18, i64 304}
!221 = !{!26, !15, i64 16}
!222 = !{!26, !20, i64 24}
!223 = distinct !{!223, !79}
!224 = !{!44, !21, i64 66352}
!225 = distinct !{!225, !79}
!226 = !{!26, !21, i64 176}
!227 = !{!26, !20, i64 168}
!228 = !{!74, !27, i64 8}
!229 = distinct !{!229, !79}
!230 = distinct !{!230, !79}
!231 = distinct !{!231, !79}
!232 = distinct !{!232, !79}
!233 = distinct !{!233, !79}
!234 = distinct !{!234, !79}
!235 = distinct !{!235, !79}
!236 = distinct !{!236, !79}
!237 = distinct !{!237, !79}
!238 = distinct !{!238, !79}
!239 = distinct !{!239, !79}
!240 = distinct !{!240, !79}
!241 = distinct !{!241, !79}
!242 = distinct !{!242, !79}
!243 = distinct !{!243, !79}
!244 = distinct !{!244, !79}
!245 = distinct !{!245, !79}
!246 = distinct !{!246, !79}
!247 = distinct !{!247, !79}
!248 = distinct !{!248, !79}
!249 = distinct !{!249, !79}
!250 = distinct !{!250, !79, !150, !151}
!251 = distinct !{!251, !79, !151, !150}
!252 = distinct !{!252, !79}
!253 = !{!74, !15, i64 188}
!254 = !{!"zisofs_extract", !15, i64 0, !21, i64 8, !21, i64 16, !15, i64 24, !15, i64 24, !15, i64 28, !20, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !15, i64 64, !39, i64 72, !15, i64 184}
!255 = !{!254, !21, i64 8}
!256 = !{!254, !15, i64 0}
!257 = !{!254, !20, i64 32}
!258 = !{!254, !21, i64 40}
!259 = !{!254, !21, i64 16}
!260 = !{!254, !21, i64 48}
!261 = !{!254, !21, i64 56}
!262 = !{!254, !15, i64 64}
!263 = !{!254, !15, i64 28}
!264 = !{!254, !15, i64 184}
!265 = !{!254, !21, i64 88}
!266 = !{!254, !21, i64 112}
!267 = !{!254, !20, i64 72}
!268 = !{!254, !15, i64 80}
!269 = !{!254, !20, i64 96}
!270 = !{!254, !15, i64 104}
!271 = !{!126, !28, i64 0}
!272 = !{!126, !58, i64 8}
!273 = !{!64, !28, i64 128}
!274 = !{!44, !15, i64 220}
!275 = !{!44, !15, i64 212}
!276 = !{!44, !15, i64 224}
!277 = !{!44, !15, i64 268}
!278 = !{!44, !15, i64 260}
!279 = !{!44, !15, i64 272}
!280 = !{!44, !15, i64 228}
!281 = !{!44, !15, i64 276}
!282 = !{!44, !15, i64 288}
!283 = !{!44, !15, i64 192}
!284 = distinct !{!284, !79}
!285 = distinct !{!285, !79}
!286 = distinct !{!286, !79}
!287 = distinct !{!287, !79}
!288 = !{!44, !28, i64 232}
!289 = !{!44, !35, i64 248}
!290 = !{!44, !27, i64 136}
!291 = distinct !{!291, !79}
!292 = distinct !{!292, !79}
!293 = distinct !{!293, !79}
!294 = distinct !{!294, !79}
!295 = distinct !{!295, !79}
!296 = distinct !{!296, !79}
!297 = distinct !{!297, !79}
!298 = !{!74, !21, i64 120}
!299 = distinct !{!299, !79}
!300 = !{!44, !21, i64 40}
!301 = !{!133, !30, i64 40}
!302 = !{!44, !21, i64 552}
!303 = !{!44, !20, i64 584}
!304 = !{!44, !15, i64 592}
!305 = !{!44, !21, i64 600}
!306 = !{!44, !21, i64 624}
!307 = distinct !{!307, !79}
!308 = distinct !{!308, !79}
!309 = distinct !{!309, !79}
!310 = distinct !{!310, !79}
!311 = distinct !{!311, !79}
!312 = !{!39, !20, i64 24}
!313 = !{!39, !15, i64 32}
!314 = !{!39, !21, i64 16}
!315 = !{!39, !20, i64 0}
!316 = !{!39, !15, i64 8}
!317 = !{!39, !21, i64 40}
!318 = distinct !{!318, !79}
!319 = !{!44, !21, i64 66304}
!320 = distinct !{!320, !79}
!321 = distinct !{!321, !79}
!322 = distinct !{!322, !79}
!323 = distinct !{!323, !79}
!324 = distinct !{!324, !79}
!325 = !{!36, !15, i64 44}
!326 = !{!36, !15, i64 36}
!327 = !{!36, !15, i64 40}
!328 = !{!44, !20, i64 416}
!329 = !{!44, !20, i64 368}
!330 = !{!44, !20, i64 440}
!331 = !{!44, !20, i64 392}
!332 = !{!44, !20, i64 320}
!333 = distinct !{!333, !79}
!334 = distinct !{!334, !79}
!335 = distinct !{!335, !79}
!336 = distinct !{!336, !79}
!337 = distinct !{!337, !79}
!338 = distinct !{!338, !79}
!339 = distinct !{!339, !79}
!340 = distinct !{!340, !79}
!341 = distinct !{!341, !79}
!342 = !{!44, !14, i64 66376}
!343 = !{!44, !20, i64 66384}
!344 = distinct !{!344, !79}
!345 = distinct !{!345, !79}
!346 = distinct !{!346, !79}
!347 = !{ptr @isoent_gen_iso9660_identifier, ptr @isoent_gen_joliet_identifier}
!348 = distinct !{!348, !79}
!349 = distinct !{!349, !79}
!350 = distinct !{!350, !79}
!351 = distinct !{!351, !79}
!352 = distinct !{!352, !79}
!353 = !{!44, !21, i64 104}
!354 = distinct !{!354, !79}
!355 = distinct !{!355, !79}
!356 = distinct !{!356, !79}
!357 = distinct !{!357, !79}
!358 = distinct !{!358, !79}
!359 = distinct !{!359, !79}
!360 = distinct !{!360, !79}
!361 = distinct !{!361, !79}
!362 = distinct !{!362, !79}
!363 = distinct !{!363, !79}
!364 = distinct !{!364, !79}
!365 = distinct !{!365, !79}
!366 = distinct !{!366, !79}
!367 = distinct !{!367, !79}
!368 = distinct !{!368, !79}
!369 = distinct !{!369, !79}
!370 = distinct !{!370, !79}
!371 = !{!199, !15, i64 16}
!372 = !{!199, !15, i64 12}
!373 = !{!199, !15, i64 8}
!374 = !{!199, !15, i64 4}
!375 = !{!64, !15, i64 140}
!376 = !{!74, !20, i64 112}
!377 = !{!64, !15, i64 144}
!378 = !{!64, !15, i64 148}
!379 = !{!64, !15, i64 152}
!380 = distinct !{!380, !79}
!381 = distinct !{!381, !79}
!382 = distinct !{!382, !79, !150, !151}
!383 = distinct !{!383, !79, !150, !151}
!384 = distinct !{!384, !79, !151, !150}
!385 = !{!44, !21, i64 80}
!386 = !{!44, !20, i64 72}
!387 = !{!"branch_weights", i32 4, i32 12}
!388 = distinct !{!388, !79}
end_hunk_3
