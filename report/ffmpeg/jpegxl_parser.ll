Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpegxl_parser?download=true
inline.NumInlined: 192
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@read_distribution_bundle:bb.a
  %i.jv = phi i32 [ %.pre360, %.loopexit246.._crit_edge271_crit_edge ], [ %i.ki, %._crit_edge271.loopexit.unr-lcssa ], [ %i.jt, %bb.aa ], [ %.epil.init, %.epil.preheader ] ; 2 uses
  %i.jw = icmp sgt i32 %i.jv, %i.ju
  br i1 %i.jw, label %read_dist_clustering.exit.thread, label %read_dist_clustering.exit

bb.ab:                                            ; preds = %bb.af, %.lr.ph270.new
  %indvars.iv334 = phi i64 [ 0, %.lr.ph270.new ], [ %indvars.iv.next335.1, %bb.af ] ; 3 uses
  %i.jx = phi i32 [ %.promoted, %.lr.ph270.new ], [ %i.ki, %bb.af ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph270.new ], [ %niter.next.1, %bb.af ]
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv334
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !15
  %i.ka = zext i8 %i.jz to i32                    ; 2 uses
  %.not89.i = icmp sgt i32 %i.jx, %i.ka
  br i1 %.not89.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.kb = add nuw nsw i32 %i.ka, 1                ; 2 uses
  store i32 %i.kb, ptr %i.jo, align 8, !tbaa !32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.kc = phi i32 [ %i.kb, %bb.ac ], [ %i.jx, %bb.ab ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jn, i64 %indvars.iv334
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !15
  %i.kg = zext i8 %i.kf to i32                    ; 2 uses
  %.not89.i.1 = icmp sgt i32 %i.kc, %i.kg
  br i1 %.not89.i.1, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kh = add nuw nsw i32 %i.kg, 1                ; 2 uses
  store i32 %i.kh, ptr %i.jo, align 8, !tbaa !32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ki = phi i32 [ %i.kh, %bb.ae ], [ %i.kc, %bb.ad ] ; 3 uses
  %indvars.iv.next335.1 = add nuw nsw i64 %indvars.iv334, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge271.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !121

read_dist_clustering.exit:                        ; preds = %bb.n, %._crit_edge271
  %i.kj = phi i32 [ 1, %bb.n ], [ %i.jv, %._crit_edge271 ]
  %.val145 = load i32, ptr %i.s, align 8, !tbaa !21
  %i.kk = getelementptr i8, ptr %0, i64 12        ; 5 uses
  %.val146 = load i32, ptr %i.kk, align 4, !tbaa !19
  %i.kl = icmp slt i32 %.val146, %.val145
  br i1 %i.kl, label %read_dist_clustering.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %read_dist_clustering.exit
  %i.km = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  %i.kn = sext i32 %i.kj to i64
  %i.ko = call noalias ptr @av_calloc(i64 noundef %i.kn, i64 noundef 2640) #10 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 6 uses
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !31
  %.not126 = icmp eq ptr %i.ko, null
  br i1 %.not126, label %read_dist_clustering.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kq = load i32, ptr %i.s, align 8, !tbaa !21  ; 4 uses
  %i.kr = load ptr, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ks = lshr i32 %i.kq, 3
  %i.kt = zext nneg i32 %i.ks to i64
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.kt
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !15
  %i.kw = load i32, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %i.kx = icmp slt i32 %i.kq, %i.kw
  %i.ky = zext i1 %i.kx to i32
  %spec.select.i155 = add i32 %i.kq, %i.ky        ; 5 uses
  %i.kz = zext i8 %i.kv to i32
  %i.la = and i32 %i.kq, 7
  %i.lb = lshr i32 %i.kz, %i.la
  %i.lc = and i32 %i.lb, 1                        ; 3 uses
  store i32 %spec.select.i155, ptr %i.s, align 8, !tbaa !21
  %i.ld = getelementptr inbounds nuw i8, ptr %2, i64 52 ; 2 uses
  store i32 %i.lc, ptr %i.ld, align 4, !tbaa !30
  %.not127 = icmp eq i32 %i.lc, 0
  br i1 %.not127, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.le = lshr i32 %spec.select.i155, 3
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 1, !tbaa !15
  %i.li = and i32 %spec.select.i155, 7
  %i.lj = lshr i32 %i.lh, %i.li
  %i.lk = and i32 %i.lj, 3
  %i.ll = add i32 %spec.select.i155, 2
  %i.lm = call i32 @llvm.umin.i32(i32 %i.kw, i32 %i.ll) ; 2 uses
  store i32 %i.lm, ptr %i.s, align 8, !tbaa !21
  %i.ln = add nuw nsw i32 %i.lk, 5
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.lo = phi i32 [ %i.lm, %bb.ai ], [ %spec.select.i155, %bb.ah ]
  %i.lp = phi i32 [ %i.ln, %bb.ai ], [ 15, %bb.ah ]
  %i.lq = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  store i32 %i.lp, ptr %i.lq, align 8, !tbaa !146
  %i.lr = load i32, ptr %i.km, align 8, !tbaa !32 ; 2 uses
  %.not128272 = icmp sgt i32 %i.lr, 0
  br i1 %.not128272, label %.lr.ph275, label %._crit_edge276

bb.ak:                                            ; preds = %bb.al
  %indvars.iv.next341 = add nuw nsw i64 %indvars.iv340, 1 ; 2 uses
  %i.ls = load i32, ptr %i.km, align 8, !tbaa !32 ; 2 uses
  %i.lt = sext i32 %i.ls to i64
  %.not128 = icmp slt i64 %indvars.iv.next341, %i.lt
  br i1 %.not128, label %.lr.ph275, label %._crit_edge276.loopexit, !llvm.loop !122

.lr.ph275:                                        ; preds = %bb.aj, %bb.ak
  %indvars.iv340 = phi i64 [ %indvars.iv.next341, %bb.ak ], [ 0, %bb.aj ] ; 2 uses
  %i.lu = load ptr, ptr %i.kp, align 8, !tbaa !31
  %i.lv = getelementptr inbounds nuw [2640 x i8], ptr %i.lu, i64 %indvars.iv340
  %i.lw = load i32, ptr %i.lq, align 8, !tbaa !146
  %i.lx = call fastcc i32 @read_hybrid_uint_conf(ptr noundef %0, ptr noundef %i.lv, i32 noundef %i.lw) ; 2 uses
  %i.ly = icmp slt i32 %i.lx, 0
  br i1 %i.ly, label %read_dist_clustering.exit.thread, label %bb.al

bb.al:                                            ; preds = %.lr.ph275
  %.val143 = load i32, ptr %i.s, align 8, !tbaa !21 ; 2 uses
  %.val144 = load i32, ptr %i.kk, align 4, !tbaa !19
  %i.lz = icmp slt i32 %.val144, %.val143
  br i1 %i.lz, label %read_dist_clustering.exit.thread, label %bb.ak

._crit_edge276.loopexit:                          ; preds = %bb.ak
  %.pre361 = load i32, ptr %i.ld, align 4, !tbaa !30
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %._crit_edge276.loopexit, %bb.aj
  %i.ma = phi i32 [ %.val143, %._crit_edge276.loopexit ], [ %i.lo, %bb.aj ] ; 2 uses
  %.pr433 = phi i32 [ %i.ls, %._crit_edge276.loopexit ], [ %i.lr, %bb.aj ] ; 2 uses
  %i.mb = phi i32 [ %.pre361, %._crit_edge276.loopexit ], [ %i.lc, %bb.aj ]
  %.not129 = icmp eq i32 %i.mb, 0
  %.not130287 = icmp sgt i32 %.pr433, 0           ; 2 uses
  br i1 %.not129, label %.preheader235, label %.preheader240

.preheader240:                                    ; preds = %._crit_edge276
  br i1 %.not130287, label %.lr.ph279, label %read_dist_clustering.exit.thread

.lr.ph279:                                        ; preds = %.preheader240
  %i.mc = load ptr, ptr %i.kp, align 8, !tbaa !31
  %i.md = load ptr, ptr %0, align 8, !tbaa !18    ; 3 uses
  %i.me = load i32, ptr %i.z, align 8, !tbaa !20  ; 3 uses
  %wide.trip.count346 = zext nneg i32 %.pr433 to i64
  br label %bb.am

.preheader235:                                    ; preds = %._crit_edge276
  br i1 %.not130287, label %.lr.ph290.preheader, label %read_dist_clustering.exit.thread

.lr.ph290.preheader:                              ; preds = %.preheader235
  %.pre364 = load ptr, ptr %i.kp, align 8, !tbaa !31
  %.pre365 = load ptr, ptr %0, align 8, !tbaa !18 ; 25 uses
  br label %.lr.ph290

.lr.ph282:                                        ; preds = %bb.aq
  %i.mf = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.j, i64 12 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.j, i64 20 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.j, i64 28 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.j, i64 36 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.j, i64 44 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.j, i64 48 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.j, i64 52 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.j, i64 60 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.j, i64 68 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.g, i64 17
  %i.my = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.mz = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  %i.na = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.nb = getelementptr inbounds nuw i8, ptr %i.g, i64 13
  %i.nc = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.nd = getelementptr inbounds nuw i8, ptr %i.g, i64 11
  %i.ne = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.nf = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  %i.ng = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.nh = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  %i.ni = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %i.nj = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  %i.nk = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.nl = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.nm = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.nn = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 6 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 6 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.f, i64 6 ; 4 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.nu = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 6
  br label %bb.as

bb.am:                                            ; preds = %.lr.ph279, %bb.aq
  %indvars.iv344 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next344, %bb.aq ] ; 2 uses
  %7 = phi i32 [ %i.ma, %.lr.ph279 ], [ %i.pk, %bb.aq ] ; 4 uses
  %i.nw = getelementptr inbounds nuw [2640 x i8], ptr %i.mc, i64 %indvars.iv344 ; 3 uses
  %i.nx = lshr i32 %7, 3
  %i.ny = zext nneg i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.ny
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !15
  %i.ob = icmp slt i32 %7, %i.me
  %i.oc = zext i1 %i.ob to i32
  %spec.select.i156 = add i32 %7, %i.oc           ; 5 uses
  %i.od = zext i8 %i.oa to i32
  %i.oe = and i32 %7, 7
  store i32 %spec.select.i156, ptr %i.s, align 8, !tbaa !21
  %i.of = shl nuw nsw i32 1, %i.oe
  %i.og = and i32 %i.of, %i.od
  %.not132 = icmp eq i32 %i.og, 0
  br i1 %.not132, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.oh = lshr i32 %spec.select.i156, 3
  %i.oi = zext nneg i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.oi
  %i.ok = load i32, ptr %i.oj, align 1, !tbaa !15
  %i.ol = and i32 %spec.select.i156, 7
  %i.om = lshr i32 %i.ok, %i.ol
  %i.on = and i32 %i.om, 15                       ; 4 uses
  %i.oo = add i32 %spec.select.i156, 4
  %i.op = call i32 @llvm.umin.i32(i32 %i.me, i32 %i.oo) ; 5 uses
  store i32 %i.op, ptr %i.s, align 8, !tbaa !21
  %i.oq = shl nuw nsw i32 1, %i.on
  %i.or = add nuw nsw i32 %i.oq, 1
  %.not.i138 = icmp eq i32 %i.on, 0
  br i1 %.not.i138, label %get_bitsz.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.os = lshr i32 %i.op, 3
  %i.ot = zext nneg i32 %i.os to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.ot
  %i.ov = load i32, ptr %i.ou, align 1, !tbaa !15
  %i.ow = and i32 %i.op, 7
  %i.ox = lshr i32 %i.ov, %i.ow
  %i.oy = sub nuw nsw i32 32, %i.on
  %i.oz = lshr i32 -1, %i.oy
  %i.pa = and i32 %i.ox, %i.oz
  %i.pb = add i32 %i.on, %i.op
  %i.pc = call i32 @llvm.umin.i32(i32 %i.me, i32 %i.pb) ; 2 uses
  store i32 %i.pc, ptr %i.s, align 8, !tbaa !21
  br label %get_bitsz.exit

get_bitsz.exit:                                   ; preds = %bb.an, %bb.ao
  %i.pd = phi i32 [ %i.pc, %bb.ao ], [ %i.op, %bb.an ]
  %i.pe = phi i32 [ %i.pa, %bb.ao ], [ 0, %bb.an ]
  %i.pf = add nuw nsw i32 %i.or, %i.pe            ; 3 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i32 %i.pf, ptr %i.pg, align 8, !tbaa !147
  %i.ph = icmp samesign ult i32 %i.pf, 32769
  br i1 %i.ph, label %bb.aq, label %read_dist_clustering.exit.thread

bb.ap:                                            ; preds = %bb.am
  %i.pi = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i32 1, ptr %i.pi, align 8, !tbaa !147
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %get_bitsz.exit
  %i.pj = phi i32 [ 1, %bb.ap ], [ %i.pf, %get_bitsz.exit ] ; 2 uses
  %i.pk = phi i32 [ %spec.select.i156, %bb.ap ], [ %i.pd, %get_bitsz.exit ] ; 2 uses
  %i.pl = add nsw i32 %i.pj, -1                   ; 3 uses
  %.not11.i = icmp samesign ult i32 %i.pj, 257    ; 2 uses
  %i.pm = lshr i32 %i.pl, 8
  %.110.i = select i1 %.not11.i, i32 %i.pl, i32 %i.pm
  %.1.i = select i1 %.not11.i, i32 0, i32 8
  %i.pn = zext nneg i32 %.110.i to i64
  %i.po = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.pn
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !15
  %i.pq = zext i8 %i.pp to i32
  %i.pr = icmp ne i32 %i.pl, 0
  %i.ps = zext i1 %i.pr to i32
  %i.pt = add nuw nsw i32 %.1.i, %i.pq
  %i.pu = add nuw nsw i32 %i.pt, %i.ps
  %i.pv = getelementptr inbounds nuw i8, ptr %i.nw, i64 20
  store i32 %i.pu, ptr %i.pv, align 4, !tbaa !148
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv344, 1 ; 2 uses
  %exitcond347.not = icmp eq i64 %indvars.iv.next344, %wide.trip.count346
  br i1 %exitcond347.not, label %.lr.ph282, label %bb.am, !llvm.loop !123

bb.ar:                                            ; preds = %bb.bv
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %i.pw = load i32, ptr %i.km, align 8, !tbaa !32
  %i.px = sext i32 %i.pw to i64
  %.not134 = icmp slt i64 %indvars.iv.next349, %i.px
  br i1 %.not134, label %bb.as, label %read_dist_clustering.exit.thread, !llvm.loop !124

bb.as:                                            ; preds = %.lr.ph282, %bb.ar
  %.val141362 = phi i32 [ %i.pk, %.lr.ph282 ], [ %.val141, %bb.ar ] ; 4 uses
  %indvars.iv348 = phi i64 [ 0, %.lr.ph282 ], [ %indvars.iv.next349, %bb.ar ] ; 2 uses
  %i.py = load ptr, ptr %i.kp, align 8, !tbaa !31
  %i.pz = getelementptr inbounds nuw [2640 x i8], ptr %i.py, i64 %indvars.iv348 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.g, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.h, i8 0, i64 18, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.i, i8 0, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(76) %i.j, i8 0, i64 76, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  store ptr null, ptr %i.k, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16 ; 2 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !147
  %i.qc = icmp eq i32 %i.qb, 1
  br i1 %i.qc, label %read_vlc_prefix.exit.thread, label %bb.at

read_vlc_prefix.exit.thread:                      ; preds = %bb.as
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  store i32 0, ptr %i.qd, align 8, !tbaa !44
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pz, i64 48
  store i32 0, ptr %i.qe, align 8, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  br label %bb.bv

bb.at:                                            ; preds = %bb.as
  %i.qf = load i32, ptr %i.z, align 8, !tbaa !20  ; 8 uses
  %i.qg = load ptr, ptr %0, align 8, !tbaa !18    ; 8 uses
  %i.qh = lshr i32 %.val141362, 3
  %i.qi = zext nneg i32 %i.qh to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qi
  %i.qk = load i32, ptr %i.qj, align 1, !tbaa !15
  %i.ql = and i32 %.val141362, 7
  %i.qm = lshr i32 %i.qk, %i.ql
  %i.qn = and i32 %i.qm, 3                        ; 3 uses
  %i.qo = add i32 %.val141362, 2
  %i.qp = call i32 @llvm.umin.i32(i32 %i.qf, i32 %i.qo) ; 5 uses
  store i32 %i.qp, ptr %i.s, align 8, !tbaa !21
  %i.qq = icmp eq i32 %i.qn, 1
  br i1 %i.qq, label %bb.au, label %bb.bf

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  %i.qr = lshr i32 %i.qp, 3
  %i.qs = zext nneg i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.qs
  %i.qu = load i32, ptr %i.qt, align 1, !tbaa !15
  %i.qv = and i32 %i.qp, 7
  %i.qw = lshr i32 %i.qu, %i.qv                   ; 2 uses
  %i.qx = and i32 %i.qw, 3                        ; 2 uses
  %i.qy = add i32 %i.qp, 2
  %i.qz = call i32 @llvm.umin.i32(i32 %i.qf, i32 %i.qy) ; 5 uses
  store i32 %i.qz, ptr %i.s, align 8, !tbaa !21
  %i.ra = add nuw nsw i32 %i.qx, 1                ; 4 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.pz, i64 20
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !148 ; 6 uses
  %.not.i.i.i = icmp eq i32 %i.rc, 0
  %i.rd = sub i32 32, %i.rc
  %i.re = lshr i32 -1, %i.rd                      ; 4 uses
  br i1 %.not.i.i.i, label %get_bitsz.exit.us.preheader.i.i, label %get_bitsz.exit.i.i

get_bitsz.exit.us.preheader.i.i:                  ; preds = %bb.au
  %i.rf = shl i32 %i.qw, 1
  %i.rg = and i32 %i.rf, 6
  %narrow.i.i = add nuw nsw i32 %i.rg, 2
  %i.rh = zext nneg i32 %narrow.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %i.f, i8 0, i64 %i.rh, i1 false), !tbaa !47
  br label %.split32.us.i.i

.split32.us.i.i:                                  ; preds = %get_bitsz.exit.i.i, %get_bitsz.exit.i.i.1, %get_bitsz.exit.i.i.2, %get_bitsz.exit.i.i.3, %get_bitsz.exit.us.preheader.i.i
  %i.ri = phi i32 [ %i.qz, %get_bitsz.exit.us.preheader.i.i ], [ %i.rr, %get_bitsz.exit.i.i ], [ %i.sb, %get_bitsz.exit.i.i.1 ], [ %i.sl, %get_bitsz.exit.i.i.2 ], [ %i.sv, %get_bitsz.exit.i.i.3 ] ; 4 uses
  switch i32 %i.ra, label %default.unreachable581 [
    i32 4, label %.thread.i.i
    i32 1, label %bb.av
    i32 2, label %bb.aw
    i32 3, label %bb.ay
  ]

get_bitsz.exit.i.i:                               ; preds = %bb.au
  %i.rj = lshr i32 %i.qz, 3
  %i.rk = zext nneg i32 %i.rj to i64
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.rk
  %i.rm = load i32, ptr %i.rl, align 1, !tbaa !15
  %i.rn = and i32 %i.qz, 7
  %i.ro = lshr i32 %i.rm, %i.rn
  %i.rp = and i32 %i.ro, %i.re
  %i.rq = add i32 %i.qz, %i.rc
  %i.rr = call i32 @llvm.umin.i32(i32 %i.qf, i32 %i.rq) ; 5 uses
  store i32 %i.rr, ptr %i.s, align 8, !tbaa !21
  %i.rs = trunc i32 %i.rp to i16
  store i16 %i.rs, ptr %i.f, align 2, !tbaa !47
  %exitcond.not.i.i = icmp eq i32 %i.qx, 0
  br i1 %exitcond.not.i.i, label %.split32.us.i.i, label %get_bitsz.exit.i.i.1

get_bitsz.exit.i.i.1:                             ; preds = %get_bitsz.exit.i.i
  %i.rt = lshr i32 %i.rr, 3
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.ru
  %i.rw = load i32, ptr %i.rv, align 1, !tbaa !15
  %i.rx = and i32 %i.rr, 7
  %i.ry = lshr i32 %i.rw, %i.rx
  %i.rz = and i32 %i.ry, %i.re
  %i.sa = add i32 %i.rr, %i.rc
  %i.sb = call i32 @llvm.umin.i32(i32 %i.qf, i32 %i.sa) ; 5 uses
  store i32 %i.sb, ptr %i.s, align 8, !tbaa !21
  %i.sc = trunc i32 %i.rz to i16
  store i16 %i.sc, ptr %i.nt, align 2, !tbaa !47
  %exitcond.not.i.i.1 = icmp eq i32 %i.ra, 2
  br i1 %exitcond.not.i.i.1, label %.split32.us.i.i, label %get_bitsz.exit.i.i.2

get_bitsz.exit.i.i.2:                             ; preds = %get_bitsz.exit.i.i.1
  %i.sd = lshr i32 %i.sb, 3
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 1, !tbaa !15
  %i.sh = and i32 %i.sb, 7
  %i.si = lshr i32 %i.sg, %i.sh
  %i.sj = and i32 %i.si, %i.re
  %i.sk = add i32 %i.sb, %i.rc
  %i.sl = call i32 @llvm.umin.i32(i32 %i.qf, i32 %i.sk) ; 5 uses
  store i32 %i.sl, ptr %i.s, align 8, !tbaa !21
  %i.sm = trunc i32 %i.sj to i16
  store i16 %i.sm, ptr %i.nu, align 2, !tbaa !47
  %exitcond.not.i.i.2 = icmp eq i32 %i.ra, 3
  br i1 %exitcond.not.i.i.2, label %.split32.us.i.i, label %get_bitsz.exit.i.i.3

get_bitsz.exit.i.i.3:                             ; preds = %get_bitsz.exit.i.i.2
  %i.sn = lshr i32 %i.sl, 3
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.so
  %i.sq = load i32, ptr %i.sp, align 1, !tbaa !15
  %i.sr = and i32 %i.sl, 7
  %i.ss = lshr i32 %i.sq, %i.sr
  %i.st = and i32 %i.ss, %i.re
  %i.su = add i32 %i.sl, %i.rc
  %i.sv = call i32 @llvm.umin.i32(i32 %i.qf, i32 %i.su) ; 2 uses
  store i32 %i.sv, ptr %i.s, align 8, !tbaa !21
  %i.sw = trunc i32 %i.st to i16
  store i16 %i.sw, ptr %i.nv, align 2, !tbaa !47
  br label %.split32.us.i.i

.thread.i.i:                                      ; preds = %.split32.us.i.i
  %i.sx = lshr i32 %i.ri, 3
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %i.qg, i64 %i.sy
  %i.ta = load i8, ptr %i.sz, align 1, !tbaa !15
  %i.tb = icmp slt i32 %i.ri, %i.qf
  %i.tc = zext i1 %i.tb to i32
  %spec.select.i.i.i = add i32 %i.ri, %i.tc
  %i.td = zext i8 %i.ta to i32
  %i.te = and i32 %i.ri, 7
  store i32 %spec.select.i.i.i, ptr %i.s, align 8, !tbaa !21
  %i.tf = shl nuw nsw i32 1, %i.te
  %i.tg = and i32 %i.tf, %i.td
  %i.th = icmp eq i32 %i.tg, 0
  br i1 %i.th, label %bb.bc, label %bb.ba

bb.av:                                            ; preds = %.split32.us.i.i
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  store i32 0, ptr %i.ti, align 8, !tbaa !44
  %i.tj = load i16, ptr %i.f, align 2, !tbaa !47
  %i.tk = sext i16 %i.tj to i32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.pz, i64 48
  store i32 %i.tk, ptr %i.tl, align 8, !tbaa !45
  br label %read_simple_vlc_prefix.exit.i

bb.aw:                                            ; preds = %.split32.us.i.i
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.e, align 4, !tbaa !15
  %i.tm = load i16, ptr %i.nr, align 2, !tbaa !47 ; 2 uses
  %i.tn = load i16, ptr %i.f, align 2, !tbaa !47  ; 2 uses
  %i.to = icmp slt i16 %i.tm, %i.tn
  br i1 %i.to, label %bb.ax, label %bb.be

bb.ax:                                            ; preds = %bb.aw
  store i16 %i.tn, ptr %i.nr, align 2, !tbaa !47
  store i16 %i.tm, ptr %i.f, align 2, !tbaa !47
  br label %bb.be

bb.ay:                                            ; preds = %.split32.us.i.i
end_hunk_0
