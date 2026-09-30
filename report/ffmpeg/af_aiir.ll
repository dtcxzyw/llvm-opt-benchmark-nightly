Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_aiir?download=true
inline.NumInlined: 30
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 47
begin_hunk_0_@av_frame_clone

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @av_default_item_name(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal range(i32 -1163346256, 1) i32 @config_output(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !62     ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !61
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 76 ; 15 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !57   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 %i.k, ptr %i.l, align 8, !tbaa !34
  %i.m = sext i32 %i.k to i64
  %i.n = tail call noalias ptr @av_calloc(i64 noundef %i.m, i64 noundef 72) #14 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 3 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !33
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %convert_zp2tf.exit, label %bb.b

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
  %invariant.op952 = sub i32 1, %i.br
  br label %.lr.ph49.i41.i

.lr.ph49.i.i:                                     ; preds = %coef_sf2zf.exit.loopexit.i, %.lr.ph49.i.lr.ph.i
  %indvars.iv.i169 = phi i64 [ 0, %.lr.ph49.i.lr.ph.i ], [ %indvars.iv.next.i170, %coef_sf2zf.exit.loopexit.i ] ; 3 uses
  %i.bt = trunc i64 %indvars.iv.i169 to i32       ; 4 uses
  %.reass.i.reass.reass = add i32 %i.bt, %invariant.op
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %.lr.ph49.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph49.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %.03646.i.i = phi double [ 0.000000e+00, %.lr.ph49.i.i ], [ %i.ch, %._crit_edge.i.i ]
  %i.bu = trunc i64 %indvars.iv.i.i to i32        ; 6 uses
  %i.bv = add i32 %.reass.i.reass.reass, %i.bu
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.bv, i32 0) ; 2 uses
  %i.bw = call i32 @llvm.smin.i32(i32 %i.bu, i32 %i.bt) ; 2 uses
  %.not3942.i.i = icmp sgt i32 %spec.select.i.i, %i.bw
  br i1 %.not3942.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.k
  %1 = uitofp nsz nneg i32 %i.bu to double
  %i.bx = call nsz fastcc double @fact(double noundef %1)
  %i.by = xor i32 %i.bu, -1
  %i.bz = add i32 %i.bp, %i.by                    ; 2 uses
  %i.ca = uitofp nneg i32 %i.bz to double
  %i.cb = call nsz fastcc double @fact(double noundef %i.ca)
  %i.cc = fmul nsz double %i.bx, %i.cb
  %i.cd = sub i32 %i.bz, %i.bt
  br label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.l, %bb.k
  %.034.lcssa.i.i = phi double [ 0.000000e+00, %bb.k ], [ %i.cz, %bb.l ]
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %indvars.iv.i.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !67
  %2 = call i32 @llvm.umin.i32(i32 %i.bu, i32 1024)
  %exp2.i.i = call nnan nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %2)
  %i.cg = fmul nsz double %exp2.i.i, %i.cf
  %i.ch = call nsz double @llvm.fmuladd.f64(double %i.cg, double %.034.lcssa.i.i, double %.03646.i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %coef_sf2zf.exit.loopexit.i, label %bb.k, !llvm.loop !98

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i
  %.044.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i ], [ %i.da, %bb.l ] ; 7 uses
  %.03443.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i ], [ %i.cz, %bb.l ]
  %i.ci = uitofp nsz nneg i32 %.044.i.i to double
  %i.cj = call nsz fastcc double @fact(double noundef %i.ci)
  %i.ck = sub nsw i32 %i.bu, %.044.i.i
  %i.cl = sitofp nsz i32 %i.ck to double
  %i.cm = call nsz fastcc double @fact(double noundef %i.cl)
  %i.cn = fmul nsz double %i.cj, %i.cm
  %i.co = sub nsw i32 %i.bt, %.044.i.i
  %i.cp = sitofp nsz i32 %i.co to double
  %i.cq = call nsz fastcc double @fact(double noundef %i.cp)
  %i.cr = fmul nsz double %i.cn, %i.cq
  %i.cs = add nsw i32 %i.cd, %.044.i.i
  %i.ct = sitofp nsz i32 %i.cs to double
  %i.cu = call nsz fastcc double @fact(double noundef %i.ct)
  %i.cv = fmul nsz double %i.cr, %i.cu
  %i.cw = fdiv nsz double %i.cc, %i.cv
  %i.cx = and i32 %.044.i.i, 1
  %.not40.i.i = icmp eq i32 %i.cx, 0
  %i.cy = select nsz i1 %.not40.i.i, double 1.000000e+00, double -1.000000e+00
  %i.cz = call nsz double @llvm.fmuladd.f64(double %i.cw, double %i.cy, double %.03443.i.i) ; 2 uses
  %i.da = add nuw nsw i32 %.044.i.i, 1
  %.not39.not.i.i = icmp samesign ult i32 %.044.i.i, %i.bw
  br i1 %.not39.not.i.i, label %bb.l, label %._crit_edge.i.i, !llvm.loop !99

coef_sf2zf.exit.loopexit.i:                       ; preds = %._crit_edge.i.i
  %i.db = load ptr, ptr %i.bf, align 8, !tbaa !66
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i169
  store double %i.ch, ptr %i.dc, align 8, !tbaa !67
  %indvars.iv.next.i170 = add nuw nsw i64 %indvars.iv.i169, 1 ; 2 uses
  %exitcond.not.i171 = icmp eq i64 %indvars.iv.next.i170, %wide.trip.count.i.i
  br i1 %exitcond.not.i171, label %.preheader.i168, label %.lr.ph49.i.i, !llvm.loop !100

.lr.ph49.i41.i:                                   ; preds = %coef_sf2zf.exit59.loopexit.i, %.lr.ph49.i41.lr.ph.i
  %indvars.iv14.i = phi i64 [ 0, %.lr.ph49.i41.lr.ph.i ], [ %indvars.iv.next15.i, %coef_sf2zf.exit59.loopexit.i ] ; 3 uses
  %i.dd = trunc i64 %indvars.iv14.i to i32        ; 4 uses
  %.reass35.i.reass.reass = add i32 %i.dd, %invariant.op952
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i53.i, %.lr.ph49.i41.i
  %indvars.iv.i43.i = phi i64 [ 0, %.lr.ph49.i41.i ], [ %indvars.iv.next.i56.i, %._crit_edge.i53.i ] ; 3 uses
  %.03646.i44.i = phi double [ 0.000000e+00, %.lr.ph49.i41.i ], [ %i.dr, %._crit_edge.i53.i ]
  %i.de = trunc i64 %indvars.iv.i43.i to i32      ; 6 uses
  %i.df = add i32 %.reass35.i.reass.reass, %i.de
  %spec.select.i45.i = call i32 @llvm.smax.i32(i32 %i.df, i32 0) ; 2 uses
  %i.dg = call i32 @llvm.smin.i32(i32 %i.de, i32 %i.dd) ; 2 uses
  %.not3942.i46.i = icmp sgt i32 %spec.select.i45.i, %i.dg
  br i1 %.not3942.i46.i, label %._crit_edge.i53.i, label %.lr.ph.i48.i

.lr.ph.i48.i:                                     ; preds = %bb.m
  %3 = uitofp nsz nneg i32 %i.de to double
  %i.dh = call nsz fastcc double @fact(double noundef %3)
  %i.di = xor i32 %i.de, -1
  %i.dj = add i32 %i.br, %i.di                    ; 2 uses
  %i.dk = uitofp nneg i32 %i.dj to double
  %i.dl = call nsz fastcc double @fact(double noundef %i.dk)
  %i.dm = fmul nsz double %i.dh, %i.dl
  %i.dn = sub i32 %i.dj, %i.dd
  br label %bb.n

._crit_edge.i53.i:                                ; preds = %bb.n, %bb.m
  %.034.lcssa.i54.i = phi double [ 0.000000e+00, %bb.m ], [ %i.ej, %bb.n ]
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i43.i
  %i.dp = load double, ptr %i.do, align 8, !tbaa !67
  %4 = call i32 @llvm.umin.i32(i32 %i.de, i32 1024)
  %exp2.i54.i = call nnan nsz double @llvm.ldexp.f64.i32(double 1.000000e+00, i32 %4)
  %i.dq = fmul nsz double %exp2.i54.i, %i.dp
  %i.dr = call nsz double @llvm.fmuladd.f64(double %i.dq, double %.034.lcssa.i54.i, double %.03646.i44.i) ; 2 uses
  %indvars.iv.next.i56.i = add nuw nsw i64 %indvars.iv.i43.i, 1 ; 2 uses
  %exitcond.not.i57.i = icmp eq i64 %indvars.iv.next.i56.i, %wide.trip.count.i42.i
  br i1 %exitcond.not.i57.i, label %coef_sf2zf.exit59.loopexit.i, label %bb.m, !llvm.loop !98

bb.n:                                             ; preds = %bb.n, %.lr.ph.i48.i
  %.044.i49.i = phi i32 [ %spec.select.i45.i, %.lr.ph.i48.i ], [ %i.ek, %bb.n ] ; 7 uses
  %.03443.i50.i = phi double [ 0.000000e+00, %.lr.ph.i48.i ], [ %i.ej, %bb.n ]
  %i.ds = uitofp nsz nneg i32 %.044.i49.i to double
  %i.dt = call nsz fastcc double @fact(double noundef %i.ds)
  %i.du = sub nsw i32 %i.de, %.044.i49.i
  %i.dv = sitofp nsz i32 %i.du to double
  %i.dw = call nsz fastcc double @fact(double noundef %i.dv)
  %i.dx = fmul nsz double %i.dt, %i.dw
  %i.dy = sub nsw i32 %i.dd, %.044.i49.i
  %i.dz = sitofp nsz i32 %i.dy to double
  %i.ea = call nsz fastcc double @fact(double noundef %i.dz)
  %i.eb = fmul nsz double %i.dx, %i.ea
  %i.ec = add nsw i32 %i.dn, %.044.i49.i
  %i.ed = sitofp nsz i32 %i.ec to double
  %i.ee = call nsz fastcc double @fact(double noundef %i.ed)
  %i.ef = fmul nsz double %i.eb, %i.ee
  %i.eg = fdiv nsz double %i.dm, %i.ef
  %i.eh = and i32 %.044.i49.i, 1
  %.not40.i51.i = icmp eq i32 %i.eh, 0
  %i.ei = select nsz i1 %.not40.i51.i, double 1.000000e+00, double -1.000000e+00
  %i.ej = call nsz double @llvm.fmuladd.f64(double %i.eg, double %i.ei, double %.03443.i50.i) ; 2 uses
  %i.ek = add nuw nsw i32 %.044.i49.i, 1
  %.not39.not.i52.i = icmp samesign ult i32 %.044.i49.i, %i.dg
  br i1 %.not39.not.i52.i, label %bb.n, label %._crit_edge.i53.i, !llvm.loop !99

coef_sf2zf.exit59.loopexit.i:                     ; preds = %._crit_edge.i53.i
  %i.el = load ptr, ptr %i.bk, align 8, !tbaa !66
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %indvars.iv14.i
  store double %i.dr, ptr %i.em, align 8, !tbaa !67
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
  %i.en = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %i.eo = icmp sgt i32 %i.en, 0
  br i1 %i.eo, label %.lr.ph6.i, label %check_stability.exit

.lr.ph6.i:                                        ; preds = %bb.o
  %.val160 = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.ep = getelementptr inbounds nuw i8, ptr %.val160, i64 104
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !33
  %wide.trip.count17.i = zext nneg i32 %i.en to i64
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph6.i
  %indvars.iv14.i172 = phi i64 [ 0, %.lr.ph6.i ], [ %indvars.iv.next15.i174, %._crit_edge.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [72 x i8], ptr %i.eq, i64 %indvars.iv14.i172 ; 4 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !31 ; 3 uses
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %.lr.ph.i175, label %.preheader.i173

.lr.ph.i175:                                      ; preds = %bb.p
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !66 ; 2 uses
  %wide.trip.count.i176 = zext nneg i32 %i.es to i64 ; 3 uses
  %min.iters.check595 = icmp eq i32 %i.es, 1
  br i1 %min.iters.check595, label %scalar.ph594.preheader, label %vector.ph596

vector.ph596:                                     ; preds = %.lr.ph.i175
  %n.vec597 = and i64 %wide.trip.count.i176, 2147483646 ; 3 uses
  br label %vector.body598

vector.body598:                                   ; preds = %vector.body598, %vector.ph596
  %index599 = phi i64 [ 0, %vector.ph596 ], [ %index.next604, %vector.body598 ] ; 2 uses
  %i.ew = shl nuw nsw i64 %index599, 4
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ew ; 2 uses
  %wide.vec600 = load <4 x double>, ptr %i.ex, align 8, !tbaa !67 ; 2 uses
  %strided.vec601 = shufflevector <4 x double> %wide.vec600, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec602 = shufflevector <4 x double> %wide.vec600, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ey = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %strided.vec602) ; 2 uses
  %i.ez = extractvalue { <2 x double>, <2 x double> } %i.ey, 0
  %i.fa = extractvalue { <2 x double>, <2 x double> } %i.ey, 1
  %i.fb = fmul nsz <2 x double> %strided.vec601, %i.fa
  %i.fc = fmul nsz <2 x double> %strided.vec601, %i.ez
  %interleaved.vec603 = shufflevector <2 x double> %i.fb, <2 x double> %i.fc, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec603, ptr %i.ex, align 8, !tbaa !67
  %index.next604 = add nuw i64 %index599, 2       ; 2 uses
  %i.fd = icmp eq i64 %index.next604, %n.vec597
  br i1 %i.fd, label %middle.block605, label %vector.body598, !llvm.loop !103

middle.block605:                                  ; preds = %vector.body598
  %cmp.n606 = icmp eq i64 %n.vec597, %wide.trip.count.i176
  br i1 %cmp.n606, label %.preheader.i173, label %scalar.ph594.preheader

scalar.ph594.preheader:                           ; preds = %.lr.ph.i175, %middle.block605
  %indvars.iv.i177.ph = phi i64 [ 0, %.lr.ph.i175 ], [ %n.vec597, %middle.block605 ]
  br label %scalar.ph594

.preheader.i173:                                  ; preds = %scalar.ph594, %middle.block605, %bb.p
  %i.fe = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !31 ; 3 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph3.i, label %._crit_edge.i

.lr.ph3.i:                                        ; preds = %.preheader.i173
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !66 ; 2 uses
  %wide.trip.count12.i = zext nneg i32 %i.ff to i64 ; 3 uses
  %min.iters.check581 = icmp eq i32 %i.ff, 1
  br i1 %min.iters.check581, label %scalar.ph580.preheader, label %vector.ph582

vector.ph582:                                     ; preds = %.lr.ph3.i
  %n.vec583 = and i64 %wide.trip.count12.i, 2147483646 ; 3 uses
  br label %vector.body584

vector.body584:                                   ; preds = %vector.body584, %vector.ph582
  %index585 = phi i64 [ 0, %vector.ph582 ], [ %index.next590, %vector.body584 ] ; 2 uses
  %i.fj = shl nuw nsw i64 %index585, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fj ; 2 uses
  %wide.vec586 = load <4 x double>, ptr %i.fk, align 8, !tbaa !67 ; 2 uses
  %strided.vec587 = shufflevector <4 x double> %wide.vec586, <4 x double> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %strided.vec588 = shufflevector <4 x double> %wide.vec586, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.fl = call nsz { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double> %strided.vec588) ; 2 uses
  %i.fm = extractvalue { <2 x double>, <2 x double> } %i.fl, 0
  %i.fn = extractvalue { <2 x double>, <2 x double> } %i.fl, 1
  %i.fo = fmul nsz <2 x double> %strided.vec587, %i.fn
  %i.fp = fmul nsz <2 x double> %strided.vec587, %i.fm
  %interleaved.vec589 = shufflevector <2 x double> %i.fo, <2 x double> %i.fp, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec589, ptr %i.fk, align 8, !tbaa !67
  %index.next590 = add nuw i64 %index585, 2       ; 2 uses
  %i.fq = icmp eq i64 %index.next590, %n.vec583
  br i1 %i.fq, label %middle.block591, label %vector.body584, !llvm.loop !104

middle.block591:                                  ; preds = %vector.body584
  %cmp.n592 = icmp eq i64 %n.vec583, %wide.trip.count12.i
  br i1 %cmp.n592, label %._crit_edge.i, label %scalar.ph580.preheader

scalar.ph580.preheader:                           ; preds = %.lr.ph3.i, %middle.block591
  %indvars.iv9.i.ph = phi i64 [ 0, %.lr.ph3.i ], [ %n.vec583, %middle.block591 ]
  br label %scalar.ph580

scalar.ph594:                                     ; preds = %scalar.ph594.preheader, %scalar.ph594
  %indvars.iv.i177 = phi i64 [ %indvars.iv.next.i178, %scalar.ph594 ], [ %indvars.iv.i177.ph, %scalar.ph594.preheader ] ; 2 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv.i177, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ev, i64 %.idx.i ; 3 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !67 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !67
  %sincos36.i = call nsz { double, double } @llvm.sincos.f64(double %i.fu) ; 2 uses
  %sin37.i = extractvalue { double, double } %sincos36.i, 0
  %cos38.i = extractvalue { double, double } %sincos36.i, 1
  %i.fv = fmul nsz double %i.fs, %cos38.i
  store double %i.fv, ptr %i.fr, align 8, !tbaa !67
  %i.fw = fmul nsz double %i.fs, %sin37.i
  store double %i.fw, ptr %i.ft, align 8, !tbaa !67
  %indvars.iv.next.i178 = add nuw nsw i64 %indvars.iv.i177, 1 ; 2 uses
  %exitcond.not.i179 = icmp eq i64 %indvars.iv.next.i178, %wide.trip.count.i176
  br i1 %exitcond.not.i179, label %.preheader.i173, label %scalar.ph594, !llvm.loop !105

scalar.ph580:                                     ; preds = %scalar.ph580.preheader, %scalar.ph580
  %indvars.iv9.i = phi i64 [ %indvars.iv.next10.i, %scalar.ph580 ], [ %indvars.iv9.i.ph, %scalar.ph580.preheader ] ; 2 uses
  %.idx21.i = shl nuw nsw i64 %indvars.iv9.i, 4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.idx21.i ; 3 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !67 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 8 ; 2 uses
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !67
  %sincos.i = call nsz { double, double } @llvm.sincos.f64(double %i.ga) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0
  %cos.i = extractvalue { double, double } %sincos.i, 1
  %i.gb = fmul nsz double %i.fy, %cos.i
  store double %i.gb, ptr %i.fx, align 8, !tbaa !67
  %i.gc = fmul nsz double %i.fy, %sin.i
  store double %i.gc, ptr %i.fz, align 8, !tbaa !67
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1 ; 2 uses
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next10.i, %wide.trip.count12.i
  br i1 %exitcond13.not.i, label %._crit_edge.i, label %scalar.ph580, !llvm.loop !106

._crit_edge.i:                                    ; preds = %scalar.ph580, %middle.block591, %.preheader.i173
  %indvars.iv.next15.i174 = add nuw nsw i64 %indvars.iv14.i172, 1 ; 2 uses
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next15.i174, %wide.trip.count17.i
  br i1 %exitcond18.not.i, label %convert_pr2zp.exit, label %bb.p, !llvm.loop !107

bb.q:                                             ; preds = %bb.g
  %i.gd = load i32, ptr %i.j, align 4, !tbaa !57  ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.lr.ph6.i180, label %check_stability.exit

.lr.ph6.i180:                                     ; preds = %bb.q
  %.val161 = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.gf = getelementptr inbounds nuw i8, ptr %.val161, i64 104
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !33
  %wide.trip.count17.i181 = zext nneg i32 %i.gd to i64
end_hunk_0
begin_hunk_1_@drawtext:bb.a
  %.pre91.6 = shl nsw i32 %.pre89.6, 3
  %.pre93.6 = or disjoint i32 %.pre91.6, 6
  %.pre95.6 = sext i32 %.pre93.6 to i64
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pre-phi96.6 = phi i64 [ %.pre95.6, %bb.cz ], [ %.pre-phi88.6, %bb.cy ]
  %i.jn = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi96.6
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !71
  %i.jp = and i8 %i.jo, 1
  %.not27.7.6 = icmp eq i8 %i.jp, 0
  br i1 %.not27.7.6, label %.preheader.7, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ih, i64 28
  store i32 -572662307, ptr %i.jq, align 1, !tbaa !71
  br label %.preheader.7

.preheader.7:                                     ; preds = %bb.db, %bb.da
  %i.jr = load i32, ptr %i.c, align 8, !tbaa !31
  %i.js = sext i32 %i.jr to i64
  %i.jt = getelementptr i8, ptr %i.ih, i64 %i.js  ; 8 uses
  %i.ju = load i8, ptr %i.f, align 1, !tbaa !71
  %i.jv = sext i8 %i.ju to i32
  %i.jw = shl nsw i32 %i.jv, 3
  %i.jx = or disjoint i32 %i.jw, 7
  %i.jy = sext i32 %i.jx to i64                   ; 2 uses
  %i.jz = getelementptr inbounds i8, ptr %i.a, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !71
  %.not27.77 = icmp sgt i8 %i.ka, -1
  br i1 %.not27.77, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.preheader.7
  store i32 -572662307, ptr %i.jt, align 1, !tbaa !71
  %.pre35.7 = load i8, ptr %i.f, align 1, !tbaa !71
  %.pre42.7 = sext i8 %.pre35.7 to i32
  %.pre43.7 = shl nsw i32 %.pre42.7, 3
  %.pre45.7 = or disjoint i32 %.pre43.7, 7
  %.pre47.7 = sext i32 %.pre45.7 to i64
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.preheader.7
  %.pre-phi48.7 = phi i64 [ %.pre47.7, %bb.dc ], [ %i.jy, %.preheader.7 ] ; 2 uses
  %i.kb = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi48.7
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !71
  %i.kd = and i8 %i.kc, 64
  %.not27.1.7 = icmp eq i8 %i.kd, 0
  br i1 %.not27.1.7, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  store i32 -572662307, ptr %i.ke, align 1, !tbaa !71
  %.pre36.7 = load i8, ptr %i.f, align 1, !tbaa !71
  %.pre49.7 = sext i8 %.pre36.7 to i32
  %.pre51.7 = shl nsw i32 %.pre49.7, 3
  %.pre53.7 = or disjoint i32 %.pre51.7, 7
  %.pre55.7 = sext i32 %.pre53.7 to i64
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.pre-phi56.7 = phi i64 [ %.pre55.7, %bb.de ], [ %.pre-phi48.7, %bb.dd ] ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi56.7
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !71
  %i.kh = and i8 %i.kg, 32
  %.not27.2.7 = icmp eq i8 %i.kh, 0
  br i1 %.not27.2.7, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  store i32 -572662307, ptr %i.ki, align 1, !tbaa !71
  %.pre37.7 = load i8, ptr %i.f, align 1, !tbaa !71
  %.pre57.7 = sext i8 %.pre37.7 to i32
  %.pre59.7 = shl nsw i32 %.pre57.7, 3
  %.pre61.7 = or disjoint i32 %.pre59.7, 7
  %.pre63.7 = sext i32 %.pre61.7 to i64
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.pre-phi64.7 = phi i64 [ %.pre63.7, %bb.dg ], [ %.pre-phi56.7, %bb.df ] ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi64.7
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !71
  %i.kl = and i8 %i.kk, 16
  %.not27.3.7 = icmp eq i8 %i.kl, 0
  br i1 %.not27.3.7, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.km = getelementptr inbounds nuw i8, ptr %i.jt, i64 12
  store i32 -572662307, ptr %i.km, align 1, !tbaa !71
  %.pre38.7 = load i8, ptr %i.f, align 1, !tbaa !71
  %.pre65.7 = sext i8 %.pre38.7 to i32
  %.pre67.7 = shl nsw i32 %.pre65.7, 3
  %.pre69.7 = or disjoint i32 %.pre67.7, 7
  %.pre71.7 = sext i32 %.pre69.7 to i64
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.pre-phi72.7 = phi i64 [ %.pre71.7, %bb.di ], [ %.pre-phi64.7, %bb.dh ] ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi72.7
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !71
  %i.kp = and i8 %i.ko, 8
  %.not27.4.7 = icmp eq i8 %i.kp, 0
  br i1 %.not27.4.7, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  store i32 -572662307, ptr %i.kq, align 1, !tbaa !71
  %.pre39.7 = load i8, ptr %i.f, align 1, !tbaa !71
  %.pre73.7 = sext i8 %.pre39.7 to i32
  %.pre75.7 = shl nsw i32 %.pre73.7, 3
  %.pre77.7 = or disjoint i32 %.pre75.7, 7
  %.pre79.7 = sext i32 %.pre77.7 to i64
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.pre-phi80.7 = phi i64 [ %.pre79.7, %bb.dk ], [ %.pre-phi72.7, %bb.dj ] ; 2 uses
  %i.kr = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi80.7
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !71
  %i.kt = and i8 %i.ks, 4
  %.not27.5.7 = icmp eq i8 %i.kt, 0
  br i1 %.not27.5.7, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jt, i64 20
  store i32 -572662307, ptr %i.ku, align 1, !tbaa !71
  %.pre40.7 = load i8, ptr %i.f, align 1, !tbaa !71
  %.pre81.7 = sext i8 %.pre40.7 to i32
  %.pre83.7 = shl nsw i32 %.pre81.7, 3
  %.pre85.7 = or disjoint i32 %.pre83.7, 7
  %.pre87.7 = sext i32 %.pre85.7 to i64
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.pre-phi88.7 = phi i64 [ %.pre87.7, %bb.dm ], [ %.pre-phi80.7, %bb.dl ] ; 2 uses
  %i.kv = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi88.7
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !71
  %i.kx = and i8 %i.kw, 2
  %.not27.6.7 = icmp eq i8 %i.kx, 0
  br i1 %.not27.6.7, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jt, i64 24
  store i32 -572662307, ptr %i.ky, align 1, !tbaa !71
  %.pre41.7 = load i8, ptr %i.f, align 1, !tbaa !71
  %.pre89.7 = sext i8 %.pre41.7 to i32
  %.pre91.7 = shl nsw i32 %.pre89.7, 3
  %.pre93.7 = or disjoint i32 %.pre91.7, 7
  %.pre95.7 = sext i32 %.pre93.7 to i64
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pre-phi96.7 = phi i64 [ %.pre95.7, %bb.do ], [ %.pre-phi88.7, %bb.dn ]
  %i.kz = getelementptr inbounds i8, ptr %i.a, i64 %.pre-phi96.7
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !71
  %i.lb = and i8 %i.la, 1
  %.not27.7.7 = icmp eq i8 %i.lb, 0
  br i1 %.not27.7.7, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.lc = getelementptr inbounds nuw i8, ptr %i.jt, i64 28
  store i32 -572662307, ptr %i.lc, align 1, !tbaa !71
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !71
  %.not = icmp eq i8 %i.le, 0
  br i1 %.not, label %._crit_edge, label %.preheader, !llvm.loop !300

._crit_edge:                                      ; preds = %bb.dr, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.atan2.f64(double, double) #12

declare ptr @avpriv_cga_font_get() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #3

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ff_set_sample_formats_from_list2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <2 x double>, <2 x double> } @llvm.sincos.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.ceil.v2f64(<2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!12 = !{!"p1 omnipotent char", !9, i64 0}
!13 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!16 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!17 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!18 = !{!"AVFilterContext", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !15, i64 32, !6, i64 40, !13, i64 48, !15, i64 56, !6, i64 64, !9, i64 72, !16, i64 80, !6, i64 88, !6, i64 92, !12, i64 96, !6, i64 104, !17, i64 112, !6, i64 120}
!19 = !{!18, !9, i64 72}
!20 = !{!"double", !5, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!23 = !{!"p1 _ZTS10IIRChannel", !9, i64 0}
!24 = !{!"AudioIIRContext", !10, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !21, i64 88, !22, i64 96, !23, i64 104, !6, i64 112, !6, i64 116, !9, i64 120}
!25 = !{!24, !12, i64 8}
!26 = !{!24, !12, i64 16}
!27 = !{!24, !12, i64 24}
!28 = !{!24, !6, i64 68}
!29 = !{!24, !6, i64 116}
!30 = !{!12, !12, i64 0}
!31 = !{!6, !6, i64 0}
!32 = !{!24, !6, i64 72}
!33 = !{!24, !23, i64 104}
!34 = !{!24, !6, i64 112}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!37 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!38 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!39 = !{!"p1 _ZTS15AVFilterFormats", !9, i64 0}
!40 = !{!"p1 _ZTS22AVFilterChannelLayouts", !9, i64 0}
!41 = !{!"AVFilterFormatsConfig", !39, i64 0, !39, i64 8, !40, i64 16, !39, i64 24, !39, i64 32, !39, i64 40}
!42 = !{!"AVFilterLink", !36, i64 0, !13, i64 8, !36, i64 16, !13, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !37, i64 72, !21, i64 96, !38, i64 104, !6, i64 112, !6, i64 116, !41, i64 120, !41, i64 168}
!43 = !{!18, !15, i64 56}
!44 = !{!"p1 _ZTS12AVFilterLink", !9, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!24, !6, i64 64}
!47 = !{!"p2 omnipotent char", !14, i64 0}
!48 = !{!"long", !5, i64 0}
!49 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!50 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!51 = !{!"AVFrame", !5, i64 0, !5, i64 64, !47, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !21, i64 124, !48, i64 136, !48, i64 144, !21, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !49, i64 248, !6, i64 256, !38, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !48, i64 304, !50, i64 312, !6, i64 320, !17, i64 328, !17, i64 336, !48, i64 344, !48, i64 352, !48, i64 360, !48, i64 368, !9, i64 376, !37, i64 384, !48, i64 408, !6, i64 416}
!52 = !{!51, !6, i64 112}
!53 = !{!"ThreadData", !22, i64 0, !22, i64 8}
!54 = !{!53, !22, i64 0}
!55 = !{!53, !22, i64 8}
!56 = !{!24, !9, i64 120}
!57 = !{!42, !6, i64 76}
!58 = !{!"p1 _ZTS13BiquadContext", !9, i64 0}
!59 = !{!"IIRChannel", !5, i64 0, !5, i64 8, !20, i64 24, !5, i64 32, !20, i64 48, !58, i64 56, !6, i64 64}
!60 = !{!24, !22, i64 96}
!61 = !{!18, !15, i64 32}
!62 = !{!42, !36, i64 0}
!63 = !{!"llvm.loop.peeled.count", i32 1}
!64 = !{!24, !6, i64 60}
!65 = !{!"p1 double", !9, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!20, !20, i64 0}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!59, !20, i64 24}
!71 = !{!5, !5, i64 0}
!72 = !{!"llvm.loop.unroll.disable"}
!73 = !{!24, !6, i64 56}
!74 = !{!59, !58, i64 56}
!75 = !{!59, !20, i64 48}
!76 = !{!24, !20, i64 32}
!77 = !{!24, !20, i64 48}
!78 = !{!51, !47, i64 96}
!79 = !{!24, !20, i64 40}
!80 = !{!"float", !5, i64 0}
!81 = !{!80, !80, i64 0}
!82 = !{!"llvm.loop.unswitch.partial.disable"}
!83 = !{!"BiquadContext", !5, i64 0, !5, i64 24, !20, i64 48, !20, i64 56}
!84 = !{!83, !20, i64 48}
!85 = !{!83, !20, i64 56}
!86 = !{!"short", !5, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!9, !9, i64 0}
!89 = distinct !{!89, !35}
!90 = !{!"p1 _ZTS21AVFilterFormatsConfig", !9, i64 0}
!91 = !{!90, !90, i64 0}
!92 = distinct !{!92, !35}
!93 = !{!22, !22, i64 0}
!94 = !{!42, !36, i64 16}
!95 = !{!59, !6, i64 64}
!96 = !{!51, !48, i64 136}
!97 = distinct !{!97, !35, !63}
!98 = distinct !{!98, !35}
!99 = distinct !{!99, !35}
!100 = distinct !{!100, !35}
!101 = distinct !{!101, !35}
!102 = distinct !{!102, !35}
!103 = distinct !{!103, !35, !68, !69}
!104 = distinct !{!104, !35, !68, !69}
!105 = distinct !{!105, !35, !69, !68}
!106 = distinct !{!106, !35, !69, !68}
!107 = distinct !{!107, !35}
!108 = distinct !{!108, !35, !68, !69}
!109 = distinct !{!109, !35, !68, !69}
!110 = distinct !{!110, !35, !69, !68}
!111 = distinct !{!111, !35, !69, !68}
!112 = distinct !{!112, !35}
!113 = distinct !{!113, !35}
!114 = distinct !{!114, !35}
!115 = distinct !{!115, !35}
!116 = distinct !{!116, !35}
!117 = distinct !{!117, !35}
!118 = distinct !{!118, !35}
!119 = distinct !{!119, !35}
!120 = distinct !{!120, !35}
!121 = distinct !{!121, !35}
!122 = distinct !{!122, !35}
!123 = distinct !{!123, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !35, !68, !69}
!127 = distinct !{!127, !35, !68}
!128 = distinct !{!128, !35}
!129 = distinct !{!129, !35}
!130 = distinct !{!130, !35}
!131 = distinct !{!131, !35}
!132 = distinct !{!132, !"LVerDomain"}
!133 = distinct !{!133, !132}
!134 = distinct !{!134, !132}
!135 = distinct !{!135, !132}
!136 = distinct !{!136, !35, !68, !69}
!137 = distinct !{!137, !35}
!138 = distinct !{!138, !35, !68}
!139 = distinct !{!139, !35}
!140 = distinct !{!140, !"LVerDomain"}
!141 = distinct !{!141, !140}
end_hunk_1
