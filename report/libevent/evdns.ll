Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 196
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@nameserver_read:bb.a
  %.153.i.idx = phi i64 [ %.052107.i.add, %bb.af ], [ 0, %bb.ad ] ; 2 uses
  %.153.i.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %.153.i.idx
  %i.cm = zext nneg i8 %i.cc to i64               ; 2 uses
  %.153.i.add = add nuw nsw i64 %.153.i.idx, %i.cm ; 2 uses
  %.not82.i = icmp samesign ult i64 %.153.i.add, 256
  br i1 %.not82.i, label %bb.ah, label %.thread312.i.loopexit

bb.ah:                                            ; preds = %bb.ag
  %i.cn = add nsw i32 %i.bz, %i.cd                ; 2 uses
  %i.co = icmp sgt i32 %i.cn, %i.by
  br i1 %i.co, label %.thread312.i.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cp = sext i32 %i.bz to i64
  %i.cq = getelementptr inbounds i8, ptr %i.bx, i64 %i.cp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.153.i.ptr, ptr readonly align 1 %i.cq, i64 %i.cm, i1 false)
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.ai, %bb.ac
  %.259.i = phi i32 [ %i.cn, %bb.ai ], [ %i.ck, %bb.ac ] ; 2 uses
  %.256.i = phi i32 [ %.054106.i, %bb.ai ], [ %i.cl, %bb.ac ]
  %.2.i.idx = phi i64 [ %.153.i.add, %bb.ai ], [ %.052107.i.idx, %bb.ac ]
  %.not.i19 = icmp slt i32 %.259.i, %i.by
  br i1 %.not.i19, label %.lr.ph.i16, label %.thread312.i.loopexit

bb.aj:                                            ; preds = %.lr.ph.i16
  %.not86.i = icmp samesign ult i64 %.052107.i.idx, 256
  br i1 %.not86.i, label %bb.ak, label %.thread312.i.loopexit65

bb.ak:                                            ; preds = %bb.aj
  store i8 0, ptr %.052107.i.ptr, align 1
  %i.cr = load i32, ptr %i.az, align 4
  %.not251.i = icmp eq i32 %i.cr, 0
  br i1 %.not251.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cs = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.c) #21, !inline_history !55
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.ct = call i32 @evutil_ascii_strcasecmp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #19, !inline_history !55
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink446.i = phi i32 [ %i.ct, %bb.am ], [ %i.cs, %bb.al ]
  %i.cu = add nsw i32 %.259..3.i46, 4             ; 4 uses
  %i.cv = icmp sgt i32 %i.cu, %.fr
  br i1 %i.cv, label %.thread312.i.loopexit65, label %bb.n

._crit_edge.i:                                    ; preds = %bb.n
  store i32 %i.cu, ptr %i.a, align 4
  %i.cw = icmp eq i32 %spec.select253.i, 0
  br i1 %i.cw, label %.thread286.i, label %.preheader325.i

.preheader325.i:                                  ; preds = %._crit_edge.i
  %i.cx = zext i16 %rev.i262.i to i32
  %.not357.i = icmp eq i16 %.0.copyload122.i, 0
  br i1 %.not357.i, label %.preheader.i, label %.lr.ph340.i

.lr.ph340.i:                                      ; preds = %.preheader325.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 200 ; 2 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.thread290.i, %.lr.ph340.i
  %i.cz = phi i8 [ 0, %.lr.ph340.i ], [ %i.ga, %.thread290.i ] ; 7 uses
  %i.da = phi i32 [ 0, %.lr.ph340.i ], [ %i.gb, %.thread290.i ] ; 13 uses
  %.1202339.i = phi i32 [ 0, %.lr.ph340.i ], [ %i.gc, %.thread290.i ]
  %.0205338.i = phi i32 [ -1, %.lr.ph340.i ], [ %.4209293.i, %.thread290.i ] ; 9 uses
  store i8 0, ptr %i.b, align 16
  %i.db = call fastcc i32 @name_parse(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, -2147483648) %.fr, ptr noundef %i.a, ptr noundef %i.b, i32 noundef 256), !inline_history !55
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %.thread286.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dd = load i32, ptr %i.a, align 4             ; 5 uses
  %i.de = add nsw i32 %i.dd, 2                    ; 2 uses
  %i.df = icmp sgt i32 %i.de, %.fr
  br i1 %i.df, label %.thread286.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dg = sext i32 %i.dd to i64
  %i.dh = getelementptr inbounds i8, ptr %i.f, i64 %i.dg
  %.0.copyload128.i = load i16, ptr %i.dh, align 1 ; 4 uses
  %i.di = add nsw i32 %i.dd, 4                    ; 2 uses
  %i.dj = icmp sgt i32 %i.di, %.fr
  br i1 %i.dj, label %.thread286.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dk = sext i32 %i.de to i64
  %i.dl = getelementptr inbounds i8, ptr %i.f, i64 %i.dk
  %.0.copyload130.i = load i16, ptr %i.dl, align 1
  %i.dm = add nsw i32 %i.dd, 8                    ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, %.fr
  br i1 %i.dn, label %.thread286.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.do = sext i32 %i.di to i64
  %i.dp = getelementptr inbounds i8, ptr %i.f, i64 %i.do
  %.0.copyload.i = load i32, ptr %i.dp, align 1
  %i.dq = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i) ; 3 uses
  %i.dr = add nsw i32 %i.dd, 10                   ; 11 uses
  %i.ds = icmp sgt i32 %i.dr, %.fr
  br i1 %i.ds, label %.thread286.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dt = sext i32 %i.dm to i64
  %i.du = getelementptr inbounds i8, ptr %i.f, i64 %i.dt
  %.0.copyload132.i = load i16, ptr %i.du, align 1
  store i32 %i.dr, ptr %i.a, align 4
  %rev.i267.i = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload132.i) ; 5 uses
  %i.dv = icmp eq i16 %.0.copyload128.i, 256
  %i.dw = icmp eq i16 %.0.copyload130.i, 256      ; 3 uses
  %or.cond7.i = select i1 %i.dv, i1 %i.dw, i1 false
  br i1 %or.cond7.i, label %bb.au, label %bb.az

bb.au:                                            ; preds = %bb.at
  %i.dx = load i8, ptr %i.au, align 8
  %.not248.i = icmp eq i8 %i.dx, 1
  %i.dy = zext i16 %rev.i267.i to i32             ; 3 uses
  br i1 %.not248.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dz = add nsw i32 %i.dr, %i.dy
  store i32 %i.dz, ptr %i.a, align 4
  br label %.thread290.i

bb.aw:                                            ; preds = %bb.au
  %i.ea = and i32 %i.dy, 3
  %.not249.i = icmp eq i32 %i.ea, 0
  br i1 %.not249.i, label %bb.ax, label %.thread312.i

bb.ax:                                            ; preds = %bb.aw
  %i.eb = lshr exact i32 %i.dy, 2
  %i.ec = sub i32 32, %i.da
  %i.ed = call i32 @llvm.umin.i32(i32 %i.ec, i32 %i.eb) ; 2 uses
  %i.ee = shl nuw nsw i32 %i.ed, 2                ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.dr                ; 2 uses
  %i.eg = icmp sgt i32 %i.ef, %.fr
  br i1 %i.eg, label %.thread312.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.eh = call i32 @llvm.umin.i32(i32 %.0205338.i, i32 %i.dq) ; 2 uses
  %i.ei = zext i32 %i.da to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ei
  %i.ek = sext i32 %i.dr to i64
  %i.el = getelementptr inbounds i8, ptr %i.f, i64 %i.ek
  %i.em = zext nneg i32 %i.ee to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ej, ptr nonnull readonly align 1 %i.el, i64 %i.em, i1 false)
  store i32 %i.ef, ptr %i.a, align 4
  %i.en = add i32 %i.ed, %i.da                    ; 2 uses
  %.not324.i = icmp eq i32 %i.en, 32
  br i1 %.not324.i, label %.loopexit326.i.thread, label %.thread290.i

bb.az:                                            ; preds = %bb.at
  %i.eo = icmp eq i16 %.0.copyload128.i, 3072
  %or.cond10.i = select i1 %i.eo, i1 %i.dw, i1 false
  br i1 %or.cond10.i, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.ep = load i8, ptr %i.au, align 8
  %.not247.i = icmp eq i8 %i.ep, 12
  br i1 %.not247.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.eq = zext i16 %rev.i267.i to i32
  %i.er = add nsw i32 %i.dr, %i.eq
  store i32 %i.er, ptr %i.a, align 4
  br label %.thread290.i

bb.bc:                                            ; preds = %bb.ba
  store i32 %i.da, ptr %i.t, align 4
  store i8 %i.cz, ptr %i.s, align 4
  %i.es = call fastcc i32 @name_parse(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, -2147483648) %.fr, ptr noundef %i.a, ptr noundef %i.t, i32 noundef 64), !inline_history !55
  %i.et = icmp slt i32 %i.es, 0
  br i1 %i.et, label %.thread312.i, label %.thread294.i

.thread294.i:                                     ; preds = %bb.bc
  %i.eu = call i32 @llvm.umin.i32(i32 %.0205338.i, i32 %i.dq)
  %i.ev = load i8, ptr %i.s, align 4
  %i.ew = or i8 %i.ev, 1
  br label %.loopexit326.i

bb.bd:                                            ; preds = %bb.az
  %i.ex = icmp eq i16 %.0.copyload128.i, 1280
  br i1 %i.ex, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ey = load ptr, ptr %i.cy, align 8            ; 2 uses
  %.not245.i = icmp eq ptr %i.ey, null
  br i1 %.not245.i, label %.thread.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ez = load ptr, ptr %i.ey, align 8
  %.not246.i = icmp eq ptr %i.ez, null
  br i1 %.not246.i, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.fa = call fastcc i32 @name_parse(ptr noundef nonnull readonly %i.f, i32 noundef range(i32 0, -2147483648) %.fr, ptr noundef %i.a, ptr noundef %i.d, i32 noundef 64), !inline_history !55
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %.thread.jt8.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fc = call ptr @event_mm_strdup_(ptr noundef nonnull %i.d) #19, !inline_history !55
  %i.fd = load ptr, ptr %i.cy, align 8
  store ptr %i.fc, ptr %i.fd, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.thread290.i

bb.bi:                                            ; preds = %bb.bd
  %i.fe = icmp eq i16 %.0.copyload128.i, 7168
  %or.cond13.i = select i1 %i.fe, i1 %i.dw, i1 false
  br i1 %or.cond13.i, label %bb.bj, label %bb.bo

bb.bj:                                            ; preds = %bb.bi
  %i.ff = load i8, ptr %i.au, align 8
  %.not243.i = icmp eq i8 %i.ff, 28
  %i.fg = zext i16 %rev.i267.i to i32             ; 3 uses
  br i1 %.not243.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.fh = add nsw i32 %i.dr, %i.fg
  store i32 %i.fh, ptr %i.a, align 4
  br label %.thread290.i

bb.bl:                                            ; preds = %bb.bj
  %i.fi = and i32 %i.fg, 15
  %.not244.i = icmp eq i32 %i.fi, 0
  br i1 %.not244.i, label %bb.bm, label %.thread312.i

bb.bm:                                            ; preds = %bb.bl
  %i.fj = lshr exact i32 %i.fg, 4
  %i.fk = sub i32 32, %i.da
  %i.fl = call i32 @llvm.umin.i32(i32 %i.fk, i32 %i.fj) ; 2 uses
  %i.fm = shl nuw nsw i32 %i.fl, 4                ; 2 uses
  %i.fn = add nsw i32 %i.fm, %i.dr                ; 2 uses
  %i.fo = icmp sgt i32 %i.fn, %.fr
  br i1 %i.fo, label %.thread312.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.fp = call i32 @llvm.umin.i32(i32 %.0205338.i, i32 %i.dq) ; 2 uses
  %i.fq = zext i32 %i.da to i64
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.fq
  %i.fs = sext i32 %i.dr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.f, i64 %i.fs
  %i.fu = zext nneg i32 %i.fm to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fr, ptr nonnull readonly align 1 %i.ft, i64 %i.fu, i1 false)
  %i.fv = add i32 %i.fl, %i.da                    ; 2 uses
  store i32 %i.fn, ptr %i.a, align 4
  %.not.i = icmp eq i32 %i.fv, 32
  br i1 %.not.i, label %.loopexit326.i.thread, label %.thread290.i

bb.bo:                                            ; preds = %bb.bi
  %i.fw = zext i16 %rev.i267.i to i32
  %i.fx = add nsw i32 %i.dr, %i.fw
  store i32 %i.fx, ptr %i.a, align 4
  br label %.thread290.i

.thread.i:                                        ; preds = %bb.bf, %bb.be
  %i.fy = zext i16 %rev.i267.i to i32
  %i.fz = add nsw i32 %i.dr, %i.fy
  store i32 %i.fz, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.thread290.i

.thread.jt8.i:                                    ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %.thread312.i

.thread290.i:                                     ; preds = %.thread.i, %bb.bo, %bb.bn, %bb.bk, %bb.bh, %bb.bb, %bb.ay, %bb.av
  %i.ga = phi i8 [ %i.cz, %.thread.i ], [ %i.cz, %bb.bk ], [ %i.cz, %bb.bb ], [ 1, %bb.ay ], [ %i.cz, %bb.bh ], [ 1, %bb.bn ], [ %i.cz, %bb.bo ], [ %i.cz, %bb.av ] ; 2 uses
  %i.gb = phi i32 [ %i.da, %.thread.i ], [ %i.da, %bb.bk ], [ %i.da, %bb.bb ], [ %i.en, %bb.ay ], [ %i.da, %bb.bh ], [ %i.fv, %bb.bn ], [ %i.da, %bb.bo ], [ %i.da, %bb.av ] ; 2 uses
  %.4209293.i = phi i32 [ %.0205338.i, %.thread.i ], [ %.0205338.i, %bb.bk ], [ %.0205338.i, %bb.bb ], [ %i.eh, %bb.ay ], [ %.0205338.i, %bb.bh ], [ %i.fp, %bb.bn ], [ %.0205338.i, %bb.bo ], [ %.0205338.i, %bb.av ] ; 2 uses
  %i.gc = add nuw nsw i32 %.1202339.i, 1          ; 2 uses
  %exitcond386.not.i = icmp eq i32 %i.gc, %i.cx
  br i1 %exitcond386.not.i, label %..loopexit326_crit_edge.i, label %bb.ao, !llvm.loop !56

..loopexit326_crit_edge.i:                        ; preds = %.thread290.i
  store i32 %i.gb, ptr %i.t, align 4
  br label %.loopexit326.i

.loopexit326.i.thread:                            ; preds = %bb.bn, %bb.ay
  %.4209.i.ph = phi i32 [ %i.fp, %bb.bn ], [ %i.eh, %bb.ay ]
  store i32 32, ptr %i.t, align 4
  store i8 1, ptr %i.s, align 4
  br label %.loopexit.i

.loopexit326.i:                                   ; preds = %..loopexit326_crit_edge.i, %.thread294.i
  %.lcssa442.sink.i = phi i8 [ %i.ga, %..loopexit326_crit_edge.i ], [ %i.ew, %.thread294.i ] ; 2 uses
  %.5210.i = phi i32 [ %.4209293.i, %..loopexit326_crit_edge.i ], [ %i.eu, %.thread294.i ] ; 2 uses
  store i8 %.lcssa442.sink.i, ptr %i.s, align 4
  %i.gd = and i8 %.lcssa442.sink.i, 1
  %.not250.i = icmp eq i8 %i.gd, 0
  br i1 %.not250.i, label %.preheader.i, label %.loopexit.i

.preheader.i:                                     ; preds = %.loopexit326.i, %.preheader325.i
  %.5210416.i = phi i32 [ %.5210.i, %.loopexit326.i ], [ -1, %.preheader325.i ] ; 2 uses
  %i.ge = zext i16 %rev.i263.i to i32
  %.not358.i = icmp eq i16 %.0.copyload124.i, 0
  br i1 %.not358.i, label %.loopexit.i, label %.lr.ph354.preheader.i

.lr.ph354.preheader.i:                            ; preds = %.preheader.i
  %invariant.op445.i = add nsw i32 %.fr, -12
  br label %.lr.ph354.i

.lr.ph354.i:                                      ; preds = %bb.cb, %.lr.ph354.preheader.i
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

.loopexit.i:                                      ; preds = %bb.cb, %.preheader.i, %.loopexit326.i, %.loopexit326.i.thread
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

.thread312.i:                                     ; preds = %bb.aw, %bb.ax, %bb.bl, %bb.bm, %.thread312.i.loopexit65, %.thread312.i.loopexit, %.thread.jt8.i, %.thread286.i, %bb.bc, %bb.m, %bb.l
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
  %i.s = zext nneg i32 %i.n to i64
  %i.t = getelementptr [4 x i8], ptr @reply_handle.error_codes, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4              ; 6 uses
  switch i32 %i.v, label %.thread [
    i32 4, label %bb.j
    i32 5, label %bb.j
    i32 2, label %bb.p
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = load ptr, ptr %i.e, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp slt i32 %i.x, %i.aa
  br i1 %i.ab, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ac = tail call ptr @evdns_err_to_string(i32 noundef %i.v)
  %i.ad = call i32 (ptr, i64, ptr, ...) @evutil_snprintf(ptr noundef nonnull %i.d, i64 noundef 64, ptr noundef nonnull @.str.36, i32 noundef %i.v, ptr noundef nonnull %i.ac) #19 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.af = load ptr, ptr %i.ae, align 8
  call fastcc void @nameserver_failed(ptr noundef %i.af, ptr noundef nonnull %i.d)
  %i.ag = load ptr, ptr %i.ae, align 8
  %i.ah = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 4 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %request_reissue.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.al = load i32, ptr %i.ak, align 8
  %.not24.i.i = icmp eq i32 %i.al, 0
  br i1 %.not24.i.i, label %nameserver_pick.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l, %bb.m
  %i.am = phi ptr [ %i.aq, %bb.m ], [ %i.aj, %bb.l ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 432
  %i.ao = load i8, ptr %i.an, align 8
  %.not25.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not25.i.i, label %bb.m, label %nameserver_pick.exit.thread13.i

bb.m:                                             ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 280
  %i.aq = load ptr, ptr %i.ap, align 8            ; 4 uses
  store ptr %i.aq, ptr %i.ai, align 8
  %i.ar = icmp eq ptr %i.aq, %i.aj
  br i1 %i.ar, label %nameserver_pick.exit.thread13.i, label %.preheader.i.i

nameserver_pick.exit.thread13.i:                  ; preds = %bb.m, %.preheader.i.i
  %.0.ph.i.ph.i = phi ptr [ %i.am, %.preheader.i.i ], [ %i.aq, %bb.m ] ; 2 uses
  %.sink.i.ph.in.i = getelementptr inbounds nuw i8, ptr %.0.ph.i.ph.i, i64 280
  %.sink.i.ph.i = load ptr, ptr %.sink.i.ph.in.i, align 8
  store ptr %.sink.i.ph.i, ptr %i.ai, align 8
  br label %bb.n

nameserver_pick.exit.i:                           ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 280
  %i.at = load ptr, ptr %i.as, align 8            ; 3 uses
  store ptr %i.at, ptr %i.ai, align 8
  %.not.i10.i = icmp eq ptr %i.at, null
  br i1 %.not.i10.i, label %nameserver_pick.exit.request_swap_ns.exit_crit_edge.i, label %bb.n

nameserver_pick.exit.request_swap_ns.exit_crit_edge.i: ; preds = %nameserver_pick.exit.i
  %.pre.i = load ptr, ptr %i.ae, align 8
  br label %request_swap_ns.exit.i

bb.n:                                             ; preds = %nameserver_pick.exit.i, %nameserver_pick.exit.thread13.i
  %.0.ph.i17.i = phi ptr [ %.0.ph.i.ph.i, %nameserver_pick.exit.thread13.i ], [ %i.at, %nameserver_pick.exit.i ] ; 5 uses
  %i.au = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not8.i.i = icmp eq ptr %i.au, %.0.ph.i17.i
  br i1 %.not8.i.i, label %request_swap_ns.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 448 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.ph.i17.i, i64 448 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8
  store ptr %.0.ph.i17.i, ptr %i.ae, align 8
  br label %request_swap_ns.exit.i

request_swap_ns.exit.i:                           ; preds = %bb.o, %bb.n, %nameserver_pick.exit.request_swap_ns.exit_crit_edge.i
  %i.bb = phi ptr [ %.pre.i, %nameserver_pick.exit.request_swap_ns.exit_crit_edge.i ], [ %.0.ph.i17.i, %bb.o ], [ %.0.ph.i17.i, %bb.n ]
  %i.bc = icmp eq ptr %i.bb, %i.ag
  br i1 %i.bc, label %request_reissue.exit.thread, label %request_reissue.exit

request_reissue.exit.thread:                      ; preds = %request_swap_ns.exit.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %bb.v

request_reissue.exit:                             ; preds = %request_swap_ns.exit.i
  %i.bd = load i32, ptr %i.w, align 8
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.w, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 0, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 194 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = or i8 %i.bh, 2
  store i8 %i.bi, ptr %i.bg, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  br label %search_try_next.exit

bb.p:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = call ptr @evutil_format_sockaddr_port_(ptr noundef nonnull %i.bl, ptr noundef nonnull %i.c, i64 noundef 128) #19
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.37, ptr noundef %i.bm)
  call void @evdns_request_timeout_callback(i32 poison, i16 signext poison, ptr noundef nonnull %0)
  br label %search_try_next.exit

.thread:                                          ; preds = %bb.g, %bb.h, %bb.c, %bb.e, %bb.i
  %.167 = phi i32 [ %i.v, %bb.i ], [ 70, %bb.g ], [ 66, %bb.h ], [ 65, %bb.c ], [ 66, %bb.e ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 216
end_hunk_0
