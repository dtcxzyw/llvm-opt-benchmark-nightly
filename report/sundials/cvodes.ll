Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/cvodes?download=true
inline.NumInlined: 74
inline.NumDeleted: 54
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 55
begin_hunk_0_@CVodeSensInit1:bb.a
  store i32 1, ptr %i.r, align 8, !tbaa !132
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.t = zext nneg i32 %1 to i64                  ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 2
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #14 ; 2 uses
  store ptr %i.v, ptr %i.s, align 8, !tbaa !153
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.x = shl nuw nsw i64 %i.t, 3                  ; 3 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.x) #14 ; 2 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !154
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.aa = tail call noalias ptr @malloc(i64 noundef %i.x) #14 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !155
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.x) #14 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !156
  %i.ad = icmp eq ptr %i.v, null
  %i.ae = icmp eq ptr %i.y, null
  %or.cond190 = or i1 %i.ad, %i.ae
  br i1 %or.cond190, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = icmp eq ptr %i.aa, null
  %i.ag = icmp eq ptr %i.ac, null
  %or.cond = or i1 %i.af, %i.ag
  br i1 %or.cond, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 1719, ptr noundef nonnull @__func__.CVodeSensInit1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.ah

bb.q:                                             ; preds = %bb.m
  store i32 0, ptr %i.r, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.q
  %i.ah = load ptr, ptr %4, align 8, !tbaa !52
  %i.ai = tail call fastcc i32 @cvSensAllocVectors(ptr noundef %0, ptr noundef %i.ah)
  %.not170 = icmp eq i32 %i.ai, 0
  br i1 %.not170, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !132
  %.not171 = icmp eq i32 %i.ak, 0
  br i1 %.not171, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !153
  tail call void @free(ptr noundef %i.am) #13
  store ptr null, ptr %i.al, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.ao) #13
  store ptr null, ptr %i.an, align 8, !tbaa !154
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.aq) #13
  store ptr null, ptr %i.ap, align 8, !tbaa !155
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.as) #13
  store ptr null, ptr %i.ar, align 8, !tbaa !156
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 1742, ptr noundef nonnull @__func__.CVodeSensInit1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.ah

bb.v:                                             ; preds = %bb.r
  %.not172 = icmp eq i32 %1, 1
  br i1 %.not172, label %.lr.ph, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = mul nuw nsw i32 %1, 13
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !74
  tail call void @free(ptr noundef %i.av) #13
  store ptr null, ptr %i.au, align 8, !tbaa !74
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2696 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !75
  tail call void @free(ptr noundef %i.ax) #13
  store ptr null, ptr %i.aw, align 8, !tbaa !75
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2704 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.az) #13
  %i.ba = zext nneg i32 %i.at to i64
  %i.bb = shl nuw nsw i64 %i.ba, 3                ; 3 uses
  %i.bc = tail call noalias ptr @malloc(i64 noundef %i.bb) #14 ; 2 uses
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !74
  %i.bd = tail call noalias ptr @malloc(i64 noundef %i.bb) #14 ; 2 uses
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !75
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bb) #14 ; 2 uses
  store ptr %i.be, ptr %i.ay, align 8, !tbaa !76
  %i.bf = icmp eq ptr %i.bc, null
  br i1 %i.bf, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = icmp eq ptr %i.bd, null
  %i.bh = icmp eq ptr %i.be, null
  %or.cond176 = or i1 %i.bg, %i.bh
  br i1 %or.cond176, label %bb.y, label %.lr.ph

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !132
  %.not175 = icmp eq i32 %i.bj, 0
  br i1 %.not175, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !153
  tail call void @free(ptr noundef %i.bl) #13
  store ptr null, ptr %i.bk, align 8, !tbaa !153
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !154
  tail call void @free(ptr noundef %i.bn) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !154
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1688 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !155
  tail call void @free(ptr noundef %i.bp) #13
  store ptr null, ptr %i.bo, align 8, !tbaa !155
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1712 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !156
  tail call void @free(ptr noundef %i.br) #13
  store ptr null, ptr %i.bq, align 8, !tbaa !156
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call fastcc void @cvSensFreeVectors(ptr noundef %0)
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 1776, ptr noundef nonnull @__func__.CVodeSensInit1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  br label %bb.ah

.lr.ph:                                           ; preds = %bb.v, %bb.x
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !74 ; 3 uses
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.bu, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.bv, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !245

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.bx, align 8, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !246

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !135
  %i.ca = tail call i32 @N_VScaleVectorArray(i32 noundef %1, ptr noundef nonnull %i.bt, ptr noundef nonnull %4, ptr noundef %i.bz) #13
  %.not173 = icmp eq i32 %i.ca, 0
  br i1 %.not173, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %._crit_edge
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1656
  store i64 0, ptr %i.cc, align 8, !tbaa !136
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 1736
  store i64 0, ptr %i.cd, align 8, !tbaa !137
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i64 0, ptr %i.ce, align 8, !tbaa !138
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1704
  store i64 0, ptr %i.cf, align 8, !tbaa !139
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 1760
  store i64 0, ptr %i.cg, align 8, !tbaa !140
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  br i1 %i.q, label %.lr.ph193, label %.lr.ph196

.lr.ph193:                                        ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !154
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !155
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 1712
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !156
  %5 = add nsw i32 %1, -1
  %i.cn = zext nneg i32 %5 to i64
  %i.co = shl nuw nsw i64 %i.cn, 3
  %6 = add nuw nsw i64 %i.co, 8                   ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i8 0, i64 %6, i1 false), !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i8 0, i64 %6, i1 false), !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cm, i8 0, i64 %6, i1 false), !tbaa !65
  br label %.lr.ph196

.lr.ph196:                                        ; preds = %bb.ab, %.lr.ph193
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !55 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !54 ; 2 uses
  %wide.trip.count210 = zext nneg i32 %1 to i64
  %min.iters.check233 = icmp ult i32 %1, 4
  br i1 %min.iters.check233, label %scalar.ph232.preheader, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph196
  %n.vec235 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body236

vector.body236:                                   ; preds = %vector.body236, %vector.ph234
  %index237 = phi i64 [ 0, %vector.ph234 ], [ %index.next238, %vector.body236 ] ; 3 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph234 ], [ %vec.ind.next, %vector.body236 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %index237 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store <2 x i32> %vec.ind, ptr %i.ct, align 4, !tbaa !56
  store <2 x i32> %step.add, ptr %i.cu, align 4, !tbaa !56
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index237 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.cv, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.cw, align 8, !tbaa !29
  %index.next238 = add nuw i64 %index237, 4       ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.cx = icmp eq i64 %index.next238, %n.vec235
  br i1 %i.cx, label %middle.block239, label %vector.body236, !llvm.loop !247

middle.block239:                                  ; preds = %vector.body236
  %cmp.n240 = icmp eq i64 %n.vec235, %wide.trip.count
  br i1 %cmp.n240, label %._crit_edge197, label %scalar.ph232.preheader

scalar.ph232.preheader:                           ; preds = %.lr.ph196, %middle.block239
  %indvars.iv206.ph = phi i64 [ 0, %.lr.ph196 ], [ %n.vec235, %middle.block239 ]
  br label %scalar.ph232

scalar.ph232:                                     ; preds = %scalar.ph232.preheader, %scalar.ph232
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %scalar.ph232 ], [ %indvars.iv206.ph, %scalar.ph232.preheader ] ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv206
  %i.cz = trunc nuw nsw i64 %indvars.iv206 to i32
  store i32 %i.cz, ptr %i.cy, align 4, !tbaa !56
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv206
  store double 1.000000e+00, ptr %i.da, align 8, !tbaa !29
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count210
  br i1 %exitcond211.not, label %._crit_edge197, label %scalar.ph232, !llvm.loop !248

._crit_edge197:                                   ; preds = %scalar.ph232, %middle.block239
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i32 1, ptr %i.db, align 4, !tbaa !141
  store i32 1, ptr %i.b, align 8, !tbaa !128
  switch i32 %2, label %.thread220 [
    i32 1, label %.thread
    i32 2, label %bb.ac
  ]

bb.ac:                                            ; preds = %._crit_edge197
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !68
  %i.de = load ptr, ptr %0, align 8, !tbaa !22
  %i.df = tail call ptr @SUNNonlinSol_NewtonSens(i32 noundef %1, ptr noundef %i.dd, ptr noundef %i.de) #13 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ad, label %.thread227.a

.thread220:                                       ; preds = %._crit_edge197
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !68
  %i.dj = load ptr, ptr %0, align 8, !tbaa !22
  %i.dk = tail call ptr @SUNNonlinSol_Newton(ptr noundef %i.di, ptr noundef %i.dj) #13 ; 3 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %bb.ad, label %bb.ae

.thread:                                          ; preds = %._crit_edge197
  %i.dm = add nuw nsw i32 %1, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !68
  %i.dp = load ptr, ptr %0, align 8, !tbaa !22
  %i.dq = tail call ptr @SUNNonlinSol_NewtonSens(i32 noundef %i.dm, ptr noundef %i.do, ptr noundef %i.dp) #13 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.ad, label %.thread183

bb.ad:                                            ; preds = %.thread220, %.thread, %bb.ac
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -20, i32 noundef 1839, ptr noundef nonnull @__func__.CVodeSensInit1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8)
  tail call fastcc void @cvSensFreeVectors(ptr noundef %0)
  br label %bb.ah

bb.ae:                                            ; preds = %.thread220
  %i.ds = tail call i32 @CVodeSetNonlinearSolverSensStg1(ptr noundef nonnull %0, ptr noundef nonnull %i.dk) #13 ; 2 uses
  %.not174 = icmp eq i32 %i.ds, 0
  br i1 %.not174, label %bb.ag, label %bb.af

.thread227.a:                                     ; preds = %bb.ac
  %i.dt = tail call i32 @CVodeSetNonlinearSolverSensStg(ptr noundef nonnull %0, ptr noundef nonnull %i.df) #13 ; 2 uses
  %.not174230 = icmp eq i32 %i.dt, 0
  br i1 %.not174230, label %.thread231, label %bb.af

.thread183:                                       ; preds = %.thread
  %i.du = tail call i32 @CVodeSetNonlinearSolverSensSim(ptr noundef nonnull %0, ptr noundef nonnull %i.dq) #13 ; 2 uses
  %.not174186 = icmp eq i32 %i.du, 0
  br i1 %.not174186, label %.thread189, label %bb.af

bb.af:                                            ; preds = %.thread227.a, %.thread183, %bb.ae
  %.0159188 = phi i32 [ %i.du, %.thread183 ], [ %i.ds, %bb.ae ], [ %i.dt, %.thread227.a ]
  %.0178181187 = phi ptr [ %i.dq, %.thread183 ], [ %i.dk, %bb.ae ], [ %i.df, %.thread227.a ]
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef %.0159188, i32 noundef 1859, ptr noundef nonnull @__func__.CVodeSensInit1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9)
  tail call fastcc void @cvSensFreeVectors(ptr noundef %0)
  %i.dv = tail call i32 @SUNNonlinSolFree(ptr noundef nonnull %.0178181187) #13 ; 0 uses
  br label %bb.ah

.thread189:                                       ; preds = %.thread183
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1872
  store i32 1, ptr %i.dw, align 8, !tbaa !142
  br label %bb.ah

.thread231:                                       ; preds = %.thread227.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 1888
  store i32 1, ptr %i.dx, align 8, !tbaa !143
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 1904
  store i32 1, ptr %i.dy, align 8, !tbaa !157
  br label %bb.ah

bb.ah:                                            ; preds = %.thread189, %bb.ag, %.thread231, %._crit_edge, %bb.af, %bb.ad, %bb.aa, %bb.u, %bb.p, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0161 = phi i32 [ -21, %bb.b ], [ -22, %bb.d ], [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %bb.j ], [ -20, %bb.p ], [ -20, %bb.aa ], [ -20, %bb.u ], [ -20, %bb.ad ], [ -20, %bb.af ], [ -28, %._crit_edge ], [ 0, %.thread231 ], [ 0, %bb.ag ], [ 0, %.thread189 ]
  ret i32 %.0161
}

declare i32 @CVodeSetNonlinearSolverSensStg1(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -40, 1) i32 @CVodeSensReInit(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef null, i32 noundef -21, i32 noundef 1902, ptr noundef nonnull @__func__.CVodeSensReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4)
  br label %.thread122

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !128
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -40, i32 noundef 1911, ptr noundef nonnull @__func__.CVodeSensReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.23)
  br label %.thread122

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 188
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43
  %i.g = icmp eq i32 %i.f, 2
  %i.h = icmp eq i32 %1, 3                        ; 3 uses
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1920, ptr noundef nonnull @__func__.CVodeSensReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20)
  br label %.thread122

bb.g:                                             ; preds = %bb.e
  %i.i = add i32 %1, -4
  %or.cond5 = icmp ult i32 %i.i, -3
  br i1 %or.cond5, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1929, ptr noundef nonnull @__func__.CVodeSensReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.21)
  br label %.thread122

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %1, ptr %i.j, align 4, !tbaa !130
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @cvProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1939, ptr noundef nonnull @__func__.CVodeSensReInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.22)
  br label %.thread122

bb.k:                                             ; preds = %bb.i
  br i1 %i.h, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !132
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.l, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load i32, ptr %i.p, align 8, !tbaa !129
end_hunk_0
begin_hunk_1_@cvAdjustOrder:bb.a
  %wide.trip.count114.i = zext nneg i32 %i.c to i64 ; 5 uses
  %i.df = add nsw i64 %wide.trip.count114.i, -2   ; 3 uses
  %min.iters.check117 = icmp ult i64 %i.df, 8
  br i1 %min.iters.check117, label %scalar.ph116.preheader, label %vector.memcheck118

vector.memcheck118:                               ; preds = %.preheader.i
  %i.dg = ptrtoaddr ptr %i.de to i64
  %i.dh = sub i64 %i.dg, %i.a
  %i.di = add i64 %i.dh, -1225
  %diff.check119 = icmp ult i64 %i.di, 31
  br i1 %diff.check119, label %scalar.ph116.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck118
  %n.vec121 = and i64 %i.df, -4                   ; 3 uses
  %i.dj = or disjoint i64 %n.vec121, 2
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next126, %vector.body122 ] ; 2 uses
  %i.dk = or disjoint i64 %index123, 2            ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.dk ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %wide.load124 = load <2 x double>, ptr %i.dl, align 8, !tbaa !29
  %wide.load125 = load <2 x double>, ptr %i.dm, align 8, !tbaa !29
  %i.dn = fneg <2 x double> %wide.load124
  %i.do = fneg <2 x double> %wide.load125
  %i.dp = getelementptr [8 x i8], ptr %i.de, i64 %i.dk ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 -16
  store <2 x double> %i.dn, ptr %i.dq, align 8, !tbaa !29
  store <2 x double> %i.do, ptr %i.dp, align 8, !tbaa !29
  %index.next126 = add nuw i64 %index123, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next126, %n.vec121
  br i1 %i.dr, label %middle.block127, label %vector.body122, !llvm.loop !410

middle.block127:                                  ; preds = %vector.body122
  %cmp.n128 = icmp eq i64 %i.df, %n.vec121
  br i1 %cmp.n128, label %.loopexit, label %scalar.ph116.preheader

scalar.ph116.preheader:                           ; preds = %vector.memcheck118, %.preheader.i, %middle.block127
  %indvars.iv111.i.ph = phi i64 [ 2, %vector.memcheck118 ], [ 2, %.preheader.i ], [ %i.dj, %middle.block127 ] ; 4 uses
  %i.ds = sub nsw i64 %wide.trip.count114.i, %indvars.iv111.i.ph
  %xtraiter135 = and i64 %i.ds, 3                 ; 2 uses
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol

scalar.ph116.prol:                                ; preds = %scalar.ph116.preheader, %scalar.ph116.prol
  %indvars.iv111.i.prol = phi i64 [ %indvars.iv.next112.i.prol, %scalar.ph116.prol ], [ %indvars.iv111.i.ph, %scalar.ph116.preheader ] ; 3 uses
  %prol.iter137 = phi i64 [ %prol.iter137.next, %scalar.ph116.prol ], [ 0, %scalar.ph116.preheader ]
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv111.i.prol
  %i.du = load double, ptr %i.dt, align 8, !tbaa !29
  %i.dv = fneg double %i.du
  %i.dw = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv111.i.prol
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  store double %i.dv, ptr %i.dx, align 8, !tbaa !29
  %indvars.iv.next112.i.prol = add nuw nsw i64 %indvars.iv111.i.prol, 1 ; 2 uses
  %prol.iter137.next = add i64 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i64 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %scalar.ph116.prol.loopexit, label %scalar.ph116.prol, !llvm.loop !411

scalar.ph116.prol.loopexit:                       ; preds = %scalar.ph116.prol, %scalar.ph116.preheader
  %indvars.iv111.i.unr = phi i64 [ %indvars.iv111.i.ph, %scalar.ph116.preheader ], [ %indvars.iv.next112.i.prol, %scalar.ph116.prol ]
  %i.dy = sub nsw i64 %indvars.iv111.i.ph, %wide.trip.count114.i
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %.loopexit, label %scalar.ph116

scalar.ph116:                                     ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i.3, %scalar.ph116 ], [ %indvars.iv111.i.unr, %scalar.ph116.prol.loopexit ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv111.i
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !29
  %i.ec = fneg double %i.eb
  %i.ed = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv111.i
  %i.ee = getelementptr i8, ptr %i.ed, i64 -16
  store double %i.ec, ptr %i.ee, align 8, !tbaa !29
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next112.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !29
  %i.eh = fneg double %i.eg
  %i.ei = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv.next112.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 -16
  store double %i.eh, ptr %i.ej, align 8, !tbaa !29
  %indvars.iv.next112.i.1 = add nuw nsw i64 %indvars.iv111.i, 2 ; 2 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next112.i.1
  %i.el = load double, ptr %i.ek, align 8, !tbaa !29
  %i.em = fneg double %i.el
  %i.en = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv.next112.i.1
  %i.eo = getelementptr i8, ptr %i.en, i64 -16
  store double %i.em, ptr %i.eo, align 8, !tbaa !29
  %indvars.iv.next112.i.2 = add nuw nsw i64 %indvars.iv111.i, 3 ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv.next112.i.2
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !29
  %i.er = fneg double %i.eq
  %i.es = getelementptr [8 x i8], ptr %i.de, i64 %indvars.iv.next112.i.2
  %i.et = getelementptr i8, ptr %i.es, i64 -16
  store double %i.er, ptr %i.et, align 8, !tbaa !29
  %indvars.iv.next112.i.3 = add nuw nsw i64 %indvars.iv111.i, 4 ; 2 uses
  %exitcond115.not.i.3 = icmp eq i64 %indvars.iv.next112.i.3, %wide.trip.count114.i
  br i1 %exitcond115.not.i.3, label %.loopexit, label %scalar.ph116, !llvm.loop !412

.loopexit:                                        ; preds = %scalar.ph116.prol.loopexit, %scalar.ph116, %middle.block127
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %wide.trip.count114.i
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !52
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ey = tail call i32 @N_VScaleAddMulti(i32 noundef %i.am, ptr noundef nonnull %i.de, ptr noundef %i.ew, ptr noundef nonnull %i.ex, ptr noundef nonnull %i.ex) #13 ; 0 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !121
  %.not77.i = icmp eq i32 %i.fa, 0
  br i1 %.not77.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.fb = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.fc = add nsw i32 %i.fb, -2
  %i.fd = load ptr, ptr %i.dd, align 8, !tbaa !74
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.ff = sext i32 %i.fb to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.ff
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !52
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.fj = tail call i32 @N_VScaleAddMulti(i32 noundef %i.fc, ptr noundef %i.fd, ptr noundef %i.fh, ptr noundef nonnull %i.fi, ptr noundef nonnull %i.fi) #13 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !141
  %.not78.i = icmp eq i32 %i.fl, 0
  br i1 %.not78.i, label %cvAdjustAdams.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !129
  %i.fo = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.fp = add nsw i32 %i.fo, -2
  %i.fq = load ptr, ptr %i.dd, align 8, !tbaa !74
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.fs = sext i32 %i.fo to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !135
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.fw = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.fn, i32 noundef %i.fp, ptr noundef %i.fq, ptr noundef %i.fu, ptr noundef nonnull %i.fv, ptr noundef nonnull %i.fv) #13 ; 0 uses
  br label %cvAdjustAdams.exit

bb.n:                                             ; preds = %bb.b
  switch i32 %1, label %cvAdjustAdams.exit [
    i32 1, label %bb.o
    i32 -1, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !26 ; 2 uses
  %.not127.i.i = icmp slt i32 %i.fy, 0
  br i1 %.not127.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.o
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.ga = add nuw i32 %i.fy, 1
  %i.gb = zext i32 %i.ga to i64
  %i.gc = shl nuw nsw i64 %i.gb, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fz, i8 0, i64 %i.gc, i1 false), !tbaa !29
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.o
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 5 uses
  store double 1.000000e+00, ptr %i.ge, align 8, !tbaa !29
  %i.gf = icmp sgt i32 %i.c, 1
  br i1 %i.gf, label %bb.p, label %.loopexit123.i.i

bb.p:                                             ; preds = %._crit_edge.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !199 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64
  br label %.lr.ph131.preheader.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph131.i.i, %middle.block65
  %i.gj = fadd double %.0105136.i.i, %i.gw        ; 2 uses
  %i.gk = fdiv double %i.gj, %i.gh                ; 3 uses
  %i.gl = fmul double %.0107134.i.i, %i.gk        ; 2 uses
  %i.gm = trunc nuw nsw i64 %indvars.iv.next152.i.i to i32
  %i.gn = uitofp nneg i32 %i.gm to double
  %i.go = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1
  %i.gq = fdiv <2 x double> splat (double 1.000000e+00), %i.gp ; 2 uses
  %i.gr = fadd <2 x double> %i.gu, %i.gq
  %i.gs = fsub <2 x double> %i.gu, %i.gq
  %i.gt = shufflevector <2 x double> %i.gr, <2 x double> %i.gs, <2 x i32> <i32 0, i32 3> ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count.i.i
  %indvar.next45 = add i32 %indvar44, 1
  br i1 %exitcond.not.i.i, label %.loopexit123.i.i, label %.lr.ph131.preheader.i.i

.lr.ph131.preheader.i.i:                          ; preds = %.loopexit.i.i, %bb.p
  %indvar44 = phi i32 [ %indvar.next45, %.loopexit.i.i ], [ 0, %bb.p ] ; 2 uses
  %indvars.iv151.i.i = phi i64 [ %indvars.iv.next152.i.i, %.loopexit.i.i ], [ 1, %bb.p ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.loopexit.i.i ], [ 3, %bb.p ] ; 4 uses
  %.0105136.i.i = phi double [ %i.gj, %.loopexit.i.i ], [ %i.gh, %bb.p ]
  %.0106135.i.i = phi double [ %i.gk, %.loopexit.i.i ], [ 1.000000e+00, %bb.p ] ; 2 uses
  %.0107134.i.i = phi double [ %i.gl, %.loopexit.i.i ], [ 1.000000e+00, %bb.p ]
  %i.gu = phi <2 x double> [ %i.gt, %.loopexit.i.i ], [ <double 1.000000e+00, double -1.000000e+00>, %bb.p ] ; 2 uses
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 4 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv.next152.i.i
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !29
  %2 = add nuw i32 %indvar44, 3                   ; 2 uses
  %i.gx = tail call i32 @llvm.smin.i32(i32 %2, i32 2)
  %i.gy = sub i32 %2, %i.gx                       ; 2 uses
  %i.gz = zext i32 %i.gy to i64
  %i.ha = add nuw nsw i64 %i.gz, 1                ; 2 uses
  %min.iters.check47 = icmp ult i32 %i.gy, 3
  br i1 %min.iters.check47, label %.lr.ph131.i.i.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %.lr.ph131.preheader.i.i
  %n.vec49 = and i64 %i.ha, 8589934588            ; 3 uses
  %i.hb = sub nsw i64 %indvars.iv.i.i, %n.vec49
  %broadcast.splatinsert50 = insertelement <2 x double> poison, double %.0106135.i.i, i64 0 ; 2 uses
  %i.hc = shufflevector <2 x double> %broadcast.splatinsert50, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hd = shufflevector <2 x double> %broadcast.splatinsert50, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body52

vector.body52:                                    ; preds = %vector.body52, %vector.ph48
  %index53 = phi i64 [ 0, %vector.ph48 ], [ %index.next64, %vector.body52 ] ; 2 uses
  %i.he = sub i64 %indvars.iv.i.i, %index53
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.he ; 4 uses
  %i.hg = getelementptr inbounds i8, ptr %i.hf, i64 -8 ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hf, i64 -24 ; 2 uses
  %wide.load54 = load <2 x double>, ptr %i.hg, align 8, !tbaa !29
  %wide.load55 = load <2 x double>, ptr %i.hh, align 8, !tbaa !29
  %i.hi = getelementptr i8, ptr %i.hf, i64 -16
  %i.hj = getelementptr i8, ptr %i.hf, i64 -32
  %wide.load58 = load <2 x double>, ptr %i.hi, align 8, !tbaa !29
  %wide.load59 = load <2 x double>, ptr %i.hj, align 8, !tbaa !29
  %reverse62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load54, <2 x double> %i.hc, <2 x double> %wide.load58)
  %reverse63 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load55, <2 x double> %i.hd, <2 x double> %wide.load59)
  store <2 x double> %reverse62, ptr %i.hg, align 8, !tbaa !29
  store <2 x double> %reverse63, ptr %i.hh, align 8, !tbaa !29
  %index.next64 = add nuw i64 %index53, 4         ; 2 uses
  %i.hk = icmp eq i64 %index.next64, %n.vec49
  br i1 %i.hk, label %middle.block65, label %vector.body52, !llvm.loop !413

middle.block65:                                   ; preds = %vector.body52
  %cmp.n66 = icmp eq i64 %i.ha, %n.vec49
  br i1 %cmp.n66, label %.loopexit.i.i, label %.lr.ph131.i.i.preheader

.lr.ph131.i.i.preheader:                          ; preds = %.lr.ph131.preheader.i.i, %middle.block65
  %indvars.iv148.i.i.ph = phi i64 [ %indvars.iv.i.i, %.lr.ph131.preheader.i.i ], [ %i.hb, %middle.block65 ]
  br label %.lr.ph131.i.i

.lr.ph131.i.i:                                    ; preds = %.lr.ph131.i.i.preheader, %.lr.ph131.i.i
  %indvars.iv148.i.i = phi i64 [ %indvars.iv.next149.i.i, %.lr.ph131.i.i ], [ %indvars.iv148.i.i.ph, %.lr.ph131.i.i.preheader ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %indvars.iv148.i.i ; 3 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !29
  %i.hn = getelementptr i8, ptr %i.hl, i64 -8
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !29
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.hm, double %.0106135.i.i, double %i.ho)
  store double %i.hp, ptr %i.hl, align 8, !tbaa !29
  %indvars.iv.next149.i.i = add nsw i64 %indvars.iv148.i.i, -1
  %i.hq = trunc nuw i64 %indvars.iv148.i.i to i32
  %i.hr = icmp sgt i32 %i.hq, 2
  br i1 %i.hr, label %.lr.ph131.i.i, label %.loopexit.i.i, !llvm.loop !414

.loopexit123.i.i:                                 ; preds = %.loopexit.i.i, %._crit_edge.i.i
  %.1108.i.i = phi double [ 1.000000e+00, %._crit_edge.i.i ], [ %i.gl, %.loopexit.i.i ]
  %i.hs = phi <2 x double> [ <double 1.000000e+00, double -1.000000e+00>, %._crit_edge.i.i ], [ %i.gt, %.loopexit.i.i ] ; 2 uses
  %i.ht = extractelement <2 x double> %i.hs, i64 1
  %i.hu = fneg double %i.ht
  %i.hv = extractelement <2 x double> %i.hs, i64 0
  %i.hw = fsub double %i.hu, %i.hv
  %i.hx = fdiv double %i.hw, %.1108.i.i           ; 6 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 2136 ; 4 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !211
  %i.ib = sext i32 %i.ia to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !52
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 8 uses
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.ig = sext i32 %i.if to i64
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ig
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !52
  tail call void @N_VScale(double noundef %i.hx, ptr noundef %i.id, ptr noundef %i.ii) #13
  %i.ij = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.ik = icmp sgt i32 %i.ij, 1
  br i1 %i.ik, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.loopexit123.i.i
  %i.il = add nsw i32 %i.ij, -1
  %i.im = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.in = sext i32 %i.im to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.in
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !52
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.ir = tail call i32 @N_VScaleAddMulti(i32 noundef %i.il, ptr noundef nonnull %i.ge, ptr noundef %i.ip, ptr noundef nonnull %i.iq, ptr noundef nonnull %i.iq) #13 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit123.i.i
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.it = load i32, ptr %i.is, align 8, !tbaa !121
  %.not119.i.i = icmp eq i32 %i.it, 0
  br i1 %.not119.i.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.iv = load i32, ptr %i.hz, align 8, !tbaa !211
  %i.iw = sext i32 %i.iv to i64
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !52
  %i.iz = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.ja
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !52
  tail call void @N_VScale(double noundef %i.hx, ptr noundef %i.iy, ptr noundef %i.jc) #13
  %i.jd = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.je = icmp sgt i32 %i.jd, 1
  br i1 %i.je, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jf = add nsw i32 %i.jd, -1
  %i.jg = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.jh
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !52
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.jl = tail call i32 @N_VScaleAddMulti(i32 noundef %i.jf, ptr noundef nonnull %i.ge, ptr noundef %i.jj, ptr noundef nonnull %i.jk, ptr noundef nonnull %i.jk) #13 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !141
  %.not120.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not120.i.i, label %bb.w, label %.preheader122.i.i

.preheader122.i.i:                                ; preds = %bb.u
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !129 ; 4 uses
  %i.jq = icmp sgt i32 %i.jp, 0
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !74 ; 3 uses
  br i1 %i.jq, label %.lr.ph139.i.i, label %._crit_edge140.i.i

.lr.ph139.i.i:                                    ; preds = %.preheader122.i.i
  %wide.trip.count157.i.i = zext nneg i32 %i.jp to i64 ; 3 uses
  %min.iters.check69 = icmp ult i32 %i.jp, 4
  br i1 %min.iters.check69, label %scalar.ph68.preheader, label %vector.ph70

vector.ph70:                                      ; preds = %.lr.ph139.i.i
  %n.vec71 = and i64 %wide.trip.count157.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert72 = insertelement <2 x double> poison, double %i.hx, i64 0
  %broadcast.splat73 = shufflevector <2 x double> %broadcast.splatinsert72, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body74

vector.body74:                                    ; preds = %vector.body74, %vector.ph70
  %index75 = phi i64 [ 0, %vector.ph70 ], [ %index.next76, %vector.body74 ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %index75 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store <2 x double> %broadcast.splat73, ptr %i.jt, align 8, !tbaa !29
  store <2 x double> %broadcast.splat73, ptr %i.ju, align 8, !tbaa !29
  %index.next76 = add nuw i64 %index75, 4         ; 2 uses
  %i.jv = icmp eq i64 %index.next76, %n.vec71
  br i1 %i.jv, label %middle.block77, label %vector.body74, !llvm.loop !415

middle.block77:                                   ; preds = %vector.body74
  %cmp.n78 = icmp eq i64 %n.vec71, %wide.trip.count157.i.i
  br i1 %cmp.n78, label %._crit_edge140.i.i, label %scalar.ph68.preheader

scalar.ph68.preheader:                            ; preds = %.lr.ph139.i.i, %middle.block77
  %indvars.iv154.i.i.ph = phi i64 [ 0, %.lr.ph139.i.i ], [ %n.vec71, %middle.block77 ]
  br label %scalar.ph68

scalar.ph68:                                      ; preds = %scalar.ph68.preheader, %scalar.ph68
  %indvars.iv154.i.i = phi i64 [ %indvars.iv.next155.i.i, %scalar.ph68 ], [ %indvars.iv154.i.i.ph, %scalar.ph68.preheader ] ; 2 uses
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %indvars.iv154.i.i
  store double %i.hx, ptr %i.jw, align 8, !tbaa !29
  %indvars.iv.next155.i.i = add nuw nsw i64 %indvars.iv154.i.i, 1 ; 2 uses
  %exitcond158.not.i.i = icmp eq i64 %indvars.iv.next155.i.i, %wide.trip.count157.i.i
  br i1 %exitcond158.not.i.i, label %._crit_edge140.i.i, label %scalar.ph68, !llvm.loop !416

._crit_edge140.i.i:                               ; preds = %scalar.ph68, %middle.block77, %.preheader122.i.i
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  %i.jy = load i32, ptr %i.hz, align 8, !tbaa !211
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.jz
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !135
  %i.kc = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.kd
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !135
  %i.kg = tail call i32 @N_VScaleVectorArray(i32 noundef %i.jp, ptr noundef %i.js, ptr noundef %i.kb, ptr noundef %i.kf) #13 ; 0 uses
  %i.kh = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.ki = icmp sgt i32 %i.kh, 1
  br i1 %i.ki, label %bb.v, label %bb.w

bb.v:                                             ; preds = %._crit_edge140.i.i
  %i.kj = load i32, ptr %i.jo, align 8, !tbaa !129
  %i.kk = add nsw i32 %i.kh, -1
  %i.kl = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.km = sext i32 %i.kl to i64
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.jx, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !135
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.kq = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.kj, i32 noundef %i.kk, ptr noundef nonnull %i.ge, ptr noundef %i.ko, ptr noundef nonnull %i.kp, ptr noundef nonnull %i.kp) #13 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge140.i.i, %bb.u
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !173
  %.not121.i.i = icmp eq i32 %i.ks, 0
  br i1 %.not121.i.i, label %cvAdjustAdams.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.w
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !129 ; 4 uses
  %i.kv = icmp sgt i32 %i.ku, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 2688
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !74 ; 3 uses
  br i1 %i.kv, label %.lr.ph142.i.i, label %._crit_edge143.i.i

.lr.ph142.i.i:                                    ; preds = %.preheader.i.i
  %wide.trip.count162.i.i = zext nneg i32 %i.ku to i64 ; 3 uses
  %min.iters.check81 = icmp ult i32 %i.ku, 4
  br i1 %min.iters.check81, label %scalar.ph80.preheader, label %vector.ph82

vector.ph82:                                      ; preds = %.lr.ph142.i.i
  %n.vec83 = and i64 %wide.trip.count162.i.i, 2147483644 ; 3 uses
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %i.hx, i64 0
  %broadcast.splat85 = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %vector.ph82
  %index87 = phi i64 [ 0, %vector.ph82 ], [ %index.next88, %vector.body86 ] ; 2 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %index87 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store <2 x double> %broadcast.splat85, ptr %i.ky, align 8, !tbaa !29
  store <2 x double> %broadcast.splat85, ptr %i.kz, align 8, !tbaa !29
  %index.next88 = add nuw i64 %index87, 4         ; 2 uses
  %i.la = icmp eq i64 %index.next88, %n.vec83
  br i1 %i.la, label %middle.block89, label %vector.body86, !llvm.loop !417

middle.block89:                                   ; preds = %vector.body86
  %cmp.n90 = icmp eq i64 %n.vec83, %wide.trip.count162.i.i
  br i1 %cmp.n90, label %._crit_edge143.i.i, label %scalar.ph80.preheader

scalar.ph80.preheader:                            ; preds = %.lr.ph142.i.i, %middle.block89
  %indvars.iv159.i.i.ph = phi i64 [ 0, %.lr.ph142.i.i ], [ %n.vec83, %middle.block89 ]
  br label %scalar.ph80

scalar.ph80:                                      ; preds = %scalar.ph80.preheader, %scalar.ph80
  %indvars.iv159.i.i = phi i64 [ %indvars.iv.next160.i.i, %scalar.ph80 ], [ %indvars.iv159.i.i.ph, %scalar.ph80.preheader ] ; 2 uses
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kx, i64 %indvars.iv159.i.i
  store double %i.hx, ptr %i.lb, align 8, !tbaa !29
  %indvars.iv.next160.i.i = add nuw nsw i64 %indvars.iv159.i.i, 1 ; 2 uses
  %exitcond163.not.i.i = icmp eq i64 %indvars.iv.next160.i.i, %wide.trip.count162.i.i
  br i1 %exitcond163.not.i.i, label %._crit_edge143.i.i, label %scalar.ph80, !llvm.loop !418

._crit_edge143.i.i:                               ; preds = %scalar.ph80, %middle.block89, %.preheader.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %i.ld = load i32, ptr %i.hz, align 8, !tbaa !211
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.le
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !135
  %i.lh = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.li = sext i32 %i.lh to i64
  %i.lj = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.li
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !135
  %i.ll = tail call i32 @N_VScaleVectorArray(i32 noundef %i.ku, ptr noundef %i.kx, ptr noundef %i.lg, ptr noundef %i.lk) #13 ; 0 uses
  %i.lm = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.ln = icmp sgt i32 %i.lm, 1
  br i1 %i.ln, label %bb.x, label %cvAdjustAdams.exit

bb.x:                                             ; preds = %._crit_edge143.i.i
  %i.lo = load i32, ptr %i.kt, align 8, !tbaa !129
  %i.lp = add nsw i32 %i.lm, -1
  %i.lq = load i32, ptr %i.ie, align 8, !tbaa !80
  %i.lr = sext i32 %i.lq to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !135
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.lv = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.lo, i32 noundef %i.lp, ptr noundef nonnull %i.ge, ptr noundef %i.lt, ptr noundef nonnull %i.lu, ptr noundef nonnull %i.lu) #13 ; 0 uses
  br label %cvAdjustAdams.exit

bb.y:                                             ; preds = %bb.n
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !26 ; 2 uses
  %.not70.i.i = icmp slt i32 %i.lx, 0
  br i1 %.not70.i.i, label %._crit_edge.i3.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.y
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.lz = add nuw i32 %i.lx, 1
  %i.ma = zext i32 %i.lz to i64
  %i.mb = shl nuw nsw i64 %i.ma, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ly, i8 0, i64 %i.mb, i1 false), !tbaa !29
  br label %._crit_edge.i3.i

._crit_edge.i3.i:                                 ; preds = %.lr.ph.i2.i, %bb.y
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 8 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store double 1.000000e+00, ptr %i.md, align 8, !tbaa !29
  %i.me = add nsw i32 %i.c, -2
  %.not6476.i.i = icmp slt i32 %i.c, 3
  br i1 %.not6476.i.i, label %cvAdjustAdams.exit, label %.lr.ph80.i.i

.lr.ph80.i.i:                                     ; preds = %._crit_edge.i3.i
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !199
  %i.mi = add nsw i32 %i.c, -1
  %wide.trip.count.i4.i = zext nneg i32 %i.mi to i64
  br label %.lr.ph74.preheader.i.i

.lr.ph74.preheader.i.i:                           ; preds = %._crit_edge75.i.i, %.lr.ph80.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge75.i.i ], [ 0, %.lr.ph80.i.i ] ; 3 uses
  %indvars.iv88.i.i = phi i64 [ %indvars.iv.next89.i.i, %._crit_edge75.i.i ], [ 1, %.lr.ph80.i.i ] ; 2 uses
  %indvars.iv.i5.i = phi i64 [ %indvars.iv.next.i6.i, %._crit_edge75.i.i ], [ 3, %.lr.ph80.i.i ] ; 4 uses
  %.06277.i.i = phi double [ %i.ml, %._crit_edge75.i.i ], [ 0.000000e+00, %.lr.ph80.i.i ]
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %indvars.iv88.i.i
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !29
  %i.ml = fadd double %.06277.i.i, %i.mk          ; 2 uses
  %i.mm = fdiv double %i.ml, %i.mh                ; 2 uses
  %3 = add nuw i64 %indvar, 2                     ; 2 uses
  %min.iters.check = icmp ult i64 %indvar, 2
  br i1 %min.iters.check, label %.lr.ph74.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph74.preheader.i.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %i.mn = sub i64 %indvars.iv.i5.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.mm, i64 0 ; 2 uses
  %i.mo = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mp = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mq = sub i64 %indvars.iv.i5.i, %index
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.mq ; 4 uses
  %i.ms = getelementptr inbounds i8, ptr %i.mr, i64 -8 ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %i.mr, i64 -24 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ms, align 8, !tbaa !29
  %wide.load24 = load <2 x double>, ptr %i.mt, align 8, !tbaa !29
  %i.mu = getelementptr i8, ptr %i.mr, i64 -16
  %i.mv = getelementptr i8, ptr %i.mr, i64 -32
  %wide.load26 = load <2 x double>, ptr %i.mu, align 8, !tbaa !29
  %wide.load27 = load <2 x double>, ptr %i.mv, align 8, !tbaa !29
  %reverse30 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %i.mo, <2 x double> %wide.load26)
  %reverse31 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load24, <2 x double> %i.mp, <2 x double> %wide.load27)
  store <2 x double> %reverse30, ptr %i.ms, align 8, !tbaa !29
  store <2 x double> %reverse31, ptr %i.mt, align 8, !tbaa !29
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.mw = icmp eq i64 %index.next, %n.vec
  br i1 %i.mw, label %middle.block, label %vector.body, !llvm.loop !419

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge75.i.i, label %.lr.ph74.i.i.preheader

.lr.ph74.i.i.preheader:                           ; preds = %.lr.ph74.preheader.i.i, %middle.block
  %indvars.iv85.i.i.ph = phi i64 [ %indvars.iv.i5.i, %.lr.ph74.preheader.i.i ], [ %i.mn, %middle.block ]
  br label %.lr.ph74.i.i

.lr.ph74.i.i:                                     ; preds = %.lr.ph74.i.i.preheader, %.lr.ph74.i.i
  %indvars.iv85.i.i = phi i64 [ %indvars.iv.next86.i.i, %.lr.ph74.i.i ], [ %indvars.iv85.i.i.ph, %.lr.ph74.i.i.preheader ] ; 3 uses
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv85.i.i ; 3 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !29
  %i.mz = getelementptr i8, ptr %i.mx, i64 -8
  %i.na = load double, ptr %i.mz, align 8, !tbaa !29
  %i.nb = tail call double @llvm.fmuladd.f64(double %i.my, double %i.mm, double %i.na)
  store double %i.nb, ptr %i.mx, align 8, !tbaa !29
  %indvars.iv.next86.i.i = add nsw i64 %indvars.iv85.i.i, -1
  %i.nc = icmp sgt i64 %indvars.iv85.i.i, 2
  br i1 %i.nc, label %.lr.ph74.i.i, label %._crit_edge75.i.i, !llvm.loop !420

._crit_edge75.i.i:                                ; preds = %.lr.ph74.i.i, %middle.block
  %indvars.iv.next89.i.i = add nuw nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %indvars.iv.next.i6.i = add nuw nsw i64 %indvars.iv.i5.i, 1
  %exitcond.not.i7.i = icmp eq i64 %indvars.iv.next89.i.i, %wide.trip.count.i4.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not.i7.i, label %._crit_edge81.i.i, label %.lr.ph74.preheader.i.i

._crit_edge81.i.i:                                ; preds = %._crit_edge75.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 2688 ; 4 uses
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !74 ; 8 uses
  %wide.trip.count94.i.i = zext nneg i32 %i.c to i64 ; 5 uses
  %i.nf = add nsw i64 %wide.trip.count94.i.i, -2  ; 3 uses
  %min.iters.check33 = icmp ult i64 %i.nf, 8
  br i1 %min.iters.check33, label %scalar.ph32.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %._crit_edge81.i.i
  %i.ng = ptrtoaddr ptr %i.ne to i64
  %i.nh = sub i64 %i.ng, %i.a
  %i.ni = add i64 %i.nh, -1225
  %diff.check = icmp ult i64 %i.ni, 31
  br i1 %diff.check, label %scalar.ph32.preheader, label %vector.ph34

vector.ph34:                                      ; preds = %vector.memcheck
  %n.vec35 = and i64 %i.nf, -4                    ; 3 uses
  %i.nj = or disjoint i64 %n.vec35, 2
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next40, %vector.body36 ] ; 2 uses
  %i.nk = or disjoint i64 %index37, 2             ; 2 uses
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.nk ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 16
  %wide.load38 = load <2 x double>, ptr %i.nl, align 8, !tbaa !29
  %wide.load39 = load <2 x double>, ptr %i.nm, align 8, !tbaa !29
  %i.nn = fneg <2 x double> %wide.load38
  %i.no = fneg <2 x double> %wide.load39
  %i.np = getelementptr [8 x i8], ptr %i.ne, i64 %i.nk ; 2 uses
  %i.nq = getelementptr i8, ptr %i.np, i64 -16
  store <2 x double> %i.nn, ptr %i.nq, align 8, !tbaa !29
  store <2 x double> %i.no, ptr %i.np, align 8, !tbaa !29
  %index.next40 = add nuw i64 %index37, 4         ; 2 uses
  %i.nr = icmp eq i64 %index.next40, %n.vec35
  br i1 %i.nr, label %middle.block41, label %vector.body36, !llvm.loop !421

middle.block41:                                   ; preds = %vector.body36
  %cmp.n42 = icmp eq i64 %i.nf, %n.vec35
  br i1 %cmp.n42, label %.loopexit130, label %scalar.ph32.preheader

scalar.ph32.preheader:                            ; preds = %vector.memcheck, %._crit_edge81.i.i, %middle.block41
  %indvars.iv91.i.i.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %._crit_edge81.i.i ], [ %i.nj, %middle.block41 ] ; 4 uses
  %i.ns = sub nsw i64 %wide.trip.count94.i.i, %indvars.iv91.i.i.ph
  %xtraiter = and i64 %i.ns, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph32.prol.loopexit, label %scalar.ph32.prol

scalar.ph32.prol:                                 ; preds = %scalar.ph32.preheader, %scalar.ph32.prol
  %indvars.iv91.i.i.prol = phi i64 [ %indvars.iv.next92.i.i.prol, %scalar.ph32.prol ], [ %indvars.iv91.i.i.ph, %scalar.ph32.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph32.prol ], [ 0, %scalar.ph32.preheader ]
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv91.i.i.prol
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !29
  %i.nv = fneg double %i.nu
  %i.nw = getelementptr [8 x i8], ptr %i.ne, i64 %indvars.iv91.i.i.prol
  %i.nx = getelementptr i8, ptr %i.nw, i64 -16
  store double %i.nv, ptr %i.nx, align 8, !tbaa !29
  %indvars.iv.next92.i.i.prol = add nuw nsw i64 %indvars.iv91.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph32.prol.loopexit, label %scalar.ph32.prol, !llvm.loop !422

scalar.ph32.prol.loopexit:                        ; preds = %scalar.ph32.prol, %scalar.ph32.preheader
  %indvars.iv91.i.i.unr = phi i64 [ %indvars.iv91.i.i.ph, %scalar.ph32.preheader ], [ %indvars.iv.next92.i.i.prol, %scalar.ph32.prol ]
  %i.ny = sub nsw i64 %indvars.iv91.i.i.ph, %wide.trip.count94.i.i
  %i.nz = icmp ugt i64 %i.ny, -4
  br i1 %i.nz, label %.loopexit130, label %scalar.ph32

scalar.ph32:                                      ; preds = %scalar.ph32.prol.loopexit, %scalar.ph32
  %indvars.iv91.i.i = phi i64 [ %indvars.iv.next92.i.i.3, %scalar.ph32 ], [ %indvars.iv91.i.i.unr, %scalar.ph32.prol.loopexit ] ; 6 uses
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv91.i.i
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !29
  %i.oc = fneg double %i.ob
  %i.od = getelementptr [8 x i8], ptr %i.ne, i64 %indvars.iv91.i.i
  %i.oe = getelementptr i8, ptr %i.od, i64 -16
  store double %i.oc, ptr %i.oe, align 8, !tbaa !29
  %indvars.iv.next92.i.i = add nuw nsw i64 %indvars.iv91.i.i, 1 ; 2 uses
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next92.i.i
  %i.og = load double, ptr %i.of, align 8, !tbaa !29
  %i.oh = fneg double %i.og
  %i.oi = getelementptr [8 x i8], ptr %i.ne, i64 %indvars.iv.next92.i.i
  %i.oj = getelementptr i8, ptr %i.oi, i64 -16
  store double %i.oh, ptr %i.oj, align 8, !tbaa !29
  %indvars.iv.next92.i.i.1 = add nuw nsw i64 %indvars.iv91.i.i, 2 ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next92.i.i.1
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !29
  %i.om = fneg double %i.ol
  %i.on = getelementptr [8 x i8], ptr %i.ne, i64 %indvars.iv.next92.i.i.1
  %i.oo = getelementptr i8, ptr %i.on, i64 -16
  store double %i.om, ptr %i.oo, align 8, !tbaa !29
  %indvars.iv.next92.i.i.2 = add nuw nsw i64 %indvars.iv91.i.i, 3 ; 2 uses
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv.next92.i.i.2
  %i.oq = load double, ptr %i.op, align 8, !tbaa !29
  %i.or = fneg double %i.oq
  %i.os = getelementptr [8 x i8], ptr %i.ne, i64 %indvars.iv.next92.i.i.2
  %i.ot = getelementptr i8, ptr %i.os, i64 -16
  store double %i.or, ptr %i.ot, align 8, !tbaa !29
  %indvars.iv.next92.i.i.3 = add nuw nsw i64 %indvars.iv91.i.i, 4 ; 2 uses
  %exitcond95.not.i.i.3 = icmp eq i64 %indvars.iv.next92.i.i.3, %wide.trip.count94.i.i
  br i1 %exitcond95.not.i.i.3, label %.loopexit130, label %scalar.ph32, !llvm.loop !423

.loopexit130:                                     ; preds = %scalar.ph32.prol.loopexit, %scalar.ph32, %middle.block41
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %wide.trip.count94.i.i
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !52
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.oy = tail call i32 @N_VScaleAddMulti(i32 noundef %i.me, ptr noundef nonnull %i.ne, ptr noundef %i.ow, ptr noundef nonnull %i.ox, ptr noundef nonnull %i.ox) #13 ; 0 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !121
  %.not65.i.i = icmp eq i32 %i.pa, 0
  br i1 %.not65.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit130
  %i.pb = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.pc = add nsw i32 %i.pb, -2
  %i.pd = load ptr, ptr %i.nd, align 8, !tbaa !74
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.pf = sext i32 %i.pb to i64
  %i.pg = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %i.pf
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !52
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.pj = tail call i32 @N_VScaleAddMulti(i32 noundef %i.pc, ptr noundef %i.pd, ptr noundef %i.ph, ptr noundef nonnull %i.pi, ptr noundef nonnull %i.pi) #13 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.loopexit130
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !141
  %.not66.i.i = icmp eq i32 %i.pl, 0
  br i1 %.not66.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pn = load i32, ptr %i.pm, align 8, !tbaa !129
  %i.po = load i32, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.pp = add nsw i32 %i.po, -2
  %i.pq = load ptr, ptr %i.nd, align 8, !tbaa !74
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ps = sext i32 %i.po to i64
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.pr, i64 %i.ps
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !135
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.pw = tail call i32 @N_VScaleAddMultiVectorArray(i32 noundef %i.pn, i32 noundef %i.pp, ptr noundef %i.pq, ptr noundef %i.pu, ptr noundef nonnull %i.pv, ptr noundef nonnull %i.pv) #13 ; 0 uses
  br label %bb.ac
end_hunk_1
