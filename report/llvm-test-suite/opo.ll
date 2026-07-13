inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@output_phase_setup:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !23   ; 5 uses
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !26
  %i.j = sext i32 %i.c to i64                     ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4    ; 2 uses
  %i.m = add i32 %i.l, %1                         ; 12 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !36
  %i.o = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.j
  %i.p = load i32, ptr %i.o, align 4, !tbaa !4    ; 10 uses
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !24
  %i.r = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.j
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = sub nsw i32 %i.s, %1                     ; 4 uses
  tail call void (...) @setdown_cube() #5
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !24
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !25
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !4
  %i.z = add nsw i32 %i.y, %i.t
  store i32 %i.z, ptr %i.x, align 4, !tbaa !4
  tail call void (...) @cube_setup() #5
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !18 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = shl i32 %i.ab, 5
  %i.ad = and i32 %i.ac, 32736                    ; 2 uses
  %i.ae = icmp samesign ult i32 %i.ad, 33
  %i.af = add nsw i32 %i.ad, -32
  %i.ag = lshr exact i32 %i.af, 3
  %i.ah = add nuw nsw i32 %i.ag, 8
  %narrow = select i1 %i.ae, i32 8, i32 %i.ah
  %i.ai = zext nneg i32 %narrow to i64
  %i.aj = tail call noalias ptr @malloc(i64 noundef %i.ai) #6
  %i.ak = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.aj, ptr noundef nonnull %i.aa) #5 ; 14 uses
  %i.al = ptrtoaddr ptr %i.ak to i64              ; 3 uses
  %i.am = load i32, ptr @cube, align 8, !tbaa !33
  %i.an = icmp slt i32 %i.m, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0197227 = phi i32 [ %i.ax, %.lr.ph ], [ %i.m, %bb.c ] ; 3 uses
  %i.ao = and i32 %.0197227, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = xor i32 %i.ap, -1
  %i.ar = ashr i32 %.0197227, 5
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [4 x i8], ptr %i.ak, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 4      ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !4
  %i.aw = and i32 %i.av, %i.aq
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ax = add nsw i32 %.0197227, 1                ; 2 uses
  %i.ay = load i32, ptr @cube, align 8, !tbaa !33
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.ba = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.bb = shl i32 %i.ba, 5
  %i.bc = and i32 %i.bb, 32736                    ; 2 uses
  %i.bd = icmp samesign ult i32 %i.bc, 33
  %i.be = add nsw i32 %i.bc, -32
  %i.bf = lshr exact i32 %i.be, 3
  %i.bg = add nuw nsw i32 %i.bf, 8
  %narrow223 = select i1 %i.bd, i32 8, i32 %i.bg
  %i.bh = zext nneg i32 %narrow223 to i64
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bh) #6
  %i.bj = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.bi, ptr noundef nonnull %i.ak) #5 ; 12 uses
  %i.bk = ptrtoaddr ptr %i.bj to i64              ; 2 uses
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !26
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !25
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !4  ; 7 uses
  %i.bq = icmp slt i32 %i.bp, %i.m
  br i1 %i.bq, label %.lr.ph230.preheader, label %._crit_edge231

.lr.ph230.preheader:                              ; preds = %._crit_edge
  %i.br = add i32 %i.l, %1                        ; 2 uses
  %i.bs = sub i32 %i.br, %i.bp
  %.neg.a = add i32 %i.bp, 1
  %xtraiter = and i32 %i.bs, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph230.prol.loopexit, label %.lr.ph230.prol

.lr.ph230.prol:                                   ; preds = %.lr.ph230.preheader
  %i.bt = and i32 %i.bp, 31
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = xor i32 %i.bu, -1
  %i.bw = ashr i32 %i.bp, 5
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr [4 x i8], ptr %i.bj, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 4      ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.cb = and i32 %i.ca, %i.bv
  store i32 %i.cb, ptr %i.bz, align 4, !tbaa !4
  %i.cc = add nsw i32 %i.bp, 1
  br label %.lr.ph230.prol.loopexit

.lr.ph230.prol.loopexit:                          ; preds = %.lr.ph230.prol, %.lr.ph230.preheader
  %.1228.unr = phi i32 [ %i.bp, %.lr.ph230.preheader ], [ %i.cc, %.lr.ph230.prol ]
  %i.cd = icmp eq i32 %i.br, %.neg.a
  br i1 %i.cd, label %._crit_edge231, label %.lr.ph230

.lr.ph230:                                        ; preds = %.lr.ph230.prol.loopexit, %.lr.ph230
  %.1228 = phi i32 [ %i.cx, %.lr.ph230 ], [ %.1228.unr, %.lr.ph230.prol.loopexit ] ; 4 uses
  %i.ce = and i32 %.1228, 31
  %i.cf = shl nuw i32 1, %i.ce
  %i.cg = xor i32 %i.cf, -1
  %i.ch = ashr i32 %.1228, 5
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [4 x i8], ptr %i.bj, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 4      ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %i.cm = and i32 %i.cl, %i.cg
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !4
  %i.cn = add nsw i32 %.1228, 1                   ; 2 uses
  %i.co = and i32 %i.cn, 31
  %i.cp = shl nuw i32 1, %i.co
  %i.cq = xor i32 %i.cp, -1
  %i.cr = ashr i32 %i.cn, 5
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr [4 x i8], ptr %i.bj, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 4      ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !4
  %i.cw = and i32 %i.cv, %i.cq
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !4
  %i.cx = add nsw i32 %.1228, 2                   ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.cx, %i.m
  br i1 %exitcond.not.1, label %._crit_edge231, label %.lr.ph230

._crit_edge231:                                   ; preds = %.lr.ph230.prol.loopexit, %.lr.ph230, %._crit_edge
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !27
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !27
  %i.dc = add nsw i32 %i.db, %i.cz
  %i.dd = load i32, ptr @cube, align 8, !tbaa !33
  %i.de = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.dc, i32 noundef %i.dd) #5
  store ptr %i.de, ptr %0, align 8, !tbaa !21
  %i.df = load i32, ptr %i.cy, align 4, !tbaa !27
  %i.dg = load i32, ptr %i.da, align 4, !tbaa !27
  %i.dh = add nsw i32 %i.dg, %i.df
  %i.di = load i32, ptr @cube, align 8, !tbaa !33
  %i.dj = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.dh, i32 noundef %i.di) #5
  store ptr %i.dj, ptr %i.g, align 8, !tbaa !23
  %i.dk = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !27
  %i.dm = load i32, ptr @cube, align 8, !tbaa !33
  %i.dn = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.dl, i32 noundef %i.dm) #5 ; 4 uses
  store ptr %i.dn, ptr %i.e, align 8, !tbaa !22
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !29 ; 2 uses
  %i.dq = load i32, ptr %i.cy, align 4, !tbaa !27
  %i.dr = load i32, ptr %i.d, align 8, !tbaa !30
  %i.ds = mul nsw i32 %i.dr, %i.dq                ; 2 uses
  %i.dt = sext i32 %i.ds to i64
  %.idx = shl nsw i64 %i.dt, 2
  %i.du = getelementptr inbounds i8, ptr %i.dp, i64 %.idx
  %i.dv = icmp sgt i32 %i.ds, 0
  br i1 %i.dv, label %.lr.ph242, label %._crit_edge243

.lr.ph242:                                        ; preds = %._crit_edge231
  %i.dw = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !29 ; 2 uses
  %i.dz = ptrtoaddr ptr %i.dy to i64              ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 12 ; 2 uses
  %i.eb = load ptr, ptr %i.g, align 8, !tbaa !23  ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !29 ; 2 uses
  %i.ee = ptrtoaddr ptr %i.ed to i64              ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 12 ; 4 uses
  %.not218232 = icmp sgt i32 %i.m, %i.p
  %invariant.op = sub i64 %i.dz, %i.al
  %invariant.op415 = sub i64 %i.ee, %i.bk
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph242, %._crit_edge239.thread302
  %.0198240 = phi ptr [ %i.dp, %.lr.ph242 ], [ %i.io, %._crit_edge239.thread302 ] ; 8 uses
  %.0198240319 = ptrtoaddr ptr %.0198240 to i64   ; 2 uses
  %i.eg = load i32, ptr %i.dw, align 8, !tbaa !30
  %i.eh = load i32, ptr %i.ea, align 4, !tbaa !27 ; 2 uses
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.ea, align 4, !tbaa !27
  %i.ej = mul nsw i32 %i.eh, %i.eg
  %i.ek = sext i32 %i.ej to i64                   ; 2 uses
  %i.el = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.ek ; 5 uses
  %i.em = load i32, ptr %i.eb, align 8, !tbaa !30
  %i.en = load i32, ptr %i.ef, align 4, !tbaa !27 ; 2 uses
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %i.ef, align 4, !tbaa !27
  %i.ep = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.eq = and i32 %i.ep, 1023
  %i.er = load i32, ptr %i.el, align 4, !tbaa !4
  %i.es = and i32 %i.er, -1024
  %i.et = or disjoint i32 %i.es, %i.eq
  store i32 %i.et, ptr %i.el, align 4, !tbaa !4
  %i.eu = and i32 %i.ep, 1023                     ; 2 uses
  %i.ev = zext nneg i32 %i.eu to i64              ; 5 uses
  %2 = icmp ne i32 %i.eu, 0
  %.neg = sext i1 %2 to i64
  %3 = add nsw i64 %.neg, %i.ev
  %i.ew = add nsw i64 %3, 1                       ; 3 uses
  %min.iters.check330 = icmp ult i64 %i.ew, 8
  br i1 %min.iters.check330, label %scalar.ph329.preheader, label %vector.memcheck324

vector.memcheck324:                               ; preds = %bb.d
  %i.ex = shl nsw i64 %i.ek, 2                    ; 2 uses
  %.reass = add i64 %i.ex, %invariant.op
  %diff.check325 = icmp ugt i64 %.reass, -32
  %i.ey = add i64 %i.ex, %i.dz
  %i.ez = sub i64 %i.ey, %.0198240319
  %diff.check326 = icmp ugt i64 %i.ez, -32
  %conflict.rdx327 = or i1 %diff.check325, %diff.check326
  br i1 %conflict.rdx327, label %scalar.ph329.preheader, label %vector.ph331

vector.ph331:                                     ; preds = %vector.memcheck324
  %n.vec333 = and i64 %i.ew, -8                   ; 3 uses
  %i.fa = sub nsw i64 %i.ev, %n.vec333
  br label %vector.body334

vector.body334:                                   ; preds = %vector.body334, %vector.ph331
  %index335 = phi i64 [ 0, %vector.ph331 ], [ %index.next340, %vector.body334 ] ; 2 uses
  %i.fb = sub i64 %i.ev, %index335                ; 3 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.fb ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 -12
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 -28
  %wide.load336.a = load <4 x i32>, ptr %i.fd, align 4, !tbaa !4
  %wide.load337.a = load <4 x i32>, ptr %i.fe, align 4, !tbaa !4
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %.0198240, i64 %i.fb ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 -12
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 -28
  %wide.load338.a = load <4 x i32>, ptr %i.fg, align 4, !tbaa !4
  %wide.load339 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !4
  %i.fi = and <4 x i32> %wide.load338.a, %wide.load336.a
  %i.fj = and <4 x i32> %wide.load339, %wide.load337.a
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.fb ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -12
  %i.fm = getelementptr inbounds i8, ptr %i.fk, i64 -28
  store <4 x i32> %i.fi, ptr %i.fl, align 4, !tbaa !4
  store <4 x i32> %i.fj, ptr %i.fm, align 4, !tbaa !4
  %index.next340 = add nuw i64 %index335, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next340, %n.vec333
  br i1 %i.fn, label %middle.block341, label %vector.body334, !llvm.loop !37

middle.block341:                                  ; preds = %vector.body334
  %cmp.n342 = icmp eq i64 %i.ew, %n.vec333
  br i1 %cmp.n342, label %.loopexit406, label %scalar.ph329.preheader

scalar.ph329.preheader:                           ; preds = %vector.memcheck324, %bb.d, %middle.block341
  %indvars.iv.ph = phi i64 [ %i.ev, %vector.memcheck324 ], [ %i.ev, %bb.d ], [ %i.fa, %middle.block341 ]
  br label %scalar.ph329

scalar.ph329:                                     ; preds = %scalar.ph329.preheader, %scalar.ph329
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph329 ], [ %indvars.iv.ph, %scalar.ph329.preheader ] ; 5 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %.0198240, i64 %indvars.iv
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !4
  %i.fs = and i32 %i.fr, %i.fp
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %indvars.iv
  store i32 %i.fs, ptr %i.ft, align 4, !tbaa !4
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.fu = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.fu, label %scalar.ph329, label %.loopexit406, !llvm.loop !40

.loopexit406:                                     ; preds = %scalar.ph329, %middle.block341
  %i.fv = mul nsw i32 %i.en, %i.em
  %i.fw = sext i32 %i.fv to i64                   ; 2 uses
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.ed, i64 %i.fw ; 5 uses
  %i.fy = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.fz = and i32 %i.fy, 1023
  %i.ga = load i32, ptr %i.fx, align 4, !tbaa !4
  %i.gb = and i32 %i.ga, -1024
  %i.gc = or disjoint i32 %i.gb, %i.fz
  store i32 %i.gc, ptr %i.fx, align 4, !tbaa !4
  %i.gd = and i32 %i.fy, 1023                     ; 2 uses
  %i.ge = zext nneg i32 %i.gd to i64              ; 5 uses
  %4 = icmp ne i32 %i.gd, 0
  %.neg403 = sext i1 %4 to i64
  %5 = add nsw i64 %.neg403, %i.ge
  %i.gf = add nsw i64 %5, 1                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.gf, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit406
  %i.gg = shl nsw i64 %i.fw, 2                    ; 2 uses
  %.reass416 = add i64 %i.gg, %invariant.op415
  %diff.check = icmp ugt i64 %.reass416, -32
  %i.gh = add i64 %i.gg, %i.ee
  %i.gi = sub i64 %i.gh, %.0198240319
  %diff.check320 = icmp ugt i64 %i.gi, -32
  %conflict.rdx = or i1 %diff.check, %diff.check320
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gf, -8                      ; 3 uses
  %i.gj = sub nsw i64 %i.ge, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gk = sub i64 %i.ge, %index                   ; 3 uses
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -12
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -28
  %wide.load = load <4 x i32>, ptr %i.gm, align 4, !tbaa !4
  %wide.load321 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !4
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.0198240, i64 %i.gk ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.go, i64 -12
  %i.gq = getelementptr inbounds i8, ptr %i.go, i64 -28
  %wide.load322 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !4
  %wide.load323 = load <4 x i32>, ptr %i.gq, align 4, !tbaa !4
  %i.gr = and <4 x i32> %wide.load322, %wide.load
  %i.gs = and <4 x i32> %wide.load323, %wide.load321
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %i.gk ; 2 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 -12
  %i.gv = getelementptr inbounds i8, ptr %i.gt, i64 -28
  store <4 x i32> %i.gr, ptr %i.gu, align 4, !tbaa !4
  store <4 x i32> %i.gs, ptr %i.gv, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gw = icmp eq i64 %index.next, %n.vec
  br i1 %i.gw, label %middle.block, label %vector.body, !llvm.loop !41

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gf, %n.vec
  br i1 %cmp.n, label %.preheader226, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.loopexit406, %middle.block
  %indvars.iv270.ph = phi i64 [ %i.ge, %vector.memcheck ], [ %i.ge, %.loopexit406 ], [ %i.gj, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv270 = phi i64 [ %indvars.iv.next271, %scalar.ph ], [ %indvars.iv270.ph, %scalar.ph.preheader ] ; 5 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv270
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !4
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.0198240, i64 %indvars.iv270
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !4
  %i.hb = and i32 %i.ha, %i.gy
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv270
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !4
  %indvars.iv.next271 = add nsw i64 %indvars.iv270, -1
  %i.hd = icmp samesign ugt i64 %indvars.iv270, 1
  br i1 %i.hd, label %scalar.ph, label %.preheader226, !llvm.loop !42

.preheader226:                                    ; preds = %scalar.ph, %middle.block
  br i1 %.not218232, label %._crit_edge239.thread, label %.lr.ph234

.lr.ph238.outer:                                  ; preds = %bb.f, %.thread
  %.3237.ph = phi i32 [ %i.ij, %.thread ], [ %i.m, %bb.f ]
  %i.he = phi i1 [ false, %.thread ], [ true, %bb.f ]
  br label %.lr.ph238

.lr.ph234:                                        ; preds = %.preheader226, %bb.f
  %.2233 = phi i32 [ %i.hq, %bb.f ], [ %i.m, %.preheader226 ] ; 4 uses
  %i.hf = ashr i32 %.2233, 5
  %i.hg = add nsw i32 %i.hf, 1
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %.0198240, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !4
  %i.hk = and i32 %.2233, 31
  %i.hl = shl nuw i32 1, %i.hk                    ; 2 uses
  %i.hm = and i32 %i.hj, %i.hl
  %.not222 = icmp eq i32 %i.hm, 0
  br i1 %.not222, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph234
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.hh ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !4
  %i.hp = or i32 %i.ho, %i.hl
  store i32 %i.hp, ptr %i.hn, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph234, %bb.e
  %i.hq = add i32 %.2233, 1
  %exitcond273.not = icmp eq i32 %.2233, %i.p
  br i1 %exitcond273.not, label %.lr.ph238.outer, label %.lr.ph234

.lr.ph238:                                        ; preds = %.lr.ph238.outer, %bb.g
  %.3237 = phi i32 [ %i.hz, %bb.g ], [ %.3237.ph, %.lr.ph238.outer ] ; 7 uses
  %i.hr = ashr i32 %.3237, 5
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr [4 x i8], ptr %.0198240, i64 %i.hs
  %i.hu = getelementptr i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !4
  %i.hw = and i32 %.3237, 31
  %i.hx = shl nuw i32 1, %i.hw
  %i.hy = and i32 %i.hv, %i.hx
  %.not221 = icmp eq i32 %i.hy, 0
  br i1 %.not221, label %bb.g, label %.thread

bb.g:                                             ; preds = %.lr.ph238
  %i.hz = add i32 %.3237, 1
  %exitcond274.not = icmp eq i32 %.3237, %i.p
  br i1 %exitcond274.not, label %._crit_edge239, label %.lr.ph238

.thread:                                          ; preds = %.lr.ph238
  %i.ia = add nsw i32 %.3237, %i.t                ; 2 uses
  %i.ib = and i32 %i.ia, 31
  %i.ic = shl nuw i32 1, %i.ib
  %i.id = ashr i32 %i.ia, 5
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr [4 x i8], ptr %i.fx, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 4      ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !4
  %i.ii = or i32 %i.ih, %i.ic
  store i32 %i.ii, ptr %i.ig, align 4, !tbaa !4
  %i.ij = add i32 %.3237, 1
  %exitcond274.not300 = icmp eq i32 %.3237, %i.p
  br i1 %exitcond274.not300, label %._crit_edge239.thread302, label %.lr.ph238.outer

._crit_edge239:                                   ; preds = %bb.g
  br i1 %i.he, label %._crit_edge239.thread, label %._crit_edge239.thread302

._crit_edge239.thread:                            ; preds = %.preheader226, %._crit_edge239
  %i.ik = load i32, ptr %i.ef, align 4, !tbaa !27
  %i.il = add nsw i32 %i.ik, -1
  store i32 %i.il, ptr %i.ef, align 4, !tbaa !27
  br label %._crit_edge239.thread302

._crit_edge239.thread302:                         ; preds = %.thread, %._crit_edge239, %._crit_edge239.thread
  %i.im = load i32, ptr %i.d, align 8, !tbaa !30
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [4 x i8], ptr %.0198240, i64 %i.in ; 2 uses
  %i.ip = icmp ult ptr %i.io, %i.du
  br i1 %i.ip, label %bb.d, label %._crit_edge243

._crit_edge243:                                   ; preds = %._crit_edge239.thread302, %._crit_edge231
  %i.iq = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !29 ; 2 uses
  %i.is = load i32, ptr %i.da, align 4, !tbaa !27
  %i.it = load i32, ptr %i.h, align 8, !tbaa !30
  %i.iu = mul nsw i32 %i.it, %i.is                ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %.idx267 = shl nsw i64 %i.iv, 2
  %i.iw = getelementptr inbounds i8, ptr %i.ir, i64 %.idx267
  %i.ix = icmp sgt i32 %i.iu, 0
  br i1 %i.ix, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %._crit_edge243
  %i.iy = load ptr, ptr %0, align 8, !tbaa !21    ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !29 ; 2 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64              ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 12 ; 4 uses
  %i.jd = load ptr, ptr %i.g, align 8, !tbaa !23  ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 24
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !29 ; 2 uses
  %i.jg = ptrtoaddr ptr %i.jf to i64              ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 12 ; 2 uses
  %.not213244 = icmp sgt i32 %i.m, %i.p           ; 2 uses
  %invariant.op417 = sub i64 %i.jb, %i.bk
  %invariant.op419 = sub i64 %i.jg, %i.al
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph257, %._crit_edge254
  %.1199255 = phi ptr [ %i.ir, %.lr.ph257 ], [ %i.nq, %._crit_edge254 ] ; 8 uses
  %.1199255346 = ptrtoaddr ptr %.1199255 to i64   ; 2 uses
  %i.ji = load i32, ptr %i.iy, align 8, !tbaa !30
  %i.jj = load i32, ptr %i.jc, align 4, !tbaa !27 ; 2 uses
  %i.jk = add nsw i32 %i.jj, 1
  store i32 %i.jk, ptr %i.jc, align 4, !tbaa !27
  %i.jl = mul nsw i32 %i.jj, %i.ji
  %i.jm = sext i32 %i.jl to i64                   ; 2 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jm ; 5 uses
  %i.jo = load i32, ptr %i.jd, align 8, !tbaa !30
  %i.jp = load i32, ptr %i.jh, align 4, !tbaa !27 ; 2 uses
  %i.jq = add nsw i32 %i.jp, 1
  store i32 %i.jq, ptr %i.jh, align 4, !tbaa !27
  %i.jr = load i32, ptr %i.bj, align 4, !tbaa !4  ; 2 uses
  %i.js = and i32 %i.jr, 1023
  %i.jt = load i32, ptr %i.jn, align 4, !tbaa !4
  %i.ju = and i32 %i.jt, -1024
  %i.jv = or disjoint i32 %i.ju, %i.js
  store i32 %i.jv, ptr %i.jn, align 4, !tbaa !4
  %i.jw = and i32 %i.jr, 1023                     ; 2 uses
  %i.jx = zext nneg i32 %i.jw to i64              ; 5 uses
  %6 = icmp ne i32 %i.jw, 0
  %.neg404 = sext i1 %6 to i64
  %7 = add nsw i64 %.neg404, %i.jx
  %i.jy = add nsw i64 %7, 1                       ; 3 uses
  %min.iters.check371 = icmp ult i64 %i.jy, 8
  br i1 %min.iters.check371, label %scalar.ph370.preheader, label %vector.memcheck365

vector.memcheck365:                               ; preds = %bb.h
  %i.jz = shl nsw i64 %i.jm, 2                    ; 2 uses
  %.reass418 = add i64 %i.jz, %invariant.op417
  %diff.check366 = icmp ugt i64 %.reass418, -32
  %i.ka = add i64 %i.jz, %i.jb
  %i.kb = sub i64 %i.ka, %.1199255346
  %diff.check367 = icmp ugt i64 %i.kb, -32
  %conflict.rdx368 = or i1 %diff.check366, %diff.check367
  br i1 %conflict.rdx368, label %scalar.ph370.preheader, label %vector.ph372

vector.ph372:                                     ; preds = %vector.memcheck365
  %n.vec374 = and i64 %i.jy, -8                   ; 3 uses
  %i.kc = sub nsw i64 %i.jx, %n.vec374
  br label %vector.body375

vector.body375:                                   ; preds = %vector.body375, %vector.ph372
  %index376 = phi i64 [ 0, %vector.ph372 ], [ %index.next381, %vector.body375 ] ; 2 uses
  %i.kd = sub i64 %i.jx, %index376                ; 3 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.kd ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.ke, i64 -12
  %i.kg = getelementptr inbounds i8, ptr %i.ke, i64 -28
  %wide.load377.a = load <4 x i32>, ptr %i.kf, align 4, !tbaa !4
  %wide.load378 = load <4 x i32>, ptr %i.kg, align 4, !tbaa !4
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.1199255, i64 %i.kd ; 2 uses
  %i.ki = getelementptr inbounds i8, ptr %i.kh, i64 -12
  %i.kj = getelementptr inbounds i8, ptr %i.kh, i64 -28
  %wide.load379 = load <4 x i32>, ptr %i.ki, align 4, !tbaa !4
  %wide.load380 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !4
  %i.kk = and <4 x i32> %wide.load379, %wide.load377.a
  %i.kl = and <4 x i32> %wide.load380, %wide.load378
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %i.kd ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.km, i64 -12
  %i.ko = getelementptr inbounds i8, ptr %i.km, i64 -28
  store <4 x i32> %i.kk, ptr %i.kn, align 4, !tbaa !4
  store <4 x i32> %i.kl, ptr %i.ko, align 4, !tbaa !4
  %index.next381 = add nuw i64 %index376, 8       ; 2 uses
  %i.kp = icmp eq i64 %index.next381, %n.vec374
  br i1 %i.kp, label %middle.block382, label %vector.body375, !llvm.loop !43

middle.block382:                                  ; preds = %vector.body375
  %cmp.n383 = icmp eq i64 %i.jy, %n.vec374
  br i1 %cmp.n383, label %.loopexit, label %scalar.ph370.preheader

scalar.ph370.preheader:                           ; preds = %vector.memcheck365, %bb.h, %middle.block382
  %indvars.iv275.ph = phi i64 [ %i.jx, %vector.memcheck365 ], [ %i.jx, %bb.h ], [ %i.kc, %middle.block382 ]
  br label %scalar.ph370

scalar.ph370:                                     ; preds = %scalar.ph370.preheader, %scalar.ph370
  %indvars.iv275 = phi i64 [ %indvars.iv.next276, %scalar.ph370 ], [ %indvars.iv275.ph, %scalar.ph370.preheader ] ; 5 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv275
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !4
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %.1199255, i64 %indvars.iv275
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !4
  %i.ku = and i32 %i.kt, %i.kr
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv275
  store i32 %i.ku, ptr %i.kv, align 4, !tbaa !4
  %indvars.iv.next276 = add nsw i64 %indvars.iv275, -1
  %i.kw = icmp samesign ugt i64 %indvars.iv275, 1
  br i1 %i.kw, label %scalar.ph370, label %.loopexit, !llvm.loop !44

.loopexit:                                        ; preds = %scalar.ph370, %middle.block382
  %i.kx = mul nsw i32 %i.jp, %i.jo
  %i.ky = sext i32 %i.kx to i64                   ; 2 uses
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.jf, i64 %i.ky ; 5 uses
  %i.la = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.lb = and i32 %i.la, 1023
  %i.lc = load i32, ptr %i.kz, align 4, !tbaa !4
  %i.ld = and i32 %i.lc, -1024
  %i.le = or disjoint i32 %i.ld, %i.lb
  store i32 %i.le, ptr %i.kz, align 4, !tbaa !4
  %i.lf = and i32 %i.la, 1023                     ; 2 uses
  %i.lg = zext nneg i32 %i.lf to i64              ; 5 uses
  %8 = icmp ne i32 %i.lf, 0
  %.neg405 = sext i1 %8 to i64
  %9 = add nsw i64 %.neg405, %i.lg
  %i.lh = add nsw i64 %9, 1                       ; 3 uses
  %min.iters.check351 = icmp ult i64 %i.lh, 8
  br i1 %min.iters.check351, label %scalar.ph350.preheader, label %vector.memcheck344

vector.memcheck344:                               ; preds = %.loopexit
  %i.li = shl nsw i64 %i.ky, 2                    ; 2 uses
  %.reass420 = add i64 %i.li, %invariant.op419
  %diff.check345 = icmp ugt i64 %.reass420, -32
  %i.lj = add i64 %i.li, %i.jg
  %i.lk = sub i64 %i.lj, %.1199255346
  %diff.check347 = icmp ugt i64 %i.lk, -32
  %conflict.rdx348 = or i1 %diff.check345, %diff.check347
  br i1 %conflict.rdx348, label %scalar.ph350.preheader, label %vector.ph352

vector.ph352:                                     ; preds = %vector.memcheck344
  %n.vec354 = and i64 %i.lh, -8                   ; 3 uses
  %i.ll = sub nsw i64 %i.lg, %n.vec354
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph352
  %index356 = phi i64 [ 0, %vector.ph352 ], [ %index.next361, %vector.body355 ] ; 2 uses
  %i.lm = sub i64 %i.lg, %index356                ; 3 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.lm ; 2 uses
  %i.lo = getelementptr inbounds i8, ptr %i.ln, i64 -12
  %i.lp = getelementptr inbounds i8, ptr %i.ln, i64 -28
  %wide.load357.a = load <4 x i32>, ptr %i.lo, align 4, !tbaa !4
  %wide.load358.a = load <4 x i32>, ptr %i.lp, align 4, !tbaa !4
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %.1199255, i64 %i.lm ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %i.lq, i64 -12
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 -28
  %wide.load359 = load <4 x i32>, ptr %i.lr, align 4, !tbaa !4
  %wide.load360 = load <4 x i32>, ptr %i.ls, align 4, !tbaa !4
  %i.lt = and <4 x i32> %wide.load359, %wide.load357.a
  %i.lu = and <4 x i32> %wide.load360, %wide.load358.a
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %i.lm ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %i.lv, i64 -12
  %i.lx = getelementptr inbounds i8, ptr %i.lv, i64 -28
  store <4 x i32> %i.lt, ptr %i.lw, align 4, !tbaa !4
  store <4 x i32> %i.lu, ptr %i.lx, align 4, !tbaa !4
  %index.next361 = add nuw i64 %index356, 8       ; 2 uses
  %i.ly = icmp eq i64 %index.next361, %n.vec354
  br i1 %i.ly, label %middle.block362, label %vector.body355, !llvm.loop !45

middle.block362:                                  ; preds = %vector.body355
  %cmp.n363 = icmp eq i64 %i.lh, %n.vec354
  br i1 %cmp.n363, label %.preheader224, label %scalar.ph350.preheader

scalar.ph350.preheader:                           ; preds = %vector.memcheck344, %.loopexit, %middle.block362
  %indvars.iv278.ph = phi i64 [ %i.lg, %vector.memcheck344 ], [ %i.lg, %.loopexit ], [ %i.ll, %middle.block362 ]
  br label %scalar.ph350

scalar.ph350:                                     ; preds = %scalar.ph350.preheader, %scalar.ph350
  %indvars.iv278 = phi i64 [ %indvars.iv.next279, %scalar.ph350 ], [ %indvars.iv278.ph, %scalar.ph350.preheader ] ; 5 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv278
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !4
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %.1199255, i64 %indvars.iv278
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !4
  %i.md = and i32 %i.mc, %i.ma
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv278
  store i32 %i.md, ptr %i.me, align 4, !tbaa !4
  %indvars.iv.next279 = add nsw i64 %indvars.iv278, -1
  %i.mf = icmp samesign ugt i64 %indvars.iv278, 1
  br i1 %i.mf, label %scalar.ph350, label %.preheader224, !llvm.loop !46

.preheader224:                                    ; preds = %scalar.ph350, %middle.block362
  br i1 %.not213244, label %._crit_edge248.thread, label %.lr.ph247.outer

.lr.ph247.outer:                                  ; preds = %.preheader224, %.thread305
  %.4246.ph = phi i32 [ %i.mz, %.thread305 ], [ %i.m, %.preheader224 ]
  %i.mg = phi i1 [ false, %.thread305 ], [ true, %.preheader224 ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.outer, %bb.i
  %.4246 = phi i32 [ %i.mp, %bb.i ], [ %.4246.ph, %.lr.ph247.outer ] ; 7 uses
  %i.mh = ashr i32 %.4246, 5
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr [4 x i8], ptr %.1199255, i64 %i.mi
  %i.mk = getelementptr i8, ptr %i.mj, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !4
  %i.mm = and i32 %.4246, 31
  %i.mn = shl nuw i32 1, %i.mm
  %i.mo = and i32 %i.ml, %i.mn
  %.not217 = icmp eq i32 %i.mo, 0
  br i1 %.not217, label %bb.i, label %.thread305

bb.i:                                             ; preds = %.lr.ph247
  %i.mp = add i32 %.4246, 1
  %exitcond281.not = icmp eq i32 %.4246, %i.p
  br i1 %exitcond281.not, label %._crit_edge248, label %.lr.ph247

.thread305:                                       ; preds = %.lr.ph247
  %i.mq = add nsw i32 %.4246, %i.t                ; 2 uses
  %i.mr = and i32 %i.mq, 31
  %i.ms = shl nuw i32 1, %i.mr
  %i.mt = ashr i32 %i.mq, 5
  %i.mu = sext i32 %i.mt to i64
  %i.mv = getelementptr [4 x i8], ptr %i.jn, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 4      ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !4
  %i.my = or i32 %i.mx, %i.ms
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !4
  %i.mz = add i32 %.4246, 1
  %exitcond281.not307 = icmp eq i32 %.4246, %i.p
  br i1 %exitcond281.not307, label %._crit_edge248.thread309, label %.lr.ph247.outer

._crit_edge248:                                   ; preds = %bb.i
  br i1 %i.mg, label %._crit_edge248.thread, label %._crit_edge248.thread309

._crit_edge248.thread:                            ; preds = %.preheader224, %._crit_edge248
  %i.na = load i32, ptr %i.jc, align 4, !tbaa !27
  %i.nb = add nsw i32 %i.na, -1
  store i32 %i.nb, ptr %i.jc, align 4, !tbaa !27
  br label %._crit_edge248.thread309

._crit_edge248.thread309:                         ; preds = %.thread305, %._crit_edge248.thread, %._crit_edge248
  br i1 %.not213244, label %._crit_edge254, label %.lr.ph253

.lr.ph253:                                        ; preds = %._crit_edge248.thread309, %bb.k
  %.5251 = phi i32 [ %i.nn, %bb.k ], [ %i.m, %._crit_edge248.thread309 ] ; 4 uses
  %i.nc = ashr i32 %.5251, 5
  %i.nd = add nsw i32 %i.nc, 1
  %i.ne = sext i32 %i.nd to i64                   ; 2 uses
  %i.nf = getelementptr inbounds [4 x i8], ptr %.1199255, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !4
  %i.nh = and i32 %.5251, 31
  %i.ni = shl nuw i32 1, %i.nh                    ; 2 uses
  %i.nj = and i32 %i.ng, %i.ni
  %.not216 = icmp eq i32 %i.nj, 0
  br i1 %.not216, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph253
  %i.nk = getelementptr inbounds [4 x i8], ptr %i.kz, i64 %i.ne ; 2 uses
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !4
  %i.nm = or i32 %i.nl, %i.ni
  store i32 %i.nm, ptr %i.nk, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph253, %bb.j
  %i.nn = add i32 %.5251, 1
  %exitcond282.not = icmp eq i32 %.5251, %i.p
  br i1 %exitcond282.not, label %._crit_edge254, label %.lr.ph253

._crit_edge254:                                   ; preds = %bb.k, %._crit_edge248.thread309
  %i.no = load i32, ptr %i.h, align 8, !tbaa !30
  %i.np = sext i32 %i.no to i64
  %i.nq = getelementptr inbounds [4 x i8], ptr %.1199255, i64 %i.np ; 2 uses
  %i.nr = icmp ult ptr %i.nq, %i.iw
  br i1 %i.nr, label %bb.h, label %._crit_edge258

._crit_edge258:                                   ; preds = %._crit_edge254, %._crit_edge243
  %i.ns = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !29 ; 2 uses
  %i.nu = load i32, ptr %i.dk, align 4, !tbaa !27
  %i.nv = load i32, ptr %i.f, align 8, !tbaa !30
  %i.nw = mul nsw i32 %i.nv, %i.nu                ; 2 uses
  %i.nx = sext i32 %i.nw to i64
  %.idx268 = shl nsw i64 %i.nx, 2
  %i.ny = getelementptr inbounds i8, ptr %i.nt, i64 %.idx268
  %i.nz = icmp sgt i32 %i.nw, 0
  br i1 %i.nz, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %._crit_edge258
  %i.oa = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !29 ; 2 uses
  %i.oc = ptrtoaddr ptr %i.ob to i64              ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.dn, i64 12 ; 2 uses
  %.not211259 = icmp sgt i32 %i.m, %i.p
  %invariant.op421 = sub i64 %i.oc, %i.al
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph265, %._crit_edge262
  %.2200263 = phi ptr [ %i.nt, %.lr.ph265 ], [ %i.qn, %._crit_edge262 ] ; 5 uses
  %i.oe = load i32, ptr %i.dn, align 8, !tbaa !30
  %i.of = load i32, ptr %i.od, align 4, !tbaa !27 ; 2 uses
  %i.og = add nsw i32 %i.of, 1
  store i32 %i.og, ptr %i.od, align 4, !tbaa !27
  %i.oh = mul nsw i32 %i.of, %i.oe
  %i.oi = sext i32 %i.oh to i64                   ; 2 uses
  %i.oj = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.oi ; 6 uses
  %i.ok = load i32, ptr %i.ak, align 4, !tbaa !4  ; 2 uses
  %i.ol = and i32 %i.ok, 1023
  %i.om = load i32, ptr %i.oj, align 4, !tbaa !4
  %i.on = and i32 %i.om, -1024
  %i.oo = or disjoint i32 %i.on, %i.ol
  store i32 %i.oo, ptr %i.oj, align 4, !tbaa !4
  %i.op = and i32 %i.ok, 1023                     ; 2 uses
  %i.oq = zext nneg i32 %i.op to i64              ; 5 uses
  %10 = icmp ne i32 %i.op, 0
  %.neg406 = sext i1 %10 to i64
  %11 = add nsw i64 %.neg406, %i.oq
  %i.or = add nsw i64 %11, 1                      ; 3 uses
  %min.iters.check392 = icmp ult i64 %i.or, 8
  br i1 %min.iters.check392, label %scalar.ph391.preheader, label %vector.memcheck385

vector.memcheck385:                               ; preds = %bb.l
  %.2200263387 = ptrtoaddr ptr %.2200263 to i64
  %i.os = shl nsw i64 %i.oi, 2                    ; 2 uses
  %.reass422 = add i64 %i.os, %invariant.op421
  %diff.check386 = icmp ugt i64 %.reass422, -32
  %i.ot = add i64 %i.os, %i.oc
  %i.ou = sub i64 %i.ot, %.2200263387
  %diff.check388 = icmp ugt i64 %i.ou, -32
  %conflict.rdx389 = or i1 %diff.check386, %diff.check388
  br i1 %conflict.rdx389, label %scalar.ph391.preheader, label %vector.ph393

vector.ph393:                                     ; preds = %vector.memcheck385
  %n.vec395 = and i64 %i.or, -8                   ; 3 uses
  %i.ov = sub nsw i64 %i.oq, %n.vec395
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph393
  %index397 = phi i64 [ 0, %vector.ph393 ], [ %index.next402, %vector.body396 ] ; 2 uses
  %i.ow = sub i64 %i.oq, %index397                ; 3 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ow ; 2 uses
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 -12
  %i.oz = getelementptr inbounds i8, ptr %i.ox, i64 -28
  %wide.load398 = load <4 x i32>, ptr %i.oy, align 4, !tbaa !4
  %wide.load399 = load <4 x i32>, ptr %i.oz, align 4, !tbaa !4
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %.2200263, i64 %i.ow ; 2 uses
  %i.pb = getelementptr inbounds i8, ptr %i.pa, i64 -12
  %i.pc = getelementptr inbounds i8, ptr %i.pa, i64 -28
  %wide.load400 = load <4 x i32>, ptr %i.pb, align 4, !tbaa !4
  %wide.load401 = load <4 x i32>, ptr %i.pc, align 4, !tbaa !4
  %i.pd = and <4 x i32> %wide.load400, %wide.load398
  %i.pe = and <4 x i32> %wide.load401, %wide.load399
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ow ; 2 uses
  %i.pg = getelementptr inbounds i8, ptr %i.pf, i64 -12
  %i.ph = getelementptr inbounds i8, ptr %i.pf, i64 -28
  store <4 x i32> %i.pd, ptr %i.pg, align 4, !tbaa !4
  store <4 x i32> %i.pe, ptr %i.ph, align 4, !tbaa !4
  %index.next402 = add nuw i64 %index397, 8       ; 2 uses
  %i.pi = icmp eq i64 %index.next402, %n.vec395
  br i1 %i.pi, label %middle.block403, label %vector.body396, !llvm.loop !47

middle.block403:                                  ; preds = %vector.body396
  %cmp.n404 = icmp eq i64 %i.or, %n.vec395
  br i1 %cmp.n404, label %.preheader, label %scalar.ph391.preheader

scalar.ph391.preheader:                           ; preds = %vector.memcheck385, %bb.l, %middle.block403
  %indvars.iv283.ph = phi i64 [ %i.oq, %vector.memcheck385 ], [ %i.oq, %bb.l ], [ %i.ov, %middle.block403 ]
  br label %scalar.ph391

scalar.ph391:                                     ; preds = %scalar.ph391.preheader, %scalar.ph391
  %indvars.iv283 = phi i64 [ %indvars.iv.next284, %scalar.ph391 ], [ %indvars.iv283.ph, %scalar.ph391.preheader ] ; 5 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv283
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !4
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %.2200263, i64 %indvars.iv283
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !4
  %i.pn = and i32 %i.pm, %i.pk
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv283
  store i32 %i.pn, ptr %i.po, align 4, !tbaa !4
  %indvars.iv.next284 = add nsw i64 %indvars.iv283, -1
  %i.pp = icmp samesign ugt i64 %indvars.iv283, 1
  br i1 %i.pp, label %scalar.ph391, label %.preheader, !llvm.loop !48

.preheader:                                       ; preds = %scalar.ph391, %middle.block403
  br i1 %.not211259, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %.preheader, %bb.n
  %.6260 = phi i32 [ %i.qk, %bb.n ], [ %i.m, %.preheader ] ; 5 uses
  %i.pq = ashr i32 %.6260, 5
  %i.pr = add nsw i32 %i.pq, 1
  %i.ps = sext i32 %i.pr to i64                   ; 2 uses
  %i.pt = getelementptr inbounds [4 x i8], ptr %.2200263, i64 %i.ps
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !4
  %i.pv = and i32 %.6260, 31
  %i.pw = shl nuw i32 1, %i.pv                    ; 2 uses
  %i.px = and i32 %i.pu, %i.pw
  %.not212 = icmp eq i32 %i.px, 0
  br i1 %.not212, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph261
  %i.py = getelementptr inbounds [4 x i8], ptr %i.oj, i64 %i.ps ; 2 uses
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !4
  %i.qa = or i32 %i.pz, %i.pw
  store i32 %i.qa, ptr %i.py, align 4, !tbaa !4
  %i.qb = add nsw i32 %.6260, %i.t                ; 2 uses
  %i.qc = and i32 %i.qb, 31
  %i.qd = shl nuw i32 1, %i.qc
  %i.qe = ashr i32 %i.qb, 5
  %i.qf = sext i32 %i.qe to i64
  %i.qg = getelementptr [4 x i8], ptr %i.oj, i64 %i.qf
  %i.qh = getelementptr i8, ptr %i.qg, i64 4      ; 2 uses
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !4
  %i.qj = or i32 %i.qi, %i.qd
  store i32 %i.qj, ptr %i.qh, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph261, %bb.m
  %i.qk = add i32 %.6260, 1
  %exitcond286.not = icmp eq i32 %.6260, %i.p
  br i1 %exitcond286.not, label %._crit_edge262, label %.lr.ph261

._crit_edge262:                                   ; preds = %bb.n, %.preheader
  %i.ql = load i32, ptr %i.f, align 8, !tbaa !30
  %i.qm = sext i32 %i.ql to i64
  %i.qn = getelementptr inbounds [4 x i8], ptr %.2200263, i64 %i.qm ; 2 uses
  %i.qo = icmp ult ptr %i.qn, %i.ny
  br i1 %i.qo, label %bb.l, label %._crit_edge266

._crit_edge266:                                   ; preds = %._crit_edge262, %._crit_edge258
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.d) #5
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.f) #5
  tail call void (ptr, ...) @sf_free(ptr noundef nonnull %i.h) #5
  tail call void @free(ptr noundef %i.ak) #5
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %._crit_edge266
  tail call void @free(ptr noundef nonnull %i.bj) #5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge266
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @set_phase(ptr nofree noundef returned captures(ret: address, provenance) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 80), align 8, !tbaa !49 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 5 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !51
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !52
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr [8 x i8], ptr %i.g, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 6 uses
  %i.m = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.f, ptr noundef %i.l, ptr noundef %i.d) #5 ; 0 uses
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !18
  %i.o = tail call ptr (ptr, ptr, ptr, ...) @set_diff(ptr noundef %i.b, ptr noundef %i.n, ptr noundef %i.l) #5
  %i.p = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.f, ptr noundef %i.o, ptr noundef %i.f) #5 ; 0 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !27
  %i.x = add nsw i32 %i.w, %i.s
  %i.y = load i32, ptr @cube, align 8, !tbaa !33
  %i.z = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.x, i32 noundef %i.y) #5 ; 7 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !27
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !27
  %i.ag = add nsw i32 %i.af, %i.ac
  %i.ah = load i32, ptr @cube, align 8, !tbaa !33
  %i.ai = tail call ptr (i32, i32, ...) @sf_new(i32 noundef %i.ag, i32 noundef %i.ah) #5 ; 7 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !21    ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !27
  %i.ao = load i32, ptr %i.aj, align 8, !tbaa !30
  %i.ap = mul nsw i32 %i.ao, %i.an                ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %.idx = shl nsw i64 %i.aq, 2
  %i.ar = getelementptr inbounds i8, ptr %i.al, i64 %.idx
  %i.as = icmp sgt i32 %i.ap, 0
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 12 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.070 = phi ptr [ %i.al, %.lr.ph ], [ %i.bu, %bb.f ] ; 3 uses
  %i.ax = tail call ptr (ptr, ptr, ptr, ...) @set_and(ptr noundef %i.b, ptr noundef %.070, ptr noundef %i.d) #5
  %i.ay = tail call i32 (ptr, ptr, ...) @setp_disjoint(ptr noundef %i.ax, ptr noundef %i.l) #5
  %.not68 = icmp eq i32 %i.ay, 0
  br i1 %.not68, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = load ptr, ptr %i.at, align 8, !tbaa !29
  %i.ba = load i32, ptr %i.z, align 8, !tbaa !30
  %i.bb = load i32, ptr %i.au, align 4, !tbaa !27 ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.au, align 4, !tbaa !27
  %i.bd = mul nsw i32 %i.bb, %i.ba
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.be
  %i.bg = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.bf, ptr noundef %i.b) #5 ; 0 uses
end_hunk_0
