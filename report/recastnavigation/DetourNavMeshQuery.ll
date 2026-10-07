Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourNavMeshQuery?download=true
inline.NumInlined: 321
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZNK14dtNavMeshQuery15getPortalPointsEjPK6dtPolyPK10dtMeshTilejS2_S5_PfS6_:bb.a
  %i.bu = zext i8 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !53
  %i.bx = zext i16 %i.bw to i64
  %i.by = zext i8 %i.bt to i16
  %.lhs.trunc = add nuw nsw i16 %i.by, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !51
  %.rhs.trunc = zext i8 %i.ca to i16
  %i.cb = urem i16 %.lhs.trunc, %.rhs.trunc
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !53
  %i.cf = zext i16 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !52 ; 2 uses
  %.idx96 = mul nuw nsw i64 %i.bx, 12
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx96 ; 5 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !15
  store float %i.cj, ptr %7, align 4, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 3 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 2 uses
  store float %i.cl, ptr %i.cm, align 4, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 3 uses
  %i.co = load float, ptr %i.cn, align 4, !tbaa !15
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.co, ptr %i.cp, align 4, !tbaa !15
  %.idx97 = mul nuw nsw i64 %i.cf, 12
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx97 ; 5 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !15
  store float %i.cr, ptr %8, align 4, !tbaa !15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 3 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !15
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  store float %i.ct, ptr %i.cu, align 4, !tbaa !15
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 3 uses
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !15
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float %i.cw, ptr %i.cx, align 4, !tbaa !15
  %i.cy = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !67
  %.not84 = icmp eq i8 %i.cz, -1
  br i1 %.not84, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %i.db = load i8, ptr %i.da, align 2, !tbaa !68  ; 2 uses
  %.not85 = icmp eq i8 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !69  ; 2 uses
  %.not86 = icmp eq i8 %i.dd, -1
  %or.cond = select i1 %.not85, i1 %.not86, i1 false
  br i1 %or.cond, label %.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l
  %i.de = uitofp i8 %i.db to float
  %i.df = fmul nnan float %i.de, f0x3B808081      ; 3 uses
  %i.dg = uitofp i8 %i.dd to float
  %i.dh = fmul nnan float %i.dg, f0x3B808081      ; 3 uses
  %i.di = load float, ptr %i.ci, align 4, !tbaa !15 ; 2 uses
  %i.dj = load float, ptr %i.cq, align 4, !tbaa !15
  %i.dk = fsub float %i.dj, %i.di
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.df, float %i.di)
  store float %i.dl, ptr %7, align 4, !tbaa !15
  %i.dm = load float, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.dn = load float, ptr %i.cs, align 4, !tbaa !15
  %i.do = fsub float %i.dn, %i.dm
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float %i.df, float %i.dm)
  store float %i.dp, ptr %i.cm, align 4, !tbaa !15
  %i.dq = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.dr = load float, ptr %i.cv, align 4, !tbaa !15
  %i.ds = fsub float %i.dr, %i.dq
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.df, float %i.dq)
  store float %i.dt, ptr %i.cp, align 4, !tbaa !15
  %i.du = load float, ptr %i.ci, align 4, !tbaa !15 ; 2 uses
  %i.dv = load float, ptr %i.cq, align 4, !tbaa !15
  %i.dw = fsub float %i.dv, %i.du
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dw, float %i.dh, float %i.du)
  store float %i.dx, ptr %8, align 4, !tbaa !15
  %i.dy = load float, ptr %i.ck, align 4, !tbaa !15 ; 2 uses
  %i.dz = load float, ptr %i.cs, align 4, !tbaa !15
  %i.ea = fsub float %i.dz, %i.dy
  %i.eb = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.dh, float %i.dy)
  store float %i.eb, ptr %i.cu, align 4, !tbaa !15
  %i.ec = load float, ptr %i.cn, align 4, !tbaa !15 ; 2 uses
  %i.ed = load float, ptr %i.cv, align 4, !tbaa !15
  %i.ee = fsub float %i.ed, %i.ec
  %i.ef = tail call float @llvm.fmuladd.f32(float %i.ee, float %i.dh, float %i.ec)
  store float %i.ef, ptr %i.cx, align 4, !tbaa !15
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.j, %bb.f, %bb.l, %bb.a, %.preheader98, %bb.i, %bb.e, %bb.k, %._crit_edge
  %.2 = phi i32 [ 1073741824, %bb.l ], [ 1073741824, %bb.k ], [ -2147483640, %bb.j ], [ 1073741824, %._crit_edge ], [ 1073741824, %bb.e ], [ 1073741824, %bb.i ], [ -2147483640, %.preheader98 ], [ -2147483640, %bb.a ], [ -2147483640, %bb.f ], [ -2147483640, %bb.c ]
  ret i32 %.2
}

declare noundef float @_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZNK9dtNavMesh18closestPointOnPolyEjPKfPfPb(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, -2147483639) i32 @_ZNK14dtNavMeshQuery26closestPointOnPolyBoundaryEjPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [18 x float], align 16            ; 9 uses
  %i.d = alloca [6 x float], align 16             ; 8 uses
  %i.e = alloca [6 x float], align 16             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %i.f = load ptr, ptr %0, align 8, !tbaa !27
  %i.g = call noundef i32 @_ZNK9dtNavMesh19getTileAndPolyByRefEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.f, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.h = icmp slt i32 %i.g, 0
  %.not = icmp eq ptr %2, null
  %or.cond39 = or i1 %.not, %i.h
  br i1 %or.cond39, label %_Z11dtVisfinitePKf.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load float, ptr %2, align 4, !tbaa !15
  %i.j = call float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp ueq float %i.j, +inf
  br i1 %i.k, label %_Z11dtVisfinitePKf.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !15
  %i.n = call float @llvm.fabs.f32(float %i.m)
  %i.o = fcmp ueq float %i.n, +inf
  br i1 %i.o, label %_Z11dtVisfinitePKf.exit.thread, label %_Z11dtVisfinitePKf.exit

_Z11dtVisfinitePKf.exit:                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !15
  %i.r = call float @llvm.fabs.f32(float %i.q)
  %i.s = fcmp one float %i.r, +inf
  %i.t = icmp ne ptr %3, null
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.d, label %_Z11dtVisfinitePKf.exit.thread

bb.d:                                             ; preds = %_Z11dtVisfinitePKf.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 30
  %i.w = load i8, ptr %i.v, align 2, !tbaa !51    ; 6 uses
  %i.x = zext i8 %i.w to i32                      ; 3 uses
  %.not50 = icmp eq i8 %i.w, 0
  br i1 %.not50, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !52  ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 3 uses
  %wide.trip.count = zext i8 %i.w to i64          ; 3 uses
  %i.ac = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.e

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod68.a = trunc i8 %i.w to i1
  call void @llvm.assume(i1 %lcmp.mod68.a)
  %.idx61.epil = mul nuw nsw i64 %indvars.iv.epil.init, 12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx61.epil ; 3 uses
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.epil.init
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !53
  %i.ah = zext i16 %i.ag to i64
  %.idx.epil = mul nuw nsw i64 %i.ah, 12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.epil ; 3 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !15
  store float %i.aj, ptr %i.ae, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store float %i.al, ptr %i.am, align 4, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load float, ptr %i.an, align 4, !tbaa !15
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store float %i.ao, ptr %i.ap, align 4, !tbaa !15
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.aq = call noundef zeroext i1 @_Z24dtDistancePtPolyEdgesSqrPKfS0_iPfS1_(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i32 noundef %i.x, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #15
  br i1 %i.aq, label %bb.f, label %bb.g

._crit_edge.thread:                               ; preds = %bb.d
  %i.ar = call noundef zeroext i1 @_Z24dtDistancePtPolyEdgesSqrPKfS0_iPfS1_(ptr noundef nonnull %2, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #15 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.e ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.e ]
  %.idx61 = mul nuw nsw i64 %indvars.iv, 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx61 ; 3 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv
  %i.au = load i16, ptr %i.at, align 2, !tbaa !53
  %i.av = zext i16 %i.au to i64
  %.idx = mul nuw nsw i64 %i.av, 12
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx ; 3 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !15
  store float %i.ax, ptr %i.as, align 8, !tbaa !15
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store float %i.az, ptr %i.ba, align 4, !tbaa !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store float %i.bc, ptr %i.bd, align 8, !tbaa !15
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %.idx61.1 = mul nuw nsw i64 %indvars.iv.next, 12
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx61.1 ; 3 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !53
  %i.bh = zext i16 %i.bg to i64
  %.idx.1 = mul nuw nsw i64 %i.bh, 12
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.1 ; 3 uses
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !15
  store float %i.bj, ptr %i.be, align 4, !tbaa !15
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store float %i.bl, ptr %i.bm, align 8, !tbaa !15
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float %i.bo, ptr %i.bp, align 4, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.e

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bq = load float, ptr %2, align 4, !tbaa !15
  store float %i.bq, ptr %3, align 4, !tbaa !15
  %i.br = load float, ptr %i.l, align 4, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.br, ptr %i.bs, align 4, !tbaa !15
  %i.bt = load float, ptr %i.p, align 4, !tbaa !15
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %.not67 = icmp eq i8 %i.w, 1
  br i1 %.not67, label %._crit_edge48, label %.lr.ph47.preheader

.lr.ph47.preheader:                               ; preds = %bb.g
  %i.bu = load float, ptr %i.d, align 16, !tbaa !15 ; 2 uses
  %xtraiter69 = and i64 %i.ac, 1
  %i.bv = icmp eq i8 %i.w, 2
  br i1 %i.bv, label %.lr.ph47.epil.preheader, label %.lr.ph47.preheader.new

.lr.ph47.preheader.new:                           ; preds = %.lr.ph47.preheader
  %unroll_iter73 = and i64 %i.ac, -2
  br label %.lr.ph47

._crit_edge48.loopexit.unr-lcssa:                 ; preds = %.lr.ph47
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %._crit_edge48, label %.lr.ph47.epil.preheader

.lr.ph47.epil.preheader:                          ; preds = %._crit_edge48.loopexit.unr-lcssa, %.lr.ph47.preheader
  %indvars.iv54.epil.init = phi i64 [ 1, %.lr.ph47.preheader ], [ %indvars.iv.next55.1, %._crit_edge48.loopexit.unr-lcssa ] ; 2 uses
  %.03144.epil.init = phi i32 [ 0, %.lr.ph47.preheader ], [ %.1.1, %._crit_edge48.loopexit.unr-lcssa ]
  %.03243.epil.init = phi float [ %i.bu, %.lr.ph47.preheader ], [ %.133.1, %._crit_edge48.loopexit.unr-lcssa ]
  %lcmp.mod72 = trunc i64 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod72)
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv54.epil.init
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !15
  %i.by = fcmp olt float %i.bx, %.03243.epil.init
  %i.bz = trunc nuw nsw i64 %indvars.iv54.epil.init to i32
  %.1.epil = select i1 %i.by, i32 %i.bz, i32 %.03144.epil.init
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %.lr.ph47.epil.preheader, %._crit_edge48.loopexit.unr-lcssa, %bb.g
  %.035.lcssa6365 = phi i32 [ 1, %bb.g ], [ %i.x, %._crit_edge48.loopexit.unr-lcssa ], [ %i.x, %.lr.ph47.epil.preheader ]
  %.031.lcssa = phi i32 [ 0, %bb.g ], [ %.1.1, %._crit_edge48.loopexit.unr-lcssa ], [ %.1.epil, %.lr.ph47.epil.preheader ] ; 3 uses
  %i.ca = mul nuw nsw i32 %.031.lcssa, 3
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cb ; 2 uses
  %i.cd = add nuw nsw i32 %.031.lcssa, 1
  %i.ce = urem i32 %i.cd, %.035.lcssa6365
  %i.cf = mul nuw nsw i32 %i.ce, 3
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.cg ; 2 uses
  %i.ci = zext nneg i32 %.031.lcssa to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ci
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !15 ; 2 uses
  %i.cl = load <2 x float>, ptr %i.cc, align 4, !tbaa !15 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.ch, align 4, !tbaa !15
  %i.cn = fsub <2 x float> %i.cm, %i.cl
  %i.co = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cn, <2 x float> %i.cp, <2 x float> %i.cl)
  store <2 x float> %i.cq, ptr %3, align 4, !tbaa !15
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !15 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !15
  %i.cv = fsub float %i.cu, %i.cs
  %i.cw = call float @llvm.fmuladd.f32(float %i.cv, float %i.ck, float %i.cs)
  br label %bb.h

.lr.ph47:                                         ; preds = %.lr.ph47, %.lr.ph47.preheader.new
  %indvars.iv54 = phi i64 [ 1, %.lr.ph47.preheader.new ], [ %indvars.iv.next55.1, %.lr.ph47 ] ; 4 uses
  %.03144 = phi i32 [ 0, %.lr.ph47.preheader.new ], [ %.1.1, %.lr.ph47 ]
  %.03243 = phi float [ %i.bu, %.lr.ph47.preheader.new ], [ %.133.1, %.lr.ph47 ] ; 2 uses
  %niter74 = phi i64 [ 0, %.lr.ph47.preheader.new ], [ %niter74.next.1, %.lr.ph47 ]
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv54
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !15 ; 2 uses
  %i.cz = fcmp olt float %i.cy, %.03243           ; 2 uses
  %.133 = select i1 %i.cz, float %i.cy, float %.03243 ; 2 uses
  %i.da = trunc nuw nsw i64 %indvars.iv54 to i32
  %.1 = select i1 %i.cz, i32 %i.da, i32 %.03144
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next55
  %i.dc = load float, ptr %i.db, align 4, !tbaa !15 ; 2 uses
  %i.dd = fcmp olt float %i.dc, %.133             ; 2 uses
  %.133.1 = select i1 %i.dd, float %i.dc, float %.133 ; 2 uses
  %i.de = trunc nuw nsw i64 %indvars.iv.next55 to i32
  %.1.1 = select i1 %i.dd, i32 %i.de, i32 %.1     ; 3 uses
  %indvars.iv.next55.1 = add nuw nsw i64 %indvars.iv54, 2 ; 2 uses
  %niter74.next.1 = add nuw i64 %niter74, 2       ; 2 uses
  %niter74.ncmp.1 = icmp eq i64 %niter74.next.1, %unroll_iter73
  br i1 %niter74.ncmp.1, label %._crit_edge48.loopexit.unr-lcssa, label %.lr.ph47

bb.h:                                             ; preds = %._crit_edge48, %bb.f
  %.sink = phi float [ %i.cw, %._crit_edge48 ], [ %i.bt, %bb.f ]
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sink, ptr %i.df, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %_Z11dtVisfinitePKf.exit.thread

_Z11dtVisfinitePKf.exit.thread:                   ; preds = %bb.b, %bb.c, %_Z11dtVisfinitePKf.exit, %bb.a, %bb.h
  %.0 = phi i32 [ -2147483640, %bb.a ], [ 1073741824, %bb.h ], [ -2147483640, %_Z11dtVisfinitePKf.exit ], [ -2147483640, %bb.c ], [ -2147483640, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

declare noundef i32 @_ZNK9dtNavMesh19getTileAndPolyByRefEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z24dtDistancePtPolyEdgesSqrPKfS0_iPfS1_(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, -2147483639) i32 @_ZNK14dtNavMeshQuery13getPolyHeightEjPKfPf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !55
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !56
  %i.d = load ptr, ptr %0, align 8, !tbaa !27
  %i.e = call noundef i32 @_ZNK9dtNavMesh19getTileAndPolyByRefEjPPK10dtMeshTilePPK6dtPoly(ptr noundef nonnull align 8 dereferenceable(100) %i.d, i32 noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #15
  %i.f = icmp slt i32 %i.e, 0
  %.not = icmp eq ptr %2, null
  %or.cond = or i1 %.not, %i.f
  br i1 %or.cond, label %_Z13dtVisfinite2DPKf.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load float, ptr %2, align 4, !tbaa !15
  %i.h = call float @llvm.fabs.f32(float %i.g)
  %i.i = fcmp ueq float %i.h, +inf
  br i1 %i.i, label %_Z13dtVisfinite2DPKf.exit.thread, label %_Z13dtVisfinite2DPKf.exit

_Z13dtVisfinite2DPKf.exit:                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !15
  %i.l = call float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp ueq float %i.l, +inf
  br i1 %i.m, label %_Z13dtVisfinite2DPKf.exit.thread, label %bb.c

bb.c:                                             ; preds = %_Z13dtVisfinite2DPKf.exit
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !56   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 31
  %i.p = load i8, ptr %i.o, align 1, !tbaa !49
  %.mask = and i8 %i.p, -64
  %i.q = icmp eq i8 %.mask, 64
  br i1 %i.q, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.v = load i16, ptr %i.u, align 4, !tbaa !53
  %i.w = zext i16 %i.v to i64
  %.idx = mul nuw nsw i64 %i.w, 12
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 6
  %i.z = load i16, ptr %i.y, align 2, !tbaa !53
  %i.aa = zext i16 %i.z to i64
  %.idx16 = mul nuw nsw i64 %i.aa, 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.ac = call noundef float @_Z20dtDistancePtSegSqr2DPKfS0_S0_Rf(ptr noundef nonnull %2, ptr noundef %i.x, ptr noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %i.c) #15 ; 0 uses
  %.not17 = icmp eq ptr %3, null
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = fsub float %i.ag, %i.ae
  %i.ai = load float, ptr %i.c, align 4, !tbaa !15
  %i.aj = call float @llvm.fmuladd.f32(float %i.ah, float %i.ai, float %i.ae)
  store float %i.aj, ptr %3, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %_Z13dtVisfinite2DPKf.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %0, align 8, !tbaa !27
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !55
  %i.am = call noundef zeroext i1 @_ZNK9dtNavMesh13getPolyHeightEPK10dtMeshTilePK6dtPolyPKfPf(ptr noundef nonnull align 8 dereferenceable(100) %i.ak, ptr noundef %i.al, ptr noundef nonnull %i.n, ptr noundef nonnull %2, ptr noundef %3) #15
  %i.an = select i1 %i.am, i32 1073741824, i32 -2147483640
  br label %_Z13dtVisfinite2DPKf.exit.thread

_Z13dtVisfinite2DPKf.exit.thread:                 ; preds = %bb.b, %_Z13dtVisfinite2DPKf.exit, %bb.a, %bb.g, %bb.f
  %.0 = phi i32 [ -2147483640, %bb.a ], [ 1073741824, %bb.f ], [ %i.an, %bb.g ], [ -2147483640, %_Z13dtVisfinite2DPKf.exit ], [ -2147483640, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare noundef zeroext i1 @_ZNK9dtNavMesh13getPolyHeightEPK10dtMeshTilePK6dtPolyPKfPf(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @_ZN22dtFindNearestPolyQueryD0Ev(ptr noundef nonnull align 8 dereferenceable(45) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN22dtFindNearestPolyQueryD1Ev(ptr noundef nonnull align 8 dead_on_return(45) dereferenceable(45) %0) #15
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define noundef range(i32 1073741824, -2147483639) i32 @_ZNK14dtNavMeshQuery15findNearestPolyEPKfS1_PK13dtQueryFilterPjPf(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #2 align 2 {
bb.a:
  %6 = alloca %class.dtFindNearestPolyQuery, align 8 ; 11 uses
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZNK14dtNavMeshQuery15findNearestPolyEPKfS1_PK13dtQueryFilterPjPfPb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV22dtFindNearestPolyQuery, i64 16), ptr %6, align 8, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !77
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  store float f0x7F7FFFFF, ptr %i.c, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 28 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.d, i8 0, i64 17, i1 false)
  %i.e = call noundef i32 @_ZNK14dtNavMeshQuery13queryPolygonsEPKfS1_PK13dtQueryFilterP11dtPolyQuery(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef readonly %3, ptr noundef nonnull %6) ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.d, align 4, !tbaa !79   ; 2 uses
  store i32 %i.g, ptr %4, align 4, !tbaa !54
  %.not17.i = icmp eq ptr %5, null
  %.not18.i = icmp eq i32 %i.g, 0
  %or.cond.i = or i1 %.not17.i, %.not18.i
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.i = load <2 x float>, ptr %i.h, align 8, !tbaa !15
  store <2 x float> %i.i, ptr %5, align 4, !tbaa !15
end_hunk_0
