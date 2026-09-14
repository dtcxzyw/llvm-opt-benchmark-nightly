Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xfrm_policy?download=true
inline.NumInlined: 689
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@xfrm_dst_check:bb.a
  %i.x = tail call ptr %i.s(ptr noundef %.0.i.i.i, i32 noundef %i.m) #20, !inline_history !168
  br label %dst_check.exit.i.i

dst_check.exit.i.i:                               ; preds = %bb.i, %bb.h, %bb.f, %xfrm_dst_path.exit.i.i
  %.0.i77.i.i = phi ptr [ %.0.i.i.i, %xfrm_dst_path.exit.i.i ], [ %i.u, %bb.f ], [ %i.w, %bb.h ], [ %i.x, %bb.i ]
  %.not.i.i = icmp eq ptr %.0.i77.i.i, null
  br i1 %.not.i.i, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %dst_check.exit.i.i
  %i.y = load ptr, ptr %0, align 8                ; 2 uses
  %.not65.i.i = icmp eq ptr %i.y, null
  br i1 %.not65.i.i, label %bb.k, label %netif_running.exit.i.i

netif_running.exit.i.i:                           ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.y, i64 168
  %i.aa = load volatile i64, ptr %i.z, align 8
  %.in.i.i.i = trunc i64 %i.aa to i1
  br i1 %.in.i.i.i, label %bb.k, label %.sink.split

bb.k:                                             ; preds = %netif_running.exit.i.i, %bb.j
  %i.ab = getelementptr i8, ptr %0, i64 56
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = and i16 %i.ac, 64
  %.not66.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not66.i.i, label %.preheader.preheader.i.i, label %.sink.split

.preheader.preheader.i.i:                         ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false), !annotation !31
  %.pre.i.i = load ptr, ptr %i.e, align 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %xfrm_dst_child.exit87.i.i, %.preheader.preheader.i.i
  %i.ae = phi ptr [ %i.cz, %xfrm_dst_child.exit87.i.i ], [ %.pre.i.i, %.preheader.preheader.i.i ] ; 2 uses
  %.054.i.i = phi ptr [ %.0.i85.i.i, %xfrm_dst_child.exit87.i.i ], [ %0, %.preheader.preheader.i.i ] ; 14 uses
  %.051.i.i = phi i32 [ %.2.i.i, %xfrm_dst_child.exit87.i.i ], [ 0, %.preheader.preheader.i.i ]
  %.049.i.i = phi i32 [ %i.av, %xfrm_dst_child.exit87.i.i ], [ 0, %.preheader.preheader.i.i ] ; 2 uses
  %i.af = getelementptr i8, ptr %.054.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 232
  %i.ah = load i8, ptr %i.ag, align 8
  %.not67.i.i = icmp eq i8 %i.ah, 2
  br i1 %.not67.i.i, label %bb.l, label %.sink.split

bb.l:                                             ; preds = %.preheader.i.i
  %i.ai = getelementptr i8, ptr %.054.i.i, i64 272
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = getelementptr i8, ptr %i.ae, i64 212
  %i.al = load i32, ptr %i.ak, align 4
  %.not68.i.i = icmp eq i32 %i.aj, %i.al
  br i1 %.not68.i.i, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr i8, ptr %.054.i.i, i64 264
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr i8, ptr %.054.i.i, i64 276
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = getelementptr i8, ptr %.054.i.i, i64 248
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr i8, ptr %i.as, i64 104
  %i.au = load volatile i32, ptr %i.at, align 4
  %.not69.i.i = icmp eq i32 %i.aq, %i.au
  br i1 %.not69.i.i, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.av = add i32 %.049.i.i, 1                    ; 3 uses
  %i.aw = sext i32 %.049.i.i to i64
  %i.ax = getelementptr [8 x i8], ptr %i.a, i64 %i.aw
  store ptr %.054.i.i, ptr %i.ax, align 8
  %i.ay = load ptr, ptr %i.af, align 8
  %.not.i78.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i78.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr i8, ptr %.054.i.i, i64 56
  %i.ba = load i16, ptr %i.az, align 8
  %i.bb = and i16 %i.ba, 64
  %.not5.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not5.i.i.i, label %xfrm_dst_child.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bc = getelementptr i8, ptr %.054.i.i, i64 232
  %i.bd = load ptr, ptr %i.bc, align 8
  br label %xfrm_dst_child.exit.i.i

xfrm_dst_child.exit.i.i:                          ; preds = %bb.q, %bb.p
  %.0.i79.i.i = phi ptr [ %i.bd, %bb.q ], [ null, %bb.p ] ; 4 uses
  %i.be = getelementptr i8, ptr %.0.i79.i.i, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr i8, ptr %i.bf, i64 32
  %i.bh = load ptr, ptr %i.bg, align 32           ; 3 uses
  %i.bi = icmp eq ptr %i.bh, @ip6_mtu
  br i1 %i.bi, label %bb.r, label %bb.s, !prof !22

bb.r:                                             ; preds = %xfrm_dst_child.exit.i.i
  %i.bj = tail call i32 @ip6_mtu(ptr noundef %.0.i79.i.i) #20
  br label %dst_mtu.exit.i.i

bb.s:                                             ; preds = %xfrm_dst_child.exit.i.i
  %i.bk = icmp eq ptr %i.bh, @ipv4_mtu
  br i1 %i.bk, label %bb.t, label %bb.u, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.bl = tail call i32 @ipv4_mtu(ptr noundef %.0.i79.i.i) #20
  br label %dst_mtu.exit.i.i

bb.u:                                             ; preds = %bb.s
  %i.bm = tail call i32 %i.bh(ptr noundef %.0.i79.i.i) #20, !inline_history !169
  br label %dst_mtu.exit.i.i

dst_mtu.exit.i.i:                                 ; preds = %bb.u, %bb.t, %bb.r
  %i.bn = phi i32 [ %i.bj, %bb.r ], [ %i.bl, %bb.t ], [ %i.bm, %bb.u ] ; 2 uses
  %i.bo = getelementptr i8, ptr %.054.i.i, i64 284 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %.not70.i.i = icmp eq i32 %i.bp, %i.bn
  br i1 %.not70.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %dst_mtu.exit.i.i
  store i32 %i.bn, ptr %i.bo, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %dst_mtu.exit.i.i
  %.152.i.i = phi i32 [ %i.av, %bb.v ], [ %.051.i.i, %dst_mtu.exit.i.i ]
  %i.bq = getelementptr i8, ptr %.054.i.i, i64 224 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8            ; 6 uses
  %i.bs = getelementptr i8, ptr %.054.i.i, i64 288
  %i.bt = load i32, ptr %i.bs, align 8            ; 3 uses
  %i.bu = getelementptr i8, ptr %i.br, i64 58
  %i.bv = load volatile i16, ptr %i.bu, align 2
  %.not.i80.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not.i80.i.i, label %dst_check.exit82.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr i8, ptr %i.br, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 16           ; 3 uses
  %i.ca = icmp eq ptr %i.bz, @ip6_dst_check
  br i1 %i.ca, label %bb.y, label %bb.z, !prof !22

bb.y:                                             ; preds = %bb.x
  %i.cb = tail call ptr @ip6_dst_check(ptr noundef %i.br, i32 noundef %i.bt) #20
  br label %dst_check.exit82.i.i

bb.z:                                             ; preds = %bb.x
  %i.cc = icmp eq ptr %i.bz, @ipv4_dst_check
  br i1 %i.cc, label %bb.aa, label %bb.ab, !prof !22

bb.aa:                                            ; preds = %bb.z
  %i.cd = tail call ptr @ipv4_dst_check(ptr noundef %i.br, i32 noundef %i.bt) #20
  br label %dst_check.exit82.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ce = tail call ptr %i.bz(ptr noundef %i.br, i32 noundef %i.bt) #20, !inline_history !168
  br label %dst_check.exit82.i.i

dst_check.exit82.i.i:                             ; preds = %bb.ab, %bb.aa, %bb.y, %bb.w
  %.0.i81.i.i = phi ptr [ %i.br, %bb.w ], [ %i.cb, %bb.y ], [ %i.cd, %bb.aa ], [ %i.ce, %bb.ab ]
  %.not71.i.i = icmp eq ptr %.0.i81.i.i, null
  br i1 %.not71.i.i, label %.sink.split, label %bb.ac

bb.ac:                                            ; preds = %dst_check.exit82.i.i
  %i.cf = load ptr, ptr %i.bq, align 8            ; 4 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 32
  %i.cj = load ptr, ptr %i.ci, align 32           ; 3 uses
  %i.ck = icmp eq ptr %i.cj, @ip6_mtu
  br i1 %i.ck, label %bb.ad, label %bb.ae, !prof !22

bb.ad:                                            ; preds = %bb.ac
  %i.cl = tail call i32 @ip6_mtu(ptr noundef %i.cf) #20
  br label %dst_mtu.exit83.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cm = icmp eq ptr %i.cj, @ipv4_mtu
  br i1 %i.cm, label %bb.af, label %bb.ag, !prof !22

bb.af:                                            ; preds = %bb.ae
  %i.cn = tail call i32 @ipv4_mtu(ptr noundef %i.cf) #20
  br label %dst_mtu.exit83.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.co = tail call i32 %i.cj(ptr noundef %i.cf) #20, !inline_history !169
  br label %dst_mtu.exit83.i.i

dst_mtu.exit83.i.i:                               ; preds = %bb.ag, %bb.af, %bb.ad
  %i.cp = phi i32 [ %i.cl, %bb.ad ], [ %i.cn, %bb.af ], [ %i.co, %bb.ag ] ; 2 uses
  %i.cq = getelementptr i8, ptr %.054.i.i, i64 280 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8
  %.not72.i.i = icmp eq i32 %i.cr, %i.cp
  br i1 %.not72.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %dst_mtu.exit83.i.i
  store i32 %i.cp, ptr %i.cq, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %dst_mtu.exit83.i.i
  %.2.i.i = phi i32 [ %i.av, %bb.ah ], [ %.152.i.i, %dst_mtu.exit83.i.i ] ; 4 uses
  %i.cs = load ptr, ptr %i.af, align 8
  %.not.i84.i.i = icmp eq ptr %i.cs, null
  br i1 %.not.i84.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ct = getelementptr i8, ptr %.054.i.i, i64 56
  %i.cu = load i16, ptr %i.ct, align 8
  %i.cv = and i16 %i.cu, 64
  %.not5.i86.i.i = icmp eq i16 %i.cv, 0
  br i1 %.not5.i86.i.i, label %xfrm_dst_child.exit87.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.cw = getelementptr i8, ptr %.054.i.i, i64 232
  %i.cx = load ptr, ptr %i.cw, align 8
  br label %xfrm_dst_child.exit87.i.i

xfrm_dst_child.exit87.i.i:                        ; preds = %bb.ak, %bb.aj
  %.0.i85.i.i = phi ptr [ %i.cx, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  %i.cy = getelementptr i8, ptr %.0.i85.i.i, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not73.i.i = icmp eq ptr %i.cz, null
  br i1 %.not73.i.i, label %bb.al, label %.preheader.i.i, !llvm.loop !170

bb.al:                                            ; preds = %xfrm_dst_child.exit87.i.i
  %.not74.i.i = icmp eq i32 %.2.i.i, 0
  br i1 %.not74.i.i, label %.sink.split, label %bb.am, !prof !22

bb.am:                                            ; preds = %bb.al
  %i.da = add i32 %.2.i.i, -1                     ; 3 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr [8 x i8], ptr %i.a, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8            ; 4 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 284
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = getelementptr i8, ptr %i.dd, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call i32 @xfrm_state_mtu(ptr noundef %i.dh, i32 noundef %i.df) #20
  %i.dj = getelementptr i8, ptr %i.dd, i64 280
  %i.dk = load i32, ptr %i.dj, align 8
  %.189.i.i = tail call i32 @llvm.umin.i32(i32 %i.di, i32 %i.dk) ; 2 uses
  tail call fastcc void @dst_metric_set(ptr noundef %i.dd, i32 noundef %.189.i.i) #23
  %.not7590.i.i = icmp eq i32 %i.da, 0
  br i1 %.not7590.i.i, label %.sink.split, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.lr.ph.i.i
  %.192.i.i = phi i32 [ %.1.i.i, %.lr.ph.i.i ], [ %.189.i.i, %bb.am ] ; 2 uses
  %i.dl = phi i32 [ %2, %.lr.ph.i.i ], [ %i.da, %bb.am ] ; 2 uses
  %.491.i.i = phi i32 [ %i.dl, %.lr.ph.i.i ], [ %.2.i.i, %bb.am ]
  %i.dm = add i32 %.491.i.i, -2
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr [8 x i8], ptr %i.a, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8            ; 4 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 284
  store i32 %.192.i.i, ptr %i.dq, align 4
  %2 = add i32 %i.dl, -1                          ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dp, i64 32
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = tail call i32 @xfrm_state_mtu(ptr noundef %i.ds, i32 noundef %.192.i.i) #20
  %i.du = getelementptr i8, ptr %i.dp, i64 280
  %i.dv = load i32, ptr %i.du, align 8
  %.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.dt, i32 %i.dv) ; 2 uses
  tail call fastcc void @dst_metric_set(ptr noundef %i.dp, i32 noundef %.1.i.i) #23
  %.not75.i.i = icmp eq i32 %2, 0
  br i1 %.not75.i.i, label %.sink.split, label %.lr.ph.i.i, !llvm.loop !171

.sink.split:                                      ; preds = %.preheader.i.i, %bb.l, %bb.n, %dst_check.exit82.i.i, %.lr.ph.i.i, %bb.am, %bb.al, %bb.k, %netif_running.exit.i.i, %dst_check.exit.i.i
  %.0.ph = phi ptr [ null, %netif_running.exit.i.i ], [ %0, %bb.am ], [ %0, %bb.k ], [ %0, %bb.al ], [ %0, %.lr.ph.i.i ], [ null, %dst_check.exit.i.i ], [ null, %dst_check.exit82.i.i ], [ null, %bb.n ], [ null, %bb.l ], [ null, %.preheader.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_default_advmss(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 64
  %.not6.i = icmp eq i16 %i.e, 0
  br i1 %.not6.i, label %xfrm_dst_path.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8
  br label %xfrm_dst_path.exit

xfrm_dst_path.exit:                               ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %0, %bb.b ]  ; 3 uses
  %i.h = getelementptr i8, ptr %.0.i, i64 16
  %.val.i = load i64, ptr %i.h, align 8
  %i.i = and i64 %.val.i, -4
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = getelementptr i8, ptr %i.j, i64 28
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %.not.i1 = icmp eq i32 %i.l, 0
  br i1 %.not.i1, label %bb.d, label %dst_metric_advmss.exit

bb.d:                                             ; preds = %xfrm_dst_path.exit
  %i.m = getelementptr i8, ptr %.0.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call i32 %i.p(ptr noundef %.0.i) #20, !inline_history !172
  br label %dst_metric_advmss.exit

dst_metric_advmss.exit:                           ; preds = %xfrm_dst_path.exit, %bb.d
  %.0.i2 = phi i32 [ %i.l, %xfrm_dst_path.exit ], [ %i.q, %bb.d ]
  ret i32 %.0.i2
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xfrm_mtu(ptr noundef %0) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val, -4
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %dst_mtu.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 56
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 64
  %.not6.i = icmp eq i16 %i.j, 0
  br i1 %.not6.i, label %xfrm_dst_path.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr i8, ptr %0, i64 240
  %i.l = load ptr, ptr %i.k, align 8
  br label %xfrm_dst_path.exit

xfrm_dst_path.exit:                               ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %0, %bb.c ]  ; 4 uses
  %i.m = getelementptr i8, ptr %.0.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 32             ; 3 uses
  %i.q = icmp eq ptr %i.p, @ip6_mtu
  br i1 %i.q, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %xfrm_dst_path.exit
  %i.r = tail call i32 @ip6_mtu(ptr noundef %.0.i) #20
  br label %dst_mtu.exit

bb.f:                                             ; preds = %xfrm_dst_path.exit
  %i.s = icmp eq ptr %i.p, @ipv4_mtu
  br i1 %i.s, label %bb.g, label %bb.h, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.t = tail call i32 @ipv4_mtu(ptr noundef %.0.i) #20
  br label %dst_mtu.exit

bb.h:                                             ; preds = %bb.f
  %i.u = tail call i32 %i.p(ptr noundef %.0.i) #20, !inline_history !173
  br label %dst_mtu.exit

dst_mtu.exit:                                     ; preds = %bb.h, %bb.g, %bb.e, %bb.a
  %i.v = phi i32 [ %i.e, %bb.a ], [ %i.r, %bb.e ], [ %i.t, %bb.g ], [ %i.u, %bb.h ]
  ret i32 %i.v
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xfrm_negative_advice(ptr noundef %0, ptr nofree noundef captures(address) %1) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 58
  %i.b = load volatile i16, ptr %i.a, align 2
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 120
  store volatile i16 -1, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 496
  store volatile i32 0, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 536        ; 2 uses
  %i.f = tail call ptr asm sideeffect "xchgq ${0:q}, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) %i.e, ptr null, ptr elementtype(ptr) %i.e) #22, !srcloc !174
  tail call void @dst_release(ptr noundef %i.f) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal void @xfrm_link_failure(ptr nofree readnone captures(none) %0) #8 align 16 prefalign(16) {
bb.a:
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @xfrm_neigh_lookup(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %xfrm_dst_path.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 56
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 64
  %.not6.i = icmp eq i16 %i.e, 0
  br i1 %.not6.i, label %xfrm_get_dst_nexthop.exit, label %xfrm_dst_path.exit.thread

xfrm_dst_path.exit.thread:                        ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8
  br label %xfrm_get_dst_nexthop.exit

xfrm_dst_path.exit:                               ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 240
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not.not = icmp eq ptr %1, null
  br i1 %.not.not, label %xfrm_dst_child.exit.i, label %xfrm_get_dst_nexthop.exit

xfrm_dst_child.exit.i:                            ; preds = %xfrm_dst_path.exit, %bb.f
  %i.j = phi ptr [ %i.aa, %bb.f ], [ %i.b, %xfrm_dst_path.exit ] ; 4 uses
  %.015.i = phi ptr [ %.2.i, %bb.f ], [ %2, %xfrm_dst_path.exit ] ; 2 uses
  %.0914.i = phi ptr [ %i.l, %bb.f ], [ %0, %xfrm_dst_path.exit ]
  %i.k = getelementptr i8, ptr %.0914.i, i64 232
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr i8, ptr %i.j, i64 252
  %i.n = load i8, ptr %i.m, align 4
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %xfrm_dst_child.exit.i
  %i.p = getelementptr i8, ptr %i.j, i64 760
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 9
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = and i32 %i.t, 8
  %.not11.i = icmp eq i32 %i.u, 0
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr i8, ptr %i.j, i64 448
  %i.w = load ptr, ptr %i.v, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = and i32 %i.t, 4
  %.not12.i = icmp eq i32 %i.x, 0
  %i.y = getelementptr i8, ptr %i.j, i64 116
end_hunk_0
