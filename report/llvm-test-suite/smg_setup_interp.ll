Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/smg_setup_interp?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@hypre_SMGSetupInterpOp:bb.a
  %i.r = load i32, ptr %i.q, align 8, !tbaa !37   ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !37   ; 2 uses
  %i.x = tail call i32 @hypre_SMGRelaxSetMaxIter(ptr noundef %0, i32 noundef 1) #5 ; 0 uses
  %i.y = tail call i32 @hypre_SMGRelaxSetNumPreSpaces(ptr noundef %0, i32 noundef 0) #5 ; 0 uses
  %i.z = tail call i32 @hypre_SMGRelaxSetNumRegSpaces(ptr noundef %0, i32 noundef 1) #5 ; 0 uses
  %i.aa = tail call i32 @hypre_SMGRelaxSetRegSpaceRank(ptr noundef %0, i32 noundef 0, i32 noundef 1) #5 ; 0 uses
  %i.ab = tail call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 12) #5 ; 4 uses
  %i.ac = tail call ptr @hypre_StructStencilCreate(i32 noundef 1, i32 noundef 1, ptr noundef %i.ab) #5 ; 2 uses
  %i.ad = icmp sgt i32 %i.w, 0
  br i1 %i.ad, label %.lr.ph357, label %._crit_edge358

.lr.ph357:                                        ; preds = %bb.a
  %i.ae = shl i32 %i.r, 2
  %i.af = icmp sgt i32 %i.r, 0
  %i.ag = sext i32 %5 to i64                      ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %i.ag ; 3 uses
  %invariant.gep359 = getelementptr [4 x i8], ptr %i.u, i64 %i.ag
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %wide.trip.count391 = zext nneg i32 %i.w to i64
  %wide.trip.count = zext i32 %i.r to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ax = icmp eq i32 %i.r, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod416 = trunc i32 %i.r to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph357, %bb.s
  %indvars.iv388 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next389, %bb.s ] ; 4 uses
  %i.ay = call ptr @hypre_MAlloc(i32 noundef %i.ae) #5 ; 5 uses
  br i1 %i.af, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %gep360 = getelementptr [12 x i8], ptr %invariant.gep359, i64 %indvars.iv388 ; 3 uses
  %.pre393 = load i32, ptr %gep360, align 4, !tbaa !7 ; 2 uses
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph, %bb.f
  %i.az = phi i32 [ %i.bl, %bb.f ], [ %.pre393, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.f ], [ 0, %.lr.ph ] ; 4 uses
  %.0297321 = phi i32 [ %.1298.1, %bb.f ], [ 0, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %bb.f ], [ 0, %.lr.ph ]
  %gep = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ba = load i32, ptr %gep, align 4, !tbaa !7
  %.not = icmp eq i32 %i.ba, %i.az
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.new
  %i.bb = sext i32 %.0297321 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bd, ptr %i.bc, align 4, !tbaa !7
  %i.be = add nsw i32 %.0297321, 1
  %.pre = load i32, ptr %gep360, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.new, %bb.c
  %i.bf = phi i32 [ %.pre, %bb.c ], [ %i.az, %.lr.ph.new ] ; 2 uses
  %.1298 = phi i32 [ %i.be, %bb.c ], [ %.0297321, %.lr.ph.new ] ; 3 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.bg = load i32, ptr %gep.1, align 4, !tbaa !7
  %.not.1 = icmp eq i32 %i.bg, %i.bf
  br i1 %.not.1, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = sext i32 %.1298 to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !7
  %i.bk = add nsw i32 %.1298, 1
  %.pre.1 = load i32, ptr %gep360, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bl = phi i32 [ %.pre.1, %bb.e ], [ %i.bf, %bb.d ] ; 2 uses
  %.1298.1 = phi i32 [ %i.bk, %bb.e ], [ %.1298, %bb.d ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.new, !llvm.loop !24

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi i32 [ %.pre393, %.lr.ph ], [ %i.bl, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.0297321.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1298.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod416)
  %gep.epil = getelementptr [12 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.bm = load i32, ptr %gep.epil, align 4, !tbaa !7
  %.not.epil = icmp eq i32 %i.bm, %.epil.init
  br i1 %.not.epil, label %._crit_edge, label %bb.g

bb.g:                                             ; preds = %.epil.preheader
  %i.bn = sext i32 %.0297321.epil.init to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.bn
  %i.bp = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !7
  %i.bq = add nsw i32 %.0297321.epil.init, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.g, %.epil.preheader, %bb.b
  %.0297.lcssa = phi i32 [ 0, %bb.b ], [ %.1298.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.bq, %bb.g ], [ %.0297321.epil.init, %.epil.preheader ]
  %i.br = call ptr @hypre_StructMatrixCreateMask(ptr noundef %1, i32 noundef %.0297.lcssa, ptr noundef %i.ay) #5 ; 3 uses
  call void @hypre_Free(ptr noundef %i.ay) #5
  %i.bs = call i32 @hypre_StructVectorClearGhostValues(ptr noundef %3) #5 ; 0 uses
  %i.bt = call i32 @hypre_StructVectorSetConstantValues(ptr noundef %3, double noundef 1.000000e+00) #5 ; 0 uses
  %i.bu = call i32 @hypre_StructVectorSetConstantValues(ptr noundef %2, double noundef 0.000000e+00) #5 ; 0 uses
  %i.bv = call i32 @hypre_SMGRelaxSetNewMatrixStencil(ptr noundef %0, ptr noundef nonnull %i.t) #5 ; 0 uses
  %i.bw = call i32 @hypre_SMGRelaxSetup(ptr noundef %0, ptr noundef %i.br, ptr noundef %2, ptr noundef %3) #5 ; 0 uses
  %i.bx = call i32 @hypre_SMGRelax(ptr noundef %0, ptr noundef %i.br, ptr noundef %2, ptr noundef %3) #5 ; 0 uses
  %i.by = call i32 @hypre_StructMatrixDestroy(ptr noundef %i.br) #5 ; 0 uses
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %indvars.iv388 ; 4 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !7
  store i32 %i.ca, ptr %i.ab, align 4, !tbaa !7
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 4 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  store i32 %i.cc, ptr %i.ah, align 4, !tbaa !7
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !7
  store i32 %i.ce, ptr %i.ai, align 4, !tbaa !7
  %i.cf = call i32 @hypre_CreateComputeInfo(ptr noundef %i.m, ptr noundef %i.ac, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #5 ; 0 uses
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.ch = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.cg, ptr noundef %7, ptr noundef %8) #5 ; 0 uses
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.cj = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ci, ptr noundef %7, ptr noundef %8) #5 ; 0 uses
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.cl = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.ck, ptr noundef %6, ptr noundef %8) #5 ; 0 uses
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.cn = call i32 @hypre_ProjectBoxArrayArray(ptr noundef %i.cm, ptr noundef %6, ptr noundef %8) #5 ; 0 uses
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !40
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.cq = load ptr, ptr %i.d, align 8, !tbaa !41
  %i.cr = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.cu = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.cv = call i32 @hypre_ComputePkgCreate(ptr noundef %i.co, ptr noundef %i.cp, ptr noundef %8, ptr noundef %8, ptr noundef %i.cq, ptr noundef %i.cr, ptr noundef %i.cs, ptr noundef %i.ct, ptr noundef %8, ptr noundef %i.m, ptr noundef %i.cu, i32 noundef 1, ptr noundef nonnull %i.a) #5 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %._crit_edge353
  %i.cw = phi i1 [ true, %._crit_edge ], [ false, %._crit_edge353 ]
  %.0285354 = phi i1 [ false, %._crit_edge ], [ true, %._crit_edge353 ]
  br i1 %.0285354, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.cz = call i32 @hypre_InitializeIndtComputations(ptr noundef %i.cy, ptr noundef %i.cx, ptr noundef nonnull %i.h) #5 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.da = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.db = call i32 @hypre_FinalizeIndtComputations(ptr noundef %i.da) #5 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink406 = phi i64 [ 16, %bb.j ], [ 8, %bb.i ]
  %i.dc = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sink406
  %.2296 = load ptr, ptr %i.dd, align 8, !tbaa !40 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2296, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !51 ; 2 uses
  %i.dg = icmp sgt i32 %i.df, 0
  br i1 %i.dg, label %.lr.ph352, label %._crit_edge353

.lr.ph352:                                        ; preds = %bb.k, %._crit_edge349
  %i.dh = phi i32 [ %i.jz, %._crit_edge349 ], [ %i.df, %bb.k ]
  %indvars.iv385 = phi i64 [ %indvars.iv.next386, %._crit_edge349 ], [ 0, %bb.k ] ; 6 uses
  %i.di = load ptr, ptr %.2296, align 8, !tbaa !52
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv385
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !53 ; 2 uses
  %i.dl = load ptr, ptr %i.aj, align 8, !tbaa !43
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !56
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.dm, i64 %indvars.iv385 ; 5 uses
  %i.do = load ptr, ptr %i.al, align 8, !tbaa !57
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %indvars.iv385 ; 5 uses
  %i.dr = load ptr, ptr %i.ak, align 8, !tbaa !44 ; 2 uses
  %9 = ptrtoaddr ptr %i.dr to i64
  %i.ds = load ptr, ptr %i.am, align 8, !tbaa !58
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %indvars.iv385
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !7
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %i.dv ; 6 uses
  %i.dx = load ptr, ptr %i.an, align 8, !tbaa !59 ; 2 uses
  %10 = ptrtoaddr ptr %i.dx to i64
  %i.dy = load ptr, ptr %i.ao, align 8, !tbaa !60
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv385
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !61
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv388
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !7
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.ed ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !62
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.lr.ph348, label %._crit_edge349

.lr.ph348:                                        ; preds = %.lr.ph352
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.en = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph348, %.critedge
  %indvars.iv382 = phi i64 [ 0, %.lr.ph348 ], [ %indvars.iv.next383, %.critedge ] ; 2 uses
  %i.eq = load ptr, ptr %i.dk, align 8, !tbaa !56
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.eq, i64 %indvars.iv382 ; 4 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7
  store i32 %i.es, ptr %i.j, align 4, !tbaa !7
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !7
  store i32 %i.eu, ptr %i.ap, align 4, !tbaa !7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !7
  store i32 %i.ew, ptr %i.aq, align 4, !tbaa !7
  %i.ex = call i32 @hypre_StructMapFineToCoarse(ptr noundef nonnull %i.j, ptr noundef %6, ptr noundef %8, ptr noundef nonnull %i.k) #5 ; 0 uses
  %i.ey = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.ez = load i32, ptr %i.j, align 4, !tbaa !7
  %i.fa = add nsw i32 %i.ez, %i.ey
  store i32 %i.fa, ptr %i.j, align 4, !tbaa !7
  %i.fb = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.fc = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.fd = add nsw i32 %i.fc, %i.fb
  store i32 %i.fd, ptr %i.ap, align 4, !tbaa !7
  %i.fe = load i32, ptr %i.cd, align 4, !tbaa !7
  %i.ff = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.fg = add nsw i32 %i.ff, %i.fe
  store i32 %i.fg, ptr %i.aq, align 4, !tbaa !7
  %i.fh = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %i.er, ptr noundef %8, ptr noundef nonnull %i.i) #5 ; 0 uses
  %i.fi = load i32, ptr %i.j, align 4, !tbaa !7
  %i.fj = load i32, ptr %i.dn, align 4, !tbaa !7  ; 2 uses
  %i.fk = sub i32 %i.fi, %i.fj
  %i.fl = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.fm = load i32, ptr %i.ei, align 4, !tbaa !7  ; 2 uses
  %i.fn = sub i32 %i.fl, %i.fm
  %i.fo = load i32, ptr %i.ek, align 4, !tbaa !7
  %i.fp = sub nsw i32 %i.fo, %i.fm                ; 3 uses
  %i.fq = icmp sgt i32 %i.fp, -1                  ; 2 uses
  br i1 %i.fq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.fs = load i32, ptr %i.el, align 4, !tbaa !7
  %i.ft = sub nsw i32 %i.fr, %i.fs
  %i.fu = add nuw nsw i32 %i.fp, 1
  %i.fv = mul nsw i32 %i.ft, %i.fu
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fw = phi i32 [ %i.fv, %bb.m ], [ 0, %bb.l ]
  %i.fx = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.fy = sub nsw i32 %i.fx, %i.fj                ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1                  ; 2 uses
  %i.ga = add nsw i32 %i.fn, %i.fw
  %i.gb = add nuw nsw i32 %i.fy, 1                ; 3 uses
  %i.gc = mul nsw i32 %i.gb, %i.ga
  %i.gd = select i1 %i.fz, i32 %i.gc, i32 0
  %i.ge = add nsw i32 %i.fk, %i.gd
  %i.gf = load i32, ptr %i.k, align 4, !tbaa !7
  %i.gg = load i32, ptr %i.dq, align 4, !tbaa !7  ; 2 uses
  %i.gh = sub i32 %i.gf, %i.gg
  %i.gi = load i32, ptr %i.ar, align 4, !tbaa !7
  %i.gj = load i32, ptr %i.em, align 4, !tbaa !7  ; 2 uses
  %i.gk = sub i32 %i.gi, %i.gj
  %i.gl = load i32, ptr %i.eo, align 4, !tbaa !7
  %i.gm = sub nsw i32 %i.gl, %i.gj                ; 3 uses
  %i.gn = icmp sgt i32 %i.gm, -1                  ; 2 uses
  br i1 %i.gn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.go = load i32, ptr %i.as, align 4, !tbaa !7
  %i.gp = load i32, ptr %i.ep, align 4, !tbaa !7
  %i.gq = sub nsw i32 %i.go, %i.gp
  %i.gr = add nuw nsw i32 %i.gm, 1
  %i.gs = mul nsw i32 %i.gq, %i.gr
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gt = phi i32 [ %i.gs, %bb.o ], [ 0, %bb.n ]
  %i.gu = load i32, ptr %i.en, align 4, !tbaa !7
  %i.gv = sub i32 %i.gu, %i.gg                    ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1                  ; 2 uses
  %i.gx = add nsw i32 %i.gk, %i.gt
  %i.gy = add i32 %i.gv, 1                        ; 2 uses
  %i.gz = mul nsw i32 %i.gy, %i.gx
  %i.ha = select i1 %i.gw, i32 %i.gz, i32 0
  %i.hb = add nsw i32 %i.gh, %i.ha
  %i.hc = load i32, ptr %8, align 4, !tbaa !7     ; 3 uses
  br i1 %i.fz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hd = load i32, ptr %i.at, align 4, !tbaa !7
  %i.he = mul nsw i32 %i.hd, %i.gb
  %i.hf = load i32, ptr %i.au, align 4, !tbaa !7
  %i.hg = mul nsw i32 %i.hf, %i.gb
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.hh = phi i32 [ %i.he, %bb.q ], [ 0, %bb.p ]  ; 2 uses
  %i.hi = phi i32 [ %i.hg, %bb.q ], [ 0, %bb.p ]
  %i.hj = load i32, ptr %i.i, align 4, !tbaa !7   ; 8 uses
  %i.hk = load i32, ptr %i.av, align 4, !tbaa !7  ; 4 uses
  %i.hl = load i32, ptr %i.aw, align 4, !tbaa !7  ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, 0
  br i1 %i.hm, label %.preheader319.lr.ph, label %.critedge

.preheader319.lr.ph:                              ; preds = %bb.r
  %i.hn = select i1 %i.gw, i32 %i.gy, i32 0       ; 3 uses
  %i.ho = add nuw nsw i32 %i.gm, 1
  %i.hp = mul nsw i32 %i.hn, %i.ho
  %i.hq = select i1 %i.gn, i32 %i.hp, i32 0
  %i.hr = add nuw nsw i32 %i.fp, 1
  %i.hs = mul nsw i32 %i.hi, %i.hr
  %i.ht = select i1 %i.fq, i32 %i.hs, i32 0
  %factor.op.mul338 = mul i32 %i.hj, %i.hc
  %i.hu = icmp sgt i32 %i.hk, 0
  %i.hv = sub i32 %i.hh, %factor.op.mul338
  %i.hw = sub i32 %i.hn, %i.hj
  %i.hx = mul i32 %i.hk, %i.hh
  %i.hy = sub i32 %i.ht, %i.hx
  %i.hz = mul i32 %i.hk, %i.hn
  %i.ia = sub i32 %i.hq, %i.hz
  %i.ib = icmp sgt i32 %i.hj, 0
  %or.cond407 = and i1 %i.hu, %i.ib
  br i1 %or.cond407, label %.preheader319.us.preheader, label %.critedge

.preheader319.us.preheader:                       ; preds = %.preheader319.lr.ph
  %i.ic = sext i32 %i.hc to i64                   ; 5 uses
  %i.id = zext nneg i32 %i.hj to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.hj, 7
  %ident.check.not = icmp eq i32 %i.hc, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.id, 2147483644              ; 5 uses
  %i.ie = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.id
  br label %.preheader319.us

.preheader319.us:                                 ; preds = %.preheader319.us.preheader, %._crit_edge334.split.us.us
  %.1278343.us = phi i32 [ %i.jv, %._crit_edge334.split.us.us ], [ 0, %.preheader319.us.preheader ]
  %.0289342.us = phi i32 [ %i.jt, %._crit_edge334.split.us.us ], [ %i.ge, %.preheader319.us.preheader ]
  %.0291341.us = phi i32 [ %i.ju, %._crit_edge334.split.us.us ], [ %i.hb, %.preheader319.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge328.us.us, %.preheader319.us
  %.1280333.us.us = phi i32 [ 0, %.preheader319.us ], [ %i.js, %._crit_edge328.us.us ]
  %.1290332.us.us = phi i32 [ %.0289342.us, %.preheader319.us ], [ %i.jq, %._crit_edge328.us.us ]
  %.1292331.us.us = phi i32 [ %.0291341.us, %.preheader319.us ], [ %i.jr, %._crit_edge328.us.us ]
  %i.if = sext i32 %.1290332.us.us to i64         ; 5 uses
  %i.ig = sext i32 %.1292331.us.us to i64         ; 5 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us
  %11 = add nsw i64 %i.if, %i.dv
  %i.ih = shl nsw i64 %11, 3
  %12 = add i64 %i.ih, %9
  %i.ii = add nsw i64 %i.ig, %i.ed
  %i.ij = shl nsw i64 %i.ii, 3
  %i.ik = add i64 %i.ij, %10
  %i.il = sub i64 %12, %i.ik
  %diff.check = icmp ugt i64 %i.il, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.im = add nsw i64 %n.vec, %i.ig               ; 2 uses
  %i.in = add nsw i64 %n.vec, %i.if               ; 2 uses
  %invariant.gep422 = getelementptr [8 x i8], ptr %i.dw, i64 %i.if
  %invariant.gep424 = getelementptr [8 x i8], ptr %i.ee, i64 %i.ig
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep423 = getelementptr [8 x i8], ptr %invariant.gep422, i64 %index ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %gep423, i64 16
  %wide.load = load <2 x double>, ptr %gep423, align 8, !tbaa !64
  %wide.load409 = load <2 x double>, ptr %i.io, align 8, !tbaa !64
  %gep425 = getelementptr [8 x i8], ptr %invariant.gep424, i64 %index ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %gep425, i64 16
  store <2 x double> %wide.load, ptr %gep425, align 8, !tbaa !64
  store <2 x double> %wide.load409, ptr %i.ip, align 8, !tbaa !64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge328.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv374.ph = phi i64 [ %i.ig, %vector.memcheck ], [ %i.ig, %.preheader.us.us ], [ %i.im, %middle.block ] ; 2 uses
  %indvars.iv372.ph = phi i64 [ %i.if, %vector.memcheck ], [ %i.if, %.preheader.us.us ], [ %i.in, %middle.block ] ; 2 uses
  %.1282326.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.ie, %middle.block ] ; 4 uses
  %i.ir = sub i32 %i.hj, %.1282326.us.us.ph
  %xtraiter417 = and i32 %i.ir, 3                 ; 2 uses
  %lcmp.mod418.not = icmp eq i32 %xtraiter417, 0
  br i1 %lcmp.mod418.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv374.prol = phi i64 [ %indvars.iv.next375.prol, %scalar.ph.prol ], [ %indvars.iv374.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv372.prol = phi i64 [ %indvars.iv.next373.prol, %scalar.ph.prol ], [ %indvars.iv372.ph, %scalar.ph.preheader ] ; 2 uses
  %.1282326.us.us.prol = phi i32 [ %i.iv, %scalar.ph.prol ], [ %.1282326.us.us.ph, %scalar.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.is = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv372.prol
  %i.it = load double, ptr %i.is, align 8, !tbaa !64
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %indvars.iv374.prol
  store double %i.it, ptr %i.iu, align 8, !tbaa !64
  %indvars.iv.next373.prol = add nsw i64 %indvars.iv372.prol, %i.ic ; 3 uses
  %indvars.iv.next375.prol = add nsw i64 %indvars.iv374.prol, 1 ; 3 uses
  %i.iv = add nuw nsw i32 %.1282326.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter417
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !26

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next373.lcssa413.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next373.prol, %scalar.ph.prol ]
  %indvars.iv.next375.lcssa412.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next375.prol, %scalar.ph.prol ]
  %indvars.iv374.unr = phi i64 [ %indvars.iv374.ph, %scalar.ph.preheader ], [ %indvars.iv.next375.prol, %scalar.ph.prol ]
  %indvars.iv372.unr = phi i64 [ %indvars.iv372.ph, %scalar.ph.preheader ], [ %indvars.iv.next373.prol, %scalar.ph.prol ]
  %.1282326.us.us.unr = phi i32 [ %.1282326.us.us.ph, %scalar.ph.preheader ], [ %i.iv, %scalar.ph.prol ]
  %i.iw = sub i32 %.1282326.us.us.ph, %i.hj
  %i.ix = icmp ugt i32 %i.iw, -4
  br i1 %i.ix, label %._crit_edge328.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv374 = phi i64 [ %indvars.iv.next375.3, %scalar.ph ], [ %indvars.iv374.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv372 = phi i64 [ %indvars.iv.next373.3, %scalar.ph ], [ %indvars.iv372.unr, %scalar.ph.prol.loopexit ] ; 2 uses
  %.1282326.us.us = phi i32 [ %i.jn, %scalar.ph ], [ %.1282326.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv372
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !64
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ee, i64 %indvars.iv374
  store double %i.iz, ptr %i.ja, align 8, !tbaa !64
  %indvars.iv.next373 = add nsw i64 %indvars.iv372, %i.ic ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv.next373
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !64
  %i.jd = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv374
  %i.je = getelementptr i8, ptr %i.jd, i64 8
  store double %i.jc, ptr %i.je, align 8, !tbaa !64
  %indvars.iv.next373.1 = add nsw i64 %indvars.iv.next373, %i.ic ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv.next373.1
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !64
  %i.jh = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv374
  %i.ji = getelementptr i8, ptr %i.jh, i64 16
  store double %i.jg, ptr %i.ji, align 8, !tbaa !64
  %indvars.iv.next373.2 = add nsw i64 %indvars.iv.next373.1, %i.ic ; 2 uses
  %i.jj = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %indvars.iv.next373.2
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !64
  %i.jl = getelementptr [8 x i8], ptr %i.ee, i64 %indvars.iv374
  %i.jm = getelementptr i8, ptr %i.jl, i64 24
  store double %i.jk, ptr %i.jm, align 8, !tbaa !64
  %indvars.iv.next373.3 = add nsw i64 %indvars.iv.next373.2, %i.ic ; 2 uses
  %indvars.iv.next375.3 = add nsw i64 %indvars.iv374, 4 ; 2 uses
  %i.jn = add nuw nsw i32 %.1282326.us.us, 4      ; 2 uses
  %exitcond379.not.3 = icmp eq i32 %i.jn, %i.hj
  br i1 %exitcond379.not.3, label %._crit_edge328.us.us, label %scalar.ph, !llvm.loop !27

._crit_edge328.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next373.lcssa = phi i64 [ %i.in, %middle.block ], [ %indvars.iv.next373.lcssa413.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next373.3, %scalar.ph ]
  %indvars.iv.next375.lcssa = phi i64 [ %i.im, %middle.block ], [ %indvars.iv.next375.lcssa412.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next375.3, %scalar.ph ]
  %i.jo = trunc nsw i64 %indvars.iv.next375.lcssa to i32
  %i.jp = trunc nsw i64 %indvars.iv.next373.lcssa to i32
  %i.jq = add nsw i32 %i.hv, %i.jp                ; 2 uses
  %i.jr = add nsw i32 %i.hw, %i.jo                ; 2 uses
  %i.js = add nuw nsw i32 %.1280333.us.us, 1      ; 2 uses
  %exitcond380.not = icmp eq i32 %i.js, %i.hk
  br i1 %exitcond380.not, label %._crit_edge334.split.us.us, label %.preheader.us.us, !llvm.loop !28

._crit_edge334.split.us.us:                       ; preds = %._crit_edge328.us.us
  %i.jt = add nsw i32 %i.hy, %i.jq
  %i.ju = add nsw i32 %i.ia, %i.jr
  %i.jv = add nuw nsw i32 %.1278343.us, 1         ; 2 uses
  %exitcond381.not = icmp eq i32 %i.jv, %i.hl
  br i1 %exitcond381.not, label %.critedge, label %.preheader319.us, !llvm.loop !29

.critedge:                                        ; preds = %._crit_edge334.split.us.us, %.preheader319.lr.ph, %bb.r
  %indvars.iv.next383 = add nuw nsw i64 %indvars.iv382, 1 ; 2 uses
  %i.jw = load i32, ptr %i.ef, align 8, !tbaa !62
  %i.jx = sext i32 %i.jw to i64
  %i.jy = icmp slt i64 %indvars.iv.next383, %i.jx
  br i1 %i.jy, label %bb.l, label %._crit_edge349.loopexit, !llvm.loop !30

._crit_edge349.loopexit:                          ; preds = %.critedge
  %.pre394 = load i32, ptr %i.de, align 8, !tbaa !51
  br label %._crit_edge349

._crit_edge349:                                   ; preds = %._crit_edge349.loopexit, %.lr.ph352
  %i.jz = phi i32 [ %.pre394, %._crit_edge349.loopexit ], [ %i.dh, %.lr.ph352 ] ; 2 uses
  %indvars.iv.next386 = add nuw nsw i64 %indvars.iv385, 1 ; 2 uses
  %i.ka = sext i32 %i.jz to i64
  %i.kb = icmp slt i64 %indvars.iv.next386, %i.ka
  br i1 %i.kb, label %.lr.ph352, label %._crit_edge353, !llvm.loop !31

._crit_edge353:                                   ; preds = %._crit_edge349, %bb.k
  br i1 %i.cw, label %bb.h, label %bb.s, !llvm.loop !32

bb.s:                                             ; preds = %._crit_edge353
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.kd = call i32 @hypre_ComputePkgDestroy(ptr noundef %i.kc) #5 ; 0 uses
  %indvars.iv.next389 = add nuw nsw i64 %indvars.iv388, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next389, %wide.trip.count391
  br i1 %exitcond392.not, label %._crit_edge358, label %bb.b, !llvm.loop !33

._crit_edge358:                                   ; preds = %bb.s, %bb.a
  %i.ke = call i32 @hypre_SMGRelaxSetNewMatrixStencil(ptr noundef %0, ptr noundef nonnull %i.t) #5 ; 0 uses
  %i.kf = call i32 @hypre_StructStencilDestroy(ptr noundef %i.ac) #5 ; 0 uses
  %i.kg = call i32 @hypre_StructMatrixAssemble(ptr noundef %4) #5 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
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
end_hunk_0
