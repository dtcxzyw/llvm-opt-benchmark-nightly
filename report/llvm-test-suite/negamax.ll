inline.NumInlined: 2
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@search_for_move:bb.a
  %i.fu = load i32, ptr %i.ft, align 16, !tbaa !18 ; 2 uses
  %i.fv = and i32 %i.fu, 31
  %i.fw = shl nuw i32 1, %i.fv
  %i.fx = sdiv i32 %i.fu, 32
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.fy ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !4
  %i.gb = xor i32 %i.fw, %i.ga
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !20 ; 2 uses
  %i.ge = and i32 %i.gd, 31
  %i.gf = shl nuw i32 1, %i.ge
  %i.gg = sdiv i32 %i.gd, 32
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr @g_norm_hashkey, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !4
  %i.gk = xor i32 %i.gf, %i.gj
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !4
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gm = load i32, ptr %i.gl, align 8, !tbaa !21
  %i.gn = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.go = xor i32 %i.gn, %i.gm
  store i32 %i.go, ptr getelementptr inbounds nuw (i8, ptr @g_norm_hashkey, i64 16), align 4, !tbaa !22
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !24 ; 2 uses
  %i.gr = and i32 %i.gq, 31
  %i.gs = shl nuw i32 1, %i.gr
  %i.gt = sdiv i32 %i.gq, 32
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.gu ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !4
  %i.gx = xor i32 %i.gs, %i.gw
  store i32 %i.gx, ptr %i.gv, align 4, !tbaa !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.gz = load i32, ptr %i.gy, align 16, !tbaa !25 ; 2 uses
  %i.ha = and i32 %i.gz, 31
  %i.hb = shl nuw i32 1, %i.ha
  %i.hc = sdiv i32 %i.gz, 32
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds [4 x i8], ptr @g_flipV_hashkey, i64 %i.hd ; 2 uses
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !4
  %i.hg = xor i32 %i.hb, %i.hf
  store i32 %i.hg, ptr %i.he, align 4, !tbaa !4
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !26
  %i.hj = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.hk = xor i32 %i.hj, %i.hi
  store i32 %i.hk, ptr getelementptr inbounds nuw (i8, ptr @g_flipV_hashkey, i64 16), align 4, !tbaa !22
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ft, i64 24
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !27 ; 2 uses
  %i.hn = and i32 %i.hm, 31
  %i.ho = shl nuw i32 1, %i.hn
  %i.hp = sdiv i32 %i.hm, 32
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.hq ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !4
  %i.ht = xor i32 %i.ho, %i.hs
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ft, i64 28
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !28 ; 2 uses
  %i.hw = and i32 %i.hv, 31
  %i.hx = shl nuw i32 1, %i.hw
  %i.hy = sdiv i32 %i.hv, 32
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr @g_flipH_hashkey, i64 %i.hz ; 2 uses
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !4
  %i.ic = xor i32 %i.hx, %i.ib
  store i32 %i.ic, ptr %i.ia, align 4, !tbaa !4
  %i.id = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.ie = load i32, ptr %i.id, align 16, !tbaa !29
  %i.if = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ig = xor i32 %i.if, %i.ie
  store i32 %i.ig, ptr getelementptr inbounds nuw (i8, ptr @g_flipH_hashkey, i64 16), align 4, !tbaa !22
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ft, i64 36
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !30 ; 2 uses
  %i.ij = and i32 %i.ii, 31
  %i.ik = shl nuw i32 1, %i.ij
  %i.il = sdiv i32 %i.ii, 32
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.im ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !4
  %i.ip = xor i32 %i.ik, %i.io
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !4
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !31 ; 2 uses
  %i.is = and i32 %i.ir, 31
  %i.it = shl nuw i32 1, %i.is
  %i.iu = sdiv i32 %i.ir, 32
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds [4 x i8], ptr @g_flipVH_hashkey, i64 %i.iv ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %i.iy = xor i32 %i.it, %i.ix
  store i32 %i.iy, ptr %i.iw, align 4, !tbaa !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !32
  %i.jb = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  %i.jc = xor i32 %i.jb, %i.ja
  store i32 %i.jc, ptr getelementptr inbounds nuw (i8, ptr @g_flipVH_hashkey, i64 16), align 4, !tbaa !22
  call void (...) @check_hash_code_sanity() #10
  %i.jd = load i32, ptr %i.bs, align 4, !tbaa !13
  %i.je = load i32, ptr %i.bw, align 4, !tbaa !15
  %i.jf = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  %i.jg = call ptr @u64bit_to_string(i64 noundef %i.jf) #10
  %i.jh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.jd, i32 noundef %i.je, i32 noundef %i.fl, ptr noundef %i.jg) ; 0 uses
  %i.ji = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.0253285, i32 noundef 5000) ; 0 uses
  store i32 %i.fl, ptr %.sroa.218.0..sroa_idx, align 4, !tbaa !33
  %i.jj = icmp slt i32 %i.fk, -4999
  br i1 %i.jj, label %._crit_edge289, label %bb.m

bb.m:                                             ; preds = %bb.l
  %spec.select = call i32 @llvm.smax.i32(i32 %.0253285, i32 %i.fl)
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %exitcond323.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count322
  br i1 %exitcond323.not, label %._crit_edge289, label %bb.l, !llvm.loop !34

._crit_edge289:                                   ; preds = %bb.m, %bb.l
  %.1246.lcssa.ph = phi i32 [ %.0255312, %bb.m ], [ %i.bp, %bb.l ]
  %i.jk = icmp slt i32 %i.fk, -4999
  br i1 %i.jk, label %.split.loop.exit356, label %.lr.ph297.preheader

._crit_edge289.thread:                            ; preds = %bb.k
  %i.jl = icmp sgt i32 %.0249313, 4999
  br i1 %i.jl, label %.split.loop.exit, label %._crit_edge298

.lr.ph297.preheader:                              ; preds = %._crit_edge289
  %wide.trip.count327 = zext nneg i32 %.0255312 to i64
  br label %.lr.ph297

.split.loop.exit356:                              ; preds = %._crit_edge289
  %i.jm = zext nneg i32 %.1246.lcssa.ph to i64
  br label %.split.loop.exit

.split.loop.exit:                                 ; preds = %._crit_edge289.thread, %.split.loop.exit356
  %.2251351 = phi i32 [ %i.fl, %.split.loop.exit356 ], [ %.0249313, %._crit_edge289.thread ] ; 2 uses
  %.1246.lcssa350 = phi i64 [ %i.jm, %.split.loop.exit356 ], [ 0, %._crit_edge289.thread ]
  %i.jn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %.2251351) ; 0 uses
  %i.jo = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %.1246.lcssa350 ; 2 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %. = select i1 %.not268, ptr %2, ptr %1
  %.360 = select i1 %.not268, ptr %1, ptr %2
  store i32 %i.jp, ptr %., align 4, !tbaa !4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !15
  store i32 %i.jr, ptr %.360, align 4, !tbaa !4
  %i.js = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  store i64 %i.js, ptr %3, align 8, !tbaa !16
  call fastcc void @print_stats()
  br label %.thread

.lr.ph297:                                        ; preds = %.lr.ph297.preheader, %bb.q
  %indvars.iv324 = phi i64 [ 0, %.lr.ph297.preheader ], [ %indvars.iv.next325, %bb.q ] ; 3 uses
  %.0240296 = phi i32 [ 0, %.lr.ph297.preheader ], [ %.1241, %bb.q ] ; 5 uses
  %i.jt = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv324 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !33
  %i.jw = icmp slt i32 %i.jv, -4999
  br i1 %i.jw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph297
  %i.jx = add nsw i32 %.0240296, 1
  br label %bb.q

bb.o:                                             ; preds = %.lr.ph297
  %i.jy = icmp sgt i32 %.0240296, 0
  br i1 %i.jy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.jz = trunc nuw nsw i64 %indvars.iv324 to i32
  %i.ka = sub nsw i32 %i.jz, %.0240296
  %i.kb = sext i32 %i.ka to i64
  %i.kc = getelementptr inbounds [12 x i8], ptr %4, i64 %i.kb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kc, ptr noundef nonnull align 4 dereferenceable(12) %i.jt, i64 12, i1 false), !tbaa.struct !35
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o
  %.1241 = phi i32 [ %i.jx, %bb.n ], [ %.0240296, %bb.p ], [ %.0240296, %bb.o ] ; 2 uses
  %indvars.iv.next325 = add nuw nsw i64 %indvars.iv324, 1 ; 2 uses
  %exitcond328.not = icmp eq i64 %indvars.iv.next325, %wide.trip.count327
  br i1 %exitcond328.not, label %._crit_edge298, label %.lr.ph297, !llvm.loop !36

._crit_edge298:                                   ; preds = %bb.q, %._crit_edge289.thread
  %.2251352354 = phi i32 [ %.0249313, %._crit_edge289.thread ], [ %i.fl, %bb.q ] ; 3 uses
  %.0240.lcssa = phi i32 [ 0, %._crit_edge289.thread ], [ %.1241, %bb.q ]
  %i.kd = sub i32 %.0255312, %.0240.lcssa         ; 5 uses
  call fastcc void @print_stats()
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.u, label %bb.r

bb.r:                                             ; preds = %._crit_edge298
  %i.kf = icmp sgt i32 %i.kd, 0
  br i1 %i.kf, label %.lr.ph310.preheader, label %._crit_edge311

.lr.ph310.preheader:                              ; preds = %bb.r
  %i.kg = zext nneg i32 %i.kd to i64
  %wide.trip.count344 = zext nneg i32 %i.kd to i64 ; 4 uses
  %i.kh = add nsw i64 %wide.trip.count344, -2
  br label %.lr.ph310

.lr.ph310:                                        ; preds = %.lr.ph310.preheader, %bb.t
  %indvars.iv341 = phi i64 [ 0, %.lr.ph310.preheader ], [ %indvars.iv.next342, %bb.t ] ; 7 uses
  %indvars.iv329 = phi i64 [ 1, %.lr.ph310.preheader ], [ %indvars.iv.next330, %bb.t ] ; 5 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv341 ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 3 uses
  %i.kj = icmp samesign ult i64 %indvars.iv.next342, %i.kg
  %i.kk = trunc nuw nsw i64 %indvars.iv341 to i32 ; 3 uses
  br i1 %i.kj, label %.lr.ph304.preheader, label %._crit_edge305

.lr.ph304.preheader:                              ; preds = %.lr.ph310
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !33 ; 3 uses
  %i.kn = sub nsw i64 %indvars.iv341, %wide.trip.count344
  %i.ko = and i64 %i.kn, 1
  %lcmp.mod372.not.not = icmp eq i64 %i.ko, 0
  br i1 %lcmp.mod372.not.not, label %.lr.ph304.prol, label %.lr.ph304.prol.loopexit

.lr.ph304.prol:                                   ; preds = %.lr.ph304.preheader
  %i.kp = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv329
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !33 ; 2 uses
  %i.ks = icmp sgt i32 %i.kr, %i.km
  %spec.select269.prol = call i32 @llvm.smax.i32(i32 %i.kr, i32 %i.km)
  %i.kt = trunc nuw nsw i64 %indvars.iv329 to i32
  %spec.select270.prol = select i1 %i.ks, i32 %i.kt, i32 %i.kk ; 2 uses
  %indvars.iv.next332.prol = add nuw nsw i64 %indvars.iv329, 1
  br label %.lr.ph304.prol.loopexit

.lr.ph304.prol.loopexit:                          ; preds = %.lr.ph304.prol, %.lr.ph304.preheader
  %spec.select270.lcssa.unr = phi i32 [ poison, %.lr.ph304.preheader ], [ %spec.select270.prol, %.lr.ph304.prol ]
  %indvars.iv331.unr = phi i64 [ %indvars.iv329, %.lr.ph304.preheader ], [ %indvars.iv.next332.prol, %.lr.ph304.prol ]
  %.0236301.unr = phi i32 [ %i.kk, %.lr.ph304.preheader ], [ %spec.select270.prol, %.lr.ph304.prol ]
  %.0238300.unr = phi i32 [ %i.km, %.lr.ph304.preheader ], [ %spec.select269.prol, %.lr.ph304.prol ]
  %i.ku = icmp eq i64 %i.kh, %indvars.iv341
  br i1 %i.ku, label %._crit_edge305, label %.lr.ph304

.lr.ph304:                                        ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304
  %indvars.iv331 = phi i64 [ %indvars.iv.next332.1, %.lr.ph304 ], [ %indvars.iv331.unr, %.lr.ph304.prol.loopexit ] ; 4 uses
  %.0236301 = phi i32 [ %spec.select270.1, %.lr.ph304 ], [ %.0236301.unr, %.lr.ph304.prol.loopexit ]
  %.0238300 = phi i32 [ %spec.select269.1, %.lr.ph304 ], [ %.0238300.unr, %.lr.ph304.prol.loopexit ] ; 2 uses
  %i.kv = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv331
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !33 ; 2 uses
  %i.ky = icmp sgt i32 %i.kx, %.0238300
  %spec.select269 = call i32 @llvm.smax.i32(i32 %i.kx, i32 %.0238300) ; 2 uses
  %i.kz = trunc nuw nsw i64 %indvars.iv331 to i32
  %spec.select270 = select i1 %i.ky, i32 %i.kz, i32 %.0236301
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %i.la = getelementptr inbounds nuw [12 x i8], ptr %4, i64 %indvars.iv.next332
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 8
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !33 ; 2 uses
  %i.ld = icmp sgt i32 %i.lc, %spec.select269
  %spec.select269.1 = call i32 @llvm.smax.i32(i32 %i.lc, i32 %spec.select269)
  %i.le = trunc nuw nsw i64 %indvars.iv.next332 to i32
  %spec.select270.1 = select i1 %i.ld, i32 %i.le, i32 %spec.select270 ; 2 uses
  %indvars.iv.next332.1 = add nuw nsw i64 %indvars.iv331, 2 ; 2 uses
  %exitcond335.not.1 = icmp eq i64 %indvars.iv.next332.1, %wide.trip.count344
  br i1 %exitcond335.not.1, label %._crit_edge305, label %.lr.ph304, !llvm.loop !37

._crit_edge305:                                   ; preds = %.lr.ph304.prol.loopexit, %.lr.ph304, %.lr.ph310
  %.0236.lcssa = phi i32 [ %i.kk, %.lr.ph310 ], [ %spec.select270.lcssa.unr, %.lr.ph304.prol.loopexit ], [ %spec.select270.1, %.lr.ph304 ] ; 3 uses
  %i.lf = zext i32 %.0236.lcssa to i64
  %.not266 = icmp eq i64 %indvars.iv341, %i.lf
  br i1 %.not266, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge305
  %i.lg = sext i32 %.0236.lcssa to i64            ; 2 uses
  %i.lh = getelementptr inbounds [12 x i8], ptr %4, i64 %i.lg
  %.sroa.0.0.copyload373 = load <3 x i32>, ptr %i.lh, align 4
  %5 = trunc i64 %indvars.iv341 to i32
  %6 = xor i32 %5, -1
  %i.li = add i32 %.0236.lcssa, %6
  %i.lj = zext i32 %i.li to i64                   ; 2 uses
  %i.lk = mul nuw nsw i64 %i.lj, 12
  %i.ll = sub nsw i64 %i.lg, %i.lj
  %i.lm = mul nsw i64 %i.ll, 12                   ; 2 uses
  %scevgep = getelementptr i8, ptr %4, i64 %i.lm
  %scevgep337 = getelementptr i8, ptr %scevgep336, i64 %i.lm
  %i.ln = add nuw nsw i64 %i.lk, 12
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep337, i64 %i.ln, i1 false)
  store <3 x i32> %.sroa.0.0.copyload373, ptr %i.ki, align 4
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge305, %bb.s
  %indvars.iv.next330 = add nuw nsw i64 %indvars.iv329, 1
  %exitcond345.not = icmp eq i64 %indvars.iv.next342, %wide.trip.count344
  br i1 %exitcond345.not, label %._crit_edge311, label %.lr.ph310, !llvm.loop !38

._crit_edge311:                                   ; preds = %bb.t, %bb.r
  %i.lo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.2251352354, i32 noundef %.0244314) ; 0 uses
  %i.lp = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.lq) ; 0 uses
  %i.ls = add nuw nsw i32 %.0244314, 44
  %i.lt = icmp samesign ult i32 %.0244314, 6
  br i1 %i.lt, label %bb.k, label %bb.u, !llvm.loop !39

bb.u:                                             ; preds = %._crit_edge298, %._crit_edge311
  store i32 -1, ptr %1, align 4, !tbaa !4
  store i32 -1, ptr %2, align 4, !tbaa !4
  %i.lu = load i64, ptr @g_num_nodes, align 8, !tbaa !16
  store i64 %i.lu, ptr %3, align 8, !tbaa !16
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %.split.loop.exit, %bb.u
  %.3 = phi i32 [ %.2251351, %.split.loop.exit ], [ %.2251352354, %bb.u ], [ -5000, %bb.g ], [ 5000, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_fatal_error_aux(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #4

declare i32 @move_generator(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @score_and_get_first(ptr noundef, i32 noundef, i32 noundef, i64, i32) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @sort_moves(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @set_position_values(...) local_unnamed_addr #3

declare void @toggle_move(i64, i32, i32 noundef) local_unnamed_addr #3

declare void @check_hash_code_sanity(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @negamax(i32 noundef range(i32 -2147483648, 49) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 -2147483647, -2147483648) %2, i32 noundef range(i32 -2147483647, -2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %4 = alloca [256 x %struct.Move], align 16      ; 9 uses
  %5 = alloca %struct.Move, align 8               ; 6 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %6 = alloca %struct.Move, align 8               ; 7 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !4
  store i32 %3, ptr %i.b, align 4, !tbaa !4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.d = xor i32 %1, 1                            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.e = load i64, ptr @g_num_nodes, align 8, !tbaa !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.f = add i64 %i.e, 1
  store i64 %i.f, ptr @g_num_nodes, align 8, !tbaa !16
  %i.g = load i32, ptr @starting_depth, align 4, !tbaa !4
  %i.h = sub nsw i32 %i.g, %0
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [4 x i8], ptr @stat_nodes, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 4, !tbaa !4
  %i.m = icmp slt i32 %0, 1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call i32 @does_next_player_win(i32 noundef %1, i32 noundef 0) #10 ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = tail call i32 @does_who_just_moved_win(i32 noundef %i.d, i32 noundef 0) #10 ; 2 uses
  %i.q = icmp sgt i32 %i.p, -1
  %i.r = sub nsw i32 %i.n, %i.p
  %spec.select = select i1 %i.q, i32 -5000, i32 %i.r
  br label %bb.ab

bb.d:                                             ; preds = %bb.a
  %i.s = zext nneg i32 %1 to i64                  ; 2 uses
  %i.t = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = zext nneg i32 %i.d to i64
  %i.w = getelementptr inbounds nuw [12 x i8], ptr @g_info_totals, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15
  %i.z = icmp sgt i32 %i.u, %i.y
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr @cut1, align 4, !tbaa !4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr @cut1, align 4, !tbaa !4
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.w, align 4, !tbaa !13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15
  %.not = icmp slt i32 %i.ac, %i.ae
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr @cut2, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr @cut2, align 4, !tbaa !4
  br label %bb.ab

bb.h:                                             ; preds = %bb.f
  store i32 -1, ptr %6, align 8, !tbaa !13
  %i.ah = call i32 @hashlookup(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %0, ptr noundef nonnull %6, i32 noundef %1) #10
  %.not196 = icmp eq i32 %i.ah, 0
  br i1 %.not196, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  store i32 -1, ptr %6, align 8, !tbaa !13
  %i.aj = call i32 @does_next_player_win(i32 noundef %1, i32 noundef 0) #10
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load i32, ptr @cut3, align 4, !tbaa !4
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr @cut3, align 4, !tbaa !4
  br label %bb.ab

bb.l:                                             ; preds = %bb.j
  %i.an = call i32 @does_who_just_moved_win(i32 noundef %i.d, i32 noundef 0) #10
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ap = load i32, ptr @cut4, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr @cut4, align 4, !tbaa !4
  br label %bb.ab

bb.n:                                             ; preds = %bb.l
  %i.ar = call i32 @move_generator_stage1(ptr noundef nonnull %4, i32 noundef %1) #10 ; 2 uses
  %.not197 = icmp ne i32 %i.ar, 0                 ; 3 uses
  br i1 %.not197, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = call i32 @move_generator_stage2(ptr noundef nonnull %4, i32 noundef 0, i32 noundef %1) #10 ; 2 uses
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, i32, i32, ptr, ...) @_fatal_error_aux(ptr noundef nonnull @.str, i32 noundef 458, i32 noundef 1, ptr noundef nonnull @.str.13) #10
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %.199 = phi i32 [ 3, %bb.p ], [ 3, %bb.o ], [ 2, %bb.n ] ; 2 uses
  %.0184 = phi i32 [ 0, %bb.p ], [ %i.as, %bb.o ], [ %i.ar, %bb.n ] ; 5 uses
  %.sroa.04.0.copyload = load i64, ptr %6, align 8
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.25.0.copyload = load i32, ptr %.sroa.25.0..sroa_idx, align 8
  call void @score_and_get_first(ptr noundef nonnull %4, i32 noundef %.0184, i32 noundef %1, i64 %.sroa.04.0.copyload, i32 %.sroa.25.0.copyload) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 16 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !35
  %i.au = getelementptr inbounds nuw [49152 x i8], ptr @g_keyinfo, i64 %i.s ; 2 uses
  %i.av = add nsw i32 %0, -1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  %.0185 = phi i32 [ 0, %bb.q ], [ %.1186223, %.loopexit ]
  %.0182 = phi i32 [ 0, %bb.q ], [ %.1183201, %.loopexit ] ; 5 uses
end_hunk_0
