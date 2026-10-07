Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box2d/original/contact_solver?download=true
inline.NumInlined: 761
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@b2SolveContacts_Overflow:bb.a
  %.sroa.0131.0.lcssa490498 = phi <2 x float> [ %i.ee, %bb.k ], [ %.sroa.0131.0.copyload407413, %._crit_edge.thread ]
  %i.er = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  store float 0.000000e+00, ptr %i.er, align 4, !tbaa !114
  %i.es = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !114
  br label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %.0210.lcssa485505 = phi float [ %.0210.lcssa485506, %.thread ], [ %i.dy, %bb.k ]
  %.0200.lcssa487503 = phi float [ %.0200.lcssa487504, %.thread ], [ %i.bj, %bb.k ] ; 2 uses
  %.sroa.0111.0.lcssa488501 = phi <2 x float> [ %.sroa.0111.0.lcssa488502, %.thread ], [ %i.eg, %bb.k ] ; 2 uses
  %.0199.lcssa489499 = phi float [ %.0199.lcssa489500, %.thread ], [ %i.bi, %bb.k ] ; 2 uses
  %.sroa.0131.0.lcssa490497 = phi <2 x float> [ %.sroa.0131.0.lcssa490498, %.thread ], [ %i.ee, %bb.k ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 132
  %i.eu = load float, ptr %i.et, align 4, !tbaa !108
  %i.ev = fsub float %.0200.lcssa487503, %.0199.lcssa489499
  %i.ew = getelementptr inbounds nuw i8, ptr %i.s, i64 136 ; 2 uses
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !106 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !164
  %i.fa = fmul float %.0210.lcssa485505, %i.ez    ; 3 uses
  %i.fb = fmul float %i.ev, %i.eu
  %i.fc = fsub float %i.ex, %i.fb                 ; 3 uses
  %i.fd = fneg float %i.fa                        ; 2 uses
  %i.fe = fcmp olt float %i.fc, %i.fd
  %i.ff = fcmp ogt float %i.fc, %i.fa
  %i.fg = select i1 %i.ff, float %i.fa, float %i.fc
  %i.fh = select i1 %i.fe, float %i.fd, float %i.fg ; 2 uses
  store float %i.fh, ptr %i.ew, align 4, !tbaa !106
  %i.fi = fsub float %i.fh, %i.ex                 ; 2 uses
  %i.fj = extractelement <2 x float> %i.y, i64 0
  %i.fk = fmul float %i.fj, %i.fi
  %i.fl = fsub float %.0199.lcssa489499, %i.fk    ; 2 uses
  %i.fm = extractelement <2 x float> %i.y, i64 1  ; 2 uses
  %i.fn = fmul float %i.fm, %i.fi
  %i.fo = fadd float %.0200.lcssa487503, %i.fn    ; 2 uses
  br i1 %i.av, label %.lr.ph452, label %.loopexit

.lr.ph452:                                        ; preds = %bb.l
  %i.fp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 124
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !165
  %wide.trip.count468 = zext nneg i32 %i.au to i64
  %i.fs = insertelement <2 x float> %.sroa.098.0.copyload, float %i.aq, i64 0
  %i.ft = insertelement <2 x float> poison, float %i.x, i64 0
  %i.fu = insertelement <2 x float> poison, float %i.u, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph452, %bb.m
  %indvars.iv465 = phi i64 [ 0, %.lr.ph452 ], [ %indvars.iv.next466, %bb.m ] ; 2 uses
  %.sroa.0131.1449 = phi <2 x float> [ %.sroa.0131.0.lcssa490497, %.lr.ph452 ], [ %i.hl, %bb.m ] ; 2 uses
  %.1448 = phi float [ %i.fl, %.lr.ph452 ], [ %i.ho, %bb.m ] ; 2 uses
  %.sroa.0111.1447 = phi <2 x float> [ %.sroa.0111.0.lcssa488501, %.lr.ph452 ], [ %i.hr, %bb.m ] ; 2 uses
  %.1201446 = phi float [ %i.fo, %.lr.ph452 ], [ %i.hv, %bb.m ] ; 2 uses
  %i.fx = getelementptr inbounds nuw [44 x i8], ptr %i.fp, i64 %indvars.iv465 ; 5 uses
  %.sroa.019.0.copyload = load <2 x float>, ptr %i.fx, align 4, !tbaa !38 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %.sroa.017.0.copyload = load <2 x float>, ptr %i.fy, align 4, !tbaa !38 ; 2 uses
  %i.fz = shufflevector <2 x float> %.sroa.0111.1447, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ga = shufflevector <2 x float> %.sroa.0131.1449, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !166
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !163
  %i.gf = fmul float %i.as, %i.ge                 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fx, i64 28 ; 2 uses
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !167 ; 2 uses
  %i.gi = fneg float %i.gf                        ; 2 uses
  %i.gj = insertelement <2 x float> poison, float %.1201446, i64 0
  %i.gk = shufflevector <2 x float> %i.gj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gl = fmul <2 x float> %i.gk, %.sroa.017.0.copyload ; 2 uses
  %i.gm = fsub <2 x float> %i.fz, %i.gl
  %i.gn = fadd <2 x float> %i.fz, %i.gl
  %i.go = shufflevector <2 x float> %i.gn, <2 x float> %i.gm, <2 x i32> <i32 0, i32 3>
  %i.gp = insertelement <2 x float> poison, float %.1448, i64 0
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.gq, %.sroa.019.0.copyload ; 2 uses
  %i.gs = fsub <2 x float> %i.ga, %i.gr
  %i.gt = fadd <2 x float> %i.ga, %i.gr
  %i.gu = shufflevector <2 x float> %i.gt, <2 x float> %i.gs, <2 x i32> <i32 0, i32 3>
  %i.gv = fsub <2 x float> %i.go, %i.gu
  %i.gw = fmul <2 x float> %.sroa.098.0.copyload, %i.gv ; 2 uses
  %shift519 = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop520 = fsub <2 x float> %shift519, %i.gw
  %i.gx = extractelement <2 x float> %foldExtExtBinop520, i64 0
  %i.gy = fsub float %i.gx, %i.fr
  %i.gz = fmul float %i.gc, %i.gy
  %i.ha = fsub float %i.gh, %i.gz                 ; 3 uses
  %i.hb = fcmp olt float %i.ha, %i.gi
  %i.hc = fcmp ogt float %i.ha, %i.gf
  %i.hd = select i1 %i.hc, float %i.gf, float %i.ha
  %i.he = select i1 %i.hb, float %i.gi, float %i.hd ; 2 uses
  %i.hf = fsub float %i.he, %i.gh
  store float %i.he, ptr %i.gg, align 4, !tbaa !167
  %i.hg = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hh = shufflevector <2 x float> %i.hg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hi = fmul <2 x float> %i.hh, %i.fs           ; 4 uses
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hk = fmul <2 x float> %i.fv, %i.hj
  %i.hl = fsub <2 x float> %.sroa.0131.1449, %i.hk ; 2 uses
  %i.hm = fmul <2 x float> %.sroa.019.0.copyload, %i.hi ; 2 uses
  %shift522 = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop523 = fsub <2 x float> %i.hm, %shift522
  %foldExtExtBinop525 = fmul <2 x float> %i.y, %foldExtExtBinop523
  %i.hn = extractelement <2 x float> %foldExtExtBinop525, i64 0
  %i.ho = fsub float %.1448, %i.hn                ; 2 uses
  %i.hp = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hq = fmul <2 x float> %i.fw, %i.hp
  %i.hr = fadd <2 x float> %.sroa.0111.1447, %i.hq ; 2 uses
  %i.hs = fmul <2 x float> %.sroa.017.0.copyload, %i.hi ; 2 uses
  %shift527 = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop528 = fsub <2 x float> %i.hs, %shift527
  %i.ht = extractelement <2 x float> %foldExtExtBinop528, i64 0
  %i.hu = fmul float %i.fm, %i.ht
  %i.hv = fadd float %.1201446, %i.hu             ; 2 uses
  %indvars.iv.next466 = add nuw nsw i64 %indvars.iv465, 1 ; 2 uses
  %exitcond469.not = icmp eq i64 %indvars.iv.next466, %wide.trip.count468
  br i1 %exitcond469.not, label %.loopexit, label %bb.m, !llvm.loop !160

.loopexit:                                        ; preds = %bb.m, %._crit_edge.thread, %bb.l, %._crit_edge
  %.2202 = phi float [ %i.bj, %._crit_edge ], [ %i.fo, %bb.l ], [ %i.al, %._crit_edge.thread ], [ %i.hv, %bb.m ]
  %.sroa.0111.2 = phi <2 x float> [ %i.eg, %._crit_edge ], [ %.sroa.0111.0.lcssa488501, %bb.l ], [ %.sroa.0111.0.copyload416422428, %._crit_edge.thread ], [ %i.hr, %bb.m ]
  %.2 = phi float [ %i.bi, %._crit_edge ], [ %i.fl, %bb.l ], [ %i.ag, %._crit_edge.thread ], [ %i.ho, %bb.m ]
  %.sroa.0131.2 = phi <2 x float> [ %i.ee, %._crit_edge ], [ %.sroa.0131.0.lcssa490497, %bb.l ], [ %.sroa.0131.0.copyload407413, %._crit_edge.thread ], [ %i.hl, %bb.m ]
  br i1 %i.ac, label %.cont376.thread, label %.cont376

.cont376:                                         ; preds = %.loopexit
  %.sroa.gep354 = getelementptr i8, ptr %i.ae, i64 -20
  %.else.val379 = load i32, ptr %.sroa.gep354, align 4, !tbaa !126
  %i.hw = and i32 %.else.val379, 512
  %.not = icmp eq i32 %i.hw, 0
  br i1 %.not, label %.cont376.thread, label %.cont384

.cont384:                                         ; preds = %.cont376
  store <2 x float> %.sroa.0131.2, ptr %i.af, align 4, !tbaa !38
  store float %.2, ptr %.sroa.gep346408412, align 4, !tbaa !123
  br label %.cont376.thread

.cont376.thread:                                  ; preds = %.loopexit, %.cont384, %.cont376
  br i1 %i.ah, label %.cont372.thread, label %.cont372

.cont372:                                         ; preds = %.cont376.thread
  %.sroa.gep366 = getelementptr i8, ptr %i.aj, i64 -20
  %.else.val375 = load i32, ptr %.sroa.gep366, align 4, !tbaa !126
  %i.hx = and i32 %.else.val375, 512
  %.not215 = icmp eq i32 %i.hx, 0
  br i1 %.not215, label %.cont372.thread, label %.cont380

.cont380:                                         ; preds = %.cont372
  store <2 x float> %.sroa.0111.2, ptr %i.ak, align 4, !tbaa !38
  store float %.2202, ptr %.sroa.gep357417421429, align 4, !tbaa !123
  br label %.cont372.thread

.cont372.thread:                                  ; preds = %.cont376.thread, %.cont380, %.cont372
  %indvars.iv.next471 = add nuw nsw i64 %indvars.iv470, 1 ; 2 uses
  %exitcond474.not = icmp eq i64 %indvars.iv.next471, %wide.trip.count473
  br i1 %exitcond474.not, label %._crit_edge460, label %bb.b, !llvm.loop !161
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2StoreImpulses_Overflow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2192
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 1496
  %i.m = load i32, ptr %i.l, align 8, !tbaa !36   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2460
  %i.o = load float, ptr %i.n, align 4, !tbaa !130
  %i.p = fneg float %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !tbaa !134, !range !90, !noundef !91 ; 2 uses
  %i.s = icmp sgt i32 %i.m, 0
  br i1 %i.s, label %.lr.ph61.preheader, label %._crit_edge62

.lr.ph61.preheader:                               ; preds = %bb.a
  %wide.trip.count71 = zext nneg i32 %i.m to i64
  br label %.lr.ph61

._crit_edge62:                                    ; preds = %.loopexit, %bb.a
  %.051.lcssa = phi i8 [ %i.r, %bb.a ], [ %.4, %.loopexit ]
  store i8 %.051.lcssa, ptr %i.q, align 8, !tbaa !134
  ret void

.lr.ph61:                                         ; preds = %.lr.ph61.preheader, %.loopexit
  %indvars.iv69 = phi i64 [ 0, %.lr.ph61.preheader ], [ %indvars.iv.next70, %.loopexit ] ; 3 uses
  %.05158 = phi i8 [ %i.r, %.lr.ph61.preheader ], [ %.4, %.loopexit ] ; 3 uses
  %i.t = getelementptr inbounds nuw [156 x i8], ptr %i.f, i64 %indvars.iv69 ; 2 uses
  %i.u = getelementptr inbounds nuw [208 x i8], ptr %i.h, i64 %indvars.iv69 ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 176
  %i.w = load i32, ptr %i.v, align 4, !tbaa !93   ; 5 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph61
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 80 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %i.w, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod76 = trunc i32 %i.w to i1
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv.epil.init ; 2 uses
  %i.ac = getelementptr inbounds nuw [44 x i8], ptr %i.z, i64 %indvars.iv.epil.init ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.af = load <2 x float>, ptr %i.ad, align 4, !tbaa !38
  store <2 x float> %i.af, ptr %i.ae, align 4, !tbaa !38
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !111
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store float %i.ah, ptr %i.ai, align 4, !tbaa !135
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 196
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !136
  %i.al = and i32 %i.ak, 1048576
  %.not.not = icmp eq i32 %i.al, 0
  br i1 %.not.not, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %wide.trip.count67 = zext nneg i32 %i.w to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv ; 2 uses
  %i.ao = getelementptr inbounds nuw [44 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.ar = load <2 x float>, ptr %i.ap, align 4, !tbaa !38
  store <2 x float> %i.ar, ptr %i.aq, align 4, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.at = load float, ptr %i.as, align 4, !tbaa !111
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  store float %i.at, ptr %i.au, align 4, !tbaa !135
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %indvars.iv.next ; 2 uses
  %i.aw = getelementptr inbounds nuw [44 x i8], ptr %i.z, i64 %indvars.iv.next ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 20
  %i.az = load <2 x float>, ptr %i.ax, align 4, !tbaa !38
  store <2 x float> %i.az, ptr %i.ay, align 4, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !111
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store float %i.bb, ptr %i.bc, align 4, !tbaa !135
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !168

bb.c:                                             ; preds = %.lr.ph57, %bb.f
  %indvars.iv64 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next65, %bb.f ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %indvars.iv64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 36
  %i.bf = load float, ptr %i.be, align 4, !tbaa !137
  %i.bg = fcmp olt float %i.bf, %i.p
  br i1 %i.bg, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !135
  %i.bj = fcmp ogt float %i.bi, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = load i32, ptr %i.u, align 4, !tbaa !138 ; 2 uses
  %.val = load ptr, ptr %i.k, align 8, !tbaa !139
  %i.bl = lshr i32 %i.bk, 6
  %i.bm = and i32 %i.bk, 63
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = zext nneg i32 %i.bl to i64
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.bp ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !140
  %i.bs = or i64 %i.bo, %i.br
  store i64 %i.bs, ptr %i.bq, align 8, !tbaa !140
  br label %.loopexit

bb.f:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %.loopexit, label %bb.c, !llvm.loop !169

.loopexit:                                        ; preds = %bb.f, %.lr.ph61, %bb.e, %._crit_edge
  %.4 = phi i8 [ %.05158, %._crit_edge ], [ 1, %bb.e ], [ %.05158, %.lr.ph61 ], [ %.05158, %bb.f ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %i.u, i64 76
  store float %i.bu, ptr %i.bv, align 4, !tbaa !105
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond72.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count71
  br i1 %exitcond72.not, label %._crit_edge62, label %.lr.ph61, !llvm.loop !170
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @b2GetWideContactConstraintByteCount() local_unnamed_addr #3 {
bb.a:
  ret i32 544
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @b2PrepareContacts_Wide(i64 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.0.0.extract.trunc = trunc i64 %0 to i32  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2740
  %i.h = load i8, ptr %i.g, align 4, !tbaa !89, !range !90, !noundef !91
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.next
  %i.j = load i32, ptr %i.i, align 8, !tbaa !144
  %.not = icmp sgt i32 %i.j, %.sroa.0.0.extract.trunc
  br i1 %.not, label %.preheader, label %bb.b, !llvm.loop !171

.preheader:                                       ; preds = %bb.b
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.k = trunc nuw i8 %i.h to i1
  %i.l = select i1 %i.k, <4 x float> splat (float 1.000000e+00), <4 x float> zeroinitializer ; 5 uses
  %i.m = and i32 %.sroa.3.0.extract.trunc, 65535  ; 2 uses
  %i.n = add nsw i32 %i.m, %.sroa.0.0.extract.trunc ; 2 uses
  %.not338 = icmp eq i32 %i.m, 0
  br i1 %.not338, label %._crit_edge, label %.lr.ph337

.loopexit:                                        ; preds = %bb.j, %.lr.ph337
  %.1.lcssa = phi i32 [ %.0251336, %.lr.ph337 ], [ %i.s, %bb.j ] ; 2 uses
  %i.o = icmp slt i32 %.1.lcssa, %i.n
  br i1 %i.o, label %.lr.ph337, label %._crit_edge, !llvm.loop !172

.lr.ph337:                                        ; preds = %.preheader, %.loopexit
  %indvars.iv349 = phi i64 [ %indvars.iv.next350, %.loopexit ], [ %indvars.iv, %.preheader ] ; 2 uses
  %.0251336 = phi i32 [ %.1.lcssa, %.loopexit ], [ %.sroa.0.0.extract.trunc, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv349 ; 3 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.next350
  %i.r = load i32, ptr %i.q, align 8, !tbaa !144
  %i.s = tail call noundef i32 @llvm.smin.i32(i32 %i.r, i32 %i.n) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !145  ; 4 uses
  %i.v = icmp slt i32 %.0251336, %i.s
  br i1 %i.v, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.lr.ph337
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !146
  %i.y = load i32, ptr %i.p, align 8, !tbaa !144
  %i.z = sext i32 %i.x to i64                     ; 4 uses
  %i.aa = sext i32 %.0251336 to i64
  %i.ab = sext i32 %i.y to i64
  %wide.trip.count = sext i32 %i.s to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %indvars.iv346 = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next347, %bb.j ] ; 3 uses
  %i.ac = getelementptr inbounds [544 x i8], ptr %i.f, i64 %indvars.iv346 ; 40 uses
  %i.ad = sub nsw i64 %indvars.iv346, %i.ab
  %i.ae = shl nsw i64 %i.ad, 2                    ; 5 uses
  %i.af = icmp slt i64 %i.ae, %i.z
  br i1 %i.af, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ah = getelementptr inbounds [208 x i8], ptr %i.u, i64 %i.ae ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !98
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ac, align 4, !tbaa !147
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.am = load i32, ptr %i.al, align 4, !tbaa !99
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ag, align 4, !tbaa !147
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.sroa.0353.0 = phi ptr [ %i.ah, %bb.c ], [ @b2_zeroContactSim, %.lr.ph ] ; 15 uses
  %i.ao = or disjoint i64 %i.ae, 1                ; 2 uses
  %i.ap = icmp slt i64 %i.ao, %i.z
  br i1 %i.ap, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aq = getelementptr inbounds [208 x i8], ptr %i.u, i64 %i.ao ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !98
  %i.at = add nsw i32 %i.as, 1
end_hunk_0
