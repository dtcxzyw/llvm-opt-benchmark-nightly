Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ida?download=true
inline.NumInlined: 26
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@IDARcheck2:bb.a
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !83
  %i.bz = load ptr, ptr %i.f, align 8, !tbaa !111
  %i.ca = load ptr, ptr %i.h, align 8, !tbaa !112
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !102
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !169
  %i.ce = tail call i32 %i.by(double noundef %i.bn, ptr noundef %i.bz, ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %i.cd) #13
  %i.cf = load i64, ptr %i.u, align 8, !tbaa !93
  %i.cg = add nsw i64 %i.cf, 1
  store i64 %i.cg, ptr %i.u, align 8, !tbaa !93
  %.not81 = icmp eq i32 %i.ce, 0
  br i1 %.not81, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.i
  %i.ch = load i32, ptr %i.x, align 8, !tbaa !84  ; 2 uses
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !106
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1080
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph94, %bb.p
  %i.cm = phi i32 [ %i.ch, %.lr.ph94 ], [ %i.cz, %bb.p ] ; 3 uses
  %indvars.iv101 = phi i64 [ 0, %.lr.ph94 ], [ %indvars.iv.next102, %bb.p ] ; 5 uses
  %.293 = phi i32 [ 0, %.lr.ph94 ], [ %.3, %bb.p ] ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv101
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !26
  %.not83 = icmp eq i32 %i.co, 0
  br i1 %.not83, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = load ptr, ptr %i.cb, align 8, !tbaa !102
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv101
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !21 ; 2 uses
  %i.cs = fcmp oeq double %i.cr, 0.000000e+00
  %i.ct = load ptr, ptr %i.cl, align 8, !tbaa !104
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv101 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !26
  %i.cw = icmp eq i32 %i.cv, 1                    ; 2 uses
  br i1 %i.cs, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %i.cw, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.cu, align 4, !tbaa !26
  %.pre104 = load i32, ptr %i.x, align 8, !tbaa !84
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = load ptr, ptr %i.p, align 8, !tbaa !101
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %indvars.iv101
  store double %i.cr, ptr %i.cy, align 8, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.j
  %i.cz = phi i32 [ %.pre104, %bb.m ], [ %i.cm, %bb.o ], [ %i.cm, %bb.n ], [ %i.cm, %bb.j ] ; 2 uses
  %.3 = phi i32 [ 1, %bb.m ], [ %.293, %bb.o ], [ %.293, %bb.n ], [ %.293, %bb.j ] ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next102, %i.da
  br i1 %i.db, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.p, %.preheader86, %.preheader85, %.preheader, %bb.i, %._crit_edge, %bb.b, %bb.a
  %.079 = phi i32 [ -10, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge ], [ -10, %bb.i ], [ 0, %.preheader85 ], [ 0, %.preheader86 ], [ 0, %.preheader ], [ %.3, %bb.p ], [ 3, %bb.l ]
  ret i32 %.079
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -10, 2) i32 @IDARcheck3(ptr noundef nonnull %0, double noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  switch i32 %2, label %._crit_edge104 [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

._crit_edge104:                                   ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !172
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load double, ptr %i.a, align 8, !tbaa !76 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store double %i.b, ptr %i.c, align 8, !tbaa !172
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.e = load double, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %i.f = fsub double %1, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.h = load double, ptr %i.g, align 8, !tbaa !115
  %i.i = fmul double %i.f, %i.h
  %i.j = fcmp ult double %i.i, 0.000000e+00
  %. = select i1 %i.j, double %1, double %i.e     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store double %., ptr %i.k, align 8, !tbaa !172
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge104, %bb.b, %bb.c
  %i.l = phi double [ %.pre, %._crit_edge104 ], [ %i.b, %bb.b ], [ %., %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1104 ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.r = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.l, ptr noundef %i.o, ptr noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.u = load double, ptr %i.m, align 8, !tbaa !172
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 7 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !169
  %i.ab = tail call i32 %i.t(double noundef %i.u, ptr noundef %i.v, ptr noundef %i.w, ptr noundef %i.y, ptr noundef %i.aa) #13
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 4 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !93
  %i.ae = add nsw i64 %i.ad, 1
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !93
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.e, label %IDARootfind.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ag = load double, ptr %i.af, align 8, !tbaa !76
  %i.ah = tail call double @llvm.fabs.f64(double %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !115
  %i.ak = tail call double @llvm.fabs.f64(double %i.aj)
  %i.al = fadd double %i.ah, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load double, ptr %i.am, align 8, !tbaa !18
  %i.ao = fmul double %i.an, %i.al
  %i.ap = fmul double %i.ao, 1.000000e+02         ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  store double %i.ap, ptr %i.aq, align 8, !tbaa !171
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 5 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !84 ; 4 uses
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.i, label %._crit_edge.thread.thread

._crit_edge.thread.thread:                        ; preds = %bb.e
  %i.au = load double, ptr %i.m, align 8, !tbaa !172 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store double %i.au, ptr %i.av, align 8, !tbaa !173
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store double %i.au, ptr %i.aw, align 8, !tbaa !126
  br label %IDARootfind.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !106 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 8 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.as to i64 ; 7 uses
  br label %.outer432.i

.outer432.i:                                      ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next385.i, %.thread.i ], [ 0, %.lr.ph.i ]
  %i.bb = phi i1 [ false, %.thread.i ], [ true, %.lr.ph.i ]
  %.0211269.ph.i = phi i32 [ %.0211269.i, %.thread.i ], [ 0, %.lr.ph.i ]
  %.0217268.ph.i = phi i32 [ %i.ch, %.thread.i ], [ 0, %.lr.ph.i ]
  %.0226266.ph.i = phi double [ %i.cf, %.thread.i ], [ 0.000000e+00, %.lr.ph.i ]
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.outer432.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ %indvars.iv.ph.i, %.outer432.i ] ; 9 uses
  %.0211269.i = phi i32 [ %.1212.i, %bb.l ], [ %.0211269.ph.i, %.outer432.i ] ; 6 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !26
  %.not247.i = icmp eq i32 %i.bd, 0
  br i1 %.not247.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.x, align 8, !tbaa !102
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !21 ; 4 uses
  %i.bh = fcmp oeq double %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %i.bl = sitofp i32 %i.bk to double
  %i.bm = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.i
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !21
  %i.bp = fmul double %i.bo, %i.bl
  %i.bq = fcmp ugt double %i.bp, 0.000000e+00
  %spec.select.i = select i1 %i.bq, i32 %.0211269.i, i32 1
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !21 ; 3 uses
  %i.bu = bitcast double %i.bt to i64
  %i.bv = bitcast double %i.bg to i64
  %.unshifted249.i = xor i64 %i.bu, %i.bv
  %i.bw = icmp sgt i64 %.unshifted249.i, -1
  br i1 %i.bw, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !26
  %i.ca = sitofp i32 %i.bz to double
  %i.cb = fmul double %i.bt, %i.ca
  %i.cc = fcmp ugt double %i.cb, 0.000000e+00
  br i1 %i.cc, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cd = fsub double %i.bg, %i.bt
  %i.ce = fdiv double %i.bg, %i.cd
  %i.cf = tail call double @llvm.fabs.f64(double %i.ce) ; 2 uses
  %i.cg = fcmp ogt double %i.cf, %.0226266.ph.i
  br i1 %i.cg, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %.1212.i = phi i32 [ %.0211269.i, %bb.f ], [ %spec.select.i, %bb.h ], [ %.0211269.i, %bb.i ], [ %.0211269.i, %bb.j ], [ %.0211269.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.f

.thread.i:                                        ; preds = %bb.k
  %i.ch = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %indvars.iv.next385.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not386.i = icmp eq i64 %indvars.iv.next385.i, %wide.trip.count.i
  br i1 %exitcond.not386.i, label %.preheader253.i.a, label %.outer432.i

._crit_edge.i:                                    ; preds = %bb.l
  %.not55 = icmp eq i32 %.1212.i, 0
  br i1 %i.bb, label %bb.m, label %.preheader253.i.a

.preheader253.i.a:                                ; preds = %.thread.i, %._crit_edge.i
  %.1218387394.i = phi i32 [ %.0217268.ph.i, %._crit_edge.i ], [ %i.ch, %.thread.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 5 uses
  %i.cj = load double, ptr %i.m, align 8, !tbaa !172 ; 3 uses
  %i.ck = load double, ptr %i.ci, align 8, !tbaa !126 ; 2 uses
  %i.cl = fsub double %i.cj, %i.ck                ; 2 uses
  %i.cm = tail call double @llvm.fabs.f64(double %i.cl) ; 2 uses
  %i.cn = fcmp ugt double %i.cm, %i.ap
  br i1 %i.cn, label %.lr.ph298.i, label %.loopexit251.i..lr.ph309.i_crit_edge.critedge

.lr.ph298.i:                                      ; preds = %.preheader253.i.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 5 uses
  br label %bb.s

bb.m:                                             ; preds = %._crit_edge.i
  %i.cp = load double, ptr %i.m, align 8, !tbaa !172
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store double %i.cp, ptr %i.cq, align 8, !tbaa !173
  %i.cr = load ptr, ptr %i.x, align 8, !tbaa !102 ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !103 ; 7 uses
  %min.iters.check212 = icmp ult i32 %i.as, 8
  %i.cu = ptrtoaddr ptr %i.ct to i64
  %i.cv = ptrtoaddr ptr %i.cr to i64
  %i.cw = sub i64 %i.cv, %i.cu
  %diff.check210 = icmp ugt i64 %i.cw, -32
  %or.cond = select i1 %min.iters.check212, i1 true, i1 %diff.check210
  br i1 %or.cond, label %scalar.ph211.preheader, label %vector.ph213

vector.ph213:                                     ; preds = %bb.m
  %n.vec214 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next219, %vector.body215 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index216 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load217 = load <2 x double>, ptr %i.cx, align 8, !tbaa !21
  %wide.load218 = load <2 x double>, ptr %i.cy, align 8, !tbaa !21
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index216 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <2 x double> %wide.load217, ptr %i.cz, align 8, !tbaa !21
  store <2 x double> %wide.load218, ptr %i.da, align 8, !tbaa !21
  %index.next219 = add nuw i64 %index216, 4       ; 2 uses
  %i.db = icmp eq i64 %index.next219, %n.vec214
  br i1 %i.db, label %middle.block220, label %vector.body215, !llvm.loop !174

middle.block220:                                  ; preds = %vector.body215
  %cmp.n221 = icmp eq i64 %n.vec214, %wide.trip.count.i
  br i1 %cmp.n221, label %._crit_edge313.i, label %scalar.ph211.preheader

scalar.ph211.preheader:                           ; preds = %bb.m, %middle.block220
  %indvars.iv347.i.ph = phi i64 [ 0, %bb.m ], [ %n.vec214, %middle.block220 ] ; 3 uses
  %xtraiter280 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol

scalar.ph211.prol:                                ; preds = %scalar.ph211.preheader, %scalar.ph211.prol
  %indvars.iv347.i.prol = phi i64 [ %indvars.iv.next348.i.prol, %scalar.ph211.prol ], [ %indvars.iv347.i.ph, %scalar.ph211.preheader ] ; 3 uses
  %prol.iter282 = phi i64 [ %prol.iter282.next, %scalar.ph211.prol ], [ 0, %scalar.ph211.preheader ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv347.i.prol
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv347.i.prol
  store double %i.dd, ptr %i.de, align 8, !tbaa !21
  %indvars.iv.next348.i.prol = add nuw nsw i64 %indvars.iv347.i.prol, 1 ; 2 uses
  %prol.iter282.next = add i64 %prol.iter282, 1   ; 2 uses
  %prol.iter282.cmp.not = icmp eq i64 %prol.iter282.next, %xtraiter280
  br i1 %prol.iter282.cmp.not, label %scalar.ph211.prol.loopexit, label %scalar.ph211.prol, !llvm.loop !175

scalar.ph211.prol.loopexit:                       ; preds = %scalar.ph211.prol, %scalar.ph211.preheader
  %indvars.iv347.i.unr = phi i64 [ %indvars.iv347.i.ph, %scalar.ph211.preheader ], [ %indvars.iv.next348.i.prol, %scalar.ph211.prol ]
  %i.df = sub nsw i64 %indvars.iv347.i.ph, %wide.trip.count.i
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge313.i, label %scalar.ph211

scalar.ph211:                                     ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211
  %indvars.iv347.i = phi i64 [ %indvars.iv.next348.i.3, %scalar.ph211 ], [ %indvars.iv347.i.unr, %scalar.ph211.prol.loopexit ] ; 6 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv347.i
  %i.di = load double, ptr %i.dh, align 8, !tbaa !21
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv347.i
  store double %i.di, ptr %i.dj, align 8, !tbaa !21
  %indvars.iv.next348.i = add nuw nsw i64 %indvars.iv347.i, 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next348.i
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !21
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next348.i
  store double %i.dl, ptr %i.dm, align 8, !tbaa !21
  %indvars.iv.next348.i.1 = add nuw nsw i64 %indvars.iv347.i, 2 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next348.i.1
  %i.do = load double, ptr %i.dn, align 8, !tbaa !21
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next348.i.1
  store double %i.do, ptr %i.dp, align 8, !tbaa !21
  %indvars.iv.next348.i.2 = add nuw nsw i64 %indvars.iv347.i, 3 ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next348.i.2
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !21
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next348.i.2
  store double %i.dr, ptr %i.ds, align 8, !tbaa !21
  %indvars.iv.next348.i.3 = add nuw nsw i64 %indvars.iv347.i, 4 ; 2 uses
  %exitcond351.not.i.3 = icmp eq i64 %indvars.iv.next348.i.3, %wide.trip.count.i
  br i1 %exitcond351.not.i.3, label %._crit_edge313.i, label %scalar.ph211, !llvm.loop !176

._crit_edge313.i:                                 ; preds = %scalar.ph211.prol.loopexit, %scalar.ph211, %middle.block220
  br i1 %.not55, label %IDARootfind.exit, label %.lr.ph315.i

.lr.ph315.i:                                      ; preds = %._crit_edge313.i
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !104
  br label %bb.n

bb.n:                                             ; preds = %bb.r, %.lr.ph315.i
  %indvars.iv352.i = phi i64 [ 0, %.lr.ph315.i ], [ %indvars.iv.next353.i, %bb.r ] ; 6 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv352.i ; 2 uses
  store i32 0, ptr %i.dv, align 4, !tbaa !26
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv352.i
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !26
  %.not238.i = icmp eq i32 %i.dx, 0
  br i1 %.not238.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv352.i
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !21
  %i.ea = fcmp oeq double %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv352.i
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !26
  %i.ee = sitofp i32 %i.ed to double
  %i.ef = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv352.i
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !21 ; 2 uses
  %i.ei = fmul double %i.eh, %i.ee
  %i.ej = fcmp ugt double %i.ei, 0.000000e+00
  br i1 %i.ej, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ek = fcmp ogt double %i.eh, 0.000000e+00
  %i.el = select i1 %i.ek, i32 -1, i32 1
  store i32 %i.el, ptr %i.dv, align 4, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next353.i = add nuw nsw i64 %indvars.iv352.i, 1 ; 2 uses
  %i.em = load i32, ptr %i.ar, align 8, !tbaa !84 ; 2 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next353.i, %i.en
  br i1 %i.eo, label %bb.n, label %IDARootfind.exit

bb.s:                                             ; preds = %.backedge.i, %.lr.ph298.i
  %i.ep = phi double [ %i.ap, %.lr.ph298.i ], [ %i.iz, %.backedge.i ] ; 3 uses
  %i.eq = phi double [ %i.cm, %.lr.ph298.i ], [ %.pre-phi360.i, %.backedge.i ] ; 2 uses
  %i.er = phi double [ %i.cl, %.lr.ph298.i ], [ %.pre-phi.i, %.backedge.i ] ; 3 uses
  %i.es = phi double [ %i.ck, %.lr.ph298.i ], [ %i.ja, %.backedge.i ] ; 2 uses
  %i.et = phi double [ %i.cj, %.lr.ph298.i ], [ %i.jb, %.backedge.i ] ; 3 uses
  %.0215297.i = phi i32 [ -1, %.lr.ph298.i ], [ %.0216296.i, %.backedge.i ]
  %.0216296.i = phi i32 [ 0, %.lr.ph298.i ], [ %.0216.be.i, %.backedge.i ] ; 2 uses
  %.v295.i = phi double [ 5.000000e-01, %.lr.ph298.i ], [ %.v.be.i, %.backedge.i ]
  %.2219294.i = phi i32 [ %.1218387394.i, %.lr.ph298.i ], [ %.3220.lcssa404.i, %.backedge.i ] ; 3 uses
  %.0232293.i = phi double [ 1.000000e+00, %.lr.ph298.i ], [ %.1233.i, %.backedge.i ]
  %i.eu = icmp eq i32 %.0215297.i, %.0216296.i
  %i.ev = fmul double %.v295.i, %.0232293.i
  %.1233.i = select i1 %i.eu, double %i.ev, double 1.000000e+00 ; 2 uses
  %i.ew = load ptr, ptr %i.x, align 8, !tbaa !102
  %i.ex = sext i32 %.2219294.i to i64             ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ex
  %i.ez = load double, ptr %i.ey, align 8, !tbaa !21 ; 2 uses
  %i.fa = fmul double %i.er, %i.ez
  %i.fb = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.ex
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !21
  %i.fe = fneg double %.1233.i
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fd, double %i.ez)
  %i.fg = fdiv double %i.fa, %i.ff
  %i.fh = fsub double %i.et, %i.fg                ; 2 uses
  %i.fi = fsub double %i.fh, %i.es
  %i.fj = tail call double @llvm.fabs.f64(double %i.fi)
  %i.fk = fmul double %i.ep, 5.000000e-01         ; 2 uses
  %i.fl = fcmp olt double %i.fj, %i.fk
  br i1 %i.fl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.fm = fdiv double %i.eq, %i.ep                ; 2 uses
  %i.fn = fcmp ogt double %i.fm, 5.000000e+00
  %i.fo = fdiv double 5.000000e-01, %i.fm
  %i.fp = select i1 %i.fn, double 1.000000e-01, double %i.fo
  %i.fq = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.er, double %i.es)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0230.i = phi double [ %i.fq, %bb.t ], [ %i.fh, %bb.s ] ; 2 uses
  %i.fr = fsub double %i.et, %.0230.i
  %i.fs = tail call double @llvm.fabs.f64(double %i.fr)
  %i.ft = fcmp olt double %i.fs, %i.fk
  br i1 %i.ft, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fu = fdiv double %i.eq, %i.ep                ; 2 uses
  %i.fv = fcmp ogt double %i.fu, 5.000000e+00
  %.neg.i = fdiv double -5.000000e-01, %i.fu
  %i.fw = select i1 %i.fv, double -1.000000e-01, double %.neg.i
  %i.fx = tail call double @llvm.fmuladd.f64(double %i.fw, double %i.er, double %i.et)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.1231.i = phi double [ %i.fx, %bb.v ], [ %.0230.i, %bb.u ] ; 7 uses
  %i.fy = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.fz = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.ga = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %.1231.i, ptr noundef %i.fy, ptr noundef %i.fz) ; 0 uses
  %i.gb = load ptr, ptr %i.s, align 8, !tbaa !83
  %i.gc = load ptr, ptr %i.n, align 8, !tbaa !111
  %i.gd = load ptr, ptr %i.p, align 8, !tbaa !112
  %i.ge = load ptr, ptr %i.co, align 8, !tbaa !103
  %i.gf = load ptr, ptr %i.z, align 8, !tbaa !169
  %i.gg = tail call i32 %i.gb(double noundef %.1231.i, ptr noundef %i.gc, ptr noundef %i.gd, ptr noundef %i.ge, ptr noundef %i.gf) #13, !inline_history !177
  %i.gh = load i64, ptr %i.ac, align 8, !tbaa !93
  %i.gi = add nsw i64 %i.gh, 1
  store i64 %i.gi, ptr %i.ac, align 8, !tbaa !93
  %.not239.i = icmp eq i32 %i.gg, 0
  br i1 %.not239.i, label %.preheader252.i, label %IDARootfind.exit.thread

.preheader252.i:                                  ; preds = %bb.w
  %i.gj = load i32, ptr %i.ar, align 8, !tbaa !84 ; 6 uses
  %i.gk = icmp sgt i32 %i.gj, 0
  br i1 %i.gk, label %.lr.ph279.i, label %.thread426.i

.thread426.i:                                     ; preds = %.preheader252.i
  store double %.1231.i, ptr %i.ci, align 8, !tbaa !126
  br label %._crit_edge292.i

.lr.ph279.i:                                      ; preds = %.preheader252.i
  %i.gl = load ptr, ptr %i.ax, align 8, !tbaa !106 ; 2 uses
  %wide.trip.count326.i = zext nneg i32 %i.gj to i64 ; 17 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread407.i, %.lr.ph279.i
  %indvars.iv323.ph.i = phi i64 [ %indvars.iv.next324412.i, %.thread407.i ], [ 0, %.lr.ph279.i ]
  %i.gm = phi i1 [ false, %.thread407.i ], [ true, %.lr.ph279.i ]
  %.2213277.ph.i = phi i32 [ %.2213277.i, %.thread407.i ], [ 0, %.lr.ph279.i ]
  %.3220276.ph.i = phi i32 [ %i.hs, %.thread407.i ], [ %.2219294.i, %.lr.ph279.i ] ; 2 uses
  %.2228274.ph.i = phi double [ %i.hq, %.thread407.i ], [ 0.000000e+00, %.lr.ph279.i ]
  br label %bb.x

bb.x:                                             ; preds = %bb.ad, %.outer.i
  %indvars.iv323.i = phi i64 [ %indvars.iv.next324.i, %bb.ad ], [ %indvars.iv323.ph.i, %.outer.i ] ; 9 uses
  %.2213277.i = phi i32 [ %.3214.i, %bb.ad ], [ %.2213277.ph.i, %.outer.i ] ; 6 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv323.i
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !26
  %.not242.i = icmp eq i32 %i.go, 0
  br i1 %.not242.i, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gp = load ptr, ptr %i.co, align 8, !tbaa !103 ; 2 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv323.i
  %i.gr = load double, ptr %i.gq, align 8, !tbaa !21 ; 4 uses
  %i.gs = fcmp oeq double %i.gr, 0.000000e+00
  br i1 %i.gs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gt = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv323.i
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !26
  %i.gw = sitofp i32 %i.gv to double
  %i.gx = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv323.i
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !21
  %i.ha = fmul double %i.gz, %i.gw
  %i.hb = fcmp ugt double %i.ha, 0.000000e+00
  %spec.select250.i = select i1 %i.hb, i32 %.2213277.i, i32 1
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.hc = load ptr, ptr %i.az, align 8, !tbaa !101
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv323.i
  %i.he = load double, ptr %i.hd, align 8, !tbaa !21 ; 3 uses
  %i.hf = bitcast double %i.he to i64
  %i.hg = bitcast double %i.gr to i64
  %.unshifted.i = xor i64 %i.hf, %i.hg
  %i.hh = icmp sgt i64 %.unshifted.i, -1
  br i1 %i.hh, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hi = load ptr, ptr %i.ba, align 8, !tbaa !105
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %indvars.iv323.i
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !26
  %i.hl = sitofp i32 %i.hk to double
  %i.hm = fmul double %i.he, %i.hl
  %i.hn = fcmp ugt double %i.hm, 0.000000e+00
  br i1 %i.hn, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ho = fsub double %i.gr, %i.he
  %i.hp = fdiv double %i.gr, %i.ho
  %i.hq = tail call double @llvm.fabs.f64(double %i.hp) ; 2 uses
  %i.hr = fcmp ogt double %i.hq, %.2228274.ph.i
  br i1 %i.hr, label %.thread407.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x
  %.3214.i = phi i32 [ %.2213277.i, %bb.x ], [ %spec.select250.i, %bb.z ], [ %.2213277.i, %bb.aa ], [ %.2213277.i, %bb.ab ], [ %.2213277.i, %bb.ac ] ; 2 uses
  %indvars.iv.next324.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %exitcond327.not.i = icmp eq i64 %indvars.iv.next324.i, %wide.trip.count326.i
  br i1 %exitcond327.not.i, label %._crit_edge280.i, label %bb.x

.thread407.i:                                     ; preds = %bb.ac
  %i.hs = trunc nuw nsw i64 %indvars.iv323.i to i32 ; 2 uses
  %indvars.iv.next324412.i = add nuw nsw i64 %indvars.iv323.i, 1 ; 2 uses
  %exitcond327.not413.i = icmp eq i64 %indvars.iv.next324412.i, %wide.trip.count326.i
  br i1 %exitcond327.not413.i, label %._crit_edge280.thread417.i, label %.outer.i

._crit_edge280.i:                                 ; preds = %bb.ad
  br i1 %i.gm, label %bb.ae, label %._crit_edge280.i.._crit_edge280.thread417.i_crit_edge

._crit_edge280.i.._crit_edge280.thread417.i_crit_edge: ; preds = %._crit_edge280.i
  %.pre105 = load ptr, ptr %i.co, align 8, !tbaa !103
  br label %._crit_edge280.thread417.i

._crit_edge280.thread417.i:                       ; preds = %.thread407.i, %._crit_edge280.i.._crit_edge280.thread417.i_crit_edge
  %i.ht = phi ptr [ %.pre105, %._crit_edge280.i.._crit_edge280.thread417.i_crit_edge ], [ %i.gp, %.thread407.i ] ; 7 uses
  %.4414421.i = phi i32 [ %.3220276.ph.i, %._crit_edge280.i.._crit_edge280.thread417.i_crit_edge ], [ %i.hs, %.thread407.i ]
  store double %.1231.i, ptr %i.m, align 8, !tbaa !172
  %i.hu = load ptr, ptr %i.x, align 8, !tbaa !102 ; 7 uses
  %min.iters.check184 = icmp ult i32 %i.gj, 4
  %i.hv = ptrtoaddr ptr %i.hu to i64
  %i.hw = ptrtoaddr ptr %i.ht to i64
  %i.hx = sub i64 %i.hw, %i.hv
  %diff.check182 = icmp ugt i64 %i.hx, -32
  %or.cond241 = select i1 %min.iters.check184, i1 true, i1 %diff.check182
  br i1 %or.cond241, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %._crit_edge280.thread417.i
  %n.vec186 = and i64 %wide.trip.count326.i, 2147483644 ; 3 uses
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph185
  %index188 = phi i64 [ 0, %vector.ph185 ], [ %index.next191, %vector.body187 ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %index188 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %wide.load189 = load <2 x double>, ptr %i.hy, align 8, !tbaa !21
  %wide.load190 = load <2 x double>, ptr %i.hz, align 8, !tbaa !21
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %index188 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store <2 x double> %wide.load189, ptr %i.ia, align 8, !tbaa !21
  store <2 x double> %wide.load190, ptr %i.ib, align 8, !tbaa !21
  %index.next191 = add nuw i64 %index188, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next191, %n.vec186
  br i1 %i.ic, label %middle.block192, label %vector.body187, !llvm.loop !178

middle.block192:                                  ; preds = %vector.body187
  %cmp.n193 = icmp eq i64 %n.vec186, %wide.trip.count326.i
  br i1 %cmp.n193, label %._crit_edge288.loopexit.i, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %._crit_edge280.thread417.i, %middle.block192
  %indvars.iv328.i.ph = phi i64 [ 0, %._crit_edge280.thread417.i ], [ %n.vec186, %middle.block192 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count326.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol

scalar.ph183.prol:                                ; preds = %scalar.ph183.preheader, %scalar.ph183.prol
  %indvars.iv328.i.prol = phi i64 [ %indvars.iv.next329.i.prol, %scalar.ph183.prol ], [ %indvars.iv328.i.ph, %scalar.ph183.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph183.prol ], [ 0, %scalar.ph183.preheader ]
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv328.i.prol
  %i.ie = load double, ptr %i.id, align 8, !tbaa !21
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv328.i.prol
  store double %i.ie, ptr %i.if, align 8, !tbaa !21
  %indvars.iv.next329.i.prol = add nuw nsw i64 %indvars.iv328.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph183.prol.loopexit, label %scalar.ph183.prol, !llvm.loop !179

scalar.ph183.prol.loopexit:                       ; preds = %scalar.ph183.prol, %scalar.ph183.preheader
  %indvars.iv328.i.unr = phi i64 [ %indvars.iv328.i.ph, %scalar.ph183.preheader ], [ %indvars.iv.next329.i.prol, %scalar.ph183.prol ]
  %i.ig = sub nsw i64 %indvars.iv328.i.ph, %wide.trip.count326.i
  %i.ih = icmp ugt i64 %i.ig, -4
  br i1 %i.ih, label %._crit_edge288.loopexit.i, label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183
  %indvars.iv328.i = phi i64 [ %indvars.iv.next329.i.3, %scalar.ph183 ], [ %indvars.iv328.i.unr, %scalar.ph183.prol.loopexit ] ; 6 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv328.i
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !21
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv328.i
  store double %i.ij, ptr %i.ik, align 8, !tbaa !21
  %indvars.iv.next329.i = add nuw nsw i64 %indvars.iv328.i, 1 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next329.i
  %i.im = load double, ptr %i.il, align 8, !tbaa !21
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next329.i
  store double %i.im, ptr %i.in, align 8, !tbaa !21
  %indvars.iv.next329.i.1 = add nuw nsw i64 %indvars.iv328.i, 2 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next329.i.1
  %i.ip = load double, ptr %i.io, align 8, !tbaa !21
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next329.i.1
  store double %i.ip, ptr %i.iq, align 8, !tbaa !21
  %indvars.iv.next329.i.2 = add nuw nsw i64 %indvars.iv328.i, 3 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %indvars.iv.next329.i.2
  %i.is = load double, ptr %i.ir, align 8, !tbaa !21
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %indvars.iv.next329.i.2
  store double %i.is, ptr %i.it, align 8, !tbaa !21
  %indvars.iv.next329.i.3 = add nuw nsw i64 %indvars.iv328.i, 4 ; 2 uses
  %exitcond332.not.i.3 = icmp eq i64 %indvars.iv.next329.i.3, %wide.trip.count326.i
  br i1 %exitcond332.not.i.3, label %._crit_edge288.loopexit.i, label %scalar.ph183, !llvm.loop !180

._crit_edge288.loopexit.i:                        ; preds = %scalar.ph183.prol.loopexit, %scalar.ph183, %middle.block192
  %.pre.i = load double, ptr %i.m, align 8, !tbaa !172 ; 3 uses
  %i.iu = load double, ptr %i.ci, align 8, !tbaa !126 ; 2 uses
  %i.iv = fsub double %.pre.i, %i.iu              ; 2 uses
  %i.iw = tail call double @llvm.fabs.f64(double %i.iv) ; 2 uses
  %i.ix = load double, ptr %i.aq, align 8, !tbaa !171 ; 2 uses
  %i.iy = fcmp ugt double %i.iw, %i.ix
  br i1 %i.iy, label %.backedge.i, label %.loopexit251.i.loopexit

.backedge.i:                                      ; preds = %._crit_edge292.i, %._crit_edge288.loopexit.i
  %.3220.lcssa404.i = phi i32 [ %.4414421.i, %._crit_edge288.loopexit.i ], [ %.3220.lcssa405425428.i, %._crit_edge292.i ]
  %.pre-phi360.i = phi double [ %i.iw, %._crit_edge288.loopexit.i ], [ %i.lj, %._crit_edge292.i ] ; 2 uses
  %.pre-phi.i = phi double [ %i.iv, %._crit_edge288.loopexit.i ], [ %i.li, %._crit_edge292.i ]
  %i.iz = phi double [ %i.ix, %._crit_edge288.loopexit.i ], [ %i.lk, %._crit_edge292.i ] ; 2 uses
  %i.ja = phi double [ %i.iu, %._crit_edge288.loopexit.i ], [ %i.lg, %._crit_edge292.i ]
  %i.jb = phi double [ %.pre.i, %._crit_edge288.loopexit.i ], [ %i.lh, %._crit_edge292.i ] ; 2 uses
  %.v.be.i = phi double [ 5.000000e-01, %._crit_edge288.loopexit.i ], [ 2.000000e+00, %._crit_edge292.i ]
  %.0216.be.i = phi i32 [ 1, %._crit_edge288.loopexit.i ], [ 2, %._crit_edge292.i ]
  %i.jc = fcmp ugt double %.pre-phi360.i, %i.iz
  br i1 %i.jc, label %bb.s, label %.loopexit251.i.loopexit

bb.ae:                                            ; preds = %._crit_edge280.i
  %i.jd = icmp eq i32 %.3214.i, 0
  br i1 %i.jd, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double %.1231.i, ptr %i.m, align 8, !tbaa !172
  %i.je = load ptr, ptr %i.co, align 8, !tbaa !103 ; 8 uses
  %i.jf = load ptr, ptr %i.x, align 8, !tbaa !102 ; 8 uses
  %min.iters.check198 = icmp ult i32 %i.gj, 8
  %i.jg = ptrtoaddr ptr %i.jf to i64
  %i.jh = ptrtoaddr ptr %i.je to i64
  %i.ji = sub i64 %i.jh, %i.jg
  %diff.check196 = icmp ugt i64 %i.ji, -32
  %or.cond244 = select i1 %min.iters.check198, i1 true, i1 %diff.check196
  br i1 %or.cond244, label %scalar.ph197.preheader, label %vector.ph199

vector.ph199:                                     ; preds = %bb.af
  %n.vec200 = and i64 %wide.trip.count326.i, 2147483644 ; 3 uses
  br label %vector.body201

vector.body201:                                   ; preds = %vector.body201, %vector.ph199
  %index202 = phi i64 [ 0, %vector.ph199 ], [ %index.next205, %vector.body201 ] ; 3 uses
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %index202 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load203 = load <2 x double>, ptr %i.jj, align 8, !tbaa !21
  %wide.load204 = load <2 x double>, ptr %i.jk, align 8, !tbaa !21
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %index202 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <2 x double> %wide.load203, ptr %i.jl, align 8, !tbaa !21
  store <2 x double> %wide.load204, ptr %i.jm, align 8, !tbaa !21
  %index.next205 = add nuw i64 %index202, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next205, %n.vec200
  br i1 %i.jn, label %middle.block206, label %vector.body201, !llvm.loop !181

middle.block206:                                  ; preds = %vector.body201
  %cmp.n207 = icmp eq i64 %n.vec200, %wide.trip.count326.i
  br i1 %cmp.n207, label %.loopexit251.thread.i, label %scalar.ph197.preheader

scalar.ph197.preheader:                           ; preds = %bb.af, %middle.block206
  %indvars.iv338.i.ph = phi i64 [ 0, %bb.af ], [ %n.vec200, %middle.block206 ] ; 3 uses
  %xtraiter277 = and i64 %wide.trip.count326.i, 3 ; 2 uses
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol

scalar.ph197.prol:                                ; preds = %scalar.ph197.preheader, %scalar.ph197.prol
  %indvars.iv338.i.prol = phi i64 [ %indvars.iv.next339.i.prol, %scalar.ph197.prol ], [ %indvars.iv338.i.ph, %scalar.ph197.preheader ] ; 3 uses
  %prol.iter279 = phi i64 [ %prol.iter279.next, %scalar.ph197.prol ], [ 0, %scalar.ph197.preheader ]
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv338.i.prol
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !21
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv338.i.prol
  store double %i.jp, ptr %i.jq, align 8, !tbaa !21
  %indvars.iv.next339.i.prol = add nuw nsw i64 %indvars.iv338.i.prol, 1 ; 2 uses
  %prol.iter279.next = add i64 %prol.iter279, 1   ; 2 uses
  %prol.iter279.cmp.not = icmp eq i64 %prol.iter279.next, %xtraiter277
  br i1 %prol.iter279.cmp.not, label %scalar.ph197.prol.loopexit, label %scalar.ph197.prol, !llvm.loop !182

scalar.ph197.prol.loopexit:                       ; preds = %scalar.ph197.prol, %scalar.ph197.preheader
  %indvars.iv338.i.unr = phi i64 [ %indvars.iv338.i.ph, %scalar.ph197.preheader ], [ %indvars.iv.next339.i.prol, %scalar.ph197.prol ]
  %i.jr = sub nsw i64 %indvars.iv338.i.ph, %wide.trip.count326.i
  %i.js = icmp ugt i64 %i.jr, -4
  br i1 %i.js, label %.loopexit251.thread.i, label %scalar.ph197

scalar.ph197:                                     ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197
  %indvars.iv338.i = phi i64 [ %indvars.iv.next339.i.3, %scalar.ph197 ], [ %indvars.iv338.i.unr, %scalar.ph197.prol.loopexit ] ; 6 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv338.i
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !21
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv338.i
  store double %i.ju, ptr %i.jv, align 8, !tbaa !21
  %indvars.iv.next339.i = add nuw nsw i64 %indvars.iv338.i, 1 ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.next339.i
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !21
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.next339.i
  store double %i.jx, ptr %i.jy, align 8, !tbaa !21
  %indvars.iv.next339.i.1 = add nuw nsw i64 %indvars.iv338.i, 2 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv.next339.i.1
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !21
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %indvars.iv.next339.i.1
  store double %i.ka, ptr %i.kb, align 8, !tbaa !21
end_hunk_0
