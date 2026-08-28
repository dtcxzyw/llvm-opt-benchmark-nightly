Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvode?download=true
inline.NumInlined: 48
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 42
begin_hunk_0_@cvRcheck2:bb.a
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.r, align 8, !tbaa !89
  %.not77 = icmp eq i32 %i.bz, 0
  br i1 %.not77, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.i
  %i.cc = load i32, ptr %i.u, align 8, !tbaa !108 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  br i1 %i.cd, label %.lr.ph90, label %.loopexit

.lr.ph90:                                         ; preds = %.preheader
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !114
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1384
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph90, %bb.p
  %i.ch = phi i32 [ %i.cc, %.lr.ph90 ], [ %i.cu, %bb.p ] ; 3 uses
  %indvars.iv97 = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next98, %bb.p ] ; 5 uses
  %.289 = phi i32 [ 0, %.lr.ph90 ], [ %.3, %bb.p ] ; 3 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv97
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !116
  %.not79 = icmp eq i32 %i.cj, 0
  br i1 %.not79, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !110
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv97
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !25 ; 2 uses
  %i.cn = fcmp oeq double %i.cm, 0.000000e+00
  %i.co = load ptr, ptr %i.cg, align 8, !tbaa !112
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv97 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !116
  %i.cr = icmp eq i32 %i.cq, 1                    ; 2 uses
  br i1 %i.cn, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  br i1 %i.cr, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.cp, align 4, !tbaa !116
  %.pre100 = load i32, ptr %i.u, align 8, !tbaa !108
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  br i1 %i.cr, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cs = load ptr, ptr %i.m, align 8, !tbaa !109
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv97
  store double %i.cm, ptr %i.ct, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.o, %bb.n, %bb.j
  %i.cu = phi i32 [ %.pre100, %bb.m ], [ %i.ch, %bb.o ], [ %i.ch, %bb.n ], [ %i.ch, %bb.j ] ; 2 uses
  %.3 = phi i32 [ 1, %bb.m ], [ %.289, %bb.o ], [ %.289, %bb.n ], [ %.289, %bb.j ] ; 2 uses
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next98, %i.cv
  br i1 %i.cw, label %bb.j, label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.p, %.preheader82, %.preheader81, %.preheader, %bb.i, %._crit_edge, %bb.b, %bb.a
  %.075 = phi i32 [ -12, %bb.b ], [ 0, %bb.a ], [ 0, %._crit_edge ], [ -12, %bb.i ], [ 0, %.preheader81 ], [ 0, %.preheader82 ], [ 0, %.preheader ], [ %.3, %bb.p ], [ 3, %bb.l ]
  ret i32 %.075
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 2) i32 @cvRcheck3(ptr noundef nonnull %0, double noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  switch i32 %2, label %bb.f [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load double, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1408
  store double %i.b, ptr %i.c, align 8, !tbaa !205
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.e, ptr noundef %i.g) #13
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.i = load double, ptr %i.h, align 8, !tbaa !78 ; 2 uses
  %i.j = fsub double %1, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.l = load double, ptr %i.k, align 8, !tbaa !134
  %i.m = fmul double %i.j, %i.l
  %i.n = fcmp ult double %i.m, 0.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 2 uses
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store double %i.i, ptr %i.o, align 8, !tbaa !205
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !121
  tail call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.q, ptr noundef %i.s) #13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store double %1, ptr %i.o, align 8, !tbaa !205
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !121
  %i.v = tail call i32 @CVodeGetDky(ptr noundef nonnull %0, double noundef %1, i32 noundef 0, ptr noundef %i.u) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !115
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1408 ; 9 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !205
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1432 ; 7 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !124
  %i.ag = tail call i32 %i.x(double noundef %i.z, ptr noundef %i.ab, ptr noundef %i.ad, ptr noundef %i.af) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1464 ; 4 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !89
  %i.aj = add nsw i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !89
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.g, label %cvRootfind.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load double, ptr %i.ak, align 8, !tbaa !78
  %i.am = tail call double @llvm.fabs.f64(double %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ao = load double, ptr %i.an, align 8, !tbaa !134
  %i.ap = tail call double @llvm.fabs.f64(double %i.ao)
  %i.aq = fadd double %i.am, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load double, ptr %i.ar, align 8, !tbaa !20
  %i.at = fmul double %i.as, %i.aq
  %i.au = fmul double %i.at, 1.000000e+02         ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1448 ; 3 uses
  store double %i.au, ptr %i.av, align 8, !tbaa !204
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 5 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !108 ; 4 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.thread.thread

._crit_edge.thread.thread:                        ; preds = %bb.g
  %i.az = load double, ptr %i.y, align 8, !tbaa !205 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store double %i.az, ptr %i.ba, align 8, !tbaa !206
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1400
  store double %i.az, ptr %i.bb, align 8, !tbaa !140
  br label %cvRootfind.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1472 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !114 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1424 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1392 ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.ax to i64 ; 7 uses
  br label %.outer430.i

.outer430.i:                                      ; preds = %.thread.i, %.lr.ph.i
  %indvars.iv.ph.i = phi i64 [ %indvars.iv.next383.i, %.thread.i ], [ 0, %.lr.ph.i ]
  %i.bg = phi i1 [ false, %.thread.i ], [ true, %.lr.ph.i ]
  %.0209267.ph.i = phi i32 [ %.0209267.i, %.thread.i ], [ 0, %.lr.ph.i ]
  %.0215266.ph.i = phi i32 [ %i.cm, %.thread.i ], [ 0, %.lr.ph.i ]
  %.0224264.ph.i = phi double [ %i.ck, %.thread.i ], [ 0.000000e+00, %.lr.ph.i ]
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %.outer430.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.n ], [ %indvars.iv.ph.i, %.outer430.i ] ; 9 uses
  %.0209267.i = phi i32 [ %.1210.i, %bb.n ], [ %.0209267.ph.i, %.outer430.i ] ; 6 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !116
  %.not245.i = icmp eq i32 %i.bi, 0
  br i1 %.not245.i, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv.i
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !25 ; 4 uses
  %i.bm = fcmp oeq double %i.bl, 0.000000e+00
  br i1 %i.bm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !116
  %i.bq = sitofp i32 %i.bp to double
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !25
  %i.bu = fmul double %i.bt, %i.bq
  %i.bv = fcmp ugt double %i.bu, 0.000000e+00
  %spec.select.i = select i1 %i.bv, i32 %.0209267.i, i32 1
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.bw = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %indvars.iv.i
  %i.by = load double, ptr %i.bx, align 8, !tbaa !25 ; 3 uses
  %i.bz = bitcast double %i.by to i64
  %i.ca = bitcast double %i.bl to i64
  %.unshifted247.i = xor i64 %i.bz, %i.ca
  %i.cb = icmp sgt i64 %.unshifted247.i, -1
  br i1 %i.cb, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !116
  %i.cf = sitofp i32 %i.ce to double
  %i.cg = fmul double %i.by, %i.cf
  %i.ch = fcmp ugt double %i.cg, 0.000000e+00
  br i1 %i.ch, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = fsub double %i.bl, %i.by
  %i.cj = fdiv double %i.bl, %i.ci
  %i.ck = tail call double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp ogt double %i.ck, %.0224264.ph.i
  br i1 %i.cl, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.1210.i = phi i32 [ %.0209267.i, %bb.h ], [ %spec.select.i, %bb.j ], [ %.0209267.i, %bb.k ], [ %.0209267.i, %bb.l ], [ %.0209267.i, %bb.m ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h

.thread.i:                                        ; preds = %bb.m
  %i.cm = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %indvars.iv.next383.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not384.i = icmp eq i64 %indvars.iv.next383.i, %wide.trip.count.i
  br i1 %exitcond.not384.i, label %.preheader251.i.a, label %.outer430.i

._crit_edge.i:                                    ; preds = %bb.n
  %.not57 = icmp eq i32 %.1210.i, 0
  br i1 %i.bg, label %bb.o, label %.preheader251.i.a

.preheader251.i.a:                                ; preds = %.thread.i, %._crit_edge.i
  %.1216385392.i = phi i32 [ %.0215266.ph.i, %._crit_edge.i ], [ %i.cm, %.thread.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1400 ; 5 uses
  %i.co = load double, ptr %i.y, align 8, !tbaa !205 ; 3 uses
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !140 ; 2 uses
  %i.cq = fsub double %i.co, %i.cp                ; 2 uses
  %i.cr = tail call double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.cs = fcmp ugt double %i.cr, %i.au
  br i1 %i.cs, label %.lr.ph296.i, label %.loopexit249.i..lr.ph307.i_crit_edge.critedge

.lr.ph296.i:                                      ; preds = %.preheader251.i.a
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 5 uses
  br label %bb.u

bb.o:                                             ; preds = %._crit_edge.i
  %i.cu = load double, ptr %i.y, align 8, !tbaa !205
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store double %i.cu, ptr %i.cv, align 8, !tbaa !206
  %i.cw = load ptr, ptr %i.ac, align 8, !tbaa !110 ; 8 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !111 ; 7 uses
  %min.iters.check211 = icmp ult i32 %i.ax, 8
  %i.cz = ptrtoaddr ptr %i.cy to i64
  %i.da = ptrtoaddr ptr %i.cw to i64
  %i.db = sub i64 %i.da, %i.cz
  %diff.check209 = icmp ugt i64 %i.db, -32
  %or.cond = select i1 %min.iters.check211, i1 true, i1 %diff.check209
  br i1 %or.cond, label %scalar.ph210.preheader, label %vector.ph212

vector.ph212:                                     ; preds = %bb.o
  %n.vec213 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body214

vector.body214:                                   ; preds = %vector.body214, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next218, %vector.body214 ] ; 3 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %index215 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load216 = load <2 x double>, ptr %i.dc, align 8, !tbaa !25
  %wide.load217 = load <2 x double>, ptr %i.dd, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %index215 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <2 x double> %wide.load216, ptr %i.de, align 8, !tbaa !25
  store <2 x double> %wide.load217, ptr %i.df, align 8, !tbaa !25
  %index.next218 = add nuw i64 %index215, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next218, %n.vec213
  br i1 %i.dg, label %middle.block219, label %vector.body214, !llvm.loop !207

middle.block219:                                  ; preds = %vector.body214
  %cmp.n220 = icmp eq i64 %n.vec213, %wide.trip.count.i
  br i1 %cmp.n220, label %._crit_edge311.i, label %scalar.ph210.preheader

scalar.ph210.preheader:                           ; preds = %bb.o, %middle.block219
  %indvars.iv345.i.ph = phi i64 [ 0, %bb.o ], [ %n.vec213, %middle.block219 ] ; 3 uses
  %xtraiter279 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %scalar.ph210.prol.loopexit, label %scalar.ph210.prol

scalar.ph210.prol:                                ; preds = %scalar.ph210.preheader, %scalar.ph210.prol
  %indvars.iv345.i.prol = phi i64 [ %indvars.iv.next346.i.prol, %scalar.ph210.prol ], [ %indvars.iv345.i.ph, %scalar.ph210.preheader ] ; 3 uses
  %prol.iter281 = phi i64 [ %prol.iter281.next, %scalar.ph210.prol ], [ 0, %scalar.ph210.preheader ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv345.i.prol
  %i.di = load double, ptr %i.dh, align 8, !tbaa !25
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv345.i.prol
  store double %i.di, ptr %i.dj, align 8, !tbaa !25
  %indvars.iv.next346.i.prol = add nuw nsw i64 %indvars.iv345.i.prol, 1 ; 2 uses
  %prol.iter281.next = add i64 %prol.iter281, 1   ; 2 uses
  %prol.iter281.cmp.not = icmp eq i64 %prol.iter281.next, %xtraiter279
  br i1 %prol.iter281.cmp.not, label %scalar.ph210.prol.loopexit, label %scalar.ph210.prol, !llvm.loop !208

scalar.ph210.prol.loopexit:                       ; preds = %scalar.ph210.prol, %scalar.ph210.preheader
  %indvars.iv345.i.unr = phi i64 [ %indvars.iv345.i.ph, %scalar.ph210.preheader ], [ %indvars.iv.next346.i.prol, %scalar.ph210.prol ]
  %i.dk = sub nsw i64 %indvars.iv345.i.ph, %wide.trip.count.i
  %i.dl = icmp ugt i64 %i.dk, -4
  br i1 %i.dl, label %._crit_edge311.i, label %scalar.ph210

scalar.ph210:                                     ; preds = %scalar.ph210.prol.loopexit, %scalar.ph210
  %indvars.iv345.i = phi i64 [ %indvars.iv.next346.i.3, %scalar.ph210 ], [ %indvars.iv345.i.unr, %scalar.ph210.prol.loopexit ] ; 6 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv345.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !25
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv345.i
  store double %i.dn, ptr %i.do, align 8, !tbaa !25
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 1 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next346.i
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !25
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next346.i
  store double %i.dq, ptr %i.dr, align 8, !tbaa !25
  %indvars.iv.next346.i.1 = add nuw nsw i64 %indvars.iv345.i, 2 ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next346.i.1
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next346.i.1
  store double %i.dt, ptr %i.du, align 8, !tbaa !25
  %indvars.iv.next346.i.2 = add nuw nsw i64 %indvars.iv345.i, 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv.next346.i.2
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !25
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.next346.i.2
  store double %i.dw, ptr %i.dx, align 8, !tbaa !25
  %indvars.iv.next346.i.3 = add nuw nsw i64 %indvars.iv345.i, 4 ; 2 uses
  %exitcond349.not.i.3 = icmp eq i64 %indvars.iv.next346.i.3, %wide.trip.count.i
  br i1 %exitcond349.not.i.3, label %._crit_edge311.i, label %scalar.ph210, !llvm.loop !209

._crit_edge311.i:                                 ; preds = %scalar.ph210.prol.loopexit, %scalar.ph210, %middle.block219
  br i1 %.not57, label %cvRootfind.exit, label %.lr.ph313.i

.lr.ph313.i:                                      ; preds = %._crit_edge311.i
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !112
  br label %bb.p

bb.p:                                             ; preds = %bb.t, %.lr.ph313.i
  %indvars.iv350.i = phi i64 [ 0, %.lr.ph313.i ], [ %indvars.iv.next351.i, %bb.t ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv350.i ; 2 uses
  store i32 0, ptr %i.ea, align 4, !tbaa !116
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv350.i
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !116
  %.not236.i = icmp eq i32 %i.ec, 0
  br i1 %.not236.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv350.i
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !25
  %i.ef = fcmp oeq double %i.ee, 0.000000e+00
  br i1 %i.ef, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.eg = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv350.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !116
  %i.ej = sitofp i32 %i.ei to double
  %i.ek = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %indvars.iv350.i
  %i.em = load double, ptr %i.el, align 8, !tbaa !25 ; 2 uses
  %i.en = fmul double %i.em, %i.ej
  %i.eo = fcmp ugt double %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ep = fcmp ogt double %i.em, 0.000000e+00
  %i.eq = select i1 %i.ep, i32 -1, i32 1
  store i32 %i.eq, ptr %i.ea, align 4, !tbaa !116
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %indvars.iv.next351.i = add nuw nsw i64 %indvars.iv350.i, 1 ; 2 uses
  %i.er = load i32, ptr %i.aw, align 8, !tbaa !108 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next351.i, %i.es
  br i1 %i.et, label %bb.p, label %cvRootfind.exit

bb.u:                                             ; preds = %.backedge.i, %.lr.ph296.i
  %i.eu = phi double [ %i.au, %.lr.ph296.i ], [ %i.jc, %.backedge.i ] ; 3 uses
  %i.ev = phi double [ %i.cr, %.lr.ph296.i ], [ %.pre-phi358.i, %.backedge.i ] ; 2 uses
  %i.ew = phi double [ %i.cq, %.lr.ph296.i ], [ %.pre-phi.i, %.backedge.i ] ; 3 uses
  %i.ex = phi double [ %i.cp, %.lr.ph296.i ], [ %i.jd, %.backedge.i ] ; 2 uses
  %i.ey = phi double [ %i.co, %.lr.ph296.i ], [ %i.je, %.backedge.i ] ; 3 uses
  %.0213295.i = phi i32 [ -1, %.lr.ph296.i ], [ %.0214294.i, %.backedge.i ]
  %.0214294.i = phi i32 [ 0, %.lr.ph296.i ], [ %.0214.be.i, %.backedge.i ] ; 2 uses
  %.v293.i = phi double [ 5.000000e-01, %.lr.ph296.i ], [ %.v.be.i, %.backedge.i ]
  %.2217292.i = phi i32 [ %.1216385392.i, %.lr.ph296.i ], [ %.3218.lcssa402.i, %.backedge.i ] ; 3 uses
  %.0230291.i = phi double [ 1.000000e+00, %.lr.ph296.i ], [ %.1231.i, %.backedge.i ]
  %i.ez = icmp eq i32 %.0213295.i, %.0214294.i
  %i.fa = fmul double %.v293.i, %.0230291.i
  %.1231.i = select i1 %i.ez, double %i.fa, double 1.000000e+00 ; 2 uses
  %i.fb = load ptr, ptr %i.ac, align 8, !tbaa !110
  %i.fc = sext i32 %.2217292.i to i64             ; 2 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %i.fc
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !25 ; 2 uses
  %i.ff = fmul double %i.ew, %i.fe
  %i.fg = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.fh = getelementptr inbounds [8 x i8], ptr %i.fg, i64 %i.fc
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !25
  %i.fj = fneg double %.1231.i
  %i.fk = tail call double @llvm.fmuladd.f64(double %i.fj, double %i.fi, double %i.fe)
  %i.fl = fdiv double %i.ff, %i.fk
  %i.fm = fsub double %i.ey, %i.fl                ; 2 uses
  %i.fn = fsub double %i.fm, %i.ex
  %i.fo = tail call double @llvm.fabs.f64(double %i.fn)
  %i.fp = fmul double %i.eu, 5.000000e-01         ; 2 uses
  %i.fq = fcmp olt double %i.fo, %i.fp
  br i1 %i.fq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fr = fdiv double %i.ev, %i.eu                ; 2 uses
  %i.fs = fcmp ogt double %i.fr, 5.000000e+00
  %i.ft = fdiv double 5.000000e-01, %i.fr
  %i.fu = select i1 %i.fs, double 1.000000e-01, double %i.ft
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fu, double %i.ew, double %i.ex)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0228.i = phi double [ %i.fv, %bb.v ], [ %i.fm, %bb.u ] ; 2 uses
  %i.fw = fsub double %i.ey, %.0228.i
  %i.fx = tail call double @llvm.fabs.f64(double %i.fw)
  %i.fy = fcmp olt double %i.fx, %i.fp
  br i1 %i.fy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.fz = fdiv double %i.ev, %i.eu                ; 2 uses
  %i.ga = fcmp ogt double %i.fz, 5.000000e+00
  %.neg.i = fdiv double -5.000000e-01, %i.fz
  %i.gb = select i1 %i.ga, double -1.000000e-01, double %.neg.i
  %i.gc = tail call double @llvm.fmuladd.f64(double %i.gb, double %i.ew, double %i.ey)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1229.i = phi double [ %i.gc, %bb.x ], [ %.0228.i, %bb.w ] ; 7 uses
  %i.gd = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.ge = tail call i32 @CVodeGetDky(ptr noundef nonnull %0, double noundef %.1229.i, i32 noundef 0, ptr noundef %i.gd) ; 0 uses
  %i.gf = load ptr, ptr %i.w, align 8, !tbaa !115
  %i.gg = load ptr, ptr %i.aa, align 8, !tbaa !121
  %i.gh = load ptr, ptr %i.ct, align 8, !tbaa !111
  %i.gi = load ptr, ptr %i.ae, align 8, !tbaa !124
  %i.gj = tail call i32 %i.gf(double noundef %.1229.i, ptr noundef %i.gg, ptr noundef %i.gh, ptr noundef %i.gi) #13, !inline_history !210
  %i.gk = load i64, ptr %i.ah, align 8, !tbaa !89
  %i.gl = add nsw i64 %i.gk, 1
  store i64 %i.gl, ptr %i.ah, align 8, !tbaa !89
  %.not237.i = icmp eq i32 %i.gj, 0
  br i1 %.not237.i, label %.preheader250.i, label %cvRootfind.exit.thread

.preheader250.i:                                  ; preds = %bb.y
  %i.gm = load i32, ptr %i.aw, align 8, !tbaa !108 ; 6 uses
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph277.i, label %.thread424.i

.thread424.i:                                     ; preds = %.preheader250.i
  store double %.1229.i, ptr %i.cn, align 8, !tbaa !140
  br label %._crit_edge290.i

.lr.ph277.i:                                      ; preds = %.preheader250.i
  %i.go = load ptr, ptr %i.bc, align 8, !tbaa !114 ; 2 uses
  %wide.trip.count324.i = zext nneg i32 %i.gm to i64 ; 17 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread405.i, %.lr.ph277.i
  %indvars.iv321.ph.i = phi i64 [ %indvars.iv.next322410.i, %.thread405.i ], [ 0, %.lr.ph277.i ]
  %i.gp = phi i1 [ false, %.thread405.i ], [ true, %.lr.ph277.i ]
  %.2211275.ph.i = phi i32 [ %.2211275.i, %.thread405.i ], [ 0, %.lr.ph277.i ]
  %.3218274.ph.i = phi i32 [ %i.hv, %.thread405.i ], [ %.2217292.i, %.lr.ph277.i ] ; 2 uses
  %.2226272.ph.i = phi double [ %i.ht, %.thread405.i ], [ 0.000000e+00, %.lr.ph277.i ]
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %.outer.i
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i, %bb.af ], [ %indvars.iv321.ph.i, %.outer.i ] ; 9 uses
  %.2211275.i = phi i32 [ %.3212.i, %bb.af ], [ %.2211275.ph.i, %.outer.i ] ; 6 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv321.i
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !116
  %.not240.i = icmp eq i32 %i.gr, 0
  br i1 %.not240.i, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gs = load ptr, ptr %i.ct, align 8, !tbaa !111 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %indvars.iv321.i
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !25 ; 4 uses
  %i.gv = fcmp oeq double %i.gu, 0.000000e+00
  br i1 %i.gv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gw = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv321.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !116
  %i.gz = sitofp i32 %i.gy to double
  %i.ha = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %indvars.iv321.i
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !25
  %i.hd = fmul double %i.hc, %i.gz
  %i.he = fcmp ugt double %i.hd, 0.000000e+00
  %spec.select248.i = select i1 %i.he, i32 %.2211275.i, i32 1
  br label %bb.af

bb.ac:                                            ; preds = %bb.aa
  %i.hf = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.hf, i64 %indvars.iv321.i
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !25 ; 3 uses
  %i.hi = bitcast double %i.hh to i64
  %i.hj = bitcast double %i.gu to i64
  %.unshifted.i = xor i64 %i.hi, %i.hj
  %i.hk = icmp sgt i64 %.unshifted.i, -1
  br i1 %i.hk, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hl = load ptr, ptr %i.bf, align 8, !tbaa !113
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %indvars.iv321.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !116
  %i.ho = sitofp i32 %i.hn to double
  %i.hp = fmul double %i.hh, %i.ho
  %i.hq = fcmp ugt double %i.hp, 0.000000e+00
  br i1 %i.hq, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hr = fsub double %i.gu, %i.hh
  %i.hs = fdiv double %i.gu, %i.hr
  %i.ht = tail call double @llvm.fabs.f64(double %i.hs) ; 2 uses
  %i.hu = fcmp ogt double %i.ht, %.2226272.ph.i
  br i1 %i.hu, label %.thread405.i, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.z
  %.3212.i = phi i32 [ %.2211275.i, %bb.z ], [ %spec.select248.i, %bb.ab ], [ %.2211275.i, %bb.ac ], [ %.2211275.i, %bb.ad ], [ %.2211275.i, %bb.ae ] ; 2 uses
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 2 uses
  %exitcond325.not.i = icmp eq i64 %indvars.iv.next322.i, %wide.trip.count324.i
  br i1 %exitcond325.not.i, label %._crit_edge278.i, label %bb.z

.thread405.i:                                     ; preds = %bb.ae
  %i.hv = trunc nuw nsw i64 %indvars.iv321.i to i32 ; 2 uses
  %indvars.iv.next322410.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 2 uses
  %exitcond325.not411.i = icmp eq i64 %indvars.iv.next322410.i, %wide.trip.count324.i
  br i1 %exitcond325.not411.i, label %._crit_edge278.thread415.i, label %.outer.i

._crit_edge278.i:                                 ; preds = %bb.af
  br i1 %i.gp, label %bb.ag, label %._crit_edge278.i.._crit_edge278.thread415.i_crit_edge

._crit_edge278.i.._crit_edge278.thread415.i_crit_edge: ; preds = %._crit_edge278.i
  %.pre = load ptr, ptr %i.ct, align 8, !tbaa !111
  br label %._crit_edge278.thread415.i

._crit_edge278.thread415.i:                       ; preds = %.thread405.i, %._crit_edge278.i.._crit_edge278.thread415.i_crit_edge
  %i.hw = phi ptr [ %.pre, %._crit_edge278.i.._crit_edge278.thread415.i_crit_edge ], [ %i.gs, %.thread405.i ] ; 7 uses
  %.4412419.i = phi i32 [ %.3218274.ph.i, %._crit_edge278.i.._crit_edge278.thread415.i_crit_edge ], [ %i.hv, %.thread405.i ]
  store double %.1229.i, ptr %i.y, align 8, !tbaa !205
  %i.hx = load ptr, ptr %i.ac, align 8, !tbaa !110 ; 7 uses
  %min.iters.check183 = icmp ult i32 %i.gm, 4
  %i.hy = ptrtoaddr ptr %i.hx to i64
  %i.hz = ptrtoaddr ptr %i.hw to i64
  %i.ia = sub i64 %i.hz, %i.hy
  %diff.check181 = icmp ugt i64 %i.ia, -32
  %or.cond240 = select i1 %min.iters.check183, i1 true, i1 %diff.check181
  br i1 %or.cond240, label %scalar.ph182.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %._crit_edge278.thread415.i
  %n.vec185 = and i64 %wide.trip.count324.i, 2147483644 ; 3 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph184
  %index187 = phi i64 [ 0, %vector.ph184 ], [ %index.next190, %vector.body186 ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %index187 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  %wide.load188 = load <2 x double>, ptr %i.ib, align 8, !tbaa !25
  %wide.load189 = load <2 x double>, ptr %i.ic, align 8, !tbaa !25
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %index187 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store <2 x double> %wide.load188, ptr %i.id, align 8, !tbaa !25
  store <2 x double> %wide.load189, ptr %i.ie, align 8, !tbaa !25
  %index.next190 = add nuw i64 %index187, 4       ; 2 uses
  %i.if = icmp eq i64 %index.next190, %n.vec185
  br i1 %i.if, label %middle.block191, label %vector.body186, !llvm.loop !211

middle.block191:                                  ; preds = %vector.body186
  %cmp.n192 = icmp eq i64 %n.vec185, %wide.trip.count324.i
  br i1 %cmp.n192, label %._crit_edge286.loopexit.i, label %scalar.ph182.preheader

scalar.ph182.preheader:                           ; preds = %._crit_edge278.thread415.i, %middle.block191
  %indvars.iv326.i.ph = phi i64 [ 0, %._crit_edge278.thread415.i ], [ %n.vec185, %middle.block191 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count324.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph182.prol.loopexit, label %scalar.ph182.prol

scalar.ph182.prol:                                ; preds = %scalar.ph182.preheader, %scalar.ph182.prol
  %indvars.iv326.i.prol = phi i64 [ %indvars.iv.next327.i.prol, %scalar.ph182.prol ], [ %indvars.iv326.i.ph, %scalar.ph182.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph182.prol ], [ 0, %scalar.ph182.preheader ]
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv326.i.prol
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !25
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv326.i.prol
  store double %i.ih, ptr %i.ii, align 8, !tbaa !25
  %indvars.iv.next327.i.prol = add nuw nsw i64 %indvars.iv326.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph182.prol.loopexit, label %scalar.ph182.prol, !llvm.loop !212

scalar.ph182.prol.loopexit:                       ; preds = %scalar.ph182.prol, %scalar.ph182.preheader
  %indvars.iv326.i.unr = phi i64 [ %indvars.iv326.i.ph, %scalar.ph182.preheader ], [ %indvars.iv.next327.i.prol, %scalar.ph182.prol ]
  %i.ij = sub nsw i64 %indvars.iv326.i.ph, %wide.trip.count324.i
  %i.ik = icmp ugt i64 %i.ij, -4
  br i1 %i.ik, label %._crit_edge286.loopexit.i, label %scalar.ph182

scalar.ph182:                                     ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182
  %indvars.iv326.i = phi i64 [ %indvars.iv.next327.i.3, %scalar.ph182 ], [ %indvars.iv326.i.unr, %scalar.ph182.prol.loopexit ] ; 6 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv326.i
  %i.im = load double, ptr %i.il, align 8, !tbaa !25
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv326.i
  store double %i.im, ptr %i.in, align 8, !tbaa !25
  %indvars.iv.next327.i = add nuw nsw i64 %indvars.iv326.i, 1 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next327.i
  %i.ip = load double, ptr %i.io, align 8, !tbaa !25
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.next327.i
  store double %i.ip, ptr %i.iq, align 8, !tbaa !25
  %indvars.iv.next327.i.1 = add nuw nsw i64 %indvars.iv326.i, 2 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next327.i.1
  %i.is = load double, ptr %i.ir, align 8, !tbaa !25
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.next327.i.1
  store double %i.is, ptr %i.it, align 8, !tbaa !25
  %indvars.iv.next327.i.2 = add nuw nsw i64 %indvars.iv326.i, 3 ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %indvars.iv.next327.i.2
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !25
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.next327.i.2
  store double %i.iv, ptr %i.iw, align 8, !tbaa !25
  %indvars.iv.next327.i.3 = add nuw nsw i64 %indvars.iv326.i, 4 ; 2 uses
  %exitcond330.not.i.3 = icmp eq i64 %indvars.iv.next327.i.3, %wide.trip.count324.i
  br i1 %exitcond330.not.i.3, label %._crit_edge286.loopexit.i, label %scalar.ph182, !llvm.loop !213

._crit_edge286.loopexit.i:                        ; preds = %scalar.ph182.prol.loopexit, %scalar.ph182, %middle.block191
  %.pre.i = load double, ptr %i.y, align 8, !tbaa !205 ; 3 uses
  %i.ix = load double, ptr %i.cn, align 8, !tbaa !140 ; 2 uses
  %i.iy = fsub double %.pre.i, %i.ix              ; 2 uses
  %i.iz = tail call double @llvm.fabs.f64(double %i.iy) ; 2 uses
  %i.ja = load double, ptr %i.av, align 8, !tbaa !204 ; 2 uses
  %i.jb = fcmp ugt double %i.iz, %i.ja
  br i1 %i.jb, label %.backedge.i, label %.loopexit249.i.loopexit

.backedge.i:                                      ; preds = %._crit_edge290.i, %._crit_edge286.loopexit.i
  %.3218.lcssa402.i = phi i32 [ %.4412419.i, %._crit_edge286.loopexit.i ], [ %.3218.lcssa403423426.i, %._crit_edge290.i ]
  %.pre-phi358.i = phi double [ %i.iz, %._crit_edge286.loopexit.i ], [ %i.lm, %._crit_edge290.i ] ; 2 uses
  %.pre-phi.i = phi double [ %i.iy, %._crit_edge286.loopexit.i ], [ %i.ll, %._crit_edge290.i ]
  %i.jc = phi double [ %i.ja, %._crit_edge286.loopexit.i ], [ %i.ln, %._crit_edge290.i ] ; 2 uses
  %i.jd = phi double [ %i.ix, %._crit_edge286.loopexit.i ], [ %i.lj, %._crit_edge290.i ]
  %i.je = phi double [ %.pre.i, %._crit_edge286.loopexit.i ], [ %i.lk, %._crit_edge290.i ] ; 2 uses
  %.v.be.i = phi double [ 5.000000e-01, %._crit_edge286.loopexit.i ], [ 2.000000e+00, %._crit_edge290.i ]
  %.0214.be.i = phi i32 [ 1, %._crit_edge286.loopexit.i ], [ 2, %._crit_edge290.i ]
  %i.jf = fcmp ugt double %.pre-phi358.i, %i.jc
  br i1 %i.jf, label %bb.u, label %.loopexit249.i.loopexit

bb.ag:                                            ; preds = %._crit_edge278.i
  %i.jg = icmp eq i32 %.3212.i, 0
  br i1 %i.jg, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store double %.1229.i, ptr %i.y, align 8, !tbaa !205
  %i.jh = load ptr, ptr %i.ct, align 8, !tbaa !111 ; 8 uses
  %i.ji = load ptr, ptr %i.ac, align 8, !tbaa !110 ; 8 uses
  %min.iters.check197 = icmp ult i32 %i.gm, 8
  %i.jj = ptrtoaddr ptr %i.ji to i64
  %i.jk = ptrtoaddr ptr %i.jh to i64
  %i.jl = sub i64 %i.jk, %i.jj
  %diff.check195 = icmp ugt i64 %i.jl, -32
  %or.cond243 = select i1 %min.iters.check197, i1 true, i1 %diff.check195
  br i1 %or.cond243, label %scalar.ph196.preheader, label %vector.ph198

vector.ph198:                                     ; preds = %bb.ah
  %n.vec199 = and i64 %wide.trip.count324.i, 2147483644 ; 3 uses
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph198
  %index201 = phi i64 [ 0, %vector.ph198 ], [ %index.next204, %vector.body200 ] ; 3 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %index201 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %wide.load202 = load <2 x double>, ptr %i.jm, align 8, !tbaa !25
  %wide.load203 = load <2 x double>, ptr %i.jn, align 8, !tbaa !25
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %index201 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store <2 x double> %wide.load202, ptr %i.jo, align 8, !tbaa !25
  store <2 x double> %wide.load203, ptr %i.jp, align 8, !tbaa !25
  %index.next204 = add nuw i64 %index201, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next204, %n.vec199
  br i1 %i.jq, label %middle.block205, label %vector.body200, !llvm.loop !214

middle.block205:                                  ; preds = %vector.body200
  %cmp.n206 = icmp eq i64 %n.vec199, %wide.trip.count324.i
  br i1 %cmp.n206, label %.loopexit249.thread.i, label %scalar.ph196.preheader

scalar.ph196.preheader:                           ; preds = %bb.ah, %middle.block205
  %indvars.iv336.i.ph = phi i64 [ 0, %bb.ah ], [ %n.vec199, %middle.block205 ] ; 3 uses
  %xtraiter276 = and i64 %wide.trip.count324.i, 3 ; 2 uses
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %scalar.ph196.prol.loopexit, label %scalar.ph196.prol

scalar.ph196.prol:                                ; preds = %scalar.ph196.preheader, %scalar.ph196.prol
  %indvars.iv336.i.prol = phi i64 [ %indvars.iv.next337.i.prol, %scalar.ph196.prol ], [ %indvars.iv336.i.ph, %scalar.ph196.preheader ] ; 3 uses
  %prol.iter278 = phi i64 [ %prol.iter278.next, %scalar.ph196.prol ], [ 0, %scalar.ph196.preheader ]
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv336.i.prol
  %i.js = load double, ptr %i.jr, align 8, !tbaa !25
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv336.i.prol
  store double %i.js, ptr %i.jt, align 8, !tbaa !25
  %indvars.iv.next337.i.prol = add nuw nsw i64 %indvars.iv336.i.prol, 1 ; 2 uses
  %prol.iter278.next = add i64 %prol.iter278, 1   ; 2 uses
  %prol.iter278.cmp.not = icmp eq i64 %prol.iter278.next, %xtraiter276
  br i1 %prol.iter278.cmp.not, label %scalar.ph196.prol.loopexit, label %scalar.ph196.prol, !llvm.loop !215

scalar.ph196.prol.loopexit:                       ; preds = %scalar.ph196.prol, %scalar.ph196.preheader
  %indvars.iv336.i.unr = phi i64 [ %indvars.iv336.i.ph, %scalar.ph196.preheader ], [ %indvars.iv.next337.i.prol, %scalar.ph196.prol ]
  %i.ju = sub nsw i64 %indvars.iv336.i.ph, %wide.trip.count324.i
  %i.jv = icmp ugt i64 %i.ju, -4
  br i1 %i.jv, label %.loopexit249.thread.i, label %scalar.ph196

scalar.ph196:                                     ; preds = %scalar.ph196.prol.loopexit, %scalar.ph196
  %indvars.iv336.i = phi i64 [ %indvars.iv.next337.i.3, %scalar.ph196 ], [ %indvars.iv336.i.unr, %scalar.ph196.prol.loopexit ] ; 6 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv336.i
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !25
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv336.i
  store double %i.jx, ptr %i.jy, align 8, !tbaa !25
  %indvars.iv.next337.i = add nuw nsw i64 %indvars.iv336.i, 1 ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.next337.i
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !25
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.next337.i
  store double %i.ka, ptr %i.kb, align 8, !tbaa !25
  %indvars.iv.next337.i.1 = add nuw nsw i64 %indvars.iv336.i, 2 ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %indvars.iv.next337.i.1
  %i.kd = load double, ptr %i.kc, align 8, !tbaa !25
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv.next337.i.1
  store double %i.kd, ptr %i.ke, align 8, !tbaa !25
end_hunk_0
