Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/qrqp?download=true
inline.NumInlined: 1771
inline.NumDeleted: 530
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN6casadi17casadi_qr_colcombIdEEvPT_PKS1_PKxS6_S1_x:bb.a
middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit, label %.lr.ph.i74.preheader111

.lr.ph.i74.preheader111:                          ; preds = %.lr.ph.i74.preheader, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i74.preheader ], [ %n.vec, %middle.block ]
  %.057.i.ph = phi ptr [ %0, %.lr.ph.i74.preheader ], [ %i.cy, %middle.block ]
  br label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.preheader111, %.lr.ph.i74
  %.08.i = phi i64 [ %i.dh, %.lr.ph.i74 ], [ %.08.i.ph, %.lr.ph.i74.preheader111 ]
  %.057.i = phi ptr [ %i.de, %.lr.ph.i74 ], [ %.057.i.ph, %.lr.ph.i74.preheader111 ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  %i.df = load double, ptr %.057.i, align 8, !tbaa !135
  %i.dg = fmul double %i.cw, %i.df
  store double %i.dg, ptr %.057.i, align 8, !tbaa !135
  %i.dh = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %exitcond.not.i75 = icmp eq i64 %i.dh, %i.b
  br i1 %exitcond.not.i75, label %_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit, label %.lr.ph.i74, !llvm.loop !595

_ZN6casadi11casadi_scalIdEEvxT_PS1_.exit:         ; preds = %.lr.ph.i74, %middle.block, %._crit_edge93, %_ZN6casadi10casadi_dotIdEET_xPKS1_S3_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6casadi27casadi_qrqp_primal_blockingIdEEvPNS_16casadi_qrqp_dataIT_EE(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !197
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load i64, ptr %i.c, align 8, !tbaa !145  ; 4 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %.loopexit

.lr.ph:                                           ; preds = %._crit_edge.loopexit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  br label %.backedge

.lr.ph.i:                                         ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !178
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.040.i = phi double [ 0.000000e+00, %.lr.ph.i ], [ %.1.i, %bb.g ] ; 4 uses
  %.03639.i = phi i64 [ 0, %.lr.ph.i ], [ %i.az, %bb.g ] ; 8 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03639.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !135 ; 4 uses
  %i.ad = fneg double %.040.i
  %i.ae = fcmp olt double %i.ac, %i.ad
  br i1 %i.ae, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.t, align 8, !tbaa !175
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.03639.i
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !135
  %i.ai = load ptr, ptr %i.u, align 8, !tbaa !174
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.03639.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !135
  %i.al = fsub double %i.ah, %i.ak
  %i.am = load double, ptr %i.v, align 8, !tbaa !268
  %i.an = fcmp ult double %i.al, %i.am
  br i1 %i.an, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = fneg double %i.ac
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.ap = fcmp ogt double %i.ac, %.040.i
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.u, align 8, !tbaa !174
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.03639.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !135
  %i.at = load ptr, ptr %i.aa, align 8, !tbaa !176
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.03639.i
  %i.av = load double, ptr %i.au, align 8, !tbaa !135
  %i.aw = fsub double %i.as, %i.av
  %i.ax = load double, ptr %i.v, align 8, !tbaa !268
  %i.ay = fcmp ult double %i.aw, %i.ax
  br i1 %i.ay, label %bb.g, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.d
  %.sink.i = phi i64 [ -1, %bb.d ], [ 1, %bb.f ]
  %.str.170.sink.i = phi ptr [ @.str.170, %bb.d ], [ @.str.171, %bb.f ]
  %.1.ph.i = phi double [ %i.ao, %bb.d ], [ %i.ac, %bb.f ]
  store i64 %.03639.i, ptr %i.w, align 8, !tbaa !199
  store i64 %.sink.i, ptr %i.x, align 8, !tbaa !222
  store ptr %.str.170.sink.i, ptr %i.y, align 8, !tbaa !204
  store i64 %.03639.i, ptr %i.z, align 8, !tbaa !205
  br label %bb.g

bb.g:                                             ; preds = %.sink.split.i, %bb.f, %bb.e
  %.1.i = phi double [ %.040.i, %bb.f ], [ %.040.i, %bb.e ], [ %.1.ph.i, %.sink.split.i ] ; 2 uses
  %i.az = add nuw nsw i64 %.03639.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.az, %i.d
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !596

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.ba = fcmp ule double %.1.i, 0.000000e+00
  br i1 %i.ba, label %.lr.ph, label %bb.h

bb.h:                                             ; preds = %._crit_edge.loopexit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 208
  store double 0.000000e+00, ptr %i.bb, align 8, !tbaa !227
  br label %.loopexit

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.061 = phi i64 [ 0, %.lr.ph ], [ %.061.be, %.backedge.backedge ] ; 10 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.061
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !135 ; 6 uses
  %i.be = fcmp oeq double %i.bd, 0.000000e+00
  br i1 %i.be, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.backedge
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !174
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.061
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !135 ; 3 uses
  %i.bi = load double, ptr %i.i, align 8, !tbaa !227 ; 3 uses
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bd, double %i.bh) ; 2 uses
  %i.bk = fcmp olt double %i.bd, 0.000000e+00
  br i1 %i.bk, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !175
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.061
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !135
  %i.bo = load double, ptr %i.k, align 8, !tbaa !268
  %i.bp = fsub double %i.bn, %i.bo                ; 2 uses
  %i.bq = fcmp olt double %i.bj, %i.bp
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = fsub double %i.bp, %i.bh
  %i.bs = fdiv double %i.br, %i.bd                ; 2 uses
  store double %i.bs, ptr %i.i, align 8, !tbaa !227
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !177
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.061
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !135
  %i.bw = fcmp olt double %i.bv, 0.000000e+00
  br label %.sink.split

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bx = fcmp ogt double %i.bd, 0.000000e+00
  br i1 %i.bx, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.by = load ptr, ptr %i.l, align 8, !tbaa !176
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.061
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !135
  %i.cb = load double, ptr %i.k, align 8, !tbaa !268
  %i.cc = fadd double %i.ca, %i.cb                ; 2 uses
  %i.cd = fcmp ogt double %i.bj, %i.cc
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ce = fsub double %i.cc, %i.bh
  %i.cf = fdiv double %i.ce, %i.bd                ; 2 uses
  store double %i.cf, ptr %i.i, align 8, !tbaa !227
  %i.cg = load ptr, ptr %i.m, align 8, !tbaa !177
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.061
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !135
  %i.cj = fcmp ogt double %i.ci, 0.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.n
  %.sink71 = phi i1 [ %i.cj, %bb.n ], [ %i.bw, %bb.k ]
  %.sink = phi i64 [ 1, %bb.n ], [ -1, %bb.k ]
  %.str.169.sink = phi ptr [ @.str.169, %bb.n ], [ @.str.168, %bb.k ]
  %.ph = phi double [ %i.cf, %bb.n ], [ %i.bs, %bb.k ]
  %i.ck = select i1 %.sink71, i64 -1, i64 %.061
  store i64 %i.ck, ptr %i.n, align 8, !tbaa !199
  store i64 %.sink, ptr %i.o, align 8, !tbaa !222
  store ptr %.str.169.sink, ptr %i.p, align 8, !tbaa !204
  store i64 %.061, ptr %i.q, align 8, !tbaa !205
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.l, %bb.m
  %i.cl = phi double [ %i.bi, %bb.l ], [ %i.bi, %bb.m ], [ %.ph, %.sink.split ]
  %1 = fcmp ugt double %i.cl, 0.000000e+00
  %i.cm = add nuw nsw i64 %.061, 1                ; 2 uses
  %2 = icmp slt i64 %i.cm, %i.d
  %or.cond = select i1 %1, i1 %2, i1 false
  br i1 %or.cond, label %.backedge.backedge, label %.loopexit

.critedge:                                        ; preds = %.backedge
  %.old = add nuw nsw i64 %.061, 1                ; 2 uses
  %.old62 = icmp slt i64 %.old, %i.d
  br i1 %.old62, label %.backedge.backedge, label %.loopexit

.backedge.backedge:                               ; preds = %.critedge, %bb.o
  %.061.be = phi i64 [ %.old, %.critedge ], [ %i.cm, %bb.o ]
  br label %.backedge, !llvm.loop !597

.loopexit:                                        ; preds = %bb.o, %.critedge, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6casadi25casadi_qrqp_dual_blockingIdEExPNS_16casadi_qrqp_dataIT_EE(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !197    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !221
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !140  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !263
  %i.h = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !191  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !227 ; 2 uses
  store double %i.o, ptr %i.k, align 8, !tbaa !135
  store i64 -1, ptr %i.m, align 8, !tbaa !142
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !145  ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %.lr.ph70.i, label %.lr.ph102

.lr.ph70.i:                                       ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !179
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph70.i
  %i.v = phi i64 [ %i.q, %.lr.ph70.i ], [ %i.bk, %.loopexit.i ] ; 5 uses
  %.05268.i = phi i64 [ 1, %.lr.ph70.i ], [ %.1.i, %.loopexit.i ] ; 11 uses
  %.05366.i = phi i64 [ 0, %.lr.ph70.i ], [ %i.bl, %.loopexit.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.05366.i
  %i.x = load double, ptr %i.w, align 8, !tbaa !135 ; 3 uses
  %i.y = fcmp oeq double %i.x, 0.000000e+00
  br i1 %i.y, label %.loopexit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !177
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.05366.i
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !135 ; 4 uses
  %i.ac = fcmp oeq double %i.ab, 0.000000e+00
  br i1 %i.ac, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call double @llvm.fmuladd.f64(double %i.o, double %i.x, double %i.ab) ; 2 uses
  %i.ae = fcmp ogt double %i.ab, 0.000000e+00
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.af = fcmp ult double %i.ad, 0.000000e+00
  br i1 %i.af, label %bb.g, label %.loopexit.i

bb.f:                                             ; preds = %bb.d
  %i.ag = fcmp ugt double %i.ad, 0.000000e+00
  br i1 %i.ag, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ah = fneg double %i.ab
  %i.ai = fdiv double %i.ah, %i.x                 ; 3 uses
  %i.aj = add nsw i64 %.05268.i, -1               ; 2 uses
  %i.ak = icmp sgt i64 %.05268.i, 1
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.05157.i = phi i64 [ %i.ao, %bb.h ], [ 0, %bb.g ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.05157.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !135
  %i.an = fcmp olt double %i.ai, %i.am
  br i1 %i.an, label %._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.ao = add nuw nsw i64 %.05157.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ao, %i.aj
  br i1 %exitcond.not.i, label %._crit_edge.i.thread, label %.lr.ph.i, !llvm.loop !598

._crit_edge.i.thread:                             ; preds = %bb.h
  %i.ap = add nuw i64 %.05268.i, 1
  br label %.lr.ph65.i.preheader

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %.051.lcssa.i = phi i64 [ 0, %bb.g ], [ %.05157.i, %.lr.ph.i ] ; 2 uses
  %i.aq = add i64 %.05268.i, 1                    ; 2 uses
  %.not60.i = icmp sgt i64 %.051.lcssa.i, %.05268.i
  br i1 %.not60.i, label %.loopexit.i, label %.lr.ph65.i.preheader

.lr.ph65.i.preheader:                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.ar = phi i64 [ %i.ap, %._crit_edge.i.thread ], [ %i.aq, %._crit_edge.i ]
  %.051.lcssa.i130 = phi i64 [ %i.aj, %._crit_edge.i.thread ], [ %.051.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.as = add i64 %.05268.i, 1
  %i.at = sub i64 %i.as, %.051.lcssa.i130         ; 3 uses
  %min.iters.check = icmp ult i64 %i.at, 4
  br i1 %min.iters.check, label %.lr.ph65.i.preheader167, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.at, -4                      ; 3 uses
  %i.au = add i64 %.051.lcssa.i130, %n.vec
  %vector.recur.init = insertelement <2 x double> poison, double %i.ai, i64 1
  %vector.recur.init140 = insertelement <2 x i64> poison, i64 %.05366.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph ], [ %wide.load142, %vector.body ]
  %vector.recur141 = phi <2 x i64> [ %vector.recur.init140, %vector.ph ], [ %wide.load144, %vector.body ]
  %i.av = add i64 %.051.lcssa.i130, %index        ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !135 ; 2 uses
  %wide.load142 = load <2 x double>, ptr %i.ax, align 8, !tbaa !135 ; 3 uses
  %i.ay = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.az = shufflevector <2 x double> %wide.load, <2 x double> %wide.load142, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ay, ptr %i.aw, align 8, !tbaa !135
  store <2 x double> %i.az, ptr %i.ax, align 8, !tbaa !135
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.av ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %wide.load143 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !142 ; 2 uses
  %wide.load144 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !142 ; 3 uses
  %i.bc = shufflevector <2 x i64> %vector.recur141, <2 x i64> %wide.load143, <2 x i32> <i32 1, i32 2>
  %i.bd = shufflevector <2 x i64> %wide.load143, <2 x i64> %wide.load144, <2 x i32> <i32 1, i32 2>
  store <2 x i64> %i.bc, ptr %i.ba, align 8, !tbaa !142
  store <2 x i64> %i.bd, ptr %i.bb, align 8, !tbaa !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !599

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x double> %wide.load142, i64 1
  %vector.recur.extract145 = extractelement <2 x i64> %wide.load144, i64 1
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %.lr.ph65.i.preheader167

.lr.ph65.i.preheader167:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.063.i.ph = phi double [ %i.ai, %.lr.ph65.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.04962.i.ph = phi i64 [ %.051.lcssa.i130, %.lr.ph65.i.preheader ], [ %i.au, %middle.block ]
  %.05061.i.ph = phi i64 [ %.05366.i, %.lr.ph65.i.preheader ], [ %vector.recur.extract145, %middle.block ]
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader167, %.lr.ph65.i
  %.063.i = phi double [ %i.bg, %.lr.ph65.i ], [ %.063.i.ph, %.lr.ph65.i.preheader167 ]
  %.04962.i = phi i64 [ %i.bj, %.lr.ph65.i ], [ %.04962.i.ph, %.lr.ph65.i.preheader167 ] ; 4 uses
  %.05061.i = phi i64 [ %i.bi, %.lr.ph65.i ], [ %.05061.i.ph, %.lr.ph65.i.preheader167 ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.04962.i ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !135
  store double %.063.i, ptr %i.bf, align 8, !tbaa !135
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.04962.i ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !142
  store i64 %.05061.i, ptr %i.bh, align 8, !tbaa !142
  %i.bj = add i64 %.04962.i, 1
  %exitcond73.not.i = icmp eq i64 %.04962.i, %.05268.i
  br i1 %exitcond73.not.i, label %.loopexit.loopexit.i, label %.lr.ph65.i, !llvm.loop !600

.loopexit.loopexit.i:                             ; preds = %.lr.ph65.i, %middle.block
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !145
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %._crit_edge.i, %bb.f, %bb.e, %bb.c, %bb.b
  %i.bk = phi i64 [ %i.v, %bb.b ], [ %i.v, %bb.c ], [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %._crit_edge.i ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.1.i = phi i64 [ %.05268.i, %bb.b ], [ %.05268.i, %bb.c ], [ %.05268.i, %bb.e ], [ %.05268.i, %bb.f ], [ %i.aq, %._crit_edge.i ], [ %i.ar, %.loopexit.loopexit.i ] ; 3 uses
  %i.bl = add nuw nsw i64 %.05366.i, 1            ; 2 uses
  %i.bm = icmp slt i64 %i.bl, %i.bk
  br i1 %i.bm, label %bb.b, label %_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit, !llvm.loop !601

_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit: ; preds = %.loopexit.i
  %i.bn = icmp sgt i64 %.1.i, 0
  br i1 %i.bn, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.a, %_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit
  %.052.lcssa.i132 = phi i64 [ %.1.i, %_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit ], [ 1, %bb.a ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !146 ; 11 uses
  %i.bq = icmp sgt i64 %i.bp, 0                   ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !184 ; 11 uses
  %i.bv = load ptr, ptr %i.bs, align 8, !tbaa !183 ; 7 uses
  %i.bw = icmp ne ptr %i.bu, null
  %i.bx = icmp ne ptr %i.bv, null
  %or.cond.i = and i1 %i.bw, %i.bx
  %or.cond15.i = and i1 %i.bq, %or.cond.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.cb = shl i64 %i.bp, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bu, i64 %i.cb
  %scevgep148 = getelementptr i8, ptr %i.bv, i64 %i.cb
  %min.iters.check150 = icmp ult i64 %i.bp, 4
end_hunk_0
