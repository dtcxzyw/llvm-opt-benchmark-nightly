inline.NumInlined: 54
inline.NumDeleted: 25
begin_hunk_0_@VP8EncTokenLoop:bb.a
  %i.jz = fcmp ogt double %.sroa.21.0, %i.al
  %i.ka = fneg float %.sroa.5.0176
  %i.kb = select i1 %i.jz, float %i.ka, float %.sroa.5.0176
  br label %ComputeNextQ.exit

bb.ac:                                            ; preds = %bb.aa
  %i.kc = fcmp une double %.sroa.21.0, %.sroa.25.0173
  br i1 %i.kc, label %bb.ad, label %ComputeNextQ.exit

bb.ad:                                            ; preds = %bb.ac
  %i.kd = fsub double %i.al, %.sroa.21.0
  %i.ke = fsub double %.sroa.25.0173, %.sroa.21.0
  %i.kf = fdiv double %i.kd, %i.ke
  %i.kg = fsub float %.sroa.14.0174, %.sroa.9.0175
  %i.kh = fpext float %i.kg to double
  %i.ki = fmul double %i.kf, %i.kh
  %i.kj = fptrunc double %i.ki to float
  br label %ComputeNextQ.exit

ComputeNextQ.exit:                                ; preds = %bb.ab, %bb.ac, %bb.ad
  %.0.i113 = phi float [ %i.kb, %bb.ab ], [ %i.kj, %bb.ad ], [ 0.000000e+00, %bb.ac ] ; 3 uses
  %i.kk = fcmp olt float %.0.i113, -3.000000e+01
  %i.kl = fcmp ogt float %.0.i113, 3.000000e+01
  %i.km = select i1 %i.kl, float 3.000000e+01, float %.0.i113
  %i.kn = select i1 %i.kk, float -3.000000e+01, float %i.km ; 2 uses
  %i.ko = fadd float %.sroa.9.0175, %i.kn         ; 3 uses
  %i.kp = fcmp olt float %i.ko, %i.u
  %i.kq = fcmp ogt float %i.ko, %i.x
  %i.kr = select i1 %i.kq, float %i.x, float %i.ko
  %i.ks = select i1 %i.kp, float %i.u, float %i.kr
  br label %bb.ae

bb.ae:                                            ; preds = %bb.z, %ComputeNextQ.exit, %bb.v, %ResetSideInfo.exit
  %.sroa.25.1 = phi double [ %.sroa.25.0173, %bb.z ], [ %.sroa.25.0173, %ResetSideInfo.exit ], [ %.sroa.25.0173, %bb.v ], [ %.sroa.21.0, %ComputeNextQ.exit ]
  %.sroa.14.1 = phi float [ %.sroa.14.0174, %bb.z ], [ %.sroa.14.0174, %ResetSideInfo.exit ], [ %.sroa.14.0174, %bb.v ], [ %.sroa.9.0175, %ComputeNextQ.exit ]
  %.sroa.9.1 = phi float [ %.sroa.9.0175, %bb.z ], [ %.sroa.9.0175, %ResetSideInfo.exit ], [ %.sroa.9.0175, %bb.v ], [ %i.ks, %ComputeNextQ.exit ]
  %.sroa.5.1 = phi float [ %.sroa.5.0176, %bb.z ], [ %.sroa.5.0176, %ResetSideInfo.exit ], [ %.sroa.5.0176, %bb.v ], [ %i.kn, %ComputeNextQ.exit ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0177, %bb.z ], [ %.sroa.0.0177, %ResetSideInfo.exit ], [ %.sroa.0.0177, %bb.v ], [ 0, %ComputeNextQ.exit ]
  %.183 = phi i32 [ %i.dn, %bb.z ], [ %.082179, %ResetSideInfo.exit ], [ %.082179, %bb.v ], [ %i.dn, %ComputeNextQ.exit ] ; 2 uses
  %i.kt = icmp sgt i32 %.183, 0
  br i1 %i.kt, label %bb.f, label %.critedge.thread148

.critedge.thread148:                              ; preds = %bb.ae, %bb.y, %PreLoopInitialize.exit.thread
  %.189152 = phi i32 [ 40, %PreLoopInitialize.exit.thread ], [ %i.dx, %bb.y ], [ %i.dx, %bb.ae ]
  br i1 %.not156, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge.thread148
  %i.ku = call fastcc i32 @FinalizeTokenProbas(ptr noundef nonnull %i.j) ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.critedge.thread148
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 3620
  %i.kx = call i32 @VP8EmitTokens(ptr noundef nonnull %i.kv, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.kw, i32 noundef 1) #9
  %i.ky = icmp eq i32 %i.kx, 0
  br i1 %i.ky, label %.critedge108, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !32
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 2 uses
  %i.lc = load i32, ptr %i.lb, align 8, !tbaa !39
  %i.ld = add nsw i32 %i.lc, %.189152
  %i.le = call i32 @WebPReportProgress(ptr noundef %i.la, i32 noundef %i.ld, ptr noundef nonnull %i.lb) #9
  %i.lf = icmp ne i32 %i.le, 0
  %i.lg = zext i1 %i.lf to i32
  br label %.critedge108

.critedge108:                                     ; preds = %bb.q, %.critedge.thread153, %bb.ah, %bb.ag
  %i.lh = phi i32 [ 0, %bb.ag ], [ %i.lg, %bb.ah ], [ 0, %.critedge.thread153 ], [ 0, %bb.q ]
  %i.li = call fastcc i32 @PostLoopFinalize(ptr noundef %2, i32 noundef %i.lh)
  br label %bb.ai

bb.ai:                                            ; preds = %PreLoopInitialize.exit, %.critedge108
  %.0 = phi i32 [ %i.li, %.critedge108 ], [ 0, %PreLoopInitialize.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @SetLoopParams(ptr noundef %0, float noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 11 uses
  %i.b = fcmp olt float %1, 0.000000e+00
  %i.c = fcmp ogt float %1, 1.000000e+02
  %i.d = select i1 %i.c, float 1.000000e+02, float %1
  %i.e = select i1 %i.b, float 0.000000e+00, float %i.d
  tail call void @VP8SetSegmentParams(ptr noundef %0, float noundef %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = mul nsw i32 %i.i, %i.g                   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 23648
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !101  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.j to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.n = icmp eq i32 %i.j, 1
  br i1 %i.n, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.p = load i8, ptr %i.o, align 4
  %i.q = lshr i8 %i.p, 5
  %i.r = and i8 %i.q, 3
  %i.s = zext nneg i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !3
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !3
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i8, ptr %i.x, align 4
  %i.z = lshr i8 %i.y, 5
  %i.aa = and i8 %i.z, 3
  %i.ab = zext nneg i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.b, !llvm.loop !102

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod10 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod10)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.epil.init
  %i.ag = load i8, ptr %i.af, align 4
  %i.ah = lshr i8 %i.ag, 5
  %i.ai = and i8 %i.ah, 3
  %i.aj = zext nneg i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !3
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !79 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ar, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa !3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader.i, %._crit_edge.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i32, ptr %i.as, align 8, !tbaa !103
  %i.au = icmp sgt i32 %i.at, 1
  br i1 %i.au, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.loopexit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3616 ; 2 uses
  %i.aw = load i32, ptr %i.a, align 16, !tbaa !3  ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = add nsw i32 %i.ay, %i.aw                ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !3  ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !3  ; 2 uses
  %i.be = add nsw i32 %i.bd, %i.bb                ; 4 uses
  %i.bf = add nsw i32 %i.be, %i.az                ; 3 uses
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %GetProba.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bh = mul nsw i32 %i.az, 255
  %i.bi = sdiv i32 %i.bf, 2
  %i.bj = add nsw i32 %i.bi, %i.bh
  %i.bk = sdiv i32 %i.bj, %i.bf
  %i.bl = trunc i32 %i.bk to i8
  br label %GetProba.exit.i

GetProba.exit.i:                                  ; preds = %bb.d, %bb.c
  %i.bm = phi i8 [ %i.bl, %bb.d ], [ -1, %bb.c ]  ; 3 uses
  store i8 %i.bm, ptr %i.av, align 8, !tbaa !26
  %i.bn = icmp eq i32 %i.az, 0
  br i1 %i.bn, label %GetProba.exit36.i, label %bb.e

bb.e:                                             ; preds = %GetProba.exit.i
  %i.bo = mul nsw i32 %i.aw, 255
  %i.bp = sdiv i32 %i.az, 2
  %i.bq = add nsw i32 %i.bp, %i.bo
  %i.br = sdiv i32 %i.bq, %i.az
  %i.bs = trunc i32 %i.br to i8
  br label %GetProba.exit36.i

GetProba.exit36.i:                                ; preds = %bb.e, %GetProba.exit.i
  %i.bt = phi i8 [ %i.bs, %bb.e ], [ -1, %GetProba.exit.i ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 3617 ; 2 uses
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !26
  %i.bv = icmp eq i32 %i.be, 0
  br i1 %i.bv, label %GetProba.exit37.i, label %bb.f

bb.f:                                             ; preds = %GetProba.exit36.i
  %i.bw = mul nsw i32 %i.bb, 255
  %i.bx = sdiv i32 %i.be, 2
  %i.by = add nsw i32 %i.bx, %i.bw
  %i.bz = sdiv i32 %i.by, %i.be
  br label %GetProba.exit37.i

GetProba.exit37.i:                                ; preds = %bb.f, %GetProba.exit36.i
  %i.ca = phi i32 [ %i.bz, %bb.f ], [ 255, %GetProba.exit36.i ] ; 2 uses
  %i.cb = trunc i32 %i.ca to i8                   ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 3618 ; 2 uses
  store i8 %i.cb, ptr %i.cc, align 2, !tbaa !26
  %.not34.i = icmp eq i8 %i.bm, -1
  %.not35.i = icmp eq i8 %i.bt, -1
  %or.cond.i = select i1 %.not34.i, i1 %.not35.i, i1 false
  br i1 %or.cond.i, label %bb.g, label %.critedge.i

bb.g:                                             ; preds = %GetProba.exit37.i
  %i.cd = and i32 %i.ca, 255
  %i.ce = icmp ne i32 %i.cd, 255                  ; 2 uses
  %i.cf = zext i1 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !104
  br i1 %i.ce, label %ResetSegments.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = load i32, ptr %i.f, align 8, !tbaa !27
  %i.ci = load i32, ptr %i.h, align 4, !tbaa !28
  %i.cj = mul nsw i32 %i.ci, %i.ch
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i.i, label %ResetSegments.exit.i

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 23648
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !101
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i.i ; 2 uses
  %i.co = load i8, ptr %i.cn, align 4
  %i.cp = and i8 %i.co, -97
  store i8 %i.cp, ptr %i.cn, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cq = load i32, ptr %i.f, align 8, !tbaa !27
  %i.cr = load i32, ptr %i.h, align 4, !tbaa !28
  %i.cs = mul nsw i32 %i.cr, %i.cq
  %i.ct = sext i32 %i.cs to i64
  %i.cu = icmp slt i64 %indvars.iv.next.i.i, %i.ct
  br i1 %i.cu, label %bb.i, label %ResetSegments.exit.loopexit.i, !llvm.loop !105

.critedge.i:                                      ; preds = %GetProba.exit37.i
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.cv, align 4, !tbaa !104
  br label %ResetSegments.exit.i

ResetSegments.exit.loopexit.i:                    ; preds = %bb.i
  %.pre.i = load i8, ptr %i.av, align 8, !tbaa !26
  %.pre70.i = load i8, ptr %i.bu, align 1, !tbaa !26
  %.pre71.i = load i8, ptr %i.cc, align 2, !tbaa !26
  br label %ResetSegments.exit.i

ResetSegments.exit.i:                             ; preds = %ResetSegments.exit.loopexit.i, %.critedge.i, %bb.h, %bb.g
  %i.cw = phi i8 [ %.pre71.i, %ResetSegments.exit.loopexit.i ], [ %i.cb, %bb.h ], [ %i.cb, %.critedge.i ], [ %i.cb, %bb.g ] ; 2 uses
  %i.cx = phi i8 [ %.pre70.i, %ResetSegments.exit.loopexit.i ], [ -1, %bb.h ], [ %i.bt, %.critedge.i ], [ -1, %bb.g ] ; 2 uses
  %i.cy = phi i8 [ %.pre.i, %ResetSegments.exit.loopexit.i ], [ -1, %bb.h ], [ %i.bm, %.critedge.i ], [ -1, %bb.g ] ; 2 uses
  %.pn.i.i = zext i8 %i.cy to i64
  %.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.i
  %.in.i.i = load i16, ptr %.in.in.i.i, align 2, !tbaa !63
  %i.cz = zext i16 %.in.i.i to i32                ; 2 uses
  %.pn.i38.i = zext i8 %i.cx to i64
  %.in.in.i39.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i38.i
  %.in.i40.i = load i16, ptr %.in.in.i39.i, align 2, !tbaa !63
  %i.da = zext i16 %.in.i40.i to i32
  %i.db = add nuw nsw i32 %i.da, %i.cz
  %i.dc = mul nsw i32 %i.db, %i.aw
  %.pn.in.i.i = xor i8 %i.cx, -1
  %.pn.i44.i = zext i8 %.pn.in.i.i to i64
  %.in.in.i45.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i44.i
  %.in.i46.i = load i16, ptr %.in.in.i45.i, align 2, !tbaa !63
  %i.dd = zext i16 %.in.i46.i to i32
  %i.de = add nuw nsw i32 %i.dd, %i.cz
  %i.df = mul nsw i32 %i.de, %i.ay
  %i.dg = add nsw i32 %i.df, %i.dc
  %.pn.in.i47.i = xor i8 %i.cy, -1
  %.pn.i48.i = zext i8 %.pn.in.i47.i to i64
  %.in.in.i49.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i48.i
  %.in.i50.i = load i16, ptr %.in.in.i49.i, align 2, !tbaa !63
  %i.dh = zext i16 %.in.i50.i to i32              ; 2 uses
  %.pn.i52.i = zext i8 %i.cw to i64
  %.in.in.i53.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i52.i
  %.in.i54.i = load i16, ptr %.in.in.i53.i, align 2, !tbaa !63
  %i.di = zext i16 %.in.i54.i to i32
  %i.dj = add nuw nsw i32 %i.di, %i.dh
  %i.dk = mul nsw i32 %i.dj, %i.bb
  %i.dl = add nsw i32 %i.dg, %i.dk
  %.pn.in.i59.i = xor i8 %i.cw, -1
  %.pn.i60.i = zext i8 %.pn.in.i59.i to i64
  %.in.in.i61.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i60.i
  %.in.i62.i = load i16, ptr %.in.in.i61.i, align 2, !tbaa !63
  %i.dm = zext i16 %.in.i62.i to i32
  %i.dn = add nuw nsw i32 %i.dm, %i.dh
  %i.do = mul nsw i32 %i.dn, %i.bd
  %i.dp = add nsw i32 %i.dl, %i.do
  br label %SetSegmentProbas.exit

bb.j:                                             ; preds = %.loopexit.i
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.dq, align 4, !tbaa !104
  br label %SetSegmentProbas.exit

SetSegmentProbas.exit:                            ; preds = %ResetSegments.exit.i, %bb.j
  %.sink.i = phi i32 [ 0, %bb.j ], [ %i.dp, %ResetSegments.exit.i ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink.i, ptr %i.dr, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 3616
  tail call void @VP8CalculateLevelCosts(ptr noundef nonnull %i.ds) #9
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 23504
  store i32 0, ptr %i.dt, align 8, !tbaa !60
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 23512
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 23544
  store i64 0, ptr %i.dv, align 8, !tbaa !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.du, i8 0, i64 24, i1 false)
  ret void
}

declare void @VP8TBufferClear(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @FinalizeTokenProbas(ptr noundef captures(none) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %.preheader80

.preheader80:                                     ; preds = %bb.a, %bb.r
  %indvars.iv102 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next103, %bb.r ] ; 5 uses
  %.092 = phi i32 [ 0, %bb.a ], [ %.4.2, %bb.r ]
  %.05791 = phi i32 [ 0, %bb.a ], [ %.461.2, %bb.r ]
  %i.c = getelementptr inbounds nuw [1056 x i8], ptr %i.a, i64 %indvars.iv102
  %i.d = getelementptr inbounds nuw [264 x i8], ptr @VP8CoeffsUpdateProba, i64 %indvars.iv102
  %i.e = getelementptr inbounds nuw [264 x i8], ptr @VP8CoeffsProba0, i64 %indvars.iv102
  %i.f = getelementptr inbounds nuw [264 x i8], ptr %i.b, i64 %indvars.iv102
  br label %.preheader79

.preheader79:                                     ; preds = %.preheader80, %bb.q
  %indvars.iv98 = phi i64 [ 0, %.preheader80 ], [ %indvars.iv.next99, %bb.q ] ; 5 uses
  %.189 = phi i32 [ %.092, %.preheader80 ], [ %.4.2, %bb.q ]
  %.15888 = phi i32 [ %.05791, %.preheader80 ], [ %.461.2, %bb.q ]
  %i.g = getelementptr inbounds nuw [132 x i8], ptr %i.c, i64 %indvars.iv98 ; 3 uses
  %i.h = getelementptr inbounds nuw [33 x i8], ptr %i.d, i64 %indvars.iv98 ; 3 uses
  %i.i = getelementptr inbounds nuw [33 x i8], ptr %i.e, i64 %indvars.iv98 ; 3 uses
  %i.j = getelementptr inbounds nuw [33 x i8], ptr %i.f, i64 %indvars.iv98 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader79, %bb.f
  %indvars.iv = phi i64 [ 0, %.preheader79 ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %.383 = phi i32 [ %.189, %.preheader79 ], [ %.4, %bb.f ] ; 2 uses
  %.36082 = phi i32 [ %.15888, %.preheader79 ], [ %.461, %bb.f ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !3    ; 2 uses
  %i.m = and i32 %i.l, 65535                      ; 5 uses
  %i.n = lshr i32 %i.l, 16                        ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.p = load i8, ptr %i.o, align 1, !tbaa !26    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !26    ; 3 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.not.i = icmp eq i32 %i.m, 0
  br i1 %.not.i, label %CalcTokenProba.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = mul nuw nsw i32 %i.m, 255
  %i.u = udiv i32 %i.t, %i.n
  %i.v = sub nsw i32 255, %i.u
  br label %CalcTokenProba.exit

CalcTokenProba.exit:                              ; preds = %bb.b, %bb.c
  %i.w = phi i32 [ %i.v, %bb.c ], [ 255, %bb.b ]  ; 3 uses
  %i.x = xor i32 %i.s, 255
  %.pn.i.i = zext nneg i32 %i.x to i64
  %.in.in.i.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.i
  %.in.i.i = load i16, ptr %.in.in.i.i, align 2, !tbaa !63
  %i.y = zext i16 %.in.i.i to i32
  %i.z = mul nuw nsw i32 %i.m, %i.y
  %i.aa = sub nsw i32 %i.n, %i.m                  ; 2 uses
  %.pn.i6.i = zext i8 %i.r to i64
  %.in.in.i7.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i6.i
  %.in.i8.i = load i16, ptr %.in.in.i7.i, align 2, !tbaa !63
  %i.ab = zext i16 %.in.i8.i to i32
  %i.ac = mul nsw i32 %i.aa, %i.ab
  %i.ad = add nsw i32 %i.ac, %i.z
  %.pn.i = zext i8 %i.p to i64
  %.in.in.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i
  %.in.i = load i16, ptr %.in.in.i, align 2, !tbaa !63
  %i.ae = zext i16 %.in.i to i32
  %i.af = add nsw i32 %i.ad, %i.ae
  %i.ag = and i32 %i.w, 255                       ; 2 uses
  %i.ah = xor i32 %i.ag, 255
  %.pn.i.i66 = zext nneg i32 %i.ah to i64
  %.in.in.i.i67 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i.i66
  %.in.i.i68 = load i16, ptr %.in.in.i.i67, align 2, !tbaa !63
  %i.ai = zext i16 %.in.i.i68 to i32
  %i.aj = mul nuw nsw i32 %i.m, %i.ai
  %.pn.i6.i69 = zext nneg i32 %i.ag to i64
  %.in.in.i7.i70 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i6.i69
  %.in.i8.i71 = load i16, ptr %.in.in.i7.i70, align 2, !tbaa !63
  %i.ak = zext i16 %.in.i8.i71 to i32
  %i.al = mul nsw i32 %i.aa, %i.ak
  %.pn.in.i = xor i8 %i.p, -1
  %.pn.i72 = zext i8 %.pn.in.i to i64
  %.in.in.i73 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i72
  %.in.i74 = load i16, ptr %.in.in.i73, align 2, !tbaa !63
  %i.am = zext i16 %.in.i74 to i32
  %i.an = add nuw i32 %i.aj, 2048
  %i.ao = add i32 %i.an, %i.al
  %i.ap = add i32 %i.ao, %i.am
  %i.aq = icmp sgt i32 %i.af, %i.ap               ; 2 uses
  %.neg = sext i1 %i.aq to i8
  %.pn.in.i75 = xor i8 %i.p, %.neg
  %.pn.i76 = zext i8 %.pn.in.i75 to i64
  %.in.in.i77 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i76
  %.in.i78 = load i16, ptr %.in.in.i77, align 2, !tbaa !63
  %i.ar = zext i16 %.in.i78 to i32
  %i.as = add nsw i32 %.36082, %i.ar              ; 2 uses
  br i1 %i.aq, label %bb.d, label %bb.e

bb.d:                                             ; preds = %CalcTokenProba.exit
  %i.at = trunc i32 %i.w to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %i.at, ptr %i.au, align 1, !tbaa !26
  %i.av = icmp ne i32 %i.w, %i.s
  %i.aw = zext i1 %i.av to i32
  %i.ax = or i32 %.383, %i.aw
  %i.ay = add nsw i32 %i.as, 2048
  br label %bb.f

bb.e:                                             ; preds = %CalcTokenProba.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  store i8 %i.r, ptr %i.az, align 1, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.461 = phi i32 [ %i.ay, %bb.d ], [ %i.as, %bb.e ] ; 2 uses
  %.4 = phi i32 [ %i.ax, %bb.d ], [ %.383, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 11
  br i1 %exitcond.not, label %.preheader.1, label %bb.b, !llvm.loop !106

.preheader.1:                                     ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 11 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.preheader.1
  %indvars.iv.1 = phi i64 [ 0, %.preheader.1 ], [ %indvars.iv.next.1, %bb.k ] ; 6 uses
  %.383.1 = phi i32 [ %.4, %.preheader.1 ], [ %.4.1, %bb.k ] ; 2 uses
end_hunk_0
begin_hunk_1_@PutCoeffs:bb.a
.preheader:                                       ; preds = %bb.a
  %i.o = icmp slt i32 %i.a, 16
  br i1 %i.o, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ %i.d, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 3 uses
  %.091110 = phi ptr [ %i.g, %.lr.ph ], [ %.293, %bb.v ] ; 13 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !115
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.r = getelementptr inbounds [2 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load i16, ptr %i.r, align 2, !tbaa !63   ; 3 uses
  %.lobit = lshr i16 %i.s, 15
  %i.t = zext nneg i16 %.lobit to i32
  %i.u = tail call i16 @llvm.abs.i16(i16 %i.s, i1 false) ; 12 uses
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = icmp ne i16 %i.s, 0
  %i.x = zext i1 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %.091110, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !26
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.x, i32 noundef %i.aa) #9
  %.not97 = icmp eq i32 %i.ab, 0
  br i1 %.not97, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.ad = getelementptr inbounds i8, ptr @VP8EncBands, i64 %indvars.iv.next
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [33 x i8], ptr %i.ac, i64 %i.af
  br label %bb.v, !llvm.loop !116

bb.d:                                             ; preds = %bb.b
  %i.ah = icmp ugt i16 %i.u, 1
  %i.ai = zext i1 %i.ah to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %.091110, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !26
  %i.al = zext i8 %i.ak to i32
  %i.am = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.ai, i32 noundef %i.al) #9
  %.not98 = icmp eq i32 %i.am, 0
  br i1 %.not98, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = icmp ugt i16 %i.u, 4
  %i.ao = zext i1 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %.091110, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = zext i8 %i.aq to i32
  %i.as = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.ao, i32 noundef %i.ar) #9
  %.not99 = icmp eq i32 %i.as, 0
  br i1 %.not99, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.at = icmp ne i16 %i.u, 2
  %i.au = zext i1 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.091110, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !26
  %i.ax = zext i8 %i.aw to i32
  %i.ay = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.au, i32 noundef %i.ax) #9
  %.not100 = icmp eq i32 %i.ay, 0
  br i1 %.not100, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.az = icmp eq i16 %i.u, 4
  %i.ba = zext i1 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.091110, i64 5
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !26
  %i.bd = zext i8 %i.bc to i32
  %i.be = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.ba, i32 noundef %i.bd) #9 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.bf = icmp ugt i16 %i.u, 10
  %i.bg = zext i1 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %.091110, i64 6
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !26
  %i.bj = zext i8 %i.bi to i32
  %i.bk = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.bg, i32 noundef %i.bj) #9
  %.not101 = icmp eq i32 %i.bk, 0
  br i1 %.not101, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bl = icmp ugt i16 %i.u, 6
  %i.bm = zext i1 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.091110, i64 7
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !26
  %i.bp = zext i8 %i.bo to i32
  %i.bq = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.bm, i32 noundef %i.bp) #9
  %.not102 = icmp eq i32 %i.bq, 0
  br i1 %.not102, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = icmp eq i16 %i.u, 6
  %i.bs = zext i1 %i.br to i32
  %i.bt = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.bs, i32 noundef 159) #9 ; 0 uses
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  %i.bu = icmp ugt i16 %i.u, 8
  %i.bv = zext i1 %i.bu to i32
  %i.bw = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.bv, i32 noundef 165) #9 ; 0 uses
  %i.bx = and i32 %i.v, 1
  %i.by = xor i32 %i.bx, 1
  %i.bz = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.by, i32 noundef 145) #9 ; 0 uses
  br label %.loopexit

bb.l:                                             ; preds = %bb.h
  %i.ca = icmp ult i16 %i.u, 19
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %.091110, i64 8
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !26
  %i.cd = zext i8 %i.cc to i32
  %i.ce = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef 0, i32 noundef %i.cd) #9 ; 0 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.091110, i64 9
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !26
  %i.ch = zext i8 %i.cg to i32
  %i.ci = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef 0, i32 noundef %i.ch) #9 ; 0 uses
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.cj = icmp ult i16 %i.u, 35
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = getelementptr inbounds nuw i8, ptr %.091110, i64 8
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !26
  %i.cm = zext i8 %i.cl to i32
  %i.cn = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef 0, i32 noundef %i.cm) #9 ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.091110, i64 9
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !26
  %i.cq = zext i8 %i.cp to i32
  %i.cr = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef 1, i32 noundef %i.cq) #9 ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cs = icmp ult i16 %i.u, 67
  %i.ct = getelementptr inbounds nuw i8, ptr %.091110, i64 8
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !26
  %i.cv = zext i8 %i.cu to i32
  %i.cw = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef 1, i32 noundef %i.cv) #9 ; 0 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.091110, i64 10
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !26
  %i.cz = zext i8 %i.cy to i32                    ; 2 uses
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.da = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef 0, i32 noundef %i.cz) #9 ; 0 uses
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.db = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef 1, i32 noundef %i.cz) #9 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.o, %bb.r, %bb.q, %bb.m
  %.sink = phi i32 [ -19, %bb.o ], [ -67, %bb.r ], [ -35, %bb.q ], [ -11, %bb.m ]
  %.084 = phi i32 [ 8, %bb.o ], [ 1024, %bb.r ], [ 16, %bb.q ], [ 4, %bb.m ]
  %.0 = phi ptr [ @VP8Cat4, %bb.o ], [ @VP8Cat6, %bb.r ], [ @VP8Cat5, %bb.q ], [ @VP8Cat3, %bb.m ]
  %i.dc = add nsw i32 %.sink, %i.v
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.t
  %.1109 = phi ptr [ %.0, %bb.s ], [ %i.dg, %bb.t ] ; 2 uses
  %.185108 = phi i32 [ %.084, %bb.s ], [ %i.dk, %bb.t ] ; 2 uses
  %i.dd = and i32 %.185108, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %.1109, i64 1
  %i.dh = load i8, ptr %.1109, align 1, !tbaa !26
  %i.di = zext i8 %i.dh to i32
  %i.dj = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.df, i32 noundef %i.di) #9 ; 0 uses
  %i.dk = lshr i32 %.185108, 1                    ; 2 uses
  %.not104 = icmp eq i32 %i.dk, 0
  br i1 %.not104, label %.loopexit, label %bb.t, !llvm.loop !117

.loopexit:                                        ; preds = %bb.t, %bb.g, %bb.f, %bb.j, %bb.k, %bb.d
  %.sink117 = phi i64 [ 11, %bb.d ], [ 22, %bb.g ], [ 22, %bb.k ], [ 22, %bb.j ], [ 22, %bb.f ], [ 22, %bb.t ]
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.dm = getelementptr inbounds i8, ptr @VP8EncBands, i64 %indvars.iv.next
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !26
  %i.do = tail call i32 @VP8PutBitUniform(ptr noundef %0, i32 noundef %i.t) #9 ; 0 uses
  %i.dp = icmp eq i64 %indvars.iv.next, 16
  br i1 %i.dp, label %.thread, label %bb.u

bb.u:                                             ; preds = %.loopexit
  %i.dq = zext i8 %i.dn to i64
  %i.dr = getelementptr inbounds nuw [33 x i8], ptr %i.dl, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sink117 ; 2 uses
  %i.dt = load i32, ptr %i.h, align 4, !tbaa !114
  %i.du = sext i32 %i.dt to i64
  %i.dv = icmp slt i64 %indvars.iv, %i.du
  %i.dw = zext i1 %i.dv to i32
  %i.dx = load i8, ptr %i.ds, align 1, !tbaa !26
  %i.dy = zext i8 %i.dx to i32
  %i.dz = tail call i32 @VP8PutBit(ptr noundef %0, i32 noundef %i.dw, i32 noundef %i.dy) #9
  %.fr = freeze i32 %i.dz
  %.not105 = icmp eq i32 %.fr, 0
  br i1 %.not105, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.c
  %.293 = phi ptr [ %i.ag, %bb.c ], [ %i.ds, %bb.u ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.v, %.loopexit, %bb.u, %.preheader, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 1, %bb.u ], [ 1, %.loopexit ], [ 1, %bb.v ]
  ret i32 %.2
}

declare i32 @VP8PutBit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @VP8PutBitUniform(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @VP8BitWriterFinish(ptr noundef) local_unnamed_addr #2

declare void @VP8AdjustFilterStrength(ptr noundef) local_unnamed_addr #2

declare void @VP8SetSegmentParams(ptr noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @VP8RecordCoeffTokens(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !4, i64 3584}
!8 = !{!"VP8Encoder", !9, i64 0, !11, i64 8, !12, i64 16, !13, i64 32, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !14, i64 64, !5, i64 112, !17, i64 496, !4, i64 536, !4, i64 540, !15, i64 544, !4, i64 552, !22, i64 560, !5, i64 608, !4, i64 3584, !4, i64 3588, !4, i64 3592, !4, i64 3596, !4, i64 3600, !4, i64 3604, !4, i64 3608, !4, i64 3612, !23, i64 3616, !5, i64 23512, !16, i64 23544, !4, i64 23552, !5, i64 23556, !5, i64 23604, !4, i64 23616, !4, i64 23620, !4, i64 23624, !4, i64 23628, !4, i64 23632, !4, i64 23636, !4, i64 23640, !10, i64 23648, !15, i64 23656, !24, i64 23664, !15, i64 23672, !15, i64 23680, !25, i64 23688, !15, i64 23696}
!9 = !{!"p1 _ZTS10WebPConfig", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS11WebPPicture", !10, i64 0}
!12 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8}
!14 = !{!"VP8BitWriter", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !15, i64 16, !16, i64 24, !16, i64 32, !4, i64 40}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"", !18, i64 0, !19, i64 8, !21, i64 16, !4, i64 24, !4, i64 28, !4, i64 32}
!18 = !{!"p1 _ZTS9VP8Tokens", !10, i64 0}
!19 = !{!"p2 _ZTS9VP8Tokens", !20, i64 0}
!20 = !{!"any p2 pointer", !10, i64 0}
!21 = !{!"p1 short", !10, i64 0}
!22 = !{!"", !10, i64 0, !4, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !4, i64 40}
!23 = !{!"", !5, i64 0, !5, i64 3, !5, i64 4, !5, i64 1060, !5, i64 5284, !5, i64 18344, !4, i64 19880, !4, i64 19884, !4, i64 19888}
!24 = !{!"p1 int", !10, i64 0}
!25 = !{!"p1 double", !10, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!8, !4, i64 48}
!28 = !{!8, !4, i64 52}
!29 = !{!8, !4, i64 60}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!8, !11, i64 8}
!33 = !{!8, !4, i64 23616}
!34 = !{!8, !4, i64 23636}
!35 = !{!8, !9, i64 0}
!36 = !{!37, !4, i64 60}
!37 = !{!"WebPConfig", !4, i64 0, !38, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !38, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112}
!38 = !{!"float", !5, i64 0}
!39 = !{!8, !4, i64 536}
!40 = !{!37, !4, i64 16}
!41 = !{!37, !4, i64 108}
!42 = !{!37, !4, i64 112}
!43 = !{!37, !38, i64 4}
!44 = !{!37, !38, i64 20}
!45 = !{!8, !4, i64 23624}
!46 = !{!8, !4, i64 23504}
!47 = !{!48, !49, i64 40}
!48 = !{!"", !4, i64 0, !4, i64 4, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !49, i64 40, !10, i64 48, !50, i64 56, !15, i64 64, !24, i64 72, !5, i64 80, !15, i64 120, !4, i64 128, !5, i64 132, !5, i64 168, !5, i64 208, !16, i64 304, !16, i64 312, !25, i64 320, !4, i64 328, !4, i64 332, !4, i64 336, !4, i64 340, !5, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !5, i64 400, !5, i64 488}
!49 = !{!"p1 _ZTS10VP8Encoder", !10, i64 0}
!50 = !{!"p1 _ZTS12VP8BitWriter", !10, i64 0}
!51 = !{!48, !10, i64 48}
!52 = !{!10, !10, i64 0}
!53 = distinct !{null, null, null}
!54 = !{!55, !16, i64 24}
!55 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !5, i64 40, !5, i64 72, !5, i64 584, !4, i64 840, !5, i64 844, !4, i64 860, !4, i64 864, !5, i64 868}
!56 = !{!55, !16, i64 16}
!57 = !{!55, !16, i64 0}
!58 = distinct !{!58, !31}
!59 = !{!8, !4, i64 40}
!60 = !{!23, !4, i64 19888}
!61 = !{!23, !5, i64 3}
!62 = !{!23, !4, i64 19884}
!63 = !{!64, !64, i64 0}
!64 = !{!"short", !5, i64 0}
!65 = distinct !{!65, !31}
!66 = !{!8, !4, i64 23500}
!67 = !{!8, !4, i64 23620}
!68 = !{!48, !50, i64 56}
!69 = !{!14, !4, i64 12}
!70 = !{!14, !16, i64 24}
!71 = !{!14, !4, i64 8}
!72 = distinct !{null}
!73 = !{!48, !16, i64 304}
!74 = !{!48, !16, i64 312}
!75 = !{!16, !16, i64 0}
!76 = !{!14, !4, i64 40}
!77 = !{!48, !24, i64 72}
!78 = distinct !{!78, !31}
!79 = !{!80, !81, i64 128}
!80 = !{!"WebPPicture", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !15, i64 16, !15, i64 24, !15, i64 32, !4, i64 40, !4, i64 44, !15, i64 48, !4, i64 56, !5, i64 60, !24, i64 72, !4, i64 80, !5, i64 84, !10, i64 96, !10, i64 104, !4, i64 112, !15, i64 120, !81, i64 128, !4, i64 136, !10, i64 144, !10, i64 152, !5, i64 160, !15, i64 176, !15, i64 184, !5, i64 192, !10, i64 224, !10, i64 232, !5, i64 240}
!81 = !{!"p1 _ZTS12WebPAuxStats", !10, i64 0}
!82 = !{!48, !15, i64 8}
!83 = !{!48, !15, i64 16}
!84 = distinct !{null}
!85 = !{!8, !16, i64 23544}
!86 = !{!80, !15, i64 120}
!87 = !{!48, !4, i64 0}
!88 = !{!48, !4, i64 4}
!89 = !{!80, !4, i64 112}
!90 = !{!91, !4, i64 680}
!91 = !{!"", !92, i64 0, !92, i64 224, !92, i64 448, !4, i64 672, !4, i64 676, !4, i64 680, !4, i64 684, !4, i64 688, !4, i64 692, !4, i64 696, !4, i64 700, !4, i64 704, !4, i64 708, !4, i64 712, !4, i64 716, !4, i64 720, !4, i64 724, !4, i64 728, !16, i64 736}
!92 = !{!"VP8Matrix", !5, i64 0, !5, i64 32, !5, i64 64, !5, i64 128, !5, i64 192}
!93 = !{!48, !15, i64 64}
!94 = !{!95, !5, i64 1}
!95 = !{!"", !4, i64 0, !4, i64 0, !4, i64 0, !4, i64 0, !5, i64 1}
!96 = distinct !{!96, !31}
!97 = distinct !{null}
!98 = !{!17, !4, i64 32}
!99 = distinct !{!99, !31}
!100 = distinct !{!100, !31}
!101 = !{!8, !10, i64 23648}
!102 = distinct !{!102, !31}
!103 = !{!8, !4, i64 32}
!104 = !{!8, !4, i64 36}
!105 = distinct !{!105, !31}
!106 = distinct !{!106, !31}
!107 = distinct !{!107, !31}
!108 = distinct !{!108, !31}
!109 = !{!23, !4, i64 19880}
!110 = !{!111, !4, i64 0}
!111 = !{!"VP8Residual", !4, i64 0, !4, i64 4, !21, i64 8, !4, i64 16, !15, i64 24, !24, i64 32, !112, i64 40}
!112 = !{!"p2 short", !20, i64 0}
!113 = !{!111, !15, i64 24}
!114 = !{!111, !4, i64 4}
!115 = !{!111, !21, i64 8}
!116 = distinct !{!116, !31}
!117 = distinct !{!117, !31}
end_hunk_1
