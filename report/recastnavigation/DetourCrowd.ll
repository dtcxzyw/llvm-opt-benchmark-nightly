Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/DetourCrowd?download=true
inline.NumInlined: 146
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN7dtCrowd6updateEfP21dtCrowdAgentDebugInfo:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 356
  %i.bf = load float, ptr %i.be, align 4, !tbaa !47
  %i.bg = fcmp ugt float %i.bc, %i.bf
  br i1 %i.bg, label %._crit_edge.i.i, label %_ZL13addToOptQueueP12dtCrowdAgentPS0_ii.exit.i

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m
  br label %_ZL13addToOptQueueP12dtCrowdAgentPS0_ii.exit.i

_ZL13addToOptQueueP12dtCrowdAgentPS0_ii.exit.i:   ; preds = %._crit_edge.i.i, %bb.n, %bb.l, %bb.k, %bb.j, %bb.j, %.lr.ph.i385
  %i.bh = phi ptr [ %i.ao, %bb.k ], [ %i.ao, %.lr.ph.i385 ], [ %i.ao, %bb.j ], [ %i.ao, %bb.j ], [ %i.ao, %bb.l ], [ %i.ar, %._crit_edge.i.i ], [ %i.ao, %bb.n ]
  %i.bi = phi ptr [ %i.ap, %bb.k ], [ %i.ap, %.lr.ph.i385 ], [ %i.ap, %bb.j ], [ %i.ap, %bb.j ], [ %i.ap, %bb.l ], [ %i.ar, %._crit_edge.i.i ], [ %i.ap, %bb.n ] ; 4 uses
  %.2.i = phi i32 [ %.02327.i, %bb.k ], [ %.02327.i, %.lr.ph.i385 ], [ %.02327.i, %bb.j ], [ %.02327.i, %bb.j ], [ %.02327.i, %bb.l ], [ 1, %._crit_edge.i.i ], [ 1, %bb.n ] ; 2 uses
  %indvars.iv.next.i387 = add nuw nsw i64 %indvars.iv.i386, 1 ; 2 uses
  %exitcond.not.i388 = icmp eq i64 %indvars.iv.next.i387, %wide.trip.count.i384
  br i1 %exitcond.not.i388, label %.preheader.i, label %.lr.ph.i385

._crit_edge.loopexit.i:                           ; preds = %.preheader.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 356
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 510
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !30
  %i.bp = load i8, ptr %i.bk, align 2, !tbaa !45
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw [260 x i8], ptr %i.bl, i64 %i.bq
  %i.bs = tail call noundef zeroext i1 @_ZN14dtPathCorridor20optimizePathTopologyEP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %i.bn, ptr noundef %i.bo, ptr noundef nonnull %i.br) #12 ; 0 uses
  store float 0.000000e+00, ptr %i.bj, align 4, !tbaa !47
  br label %_ZN7dtCrowd26updateTopologyOptimizationEPP12dtCrowdAgentif.exit

_ZN7dtCrowd26updateTopologyOptimizationEPP12dtCrowdAgentif.exit: ; preds = %.preheader.i, %._crit_edge.loopexit.i
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !28
  tail call void @_ZN15dtProximityGrid5clearEv(ptr noundef nonnull align 8 dereferenceable(52) %i.bu) #12
  %wide.trip.count = zext nneg i32 %.09.lcssa.i to i64
  br label %.lr.ph

.lr.ph460:                                        ; preds = %.lr.ph
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count513 = zext nneg i32 %.09.lcssa.i to i64
  br label %bb.o

.lr.ph:                                           ; preds = %_ZN7dtCrowd26updateTopologyOptimizationEPP12dtCrowdAgentif.exit, %.lr.ph
  %indvars.iv = phi i64 [ 0, %_ZN7dtCrowd26updateTopologyOptimizationEPP12dtCrowdAgentif.exit ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !56 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 416
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 480
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !67 ; 4 uses
  %i.cd = load ptr, ptr %i.bt, align 8, !tbaa !28
  %i.ce = trunc i64 %indvars.iv to i16
  %i.cf = load float, ptr %i.ca, align 8, !tbaa !31 ; 2 uses
  %i.cg = fsub float %i.cf, %i.cc
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 424
  %i.ci = load float, ptr %i.ch, align 8, !tbaa !31 ; 2 uses
  %i.cj = fsub float %i.ci, %i.cc
  %i.ck = fadd float %i.cc, %i.cf
  %i.cl = fadd float %i.cc, %i.ci
  tail call void @_ZN15dtProximityGrid7addItemEtffff(ptr noundef nonnull align 8 dereferenceable(52) %i.cd, i16 noundef zeroext %i.ce, float noundef %i.cg, float noundef %i.cj, float noundef %i.ck, float noundef %i.cl) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph460, label %.lr.ph

.lr.ph462:                                        ; preds = %.loopexit
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 5064 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 24
  %wide.trip.count518 = zext nneg i32 %.09.lcssa.i to i64
  br label %bb.ae

bb.o:                                             ; preds = %.lr.ph460, %.loopexit
  %indvars.iv510 = phi i64 [ 0, %.lr.ph460 ], [ %indvars.iv.next511, %.loopexit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv510
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !56 ; 16 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !51
  %.not383 = icmp eq i8 %i.cx, 1
  br i1 %.not383, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 496 ; 3 uses
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !68
  %i.da = fmul float %i.cz, 2.500000e-01          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 416 ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 48 ; 3 uses
  %i.dd = load float, ptr %i.dc, align 8, !tbaa !31
  %i.de = load float, ptr %i.db, align 8, !tbaa !31
  %i.df = fsub float %i.dd, %i.de                 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cv, i64 56
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 424 ; 3 uses
  %i.dj = load float, ptr %i.di, align 8, !tbaa !31
  %i.dk = fsub float %i.dh, %i.dj                 ; 2 uses
  %i.dl = fmul float %i.dk, %i.dk
  %i.dm = call noundef float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.dl)
  %i.dn = fmul float %i.da, %i.da
  %i.do = fcmp ogt float %i.dm, %i.dn
  br i1 %i.do, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dp = load ptr, ptr %i.bv, align 8, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 510
  %i.dr = load i8, ptr %i.dq, align 2, !tbaa !45
  %i.ds = zext i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [260 x i8], ptr %i.bw, i64 %i.ds
  %i.du = call noundef zeroext i1 @_ZN15dtLocalBoundary7isValidEP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 4 dereferenceable(308) %i.dc, ptr noundef %i.dp, ptr noundef nonnull %i.dt) #12
  br i1 %i.du, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !58
  %.not.i389 = icmp eq i32 %i.dw, 0
  br i1 %.not.i389, label %_ZNK14dtPathCorridor12getFirstPolyEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !57
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !44
  br label %_ZNK14dtPathCorridor12getFirstPolyEv.exit

_ZNK14dtPathCorridor12getFirstPolyEv.exit:        ; preds = %bb.r, %bb.s
  %i.ea = phi i32 [ %i.dz, %bb.s ], [ 0, %bb.r ]
  %i.eb = load float, ptr %i.cy, align 8, !tbaa !68
  %i.ec = load ptr, ptr %i.bv, align 8, !tbaa !30
  %i.ed = getelementptr inbounds nuw i8, ptr %i.cv, i64 510
  %i.ee = load i8, ptr %i.ed, align 2, !tbaa !45
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw [260 x i8], ptr %i.bw, i64 %i.ef
  call void @_ZN15dtLocalBoundary6updateEjPKffP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 4 dereferenceable(308) %i.dc, i32 noundef %i.ea, ptr noundef nonnull %i.db, float noundef %i.eb, ptr noundef %i.ec, ptr noundef nonnull %i.eg) #12
  br label %bb.t

bb.t:                                             ; preds = %_ZNK14dtPathCorridor12getFirstPolyEv.exit, %bb.q
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cv, i64 484
  %i.ei = load float, ptr %i.eh, align 4, !tbaa !69
  %i.ej = load float, ptr %i.cy, align 8, !tbaa !68 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cv, i64 360 ; 8 uses
  %i.el = load ptr, ptr %i.bt, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.em = load float, ptr %i.db, align 8, !tbaa !31 ; 2 uses
  %i.en = fsub float %i.em, %i.ej
  %i.eo = load float, ptr %i.di, align 8, !tbaa !31 ; 2 uses
  %i.ep = fsub float %i.eo, %i.ej
  %i.eq = fadd float %i.ej, %i.em
  %i.er = fadd float %i.ej, %i.eo
  %i.es = call noundef i32 @_ZNK15dtProximityGrid10queryItemsEffffPti(ptr noundef nonnull align 8 dereferenceable(52) %i.el, float noundef %i.en, float noundef %i.ep, float noundef %i.eq, float noundef %i.er, ptr noundef nonnull %i.a, i32 noundef 32) #12 ; 2 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i391, label %_ZL13getNeighboursPKfffPK12dtCrowdAgentP16dtCrowdNeighbouriPPS1_iP15dtProximityGrid.exit.thread

_ZL13getNeighboursPKfffPK12dtCrowdAgentP16dtCrowdNeighbouriPPS1_iP15dtProximityGrid.exit.thread: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.eu = getelementptr inbounds nuw i8, ptr %i.cv, i64 408
  store i32 0, ptr %i.eu, align 8, !tbaa !49
  br label %.loopexit

.lr.ph.i391:                                      ; preds = %bb.t
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cv, i64 420
  %i.ew = fmul float %i.ej, %i.ej
  %wide.trip.count.i392 = zext nneg i32 %i.es to i64
  br label %bb.u

bb.u:                                             ; preds = %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i, %.lr.ph.i391
  %indvars.iv.i393 = phi i64 [ 0, %.lr.ph.i391 ], [ %indvars.iv.next.i394, %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i ] ; 2 uses
  %.02732.i = phi i32 [ 0, %.lr.ph.i391 ], [ %.3.i, %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i ] ; 12 uses
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv.i393
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !71 ; 2 uses
  %i.ez = zext i16 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !56 ; 5 uses
  %i.fc = icmp eq ptr %i.fb, %i.cv
  br i1 %i.fc, label %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fd = load float, ptr %i.ev, align 4, !tbaa !31
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 420
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !31
  %i.fg = fsub float %i.fd, %i.ff
  %i.fh = call noundef float @llvm.fabs.f32(float %i.fg)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 484
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !69
  %i.fk = fadd float %i.ei, %i.fj
  %i.fl = fmul float %i.fk, 5.000000e-01
  %i.fm = fcmp ult float %i.fh, %i.fl
  br i1 %i.fm, label %bb.w, label %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i

bb.w:                                             ; preds = %bb.v
  %i.fn = load float, ptr %i.di, align 8, !tbaa !31
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fb, i64 424
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !31
  %i.fq = fsub float %i.fn, %i.fp                 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 416
  %i.fs = load float, ptr %i.db, align 8, !tbaa !31
  %i.ft = load float, ptr %i.fr, align 4, !tbaa !31
  %i.fu = fsub float %i.fs, %i.ft                 ; 2 uses
  %3 = fmul float %i.fu, %i.fu
  %i.fv = call noundef float @llvm.fmuladd.f32(float %i.fq, float %i.fq, float %3) ; 4 uses
  %i.fw = fcmp ogt float %i.fv, %i.ew
  br i1 %i.fw, label %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fx = zext i16 %i.ey to i32
  %.not.i.i396 = icmp eq i32 %.02732.i, 0
  br i1 %.not.i.i396, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fy = sext i32 %.02732.i to i64
  %i.fz = getelementptr [8 x i8], ptr %i.ek, i64 %i.fy ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -4
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !73
  %i.gc = fcmp ult float %i.fv, %i.gb
  br i1 %i.gc, label %.preheader.i.i, label %bb.z

.preheader.i.i:                                   ; preds = %bb.y
  %i.gd = icmp sgt i32 %.02732.i, 0
  br i1 %i.gd, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i397

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %.02732.i to i64
  br label %.lr.ph.i.i

bb.z:                                             ; preds = %bb.y
  %i.ge = icmp sgt i32 %.02732.i, 5
  br i1 %i.ge, label %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i, label %bb.ac

.lr.ph.i.i:                                       ; preds = %bb.aa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.aa ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !73
  %i.gi = fcmp ugt float %i.fv, %i.gh
  br i1 %i.gi, label %bb.aa, label %._crit_edge.loopexit.split.loop.exit.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i397, label %.lr.ph.i.i

._crit_edge.loopexit.split.loop.exit.i.i:         ; preds = %.lr.ph.i.i
  %i.gj = trunc nuw nsw i64 %indvars.iv.i.i to i32
  br label %._crit_edge.i.i397

._crit_edge.i.i397:                               ; preds = %bb.aa, %._crit_edge.loopexit.split.loop.exit.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.gj, %._crit_edge.loopexit.split.loop.exit.i.i ], [ %.02732.i, %bb.aa ] ; 2 uses
  %i.gk = call i32 @llvm.smin.i32(i32 %.02732.i, i32 5)
  %i.gl = sub nsw i32 %i.gk, %.0.lcssa.i.i        ; 2 uses
  %i.gm = icmp sgt i32 %i.gl, 0
  %i.gn = zext nneg i32 %.0.lcssa.i.i to i64      ; 2 uses
  br i1 %i.gm, label %bb.ab, label %._crit_edge._crit_edge.i.i

bb.ab:                                            ; preds = %._crit_edge.i.i397
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = zext nneg i32 %i.gl to i64
  %i.gr = shl nuw nsw i64 %i.gq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.gp, ptr nonnull align 4 %i.go, i64 %i.gr, i1 false)
  br label %._crit_edge._crit_edge.i.i

._crit_edge._crit_edge.i.i:                       ; preds = %bb.ab, %._crit_edge.i.i397
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.gn
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge._crit_edge.i.i, %bb.z, %bb.x
  %.037.i.i = phi ptr [ %i.ek, %bb.x ], [ %i.gs, %._crit_edge._crit_edge.i.i ], [ %i.fz, %bb.z ] ; 2 uses
  store i32 %i.fx, ptr %.037.i.i, align 4, !tbaa !74
  %i.gt = getelementptr inbounds nuw i8, ptr %.037.i.i, i64 4
  store float %i.fv, ptr %i.gt, align 4, !tbaa !73
  %i.gu = call i32 @llvm.smin.i32(i32 %.02732.i, i32 5)
  %i.gv = add nsw i32 %i.gu, 1
  br label %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i

_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i:  ; preds = %bb.ac, %bb.z, %bb.w, %bb.v, %bb.u
  %.3.i = phi i32 [ %.02732.i, %bb.u ], [ %.02732.i, %bb.v ], [ %.02732.i, %bb.w ], [ %i.gv, %bb.ac ], [ %.02732.i, %bb.z ] ; 6 uses
  %indvars.iv.next.i394 = add nuw nsw i64 %indvars.iv.i393, 1 ; 2 uses
  %exitcond.not.i395 = icmp eq i64 %indvars.iv.next.i394, %wide.trip.count.i392
  br i1 %exitcond.not.i395, label %_ZL13getNeighboursPKfffPK12dtCrowdAgentP16dtCrowdNeighbouriPPS1_iP15dtProximityGrid.exit, label %bb.u

_ZL13getNeighboursPKfffPK12dtCrowdAgentP16dtCrowdNeighbouriPPS1_iP15dtProximityGrid.exit: ; preds = %_ZL12addNeighbourifP16dtCrowdNeighbourii.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cv, i64 408
  store i32 %.3.i, ptr %i.gw, align 8, !tbaa !49
  %i.gx = icmp sgt i32 %.3.i, 0
  br i1 %i.gx, label %.lr.ph458, label %.loopexit

.lr.ph458:                                        ; preds = %_ZL13getNeighboursPKfffPK12dtCrowdAgentP16dtCrowdNeighbouriPPS1_iP15dtProximityGrid.exit
  %i.gy = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.gz = ptrtoint ptr %i.gy to i64               ; 3 uses
  %wide.trip.count508 = zext nneg i32 %.3.i to i64 ; 2 uses
  %xtraiter658 = and i64 %wide.trip.count508, 1
  %i.ha = icmp eq i32 %.3.i, 1
  br i1 %i.ha, label %.epil.preheader657, label %.lr.ph458.new

.lr.ph458.new:                                    ; preds = %.lr.ph458
  %unroll_iter661 = and i64 %wide.trip.count508, 2147483646
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.lr.ph458.new
  %indvars.iv505 = phi i64 [ 0, %.lr.ph458.new ], [ %indvars.iv.next506.1, %bb.ad ] ; 3 uses
  %niter662 = phi i64 [ 0, %.lr.ph458.new ], [ %niter662.next.1, %bb.ad ]
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv505 ; 2 uses
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !74
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !56
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.hg, %i.gz
  %i.hi = sdiv exact i64 %i.hh, 624
  %i.hj = trunc i64 %i.hi to i32
  store i32 %i.hj, ptr %i.hb, align 8, !tbaa !74
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv505
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !74
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !56
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = sub i64 %i.hq, %i.gz
  %i.hs = sdiv exact i64 %i.hr, 624
  %i.ht = trunc i64 %i.hs to i32
  store i32 %i.ht, ptr %i.hl, align 8, !tbaa !74
  %indvars.iv.next506.1 = add nuw nsw i64 %indvars.iv505, 2 ; 2 uses
  %niter662.next.1 = add i64 %niter662, 2         ; 2 uses
  %niter662.ncmp.1 = icmp eq i64 %niter662.next.1, %unroll_iter661
  br i1 %niter662.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ad

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ad
  %lcmp.mod659.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod659.not, label %.loopexit, label %.epil.preheader657

.epil.preheader657:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph458
  %indvars.iv505.epil.init = phi i64 [ 0, %.lr.ph458 ], [ %indvars.iv.next506.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod660 = trunc i32 %.3.i to i1
  call void @llvm.assume(i1 %lcmp.mod660)
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv505.epil.init ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !74
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !56
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = sub i64 %i.hz, %i.gz
  %i.ib = sdiv exact i64 %i.ia, 624
  %i.ic = trunc i64 %i.ib to i32
  store i32 %i.ic, ptr %i.hu, align 8, !tbaa !74
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader657, %.loopexit.loopexit.unr-lcssa, %_ZL13getNeighboursPKfffPK12dtCrowdAgentP16dtCrowdNeighbouriPPS1_iP15dtProximityGrid.exit.thread, %_ZL13getNeighboursPKfffPK12dtCrowdAgentP16dtCrowdNeighbouriPPS1_iP15dtProximityGrid.exit, %bb.o
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %exitcond514.not = icmp eq i64 %indvars.iv.next511, %wide.trip.count513
  br i1 %exitcond514.not, label %.lr.ph462, label %bb.o

.lr.ph464:                                        ; preds = %bb.al
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.trip.count523 = zext nneg i32 %.09.lcssa.i to i64
  br label %bb.am

bb.ae:                                            ; preds = %.lr.ph462, %bb.al
  %indvars.iv515 = phi i64 [ 0, %.lr.ph462 ], [ %indvars.iv.next516, %bb.al ] ; 4 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv515
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !56 ; 12 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 1
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !51
  %.not381 = icmp eq i8 %i.ik, 1
  br i1 %.not381, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 592
  %i.im = load i8, ptr %i.il, align 8, !tbaa !52
  switch i8 %i.im, label %bb.ag [
    i8 0, label %bb.al
    i8 6, label %bb.al
  ]

bb.ag:                                            ; preds = %bb.af
  %i.in = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 520 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 568
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 572
  %i.ir = load ptr, ptr %i.cm, align 8, !tbaa !30
  %i.is = getelementptr inbounds nuw i8, ptr %i.ii, i64 510 ; 2 uses
  %i.it = load i8, ptr %i.is, align 2, !tbaa !45
  %i.iu = zext i8 %i.it to i64
  %i.iv = getelementptr inbounds nuw [260 x i8], ptr %i.cn, i64 %i.iu
  %i.iw = call noundef i32 @_ZN14dtPathCorridor11findCornersEPfPhPjiP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %i.in, ptr noundef nonnull %i.io, ptr noundef nonnull %i.ip, ptr noundef nonnull %i.iq, i32 noundef 4, ptr noundef %i.ir, ptr noundef nonnull %i.iv) #12 ; 3 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ii, i64 588
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !75
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ii, i64 508
  %i.iz = load i8, ptr %i.iy, align 4, !tbaa !59
  %i.ja = and i8 %i.iz, 8
  %.not382 = icmp ne i8 %i.ja, 0
  %i.jb = icmp sgt i32 %i.iw, 0
  %or.cond = and i1 %i.jb, %.not382
  br i1 %or.cond, label %bb.ah, label %bb.aj

end_hunk_0
begin_hunk_1_@_ZN7dtCrowd6updateEfP21dtCrowdAgentDebugInfo:bb.a
bb.an:                                            ; preds = %bb.am
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 592
  %i.kc = load i8, ptr %i.kb, align 8, !tbaa !52
  switch i8 %i.kc, label %bb.ao [
    i8 0, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread
    i8 6, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread
  ]

bb.ao:                                            ; preds = %bb.an
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jy, i64 480
  %i.ke = load float, ptr %i.kd, align 8, !tbaa !67
  %i.kf = fmul float %i.ke, 2.250000e+00          ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jy, i64 588 ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !75 ; 3 uses
  %.not.i398 = icmp eq i32 %i.kh, 0
  br i1 %.not.i398, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jy, i64 568
  %i.kj = add nsw i32 %i.kh, -1                   ; 2 uses
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds i8, ptr %i.ki, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !32
  %i.kn = and i8 %i.km, 4
  %.not13.i = icmp eq i8 %i.kn, 0
  br i1 %.not13.i, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jy, i64 416 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 520
  %i.kq = mul nsw i32 %i.kj, 3
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kr ; 2 uses
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !31
  %i.ku = load float, ptr %i.ko, align 8, !tbaa !31
  %i.kv = fsub float %i.kt, %i.ku                 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !31
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jy, i64 424 ; 2 uses
  %i.kz = load float, ptr %i.ky, align 8, !tbaa !31
  %i.la = fsub float %i.kx, %i.kz                 ; 2 uses
  %i.lb = fmul float %i.la, %i.la
  %i.lc = call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.kv, float %i.lb)
  %i.ld = fmul float %i.kf, %i.kf
  %i.le = fcmp uge float %i.lc, %i.ld
  br i1 %i.le, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit

_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit: ; preds = %bb.aq
  %i.lf = load ptr, ptr %i.id, align 8, !tbaa !24
  %i.lg = ptrtoint ptr %i.jy to i64
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lg, %i.lh
  %i.lj = sdiv exact i64 %i.li, 624
  %i.lk = load ptr, ptr %i.ie, align 8, !tbaa !26
  %i.ll = shl i64 %i.lj, 32
  %i.lm = ashr exact i64 %i.ll, 32
  %i.ln = getelementptr inbounds [52 x i8], ptr %i.lk, i64 %i.lm ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.lp = sext i32 %i.kh to i64
  %i.lq = getelementptr [4 x i8], ptr %i.jy, i64 %i.lp
  %i.lr = getelementptr i8, ptr %i.lq, i64 568
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !44
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 16 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ln, i64 28 ; 2 uses
  %i.lv = load ptr, ptr %i.if, align 8, !tbaa !30
  %i.lw = call noundef zeroext i1 @_ZN14dtPathCorridor25moveOverOffmeshConnectionEjPjPfS1_P14dtNavMeshQuery(ptr noundef nonnull align 8 dereferenceable(40) %i.lo, i32 noundef %i.ls, ptr noundef nonnull %i.b, ptr noundef nonnull %i.lt, ptr noundef nonnull %i.lu, ptr noundef %i.lv) #12
  br i1 %i.lw, label %bb.ar, label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split

bb.ar:                                            ; preds = %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.ly = load float, ptr %i.ko, align 8, !tbaa !31
  store float %i.ly, ptr %i.lx, align 4, !tbaa !31
  %i.lz = getelementptr inbounds nuw i8, ptr %i.jy, i64 420
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !31
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store float %i.ma, ptr %i.mb, align 4, !tbaa !31
  %i.mc = load float, ptr %i.ky, align 8, !tbaa !31
  %i.md = getelementptr inbounds nuw i8, ptr %i.ln, i64 12
  store float %i.mc, ptr %i.md, align 4, !tbaa !31
  %i.me = load i32, ptr %i.ig, align 4, !tbaa !44
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  store i32 %i.me, ptr %i.mf, align 4, !tbaa !77
  store i8 1, ptr %i.ln, align 4, !tbaa !41
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ln, i64 44
  store float 0.000000e+00, ptr %i.mg, align 4, !tbaa !78
  %i.mh = load float, ptr %i.lu, align 4, !tbaa !31
  %i.mi = load float, ptr %i.lt, align 4, !tbaa !31
  %i.mj = fsub float %i.mh, %i.mi                 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.ln, i64 36
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !31
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !31
  %i.mo = fsub float %i.ml, %i.mn                 ; 2 uses
  %i.mp = fmul float %i.mo, %i.mo
  %i.mq = call float @llvm.fmuladd.f32(float %i.mj, float %i.mj, float %i.mp)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.mq)
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jy, i64 492
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !79
  %i.mt = fdiv float %sqrt.i, %i.ms
  %i.mu = fmul float %i.mt, 5.000000e-01
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ln, i64 48
  store float %i.mu, ptr %i.mv, align 4, !tbaa !80
  store i8 2, ptr %i.jz, align 1, !tbaa !51
  store i32 0, ptr %i.kg, align 4, !tbaa !75
  %i.mw = getelementptr inbounds nuw i8, ptr %i.jy, i64 408
  store i32 0, ptr %i.mw, align 8, !tbaa !49
  br label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split

_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split: ; preds = %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread

_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread: ; preds = %_ZL21overOffmeshConnectionPK12dtCrowdAgentf.exit.thread.sink.split, %bb.ap, %bb.aq, %bb.ao, %bb.an, %bb.an, %bb.am
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %.lr.ph475, label %bb.am

.lr.ph483:                                        ; preds = %bb.bj
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 632
  %wide.trip.count544 = zext nneg i32 %.09.lcssa.i to i64
  br label %bb.bk

bb.as:                                            ; preds = %.lr.ph475, %bb.bj
  %indvars.iv530 = phi i64 [ 0, %.lr.ph475 ], [ %indvars.iv.next531, %bb.bj ] ; 2 uses
  %i.nb = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv530
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !56 ; 31 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !51
  %.not377 = icmp eq i8 %i.ne, 1
  br i1 %.not377, label %bb.at, label %bb.bj

bb.at:                                            ; preds = %bb.as
  %i.nf = getelementptr inbounds nuw i8, ptr %i.nc, i64 592
  %i.ng = load i8, ptr %i.nf, align 8, !tbaa !52
  switch i8 %i.ng, label %bb.av [
    i8 0, label %bb.bj
    i8 6, label %bb.au
  ]

bb.au:                                            ; preds = %bb.at
  %i.nh = getelementptr inbounds nuw i8, ptr %i.nc, i64 600
  %i.ni = load <2 x float>, ptr %i.nh, align 8, !tbaa !31 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nc, i64 608
  %i.nk = load float, ptr %i.nj, align 8, !tbaa !31 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ni, %i.ni
  %i.nl = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.nm = extractelement <2 x float> %i.ni, i64 0 ; 2 uses
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %i.nm, float %i.nl)
  %i.no = call float @llvm.fmuladd.f32(float %i.nk, float %i.nk, float %i.nn)
  %sqrt.i400 = call noundef float @llvm.sqrt.f32(float %i.no) ; 2 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nc, i64 412
  store float %sqrt.i400, ptr %i.np, align 4, !tbaa !50
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.nc, i64 508
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !59
  br label %bb.bc

bb.av:                                            ; preds = %bb.at
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nc, i64 480 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nc, i64 508
  %i.ns = load i8, ptr %i.nr, align 4, !tbaa !59  ; 2 uses
  %i.nt = and i8 %i.ns, 1
  %.not378 = icmp eq i8 %i.nt, 0
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nc, i64 588
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !75 ; 3 uses
  %.not.i402 = icmp eq i32 %i.nv, 0               ; 2 uses
  br i1 %.not378, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  br i1 %.not.i402, label %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nw = call i32 @llvm.smin.i32(i32 %i.nv, i32 2)
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nc, i64 520 ; 2 uses
  %i.ny = mul i32 %i.nw, 3
  %i.nz = add i32 %i.ny, -3
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.nx, i64 %i.oa ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.od = load float, ptr %i.nx, align 8, !tbaa !31
  %i.oe = load float, ptr %i.oc, align 8, !tbaa !31
  %i.of = getelementptr inbounds nuw i8, ptr %i.nc, i64 528
  %i.og = load float, ptr %i.of, align 8, !tbaa !31
  %i.oh = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.oi = load float, ptr %i.oh, align 8, !tbaa !31
  %i.oj = load float, ptr %i.ob, align 4, !tbaa !31
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.ol = load float, ptr %i.ok, align 4, !tbaa !31
  %i.om = insertelement <2 x float> poison, float %i.od, i64 0
  %i.on = insertelement <2 x float> %i.om, float %i.og, i64 1
  %i.oo = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.op = insertelement <2 x float> %i.oo, float %i.oi, i64 1 ; 2 uses
  %i.oq = fsub <2 x float> %i.on, %i.op           ; 3 uses
  %i.or = insertelement <2 x float> poison, float %i.oj, i64 0
  %i.os = insertelement <2 x float> %i.or, float %i.ol, i64 1
  %i.ot = fsub <2 x float> %i.os, %i.op           ; 4 uses
  %i.ou = shufflevector <2 x float> %i.oq, <2 x float> %i.ot, <2 x i32> <i32 0, i32 2> ; 2 uses
  %4 = fmul <2 x float> %i.ou, %i.ou
  %i.ov = shufflevector <2 x float> %i.oq, <2 x float> %i.ot, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ow = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ov, <2 x float> %i.ov, <2 x float> %4) ; 2 uses
  %5 = extractelement <2 x float> %i.ow, i64 0
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %5)
  %i.ox = extractelement <2 x float> %i.ow, i64 1
  %sqrt.i18.i = call noundef float @llvm.sqrt.f32(float %i.ox) ; 2 uses
  %i.oy = fcmp ogt float %sqrt.i18.i, 1.000000e-03
  %i.oz = fdiv float 1.000000e+00, %sqrt.i18.i
  %i.pa = insertelement <2 x float> poison, float %i.oz, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pc = fmul <2 x float> %i.ot, %i.pb
  %i.pd = insertelement <2 x i1> poison, i1 %i.oy, i64 0
  %i.pe = shufflevector <2 x i1> %i.pd, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.pf = select <2 x i1> %i.pe, <2 x float> %i.pc, <2 x float> %i.ot
  %i.pg = fneg float %sqrt.i.i
  %i.ph = insertelement <2 x float> poison, float %i.pg, i64 0
  %i.pi = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pj = fmul <2 x float> %i.pf, %i.pi
  %i.pk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> splat (float 5.000000e-01), <2 x float> %i.oq) ; 4 uses
  %i.pl = fmul <2 x float> %i.pk, %i.pk
  %i.pm = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.pl)
  %i.pn = extractelement <2 x float> %i.pk, i64 0
  %i.po = extractelement <2 x float> %i.pk, i64 1
  br label %bb.ba

bb.ay:                                            ; preds = %bb.av
  br i1 %.not.i402, label %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.pp = getelementptr inbounds nuw i8, ptr %i.nc, i64 520
  %i.pq = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.pr = load float, ptr %i.pp, align 8, !tbaa !31
  %i.ps = load float, ptr %i.pq, align 8, !tbaa !31
  %i.pt = fsub float %i.pr, %i.ps                 ; 3 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.nc, i64 528
  %i.pv = load float, ptr %i.pu, align 8, !tbaa !31
  %i.pw = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.px = load float, ptr %i.pw, align 8, !tbaa !31
  %i.py = fsub float %i.pv, %i.px                 ; 3 uses
  %i.pz = fmul float %i.pt, %i.pt
  %i.qa = fmul float %i.py, %i.py
  %i.qb = fadd float %i.pz, %i.qa
  br label %bb.ba

_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread: ; preds = %bb.aw, %bb.ay
  %i.qc = load float, ptr %i.nq, align 8, !tbaa !67
  %i.qd = fmul float %i.qc, 2.000000e+00          ; 2 uses
  br label %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %.sink628 = phi float [ %i.pm, %bb.ax ], [ %i.qb, %bb.az ]
  %.sink626 = phi float [ %i.pn, %bb.ax ], [ %i.pt, %bb.az ]
  %.sink623 = phi float [ %i.po, %bb.ax ], [ %i.py, %bb.az ]
  %sqrt.i19.i = call float @llvm.sqrt.f32(float %.sink628)
  %i.qe = fdiv float 1.000000e+00, %sqrt.i19.i    ; 2 uses
  %i.qf = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink626, i64 0
  %i.qg = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.qh = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qi = fmul <2 x float> %i.qf, %i.qh           ; 2 uses
  %i.qj = fmul float %.sink623, %i.qe             ; 2 uses
  %i.qk = load float, ptr %i.nq, align 8, !tbaa !67
  %i.ql = fmul float %i.qk, 2.000000e+00          ; 5 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.nc, i64 568
  %i.qn = add nsw i32 %i.nv, -1                   ; 2 uses
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds i8, ptr %i.qm, i64 %i.qo
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !32
  %i.qr = and i8 %i.qq, 2
  %.not11.i = icmp eq i8 %i.qr, 0
  br i1 %.not11.i, label %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.qs = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.qt = getelementptr inbounds nuw i8, ptr %i.nc, i64 520
  %i.qu = mul nsw i32 %i.qn, 3
  %i.qv = sext i32 %i.qu to i64
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qv ; 2 uses
  %i.qx = load float, ptr %i.qw, align 4, !tbaa !31
  %i.qy = load float, ptr %i.qs, align 8, !tbaa !31
  %i.qz = fsub float %i.qx, %i.qy                 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rb = load float, ptr %i.ra, align 4, !tbaa !31
  %i.rc = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.rd = load float, ptr %i.rc, align 8, !tbaa !31
  %i.re = fsub float %i.rb, %i.rd                 ; 2 uses
  %i.rf = fmul float %i.re, %i.re
  %i.rg = call float @llvm.fmuladd.f32(float %i.qz, float %i.qz, float %i.rf)
  %sqrt.i.i405 = call noundef float @llvm.sqrt.f32(float %i.rg) ; 2 uses
  %i.rh = fcmp olt float %sqrt.i.i405, %i.ql
  %i.ri = select i1 %i.rh, float %sqrt.i.i405, float %i.ql
  br label %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit

_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit:     ; preds = %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread, %bb.ba, %bb.bb
  %i.rj = phi float [ %i.qd, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.ql, %bb.bb ], [ %i.ql, %bb.ba ]
  %.sroa.31.0611 = phi float [ 0.000000e+00, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.qj, %bb.bb ], [ %i.qj, %bb.ba ]
  %.1.i406 = phi float [ %i.qd, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.ri, %bb.bb ], [ %i.ql, %bb.ba ]
  %i.rk = phi <2 x float> [ zeroinitializer, %_ZL24calcSmoothSteerDirectionPK12dtCrowdAgentPf.exit.thread ], [ %i.qi, %bb.bb ], [ %i.qi, %bb.ba ]
  %i.rl = fdiv float %.1.i406, %i.rj
  %i.rm = getelementptr inbounds nuw i8, ptr %i.nc, i64 492
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !79 ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.nc, i64 412
  store float %i.rn, ptr %i.ro, align 4, !tbaa !50
  %i.rp = fmul float %i.rn, %i.rl                 ; 2 uses
  %i.rq = insertelement <2 x float> poison, float %i.rp, i64 0
  %i.rr = shufflevector <2 x float> %i.rq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rs = fmul <2 x float> %i.rk, %i.rr
  %i.rt = fmul float %.sroa.31.0611, %i.rp
  br label %bb.bc

bb.bc:                                            ; preds = %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit, %bb.au
  %i.ru = phi float [ %sqrt.i400, %bb.au ], [ %i.rn, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ] ; 2 uses
  %i.rv = phi i8 [ %.pre, %bb.au ], [ %i.ns, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ]
  %.sroa.31.1 = phi float [ %i.nk, %bb.au ], [ %i.rt, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ] ; 4 uses
  %i.rw = phi <2 x float> [ %i.ni, %bb.au ], [ %i.rs, %_ZL17getDistanceToGoalPK12dtCrowdAgentf.exit ] ; 4 uses
  %i.rx = and i8 %i.rv, 4
  %.not379 = icmp eq i8 %i.rx, 0
  br i1 %.not379, label %._crit_edge.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ry = getelementptr inbounds nuw i8, ptr %i.nc, i64 496
  %i.rz = load float, ptr %i.ry, align 8, !tbaa !68 ; 3 uses
  %i.sa = fdiv float 1.000000e+00, %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.nc, i64 504
  %i.sc = load float, ptr %i.sb, align 8, !tbaa !81
  %i.sd = getelementptr inbounds nuw i8, ptr %i.nc, i64 408
  %i.se = load i32, ptr %i.sd, align 8, !tbaa !49 ; 2 uses
  %i.sf = icmp sgt i32 %i.se, 0
  br i1 %i.sf, label %.lr.ph470, label %._crit_edge.thread

.lr.ph470:                                        ; preds = %bb.bd
  %i.sg = load ptr, ptr %i.jw, align 8, !tbaa !24
  %i.sh = getelementptr inbounds nuw i8, ptr %i.nc, i64 360
  %i.si = getelementptr inbounds nuw i8, ptr %i.nc, i64 416
  %i.sj = load float, ptr %i.si, align 8, !tbaa !31
  %i.sk = getelementptr inbounds nuw i8, ptr %i.nc, i64 424
  %i.sl = load float, ptr %i.sk, align 8, !tbaa !31
  %i.sm = fmul float %i.rz, %i.rz
  %wide.trip.count528 = zext nneg i32 %i.se to i64
  br label %bb.be

._crit_edge:                                      ; preds = %bb.bg
  %i.sn = fcmp ogt float %.1351, f0x38D1B717
  br i1 %i.sn, label %bb.bh, label %._crit_edge.thread

bb.be:                                            ; preds = %.lr.ph470, %bb.bg
  %indvars.iv525 = phi i64 [ 0, %.lr.ph470 ], [ %indvars.iv.next526, %bb.bg ] ; 2 uses
  %.0350468 = phi float [ 0.000000e+00, %.lr.ph470 ], [ %.1351, %bb.bg ] ; 2 uses
  %.sroa.9422.0467 = phi float [ 0.000000e+00, %.lr.ph470 ], [ %.sroa.9422.1, %bb.bg ] ; 2 uses
  %i.so = phi <2 x float> [ zeroinitializer, %.lr.ph470 ], [ %i.tn, %bb.bg ] ; 2 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %indvars.iv525
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !74
  %i.sr = sext i32 %i.sq to i64
  %i.ss = getelementptr inbounds [624 x i8], ptr %i.sg, i64 %i.sr ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 416
  %i.su = load float, ptr %i.st, align 4, !tbaa !31
  %i.sv = fsub float %i.sj, %i.su                 ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ss, i64 424
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !31
  %i.sy = fsub float %i.sl, %i.sx                 ; 3 uses
  %6 = fmul float %i.sv, %i.sv
  %i.sz = call noundef float @llvm.fmuladd.f32(float %i.sy, float %i.sy, float %6) ; 3 uses
  %i.ta = fcmp olt float %i.sz, f0x3727C5AC
  %i.tb = fcmp ogt float %i.sz, %i.sm
  %or.cond441 = select i1 %i.ta, i1 true, i1 %i.tb
  br i1 %or.cond441, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %sqrt = call float @llvm.sqrt.f32(float %i.sz)  ; 2 uses
  %i.tc = fmul float %i.sa, %sqrt                 ; 2 uses
  %i.td = fmul float %i.tc, %i.tc
  %i.te = fsub float 1.000000e+00, %i.td
  %i.tf = fmul float %i.sc, %i.te
  %i.tg = fdiv float %i.tf, %sqrt                 ; 2 uses
  %i.th = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.sv, i64 0
  %i.ti = insertelement <2 x float> poison, float %i.tg, i64 0
  %i.tj = shufflevector <2 x float> %i.ti, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.th, <2 x float> %i.tj, <2 x float> %i.so)
  %i.tl = call float @llvm.fmuladd.f32(float %i.sy, float %i.tg, float %.sroa.9422.0467)
  %i.tm = fadd float %.0350468, 1.000000e+00
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %.sroa.9422.1 = phi float [ %.sroa.9422.0467, %bb.be ], [ %i.tl, %bb.bf ] ; 2 uses
  %.1351 = phi float [ %.0350468, %bb.be ], [ %i.tm, %bb.bf ] ; 3 uses
  %i.tn = phi <2 x float> [ %i.so, %bb.be ], [ %i.tk, %bb.bf ] ; 2 uses
  %indvars.iv.next526 = add nuw nsw i64 %indvars.iv525, 1 ; 2 uses
  %exitcond529.not = icmp eq i64 %indvars.iv.next526, %wide.trip.count528
  br i1 %exitcond529.not, label %._crit_edge, label %bb.be

bb.bh:                                            ; preds = %._crit_edge
  %i.to = fdiv float 1.000000e+00, %.1351         ; 2 uses
  %i.tp = insertelement <2 x float> poison, float %i.to, i64 0
  %i.tq = shufflevector <2 x float> %i.tp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tn, <2 x float> %i.tq, <2 x float> %i.rw) ; 5 uses
  %i.ts = call float @llvm.fmuladd.f32(float %.sroa.9422.1, float %i.to, float %.sroa.31.1) ; 4 uses
  %foldExtExtBinop644 = fmul <2 x float> %i.tr, %i.tr
  %i.tt = extractelement <2 x float> %foldExtExtBinop644, i64 1
  %i.tu = extractelement <2 x float> %i.tr, i64 0 ; 2 uses
  %i.tv = call float @llvm.fmuladd.f32(float %i.tu, float %i.tu, float %i.tt)
  %i.tw = call noundef float @llvm.fmuladd.f32(float %i.ts, float %i.ts, float %i.tv) ; 2 uses
  %i.tx = fmul float %i.ru, %i.ru                 ; 2 uses
  %i.ty = fcmp ogt float %i.tw, %i.tx
  br i1 %i.ty, label %bb.bi, label %._crit_edge.thread

bb.bi:                                            ; preds = %bb.bh
  %i.tz = fdiv float %i.tx, %i.tw                 ; 2 uses
  %i.ua = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.ub = shufflevector <2 x float> %i.ua, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uc = fmul <2 x float> %i.tr, %i.ub
  %i.ud = fmul float %i.ts, %i.tz
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.bd, %._crit_edge, %bb.bi, %bb.bh, %bb.bc
  %.sroa.31.3 = phi float [ %.sroa.31.1, %bb.bc ], [ %i.ud, %bb.bi ], [ %i.ts, %bb.bh ], [ %.sroa.31.1, %._crit_edge ], [ %.sroa.31.1, %bb.bd ]
  %i.ue = phi <2 x float> [ %i.rw, %bb.bc ], [ %i.uc, %bb.bi ], [ %i.tr, %bb.bh ], [ %i.rw, %._crit_edge ], [ %i.rw, %bb.bd ]
  %i.uf = getelementptr inbounds nuw i8, ptr %i.nc, i64 440
  store <2 x float> %i.ue, ptr %i.uf, align 8, !tbaa !31
  %i.ug = getelementptr inbounds nuw i8, ptr %i.nc, i64 448
  store float %.sroa.31.3, ptr %i.ug, align 8, !tbaa !31
  br label %bb.bj

bb.bj:                                            ; preds = %bb.at, %bb.as, %._crit_edge.thread
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next531, %wide.trip.count533
  br i1 %exitcond534.not, label %.lr.ph483, label %bb.as

.lr.ph485.preheader:                              ; preds = %bb.bu
  %wide.trip.count549 = zext nneg i32 %.09.lcssa.i to i64
  %i.uh = insertelement <2 x float> poison, float %1, i64 0
  %i.ui = shufflevector <2 x float> %i.uh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph485

bb.bk:                                            ; preds = %.lr.ph483, %bb.bu
  %indvars.iv541 = phi i64 [ 0, %.lr.ph483 ], [ %indvars.iv.next542, %bb.bu ] ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv541
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !56 ; 19 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 1
  %i.um = load i8, ptr %i.ul, align 1, !tbaa !51
  %.not375 = icmp eq i8 %i.um, 1
  br i1 %.not375, label %bb.bl, label %bb.bu

bb.bl:                                            ; preds = %bb.bk
  %i.un = getelementptr inbounds nuw i8, ptr %i.uk, i64 480
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uk, i64 508
  %i.up = load i8, ptr %i.uo, align 4, !tbaa !59
  %i.uq = and i8 %i.up, 2
  %.not376 = icmp eq i8 %i.uq, 0
  br i1 %.not376, label %bb.bt, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ur = load ptr, ptr %i.mx, align 8, !tbaa !29
  call void @_ZN24dtObstacleAvoidanceQuery5resetEv(ptr noundef nonnull align 8 dereferenceable(76) %i.ur) #12
  %i.us = getelementptr inbounds nuw i8, ptr %i.uk, i64 408 ; 2 uses
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !49
  %i.uu = icmp sgt i32 %i.ut, 0
  br i1 %i.uu, label %.lr.ph478, label %.preheader449

.lr.ph478:                                        ; preds = %bb.bm
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uk, i64 360
  br label %bb.bn

.preheader449:                                    ; preds = %bb.bn, %bb.bm
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uk, i64 284 ; 2 uses
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !82 ; 2 uses
  %i.uy = icmp sgt i32 %i.ux, 0
  br i1 %i.uy, label %.lr.ph480, label %._crit_edge481

.lr.ph480:                                        ; preds = %.preheader449
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uk, i64 60
  %i.va = getelementptr inbounds nuw i8, ptr %i.uk, i64 416
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uk, i64 424
  br label %bb.bo

bb.bn:                                            ; preds = %.lr.ph478, %bb.bn
  %indvars.iv535 = phi i64 [ 0, %.lr.ph478 ], [ %indvars.iv.next536, %bb.bn ] ; 2 uses
  %i.vc = load ptr, ptr %i.my, align 8, !tbaa !24
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.uv, i64 %indvars.iv535
  %i.ve = load i32, ptr %i.vd, align 8, !tbaa !74
  %i.vf = sext i32 %i.ve to i64
  %i.vg = getelementptr inbounds [624 x i8], ptr %i.vc, i64 %i.vf ; 4 uses
  %i.vh = load ptr, ptr %i.mx, align 8, !tbaa !29
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vg, i64 416
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vg, i64 480
  %i.vk = load float, ptr %i.vj, align 8, !tbaa !67
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vg, i64 464
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vg, i64 440
  call void @_ZN24dtObstacleAvoidanceQuery9addCircleEPKffS1_S1_(ptr noundef nonnull align 8 dereferenceable(76) %i.vh, ptr noundef nonnull %i.vi, float noundef %i.vk, ptr noundef nonnull %i.vl, ptr noundef nonnull %i.vm) #12
  %indvars.iv.next536 = add nuw nsw i64 %indvars.iv535, 1 ; 2 uses
  %i.vn = load i32, ptr %i.us, align 8, !tbaa !49
  %i.vo = sext i32 %i.vn to i64
  %i.vp = icmp slt i64 %indvars.iv.next536, %i.vo
  br i1 %i.vp, label %bb.bn, label %.preheader449

._crit_edge481:                                   ; preds = %bb.bq, %.preheader449
  %i.vq = icmp eq i64 %i.f, %indvars.iv541
  br i1 %i.vq, label %bb.br, label %bb.bs

bb.bo:                                            ; preds = %.lr.ph480, %bb.bq
  %i.vr = phi i32 [ %i.ux, %.lr.ph480 ], [ %i.wl, %bb.bq ]
  %indvars.iv538 = phi i64 [ 0, %.lr.ph480 ], [ %indvars.iv.next539, %bb.bq ] ; 2 uses
  %i.vs = getelementptr inbounds nuw [28 x i8], ptr %i.uz, i64 %indvars.iv538 ; 5 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 12 ; 2 uses
  %i.vu = load float, ptr %i.vs, align 4, !tbaa !31
  %i.vv = load float, ptr %i.va, align 8, !tbaa !31 ; 2 uses
  %i.vw = fsub float %i.vu, %i.vv
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vs, i64 8
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !31
  %i.vz = load float, ptr %i.vb, align 8, !tbaa !31 ; 2 uses
  %i.wa = fsub float %i.vy, %i.vz
  %i.wb = load float, ptr %i.vt, align 4, !tbaa !31
  %i.wc = fsub float %i.wb, %i.vv
  %i.wd = getelementptr inbounds nuw i8, ptr %i.vs, i64 20
  %i.we = load float, ptr %i.wd, align 4, !tbaa !31
  %i.wf = fsub float %i.we, %i.vz
  %i.wg = fneg float %i.wf
  %i.wh = fmul float %i.vw, %i.wg
  %i.wi = call noundef float @llvm.fmuladd.f32(float %i.wc, float %i.wa, float %i.wh)
  %i.wj = fcmp olt float %i.wi, 0.000000e+00
  br i1 %i.wj, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.wk = load ptr, ptr %i.mx, align 8, !tbaa !29
  call void @_ZN24dtObstacleAvoidanceQuery10addSegmentEPKfS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.wk, ptr noundef nonnull %i.vs, ptr noundef nonnull %i.vt) #12
  %.pre577 = load i32, ptr %i.uw, align 4, !tbaa !82
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %i.wl = phi i32 [ %i.vr, %bb.bo ], [ %.pre577, %bb.bp ] ; 2 uses
  %indvars.iv.next539 = add nuw nsw i64 %indvars.iv538, 1 ; 2 uses
  %i.wm = sext i32 %i.wl to i64
  %i.wn = icmp slt i64 %indvars.iv.next539, %i.wm
  br i1 %i.wn, label %bb.bo, label %._crit_edge481

bb.br:                                            ; preds = %._crit_edge481
  %i.wo = load ptr, ptr %i.mz, align 8, !tbaa !83
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge481, %bb.br
  %.0342 = phi ptr [ %i.wo, %bb.br ], [ null, %._crit_edge481 ]
  %i.wp = getelementptr inbounds nuw i8, ptr %i.uk, i64 509
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !84
  %i.wr = zext i8 %i.wq to i64
  %i.ws = getelementptr inbounds nuw [28 x i8], ptr %i.na, i64 %i.wr
  %i.wt = load ptr, ptr %i.mx, align 8, !tbaa !29
  %i.wu = getelementptr inbounds nuw i8, ptr %i.uk, i64 416
  %i.wv = load float, ptr %i.un, align 8, !tbaa !67
  %i.ww = getelementptr inbounds nuw i8, ptr %i.uk, i64 412
  %i.wx = load float, ptr %i.ww, align 4, !tbaa !50
  %i.wy = getelementptr inbounds nuw i8, ptr %i.uk, i64 464
  %i.wz = getelementptr inbounds nuw i8, ptr %i.uk, i64 440
  %i.xa = getelementptr inbounds nuw i8, ptr %i.uk, i64 452
  %i.xb = call noundef i32 @_ZN24dtObstacleAvoidanceQuery22sampleVelocityAdaptiveEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76) %i.wt, ptr noundef nonnull %i.wu, float noundef %i.wv, float noundef %i.wx, ptr noundef nonnull %i.wy, ptr noundef nonnull %i.wz, ptr noundef nonnull %i.xa, ptr noundef nonnull %i.ws, ptr noundef %.0342) #12
  %i.xc = load i32, ptr %i.c, align 4, !tbaa !63
  %i.xd = add nsw i32 %i.xc, %i.xb
  store i32 %i.xd, ptr %i.c, align 4, !tbaa !63
  br label %bb.bu

bb.bt:                                            ; preds = %bb.bl
  %i.xe = getelementptr inbounds nuw i8, ptr %i.uk, i64 452
  %i.xf = getelementptr inbounds nuw i8, ptr %i.uk, i64 440
  %i.xg = load <2 x float>, ptr %i.xf, align 4, !tbaa !31
  store <2 x float> %i.xg, ptr %i.xe, align 4, !tbaa !31
  %i.xh = getelementptr inbounds nuw i8, ptr %i.uk, i64 448
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !31
  %i.xj = getelementptr inbounds nuw i8, ptr %i.uk, i64 460
  store float %i.xi, ptr %i.xj, align 4, !tbaa !31
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt, %bb.bk
  %indvars.iv.next542 = add nuw nsw i64 %indvars.iv541, 1 ; 2 uses
  %exitcond545.not = icmp eq i64 %indvars.iv.next542, %wide.trip.count544
  br i1 %exitcond545.not, label %.lr.ph485.preheader, label %bb.bk

.preheader447:                                    ; preds = %_ZL9integrateP12dtCrowdAgentf.exit, %_ZN7dtCrowd26updateTopologyOptimizationEPP12dtCrowdAgentif.exit.thread
  %i.xk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count559 = zext nneg i32 %.09.lcssa.i to i64
  %wide.trip.count564 = zext nneg i32 %.09.lcssa.i to i64
  br label %.preheader446

.lr.ph485:                                        ; preds = %.lr.ph485.preheader, %_ZL9integrateP12dtCrowdAgentf.exit
  %indvars.iv546 = phi i64 [ 0, %.lr.ph485.preheader ], [ %indvars.iv.next547, %_ZL9integrateP12dtCrowdAgentf.exit ] ; 2 uses
  %i.xl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv546
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !56 ; 8 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 1
  %i.xo = load i8, ptr %i.xn, align 1, !tbaa !51
  %.not374 = icmp eq i8 %i.xo, 1
  br i1 %.not374, label %bb.bv, label %_ZL9integrateP12dtCrowdAgentf.exit

bb.bv:                                            ; preds = %.lr.ph485
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xm, i64 488
  %i.xq = load float, ptr %i.xp, align 8, !tbaa !85
  %i.xr = fmul float %1, %i.xq                    ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xm, i64 452
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xm, i64 464 ; 3 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xm, i64 460
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !31
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xm, i64 472 ; 3 uses
  %i.xx = load float, ptr %i.xw, align 8, !tbaa !31 ; 2 uses
  %i.xy = fsub float %i.xv, %i.xx                 ; 4 uses
  %i.xz = load <2 x float>, ptr %i.xs, align 4, !tbaa !31
  %i.ya = load <2 x float>, ptr %i.xt, align 8, !tbaa !31 ; 2 uses
  %i.yb = fsub <2 x float> %i.xz, %i.ya           ; 5 uses
  %foldExtExtBinop646 = fmul <2 x float> %i.yb, %i.yb
  %i.yc = extractelement <2 x float> %foldExtExtBinop646, i64 1
  %i.yd = extractelement <2 x float> %i.yb, i64 0 ; 2 uses
  %i.ye = call float @llvm.fmuladd.f32(float %i.yd, float %i.yd, float %i.yc)
  %i.yf = call float @llvm.fmuladd.f32(float %i.xy, float %i.xy, float %i.ye)
  %sqrt.i.i407 = call noundef float @llvm.sqrt.f32(float %i.yf) ; 2 uses
  %i.yg = fcmp ogt float %sqrt.i.i407, %i.xr      ; 2 uses
  %i.yh = fdiv float %i.xr, %sqrt.i.i407          ; 2 uses
  %i.yi = insertelement <2 x float> poison, float %i.yh, i64 0
  %i.yj = shufflevector <2 x float> %i.yi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.yk = fmul <2 x float> %i.yb, %i.yj
  %i.yl = fmul float %i.xy, %i.yh
  %.sroa.12.0.i408 = select i1 %i.yg, float %i.yl, float %i.xy
  %i.ym = insertelement <2 x i1> poison, i1 %i.yg, i64 0
  %i.yn = shufflevector <2 x i1> %i.ym, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.yo = select <2 x i1> %i.yn, <2 x float> %i.yk, <2 x float> %i.yb
  %i.yp = fadd <2 x float> %i.ya, %i.yo           ; 5 uses
  %i.yq = extractelement <2 x float> %i.yp, i64 0 ; 2 uses
  store <2 x float> %i.yp, ptr %i.xt, align 8, !tbaa !31
  %i.yr = fadd float %i.xx, %.sroa.12.0.i408      ; 4 uses
  store float %i.yr, ptr %i.xw, align 8, !tbaa !31
  %foldExtExtBinop648 = fmul <2 x float> %i.yp, %i.yp
  %i.ys = extractelement <2 x float> %foldExtExtBinop648, i64 1
  %i.yt = call float @llvm.fmuladd.f32(float %i.yq, float %i.yq, float %i.ys)
  %i.yu = call float @llvm.fmuladd.f32(float %i.yr, float %i.yr, float %i.yt)
  %sqrt.i17.i = call noundef float @llvm.sqrt.f32(float %i.yu)
  %i.yv = fcmp ogt float %sqrt.i17.i, f0x38D1B717
  br i1 %i.yv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.yw = getelementptr inbounds nuw i8, ptr %i.xm, i64 416 ; 2 uses
  %i.yx = load <2 x float>, ptr %i.yw, align 8, !tbaa !31
  %i.yy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yp, <2 x float> %i.ui, <2 x float> %i.yx)
  store <2 x float> %i.yy, ptr %i.yw, align 8, !tbaa !31
  %i.yz = getelementptr inbounds nuw i8, ptr %i.xm, i64 424 ; 2 uses
  %i.za = load float, ptr %i.yz, align 8, !tbaa !31
  %i.zb = call float @llvm.fmuladd.f32(float %i.yr, float %1, float %i.za)
  store float %i.zb, ptr %i.yz, align 8, !tbaa !31
  br label %_ZL9integrateP12dtCrowdAgentf.exit

bb.bx:                                            ; preds = %bb.bv
  store <2 x float> zeroinitializer, ptr %i.xt, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.xw, align 8, !tbaa !31
  br label %_ZL9integrateP12dtCrowdAgentf.exit

_ZL9integrateP12dtCrowdAgentf.exit:               ; preds = %bb.bx, %bb.bw, %.lr.ph485
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond550.not = icmp eq i64 %indvars.iv.next547, %wide.trip.count549
  br i1 %exitcond550.not, label %.preheader447, label %.lr.ph485

.preheader446:                                    ; preds = %.preheader446.backedge, %.preheader447
  %.0339497 = phi i32 [ 0, %.preheader447 ], [ %.0339497.be, %.preheader446.backedge ] ; 2 uses
  br i1 %i.al, label %.lr.ph493, label %._crit_edge496.thread

.lr.ph493:                                        ; preds = %.preheader446
  %i.zc = load ptr, ptr %i.xk, align 8, !tbaa !24 ; 2 uses
  %i.zd = ptrtoint ptr %i.zc to i64
  br label %bb.by

.lr.ph499:                                        ; preds = %._crit_edge496
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 5064
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 896
  %wide.trip.count570 = zext nneg i32 %.09.lcssa.i to i64
  br label %bb.cl

bb.by:                                            ; preds = %.lr.ph493, %._crit_edge490.thread
  %indvars.iv556 = phi i64 [ 0, %.lr.ph493 ], [ %indvars.iv.next557, %._crit_edge490.thread ] ; 2 uses
  %i.zg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv556
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !56 ; 11 uses
  %i.zi = ptrtoint ptr %i.zh to i64
  %i.zj = sub i64 %i.zi, %i.zd
  %i.zk = sdiv exact i64 %i.zj, 624
  %i.zl = trunc i64 %i.zk to i32
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zh, i64 1
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !51
  %.not373 = icmp eq i8 %i.zn, 1
  br i1 %.not373, label %bb.bz, label %._crit_edge490.thread

bb.bz:                                            ; preds = %bb.by
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zh, i64 428 ; 3 uses
  store <2 x float> zeroinitializer, ptr %i.zo, align 4, !tbaa !31
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zh, i64 436 ; 3 uses
  store float 0.000000e+00, ptr %i.zp, align 4, !tbaa !31
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zh, i64 408
  %i.zr = load i32, ptr %i.zq, align 8, !tbaa !49 ; 2 uses
  %i.zs = icmp sgt i32 %i.zr, 0
  br i1 %i.zs, label %.lr.ph489, label %._crit_edge490.thread

.lr.ph489:                                        ; preds = %bb.bz
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zh, i64 360
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zh, i64 416
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zh, i64 424
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zh, i64 480
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zh, i64 440 ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zh, i64 448
  %wide.trip.count554 = zext nneg i32 %i.zr to i64
  %.pre578 = load float, ptr %i.zu, align 8, !tbaa !31
  %.pre579 = load float, ptr %i.zv, align 8, !tbaa !31
  %.pre580 = load float, ptr %i.zw, align 8, !tbaa !67
  br label %bb.ca

._crit_edge490:                                   ; preds = %bb.ch
  %i.zz = fcmp ogt float %.1, f0x38D1B717
  br i1 %i.zz, label %bb.ci, label %._crit_edge490.thread

bb.ca:                                            ; preds = %.lr.ph489, %bb.ch
  %i.aaa = phi float [ 0.000000e+00, %.lr.ph489 ], [ %i.abk, %bb.ch ] ; 2 uses
  %indvars.iv551 = phi i64 [ 0, %.lr.ph489 ], [ %indvars.iv.next552, %bb.ch ] ; 2 uses
  %.0337486 = phi float [ 0.000000e+00, %.lr.ph489 ], [ %.1, %bb.ch ] ; 2 uses
  %i.aab = phi <2 x float> [ zeroinitializer, %.lr.ph489 ], [ %i.abl, %bb.ch ] ; 2 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %indvars.iv551
  %i.aad = load i32, ptr %i.aac, align 8, !tbaa !74 ; 2 uses
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = getelementptr inbounds [624 x i8], ptr %i.zc, i64 %i.aae ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 416
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !31
  %i.aai = fsub float %.pre578, %i.aah            ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aaf, i64 424
  %i.aak = load float, ptr %i.aaj, align 4, !tbaa !31
  %i.aal = fsub float %.pre579, %i.aak            ; 3 uses
  %7 = fmul float %i.aai, %i.aai
  %i.aam = call noundef float @llvm.fmuladd.f32(float %i.aal, float %i.aal, float %7) ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaf, i64 480
  %i.aao = load float, ptr %i.aan, align 8, !tbaa !67
  %i.aap = fadd float %.pre580, %i.aao            ; 3 uses
  %i.aaq = fmul float %i.aap, %i.aap
  %i.aar = fcmp ogt float %i.aam, %i.aaq
  br i1 %i.aar, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %sqrt443 = call float @llvm.sqrt.f32(float %i.aam) ; 3 uses
  %i.aas = fcmp olt float %sqrt443, f0x38D1B717
  br i1 %i.aas, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.aat = icmp slt i32 %i.aad, %i.zl
  %i.aau = load float, ptr %i.zy, align 8, !tbaa !31 ; 2 uses
  br i1 %i.aat, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.aav = fneg float %i.aau
  %i.aaw = load float, ptr %i.zx, align 8, !tbaa !31
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cc
  %i.aax = load float, ptr %i.zx, align 8, !tbaa !31
  %i.aay = fneg float %i.aax
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  %i.aaz = fsub float %i.aap, %sqrt443
  %i.aba = fdiv float 1.000000e+00, %sqrt443
  %i.abb = fmul float %i.aaz, 5.000000e-01
  %i.abc = fmul float %i.aba, %i.abb
  %i.abd = fmul float %i.abc, f0x3F333333
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cd, %bb.ce, %bb.cf
  %.sroa.13.0 = phi float [ %i.aaw, %bb.cd ], [ %i.aay, %bb.ce ], [ %i.aal, %bb.cf ]
  %.sroa.0.0 = phi float [ %i.aav, %bb.cd ], [ %i.aau, %bb.ce ], [ %i.aai, %bb.cf ]
  %.0335 = phi float [ f0x3C23D70A, %bb.cd ], [ f0x3C23D70A, %bb.ce ], [ %i.abd, %bb.cf ] ; 2 uses
  %i.abe = insertelement <2 x float> poison, float %.0335, i64 0
  %i.abf = shufflevector <2 x float> %i.abe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abg = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sroa.0.0, i64 0
  %i.abh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abf, <2 x float> %i.abg, <2 x float> %i.aab) ; 2 uses
  store <2 x float> %i.abh, ptr %i.zo, align 4, !tbaa !31
  %i.abi = call float @llvm.fmuladd.f32(float %.sroa.13.0, float %.0335, float %i.aaa) ; 2 uses
  store float %i.abi, ptr %i.zp, align 4, !tbaa !31
  %i.abj = fadd float %.0337486, 1.000000e+00
  br label %bb.ch

bb.ch:                                            ; preds = %bb.ca, %bb.cg
  %i.abk = phi float [ %i.abi, %bb.cg ], [ %i.aaa, %bb.ca ] ; 2 uses
  %.1 = phi float [ %i.abj, %bb.cg ], [ %.0337486, %bb.ca ] ; 3 uses
  %i.abl = phi <2 x float> [ %i.abh, %bb.cg ], [ %i.aab, %bb.ca ] ; 2 uses
  %indvars.iv.next552 = add nuw nsw i64 %indvars.iv551, 1 ; 2 uses
  %exitcond555.not = icmp eq i64 %indvars.iv.next552, %wide.trip.count554
  br i1 %exitcond555.not, label %._crit_edge490, label %bb.ca

bb.ci:                                            ; preds = %._crit_edge490
  %i.abm = fdiv float 1.000000e+00, %.1           ; 2 uses
  %i.abn = insertelement <2 x float> poison, float %i.abm, i64 0
  %i.abo = shufflevector <2 x float> %i.abn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abp = fmul <2 x float> %i.abo, %i.abl
  store <2 x float> %i.abp, ptr %i.zo, align 4, !tbaa !31
  %i.abq = fmul float %i.abm, %i.abk
  store float %i.abq, ptr %i.zp, align 4, !tbaa !31
  br label %._crit_edge490.thread

._crit_edge490.thread:                            ; preds = %bb.bz, %._crit_edge490, %bb.ci, %bb.by
  %indvars.iv.next557 = add nuw nsw i64 %indvars.iv556, 1 ; 2 uses
  %exitcond560.not = icmp eq i64 %indvars.iv.next557, %wide.trip.count559
  br i1 %exitcond560.not, label %.lr.ph495, label %bb.by

._crit_edge496:                                   ; preds = %bb.ck
  %i.abr = add nuw nsw i32 %.0339497, 1           ; 2 uses
  %exitcond566.not = icmp eq i32 %i.abr, 4
  br i1 %exitcond566.not, label %.lr.ph499, label %.preheader446.backedge

.preheader446.backedge:                           ; preds = %._crit_edge496, %._crit_edge496.thread
  %.0339497.be = phi i32 [ %i.abr, %._crit_edge496 ], [ %i.abs, %._crit_edge496.thread ]
  br label %.preheader446

._crit_edge496.thread:                            ; preds = %.preheader446
  %i.abs = add nuw nsw i32 %.0339497, 1           ; 2 uses
  %exitcond566.not616 = icmp eq i32 %i.abs, 4
  br i1 %exitcond566.not616, label %._crit_edge502, label %.preheader446.backedge

.lr.ph495:                                        ; preds = %._crit_edge490.thread, %bb.ck
  %indvars.iv561 = phi i64 [ %indvars.iv.next562, %bb.ck ], [ 0, %._crit_edge490.thread ] ; 2 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv561
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !56 ; 5 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 1
  %i.abw = load i8, ptr %i.abv, align 1, !tbaa !51
  %.not372 = icmp eq i8 %i.abw, 1
  br i1 %.not372, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph495
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 416 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abu, i64 428
  %i.abz = load <2 x float>, ptr %i.abx, align 4, !tbaa !31
  %i.aca = load <2 x float>, ptr %i.aby, align 4, !tbaa !31
  %i.acb = fadd <2 x float> %i.abz, %i.aca
  store <2 x float> %i.acb, ptr %i.abx, align 4, !tbaa !31
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abu, i64 424 ; 2 uses
  %i.acd = load float, ptr %i.acc, align 4, !tbaa !31
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abu, i64 436
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !31
  %i.acg = fadd float %i.acd, %i.acf
  store float %i.acg, ptr %i.acc, align 4, !tbaa !31
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph495, %bb.cj
  %indvars.iv.next562 = add nuw nsw i64 %indvars.iv561, 1 ; 2 uses
  %exitcond565.not = icmp eq i64 %indvars.iv.next562, %wide.trip.count564
  br i1 %exitcond565.not, label %._crit_edge496, label %.lr.ph495

.lr.ph501:                                        ; preds = %bb.cp
  %i.ach = load ptr, ptr %i.xk, align 8, !tbaa !24
  %i.aci = ptrtoint ptr %i.ach to i64
  %i.acj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ack = load ptr, ptr %i.acj, align 8, !tbaa !26
  %wide.trip.count575 = zext nneg i32 %.09.lcssa.i to i64
  br label %bb.cq

bb.cl:                                            ; preds = %.lr.ph499, %bb.cp
  %indvars.iv567 = phi i64 [ 0, %.lr.ph499 ], [ %indvars.iv.next568, %bb.cp ] ; 2 uses
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv567
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !56 ; 10 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 1
  %i.aco = load i8, ptr %i.acn, align 1, !tbaa !51
  %.not371 = icmp eq i8 %i.aco, 1
  br i1 %.not371, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl
  %i.acp = getelementptr inbounds nuw i8, ptr %i.acm, i64 8 ; 3 uses
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acm, i64 416 ; 3 uses
  %i.acr = load ptr, ptr %i.ze, align 8, !tbaa !30
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acm, i64 510
  %i.act = load i8, ptr %i.acs, align 2, !tbaa !45
  %i.acu = zext i8 %i.act to i64
  %i.acv = getelementptr inbounds nuw [260 x i8], ptr %i.zf, i64 %i.acu
  %i.acw = call noundef zeroext i1 @_ZN14dtPathCorridor12movePositionEPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40) %i.acp, ptr noundef nonnull %i.acq, ptr noundef %i.acr, ptr noundef nonnull %i.acv) #12 ; 0 uses
  %i.acx = load <2 x float>, ptr %i.acp, align 4, !tbaa !31
  store <2 x float> %i.acx, ptr %i.acq, align 4, !tbaa !31
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acm, i64 16
  %i.acz = load float, ptr %i.acy, align 4, !tbaa !31
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acm, i64 424
  store float %i.acz, ptr %i.ada, align 4, !tbaa !31
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acm, i64 592
  %i.adc = load i8, ptr %i.adb, align 8, !tbaa !52
  switch i8 %i.adc, label %bb.cp [
    i8 0, label %bb.cn
    i8 6, label %bb.cn
  ]

bb.cn:                                            ; preds = %bb.cm, %bb.cm
  %i.add = getelementptr inbounds nuw i8, ptr %i.acm, i64 40
  %i.ade = load i32, ptr %i.add, align 8, !tbaa !58
  %.not.i410 = icmp eq i32 %i.ade, 0
  br i1 %.not.i410, label %_ZNK14dtPathCorridor12getFirstPolyEv.exit411, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acm, i64 32
  %i.adg = load ptr, ptr %i.adf, align 8, !tbaa !57
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !44
  br label %_ZNK14dtPathCorridor12getFirstPolyEv.exit411

_ZNK14dtPathCorridor12getFirstPolyEv.exit411:     ; preds = %bb.cn, %bb.co
  %i.adi = phi i32 [ %i.adh, %bb.co ], [ 0, %bb.cn ]
  call void @_ZN14dtPathCorridor5resetEjPKf(ptr noundef nonnull align 8 dereferenceable(40) %i.acp, i32 noundef %i.adi, ptr noundef nonnull %i.acq) #12
  %i.adj = getelementptr inbounds nuw i8, ptr %i.acm, i64 2
  store i8 0, ptr %i.adj, align 2, !tbaa !46
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNK14dtPathCorridor12getFirstPolyEv.exit411, %bb.cm, %bb.cl
  %indvars.iv.next568 = add nuw nsw i64 %indvars.iv567, 1 ; 2 uses
  %exitcond571.not = icmp eq i64 %indvars.iv.next568, %wide.trip.count570
  br i1 %exitcond571.not, label %.lr.ph501, label %bb.cl

._crit_edge502:                                   ; preds = %._crit_edge496.thread, %bb.cx
  ret void

bb.cq:                                            ; preds = %.lr.ph501, %bb.cx
  %indvars.iv572 = phi i64 [ 0, %.lr.ph501 ], [ %indvars.iv.next573, %bb.cx ] ; 2 uses
  %i.adk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv572
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !56 ; 10 uses
  %i.adm = ptrtoint ptr %i.adl to i64
  %i.adn = sub i64 %i.adm, %i.aci
  %i.ado = sdiv exact i64 %i.adn, 624
  %i.adp = shl i64 %i.ado, 32
  %i.adq = ashr exact i64 %i.adp, 32
  %i.adr = getelementptr inbounds [52 x i8], ptr %i.ack, i64 %i.adq ; 13 uses
  %i.ads = load i8, ptr %i.adr, align 4, !tbaa !41, !range !42, !noundef !43
  %i.adt = trunc nuw i8 %i.ads to i1
  br i1 %i.adt, label %bb.cr, label %bb.cx

bb.cr:                                            ; preds = %bb.cq
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 44 ; 2 uses
  %i.adv = load float, ptr %i.adu, align 4, !tbaa !78
  %i.adw = fadd float %1, %i.adv                  ; 5 uses
  store float %i.adw, ptr %i.adu, align 4, !tbaa !78
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adr, i64 48
  %i.ady = load float, ptr %i.adx, align 4, !tbaa !80 ; 3 uses
  %i.adz = fcmp ogt float %i.adw, %i.ady
  br i1 %i.adz, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i8 0, ptr %i.adr, align 4, !tbaa !41
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adl, i64 1
  store i8 1, ptr %i.aea, align 1, !tbaa !51
  br label %bb.cx

bb.ct:                                            ; preds = %bb.cr
  %i.aeb = fmul float %i.ady, 1.500000e-01        ; 4 uses
  %i.aec = fcmp olt float %i.adw, %i.aeb
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adr, i64 20 ; 2 uses
  br i1 %i.aec, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aee = fdiv float %i.adw, %i.aeb              ; 3 uses
  %i.aef = fcmp olt float %i.aee, 0.000000e+00
  %i.aeg = fcmp ogt float %i.aee, 1.000000e+00
  %i.aeh = select i1 %i.aeg, float 1.000000e+00, float %i.aee
  %i.aei = select i1 %i.aef, float 0.000000e+00, float %i.aeh ; 3 uses
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adl, i64 416
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adr, i64 4
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %i.aem = load float, ptr %i.aek, align 4, !tbaa !31 ; 2 uses
  %i.aen = load float, ptr %i.ael, align 4, !tbaa !31
  %i.aeo = fsub float %i.aen, %i.aem
  %i.aep = call float @llvm.fmuladd.f32(float %i.aeo, float %i.aei, float %i.aem)
  store float %i.aep, ptr %i.aej, align 4, !tbaa !31
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.aer = load float, ptr %i.aeq, align 4, !tbaa !31 ; 2 uses
  %i.aes = load float, ptr %i.aed, align 4, !tbaa !31
  %i.aet = fsub float %i.aes, %i.aer
  %i.aeu = call float @llvm.fmuladd.f32(float %i.aet, float %i.aei, float %i.aer)
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.aev = fsub float %i.adw, %i.aeb
  %i.aew = fsub float %i.ady, %i.aeb
  %i.aex = fdiv float %i.aev, %i.aew              ; 3 uses
  %i.aey = fcmp olt float %i.aex, 0.000000e+00
  %i.aez = fcmp ogt float %i.aex, 1.000000e+00
  %i.afa = select i1 %i.aez, float 1.000000e+00, float %i.aex
  %i.afb = select i1 %i.aey, float 0.000000e+00, float %i.afa ; 3 uses
  %i.afc = getelementptr inbounds nuw i8, ptr %i.adl, i64 416
  %i.afd = getelementptr inbounds nuw i8, ptr %i.adr, i64 16
  %i.afe = getelementptr inbounds nuw i8, ptr %i.adr, i64 28
  %i.aff = load float, ptr %i.afd, align 4, !tbaa !31 ; 2 uses
  %i.afg = load float, ptr %i.afe, align 4, !tbaa !31
  %i.afh = fsub float %i.afg, %i.aff
  %i.afi = call float @llvm.fmuladd.f32(float %i.afh, float %i.afb, float %i.aff)
  store float %i.afi, ptr %i.afc, align 4, !tbaa !31
  %i.afj = load float, ptr %i.aed, align 4, !tbaa !31 ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %i.adr, i64 32
  %i.afl = load float, ptr %i.afk, align 4, !tbaa !31
  %i.afm = fsub float %i.afl, %i.afj
  %i.afn = call float @llvm.fmuladd.f32(float %i.afm, float %i.afb, float %i.afj)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.sink636 = phi float [ %i.afn, %bb.cv ], [ %i.aeu, %bb.cu ]
  %.sink635 = phi i64 [ 24, %bb.cv ], [ 12, %bb.cu ]
  %.sink = phi i64 [ 36, %bb.cv ], [ 24, %bb.cu ]
  %.sink630 = phi float [ %i.afb, %bb.cv ], [ %i.aei, %bb.cu ]
  %i.afo = getelementptr inbounds nuw i8, ptr %i.adl, i64 420
  store float %.sink636, ptr %i.afo, align 4, !tbaa !31
  %i.afp = getelementptr inbounds nuw i8, ptr %i.adr, i64 %.sink635
  %i.afq = load float, ptr %i.afp, align 4, !tbaa !31 ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.adr, i64 %.sink
  %i.afs = load float, ptr %i.afr, align 4, !tbaa !31
  %i.aft = fsub float %i.afs, %i.afq
  %i.afu = call float @llvm.fmuladd.f32(float %i.aft, float %.sink630, float %i.afq)
  %i.afv = getelementptr inbounds nuw i8, ptr %i.adl, i64 424
  store float %i.afu, ptr %i.afv, align 4, !tbaa !31
  %i.afw = getelementptr inbounds nuw i8, ptr %i.adl, i64 464
  store <2 x float> zeroinitializer, ptr %i.afw, align 4, !tbaa !31
  %i.afx = getelementptr inbounds nuw i8, ptr %i.adl, i64 472
  store float 0.000000e+00, ptr %i.afx, align 4, !tbaa !31
  %i.afy = getelementptr inbounds nuw i8, ptr %i.adl, i64 440
  store <2 x float> zeroinitializer, ptr %i.afy, align 4, !tbaa !31
  %i.afz = getelementptr inbounds nuw i8, ptr %i.adl, i64 448
  store float 0.000000e+00, ptr %i.afz, align 4, !tbaa !31
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cq, %bb.cw, %bb.cs
  %indvars.iv.next573 = add nuw nsw i64 %indvars.iv572, 1 ; 2 uses
  %exitcond576.not = icmp eq i64 %indvars.iv.next573, %wide.trip.count575
  br i1 %exitcond576.not, label %._crit_edge502, label %bb.cq
}

declare void @_ZN15dtProximityGrid5clearEv(ptr noundef nonnull align 8 dereferenceable(52)) local_unnamed_addr #2

declare void @_ZN15dtProximityGrid7addItemEtffff(ptr noundef nonnull align 8 dereferenceable(52), i16 noundef zeroext, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN15dtLocalBoundary7isValidEP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 4 dereferenceable(308), ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN15dtLocalBoundary6updateEjPKffP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 4 dereferenceable(308), i32 noundef, ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN14dtPathCorridor11findCornersEPfPhPjiP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN14dtPathCorridor22optimizePathVisibilityEPKffP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN14dtPathCorridor25moveOverOffmeshConnectionEjPjPfS1_P14dtNavMeshQuery(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN24dtObstacleAvoidanceQuery5resetEv(ptr noundef nonnull align 8 dereferenceable(76)) local_unnamed_addr #2

declare void @_ZN24dtObstacleAvoidanceQuery9addCircleEPKffS1_S1_(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN24dtObstacleAvoidanceQuery10addSegmentEPKfS1_(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef i32 @_ZN24dtObstacleAvoidanceQuery22sampleVelocityAdaptiveEPKfffS1_S1_PfPK25dtObstacleAvoidanceParamsP28dtObstacleAvoidanceDebugData(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN14dtPathCorridor12movePositionEPKfP14dtNavMeshQueryPK13dtQueryFilter(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN15dtLocalBoundaryD1Ev(ptr noundef nonnull align 4 dead_on_return(308) dereferenceable(308)) unnamed_addr #2

declare void @_ZN14dtPathCorridorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #2

declare void @_ZN14dtPathCorridorC1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

declare void @_ZN15dtLocalBoundaryC1Ev(ptr noundef nonnull align 4 dereferenceable(308)) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare noundef i32 @_ZNK15dtProximityGrid10queryItemsEffffPti(ptr noundef nonnull align 8 dereferenceable(52), float noundef, float noundef, float noundef, float noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS12dtCrowdAgent", !11, i64 0}
!13 = !{!"any p2 pointer", !11, i64 0}
!14 = !{!"p2 _ZTS12dtCrowdAgent", !13, i64 0}
!15 = !{!"p1 _ZTS21dtCrowdAgentAnimation", !11, i64 0}
!16 = !{!"p1 _ZTS14dtNavMeshQuery", !11, i64 0}
!17 = !{!"_ZTS11dtPathQueue", !7, i64 0, !8, i64 576, !8, i64 580, !8, i64 584, !16, i64 592}
!18 = !{!"p1 _ZTS24dtObstacleAvoidanceQuery", !11, i64 0}
!19 = !{!"p1 _ZTS15dtProximityGrid", !11, i64 0}
!20 = !{!"p1 int", !11, i64 0}
!21 = !{!"float", !7, i64 0}
!22 = !{!"_ZTS7dtCrowd", !8, i64 0, !12, i64 8, !14, i64 16, !15, i64 24, !17, i64 32, !7, i64 632, !18, i64 856, !19, i64 864, !20, i64 872, !8, i64 880, !7, i64 884, !7, i64 896, !21, i64 5056, !8, i64 5060, !16, i64 5064}
!23 = !{!22, !8, i64 0}
!24 = !{!22, !12, i64 8}
!25 = !{!22, !14, i64 16}
!26 = !{!22, !15, i64 24}
!27 = !{!22, !20, i64 872}
!28 = !{!22, !19, i64 864}
!29 = !{!22, !18, i64 856}
!30 = !{!22, !16, i64 5064}
!31 = !{!21, !21, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!22, !8, i64 880}
!34 = !{!"bool", !7, i64 0}
!35 = !{!"_ZTS14dtPathCorridor", !7, i64 0, !7, i64 12, !20, i64 24, !8, i64 32, !8, i64 36}
!36 = !{!"_ZTS15dtLocalBoundary", !7, i64 0, !7, i64 12, !8, i64 236, !7, i64 240, !8, i64 304}
!37 = !{!"_ZTS18dtCrowdAgentParams", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !21, i64 24, !7, i64 28, !7, i64 29, !7, i64 30, !11, i64 32}
!38 = !{!"_ZTS12dtCrowdAgent", !34, i64 0, !7, i64 1, !34, i64 2, !35, i64 8, !36, i64 48, !21, i64 356, !7, i64 360, !8, i64 408, !21, i64 412, !7, i64 416, !7, i64 428, !7, i64 440, !7, i64 452, !7, i64 464, !37, i64 480, !7, i64 520, !7, i64 568, !7, i64 572, !8, i64 588, !7, i64 592, !8, i64 596, !7, i64 600, !8, i64 612, !34, i64 616, !21, i64 620}
!39 = !{!38, !34, i64 0}
!40 = !{!"_ZTS21dtCrowdAgentAnimation", !34, i64 0, !7, i64 4, !7, i64 16, !7, i64 28, !8, i64 40, !21, i64 44, !21, i64 48}
!41 = !{!40, !34, i64 0}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!8, !8, i64 0}
!45 = !{!38, !7, i64 510}
!46 = !{!38, !34, i64 2}
!47 = !{!38, !21, i64 356}
!48 = !{!38, !21, i64 620}
!49 = !{!38, !8, i64 408}
!50 = !{!38, !21, i64 412}
!51 = !{!38, !7, i64 1}
!52 = !{!38, !7, i64 592}
!53 = !{!38, !8, i64 596}
!54 = !{!38, !8, i64 612}
!55 = !{!38, !34, i64 616}
!56 = !{!12, !12, i64 0}
!57 = !{!35, !20, i64 24}
!58 = !{!35, !8, i64 32}
!59 = !{!38, !7, i64 508}
!60 = distinct !{!60, !62}
!61 = !{!22, !21, i64 5056}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!22, !8, i64 5060}
!64 = !{!"p1 _ZTS28dtObstacleAvoidanceDebugData", !11, i64 0}
!65 = !{!"_ZTS21dtCrowdAgentDebugInfo", !8, i64 0, !7, i64 4, !7, i64 16, !64, i64 32}
!66 = !{!65, !8, i64 0}
!67 = !{!38, !21, i64 480}
!68 = !{!38, !21, i64 496}
!69 = !{!38, !21, i64 484}
!70 = !{!"short", !7, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{!"_ZTS16dtCrowdNeighbour", !8, i64 0, !21, i64 4}
!73 = !{!72, !21, i64 4}
!74 = !{!72, !8, i64 0}
!75 = !{!38, !8, i64 588}
!76 = !{!38, !21, i64 500}
!77 = !{!40, !8, i64 40}
!78 = !{!40, !21, i64 44}
!79 = !{!38, !21, i64 492}
!80 = !{!40, !21, i64 48}
!81 = !{!38, !21, i64 504}
!82 = !{!36, !8, i64 236}
!83 = !{!65, !64, i64 32}
!84 = !{!38, !7, i64 509}
!85 = !{!38, !21, i64 488}
end_hunk_1
