Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qtrleenc?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@qtrle_encode_frame:bb.a
  %i.ak = icmp sgt i32 %i.ad, 0
  br i1 %i.ak, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.e
  %.pre109.i = zext i32 %i.aj to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.al = load ptr, ptr %2, align 8, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.an = load i32, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !42 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !51
  %i.at = zext i32 %i.aj to i64                   ; 3 uses
  %i.au = sext i32 %i.an to i64
  %i.av = sext i32 %i.as to i64
  %wide.trip.count.i = zext nneg i32 %i.ad to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 4 uses
  %i.aw = mul nsw i64 %indvars.iv.i, %i.au
  %i.ax = getelementptr inbounds i8, ptr %i.al, i64 %i.aw
  %i.ay = mul nsw i64 %indvars.iv.i, %i.av
  %i.az = getelementptr inbounds i8, ptr %i.aq, i64 %i.ay
  %bcmp.i = tail call i32 @bcmp(ptr %i.ax, ptr %i.az, i64 %i.at)
  %.not45.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not45.i, label %bb.g, label %._crit_edge.loopexit.split.loop.exit.i

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f, !llvm.loop !52

._crit_edge.loopexit.split.loop.exit.i:           ; preds = %bb.f
  %i.ba = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g, %._crit_edge.loopexit.split.loop.exit.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre109.i, %.._crit_edge_crit_edge.i ], [ %i.at, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.at, %bb.g ]
  %.042.lcssa.i = phi i32 [ 0, %.._crit_edge_crit_edge.i ], [ %i.ba, %._crit_edge.loopexit.split.loop.exit.i ], [ %i.ad, %bb.g ] ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %smin.i = tail call i32 @llvm.smin.i32(i32 %.042.lcssa.i, i32 %i.ad) ; 2 uses
  %i.bd = icmp sgt i32 %i.ad, %.042.lcssa.i
  br i1 %i.bd, label %.lr.ph.preheader, label %._crit_edge59

.lr.ph.preheader:                                 ; preds = %._crit_edge.i
  %i.be = load ptr, ptr %2, align 8, !tbaa !45
  %i.bf = load i32, ptr %i.bb, align 8, !tbaa !51
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !42 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !51
  br label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.bk = icmp sgt i32 %i.bl, %.042.lcssa.i
  br i1 %i.bk, label %.lr.ph, label %._crit_edge59, !llvm.loop !54

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.0.i57 = phi i32 [ %i.bl, %bb.h ], [ %i.ad, %.lr.ph.preheader ] ; 2 uses
  %i.bl = add nsw i32 %.0.i57, -1                 ; 4 uses
  %i.bm = mul nsw i32 %i.bf, %i.bl
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.be, i64 %i.bn
  %i.bp = mul nsw i32 %i.bj, %i.bl
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %i.bh, i64 %i.bq
  %bcmp46.i = tail call i32 @bcmp(ptr %i.bo, ptr %i.br, i64 %.pre-phi.i)
  %.not47.i = icmp eq i32 %bcmp46.i, 0
  br i1 %.not47.i, label %bb.h, label %._crit_edge58, !llvm.loop !54

._crit_edge58:                                    ; preds = %.lr.ph
  br label %._crit_edge59, !llvm.loop !54

._crit_edge59:                                    ; preds = %bb.h, %._crit_edge58, %._crit_edge.i
  %.0.lcssa.i = phi i32 [ %smin.i, %._crit_edge.i ], [ %.0.i57, %._crit_edge58 ], [ %smin.i, %bb.h ] ; 2 uses
  store i32 0, ptr %i.ab, align 1, !tbaa !50
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.bt = icmp eq i32 %.042.lcssa.i, 0
  br i1 %i.bt, label %bb.i, label %._crit_edge105.i

._crit_edge105.i:                                 ; preds = %._crit_edge59
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !31
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 116
  %.pre106.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !30
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge59, %.thread.i
  %i.bu = phi ptr [ %i.x, %.thread.i ], [ %i.ae, %._crit_edge59 ] ; 2 uses
  %i.bv = phi ptr [ %i.u, %.thread.i ], [ %i.ab, %._crit_edge59 ] ; 2 uses
  %i.bw = phi ptr [ %i.y, %.thread.i ], [ %i.bs, %._crit_edge59 ] ; 2 uses
  %.184.i = phi i32 [ %i.w, %.thread.i ], [ %.0.lcssa.i, %._crit_edge59 ] ; 3 uses
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 116
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30 ; 2 uses
  %i.ca = icmp eq i32 %.184.i, %i.bz
  br i1 %i.ca, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge105.i
  %i.cb = phi ptr [ %i.bu, %bb.i ], [ %i.ae, %._crit_edge105.i ] ; 2 uses
  %i.cc = phi ptr [ %i.bv, %bb.i ], [ %i.ab, %._crit_edge105.i ] ; 2 uses
  %i.cd = phi i32 [ %i.bz, %bb.i ], [ %.pre106.i, %._crit_edge105.i ] ; 2 uses
  %i.ce = phi ptr [ %i.bw, %bb.i ], [ %i.bs, %._crit_edge105.i ] ; 7 uses
  %.186.i = phi i32 [ %.184.i, %bb.i ], [ %.0.lcssa.i, %._crit_edge105.i ] ; 3 uses
  %.14382.i = phi i32 [ 0, %bb.i ], [ %.042.lcssa.i, %._crit_edge105.i ] ; 4 uses
  %i.cf = icmp eq i32 %.14382.i, %i.cd
  br i1 %i.cf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cg = phi ptr [ %i.cb, %bb.j ], [ %i.bu, %bb.i ]
  %i.ch = phi ptr [ %i.cc, %bb.j ], [ %i.bv, %bb.i ]
  %i.ci = phi ptr [ %i.ce, %bb.j ], [ %i.bw, %bb.i ] ; 2 uses
  %.187.i = phi i32 [ %.186.i, %bb.j ], [ %.184.i, %bb.i ]
  %.14381.i = phi i32 [ %i.cd, %bb.j ], [ 0, %bb.i ]
  store i16 0, ptr %i.ci, align 1, !tbaa !50
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i16 2048, ptr %i.ce, align 1, !tbaa !50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 2
  %i.cl = trunc i32 %.14382.i to i16
  %i.cm = tail call i16 @llvm.bswap.i16(i16 %i.cl)
  store i16 %i.cm, ptr %i.ck, align 1, !tbaa !50
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i16 0, ptr %i.cn, align 1, !tbaa !50
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 6
  %i.cp = sub nsw i32 %.186.i, %.14382.i
  %i.cq = trunc i32 %i.cp to i16
  %i.cr = tail call i16 @llvm.bswap.i16(i16 %i.cq)
  store i16 %i.cr, ptr %i.co, align 1, !tbaa !50
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i16 0, ptr %i.cs, align 1, !tbaa !50
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.cu = phi ptr [ %i.cg, %bb.k ], [ %i.cb, %bb.l ] ; 4 uses
  %i.cv = phi ptr [ %i.ch, %bb.k ], [ %i.cc, %bb.l ] ; 2 uses
  %.185.i = phi i32 [ %.187.i, %bb.k ], [ %.186.i, %bb.l ] ; 2 uses
  %.14380.i = phi i32 [ %.14381.i, %bb.k ], [ %.14382.i, %bb.l ] ; 2 uses
  %.076.i = phi ptr [ %i.cj, %bb.k ], [ %i.ct, %bb.l ] ; 2 uses
  %i.cw = icmp slt i32 %.14380.i, %.185.i
  br i1 %i.cw, label %.lr.ph96.i, label %encode_frame.exit

.lr.ph96.i:                                       ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 8 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 7 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %qtrle_encode_line.exit.i, %.lr.ph96.i
  %.04494.i = phi i32 [ %.14380.i, %.lr.ph96.i ], [ %i.jn, %qtrle_encode_line.exit.i ] ; 4 uses
  %.17793.i = phi ptr [ %.076.i, %.lr.ph96.i ], [ %i.jm, %qtrle_encode_line.exit.i ] ; 3 uses
  %i.de = load i32, ptr %i.cx, align 4, !tbaa !35 ; 10 uses
  %i.df = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %i.dg = load i32, ptr %i.cy, align 8, !tbaa !51
  %i.dh = mul nsw i32 %i.dg, %.04494.i
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %i.df, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.cz, align 8, !tbaa !37
  %i.dl = mul nsw i32 %i.dk, %i.de
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dj, i64 %i.dm
  %i.do = load i32, ptr %i.cu, align 8, !tbaa !47
  %.not.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dp = load ptr, ptr %i.da, align 8, !tbaa !42 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !45
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !51
  %i.dt = mul nsw i32 %i.ds, %.04494.i
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dq, i64 %i.du
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dw = phi ptr [ %i.dv, %bb.o ], [ %i.dj, %bb.n ]
  %i.dx = load ptr, ptr %i.db, align 8, !tbaa !41 ; 2 uses
  %i.dy = sext i32 %i.de to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.dy
  store i32 0, ptr %i.dz, align 4, !tbaa !51
  %i.ea = icmp sgt i32 %i.de, 0
  br i1 %i.ea, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.p
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dm
  %i.ec = add nsw i32 %i.de, -1                   ; 2 uses
  %i.ed = load i32, ptr %i.cz, align 8, !tbaa !37 ; 2 uses
  %i.ee = zext nneg i32 %i.ec to i64              ; 7 uses
  %i.ef = sext i32 %i.ed to i64                   ; 2 uses
  %i.eg = sub nsw i64 0, %i.ef                    ; 2 uses
  %i.eh = getelementptr inbounds i8, ptr %i.dn, i64 %i.eg ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.eb, i64 %i.eg ; 2 uses
  %.not189.i.peel.i = icmp eq i32 %i.ec, 0        ; 4 uses
  %i.ej = select i1 %.not189.i.peel.i, i32 2, i32 1
  %.1175.i.peel.i = add i32 %i.ej, %i.ed          ; 3 uses
  %.2172.i.peel.i = select i1 %.not189.i.peel.i, i32 1073741824, i32 1073741823 ; 3 uses
  %.not190.i.peel.i = icmp sgt i32 %.1175.i.peel.i, %.2172.i.peel.i
  %.3173.i.peel.i = tail call i32 @llvm.smin.i32(i32 %.1175.i.peel.i, i32 %.2172.i.peel.i) ; 2 uses
  %.3.i.peel.i = select i1 %.not190.i.peel.i, i32 %.2172.i.peel.i, i32 1073741823
  %i.ek = load i32, ptr %i.cu, align 8, !tbaa !47
  %.not192.i.peel.i = icmp eq i32 %i.ek, 0
  br i1 %.not192.i.peel.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i.i
  %bcmp.i.peel.i = tail call i32 @bcmp(ptr %i.eh, ptr %i.ei, i64 %i.ef)
  %.not193.i.peel.i = icmp eq i32 %bcmp.i.peel.i, 0
  br i1 %.not193.i.peel.i, label %.thread.i.peel.i, label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i.i
  %i.el = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ee
  store i8 0, ptr %i.em, align 1, !tbaa !50
  br label %bb.s

.thread.i.peel.i:                                 ; preds = %bb.q
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ee
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !51
  %i.eq = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.ee
  store i8 1, ptr %i.er, align 1, !tbaa !50
  %.0177.v.i.peel.i = select i1 %.not189.i.peel.i, i32 1, i32 2
  %.0177.i.peel.i = add nsw i32 %i.ep, %.0177.v.i.peel.i
  br label %bb.s

bb.s:                                             ; preds = %.thread.i.peel.i, %bb.r
  %.1181.i.peel126.i = phi i32 [ 0, %bb.r ], [ 1, %.thread.i.peel.i ]
  %storemerge.i = phi i32 [ %.3173.i.peel.i, %bb.r ], [ %.0177.i.peel.i, %.thread.i.peel.i ]
  %.sink.i.peel.i = phi i8 [ 1, %bb.r ], [ 0, %.thread.i.peel.i ]
  %.pn.i = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.pn.i, i64 %i.ee
  store i32 %storemerge.i, ptr %i.es, align 4, !tbaa !51
  %i.et = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ee
  store i8 %.sink.i.peel.i, ptr %i.eu, align 1, !tbaa !50
  br i1 %.not189.i.peel.i, label %._crit_edge.loopexit.i.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.s
  %i.ev = load i32, ptr %i.cz, align 8, !tbaa !37 ; 3 uses
  %i.ew = add nsw i32 %i.ev, %.3.i.peel.i
  %i.ex = add nsw i32 %i.ev, %.3173.i.peel.i
  br label %bb.t

bb.t:                                             ; preds = %bb.af, %.peel.next.i
  %i.ey = phi i32 [ %i.ev, %.peel.next.i ], [ %i.gg, %bb.af ]
  %indvars.iv.i.in.i = phi i64 [ %i.ee, %.peel.next.i ], [ %indvars.iv.i.i, %bb.af ] ; 5 uses
  %.0161209.i.i = phi ptr [ %i.ei, %.peel.next.i ], [ %i.fc, %bb.af ]
  %.0162208.i.i = phi ptr [ %i.eh, %.peel.next.i ], [ %i.fb, %bb.af ]
  %.0163207.i.i = phi i32 [ %i.de, %.peel.next.i ], [ %.2.i.i, %bb.af ] ; 2 uses
  %.0164206.i.i = phi i32 [ %i.ew, %.peel.next.i ], [ %i.gi, %bb.af ] ; 2 uses
  %.0167205.i.i = phi i32 [ %i.de, %.peel.next.i ], [ %.2169.i.i, %bb.af ] ; 2 uses
  %.0170204.i.i = phi i32 [ %i.ex, %.peel.next.i ], [ %i.gh, %bb.af ]
  %.0174203.i.i = phi i32 [ %.1175.i.peel.i, %.peel.next.i ], [ %.1175.i.i, %bb.af ]
  %.0178202.i.i = phi i32 [ 1, %.peel.next.i ], [ %.1179.i.i.a, %bb.af ]
  %.0180201.i.i = phi i32 [ %.1181.i.peel126.i, %.peel.next.i ], [ %.1181.i.i, %bb.af ]
  %indvars.iv.i.i = add nsw i64 %indvars.iv.i.in.i, -1 ; 7 uses
  %i.ez = sext i32 %i.ey to i64                   ; 2 uses
  %i.fa = sub nsw i64 0, %i.ez                    ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.0162208.i.i, i64 %i.fa ; 4 uses
  %i.fc = getelementptr inbounds i8, ptr %.0161209.i.i, i64 %i.fa ; 2 uses
  %i.fd = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %i.fe = add i32 %i.fd, 127
  %i.ff = tail call i32 @llvm.smin.i32(i32 %i.de, i32 %i.fe)
  %i.fg = icmp slt i32 %i.ff, %.0167205.i.i
  br i1 %i.fg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1171.i.i = phi i32 [ %.0164206.i.i, %bb.u ], [ %.0170204.i.i, %bb.t ]
  %.1168.i.i = phi i32 [ %.0163207.i.i, %bb.u ], [ %.0167205.i.i, %bb.t ] ; 2 uses
  %.1165.i.i = phi i32 [ 1073741823, %bb.u ], [ %.0164206.i.i, %bb.t ]
  %.1.i.i = phi i32 [ %i.de, %bb.u ], [ %.0163207.i.i, %bb.t ] ; 2 uses
  %.not189.i.i = icmp eq i64 %indvars.iv.i.i, 0   ; 3 uses
  %i.fh = zext i1 %.not189.i.i to i32             ; 3 uses
  %.1175.i.i = add nsw i32 %.0174203.i.i, %i.fh   ; 2 uses
  %.2172.i.i = add nsw i32 %.1171.i.i, %i.fh      ; 3 uses
  %.2166.i.i = add nsw i32 %.1165.i.i, %i.fh      ; 2 uses
  %i.fi = load ptr, ptr %i.db, align 8, !tbaa !41 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.in.i
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !51
  %i.fl = add nsw i32 %i.fk, %.1175.i.i           ; 4 uses
  %.not190.i.i = icmp sgt i32 %i.fl, %.2166.i.i
  br i1 %.not190.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.not191.i.i = icmp sgt i32 %i.fl, %.2172.i.i   ; 3 uses
  %.2172..i.i = tail call i32 @llvm.smin.i32(i32 %i.fl, i32 %.2172.i.i)
  %i.fm = trunc nuw nsw i64 %indvars.iv.i.in.i to i32 ; 2 uses
  %.1168..i.i = select i1 %.not191.i.i, i32 %.1168.i.i, i32 %i.fm
  %..i.i = select i1 %.not191.i.i, i32 %i.fl, i32 1073741823
  %..1.i.i = select i1 %.not191.i.i, i32 %i.fm, i32 %.1.i.i
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3173.i.i = phi i32 [ %.2172..i.i, %bb.w ], [ %.2172.i.i, %bb.v ] ; 2 uses
  %.2169.i.i = phi i32 [ %.1168..i.i, %bb.w ], [ %.1168.i.i, %bb.v ] ; 2 uses
  %.3.i.i = phi i32 [ %..i.i, %bb.w ], [ %.2166.i.i, %bb.v ]
  %.2.i.i = phi i32 [ %..1.i.i, %bb.w ], [ %.1.i.i, %bb.v ]
  %i.fn = load i32, ptr %i.cu, align 8, !tbaa !47
  %.not192.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not192.i.i, label %4, label %8

4:                                                ; preds = %bb.x
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.fb, ptr %i.fc, i64 %i.ez)
  %.not193.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not193.i.i, label %5, label %8

5:                                                ; preds = %4
  %6 = add nsw i32 %.0180201.i.i, 1
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 254)
  br label %8

8:                                                ; preds = %5, %4, %bb.x
  %.1181.i.i = phi i32 [ %7, %5 ], [ 0, %4 ], [ 0, %bb.x ] ; 4 uses
  %9 = zext nneg i32 %.1181.i.i to i64
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv.i.i
  %11 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !51
  %13 = trunc nuw i32 %.1181.i.i to i8
  %14 = load ptr, ptr %i.dc, align 8, !tbaa !40
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 %indvars.iv.i.i
  store i8 %13, ptr %15, align 1, !tbaa !50
  %.not121.i = icmp samesign ugt i64 %indvars.iv.i.in.i, %i.ee
  %.pre.i.i = load i32, ptr %i.cz, align 8, !tbaa !37 ; 2 uses
  br i1 %.not121.i, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %8
  %16 = sext i32 %.pre.i.i to i64                 ; 2 uses
  %17 = getelementptr inbounds i8, ptr %i.fb, i64 %16
  %bcmp194.i.i.a = tail call i32 @bcmp(ptr %i.fb, ptr %17, i64 %16)
  %.not195.i.i.a = icmp eq i32 %bcmp194.i.i.a, 0
  br i1 %.not195.i.i.a, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fo = add nsw i32 %.0178202.i.i, 1
  %i.fp = tail call i32 @llvm.umin.i32(i32 %i.fo, i32 128)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %8
  %.1179.i.i.a = phi i32 [ %i.fp, %bb.z ], [ 1, %bb.y ], [ 1, %8 ] ; 4 uses
  %i.fq = load ptr, ptr %i.db, align 8, !tbaa !41
  %i.fr = zext nneg i32 %.1179.i.i.a to i64
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv.i.i ; 4 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fr
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !51
  %.0177.v.i.i = select i1 %.not189.i.i, i32 1, i32 2
  %.0177.i.i = add nsw i32 %12, %.0177.v.i.i      ; 2 uses
  %i.fv = select i1 %.not189.i.i, i32 2, i32 1
  %i.fw = add i32 %.pre.i.i, %i.fv
  %.0176.i.i = add i32 %i.fw, %i.fu               ; 2 uses
  %i.fx = icmp samesign ugt i32 %.1179.i.i.a, 1
  %i.fy = icmp eq i32 %.1181.i.i, 0               ; 2 uses
  br i1 %i.fx, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.fz = icmp slt i32 %.0176.i.i, %.0177.i.i
  %or.cond.i.i = select i1 %i.fy, i1 true, i1 %i.fz
  br i1 %or.cond.i.i, label %bb.ac, label %.thread.i.i

bb.ac:                                            ; preds = %bb.ab
  store i32 %.0176.i.i, ptr %i.fs, align 4, !tbaa !51
  %i.ga = trunc nuw i32 %.1179.i.i.a to i8
  %i.gb = sub i8 0, %i.ga
  br label %bb.af

bb.ad:                                            ; preds = %bb.aa
  br i1 %i.fy, label %bb.ae, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ad, %bb.ab
  store i32 %.0177.i.i, ptr %i.fs, align 4, !tbaa !51
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 %.3173.i.i, ptr %i.fs, align 4, !tbaa !51
  %i.gc = sub nsw i32 %.2169.i.i, %i.fd
  %i.gd = trunc i32 %i.gc to i8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread.i.i, %bb.ac
  %.sink.i.i = phi i8 [ 0, %.thread.i.i ], [ %i.gd, %bb.ae ], [ %i.gb, %bb.ac ]
  %i.ge = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.gf, align 1, !tbaa !50
  %i.gg = load i32, ptr %i.cz, align 8, !tbaa !37 ; 3 uses
  %i.gh = add nsw i32 %i.gg, %.3173.i.i
  %i.gi = add nsw i32 %i.gg, %.3.i.i
  %i.gj = icmp samesign ugt i64 %indvars.iv.i.in.i, 1
  br i1 %i.gj, label %bb.t, label %._crit_edge.loopexit.i.i, !llvm.loop !55

._crit_edge.loopexit.i.i:                         ; preds = %bb.af, %bb.s
  %.pre227.i.i = load ptr, ptr %2, align 8, !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.p
  %i.gk = phi ptr [ %.pre227.i.i, %._crit_edge.loopexit.i.i ], [ %i.df, %bb.p ]
  %i.gl = load i32, ptr %i.cy, align 8, !tbaa !51
  %i.gm = mul nsw i32 %i.gl, %.04494.i
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %i.gk, i64 %i.gn ; 4 uses
  %i.gp = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !50
  %i.gr = icmp eq i8 %i.gq, 0
  br i1 %i.gr, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %._crit_edge.i.i
  %i.gs = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !50
  %i.gu = add i8 %i.gt, 1
  store i8 %i.gu, ptr %.17793.i, align 1, !tbaa !50
  %i.gv = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !50
  %i.gx = zext i8 %i.gw to i32
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  store i8 1, ptr %.17793.i, align 1, !tbaa !50
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1183.i.i = phi i32 [ %i.gx, %bb.ag ], [ 0, %bb.ah ] ; 2 uses
  %.2.i = getelementptr inbounds nuw i8, ptr %.17793.i, i64 1 ; 2 uses
  %i.gy = icmp slt i32 %.1183.i.i, %i.de
  br i1 %i.gy, label %.lr.ph218.i.i, label %qtrle_encode_line.exit.i

.lr.ph218.i.i:                                    ; preds = %bb.ai, %bb.ap
  %i.gz = phi ptr [ %i.jk, %bb.ap ], [ %.2.i, %bb.ai ] ; 3 uses
  %.2184214.i.i = phi i32 [ %.3185.i.i, %bb.ap ], [ %.1183.i.i, %bb.ai ] ; 8 uses
  %i.ha = load ptr, ptr %i.dd, align 8, !tbaa !39
  %i.hb = sext i32 %.2184214.i.i to i64           ; 3 uses
  %i.hc = getelementptr inbounds i8, ptr %i.ha, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !50  ; 4 uses
  %i.he = sext i8 %i.hd to i32                    ; 5 uses
  store i8 %i.hd, ptr %i.gz, align 1, !tbaa !50
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 9 uses
  %i.hg = icmp eq i8 %i.hd, 0
  br i1 %i.hg, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph218.i.i
  %i.hh = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.hi = getelementptr inbounds i8, ptr %i.hh, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !50
  %i.hk = add i8 %i.hj, 1
  store i8 %i.hk, ptr %i.hf, align 1, !tbaa !50
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  %i.hm = load ptr, ptr %i.dc, align 8, !tbaa !40
  %i.hn = getelementptr inbounds i8, ptr %i.hm, i64 %i.hb
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !50
  %i.hp = zext i8 %i.ho to i32
  %i.hq = add nsw i32 %.2184214.i.i, %i.hp
  br label %bb.ap

bb.ak:                                            ; preds = %.lr.ph218.i.i
  %i.hr = icmp sgt i8 %i.hd, 0
  %i.hs = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 136
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !36
  %i.hv = icmp eq i32 %i.hu, 8                    ; 2 uses
  %i.hw = load i32, ptr %i.cz, align 8, !tbaa !37 ; 8 uses
  br i1 %i.hr, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  br i1 %i.hv, label %.preheader.i.i, label %bb.am

.preheader.i.i:                                   ; preds = %bb.al
  %i.hx = mul nsw i32 %i.hw, %i.he
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %.lr.ph213.i.i, label %.loopexit.i.i

.lr.ph213.i.i:                                    ; preds = %.preheader.i.i, %.lr.ph213.i.i
  %.8.i = phi ptr [ %i.ig, %.lr.ph213.i.i ], [ %i.hf, %.preheader.i.i ] ; 2 uses
  %indvars.iv224.i.i = phi i64 [ %indvars.iv.next225.i.i, %.lr.ph213.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %i.hz = phi i32 [ %i.ih, %.lr.ph213.i.i ], [ %i.hw, %.preheader.i.i ]
  %i.ia = mul nsw i32 %i.hz, %.2184214.i.i
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds i8, ptr %i.go, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %indvars.iv224.i.i
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !50
  %i.if = xor i8 %i.ie, -1
  store i8 %i.if, ptr %.8.i, align 1, !tbaa !50
  %i.ig = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  %indvars.iv.next225.i.i = add nuw nsw i64 %indvars.iv224.i.i, 1 ; 2 uses
  %i.ih = load i32, ptr %i.cz, align 8, !tbaa !37 ; 2 uses
  %i.ii = mul nsw i32 %i.ih, %i.he
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp slt i64 %indvars.iv.next225.i.i, %i.ij
  br i1 %i.ik, label %.lr.ph213.i.i, label %.loopexit.i.i, !llvm.loop !57

bb.am:                                            ; preds = %bb.al
  %i.il = mul nsw i32 %i.hw, %.2184214.i.i
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds i8, ptr %i.go, i64 %i.im
  %i.io = mul nsw i32 %i.hw, %i.he
  %i.ip = zext i32 %i.io to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hf, ptr align 1 %i.in, i64 %i.ip, i1 false)
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.ip
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph213.i.i, %bb.am, %.preheader.i.i
  %.7.i = phi ptr [ %i.iq, %bb.am ], [ %i.hf, %.preheader.i.i ], [ %i.ig, %.lr.ph213.i.i ]
  %i.ir = add nsw i32 %.2184214.i.i, %i.he
  br label %bb.ap

bb.an:                                            ; preds = %bb.ak
  br i1 %i.hv, label %.preheader198.i.i, label %bb.ao

.preheader198.i.i:                                ; preds = %bb.an
  %i.is = icmp sgt i32 %i.hw, 0
  br i1 %i.is, label %.lr.ph211.i.i, label %.loopexit199.i.i

.lr.ph211.i.i:                                    ; preds = %.preheader198.i.i, %.lr.ph211.i.i
  %.6.i = phi ptr [ %i.ja, %.lr.ph211.i.i ], [ %i.hf, %.preheader198.i.i ] ; 2 uses
  %indvars.iv221.i.i = phi i64 [ %indvars.iv.next222.i.i, %.lr.ph211.i.i ], [ 0, %.preheader198.i.i ] ; 2 uses
  %i.it = phi i32 [ %i.jb, %.lr.ph211.i.i ], [ %i.hw, %.preheader198.i.i ]
  %i.iu = mul nsw i32 %i.it, %.2184214.i.i
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr %i.go, i64 %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 %indvars.iv221.i.i
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !50
  %i.iz = xor i8 %i.iy, -1
  store i8 %i.iz, ptr %.6.i, align 1, !tbaa !50
  %i.ja = getelementptr inbounds nuw i8, ptr %.6.i, i64 1 ; 2 uses
  %indvars.iv.next222.i.i = add nuw nsw i64 %indvars.iv221.i.i, 1 ; 2 uses
  %i.jb = load i32, ptr %i.cz, align 8, !tbaa !37 ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next222.i.i, %i.jc
  br i1 %i.jd, label %.lr.ph211.i.i, label %.loopexit199.i.i, !llvm.loop !58

bb.ao:                                            ; preds = %bb.an
  %i.je = mul nsw i32 %i.hw, %.2184214.i.i
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr %i.go, i64 %i.jf
  %i.jh = zext i32 %i.hw to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hf, ptr align 1 %i.jg, i64 %i.jh, i1 false)
  %i.ji = getelementptr inbounds nuw i8, ptr %i.hf, i64 %i.jh
  br label %.loopexit199.i.i

.loopexit199.i.i:                                 ; preds = %.lr.ph211.i.i, %bb.ao, %.preheader198.i.i
  %.4.i = phi ptr [ %i.ji, %bb.ao ], [ %i.hf, %.preheader198.i.i ], [ %i.ja, %.lr.ph211.i.i ]
  %i.jj = sub nsw i32 %.2184214.i.i, %i.he
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit199.i.i, %.loopexit.i.i, %bb.aj
  %i.jk = phi ptr [ %i.hl, %bb.aj ], [ %.7.i, %.loopexit.i.i ], [ %.4.i, %.loopexit199.i.i ] ; 2 uses
  %.3185.i.i = phi i32 [ %i.hq, %bb.aj ], [ %i.ir, %.loopexit.i.i ], [ %i.jj, %.loopexit199.i.i ] ; 2 uses
  %i.jl = icmp slt i32 %.3185.i.i, %i.de
  br i1 %i.jl, label %.lr.ph218.i.i, label %qtrle_encode_line.exit.i, !llvm.loop !59

qtrle_encode_line.exit.i:                         ; preds = %bb.ap, %bb.ai
  %.9.i = phi ptr [ %.2.i, %bb.ai ], [ %i.jk, %bb.ap ] ; 2 uses
  store i8 -1, ptr %.9.i, align 1, !tbaa !50
  %i.jm = getelementptr inbounds nuw i8, ptr %.9.i, i64 1 ; 2 uses
  %i.jn = add nuw nsw i32 %.04494.i, 1            ; 2 uses
  %exitcond104.not.i = icmp eq i32 %i.jn, %.185.i
  br i1 %exitcond104.not.i, label %encode_frame.exit, label %bb.n, !llvm.loop !60

encode_frame.exit:                                ; preds = %qtrle_encode_line.exit.i, %bb.m
  %.177.lcssa.i = phi ptr [ %.076.i, %bb.m ], [ %i.jm, %qtrle_encode_line.exit.i ] ; 2 uses
  store i8 0, ptr %.177.lcssa.i, align 1, !tbaa !50
  %i.jo = getelementptr inbounds nuw i8, ptr %.177.lcssa.i, i64 1
  %i.jp = ptrtoint ptr %i.jo to i64
  %i.jq = ptrtoint ptr %i.cv to i64
  %i.jr = sub i64 %i.jp, %i.jq
end_hunk_0
