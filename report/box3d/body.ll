Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/body?download=true
inline.NumInlined: 305
inline.NumDeleted: 45
begin_hunk_0_@b3CreateBody:bb.a

bb.l:                                             ; preds = %bb.f, %bb.e, %bb.k
  %.0 = phi i32 [ %i.s, %bb.k ], [ 1, %bb.e ], [ %.mux, %bb.f ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 3856
  %i.ao = tail call i32 @b3AllocId(ptr noundef nonnull %i.an) #10 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !199, !range !97, !noundef !98
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 89
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !200, !range !97, !noundef !98
  %i.at = shl nuw nsw i8 %i.as, 1
  %i.au = or disjoint i8 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 90
  %i.aw = load i8, ptr %i.av, align 2, !tbaa !201, !range !97, !noundef !98
  %i.ax = shl nuw nsw i8 %i.aw, 2
  %i.ay = or disjoint i8 %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 91
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !202, !range !97, !noundef !98
  %i.bb = shl nuw nsw i8 %i.ba, 3
  %i.bc = or disjoint i8 %i.ay, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !203, !range !97, !noundef !98
  %i.bf = shl nuw nsw i8 %i.be, 4
  %i.bg = or disjoint i8 %i.bc, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 93
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !204, !range !97, !noundef !98
  %i.bj = shl nuw nsw i8 %i.bi, 5
  %i.bk = or i8 %i.bg, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 3920
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !69
  %i.bn = sext i32 %.0 to i64
  %i.bo = getelementptr inbounds [88 x i8], ptr %i.bm, i64 %i.bn ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !100 ; 2 uses
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !100 ; 4 uses
  %.not.i = icmp slt i32 %i.br, %i.bs
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !205 ; 2 uses
  br i1 %.not.i, label %b3EmplaceHelper.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bt = mul nsw i32 %i.bs, 216
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = shl nsw i32 %i.bs, 1
  %i.bw = select i1 %i.bu, i32 16, i32 %i.bv      ; 2 uses
  %i.bx = mul nsw i32 %i.bw, 216
  %i.by = tail call ptr @b3GrowAlloc(ptr noundef %.pre.i, i32 noundef %i.bt, i32 noundef %i.bx) #10 ; 2 uses
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !205
  store i32 %i.bw, ptr %i.bq, align 4, !tbaa !100
  %.pre17.i = load i32, ptr %i.bp, align 8, !tbaa !100
  br label %b3EmplaceHelper.exit

b3EmplaceHelper.exit:                             ; preds = %bb.l, %bb.m
  %i.bz = phi i32 [ %.pre17.i, %bb.m ], [ %i.br, %bb.l ] ; 2 uses
  %i.ca = phi ptr [ %i.by, %bb.m ], [ %.pre.i, %bb.l ]
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %i.bp, align 8, !tbaa !100
  %i.cc = mul nsw i32 %i.bz, 216
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %i.ca, i64 %i.cd ; 13 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(216) %i.ce, i8 0, i64 216, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ce, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false), !tbaa.struct !101
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 12 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !102
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 28 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ci, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false), !tbaa.struct !101
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %i.cg, i64 16, i1 false), !tbaa.struct !102
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ck, ptr noundef nonnull align 4 dereferenceable(12) %i.ci, i64 12, i1 false), !tbaa.struct !101
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 68
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) %i.cl, i8 0, i64 76, i1 false)
  %i.cm = tail call float @b3GetLengthUnitsPerMeter() #10
  %i.cn = fmul float %i.cm, 1.000000e+05
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 180
  store float %i.cn, ptr %i.co, align 4, !tbaa !103
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 184
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cp, i8 0, i64 12, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 196
  %i.cs = load <2 x float>, ptr %i.cq, align 8, !tbaa !84
  store <2 x float> %i.cs, ptr %i.cr, align 4, !tbaa !84
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !206
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ce, i64 204
  store float %i.cu, ptr %i.cv, align 4, !tbaa !104
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ce, i64 208
  store i32 %i.ao, ptr %i.cw, align 4, !tbaa !105
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 212 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !207, !range !97, !noundef !98
  %i.da = shl nuw i8 %i.cz, 7
  %i.db = or disjoint i8 %i.da, %i.bk
  %i.dc = zext i8 %i.db to i32
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.de = load i8, ptr %i.dd, align 2, !tbaa !208, !range !97, !noundef !98
  %i.df = zext nneg i8 %i.de to i32
  %i.dg = shl nuw nsw i32 %i.df, 10
  %i.dh = or disjoint i32 %i.dg, %i.dc
  %i.di = load i32, ptr %1, align 8, !tbaa !196
  %i.dj = icmp eq i32 %i.di, 2
  %i.dk = select i1 %i.dj, i32 4096, i32 0
  %i.dl = or disjoint i32 %i.dk, %i.dh
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 94
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !194, !range !97, !noundef !98
  %i.do = zext nneg i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 13
  %i.dq = or disjoint i32 %i.dp, %i.dl
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 99
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !209, !range !97, !noundef !98
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 14
  %i.dv = or disjoint i32 %i.du, %i.dq
  store i32 %i.dv, ptr %i.cx, align 4, !tbaa !93
  %i.dw = icmp eq i32 %.0, 2
  br i1 %i.dw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %b3EmplaceHelper.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bo, i64 28 ; 2 uses
  %i.ea = load i32, ptr %i.dy, align 8, !tbaa !100 ; 2 uses
  %i.eb = load i32, ptr %i.dz, align 4, !tbaa !100 ; 4 uses
  %.not.i180 = icmp slt i32 %i.ea, %i.eb
  %.pre.i181 = load ptr, ptr %i.dx, align 8, !tbaa !205 ; 2 uses
  br i1 %.not.i180, label %b3EmplaceHelper.exit183, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ec = mul nsw i32 %i.eb, 56
  %i.ed = icmp eq i32 %i.eb, 0
  %i.ee = shl nsw i32 %i.eb, 1
  %i.ef = select i1 %i.ed, i32 16, i32 %i.ee      ; 2 uses
  %i.eg = mul nsw i32 %i.ef, 56
  %i.eh = tail call ptr @b3GrowAlloc(ptr noundef %.pre.i181, i32 noundef %i.ec, i32 noundef %i.eg) #10 ; 2 uses
  store ptr %i.eh, ptr %i.dx, align 8, !tbaa !205
  store i32 %i.ef, ptr %i.dz, align 4, !tbaa !100
  %.pre17.i182 = load i32, ptr %i.dy, align 8, !tbaa !100
  br label %b3EmplaceHelper.exit183

b3EmplaceHelper.exit183:                          ; preds = %bb.n, %bb.o
  %i.ei = phi i32 [ %.pre17.i182, %bb.o ], [ %i.ea, %bb.n ] ; 2 uses
  %i.ej = phi ptr [ %i.eh, %bb.o ], [ %.pre.i181, %bb.n ]
  %i.ek = add nsw i32 %i.ei, 1
  store i32 %i.ek, ptr %i.dy, align 8, !tbaa !100
  %i.el = mul nsw i32 %i.ei, 56
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds i8, ptr %i.ej, i64 %i.em ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.en, i8 0, i64 56, i1 false)
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.en, ptr noundef nonnull align 8 dereferenceable(12) %i.eo, i64 12, i1 false), !tbaa.struct !101
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ep, ptr noundef nonnull align 4 dereferenceable(12) %i.eq, i64 12, i1 false), !tbaa.struct !101
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.er, ptr noundef nonnull align 4 dereferenceable(16) @b3Quat_identity, i64 16, i1 false), !tbaa.struct !102
  %i.es = load i32, ptr %i.cx, align 4, !tbaa !93
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 52
  store i32 %i.es, ptr %i.et, align 4, !tbaa !95
  br label %bb.p

bb.p:                                             ; preds = %b3EmplaceHelper.exit183, %b3EmplaceHelper.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 3880 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 3888 ; 3 uses
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !210
  %i.ex = icmp eq i32 %i.ao, %i.ew
  br i1 %i.ex, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ey = getelementptr inbounds nuw i8, ptr %i.a, i64 3892 ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !211 ; 4 uses
  %.not177 = icmp slt i32 %i.ao, %i.ez
  %.pre188 = load ptr, ptr %i.eu, align 8, !tbaa !68 ; 2 uses
  br i1 %.not177, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fa = shl i32 %i.ez, 7
  %i.fb = icmp eq i32 %i.ez, 0
  %i.fc = shl nsw i32 %i.ez, 1
  %spec.select179 = select i1 %i.fb, i32 8, i32 %i.fc ; 2 uses
  %i.fd = shl i32 %spec.select179, 7
  %i.fe = tail call ptr @b3GrowAlloc(ptr noundef %.pre188, i32 noundef %i.fa, i32 noundef %i.fd) #10 ; 2 uses
  store ptr %i.fe, ptr %i.eu, align 8, !tbaa !68
  store i32 %spec.select179, ptr %i.ey, align 4, !tbaa !211
  %.pre189 = load i32, ptr %i.ev, align 8, !tbaa !210
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ff = phi i32 [ %.pre189, %bb.r ], [ %i.ao, %bb.q ] ; 2 uses
  %i.fg = phi ptr [ %i.fe, %bb.r ], [ %.pre188, %bb.q ]
  %i.fh = add nsw i32 %i.ff, 1
  store i32 %i.fh, ptr %i.ev, align 8, !tbaa !210
  %i.fi = sext i32 %i.ff to i64
  %i.fj = getelementptr inbounds [128 x i8], ptr %i.fg, i64 %i.fi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.fj, i8 0, i64 128, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.p, %bb.s
  %i.fk = load ptr, ptr %i.eu, align 8, !tbaa !68
  %i.fl = sext i32 %i.ao to i64
  %i.fm = getelementptr inbounds [128 x i8], ptr %i.fk, i64 %i.fl ; 17 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !212
  store ptr %i.fo, ptr %i.fm, align 8, !tbaa !106
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  store i32 %.0, ptr %i.fp, align 8, !tbaa !72
  %i.fq = load i32, ptr %i.bp, align 8, !tbaa !107
  %i.fr = add nsw i32 %i.fq, -1
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !83
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fm, i64 124 ; 3 uses
  %i.fu = load i16, ptr %i.ft, align 4, !tbaa !87
  %i.fv = add i16 %i.fu, 1
  store i16 %i.fv, ptr %i.ft, align 4, !tbaa !87
  %3 = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  store i64 4294967295, ptr %3, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  store i64 4294967295, ptr %i.fx, align 8
  store i64 -1, ptr %i.fw, align 8
  %4 = getelementptr inbounds nuw i8, ptr %i.fm, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 44
  store i64 -4294967296, ptr %4, align 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fm, i64 48 ; 2 uses
  store i32 -1, ptr %i.fz, align 8, !tbaa !108
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fm, i64 104
  store i32 -1, ptr %i.ga, align 8, !tbaa !213
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fm, i64 108 ; 2 uses
  store i32 %i.ao, ptr %i.gb, align 4, !tbaa !109
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !214
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fm, i64 52
  store float %i.gd, ptr %i.ge, align 4, !tbaa !110
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fm, i64 56
  %i.gg = getelementptr inbounds nuw i8, ptr %i.a, i64 4104
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.gf, i8 0, i64 48, i1 false)
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !215
  %i.gj = tail call i32 @b3AddName(ptr noundef nonnull %i.gg, ptr noundef %i.gi) #10
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fm, i64 116
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !111
  %i.gl = load i32, ptr %1, align 8, !tbaa !196
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fm, i64 120
  store i32 %i.gl, ptr %i.gm, align 8, !tbaa !112
  %i.gn = load i32, ptr %i.cx, align 4, !tbaa !93
  %i.go = getelementptr inbounds nuw i8, ptr %i.fm, i64 112
  store i32 %i.gn, ptr %i.go, align 8, !tbaa !89
  %i.gp = icmp sgt i32 %.0, 1
  br i1 %i.gp, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.gq = tail call ptr @b3CreateIsland(ptr noundef nonnull %i.a, i32 noundef range(i32 1, -2147483648) %.0) #10 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 24 ; 3 uses
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !118 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 28 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !119 ; 4 uses
  %.not.i184 = icmp slt i32 %i.gt, %i.gv
  %.pre.i185 = load ptr, ptr %i.gr, align 8, !tbaa !120 ; 2 uses
  br i1 %.not.i184, label %b3CreateIslandForBody.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gw = shl i32 %i.gv, 2
  %i.gx = icmp eq i32 %i.gv, 0
  %i.gy = shl nsw i32 %i.gv, 1
  %spec.select.i = select i1 %i.gx, i32 8, i32 %i.gy ; 2 uses
  %i.gz = shl i32 %spec.select.i, 2
  %i.ha = tail call ptr @b3GrowAlloc(ptr noundef %.pre.i185, i32 noundef %i.gw, i32 noundef %i.gz) #10 ; 2 uses
  store ptr %i.ha, ptr %i.gr, align 8, !tbaa !120
  store i32 %spec.select.i, ptr %i.gu, align 4, !tbaa !119
  %.pre21.i = load i32, ptr %i.gs, align 8, !tbaa !118
  br label %b3CreateIslandForBody.exit

b3CreateIslandForBody.exit:                       ; preds = %bb.u, %bb.v
  %i.hb = phi i32 [ %.pre21.i, %bb.v ], [ %i.gt, %bb.u ] ; 2 uses
  %i.hc = phi ptr [ %i.ha, %bb.v ], [ %.pre.i185, %bb.u ]
  %i.hd = load i32, ptr %i.gb, align 4, !tbaa !109
  %i.he = add nsw i32 %i.hb, 1
  store i32 %i.he, ptr %i.gs, align 8, !tbaa !118
  %i.hf = sext i32 %i.hb to i64
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %i.hf
  store i32 %i.hd, ptr %i.hg, align 4, !tbaa !100
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !121 ; 2 uses
  store i32 %i.hi, ptr %i.fy, align 4, !tbaa !122
  store i32 0, ptr %i.fz, align 8, !tbaa !108
  tail call void @b3ValidateIsland(ptr noundef nonnull %i.a, i32 noundef %i.hi) #10
  br label %bb.w

bb.w:                                             ; preds = %b3CreateIslandForBody.exit, %bb.t
  tail call void @b3ValidateSolverSets(ptr noundef nonnull %i.a) #10
  %i.hj = add nsw i32 %i.ao, 1                    ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.a, i64 4760
  %i.hl = load i16, ptr %i.hk, align 8, !tbaa !86 ; 2 uses
  %i.hm = load i16, ptr %i.ft, align 4, !tbaa !87 ; 2 uses
  store i8 0, ptr %i.c, align 1, !tbaa !96
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 4736
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !123 ; 2 uses
  %.not178 = icmp eq ptr %i.ho, null
  br i1 %.not178, label %._crit_edge190, label %bb.x

._crit_edge190:                                   ; preds = %bb.w
  %.pre191 = zext i16 %i.hm to i64
  %.pre192 = shl nuw i64 %.pre191, 48
  %.pre194 = zext i16 %i.hl to i64
  %.pre196 = shl nuw nsw i64 %.pre194, 32
  %.pre198 = zext i32 %i.hj to i64
  %.pre200 = or disjoint i64 %.pre196, %.pre198
  %.pre202 = or disjoint i64 %.pre200, %.pre192
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i32 %0, ptr %2, align 8, !tbaa !124
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.hp, align 4
  %i.hq = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.hq, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !217
  %.sroa.5.0.insert.ext = zext i16 %i.hm to i64
  %.sroa.5.0.insert.shift = shl nuw i64 %.sroa.5.0.insert.ext, 48
  %.sroa.4.0.insert.ext = zext i16 %i.hl to i64
  %.sroa.4.0.insert.shift = shl nuw nsw i64 %.sroa.4.0.insert.ext, 32
  %.sroa.0157.0.insert.ext = zext i32 %i.hj to i64
  %.sroa.4.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.shift, %.sroa.0157.0.insert.ext
  %.sroa.0157.0.insert.insert = or disjoint i64 %.sroa.4.0.insert.insert, %.sroa.5.0.insert.shift ; 2 uses
  call void @b3RecWriteRet_CreateBody(ptr noundef nonnull %i.ho, ptr noundef nonnull %2, i64 %.sroa.0157.0.insert.insert) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge190, %bb.a
  %.sroa.0157.0.insert.insert161 = phi i64 [ 0, %bb.a ], [ %.pre202, %._crit_edge190 ], [ %.sroa.0157.0.insert.insert, %bb.x ]
  ret i64 %.sroa.0157.0.insert.insert161
}

declare ptr @b3GetUnlockedWorldFromId(i32) local_unnamed_addr #5

declare i32 @b3AllocId(ptr noundef) local_unnamed_addr #5

declare ptr @b3GrowAlloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare float @b3GetLengthUnitsPerMeter() local_unnamed_addr #5

declare i32 @b3AddName(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @b3ValidateSolverSets(ptr noundef) local_unnamed_addr #5

declare void @b3RecWriteRet_CreateBody(ptr noundef, ptr noundef, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @b3IsBodyAwake(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72
  %i.c = icmp eq i32 %i.b, 2
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3WakeBody(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 2                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @b3WakeSolverSet(ptr noundef %0, i32 noundef %i.b) #10
  tail call void @b3ValidateSolverSets(ptr noundef %0) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

declare void @b3WakeSolverSet(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3WakeBodyWithLock(ptr noundef initializes((4763, 4764)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4763 ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 2                     ; 2 uses
  br i1 %i.d, label %bb.b, label %b3WakeBody.exit

bb.b:                                             ; preds = %bb.a
  tail call void @b3WakeSolverSet(ptr noundef nonnull %0, i32 noundef %i.c) #10
  tail call void @b3ValidateSolverSets(ptr noundef nonnull %0) #10
  br label %b3WakeBody.exit

b3WakeBody.exit:                                  ; preds = %bb.a, %bb.b
  store i8 0, ptr %i.a, align 1, !tbaa !96
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define void @b3DestroyBody(i64 %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.b3RecArgs_DestroyBody, align 8 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 21 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 %0, ptr %1, align 8
  call void @b3RecWrite_DestroyBody(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4763 ; 2 uses
  store i8 1, ptr %i.g, align 1, !tbaa !96
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 3880 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = shl i64 %0, 32
  %sext.i = add i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext.i, 25
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.n = load i32, ptr %i.m, align 4, !tbaa !126  ; 2 uses
  %.not6676 = icmp eq i32 %i.n, -1
  br i1 %.not6676, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.06377 = phi i32 [ %i.n, %.lr.ph ], [ %i.x, %bb.e ] ; 2 uses
  %i.p = ashr i32 %.06377, 1
  %i.q = and i32 %.06377, 1
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !127
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr inbounds [72 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = zext nneg i32 %i.q to i64
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129  ; 2 uses
  call void @b3DestroyJointInternal(ptr noundef nonnull %i.c, ptr noundef %i.t, i1 noundef zeroext true) #10
  %.not66 = icmp eq i32 %i.x, -1
  br i1 %.not66, label %._crit_edge, label %bb.e, !llvm.loop !218

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %i.y = getelementptr i8, ptr %i.l, i64 16
  %.val = load i32, ptr %i.y, align 8, !tbaa !131 ; 2 uses
  %.not1.i = icmp eq i32 %.val, -1
  br i1 %.not1.i, label %b3DestroyBodyContacts.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 4000
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %.02.i = phi i32 [ %.val, %.lr.ph.i ], [ %i.ai, %bb.f ] ; 2 uses
  %i.aa = ashr i32 %.02.i, 1
  %i.ab = and i32 %.02.i, 1
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !132
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [216 x i8], ptr %i.ac, i64 %i.ad ; 2 uses
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.ae, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !134 ; 2 uses
  call void @b3DestroyContact(ptr noundef nonnull %i.c, ptr noundef %i.ae, i1 noundef zeroext true) #10
  %.not.i = icmp eq i32 %i.ai, -1
  br i1 %.not.i, label %b3DestroyBodyContacts.exit, label %bb.f, !llvm.loop !0

b3DestroyBodyContacts.exit:                       ; preds = %bb.f, %._crit_edge
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.078 = load i32, ptr %i.aj, align 8, !tbaa !100 ; 2 uses
  %.not6779 = icmp eq i32 %.078, -1
  br i1 %.not6779, label %._crit_edge82, label %.lr.ph81

.lr.ph81:                                         ; preds = %b3DestroyBodyContacts.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 4080
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 800
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 4056
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph81, %bb.i
  %.080 = phi i32 [ %.078, %.lr.ph81 ], [ %.0, %bb.i ] ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !135
  %i.ao = sext i32 %.080 to i64
  %i.ap = getelementptr inbounds [232 x i8], ptr %i.an, i64 %i.ao ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !220
  %.not69 = icmp eq i32 %i.ar, -1
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @b3DestroySensor(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ap) #10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @b3DestroyShapeProxy(ptr noundef nonnull %i.ap, ptr noundef nonnull %i.al) #10
  call void @b3DestroyShapeAllocations(ptr noundef nonnull %i.c, ptr noundef nonnull %i.ap) #10
  call void @b3FreeId(ptr noundef nonnull %i.am, i32 noundef %.080) #10
  store i32 -1, ptr %i.ap, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 12
  %.0 = load i32, ptr %i.as, align 4, !tbaa !100  ; 2 uses
  %.not67 = icmp eq i32 %.0, -1
  br i1 %.not67, label %._crit_edge82, label %bb.g, !llvm.loop !219

._crit_edge82:                                    ; preds = %bb.i, %b3DestroyBodyContacts.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !122 ; 3 uses
  %i.av = icmp eq i32 %i.au, -1
  br i1 %i.av, label %b3RemoveBodyFromIsland.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 4040
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !142
  %i.ay = sext i32 %i.au to i64
  %i.az = getelementptr inbounds [64 x i8], ptr %i.ax, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !108 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !120 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !118
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [4 x i8], ptr %i.bd, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.bh, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !100 ; 2 uses
  %i.bk = sext i32 %i.bb to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bk
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !100
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.bn = sext i32 %i.bj to i64
  %i.bo = getelementptr inbounds [128 x i8], ptr %i.bm, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store i32 %i.bb, ptr %i.bp, align 8, !tbaa !108
  %i.bq = load i32, ptr %i.be, align 8, !tbaa !118
  %i.br = add nsw i32 %i.bq, -1                   ; 2 uses
  store i32 %i.br, ptr %i.be, align 8, !tbaa !118
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !121
  call void @b3DestroyIsland(ptr noundef nonnull %i.c, i32 noundef %i.bu) #10
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @b3ValidateIsland(ptr noundef nonnull %i.c, i32 noundef %i.au) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store i32 -1, ptr %i.at, align 4, !tbaa !122
  store i32 -1, ptr %i.ba, align 8, !tbaa !108
  br label %b3RemoveBodyFromIsland.exit

b3RemoveBodyFromIsland.exit:                      ; preds = %._crit_edge82, %bb.m
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !72
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [88 x i8], ptr %i.bw, i64 %i.bz ; 6 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !82 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !83 ; 2 uses
  %i.cf = load i32, ptr %i.cc, align 8, !tbaa !100
  %i.cg = add nsw i32 %i.cf, -1                   ; 3 uses
  store i32 %i.cg, ptr %i.cc, align 8, !tbaa !100
  %.not.i70 = icmp eq i32 %i.ce, %i.cg
  br i1 %.not.i70, label %b3RemoveHelper.exit.thread, label %b3RemoveHelper.exit

b3RemoveHelper.exit:                              ; preds = %b3RemoveBodyFromIsland.exit
  %i.ch = mul nsw i32 %i.ce, 216
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds i8, ptr %i.cb, i64 %i.ci
  %i.ck = mul nsw i32 %i.cg, 216
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds i8, ptr %i.cb, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %i.cj, ptr noundef nonnull align 1 dereferenceable(216) %i.cm, i64 216, i1 false)
  %i.cn = load i32, ptr %i.cc, align 8, !tbaa !100
  %.not68 = icmp eq i32 %i.cn, -1
  br i1 %.not68, label %b3RemoveHelper.exit.thread, label %bb.n

bb.n:                                             ; preds = %b3RemoveHelper.exit
  %i.co = load ptr, ptr %i.ca, align 8, !tbaa !82
  %i.cp = load i32, ptr %i.cd, align 4, !tbaa !83 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [216 x i8], ptr %i.co, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 208
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !105
  %i.cu = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.cv = sext i32 %i.ct to i64
  %i.cw = getelementptr inbounds [128 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 %i.cp, ptr %i.cx, align 4, !tbaa !83
  br label %b3RemoveHelper.exit.thread

b3RemoveHelper.exit.thread:                       ; preds = %b3RemoveBodyFromIsland.exit, %bb.n, %b3RemoveHelper.exit
  %i.cy = load i32, ptr %i.bx, align 8, !tbaa !72
  %i.cz = icmp eq i32 %i.cy, 2
  br i1 %i.cz, label %bb.o, label %bb.q

bb.o:                                             ; preds = %b3RemoveHelper.exit.thread
  %i.da = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !88 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.dd = load i32, ptr %i.cd, align 4, !tbaa !83 ; 2 uses
  %i.de = load i32, ptr %i.dc, align 8, !tbaa !100
  %i.df = add nsw i32 %i.de, -1                   ; 3 uses
  store i32 %i.df, ptr %i.dc, align 8, !tbaa !100
  %.not.i71 = icmp eq i32 %i.dd, %i.df
  br i1 %.not.i71, label %b3RemoveHelper.exit73, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dg = mul nsw i32 %i.dd, 56
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.db, i64 %i.dh
  %i.dj = mul nsw i32 %i.df, 56
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds i8, ptr %i.db, i64 %i.dk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.di, ptr noundef nonnull align 1 dereferenceable(56) %i.dl, i64 56, i1 false)
  br label %b3RemoveHelper.exit73

bb.q:                                             ; preds = %b3RemoveHelper.exit.thread
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 80
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !99 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 2
  br i1 %i.do, label %bb.r, label %b3RemoveHelper.exit73

bb.r:                                             ; preds = %bb.q
  %i.dp = load i32, ptr %i.cc, align 8, !tbaa !107
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.s, label %b3RemoveHelper.exit73

bb.s:                                             ; preds = %bb.r
  call void @b3DestroySolverSet(ptr noundef nonnull %i.c, i32 noundef %i.dn) #10
  br label %b3RemoveHelper.exit73

b3RemoveHelper.exit73:                            ; preds = %bb.p, %bb.o, %bb.q, %bb.r, %bb.s
  %i.dr = getelementptr inbounds nuw i8, ptr %i.c, i64 3856
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 108 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !109
  call void @b3FreeId(ptr noundef nonnull %i.dr, i32 noundef %i.dt) #10
  store i64 -1, ptr %i.bx, align 8
  store i32 -1, ptr %i.ds, align 4, !tbaa !109
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #10
  store i8 0, ptr %i.g, align 1, !tbaa !96
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %b3RemoveHelper.exit73
  ret void
}

declare ptr @b3GetUnlockedWorld(i32 noundef) local_unnamed_addr #5

declare void @b3RecWrite_DestroyBody(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @b3DestroyJointInternal(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare void @b3DestroySensor(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @b3DestroyShapeProxy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @b3DestroyShapeAllocations(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @b3FreeId(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @b3DestroySolverSet(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @b3Body_GetContactCapacity(i64 %0) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = shl i64 %0, 32
  %sext.i = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 25
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !221
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.k, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @b3Body_GetContactData(i64 %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %.sroa.243.0.extract.shift = lshr i64 %0, 32    ; 2 uses
  %.sroa.243.0.extract.trunc = trunc i64 %.sroa.243.0.extract.shift to i16 ; 3 uses
  %i.a = trunc nuw i64 %.sroa.243.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68
  %i.g = shl i64 %0, 32
  %sext.i = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 25
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.04851 = load i32, ptr %i.j, align 4, !tbaa !100 ; 2 uses
  %i.k = icmp ne i32 %.04851, -1
  %i.l = icmp sgt i32 %2, 0
  %i.m = and i1 %i.k, %i.l
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 4000
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !132
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 4080
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.04853 = phi i32 [ %.04851, %.lr.ph ], [ %.048, %bb.e ] ; 2 uses
  %.04952 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ] ; 3 uses
  %i.q = ashr i32 %.04853, 1
  %i.r = and i32 %.04853, 1
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [216 x i8], ptr %i.o, i64 %i.s ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !225
  %i.w = and i32 %i.v, 1
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !135  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !226
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [232 x i8], ptr %i.x, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !227
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [232 x i8], ptr %i.x, i64 %i.ae ; 2 uses
  %i.ag = sext i32 %.04952 to i64
  %i.ah = getelementptr inbounds [48 x i8], ptr %1, i64 %i.ag ; 12 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !228
  %i.ak = add nsw i32 %i.aj, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.t, i64 212
  %i.am = load i32, ptr %i.al, align 4, !tbaa !229
  store i32 %i.ak, ptr %i.ah, align 8, !tbaa !100
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i16 %.sroa.243.0.extract.trunc, ptr %.sroa.25.0..sroa_idx, align 4, !tbaa !124
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 6
  store i16 0, ptr %.sroa.36.0..sroa_idx, align 2, !tbaa !124
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.am, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !100
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.ao = load i32, ptr %i.ab, align 8, !tbaa !141
  %i.ap = add nsw i32 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 196
  %i.ar = load i16, ptr %i.aq, align 4, !tbaa !143
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !100
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store i16 %.sroa.243.0.extract.trunc, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !124
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 18
  store i16 %i.ar, ptr %.sroa.33.0..sroa_idx, align 2, !tbaa !124
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.at = load i32, ptr %i.af, align 8, !tbaa !141
  %i.au = add nsw i32 %i.at, 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 196
  %i.aw = load i16, ptr %i.av, align 4, !tbaa !143
  store i32 %i.au, ptr %i.as, align 4, !tbaa !100
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  store i16 %.sroa.243.0.extract.trunc, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !124
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 26
  store i16 %i.aw, ptr %.sroa.3.0..sroa_idx, align 2, !tbaa !124
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !230
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !233
  %i.ba = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !234
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 %i.bb, ptr %i.bc, align 8, !tbaa !235
  %i.bd = add nsw i32 %.04952, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.bd, %bb.d ], [ %.04952, %bb.c ] ; 3 uses
  %i.be = zext nneg i32 %i.r to i64
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %.048 = load i32, ptr %i.bg, align 4, !tbaa !100 ; 2 uses
  %i.bh = icmp ne i32 %.048, -1
  %i.bi = icmp slt i32 %.1, %2
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %bb.c, label %.loopexit, !llvm.loop !222

.loopexit:                                        ; preds = %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %.1, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @b3Body_ComputeAABB(ptr dead_on_unwind noalias nofree writable sret(%struct.b3AABB) align 4 captures(none) initializes((0, 24)) %0, i64 %1) local_unnamed_addr #7 {
bb.a:
  %.sroa.219.0.extract.shift = lshr i64 %1, 32
  %i.a = trunc nuw i64 %.sroa.219.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.g = shl i64 %1, 32
  %sext.i = add i64 %i.g, -4294967296
  %i.h = ashr exact i64 %sext.i, 25
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %i.h ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !145  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 108
  %i.n = load i32, ptr %i.m, align 4, !tbaa !109
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [128 x i8], ptr %i.f, i64 %i.o ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !69, !noalias !241
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
end_hunk_0
