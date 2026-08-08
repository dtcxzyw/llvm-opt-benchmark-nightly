inline.NumInlined: 101
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@drm_analog_tv_mode:bb.a
  %i.im = and i1 %i.ig, %i.il
  %i.in = or i1 %i.ij, %i.im
  br i1 %i.in, label %fill_analog_mode.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.io = sub i32 0, %i.ik
  %i.ip = select i1 %i.ig, i32 %i.io, i32 %i.ik   ; 2 uses
  %i.iq = zext i32 %i.hw to i64
  %i.ir = mul nuw nsw i64 %i.iq, 1000
  %i.is = lshr i32 %i.ip, 1
  %i.it = zext nneg i32 %i.is to i64
  %i.iu = add nuw nsw i64 %i.ir, %i.it
  %i.iv = zext i32 %i.ip to i64
  %i.iw = udiv i64 %i.iu, %i.iv
  %i.ix = trunc i64 %i.iw to i32
  br label %fill_analog_mode.exit

fill_analog_mode.exit:                            ; preds = %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i, %bb.be, %bb.bf, %bb.bg, %bb.bh
  %i.iy = phi i32 [ %.pre272.i, %bb.bh ], [ %.pre271.i, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ %.pre272.i, %bb.bf ], [ %.pre272.i, %bb.be ], [ %.pre272.i, %bb.bg ]
  %i.iz = phi i16 [ %i.hk, %bb.bh ], [ %.pre270.i, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ %i.hk, %bb.bf ], [ 0, %bb.be ], [ %i.hk, %bb.bg ]
  %i.ja = phi i32 [ %.pre269.i, %bb.bh ], [ %.pre.i, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ %.pre269.i, %bb.bf ], [ %.pre269.i, %bb.be ], [ %.pre269.i, %bb.bg ]
  %.0.i.i = phi i32 [ %i.ix, %bb.bh ], [ 0, %__drm_to_dev.exit262.drm_mode_vrefresh.exit_crit_edge.i ], [ 0, %bb.bf ], [ 0, %bb.be ], [ 0, %bb.bg ]
  %i.jb = load i16, ptr %i.es, align 4
  %i.jc = zext i16 %i.jb to i32
  %i.jd = load i16, ptr %i.eu, align 2
  %i.je = zext i16 %i.jd to i32
  %i.jf = load i16, ptr %i.ew, align 8
  %i.jg = zext i16 %i.jf to i32
  %i.jh = zext i16 %i.hi to i32
  %i.ji = load i16, ptr %i.gq, align 2
  %i.jj = zext i16 %i.ji to i32
  %i.jk = load i16, ptr %i.gs, align 8
  %i.jl = zext i16 %i.jk to i32
  %i.jm = load i16, ptr %i.gu, align 2
  %i.jn = zext i16 %i.jm to i32
  %i.jo = zext i16 %i.iz to i32
  %i.jp = load i8, ptr %i.gx, align 2
  %i.jq = zext i8 %i.jp to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hh, i32 noundef 2, ptr noundef nonnull @.str.28, ptr noundef %i.gz, i32 noundef %.0.i.i, i32 noundef %i.ja, i32 noundef %i.jc, i32 noundef %i.je, i32 noundef %i.jg, i32 noundef %i.jh, i32 noundef %i.jj, i32 noundef %i.jl, i32 noundef %i.jn, i32 noundef %i.jo, i32 noundef %i.jq, i32 noundef %i.iy) #15
  br label %bb.bi

drm_mode_destroy.exit:                            ; preds = %__drm_to_dev.exit229.i, %__drm_to_dev.exit259.i, %bb.at, %__drm_to_dev.exit249.i, %__drm_to_dev.exit245.i, %__drm_to_dev.exit241.i, %__drm_to_dev.exit237.i, %__drm_to_dev.exit233.i
  tail call void @kfree(ptr noundef nonnull %i.b) #15
  br label %bb.bi

bb.bi:                                            ; preds = %fill_analog_mode.exit, %bb.c, %bb.a, %drm_mode_destroy.exit
  %.014 = phi ptr [ null, %bb.a ], [ null, %drm_mode_destroy.exit ], [ null, %bb.c ], [ %i.b, %fill_analog_mode.exit ]
  ret ptr %.014
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @drm_cvt_mode(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.v

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.d = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef range(i64 -1, 121) 120) #16 ; 20 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not146 = icmp eq i32 %3, 0
  %spec.store.select = select i1 %.not146, i32 60, i32 %3
  %i.e = zext i1 %5 to i32                        ; 2 uses
  %.0130 = shl i32 %spec.store.select, %i.e       ; 4 uses
  %i.f = srem i32 %1, 8
  %i.g = sub nsw i32 %1, %i.f                     ; 3 uses
  br i1 %6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = trunc i32 %i.g to i16                    ; 2 uses
  %i.i = getelementptr i8, ptr %i.d, i64 4
  store i16 %i.h, ptr %i.i, align 4
  %i.j = sdiv i32 %2, 2
  %.0137 = select i1 %5, i32 %i.j, i32 %2
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = mul i32 %i.g, 18
  %i.l = sdiv i32 %i.k, 1000                      ; 2 uses
  %i.m = srem i32 %i.l, 8
  %i.n = sub nsw i32 %i.l, %i.m
  %i.o = shl nsw i32 %i.n, 1
  %i.p = add i32 %i.o, %i.g
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = getelementptr i8, ptr %i.d, i64 4
  store i16 %i.q, ptr %i.r, align 4
  %i.s = sdiv i32 %2, 2
  %.0137153 = select i1 %5, i32 %i.s, i32 %2      ; 2 uses
  %i.t = mul i32 %.0137153, 18
  %i.u = sdiv i32 %i.t, 1000
  %i.v = shl nsw i32 %i.u, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0137154 = phi i32 [ %.0137153, %bb.e ], [ %.0137, %bb.d ] ; 2 uses
  %i.w = phi i16 [ %i.q, %bb.e ], [ %i.h, %bb.d ] ; 7 uses
  %.0136 = phi i32 [ %i.v, %bb.e ], [ 0, %bb.d ]  ; 3 uses
  %i.x = add i32 %.0136, %2                       ; 2 uses
  %i.y = trunc i32 %i.x to i16                    ; 2 uses
  %i.z = getelementptr i8, ptr %i.d, i64 14
  store i16 %i.y, ptr %i.z, align 2
  %i.aa = srem i32 %2, 3
  %.not147 = icmp eq i32 %i.aa, 0
  br i1 %.not147, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = shl i32 %2, 2
  %i.ac = sdiv i32 %i.ab, 3
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = srem i32 %2, 9
  %.not148 = icmp eq i32 %i.ae, 0                 ; 2 uses
  br i1 %.not148, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = shl i32 %2, 4
  %i.ag = sdiv i32 %i.af, 9
  %i.ah = icmp eq i32 %i.ag, %1
  br i1 %i.ah, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = srem i32 %2, 10
  %.not149 = icmp eq i32 %i.ai, 0
  br i1 %.not149, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = shl i32 %2, 4
  %i.ak = sdiv i32 %i.aj, 10
  %i.al = icmp eq i32 %i.ak, %1
  br i1 %i.al, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.am = and i32 %2, 3
  %.not150 = icmp eq i32 %i.am, 0
  br i1 %.not150, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.an = mul i32 %2, 5
  %i.ao = ashr exact i32 %i.an, 2
  %i.ap = icmp eq i32 %i.ao, %1
  br i1 %i.ap, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  br i1 %.not148, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aq = mul i32 %2, 15
  %i.ar = sdiv i32 %i.aq, 9
  %i.as = icmp eq i32 %i.ar, %1
  br i1 %i.as, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %bb.g, %bb.p
  %.0135 = phi i32 [ 10, %bb.p ], [ 7, %bb.m ], [ 6, %bb.k ], [ 5, %bb.i ], [ 4, %bb.g ], [ 7, %bb.o ] ; 3 uses
  br i1 %4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.at = add i32 %.0136, %.0137154               ; 2 uses
  %i.au = shl i32 %i.at, 1
  %i.av = add i32 %i.au, 6
  %i.aw = or disjoint i32 %i.av, %i.e
  %i.ax = mul i32 %.0130, -1100000
  %i.ay = add i32 %i.ax, 2000000000
  %i.az = mul i32 %i.aw, %.0130
  %i.ba = udiv i32 %i.ay, %i.az                   ; 3 uses
  %i.bb = udiv i32 550000, %i.ba
  %i.bc = add nuw nsw i32 %i.bb, 1
  %i.bd = add nuw nsw i32 %.0135, 3
  %.151 = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 %i.bd)
  %i.be = add i32 %.151, %i.at
  %i.bf = trunc i32 %i.be to i16
  %i.bg = add i16 %i.bf, 3                        ; 2 uses
  %i.bh = getelementptr i8, ptr %i.d, i64 20
  store i16 %i.bg, ptr %i.bh, align 4
  %i.bi = mul i32 %i.ba, 300
  %i.bj = udiv i32 %i.bi, 1000
  %i.bk = sub nsw i32 30000, %i.bj
  %spec.store.select2 = tail call i32 @llvm.umax.i32(i32 %i.bk, i32 20000) ; 2 uses
  %i.bl = zext i16 %i.w to i32
  %i.bm = mul i32 %spec.store.select2, %i.bl
  %i.bn = sub nsw i32 100000, %spec.store.select2
  %i.bo = udiv i32 %i.bm, %i.bn
  %i.bp = and i32 %i.bo, -16                      ; 2 uses
  %i.bq = trunc i32 %i.bp to i16
  %i.br = add i16 %i.w, %i.bq                     ; 3 uses
  %i.bs = getelementptr i8, ptr %i.d, i64 10
  store i16 %i.br, ptr %i.bs, align 2
  %i.bt = lshr exact i32 %i.bp, 1
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = add i16 %i.w, %i.bu                     ; 2 uses
  %i.bw = zext i16 %i.br to i32
  %i.bx = shl nuw nsw i32 %i.bw, 3
  %i.by = udiv i32 %i.bx, 100
  %i.bz = trunc nuw nsw i32 %i.by to i16
  %i.ca = sub i16 %i.bv, %i.bz
  %i.cb = and i16 %i.ca, -8
  %i.cc = add i16 %i.cb, 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %.neg = mul i32 %.0130, -460000
  %i.cd = add i32 %.neg, 1000000000
  %i.ce = add i32 %.0136, %.0137154               ; 2 uses
  %i.cf = mul i32 %i.ce, %.0130
  %i.cg = udiv i32 %i.cd, %i.cf                   ; 2 uses
  %i.ch = udiv i32 460000, %i.cg
  %i.ci = add nuw nsw i32 %i.ch, 1
  %i.cj = add nuw nsw i32 %.0135, 9
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ci, i32 %i.cj)
  %i.ck = add i32 %spec.select, %i.ce
  %i.cl = trunc i32 %i.ck to i16                  ; 2 uses
  %i.cm = getelementptr i8, ptr %i.d, i64 20
  store i16 %i.cl, ptr %i.cm, align 4
  %i.cn = add i16 %i.w, 160                       ; 2 uses
  %i.co = getelementptr i8, ptr %i.d, i64 10
  store i16 %i.cn, ptr %i.co, align 2
  %i.cp = add i16 %i.w, 80
  %i.cq = add i16 %i.w, 48
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = phi i16 [ %i.cl, %bb.s ], [ %i.bg, %bb.r ]
  %i.cs = phi i16 [ %i.cn, %bb.s ], [ %i.br, %bb.r ]
  %.sink158 = phi i16 [ %i.cp, %bb.s ], [ %i.bv, %bb.r ]
  %.sink157 = phi i16 [ %i.cq, %bb.s ], [ %i.cc, %bb.r ]
  %.0131 = phi i32 [ %i.cg, %bb.s ], [ %i.ba, %bb.r ]
  %i.ct = add i16 %i.y, 3                         ; 2 uses
  %i.cu = trunc nuw nsw i32 %.0135 to i16
  %i.cv = add i16 %i.ct, %i.cu
  %i.cw = getelementptr i8, ptr %i.d, i64 8
  store i16 %.sink158, ptr %i.cw, align 8
  %i.cx = getelementptr i8, ptr %i.d, i64 6
  store i16 %.sink157, ptr %i.cx, align 2
  %i.cy = getelementptr i8, ptr %i.d, i64 16
  store i16 %i.ct, ptr %i.cy, align 8
  %i.cz = getelementptr i8, ptr %i.d, i64 18
  store i16 %i.cv, ptr %i.cz, align 2
  %i.da = zext i16 %i.cs to i64
  %i.db = mul nuw nsw i64 %i.da, 1000000
  %i.dc = zext i32 %.0131 to i64
  %i.dd = udiv i64 %i.db, %i.dc
  %i.de = load i32, ptr %i.d, align 8
  %i.df = srem i32 %i.de, 250
  %i.dg = trunc i64 %i.dd to i32
  %i.dh = sub i32 %i.dg, %i.df
  store i32 %i.dh, ptr %i.d, align 8
  br i1 %5, label %bb.u, label %._crit_edge

._crit_edge:                                      ; preds = %bb.t
  %.phi.trans.insert = getelementptr i8, ptr %i.d, i64 24
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %i.di = and i32 %.pre, 16
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = select i1 %i.dj, ptr @.str.1, ptr @.str.4
  br label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.dl = getelementptr i8, ptr %i.d, i64 20
  %i.dm = shl i16 %i.cr, 1
  store i16 %i.dm, ptr %i.dl, align 4
  %i.dn = getelementptr i8, ptr %i.d, i64 24      ; 2 uses
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = or i32 %i.do, 16
  store i32 %i.dp, ptr %i.dn, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.u
  %.not.i = phi ptr [ %i.dk, %._crit_edge ], [ @.str.4, %bb.u ]
  %i.dq = getelementptr i8, ptr %i.d, i64 24      ; 2 uses
  %i.dr = getelementptr i8, ptr %i.d, i64 80
  %i.ds = zext i16 %i.w to i32
  %i.dt = and i32 %i.x, 65535
  %i.du = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.dr, i64 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %i.ds, i32 noundef %i.dt, ptr noundef nonnull %.not.i) #15 ; 0 uses
  %i.dv = load i32, ptr %i.dq, align 8
  %. = select i1 %4, i32 9, i32 6
  %i.dw = or i32 %i.dv, %.
  store i32 %i.dw, ptr %i.dq, align 8
  br label %bb.v

bb.v:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.a ], [ %i.d, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_mode_set_name(ptr nofree noundef captures(none) %0) #4 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 16
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 80
  %i.e = getelementptr i8, ptr %0, i64 4
  %i.f = load i16, ptr %i.e, align 4
  %i.g = zext i16 %i.f to i32
  %i.h = getelementptr i8, ptr %0, i64 14
  %i.i = load i16, ptr %i.h, align 2
  %i.j = zext i16 %i.i to i32
  %i.k = select i1 %.not, ptr @.str.1, ptr @.str.4
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.d, i64 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %i.g, i32 noundef %i.j, ptr noundef nonnull %i.k) #15 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef ptr @drm_gtf_mode_complex(ptr nofree readnone captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #0 align 16 prefalign(16) {
bb.a:
  %i.a = icmp ne i32 %1, 0
  %i.b = icmp ne i32 %2, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 56), align 8
  %i.d = tail call noalias noundef align 8 dereferenceable_or_null(120) ptr @__kmalloc_cache_noprof(ptr noundef %i.c, i32 noundef 3520, i64 noundef range(i64 -1, 121) 120) #16 ; 14 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = add i32 %1, 4
  %i.f = sdiv i32 %i.e, 8                         ; 2 uses
  %i.g = shl nsw i32 %i.f, 3                      ; 4 uses
  %i.h = sdiv i32 %2, 2
  %.0108 = select i1 %4, i32 %i.h, i32 %2         ; 5 uses
  %i.i = zext i1 %4 to i32
  %.0107 = shl i32 %3, %i.i                       ; 2 uses
  %.not113 = icmp eq i32 %5, 0                    ; 2 uses
  br i1 %.not113, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = mul i32 %.0108, 18
  %i.k = add i32 %i.j, 500
  %i.l = udiv i32 %i.k, 1000
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0106 = phi i32 [ %i.l, %bb.d ], [ 0, %bb.c ]  ; 2 uses
  %.neg = mul i32 %.0107, -550
  %i.m = add i32 %.neg, 1000000
  %i.n = udiv i32 %i.m, 500
  %i.o = shl nuw nsw i32 %.0106, 2
  %i.p = shl i32 %.0108, 1
  %i.q = select i1 %4, i32 3, i32 2
  %i.r = add i32 %i.q, %i.p
  %i.s = add i32 %i.r, %i.o
  %i.t = mul i32 %.0107, 1000
  %i.u = mul i32 %i.t, %i.s
  %i.v = udiv i32 %i.u, %i.n                      ; 3 uses
  %i.w = mul i32 %i.v, 550
  %i.x = udiv i32 %i.w, 1000
  %i.y = add nuw nsw i32 %i.x, 500
  %i.z = udiv i32 %i.y, 1000
  %reass.add = shl nuw nsw i32 %.0106, 1
  %i.aa = add i32 %reass.add, %.0108
  %i.ab = add i32 %i.aa, %i.z
  br i1 %.not113, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = mul i32 %i.f, 144
  %i.ad = add i32 %i.ac, 496
  %i.ae = udiv i32 %i.ad, 1000
  %i.af = shl nuw nsw i32 %i.ae, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i32 [ %i.af, %bb.f ], [ 0, %bb.e ]
  %i.ag = add i32 %.0, %i.g                       ; 2 uses
  %i.ah = sub i32 %7, %9
  %i.ai = mul i32 %i.ah, %8
  %i.aj = sdiv i32 %i.ai, 256
  %i.ak = add i32 %i.aj, %9
  %i.al = sdiv i32 %i.ak, 2
  %i.am = mul i32 %i.al, 1000
  %i.an = mul i32 %8, %6
  %i.ao = sdiv i32 %i.an, 256
  %i.ap = mul i32 %i.ao, 1000000
  %i.aq = udiv i32 %i.ap, %i.v
  %i.ar = sub i32 %i.am, %i.aq                    ; 2 uses
  %i.as = mul i32 %i.ar, %i.ag
  %i.at = sub i32 100000, %i.ar
  %i.au = udiv i32 %i.as, %i.at
  %i.av = add i32 %i.au, 8
  %i.aw = and i32 %i.av, -16                      ; 2 uses
  %i.ax = add i32 %i.aw, %i.ag                    ; 3 uses
  %i.ay = mul i32 %i.ax, %i.v
  %i.az = udiv i32 %i.ay, 1000
  %i.ba = shl i32 %i.ax, 3
  %i.bb = udiv i32 %i.ba, 100
  %i.bc = add nuw nsw i32 %i.bb, 4
  %i.bd = and i32 %i.bc, 134217720                ; 2 uses
  %i.be = lshr exact i32 %i.aw, 1
  %i.bf = sub nsw i32 %i.be, %i.bd
  %i.bg = trunc i32 %i.g to i16
  %i.bh = getelementptr i8, ptr %i.d, i64 4
end_hunk_0
