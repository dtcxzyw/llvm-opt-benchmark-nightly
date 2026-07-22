loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hypre_SMGSetupInterpOp:bb.a

bb.e:                                             ; preds = %bb.d
  %i.bh = sext i32 %.1280 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !4
  %i.bk = add nsw i32 %.1280, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1280.1 = phi i32 [ %i.bk, %bb.e ], [ %.1280, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !25

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0279328.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1280.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod430)
  %gep.epil = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.bl = load i32, ptr %gep.epil, align 4, !tbaa !4
  %i.bm = load i32, ptr %gep372, align 4, !tbaa !4
  %.not.epil = icmp eq i32 %i.bl, %i.bm
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.bn = sext i32 %.0279328.epil.init to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bn
  %i.bp = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !4
  %i.bq = add nsw i32 %.0279328.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.b
  %.0279.lcssa = phi i32 [ 0, %bb.b ], [ %.1280.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bq, %bb.g ], [ %.0279328.epil.init, %.epil.preheader ]
  %i.br = call ptr @hypre_StructMatrixCreateMask(ptr noundef %1, i32 noundef %.0279.lcssa, ptr noundef %i.ay) #6 ; 3 uses
  call void @hypre_Free(ptr noundef %i.ay) #6
  %i.bs = call i32 @hypre_StructVectorClearGhostValues(ptr noundef %3) #6 ; 0 uses
  %i.bt = call i32 @hypre_StructVectorSetConstantValues(ptr noundef %3, double noundef 1.000000e+00) #6 ; 0 uses
  %i.bu = call i32 @hypre_StructVectorSetConstantValues(ptr noundef %2, double noundef 0.000000e+00) #6 ; 0 uses
  %i.bv = call i32 @hypre_SMGRelaxSetNewMatrixStencil(ptr noundef %0, ptr noundef nonnull %i.t) #6 ; 0 uses
  %i.bw = call i32 @hypre_SMGRelaxSetup(ptr noundef %0, ptr noundef %i.br, ptr noundef %2, ptr noundef %3) #6 ; 0 uses
  %i.bx = call i32 @hypre_SMGRelax(ptr noundef %0, ptr noundef %i.br, ptr noundef %2, ptr noundef %3) #6 ; 0 uses
  %i.by = call i32 @hypre_StructMatrixDestroy(ptr noundef %i.br) #6 ; 0 uses
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv402 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !4
  store i32 %i.ca, ptr %i.ab, align 4, !tbaa !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !4
  store i32 %i.cc, ptr %i.ah, align 4, !tbaa !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  store i32 %i.ce, ptr %i.ai, align 4, !tbaa !4
  %i.cf = call i32 @hypre_CreateComputeInfo(ptr noundef %i.m, ptr noundef %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6 ; 0 uses
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.ch = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.cg, ptr noundef %7, ptr noundef %8) #6 ; 0 uses
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.cj = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ci, ptr noundef %7, ptr noundef %8) #6 ; 0 uses
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.cl = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ck, ptr noundef %6, ptr noundef %8) #6 ; 0 uses
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.cn = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.cm, ptr noundef %6, ptr noundef %8) #6 ; 0 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !29
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.cu = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.cv = call i32 @hypre_ComputePkgCreate(ptr noundef %i.co, ptr noundef %i.cp, ptr noundef %8, ptr noundef %8, ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cs, ptr noundef %i.ct, ptr noundef %8, ptr noundef %i.m, ptr noundef %i.cu, i32 noundef 1, ptr noundef nonnull %i.a) #6 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge365
  %i.cw = phi i1 [ true, %._crit_edge ], [ false, %._crit_edge365 ]
  %.0296366 = phi i1 [ false, %._crit_edge ], [ true, %._crit_edge365 ]
  br i1 %.0296366, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !32
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.cz = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.cy, ptr noundef %i.cx, ptr noundef nonnull %i.h) #6 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.db = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.da) #6 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink417 = phi i64 [ 16, %bb.j ], [ 8, %bb.i ]
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sink417
  %.2283 = load ptr, ptr %i.dd, align 8, !tbaa !27 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2283, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !37 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph364, label %._crit_edge365

.lr.ph364:                                        ; preds = %bb.k, %._crit_edge361
  %i.dh = phi i32 [ %i.ju, %._crit_edge361 ], [ %i.df, %bb.k ]
  %indvars.iv399 = phi i64 [ %indvars.iv.next400, %._crit_edge361 ], [ 0, %bb.k ] ; 6 uses
  %i.di = load ptr, ptr %.2283, align 8, !tbaa !40
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv399
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !41 ; 2 uses
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !30
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !42
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %indvars.iv399 ; 5 uses
  %i.do = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !42
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv399 ; 5 uses
  %i.dr = load ptr, ptr %i.ak, align 8, !tbaa !32 ; 2 uses
  %i.ds = load ptr, ptr %i.am, align 8, !tbaa !46
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv399
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !4
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dv ; 6 uses
  %i.dx = load ptr, ptr %i.an, align 8, !tbaa !47 ; 2 uses
  %i.dy = load ptr, ptr %i.ao, align 8, !tbaa !48
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv399
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !49
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv402
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !4
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ed ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !50
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph360, label %._crit_edge361

.lr.ph360:                                        ; preds = %.lr.ph364
  %i.ei = ptrtoaddr ptr %i.dx to i64
  %i.ej = ptrtoaddr ptr %i.dr to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph360, %._crit_edge354.split
  %indvars.iv396.a = phi i64 [ 0, %.lr.ph360 ], [ %indvars.iv.next397, %._crit_edge354.split ] ; 2 uses
  %i.es = load ptr, ptr %i.dk, align 8, !tbaa !42
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.es, i64 %indvars.iv396.a ; 4 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !4
  store i32 %i.eu, ptr %i.j, align 4, !tbaa !4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !4
  store i32 %i.ew, ptr %i.ap, align 4, !tbaa !4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !4
  store i32 %i.ey, ptr %i.aq, align 4, !tbaa !4
  %i.ez = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.j, ptr noundef %6, ptr noundef %8, ptr noundef nonnull %i.k) #6 ; 0 uses
  %i.fa = load i32, ptr %i.bz, align 4, !tbaa !4
  %i.fb = load i32, ptr %i.j, align 4, !tbaa !4
  %i.fc = add nsw i32 %i.fb, %i.fa
  store i32 %i.fc, ptr %i.j, align 4, !tbaa !4
  %i.fd = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.fe = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ff = add nsw i32 %i.fe, %i.fd
  store i32 %i.ff, ptr %i.ap, align 4, !tbaa !4
  %i.fg = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.fh = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.fi = add nsw i32 %i.fh, %i.fg
  store i32 %i.fi, ptr %i.aq, align 4, !tbaa !4
  %i.fj = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.et, ptr noundef %8, ptr noundef nonnull %i.i) #6 ; 0 uses
  %i.fk = load i32, ptr %i.j, align 4, !tbaa !4
  %i.fl = load i32, ptr %i.dn, align 4, !tbaa !4  ; 2 uses
  %i.fm = sub i32 %i.fk, %i.fl
  %i.fn = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.fo = load i32, ptr %i.ek, align 4, !tbaa !4  ; 2 uses
  %i.fp = sub i32 %i.fn, %i.fo
  %i.fq = load i32, ptr %i.em, align 4, !tbaa !4
  %i.fr = sub nsw i32 %i.fq, %i.fo                ; 3 uses
  %i.fs = icmp sgt i32 %i.fr, -1                  ; 2 uses
  br i1 %i.fs, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ft = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.fu = load i32, ptr %i.en, align 4, !tbaa !4
  %i.fv = sub nsw i32 %i.ft, %i.fu
  %i.fw = add nuw nsw i32 %i.fr, 1
  %i.fx = mul nsw i32 %i.fv, %i.fw
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fy = phi i32 [ %i.fx, %bb.m ], [ 0, %bb.l ]
  %i.fz = load i32, ptr %i.el, align 4, !tbaa !4
  %i.ga = sub nsw i32 %i.fz, %i.fl                ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1                  ; 2 uses
  %i.gc = add nsw i32 %i.fp, %i.fy
  %i.gd = add nuw nsw i32 %i.ga, 1                ; 3 uses
  %i.ge = mul nsw i32 %i.gd, %i.gc
  %i.gf = select i1 %i.gb, i32 %i.ge, i32 0
  %i.gg = add nsw i32 %i.fm, %i.gf
  %i.gh = load i32, ptr %i.k, align 4, !tbaa !4
  %i.gi = load i32, ptr %i.dq, align 4, !tbaa !4  ; 2 uses
  %i.gj = sub i32 %i.gh, %i.gi
  %i.gk = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.gl = load i32, ptr %i.eo, align 4, !tbaa !4  ; 2 uses
  %i.gm = sub i32 %i.gk, %i.gl
  %i.gn = load i32, ptr %i.eq, align 4, !tbaa !4
  %i.go = sub nsw i32 %i.gn, %i.gl                ; 3 uses
  %i.gp = icmp sgt i32 %i.go, -1                  ; 2 uses
  br i1 %i.gp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gq = load i32, ptr %i.as, align 4, !tbaa !4
  %i.gr = load i32, ptr %i.er, align 4, !tbaa !4
  %i.gs = sub nsw i32 %i.gq, %i.gr
  %i.gt = add nuw nsw i32 %i.go, 1
  %i.gu = mul nsw i32 %i.gs, %i.gt
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gv = phi i32 [ %i.gu, %bb.o ], [ 0, %bb.n ]
  %i.gw = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.gx = sub i32 %i.gw, %i.gi                    ; 2 uses
  %i.gy = icmp sgt i32 %i.gx, -1                  ; 2 uses
  %i.gz = add nsw i32 %i.gm, %i.gv
  %i.ha = add i32 %i.gx, 1                        ; 2 uses
  %i.hb = mul nsw i32 %i.ha, %i.gz
  %i.hc = select i1 %i.gy, i32 %i.hb, i32 0
  %i.hd = add nsw i32 %i.gj, %i.hc
  %i.he = load i32, ptr %8, align 4, !tbaa !4     ; 3 uses
  br i1 %i.gb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hf = load i32, ptr %i.at, align 4, !tbaa !4
  %i.hg = mul nsw i32 %i.hf, %i.gd
  %i.hh = load i32, ptr %i.au, align 4, !tbaa !4
  %i.hi = mul nsw i32 %i.hh, %i.gd
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hj = phi i32 [ %i.hg, %bb.q ], [ 0, %bb.p ]  ; 2 uses
  %i.hk = phi i32 [ %i.hi, %bb.q ], [ 0, %bb.p ]
  %i.hl = load i32, ptr %i.i, align 4, !tbaa !4   ; 9 uses
  %i.hm = load i32, ptr %i.av, align 4, !tbaa !4  ; 5 uses
  %i.hn = load i32, ptr %i.aw, align 4, !tbaa !4  ; 3 uses
  %.0275 = call i32 @llvm.smax.i32(i32 %i.hm, i32 %i.hl)
  %.1276 = call i32 @llvm.smax.i32(i32 %i.hn, i32 %.0275)
  %i.ho = icmp sgt i32 %.1276, 0
  br i1 %i.ho, label %.preheader326.lr.ph, label %._crit_edge354.split

.preheader326.lr.ph:                              ; preds = %bb.r
  %i.hp = select i1 %i.gy, i32 %i.ha, i32 0       ; 3 uses
  %factor.op.mul = mul i32 %i.hm, %i.hp
  %factor.op.mul353 = mul i32 %i.hm, %i.hj
  %i.hq = add nuw nsw i32 %i.go, 1
  %i.hr = mul nsw i32 %i.hp, %i.hq
  %i.hs = select i1 %i.gp, i32 %i.hr, i32 0
  %i.ht = add nuw nsw i32 %i.fr, 1
  %i.hu = mul nsw i32 %i.hk, %i.ht
  %i.hv = select i1 %i.fs, i32 %i.hu, i32 0
  %9 = mul i32 %i.hl, %i.he
  %i.hw = icmp sgt i32 %i.hn, 0
  %i.hx = icmp sgt i32 %i.hm, 0
  %10 = sub i32 %i.hj, %9
  %11 = sub i32 %i.hp, %i.hl
  %12 = sub i32 %i.hv, %factor.op.mul353
  %13 = sub i32 %i.hs, %factor.op.mul
  %brmerge.not420 = and i1 %i.hw, %i.hx
  %i.hy = icmp sgt i32 %i.hl, 0
  %or.cond = and i1 %brmerge.not420, %i.hy
  br i1 %or.cond, label %.preheader325.us.us.preheader, label %._crit_edge354.split

.preheader325.us.us.preheader:                    ; preds = %.preheader326.lr.ph
  %i.hz = sext i32 %i.he to i64                   ; 5 uses
  %i.ia = zext nneg i32 %i.hl to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.hl, 7
  %ident.check.not = icmp eq i32 %i.he, 1
  %or.cond425 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.ia, 2147483644              ; 5 uses
  %i.ib = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ia
  br label %.preheader325.us.us

.preheader325.us.us:                              ; preds = %.preheader325.us.us.preheader, %._crit_edge340.split.us.us.us
  %.0287349.us.us = phi i32 [ %i.jp, %._crit_edge340.split.us.us.us ], [ %i.hd, %.preheader325.us.us.preheader ]
  %.0290348.us.us = phi i32 [ %i.jo, %._crit_edge340.split.us.us.us ], [ %i.gg, %.preheader325.us.us.preheader ]
  %.1300347.us.us = phi i32 [ %i.jq, %._crit_edge340.split.us.us.us ], [ 0, %.preheader325.us.us.preheader ]
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge334.us.us.us, %.preheader325.us.us
  %.1288339.us.us.us = phi i32 [ %.0287349.us.us, %.preheader325.us.us ], [ %i.jm, %._crit_edge334.us.us.us ]
  %.1291338.us.us.us = phi i32 [ %.0290348.us.us, %.preheader325.us.us ], [ %i.jl, %._crit_edge334.us.us.us ]
  %.1302337.us.us.us = phi i32 [ 0, %.preheader325.us.us ], [ %i.jn, %._crit_edge334.us.us.us ]
  %14 = sext i32 %.1288339.us.us.us to i64        ; 5 uses
  %15 = sext i32 %.1291338.us.us.us to i64        ; 5 uses
  br i1 %or.cond425, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us
  %i.ic = add nsw i64 %i.ed, %14
  %i.id = shl nsw i64 %i.ic, 3
  %i.ie = add i64 %i.id, %i.ei
  %i.if = add nsw i64 %i.dv, %15
  %i.ig = shl nsw i64 %i.if, 3
  %i.ih = add i64 %i.ig, %i.ej
  %i.ii = sub i64 %i.ih, %i.ie
  %diff.check = icmp ugt i64 %i.ii, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ij = add nsw i64 %n.vec, %15                 ; 2 uses
  %i.ik = add nsw i64 %n.vec, %14                 ; 2 uses
  %invariant.gep435 = getelementptr [8 x i8], ptr %i.dw, i64 %15
  %invariant.gep437 = getelementptr [8 x i8], ptr %i.ee, i64 %14
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep436 = getelementptr [8 x i8], ptr %invariant.gep435, i64 %index ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %gep436, i64 16
  %wide.load = load <2 x double>, ptr %gep436, align 8, !tbaa !51
  %wide.load422 = load <2 x double>, ptr %i.il, align 8, !tbaa !51
  %gep438 = getelementptr [8 x i8], ptr %invariant.gep437, i64 %index ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %gep438, i64 16
  store <2 x double> %wide.load, ptr %gep438, align 8, !tbaa !51
  store <2 x double> %wide.load422, ptr %i.im, align 8, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.in = icmp eq i64 %index.next, %n.vec
  br i1 %i.in, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge334.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us.us, %middle.block
  %indvars.iv388.ph = phi i64 [ %15, %vector.memcheck ], [ %15, %.preheader.us.us.us ], [ %i.ij, %middle.block ] ; 2 uses
  %indvars.iv386.ph = phi i64 [ %14, %vector.memcheck ], [ %14, %.preheader.us.us.us ], [ %i.ik, %middle.block ] ; 2 uses
  %.1304330.us.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us.us ], [ %i.ib, %middle.block ] ; 4 uses
  %i.io = sub i32 %i.hl, %.1304330.us.us.us.ph
  %xtraiter431 = and i32 %i.io, 3                 ; 2 uses
  %lcmp.mod432.not = icmp eq i32 %xtraiter431, 0
  br i1 %lcmp.mod432.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv388.prol = phi i64 [ %indvars.iv.next389.prol, %scalar.ph.prol ], [ %indvars.iv388.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv386.prol = phi i64 [ %indvars.iv.next387.prol, %scalar.ph.prol ], [ %indvars.iv386.ph, %scalar.ph.preheader ] ; 2 uses
  %.1304330.us.us.us.prol = phi i32 [ %i.is, %scalar.ph.prol ], [ %.1304330.us.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv388.prol
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !51
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %indvars.iv386.prol
  store double %i.iq, ptr %i.ir, align 8, !tbaa !51
  %indvars.iv.next389.prol = add nsw i64 %indvars.iv388.prol, %i.hz ; 3 uses
  %indvars.iv.next387.prol = add nsw i64 %indvars.iv386.prol, 1 ; 3 uses
  %i.is = add nuw nsw i32 %.1304330.us.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter431
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !56

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next389.lcssa427.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next389.prol, %scalar.ph.prol ]
  %indvars.iv.next387.lcssa426.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next387.prol, %scalar.ph.prol ]
  %indvars.iv388.unr = phi i64 [ %indvars.iv388.ph, %scalar.ph.preheader ], [ %indvars.iv.next389.prol, %scalar.ph.prol ]
  %indvars.iv386.unr = phi i64 [ %indvars.iv386.ph, %scalar.ph.preheader ], [ %indvars.iv.next387.prol, %scalar.ph.prol ]
  %.1304330.us.us.us.unr = phi i32 [ %.1304330.us.us.us.ph, %scalar.ph.preheader ], [ %i.is, %scalar.ph.prol ]
  %i.it = sub i32 %.1304330.us.us.us.ph, %i.hl
  %i.iu = icmp ugt i32 %i.it, -4
  br i1 %i.iu, label %._crit_edge334.us.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv388 = phi i64 [ %indvars.iv.next389.3, %scalar.ph ], [ %indvars.iv388.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %indvars.iv386 = phi i64 [ %indvars.iv.next387.3, %scalar.ph ], [ %indvars.iv386.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1304330.us.us.us = phi i32 [ %i.jk, %scalar.ph ], [ %.1304330.us.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv388
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !51
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %indvars.iv386
  store double %i.iw, ptr %i.ix, align 8, !tbaa !51
  %indvars.iv.next389 = add nsw i64 %indvars.iv388, %i.hz ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv.next389
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !51
  %i.ja = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv386
  %i.jb = getelementptr i8, ptr %i.ja, i64 8
  store double %i.iz, ptr %i.jb, align 8, !tbaa !51
  %indvars.iv.next389.1 = add nsw i64 %indvars.iv.next389, %i.hz ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv.next389.1
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !51
  %i.je = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv386
  %i.jf = getelementptr i8, ptr %i.je, i64 16
  store double %i.jd, ptr %i.jf, align 8, !tbaa !51
  %indvars.iv.next389.2 = add nsw i64 %indvars.iv.next389.1, %i.hz ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv.next389.2
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !51
  %i.ji = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv386
  %i.jj = getelementptr i8, ptr %i.ji, i64 24
  store double %i.jh, ptr %i.jj, align 8, !tbaa !51
  %indvars.iv.next389.3 = add nsw i64 %indvars.iv.next389.2, %i.hz ; 2 uses
  %indvars.iv.next387.3 = add nsw i64 %indvars.iv386, 4 ; 2 uses
  %i.jk = add nuw nsw i32 %.1304330.us.us.us, 4   ; 2 uses
  %exitcond393.not.3 = icmp eq i32 %i.jk, %i.hl
  br i1 %exitcond393.not.3, label %._crit_edge334.us.us.us, label %scalar.ph, !llvm.loop !58

._crit_edge334.us.us.us:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next389.lcssa = phi i64 [ %i.ij, %middle.block ], [ %indvars.iv.next389.lcssa427.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next389.3, %scalar.ph ]
  %indvars.iv.next387.lcssa = phi i64 [ %i.ik, %middle.block ], [ %indvars.iv.next387.lcssa426.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next387.3, %scalar.ph ]
  %16 = trunc nsw i64 %indvars.iv.next389.lcssa to i32
  %17 = trunc nsw i64 %indvars.iv.next387.lcssa to i32
  %i.jl = add nsw i32 %10, %16                    ; 2 uses
  %i.jm = add nsw i32 %11, %17                    ; 2 uses
  %i.jn = add nuw nsw i32 %.1302337.us.us.us, 1   ; 2 uses
  %exitcond394.not = icmp eq i32 %i.jn, %i.hm
  br i1 %exitcond394.not, label %._crit_edge340.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !59

._crit_edge340.split.us.us.us:                    ; preds = %._crit_edge334.us.us.us
  %i.jo = add nsw i32 %12, %i.jl
  %i.jp = add nsw i32 %13, %i.jm
  %i.jq = add nuw nsw i32 %.1300347.us.us, 1      ; 2 uses
  %exitcond395.not = icmp eq i32 %i.jq, %i.hn
  br i1 %exitcond395.not, label %._crit_edge354.split, label %.preheader325.us.us, !llvm.loop !60

._crit_edge354.split:                             ; preds = %._crit_edge340.split.us.us.us, %.preheader326.lr.ph, %bb.r
  %indvars.iv.next397 = add nuw nsw i64 %indvars.iv396.a, 1 ; 2 uses
  %i.jr = load i32, ptr %i.ef, align 8, !tbaa !50
  %i.js = sext i32 %i.jr to i64
  %i.jt = icmp slt i64 %indvars.iv.next397, %i.js
  br i1 %i.jt, label %bb.l, label %._crit_edge361.loopexit, !llvm.loop !61

._crit_edge361.loopexit:                          ; preds = %._crit_edge354.split
  %.pre = load i32, ptr %i.de, align 8, !tbaa !37
  br label %._crit_edge361

._crit_edge361:                                   ; preds = %._crit_edge361.loopexit, %.lr.ph364
  %i.ju = phi i32 [ %.pre, %._crit_edge361.loopexit ], [ %i.dh, %.lr.ph364 ] ; 2 uses
  %indvars.iv.next400 = add nuw nsw i64 %indvars.iv399, 1 ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp slt i64 %indvars.iv.next400, %i.jv
  br i1 %i.jw, label %.lr.ph364, label %._crit_edge365, !llvm.loop !62

._crit_edge365:                                   ; preds = %._crit_edge361, %bb.k
  br i1 %i.cw, label %bb.h, label %bb.s, !llvm.loop !63

bb.s:                                             ; preds = %._crit_edge365
  %i.jx = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.jy = call i32 @hypre_ComputePkgDestroy(ptr noundef %i.jx) #6 ; 0 uses
  %indvars.iv.next403 = add nuw nsw i64 %indvars.iv402, 1 ; 2 uses
  %exitcond406.not = icmp eq i64 %indvars.iv.next403, %wide.trip.count405
  br i1 %exitcond406.not, label %._crit_edge370, label %bb.b, !llvm.loop !64

._crit_edge370:                                   ; preds = %bb.s, %bb.a
  %i.jz = call i32 @hypre_SMGRelaxSetNewMatrixStencil(ptr noundef %0, ptr noundef nonnull %i.t) #6 ; 0 uses
  %i.ka = call i32 @hypre_StructStencilDestroy(ptr noundef %i.ac) #6 ; 0 uses
  %i.kb = call i32 @hypre_StructMatrixAssemble(ptr noundef %4) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

declare i32 @hypre_SMGRelaxSetMaxIter(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_SMGRelaxSetNumPreSpaces(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_SMGRelaxSetNumRegSpaces(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixCreateMask(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorClearGhostValues(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructVectorSetConstantValues(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @hypre_SMGRelaxSetNewMatrixStencil(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_SMGRelaxSetup(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_SMGRelax(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_CreateComputeInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ProjectBoxArrayArray(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgCreate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_InitializeIndtComputations(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_FinalizeIndtComputations(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMapFineToCoarse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ComputePkgDestroy(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_StructMatrixAssemble(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 24}
!9 = !{!"hypre_StructMatrix_struct", !5, i64 0, !10, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !13, i64 40, !14, i64 48, !5, i64 56, !5, i64 60, !15, i64 64, !5, i64 72, !17, i64 80, !6, i64 88, !5, i64 112, !18, i64 120, !5, i64 128}
!10 = !{!"p1 _ZTS23hypre_StructGrid_struct", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS26hypre_StructStencil_struct", !11, i64 0}
!13 = !{!"p1 _ZTS21hypre_BoxArray_struct", !11, i64 0}
!14 = !{!"p1 double", !11, i64 0}
!15 = !{!"p2 int", !16, i64 0}
!16 = !{!"any p2 pointer", !11, i64 0}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!"p1 _ZTS20hypre_CommPkg_struct", !11, i64 0}
!19 = !{!20, !5, i64 16}
!20 = !{!"hypre_StructStencil_struct", !17, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!21 = !{!9, !5, i64 0}
!22 = !{!9, !10, i64 8}
!23 = !{!20, !17, i64 0}
!24 = !{!20, !5, i64 8}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !11, i64 0}
!29 = !{!15, !15, i64 0}
!30 = !{!31, !13, i64 16}
!31 = !{!"hypre_StructVector_struct", !5, i64 0, !10, i64 8, !13, i64 16, !14, i64 24, !5, i64 32, !5, i64 36, !17, i64 40, !6, i64 48, !5, i64 72, !5, i64 76}
!32 = !{!31, !14, i64 24}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS23hypre_ComputePkg_struct", !11, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTS23hypre_CommHandle_struct", !11, i64 0}
!37 = !{!38, !5, i64 8}
!38 = !{!"hypre_BoxArrayArray_struct", !39, i64 0, !5, i64 8}
!39 = !{!"p2 _ZTS21hypre_BoxArray_struct", !16, i64 0}
!40 = !{!38, !39, i64 0}
!41 = !{!13, !13, i64 0}
!42 = !{!43, !44, i64 0}
!43 = !{!"hypre_BoxArray_struct", !44, i64 0, !5, i64 8, !5, i64 12}
!44 = !{!"p1 _ZTS16hypre_Box_struct", !11, i64 0}
!45 = !{!9, !13, i64 40}
!46 = !{!31, !17, i64 40}
!47 = !{!9, !14, i64 48}
!48 = !{!9, !15, i64 64}
!49 = !{!17, !17, i64 0}
!50 = !{!43, !5, i64 8}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !6, i64 0}
!53 = distinct !{!53, !26, !54, !55}
!54 = !{!"llvm.loop.isvectorized", i32 1}
!55 = !{!"llvm.loop.unroll.runtime.disable"}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !26, !54}
!59 = distinct !{!59, !26}
!60 = distinct !{!60, !26}
!61 = distinct !{!61, !26}
!62 = distinct !{!62, !26}
!63 = distinct !{!63, !26}
!64 = distinct !{!64, !26}
end_hunk_0
