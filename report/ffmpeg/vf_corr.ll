Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_corr?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@do_corr:bb.a
  %1 = alloca %struct.ThreadData, align 8         ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !111  ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19   ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  %i.m = call i32 @ff_framesync_dualinput_get(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #11 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.p = load i32, ptr %i.o, align 8, !tbaa !112
  %i.q = icmp eq i32 %i.p, 0
  %i.r = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.s = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !113  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 312 ; 3 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.r, ptr %i.v, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 268 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 272 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !51
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 168 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !47
  %. = call i32 @llvm.smin.i32(i32 %i.aa, i32 %i.ac)
  %i.ad = call i32 @ff_filter_execute(ptr noundef nonnull %i.j, ptr noundef %i.x, ptr noundef nonnull %1, ptr noundef null, i32 noundef %.) #11 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 248 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !31 ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 0
  %.pre = load i32, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  br i1 %i.ag, label %.lr.ph149, label %._crit_edge150

.lr.ph149:                                        ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 180 ; 3 uses
  %i.ai = icmp sgt i32 %.pre, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 252 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 200 ; 3 uses
  br i1 %i.ai, label %.lr.ph149.split.us, label %.lr.ph149.split.preheader

.lr.ph149.split.preheader:                        ; preds = %.lr.ph149
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %.lr.ph149.split.preheader280, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph149.split.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index
  %wide.load = load <4 x i32>, ptr %i.al, align 4, !tbaa !51
  %i.am = sitofp nsz <4 x i32> %wide.load to <4 x float>
  %i.an = fdiv nnan nsz <4 x float> splat (float 1.000000e+00), %i.am
  %i.ao = fpext nnan nsz <4 x float> %i.an to <4 x double>
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index
  %wide.load237 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !51
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index
  %wide.load238 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !51
  %i.ar = mul nsw <4 x i32> %wide.load238, %wide.load237
  %i.as = sitofp nsz <4 x i32> %i.ar to <4 x double>
  %i.at = fdiv ninf nsz <4 x double> zeroinitializer, %i.as
  %i.au = fmul nsz <4 x double> %i.at, %i.ao
  %i.av = fptrunc nsz <4 x double> %i.au to <4 x float>
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %index
  %interleaved.vec = shufflevector <4 x float> %i.av, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3>
  store <8 x float> %interleaved.vec, ptr %i.aw, align 4, !tbaa !68
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge150, label %.lr.ph149.split.preheader280

.lr.ph149.split.preheader280:                     ; preds = %.lr.ph149.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph149.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph149.split

.lr.ph149.split.us:                               ; preds = %.lr.ph149
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !52
  %i.ba = zext nneg i32 %i.af to i64              ; 6 uses
  %wide.trip.count182 = zext nneg i32 %.pre to i64 ; 5 uses
  %min.iters.check240 = icmp ugt i32 %.pre, 3
  %ident.check.not = icmp eq i32 %i.af, 1
  %or.cond272 = and i1 %min.iters.check240, %ident.check.not
  %n.vec242 = and i64 %wide.trip.count182, 2147483644 ; 3 uses
  %cmp.n255 = icmp eq i64 %n.vec242, %wide.trip.count182
  %xtraiter = and i64 %wide.trip.count182, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph149.split.us
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %._crit_edge.us ], [ 0, %.lr.ph149.split.us ] ; 6 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv184
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !51
  %invariant.gep = getelementptr inbounds nuw [16 x i8], ptr %i.az, i64 %indvars.iv184 ; 7 uses
  br i1 %or.cond272, label %vector.body243, label %scalar.ph239.preheader

vector.body243:                                   ; preds = %.lr.ph.us, %vector.body243
  %index244 = phi i64 [ %index.next252, %vector.body243 ], [ 0, %.lr.ph.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.bi, %vector.body243 ], [ zeroinitializer, %.lr.ph.us ]
  %vec.phi245 = phi <2 x i64> [ %i.bj, %vector.body243 ], [ zeroinitializer, %.lr.ph.us ]
  %vec.phi246 = phi <2 x i64> [ %i.bg, %vector.body243 ], [ zeroinitializer, %.lr.ph.us ]
  %vec.phi247 = phi <2 x i64> [ %i.bh, %vector.body243 ], [ zeroinitializer, %.lr.ph.us ]
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %index244
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %index244
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %wide.vec = load <4 x i64>, ptr %i.bd, align 8, !tbaa !65 ; 2 uses
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec248 = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec249 = load <4 x i64>, ptr %i.bf, align 8, !tbaa !65 ; 2 uses
  %strided.vec250 = shufflevector <4 x i64> %wide.vec249, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec251 = shufflevector <4 x i64> %wide.vec249, <4 x i64> poison, <2 x i32> <i32 1, i32 3>
  %i.bg = add <2 x i64> %strided.vec, %vec.phi246 ; 2 uses
  %i.bh = add <2 x i64> %strided.vec250, %vec.phi247 ; 2 uses
  %i.bi = add <2 x i64> %strided.vec248, %vec.phi ; 2 uses
  %i.bj = add <2 x i64> %strided.vec251, %vec.phi245 ; 2 uses
  %index.next252 = add nuw i64 %index244, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next252, %n.vec242
  br i1 %i.bk, label %middle.block253, label %vector.body243, !llvm.loop !99

middle.block253:                                  ; preds = %vector.body243
  %bin.rdx = add <2 x i64> %i.bj, %i.bi
  %i.bl = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx)
  %bin.rdx254 = add <2 x i64> %i.bh, %i.bg
  %i.bm = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx254)
  %i.bn = insertelement <2 x i64> poison, i64 %i.bm, i64 0
  %i.bo = insertelement <2 x i64> %i.bn, i64 %i.bl, i64 1 ; 2 uses
  br i1 %cmp.n255, label %._crit_edge.us, label %scalar.ph239.preheader

scalar.ph239.preheader:                           ; preds = %.lr.ph.us, %middle.block253
  %indvars.iv179.ph = phi i64 [ 0, %.lr.ph.us ], [ %n.vec242, %middle.block253 ] ; 3 uses
  %.ph = phi <2 x i64> [ zeroinitializer, %.lr.ph.us ], [ %i.bo, %middle.block253 ] ; 2 uses
  br i1 %lcmp.mod.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol

scalar.ph239.prol:                                ; preds = %scalar.ph239.preheader, %scalar.ph239.prol
  %indvars.iv179.prol = phi i64 [ %indvars.iv.next180.prol, %scalar.ph239.prol ], [ %indvars.iv179.ph, %scalar.ph239.preheader ] ; 2 uses
  %i.bp = phi <2 x i64> [ %i.bs, %scalar.ph239.prol ], [ %.ph, %scalar.ph239.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph239.prol ], [ 0, %scalar.ph239.preheader ]
  %i.bq = mul nuw nsw i64 %indvars.iv179.prol, %i.ba
  %gep.prol = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %i.bq
  %i.br = load <2 x i64>, ptr %gep.prol, align 8, !tbaa !65
  %i.bs = add <2 x i64> %i.br, %i.bp              ; 3 uses
  %indvars.iv.next180.prol = add nuw nsw i64 %indvars.iv179.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph239.prol.loopexit, label %scalar.ph239.prol, !llvm.loop !100

scalar.ph239.prol.loopexit:                       ; preds = %scalar.ph239.prol, %scalar.ph239.preheader
  %.lcssa279.unr = phi <2 x i64> [ poison, %scalar.ph239.preheader ], [ %i.bs, %scalar.ph239.prol ]
  %indvars.iv179.unr = phi i64 [ %indvars.iv179.ph, %scalar.ph239.preheader ], [ %indvars.iv.next180.prol, %scalar.ph239.prol ]
  %.unr = phi <2 x i64> [ %.ph, %scalar.ph239.preheader ], [ %i.bs, %scalar.ph239.prol ]
  %i.bt = sub nsw i64 %indvars.iv179.ph, %wide.trip.count182
  %i.bu = icmp ugt i64 %i.bt, -4
  br i1 %i.bu, label %._crit_edge.us, label %scalar.ph239

scalar.ph239:                                     ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239
  %indvars.iv179 = phi i64 [ %indvars.iv.next180.3, %scalar.ph239 ], [ %indvars.iv179.unr, %scalar.ph239.prol.loopexit ] ; 5 uses
  %i.bv = phi <2 x i64> [ %i.ch, %scalar.ph239 ], [ %.unr, %scalar.ph239.prol.loopexit ]
  %i.bw = mul nuw nsw i64 %indvars.iv179, %i.ba
  %gep = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %i.bw
  %i.bx = load <2 x i64>, ptr %gep, align 8, !tbaa !65
  %i.by = add <2 x i64> %i.bx, %i.bv
  %indvars.iv.next180 = add nuw nsw i64 %indvars.iv179, 1
  %i.bz = mul nuw nsw i64 %indvars.iv.next180, %i.ba
  %gep.1 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %i.bz
  %i.ca = load <2 x i64>, ptr %gep.1, align 8, !tbaa !65
  %i.cb = add <2 x i64> %i.ca, %i.by
  %indvars.iv.next180.1 = add nuw nsw i64 %indvars.iv179, 2
  %i.cc = mul nuw nsw i64 %indvars.iv.next180.1, %i.ba
  %gep.2 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %i.cc
  %i.cd = load <2 x i64>, ptr %gep.2, align 8, !tbaa !65
  %i.ce = add <2 x i64> %i.cd, %i.cb
  %indvars.iv.next180.2 = add nuw nsw i64 %indvars.iv179, 3
  %i.cf = mul nuw nsw i64 %indvars.iv.next180.2, %i.ba
  %gep.3 = getelementptr inbounds nuw [16 x i8], ptr %invariant.gep, i64 %i.cf
  %i.cg = load <2 x i64>, ptr %gep.3, align 8, !tbaa !65
  %i.ch = add <2 x i64> %i.cg, %i.ce              ; 2 uses
  %indvars.iv.next180.3 = add nuw nsw i64 %indvars.iv179, 4 ; 2 uses
  %exitcond183.not.3 = icmp eq i64 %indvars.iv.next180.3, %wide.trip.count182
  br i1 %exitcond183.not.3, label %._crit_edge.us, label %scalar.ph239, !llvm.loop !101

._crit_edge.us:                                   ; preds = %scalar.ph239.prol.loopexit, %scalar.ph239, %middle.block253
  %i.ci = phi <2 x i64> [ %i.bo, %middle.block253 ], [ %.lcssa279.unr, %scalar.ph239.prol.loopexit ], [ %i.ch, %scalar.ph239 ]
  %i.cj = sitofp nsz i32 %i.bc to float
  %i.ck = fdiv nsz float 1.000000e+00, %i.cj
  %i.cl = fpext nsz float %i.ck to double
  %i.cm = uitofp <2 x i64> %i.ci to <2 x double>
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv184
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !51
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv184
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !51
  %i.cr = mul nsw i32 %i.cq, %i.co
  %i.cs = sitofp nsz i32 %i.cr to double
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv184
  %i.cu = insertelement <2 x double> poison, double %i.cs, i64 0
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cw = fdiv nsz <2 x double> %i.cm, %i.cv
  %i.cx = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul nsz <2 x double> %i.cw, %i.cy
  %i.da = fptrunc <2 x double> %i.cz to <2 x float>
  store <2 x float> %i.da, ptr %i.ct, align 8, !tbaa !68
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %i.ba
  br i1 %exitcond188.not, label %._crit_edge150, label %.lr.ph.us, !llvm.loop !102

._crit_edge150:                                   ; preds = %.lr.ph149.split, %._crit_edge.us, %middle.block, %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %i.l, i64 296
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !55
  %i.dd = load i32, ptr %i.z, align 8, !tbaa !51
  %.140 = call i32 @llvm.smin.i32(i32 %i.dd, i32 %.pre)
  %i.de = call i32 @ff_filter_execute(ptr noundef nonnull %i.j, ptr noundef %i.dc, ptr noundef nonnull %1, ptr noundef null, i32 noundef %.140) #11 ; 0 uses
  %i.df = load i32, ptr %i.ae, align 8, !tbaa !31 ; 6 uses
  %i.dg = icmp sgt i32 %i.df, 0                   ; 2 uses
  br i1 %i.dg, label %.preheader141.lr.ph, label %._crit_edge162

.preheader141.lr.ph:                              ; preds = %._crit_edge150
  %i.dh = load i32, ptr %i.ab, align 8, !tbaa !47 ; 4 uses
  %i.di = icmp sgt i32 %i.dh, 0
  %i.dj = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.dk = zext nneg i32 %i.df to i64              ; 6 uses
  %wide.trip.count192 = zext i32 %i.dh to i64     ; 2 uses
  %xtraiter282 = and i64 %wide.trip.count192, 1
  %i.dl = icmp eq i32 %i.dh, 1
  %unroll_iter = and i64 %wide.trip.count192, 2147483646
  %lcmp.mod284.not = icmp eq i64 %xtraiter282, 0
  %lcmp.mod287 = trunc i32 %i.dh to i1
  br label %.preheader141

.lr.ph149.split:                                  ; preds = %.lr.ph149.split.preheader280, %.lr.ph149.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph149.split ], [ %indvars.iv.ph, %.lr.ph149.split.preheader280 ] ; 5 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !51
  %i.do = sitofp nsz i32 %i.dn to float
  %i.dp = fdiv nnan nsz float 1.000000e+00, %i.do
  %i.dq = fpext nnan nsz float %i.dp to double
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !51
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !51
  %i.dv = mul nsw i32 %i.du, %i.ds
  %i.dw = sitofp nsz i32 %i.dv to double
  %i.dx = fdiv ninf nsz double 0.000000e+00, %i.dw
  %i.dy = fmul nsz double %i.dx, %i.dq
  %i.dz = fptrunc nsz double %i.dy to float       ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv ; 2 uses
  store float %i.dz, ptr %i.ea, align 8, !tbaa !68
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store float %i.dz, ptr %i.eb, align 4, !tbaa !68
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge150, label %.lr.ph149.split, !llvm.loop !103

.preheader141:                                    ; preds = %.preheader141.lr.ph, %._crit_edge.thread
  %indvars.iv194 = phi i64 [ 0, %.preheader141.lr.ph ], [ %indvars.iv.next195, %._crit_edge.thread ] ; 3 uses
  br i1 %i.di, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader141
  %i.ec = load ptr, ptr %i.dj, align 8, !tbaa !53
  %invariant.gep225 = getelementptr inbounds nuw [12 x i8], ptr %i.ec, i64 %indvars.iv194 ; 3 uses
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph.new

.lr.ph161.preheader:                              ; preds = %._crit_edge.thread
  %xtraiter288 = and i64 %i.dk, 7                 ; 3 uses
  %i.ed = icmp ult i32 %i.df, 8
  br i1 %i.ed, label %.lr.ph161.epil.preheader, label %.lr.ph161.preheader.new

.lr.ph161.preheader.new:                          ; preds = %.lr.ph161.preheader
  %unroll_iter292 = and i64 %i.dk, 2147483640
  br label %.lr.ph161

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph.new
  br i1 %lcmp.mod284.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv189.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next190.1, %._crit_edge.unr-lcssa ]
  %.0123153.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ff, %._crit_edge.unr-lcssa ]
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.fb, %._crit_edge.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod287)
  %i.ee = mul nuw nsw i64 %indvars.iv189.epil.init, %i.dk
  %gep226.epil = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep225, i64 %i.ee ; 2 uses
  %i.ef = load <2 x float>, ptr %gep226.epil, align 4, !tbaa !68
  %i.eg = fpext <2 x float> %i.ef to <2 x double>
  %i.eh = fadd nsz <2 x double> %.epil.init, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %gep226.epil, i64 8
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !68
  %i.ek = fpext nsz float %i.ej to double
  %i.el = fadd nsz double %.0123153.epil.init, %i.ek
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %.lcssa274 = phi <2 x double> [ %i.fb, %._crit_edge.unr-lcssa ], [ %i.eh, %.epil.preheader ] ; 2 uses
  %.lcssa273 = phi double [ %i.ff, %._crit_edge.unr-lcssa ], [ %i.el, %.epil.preheader ]
  %i.em = extractelement <2 x double> %.lcssa274, i64 1
  %i.en = fmul nsz double %i.em, %.lcssa273       ; 2 uses
  %i.eo = fcmp nsz ogt double %i.en, 0.000000e+00
  br i1 %i.eo, label %bb.d, label %._crit_edge.thread

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv189 = phi i64 [ %indvars.iv.next190.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 3 uses
  %.0123153 = phi double [ %i.ff, %.lr.ph.new ], [ 0.000000e+00, %.lr.ph ]
  %i.ep = phi <2 x double> [ %i.fb, %.lr.ph.new ], [ zeroinitializer, %.lr.ph ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %i.eq = mul nuw nsw i64 %indvars.iv189, %i.dk
  %gep226 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep225, i64 %i.eq ; 2 uses
  %i.er = load <2 x float>, ptr %gep226, align 4, !tbaa !68
  %i.es = fpext <2 x float> %i.er to <2 x double>
  %i.et = fadd nsz <2 x double> %i.ep, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %gep226, i64 8
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !68
  %i.ew = fpext nsz float %i.ev to double
  %i.ex = fadd nsz double %.0123153, %i.ew
  %indvars.iv.next190 = or disjoint i64 %indvars.iv189, 1
  %i.ey = mul nuw nsw i64 %indvars.iv.next190, %i.dk
  %gep226.1 = getelementptr inbounds nuw [12 x i8], ptr %invariant.gep225, i64 %i.ey ; 2 uses
  %i.ez = load <2 x float>, ptr %gep226.1, align 4, !tbaa !68
  %i.fa = fpext <2 x float> %i.ez to <2 x double>
  %i.fb = fadd nsz <2 x double> %i.et, %i.fa      ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %gep226.1, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !68
  %i.fe = fpext nsz float %i.fd to double
  %i.ff = fadd nsz double %i.ex, %i.fe            ; 3 uses
  %indvars.iv.next190.1 = add nuw nsw i64 %indvars.iv189, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph.new, !llvm.loop !104

bb.d:                                             ; preds = %._crit_edge
  %i.fg = call nsz double @llvm.sqrt.f64(double %i.en)
  %i.fh = extractelement <2 x double> %.lcssa274, i64 0
  %i.fi = fdiv nsz double %i.fh, %i.fg            ; 2 uses
  %i.fj = fcmp nsz ogt double %i.fi, -1.000000e+00
  %i.fk = select nsz i1 %i.fj, double %i.fi, double -1.000000e+00 ; 2 uses
  %i.fl = fcmp nsz ogt double %i.fk, 1.000000e+00
  %..i = select nsz i1 %i.fl, double 1.000000e+00, double %i.fk
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader141, %._crit_edge, %bb.d
  %.sink = phi double [ %..i, %bb.d ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %.preheader141 ]
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv194
  store double %.sink, ptr %i.fm, align 8, !tbaa !39
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %i.dk
  br i1 %exitcond198.not, label %.lr.ph161.preheader, label %.preheader141, !llvm.loop !105

._crit_edge162.loopexit.unr-lcssa:                ; preds = %.lr.ph161
  %lcmp.mod289.not = icmp eq i64 %xtraiter288, 0
  br i1 %lcmp.mod289.not, label %._crit_edge162, label %.lr.ph161.epil.preheader

.lr.ph161.epil.preheader:                         ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.preheader
  %indvars.iv199.epil.init = phi i64 [ 0, %.lr.ph161.preheader ], [ %indvars.iv.next200.7, %._crit_edge162.loopexit.unr-lcssa ]
  %.0131159.epil.init = phi double [ 0.000000e+00, %.lr.ph161.preheader ], [ %i.hn, %._crit_edge162.loopexit.unr-lcssa ]
  %lcmp.mod291 = icmp ne i64 %xtraiter288, 0
  call void @llvm.assume(i1 %lcmp.mod291)
  br label %.lr.ph161.epil

.lr.ph161.epil:                                   ; preds = %.lr.ph161.epil, %.lr.ph161.epil.preheader
  %indvars.iv199.epil = phi i64 [ %indvars.iv199.epil.init, %.lr.ph161.epil.preheader ], [ %indvars.iv.next200.epil, %.lr.ph161.epil ] ; 2 uses
  %.0131159.epil = phi double [ %.0131159.epil.init, %.lr.ph161.epil.preheader ], [ %i.fp, %.lr.ph161.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph161.epil.preheader ], [ %epil.iter.next, %.lr.ph161.epil ]
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199.epil
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !39
  %i.fp = fadd nsz double %.0131159.epil, %i.fo   ; 2 uses
  %indvars.iv.next200.epil = add nuw nsw i64 %indvars.iv199.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter288
  br i1 %epil.iter.cmp.not, label %._crit_edge162, label %.lr.ph161.epil, !llvm.loop !106

._crit_edge162:                                   ; preds = %._crit_edge162.loopexit.unr-lcssa, %.lr.ph161.epil, %._crit_edge150
  %.0131.lcssa = phi double [ 0.000000e+00, %._crit_edge150 ], [ %i.hn, %._crit_edge162.loopexit.unr-lcssa ], [ %i.fp, %.lr.ph161.epil ]
  %i.fq = sitofp nsz i32 %i.df to double
  %i.fr = fdiv nsz double %.0131.lcssa, %i.fq     ; 4 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 2 uses
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !35
  %i.fu = fadd nsz double %i.fr, %i.ft
  store double %i.fu, ptr %i.fs, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !36
  %i.fx = call nsz double @llvm.minnum.f64(double %i.fw, double %i.fr)
  store double %i.fx, ptr %i.fv, align 8, !tbaa !36
  %i.fy = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !37
  %i.ga = call nsz double @llvm.maxnum.f64(double %i.fz, double %i.fr)
  store double %i.ga, ptr %i.fy, align 8, !tbaa !37
  br i1 %i.dg, label %.lr.ph166, label %._crit_edge167

.lr.ph166:                                        ; preds = %._crit_edge162
  %i.gb = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %wide.trip.count207 = zext nneg i32 %i.df to i64 ; 3 uses
  %min.iters.check259 = icmp ult i32 %i.df, 4
  br i1 %min.iters.check259, label %scalar.ph258.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %.lr.ph166
  %n.vec261 = and i64 %wide.trip.count207, 2147483644 ; 3 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next268, %vector.body262 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index263 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load264 = load <2 x double>, ptr %i.gc, align 16, !tbaa !39
  %wide.load265 = load <2 x double>, ptr %i.gd, align 16, !tbaa !39
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %index263 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %wide.load266 = load <2 x double>, ptr %i.ge, align 8, !tbaa !39
  %wide.load267 = load <2 x double>, ptr %i.gf, align 8, !tbaa !39
  %i.gg = fadd nsz <2 x double> %wide.load264, %wide.load266
  %i.gh = fadd nsz <2 x double> %wide.load265, %wide.load267
  store <2 x double> %i.gg, ptr %i.ge, align 8, !tbaa !39
  store <2 x double> %i.gh, ptr %i.gf, align 8, !tbaa !39
  %index.next268 = add nuw i64 %index263, 4       ; 2 uses
  %i.gi = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.gi, label %middle.block269, label %vector.body262, !llvm.loop !107

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %n.vec261, %wide.trip.count207
  br i1 %cmp.n270, label %.lr.ph170, label %scalar.ph258.preheader

scalar.ph258.preheader:                           ; preds = %.lr.ph166, %middle.block269
  %indvars.iv204.ph = phi i64 [ 0, %.lr.ph166 ], [ %n.vec261, %middle.block269 ]
  br label %scalar.ph258

.lr.ph161:                                        ; preds = %.lr.ph161, %.lr.ph161.preheader.new
  %indvars.iv199 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %indvars.iv.next200.7, %.lr.ph161 ] ; 9 uses
  %.0131159 = phi double [ 0.000000e+00, %.lr.ph161.preheader.new ], [ %i.hn, %.lr.ph161 ]
  %niter293 = phi i64 [ 0, %.lr.ph161.preheader.new ], [ %niter293.next.7, %.lr.ph161 ]
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.gk = load double, ptr %i.gj, align 16, !tbaa !39
  %i.gl = fadd nsz double %.0131159, %i.gk
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load double, ptr %i.gn, align 8, !tbaa !39
  %i.gp = fadd nsz double %i.gl, %i.go
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load double, ptr %i.gr, align 16, !tbaa !39
  %i.gt = fadd nsz double %i.gp, %i.gs
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !39
  %i.gx = fadd nsz double %i.gt, %i.gw
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load double, ptr %i.gz, align 16, !tbaa !39
  %i.hb = fadd nsz double %i.gx, %i.ha
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 40
  %i.he = load double, ptr %i.hd, align 8, !tbaa !39
  %i.hf = fadd nsz double %i.hb, %i.he
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 48
  %i.hi = load double, ptr %i.hh, align 16, !tbaa !39
  %i.hj = fadd nsz double %i.hf, %i.hi
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv199
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !39
  %i.hn = fadd nsz double %i.hj, %i.hm            ; 3 uses
  %indvars.iv.next200.7 = add nuw nsw i64 %indvars.iv199, 8 ; 2 uses
  %niter293.next.7 = add i64 %niter293, 8         ; 2 uses
  %niter293.ncmp.7 = icmp eq i64 %niter293.next.7, %unroll_iter292
  br i1 %niter293.ncmp.7, label %._crit_edge162.loopexit.unr-lcssa, label %.lr.ph161, !llvm.loop !108

._crit_edge167:                                   ; preds = %._crit_edge162
  %i.ho = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !29
  %i.hq = add i64 %i.hp, 1
  store i64 %i.hq, ptr %i.ho, align 8, !tbaa !29
  br label %._crit_edge171

.lr.ph170:                                        ; preds = %scalar.ph258, %middle.block269
  %i.hr = getelementptr inbounds nuw i8, ptr %i.l, i64 160 ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !29
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.hr, align 8, !tbaa !29
  %i.hu = getelementptr inbounds nuw i8, ptr %i.l, i64 172
  %i.hv = getelementptr inbounds nuw i8, ptr %i.l, i64 176
  %i.hw = getelementptr inbounds nuw i8, ptr %i.l, i64 196
  %i.hx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  br label %bb.e

scalar.ph258:                                     ; preds = %scalar.ph258.preheader, %scalar.ph258
  %indvars.iv204 = phi i64 [ %indvars.iv.next205, %scalar.ph258 ], [ %indvars.iv204.ph, %scalar.ph258.preheader ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv204
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !39
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %indvars.iv204 ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !39
  %i.ic = fadd nsz double %i.hz, %i.ib
  store double %i.ic, ptr %i.ia, align 8, !tbaa !39
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %exitcond208.not = icmp eq i64 %indvars.iv.next205, %wide.trip.count207
  br i1 %exitcond208.not, label %.lr.ph170, label %scalar.ph258, !llvm.loop !109

._crit_edge171:                                   ; preds = %set_meta.exit, %._crit_edge167
  %i.id = fptrunc nsz double %i.fr to float
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.ie = fpext nsz float %i.id to double
  %i.if = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 128, ptr noundef nonnull @.str.10, double noundef %i.ie) #11 ; 0 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !32
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !34 ; 2 uses
  %i.ij = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %i.ii, ptr noundef %i.ii, ptr noundef nonnull @.str.9) #11 ; 0 uses
  %i.ik = call i32 @av_dict_set(ptr noundef nonnull %i.u, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, i32 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph170, %set_meta.exit
  %indvars.iv209 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next210, %set_meta.exit ] ; 4 uses
  %i.il = load i32, ptr %i.hu, align 4, !tbaa !38
  %.not = icmp eq i32 %i.il, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.im = getelementptr inbounds nuw i8, ptr %i.hv, i64 %indvars.iv209
  %i.in = load i8, ptr %i.im, align 1, !tbaa !30
  %i.io = zext i8 %i.in to i64
end_hunk_0
