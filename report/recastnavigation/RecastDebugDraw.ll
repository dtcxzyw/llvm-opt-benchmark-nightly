Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/RecastDebugDraw?download=true
inline.NumInlined: 58
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_Z19duDebugDrawPolyMeshP11duDebugDrawRK10rcPolyMesh:bb.a
  %i.am = load i16, ptr %i.al, align 2, !tbaa !75
  %i.an = load ptr, ptr %1, align 8, !tbaa !116
  %i.ao = zext i16 %i.ak to i64
  %.idx.us = mul nuw nsw i64 %i.ao, 6
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx.us ; 3 uses
  %i.aq = load float, ptr %i.h, align 8, !tbaa !35
  %i.ar = load i16, ptr %i.ap, align 2, !tbaa !75
  %i.as = uitofp i16 %i.ar to float
  %i.at = tail call float @llvm.fmuladd.f32(float %i.as, float %i.g, float %i.aq)
  %i.au = load float, ptr %i.s, align 4, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 2
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !75
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.ax, 1
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.az, float %i.f, float %i.au)
  %i.bb = load float, ptr %i.t, align 8, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !75
  %i.be = uitofp i16 %i.bd to float
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.g, float %i.bb)
  %i.bg = load ptr, ptr %0, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.at, float noundef %i.ba, float noundef %i.bf, i32 noundef %.0162.us) #6, !call_target !74
  %i.bj = load ptr, ptr %1, align 8, !tbaa !116
  %i.bk = zext i16 %i.am to i64
  %.idx.us.1 = mul nuw nsw i64 %i.bk, 6
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.us.1 ; 3 uses
  %i.bm = load float, ptr %i.h, align 8, !tbaa !35
  %i.bn = load i16, ptr %i.bl, align 2, !tbaa !75
  %i.bo = uitofp i16 %i.bn to float
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.g, float %i.bm)
  %i.bq = load float, ptr %i.s, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !75
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %i.bt, 1
  %i.bv = uitofp nneg i32 %i.bu to float
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.f, float %i.bq)
  %i.bx = load float, ptr %i.t, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !75
  %i.ca = uitofp i16 %i.bz to float
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.g, float %i.bx)
  %i.cc = load ptr, ptr %0, align 8, !tbaa !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.ce = load ptr, ptr %i.cd, align 8
  tail call void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.bp, float noundef %i.bw, float noundef %i.cb, i32 noundef %.0162.us) #6, !call_target !74
  %i.cf = load ptr, ptr %1, align 8, !tbaa !116
  %i.cg = zext i16 %i.ai to i64
  %.idx.us.2 = mul nuw nsw i64 %i.cg, 6
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.us.2 ; 3 uses
  %i.ci = load float, ptr %i.h, align 8, !tbaa !35
  %i.cj = load i16, ptr %i.ch, align 2, !tbaa !75
  %i.ck = uitofp i16 %i.cj to float
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.g, float %i.ci)
  %i.cm = load float, ptr %i.s, align 4, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !75
  %i.cp = zext i16 %i.co to i32
  %i.cq = add nuw nsw i32 %i.cp, 1
  %i.cr = uitofp nneg i32 %i.cq to float
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.f, float %i.cm)
  %i.ct = load float, ptr %i.t, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !75
  %i.cw = uitofp i16 %i.cv to float
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.g, float %i.ct)
  %i.cy = load ptr, ptr %0, align 8, !tbaa !14
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %i.da = load ptr, ptr %i.cz, align 8
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.cl, float noundef %i.cs, float noundef %i.cx, i32 noundef %.0162.us) #6, !call_target !74
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.e

._crit_edge.us:                                   ; preds = %bb.f, %bb.e
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %i.db = load i32, ptr %i.l, align 4, !tbaa !113
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next217, %i.dc
  br i1 %i.dd, label %.lr.ph184.split.us, label %._crit_edge185

._crit_edge185:                                   ; preds = %bb.h, %._crit_edge.us, %bb.b
  %i.de = load ptr, ptr %0, align 8, !tbaa !14
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.dh = load ptr, ptr %0, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 1.500000e+00) #6, !call_target !24
  %i.dk = load i32, ptr %i.l, align 4, !tbaa !113
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph191, label %._crit_edge192.split

.lr.ph191:                                        ; preds = %._crit_edge185
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dn = shl i32 %.fr207, 1
  %i.do = icmp sgt i32 %.fr207, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.do, label %.lr.ph.preheader, label %._crit_edge192.split

.lr.ph.preheader:                                 ; preds = %.lr.ph191
  %i.dr = zext nneg i32 %.fr207 to i64            ; 2 uses
  %i.ds = zext nneg i32 %.fr207 to i64
  br label %.lr.ph

.lr.ph184.split:                                  ; preds = %.lr.ph184, %bb.h
  %i.dt = phi i32 [ %i.ec, %bb.h ], [ %i.m, %.lr.ph184 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph184 ] ; 2 uses
  %i.du = load ptr, ptr %i.q, align 8, !tbaa !115
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !36  ; 2 uses
  switch i8 %i.dw, label %bb.g [
    i8 63, label %bb.h
    i8 0, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph184.split
  %i.dx = zext i8 %i.dw to i32
  %i.dy = load ptr, ptr %0, align 8, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 80
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = tail call noundef i32 %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.dx) #6, !call_target !56 ; 0 uses
  %.pre = load i32, ptr %i.l, align 4, !tbaa !113
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph184.split, %.lr.ph184.split, %bb.g
  %i.ec = phi i32 [ %i.dt, %.lr.ph184.split ], [ %i.dt, %.lr.ph184.split ], [ %.pre, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ed = sext i32 %i.ec to i64
  %i.ee = icmp slt i64 %indvars.iv.next, %i.ed
  br i1 %i.ee, label %.lr.ph184.split, label %._crit_edge185

._crit_edge192.split:                             ; preds = %._crit_edge, %.lr.ph191, %._crit_edge185
  %i.ef = load ptr, ptr %0, align 8, !tbaa !14
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 72
  %i.eh = load ptr, ptr %i.eg, align 8
  tail call void %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.ei = load ptr, ptr %0, align 8, !tbaa !14
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8
  tail call void %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.500000e+00) #6, !call_target !24
  %i.el = load i32, ptr %i.l, align 4, !tbaa !113
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph201, label %._crit_edge202.split

.lr.ph201:                                        ; preds = %._crit_edge192.split
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eo = shl i32 %.fr207, 1
  %i.ep = icmp sgt i32 %.fr207, 0
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 64
  br i1 %i.ep, label %.lr.ph196.preheader, label %._crit_edge202.split

.lr.ph196.preheader:                              ; preds = %.lr.ph201
  %i.es = zext nneg i32 %.fr207 to i64            ; 2 uses
  %i.et = zext nneg i32 %.fr207 to i64
  br label %.lr.ph196

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv227 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next228, %._crit_edge ] ; 2 uses
  %i.eu = load ptr, ptr %i.dm, align 8, !tbaa !114
  %i.ev = trunc nuw nsw i64 %indvars.iv227 to i32
  %i.ew = mul i32 %i.dn, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.eu, i64 %i.ex ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.ey, i64 %i.dr
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %._crit_edge248
  %indvars.iv222 = phi i64 [ 0, %.lr.ph ], [ %i.fd, %._crit_edge248 ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %indvars.iv222
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !75 ; 2 uses
  %i.fb = icmp eq i16 %i.fa, -1
  br i1 %i.fb, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv222
  %i.fc = load i16, ptr %gep, align 2, !tbaa !75
  %.not175 = icmp sgt i16 %i.fc, -1
  %i.fd = add nuw nsw i64 %indvars.iv222, 1       ; 5 uses
  br i1 %.not175, label %bb.k, label %._crit_edge248

bb.k:                                             ; preds = %bb.j
  %.not176 = icmp samesign ult i64 %i.fd, %i.ds
  br i1 %.not176, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !75
  %i.fg = icmp eq i16 %i.ff, -1
  %spec.select = select i1 %i.fg, i64 0, i64 %i.fd
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.fh = phi i64 [ 0, %bb.k ], [ %spec.select, %bb.l ]
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ey, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !75
  %2 = load ptr, ptr %1, align 8, !tbaa !116
  %.sroa.speculated49 = zext i16 %i.fa to i64
  %.idx.a = mul nuw nsw i64 %.sroa.speculated49, 6
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.a ; 3 uses
  %i.fl = load float, ptr %i.h, align 8, !tbaa !35
  %i.fm = load i16, ptr %i.fk, align 2, !tbaa !75
  %i.fn = uitofp i16 %i.fm to float
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.g, float %i.fl)
  %i.fp = load float, ptr %i.dp, align 4, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 2
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !75
  %i.fs = zext i16 %i.fr to i32
  %i.ft = add nuw nsw i32 %i.fs, 1
  %i.fu = uitofp nneg i32 %i.ft to float
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.f, float %i.fp)
  %i.fw = fadd float %i.fv, 1.000000e-01
  %i.fx = load float, ptr %i.dq, align 8, !tbaa !35
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !75
  %i.ga = uitofp i16 %i.fz to float
  %i.gb = tail call float @llvm.fmuladd.f32(float %i.ga, float %i.g, float %i.fx)
  %i.gc = load ptr, ptr %0, align 8, !tbaa !14
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8
  tail call void %i.ge(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.fo, float noundef %i.fw, float noundef %i.gb, i32 noundef 541077504) #6, !call_target !74
  %i.gf = load ptr, ptr %1, align 8, !tbaa !116
  %.sroa.speculated49.1 = zext i16 %i.fj to i64
  %.idx259 = mul nuw nsw i64 %.sroa.speculated49.1, 6
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx259 ; 3 uses
  %i.gh = load float, ptr %i.h, align 8, !tbaa !35
  %i.gi = load i16, ptr %i.gg, align 2, !tbaa !75
  %i.gj = uitofp i16 %i.gi to float
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.g, float %i.gh)
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !75
  %i.gn = zext i16 %i.gm to i32
  %i.go = add nuw nsw i32 %i.gn, 1
  %i.gp = uitofp nneg i32 %i.go to float
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !75
  %i.gs = uitofp i16 %i.gr to float
  %i.gt = load <2 x float>, ptr %i.dp, align 4, !tbaa !35
  %i.gu = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gv = insertelement <2 x float> %i.gu, float %i.gs, i64 1
  %i.gw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gv, <2 x float> %i.e, <2 x float> %i.gt) ; 2 uses
  %i.gx = extractelement <2 x float> %i.gw, i64 0
  %i.gy = fadd float %i.gx, 1.000000e-01
  %i.gz = load ptr, ptr %0, align 8, !tbaa !14
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 48
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = extractelement <2 x float> %i.gw, i64 1
  tail call void %i.hb(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.gk, float noundef %i.gy, float noundef %i.hc, i32 noundef 541077504) #6, !call_target !74
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %bb.j, %bb.m
  %exitcond226.not = icmp eq i64 %i.fd, %i.dr
  br i1 %exitcond226.not, label %._crit_edge, label %bb.i

._crit_edge:                                      ; preds = %._crit_edge248, %bb.i
  %indvars.iv.next228 = add nuw nsw i64 %indvars.iv227, 1 ; 2 uses
  %i.hd = load i32, ptr %i.l, align 4, !tbaa !113
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next228, %i.he
  br i1 %i.hf, label %.lr.ph, label %._crit_edge192.split

._crit_edge202.split:                             ; preds = %._crit_edge197, %.lr.ph201, %._crit_edge192.split
  %i.hg = load ptr, ptr %0, align 8, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 72
  %i.hi = load ptr, ptr %i.hh, align 8
  tail call void %i.hi(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.hj = load ptr, ptr %0, align 8, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 32
  %i.hl = load ptr, ptr %i.hk, align 8
  tail call void %i.hl(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, float noundef 3.000000e+00) #6, !call_target !24
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !117
  %i.ho = icmp sgt i32 %i.hn, 0
  br i1 %i.ho, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %._crit_edge202.split
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 60
  br label %bb.s

.lr.ph196:                                        ; preds = %.lr.ph196.preheader, %._crit_edge197
  %indvars.iv238 = phi i64 [ 0, %.lr.ph196.preheader ], [ %indvars.iv.next239, %._crit_edge197 ] ; 2 uses
  %i.hq = load ptr, ptr %i.en, align 8, !tbaa !114
  %i.hr = trunc nuw nsw i64 %indvars.iv238 to i32
  %i.hs = mul i32 %i.eo, %i.hr
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [2 x i8], ptr %i.hq, i64 %i.ht ; 4 uses
  %invariant.gep264 = getelementptr [2 x i8], ptr %i.hu, i64 %i.es
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph196, %._crit_edge249
  %indvars.iv233 = phi i64 [ 0, %.lr.ph196 ], [ %.pre250, %._crit_edge249 ] ; 3 uses
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %indvars.iv233
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !75 ; 2 uses
  %i.hx = icmp eq i16 %i.hw, -1
  br i1 %i.hx, label %._crit_edge197, label %bb.o

bb.o:                                             ; preds = %bb.n
  %gep265 = getelementptr [2 x i8], ptr %invariant.gep264, i64 %indvars.iv233
  %i.hy = load i16, ptr %gep265, align 2, !tbaa !75 ; 2 uses
  %i.hz = icmp sgt i16 %i.hy, -1
  %.pre250 = add nuw nsw i64 %indvars.iv233, 1    ; 5 uses
  br i1 %i.hz, label %._crit_edge249, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not173 = icmp samesign ult i64 %.pre250, %i.et
  br i1 %.not173, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %.pre250
  %i.ib = load i16, ptr %i.ia, align 2, !tbaa !75
  %i.ic = icmp eq i16 %i.ib, -1
  %spec.select177 = select i1 %i.ic, i64 0, i64 %.pre250
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.id = phi i64 [ 0, %bb.p ], [ %spec.select177, %bb.q ]
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hu, i64 %i.id
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !75
  %i.ig = and i16 %i.hy, 15
  %.not174 = icmp eq i16 %i.ig, 15
  %spec.select178 = select i1 %.not174, i32 -599773184, i32 -2130706433 ; 2 uses
  %i.ih = load ptr, ptr %1, align 8, !tbaa !116
  %.sroa.speculated = zext i16 %i.hw to i64
  %.idx260 = mul nuw nsw i64 %.sroa.speculated, 6
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.idx260 ; 3 uses
  %i.ij = load float, ptr %i.h, align 8, !tbaa !35
  %i.ik = load i16, ptr %i.ii, align 2, !tbaa !75
  %i.il = uitofp i16 %i.ik to float
  %i.im = tail call float @llvm.fmuladd.f32(float %i.il, float %i.g, float %i.ij)
  %i.in = load float, ptr %i.eq, align 4, !tbaa !35
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 2
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !75
  %i.iq = zext i16 %i.ip to i32
  %i.ir = add nuw nsw i32 %i.iq, 1
  %i.is = uitofp nneg i32 %i.ir to float
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float %i.f, float %i.in)
  %i.iu = fadd float %i.it, 1.000000e-01
  %i.iv = load float, ptr %i.er, align 8, !tbaa !35
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ix = load i16, ptr %i.iw, align 2, !tbaa !75
  %i.iy = uitofp i16 %i.ix to float
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.g, float %i.iv)
  %i.ja = load ptr, ptr %0, align 8, !tbaa !14
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 48
  %i.jc = load ptr, ptr %i.jb, align 8
  tail call void %i.jc(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.im, float noundef %i.iu, float noundef %i.iz, i32 noundef %spec.select178) #6, !call_target !74
  %i.jd = load ptr, ptr %1, align 8, !tbaa !116
  %.sroa.speculated.1 = zext i16 %i.if to i64
  %.idx261 = mul nuw nsw i64 %.sroa.speculated.1, 6
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.idx261 ; 3 uses
  %i.jf = load float, ptr %i.h, align 8, !tbaa !35
  %i.jg = load i16, ptr %i.je, align 2, !tbaa !75
  %i.jh = uitofp i16 %i.jg to float
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.jh, float %i.g, float %i.jf)
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !75
  %i.jl = zext i16 %i.jk to i32
  %i.jm = add nuw nsw i32 %i.jl, 1
  %i.jn = uitofp nneg i32 %i.jm to float
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !75
  %i.jq = uitofp i16 %i.jp to float
  %i.jr = load <2 x float>, ptr %i.eq, align 4, !tbaa !35
  %i.js = insertelement <2 x float> poison, float %i.jn, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jq, i64 1
  %i.ju = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.e, <2 x float> %i.jr) ; 2 uses
  %i.jv = extractelement <2 x float> %i.ju, i64 0
  %i.jw = fadd float %i.jv, 1.000000e-01
  %i.jx = load ptr, ptr %0, align 8, !tbaa !14
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  %i.jz = load ptr, ptr %i.jy, align 8
  %i.ka = extractelement <2 x float> %i.ju, i64 1
  tail call void %i.jz(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.ji, float noundef %i.jw, float noundef %i.ka, i32 noundef %spec.select178) #6, !call_target !74
  br label %._crit_edge249

._crit_edge249:                                   ; preds = %bb.o, %bb.r
  %exitcond237.not = icmp eq i64 %.pre250, %i.es
  br i1 %exitcond237.not, label %._crit_edge197, label %bb.n

._crit_edge197:                                   ; preds = %._crit_edge249, %bb.n
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %i.kb = load i32, ptr %i.l, align 4, !tbaa !113
  %i.kc = sext i32 %i.kb to i64
  %i.kd = icmp slt i64 %indvars.iv.next239, %i.kc
  br i1 %i.kd, label %.lr.ph196, label %._crit_edge202.split

._crit_edge206:                                   ; preds = %bb.s, %._crit_edge202.split
  %i.ke = load ptr, ptr %0, align 8, !tbaa !14
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 72
  %i.kg = load ptr, ptr %i.kf, align 8
  tail call void %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  br label %bb.t

bb.s:                                             ; preds = %.lr.ph205, %bb.s
  %indvars.iv241 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next242, %bb.s ] ; 2 uses
  %i.kh = load ptr, ptr %1, align 8, !tbaa !116
  %.idx262 = mul nuw nsw i64 %indvars.iv241, 6
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %.idx262 ; 3 uses
  %i.kj = load float, ptr %i.h, align 8, !tbaa !35
  %i.kk = load i16, ptr %i.ki, align 2, !tbaa !75
  %i.kl = uitofp i16 %i.kk to float
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.g, float %i.kj)
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ki, i64 2
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !75
  %i.kp = zext i16 %i.ko to i32
  %i.kq = add nuw nsw i32 %i.kp, 1
  %i.kr = uitofp nneg i32 %i.kq to float
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !75
  %i.ku = uitofp i16 %i.kt to float
  %i.kv = load <2 x float>, ptr %i.hp, align 4, !tbaa !35
  %i.kw = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.ku, i64 1
  %i.ky = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kx, <2 x float> %i.e, <2 x float> %i.kv) ; 2 uses
  %i.kz = extractelement <2 x float> %i.ky, i64 0
  %i.la = fadd float %i.kz, 1.000000e-01
  %i.lb = load ptr, ptr %0, align 8, !tbaa !14
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load ptr, ptr %i.lc, align 8
  %i.le = extractelement <2 x float> %i.ky, i64 1
  tail call void %i.ld(ptr noundef nonnull align 8 dereferenceable(8) %0, float noundef %i.km, float noundef %i.la, float noundef %i.le, i32 noundef -603979776) #6, !call_target !74
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %i.lf = load i32, ptr %i.hm, align 8, !tbaa !117
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp slt i64 %indvars.iv.next242, %i.lg
  br i1 %i.lh, label %bb.s, label %._crit_edge206

bb.t:                                             ; preds = %bb.a, %._crit_edge206
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z25duDebugDrawPolyMeshDetailP11duDebugDrawRK16rcPolyMeshDetail(ptr noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(36) %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 2, float noundef 1.000000e+00) #6, !call_target !24
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 8 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !120
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph146, label %._crit_edge147

.lr.ph146:                                        ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

._crit_edge147:                                   ; preds = %._crit_edge, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !14
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.l = load ptr, ptr %0, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 1.000000e+00) #6, !call_target !24
  %i.o = load i32, ptr %i.d, align 8, !tbaa !120  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %._crit_edge147
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph146, %._crit_edge
  %indvars.iv177 = phi i64 [ 0, %.lr.ph146 ], [ %indvars.iv.next178, %._crit_edge ] ; 3 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !121
  %.idx235 = shl nuw nsw i64 %indvars.iv177, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx235 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !37   ; 2 uses
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !122
  %i.aa = mul i32 %i.u, 3
  %i.ab = zext i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ab ; 3 uses
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !123
  %i.ae = shl i32 %i.w, 2
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.af
  %i.ah = trunc nuw nsw i64 %indvars.iv177 to i32
  %i.ai = tail call noundef i32 @_Z10duIntToColii(i32 noundef %i.ah, i32 noundef 192) #6 ; 3 uses
  %i.aj = icmp sgt i32 %i.y, 0
  br i1 %i.aj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.y to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %indvars.iv.next178 = add nuw nsw i64 %indvars.iv177, 1 ; 2 uses
  %i.ak = load i32, ptr %i.d, align 8, !tbaa !120
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next178, %i.al
  br i1 %i.am, label %bb.c, label %._crit_edge147

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.an = shl nuw nsw i64 %indvars.iv, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.an ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !36
  %i.aq = zext i8 %i.ap to i64
  %.idx140 = mul nuw nsw i64 %i.aq, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx140
  %i.as = load ptr, ptr %0, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ar, i32 noundef %i.ai) #6, !call_target !87
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !36
  %i.ax = zext i8 %i.aw to i64
  %.idx141 = mul nuw nsw i64 %i.ax, 12
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx141
  %i.az = load ptr, ptr %0, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ay, i32 noundef %i.ai) #6, !call_target !87
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !36
  %i.be = zext i8 %i.bd to i64
  %.idx142 = mul nuw nsw i64 %i.be, 12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx142
  %i.bg = load ptr, ptr %0, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.bf, i32 noundef %i.ai) #6, !call_target !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge157:                                   ; preds = %._crit_edge153, %._crit_edge147
  %i.bj = load ptr, ptr %0, align 8, !tbaa !14
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %0) #6, !call_target !33
  %i.bm = load ptr, ptr %0, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 1, float noundef 2.000000e+00) #6, !call_target !24
  %i.bp = load i32, ptr %i.d, align 8, !tbaa !120 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, 0
end_hunk_0
