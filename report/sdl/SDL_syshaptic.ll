inline.NumInlined: 12
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SDL_UDEV_DelCallback
; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_SYS_HapticNewEffect(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((72, 80)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 48) #14 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  store ptr %i.a, ptr %i.b, align 8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc zeroext i1 @SDL_SYS_ToFFEffect(ptr noundef %i.a, ptr noundef %2)
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 -1, ptr %i.d, align 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.g, i64 noundef 1076905344, ptr noundef nonnull %i.a) #13
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__errno_location() #15
  %i.k = load i32, ptr %i.j, align 4
  %i.l = tail call ptr @strerror(i32 noundef %i.k) #13
  %i.m = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.3, ptr noundef %i.l) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.n = load ptr, ptr %i.b, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.n) #13
  store ptr null, ptr %i.b, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %bb.e
  %.0 = phi i1 [ false, %bb.e ], [ false, %bb.a ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @SDL_SYS_ToFFEffect(ptr nofree noundef nonnull writeonly initializes((0, 48)) %0, ptr nofree noundef readonly %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.a = load i16, ptr %1, align 8                ; 3 uses
  %i.b = zext i16 %i.a to i32                     ; 2 uses
  %i.c = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.b)
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %.split, label %bb.m

.split:                                           ; preds = %bb.a
  %i.e = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.b, i1 true)
  switch i32 %i.e, label %bb.m [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 7, label %bb.g
    i32 8, label %bb.g
    i32 9, label %bb.g
    i32 10, label %bb.g
    i32 6, label %bb.j
    i32 11, label %bb.l
  ]

bb.b:                                             ; preds = %.split
  store i16 82, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = tail call fastcc zeroext i1 @SDL_SYS_ToDirection(ptr noundef %i.f, ptr noundef nonnull %i.g)
  br i1 %i.h, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  %spec.select226 = tail call i32 @llvm.umin.i32(i32 %i.j, i32 32767)
  %spec.select = trunc nuw nsw i32 %spec.select226 to i16
  %i.l = select i1 %i.k, i16 0, i16 %spec.select
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.l, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.o = load i16, ptr %i.n, align 8
  %spec.select204 = tail call i16 @llvm.umin.i16(i16 %i.o, i16 32767)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %spec.select204, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  %.not.i = icmp eq i16 %i.r, 0
  %i.s = add i16 %i.r, 303
  %spec.select.i = select i1 %.not.i, i16 0, i16 %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %spec.select.i, ptr %i.t, align 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i16, ptr %i.u, align 4
  %i.w = tail call i16 @llvm.umin.i16(i16 %i.v, i16 32767)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = tail call i16 @llvm.umin.i16(i16 %i.ac, i16 32767)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ad, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = tail call i16 @llvm.umin.i16(i16 %i.ag, i16 32767)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.ah, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ak = load i16, ptr %i.aj, align 4
  %i.al = tail call i16 @llvm.umin.i16(i16 %i.ak, i16 32767)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.al, ptr %i.am, align 2
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = tail call i16 @llvm.umin.i16(i16 %i.ao, i16 32767)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ap, ptr %i.aq, align 8
  br label %bb.n

bb.d:                                             ; preds = %.split, %.split, %.split, %.split, %.split
  store i16 81, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.at = tail call fastcc zeroext i1 @SDL_SYS_ToDirection(ptr noundef %i.ar, ptr noundef nonnull %i.as)
  br i1 %i.at, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = icmp eq i32 %i.av, -1
  %spec.select205225 = tail call i32 @llvm.umin.i32(i32 %i.av, i32 32767)
  %spec.select205 = trunc nuw nsw i32 %spec.select205225 to i16
  %i.ax = select i1 %i.aw, i16 0, i16 %spec.select205
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.ax, ptr %i.ay, align 2
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load i16, ptr %i.az, align 8
  %spec.select206 = tail call i16 @llvm.umin.i16(i16 %i.ba, i16 32767)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %spec.select206, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.bd = load i16, ptr %i.bc, align 2            ; 2 uses
  %.not.i216 = icmp eq i16 %i.bd, 0
  %i.be = add i16 %i.bd, 303
  %spec.select.i217 = select i1 %.not.i216, i16 0, i16 %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %spec.select.i217, ptr %i.bf, align 2
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = load i16, ptr %i.bg, align 4
  %i.bi = tail call i16 @llvm.umin.i16(i16 %i.bh, i16 32767)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.bi, ptr %i.bj, align 8
  %i.bk = load i16, ptr %1, align 8               ; 2 uses
  %i.bl = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.bk)
  %i.bm = icmp eq i16 %i.bl, 1
  br i1 %i.bm, label %.split215, label %bb.f

.split215:                                        ; preds = %bb.e
  %i.bn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bk, i1 true)
  %switch.tableidx = add nsw i16 %i.bn, -1        ; 2 uses
  %i.bo = icmp ult i16 %switch.tableidx, 5
  br i1 %i.bo, label %switch.lookup, label %bb.f

switch.lookup:                                    ; preds = %.split215
  %i.bp = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.SDL_SYS_ToFFEffect, i64 %i.bp
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %switch.ext, ptr %i.bq, align 8
  br label %bb.f

bb.f:                                             ; preds = %.split215, %switch.lookup, %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.bs = load i16, ptr %i.br, align 2
  %spec.select207 = tail call i16 @llvm.umin.i16(i16 %i.bs, i16 32767)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %spec.select207, ptr %i.bt, align 2
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bv = load i16, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.bv, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.by = load i16, ptr %i.bx, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.by, ptr %i.bz, align 2
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.cb = load i16, ptr %i.ca, align 4
  %i.cc = zext i16 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 11
  %i.ce = udiv i32 %i.cd, 1125
  %i.cf = trunc i32 %i.ce to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.ci = load i16, ptr %i.ch, align 2
  %i.cj = tail call i16 @llvm.umin.i16(i16 %i.ci, i16 32767)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.cj, ptr %i.ck, align 2
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cm = load i16, ptr %i.cl, align 8
  %i.cn = tail call i16 @llvm.umin.i16(i16 %i.cm, i16 32767)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.cn, ptr %i.co, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.cq = load i16, ptr %i.cp, align 2
  %i.cr = tail call i16 @llvm.umin.i16(i16 %i.cq, i16 32767)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.cr, ptr %i.cs, align 2
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.cu = load i16, ptr %i.ct, align 4
  %i.cv = tail call i16 @llvm.umin.i16(i16 %i.cu, i16 32767)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.cv, ptr %i.cw, align 8
  br label %bb.n

bb.g:                                             ; preds = %.split, %.split, %.split, %.split
  %i.cx = tail call range(i16 0, 17) i16 @llvm.ctpop.i16(i16 %i.a)
  %i.cy = icmp eq i16 %i.cx, 1
  br i1 %i.cy, label %.split214, label %bb.h

.split214:                                        ; preds = %bb.g
  %i.cz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.a, i1 true)
  %switch.tableidx230 = add nsw i16 %i.cz, -7     ; 2 uses
  %i.da = icmp ult i16 %switch.tableidx230, 4
  br i1 %i.da, label %switch.lookup231, label %bb.h

switch.lookup231:                                 ; preds = %.split214
  %i.db = shl nuw nsw i16 %switch.tableidx230, 4
  %switch.shiftamt = zext nneg i16 %i.db to i64
  %switch.downshift = lshr i64 23644267416453203, %switch.shiftamt
  %switch.masked = trunc i64 %switch.downshift to i16
  store i16 %switch.masked, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %.split214, %switch.lookup231, %bb.g
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.de = tail call fastcc zeroext i1 @SDL_SYS_ToDirection(ptr noundef %i.dc, ptr noundef nonnull %i.dd)
  br i1 %i.de, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.dg = load i32, ptr %i.df, align 4            ; 2 uses
  %i.dh = icmp eq i32 %i.dg, -1
  %spec.select208224 = tail call i32 @llvm.umin.i32(i32 %i.dg, i32 32767)
  %spec.select208 = trunc nuw nsw i32 %spec.select208224 to i16
  %i.di = select i1 %i.dh, i16 0, i16 %spec.select208
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.di, ptr %i.dj, align 2
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dl = load i16, ptr %i.dk, align 8
  %spec.select209 = tail call i16 @llvm.umin.i16(i16 %i.dl, i16 32767)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %spec.select209, ptr %i.dm, align 2
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.do = load i16, ptr %i.dn, align 2            ; 2 uses
  %.not.i218 = icmp eq i16 %i.do, 0
  %i.dp = add i16 %i.do, 303
  %spec.select.i219 = select i1 %.not.i218, i16 0, i16 %i.dp
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %spec.select.i219, ptr %i.dq, align 2
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ds = load i16, ptr %i.dr, align 4
  %i.dt = tail call i16 @llvm.umin.i16(i16 %i.ds, i16 32767)
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.dt, ptr %i.du, align 2
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.dw = load i16, ptr %i.dv, align 2
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.dw, ptr %i.dx, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.dz = load i16, ptr %i.dy, align 4
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.dz, ptr %i.ea, align 2
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 42
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.ec, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ef = load i16, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.ef, ptr %i.eg, align 2
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.ei = load i16, ptr %i.eh, align 2
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.el = load i16, ptr %i.ek, align 4
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.el, ptr %i.em, align 2
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eo = load i16, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i16 %i.eo, ptr %i.ep, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i16 %i.er, ptr %i.es, align 2
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.eu = load i16, ptr %i.et, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i16 %i.eu, ptr %i.ev, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 50
  %i.ex = load i16, ptr %i.ew, align 2
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i16 %i.ex, ptr %i.ey, align 2
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fa = load i16, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 %i.fa, ptr %i.fb, align 4
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 62
  %i.fd = load i16, ptr %i.fc, align 2
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i16 %i.fd, ptr %i.fe, align 2
  br label %bb.n

bb.j:                                             ; preds = %.split
  store i16 87, ptr %0, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.fh = tail call fastcc zeroext i1 @SDL_SYS_ToDirection(ptr noundef %i.ff, ptr noundef nonnull %i.fg)
  br i1 %i.fh, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.fj = load i32, ptr %i.fi, align 4            ; 2 uses
  %i.fk = icmp eq i32 %i.fj, -1
  %spec.select210223 = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 32767)
  %spec.select210 = trunc nuw nsw i32 %spec.select210223 to i16
  %i.fl = select i1 %i.fk, i16 0, i16 %spec.select210
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.fl, ptr %i.fm, align 2
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fo = load i16, ptr %i.fn, align 8
  %spec.select211 = tail call i16 @llvm.umin.i16(i16 %i.fo, i16 32767)
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %spec.select211, ptr %i.fp, align 4
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.fr = load i16, ptr %i.fq, align 2            ; 2 uses
  %.not.i220 = icmp eq i16 %i.fr, 0
  %i.fs = add i16 %i.fr, 303
  %spec.select.i221 = select i1 %.not.i220, i16 0, i16 %i.fs
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %spec.select.i221, ptr %i.ft, align 2
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fv = load i16, ptr %i.fu, align 4
  %i.fw = tail call i16 @llvm.umin.i16(i16 %i.fv, i16 32767)
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.fw, ptr %i.fx, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.fz = load i16, ptr %i.fy, align 2
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.fz, ptr %i.ga, align 8
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gc = load i16, ptr %i.gb, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.gc, ptr %i.gd, align 2
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.gf = load i16, ptr %i.ge, align 2
  %i.gg = tail call i16 @llvm.umin.i16(i16 %i.gf, i16 32767)
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.gg, ptr %i.gh, align 4
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.gj = load i16, ptr %i.gi, align 4
  %i.gk = tail call i16 @llvm.umin.i16(i16 %i.gj, i16 32767)
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i16 %i.gk, ptr %i.gl, align 2
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.gn = load i16, ptr %i.gm, align 2
  %i.go = tail call i16 @llvm.umin.i16(i16 %i.gn, i16 32767)
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %i.go, ptr %i.gp, align 8
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gr = load i16, ptr %i.gq, align 8
  %i.gs = tail call i16 @llvm.umin.i16(i16 %i.gr, i16 32767)
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %i.gs, ptr %i.gt, align 2
  br label %bb.n

bb.l:                                             ; preds = %.split
  store i16 80, ptr %0, align 8
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 16384, ptr %i.gu, align 4
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.gw = load i32, ptr %i.gv, align 4            ; 2 uses
  %i.gx = icmp eq i32 %i.gw, -1
  %spec.select212222 = tail call i32 @llvm.umin.i32(i32 %i.gw, i32 32767)
  %spec.select212 = trunc nuw nsw i32 %spec.select212222 to i16
  %i.gy = select i1 %i.gx, i16 0, i16 %spec.select212
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 10
end_hunk_0
begin_hunk_1_@SDL_SYS_HapticDestroyEffect:bb.a
  %i.g = load i16, ptr %i.f, align 2
  %i.h = sext i16 %i.g to i32
  %i.i = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.c, i64 noundef 1074021761, i32 noundef %i.h) #13
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__errno_location() #15
  %i.l = load i32, ptr %i.k, align 4
  %i.m = tail call ptr @strerror(i32 noundef %i.l) #13
  %i.n = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.7, ptr noundef %i.m) #13 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.d, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.o) #13
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @SDL_SYS_HapticGetEffectStatus(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #13 ; 0 uses
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticSetGain(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.input_event, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 21, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i16 96, ptr %i.b, align 2
  %i.c = sext i32 %1 to i64
  %i.d = mul nsw i64 %i.c, 65535
  %i.e = udiv i64 %i.d, 100
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i64 @write(i32 noundef %i.j, ptr noundef nonnull %2, i64 noundef 24) #13
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__errno_location() #15
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call ptr @strerror(i32 noundef %i.n) #13
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.9, ptr noundef %i.o) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.p, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticSetAutocenter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.input_event, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i16 21, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 18
  store i16 97, ptr %i.b, align 2
  %i.c = sext i32 %1 to i64
  %i.d = mul nsw i64 %i.c, 65535
  %i.e = udiv i64 %i.d, 100
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.f, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load i32, ptr %i.i, align 8
  %i.k = call i64 @write(i32 noundef %i.j, ptr noundef nonnull %2, i64 noundef 24) #13
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__errno_location() #15
  %i.n = load i32, ptr %i.m, align 4
  %i.o = tail call ptr @strerror(i32 noundef %i.n) #13
  %i.p = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10, ptr noundef %i.o) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.p, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticPause(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #13
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticResume(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.8) #13
  ret i1 %i.a
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_SYS_HapticStopAll(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.input_event, align 8        ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store i16 21, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.n = load i16, ptr %i.m, align 2
  store i16 %i.n, ptr %i.f, align 2
  store i32 0, ptr %i.g, align 4
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = call i64 @write(i32 noundef %i.p, ptr noundef nonnull %1, i64 noundef 24) #13
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %SDL_SYS_HapticStopEffect.exit, label %SDL_SYS_HapticStopEffect.exit.thread

SDL_SYS_HapticStopEffect.exit.thread:             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.e

SDL_SYS_HapticStopEffect.exit:                    ; preds = %bb.c
  %i.s = tail call ptr @__errno_location() #15
  %i.t = load i32, ptr %i.s, align 4
  %i.u = tail call ptr @strerror(i32 noundef %i.t) #13
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.6, ptr noundef %i.u) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %SDL_SYS_HapticStopEffect.exit
  %i.w = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11) #13
  br label %.loopexit

bb.e:                                             ; preds = %SDL_SYS_HapticStopEffect.exit.thread, %bb.b, %SDL_SYS_HapticStopEffect.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.x = load i32, ptr %i.a, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %.loopexit, !llvm.loop !14

.loopexit:                                        ; preds = %bb.e, %bb.a, %bb.d
  %.08 = phi i1 [ %i.w, %bb.d ], [ true, %bb.a ], [ true, %bb.e ]
  ret i1 %.08
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

declare i32 @SDL_GetNextObjectID() local_unnamed_addr #2

declare noalias ptr @SDL_malloc_REAL(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @SDL_SYS_ToDirection(ptr nofree noundef nonnull writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 4
  switch i8 %i.a, label %bb.j [
    i8 0, label %bb.b
    i8 2, label %bb.c
    i8 1, label %bb.d
    i8 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = srem i32 %i.c, 36000
  %i.e = shl nsw i32 %i.d, 11
  %i.f = sdiv i32 %i.e, 1125
  %i.g = trunc i32 %i.f to i16
  store i16 %i.g, ptr %0, align 2
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add nsw i32 %i.i, 9000
  %i.k = srem i32 %i.j, 36000
  %i.l = shl nsw i32 %i.k, 15
  %i.m = udiv i32 %i.l, 18000
  %i.n = trunc i32 %i.m to i16
  store i16 %i.n, ptr %0, align 2
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 4              ; 3 uses
  %.not = icmp eq i32 %i.q, 0
  %i.r = load i32, ptr %i.o, align 4              ; 3 uses
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = icmp sgt i32 %i.r, -1
  %i.t = select i1 %i.s, i16 16384, i16 -16384
  store i16 %i.t, ptr %0, align 2
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %.not23 = icmp eq i32 %i.r, 0
  br i1 %.not23, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.inv = icmp slt i32 %i.q, 0
  %i.u = select i1 %.inv, i16 0, i16 -32768
  store i16 %i.u, ptr %0, align 2
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.v = sitofp i32 %i.q to float
  %i.w = sitofp i32 %i.r to float
  %i.x = tail call float @SDL_atan2f_REAL(float noundef %i.v, float noundef %i.w) #13
  %i.y = fpext float %i.x to double
  %i.z = fmul double %i.y, 1.800000e+04
  %i.aa = fdiv double %i.z, f0x400921FB54442D18
  %i.ab = fptosi double %i.aa to i32
  %i.ac = add nsw i32 %i.ab, 45000
  %i.ad = srem i32 %i.ac, 36000
  %i.ae = shl nsw i32 %i.ad, 15
  %i.af = udiv i32 %i.ae, 18000
  %i.ag = trunc i32 %i.af to i16
  store i16 %i.ag, ptr %0, align 2
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  store i16 16384, ptr %0, align 2
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ah = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.15) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.i, %bb.g, %bb.h, %bb.e, %bb.j
  %.0 = phi i1 [ %i.ah, %bb.j ], [ true, %bb.e ], [ true, %bb.h ], [ true, %bb.g ], [ true, %bb.i ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

declare float @SDL_atan2f_REAL(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = distinct !{!5, !4}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !4}
!9 = distinct !{!9, !7}
!10 = !{}
!11 = distinct !{!11, !4}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = distinct !{!14, !4}
end_hunk_1
