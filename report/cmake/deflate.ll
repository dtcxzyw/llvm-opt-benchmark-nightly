inline.NumInlined: 41
inline.NumDeleted: 4
begin_hunk_0_@cm_zlib_deflateCopy:bb.a
  br label %deflateStateCheck.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  %i.bc = load i32, ptr %i.x, align 8, !tbaa !33
  %i.bd = shl i32 %i.bc, 1
  %i.be = zext i32 %i.bd to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.as, ptr align 1 %i.bb, i64 %i.be, i1 false)
  %i.bf = load ptr, ptr %i.af, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !40
  %i.bi = load i32, ptr %i.x, align 8, !tbaa !33
  %i.bj = zext i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.bh, i64 %i.bk, i1 false)
  %i.bl = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.bm = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !41
  %i.bo = load i32, ptr %i.ai, align 4, !tbaa !36
  %i.bp = zext i32 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %i.bn, i64 %i.bq, i1 false)
  %i.br = load ptr, ptr %i.ar, align 8, !tbaa !44
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !44
  %i.bu = load i32, ptr %i.ao, align 8, !tbaa !43
  %i.bv = shl i32 %i.bu, 2
  %i.bw = zext i32 %i.bv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.br, ptr align 1 %i.bt, i64 %i.bw, i1 false)
  %i.bx = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !89
  %i.ca = load ptr, ptr %i.bs, align 8, !tbaa !44
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.bx, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !89
  %i.cg = load i32, ptr %i.ao, align 8, !tbaa !43
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 5888
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !47
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 212
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 2904
  store ptr %i.ck, ptr %i.cl, align 8, !tbaa !120
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 2504
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 2928
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !121
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 2748
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 2952
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !122
  br label %deflateStateCheck.exit.thread

deflateStateCheck.exit.thread:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.g, %deflateStateCheck.exit, %bb.l, %bb.k
  %.0 = phi i32 [ 0, %bb.l ], [ -2, %deflateStateCheck.exit ], [ -4, %bb.k ], [ -4, %bb.g ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_fast(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 6 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 5888 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 15 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 5904 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.r = getelementptr i8, ptr %0, i64 1240
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.v = load i32, ptr %i.a, align 4, !tbaa !65
  %i.w = icmp ult i32 %i.v, 262
  br i1 %i.w, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.x = load i32, ptr %i.a, align 4, !tbaa !65   ; 3 uses
  %i.y = icmp ult i32 %i.x, 262
  %or.cond = and i1 %i.b, %i.y
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.x, 2
  br i1 %i.aa, label %.thread, label %.thread154thread-pre-split

.thread:                                          ; preds = %bb.b, %bb.e
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !70
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !38
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.af = load i32, ptr %i.f, align 4, !tbaa !63  ; 4 uses
  %i.ag = add i32 %i.af, 2
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !9
  %i.ak = zext i8 %i.aj to i32
  %i.al = xor i32 %i.ad, %i.ak
  %i.am = load i32, ptr %i.g, align 4, !tbaa !37
  %i.an = and i32 %i.al, %i.am                    ; 2 uses
  store i32 %i.an, ptr %i.c, align 8, !tbaa !70
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !53 ; 3 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.at = load i32, ptr %i.j, align 8, !tbaa !34
  %i.au = and i32 %i.at, %i.af
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  store i16 %i.ar, ptr %i.aw, align 2, !tbaa !53
  %i.ax = zext i16 %i.ar to i32                   ; 2 uses
  %i.ay = trunc i32 %i.af to i16
  store i16 %i.ay, ptr %i.aq, align 2, !tbaa !53
  %.not = icmp eq i16 %i.ar, 0
  br i1 %.not, label %.thread154thread-pre-split, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.az = sub i32 %i.af, %i.ax
  %i.ba = load i32, ptr %i.k, align 8, !tbaa !33
  %i.bb = add i32 %i.ba, -262
  %.not145 = icmp ugt i32 %i.az, %i.bb
  br i1 %.not145, label %.thread154thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %i.ax) ; 2 uses
  store i32 %i.bc, ptr %i.l, align 8, !tbaa !68
  br label %.thread154

.thread154thread-pre-split:                       ; preds = %.thread, %bb.f, %bb.e
  %.pr = load i32, ptr %i.l, align 8, !tbaa !68
  br label %.thread154

.thread154:                                       ; preds = %.thread154thread-pre-split, %bb.g
  %i.bd = phi i32 [ %.pr, %.thread154thread-pre-split ], [ %i.bc, %bb.g ] ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 2
  br i1 %i.be, label %bb.h, label %.split157

bb.h:                                             ; preds = %.thread154
  %i.bf = trunc i32 %i.bd to i8
  %i.bg = add i8 %i.bf, -3                        ; 2 uses
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !63
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !123
  %i.bj = sub i32 %i.bh, %i.bi                    ; 3 uses
  %i.bk = trunc i32 %i.bj to i16
  %i.bl = trunc i32 %i.bj to i8
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.bn = load i32, ptr %i.n, align 4, !tbaa !118 ; 2 uses
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.n, align 4, !tbaa !118
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !9
  %i.br = lshr i32 %i.bj, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.bu = load i32, ptr %i.n, align 4, !tbaa !118 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.n, align 4, !tbaa !118
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !9
  %i.by = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.bz = load i32, ptr %i.n, align 4, !tbaa !118 ; 2 uses
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.n, align 4, !tbaa !118
  %i.cb = zext i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  store i8 %i.bg, ptr %i.cc, align 1, !tbaa !9
  %i.cd = add i16 %i.bk, -1                       ; 3 uses
  %i.ce = zext i8 %i.bg to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @cm_zlib__length_code, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !9
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.r, i64 %i.ch ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !9
  %i.ck = add i16 %i.cj, 1
  store i16 %i.ck, ptr %i.ci, align 4, !tbaa !9
  %i.cl = icmp ult i16 %i.cd, 256
  %2 = zext nneg i16 %i.cd to i64
  %3 = getelementptr inbounds nuw i8, ptr @cm_zlib__dist_code, i64 %2
  %4 = lshr i16 %i.cd, 7
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr @cm_zlib__dist_code, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 256
  %.in.in = select i1 %i.cl, ptr %3, ptr %7
  %.in = load i8, ptr %.in.in, align 1, !tbaa !9
  %8 = zext i8 %.in to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %8 ; 2 uses
  %10 = load i16, ptr %9, align 4, !tbaa !9
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4, !tbaa !9
  %12 = load i32, ptr %i.n, align 4, !tbaa !118
  %13 = load i32, ptr %i.p, align 8, !tbaa !48
  %14 = icmp eq i32 %12, %13                      ; 2 uses
  %15 = load i32, ptr %i.l, align 8, !tbaa !68    ; 4 uses
  %16 = load i32, ptr %i.a, align 4, !tbaa !65
  %17 = sub i32 %16, %15                          ; 2 uses
  store i32 %17, ptr %i.a, align 4, !tbaa !65
  %18 = load i32, ptr %i.t, align 8, !tbaa !56
  %.not146 = icmp ule i32 %15, %18
  %19 = icmp ugt i32 %17, 2
  %or.cond149 = select i1 %.not146, i1 %19, i1 false
  br i1 %or.cond149, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.cm = add i32 %15, -1                         ; 2 uses
  store i32 %i.cm, ptr %i.l, align 8, !tbaa !68
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !38
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.cp = load i32, ptr %i.g, align 4, !tbaa !37
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !41
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.cs = load i32, ptr %i.j, align 8, !tbaa !34
  %.promoted = load i32, ptr %i.f, align 4, !tbaa !63
  %.promoted158 = load i32, ptr %i.c, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.ct = phi i32 [ %i.dm, %bb.j ], [ %i.cm, %bb.i ]
  %i.cu = phi i32 [ %i.de, %bb.j ], [ %.promoted158, %bb.i ]
  %i.cv = phi i32 [ %i.cw, %bb.j ], [ %.promoted, %bb.i ] ; 3 uses
  %i.cw = add i32 %i.cv, 1                        ; 4 uses
  store i32 %i.cw, ptr %i.f, align 4, !tbaa !63
  %i.cx = shl i32 %i.cu, %i.cn
  %i.cy = add i32 %i.cv, 3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9
  %i.dc = zext i8 %i.db to i32
  %i.dd = xor i32 %i.cx, %i.dc
  %i.de = and i32 %i.dd, %i.cp                    ; 3 uses
  store i32 %i.de, ptr %i.c, align 8, !tbaa !70
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.df ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !53
  %i.di = and i32 %i.cs, %i.cw
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.dj
  store i16 %i.dh, ptr %i.dk, align 2, !tbaa !53
  %i.dl = trunc i32 %i.cw to i16
  store i16 %i.dl, ptr %i.dg, align 2, !tbaa !53
  %i.dm = add i32 %i.ct, -1                       ; 3 uses
  store i32 %i.dm, ptr %i.l, align 8, !tbaa !68
  %.not147 = icmp eq i32 %i.dm, 0
  br i1 %.not147, label %.split, label %bb.j, !llvm.loop !124

.split:                                           ; preds = %bb.j
  %i.dn = add i32 %i.cv, 2                        ; 2 uses
  store i32 %i.dn, ptr %i.f, align 4, !tbaa !63
  br i1 %14, label %bb.l, label %.backedge

.split157:                                        ; preds = %.thread154
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.dp = load i32, ptr %i.f, align 4, !tbaa !63
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9   ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.du = load i32, ptr %i.n, align 4, !tbaa !118 ; 2 uses
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.n, align 4, !tbaa !118
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  store i8 0, ptr %i.dx, align 1, !tbaa !9
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !118 ; 2 uses
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.n, align 4, !tbaa !118
  %i.eb = zext i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.eb
  store i8 0, ptr %i.ec, align 1, !tbaa !9
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.ee = load i32, ptr %i.n, align 4, !tbaa !118 ; 2 uses
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.n, align 4, !tbaa !118
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  store i8 %i.ds, ptr %i.eh, align 1, !tbaa !9
  %i.ei = zext i8 %i.ds to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !9
  %i.el = add i16 %i.ek, 1
  store i16 %i.el, ptr %i.ej, align 4, !tbaa !9
  %i.em = load i32, ptr %i.n, align 4, !tbaa !118
  %i.en = load i32, ptr %i.p, align 8, !tbaa !48
  %i.eo = icmp eq i32 %i.em, %i.en
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !65
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !65
  %i.er = load i32, ptr %i.f, align 4, !tbaa !63
  %i.es = add i32 %i.er, 1                        ; 2 uses
  store i32 %i.es, ptr %i.f, align 4, !tbaa !63
  br i1 %i.eo, label %bb.l, label %.backedge

.backedge:                                        ; preds = %.split157, %.split, %flush_pending.exit, %bb.k
  br label %bb.b

bb.k:                                             ; preds = %bb.h
  %i.et = load i32, ptr %i.f, align 4, !tbaa !63
  %i.eu = add i32 %i.et, %15                      ; 4 uses
  store i32 %i.eu, ptr %i.f, align 4, !tbaa !63
  store i32 0, ptr %i.l, align 8, !tbaa !68
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !39  ; 2 uses
  %i.ew = zext i32 %i.eu to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  store i32 %i.ez, ptr %i.c, align 8, !tbaa !70
  %i.fa = load i32, ptr %i.d, align 8, !tbaa !38
  %i.fb = shl i32 %i.ez, %i.fa
  %i.fc = add i32 %i.eu, 1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !9
  %i.fg = zext i8 %i.ff to i32
  %i.fh = xor i32 %i.fb, %i.fg
  %i.fi = load i32, ptr %i.g, align 4, !tbaa !37
  %i.fj = and i32 %i.fh, %i.fi
  store i32 %i.fj, ptr %i.c, align 8, !tbaa !70
  br i1 %14, label %bb.l, label %.backedge

bb.l:                                             ; preds = %.split157, %.split, %bb.k
  %i.fk = phi i32 [ %i.es, %.split157 ], [ %i.dn, %.split ], [ %i.eu, %bb.k ]
  %i.fl = load i64, ptr %i.u, align 8, !tbaa !64  ; 3 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  br i1 %i.fm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.fo = and i64 %i.fl, 4294967295
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fq = phi ptr [ %i.fp, %bb.m ], [ null, %bb.l ]
  %i.fr = zext i32 %i.fk to i64
  %i.fs = sub nsw i64 %i.fr, %i.fl
  tail call void @cm_zlib__tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.fq, i64 noundef %i.fs, i32 noundef 0) #11
  %i.ft = load i32, ptr %i.f, align 4, !tbaa !63
  %i.fu = zext i32 %i.ft to i64
  store i64 %i.fu, ptr %i.u, align 8, !tbaa !64
  %i.fv = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !19 ; 4 uses
  tail call void @cm_zlib__tr_flush_bits(ptr noundef %i.fx) #11
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40 ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !88
  %i.ga = trunc i64 %i.fz to i32
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fv, i64 32 ; 3 uses
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !97
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.gc, i32 %i.ga) ; 3 uses
  %i.gd = icmp eq i32 %spec.select.i, 0
  br i1 %i.gd, label %flush_pending.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 3 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !96
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 4 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !89
  %i.gi = zext i32 %spec.select.i to i64          ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gf, ptr align 1 %i.gh, i64 %i.gi, i1 false)
  %i.gj = load ptr, ptr %i.ge, align 8, !tbaa !96
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gi
  store ptr %i.gk, ptr %i.ge, align 8, !tbaa !96
  %i.gl = load ptr, ptr %i.gg, align 8, !tbaa !89
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gi
  store ptr %i.gm, ptr %i.gg, align 8, !tbaa !89
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fv, i64 40 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !98
  %i.gp = add i64 %i.go, %i.gi
  store i64 %i.gp, ptr %i.gn, align 8, !tbaa !98
  %i.gq = load i32, ptr %i.gb, align 8, !tbaa !97
  %i.gr = sub i32 %i.gq, %spec.select.i
  store i32 %i.gr, ptr %i.gb, align 8, !tbaa !97
  %i.gs = load i64, ptr %i.fy, align 8, !tbaa !88 ; 2 uses
  %i.gt = sub i64 %i.gs, %i.gi
  store i64 %i.gt, ptr %i.fy, align 8, !tbaa !88
  %i.gu = icmp eq i64 %i.gs, %i.gi
  br i1 %i.gu, label %bb.p, label %flush_pending.exit

bb.p:                                             ; preds = %bb.o
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !44
  store ptr %i.gw, ptr %i.gg, align 8, !tbaa !89
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %bb.n, %bb.o, %bb.p
  %i.gx = load ptr, ptr %0, align 8, !tbaa !20
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 32
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !97
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %.loopexit, label %.backedge

bb.q:                                             ; preds = %bb.d
  %i.hb = load i32, ptr %i.f, align 4, !tbaa !63  ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.hb, i32 2)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %spec.select, ptr %i.hc, align 4, !tbaa !66
  %i.hd = icmp eq i32 %1, 4
  br i1 %i.hd, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.he = load i64, ptr %i.u, align 8, !tbaa !64  ; 3 uses
  %i.hf = icmp sgt i64 %i.he, -1
  br i1 %i.hf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hg = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.hh = and i64 %i.he, 4294967295
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hh
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hj = phi ptr [ %i.hi, %bb.s ], [ null, %bb.r ]
  %i.hk = zext i32 %i.hb to i64
  %i.hl = sub nsw i64 %i.hk, %i.he
  tail call void @cm_zlib__tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.hj, i64 noundef %i.hl, i32 noundef 1) #11
  %i.hm = load i32, ptr %i.f, align 4, !tbaa !63
  %i.hn = zext i32 %i.hm to i64
  store i64 %i.hn, ptr %i.u, align 8, !tbaa !64
  %i.ho = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !19 ; 4 uses
  tail call void @cm_zlib__tr_flush_bits(ptr noundef %i.hq) #11
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 40 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !88
  %i.ht = trunc i64 %i.hs to i32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 32 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !97
  %spec.select.i150 = tail call i32 @llvm.umin.i32(i32 %i.hv, i32 %i.ht) ; 3 uses
  %i.hw = icmp eq i32 %spec.select.i150, 0
  br i1 %i.hw, label %flush_pending.exit151, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !96
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 32 ; 4 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !89
  %i.ib = zext i32 %spec.select.i150 to i64       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hy, ptr align 1 %i.ia, i64 %i.ib, i1 false)
  %i.ic = load ptr, ptr %i.hx, align 8, !tbaa !96
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %i.ib
  store ptr %i.id, ptr %i.hx, align 8, !tbaa !96
  %i.ie = load ptr, ptr %i.hz, align 8, !tbaa !89
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.ib
  store ptr %i.if, ptr %i.hz, align 8, !tbaa !89
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ho, i64 40 ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !98
  %i.ii = add i64 %i.ih, %i.ib
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !98
  %i.ij = load i32, ptr %i.hu, align 8, !tbaa !97
  %i.ik = sub i32 %i.ij, %spec.select.i150
  store i32 %i.ik, ptr %i.hu, align 8, !tbaa !97
  %i.il = load i64, ptr %i.hr, align 8, !tbaa !88 ; 2 uses
  %i.im = sub i64 %i.il, %i.ib
  store i64 %i.im, ptr %i.hr, align 8, !tbaa !88
  %i.in = icmp eq i64 %i.il, %i.ib
  br i1 %i.in, label %bb.v, label %flush_pending.exit151

bb.v:                                             ; preds = %bb.u
  %i.io = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !44
  store ptr %i.ip, ptr %i.hz, align 8, !tbaa !89
  br label %flush_pending.exit151

flush_pending.exit151:                            ; preds = %bb.t, %bb.u, %bb.v
  %i.iq = load ptr, ptr %0, align 8, !tbaa !20
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 32
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !97
  %i.it = icmp eq i32 %i.is, 0
  %. = select i1 %i.it, i32 2, i32 3
  br label %.loopexit

bb.w:                                             ; preds = %bb.q
  %i.iu = load i32, ptr %i.n, align 4, !tbaa !118
  %.not148 = icmp eq i32 %i.iu, 0
  br i1 %.not148, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.iv = load i64, ptr %i.u, align 8, !tbaa !64  ; 3 uses
  %i.iw = icmp sgt i64 %i.iv, -1
  br i1 %i.iw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ix = load ptr, ptr %i.e, align 8, !tbaa !39
  %i.iy = and i64 %i.iv, 4294967295
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iy
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ja = phi ptr [ %i.iz, %bb.y ], [ null, %bb.x ]
  %i.jb = zext i32 %i.hb to i64
  %i.jc = sub nsw i64 %i.jb, %i.iv
  tail call void @cm_zlib__tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.ja, i64 noundef %i.jc, i32 noundef 0) #11
  %i.jd = load i32, ptr %i.f, align 4, !tbaa !63
  %i.je = zext i32 %i.jd to i64
  store i64 %i.je, ptr %i.u, align 8, !tbaa !64
  %i.jf = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !19 ; 4 uses
  tail call void @cm_zlib__tr_flush_bits(ptr noundef %i.jh) #11
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 40 ; 3 uses
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !88
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jf, i64 32 ; 3 uses
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !97
  %spec.select.i152 = tail call i32 @llvm.umin.i32(i32 %i.jm, i32 %i.jk) ; 3 uses
  %i.jn = icmp eq i32 %spec.select.i152, 0
  br i1 %i.jn, label %flush_pending.exit153, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jf, i64 24 ; 3 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !96
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jh, i64 32 ; 4 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !89
  %i.js = zext i32 %spec.select.i152 to i64       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jp, ptr align 1 %i.jr, i64 %i.js, i1 false)
  %i.jt = load ptr, ptr %i.jo, align 8, !tbaa !96
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.js
  store ptr %i.ju, ptr %i.jo, align 8, !tbaa !96
end_hunk_0
begin_hunk_1_@deflate_fast:bb.a
.loopexit:                                        ; preds = %flush_pending.exit, %bb.c, %flush_pending.exit153, %flush_pending.exit151, %bb.ac
  %.0 = phi i32 [ 1, %bb.ac ], [ %., %flush_pending.exit151 ], [ 0, %flush_pending.exit153 ], [ 0, %bb.c ], [ 0, %flush_pending.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @deflate_slow(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 9 uses
  %i.b = icmp eq i32 %1, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 18 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 5888 ; 9 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 21 uses
  %i.t = getelementptr i8, ptr %0, i64 1240
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5904 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.z = load i32, ptr %i.a, align 4, !tbaa !65
  %i.aa = icmp ult i32 %i.z, 262
  br i1 %i.aa, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %.critedge
  %.pre = load i32, ptr %i.c, align 8, !tbaa !68
  %.pre202 = load i32, ptr %i.e, align 8, !tbaa !123
  br label %.thread

bb.b:                                             ; preds = %.critedge
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !65  ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 262
  %or.cond = and i1 %i.b, %i.ac
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ugt i32 %i.ab, 2
  %.pre201 = load i32, ptr %i.c, align 8, !tbaa !68 ; 3 uses
  %.pre203 = load i32, ptr %i.e, align 8, !tbaa !123 ; 2 uses
  br i1 %i.ae, label %.thread, label %.thread196

.thread196:                                       ; preds = %bb.d
  store i32 %.pre201, ptr %i.d, align 8, !tbaa !67
  store i32 %.pre203, ptr %i.f, align 4, !tbaa !125
  store i32 2, ptr %i.c, align 8, !tbaa !68
  br label %bb.l

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.af = phi i32 [ %.pre202, %..thread_crit_edge ], [ %.pre203, %bb.d ]
  %i.ag = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre201, %bb.d ] ; 3 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !70
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !38
  %i.aj = shl i32 %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.al = load i32, ptr %i.j, align 4, !tbaa !63  ; 4 uses
  %i.am = add i32 %i.al, 2
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9
  %i.aq = zext i8 %i.ap to i32
  %i.ar = xor i32 %i.aj, %i.aq
  %i.as = load i32, ptr %i.k, align 4, !tbaa !37
  %i.at = and i32 %i.ar, %i.as                    ; 2 uses
  store i32 %i.at, ptr %i.g, align 8, !tbaa !70
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !53 ; 3 uses
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.az = load i32, ptr %i.n, align 8, !tbaa !34
  %i.ba = and i32 %i.az, %i.al
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.bb
  store i16 %i.ax, ptr %i.bc, align 2, !tbaa !53
  %i.bd = zext i16 %i.ax to i32                   ; 2 uses
  %i.be = trunc i32 %i.al to i16
  store i16 %i.be, ptr %i.aw, align 2, !tbaa !53
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !67
  store i32 %i.af, ptr %i.f, align 4, !tbaa !125
  store i32 2, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq i16 %i.ax, 0
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bf = load i32, ptr %i.o, align 8, !tbaa !56
  %i.bg = icmp ult i32 %i.ag, %i.bf
  br i1 %i.bg, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.bh = sub i32 %i.al, %i.bd
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !33
  %i.bj = add i32 %i.bi, -262
  %.not183 = icmp ugt i32 %i.bh, %i.bj
  br i1 %.not183, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %i.bd) ; 5 uses
  store i32 %i.bk, ptr %i.c, align 8, !tbaa !68
  %i.bl = icmp ult i32 %i.bk, 6
  br i1 %i.bl, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !50
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = icmp eq i32 %i.bk, 3
  br i1 %i.bo, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %i.j, align 4, !tbaa !63
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !123
  %i.br = sub i32 %i.bp, %i.bq
  %i.bs = icmp ugt i32 %i.br, 4096
  br i1 %i.bs, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j, %bb.h
  store i32 2, ptr %i.c, align 8, !tbaa !68
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.f, %bb.k, %bb.j, %bb.i, %bb.g
  %.ph = phi i32 [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.k ], [ 3, %bb.j ], [ %i.bk, %bb.i ], [ %i.bk, %bb.g ]
  %.pr = load i32, ptr %i.d, align 8, !tbaa !67
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %.thread196, %.thread
  %i.bt = phi i32 [ %.pr, %thread-pre-split ], [ %.pre201, %.thread196 ], [ %i.ag, %.thread ] ; 3 uses
  %i.bu = phi i32 [ %.ph, %thread-pre-split ], [ 2, %.thread196 ], [ 2, %.thread ]
  %i.bv = icmp ult i32 %i.bt, 3
  %.not184 = icmp ugt i32 %i.bu, %i.bt
  %or.cond214 = or i1 %i.bv, %.not184
  br i1 %or.cond214, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load i32, ptr %i.j, align 4, !tbaa !63  ; 2 uses
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !65
  %i.by = add i32 %i.bw, -3
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = trunc i32 %i.bt to i8
  %i.cb = add i8 %i.ca, -3                        ; 2 uses
  %i.cc = load i32, ptr %i.f, align 4, !tbaa !125
  %i.cd = xor i32 %i.cc, -1
  %i.ce = add i32 %i.bw, %i.cd                    ; 3 uses
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = trunc i32 %i.ce to i8
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !118 ; 2 uses
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.s, align 4, !tbaa !118
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !9
  %i.cm = lshr i32 %i.ce, 8
  %i.cn = trunc i32 %i.cm to i8
  %i.co = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.cp = load i32, ptr %i.s, align 4, !tbaa !118 ; 2 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.s, align 4, !tbaa !118
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !9
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.cu = load i32, ptr %i.s, align 4, !tbaa !118 ; 2 uses
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.s, align 4, !tbaa !118
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw
  store i8 %i.cb, ptr %i.cx, align 1, !tbaa !9
  %i.cy = add i16 %i.cf, -1                       ; 3 uses
  %i.cz = zext i8 %i.cb to i64
  %i.da = getelementptr inbounds nuw i8, ptr @cm_zlib__length_code, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.t, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !9
  %i.df = add i16 %i.de, 1
  store i16 %i.df, ptr %i.dd, align 4, !tbaa !9
  %i.dg = icmp ult i16 %i.cy, 256
  %2 = zext nneg i16 %i.cy to i64
  %3 = getelementptr inbounds nuw i8, ptr @cm_zlib__dist_code, i64 %2
  %4 = lshr i16 %i.cy, 7
  %5 = zext nneg i16 %4 to i64
  %6 = getelementptr inbounds nuw i8, ptr @cm_zlib__dist_code, i64 %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 256
  %.in.in = select i1 %i.dg, ptr %3, ptr %7
  %.in = load i8, ptr %.in.in, align 1, !tbaa !9
  %8 = zext i8 %.in to i64
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %8 ; 2 uses
  %10 = load i16, ptr %9, align 4, !tbaa !9
  %11 = add i16 %10, 1
  store i16 %11, ptr %9, align 4, !tbaa !9
  %12 = load i32, ptr %i.s, align 4, !tbaa !118
  %13 = load i32, ptr %i.v, align 8, !tbaa !48
  %14 = load i32, ptr %i.d, align 8, !tbaa !67    ; 2 uses
  %15 = load i32, ptr %i.a, align 4, !tbaa !65
  %reass.sub = sub i32 %15, %14
  %16 = add i32 %reass.sub, 1
  store i32 %16, ptr %i.a, align 4, !tbaa !65
  %17 = add i32 %14, -2                           ; 2 uses
  store i32 %17, ptr %i.d, align 8, !tbaa !67
  %.promoted = load i32, ptr %i.j, align 4, !tbaa !63
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.dh = phi i32 [ %i.eg, %bb.p ], [ %17, %bb.m ]
  %i.di = phi i32 [ %i.dj, %bb.p ], [ %.promoted, %bb.m ] ; 3 uses
  %i.dj = add i32 %i.di, 1                        ; 5 uses
  store i32 %i.dj, ptr %i.j, align 4, !tbaa !63
  %.not186 = icmp ugt i32 %i.dj, %i.bz
  br i1 %.not186, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !70
  %i.dl = load i32, ptr %i.h, align 8, !tbaa !38
  %i.dm = shl i32 %i.dk, %i.dl
  %i.dn = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.do = add i32 %i.di, 3
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !9
  %i.ds = zext i8 %i.dr to i32
  %i.dt = xor i32 %i.dm, %i.ds
  %i.du = load i32, ptr %i.k, align 4, !tbaa !37
  %i.dv = and i32 %i.dt, %i.du                    ; 2 uses
  store i32 %i.dv, ptr %i.g, align 8, !tbaa !70
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.dx = zext i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !53
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !40
  %i.eb = load i32, ptr %i.n, align 8, !tbaa !34
  %i.ec = and i32 %i.eb, %i.dj
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.ed
  store i16 %i.dz, ptr %i.ee, align 2, !tbaa !53
  %i.ef = trunc i32 %i.dj to i16
  store i16 %i.ef, ptr %i.dy, align 2, !tbaa !53
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.eg = add i32 %i.dh, -1                       ; 3 uses
  store i32 %i.eg, ptr %i.d, align 8, !tbaa !67
  %.not187 = icmp eq i32 %i.eg, 0
  br i1 %.not187, label %bb.q, label %bb.n, !llvm.loop !126

bb.q:                                             ; preds = %bb.p
  %i.eh = icmp eq i32 %12, %13
  store i32 0, ptr %i.w, align 8, !tbaa !69
  store i32 2, ptr %i.c, align 8, !tbaa !68
  %i.ei = add i32 %i.di, 2                        ; 2 uses
  store i32 %i.ei, ptr %i.j, align 4, !tbaa !63
  br i1 %i.eh, label %bb.r, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.q, %flush_pending.exit, %bb.ad, %flush_pending.exit191
  br label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ej = load i64, ptr %i.x, align 8, !tbaa !64  ; 3 uses
  %i.ek = icmp sgt i64 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.em = and i64 %i.ej, 4294967295
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.eo = phi ptr [ %i.en, %bb.s ], [ null, %bb.r ]
  %i.ep = zext i32 %i.ei to i64
  %i.eq = sub nsw i64 %i.ep, %i.ej
  tail call void @cm_zlib__tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.eo, i64 noundef %i.eq, i32 noundef 0) #11
  %i.er = load i32, ptr %i.j, align 4, !tbaa !63
  %i.es = zext i32 %i.er to i64
  store i64 %i.es, ptr %i.x, align 8, !tbaa !64
  %i.et = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !19 ; 4 uses
  tail call void @cm_zlib__tr_flush_bits(ptr noundef %i.ev) #11
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40 ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !88
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 3 uses
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !97
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.fa, i32 %i.ey) ; 3 uses
  %i.fb = icmp eq i32 %spec.select.i, 0
  br i1 %i.fb, label %flush_pending.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fc = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !96
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 4 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fg = zext i32 %spec.select.i to i64          ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fd, ptr align 1 %i.ff, i64 %i.fg, i1 false)
  %i.fh = load ptr, ptr %i.fc, align 8, !tbaa !96
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fg
  store ptr %i.fi, ptr %i.fc, align 8, !tbaa !96
  %i.fj = load ptr, ptr %i.fe, align 8, !tbaa !89
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  store ptr %i.fk, ptr %i.fe, align 8, !tbaa !89
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !98
  %i.fn = add i64 %i.fm, %i.fg
  store i64 %i.fn, ptr %i.fl, align 8, !tbaa !98
  %i.fo = load i32, ptr %i.ez, align 8, !tbaa !97
  %i.fp = sub i32 %i.fo, %spec.select.i
  store i32 %i.fp, ptr %i.ez, align 8, !tbaa !97
  %i.fq = load i64, ptr %i.ew, align 8, !tbaa !88 ; 2 uses
  %i.fr = sub i64 %i.fq, %i.fg
  store i64 %i.fr, ptr %i.ew, align 8, !tbaa !88
  %i.fs = icmp eq i64 %i.fq, %i.fg
  br i1 %i.fs, label %bb.v, label %flush_pending.exit

bb.v:                                             ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !44
  store ptr %i.fu, ptr %i.fe, align 8, !tbaa !89
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %bb.t, %bb.u, %bb.v
  %i.fv = load ptr, ptr %0, align 8, !tbaa !20
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !97
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %.loopexit, label %.critedge.backedge

bb.w:                                             ; preds = %bb.l
  %i.fz = load i32, ptr %i.w, align 8, !tbaa !69
  %.not185 = icmp eq i32 %i.fz, 0
  br i1 %.not185, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ga = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.gb = load i32, ptr %i.j, align 4, !tbaa !63
  %i.gc = add i32 %i.gb, -1
  %i.gd = zext i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !9   ; 2 uses
  %i.gg = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.gh = load i32, ptr %i.s, align 4, !tbaa !118 ; 2 uses
  %i.gi = add i32 %i.gh, 1
  store i32 %i.gi, ptr %i.s, align 4, !tbaa !118
  %i.gj = zext i32 %i.gh to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gj
  store i8 0, ptr %i.gk, align 1, !tbaa !9
  %i.gl = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.gm = load i32, ptr %i.s, align 4, !tbaa !118 ; 2 uses
  %i.gn = add i32 %i.gm, 1
  store i32 %i.gn, ptr %i.s, align 4, !tbaa !118
  %i.go = zext i32 %i.gm to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.go
  store i8 0, ptr %i.gp, align 1, !tbaa !9
  %i.gq = load ptr, ptr %i.r, align 8, !tbaa !47
  %i.gr = load i32, ptr %i.s, align 4, !tbaa !118 ; 2 uses
  %i.gs = add i32 %i.gr, 1
  store i32 %i.gs, ptr %i.s, align 4, !tbaa !118
  %i.gt = zext i32 %i.gr to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gt
  store i8 %i.gf, ptr %i.gu, align 1, !tbaa !9
  %i.gv = zext i8 %i.gf to i64
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.gv ; 2 uses
  %i.gx = load i16, ptr %i.gw, align 4, !tbaa !9
  %i.gy = add i16 %i.gx, 1
  store i16 %i.gy, ptr %i.gw, align 4, !tbaa !9
  %i.gz = load i32, ptr %i.s, align 4, !tbaa !118
  %i.ha = load i32, ptr %i.v, align 8, !tbaa !48
  %i.hb = icmp eq i32 %i.gz, %i.ha
  br i1 %i.hb, label %bb.y, label %flush_pending.exit191

bb.y:                                             ; preds = %bb.x
  %i.hc = load i64, ptr %i.x, align 8, !tbaa !64  ; 3 uses
  %i.hd = icmp sgt i64 %i.hc, -1
  br i1 %i.hd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.he = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.hf = and i64 %i.hc, 4294967295
  %i.hg = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hf
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.hh = phi ptr [ %i.hg, %bb.z ], [ null, %bb.y ]
  %i.hi = load i32, ptr %i.j, align 4, !tbaa !63
  %i.hj = zext i32 %i.hi to i64
  %i.hk = sub nsw i64 %i.hj, %i.hc
  tail call void @cm_zlib__tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.hh, i64 noundef %i.hk, i32 noundef 0) #11
  %i.hl = load i32, ptr %i.j, align 4, !tbaa !63
  %i.hm = zext i32 %i.hl to i64
  store i64 %i.hm, ptr %i.x, align 8, !tbaa !64
  %i.hn = load ptr, ptr %0, align 8, !tbaa !20    ; 4 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 56
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !19 ; 4 uses
  tail call void @cm_zlib__tr_flush_bits(ptr noundef %i.hp) #11
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 40 ; 3 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !88
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 32 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !97
  %spec.select.i190 = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 %i.hs) ; 3 uses
  %i.hv = icmp eq i32 %spec.select.i190, 0
  br i1 %i.hv, label %flush_pending.exit191, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 3 uses
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !96
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 4 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !89
  %i.ia = zext i32 %spec.select.i190 to i64       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hx, ptr align 1 %i.hz, i64 %i.ia, i1 false)
  %i.ib = load ptr, ptr %i.hw, align 8, !tbaa !96
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 %i.ia
  store ptr %i.ic, ptr %i.hw, align 8, !tbaa !96
  %i.id = load ptr, ptr %i.hy, align 8, !tbaa !89
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.ia
  store ptr %i.ie, ptr %i.hy, align 8, !tbaa !89
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 40 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !98
  %i.ih = add i64 %i.ig, %i.ia
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !98
  %i.ii = load i32, ptr %i.ht, align 8, !tbaa !97
  %i.ij = sub i32 %i.ii, %spec.select.i190
  store i32 %i.ij, ptr %i.ht, align 8, !tbaa !97
  %i.ik = load i64, ptr %i.hq, align 8, !tbaa !88 ; 2 uses
  %i.il = sub i64 %i.ik, %i.ia
  store i64 %i.il, ptr %i.hq, align 8, !tbaa !88
  %i.im = icmp eq i64 %i.ik, %i.ia
  br i1 %i.im, label %bb.ac, label %flush_pending.exit191

bb.ac:                                            ; preds = %bb.ab
  %i.in = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !44
  store ptr %i.io, ptr %i.hy, align 8, !tbaa !89
  br label %flush_pending.exit191

flush_pending.exit191:                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.ip = load i32, ptr %i.j, align 4, !tbaa !63
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.j, align 4, !tbaa !63
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !65
  %i.is = add i32 %i.ir, -1
  store i32 %i.is, ptr %i.a, align 4, !tbaa !65
  %i.it = load ptr, ptr %0, align 8, !tbaa !20
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 32
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !97
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %.loopexit, label %.critedge.backedge
end_hunk_1
