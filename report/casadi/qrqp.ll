Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/qrqp?download=true
inline.NumInlined: 1771
inline.NumDeleted: 530
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN6casadi27casadi_qrqp_primal_blockingIdEEvPNS_16casadi_qrqp_dataIT_EE:bb.a
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
  %i.cm = fcmp ugt double %i.cl, 0.000000e+00
  %i.cn = add nuw nsw i64 %.061, 1                ; 2 uses
  %i.co = icmp slt i64 %i.cn, %i.d
  %or.cond = select i1 %i.cm, i1 %i.co, i1 false
  br i1 %or.cond, label %.backedge.backedge, label %.loopexit

.critedge:                                        ; preds = %.backedge
  %.old = add nuw nsw i64 %.061, 1                ; 2 uses
  %.old62 = icmp slt i64 %.old, %i.d
  br i1 %.old62, label %.backedge.backedge, label %.loopexit

.backedge.backedge:                               ; preds = %.critedge, %bb.o
  %.061.be = phi i64 [ %.old, %.critedge ], [ %i.cn, %bb.o ]
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
  %i.v = phi i64 [ %i.q, %.lr.ph70.i ], [ %i.bi, %.loopexit.i ] ; 5 uses
  %.05268.i = phi i64 [ 1, %.lr.ph70.i ], [ %.1.i, %.loopexit.i ] ; 11 uses
  %.05366.i = phi i64 [ 0, %.lr.ph70.i ], [ %i.bj, %.loopexit.i ] ; 5 uses
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
  %1 = add nuw i64 %.05268.i, 1
  br label %.lr.ph65.i.preheader

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.g
  %.051.lcssa.i = phi i64 [ 0, %bb.g ], [ %.05157.i, %.lr.ph.i ] ; 2 uses
  %i.ap = add i64 %.05268.i, 1                    ; 2 uses
  %.not60.i = icmp sgt i64 %.051.lcssa.i, %.05268.i
  br i1 %.not60.i, label %.loopexit.i, label %.lr.ph65.i.preheader

.lr.ph65.i.preheader:                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %2 = phi i64 [ %1, %._crit_edge.i.thread ], [ %i.ap, %._crit_edge.i ]
  %.051.lcssa.i130 = phi i64 [ %i.aj, %._crit_edge.i.thread ], [ %.051.lcssa.i, %._crit_edge.i ] ; 4 uses
  %i.aq = add i64 %.05268.i, 1
  %i.ar = sub i64 %i.aq, %.051.lcssa.i130         ; 3 uses
  %min.iters.check = icmp ult i64 %i.ar, 4
  br i1 %min.iters.check, label %.lr.ph65.i.preheader161, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph65.i.preheader
  %n.vec = and i64 %i.ar, -4                      ; 3 uses
  %i.as = add i64 %.051.lcssa.i130, %n.vec
  %vector.recur.init = insertelement <2 x double> poison, double %i.ai, i64 1
  %vector.recur.init135 = insertelement <2 x i64> poison, i64 %.05366.i, i64 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <2 x double> [ %vector.recur.init, %vector.ph ], [ %wide.load137, %vector.body ]
  %vector.recur136 = phi <2 x i64> [ %vector.recur.init135, %vector.ph ], [ %wide.load139, %vector.body ]
  %i.at = add i64 %.051.lcssa.i130, %index        ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.au, align 8, !tbaa !135 ; 2 uses
  %wide.load137 = load <2 x double>, ptr %i.av, align 8, !tbaa !135 ; 3 uses
  %i.aw = shufflevector <2 x double> %vector.recur, <2 x double> %wide.load, <2 x i32> <i32 1, i32 2>
  %i.ax = shufflevector <2 x double> %wide.load, <2 x double> %wide.load137, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.aw, ptr %i.au, align 8, !tbaa !135
  store <2 x double> %i.ax, ptr %i.av, align 8, !tbaa !135
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.at ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %wide.load138 = load <2 x i64>, ptr %i.ay, align 8, !tbaa !142 ; 2 uses
  %wide.load139 = load <2 x i64>, ptr %i.az, align 8, !tbaa !142 ; 3 uses
  %i.ba = shufflevector <2 x i64> %vector.recur136, <2 x i64> %wide.load138, <2 x i32> <i32 1, i32 2>
  %i.bb = shufflevector <2 x i64> %wide.load138, <2 x i64> %wide.load139, <2 x i32> <i32 1, i32 2>
  store <2 x i64> %i.ba, ptr %i.ay, align 8, !tbaa !142
  store <2 x i64> %i.bb, ptr %i.az, align 8, !tbaa !142
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !599

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x double> %wide.load137, i64 1
  %vector.recur.extract140 = extractelement <2 x i64> %wide.load139, i64 1
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %.lr.ph65.i.preheader161

.lr.ph65.i.preheader161:                          ; preds = %.lr.ph65.i.preheader, %middle.block
  %.063.i.ph = phi double [ %i.ai, %.lr.ph65.i.preheader ], [ %vector.recur.extract, %middle.block ]
  %.04962.i.ph = phi i64 [ %.051.lcssa.i130, %.lr.ph65.i.preheader ], [ %i.as, %middle.block ]
  %.05061.i.ph = phi i64 [ %.05366.i, %.lr.ph65.i.preheader ], [ %vector.recur.extract140, %middle.block ]
  br label %.lr.ph65.i

.lr.ph65.i:                                       ; preds = %.lr.ph65.i.preheader161, %.lr.ph65.i
  %.063.i = phi double [ %i.be, %.lr.ph65.i ], [ %.063.i.ph, %.lr.ph65.i.preheader161 ]
  %.04962.i = phi i64 [ %i.bh, %.lr.ph65.i ], [ %.04962.i.ph, %.lr.ph65.i.preheader161 ] ; 4 uses
  %.05061.i = phi i64 [ %i.bg, %.lr.ph65.i ], [ %.05061.i.ph, %.lr.ph65.i.preheader161 ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.04962.i ; 2 uses
  %i.be = load double, ptr %i.bd, align 8, !tbaa !135
  store double %.063.i, ptr %i.bd, align 8, !tbaa !135
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.04962.i ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !142
  store i64 %.05061.i, ptr %i.bf, align 8, !tbaa !142
  %i.bh = add i64 %.04962.i, 1
  %exitcond73.not.i = icmp eq i64 %.04962.i, %.05268.i
  br i1 %exitcond73.not.i, label %.loopexit.loopexit.i, label %.lr.ph65.i, !llvm.loop !600

.loopexit.loopexit.i:                             ; preds = %.lr.ph65.i, %middle.block
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !145
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %._crit_edge.i, %bb.f, %bb.e, %bb.c, %bb.b
  %i.bi = phi i64 [ %i.v, %bb.b ], [ %i.v, %bb.c ], [ %i.v, %bb.e ], [ %i.v, %bb.f ], [ %i.v, %._crit_edge.i ], [ %.pre.i, %.loopexit.loopexit.i ] ; 2 uses
  %.1.i = phi i64 [ %.05268.i, %bb.b ], [ %.05268.i, %bb.c ], [ %.05268.i, %bb.e ], [ %.05268.i, %bb.f ], [ %i.ap, %._crit_edge.i ], [ %2, %.loopexit.loopexit.i ] ; 3 uses
  %i.bj = add nuw nsw i64 %.05366.i, 1            ; 2 uses
  %i.bk = icmp slt i64 %i.bj, %i.bi
  br i1 %i.bk, label %bb.b, label %_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit, !llvm.loop !601

_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit: ; preds = %.loopexit.i
  %i.bl = icmp sgt i64 %.1.i, 0
  br i1 %i.bl, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %bb.a, %_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit
  %.052.lcssa.i129 = phi i64 [ %.1.i, %_ZN6casadi28casadi_qrqp_dual_breakpointsIdEExPNS_16casadi_qrqp_dataIT_EEPS2_PxS2_.exit ], [ 1, %bb.a ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !146 ; 11 uses
  %i.bo = icmp sgt i64 %i.bn, 0                   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !184 ; 11 uses
  %i.bt = load ptr, ptr %i.bq, align 8, !tbaa !183 ; 7 uses
  %i.bu = icmp ne ptr %i.bs, null
  %i.bv = icmp ne ptr %i.bt, null
  %or.cond.i = and i1 %i.bu, %i.bv
  %or.cond15.i = and i1 %i.bo, %or.cond.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.bz = shl i64 %i.bn, 3                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bt, i64 %i.bz
  %scevgep142 = getelementptr i8, ptr %i.bs, i64 %i.bz
  %min.iters.check144 = icmp ult i64 %i.bn, 4
  %bound0 = icmp ult ptr %i.bt, %scevgep142
  %bound1 = icmp ult ptr %i.bs, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec146 = and i64 %i.bn, 9223372036854775804  ; 4 uses
  %i.ca = shl i64 %n.vec146, 3                    ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bt, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.bs, i64 %i.ca
  %cmp.n156 = icmp eq i64 %i.bn, %n.vec146
  %xtraiter = and i64 %i.bn, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph102, %.loopexit
  %.077101 = phi double [ 0.000000e+00, %.lr.ph102 ], [ %i.em, %.loopexit ] ; 4 uses
  %.078100 = phi i64 [ -1, %.lr.ph102 ], [ %.1.lcssa131133, %.loopexit ] ; 2 uses
  %.08199 = phi i64 [ 0, %.lr.ph102 ], [ %i.gp, %.loopexit ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.08199 ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !135
  %i.cf = fsub double %i.ce, %.077101             ; 2 uses
  br i1 %i.bo, label %.lr.ph, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.thread

.lr.ph:                                           ; preds = %bb.i, %bb.m
  %.194 = phi i64 [ %.2, %bb.m ], [ %.078100, %bb.i ] ; 3 uses
  %.07993 = phi i64 [ %i.cy, %bb.m ], [ 0, %bb.i ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.07993
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !135 ; 4 uses
  %i.ci = tail call double @llvm.fabs.f64(double %i.ch)
  %i.cj = fcmp olt double %i.ci, f0x3D06849B86A12B9B
  br i1 %i.cj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.07993
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !135 ; 2 uses
  %i.cm = fcmp olt double %i.ch, 0.000000e+00     ; 2 uses
  %i.cn = fneg double %i.cl
  %i.co = fneg double %i.ch
  %.076 = select i1 %i.cm, double %i.cn, double %i.cl ; 2 uses
  %.0 = select i1 %i.cm, double %i.co, double %i.ch ; 2 uses
  %i.cp = tail call double @llvm.fmuladd.f64(double %i.cf, double %.0, double %.076)
  %i.cq = load double, ptr %i.br, align 8, !tbaa !269 ; 2 uses
  %i.cr = fcmp ogt double %i.cp, %i.cq
  br i1 %i.cr, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cs = fsub nsz double %i.cq, %.076
  %i.ct = fdiv nsz double %i.cs, %.0
  %i.cu = fadd nsz double %.077101, %i.ct
  %i.cv = tail call nsz double @llvm.maxnum.f64(double %.077101, double %i.cu) ; 2 uses
  %i.cw = load double, ptr %i.n, align 8, !tbaa !227
  %i.cx = fcmp olt double %i.cv, %i.cw
  br i1 %i.cx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.cv, ptr %i.n, align 8, !tbaa !227
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k, %.lr.ph
  %.2 = phi i64 [ %.194, %.lr.ph ], [ %.07993, %bb.l ], [ %.194, %bb.k ], [ %.194, %bb.j ] ; 4 uses
  %i.cy = add nuw nsw i64 %.07993, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.bn
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !602

._crit_edge:                                      ; preds = %bb.m
  %i.cz = load double, ptr %i.n, align 8, !tbaa !227
  %i.da = fsub nsz double %i.cz, %.077101
  %i.db = tail call nsz double @llvm.minnum.f64(double %i.da, double %i.cf) ; 6 uses
  br i1 %or.cond15.i, label %.lr.ph.i91.preheader, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit

.lr.ph.i91.preheader:                             ; preds = %._crit_edge
  %brmerge = select i1 %min.iters.check144, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i91.preheader160, label %vector.ph145

vector.ph145:                                     ; preds = %.lr.ph.i91.preheader
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.db, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body147 ] ; 2 uses
  %i.dc = shl i64 %index148, 3                    ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.dc ; 3 uses
  %next.gep149 = getelementptr i8, ptr %i.bs, i64 %i.dc ; 2 uses
  %i.dd = getelementptr i8, ptr %next.gep149, i64 16
  %wide.load150 = load <2 x double>, ptr %next.gep149, align 8, !tbaa !135, !alias.scope !611
  %wide.load151 = load <2 x double>, ptr %i.dd, align 8, !tbaa !135, !alias.scope !611
  %i.de = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load152 = load <2 x double>, ptr %next.gep, align 8, !tbaa !135, !alias.scope !612, !noalias !611
  %wide.load153 = load <2 x double>, ptr %i.de, align 8, !tbaa !135, !alias.scope !612, !noalias !611
  %i.df = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load150, <2 x double> %wide.load152)
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load151, <2 x double> %wide.load153)
  store <2 x double> %i.df, ptr %next.gep, align 8, !tbaa !135, !alias.scope !612, !noalias !611
  store <2 x double> %i.dg, ptr %i.de, align 8, !tbaa !135, !alias.scope !612, !noalias !611
  %index.next154 = add nuw i64 %index148, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next154, %n.vec146
  br i1 %i.dh, label %middle.block155, label %vector.body147, !llvm.loop !606

middle.block155:                                  ; preds = %vector.body147
  br i1 %cmp.n156, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i91.preheader160

.lr.ph.i91.preheader160:                          ; preds = %.lr.ph.i91.preheader, %middle.block155
  %.014.i.ph = phi i64 [ %n.vec146, %middle.block155 ], [ 0, %.lr.ph.i91.preheader ] ; 3 uses
  %.0813.i.ph = phi ptr [ %i.cb, %middle.block155 ], [ %i.bt, %.lr.ph.i91.preheader ] ; 2 uses
  %.0912.i.ph = phi ptr [ %i.cc, %middle.block155 ], [ %i.bs, %.lr.ph.i91.preheader ] ; 2 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i91.prol.loopexit, label %.lr.ph.i91.prol

.lr.ph.i91.prol:                                  ; preds = %.lr.ph.i91.preheader160, %.lr.ph.i91.prol
  %.014.i.prol = phi i64 [ %i.dn, %.lr.ph.i91.prol ], [ %.014.i.ph, %.lr.ph.i91.preheader160 ]
  %.0813.i.prol = phi ptr [ %i.dk, %.lr.ph.i91.prol ], [ %.0813.i.ph, %.lr.ph.i91.preheader160 ] ; 3 uses
  %.0912.i.prol = phi ptr [ %i.di, %.lr.ph.i91.prol ], [ %.0912.i.ph, %.lr.ph.i91.preheader160 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i91.prol ], [ 0, %.lr.ph.i91.preheader160 ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0912.i.prol, i64 8 ; 2 uses
  %i.dj = load double, ptr %.0912.i.prol, align 8, !tbaa !135
  %i.dk = getelementptr inbounds nuw i8, ptr %.0813.i.prol, i64 8 ; 2 uses
  %i.dl = load double, ptr %.0813.i.prol, align 8, !tbaa !135
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dj, double %i.dl)
  store double %i.dm, ptr %.0813.i.prol, align 8, !tbaa !135
  %i.dn = add nuw nsw i64 %.014.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i91.prol.loopexit, label %.lr.ph.i91.prol, !llvm.loop !607

.lr.ph.i91.prol.loopexit:                         ; preds = %.lr.ph.i91.prol, %.lr.ph.i91.preheader160
  %.014.i.unr = phi i64 [ %.014.i.ph, %.lr.ph.i91.preheader160 ], [ %i.dn, %.lr.ph.i91.prol ]
  %.0813.i.unr = phi ptr [ %.0813.i.ph, %.lr.ph.i91.preheader160 ], [ %i.dk, %.lr.ph.i91.prol ]
  %.0912.i.unr = phi ptr [ %.0912.i.ph, %.lr.ph.i91.preheader160 ], [ %i.di, %.lr.ph.i91.prol ]
  %i.do = sub nsw i64 %.014.i.ph, %i.bn
  %i.dp = icmp ugt i64 %i.do, -4
  br i1 %i.dp, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91
  %.014.i = phi i64 [ %i.ek, %.lr.ph.i91 ], [ %.014.i.unr, %.lr.ph.i91.prol.loopexit ]
  %.0813.i = phi ptr [ %i.eh, %.lr.ph.i91 ], [ %.0813.i.unr, %.lr.ph.i91.prol.loopexit ] ; 6 uses
  %.0912.i = phi ptr [ %i.ef, %.lr.ph.i91 ], [ %.0912.i.unr, %.lr.ph.i91.prol.loopexit ] ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0912.i, i64 8
  %i.dr = load double, ptr %.0912.i, align 8, !tbaa !135
  %i.ds = getelementptr inbounds nuw i8, ptr %.0813.i, i64 8 ; 2 uses
  %i.dt = load double, ptr %.0813.i, align 8, !tbaa !135
  %i.du = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dr, double %i.dt)
  store double %i.du, ptr %.0813.i, align 8, !tbaa !135
  %i.dv = getelementptr inbounds nuw i8, ptr %.0912.i, i64 16
  %i.dw = load double, ptr %i.dq, align 8, !tbaa !135
  %i.dx = getelementptr inbounds nuw i8, ptr %.0813.i, i64 16 ; 2 uses
  %i.dy = load double, ptr %i.ds, align 8, !tbaa !135
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.db, double %i.dw, double %i.dy)
  store double %i.dz, ptr %i.ds, align 8, !tbaa !135
  %i.ea = getelementptr inbounds nuw i8, ptr %.0912.i, i64 24
  %i.eb = load double, ptr %i.dv, align 8, !tbaa !135
  %i.ec = getelementptr inbounds nuw i8, ptr %.0813.i, i64 24 ; 2 uses
  %i.ed = load double, ptr %i.dx, align 8, !tbaa !135
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.db, double %i.eb, double %i.ed)
  store double %i.ee, ptr %i.dx, align 8, !tbaa !135
  %i.ef = getelementptr inbounds nuw i8, ptr %.0912.i, i64 32
  %i.eg = load double, ptr %i.ea, align 8, !tbaa !135
  %i.eh = getelementptr inbounds nuw i8, ptr %.0813.i, i64 32
  %i.ei = load double, ptr %i.ec, align 8, !tbaa !135
  %i.ej = tail call double @llvm.fmuladd.f64(double %i.db, double %i.eg, double %i.ei)
  store double %i.ej, ptr %i.ec, align 8, !tbaa !135
  %i.ek = add nuw nsw i64 %.014.i, 4              ; 2 uses
  %exitcond.not.i92.3 = icmp eq i64 %i.ek, %i.bn
  br i1 %exitcond.not.i92.3, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit, label %.lr.ph.i91, !llvm.loop !608

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit:    ; preds = %.lr.ph.i91.prol.loopexit, %.lr.ph.i91, %middle.block155, %._crit_edge
  %i.el = icmp sgt i64 %.2, -1
  br i1 %i.el, label %._crit_edge103, label %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.thread

_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit.thread: ; preds = %bb.i, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit
  %.1.lcssa131133 = phi i64 [ %.2, %_ZN6casadi11casadi_axpyIdEEvxT_PKS1_PS1_.exit ], [ %.078100, %bb.i ] ; 3 uses
  %i.em = load double, ptr %i.cd, align 8, !tbaa !135
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.08199
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !142 ; 7 uses
  %i.ep = icmp slt i64 %i.eo, 0
end_hunk_0
