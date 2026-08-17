inline.NumInlined: 42
inline.NumDeleted: 4
begin_hunk_0_@deflateCopy:bb.a
  %i.bo = icmp ugt i32 %i.bn, %.pre
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.bp = phi i32 [ %.pre, %bb.n ], [ %i.bn, %bb.m ]
  %i.bq = zext i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.be, ptr align 2 %i.bg, i64 %i.br, i1 false)
  %i.bs = load ptr, ptr %i.al, align 8, !tbaa !39
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !39
  %i.bv = load i32, ptr %i.ai, align 4, !tbaa !34
  %i.bw = zext i32 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bs, ptr align 2 %i.bu, i64 %i.bx, i1 false)
  %i.by = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !88
  %i.cb = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !42
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.by, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !88
  %i.ci = load ptr, ptr %i.bz, align 8, !tbaa !88
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !87
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr align 1 %i.ci, i64 %i.ck, i1 false)
  %i.cl = load ptr, ptr %i.ar, align 8, !tbaa !42
  %i.cm = load i32, ptr %i.ao, align 8, !tbaa !41
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.s, i64 5888
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !45
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 5888
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !45
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 5900
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !119
  %i.cu = zext i32 %i.ct to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %i.cr, i64 %i.cu, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 212
  %i.cw = getelementptr inbounds nuw i8, ptr %i.s, i64 2904
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !121
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 2504
  %i.cy = getelementptr inbounds nuw i8, ptr %i.s, i64 2928
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !122
  %i.cz = getelementptr inbounds nuw i8, ptr %i.s, i64 2748
  %i.da = getelementptr inbounds nuw i8, ptr %i.s, i64 2952
  store ptr %i.cz, ptr %i.da, align 8, !tbaa !123
  br label %deflateStateCheck.exit.thread

deflateStateCheck.exit.thread:                    ; preds = %bb.d, %bb.e, %bb.f, %bb.b, %bb.c, %bb.a, %bb.g, %deflateStateCheck.exit, %bb.o, %bb.k
  %.0 = phi i32 [ 0, %bb.o ], [ -2, %deflateStateCheck.exit ], [ -4, %bb.k ], [ -4, %bb.g ], [ -2, %bb.a ], [ -2, %bb.c ], [ -2, %bb.b ], [ -2, %bb.f ], [ -2, %bb.e ], [ -2, %bb.d ]
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
  %i.v = load i32, ptr %i.a, align 4, !tbaa !64
  %i.w = icmp ult i32 %i.v, 262
  br i1 %i.w, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.x = load i32, ptr %i.a, align 4, !tbaa !64   ; 3 uses
  %i.y = icmp ult i32 %i.x, 262
  %or.cond = and i1 %i.b, %i.y
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq i32 %i.x, 0
  br i1 %i.z, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp ugt i32 %i.x, 2
  br i1 %i.aa, label %.thread, label %.thread152thread-pre-split

.thread:                                          ; preds = %bb.b, %bb.e
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !69
  %i.ac = load i32, ptr %i.d, align 8, !tbaa !36
  %i.ad = shl i32 %i.ab, %i.ac
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.af = load i32, ptr %i.f, align 4, !tbaa !62  ; 4 uses
  %i.ag = add i32 %i.af, 2
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %i.ak = zext i8 %i.aj to i32
  %i.al = xor i32 %i.ad, %i.ak
  %i.am = load i32, ptr %i.g, align 4, !tbaa !35
  %i.an = and i32 %i.al, %i.am                    ; 2 uses
  store i32 %i.an, ptr %i.c, align 8, !tbaa !69
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.ap = zext i32 %i.an to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %i.ap ; 2 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !51 ; 3 uses
  %i.as = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.at = load i32, ptr %i.j, align 8, !tbaa !32
  %i.au = and i32 %i.at, %i.af
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.av
  store i16 %i.ar, ptr %i.aw, align 2, !tbaa !51
  %i.ax = zext i16 %i.ar to i32                   ; 2 uses
  %i.ay = trunc i32 %i.af to i16
  store i16 %i.ay, ptr %i.aq, align 2, !tbaa !51
  %.not = icmp eq i16 %i.ar, 0
  br i1 %.not, label %.thread152thread-pre-split, label %bb.f

bb.f:                                             ; preds = %.thread
  %i.az = sub i32 %i.af, %i.ax
  %i.ba = load i32, ptr %i.k, align 8, !tbaa !31
  %i.bb = add i32 %i.ba, -262
  %.not145 = icmp ugt i32 %i.az, %i.bb
  br i1 %.not145, label %.thread152thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %i.ax) ; 2 uses
  store i32 %i.bc, ptr %i.l, align 8, !tbaa !67
  br label %.thread152

.thread152thread-pre-split:                       ; preds = %.thread, %bb.f, %bb.e
  %.pr = load i32, ptr %i.l, align 8, !tbaa !67
  br label %.thread152

.thread152:                                       ; preds = %.thread152thread-pre-split, %bb.g
  %i.bd = phi i32 [ %.pr, %.thread152thread-pre-split ], [ %i.bc, %bb.g ] ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 2
  br i1 %i.be, label %bb.h, label %.split155

bb.h:                                             ; preds = %.thread152
  %i.bf = trunc i32 %i.bd to i8
  %i.bg = add i8 %i.bf, -3                        ; 2 uses
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !62
  %i.bi = load i32, ptr %i.q, align 8, !tbaa !124
  %i.bj = sub i32 %i.bh, %i.bi                    ; 3 uses
  %i.bk = trunc i32 %i.bj to i16
  %i.bl = trunc i32 %i.bj to i8
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.bn = load i32, ptr %i.n, align 4, !tbaa !119 ; 2 uses
  %i.bo = add i32 %i.bn, 1
  store i32 %i.bo, ptr %i.n, align 4, !tbaa !119
  %i.bp = zext i32 %i.bn to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bp
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !8
  %i.br = lshr i32 %i.bj, 8
  %i.bs = trunc i32 %i.br to i8
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.bu = load i32, ptr %i.n, align 4, !tbaa !119 ; 2 uses
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.n, align 4, !tbaa !119
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bw
  store i8 %i.bs, ptr %i.bx, align 1, !tbaa !8
  %i.by = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.bz = load i32, ptr %i.n, align 4, !tbaa !119 ; 2 uses
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.n, align 4, !tbaa !119
  %i.cb = zext i32 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  store i8 %i.bg, ptr %i.cc, align 1, !tbaa !8
  %i.cd = add i16 %i.bk, -1                       ; 3 uses
  %i.ce = zext i8 %i.bg to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !8
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr [4 x i8], ptr %i.r, i64 %i.ch ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 4, !tbaa !8
  %i.ck = add i16 %i.cj, 1
  store i16 %i.ck, ptr %i.ci, align 4, !tbaa !8
  %i.cl = icmp ult i16 %i.cd, 256
  br i1 %i.cl, label %2, label %5

2:                                                ; preds = %bb.h
  %3 = zext nneg i16 %i.cd to i64
  %4 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3
  br label %10

5:                                                ; preds = %bb.h
  %6 = lshr i16 %i.cd, 7
  %7 = zext nneg i16 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 256
  br label %10

10:                                               ; preds = %5, %2
  %.in.in = phi ptr [ %4, %2 ], [ %9, %5 ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8
  %11 = zext i8 %.in to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %11 ; 2 uses
  %13 = load i16, ptr %12, align 4, !tbaa !8
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4, !tbaa !8
  %15 = load i32, ptr %i.n, align 4, !tbaa !119
  %16 = load i32, ptr %i.p, align 8, !tbaa !46
  %17 = icmp eq i32 %15, %16                      ; 2 uses
  %18 = load i32, ptr %i.l, align 8, !tbaa !67    ; 4 uses
  %19 = load i32, ptr %i.a, align 4, !tbaa !64
  %20 = sub i32 %19, %18                          ; 2 uses
  store i32 %20, ptr %i.a, align 4, !tbaa !64
  %21 = load i32, ptr %i.t, align 8, !tbaa !55
  %.not146 = icmp ule i32 %18, %21
  %22 = icmp ugt i32 %20, 2
  %or.cond149 = select i1 %.not146, i1 %22, i1 false
  br i1 %or.cond149, label %bb.i, label %bb.k

bb.i:                                             ; preds = %10
  %i.cm = add i32 %18, -1                         ; 2 uses
  store i32 %i.cm, ptr %i.l, align 8, !tbaa !67
  %i.cn = load i32, ptr %i.d, align 8, !tbaa !36
  %i.co = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.cp = load i32, ptr %i.g, align 4, !tbaa !35
  %i.cq = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.cs = load i32, ptr %i.j, align 8, !tbaa !32
  %.promoted = load i32, ptr %i.f, align 4, !tbaa !62
  %.promoted156 = load i32, ptr %i.c, align 8, !tbaa !69
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.ct = phi i32 [ %i.dm, %bb.j ], [ %i.cm, %bb.i ]
  %i.cu = phi i32 [ %i.de, %bb.j ], [ %.promoted156, %bb.i ]
  %i.cv = phi i32 [ %i.cw, %bb.j ], [ %.promoted, %bb.i ] ; 3 uses
  %i.cw = add i32 %i.cv, 1                        ; 4 uses
  store i32 %i.cw, ptr %i.f, align 4, !tbaa !62
  %i.cx = shl i32 %i.cu, %i.cn
  %i.cy = add i32 %i.cv, 3
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = zext i8 %i.db to i32
  %i.dd = xor i32 %i.cx, %i.dc
  %i.de = and i32 %i.dd, %i.cp                    ; 3 uses
  store i32 %i.de, ptr %i.c, align 8, !tbaa !69
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.cq, i64 %i.df ; 2 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !51
  %i.di = and i32 %i.cs, %i.cw
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.dj
  store i16 %i.dh, ptr %i.dk, align 2, !tbaa !51
  %i.dl = trunc i32 %i.cw to i16
  store i16 %i.dl, ptr %i.dg, align 2, !tbaa !51
  %i.dm = add i32 %i.ct, -1                       ; 3 uses
  store i32 %i.dm, ptr %i.l, align 8, !tbaa !67
  %.not147 = icmp eq i32 %i.dm, 0
  br i1 %.not147, label %.split, label %bb.j, !llvm.loop !125

.split:                                           ; preds = %bb.j
  %i.dn = add i32 %i.cv, 2                        ; 2 uses
  store i32 %i.dn, ptr %i.f, align 4, !tbaa !62
  br i1 %17, label %bb.l, label %.backedge

.split155:                                        ; preds = %.thread152
  %i.do = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.dp = load i32, ptr %i.f, align 4, !tbaa !62
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !8   ; 2 uses
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.du = load i32, ptr %i.n, align 4, !tbaa !119 ; 2 uses
  %i.dv = add i32 %i.du, 1
  store i32 %i.dv, ptr %i.n, align 4, !tbaa !119
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.dw
  store i8 0, ptr %i.dx, align 1, !tbaa !8
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.dz = load i32, ptr %i.n, align 4, !tbaa !119 ; 2 uses
  %i.ea = add i32 %i.dz, 1
  store i32 %i.ea, ptr %i.n, align 4, !tbaa !119
  %i.eb = zext i32 %i.dz to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.eb
  store i8 0, ptr %i.ec, align 1, !tbaa !8
  %i.ed = load ptr, ptr %i.m, align 8, !tbaa !45
  %i.ee = load i32, ptr %i.n, align 4, !tbaa !119 ; 2 uses
  %i.ef = add i32 %i.ee, 1
  store i32 %i.ef, ptr %i.n, align 4, !tbaa !119
  %i.eg = zext i32 %i.ee to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  store i8 %i.ds, ptr %i.eh, align 1, !tbaa !8
  %i.ei = zext i8 %i.ds to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ei ; 2 uses
  %i.ek = load i16, ptr %i.ej, align 4, !tbaa !8
  %i.el = add i16 %i.ek, 1
  store i16 %i.el, ptr %i.ej, align 4, !tbaa !8
  %i.em = load i32, ptr %i.n, align 4, !tbaa !119
  %i.en = load i32, ptr %i.p, align 8, !tbaa !46
  %i.eo = icmp eq i32 %i.em, %i.en
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !64
  %i.eq = add i32 %i.ep, -1
  store i32 %i.eq, ptr %i.a, align 4, !tbaa !64
  %i.er = load i32, ptr %i.f, align 4, !tbaa !62
  %i.es = add i32 %i.er, 1                        ; 2 uses
  store i32 %i.es, ptr %i.f, align 4, !tbaa !62
  br i1 %i.eo, label %bb.l, label %.backedge

.backedge:                                        ; preds = %.split155, %.split, %flush_pending.exit, %bb.k
  br label %bb.b

bb.k:                                             ; preds = %10
  %i.et = load i32, ptr %i.f, align 4, !tbaa !62
  %i.eu = add i32 %i.et, %18                      ; 4 uses
  store i32 %i.eu, ptr %i.f, align 4, !tbaa !62
  store i32 0, ptr %i.l, align 8, !tbaa !67
  %i.ev = load ptr, ptr %i.e, align 8, !tbaa !37  ; 2 uses
  %i.ew = zext i32 %i.eu to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !8
  %i.ez = zext i8 %i.ey to i32                    ; 2 uses
  store i32 %i.ez, ptr %i.c, align 8, !tbaa !69
  %i.fa = load i32, ptr %i.d, align 8, !tbaa !36
  %i.fb = shl i32 %i.ez, %i.fa
  %i.fc = add i32 %i.eu, 1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !8
  %i.fg = zext i8 %i.ff to i32
  %i.fh = xor i32 %i.fb, %i.fg
  %i.fi = load i32, ptr %i.g, align 4, !tbaa !35
  %i.fj = and i32 %i.fh, %i.fi
  store i32 %i.fj, ptr %i.c, align 8, !tbaa !69
  br i1 %17, label %bb.l, label %.backedge

bb.l:                                             ; preds = %.split155, %.split, %bb.k
  %i.fk = phi i32 [ %i.es, %.split155 ], [ %i.dn, %.split ], [ %i.eu, %bb.k ]
  %i.fl = load i64, ptr %i.u, align 8, !tbaa !63  ; 3 uses
  %i.fm = icmp sgt i64 %i.fl, -1
  br i1 %i.fm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.fo = and i64 %i.fl, 4294967295
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fq = phi ptr [ %i.fp, %bb.m ], [ null, %bb.l ]
  %i.fr = zext i32 %i.fk to i64
  %i.fs = sub nsw i64 %i.fr, %i.fl
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.fq, i64 noundef %i.fs, i32 noundef 0) #12
  %i.ft = load i32, ptr %i.f, align 4, !tbaa !62
  %i.fu = zext i32 %i.ft to i64
  store i64 %i.fu, ptr %i.u, align 8, !tbaa !63
  %i.fv = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.fx) #12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40 ; 3 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !87
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 32 ; 3 uses
  %i.gb = load i32, ptr %i.ga, align 8, !tbaa !98
  %i.gc = zext i32 %i.gb to i64
  %i.gd = tail call i64 @llvm.umin.i64(i64 %i.fz, i64 %i.gc) ; 8 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %flush_pending.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gf = trunc nuw i64 %i.gd to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fv, i64 24 ; 3 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !97
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fx, i64 32 ; 4 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gh, ptr align 1 %i.gj, i64 %i.gd, i1 false)
  %i.gk = load ptr, ptr %i.gg, align 8, !tbaa !97
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gd
  store ptr %i.gl, ptr %i.gg, align 8, !tbaa !97
  %i.gm = load ptr, ptr %i.gi, align 8, !tbaa !88
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gd
  store ptr %i.gn, ptr %i.gi, align 8, !tbaa !88
  %i.go = getelementptr inbounds nuw i8, ptr %i.fv, i64 40 ; 2 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !99
  %i.gq = add i64 %i.gp, %i.gd
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !99
  %i.gr = load i32, ptr %i.ga, align 8, !tbaa !98
  %i.gs = sub i32 %i.gr, %i.gf
  store i32 %i.gs, ptr %i.ga, align 8, !tbaa !98
  %i.gt = load i64, ptr %i.fy, align 8, !tbaa !87 ; 2 uses
  %i.gu = sub i64 %i.gt, %i.gd
  store i64 %i.gu, ptr %i.fy, align 8, !tbaa !87
  %i.gv = icmp eq i64 %i.gt, %i.gd
  br i1 %i.gv, label %bb.p, label %flush_pending.exit

bb.p:                                             ; preds = %bb.o
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !42
  store ptr %i.gx, ptr %i.gi, align 8, !tbaa !88
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %bb.n, %bb.o, %bb.p
  %i.gy = load ptr, ptr %0, align 8, !tbaa !19
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !98
  %i.hb = icmp eq i32 %i.ha, 0
  br i1 %i.hb, label %.loopexit, label %.backedge

bb.q:                                             ; preds = %bb.d
  %i.hc = load i32, ptr %i.f, align 4, !tbaa !62  ; 3 uses
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.hc, i32 2)
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 5932
  store i32 %spec.select, ptr %i.hd, align 4, !tbaa !65
  %i.he = icmp eq i32 %1, 4
  br i1 %i.he, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.hf = load i64, ptr %i.u, align 8, !tbaa !63  ; 3 uses
  %i.hg = icmp sgt i64 %i.hf, -1
  br i1 %i.hg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.hh = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.hi = and i64 %i.hf, 4294967295
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hi
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.hk = phi ptr [ %i.hj, %bb.s ], [ null, %bb.r ]
  %i.hl = zext i32 %i.hc to i64
  %i.hm = sub nsw i64 %i.hl, %i.hf
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.hk, i64 noundef %i.hm, i32 noundef 1) #12
  %i.hn = load i32, ptr %i.f, align 4, !tbaa !62
  %i.ho = zext i32 %i.hn to i64
  store i64 %i.ho, ptr %i.u, align 8, !tbaa !63
  %i.hp = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.hr) #12
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 40 ; 3 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !87
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 32 ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !98
  %i.hw = zext i32 %i.hv to i64
  %i.hx = tail call i64 @llvm.umin.i64(i64 %i.ht, i64 %i.hw) ; 8 uses
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %flush_pending.exit150, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hz = trunc nuw i64 %i.hx to i32
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 24 ; 3 uses
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !97
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hr, i64 32 ; 4 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ib, ptr align 1 %i.id, i64 %i.hx, i1 false)
  %i.ie = load ptr, ptr %i.ia, align 8, !tbaa !97
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hx
  store ptr %i.if, ptr %i.ia, align 8, !tbaa !97
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !88
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.hx
  store ptr %i.ih, ptr %i.ic, align 8, !tbaa !88
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hp, i64 40 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !99
  %i.ik = add i64 %i.ij, %i.hx
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !99
  %i.il = load i32, ptr %i.hu, align 8, !tbaa !98
  %i.im = sub i32 %i.il, %i.hz
  store i32 %i.im, ptr %i.hu, align 8, !tbaa !98
  %i.in = load i64, ptr %i.hs, align 8, !tbaa !87 ; 2 uses
  %i.io = sub i64 %i.in, %i.hx
  store i64 %i.io, ptr %i.hs, align 8, !tbaa !87
  %i.ip = icmp eq i64 %i.in, %i.hx
  br i1 %i.ip, label %bb.v, label %flush_pending.exit150

bb.v:                                             ; preds = %bb.u
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !42
  store ptr %i.ir, ptr %i.ic, align 8, !tbaa !88
  br label %flush_pending.exit150

flush_pending.exit150:                            ; preds = %bb.t, %bb.u, %bb.v
  %i.is = load ptr, ptr %0, align 8, !tbaa !19
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !98
  %i.iv = icmp eq i32 %i.iu, 0
  %. = select i1 %i.iv, i32 2, i32 3
  br label %.loopexit

bb.w:                                             ; preds = %bb.q
  %i.iw = load i32, ptr %i.n, align 4, !tbaa !119
  %.not148 = icmp eq i32 %i.iw, 0
  br i1 %.not148, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ix = load i64, ptr %i.u, align 8, !tbaa !63  ; 3 uses
  %i.iy = icmp sgt i64 %i.ix, -1
  br i1 %i.iy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.iz = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.ja = and i64 %i.ix, 4294967295
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.jc = phi ptr [ %i.jb, %bb.y ], [ null, %bb.x ]
  %i.jd = zext i32 %i.hc to i64
  %i.je = sub nsw i64 %i.jd, %i.ix
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.jc, i64 noundef %i.je, i32 noundef 0) #12
  %i.jf = load i32, ptr %i.f, align 4, !tbaa !62
  %i.jg = zext i32 %i.jf to i64
  store i64 %i.jg, ptr %i.u, align 8, !tbaa !63
  %i.jh = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 56
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.jj) #12
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 40 ; 3 uses
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !87
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 32 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !98
  %i.jo = zext i32 %i.jn to i64
  %i.jp = tail call i64 @llvm.umin.i64(i64 %i.jl, i64 %i.jo) ; 8 uses
  %i.jq = icmp eq i64 %i.jp, 0
  br i1 %i.jq, label %flush_pending.exit151, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jr = trunc nuw i64 %i.jp to i32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 24 ; 3 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !97
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jj, i64 32 ; 4 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.jv, i64 %i.jp, i1 false)
  %i.jw = load ptr, ptr %i.js, align 8, !tbaa !97
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jp
  store ptr %i.jx, ptr %i.js, align 8, !tbaa !97
end_hunk_0
begin_hunk_1_@deflate_fast:bb.a
.loopexit:                                        ; preds = %flush_pending.exit, %bb.c, %flush_pending.exit151, %flush_pending.exit150, %bb.ac
  %.0 = phi i32 [ 1, %bb.ac ], [ %., %flush_pending.exit150 ], [ 0, %flush_pending.exit151 ], [ 0, %bb.c ], [ 0, %flush_pending.exit ]
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
  %i.z = load i32, ptr %i.a, align 4, !tbaa !64
  %i.aa = icmp ult i32 %i.z, 262
  br i1 %i.aa, label %bb.b, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %.critedge
  %.pre = load i32, ptr %i.c, align 8, !tbaa !67
  %.pre199 = load i32, ptr %i.e, align 8, !tbaa !124
  br label %.thread

bb.b:                                             ; preds = %.critedge
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !64  ; 3 uses
  %i.ac = icmp ult i32 %i.ab, 262
  %or.cond = and i1 %i.b, %i.ac
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp eq i32 %i.ab, 0
  br i1 %i.ad, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = icmp ugt i32 %i.ab, 2
  %.pre198 = load i32, ptr %i.c, align 8, !tbaa !67 ; 3 uses
  %.pre200 = load i32, ptr %i.e, align 8, !tbaa !124 ; 2 uses
  br i1 %i.ae, label %.thread, label %.thread193

.thread193:                                       ; preds = %bb.d
  store i32 %.pre198, ptr %i.d, align 8, !tbaa !66
  store i32 %.pre200, ptr %i.f, align 4, !tbaa !126
  store i32 2, ptr %i.c, align 8, !tbaa !67
  br label %bb.l

.thread:                                          ; preds = %..thread_crit_edge, %bb.d
  %i.af = phi i32 [ %.pre199, %..thread_crit_edge ], [ %.pre200, %bb.d ]
  %i.ag = phi i32 [ %.pre, %..thread_crit_edge ], [ %.pre198, %bb.d ] ; 3 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !69
  %i.ai = load i32, ptr %i.h, align 8, !tbaa !36
  %i.aj = shl i32 %i.ah, %i.ai
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.al = load i32, ptr %i.j, align 4, !tbaa !62  ; 4 uses
  %i.am = add i32 %i.al, 2
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %i.aq = zext i8 %i.ap to i32
  %i.ar = xor i32 %i.aj, %i.aq
  %i.as = load i32, ptr %i.k, align 4, !tbaa !35
  %i.at = and i32 %i.ar, %i.as                    ; 2 uses
  store i32 %i.at, ptr %i.g, align 8, !tbaa !69
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.av = zext i32 %i.at to i64
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.av ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !51 ; 3 uses
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.az = load i32, ptr %i.n, align 8, !tbaa !32
  %i.ba = and i32 %i.az, %i.al
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.bb
  store i16 %i.ax, ptr %i.bc, align 2, !tbaa !51
  %i.bd = zext i16 %i.ax to i32                   ; 2 uses
  %i.be = trunc i32 %i.al to i16
  store i16 %i.be, ptr %i.aw, align 2, !tbaa !51
  store i32 %i.ag, ptr %i.d, align 8, !tbaa !66
  store i32 %i.af, ptr %i.f, align 4, !tbaa !126
  store i32 2, ptr %i.c, align 8, !tbaa !67
  %.not = icmp eq i16 %i.ax, 0
  br i1 %.not, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.thread
  %i.bf = load i32, ptr %i.o, align 8, !tbaa !55
  %i.bg = icmp ult i32 %i.ag, %i.bf
  br i1 %i.bg, label %bb.f, label %thread-pre-split

bb.f:                                             ; preds = %bb.e
  %i.bh = sub i32 %i.al, %i.bd
  %i.bi = load i32, ptr %i.p, align 8, !tbaa !31
  %i.bj = add i32 %i.bi, -262
  %.not183 = icmp ugt i32 %i.bh, %i.bj
  br i1 %.not183, label %thread-pre-split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = tail call fastcc i32 @longest_match(ptr noundef nonnull %0, i32 noundef %i.bd) ; 5 uses
  store i32 %i.bk, ptr %i.c, align 8, !tbaa !67
  %i.bl = icmp ult i32 %i.bk, 6
  br i1 %i.bl, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !48
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bo = icmp eq i32 %i.bk, 3
  br i1 %i.bo, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.bp = load i32, ptr %i.j, align 4, !tbaa !62
  %i.bq = load i32, ptr %i.e, align 8, !tbaa !124
  %i.br = sub i32 %i.bp, %i.bq
  %i.bs = icmp ugt i32 %i.br, 4096
  br i1 %i.bs, label %bb.k, label %thread-pre-split

bb.k:                                             ; preds = %bb.j, %bb.h
  store i32 2, ptr %i.c, align 8, !tbaa !67
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.e, %bb.f, %bb.k, %bb.j, %bb.i, %bb.g
  %.ph = phi i32 [ 2, %bb.e ], [ 2, %bb.f ], [ 2, %bb.k ], [ 3, %bb.j ], [ %i.bk, %bb.i ], [ %i.bk, %bb.g ]
  %.pr = load i32, ptr %i.d, align 8, !tbaa !66
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split, %.thread193, %.thread
  %i.bt = phi i32 [ %.pr, %thread-pre-split ], [ %.pre198, %.thread193 ], [ %i.ag, %.thread ] ; 3 uses
  %i.bu = phi i32 [ %.ph, %thread-pre-split ], [ 2, %.thread193 ], [ 2, %.thread ]
  %i.bv = icmp ult i32 %i.bt, 3
  %.not184 = icmp ugt i32 %i.bu, %i.bt
  %or.cond215 = or i1 %i.bv, %.not184
  br i1 %or.cond215, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = load i32, ptr %i.j, align 4, !tbaa !62  ; 2 uses
  %i.bx = load i32, ptr %i.a, align 4, !tbaa !64
  %i.by = add i32 %i.bw, -3
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = trunc i32 %i.bt to i8
  %i.cb = add i8 %i.ca, -3                        ; 2 uses
  %i.cc = load i32, ptr %i.f, align 4, !tbaa !126
  %i.cd = xor i32 %i.cc, -1
  %i.ce = add i32 %i.bw, %i.cd                    ; 3 uses
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = trunc i32 %i.ce to i8
  %i.ch = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.ci = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.cj = add i32 %i.ci, 1
  store i32 %i.cj, ptr %i.s, align 4, !tbaa !119
  %i.ck = zext i32 %i.ci to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ck
  store i8 %i.cg, ptr %i.cl, align 1, !tbaa !8
  %i.cm = lshr i32 %i.ce, 8
  %i.cn = trunc i32 %i.cm to i8
  %i.co = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.cp = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.cq = add i32 %i.cp, 1
  store i32 %i.cq, ptr %i.s, align 4, !tbaa !119
  %i.cr = zext i32 %i.cp to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cr
  store i8 %i.cn, ptr %i.cs, align 1, !tbaa !8
  %i.ct = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.cu = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.s, align 4, !tbaa !119
  %i.cw = zext i32 %i.cu to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw
  store i8 %i.cb, ptr %i.cx, align 1, !tbaa !8
  %i.cy = add i16 %i.cf, -1                       ; 3 uses
  %i.cz = zext i8 %i.cb to i64
  %i.da = getelementptr inbounds nuw i8, ptr @_length_code, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !8
  %i.dc = zext i8 %i.db to i64
  %i.dd = getelementptr [4 x i8], ptr %i.t, i64 %i.dc ; 2 uses
  %i.de = load i16, ptr %i.dd, align 4, !tbaa !8
  %i.df = add i16 %i.de, 1
  store i16 %i.df, ptr %i.dd, align 4, !tbaa !8
  %i.dg = icmp ult i16 %i.cy, 256
  br i1 %i.dg, label %2, label %5

2:                                                ; preds = %bb.m
  %3 = zext nneg i16 %i.cy to i64
  %4 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %3
  br label %10

5:                                                ; preds = %bb.m
  %6 = lshr i16 %i.cy, 7
  %7 = zext nneg i16 %6 to i64
  %8 = getelementptr inbounds nuw i8, ptr @_dist_code, i64 %7
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 256
  br label %10

10:                                               ; preds = %5, %2
  %.in.in = phi ptr [ %4, %2 ], [ %9, %5 ]
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8
  %11 = zext i8 %.in to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %11 ; 2 uses
  %13 = load i16, ptr %12, align 4, !tbaa !8
  %14 = add i16 %13, 1
  store i16 %14, ptr %12, align 4, !tbaa !8
  %15 = load i32, ptr %i.s, align 4, !tbaa !119
  %16 = load i32, ptr %i.v, align 8, !tbaa !46
  %17 = load i32, ptr %i.d, align 8, !tbaa !66    ; 2 uses
  %18 = load i32, ptr %i.a, align 4, !tbaa !64
  %reass.sub = sub i32 %18, %17
  %19 = add i32 %reass.sub, 1
  store i32 %19, ptr %i.a, align 4, !tbaa !64
  %20 = add i32 %17, -2                           ; 2 uses
  store i32 %20, ptr %i.d, align 8, !tbaa !66
  %.promoted = load i32, ptr %i.j, align 4, !tbaa !62
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %10
  %i.dh = phi i32 [ %i.eg, %bb.p ], [ %20, %10 ]
  %i.di = phi i32 [ %i.dj, %bb.p ], [ %.promoted, %10 ] ; 3 uses
  %i.dj = add i32 %i.di, 1                        ; 5 uses
  store i32 %i.dj, ptr %i.j, align 4, !tbaa !62
  %.not186 = icmp ugt i32 %i.dj, %i.bz
  br i1 %.not186, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dk = load i32, ptr %i.g, align 8, !tbaa !69
  %i.dl = load i32, ptr %i.h, align 8, !tbaa !36
  %i.dm = shl i32 %i.dk, %i.dl
  %i.dn = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.do = add i32 %i.di, 3
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !8
  %i.ds = zext i8 %i.dr to i32
  %i.dt = xor i32 %i.dm, %i.ds
  %i.du = load i32, ptr %i.k, align 4, !tbaa !35
  %i.dv = and i32 %i.dt, %i.du                    ; 2 uses
  store i32 %i.dv, ptr %i.g, align 8, !tbaa !69
  %i.dw = load ptr, ptr %i.l, align 8, !tbaa !39
  %i.dx = zext i32 %i.dv to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !51
  %i.ea = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.eb = load i32, ptr %i.n, align 8, !tbaa !32
  %i.ec = and i32 %i.eb, %i.dj
  %i.ed = zext i32 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ea, i64 %i.ed
  store i16 %i.dz, ptr %i.ee, align 2, !tbaa !51
  %i.ef = trunc i32 %i.dj to i16
  store i16 %i.ef, ptr %i.dy, align 2, !tbaa !51
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.eg = add i32 %i.dh, -1                       ; 3 uses
  store i32 %i.eg, ptr %i.d, align 8, !tbaa !66
  %.not187 = icmp eq i32 %i.eg, 0
  br i1 %.not187, label %bb.q, label %bb.n, !llvm.loop !127

bb.q:                                             ; preds = %bb.p
  %i.eh = icmp eq i32 %15, %16
  store i32 0, ptr %i.w, align 8, !tbaa !68
  store i32 2, ptr %i.c, align 8, !tbaa !67
  %i.ei = add i32 %i.di, 2                        ; 2 uses
  store i32 %i.ei, ptr %i.j, align 4, !tbaa !62
  br i1 %i.eh, label %bb.r, label %.critedge.backedge

.critedge.backedge:                               ; preds = %bb.q, %flush_pending.exit, %bb.ad, %flush_pending.exit190
  br label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ej = load i64, ptr %i.x, align 8, !tbaa !63  ; 3 uses
  %i.ek = icmp sgt i64 %i.ej, -1
  br i1 %i.ek, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.em = and i64 %i.ej, 4294967295
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.em
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.eo = phi ptr [ %i.en, %bb.s ], [ null, %bb.r ]
  %i.ep = zext i32 %i.ei to i64
  %i.eq = sub nsw i64 %i.ep, %i.ej
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.eo, i64 noundef %i.eq, i32 noundef 0) #12
  %i.er = load i32, ptr %i.j, align 4, !tbaa !62
  %i.es = zext i32 %i.er to i64
  store i64 %i.es, ptr %i.x, align 8, !tbaa !63
  %i.et = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 56
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.ev) #12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 40 ; 3 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !87
  %i.ey = getelementptr inbounds nuw i8, ptr %i.et, i64 32 ; 3 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !98
  %i.fa = zext i32 %i.ez to i64
  %i.fb = tail call i64 @llvm.umin.i64(i64 %i.ex, i64 %i.fa) ; 8 uses
  %i.fc = icmp eq i64 %i.fb, 0
  br i1 %i.fc, label %flush_pending.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = trunc nuw i64 %i.fb to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 3 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !97
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 32 ; 4 uses
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ff, ptr align 1 %i.fh, i64 %i.fb, i1 false)
  %i.fi = load ptr, ptr %i.fe, align 8, !tbaa !97
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fb
  store ptr %i.fj, ptr %i.fe, align 8, !tbaa !97
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !88
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fb
  store ptr %i.fl, ptr %i.fg, align 8, !tbaa !88
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 40 ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !99
  %i.fo = add i64 %i.fn, %i.fb
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !99
  %i.fp = load i32, ptr %i.ey, align 8, !tbaa !98
  %i.fq = sub i32 %i.fp, %i.fd
  store i32 %i.fq, ptr %i.ey, align 8, !tbaa !98
  %i.fr = load i64, ptr %i.ew, align 8, !tbaa !87 ; 2 uses
  %i.fs = sub i64 %i.fr, %i.fb
  store i64 %i.fs, ptr %i.ew, align 8, !tbaa !87
  %i.ft = icmp eq i64 %i.fr, %i.fb
  br i1 %i.ft, label %bb.v, label %flush_pending.exit

bb.v:                                             ; preds = %bb.u
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !42
  store ptr %i.fv, ptr %i.fg, align 8, !tbaa !88
  br label %flush_pending.exit

flush_pending.exit:                               ; preds = %bb.t, %bb.u, %bb.v
  %i.fw = load ptr, ptr %0, align 8, !tbaa !19
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !98
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %.loopexit, label %.critedge.backedge

bb.w:                                             ; preds = %bb.l
  %i.ga = load i32, ptr %i.w, align 8, !tbaa !68
  %.not185 = icmp eq i32 %i.ga, 0
  br i1 %.not185, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gb = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.gc = load i32, ptr %i.j, align 4, !tbaa !62
  %i.gd = add i32 %i.gc, -1
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !8   ; 2 uses
  %i.gh = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.gi = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.gj = add i32 %i.gi, 1
  store i32 %i.gj, ptr %i.s, align 4, !tbaa !119
  %i.gk = zext i32 %i.gi to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 %i.gk
  store i8 0, ptr %i.gl, align 1, !tbaa !8
  %i.gm = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.gn = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.go = add i32 %i.gn, 1
  store i32 %i.go, ptr %i.s, align 4, !tbaa !119
  %i.gp = zext i32 %i.gn to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gp
  store i8 0, ptr %i.gq, align 1, !tbaa !8
  %i.gr = load ptr, ptr %i.r, align 8, !tbaa !45
  %i.gs = load i32, ptr %i.s, align 4, !tbaa !119 ; 2 uses
  %i.gt = add i32 %i.gs, 1
  store i32 %i.gt, ptr %i.s, align 4, !tbaa !119
  %i.gu = zext i32 %i.gs to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gu
  store i8 %i.gg, ptr %i.gv, align 1, !tbaa !8
  %i.gw = zext i8 %i.gg to i64
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.gw ; 2 uses
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !8
  %i.gz = add i16 %i.gy, 1
  store i16 %i.gz, ptr %i.gx, align 4, !tbaa !8
  %i.ha = load i32, ptr %i.s, align 4, !tbaa !119
  %i.hb = load i32, ptr %i.v, align 8, !tbaa !46
  %i.hc = icmp eq i32 %i.ha, %i.hb
  br i1 %i.hc, label %bb.y, label %flush_pending.exit190

bb.y:                                             ; preds = %bb.x
  %i.hd = load i64, ptr %i.x, align 8, !tbaa !63  ; 3 uses
  %i.he = icmp sgt i64 %i.hd, -1
  br i1 %i.he, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.hf = load ptr, ptr %i.i, align 8, !tbaa !37
  %i.hg = and i64 %i.hd, 4294967295
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.hg
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.hi = phi ptr [ %i.hh, %bb.z ], [ null, %bb.y ]
  %i.hj = load i32, ptr %i.j, align 4, !tbaa !62
  %i.hk = zext i32 %i.hj to i64
  %i.hl = sub nsw i64 %i.hk, %i.hd
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.hi, i64 noundef %i.hl, i32 noundef 0) #12
  %i.hm = load i32, ptr %i.j, align 4, !tbaa !62
  %i.hn = zext i32 %i.hm to i64
  store i64 %i.hn, ptr %i.x, align 8, !tbaa !63
  %i.ho = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 56
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.hq) #12
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 40 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !87
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 32 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !98
  %i.hv = zext i32 %i.hu to i64
  %i.hw = tail call i64 @llvm.umin.i64(i64 %i.hs, i64 %i.hv) ; 8 uses
  %i.hx = icmp eq i64 %i.hw, 0
  br i1 %i.hx, label %flush_pending.exit190, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hy = trunc nuw i64 %i.hw to i32
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ho, i64 24 ; 3 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !97
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hq, i64 32 ; 4 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ia, ptr align 1 %i.ic, i64 %i.hw, i1 false)
  %i.id = load ptr, ptr %i.hz, align 8, !tbaa !97
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %i.hw
  store ptr %i.ie, ptr %i.hz, align 8, !tbaa !97
  %i.if = load ptr, ptr %i.ib, align 8, !tbaa !88
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hw
  store ptr %i.ig, ptr %i.ib, align 8, !tbaa !88
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ho, i64 40 ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !99
  %i.ij = add i64 %i.ii, %i.hw
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !99
  %i.ik = load i32, ptr %i.ht, align 8, !tbaa !98
  %i.il = sub i32 %i.ik, %i.hy
  store i32 %i.il, ptr %i.ht, align 8, !tbaa !98
  %i.im = load i64, ptr %i.hr, align 8, !tbaa !87 ; 2 uses
  %i.in = sub i64 %i.im, %i.hw
  store i64 %i.in, ptr %i.hr, align 8, !tbaa !87
  %i.io = icmp eq i64 %i.im, %i.hw
  br i1 %i.io, label %bb.ac, label %flush_pending.exit190

bb.ac:                                            ; preds = %bb.ab
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !42
  store ptr %i.iq, ptr %i.ib, align 8, !tbaa !88
  br label %flush_pending.exit190

flush_pending.exit190:                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x
  %i.ir = load i32, ptr %i.j, align 4, !tbaa !62
  %i.is = add i32 %i.ir, 1
  store i32 %i.is, ptr %i.j, align 4, !tbaa !62
  %i.it = load i32, ptr %i.a, align 4, !tbaa !64
  %i.iu = add i32 %i.it, -1
  store i32 %i.iu, ptr %i.a, align 4, !tbaa !64
  %i.iv = load ptr, ptr %0, align 8, !tbaa !19
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !98
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.loopexit, label %.critedge.backedge
end_hunk_1
