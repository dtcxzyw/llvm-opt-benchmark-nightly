Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/tx?download=true
inline.NumInlined: 938
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ieee80211_check_fast_xmit_all:bb.a
._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_check_fast_xmit_iface(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1856
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @__rcu_read_lock() #16
  %i.c = getelementptr i8, ptr %i.b, i64 1632     ; 3 uses
  %i.d = load volatile ptr, ptr %i.c, align 8     ; 2 uses
  %.not23 = icmp eq ptr %i.d, %i.c
  br i1 %.not23, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 2272
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.024 = phi ptr [ %i.d, %.lr.ph ], [ %i.k, %bb.f ] ; 3 uses
  %i.f = getelementptr i8, ptr %.024, i64 80
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not20 = icmp eq ptr %0, %i.g
  br i1 %.not20, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %i.g, i64 2272
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.i, null
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.e, align 8
  %.not22 = icmp eq ptr %i.i, %i.j
  br i1 %.not22, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.b
  tail call void @ieee80211_check_fast_xmit(ptr noundef %.024) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.k = load volatile ptr, ptr %.024, align 8    ; 2 uses
  %.not = icmp eq ptr %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.f, %bb.a
  tail call void @__rcu_read_unlock() #16
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @ieee80211_clear_fast_xmit(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 148        ; 2 uses
  tail call void @_raw_spin_lock_bh(ptr noundef %i.a) #16
  %i.b = getelementptr i8, ptr %0, i64 152        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  store volatile ptr null, ptr %i.b, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %i.a) #16
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 72
  tail call void @kvfree_call_rcu(ptr noundef %i.d, ptr noundef nonnull %i.c) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @__ieee80211_xmit_fast(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i1 zeroext %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %7 = alloca %struct.ieee80211_tx_data, align 8  ; 14 uses
  %i.a = getelementptr i8, ptr %0, i64 1856       ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr i8, ptr %2, i64 14         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %7, i8 0, i64 72, i1 false), !annotation !24
  %i.d = getelementptr i8, ptr %i.b, i64 112
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %2, i64 8          ; 3 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = zext i8 %i.g to i32
  %i.i = add nsw i32 %i.h, -12                    ; 2 uses
  %i.j = getelementptr i8, ptr %3, i64 220
  %i.k = load volatile i32, ptr %i.j, align 4
  %.not9.i = icmp eq i32 %i.k, 1
  br i1 %.not9.i, label %skb_share_check.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @skb_clone(ptr noundef %3, i32 noundef 2080) #16 ; 2 uses
  %.not8.i = icmp eq ptr %i.l, null
  br i1 %.not8.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread84, !prof !17

skb_share_check.exit.thread84:                    ; preds = %bb.b
  tail call void @consume_skb(ptr noundef %3) #16
  br label %bb.c

skb_share_check.exit.thread:                      ; preds = %bb.b
  tail call void @sk_skb_reason_drop(ptr noundef null, ptr noundef %3, i32 noundef 2) #16
  br label %bb.ad

skb_share_check.exit:                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.ad, label %bb.c, !prof !100

bb.c:                                             ; preds = %skb_share_check.exit.thread84, %skb_share_check.exit
  %.0.i87 = phi ptr [ %i.l, %skb_share_check.exit.thread84 ], [ %3, %skb_share_check.exit ] ; 31 uses
  %i.m = load i16, ptr %i.c, align 2
  %i.n = and i16 %i.m, 128
  %.not68 = icmp eq i16 %i.n, 0
  br i1 %.not68, label %ieee80211_amsdu_aggregate.exit.thread, label %_ieee80211_hw_check.exit.i

_ieee80211_hw_check.exit.i:                       ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8              ; 10 uses
  %i.p = getelementptr i8, ptr %i.o, i64 208
  %i.q = getelementptr i8, ptr %.0.i87, i64 144
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 7
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 2832
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.t
  %i.w = load ptr, ptr %i.v, align 8              ; 7 uses
  %i.x = getelementptr i8, ptr %.0.i87, i64 112   ; 4 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %1, i64 2813
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = getelementptr i8, ptr %i.o, i64 148
  %i.ac = load i8, ptr %i.ab, align 4             ; 2 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = getelementptr i8, ptr %1, i64 2816
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = getelementptr i8, ptr %i.o, i64 104
  %i.ai = load volatile i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ai, 68719476736
  %.not169.i = icmp eq i64 %i.aj, 0
  br i1 %.not169.i, label %ieee80211_amsdu_aggregate.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ieee80211_hw_check.exit.i
  %i.ak = getelementptr i8, ptr %0, i64 7244
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 1
  %.not.i73 = icmp eq i32 %i.am, 0
  br i1 %.not.i73, label %bb.e, label %ieee80211_amsdu_aggregate.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr i8, ptr %.0.i87, i64 192  ; 2 uses
  %.val162.i = load i32, ptr %i.an, align 8
  %i.ao = getelementptr i8, ptr %.0.i87, i64 200  ; 2 uses
  %.val163.i = load ptr, ptr %i.ao, align 8
  %i.ap = zext i32 %.val162.i to i64
  %i.aq = getelementptr i8, ptr %.val163.i, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %i.as = load i16, ptr %i.ar, align 4
  %i.at = icmp ne i16 %i.as, 0
  %.not137.i = icmp eq ptr %i.w, null
  %or.cond150.i = select i1 %i.at, i1 true, i1 %.not137.i
  br i1 %or.cond150.i, label %ieee80211_amsdu_aggregate.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr i8, ptr %i.w, i64 -232
  %i.av = getelementptr i8, ptr %i.w, i64 -8
  %i.aw = load volatile i64, ptr %i.av, align 8
  %i.ax = and i64 %i.aw, 4
  %.not171.i = icmp eq i64 %i.ax, 0
  br i1 %.not171.i, label %bb.g, label %ieee80211_amsdu_aggregate.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr i8, ptr %i.af, i64 2
  %i.az = load i16, ptr %i.ay, align 2            ; 2 uses
  %.not138.i = icmp eq i16 %i.az, 0
  %i.ba = tail call i16 @llvm.umin.i16(i16 %i.ag, i16 %i.az)
  %.0123.in.i = select i1 %.not138.i, i16 %i.ag, i16 %i.ba ; 2 uses
  %i.bb = getelementptr i8, ptr %i.af, i64 4
  %i.bc = getelementptr [2 x i8], ptr %i.bb, i64 %i.t
  %i.bd = load i16, ptr %i.bc, align 2            ; 2 uses
  %.not139.i = icmp eq i16 %i.bd, 0
  %i.be = tail call i16 @llvm.umin.i16(i16 %.0123.in.i, i16 %i.bd)
  %.1124.in.i = select i1 %.not139.i, i16 %.0123.in.i, i16 %i.be
  %.1124.i = zext i16 %.1124.in.i to i32
  %i.bf = getelementptr i8, ptr %.0.i87, i64 129
  %i.bg = load i32, ptr %i.bf, align 1
  %i.bh = and i32 %i.bg, 1536
  %or.cond.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %or.cond.i.i.i, label %bb.h, label %fq_flow_idx.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @__skb_get_hash_net(ptr noundef null, ptr noundef nonnull %.0.i87) #16
  br label %fq_flow_idx.exit.i

fq_flow_idx.exit.i:                               ; preds = %bb.h, %bb.g
  %i.bi = getelementptr i8, ptr %.0.i87, i64 152
  %i.bj = load i32, ptr %i.bi, align 8
  %i.bk = getelementptr i8, ptr %i.o, i64 244
  %i.bl = load i32, ptr %i.bk, align 4
  %8 = zext i32 %i.bj to i64
  %9 = zext i32 %i.bl to i64
  %10 = mul nuw i64 %9, %8
  %11 = lshr i64 %10, 32
  %i.bm = getelementptr i8, ptr %i.o, i64 240     ; 4 uses
  tail call void @_raw_spin_lock_bh(ptr noundef %i.bm) #16
  %i.bn = load ptr, ptr %i.p, align 8
  %i.bo = getelementptr [56 x i8], ptr %i.bn, i64 %11 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8            ; 3 uses
  %.not.i.i = icmp eq ptr %i.bp, null
  %.not12.i.i = icmp eq ptr %i.bp, %i.au
  %or.cond.i164.i = or i1 %.not.i.i, %.not12.i.i
  br i1 %or.cond.i164.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %fq_flow_idx.exit.i
  %i.bq = getelementptr i8, ptr %i.w, i64 -184    ; 2 uses
  %i.br = getelementptr i8, ptr %i.w, i64 -116    ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4
  %i.bu = getelementptr i8, ptr %i.o, i64 276     ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4
  %.pr.i.i = load ptr, ptr %i.bq, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %fq_flow_idx.exit.i
  %i.bx = phi ptr [ %.pr.i.i, %bb.i ], [ %i.bp, %fq_flow_idx.exit.i ]
  %.0.i.i = phi ptr [ %i.bq, %bb.i ], [ %i.bo, %fq_flow_idx.exit.i ] ; 3 uses
  %.not13.i.i = icmp eq ptr %i.bx, null
  br i1 %.not13.i.i, label %bb.k, label %fq_flow_classify.exit.i

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr i8, ptr %i.w, i64 -112    ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = add i32 %i.bz, 1
  store i32 %i.ca, ptr %i.by, align 8
  br label %fq_flow_classify.exit.i

fq_flow_classify.exit.i:                          ; preds = %bb.k, %bb.j
  %i.cb = getelementptr i8, ptr %.0.i.i, i64 24
  %i.cc = getelementptr i8, ptr %.0.i.i, i64 32
  %i.cd = load volatile ptr, ptr %i.cc, align 8   ; 9 uses
  %i.ce = icmp eq ptr %i.cd, %i.cb
  %.not140173.i = icmp eq ptr %i.cd, null
  %.not140.i = or i1 %i.ce, %.not140173.i
  br i1 %.not140.i, label %ieee80211_amsdu_aggregate.exit.thread90, label %bb.l

bb.l:                                             ; preds = %fq_flow_classify.exit.i
  %i.cf = getelementptr i8, ptr %i.cd, i64 192    ; 2 uses
  %.val160.i = load i32, ptr %i.cf, align 8
  %i.cg = getelementptr i8, ptr %i.cd, i64 200    ; 2 uses
  %.val161.i = load ptr, ptr %i.cg, align 8
  %i.ch = zext i32 %.val160.i to i64
  %i.ci = getelementptr i8, ptr %.val161.i, i64 %i.ch ; 3 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %i.ck = load i16, ptr %i.cj, align 4
  %.not174.i = icmp eq i16 %i.ck, 0
  br i1 %.not174.i, label %bb.m, label %ieee80211_amsdu_aggregate.exit.thread90

bb.m:                                             ; preds = %bb.l
  %i.cl = getelementptr i8, ptr %i.cd, i64 216    ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = getelementptr i8, ptr %i.cd, i64 112    ; 6 uses
  %i.co = load i32, ptr %i.cn, align 8            ; 4 uses
  %i.cp = load i32, ptr %i.x, align 8
  %i.cq = add i32 %i.cp, %i.co
  %i.cr = icmp ugt i32 %i.cq, %.1124.i
  br i1 %i.cr, label %ieee80211_amsdu_aggregate.exit.thread90, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val158.i = load i32, ptr %i.an, align 8
  %.val159.i = load ptr, ptr %i.ao, align 8
  %i.cs = zext i32 %.val158.i to i64
  %i.ct = getelementptr i8, ptr %.val159.i, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ct, i64 2
  %i.cv = load i8, ptr %i.cu, align 2
  %i.cw = zext i8 %i.cv to i32
  %i.cx = getelementptr i8, ptr %i.ci, i64 2
  %i.cy = load i8, ptr %i.cx, align 2
  %i.cz = zext i8 %i.cy to i32
  %i.da = add nuw nsw i32 %i.cw, 2
  %i.db = add nuw nsw i32 %i.da, %i.cz            ; 2 uses
  %i.dc = getelementptr i8, ptr %i.ci, i64 8      ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not141176.i = icmp eq ptr %i.dd, null
  br i1 %.not141176.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i
  %i.de = phi ptr [ %i.dp, %.lr.ph.i ], [ %i.dd, %bb.n ] ; 4 uses
  %.0120178.i = phi i32 [ %i.dn, %.lr.ph.i ], [ %i.db, %bb.n ]
  %.0121177.i = phi i32 [ %i.do, %.lr.ph.i ], [ 2, %bb.n ]
  %i.df = getelementptr i8, ptr %i.de, i64 192
  %.val152.i = load i32, ptr %i.df, align 8
  %i.dg = getelementptr i8, ptr %i.de, i64 200
  %.val153.i = load ptr, ptr %i.dg, align 8
  %i.dh = zext i32 %.val152.i to i64
  %i.di = getelementptr i8, ptr %.val153.i, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 2
  %i.dk = load i8, ptr %i.dj, align 2
  %i.dl = zext i8 %i.dk to i32
  %i.dm = add i32 %.0120178.i, 1
  %i.dn = add i32 %i.dm, %i.dl                    ; 2 uses
  %i.do = add i32 %.0121177.i, 1                  ; 2 uses
  %i.dp = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not141.i = icmp eq ptr %i.dp, null
  br i1 %.not141.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !98

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.n
  %.0125.lcssa.i = phi ptr [ %i.dc, %bb.n ], [ %i.de, %.lr.ph.i ]
  %.0121.lcssa.i = phi i32 [ 2, %bb.n ], [ %i.do, %.lr.ph.i ] ; 2 uses
  %.0120.lcssa.i = phi i32 [ %i.db, %bb.n ], [ %i.dn, %.lr.ph.i ]
  %.not142.i = icmp ne i8 %i.aa, 0
  %i.dq = zext i8 %i.aa to i32
  %i.dr = icmp sgt i32 %.0121.lcssa.i, %i.dq
  %or.cond148.i = select i1 %.not142.i, i1 %i.dr, i1 false
  br i1 %or.cond148.i, label %ieee80211_amsdu_aggregate.exit.thread90, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i
  %.not143.i = icmp ne i8 %i.ac, 0
  %i.ds = icmp sgt i32 %.0120.lcssa.i, %i.ad
  %or.cond149.i = select i1 %.not143.i, i1 %i.ds, i1 false
  br i1 %or.cond149.i, label %ieee80211_amsdu_aggregate.exit.thread90, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dt = getelementptr i8, ptr %i.o, i64 464
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr i8, ptr %i.du, i64 808
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  %.not.i165.i = icmp eq ptr %i.dw, null
  br i1 %.not.i165.i, label %drv_can_aggregate_in_amsdu.exit.thread.i, label %drv_can_aggregate_in_amsdu.exit.i

drv_can_aggregate_in_amsdu.exit.i:                ; preds = %bb.p
  %i.dx = tail call zeroext i1 %i.dw(ptr noundef %i.o, ptr noundef nonnull %i.cd, ptr noundef nonnull %.0.i87) #16, !inline_history !99
  br i1 %i.dx, label %drv_can_aggregate_in_amsdu.exit.thread.i, label %ieee80211_amsdu_aggregate.exit.thread90

drv_can_aggregate_in_amsdu.exit.thread.i:         ; preds = %drv_can_aggregate_in_amsdu.exit.i, %bb.p
  %i.dy = tail call fastcc zeroext i1 @ieee80211_amsdu_prepare_head(ptr noundef readonly %0, ptr noundef readonly %2, ptr noundef %i.cd) #18, !srcloc !101
  br i1 %i.dy, label %bb.q, label %ieee80211_amsdu_aggregate.exit.thread90

bb.q:                                             ; preds = %drv_can_aggregate_in_amsdu.exit.thread.i
  %i.dz = icmp eq i32 %.0121.lcssa.i, 2
  br i1 %i.dz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.val.i = load i32, ptr %i.cf, align 8
  %.val151.i = load ptr, ptr %i.cg, align 8
  %i.ea = zext i32 %.val.i to i64
  %i.eb = getelementptr i8, ptr %.val151.i, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1126.i = phi ptr [ %i.ec, %bb.r ], [ %.0125.lcssa.i, %bb.q ]
  %i.ed = load i8, ptr %i.f, align 8
  %i.ee = xor i8 %i.ed, 2
  %i.ef = zext i8 %i.ee to i32
  %i.eg = load i32, ptr %i.cn, align 8
  %i.eh = sub i32 %i.eg, %i.ef
  %i.ei = and i32 %i.eh, 3                        ; 2 uses
  %.not145.i = icmp eq i32 %i.ei, 0
  %i.ej = sub nuw nsw i32 4, %i.ei
  %spec.select.i = select i1 %.not145.i, i32 0, i32 %i.ej ; 3 uses
  %i.ek = or disjoint i32 %spec.select.i, 8
  %i.el = tail call fastcc zeroext i1 @ieee80211_amsdu_realloc_pad(ptr noundef %i.o, ptr noundef nonnull %.0.i87, i32 noundef %i.ek) #18, !srcloc !102 ; 3 uses
  br i1 %i.el, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.em = zext nneg i32 %spec.select.i to i64
  %i.en = tail call ptr @skb_push(ptr noundef nonnull %.0.i87, i32 noundef 8) #16 ; 6 uses
  %i.eo = load i32, ptr %5, align 4
  store i32 %i.eo, ptr %i.en, align 4
  %i.ep = getelementptr i8, ptr %5, i64 4
  %i.eq = load i16, ptr %i.ep, align 4
  %i.er = getelementptr i8, ptr %i.en, i64 4
  store i16 %i.eq, ptr %i.er, align 4
  %i.es = getelementptr i8, ptr %i.en, i64 6
  %i.et = load i32, ptr %6, align 4
  store i32 %i.et, ptr %i.es, align 4
  %i.eu = getelementptr i8, ptr %6, i64 4
  %i.ev = load i16, ptr %i.eu, align 4
  %i.ew = getelementptr i8, ptr %i.en, i64 10
  store i16 %i.ev, ptr %i.ew, align 2
  %i.ex = getelementptr i8, ptr %i.en, i64 12
  %i.ey = trunc i32 %i.y to i16
  %i.ez = add i16 %i.ey, -6
  %i.fa = tail call i16 @llvm.bswap.i16(i16 %i.ez)
  store i16 %i.fa, ptr %i.ex, align 4
  %i.fb = getelementptr i8, ptr %i.en, i64 14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 dereferenceable(6) %i.fb, ptr noundef nonnull align 1 dereferenceable(6) @rfc1042_header, i64 6, i1 false)
  %i.fc = tail call ptr @skb_push(ptr noundef nonnull %.0.i87, i32 noundef %spec.select.i) #16
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fc, i8 0, i64 %i.em, i1 false)
  %i.fd = load i32, ptr %i.x, align 8
  %i.fe = load i32, ptr %i.cn, align 8
  %i.ff = add i32 %i.fe, %i.fd
  store i32 %i.ff, ptr %i.cn, align 8
  %i.fg = load i32, ptr %i.x, align 8
  %i.fh = getelementptr i8, ptr %i.cd, i64 116    ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = add i32 %i.fi, %i.fg
  store i32 %i.fj, ptr %i.fh, align 4
  store ptr %.0.i87, ptr %.1126.i, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fk = load i32, ptr %i.cl, align 8
  %i.fl = sub i32 %i.fk, %i.cm
end_hunk_0
begin_hunk_1_@__ieee80211_xmit_fast:bb.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc noundef zeroext i1 @ieee80211_queue_skb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 5072
  %i.b = load i32, ptr %i.a, align 8
  switch i32 %i.b, label %bb.c [
    i32 6, label %schedule_and_wake_txq.exit
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 2272
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 -2504
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.017 = phi ptr [ %i.e, %bb.b ], [ %1, %bb.a ]  ; 3 uses
  %i.f = getelementptr i8, ptr %.017, i64 5072
  %i.g = getelementptr i8, ptr %3, i64 208
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %3, i64 40
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = and i32 %i.j, 32
  %.not36.i = icmp eq i32 %i.k, 0
  br i1 %.not36.i, label %bb.d, label %schedule_and_wake_txq.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %3, i64 80         ; 3 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 2
  %.not37.i = icmp eq i32 %i.n, 0
  br i1 %.not37.i, label %bb.e, label %schedule_and_wake_txq.exit

bb.e:                                             ; preds = %bb.d
  %i.o = and i32 %i.j, 16384
  %.not38.i = icmp eq i32 %i.o, 0
  br i1 %.not38.i, label %bb.f, label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.p = load i16, ptr %i.h, align 2              ; 2 uses
  %i.q = and i16 %i.p, 76
  %i.r = icmp eq i16 %i.q, 8
  br i1 %i.r, label %bb.n, label %bb.g, !prof !18

bb.g:                                             ; preds = %bb.f
  %i.s = and i16 %i.p, 12
  %i.t = icmp eq i16 %i.s, 0
  br i1 %i.t, label %bb.h, label %.thread9.i

bb.h:                                             ; preds = %bb.g
  %i.u = tail call fastcc zeroext i1 @ieee80211_is_bufferable_mmpdu(ptr noundef readonly %3) #18, !srcloc !113
  br i1 %i.u, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load i32, ptr %i.f, align 8              ; 2 uses
  switch i32 %i.v, label %bb.j [
    i32 2, label %bb.k
    i32 12, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = icmp eq i32 %i.v, 13
  %i.x = icmp ne ptr %2, null
  %or.cond.i = and i1 %i.x, %i.w
  br i1 %or.cond.i, label %.thread7.i, label %schedule_and_wake_txq.exit

bb.k:                                             ; preds = %bb.i, %bb.i
  %.old1.not.i = icmp eq ptr %2, null
  br i1 %.old1.not.i, label %schedule_and_wake_txq.exit, label %bb.l

.thread:                                          ; preds = %bb.h
  %.old1.not.i47 = icmp eq ptr %2, null
  br i1 %.old1.not.i47, label %.thread2.i, label %bb.l

.thread9.i:                                       ; preds = %bb.g
  %.old1.not10.i = icmp eq ptr %2, null
  br i1 %.old1.not10.i, label %.thread2.i, label %.thread12.i

bb.l:                                             ; preds = %.thread, %bb.k
  %i.y = getelementptr i8, ptr %2, i64 204
  %i.z = load i8, ptr %i.y, align 4, !range !15, !noundef !16
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.m, label %schedule_and_wake_txq.exit

.thread12.i:                                      ; preds = %.thread9.i
  %i.ab = getelementptr i8, ptr %2, i64 204
  %i.ac = load i8, ptr %i.ab, align 4, !range !15, !noundef !16
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.m, label %schedule_and_wake_txq.exit

.thread7.i:                                       ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %2, i64 204
  %i.af = load i8, ptr %i.ae, align 4, !range !15, !noundef !16
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.m, label %schedule_and_wake_txq.exit

bb.m:                                             ; preds = %.thread7.i, %.thread12.i, %bb.l
  %i.ah = getelementptr i8, ptr %2, i64 2960
  br label %bb.r

.thread2.i:                                       ; preds = %.thread, %.thread9.i
  %i.ai = getelementptr i8, ptr %.017, i64 7224
  br label %bb.r

bb.n:                                             ; preds = %bb.f, %bb.e
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr i8, ptr %2, i64 204
  %i.ak = load i8, ptr %i.aj, align 4, !range !15, !noundef !16
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.p, label %schedule_and_wake_txq.exit

bb.p:                                             ; preds = %bb.o
  %i.am = getelementptr i8, ptr %3, i64 144
  %i.an = load i32, ptr %i.am, align 8
  %i.ao = and i32 %i.an, 15
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %2, i64 2832
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %i.ap
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.as = getelementptr i8, ptr %.017, i64 7216
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread2.i, %bb.m
  %.1.in.i = phi ptr [ %i.ar, %bb.p ], [ %i.as, %bb.q ], [ %i.ah, %bb.m ], [ %i.ai, %.thread2.i ]
  %.1.i = load ptr, ptr %.1.in.i, align 8         ; 23 uses
  %.not40.i = icmp eq ptr %.1.i, null
  %i.at = getelementptr i8, ptr %.1.i, i64 -232   ; 5 uses
  %.not = icmp eq ptr %i.at, null
  %or.cond = or i1 %.not40.i, %.not
  br i1 %or.cond, label %schedule_and_wake_txq.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.au = tail call i64 @ktime_get() #16
  %i.av = lshr i64 %i.au, 10
  %i.aw = trunc i64 %i.av to i32
  %.not.i.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i.i, label %ieee80211_set_skb_enqueue_time.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.s, %.lr.ph.i.i
  %.014.sink.i.i = phi ptr [ %i.ax, %.lr.ph.i.i ], [ %3, %bb.s ] ; 2 uses
  %i.ax = load ptr, ptr %.014.sink.i.i, align 8   ; 2 uses
  %i.ay = getelementptr i8, ptr %.014.sink.i.i, i64 84
  store i32 %i.aw, ptr %i.ay, align 4
  %.not11.i.i = icmp eq ptr %i.ax, null
  br i1 %.not11.i.i, label %ieee80211_set_skb_enqueue_time.exit.i, label %.lr.ph.i.i, !llvm.loop !106

ieee80211_set_skb_enqueue_time.exit.i:            ; preds = %.lr.ph.i.i, %bb.s
  %i.az = getelementptr i8, ptr %0, i64 240       ; 2 uses
  tail call void @_raw_spin_lock_bh(ptr noundef %i.az) #16
  %i.ba = getelementptr i8, ptr %.1.i, i64 16
  %i.bb = load i8, ptr %i.ba, align 8
  %i.bc = icmp eq i8 %i.bb, 16
  br i1 %i.bc, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %ieee80211_set_skb_enqueue_time.exit.i
  %i.bd = load i32, ptr %i.l, align 8
  %i.be = or i32 %i.bd, 64
  store i32 %i.be, ptr %i.l, align 8
  %i.bf = getelementptr i8, ptr %.1.i, i64 -32
  %i.bg = getelementptr i8, ptr %.1.i, i64 -24    ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  store volatile ptr %i.bf, ptr %3, align 8
  %i.bi = getelementptr i8, ptr %3, i64 8
  store volatile ptr %i.bh, ptr %i.bi, align 8
  store volatile ptr %3, ptr %i.bg, align 8
  store volatile ptr %3, ptr %i.bh, align 8
  %i.bj = getelementptr i8, ptr %.1.i, i64 -16    ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = add i32 %i.bk, 1
  store volatile i32 %i.bl, ptr %i.bj, align 8
  br label %ieee80211_txq_enqueue.exit

bb.u:                                             ; preds = %ieee80211_set_skb_enqueue_time.exit.i
  %i.bm = getelementptr i8, ptr %0, i64 208       ; 3 uses
  %i.bn = getelementptr i8, ptr %3, i64 129
  %i.bo = load i32, ptr %i.bn, align 1
  %i.bp = and i32 %i.bo, 1536
  %or.cond.i.i.i = icmp eq i32 %i.bp, 0
  br i1 %or.cond.i.i.i, label %bb.v, label %fq_flow_idx.exit.i

bb.v:                                             ; preds = %bb.u
  tail call void @__skb_get_hash_net(ptr noundef null, ptr noundef %3) #16
  br label %fq_flow_idx.exit.i

fq_flow_idx.exit.i:                               ; preds = %bb.v, %bb.u
  %i.bq = getelementptr i8, ptr %3, i64 152
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = getelementptr i8, ptr %0, i64 244       ; 3 uses
  %i.bt = load i32, ptr %i.bs, align 4
  %4 = zext i32 %i.br to i64
  %5 = zext i32 %i.bt to i64
  %6 = mul nuw i64 %5, %4
  %7 = lshr i64 %6, 32                            ; 2 uses
  %8 = load ptr, ptr %i.bm, align 8
  %i.bu = getelementptr [56 x i8], ptr %8, i64 %7 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bv, null
  %.not12.i.i.i = icmp eq ptr %i.bv, %i.at
  %or.cond.i.i14.i = or i1 %.not.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %fq_flow_idx.exit.i
  %i.bw = getelementptr i8, ptr %.1.i, i64 -184   ; 2 uses
  %i.bx = getelementptr i8, ptr %.1.i, i64 -116   ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4
  %i.ca = getelementptr i8, ptr %0, i64 276       ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = add i32 %i.cb, 1
  store i32 %i.cc, ptr %i.ca, align 4
  %.pr.i.i.i = load ptr, ptr %i.bw, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %fq_flow_idx.exit.i
  %i.cd = phi ptr [ %.pr.i.i.i, %bb.w ], [ %i.bv, %fq_flow_idx.exit.i ]
  %.0.i.i.i = phi ptr [ %i.bw, %bb.w ], [ %i.bu, %fq_flow_idx.exit.i ] ; 9 uses
  %.not13.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not13.i.i.i, label %bb.y, label %fq_flow_classify.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.ce = getelementptr i8, ptr %.1.i, i64 -112   ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8
  br label %fq_flow_classify.exit.i.i

fq_flow_classify.exit.i.i:                        ; preds = %bb.y, %bb.x
  %i.ch = getelementptr i8, ptr %.0.i.i.i, i64 48 ; 3 uses
  %i.ci = load i32, ptr %i.ch, align 8
  %.not.i15.i = icmp eq i32 %i.ci, 0
  br i1 %.not.i15.i, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %fq_flow_classify.exit.i.i
  %i.cj = getelementptr i8, ptr %.1.i, i64 -184
  %.not62.i.i = icmp eq ptr %.0.i.i.i, %i.cj
  br i1 %.not62.i.i, label %bb.aa, label %._crit_edge10.i.i

._crit_edge10.i.i:                                ; preds = %bb.z
  %i.ck = getelementptr i8, ptr %0, i64 216
  %i.cl = load ptr, ptr %i.ck, align 8
  tail call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.cl, i64 range(i64 0, 4294967295) %7) #17, !srcloc !114
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.cm = getelementptr i8, ptr %.1.i, i64 -200   ; 5 uses
  %i.cn = load volatile ptr, ptr %i.cm, align 8
  %.not1.i.i = icmp eq ptr %i.cn, %i.cm
  br i1 %.not1.i.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.co = getelementptr i8, ptr %0, i64 224       ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  store ptr %i.cm, ptr %i.cq, align 8
  store ptr %i.cp, ptr %i.cm, align 8
  %i.cr = getelementptr i8, ptr %.1.i, i64 -192
  store ptr %i.co, ptr %i.cr, align 8
  store volatile ptr %i.cm, ptr %i.co, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge10.i.i, %fq_flow_classify.exit.i.i
  store ptr %i.at, ptr %.0.i.i.i, align 8
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i16.i

.lr.ph.i16.i:                                     ; preds = %bb.ac
  %i.cs = getelementptr i8, ptr %.1.i, i64 -128   ; 2 uses
  %i.ct = getelementptr i8, ptr %.1.i, i64 -124   ; 2 uses
  %i.cu = getelementptr i8, ptr %0, i64 256       ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 264       ; 2 uses
  %i.cw = getelementptr i8, ptr %.0.i.i.i, i64 24
  %i.cx = getelementptr i8, ptr %.0.i.i.i, i64 32 ; 2 uses
  %i.cy = getelementptr i8, ptr %.0.i.i.i, i64 40 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph.i16.i
  %.0594.i.i = phi ptr [ %3, %.lr.ph.i16.i ], [ %.0585.i.i, %bb.ad ] ; 8 uses
  %.0585.i.i = load ptr, ptr %.0594.i.i, align 8  ; 2 uses
  store ptr null, ptr %.0594.i.i, align 8
  %i.cz = getelementptr i8, ptr %.0594.i.i, i64 112 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = load i32, ptr %i.ch, align 8
  %i.dc = add i32 %i.db, %i.da
  store i32 %i.dc, ptr %i.ch, align 8
  %i.dd = load i32, ptr %i.cz, align 8
  %i.de = load i32, ptr %i.cs, align 8
  %i.df = add i32 %i.de, %i.dd
  store i32 %i.df, ptr %i.cs, align 8
  %i.dg = load i32, ptr %i.ct, align 4
  %i.dh = add i32 %i.dg, 1
  store i32 %i.dh, ptr %i.ct, align 4
  %i.di = getelementptr i8, ptr %.0594.i.i, i64 216
  %i.dj = load i32, ptr %i.di, align 8
  %i.dk = load i32, ptr %i.cu, align 8
  %i.dl = add i32 %i.dk, %i.dj
  store i32 %i.dl, ptr %i.cu, align 8
  %i.dm = load i32, ptr %i.cv, align 8
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.cv, align 8
  %i.do = load ptr, ptr %i.cx, align 8            ; 2 uses
  store volatile ptr %i.cw, ptr %.0594.i.i, align 8
  %i.dp = getelementptr i8, ptr %.0594.i.i, i64 8
  store volatile ptr %i.do, ptr %i.dp, align 8
  store volatile ptr %.0594.i.i, ptr %i.cx, align 8
  store volatile ptr %.0594.i.i, ptr %i.do, align 8
  %i.dq = load i32, ptr %i.cy, align 8
  %i.dr = add i32 %i.dq, 1
  store volatile i32 %i.dr, ptr %i.cy, align 8
  %.not69.i.i = icmp eq ptr %.0585.i.i, null
  br i1 %.not69.i.i, label %._crit_edge.i.i, label %bb.ad, !llvm.loop !107

._crit_edge.i.i:                                  ; preds = %bb.ad, %bb.ac
  %i.ds = getelementptr i8, ptr %.0.i.i.i, i64 8  ; 5 uses
  %i.dt = load volatile ptr, ptr %i.ds, align 8
  %.not2.i.i = icmp eq ptr %i.dt, %i.ds
  br i1 %.not2.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i.i
  %i.du = getelementptr i8, ptr %0, i64 260
  %i.dv = load i32, ptr %i.du, align 4
  %i.dw = getelementptr i8, ptr %.0.i.i.i, i64 52
  store i32 %i.dv, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %.1.i, i64 -224   ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  store ptr %i.ds, ptr %i.dx, align 8
  store ptr %i.at, ptr %i.ds, align 8
  %i.dz = getelementptr i8, ptr %.0.i.i.i, i64 16
  store ptr %i.dy, ptr %i.dz, align 8
  store volatile ptr %i.ds, ptr %i.dy, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %._crit_edge.i.i
  %i.ea = getelementptr i8, ptr %0, i64 256       ; 4 uses
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = getelementptr i8, ptr %0, i64 252       ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = icmp ugt i32 %i.eb, %i.ed               ; 2 uses
  %i.ef = getelementptr i8, ptr %0, i64 264       ; 4 uses
  %i.eg = getelementptr i8, ptr %0, i64 248       ; 2 uses
  %i.eh = load i32, ptr %i.ef, align 8
  %i.ei = load i32, ptr %i.eg, align 8
  %i.ej = icmp ugt i32 %i.eh, %i.ei
  %i.ek = select i1 %i.ej, i1 true, i1 %i.ee
  br i1 %i.ek, label %.lr.ph8.i.i, label %ieee80211_txq_enqueue.exit

.lr.ph8.i.i:                                      ; preds = %bb.af
  %i.el = getelementptr i8, ptr %0, i64 216       ; 2 uses
  %i.em = getelementptr i8, ptr %0, i64 224       ; 3 uses
  %i.en = getelementptr i8, ptr %0, i64 268       ; 2 uses
  %i.eo = getelementptr i8, ptr %0, i64 272       ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.aq, %.lr.ph8.i.i
  %.06.i.i = phi i1 [ %i.ee, %.lr.ph8.i.i ], [ %.1.i.i, %bb.aq ]
  %.pre.i.i.i = load i32, ptr %i.bs, align 4
  br label %find_next_bit.exit.i.i.i

find_next_bit.exit.i.i.i:                         ; preds = %bb.ag, %bb.ah
  %i.ep = phi i32 [ %.pre.i.i.i, %bb.ag ], [ %.pre43.i.i.i, %bb.ah ]
  %.031.i.i.i = phi i64 [ 0, %bb.ag ], [ %i.fb, %bb.ah ]
  %.027.i.i.i = phi i32 [ 0, %bb.ag ], [ %..027.i.i.i, %bb.ah ] ; 3 uses
  %.026.i.i.i = phi ptr [ null, %bb.ag ], [ %..026.i.i.i, %bb.ah ] ; 3 uses
  %sext.i.i.i = shl i64 %.031.i.i.i, 32
  %i.eq = ashr exact i64 %sext.i.i.i, 32
  %i.er = zext i32 %i.ep to i64
  %i.es = load ptr, ptr %i.el, align 8
  %i.et = tail call i64 @_find_next_bit(ptr noundef %i.es, i64 noundef range(i64 0, 4294967296) %i.er, i64 noundef range(i64 -2147483648, 2147483648) %i.eq) #16 ; 3 uses
  %.pre43.i.i.i = load i32, ptr %i.bs, align 4    ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = icmp ugt i32 %.pre43.i.i.i, %i.eu
  br i1 %i.ev, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %find_next_bit.exit.i.i.i
  %i.ew = load ptr, ptr %i.bm, align 8
  %sext36.i.i.i = shl i64 %i.et, 32
  %i.ex = ashr exact i64 %sext36.i.i.i, 32
  %i.ey = getelementptr [56 x i8], ptr %i.ew, i64 %i.ex ; 2 uses
  %i.ez = getelementptr i8, ptr %i.ey, i64 48
  %i.fa = load i32, ptr %i.ez, align 8            ; 2 uses
  %.not37.i.i.i = icmp ugt i32 %i.fa, %.027.i.i.i
  %..027.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.fa, i32 %.027.i.i.i)
  %..026.i.i.i = select i1 %.not37.i.i.i, ptr %i.ey, ptr %.026.i.i.i
  %i.fb = add i64 %i.et, 1
  br label %find_next_bit.exit.i.i.i, !llvm.loop !108

bb.ai:                                            ; preds = %find_next_bit.exit.i.i.i
  %.pn38.i.i.i = load ptr, ptr %i.em, align 8     ; 2 uses
  %.not39.i.i.i = icmp eq ptr %.pn38.i.i.i, %i.em
  br i1 %.not39.i.i.i, label %fq_find_fattest_flow.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ai, %.lr.ph.i.i.i
  %.pn42.i.i.i = phi ptr [ %.pn.i.i.i, %.lr.ph.i.i.i ], [ %.pn38.i.i.i, %bb.ai ] ; 3 uses
  %.241.i.i.i = phi ptr [ %.3.i.i.i, %.lr.ph.i.i.i ], [ %.026.i.i.i, %bb.ai ]
  %.22940.i.i.i = phi i32 [ %.330.i.i.i, %.lr.ph.i.i.i ], [ %.027.i.i.i, %bb.ai ] ; 2 uses
  %i.fc = getelementptr i8, ptr %.pn42.i.i.i, i64 64
  %i.fd = load i32, ptr %i.fc, align 8            ; 2 uses
  %.not35.i.i.i = icmp ugt i32 %i.fd, %.22940.i.i.i
  %i.fe = getelementptr i8, ptr %.pn42.i.i.i, i64 16
  %.330.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.fd, i32 %.22940.i.i.i)
  %.3.i.i.i = select i1 %.not35.i.i.i, ptr %i.fe, ptr %.241.i.i.i ; 2 uses
  %.pn.i.i.i = load ptr, ptr %.pn42.i.i.i, align 8 ; 2 uses
  %.not.i72.i.i = icmp eq ptr %.pn.i.i.i, %i.em
  br i1 %.not.i72.i.i, label %fq_find_fattest_flow.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !109

fq_find_fattest_flow.exit.i.i:                    ; preds = %.lr.ph.i.i.i, %bb.ai
  %.2.lcssa.i.i.i = phi ptr [ %.026.i.i.i, %bb.ai ], [ %.3.i.i.i, %.lr.ph.i.i.i ] ; 8 uses
  %.not67.i.i = icmp eq ptr %.2.lcssa.i.i.i, null
  br i1 %.not67.i.i, label %ieee80211_txq_enqueue.exit, label %bb.aj

bb.aj:                                            ; preds = %fq_find_fattest_flow.exit.i.i
  %i.ff = getelementptr i8, ptr %.2.lcssa.i.i.i, i64 24 ; 2 uses
  %i.fg = getelementptr i8, ptr %.2.lcssa.i.i.i, i64 40 ; 3 uses
  %.val.i.i.i = load i32, ptr %i.fg, align 8
  %i.fh = lshr i32 %.val.i.i.i, 1
  %i.fi = tail call i32 @llvm.umax.i32(i32 %i.fh, i32 1)
  %umax.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.fi, i32 32) ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %.028.i.i.i = phi i32 [ 0, %bb.aj ], [ %i.fx, %bb.al ] ; 2 uses
  %.026.i73.i.i = phi i32 [ 0, %bb.aj ], [ %i.fu, %bb.al ] ; 2 uses
  %.0.i74.i.i = phi i32 [ 0, %bb.aj ], [ %i.fr, %bb.al ] ; 2 uses
  %i.fj = load ptr, ptr %i.ff, align 8            ; 8 uses
  %i.fk = icmp eq ptr %i.fj, %i.ff
  %.not.i1.i.i.i = icmp eq ptr %i.fj, null
  %.not.i.i75.i.i = or i1 %i.fk, %.not.i1.i.i.i
  br i1 %.not.i.i75.i.i, label %__skb_dequeue.exit.thread.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fl = load i32, ptr %i.fg, align 8
  %i.fm = add i32 %i.fl, -1
  store volatile i32 %i.fm, ptr %i.fg, align 8
  %i.fn = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fj, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8            ; 2 uses
  %i.fq = getelementptr i8, ptr %i.fn, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i8 0, i64 16, i1 false)
  store volatile ptr %i.fp, ptr %i.fq, align 8
  store volatile ptr %i.fn, ptr %i.fp, align 8
  %i.fr = add nuw nsw i32 %.0.i74.i.i, 1          ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fj, i64 112
  %i.ft = load i32, ptr %i.fs, align 8
end_hunk_1
begin_hunk_2_@ieee80211_tx_dequeue:bb.a
bb.y:                                             ; preds = %bb.x, %bb.w
  %i.go = phi i32 [ %.pre.i.i.i, %bb.x ], [ %i.gk, %bb.w ] ; 4 uses
  %i.gp = load i32, ptr %i.bf, align 8
  %i.gq = sub i32 %i.gp, %i.go
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gs = load i32, ptr %i.ej, align 4
  %i.gt = load i32, ptr %i.bg, align 4
  %.not28.i.i.i = icmp ugt i32 %i.gs, %i.gt
  br i1 %.not28.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.gu = getelementptr i8, ptr %.0.i186203, i64 12
  store i32 0, ptr %i.gu, align 4
  br label %codel_should_drop.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.gv = getelementptr i8, ptr %.0.i186203, i64 12 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4            ; 2 uses
  %i.gx = icmp eq i32 %i.gw, 0
  br i1 %i.gx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.gy = load i32, ptr %i.bh, align 8
  %i.gz = add i32 %i.gy, %i.gg
  store i32 %i.gz, ptr %i.gv, align 4
  br label %codel_should_drop.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.ha = sub i32 %i.gg, %i.gw
  %i.hb = icmp sgt i32 %i.ha, 0
  br label %codel_should_drop.exit.i.i

codel_should_drop.exit.i.i:                       ; preds = %bb.ad, %bb.ac, %bb.aa
  %.024.i.i.i = phi i1 [ false, %bb.aa ], [ %i.hb, %bb.ad ], [ false, %bb.ac ] ; 2 uses
  %i.hc = getelementptr i8, ptr %.0.i186203, i64 8 ; 5 uses
  %i.hd = load i8, ptr %i.hc, align 4, !range !15, !noundef !16
  %i.he = trunc nuw i8 %i.hd to i1
  br i1 %i.he, label %bb.ae, label %bb.be

bb.ae:                                            ; preds = %codel_should_drop.exit.i.i
  br i1 %.024.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store volatile i8 0, ptr %i.hc, align 4
  br label %.critedge.thread.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.hf = getelementptr i8, ptr %.0.i186203, i64 16 ; 5 uses
  %i.hg = load i32, ptr %i.hf, align 4            ; 2 uses
  %i.hh = sub i32 %i.gg, %i.hg
  %i.hi = icmp sgt i32 %i.hh, -1
  br i1 %i.hi, label %.lr.ph.i.i, label %.critedge.thread.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.hj = getelementptr i8, ptr %.0.i186203, i64 10 ; 4 uses
  %i.hk = getelementptr i8, ptr %.0.i186203, i64 12 ; 2 uses
  %i.hl = ptrtoint ptr %.0.i186203 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.bd, %.lr.ph.i.i
  %i.hm = phi i32 [ %i.hg, %.lr.ph.i.i ], [ %i.nm, %bb.bd ]
  %.011541.i.i = phi ptr [ %i.el, %.lr.ph.i.i ], [ %i.la, %bb.bd ] ; 14 uses
  %i.hn = sub i32 %i.gg, %i.hm
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %bb.ai, label %.critedge..critedge.thread_crit_edge.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.hp = load i32, ptr %.0.i186203, align 4
  %i.hq = add i32 %i.hp, 1                        ; 2 uses
  store volatile i32 %i.hq, ptr %.0.i186203, align 4
  %i.hr = load i16, ptr %i.hj, align 2
  %i.hs = zext i16 %i.hr to i64
  %i.ht = shl nuw nsw i64 %i.hs, 16               ; 3 uses
  %i.hu = mul nuw i64 %i.ht, %i.ht
  %i.hv = lshr exact i64 %i.hu, 32
  %i.hw = zext i32 %i.hq to i64
  %i.hx = mul nuw i64 %i.hv, %i.hw
  %i.hy = sub i64 12884901888, %i.hx
  %i.hz = lshr i64 %i.hy, 2
  %i.ia = mul i64 %i.hz, %i.ht
  %i.ib = lshr i64 %i.ia, 47
  %i.ic = trunc i64 %i.ib to i16
  store i16 %i.ic, ptr %i.hj, align 2
  %i.id = load i8, ptr %i.bi, align 8, !range !15, !noundef !16
  %i.ie = trunc nuw i8 %i.id to i1
  br i1 %i.ie, label %bb.aj, label %INET_ECN_set_ce.exit.thread.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.if = getelementptr i8, ptr %.011541.i.i, i64 180
  %i.ig = load i16, ptr %i.if, align 4            ; 3 uses
  switch i16 %i.ig, label %skb_protocol.exit.i.i.i [
    i16 -22392, label %bb.ak
    i16 129, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.aj
  %i.ih = call i32 @__vlan_get_protocol_offset(ptr noundef nonnull %.011541.i.i, i16 noundef zeroext %i.ig, i32 noundef 0) #16
  %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i = trunc i32 %i.ih to i16
  br label %skb_protocol.exit.i.i.i

skb_protocol.exit.i.i.i:                          ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i.i.i, %bb.ak ], [ %i.ig, %bb.aj ]
  switch i16 %.0.i.i.i.i.i.i.i, label %INET_ECN_set_ce.exit.thread.i.i [
    i16 8, label %bb.al
    i16 -8826, label %bb.ao
  ]

bb.al:                                            ; preds = %skb_protocol.exit.i.i.i
  %i.ii = getelementptr i8, ptr %.011541.i.i, i64 184
  %.val10.i.i.i = load i16, ptr %i.ii, align 8
  %i.ij = getelementptr i8, ptr %.011541.i.i, i64 200
  %.val11.i.i.i = load ptr, ptr %i.ij, align 8    ; 2 uses
  %i.ik = zext i16 %.val10.i.i.i to i64
  %i.il = getelementptr i8, ptr %.val11.i.i.i, i64 %i.ik ; 4 uses
  %i.im = getelementptr i8, ptr %i.il, i64 20
  %i.in = getelementptr i8, ptr %.011541.i.i, i64 188
  %.val14.i.i.i = load i32, ptr %i.in, align 4
  %i.io = zext i32 %.val14.i.i.i to i64
  %i.ip = getelementptr i8, ptr %.val11.i.i.i, i64 %i.io
  %.not8.i.i.i = icmp ugt ptr %i.im, %i.ip
  br i1 %.not8.i.i.i, label %INET_ECN_set_ce.exit.thread.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.iq = getelementptr i8, ptr %i.il, i64 1
  %i.ir = load i8, ptr %i.iq, align 1             ; 2 uses
  %i.is = add i8 %i.ir, 1
  %i.it = and i8 %i.is, 3                         ; 3 uses
  %.not.i.i.i.i = icmp samesign ult i8 %i.it, 2
  br i1 %.not.i.i.i.i, label %INET_ECN_set_ce.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iu = getelementptr i8, ptr %i.il, i64 1
  %i.iv = zext nneg i8 %i.it to i16
  %i.iw = shl nuw nsw i16 %i.iv, 8
  %i.ix = add nuw nsw i16 %i.iw, -1025            ; 2 uses
  %i.iy = getelementptr i8, ptr %i.il, i64 10     ; 2 uses
  %i.iz = load i16, ptr %i.iy, align 2
  %i.ja = add i16 %i.iz, %i.ix                    ; 2 uses
  %i.jb = icmp ult i16 %i.ja, %i.ix
  %i.jc = zext i1 %i.jb to i16
  %i.jd = add i16 %i.ja, %i.jc
  store i16 %i.jd, ptr %i.iy, align 2
  %i.je = or i8 %i.ir, 3
  store i8 %i.je, ptr %i.iu, align 1
  br label %INET_ECN_set_ce.exit.thread4.i.i

bb.ao:                                            ; preds = %skb_protocol.exit.i.i.i
  %i.jf = getelementptr i8, ptr %.011541.i.i, i64 184
  %.val.i.i.i = load i16, ptr %i.jf, align 8
  %i.jg = getelementptr i8, ptr %.011541.i.i, i64 200
  %.val9.i.i.i = load ptr, ptr %i.jg, align 8     ; 2 uses
  %i.jh = zext i16 %.val.i.i.i to i64
  %i.ji = getelementptr i8, ptr %.val9.i.i.i, i64 %i.jh ; 4 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 40
  %i.jk = getelementptr i8, ptr %.011541.i.i, i64 188
  %.val12.i.i.i = load i32, ptr %i.jk, align 4
  %i.jl = zext i32 %.val12.i.i.i to i64
  %i.jm = getelementptr i8, ptr %.val9.i.i.i, i64 %i.jl
  %.not.i130.i.i = icmp ugt ptr %i.jj, %i.jm
  br i1 %.not.i130.i.i, label %INET_ECN_set_ce.exit.thread.i.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.val.i.i.i.i = load i16, ptr %i.ji, align 2
  %i.jn = and i16 %.val.i.i.i.i, 12288
  %.not.i20.i.i.i = icmp eq i16 %i.jn, 0
  br i1 %.not.i20.i.i.i, label %INET_ECN_set_ce.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jo = load i32, ptr %i.ji, align 4            ; 2 uses
  %i.jp = or i32 %i.jo, 12288                     ; 2 uses
  store i32 %i.jp, ptr %i.ji, align 4
  %i.jq = getelementptr i8, ptr %.011541.i.i, i64 128
  %i.jr = load i8, ptr %i.jq, align 8
  %i.js = and i8 %i.jr, 96
  %i.jt = icmp eq i8 %i.js, 64
  br i1 %i.jt, label %bb.ar, label %INET_ECN_set_ce.exit.thread4.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ju = getelementptr i8, ptr %.011541.i.i, i64 140 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4
  %i.jw = xor i32 %i.jo, -1
  %i.jx = call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.jv, i32 %i.jw) #24, !srcloc !133
  %i.jy = call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.jx, i32 %i.jp) #24, !srcloc !133
  store i32 %i.jy, ptr %i.ju, align 4
  br label %INET_ECN_set_ce.exit.thread4.i.i

INET_ECN_set_ce.exit.i.i:                         ; preds = %bb.am
  %.not122.i.i = icmp eq i8 %i.it, 1
  br i1 %.not122.i.i, label %INET_ECN_set_ce.exit.thread.i.i, label %INET_ECN_set_ce.exit.thread4.i.i

INET_ECN_set_ce.exit.thread4.i.i:                 ; preds = %INET_ECN_set_ce.exit.i.i, %bb.ar, %bb.aq, %bb.an
  %i.jz = load i32, ptr %i.bj, align 4
  %i.ka = add i32 %i.jz, 1
  store volatile i32 %i.ka, ptr %i.bj, align 4
  %i.kb = load i32, ptr %i.hf, align 4
  %i.kc = load i32, ptr %i.bh, align 8
  %i.kd = load i16, ptr %i.hj, align 2
  %3 = zext i16 %i.kd to i64
  %4 = zext i32 %i.kc to i64
  %5 = shl nuw nsw i64 %4, 16
  %6 = mul nuw i64 %5, %3
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.ke = add i32 %i.kb, %8
  store volatile i32 %i.ke, ptr %i.hf, align 4
  br label %.critedge..critedge.thread_crit_edge.i.i

INET_ECN_set_ce.exit.thread.i.i:                  ; preds = %INET_ECN_set_ce.exit.i.i, %bb.ap, %bb.ao, %bb.al, %skb_protocol.exit.i.i.i, %bb.ai
  %i.kf = getelementptr i8, ptr %.011541.i.i, i64 112
  %i.kg = load i32, ptr %i.kf, align 8
  %i.kh = load i32, ptr %i.bk, align 8
  %i.ki = add i32 %i.kh, %i.kg
  store i32 %i.ki, ptr %i.bk, align 8
  %i.kj = load ptr, ptr %1, align 8
  %i.kk = getelementptr i8, ptr %i.kj, i64 -3216
  %i.kl = load ptr, ptr %i.kk, align 8
  call void @ieee80211_free_txskb(ptr noundef %i.kl, ptr noundef nonnull %.011541.i.i) #16
  %i.km = load i32, ptr %i.bl, align 4
  %i.kn = add i32 %i.km, 1
  store i32 %i.kn, ptr %i.bl, align 4
  %i.ko = load ptr, ptr %1, align 8
  %i.kp = getelementptr i8, ptr %i.ko, i64 -3216
  %i.kq = load ptr, ptr %i.kp, align 8            ; 5 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 208    ; 2 uses
  br i1 %i.eg, label %bb.at, label %bb.as

bb.as:                                            ; preds = %INET_ECN_set_ce.exit.thread.i.i
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = getelementptr i8, ptr %i.kq, i64 280
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = ptrtoint ptr %i.ku to i64
  %i.kw = sub i64 %i.hl, %i.kv
  %i.kx = sdiv exact i64 %i.kw, 24
  %i.ky = getelementptr [56 x i8], ptr %i.ks, i64 %i.kx
  br label %bb.at

bb.at:                                            ; preds = %INET_ECN_set_ce.exit.thread.i.i, %bb.as
  %.0.i188 = phi ptr [ %i.ky, %bb.as ], [ %i.bb, %INET_ECN_set_ce.exit.thread.i.i ] ; 6 uses
  %i.kz = getelementptr i8, ptr %.0.i188, i64 24  ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8            ; 14 uses
  %i.lb = icmp eq ptr %i.la, %i.kz
  %.not.i9.i.i = icmp eq ptr %i.la, null
  %.not.i.i.i = or i1 %i.lb, %.not.i9.i.i
  br i1 %.not.i.i.i, label %.thread.sink.split.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.lc = getelementptr i8, ptr %.0.i188, i64 40  ; 2 uses
  %i.ld = load i32, ptr %i.lc, align 8
  %i.le = add i32 %i.ld, -1
  store volatile i32 %i.le, ptr %i.lc, align 8
  %i.lf = load ptr, ptr %i.la, align 8            ; 2 uses
  %i.lg = getelementptr i8, ptr %i.la, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8            ; 2 uses
  %i.li = getelementptr i8, ptr %i.lf, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, i8 0, i64 16, i1 false)
  store volatile ptr %i.lh, ptr %i.li, align 8
  store volatile ptr %i.lf, ptr %i.lh, align 8
  %i.lj = getelementptr i8, ptr %i.la, i64 112    ; 2 uses
  %.val.i.i = load i32, ptr %i.lj, align 8        ; 2 uses
  %i.lk = getelementptr i8, ptr %i.la, i64 216
  %.val8.i.i = load i32, ptr %i.lk, align 8
  %i.ll = load ptr, ptr %.0.i188, align 8         ; 5 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 104    ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 8
  %i.lo = sub i32 %i.ln, %.val.i.i
  store i32 %i.lo, ptr %i.lm, align 8
  %i.lp = getelementptr i8, ptr %i.ll, i64 108    ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4
  %i.lr = add i32 %i.lq, -1
  store i32 %i.lr, ptr %i.lp, align 4
  %i.ls = getelementptr i8, ptr %.0.i188, i64 48  ; 3 uses
  %i.lt = load i32, ptr %i.ls, align 8
  %i.lu = sub i32 %i.lt, %.val.i.i
  store i32 %i.lu, ptr %i.ls, align 8
  %i.lv = getelementptr i8, ptr %i.kq, i64 264    ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8
  %i.lx = add i32 %i.lw, -1
  store i32 %i.lx, ptr %i.lv, align 8
  %i.ly = getelementptr i8, ptr %i.kq, i64 256    ; 2 uses
  %i.lz = load i32, ptr %i.ly, align 8
  %i.ma = sub i32 %i.lz, %.val8.i.i
  store i32 %i.ma, ptr %i.ly, align 8
  %i.mb = load i32, ptr %i.ls, align 8
  %.not.i.i.i.i189 = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i.i.i189, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.mc = getelementptr i8, ptr %i.ll, i64 48
  %i.md = icmp eq ptr %.0.i188, %i.mc
  br i1 %i.md, label %bb.aw, label %._crit_edge.i.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.me = getelementptr i8, ptr %i.ll, i64 32     ; 4 uses
  %i.mf = getelementptr i8, ptr %i.ll, i64 40     ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8            ; 2 uses
  %i.mh = load ptr, ptr %i.me, align 8            ; 2 uses
  %i.mi = getelementptr i8, ptr %i.mh, i64 8
  store ptr %i.mg, ptr %i.mi, align 8
  store volatile ptr %i.mh, ptr %i.mg, align 8
  store volatile ptr %i.me, ptr %i.me, align 8
  store volatile ptr %i.me, ptr %i.mf, align 8
  br label %bb.ax

._crit_edge.i.i.i.i:                              ; preds = %bb.av
  %i.mj = getelementptr i8, ptr %i.kq, i64 216
  %i.mk = load ptr, ptr %i.mj, align 8
  %i.ml = ptrtoint ptr %.0.i188 to i64
  %i.mm = load ptr, ptr %i.kr, align 8
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = sub i64 %i.ml, %i.mn
  %i.mp = sdiv exact i64 %i.mo, 56
  %sext.i.i.i.i = shl i64 %i.mp, 32
  %i.mq = ashr exact i64 %sext.i.i.i.i, 32
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.mk, i64 range(i64 -2147483648, 2147483648) %i.mq) #17, !srcloc !20
  br label %bb.ax

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i, %bb.au, %bb.aw
  %i.mr = load i32, ptr %i.lj, align 8            ; 2 uses
  %i.ms = getelementptr i8, ptr %i.la, i64 84
  %i.mt = load i32, ptr %i.ms, align 4
  %i.mu = sub i32 %i.gg, %i.mt                    ; 2 uses
  store volatile i32 %i.mu, ptr %i.gl, align 4
  %i.mv = load i32, ptr %i.be, align 8
  %i.mw = icmp ugt i32 %i.mr, %i.mv
  br i1 %i.mw, label %bb.ay, label %bb.az, !prof !17

bb.ay:                                            ; preds = %bb.ax
  store volatile i32 %i.mr, ptr %i.be, align 8
  %.pre.i134.i.i = load i32, ptr %i.gl, align 4
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.mx = phi i32 [ %.pre.i134.i.i, %bb.ay ], [ %i.mu, %bb.ax ]
  %i.my = load i32, ptr %i.bf, align 8
  %i.mz = sub i32 %i.my, %i.mx
  %i.na = icmp sgt i32 %i.mz, 0
  br i1 %i.na, label %.thread.sink.split.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nb = load i32, ptr %i.ej, align 4
  %i.nc = load i32, ptr %i.bg, align 4
  %.not28.i132.i.i = icmp ugt i32 %i.nb, %i.nc
  br i1 %.not28.i132.i.i, label %bb.bb, label %.thread.sink.split.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.nd = load i32, ptr %i.hk, align 4            ; 2 uses
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.bc, label %codel_should_drop.exit135.i.i

bb.bc:                                            ; preds = %bb.bb
  %i.nf = load i32, ptr %i.bh, align 8
  %i.ng = add i32 %i.nf, %i.gg
  br label %.thread.sink.split.i.i

codel_should_drop.exit135.i.i:                    ; preds = %bb.bb
  %i.nh = sub i32 %i.gg, %i.nd
  %i.ni = icmp sgt i32 %i.nh, 0
  br i1 %i.ni, label %bb.bd, label %.thread.i.i

.thread.sink.split.i.i:                           ; preds = %bb.at, %bb.ba, %bb.az, %bb.bc
  %.0.i.i213 = phi ptr [ %i.la, %bb.bc ], [ null, %bb.at ], [ %i.la, %bb.az ], [ %i.la, %bb.ba ]
  %.sink.i.i = phi i32 [ %i.ng, %bb.bc ], [ 0, %bb.az ], [ 0, %bb.ba ], [ 0, %bb.at ]
  store i32 %.sink.i.i, ptr %i.hk, align 4
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %codel_should_drop.exit135.i.i, %.thread.sink.split.i.i
  %.0.i.i212 = phi ptr [ %.0.i.i213, %.thread.sink.split.i.i ], [ %i.la, %codel_should_drop.exit135.i.i ]
  store volatile i8 0, ptr %i.hc, align 4
  br label %.critedge.i.i

bb.bd:                                            ; preds = %codel_should_drop.exit135.i.i
  %i.nj = load i32, ptr %i.hf, align 4
  %i.nk = load i32, ptr %i.bh, align 8
  %i.nl = load i16, ptr %i.hj, align 2
  %9 = zext i16 %i.nl to i64
  %10 = zext i32 %i.nk to i64
  %11 = shl nuw nsw i64 %10, 16
  %12 = mul nuw i64 %11, %9
  %13 = lshr i64 %12, 32
  %14 = trunc nuw i64 %13 to i32
  %i.nm = add i32 %i.nj, %14                      ; 2 uses
  store volatile i32 %i.nm, ptr %i.hf, align 4
  %.pre.i.i = load i8, ptr %i.hc, align 4, !range !15
  %i.nn = trunc nuw i8 %.pre.i.i to i1
  br i1 %i.nn, label %bb.ah, label %.critedge..critedge.thread_crit_edge.i.i, !llvm.loop !127

bb.be:                                            ; preds = %codel_should_drop.exit.i.i
  br i1 %.024.i.i.i, label %bb.bf, label %.critedge.thread.i.i

bb.bf:                                            ; preds = %bb.be
  %i.no = load i8, ptr %i.bi, align 8, !range !15, !noundef !16
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.bg, label %INET_ECN_set_ce.exit151.thread.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.nq = getelementptr i8, ptr %i.el, i64 180
  %i.nr = load i16, ptr %i.nq, align 4            ; 3 uses
  switch i16 %i.nr, label %skb_protocol.exit.i137.i.i [
    i16 -22392, label %bb.bh
    i16 129, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  %i.ns = call i32 @__vlan_get_protocol_offset(ptr noundef nonnull %i.el, i16 noundef zeroext %i.nr, i32 noundef 0) #16
  %.sroa.04.0.extract.trunc.i.i.i.i.i136.i.i = trunc i32 %i.ns to i16
  br label %skb_protocol.exit.i137.i.i

skb_protocol.exit.i137.i.i:                       ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i138.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i136.i.i, %bb.bh ], [ %i.nr, %bb.bg ]
  switch i16 %.0.i.i.i.i.i138.i.i, label %INET_ECN_set_ce.exit151.thread.i.i [
    i16 8, label %bb.bi
    i16 -8826, label %bb.bl
  ]

bb.bi:                                            ; preds = %skb_protocol.exit.i137.i.i
  %i.nt = getelementptr i8, ptr %i.el, i64 184
  %.val10.i146.i.i = load i16, ptr %i.nt, align 8
  %i.nu = getelementptr i8, ptr %i.el, i64 200
  %.val11.i147.i.i = load ptr, ptr %i.nu, align 8 ; 2 uses
  %i.nv = zext i16 %.val10.i146.i.i to i64
  %i.nw = getelementptr i8, ptr %.val11.i147.i.i, i64 %i.nv ; 3 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 20
  %i.ny = getelementptr i8, ptr %i.el, i64 188
  %.val14.i148.i.i = load i32, ptr %i.ny, align 4
  %i.nz = zext i32 %.val14.i148.i.i to i64
  %i.oa = getelementptr i8, ptr %.val11.i147.i.i, i64 %i.nz
  %.not8.i149.i.i = icmp ugt ptr %i.nx, %i.oa
  br i1 %.not8.i149.i.i, label %INET_ECN_set_ce.exit151.thread.i.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ob = getelementptr i8, ptr %i.nw, i64 1      ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1             ; 2 uses
  %i.od = add i8 %i.oc, 1
  %i.oe = and i8 %i.od, 3                         ; 3 uses
  %.not.i.i150.i.i = icmp samesign ult i8 %i.oe, 2
  br i1 %.not.i.i150.i.i, label %INET_ECN_set_ce.exit151.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.of = zext nneg i8 %i.oe to i16
  %i.og = shl nuw nsw i16 %i.of, 8
  %i.oh = add nuw nsw i16 %i.og, -1025            ; 2 uses
  %i.oi = getelementptr i8, ptr %i.nw, i64 10     ; 2 uses
  %i.oj = load i16, ptr %i.oi, align 2
  %i.ok = add i16 %i.oj, %i.oh                    ; 2 uses
  %i.ol = icmp ult i16 %i.ok, %i.oh
  %i.om = zext i1 %i.ol to i16
  %i.on = add i16 %i.ok, %i.om
  store i16 %i.on, ptr %i.oi, align 2
  %i.oo = or i8 %i.oc, 3
  store i8 %i.oo, ptr %i.ob, align 1
  br label %INET_ECN_set_ce.exit151.thread11.i.i

bb.bl:                                            ; preds = %skb_protocol.exit.i137.i.i
  %i.op = getelementptr i8, ptr %i.el, i64 184
  %.val.i139.i.i = load i16, ptr %i.op, align 8
  %i.oq = getelementptr i8, ptr %i.el, i64 200
  %.val9.i140.i.i = load ptr, ptr %i.oq, align 8  ; 2 uses
  %i.or = zext i16 %.val.i139.i.i to i64
  %i.os = getelementptr i8, ptr %.val9.i140.i.i, i64 %i.or ; 4 uses
  %i.ot = getelementptr i8, ptr %i.os, i64 40
  %i.ou = getelementptr i8, ptr %i.el, i64 188
  %.val12.i141.i.i = load i32, ptr %i.ou, align 4
  %i.ov = zext i32 %.val12.i141.i.i to i64
  %i.ow = getelementptr i8, ptr %.val9.i140.i.i, i64 %i.ov
  %.not.i142.i.i = icmp ugt ptr %i.ot, %i.ow
  br i1 %.not.i142.i.i, label %INET_ECN_set_ce.exit151.thread.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %.val.i.i143.i.i = load i16, ptr %i.os, align 2
  %i.ox = and i16 %.val.i.i143.i.i, 12288
  %.not.i20.i144.i.i = icmp eq i16 %i.ox, 0
  br i1 %.not.i20.i144.i.i, label %INET_ECN_set_ce.exit151.thread.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.oy = load i32, ptr %i.os, align 4            ; 2 uses
  %i.oz = or i32 %i.oy, 12288                     ; 2 uses
  store i32 %i.oz, ptr %i.os, align 4
  %i.pa = getelementptr i8, ptr %i.el, i64 128
  %i.pb = load i8, ptr %i.pa, align 8
  %i.pc = and i8 %i.pb, 96
  %i.pd = icmp eq i8 %i.pc, 64
  br i1 %i.pd, label %bb.bo, label %INET_ECN_set_ce.exit151.thread11.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.pe = getelementptr i8, ptr %i.el, i64 140    ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 4
  %i.pg = xor i32 %i.oy, -1
  %i.ph = call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.pf, i32 %i.pg) #24, !srcloc !133
  %i.pi = call i32 asm "addl $2,$0\0A\09adcl $$0,$0", "=r,0,rm,~{dirflag},~{fpsr},~{flags}"(i32 %i.ph, i32 %i.oz) #24, !srcloc !133
  store i32 %i.pi, ptr %i.pe, align 4
  br label %INET_ECN_set_ce.exit151.thread11.i.i

INET_ECN_set_ce.exit151.i.i:                      ; preds = %bb.bj
  %.not121.i.i = icmp eq i8 %i.oe, 1
  br i1 %.not121.i.i, label %INET_ECN_set_ce.exit151.thread.i.i, label %INET_ECN_set_ce.exit151.thread11.i.i

INET_ECN_set_ce.exit151.thread11.i.i:             ; preds = %INET_ECN_set_ce.exit151.i.i, %bb.bo, %bb.bn, %bb.bk
  %i.pj = load i32, ptr %i.bj, align 4
  %i.pk = add i32 %i.pj, 1
  store volatile i32 %i.pk, ptr %i.bj, align 4
  br label %codel_should_drop.exit156.i.i

INET_ECN_set_ce.exit151.thread.i.i:               ; preds = %INET_ECN_set_ce.exit151.i.i, %bb.bm, %bb.bl, %bb.bi, %skb_protocol.exit.i137.i.i, %bb.bf
  %i.pl = load i32, ptr %i.eu, align 8
  %i.pm = load i32, ptr %i.bk, align 8
  %i.pn = add i32 %i.pm, %i.pl
  store i32 %i.pn, ptr %i.bk, align 8
  %i.po = load ptr, ptr %1, align 8
  %i.pp = getelementptr i8, ptr %i.po, i64 -3216
  %i.pq = load ptr, ptr %i.pp, align 8
  call void @ieee80211_free_txskb(ptr noundef %i.pq, ptr noundef nonnull %i.el) #16
  %i.pr = load i32, ptr %i.bl, align 4
  %i.ps = add i32 %i.pr, 1
  store i32 %i.ps, ptr %i.bl, align 4
  %i.pt = call fastcc ptr @codel_dequeue_func(ptr noundef %.0.i186203, ptr noundef %i.a) #18 ; 6 uses
  %.not.i152.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i152.i.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %INET_ECN_set_ce.exit151.thread.i.i
  %i.pu = getelementptr i8, ptr %.0.i186203, i64 12
  store i32 0, ptr %i.pu, align 4
  br label %codel_should_drop.exit156.i.i

bb.bq:                                            ; preds = %INET_ECN_set_ce.exit151.thread.i.i
  %i.pv = getelementptr i8, ptr %i.pt, i64 112
  %i.pw = load i32, ptr %i.pv, align 8            ; 2 uses
  %i.px = getelementptr i8, ptr %i.pt, i64 84
  %i.py = load i32, ptr %i.px, align 4
  %i.pz = sub i32 %i.gg, %i.py                    ; 2 uses
  store volatile i32 %i.pz, ptr %i.gl, align 4
  %i.qa = load i32, ptr %i.be, align 8
  %i.qb = icmp ugt i32 %i.pw, %i.qa
  br i1 %i.qb, label %bb.br, label %bb.bs, !prof !17

bb.br:                                            ; preds = %bb.bq
  store volatile i32 %i.pw, ptr %i.be, align 8
  %.pre.i155.i.i = load i32, ptr %i.gl, align 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.qc = phi i32 [ %.pre.i155.i.i, %bb.br ], [ %i.pz, %bb.bq ]
  %i.qd = load i32, ptr %i.bf, align 8
  %i.qe = sub i32 %i.qd, %i.qc
  %i.qf = icmp sgt i32 %i.qe, 0
  br i1 %i.qf, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qg = load i32, ptr %i.ej, align 4
  %i.qh = load i32, ptr %i.bg, align 4
  %.not28.i153.i.i = icmp ugt i32 %i.qg, %i.qh
  br i1 %.not28.i153.i.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.qi = getelementptr i8, ptr %.0.i186203, i64 12
  store i32 0, ptr %i.qi, align 4
  br label %codel_should_drop.exit156.i.i

bb.bv:                                            ; preds = %bb.bt
  %i.qj = getelementptr i8, ptr %.0.i186203, i64 12 ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %bb.bw, label %codel_should_drop.exit156.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.qm = load i32, ptr %i.bh, align 8
  %i.qn = add i32 %i.qm, %i.gg
  store i32 %i.qn, ptr %i.qj, align 4
  br label %codel_should_drop.exit156.i.i

codel_should_drop.exit156.i.i:                    ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bp, %INET_ECN_set_ce.exit151.thread11.i.i
  %.1.i.i = phi ptr [ %i.el, %INET_ECN_set_ce.exit151.thread11.i.i ], [ null, %bb.bp ], [ %i.pt, %bb.bu ], [ %i.pt, %bb.bw ], [ %i.pt, %bb.bv ]
  store volatile i8 1, ptr %i.hc, align 4
  %i.qo = load i32, ptr %.0.i186203, align 4
  %i.qp = getelementptr i8, ptr %.0.i186203, i64 4 ; 2 uses
  %i.qq = load i32, ptr %i.qp, align 4
  %i.qr = sub i32 %i.qo, %i.qq                    ; 4 uses
  %i.qs = icmp ugt i32 %i.qr, 1
  br i1 %i.qs, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %codel_should_drop.exit156.i.i
  %i.qt = load i32, ptr %i.bh, align 8
  %i.qu = shl i32 %i.qt, 4
  %i.qv = getelementptr i8, ptr %.0.i186203, i64 16
  %i.qw = load i32, ptr %i.qv, align 4
  %.neg.i.i = sub i32 %i.qw, %i.gg
  %i.qx = add i32 %.neg.i.i, %i.qu
  %i.qy = icmp sgt i32 %i.qx, 0
  br i1 %i.qy, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store volatile i32 %i.qr, ptr %.0.i186203, align 4
  %i.qz = getelementptr i8, ptr %.0.i186203, i64 10 ; 2 uses
  %i.ra = load i16, ptr %i.qz, align 2
  %i.rb = zext i16 %i.ra to i64
  %i.rc = shl nuw nsw i64 %i.rb, 16               ; 3 uses
  %i.rd = mul nuw i64 %i.rc, %i.rc
  %i.re = lshr exact i64 %i.rd, 32
  %i.rf = zext i32 %i.qr to i64
  %i.rg = mul nuw i64 %i.re, %i.rf
  %i.rh = sub i64 12884901888, %i.rg
  %i.ri = lshr i64 %i.rh, 2
  %i.rj = mul i64 %i.ri, %i.rc
  %i.rk = lshr i64 %i.rj, 47                      ; 2 uses
  %i.rl = trunc i64 %i.rk to i16
  store i16 %i.rl, ptr %i.qz, align 2
  %15 = shl nuw nsw i64 %i.rk, 16
  %16 = and i64 %15, 4294901760
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx, %codel_should_drop.exit156.i.i
  store volatile i32 1, ptr %.0.i186203, align 4
  %i.rm = getelementptr i8, ptr %.0.i186203, i64 10
  store i16 -1, ptr %i.rm, align 2
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %17 = phi i64 [ %16, %bb.by ], [ 4294901760, %bb.bz ]
  %i.rn = phi i32 [ %i.qr, %bb.by ], [ 1, %bb.bz ]
  store volatile i32 %i.rn, ptr %i.qp, align 4
  %i.ro = load i32, ptr %i.bh, align 8
  %18 = zext i32 %i.ro to i64
  %19 = mul nuw i64 %17, %18
  %20 = lshr i64 %19, 32
  %21 = trunc nuw i64 %20 to i32
  %i.rp = add i32 %21, %i.gg
  %i.rq = getelementptr i8, ptr %.0.i186203, i64 16
  store volatile i32 %i.rp, ptr %i.rq, align 4
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.ca, %.thread.i.i
  %.2.i.i = phi ptr [ %.0.i.i212, %.thread.i.i ], [ %.1.i.i, %bb.ca ] ; 2 uses
  %.not123.i.i = icmp eq ptr %.2.i.i, null
  br i1 %.not123.i.i, label %fq_tin_dequeue_func.exit, label %.critedge..critedge.thread_crit_edge.i.i

.critedge..critedge.thread_crit_edge.i.i:         ; preds = %.critedge.i.i, %bb.bd, %bb.ah, %INET_ECN_set_ce.exit.thread4.i.i
  %.276.i.i = phi ptr [ %.011541.i.i, %bb.ah ], [ %.011541.i.i, %INET_ECN_set_ce.exit.thread4.i.i ], [ %i.la, %bb.bd ], [ %.2.i.i, %.critedge.i.i ]
  %.pre54.i.i = load i32, ptr %i.gl, align 4
  br label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.be, %bb.ag, %.critedge..critedge.thread_crit_edge.i.i, %bb.af
  %i.rr = phi i32 [ %.pre54.i.i, %.critedge..critedge.thread_crit_edge.i.i ], [ %i.go, %bb.af ], [ %i.go, %bb.ag ], [ %i.go, %bb.be ]
  %.216.i.i = phi ptr [ %.276.i.i, %.critedge..critedge.thread_crit_edge.i.i ], [ %i.el, %bb.af ], [ %i.el, %bb.ag ], [ %i.el, %bb.be ] ; 26 uses
  %i.rs = load i32, ptr %i.bm, align 4
  %i.rt = sub i32 %i.rr, %i.rs
  %i.ru = icmp sgt i32 %i.rt, 0
  br i1 %i.ru, label %bb.cb, label %bb.ct

bb.cb:                                            ; preds = %.critedge.thread.i.i
  %i.rv = load i8, ptr %i.bn, align 2
  %.not124.i.i = icmp eq i8 %i.rv, 0
  br i1 %.not124.i.i, label %.critedge127.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.rw = getelementptr i8, ptr %.216.i.i, i64 180
  %i.rx = load i16, ptr %i.rw, align 4            ; 3 uses
  switch i16 %i.rx, label %skb_protocol.exit.i158.i.i [
    i16 -22392, label %bb.cd
    i16 129, label %bb.cd
  ]

bb.cd:                                            ; preds = %bb.cc, %bb.cc
  %i.ry = call i32 @__vlan_get_protocol_offset(ptr noundef nonnull %.216.i.i, i16 noundef zeroext %i.rx, i32 noundef 0) #16
  %.sroa.04.0.extract.trunc.i.i.i.i.i157.i.i = trunc i32 %i.ry to i16
  br label %skb_protocol.exit.i158.i.i

skb_protocol.exit.i158.i.i:                       ; preds = %bb.cd, %bb.cc
  %.0.i.i.i.i.i159.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i157.i.i, %bb.cd ], [ %i.rx, %bb.cc ]
  switch i16 %.0.i.i.i.i.i159.i.i, label %bb.ct [
    i16 8, label %bb.ce
    i16 -8826, label %bb.cg
  ]

bb.ce:                                            ; preds = %skb_protocol.exit.i158.i.i
  %i.rz = getelementptr i8, ptr %.216.i.i, i64 184 ; 2 uses
  %.val.i.i.i.i.i.i = load i16, ptr %i.rz, align 8
  %i.sa = getelementptr i8, ptr %.216.i.i, i64 200 ; 2 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.sa, align 8 ; 2 uses
  %i.sb = zext i16 %.val.i.i.i.i.i.i to i64       ; 2 uses
  %i.sc = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 %i.sb
  %i.sd = getelementptr i8, ptr %.216.i.i, i64 208
  %i.se = load ptr, ptr %i.sd, align 8
  %i.sf = ptrtoint ptr %i.sc to i64
  %i.sg = ptrtoint ptr %i.se to i64
  %i.sh = sub i64 %i.sf, %i.sg
  %i.si = trunc i64 %i.sh to i32
  %i.sj = add i32 %i.si, 20                       ; 3 uses
  %i.sk = getelementptr i8, ptr %.216.i.i, i64 112
  %.val3.i.i.i.i.i = load i32, ptr %i.sk, align 8 ; 2 uses
  %i.sl = getelementptr i8, ptr %.216.i.i, i64 116
  %.val4.i.i.i.i.i = load i32, ptr %i.sl, align 4
  %i.sm = sub i32 %.val3.i.i.i.i.i, %.val4.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i32 %i.sj, %i.sm
  br i1 %.not.i.i.i.i.i.i, label %bb.cf, label %pskb_network_may_pull.exit.thread21.i.i.i, !prof !17

bb.cf:                                            ; preds = %bb.ce
  %i.sn = icmp ugt i32 %i.sj, %.val3.i.i.i.i.i
  br i1 %i.sn, label %bb.ct, label %pskb_network_may_pull.exit.i.i.i, !prof !17

pskb_network_may_pull.exit.i.i.i:                 ; preds = %bb.cf
  %i.so = sub nuw i32 %i.sj, %i.sm
  %i.sp = call ptr @__pskb_pull_tail(ptr noundef nonnull %.216.i.i, i32 noundef %i.so) #16
  %.not9.i.i.i.not.i.i.i = icmp eq ptr %i.sp, null
  br i1 %.not9.i.i.i.not.i.i.i, label %bb.ct, label %pskb_network_may_pull.exit.pskb_network_may_pull.exit.thread21_crit_edge.i.i.i

pskb_network_may_pull.exit.pskb_network_may_pull.exit.thread21_crit_edge.i.i.i: ; preds = %pskb_network_may_pull.exit.i.i.i
  %.val.pre.i.i.i = load i16, ptr %i.rz, align 8
  %.val6.pre.i.i.i = load ptr, ptr %i.sa, align 8
  %.pre33.i.i.i = zext i16 %.val.pre.i.i.i to i64
  br label %pskb_network_may_pull.exit.thread21.i.i.i

pskb_network_may_pull.exit.thread21.i.i.i:        ; preds = %pskb_network_may_pull.exit.pskb_network_may_pull.exit.thread21_crit_edge.i.i.i, %bb.ce
  %.pre-phi34.i.i.i = phi i64 [ %.pre33.i.i.i, %pskb_network_may_pull.exit.pskb_network_may_pull.exit.thread21_crit_edge.i.i.i ], [ %i.sb, %bb.ce ]
  %.val6.i.i.i = phi ptr [ %.val6.pre.i.i.i, %pskb_network_may_pull.exit.pskb_network_may_pull.exit.thread21_crit_edge.i.i.i ], [ %.val2.i.i.i.i.i.i, %bb.ce ]
  %i.sq = getelementptr i8, ptr %.val6.i.i.i, i64 %.pre-phi34.i.i.i
  %i.sr = getelementptr i8, ptr %i.sq, i64 1
  %.val10.i163.i.i = load i8, ptr %i.sr, align 1
  %i.ss = zext i8 %.val10.i163.i.i to i32
  br label %skb_get_dsfield.exit.i.i

bb.cg:                                            ; preds = %skb_protocol.exit.i158.i.i
  %i.st = getelementptr i8, ptr %.216.i.i, i64 184 ; 2 uses
  %.val.i.i.i11.i.i.i = load i16, ptr %i.st, align 8
  %i.su = getelementptr i8, ptr %.216.i.i, i64 200 ; 2 uses
  %.val2.i.i.i12.i.i.i = load ptr, ptr %i.su, align 8 ; 2 uses
  %i.sv = zext i16 %.val.i.i.i11.i.i.i to i64     ; 2 uses
  %i.sw = getelementptr i8, ptr %.val2.i.i.i12.i.i.i, i64 %i.sv
  %i.sx = getelementptr i8, ptr %.216.i.i, i64 208
  %i.sy = load ptr, ptr %i.sx, align 8
  %i.sz = ptrtoint ptr %i.sw to i64
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = sub i64 %i.sz, %i.ta
  %i.tc = trunc i64 %i.tb to i32
  %i.td = add i32 %i.tc, 40                       ; 3 uses
  %i.te = getelementptr i8, ptr %.216.i.i, i64 112
  %.val3.i.i13.i.i.i = load i32, ptr %i.te, align 8 ; 2 uses
  %i.tf = getelementptr i8, ptr %.216.i.i, i64 116
  %.val4.i.i14.i.i.i = load i32, ptr %i.tf, align 4
  %i.tg = sub i32 %.val3.i.i13.i.i.i, %.val4.i.i14.i.i.i ; 2 uses
  %.not.i.i.i15.i.i.i = icmp ugt i32 %i.td, %i.tg
  br i1 %.not.i.i.i15.i.i.i, label %bb.ch, label %pskb_network_may_pull.exit18.thread26.i.i.i, !prof !17

bb.ch:                                            ; preds = %bb.cg
  %i.th = icmp ugt i32 %i.td, %.val3.i.i13.i.i.i
  br i1 %i.th, label %bb.ct, label %pskb_network_may_pull.exit18.i.i.i, !prof !17

pskb_network_may_pull.exit18.i.i.i:               ; preds = %bb.ch
  %i.ti = sub nuw i32 %i.td, %i.tg
  %i.tj = call ptr @__pskb_pull_tail(ptr noundef nonnull %.216.i.i, i32 noundef %i.ti) #16
  %.not9.i.i.i17.not.i.i.i = icmp eq ptr %i.tj, null
  br i1 %.not9.i.i.i17.not.i.i.i, label %bb.ct, label %pskb_network_may_pull.exit18.pskb_network_may_pull.exit18.thread26_crit_edge.i.i.i

pskb_network_may_pull.exit18.pskb_network_may_pull.exit18.thread26_crit_edge.i.i.i: ; preds = %pskb_network_may_pull.exit18.i.i.i
  %.val7.pre.i.i.i = load i16, ptr %i.st, align 8
  %.val8.pre.i.i.i = load ptr, ptr %i.su, align 8
  %.pre.i162.i.i = zext i16 %.val7.pre.i.i.i to i64
  br label %pskb_network_may_pull.exit18.thread26.i.i.i

pskb_network_may_pull.exit18.thread26.i.i.i:      ; preds = %pskb_network_may_pull.exit18.pskb_network_may_pull.exit18.thread26_crit_edge.i.i.i, %bb.cg
  %.pre-phi.i.i.i = phi i64 [ %.pre.i162.i.i, %pskb_network_may_pull.exit18.pskb_network_may_pull.exit18.thread26_crit_edge.i.i.i ], [ %i.sv, %bb.cg ]
  %.val8.i.i.i = phi ptr [ %.val8.pre.i.i.i, %pskb_network_may_pull.exit18.pskb_network_may_pull.exit18.thread26_crit_edge.i.i.i ], [ %.val2.i.i.i12.i.i.i, %bb.cg ]
  %i.tk = getelementptr i8, ptr %.val8.i.i.i, i64 %.pre-phi.i.i.i
  %.val9.i160.i.i = load i16, ptr %i.tk, align 2
  %i.tl = call i16 @llvm.bswap.i16(i16 %.val9.i160.i.i)
  %i.tm = lshr i16 %i.tl, 4
  %i.tn = zext nneg i16 %i.tm to i32
  br label %skb_get_dsfield.exit.i.i

skb_get_dsfield.exit.i.i:                         ; preds = %pskb_network_may_pull.exit18.thread26.i.i.i, %pskb_network_may_pull.exit.thread21.i.i.i
  %.0.i161.i.i = phi i32 [ %i.tn, %pskb_network_may_pull.exit18.thread26.i.i.i ], [ %i.ss, %pskb_network_may_pull.exit.thread21.i.i.i ]
  %i.to = load i8, ptr %i.bn, align 2
  %i.tp = zext i8 %i.to to i32
  %i.tq = and i32 %.0.i161.i.i, %i.tp
  %i.tr = load i8, ptr %i.bo, align 1
  %i.ts = zext i8 %i.tr to i32
  %i.tt = icmp eq i32 %i.tq, %i.ts
  br i1 %i.tt, label %.critedge127.i.i, label %bb.ct

.critedge127.i.i:                                 ; preds = %skb_get_dsfield.exit.i.i, %bb.cb
  %i.tu = getelementptr i8, ptr %.216.i.i, i64 180
  %i.tv = load i16, ptr %i.tu, align 4            ; 3 uses
  switch i16 %i.tv, label %skb_protocol.exit.i165.i.i [
    i16 -22392, label %bb.ci
    i16 129, label %bb.ci
  ]

bb.ci:                                            ; preds = %.critedge127.i.i, %.critedge127.i.i
  %i.tw = call i32 @__vlan_get_protocol_offset(ptr noundef nonnull %.216.i.i, i16 noundef zeroext %i.tv, i32 noundef 0) #16
  %.sroa.04.0.extract.trunc.i.i.i.i.i164.i.i = trunc i32 %i.tw to i16
  br label %skb_protocol.exit.i165.i.i

skb_protocol.exit.i165.i.i:                       ; preds = %bb.ci, %.critedge127.i.i
  %.0.i.i.i.i.i166.i.i = phi i16 [ %.sroa.04.0.extract.trunc.i.i.i.i.i164.i.i, %bb.ci ], [ %i.tv, %.critedge127.i.i ]
  switch i16 %.0.i.i.i.i.i166.i.i, label %bb.ct [
    i16 8, label %bb.cj
    i16 -8826, label %bb.cm
  ]

bb.cj:                                            ; preds = %skb_protocol.exit.i165.i.i
  %i.tx = getelementptr i8, ptr %.216.i.i, i64 184
  %.val10.i174.i.i = load i16, ptr %i.tx, align 8
  %i.ty = getelementptr i8, ptr %.216.i.i, i64 200
  %.val11.i175.i.i = load ptr, ptr %i.ty, align 8 ; 2 uses
  %i.tz = zext i16 %.val10.i174.i.i to i64
  %i.ua = getelementptr i8, ptr %.val11.i175.i.i, i64 %i.tz ; 3 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 20
  %i.uc = getelementptr i8, ptr %.216.i.i, i64 188
  %.val14.i176.i.i = load i32, ptr %i.uc, align 4
  %i.ud = zext i32 %.val14.i176.i.i to i64
  %i.ue = getelementptr i8, ptr %.val11.i175.i.i, i64 %i.ud
  %.not8.i177.i.i = icmp ugt ptr %i.ub, %i.ue
  br i1 %.not8.i177.i.i, label %bb.ct, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.uf = getelementptr i8, ptr %i.ua, i64 1      ; 2 uses
  %i.ug = load i8, ptr %i.uf, align 1             ; 2 uses
  %i.uh = add i8 %i.ug, 1
  %i.ui = and i8 %i.uh, 3                         ; 3 uses
  %.not.i.i178.i.i = icmp samesign ult i8 %i.ui, 2
  br i1 %.not.i.i178.i.i, label %INET_ECN_set_ce.exit179.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.uj = zext nneg i8 %i.ui to i16
  %i.uk = shl nuw nsw i16 %i.uj, 8
  %i.ul = add nuw nsw i16 %i.uk, -1025            ; 2 uses
  %i.um = getelementptr i8, ptr %i.ua, i64 10     ; 2 uses
end_hunk_2
begin_hunk_3_@__ieee80211_beacon_add_tim:bb.a
  %.not28.2.i = icmp eq i64 %i.cf, 0
  br i1 %.not28.2.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = load i8, ptr %i.bd, align 1
  %i.ch = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.cg, ptr %i.ch, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ci = and i64 %i.by, 8
  %.not28.3.i = icmp eq i64 %i.ci, 0
  br i1 %.not28.3.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cj = load i8, ptr %i.bg, align 1
  %i.ck = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.cj, ptr %i.ck, align 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cl = and i64 %i.by, 16
  %.not28.4.i = icmp eq i64 %i.cl, 0
  br i1 %.not28.4.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = load i8, ptr %i.bj, align 1
  %i.cn = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.cm, ptr %i.cn, align 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.co = and i64 %i.by, 32
  %.not28.5.i = icmp eq i64 %i.co, 0
  br i1 %.not28.5.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load i8, ptr %i.bm, align 1
  %i.cq = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.cp, ptr %i.cq, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cr = and i64 %i.by, 64
  %.not28.6.i = icmp eq i64 %i.cr, 0
  br i1 %.not28.6.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = load i8, ptr %i.bp, align 1
  %i.ct = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.cs, ptr %i.ct, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.not28.7.i = icmp sgt i8 %.126.7.i, -1
  br i1 %.not28.7.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load i8, ptr %i.bs, align 1
  %i.cv = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.cu, ptr %i.cv, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ab, %bb.aa, %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 25
  br i1 %exitcond.not.i, label %ieee80211_s1g_beacon_add_tim_pvb.exit, label %.preheader.i, !llvm.loop !322

.preheader:                                       ; preds = %bb.k, %bb.ad
  %indvars.iv.i37 = phi i64 [ %indvars.iv.next.i41.3, %bb.ad ], [ 0, %bb.k ] ; 7 uses
  %i.cw = getelementptr i8, ptr %1, i64 %indvars.iv.i37
  %i.cx = load i8, ptr %i.cw, align 1
  %.not.i38 = icmp eq i8 %i.cx, 0
  br i1 %.not.i38, label %.preheader.1, label %.loopexit.i39

.preheader.1:                                     ; preds = %.preheader
  %indvars.iv.next.i41 = or disjoint i64 %indvars.iv.i37, 1 ; 2 uses
  %i.cy = getelementptr i8, ptr %1, i64 %indvars.iv.next.i41
  %i.cz = load i8, ptr %i.cy, align 1
  %.not.i38.1 = icmp eq i8 %i.cz, 0
  br i1 %.not.i38.1, label %.preheader.2, label %.loopexit.i39

.preheader.2:                                     ; preds = %.preheader.1
  %indvars.iv.next.i41.1 = or disjoint i64 %indvars.iv.i37, 2 ; 2 uses
  %i.da = getelementptr i8, ptr %1, i64 %indvars.iv.next.i41.1
  %i.db = load i8, ptr %i.da, align 1
  %.not.i38.2 = icmp eq i8 %i.db, 0
  br i1 %.not.i38.2, label %bb.ac, label %.loopexit.i39

bb.ac:                                            ; preds = %.preheader.2
  %exitcond.not.i42.2 = icmp eq i64 %indvars.iv.i37, 248
  br i1 %exitcond.not.i42.2, label %.lr.ph.preheader.i, label %.preheader.3

.preheader.3:                                     ; preds = %bb.ac
  %indvars.iv.next.i41.2 = or disjoint i64 %indvars.iv.i37, 3 ; 2 uses
  %i.dc = getelementptr i8, ptr %1, i64 %indvars.iv.next.i41.2
  %i.dd = load i8, ptr %i.dc, align 1
  %.not.i38.3 = icmp eq i8 %i.dd, 0
  br i1 %.not.i38.3, label %bb.ad, label %.loopexit.i39

bb.ad:                                            ; preds = %.preheader.3
  %indvars.iv.next.i41.3 = add nuw nsw i64 %indvars.iv.i37, 4
  br label %.preheader

.loopexit.i39:                                    ; preds = %.preheader.3, %.preheader.2, %.preheader.1, %.preheader
  %indvars.iv.i37.lcssa = phi i64 [ %indvars.iv.i37, %.preheader ], [ %indvars.iv.next.i41, %.preheader.1 ], [ %indvars.iv.next.i41.1, %.preheader.2 ], [ %indvars.iv.next.i41.2, %.preheader.3 ]
  %i.de = trunc nuw nsw i64 %indvars.iv.i37.lcssa to i32
  %i.df = and i32 %i.de, 254                      ; 4 uses
  %.not2125.i = icmp samesign ugt i32 %i.df, 250
  br i1 %.not2125.i, label %ieee80211_beacon_add_tim_pvb.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.ac, %.loopexit.i39
  %.01933.i = phi i32 [ %i.df, %.loopexit.i39 ], [ 0, %bb.ac ] ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.preheader.i
  %.126.i = phi i32 [ %i.dj, %bb.ae ], [ 250, %.lr.ph.preheader.i ] ; 4 uses
  %i.dg = zext nneg i32 %.126.i to i64
  %i.dh = getelementptr i8, ptr %1, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1
  %.not22.i = icmp eq i8 %i.di, 0
  br i1 %.not22.i, label %bb.ae, label %ieee80211_beacon_add_tim_pvb.exit

bb.ae:                                            ; preds = %.lr.ph.i
  %i.dj = add nsw i32 %.126.i, -1
  %.not21.not.i = icmp samesign ugt i32 %.126.i, %.01933.i
  br i1 %.not21.not.i, label %.lr.ph.i, label %ieee80211_beacon_add_tim_pvb.exit, !llvm.loop !323

ieee80211_beacon_add_tim_pvb.exit:                ; preds = %.lr.ph.i, %bb.ae, %.loopexit.i39
  %.01934.i = phi i32 [ %i.df, %.loopexit.i39 ], [ %.01933.i, %bb.ae ], [ %.01933.i, %.lr.ph.i ] ; 3 uses
  %.0.i40 = phi i32 [ %i.df, %.loopexit.i39 ], [ %.126.i, %.lr.ph.i ], [ %.01933.i, %bb.ae ]
  %i.dk = zext i1 %.033 to i32
  %i.dl = or disjoint i32 %.01934.i, %i.dk
  %i.dm = trunc nuw i32 %i.dl to i8
  %i.dn = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.dm, ptr %i.dn, align 1
  %i.do = zext nneg i32 %.01934.i to i64
  %i.dp = getelementptr i8, ptr %1, i64 %i.do
  %i.dq = sub i32 %.0.i40, %.01934.i
  %i.dr = add i32 %i.dq, 1                        ; 2 uses
  %i.ds = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef %i.dr) #16
  %i.dt = zext i32 %i.dr to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ds, ptr readonly align 1 %i.dp, i64 %i.dt, i1 false)
  br label %ieee80211_s1g_beacon_add_tim_pvb.exit

bb.af:                                            ; preds = %bb.j
  br i1 %i.s, label %ieee80211_s1g_beacon_add_tim_pvb.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 %i.at, ptr %i.du, align 1
  %i.dv = tail call ptr @skb_put(ptr noundef nonnull %2, i32 noundef 1) #16
  store i8 0, ptr %i.dv, align 1
  br label %ieee80211_s1g_beacon_add_tim_pvb.exit

ieee80211_s1g_beacon_add_tim_pvb.exit:            ; preds = %.loopexit.i, %bb.af, %bb.ag, %ieee80211_beacon_add_tim_pvb.exit
  %i.dw = getelementptr i8, ptr %2, i64 188
  %.val = load i32, ptr %i.dw, align 4
  %i.dx = getelementptr i8, ptr %2, i64 200
  %.val35 = load ptr, ptr %i.dx, align 8
  %i.dy = zext i32 %.val to i64
  %i.dz = getelementptr i8, ptr %.val35, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.af, i64 2
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = getelementptr i8, ptr %i.af, i64 1
  store i8 %i.ee, ptr %i.ef, align 1
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ieee80211_get_vif_queues(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @ieee80211_wake_queues_by_reason(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(readwrite, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #4 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #5 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(none) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #11 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { fn_ret_thunk_extern inlinehint mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #15 = { nocallback nounwind }
attributes #16 = { noredzone nounwind "no-builtin-wcslen" }
attributes #17 = { nounwind }
attributes #18 = { noredzone "no-builtin-wcslen" }
attributes #19 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #20 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #21 = { nounwind memory(none) }
attributes #22 = { noredzone nounwind willreturn memory(none) "no-builtin-wcslen" }
attributes #23 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }
attributes #24 = { nounwind memory(read) }

!llvm.named.register.rsp = !{!4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !{!0, !19}
!1 = distinct !{!1, !19}
!2 = distinct !{!2, !19}
!3 = distinct !{!3, !19}
!4 = !{!"rsp"}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 8, !"cf-protection-branch", i32 1}
!7 = !{i32 4, !"function_return_thunk_extern", i32 1}
!8 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!9 = !{i32 1, !"Code Model", i32 2}
!10 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!11 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!12 = !{i32 1, !"override-stack-alignment", i32 8}
!13 = !{i32 4, !"SkipRaxSetup", i32 1}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{i64 2148155728}
!21 = !{i64 2163216238, i64 2163216108}
!22 = !{i64 2163216769, i64 2163217820, i64 2163217853, i64 2163217888, i64 2163217904, i64 2163218831, i64 2163218889, i64 2163218938, i64 2163218748, i64 2163217963, i64 2163217995, i64 2163218078}
!23 = !{i64 2163219244, i64 2163219115}
!24 = !{!"auto-init"}
!25 = !{i64 53197}
!26 = !{i64 53256}
!27 = !{i64 2148154545, i64 2148154584, i64 2148154605, i64 2148154642, i64 2148154665, i64 2148154536}
!28 = !{i64 57236}
!29 = !{i64 57784}
!30 = !{i64 2161410167, i64 2161410042}
!31 = !{i64 2161410690, i64 2161411166, i64 2161411199, i64 2161411234, i64 2161411250, i64 2161412091, i64 2161412149, i64 2161412198, i64 2161412008, i64 2161411309, i64 2161411341}
!32 = !{i64 2161397537, i64 2161397412}
!33 = !{i64 2161398060, i64 2161398536, i64 2161398569, i64 2161398604, i64 2161398620, i64 2161399461, i64 2161399519, i64 2161399568, i64 2161399378, i64 2161398679, i64 2161398711}
!34 = !{i64 2148213377, i64 2148213406, i64 2148213412, i64 2148213428, i64 2148213444, i64 2148213471, i64 2148213571, i64 2148213650, i64 2148213764, i64 2148213812, i64 2148213860, i64 2148213924, i64 2148213981, i64 2148214033, i64 2148214159, i64 2148214396, i64 2148214245, i64 2148214276, i64 2148214282, i64 2148214298, i64 2148214314}
!35 = !{i64 662044}
!36 = !{i64 2148153233, i64 2148153272, i64 2148153293, i64 2148153330, i64 2148153353, i64 2148153224}
!37 = !{i64 2148771216, i64 2148771256, i64 2148771373, i64 2148771394, i64 2148771437, i64 2148771452, i64 2148771485, i64 2148771519, i64 2148771543}
!38 = !{i64 2159498720}
!39 = !{i64 2157407169}
!40 = !{!"branch_weights", i32 1, i32 4001}
!41 = !{!"branch_weights", !"expected", i32 1073203, i32 2146410445}
!42 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!43 = !{i64 2170667705, i64 2170667575}
!44 = !{i64 2170668236, i64 2170669307, i64 2170669340, i64 2170669375, i64 2170669391, i64 2170670318, i64 2170670376, i64 2170670425, i64 2170670235, i64 2170669450, i64 2170669482, i64 2170669565}
!45 = !{i64 2170670728, i64 2170670599}
!46 = !{i64 2150226644}
!47 = !{i64 2148675005}
!48 = !{i64 2150226432}
!49 = distinct !{!49, !19}
!50 = distinct !{!50, !19}
!51 = !{i64 2170279700, i64 2170279570}
!52 = !{i64 2170280231, i64 2170281310, i64 2170281343, i64 2170281378, i64 2170281394, i64 2170282321, i64 2170282379, i64 2170282428, i64 2170282238, i64 2170281453, i64 2170281485, i64 2170281568}
!53 = !{i64 2170282731, i64 2170282602}
!54 = !{i64 2163221978, i64 2163221848}
!55 = !{i64 2163222509, i64 2163223574, i64 2163223607, i64 2163223642, i64 2163223658, i64 2163224585, i64 2163224643, i64 2163224692, i64 2163224502, i64 2163223717, i64 2163223749, i64 2163223832}
!56 = !{i64 2163224998, i64 2163224869}
!57 = !{i64 2163226340, i64 2163226210}
!58 = !{i64 2163226871, i64 2163227927, i64 2163227960, i64 2163227995, i64 2163228011, i64 2163228938, i64 2163228996, i64 2163229045, i64 2163228855, i64 2163228070, i64 2163228102, i64 2163228185}
!59 = !{i64 2163229351, i64 2163229222}
!60 = !{i64 2163230699, i64 2163230569}
!61 = !{i64 2163231230, i64 2163232288, i64 2163232321, i64 2163232356, i64 2163232372, i64 2163233299, i64 2163233357, i64 2163233406, i64 2163233216, i64 2163232431, i64 2163232463, i64 2163232546}
!62 = !{i64 2163233712, i64 2163233583}
!63 = distinct !{!63, !19}
!64 = distinct !{!64, !19}
!65 = distinct !{!65, !19}
!66 = !{i64 53623}
!67 = !{!"branch_weights", i32 2000, i32 2002}
!68 = !{i64 2170314077, i64 2170313947}
!69 = !{i64 2170314608, i64 2170315687, i64 2170315720, i64 2170315755, i64 2170315771, i64 2170316698, i64 2170316756, i64 2170316805, i64 2170316615, i64 2170315830, i64 2170315862, i64 2170315945}
!70 = !{i64 2170317108, i64 2170316979}
!71 = !{i64 2148162494, i64 2148162533, i64 2148162554, i64 2148162591, i64 2148162614, i64 2148162623}
!72 = !{i64 54776}
!73 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!74 = !{i64 55237}
!75 = !{i64 55289}
!76 = !{i64 55362}
!77 = !{i64 55403}
!78 = distinct !{!78, !19}
!79 = distinct !{!79, !19}
!80 = !{i64 2161791179, i64 2161791054}
!81 = !{i64 2161791702, i64 2161792756, i64 2161792789, i64 2161792824, i64 2161792840, i64 2161793767, i64 2161793825, i64 2161793874, i64 2161793684, i64 2161792899, i64 2161792931, i64 2161793014}
!82 = !{i64 2161794177, i64 2161794053}
!83 = distinct !{!83, !19}
!84 = !{i64 2170435212, i64 2170435082}
!85 = !{i64 2170435743, i64 2170436786, i64 2170436819, i64 2170436854, i64 2170436870, i64 2170437797, i64 2170437855, i64 2170437904, i64 2170437714, i64 2170436929, i64 2170436961, i64 2170437044}
!86 = !{i64 2170438207, i64 2170438078}
!87 = !{i64 2170443539, i64 2170443409}
!88 = !{i64 2170444070, i64 2170445113, i64 2170445146, i64 2170445181, i64 2170445197, i64 2170446124, i64 2170446182, i64 2170446231, i64 2170446041, i64 2170445256, i64 2170445288, i64 2170445371}
!89 = !{i64 2170446534, i64 2170446405}
!90 = !{i64 2170456461, i64 2170456488, i64 2170456898, i64 2170456931, i64 2170456966, i64 2170456982, i64 2170457823, i64 2170457881, i64 2170457930, i64 2170457740, i64 2170457041, i64 2170457073}
!91 = !{i64 2170454770}
!92 = !{i64 2170458788, i64 2170458658}
!93 = !{i64 2170459319, i64 2170460363, i64 2170460396, i64 2170460431, i64 2170460447, i64 2170461374, i64 2170461432, i64 2170461481, i64 2170461291, i64 2170460506, i64 2170460538, i64 2170460621}
!94 = !{i64 2170461784, i64 2170461655}
!95 = !{i64 2170477475}
!96 = distinct !{!96, !19}
!97 = distinct !{!97, !19}
!98 = distinct !{!98, !19}
!99 = distinct !{null, null}
!100 = !{!"branch_weights", !"expected", i32 1073205, i32 2146410443}
!101 = !{i64 100344}
!102 = !{i64 101194}
!103 = !{i64 107077}
!104 = !{i64 107153}
!105 = !{i64 107492}
!106 = distinct !{!106, !19}
!107 = distinct !{!107, !19}
!108 = distinct !{!108, !19}
!109 = distinct !{!109, !19}
!110 = distinct !{!110, !19}
!111 = distinct !{!111, !19}
!112 = distinct !{null, null}
!113 = !{i64 38878}
!114 = !{i64 2148154171}
!115 = !{i64 2170019524, i64 2170019551, i64 2170019967, i64 2170020000, i64 2170020035, i64 2170020051, i64 2170020892, i64 2170020950, i64 2170020999, i64 2170020809, i64 2170020110, i64 2170020142}
!116 = !{i64 2170017721}
!117 = !{i64 2168157545}
!118 = !{i64 2148166477}
!119 = !{i64 2151727255}
!120 = !{i64 2151730557}
!121 = !{i64 2151730979}
!122 = !{i64 2151742761}
!123 = !{i64 102466}
!124 = !{i64 2149050729, i64 2149050768, i64 2149050789, i64 2149050826, i64 2149050849, i64 2149050858}
!125 = distinct !{null}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19}
!128 = !{i64 2148666233}
!129 = !{i64 2170546413, i64 2170546283}
!130 = !{i64 2170546944, i64 2170548002, i64 2170548035, i64 2170548070, i64 2170548086, i64 2170549013, i64 2170549071, i64 2170549120, i64 2170548930, i64 2170548145, i64 2170548177, i64 2170548260}
!131 = !{i64 2170549423, i64 2170549294}
!132 = !{!"branch_weights", i32 127, i32 1}
!133 = !{i64 8529836, i64 8529849}
!134 = !{!"branch_weights", i32 255873, i32 127}
!135 = !{i64 111636}
!136 = !{i64 111998}
!137 = !{i64 112439}
!138 = !{i64 112621}
!139 = distinct !{!139, !19}
!140 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!141 = !{i64 2170229219, i64 2170229246, i64 2170229735, i64 2170229768, i64 2170229803, i64 2170229819, i64 2170230660, i64 2170230718, i64 2170230767, i64 2170230577, i64 2170229878, i64 2170229910}
!142 = !{i64 2170227226}
!143 = !{i64 2170235426, i64 2170235296}
!144 = !{i64 2170235957, i64 2170237072, i64 2170237105, i64 2170237140, i64 2170237156, i64 2170238083, i64 2170238141, i64 2170238190, i64 2170238000, i64 2170237215, i64 2170237247, i64 2170237330}
!145 = !{i64 2170238492, i64 2170238363}
!146 = distinct !{!146, !19}
!147 = distinct !{!147, !19}
!148 = distinct !{!148, !19}
!149 = !{i64 2170311795}
!150 = !{i64 2170249218, i64 2170249088}
!151 = !{i64 2170249749, i64 2170250823, i64 2170250856, i64 2170250891, i64 2170250907, i64 2170251834, i64 2170251892, i64 2170251941, i64 2170251751, i64 2170250966, i64 2170250998, i64 2170251081}
!152 = !{i64 2170252243, i64 2170252114}
!153 = !{i64 2170253623, i64 2170253493}
!154 = !{i64 2170254154, i64 2170255228, i64 2170255261, i64 2170255296, i64 2170255312, i64 2170256239, i64 2170256297, i64 2170256346, i64 2170256156, i64 2170255371, i64 2170255403, i64 2170255486}
!155 = !{i64 2170256648, i64 2170256519}
!156 = !{i64 2170244672, i64 2170244542}
!157 = !{i64 2170245203, i64 2170246248, i64 2170246281, i64 2170246316, i64 2170246332, i64 2170247259, i64 2170247317, i64 2170247366, i64 2170247176, i64 2170246391, i64 2170246423, i64 2170246506}
!158 = !{i64 2170247668, i64 2170247539}
!159 = !{i64 2170312637}
!160 = !{!"branch_weights", i32 2146244584, i32 0, i32 1239064}
!161 = distinct !{!161, !19}
end_hunk_3
