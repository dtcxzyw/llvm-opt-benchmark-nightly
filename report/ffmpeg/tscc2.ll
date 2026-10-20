Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tscc2?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@tscc2_decode_frame:bb.a
  br i1 %.not235, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader204
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  br label %bb.j

bb.i:                                             ; preds = %bytestream2_get_le32.exit130
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.6) #7
  br label %.thread

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.095225 = phi i32 [ 0, %.lr.ph ], [ %i.bs, %bb.m ] ; 2 uses
  %.1224 = phi i32 [ 0, %.lr.ph ], [ %i.ca, %bb.m ]
  %.sroa.0.0223 = phi ptr [ %i.bh, %.lr.ph ], [ %.sroa.0.4, %bb.m ] ; 3 uses
  %i.bl = ptrtoint ptr %.sroa.0.0223 to i64
  %i.bm = sub i64 %i.p, %i.bl
  %i.bn = icmp slt i64 %i.bm, 1
  br i1 %i.bn, label %bytestream2_get_byte.exit120, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.0223, i64 1
  %i.bp = load i8, ptr %.sroa.0.0223, align 1, !tbaa !58
  %i.bq = zext i8 %i.bp to i32
  br label %bytestream2_get_byte.exit120

bytestream2_get_byte.exit120:                     ; preds = %bb.j, %bb.k
  %.sroa.0.4 = phi ptr [ %i.bo, %bb.k ], [ %i.o, %bb.j ] ; 2 uses
  %.0.i119 = phi i32 [ %i.bq, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.br = and i32 %.0.i119, 63                    ; 2 uses
  %i.bs = add nuw nsw i32 %i.br, %.095225         ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, %i.k
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bytestream2_get_byte.exit120
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %.thread

bb.m:                                             ; preds = %bytestream2_get_byte.exit120
  %i.bu = lshr i32 %.0.i119, 6
  %i.bv = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.bw = zext nneg i32 %.095225 to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bw
  %i.by = trunc nuw nsw i32 %i.bu to i8
  %i.bz = zext nneg i32 %i.br to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bx, i8 %i.by, i64 %i.bz, i1 false)
  %i.ca = add nuw i32 %.1224, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %i.ca, %i.bi
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !46

._crit_edge:                                      ; preds = %bb.m, %.preheader205, %.preheader204
  %.sroa.0.0.lcssa = phi ptr [ %i.bh, %.preheader204 ], [ %i.o, %.preheader205 ], [ %.sroa.0.4, %bb.m ]
  %.095.lcssa = phi i32 [ 0, %.preheader204 ], [ 0, %.preheader205 ], [ %i.bs, %bb.m ] ; 2 uses
  %i.cb = icmp slt i32 %.095.lcssa, %i.k
  br i1 %i.cb, label %bb.n, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.cc = load i32, ptr %i.i, align 4, !tbaa !34  ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph233, label %._crit_edge234

.lr.ph233:                                        ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 20 uses
  %i.cg = getelementptr i8, ptr %i.f, i64 76      ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 20 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 44 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.f, i64 92 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 124
  %i.cq = getelementptr inbounds nuw i8, ptr %i.f, i64 140
  %i.cr = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.cs = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  %i.cx = getelementptr inbounds nuw i8, ptr %i.f, i64 132
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 148
  br label %bb.o

bb.n:                                             ; preds = %._crit_edge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, i32 noundef %.095.lcssa, i32 noundef %i.k) #7
  br label %.thread

bb.o:                                             ; preds = %.lr.ph233, %tscc2_decode_slice.exit
  %i.cz = phi i32 [ %i.cc, %.lr.ph233 ], [ %i.aeo, %tscc2_decode_slice.exit ]
  %.2232 = phi i32 [ 0, %.lr.ph233 ], [ %i.aer, %tscc2_decode_slice.exit ] ; 5 uses
  %.sroa.0.1231 = phi ptr [ %.sroa.0.0.lcssa, %.lr.ph233 ], [ %i.aeq, %tscc2_decode_slice.exit ] ; 5 uses
  %i.da = ptrtoint ptr %.sroa.0.1231 to i64
  %i.db = sub i64 %i.p, %i.da                     ; 2 uses
  %i.dc = icmp slt i64 %i.db, 1
  br i1 %i.dc, label %bytestream2_get_le32.exit.thread, label %bytestream2_peek_byte.exit

bytestream2_peek_byte.exit:                       ; preds = %bb.o
  %i.dd = load i8, ptr %.sroa.0.1231, align 1, !tbaa !58 ; 2 uses
  %i.de = and i8 %i.dd, 1
  %.not = icmp eq i8 %i.de, 0
  br i1 %.not, label %bb.p, label %bytestream2_get_byte.exit

bytestream2_get_byte.exit:                        ; preds = %bytestream2_peek_byte.exit
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.1231, i64 1
  %i.dg = zext i8 %i.dd to i32
  %i.dh = add nsw i32 %i.dg, -1
  br label %bytestream2_get_le32.exit

bb.p:                                             ; preds = %bytestream2_peek_byte.exit
  %i.di = icmp samesign ult i64 %i.db, 4
  br i1 %i.di, label %bytestream2_get_le32.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.0.1231, i64 4
  %i.dk = load i32, ptr %.sroa.0.1231, align 1, !tbaa !58
  %i.dl = lshr i32 %i.dk, 1
  br label %bytestream2_get_le32.exit

bytestream2_get_le32.exit:                        ; preds = %bb.q, %bytestream2_get_byte.exit
  %.sroa.0.2 = phi ptr [ %i.df, %bytestream2_get_byte.exit ], [ %i.dj, %bb.q ] ; 2 uses
  %.097 = phi i32 [ %i.dh, %bytestream2_get_byte.exit ], [ %i.dl, %bb.q ] ; 2 uses
  %.not112 = icmp eq i32 %.097, 0
  br i1 %.not112, label %bytestream2_get_le32.exit.thread, label %.critedge118

bytestream2_get_le32.exit.thread:                 ; preds = %bb.o, %bb.p, %bytestream2_get_le32.exit
  %.sroa.0.2294 = phi ptr [ %.sroa.0.2, %bytestream2_get_le32.exit ], [ %i.o, %bb.p ], [ %i.o, %bb.o ] ; 2 uses
  %i.dm = load i32, ptr %i.g, align 8, !tbaa !33  ; 3 uses
  %.not114227 = icmp sgt i32 %i.dm, 0
  br i1 %.not114227, label %.lr.ph230, label %.critedge118

.lr.ph230:                                        ; preds = %bytestream2_get_le32.exit.thread
  %i.dn = mul nuw nsw i32 %i.dm, %.2232
  %i.do = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.dp = zext nneg i32 %i.dn to i64
  %wide.trip.count = zext nneg i32 %i.dm to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dp
  br label %bb.s

bb.r:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond263.not, label %.critedge118, label %bb.s, !llvm.loop !47

bb.s:                                             ; preds = %.lr.ph230, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph230 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.dq = load i8, ptr %gep, align 1, !tbaa !58
  %.off = add i8 %i.dq, -1
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %.critedge, label %bb.r

.critedge:                                        ; preds = %bb.s
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9) #7
  br label %.thread

.critedge118:                                     ; preds = %bb.r, %bytestream2_get_le32.exit.thread, %bytestream2_get_le32.exit
  %.097295 = phi i32 [ %.097, %bytestream2_get_le32.exit ], [ 0, %bytestream2_get_le32.exit.thread ], [ 0, %bb.r ] ; 5 uses
  %.sroa.0.2293 = phi ptr [ %.sroa.0.2, %bytestream2_get_le32.exit ], [ %.sroa.0.2294, %bytestream2_get_le32.exit.thread ], [ %.sroa.0.2294, %bb.r ] ; 2 uses
  %i.dr = ptrtoint ptr %.sroa.0.2293 to i64       ; 2 uses
  %i.ds = sub i64 %i.p, %i.dr                     ; 2 uses
  %i.dt = trunc i64 %i.ds to i32                  ; 2 uses
  %i.du = icmp ugt i32 %.097295, %i.dt
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge118
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %.097295, i32 noundef %i.dt) #7
  br label %.thread

bb.u:                                             ; preds = %.critedge118
  %i.dv = sub i64 %i.dr, %i.q
  %i.dw = shl i64 %i.dv, 32
  %i.dx = ashr exact i64 %i.dw, 32
  %i.dy = getelementptr inbounds i8, ptr %i.b, i64 %i.dx
  %or.cond.i.i = icmp ugt i32 %.097295, 268435455
  %i.dz = shl nuw nsw i32 %.097295, 3
  %i.ea = select i1 %or.cond.i.i, i32 -8, i32 %i.dz ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.ea, 2147483135 ; 3 uses
  %.014.i.i.i = select i1 %or.cond.i.i.i, ptr %i.dy, ptr null
  %.013.i.i.i = select i1 %or.cond.i.i.i, i32 %i.ea, i32 0 ; 2 uses
  store ptr %.014.i.i.i, ptr %i.cf, align 8, !tbaa !61
  store i32 %.013.i.i.i, ptr %i.cg, align 4, !tbaa !62
  %i.eb = add nuw nsw i32 %.013.i.i.i, 8
  store i32 %i.eb, ptr %i.ch, align 8, !tbaa !63
  store i32 0, ptr %i.ci, align 8, !tbaa !64
  br i1 %or.cond.i.i.i, label %.preheader71.i, label %.loopexit

.preheader71.i:                                   ; preds = %bb.u
  %i.ec = load i32, ptr %i.g, align 8, !tbaa !33  ; 2 uses
  %i.ed = icmp sgt i32 %i.ec, 0
  br i1 %i.ed, label %.lr.ph.i, label %tscc2_decode_slice.exit

.lr.ph.i:                                         ; preds = %.preheader71.i
  %i.ee = shl nuw nsw i32 %.2232, 3
  br label %bb.v

bb.v:                                             ; preds = %.loopexit69.i, %.lr.ph.i
  %i.ef = phi i32 [ %i.ec, %.lr.ph.i ], [ %i.ael, %.loopexit69.i ] ; 3 uses
  %.075.i = phi i32 [ 0, %.lr.ph.i ], [ %i.aem, %.loopexit69.i ] ; 3 uses
  %i.eg = load ptr, ptr %i.ce, align 8, !tbaa !35
  %i.eh = mul nsw i32 %i.ef, %.2232
  %i.ei = add nsw i32 %i.eh, %.075.i
  %i.ej = sext i32 %i.ei to i64
  %i.ek = getelementptr inbounds i8, ptr %i.eg, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !58  ; 2 uses
  switch i8 %i.el, label %.preheader.i [
    i8 3, label %.loopexit69.i
    i8 0, label %.loopexit69.i
  ]

.preheader.i:                                     ; preds = %bb.v
  %i.em = zext i8 %i.el to i64
  %i.en = shl nuw nsw i32 %.075.i, 4
  %i.eo = add nsw i64 %i.em, -1                   ; 2 uses
  %i.ep = getelementptr inbounds [12 x i8], ptr %i.am, i64 %i.eo ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.eo
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.et = load ptr, ptr %i.x, align 8, !tbaa !36  ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !37 ; 5 uses
  %i.ex = mul nsw i32 %i.ee, %i.ew
  %i.ey = add nsw i32 %i.ex, %i.en
  %i.ez = load i32, ptr %i.eq, align 4, !tbaa !37
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %indvars.iv.i
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !65
  %i.fc = sext i32 %i.ey to i64
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 %i.fc ; 4 uses
  %i.fe = load i32, ptr %i.ci, align 8, !tbaa !64 ; 4 uses
  %i.ff = load ptr, ptr %i.cf, align 8, !tbaa !61 ; 3 uses
  %i.fg = lshr i32 %i.fe, 3
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !58
  %i.fk = load i32, ptr %i.ch, align 8, !tbaa !63 ; 3 uses
  %i.fl = icmp slt i32 %i.fe, %i.fk
  %i.fm = zext i1 %i.fl to i32
  %spec.select.i.i.i = add i32 %i.fe, %i.fm       ; 5 uses
  %i.fn = zext i8 %i.fj to i32
  %i.fo = and i32 %i.fe, 7
  store i32 %spec.select.i.i.i, ptr %i.ci, align 8, !tbaa !64
  %i.fp = shl nuw nsw i32 1, %i.fo
  %i.fq = and i32 %i.fp, %i.fn
  %.not.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i, label %.preheader112.i.i, label %bb.x

.preheader112.i.i:                                ; preds = %bb.w
  %i.fr = add nsw i32 %i.ez, -2
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds [24 x i8], ptr @nc_vlc, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds [24 x i8], ptr @ac_vlc, i64 %i.fs
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = sext i32 %i.ew to i64                   ; 3 uses
  %i.fy = shl nsw i32 %i.ew, 2
  %i.fz = sext i32 %i.fy to i64
  br label %.preheader.i.i

bb.x:                                             ; preds = %bb.w
  %i.ga = lshr i32 %spec.select.i.i.i, 3
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !58
  %i.ge = icmp slt i32 %spec.select.i.i.i, %i.fk
  %i.gf = zext i1 %i.ge to i32
  %spec.select.i84.i.i = add i32 %spec.select.i.i.i, %i.gf ; 5 uses
  %i.gg = zext i8 %i.gd to i32
  %i.gh = and i32 %spec.select.i.i.i, 7
  store i32 %spec.select.i84.i.i, ptr %i.ci, align 8, !tbaa !64
  %i.gi = shl nuw nsw i32 1, %i.gh
  %i.gj = and i32 %i.gi, %i.gg
  %.not75.i.i = icmp eq i32 %i.gj, 0
  br i1 %.not75.i.i, label %bb.y, label %.loopexit.loopexit136.i.i

.loopexit.loopexit136.i.i:                        ; preds = %bb.x
  %i.gk = lshr i32 %spec.select.i84.i.i, 3
  %i.gl = zext nneg i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 1, !tbaa !58
  %i.go = and i32 %spec.select.i84.i.i, 7
  %i.gp = lshr i32 %i.gn, %i.go
  %i.gq = add i32 %spec.select.i84.i.i, 8
  %i.gr = tail call i32 @llvm.umin.i32(i32 %i.fk, i32 %i.gq)
  store i32 %i.gr, ptr %i.ci, align 8, !tbaa !64
  %i.gs = trunc i32 %i.gp to i8                   ; 8 uses
  %i.gt = sext i32 %i.ew to i64                   ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fd, i8 %i.gs, i64 16, i1 false)
  %i.gu = getelementptr inbounds i8, ptr %i.fd, i64 %i.gt ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gu, i8 %i.gs, i64 16, i1 false)
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.gt ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gv, i8 %i.gs, i64 16, i1 false)
  %i.gw = getelementptr inbounds i8, ptr %i.gv, i64 %i.gt ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gw, i8 %i.gs, i64 16, i1 false)
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 %i.gt ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gx, i8 %i.gs, i64 16, i1 false)
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 %i.gt ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gy, i8 %i.gs, i64 16, i1 false)
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %i.gt ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gz, i8 %i.gs, i64 16, i1 false)
  %i.ha = getelementptr inbounds i8, ptr %i.gz, i64 %i.gt
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ha, i8 %i.gs, i64 16, i1 false)
  br label %.loopexit.i

bb.y:                                             ; preds = %bb.x
  %.val83.i.i = load i32, ptr %i.cg, align 4, !tbaa !62
  %i.hb = sub nsw i32 %.val83.i.i, %spec.select.i84.i.i
  %i.hc = icmp slt i32 %i.hb, 1024
  br i1 %i.hc, label %.loopexit, label %.preheader115.i.i

.preheader115.i.i:                                ; preds = %bb.y
  %i.hd = sext i32 %i.ew to i64
  br label %.preheader114.i.i

.preheader114.i.i:                                ; preds = %.preheader114.i.i, %.preheader115.i.i
  %.162123.i.i = phi i32 [ 0, %.preheader115.i.i ], [ %i.pe, %.preheader114.i.i ]
  %.170122.i.i = phi ptr [ %i.fd, %.preheader115.i.i ], [ %i.pd, %.preheader114.i.i ] ; 17 uses
  %i.he = load i32, ptr %i.ci, align 8, !tbaa !64 ; 3 uses
  %i.hf = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.hg = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.hh = lshr i32 %i.he, 3
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hi
  %i.hk = load i32, ptr %i.hj, align 1, !tbaa !58
  %i.hl = and i32 %i.he, 7
  %i.hm = lshr i32 %i.hk, %i.hl
  %i.hn = add i32 %i.he, 8
  %i.ho = tail call i32 @llvm.umin.i32(i32 %i.hf, i32 %i.hn)
  store i32 %i.ho, ptr %i.ci, align 8, !tbaa !64
  %i.hp = trunc i32 %i.hm to i8
  store i8 %i.hp, ptr %.170122.i.i, align 1, !tbaa !58
  %i.hq = load i32, ptr %i.ci, align 8, !tbaa !64 ; 3 uses
  %i.hr = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.hs = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.ht = lshr i32 %i.hq, 3
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 1, !tbaa !58
  %i.hx = and i32 %i.hq, 7
  %i.hy = lshr i32 %i.hw, %i.hx
  %i.hz = add i32 %i.hq, 8
  %i.ia = tail call i32 @llvm.umin.i32(i32 %i.hr, i32 %i.hz)
  store i32 %i.ia, ptr %i.ci, align 8, !tbaa !64
  %i.ib = trunc i32 %i.hy to i8
  %i.ic = getelementptr inbounds nuw i8, ptr %.170122.i.i, i64 1
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !58
  %i.id = load i32, ptr %i.ci, align 8, !tbaa !64 ; 3 uses
  %i.ie = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.if = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.ig = lshr i32 %i.id, 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ih
  %i.ij = load i32, ptr %i.ii, align 1, !tbaa !58
  %i.ik = and i32 %i.id, 7
  %i.il = lshr i32 %i.ij, %i.ik
  %i.im = add i32 %i.id, 8
  %i.in = tail call i32 @llvm.umin.i32(i32 %i.ie, i32 %i.im)
  store i32 %i.in, ptr %i.ci, align 8, !tbaa !64
  %i.io = trunc i32 %i.il to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %.170122.i.i, i64 2
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !58
  %i.iq = load i32, ptr %i.ci, align 8, !tbaa !64 ; 3 uses
  %i.ir = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.is = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.it = lshr i32 %i.iq, 3
  %i.iu = zext nneg i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iu
  %i.iw = load i32, ptr %i.iv, align 1, !tbaa !58
  %i.ix = and i32 %i.iq, 7
  %i.iy = lshr i32 %i.iw, %i.ix
  %i.iz = add i32 %i.iq, 8
  %i.ja = tail call i32 @llvm.umin.i32(i32 %i.ir, i32 %i.iz)
  store i32 %i.ja, ptr %i.ci, align 8, !tbaa !64
  %i.jb = trunc i32 %i.iy to i8
  %i.jc = getelementptr inbounds nuw i8, ptr %.170122.i.i, i64 3
  store i8 %i.jb, ptr %i.jc, align 1, !tbaa !58
  %i.jd = load i32, ptr %i.ci, align 8, !tbaa !64 ; 3 uses
  %i.je = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.jf = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.jg = lshr i32 %i.jd, 3
  %i.jh = zext nneg i32 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.jh
  %i.jj = load i32, ptr %i.ji, align 1, !tbaa !58
  %i.jk = and i32 %i.jd, 7
  %i.jl = lshr i32 %i.jj, %i.jk
  %i.jm = add i32 %i.jd, 8
  %i.jn = tail call i32 @llvm.umin.i32(i32 %i.je, i32 %i.jm)
  store i32 %i.jn, ptr %i.ci, align 8, !tbaa !64
  %i.jo = trunc i32 %i.jl to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %.170122.i.i, i64 4
  store i8 %i.jo, ptr %i.jp, align 1, !tbaa !58
  %i.jq = load i32, ptr %i.ci, align 8, !tbaa !64 ; 3 uses
  %i.jr = load i32, ptr %i.ch, align 8, !tbaa !63
  %i.js = load ptr, ptr %i.cf, align 8, !tbaa !61
  %i.jt = lshr i32 %i.jq, 3
  %i.ju = zext nneg i32 %i.jt to i64
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 %i.ju
end_hunk_0
