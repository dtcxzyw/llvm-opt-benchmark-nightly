Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@qoa_encode_frame:bb.a
  br label %.preheader167

.preheader167:                                    ; preds = %.preheader167.lr.ph, %.preheader167
  %indvars.iv = phi i64 [ 0, %.preheader167.lr.ph ], [ %indvars.iv.next, %.preheader167 ] ; 2 uses
  %.0158171 = phi i32 [ 8, %.preheader167.lr.ph ], [ %i.cp, %.preheader167 ] ; 3 uses
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ar, i64 %indvars.iv ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i32, ptr %i.as, align 4
  %i.av = load i32, ptr %i.at, align 4
  %i.aw = shl i32 %i.au, 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ay = load i32, ptr %i.ax, align 4            ; 2 uses
  %i.az = and i32 %i.ay, 65535
  %i.ba = or disjoint i32 %i.aw, %i.az
  %i.bb = zext i32 %i.ba to i64                   ; 3 uses
  %i.bc = shl i32 %i.av, 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %i.bf = and i32 %i.be, 65535
  %i.bg = or disjoint i32 %i.bc, %i.bf
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  %i.bn = load i32, ptr %i.bm, align 4            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.bp = load i32, ptr %i.bo, align 4            ; 2 uses
  %i.bq = zext i32 %.0158171 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 %i.bq ; 8 uses
  %i.bs = add i32 %.0158171, 8
  %i.bt = lshr i64 %i.bb, 24
  %i.bu = trunc nuw i64 %i.bt to i8
  store i8 %i.bu, ptr %i.br, align 1
  %i.bv = lshr i64 %i.bb, 16
  %i.bw = trunc i64 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bw, ptr %i.bx, align 1
  %i.by = lshr i64 %i.bb, 8
  %i.bz = trunc i64 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bz, ptr %i.ca, align 1
  %i.cb = trunc i32 %i.ay to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 %i.cb, ptr %i.cc, align 1
  %i.cd = lshr i32 %i.bj, 8
  %i.ce = trunc i32 %i.cd to i8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i8 %i.ce, ptr %i.cf, align 1
  %i.cg = trunc i32 %i.bj to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 5
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = lshr i32 %i.bn, 8
  %i.cj = trunc i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 6
  store i8 %i.cj, ptr %i.ck, align 1
  %i.cl = trunc i32 %i.bn to i8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.br, i64 7
  store i8 %i.cl, ptr %i.cm, align 1
  %i.cn = zext i32 %i.bs to i64
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 %i.cn ; 8 uses
  %i.cp = add i32 %.0158171, 16                   ; 3 uses
  %i.cq = lshr i64 %i.bh, 24
  %i.cr = trunc nuw i64 %i.cq to i8
  store i8 %i.cr, ptr %i.co, align 1
  %i.cs = lshr i64 %i.bh, 16
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 1
  store i8 %i.ct, ptr %i.cu, align 1
  %i.cv = lshr i64 %i.bh, 8
  %i.cw = trunc i64 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  store i8 %i.cw, ptr %i.cx, align 1
  %i.cy = trunc i32 %i.be to i8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  store i8 %i.cy, ptr %i.cz, align 1
  %i.da = lshr i32 %i.bl, 8
  %i.db = trunc i32 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i8 %i.db, ptr %i.dc, align 1
  %i.dd = trunc i32 %i.bl to i8
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 5
  store i8 %i.dd, ptr %i.de, align 1
  %i.df = lshr i32 %i.bp, 8
  %i.dg = trunc i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  store i8 %i.dg, ptr %i.dh, align 1
  %i.di = trunc i32 %i.bp to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.co, i64 7
  store i8 %i.di, ptr %i.dj, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %exitcond.not, label %.preheader166.thread, label %.preheader167

.preheader166:                                    ; preds = %bb.a
  %.not242 = icmp eq i32 %2, 0
  br i1 %.not242, label %._crit_edge214, label %.preheader

.preheader166.thread:                             ; preds = %.preheader167
  %.not242276 = icmp eq i32 %2, 0
  br i1 %.not242276, label %._crit_edge214, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader166.thread
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.0.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  %.sroa.0.4..sroa_idx289 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 8
  %.sroa.0.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 4
  %.sroa.0.12..sroa_idx290 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 12
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %.0105213.us = phi i32 [ %i.hs, %._crit_edge.us ], [ 0, %.preheader.us.preheader ] ; 4 uses
  %.1159212.us = phi i32 [ %i.gv, %._crit_edge.us ], [ %i.cp, %.preheader.us.preheader ]
  %i.dl = sub nuw i32 %2, %.0105213.us
  %..i.us = tail call i32 @llvm.smin.i32(i32 %i.dl, i32 20) ; 2 uses
  %i.dm = mul i32 %.0105213.us, %i.b
  %i.dn = add i32 %..i.us, %.0105213.us
  %i.do = mul i32 %i.dn, %i.b
  %i.dp = sub nsw i32 20, %..i.us
  %i.dq = mul nuw nsw i32 %i.dp, 3
  %i.dr = zext nneg i32 %i.dq to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %.split203.us233
  %indvars.iv259 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next260, %.split203.us233 ] ; 4 uses
  %.2160209.us = phi i32 [ %.1159212.us, %.preheader.us ], [ %i.gv, %.split203.us233 ] ; 2 uses
  %i.ds = trunc nuw i64 %indvars.iv259 to i32     ; 2 uses
  %i.dt = add i32 %i.dm, %i.ds                    ; 2 uses
  %i.du = add i32 %i.do, %i.ds                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0148)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv259 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.dk, i64 %indvars.iv259 ; 7 uses
  %.sroa.15.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 16 ; 2 uses
  %.sroa.15.0.copyload.us = load i32, ptr %.sroa.15.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.19.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 20 ; 2 uses
  %.sroa.19.0.copyload.us = load i32, ptr %.sroa.19.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.23.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 24 ; 2 uses
  %.sroa.23.0.copyload.us = load i32, ptr %.sroa.23.0..sroa_idx.us, align 4 ; 2 uses
  %.sroa.27.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.dx, i64 28 ; 2 uses
  %.sroa.27.0.copyload.us = load i32, ptr %.sroa.27.0..sroa_idx.us, align 4 ; 2 uses
  %i.dy = icmp slt i32 %i.dt, %i.du
  br i1 %i.dy, label %.lr.ph.us.us, label %.split203.us233.loopexit245

.split203.us233.loopexit245:                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.dz = and i32 %i.dw, 15                       ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %.split203.us233

.lr.ph.us.us:                                     ; preds = %bb.b, %bb.f
  %.097201.us.us = phi i32 [ %i.gr, %bb.f ], [ 0, %bb.b ] ; 2 uses
  %.098200.us.us = phi i32 [ %.199.us.us, %bb.f ], [ 0, %bb.b ]
  %.0100199.us.us = phi i64 [ %.1101.us.us, %bb.f ], [ 0, %bb.b ]
  %.0102198.us.us = phi i64 [ %.1103.us.us, %bb.f ], [ -1, %bb.b ] ; 3 uses
  %.sroa.4.0197.us.us = phi i32 [ %.sroa.4.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.5.0196.us.us = phi i32 [ %.sroa.5.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.6.0195.us.us = phi i32 [ %.sroa.6.1.us.us, %bb.f ], [ undef, %bb.b ]
  %.sroa.7.0194.us.us = phi i32 [ %.sroa.7.1.us.us, %bb.f ], [ undef, %bb.b ]
  %i.eb = add nsw i32 %i.dw, %.097201.us.us
  %i.ec = and i32 %i.eb, 15                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %i.dx, i64 16, i1 false)
  %i.ed = zext nneg i32 %i.ec to i64              ; 3 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr @qoa_reciprocal_tab, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = getelementptr inbounds nuw [32 x i8], ptr @qoa_dequant_tab, i64 %i.ed
  %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us = load i32, ptr %.sroa.0.12..sroa_idx, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.us.us
  %.0.i114193.us.us = phi i32 [ %.sroa.0.12..sroa.0.12..sroa.0.12..sroa_idx.promoted.us.us, %.lr.ph.us.us ], [ %.0.i114.us.us, %bb.d ] ; 2 uses
  %.0179.us.us = phi i32 [ %i.dt, %.lr.ph.us.us ], [ %i.go, %bb.d ] ; 2 uses
  %.094178.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %i.fx, %bb.d ]
  %.095177.us.us = phi i64 [ %i.ed, %.lr.ph.us.us ], [ %i.gn, %bb.d ] ; 2 uses
  %.sroa.15.0176.us.us = phi i32 [ %.sroa.15.0.copyload.us, %.lr.ph.us.us ], [ %i.gc, %bb.d ] ; 5 uses
  %.sroa.19.0175.us.us = phi i32 [ %.sroa.19.0.copyload.us, %.lr.ph.us.us ], [ %i.gf, %bb.d ] ; 5 uses
  %.sroa.23.0174.us.us = phi i32 [ %.sroa.23.0.copyload.us, %.lr.ph.us.us ], [ %i.gi, %bb.d ] ; 5 uses
  %.sroa.27.0173.us.us = phi i32 [ %.sroa.27.0.copyload.us, %.lr.ph.us.us ], [ %i.gl, %bb.d ] ; 5 uses
  %i.eh = sext i32 %.0179.us.us to i64
  %i.ei = getelementptr inbounds [2 x i8], ptr %0, i64 %i.eh
  %i.ej = load i16, ptr %i.ei, align 2
  %i.ek = sext i16 %i.ej to i32                   ; 3 uses
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us = load i32, ptr %.sroa.0, align 4 ; 2 uses
  %i.el = mul nsw i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, %.sroa.15.0176.us.us
  %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us = load i32, ptr %.sroa.0.4..sroa_idx289, align 4 ; 2 uses
  %i.em = mul nsw i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, %.sroa.19.0175.us.us
  %i.en = add nsw i32 %i.em, %i.el
  %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us = load i32, ptr %.sroa.0.8..sroa_idx, align 4 ; 2 uses
  %i.eo = mul nsw i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, %.sroa.23.0174.us.us
  %i.ep = add nsw i32 %i.en, %i.eo
  %i.eq = mul nsw i32 %.0.i114193.us.us, %.sroa.27.0173.us.us
  %i.er = add nsw i32 %i.ep, %i.eq
  %i.es = ashr i32 %i.er, 13                      ; 3 uses
  %i.et = sub nsw i32 %i.ek, %i.es
  %i.eu = mul nsw i32 %i.et, %i.ef
  %i.ev = add nsw i32 %i.eu, 32768                ; 2 uses
  %i.ew = ashr i32 %i.ev, 16                      ; 2 uses
  %i.ex = tail call i32 @llvm.scmp.i32.i32(i32 %i.ek, i32 %i.es)
  %4 = icmp sgt i32 %i.ew, 0
  %.neg.i.us.us = sext i1 %4 to i32
  %.lobit.neg.neg.i.us.us = lshr i32 %i.ev, 31
  %.neg9.i.us.us = add nsw i32 %i.ew, %i.ex
  %5 = add nsw i32 %.neg9.i.us.us, %.lobit.neg.neg.i.us.us
  %i.ey = add nsw i32 %5, %.neg.i.us.us
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 -8)
  %.0.i.us.us = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 8)
  %i.fa = sext i32 %.0.i.us.us to i64
  %i.fb = getelementptr [4 x i8], ptr @qoa_quant_tab, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.fb, i64 32
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = sext i32 %i.fd to i64                   ; 2 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4            ; 2 uses
  %i.fh = add nsw i32 %i.es, %i.fg
  %i.fi = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 -32768)
  %.0.i114.us.us = tail call range(i32 -32768, 32768) i32 @llvm.smin.i32(i32 %i.fi, i32 32767) ; 3 uses
  %i.fj = mul nsw i32 %.sroa.15.0176.us.us, %.sroa.15.0176.us.us
  %i.fk = mul nsw i32 %.sroa.19.0175.us.us, %.sroa.19.0175.us.us
  %i.fl = mul nsw i32 %.sroa.23.0174.us.us, %.sroa.23.0174.us.us
  %i.fm = mul nsw i32 %.sroa.27.0173.us.us, %.sroa.27.0173.us.us
  %i.fn = add nuw nsw i32 %i.fl, %i.fm
  %i.fo = add nuw nsw i32 %i.fn, %i.fk
  %i.fp = add nuw nsw i32 %i.fo, %i.fj
  %i.fq = lshr i32 %i.fp, 18
  %spec.store.select.us.us = tail call i32 @llvm.usub.sat.i32(i32 %i.fq, i32 2303) ; 2 uses
  %i.fr = sub nsw i32 %i.ek, %.0.i114.us.us
  %i.fs = sext i32 %i.fr to i64                   ; 2 uses
  %i.ft = mul nsw i64 %i.fs, %i.fs
  %i.fu = mul nuw nsw i32 %spec.store.select.us.us, %spec.store.select.us.us
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = add i64 %.094178.us.us, %i.fv
  %i.fx = add i64 %i.fw, %i.ft                    ; 4 uses
  %.not.us.us = icmp ugt i64 %i.fx, %.0102198.us.us
  br i1 %.not.us.us, label %.thread.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.fy = ashr i32 %i.fg, 4                       ; 5 uses
  %i.fz = sub nsw i32 0, %i.fy                    ; 4 uses
  %i.ga = icmp slt i32 %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..us.us, 0
  %i.gb = select i1 %i.ga, i32 %i.fz, i32 %i.fy
  %i.gc = add nsw i32 %i.gb, %.sroa.15.0176.us.us ; 2 uses
  %i.gd = icmp slt i32 %.sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..sroa.0.4..us.us, 0
  %i.ge = select i1 %i.gd, i32 %i.fz, i32 %i.fy
  %i.gf = add nsw i32 %i.ge, %.sroa.19.0175.us.us ; 2 uses
  %i.gg = icmp slt i32 %.sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..sroa.0.8..us.us, 0
  %i.gh = select i1 %i.gg, i32 %i.fz, i32 %i.fy
  %i.gi = add nsw i32 %i.gh, %.sroa.23.0174.us.us ; 2 uses
  %i.gj = icmp slt i32 %.0.i114193.us.us, 0
  %i.gk = select i1 %i.gj, i32 %i.fz, i32 %i.fy
  %i.gl = add nsw i32 %i.gk, %.sroa.27.0173.us.us ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.4..sroa_idx, i64 12, i1 false)
  store i32 %.0.i114.us.us, ptr %.sroa.0.12..sroa_idx290, align 4
  %i.gm = shl i64 %.095177.us.us, 3
  %i.gn = or i64 %i.gm, %i.fe                     ; 2 uses
  %i.go = add i32 %.0179.us.us, %i.b              ; 2 uses
  %i.gp = icmp slt i32 %i.go, %i.du
  br i1 %i.gp, label %bb.c, label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.c, %bb.d
  %.sroa.27.0.lcssa.us.us = phi i32 [ %i.gl, %bb.d ], [ %.sroa.27.0173.us.us, %bb.c ]
  %.sroa.23.0.lcssa.us.us = phi i32 [ %i.gi, %bb.d ], [ %.sroa.23.0174.us.us, %bb.c ]
  %.sroa.19.0.lcssa.us.us = phi i32 [ %i.gf, %bb.d ], [ %.sroa.19.0175.us.us, %bb.c ]
  %.sroa.15.0.lcssa.us.us = phi i32 [ %i.gc, %bb.d ], [ %.sroa.15.0176.us.us, %bb.c ]
  %.095.lcssa.us.us = phi i64 [ %i.gn, %bb.d ], [ %.095177.us.us, %bb.c ]
  %i.gq = icmp ult i64 %i.fx, %.0102198.us.us
  br i1 %i.gq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.thread.us.us
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread.us.us
  %.sroa.7.1.us.us = phi i32 [ %.sroa.27.0.lcssa.us.us, %bb.e ], [ %.sroa.7.0194.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.6.1.us.us = phi i32 [ %.sroa.23.0.lcssa.us.us, %bb.e ], [ %.sroa.6.0195.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.5.1.us.us = phi i32 [ %.sroa.19.0.lcssa.us.us, %bb.e ], [ %.sroa.5.0196.us.us, %.thread.us.us ] ; 2 uses
  %.sroa.4.1.us.us = phi i32 [ %.sroa.15.0.lcssa.us.us, %bb.e ], [ %.sroa.4.0197.us.us, %.thread.us.us ] ; 2 uses
  %.1103.us.us = phi i64 [ %i.fx, %bb.e ], [ %.0102198.us.us, %.thread.us.us ]
  %.1101.us.us = phi i64 [ %.095.lcssa.us.us, %bb.e ], [ %.0100199.us.us, %.thread.us.us ] ; 2 uses
  %.199.us.us = phi i32 [ %i.ec, %bb.e ], [ %.098200.us.us, %.thread.us.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  %i.gr = add nuw nsw i32 %.097201.us.us, 1       ; 2 uses
  %exitcond258.not = icmp eq i32 %i.gr, 16
  br i1 %exitcond258.not, label %.split203.us233, label %.lr.ph.us.us

.split203.us233:                                  ; preds = %bb.f, %.split203.us233.loopexit245
  %.us-phi.us = phi i32 [ %.sroa.27.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.7.1.us.us, %bb.f ]
  %.us-phi204.us = phi i32 [ %.sroa.23.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.6.1.us.us, %bb.f ]
  %.us-phi205.us = phi i32 [ %.sroa.19.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.5.1.us.us, %bb.f ]
  %.us-phi206.us = phi i32 [ %.sroa.15.0.copyload.us, %.split203.us233.loopexit245 ], [ %.sroa.4.1.us.us, %bb.f ]
  %.us-phi207.us = phi i64 [ %i.ea, %.split203.us233.loopexit245 ], [ %.1101.us.us, %bb.f ]
  %.us-phi208.us = phi i32 [ %i.dz, %.split203.us233.loopexit245 ], [ %.199.us.us, %bb.f ]
  store i32 %.us-phi208.us, ptr %i.dv, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0148, i64 16, i1 false)
  store i32 %.us-phi206.us, ptr %.sroa.15.0..sroa_idx.us, align 4
  store i32 %.us-phi205.us, ptr %.sroa.19.0..sroa_idx.us, align 4
  store i32 %.us-phi204.us, ptr %.sroa.23.0..sroa_idx.us, align 4
  store i32 %.us-phi.us, ptr %.sroa.27.0..sroa_idx.us, align 4
  %i.gs = shl i64 %.us-phi207.us, %i.dr           ; 8 uses
  %i.gt = zext i32 %.2160209.us to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 %i.gt ; 8 uses
  %i.gv = add i32 %.2160209.us, 8                 ; 3 uses
  %i.gw = lshr i64 %i.gs, 56
  %i.gx = trunc nuw i64 %i.gw to i8
  store i8 %i.gx, ptr %i.gu, align 1
  %i.gy = lshr i64 %i.gs, 48
  %i.gz = trunc i64 %i.gy to i8
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 1
  store i8 %i.gz, ptr %i.ha, align 1
  %i.hb = lshr i64 %i.gs, 40
  %i.hc = trunc i64 %i.hb to i8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gu, i64 2
  store i8 %i.hc, ptr %i.hd, align 1
  %i.he = lshr i64 %i.gs, 32
  %i.hf = trunc i64 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 3
  store i8 %i.hf, ptr %i.hg, align 1
  %i.hh = lshr i64 %i.gs, 24
  %i.hi = trunc i64 %i.hh to i8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i8 %i.hi, ptr %i.hj, align 1
  %i.hk = lshr i64 %i.gs, 16
  %i.hl = trunc i64 %i.hk to i8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 5
  store i8 %i.hl, ptr %i.hm, align 1
  %i.hn = lshr i64 %i.gs, 8
  %i.ho = trunc i64 %i.hn to i8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gu, i64 6
  store i8 %i.ho, ptr %i.hp, align 1
  %i.hq = trunc i64 %i.gs to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gu, i64 7
  store i8 %i.hq, ptr %i.hr, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0148)
  %indvars.iv.next260 = add nuw nsw i64 %indvars.iv259, 1 ; 2 uses
  %exitcond263.not = icmp eq i64 %indvars.iv.next260, %i.j
  br i1 %exitcond263.not, label %._crit_edge.us, label %bb.b

._crit_edge.us:                                   ; preds = %.split203.us233
  %i.hs = add i32 %.0105213.us, 20                ; 2 uses
  %i.ht = icmp ult i32 %i.hs, %2
  br i1 %i.ht, label %.preheader.us, label %._crit_edge214

.preheader:                                       ; preds = %.preheader166, %.preheader
  %.0105213 = phi i32 [ %i.hu, %.preheader ], [ 0, %.preheader166 ]
  %i.hu = add i32 %.0105213, 20                   ; 2 uses
  %i.hv = icmp ult i32 %i.hu, %2
  br i1 %i.hv, label %.preheader, label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge.us, %.preheader, %.preheader166.thread, %.preheader166
  %.1159.lcssa = phi i32 [ 8, %.preheader166 ], [ %i.cp, %.preheader166.thread ], [ 8, %.preheader ], [ %i.gv, %._crit_edge.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.1159.lcssa
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define hidden noalias noundef ptr @qoa_encode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #49 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = add i32 %i.e, -16777216
  %or.cond = icmp ult i32 %i.f, -16777215
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %1, align 4                ; 2 uses
  %i.h = add i32 %i.g, -9
  %or.cond58 = icmp ult i32 %i.h, -8
  br i1 %or.cond58, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = add i32 %i.b, 5119
  %i.j = udiv i32 %i.i, 5120                      ; 2 uses
  %i.k = add i32 %i.b, 19
  %i.l = udiv i32 %i.k, 20
  %i.m = shl nuw nsw i32 %i.j, 3
  %i.n = shl nuw nsw i32 %i.j, 4
  %i.o = shl nuw nsw i32 %i.l, 3
  %reass.add = add nuw nsw i32 %i.o, %i.n
  %reass.mul = mul i32 %reass.add, %i.g
  %i.p = add nuw nsw i32 %i.m, 8
  %i.q = add i32 %i.p, %reass.mul
  %i.r = zext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #74 ; 7 uses
  %i.t = load i32, ptr %1, align 4                ; 3 uses
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 5 uses
  %wide.trip.count = zext i32 %i.t to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.v = icmp ult i32 %i.t, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
end_hunk_0
