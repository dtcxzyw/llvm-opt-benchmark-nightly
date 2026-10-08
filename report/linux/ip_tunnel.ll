Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/ip_tunnel?download=true
inline.NumInlined: 351
inline.NumDeleted: 130
begin_hunk_0_@ip_tunnel_xmit:bb.a
  %i.hc = and i32 %i.hb, 65535
  %i.hd = ashr i32 %i.hb, 16
  %i.he = sub nsw i32 %i.hc, %i.hd
  %i.hf = icmp ne i32 %i.he, 1
  %i.hg = zext i1 %i.hf to i32
  br label %skb_header_cloned.exit.i

skb_header_cloned.exit.i:                         ; preds = %bb.bq, %.skb_header_cloned.exit_crit_edge.i
  %.val30.i.i = phi ptr [ %.val5.i.i, %bb.bq ], [ %.val30.i.pre.i, %.skb_header_cloned.exit_crit_edge.i ]
  %.0.i.i197 = phi i32 [ %i.hg, %bb.bq ], [ 0, %.skb_header_cloned.exit_crit_edge.i ]
  %i.hh = getelementptr i8, ptr %0, i64 208
  %.val31.i.i = load ptr, ptr %i.hh, align 8
  %i.hi = ptrtoint ptr %.val31.i.i to i64
  %i.hj = ptrtoint ptr %.val30.i.i to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %spec.select.i.i = call i32 @llvm.usub.sat.i32(i32 %i.gt, i32 %i.hl) ; 2 uses
  %i.hm = or i32 %spec.select.i.i, %.0.i.i197
  %or.cond.not.i.i = icmp eq i32 %i.hm, 0
  br i1 %or.cond.not.i.i, label %skb_cow_head.exit.thread, label %skb_cow_head.exit

skb_cow_head.exit:                                ; preds = %skb_header_cloned.exit.i
  %i.hn = add i32 %spec.select.i.i, 63
  %i.ho = and i32 %i.hn, -64
  %i.hp = call i32 @pskb_expand_head(ptr noundef %0, i32 noundef %i.ho, i32 noundef 0, i32 noundef 2080) #13
  %.not167 = icmp eq i32 %i.hp, 0
  br i1 %.not167, label %skb_cow_head.exit.thread, label %bb.br

bb.br:                                            ; preds = %skb_cow_head.exit
  call void @dst_release(ptr noundef %.3146) #13
  %i.hq = getelementptr i8, ptr %1, i64 608       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.hq, ptr elementtype(i64) %i.hq) #12, !srcloc !12
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #13
  br label %bb.bx

skb_cow_head.exit.thread:                         ; preds = %skb_header_cloned.exit.i, %skb_cow_head.exit
  %spec.store.select.i = call i32 @llvm.umin.i32(i32 %i.gt, i32 512) ; 2 uses
  %i.hr = getelementptr i8, ptr %1, i64 60        ; 2 uses
  %i.hs = load volatile i16, ptr %i.hr, align 4
  %i.ht = zext i16 %i.hs to i32
  %i.hu = icmp samesign ugt i32 %spec.store.select.i, %i.ht
  br i1 %i.hu, label %bb.bs, label %ip_tunnel_adj_headroom.exit

bb.bs:                                            ; preds = %skb_cow_head.exit.thread
  %i.hv = trunc nuw nsw i32 %spec.store.select.i to i16
  store volatile i16 %i.hv, ptr %i.hr, align 4
  br label %ip_tunnel_adj_headroom.exit

ip_tunnel_adj_headroom.exit:                      ; preds = %skb_cow_head.exit.thread, %bb.bs
  %i.hw = load i32, ptr %i.co, align 8
  %i.hx = load i32, ptr %i.cn, align 4
  %i.hy = load i8, ptr %i.a, align 1
  %i.hz = load ptr, ptr %i.cd, align 8
  %i.ia = getelementptr i8, ptr %1, i64 264
  %.val173 = load ptr, ptr %i.ia, align 8
  %i.ib = icmp ne ptr %i.hz, %.val173
  call void @iptunnel_xmit(ptr noundef null, ptr noundef %.3146, ptr noundef %0, i32 noundef %i.hw, i32 noundef %i.hx, i8 noundef zeroext %i.hy, i8 noundef zeroext %i.fk, i8 noundef zeroext %.0135, i16 noundef zeroext %.0133, i1 noundef zeroext %i.ib, i16 noundef zeroext 0) #13
  br label %bb.bx

bb.bt:                                            ; preds = %neigh_release.exit
  %.val.i198 = load i64, ptr %i.q, align 8
  %i.ic = and i64 %.val.i198, -2                  ; 2 uses
  %.not.i199 = icmp eq i64 %i.ic, 0
  br i1 %.not.i199, label %dst_link_failure.exit202, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.id = inttoptr i64 %i.ic to ptr
  %i.ie = getelementptr i8, ptr %i.id, i64 8
  %i.if = load ptr, ptr %i.ie, align 8            ; 2 uses
  %.not8.i200 = icmp eq ptr %i.if, null
  br i1 %.not8.i200, label %dst_link_failure.exit202, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ig = getelementptr i8, ptr %i.if, i64 72
  %i.ih = load ptr, ptr %i.ig, align 8            ; 2 uses
  %.not9.i201 = icmp eq ptr %i.ih, null
  br i1 %.not9.i201, label %dst_link_failure.exit202, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  tail call void %i.ih(ptr noundef %0) #13, !inline_history !36
  br label %dst_link_failure.exit202

dst_link_failure.exit202:                         ; preds = %bb.ad, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %ip_tunnel_encap.exit.thread215, %bb.n, %skb_tunnel_info.exit.thread, %ip_tunnel_encap.exit, %bb.av, %bb.aq, %bb.al, %bb.d
  %i.ii = getelementptr i8, ptr %1, i64 592       ; 2 uses
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.ii, ptr elementtype(i64) %i.ii) #12, !srcloc !12
  call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %0, i32 noundef 2) #13
  br label %bb.bx

bb.bx:                                            ; preds = %dst_link_failure.exit202, %ip_tunnel_adj_headroom.exit, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @ip_tunnel_ctl(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2624       ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 2656
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 2812
  %i.e = load i32, ptr %i.d, align 4
  tail call void @__rcu_read_lock() #13
  %i.f = getelementptr i8, ptr %i.c, i64 2984
  %i.g = load volatile ptr, ptr %i.f, align 8
  %i.h = zext i32 %i.e to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 12 uses
  tail call void @__rcu_read_unlock() #13
  switch i32 %2, label %PTR_ERR_OR_ZERO.exit [
    i32 35312, label %bb.b
    i32 35313, label %bb.e
    i32 35315, label %bb.e
    i32 35314, label %bb.ad
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq ptr %0, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.k, i64 544
  %i.n = load i16, ptr %i.m, align 32
  %i.o = zext i16 %i.n to i32
  %i.p = tail call fastcc ptr @ip_tunnel_find(ptr noundef %i.j, ptr noundef %1, i32 noundef %i.o) #16, !srcloc !41 ; 2 uses
  %.not109 = icmp eq ptr %i.p, null
  %spec.select118 = select i1 %.not109, ptr %i.a, ptr %i.p
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.088 = phi ptr [ %spec.select118, %bb.c ], [ %i.a, %bb.b ]
  %i.q = getelementptr i8, ptr %.088, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(64) %1, ptr noundef align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  br label %PTR_ERR_OR_ZERO.exit

bb.e:                                             ; preds = %bb.a, %bb.a
  %i.r = getelementptr i8, ptr %i.c, i64 112
  %i.s = load ptr, ptr %i.r, align 16
  %i.t = tail call zeroext i1 @ns_capable(ptr noundef %i.s, i32 noundef 12) #13
  br i1 %i.t, label %bb.f, label %PTR_ERR_OR_ZERO.exit

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %1, i64 52
  %i.v = load i8, ptr %i.u, align 4
  %.not102 = icmp eq i8 %i.v, 0
  br i1 %.not102, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %1, i64 50         ; 2 uses
  %i.x = load i16, ptr %i.w, align 2
  %i.y = or i16 %i.x, 64
  store i16 %i.y, ptr %i.w, align 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.aa = load volatile i64, ptr %i.z, align 8
  %i.ab = and i64 %i.aa, 65536
  %.not119 = icmp eq i64 %i.ab, 0
  br i1 %.not119, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ac = load volatile i64, ptr %i.z, align 8
  %i.ad = and i64 %i.ac, 4
  %.not121 = icmp eq i64 %i.ad, 0
  br i1 %.not121, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %1, i64 32
  store i32 0, ptr %i.ae, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.af = getelementptr i8, ptr %1, i64 24
  %i.ag = load volatile i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 4
  %.not123 = icmp eq i64 %i.ah, 0
  br i1 %.not123, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %1, i64 36
  store i32 0, ptr %i.ai, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.h
  %i.aj = getelementptr i8, ptr %i.j, i64 1048
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = tail call fastcc ptr @ip_tunnel_find(ptr noundef %i.j, ptr noundef %1, i32 noundef %i.ak) #16, !srcloc !42 ; 5 uses
  %i.am = icmp eq i32 %2, 35313
  br i1 %i.am, label %bb.n, label %bb.z

bb.n:                                             ; preds = %bb.m
  %.not108 = icmp eq ptr %i.al, null
  br i1 %.not108, label %bb.o, label %PTR_ERR_OR_ZERO.exit

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.j, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call fastcc ptr @__ip_tunnel_create(ptr noundef %i.c, ptr noundef %i.ao, ptr noundef %1) #16, !srcloc !43 ; 17 uses
  %i.aq = icmp ugt ptr %i.ap, inttoptr (i64 -4096 to ptr)
  br i1 %i.aq, label %ip_tunnel_create.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = tail call fastcc i32 @ip_tunnel_bind_dev(ptr noundef %i.ap) #16, !srcloc !44
  %i.as = tail call i32 @dev_set_mtu(ptr noundef %i.ap, i32 noundef %i.ar) #13 ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr i8, ptr %i.ap, i64 2624   ; 3 uses
  %i.au = getelementptr i8, ptr %i.ap, i64 2784
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.ap, i64 536
  store i32 68, ptr %i.aw, align 8
  %i.ax = sub i32 65515, %i.av                    ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 540    ; 2 uses
  store i32 %i.ax, ptr %i.ay, align 4
  %i.az = getelementptr i8, ptr %i.ap, i64 544
  %i.ba = load i16, ptr %i.az, align 32
  %i.bb = icmp eq i16 %i.ba, 1
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr i8, ptr %i.ap, i64 180
  %i.bd = load i16, ptr %i.bc, align 4
  %i.be = zext i16 %i.bd to i32
  %i.bf = sub i32 %i.ax, %i.be
  store i32 %i.bf, ptr %i.ay, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bg = getelementptr i8, ptr %i.ap, i64 2744
  %i.bh = load i32, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr i8, ptr %i.ap, i64 2772
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = getelementptr i8, ptr %i.ap, i64 2728   ; 2 uses
  %i.bl = load volatile i64, ptr %i.bk, align 8
  %i.bm = and i64 %i.bl, 4
  %.not.i.i.i = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i.i, label %bb.t, label %ip_bucket.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.bn = load volatile i64, ptr %i.bk, align 8
  %i.bo = and i64 %i.bn, 65536
  %.not31.i.i.i = icmp eq i64 %i.bo, 0
  %spec.select137 = select i1 %.not31.i.i.i, i32 %i.bh, i32 0
  br label %ip_bucket.exit.i.i

ip_bucket.exit.i.i:                               ; preds = %bb.t, %bb.s
  %.0.i.i.i = phi i32 [ %i.bh, %bb.s ], [ %spec.select137, %bb.t ]
  %i.bp = and i32 %i.bj, 240
  %i.bq = icmp eq i32 %i.bp, 224
  %.026.i.i.i = select i1 %i.bq, i32 0, i32 %i.bj
  %i.br = xor i32 %.0.i.i.i, %.026.i.i.i
  %i.bs = mul i32 %i.br, 1640531527
  %i.bt = lshr i32 %i.bs, 25
  %i.bu = getelementptr i8, ptr %i.j, i64 16
  %i.bv = zext nneg i32 %i.bt to i64
  %i.bw = getelementptr [8 x i8], ptr %i.bu, i64 %i.bv ; 3 uses
  %i.bx = getelementptr i8, ptr %i.ap, i64 2828
  %i.by = load i8, ptr %i.bx, align 4, !range !15, !noundef !16
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %ip_bucket.exit.i.i
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !17
  %i.ca = getelementptr i8, ptr %i.j, i64 1040
  store volatile ptr %i.at, ptr %i.ca, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %ip_bucket.exit.i.i
  %i.cb = getelementptr i8, ptr %i.ap, i64 2632   ; 3 uses
  %i.cc = load ptr, ptr %i.bw, align 8            ; 3 uses
  store ptr %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr i8, ptr %i.ap, i64 2640
  store volatile ptr %i.bw, ptr %i.cd, align 16
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !18
  store volatile ptr %i.cb, ptr %i.bw, align 8
  %.not.i7.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i7.i.i, label %ip_tunnel_create.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = getelementptr i8, ptr %i.cc, i64 8
  store volatile ptr %i.cb, ptr %i.ce, align 8
  br label %ip_tunnel_create.exit

bb.x:                                             ; preds = %bb.p
  tail call void @unregister_netdevice_queue(ptr noundef %i.ap, ptr noundef null) #13
  %i.cf = sext i32 %i.as to i64
  %i.cg = inttoptr i64 %i.cf to ptr
  br label %ip_tunnel_create.exit

ip_tunnel_create.exit:                            ; preds = %bb.o, %bb.v, %bb.w, %bb.x
  %.0.i110 = phi ptr [ %i.ap, %bb.o ], [ %i.cg, %bb.x ], [ %i.at, %bb.v ], [ %i.at, %bb.w ] ; 2 uses
  %i.ch = icmp ugt ptr %.0.i110, inttoptr (i64 -4096 to ptr)
  br i1 %i.ch, label %bb.y, label %PTR_ERR_OR_ZERO.exit

bb.y:                                             ; preds = %ip_tunnel_create.exit
  %i.ci = ptrtoint ptr %.0.i110 to i64
  %i.cj = trunc i64 %i.ci to i32
  br label %PTR_ERR_OR_ZERO.exit

bb.z:                                             ; preds = %bb.m
  %i.ck = load ptr, ptr %i.j, align 8
  %i.cl = icmp ne ptr %0, %i.ck
  %i.cm = icmp eq i32 %2, 35315
  %or.cond16 = and i1 %i.cm, %i.cl
  br i1 %or.cond16, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %.not103 = icmp eq ptr %i.al, null
  br i1 %.not103, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr i8, ptr %i.al, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  %.not106 = icmp eq ptr %i.co, %0
  br i1 %.not106, label %.thread114, label %PTR_ERR_OR_ZERO.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cp = getelementptr i8, ptr %1, i64 60
  %i.cq = load i32, ptr %i.cp, align 4            ; 2 uses
  %i.cr = and i32 %i.cq, 240
  %i.cs = icmp eq i32 %i.cr, 224
  %.not104 = icmp eq i32 %i.cq, 0
  %spec.select = select i1 %.not104, i32 0, i32 16
  %.087 = select i1 %i.cs, i32 2, i32 %spec.select
  %i.ct = getelementptr i8, ptr %0, i64 176
  %i.cu = load i32, ptr %i.ct, align 16
  %.masked = and i32 %i.cu, 18
  %.not105 = icmp eq i32 %.masked, %.087
  br i1 %.not105, label %.thread, label %PTR_ERR_OR_ZERO.exit

.thread:                                          ; preds = %bb.ac, %bb.z
  %.2 = phi ptr [ %i.al, %bb.z ], [ %i.a, %bb.ac ] ; 2 uses
  %.not107 = icmp eq ptr %.2, null
  br i1 %.not107, label %PTR_ERR_OR_ZERO.exit, label %.thread114

.thread114:                                       ; preds = %bb.ab, %.thread
  %.2117 = phi ptr [ %.2, %.thread ], [ %i.al, %bb.ab ]
  tail call fastcc void @ip_tunnel_update(ptr noundef %i.j, ptr noundef nonnull %.2117, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, i32 noundef 0) #16, !srcloc !45
  br label %PTR_ERR_OR_ZERO.exit

bb.ad:                                            ; preds = %bb.a
  %i.cv = getelementptr i8, ptr %i.c, i64 112
  %i.cw = load ptr, ptr %i.cv, align 16
  %i.cx = tail call zeroext i1 @ns_capable(ptr noundef %i.cw, i32 noundef 12) #13
  br i1 %i.cx, label %bb.ae, label %PTR_ERR_OR_ZERO.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.cz = icmp eq ptr %0, %i.cy
  br i1 %i.cz, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  %i.da = getelementptr i8, ptr %i.cy, i64 544
  %i.db = load i16, ptr %i.da, align 32
  %i.dc = zext i16 %i.db to i32
  %i.dd = tail call fastcc ptr @ip_tunnel_find(ptr noundef %i.j, ptr noundef %1, i32 noundef %i.dc) #16, !srcloc !46 ; 3 uses
  %.not = icmp eq ptr %i.dd, null
  br i1 %.not, label %PTR_ERR_OR_ZERO.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.de = load ptr, ptr %i.j, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 2624
  %i.dg = icmp eq ptr %i.dd, %i.df
  br i1 %i.dg, label %PTR_ERR_OR_ZERO.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dh = getelementptr i8, ptr %i.dd, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %.091 = phi ptr [ %i.di, %bb.ah ], [ %0, %bb.ae ]
  tail call void @unregister_netdevice_queue(ptr noundef %.091, ptr noundef null) #13
  br label %PTR_ERR_OR_ZERO.exit

PTR_ERR_OR_ZERO.exit:                             ; preds = %bb.ac, %bb.y, %ip_tunnel_create.exit, %bb.a, %.thread, %bb.ab, %bb.n, %bb.d, %bb.ai, %.thread114, %bb.ag, %bb.af, %bb.ad, %bb.e
  %.190 = phi i32 [ -2, %.thread ], [ 0, %bb.d ], [ -1, %bb.ad ], [ -22, %bb.a ], [ -17, %bb.n ], [ 0, %.thread114 ], [ -17, %bb.ab ], [ 0, %ip_tunnel_create.exit ], [ -1, %bb.e ], [ -1, %bb.ag ], [ 0, %bb.ai ], [ -2, %bb.af ], [ %i.cj, %bb.y ], [ -22, %bb.ac ]
  ret i32 %.190
}

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none)
define internal fastcc ptr @ip_tunnel_find(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address) %1, i32 noundef %2) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %i.a = getelementptr i8, ptr %1, i64 56
  %i.b = getelementptr i8, ptr %1, i64 60
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 40
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.j = load volatile i64, ptr %i.i, align 8     ; 2 uses
  %i.k = and i64 %i.j, 4
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.b, label %ip_bucket.exit

bb.b:                                             ; preds = %bb.a
  %i.l = load volatile i64, ptr %i.i, align 8     ; 2 uses
  %i.m = and i64 %i.l, 65536
  %.not31.i = icmp eq i64 %i.m, 0
  %spec.select = select i1 %.not31.i, i32 %i.f, i32 0
  br label %ip_bucket.exit

ip_bucket.exit:                                   ; preds = %bb.b, %bb.a
  %i.n = phi i64 [ %i.j, %bb.a ], [ %i.l, %bb.b ]
  %.0.i = phi i32 [ %i.f, %bb.a ], [ %spec.select, %bb.b ]
  %i.o = and i32 %i.c, 240
  %i.p = icmp eq i32 %i.o, 224
  %.026.i = select i1 %i.p, i32 0, i32 %i.c
  %i.q = xor i32 %.0.i, %.026.i
  %i.r = mul i32 %i.q, 1640531527
  %i.s = lshr i32 %i.r, 25
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = zext nneg i32 %i.s to i64
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u
  store i64 %i.n, ptr %.sroa.0, align 8
  %i.w = load volatile ptr, ptr %i.v, align 8     ; 2 uses
  %.not = icmp eq ptr %i.w, null
  %i.x = getelementptr i8, ptr %i.w, i64 -8       ; 2 uses
  %.not395157 = icmp eq ptr %i.x, null
  %.not3951 = or i1 %.not, %.not395157
  br i1 %.not3951, label %.split._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ip_bucket.exit, %ip_tunnel_key_match.exit.thread
  %.052 = phi ptr [ %i.av, %ip_tunnel_key_match.exit.thread ], [ %i.x, %ip_bucket.exit ] ; 9 uses
  %i.y = getelementptr i8, ptr %.052, i64 144
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.d, %i.z
  br i1 %i.aa, label %bb.c, label %ip_tunnel_key_match.exit.thread

bb.c:                                             ; preds = %.lr.ph
  %i.ab = getelementptr i8, ptr %.052, i64 148
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = icmp eq i32 %i.c, %i.ac
  br i1 %i.ad, label %bb.d, label %ip_tunnel_key_match.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %.052, i64 128
  %i.af = load volatile i32, ptr %i.ae, align 8
  %i.ag = icmp eq i32 %i.h, %i.af
  br i1 %i.ag, label %bb.e, label %ip_tunnel_key_match.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr i8, ptr %.052, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 544
  %i.ak = load i16, ptr %i.aj, align 32
  %i.al = zext i16 %i.ak to i32
  %i.am = icmp eq i32 %2, %i.al
  br i1 %i.am, label %bb.f, label %ip_tunnel_key_match.exit.thread

bb.f:                                             ; preds = %bb.e
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0. = load volatile i64, ptr %.sroa.0, align 8
  %i.an = and i64 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0., 4
  %.not.i43 = icmp eq i64 %i.an, 0
  %i.ao = getelementptr i8, ptr %.052, i64 104
  %i.ap = load volatile i64, ptr %i.ao, align 8
  %.in.in.i = and i64 %i.ap, 4
  %.in.not.i = icmp eq i64 %.in.in.i, 0           ; 2 uses
  br i1 %.not.i43, label %.split, label %bb.g

.split:                                           ; preds = %bb.f
  br i1 %.in.not.i, label %.split._crit_edge, label %ip_tunnel_key_match.exit.thread

bb.g:                                             ; preds = %bb.f
  br i1 %.in.not.i, label %ip_tunnel_key_match.exit.thread, label %ip_tunnel_key_match.exit

ip_tunnel_key_match.exit:                         ; preds = %bb.g
  %i.aq = getelementptr i8, ptr %.052, i64 120
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ar, %i.f
  br i1 %i.as, label %.split._crit_edge, label %ip_tunnel_key_match.exit.thread

ip_tunnel_key_match.exit.thread:                  ; preds = %bb.g, %.split, %.lr.ph, %bb.c, %bb.d, %bb.e, %ip_tunnel_key_match.exit
  %i.at = getelementptr i8, ptr %.052, i64 8
  %i.au = load volatile ptr, ptr %i.at, align 8   ; 2 uses
  %.not40 = icmp eq ptr %i.au, null
  %i.av = getelementptr i8, ptr %i.au, i64 -8     ; 2 uses
  %.not3958 = icmp eq ptr %i.av, null
  %.not39 = or i1 %.not40, %.not3958
  br i1 %.not39, label %.split._crit_edge, label %.lr.ph

.split._crit_edge:                                ; preds = %ip_tunnel_key_match.exit.thread, %ip_tunnel_key_match.exit, %.split, %ip_bucket.exit
  %.0.lcssa = phi ptr [ null, %ip_bucket.exit ], [ %.052, %.split ], [ %.052, %ip_tunnel_key_match.exit ], [ null, %ip_tunnel_key_match.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret ptr %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @ns_capable(ptr noundef, i32 noundef) local_unnamed_addr #5
end_hunk_0
