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
  %i.cn = zext nneg i32 %1 to i64
  %i.co = shl nuw nsw i64 %i.cn, 3                ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ci, i8 0, i64 %i.co, i1 false), !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ck, i8 0, i64 %i.co, i1 false), !tbaa !65
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cm, i8 0, i64 %i.co, i1 false), !tbaa !65
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
