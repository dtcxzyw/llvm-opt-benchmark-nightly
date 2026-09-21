Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sgd?download=true
inline.NumInlined: 27
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sgd:bb.a
  %i.jo = load i64, ptr %i.fs, align 8, !tbaa !81
  %i.jp = icmp ult i64 %i.jo, 65
  %i.jq = load ptr, ptr %6, align 8
  %spec.select198.i = select i1 %i.jp, ptr %6, ptr %i.jq
  %i.jr = trunc i64 %i.jn to i8
  %i.js = and i8 %i.jr, 7
  %i.jt = shl nuw i8 1, %i.js
  %i.ju = xor i8 %i.jt, -1
  %i.jv = lshr i64 %i.jn, 3
  %i.jw = getelementptr inbounds nuw i8, ptr %spec.select198.i, i64 %i.jv ; 2 uses
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !28
  %i.jy = and i8 %i.jx, %i.ju
  store i8 %i.jy, ptr %i.jw, align 1, !tbaa !28
  %i.jz = add nuw i64 %.0139246.i, 1              ; 2 uses
  %i.ka = load i64, ptr %i.hw, align 8, !tbaa !72
  %i.kb = icmp ult i64 %i.jz, %i.ka
  br i1 %i.kb, label %bitarray_set.exit189.i, label %._crit_edge247.i, !llvm.loop !16

bitarray_set.exit191.i:                           ; preds = %bitarray_set.exit191.i, %bitarray_set.exit191.lr.ph.i
  %.0136252.i = phi i64 [ %i.hp, %bitarray_set.exit191.lr.ph.i ], [ %i.kp, %bitarray_set.exit191.i ] ; 2 uses
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %.0136252.i
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !72 ; 2 uses
  %i.ke = load i64, ptr %i.ft, align 8, !tbaa !81
  %i.kf = icmp ult i64 %i.ke, 65
  %i.kg = load ptr, ptr %5, align 8
  %spec.select199.i = select i1 %i.kf, ptr %5, ptr %i.kg
  %i.kh = trunc i64 %i.kd to i8
  %i.ki = and i8 %i.kh, 7
  %i.kj = shl nuw i8 1, %i.ki
  %i.kk = xor i8 %i.kj, -1
  %i.kl = lshr i64 %i.kd, 3
  %i.km = getelementptr inbounds nuw i8, ptr %spec.select199.i, i64 %i.kl ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !28
  %i.ko = and i8 %i.kn, %i.kk
  store i8 %i.ko, ptr %i.km, align 1, !tbaa !28
  %i.kp = add nuw i64 %.0136252.i, 1              ; 2 uses
  %i.kq = load i64, ptr %i.gh, align 8, !tbaa !72 ; 2 uses
  %i.kr = icmp ult i64 %i.kp, %i.kq
  br i1 %i.kr, label %bitarray_set.exit191.i, label %.loopexit.i, !llvm.loop !17

bb.ap:                                            ; preds = %._crit_edge225.i
  %i.ks = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.kt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 130) #17 ; 0 uses
  tail call void @abort() #19
  unreachable

extract_adjacency.exit:                           ; preds = %._crit_edge225.i, %bitarray_reset.exit180.i
  br i1 %i.e, label %.lr.ph189, label %._crit_edge190

.lr.ph189:                                        ; preds = %extract_adjacency.exit
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count226 = zext nneg i32 %i.b to i64
  br label %bb.as

bb.aq:                                            ; preds = %bb.aq, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.aq ] ; 3 uses
  %.0144185 = phi i32 [ 0, %.lr.ph.new ], [ %.1145.1, %bb.aq ]
  %.0146184 = phi i32 [ 0, %.lr.ph.new ], [ %.1147.1, %bb.aq ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.aq ]
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !59
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !36
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 163
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !66
  %i.lb = icmp ugt i8 %i.la, 1                    ; 2 uses
  %i.lc = add nsw i32 %.0146184, 1                ; 2 uses
  %i.ld = sub nsw i32 %i.b, %i.lc
  %.1147 = select i1 %i.lb, i32 %.0146184, i32 %i.lc ; 2 uses
  %i.le = select i1 %i.lb, i32 0, i32 %i.ld
  %.1145 = add nsw i32 %i.le, %.0144185
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !59
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !36
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 163
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !66
  %i.lm = icmp ugt i8 %i.ll, 1                    ; 2 uses
  %i.ln = add nsw i32 %.1147, 1                   ; 2 uses
  %i.lo = sub nsw i32 %i.b, %i.ln
  %.1147.1 = select i1 %i.lm, i32 %.1147, i32 %i.ln ; 2 uses
  %i.lp = select i1 %i.lm, i32 0, i32 %i.lo
  %.1145.1 = add nsw i32 %i.lp, %.1145            ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.aq, !llvm.loop !18

._crit_edge190:                                   ; preds = %bb.au, %extract_adjacency.exit
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.lr) #14
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.lt = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !81
  %i.lu = icmp ugt i64 %i.lt, 64
  br i1 %i.lu, label %bb.ar, label %free_adjacency.exit

bb.ar:                                            ; preds = %._crit_edge190
  %i.lv = load ptr, ptr %i.ls, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.lv) #14
  br label %free_adjacency.exit

free_adjacency.exit:                              ; preds = %._crit_edge190, %bb.ar
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ls, i8 0, i64 16, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !73
  tail call void @free(ptr noundef %i.lx) #14
  %i.ly = load ptr, ptr %i.cd, align 8, !tbaa !74
  tail call void @free(ptr noundef %i.ly) #14
  tail call void @free(ptr noundef nonnull %i.ae) #14
  %i.lz = load i8, ptr @Verbose, align 1, !tbaa !28
  %.not151 = icmp eq i8 %i.lz, 0
  br i1 %.not151, label %bb.aw, label %bb.av

bb.as:                                            ; preds = %.lr.ph189, %bb.au
  %indvars.iv223 = phi i64 [ 0, %.lr.ph189 ], [ %indvars.iv.next224, %bb.au ] ; 3 uses
  %.0141187 = phi i32 [ 0, %.lr.ph189 ], [ %.1142, %bb.au ] ; 3 uses
  %i.ma = load ptr, ptr %i.ku, align 8, !tbaa !36
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 184
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !58
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %indvars.iv223
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !59
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !36
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 163
  %i.mi = load i8, ptr %i.mh, align 1, !tbaa !66
  %i.mj = icmp ugt i8 %i.mi, 1
  br i1 %i.mj, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.mk = sext i32 %.0141187 to i64
  %i.ml = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.mk
  %i.mm = trunc nuw nsw i64 %indvars.iv223 to i32
  %i.mn = tail call i32 @dijkstra_sgd(ptr noundef nonnull %i.ae, i32 noundef %i.mm, ptr noundef %i.ml) #14
  %i.mo = add nsw i32 %i.mn, %.0141187
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  %.1142 = phi i32 [ %.0141187, %bb.as ], [ %i.mo, %bb.at ]
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %._crit_edge190, label %bb.as, !llvm.loop !19

bb.av:                                            ; preds = %free_adjacency.exit
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.mq = tail call double @elapsed_sec() #14
  %i.mr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mp, ptr noundef nonnull @.str.3, double noundef %i.mq) #17 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %free_adjacency.exit
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !92 ; 5 uses
  %i.mu = icmp sgt i32 %.0144.lcssa296, 1         ; 2 uses
  br i1 %i.mu, label %.lr.ph195.preheader, label %._crit_edge196

.lr.ph195.preheader:                              ; preds = %bb.aw
  %wide.trip.count231 = zext nneg i32 %.0144.lcssa296 to i64 ; 2 uses
  %min.iters.check = icmp ult i32 %.0144.lcssa296, 10
  br i1 %min.iters.check, label %.lr.ph195.preheader321, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph195.preheader
  %i.mv = add nsw i64 %wide.trip.count231, -1     ; 2 uses
  %i.mw = and i64 %i.mv, 7                        ; 2 uses
  %i.mx = icmp eq i64 %i.mw, 0
  %i.my = select i1 %i.mx, i64 8, i64 %i.mw
  %n.vec = sub nsw i64 %i.mv, %i.my               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.mt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.oh, %vector.body ] ; 2 uses
  %vec.phi316 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.oi, %vector.body ] ; 2 uses
  %vec.phi317 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.of, %vector.body ] ; 2 uses
  %vec.phi318 = phi <4 x float> [ %broadcast.splat, %vector.ph ], [ %i.og, %vector.body ] ; 2 uses
  %i.mz = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.na = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nb = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %index
  %i.ng = getelementptr [16 x i8], ptr %i.ac, i64 %index
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 28
  %i.ni = getelementptr inbounds nuw i8, ptr %i.na, i64 44
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 60
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nc, i64 76
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 92
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ne, i64 108
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 124
  %i.no = getelementptr i8, ptr %i.ng, i64 140
  %i.np = load float, ptr %i.nh, align 4, !tbaa !92
  %i.nq = load float, ptr %i.ni, align 4, !tbaa !92
  %i.nr = load float, ptr %i.nj, align 4, !tbaa !92
  %i.ns = load float, ptr %i.nk, align 4, !tbaa !92
  %i.nt = insertelement <4 x float> poison, float %i.np, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.nq, i64 1
  %i.nv = insertelement <4 x float> %i.nu, float %i.nr, i64 2
  %i.nw = insertelement <4 x float> %i.nv, float %i.ns, i64 3
  %i.nx = load float, ptr %i.nl, align 4, !tbaa !92
  %i.ny = load float, ptr %i.nm, align 4, !tbaa !92
  %i.nz = load float, ptr %i.nn, align 4, !tbaa !92
  %i.oa = load float, ptr %i.no, align 4, !tbaa !92
  %i.ob = insertelement <4 x float> poison, float %i.nx, i64 0
  %i.oc = insertelement <4 x float> %i.ob, float %i.ny, i64 1
  %i.od = insertelement <4 x float> %i.oc, float %i.nz, i64 2
  %i.oe = insertelement <4 x float> %i.od, float %i.oa, i64 3
  %8 = freeze <4 x float> %i.nw                   ; 3 uses
  %9 = freeze <4 x float> %i.oe                   ; 3 uses
  %i.of = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi317, <4 x float> %8) ; 2 uses
  %i.og = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %vec.phi318, <4 x float> %9) ; 2 uses
  %i.oh = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %8) ; 2 uses
  %i.oi = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi316, <4 x float> %9) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.oj = fcmp uno <4 x float> %8, %9
  %i.ok = bitcast <4 x i1> %i.oj to i4
  %i.ol = icmp ne i4 %i.ok, 0                     ; 6 uses
  %i.om = icmp eq i64 %index.next, %n.vec
  %i.on = or i1 %i.ol, %i.om
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %i.oo = select i1 %i.ol, <4 x float> %vec.phi, <4 x float> %i.oh
  %i.op = select i1 %i.ol, <4 x float> %vec.phi316, <4 x float> %i.oi
  %i.oq = select i1 %i.ol, <4 x float> %vec.phi317, <4 x float> %i.of
  %i.or = select i1 %i.ol, <4 x float> %vec.phi318, <4 x float> %i.og
  %i.os = select i1 %i.ol, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.oo, <4 x float> %i.op)
  %i.ot = tail call nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax)
  %i.ou = add i64 %i.os, 1
  %rdx.minmax319 = tail call nsz <4 x float> @llvm.minnum.v4f32(<4 x float> %i.oq, <4 x float> %i.or)
  %i.ov = tail call nsz float @llvm.vector.reduce.fmin.v4f32(<4 x float> %rdx.minmax319)
  br label %.lr.ph195.preheader321

.lr.ph195.preheader321:                           ; preds = %.lr.ph195.preheader, %middle.block
  %indvars.iv228.ph = phi i64 [ 1, %.lr.ph195.preheader ], [ %i.ou, %middle.block ]
  %.0138192.ph = phi float [ %i.mt, %.lr.ph195.preheader ], [ %i.ot, %middle.block ]
  %.0139191.ph = phi float [ %i.mt, %.lr.ph195.preheader ], [ %i.ov, %middle.block ]
  br label %.lr.ph195

._crit_edge196:                                   ; preds = %.lr.ph195, %bb.aw
  %.0139.lcssa = phi float [ %i.mt, %bb.aw ], [ %i.qh, %.lr.ph195 ]
  %.0138.lcssa = phi float [ %i.mt, %bb.aw ], [ %i.qi, %.lr.ph195 ]
  %i.ow = insertelement <2 x float> poison, float %.0139.lcssa, i64 0
  %i.ox = insertelement <2 x float> %i.ow, float %.0138.lcssa, i64 1
  %i.oy = fpext <2 x float> %i.ox to <2 x double>
  %i.oz = load double, ptr @Epsilon, align 8, !tbaa !95
  %i.pa = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.oz, i64 1
  %i.pb = fdiv <2 x double> %i.pa, %i.oy          ; 2 uses
  %i.pc = extractelement <2 x double> %i.pb, i64 0 ; 2 uses
  %i.pd = extractelement <2 x double> %i.pb, i64 1
  %i.pe = fdiv double %i.pc, %i.pd
  %i.pf = tail call double @log(double noundef %i.pe) #14
  %i.pg = load i32, ptr @MaxIter, align 4, !tbaa !96
  %i.ph = add nsw i32 %i.pg, -1
  %i.pi = sitofp i32 %i.ph to double
  tail call void @initial_positions(ptr noundef %0, i32 noundef %i.b) #14
  %i.pj = shl nsw i32 %i.b, 1
  %i.pk = sext i32 %i.pj to i64                   ; 3 uses
  %.not.i158 = icmp eq i32 %i.b, 0
  br i1 %.not.i158, label %gv_calloc.exit167, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge196
  %mul.ov.i160 = icmp slt i32 %i.b, 0
  br i1 %mul.ov.i160, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.pl = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.pm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pl, ptr noundef nonnull @.str.7, i64 noundef %i.pk, i64 noundef 8) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.pn = tail call noalias ptr @calloc(i64 noundef %i.pk, i64 noundef 8) #16 ; 6 uses
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.pp = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.pq = shl nuw nsw i64 %i.pk, 3
  %i.pr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pp, ptr noundef nonnull @.str.8, i64 noundef %i.pq) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.ps = zext nneg i32 %i.b to i64               ; 2 uses
  %i.pt = tail call noalias ptr @calloc(i64 noundef %i.ps, i64 noundef 1) #16 ; 6 uses
  %i.pu = icmp eq ptr %i.pt, null
  br i1 %i.pu, label %bb.bc, label %.lr.ph200

bb.bc:                                            ; preds = %bb.bb
  %i.pv = load ptr, ptr @stderr, align 8, !tbaa !31
  %i.pw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pv, ptr noundef nonnull @.str.8, i64 noundef %i.ps) #17 ; 0 uses
  tail call fastcc void @graphviz_exit() #18
  unreachable

gv_calloc.exit167:                                ; preds = %._crit_edge196
  %i.px = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #16
  %i.py = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 1) #16
  br label %._crit_edge201

.lr.ph200:                                        ; preds = %bb.bb
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !36
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 184
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !58 ; 3 uses
  %wide.trip.count236 = zext nneg i32 %i.b to i64 ; 2 uses
  %xtraiter338 = and i64 %wide.trip.count236, 1
  %i.qd = icmp eq i32 %i.b, 1
  br i1 %i.qd, label %.epil.preheader337, label %.lr.ph200.new

.lr.ph200.new:                                    ; preds = %.lr.ph200
  %unroll_iter341 = and i64 %wide.trip.count236, 2147483646
  br label %bb.bd

.lr.ph195:                                        ; preds = %.lr.ph195.preheader321, %.lr.ph195
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %.lr.ph195 ], [ %indvars.iv228.ph, %.lr.ph195.preheader321 ] ; 2 uses
  %.0138192 = phi float [ %i.qi, %.lr.ph195 ], [ %.0138192.ph, %.lr.ph195.preheader321 ]
  %.0139191 = phi float [ %i.qh, %.lr.ph195 ], [ %.0139191.ph, %.lr.ph195.preheader321 ]
  %i.qe = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv228
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !92 ; 2 uses
  %i.qh = tail call nsz float @llvm.minnum.f32(float %.0139191, float %i.qg) ; 2 uses
  %i.qi = tail call nsz float @llvm.maxnum.f32(float %.0138192, float %i.qg) ; 2 uses
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge196, label %.lr.ph195, !llvm.loop !21

._crit_edge201.loopexit.unr-lcssa:                ; preds = %bb.bd
  %lcmp.mod339.not = icmp eq i64 %xtraiter338, 0
  br i1 %lcmp.mod339.not, label %._crit_edge201, label %.epil.preheader337

.epil.preheader337:                               ; preds = %._crit_edge201.loopexit.unr-lcssa, %.lr.ph200
  %indvars.iv233.epil.init = phi i64 [ 0, %.lr.ph200 ], [ %indvars.iv.next234.1, %._crit_edge201.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod340 = trunc i32 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod340)
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv233.epil.init
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !59
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 16
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !36 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 176
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !97
  %.idx.epil = shl nuw nsw i64 %indvars.iv233.epil.init, 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.epil
  %i.qq = load <2 x double>, ptr %i.qo, align 8, !tbaa !95
  store <2 x double> %i.qq, ptr %i.qp, align 8, !tbaa !95
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 163
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !66
  %i.qt = icmp ult i8 %i.qs, 2
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pt, i64 %indvars.iv233.epil.init
  %i.qv = zext i1 %i.qt to i8
  store i8 %i.qv, ptr %i.qu, align 1, !tbaa !98
  br label %._crit_edge201

._crit_edge201:                                   ; preds = %.epil.preheader337, %._crit_edge201.loopexit.unr-lcssa, %gv_calloc.exit167
  %i.qw = phi ptr [ %i.py, %gv_calloc.exit167 ], [ %i.pt, %._crit_edge201.loopexit.unr-lcssa ], [ %i.pt, %.epil.preheader337 ] ; 3 uses
  %i.qx = phi ptr [ %i.px, %gv_calloc.exit167 ], [ %i.pn, %._crit_edge201.loopexit.unr-lcssa ], [ %i.pn, %.epil.preheader337 ] ; 8 uses
  %i.qy = load i8, ptr @Verbose, align 1, !tbaa !28
  %.not152 = icmp eq i8 %i.qy, 0
  br i1 %.not152, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.bd, %.lr.ph200.new
  %indvars.iv233 = phi i64 [ 0, %.lr.ph200.new ], [ %indvars.iv.next234.1, %bb.bd ] ; 5 uses
  %niter342 = phi i64 [ 0, %.lr.ph200.new ], [ %niter342.next.1, %bb.bd ]
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv233
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !59
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !36 ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 176
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !97
  %.idx = shl nuw nsw i64 %indvars.iv233, 4
  %i.rf = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx
  %i.rg = load <2 x double>, ptr %i.re, align 8, !tbaa !95
  store <2 x double> %i.rg, ptr %i.rf, align 8, !tbaa !95
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rc, i64 163
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !66
  %i.rj = icmp ult i8 %i.ri, 2
  %i.rk = getelementptr inbounds nuw i8, ptr %i.pt, i64 %indvars.iv233
  %i.rl = zext i1 %i.rj to i8
  store i8 %i.rl, ptr %i.rk, align 1, !tbaa !98
  %indvars.iv.next234 = or disjoint i64 %indvars.iv233, 1 ; 3 uses
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %indvars.iv.next234
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !59
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !36 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 176
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !97
  %.idx.1 = shl nuw nsw i64 %indvars.iv.next234, 4
  %i.rs = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.1
  %i.rt = load <2 x double>, ptr %i.rr, align 8, !tbaa !95
  store <2 x double> %i.rt, ptr %i.rs, align 8, !tbaa !95
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rp, i64 163
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !66
  %i.rw = icmp ult i8 %i.rv, 2
  %i.rx = getelementptr inbounds nuw i8, ptr %i.pt, i64 %indvars.iv.next234
  %i.ry = zext i1 %i.rw to i8
  store i8 %i.ry, ptr %i.rx, align 1, !tbaa !98
  %indvars.iv.next234.1 = add nuw nsw i64 %indvars.iv233, 2 ; 2 uses
  %niter342.next.1 = add i64 %niter342, 2         ; 2 uses
  %niter342.ncmp.1 = icmp eq i64 %niter342.next.1, %unroll_iter341
  br i1 %niter342.ncmp.1, label %._crit_edge201.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !22

bb.be:                                            ; preds = %._crit_edge201
  %i.rz = load ptr, ptr @stderr, align 8, !tbaa !31
  %fwrite153 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 14, i64 1, ptr %i.rz) #15 ; 0 uses
  tail call void @start_timer() #14
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %._crit_edge201
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @rk_seed(i64 noundef 0, ptr noundef nonnull %7) #14
  %i.sa = load i32, ptr @MaxIter, align 4, !tbaa !96
  %i.sb = icmp sgt i32 %i.sa, 0
  br i1 %i.sb, label %.lr.ph207, label %._crit_edge208

.lr.ph207:                                        ; preds = %bb.bf
end_hunk_0
