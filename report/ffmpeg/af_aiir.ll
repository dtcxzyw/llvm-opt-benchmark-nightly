Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aiir?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@config_output:bb.a
bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = load i32, ptr %i.j, align 4, !tbaa !57   ; 3 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8, !tbaa !30
  %i.t = tail call noalias ptr @av_strdup(ptr noundef %i.q) #14 ; 3 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !30
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %read_gains.exit.thread, label %.preheader.i

read_gains.exit.thread:                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %convert_zp2tf.exit

.preheader.i:                                     ; preds = %bb.b
  %i.u = icmp sgt i32 %i.r, 0
  br i1 %i.u, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 104 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  %i.w = call ptr @av_strtok(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.c) #14 ; 4 uses
  %.not21.peel.i = icmp eq ptr %i.w, null
  br i1 %.not21.peel.i, label %read_gains.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = call i32 (ptr, ptr, ...) @av_sscanf(ptr noundef nonnull %i.w, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.y) #14
  %.not23.peel.i = icmp eq i32 %i.z, 1
  br i1 %.not23.peel.i, label %bb.d, label %.loopexit32.i

bb.d:                                             ; preds = %bb.c
  %exitcond.peel.not.i = icmp eq i32 %i.r, 1
  br i1 %exitcond.peel.not.i, label %.loopexit, label %.peel.next.i

bb.e:                                             ; preds = %.peel.next.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.peel.next.i, !llvm.loop !97

.peel.next.i:                                     ; preds = %bb.d, %bb.e
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.01526.i = phi ptr [ %spec.select.i, %bb.e ], [ %i.w, %bb.d ]
  %i.aa = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.82, ptr noundef nonnull %i.c) #14 ; 2 uses
  %.not21.i = icmp eq ptr %i.aa, null
  %spec.select.i = select i1 %.not21.i, ptr %.01526.i, ptr %i.aa ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw [72 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = call i32 (ptr, ptr, ...) @av_sscanf(ptr noundef nonnull %spec.select.i, ptr noundef nonnull @.str.83, ptr noundef nonnull %i.ad) #14
  %.not23.i = icmp eq i32 %i.ae, 1
  br i1 %.not23.i, label %bb.e, label %.loopexit32.i

.loopexit32.i:                                    ; preds = %.peel.next.i, %bb.c
  %spec.select.lcssa28.i = phi ptr [ %i.w, %bb.c ], [ %spec.select.i, %.peel.next.i ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.d, i32 noundef 16, ptr noundef nonnull @.str.84, ptr noundef nonnull %spec.select.lcssa28.i) #14
  br label %read_gains.exit

read_gains.exit:                                  ; preds = %.lr.ph.i, %.loopexit32.i
  call void @av_freep(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %convert_zp2tf.exit

.loopexit:                                        ; preds = %bb.e, %bb.d, %.preheader.i
  call void @av_freep(ptr noundef nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.af = load i32, ptr %i.j, align 4, !tbaa !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25
  %i.ai = call fastcc i32 @read_channels(ptr noundef %i.d, i32 noundef %i.af, ptr noundef %i.ah, i32 noundef 0) ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %convert_zp2tf.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !57
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = call fastcc i32 @read_channels(ptr noundef %i.d, i32 noundef %i.ak, ptr noundef %i.am, i32 noundef 1) ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %convert_zp2tf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 60 ; 5 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !64 ; 2 uses
  switch i32 %i.aq, label %convert_pr2zp.exit [
    i32 -1, label %bb.h
    i32 2, label %bb.o
    i32 3, label %bb.q
    i32 4, label %bb.s
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i167, label %convert_pr2zp.exit.thread290

.lr.ph.i167:                                      ; preds = %bb.h
  %.val = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %wide.trip.count23.i = zext nneg i32 %i.ar to i64
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.i, %.lr.ph.i167
  %indvars.iv20.i = phi i64 [ 0, %.lr.ph.i167 ], [ %indvars.iv.next21.i, %.loopexit.i ] ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw [72 x i8], ptr %i.au, i64 %indvars.iv20.i ; 6 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !31
  %i.ax = sext i32 %i.aw to i64
  %i.ay = call noalias ptr @av_calloc(i64 noundef %i.ax, i64 noundef 8) #14 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31
  %i.bb = sext i32 %i.ba to i64
  %i.bc = call noalias ptr @av_calloc(i64 noundef %i.bb, i64 noundef 8) #14 ; 4 uses
  %i.bd = icmp ne ptr %i.ay, null
  %i.be = icmp ne ptr %i.bc, null
  %or.cond.i = select i1 %i.bd, i1 %i.be, i1 false
  br i1 %or.cond.i, label %bb.j, label %.loopexit.i

bb.j:                                             ; preds = %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66
  %i.bh = load i32, ptr %i.av, align 8, !tbaa !31
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %i.bg, i64 %i.bj, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.bm = load i32, ptr %i.az, align 4, !tbaa !31
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %i.bl, i64 %i.bo, i1 false)
  %i.bp = load i32, ptr %i.av, align 8, !tbaa !31 ; 4 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph49.i.lr.ph.i, label %.preheader.i168

.lr.ph49.i.lr.ph.i:                               ; preds = %bb.j
  %wide.trip.count.i.i = zext nneg i32 %i.bp to i64 ; 2 uses
  %invariant.op = sub i32 1, %i.bp
  br label %.lr.ph49.i.i

.preheader.i168:                                  ; preds = %coef_sf2zf.exit.loopexit.i, %bb.j
  %i.br = load i32, ptr %i.az, align 4, !tbaa !31 ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph49.i41.lr.ph.i, label %.loopexit.i

.lr.ph49.i41.lr.ph.i:                             ; preds = %.preheader.i168
  %wide.trip.count.i42.i = zext nneg i32 %i.br to i64 ; 2 uses
  %invariant.op953 = sub i32 1, %i.br
  br label %.lr.ph49.i41.i

.lr.ph49.i.i:                                     ; preds = %coef_sf2zf.exit.loopexit.i, %.lr.ph49.i.lr.ph.i
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph49.i.lr.ph.i ], [ %indvars.iv.next.i170, %coef_sf2zf.exit.loopexit.i ] ; 3 uses
  %i.bt = trunc i64 %indvars.iv.i169 to i32       ; 4 uses
  %.reass.i.reass.reass = add i32 %i.bt, %invariant.op
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %.lr.ph49.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph49.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03646.i.i = phi double [ 0.000000e+00, %.lr.ph49.i.i ], [ %i.ch, %._crit_edge.i.i ]
  %i.bu = trunc i64 %indvars.iv.i.i to i32        ; 5 uses
  %i.bv = add i32 %.reass.i.reass.reass, %i.bu
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.bv, i32 0) ; 2 uses
  %i.bw = call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.bt) ; 2 uses
  %.not3942.i.i = icmp sgt i32 %spec.select.i.i, %i.bw
  %.pre.i.i = uitofp nsz nneg i32 %i.bu to double ; 2 uses
  br i1 %.not3942.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.bx = call nsz fastcc double @fact(double noundef %.pre.i.i)
  %i.by = xor i32 %i.bu, -1
  %i.bz = add i32 %i.bp, %i.by                    ; 2 uses
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = call nsz fastcc double @fact(double noundef %i.ca)
  %i.cc = fmul nsz double %i.bx, %i.cb
  %i.cd = sub i32 %i.bz, %i.bt
  br label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %.034.lcssa.i.i = phi double [ 0.000000e+00, %bb.k ], [ %i.cx, %bb.l ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !67
  %exp2.i.i = call nnan nsz double @llvm.exp2.f64(double %.pre.i.i)
  %i.cg = fmul nsz double %exp2.i.i, %i.cf
  %i.ch = call nsz double @llvm.fmuladd.f64(double %i.cg, double %.034.lcssa.i.i, double %.03646.i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %coef_sf2zf.exit.loopexit.i, label %bb.k, !llvm.loop !98

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.044.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.cy, %bb.l ] ; 7 uses
  %.03443.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i ], [ %i.cx, %bb.l ]
  %i.ci = uitofp nsz nneg i32 %.044.i.i to double
  %i.cj = call nsz fastcc double @fact(double noundef %i.ci)
  %i.ck = sub nuw nsw i32 %i.bu, %.044.i.i
  %1 = uitofp nsz nneg i32 %i.ck to double
  %i.cl = call nsz fastcc double @fact(double noundef %1)
  %i.cm = fmul nsz double %i.cj, %i.cl
  %i.cn = sub nuw nsw i32 %i.bt, %.044.i.i
  %2 = uitofp nsz nneg i32 %i.cn to double
  %i.co = call nsz fastcc double @fact(double noundef %2)
  %i.cp = fmul nsz double %i.cm, %i.co
  %i.cq = add nsw i32 %i.cd, %.044.i.i
  %i.cr = sitofp nsz i32 %i.cq to double
  %i.cs = call nsz fastcc double @fact(double noundef %i.cr)
  %i.ct = fmul nsz double %i.cp, %i.cs
  %i.cu = fdiv nsz double %i.cc, %i.ct
  %i.cv = and i32 %.044.i.i, 1
  %.not40.i.i = icmp eq i32 %i.cv, 0
  %i.cw = select nsz i1 %.not40.i.i, double 1.000000e+00, double -1.000000e+00
  %i.cx = call nsz double @llvm.fmuladd.f64(double %i.cu, double %i.cw, double %.03443.i.i) ; 2 uses
  %i.cy = add nuw nsw i32 %.044.i.i, 1
  %.not39.not.i.i = icmp samesign ult i32 %.044.i.i, %i.bw
  br i1 %.not39.not.i.i, label %bb.l, label %._crit_edge.i.i, !llvm.loop !99

coef_sf2zf.exit.loopexit.i:                       ; preds = %._crit_edge.i.i
  %i.cz = load ptr, ptr %i.bf, align 8, !tbaa !66
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv.i169
  store double %i.ch, ptr %i.da, align 8, !tbaa !67
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %wide.trip.count.i.i
  br i1 %exitcond.not.i171, label %.preheader.i168, label %.lr.ph49.i.i, !llvm.loop !100

.lr.ph49.i41.i:                                   ; preds = %coef_sf2zf.exit59.loopexit.i, %.lr.ph49.i41.lr.ph.i
  %indvars.iv14.i = phi i64 [ 0, %.lr.ph49.i41.lr.ph.i ], [ %indvars.iv.next15.i, %coef_sf2zf.exit59.loopexit.i ] ; 3 uses
  %i.db = trunc i64 %indvars.iv14.i to i32        ; 4 uses
  %.reass35.i.reass.reass = add i32 %i.db, %invariant.op953
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i53.i, %.lr.ph49.i41.i
  %indvars.iv.i43.i = phi i64 [ 0, %.lr.ph49.i41.i ], [ %indvars.iv.next.i56.i, %._crit_edge.i53.i ] ; 3 uses
  %.03646.i44.i = phi double [ 0.000000e+00, %.lr.ph49.i41.i ], [ %i.dp, %._crit_edge.i53.i ]
  %i.dc = trunc i64 %indvars.iv.i43.i to i32      ; 5 uses
  %i.dd = add i32 %.reass35.i.reass.reass, %i.dc
  %spec.select.i45.i = call i32 @llvm.smax.i32(i32 %i.dd, i32 0) ; 2 uses
  %i.de = call i32 @llvm.smin.i32(i32 %i.dc, i32 %i.db) ; 2 uses
  %.not3942.i46.i = icmp sgt i32 %spec.select.i45.i, %i.de
  %.pre.i47.i = uitofp nsz nneg i32 %i.dc to double ; 2 uses
  br i1 %.not3942.i46.i, label %._crit_edge.i53.i, label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %bb.m
  %i.df = call nsz fastcc double @fact(double noundef %.pre.i47.i)
  %i.dg = xor i32 %i.dc, -1
  %i.dh = add i32 %i.br, %i.dg                    ; 2 uses
  %i.di = uitofp nneg i32 %i.dh to double
  %i.dj = call nsz fastcc double @fact(double noundef %i.di)
  %i.dk = fmul nsz double %i.df, %i.dj
  %i.dl = sub i32 %i.dh, %i.db
  br label %bb.n

._crit_edge.i53.i:                                ; preds = %bb.n, %bb.m
  %.034.lcssa.i54.i = phi double [ 0.000000e+00, %bb.m ], [ %i.ef, %bb.n ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i43.i
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !67
  %exp2.i55.i = call nnan nsz double @llvm.exp2.f64(double %.pre.i47.i)
  %i.do = fmul nsz double %exp2.i55.i, %i.dn
  %i.dp = call nsz double @llvm.fmuladd.f64(double %i.do, double %.034.lcssa.i54.i, double %.03646.i44.i) ; 2 uses
  %indvars.iv.next.i56.i = add nuw nsw i64 %indvars.iv.i43.i, 1 ; 2 uses
  %exitcond.not.i57.i = icmp eq i64 %indvars.iv.next.i56.i, %wide.trip.count.i42.i
  br i1 %exitcond.not.i57.i, label %coef_sf2zf.exit59.loopexit.i, label %bb.m, !llvm.loop !98

bb.n:                                             ; preds = %bb.n, %.lr.ph.i48.i
  %.044.i49.i = phi i32 [ %spec.select.i45.i, %.lr.ph.i48.i ], [ %i.eg, %bb.n ] ; 7 uses
  %.03443.i50.i = phi double [ 0.000000e+00, %.lr.ph.i48.i ], [ %i.ef, %bb.n ]
  %i.dq = uitofp nsz nneg i32 %.044.i49.i to double
  %i.dr = call nsz fastcc double @fact(double noundef %i.dq)
  %i.ds = sub nuw nsw i32 %i.dc, %.044.i49.i
  %3 = uitofp nsz nneg i32 %i.ds to double
  %i.dt = call nsz fastcc double @fact(double noundef %3)
  %i.du = fmul nsz double %i.dr, %i.dt
  %i.dv = sub nuw nsw i32 %i.db, %.044.i49.i
  %4 = uitofp nsz nneg i32 %i.dv to double
  %i.dw = call nsz fastcc double @fact(double noundef %4)
  %i.dx = fmul nsz double %i.du, %i.dw
  %i.dy = add nsw i32 %i.dl, %.044.i49.i
  %i.dz = sitofp nsz i32 %i.dy to double
  %i.ea = call nsz fastcc double @fact(double noundef %i.dz)
  %i.eb = fmul nsz double %i.dx, %i.ea
  %i.ec = fdiv nsz double %i.dk, %i.eb
  %i.ed = and i32 %.044.i49.i, 1
  %.not40.i51.i = icmp eq i32 %i.ed, 0
  %i.ee = select nsz i1 %.not40.i51.i, double 1.000000e+00, double -1.000000e+00
  %i.ef = call nsz double @llvm.fmuladd.f64(double %i.ec, double %i.ee, double %.03443.i50.i) ; 2 uses
  %i.eg = add nuw nsw i32 %.044.i49.i, 1
  %.not39.not.i52.i = icmp samesign ult i32 %.044.i49.i, %i.de
  br i1 %.not39.not.i52.i, label %bb.n, label %._crit_edge.i53.i, !llvm.loop !99

coef_sf2zf.exit59.loopexit.i:                     ; preds = %._crit_edge.i53.i
  %i.eh = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv14.i
  store double %i.dp, ptr %i.ei, align 8, !tbaa !67
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1 ; 2 uses
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next15.i, %wide.trip.count.i42.i
  br i1 %exitcond19.not.i, label %.loopexit.i, label %.lr.ph49.i41.i, !llvm.loop !101

.loopexit.i:                                      ; preds = %coef_sf2zf.exit59.loopexit.i, %.preheader.i168, %bb.i
  call void @av_free(ptr noundef %i.ay) #14
  call void @av_free(ptr noundef %i.bc) #14
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count23.i
  br i1 %exitcond24.not.i, label %convert_pr2zp.exit.thread290, label %bb.i, !llvm.loop !102

convert_pr2zp.exit.thread290:                     ; preds = %.loopexit.i, %bb.h
  store i32 0, ptr %i.ap, align 4, !tbaa !64
  br label %check_stability.exit

bb.o:                                             ; preds = %bb.g
  %i.ej = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.lr.ph6.i, label %check_stability.exit

.lr.ph6.i:                                        ; preds = %bb.o
  %.val160 = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.el = getelementptr inbounds nuw i8, ptr %.val160, i64 104
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !33
  %wide.trip.count17.i = zext nneg i32 %i.ej to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph6.i
  %indvars.iv14.i172 = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next15.i174, %._crit_edge.i ] ; 2 uses
  %i.en = getelementptr inbounds nuw [72 x i8], ptr %i.em, i64 %indvars.iv14.i172 ; 4 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !31 ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i175, label %.preheader.i173

.lr.ph.i175:                                      ; preds = %bb.p
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !66 ; 2 uses
  %wide.trip.count.i176 = zext nneg i32 %i.eo to i64 ; 3 uses
  %min.iters.check595 = icmp eq i32 %i.eo, 1
  br i1 %min.iters.check595, label %scalar.ph594.preheader, label %vector.ph596

vector.ph596:                                     ; preds = %.lr.ph.i175
  %n.vec597 = and i64 %wide.trip.count.i176, 2147483646 ; 3 uses
  br label %vector.body598

vector.body598:                                   ; preds = %vector.body598, %vector.ph596
  %index599 = phi i64 [ 0, %vector.ph596 ], [ %index.next604, %vector.body598 ] ; 2 uses
  %i.es = shl nuw nsw i64 %index599, 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es ; 2 uses
  %wide.vec600 = load <4 x double>, ptr %i.et, align 8, !tbaa !67 ; 2 uses
  %strided.vec601 = shufflevector <4 x double> %wide.vec600, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec602 = shufflevector <4 x double> %wide.vec600, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.eu = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %strided.vec602) ; 2 uses
  %i.ev = extractvalue { <2 x double>, <2 x double> } %i.eu, 0
  %i.ew = extractvalue { <2 x double>, <2 x double> } %i.eu, 1
  %i.ex = fmul nsz <2 x double> %strided.vec601, %i.ew
  %i.ey = fmul nsz <2 x double> %strided.vec601, %i.ev
  %interleaved.vec603 = shufflevector <2 x double> %i.ex, <2 x double> %i.ey, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec603, ptr %i.et, align 8, !tbaa !67
  %index.next604 = add nuw i64 %index599, 2       ; 2 uses
  %i.ez = icmp eq i64 %index.next604, %n.vec597
  br i1 %i.ez, label %middle.block605, label %vector.body598, !llvm.loop !103

middle.block605:                                  ; preds = %vector.body598
  %cmp.n606 = icmp eq i64 %n.vec597, %wide.trip.count.i176
  br i1 %cmp.n606, label %.preheader.i173, label %scalar.ph594.preheader

scalar.ph594.preheader:                           ; preds = %.lr.ph.i175, %middle.block605
  %indvars.iv.i177.ph = phi i64 [ 0, %.lr.ph.i175 ], [ %n.vec597, %middle.block605 ]
  br label %scalar.ph594

.preheader.i173:                                  ; preds = %scalar.ph594, %middle.block605, %bb.p
  %i.fa = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !31 ; 3 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph3.i, label %._crit_edge.i

.lr.ph3.i:                                        ; preds = %.preheader.i173
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !66 ; 2 uses
  %wide.trip.count12.i = zext nneg i32 %i.fb to i64 ; 3 uses
  %min.iters.check581 = icmp eq i32 %i.fb, 1
  br i1 %min.iters.check581, label %scalar.ph580.preheader, label %vector.ph582

vector.ph582:                                     ; preds = %.lr.ph3.i
  %n.vec583 = and i64 %wide.trip.count12.i, 2147483646 ; 3 uses
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph582
  %index585 = phi i64 [ 0, %vector.ph582 ], [ %index.next590, %vector.body584 ] ; 2 uses
  %i.ff = shl nuw nsw i64 %index585, 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ff ; 2 uses
  %wide.vec586 = load <4 x double>, ptr %i.fg, align 8, !tbaa !67 ; 2 uses
  %strided.vec587 = shufflevector <4 x double> %wide.vec586, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec588 = shufflevector <4 x double> %wide.vec586, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fh = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %strided.vec588) ; 2 uses
  %i.fi = extractvalue { <2 x double>, <2 x double> } %i.fh, 0
  %i.fj = extractvalue { <2 x double>, <2 x double> } %i.fh, 1
  %i.fk = fmul nsz <2 x double> %strided.vec587, %i.fj
  %i.fl = fmul nsz <2 x double> %strided.vec587, %i.fi
  %interleaved.vec589 = shufflevector <2 x double> %i.fk, <2 x double> %i.fl, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec589, ptr %i.fg, align 8, !tbaa !67
  %index.next590 = add nuw i64 %index585, 2       ; 2 uses
  %i.fm = icmp eq i64 %index.next590, %n.vec583
  br i1 %i.fm, label %middle.block591, label %vector.body584, !llvm.loop !104

middle.block591:                                  ; preds = %vector.body584
  %cmp.n592 = icmp eq i64 %n.vec583, %wide.trip.count12.i
  br i1 %cmp.n592, label %._crit_edge.i, label %scalar.ph580.preheader

scalar.ph580.preheader:                           ; preds = %.lr.ph3.i, %middle.block591
  %indvars.iv9.i.ph = phi i64 [ 0, %.lr.ph3.i ], [ %n.vec583, %middle.block591 ]
  br label %scalar.ph580

scalar.ph594:                                     ; preds = %scalar.ph594.preheader, %scalar.ph594
  %indvars.iv.i177 = phi i64 [ %indvars.iv.next.i178, %scalar.ph594 ], [ %indvars.iv.i177.ph, %scalar.ph594.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i177, 4
  %i.fn = getelementptr inbounds nuw i8, ptr %i.er, i64 %.idx.i ; 3 uses
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !67 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !67
  %sincos36.i = call nsz { double, double } @llvm.sincos.f64(double %i.fq) ; 2 uses
  %sin37.i = extractvalue { double, double } %sincos36.i, 0
  %cos38.i = extractvalue { double, double } %sincos36.i, 1
  %i.fr = fmul nsz double %i.fo, %cos38.i
  store double %i.fr, ptr %i.fn, align 8, !tbaa !67
  %i.fs = fmul nsz double %i.fo, %sin37.i
  store double %i.fs, ptr %i.fp, align 8, !tbaa !67
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i178, %wide.trip.count.i176
  br i1 %exitcond.not.i179, label %.preheader.i173, label %scalar.ph594, !llvm.loop !105

scalar.ph580:                                     ; preds = %scalar.ph580.preheader, %scalar.ph580
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %scalar.ph580 ], [ %indvars.iv9.i.ph, %scalar.ph580.preheader ] ; 2 uses
  %.idx21.i = shl nuw nsw i64 %indvars.iv9.i, 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fe, i64 %.idx21.i ; 3 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !67 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 8 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !67
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.fw) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.fx = fmul nsz double %i.fu, %cos.i
  store double %i.fx, ptr %i.ft, align 8, !tbaa !67
  %i.fy = fmul nsz double %i.fu, %sin.i
  store double %i.fy, ptr %i.fv, align 8, !tbaa !67
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1 ; 2 uses
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next10.i, %wide.trip.count12.i
  br i1 %exitcond13.not.i, label %._crit_edge.i, label %scalar.ph580, !llvm.loop !106

._crit_edge.i:                                    ; preds = %scalar.ph580, %middle.block591, %.preheader.i173
  %indvars.iv.next15.i174 = add nuw nsw i64 %indvars.iv14.i172, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i174, %wide.trip.count17.i
  br i1 %exitcond18.not.i, label %convert_pr2zp.exit, label %bb.p, !llvm.loop !107

bb.q:                                             ; preds = %bb.g
  %i.fz = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %i.ga = icmp sgt i32 %i.fz, 0
  br i1 %i.ga, label %.lr.ph6.i180, label %check_stability.exit

.lr.ph6.i180:                                     ; preds = %bb.q
  %.val161 = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.gb = getelementptr inbounds nuw i8, ptr %.val161, i64 104
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !33
  %wide.trip.count17.i181 = zext nneg i32 %i.fz to i64
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i184, %.lr.ph6.i180
  %indvars.iv14.i182 = phi i64 [ 0, %.lr.ph6.i180 ], [ %indvars.iv.next15.i185, %._crit_edge.i184 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [72 x i8], ptr %i.gc, i64 %indvars.iv14.i182 ; 4 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !31 ; 3 uses
  %i.gf = icmp sgt i32 %i.ge, 0
  br i1 %i.gf, label %.lr.ph.i196, label %.preheader.i183

.lr.ph.i196:                                      ; preds = %bb.r
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !66 ; 2 uses
  %wide.trip.count.i197 = zext nneg i32 %i.ge to i64 ; 3 uses
  %min.iters.check567 = icmp eq i32 %i.ge, 1
  br i1 %min.iters.check567, label %scalar.ph566.preheader, label %vector.ph568

end_hunk_0
