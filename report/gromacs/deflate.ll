inline.NumInlined: 29
inline.NumDeleted: 3
begin_hunk_0_@deflate_stored:bb.a
  %i.fa = icmp sgt i64 %i.ey, -1
  br i1 %i.fa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fb = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ey
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.fd = phi ptr [ %i.fc, %bb.y ], [ null, %bb.x ]
  %i.fe = sub nsw i64 %i.ex, %i.ey
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.fd, i64 noundef %i.fe, i32 noundef 0) #11
  %i.ff = load i32, ptr %i.e, align 4, !tbaa !68
  %i.fg = zext i32 %i.ff to i64
  store i64 %i.fg, ptr %i.f, align 8, !tbaa !69
  %i.fh = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.fj) #11
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 40 ; 3 uses
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !53
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fh, i64 32 ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !95
  %spec.select.i81 = tail call i32 @llvm.umin.i32(i32 %i.fl, i32 %i.fn) ; 5 uses
  %i.fo = icmp eq i32 %spec.select.i81, 0
  br i1 %i.fo, label %flush_pending.exit82, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fh, i64 24 ; 3 uses
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !94
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 32 ; 4 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !54
  %i.ft = zext i32 %spec.select.i81 to i64        ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fq, ptr align 1 %i.fs, i64 %i.ft, i1 false)
  %i.fu = load ptr, ptr %i.fp, align 8, !tbaa !94
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.ft
  store ptr %i.fv, ptr %i.fp, align 8, !tbaa !94
  %i.fw = load ptr, ptr %i.fr, align 8, !tbaa !54
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ft
  store ptr %i.fx, ptr %i.fr, align 8, !tbaa !54
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fh, i64 40 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !106
  %i.ga = add i64 %i.fz, %i.ft
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !106
  %i.gb = load i32, ptr %i.fm, align 8, !tbaa !95
  %i.gc = sub i32 %i.gb, %spec.select.i81
  store i32 %i.gc, ptr %i.fm, align 8, !tbaa !95
  %i.gd = load i32, ptr %i.fk, align 8, !tbaa !53 ; 2 uses
  %i.ge = sub i32 %i.gd, %spec.select.i81
  store i32 %i.ge, ptr %i.fk, align 8, !tbaa !53
  %i.gf = icmp eq i32 %i.gd, %spec.select.i81
  br i1 %i.gf, label %bb.ab, label %flush_pending.exit82

bb.ab:                                            ; preds = %bb.aa
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !42
  store ptr %i.gh, ptr %i.fr, align 8, !tbaa !54
  br label %flush_pending.exit82

flush_pending.exit82:                             ; preds = %bb.z, %bb.aa, %bb.ab
  %i.gi = load ptr, ptr %0, align 8, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 32
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !95
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %flush_pending.exit82, %bb.w
  br label %.loopexit

.loopexit:                                        ; preds = %flush_pending.exit78, %flush_pending.exit, %bb.c, %flush_pending.exit82, %flush_pending.exit80, %bb.ac
  %.0 = phi i32 [ 0, %flush_pending.exit82 ], [ %., %flush_pending.exit80 ], [ 1, %bb.ac ], [ 0, %bb.c ], [ 0, %flush_pending.exit ], [ 0, %flush_pending.exit78 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 6 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5888 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5884 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5872 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 5880 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.s = getelementptr i8, ptr %0, i64 1224
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.w = load i32, ptr %i.a, align 4, !tbaa !70
  %i.x = icmp ult i32 %i.w, 262
  br i1 %i.x, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.y = load i32, ptr %i.a, align 4, !tbaa !70   ; 3 uses
  %i.z = icmp ult i32 %i.y, 262
  %or.cond = and i1 %i.b, %i.z
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = icmp ugt i32 %i.y, 2
  br i1 %i.ab, label %.thread, label %.thread149thread-pre-split

.thread:                                          ; preds = %bb.b, %bb.e
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !75
  %i.ad = load i32, ptr %i.d, align 8, !tbaa !36
  %i.ae = shl i32 %i.ac, %i.ad
  %i.af = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.ag = load i32, ptr %i.f, align 4, !tbaa !68  ; 4 uses
  %i.ah = add i32 %i.ag, 2
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = zext i8 %i.ak to i32
  %i.am = xor i32 %i.ae, %i.al
  %i.an = load i32, ptr %i.g, align 4, !tbaa !35
  %i.ao = and i32 %i.am, %i.an                    ; 2 uses
  store i32 %i.ao, ptr %i.c, align 8, !tbaa !75
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.aq = zext i32 %i.ao to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !58 ; 3 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.au = load i32, ptr %i.j, align 4, !tbaa !32
  %i.av = and i32 %i.au, %i.ag
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.aw
  store i16 %i.as, ptr %i.ax, align 2, !tbaa !58
  %i.ay = zext i16 %i.as to i32                   ; 2 uses
  %i.az = trunc i32 %i.ag to i16
  store i16 %i.az, ptr %i.ar, align 2, !tbaa !58
  %.not = icmp eq i16 %i.as, 0
  br i1 %.not, label %.thread149thread-pre-split, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.ba = sub i32 %i.ag, %i.ay
  %i.bb = load i32, ptr %i.k, align 4, !tbaa !31
  %i.bc = add i32 %i.bb, -262
  %.not140 = icmp ugt i32 %i.ba, %i.bc
  br i1 %.not140, label %.thread149thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %i.ay) ; 2 uses
  store i32 %i.bd, ptr %i.l, align 8, !tbaa !73
  br label %.thread149

.thread149thread-pre-split:                       ; preds = %.thread, %bb.f, %bb.e
  %.pr = load i32, ptr %i.l, align 8, !tbaa !73
  br label %.thread149

.thread149:                                       ; preds = %.thread149thread-pre-split, %bb.g
  %i.be = phi i32 [ %.pr, %.thread149thread-pre-split ], [ %i.bd, %bb.g ] ; 2 uses
  %i.bf = icmp ugt i32 %i.be, 2
  br i1 %i.bf, label %bb.h, label %.split152

bb.h:                                             ; preds = %.thread149
  %i.bg = trunc i32 %i.be to i8
  %i.bh = add i8 %i.bg, -3                        ; 2 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !68
  %i.bj = load i32, ptr %i.r, align 8, !tbaa !115
  %i.bk = sub i32 %i.bi, %i.bj
  %i.bl = trunc i32 %i.bk to i16                  ; 2 uses
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.bn = load i32, ptr %i.n, align 4, !tbaa !110 ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %i.bm, i64 %i.bo
  store i16 %i.bl, ptr %i.bp, align 2, !tbaa !58
  %i.bq = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.br = add i32 %i.bn, 1
  store i32 %i.br, ptr %i.n, align 4, !tbaa !110
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 %i.bh, ptr %i.bs, align 1, !tbaa !8
  %i.bt = add i16 %i.bl, -1                       ; 3 uses
  %i.bu = zext i8 %i.bh to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !8
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %i.s, i64 %i.bx ; 2 uses
  %i.bz = load i16, ptr %i.by, align 4, !tbaa !8
  %i.ca = add i16 %i.bz, 1
  store i16 %i.ca, ptr %i.by, align 4, !tbaa !8
  %i.cb = icmp ult i16 %i.bt, 256
  %2 = zext nneg i16 %i.bt to i64
  %3 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2
  %4 = lshr i16 %i.bt, 7
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 256
  %.in.in = select i1 %i.cb, ptr %3, ptr %7
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8
  %8 = zext i8 %.in to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %8 ; 2 uses
  %10 = load i16, ptr %9, align 4, !tbaa !8
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4, !tbaa !8
  %12 = load i32, ptr %i.n, align 4, !tbaa !110
  %13 = load i32, ptr %i.q, align 8, !tbaa !41
  %14 = add i32 %13, -1
  %15 = icmp eq i32 %12, %14                      ; 2 uses
  %16 = load i32, ptr %i.l, align 8, !tbaa !73    ; 4 uses
  %17 = load i32, ptr %i.a, align 4, !tbaa !70
  %18 = sub i32 %17, %16                          ; 2 uses
  store i32 %18, ptr %i.a, align 4, !tbaa !70
  %19 = load i32, ptr %i.u, align 8, !tbaa !61
  %.not141 = icmp ule i32 %16, %19
  %20 = icmp ugt i32 %18, 2
  %or.cond144 = select i1 %.not141, i1 %20, i1 false
  br i1 %or.cond144, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cc = add i32 %16, -1                         ; 2 uses
  store i32 %i.cc, ptr %i.l, align 8, !tbaa !73
  %i.cd = load i32, ptr %i.d, align 8, !tbaa !36
  %i.ce = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.cf = load i32, ptr %i.g, align 4, !tbaa !35
  %i.cg = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.ch = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.ci = load i32, ptr %i.j, align 4, !tbaa !32
  %.promoted = load i32, ptr %i.f, align 4, !tbaa !68
  %.promoted153 = load i32, ptr %i.c, align 8, !tbaa !75
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.cj = phi i32 [ %i.dc, %bb.j ], [ %i.cc, %bb.i ]
  %i.ck = phi i32 [ %i.cu, %bb.j ], [ %.promoted153, %bb.i ]
  %i.cl = phi i32 [ %i.cm, %bb.j ], [ %.promoted, %bb.i ] ; 3 uses
  %i.cm = add i32 %i.cl, 1                        ; 4 uses
  store i32 %i.cm, ptr %i.f, align 4, !tbaa !68
  %i.cn = shl i32 %i.ck, %i.cd
  %i.co = add i32 %i.cl, 3
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = zext i8 %i.cr to i32
  %i.ct = xor i32 %i.cn, %i.cs
  %i.cu = and i32 %i.ct, %i.cf                    ; 3 uses
  store i32 %i.cu, ptr %i.c, align 8, !tbaa !75
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.cv ; 2 uses
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !58
  %i.cy = and i32 %i.ci, %i.cm
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cz
  store i16 %i.cx, ptr %i.da, align 2, !tbaa !58
  %i.db = trunc i32 %i.cm to i16
  store i16 %i.db, ptr %i.cw, align 2, !tbaa !58
  %i.dc = add i32 %i.cj, -1                       ; 3 uses
  store i32 %i.dc, ptr %i.l, align 8, !tbaa !73
  %.not142 = icmp eq i32 %i.dc, 0
  br i1 %.not142, label %.split, label %bb.j, !llvm.loop !116

.split:                                           ; preds = %bb.j
  %i.dd = add i32 %i.cl, 2                        ; 2 uses
  store i32 %i.dd, ptr %i.f, align 4, !tbaa !68
  br i1 %15, label %bb.l, label %.backedge

.split152:                                        ; preds = %.thread149
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.df = load i32, ptr %i.f, align 4, !tbaa !68
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8   ; 2 uses
  %i.dj = load ptr, ptr %i.m, align 8, !tbaa !46
  %i.dk = load i32, ptr %i.n, align 4, !tbaa !110 ; 2 uses
  %i.dl = zext i32 %i.dk to i64                   ; 2 uses
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.dj, i64 %i.dl
  store i16 0, ptr %i.dm, align 2, !tbaa !58
  %i.dn = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.do = add i32 %i.dk, 1
  store i32 %i.do, ptr %i.n, align 4, !tbaa !110
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dl
  store i8 %i.di, ptr %i.dp, align 1, !tbaa !8
  %i.dq = zext i8 %i.di to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dq ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 4, !tbaa !8
  %i.dt = add i16 %i.ds, 1
  store i16 %i.dt, ptr %i.dr, align 4, !tbaa !8
  %i.du = load i32, ptr %i.n, align 4, !tbaa !110
  %i.dv = load i32, ptr %i.q, align 8, !tbaa !41
  %i.dw = add i32 %i.dv, -1
  %i.dx = icmp eq i32 %i.du, %i.dw
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !70
  %i.dz = add i32 %i.dy, -1
  store i32 %i.dz, ptr %i.a, align 4, !tbaa !70
  %i.ea = load i32, ptr %i.f, align 4, !tbaa !68
  %i.eb = add i32 %i.ea, 1                        ; 2 uses
  store i32 %i.eb, ptr %i.f, align 4, !tbaa !68
  br i1 %i.dx, label %bb.l, label %.backedge

.backedge:                                        ; preds = %.split152, %.split, %flush_pending.exit, %bb.k
  br label %bb.b

bb.k:                                             ; preds = %bb.h
  %i.ec = load i32, ptr %i.f, align 4, !tbaa !68
  %i.ed = add i32 %i.ec, %16                      ; 4 uses
  store i32 %i.ed, ptr %i.f, align 4, !tbaa !68
  store i32 0, ptr %i.l, align 8, !tbaa !73
  %i.ee = load ptr, ptr %i.e, align 8, !tbaa !37  ; 2 uses
  %i.ef = zext i32 %i.ed to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !8
  %i.ei = zext i8 %i.eh to i32                    ; 2 uses
  store i32 %i.ei, ptr %i.c, align 8, !tbaa !75
  %i.ej = load i32, ptr %i.d, align 8, !tbaa !36
  %i.ek = shl i32 %i.ei, %i.ej
  %i.el = add i32 %i.ed, 1
  %i.em = zext i32 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !8
  %i.ep = zext i8 %i.eo to i32
  %i.eq = xor i32 %i.ek, %i.ep
  %i.er = load i32, ptr %i.g, align 4, !tbaa !35
  %i.es = and i32 %i.eq, %i.er
  store i32 %i.es, ptr %i.c, align 8, !tbaa !75
  br i1 %15, label %bb.l, label %.backedge

bb.l:                                             ; preds = %.split152, %.split, %bb.k
  %i.et = phi i32 [ %i.eb, %.split152 ], [ %i.dd, %.split ], [ %i.ed, %bb.k ]
  %i.eu = load i64, ptr %i.v, align 8, !tbaa !69  ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, -1
  br i1 %i.ev, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ew = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.ex = and i64 %i.eu, 4294967295
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ez = phi ptr [ %i.ey, %bb.m ], [ null, %bb.l ]
  %i.fa = zext i32 %i.et to i64
  %i.fb = sub nsw i64 %i.fa, %i.eu
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.ez, i64 noundef %i.fb, i32 noundef 0) #11
  %i.fc = load i32, ptr %i.f, align 4, !tbaa !68
  %i.fd = zext i32 %i.fc to i64
  store i64 %i.fd, ptr %i.v, align 8, !tbaa !69
  %i.fe = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.fg) #11
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40 ; 3 uses
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !53
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 32 ; 3 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !95
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.fi, i32 %i.fk) ; 5 uses
  %i.fl = icmp eq i32 %spec.select.i, 0
  br i1 %i.fl, label %flush_pending.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fe, i64 24 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !94
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fg, i64 32 ; 4 uses
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !54
  %i.fq = zext i32 %spec.select.i to i64          ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fn, ptr align 1 %i.fp, i64 %i.fq, i1 false)
  %i.fr = load ptr, ptr %i.fm, align 8, !tbaa !94
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %i.fq
  store ptr %i.fs, ptr %i.fm, align 8, !tbaa !94
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !54
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fq
  store ptr %i.fu, ptr %i.fo, align 8, !tbaa !54
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fe, i64 40 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !106
  %i.fx = add i64 %i.fw, %i.fq
  store i64 %i.fx, ptr %i.fv, align 8, !tbaa !106
  %i.fy = load i32, ptr %i.fj, align 8, !tbaa !95
  %i.fz = sub i32 %i.fy, %spec.select.i
  store i32 %i.fz, ptr %i.fj, align 8, !tbaa !95
  %i.ga = load i32, ptr %i.fh, align 8, !tbaa !53 ; 2 uses
  %i.gb = sub i32 %i.ga, %spec.select.i
  store i32 %i.gb, ptr %i.fh, align 8, !tbaa !53
  %i.gc = icmp eq i32 %i.ga, %spec.select.i
  br i1 %i.gc, label %bb.p, label %flush_pending.exit

bb.p:                                             ; preds = %bb.o
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !42
  store ptr %i.ge, ptr %i.fo, align 8, !tbaa !54
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %bb.n, %bb.o, %bb.p
  %i.gf = load ptr, ptr %0, align 8, !tbaa !19
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !95
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %.loopexit, label %.backedge

bb.q:                                             ; preds = %bb.d
  %i.gj = load i32, ptr %i.f, align 4, !tbaa !68  ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.gj, i32 2)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 5916
  store i32 %spec.select, ptr %i.gk, align 4, !tbaa !71
  %i.gl = icmp eq i32 %1, 4
  br i1 %i.gl, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.gm = load i64, ptr %i.v, align 8, !tbaa !69  ; 3 uses
  %i.gn = icmp sgt i64 %i.gm, -1
  br i1 %i.gn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.go = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.gp = and i64 %i.gm, 4294967295
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gp
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.gr = phi ptr [ %i.gq, %bb.s ], [ null, %bb.r ]
  %i.gs = zext i32 %i.gj to i64
  %i.gt = sub nsw i64 %i.gs, %i.gm
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.gr, i64 noundef %i.gt, i32 noundef 1) #11
  %i.gu = load i32, ptr %i.f, align 4, !tbaa !68
  %i.gv = zext i32 %i.gu to i64
  store i64 %i.gv, ptr %i.v, align 8, !tbaa !69
  %i.gw = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.gy) #11
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40 ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !53
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !95
  %spec.select.i145 = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.hc) ; 5 uses
  %i.hd = icmp eq i32 %spec.select.i145, 0
  br i1 %i.hd, label %flush_pending.exit146, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !94
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 32 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !54
  %i.hi = zext i32 %spec.select.i145 to i64       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %i.hh, i64 %i.hi, i1 false)
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !94
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store ptr %i.hk, ptr %i.he, align 8, !tbaa !94
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !54
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hi
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !54
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !106
  %i.hp = add i64 %i.ho, %i.hi
  store i64 %i.hp, ptr %i.hn, align 8, !tbaa !106
  %i.hq = load i32, ptr %i.hb, align 8, !tbaa !95
  %i.hr = sub i32 %i.hq, %spec.select.i145
  store i32 %i.hr, ptr %i.hb, align 8, !tbaa !95
  %i.hs = load i32, ptr %i.gz, align 8, !tbaa !53 ; 2 uses
  %i.ht = sub i32 %i.hs, %spec.select.i145
  store i32 %i.ht, ptr %i.gz, align 8, !tbaa !53
  %i.hu = icmp eq i32 %i.hs, %spec.select.i145
  br i1 %i.hu, label %bb.v, label %flush_pending.exit146

bb.v:                                             ; preds = %bb.u
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !42
  store ptr %i.hw, ptr %i.hg, align 8, !tbaa !54
  br label %flush_pending.exit146

flush_pending.exit146:                            ; preds = %bb.t, %bb.u, %bb.v
  %i.hx = load ptr, ptr %0, align 8, !tbaa !19
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 32
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !95
  %i.ia = icmp eq i32 %i.hz, 0
  %. = select i1 %i.ia, i32 2, i32 3
  br label %.loopexit

bb.w:                                             ; preds = %bb.q
  %i.ib = load i32, ptr %i.n, align 4, !tbaa !110
  %.not143 = icmp eq i32 %i.ib, 0
  br i1 %.not143, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ic = load i64, ptr %i.v, align 8, !tbaa !69  ; 3 uses
  %i.id = icmp sgt i64 %i.ic, -1
  br i1 %i.id, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ie = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.if = and i64 %i.ic, 4294967295
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.if
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ih = phi ptr [ %i.ig, %bb.y ], [ null, %bb.x ]
  %i.ii = zext i32 %i.gj to i64
  %i.ij = sub nsw i64 %i.ii, %i.ic
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.ih, i64 noundef %i.ij, i32 noundef 0) #11
  %i.ik = load i32, ptr %i.f, align 4, !tbaa !68
  %i.il = zext i32 %i.ik to i64
  store i64 %i.il, ptr %i.v, align 8, !tbaa !69
  %i.im = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 56
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.io) #11
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40 ; 3 uses
  %i.iq = load i32, ptr %i.ip, align 8, !tbaa !53
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 32 ; 3 uses
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !95
  %spec.select.i147 = tail call i32 @llvm.umin.i32(i32 %i.iq, i32 %i.is) ; 5 uses
  %i.it = icmp eq i32 %spec.select.i147, 0
  br i1 %i.it, label %flush_pending.exit148, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 24 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !94
  %i.iw = getelementptr inbounds nuw i8, ptr %i.io, i64 32 ; 4 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !54
  %i.iy = zext i32 %spec.select.i147 to i64       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iv, ptr align 1 %i.ix, i64 %i.iy, i1 false)
  %i.iz = load ptr, ptr %i.iu, align 8, !tbaa !94
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.iy
  store ptr %i.ja, ptr %i.iu, align 8, !tbaa !94
  %i.jb = load ptr, ptr %i.iw, align 8, !tbaa !54
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.iy
  store ptr %i.jc, ptr %i.iw, align 8, !tbaa !54
end_hunk_0
begin_hunk_1_@deflate_fast:bb.a
  store ptr %i.jm, ptr %i.iw, align 8, !tbaa !54
  br label %flush_pending.exit148

flush_pending.exit148:                            ; preds = %bb.z, %bb.aa, %bb.ab
  %i.jn = load ptr, ptr %0, align 8, !tbaa !19
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !95
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %flush_pending.exit148, %bb.w
  br label %.loopexit

.loopexit:                                        ; preds = %flush_pending.exit, %bb.c, %flush_pending.exit148, %flush_pending.exit146, %bb.ac
  %.0 = phi i32 [ 1, %bb.ac ], [ %., %flush_pending.exit146 ], [ 0, %flush_pending.exit148 ], [ 0, %bb.c ], [ 0, %flush_pending.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 9 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 18 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5888 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5884 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5872 ; 3 uses
  %i.u = getelementptr i8, ptr %0, i64 1224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2488
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 5880 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 196 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ab = icmp ult i32 %i.aa, 262
  br i1 %i.ab, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %.critedge
  %.pre = load i32, ptr %i.c, align 8, !tbaa !73
  %.pre195 = load i32, ptr %i.e, align 8, !tbaa !115
  br label %.thread

bb.b:                                             ; preds = %.critedge
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !70  ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 262
  %or.cond = and i1 %i.b, %i.ad
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = icmp eq i32 %i.ac, 0
  br i1 %i.ae, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = icmp ugt i32 %i.ac, 2
  %.pre194 = load i32, ptr %i.c, align 8, !tbaa !73 ; 3 uses
  %.pre196 = load i32, ptr %i.e, align 8, !tbaa !115 ; 2 uses
  br i1 %i.af, label %.thread, label %.thread189

.thread189:                                       ; preds = %bb.d
  store i32 %.pre194, ptr %i.d, align 8, !tbaa !72
  store i32 %.pre196, ptr %i.f, align 4, !tbaa !117
  store i32 2, ptr %i.c, align 8, !tbaa !73
  br label %bb.l

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.ag = phi i32 [ %.pre195, %..thread_crit_edge ], [ %.pre196, %bb.d ]
  %i.ah = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre194, %bb.d ] ; 3 uses
  %i.ai = load i32, ptr %i.g, align 8, !tbaa !75
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !36
  %i.ak = shl i32 %i.ai, %i.aj
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.am = load i32, ptr %i.j, align 4, !tbaa !68  ; 4 uses
  %i.an = add i32 %i.am, 2
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i32
  %i.as = xor i32 %i.ak, %i.ar
  %i.at = load i32, ptr %i.k, align 4, !tbaa !35
  %i.au = and i32 %i.as, %i.at                    ; 2 uses
  store i32 %i.au, ptr %i.g, align 8, !tbaa !75
  %i.av = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !58 ; 3 uses
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.ba = load i32, ptr %i.n, align 4, !tbaa !32
  %i.bb = and i32 %i.ba, %i.am
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.bc
  store i16 %i.ay, ptr %i.bd, align 2, !tbaa !58
  %i.be = zext i16 %i.ay to i32                   ; 2 uses
  %i.bf = trunc i32 %i.am to i16
  store i16 %i.bf, ptr %i.ax, align 2, !tbaa !58
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !72
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !117
  store i32 2, ptr %i.c, align 8, !tbaa !73
  %.not = icmp eq i16 %i.ay, 0
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bg = load i32, ptr %i.o, align 8, !tbaa !61
  %i.bh = icmp ult i32 %i.ah, %i.bg
  br i1 %i.bh, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.bi = sub i32 %i.am, %i.be
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !31
  %i.bk = add i32 %i.bj, -262
  %.not176 = icmp ugt i32 %i.bi, %i.bk
  br i1 %.not176, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %i.be) ; 5 uses
  store i32 %i.bl, ptr %i.c, align 8, !tbaa !73
  %i.bm = icmp ult i32 %i.bl, 6
  br i1 %i.bm, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.q, align 8, !tbaa !49
  %i.bo = icmp eq i32 %i.bn, 1
  br i1 %i.bo, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = icmp eq i32 %i.bl, 3
  br i1 %i.bp, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.bq = load i32, ptr %i.j, align 4, !tbaa !68
  %i.br = load i32, ptr %i.e, align 8, !tbaa !115
  %i.bs = sub i32 %i.bq, %i.br
  %i.bt = icmp ugt i32 %i.bs, 4096
  br i1 %i.bt, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j, %bb.h
  store i32 2, ptr %i.c, align 8, !tbaa !73
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.f, %bb.k, %bb.j, %bb.i, %bb.g
  %.ph = phi i32 [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.k ], [ 3, %bb.j ], [ %i.bl, %bb.i ], [ %i.bl, %bb.g ]
  %.pr = load i32, ptr %i.d, align 8, !tbaa !72
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %.thread189, %.thread
  %i.bu = phi i32 [ %.pr, %thread-pre-split ], [ %.pre194, %.thread189 ], [ %i.ah, %.thread ] ; 3 uses
  %i.bv = phi i32 [ %.ph, %thread-pre-split ], [ 2, %.thread189 ], [ 2, %.thread ]
  %i.bw = icmp ult i32 %i.bu, 3
  %.not177 = icmp ugt i32 %i.bv, %i.bu
  %or.cond207 = or i1 %i.bw, %.not177
  br i1 %or.cond207, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bx = load i32, ptr %i.j, align 4, !tbaa !68  ; 2 uses
  %i.by = load i32, ptr %i.a, align 4, !tbaa !70
  %i.bz = add i32 %i.bx, -3
  %i.ca = add i32 %i.bz, %i.by
  %i.cb = trunc i32 %i.bu to i8
  %i.cc = add i8 %i.cb, -3                        ; 2 uses
  %i.cd = load i32, ptr %i.f, align 4, !tbaa !117
  %i.ce = xor i32 %i.cd, -1
  %i.cf = add i32 %i.bx, %i.ce
  %i.cg = trunc i32 %i.cf to i16                  ; 2 uses
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !110 ; 2 uses
  %i.cj = zext i32 %i.ci to i64                   ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %i.cj
  store i16 %i.cg, ptr %i.ck, align 2, !tbaa !58
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.cm = add i32 %i.ci, 1
  store i32 %i.cm, ptr %i.s, align 4, !tbaa !110
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cj
  store i8 %i.cc, ptr %i.cn, align 1, !tbaa !8
  %i.co = add i16 %i.cg, -1                       ; 3 uses
  %i.cp = zext i8 %i.cc to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !8
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr %i.u, i64 %i.cs ; 2 uses
  %i.cu = load i16, ptr %i.ct, align 4, !tbaa !8
  %i.cv = add i16 %i.cu, 1
  store i16 %i.cv, ptr %i.ct, align 4, !tbaa !8
  %i.cw = icmp ult i16 %i.co, 256
  %2 = zext nneg i16 %i.co to i64
  %3 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %2
  %4 = lshr i16 %i.co, 7
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 256
  %.in.in = select i1 %i.cw, ptr %3, ptr %7
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8
  %8 = zext i8 %.in to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %8 ; 2 uses
  %10 = load i16, ptr %9, align 4, !tbaa !8
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4, !tbaa !8
  %12 = load i32, ptr %i.s, align 4, !tbaa !110
  %13 = load i32, ptr %i.w, align 8, !tbaa !41
  %14 = load i32, ptr %i.d, align 8, !tbaa !72    ; 2 uses
  %15 = load i32, ptr %i.a, align 4, !tbaa !70
  %reass.sub = sub i32 %15, %14
  %16 = add i32 %reass.sub, 1
  store i32 %16, ptr %i.a, align 4, !tbaa !70
  %17 = add i32 %14, -2                           ; 2 uses
  store i32 %17, ptr %i.d, align 8, !tbaa !72
  %.promoted = load i32, ptr %i.j, align 4, !tbaa !68
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.cx = phi i32 [ %i.dw, %bb.p ], [ %17, %bb.m ]
  %i.cy = phi i32 [ %i.cz, %bb.p ], [ %.promoted, %bb.m ] ; 3 uses
  %i.cz = add i32 %i.cy, 1                        ; 5 uses
  store i32 %i.cz, ptr %i.j, align 4, !tbaa !68
  %.not179 = icmp ugt i32 %i.cz, %i.ca
  br i1 %.not179, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.da = load i32, ptr %i.g, align 8, !tbaa !75
  %i.db = load i32, ptr %i.h, align 8, !tbaa !36
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.de = add i32 %i.cy, 3
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !8
  %i.di = zext i8 %i.dh to i32
  %i.dj = xor i32 %i.dc, %i.di
  %i.dk = load i32, ptr %i.k, align 4, !tbaa !35
  %i.dl = and i32 %i.dj, %i.dk                    ; 2 uses
  store i32 %i.dl, ptr %i.g, align 8, !tbaa !75
  %i.dm = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.dn = zext i32 %i.dl to i64
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dm, i64 %i.dn ; 2 uses
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !58
  %i.dq = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.dr = load i32, ptr %i.n, align 4, !tbaa !32
  %i.ds = and i32 %i.dr, %i.cz
  %i.dt = zext i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.dt
  store i16 %i.dp, ptr %i.du, align 2, !tbaa !58
  %i.dv = trunc i32 %i.cz to i16
  store i16 %i.dv, ptr %i.do, align 2, !tbaa !58
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.dw = add i32 %i.cx, -1                       ; 3 uses
  store i32 %i.dw, ptr %i.d, align 8, !tbaa !72
  %.not180 = icmp eq i32 %i.dw, 0
  br i1 %.not180, label %bb.q, label %bb.n, !llvm.loop !118

bb.q:                                             ; preds = %bb.p
  %i.dx = add i32 %13, -1
  %i.dy = icmp eq i32 %12, %i.dx
  store i32 0, ptr %i.x, align 8, !tbaa !74
  store i32 2, ptr %i.c, align 8, !tbaa !73
  %i.dz = add i32 %i.cy, 2                        ; 2 uses
  store i32 %i.dz, ptr %i.j, align 4, !tbaa !68
  br i1 %i.dy, label %bb.r, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.q, %flush_pending.exit, %bb.ad, %flush_pending.exit184
  br label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ea = load i64, ptr %i.y, align 8, !tbaa !69  ; 3 uses
  %i.eb = icmp sgt i64 %i.ea, -1
  br i1 %i.eb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.ed = and i64 %i.ea, 4294967295
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 %i.ed
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ef = phi ptr [ %i.ee, %bb.s ], [ null, %bb.r ]
  %i.eg = zext i32 %i.dz to i64
  %i.eh = sub nsw i64 %i.eg, %i.ea
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.ef, i64 noundef %i.eh, i32 noundef 0) #11
  %i.ei = load i32, ptr %i.j, align 4, !tbaa !68
  %i.ej = zext i32 %i.ei to i64
  store i64 %i.ej, ptr %i.y, align 8, !tbaa !69
  %i.ek = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 56
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.em) #11
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 40 ; 3 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !53
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 32 ; 3 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !95
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.eo, i32 %i.eq) ; 5 uses
  %i.er = icmp eq i32 %spec.select.i, 0
  br i1 %i.er, label %flush_pending.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = getelementptr inbounds nuw i8, ptr %i.ek, i64 24 ; 3 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !94
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 32 ; 4 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !54
  %i.ew = zext i32 %spec.select.i to i64          ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.et, ptr align 1 %i.ev, i64 %i.ew, i1 false)
  %i.ex = load ptr, ptr %i.es, align 8, !tbaa !94
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.ew
  store ptr %i.ey, ptr %i.es, align 8, !tbaa !94
  %i.ez = load ptr, ptr %i.eu, align 8, !tbaa !54
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ew
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !54
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ek, i64 40 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !106
  %i.fd = add i64 %i.fc, %i.ew
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !106
  %i.fe = load i32, ptr %i.ep, align 8, !tbaa !95
  %i.ff = sub i32 %i.fe, %spec.select.i
  store i32 %i.ff, ptr %i.ep, align 8, !tbaa !95
  %i.fg = load i32, ptr %i.en, align 8, !tbaa !53 ; 2 uses
  %i.fh = sub i32 %i.fg, %spec.select.i
  store i32 %i.fh, ptr %i.en, align 8, !tbaa !53
  %i.fi = icmp eq i32 %i.fg, %spec.select.i
  br i1 %i.fi, label %bb.v, label %flush_pending.exit

bb.v:                                             ; preds = %bb.u
  %i.fj = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42
  store ptr %i.fk, ptr %i.eu, align 8, !tbaa !54
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %bb.t, %bb.u, %bb.v
  %i.fl = load ptr, ptr %0, align 8, !tbaa !19
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !95
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %.loopexit, label %.critedge.backedge

bb.w:                                             ; preds = %bb.l
  %i.fp = load i32, ptr %i.x, align 8, !tbaa !74
  %.not178 = icmp eq i32 %i.fp, 0
  br i1 %.not178, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.fr = load i32, ptr %i.j, align 4, !tbaa !68
  %i.fs = add i32 %i.fr, -1
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !8   ; 2 uses
  %i.fw = load ptr, ptr %i.r, align 8, !tbaa !46
  %i.fx = load i32, ptr %i.s, align 4, !tbaa !110 ; 2 uses
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.fw, i64 %i.fy
  store i16 0, ptr %i.fz, align 2, !tbaa !58
  %i.ga = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.gb = add i32 %i.fx, 1
  store i32 %i.gb, ptr %i.s, align 4, !tbaa !110
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.fy
  store i8 %i.fv, ptr %i.gc, align 1, !tbaa !8
  %i.gd = zext i8 %i.fv to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.gd ; 2 uses
  %i.gf = load i16, ptr %i.ge, align 4, !tbaa !8
  %i.gg = add i16 %i.gf, 1
  store i16 %i.gg, ptr %i.ge, align 4, !tbaa !8
  %i.gh = load i32, ptr %i.s, align 4, !tbaa !110
  %i.gi = load i32, ptr %i.w, align 8, !tbaa !41
  %i.gj = add i32 %i.gi, -1
  %i.gk = icmp eq i32 %i.gh, %i.gj
  br i1 %i.gk, label %bb.y, label %flush_pending.exit184

bb.y:                                             ; preds = %bb.x
  %i.gl = load i64, ptr %i.y, align 8, !tbaa !69  ; 3 uses
  %i.gm = icmp sgt i64 %i.gl, -1
  br i1 %i.gm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gn = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.go = and i64 %i.gl, 4294967295
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.go
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.gq = phi ptr [ %i.gp, %bb.z ], [ null, %bb.y ]
  %i.gr = load i32, ptr %i.j, align 4, !tbaa !68
  %i.gs = zext i32 %i.gr to i64
  %i.gt = sub nsw i64 %i.gs, %i.gl
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.gq, i64 noundef %i.gt, i32 noundef 0) #11
  %i.gu = load i32, ptr %i.j, align 4, !tbaa !68
  %i.gv = zext i32 %i.gu to i64
  store i64 %i.gv, ptr %i.y, align 8, !tbaa !69
  %i.gw = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.gy) #11
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 40 ; 3 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !53
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 32 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !95
  %spec.select.i183 = tail call i32 @llvm.umin.i32(i32 %i.ha, i32 %i.hc) ; 5 uses
  %i.hd = icmp eq i32 %spec.select.i183, 0
  br i1 %i.hd, label %flush_pending.exit184, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 24 ; 3 uses
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !94
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gy, i64 32 ; 4 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !54
  %i.hi = zext i32 %spec.select.i183 to i64       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hf, ptr align 1 %i.hh, i64 %i.hi, i1 false)
  %i.hj = load ptr, ptr %i.he, align 8, !tbaa !94
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hi
  store ptr %i.hk, ptr %i.he, align 8, !tbaa !94
  %i.hl = load ptr, ptr %i.hg, align 8, !tbaa !54
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hi
  store ptr %i.hm, ptr %i.hg, align 8, !tbaa !54
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gw, i64 40 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !106
  %i.hp = add i64 %i.ho, %i.hi
  store i64 %i.hp, ptr %i.hn, align 8, !tbaa !106
  %i.hq = load i32, ptr %i.hb, align 8, !tbaa !95
  %i.hr = sub i32 %i.hq, %spec.select.i183
  store i32 %i.hr, ptr %i.hb, align 8, !tbaa !95
  %i.hs = load i32, ptr %i.gz, align 8, !tbaa !53 ; 2 uses
  %i.ht = sub i32 %i.hs, %spec.select.i183
  store i32 %i.ht, ptr %i.gz, align 8, !tbaa !53
  %i.hu = icmp eq i32 %i.hs, %spec.select.i183
  br i1 %i.hu, label %bb.ac, label %flush_pending.exit184

bb.ac:                                            ; preds = %bb.ab
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !42
  store ptr %i.hw, ptr %i.hg, align 8, !tbaa !54
  br label %flush_pending.exit184

flush_pending.exit184:                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.hx = load i32, ptr %i.j, align 4, !tbaa !68
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.j, align 4, !tbaa !68
  %i.hz = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ia = add i32 %i.hz, -1
  store i32 %i.ia, ptr %i.a, align 4, !tbaa !70
  %i.ib = load ptr, ptr %0, align 8, !tbaa !19
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 32
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !95
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %.loopexit, label %.critedge.backedge

bb.ad:                                            ; preds = %bb.w
  store i32 1, ptr %i.x, align 8, !tbaa !74
  %i.if = load i32, ptr %i.j, align 4, !tbaa !68
  %i.ig = add i32 %i.if, 1
  store i32 %i.ig, ptr %i.j, align 4, !tbaa !68
  %i.ih = load i32, ptr %i.a, align 4, !tbaa !70
  %i.ii = add i32 %i.ih, -1
  store i32 %i.ii, ptr %i.a, align 4, !tbaa !70
  br label %.critedge.backedge

bb.ae:                                            ; preds = %bb.c
end_hunk_1
