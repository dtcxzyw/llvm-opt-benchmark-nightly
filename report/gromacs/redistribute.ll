Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/redistribute?download=true
inline.NumInlined: 906
inline.NumDeleted: 441
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z18dd_redistribute_cgP8_IO_FILElP12gmx_domdec_tPiP7t_stateP10t_forcerecP6t_nrnb.omp_outlined:bb.a
  br i1 %.not.i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.8, i32 noundef 111) #21
          to label %.noexc unwind label %bb.av

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  %i.o = load i8, ptr %i.n, align 8, !tbaa !170, !range !129, !noundef !130
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.e, label %bb.ax

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !250  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !251
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !252
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = sdiv exact i64 %i.y, 12
  %i.aa = trunc i64 %i.z to i32                   ; 2 uses
  %i.ab = mul nsw i32 %i.d, %i.aa
  %i.ac = sdiv i32 %i.ab, %i.h                    ; 3 uses
  %i.ad = mul nsw i32 %i.k, %i.aa
  %i.ae = sdiv i32 %i.ad, %i.h                    ; 3 uses
  %.not.i.i34 = icmp sgt i32 %i.ac, %i.ae
  br i1 %.not.i.i34, label %.invoke239, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = load ptr, ptr %4, align 8, !tbaa !9
  %i.ag = load i64, ptr %5, align 8, !tbaa !12
  %i.ah = load ptr, ptr %6, align 8, !tbaa !14    ; 8 uses
  %i.ai = load ptr, ptr %7, align 8, !tbaa !18
  %i.aj = load ptr, ptr %8, align 8, !tbaa !16
  %i.ak = load ptr, ptr %13, align 8, !tbaa !253  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 161
  %i.am = load i8, ptr %i.al, align 1, !tbaa !22, !range !129, !noundef !130
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.invoke239, label %bb.g

.invoke239:                                       ; preds = %bb.f, %bb.e
  %i.ao = phi ptr [ @.str.6, %bb.e ], [ @.str.9, %bb.f ]
  %i.ap = phi ptr [ @.str.7, %bb.e ], [ @.str.10, %bb.f ]
  %i.aq = phi ptr [ @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, %bb.e ], [ @"__PRETTY_FUNCTION__._ZZL13calcGroupMoveP8_IO_FILElPK12gmx_domdec_tPK7t_statePKiPA3_fPKfSC_RK10MoveLimitsRKN3gmx5RangeIiEENSG_8ArrayRefI10PbcAndFlagEEENK3$_0clEv", %bb.f ]
  %i.ar = phi ptr [ @.str.8, %bb.e ], [ @.str.11, %bb.f ]
  %i.as = phi i32 [ 111, %bb.e ], [ 495, %bb.f ]
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, i32 noundef %i.as) #21
          to label %.cont240 unwind label %bb.aw

.cont240:                                         ; preds = %.invoke239
  unreachable

bb.g:                                             ; preds = %bb.f
  %.not628.i = icmp eq i32 %i.ac, %i.ae
  br i1 %.not628.i, label %_ZL13calcGroupMoveP8_IO_FILElPK12gmx_domdec_tPK7t_statePKiPA3_fPKfSC_RK10MoveLimitsRKN3gmx5RangeIiEENSG_8ArrayRefI10PbcAndFlagEE.exit, label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.au = load i32, ptr %i.at, align 8, !tbaa !167
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 928
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 376
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !250 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !164
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ah, i64 164 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 52 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ah, i64 36 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ah, i64 176
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 180 ; 3 uses
  %i.bk = sext i32 %i.au to i64
  %i.bl = sext i32 %i.ac to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.aj, %.lr.ph30.i
  %indvars.iv45.i = phi i64 [ %i.bl, %.lr.ph30.i ], [ %indvars.iv.next46.i, %bb.aj ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv45.i
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !169
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %indvars.iv45.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  store i32 -2, ptr %i.bq, align 4, !tbaa !345
  br label %bb.aj

bb.j:                                             ; preds = %bb.h
  %i.br = load ptr, ptr %i.bb, align 8, !tbaa !252
  %i.bs = getelementptr inbounds nuw [12 x i8], ptr %i.br, i64 %indvars.iv45.i ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %i.bs, i64 12, i1 false), !tbaa.struct !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.c, i8 0, i64 12, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 9 uses
  br label %bb.x

bb.k:                                             ; preds = %.loopexit8.i
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %indvars.iv45.i ; 3 uses
  %i.bv = load float, ptr %i.bt, align 4, !tbaa !168
  %i.bw = load float, ptr %i.bh, align 8, !tbaa !168
  %i.bx = fsub float %i.bv, %i.bw
  %i.by = load <2 x float>, ptr %i.bs, align 4, !tbaa !168
  %i.bz = load <2 x float>, ptr %15, align 8, !tbaa !168
  %i.ca = fsub <2 x float> %i.by, %i.bz
  store <2 x float> %i.ca, ptr %i.bu, align 4, !tbaa !168
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float %i.bx, ptr %i.cb, align 4, !tbaa !168
  %i.cc = load i32, ptr %i.bi, align 8, !tbaa !259 ; 4 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph.i.i, label %_ZL15computeMoveFlagRK12gmx_domdec_tRA3_Ki.exit.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %wide.trip.count.i.i = zext nneg i32 %i.cc to i64 ; 2 uses
  %xtraiter336 = and i64 %wide.trip.count.i.i, 1
  %i.ce = icmp eq i32 %i.cc, 1
  br i1 %i.ce, label %.epil.preheader335, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter341 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.o

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.w
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader335

.epil.preheader335:                               ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 3 uses
  %.02127.i.i.epil.init = phi i32 [ -1, %.lr.ph.i.i ], [ %.1.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 5 uses
  %.02226.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %.123.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod340 = trunc i32 %i.cc to i1
  tail call void @llvm.assume(i1 %lcmp.mod340)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i.epil.init
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !169
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !169
  switch i32 %i.cj, label %._crit_edge.loopexit.i.i [
    i32 1, label %bb.n
    i32 -1, label %bb.l
  ]

bb.l:                                             ; preds = %.epil.preheader335
  %indvars.iv.tr.i.i.epil = trunc i64 %indvars.iv.i.i.epil.init to i32
  %i.ck = shl i32 %indvars.iv.tr.i.i.epil, 1      ; 2 uses
  %i.cl = shl nuw i32 131072, %i.ck
  %i.cm = or i32 %i.cl, %.02226.i.i.epil.init     ; 2 uses
  %i.cn = icmp eq i32 %.02127.i.i.epil.init, -1
  br i1 %i.cn, label %bb.m, label %._crit_edge.loopexit.i.i

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.ch
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !169
  %i.cq = icmp sgt i32 %i.cp, 2
  %i.cr = zext i1 %i.cq to i32
  %spec.select25.i.i.epil = or disjoint i32 %i.ck, %i.cr
  br label %._crit_edge.loopexit.i.i

bb.n:                                             ; preds = %.epil.preheader335
  %indvars.iv.tr31.i.i.epil = trunc i64 %indvars.iv.i.i.epil.init to i32
  %i.cs = shl i32 %indvars.iv.tr31.i.i.epil, 1    ; 2 uses
  %i.ct = shl nuw i32 65536, %i.cs
  %i.cu = or i32 %i.ct, %.02226.i.i.epil.init
  %i.cv = icmp eq i32 %.02127.i.i.epil.init, -1
  %spec.select.i.i.epil = select i1 %i.cv, i32 %i.cs, i32 %.02127.i.i.epil.init
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.epil.preheader335, %bb.l, %bb.m, %bb.n, %._crit_edge.loopexit.i.i.unr-lcssa
  %.123.i.i.lcssa = phi i32 [ %.123.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %.02226.i.i.epil.init, %.epil.preheader335 ], [ %i.cu, %bb.n ], [ %i.cm, %bb.m ], [ %i.cm, %bb.l ]
  %.1.i.i.lcssa = phi i32 [ %.1.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %.02127.i.i.epil.init, %.epil.preheader335 ], [ %spec.select.i.i.epil, %bb.n ], [ %spec.select25.i.i.epil, %bb.m ], [ %.02127.i.i.epil.init, %bb.l ]
  %i.cw = add nsw i32 %.1.i.i.lcssa, %.123.i.i.lcssa
  br label %_ZL15computeMoveFlagRK12gmx_domdec_tRA3_Ki.exit.i

bb.o:                                             ; preds = %bb.w, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.w ] ; 5 uses
  %.02127.i.i = phi i32 [ -1, %.lr.ph.i.i.new ], [ %.1.i.i.1, %bb.w ] ; 5 uses
  %.02226.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %.123.i.i.1, %bb.w ] ; 3 uses
  %niter342 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter342.next.1, %bb.w ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.i
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !169
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 4, !tbaa !169
  switch i32 %i.db, label %bb.s [
    i32 1, label %bb.p
    i32 -1, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %indvars.iv.tr31.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.dc = shl nsw i32 %indvars.iv.tr31.i.i, 1     ; 2 uses
  %i.dd = shl nuw i32 65536, %i.dc
  %i.de = or i32 %i.dd, %.02226.i.i
  %i.df = icmp eq i32 %.02127.i.i, -1
  %spec.select.i.i = select i1 %i.df, i32 %i.dc, i32 %.02127.i.i
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %indvars.iv.tr.i.i = trunc i64 %indvars.iv.i.i to i32
  %i.dg = shl nsw i32 %indvars.iv.tr.i.i, 1       ; 2 uses
  %i.dh = shl nuw i32 131072, %i.dg
  %i.di = or i32 %i.dh, %.02226.i.i               ; 2 uses
  %i.dj = icmp eq i32 %.02127.i.i, -1
  br i1 %i.dj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.cz
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !169
  %i.dm = icmp sgt i32 %i.dl, 2
  %i.dn = zext i1 %i.dm to i32
  %spec.select25.i.i = or disjoint i32 %i.dg, %i.dn
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.123.i.i = phi i32 [ %.02226.i.i, %bb.o ], [ %i.de, %bb.p ], [ %i.di, %bb.r ], [ %i.di, %bb.q ] ; 3 uses
  %.1.i.i = phi i32 [ %.02127.i.i, %bb.o ], [ %spec.select.i.i, %bb.p ], [ %spec.select25.i.i, %bb.r ], [ %.02127.i.i, %bb.q ] ; 5 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next.i.i
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !169
  %i.dq = sext i32 %i.dp to i64                   ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !169
  switch i32 %i.ds, label %bb.w [
    i32 1, label %bb.v
    i32 -1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %indvars.iv.tr.i.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %i.dt = shl nsw i32 %indvars.iv.tr.i.i.1, 1     ; 2 uses
  %i.du = shl nuw i32 131072, %i.dt
  %i.dv = or i32 %i.du, %.123.i.i                 ; 2 uses
  %i.dw = icmp eq i32 %.1.i.i, -1
  br i1 %i.dw, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.dq
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !169
  %i.dz = icmp sgt i32 %i.dy, 2
  %i.ea = zext i1 %i.dz to i32
  %spec.select25.i.i.1 = or disjoint i32 %i.dt, %i.ea
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %indvars.iv.tr31.i.i.1 = trunc i64 %indvars.iv.next.i.i to i32
  %i.eb = shl nsw i32 %indvars.iv.tr31.i.i.1, 1   ; 2 uses
  %i.ec = shl nuw i32 65536, %i.eb
  %i.ed = or i32 %i.ec, %.123.i.i
  %i.ee = icmp eq i32 %.1.i.i, -1
  %spec.select.i.i.1 = select i1 %i.ee, i32 %i.eb, i32 %.1.i.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.123.i.i.1 = phi i32 [ %.123.i.i, %bb.s ], [ %i.ed, %bb.v ], [ %i.dv, %bb.u ], [ %i.dv, %bb.t ] ; 3 uses
  %.1.i.i.1 = phi i32 [ %.1.i.i, %bb.s ], [ %spec.select.i.i.1, %bb.v ], [ %spec.select25.i.i.1, %bb.u ], [ %.1.i.i, %bb.t ] ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.o, !llvm.loop !347

_ZL15computeMoveFlagRK12gmx_domdec_tRA3_Ki.exit.i: ; preds = %._crit_edge.loopexit.i.i, %bb.k
  %i.ef = phi i32 [ -1, %bb.k ], [ %i.cw, %._crit_edge.loopexit.i.i ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 %i.ef, ptr %i.eg, align 4, !tbaa !345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #9
  br label %bb.aj

bb.x:                                             ; preds = %.loopexit8.i, %bb.j
  %indvars.iv.i = phi i64 [ 2, %bb.j ], [ %indvars.iv.next.i, %.loopexit8.i ] ; 25 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !169 ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i
  %i.el = load float, ptr %i.ek, align 4, !tbaa !168 ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !169
  %.not.i = icmp eq i32 %i.en, 0
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.y
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i ; 2 uses
  %i.eo = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.eo, label %.lr.ph23.i.preheader, label %.loopexit.i

.lr.ph23.i.preheader:                             ; preds = %.preheader.i
  %indvars.iv.next42.i.peel = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.next42.i.peel
  %i.eq = load float, ptr %i.ep, align 4, !tbaa !168
  %gep.i.peel = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next42.i.peel
  %i.er = load float, ptr %gep.i.peel, align 4, !tbaa !168
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.er, float %i.el) ; 2 uses
  %i.et = icmp eq i64 %indvars.iv.i, 0
  br i1 %i.et, label %.loopexit.i.loopexit.loopexit, label %.loopexit.i

.loopexit.i.loopexit.loopexit:                    ; preds = %.lr.ph23.i.preheader
  %.pre166 = load float, ptr %i.bt, align 4, !tbaa !168
  %gep.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 24
  %.pre167 = load float, ptr %gep.i.phi.trans.insert, align 4, !tbaa !168
  %i.eu = tail call float @llvm.fmuladd.f32(float %.pre166, float %.pre167, float %i.es)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph23.i.preheader, %.loopexit.i.loopexit.loopexit, %.preheader.i, %bb.y
  %.1.i = phi float [ %i.el, %bb.y ], [ %i.el, %.preheader.i ], [ %i.es, %.lr.ph23.i.preheader ], [ %i.eu, %.loopexit.i.loopexit.loopexit ] ; 5 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !168
  %i.ex = fcmp ult float %.1.i, %i.ew
  br i1 %i.ex, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.loopexit.i
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !168
  %i.fa = fcmp ult float %.1.i, %i.ez
  br i1 %i.fa, label %bb.aa, label %.invoke237

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 1, ptr %i.fb, align 4, !tbaa !169
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !169
  %i.fe = add nsw i32 %i.ei, -1
  %i.ff = icmp eq i32 %i.fd, %i.fe
  br i1 %i.ff, label %bb.ab, label %.loopexit8.i

bb.ab:                                            ; preds = %bb.aa
  %i.fg = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %i.fh = load <2 x float>, ptr %i.bs, align 4, !tbaa !168
  %i.fi = load <2 x float>, ptr %i.fg, align 4, !tbaa !168
  %i.fj = fsub <2 x float> %i.fh, %i.fi
  %i.fk = load float, ptr %i.bt, align 4, !tbaa !168
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !168
  %i.fn = fsub float %i.fk, %i.fm
  br label %.loopexit8.sink.split.i

bb.ac:                                            ; preds = %.loopexit.i
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !168
  %i.fq = fcmp olt float %.1.i, %i.fp
  br i1 %i.fq, label %bb.ad, label %.loopexit8.i

bb.ad:                                            ; preds = %bb.ac
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !168
  %i.ft = fcmp olt float %.1.i, %i.fs
  br i1 %i.ft, label %.invoke237, label %bb.ae

.invoke237:                                       ; preds = %bb.ad, %bb.z
  %i.fu = phi i32 [ 1, %bb.z ], [ -1, %bb.ad ]
  %i.fv = trunc nsw i64 %indvars.iv45.i to i32
  %i.fw = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.i
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !168
  invoke fastcc void @_ZL13cg_move_errorP8_IO_FILEPK12gmx_domdec_tliiibfPfS4_f(ptr noundef %i.af, ptr noundef nonnull %i.ah, i64 noundef %i.ag, i32 noundef %i.fv, i32 noundef %i.fw, i32 noundef %i.fu, i1 noundef zeroext true, float noundef %i.fy, ptr noundef %15, ptr noundef %i.bs, float noundef %.1.i) #21
          to label %.cont238 unwind label %bb.aw

.cont238:                                         ; preds = %.invoke237
  unreachable

bb.ae:                                            ; preds = %bb.ad
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  store i32 -1, ptr %i.fz, align 4, !tbaa !169
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !169
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %bb.af, label %.loopexit8.i

bb.af:                                            ; preds = %bb.ae
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %i.ge = load <2 x float>, ptr %i.bs, align 4, !tbaa !168
  %i.gf = load <2 x float>, ptr %i.gd, align 4, !tbaa !168
  %i.gg = fadd <2 x float> %i.ge, %i.gf
  %i.gh = load float, ptr %i.bt, align 4, !tbaa !168
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !168
  %i.gk = fadd float %i.gh, %i.gj
  br label %.loopexit8.sink.split.i

bb.ag:                                            ; preds = %bb.x
  %i.gl = icmp slt i64 %indvars.iv.i, %i.bk
  br i1 %i.gl, label %.preheader9.i, label %.loopexit8.i

.preheader9.i:                                    ; preds = %bb.ag
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.i ; 3 uses
  %i.gn = getelementptr inbounds nuw [12 x i8], ptr %i.bd, i64 %indvars.iv.i ; 5 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i ; 2 uses
  %i.gp = load float, ptr %i.gm, align 4, !tbaa !168 ; 2 uses
  %i.gq = load float, ptr %i.go, align 4, !tbaa !168
  %i.gr = fcmp ult float %i.gp, %i.gq
  br i1 %i.gr, label %.preheader7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader9.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gt = load <2 x float>, ptr %i.bs, align 4, !tbaa !168
  %.pre49.i = load float, ptr %i.bt, align 4, !tbaa !168
  br label %bb.ah

.preheader7.i:                                    ; preds = %bb.ah, %.preheader9.i
  %i.gu = phi float [ %i.gp, %.preheader9.i ], [ %i.he, %bb.ah ]
  %i.gv = fcmp olt float %i.gu, 0.000000e+00
  br i1 %i.gv, label %.lr.ph20.i, label %.loopexit8.i

.lr.ph20.i:                                       ; preds = %.preheader7.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gx = load <2 x float>, ptr %i.bs, align 4, !tbaa !168
  %.pre52.i = load float, ptr %i.bt, align 4, !tbaa !168
  br label %bb.ai

bb.ah:                                            ; preds = %bb.ah, %.lr.ph.i
  %i.gy = phi float [ %.pre49.i, %.lr.ph.i ], [ %i.hb, %bb.ah ]
  %i.gz = phi <2 x float> [ %i.gt, %.lr.ph.i ], [ %i.hd, %bb.ah ]
  %i.ha = load float, ptr %i.gs, align 4, !tbaa !168
  %i.hb = fsub float %i.gy, %i.ha                 ; 2 uses
  %i.hc = load <2 x float>, ptr %i.gn, align 4, !tbaa !168
  %i.hd = fsub <2 x float> %i.gz, %i.hc           ; 2 uses
  store <2 x float> %i.hd, ptr %i.bs, align 4, !tbaa !168
  store float %i.hb, ptr %i.bt, align 4, !tbaa !168
  %i.he = load float, ptr %i.gm, align 4, !tbaa !168 ; 2 uses
  %i.hf = load float, ptr %i.go, align 4, !tbaa !168
  %i.hg = fcmp ult float %i.he, %i.hf
  br i1 %i.hg, label %.preheader7.i, label %bb.ah, !llvm.loop !348

bb.ai:                                            ; preds = %bb.ai, %.lr.ph20.i
  %i.hh = phi float [ %.pre52.i, %.lr.ph20.i ], [ %i.hk, %bb.ai ]
  %i.hi = phi <2 x float> [ %i.gx, %.lr.ph20.i ], [ %i.hm, %bb.ai ]
  %i.hj = load float, ptr %i.gw, align 4, !tbaa !168
  %i.hk = fadd float %i.hh, %i.hj                 ; 2 uses
  %i.hl = load <2 x float>, ptr %i.gn, align 4, !tbaa !168
  %i.hm = fadd <2 x float> %i.hi, %i.hl           ; 2 uses
  store <2 x float> %i.hm, ptr %i.bs, align 4, !tbaa !168
  store float %i.hk, ptr %i.bt, align 4, !tbaa !168
  %i.hn = load float, ptr %i.gm, align 4, !tbaa !168
  %i.ho = fcmp olt float %i.hn, 0.000000e+00
  br i1 %i.ho, label %bb.ai, label %.loopexit8.i, !llvm.loop !349

.loopexit8.sink.split.i:                          ; preds = %bb.af, %bb.ab
  %.sink.i = phi float [ %i.fn, %bb.ab ], [ %i.gk, %bb.af ]
  %i.hp = phi <2 x float> [ %i.fj, %bb.ab ], [ %i.gg, %bb.af ]
  store <2 x float> %i.hp, ptr %i.bs, align 4, !tbaa !168
  store float %.sink.i, ptr %i.bt, align 4, !tbaa !168
  br label %.loopexit8.i

.loopexit8.i:                                     ; preds = %bb.ai, %.loopexit8.sink.split.i, %.preheader7.i, %bb.ag, %bb.ae, %bb.ac, %bb.aa
end_hunk_0
begin_hunk_1_@_Z18dd_redistribute_cgP8_IO_FILElP12gmx_domdec_tPiP7t_stateP10t_forcerecP6t_nrnb.omp_outlined:bb.a
  br i1 %i.ls, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.lt = zext nneg i32 %i.lr to i64
  %i.lu = getelementptr inbounds nuw [16 x i8], ptr %i.hw, i64 %i.lt ; 3 uses
  %i.lv = getelementptr inbounds [12 x i8], ptr %i.kd, i64 %indvars.iv.next.i.i.i.i.i.i.i.i ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 8 ; 2 uses
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !168
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !168
  %i.ma = fadd float %i.lx, %i.lz
  %i.mb = load <2 x float>, ptr %i.lv, align 4, !tbaa !168
  %i.mc = load <2 x float>, ptr %i.lu, align 4, !tbaa !168
  %i.md = fadd <2 x float> %i.mb, %i.mc
  store <2 x float> %i.md, ptr %i.lv, align 4, !tbaa !168
  store float %i.ma, ptr %i.lw, align 4, !tbaa !168
  %i.me = getelementptr inbounds nuw i8, ptr %i.lu, i64 12
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !345
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.sink.i.i.i.i.i.i.i.i.1 = phi i32 [ %i.mf, %bb.as ], [ -2, %bb.ar ]
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.ke, i64 %indvars.iv.next.i.i.i.i.i.i.i.i
  store i32 %.sink.i.i.i.i.i.i.i.i.1, ptr %i.mg, align 4, !tbaa !169
  %indvars.iv.next.i.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.mh = trunc nsw i64 %indvars.iv.next.i.i.i.i.i.i.i.i.1 to i32
  %.not.i.i.i.i.i.i.i.i.1 = icmp eq i32 %i.m, %i.mh
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %"_ZN3gmx25dispatchTemplatedFunctionIZ18dd_redistribute_cgP8_IO_FILElP12gmx_domdec_tPiP7t_stateP10t_forcerecP6t_nrnbE3$_0JEEEDaOT_bDpT0_.exit", label %.lr.ph.i.i.i.i.i.i.i.i.new

bb.au:                                            ; preds = %bb.a
  %i.mi = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ck

bb.av:                                            ; preds = %.invoke, %bb.c
  %i.mj = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ck

bb.aw:                                            ; preds = %.invoke239, %.invoke237
  %i.mk = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ck

bb.ax:                                            ; preds = %bb.d
  %i.ml = load ptr, ptr %4, align 8, !tbaa !9
  %i.mm = load i64, ptr %5, align 8, !tbaa !12
  %i.mn = load ptr, ptr %6, align 8, !tbaa !14    ; 8 uses
  %i.mo = load ptr, ptr %7, align 8, !tbaa !18    ; 7 uses
  %i.mp = load ptr, ptr %8, align 8, !tbaa !16
  %i.mq = load ptr, ptr %14, align 8, !tbaa !165  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 416
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !267
  %.not1243.i = icmp eq i32 %i.j, %i.m
  br i1 %.not1243.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZ18dd_redistribute_cgP8_IO_FILElP12gmx_domdec_tPiP7t_stateP10t_forcerecP6t_nrnbE3$_0JEEEDaOT_bDpT0_.exit", label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ax
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mn, i64 152
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !167
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mn, i64 896
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !164
  %i.mx = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mn, i64 164 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mo, i64 52 ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mn, i64 161
  %i.nc = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mn, i64 36 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mo, i64 68 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mo, i64 84 ; 4 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mo, i64 4 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mo, i64 456 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mo, i64 496
  %i.nj = getelementptr inbounds nuw i8, ptr %12, i64 12
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mn, i64 176
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mn, i64 180 ; 3 uses
  %i.nm = sext i32 %i.mu to i64
  %i.nn = sext i32 %i.j to i64
  br label %bb.ay

bb.ay:                                            ; preds = %bb.cj, %.lr.ph45.i
  %indvars.iv64.i = phi i64 [ %i.nn, %.lr.ph45.i ], [ %indvars.iv.next65.i, %bb.cj ] ; 9 uses
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %indvars.iv64.i
  %i.np = load i32, ptr %i.no, align 4, !tbaa !169
  %i.nq = icmp sgt i32 %i.np, -1
  br i1 %i.nq, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nr = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv64.i
  store i32 -2, ptr %i.nr, align 4, !tbaa !169
  br label %bb.cj

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.ns = getelementptr inbounds [12 x i8], ptr %i.ms, i64 %indvars.iv64.i ; 8 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 4 ; 7 uses
  %i.nu = load <2 x float>, ptr %i.ns, align 4, !tbaa !168 ; 3 uses
  store <2 x float> %i.nu, ptr %i.a, align 8, !tbaa !168
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 8 ; 8 uses
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !168 ; 4 uses
  store float %i.nw, ptr %i.my, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  br label %bb.bn

_ZL17rotate_state_atomP7t_statei.exit.thread.sink.split.i: ; preds = %bb.cf, %bb.bw
  %i.nx = load ptr, ptr %i.ni, align 8, !tbaa !267
  %i.ny = getelementptr inbounds [12 x i8], ptr %i.nx, i64 %indvars.iv64.i
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 4 ; 2 uses
  %i.oa = load <2 x float>, ptr %i.nz, align 4, !tbaa !168
  %i.ob = fneg <2 x float> %i.oa
  store <2 x float> %i.ob, ptr %i.nz, align 4, !tbaa !168
  br label %_ZL17rotate_state_atomP7t_statei.exit.thread.i

_ZL17rotate_state_atomP7t_statei.exit.thread.i:   ; preds = %_ZL17rotate_state_atomP7t_statei.exit.i, %bb.cf, %bb.bw, %_ZL17rotate_state_atomP7t_statei.exit.thread.sink.split.i
  %i.oc = load i32, ptr %i.nk, align 8, !tbaa !259 ; 4 uses
  %i.od = icmp sgt i32 %i.oc, 0
  br i1 %i.od, label %.lr.ph.i.i47, label %_ZL15computeMoveFlagRK12gmx_domdec_tRA3_Ki.exit.i46

.lr.ph.i.i47:                                     ; preds = %_ZL17rotate_state_atomP7t_statei.exit.thread.i
  %wide.trip.count.i.i48 = zext nneg i32 %i.oc to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i48, 1
  %i.oe = icmp eq i32 %i.oc, 1
  br i1 %i.oe, label %.epil.preheader, label %.lr.ph.i.i47.new

.lr.ph.i.i47.new:                                 ; preds = %.lr.ph.i.i47
  %unroll_iter = and i64 %wide.trip.count.i.i48, 2147483646
  br label %bb.be

._crit_edge.loopexit.i.i57.unr-lcssa:             ; preds = %bb.bm
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i57, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i57.unr-lcssa, %.lr.ph.i.i47
  %indvars.iv.i.i49.epil.init = phi i64 [ 0, %.lr.ph.i.i47 ], [ %indvars.iv.next.i.i55.1, %._crit_edge.loopexit.i.i57.unr-lcssa ] ; 3 uses
  %.02127.i.i50.epil.init = phi i32 [ -1, %.lr.ph.i.i47 ], [ %.1.i.i54.1, %._crit_edge.loopexit.i.i57.unr-lcssa ] ; 5 uses
  %.02226.i.i51.epil.init = phi i32 [ 0, %.lr.ph.i.i47 ], [ %.123.i.i53.1, %._crit_edge.loopexit.i.i57.unr-lcssa ] ; 3 uses
  %lcmp.mod334 = trunc i32 %i.oc to i1
  tail call void @llvm.assume(i1 %lcmp.mod334)
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.i.i49.epil.init
  %i.og = load i32, ptr %i.of, align 4, !tbaa !169
  %i.oh = sext i32 %i.og to i64                   ; 2 uses
  %i.oi = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.oh
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !169
  switch i32 %i.oj, label %._crit_edge.loopexit.i.i57 [
    i32 1, label %bb.bd
    i32 -1, label %bb.bb
  ]

bb.bb:                                            ; preds = %.epil.preheader
  %indvars.iv.tr.i.i52.epil = trunc i64 %indvars.iv.i.i49.epil.init to i32
  %i.ok = shl i32 %indvars.iv.tr.i.i52.epil, 1    ; 2 uses
  %i.ol = shl nuw i32 131072, %i.ok
  %i.om = or i32 %i.ol, %.02226.i.i51.epil.init   ; 2 uses
  %i.on = icmp eq i32 %.02127.i.i50.epil.init, -1
  br i1 %i.on, label %bb.bc, label %._crit_edge.loopexit.i.i57

bb.bc:                                            ; preds = %bb.bb
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.oh
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !169
  %i.oq = icmp sgt i32 %i.op, 2
  %i.or = zext i1 %i.oq to i32
  %spec.select25.i.i58.epil = or disjoint i32 %i.ok, %i.or
  br label %._crit_edge.loopexit.i.i57

bb.bd:                                            ; preds = %.epil.preheader
  %indvars.iv.tr31.i.i59.epil = trunc i64 %indvars.iv.i.i49.epil.init to i32
  %i.os = shl i32 %indvars.iv.tr31.i.i59.epil, 1  ; 2 uses
  %i.ot = shl nuw i32 65536, %i.os
  %i.ou = or i32 %i.ot, %.02226.i.i51.epil.init
  %i.ov = icmp eq i32 %.02127.i.i50.epil.init, -1
  %spec.select.i.i60.epil = select i1 %i.ov, i32 %i.os, i32 %.02127.i.i50.epil.init
  br label %._crit_edge.loopexit.i.i57

._crit_edge.loopexit.i.i57:                       ; preds = %.epil.preheader, %bb.bb, %bb.bc, %bb.bd, %._crit_edge.loopexit.i.i57.unr-lcssa
  %.123.i.i53.lcssa = phi i32 [ %.123.i.i53.1, %._crit_edge.loopexit.i.i57.unr-lcssa ], [ %.02226.i.i51.epil.init, %.epil.preheader ], [ %i.ou, %bb.bd ], [ %i.om, %bb.bc ], [ %i.om, %bb.bb ]
  %.1.i.i54.lcssa = phi i32 [ %.1.i.i54.1, %._crit_edge.loopexit.i.i57.unr-lcssa ], [ %.02127.i.i50.epil.init, %.epil.preheader ], [ %spec.select.i.i60.epil, %bb.bd ], [ %spec.select25.i.i58.epil, %bb.bc ], [ %.02127.i.i50.epil.init, %bb.bb ]
  %i.ow = add nsw i32 %.1.i.i54.lcssa, %.123.i.i53.lcssa
  br label %_ZL15computeMoveFlagRK12gmx_domdec_tRA3_Ki.exit.i46

bb.be:                                            ; preds = %bb.bm, %.lr.ph.i.i47.new
  %indvars.iv.i.i49 = phi i64 [ 0, %.lr.ph.i.i47.new ], [ %indvars.iv.next.i.i55.1, %bb.bm ] ; 5 uses
  %.02127.i.i50 = phi i32 [ -1, %.lr.ph.i.i47.new ], [ %.1.i.i54.1, %bb.bm ] ; 5 uses
  %.02226.i.i51 = phi i32 [ 0, %.lr.ph.i.i47.new ], [ %.123.i.i53.1, %bb.bm ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i47.new ], [ %niter.next.1, %bb.bm ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.i.i49
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !169
  %i.oz = sext i32 %i.oy to i64                   ; 2 uses
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.oz
  %i.pb = load i32, ptr %i.pa, align 4, !tbaa !169
  switch i32 %i.pb, label %bb.bi [
    i32 1, label %bb.bf
    i32 -1, label %bb.bg
  ]

bb.bf:                                            ; preds = %bb.be
  %indvars.iv.tr31.i.i59 = trunc i64 %indvars.iv.i.i49 to i32
  %i.pc = shl nsw i32 %indvars.iv.tr31.i.i59, 1   ; 2 uses
  %i.pd = shl nuw i32 65536, %i.pc
  %i.pe = or i32 %i.pd, %.02226.i.i51
  %i.pf = icmp eq i32 %.02127.i.i50, -1
  %spec.select.i.i60 = select i1 %i.pf, i32 %i.pc, i32 %.02127.i.i50
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %indvars.iv.tr.i.i52 = trunc i64 %indvars.iv.i.i49 to i32
  %i.pg = shl nsw i32 %indvars.iv.tr.i.i52, 1     ; 2 uses
  %i.ph = shl nuw i32 131072, %i.pg
  %i.pi = or i32 %i.ph, %.02226.i.i51             ; 2 uses
  %i.pj = icmp eq i32 %.02127.i.i50, -1
  br i1 %i.pj, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.oz
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !169
  %i.pm = icmp sgt i32 %i.pl, 2
  %i.pn = zext i1 %i.pm to i32
  %spec.select25.i.i58 = or disjoint i32 %i.pg, %i.pn
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.123.i.i53 = phi i32 [ %.02226.i.i51, %bb.be ], [ %i.pe, %bb.bf ], [ %i.pi, %bb.bh ], [ %i.pi, %bb.bg ] ; 3 uses
  %.1.i.i54 = phi i32 [ %.02127.i.i50, %bb.be ], [ %spec.select.i.i60, %bb.bf ], [ %spec.select25.i.i58, %bb.bh ], [ %.02127.i.i50, %bb.bg ] ; 5 uses
  %indvars.iv.next.i.i55 = or disjoint i64 %indvars.iv.i.i49, 1 ; 3 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %indvars.iv.next.i.i55
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !169
  %i.pq = sext i32 %i.pp to i64                   ; 2 uses
  %i.pr = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !169
  switch i32 %i.ps, label %bb.bm [
    i32 1, label %bb.bl
    i32 -1, label %bb.bj
  ]

bb.bj:                                            ; preds = %bb.bi
  %indvars.iv.tr.i.i52.1 = trunc i64 %indvars.iv.next.i.i55 to i32
  %i.pt = shl nsw i32 %indvars.iv.tr.i.i52.1, 1   ; 2 uses
  %i.pu = shl nuw i32 131072, %i.pt
  %i.pv = or i32 %i.pu, %.123.i.i53               ; 2 uses
  %i.pw = icmp eq i32 %.1.i.i54, -1
  br i1 %i.pw, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.pq
  %i.py = load i32, ptr %i.px, align 4, !tbaa !169
  %i.pz = icmp sgt i32 %i.py, 2
  %i.qa = zext i1 %i.pz to i32
  %spec.select25.i.i58.1 = or disjoint i32 %i.pt, %i.qa
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bi
  %indvars.iv.tr31.i.i59.1 = trunc i64 %indvars.iv.next.i.i55 to i32
  %i.qb = shl nsw i32 %indvars.iv.tr31.i.i59.1, 1 ; 2 uses
  %i.qc = shl nuw i32 65536, %i.qb
  %i.qd = or i32 %i.qc, %.123.i.i53
  %i.qe = icmp eq i32 %.1.i.i54, -1
  %spec.select.i.i60.1 = select i1 %i.qe, i32 %i.qb, i32 %.1.i.i54
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bi
  %.123.i.i53.1 = phi i32 [ %.123.i.i53, %bb.bi ], [ %i.qd, %bb.bl ], [ %i.pv, %bb.bk ], [ %i.pv, %bb.bj ] ; 3 uses
  %.1.i.i54.1 = phi i32 [ %.1.i.i54, %bb.bi ], [ %spec.select.i.i60.1, %bb.bl ], [ %spec.select25.i.i58.1, %bb.bk ], [ %.1.i.i54, %bb.bj ] ; 3 uses
  %indvars.iv.next.i.i55.1 = add nuw nsw i64 %indvars.iv.i.i49, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i57.unr-lcssa, label %bb.be, !llvm.loop !347

_ZL15computeMoveFlagRK12gmx_domdec_tRA3_Ki.exit.i46: ; preds = %._crit_edge.loopexit.i.i57, %_ZL17rotate_state_atomP7t_statei.exit.thread.i
  %i.qf = phi i32 [ -1, %_ZL17rotate_state_atomP7t_statei.exit.thread.i ], [ %i.ow, %._crit_edge.loopexit.i.i57 ]
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %indvars.iv64.i
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.cj

bb.bn:                                            ; preds = %_ZL17rotate_state_atomP7t_statei.exit.i, %bb.ba
  %i.qh = phi float [ %i.nw, %bb.ba ], [ %.pre68.i163, %_ZL17rotate_state_atomP7t_statei.exit.i ] ; 10 uses
  %i.qi = phi float [ %i.nw, %bb.ba ], [ %i.wg, %_ZL17rotate_state_atomP7t_statei.exit.i ] ; 6 uses
  %indvars.iv.i44 = phi i64 [ 2, %bb.ba ], [ %indvars.iv.next.i45, %_ZL17rotate_state_atomP7t_statei.exit.i ] ; 25 uses
  %i.qj = phi float [ %i.nw, %bb.ba ], [ %i.wh, %_ZL17rotate_state_atomP7t_statei.exit.i ] ; 8 uses
  %i.qk = phi <2 x float> [ %i.nu, %bb.ba ], [ %i.wi, %_ZL17rotate_state_atomP7t_statei.exit.i ] ; 8 uses
  %i.ql = phi <2 x float> [ %i.nu, %bb.ba ], [ %i.wj, %_ZL17rotate_state_atomP7t_statei.exit.i ] ; 12 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %indvars.iv.i44
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !169 ; 2 uses
  %i.qo = icmp sgt i32 %i.qn, 1
  br i1 %i.qo, label %bb.bo, label %bb.cg

bb.bo:                                            ; preds = %bb.bn
  %i.qp = load i8, ptr %i.nb, align 1, !tbaa !22, !range !129, !noundef !130
  %i.qq = trunc nuw i8 %i.qp to i1
  %i.qr = icmp eq i64 %indvars.iv.i44, 0          ; 2 uses
  %i.qs = and i1 %i.qr, %i.qq                     ; 2 uses
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i44
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !168 ; 3 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %indvars.iv.i44
  %i.qw = load i32, ptr %i.qv, align 4, !tbaa !169
  %.not.i63 = icmp eq i32 %i.qw, 0
  br i1 %.not.i63, label %.loopexit.i66, label %.preheader.i64

.preheader.i64:                                   ; preds = %bb.bo
  %invariant.gep.i65 = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %indvars.iv.i44 ; 2 uses
  %i.qx = icmp samesign ult i64 %indvars.iv.i44, 2
  br i1 %i.qx, label %.lr.ph38.i.preheader, label %.loopexit.i66

.lr.ph38.i.preheader:                             ; preds = %.preheader.i64
  %indvars.iv.next61.i.peel = add nuw nsw i64 %indvars.iv.i44, 1 ; 2 uses
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next61.i.peel
  %i.qz = load float, ptr %i.qy, align 4, !tbaa !168
  %gep.i70.peel = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep.i65, i64 %indvars.iv.next61.i.peel
  %i.ra = load float, ptr %gep.i70.peel, align 4, !tbaa !168
  %i.rb = tail call float @llvm.fmuladd.f32(float %i.qz, float %i.ra, float %i.qu) ; 2 uses
  br i1 %i.qr, label %.loopexit.i66.loopexit.loopexit, label %.loopexit.i66

.loopexit.i66.loopexit.loopexit:                  ; preds = %.lr.ph38.i.preheader
  %gep.i70.phi.trans.insert = getelementptr inbounds nuw i8, ptr %invariant.gep.i65, i64 24
  %.pre = load float, ptr %gep.i70.phi.trans.insert, align 4, !tbaa !168
  %i.rc = tail call float @llvm.fmuladd.f32(float %i.qi, float %.pre, float %i.rb)
  br label %.loopexit.i66

.loopexit.i66:                                    ; preds = %.lr.ph38.i.preheader, %.loopexit.i66.loopexit.loopexit, %.preheader.i64, %bb.bo
  %.1.i67 = phi float [ %i.qu, %bb.bo ], [ %i.qu, %.preheader.i64 ], [ %i.rb, %.lr.ph38.i.preheader ], [ %i.rc, %.loopexit.i66.loopexit.loopexit ] ; 5 uses
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv.i44
  %i.re = load float, ptr %i.rd, align 4, !tbaa !168
  %i.rf = fcmp ult float %.1.i67, %i.re
  br i1 %i.rf, label %bb.bx, label %bb.bp

bb.bp:                                            ; preds = %.loopexit.i66
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %indvars.iv.i44
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !168
  %i.ri = fcmp ult float %.1.i67, %i.rh
  br i1 %i.ri, label %bb.bq, label %.invoke

bb.bq:                                            ; preds = %bb.bp
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i44
  store i32 1, ptr %i.rj, align 4, !tbaa !169
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i44
  %i.rl = load i32, ptr %i.rk, align 4, !tbaa !169
  %i.rm = add nsw i32 %i.qn, -1
  %i.rn = icmp eq i32 %i.rl, %i.rm
  br i1 %i.rn, label %bb.br, label %_ZL17rotate_state_atomP7t_statei.exit.i

bb.br:                                            ; preds = %bb.bq
  %i.ro = getelementptr inbounds nuw [12 x i8], ptr %i.na, i64 %indvars.iv.i44 ; 2 uses
  %i.rp = load <2 x float>, ptr %i.ro, align 4, !tbaa !168 ; 4 uses
  %i.rq = fsub <2 x float> %i.qk, %i.rp           ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !168 ; 3 uses
  %i.rt = fsub float %i.qj, %i.rs                 ; 3 uses
  %i.ru = extractelement <2 x float> %i.rq, i64 0
  store float %i.ru, ptr %i.a, align 8, !tbaa !168
  %i.rv = extractelement <2 x float> %i.rq, i64 1 ; 2 uses
  store float %i.rv, ptr %i.mx, align 4, !tbaa !168
  store float %i.rt, ptr %i.my, align 8, !tbaa !168
  br i1 %i.qs, label %bb.bs, label %.critedge.i

bb.bs:                                            ; preds = %bb.br
  %i.rw = load float, ptr %i.ne, align 4, !tbaa !168
  %i.rx = fsub float %i.rw, %i.rv
  store float %i.rx, ptr %i.mx, align 4, !tbaa !168
  %i.ry = load float, ptr %i.nf, align 4, !tbaa !168
  %i.rz = fsub float %i.ry, %i.rt
  store float %i.rz, ptr %i.my, align 8, !tbaa !168
  %foldExtExtBinop = fsub <2 x float> %i.ql, %i.rp
  %i.sa = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop290 = fsub <2 x float> %i.ql, %i.rp
  %i.sb = extractelement <2 x float> %foldExtExtBinop290, i64 1 ; 2 uses
  %i.sc = fsub float %i.qh, %i.rs                 ; 2 uses
  store float %i.sa, ptr %i.ns, align 4, !tbaa !168
  store float %i.sb, ptr %i.nt, align 4, !tbaa !168
  store float %i.sc, ptr %i.nv, align 4, !tbaa !168
  %i.sd = load i32, ptr %i.ng, align 4, !tbaa !131 ; 3 uses
  %i.se = and i32 %i.sd, 128
  %.not.i.i69 = icmp eq i32 %i.se, 0
  br i1 %.not.i.i69, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.sf = load float, ptr %i.ne, align 4, !tbaa !168
  %i.sg = fsub float %i.sf, %i.sb
  store float %i.sg, ptr %i.nt, align 4, !tbaa !168
  %i.sh = load float, ptr %i.nf, align 4, !tbaa !168
  %i.si = fsub float %i.sh, %i.sc
  store float %i.si, ptr %i.nv, align 4, !tbaa !168
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %i.sj = and i32 %i.sd, 256
  %.not36.i.i = icmp eq i32 %i.sj, 0
  br i1 %.not36.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.sk = load ptr, ptr %i.nh, align 8, !tbaa !267
  %i.sl = getelementptr inbounds [12 x i8], ptr %i.sk, i64 %indvars.iv64.i
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4 ; 2 uses
  %i.sn = load <2 x float>, ptr %i.sm, align 4, !tbaa !168
  %i.so = fneg <2 x float> %i.sn
  store <2 x float> %i.so, ptr %i.sm, align 4, !tbaa !168
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.sp = and i32 %i.sd, 1024
  %.not37.i.i = icmp eq i32 %i.sp, 0
  br i1 %.not37.i.i, label %_ZL17rotate_state_atomP7t_statei.exit.thread.i, label %_ZL17rotate_state_atomP7t_statei.exit.thread.sink.split.i

bb.bx:                                            ; preds = %.loopexit.i66
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %indvars.iv.i44
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !168
  %i.ss = fcmp olt float %.1.i67, %i.sr
  br i1 %i.ss, label %bb.by, label %_ZL17rotate_state_atomP7t_statei.exit.i

bb.by:                                            ; preds = %bb.bx
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i44
  %i.su = load float, ptr %i.st, align 4, !tbaa !168
  %i.sv = fcmp olt float %.1.i67, %i.su
  br i1 %i.sv, label %.invoke, label %bb.bz

.invoke:                                          ; preds = %bb.by, %bb.bp
  %i.sw = phi i32 [ 1, %bb.bp ], [ -1, %bb.by ]
  %i.sx = trunc nsw i64 %indvars.iv64.i to i32
  %i.sy = trunc nuw nsw i64 %indvars.iv.i44 to i32
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %indvars.iv.i44
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !168
  invoke fastcc void @_ZL13cg_move_errorP8_IO_FILEPK12gmx_domdec_tliiibfPfS4_f(ptr noundef %i.ml, ptr noundef nonnull %i.mn, i64 noundef %i.mm, i32 noundef %i.sx, i32 noundef %i.sy, i32 noundef %i.sw, i1 noundef zeroext false, float noundef %i.ta, ptr noundef %i.a, ptr noundef %i.a, float noundef %.1.i67) #21
          to label %.cont unwind label %bb.av

.cont:                                            ; preds = %.invoke
  unreachable

bb.bz:                                            ; preds = %bb.by
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i44
  store i32 -1, ptr %i.tb, align 4, !tbaa !169
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.nd, i64 %indvars.iv.i44
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !169
  %i.te = icmp eq i32 %i.td, 0
  br i1 %i.te, label %bb.ca, label %_ZL17rotate_state_atomP7t_statei.exit.i

bb.ca:                                            ; preds = %bb.bz
  %i.tf = getelementptr inbounds nuw [12 x i8], ptr %i.na, i64 %indvars.iv.i44 ; 2 uses
  %i.tg = load <2 x float>, ptr %i.tf, align 4, !tbaa !168 ; 4 uses
  %i.th = fadd <2 x float> %i.qk, %i.tg           ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !168 ; 3 uses
  %i.tk = fadd float %i.qj, %i.tj                 ; 3 uses
  %i.tl = extractelement <2 x float> %i.th, i64 0
  store float %i.tl, ptr %i.a, align 8, !tbaa !168
  %i.tm = extractelement <2 x float> %i.th, i64 1 ; 2 uses
  store float %i.tm, ptr %i.mx, align 4, !tbaa !168
  store float %i.tk, ptr %i.my, align 8, !tbaa !168
  br i1 %i.qs, label %bb.cb, label %.critedge106.i

bb.cb:                                            ; preds = %bb.ca
  %i.tn = load float, ptr %i.ne, align 4, !tbaa !168
  %i.to = fsub float %i.tn, %i.tm
  store float %i.to, ptr %i.mx, align 4, !tbaa !168
end_hunk_1
