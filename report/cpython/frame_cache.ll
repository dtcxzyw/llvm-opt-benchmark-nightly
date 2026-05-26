inline.NumInlined: 11
inline.NumDeleted: 5
begin_hunk_0_@frame_cache_store:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 35 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq i64 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %frame_cache_alloc_slot.exit.thread40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %5, 0
  %.not31 = icmp eq i64 %6, %5
  %or.cond35 = or i1 %.not, %.not31
  br i1 %or.cond35, label %.preheader6.preheader.i, label %frame_cache_alloc_slot.exit.thread40

.preheader6.preheader.i:                          ; preds = %bb.b
  %spec.store.select = tail call i64 @llvm.smin.i64(i64 %4, i64 1024) ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %i.f = icmp eq i64 %i.e, %1
  br i1 %i.f, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.1.i

.preheader6.1.i:                                  ; preds = %.preheader6.preheader.i
  %i.g = getelementptr i8, ptr %i.b, i64 8216     ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !51   ; 2 uses
  %i.i = icmp eq i64 %i.h, %1
  br i1 %i.i, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.2.i

.preheader6.2.i:                                  ; preds = %.preheader6.1.i
  %i.j = getelementptr i8, ptr %i.b, i64 16432    ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !51   ; 2 uses
  %i.l = icmp eq i64 %i.k, %1
  br i1 %i.l, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.3.i

.preheader6.3.i:                                  ; preds = %.preheader6.2.i
  %i.m = getelementptr i8, ptr %i.b, i64 24648    ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !51   ; 2 uses
  %i.o = icmp eq i64 %i.n, %1
  br i1 %i.o, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.4.i

.preheader6.4.i:                                  ; preds = %.preheader6.3.i
  %i.p = getelementptr i8, ptr %i.b, i64 32864    ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !51   ; 2 uses
  %i.r = icmp eq i64 %i.q, %1
  br i1 %i.r, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.5.i

.preheader6.5.i:                                  ; preds = %.preheader6.4.i
  %i.s = getelementptr i8, ptr %i.b, i64 41080    ; 3 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !51   ; 2 uses
  %i.u = icmp eq i64 %i.t, %1
  br i1 %i.u, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.6.i

.preheader6.6.i:                                  ; preds = %.preheader6.5.i
  %i.v = getelementptr i8, ptr %i.b, i64 49296    ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !51   ; 2 uses
  %i.x = icmp eq i64 %i.w, %1
  br i1 %i.x, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.7.i

.preheader6.7.i:                                  ; preds = %.preheader6.6.i
  %i.y = getelementptr i8, ptr %i.b, i64 57512    ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !51   ; 2 uses
  %i.aa = icmp eq i64 %i.z, %1
  br i1 %i.aa, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.8.i

.preheader6.8.i:                                  ; preds = %.preheader6.7.i
  %i.ab = getelementptr i8, ptr %i.b, i64 65728   ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !51 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %1
  br i1 %i.ad, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.9.i

.preheader6.9.i:                                  ; preds = %.preheader6.8.i
  %i.ae = getelementptr i8, ptr %i.b, i64 73944   ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !51 ; 2 uses
  %i.ag = icmp eq i64 %i.af, %1
  br i1 %i.ag, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.10.i

.preheader6.10.i:                                 ; preds = %.preheader6.9.i
  %i.ah = getelementptr i8, ptr %i.b, i64 82160   ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, %1
  br i1 %i.aj, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.11.i

.preheader6.11.i:                                 ; preds = %.preheader6.10.i
  %i.ak = getelementptr i8, ptr %i.b, i64 90376   ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.am = icmp eq i64 %i.al, %1
  br i1 %i.am, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.12.i

.preheader6.12.i:                                 ; preds = %.preheader6.11.i
  %i.an = getelementptr i8, ptr %i.b, i64 98592   ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !51 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %1
  br i1 %i.ap, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.13.i

.preheader6.13.i:                                 ; preds = %.preheader6.12.i
  %i.aq = getelementptr i8, ptr %i.b, i64 106808  ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !51 ; 2 uses
  %i.as = icmp eq i64 %i.ar, %1
  br i1 %i.as, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.14.i

.preheader6.14.i:                                 ; preds = %.preheader6.13.i
  %i.at = getelementptr i8, ptr %i.b, i64 115024  ; 3 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !51 ; 2 uses
  %i.av = icmp eq i64 %i.au, %1
  br i1 %i.av, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.15.i

.preheader6.15.i:                                 ; preds = %.preheader6.14.i
  %i.aw = getelementptr i8, ptr %i.b, i64 123240  ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !51 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %1
  br i1 %i.ay, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.16.i

.preheader6.16.i:                                 ; preds = %.preheader6.15.i
  %i.az = getelementptr i8, ptr %i.b, i64 131456  ; 3 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !51 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %1
  br i1 %i.bb, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.17.i

.preheader6.17.i:                                 ; preds = %.preheader6.16.i
  %i.bc = getelementptr i8, ptr %i.b, i64 139672  ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !51 ; 2 uses
  %i.be = icmp eq i64 %i.bd, %1
  br i1 %i.be, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.18.i

.preheader6.18.i:                                 ; preds = %.preheader6.17.i
  %i.bf = getelementptr i8, ptr %i.b, i64 147888  ; 3 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !51 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, %1
  br i1 %i.bh, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.19.i

.preheader6.19.i:                                 ; preds = %.preheader6.18.i
  %i.bi = getelementptr i8, ptr %i.b, i64 156104  ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, %1
  br i1 %i.bk, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.20.i

.preheader6.20.i:                                 ; preds = %.preheader6.19.i
  %i.bl = getelementptr i8, ptr %i.b, i64 164320  ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !51 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, %1
  br i1 %i.bn, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.21.i

.preheader6.21.i:                                 ; preds = %.preheader6.20.i
  %i.bo = getelementptr i8, ptr %i.b, i64 172536  ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !51 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, %1
  br i1 %i.bq, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.22.i

.preheader6.22.i:                                 ; preds = %.preheader6.21.i
  %i.br = getelementptr i8, ptr %i.b, i64 180752  ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !51 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, %1
  br i1 %i.bt, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.23.i

.preheader6.23.i:                                 ; preds = %.preheader6.22.i
  %i.bu = getelementptr i8, ptr %i.b, i64 188968  ; 3 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !51 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %1
  br i1 %i.bw, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.24.i

.preheader6.24.i:                                 ; preds = %.preheader6.23.i
  %i.bx = getelementptr i8, ptr %i.b, i64 197184  ; 3 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !51 ; 2 uses
  %i.bz = icmp eq i64 %i.by, %1
  br i1 %i.bz, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.25.i

.preheader6.25.i:                                 ; preds = %.preheader6.24.i
  %i.ca = getelementptr i8, ptr %i.b, i64 205400  ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !51 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, %1
  br i1 %i.cc, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.26.i

.preheader6.26.i:                                 ; preds = %.preheader6.25.i
  %i.cd = getelementptr i8, ptr %i.b, i64 213616  ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !51 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, %1
  br i1 %i.cf, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.27.i

.preheader6.27.i:                                 ; preds = %.preheader6.26.i
  %i.cg = getelementptr i8, ptr %i.b, i64 221832  ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !51 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, %1
  br i1 %i.ci, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.28.i

.preheader6.28.i:                                 ; preds = %.preheader6.27.i
  %i.cj = getelementptr i8, ptr %i.b, i64 230048  ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !51 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, %1
  br i1 %i.cl, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.29.i

.preheader6.29.i:                                 ; preds = %.preheader6.28.i
  %i.cm = getelementptr i8, ptr %i.b, i64 238264  ; 3 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !51 ; 2 uses
  %i.co = icmp eq i64 %i.cn, %1
  br i1 %i.co, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.30.i

.preheader6.30.i:                                 ; preds = %.preheader6.29.i
  %i.cp = getelementptr i8, ptr %i.b, i64 246480  ; 3 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !51 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, %1
  br i1 %i.cr, label %frame_cache_alloc_slot.exit.thread, label %.preheader6.31.i

.preheader6.31.i:                                 ; preds = %.preheader6.30.i
  %i.cs = getelementptr i8, ptr %i.b, i64 254696  ; 3 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !51
  %.fr = freeze i64 %i.ct                         ; 2 uses
  %i.cu = icmp eq i64 %.fr, %1
  br i1 %i.cu, label %frame_cache_alloc_slot.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader6.31.i
  %i.cv = icmp eq i64 %i.e, 0
  br i1 %i.cv, label %frame_cache_alloc_slot.exit.thread, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %.preheader.preheader.i
  %i.cw = icmp eq i64 %i.h, 0
  br i1 %i.cw, label %frame_cache_alloc_slot.exit.thread, label %.preheader.2.i

.preheader.2.i:                                   ; preds = %.preheader.1.i
  %i.cx = icmp eq i64 %i.k, 0
  br i1 %i.cx, label %frame_cache_alloc_slot.exit.thread, label %.preheader.3.i

.preheader.3.i:                                   ; preds = %.preheader.2.i
  %i.cy = icmp eq i64 %i.n, 0
  br i1 %i.cy, label %frame_cache_alloc_slot.exit.thread, label %.preheader.4.i

.preheader.4.i:                                   ; preds = %.preheader.3.i
  %i.cz = icmp eq i64 %i.q, 0
  br i1 %i.cz, label %frame_cache_alloc_slot.exit.thread, label %.preheader.5.i

.preheader.5.i:                                   ; preds = %.preheader.4.i
  %i.da = icmp eq i64 %i.t, 0
  br i1 %i.da, label %frame_cache_alloc_slot.exit.thread, label %.preheader.6.i

.preheader.6.i:                                   ; preds = %.preheader.5.i
  %i.db = icmp eq i64 %i.w, 0
  br i1 %i.db, label %frame_cache_alloc_slot.exit.thread, label %.preheader.7.i

.preheader.7.i:                                   ; preds = %.preheader.6.i
  %i.dc = icmp eq i64 %i.z, 0
  br i1 %i.dc, label %frame_cache_alloc_slot.exit.thread, label %.preheader.8.i

.preheader.8.i:                                   ; preds = %.preheader.7.i
  %i.dd = icmp eq i64 %i.ac, 0
  br i1 %i.dd, label %frame_cache_alloc_slot.exit.thread, label %.preheader.9.i

.preheader.9.i:                                   ; preds = %.preheader.8.i
  %i.de = icmp eq i64 %i.af, 0
  br i1 %i.de, label %frame_cache_alloc_slot.exit.thread, label %.preheader.10.i

.preheader.10.i:                                  ; preds = %.preheader.9.i
  %i.df = icmp eq i64 %i.ai, 0
  br i1 %i.df, label %frame_cache_alloc_slot.exit.thread, label %.preheader.11.i

.preheader.11.i:                                  ; preds = %.preheader.10.i
  %i.dg = icmp eq i64 %i.al, 0
  br i1 %i.dg, label %frame_cache_alloc_slot.exit.thread, label %.preheader.12.i

.preheader.12.i:                                  ; preds = %.preheader.11.i
  %i.dh = icmp eq i64 %i.ao, 0
  br i1 %i.dh, label %frame_cache_alloc_slot.exit.thread, label %.preheader.13.i

.preheader.13.i:                                  ; preds = %.preheader.12.i
  %i.di = icmp eq i64 %i.ar, 0
  br i1 %i.di, label %frame_cache_alloc_slot.exit.thread, label %.preheader.14.i

.preheader.14.i:                                  ; preds = %.preheader.13.i
  %i.dj = icmp eq i64 %i.au, 0
  br i1 %i.dj, label %frame_cache_alloc_slot.exit.thread, label %.preheader.15.i

.preheader.15.i:                                  ; preds = %.preheader.14.i
  %i.dk = icmp eq i64 %i.ax, 0
  br i1 %i.dk, label %frame_cache_alloc_slot.exit.thread, label %.preheader.16.i

.preheader.16.i:                                  ; preds = %.preheader.15.i
  %i.dl = icmp eq i64 %i.ba, 0
  br i1 %i.dl, label %frame_cache_alloc_slot.exit.thread, label %.preheader.17.i

.preheader.17.i:                                  ; preds = %.preheader.16.i
  %i.dm = icmp eq i64 %i.bd, 0
  br i1 %i.dm, label %frame_cache_alloc_slot.exit.thread, label %.preheader.18.i

.preheader.18.i:                                  ; preds = %.preheader.17.i
  %i.dn = icmp eq i64 %i.bg, 0
  br i1 %i.dn, label %frame_cache_alloc_slot.exit.thread, label %.preheader.19.i

.preheader.19.i:                                  ; preds = %.preheader.18.i
  %i.do = icmp eq i64 %i.bj, 0
  br i1 %i.do, label %frame_cache_alloc_slot.exit.thread, label %.preheader.20.i

.preheader.20.i:                                  ; preds = %.preheader.19.i
  %i.dp = icmp eq i64 %i.bm, 0
  br i1 %i.dp, label %frame_cache_alloc_slot.exit.thread, label %.preheader.21.i

.preheader.21.i:                                  ; preds = %.preheader.20.i
  %i.dq = icmp eq i64 %i.bp, 0
  br i1 %i.dq, label %frame_cache_alloc_slot.exit.thread, label %.preheader.22.i

.preheader.22.i:                                  ; preds = %.preheader.21.i
  %i.dr = icmp eq i64 %i.bs, 0
  br i1 %i.dr, label %frame_cache_alloc_slot.exit.thread, label %.preheader.23.i

.preheader.23.i:                                  ; preds = %.preheader.22.i
  %i.ds = icmp eq i64 %i.bv, 0
  br i1 %i.ds, label %frame_cache_alloc_slot.exit.thread, label %.preheader.24.i

.preheader.24.i:                                  ; preds = %.preheader.23.i
  %i.dt = icmp eq i64 %i.by, 0
  br i1 %i.dt, label %frame_cache_alloc_slot.exit.thread, label %.preheader.25.i

.preheader.25.i:                                  ; preds = %.preheader.24.i
  %i.du = icmp eq i64 %i.cb, 0
  br i1 %i.du, label %frame_cache_alloc_slot.exit.thread, label %.preheader.26.i

.preheader.26.i:                                  ; preds = %.preheader.25.i
  %i.dv = icmp eq i64 %i.ce, 0
  br i1 %i.dv, label %frame_cache_alloc_slot.exit.thread, label %.preheader.27.i

.preheader.27.i:                                  ; preds = %.preheader.26.i
  %i.dw = icmp eq i64 %i.ch, 0
  br i1 %i.dw, label %frame_cache_alloc_slot.exit.thread, label %.preheader.28.i

.preheader.28.i:                                  ; preds = %.preheader.27.i
  %i.dx = icmp eq i64 %i.ck, 0
  br i1 %i.dx, label %frame_cache_alloc_slot.exit.thread, label %.preheader.29.i

.preheader.29.i:                                  ; preds = %.preheader.28.i
  %i.dy = icmp eq i64 %i.cn, 0
  br i1 %i.dy, label %frame_cache_alloc_slot.exit.thread, label %.preheader.30.i

.preheader.30.i:                                  ; preds = %.preheader.29.i
  %i.dz = icmp eq i64 %i.cq, 0
  br i1 %i.dz, label %frame_cache_alloc_slot.exit.thread, label %.preheader.31.i

.preheader.31.i:                                  ; preds = %.preheader.30.i
  %i.ea = icmp eq i64 %.fr, 0
  br i1 %i.ea, label %frame_cache_alloc_slot.exit.thread, label %frame_cache_alloc_slot.exit.thread40

frame_cache_alloc_slot.exit.thread:               ; preds = %.preheader.30.i, %.preheader.29.i, %.preheader.28.i, %.preheader.27.i, %.preheader.26.i, %.preheader.25.i, %.preheader.24.i, %.preheader.23.i, %.preheader.22.i, %.preheader.21.i, %.preheader.20.i, %.preheader.19.i, %.preheader.18.i, %.preheader.17.i, %.preheader.16.i, %.preheader.15.i, %.preheader.14.i, %.preheader.13.i, %.preheader.12.i, %.preheader.11.i, %.preheader.10.i, %.preheader.9.i, %.preheader.8.i, %.preheader.7.i, %.preheader.6.i, %.preheader.5.i, %.preheader.4.i, %.preheader.3.i, %.preheader.2.i, %.preheader.1.i, %.preheader6.31.i, %.preheader6.30.i, %.preheader6.29.i, %.preheader6.28.i, %.preheader6.27.i, %.preheader6.26.i, %.preheader6.25.i, %.preheader6.24.i, %.preheader6.23.i, %.preheader6.22.i, %.preheader6.21.i, %.preheader6.20.i, %.preheader6.19.i, %.preheader6.18.i, %.preheader6.17.i, %.preheader6.16.i, %.preheader6.15.i, %.preheader6.14.i, %.preheader6.13.i, %.preheader6.12.i, %.preheader6.11.i, %.preheader6.10.i, %.preheader6.9.i, %.preheader6.8.i, %.preheader6.7.i, %.preheader6.6.i, %.preheader6.5.i, %.preheader6.4.i, %.preheader6.3.i, %.preheader6.2.i, %.preheader6.1.i, %.preheader.31.i, %.preheader6.preheader.i, %.preheader.preheader.i
  %.2.i39 = phi ptr [ %i.b, %.preheader6.preheader.i ], [ %i.b, %.preheader.preheader.i ], [ %i.az, %.preheader.16.i ], [ %i.cp, %.preheader6.30.i ], [ %i.cm, %.preheader6.29.i ], [ %i.cs, %.preheader6.31.i ], [ %i.g, %.preheader.1.i ], [ %i.cj, %.preheader6.28.i ], [ %i.j, %.preheader.2.i ], [ %i.bl, %.preheader.20.i ], [ %i.m, %.preheader.3.i ], [ %i.cp, %.preheader.30.i ], [ %i.p, %.preheader.4.i ], [ %i.bc, %.preheader.17.i ], [ %i.s, %.preheader.5.i ], [ %i.cm, %.preheader.29.i ], [ %i.v, %.preheader.6.i ], [ %i.bu, %.preheader.23.i ], [ %i.y, %.preheader.7.i ], [ %i.cj, %.preheader.28.i ], [ %i.ab, %.preheader.8.i ], [ %i.bf, %.preheader.18.i ], [ %i.ae, %.preheader.9.i ], [ %i.cg, %.preheader.27.i ], [ %i.ah, %.preheader.10.i ], [ %i.bo, %.preheader.21.i ], [ %i.ak, %.preheader.11.i ], [ %i.cd, %.preheader.26.i ], [ %i.an, %.preheader.12.i ], [ %i.bi, %.preheader.19.i ], [ %i.aq, %.preheader.13.i ], [ %i.ca, %.preheader.25.i ], [ %i.at, %.preheader.14.i ], [ %i.br, %.preheader.22.i ], [ %i.aw, %.preheader.15.i ], [ %i.bx, %.preheader.24.i ], [ %i.cg, %.preheader6.27.i ], [ %i.g, %.preheader6.1.i ], [ %i.j, %.preheader6.2.i ], [ %i.m, %.preheader6.3.i ], [ %i.p, %.preheader6.4.i ], [ %i.s, %.preheader6.5.i ], [ %i.v, %.preheader6.6.i ], [ %i.y, %.preheader6.7.i ], [ %i.ab, %.preheader6.8.i ], [ %i.ae, %.preheader6.9.i ], [ %i.ah, %.preheader6.10.i ], [ %i.ak, %.preheader6.11.i ], [ %i.an, %.preheader6.12.i ], [ %i.aq, %.preheader6.13.i ], [ %i.at, %.preheader6.14.i ], [ %i.aw, %.preheader6.15.i ], [ %i.az, %.preheader6.16.i ], [ %i.bc, %.preheader6.17.i ], [ %i.bf, %.preheader6.18.i ], [ %i.bi, %.preheader6.19.i ], [ %i.bl, %.preheader6.20.i ], [ %i.bo, %.preheader6.21.i ], [ %i.br, %.preheader6.22.i ], [ %i.bu, %.preheader6.23.i ], [ %i.bx, %.preheader6.24.i ], [ %i.ca, %.preheader6.25.i ], [ %i.cd, %.preheader6.26.i ], [ %i.cs, %.preheader.31.i ] ; 4 uses
  %i.eb = getelementptr i8, ptr %.2.i39, i64 8208 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !46 ; 4 uses
  %.not33 = icmp eq ptr %i.ec, null
  br i1 %.not33, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %frame_cache_alloc_slot.exit.thread
  store ptr null, ptr %i.eb, align 8, !tbaa !46
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !48 ; 2 uses
  %.not.i = icmp sgt i32 %i.ed, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.ee = add nsw i32 %i.ed, -1                   ; 2 uses
  store i32 %i.ee, ptr %i.ec, align 8, !tbaa !48
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ec) #5
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %frame_cache_alloc_slot.exit.thread
  %i.eg = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.eg, align 8, !tbaa !62
  %i.eh = tail call ptr @PyList_GetSlice(ptr noundef %2, i64 noundef 0, i64 noundef %.val) #5 ; 2 uses
  store ptr %i.eh, ptr %i.eb, align 8, !tbaa !75
  %.not34 = icmp eq ptr %i.eh, null
  br i1 %.not34, label %frame_cache_alloc_slot.exit.thread40, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit
  store i64 %1, ptr %.2.i39, align 8, !tbaa !51
  %i.ei = getelementptr i8, ptr %.2.i39, i64 8
  %i.ej = shl i64 %spec.store.select, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ei, ptr align 8 %3, i64 %i.ej, i1 false)
  %i.ek = getelementptr i8, ptr %.2.i39, i64 8200
  store i64 %spec.store.select, ptr %i.ek, align 8, !tbaa !64
  br label %frame_cache_alloc_slot.exit.thread40

frame_cache_alloc_slot.exit.thread40:             ; preds = %.preheader.31.i, %Py_DECREF.exit, %bb.f, %bb.b, %bb.a
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.preheader.31.i ], [ 1, %bb.f ], [ -1, %Py_DECREF.exit ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !14, i64 33824}
!11 = !{!"", !12, i64 0, !15, i64 16, !16, i64 32800, !17, i64 32808, !7, i64 33632, !38, i64 33640, !16, i64 33744, !16, i64 33752, !16, i64 33760, !42, i64 33768, !7, i64 33776, !7, i64 33780, !7, i64 33784, !7, i64 33788, !7, i64 33792, !7, i64 33796, !7, i64 33800, !7, i64 33804, !7, i64 33808, !7, i64 33812, !14, i64 33816, !14, i64 33824, !43, i64 33832, !44, i64 33920, !7, i64 33936, !45, i64 33944, !16, i64 33952}
!12 = !{!"_object", !8, i64 0, !13, i64 8}
!13 = !{!"p1 _ZTS11_typeobject", !14, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"", !7, i64 0, !7, i64 4, !8, i64 8, !16, i64 32776}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_Py_DebugOffsets", !8, i64 0, !16, i64 8, !16, i64 16, !18, i64 24, !19, i64 48, !20, i64 176, !21, i64 296, !22, i64 304, !23, i64 368, !24, i64 456, !25, i64 472, !26, i64 504, !27, i64 528, !28, i64 552, !29, i64 584, !30, i64 608, !31, i64 624, !32, i64 648, !33, i64 672, !34, i64 704, !35, i64 728, !36, i64 760, !37, i64 776}
!18 = !{!"_runtime_state", !16, i64 0, !16, i64 8, !16, i64 16}
!19 = !{!"_interpreter_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120}
!20 = !{!"_thread_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112}
!21 = !{!"", !16, i64 0}
!22 = !{!"_interpreter_frame", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56}
!23 = !{!"_code_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!24 = !{!"_pyobject", !16, i64 0, !16, i64 8}
!25 = !{!"_type_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!26 = !{!"_tuple_object", !16, i64 0, !16, i64 8, !16, i64 16}
!27 = !{!"_list_object", !16, i64 0, !16, i64 8, !16, i64 16}
!28 = !{!"_set_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!29 = !{!"_dict_object", !16, i64 0, !16, i64 8, !16, i64 16}
!30 = !{!"_float_object", !16, i64 0, !16, i64 8}
!31 = !{!"_long_object", !16, i64 0, !16, i64 8, !16, i64 16}
!32 = !{!"_bytes_object", !16, i64 0, !16, i64 8, !16, i64 16}
!33 = !{!"_unicode_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!34 = !{!"_gc", !16, i64 0, !16, i64 8, !16, i64 16}
!35 = !{!"_gen_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!36 = !{!"_llist_node", !16, i64 0, !16, i64 8}
!37 = !{!"_debugger_support", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!38 = !{!"_Py_AsyncioModuleDebugOffsets", !39, i64 0, !40, i64 56, !41, i64 72}
!39 = !{!"_asyncio_task_object", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48}
!40 = !{!"_asyncio_interpreter_state", !16, i64 0, !16, i64 8}
!41 = !{!"_asyncio_thread_state", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24}
!42 = !{!"p1 _ZTS15_Py_hashtable_t", !14, i64 0}
!43 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80}
!44 = !{!"", !45, i64 0, !16, i64 8}
!45 = !{!"p1 int", !14, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"p1 _ZTS7_object", !14, i64 0}
!48 = !{!8, !8, i64 0}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!52, !16, i64 0}
!52 = !{!"", !16, i64 0, !8, i64 8, !16, i64 8200, !47, i64 8208}
!53 = !{!12, !13, i64 8}
!54 = !{!55, !16, i64 168}
!55 = !{!"_typeobject", !56, i64 0, !57, i64 24, !16, i64 32, !16, i64 40, !14, i64 48, !16, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !16, i64 168, !57, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !16, i64 208, !14, i64 216, !14, i64 224, !58, i64 232, !59, i64 240, !60, i64 248, !13, i64 256, !47, i64 264, !14, i64 272, !14, i64 280, !16, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !47, i64 336, !47, i64 344, !47, i64 352, !14, i64 360, !47, i64 368, !14, i64 376, !7, i64 384, !14, i64 392, !14, i64 400, !8, i64 408, !61, i64 410}
!56 = !{!"PyVarObject", !12, i64 0, !16, i64 16}
!57 = !{!"p1 omnipotent char", !14, i64 0}
!58 = !{!"p1 _ZTS11PyMethodDef", !14, i64 0}
!59 = !{!"p1 _ZTS11PyMemberDef", !14, i64 0}
!60 = !{!"p1 _ZTS11PyGetSetDef", !14, i64 0}
!61 = !{!"short", !8, i64 0}
!62 = !{!56, !16, i64 16}
!63 = distinct !{!63, !50}
!64 = !{!52, !16, i64 8200}
!65 = !{!11, !7, i64 33808}
!66 = !{!11, !16, i64 33912}
!67 = !{!16, !16, i64 0}
!68 = distinct !{!68, !50}
!69 = !{!70, !71, i64 24}
!70 = !{!"", !56, i64 0, !71, i64 24, !16, i64 32}
!71 = !{!"p2 _ZTS7_object", !72, i64 0}
!72 = !{!"any p2 pointer", !14, i64 0}
!73 = distinct !{!73, !50}
!74 = distinct !{!74, !50}
!75 = !{!52, !47, i64 8208}
!76 = distinct !{!76, !50}
!77 = distinct !{!77, !50}
end_hunk_0
