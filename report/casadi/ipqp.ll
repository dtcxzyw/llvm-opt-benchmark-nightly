Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/ipqp?download=true
inline.NumInlined: 1443
inline.NumDeleted: 504
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN6casadi17casadi_ipqp_resetIdEEvPNS_16casadi_ipqp_dataIT_EE:bb.a

.lr.ph.preheader.i:                               ; preds = %._crit_edge
  %i.bo = shl nuw i64 %i.e, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bn, i8 0, i64 %i.bo, i1 false), !tbaa !35
  br label %_ZN6casadi12casadi_clearIdEEvPT_x.exit

_ZN6casadi12casadi_clearIdEEvPT_x.exit:           ; preds = %.preheader, %._crit_edge, %.lr.ph.preheader.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 0, ptr %i.bp, align 8, !tbaa !170
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.bq, align 8, !tbaa !179
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double -1.000000e+00, ptr %i.br, align 8, !tbaa !178
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi20casadi_ipqp_residualIdEEvPNS_16casadi_ipqp_dataIT_EE(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !143    ; 8 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !116  ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !164  ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !154  ; 16 uses
  %i.g = icmp ne ptr %i.d, null
  %i.h = icmp ne ptr %i.f, null                   ; 2 uses
  %or.cond.i = and i1 %i.g, %i.h
  %i.i = icmp sgt i64 %i.b, 0                     ; 3 uses
  %or.cond15.i = and i1 %i.i, %or.cond.i
  br i1 %or.cond15.i, label %.lr.ph.i.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.b, 6
  br i1 %min.iters.check, label %.lr.ph.i.preheader290, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %i.b, 3                          ; 2 uses
  %i.k = getelementptr i8, ptr %i.f, i64 %i.j
  %i.l = getelementptr i8, ptr %i.d, i64 %i.j
  %bound0 = icmp ult ptr %i.f, %i.l
  %bound1 = icmp ult ptr %i.d, %i.k
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader290, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 9223372036854775804      ; 4 uses
  %i.m = shl i64 %n.vec, 3                        ; 2 uses
  %i.n = getelementptr i8, ptr %i.f, i64 %i.m
  %i.o = getelementptr i8, ptr %i.d, i64 %i.m
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.p ; 3 uses
  %next.gep256 = getelementptr i8, ptr %i.d, i64 %i.p ; 2 uses
  %i.q = getelementptr i8, ptr %next.gep256, i64 16
  %wide.load = load <2 x double>, ptr %next.gep256, align 8, !tbaa !35, !alias.scope !418
  %wide.load257 = load <2 x double>, ptr %i.q, align 8, !tbaa !35, !alias.scope !418
  %i.r = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load258 = load <2 x double>, ptr %next.gep, align 8, !tbaa !35, !alias.scope !419, !noalias !418
  %wide.load259 = load <2 x double>, ptr %i.r, align 8, !tbaa !35, !alias.scope !419, !noalias !418
  %i.s = fadd <2 x double> %wide.load, %wide.load258
  %i.t = fadd <2 x double> %wide.load257, %wide.load259
  store <2 x double> %i.s, ptr %next.gep, align 8, !tbaa !35, !alias.scope !419, !noalias !418
  store <2 x double> %i.t, ptr %i.r, align 8, !tbaa !35, !alias.scope !419, !noalias !418
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !404

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %.lr.ph, label %.lr.ph.i.preheader290

.lr.ph.i.preheader290:                            ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.014.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.d, %vector.memcheck ], [ %i.d, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader290, %.lr.ph.i.prol
  %.014.i.prol = phi i64 [ %i.aa, %.lr.ph.i.prol ], [ %.014.i.ph, %.lr.ph.i.preheader290 ]
  %.0813.i.prol = phi ptr [ %i.x, %.lr.ph.i.prol ], [ %.0813.i.ph, %.lr.ph.i.preheader290 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.v, %.lr.ph.i.prol ], [ %.0912.i.ph, %.lr.ph.i.preheader290 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader290 ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.w = load double, ptr %.0912.i.prol, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.y = load double, ptr %.0813.i.prol, align 8, !tbaa !35
  %i.z = fadd double %i.w, %i.y
  store double %i.z, ptr %.0813.i.prol, align 8, !tbaa !35
  %i.aa = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !405

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader290
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i.preheader290 ], [ %i.aa, %.lr.ph.i.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i.preheader290 ], [ %i.x, %.lr.ph.i.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i.preheader290 ], [ %i.v, %.lr.ph.i.prol ]
  %i.ab = sub nsw i64 %.014.i.ph, %i.b
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %.lr.ph, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0813.i = phi ptr [ %i.au, %.lr.ph.i ], [ %.0813.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.as, %.lr.ph.i ], [ %.0912.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.ae = load double, ptr %.0912.i, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.ag = load double, ptr %.0813.i, align 8, !tbaa !35
  %i.ah = fadd double %i.ae, %i.ag
  store double %i.ah, ptr %.0813.i, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.aj = load double, ptr %i.ad, align 8, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.al = load double, ptr %i.af, align 8, !tbaa !35
  %i.am = fadd double %i.aj, %i.al
  store double %i.am, ptr %i.af, align 8, !tbaa !35
  %i.an = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.ao = load double, ptr %i.ai, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.aq = load double, ptr %i.ak, align 8, !tbaa !35
  %i.ar = fadd double %i.ao, %i.aq
  store double %i.ar, ptr %i.ak, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.at = load double, ptr %i.an, align 8, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.av = load double, ptr %i.ap, align 8, !tbaa !35
  %i.aw = fadd double %i.at, %i.av
  store double %i.aw, ptr %i.ap, align 8, !tbaa !35
  %i.ax = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.ax, %i.b
  br i1 %exitcond.not.i.3, label %.lr.ph, label %.lr.ph.i, !llvm.loop !406

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %bb.a
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !145
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !144
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.0201 = phi i64 [ 0, %.lr.ph ], [ %i.bw, %bb.e ] ; 7 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0201
  %i.bf = load double, ptr %i.be, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0201
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !35
  %i.bi = load double, ptr %i.bc, align 8, !tbaa !229
  %i.bj = fadd double %i.bh, %i.bi
  %i.bk = fcmp ugt double %i.bf, %i.bj
  br i1 %i.bk, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0201 ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !35
  %i.bn = fneg double %i.bm
  %i.bo = load ptr, ptr %i.bd, align 8, !tbaa !147
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.0201
  store double %i.bn, ptr %i.bp, align 8, !tbaa !35
  store double 0.000000e+00, ptr %i.bl, align 8, !tbaa !35
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %i.bd, align 8, !tbaa !147
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.0201
  %i.bs = load double, ptr %i.br, align 8, !tbaa !35
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.0201 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !35
  %i.bv = fadd double %i.bs, %i.bu
  store double %i.bv, ptr %i.bt, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.bw = add nuw nsw i64 %.0201, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !407

._crit_edge:                                      ; preds = %bb.e, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  store i64 -1, ptr %i.bx, align 8, !tbaa !173
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  store double 0.000000e+00, ptr %i.by, align 8, !tbaa !172
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !118 ; 5 uses
  %i.cb = icmp slt i64 %i.b, %i.ca
  br i1 %i.cb, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %._crit_edge
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !144
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 152
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph205, %bb.m
  %.1202 = phi i64 [ %i.b, %.lr.ph205 ], [ %i.dh, %bb.m ] ; 10 uses
  %1 = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %.1202
  %2 = load double, ptr %1, align 8, !tbaa !35    ; 3 uses
  %i.ci = load double, ptr %i.ce, align 8, !tbaa !228 ; 2 uses
  %i.cj = fneg double %i.ci
  %i.ck = fcmp ugt double %2, %i.cj
  br i1 %i.ck, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cl = load ptr, ptr %i.cf, align 8, !tbaa !145
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %.1202
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !35
  %i.co = fcmp ult double %i.cn, %i.ci
  br i1 %i.co, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.1202
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !35
  %i.cr = load ptr, ptr %i.cg, align 8, !tbaa !146
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.1202
  store double %i.cq, ptr %i.cs, align 8, !tbaa !35
  %i.ct = load ptr, ptr %i.ch, align 8, !tbaa !147
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.1202
  store double 0.000000e+00, ptr %i.cu, align 8, !tbaa !35
  br label %bb.m

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.f, i64 %.1202
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !35 ; 4 uses
  %i.cx = load double, ptr %i.by, align 8, !tbaa !172 ; 2 uses
  %i.cy = fadd double %i.cw, %i.cx
  %i.cz = fcmp olt double %i.cy, %2
  br i1 %i.cz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.da = fsub double %2, %i.cw
  store double %i.da, ptr %i.by, align 8, !tbaa !172
  store i64 %.1202, ptr %i.bx, align 8, !tbaa !173
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.db = fsub double %i.cw, %i.cx
  %i.dc = load ptr, ptr %i.cf, align 8, !tbaa !145
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %.1202
  %i.de = load double, ptr %i.dd, align 8, !tbaa !35 ; 2 uses
  %i.df = fcmp ogt double %i.db, %i.de
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dg = fsub double %i.cw, %i.de
  store double %i.dg, ptr %i.by, align 8, !tbaa !172
  store i64 %.1202, ptr %i.bx, align 8, !tbaa !173
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %bb.k, %bb.l, %bb.j
  %i.dh = add nsw i64 %.1202, 1                   ; 2 uses
  %exitcond220.not = icmp eq i64 %i.dh, %i.ca
  br i1 %exitcond220.not, label %._crit_edge206, label %bb.f, !llvm.loop !408

._crit_edge206:                                   ; preds = %bb.m, %._crit_edge
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  store i64 -1, ptr %i.di, align 8, !tbaa !175
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  store double 0.000000e+00, ptr %i.dj, align 8, !tbaa !174
  br i1 %i.i, label %.lr.ph209.preheader, label %._crit_edge210

.lr.ph209.preheader:                              ; preds = %._crit_edge206
  %xtraiter291 = and i64 %i.b, 1
  %i.dk = icmp eq i64 %i.b, 1
  br i1 %i.dk, label %.lr.ph209.epil.preheader, label %.lr.ph209.preheader.new

.lr.ph209.preheader.new:                          ; preds = %.lr.ph209.preheader
  %unroll_iter = and i64 %i.b, 9223372036854775806
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.p, %.lr.ph209.preheader.new
  %i.dl = phi double [ 0.000000e+00, %.lr.ph209.preheader.new ], [ %i.dw, %bb.p ] ; 2 uses
  %.2207 = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %i.dx, %bb.p ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.2207
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !35
  %i.do = tail call double @llvm.fabs.f64(double %i.dn) ; 3 uses
  %i.dp = fcmp ogt double %i.do, %i.dl
  br i1 %i.dp, label %bb.n, label %.lr.ph209.1

bb.n:                                             ; preds = %.lr.ph209
  store double %i.do, ptr %i.dj, align 8, !tbaa !174
  store i64 %.2207, ptr %i.di, align 8, !tbaa !175
  br label %.lr.ph209.1

.lr.ph209.1:                                      ; preds = %.lr.ph209, %bb.n
  %i.dq = phi double [ %i.dl, %.lr.ph209 ], [ %i.do, %bb.n ] ; 2 uses
  %i.dr = or disjoint i64 %.2207, 1               ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.dr
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !35
  %i.du = tail call double @llvm.fabs.f64(double %i.dt) ; 3 uses
  %i.dv = fcmp ogt double %i.du, %i.dq
  br i1 %i.dv, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph209.1
  store double %i.du, ptr %i.dj, align 8, !tbaa !174
  store i64 %i.dr, ptr %i.di, align 8, !tbaa !175
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph209.1
  %i.dw = phi double [ %i.dq, %.lr.ph209.1 ], [ %i.du, %bb.o ] ; 2 uses
  %i.dx = add nuw nsw i64 %.2207, 2               ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge210.loopexit.unr-lcssa, label %.lr.ph209, !llvm.loop !409

._crit_edge210.loopexit.unr-lcssa:                ; preds = %bb.p
  %lcmp.mod292.not = icmp eq i64 %xtraiter291, 0
  br i1 %lcmp.mod292.not, label %._crit_edge210, label %.lr.ph209.epil.preheader

.lr.ph209.epil.preheader:                         ; preds = %._crit_edge210.loopexit.unr-lcssa, %.lr.ph209.preheader
  %.epil.init = phi double [ 0.000000e+00, %.lr.ph209.preheader ], [ %i.dw, %._crit_edge210.loopexit.unr-lcssa ]
  %.2207.epil.init = phi i64 [ 0, %.lr.ph209.preheader ], [ %i.dx, %._crit_edge210.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod293 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod293)
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.2207.epil.init
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !35
  %i.ea = tail call double @llvm.fabs.f64(double %i.dz) ; 2 uses
  %i.eb = fcmp ogt double %i.ea, %.epil.init
  br i1 %i.eb, label %bb.q, label %._crit_edge210

bb.q:                                             ; preds = %.lr.ph209.epil.preheader
  store double %i.ea, ptr %i.dj, align 8, !tbaa !174
  store i64 %.2207.epil.init, ptr %i.di, align 8, !tbaa !175
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %._crit_edge210.loopexit.unr-lcssa, %bb.q, %.lr.ph209.epil.preheader, %._crit_edge206
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !117 ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !146 ; 5 uses
  %i.eg = icmp ne ptr %i.ef, null
  %i.eh = icmp sgt i64 %i.ed, 0
  %i.ei = and i1 %i.eg, %i.eh
  %or.cond15.i194 = and i1 %i.ei, %i.h
  br i1 %or.cond15.i194, label %.lr.ph.i195.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit200

.lr.ph.i195.preheader:                            ; preds = %._crit_edge210
  %i.ej = getelementptr [8 x i8], ptr %i.f, i64 %i.b ; 5 uses
  %i.ek = getelementptr [8 x i8], ptr %i.ef, i64 %i.b ; 5 uses
  %min.iters.check268 = icmp ult i64 %i.ed, 10
  br i1 %min.iters.check268, label %.lr.ph.i195.preheader289, label %vector.memcheck269

vector.memcheck269:                               ; preds = %.lr.ph.i195.preheader
  %i.el = add i64 %i.b, %i.ed
  %i.em = shl i64 %i.el, 3                        ; 2 uses
  %i.en = getelementptr i8, ptr %i.f, i64 %i.em
  %i.eo = getelementptr i8, ptr %i.ef, i64 %i.em
  %bound0270 = icmp ult ptr %i.ej, %i.eo
  %bound1271 = icmp ult ptr %i.ek, %i.en
  %found.conflict272 = and i1 %bound0270, %bound1271
  br i1 %found.conflict272, label %.lr.ph.i195.preheader289, label %vector.ph273

vector.ph273:                                     ; preds = %vector.memcheck269
  %n.vec274 = and i64 %i.ed, 9223372036854775804  ; 4 uses
  %i.ep = shl i64 %n.vec274, 3                    ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ej, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.ek, i64 %i.ep
  br label %vector.body275

vector.body275:                                   ; preds = %vector.body275, %vector.ph273
  %index276 = phi i64 [ 0, %vector.ph273 ], [ %index.next283, %vector.body275 ] ; 2 uses
  %i.es = shl i64 %index276, 3                    ; 2 uses
  %next.gep277 = getelementptr i8, ptr %i.ej, i64 %i.es ; 3 uses
  %next.gep278 = getelementptr i8, ptr %i.ek, i64 %i.es ; 2 uses
  %i.et = getelementptr i8, ptr %next.gep278, i64 16
  %wide.load279 = load <2 x double>, ptr %next.gep278, align 8, !tbaa !35, !alias.scope !420
  %wide.load280 = load <2 x double>, ptr %i.et, align 8, !tbaa !35, !alias.scope !420
  %i.eu = getelementptr i8, ptr %next.gep277, i64 16 ; 2 uses
  %wide.load281 = load <2 x double>, ptr %next.gep277, align 8, !tbaa !35, !alias.scope !421, !noalias !420
  %wide.load282 = load <2 x double>, ptr %i.eu, align 8, !tbaa !35, !alias.scope !421, !noalias !420
  %i.ev = fsub <2 x double> %wide.load281, %wide.load279
  %i.ew = fsub <2 x double> %wide.load282, %wide.load280
  store <2 x double> %i.ev, ptr %next.gep277, align 8, !tbaa !35, !alias.scope !421, !noalias !420
  store <2 x double> %i.ew, ptr %i.eu, align 8, !tbaa !35, !alias.scope !421, !noalias !420
  %index.next283 = add nuw i64 %index276, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next283, %n.vec274
  br i1 %i.ex, label %middle.block284, label %vector.body275, !llvm.loop !413

middle.block284:                                  ; preds = %vector.body275
  %cmp.n285 = icmp eq i64 %i.ed, %n.vec274
  br i1 %cmp.n285, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit200, label %.lr.ph.i195.preheader289

.lr.ph.i195.preheader289:                         ; preds = %vector.memcheck269, %.lr.ph.i195.preheader, %middle.block284
  %.014.i196.ph = phi i64 [ 0, %vector.memcheck269 ], [ 0, %.lr.ph.i195.preheader ], [ %n.vec274, %middle.block284 ] ; 3 uses
  %.0813.i197.ph = phi ptr [ %i.ej, %vector.memcheck269 ], [ %i.ej, %.lr.ph.i195.preheader ], [ %i.eq, %middle.block284 ] ; 2 uses
  %.0912.i198.ph = phi ptr [ %i.ek, %vector.memcheck269 ], [ %i.ek, %.lr.ph.i195.preheader ], [ %i.er, %middle.block284 ] ; 2 uses
  %xtraiter294 = and i64 %i.ed, 3                 ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %.lr.ph.i195.prol.loopexit, label %.lr.ph.i195.prol

.lr.ph.i195.prol:                                 ; preds = %.lr.ph.i195.preheader289, %.lr.ph.i195.prol
  %.014.i196.prol = phi i64 [ %i.fd, %.lr.ph.i195.prol ], [ %.014.i196.ph, %.lr.ph.i195.preheader289 ]
  %.0813.i197.prol = phi ptr [ %i.fa, %.lr.ph.i195.prol ], [ %.0813.i197.ph, %.lr.ph.i195.preheader289 ] ; 3 uses
  %.0912.i198.prol = phi ptr [ %i.ey, %.lr.ph.i195.prol ], [ %.0912.i198.ph, %.lr.ph.i195.preheader289 ] ; 2 uses
  %prol.iter296 = phi i64 [ %prol.iter296.next, %.lr.ph.i195.prol ], [ 0, %.lr.ph.i195.preheader289 ]
  %i.ey = getelementptr inbounds nuw i8, ptr %.0912.i198.prol, i64 8 ; 2 uses
  %i.ez = load double, ptr %.0912.i198.prol, align 8, !tbaa !35
  %i.fa = getelementptr inbounds nuw i8, ptr %.0813.i197.prol, i64 8 ; 2 uses
  %i.fb = load double, ptr %.0813.i197.prol, align 8, !tbaa !35
  %i.fc = fsub double %i.fb, %i.ez
  store double %i.fc, ptr %.0813.i197.prol, align 8, !tbaa !35
  %i.fd = add nuw nsw i64 %.014.i196.prol, 1      ; 2 uses
  %prol.iter296.next = add i64 %prol.iter296, 1   ; 2 uses
  %prol.iter296.cmp.not = icmp eq i64 %prol.iter296.next, %xtraiter294
  br i1 %prol.iter296.cmp.not, label %.lr.ph.i195.prol.loopexit, label %.lr.ph.i195.prol, !llvm.loop !414

.lr.ph.i195.prol.loopexit:                        ; preds = %.lr.ph.i195.prol, %.lr.ph.i195.preheader289
  %.014.i196.unr = phi i64 [ %.014.i196.ph, %.lr.ph.i195.preheader289 ], [ %i.fd, %.lr.ph.i195.prol ]
  %.0813.i197.unr = phi ptr [ %.0813.i197.ph, %.lr.ph.i195.preheader289 ], [ %i.fa, %.lr.ph.i195.prol ]
  %.0912.i198.unr = phi ptr [ %.0912.i198.ph, %.lr.ph.i195.preheader289 ], [ %i.ey, %.lr.ph.i195.prol ]
  %i.fe = sub nsw i64 %.014.i196.ph, %i.ed
  %i.ff = icmp ugt i64 %i.fe, -4
  br i1 %i.ff, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit200, label %.lr.ph.i195

.lr.ph.i195:                                      ; preds = %.lr.ph.i195.prol.loopexit, %.lr.ph.i195
  %.014.i196 = phi i64 [ %i.ga, %.lr.ph.i195 ], [ %.014.i196.unr, %.lr.ph.i195.prol.loopexit ]
  %.0813.i197 = phi ptr [ %i.fx, %.lr.ph.i195 ], [ %.0813.i197.unr, %.lr.ph.i195.prol.loopexit ] ; 6 uses
  %.0912.i198 = phi ptr [ %i.fv, %.lr.ph.i195 ], [ %.0912.i198.unr, %.lr.ph.i195.prol.loopexit ] ; 5 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.0912.i198, i64 8
  %i.fh = load double, ptr %.0912.i198, align 8, !tbaa !35
  %i.fi = getelementptr inbounds nuw i8, ptr %.0813.i197, i64 8 ; 2 uses
  %i.fj = load double, ptr %.0813.i197, align 8, !tbaa !35
  %i.fk = fsub double %i.fj, %i.fh
  store double %i.fk, ptr %.0813.i197, align 8, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %.0912.i198, i64 16
  %i.fm = load double, ptr %i.fg, align 8, !tbaa !35
  %i.fn = getelementptr inbounds nuw i8, ptr %.0813.i197, i64 16 ; 2 uses
  %i.fo = load double, ptr %i.fi, align 8, !tbaa !35
  %i.fp = fsub double %i.fo, %i.fm
  store double %i.fp, ptr %i.fi, align 8, !tbaa !35
  %i.fq = getelementptr inbounds nuw i8, ptr %.0912.i198, i64 24
  %i.fr = load double, ptr %i.fl, align 8, !tbaa !35
  %i.fs = getelementptr inbounds nuw i8, ptr %.0813.i197, i64 24 ; 2 uses
  %i.ft = load double, ptr %i.fn, align 8, !tbaa !35
  %i.fu = fsub double %i.ft, %i.fr
  store double %i.fu, ptr %i.fn, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %.0912.i198, i64 32
  %i.fw = load double, ptr %i.fq, align 8, !tbaa !35
  %i.fx = getelementptr inbounds nuw i8, ptr %.0813.i197, i64 32
  %i.fy = load double, ptr %i.fs, align 8, !tbaa !35
  %i.fz = fsub double %i.fy, %i.fw
  store double %i.fz, ptr %i.fs, align 8, !tbaa !35
  %i.ga = add nuw nsw i64 %.014.i196, 4           ; 2 uses
  %exitcond.not.i199.3 = icmp eq i64 %i.ga, %i.ed
  br i1 %exitcond.not.i199.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit200, label %.lr.ph.i195, !llvm.loop !415

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit200: ; preds = %.lr.ph.i195.prol.loopexit, %.lr.ph.i195, %middle.block284, %._crit_edge210
  %i.gb = icmp sgt i64 %i.ca, 0
  br i1 %i.gb, label %.lr.ph212, label %._crit_edge213.thread
end_hunk_0
