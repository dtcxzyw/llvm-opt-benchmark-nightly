Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 196
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nameserver_read:bb.a
  %.2203353.i = phi i32 [ %i.hr, %bb.cb ], [ 0, %.lr.ph354.preheader.i ]
  %.6352.i = phi i32 [ %.9.i, %bb.cb ], [ %.5210416.i, %.lr.ph354.preheader.i ] ; 2 uses
  store i8 0, ptr %i.b, align 16
  %i.gf = call fastcc i32 @name_parse(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, -2147483648) %.fr, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 256), !inline_history !55
  %i.gg = icmp slt i32 %i.gf, 0
  br i1 %i.gg, label %.thread286.i, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph354.i
  %i.gh = load i32, ptr %i.a, align 4             ; 5 uses
  %i.gi = add nsw i32 %i.gh, 2                    ; 2 uses
  %i.gj = icmp sgt i32 %i.gi, %.fr
  br i1 %i.gj, label %.thread286.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gk = sext i32 %i.gh to i64
  %i.gl = getelementptr inbounds i8, ptr %i.f, i64 %i.gk
  %.0.copyload134.i = load i16, ptr %i.gl, align 1
  %i.gm = add nsw i32 %i.gh, 4                    ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, %.fr
  br i1 %i.gn, label %.thread286.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.go = sext i32 %i.gi to i64
  %i.gp = getelementptr inbounds i8, ptr %i.f, i64 %i.go
  %.0.copyload136.i = load i16, ptr %i.gp, align 1
  %i.gq = add nsw i32 %i.gh, 8                    ; 2 uses
  %i.gr = icmp sgt i32 %i.gq, %.fr
  br i1 %i.gr, label %.thread286.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gs = sext i32 %i.gm to i64
  %i.gt = getelementptr inbounds i8, ptr %i.f, i64 %i.gs
  %.0.copyload104.i = load i32, ptr %i.gt, align 1
  %i.gu = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload104.i)
  %i.gv = add nsw i32 %i.gh, 10                   ; 3 uses
  %i.gw = icmp sgt i32 %i.gv, %.fr
  br i1 %i.gw, label %.thread286.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gx = sext i32 %i.gq to i64
  %i.gy = getelementptr inbounds i8, ptr %i.f, i64 %i.gx
  %.0.copyload138.i = load i16, ptr %i.gy, align 1
  store i32 %i.gv, ptr %i.a, align 4
  %i.gz = icmp eq i16 %.0.copyload134.i, 1536
  %i.ha = icmp eq i16 %.0.copyload136.i, 256
  %or.cond16.i = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %or.cond16.i, label %bb.bu, label %bb.ca

bb.bu:                                            ; preds = %bb.bt
  store i8 0, ptr %i.b, align 16
  %i.hb = call fastcc i32 @name_parse(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, -2147483648) %.fr, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 256), !inline_history !55
  %i.hc = icmp slt i32 %i.hb, 0
  br i1 %i.hc, label %.thread286.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i8 0, ptr %i.b, align 16
  %i.hd = call fastcc i32 @name_parse(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, -2147483648) %.fr, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 256), !inline_history !55
  %i.he = icmp slt i32 %i.hd, 0
  br i1 %i.he, label %.thread286.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hf = load i32, ptr %i.a, align 4             ; 3 uses
  %or.cond447.i = icmp sgt i32 %i.hf, %invariant.op445.i
  br i1 %or.cond447.i, label %.thread286.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hg = add nsw i32 %i.hf, 16                   ; 2 uses
  %i.hh = icmp sgt i32 %i.hg, %.fr
  br i1 %i.hh, label %.thread286.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hi = add nsw i32 %i.hf, 20                   ; 2 uses
  %i.hj = icmp sgt i32 %i.hi, %.fr
  br i1 %i.hj, label %.thread286.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.hk = sext i32 %i.hg to i64
  %i.hl = getelementptr inbounds i8, ptr %i.f, i64 %i.hk
  %.0.copyload114.i = load i32, ptr %i.hl, align 1
  store i32 %i.hi, ptr %i.a, align 4
  %i.hm = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload114.i)
  %i.hn = call i32 @llvm.umin.i32(i32 %.6352.i, i32 %i.gu)
  %i.ho = call i32 @llvm.umin.i32(i32 %i.hn, i32 %i.hm)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bt
  %rev.i270.i = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload138.i)
  %i.hp = zext i16 %rev.i270.i to i32
  %i.hq = add nsw i32 %i.gv, %i.hp
  store i32 %i.hq, ptr %i.a, align 4
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.9.i = phi i32 [ %.6352.i, %bb.ca ], [ %i.ho, %bb.bz ] ; 2 uses
  %i.hr = add nuw nsw i32 %.2203353.i, 1          ; 2 uses
  %exitcond388.not.i = icmp eq i32 %i.hr, %i.ge
  br i1 %exitcond388.not.i, label %.loopexit.i, label %.lr.ph354.i, !llvm.loop !57

.loopexit.i:                                      ; preds = %bb.cb, %.loopexit326.i.thread, %.preheader.i, %.loopexit326.i
  %.10.i = phi i32 [ %.5210.i, %.loopexit326.i ], [ %.5210416.i, %.preheader.i ], [ %.4209.i.ph, %.loopexit326.i.thread ], [ %.9.i, %bb.cb ] ; 2 uses
  %i.hs = icmp eq i32 %.10.i, -1
  %spec.store.select.i = select i1 %i.hs, i32 0, i32 %.10.i
  call fastcc void @reply_handle(ptr noundef %.0.i.i, i16 noundef zeroext %rev.i260.i, i32 noundef %spec.store.select.i, ptr noundef nonnull %1), !inline_history !55
  br label %reply_parse.exit

.thread286.i.sink.split:                          ; preds = %bb.o, %bb.y, %select.unfold.i35, %bb.t, %bb.v, %bb.r, %bb.q, %bb.w
  store i32 %.259..3.i4698, ptr %i.a, align 4
  br label %.thread286.i

.thread286.i:                                     ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bs, %bb.br, %bb.bq, %bb.bp, %.lr.ph354.i, %.thread286.i.sink.split, %._crit_edge.i
  %.not252.i = icmp eq ptr %.0.i.i, null
  br i1 %.not252.i, label %reply_parse.exit, label %.thread312.i

.thread312.i.loopexit:                            ; preds = %bb.ah, %bb.ab, %bb.ac, %bb.ag, %bb.ae, %select.unfold.i
  store i32 %.259..3.i46, ptr %i.a, align 4
  br label %.thread312.i

.thread312.i.loopexit65:                          ; preds = %bb.an, %bb.aj, %bb.z
  %.259..3.i46100 = phi i32 [ %i.cu, %bb.an ], [ %.259..3.i46, %bb.aj ], [ %.259..3.i46, %bb.z ]
  store i32 %.259..3.i46100, ptr %i.a, align 4
  br label %.thread312.i

.thread312.i:                                     ; preds = %bb.aw, %bb.ax, %bb.bl, %bb.bm, %.thread312.i.loopexit65, %.thread312.i.loopexit, %.thread.i.thread53, %.thread286.i, %bb.bc, %bb.m, %bb.l
  call fastcc void @reply_handle(ptr noundef %.0.i.i, i16 noundef zeroext %rev.i260.i, i32 noundef 0, ptr noundef null), !inline_history !55
  br label %reply_parse.exit

reply_parse.exit:                                 ; preds = %bb.k, %.critedge, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %request_find_from_trans_id.exit.i, %.loopexit.i, %.thread286.i, %.thread312.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.ht = load i32, ptr %0, align 8
  %i.hu = call i64 @recvfrom(i32 noundef %i.ht, ptr noundef nonnull %i.f, i64 noundef 1500, i32 noundef 0, ptr nonnull %2, ptr noundef nonnull %i.e) #19
  %i.hv = trunc i64 %i.hu to i32                  ; 2 uses
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %._crit_edge, label %bb.c

bb.cc:                                            ; preds = %bb.d, %._crit_edge, %._crit_edge, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

declare i32 @evutil_sockaddr_cmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @evutil_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @reply_handle(ptr noundef nonnull %0, i16 noundef zeroext %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 3 uses
  %i.b = alloca [128 x i8], align 16              ; 3 uses
  %i.c = alloca [128 x i8], align 16              ; 3 uses
  %i.d = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 5 uses
  %i.f = zext i16 %1 to i32                       ; 3 uses
  %i.g = and i32 %i.f, 527
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp ne ptr %3, null                     ; 2 uses
  %or.cond3 = and i1 %i.h, %i.i
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i8, ptr %i.j, align 4
  %i.l = and i8 %i.k, 1
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.at

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = and i32 %i.f, 512
  %.not52 = icmp eq i32 %i.m, 0
  br i1 %.not52, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.f, 15                         ; 3 uses
  %.not53 = icmp eq i32 %i.n, 0
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = icmp samesign ugt i32 %i.n, 5
  br i1 %i.o, label %.thread, label %bb.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.q = load i8, ptr %i.p, align 4
  %i.r = and i8 %i.q, 1
  %.not54 = icmp eq i8 %i.r, 0
  br i1 %.not54, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %.thread

bb.i:                                             ; preds = %bb.e
  %narrow = add nuw nsw i32 %i.n, 65535
  %4 = and i32 %narrow, 65535
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds nuw [4 x i8], ptr @reply_handle.error_codes, i64 %5
  %i.s = load i32, ptr %6, align 4                ; 6 uses
  switch i32 %i.s, label %.thread [
    i32 4, label %bb.j
    i32 5, label %bb.j
    i32 2, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp slt i32 %i.u, %i.x
  br i1 %i.y, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.z = tail call ptr @evdns_err_to_string(i32 noundef %i.s)
  %i.aa = call i32 (ptr, i64, ptr, ...) @evutil_snprintf(ptr noundef nonnull %i.d, i64 noundef 64, ptr noundef nonnull @.str.36, i32 noundef %i.s, ptr noundef nonnull %i.z) #19 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  call fastcc void @nameserver_failed(ptr noundef %i.ac, ptr noundef nonnull %i.d)
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %request_reissue.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ai = load i32, ptr %i.ah, align 8
  %.not24.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not24.i.i, label %nameserver_pick.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l, %bb.m
  %i.aj = phi ptr [ %i.an, %bb.m ], [ %i.ag, %bb.l ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 432
  %i.al = load i8, ptr %i.ak, align 8
  %.not25.i.i = icmp eq i8 %i.al, 0
  br i1 %.not25.i.i, label %bb.m, label %nameserver_pick.exit.thread13.i

bb.m:                                             ; preds = %.preheader.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 280
  %i.an = load ptr, ptr %i.am, align 8            ; 4 uses
  store ptr %i.an, ptr %i.af, align 8
  %i.ao = icmp eq ptr %i.an, %i.ag
  br i1 %i.ao, label %nameserver_pick.exit.thread13.i, label %.preheader.i.i

nameserver_pick.exit.thread13.i:                  ; preds = %bb.m, %.preheader.i.i
  %.0.ph.i.ph.i = phi ptr [ %i.aj, %.preheader.i.i ], [ %i.an, %bb.m ] ; 2 uses
  %.sink.i.ph.in.i = getelementptr inbounds nuw i8, ptr %.0.ph.i.ph.i, i64 280
  %.sink.i.ph.i = load ptr, ptr %.sink.i.ph.in.i, align 8
  store ptr %.sink.i.ph.i, ptr %i.af, align 8
  br label %bb.n

nameserver_pick.exit.i:                           ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  store ptr %i.aq, ptr %i.af, align 8
  %.not.i10.i = icmp eq ptr %i.aq, null
  br i1 %.not.i10.i, label %nameserver_pick.exit.request_swap_ns.exit_crit_edge.i, label %bb.n

nameserver_pick.exit.request_swap_ns.exit_crit_edge.i: ; preds = %nameserver_pick.exit.i
  %.pre.i = load ptr, ptr %i.ab, align 8
  br label %request_swap_ns.exit.i

bb.n:                                             ; preds = %nameserver_pick.exit.i, %nameserver_pick.exit.thread13.i
  %.0.ph.i17.i = phi ptr [ %.0.ph.i.ph.i, %nameserver_pick.exit.thread13.i ], [ %i.aq, %nameserver_pick.exit.i ] ; 5 uses
  %i.ar = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.ar, %.0.ph.i17.i
  br i1 %.not8.i.i, label %request_swap_ns.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 448 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = add nsw i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.0.ph.i17.i, i64 448 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8
  store ptr %.0.ph.i17.i, ptr %i.ab, align 8
  br label %request_swap_ns.exit.i

request_swap_ns.exit.i:                           ; preds = %bb.o, %bb.n, %nameserver_pick.exit.request_swap_ns.exit_crit_edge.i
  %i.ay = phi ptr [ %.pre.i, %nameserver_pick.exit.request_swap_ns.exit_crit_edge.i ], [ %.0.ph.i17.i, %bb.o ], [ %.0.ph.i17.i, %bb.n ]
  %i.az = icmp eq ptr %i.ay, %i.ad
  br i1 %i.az, label %request_reissue.exit.thread, label %request_reissue.exit

request_reissue.exit.thread:                      ; preds = %request_swap_ns.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.v

request_reissue.exit:                             ; preds = %request_swap_ns.exit.i
  %i.ba = load i32, ptr %i.t, align 8
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr %i.t, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 2
  %i.bf = or i8 %i.be, 2
  store i8 %i.bf, ptr %i.bd, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %search_try_next.exit

bb.p:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = call ptr @evutil_format_sockaddr_port_(ptr noundef nonnull %i.bi, ptr noundef nonnull %i.c, i64 noundef 128) #19
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef %i.bj)
  call void @evdns_request_timeout_callback(i32 poison, i16 signext poison, ptr noundef nonnull %0)
  br label %search_try_next.exit

.thread:                                          ; preds = %bb.g, %bb.h, %bb.c, %bb.e, %bb.i
  %.167 = phi i32 [ %i.s, %bb.i ], [ 70, %bb.g ], [ 66, %bb.h ], [ 65, %bb.c ], [ 66, %bb.e ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 424 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = icmp eq ptr %i.bl, %i.bp
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread
  store ptr null, ptr %i.bo, align 8
  %.pre74 = load ptr, ptr %i.bm, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread
  %i.br = phi ptr [ %.pre74, %bb.q ], [ %i.bn, %.thread ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 440 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 432 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 8
  %.not.i = icmp eq i8 %i.bu, 0
  br i1 %.not.i, label %bb.s, label %nameserver_up.exit

bb.s:                                             ; preds = %bb.r
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bw = call ptr @evutil_format_sockaddr_port_(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.b, i64 noundef 128) #19, !inline_history !9
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 1, ptr noundef nonnull @.str.42, ptr noundef %i.bw), !inline_history !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 296
  %i.by = call i32 @event_del(ptr noundef nonnull %i.bx) #19, !inline_history !9 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 424 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8            ; 2 uses
  %.not13.i = icmp eq ptr %i.ca, null
  br i1 %.not13.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %i.bs, align 8
  call void @evdns_cancel_request(ptr noundef %i.cb, ptr noundef nonnull %i.ca), !inline_history !9
  store ptr null, ptr %i.bz, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i8 1, ptr %i.bt, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 140
  store i32 0, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 144
  store i32 0, ptr %i.cd, align 8
  %i.ce = load ptr, ptr %i.bs, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = add nsw i32 %i.cg, 1
  store i32 %i.ch, ptr %i.cf, align 8
  br label %nameserver_up.exit

nameserver_up.exit:                               ; preds = %bb.r, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %bb.v

bb.v:                                             ; preds = %request_reissue.exit.thread, %bb.j, %nameserver_up.exit
  %.166 = phi i32 [ %i.s, %bb.j ], [ %i.s, %request_reissue.exit.thread ], [ %.167, %nameserver_up.exit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 4 uses
  %.not56 = icmp eq ptr %i.cl, null
  br i1 %.not56, label %search_try_next.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cn = load i8, ptr %i.cm, align 8
  %.not57 = icmp eq i8 %i.cn, 12
  br i1 %.not57, label %search_try_next.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.co = load ptr, ptr %i.cj, align 8            ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 208 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cj, i64 20 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = add nsw i32 %i.cs, 1                    ; 4 uses
  store i32 %i.ct, ptr %i.cr, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
end_hunk_0
