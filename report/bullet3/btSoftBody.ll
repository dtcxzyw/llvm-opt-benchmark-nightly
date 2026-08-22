Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSoftBody?download=true
inline.NumInlined: 5223
inline.NumDeleted: 960
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 199
loop-unroll.NumUnrolled: 249
begin_hunk_0_@_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f:bb.a
  %i.ac = fdiv float %i.f, 3.000000e+00           ; 3 uses
  %i.ad = fcmp olt float %i.ac, 0.000000e+00
  %i.ae = fsub float 1.000000e+00, %i.ac
  %i.af = fptosi float %i.ae to i32
  %i.ag = select i1 %i.ad, i32 %i.af, i32 0       ; 2 uses
  %i.ah = sitofp i32 %i.ag to float
  %i.ai = fadd float %i.ac, %i.ah                 ; 2 uses
  %i.aj = fptosi float %i.ai to i32               ; 2 uses
  %i.ak = sitofp i32 %i.aj to float
  %i.al = fsub float %i.ai, %i.ak
  %i.am = fmul float %i.al, 3.000000e+00          ; 2 uses
  %i.an = fptosi float %i.am to i32               ; 3 uses
  %i.ao = sitofp i32 %i.an to float
  %i.ap = fsub float %i.am, %i.ao                 ; 2 uses
  %i.aq = sub nsw i32 %i.aj, %i.ag                ; 4 uses
  %.sroa.5.0.insert.ext.i144 = zext i32 %i.an to i64
  %.sroa.5.0.insert.shift.i145 = shl nuw i64 %.sroa.5.0.insert.ext.i144, 32
  %i.ar = and i32 %i.x, 65535
  %i.as = add nuw nsw i32 %i.ar, 24               ; 2 uses
  %i.at = lshr i32 %i.x, 5
  %i.au = and i32 %i.at, 134215680
  %i.av = shl i32 %i.as, 16
  %i.aw = xor i32 %i.au, %i.av
  %i.ax = xor i32 %i.aw, %i.as                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 11
  %i.az = and i32 %i.z, 65535
  %i.ba = add i32 %i.ax, %i.az
  %i.bb = add i32 %i.ba, %i.ay                    ; 2 uses
  %i.bc = lshr i32 %i.z, 5
  %i.bd = and i32 %i.bc, 134215680
  %i.be = shl i32 %i.bb, 16
  %i.bf = xor i32 %i.bd, %i.be
  %i.bg = xor i32 %i.bf, %i.bb                    ; 2 uses
  %i.bh = lshr i32 %i.bg, 11
  %i.bi = and i32 %i.aq, 65535
  %i.bj = add i32 %i.bg, %i.bi
  %i.bk = add i32 %i.bj, %i.bh                    ; 2 uses
  %i.bl = lshr i32 %i.aq, 5
  %i.bm = and i32 %i.bl, 134215680
  %i.bn = shl i32 %i.bk, 16
  %i.bo = xor i32 %i.bm, %i.bn
  %i.bp = xor i32 %i.bo, %i.bk                    ; 2 uses
  %i.bq = lshr i32 %i.bp, 11
  %i.br = add i32 %i.bq, %i.bp                    ; 2 uses
  %i.bs = shl i32 %i.br, 16
  %i.bt = xor i32 %i.bs, %i.br                    ; 2 uses
  %i.bu = lshr i32 %i.bt, 11
  %i.bv = ptrtoint ptr %2 to i64                  ; 3 uses
  %.sroa.14.16.extract.trunc.i = trunc i64 %i.bv to i32 ; 2 uses
  %i.bw = and i32 %.sroa.14.16.extract.trunc.i, 65535
  %i.bx = add i32 %i.bt, %i.bw
  %i.by = add i32 %i.bx, %i.bu                    ; 2 uses
  %i.bz = lshr i32 %.sroa.14.16.extract.trunc.i, 5
  %i.ca = and i32 %i.bz, 134215680
  %i.cb = shl i32 %i.by, 16
  %i.cc = xor i32 %i.ca, %i.cb
  %i.cd = xor i32 %i.cc, %i.by                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 11
  %.sroa.14.20.extract.shift.i = lshr i64 %i.bv, 32
  %.sroa.14.20.extract.trunc.i = trunc nuw i64 %.sroa.14.20.extract.shift.i to i32
  %i.cf = and i32 %.sroa.14.20.extract.trunc.i, 65535
  %i.cg = add i32 %i.cd, %i.cf
  %i.ch = add i32 %i.cg, %i.ce                    ; 2 uses
  %sh.diff.i = lshr i64 %i.bv, 37
  %tr.sh.diff.i = trunc nuw nsw i64 %sh.diff.i to i32
  %i.ci = and i32 %tr.sh.diff.i, 134215680
  %i.cj = shl i32 %i.ch, 16
  %i.ck = xor i32 %i.ci, %i.cj
  %i.cl = xor i32 %i.ck, %i.ch                    ; 2 uses
  %i.cm = lshr i32 %i.cl, 11
  %i.cn = add i32 %i.cm, %i.cl                    ; 2 uses
  %i.co = shl i32 %i.cn, 3
  %i.cp = xor i32 %i.co, %i.cn                    ; 2 uses
  %i.cq = lshr i32 %i.cp, 5
  %i.cr = add i32 %i.cq, %i.cp                    ; 2 uses
  %i.cs = shl i32 %i.cr, 4
  %i.ct = xor i32 %i.cs, %i.cr                    ; 2 uses
  %i.cu = lshr i32 %i.ct, 17
  %i.cv = add i32 %i.cu, %i.ct                    ; 2 uses
  %i.cw = shl i32 %i.cv, 25
  %i.cx = xor i32 %i.cw, %i.cv                    ; 2 uses
  %i.cy = lshr i32 %i.cx, 6
  %i.cz = add i32 %i.cy, %i.cx                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !437 ; 3 uses
  %i.dc = urem i32 %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !438
  %i.df = sext i32 %i.dc to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.df ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !439 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !441
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !441
  %.not151 = icmp eq ptr %i.dh, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !442 ; 2 uses
  br i1 %.not151, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %i.dl = phi i32 [ %i.dm, %bb.f ], [ %.pre, %bb.a ]
  %.0152 = phi ptr [ %i.ed, %bb.f ], [ %i.dh, %bb.a ] ; 7 uses
  %i.dm = add nsw i32 %i.dl, 1                    ; 3 uses
  store i32 %i.dm, ptr %.phi.trans.insert, align 4, !tbaa !442
  %i.dn = getelementptr inbounds nuw i8, ptr %.0152, i64 272
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !443
  %i.dp = icmp eq i32 %i.do, %i.cz
  br i1 %i.dp, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %.0152, i64 256
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !257
  %i.ds = icmp eq i32 %i.dr, %i.x
  br i1 %i.ds, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.dt = getelementptr inbounds nuw i8, ptr %.0152, i64 260
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !257
  %i.dv = icmp eq i32 %i.du, %i.z
  br i1 %i.dv, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.dw = getelementptr inbounds nuw i8, ptr %.0152, i64 264
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !257
  %i.dy = icmp eq i32 %i.dx, %i.aq
  br i1 %i.dy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dz = getelementptr inbounds nuw i8, ptr %.0152, i64 280
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !445
  %i.eb = icmp eq ptr %i.ea, %2
  br i1 %i.eb, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %.0152, i64 288
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !446 ; 2 uses
  %.not = icmp eq ptr %i.ed, null
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !447

.critedge:                                        ; preds = %bb.f, %bb.a
  %i.ee = phi i32 [ %.pre, %bb.a ], [ %i.dm, %bb.f ]
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.eg = add nsw i32 %i.ee, 1
  store i32 %i.eg, ptr %i.ef, align 4, !tbaa !442
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !448 ; 2 uses
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !448
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !449
  %.not137 = icmp slt i32 %i.ei, %i.el
  br i1 %.not137, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.critedge
  %i.em = icmp sgt i32 %i.db, 0
  br i1 %i.em, label %.lr.ph14.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit

.lr.ph14.i:                                       ; preds = %bb.g
  %wide.trip.count.i = zext nneg i32 %i.db to i64
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %.lr.ph14.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph14.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.en = load ptr, ptr %i.dd, align 8, !tbaa !438
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !439 ; 2 uses
  store ptr null, ptr %i.eo, align 8, !tbaa !439
  %.not10.i = icmp eq ptr %i.ep, null
  br i1 %.not10.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.011.i = phi ptr [ %i.er, %.lr.ph.i ], [ %i.ep, %bb.h ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i, i64 288
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !446 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.011.i, i64 noundef 296) #41
  %.not.i = icmp eq ptr %i.er, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !450

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11btSparseSdfILi3EE5ResetEv.exit, label %bb.h, !llvm.loop !451

_ZN11btSparseSdfILi3EE5ResetEv.exit:              ; preds = %._crit_edge.i, %bb.g
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.et = load float, ptr %i.es, align 4, !tbaa !452
  store float %i.et, ptr %i.a, align 8, !tbaa !453
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.eu, align 8, !tbaa !454
  store i32 0, ptr %i.eh, align 4, !tbaa !448
  store i32 1, ptr %i.ef, align 4, !tbaa !442
  store i32 1, ptr %i.di, align 8, !tbaa !441
  br label %bb.i

bb.i:                                             ; preds = %_ZN11btSparseSdfILi3EE5ResetEv.exit, %.critedge
  %i.ev = tail call noalias noundef nonnull dereferenceable(296) ptr @_Znwm(i64 noundef 296) #42 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(296) %i.ev, i8 0, i64 288, i1 false)
  %i.ew = load ptr, ptr %i.dg, align 8, !tbaa !439
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 288
  store ptr %i.ew, ptr %i.ex, align 16, !tbaa !446
  store ptr %i.ev, ptr %i.dg, align 8, !tbaa !439
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 280
  store ptr %2, ptr %i.ey, align 8, !tbaa !445
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 272
  store i32 %i.cz, ptr %i.ez, align 16, !tbaa !443
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 256
  store i32 %i.x, ptr %i.fa, align 16, !tbaa !257
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 260
  store i32 %i.z, ptr %i.fb, align 4, !tbaa !257
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ev, i64 264
  store i32 %i.aq, ptr %i.fc, align 8, !tbaa !257
  tail call void @_ZN11btSparseSdfILi3EE9BuildCellERNS0_4CellE(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(296) %i.ev)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i
  %.1 = phi ptr [ %i.ev, %bb.i ], [ %.0152, %bb.e ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !454
  %i.ff = getelementptr inbounds nuw i8, ptr %.1, i64 268
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !455
  %i.fg = extractelement <2 x i32> %i.v, i64 0
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [64 x i8], ptr %.1, i64 %i.fh ; 2 uses
  %i.fj = extractelement <2 x i32> %i.v, i64 1
  %i.fk = sext i32 %i.fj to i64                   ; 2 uses
  %i.fl = getelementptr inbounds [16 x i8], ptr %i.fi, i64 %i.fk ; 2 uses
  %i.fm = sext i32 %i.an to i64                   ; 4 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fm
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !223 ; 3 uses
  %i.fp = add <2 x i64> %i.ab, splat (i64 4294967296) ; 2 uses
  %i.fq = extractelement <2 x i64> %i.fp, i64 0
  %i.fr = ashr exact i64 %i.fq, 26
  %i.fs = getelementptr inbounds i8, ptr %.1, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.fk ; 2 uses
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fm
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !223 ; 2 uses
  %i.fw = extractelement <2 x i64> %i.fp, i64 1
  %i.fx = ashr exact i64 %i.fw, 32                ; 2 uses
  %i.fy = getelementptr inbounds [16 x i8], ptr %i.fs, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.fm
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !223
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.fi, i64 %i.fx ; 2 uses
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.fm
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !223 ; 2 uses
  %i.ge = add i64 %.sroa.5.0.insert.shift.i145, 4294967296
  %i.gf = ashr exact i64 %i.ge, 32                ; 4 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !223 ; 2 uses
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.gf
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !223 ; 2 uses
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.fy, i64 %i.gf
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !223
  %i.gm = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gf
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !223
  %i.go = insertelement <2 x float> poison, float %i.gd, i64 0 ; 2 uses
  %i.gp = insertelement <2 x float> %i.go, float %i.fv, i64 1 ; 2 uses
  %i.gq = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gs = fsub <2 x float> %i.gp, %i.gr           ; 3 uses
  %i.gt = insertelement <2 x float> poison, float %i.ga, i64 0 ; 2 uses
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gv = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gw = fsub <2 x float> %i.gu, %i.gv           ; 2 uses
  %i.gx = insertelement <2 x float> poison, float %i.gn, i64 0 ; 3 uses
  %i.gy = insertelement <2 x float> %i.gx, float %i.gj, i64 1 ; 2 uses
  %i.gz = insertelement <2 x float> poison, float %i.gh, i64 0 ; 2 uses
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fsub <2 x float> %i.gy, %i.ha           ; 3 uses
  %i.hc = insertelement <2 x float> poison, float %i.gl, i64 0 ; 2 uses
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fsub <2 x float> %i.hd, %i.gy           ; 2 uses
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hg = fsub <2 x float> %i.gw, %i.gs
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.y, <2 x float> %i.gs) ; 2 uses
  %i.hi = fsub <2 x float> %i.hf, %i.hb
  %i.hj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hi, <2 x float> %i.y, <2 x float> %i.hb)
  %i.hk = fsub <2 x float> %i.hj, %i.hh
  %i.hl = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.hm, <2 x float> %i.hh) ; 4 uses
  %i.ho = insertelement <2 x float> %i.gx, float %i.gh, i64 1
  %i.hp = insertelement <2 x float> %i.go, float %i.fo, i64 1
  %i.hq = fsub <2 x float> %i.ho, %i.hp           ; 2 uses
  %i.hr = insertelement <2 x float> %i.hc, float %i.gj, i64 1
  %i.hs = insertelement <2 x float> %i.gt, float %i.fv, i64 1
  %i.ht = fsub <2 x float> %i.hr, %i.hs
  %i.hu = fsub <2 x float> %i.ht, %i.hq
  %i.hv = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.hw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hu, <2 x float> %i.hv, <2 x float> %i.hq) ; 2 uses
  %i.hx = extractelement <2 x float> %i.hw, i64 0
  %i.hy = extractelement <2 x float> %i.hw, i64 1 ; 2 uses
  %i.hz = fsub float %i.hx, %i.hy
  %i.ia = extractelement <2 x float> %i.y, i64 1
  %i.ib = tail call noundef float @llvm.fmuladd.f32(float %i.hz, float %i.ia, float %i.hy) ; 3 uses
  %foldExtExtBinop165 = fmul <2 x float> %i.hn, %i.hn
  %i.ic = extractelement <2 x float> %foldExtExtBinop165, i64 0
  %i.id = extractelement <2 x float> %i.hn, i64 1 ; 2 uses
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ic)
  %i.if = tail call noundef float @llvm.fmuladd.f32(float %i.ib, float %i.ib, float %i.ie) ; 2 uses
  %i.ig = fcmp ult float %i.if, f0x28800000
  br i1 %i.ig, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.if)
  %i.ih = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ii = insertelement <2 x float> poison, float %i.ih, i64 0
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ik = fmul <2 x float> %i.hn, %i.ij
  %i.il = fmul float %i.ib, %i.ih
  %i.im = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %_ZN9btVector313safeNormalizeEv.exit

bb.k:                                             ; preds = %.loopexit
  %i.in = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float 0.000000e+00, ptr %i.in, align 4, !tbaa !223
  br label %_ZN9btVector313safeNormalizeEv.exit

_ZN9btVector313safeNormalizeEv.exit:              ; preds = %bb.j, %bb.k
  %.sink.i = phi float [ 0.000000e+00, %bb.k ], [ %i.il, %bb.j ]
  %i.io = phi <2 x float> [ <float 1.000000e+00, float 0.000000e+00>, %bb.k ], [ %i.im, %bb.j ]
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.io, ptr %3, align 4, !tbaa !223
  store float %.sink.i, ptr %i.ip, align 4, !tbaa !223
  %i.iq = shufflevector <2 x float> %i.hb, <2 x float> %i.gs, <2 x i32> <i32 1, i32 3>
  %i.ir = insertelement <2 x float> %i.gz, float %i.fo, i64 1
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iq, <2 x float> %i.hv, <2 x float> %i.ir) ; 2 uses
  %i.it = shufflevector <2 x float> %i.he, <2 x float> %i.gw, <2 x i32> <i32 0, i32 3>
  %i.iu = insertelement <2 x float> %i.gx, float %i.gd, i64 1
  %i.iv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.hv, <2 x float> %i.iu)
  %i.iw = fsub <2 x float> %i.iv, %i.is
  %i.ix = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iw, <2 x float> %i.ix, <2 x float> %i.is) ; 2 uses
  %i.iz = extractelement <2 x float> %i.iy, i64 0
  %i.ja = extractelement <2 x float> %i.iy, i64 1 ; 2 uses
  %i.jb = fsub float %i.iz, %i.ja
  %i.jc = tail call noundef float @llvm.fmuladd.f32(float %i.jb, float %i.ap, float %i.ja)
  %i.jd = fsub float %i.jc, %4
  ret float %i.jd
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #0

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZL13ImpulseMatrixfffRK11btMatrix3x3RK9btVector3(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 4 captures(none) initializes((0, 48)) %0, float noundef %1, float noundef %2, float noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !223, !noalias !456 ; 3 uses
  %i.c = fneg float %i.b                          ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.g = load float, ptr %i.f, align 4, !tbaa !223, !noalias !461 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.i = load float, ptr %i.h, align 4, !tbaa !223, !noalias !461 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !223, !noalias !461 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !223, !noalias !461 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.o = load float, ptr %i.n, align 4, !tbaa !223, !noalias !461 ; 2 uses
  %i.p = load <2 x float>, ptr %5, align 4, !tbaa !223, !noalias !456 ; 4 uses
  %i.q = load float, ptr %i.d, align 4, !tbaa !223, !noalias !456 ; 3 uses
  %i.r = extractelement <2 x float> %i.p, i64 0
  %i.s = fneg float %i.r                          ; 3 uses
  %i.t = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.c, i64 0 ; 4 uses
  %i.u = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.b, i64 1 ; 4 uses
  %i.v = insertelement <2 x float> poison, float %i.g, i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.y = insertelement <2 x float> %i.x, float %i.s, i64 1 ; 3 uses
  %i.z = insertelement <2 x float> poison, float %i.i, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ad = fmul <2 x float> %i.ac, %i.t
  %i.ae = insertelement <2 x float> poison, float %i.k, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.u, <2 x float> %i.ad)
  %i.ah = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ai, <2 x float> %i.y, <2 x float> %i.ag) ; 3 uses
  %i.ak = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.b, i64 0 ; 2 uses
  %i.al = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.c, i64 1 ; 2 uses
  %i.am = insertelement <2 x float> poison, float %3, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x float> poison, float %2, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = load <2 x float>, ptr %4, align 4, !tbaa !223, !noalias !461 ; 3 uses
  %i.ar = load <2 x float>, ptr %i.e, align 4, !tbaa !223, !noalias !461 ; 3 uses
  %i.as = fneg float %i.q                         ; 2 uses
  %i.at = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = fmul <2 x float> %i.at, %i.t
  %i.av = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %i.u, <2 x float> %i.au)
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.y, <2 x float> %i.aw) ; 3 uses
  %i.ay = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ay, %i.t
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody18initializeClustersEv:bb.a

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i.prol
  %i.ag = load float, ptr %i.af, align 4, !tbaa !223
  store float %i.ag, ptr %i.ae, align 4, !tbaa !223
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !814

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ah = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.i.i
  %i.al = load float, ptr %i.ak, align 4, !tbaa !223
  store float %i.al, ptr %i.aj, align 4, !tbaa !223
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !223
  store float %i.ao, ptr %i.am, align 4, !tbaa !223
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.1
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !223
  store float %i.ar, ptr %i.ap, align 4, !tbaa !223
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.next.i.i.i.2
  %i.au = load float, ptr %i.at, align 4, !tbaa !223
  store float %i.au, ptr %i.as, align 4, !tbaa !223
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, label %scalar.ph, !llvm.loop !815

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIfE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i

_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aw = load i8, ptr %i.av, align 8, !tbaa !130, !range !233, !noundef !234
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.f, label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
  br label %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIfE4copyEiiPf.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i8 1, ptr %i.ay, align 8, !tbaa !130
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !131
  store i32 %i.j, ptr %i.n, align 8, !tbaa !133
  %.pre190.pre = load i32, ptr %i.i, align 4, !tbaa !679
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %..lr.ph.i_crit_edge, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i
  %.pre190 = phi i32 [ %i.j, %..lr.ph.i_crit_edge ], [ %.pre190.pre, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.az = phi ptr [ %.pre, %..lr.ph.i_crit_edge ], [ %.0.i.i.i, %_ZN20btAlignedObjectArrayIfE10deallocateEv.exit.i.i ]
  %i.ba = sext i32 %i.l to i64                    ; 2 uses
  %wide.trip.count.i = sext i32 %i.j to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %scevgep = getelementptr i8, ptr %i.az, i64 %i.bb
  %i.bc = sub nsw i64 %wide.trip.count.i, %i.ba
  %i.bd = shl nsw i64 %i.bc, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.bd, i1 false), !tbaa !223
  br label %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit

_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit:    ; preds = %.lr.ph.i, %bb.b
  %i.be = phi i32 [ %.pre190, %.lr.ph.i ], [ %i.j, %bb.b ] ; 11 uses
  store i32 %i.j, ptr %i.k, align 4, !tbaa !132
  %i.bf = icmp sgt i32 %i.be, 0                   ; 3 uses
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %.pre193 = load float, ptr %i.h, align 4, !tbaa !812
  %i.bg = fdiv float 1.000000e+00, %.pre193       ; 2 uses
  store float %i.bg, ptr %i.h, align 4, !tbaa !812
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

.lr.ph:                                           ; preds = %_ZN20btAlignedObjectArrayIfE6resizeEiRKf.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !682
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !131
  %wide.trip.count = zext nneg i32 %i.be to i64   ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %bb.k
  %i.bm = fdiv float 1.000000e+00, %i.en          ; 3 uses
  store float %i.bm, ptr %i.h, align 4, !tbaa !812
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !682 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !131 ; 3 uses
  %xtraiter242 = and i64 %wide.trip.count, 1
  %i.br = icmp eq i32 %i.be, 1
  br i1 %i.br, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.new
  %indvars.iv.i81 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next.i82.1, %bb.g ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %._crit_edge.new ], [ %i.ct, %bb.g ]
  %i.bs = phi <2 x float> [ zeroinitializer, %._crit_edge.new ], [ %i.cu, %bb.g ]
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %bb.g ]
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !345 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81
  %i.bx = load float, ptr %i.bv, align 4, !tbaa !223
  %i.by = load float, ptr %i.bw, align 4, !tbaa !223 ; 2 uses
  %i.bz = fmul float %i.bx, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.cb = load <2 x float>, ptr %i.ca, align 4, !tbaa !223
  %i.cc = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ce = fmul <2 x float> %i.cd, %i.cb
  %i.cf = fadd float %.sroa.015.019.i, %i.bz
  %i.cg = fadd <2 x float> %i.bs, %i.ce
  %indvars.iv.next.i82 = or disjoint i64 %indvars.iv.i81, 1 ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.next.i82
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !345 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.next.i82
  %i.cl = load float, ptr %i.cj, align 4, !tbaa !223
  %i.cm = load float, ptr %i.ck, align 4, !tbaa !223 ; 2 uses
  %i.cn = fmul float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.cp = load <2 x float>, ptr %i.co, align 4, !tbaa !223
  %i.cq = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x float> %i.cr, %i.cp
  %i.ct = fadd float %i.cf, %i.cn                 ; 3 uses
  %i.cu = fadd <2 x float> %i.cg, %i.cs           ; 3 uses
  %indvars.iv.next.i82.1 = add nuw nsw i64 %indvars.iv.i81, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !683

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod243.not = icmp eq i64 %xtraiter242, 0
  br i1 %lcmp.mod243.not, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv.i81.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i82.1, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod246 = trunc i32 %i.be to i1
  tail call void @llvm.assume(i1 %lcmp.mod246)
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i81.epil.init
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !345 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i81.epil.init
  %i.cz = load float, ptr %i.cx, align 4, !tbaa !223
  %i.da = load float, ptr %i.cy, align 4, !tbaa !223 ; 2 uses
  %i.db = fmul float %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !tbaa !223
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.df, %i.dd
  %i.dh = fadd float %.sroa.015.019.i.epil.init, %i.db
  %i.di = fadd <2 x float> %.epil.init, %i.dg
  br label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit:  ; preds = %.epil.preheader, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa, %._crit_edge.thread
  %i.dj = phi float [ %i.bg, %._crit_edge.thread ], [ %i.bm, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.bm, %.epil.preheader ] ; 2 uses
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %._crit_edge.thread ], [ %i.ct, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.dh, %.epil.preheader ]
  %i.dk = phi <2 x float> [ zeroinitializer, %._crit_edge.thread ], [ %i.cu, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.loopexit.unr-lcssa ], [ %i.di, %.epil.preheader ]
  %i.dl = fmul float %i.dj, %.sroa.015.0.lcssa.i  ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.dn, %i.dk           ; 3 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.dp = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i, <2 x float> %i.do, <2 x i32> <i32 0, i32 2>
  %i.dq = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.do, <2 x i32> <i32 3, i32 1>
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 3 uses
  store <2 x float> %i.dp, ptr %i.dr, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 272 ; 2 uses
  store <2 x float> %i.dq, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !230
  %i.ds = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 168 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %.sroa.5142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 208 ; 2 uses
  %.sroa.6143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ds, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dt, i8 0, i64 48, i1 false)
  br i1 %i.bf, label %.lr.ph163, label %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge

_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge: ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %.phi.trans.insert194 = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %.phi.trans.insert198 = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.phi.trans.insert200 = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.dv = load <2 x float>, ptr %.phi.trans.insert194, align 4, !tbaa !223
  %.pre199 = load float, ptr %.phi.trans.insert198, align 8, !tbaa !223
  %.pre201 = load float, ptr %.phi.trans.insert200, align 4, !tbaa !223, !noalias !816 ; 2 uses
  %i.dw = insertelement <2 x float> <float 0.000000e+00, float poison>, float %.pre201, i64 1
  br label %._crit_edge164

.lr.ph163:                                        ; preds = %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !682
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !131
  %i.eb = getelementptr inbounds nuw i8, ptr %i.g, i64 188 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 172 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 2 uses
  %.promoted165 = load float, ptr %i.eb, align 4, !tbaa !223
  %i.ee = load <2 x float>, ptr %i.ec, align 4, !tbaa !223
  %.promoted168 = load float, ptr %i.ed, align 8, !tbaa !223
  %wide.trip.count182 = zext nneg i32 %i.be to i64
  br label %bb.l

bb.h:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !345
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !239 ; 2 uses
  %i.ej = fcmp oeq float %i.ei, 0.000000e+00
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv
  br i1 %i.ej, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.bk, align 8, !tbaa !732
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.el = fdiv float 1.000000e+00, %i.ei
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi float [ %i.el, %bb.j ], [ f0x5D5E0B6B, %bb.i ] ; 2 uses
  store float %.sink, ptr %i.ek, align 4, !tbaa !223
  %i.em = load float, ptr %i.h, align 4, !tbaa !812
  %i.en = fadd float %.sink, %i.em                ; 2 uses
  store float %i.en, ptr %i.h, align 4, !tbaa !812
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !819

bb.l:                                             ; preds = %.lr.ph163, %bb.l
  %indvars.iv179 = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next180, %bb.l ] ; 3 uses
  %i.eo = phi float [ %.promoted168, %.lr.ph163 ], [ %i.ga, %bb.l ]
  %i.ep = phi float [ 0.000000e+00, %.lr.ph163 ], [ %i.fo, %bb.l ]
  %i.eq = phi float [ %.promoted165, %.lr.ph163 ], [ %i.fs, %bb.l ]
  %i.er = phi float [ 0.000000e+00, %.lr.ph163 ], [ %i.fr, %bb.l ]
  %i.es = phi <2 x float> [ %i.ee, %.lr.ph163 ], [ %i.fz, %bb.l ]
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv179
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !345 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !223
  %i.ex = fsub float %i.ew, %i.dl                 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 20
  %i.ez = fmul float %i.ex, %i.ex
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv179
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !223 ; 4 uses
  %i.fc = load <2 x float>, ptr %i.ey, align 4, !tbaa !223
  %i.fd = fsub <2 x float> %i.fc, %i.do           ; 5 uses
  %i.fe = fmul <2 x float> %i.fd, %i.fd           ; 3 uses
  %shift = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.fe, %shift
  %i.ff = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fg = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = fadd <2 x float> %i.fh, %i.fe
  %i.fj = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.eq, i64 1
  %i.fn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.fi, <2 x float> %i.fm) ; 3 uses
  %i.fo = extractelement <2 x float> %i.fn, i64 0 ; 3 uses
  store float %i.fo, ptr %.sroa.5142.0..sroa_idx, align 8, !tbaa !223
  %i.fp = extractelement <2 x float> %i.fd, i64 0
  %i.fq = extractelement <2 x float> %i.fd, i64 1
  %i.fr = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.ff, float %i.er) ; 3 uses
  store float %i.fr, ptr %i.dt, align 8, !tbaa !223
  %i.fs = extractelement <2 x float> %i.fn, i64 1 ; 3 uses
  store float %i.fs, ptr %i.eb, align 4, !tbaa !223
  %i.ft = fneg float %i.ex
  %i.fu = fneg float %i.fp
  %i.fv = fmul float %i.fb, %i.ft
  %i.fw = fmul float %i.fb, %i.fu
  %i.fx = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fd, <2 x float> %i.es) ; 3 uses
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.fw, float %i.fq, float %i.eo) ; 3 uses
  store <2 x float> %i.fz, ptr %i.ec, align 4, !tbaa !223
  store float %i.ga, ptr %i.ed, align 8, !tbaa !223
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next180, %wide.trip.count182
  br i1 %exitcond183.not, label %._crit_edge164, label %bb.l, !llvm.loop !820

._crit_edge164:                                   ; preds = %bb.l, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge
  %i.gb = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fr, %bb.l ] ; 4 uses
  %i.gc = phi float [ 0.000000e+00, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fo, %bb.l ] ; 2 uses
  %i.gd = phi float [ %.pre201, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fs, %bb.l ] ; 3 uses
  %i.ge = phi float [ %.pre199, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.ga, %bb.l ] ; 5 uses
  %i.gf = phi <2 x float> [ %i.dw, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fn, %bb.l ]
  %i.gg = phi <2 x float> [ %i.dv, %_ZN10btSoftBody10clusterComEPKNS_7ClusterE.exit.._crit_edge164_crit_edge ], [ %i.fz, %bb.l ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 172
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 188
  %i.gk = fneg float %i.ge                        ; 2 uses
  %i.gl = fmul float %i.ge, %i.gk
  %i.gm = fneg <2 x float> %i.gf
  %i.gn = extractelement <2 x float> %i.gg, i64 1 ; 3 uses
  %i.go = fneg float %i.gn                        ; 2 uses
  %i.gp = fmul float %i.gn, %i.go
  %i.gq = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gc, float %i.gp)
  %i.gr = extractelement <2 x float> %i.gg, i64 0 ; 3 uses
  %i.gs = fneg float %i.gr
  %i.gt = fmul float %i.gr, %i.gs
  %i.gu = tail call noundef float @llvm.fmuladd.f32(float %i.gb, float %i.gd, float %i.gt)
  %i.gv = tail call noundef float @llvm.fmuladd.f32(float %i.gd, float %i.gc, float %i.gl) ; 2 uses
  %i.gw = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 1, i32 6, i32 0>
  %i.gy = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gz = shufflevector <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x float> %i.gy, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hb = fmul <4 x float> %i.gx, %i.ha
  %i.hc = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %i.ge, i64 0
  %i.hd = shufflevector <4 x float> %i.hc, <4 x float> %i.gw, <4 x i32> <i32 0, i32 4, i32 2, i32 0>
  %i.he = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.gw, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.hf = insertelement <4 x float> %i.he, float %i.ge, i64 1
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.hh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.hg, <4 x float> %i.hb) ; 2 uses
  %i.hi = extractelement <4 x float> %i.hh, i64 0
  %i.hj = fmul float %i.gr, %i.hi
  %i.hk = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.gv, float %i.hj)
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 196
  store float 0.000000e+00, ptr %.sroa.11.16..sroa_idx, align 4, !tbaa !230
  %i.hl = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.gb, i64 1
  %i.hn = insertelement <2 x float> poison, float %i.go, i64 0
  %i.ho = insertelement <2 x float> %i.hn, float %i.gk, i64 1
  %i.hp = fmul <2 x float> %i.hm, %i.ho
  %i.hq = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hr = insertelement <2 x float> %i.hq, float %i.ge, i64 0
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.hr, <2 x float> %i.hp) ; 2 uses
  %i.ht = extractelement <2 x float> %i.hs, i64 0
  %i.hu = tail call noundef float @llvm.fmuladd.f32(float %i.gn, float %i.ht, float %i.hk)
  %i.hv = fdiv float 1.000000e+00, %i.hu          ; 5 uses
  %i.hw = fmul float %i.gv, %i.hv
  %i.hx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hv, i64 0
  %i.hy = shufflevector <4 x float> %i.hx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  %i.hz = fmul <4 x float> %i.hh, %i.hy
  %i.ia = fmul float %i.gq, %i.hv
  %i.ib = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x float> %i.hs, %i.ic           ; 2 uses
  %i.ie = fmul float %i.gu, %i.hv
  store float %i.hw, ptr %i.dt, align 8
  store <4 x float> %i.hz, ptr %i.gh, align 4
  store float %i.ia, ptr %i.gj, align 4
  %i.if = extractelement <2 x float> %i.id, i64 1
  store float %i.if, ptr %i.gi, align 8
  store <2 x float> %i.id, ptr %i.du, align 8
  store float %i.ie, ptr %.sroa.5142.0..sroa_idx, align 8
  store float 0.000000e+00, ptr %.sroa.6143.0..sroa_idx, align 4, !tbaa !230
  %i.ig = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store float 1.000000e+00, ptr %i.ig, align 8, !tbaa !223
  %i.ih = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.ii = getelementptr inbounds nuw i8, ptr %i.g, i64 116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ih, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ii, align 4, !tbaa !223
  %i.ij = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ik = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ij, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ik, align 8, !tbaa !223
  %i.il = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  store i32 0, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.im, ptr noundef nonnull align 8 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa.struct !229
  %i.in = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 4 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !128 ; 2 uses
  %i.ip = icmp sgt i32 %i.be, %i.io
  br i1 %i.ip, label %bb.m, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.m:                                             ; preds = %._crit_edge164
  %i.iq = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !129
  %i.is = icmp slt i32 %i.ir, %i.be
  br i1 %i.is, label %bb.n, label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i94 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i.i94, label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.it = sext i32 %i.be to i64
  %i.iu = shl nsw i64 %i.it, 4
  %i.iv = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.iu, i32 noundef 16)
  %.pre.i95 = load i32, ptr %i.in, align 4, !tbaa !128
  br label %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i: ; preds = %bb.o, %bb.n
  %i.iw = phi i32 [ %.pre.i95, %bb.o ], [ %i.io, %bb.n ] ; 4 uses
  %.0.i.i.i96 = phi ptr [ %i.iv, %bb.o ], [ null, %bb.n ] ; 4 uses
  %i.ix = icmp sgt i32 %i.iw, 0
  br i1 %i.ix, label %.lr.ph.i.i.i98, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i98:                                   ; preds = %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %wide.trip.count.i.i.i99 = zext nneg i32 %i.iw to i64 ; 2 uses
  %xtraiter248 = and i64 %wide.trip.count.i.i.i99, 1
  %i.iz = icmp eq i32 %i.iw, 1
  br i1 %i.iz, label %.epil.preheader247, label %.lr.ph.i.i.i98.new

.lr.ph.i.i.i98.new:                               ; preds = %.lr.ph.i.i.i98
  %unroll_iter251 = and i64 %wide.trip.count.i.i.i99, 2147483646
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph.i.i.i98.new
  %indvars.iv.i.i.i100 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %indvars.iv.next.i.i.i101.1, %bb.p ] ; 4 uses
  %niter252 = phi i64 [ 0, %.lr.ph.i.i.i98.new ], [ %niter252.next.1, %bb.p ]
  %i.ja = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100
  %i.jb = load ptr, ptr %i.iy, align 8, !tbaa !127
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.jb, i64 %indvars.iv.i.i.i100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ja, ptr noundef nonnull align 4 dereferenceable(16) %i.jc, i64 16, i1 false), !tbaa.struct !229
  %indvars.iv.next.i.i.i101 = or disjoint i64 %indvars.iv.i.i.i100, 1 ; 2 uses
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.next.i.i.i101
  %i.je = load ptr, ptr %i.iy, align 8, !tbaa !127
  %i.jf = getelementptr inbounds nuw [16 x i8], ptr %i.je, i64 %indvars.iv.next.i.i.i101
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jd, ptr noundef nonnull align 4 dereferenceable(16) %i.jf, i64 16, i1 false), !tbaa.struct !229
  %indvars.iv.next.i.i.i101.1 = add nuw nsw i64 %indvars.iv.i.i.i100, 2 ; 2 uses
  %niter252.next.1 = add i64 %niter252, 2         ; 2 uses
  %niter252.ncmp.1 = icmp eq i64 %niter252.next.1, %unroll_iter251
  br i1 %niter252.ncmp.1, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.p, !llvm.loop !238

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.p
  %lcmp.mod249.not = icmp eq i64 %xtraiter248, 0
  br i1 %lcmp.mod249.not, label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i, label %.epil.preheader247

.epil.preheader247:                               ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i98
  %indvars.iv.i.i.i100.epil.init = phi i64 [ 0, %.lr.ph.i.i.i98 ], [ %indvars.iv.next.i.i.i101.1, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod250 = trunc i32 %i.iw to i1
  tail call void @llvm.assume(i1 %lcmp.mod250)
  %i.jg = getelementptr inbounds nuw [16 x i8], ptr %.0.i.i.i96, i64 %indvars.iv.i.i.i100.epil.init
  %i.jh = load ptr, ptr %i.iy, align 8, !tbaa !127
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr %i.jh, i64 %indvars.iv.i.i.i100.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.jg, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !229
  br label %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i

_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader247, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayI9btVector3E8allocateEi.exit.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !127 ; 2 uses
  %.not.i5.i.i97 = icmp eq ptr %i.jk, null
  br i1 %.not.i5.i.i97, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.jm = load i8, ptr %i.jl, align 8, !tbaa !126, !range !233, !noundef !234
  %i.jn = trunc nuw i8 %i.jm to i1
  br i1 %i.jn, label %bb.r, label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

bb.r:                                             ; preds = %bb.q
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.jk)
  br label %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i: ; preds = %bb.r, %bb.q, %_ZNK20btAlignedObjectArrayI9btVector3E4copyEiiPS0_.exit.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i8 1, ptr %i.jo, align 8, !tbaa !126
  store ptr %.0.i.i.i96, ptr %i.jj, align 8, !tbaa !127
  store i32 %i.be, ptr %i.iq, align 8, !tbaa !129
  br label %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit

_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit: ; preds = %bb.m, %_ZN20btAlignedObjectArrayI9btVector3E10deallocateEv.exit.i.i, %._crit_edge164
  store i32 %i.be, ptr %i.in, align 4, !tbaa !128
  br i1 %i.bf, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph170, %bb.s
  %indvars.iv184 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next185, %bb.s ] ; 3 uses
  %i.jr = load ptr, ptr %i.jp, align 8, !tbaa !682
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %indvars.iv184
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !345 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %i.jv = load <2 x float>, ptr %i.ju, align 4, !tbaa !223
  %i.jw = load <2 x float>, ptr %i.dr, align 8, !tbaa !223
  %i.jx = fsub <2 x float> %i.jv, %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  %i.jz = load float, ptr %i.jy, align 4, !tbaa !223
  %i.ka = load float, ptr %.sroa.432.0..sroa_idx, align 8, !tbaa !223
  %i.kb = fsub float %i.jz, %i.ka
  %.sroa.3.12.vec.insert.i105 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kb, i64 0
  %i.kc = load ptr, ptr %i.jq, align 8, !tbaa !127
  %i.kd = getelementptr inbounds nuw [16 x i8], ptr %i.kc, i64 %indvars.iv184 ; 2 uses
  store <2 x float> %i.jx, ptr %i.kd, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i105, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !230
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %i.ke = load i32, ptr %i.in, align 4, !tbaa !128
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp slt i64 %indvars.iv.next185, %i.kf
  br i1 %i.kg, label %bb.s, label %._crit_edge171, !llvm.loop !821

._crit_edge171:                                   ; preds = %bb.s, %_ZN20btAlignedObjectArrayI9btVector3E6resizeEiRKS0_.exit
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %i.kh = load i32, ptr %i.a, align 4, !tbaa !205
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next188, %i.ki
  br i1 %i.kj, label %bb.b, label %._crit_edge175, !llvm.loop !822

._crit_edge175:                                   ; preds = %._crit_edge171, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(2064) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.CProfileSample, align 1      ; 6 uses
  %2 = alloca %class.btMatrix3x3, align 8         ; 14 uses
  %3 = alloca %class.btMatrix3x3, align 4         ; 7 uses
  %4 = alloca %class.btMatrix3x3, align 4         ; 4 uses
  %5 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1748 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !205  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph331, label %._crit_edge332

.lr.ph331:                                        ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1680 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph331, %bb.y
  %i.s = phi i32 [ %i.b, %.lr.ph331 ], [ %i.qy, %bb.y ]
  %indvars.iv349 = phi i64 [ 0, %.lr.ph331 ], [ %indvars.iv.next350, %bb.y ] ; 2 uses
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !204
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv349
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !541  ; 53 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 36 ; 4 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !679  ; 6 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.r, i8 0, i64 44, i1 false)
  store float f0x38D1B717, ptr %2, align 8, !tbaa !223
  store float 2.000000e-04, ptr %i.g, align 4, !tbaa !223
  store float f0x399D4951, ptr %.sroa.5292.0..sroa_idx, align 8, !tbaa !223
  %i.y = load i32, ptr %i.w, align 4, !tbaa !679  ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0                     ; 2 uses
  br i1 %i.z, label %.lr.ph.i, label %.loopexit294

.lr.ph.i:                                         ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !682 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !131 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.y to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.ae = icmp eq i32 %i.y, 1
  br i1 %i.ae, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 4 uses
  %.sroa.015.019.i = phi float [ 0.000000e+00, %.lr.ph.i.new ], [ %i.bg, %bb.d ]
  %i.af = phi <2 x float> [ zeroinitializer, %.lr.ph.i.new ], [ %i.bh, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.d ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !345 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i
  %i.ak = load float, ptr %i.ai, align 4, !tbaa !223
  %i.al = load float, ptr %i.aj, align 4, !tbaa !223 ; 2 uses
  %i.am = fmul float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ao = load <2 x float>, ptr %i.an, align 4, !tbaa !223
  %i.ap = insertelement <2 x float> poison, float %i.al, i64 0
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = fmul <2 x float> %i.aq, %i.ao
  %i.as = fadd float %.sroa.015.019.i, %i.am
  %i.at = fadd <2 x float> %i.af, %i.ar
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !345 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !223
  %i.az = load float, ptr %i.ax, align 4, !tbaa !223 ; 2 uses
  %i.ba = fmul float %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.bc = load <2 x float>, ptr %i.bb, align 4, !tbaa !223
  %i.bd = insertelement <2 x float> poison, float %i.az, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fmul <2 x float> %i.be, %i.bc
  %i.bg = fadd float %i.as, %i.ba                 ; 3 uses
  %i.bh = fadd <2 x float> %i.at, %i.bf           ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit294.loopexit.unr-lcssa, label %bb.d, !llvm.loop !683

.loopexit294.loopexit.unr-lcssa:                  ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit294, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit294.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.loopexit294.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.015.019.i.epil.init = phi float [ 0.000000e+00, %.lr.ph.i ], [ %i.bg, %.loopexit294.loopexit.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %.lr.ph.i ], [ %i.bh, %.loopexit294.loopexit.unr-lcssa ]
  %lcmp.mod385 = trunc i32 %i.y to i1
  call void @llvm.assume(i1 %lcmp.mod385)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !345 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.i.epil.init
  %i.bm = load float, ptr %i.bk, align 4, !tbaa !223
  %i.bn = load float, ptr %i.bl, align 4, !tbaa !223 ; 2 uses
  %i.bo = fmul float %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 20
  %i.bq = load <2 x float>, ptr %i.bp, align 4, !tbaa !223
  %i.br = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.bs, %i.bq
  %i.bu = fadd float %.sroa.015.019.i.epil.init, %i.bo
  %i.bv = fadd <2 x float> %.epil.init, %i.bt
  br label %.loopexit294

.loopexit294:                                     ; preds = %.epil.preheader, %.loopexit294.loopexit.unr-lcssa, %bb.c
  %.sroa.015.0.lcssa.i = phi float [ 0.000000e+00, %bb.c ], [ %i.bg, %.loopexit294.loopexit.unr-lcssa ], [ %i.bu, %.epil.preheader ]
  %i.bw = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.bh, %.loopexit294.loopexit.unr-lcssa ], [ %i.bv, %.epil.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.v, i64 164 ; 2 uses
  %i.by = load float, ptr %i.bx, align 4, !tbaa !223 ; 3 uses
  %i.bz = fmul float %.sroa.015.0.lcssa.i, %i.by  ; 2 uses
  %i.ca = extractelement <2 x float> %i.bw, i64 0
  %i.cb = fmul float %i.ca, %i.by                 ; 2 uses
  %i.cc = extractelement <2 x float> %i.bw, i64 1
  %i.cd = fmul float %i.cc, %i.by                 ; 2 uses
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.bz, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.cb, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cd, i64 0
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 264 ; 3 uses
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ce, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 272 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !230
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.loopexit294
  %.promoted297 = load float, ptr %i.f, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !682
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !127
  %.promoted301 = load float, ptr %i.h, align 4, !tbaa !223
  %.promoted302 = load float, ptr %i.i, align 8, !tbaa !223
  %.promoted303 = load float, ptr %i.j, align 8, !tbaa !223
  %wide.trip.count = zext nneg i32 %i.y to i64
  %i.cj = insertelement <2 x float> <float f0x38D1B717, float poison>, float %.promoted301, i64 1
  %i.ck = insertelement <2 x float> <float poison, float 2.000000e-04>, float %.promoted297, i64 0
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.loopexit294
  %i.cl = load atomic i8, ptr @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar acquire, align 8
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.e, label %bb.h, !prof !431

bb.e:                                             ; preds = %._crit_edge
  %i.cn = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #39
  %.not.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN20btPolarDecompositionC1Efj(ptr noundef nonnull align 4 dereferenceable(8) @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar, float noundef f0x38D1B717, i32 noundef 16)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.co = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #39
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %._crit_edge
  %i.cp = invoke noundef i32 @_ZNK20btPolarDecomposition9decomposeERK11btMatrix3x3RS0_S3_(ptr noundef nonnull align 4 dereferenceable(8) @_ZZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar, ptr noundef nonnull align 4 dereferenceable(48) %2, ptr noundef nonnull align 4 dereferenceable(48) %3, ptr noundef nonnull align 4 dereferenceable(48) %4)
          to label %bb.l unwind label %bb.j       ; 0 uses

bb.i:                                             ; preds = %bb.f
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZL14PolarDecomposeRK11btMatrix3x3RS_S2_E5polar) #39
  br label %.body

bb.j:                                             ; preds = %bb.h
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.cs = phi float [ %.promoted303, %.lr.ph ], [ %i.ea, %bb.k ]
  %i.ct = phi float [ %.promoted302, %.lr.ph ], [ %i.ds, %bb.k ]
  %i.cu = phi float [ f0x399D4951, %.lr.ph ], [ %i.ei, %bb.k ]
  %i.cv = phi <2 x float> [ %i.cj, %.lr.ph ], [ %i.dr, %bb.k ]
  %i.cw = phi <2 x float> [ %i.ck, %.lr.ph ], [ %i.dz, %bb.k ]
  %i.cx = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.eh, %bb.k ]
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !345 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load float, ptr %i.da, align 4, !tbaa !223
  %i.dc = fsub float %i.db, %i.bz                 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %i.de = load float, ptr %i.dd, align 4, !tbaa !223
  %i.df = fsub float %i.de, %i.cb                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !223
  %i.di = fsub float %i.dh, %i.cd                 ; 2 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 3 uses
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !223
  %i.dm = fmul float %i.dc, %i.dl
  %i.dn = load <2 x float>, ptr %i.dj, align 4, !tbaa !223
  %i.do = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fmul <2 x float> %i.dp, %i.dn
  %i.dr = fadd <2 x float> %i.dq, %i.cv           ; 2 uses
  store <2 x float> %i.dr, ptr %2, align 8, !tbaa !223
  %i.ds = fadd float %i.dm, %i.ct                 ; 2 uses
  store float %i.ds, ptr %i.i, align 8, !tbaa !223
  %i.dt = load float, ptr %i.dk, align 4, !tbaa !223
  %i.du = fmul float %i.df, %i.dt
  %i.dv = load <2 x float>, ptr %i.dj, align 4, !tbaa !223
  %i.dw = insertelement <2 x float> poison, float %i.df, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = fmul <2 x float> %i.dx, %i.dv
  %i.dz = fadd <2 x float> %i.dy, %i.cw           ; 2 uses
  store <2 x float> %i.dz, ptr %i.f, align 8, !tbaa !223
  %i.ea = fadd float %i.du, %i.cs                 ; 2 uses
  store float %i.ea, ptr %i.j, align 8, !tbaa !223
  %i.eb = load float, ptr %i.dk, align 4, !tbaa !223
  %i.ec = fmul float %i.di, %i.eb
  %i.ed = load <2 x float>, ptr %i.dj, align 4, !tbaa !223
  %i.ee = insertelement <2 x float> poison, float %i.di, i64 0
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = fmul <2 x float> %i.ef, %i.ed
  %i.eh = fadd <2 x float> %i.eg, %i.cx           ; 2 uses
  store <2 x float> %i.eh, ptr %i.e, align 8, !tbaa !223
  %i.ei = fadd float %i.ec, %i.cu                 ; 2 uses
  store float %i.ei, ptr %.sroa.5292.0..sroa_idx, align 8, !tbaa !223
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !823

bb.l:                                             ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %i.v, i64 96 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.v, i64 144 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ek, ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ej, ptr noundef nonnull align 4 dereferenceable(48) %3, i64 16, i1 false), !tbaa.struct !229
  %i.el = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !229
  %i.em = getelementptr inbounds nuw i8, ptr %i.v, i64 128 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !229
  %i.en = getelementptr inbounds nuw i8, ptr %i.v, i64 168
  %i.eo = load float, ptr %i.en, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.v, i64 184
  %i.eq = load float, ptr %i.ep, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  %i.es = getelementptr inbounds nuw i8, ptr %i.v, i64 200
  %i.et = load float, ptr %i.es, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.v, i64 104
  %i.ev = getelementptr inbounds nuw i8, ptr %i.v, i64 172
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !223, !noalias !824 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.v, i64 188
  %i.ey = getelementptr inbounds nuw i8, ptr %i.v, i64 204
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !223, !noalias !824 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.v, i64 176
  %i.fb = load float, ptr %i.fa, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.v, i64 192
  %i.fd = getelementptr inbounds nuw i8, ptr %i.v, i64 208
  %i.fe = load float, ptr %i.fd, align 8, !tbaa !223, !noalias !824 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.v, i64 116
  %i.fg = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.fh = load float, ptr %i.em, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.v, i64 132 ; 2 uses
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !223, !noalias !824 ; 5 uses
  %i.fk = fmul float %i.eq, %i.fj
  %i.fl = call float @llvm.fmuladd.f32(float %i.eo, float %i.fh, float %i.fk)
  %i.fm = getelementptr inbounds nuw i8, ptr %i.v, i64 136 ; 2 uses
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.fo = call noundef float @llvm.fmuladd.f32(float %i.et, float %i.fn, float %i.fl) ; 2 uses
  %i.fp = load <2 x float>, ptr %i.ej, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.fq = load <2 x float>, ptr %i.ex, align 4, !tbaa !223, !noalias !824 ; 5 uses
  %i.fr = load float, ptr %i.fc, align 8, !tbaa !223, !noalias !824
  %i.fs = load <2 x float>, ptr %i.el, align 8, !tbaa !223, !noalias !824 ; 5 uses
  %i.ft = insertelement <2 x float> poison, float %i.eq, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = shufflevector <2 x float> %i.fp, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.fw = fmul <2 x float> %i.fu, %i.fv
  %i.fx = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = shufflevector <2 x float> %i.fp, <2 x float> %i.fs, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.ga = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fz, <2 x float> %i.fw)
  %i.gb = insertelement <2 x float> poison, float %i.et, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = shufflevector <2 x float> %i.fp, <2 x float> %i.fq, <2 x i32> <i32 1, i32 2>
  %i.ge = shufflevector <2 x float> %i.fq, <2 x float> %i.fv, <2 x i32> <i32 0, i32 3>
  %i.gf = fmul <2 x float> %i.gd, %i.ge
  %i.gg = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.fz, <2 x float> %i.gf)
  %i.gj = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = shufflevector <2 x float> %i.fv, <2 x float> %i.fq, <2 x i32> <i32 0, i32 3>
  %i.gm = shufflevector <2 x float> %i.fq, <2 x float> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.gn = fmul <2 x float> %i.gl, %i.gm
  %i.go = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gp, <2 x float> %i.fz, <2 x float> %i.gn)
  %i.gr = insertelement <2 x float> poison, float %i.fe, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = extractelement <2 x float> %i.fq, i64 0
  %i.gu = fmul float %i.gt, %i.fj
  %i.gv = call float @llvm.fmuladd.f32(float %i.ew, float %i.fh, float %i.gu)
  %i.gw = call noundef float @llvm.fmuladd.f32(float %i.ez, float %i.fn, float %i.gv) ; 2 uses
  %i.gx = fmul float %i.fr, %i.fj
  %i.gy = call float @llvm.fmuladd.f32(float %i.fb, float %i.fh, float %i.gx)
  %i.gz = call noundef float @llvm.fmuladd.f32(float %i.fe, float %i.fn, float %i.gy) ; 2 uses
  %i.ha = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hb = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hd = shufflevector <2 x float> %i.fs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hk = fmul float %i.fj, %i.gw
  %i.hl = call float @llvm.fmuladd.f32(float %i.fh, float %i.fo, float %i.hk)
  %i.hm = call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.gz, float %i.hl) ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 216
  %.sroa.5270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 220
  %.sroa.6271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 224
  %.sroa.7272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 228
  %.sroa.12276.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 244
  store float 0.000000e+00, ptr %.sroa.12276.16..sroa_idx, align 4, !tbaa !230
  %i.ho = getelementptr inbounds nuw i8, ptr %i.v, i64 248
  %i.hp = load <2 x float>, ptr %i.er, align 4, !tbaa !223, !noalias !824 ; 3 uses
  %i.hq = load <2 x float>, ptr %i.ff, align 4, !tbaa !223, !noalias !824 ; 3 uses
  %i.hr = shufflevector <2 x float> %i.hp, <2 x float> %i.hq, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.hr, <2 x float> %i.ga) ; 3 uses
  %i.ht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.hr, <2 x float> %i.gi) ; 3 uses
  %i.hu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gs, <2 x float> %i.hr, <2 x float> %i.gq) ; 3 uses
  %i.hv = fmul <2 x float> %i.ha, %i.ht
  %i.hw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hb, <2 x float> %i.hs, <2 x float> %i.hv)
  %i.hx = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hu, <2 x float> %i.hw) ; 3 uses
  %i.hz = fmul <2 x float> %i.ht, %i.hc
  %i.ia = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.hs, <2 x float> %i.hz)
  %i.ib = shufflevector <2 x float> %i.hq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ic = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %i.hu, <2 x float> %i.ia) ; 3 uses
  %i.id = fmul <2 x float> %i.ht, %i.hf
  %i.ie = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hs, <2 x float> %i.id)
  %i.if = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hu, <2 x float> %i.ie) ; 3 uses
  %i.ig = shufflevector <2 x float> %i.hp, <2 x float> %i.hq, <2 x i32> <i32 0, i32 2>
  %i.ih = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.ii = shufflevector <2 x float> %i.ih, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.ig, %i.ii
  %i.ik = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.il = shufflevector <2 x float> %i.ik, <2 x float> poison, <2 x i32> zeroinitializer
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.il, <2 x float> %i.ij)
  %i.in = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hr, <2 x float> %i.io, <2 x float> %i.im) ; 3 uses
  %i.iq = extractelement <2 x float> %i.hy, i64 0
  store float %i.iq, ptr %i.hn, align 8
  %i.ir = extractelement <2 x float> %i.ic, i64 0
  store float %i.ir, ptr %.sroa.5270.0..sroa_idx, align 4
  %i.is = extractelement <2 x float> %i.if, i64 0
  store float %i.is, ptr %.sroa.6271.0..sroa_idx, align 8
  %i.it = shufflevector <2 x float> %i.hy, <2 x float> %i.ic, <4 x i32> <i32 poison, i32 1, i32 3, i32 poison>
  %i.iu = insertelement <4 x float> %i.it, float 0.000000e+00, i64 0
  %i.iv = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  store <4 x float> %i.iw, ptr %.sroa.7272.0..sroa_idx, align 4
  store <2 x float> %i.ip, ptr %i.ho, align 8
  %.sroa.16277.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 256
  store float %i.hm, ptr %.sroa.16277.32..sroa_idx, align 8
  %.sroa.17278.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 260
  store float 0.000000e+00, ptr %.sroa.17278.32..sroa_idx, align 4, !tbaa !230
  %i.ix = getelementptr inbounds nuw i8, ptr %i.v, i64 352 ; 4 uses
  %.sroa.5250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 360 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.v, i64 368 ; 2 uses
  %.sroa.4242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 372
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 376 ; 2 uses
  %i.iz = icmp sgt i32 %i.x, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, i8 0, i64 32, i1 false)
  br i1 %i.iz, label %.lr.ph306, label %._crit_edge307

.lr.ph306:                                        ; preds = %bb.l
  %i.ja = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !682
  %i.jc = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !131
  %wide.trip.count339 = zext nneg i32 %i.x to i64
  %i.je = load <2 x float>, ptr %i.ce, align 8, !tbaa !223 ; 2 uses
  %.pre353 = load float, ptr %.sroa.526.0..sroa_idx, align 8, !tbaa !223
  %i.jf = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.jg = insertelement <2 x float> %i.jf, float %.pre353, i64 0
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph306, %bb.m
  %indvars.iv336 = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next337, %bb.m ] ; 3 uses
  %i.jh = phi float [ 0.000000e+00, %.lr.ph306 ], [ %i.kx, %bb.m ]
  %i.ji = phi float [ 0.000000e+00, %.lr.ph306 ], [ %i.kv, %bb.m ]
  %i.jj = phi float [ 0.000000e+00, %.lr.ph306 ], [ %i.kt, %bb.m ]
  %i.jk = phi float [ 0.000000e+00, %.lr.ph306 ], [ %i.jz, %bb.m ]
  %i.jl = phi <2 x float> [ zeroinitializer, %.lr.ph306 ], [ %i.jy, %bb.m ]
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv336
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !345 ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv336
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !223 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jn, i64 56
  %i.js = load float, ptr %i.jr, align 4, !tbaa !223
  %i.jt = fmul float %i.jq, %i.js                 ; 3 uses
  %i.ju = load <2 x float>, ptr %i.jo, align 4, !tbaa !223
  %i.jv = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.jw = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x float> %i.jw, %i.ju           ; 4 uses
  %i.jy = fadd <2 x float> %i.jx, %i.jl           ; 3 uses
  store <2 x float> %i.jy, ptr %i.ix, align 8, !tbaa !223
  %i.jz = fadd float %i.jt, %i.jk                 ; 3 uses
  store float %i.jz, ptr %.sroa.5250.0..sroa_idx, align 8, !tbaa !223
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !223
  %i.kd = extractelement <2 x float> %i.jx, i64 1
  %i.ke = fneg float %i.kd
  %i.kf = load <2 x float>, ptr %i.ka, align 4, !tbaa !223 ; 2 uses
  %i.kg = fsub <2 x float> %i.kf, %i.je           ; 2 uses
  %i.kh = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ki = insertelement <2 x float> %i.kh, float %i.kc, i64 0
  %i.kj = fsub <2 x float> %i.ki, %i.jg           ; 2 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0
  %i.kl = fmul float %i.kk, %i.ke
  %i.km = extractelement <2 x float> %i.kg, i64 1
  %i.kn = call float @llvm.fmuladd.f32(float %i.km, float %i.jt, float %i.kl)
  %i.ko = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kp = insertelement <2 x float> %i.ko, float %i.jt, i64 0
  %i.kq = fneg <2 x float> %i.kp
  %i.kr = fmul <2 x float> %i.kg, %i.kq
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kj, <2 x float> %i.jx, <2 x float> %i.kr) ; 2 uses
  %i.kt = fadd float %i.jj, %i.kn                 ; 3 uses
  store float %i.kt, ptr %i.iy, align 8, !tbaa !223
  %i.ku = extractelement <2 x float> %i.ks, i64 0
  %i.kv = fadd float %i.ku, %i.ji                 ; 3 uses
  store float %i.kv, ptr %.sroa.4242.0..sroa_idx, align 4, !tbaa !223
  %i.kw = extractelement <2 x float> %i.ks, i64 1
  %i.kx = fadd float %i.kw, %i.jh                 ; 3 uses
  store float %i.kx, ptr %.sroa.5243.0..sroa_idx, align 8, !tbaa !223
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody13predictMotionEf:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !345
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.bf = load float, ptr %i.be, align 8, !tbaa !239
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !345
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 112
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !239
  %i.bk = fadd float %i.bf, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !648
  %i.bn = fdiv float %i.bk, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  store float %i.bn, ptr %i.bo, align 8, !tbaa !649
  %indvars.iv.next.i4.i.1 = add nuw nsw i64 %indvars.iv.i3.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa, label %.lr.ph.i1.i, !llvm.loop !650

_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i1.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN10btSoftBody15updateConstantsEv.exit, label %.lr.ph.i1.i.epil.preheader

.lr.ph.i1.i.epil.preheader:                       ; preds = %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa, %.lr.ph.i1.i.preheader
  %indvars.iv.i3.i.epil.init = phi i64 [ 0, %.lr.ph.i1.i.preheader ], [ %indvars.iv.next.i4.i.1, %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod204 = trunc i32 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod204)
  %i.bp = getelementptr inbounds nuw [72 x i8], ptr %i.h, i64 %indvars.iv.i3.i.epil.init ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !251
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !345
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 112
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !239
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !345
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 112
  %i.bz = load float, ptr %i.by, align 8, !tbaa !239
  %i.ca = fadd float %i.bv, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !648
  %i.cd = fdiv float %i.ca, %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store float %i.cd, ptr %i.ce, align 8, !tbaa !649
  br label %_ZN10btSoftBody15updateConstantsEv.exit

_ZN10btSoftBody15updateConstantsEv.exit:          ; preds = %.lr.ph.i1.i.epil.preheader, %_ZN10btSoftBody15updateConstantsEv.exit.loopexit.unr-lcssa, %bb.b
  tail call void @_ZN10btSoftBody10updateAreaEb(ptr noundef nonnull readonly align 8 dereferenceable(2064) %0, i1 noundef zeroext true)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !258
  %i.ci = and i32 %i.ch, 16
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN10btSoftBody15updateConstantsEv.exit
  tail call void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  br label %bb.e

bb.e:                                             ; preds = %_ZN10btSoftBody15updateConstantsEv.exit, %bb.d, %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !909
  %i.cl = fmul float %1, %i.ck                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 4 uses
  store float %i.cl, ptr %i.cm, align 8, !tbaa !586
  %i.cn = fdiv float 1.000000e+00, %i.cl
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 628
  store float %i.cn, ptr %i.co, align 4, !tbaa !910
  %i.cp = fmul float %i.cl, 3.000000e+00
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  store float %i.cp, ptr %i.cq, align 8, !tbaa !911
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !228 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !9
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 96
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef float %i.cv(ptr noundef nonnull align 8 dereferenceable(32) %i.cs) ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 3 uses
  store float %i.cw, ptr %i.cx, align 4, !tbaa !833
  %i.cy = fmul float %i.cw, 2.500000e-01
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 3 uses
  store float %i.cy, ptr %i.cz, align 8, !tbaa !912
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !134 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  %i.dd = load float, ptr %i.cm, align 8, !tbaa !223 ; 2 uses
  %i.de = load <2 x float>, ptr %i.dc, align 4, !tbaa !223
  %i.df = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul <2 x float> %i.dg, %i.de           ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 56
  %i.dj = load float, ptr %i.di, align 4, !tbaa !223
  %i.dk = fmul float %i.dd, %i.dj                 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 932 ; 4 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !141 ; 4 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !140 ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.dm to i64 ; 2 uses
  %xtraiter205 = and i64 %wide.trip.count.i, 1
  %i.dq = icmp eq i32 %i.dm, 1
  br i1 %i.dq, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter208 = and i64 %wide.trip.count.i, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1 ] ; 3 uses
  %niter209 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter209.next.1, %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1 ]
  %i.dr = getelementptr inbounds nuw [256 x i8], ptr %i.dp, i64 %indvars.iv.i ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 112
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !239
  %i.du = fcmp ogt float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.g, label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i

bb.g:                                             ; preds = %bb.f
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 48 ; 2 uses
  %i.dw = load <2 x float>, ptr %i.dv, align 8, !tbaa !223
  %i.dx = fadd <2 x float> %i.dh, %i.dw
  store <2 x float> %i.dx, ptr %i.dv, align 8, !tbaa !223
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dr, i64 56 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !223
  %i.ea = fadd float %i.dk, %i.dz
  store float %i.ea, ptr %i.dy, align 8, !tbaa !223
  br label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i

_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i: ; preds = %bb.g, %bb.f
  %i.eb = getelementptr inbounds nuw [256 x i8], ptr %i.dp, i64 %indvars.iv.i ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 368
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !239
  %i.ee = fcmp ogt float %i.ed, 0.000000e+00
  br i1 %i.ee, label %bb.h, label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1

bb.h:                                             ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 304 ; 2 uses
  %i.eg = load <2 x float>, ptr %i.ef, align 8, !tbaa !223
  %i.eh = fadd <2 x float> %i.dh, %i.eg
  store <2 x float> %i.eh, ptr %i.ef, align 8, !tbaa !223
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eb, i64 312 ; 2 uses
  %i.ej = load float, ptr %i.ei, align 8, !tbaa !223
  %i.ek = fadd float %i.dk, %i.ej
  store float %i.ek, ptr %i.ei, align 8, !tbaa !223
  br label %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1

_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1: ; preds = %bb.h, %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter209.next.1 = add i64 %niter209, 2         ; 2 uses
  %niter209.ncmp.1 = icmp eq i64 %niter209.next.1, %unroll_iter208
  br i1 %niter209.ncmp.1, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !591

_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa: ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3i.exit.i.1
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa ]
  %lcmp.mod207 = trunc i32 %i.dm to i1
  tail call void @llvm.assume(i1 %lcmp.mod207)
  %i.el = getelementptr inbounds nuw [256 x i8], ptr %i.dp, i64 %indvars.iv.i.epil.init ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.en = load float, ptr %i.em, align 8, !tbaa !239
  %i.eo = fcmp ogt float %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.i, label %_ZN10btSoftBody11addVelocityERK9btVector3.exit

bb.i:                                             ; preds = %.epil.preheader
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 48 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.ep, align 8, !tbaa !223
  %i.er = fadd <2 x float> %i.dh, %i.eq
  store <2 x float> %i.er, ptr %i.ep, align 8, !tbaa !223
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 56 ; 2 uses
  %i.et = load float, ptr %i.es, align 8, !tbaa !223
  %i.eu = fadd float %i.dk, %i.et
  store float %i.eu, ptr %i.es, align 8, !tbaa !223
  br label %_ZN10btSoftBody11addVelocityERK9btVector3.exit

_ZN10btSoftBody11addVelocityERK9btVector3.exit:   ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3.exit.loopexit.unr-lcssa, %bb.i, %.epil.preheader, %bb.e
  tail call void @_ZN10btSoftBody11applyForcesEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  %i.ev = load i32, ptr %i.dl, align 4, !tbaa !141 ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN10btSoftBody11addVelocityERK9btVector3.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 944
  %wide.trip.count = zext nneg i32 %i.ev to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !140
  %i.ez = getelementptr inbounds nuw [256 x i8], ptr %i.ey, i64 %indvars.iv ; 9 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.fa, i64 16, i1 false), !tbaa.struct !229
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ez, i64 80 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %i.fe = load float, ptr %i.fc, align 8, !tbaa !223
  %i.ff = load float, ptr %i.fd, align 8, !tbaa !223 ; 3 uses
  %i.fg = fmul float %i.fe, %i.ff
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ez, i64 84
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !223
  %i.fj = fmul float %i.ff, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ez, i64 88
  %i.fl = load float, ptr %i.fk, align 8, !tbaa !223
  %i.fm = fmul float %i.ff, %i.fl
  %i.fn = load float, ptr %i.cm, align 8, !tbaa !223 ; 4 uses
  %i.fo = fmul float %i.fg, %i.fn                 ; 2 uses
  %i.fp = fmul float %i.fj, %i.fn
  %i.fq = fmul float %i.fn, %i.fm                 ; 2 uses
  %.sroa.0.0.vec.insert.i59 = insertelement <2 x float> poison, float %i.fo, i64 0
  %.sroa.0.4.vec.insert.i60 = insertelement <2 x float> %.sroa.0.0.vec.insert.i59, float %i.fp, i64 1 ; 2 uses
  %i.fr = load ptr, ptr %i.da, align 8, !tbaa !134
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !913
  %i.fu = fdiv float %i.ft, %i.fn                 ; 8 uses
  %i.fv = fneg float %i.fu                        ; 6 uses
  %i.fw = fcmp ogt float %i.fo, %i.fu
  %.sroa.0.0.vec.insert176 = insertelement <2 x float> %.sroa.0.4.vec.insert.i60, float %i.fu, i64 0
  %.sroa.0.0 = select i1 %i.fw, <2 x float> %.sroa.0.0.vec.insert176, <2 x float> %.sroa.0.4.vec.insert.i60 ; 3 uses
  %.sroa.0.0.vec.extract174 = extractelement <2 x float> %.sroa.0.0, i64 0
  %i.fx = fcmp olt float %.sroa.0.0.vec.extract174, %i.fv
  %.sroa.0.0.vec.insert = insertelement <2 x float> %.sroa.0.0, float %i.fv, i64 0
  %.sroa.0.1 = select i1 %i.fx, <2 x float> %.sroa.0.0.vec.insert, <2 x float> %.sroa.0.0 ; 3 uses
  %.sroa.0.4.vec.extract180 = extractelement <2 x float> %.sroa.0.1, i64 1 ; 2 uses
  %i.fy = fcmp ogt float %.sroa.0.4.vec.extract180, %i.fu ; 2 uses
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.1, float %i.fu, i64 1
  %.sroa.0.4.vec.extract183.pre-phi = select i1 %i.fy, float %i.fu, float %.sroa.0.4.vec.extract180
  %.sroa.0.2 = select i1 %i.fy, <2 x float> %.sroa.0.4.vec.insert, <2 x float> %.sroa.0.1 ; 2 uses
  %i.fz = fcmp olt float %.sroa.0.4.vec.extract183.pre-phi, %i.fv
  %.sroa.0.4.vec.insert185 = insertelement <2 x float> %.sroa.0.2, float %i.fv, i64 1
  %.sroa.0.3 = select i1 %i.fz, <2 x float> %.sroa.0.4.vec.insert185, <2 x float> %.sroa.0.2
  %i.ga = fcmp ogt float %i.fq, %i.fu
  %.sroa.13.8.vec.extract190 = select i1 %i.ga, float %i.fu, float %i.fq ; 2 uses
  %i.gb = fcmp olt float %.sroa.13.8.vec.extract190, %i.fv
  %.sroa.13.8.vec.extract.pre-phi = select i1 %i.gb, float %i.fv, float %.sroa.13.8.vec.extract190
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ez, i64 48 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ez, i64 56 ; 2 uses
  %i.ge = load float, ptr %i.gd, align 8, !tbaa !223
  %i.gf = fadd float %.sroa.13.8.vec.extract.pre-phi, %i.ge ; 2 uses
  store float %i.gf, ptr %i.gd, align 8, !tbaa !223
  %i.gg = load <2 x float>, ptr %i.gc, align 8, !tbaa !223
  %i.gh = fadd <2 x float> %.sroa.0.3, %i.gg      ; 2 uses
  store <2 x float> %i.gh, ptr %i.gc, align 8, !tbaa !223
  %i.gi = load float, ptr %i.cm, align 8, !tbaa !223 ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %i.gi, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fmul <2 x float> %i.gh, %i.gk
  %i.gm = fmul float %i.gf, %i.gi
  %i.gn = load <2 x float>, ptr %i.fa, align 8, !tbaa !223
  %i.go = fadd <2 x float> %i.gl, %i.gn
  store <2 x float> %i.go, ptr %i.fa, align 8, !tbaa !223
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ez, i64 24 ; 2 uses
  %i.gq = load float, ptr %i.gp, align 8, !tbaa !223
  %i.gr = fadd float %i.gm, %i.gq
  store float %i.gr, ptr %i.gp, align 8, !tbaa !223
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, i8 0, i64 16, i1 false)
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !914

._crit_edge:                                      ; preds = %bb.j, %_ZN10btSoftBody11addVelocityERK9btVector3.exit
  tail call void @_ZN10btSoftBody14updateClustersEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  tail call void @_ZN10btSoftBody12updateBoundsEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.gs = load i32, ptr %i.dl, align 4, !tbaa !141 ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %._crit_edge
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 944
  %.sroa.4129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 1544
  %i.gw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %wide.trip.count162 = zext nneg i32 %i.gs to i64
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph150, %bb.k
  %indvars.iv159 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next160, %bb.k ] ; 2 uses
  %i.gx = load ptr, ptr %i.gu, align 8, !tbaa !140
  %i.gy = getelementptr inbounds nuw [256 x i8], ptr %i.gx, i64 %indvars.iv159 ; 5 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load float, ptr %i.cx, align 4, !tbaa !833 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !223, !noalias !915 ; 2 uses
  %i.hd = fsub float %i.hc, %i.ha
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hd, i64 0
  %i.he = load <2 x float>, ptr %i.gz, align 4, !tbaa !223, !noalias !915 ; 2 uses
  %i.hf = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hh = fsub <2 x float> %i.he, %i.hg
  %i.hi = fadd <2 x float> %i.hg, %i.he
  %i.hj = fadd float %i.ha, %i.hc
  %.sroa.3.12.vec.insert.i8.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hj, i64 0
  store <2 x float> %i.hh, ptr %2, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.4129.0..sroa_idx, align 8, !tbaa !230
  store <2 x float> %i.hi, ptr %.sroa.5130.0..sroa_idx, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i8.i.i, ptr %.sroa.6131.0..sroa_idx, align 8, !tbaa !230
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gy, i64 120
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gy, i64 48
  %i.hn = load float, ptr %i.cq, align 8, !tbaa !223 ; 2 uses
  %i.ho = load <2 x float>, ptr %i.hm, align 8, !tbaa !223
  %i.hp = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.hq = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hr = fmul <2 x float> %i.hq, %i.ho
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gy, i64 56
  %i.ht = load float, ptr %i.hs, align 8, !tbaa !223
  %i.hu = fmul float %i.hn, %i.ht
  %.sroa.3.12.vec.insert.i71 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hu, i64 0
  store <2 x float> %i.hr, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i71, ptr %i.gw, align 8
  %i.hv = load float, ptr %i.cz, align 8, !tbaa !912
  %i.hw = call noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64) %i.gv, ptr noundef %i.hl, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %i.hv) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1 ; 2 uses
  %exitcond163.not = icmp eq i64 %indvars.iv.next160, %wide.trip.count162
  br i1 %exitcond163.not, label %._crit_edge151, label %bb.k, !llvm.loop !920

._crit_edge151:                                   ; preds = %bb.k, %._crit_edge
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 1608 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !899
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %.loopexit145, label %.preheader

.preheader:                                       ; preds = %._crit_edge151
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1028 ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !153
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph153, label %.loopexit145

.lr.ph153:                                        ; preds = %.preheader
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %.sroa.8115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.10118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.12121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph153, %bb.l
  %indvars.iv164 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next165, %bb.l ] ; 2 uses
  %i.if = load ptr, ptr %i.id, align 8, !tbaa !152
  %i.ig = getelementptr inbounds nuw [144 x i8], ptr %i.if, i64 %indvars.iv164 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !345 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 48
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !345 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 56
  %i.io = load float, ptr %i.in, align 4, !tbaa !223
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !223
  %i.ir = fadd float %i.io, %i.iq
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !345 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 48
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 56
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !223
  %i.ix = fadd float %i.ir, %i.iw
  %i.iy = fmul float %i.ix, f0x3EAAAAAB
  %i.iz = load float, ptr %i.cx, align 4, !tbaa !833 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %.sroa.17.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ii, i64 24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.il, i64 24
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.jf = load <2 x float>, ptr %.sroa.17.16..sroa_idx, align 4 ; 3 uses
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jh = load <2 x float>, ptr %i.jd, align 4, !tbaa !223, !noalias !921 ; 3 uses
  %i.ji = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.jj = shufflevector <2 x float> %i.jf, <2 x float> %i.jh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jk = shufflevector <2 x float> %i.jh, <2 x float> %i.jf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.jl = fcmp olt <4 x float> %i.jj, %i.jk
  %i.jm = shufflevector <4 x i1> %i.jl, <4 x i1> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.jn = select <4 x i1> %i.jm, <4 x float> %i.ji, <4 x float> %i.jg ; 3 uses
  %i.jo = load <2 x float>, ptr %i.je, align 4, !tbaa !223, !noalias !921
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.jq = shufflevector <4 x float> %i.jp, <4 x float> %i.jn, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jr = shufflevector <4 x float> %i.jn, <4 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.js = fcmp olt <4 x float> %i.jq, %i.jr
  %i.jt = select <4 x i1> %i.js, <4 x float> %i.jp, <4 x float> %i.jn ; 4 uses
  %i.ju = extractelement <4 x float> %i.jt, i64 0
  %i.jv = fsub float %i.ju, %i.iz
  %i.jw = extractelement <4 x float> %i.jt, i64 2
  %i.jx = fadd float %i.iz, %i.jw
  %i.jy = load <2 x float>, ptr %i.ja, align 4    ; 4 uses
  %i.jz = load <2 x float>, ptr %i.jb, align 4, !tbaa !223, !noalias !921 ; 4 uses
  %i.ka = fcmp olt <2 x float> %i.jz, %i.jy
  %i.kb = select <2 x i1> %i.ka, <2 x float> %i.jz, <2 x float> %i.jy ; 2 uses
  %i.kc = load <2 x float>, ptr %i.jc, align 4, !tbaa !223, !noalias !921 ; 4 uses
  %i.kd = fcmp olt <2 x float> %i.kc, %i.kb
  %i.ke = select <2 x i1> %i.kd, <2 x float> %i.kc, <2 x float> %i.kb
  %i.kf = insertelement <2 x float> poison, float %i.iz, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kh = fsub <2 x float> %i.ke, %i.kg
  store <2 x float> %i.kh, ptr %2, align 8
  store float %i.jv, ptr %.sroa.8115.0..sroa_idx, align 8
  %i.ki = extractelement <4 x float> %i.jt, i64 1
  store float %i.ki, ptr %.sroa.10118.0..sroa_idx, align 4, !tbaa !230
  %i.kj = fcmp olt <2 x float> %i.jy, %i.jz
  %i.kk = select <2 x i1> %i.kj, <2 x float> %i.jz, <2 x float> %i.jy ; 2 uses
  %i.kl = fcmp olt <2 x float> %i.kk, %i.kc
  %i.km = select <2 x i1> %i.kl, <2 x float> %i.kc, <2 x float> %i.kk
  %i.kn = fadd <2 x float> %i.kg, %i.km
  store <2 x float> %i.kn, ptr %.sroa.12121.0..sroa_idx, align 8
  store float %i.jx, ptr %.sroa.17.0..sroa_idx, align 8
  %i.ko = extractelement <4 x float> %i.jt, i64 3
  store float %i.ko, ptr %.sroa.19.0..sroa_idx, align 4, !tbaa !230
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ig, i64 64
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !357
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.kr = load float, ptr %i.cq, align 8, !tbaa !223 ; 2 uses
  %i.ks = load <2 x float>, ptr %i.ij, align 4, !tbaa !223
  %i.kt = load <2 x float>, ptr %i.im, align 4, !tbaa !223
  %i.ku = fadd <2 x float> %i.ks, %i.kt
  %i.kv = load <2 x float>, ptr %i.iu, align 4, !tbaa !223
  %i.kw = fadd <2 x float> %i.ku, %i.kv
  %i.kx = fmul <2 x float> %i.kw, splat (float f0x3EAAAAAB)
  %i.ky = insertelement <2 x float> poison, float %i.kr, i64 0
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.la = fmul <2 x float> %i.kx, %i.kz
  %i.lb = fmul float %i.iy, %i.kr
  %.sroa.3.12.vec.insert.i86 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lb, i64 0
  store <2 x float> %i.la, ptr %4, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i86, ptr %i.ie, align 8
  %i.lc = load float, ptr %i.cz, align 8, !tbaa !912
  %i.ld = call noundef zeroext i1 @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMmRK9btVector3f(ptr noundef nonnull align 8 dereferenceable(64) %i.hx, ptr noundef %i.kq, ptr noundef nonnull align 4 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef %i.lc) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %i.le = load i32, ptr %i.ia, align 4, !tbaa !153
  %i.lf = sext i32 %i.le to i64
  %i.lg = icmp slt i64 %indvars.iv.next165, %i.lf
  br i1 %i.lg, label %bb.l, label %.loopexit145, !llvm.loop !926

.loopexit145:                                     ; preds = %bb.l, %.preheader, %._crit_edge151
  call void @_ZN10btSoftBody10updatePoseEv(ptr noundef nonnull align 8 dereferenceable(2064) %0)
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 649
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !260, !range !233, !noundef !234
  %i.lj = trunc nuw i8 %i.li to i1
  br i1 %i.lj, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %.loopexit145
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.ll = load float, ptr %i.lk, align 8, !tbaa !927
  %i.lm = fcmp ogt float %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 768
end_hunk_2
begin_hunk_3_@_ZNK10btSoftBody22checkDeformableContactEPK24btCollisionObjectWrapperRK9btVector3fRNS_4sCtiEb:bb.a
  %i.ef = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ed, <2 x float> %i.ef, <2 x float> %i.ec)
  %i.eh = insertelement <2 x float> poison, float %i.dy, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dn, <2 x float> %i.ei, <2 x float> %i.eg)
  %i.ek = extractelement <2 x float> %i.dk, i64 1
  %i.el = fmul float %i.ek, %i.dv
  %i.em = extractelement <2 x float> %i.dk, i64 0
  %i.en = tail call float @llvm.fmuladd.f32(float %i.em, float %i.ds, float %i.el)
  %i.eo = tail call noundef float @llvm.fmuladd.f32(float %.sroa.34.0, float %i.dy, float %i.en)
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eo, i64 0
  store <2 x float> %i.ej, ptr %7, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i, ptr %i.ep, align 8
  %i.eq = call noundef float @_ZN11btSparseSdfILi3EE8EvaluateERK9btVector3PK16btCollisionShapeRS1_f(ptr noundef nonnull align 8 dereferenceable(60) %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(16) %6, float noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  br i1 %5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.er = load ptr, ptr %i.c, align 8, !tbaa !1092
  store ptr %i.er, ptr %4, align 8, !tbaa !1093
  %i.es = load float, ptr %6, align 4, !tbaa !223 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.eu = load float, ptr %i.et, align 4, !tbaa !223 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !223 ; 2 uses
  %i.ex = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.dm, %i.ey
  %i.fa = insertelement <2 x float> poison, float %i.es, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.fb, <2 x float> %i.ez)
  %i.fd = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.fe, <2 x float> %i.fc)
  %i.fg = extractelement <2 x float> %i.dn, i64 1
  %i.fh = fmul float %i.fg, %i.eu
  %i.fi = extractelement <2 x float> %i.dn, i64 0
  %i.fj = call float @llvm.fmuladd.f32(float %i.fi, float %i.es, float %i.fh)
  %i.fk = call noundef float @llvm.fmuladd.f32(float %.sroa.34.0, float %i.ew, float %i.fj)
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fk, i64 0
  %i.fl = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.ff, ptr %i.fl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !230
  %i.fm = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.eq, ptr %i.fm, align 8, !tbaa !1094
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fn = fcmp olt float %i.eq, 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  ret i1 %i.fn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody26checkDeformableFaceContactEPK24btCollisionObjectWrapperRNS_4FaceER9btVector3S6_fRNS_4sCtiEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(140) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %4, float noundef %5, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(60) %6, i1 noundef zeroext %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.btTransform, align 16        ; 28 uses
  %9 = alloca %"struct.btGjkEpaSolver2::sResults", align 4 ; 11 uses
  %10 = alloca %class.btTransform, align 4        ; 13 uses
  %11 = alloca %class.btTriangleShape, align 8    ; 14 uses
  %12 = alloca %class.btVector3, align 4          ; 7 uses
  %13 = alloca %class.btTriangleShape, align 8    ; 14 uses
  %14 = alloca %class.btTriangleShape, align 8    ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1083 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1092 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  br i1 %7, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1095 ; 13 uses
  %.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.v = load float, ptr %i.u, align 4, !tbaa !223, !noalias !1105 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.x = load float, ptr %i.w, align 4, !tbaa !223, !noalias !1102 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 52
  %i.z = load float, ptr %i.y, align 4, !tbaa !223, !noalias !1102 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !223, !noalias !1102 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !223, !noalias !1102
  %i.af = load <2 x float>, ptr %i.g, align 4, !tbaa !223, !noalias !1105 ; 4 uses
  %i.ag = load <2 x float>, ptr %i.f, align 4, !tbaa !223, !noalias !1105 ; 2 uses
  %i.ah = load <2 x float>, ptr %i.h, align 4, !tbaa !223, !noalias !1105 ; 3 uses
  %i.ai = load <2 x float>, ptr %i.j, align 4, !tbaa !223, !noalias !1105 ; 2 uses
  %i.aj = shufflevector <2 x float> %i.ah, <2 x float> %i.af, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ak = insertelement <4 x float> %i.aj, float 0.000000e+00, i64 3
  %i.al = shufflevector <2 x float> %i.af, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.am = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.al, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.an = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.am, <4 x float> %i.an, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ap = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.aq = insertelement <4 x float> %i.ap, float 0.000000e+00, i64 3
  %i.ar = shufflevector <2 x float> %i.af, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.as = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.at = insertelement <4 x float> %i.as, float 0.000000e+00, i64 3
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.av = load <2 x float>, ptr %i.q, align 4, !tbaa !223, !noalias !1105 ; 3 uses
  %i.aw = load <2 x float>, ptr %i.l, align 4, !tbaa !223, !noalias !1105 ; 2 uses
  %i.ax = load float, ptr %i.o, align 4, !tbaa !223, !noalias !1105
  %i.ay = load <2 x float>, ptr %i.k, align 4, !tbaa !223, !noalias !1105 ; 2 uses
  %i.az = load float, ptr %i.n, align 4, !tbaa !223, !noalias !1105
  %i.ba = load <2 x float>, ptr %i.m, align 4, !tbaa !223, !noalias !1105 ; 2 uses
  %i.bb = load float, ptr %i.p, align 4, !tbaa !223, !noalias !1105
  %i.bc = load <2 x float>, ptr %i.ac, align 4, !tbaa !223, !noalias !1102
  %i.bd = load <2 x float>, ptr %i.i, align 4, !tbaa !223, !noalias !1105 ; 3 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bg = load <2 x float>, ptr %i.r, align 4, !tbaa !223, !noalias !1105 ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bd, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bi = insertelement <2 x float> poison, float %i.z, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.x, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = shufflevector <2 x float> %i.af, <2 x float> %i.av, <2 x i32> <i32 0, i32 2>
  %i.bo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bn, <2 x float> %i.bk)
  %i.bp = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = shufflevector <2 x float> %i.bd, <2 x float> %i.bg, <2 x i32> <i32 1, i32 3>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bo)
  %i.bt = fadd <2 x float> %i.bc, %i.bs
  %i.bu = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bv = shufflevector <4 x float> %i.ao, <4 x float> %i.bu, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bw = fmul <4 x float> %i.ak, %i.bv
  %i.bx = shufflevector <2 x float> %i.ay, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.by = shufflevector <4 x float> %i.aq, <4 x float> %i.bx, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.ar, <4 x float> %i.bw)
  %i.ca = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cb = shufflevector <4 x float> %i.at, <4 x float> %i.ca, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %i.bf, <4 x float> %i.bz)
  %i.cd = shufflevector <2 x float> %i.av, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ce = shufflevector <2 x float> %i.ah, <2 x float> %i.aw, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cf = insertelement <4 x float> %i.ce, float 1.000000e+00, i64 3 ; 2 uses
  %i.cg = fmul <4 x float> %i.cd, %i.cf
  %i.ch = shufflevector <2 x float> %i.ag, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ci = insertelement <4 x float> %i.ch, float 0.000000e+00, i64 3 ; 2 uses
  %i.cj = shufflevector <2 x float> %i.av, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ck = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.cj, <4 x float> %i.cg)
  %i.cl = shufflevector <2 x float> %i.ai, <2 x float> %i.ba, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cm = insertelement <4 x float> %i.cl, float 0.000000e+00, i64 3 ; 2 uses
  %i.cn = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cm, <4 x float> %i.co, <4 x float> %i.ck)
  store <4 x float> %i.cc, ptr %8, align 16, !alias.scope !1102
  store <4 x float> %i.cp, ptr %i.au, align 16, !alias.scope !1102
  %i.cq = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cr = load <2 x float>, ptr %i.s, align 4, !tbaa !223, !noalias !1105 ; 4 uses
  %i.cs = load float, ptr %i.t, align 4, !tbaa !223, !noalias !1105
  %i.ct = fmul float %i.cs, %i.z
  %i.cu = extractelement <2 x float> %i.cr, i64 0
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.x, float %i.cu, float %i.ct)
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.v, float %i.cv)
  %i.cx = fadd float %i.cw, %i.ae
  %.sroa.3.12.vec.insert.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cx, i64 0
  %i.cy = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cz = insertelement <4 x float> %i.cy, float 0.000000e+00, i64 3
  %i.da = insertelement <4 x float> %i.cz, float %i.ax, i64 2
  %i.db = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.cf, <4 x float> %i.db, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.dd = fmul <4 x float> %i.da, %i.dc
  %i.de = insertelement <4 x float> %i.ci, float %i.az, i64 2
  %i.df = shufflevector <2 x float> %i.cr, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.de, <4 x float> %i.df, <4 x float> %i.dd)
  %i.dh = insertelement <4 x float> %i.cm, float %i.bb, i64 2
  %i.di = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.v, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dj, <4 x float> %i.dg)
  store <4 x float> %i.dk, ptr %i.cq, align 16, !alias.scope !1102
  %i.dl = getelementptr inbounds nuw i8, ptr %8, i64 48
  store <2 x float> %i.bt, ptr %i.dl, align 16, !alias.scope !1102
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !230, !alias.scope !1102
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %i.g, i64 16, i1 false), !tbaa.struct !229
  %i.dm = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dn, ptr noundef nonnull align 4 dereferenceable(16) %i.dm, i64 16, i1 false), !tbaa.struct !229
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dp, ptr noundef nonnull align 4 dereferenceable(16) %i.do, i64 16, i1 false), !tbaa.struct !229
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %i.dr, i64 16, i1 false), !tbaa.struct !229
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1087, !nonnull !234, !align !1088 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %i.dt, i64 16, i1 false), !tbaa.struct !229
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dv, ptr noundef nonnull align 4 dereferenceable(16) %i.du, i64 16, i1 false), !tbaa.struct !229
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dx, ptr noundef nonnull align 4 dereferenceable(16) %i.dw, i64 16, i1 false), !tbaa.struct !229
  %i.dy = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %i.dz, i64 16, i1 false), !tbaa.struct !229
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store float 1.000000e+00, ptr %10, align 4, !tbaa !223
  %i.ea = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.eb = getelementptr inbounds nuw i8, ptr %10, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ea, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.eb, align 4, !tbaa !223
  %i.ec = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ec, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ed, align 4, !tbaa !223
  %i.ee = getelementptr inbounds nuw i8, ptr %10, i64 44
  store i32 0, ptr %i.ee, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !345 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %i.eh, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !345 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 32
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.en = load float, ptr %i.em, align 4, !tbaa !223
  %i.eo = getelementptr inbounds nuw i8, ptr %i.eg, i64 40
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !223 ; 2 uses
  %i.eq = fsub float %i.en, %i.ep
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eq, i64 0
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 5 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !345 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32
  %i.eu = load <2 x float>, ptr %i.eh, align 4, !tbaa !223 ; 2 uses
  %i.ev = load <2 x float>, ptr %i.el, align 4, !tbaa !223
  %i.ew = fsub <2 x float> %i.ev, %i.eu
  %i.ex = load <2 x float>, ptr %i.et, align 4, !tbaa !223
  %i.ey = fsub <2 x float> %i.ex, %i.eu
  %i.ez = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !223
  %i.fb = fsub float %i.fa, %i.ep
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fb, i64 0
  call void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %11, align 8, !tbaa !9
  %.ptr5.i = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.fc = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %i.fc, align 8, !tbaa !265
  %i.fd = getelementptr inbounds nuw i8, ptr %11, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i, i8 0, i64 16, i1 false)
  store <2 x float> %i.ew, ptr %i.fd, align 8
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.4146.0..sroa_idx, align 8, !tbaa !230
  %i.fe = getelementptr inbounds nuw i8, ptr %11, i64 112
  store <2 x float> %i.ey, ptr %i.fe, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i97, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !230
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %i.ff = invoke noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef nonnull %11, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef %i.b, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(56) %9)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.fg = getelementptr inbounds nuw i8, ptr %9, i64 52 ; 3 uses
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !1108
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 96
  %i.fk = load ptr, ptr %i.fj, align 8
  %i.fl = invoke noundef float %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.fm = fpext float %i.fh to double
  %i.fn = fpext float %i.fl to double
  %i.fo = call double @llvm.fmuladd.f64(double %i.fn, double -2.000000e+00, double %i.fm)
  %i.fp = fpext float %5 to double
  %i.fq = fsub double %i.fo, %i.fp
  %i.fr = fcmp ult double %i.fq, f0xB690000000000000 ; 2 uses
  br i1 %i.fr, label %bb.j, label %bb.ab

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.j:                                             ; preds = %bb.h
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 1832
  %i.fu = load i8, ptr %i.ft, align 8, !tbaa !277, !range !233, !noundef !234
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 84
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !223
  %i.fy = fcmp une float %i.fx, 0.000000e+00
  br i1 %i.fy, label %.preheader.preheader, label %bb.t

.preheader.preheader:                             ; preds = %bb.k
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !223 ; 3 uses
  store float %i.ga, ptr %4, align 4, !tbaa !223
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !223 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.gc, ptr %i.gd, align 4, !tbaa !223
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.gf = load float, ptr %i.ge, align 8, !tbaa !223 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.gf, ptr %i.gg, align 4, !tbaa !223
  %i.gh = load ptr, ptr %i.ef, align 8, !tbaa !345 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.ej, align 8, !tbaa !345 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %i.gl = load ptr, ptr %i.er, align 8, !tbaa !345 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.go = load float, ptr %i.gn, align 4, !tbaa !223
  %i.gp = fmul float %i.ga, %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !223
  %i.gs = fmul float %i.gc, %i.gr
  %i.gt = fadd float %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gl, i64 24
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !223
  %i.gw = fmul float %i.gf, %i.gv
  %i.gx = load <2 x float>, ptr %i.gi, align 4, !tbaa !223
  %i.gy = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gz = shufflevector <2 x float> %i.gy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fmul <2 x float> %i.gz, %i.gx
  %i.hb = load <2 x float>, ptr %i.gk, align 4, !tbaa !223
  %i.hc = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = fmul <2 x float> %i.hd, %i.hb
  %i.hf = fadd <2 x float> %i.ha, %i.he
  %i.hg = load <2 x float>, ptr %i.gm, align 4, !tbaa !223
  %i.hh = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x float> %i.hi, %i.hg
  %i.hk = fadd <2 x float> %i.hf, %i.hj
  %i.hl = fadd float %i.gt, %i.gw
  %.sroa.3.12.vec.insert.i23.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hl, i64 0
  store <2 x float> %i.hk, ptr %3, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i23.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !230
  %i.hm = invoke noundef float @_ZN15btGjkEpaSolver214SignedDistanceERK9btVector3fPK13btConvexShapeRK11btTransformRNS_8sResultsE(ptr noundef nonnull align 4 dereferenceable(16) %3, float noundef %5, ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(56) %9)
          to label %bb.l unwind label %bb.p       ; 0 uses

bb.l:                                             ; preds = %.preheader.preheader
  %i.hn = load ptr, ptr %i.c, align 8, !tbaa !1092
  store ptr %i.hn, ptr %6, align 8, !tbaa !1093
  %i.ho = load float, ptr %i.fg, align 4, !tbaa !1108
  %i.hp = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.hq = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hq, ptr noundef nonnull align 4 dereferenceable(16) %i.hp, i64 16, i1 false), !tbaa.struct !229
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.ho, ptr %i.hr, align 8, !tbaa !1094
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !1087, !nonnull !234, !align !1088 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %i.ht, i64 16, i1 false), !tbaa.struct !229
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hv, ptr noundef nonnull align 4 dereferenceable(16) %i.hu, i64 16, i1 false), !tbaa.struct !229
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hx = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hx, ptr noundef nonnull align 4 dereferenceable(16) %i.hw, i64 16, i1 false), !tbaa.struct !229
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.hz = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hz, ptr noundef nonnull align 4 dereferenceable(16) %i.hy, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #39
  %i.ia = load ptr, ptr %i.ej, align 8, !tbaa !345 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = load ptr, ptr %i.ef, align 8, !tbaa !345 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 16
  %i.ie = load <2 x float>, ptr %i.ib, align 4, !tbaa !223
  %i.if = load <2 x float>, ptr %i.id, align 4, !tbaa !223 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !223
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !223 ; 2 uses
  %i.ik = load ptr, ptr %i.er, align 8, !tbaa !345 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  %i.im = load <2 x float>, ptr %i.il, align 4, !tbaa !223
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.io = load float, ptr %i.in, align 4, !tbaa !223
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %13)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ip = fsub float %i.io, %i.ij
  %.sroa.3.12.vec.insert.i107 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ip, i64 0
  %i.iq = fsub <2 x float> %i.im, %i.if
  %i.ir = fsub float %i.ih, %i.ij
  %.sroa.3.12.vec.insert.i102 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ir, i64 0
  %i.is = fsub <2 x float> %i.ie, %i.if
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %13, align 8, !tbaa !9
  %.ptr5.i110 = getelementptr inbounds nuw i8, ptr %13, i64 80
  %i.it = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 1, ptr %i.it, align 8, !tbaa !265
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i110, i8 0, i64 16, i1 false)
  store <2 x float> %i.is, ptr %i.iu, align 8
  %.sroa.5133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i102, ptr %.sroa.5133.0..sroa_idx, align 8, !tbaa !230
  %i.iv = getelementptr inbounds nuw i8, ptr %13, i64 112
  store <2 x float> %i.iq, ptr %i.iv, align 8
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i107, ptr %.sroa.5131.0..sroa_idx, align 8, !tbaa !230
  %i.iw = load ptr, ptr %i.ef, align 8, !tbaa !345
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %i.ix, i64 16, i1 false), !tbaa.struct !229
  %i.iy = invoke noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(56) %9)
          to label %bb.n unwind label %bb.r       ; 0 uses

bb.n:                                             ; preds = %bb.m
  %i.iz = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 96
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = invoke noundef float %i.jb(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.o unwind label %bb.r       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %13) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %bb.ab

bb.p:                                             ; preds = %.preheader.preheader
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.q:                                             ; preds = %bb.l
  %i.je = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %bb.m
  %i.jf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %13) #39
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %.pn91 = phi { ptr, i32 } [ %i.jf, %bb.r ], [ %i.je, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #39
  br label %bb.ac

bb.t:                                             ; preds = %bb.k, %bb.j
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !1087, !nonnull !234, !align !1088 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %i.jh, i64 16, i1 false), !tbaa.struct !229
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.jj = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jj, ptr noundef nonnull align 4 dereferenceable(16) %i.ji, i64 16, i1 false), !tbaa.struct !229
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jl, ptr noundef nonnull align 4 dereferenceable(16) %i.jk, i64 16, i1 false), !tbaa.struct !229
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jh, i64 48
  %i.jn = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.jn, ptr noundef nonnull align 4 dereferenceable(16) %i.jm, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39
  %i.jo = load ptr, ptr %i.ej, align 8, !tbaa !345 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  %i.jq = load ptr, ptr %i.ef, align 8, !tbaa !345 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load <2 x float>, ptr %i.jp, align 4, !tbaa !223
  %i.jt = load <2 x float>, ptr %i.jr, align 4, !tbaa !223 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !223
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !223 ; 2 uses
  %i.jy = load ptr, ptr %i.er, align 8, !tbaa !345 ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load <2 x float>, ptr %i.jz, align 4, !tbaa !223
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 24
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !223
  invoke void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %14)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.kd = fsub float %i.kc, %i.jx
  %.sroa.3.12.vec.insert.i118 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kd, i64 0
  %i.ke = fsub <2 x float> %i.ka, %i.jt
  %i.kf = fsub float %i.jv, %i.jx
  %.sroa.3.12.vec.insert.i113 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kf, i64 0
  %i.kg = fsub <2 x float> %i.js, %i.jt
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTV15btTriangleShape, i64 16), ptr %14, align 8, !tbaa !9
  %.ptr5.i121 = getelementptr inbounds nuw i8, ptr %14, i64 80
  %i.kh = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 1, ptr %i.kh, align 8, !tbaa !265
  %i.ki = getelementptr inbounds nuw i8, ptr %14, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.ptr5.i121, i8 0, i64 16, i1 false)
  store <2 x float> %i.kg, ptr %i.ki, align 8
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i113, ptr %.sroa.5125.0..sroa_idx, align 8, !tbaa !230
  %i.kj = getelementptr inbounds nuw i8, ptr %14, i64 112
  store <2 x float> %i.ke, ptr %i.kj, align 8
  %.sroa.5.0..sroa_idx123 = getelementptr inbounds nuw i8, ptr %14, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i118, ptr %.sroa.5.0..sroa_idx123, align 8, !tbaa !230
  %i.kk = load ptr, ptr %i.ef, align 8, !tbaa !345
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ei, ptr noundef nonnull align 4 dereferenceable(16) %i.kl, i64 16, i1 false), !tbaa.struct !229
  %i.km = invoke noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef nonnull %14, ptr noundef nonnull align 4 dereferenceable(64) %10, ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(56) %9)
          to label %bb.v unwind label %bb.y       ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.kn = getelementptr inbounds nuw i8, ptr %9, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.kn, i64 16, i1 false), !tbaa.struct !229
  %i.ko = load ptr, ptr %i.ef, align 8, !tbaa !345 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kq = load ptr, ptr %i.ej, align 8, !tbaa !345 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.er, align 8, !tbaa !345 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load <2 x float>, ptr %i.kp, align 4, !tbaa !223 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kq, i64 24
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !223
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ko, i64 24
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !223 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.la = load float, ptr %i.kz, align 4, !tbaa !223
  %i.lb = load <2 x float>, ptr %i.kr, align 4, !tbaa !223 ; 2 uses
  %i.lc = load <2 x float>, ptr %i.kt, align 4, !tbaa !223 ; 2 uses
  %i.ld = shufflevector <2 x float> %i.lb, <2 x float> %i.lc, <2 x i32> <i32 0, i32 2>
  %i.le = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lf = fsub <2 x float> %i.ld, %i.le           ; 5 uses
  %i.lg = shufflevector <2 x float> %i.lb, <2 x float> %i.lc, <2 x i32> <i32 1, i32 3>
  %i.lh = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.li = fsub <2 x float> %i.lg, %i.lh           ; 5 uses
  %i.lj = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.lk = insertelement <2 x float> %i.lj, float %i.la, i64 1
  %i.ll = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ln = fsub <2 x float> %i.lk, %i.lm           ; 5 uses
  %shift = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.li, %shift
  %i.lo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.lp = extractelement <2 x float> %i.lf, i64 0
  %i.lq = extractelement <2 x float> %i.lf, i64 1
  %i.lr = call float @llvm.fmuladd.f32(float %i.lp, float %i.lq, float %i.lo)
  %i.ls = extractelement <2 x float> %i.ln, i64 0
  %i.lt = extractelement <2 x float> %i.ln, i64 1
  %i.lu = call noundef float @llvm.fmuladd.f32(float %i.ls, float %i.lt, float %i.lr) ; 3 uses
  %i.lv = fmul <2 x float> %i.li, %i.li
  %i.lw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lf, <2 x float> %i.lf, <2 x float> %i.lv)
  %i.lx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.ln, <2 x float> %i.lw) ; 3 uses
  %i.ly = fneg float %i.lu
  %i.lz = fmul float %i.lu, %i.ly
  %i.ma = extractelement <2 x float> %i.lx, i64 0
  %i.mb = extractelement <2 x float> %i.lx, i64 1
  %i.mc = call float @llvm.fmuladd.f32(float %i.ma, float %i.mb, float %i.lz) ; 2 uses
  %i.md = call noundef float @llvm.fabs.f32(float %i.mc)
  %i.me = fcmp olt float %i.md, f0x34000000
  br i1 %i.me, label %_ZL14getBarycentricRK9btVector3S1_S1_S1_RS_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.mf = shufflevector <2 x float> %i.lx, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !223
  %i.mi = fsub float %i.mh, %i.ky
  %i.mj = load <2 x float>, ptr %3, align 4, !tbaa !223
  %i.mk = fsub <2 x float> %i.mj, %i.ku           ; 2 uses
  %i.ml = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mm = fmul <2 x float> %i.li, %i.ml
  %i.mn = shufflevector <2 x float> %i.mk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mn, <2 x float> %i.lf, <2 x float> %i.mm)
  %i.mp = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mq = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.ln, <2 x float> %i.mo) ; 2 uses
  %i.ms = fneg <2 x float> %i.mr
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mu = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mw = fmul <2 x float> %i.mv, %i.mt
  %i.mx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mf, <2 x float> %i.mr, <2 x float> %i.mw)
  %i.my = insertelement <2 x float> poison, float %i.mc, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = fdiv <2 x float> %i.mx, %i.mz
  br label %_ZL14getBarycentricRK9btVector3S1_S1_S1_RS_.exit

_ZL14getBarycentricRK9btVector3S1_S1_S1_RS_.exit: ; preds = %bb.v, %bb.w
  %i.nb = phi <2 x float> [ %i.na, %bb.w ], [ zeroinitializer, %bb.v ] ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.nb, ptr %i.nc, align 4, !tbaa !223
  %i.ne = extractelement <2 x float> %i.nb, i64 0
  %i.nf = fsub float 1.000000e+00, %i.ne
  %i.ng = extractelement <2 x float> %i.nb, i64 1
  %i.nh = fsub float %i.nf, %i.ng                 ; 2 uses
  store float %i.nh, ptr %4, align 4, !tbaa !223
  %i.ni = getelementptr inbounds nuw i8, ptr %2, i64 72
  store float %i.nh, ptr %i.ni, align 8, !tbaa !223
  %i.nj = load float, ptr %i.nc, align 4, !tbaa !223
  %i.nk = getelementptr inbounds nuw i8, ptr %2, i64 76
  store float %i.nj, ptr %i.nk, align 4, !tbaa !223
  %i.nl = load float, ptr %i.nd, align 4, !tbaa !223
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 80
  store float %i.nl, ptr %i.nm, align 8, !tbaa !223
  %i.nn = load float, ptr %i.fg, align 4, !tbaa !1108
  %i.no = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 96
  %i.nq = load ptr, ptr %i.np, align 8
  %i.nr = invoke noundef float %i.nq(ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.y:                                             ; preds = %_ZL14getBarycentricRK9btVector3S1_S1_S1_RS_.exit, %bb.u
  %i.nt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %14) #39
  br label %bb.aa

bb.z:                                             ; preds = %_ZL14getBarycentricRK9btVector3S1_S1_S1_RS_.exit
  %i.nu = fsub float %i.nn, %i.nr
  %i.nv = fsub float %i.nu, %5
  %i.nw = load ptr, ptr %i.c, align 8, !tbaa !1092
  store ptr %i.nw, ptr %6, align 8, !tbaa !1093
  %i.nx = getelementptr inbounds nuw i8, ptr %9, i64 36
  %i.ny = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ny, ptr noundef nonnull align 4 dereferenceable(16) %i.nx, i64 16, i1 false), !tbaa.struct !229
  %i.nz = getelementptr inbounds nuw i8, ptr %6, i64 40
  store float %i.nv, ptr %i.nz, align 8, !tbaa !1094
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %14) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.y
  %.pn87 = phi { ptr, i32 } [ %i.nt, %bb.y ], [ %i.ns, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39
  br label %bb.ac

bb.ab:                                            ; preds = %bb.h, %bb.z, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  ret i1 %i.fr

bb.ac:                                            ; preds = %bb.p, %bb.s, %bb.aa, %bb.i
  %.pn91.pn.pn = phi { ptr, i32 } [ %i.fs, %bb.i ], [ %i.jd, %bb.p ], [ %.pn87, %bb.aa ], [ %.pn91, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39
  call void @_ZN23btPolyhedralConvexShapeD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  resume { ptr, i32 } %.pn91.pn.pn
}

declare noundef zeroext i1 @_ZN15btGjkEpaSolver214SignedDistanceEPK13btConvexShapeRK11btTransformS2_S5_RK9btVector3RNS_8sResultsE(ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

end_hunk_3
begin_hunk_4_@_ZN10btSoftBody18setSpringStiffnessEf:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1824
  store float %1, ptr %i.k, align 8, !tbaa !1122
  ret void

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.l = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !251
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store float %1, ptr %i.o, align 8, !tbaa !648
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !251
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store float %1, ptr %i.s, align 8, !tbaa !648
  %i.t = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !251
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store float %1, ptr %i.w, align 8, !tbaa !648
  %i.x = getelementptr inbounds nuw [72 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !251
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store float %1, ptr %i.aa, align 8, !tbaa !648
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1123
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN10btSoftBody16setGravityFactorEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2064) initializes((1828, 1832)) %0, float noundef %1) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1828
  store float %1, ptr %i.a, align 4, !tbaa !1124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN10btSoftBody18setCacheBarycenterEb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2064) initializes((1832, 1833)) %0, i1 noundef zeroext %1) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store i8 %i.a, ptr %i.b, align 8, !tbaa !277
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody17updateDeformationEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %class.btQuaternion, align 16       ; 8 uses
  %2 = alloca %class.btMatrix3x3, align 16        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #39
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !161
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #39
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.l = getelementptr inbounds nuw [288 x i8], ptr %i.k, i64 %indvars.iv ; 29 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !345  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !345  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load float, ptr %i.p, align 4, !tbaa !223
  %i.t = load float, ptr %i.r, align 4, !tbaa !223 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.v = load float, ptr %i.u, align 4, !tbaa !223
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 36
  %i.x = load float, ptr %i.w, align 4, !tbaa !223 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.z = load float, ptr %i.y, align 4, !tbaa !223
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !223 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !345 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load float, ptr %i.ae, align 4, !tbaa !223
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !223
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !223
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !345 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load float, ptr %i.am, align 4, !tbaa !223
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !223
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !223
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 140
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 156
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 184 ; 5 uses
  %.sroa.4157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 188 ; 3 uses
  %.sroa.5158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 192 ; 2 uses
  %.scalar = fsub float %i.s, %i.t
  %i.bc = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar188 = fsub float %i.af, %i.t
  %i.be = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar188, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar189 = fsub float %i.an, %i.t
  %i.bg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar189, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bi = load <2 x float>, ptr %i.as, align 8, !tbaa !223, !noalias !1125 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.at, align 8, !tbaa !223, !noalias !1125 ; 2 uses
  %i.bk = load <2 x float>, ptr %i.au, align 8, !tbaa !223, !noalias !1125 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bm = insertelement <4 x float> %i.bl, float 0.000000e+00, i64 3
  %i.bn = shufflevector <2 x float> %i.bi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bo = insertelement <4 x float> %i.bn, float 0.000000e+00, i64 3
  %i.bp = shufflevector <2 x float> %i.bk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bq = insertelement <4 x float> %i.bp, float 0.000000e+00, i64 3
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 5 uses
  %.sroa.9161.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 204 ; 3 uses
  %.sroa.10162.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 208 ; 2 uses
  %.scalar190 = fsub float %i.v, %i.x
  %i.bs = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar190, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar191 = fsub float %i.ah, %i.x
  %i.bu = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar191, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar192 = fsub float %i.ap, %i.x
  %i.bw = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar192, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.by = load <2 x float>, ptr %i.aw, align 4, !tbaa !223, !noalias !1125 ; 2 uses
  %i.bz = load float, ptr %i.az, align 8, !tbaa !223, !noalias !1125
  %i.ca = load <2 x float>, ptr %i.av, align 4, !tbaa !223, !noalias !1125 ; 2 uses
  %i.cb = load float, ptr %i.ay, align 8, !tbaa !223, !noalias !1125
  %i.cc = load <2 x float>, ptr %i.ax, align 4, !tbaa !223, !noalias !1125 ; 2 uses
  %i.cd = load float, ptr %i.ba, align 8, !tbaa !223, !noalias !1125
  %i.ce = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cf = shufflevector <4 x float> %i.bm, <4 x float> %i.ce, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cg = fmul <4 x float> %i.cf, %i.bf
  %i.ch = shufflevector <2 x float> %i.ca, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.bo, <4 x float> %i.ch, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ci, <4 x float> %i.bd, <4 x float> %i.cg)
  %i.ck = shufflevector <2 x float> %i.cc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> %i.bq, <4 x float> %i.ck, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cl, <4 x float> %i.bh, <4 x float> %i.cj)
  %i.cn = shufflevector <2 x float> %i.bj, <2 x float> %i.by, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float 1.000000e+00, i64 3 ; 2 uses
  %i.cp = fmul <4 x float> %i.bv, %i.co
  %i.cq = shufflevector <2 x float> %i.bi, <2 x float> %i.ca, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cr = insertelement <4 x float> %i.cq, float 0.000000e+00, i64 3 ; 2 uses
  %i.cs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cr, <4 x float> %i.bt, <4 x float> %i.cp)
  %i.ct = shufflevector <2 x float> %i.bk, <2 x float> %i.cc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.cu = insertelement <4 x float> %i.ct, float 0.000000e+00, i64 3 ; 2 uses
  %i.cv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.bx, <4 x float> %i.cs)
  store <4 x float> %i.cm, ptr %i.bb, align 8
  store <4 x float> %i.cv, ptr %i.br, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 216 ; 5 uses
  %.sroa.14165.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 220 ; 3 uses
  %.sroa.15166.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 224 ; 3 uses
  %.scalar193 = fsub float %i.z, %i.ab
  %i.cx = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar193, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar194 = fsub float %i.aj, %i.ab
  %i.cz = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar194, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar195 = fsub float %i.ar, %i.ab
  %i.db = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar195, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = insertelement <4 x float> %i.co, float %i.bz, i64 2
  %i.de = fmul <4 x float> %i.da, %i.dd
  %i.df = insertelement <4 x float> %i.cr, float %i.cb, i64 2
  %i.dg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.df, <4 x float> %i.cy, <4 x float> %i.de)
  %i.dh = insertelement <4 x float> %i.cu, float %i.cd, i64 2
  %i.di = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.dc, <4 x float> %i.dg)
  store <4 x float> %i.di, ptr %i.cw, align 8
  %i.dj = load ptr, ptr %i.e, align 8, !tbaa !164
  %i.dk = getelementptr inbounds nuw [152 x i8], ptr %i.dj, i64 %indvars.iv ; 20 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.dk, ptr noundef nonnull align 8 dereferenceable(48) %i.bb, i64 16, i1 false), !tbaa.struct !229
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dl, ptr noundef nonnull align 8 dereferenceable(16) %i.br, i64 16, i1 false), !tbaa.struct !229
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dm, ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i64 16, i1 false), !tbaa.struct !229
  %i.dn = load float, ptr %i.bb, align 8, !tbaa !223
  %i.do = load float, ptr %.sroa.9161.16..sroa_idx, align 4, !tbaa !223 ; 2 uses
  %i.dp = load float, ptr %.sroa.15166.32..sroa_idx, align 8, !tbaa !223 ; 2 uses
  %i.dq = load float, ptr %.sroa.10162.16..sroa_idx, align 8, !tbaa !223 ; 2 uses
  %i.dr = load float, ptr %.sroa.14165.32..sroa_idx, align 4, !tbaa !223 ; 2 uses
  %i.ds = fneg float %i.dr
  %i.dt = fmul float %i.dq, %i.ds
  %i.du = call float @llvm.fmuladd.f32(float %i.do, float %i.dp, float %i.dt)
  %i.dv = load float, ptr %.sroa.4157.0..sroa_idx, align 4, !tbaa !223
  %i.dw = load float, ptr %i.cw, align 8, !tbaa !223 ; 2 uses
  %i.dx = load float, ptr %i.br, align 8, !tbaa !223 ; 2 uses
  %i.dy = fneg float %i.dp
  %i.dz = fmul float %i.dx, %i.dy
  %i.ea = call float @llvm.fmuladd.f32(float %i.dq, float %i.dw, float %i.dz)
  %i.eb = fmul float %i.dv, %i.ea
  %i.ec = call float @llvm.fmuladd.f32(float %i.dn, float %i.du, float %i.eb)
  %i.ed = load float, ptr %.sroa.5158.0..sroa_idx, align 8, !tbaa !223
  %i.ee = fneg float %i.dw
  %i.ef = fmul float %i.do, %i.ee
  %i.eg = call float @llvm.fmuladd.f32(float %i.dx, float %i.dr, float %i.ef)
  %i.eh = call noundef float @llvm.fmuladd.f32(float %i.ed, float %i.eg, float %i.ec)
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dk, i64 52
  store float %i.eh, ptr %i.ei, align 4, !tbaa !1128
  %i.ej = load float, ptr %i.bb, align 8, !tbaa !223, !noalias !1130 ; 2 uses
  %i.ek = load float, ptr %i.br, align 8, !tbaa !223, !noalias !1130 ; 2 uses
  %i.el = load float, ptr %i.cw, align 8, !tbaa !223, !noalias !1130 ; 2 uses
  %i.em = load float, ptr %.sroa.4157.0..sroa_idx, align 4, !tbaa !223, !noalias !1130 ; 2 uses
  %i.en = load float, ptr %.sroa.9161.16..sroa_idx, align 4, !tbaa !223, !noalias !1130 ; 2 uses
  %i.eo = load float, ptr %.sroa.14165.32..sroa_idx, align 4, !tbaa !223, !noalias !1130 ; 2 uses
  %i.ep = load float, ptr %.sroa.5158.0..sroa_idx, align 8, !tbaa !223, !noalias !1130 ; 2 uses
  %i.eq = load float, ptr %.sroa.10162.16..sroa_idx, align 8, !tbaa !223, !noalias !1130 ; 2 uses
  %i.er = load float, ptr %.sroa.15166.32..sroa_idx, align 8, !tbaa !223, !noalias !1130 ; 2 uses
  %i.es = fmul float %i.ek, %i.ek
  %i.et = call float @llvm.fmuladd.f32(float %i.ej, float %i.ej, float %i.es)
  %i.eu = call noundef float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.et)
  %i.ev = fmul float %i.en, %i.en
  %i.ew = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.ev)
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.eo, float %i.eo, float %i.ew)
  %i.ey = fmul float %i.eq, %i.eq
  %i.ez = call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.ey)
  %i.fa = call noundef float @llvm.fmuladd.f32(float %i.er, float %i.er, float %i.ez)
  %i.fb = fadd float %i.eu, %i.ex
  %i.fc = fadd float %i.fb, %i.fa
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dk, i64 48
  store float %i.fc, ptr %i.fd, align 4, !tbaa !1133
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dk, i64 56
  %i.ff = load <2 x float>, ptr %i.cw, align 8, !tbaa !223, !noalias !1134 ; 3 uses
  %i.fg = load <2 x float>, ptr %i.br, align 8, !tbaa !223, !noalias !1134 ; 3 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  %i.fi = shufflevector <2 x float> %i.fg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float 0.000000e+00, i64 3
  %i.fk = shufflevector <2 x float> %i.ff, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fl = insertelement <4 x float> %i.fk, float -0.000000e+00, i64 3
  %i.fm = fneg float %i.fh
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dk, i64 72
  %i.fo = load <2 x float>, ptr %.sroa.14165.32..sroa_idx, align 4, !tbaa !223, !noalias !1134 ; 3 uses
  %i.fp = load float, ptr %.sroa.15166.32..sroa_idx, align 8, !tbaa !223, !noalias !1134
  %i.fq = fneg float %i.fp                        ; 2 uses
  %i.fr = load <2 x float>, ptr %i.bb, align 8, !tbaa !223, !noalias !1134 ; 3 uses
  %i.fs = shufflevector <2 x float> %i.ff, <2 x float> %i.fo, <2 x i32> <i32 0, i32 2>
  %i.ft = fneg <2 x float> %i.fs
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.fv = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.fu, <4 x i32> <i32 5, i32 poison, i32 4, i32 3>
  %i.fw = insertelement <4 x float> %i.fv, float %i.fq, i64 1
  %i.fx = shufflevector <2 x float> %i.fo, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> %i.fl, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.fz = shufflevector <2 x float> %i.fr, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float 0.000000e+00, i64 3
  %i.gb = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fq, i64 0
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> %i.fu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gd = shufflevector <2 x float> %i.ff, <2 x float> %i.fo, <4 x i32> <i32 2, i32 3, i32 0, i32 poison>
  %i.ge = insertelement <4 x float> %i.gd, float -0.000000e+00, i64 3
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dk, i64 88
  %i.gg = load <2 x float>, ptr %.sroa.9161.16..sroa_idx, align 4, !tbaa !223, !noalias !1134 ; 3 uses
  %i.gh = fneg <2 x float> %i.gg
  %i.gi = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> %i.fj, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.gl = load <2 x float>, ptr %.sroa.4157.0..sroa_idx, align 4, !tbaa !223, !noalias !1134 ; 2 uses
  %i.gm = fmul <4 x float> %i.gj, %i.fw
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> %i.fy, <4 x float> %i.gm)
  %i.go = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gp = shufflevector <4 x float> %i.ga, <4 x float> %i.go, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.gq = fmul <4 x float> %i.gp, %i.gc
  %i.gr = shufflevector <4 x float> %i.gp, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7>
  %i.gs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %i.ge, <4 x float> %i.gq)
  %i.gt = shufflevector <2 x float> %i.fr, <2 x float> %i.gl, <4 x i32> <i32 3, i32 0, i32 2, i32 poison>
  %i.gu = insertelement <4 x float> %i.gt, float 0.000000e+00, i64 3
  %i.gv = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.fm, i64 2
  %i.gw = shufflevector <2 x float> %i.gh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> %i.gv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gy = fmul <4 x float> %i.gu, %i.gx
  %i.gz = shufflevector <2 x float> %i.gg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ha = shufflevector <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x float> %i.gz, <4 x i32> <i32 poison, i32 poison, i32 4, i32 3>
  %i.hb = shufflevector <4 x float> %i.go, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.hc = shufflevector <2 x float> %i.fg, <2 x float> %i.fr, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.hd = insertelement <4 x float> %i.hc, float -0.000000e+00, i64 3
  %i.he = shufflevector <4 x float> %i.hd, <4 x float> %i.gz, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.hf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hb, <4 x float> %i.he, <4 x float> %i.gy)
  store <4 x float> %i.gn, ptr %i.fe, align 4
  store <4 x float> %i.gs, ptr %i.fn, align 4
  store <4 x float> %i.hf, ptr %i.gf, align 4
  %i.hg = load ptr, ptr %i.m, align 8, !tbaa !345 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %.sroa.0108.0.copyload = load float, ptr %i.hh, align 8
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 36
  %.sroa.4109.0.copyload = load float, ptr %.sroa.4109.0..sroa_idx, align 4
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hg, i64 40
  %.sroa.5110.0.copyload = load float, ptr %.sroa.5110.0..sroa_idx, align 8
  %i.hi = load ptr, ptr %i.n, align 8, !tbaa !345 ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %.sroa.0104.0.copyload = load float, ptr %i.hj, align 8
  %.sroa.4105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 36
  %.sroa.4105.0.copyload = load float, ptr %.sroa.4105.0..sroa_idx, align 4
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  %.sroa.5106.0.copyload = load float, ptr %.sroa.5106.0..sroa_idx, align 8
  %i.hk = load ptr, ptr %i.ac, align 8, !tbaa !345 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %.sroa.0100.0.copyload = load float, ptr %i.hl, align 8
  %.sroa.4101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 36
  %.sroa.4101.0.copyload = load float, ptr %.sroa.4101.0..sroa_idx, align 4
  %.sroa.5102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hk, i64 40
  %.sroa.5102.0.copyload = load float, ptr %.sroa.5102.0..sroa_idx, align 8
  %i.hm = load ptr, ptr %i.ak, align 8, !tbaa !345 ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %.sroa.096.0.copyload = load float, ptr %i.hn, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 36
  %.sroa.497.0.copyload = load float, ptr %.sroa.497.0..sroa_idx, align 4
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %.sroa.598.0.copyload = load float, ptr %.sroa.598.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.ho = getelementptr inbounds nuw i8, ptr %i.l, i64 236
  %i.hp = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.hq = getelementptr inbounds nuw i8, ptr %i.l, i64 244
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.hs = getelementptr inbounds nuw i8, ptr %i.l, i64 260
  %i.ht = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  %i.hu = getelementptr inbounds nuw i8, ptr %i.l, i64 276
  %i.hv = load <12 x float>, ptr %i.ho, align 4, !tbaa !223 ; 4 uses
  %i.hw = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0104.0.copyload, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.hy = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 poison>
  %i.hz = insertelement <4 x float> %i.hy, float 1.000000e+00, i64 3
  %i.ia = fmul <4 x float> %i.hx, %i.hz
  %i.ib = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0108.0.copyload, i64 0
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.id = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 poison>
  %i.ie = insertelement <4 x float> %i.id, float -0.000000e+00, i64 3 ; 3 uses
  %i.if = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ic, <4 x float> %i.ie, <4 x float> %i.ia)
  %i.ig = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.0100.0.copyload, i64 0
  %i.ih = shufflevector <4 x float> %i.ig, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ii = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 poison>
  %i.ij = insertelement <4 x float> %i.ii, float -0.000000e+00, i64 3
  %i.ik = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> %i.ij, <4 x float> %i.if)
  %i.il = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.096.0.copyload, i64 0
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.in = shufflevector <12 x float> %i.hv, <12 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 poison>
  %i.io = insertelement <4 x float> %i.in, float -0.000000e+00, i64 3
  %i.ip = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.io, <4 x float> %i.ik)
  %i.iq = load <2 x float>, ptr %i.ht, align 8, !tbaa !223 ; 2 uses
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.is = load <2 x float>, ptr %i.hr, align 8, !tbaa !223 ; 2 uses
  %i.it = load <2 x float>, ptr %i.hp, align 8, !tbaa !223 ; 2 uses
  %i.iu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4105.0.copyload, i64 0
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.iw = shufflevector <2 x float> %i.it, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ix = insertelement <4 x float> %i.iw, float 1.000000e+00, i64 3
  %i.iy = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.iz = shufflevector <4 x float> %i.ix, <4 x float> %i.iy, <4 x i32> <i32 0, i32 4, i32 poison, i32 3>
  %i.ja = shufflevector <2 x float> %i.iq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jb = shufflevector <4 x float> %i.iz, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.jc = fmul <4 x float> %i.iv, %i.jb
  %i.jd = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4109.0.copyload, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.je, <4 x float> %i.ie, <4 x float> %i.jc)
  %i.jg = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.4101.0.copyload, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ji = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.iw, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> %i.iy, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.jk = shufflevector <4 x float> %i.jj, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.jl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jh, <4 x float> %i.jk, <4 x float> %i.jf)
  %i.jm = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.497.0.copyload, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.jo = load <2 x float>, ptr %i.hu, align 4, !tbaa !223
  %i.jp = load <2 x float>, ptr %i.hs, align 4, !tbaa !223
  %i.jq = load <2 x float>, ptr %i.hq, align 4, !tbaa !223
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.js = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.jr, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.jt = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ju = shufflevector <4 x float> %i.js, <4 x float> %i.jt, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.jv = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.jw = shufflevector <4 x float> %i.ju, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 5, i32 3> ; 2 uses
  %i.jx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jn, <4 x float> %i.jw, <4 x float> %i.jl)
  %i.jy = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5106.0.copyload, i64 0
  %i.jz = shufflevector <4 x float> %i.jy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ka = shufflevector <2 x float> %i.it, <2 x float> %i.is, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.kb = insertelement <4 x float> %i.ka, float 1.000000e+00, i64 3
  %i.kc = shufflevector <4 x float> %i.kb, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.kd = fmul <4 x float> %i.jz, %i.kc
  %i.ke = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, float %.sroa.5110.0.copyload, i64 0
end_hunk_4
begin_hunk_5_@_ZN10btSoftBody6CJoint5SolveEff:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 372
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bz = load float, ptr %i.ax, align 8, !tbaa !223 ; 2 uses
  %i.ca = load float, ptr %i.bw, align 8, !tbaa !223 ; 2 uses
  %i.cb = load <2 x float>, ptr %i.bx, align 4, !tbaa !223 ; 3 uses
  %i.cc = load <2 x float>, ptr %i.by, align 4, !tbaa !223 ; 3 uses
  %i.cd = fneg <2 x float> %i.cc
  %i.ce = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cf = insertelement <2 x float> %i.ce, float %i.ca, i64 1
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = shufflevector <2 x float> %i.cc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ci = insertelement <2 x float> %i.ch, float %i.bz, i64 1
  %i.cj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.ci, <2 x float> %i.cg)
  %i.ck = fneg float %i.bz
  %i.cl = extractelement <2 x float> %i.cb, i64 0
  %i.cm = fmul float %i.cl, %i.ck
  %i.cn = extractelement <2 x float> %i.cc, i64 0
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.cn, float %i.cm)
  %.sroa.3.12.vec.insert.i.i7.i.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  br label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30: ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.5.0.i17.i8 = phi <2 x float> [ %.sroa.5.0.copyload.i.i4, %bb.f ], [ %.sroa.5.0.copyload8.i.i25, %bb.g ], [ zeroinitializer, %bb.e ]
  %.sroa.0.0.i15.i9 = phi <2 x float> [ %.sroa.0.0.copyload.i.i2, %bb.f ], [ %.sroa.0.0.copyload6.i.i26, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.0.0.i3.i10 = phi <2 x float> [ %i.bp, %bb.f ], [ %i.cj, %bb.g ], [ zeroinitializer, %bb.e ] ; 2 uses
  %.sroa.5.0.i4.i11 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i.i.i7, %bb.f ], [ %.sroa.3.12.vec.insert.i.i7.i.i29, %bb.g ], [ zeroinitializer, %bb.e ]
  %foldExtExtBinop137 = fadd <2 x float> %.sroa.0.0.i15.i9, %.sroa.0.0.i3.i10
  %foldExtExtBinop139 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop137
  %i.cp = extractelement <2 x float> %foldExtExtBinop139, i64 0 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !223 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ct = shufflevector <2 x float> %.sroa.0.0.i15.i9, <2 x float> %.sroa.5.0.i17.i8, <2 x i32> <i32 1, i32 2>
  %i.cu = shufflevector <2 x float> %.sroa.0.0.i3.i10, <2 x float> %.sroa.5.0.i4.i11, <2 x i32> <i32 1, i32 2>
  %i.cv = fadd <2 x float> %i.ct, %i.cu
  %i.cw = fsub <2 x float> %i.av, %i.cv           ; 3 uses
  %i.cx = load <2 x float>, ptr %i.cs, align 4, !tbaa !223 ; 3 uses
  %foldExtExtBinop141 = fmul <2 x float> %i.cw, %i.cx
  %i.cy = extractelement <2 x float> %foldExtExtBinop141, i64 0
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cr, float %i.cy)
  %i.da = extractelement <2 x float> %i.cx, i64 1
  %i.db = extractelement <2 x float> %i.cw, i64 1
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %i.db, float %i.da, float %i.cz) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #39
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 8
  %i.df = and i8 %i.de, -4
  %i.dg = or disjoint i8 %i.df, 1
  store i8 %i.dg, ptr %i.dd, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.dh, i64 16, i1 false), !tbaa.struct !229
  %i.dj = fcmp olt float %i.dc, 0.000000e+00
  %.pre = load float, ptr %3, align 8, !tbaa !223 ; 2 uses
  br i1 %i.dj, label %bb.h, label %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge

_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge: ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dk = load <2 x float>, ptr %.phi.trans.insert, align 4, !tbaa !223
  br label %bb.i

bb.h:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30
  %i.dl = fmul float %i.cr, %i.dc                 ; 2 uses
  %i.dm = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul <2 x float> %i.cx, %i.dn           ; 2 uses
  %i.dp = fsub float %i.cp, %i.dl
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !223 ; 2 uses
  %i.ds = fmul float %i.dp, %i.dr
  %i.dt = fadd float %i.dl, %i.ds
  %i.du = fadd float %.pre, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dw = fsub <2 x float> %i.cw, %i.do
  %i.dx = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dz = fmul <2 x float> %i.dw, %i.dy
  %i.ea = fadd <2 x float> %i.do, %i.dz
  %i.eb = load <2 x float>, ptr %i.dv, align 4, !tbaa !223
  %i.ec = fadd <2 x float> %i.ea, %i.eb
  br label %bb.i

bb.i:                                             ; preds = %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge, %bb.h
  %i.ed = phi float [ %i.du, %bb.h ], [ %.pre, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge ] ; 2 uses
  %i.ee = phi <2 x float> [ %i.ec, %bb.h ], [ %i.dk, %_ZNK10btSoftBody4Body8velocityERK9btVector3.exit30._crit_edge ] ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !223
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.el = load float, ptr %i.ek, align 4, !tbaa !223
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.en = load float, ptr %i.em, align 4, !tbaa !223
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ep = load float, ptr %i.eo, align 8, !tbaa !223
  %i.eq = extractelement <2 x float> %i.ee, i64 0
  %i.er = fmul float %i.eq, %i.ep
  %i.es = tail call float @llvm.fmuladd.f32(float %i.en, float %i.ed, float %i.er)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.eu = load float, ptr %i.et, align 4, !tbaa !223
  %i.ev = extractelement <2 x float> %i.ee, i64 1
  %i.ew = tail call noundef float @llvm.fmuladd.f32(float %i.eu, float %i.ev, float %i.es)
  %i.ex = load <2 x float>, ptr %i.ef, align 4, !tbaa !223 ; 2 uses
  %i.ey = load <2 x float>, ptr %i.ej, align 4, !tbaa !223 ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 1, i32 3>
  %i.fa = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.ez, %i.fa
  %i.fc = shufflevector <2 x float> %i.ex, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.fd = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fe, <2 x float> %i.fb)
  %i.fg = insertelement <2 x float> poison, float %i.eh, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.el, i64 1
  %i.fi = shufflevector <2 x float> %i.ee, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fh, <2 x float> %i.fi, <2 x float> %i.ff)
  %i.fk = insertelement <2 x float> poison, float %2, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.fj           ; 4 uses
  %i.fn = fmul float %2, %i.ew                    ; 5 uses
  %.sroa.3.12.vec.insert.i58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fn, i64 0
  store <2 x float> %i.fm, ptr %3, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i58, ptr %i.ei, align 8, !tbaa !230
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !547 ; 3 uses
  %i.fp = load ptr, ptr %i.aw, align 8, !tbaa !547
  %i.fq = icmp eq ptr %i.fo, %i.fp
  br i1 %i.fq, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.fr = extractelement <2 x float> %i.fm, i64 0 ; 3 uses
  %i.fs = extractelement <2 x float> %i.fm, i64 1 ; 3 uses
  %or.cond = fcmp ord float %i.fr, %i.fs
  %i.ft = fcmp ord float %i.fn, 0.000000e+00
  %or.cond135 = and i1 %or.cond, %i.ft
  br i1 %or.cond135, label %bb.k, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

bb.k:                                             ; preds = %bb.j
  %i.fu = fmul float %i.fs, %i.fs
  %i.fv = tail call float @llvm.fmuladd.f32(float %i.fr, float %i.fr, float %i.fu)
  %i.fw = tail call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fv)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.fw)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fo, i64 408
  %i.fy = load float, ptr %i.fx, align 8, !tbaa !1176
  %i.fz = fcmp olt float %sqrt.i, %i.fy
  br i1 %i.fz, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #39
  %i.ga = load i32, ptr %i.dd, align 8            ; 2 uses
  %i.gb = fneg <2 x float> %i.fm
  %i.gc = fneg float %i.fn                        ; 2 uses
  %.sroa.3.12.vec.insert.i.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gc, i64 0
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fo, i64 412
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !1177 ; 4 uses
  %.sroa.7.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i63, ptr %.sroa.7.0..sroa_idx86, align 8, !tbaa !230
  %.sroa.9.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.sroa.12.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store <2 x float> <float -0.000000e+00, float 0.000000e+00>, ptr %.sroa.12.0..sroa_idx90, align 8, !tbaa !230
  %.sroa.14.0..sroa_idx92 = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 %i.ga, ptr %.sroa.14.0..sroa_idx92, align 8
  %i.gf = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fmul <2 x float> %i.gg, %i.gb
  store <2 x float> %i.gh, ptr %4, align 8, !tbaa !223, !alias.scope !1178
  %i.gi = fmul float %i.ge, %i.gc
  store float %i.gi, ptr %.sroa.7.0..sroa_idx86, align 8, !tbaa !223, !alias.scope !1178
  %i.gj = fmul float %i.ge, -0.000000e+00         ; 2 uses
  store float %i.gj, ptr %.sroa.9.0..sroa_idx88, align 8, !tbaa !223, !alias.scope !1178
  %i.gk = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.gl = fmul float %i.ge, -0.000000e+00
  store float %i.gl, ptr %i.gk, align 4, !tbaa !223, !alias.scope !1178
  store float %i.gj, ptr %.sroa.12.0..sroa_idx90, align 8, !tbaa !223, !alias.scope !1178
  %i.gm = trunc i32 %i.ga to i8                   ; 2 uses
  %i.gn = and i8 %i.gm, 1
  %.not.i = icmp eq i8 %i.gn, 0
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i = load i8, ptr %.sroa.14.0..sroa_idx92, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.go = phi i8 [ %.pre.i, %bb.m ], [ %i.gm, %bb.l ]
  %.mask.i = and i8 %i.go, 2
  %.not7.i = icmp eq i8 %.mask.i, 0
  br i1 %.not7.i, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.9.0..sroa_idx88, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  %i.gp = load ptr, ptr %i.a, align 8, !tbaa !547
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 412
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !1177 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !1160
  %i.gs = load <2 x float>, ptr %5, align 8, !tbaa !223, !alias.scope !1181
  %i.gt = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gv = fmul <2 x float> %i.gu, %i.gs
  store <2 x float> %i.gv, ptr %5, align 8, !tbaa !223, !alias.scope !1181
  %i.gw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 8, !tbaa !223, !alias.scope !1181
  %i.gy = fmul float %i.gr, %i.gx
  store float %i.gy, ptr %i.gw, align 8, !tbaa !223, !alias.scope !1181
  %i.gz = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ha = load <2 x float>, ptr %i.gz, align 8, !tbaa !223, !alias.scope !1181
  %i.hb = fmul <2 x float> %i.gu, %i.ha
  store <2 x float> %i.hb, ptr %i.gz, align 8, !tbaa !223, !alias.scope !1181
  %i.hc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 8, !tbaa !223, !alias.scope !1181
  %i.he = fmul float %i.gr, %i.hd
  store float %i.he, ptr %i.hc, align 8, !tbaa !223, !alias.scope !1181
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 8             ; 2 uses
  %i.hh = and i8 %i.hg, 1
  %.not.i64 = icmp eq i8 %i.hh, 0
  br i1 %.not.i64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %5, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i65 = load i8, ptr %i.hf, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit
  %i.hi = phi i8 [ %.pre.i65, %bb.p ], [ %i.hg, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit ]
  %.mask.i66 = and i8 %i.hi, 2
  %.not7.i67 = icmp eq i8 %.mask.i66, 0
  br i1 %.not7.i67, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

bb.s:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %3, i64 36, i1 false), !tbaa.struct !1160
  %i.hj = load <2 x float>, ptr %6, align 8, !tbaa !223, !alias.scope !1184
  %i.hk = fneg <2 x float> %i.hj
  %i.hl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.hm = load float, ptr %i.hl, align 8, !tbaa !223, !alias.scope !1184
  %i.hn = fneg float %i.hm
  %.sroa.3.12.vec.insert.i.i71 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hn, i64 0
  store <2 x float> %i.hk, ptr %6, align 8, !alias.scope !1184
  store <2 x float> %.sroa.3.12.vec.insert.i.i71, ptr %i.hl, align 8, !tbaa !230, !alias.scope !1184
  %i.ho = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.hp = load <2 x float>, ptr %i.ho, align 8, !tbaa !223, !alias.scope !1184
  %i.hq = fneg <2 x float> %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.hs = load float, ptr %i.hr, align 8, !tbaa !223, !alias.scope !1184
  %i.ht = fneg float %i.hs
  %.sroa.3.12.vec.insert.i5.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ht, i64 0
  store <2 x float> %i.hq, ptr %i.ho, align 8, !alias.scope !1184
  store <2 x float> %.sroa.3.12.vec.insert.i5.i74, ptr %i.hr, align 8, !tbaa !230, !alias.scope !1184
  %i.hu = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.hv = load i8, ptr %i.hu, align 8             ; 2 uses
  %i.hw = and i8 %i.hv, 1
  %.not.i75 = icmp eq i8 %i.hw, 0
  br i1 %.not.i75, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(33) %6, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  %.pre.i76 = load i8, ptr %i.hu, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hx = phi i8 [ %.pre.i76, %bb.t ], [ %i.hv, %bb.s ]
  %.mask.i77 = and i8 %i.hx, 2
  %.not7.i78 = icmp eq i8 %.mask.i77, 0
  br i1 %.not7.i78, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.ho, ptr noundef nonnull align 4 dereferenceable(16) %i.b)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @_ZNK10btSoftBody4Body13applyVImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(33) %3, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  %.pre.i81 = load i8, ptr %i.dd, align 8
  %.mask.i82 = and i8 %.pre.i81, 2
  %.not7.i83 = icmp eq i8 %.mask.i82, 0
  br i1 %.not7.i83, label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hy = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.hy, ptr noundef nonnull align 4 dereferenceable(16) %i.ax)
  br label %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84

_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit84: ; preds = %bb.x, %bb.w, %bb.j, %_ZNK10btSoftBody4Body12applyImpulseERKNS_7ImpulseERK9btVector3.exit68, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN10btSoftBody6CJoint9TerminateEf(ptr noundef nonnull align 8 dereferenceable(244) %0, float %1) unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load float, ptr %i.a, align 8, !tbaa !562
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !223
  %i.g = fneg <2 x float> %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !223
  %i.j = fneg float %i.i
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.j, i64 0
  store <2 x float> %i.g, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @_ZNK10btSoftBody4Body13applyDImpulseERK9btVector3S3_(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.n)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN10btSoftBody12setMaxStressEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(2064) initializes((620, 624)) %0, float noundef %1) local_unnamed_addr #31 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %1, ptr %i.a, align 4, !tbaa !1187
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10btSoftBody21interpolateRenderMeshEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2064) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1940
  %i.b = load i32, ptr %i.a, align 4, !tbaa !132
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 964 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !145
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader70

.preheader70:                                     ; preds = %bb.a
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader70
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1888
  br label %bb.c

.preheader:                                       ; preds = %bb.a
  br i1 %i.f, label %.lr.ph82, label %.loopexit

.lr.ph82:                                         ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1888
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1952
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %bb.b
  %indvars.iv89 = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next90, %bb.b ] ; 6 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !212
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %indvars.iv89
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !298  ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !345  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !345  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !345  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load float, ptr %i.w, align 4, !tbaa !223
  %i.z = load float, ptr %i.x, align 4, !tbaa !223 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 20
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !223
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !144
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.af, i64 %indvars.iv89 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = load <2 x float>, ptr %i.aa, align 4, !tbaa !223
  %i.aj = load <2 x float>, ptr %i.ab, align 4, !tbaa !223 ; 2 uses
  %i.ak = load <2 x float>, ptr %i.ae, align 4, !tbaa !223
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false)
end_hunk_5
begin_hunk_6_@_ZNK10btSoftBody9serializeEPvP12btSerializer:bb.a
  %i.ays = load ptr, ptr %i.ayr, align 8, !tbaa !345 ; 3 uses
  %i.ayt = ptrtoint ptr %i.ays to i64             ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.ayt to i32
  %.sroa.0.4.extract.shift = lshr i64 %i.ayt, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.ayu = add i32 %.sroa.0.4.extract.trunc, %.sroa.0.0.extract.trunc ; 2 uses
  %i.ayv = shl i32 %i.ayu, 15
  %i.ayw = xor i32 %i.ayv, -1
  %i.ayx = add i32 %i.ayu, %i.ayw                 ; 2 uses
  %i.ayy = lshr i32 %i.ayx, 10
  %i.ayz = xor i32 %i.ayy, %i.ayx
  %i.aza = mul i32 %i.ayz, 9                      ; 2 uses
  %i.azb = lshr i32 %i.aza, 6
  %i.azc = xor i32 %i.azb, %i.aza                 ; 2 uses
  %i.azd = shl i32 %i.azc, 11
  %i.aze = xor i32 %i.azd, -1
  %i.azf = add i32 %i.azc, %i.aze                 ; 2 uses
  %i.azg = lshr i32 %i.azf, 16
  %i.azh = xor i32 %i.azg, %i.azf
  %i.azi = load i32, ptr %i.n, align 8, !tbaa !222
  %i.azj = add nsw i32 %i.azi, -1
  %i.azk = and i32 %i.azh, %i.azj                 ; 2 uses
  %i.azl = load i32, ptr %i.e, align 4, !tbaa !221
  %.not.i.i = icmp ult i32 %i.azk, %i.azl
  call void @llvm.assume(i1 %.not.i.i)
  %i.azm = sext i32 %i.azk to i64
  %i.azn = getelementptr inbounds [4 x i8], ptr %i.ayh, i64 %i.azm
  %.012.i.i = load i32, ptr %i.azn, align 4, !tbaa !257 ; 2 uses
  %.not1113.i.i = icmp ne i32 %.012.i.i, -1
  call void @llvm.assume(i1 %.not1113.i.i)
  %i.azo = sext i32 %.012.i.i to i64              ; 3 uses
  %i.azp = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.azo
  %i.azq = load ptr, ptr %i.azp, align 8, !tbaa !230
  %i.azr = icmp eq ptr %i.ays, %i.azq
  br i1 %i.azr, label %_ZNK9btHashMapI9btHashPtriE9findIndexERKS0_.exit.i, label %.lr.ph693

.lr.ph693:                                        ; preds = %.lr.ph.i.i, %.lr.ph693
  %i.azs = phi i64 [ %i.azu, %.lr.ph693 ], [ %i.azo, %.lr.ph.i.i ]
  %i.azt = getelementptr inbounds [4 x i8], ptr %i.ayj, i64 %i.azs
  %.0.i.i = load i32, ptr %i.azt, align 4, !tbaa !257 ; 2 uses
  %.not11.i.i = icmp ne i32 %.0.i.i, -1
  call void @llvm.assume(i1 %.not11.i.i)
  %i.azu = sext i32 %.0.i.i to i64                ; 3 uses
  %i.azv = getelementptr inbounds [8 x i8], ptr %i.ayi, i64 %i.azu
  %i.azw = load ptr, ptr %i.azv, align 8, !tbaa !230
  %i.azx = icmp eq ptr %i.ays, %i.azw
  br i1 %i.azx, label %_ZNK9btHashMapI9btHashPtriE9findIndexERKS0_.exit.i, label %.lr.ph693

_ZNK9btHashMapI9btHashPtriE9findIndexERKS0_.exit.i: ; preds = %.lr.ph693, %.lr.ph.i.i
  %.lcssa = phi i64 [ %i.azo, %.lr.ph.i.i ], [ %i.azu, %.lr.ph693 ]
  %i.azy = getelementptr inbounds [4 x i8], ptr %i.ayk, i64 %.lcssa
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !257
  store i32 %i.azz, ptr %.0475694, align 4, !tbaa !257
  %indvars.iv.next759 = add nuw nsw i64 %indvars.iv758, 1 ; 2 uses
  %i.baa = getelementptr inbounds nuw i8, ptr %.0475694, i64 4
  %exitcond762.not = icmp eq i64 %indvars.iv.next759, %wide.trip.count761
  br i1 %exitcond762.not, label %._crit_edge696, label %.lr.ph.i.i, !llvm.loop !1398

bb.en:                                            ; preds = %._crit_edge696
  %i.bab = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.eo:                                            ; preds = %.thread643, %._crit_edge696, %bb.ej
  %indvars.iv.next764 = add nuw nsw i64 %indvars.iv763, 1 ; 2 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.0481697, i64 360
  %exitcond767.not = icmp eq i64 %indvars.iv.next764, %wide.trip.count766
  br i1 %exitcond767.not, label %._crit_edge701, label %bb.dr, !llvm.loop !1399

bb.ep:                                            ; preds = %._crit_edge701
  %i.bad = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.eq:                                            ; preds = %.thread637, %._crit_edge701, %bb.dn
  %i.bae = getelementptr inbounds nuw i8, ptr %0, i64 1444 ; 2 uses
  %i.baf = load i32, ptr %i.bae, align 4, !tbaa !197 ; 2 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %1, i64 388
  store i32 %i.baf, ptr %i.bag, align 4, !tbaa !1400
  %.not557 = icmp eq i32 %i.baf, 0
  br i1 %.not557, label %.thread645, label %bb.er

.thread645:                                       ; preds = %bb.eq
  %i.bah = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr null, ptr %i.bah, align 8, !tbaa !1401
  br label %bb.fs

bb.er:                                            ; preds = %bb.eq
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 9 uses
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !196
  %i.bak = load ptr, ptr %2, align 8, !tbaa !9
  %i.bal = getelementptr inbounds nuw i8, ptr %i.bak, i64 56
  %i.bam = load ptr, ptr %i.bal, align 8
  %i.ban = invoke noundef ptr %i.bam(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.baj)
          to label %bb.es unwind label %bb.f      ; 2 uses

bb.es:                                            ; preds = %bb.er
  %i.bao = getelementptr inbounds nuw i8, ptr %1, i64 352
  store ptr %i.ban, ptr %i.bao, align 8, !tbaa !1401
  %.not558 = icmp eq ptr %i.ban, null
  br i1 %.not558, label %bb.fs, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bap = load i32, ptr %i.bae, align 4, !tbaa !197 ; 3 uses
  %i.baq = load ptr, ptr %2, align 8, !tbaa !9
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 32
  %i.bas = load ptr, ptr %i.bar, align 8
  %i.bat = invoke noundef ptr %i.bas(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 112, i32 noundef %i.bap)
          to label %bb.eu unwind label %bb.ev     ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.bau = icmp sgt i32 %i.bap, 0
  br i1 %i.bau, label %.lr.ph706, label %._crit_edge707

.lr.ph706:                                        ; preds = %bb.eu
  %i.bav = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !1312
  %wide.trip.count774 = zext nneg i32 %i.bap to i64
  br label %bb.ew

._crit_edge707:                                   ; preds = %bb.fq, %bb.eu
  %i.bax = load ptr, ptr %i.bai, align 8, !tbaa !196
  %i.bay = load ptr, ptr %2, align 8, !tbaa !9
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 40
  %i.bba = load ptr, ptr %i.baz, align 8
  invoke void %i.bba(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.bat, ptr noundef nonnull @.str.22, i32 noundef 1497453121, ptr noundef nonnull %i.bax)
          to label %bb.fs unwind label %bb.fr

bb.ev:                                            ; preds = %bb.et
  %i.bbb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.ew:                                            ; preds = %.lr.ph706, %bb.fq
  %indvars.iv771 = phi i64 [ 0, %.lr.ph706 ], [ %indvars.iv.next772, %bb.fq ] ; 8 uses
  %.0473703 = phi ptr [ %i.baw, %.lr.ph706 ], [ %i.bet, %bb.fq ] ; 25 uses
  %i.bbc = load ptr, ptr %i.bai, align 8, !tbaa !196
  %i.bbd = getelementptr inbounds nuw [8 x i8], ptr %i.bbc, i64 %indvars.iv771
  %i.bbe = load ptr, ptr %i.bbd, align 8, !tbaa !340 ; 2 uses
  %i.bbf = load ptr, ptr %i.bbe, align 8, !tbaa !9
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 40
  %i.bbh = load ptr, ptr %i.bbg, align 8
  %i.bbi = invoke noundef i32 %i.bbh(ptr noundef nonnull align 8 dereferenceable(181) %i.bbe)
          to label %bb.ex unwind label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.bbj = getelementptr inbounds nuw i8, ptr %.0473703, i64 104
  store i32 %i.bbi, ptr %i.bbj, align 8, !tbaa !1402
  %i.bbk = load ptr, ptr %i.bai, align 8, !tbaa !196
  %i.bbl = getelementptr inbounds nuw [8 x i8], ptr %i.bbk, i64 %indvars.iv771
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !340 ; 13 uses
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.bbm, i64 56
  %i.bbo = getelementptr inbounds nuw i8, ptr %.0473703, i64 16
  %i.bbp = load float, ptr %i.bbn, align 4, !tbaa !223
  store float %i.bbp, ptr %i.bbo, align 8, !tbaa !223
  %i.bbq = getelementptr inbounds nuw i8, ptr %i.bbm, i64 60
  %i.bbr = load float, ptr %i.bbq, align 4, !tbaa !223
  %i.bbs = getelementptr inbounds nuw i8, ptr %.0473703, i64 20
  store float %i.bbr, ptr %i.bbs, align 4, !tbaa !223
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbm, i64 64
  %i.bbu = load float, ptr %i.bbt, align 4, !tbaa !223
  %i.bbv = getelementptr inbounds nuw i8, ptr %.0473703, i64 24
  store float %i.bbu, ptr %i.bbv, align 8, !tbaa !223
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.bbm, i64 68
  %i.bbx = load float, ptr %i.bbw, align 4, !tbaa !223
  %i.bby = getelementptr inbounds nuw i8, ptr %.0473703, i64 28
  store float %i.bbx, ptr %i.bby, align 4, !tbaa !223
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbm, i64 72
  %i.bca = getelementptr inbounds nuw i8, ptr %.0473703, i64 32
  %i.bcb = load float, ptr %i.bbz, align 4, !tbaa !223
  store float %i.bcb, ptr %i.bca, align 8, !tbaa !223
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbm, i64 76
  %i.bcd = load float, ptr %i.bcc, align 4, !tbaa !223
  %i.bce = getelementptr inbounds nuw i8, ptr %.0473703, i64 36
  store float %i.bcd, ptr %i.bce, align 4, !tbaa !223
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbm, i64 80
  %i.bcg = load float, ptr %i.bcf, align 4, !tbaa !223
  %i.bch = getelementptr inbounds nuw i8, ptr %.0473703, i64 40
  store float %i.bcg, ptr %i.bch, align 8, !tbaa !223
  %i.bci = getelementptr inbounds nuw i8, ptr %i.bbm, i64 84
  %i.bcj = load float, ptr %i.bci, align 4, !tbaa !223
  %i.bck = getelementptr inbounds nuw i8, ptr %.0473703, i64 44
  store float %i.bcj, ptr %i.bck, align 4, !tbaa !223
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bbm, i64 88
  %i.bcm = getelementptr inbounds nuw i8, ptr %.0473703, i64 48
  %i.bcn = load <2 x float>, ptr %i.bcl, align 8, !tbaa !223
  store <2 x float> %i.bcn, ptr %i.bcm, align 8, !tbaa !223
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bbm, i64 96
  %i.bcp = load float, ptr %i.bco, align 8, !tbaa !562
  %i.bcq = getelementptr inbounds nuw i8, ptr %.0473703, i64 56
  store float %i.bcp, ptr %i.bcq, align 8, !tbaa !1404
  %i.bcr = getelementptr inbounds nuw i8, ptr %i.bbm, i64 180
  %i.bcs = load i8, ptr %i.bcr, align 4, !tbaa !996, !range !233, !noundef !234
  %i.bct = zext nneg i8 %i.bcs to i32
  %i.bcu = getelementptr inbounds nuw i8, ptr %.0473703, i64 60
  store i32 %i.bct, ptr %i.bcu, align 4, !tbaa !1405
  %i.bcv = getelementptr inbounds nuw i8, ptr %.0473703, i64 64
  %i.bcw = getelementptr inbounds nuw i8, ptr %.0473703, i64 8 ; 3 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bbm, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0473703, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bcv, i8 0, i64 32, i1 false)
  %i.bcy = load ptr, ptr %i.bcx, align 8, !tbaa !547 ; 2 uses
  %.not559 = icmp eq ptr %i.bcy, null
  br i1 %.not559, label %bb.fb, label %bb.ez

bb.ey:                                            ; preds = %bb.fo, %bb.fl, %bb.fi, %bb.ff, %bb.fc, %bb.ez, %bb.ew
  %i.bcz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.ez:                                            ; preds = %bb.ex
  %i.bda = getelementptr inbounds nuw i8, ptr %.0473703, i64 96
  store i32 1, ptr %i.bda, align 8, !tbaa !1406
  %i.bdb = load ptr, ptr %2, align 8, !tbaa !9
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bdb, i64 56
  %i.bdd = load ptr, ptr %i.bdc, align 8
  %i.bde = invoke noundef ptr %i.bdd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bcy)
          to label %bb.fa unwind label %bb.ey

bb.fa:                                            ; preds = %bb.ez
  store ptr %i.bde, ptr %.0473703, align 8, !tbaa !1407
  %.pre804 = load ptr, ptr %i.bai, align 8, !tbaa !196
  %.phi.trans.insert805 = getelementptr inbounds nuw [8 x i8], ptr %.pre804, i64 %indvars.iv771
  %.pre806 = load ptr, ptr %.phi.trans.insert805, align 8, !tbaa !340
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ex
  %i.bdf = phi ptr [ %.pre806, %bb.fa ], [ %i.bbm, %bb.ex ] ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdf, i64 24
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !545 ; 2 uses
  %.not560 = icmp eq ptr %i.bdh, null
  br i1 %.not560, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bdi = getelementptr inbounds nuw i8, ptr %.0473703, i64 96
  store i32 3, ptr %i.bdi, align 8, !tbaa !1406
  %i.bdj = load ptr, ptr %2, align 8, !tbaa !9
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdj, i64 56
  %i.bdl = load ptr, ptr %i.bdk, align 8
  %i.bdm = invoke noundef ptr %i.bdl(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bdh)
          to label %bb.fd unwind label %bb.ey

bb.fd:                                            ; preds = %bb.fc
  store ptr %i.bdm, ptr %.0473703, align 8, !tbaa !1407
  %.pre807 = load ptr, ptr %i.bai, align 8, !tbaa !196
  %.phi.trans.insert808 = getelementptr inbounds nuw [8 x i8], ptr %.pre807, i64 %indvars.iv771
  %.pre809 = load ptr, ptr %.phi.trans.insert808, align 8, !tbaa !340
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fb
  %i.bdn = phi ptr [ %.pre809, %bb.fd ], [ %i.bdf, %bb.fb ] ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 16
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !1140 ; 2 uses
  %.not561 = icmp eq ptr %i.bdp, null
  br i1 %.not561, label %bb.fh, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.bdq = getelementptr inbounds nuw i8, ptr %.0473703, i64 96
  store i32 2, ptr %i.bdq, align 8, !tbaa !1406
  %i.bdr = load ptr, ptr %2, align 8, !tbaa !9
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 56
  %i.bdt = load ptr, ptr %i.bds, align 8
  %i.bdu = invoke noundef ptr %i.bdt(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bdp)
          to label %bb.fg unwind label %bb.ey

bb.fg:                                            ; preds = %bb.ff
  store ptr %i.bdu, ptr %.0473703, align 8, !tbaa !1407
  %.pre810 = load ptr, ptr %i.bai, align 8, !tbaa !196
  %.phi.trans.insert811 = getelementptr inbounds nuw [8 x i8], ptr %.pre810, i64 %indvars.iv771
  %.pre812 = load ptr, ptr %.phi.trans.insert811, align 8, !tbaa !340
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fe
  %i.bdv = phi ptr [ %.pre812, %bb.fg ], [ %i.bdn, %bb.fe ] ; 2 uses
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.bdv, i64 32
  %i.bdx = load ptr, ptr %i.bdw, align 8, !tbaa !547 ; 2 uses
  %.not562 = icmp eq ptr %i.bdx, null
  br i1 %.not562, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.bdy = getelementptr inbounds nuw i8, ptr %.0473703, i64 100
  store i32 1, ptr %i.bdy, align 4, !tbaa !1408
  %i.bdz = load ptr, ptr %2, align 8, !tbaa !9
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 56
  %i.beb = load ptr, ptr %i.bea, align 8
  %i.bec = invoke noundef ptr %i.beb(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bdx)
          to label %bb.fj unwind label %bb.ey

bb.fj:                                            ; preds = %bb.fi
  store ptr %i.bec, ptr %i.bcw, align 8, !tbaa !1409
  %.pre813 = load ptr, ptr %i.bai, align 8, !tbaa !196
  %.phi.trans.insert814 = getelementptr inbounds nuw [8 x i8], ptr %.pre813, i64 %indvars.iv771
  %.pre815 = load ptr, ptr %.phi.trans.insert814, align 8, !tbaa !340
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fh
  %i.bed = phi ptr [ %.pre815, %bb.fj ], [ %i.bdv, %bb.fh ] ; 2 uses
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 48
  %i.bef = load ptr, ptr %i.bee, align 8, !tbaa !545 ; 2 uses
  %.not563 = icmp eq ptr %i.bef, null
  br i1 %.not563, label %bb.fn, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.beg = getelementptr inbounds nuw i8, ptr %.0473703, i64 100
  store i32 3, ptr %i.beg, align 4, !tbaa !1408
  %i.beh = load ptr, ptr %2, align 8, !tbaa !9
  %i.bei = getelementptr inbounds nuw i8, ptr %i.beh, i64 56
  %i.bej = load ptr, ptr %i.bei, align 8
  %i.bek = invoke noundef ptr %i.bej(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.bef)
          to label %bb.fm unwind label %bb.ey

bb.fm:                                            ; preds = %bb.fl
  store ptr %i.bek, ptr %i.bcw, align 8, !tbaa !1409
  %.pre816 = load ptr, ptr %i.bai, align 8, !tbaa !196
  %.phi.trans.insert817 = getelementptr inbounds nuw [8 x i8], ptr %.pre816, i64 %indvars.iv771
  %.pre818 = load ptr, ptr %.phi.trans.insert817, align 8, !tbaa !340
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %bb.fk
  %i.bel = phi ptr [ %.pre818, %bb.fm ], [ %i.bed, %bb.fk ]
  %i.bem = getelementptr inbounds nuw i8, ptr %i.bel, i64 40
  %i.ben = load ptr, ptr %i.bem, align 8, !tbaa !1140 ; 2 uses
  %.not564 = icmp eq ptr %i.ben, null
  br i1 %.not564, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.beo = getelementptr inbounds nuw i8, ptr %.0473703, i64 100
  store i32 2, ptr %i.beo, align 4, !tbaa !1408
  %i.bep = load ptr, ptr %2, align 8, !tbaa !9
  %i.beq = getelementptr inbounds nuw i8, ptr %i.bep, i64 56
  %i.ber = load ptr, ptr %i.beq, align 8
  %i.bes = invoke noundef ptr %i.ber(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.ben)
          to label %bb.fp unwind label %bb.ey

bb.fp:                                            ; preds = %bb.fo
  store ptr %i.bes, ptr %i.bcw, align 8, !tbaa !1409
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fn, %bb.fp
  %indvars.iv.next772 = add nuw nsw i64 %indvars.iv771, 1 ; 2 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %.0473703, i64 112
  %exitcond775.not = icmp eq i64 %indvars.iv.next772, %wide.trip.count774
  br i1 %exitcond775.not, label %._crit_edge707, label %bb.ew, !llvm.loop !1410

bb.fr:                                            ; preds = %._crit_edge707
  %i.beu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ft

bb.fs:                                            ; preds = %.thread645, %._crit_edge707, %bb.es
  call void @_ZN9btHashMapI9btHashPtriED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  ret ptr @.str.23

bb.ft:                                            ; preds = %bb.ev, %bb.fr, %bb.ey, %bb.dq, %bb.dw, %bb.dz, %bb.dx, %bb.eg, %bb.ef, %bb.en, %bb.em, %bb.ep, %bb.cy, %bb.di, %bb.dj, %bb.da, %bb.dc, %bb.cz, %bb.cj, %bb.cq, %bb.cp, %bb.br, %bb.cd, %bb.cc, %bb.ba, %bb.bl, %bb.be, %bb.al, %bb.au, %bb.at, %bb.x, %bb.af, %bb.ae, %bb.g, %bb.n, %bb.p, %bb.o, %bb.r, %bb.f
  %.pn612.pn.pn.pn.pn = phi { ptr, i32 } [ %i.vm, %bb.cq ], [ %i.bu, %bb.o ], [ %i.gi, %bb.af ], [ %i.iy, %bb.au ], [ %i.me, %bb.bl ], [ %i.rh, %bb.cd ], [ %i.age, %bb.di ], [ %i.bab, %bb.en ], [ %i.ao, %bb.f ], [ %i.ap, %bb.g ], [ %i.bx, %bb.r ], [ %i.bt, %bb.n ], [ %i.bv, %bb.p ], [ %i.cu, %bb.x ], [ %.pn606, %bb.ae ], [ %i.hh, %bb.al ], [ %i.ix, %bb.at ], [ %i.jx, %bb.ba ], [ %i.ky, %bb.be ], [ %i.nt, %bb.br ], [ %i.rg, %bb.cc ], [ %i.sg, %bb.cj ], [ %i.vl, %bb.cp ], [ %i.aaw, %bb.cy ], [ %i.aax, %bb.cz ], [ %i.aay, %bb.da ], [ %i.aby, %bb.dc ], [ %i.ahk, %bb.dj ], [ %i.aim, %bb.dq ], [ %i.bad, %bb.ep ], [ %i.awd, %bb.ef ], [ %i.atk, %bb.dw ], [ %i.atl, %bb.dx ], [ %i.aul, %bb.dz ], [ %i.axj, %bb.eg ], [ %i.ayq, %bb.em ], [ %i.beu, %bb.fr ], [ %i.bbb, %bb.ev ], [ %i.bcz, %bb.ey ]
  call void @_ZN9btHashMapI9btHashPtriED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %3) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  resume { ptr, i32 } %.pn612.pn.pn.pn.pn
}

declare noundef ptr @_ZNK17btCollisionObject9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN9btHashMapI9btHashPtriE6insertERKS0_RKi(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !230
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !230
  %i.d = add i32 %i.c, %i.a                       ; 2 uses
  %i.e = shl i32 %i.d, 15
  %i.f = xor i32 %i.e, -1
  %i.g = add i32 %i.d, %i.f                       ; 2 uses
  %i.h = lshr i32 %i.g, 10
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, 9                          ; 2 uses
  %i.k = lshr i32 %i.j, 6
  %i.l = xor i32 %i.k, %i.j                       ; 2 uses
  %i.m = shl i32 %i.l, 11
  %i.n = xor i32 %i.m, -1
  %i.o = add i32 %i.l, %i.n                       ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %i.q = xor i32 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !222  ; 8 uses
  %i.t = add nsw i32 %i.s, -1
  %i.u = and i32 %i.q, %i.t                       ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !221
  %.not.i = icmp ult i32 %i.u, %i.w
  br i1 %.not.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !220
  %i.z = sext i32 %i.u to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %.012.i = load i32, ptr %i.aa, align 4, !tbaa !257 ; 2 uses
  %.not1113.i = icmp eq i32 %.012.i, -1
  br i1 %.not1113.i, label %.loopexit, label %.lr.ph.i

end_hunk_6
begin_hunk_7_@_ZNK15btSoftColliders13CollideSDF_RD6DoNodeERN10btSoftBody4NodeE:bb.a
  %i.jz = fmul <2 x float> %i.ip, %i.jy
  %i.ka = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.ka, <2 x float> %i.jz)
  %i.kc = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.kc, <2 x float> %i.kb) ; 3 uses
  %i.ke = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kf = fmul <2 x float> %i.jo, %i.ke
  %i.kg = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kg, <2 x float> %i.jl, <2 x float> %i.kf)
  %i.ki = shufflevector <2 x float> %i.jo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kj = fmul <2 x float> %i.ip, %i.ki
  %i.kk = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.kk, <2 x float> %i.kj)
  %i.km = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iy, <2 x float> %i.km, <2 x float> %i.kl) ; 2 uses
  %i.ko = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jx, <2 x float> zeroinitializer, <2 x float> %i.kh) ; 3 uses
  %i.kp = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cn, i64 0 ; 2 uses
  %i.kq = fsub <2 x float> %i.kp, %i.jb           ; 3 uses
  %i.kr = fsub float 0.000000e+00, %i.je          ; 2 uses
  br i1 %i.gx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kr, i64 0
  %i.ks = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cn, i64 1
  %i.kt = fsub <2 x float> %i.ks, %i.kd
  %i.ku = extractelement <2 x float> %i.ko, i64 1
  %i.kv = fsub float 0.000000e+00, %i.ku
  %.sroa.3.12.vec.insert.i.1.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kv, i64 0
  %i.kw = fsub <2 x float> zeroinitializer, %i.kn
  %i.kx = extractelement <2 x float> %i.ko, i64 0
  %i.ky = fsub float %i.cn, %i.kx
  %.sroa.3.12.vec.insert.i.2.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ky, i64 0
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 64
  store <2 x float> %i.kq, ptr %i.kz, align 8
  %.sroa.589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.589.0..sroa_idx, align 8, !tbaa !230
  %i.la = getelementptr inbounds nuw i8, ptr %4, i64 80
  store <2 x float> %i.kt, ptr %i.la, align 8
  %.sroa.891.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  store <2 x float> %.sroa.3.12.vec.insert.i.1.i.i, ptr %.sroa.891.16..sroa_idx, align 8, !tbaa !230
  %i.lb = getelementptr inbounds nuw i8, ptr %4, i64 96
  store <2 x float> %i.kw, ptr %i.lb, align 8
  %.sroa.1192.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 104
  store <2 x float> %.sroa.3.12.vec.insert.i.2.i.i, ptr %.sroa.1192.32..sroa_idx, align 8, !tbaa !230
  br label %bb.s

bb.p:                                             ; preds = %bb.b
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.q:                                             ; preds = %bb.g
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.r:                                             ; preds = %bb.n
  %i.le = extractelement <2 x float> %i.kd, i64 0
  %i.lf = fsub float 0.000000e+00, %i.le
  %i.lg = extractelement <2 x float> %i.kd, i64 1
  %i.lh = fsub float %i.cn, %i.lg
  %i.li = fsub <2 x float> %i.kp, %i.ko
  %i.lj = load float, ptr %i.fw, align 4, !tbaa !223, !noalias !1463
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.lm = load float, ptr %i.fy, align 4, !tbaa !223, !noalias !1463
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.lo = load float, ptr %i.ga, align 4, !tbaa !223, !noalias !1463
  %i.lp = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.lq = getelementptr inbounds nuw i8, ptr %1, i64 244
  %i.lr = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ls = fsub <2 x float> zeroinitializer, %i.kn
  %i.lt = load <2 x float>, ptr %i.lk, align 8, !tbaa !223, !noalias !1463
  %i.lu = load float, ptr %i.ll, align 4, !tbaa !223, !noalias !1463
  %i.lv = insertelement <2 x float> %i.lt, float %i.lm, i64 1
  %i.lw = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lx = insertelement <2 x float> %i.lw, float %i.lf, i64 1
  %i.ly = fadd <2 x float> %i.lv, %i.lx           ; 5 uses
  %i.lz = load <2 x float>, ptr %i.ln, align 8, !tbaa !223, !noalias !1463 ; 2 uses
  %i.ma = fadd float %i.lu, %i.kr                 ; 5 uses
  %i.mb = insertelement <2 x float> %i.kq, float %i.lh, i64 1
  %i.mc = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.md = insertelement <2 x float> %i.mc, float %i.lj, i64 0
  %i.me = fadd <2 x float> %i.mb, %i.md           ; 4 uses
  %i.mf = load float, ptr %i.lp, align 8, !tbaa !223, !noalias !1463
  %i.mg = load float, ptr %i.lq, align 4, !tbaa !223, !noalias !1463
  %i.mh = insertelement <2 x float> poison, float %i.lo, i64 0
  %i.mi = insertelement <2 x float> %i.mh, float %i.mf, i64 1
  %i.mj = fadd <2 x float> %i.ls, %i.mi           ; 4 uses
  %i.mk = insertelement <2 x float> %i.lz, float %i.mg, i64 0
  %i.ml = fadd <2 x float> %i.li, %i.mk           ; 3 uses
  %i.mm = fneg <2 x float> %i.mj                  ; 3 uses
  %i.mn = shufflevector <2 x float> %i.mm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mo = extractelement <2 x float> %i.ml, i64 0 ; 2 uses
  %i.mp = fneg float %i.mo                        ; 2 uses
  %i.mq = extractelement <2 x float> %i.ly, i64 1 ; 2 uses
  %i.mr = insertelement <2 x float> poison, float %i.ma, i64 0
  %i.ms = insertelement <2 x float> %i.mr, float %i.mp, i64 1
  %i.mt = shufflevector <2 x float> %i.mm, <2 x float> %i.ly, <2 x i32> <i32 0, i32 3>
  %i.mu = fmul <2 x float> %i.ms, %i.mt
  %i.mv = shufflevector <2 x float> %i.me, <2 x float> %i.mj, <2 x i32> <i32 0, i32 2>
  %i.mw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mv, <2 x float> %i.ml, <2 x float> %i.mu) ; 2 uses
  %i.mx = extractelement <2 x float> %i.ly, i64 0 ; 3 uses
  %shift = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.ly, %shift
  %i.my = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.mz = fmul float %i.mx, %i.mp
  %i.na = extractelement <2 x float> %i.mm, i64 1
  %i.nb = extractelement <2 x float> %i.ml, i64 1 ; 3 uses
  %i.nc = fmul float %i.nb, %i.na
  %i.nd = extractelement <2 x float> %i.mj, i64 1
  %i.ne = call noundef float @llvm.fmuladd.f32(float %i.ma, float %i.nd, float %i.mz)
  %i.nf = extractelement <2 x float> %i.me, i64 1 ; 3 uses
  %i.ng = call noundef float @llvm.fmuladd.f32(float %i.nf, float %i.mo, float %i.nc) ; 2 uses
  %i.nh = extractelement <2 x float> %i.me, i64 0 ; 3 uses
  %i.ni = call float @llvm.fmuladd.f32(float %i.nh, float %i.ng, float %i.my)
  %i.nj = fmul <2 x float> %i.me, %i.mn
  %i.nk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ly, <2 x float> %i.mj, <2 x float> %i.nj) ; 2 uses
  %i.nl = extractelement <2 x float> %i.nk, i64 1
  %i.nm = call noundef float @llvm.fmuladd.f32(float %i.ma, float %i.nl, float %i.ni)
  %i.nn = fdiv float 1.000000e+00, %i.nm          ; 4 uses
  %i.no = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.np = insertelement <2 x float> %i.no, float %i.ng, i64 1
  %i.nq = insertelement <2 x float> poison, float %i.nn, i64 0
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ns = fmul <2 x float> %i.np, %i.nr           ; 4 uses
  %i.nt = fneg float %i.nf
  %i.nu = fmul float %i.ma, %i.nt
  %i.nv = call noundef float @llvm.fmuladd.f32(float %i.mx, float %i.nb, float %i.nu)
  %i.nw = fmul float %i.nv, %i.nn                 ; 3 uses
  %i.nx = fmul <2 x float> %i.mw, %i.nr           ; 3 uses
  %i.ny = fneg float %i.nb
  %i.nz = fmul float %i.nh, %i.ny
  %i.oa = call noundef float @llvm.fmuladd.f32(float %i.ma, float %i.mq, float %i.nz)
  %i.ob = fmul float %i.oa, %i.nn                 ; 2 uses
  %i.oc = fmul <2 x float> %i.nk, %i.nr           ; 5 uses
  %i.od = fneg float %i.mq
  %i.oe = fmul float %i.mx, %i.od
  %i.of = call noundef float @llvm.fmuladd.f32(float %i.nh, float %i.nf, float %i.oe)
  %i.og = fmul float %i.of, %i.nn                 ; 3 uses
  %i.oh = fmul <2 x float> %i.nx, zeroinitializer ; 3 uses
  %i.oi = fadd <2 x float> %i.ns, %i.oh
  %i.oj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> zeroinitializer, <2 x float> %i.oi)
  %i.ok = fmul float %i.ob, 0.000000e+00          ; 2 uses
  %i.ol = extractelement <2 x float> %i.ns, i64 1 ; 2 uses
  %i.om = extractelement <2 x float> %i.nx, i64 1
  %i.on = extractelement <2 x float> %i.oc, i64 1
  %i.oo = fadd float %i.nw, %i.ok
  %i.op = call float @llvm.fmuladd.f32(float %i.ol, float 0.000000e+00, float %i.om)
  %i.oq = insertelement <2 x float> %i.oc, float %i.og, i64 0
  %i.or = insertelement <2 x float> poison, float %i.oo, i64 0
  %i.os = insertelement <2 x float> %i.or, float %i.op, i64 1
  %i.ot = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oq, <2 x float> zeroinitializer, <2 x float> %i.os) ; 2 uses
  %i.ou = extractelement <2 x float> %i.oh, i64 1
  %i.ov = call float @llvm.fmuladd.f32(float %i.ol, float 0.000000e+00, float %i.ou)
  %i.ow = shufflevector <2 x float> %i.oj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ow, ptr %i.lr, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ox = extractelement <2 x float> %i.ot, i64 0
  store float %i.ox, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 76
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !230
  %i.oy = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.oz = extractelement <2 x float> %i.ot, i64 1
  store float %i.oz, ptr %i.oy, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 84
  %i.pa = fadd float %i.on, %i.ov
  %i.pb = shufflevector <2 x float> %i.ns, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pc = shufflevector <4 x float> %i.pb, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.pd = insertelement <4 x float> %i.pc, float %i.nw, i64 1
  %i.pe = shufflevector <2 x float> %i.nx, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pf = insertelement <4 x float> %i.pe, float 0.000000e+00, i64 2
  %i.pg = insertelement <4 x float> %i.pf, float %i.ob, i64 1
  %i.ph = insertelement <4 x float> %i.pg, float %i.pa, i64 3
  %i.pi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pd, <4 x float> zeroinitializer, <4 x float> %i.ph)
  %i.pj = shufflevector <2 x float> %i.oc, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pk = shufflevector <4 x float> %i.pj, <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.pl = insertelement <4 x float> %i.pk, float %i.og, i64 1
  %i.pm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pl, <4 x float> zeroinitializer, <4 x float> %i.pi)
  store <4 x float> %i.pm, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 100
  %i.pn = insertelement <2 x float> %i.ns, float %i.nw, i64 1
  %i.po = insertelement <2 x float> %i.oh, float %i.ok, i64 1
  %i.pp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pn, <2 x float> zeroinitializer, <2 x float> %i.po)
  %i.pq = insertelement <2 x float> %i.oc, float %i.og, i64 1
  %i.pr = fadd <2 x float> %i.pq, %i.pp
  store <2 x float> %i.pr, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 108
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !230
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 112
  store <2 x float> %i.gj, ptr %i.ps, align 8
  %.sroa.9106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 120
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.9106.0..sroa_idx, align 8, !tbaa !230
  br label %bb.an

bb.t:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.fd, i64 16, i1 false), !tbaa.struct !229
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.pt = call fastcc { <2 x float>, <2 x float> } @_ZL28generateUnitOrthogonalVectorRK9btVector3(ptr noundef nonnull align 4 dereferenceable(16) %i.fd) ; 2 uses
  %i.pu = extractvalue { <2 x float>, <2 x float> } %i.pt, 0 ; 4 uses
  store <2 x float> %i.pu, ptr %6, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.pw = extractvalue { <2 x float>, <2 x float> } %i.pt, 1 ; 3 uses
  store <2 x float> %i.pw, ptr %i.pv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.px = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.py = extractelement <2 x float> %i.pw, i64 0
  %i.pz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.qa = extractelement <2 x float> %i.pu, i64 1
  %i.qb = load float, ptr %5, align 8, !tbaa !223 ; 2 uses
  %i.qc = load <2 x float>, ptr %i.px, align 4, !tbaa !223 ; 2 uses
  %i.qd = fneg float %i.py
  %i.qe = fmul float %i.qb, %i.qd
  %i.qf = shufflevector <2 x float> %i.pw, <2 x float> %i.pu, <2 x i32> <i32 0, i32 2>
  %i.qg = fneg <2 x float> %i.pu
  %i.qh = fmul <2 x float> %i.qc, %i.qg           ; 2 uses
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qj = insertelement <2 x float> %i.qi, float %i.qe, i64 1
  %i.qk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qc, <2 x float> %i.qf, <2 x float> %i.qj)
  %i.ql = extractelement <2 x float> %i.qh, i64 0
  %i.qm = call float @llvm.fmuladd.f32(float %i.qb, float %i.qa, float %i.ql)
  %.sroa.3.12.vec.insert.i.i87 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.qm, i64 0
  store <2 x float> %i.qk, ptr %7, align 8
  %i.qn = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i87, ptr %i.qn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.qo = getelementptr inbounds nuw i8, ptr %8, i64 24
  store i8 1, ptr %i.qo, align 8, !tbaa !130
  %i.qp = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr null, ptr %i.qp, align 8, !tbaa !131
  %i.qq = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.qq, align 4, !tbaa !132
  %i.qr = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %i.qr, align 8, !tbaa !133
  %i.qs = getelementptr inbounds nuw i8, ptr %8, i64 56
  store i8 1, ptr %i.qs, align 8, !tbaa !130
  %i.qt = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store ptr null, ptr %i.qt, align 8, !tbaa !131
  %i.qu = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 0, ptr %i.qu, align 4, !tbaa !132
  %i.qv = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %i.qv, align 8, !tbaa !133
  %i.qw = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i8 1, ptr %i.qw, align 8, !tbaa !130
  %i.qx = getelementptr inbounds nuw i8, ptr %8, i64 80
  store ptr null, ptr %i.qx, align 8, !tbaa !131
  %i.qy = getelementptr inbounds nuw i8, ptr %8, i64 68
  store i32 0, ptr %i.qy, align 4, !tbaa !132
  %i.qz = getelementptr inbounds nuw i8, ptr %8, i64 72
  store i32 0, ptr %i.qz, align 8, !tbaa !133
  %i.ra = getelementptr inbounds nuw i8, ptr %8, i64 120
  store i8 1, ptr %i.ra, align 8, !tbaa !130
  %i.rb = getelementptr inbounds nuw i8, ptr %8, i64 112
  store ptr null, ptr %i.rb, align 8, !tbaa !131
  %i.rc = getelementptr inbounds nuw i8, ptr %8, i64 100
  store i32 0, ptr %i.rc, align 4, !tbaa !132
  %i.rd = getelementptr inbounds nuw i8, ptr %8, i64 104
  store i32 0, ptr %i.rd, align 8, !tbaa !133
  %i.re = getelementptr inbounds nuw i8, ptr %8, i64 152
  store i8 1, ptr %i.re, align 8, !tbaa !126
  %i.rf = getelementptr inbounds nuw i8, ptr %8, i64 144
  store ptr null, ptr %i.rf, align 8, !tbaa !127
  %i.rg = getelementptr inbounds nuw i8, ptr %8, i64 132
  store i32 0, ptr %i.rg, align 4, !tbaa !128
  %i.rh = getelementptr inbounds nuw i8, ptr %8, i64 136
  store i32 0, ptr %i.rh, align 8, !tbaa !129
  %i.ri = getelementptr inbounds nuw i8, ptr %8, i64 184
  store i8 1, ptr %i.ri, align 8, !tbaa !402
  %i.rj = getelementptr inbounds nuw i8, ptr %8, i64 176
  store ptr null, ptr %i.rj, align 8, !tbaa !406
  %i.rk = getelementptr inbounds nuw i8, ptr %8, i64 164
  store i32 0, ptr %i.rk, align 4, !tbaa !407
  %i.rl = getelementptr inbounds nuw i8, ptr %8, i64 168
  store i32 0, ptr %i.rl, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.rm = getelementptr inbounds nuw i8, ptr %9, i64 24
  store i8 1, ptr %i.rm, align 8, !tbaa !130
  %i.rn = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr null, ptr %i.rn, align 8, !tbaa !131
  %i.ro = getelementptr inbounds nuw i8, ptr %9, i64 4
  store i32 0, ptr %i.ro, align 4, !tbaa !132
  %i.rp = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.rp, align 8, !tbaa !133
  %i.rq = getelementptr inbounds nuw i8, ptr %9, i64 56
  store i8 1, ptr %i.rq, align 8, !tbaa !130
  %i.rr = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  store ptr null, ptr %i.rr, align 8, !tbaa !131
  %i.rs = getelementptr inbounds nuw i8, ptr %9, i64 36
  store i32 0, ptr %i.rs, align 4, !tbaa !132
  %i.rt = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i32 0, ptr %i.rt, align 8, !tbaa !133
  %i.ru = getelementptr inbounds nuw i8, ptr %9, i64 88
  store i8 1, ptr %i.ru, align 8, !tbaa !130
  %i.rv = getelementptr inbounds nuw i8, ptr %9, i64 80
  store ptr null, ptr %i.rv, align 8, !tbaa !131
  %i.rw = getelementptr inbounds nuw i8, ptr %9, i64 68
  store i32 0, ptr %i.rw, align 4, !tbaa !132
  %i.rx = getelementptr inbounds nuw i8, ptr %9, i64 72
  store i32 0, ptr %i.rx, align 8, !tbaa !133
  %i.ry = getelementptr inbounds nuw i8, ptr %9, i64 120
  store i8 1, ptr %i.ry, align 8, !tbaa !130
  %i.rz = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr null, ptr %i.rz, align 8, !tbaa !131
  %i.sa = getelementptr inbounds nuw i8, ptr %9, i64 100
  store i32 0, ptr %i.sa, align 4, !tbaa !132
  %i.sb = getelementptr inbounds nuw i8, ptr %9, i64 104
  store i32 0, ptr %i.sb, align 8, !tbaa !133
  %i.sc = getelementptr inbounds nuw i8, ptr %9, i64 152
  store i8 1, ptr %i.sc, align 8, !tbaa !126
  %i.sd = getelementptr inbounds nuw i8, ptr %9, i64 144
  store ptr null, ptr %i.sd, align 8, !tbaa !127
  %i.se = getelementptr inbounds nuw i8, ptr %9, i64 132
  store i32 0, ptr %i.se, align 4, !tbaa !128
  %i.sf = getelementptr inbounds nuw i8, ptr %9, i64 136
  store i32 0, ptr %i.sf, align 8, !tbaa !129
  %i.sg = getelementptr inbounds nuw i8, ptr %9, i64 184
  store i8 1, ptr %i.sg, align 8, !tbaa !402
  %i.sh = getelementptr inbounds nuw i8, ptr %9, i64 176
  store ptr null, ptr %i.sh, align 8, !tbaa !406
  %i.si = getelementptr inbounds nuw i8, ptr %9, i64 164
  store i32 0, ptr %i.si, align 4, !tbaa !407
  %i.sj = getelementptr inbounds nuw i8, ptr %9, i64 168
  store i32 0, ptr %i.sj, align 8, !tbaa !408
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  %i.sk = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i8 1, ptr %i.sk, align 8, !tbaa !130
  %i.sl = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr null, ptr %i.sl, align 8, !tbaa !131
  %i.sm = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.sm, align 4, !tbaa !132
  %i.sn = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 0, ptr %i.sn, align 8, !tbaa !133
  %i.so = getelementptr inbounds nuw i8, ptr %10, i64 56
  store i8 1, ptr %i.so, align 8, !tbaa !130
  %i.sp = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr null, ptr %i.sp, align 8, !tbaa !131
  %i.sq = getelementptr inbounds nuw i8, ptr %10, i64 36
  store i32 0, ptr %i.sq, align 4, !tbaa !132
  %i.sr = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i32 0, ptr %i.sr, align 8, !tbaa !133
  %i.ss = getelementptr inbounds nuw i8, ptr %10, i64 88
  store i8 1, ptr %i.ss, align 8, !tbaa !130
  %i.st = getelementptr inbounds nuw i8, ptr %10, i64 80
  store ptr null, ptr %i.st, align 8, !tbaa !131
  %i.su = getelementptr inbounds nuw i8, ptr %10, i64 68
  store i32 0, ptr %i.su, align 4, !tbaa !132
  %i.sv = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i32 0, ptr %i.sv, align 8, !tbaa !133
  %i.sw = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i8 1, ptr %i.sw, align 8, !tbaa !130
  %i.sx = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr null, ptr %i.sx, align 8, !tbaa !131
  %i.sy = getelementptr inbounds nuw i8, ptr %10, i64 100
  store i32 0, ptr %i.sy, align 4, !tbaa !132
  %i.sz = getelementptr inbounds nuw i8, ptr %10, i64 104
  store i32 0, ptr %i.sz, align 8, !tbaa !133
  %i.ta = getelementptr inbounds nuw i8, ptr %10, i64 152
  store i8 1, ptr %i.ta, align 8, !tbaa !126
  %i.tb = getelementptr inbounds nuw i8, ptr %10, i64 144
  store ptr null, ptr %i.tb, align 8, !tbaa !127
  %i.tc = getelementptr inbounds nuw i8, ptr %10, i64 132
  store i32 0, ptr %i.tc, align 4, !tbaa !128
  %i.td = getelementptr inbounds nuw i8, ptr %10, i64 136
  store i32 0, ptr %i.td, align 8, !tbaa !129
  %i.te = getelementptr inbounds nuw i8, ptr %10, i64 184
  store i8 1, ptr %i.te, align 8, !tbaa !402
  %i.tf = getelementptr inbounds nuw i8, ptr %10, i64 176
  store ptr null, ptr %i.tf, align 8, !tbaa !406
  %i.tg = getelementptr inbounds nuw i8, ptr %10, i64 164
  store i32 0, ptr %i.tg, align 4, !tbaa !407
  %i.th = getelementptr inbounds nuw i8, ptr %10, i64 168
  store i32 0, ptr %i.th, align 8, !tbaa !408
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef nonnull %i.ef, ptr noundef nonnull align 8 dereferenceable(204) %8, ptr noundef nonnull align 4 dereferenceable(16) %i.cs, ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.ti = load ptr, ptr %i.ff, align 8, !tbaa !424
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef nonnull %i.ef, ptr noundef nonnull align 8 dereferenceable(204) %9, ptr noundef nonnull align 4 dereferenceable(16) %i.tj, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.tk = load ptr, ptr %i.ff, align 8, !tbaa !424
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  invoke fastcc void @_ZL12findJacobianPK23btMultiBodyLinkColliderR23btMultiBodyJacobianDataRK9btVector3S6_(ptr noundef nonnull %i.ef, ptr noundef nonnull align 8 dereferenceable(204) %10, ptr noundef nonnull align 4 dereferenceable(16) %i.tl, ptr noundef nonnull align 4 dereferenceable(16) %7)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.tm = load ptr, ptr %i.qp, align 8, !tbaa !131 ; 2 uses
  %i.tn = load ptr, ptr %i.rn, align 8, !tbaa !131 ; 2 uses
  %i.to = load ptr, ptr %i.sl, align 8, !tbaa !131 ; 2 uses
  %i.tp = load ptr, ptr %i.qt, align 8, !tbaa !131 ; 2 uses
  %i.tq = load ptr, ptr %i.rr, align 8, !tbaa !131 ; 2 uses
  %i.tr = load ptr, ptr %i.sp, align 8, !tbaa !131 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #39
  %i.ts = load <2 x float>, ptr %5, align 8, !tbaa !223 ; 3 uses
  store <2 x float> %i.ts, ptr %11, align 8, !tbaa !223
end_hunk_7
