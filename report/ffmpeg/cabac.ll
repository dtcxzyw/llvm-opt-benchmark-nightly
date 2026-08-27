Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cabac?download=true
inline.NumInlined: 172
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@ff_vvc_residual_coding:bb.a
  %i.q = load i32, ptr %i.p, align 8, !tbaa !181  ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2064
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !90
  %i.v = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.q)
  %i.w = icmp slt i32 %i.v, 2
  %i.x = select i1 %i.w, i32 1, i32 2             ; 4 uses
  %i.y = add nsw i32 %i.q, %i.o                   ; 3 uses
  %i.z = icmp sgt i32 %i.y, 3
  br i1 %i.z, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp slt i32 %i.o, 2
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = sub nsw i32 4, %i.o
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ac = icmp slt i32 %i.q, 2                    ; 2 uses
  %i.ad = sub nsw i32 4, %i.q
  %spec.select.i.i = select i1 %i.ac, i32 %i.ad, i32 %i.x
  %spec.select69.i.i = select i1 %i.ac, i32 %i.q, i32 %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.065.i.i = phi i32 [ %i.o, %bb.e ], [ %i.x, %bb.c ], [ %spec.select.i.i, %bb.f ] ; 4 uses
  %.0.i.i = phi i32 [ %i.ab, %bb.e ], [ %i.x, %bb.c ], [ %spec.select69.i.i, %bb.f ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store i32 %.065.i.i, ptr %i.ae, align 8, !tbaa !182
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  store i32 %.0.i.i, ptr %i.af, align 4, !tbaa !185
  %i.ag = add nsw i32 %.0.i.i, %.065.i.i          ; 2 uses
  %i.ah = shl nuw i32 1, %i.ag                    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !186
  %i.aj = sub nsw i32 %i.y, %i.ag
  %notmask.i.i = shl nsw i32 -1, %i.aj
  %i.ak = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !187
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !102
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 46526
  %i.ao = load i8, ptr %i.an, align 2, !tbaa !103 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i, label %.lr.ph44.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.aq = load ptr, ptr %i.ap, align 16, !tbaa !85
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !188
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !139
  %i.ax = shl nuw i32 1, %i.aw
  br label %.lr.ph44.i

.lr.ph44.i:                                       ; preds = %bb.h, %bb.g
  %i.ay = phi i32 [ %i.ax, %bb.h ], [ 0, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !189
  %.not68.i.i = icmp ne i8 %i.ao, 0
  %i.ba = zext i1 %.not68.i.i to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !190
  %i.bc = shl i32 7, %i.y
  %i.bd = ashr i32 %i.bc, 2
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 13 uses
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !191
  %i.bf = sub nsw i32 %i.o, %.065.i.i             ; 2 uses
  %i.bg = sext i32 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds [1280 x i8], ptr @ff_vvc_diag_scan_x, i64 %i.bg
  %i.bi = sub nsw i32 %i.q, %.0.i.i               ; 3 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [256 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !192
  %i.bm = getelementptr inbounds [1280 x i8], ptr @ff_vvc_diag_scan_y, i64 %i.bg
  %i.bn = getelementptr inbounds [256 x i8], ptr %i.bm, i64 %i.bj
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !193
  %i.bp = sext i32 %.065.i.i to i64               ; 2 uses
  %i.bq = getelementptr inbounds [1280 x i8], ptr @ff_vvc_diag_scan_x, i64 %i.bp
  %i.br = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bs = getelementptr inbounds [256 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 4 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !194
  %i.bu = getelementptr inbounds [1280 x i8], ptr @ff_vvc_diag_scan_y, i64 %i.bp
  %i.bv = getelementptr inbounds [256 x i8], ptr %i.bu, i64 %i.br
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 4 uses
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !195
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 49488 ; 3 uses
  store i8 1, ptr %i.bx, align 8, !tbaa !196
  %i.by = shl nuw i32 1, %i.bf                    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !197
  %i.ca = shl nuw i32 1, %i.bi
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ca, ptr %i.cb, align 8, !tbaa !198
  %i.cc = shl i32 %i.by, %i.bi
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !199
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 65880
  store i32 %i.ah, ptr %i.ce, align 8, !tbaa !200
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 65876
  store i32 0, ptr %i.cf, align 4, !tbaa !201
  store ptr %1, ptr %3, align 8, !tbaa !202
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 336 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16720 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 49492 ; 3 uses
  %i.cl = getelementptr i8, ptr %0, i64 96        ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 33104
  br label %bb.i

bb.i:                                             ; preds = %residual_ts_coding_subblock.exit.i, %.lr.ph44.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph44.i ], [ %indvars.iv.next.i, %residual_ts_coding_subblock.exit.i ] ; 7 uses
  %i.cn = phi i32 [ %i.ak, %.lr.ph44.i ], [ %i.ahu, %residual_ts_coding_subblock.exit.i ]
  %i.co = load ptr, ptr %i.cg, align 16, !tbaa !140
  %i.cp = load ptr, ptr %3, align 8, !tbaa !202   ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 72 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !188
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !139
  %i.cw = load ptr, ptr %i.bl, align 8, !tbaa !192
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %indvars.iv.i
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !114 ; 2 uses
  %i.cz = zext i8 %i.cy to i32                    ; 4 uses
  %i.da = load ptr, ptr %i.bo, align 8, !tbaa !193
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.i
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !114
  %i.dd = zext i8 %i.dc to i32                    ; 5 uses
  %i.de = load i32, ptr %i.bz, align 4, !tbaa !197
  %i.df = mul nsw i32 %i.de, %i.dd
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds i8, ptr %i.ch, i64 %i.dg
  %i.di = zext i8 %i.cy to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.dk = zext i32 %i.cn to i64
  %.not.i19.i = icmp ne i64 %indvars.iv.i, %i.dk
  %i.dl = load i8, ptr %i.bx, align 8
  %.not238.i.i = icmp eq i8 %i.dl, 0
  %or.cond.i = select i1 %.not.i19.i, i1 true, i1 %.not238.i.i
  br i1 %or.cond.i, label %bb.j, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.i
  store i8 1, ptr %i.dj, align 1, !tbaa !114
  %.old.i = load i32, ptr %i.al, align 8, !tbaa !187
  %i.dm = sext i32 %.old.i to i64
  %.old22.i = icmp slt i64 %indvars.iv.i, %i.dm
  br i1 %.old22.i, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.dn = call fastcc i32 @sb_coded_flag_decode(ptr noundef nonnull readonly %0, ptr noundef %i.dj, ptr noundef nonnull %3, i32 noundef %i.cz, i32 noundef %i.dd) ; 2 uses
  %i.do = trunc nuw nsw i32 %i.dn to i8
  store i8 %i.do, ptr %i.dj, align 1, !tbaa !114
  %.not239.i.i = icmp ne i32 %i.dn, 0
  %i.dp = load i32, ptr %i.al, align 8
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.i, %i.dq
  %or.cond23.i = select i1 %.not239.i.i, i1 %i.dr, i1 false
  br i1 %or.cond23.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %.thread.i.i
  store i8 0, ptr %i.bx, align 8, !tbaa !196
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.thread.i.i
  %i.ds = load i32, ptr %i.ai, align 4, !tbaa !186 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph.i.i, label %residual_ts_coding_subblock.exit.i

.lr.ph.i.i:                                       ; preds = %bb.l
  %i.du = getelementptr inbounds nuw i8, ptr %i.cp, i64 12 ; 4 uses
  %i.dv = load i32, ptr %i.be, align 8, !tbaa !191
  %i.dw = icmp sgt i32 %i.dv, 3
  br i1 %i.dw, label %.lr.ph.i, label %.lr.ph290.i.thread.i

.lr.ph290.i.thread.i:                             ; preds = %.lr.ph.i.i
  %.pre73.i = load ptr, ptr %i.bt, align 8, !tbaa !194
  %.pre4974.i = load ptr, ptr %i.bw, align 8, !tbaa !195
  br label %.critedge5.i.i

bb.m:                                             ; preds = %bb.an
  %i.dx = load i32, ptr %i.be, align 8, !tbaa !191
  %i.dy = icmp sgt i32 %i.dx, 3
  br i1 %i.dy, label %.lr.ph.i, label %.critedge.i.i, !llvm.loop !203

.lr.ph.i:                                         ; preds = %.lr.ph.i.i, %bb.m
  %.0225280.i32.i = phi i32 [ %.1226.i.i, %bb.m ], [ 1, %.lr.ph.i.i ] ; 4 uses
  %i.dz = phi i32 [ %i.qj, %bb.m ], [ %i.ds, %.lr.ph.i.i ]
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i.i, %bb.m ], [ 0, %.lr.ph.i.i ] ; 8 uses
  %i.ea = load i32, ptr %i.ae, align 8, !tbaa !182
  %i.eb = shl i32 %i.cz, %i.ea
  %i.ec = load ptr, ptr %i.bt, align 8, !tbaa !194
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %indvars.iv.i31.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !114
  %i.ef = zext i8 %i.ee to i32
  %i.eg = add nsw i32 %i.eb, %i.ef                ; 5 uses
  %i.eh = load i32, ptr %i.af, align 4, !tbaa !185
  %i.ei = shl i32 %i.dd, %i.eh
  %i.ej = load ptr, ptr %i.bw, align 8, !tbaa !195
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.i31.i
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !114
  %i.em = zext i8 %i.el to i32
  %i.en = add nsw i32 %i.ei, %i.em                ; 6 uses
  %i.eo = load i32, ptr %i.du, align 4, !tbaa !204
  %i.ep = mul nsw i32 %i.en, %i.eo
  %i.eq = add nsw i32 %i.ep, %i.eg
  %i.er = sext i32 %i.eq to i64                   ; 3 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.er ; 4 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.er
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.er ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i31.i ; 2 uses
  store i32 0, ptr %i.ev, align 4, !tbaa !139
  %i.ew = load i8, ptr %i.dj, align 1, !tbaa !114 ; 2 uses
  %.not250.i.i = icmp eq i8 %i.ew, 0
  %.pre311.i.i = add nsw i32 %i.dz, -1
  %.pre312.i.i = zext i32 %.pre311.i.i to i64
  %i.ex = icmp eq i64 %indvars.iv.i31.i, %.pre312.i.i ; 2 uses
  br i1 %.not250.i.i, label %._crit_edge310.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %i.ey = icmp ne i32 %.0225280.i32.i, 0
  %or.cond.i.i = select i1 %i.ex, i1 %i.ey, i1 false
  br i1 %or.cond.i.i, label %._crit_edge310.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ez = call fastcc i32 @sig_coeff_flag_decode(ptr noundef readonly %0, ptr noundef nonnull %3, i32 noundef %i.eg, i32 noundef %i.en)
  store i32 %i.ez, ptr %i.es, align 4, !tbaa !139
  %i.fa = load i32, ptr %i.be, align 8, !tbaa !191
  %i.fb = add nsw i32 %i.fa, -1
  store i32 %i.fb, ptr %i.be, align 8, !tbaa !191
  %i.fc = load i32, ptr %i.es, align 4, !tbaa !139 ; 2 uses
  %.not251.i.i = icmp eq i32 %i.fc, 0
  %spec.select.i21.i = select i1 %.not251.i.i, i32 %.0225280.i32.i, i32 0
  br label %bb.p

._crit_edge310.i.i:                               ; preds = %bb.n, %.lr.ph.i
  %.pre-phi313.i.i = phi i1 [ true, %bb.n ], [ %i.ex, %.lr.ph.i ]
  %i.fd = icmp ne i32 %.0225280.i32.i, 0
  %or.cond3.i.i = select i1 %.pre-phi313.i.i, i1 %i.fd, i1 false
  %i.fe = icmp ne i8 %i.ew, 0
  %narrow.i.i = and i1 %i.fe, %or.cond3.i.i
  %i.ff = zext i1 %narrow.i.i to i32              ; 2 uses
  store i32 %i.ff, ptr %i.es, align 4, !tbaa !139
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge310.i.i, %bb.o
  %i.fg = phi i32 [ %i.fc, %bb.o ], [ %i.ff, %._crit_edge310.i.i ]
  %.1226.i.i = phi i32 [ %spec.select.i21.i, %bb.o ], [ %.0225280.i32.i, %._crit_edge310.i.i ]
  store i32 0, ptr %i.eu, align 4, !tbaa !139
  %.not252.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not252.i.i, label %bb.an, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fh = load ptr, ptr %3, align 8, !tbaa !202   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 12 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !204 ; 2 uses
  %i.fk = mul nsw i32 %i.fj, %i.en
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.fl
  %i.fn = sext i32 %i.eg to i64                   ; 2 uses
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fm, i64 %i.fn ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fp = getelementptr inbounds i8, ptr %i.fo, i64 -4
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.fr = phi i32 [ %i.fq, %bb.r ], [ 0, %bb.q ]  ; 2 uses
  %.not24.i.i.i = icmp eq i32 %i.en, 0
  br i1 %.not24.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fs = sub nsw i32 0, %i.fj
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fo, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !139
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fw = phi i32 [ %i.fv, %bb.t ], [ 0, %bb.s ]  ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !188
  %i.fz = zext i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !139 ; 2 uses
  %i.gc = sub nsw i32 0, %i.fw
  %i.gd = icmp eq i32 %i.fr, %i.gc
  br i1 %i.gd, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not27.i.i.i = icmp eq i32 %i.gb, 0
  %i.ge = select i1 %.not27.i.i.i, i64 0, i64 3
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.gf = or i32 %i.fw, %i.fr
  %or.cond.i.i.i = icmp sgt i32 %i.gf, -1
  %.not26.i.i.i = icmp eq i32 %i.gb, 0            ; 2 uses
  br i1 %or.cond.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gg = select i1 %.not26.i.i.i, i64 1, i64 4
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.gh = select i1 %.not26.i.i.i, i64 2, i64 5
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v
  %.0.i.i.i = phi i64 [ %i.ge, %bb.v ], [ %i.gg, %bb.x ], [ %i.gh, %bb.y ]
  %i.gi = load ptr, ptr %i.cl, align 16, !tbaa !85 ; 14 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24 ; 8 uses
  %i.gk = getelementptr i8, ptr %i.gi, i64 2288
  %i.gl = getelementptr [6 x i8], ptr %i.gk, i64 %.0.i.i.i ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 28 ; 5 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !117 ; 2 uses
  %i.go = ashr i32 %i.gn, 5
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 2 ; 2 uses
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !76
  %i.gr = zext i16 %i.gq to i32                   ; 3 uses
  %i.gs = load i16, ptr %i.gl, align 2, !tbaa !76
  %i.gt = zext i16 %i.gs to i32                   ; 3 uses
  %i.gu = shl nuw nsw i32 %i.gt, 4
  %i.gv = add nuw nsw i32 %i.gu, %i.gr            ; 3 uses
  %i.gw = lshr i32 %i.gv, 14                      ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.gw, 0
  %i.gx = sub nsw i32 32767, %i.gv
  %i.gy = select i1 %.not.i.i.i.i, i32 %i.gv, i32 %i.gx
  %i.gz = ashr i32 %i.gy, 9
  %i.ha = mul nsw i32 %i.gz, %i.go
  %i.hb = ashr i32 %i.ha, 1
  %i.hc = add nsw i32 %i.hb, 4                    ; 2 uses
  %i.hd = sub nsw i32 %i.gn, %i.hc                ; 2 uses
  %i.he = shl i32 %i.hd, 17                       ; 2 uses
  %i.hf = load i32, ptr %i.gj, align 8, !tbaa !88 ; 2 uses
  %i.hg = icmp slt i32 %i.he, %i.hf               ; 3 uses
  %i.hh = select i1 %i.hg, i32 %i.he, i32 0
  %i.hi = sub nsw i32 %i.hf, %i.hh
  %i.hj = select i1 %i.hg, i32 %i.hc, i32 %i.hd   ; 2 uses
  %i.hk = sext i32 %i.hj to i64
  %i.hl = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.hk
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !114
  %i.hn = zext i8 %i.hm to i32                    ; 2 uses
  %i.ho = shl i32 %i.hj, %i.hn
  store i32 %i.ho, ptr %i.gm, align 4, !tbaa !117
  %i.hp = shl i32 %i.hi, %i.hn                    ; 5 uses
  store i32 %i.hp, ptr %i.gj, align 8, !tbaa !88
  %i.hq = and i32 %i.hp, 65535
  %.not42.i.i.i.i = icmp eq i32 %i.hq, 0
  br i1 %.not42.i.i.i.i, label %bb.aa, label %coeff_sign_flag_ts_decode.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.hr = add nsw i32 %i.hp, -32768
  %i.hs = xor i32 %i.hr, %i.hp
  %i.ht = lshr exact i32 %i.hs, 15
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !114
  %i.hx = zext i8 %i.hw to i32
  %i.hy = sub nsw i32 7, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !86 ; 4 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !114
  %i.ic = zext i8 %i.ib to i32
  %i.id = shl nuw nsw i32 %i.ic, 9
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !114
  %i.ig = zext i8 %i.if to i32
  %i.ih = shl nuw nsw i32 %i.ig, 1
  %i.ii = or disjoint i32 %i.ih, %i.id
  %i.ij = add nsw i32 %i.ii, -65535
  %i.ik = shl nsw i32 %i.ij, %i.hy
  %i.il = add i32 %i.ik, %i.hp
  store i32 %i.il, ptr %i.gj, align 8, !tbaa !88
  %i.im = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !89
  %i.io = icmp ult ptr %i.ia, %i.in
  br i1 %i.io, label %bb.ab, label %coeff_sign_flag_ts_decode.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  store ptr %i.ip, ptr %i.hz, align 8, !tbaa !86
  br label %coeff_sign_flag_ts_decode.exit.i.i

coeff_sign_flag_ts_decode.exit.i.i:               ; preds = %bb.ab, %bb.aa, %bb.z
  %i.iq = zext i1 %i.hg to i32
end_hunk_0
begin_hunk_1_@ff_vvc_residual_coding:bb.a
  %i.ku = ashr i32 %i.kt, 9
  %i.kv = mul nsw i32 %i.ku, %i.kj
  %i.kw = ashr i32 %i.kv, 1
  %i.kx = add nsw i32 %i.kw, 4                    ; 2 uses
  %i.ky = sub nsw i32 %i.ki, %i.kx                ; 2 uses
  %i.kz = shl i32 %i.ky, 17                       ; 2 uses
  %i.la = load i32, ptr %i.gj, align 8, !tbaa !88 ; 2 uses
  %i.lb = icmp slt i32 %i.kz, %i.la               ; 3 uses
  %i.lc = select i1 %i.lb, i32 %i.kz, i32 0
  %i.ld = sub nsw i32 %i.la, %i.lc
  %i.le = select i1 %i.lb, i32 %i.kx, i32 %i.ky   ; 2 uses
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !114
  %i.li = zext i8 %i.lh to i32                    ; 2 uses
  %i.lj = shl i32 %i.le, %i.li                    ; 3 uses
  store i32 %i.lj, ptr %i.gm, align 4, !tbaa !117
  %i.lk = shl i32 %i.ld, %i.li                    ; 6 uses
  store i32 %i.lk, ptr %i.gj, align 8, !tbaa !88
  %i.ll = and i32 %i.lk, 65535
  %.not42.i.i262.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not42.i.i262.i.i, label %bb.ai, label %abs_level_gt1_flag_ts_decode.exit.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.lm = add nsw i32 %i.lk, -32768
  %i.ln = xor i32 %i.lm, %i.lk
  %i.lo = lshr exact i32 %i.ln, 15
  %i.lp = zext nneg i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.lp
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !114
  %i.ls = zext i8 %i.lr to i32
  %i.lt = sub nsw i32 7, %i.ls
  %i.lu = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !86 ; 4 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !114
  %i.lx = zext i8 %i.lw to i32
  %i.ly = shl nuw nsw i32 %i.lx, 9
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !114
  %i.mb = zext i8 %i.ma to i32
  %i.mc = shl nuw nsw i32 %i.mb, 1
  %i.md = or disjoint i32 %i.mc, %i.ly
  %i.me = add nsw i32 %i.md, -65535
  %i.mf = shl nsw i32 %i.me, %i.lt
  %i.mg = add i32 %i.mf, %i.lk                    ; 3 uses
  store i32 %i.mg, ptr %i.gj, align 8, !tbaa !88
  %i.mh = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !89
  %i.mj = icmp ult ptr %i.lv, %i.mi
  br i1 %i.mj, label %bb.aj, label %abs_level_gt1_flag_ts_decode.exit.i.i

bb.aj:                                            ; preds = %bb.ai
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lv, i64 2
  store ptr %i.mk, ptr %i.lu, align 8, !tbaa !86
  br label %abs_level_gt1_flag_ts_decode.exit.i.i

abs_level_gt1_flag_ts_decode.exit.i.i:            ; preds = %bb.aj, %bb.ai, %bb.ah
  %i.ml = phi i32 [ %i.lk, %bb.ah ], [ %i.mg, %bb.ai ], [ %i.mg, %bb.aj ] ; 2 uses
  %i.mm = zext i1 %i.lb to i32                    ; 2 uses
  %i.mn = xor i32 %i.kr, %i.mm                    ; 5 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.kh, i64 4
  %i.mp = load i8, ptr %i.mo, align 2, !tbaa !114
  %i.mq = zext i8 %i.mp to i32                    ; 2 uses
  %i.mr = lshr i32 %i.ko, %i.mq
  %i.ms = sub nsw i32 %i.ko, %i.mr
  %i.mt = mul nuw nsw i32 %i.mn, 1023
  %i.mu = lshr i32 %i.mt, %i.mq
  %i.mv = add nsw i32 %i.ms, %i.mu
  %i.mw = trunc i32 %i.mv to i16
  store i16 %i.mw, ptr %i.kh, align 2, !tbaa !76
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kh, i64 5
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !114
  %i.mz = zext i8 %i.my to i32                    ; 2 uses
  %i.na = lshr i32 %i.km, %i.mz
  %i.nb = sub nsw i32 %i.km, %i.na
  %i.nc = mul nuw nsw i32 %i.mn, 16383
  %i.nd = lshr i32 %i.nc, %i.mz
  %i.ne = add nsw i32 %i.nb, %i.nd
  %i.nf = trunc i32 %i.ne to i16
  store i16 %i.nf, ptr %i.kk, align 2, !tbaa !76
  store i32 %i.mn, ptr %i.ev, align 4, !tbaa !139
  %i.ng = load i32, ptr %i.be, align 8, !tbaa !191 ; 2 uses
  %i.nh = add nsw i32 %i.ng, -2
  store i32 %i.nh, ptr %i.be, align 8, !tbaa !191
  %.not253.i.i = icmp eq i32 %i.kr, %i.mm
  br i1 %.not253.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %abs_level_gt1_flag_ts_decode.exit.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.gi, i64 1850 ; 2 uses
  %i.nj = ashr i32 %i.lj, 5
  %i.nk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1852 ; 2 uses
  %i.nl = load i16, ptr %i.nk, align 4, !tbaa !76
  %i.nm = zext i16 %i.nl to i32                   ; 3 uses
  %i.nn = load i16, ptr %i.ni, align 2, !tbaa !76
  %i.no = zext i16 %i.nn to i32                   ; 3 uses
  %i.np = shl nuw nsw i32 %i.no, 4
  %i.nq = add nuw nsw i32 %i.np, %i.nm            ; 3 uses
  %i.nr = lshr i32 %i.nq, 14                      ; 2 uses
  %.not.i.i263.i.i = icmp eq i32 %i.nr, 0
  %i.ns = sub nsw i32 32767, %i.nq
  %i.nt = select i1 %.not.i.i263.i.i, i32 %i.nq, i32 %i.ns
  %i.nu = ashr i32 %i.nt, 9
  %i.nv = mul nsw i32 %i.nu, %i.nj
  %i.nw = ashr i32 %i.nv, 1
  %i.nx = add nsw i32 %i.nw, 4                    ; 2 uses
  %i.ny = sub nsw i32 %i.lj, %i.nx                ; 2 uses
  %i.nz = shl i32 %i.ny, 17                       ; 2 uses
  %i.oa = icmp slt i32 %i.nz, %i.ml               ; 3 uses
  %i.ob = select i1 %i.oa, i32 %i.nz, i32 0
  %i.oc = sub nsw i32 %i.ml, %i.ob
  %i.od = select i1 %i.oa, i32 %i.nx, i32 %i.ny   ; 2 uses
  %i.oe = sext i32 %i.od to i64
  %i.of = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1, !tbaa !114
  %i.oh = zext i8 %i.og to i32                    ; 2 uses
  %i.oi = shl i32 %i.od, %i.oh
  store i32 %i.oi, ptr %i.gm, align 4, !tbaa !117
  %i.oj = shl i32 %i.oc, %i.oh                    ; 5 uses
  store i32 %i.oj, ptr %i.gj, align 8, !tbaa !88
  %i.ok = and i32 %i.oj, 65535
  %.not42.i.i264.i.i = icmp eq i32 %i.ok, 0
  br i1 %.not42.i.i264.i.i, label %bb.al, label %par_level_flag_ts_decode.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ol = add nsw i32 %i.oj, -32768
  %i.om = xor i32 %i.ol, %i.oj
  %i.on = lshr exact i32 %i.om, 15
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !114
  %i.or = zext i8 %i.oq to i32
  %i.os = sub nsw i32 7, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %i.gi, i64 40 ; 2 uses
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !86 ; 4 uses
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !114
  %i.ow = zext i8 %i.ov to i32
  %i.ox = shl nuw nsw i32 %i.ow, 9
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !114
  %i.pa = zext i8 %i.oz to i32
  %i.pb = shl nuw nsw i32 %i.pa, 1
  %i.pc = or disjoint i32 %i.pb, %i.ox
  %i.pd = add nsw i32 %i.pc, -65535
  %i.pe = shl nsw i32 %i.pd, %i.os
  %i.pf = add i32 %i.pe, %i.oj
  store i32 %i.pf, ptr %i.gj, align 8, !tbaa !88
  %i.pg = getelementptr inbounds nuw i8, ptr %i.gi, i64 48
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !89
  %i.pi = icmp ult ptr %i.ou, %i.ph
  br i1 %i.pi, label %bb.am, label %par_level_flag_ts_decode.exit.i.i

bb.am:                                            ; preds = %bb.al
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store ptr %i.pj, ptr %i.ot, align 8, !tbaa !86
  br label %par_level_flag_ts_decode.exit.i.i

par_level_flag_ts_decode.exit.i.i:                ; preds = %bb.am, %bb.al, %bb.ak
  %i.pk = zext i1 %i.oa to i32
  %i.pl = xor i32 %i.nr, %i.pk                    ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.gi, i64 1854
  %i.pn = load i8, ptr %i.pm, align 2, !tbaa !114
  %i.po = zext i8 %i.pn to i32                    ; 2 uses
  %i.pp = lshr i32 %i.no, %i.po
  %i.pq = sub nsw i32 %i.no, %i.pp
  %i.pr = mul nuw nsw i32 %i.pl, 1023
  %i.ps = lshr i32 %i.pr, %i.po
  %i.pt = add nsw i32 %i.pq, %i.ps
  %i.pu = trunc i32 %i.pt to i16
  store i16 %i.pu, ptr %i.ni, align 2, !tbaa !76
  %i.pv = getelementptr inbounds nuw i8, ptr %i.gi, i64 1855
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !114
  %i.px = zext i8 %i.pw to i32                    ; 2 uses
  %i.py = lshr i32 %i.nm, %i.px
  %i.pz = sub nsw i32 %i.nm, %i.py
  %i.qa = mul nuw nsw i32 %i.pl, 16383
  %i.qb = lshr i32 %i.qa, %i.px
  %i.qc = add nsw i32 %i.pz, %i.qb
  %i.qd = trunc i32 %i.qc to i16
  store i16 %i.qd, ptr %i.nk, align 4, !tbaa !76
  %i.qe = add nsw i32 %i.ng, -3
  store i32 %i.qe, ptr %i.be, align 8, !tbaa !191
  br label %bb.an

bb.an:                                            ; preds = %par_level_flag_ts_decode.exit.i.i, %abs_level_gt1_flag_ts_decode.exit.i.i, %bb.p
  %i.qf = phi i32 [ %i.mn, %par_level_flag_ts_decode.exit.i.i ], [ %i.mn, %abs_level_gt1_flag_ts_decode.exit.i.i ], [ 0, %bb.p ]
  %.0221.i.i = phi i32 [ %i.pl, %par_level_flag_ts_decode.exit.i.i ], [ 0, %abs_level_gt1_flag_ts_decode.exit.i.i ], [ 0, %bb.p ]
  %i.qg = load i32, ptr %i.es, align 4, !tbaa !139
  %i.qh = add nuw nsw i32 %.0221.i.i, %i.qf
  %i.qi = add i32 %i.qh, %i.qg
  store i32 %i.qi, ptr %i.et, align 4, !tbaa !139
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.qj = load i32, ptr %i.ai, align 4, !tbaa !186 ; 5 uses
  %i.qk = sext i32 %i.qj to i64
  %i.ql = icmp slt i64 %indvars.iv.next.i.i, %i.qk
  br i1 %i.ql, label %bb.m, label %..critedge.i_crit_edge.i, !llvm.loop !203

..critedge.i_crit_edge.i:                         ; preds = %bb.an
  br label %.critedge.i.i, !llvm.loop !203

.critedge.i.i:                                    ; preds = %bb.m, %..critedge.i_crit_edge.i
  %i.qm = icmp sgt i32 %i.qj, 0
  br i1 %i.qm, label %.lr.ph290.i.i, label %residual_ts_coding_subblock.exit.i

.lr.ph290.i.i:                                    ; preds = %.critedge.i.i
  %.pre.i.pr.i = load i32, ptr %i.be, align 8, !tbaa !191 ; 2 uses
  %i.qn = add nsw i32 %i.qj, -1
  %wide.trip.count.i.i = zext nneg i32 %i.qj to i64
  %i.qo = icmp sgt i32 %.pre.i.pr.i, 3
  %.pre.i = load ptr, ptr %i.bt, align 8, !tbaa !194 ; 4 uses
  %.pre49.i = load ptr, ptr %i.bw, align 8, !tbaa !195 ; 4 uses
  br i1 %i.qo, label %.lr.ph38.i, label %.critedge5.i.i

.lr.ph38.i:                                       ; preds = %.lr.ph290.i.i
  %i.qp = load i32, ptr %i.ae, align 8, !tbaa !182
  %i.qq = shl i32 %i.cz, %i.qp
  %i.qr = load i32, ptr %i.af, align 4, !tbaa !185
  %i.qs = shl i32 %i.dd, %i.qr
  %i.qt = load i32, ptr %i.du, align 4, !tbaa !204
  br label %bb.ap

bb.ao:                                            ; preds = %.critedge7.i.i
  %i.qu = icmp sgt i32 %i.rl, 3
  br i1 %i.qu, label %bb.ap, label %.critedge5.i.i, !llvm.loop !205

bb.ap:                                            ; preds = %bb.ao, %.lr.ph38.i
  %indvars.iv300.i37.i = phi i64 [ 0, %.lr.ph38.i ], [ %indvars.iv.next301.i.i, %bb.ao ] ; 6 uses
  %i.qv = phi i32 [ %.pre.i.pr.i, %.lr.ph38.i ], [ %i.rl, %bb.ao ] ; 5 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %indvars.iv300.i37.i
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !114
  %i.qy = zext i8 %i.qx to i32
  %i.qz = add nsw i32 %i.qq, %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %.pre49.i, i64 %indvars.iv300.i37.i
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !114
  %i.rc = zext i8 %i.rb to i32
  %i.rd = add nsw i32 %i.qs, %i.rc
  %i.re = mul nsw i32 %i.rd, %i.qt
  %i.rf = add nsw i32 %i.qz, %i.re
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !139 ; 2 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv300.i37.i ; 5 uses
  store i32 %i.ri, ptr %i.rj, align 4, !tbaa !139
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv300.i37.i ; 2 uses
  %.promoted.i.i = load i32, ptr %i.rk, align 4, !tbaa !139
  %.not249.i.i = icmp eq i32 %.promoted.i.i, 0
  br i1 %.not249.i.i, label %.critedge7.i.i, label %bb.aq

.critedge7.i.i:                                   ; preds = %abs_level_gtx_flag_ts_decode.exit.i.3.i, %abs_level_gtx_flag_ts_decode.exit.i.2.i, %abs_level_gtx_flag_ts_decode.exit.i.1.i, %abs_level_gtx_flag_ts_decode.exit.i.i, %bb.ap
  %i.rl = phi i32 [ %i.adp, %abs_level_gtx_flag_ts_decode.exit.i.3.i ], [ %i.qv, %bb.ap ], [ %i.uq, %abs_level_gtx_flag_ts_decode.exit.i.i ], [ %i.aaq, %abs_level_gtx_flag_ts_decode.exit.i.2.i ], [ %i.xq, %abs_level_gtx_flag_ts_decode.exit.i.1.i ] ; 2 uses
  %i.rm = phi i32 [ %i.acu, %abs_level_gtx_flag_ts_decode.exit.i.3.i ], [ 0, %bb.ap ], [ 0, %abs_level_gtx_flag_ts_decode.exit.i.i ], [ 0, %abs_level_gtx_flag_ts_decode.exit.i.2.i ], [ 0, %abs_level_gtx_flag_ts_decode.exit.i.1.i ]
  store i32 %i.rm, ptr %i.rk, align 4
  %indvars.iv.next301.i.i = add nuw nsw i64 %indvars.iv300.i37.i, 1 ; 2 uses
  %exitcond303.not.i.i = icmp eq i64 %indvars.iv.next301.i.i, %wide.trip.count.i.i
  br i1 %exitcond303.not.i.i, label %.critedge7.i..critedge5.i_crit_edge.i, label %bb.ao, !llvm.loop !205

bb.aq:                                            ; preds = %bb.ap
  %.val257.i.i = load ptr, ptr %i.cl, align 16, !tbaa !85 ; 26 uses
  %i.rn = getelementptr i8, ptr %.val257.i.i, i64 24 ; 9 uses
  %i.ro = getelementptr i8, ptr %.val257.i.i, i64 2264 ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.val257.i.i, i64 28 ; 5 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !117 ; 2 uses
  %i.rr = ashr i32 %i.rq, 5
  %i.rs = getelementptr i8, ptr %.val257.i.i, i64 2266 ; 2 uses
  %i.rt = load i16, ptr %i.rs, align 2, !tbaa !76
  %i.ru = zext i16 %i.rt to i32                   ; 3 uses
  %i.rv = load i16, ptr %i.ro, align 4, !tbaa !76
  %i.rw = zext i16 %i.rv to i32                   ; 3 uses
  %i.rx = shl nuw nsw i32 %i.rw, 4
  %i.ry = add nuw nsw i32 %i.rx, %i.ru            ; 3 uses
  %i.rz = lshr i32 %i.ry, 14                      ; 3 uses
  %.not.i.i265.i.i = icmp eq i32 %i.rz, 0
  %i.sa = sub nsw i32 32767, %i.ry
  %i.sb = select i1 %.not.i.i265.i.i, i32 %i.ry, i32 %i.sa
  %i.sc = ashr i32 %i.sb, 9
  %i.sd = mul nsw i32 %i.sc, %i.rr
  %i.se = ashr i32 %i.sd, 1
  %i.sf = add nsw i32 %i.se, 4                    ; 2 uses
  %i.sg = sub nsw i32 %i.rq, %i.sf                ; 2 uses
  %i.sh = shl i32 %i.sg, 17                       ; 2 uses
  %i.si = load i32, ptr %i.rn, align 8, !tbaa !88 ; 2 uses
  %i.sj = icmp slt i32 %i.sh, %i.si               ; 3 uses
  %i.sk = select i1 %i.sj, i32 %i.sh, i32 0
  %i.sl = sub nsw i32 %i.si, %i.sk
  %i.sm = select i1 %i.sj, i32 %i.sf, i32 %i.sg   ; 2 uses
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !114
  %i.sq = zext i8 %i.sp to i32                    ; 2 uses
  %i.sr = shl i32 %i.sm, %i.sq                    ; 3 uses
  store i32 %i.sr, ptr %i.rp, align 4, !tbaa !117
  %i.ss = shl i32 %i.sl, %i.sq                    ; 6 uses
  store i32 %i.ss, ptr %i.rn, align 8, !tbaa !88
  %i.st = and i32 %i.ss, 65535
  %.not42.i.i266.i.i = icmp eq i32 %i.st, 0
  br i1 %.not42.i.i266.i.i, label %bb.ar, label %abs_level_gtx_flag_ts_decode.exit.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.su = add nsw i32 %i.ss, -32768
  %i.sv = xor i32 %i.su, %i.ss
  %i.sw = lshr exact i32 %i.sv, 15
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.sx
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !114
  %i.ta = zext i8 %i.sz to i32
  %i.tb = sub nsw i32 7, %i.ta
  %i.tc = getelementptr inbounds nuw i8, ptr %.val257.i.i, i64 40 ; 2 uses
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !86 ; 4 uses
  %i.te = load i8, ptr %i.td, align 1, !tbaa !114
  %i.tf = zext i8 %i.te to i32
  %i.tg = shl nuw nsw i32 %i.tf, 9
  %i.th = getelementptr inbounds nuw i8, ptr %i.td, i64 1
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !114
  %i.tj = zext i8 %i.ti to i32
  %i.tk = shl nuw nsw i32 %i.tj, 1
  %i.tl = or disjoint i32 %i.tk, %i.tg
  %i.tm = add nsw i32 %i.tl, -65535
  %i.tn = shl nsw i32 %i.tm, %i.tb
  %i.to = add i32 %i.tn, %i.ss                    ; 3 uses
  store i32 %i.to, ptr %i.rn, align 8, !tbaa !88
  %i.tp = getelementptr inbounds nuw i8, ptr %.val257.i.i, i64 48
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !89
  %i.tr = icmp ult ptr %i.td, %i.tq
  br i1 %i.tr, label %bb.as, label %abs_level_gtx_flag_ts_decode.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ts = getelementptr inbounds nuw i8, ptr %i.td, i64 2
  store ptr %i.ts, ptr %i.tc, align 8, !tbaa !86
  br label %abs_level_gtx_flag_ts_decode.exit.i.i

abs_level_gtx_flag_ts_decode.exit.i.i:            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.tt = phi i32 [ %i.to, %bb.as ], [ %i.to, %bb.ar ], [ %i.ss, %bb.aq ] ; 2 uses
  %i.tu = zext i1 %i.sj to i32                    ; 2 uses
  %i.tv = xor i32 %i.rz, %i.tu                    ; 3 uses
  %i.tw = getelementptr i8, ptr %.val257.i.i, i64 2268
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !114
  %i.ty = zext i8 %i.tx to i32                    ; 2 uses
  %i.tz = lshr i32 %i.rw, %i.ty
  %i.ua = sub nsw i32 %i.rw, %i.tz
  %i.ub = mul nuw nsw i32 %i.tv, 1023
  %i.uc = lshr i32 %i.ub, %i.ty
  %i.ud = add nsw i32 %i.ua, %i.uc
  %i.ue = trunc i32 %i.ud to i16
  store i16 %i.ue, ptr %i.ro, align 8, !tbaa !76
  %i.uf = getelementptr i8, ptr %.val257.i.i, i64 2269
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !114
  %i.uh = zext i8 %i.ug to i32                    ; 2 uses
  %i.ui = lshr i32 %i.ru, %i.uh
  %i.uj = sub nsw i32 %i.ru, %i.ui
  %i.uk = mul nuw nsw i32 %i.tv, 16383
  %i.ul = lshr i32 %i.uk, %i.uh
  %i.um = add nsw i32 %i.uj, %i.ul
  %i.un = trunc i32 %i.um to i16
  store i16 %i.un, ptr %i.rs, align 2, !tbaa !76
  %i.uo = shl nuw nsw i32 %i.tv, 1
  %i.up = add nsw i32 %i.uo, %i.ri                ; 2 uses
  store i32 %i.up, ptr %i.rj, align 4, !tbaa !139
  %i.uq = add nsw i32 %i.qv, -1                   ; 2 uses
  store i32 %i.uq, ptr %i.be, align 8, !tbaa !191
  %.not249.i.1.i = icmp eq i32 %i.rz, %i.tu
  br i1 %.not249.i.1.i, label %.critedge7.i.i, label %bb.at

bb.at:                                            ; preds = %abs_level_gtx_flag_ts_decode.exit.i.i
  %i.ur = getelementptr i8, ptr %.val257.i.i, i64 2270 ; 2 uses
  %i.us = ashr i32 %i.sr, 5
  %i.ut = getelementptr i8, ptr %.val257.i.i, i64 2272 ; 2 uses
  %i.uu = load i16, ptr %i.ut, align 8, !tbaa !76
  %i.uv = zext i16 %i.uu to i32                   ; 3 uses
  %i.uw = load i16, ptr %i.ur, align 2, !tbaa !76
  %i.ux = zext i16 %i.uw to i32                   ; 3 uses
  %i.uy = shl nuw nsw i32 %i.ux, 4
  %i.uz = add nuw nsw i32 %i.uy, %i.uv            ; 3 uses
  %i.va = lshr i32 %i.uz, 14                      ; 3 uses
  %.not.i.i265.i.1.i = icmp eq i32 %i.va, 0
  %i.vb = sub nsw i32 32767, %i.uz
  %i.vc = select i1 %.not.i.i265.i.1.i, i32 %i.uz, i32 %i.vb
  %i.vd = ashr i32 %i.vc, 9
  %i.ve = mul nsw i32 %i.vd, %i.us
  %i.vf = ashr i32 %i.ve, 1
  %i.vg = add nsw i32 %i.vf, 4                    ; 2 uses
  %i.vh = sub nsw i32 %i.sr, %i.vg                ; 2 uses
  %i.vi = shl i32 %i.vh, 17                       ; 2 uses
  %i.vj = icmp slt i32 %i.vi, %i.tt               ; 3 uses
  %i.vk = select i1 %i.vj, i32 %i.vi, i32 0
  %i.vl = sub nsw i32 %i.tt, %i.vk
  %i.vm = select i1 %i.vj, i32 %i.vg, i32 %i.vh   ; 2 uses
  %i.vn = sext i32 %i.vm to i64
  %i.vo = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !114
  %i.vq = zext i8 %i.vp to i32                    ; 2 uses
  %i.vr = shl i32 %i.vm, %i.vq                    ; 3 uses
  store i32 %i.vr, ptr %i.rp, align 4, !tbaa !117
  %i.vs = shl i32 %i.vl, %i.vq                    ; 6 uses
  store i32 %i.vs, ptr %i.rn, align 8, !tbaa !88
  %i.vt = and i32 %i.vs, 65535
  %.not42.i.i266.i.1.i = icmp eq i32 %i.vt, 0
  br i1 %.not42.i.i266.i.1.i, label %bb.au, label %abs_level_gtx_flag_ts_decode.exit.i.1.i

bb.au:                                            ; preds = %bb.at
  %i.vu = add nsw i32 %i.vs, -32768
  %i.vv = xor i32 %i.vu, %i.vs
end_hunk_1
begin_hunk_2_@ff_vvc_residual_coding:bb.a
  %i.xx = zext i16 %i.xw to i32                   ; 3 uses
  %i.xy = shl nuw nsw i32 %i.xx, 4
  %i.xz = add nuw nsw i32 %i.xy, %i.xv            ; 3 uses
  %i.ya = lshr i32 %i.xz, 14                      ; 3 uses
  %.not.i.i265.i.2.i = icmp eq i32 %i.ya, 0
  %i.yb = sub nsw i32 32767, %i.xz
  %i.yc = select i1 %.not.i.i265.i.2.i, i32 %i.xz, i32 %i.yb
  %i.yd = ashr i32 %i.yc, 9
  %i.ye = mul nsw i32 %i.yd, %i.xs
  %i.yf = ashr i32 %i.ye, 1
  %i.yg = add nsw i32 %i.yf, 4                    ; 2 uses
  %i.yh = sub nsw i32 %i.vr, %i.yg                ; 2 uses
  %i.yi = shl i32 %i.yh, 17                       ; 2 uses
  %i.yj = icmp slt i32 %i.yi, %i.wt               ; 3 uses
  %i.yk = select i1 %i.yj, i32 %i.yi, i32 0
  %i.yl = sub nsw i32 %i.wt, %i.yk
  %i.ym = select i1 %i.yj, i32 %i.yg, i32 %i.yh   ; 2 uses
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !114
  %i.yq = zext i8 %i.yp to i32                    ; 2 uses
  %i.yr = shl i32 %i.ym, %i.yq                    ; 3 uses
  store i32 %i.yr, ptr %i.rp, align 4, !tbaa !117
  %i.ys = shl i32 %i.yl, %i.yq                    ; 6 uses
  store i32 %i.ys, ptr %i.rn, align 8, !tbaa !88
  %i.yt = and i32 %i.ys, 65535
  %.not42.i.i266.i.2.i = icmp eq i32 %i.yt, 0
  br i1 %.not42.i.i266.i.2.i, label %bb.ax, label %abs_level_gtx_flag_ts_decode.exit.i.2.i

bb.ax:                                            ; preds = %bb.aw
  %i.yu = add nsw i32 %i.ys, -32768
  %i.yv = xor i32 %i.yu, %i.ys
  %i.yw = lshr exact i32 %i.yv, 15
  %i.yx = zext nneg i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !114
  %i.za = zext i8 %i.yz to i32
  %i.zb = sub nsw i32 7, %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %.val257.i.i, i64 40 ; 2 uses
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !86 ; 4 uses
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !114
  %i.zf = zext i8 %i.ze to i32
  %i.zg = shl nuw nsw i32 %i.zf, 9
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 1
  %i.zi = load i8, ptr %i.zh, align 1, !tbaa !114
  %i.zj = zext i8 %i.zi to i32
  %i.zk = shl nuw nsw i32 %i.zj, 1
  %i.zl = or disjoint i32 %i.zk, %i.zg
  %i.zm = add nsw i32 %i.zl, -65535
  %i.zn = shl nsw i32 %i.zm, %i.zb
  %i.zo = add i32 %i.zn, %i.ys                    ; 3 uses
  store i32 %i.zo, ptr %i.rn, align 8, !tbaa !88
  %i.zp = getelementptr inbounds nuw i8, ptr %.val257.i.i, i64 48
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !89
  %i.zr = icmp ult ptr %i.zd, %i.zq
  br i1 %i.zr, label %bb.ay, label %abs_level_gtx_flag_ts_decode.exit.i.2.i

bb.ay:                                            ; preds = %bb.ax
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zd, i64 2
  store ptr %i.zs, ptr %i.zc, align 8, !tbaa !86
  br label %abs_level_gtx_flag_ts_decode.exit.i.2.i

abs_level_gtx_flag_ts_decode.exit.i.2.i:          ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.zt = phi i32 [ %i.zo, %bb.ay ], [ %i.zo, %bb.ax ], [ %i.ys, %bb.aw ] ; 2 uses
  %i.zu = zext i1 %i.yj to i32                    ; 2 uses
  %i.zv = xor i32 %i.ya, %i.zu                    ; 3 uses
  %i.zw = getelementptr i8, ptr %.val257.i.i, i64 2280
  %i.zx = load i8, ptr %i.zw, align 8, !tbaa !114
  %i.zy = zext i8 %i.zx to i32                    ; 2 uses
  %i.zz = lshr i32 %i.xx, %i.zy
  %i.aaa = sub nsw i32 %i.xx, %i.zz
  %i.aab = mul nuw nsw i32 %i.zv, 1023
  %i.aac = lshr i32 %i.aab, %i.zy
  %i.aad = add nsw i32 %i.aaa, %i.aac
  %i.aae = trunc i32 %i.aad to i16
  store i16 %i.aae, ptr %i.xr, align 4, !tbaa !76
  %i.aaf = getelementptr i8, ptr %.val257.i.i, i64 2281
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !114
  %i.aah = zext i8 %i.aag to i32                  ; 2 uses
  %i.aai = lshr i32 %i.xv, %i.aah
  %i.aaj = sub nsw i32 %i.xv, %i.aai
  %i.aak = mul nuw nsw i32 %i.zv, 16383
  %i.aal = lshr i32 %i.aak, %i.aah
  %i.aam = add nsw i32 %i.aaj, %i.aal
  %i.aan = trunc i32 %i.aam to i16
  store i16 %i.aan, ptr %i.xt, align 2, !tbaa !76
  %i.aao = shl nuw nsw i32 %i.zv, 1
  %i.aap = add nsw i32 %i.aao, %i.xp              ; 2 uses
  store i32 %i.aap, ptr %i.rj, align 4, !tbaa !139
  %i.aaq = add nsw i32 %i.qv, -3                  ; 2 uses
  store i32 %i.aaq, ptr %i.be, align 8, !tbaa !191
  %.not249.i.3.i = icmp eq i32 %i.ya, %i.zu
  br i1 %.not249.i.3.i, label %.critedge7.i.i, label %bb.az

bb.az:                                            ; preds = %abs_level_gtx_flag_ts_decode.exit.i.2.i
  %i.aar = getelementptr i8, ptr %.val257.i.i, i64 2282 ; 2 uses
  %i.aas = ashr i32 %i.yr, 5
  %i.aat = getelementptr i8, ptr %.val257.i.i, i64 2284 ; 2 uses
  %i.aau = load i16, ptr %i.aat, align 4, !tbaa !76
  %i.aav = zext i16 %i.aau to i32                 ; 3 uses
  %i.aaw = load i16, ptr %i.aar, align 2, !tbaa !76
  %i.aax = zext i16 %i.aaw to i32                 ; 3 uses
  %i.aay = shl nuw nsw i32 %i.aax, 4
  %i.aaz = add nuw nsw i32 %i.aay, %i.aav         ; 3 uses
  %i.aba = lshr i32 %i.aaz, 14                    ; 2 uses
  %.not.i.i265.i.3.i = icmp eq i32 %i.aba, 0
  %i.abb = sub nsw i32 32767, %i.aaz
  %i.abc = select i1 %.not.i.i265.i.3.i, i32 %i.aaz, i32 %i.abb
  %i.abd = ashr i32 %i.abc, 9
  %i.abe = mul nsw i32 %i.abd, %i.aas
  %i.abf = ashr i32 %i.abe, 1
  %i.abg = add nsw i32 %i.abf, 4                  ; 2 uses
  %i.abh = sub nsw i32 %i.yr, %i.abg              ; 2 uses
  %i.abi = shl i32 %i.abh, 17                     ; 2 uses
  %i.abj = icmp slt i32 %i.abi, %i.zt             ; 3 uses
  %i.abk = select i1 %i.abj, i32 %i.abi, i32 0
  %i.abl = sub nsw i32 %i.zt, %i.abk
  %i.abm = select i1 %i.abj, i32 %i.abg, i32 %i.abh ; 2 uses
  %i.abn = sext i32 %i.abm to i64
  %i.abo = getelementptr inbounds i8, ptr @ff_h264_cabac_tables, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !114
  %i.abq = zext i8 %i.abp to i32                  ; 2 uses
  %i.abr = shl i32 %i.abm, %i.abq
  store i32 %i.abr, ptr %i.rp, align 4, !tbaa !117
  %i.abs = shl i32 %i.abl, %i.abq                 ; 5 uses
  store i32 %i.abs, ptr %i.rn, align 8, !tbaa !88
  %i.abt = and i32 %i.abs, 65535
  %.not42.i.i266.i.3.i = icmp eq i32 %i.abt, 0
  br i1 %.not42.i.i266.i.3.i, label %bb.ba, label %abs_level_gtx_flag_ts_decode.exit.i.3.i

bb.ba:                                            ; preds = %bb.az
  %i.abu = add nsw i32 %i.abs, -32768
  %i.abv = xor i32 %i.abu, %i.abs
  %i.abw = lshr exact i32 %i.abv, 15
  %i.abx = zext nneg i32 %i.abw to i64
  %i.aby = getelementptr inbounds nuw i8, ptr @ff_h264_cabac_tables, i64 %i.abx
  %i.abz = load i8, ptr %i.aby, align 1, !tbaa !114
  %i.aca = zext i8 %i.abz to i32
  %i.acb = sub nsw i32 7, %i.aca
  %i.acc = getelementptr inbounds nuw i8, ptr %.val257.i.i, i64 40 ; 2 uses
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !86 ; 4 uses
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !114
  %i.acf = zext i8 %i.ace to i32
  %i.acg = shl nuw nsw i32 %i.acf, 9
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acd, i64 1
  %i.aci = load i8, ptr %i.ach, align 1, !tbaa !114
  %i.acj = zext i8 %i.aci to i32
  %i.ack = shl nuw nsw i32 %i.acj, 1
  %i.acl = or disjoint i32 %i.ack, %i.acg
  %i.acm = add nsw i32 %i.acl, -65535
  %i.acn = shl nsw i32 %i.acm, %i.acb
  %i.aco = add i32 %i.acn, %i.abs
  store i32 %i.aco, ptr %i.rn, align 8, !tbaa !88
  %i.acp = getelementptr inbounds nuw i8, ptr %.val257.i.i, i64 48
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !89
  %i.acr = icmp ult ptr %i.acd, %i.acq
  br i1 %i.acr, label %bb.bb, label %abs_level_gtx_flag_ts_decode.exit.i.3.i

bb.bb:                                            ; preds = %bb.ba
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acd, i64 2
  store ptr %i.acs, ptr %i.acc, align 8, !tbaa !86
  br label %abs_level_gtx_flag_ts_decode.exit.i.3.i

abs_level_gtx_flag_ts_decode.exit.i.3.i:          ; preds = %bb.bb, %bb.ba, %bb.az
  %i.act = zext i1 %i.abj to i32
  %i.acu = xor i32 %i.aba, %i.act                 ; 4 uses
  %i.acv = getelementptr i8, ptr %.val257.i.i, i64 2286
  %i.acw = load i8, ptr %i.acv, align 2, !tbaa !114
  %i.acx = zext i8 %i.acw to i32                  ; 2 uses
  %i.acy = lshr i32 %i.aax, %i.acx
  %i.acz = sub nsw i32 %i.aax, %i.acy
  %i.ada = mul nuw nsw i32 %i.acu, 1023
  %i.adb = lshr i32 %i.ada, %i.acx
  %i.adc = add nsw i32 %i.acz, %i.adb
  %i.add = trunc i32 %i.adc to i16
  store i16 %i.add, ptr %i.aar, align 2, !tbaa !76
  %i.ade = getelementptr i8, ptr %.val257.i.i, i64 2287
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !114
  %i.adg = zext i8 %i.adf to i32                  ; 2 uses
  %i.adh = lshr i32 %i.aav, %i.adg
  %i.adi = sub nsw i32 %i.aav, %i.adh
  %i.adj = mul nuw nsw i32 %i.acu, 16383
  %i.adk = lshr i32 %i.adj, %i.adg
  %i.adl = add nsw i32 %i.adi, %i.adk
  %i.adm = trunc i32 %i.adl to i16
  store i16 %i.adm, ptr %i.aat, align 4, !tbaa !76
  %i.adn = shl nuw nsw i32 %i.acu, 1
  %i.ado = add nsw i32 %i.adn, %i.aap
  store i32 %i.ado, ptr %i.rj, align 4, !tbaa !139
  %i.adp = add nsw i32 %i.qv, -4                  ; 2 uses
  store i32 %i.adp, ptr %i.be, align 8, !tbaa !191
  br label %.critedge7.i.i

.critedge7.i..critedge5.i_crit_edge.i:            ; preds = %.critedge7.i.i
  %i.adq = zext nneg i32 %i.qn to i64
  br label %.critedge5.i.i, !llvm.loop !205

.critedge5.i.i:                                   ; preds = %bb.ao, %.critedge7.i..critedge5.i_crit_edge.i, %.lr.ph290.i.i, %.lr.ph290.i.thread.i
  %.pre4976.i = phi ptr [ %.pre49.i, %.lr.ph290.i.i ], [ %.pre49.i, %.critedge7.i..critedge5.i_crit_edge.i ], [ %.pre4974.i, %.lr.ph290.i.thread.i ], [ %.pre49.i, %bb.ao ]
  %.pre75.i = phi ptr [ %.pre.i, %.lr.ph290.i.i ], [ %.pre.i, %.critedge7.i..critedge5.i_crit_edge.i ], [ %.pre73.i, %.lr.ph290.i.thread.i ], [ %.pre.i, %bb.ao ]
  %i.adr = phi i64 [ %indvars.iv.i31.i, %.lr.ph290.i.i ], [ %indvars.iv.i31.i, %.critedge7.i..critedge5.i_crit_edge.i ], [ -1, %.lr.ph290.i.thread.i ], [ %indvars.iv.i31.i, %bb.ao ] ; 3 uses
  %.0223.lcssa.ph.i.i = phi i64 [ -1, %.lr.ph290.i.i ], [ %i.adq, %.critedge7.i..critedge5.i_crit_edge.i ], [ -1, %.lr.ph290.i.thread.i ], [ %indvars.iv300.i37.i, %bb.ao ] ; 2 uses
  %.not245.i.i = icmp ne i32 %i.cv, 0
  %i.ads = getelementptr inbounds nuw i8, ptr %i.cp, i64 64 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %i.cp, i64 28 ; 2 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.cp, i64 32 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.cp, i64 36 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.cp, i64 40 ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.cc, %.critedge5.i.i
  %indvars.iv304.i.i = phi i64 [ 0, %.critedge5.i.i ], [ %indvars.iv.next305.i.i, %bb.cc ] ; 10 uses
  %i.adx = load i32, ptr %i.ae, align 8, !tbaa !182
  %i.ady = shl i32 %i.cz, %i.adx
  %i.adz = getelementptr inbounds nuw i8, ptr %.pre75.i, i64 %indvars.iv304.i.i
  %i.aea = load i8, ptr %i.adz, align 1, !tbaa !114
  %i.aeb = zext i8 %i.aea to i32
  %i.aec = add nsw i32 %i.ady, %i.aeb             ; 4 uses
  %i.aed = load i32, ptr %i.af, align 4, !tbaa !185
  %i.aee = shl i32 %i.dd, %i.aed
  %i.aef = getelementptr inbounds nuw i8, ptr %.pre4976.i, i64 %indvars.iv304.i.i
  %i.aeg = load i8, ptr %i.aef, align 1, !tbaa !114
  %i.aeh = zext i8 %i.aeg to i32
  %i.aei = add nsw i32 %i.aee, %i.aeh             ; 4 uses
  %i.aej = load i32, ptr %i.du, align 4, !tbaa !204
  %i.aek = mul nsw i32 %i.aei, %i.aej
  %i.ael = add nsw i32 %i.aek, %i.aec
  %i.aem = sext i32 %i.ael to i64                 ; 5 uses
  %i.aen = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.aem ; 2 uses
  %i.aeo = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.aem ; 9 uses
  %i.aep = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.aem ; 2 uses
  %.not240.i.i = icmp sgt i64 %indvars.iv304.i.i, %.0223.lcssa.ph.i.i ; 2 uses
  br i1 %.not240.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv304.i.i
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !139
  %i.aes = icmp sgt i32 %i.aer, 9
  br i1 %i.aes, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.aet = icmp sle i64 %indvars.iv304.i.i, %.0223.lcssa.ph.i.i
  %.not241.i.i = icmp sgt i64 %indvars.iv304.i.i, %i.adr ; 2 uses
  %or.cond254.i.i = or i1 %i.aet, %.not241.i.i
  br i1 %or.cond254.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.aeu = load i32, ptr %i.aen, align 4, !tbaa !139
  %i.aev = icmp sgt i32 %i.aeu, 1
  br i1 %i.aev, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  br i1 %.not241.i.i, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.aew = load i8, ptr %i.dj, align 1, !tbaa !114
  %.not242.i.i = icmp eq i8 %i.aew, 0
  br i1 %.not242.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf, %bb.bd
  %i.aex = load ptr, ptr %i.d, align 16, !tbaa !78
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !91
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 2344
  %i.afb = load i8, ptr %i.afa, align 4, !tbaa !206
  %i.afc = zext i8 %i.afb to i32
  %i.afd = add nuw nsw i32 %i.afc, 1
  %i.afe = tail call fastcc i32 @abs_decode(ptr noundef readonly %0, i32 noundef %i.afd)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %.0.i20.i = phi i32 [ %i.afe, %bb.bi ], [ 0, %bb.bh ], [ 0, %bb.bg ] ; 4 uses
  br i1 %.not240.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv304.i.i
  %i.afg = load i32, ptr %i.aff, align 4, !tbaa !139
  %i.afh = shl nsw i32 %.0.i20.i, 1
  %i.afi = add nsw i32 %i.afg, %i.afh
  store i32 %i.afi, ptr %i.aeo, align 4, !tbaa !139
  br label %bb.bs

bb.bl:                                            ; preds = %bb.bj
  %.not243.i.i = icmp sgt i64 %indvars.iv304.i.i, %i.adr
  br i1 %.not243.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.afj = load i32, ptr %i.aen, align 4, !tbaa !139
  %i.afk = shl nsw i32 %.0.i20.i, 1
  %i.afl = add nsw i32 %i.afj, %i.afk
  store i32 %i.afl, ptr %i.aeo, align 4, !tbaa !139
  br label %bb.bs

bb.bn:                                            ; preds = %bb.bl
  store i32 %.0.i20.i, ptr %i.aeo, align 4, !tbaa !139
  %.not244.i.i = icmp eq i32 %.0.i20.i, 0
  br i1 %.not244.i.i, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %.val258.i.i = load ptr, ptr %i.cl, align 16, !tbaa !85 ; 4 uses
  %i.afm = getelementptr inbounds nuw i8, ptr %.val258.i.i, i64 24 ; 4 uses
  %i.afn = load i32, ptr %i.afm, align 8, !tbaa !88 ; 2 uses
  %i.afo = shl nsw i32 %i.afn, 1                  ; 3 uses
  store i32 %i.afo, ptr %i.afm, align 8, !tbaa !88
  %i.afp = and i32 %i.afn, 32767
  %.not.i.i267.i.i = icmp eq i32 %i.afp, 0
  br i1 %.not.i.i267.i.i, label %bb.bp, label %refill.exit.i.i.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.afq = getelementptr inbounds nuw i8, ptr %.val258.i.i, i64 40 ; 2 uses
  %i.afr = load ptr, ptr %i.afq, align 8, !tbaa !86 ; 4 uses
  %i.afs = load i8, ptr %i.afr, align 1, !tbaa !114
  %i.aft = zext i8 %i.afs to i32
  %i.afu = shl nuw nsw i32 %i.aft, 9
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afr, i64 1
  %i.afw = load i8, ptr %i.afv, align 1, !tbaa !114
  %i.afx = zext i8 %i.afw to i32
  %i.afy = shl nuw nsw i32 %i.afx, 1
  %i.afz = or disjoint i32 %i.afy, %i.afu
  %i.aga = add i32 %i.afo, -65535
  %i.agb = add i32 %i.aga, %i.afz                 ; 3 uses
  store i32 %i.agb, ptr %i.afm, align 8, !tbaa !88
  %i.agc = getelementptr inbounds nuw i8, ptr %.val258.i.i, i64 48
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !89
  %i.age = icmp ult ptr %i.afr, %i.agd
  br i1 %i.age, label %bb.bq, label %refill.exit.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.agf = getelementptr inbounds nuw i8, ptr %i.afr, i64 2
  store ptr %i.agf, ptr %i.afq, align 8, !tbaa !86
  br label %refill.exit.i.i.i.i

refill.exit.i.i.i.i:                              ; preds = %bb.bq, %bb.bp, %bb.bo
  %i.agg = phi i32 [ %i.agb, %bb.bq ], [ %i.agb, %bb.bp ], [ %i.afo, %bb.bo ] ; 2 uses
  %i.agh = getelementptr inbounds nuw i8, ptr %.val258.i.i, i64 28
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !117
  %i.agj = shl i32 %i.agi, 17                     ; 2 uses
  %i.agk = icmp slt i32 %i.agg, %i.agj
  br i1 %i.agk, label %coeff_sign_flag_decode.exit.i.i, label %bb.br

bb.br:                                            ; preds = %refill.exit.i.i.i.i
  %i.agl = sub nsw i32 %i.agg, %i.agj
  store i32 %i.agl, ptr %i.afm, align 8, !tbaa !88
  br label %coeff_sign_flag_decode.exit.i.i

coeff_sign_flag_decode.exit.i.i:                  ; preds = %bb.br, %refill.exit.i.i.i.i
  %.0.i.i.neg.i.i = phi i32 [ -1, %bb.br ], [ 1, %refill.exit.i.i.i.i ]
  store i32 %.0.i.i.neg.i.i, ptr %i.aep, align 4, !tbaa !139
  br label %bb.bs

bb.bs:                                            ; preds = %coeff_sign_flag_decode.exit.i.i, %bb.bn, %bb.bm, %bb.bk
  %.not246.i.i = icmp sgt i64 %indvars.iv304.i.i, %i.adr
  %or.cond255.i.i = or i1 %.not245.i.i, %.not246.i.i
  br i1 %or.cond255.i.i, label %.thread-pre-split_crit_edge.i.i, label %bb.bt

.thread-pre-split_crit_edge.i.i:                  ; preds = %bb.bs
  %.pr.pre.i.i = load i32, ptr %i.aeo, align 4, !tbaa !139
  br label %thread-pre-split.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.agm = icmp sgt i32 %i.aec, 0
  br i1 %i.agm, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.agn = getelementptr inbounds i8, ptr %i.aeo, i64 -4
  %i.ago = load i32, ptr %i.agn, align 4, !tbaa !139
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.agp = phi i32 [ %i.ago, %bb.bu ], [ 0, %bb.bt ]
  %i.agq = icmp sgt i32 %i.aei, 0
  br i1 %i.agq, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.agr = load i32, ptr %i.du, align 4, !tbaa !204
  %i.ags = sub nsw i32 0, %i.agr
  %i.agt = sext i32 %i.ags to i64
  %i.agu = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.agt
  %i.agv = load i32, ptr %i.agu, align 4, !tbaa !139
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.agw = phi i32 [ %i.agv, %bb.bw ], [ 0, %bb.bv ]
  %i.agx = tail call i32 @llvm.smax.i32(i32 %i.agp, i32 %i.agw) ; 4 uses
  %i.agy = load i32, ptr %i.aeo, align 4, !tbaa !139 ; 5 uses
  %i.agz = icmp eq i32 %i.agy, 1
  %i.aha = icmp sgt i32 %i.agx, 0
  %or.cond9.i.i = select i1 %i.agz, i1 %i.aha, i1 false
  br i1 %or.cond9.i.i, label %.thread270.i.i, label %bb.by

.thread270.i.i:                                   ; preds = %bb.bx
  store i32 %i.agx, ptr %i.aeo, align 4, !tbaa !139
  %.pre308.i.i = load ptr, ptr %i.ads, align 8, !tbaa !207
  br label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.ahb = icmp slt i32 %i.agy, 1
  %.not247.i.i = icmp sgt i32 %i.agy, %i.agx
  %or.cond256.i.i = select i1 %i.ahb, i1 true, i1 %.not247.i.i
  br i1 %or.cond256.i.i, label %thread-pre-split.i.i, label %bb.bz

end_hunk_2
