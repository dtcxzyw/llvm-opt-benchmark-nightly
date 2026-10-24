Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/DotIO?download=true
inline.NumInlined: 61
inline.NumDeleted: 18
begin_hunk_0_@Import_coord_clusters_from_dot:bb.a
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !33
  %i.fy = sext i32 %i.fx to i64
  %i.fz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull align 1 dereferenceable(1) %15, i64 noundef 41, ptr noundef nonnull @.str.34, i64 noundef range(i64 -2147483648, 2147483648) %i.fy) #19 ; 0 uses
  %i.ga = call i32 @agxset(ptr noundef nonnull %.5457, ptr noundef %.0287, ptr noundef nonnull %15) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.gb = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.5457) #19 ; 2 uses
  %.not310 = icmp eq ptr %i.gb, null
  br i1 %.not310, label %._crit_edge460, label %.lr.ph459, !llvm.loop !70

._crit_edge460:                                   ; preds = %.lr.ph459, %._crit_edge455
  %i.gc = load i32, ptr %i.b, align 4, !tbaa !33  ; 2 uses
  %i.gd = load i8, ptr @Verbose, align 1, !tbaa !30
  %.not311 = icmp eq i8 %i.gd, 0
  br i1 %.not311, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %._crit_edge460
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.gf = load double, ptr %i.e, align 8, !tbaa !29
  %i.gg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.21, double noundef %i.gf, i32 noundef %i.gc) #22 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  br label %bb.at

bb.at:                                            ; preds = %.loopexit, %bb.as
  %.0278404 = phi i1 [ true, %bb.as ], [ false, %.loopexit ] ; 2 uses
  %.0281 = phi i32 [ %i.gc, %bb.as ], [ %i.fb, %.loopexit ] ; 3 uses
  %.3 = phi i32 [ 1, %bb.as ], [ %.2, %.loopexit ] ; 2 uses
  %i.gh = mul nsw i32 %i.j, %2                    ; 4 uses
  %i.gi = sext i32 %i.gh to i64                   ; 6 uses
  %.not.i343 = icmp eq i32 %i.gh, 0               ; 2 uses
  br i1 %.not.i343, label %.thread.i346, label %bb.au

.thread.i346:                                     ; preds = %bb.at
  %i.gj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #24
  br label %gv_calloc.exit347

bb.au:                                            ; preds = %bb.at
  %mul.ov.i345 = icmp slt i32 %i.gh, 0
  br i1 %mul.ov.i345, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.gl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.32, i64 noundef %i.gi, i64 noundef 8) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.gm = call noalias ptr @calloc(i64 noundef %i.gi, i64 noundef 8) #24 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.ax, label %gv_calloc.exit347

bb.ax:                                            ; preds = %bb.aw
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.gp = shl nuw nsw i64 %i.gi, 3
  %i.gq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.go, ptr noundef nonnull @.str.33, i64 noundef %i.gp) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit347:                                ; preds = %.thread.i346, %bb.aw
  %i.gr = phi ptr [ %i.gj, %.thread.i346 ], [ %i.gm, %bb.aw ]
  store ptr %i.gr, ptr %4, align 8, !tbaa !35
  %.not327 = xor i1 %i.i, true
  %i.gs = icmp eq ptr %i.ar, null
  %or.cond.not = select i1 %.0278404, i1 true, i1 %i.gs ; 2 uses
  %or.cond = select i1 %.not327, i1 %or.cond.not, i1 false
  br i1 %or.cond, label %bb.bh, label %bb.ay

bb.ay:                                            ; preds = %gv_calloc.exit347
  %i.gt = add nsw i32 %.0281, 1                   ; 2 uses
  %i.gu = sext i32 %i.gt to i64                   ; 7 uses
  %.not.i348 = icmp eq i32 %i.gt, 0
  br i1 %.not.i348, label %.thread.i361, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %mul.ov.i350 = icmp slt i32 %.0281, -1
  br i1 %mul.ov.i350, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.gw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gv, ptr noundef nonnull @.str.32, i64 noundef %i.gu, i64 noundef 4) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gx = call noalias ptr @calloc(i64 noundef %i.gu, i64 noundef 4) #24 ; 2 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gz = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ha = shl nuw nsw i64 %i.gu, 2
  %i.hb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gz, ptr noundef nonnull @.str.33, i64 noundef %i.ha) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

bb.bd:                                            ; preds = %bb.bb
  store ptr %i.gx, ptr %7, align 8, !tbaa !75
  %i.hc = call noalias ptr @calloc(i64 noundef %i.gu, i64 noundef 4) #24 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.hf = shl nuw nsw i64 %i.gu, 2
  %i.hg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.he, ptr noundef nonnull @.str.33, i64 noundef %i.hf) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

.thread.i361:                                     ; preds = %bb.ay
  %i.hh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #24
  store ptr %i.hh, ptr %7, align 8, !tbaa !75
  %i.hi = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #24
  store ptr %i.hi, ptr %8, align 8, !tbaa !75
  %i.hj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #24
  br label %gv_calloc.exit362

bb.bf:                                            ; preds = %bb.bd
  store ptr %i.hc, ptr %8, align 8, !tbaa !75
  %i.hk = call noalias ptr @calloc(i64 noundef %i.gu, i64 noundef 4) #24 ; 2 uses
  %i.hl = icmp eq ptr %i.hk, null
  br i1 %i.hl, label %bb.bg, label %gv_calloc.exit362

bb.bg:                                            ; preds = %bb.bf
  %i.hm = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.hn = shl nuw nsw i64 %i.gu, 2
  %i.ho = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hm, ptr noundef nonnull @.str.33, i64 noundef %i.hn) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

bb.bh:                                            ; preds = %gv_calloc.exit347
  store ptr null, ptr %7, align 8, !tbaa !75
  store ptr null, ptr %8, align 8, !tbaa !75
  br label %gv_calloc.exit362

gv_calloc.exit362:                                ; preds = %bb.bf, %.thread.i361, %bb.bh
  %storemerge = phi ptr [ null, %bb.bh ], [ %i.hj, %.thread.i361 ], [ %i.hk, %bb.bf ]
  store ptr %storemerge, ptr %9, align 8, !tbaa !75
  br i1 %.not.i338, label %.thread.i371, label %bb.bi

bb.bi:                                            ; preds = %gv_calloc.exit362
  %mul.ov.i365 = icmp slt i32 %i.j, 0
  br i1 %mul.ov.i365, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hp = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.hq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hp, ptr noundef nonnull @.str.32, i64 noundef %i.ci, i64 noundef 4) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %i.hr = call noalias ptr @calloc(i64 noundef %i.ci, i64 noundef 4) #24 ; 2 uses
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ht = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.hu = shl nuw nsw i64 %i.ci, 2
  %i.hv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ht, ptr noundef nonnull @.str.33, i64 noundef %i.hu) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

.thread.i371:                                     ; preds = %gv_calloc.exit362
  %i.hw = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #24
  store ptr %i.hw, ptr %10, align 8, !tbaa !75
  %i.hx = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #24
  br label %gv_calloc.exit372

bb.bm:                                            ; preds = %bb.bk
  store ptr %i.hr, ptr %10, align 8, !tbaa !75
  %i.hy = call noalias ptr @calloc(i64 noundef %i.ci, i64 noundef 8) #24 ; 2 uses
  %i.hz = icmp eq ptr %i.hy, null
  br i1 %i.hz, label %bb.bn, label %gv_calloc.exit372

bb.bn:                                            ; preds = %bb.bm
  %i.ia = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ib = shl nuw nsw i64 %i.ci, 3
  %i.ic = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ia, ptr noundef nonnull @.str.33, i64 noundef %i.ib) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit372:                                ; preds = %.thread.i371, %bb.bm
  %i.id = phi ptr [ %i.hx, %.thread.i371 ], [ %i.hy, %bb.bm ]
  store ptr %i.id, ptr %11, align 8, !tbaa !38
  %i.ie = call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not461 = icmp eq ptr %i.ie, null
  br i1 %.not461, label %._crit_edge466, label %.lr.ph465

.lr.ph465:                                        ; preds = %gv_calloc.exit372
  %i.if = sub nsw i32 %.0281, %.3                 ; 2 uses
  %i.ig = icmp slt i32 %i.if, %.0274
  %i.ih = add nsw i32 %.0274, -1
  %i.ii = call i32 @llvm.smax.i32(i32 %i.if, i32 1)
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ik = getelementptr inbounds nuw i8, ptr %16, i64 16
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph465, %bb.dh
  %.6462 = phi ptr [ %i.ie, %.lr.ph465 ], [ %i.pb, %bb.dh ] ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.il = getelementptr inbounds nuw i8, ptr %.6462, i64 16
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !19
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load i32, ptr %i.in, align 8, !tbaa !23 ; 4 uses
  %i.ip = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.22) #19
  %.not315 = icmp eq ptr %i.ip, null
  br i1 %.not315, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iq = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.23) #19
  %.not316 = icmp eq ptr %i.iq, null
  br i1 %.not316, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ir = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.22) #19
  %i.is = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ir, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.it = load double, ptr %i.f, align 8, !tbaa !29
  %i.iu = fmul double %i.it, 5.000000e-01
  %i.iv = fmul double %i.iu, 7.200000e+01
  %i.iw = load ptr, ptr %4, align 8, !tbaa !35
  %i.ix = shl nsw i32 %i.io, 1
  %i.iy = sext i32 %i.ix to i64                   ; 2 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iw, i64 %i.iy
  store double %i.iv, ptr %i.iz, align 8, !tbaa !29
  %i.ja = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.23) #19
  %i.jb = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.ja, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.f) #19 ; 0 uses
  %i.jc = load double, ptr %i.f, align 8, !tbaa !29
  %i.jd = fmul double %i.jc, 5.000000e-01
  %i.je = fmul double %i.jd, 7.200000e+01
  %i.jf = load ptr, ptr %4, align 8, !tbaa !35
  %i.jg = getelementptr [8 x i8], ptr %i.jf, i64 %i.iy
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %i.jh = load ptr, ptr %4, align 8, !tbaa !35
  %i.ji = shl nsw i32 %i.io, 1
  %i.jj = sext i32 %i.ji to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.jj ; 2 uses
  store double 2.700000e+01, ptr %i.jk, align 8, !tbaa !29
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink536 = phi ptr [ %i.jk, %bb.br ], [ %i.jg, %bb.bq ]
  %.sink = phi double [ 7.200000e+01, %bb.br ], [ %i.je, %bb.bq ]
  %i.jl = getelementptr i8, ptr %.sink536, i64 8
  store double %.sink, ptr %i.jl, align 8, !tbaa !29
  %i.jm = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.24) #19
  %.not317 = icmp eq ptr %i.jm, null
  br i1 %.not317, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jn = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.24) #19
  %i.jo = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.jn, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.d) #19 ; 0 uses
  %i.jp = load float, ptr %i.d, align 4, !tbaa !41
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %bb.bt
  %.sink537 = phi float [ %i.jp, %bb.bt ], [ 1.400000e+01, %bb.bs ]
  %i.jq = load ptr, ptr %10, align 8, !tbaa !75
  %i.jr = sext i32 %i.io to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.jr
  store float %.sink537, ptr %i.js, align 4, !tbaa !41
  %i.jt = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.26) #19
  %.not318 = icmp eq ptr %i.jt, null
  br i1 %.not318, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ju = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.26) #19
  %strcmpload = load i8, ptr %i.ju, align 1
  %.not319 = icmp eq i8 %strcmpload, 0
  br i1 %.not319, label %bb.bw, label %sub_0

sub_0:                                            ; preds = %bb.bv
  %i.jv = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.26) #19 ; 3 uses
  %i.jw = load i8, ptr %i.jv, align 1
  %.not473 = icmp eq i8 %i.jw, 92
  br i1 %.not473, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 1
  %i.jy = load i8, ptr %i.jx, align 1
  %.not474 = icmp eq i8 %i.jy, 78
  br i1 %.not474, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jv, i64 2
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = icmp eq i8 %i.ka, 0
  br i1 %i.kb, label %bb.bw, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.kc = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.26) #19
  br label %bb.bx

bb.bw:                                            ; preds = %.tail, %bb.bv, %bb.bu
  %i.kd = call ptr @agnameof(ptr noundef nonnull %.6462) #19
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %.tail.thread
  %.sink545 = phi ptr [ %i.kd, %bb.bw ], [ %i.kc, %.tail.thread ]
  %i.ke = call noalias ptr @strdup(ptr noundef %.sink545) #19
  %i.kf = load ptr, ptr %11, align 8, !tbaa !38
  %i.kg = sext i32 %i.io to i64                   ; 4 uses
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.kg
  store ptr %i.ke, ptr %i.kh, align 8, !tbaa !39
  %i.ki = load ptr, ptr %6, align 8, !tbaa !42
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.ki, i64 %i.kg
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !33 ; 2 uses
  %i.kl = sub nsw i32 %i.kk, %.3                  ; 2 uses
  br i1 %i.ig, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.km = udiv i32 %i.ih, %i.ii
  %i.kn = mul nsw i32 %i.km, %i.kl
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.ko = srem i32 %i.kl, %.0274
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.0282 = phi i32 [ %i.kn, %bb.by ], [ %i.ko, %bb.bz ]
  br i1 %i.i, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.kp = mul nsw i32 %.0282, 3
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %.0275, i64 %i.kq ; 3 uses
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !41
  %i.kt = load ptr, ptr %7, align 8, !tbaa !75
  %i.ku = sext i32 %i.kk to i64                   ; 3 uses
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.kt, i64 %i.ku
  store float %i.ks, ptr %i.kv, align 4, !tbaa !41
  %i.kw = getelementptr i8, ptr %i.kr, i64 4
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !41
  %i.ky = load ptr, ptr %8, align 8, !tbaa !75
  %i.kz = getelementptr inbounds [4 x i8], ptr %i.ky, i64 %i.ku
  store float %i.kx, ptr %i.kz, align 4, !tbaa !41
  %i.la = getelementptr i8, ptr %i.kr, i64 8
  %i.lb = load float, ptr %i.la, align 4, !tbaa !41
  %i.lc = load ptr, ptr %9, align 8, !tbaa !75
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.ku
  store float %i.lb, ptr %i.ld, align 4, !tbaa !41
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  br i1 %or.cond.not, label %bb.cf, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.le = call ptr @agxget(ptr noundef nonnull %.6462, ptr noundef nonnull %i.ar) #19
  %i.lf = call i32 @colorxlate(ptr noundef %i.le, ptr noundef nonnull %16, i32 noundef 3) #19
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.lh = load double, ptr %16, align 8, !tbaa !30
  %i.li = fptrunc double %i.lh to float
  %i.lj = load ptr, ptr %7, align 8, !tbaa !75
  %i.lk = load ptr, ptr %6, align 8, !tbaa !42
  %i.ll = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.kg
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !33
  %i.ln = sext i32 %i.lm to i64                   ; 3 uses
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ln
  store float %i.li, ptr %i.lo, align 4, !tbaa !41
  %i.lp = load double, ptr %i.ij, align 8, !tbaa !30
  %i.lq = fptrunc double %i.lp to float
  %i.lr = load ptr, ptr %8, align 8, !tbaa !75
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.lr, i64 %i.ln
  store float %i.lq, ptr %i.ls, align 4, !tbaa !41
  %i.lt = load double, ptr %i.ik, align 8, !tbaa !30
  %i.lu = fptrunc double %i.lt to float
  %i.lv = load ptr, ptr %9, align 8, !tbaa !75
  %i.lw = getelementptr inbounds [4 x i8], ptr %i.lv, i64 %i.ln
  store float %i.lu, ptr %i.lw, align 4, !tbaa !41
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.lx = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.14) #19 ; 8 uses
  br i1 %.0278404, label %bb.dh, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ly = call ptr @agget(ptr noundef nonnull %.6462, ptr noundef nonnull @.str.16) #19
  %i.lz = icmp ne ptr %i.ly, null
  %i.ma = icmp ne ptr %i.lx, null
  %or.cond6 = select i1 %i.lz, i1 %i.ma, i1 false
  br i1 %or.cond6, label %bb.ch, label %bb.dh

bb.ch:                                            ; preds = %bb.cg
  %i.mb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.lx) #26
  %i.mc = icmp ugt i64 %i.mb, 6
  %or.cond8 = and i1 %i.i, %i.mc
  br i1 %or.cond8, label %bb.ci, label %bb.dh

bb.ci:                                            ; preds = %bb.ch
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 1
  %i.me = load i8, ptr %i.md, align 1, !tbaa !30  ; 4 uses
  %i.mf = sext i8 %i.me to i32                    ; 3 uses
  %i.mg = add i8 %i.me, -48
  %or.cond.i.i = icmp ult i8 %i.mg, 10
  br i1 %or.cond.i.i, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.mh = add nsw i32 %i.mf, -48
  br label %hex2int.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.mi = add i8 %i.me, -97
  %or.cond5.i.i = icmp ult i8 %i.mi, 6
  br i1 %or.cond5.i.i, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.mj = add nsw i32 %i.mf, -87
  br label %hex2int.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.mk = add i8 %i.me, -65
  %or.cond8.i.i = icmp ult i8 %i.mk, 6
  %i.ml = add nsw i32 %i.mf, -55
  %spec.select.i.i = select i1 %or.cond8.i.i, i32 %i.ml, i32 0
  br label %hex2int.exit.i

hex2int.exit.i:                                   ; preds = %bb.cm, %bb.cl, %bb.cj
  %.0.i.i = phi i32 [ %i.mh, %bb.cj ], [ %i.mj, %bb.cl ], [ %spec.select.i.i, %bb.cm ]
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lx, i64 2
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !30  ; 4 uses
  %i.mo = sext i8 %i.mn to i32                    ; 3 uses
  %i.mp = add i8 %i.mn, -48
  %or.cond.i2.i = icmp ult i8 %i.mp, 10
  br i1 %or.cond.i2.i, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %hex2int.exit.i
  %i.mq = add nsw i32 %i.mo, -48
  br label %hexcol2rgb.exit

bb.co:                                            ; preds = %hex2int.exit.i
  %i.mr = add i8 %i.mn, -97
  %or.cond5.i3.i = icmp ult i8 %i.mr, 6
  br i1 %or.cond5.i3.i, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ms = add nsw i32 %i.mo, -87
  br label %hexcol2rgb.exit

bb.cq:                                            ; preds = %bb.co
  %i.mt = add i8 %i.mn, -65
  %or.cond8.i4.i = icmp ult i8 %i.mt, 6
  %i.mu = add nsw i32 %i.mo, -55
  %spec.select.i5.i = select i1 %or.cond8.i4.i, i32 %i.mu, i32 0
  br label %hexcol2rgb.exit

hexcol2rgb.exit:                                  ; preds = %bb.cn, %bb.cp, %bb.cq
  %.0.i6.i = phi i32 [ %i.mq, %bb.cn ], [ %i.ms, %bb.cp ], [ %spec.select.i5.i, %bb.cq ]
  %i.mv = shl nuw nsw i32 %.0.i.i, 4
  %i.mw = add nuw nsw i32 %.0.i6.i, %i.mv
  %i.mx = uitofp nneg i32 %i.mw to float
  %i.my = fdiv float %i.mx, 2.550000e+02
  %i.mz = load ptr, ptr %7, align 8, !tbaa !75
  %i.na = load ptr, ptr %6, align 8, !tbaa !42
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.na, i64 %i.kg
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !33
  %i.nd = sext i32 %i.nc to i64                   ; 3 uses
  %i.ne = getelementptr inbounds [4 x i8], ptr %i.mz, i64 %i.nd
  store float %i.my, ptr %i.ne, align 4, !tbaa !41
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lx, i64 3
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !30  ; 4 uses
  %i.nh = sext i8 %i.ng to i32                    ; 3 uses
  %i.ni = add i8 %i.ng, -48
  %or.cond.i.i373 = icmp ult i8 %i.ni, 10
  br i1 %or.cond.i.i373, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %hexcol2rgb.exit
  %i.nj = add nsw i32 %i.nh, -48
  br label %hex2int.exit.i377

bb.cs:                                            ; preds = %hexcol2rgb.exit
  %i.nk = add i8 %i.ng, -97
  %or.cond5.i.i374 = icmp ult i8 %i.nk, 6
  br i1 %or.cond5.i.i374, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.nl = add nsw i32 %i.nh, -87
  br label %hex2int.exit.i377

bb.cu:                                            ; preds = %bb.cs
  %i.nm = add i8 %i.ng, -65
  %or.cond8.i.i375 = icmp ult i8 %i.nm, 6
  %i.nn = add nsw i32 %i.nh, -55
  %spec.select.i.i376 = select i1 %or.cond8.i.i375, i32 %i.nn, i32 0
  br label %hex2int.exit.i377

hex2int.exit.i377:                                ; preds = %bb.cu, %bb.ct, %bb.cr
  %.0.i.i378 = phi i32 [ %i.nj, %bb.cr ], [ %i.nl, %bb.ct ], [ %spec.select.i.i376, %bb.cu ]
  %i.no = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.np = load i8, ptr %i.no, align 1, !tbaa !30  ; 4 uses
  %i.nq = sext i8 %i.np to i32                    ; 3 uses
  %i.nr = add i8 %i.np, -48
  %or.cond.i2.i379 = icmp ult i8 %i.nr, 10
  br i1 %or.cond.i2.i379, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %hex2int.exit.i377
  %i.ns = add nsw i32 %i.nq, -48
  br label %hexcol2rgb.exit384

bb.cw:                                            ; preds = %hex2int.exit.i377
  %i.nt = add i8 %i.np, -97
  %or.cond5.i3.i380 = icmp ult i8 %i.nt, 6
  br i1 %or.cond5.i3.i380, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.nu = add nsw i32 %i.nq, -87
  br label %hexcol2rgb.exit384

bb.cy:                                            ; preds = %bb.cw
  %i.nv = add i8 %i.np, -65
  %or.cond8.i4.i381 = icmp ult i8 %i.nv, 6
  %i.nw = add nsw i32 %i.nq, -55
  %spec.select.i5.i382 = select i1 %or.cond8.i4.i381, i32 %i.nw, i32 0
  br label %hexcol2rgb.exit384

hexcol2rgb.exit384:                               ; preds = %bb.cv, %bb.cx, %bb.cy
  %.0.i6.i383 = phi i32 [ %i.ns, %bb.cv ], [ %i.nu, %bb.cx ], [ %spec.select.i5.i382, %bb.cy ]
  %i.nx = shl nuw nsw i32 %.0.i.i378, 4
  %i.ny = add nuw nsw i32 %.0.i6.i383, %i.nx
  %i.nz = uitofp nneg i32 %i.ny to float
  %i.oa = fdiv float %i.nz, 2.550000e+02
  %i.ob = load ptr, ptr %8, align 8, !tbaa !75
  %i.oc = getelementptr inbounds [4 x i8], ptr %i.ob, i64 %i.nd
  store float %i.oa, ptr %i.oc, align 4, !tbaa !41
  %i.od = getelementptr inbounds nuw i8, ptr %i.lx, i64 5
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !30  ; 4 uses
  %i.of = sext i8 %i.oe to i32                    ; 3 uses
  %i.og = add i8 %i.oe, -48
  %or.cond.i.i385 = icmp ult i8 %i.og, 10
  br i1 %or.cond.i.i385, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %hexcol2rgb.exit384
  %i.oh = add nsw i32 %i.of, -48
  br label %hex2int.exit.i389

bb.da:                                            ; preds = %hexcol2rgb.exit384
  %i.oi = add i8 %i.oe, -97
  %or.cond5.i.i386 = icmp ult i8 %i.oi, 6
  br i1 %or.cond5.i.i386, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.oj = add nsw i32 %i.of, -87
  br label %hex2int.exit.i389

bb.dc:                                            ; preds = %bb.da
  %i.ok = add i8 %i.oe, -65
  %or.cond8.i.i387 = icmp ult i8 %i.ok, 6
  %i.ol = add nsw i32 %i.of, -55
  %spec.select.i.i388 = select i1 %or.cond8.i.i387, i32 %i.ol, i32 0
  br label %hex2int.exit.i389

hex2int.exit.i389:                                ; preds = %bb.dc, %bb.db, %bb.cz
  %.0.i.i390 = phi i32 [ %i.oh, %bb.cz ], [ %i.oj, %bb.db ], [ %spec.select.i.i388, %bb.dc ]
  %i.om = getelementptr inbounds nuw i8, ptr %i.lx, i64 6
  %i.on = load i8, ptr %i.om, align 1, !tbaa !30  ; 4 uses
  %i.oo = sext i8 %i.on to i32                    ; 3 uses
  %i.op = add i8 %i.on, -48
  %or.cond.i2.i391 = icmp ult i8 %i.op, 10
  br i1 %or.cond.i2.i391, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %hex2int.exit.i389
  %i.oq = add nsw i32 %i.oo, -48
  br label %hexcol2rgb.exit396

bb.de:                                            ; preds = %hex2int.exit.i389
  %i.or = add i8 %i.on, -97
  %or.cond5.i3.i392 = icmp ult i8 %i.or, 6
  br i1 %or.cond5.i3.i392, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.os = add nsw i32 %i.oo, -87
  br label %hexcol2rgb.exit396

bb.dg:                                            ; preds = %bb.de
  %i.ot = add i8 %i.on, -65
  %or.cond8.i4.i393 = icmp ult i8 %i.ot, 6
  %i.ou = add nsw i32 %i.oo, -55
  %spec.select.i5.i394 = select i1 %or.cond8.i4.i393, i32 %i.ou, i32 0
  br label %hexcol2rgb.exit396

hexcol2rgb.exit396:                               ; preds = %bb.dd, %bb.df, %bb.dg
  %.0.i6.i395 = phi i32 [ %i.oq, %bb.dd ], [ %i.os, %bb.df ], [ %spec.select.i5.i394, %bb.dg ]
  %i.ov = shl nuw nsw i32 %.0.i.i390, 4
  %i.ow = add nuw nsw i32 %.0.i6.i395, %i.ov
  %i.ox = uitofp nneg i32 %i.ow to float
  %i.oy = fdiv float %i.ox, 2.550000e+02
  %i.oz = load ptr, ptr %9, align 8, !tbaa !75
  %i.pa = getelementptr inbounds [4 x i8], ptr %i.oz, i64 %i.nd
  store float %i.oy, ptr %i.pa, align 4, !tbaa !41
  br label %bb.dh

bb.dh:                                            ; preds = %hexcol2rgb.exit396, %bb.ch, %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  %i.pb = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.6462) #19 ; 2 uses
  %.not = icmp eq ptr %i.pb, null
  br i1 %.not, label %._crit_edge466, label %bb.bo, !llvm.loop !71

._crit_edge466:                                   ; preds = %bb.dh, %gv_calloc.exit372
  br i1 %.not.i343, label %.thread.i400, label %bb.di

.thread.i400:                                     ; preds = %._crit_edge466
  %i.pc = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #24
  br label %gv_calloc.exit401

bb.di:                                            ; preds = %._crit_edge466
  %mul.ov.i399 = icmp slt i32 %i.gh, 0
  br i1 %mul.ov.i399, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.pd = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.pe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pd, ptr noundef nonnull @.str.32, i64 noundef %i.gi, i64 noundef 8) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.pf = call noalias ptr @calloc(i64 noundef %i.gi, i64 noundef 8) #24 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %bb.dl, label %gv_calloc.exit401

bb.dl:                                            ; preds = %bb.dk
  %i.ph = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.pi = shl nuw nsw i64 %i.gi, 3
  %i.pj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ph, ptr noundef nonnull @.str.33, i64 noundef %i.pi) #22 ; 0 uses
  call fastcc void @graphviz_exit() #23
  unreachable

gv_calloc.exit401:                                ; preds = %.thread.i400, %bb.dk
  %i.pk = phi ptr [ %i.pc, %.thread.i400 ], [ %i.pf, %bb.dk ]
  store ptr %i.pk, ptr %5, align 8, !tbaa !35
  %i.pl = call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not313467 = icmp eq ptr %i.pl, null
  br i1 %.not313467, label %.critedge, label %.lr.ph470.outer

.lr.ph470.outer:                                  ; preds = %gv_calloc.exit401, %.thread
  %.0469.ph = phi i1 [ true, %.thread ], [ false, %gv_calloc.exit401 ]
  %.7468.ph = phi ptr [ %i.qh, %.thread ], [ %i.pl, %gv_calloc.exit401 ]
  br label %.lr.ph470

.lr.ph470:                                        ; preds = %.lr.ph470.outer, %bb.dm
  %.7468 = phi ptr [ %i.px, %bb.dm ], [ %.7468.ph, %.lr.ph470.outer ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.pm = getelementptr inbounds nuw i8, ptr %.7468, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !19
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !23 ; 3 uses
  %i.pq = call ptr @agget(ptr noundef nonnull %.7468, ptr noundef nonnull @.str.5) #19
  %.not314 = icmp eq ptr %i.pq, null
  br i1 %.not314, label %bb.dm, label %.thread

bb.dm:                                            ; preds = %.lr.ph470
  %i.pr = load ptr, ptr @stderr, align 8, !tbaa !27
  %i.ps = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.pr, ptr noundef nonnull @.str.28, i32 noundef %i.pp) #22 ; 0 uses
  %i.pt = load ptr, ptr %5, align 8, !tbaa !35
  %i.pu = mul nsw i32 %i.pp, %2
  %i.pv = sext i32 %i.pu to i64
  %i.pw = getelementptr inbounds [8 x i8], ptr %i.pt, i64 %i.pv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pw, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.px = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.7468) #19 ; 2 uses
  %.not313 = icmp eq ptr %i.px, null
  br i1 %.not313, label %._crit_edge471, label %.lr.ph470, !llvm.loop !72

.thread:                                          ; preds = %.lr.ph470
  %i.py = call ptr @agget(ptr noundef nonnull %.7468, ptr noundef nonnull @.str.5) #19
  %i.pz = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.py, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #19 ; 0 uses
  %i.qa = load double, ptr %i.g, align 8, !tbaa !29
  %i.qb = load ptr, ptr %5, align 8, !tbaa !35
  %i.qc = mul nsw i32 %i.pp, %2
  %i.qd = sext i32 %i.qc to i64
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qd ; 2 uses
  store double %i.qa, ptr %i.qe, align 8, !tbaa !29
  %i.qf = load double, ptr %i.h, align 8, !tbaa !29
  %i.qg = getelementptr i8, ptr %i.qe, i64 8
  store double %i.qf, ptr %i.qg, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  %i.qh = call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.7468) #19 ; 2 uses
  %.not313528 = icmp eq ptr %i.qh, null
  br i1 %.not313528, label %._crit_edge471.thread, label %.lr.ph470.outer, !llvm.loop !72

._crit_edge471:                                   ; preds = %bb.dm
  br i1 %.0469.ph, label %._crit_edge471.thread, label %.critedge

.critedge:                                        ; preds = %gv_calloc.exit401, %._crit_edge471
  %i.qi = load ptr, ptr %5, align 8, !tbaa !35
  call void @free(ptr noundef %i.qi) #19
  store ptr null, ptr %5, align 8, !tbaa !35
  br label %._crit_edge471.thread

._crit_edge471.thread:                            ; preds = %.thread, %.critedge, %._crit_edge471
  call void @free(ptr noundef %i.an) #19
  call void @free(ptr noundef %i.am) #19
  call void @free(ptr noundef %i.ao) #19
  br label %bb.dn

bb.dn:                                            ; preds = %bb.l, %._crit_edge471.thread
  %.0270 = phi ptr [ %i.ch, %._crit_edge471.thread ], [ null, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret ptr %.0270
}

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #2

declare ptr @agnxtsubg(ptr noundef) local_unnamed_addr #2

declare void @mq_clustering(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @modularity_clustering(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

declare ptr @agget(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @colorxlate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define void @attached_clustering(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %3 = alloca %struct.itos_, align 1              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @agnnodes(ptr noundef nonnull %0) #19 ; 8 uses
  %i.f = tail call i32 @agnedges(ptr noundef nonnull %0) #19 ; 3 uses
  %i.g = tail call ptr @agfstnode(ptr noundef nonnull %0) #19 ; 2 uses
  %.not79104 = icmp eq ptr %i.g, null
  br i1 %.not79104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.0106 = phi i32 [ %i.h, %.lr.ph ], [ 0, %bb.b ] ; 2 uses
  %.072105 = phi ptr [ %i.l, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %i.h = add nuw nsw i32 %.0106, 1
  %i.i = getelementptr inbounds nuw i8, ptr %.072105, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %.0106, ptr %i.k, align 8, !tbaa !23
  %i.l = tail call ptr @agnxtnode(ptr noundef nonnull %0, ptr noundef nonnull %.072105) #19 ; 2 uses
end_hunk_0
