Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_dfg?download=true
inline.NumInlined: 76
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@zend_dfg_add_use_def_op:bb.a
  br i1 %.not135.i, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !15
  %i.jk = lshr i32 %i.jj, 4
  %i.jl = add nsw i32 %i.jk, -5                   ; 3 uses
  %i.jm = zext i32 %i.jl to i64                   ; 2 uses
  %i.jn = lshr i64 %i.jm, 6
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.jn
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !17
  %i.jq = and i64 %i.jm, 63
  %i.jr = lshr i64 %i.jp, %i.jq
  %i.js = trunc i64 %i.jr to i1
  br i1 %i.js, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jt = and i32 %i.jl, 63
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = shl nuw i64 1, %i.ju
  %i.jw = lshr i32 %i.jl, 6
  %i.jx = zext nneg i32 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.jx ; 2 uses
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !17
  %i.ka = or i64 %i.jz, %i.jv
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !17
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au
  %i.kb = icmp eq i8 %i.b, 8
  br i1 %i.kb, label %bb.r, label %bb.bn

bb.ay:                                            ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.kc = icmp eq i8 %i.b, 8
  br i1 %i.kc, label %bb.r, label %bb.bn

bb.az:                                            ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %i.kd = and i32 %2, 134217728
  %.not134.i = icmp ne i32 %i.kd, 0
  %i.ke = icmp eq i8 %i.b, 8
  %or.cond6 = and i1 %.not134.i, %i.ke
  br i1 %or.cond6, label %bb.r, label %bb.bn

bb.ba:                                            ; preds = %bb.n
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !15
  %i.kh = lshr i32 %i.kg, 4
  %i.ki = add nsw i32 %i.kh, -5                   ; 3 uses
  %i.kj = zext i32 %i.ki to i64                   ; 2 uses
  %i.kk = lshr i64 %i.kj, 6
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.kk
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !17
  %i.kn = and i64 %i.kj, 63
  %i.ko = lshr i64 %i.km, %i.kn
  %i.kp = trunc i64 %i.ko to i1
  br i1 %i.kp, label %bb.bn, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.kq = and i32 %i.ki, 63
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = shl nuw i64 1, %i.kr
  %i.kt = lshr i32 %i.ki, 6
  %i.ku = zext nneg i32 %i.kt to i64
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ku ; 2 uses
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.kx = or i64 %i.kw, %i.ks
  store i64 %i.kx, ptr %i.kv, align 8, !tbaa !17
  br label %bb.bn

bb.bc:                                            ; preds = %bb.n
  %i.ky = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !15
  %i.la = lshr i32 %i.kz, 4
  %i.lb = add nsw i32 %i.la, -5                   ; 3 uses
  %i.lc = zext i32 %i.lb to i64                   ; 2 uses
  %i.ld = lshr i64 %i.lc, 6
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.ld
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !17
  %i.lg = and i64 %i.lc, 63
  %i.lh = lshr i64 %i.lf, %i.lg
  %i.li = trunc i64 %i.lh to i1
  br i1 %i.li, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.lj = and i32 %i.lb, 63
  %i.lk = zext nneg i32 %i.lj to i64
  %i.ll = shl nuw i64 1, %i.lk
  %i.lm = lshr i32 %i.lb, 6
  %i.ln = zext nneg i32 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ln ; 2 uses
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !17
  %i.lq = or i64 %i.lp, %i.ll
  store i64 %i.lq, ptr %i.lo, align 8, !tbaa !17
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.n
  %i.lr = and i32 %2, 134217728
  %.not132.i = icmp eq i32 %i.lr, 0
  br i1 %.not132.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ls = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !21
  %.not133.i = trunc i32 %i.lt to i1
  %i.lu = icmp eq i8 %i.b, 8
  %or.cond7 = and i1 %i.lu, %.not133.i
  br i1 %or.cond7, label %bb.r, label %bb.bn

bb.bg:                                            ; preds = %bb.be
  %.old = icmp eq i8 %i.b, 8
  br i1 %.old, label %bb.r, label %bb.bn

bb.bh:                                            ; preds = %bb.n
  %i.lv = icmp eq i8 %i.b, 8
  br i1 %i.lv, label %bb.bi, label %bb.bn

bb.bi:                                            ; preds = %bb.bh
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !37
  %i.ly = and i32 %i.lx, 4096
  %i.lz = and i32 %2, 134217728
  %i.ma = or disjoint i32 %i.ly, %i.lz
  %or.cond.i = icmp eq i32 %i.ma, 0
  br i1 %or.cond.i, label %bb.bn, label %bb.r

bb.bj:                                            ; preds = %bb.n
  br i1 %.not.i, label %bb.bn, label %bb.r

bb.bk:                                            ; preds = %bb.n, %bb.n
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !15
  %i.md = lshr i32 %i.mc, 4
  %i.me = add nsw i32 %i.md, -5                   ; 2 uses
  %i.mf = and i32 %i.me, 63
  %i.mg = zext nneg i32 %i.mf to i64
  %i.mh = shl nuw i64 1, %i.mg
  %i.mi = lshr i32 %i.me, 6
  %i.mj = zext nneg i32 %i.mi to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.mj ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !17
  %i.mm = or i64 %i.mh, %i.ml
  store i64 %i.mm, ptr %i.mk, align 8, !tbaa !17
  br label %bb.bn

bb.bl:                                            ; preds = %bb.n
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !21
  %i.mp = and i32 %i.mo, 1
  %i.mq = and i32 %2, 134217728
  %i.mr = or disjoint i32 %i.mp, %i.mq
  %or.cond145.i = icmp eq i32 %i.mr, 0
  br i1 %or.cond145.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !15
  %i.mu = lshr i32 %i.mt, 4
  %i.mv = add nsw i32 %i.mu, -5                   ; 2 uses
  %i.mw = and i32 %i.mv, 63
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = shl nuw i64 1, %i.mx
  %i.mz = lshr i32 %i.mv, 6
  %i.na = zext nneg i32 %i.mz to i64
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.na ; 2 uses
  %i.nc = load i64, ptr %i.nb, align 8, !tbaa !17
  %i.nd = or i64 %i.my, %i.nc
  store i64 %i.nd, ptr %i.nb, align 8, !tbaa !17
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.ah, %bb.ag, %bb.aa, %bb.u, %bb.r, %bb.q, %bb.n
  %i.ne = getelementptr inbounds nuw i8, ptr %1, i64 31
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !20
  %i.ng = and i8 %i.nf, 14
  %.not144.i = icmp eq i8 %i.ng, 0
  br i1 %.not144.i, label %_zend_dfg_add_use_def_op.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !15
  %i.nj = lshr i32 %i.ni, 4
  %i.nk = add nsw i32 %i.nj, -5                   ; 2 uses
  %i.nl = and i32 %i.nk, 63
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = shl nuw i64 1, %i.nm
  %i.no = lshr i32 %i.nk, 6
  %i.np = zext nneg i32 %i.no to i64
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.np ; 2 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !17
  %i.ns = or i64 %i.nn, %i.nr
  store i64 %i.ns, ptr %i.nq, align 8, !tbaa !17
  br label %_zend_dfg_add_use_def_op.exit

_zend_dfg_add_use_def_op.exit:                    ; preds = %bb.bn, %bb.bo
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zend_build_dfg(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.c = load i32, ptr %1, align 8, !tbaa !56     ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !59   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !60   ; 7 uses
  %i.h = ptrtoaddr ptr %i.g to i64                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61   ; 3 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62   ; 3 uses
  %i.n = ptrtoaddr ptr %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64   ; 4 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp sgt i32 %i.c, 0                     ; 2 uses
  br i1 %i.t, label %.lr.ph184, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre = zext i32 %i.c to i64
  br label %._crit_edge

.lr.ph184:                                        ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = and i32 %3, 4194304
  %.not125.i = icmp eq i32 %i.v, 0
  %i.w = and i32 %3, 134217728                    ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.not132.i = icmp eq i32 %i.w, 0
  %.not134.i = icmp ne i32 %i.w, 0                ; 4 uses
  %i.y = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph184, %.loopexit176
  %indvars.iv = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next, %.loopexit176 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %indvars.iv ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !66
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %.loopexit176, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !68
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %.idx = shl nuw nsw i64 %i.ak, 5
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.idx
  %i.am = mul nsw i64 %indvars.iv, %i.y           ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.am ; 11 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.am ; 21 uses
  %.not194 = icmp eq i32 %i.aj, 0
  br i1 %.not194, label %.loopexit176, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_zend_dfg_add_use_def_op.exit
  %.0179 = phi ptr [ %i.ov, %_zend_dfg_add_use_def_op.exit ], [ %i.ah, %bb.c ] ; 31 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0179, i64 28
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !19  ; 4 uses
  %.not151 = icmp eq i8 %i.aq, -119
  br i1 %.not151, label %_zend_dfg_add_use_def_op.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %.0179, i64 29
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !14  ; 11 uses
  %i.at = and i8 %i.as, 14
  %.not.i = icmp eq i8 %i.at, 0                   ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.0179, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !15
  %i.aw = lshr i32 %i.av, 4
  %i.ax = add nsw i32 %i.aw, -5                   ; 3 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !17
  %i.bc = and i64 %i.ay, 63
  %i.bd = lshr i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i1
  br i1 %i.be, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = and i32 %i.ax, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw i64 1, %i.bg
  %i.bi = lshr i32 %i.ax, 6
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !17
  %i.bm = or i64 %i.bl, %i.bh
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %.0179, i64 30
  %i.bo = load i8, ptr %i.bn, align 2, !tbaa !18  ; 4 uses
  %i.bp = and i8 %i.bo, 6
  %.not122.i = icmp eq i8 %i.bp, 0
  br i1 %.not122.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i8 %i.aq, label %bb.j [
    i8 78, label %bb.i
    i8 126, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.g
  %i.bq = icmp eq i8 %i.bo, 8
  br i1 %i.bq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.0179, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !15
  %i.bt = lshr i32 %i.bs, 4
  %i.bu = add nsw i32 %i.bt, -5                   ; 3 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !17
  %i.bz = and i64 %i.bv, 63
  %i.ca = lshr i64 %i.by, %i.bz
  %i.cb = trunc i64 %i.ca to i1
  br i1 %i.cb, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = and i32 %i.bu, 63
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw i64 1, %i.cd
  %i.cf = lshr i32 %i.bu, 6
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !17
  %i.cj = or i64 %i.ci, %i.ce
  store i64 %i.cj, ptr %i.ch, align 8, !tbaa !17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  br i1 %.not125.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %.0179, i64 31
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !20
  %i.cm = icmp eq i8 %i.cl, 8
  br i1 %i.cm, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not126.i = icmp eq i8 %i.aq, 63
  br i1 %.not126.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %.0179, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !15
  %i.cp = lshr i32 %i.co, 4
  %i.cq = add nsw i32 %i.cp, -5                   ; 3 uses
  %i.cr = zext i32 %i.cq to i64                   ; 2 uses
  %i.cs = lshr i64 %i.cr, 6
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !17
  %i.cv = and i64 %i.cr, 63
  %i.cw = lshr i64 %i.cu, %i.cv
  %i.cx = trunc i64 %i.cw to i1
  br i1 %i.cx, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = and i32 %i.cq, 63
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = lshr i32 %i.cq, 6
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !17
  %i.df = or i64 %i.de, %i.da
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.m, %bb.l
  switch i8 %i.aq, label %.thread [
    i8 22, label %bb.r
    i8 30, label %bb.v
    i8 23, label %bb.y
    i8 24, label %bb.y
    i8 32, label %bb.ae
    i8 25, label %bb.ak
    i8 33, label %bb.ap
    i8 29, label %bb.au
    i8 -49, label %bb.au
    i8 27, label %bb.ax
    i8 28, label %bb.ax
    i8 26, label %bb.bb
    i8 34, label %bb.bb
    i8 35, label %bb.bb
    i8 36, label %bb.bb
    i8 37, label %bb.bb
    i8 -88, label %bb.bb
    i8 -73, label %bb.bb
    i8 -53, label %bb.bb
    i8 106, label %bb.bb
    i8 50, label %bb.bb
    i8 66, label %bb.bb
    i8 -71, label %bb.bb
    i8 67, label %bb.bb
    i8 -91, label %bb.bb
    i8 125, label %bb.bb
    i8 -116, label %bb.bb
    i8 -124, label %bb.bb
    i8 -123, label %bb.bb
    i8 -122, label %bb.bb
    i8 -121, label %bb.bb
    i8 75, label %bb.bb
    i8 76, label %bb.bb
    i8 84, label %bb.bb
    i8 87, label %bb.bb
    i8 93, label %bb.bb
    i8 96, label %bb.bb
    i8 -101, label %bb.bb
    i8 117, label %bb.bc
    i8 51, label %bb.bc
    i8 31, label %bb.bc
    i8 -104, label %bb.bc
    i8 -87, label %bb.bc
    i8 77, label %bb.bc
    i8 -109, label %bb.bd
    i8 72, label %bb.bf
    i8 71, label %bb.bh
    i8 -96, label %bb.bk
    i8 -103, label %bb.u
    i8 124, label %bb.bm
    i8 78, label %bb.bn
    i8 126, label %bb.bn
    i8 -74, label %bb.bo
  ]

bb.r:                                             ; preds = %bb.q
  %i.dg = icmp eq i8 %i.bo, 8
  %or.cond = and i1 %.not134.i, %i.dg
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dh = getelementptr inbounds nuw i8, ptr %.0179, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !15
  %i.dj = lshr i32 %i.di, 4
  %i.dk = add nsw i32 %i.dj, -5                   ; 2 uses
  %i.dl = and i32 %i.dk, 63
  %i.dm = zext nneg i32 %i.dl to i64
end_hunk_0
begin_hunk_1_@zend_build_dfg:bb.a

bb.ay:                                            ; preds = %bb.ax
  %i.kp = getelementptr inbounds nuw i8, ptr %.0179, i64 40
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !15
  %i.kr = lshr i32 %i.kq, 4
  %i.ks = add nsw i32 %i.kr, -5                   ; 3 uses
  %i.kt = zext i32 %i.ks to i64                   ; 2 uses
  %i.ku = lshr i64 %i.kt, 6
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ku
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.kx = and i64 %i.kt, 63
  %i.ky = lshr i64 %i.kw, %i.kx
  %i.kz = trunc i64 %i.ky to i1
  br i1 %i.kz, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.la = and i32 %i.ks, 63
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = shl nuw i64 1, %i.lb
  %i.ld = lshr i32 %i.ks, 6
  %i.le = zext nneg i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.le ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !17
  %i.lh = or i64 %i.lg, %i.lc
  store i64 %i.lh, ptr %i.lf, align 8, !tbaa !17
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %i.li = icmp eq i8 %i.as, 8
  br i1 %i.li, label %bb.u, label %.thread

bb.bb:                                            ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.lj = icmp eq i8 %i.as, 8
  br i1 %i.lj, label %bb.u, label %.thread

bb.bc:                                            ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q
  %i.lk = icmp eq i8 %i.as, 8
  %or.cond172 = and i1 %.not134.i, %i.lk
  br i1 %or.cond172, label %bb.u, label %.thread

bb.bd:                                            ; preds = %bb.q
  %i.ll = getelementptr inbounds nuw i8, ptr %.0179, i64 16
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !15
  %i.ln = lshr i32 %i.lm, 4
  %i.lo = add nsw i32 %i.ln, -5                   ; 3 uses
  %i.lp = zext i32 %i.lo to i64                   ; 2 uses
  %i.lq = lshr i64 %i.lp, 6
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.lq
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !17
  %i.lt = and i64 %i.lp, 63
  %i.lu = lshr i64 %i.ls, %i.lt
  %i.lv = trunc i64 %i.lu to i1
  br i1 %i.lv, label %.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.lw = and i32 %i.lo, 63
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl nuw i64 1, %i.lx
  %i.lz = lshr i32 %i.lo, 6
  %i.ma = zext nneg i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ma ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !17
  %i.md = or i64 %i.mc, %i.ly
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !17
  br label %.thread

bb.bf:                                            ; preds = %bb.q
  %i.me = getelementptr inbounds nuw i8, ptr %.0179, i64 16
  %i.mf = load i32, ptr %i.me, align 8, !tbaa !15
  %i.mg = lshr i32 %i.mf, 4
  %i.mh = add nsw i32 %i.mg, -5                   ; 3 uses
  %i.mi = zext i32 %i.mh to i64                   ; 2 uses
  %i.mj = lshr i64 %i.mi, 6
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.mj
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !17
  %i.mm = and i64 %i.mi, 63
  %i.mn = lshr i64 %i.ml, %i.mm
  %i.mo = trunc i64 %i.mn to i1
  br i1 %i.mo, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mp = and i32 %i.mh, 63
  %i.mq = zext nneg i32 %i.mp to i64
  %i.mr = shl nuw i64 1, %i.mq
  %i.ms = lshr i32 %i.mh, 6
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.mt ; 2 uses
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !17
  %i.mw = or i64 %i.mv, %i.mr
  store i64 %i.mw, ptr %i.mu, align 8, !tbaa !17
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %bb.q
  br i1 %.not132.i, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.mx = getelementptr inbounds nuw i8, ptr %.0179, i64 20
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !21
  %.not133.i = trunc i32 %i.my to i1
  %i.mz = icmp eq i8 %i.as, 8
  %or.cond173 = and i1 %i.mz, %.not133.i
  br i1 %or.cond173, label %bb.u, label %.thread

bb.bj:                                            ; preds = %bb.bh
  %.old = icmp eq i8 %i.as, 8
  br i1 %.old, label %bb.u, label %.thread

bb.bk:                                            ; preds = %bb.q
  %i.na = icmp eq i8 %i.as, 8
  br i1 %i.na, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  %i.nb = load i32, ptr %i.x, align 4, !tbaa !37
  %i.nc = and i32 %i.nb, 4096
  %i.nd = or disjoint i32 %i.nc, %i.w
  %or.cond.i = icmp eq i32 %i.nd, 0
  br i1 %or.cond.i, label %.thread, label %bb.u

bb.bm:                                            ; preds = %bb.q
  br i1 %.not.i, label %.thread, label %bb.u

bb.bn:                                            ; preds = %bb.q, %bb.q
  %i.ne = getelementptr inbounds nuw i8, ptr %.0179, i64 12
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !15
  %i.ng = lshr i32 %i.nf, 4
  %i.nh = add nsw i32 %i.ng, -5                   ; 2 uses
  %i.ni = and i32 %i.nh, 63
  %i.nj = zext nneg i32 %i.ni to i64
  %i.nk = shl nuw i64 1, %i.nj
  %i.nl = lshr i32 %i.nh, 6
  %i.nm = zext nneg i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.nm ; 2 uses
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !17
  %i.np = or i64 %i.nk, %i.no
  store i64 %i.np, ptr %i.nn, align 8, !tbaa !17
  br label %.thread

bb.bo:                                            ; preds = %bb.q
  %i.nq = getelementptr inbounds nuw i8, ptr %.0179, i64 20
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !21
  %i.ns = and i32 %i.nr, 1
  %i.nt = or disjoint i32 %i.ns, %i.w
  %or.cond145.i = icmp eq i32 %i.nt, 0
  br i1 %or.cond145.i, label %.thread, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nu = getelementptr inbounds nuw i8, ptr %.0179, i64 12
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !15
  %i.nw = lshr i32 %i.nv, 4
  %i.nx = add nsw i32 %i.nw, -5                   ; 2 uses
  %i.ny = and i32 %i.nx, 63
  %i.nz = zext nneg i32 %i.ny to i64
  %i.oa = shl nuw i64 1, %i.nz
  %i.ob = lshr i32 %i.nx, 6
  %i.oc = zext nneg i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.oc ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !17
  %i.of = or i64 %i.oa, %i.oe
  store i64 %i.of, ptr %i.od, align 8, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ap, %bb.ao, %bb.an, %bb.ak, %bb.aj, %bb.ad, %bb.x, %bb.u, %bb.t, %bb.q
  %i.og = getelementptr inbounds nuw i8, ptr %.0179, i64 31
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !20
  %i.oi = and i8 %i.oh, 14
  %.not144.i = icmp eq i8 %i.oi, 0
  br i1 %.not144.i, label %_zend_dfg_add_use_def_op.exit, label %bb.bq

bb.bq:                                            ; preds = %.thread
  %i.oj = getelementptr inbounds nuw i8, ptr %.0179, i64 16
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !15
  %i.ol = lshr i32 %i.ok, 4
  %i.om = add nsw i32 %i.ol, -5                   ; 2 uses
  %i.on = and i32 %i.om, 63
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = shl nuw i64 1, %i.oo
  %i.oq = lshr i32 %i.om, 6
  %i.or = zext nneg i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.or ; 2 uses
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !17
  %i.ou = or i64 %i.op, %i.ot
  store i64 %i.ou, ptr %i.os, align 8, !tbaa !17
  br label %_zend_dfg_add_use_def_op.exit

_zend_dfg_add_use_def_op.exit:                    ; preds = %bb.bq, %.thread, %.lr.ph
  %i.ov = getelementptr inbounds nuw i8, ptr %.0179, i64 32 ; 2 uses
  %i.ow = icmp ult ptr %i.ov, %i.al
  br i1 %i.ow, label %.lr.ph, label %.loopexit176, !llvm.loop !38

.loopexit176:                                     ; preds = %_zend_dfg_add_use_def_op.exit, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !39

._crit_edge:                                      ; preds = %.loopexit176, %.._crit_edge_crit_edge
  %.pre-phi211 = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %wide.trip.count, %.loopexit176 ]
  %i.ox = add nuw nsw i64 %.pre-phi211, 63
  %i.oy = lshr i64 %i.ox, 6                       ; 4 uses
  %i.oz = shl nuw nsw i64 %i.oy, 3                ; 3 uses
  %i.pa = icmp ugt i32 %i.c, 262144               ; 2 uses
  br i1 %i.pa, label %bb.br, label %bb.bs, !prof !71

bb.br:                                            ; preds = %._crit_edge
  %i.pb = tail call noalias ptr @_emalloc(i64 noundef %i.oz) #9
  br label %bb.bt

bb.bs:                                            ; preds = %._crit_edge
  %i.pc = alloca i8, i64 %i.oz, align 16
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %i.pd = phi ptr [ %i.pc, %bb.bs ], [ %i.pb, %bb.br ] ; 11 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.pd, i8 0, i64 %i.oz, i1 false)
  br i1 %i.t, label %.lr.ph187.preheader, label %.preheader

.lr.ph187.preheader:                              ; preds = %bb.bt
  %xtraiter = and i32 %i.c, 1
  %i.pe = icmp eq i32 %i.c, 1
  br i1 %i.pe, label %.lr.ph187.epil.preheader, label %.lr.ph187.preheader.new

.lr.ph187.preheader.new:                          ; preds = %.lr.ph187.preheader
  %unroll_iter = and i32 %i.c, 2147483646
  br label %.lr.ph187

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph187
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph187.epil.preheader

.lr.ph187.epil.preheader:                         ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph187.preheader
  %.1185.epil.init = phi i32 [ 0, %.lr.ph187.preheader ], [ %i.qj, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod262 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod262)
  %i.pf = and i32 %.1185.epil.init, 63
  %i.pg = zext nneg i32 %i.pf to i64
  %i.ph = shl nuw i64 1, %i.pg
  %i.pi = lshr i32 %.1185.epil.init, 6
  %i.pj = zext nneg i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pj ; 2 uses
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !17
  %i.pm = or i64 %i.pl, %i.ph
  store i64 %i.pm, ptr %i.pk, align 8, !tbaa !17
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph187.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.bt
  %i.pn = icmp eq i64 %i.oy, 0
  br i1 %i.pn, label %.thread169, label %.lr.ph.i.preheader.lr.ph

.lr.ph.i.preheader.lr.ph:                         ; preds = %.preheader
  %i.po = zext i32 %i.e to i64                    ; 11 uses
  %i.pp = shl nuw nsw i64 %i.po, 3                ; 6 uses
  %.not.i155 = icmp eq i32 %i.e, 0                ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.pp
  %scevgep239 = getelementptr i8, ptr %i.p, i64 %i.pp
  %min.iters.check242 = icmp ult i32 %i.e, 4
  %n.vec244 = and i64 %i.po, 4294967292           ; 3 uses
  %cmp.n253 = icmp eq i64 %n.vec244, %i.po
  %xtraiter263 = and i64 %i.po, 3                 ; 2 uses
  %lcmp.mod264.not = icmp eq i64 %xtraiter263, 0
  %min.iters.check = icmp ult i32 %i.e, 8
  %invariant.op = sub i64 %i.n, %i.h
  %invariant.op278 = sub i64 %i.s, %i.h
  %invariant.op280 = sub i64 %i.k, %i.h
  %n.vec = and i64 %i.po, 4294967292              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.po
  %xtraiter265 = and i64 %i.po, 1
  %lcmp.mod266.not = icmp eq i64 %xtraiter265, 0
  %i.pr = add nsw i64 %i.po, -1
  br label %.lr.ph.i

.lr.ph187:                                        ; preds = %.lr.ph187, %.lr.ph187.preheader.new
  %.1185 = phi i32 [ 0, %.lr.ph187.preheader.new ], [ %i.qj, %.lr.ph187 ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph187.preheader.new ], [ %niter.next.1, %.lr.ph187 ]
  %i.ps = and i32 %.1185, 62
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = shl nuw nsw i64 1, %i.pt
  %i.pv = lshr i32 %.1185, 6
  %i.pw = zext nneg i32 %i.pv to i64
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pw ; 2 uses
  %i.py = load i64, ptr %i.px, align 8, !tbaa !17
  %i.pz = or i64 %i.py, %i.pu
  store i64 %i.pz, ptr %i.px, align 8, !tbaa !17
  %i.qa = and i32 %.1185, 62
  %i.qb = or disjoint i32 %i.qa, 1
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = shl nuw i64 1, %i.qc
  %i.qe = lshr i32 %.1185, 6
  %i.qf = zext nneg i32 %i.qe to i64
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.qf ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !17
  %i.qi = or i64 %i.qh, %i.qd
  store i64 %i.qi, ptr %i.qg, align 8, !tbaa !17
  %i.qj = add nuw nsw i32 %.1185, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph187, !llvm.loop !40

bb.bu:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.oy
  br i1 %exitcond.not.i, label %bb.ca, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %.lr.ph193.epil.preheader, %.lr.ph.i.loopexit.unr-lcssa, %bb.bu, %zend_bitset_union_with_difference.exit, %bb.bz, %zend_bitset_last.exit
  %indvars.iv.i.be = phi i64 [ %indvars.iv.next.i, %bb.bu ], [ 0, %zend_bitset_last.exit ], [ 0, %zend_bitset_union_with_difference.exit ], [ 0, %bb.bz ], [ 0, %.lr.ph.i.loopexit.unr-lcssa ], [ 0, %.lr.ph193.epil.preheader ]
  br label %.lr.ph.i, !llvm.loop !41

.lr.ph.i.loopexit.unr-lcssa:                      ; preds = %.lr.ph193
  %lcmp.mod269.not = icmp eq i64 %xtraiter268, 0
  br i1 %lcmp.mod269.not, label %.lr.ph.i.backedge, label %.lr.ph193.epil.preheader

.lr.ph193.epil.preheader:                         ; preds = %.lr.ph.i.loopexit.unr-lcssa, %.lr.ph193.preheader
  %indvars.iv205.epil.init = phi i64 [ 0, %.lr.ph193.preheader ], [ %indvars.iv.next206.1, %.lr.ph.i.loopexit.unr-lcssa ]
  %lcmp.mod270 = trunc i32 %i.vv to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv205.epil.init
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !72 ; 2 uses
  %i.qm = and i32 %i.ql, 63
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = shl nuw i64 1, %i.qn
  %i.qp = lshr i32 %i.ql, 6
  %i.qq = zext nneg i32 %i.qp to i64
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.qq ; 2 uses
  %i.qs = load i64, ptr %i.qr, align 8, !tbaa !17
  %i.qt = or i64 %i.qo, %i.qs
  store i64 %i.qt, ptr %i.qr, align 8, !tbaa !17
  br label %.lr.ph.i.backedge

.lr.ph.i:                                         ; preds = %.lr.ph.i.backedge, %.lr.ph.i.preheader.lr.ph
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.preheader.lr.ph ], [ %indvars.iv.i.be, %.lr.ph.i.backedge ] ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %indvars.iv.i
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !17
  %.not.i152 = icmp eq i64 %i.qv, 0
  br i1 %.not.i152, label %bb.bu, label %zend_bitset_empty.exit.preheader

zend_bitset_empty.exit:                           ; preds = %zend_bitset_empty.exit.preheader
  %.not.i154 = icmp eq i64 %i.qw, 0
  br i1 %.not.i154, label %zend_bitset_last.exit, label %zend_bitset_empty.exit.preheader, !llvm.loop !42

zend_bitset_empty.exit.preheader:                 ; preds = %.lr.ph.i, %zend_bitset_empty.exit
  %indvars.iv.i153228 = phi i64 [ %i.qw, %zend_bitset_empty.exit ], [ %i.oy, %.lr.ph.i ]
  %i.qw = add nsw i64 %indvars.iv.i153228, -1     ; 4 uses
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.qw
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !17 ; 2 uses
  %.not16.i = icmp eq i64 %i.qy, 0
  br i1 %.not16.i, label %zend_bitset_empty.exit, label %bb.bv, !llvm.loop !42

bb.bv:                                            ; preds = %zend_bitset_empty.exit.preheader
  %4 = trunc nuw nsw i64 %i.qw to i32
  %5 = shl nuw i32 %4, 6
  %6 = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.qy, i1 true)
  %7 = trunc nuw nsw i64 %6 to i32
  %8 = or disjoint i32 %5, 63
  %9 = sub nuw nsw i32 %8, %7
  br label %zend_bitset_last.exit

zend_bitset_last.exit:                            ; preds = %zend_bitset_empty.exit, %bb.bv
  %.014.i = phi i32 [ %9, %bb.bv ], [ -1, %zend_bitset_empty.exit ] ; 4 uses
  %i.qz = and i32 %.014.i, 63
  %i.ra = zext nneg i32 %i.qz to i64
  %i.rb = shl nuw i64 1, %i.ra
  %i.rc = xor i64 %i.rb, -1
  %i.rd = lshr i32 %.014.i, 6
  %i.re = zext nneg i32 %i.rd to i64
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.re ; 2 uses
  %i.rg = load i64, ptr %i.rf, align 8, !tbaa !17
  %i.rh = and i64 %i.rg, %i.rc
  store i64 %i.rh, ptr %i.rf, align 8, !tbaa !17
  %i.ri = sext i32 %.014.i to i64
  %i.rj = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ri ; 6 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  %i.rl = load i32, ptr %i.rk, align 8, !tbaa !66
  %i.rm = icmp sgt i32 %i.rl, -1
  br i1 %i.rm, label %.lr.ph.i.backedge, label %bb.bw

bb.bw:                                            ; preds = %zend_bitset_last.exit
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 20 ; 2 uses
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !73
  %.not = icmp eq i32 %i.ro, 0
  %i.rp = mul i32 %.014.i, %i.e
  %i.rq = sext i32 %i.rp to i64                   ; 7 uses
  %i.rr = getelementptr [8 x i8], ptr %i.r, i64 %i.rq ; 9 uses
  br i1 %.not, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rs = load ptr, ptr %i.rj, align 8, !tbaa !74
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !72
  %i.ru = mul nsw i32 %i.rt, %i.e
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rv
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.rr, ptr readonly align 8 %i.rw, i64 %i.pp, i1 false)
  %i.rx = load i32, ptr %i.rn, align 4, !tbaa !73 ; 2 uses
  %i.ry = icmp sgt i32 %i.rx, 1
  br i1 %i.ry, label %.lr.ph190, label %.loopexit174

.lr.ph190:                                        ; preds = %bb.bx
  %i.rz = load ptr, ptr %i.rj, align 8, !tbaa !74
  br i1 %.not.i155, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i157.preheader.preheader

.lr.ph.i157.preheader.preheader:                  ; preds = %.lr.ph190
  %wide.trip.count203 = zext nneg i32 %i.rx to i64
  %i.sa = shl nsw i64 %i.rq, 3
  %scevgep238 = getelementptr i8, ptr %scevgep, i64 %i.sa
  br label %.lr.ph.i157.preheader

.lr.ph.i157.preheader:                            ; preds = %.lr.ph.i157.preheader.preheader, %zend_bitset_union.exit.loopexit
  %indvars.iv200 = phi i64 [ 1, %.lr.ph.i157.preheader.preheader ], [ %indvars.iv.next201, %zend_bitset_union.exit.loopexit ] ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv200
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !72
  %i.sd = mul nsw i32 %i.sc, %i.e
  %i.se = sext i32 %i.sd to i64                   ; 2 uses
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.se ; 7 uses
  br i1 %min.iters.check242, label %.lr.ph.i157.preheader255, label %vector.memcheck237

vector.memcheck237:                               ; preds = %.lr.ph.i157.preheader
  %i.sg = shl nsw i64 %i.se, 3
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 %i.sg
  %bound0 = icmp ult ptr %i.rr, %scevgep240
  %bound1 = icmp ult ptr %i.sf, %scevgep238
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i157.preheader255, label %vector.body245

vector.body245:                                   ; preds = %vector.memcheck237, %vector.body245
  %index246 = phi i64 [ %index.next251, %vector.body245 ], [ 0, %vector.memcheck237 ] ; 3 uses
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %index246 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %wide.load247 = load <2 x i64>, ptr %i.sh, align 8, !tbaa !17, !alias.scope !75
  %wide.load248 = load <2 x i64>, ptr %i.si, align 8, !tbaa !17, !alias.scope !75
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %index246 ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16 ; 2 uses
  %wide.load249 = load <2 x i64>, ptr %i.sj, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  %wide.load250 = load <2 x i64>, ptr %i.sk, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  %i.sl = or <2 x i64> %wide.load249, %wide.load247
  %i.sm = or <2 x i64> %wide.load250, %wide.load248
  store <2 x i64> %i.sl, ptr %i.sj, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  store <2 x i64> %i.sm, ptr %i.sk, align 8, !tbaa !17, !alias.scope !76, !noalias !75
  %index.next251 = add nuw i64 %index246, 4       ; 2 uses
  %i.sn = icmp eq i64 %index.next251, %n.vec244
  br i1 %i.sn, label %middle.block252, label %vector.body245, !llvm.loop !46

middle.block252:                                  ; preds = %vector.body245
  br i1 %cmp.n253, label %zend_bitset_union.exit.loopexit, label %.lr.ph.i157.preheader255

.lr.ph.i157.preheader255:                         ; preds = %vector.memcheck237, %.lr.ph.i157.preheader, %middle.block252
  %indvars.iv.i158.ph = phi i64 [ 0, %vector.memcheck237 ], [ 0, %.lr.ph.i157.preheader ], [ %n.vec244, %middle.block252 ] ; 3 uses
  br i1 %lcmp.mod264.not, label %.lr.ph.i157.prol.loopexit, label %.lr.ph.i157.prol

.lr.ph.i157.prol:                                 ; preds = %.lr.ph.i157.preheader255, %.lr.ph.i157.prol
  %indvars.iv.i158.prol = phi i64 [ %indvars.iv.next.i159.prol, %.lr.ph.i157.prol ], [ %indvars.iv.i158.ph, %.lr.ph.i157.preheader255 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i157.prol ], [ 0, %.lr.ph.i157.preheader255 ]
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.i158.prol
  %i.sp = load i64, ptr %i.so, align 8, !tbaa !17
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.i158.prol ; 2 uses
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !17
  %i.ss = or i64 %i.sr, %i.sp
  store i64 %i.ss, ptr %i.sq, align 8, !tbaa !17
  %indvars.iv.next.i159.prol = add nuw nsw i64 %indvars.iv.i158.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter263
  br i1 %prol.iter.cmp.not, label %.lr.ph.i157.prol.loopexit, label %.lr.ph.i157.prol, !llvm.loop !47

.lr.ph.i157.prol.loopexit:                        ; preds = %.lr.ph.i157.prol, %.lr.ph.i157.preheader255
  %indvars.iv.i158.unr = phi i64 [ %indvars.iv.i158.ph, %.lr.ph.i157.preheader255 ], [ %indvars.iv.next.i159.prol, %.lr.ph.i157.prol ]
  %i.st = sub nsw i64 %indvars.iv.i158.ph, %i.po
  %i.su = icmp ugt i64 %i.st, -4
  br i1 %i.su, label %zend_bitset_union.exit.loopexit, label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157.prol.loopexit, %.lr.ph.i157
  %indvars.iv.i158 = phi i64 [ %indvars.iv.next.i159.3, %.lr.ph.i157 ], [ %indvars.iv.i158.unr, %.lr.ph.i157.prol.loopexit ] ; 6 uses
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.i158
  %i.sw = load i64, ptr %i.sv, align 8, !tbaa !17
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.i158 ; 2 uses
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !17
  %i.sz = or i64 %i.sy, %i.sw
  store i64 %i.sz, ptr %i.sx, align 8, !tbaa !17
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i158, 1 ; 2 uses
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.i159
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !17
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next.i159 ; 2 uses
  %i.td = load i64, ptr %i.tc, align 8, !tbaa !17
  %i.te = or i64 %i.td, %i.tb
  store i64 %i.te, ptr %i.tc, align 8, !tbaa !17
  %indvars.iv.next.i159.1 = add nuw nsw i64 %indvars.iv.i158, 2 ; 2 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.i159.1
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !17
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next.i159.1 ; 2 uses
  %i.ti = load i64, ptr %i.th, align 8, !tbaa !17
  %i.tj = or i64 %i.ti, %i.tg
  store i64 %i.tj, ptr %i.th, align 8, !tbaa !17
  %indvars.iv.next.i159.2 = add nuw nsw i64 %indvars.iv.i158, 3 ; 2 uses
  %i.tk = getelementptr inbounds nuw [8 x i8], ptr %i.sf, i64 %indvars.iv.next.i159.2
  %i.tl = load i64, ptr %i.tk, align 8, !tbaa !17
  %i.tm = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv.next.i159.2 ; 2 uses
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !17
  %i.to = or i64 %i.tn, %i.tl
  store i64 %i.to, ptr %i.tm, align 8, !tbaa !17
  %indvars.iv.next.i159.3 = add nuw nsw i64 %indvars.iv.i158, 4 ; 2 uses
  %exitcond.not.i160.3 = icmp eq i64 %indvars.iv.next.i159.3, %i.po
  br i1 %exitcond.not.i160.3, label %zend_bitset_union.exit.loopexit, label %.lr.ph.i157, !llvm.loop !48

zend_bitset_union.exit.loopexit:                  ; preds = %.lr.ph.i157.prol.loopexit, %.lr.ph.i157, %middle.block252
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %.loopexit174, label %.lr.ph.i157.preheader, !llvm.loop !49

bb.by:                                            ; preds = %bb.bw
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.rr, i8 0, i64 %i.pp, i1 false)
  br label %.loopexit174

.loopexit174:                                     ; preds = %zend_bitset_union.exit.loopexit, %bb.bx, %bb.by
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.rq ; 4 uses
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.rq ; 4 uses
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.rq ; 4 uses
  br i1 %.not.i155, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164.preheader

.lr.ph.i164.preheader:                            ; preds = %.loopexit174
  br i1 %min.iters.check, label %.lr.ph.i164.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i164.preheader
  %i.ts = shl nsw i64 %i.rq, 3                    ; 3 uses
  %.reass = add i64 %i.ts, %invariant.op
  %diff.check = icmp ugt i64 %.reass, -32
  %.reass279 = add i64 %i.ts, %invariant.op278
  %diff.check229 = icmp ugt i64 %.reass279, -32
  %conflict.rdx = or i1 %diff.check, %diff.check229
  %.reass281 = add i64 %i.ts, %invariant.op280
  %diff.check230 = icmp ugt i64 %.reass281, -32
  %conflict.rdx231 = or i1 %conflict.rdx, %diff.check230
  br i1 %conflict.rdx231, label %.lr.ph.i164.preheader256, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %index ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  %wide.load = load <2 x i64>, ptr %i.tt, align 8, !tbaa !17
  %wide.load232 = load <2 x i64>, ptr %i.tu, align 8, !tbaa !17
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %index ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %wide.load233 = load <2 x i64>, ptr %i.tv, align 8, !tbaa !17
  %wide.load234 = load <2 x i64>, ptr %i.tw, align 8, !tbaa !17
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %index ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %wide.load235 = load <2 x i64>, ptr %i.tx, align 8, !tbaa !17
  %wide.load236 = load <2 x i64>, ptr %i.ty, align 8, !tbaa !17
  %i.tz = xor <2 x i64> %wide.load235, splat (i64 -1)
  %i.ua = xor <2 x i64> %wide.load236, splat (i64 -1)
  %i.ub = and <2 x i64> %wide.load233, %i.tz
  %i.uc = and <2 x i64> %wide.load234, %i.ua
  %i.ud = or <2 x i64> %i.ub, %wide.load
  %i.ue = or <2 x i64> %i.uc, %wide.load232
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  store <2 x i64> %i.ud, ptr %i.uf, align 8, !tbaa !17
  store <2 x i64> %i.ue, ptr %i.ug, align 8, !tbaa !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uh = icmp eq i64 %index.next, %n.vec
  br i1 %i.uh, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164.preheader256

.lr.ph.i164.preheader256:                         ; preds = %vector.memcheck, %.lr.ph.i164.preheader, %middle.block
  %indvars.iv.i165.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i164.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  br i1 %lcmp.mod266.not, label %.lr.ph.i164.prol.loopexit, label %.lr.ph.i164.prol

.lr.ph.i164.prol:                                 ; preds = %.lr.ph.i164.preheader256
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv.i165.ph
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !17
  %i.uk = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.i165.ph
  %i.ul = load i64, ptr %i.uk, align 8, !tbaa !17
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.i165.ph
  %i.un = load i64, ptr %i.um, align 8, !tbaa !17
  %i.uo = xor i64 %i.un, -1
  %i.up = and i64 %i.ul, %i.uo
  %i.uq = or i64 %i.up, %i.uj
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i165.ph
  store i64 %i.uq, ptr %i.ur, align 8, !tbaa !17
  %indvars.iv.next.i166.prol = or disjoint i64 %indvars.iv.i165.ph, 1
  br label %.lr.ph.i164.prol.loopexit

.lr.ph.i164.prol.loopexit:                        ; preds = %.lr.ph.i164.prol, %.lr.ph.i164.preheader256
  %indvars.iv.i165.unr = phi i64 [ %indvars.iv.i165.ph, %.lr.ph.i164.preheader256 ], [ %indvars.iv.next.i166.prol, %.lr.ph.i164.prol ]
  %i.us = icmp eq i64 %indvars.iv.i165.ph, %i.pr
  br i1 %i.us, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164

.lr.ph.i164:                                      ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i166.1, %.lr.ph.i164 ], [ %indvars.iv.i165.unr, %.lr.ph.i164.prol.loopexit ] ; 6 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv.i165
  %i.uu = load i64, ptr %i.ut, align 8, !tbaa !17
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.i165
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !17
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.i165
  %i.uy = load i64, ptr %i.ux, align 8, !tbaa !17
  %i.uz = xor i64 %i.uy, -1
  %i.va = and i64 %i.uw, %i.uz
  %i.vb = or i64 %i.va, %i.uu
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i165
  store i64 %i.vb, ptr %i.vc, align 8, !tbaa !17
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i165, 1 ; 4 uses
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv.next.i166
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !17
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %indvars.iv.next.i166
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !17
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.tr, i64 %indvars.iv.next.i166
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !17
  %i.vj = xor i64 %i.vi, -1
  %i.vk = and i64 %i.vg, %i.vj
  %i.vl = or i64 %i.vk, %i.ve
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i166
  store i64 %i.vl, ptr %i.vm, align 8, !tbaa !17
  %indvars.iv.next.i166.1 = add nuw nsw i64 %indvars.iv.i165, 2 ; 2 uses
  %exitcond.not.i167.1 = icmp eq i64 %indvars.iv.next.i166.1, %i.po
  br i1 %exitcond.not.i167.1, label %zend_bitset_union_with_difference.exit, label %.lr.ph.i164, !llvm.loop !51

zend_bitset_union_with_difference.exit:           ; preds = %.lr.ph.i164.prol.loopexit, %.lr.ph.i164, %middle.block, %.lr.ph190, %.loopexit174
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.rq ; 2 uses
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.vn, ptr readonly %i.g, i64 %i.pp)
  %i.vo = icmp eq i32 %bcmp.i, 0
  br i1 %i.vo, label %.lr.ph.i.backedge, label %bb.bz

bb.bz:                                            ; preds = %zend_bitset_union_with_difference.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.vn, ptr readonly align 8 %i.g, i64 %i.pp, i1 false)
  %i.vp = load ptr, ptr %i.pq, align 8, !tbaa !80
  %i.vq = getelementptr inbounds nuw i8, ptr %i.rj, i64 28
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !81
  %i.vs = sext i32 %i.vr to i64
  %i.vt = getelementptr inbounds [4 x i8], ptr %i.vp, i64 %i.vs ; 3 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %i.rj, i64 24
  %i.vv = load i32, ptr %i.vu, align 8, !tbaa !82 ; 4 uses
  %i.vw = icmp sgt i32 %i.vv, 0
  br i1 %i.vw, label %.lr.ph193.preheader, label %.lr.ph.i.backedge

.lr.ph193.preheader:                              ; preds = %bb.bz
  %wide.trip.count208 = zext nneg i32 %i.vv to i64 ; 2 uses
  %xtraiter268 = and i64 %wide.trip.count208, 1
  %i.vx = icmp eq i32 %i.vv, 1
  br i1 %i.vx, label %.lr.ph193.epil.preheader, label %.lr.ph193.preheader.new

.lr.ph193.preheader.new:                          ; preds = %.lr.ph193.preheader
  %unroll_iter271 = and i64 %wide.trip.count208, 2147483646
  br label %.lr.ph193

.lr.ph193:                                        ; preds = %.lr.ph193, %.lr.ph193.preheader.new
  %indvars.iv205 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %indvars.iv.next206.1, %.lr.ph193 ] ; 3 uses
  %niter272 = phi i64 [ 0, %.lr.ph193.preheader.new ], [ %niter272.next.1, %.lr.ph193 ]
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv205
  %i.vz = load i32, ptr %i.vy, align 4, !tbaa !72 ; 2 uses
  %i.wa = and i32 %i.vz, 63
  %i.wb = zext nneg i32 %i.wa to i64
  %i.wc = shl nuw i64 1, %i.wb
  %i.wd = lshr i32 %i.vz, 6
  %i.we = zext nneg i32 %i.wd to i64
  %i.wf = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.we ; 2 uses
  %i.wg = load i64, ptr %i.wf, align 8, !tbaa !17
  %i.wh = or i64 %i.wc, %i.wg
  store i64 %i.wh, ptr %i.wf, align 8, !tbaa !17
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.vt, i64 %indvars.iv205
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !72 ; 2 uses
  %i.wl = and i32 %i.wk, 63
  %i.wm = zext nneg i32 %i.wl to i64
  %i.wn = shl nuw i64 1, %i.wm
  %i.wo = lshr i32 %i.wk, 6
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.wp ; 2 uses
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !17
  %i.ws = or i64 %i.wn, %i.wr
  store i64 %i.ws, ptr %i.wq, align 8, !tbaa !17
  %indvars.iv.next206.1 = add nuw nsw i64 %indvars.iv205, 2 ; 2 uses
  %niter272.next.1 = add i64 %niter272, 2         ; 2 uses
  %niter272.ncmp.1 = icmp eq i64 %niter272.next.1, %unroll_iter271
  br i1 %niter272.ncmp.1, label %.lr.ph.i.loopexit.unr-lcssa, label %.lr.ph193, !llvm.loop !52

bb.ca:                                            ; preds = %bb.bu
  br i1 %i.pa, label %bb.cb, label %.thread169, !prof !83

bb.cb:                                            ; preds = %bb.ca
  call void @_efree(ptr noundef nonnull %i.pd) #10
  br label %.thread169

.thread169:                                       ; preds = %.preheader, %bb.cb, %bb.ca
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare void @_efree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"_zend_op", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20, !9, i64 24, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31}
!14 = !{!13, !8, i64 29}
!15 = !{!8, !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!13, !8, i64 30}
!19 = !{!13, !8, i64 28}
!20 = !{!13, !8, i64 31}
!21 = !{!13, !9, i64 20}
!22 = !{!"p1 _ZTS12_zend_string", !12, i64 0}
!23 = !{!"p1 _ZTS17_zend_class_entry", !12, i64 0}
!24 = !{!"p1 _ZTS14_zend_function", !12, i64 0}
!25 = !{!"p1 _ZTS14_zend_arg_info", !12, i64 0}
!26 = !{!"p1 _ZTS11_zend_array", !12, i64 0}
!27 = !{!"any p2 pointer", !12, i64 0}
!28 = !{!"p1 _ZTS19_zend_property_info", !12, i64 0}
!29 = !{!"p1 _ZTS8_zend_op", !12, i64 0}
!30 = !{!"p2 _ZTS12_zend_string", !27, i64 0}
!31 = !{!"p1 int", !12, i64 0}
!32 = !{!"p1 _ZTS16_zend_live_range", !12, i64 0}
!33 = !{!"p1 _ZTS23_zend_try_catch_element", !12, i64 0}
!34 = !{!"p1 _ZTS12_zval_struct", !12, i64 0}
!35 = !{!"p2 _ZTS14_zend_op_array", !27, i64 0}
!36 = !{!"_zend_op_array", !8, i64 0, !8, i64 1, !9, i64 4, !22, i64 8, !23, i64 16, !24, i64 24, !9, i64 32, !9, i64 36, !25, i64 40, !26, i64 48, !27, i64 56, !22, i64 64, !9, i64 72, !28, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !29, i64 104, !26, i64 112, !26, i64 120, !30, i64 128, !31, i64 136, !9, i64 144, !9, i64 148, !32, i64 152, !33, i64 160, !22, i64 168, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !34, i64 192, !35, i64 200, !8, i64 208}
!37 = !{!36, !9, i64 4}
!38 = distinct !{!38, !70}
!39 = distinct !{!39, !70}
!40 = distinct !{!40, !70}
!41 = distinct !{!41, !70}
!42 = distinct !{!42, !70}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !70, !77, !78}
!47 = distinct !{!47, !79}
!48 = distinct !{!48, !70, !77}
!49 = distinct !{!49, !70}
!50 = distinct !{!50, !70, !77, !78}
!51 = distinct !{!51, !70, !77}
!52 = distinct !{!52, !70}
!53 = !{!"p1 _ZTS17_zend_basic_block", !12, i64 0}
!54 = !{!"_zend_cfg", !9, i64 0, !9, i64 4, !53, i64 8, !31, i64 16, !31, i64 24, !9, i64 32}
!55 = !{!54, !53, i64 8}
!56 = !{!54, !9, i64 0}
!57 = !{!"p1 long", !12, i64 0}
!58 = !{!"_zend_dfg", !9, i64 0, !9, i64 4, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40}
!59 = !{!58, !9, i64 4}
!60 = !{!58, !57, i64 8}
!61 = !{!58, !57, i64 16}
!62 = !{!58, !57, i64 24}
!63 = !{!58, !57, i64 32}
!64 = !{!58, !57, i64 40}
!65 = !{!"_zend_basic_block", !31, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !8, i64 52}
!66 = !{!65, !9, i64 8}
!67 = !{!36, !29, i64 104}
!68 = !{!65, !9, i64 12}
!69 = !{!65, !9, i64 16}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!9, !9, i64 0}
!73 = !{!65, !9, i64 20}
!74 = !{!65, !31, i64 0}
!75 = !{!44}
!76 = !{!45}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!54, !31, i64 16}
!81 = !{!65, !9, i64 28}
!82 = !{!65, !9, i64 24}
!83 = !{!"branch_weights", !"expected", i32 1143561, i32 2146340087}
end_hunk_1
